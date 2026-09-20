import { describe, it, expect, beforeAll } from 'vitest';
import { VocabService } from './vocab.service.js';
import { DatabaseService } from '../db/database.service.js';

describe('VocabService (SQLite: HSK 3.0 + 214 bộ thủ)', () => {
  let service: VocabService;

  beforeAll(() => {
    process.env.DB_PATH = ':memory:';
    const dbx = new DatabaseService();
    dbx.onModuleInit(); // seed DB trong RAM
    service = new VocabService(dbx);
  });

  it('levels() trả về 4 cấp độ với tổng 1978 từ (HSK Atlas)', () => {
    const levels = service.levels();
    expect(levels.map((l) => l.level)).toEqual([1, 2, 3, 4]);
    expect(levels.map((l) => l.count)).toEqual([302, 200, 491, 985]);
    expect(levels[3].cumulative).toBe(1978);
  });

  it('list() lọc theo level + tìm không dấu tiếng Việt', () => {
    expect(service.list({ level: '1' }).total).toBe(302);
    const r = service.list({ level: 'all', q: 'hoc tap' });
    expect(r.total).toBeGreaterThan(0);
    expect(r.data.some((e) => e.zh === '学习')).toBe(true);
  });

  it('list() trả mã HSK1-4 + stt theo đúng mốc', () => {
    const l1 = service.list({ level: '1', limit: '500' }).data;
    expect(l1[0]).toMatchObject({ stt: 1, code: 'HSK1-001', zh: '爱' });
    expect(l1[l1.length - 1]).toMatchObject({ code: 'HSK1-302', zh: '做饭' });
    const l2 = service.list({ level: '2', limit: '500' }).data;
    expect(l2[l2.length - 1]).toMatchObject({ code: 'HSK2-200', zh: '左边' });
  });

  it('radicals() đủ 214 bộ, lọc theo số nét và từ khóa', () => {
    expect(service.radicals({}).length).toBe(214);
    expect(service.radicals({ strokes: '1' }).length).toBe(6);
    expect(service.radicals({ q: 'tay' }).map((r) => r.zh)).toContain('手');
    expect(service.radicalById('214')?.zh).toBe('龠');
  });

  it('radicals() lọc 50 bộ thông dụng (common=1) theo danh sách STUDY4', () => {
    const common = service.radicals({ common: '1' });
    expect(common.length).toBe(50);
    expect(common.every((r) => r.common)).toBe(true);
    expect(common.map((r) => r.zh)).toContain('手');
    expect(common.map((r) => r.id)).toContain(196); // 鳥 điểu
    expect(common.map((r) => r.id)).not.toContain(1); // 一 không thuộc top 50 STUDY4
    const shou = common.find((r) => r.zh === '手');
    expect(shou?.examples?.length).toBe(3);
    expect(shou?.examples?.[0]).toMatchObject({ zh: '手术', py: 'shǒushù', vi: 'phẫu thuật' });
  });

  it('pronunciation() đủ 21 thanh mẫu (+y,w), 36 vận mẫu, 5 thanh điệu', () => {
    const p = service.pronunciation();
    expect(p.initials.filter((i) => !i.semi).length).toBe(21);
    expect(p.finals.length).toBe(36);
    expect(p.tones.length).toBe(5);
  });

  it('pronunciation() thanh/vận mẫu có nhóm + hướng dẫn chi tiết + bản đọc say', () => {
    const p = service.pronunciation();
    for (const t of [...p.initials, ...p.finals]) expect(t.say).toBeTruthy();
    expect(p.initials.find((i) => i.py === 'b')?.say).toBe('bō');
    expect(p.finals.find((f) => f.py === 'iang')?.say).toBe('iāng');
    for (const t of p.initials) {
      expect(t.group).toBeTruthy();
      expect(t.detail).toBeTruthy();
      expect(t.guide).toBeTruthy();
    }
    expect(new Set(p.initials.map((t) => t.group)).size).toBe(7); // 6 nhóm + bán nguyên âm
    for (const f of p.finals) {
      expect(f.mouth).toBeTruthy();
      expect(f.guide).toBeTruthy();
    }
    expect(new Set(p.finals.map((f) => f.mouth))).toEqual(
      new Set(['mở miệng', 'đều răng', 'ngậm miệng', 'chụm miệng', 'đặc biệt']),
    );
    expect(p.initials.find((i) => i.py === 'b')?.detail).toContain('[pua]');
  });

  it('guide() trả data HSK 2.0 vs 3.0 cho dashboard', () => {
    const g = service.guide();
    expect(g.standard.stats.length).toBe(4);
    expect(g.vocab.length).toBe(6);
    expect(g.vocab.find((r) => r.level === 3)).toMatchObject({ hsk30Total: '1000', stdTotal: '2245' });
    expect(g.skills.length).toBe(3);
    expect(g.insights.length).toBeGreaterThan(0);
  });

  it('lookup() trả pinyin + nghĩa Việt + từ HSK chứa chữ', () => {
    const d = service.lookup('好');
    expect(d.py).toBeTruthy();
    expect(d.vi).toBeTruthy();
    expect(d.words.length).toBeGreaterThan(0);
  });

  it('thanh điệu có audio đọc mẫu thật đúng theo thanhdieu.txt (5/5)', () => {
    const p = service.pronunciation();
    const byId = new Map(p.tones.map((t) => [t.id, t.audio || '']));
    expect(byId.get(1)).toBe('https://cge.edu.vn/ckeditor/audio/1765346787_oVZQL6O069.mp3');
    expect(byId.get(4)).toBe('https://cge.edu.vn/ckeditor/audio/1765346799_QOx7f3Bh3H.mp3');
    expect(byId.get(0)).toBe('https://cge.edu.vn/ckeditor/audio/1765346803_f4iQ5II4Wm.mp3');
    expect(p.tones.filter((t) => t.audio).length).toBe(5);
  });

  it('thanh mẫu có audio đọc mẫu thật đúng theo datatm.txt (21/23, trừ y và w)', () => {
    const p = service.pronunciation();
    const byPy = new Map(p.initials.map((t) => [t.py, t.audio || '']));
    expect(byPy.get('b')).toBe('https://cge.edu.vn/ckeditor/audio/1765342025_c1suBjVN1X.mp3');
    expect(byPy.get('r')).toBe('https://cge.edu.vn/ckeditor/audio/1765342205_qyR2rIX6mt.mp3');
    expect(byPy.get('zh')).toBe('https://cge.edu.vn/ckeditor/audio/1765342183_WuizsnUNhC.mp3');
    expect(p.initials.filter((t) => t.audio).length).toBe(21);
  });

  it('vận mẫu có audio đọc mẫu thật đúng theo datavm.txt (34/36 âm, trừ iu và er)', () => {
    const p = service.pronunciation();
    const byPy = new Map(p.finals.map((f) => [f.py, f.audio || '']));
    expect(byPy.get('a')).toBe('https://cge.edu.vn/ckeditor/audio/1765340431_LKcL7ZeH3a.mp3');
    expect(byPy.get('un')).toBe('https://cge.edu.vn/ckeditor/audio/1765340889_WEB3YlNJX7.mp3');
    expect(byPy.get('ong')).toBe('https://cge.edu.vn/ckeditor/audio/1765341095_iF0l8FRF5F.mp3');
    expect(byPy.get('iong')).toBe('https://cge.edu.vn/ckeditor/audio/1765341319_srxTmeRkEL.mp3');
    expect(p.finals.filter((f) => f.audio).length).toBe(34);
  });
});
