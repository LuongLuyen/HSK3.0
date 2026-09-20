import { Injectable } from '@nestjs/common';
import { DatabaseService } from '../db/database.service.js';
import { type HskEntry } from './hsk.data.js';
import { type RadicalEntry } from './radicals.data.js';
import { COMMON_RADICAL_IDS } from './pronunciation.data.js';
import { type RadicalExample } from './radical-examples.data.js';
import { CHAR_OVERRIDES } from './vocab.data.js';
import { HSK_GUIDE } from './hsk-guide.data.js';

const LEVELS = [1, 2, 3, 4] as const;

export interface VocabQuery {
  level?: string;
  q?: string;
  limit?: string;
  offset?: string;
}

function norm(s: string): string {
  return (s || '')
    .toLowerCase()
    .normalize('NFD')
    .replace(/[̀-ͯ]/g, '')
    .replace(/đ/g, 'd')
    .replace(/\s+/g, '');
}
// (regex trên: dải U+0300–U+036F — dấu tổ hợp sau NFD)

function rowToEntry(r: any): HskEntry & { code?: string; stt?: number; tags?: string[] } {
  return {
    zh: r.zh, py: r.py || '', en: r.en || '', vi: r.vi || '', level: r.level,
    ...(r.pos ? { pos: r.pos } : {}),
    ...(r.code ? { code: r.code } : {}),
    ...(r.stt != null ? { stt: Number(r.stt) } : {}),
    ...(r.tags ? { tags: JSON.parse(r.tags) } : {}),
  };
}

@Injectable()
export class VocabService {
  constructor(private readonly dbx: DatabaseService) {}

  private get db() {
    return this.dbx.db;
  }

  /** Danh sách từ vựng HSK 3.0 (level 1–4) trong SQLite, hỗ trợ lọc + tìm kiếm + phân trang. */
  list(query: VocabQuery = {}): { total: number; level: string; limit: number; offset: number; data: HskEntry[] } {
    const levelRaw = (query.level || '1').toLowerCase();
    const q = norm(query.q || '');
    const limit = Math.min(Math.max(parseInt(query.limit || '1000', 10) || 1000, 1), 2000);
    const offset = Math.max(parseInt(query.offset || '0', 10) || 0, 0);

    const lvl = Number(levelRaw);
    let rows: any[];
    if (levelRaw === 'all' || Number.isNaN(lvl)) {
      rows = this.db.prepare('SELECT * FROM vocab ORDER BY stt').all();
    } else {
      rows = this.db.prepare('SELECT * FROM vocab WHERE level = ? ORDER BY stt').all(lvl);
    }
    let pool = rows.map(rowToEntry);

    if (q) {
      const raw = (query.q || '').trim();
      pool = pool.filter(
        (e) =>
          e.zh.includes(raw) ||
          norm(e.py).includes(q) ||
          norm(e.vi).includes(q) ||
          norm(e.en).includes(q),
      );
    }
    return { total: pool.length, level: levelRaw, limit, offset, data: pool.slice(offset, offset + limit) };
  }

  levels() {
    const rows = this.db
      .prepare('SELECT level, COUNT(*) AS n FROM vocab GROUP BY level ORDER BY level')
      .all() as { level: number; n: number }[];
    const counts = new Map(rows.map((r) => [r.level, r.n]));
    let acc = 0;
    return LEVELS.map((l) => {
      const count = counts.get(l) || 0;
      acc += count;
      return { level: l, name: `HSK ${l}`, count, cumulative: acc };
    });
  }

  /** Tổng quan & so sánh HSK 2.0 vs 3.0 (cho trang Dashboard). */
  guide() {
    return HSK_GUIDE;
  }

  /** Tra 1 chữ: pinyin + nghĩa Việt + các từ HSK chứa chữ đó. */
  lookup(char: string) {
    const ch = [...(char || '')][0] || '';
    // Ưu tiên từ đơn trong DB, thiếu thì dùng bảng ghi đè thủ công.
    const single = ch
      ? (this.db.prepare('SELECT py, vi, en FROM vocab WHERE zh = ? LIMIT 1').get(ch) as any)
      : null;
    const base = single
      ? { py: single.py || '', vi: single.vi || single.en || '' }
      : CHAR_OVERRIDES[ch] || { py: '', vi: '' };
    const words = ch
      ? (this.db.prepare('SELECT * FROM vocab WHERE zh LIKE ? LIMIT 20').all(`%${ch}%`) as any[]).map(rowToEntry)
      : [];
    return { character: ch, ...base, words };
  }

