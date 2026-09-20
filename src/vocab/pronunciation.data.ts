// Dữ liệu PHÁT ÂM tiếng Trung (pinyin): 21 thanh mẫu, 36 vận mẫu, 4 thanh điệu + khinh thanh.
// `vi`: gần giống tiếng Việt · `detail`: phát âm cụ thể (VD: [pua]) · `guide`: hướng dẫn chi tiết.
export interface InitialEntry {
  py: string;
  group: string;
  vi: string;
  detail: string;
  guide: string;
  audio?: string; // file đọc mẫu thật (mp3); không có thì frontend dùng giọng máy đọc `say`
  ex: string;
  exPy: string;
  exVi: string;
  semi?: boolean; // y, w là bán nguyên âm
}

export interface FinalEntry {
  py: string;
  group: string;
  mouth: string; // nhóm khẩu hình: mở miệng / đều răng / ngậm miệng / chụm miệng / đặc biệt
  vi: string;
  guide: string;
  audio?: string; // file đọc mẫu thật (mp3); không có thì frontend dùng giọng máy đọc `say`
  ex: string;
  exPy: string;
  exVi: string;
}

export interface ToneEntry {
  id: number;
  name: string;
  hv: string;
  mark: string;
  desc: string;
  audio?: string; // file đọc mẫu thật (mp3) từ thanhdieu.txt
  ex: string;
  exPy: string;
  exVi: string;
}

