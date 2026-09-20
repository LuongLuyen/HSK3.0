import { Injectable } from '@nestjs/common';
import { DatabaseService } from '../db/database.service.js';

const NOTE_MAX = 20000;

export interface NoteRow {
  content: string;
  updatedAt: string | null;
}

@Injectable()
export class NotesService {
  // Ghi chú lưu bền trong SQLite, riêng theo user (user_id = 0 là khách chưa đăng nhập).
  constructor(private readonly dbx: DatabaseService) {}

  private get db() {
    return this.dbx.db;
  }

  get(userId: number, lesson: string) {
    const key = lessonKey(lesson);
    if (!key) return { ok: false, error: 'Thiếu mã bài giảng.' };
    const row = this.db
      .prepare('SELECT content, updated_at FROM notes WHERE user_id = ? AND lesson = ?')
      .get(userId, key) as any;
    return { ok: true, lesson: key, content: row?.content || '', updatedAt: row?.updated_at || null };
  }

  all(userId: number) {
    const rows = this.db
      .prepare('SELECT lesson, content, updated_at FROM notes WHERE user_id = ? ORDER BY updated_at DESC')
      .all(userId) as any[];
    const data: Record<string, NoteRow> = {};
    for (const r of rows) data[r.lesson] = { content: r.content, updatedAt: r.updated_at };
    return { ok: true, total: rows.length, data };
  }

  save(userId: number, lesson: string, content: string) {
    const key = lessonKey(lesson);
    if (!key) return { ok: false, error: 'Thiếu mã bài giảng.' };
    const text = String(content ?? '').slice(0, NOTE_MAX);
    if (!text.trim()) return this.remove(userId, key); // ghi chú rỗng = xóa
    const now = new Date().toISOString();
    this.db
      .prepare(
        `INSERT INTO notes (user_id, lesson, content, updated_at)
         VALUES (?, ?, ?, ?)
         ON CONFLICT(user_id, lesson) DO UPDATE SET content = excluded.content, updated_at = excluded.updated_at`,
      )
      .run(userId, key, text, now);
    return { ok: true, lesson: key, content: text, updatedAt: now };
  }

  remove(userId: number, lesson: string) {
    const key = lessonKey(lesson);
    if (!key) return { ok: false, error: 'Thiếu mã bài giảng.' };
    this.db.prepare('DELETE FROM notes WHERE user_id = ? AND lesson = ?').run(userId, key);
    return { ok: true, lesson: key, content: '', updatedAt: null };
  }
}

/** Mã bài giảng do server sinh (VD: HSK1/HSK1-B1) — chỉ cần chuẩn hóa khoảng trắng. */
function lessonKey(lesson?: string): string {
  return String(lesson || '').trim().replace(/\s+/g, '').slice(0, 120);
}
