import { DatabaseSync } from 'node:sqlite';
import { readFileSync } from 'node:fs';
import { join } from 'node:path';
import { HSK4_VOCAB } from '../vocab/hsk4.data.js';
import { RADICALS } from '../vocab/radicals.data.js';
import { RADICAL_EXAMPLES } from '../vocab/radical-examples.data.js';
import { RADICAL_DETAILS } from '../vocab/radical-details.data.js';
import {
  INITIALS,
  FINALS,
  TONES,
  INITIAL_SAY,
  FINAL_SAY,
} from '../vocab/pronunciation.data.js';
import {
  GRAM_CAT_VI,
  GRAM_SUB_VI,
  GRAM_DET_VI,
  GRAM_POINT_VI,
} from '../grammar/grammar.data.js';

export const SCHEMA = `
CREATE TABLE IF NOT EXISTS radicals (
  id INTEGER PRIMARY KEY, zh TEXT NOT NULL, alt TEXT, py TEXT, hv TEXT, vi TEXT, strokes INTEGER,
  name TEXT, emoji TEXT
);
CREATE TABLE IF NOT EXISTS radical_examples (
  radical_id INTEGER NOT NULL, zh TEXT NOT NULL, py TEXT, vi TEXT
);
CREATE INDEX IF NOT EXISTS idx_radex_rid ON radical_examples(radical_id);
CREATE TABLE IF NOT EXISTS vocab (
  id INTEGER PRIMARY KEY AUTOINCREMENT, code TEXT, stt INTEGER, zh TEXT NOT NULL,
  py TEXT, en TEXT, vi TEXT, level INTEGER NOT NULL, pos TEXT, tags TEXT
);
CREATE INDEX IF NOT EXISTS idx_vocab_level ON vocab(level);
CREATE INDEX IF NOT EXISTS idx_vocab_zh ON vocab(zh);
CREATE TABLE IF NOT EXISTS initials (
  py TEXT PRIMARY KEY, group_name TEXT, vi TEXT, detail TEXT, guide TEXT, audio TEXT,
  ex TEXT, ex_py TEXT, ex_vi TEXT, semi INTEGER, say TEXT
);
CREATE TABLE IF NOT EXISTS finals (
  py TEXT PRIMARY KEY, group_name TEXT, mouth TEXT, vi TEXT, guide TEXT, audio TEXT,
  ex TEXT, ex_py TEXT, ex_vi TEXT, say TEXT
);
CREATE TABLE IF NOT EXISTS tones (
  id INTEGER PRIMARY KEY, name TEXT, hv TEXT, mark TEXT, descr TEXT, audio TEXT, ex TEXT, ex_py TEXT, ex_vi TEXT
);
CREATE TABLE IF NOT EXISTS grammar (
  id INTEGER PRIMARY KEY AUTOINCREMENT, level TEXT NOT NULL, cat TEXT, sub TEXT, detail TEXT,
  zh TEXT NOT NULL, vi TEXT
);
CREATE INDEX IF NOT EXISTS idx_grammar_level ON grammar(level);
CREATE TABLE IF NOT EXISTS grammar_docs (
  id INTEGER PRIMARY KEY AUTOINCREMENT, level TEXT NOT NULL UNIQUE, title TEXT, content TEXT NOT NULL
);
CREATE TABLE IF NOT EXISTS progress (
  ch TEXT PRIMARY KEY, done INTEGER NOT NULL DEFAULT 0,
  mistakes INTEGER NOT NULL DEFAULT 0, updated_at TEXT
);
CREATE TABLE IF NOT EXISTS notes (
  user_id INTEGER NOT NULL DEFAULT 0, lesson TEXT NOT NULL,
  content TEXT NOT NULL DEFAULT '', updated_at TEXT, PRIMARY KEY (user_id, lesson)
);
CREATE TABLE IF NOT EXISTS users (
  id INTEGER PRIMARY KEY AUTOINCREMENT, username TEXT UNIQUE NOT NULL,
  pass_hash TEXT NOT NULL, salt TEXT NOT NULL, created_at TEXT NOT NULL
);
CREATE TABLE IF NOT EXISTS sessions (
  token TEXT PRIMARY KEY, user_id INTEGER NOT NULL, created_at TEXT NOT NULL
);
CREATE INDEX IF NOT EXISTS idx_sessions_user ON sessions(user_id);
CREATE TABLE IF NOT EXISTS meta (key TEXT PRIMARY KEY, value TEXT);
`;