// 21 thanh mẫu (声母) + y, w (bán nguyên âm) — chia 6 nhóm + hướng dẫn phát âm chi tiết.
export const INITIALS: InitialEntry[] = [
  { py: 'b', audio: 'https://cge.edu.vn/ckeditor/audio/1765342025_c1suBjVN1X.mp3', group: 'Nhóm âm hai môi và răng môi', vi: 'Âm “p”', detail: 'Đọc là [pua] (kết hợp với vần “ua”)', guide: 'Hai môi mím lại chạm vào nhau, sau đó mở ra thật nhanh và kết hợp với vần “ua” → [pua].', ex: '爸', exPy: 'bà', exVi: 'bố' },
  { py: 'p', audio: 'https://cge.edu.vn/ckeditor/audio/1765342030_TfUE6AJLMH.mp3', group: 'Nhóm âm hai môi và răng môi', vi: 'Âm “p” (có bật hơi)', detail: 'Đọc là [pua] (kèm bật hơi)', guide: 'Phát âm giống “b” nhưng kèm bật hơi: mím chặt môi, lấy hơi từ bụng đưa lên cổ họng rồi đẩy mạnh ra ngoài → [pua]. Cảm thấy luồng hơi mạnh là đọc đúng.', ex: '怕', exPy: 'pà', exVi: 'sợ' },
  { py: 'f', audio: 'https://cge.edu.vn/ckeditor/audio/1765342034_zZo8Vlrqu8.mp3', group: 'Nhóm âm hai môi và răng môi', vi: 'Âm “ph”', detail: 'Đọc là [phua] (kết hợp với vần “ua”)', guide: 'Răng trên đè chặt vào môi dưới rồi đẩy hơi ra ngoài. Luồng hơi tạo ma sát tại chỗ tiếp xúc răng–môi là phát âm chuẩn.', ex: '发', exPy: 'fā', exVi: 'phát, gửi' },
  { py: 'm', audio: 'https://cge.edu.vn/ckeditor/audio/1765342044_9XndqeWqj2.mp3', group: 'Nhóm âm hai môi và răng môi', vi: 'Âm “m”', detail: 'Đọc là [mua] (kết hợp với vần “ua”)', guide: 'Mím môi sâu hơn âm “m” tiếng Việt rồi bật ra từ khẩu hình đang mím (không bật hơi).', ex: '妈', exPy: 'mā', exVi: 'mẹ' },
  { py: 'd', audio: 'https://cge.edu.vn/ckeditor/audio/1765342061_nHTyQ9BPr4.mp3', group: 'Nhóm âm đầu lưỡi', vi: 'Âm “t”', detail: 'Đọc là [tưa] (kết hợp với vần “ưa”)', guide: 'Đầu lưỡi chạm vào lợi hàm trên, âm không bật hơi. Khẩu hình miệng nhòe sang hai bên.', ex: '打', exPy: 'dǎ', exVi: 'đánh' },
  { py: 't', audio: 'https://cge.edu.vn/ckeditor/audio/1765342066_0ejBhPu7hC.mp3', group: 'Nhóm âm đầu lưỡi', vi: 'Âm “th” (có bật hơi)', detail: 'Đọc là [thưa] (kèm bật hơi)', guide: 'Âm bật hơi mạnh: đầu lưỡi tì sát chân răng hàm trên, lấy hơi từ bụng đẩy mạnh ra ngoài.', ex: '他', exPy: 'tā', exVi: 'anh ấy' },
  { py: 'n', audio: 'https://cge.edu.vn/ckeditor/audio/1765342073_SuJPTTwqBE.mp3', group: 'Nhóm âm đầu lưỡi', vi: 'Âm “n”', detail: 'Đọc là [nưa] (kết hợp với vần “ưa”)', guide: 'Khẩu hình miệng nhòe sang hai bên, phát âm như “n” tiếng Việt → [nưa].', ex: '你', exPy: 'nǐ', exVi: 'bạn' },
  { py: 'l', audio: 'https://cge.edu.vn/ckeditor/audio/1765342080_sIx3VJXkOc.mp3', group: 'Nhóm âm đầu lưỡi', vi: 'Âm “l”', detail: 'Đọc là [lưa] (kết hợp với vần “ưa”)', guide: 'Đầu lưỡi chạm vào lợi hàm trên, sau đó lưỡi di chuyển từ trên xuống dưới.', ex: '来', exPy: 'lái', exVi: 'đến' },
  { py: 'g', audio: 'https://cge.edu.vn/ckeditor/audio/1765342099_m8jQBCzGlo.mp3', group: 'Nhóm âm cuống lưỡi', vi: 'Âm “c”', detail: 'Đọc là [cưa] (kết hợp với vần “ưa”)', guide: 'Âm không bật hơi, đọc nhẹ nhàng → [cưa].', ex: '哥', exPy: 'gē', exVi: 'anh trai' },
  { py: 'k', audio: 'https://cge.edu.vn/ckeditor/audio/1765342104_m4tx5cqfGW.mp3', group: 'Nhóm âm cuống lưỡi', vi: 'Âm “kh” (có bật hơi)', detail: 'Đọc là [khưa] (kèm bật hơi)', guide: 'Lấy hơi từ bụng lên cổ họng, giữ ở cuống họng rồi tạo ma sát đẩy ra. Luồng hơi mang âm “kh” đi ra mạnh kèm bật hơi.', ex: '可', exPy: 'kě', exVi: 'có thể' },
  { py: 'h', audio: 'https://cge.edu.vn/ckeditor/audio/1765342109_WbiRQZDG7u.mp3', group: 'Nhóm âm cuống lưỡi', vi: 'Âm “kh” (không bật hơi)', detail: 'Đọc là [khưa] (không bật hơi)', guide: 'Đọc từ từ, nhẹ nhàng, không bật hơi mạnh để tránh nhầm với “k”.', ex: '好', exPy: 'hǎo', exVi: 'tốt' },
  { py: 'j', audio: 'https://cge.edu.vn/ckeditor/audio/1765342127_P26SI8swA4.mp3', group: 'Nhóm âm mặt lưỡi', vi: 'Âm “ch”', detail: 'Đọc là [chi] (kết hợp với vần “i”)', guide: 'Khẩu hình nhòe sang hai bên (như cười), lưỡi phẳng, không bật hơi — khống chế để hơi không thoát ra ngoài.', ex: '家', exPy: 'jiā', exVi: 'nhà' },
  { py: 'q', audio: 'https://cge.edu.vn/ckeditor/audio/1765342133_WZPsfaVNYJ.mp3', group: 'Nhóm âm mặt lưỡi', vi: 'Âm “ch” (có bật hơi)', detail: 'Đọc là [chi] (kèm bật hơi)', guide: 'Giống “j” nhưng bật hơi mạnh, lưỡi thẳng. Cảm nhận luồng hơi đi ra rất mạnh là đọc đúng.', ex: '去', exPy: 'qù', exVi: 'đi' },
  { py: 'x', audio: 'https://cge.edu.vn/ckeditor/audio/1765342139_W277AOX9fN.mp3', group: 'Nhóm âm mặt lưỡi', vi: 'Âm “x”', detail: 'Đọc là [xi] (không bật hơi)', guide: 'Đọc nhẹ nhàng, thẳng lưỡi, giống tiếng Việt → [xi]. Lưỡi chạm mặt trong hàm răng dưới là đúng.', ex: '学', exPy: 'xué', exVi: 'học' },
  { py: 'z', audio: 'https://cge.edu.vn/ckeditor/audio/1765342156_XlGuf5JXBV.mp3', group: 'Nhóm âm đầu lưỡi trước', vi: 'Âm “ch” miền Bắc, dứt khoát', detail: 'Đọc là [chư]', guide: 'Khẩu hình bẹt sang hai bên, đầu lưỡi chạm mặt trong hàm răng trên, phát âm [chư]. Âm lai giữa [chư] và [zư], không hoàn toàn là [chư].', ex: '在', exPy: 'zài', exVi: 'ở' },
  { py: 'c', audio: 'https://cge.edu.vn/ckeditor/audio/1765342161_qUNNSB9R3F.mp3', group: 'Nhóm âm đầu lưỡi trước', vi: 'Âm “ch” miền Bắc (có bật hơi)', detail: 'Đọc là [chư] (kèm bật hơi)', guide: 'Giống “z” nhưng bật hơi mạnh. Đọc đúng thì lưỡi có xu hướng đẩy răng ra ngoài.', ex: '才', exPy: 'cái', exVi: 'mới' },
  { py: 's', audio: 'https://cge.edu.vn/ckeditor/audio/1765342166_yAWoZMk80X.mp3', group: 'Nhóm âm đầu lưỡi trước', vi: 'Âm “x”', detail: 'Đọc là [xư] (không bật hơi)', guide: 'Đọc nhẹ nhàng giống “x”. Lưu ý: “s” phát âm giống “x”, chỉ khác ở nguyên âm đi kèm (nguyên âm đi với “s” không bao giờ đi với “x”).', ex: '三', exPy: 'sān', exVi: 'ba' },
  { py: 'zh', audio: 'https://cge.edu.vn/ckeditor/audio/1765342183_WuizsnUNhC.mp3', group: 'Nhóm âm đầu lưỡi sau', vi: 'Âm “tr”', detail: 'Đọc là [trư]', guide: 'Không cuốn lưỡi quá nhiều: nâng lưỡi chạm vòng họng để chặn hơi, khi hơi đầy thì hạ lưỡi cho hơi thoát. Môi hơi tròn, chề ra một chút.', ex: '中', exPy: 'zhōng', exVi: 'giữa, Trung' },
  { py: 'ch', audio: 'https://cge.edu.vn/ckeditor/audio/1765342191_qTNyC1T9uF.mp3', group: 'Nhóm âm đầu lưỡi sau', vi: 'Âm “tr” (có bật hơi)', detail: 'Đọc là [trư] (kèm bật hơi)', guide: 'Giống “zh” nhưng bật hơi mạnh: nâng lưỡi chạm vòng họng, không cuốn sâu, rồi đẩy hơi mạnh ra.', ex: '吃', exPy: 'chī', exVi: 'ăn' },
  { py: 'sh', audio: 'https://cge.edu.vn/ckeditor/audio/1765342199_POyxPvhcyD.mp3', group: 'Nhóm âm đầu lưỡi sau', vi: 'Âm “s” nặng', detail: 'Đọc là [sư]', guide: 'Cong lưỡi sẵn, nâng gần vòng họng (không cuốn quá nhiều). Lấy hơi sâu đẩy mạnh ra ngoài.', ex: '是', exPy: 'shì', exVi: 'là' },
  { py: 'r', audio: 'https://cge.edu.vn/ckeditor/audio/1765342205_qyR2rIX6mt.mp3', group: 'Nhóm âm đầu lưỡi sau', vi: 'Âm “r” (không rung)', detail: 'Đọc tương tự [rư]', guide: 'Không rung cổ họng như “r” tiếng Việt, chỉ cong lưỡi.', ex: '人', exPy: 'rén', exVi: 'người' },
  { py: 'y', group: 'Bán nguyên âm', vi: 'Âm “d”', detail: 'Đọc như “d” trong “dạ”', guide: 'Bán nguyên âm, đọc như “d” tiếng Việt. VD: yǒu (có).', ex: '有', exPy: 'yǒu', exVi: 'có', semi: true },
  { py: 'w', group: 'Bán nguyên âm', vi: 'Âm “u”', detail: 'Đọc như “u” trong “ua”', guide: 'Bán nguyên âm, đọc như “u” tiếng Việt. VD: wǒ (tôi).', ex: '我', exPy: 'wǒ', exVi: 'tôi', semi: true },
];

