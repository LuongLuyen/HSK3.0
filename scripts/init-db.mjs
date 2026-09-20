// Nạp file SQL dump (db/app.sql) vào SQLite khi DB chưa tồn tại (dùng trong Docker lần chạy đầu).
// Nếu DB đã có sẵn, bỏ qua — app sẽ tự dùng/seed. Dùng: node scripts/init-db.mjs
import { DatabaseSync } from 'node:sqlite';
import { existsSync, mkdirSync, readFileSync, statSync } from 'node:fs';
import { dirname, join } from 'node:path';

const dbPath = process.env.DB_PATH || join(process.cwd(), 'data', 'app.db');
const sqlPath = process.env.SQL_IN || join(process.cwd(), 'db', 'app.sql');

if (existsSync(dbPath) && statSync(dbPath).size > 0) {
  console.log(`DB đã tồn tại, bỏ qua nạp dump: ${dbPath}`);
  process.exit(0);
}
if (!existsSync(sqlPath)) {
  console.log(`Không có SQL dump (${sqlPath}) — app sẽ tự seed từ public/static.`);
  process.exit(0);
}

mkdirSync(dirname(dbPath), { recursive: true });
const db = new DatabaseSync(dbPath);
db.exec(readFileSync(sqlPath, 'utf8'));
db.close();
console.log(`Đã nạp DB từ ${sqlPath} → ${dbPath}`);