  /** 214 bộ thủ trong SQLite, lọc theo từ khóa (q), số nét (strokes) hoặc 50 bộ thông dụng (common=1). */
  radicals(query: { q?: string; strokes?: string; common?: string } = {}): (RadicalEntry & { common: boolean; examples: RadicalExample[] })[] {
    const q = (query.q || '').trim().toLowerCase();
    const strokes = parseInt(query.strokes || '', 10);
    const onlyCommon = query.common === '1' || query.common === 'true';

    let sql = 'SELECT * FROM radicals';
    const conds: string[] = [];
    const params: any[] = [];
    if (onlyCommon) {
      conds.push(`id IN (${COMMON_RADICAL_IDS.map(() => '?').join(',')})`);
      params.push(...COMMON_RADICAL_IDS);
    }
    if (!Number.isNaN(strokes) && query.strokes) {
      conds.push('strokes = ?');
      params.push(strokes);
    }
    if (conds.length) sql += ' WHERE ' + conds.join(' AND ');
    sql += ' ORDER BY id';
    const rows = this.db.prepare(sql).all(...params) as any[];

    const exRows = this.db.prepare('SELECT * FROM radical_examples').all() as any[];
    const exById = new Map<number, RadicalExample[]>();
    for (const e of exRows) {
      if (!exById.has(e.radical_id)) exById.set(e.radical_id, []);
      exById.get(e.radical_id)!.push({ zh: e.zh, py: e.py, vi: e.vi });
    }

    return rows
      .map((r) => ({
        id: r.id,
        zh: r.zh,
        ...(r.alt ? { alt: r.alt } : {}),
        py: r.py,
        hv: r.hv,
        vi: r.vi,
        strokes: r.strokes,
        ...(r.name ? { name: r.name, emoji: r.emoji || '' } : {}),
        common: COMMON_RADICAL_IDS.includes(r.id),
        examples: exById.get(r.id) || [],
      }))
      .filter((r) => {
        if (!q) return true;
        return (
          r.zh === q ||
          (r.alt || '').includes(q) ||
          r.py.toLowerCase().includes(q) ||
          r.hv.toLowerCase().includes(q) ||
          r.vi.toLowerCase().includes(q) ||
          String(r.id) === q
        );
      });
  }

  radicalById(id: string): (RadicalEntry & { examples: RadicalExample[] }) | null {
    const r = this.db.prepare('SELECT * FROM radicals WHERE id = ?').get(Number(id)) as any;
    if (!r) return null;
    const ex = this.db.prepare('SELECT zh, py, vi FROM radical_examples WHERE radical_id = ?').all(r.id) as unknown as RadicalExample[];
    return {
      id: r.id,
      zh: r.zh,
      ...(r.alt ? { alt: r.alt } : {}),
      py: r.py,
      hv: r.hv,
      vi: r.vi,
      strokes: r.strokes,
      ...(r.name ? { name: r.name, emoji: r.emoji || '' } : {}),
      examples: ex,
    };
  }

  /** Phát âm trong SQLite: 21 thanh mẫu (+y, w), 36 vận mẫu, 4 thanh điệu + khinh thanh.
   *  Mỗi thanh/vận mẫu có thêm `say` (bản đọc hô độc âm, VD: b → “bō”) để nút 🔊
   *  đọc chính âm đó thay vì đọc chữ ví dụ. Vận mẫu có thêm `audio` (file đọc mẫu thật). */
  pronunciation() {
    const initials = (this.db.prepare('SELECT * FROM initials').all() as any[]).map((t) => ({
      py: t.py,
      group: t.group_name,
      vi: t.vi,
      detail: t.detail,
      guide: t.guide,
      ...(t.audio ? { audio: t.audio } : {}),
      ex: t.ex,
      exPy: t.ex_py,
      exVi: t.ex_vi,
      ...(t.semi ? { semi: true } : {}),
      say: t.say,
    }));
    const finals = (this.db.prepare('SELECT * FROM finals').all() as any[]).map((f) => ({
      py: f.py,
      group: f.group_name,
      mouth: f.mouth,
      vi: f.vi,
      guide: f.guide,
      ...(f.audio ? { audio: f.audio } : {}),
      ex: f.ex,
      exPy: f.ex_py,
      exVi: f.ex_vi,
      say: f.say,
    }));
    const tones = (this.db.prepare('SELECT * FROM tones ORDER BY id').all() as any[]).map((t) => ({
      id: t.id,
      name: t.name,
      hv: t.hv,
      mark: t.mark,
      desc: t.descr,
      ...(t.audio ? { audio: t.audio } : {}),
      ex: t.ex,
      exPy: t.ex_py,
      exVi: t.ex_vi,
    }));
    return { initials, finals, tones };
  }
}
