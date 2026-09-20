// Ghi đè / bổ sung thủ công cho tra cứu 1 chữ (GET /api/vocab/:char).
// Dùng khi chữ không có từ đơn tương ứng trong bảng vocab của SQLite.
export const CHAR_OVERRIDES: Record<string, { py: string; vi: string }> = {
  '汉': { py: 'Hàn', vi: 'Hán' },
  '语': { py: 'yǔ', vi: 'ngôn ngữ' },
  '学': { py: 'xué', vi: 'học' },
  '习': { py: 'xí', vi: 'luyện tập' },
  '谢': { py: 'xiè', vi: 'cảm ơn' },
  '你': { py: 'nǐ', vi: 'bạn' },
  '好': { py: 'hǎo', vi: 'tốt, khỏe' },
  '我': { py: 'wǒ', vi: 'tôi' },
  '他': { py: 'tā', vi: 'anh ấy' },
  '她': { py: 'tā', vi: 'cô ấy' },
  '是': { py: 'shì', vi: 'là' },
  '不': { py: 'bù', vi: 'không' },
  '的': { py: 'de', vi: 'của (trợ từ)' },
  '人': { py: 'rén', vi: 'người' },
  '大': { py: 'dà', vi: 'to, lớn' },
  '小': { py: 'xiǎo', vi: 'nhỏ' },
  '中': { py: 'Zhōng', vi: 'giữa, Trung' },
  '国': { py: 'guó', vi: 'nước, quốc' },
  '永': { py: 'yǒng', vi: 'mãi mãi (chữ luyện 8 nét cơ bản 永字八法)' },
};
