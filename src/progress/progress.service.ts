import { Injectable } from '@nestjs/common';
import { DatabaseService } from '../db/database.service.js';

@Injectable()
export class ProgressService {
  // Lưu bền trong SQLite, riêng theo user (user_id = 0 là khách chưa đăng nhập).
  // Khóa là cả từ/cụm (VD: "你好"), không chỉ 1 chữ — để hiện tiến độ dưới từng thẻ.
  constructor(private readonly dbx: DatabaseService) {}

  save(userId: number, char: string, mistakes: number) {
    const key = (char || '').trim().replace(/\s+/g, '').slice(0, 12);
    if (!key) return { ok: false };
    const m = Number(mistakes) || 0;
    const now = new Date().toISOString();
    this.dbx.db
      .prepare(
        `INSERT INTO progress (user_id, ch, done, mistakes, updated_at)
         VALUES (?, ?, 1, ?, ?)
         ON CONFLICT(user_id, ch) DO UPDATE SET done = done + 1, mistakes = mistakes + excluded.mistakes, updated_at = excluded.updated_at`,
      )
      .run(userId, key, m, now);
    const cur = this.dbx.db
      .prepare('SELECT * FROM progress WHERE user_id = ? AND ch = ?')
      .get(userId, key) as any;
    return { ok: true, character: key, done: cur.done, mistakes: cur.mistakes, updatedAt: cur.updated_at };
  }

  all(userId: number) {
    const rows = this.dbx.db
      .prepare('SELECT * FROM progress WHERE user_id = ?')
      .all(userId) as any[];
    const out: Record<string, { done: number; mistakes: number; updatedAt: string }> = {};
    for (const r of rows) out[r.ch] = { done: r.done, mistakes: r.mistakes, updatedAt: r.updated_at };
    return out;
  }

  reset(userId: number) {
    this.dbx.db.prepare('DELETE FROM progress WHERE user_id = ?').run(userId);
    return { ok: true };
  }
}