// 36 vận mẫu (韵母) theo 《汉语拼音方案》 — chia 4 nhóm khẩu hình + hướng dẫn chi tiết.
export const FINALS: FinalEntry[] = [
  { py: 'a', audio: 'https://cge.edu.vn/ckeditor/audio/1765340431_LKcL7ZeH3a.mp3', group: 'đơn', mouth: 'mở miệng', vi: 'a', guide: 'Khẩu hình mở lớn nhất: miệng mở rộng thoải mái, lưỡi hạ thấp thả lỏng. Âm thoát đầy đặn, vang rõ, tương tự “a” tiếng Việt.', ex: '大', exPy: 'dà', exVi: 'to, lớn' },
  { py: 'o', audio: 'https://cge.edu.vn/ckeditor/audio/1765340437_GQJXCUW4uf.mp3', group: 'đơn', mouth: 'mở miệng', vi: 'ô', guide: 'Môi hơi tròn nhưng tự nhiên, không chu ra. Lưỡi hơi thu về sau, âm trầm ấm vang. Gần “ô” nhưng mở thoáng hơn.', ex: '多', exPy: 'duō', exVi: 'nhiều' },
  { py: 'e', audio: 'https://cge.edu.vn/ckeditor/audio/1765340442_FXStYaLpvj.mp3', group: 'đơn', mouth: 'mở miệng', vi: 'ơ', guide: 'Miệng mở vừa, môi không siết. Lưỡi hơi lùi, nâng nhẹ phần giữa. Âm đầu hơi đục, càng về cuối càng thoát — gần “ơ” tiếng Việt.', ex: '的', exPy: 'de', exVi: 'của' },
  { py: 'ai', audio: 'https://cge.edu.vn/ckeditor/audio/1765340450_7HVmkYCShP.mp3', group: 'kép', mouth: 'mở miệng', vi: 'ai', guide: 'Bắt đầu bằng “a” mở rộng rồi chuyển mượt sang “i” khi môi dẹt, lưỡi nâng dần về trước. Giống “ai” tiếng Việt.', ex: '爱', exPy: 'ài', exVi: 'yêu' },
  { py: 'ei', audio: 'https://cge.edu.vn/ckeditor/audio/1765340456_F8ZPvthkzk.mp3', group: 'kép', mouth: 'mở miệng', vi: 'ây', guide: 'Khởi đầu bằng âm gần “ê” rồi lướt nhẹ sang “i”. Môi thu dần, lưỡi tiến lên trước. Âm sáng gọn, tương tự “ây” nhưng mảnh hơn.', ex: '杯', exPy: 'bēi', exVi: 'cốc' },
  { py: 'ao', audio: 'https://cge.edu.vn/ckeditor/audio/1765340493_pGJkDKiRzu.mp3', group: 'kép', mouth: 'mở miệng', vi: 'ao', guide: 'Mở đầu bằng “a” vang rộng rồi thu khẩu hình chuyển sang âm giống “o”. Lưỡi thấp rồi lùi nhẹ về sau. Giống “ao” tiếng Việt.', ex: '好', exPy: 'hǎo', exVi: 'tốt' },
  { py: 'ou', audio: 'https://cge.edu.vn/ckeditor/audio/1765340508_Q1NovSzaQ7.mp3', group: 'kép', mouth: 'mở miệng', vi: 'âu', guide: 'Xuất phát từ âm gần “âu” rồi khép nhẹ kết thúc bằng “u” thoát nhanh. Lưỡi hơi nâng về sau. Âm gọn, sáng, dễ nhận diện.', ex: '狗', exPy: 'gǒu', exVi: 'chó' },
  { py: 'an', audio: 'https://cge.edu.vn/ckeditor/audio/1765340516_4qi1rDUjyE.mp3', group: 'mũi', mouth: 'mở miệng', vi: 'an', guide: 'Miệng mở thoải mái, lưỡi hạ thấp rồi nâng đầu lưỡi kết thúc bằng âm mũi “n”. Tương đương “an” tiếng Việt nhưng vang hơn.', ex: '三', exPy: 'sān', exVi: 'ba' },
  { py: 'en', audio: 'https://cge.edu.vn/ckeditor/audio/1765340523_7GYEyi4TDw.mp3', group: 'mũi', mouth: 'mở miệng', vi: 'ân', guide: 'Miệng mở vừa, lưỡi nâng nhẹ phần giữa trước khi vào âm mũi “n”. Âm ngắn gọn, na ná “ân” nhưng dứt khoát hơn.', ex: '门', exPy: 'mén', exVi: 'cửa' },
  { py: 'ang', audio: 'https://cge.edu.vn/ckeditor/audio/1765340529_Vy2Q6Fxoax.mp3', group: 'mũi', mouth: 'mở miệng', vi: 'ang', guide: 'Khẩu hình mở rộng, âm vang xuống họng. Lưỡi hạ thấp rồi nâng phần sau tạo âm “ng”. Âm sâu vang đầy, gần “ang” tiếng Việt.', ex: '上', exPy: 'shàng', exVi: 'trên' },
  { py: 'eng', audio: 'https://cge.edu.vn/ckeditor/audio/1765340536_FH0oHBpfVH.mp3', group: 'mũi', mouth: 'mở miệng', vi: 'âng', guide: 'Miệng mở vừa, lưỡi nâng phần giữa và sau. Vào “ng” âm vang nhưng mềm. Gần “âng” nhưng ngắn gọn hơn.', ex: '朋', exPy: 'péng', exVi: 'bạn (trong 朋友)' },
  { py: 'i', audio: 'https://cge.edu.vn/ckeditor/audio/1765340679_AjJsKWC7us.mp3', group: 'đơn', mouth: 'đều răng', vi: 'i', guide: 'Miệng dẹt, răng gần nhau, lưỡi nâng cao gần vòm răng trên. Âm sáng mảnh, như “i” tiếng Việt.', ex: '你', exPy: 'nǐ', exVi: 'bạn' },
  { py: 'ia', audio: 'https://cge.edu.vn/ckeditor/audio/1765340685_bPQ2tkWggO.mp3', group: 'kép', mouth: 'đều răng', vi: 'i + a', guide: 'Bắt đầu bằng “i” mảnh sáng (miệng dẹt, lưỡi nâng cao) rồi chuyển nhẹ sang “a” miệng mở vừa. Giữ được chất sáng mảnh của “i”.', ex: '家', exPy: 'jiā', exVi: 'nhà' },
  { py: 'ie', audio: 'https://cge.edu.vn/ckeditor/audio/1765340692_vx6xDQ1LSB.mp3', group: 'kép', mouth: 'đều răng', vi: 'i + ê', guide: 'Khởi phát bằng “i” sáng mảnh, tiếp nối bằng “e” (miệng mở vừa, lưỡi hạ nhẹ). Âm rõ, sáng, vang nhẹ.', ex: '姐', exPy: 'jiě', exVi: 'chị' },
  { py: 'iao', audio: 'https://cge.edu.vn/ckeditor/audio/1765340699_Wwov1t57FC.mp3', group: 'kép', mouth: 'đều răng', vi: 'i + ao', guide: 'Bắt đầu bằng “i” mảnh, chuyển sang “a” rộng, kết thúc bằng “o” tròn nhẹ. Khẩu hình từ hẹp sang rộng, chuyển tiếp mềm mại.', ex: '小', exPy: 'xiǎo', exVi: 'nhỏ' },
  { py: 'iu', group: 'kép', mouth: 'đều răng', vi: 'viết tắt của iou: i + âu', guide: 'Bắt đầu bằng “i” mảnh rồi vòng sang “ou”. Viết gọn là “iu” (đầy đủ: iou).', ex: '九', exPy: 'jiǔ', exVi: 'chín' },
  { py: 'in', audio: 'https://cge.edu.vn/ckeditor/audio/1765340706_IlI2xpWY32.mp3', group: 'mũi', mouth: 'đều răng', vi: 'in', guide: 'Miệng dẹt, lưỡi nâng cao phía trước, kết thúc bằng âm mũi “n”. Âm sáng, ngắn gọn, rõ ràng.', ex: '心', exPy: 'xīn', exVi: 'tim' },
  { py: 'ian', audio: 'https://cge.edu.vn/ckeditor/audio/1765340714_OcmhS5k8Yo.mp3', group: 'mũi', mouth: 'đều răng', vi: 'i + an', guide: 'Bắt đầu bằng “i” mảnh, chuyển sang “a”, kết thúc bằng âm mũi “n”. Giữ độ mảnh, vang nhẹ, rõ ràng.', ex: '年', exPy: 'nián', exVi: 'năm' },
  { py: 'iang', audio: 'https://cge.edu.vn/ckeditor/audio/1765340720_fmzet5bF5Z.mp3', group: 'mũi', mouth: 'đều răng', vi: 'i + ang', guide: 'Khởi đầu bằng “i” mảnh, chuyển sang “a” rộng, kết thúc bằng “ng”. Vang nhẹ, sáng hơn nhóm mở miệng.', ex: '想', exPy: 'xiǎng', exVi: 'muốn' },
  { py: 'ing', audio: 'https://cge.edu.vn/ckeditor/audio/1765340727_C2ZD3wr19P.mp3', group: 'mũi', mouth: 'đều răng', vi: 'inh', guide: 'Miệng dẹt, lưỡi nâng cao, kết thúc bằng “ng”. Âm sắc nét, mảnh, vang nhẹ — khác rõ với “eng” nhóm mở miệng.', ex: '明', exPy: 'míng', exVi: 'sáng' },
  { py: 'u', audio: 'https://cge.edu.vn/ckeditor/audio/1765340809_IhGOw1gHMP.mp3', group: 'đơn', mouth: 'ngậm miệng', vi: 'u', guide: 'Môi tròn khép, lưỡi nâng vừa phía sau. Âm tròn ấm sâu, như “u” tiếng Việt.', ex: '不', exPy: 'bù', exVi: 'không' },
  { py: 'ua', audio: 'https://cge.edu.vn/ckeditor/audio/1765340840_D1d7dqvTxg.mp3', group: 'kép', mouth: 'ngậm miệng', vi: 'u + a', guide: 'Khởi đầu bằng “u” tròn ấm rồi mở rộng nhẹ sang “a” (miệng mở vừa, lưỡi hạ thấp). Giữ độ tròn ấm của “u”.', ex: '花', exPy: 'huā', exVi: 'hoa' },
  { py: 'uo', audio: 'https://cge.edu.vn/ckeditor/audio/1765340848_rapimtALu0.mp3', group: 'kép', mouth: 'ngậm miệng', vi: 'u + ô', guide: 'Bắt đầu bằng “u” tròn ấm, kết thúc bằng “o” tròn nhẹ. Khẩu hình luôn tròn, âm vang dày rõ.', ex: '多', exPy: 'duō', exVi: 'nhiều' },
  { py: 'uai', audio: 'https://cge.edu.vn/ckeditor/audio/1765340854_NseutrXSP6.mp3', group: 'kép', mouth: 'ngậm miệng', vi: 'u + ai', guide: 'Khởi âm “u” tròn, chuyển sang “a” mở, kết thúc bằng “i” mảnh. Uyển chuyển, vừa ấm vừa sáng.', ex: '快', exPy: 'kuài', exVi: 'nhanh' },
  { py: 'ui', audio: 'https://cge.edu.vn/ckeditor/audio/1765340862_xdkDdPGWoT.mp3', group: 'kép', mouth: 'ngậm miệng', vi: 'viết tắt của uei: u + ây', guide: 'Bắt đầu bằng “u” tròn, kết thúc bằng “ei” sáng. Viết gọn là “ui” (đầy đủ: uei). Âm sắc nét, chuyển từ tròn sang sáng.', ex: '水', exPy: 'shuǐ', exVi: 'nước' },
  { py: 'uan', audio: 'https://cge.edu.vn/ckeditor/audio/1765340872_RtYywuW8iq.mp3', group: 'mũi', mouth: 'ngậm miệng', vi: 'u + an', guide: 'Khởi đầu bằng “u” tròn ấm, chuyển sang “a” mở, kết thúc bằng “n”. Âm vang tròn rõ.', ex: '欢', exPy: 'huān', exVi: 'vui (trong 欢迎)' },
  { py: 'un', audio: 'https://cge.edu.vn/ckeditor/audio/1765340889_WEB3YlNJX7.mp3', group: 'mũi', mouth: 'ngậm miệng', vi: 'viết tắt của uen: u + ân', guide: 'Miệng tròn, lưỡi hơi nâng phía sau, kết thúc bằng “n”. Viết gọn là “un” (đầy đủ: uen). Âm tròn ấm, ngắn gọn.', ex: '问', exPy: 'wèn', exVi: 'hỏi' },
  { py: 'uang', audio: 'https://cge.edu.vn/ckeditor/audio/1765340895_B8cHpHr88k.mp3', group: 'mũi', mouth: 'ngậm miệng', vi: 'u + ang', guide: 'Khởi âm “u” tròn, chuyển sang “a” mở, kết thúc bằng “ng”. Âm vang dày tròn, lan tỏa rõ rệt.', ex: '光', exPy: 'guāng', exVi: 'sáng' },
  { py: 'ueng', audio: 'https://cge.edu.vn/ckeditor/audio/1765341090_1Txy5WeoLy.mp3', group: 'mũi', mouth: 'ngậm miệng', vi: 'u + âng', guide: 'Bắt đầu bằng “u” tròn, kết thúc bằng “ng” mở rộng. Âm tròn vang sâu, chắc chắn — khác với “eng” nhóm mở miệng.', ex: '翁', exPy: 'wēng', exVi: 'ông lão' },
  { py: 'ong', audio: 'https://cge.edu.vn/ckeditor/audio/1765341095_iF0l8FRF5F.mp3', group: 'mũi', mouth: 'ngậm miệng', vi: 'ung', guide: 'Khởi đầu bằng âm “u” tròn ấm rất rõ (môi tròn khép chặt, lưỡi nâng cao phía sau như “u” đơn), rồi giữ độ tròn, mở rộng nhẹ, hạ lưỡi một chút chuyển sang “-ng” mũi họng sâu.', ex: '中', exPy: 'zhōng', exVi: 'giữa' },
  { py: 'ü', audio: 'https://cge.edu.vn/ckeditor/audio/1765341296_RzxzAh1xDh.mp3', group: 'đơn', mouth: 'chụm miệng', vi: 'uy (tròn môi)', guide: 'Môi chụm tròn nhỏ như phát âm “u”, hơi hướng ra trước, lưỡi nâng cao đẩy nhẹ lên trước. Âm sáng mềm, như “uy” nhưng hẹp và tròn môi hơn.', ex: '去', exPy: 'qù', exVi: 'đi' },
  { py: 'üe', audio: 'https://cge.edu.vn/ckeditor/audio/1765341301_WJDSHeDm46.mp3', group: 'kép', mouth: 'chụm miệng', vi: 'uy + ê', guide: 'Bắt đầu bằng “ü” môi chụm tròn nhỏ, rồi chuyển nhẹ sang “e”: mở môi nhưng vẫn hơi tròn, lưỡi hạ xuống lùi nhẹ. Nghe như “uyê” nhưng đầu âm căng tròn hơn.', ex: '学', exPy: 'xué', exVi: 'học' },
  { py: 'üan', audio: 'https://cge.edu.vn/ckeditor/audio/1765341308_jpEVwtjbJN.mp3', group: 'mũi', mouth: 'chụm miệng', vi: 'uy + an', guide: 'Bắt đầu bằng “ü” môi chụm tròn, lưỡi nâng cao, rồi chuyển sang “an”: mở rộng môi dần, lưỡi hạ xuống hơi lùi. Nghe giống “uyên” tiếng Việt.', ex: '远', exPy: 'yuǎn', exVi: 'xa' },
  { py: 'ün', audio: 'https://cge.edu.vn/ckeditor/audio/1765341314_AIU3xZOoGk.mp3', group: 'mũi', mouth: 'chụm miệng', vi: 'uy + n', guide: 'Bắt đầu bằng “ü” môi chụm tròn, lưỡi nâng cao phía trước; sang âm “n” thì mở môi nhẹ, giữ độ tròn, đầu lưỡi chạm đúng vị trí n. Ngắn gọn, gần “uyn” nhưng căng tròn môi hơn.', ex: '云', exPy: 'yún', exVi: 'mây' },
  { py: 'iong', audio: 'https://cge.edu.vn/ckeditor/audio/1765341319_srxTmeRkEL.mp3', group: 'mũi', mouth: 'chụm miệng', vi: 'i + ung (tròn môi)', guide: 'Bắt đầu như “i” nhưng môi chụm tròn nhẹ (giữa “i” và “u”), rồi nhanh chóng chuyển sang “ong”: môi tròn hơi đưa ra trước, âm mũi cuối vang nhẹ gọn. Nghe giống “yong” nhưng tròn môi rõ hơn.', ex: '穷', exPy: 'qióng', exVi: 'nghèo' },
  { py: 'er', group: 'đặc biệt', mouth: 'đặc biệt', vi: 'ơ (uốn lưỡi)', guide: 'Lưỡi cong mạnh về phía sau, tạo âm sắc riêng biệt. Đọc như “ơ” nhưng uốn lưỡi.', ex: '二', exPy: 'èr', exVi: 'hai' },
];

