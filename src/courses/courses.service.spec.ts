import { describe, it, expect, beforeAll } from 'vitest';
import { DatabaseService } from '../db/database.service.js';
import { NotesService } from './notes.service.js';
import { CoursesService } from './courses.service.js';

describe('Khóa học + ghi chú (SQLite)', () => {
  let notes: NotesService;

  beforeAll(() => {
    process.env.DB_PATH = ':memory:';
    const dbx = new DatabaseService();
    dbx.onModuleInit();
    notes = new NotesService(dbx);
  });

  it('quét video bài giảng trong public/static/HSK{N}', () => {
    const cat = new CoursesService().list();
    expect(cat.total).toBeGreaterThan(0);
    const hsk1 = cat.levels.find((l) => l.level === 1);
    expect(hsk1).toBeTruthy();
    expect(hsk1!.lessons.length).toBeGreaterThan(0);
    expect(hsk1!.lessons[0]).toMatchObject({
      id: expect.stringContaining('HSK1/'),
      no: 1,
      title: 'Bài 1',
    });
    expect(hsk1!.lessons[0].url).toMatch(/^\/static\/HSK1\//);
    // Bài xếp theo số, không theo thứ tự chữ cái (B10 không đứng trước B2).
    const nos = hsk1!.lessons.map((l) => l.no);
    expect(nos).toEqual([...nos].sort((a, b) => a - b));
  });

  it('lưu/đọc ghi chú riêng theo user, ghi đè khi lưu lại', () => {
    expect(notes.get(1, 'HSK1/HSK1-B1').content).toBe('');
    notes.save(1, ' HSK1/HSK1-B1 ', 'từ mới: 你好');
    expect(notes.get(1, 'HSK1/HSK1-B1')).toMatchObject({ ok: true, content: 'từ mới: 你好' });
    expect(notes.get(2, 'HSK1/HSK1-B1').content).toBe(''); // user khác không thấy
    notes.save(1, 'HSK1/HSK1-B1', 'cập nhật');
    expect(notes.get(1, 'HSK1/HSK1-B1').content).toBe('cập nhật');
    const all = notes.all(1);
    expect(all.total).toBe(1);
    expect(all.data['HSK1/HSK1-B1'].content).toBe('cập nhật');
  });

  it('ghi chú rỗng = xóa; thiếu mã bài thì báo lỗi', () => {
    notes.save(1, 'HSK1/HSK1-B2', 'tạm');
    expect(notes.remove(1, 'HSK1/HSK1-B2').ok).toBe(true);
    expect(notes.get(1, 'HSK1/HSK1-B2').content).toBe('');
    notes.save(1, 'HSK1/HSK1-B3', 'x');
    notes.save(1, 'HSK1/HSK1-B3', '   ');
    expect(notes.get(1, 'HSK1/HSK1-B3').content).toBe('');
    expect(notes.save(1, '', 'x').ok).toBe(false);
    expect(notes.get(1, '').ok).toBe(false);
  });
});