// Tăng số này mỗi khi sửa data nguồn → DB cũ tự nạp lại (giữ nguyên bảng progress).
export const SEED_VERSION = '9';

/** Migration nhẹ cho DB đã tồn tại (thêm cột/bảng mới mà không mất dữ liệu). */
function migrate(db: DatabaseSync): void {
  const colsOf = (t: string) =>
    (db.prepare(`PRAGMA table_info(${t})`).all() as { name: string }[]).map((c) => c.name);
  if (!colsOf('initials').includes('audio')) db.exec('ALTER TABLE initials ADD COLUMN audio TEXT;');
  if (!colsOf('tones').includes('audio')) db.exec('ALTER TABLE tones ADD COLUMN audio TEXT;');
  if (!colsOf('vocab').includes('code')) db.exec('ALTER TABLE vocab ADD COLUMN code TEXT;');
  if (!colsOf('vocab').includes('stt')) db.exec('ALTER TABLE vocab ADD COLUMN stt INTEGER;');
  if (!colsOf('vocab').includes('tags')) db.exec('ALTER TABLE vocab ADD COLUMN tags TEXT;');
  if (!colsOf('radicals').includes('name')) db.exec('ALTER TABLE radicals ADD COLUMN name TEXT;');
  if (!colsOf('radicals').includes('emoji')) db.exec('ALTER TABLE radicals ADD COLUMN emoji TEXT;');
  // progress cũ (khóa chính theo ch, dùng chung) → thêm user_id, khóa chính (user_id, ch).
  // Dữ liệu cũ chuyển sang user_id = 0 (khách chưa đăng nhập).
  if (!colsOf('progress').includes('user_id')) {
    db.exec('BEGIN');
    try {
      db.exec(`CREATE TABLE progress_new (
        user_id INTEGER NOT NULL DEFAULT 0, ch TEXT NOT NULL,
        done INTEGER NOT NULL DEFAULT 0, mistakes INTEGER NOT NULL DEFAULT 0,
        updated_at TEXT, PRIMARY KEY (user_id, ch)
      )`);
      db.exec('INSERT INTO progress_new (user_id, ch, done, mistakes, updated_at) SELECT 0, ch, done, mistakes, updated_at FROM progress');
      db.exec('DROP TABLE progress');
      db.exec('ALTER TABLE progress_new RENAME TO progress');
      db.exec('COMMIT');
    } catch (e) {
      db.exec('ROLLBACK');
      throw e;
    }
  }
}

