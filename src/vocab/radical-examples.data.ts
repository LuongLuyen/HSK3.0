// Ví dụ minh họa cho 50 bộ thủ thông dụng (theo danh sách STUDY4 tổng hợp).
// Mỗi bộ có 3 từ ví dụ kèm pinyin + nghĩa Việt. Key = id bộ thủ (bảng 214 Khang Hy).
export interface RadicalExample {
  zh: string;
  py: string;
  vi: string;
}

export const RADICAL_EXAMPLES: Record<number, RadicalExample[]> = {
  9: [
    { zh: '个人', py: 'gèrén', vi: 'cá nhân' },
    { zh: '从事', py: 'cóngshì', vi: 'làm việc' },
    { zh: '仁义', py: 'rényì', vi: 'nhân nghĩa' },
  ],
  18: [
    { zh: '切', py: 'qiè', vi: 'cắt' },
    { zh: '前', py: 'qián', vi: 'trước' },
    { zh: '剁', py: 'duò', vi: 'chặt nhỏ' },
  ],
  19: [
    { zh: '努力', py: 'nǔlì', vi: 'nỗ lực' },
    { zh: '动力', py: 'dònglì', vi: 'động lực' },
    { zh: '活力', py: 'huólì', vi: 'sức sống' },
  ],
  30: [
    { zh: '出口', py: 'chūkǒu', vi: 'cửa ra, xuất khẩu' },
    { zh: '吞', py: 'tūn', vi: 'nuốt' },
    { zh: '咽', py: 'yàn', vi: 'nuốt (nước bọt)' },
  ],
  31: [
    { zh: '围绕', py: 'wéirào', vi: 'bao quanh' },
    { zh: '国', py: 'guó', vi: 'nước, quốc gia' },
    { zh: '围观', py: 'wéiguān', vi: 'vây quanh xem' },
  ],
  32: [
    { zh: '土地', py: 'tǔdì', vi: 'đất đai' },
    { zh: '埋', py: 'mái', vi: 'chôn' },
    { zh: '泥土', py: 'nítǔ', vi: 'bùn đất' },
  ],
  37: [
    { zh: '大山', py: 'dàshān', vi: 'núi lớn' },
    { zh: '巨大', py: 'jùdà', vi: 'khổng lồ' },
    { zh: '大街', py: 'dàjiē', vi: 'đại lộ' },
  ],
  38: [
    { zh: '女工', py: 'nǚgōng', vi: 'nữ công nhân' },
    { zh: '美女', py: 'měinǚ', vi: 'người đẹp' },
    { zh: '女子', py: 'nǚzǐ', vi: 'con gái' },
  ],
  40: [
    { zh: '家', py: 'jiā', vi: 'nhà, gia đình' },
    { zh: '密室', py: 'mìshì', vi: 'phòng kín' },
    { zh: '守护', py: 'shǒuhù', vi: 'bảo vệ' },
  ],
  46: [
    { zh: '高山', py: 'gāoshān', vi: 'núi cao' },
    { zh: '登山', py: 'dēngshān', vi: 'leo núi' },
    { zh: '山水', py: 'shānshuǐ', vi: 'sơn thủy' },
  ],
  50: [
    { zh: '手巾', py: 'shǒujīn', vi: 'khăn tay' },
    { zh: '头巾', py: 'tóujīn', vi: 'khăn trùm đầu' },
    { zh: '红巾', py: 'hóngjīn', vi: 'khăn đỏ' },
  ],
  53: [
    { zh: '广阔', py: 'guǎngkuò', vi: 'rộng lớn' },
    { zh: '广场', py: 'guǎngchǎng', vi: 'quảng trường' },
    { zh: '广告', py: 'guǎnggào', vi: 'quảng cáo' },
  ],
  60: [
    { zh: '街道', py: 'jiēdào', vi: 'con phố' },
    { zh: '心路', py: 'xīnlù', vi: 'lối đi trong tâm' },
    { zh: '行动', py: 'xíngdòng', vi: 'hành động' },
  ],
  61: [
    { zh: '心情', py: 'xīnqíng', vi: 'tâm trạng' },
    { zh: '忠心', py: 'zhōngxīn', vi: 'trung thành' },
    { zh: '心血', py: 'xīnxuè', vi: 'tâm huyết' },
  ],
  64: [
    { zh: '手术', py: 'shǒushù', vi: 'phẫu thuật' },
    { zh: '高手', py: 'gāoshǒu', vi: 'cao thủ' },
    { zh: '接手', py: 'jiēshǒu', vi: 'nhận lấy' },
  ],
  66: [
    { zh: '改变', py: 'gǎibiàn', vi: 'thay đổi' },
    { zh: '教改', py: 'jiàogǎi', vi: 'cải cách giáo dục' },
    { zh: '收入', py: 'shōurù', vi: 'thu nhập' },
  ],
  72: [
    { zh: '日期', py: 'rìqī', vi: 'ngày tháng' },
    { zh: '明日', py: 'míngrì', vi: 'ngày mai' },
    { zh: '日常', py: 'rìcháng', vi: 'thường nhật' },
  ],
  75: [
    { zh: '木头', py: 'mùtou', vi: 'khúc gỗ' },
    { zh: '树木', py: 'shùmù', vi: 'cây cối' },
    { zh: '木材', py: 'mùcái', vi: 'vật liệu gỗ' },
  ],
  85: [
    { zh: '流水', py: 'liúshuǐ', vi: 'dòng nước' },
    { zh: '水流', py: 'shuǐliú', vi: 'nước chảy' },
    { zh: '河水', py: 'héshuǐ', vi: 'nước sông' },
  ],
  86: [
    { zh: '火焰', py: 'huǒyàn', vi: 'ngọn lửa' },
    { zh: '灭火', py: 'mièhuǒ', vi: 'dập lửa' },
    { zh: '火灾', py: 'huǒzāi', vi: 'hỏa hoạn' },
  ],
  93: [
    { zh: '水牛', py: 'shuǐniú', vi: 'trâu nước' },
    { zh: '牛群', py: 'niúqún', vi: 'đàn trâu' },
    { zh: '黄牛', py: 'huángniú', vi: 'bò vàng' },
  ],
  94: [
    { zh: '犬只', py: 'quǎnzhī', vi: 'đàn chó' },
    { zh: '牧犬', py: 'mùquǎn', vi: 'chó chăn cừu' },
    { zh: '狗犬', py: 'gǒuquǎn', vi: 'chó nhà' },
  ],
  96: [
    { zh: '玉佩', py: 'yùpèi', vi: 'ngọc bội' },
    { zh: '玉石', py: 'yùshí', vi: 'đá quý' },
    { zh: '翡翠', py: 'fěicuì', vi: 'ngọc phỉ thúy' },
  ],
  102: [
    { zh: '田地', py: 'tiándì', vi: 'ruộng đất' },
    { zh: '稻田', py: 'dàotián', vi: 'ruộng lúa' },
    { zh: '果田', py: 'guǒtián', vi: 'vườn trái cây' },
  ],
  104: [
    { zh: '生病', py: 'shēngbìng', vi: 'mắc bệnh' },
    { zh: '重病', py: 'zhòngbìng', vi: 'bệnh nặng' },
    { zh: '病床', py: 'bìngchuáng', vi: 'giường bệnh' },
  ],
  109: [
    { zh: '眼目', py: 'yǎnmù', vi: 'ánh mắt' },
    { zh: '目光', py: 'mùguāng', vi: 'tầm nhìn' },
    { zh: '注目', py: 'zhùmù', vi: 'chú ý' },
  ],
  112: [
    { zh: '石桥', py: 'shíqiáo', vi: 'cầu đá' },
    { zh: '石头', py: 'shítou', vi: 'viên đá' },
    { zh: '山石', py: 'shānshí', vi: 'núi đá' },
  ],
  115: [
    { zh: '禾苗', py: 'hémiáo', vi: 'mạ lúa' },
    { zh: '禾田', py: 'hétián', vi: 'ruộng lúa' },
    { zh: '种禾', py: 'zhònghé', vi: 'trồng lúa' },
  ],
  118: [
    { zh: '竹叶', py: 'zhúyè', vi: 'lá trúc' },
    { zh: '竹林', py: 'zhúlín', vi: 'rừng trúc' },
    { zh: '竹筒', py: 'zhútǒng', vi: 'ống trúc' },
  ],
  119: [
    { zh: '米粉', py: 'mǐfěn', vi: 'bột gạo' },
    { zh: '糯米', py: 'nuòmǐ', vi: 'gạo nếp' },
    { zh: '米饭', py: 'mǐfàn', vi: 'cơm trắng' },
  ],
  120: [
    { zh: '丝绸', py: 'sīchóu', vi: 'lụa' },
    { zh: '细丝', py: 'xìsī', vi: 'tơ nhỏ' },
    { zh: '毛线', py: 'máoxiàn', vi: 'len' },
  ],
  130: [
    { zh: '肉类', py: 'ròulèi', vi: 'loại thịt' },
    { zh: '鸡肉', py: 'jīròu', vi: 'thịt gà' },
    { zh: '牛肉', py: 'niúròu', vi: 'thịt bò' },
  ],
  140: [
    { zh: '青草', py: 'qīngcǎo', vi: 'cỏ xanh' },
    { zh: '草地', py: 'cǎodì', vi: 'bãi cỏ' },
    { zh: '野草', py: 'yěcǎo', vi: 'cỏ dại' },
  ],
  142: [
    { zh: '昆虫', py: 'kūnchóng', vi: 'côn trùng' },
    { zh: '小虫', py: 'xiǎochóng', vi: 'sâu nhỏ' },
    { zh: '螳螂', py: 'tángláng', vi: 'bọ ngựa' },
  ],
  145: [
    { zh: '衣物', py: 'yīwù', vi: 'quần áo' },
    { zh: '衣服', py: 'yīfu', vi: 'trang phục' },
    { zh: '外衣', py: 'wàiyī', vi: 'áo khoác' },
  ],
  149: [
    { zh: '语言', py: 'yǔyán', vi: 'ngôn ngữ' },
    { zh: '言语', py: 'yányǔ', vi: 'lời nói' },
    { zh: '方言', py: 'fāngyán', vi: 'tiếng địa phương' },
  ],
  154: [
    { zh: '贝壳', py: 'bèiké', vi: 'vỏ sò' },
    { zh: '贝类', py: 'bèilèi', vi: 'loài sò' },
    { zh: '宝贝', py: 'bǎobèi', vi: 'bảo bối' },
  ],
  157: [
    { zh: '足够', py: 'zúgòu', vi: 'đủ' },
    { zh: '足部', py: 'zúbù', vi: 'bàn chân' },
    { zh: '不足', py: 'bùzú', vi: 'không đủ' },
  ],
  159: [
    { zh: '自行车', py: 'zìxíngchē', vi: 'xe đạp' },
    { zh: '火车', py: 'huǒchē', vi: 'xe lửa' },
    { zh: '汽车', py: 'qìchē', vi: 'ô tô' },
  ],
  162: [
    { zh: '过道', py: 'guòdào', vi: 'hành lang' },
    { zh: '迅速', py: 'xùnsù', vi: 'nhanh chóng' },
    { zh: '近路', py: 'jìnlù', vi: 'đường gần' },
  ],
  163: [
    { zh: '邑居', py: 'yìjū', vi: 'nơi ở' },
    { zh: '邑城', py: 'yìchéng', vi: 'thành ấp' },
    { zh: '邻邑', py: 'línyì', vi: 'vùng lân cận' },
  ],
  167: [
    { zh: '黄金', py: 'huángjīn', vi: 'vàng' },
    { zh: '金属', py: 'jīnshǔ', vi: 'kim loại' },
    { zh: '金银', py: 'jīnyín', vi: 'vàng bạc' },
  ],
  169: [
    { zh: '门口', py: 'ménkǒu', vi: 'cửa vào' },
    { zh: '开门', py: 'kāimén', vi: 'mở cửa' },
    { zh: '关门', py: 'guānmén', vi: 'đóng cửa' },
  ],
  170: [
    { zh: '山阜', py: 'shānfù', vi: 'núi nhỏ' },
    { zh: '高阜', py: 'gāofù', vi: 'đồi cao' },
    { zh: '隆阜', py: 'lóngfù', vi: 'gò đất lớn' },
  ],
  173: [
    { zh: '雨水', py: 'yǔshuǐ', vi: 'nước mưa' },
    { zh: '下雨', py: 'xiàyǔ', vi: 'trời mưa' },
    { zh: '暴雨', py: 'bàoyǔ', vi: 'mưa bão' },
  ],
  181: [
    { zh: '书页', py: 'shūyè', vi: 'trang sách' },
    { zh: '页码', py: 'yèmǎ', vi: 'số trang' },
    { zh: '扉页', py: 'fēiyè', vi: 'trang bìa' },
  ],
  184: [
    { zh: '食物', py: 'shíwù', vi: 'thức ăn' },
    { zh: '餐食', py: 'cānshí', vi: 'bữa ăn' },
    { zh: '饱食', py: 'bǎoshí', vi: 'ăn no' },
  ],
  187: [
    { zh: '马匹', py: 'mǎpǐ', vi: 'đàn ngựa' },
    { zh: '马上', py: 'mǎshàng', vi: 'lập tức' },
    { zh: '马车', py: 'mǎchē', vi: 'xe ngựa' },
  ],
  195: [
    { zh: '鱼儿', py: 'yúer', vi: 'cá nhỏ' },
    { zh: '鱼塘', py: 'yútáng', vi: 'ao cá' },
    { zh: '捕鱼', py: 'bǔyú', vi: 'bắt cá' },
  ],
  196: [
    { zh: '飞鸟', py: 'fēiniǎo', vi: 'chim bay' },
    { zh: '鸟巢', py: 'niǎocháo', vi: 'tổ chim' },
    { zh: '鸣鸟', py: 'míngniǎo', vi: 'chim hót' },
  ],
};