// 4 thanh điệu (声调) + khinh thanh
export const TONES: ToneEntry[] = [
  { id: 1, name: 'Thanh 1 — âm bình', hv: 'âm bình', mark: 'ˉ', desc: 'Đọc cao, đều và kéo dài (như đang hát một nốt cao).', audio: 'https://cge.edu.vn/ckeditor/audio/1765346787_oVZQL6O069.mp3', ex: '妈', exPy: 'mā', exVi: 'mẹ' },
  { id: 2, name: 'Thanh 2 — dương bình', hv: 'dương bình', mark: 'ˊ', desc: 'Đọc đi lên, như giọng ngạc nhiên “hả?” trong tiếng Việt.', audio: 'https://cge.edu.vn/ckeditor/audio/1765346791_NpAaEpTUmO.mp3', ex: '麻', exPy: 'má', exVi: 'cây gai' },
  { id: 3, name: 'Thanh 3 — thượng thanh', hv: 'thượng thanh', mark: 'ˇ', desc: 'Đọc hạ thấp rồi vòng lên (như hỏi “hả?” kéo dài).', audio: 'https://cge.edu.vn/ckeditor/audio/1765346795_mN8NuiKaRr.mp3', ex: '马', exPy: 'mǎ', exVi: 'ngựa' },
  { id: 4, name: 'Thanh 4 — khứ thanh', hv: 'khứ thanh', mark: 'ˋ', desc: 'Đọc dứt khoát từ cao xuống thấp, mạnh và ngắn.', audio: 'https://cge.edu.vn/ckeditor/audio/1765346799_QOx7f3Bh3H.mp3', ex: '骂', exPy: 'mà', exVi: 'mắng' },
  { id: 0, name: 'Khinh thanh (thanh nhẹ)', hv: 'khinh thanh', mark: '·', desc: 'Đọc nhẹ, ngắn, không nhấn (thường ở cuối từ).', audio: 'https://cge.edu.vn/ckeditor/audio/1765346803_f4iQ5II4Wm.mp3', ex: '吗', exPy: 'ma', exVi: '(trợ từ hỏi)' },
];

