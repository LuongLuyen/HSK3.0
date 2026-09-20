import { Injectable } from '@nestjs/common';
import { randomBytes, scryptSync, timingSafeEqual } from 'node:crypto';
import { DatabaseService } from '../db/database.service.js';

function hashPassword(password: string, salt: string): string {
  return scryptSync(password, salt, 32).toString('hex');
}

@Injectable()
export class AuthService {
  constructor(private readonly dbx: DatabaseService) {}

  private get db() {
    return this.dbx.db;
  }

  register(username: string, password: string) {
    const name = (username || '').trim();
    if (!name || name.length > 24) return { ok: false, error: 'Tên đăng nhập 1–24 ký tự.' };
    if (!password || password.length < 4) return { ok: false, error: 'Mật khẩu ít nhất 4 ký tự.' };
    const exists = this.db.prepare('SELECT id FROM users WHERE username = ?').get(name);
    if (exists) return { ok: false, error: 'Tên này đã có người dùng.' };
    const salt = randomBytes(16).toString('hex');
    const now = new Date().toISOString();
    const info = this.db
      .prepare('INSERT INTO users (username, pass_hash, salt, created_at) VALUES (?, ?, ?, ?)')
      .run(name, hashPassword(password, salt), salt, now);
    const token = this.newSession(Number(info.lastInsertRowid));
    return { ok: true, token, username: name };
  }

  login(username: string, password: string) {
    const name = (username || '').trim();
    const row = this.db.prepare('SELECT * FROM users WHERE username = ?').get(name) as any;
    if (!row) return { ok: false, error: 'Sai tên hoặc mật khẩu.' };
    const a = Buffer.from(hashPassword(password || '', row.salt), 'hex');
    const b = Buffer.from(row.pass_hash, 'hex');
    if (a.length !== b.length || !timingSafeEqual(a, b)) {
      return { ok: false, error: 'Sai tên hoặc mật khẩu.' };
    }
    return { ok: true, token: this.newSession(row.id), username: row.username };
  }

  logout(authHeader?: string) {
    const token = bearer(authHeader);
    if (token) this.db.prepare('DELETE FROM sessions WHERE token = ?').run(token);
    return { ok: true };
  }

  changePassword(authHeader: string | undefined, oldPassword: string, newPassword: string) {
    const u = this.userFromHeader(authHeader);
    if (!u) return { ok: false, error: 'Chưa đăng nhập.' };
    if (!newPassword || newPassword.length < 4) {
      return { ok: false, error: 'Mật khẩu mới ít nhất 4 ký tự.' };
    }
    const row = this.db.prepare('SELECT * FROM users WHERE id = ?').get(u.id) as any;
    const a = Buffer.from(hashPassword(oldPassword || '', row.salt), 'hex');
    const b = Buffer.from(row.pass_hash, 'hex');
    if (a.length !== b.length || !timingSafeEqual(a, b)) {
      return { ok: false, error: 'Mật khẩu hiện tại không đúng.' };
    }
    const salt = randomBytes(16).toString('hex');
    this.db
      .prepare('UPDATE users SET pass_hash = ?, salt = ? WHERE id = ?')
      .run(hashPassword(newPassword, salt), salt, u.id);
    return { ok: true };
  }

  me(authHeader?: string) {
    const u = this.userFromHeader(authHeader);
    return u ? { ok: true, username: u.username } : { ok: false };
  }

  /** user_id từ header Authorization (0 = khách chưa đăng nhập). */
  userIdFromHeader(authHeader?: string): number {
    return this.userFromHeader(authHeader)?.id || 0;
  }

  private userFromHeader(authHeader?: string): { id: number; username: string } | null {
    const token = bearer(authHeader);
    if (!token) return null;
    const row = this.db
      .prepare('SELECT u.id, u.username FROM sessions s JOIN users u ON u.id = s.user_id WHERE s.token = ?')
      .get(token) as any;
    return row ? { id: row.id, username: row.username } : null;
  }

  private newSession(userId: number): string {
    const token = randomBytes(32).toString('hex');
    this.db
      .prepare('INSERT INTO sessions (token, user_id, created_at) VALUES (?, ?, ?)')
      .run(token, userId, new Date().toISOString());
    return token;
  }
}

function bearer(authHeader?: string): string {
  if (!authHeader) return '';
  const m = authHeader.match(/^Bearer\s+(.+)$/i);
  return m ? m[1].trim() : '';
}
