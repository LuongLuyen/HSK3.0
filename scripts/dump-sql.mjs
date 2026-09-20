// Dump dữ liệu ứng dụng (bộ thủ, từ vựng, phát âm, ngữ pháp, tài liệu) từ SQLite ra file .sql.
// Không dump users / sessions / progress để tránh mang dữ liệu tài khoản cá nhân vào image.
// Dùng: node scripts/dump-sql.mjs   (DB_PATH, SQL_OUT có thể ghi đè qua biến môi trường)
import { DatabaseSync } from 'node:sqlite';
import { existsSync, mkdirSync, writeFileSync } from 'node:fs';
import { dirname, join } from 'node:path';

const dbPath = process.env.DB_PATH || join(process.cwd(), 'data', 'app.db');
const outPath = process.env.SQL_OUT || join(process.cwd(), 'db', 'app.sql');

if (!existsSync(dbPath)) {
  console.error(`Không thấy DB: ${dbPath}. Chạy app một lần để seed trước.`);
  process.exit(1);
}

const db = new DatabaseSync(dbPath);

const TABLES = [
  'radicals', 'radical_examples', 'vocab', 'initials',
  'finals', 'tones', 'grammar', 'grammar_docs', 'meta',
];

// SQLite chỉ cần nhân đôi dấu nháy đơn trong chuỗi.
const lit = (v) =>
  v === null || v === undefined
    ? 'NULL'
    : typeof v === 'number' || typeof v === 'bigint'
      ? String(v)
      : `'${String(v).replace(/'/g, "''")}'`;

const lines = [
  '-- Dump dữ liệu HSK (bộ thủ, từ vựng, phát âm, ngữ pháp, tài liệu)',
  `-- Nguồn: ${dbPath}`,
  'PRAGMA foreign_keys=OFF;',
  'BEGIN TRANSACTION;',
];

let totalRows = 0;
for (const t of TABLES) {
  const cols = db.prepare(`PRAGMA table_info(${t})`).all();
  if (!cols.length) continue;

  const create = db.prepare("SELECT sql FROM sqlite_master WHERE type='table' AND name=?").get(t);
  if (create?.sql) lines.push(`${create.sql};`);

  const names = cols.map((c) => c.name);
  const rows = db.prepare(`SELECT * FROM ${t}`).all();
  for (const r of rows) {
    lines.push(`INSERT INTO ${t} (${names.join(',')}) VALUES (${names.map((n) => lit(r[n])).join(',')});`);
  }
  totalRows += rows.length;
}

for (const idx of db.prepare(
  `SELECT sql FROM sqlite_master WHERE type='index' AND sql IS NOT NULL AND tbl_name IN (${TABLES.map(() => '?').join(',')})`,
).all(...TABLES)) {
  lines.push(`${idx.sql};`);
}
lines.push('COMMIT;');
db.close();

mkdirSync(dirname(outPath), { recursive: true });
writeFileSync(outPath, lines.join('\n') + '\n', 'utf8');
console.log(`Đã ghi ${outPath}: ${TABLES.length} bảng, ${totalRows} dòng.`);