// Bản đọc “hô độc âm” (呼读音) của 21 thanh mẫu — dùng cho nút 🔊 đọc chính thanh mẫu
// (VD: b đọc là “bō”, không phải đọc chữ ví dụ).
export const INITIAL_SAY: Record<string, string> = {
  b: 'bō', p: 'pō', m: 'mō', f: 'fō', d: 'dē', t: 'tē', n: 'nē', l: 'lē',
  g: 'gē', k: 'kē', h: 'hē', j: 'jī', q: 'qī', x: 'xī',
  zh: 'zhī', ch: 'chī', sh: 'shī', r: 'rī', z: 'zī', c: 'cī', s: 'sī',
  y: 'yī', w: 'wū',
};

// Bản đọc thanh 1 của 36 vận mẫu — dùng cho nút 🔊 đọc chính vận mẫu.
export const FINAL_SAY: Record<string, string> = {
  a: 'ā', o: 'ō', e: 'ē', i: 'ī', u: 'ū', ü: 'ǖ',
  ai: 'āi', ei: 'ēi', ao: 'āo', ou: 'ōu',
  ia: 'iā', ie: 'iē', ua: 'uā', uo: 'uō', üe: 'üē',
  iao: 'iāo', iu: 'iū', uai: 'uāi', ui: 'uī',
  an: 'ān', en: 'ēn', ang: 'āng', eng: 'ēng', ong: 'ōng',
  ian: 'iān', in: 'īn', iang: 'iāng', ing: 'īng', iong: 'iōng',
  uan: 'uān', un: 'ūn', uang: 'uāng', ueng: 'uēng',
  üan: 'üān', ün: 'ǖn', er: 'ēr',
};

// 50 bộ thủ THÔNG DỤNG nhất (theo danh sách STUDY4 tổng hợp) — id theo bảng 214 Khang Hy.
export const COMMON_RADICAL_IDS: number[] = [
  9, 18, 19, 30, 31, 32, 37, 38, 40, 46,
  50, 53, 60, 61, 64, 66, 72, 75, 85, 86,
  93, 94, 96, 102, 104, 109, 112, 115, 118, 119,
  120, 130, 140, 142, 145, 149, 154, 157, 159, 162,
  163, 167, 169, 170, 173, 181, 184, 187, 195, 196,
];
