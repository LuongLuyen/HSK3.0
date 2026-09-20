import { describe, it, expect, beforeAll } from 'vitest';
import { DatabaseService } from '../db/database.service.js';
import { AuthService } from './auth.service.js';
import { ProgressService } from '../progress/progress.service.js';

describe('Auth + tiến độ theo user (SQLite)', () => {
  let auth: AuthService;
  let progress: ProgressService;

  beforeAll(() => {
    process.env.DB_PATH = ':memory:';
    const dbx = new DatabaseService();
    dbx.onModuleInit();
    auth = new AuthService(dbx);
    progress = new ProgressService(dbx);
  });

  it('register tạo user + trả token, trùng tên thì lỗi', () => {
    const r1 = auth.register(' testuser ', 'matkhau1');
    expect(r1.ok).toBe(true);
    expect(r1.token).toBeTruthy();
    const r2 = auth.register('testuser', 'khac');
    expect(r2.ok).toBe(false);
    expect(auth.register('u', '123').ok).toBe(false); // pass quá ngắn
  });

  it('login đúng/sai + me/logout', () => {
    const ok = auth.login('testuser', 'matkhau1');
    expect(ok.ok).toBe(true);
    expect(auth.login('testuser', 'sai').ok).toBe(false);
    expect(auth.login('khongco', 'x').ok).toBe(false);
    const me = auth.me('Bearer ' + ok.token);
    expect(me).toMatchObject({ ok: true, username: 'testuser' });
    expect(auth.me('Bearer sai').ok).toBe(false);
    const uid = auth.userIdFromHeader('Bearer ' + ok.token);
    expect(uid).toBeGreaterThan(0);
    expect(auth.userIdFromHeader(undefined)).toBe(0); // khách
    auth.logout('Bearer ' + ok.token);
    expect(auth.me('Bearer ' + ok.token).ok).toBe(false);
  });

  it('change-password đổi đúng khi đúng pass cũ', () => {
    const r = auth.register('pwuser', 'cu1234');
    expect(r.ok).toBe(true);
    const bad = auth.changePassword('Bearer ' + r.token, 'sai', 'moi1234');
    expect(bad.ok).toBe(false);
    const short = auth.changePassword('Bearer ' + r.token, 'cu1234', '123');
    expect(short.ok).toBe(false);
    const ok = auth.changePassword('Bearer ' + r.token, 'cu1234', 'moi1234');
    expect(ok.ok).toBe(true);
    expect(auth.login('pwuser', 'moi1234').ok).toBe(true);
    expect(auth.login('pwuser', 'cu1234').ok).toBe(false);
    expect(auth.changePassword(undefined, 'x', 'y').ok).toBe(false); // chưa đăng nhập
  });

  it('progress lưu riêng từng user theo cả từ/cụm', () => {
    const u1 = auth.register('user1', 'pass1234');
    const u2 = auth.register('user2', 'pass1234');
    const id1 = auth.userIdFromHeader('Bearer ' + u1.token);
    const id2 = auth.userIdFromHeader('Bearer ' + u2.token);
    progress.save(id1, '你好', 1);
    progress.save(id1, '你好', 0);
    progress.save(id2, '你好', 5);
    const p1 = progress.all(id1);
    const p2 = progress.all(id2);
    expect(p1['你好']).toMatchObject({ done: 2, mistakes: 1 });
    expect(p2['你好']).toMatchObject({ done: 1, mistakes: 5 });
    expect(progress.all(0)['你好']).toBeUndefined(); // khách không thấy
  });
});