/** Nạp toàn bộ data (HSK, bộ thủ, phát âm) vào DB. Gọi khi DB còn trống hoặc khác version. */
export function seedDatabase(db: DatabaseSync): void {
  migrate(db);
  const meta = db.prepare("SELECT value FROM meta WHERE key = 'data_version'").get() as any;
  const count = (db.prepare('SELECT COUNT(*) AS n FROM vocab').get() as { n: number }).n;
  const gramCount = (db.prepare('SELECT COUNT(*) AS n FROM grammar').get() as { n: number }).n;
  const docCount = (db.prepare('SELECT COUNT(*) AS n FROM grammar_docs').get() as { n: number }).n;
  if (meta?.value === SEED_VERSION && count > 0 && gramCount > 0 && docCount > 0) return; // đã mới nhất

  db.exec('BEGIN');
  try {
    db.exec('DELETE FROM vocab; DELETE FROM radicals; DELETE FROM radical_examples; DELETE FROM initials; DELETE FROM finals; DELETE FROM tones; DELETE FROM grammar; DELETE FROM grammar_docs;');
    const insRad = db.prepare(
      'INSERT INTO radicals (id, zh, alt, py, hv, vi, strokes, name, emoji) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?)',
    );
    for (const r of RADICALS) {
      const d = RADICAL_DETAILS[r.id];
      insRad.run(r.id, r.zh, r.alt || null, r.py, r.hv, r.vi, r.strokes, d ? d.name : null, d ? d.emoji : null);
    }
    const insEx = db.prepare(
      'INSERT INTO radical_examples (radical_id, zh, py, vi) VALUES (?, ?, ?, ?)',
    );
    for (const [id, list] of Object.entries(RADICAL_EXAMPLES)) {
      for (const w of list) insEx.run(Number(id), w.zh, w.py, w.vi);
    }
    // Từ vựng HSK 1–4 (HSK Atlas, 1978 từ, mã HSK1-4): level lấy từ tiền tố code.
    const insV = db.prepare(
      'INSERT INTO vocab (code, stt, zh, py, en, vi, level, pos, tags) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?)',
    );
    for (const v of HSK4_VOCAB) {
      const level = Number(v.code.slice(3, 4)) || 1;
      insV.run(v.code, v.stt, v.zh, v.py, v.meaning, v.meaning_vi, level, null, JSON.stringify(v.levels));
    }
    const insI = db.prepare(
      'INSERT INTO initials (py, group_name, vi, detail, guide, audio, ex, ex_py, ex_vi, semi, say) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)',
    );
    for (const t of INITIALS) {
      insI.run(t.py, t.group, t.vi, t.detail, t.guide, t.audio || null, t.ex, t.exPy, t.exVi, t.semi ? 1 : 0, INITIAL_SAY[t.py] || t.py);
    }
    const insF = db.prepare(
      'INSERT INTO finals (py, group_name, mouth, vi, guide, audio, ex, ex_py, ex_vi, say) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?)',
    );
    for (const f of FINALS) {
      insF.run(f.py, f.group, f.mouth, f.vi, f.guide, f.audio || null, f.ex, f.exPy, f.exVi, FINAL_SAY[f.py] || f.py);
    }
    const insT = db.prepare(
      'INSERT INTO tones (id, name, hv, mark, descr, audio, ex, ex_py, ex_vi) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?)',
    );
    for (const t of TONES) {
      insT.run(t.id, t.name, t.hv, t.mark, t.desc, t.audio || null, t.ex, t.exPy, t.exVi);
    }
    // Ngữ pháp HSK 3.0 (bản 2025): đọc JSON chính thức từ public/static/China, ghép nghĩa Việt từng phần.
    const GRAM_FILES = [
      ['hsk1', 'HSK 1.json'], ['hsk2', 'HSK 2.json'], ['hsk3', 'HSK 3.json'],
      ['hsk4', 'HSK 4.json'], ['hsk5', 'HSK 5.json'], ['hsk6', 'HSK 6.json'],
      ['hsk79', 'HSK 7-9.json'],
    ];
    const insG = db.prepare(
      'INSERT INTO grammar (level, cat, sub, detail, zh, vi) VALUES (?, ?, ?, ?, ?, ?)',
    );
    for (const [k, file] of GRAM_FILES) {
      const raw = JSON.parse(readFileSync(join(process.cwd(), 'public', 'static', 'China', file), 'utf8')) as Array<Record<string, string>>;
      for (const e of raw) {
        const sub = e['类别名称'] || '';
        const detail = e['细目'] || '';
        const cat = e['类别'] || '';
        const zh = e['语法内容'] || '';
        if (!zh && !detail && !sub) continue;
        const vi =
          GRAM_POINT_VI[k + '|' + zh] ||
          GRAM_DET_VI[detail] ||
          GRAM_DET_VI[sub] ||
          GRAM_SUB_VI[sub] ||
          GRAM_CAT_VI[cat] ||
          '';
        insG.run(k, cat, sub, detail, zh, vi);
      }
    }
    // Tài liệu ngữ pháp tiếng Việt: các file .txt trong public/static/Vietnam.
    const DOC_FILES = [
      ['hsk1', 'HSK_1.txt'], ['hsk2', 'HSK_2.txt'], ['hsk3', 'HSK_3.txt'], ['hsk4', 'HSK_4.txt'],
    ];
    const insDoc = db.prepare(
      'INSERT INTO grammar_docs (level, title, content) VALUES (?, ?, ?)',
    );
    for (const [k, file] of DOC_FILES) {
      const text = readFileSync(join(process.cwd(), 'public', 'static', 'Vietnam', file), 'utf8');
      const title = (text.split(/\r?\n/).find((l) => l.trim()) || '').trim();
      insDoc.run(k, title, text);
    }
    db.prepare("INSERT INTO meta (key, value) VALUES ('data_version', ?) ON CONFLICT(key) DO UPDATE SET value = excluded.value").run(SEED_VERSION);
    db.exec('COMMIT');
  } catch (e) {
    db.exec('ROLLBACK');
    throw e;
  }
}
