// Data tổng quan & so sánh HSK 2.0 vs HSK 3.0 (tổng hợp từ bài phân tích HTTQMN
// theo slide “HSK考试改革及HSK3.0考试基本情况介绍 (2025.7)”).
// Nguồn triết lý: 《国际中文教育中文水平等级标准》(“标准”) — 3 bậc 9 cấp.
export interface VocabRow {
  level: number;
  hsk20New: number;
  hsk20Total: string;
  hsk30New: number;
  hsk30Total: string;
  stdNew: number;
  stdTotal: string;
}

export interface SkillRow {
  levels: string;
  skills: string[];
  note: string;
}

export const HSK_GUIDE = {
  standard: {
    name: '《国际中文教育中文水平等级标准》',
    bands: [
      { name: 'Sơ cấp 初等', levels: 'HSK 1–3', desc: 'Giao tiếp cơ bản trong sống – học – làm việc.' },
      { name: 'Trung cấp 中等', levels: 'HSK 4–6', desc: 'Giao tiếp trôi chảy trong học tập và công việc.' },
      { name: 'Cao cấp 高等', levels: 'HSK 7–9', desc: 'Dùng tiếng Trung trong môi trường học thuật, nghề nghiệp.' },
    ],
    stats: [
      { value: '11,092', label: 'từ vựng toàn chuẩn' },
      { value: '3,000', label: 'chữ Hán' },
      { value: '1,110', label: 'âm tiết' },
      { value: '5', label: 'đại cương (nhiệm vụ · chủ đề · từ vựng · ngữ pháp · chữ Hán)' },
    ],
    outlines: [
      { zh: '任务大纲', vi: 'Nhiệm vụ giao tiếp' },
      { zh: '话题大纲', vi: 'Chủ đề' },
      { zh: '词汇大纲', vi: 'Từ vựng' },
      { zh: '语法大纲', vi: 'Ngữ pháp' },
      { zh: '汉字大纲', vi: 'Chữ Hán' },
    ],
  },
  skills: [
    { levels: 'HSK 1', skills: ['听 Nghe', '读 Đọc'], note: 'Khẩu ngữ thi riêng qua HSKK.' },
    { levels: 'HSK 2–6', skills: ['听 Nghe', '说 Nói', '读 Đọc', '写 Viết'], note: 'Khẩu ngữ (HSKK sơ/trung/cao) vẫn thi riêng, chuyên sâu hơn.' },
    { levels: 'HSK 7–9', skills: ['听 Nghe', '说 Nói', '读 Đọc', '写 Viết', '译 Dịch'], note: 'Thêm 笔译/口译 (dịch viết / dịch nói) cho môi trường học thuật.' },
  ] as SkillRow[],
  vocab: [
    { level: 1, hsk20New: 150, hsk20Total: '150', hsk30New: 150, hsk30Total: '300', stdNew: 500, stdTotal: '500' },
    { level: 2, hsk20New: 150, hsk20Total: '300', hsk30New: 200, hsk30Total: '500', stdNew: 772, stdTotal: '1272' },
    { level: 3, hsk20New: 300, hsk20Total: '600', hsk30New: 500, hsk30Total: '1000', stdNew: 973, stdTotal: '2245' },
    { level: 4, hsk20New: 600, hsk20Total: '1200', hsk30New: 800, hsk30Total: '2000', stdNew: 1000, stdTotal: '3245' },
    { level: 5, hsk20New: 1300, hsk20Total: '2500', hsk30New: 1100, hsk30Total: '3600', stdNew: 1071, stdTotal: '4316' },
    { level: 6, hsk20New: 2500, hsk20Total: '5000+', hsk30New: 400, hsk30Total: '5400', stdNew: 1140, stdTotal: '5456' },
  ] as VocabRow[],
  insights: [
    'Tổng tuyến HSK 1–6 chỉ tăng khoảng 8% (5000 → 5400 từ) — phân bố lại cho đều, không “lật bàn”.',
    'HSK3 nhảy 600 → 1000 nhưng phần lớn là chính danh hóa từ đã gặp trong đề 2.0: 重组词 (生病＋人 → 病人), 减字词 (帮助 → 帮).',
    'HSK3.0 mới kiểm tra ~45% lượng từ mà “chuẩn” yêu cầu ở level 3 (1000 so với 2245) — phần còn lại dành cho tự học, đọc thêm, chuẩn đầu ra nội bộ.',
    'Đề thi gắn nhiệm vụ thực tế (任务场景与交际话题): nghe xong phải viết, đọc xong phải nói… — đo độ phủ từ trong ngữ cảnh thật.',
  ],
  hsk3Roadmap: [
    { phase: 'Giai đoạn 1', title: '600 từ cốt lõi (nền 2.0 cũ)', desc: 'Học cho vững vốn từ HSK 2.0 trước — đây vẫn là xương sống của đề mới.' },
    { phase: 'Giai đoạn 2', title: 'Mở rộng lên ~1000 từ', desc: 'Tổ hợp từ (病人, 小学, 医生…), biến thể giảm chữ (帮…), từ theo chủ đề (交通、健康、工作…).' },
    { phase: 'Thiết kế bài học', title: 'Theo 5 đại cương', desc: 'Mỗi bài gắn: nhiệm vụ giao tiếp + chủ đề + lớp từ mục tiêu + 1–2 điểm ngữ pháp + nhóm chữ Hán trọng tâm.' },
  ],
  source: 'HTTQMN & NPBOOKS phân tích theo slide HSK3.0 (07/2025). App này dùng bảng từ HSK Atlas (1978 từ HSK 1–4) để luyện.',
};
