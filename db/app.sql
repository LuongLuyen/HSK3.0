-- Dump dữ liệu HSK (bộ thủ, từ vựng, phát âm, ngữ pháp, tài liệu)
-- Nguồn: C:\OpenSrc\hoc-viet-chu-han-nest\data\app.db
PRAGMA foreign_keys=OFF;
BEGIN TRANSACTION;
CREATE TABLE radicals (
  id INTEGER PRIMARY KEY, zh TEXT NOT NULL, alt TEXT, py TEXT, hv TEXT, vi TEXT, strokes INTEGER
, name TEXT, emoji TEXT);
INSERT INTO radicals (id,zh,alt,py,hv,vi,strokes,name,emoji) VALUES (1,'一',NULL,'yī','nhất','một',1,NULL,NULL);
INSERT INTO radicals (id,zh,alt,py,hv,vi,strokes,name,emoji) VALUES (2,'丨',NULL,'gǔn','cổn','nét sổ',1,NULL,NULL);
INSERT INTO radicals (id,zh,alt,py,hv,vi,strokes,name,emoji) VALUES (3,'丶',NULL,'zhǔ','chủ','điểm, chấm',1,NULL,NULL);
INSERT INTO radicals (id,zh,alt,py,hv,vi,strokes,name,emoji) VALUES (4,'丿',NULL,'piě','phiệt','nét phẩy',1,NULL,NULL);
INSERT INTO radicals (id,zh,alt,py,hv,vi,strokes,name,emoji) VALUES (5,'乙',NULL,'yǐ','ất','can thứ hai; nét cong',1,NULL,NULL);
INSERT INTO radicals (id,zh,alt,py,hv,vi,strokes,name,emoji) VALUES (6,'亅',NULL,'jué','quyết','nét móc',1,NULL,NULL);
INSERT INTO radicals (id,zh,alt,py,hv,vi,strokes,name,emoji) VALUES (7,'二',NULL,'èr','nhị','hai',2,NULL,NULL);
INSERT INTO radicals (id,zh,alt,py,hv,vi,strokes,name,emoji) VALUES (8,'亠',NULL,'tóu','đầu','cái nắp, đầu',2,NULL,NULL);
INSERT INTO radicals (id,zh,alt,py,hv,vi,strokes,name,emoji) VALUES (9,'人','亻','rén','nhân','người',2,'bộ Nhân','🧍');
INSERT INTO radicals (id,zh,alt,py,hv,vi,strokes,name,emoji) VALUES (10,'儿',NULL,'ér','nhi','trẻ con, chân',2,NULL,NULL);
INSERT INTO radicals (id,zh,alt,py,hv,vi,strokes,name,emoji) VALUES (11,'入',NULL,'rù','nhập','vào',2,NULL,NULL);
INSERT INTO radicals (id,zh,alt,py,hv,vi,strokes,name,emoji) VALUES (12,'八',NULL,'bā','bát','tám',2,NULL,NULL);
INSERT INTO radicals (id,zh,alt,py,hv,vi,strokes,name,emoji) VALUES (13,'冂',NULL,'jiōng','quynh','khung, vây quanh',2,NULL,NULL);
INSERT INTO radicals (id,zh,alt,py,hv,vi,strokes,name,emoji) VALUES (14,'冖',NULL,'mì','mịch','khăn phủ, nắp',2,NULL,NULL);
INSERT INTO radicals (id,zh,alt,py,hv,vi,strokes,name,emoji) VALUES (15,'冫',NULL,'bīng','băng','nước đá',2,NULL,NULL);
INSERT INTO radicals (id,zh,alt,py,hv,vi,strokes,name,emoji) VALUES (16,'几',NULL,'jī','kỷ','cái ghế; mấy',2,NULL,NULL);
INSERT INTO radicals (id,zh,alt,py,hv,vi,strokes,name,emoji) VALUES (17,'凵',NULL,'kǎn','khảm','cái hố, miệng há',2,NULL,NULL);
INSERT INTO radicals (id,zh,alt,py,hv,vi,strokes,name,emoji) VALUES (18,'刀','刂','dāo','đao','con dao',2,'bộ Đao','🔪');
INSERT INTO radicals (id,zh,alt,py,hv,vi,strokes,name,emoji) VALUES (19,'力',NULL,'lì','lực','sức mạnh',2,'bộ Lực','💪');
INSERT INTO radicals (id,zh,alt,py,hv,vi,strokes,name,emoji) VALUES (20,'勹',NULL,'bāo','bao','bao bọc',2,NULL,NULL);
INSERT INTO radicals (id,zh,alt,py,hv,vi,strokes,name,emoji) VALUES (21,'匕',NULL,'bǐ','chủy','cái thìa',2,NULL,NULL);
INSERT INTO radicals (id,zh,alt,py,hv,vi,strokes,name,emoji) VALUES (22,'匚',NULL,'fāng','phương','cái hộp, tủ',2,NULL,NULL);
INSERT INTO radicals (id,zh,alt,py,hv,vi,strokes,name,emoji) VALUES (23,'匸',NULL,'xì','hệ','che đậy',2,NULL,NULL);
INSERT INTO radicals (id,zh,alt,py,hv,vi,strokes,name,emoji) VALUES (24,'十',NULL,'shí','thập','mười',2,NULL,NULL);
INSERT INTO radicals (id,zh,alt,py,hv,vi,strokes,name,emoji) VALUES (25,'卜',NULL,'bǔ','bốc','bói toán',2,NULL,NULL);
INSERT INTO radicals (id,zh,alt,py,hv,vi,strokes,name,emoji) VALUES (26,'卩',NULL,'jié','tiết','đốt tre, con dấu',2,NULL,NULL);
INSERT INTO radicals (id,zh,alt,py,hv,vi,strokes,name,emoji) VALUES (27,'厂',NULL,'hǎn','hán','sườn núi; xưởng',2,NULL,NULL);
INSERT INTO radicals (id,zh,alt,py,hv,vi,strokes,name,emoji) VALUES (28,'厶',NULL,'sī','tư','riêng tư',2,NULL,NULL);
INSERT INTO radicals (id,zh,alt,py,hv,vi,strokes,name,emoji) VALUES (29,'又',NULL,'yòu','hựu','lại, nữa',2,NULL,NULL);
INSERT INTO radicals (id,zh,alt,py,hv,vi,strokes,name,emoji) VALUES (30,'口',NULL,'kǒu','khẩu','miệng',3,'bộ Khẩu','👄');
INSERT INTO radicals (id,zh,alt,py,hv,vi,strokes,name,emoji) VALUES (31,'囗',NULL,'wéi','vi','vây quanh',3,'bộ Vi','🔲');
INSERT INTO radicals (id,zh,alt,py,hv,vi,strokes,name,emoji) VALUES (32,'土',NULL,'tǔ','thổ','đất',3,'bộ Thổ','🟫');
INSERT INTO radicals (id,zh,alt,py,hv,vi,strokes,name,emoji) VALUES (33,'士',NULL,'shì','sĩ','học trò, quan',3,NULL,NULL);
INSERT INTO radicals (id,zh,alt,py,hv,vi,strokes,name,emoji) VALUES (34,'夂',NULL,'zhǐ','truy','đến sau, đi chậm',3,NULL,NULL);
INSERT INTO radicals (id,zh,alt,py,hv,vi,strokes,name,emoji) VALUES (35,'夊',NULL,'suī','tuy','bước đi',3,NULL,NULL);
INSERT INTO radicals (id,zh,alt,py,hv,vi,strokes,name,emoji) VALUES (36,'夕',NULL,'xī','tịch','chiều tối',3,NULL,NULL);
INSERT INTO radicals (id,zh,alt,py,hv,vi,strokes,name,emoji) VALUES (37,'大',NULL,'dà','đại','to lớn',3,'bộ Đại','🐘');
INSERT INTO radicals (id,zh,alt,py,hv,vi,strokes,name,emoji) VALUES (38,'女',NULL,'nǚ','nữ','con gái, đàn bà',3,'bộ Nữ','👩');
INSERT INTO radicals (id,zh,alt,py,hv,vi,strokes,name,emoji) VALUES (39,'子',NULL,'zǐ','tử','con',3,NULL,NULL);
INSERT INTO radicals (id,zh,alt,py,hv,vi,strokes,name,emoji) VALUES (40,'宀',NULL,'mián','miên','mái nhà',3,'bộ Miên','🏠');
INSERT INTO radicals (id,zh,alt,py,hv,vi,strokes,name,emoji) VALUES (41,'寸',NULL,'cùn','thốn','tấc',3,NULL,NULL);
INSERT INTO radicals (id,zh,alt,py,hv,vi,strokes,name,emoji) VALUES (42,'小',NULL,'xiǎo','tiểu','nhỏ',3,NULL,NULL);
INSERT INTO radicals (id,zh,alt,py,hv,vi,strokes,name,emoji) VALUES (43,'尢',NULL,'yóu','vưu','què chân',3,NULL,NULL);
INSERT INTO radicals (id,zh,alt,py,hv,vi,strokes,name,emoji) VALUES (44,'尸',NULL,'shī','thi','xác chết, thân thể',3,NULL,NULL);
INSERT INTO radicals (id,zh,alt,py,hv,vi,strokes,name,emoji) VALUES (45,'屮',NULL,'chè','triệt','mầm non',3,NULL,NULL);
INSERT INTO radicals (id,zh,alt,py,hv,vi,strokes,name,emoji) VALUES (46,'山',NULL,'shān','sơn','núi',3,'bộ Sơn','⛰️');
INSERT INTO radicals (id,zh,alt,py,hv,vi,strokes,name,emoji) VALUES (47,'巛','川','chuān','xuyên','sông',3,NULL,NULL);
INSERT INTO radicals (id,zh,alt,py,hv,vi,strokes,name,emoji) VALUES (48,'工',NULL,'gōng','công','việc, thợ',3,NULL,NULL);
INSERT INTO radicals (id,zh,alt,py,hv,vi,strokes,name,emoji) VALUES (49,'己',NULL,'jǐ','kỷ','bản thân',3,NULL,NULL);
INSERT INTO radicals (id,zh,alt,py,hv,vi,strokes,name,emoji) VALUES (50,'巾',NULL,'jīn','cân','khăn',3,'bộ Cân','🧣');
INSERT INTO radicals (id,zh,alt,py,hv,vi,strokes,name,emoji) VALUES (51,'干',NULL,'gān','can','khô; làm',3,NULL,NULL);
INSERT INTO radicals (id,zh,alt,py,hv,vi,strokes,name,emoji) VALUES (52,'幺',NULL,'yāo','yêu','nhỏ, út',3,NULL,NULL);
INSERT INTO radicals (id,zh,alt,py,hv,vi,strokes,name,emoji) VALUES (53,'广',NULL,'guǎng','nghiễm','mái nhà rộng',3,'bộ Nghiễm','🏛️');
INSERT INTO radicals (id,zh,alt,py,hv,vi,strokes,name,emoji) VALUES (54,'廴',NULL,'yǐn','dẫn','bước dài',3,NULL,NULL);
INSERT INTO radicals (id,zh,alt,py,hv,vi,strokes,name,emoji) VALUES (55,'廾',NULL,'gǒng','củng','chắp tay',3,NULL,NULL);
INSERT INTO radicals (id,zh,alt,py,hv,vi,strokes,name,emoji) VALUES (56,'弋',NULL,'yì','dặc','cái cọc',3,NULL,NULL);
INSERT INTO radicals (id,zh,alt,py,hv,vi,strokes,name,emoji) VALUES (57,'弓',NULL,'gōng','cung','cái cung',3,NULL,NULL);
INSERT INTO radicals (id,zh,alt,py,hv,vi,strokes,name,emoji) VALUES (58,'彐',NULL,'jì','ký','mõm, đầu (thú)',3,NULL,NULL);
INSERT INTO radicals (id,zh,alt,py,hv,vi,strokes,name,emoji) VALUES (59,'彡',NULL,'shān','sam','lông dài, râu',3,NULL,NULL);
INSERT INTO radicals (id,zh,alt,py,hv,vi,strokes,name,emoji) VALUES (60,'彳',NULL,'chì','xích','bước chân trái',3,'bộ Xích','🚶');
INSERT INTO radicals (id,zh,alt,py,hv,vi,strokes,name,emoji) VALUES (61,'心','忄','xīn','tâm','tim, lòng',4,'bộ Tâm','❤️');
INSERT INTO radicals (id,zh,alt,py,hv,vi,strokes,name,emoji) VALUES (62,'戈',NULL,'gē','qua','cái giáo',4,NULL,NULL);
INSERT INTO radicals (id,zh,alt,py,hv,vi,strokes,name,emoji) VALUES (63,'戶','户','hù','hộ','cửa',4,NULL,NULL);
INSERT INTO radicals (id,zh,alt,py,hv,vi,strokes,name,emoji) VALUES (64,'手','扌','shǒu','thủ','tay',4,'bộ Thủ','✋');
INSERT INTO radicals (id,zh,alt,py,hv,vi,strokes,name,emoji) VALUES (65,'支',NULL,'zhī','chi','cành',4,NULL,NULL);
INSERT INTO radicals (id,zh,alt,py,hv,vi,strokes,name,emoji) VALUES (66,'攴','攵','pū','phộc','đánh khẽ',4,'bộ Phộc','✊');
INSERT INTO radicals (id,zh,alt,py,hv,vi,strokes,name,emoji) VALUES (67,'文',NULL,'wén','văn','văn, chữ',4,NULL,NULL);
INSERT INTO radicals (id,zh,alt,py,hv,vi,strokes,name,emoji) VALUES (68,'斗',NULL,'dǒu','đấu','cái đấu (đong)',4,NULL,NULL);
INSERT INTO radicals (id,zh,alt,py,hv,vi,strokes,name,emoji) VALUES (69,'斤',NULL,'jīn','cân','cái rìu; cân',4,NULL,NULL);
INSERT INTO radicals (id,zh,alt,py,hv,vi,strokes,name,emoji) VALUES (70,'方',NULL,'fāng','phương','vuông, phía',4,NULL,NULL);
INSERT INTO radicals (id,zh,alt,py,hv,vi,strokes,name,emoji) VALUES (71,'无',NULL,'wú','vô','không',4,NULL,NULL);
INSERT INTO radicals (id,zh,alt,py,hv,vi,strokes,name,emoji) VALUES (72,'日',NULL,'rì','nhật','mặt trời, ngày',4,'bộ Nhật','☀️');
INSERT INTO radicals (id,zh,alt,py,hv,vi,strokes,name,emoji) VALUES (73,'曰',NULL,'yuē','viết','nói rằng',4,NULL,NULL);
INSERT INTO radicals (id,zh,alt,py,hv,vi,strokes,name,emoji) VALUES (74,'月',NULL,'yuè','nguyệt','mặt trăng, tháng',4,NULL,NULL);
INSERT INTO radicals (id,zh,alt,py,hv,vi,strokes,name,emoji) VALUES (75,'木',NULL,'mù','mộc','cây, gỗ',4,'bộ Mộc','🌳');
INSERT INTO radicals (id,zh,alt,py,hv,vi,strokes,name,emoji) VALUES (76,'欠',NULL,'qiàn','khiếm','ngáp; thiếu',4,NULL,NULL);
INSERT INTO radicals (id,zh,alt,py,hv,vi,strokes,name,emoji) VALUES (77,'止',NULL,'zhǐ','chỉ','dừng lại',4,NULL,NULL);
INSERT INTO radicals (id,zh,alt,py,hv,vi,strokes,name,emoji) VALUES (78,'歹',NULL,'dǎi','đãi','xấu, chết chóc',4,NULL,NULL);
INSERT INTO radicals (id,zh,alt,py,hv,vi,strokes,name,emoji) VALUES (79,'殳',NULL,'shū','thù','cái giáo; đánh',4,NULL,NULL);
INSERT INTO radicals (id,zh,alt,py,hv,vi,strokes,name,emoji) VALUES (80,'毋',NULL,'wú','vô','chớ, đừng',4,NULL,NULL);
INSERT INTO radicals (id,zh,alt,py,hv,vi,strokes,name,emoji) VALUES (81,'比',NULL,'bǐ','tỷ','so sánh',4,NULL,NULL);
INSERT INTO radicals (id,zh,alt,py,hv,vi,strokes,name,emoji) VALUES (82,'毛',NULL,'máo','mao','lông',4,NULL,NULL);
INSERT INTO radicals (id,zh,alt,py,hv,vi,strokes,name,emoji) VALUES (83,'氏',NULL,'shì','thị','họ',4,NULL,NULL);
INSERT INTO radicals (id,zh,alt,py,hv,vi,strokes,name,emoji) VALUES (84,'气',NULL,'qì','khí','hơi, khí',4,NULL,NULL);
INSERT INTO radicals (id,zh,alt,py,hv,vi,strokes,name,emoji) VALUES (85,'水','氵','shuǐ','thủy','nước',4,'bộ Thủy','💧');
INSERT INTO radicals (id,zh,alt,py,hv,vi,strokes,name,emoji) VALUES (86,'火','灬','huǒ','hỏa','lửa',4,'bộ Hỏa','🔥');
INSERT INTO radicals (id,zh,alt,py,hv,vi,strokes,name,emoji) VALUES (87,'爪',NULL,'zhǎo','trảo','móng vuốt',4,NULL,NULL);
INSERT INTO radicals (id,zh,alt,py,hv,vi,strokes,name,emoji) VALUES (88,'父',NULL,'fù','phụ','cha',4,NULL,NULL);
INSERT INTO radicals (id,zh,alt,py,hv,vi,strokes,name,emoji) VALUES (89,'爻',NULL,'yáo','hào','hào (quẻ dịch)',4,NULL,NULL);
INSERT INTO radicals (id,zh,alt,py,hv,vi,strokes,name,emoji) VALUES (90,'爿',NULL,'qiáng','tường','tấm ván, một nửa',4,NULL,NULL);
INSERT INTO radicals (id,zh,alt,py,hv,vi,strokes,name,emoji) VALUES (91,'片',NULL,'piàn','phiến','mảnh, tấm',4,NULL,NULL);
INSERT INTO radicals (id,zh,alt,py,hv,vi,strokes,name,emoji) VALUES (92,'牙',NULL,'yá','nha','răng',4,NULL,NULL);
INSERT INTO radicals (id,zh,alt,py,hv,vi,strokes,name,emoji) VALUES (93,'牛','牜','niú','ngưu','trâu, bò',4,'bộ Ngưu','🐂');
INSERT INTO radicals (id,zh,alt,py,hv,vi,strokes,name,emoji) VALUES (94,'犬','犭','quǎn','khuyển','chó',4,'bộ Khuyển','🐕');
INSERT INTO radicals (id,zh,alt,py,hv,vi,strokes,name,emoji) VALUES (95,'玄',NULL,'xuán','huyền','đen huyền, sâu xa',5,NULL,NULL);
INSERT INTO radicals (id,zh,alt,py,hv,vi,strokes,name,emoji) VALUES (96,'玉','王','yù','ngọc','ngọc',5,'bộ Ngọc','💎');
INSERT INTO radicals (id,zh,alt,py,hv,vi,strokes,name,emoji) VALUES (97,'瓜',NULL,'guā','qua','quả dưa',5,NULL,NULL);
INSERT INTO radicals (id,zh,alt,py,hv,vi,strokes,name,emoji) VALUES (98,'瓦',NULL,'wǎ','ngõa','ngói',5,NULL,NULL);
INSERT INTO radicals (id,zh,alt,py,hv,vi,strokes,name,emoji) VALUES (99,'甘',NULL,'gān','cam','ngọt',5,NULL,NULL);
INSERT INTO radicals (id,zh,alt,py,hv,vi,strokes,name,emoji) VALUES (100,'生',NULL,'shēng','sinh','sinh đẻ, sống',5,NULL,NULL);
INSERT INTO radicals (id,zh,alt,py,hv,vi,strokes,name,emoji) VALUES (101,'用',NULL,'yòng','dụng','dùng',5,NULL,NULL);
INSERT INTO radicals (id,zh,alt,py,hv,vi,strokes,name,emoji) VALUES (102,'田',NULL,'tián','điền','ruộng',5,'bộ Điền','🟩');
INSERT INTO radicals (id,zh,alt,py,hv,vi,strokes,name,emoji) VALUES (103,'疋',NULL,'pǐ','thất','tấm vải',5,NULL,NULL);
INSERT INTO radicals (id,zh,alt,py,hv,vi,strokes,name,emoji) VALUES (104,'疒',NULL,'nè','bệnh','bệnh tật',5,'bộ Bệnh','🤒');
INSERT INTO radicals (id,zh,alt,py,hv,vi,strokes,name,emoji) VALUES (105,'癶',NULL,'bō','bát','gạt chân, bước',5,NULL,NULL);
INSERT INTO radicals (id,zh,alt,py,hv,vi,strokes,name,emoji) VALUES (106,'白',NULL,'bái','bạch','trắng',5,NULL,NULL);
INSERT INTO radicals (id,zh,alt,py,hv,vi,strokes,name,emoji) VALUES (107,'皮',NULL,'pí','bì','da',5,NULL,NULL);
INSERT INTO radicals (id,zh,alt,py,hv,vi,strokes,name,emoji) VALUES (108,'皿',NULL,'mǐn','mãnh','bát đĩa',5,NULL,NULL);
INSERT INTO radicals (id,zh,alt,py,hv,vi,strokes,name,emoji) VALUES (109,'目',NULL,'mù','mục','mắt',5,'bộ Mục','👁️');
INSERT INTO radicals (id,zh,alt,py,hv,vi,strokes,name,emoji) VALUES (110,'矛',NULL,'máo','mâu','cái mâu',5,NULL,NULL);
INSERT INTO radicals (id,zh,alt,py,hv,vi,strokes,name,emoji) VALUES (111,'矢',NULL,'shǐ','thỉ','mũi tên',5,NULL,NULL);
INSERT INTO radicals (id,zh,alt,py,hv,vi,strokes,name,emoji) VALUES (112,'石',NULL,'shí','thạch','đá',5,'bộ Thạch','🪨');
INSERT INTO radicals (id,zh,alt,py,hv,vi,strokes,name,emoji) VALUES (113,'示','礻','shì','thị','chỉ thị, cúng tế',5,NULL,NULL);
INSERT INTO radicals (id,zh,alt,py,hv,vi,strokes,name,emoji) VALUES (114,'禸',NULL,'róu','nhựu','vết chân thú',5,NULL,NULL);
INSERT INTO radicals (id,zh,alt,py,hv,vi,strokes,name,emoji) VALUES (115,'禾',NULL,'hé','hòa','lúa',5,'bộ Hòa','🌾');
INSERT INTO radicals (id,zh,alt,py,hv,vi,strokes,name,emoji) VALUES (116,'穴',NULL,'xué','huyệt','hang',5,NULL,NULL);
INSERT INTO radicals (id,zh,alt,py,hv,vi,strokes,name,emoji) VALUES (117,'立',NULL,'lì','lập','đứng',5,NULL,NULL);
INSERT INTO radicals (id,zh,alt,py,hv,vi,strokes,name,emoji) VALUES (118,'竹','⺮','zhú','trúc','tre',6,'bộ Trúc','🎋');
INSERT INTO radicals (id,zh,alt,py,hv,vi,strokes,name,emoji) VALUES (119,'米',NULL,'mǐ','mễ','gạo',6,'bộ Mễ','🍚');
INSERT INTO radicals (id,zh,alt,py,hv,vi,strokes,name,emoji) VALUES (120,'糸','糹 纟','mì','mịch','sợi tơ',6,'bộ Mịch','🧵');
INSERT INTO radicals (id,zh,alt,py,hv,vi,strokes,name,emoji) VALUES (121,'缶',NULL,'fǒu','phẫu','đồ sành',6,NULL,NULL);
INSERT INTO radicals (id,zh,alt,py,hv,vi,strokes,name,emoji) VALUES (122,'网','罒 ⺲','wǎng','võng','lưới',6,NULL,NULL);
INSERT INTO radicals (id,zh,alt,py,hv,vi,strokes,name,emoji) VALUES (123,'羊','⺶','yáng','dương','dê, cừu',6,NULL,NULL);
INSERT INTO radicals (id,zh,alt,py,hv,vi,strokes,name,emoji) VALUES (124,'羽',NULL,'yǔ','vũ','lông vũ',6,NULL,NULL);
INSERT INTO radicals (id,zh,alt,py,hv,vi,strokes,name,emoji) VALUES (125,'老','耂','lǎo','lão','già',6,NULL,NULL);
INSERT INTO radicals (id,zh,alt,py,hv,vi,strokes,name,emoji) VALUES (126,'而',NULL,'ér','nhi','mà, và',6,NULL,NULL);
INSERT INTO radicals (id,zh,alt,py,hv,vi,strokes,name,emoji) VALUES (127,'耒',NULL,'lěi','lỗi','cái cày',6,NULL,NULL);
INSERT INTO radicals (id,zh,alt,py,hv,vi,strokes,name,emoji) VALUES (128,'耳',NULL,'ěr','nhĩ','tai',6,NULL,NULL);
INSERT INTO radicals (id,zh,alt,py,hv,vi,strokes,name,emoji) VALUES (129,'聿','⺻','yù','duật','cái bút',6,NULL,NULL);
INSERT INTO radicals (id,zh,alt,py,hv,vi,strokes,name,emoji) VALUES (130,'肉','月','ròu','nhục','thịt',6,'bộ Nhục','🍖');
INSERT INTO radicals (id,zh,alt,py,hv,vi,strokes,name,emoji) VALUES (131,'臣',NULL,'chén','thần','bầy tôi',6,NULL,NULL);
INSERT INTO radicals (id,zh,alt,py,hv,vi,strokes,name,emoji) VALUES (132,'自',NULL,'zì','tự','tự mình',6,NULL,NULL);
INSERT INTO radicals (id,zh,alt,py,hv,vi,strokes,name,emoji) VALUES (133,'至',NULL,'zhì','chí','đến',6,NULL,NULL);
INSERT INTO radicals (id,zh,alt,py,hv,vi,strokes,name,emoji) VALUES (134,'臼',NULL,'jiù','cữu','cái cối',6,NULL,NULL);
INSERT INTO radicals (id,zh,alt,py,hv,vi,strokes,name,emoji) VALUES (135,'舌',NULL,'shé','thiệt','lưỡi',6,NULL,NULL);
INSERT INTO radicals (id,zh,alt,py,hv,vi,strokes,name,emoji) VALUES (136,'舛',NULL,'chuǎn','suyễn','trái ngược',6,NULL,NULL);
INSERT INTO radicals (id,zh,alt,py,hv,vi,strokes,name,emoji) VALUES (137,'舟',NULL,'zhōu','chu','thuyền',6,NULL,NULL);
INSERT INTO radicals (id,zh,alt,py,hv,vi,strokes,name,emoji) VALUES (138,'艮',NULL,'gèn','cấn','quẻ Cấn; dừng',6,NULL,NULL);
INSERT INTO radicals (id,zh,alt,py,hv,vi,strokes,name,emoji) VALUES (139,'色',NULL,'sè','sắc','màu sắc',6,NULL,NULL);
INSERT INTO radicals (id,zh,alt,py,hv,vi,strokes,name,emoji) VALUES (140,'艸','艹','cǎo','thảo','cỏ',6,'bộ Thảo','🌿');
INSERT INTO radicals (id,zh,alt,py,hv,vi,strokes,name,emoji) VALUES (141,'虍',NULL,'hū','hổ','vằn hổ',6,NULL,NULL);
INSERT INTO radicals (id,zh,alt,py,hv,vi,strokes,name,emoji) VALUES (142,'虫',NULL,'chóng','trùng','sâu bọ',6,'bộ Trùng','🐛');
INSERT INTO radicals (id,zh,alt,py,hv,vi,strokes,name,emoji) VALUES (143,'血',NULL,'xuè','huyết','máu',6,NULL,NULL);
INSERT INTO radicals (id,zh,alt,py,hv,vi,strokes,name,emoji) VALUES (144,'行',NULL,'xíng','hành','đi, làm',6,NULL,NULL);
INSERT INTO radicals (id,zh,alt,py,hv,vi,strokes,name,emoji) VALUES (145,'衣','衤','yī','y','áo',6,'bộ Y','👕');
INSERT INTO radicals (id,zh,alt,py,hv,vi,strokes,name,emoji) VALUES (146,'襾',NULL,'yà','á','che phủ',6,NULL,NULL);
INSERT INTO radicals (id,zh,alt,py,hv,vi,strokes,name,emoji) VALUES (147,'見','见','jiàn','kiến','trông thấy',7,NULL,NULL);
INSERT INTO radicals (id,zh,alt,py,hv,vi,strokes,name,emoji) VALUES (148,'角',NULL,'jiǎo','giác','sừng, góc',7,NULL,NULL);
INSERT INTO radicals (id,zh,alt,py,hv,vi,strokes,name,emoji) VALUES (149,'言','讠','yán','ngôn','lời nói',7,'bộ Ngôn','💬');
INSERT INTO radicals (id,zh,alt,py,hv,vi,strokes,name,emoji) VALUES (150,'谷',NULL,'gǔ','cốc','thung lũng; ngũ cốc',7,NULL,NULL);
INSERT INTO radicals (id,zh,alt,py,hv,vi,strokes,name,emoji) VALUES (151,'豆',NULL,'dòu','đậu','đậu',7,NULL,NULL);
INSERT INTO radicals (id,zh,alt,py,hv,vi,strokes,name,emoji) VALUES (152,'豕',NULL,'shǐ','thỉ','lợn',7,NULL,NULL);
INSERT INTO radicals (id,zh,alt,py,hv,vi,strokes,name,emoji) VALUES (153,'豸',NULL,'zhì','trãi','loài báo, thú dữ',7,NULL,NULL);
INSERT INTO radicals (id,zh,alt,py,hv,vi,strokes,name,emoji) VALUES (154,'貝','贝','bèi','bối','vỏ sò; tiền của',7,'bộ Bối','🐚');
INSERT INTO radicals (id,zh,alt,py,hv,vi,strokes,name,emoji) VALUES (155,'赤',NULL,'chì','xích','đỏ',7,NULL,NULL);
INSERT INTO radicals (id,zh,alt,py,hv,vi,strokes,name,emoji) VALUES (156,'走','赱','zǒu','tẩu','đi, chạy',7,NULL,NULL);
INSERT INTO radicals (id,zh,alt,py,hv,vi,strokes,name,emoji) VALUES (157,'足','⻊','zú','túc','chân',7,'bộ Túc','🦶');
INSERT INTO radicals (id,zh,alt,py,hv,vi,strokes,name,emoji) VALUES (158,'身',NULL,'shēn','thân','thân thể',7,NULL,NULL);
INSERT INTO radicals (id,zh,alt,py,hv,vi,strokes,name,emoji) VALUES (159,'車','车','chē','xa','xe',7,'bộ Xa','🚗');
INSERT INTO radicals (id,zh,alt,py,hv,vi,strokes,name,emoji) VALUES (160,'辛',NULL,'xīn','tân','cay; cực nhọc',7,NULL,NULL);
INSERT INTO radicals (id,zh,alt,py,hv,vi,strokes,name,emoji) VALUES (161,'辰',NULL,'chén','thìn','giờ Thìn; ngày giờ',7,NULL,NULL);
INSERT INTO radicals (id,zh,alt,py,hv,vi,strokes,name,emoji) VALUES (162,'辵','辶','chuò','sước','chợt đi chợt dừng (bộ sước)',7,'bộ Sước','👣');
INSERT INTO radicals (id,zh,alt,py,hv,vi,strokes,name,emoji) VALUES (163,'邑','阝 (phải)','yì','ấp','vùng đất, ấp',7,'bộ Ấp','🏘️');
INSERT INTO radicals (id,zh,alt,py,hv,vi,strokes,name,emoji) VALUES (164,'酉',NULL,'yǒu','dậu','giờ Dậu; rượu',7,NULL,NULL);
INSERT INTO radicals (id,zh,alt,py,hv,vi,strokes,name,emoji) VALUES (165,'釆',NULL,'biàn','biện','phân biệt',7,NULL,NULL);
INSERT INTO radicals (id,zh,alt,py,hv,vi,strokes,name,emoji) VALUES (166,'里',NULL,'lǐ','lý','dặm; làng',7,NULL,NULL);
INSERT INTO radicals (id,zh,alt,py,hv,vi,strokes,name,emoji) VALUES (167,'金','钅','jīn','kim','vàng, kim loại',8,'bộ Kim','🥇');
INSERT INTO radicals (id,zh,alt,py,hv,vi,strokes,name,emoji) VALUES (168,'長','长','cháng','trường','dài',8,NULL,NULL);
INSERT INTO radicals (id,zh,alt,py,hv,vi,strokes,name,emoji) VALUES (169,'門','门','mén','môn','cửa',8,'bộ Môn','🚪');
INSERT INTO radicals (id,zh,alt,py,hv,vi,strokes,name,emoji) VALUES (170,'阜','阝 (trái)','fù','phụ','gò đất',8,'bộ Phụ','🏔️');
INSERT INTO radicals (id,zh,alt,py,hv,vi,strokes,name,emoji) VALUES (171,'隶',NULL,'dài','đãi','kịp; đầy tớ',8,NULL,NULL);
INSERT INTO radicals (id,zh,alt,py,hv,vi,strokes,name,emoji) VALUES (172,'隹',NULL,'zhuī','truy','chim đuôi ngắn',8,NULL,NULL);
INSERT INTO radicals (id,zh,alt,py,hv,vi,strokes,name,emoji) VALUES (173,'雨',NULL,'yǔ','vũ','mưa',8,'bộ Vũ','🌧️');
INSERT INTO radicals (id,zh,alt,py,hv,vi,strokes,name,emoji) VALUES (174,'青',NULL,'qīng','thanh','xanh',8,NULL,NULL);
INSERT INTO radicals (id,zh,alt,py,hv,vi,strokes,name,emoji) VALUES (175,'非',NULL,'fēi','phi','sai, không',8,NULL,NULL);
INSERT INTO radicals (id,zh,alt,py,hv,vi,strokes,name,emoji) VALUES (176,'面',NULL,'miàn','diện','mặt',9,NULL,NULL);
INSERT INTO radicals (id,zh,alt,py,hv,vi,strokes,name,emoji) VALUES (177,'革',NULL,'gé','cách','da thuộc',9,NULL,NULL);
INSERT INTO radicals (id,zh,alt,py,hv,vi,strokes,name,emoji) VALUES (178,'韋','韦','wéi','vi','da thuộc',9,NULL,NULL);
INSERT INTO radicals (id,zh,alt,py,hv,vi,strokes,name,emoji) VALUES (179,'韭',NULL,'jiǔ','cửu','rau hẹ',9,NULL,NULL);
INSERT INTO radicals (id,zh,alt,py,hv,vi,strokes,name,emoji) VALUES (180,'音',NULL,'yīn','âm','âm thanh',9,NULL,NULL);
INSERT INTO radicals (id,zh,alt,py,hv,vi,strokes,name,emoji) VALUES (181,'頁','页','yè','hiệt','đầu; trang',9,'bộ Hiệt','📄');
INSERT INTO radicals (id,zh,alt,py,hv,vi,strokes,name,emoji) VALUES (182,'風','风','fēng','phong','gió',9,NULL,NULL);
INSERT INTO radicals (id,zh,alt,py,hv,vi,strokes,name,emoji) VALUES (183,'飛','飞','fēi','phi','bay',9,NULL,NULL);
INSERT INTO radicals (id,zh,alt,py,hv,vi,strokes,name,emoji) VALUES (184,'食','飠 饣','shí','thực','ăn',9,'bộ Thực','🍽️');
INSERT INTO radicals (id,zh,alt,py,hv,vi,strokes,name,emoji) VALUES (185,'首',NULL,'shǒu','thủ','đầu',9,NULL,NULL);
INSERT INTO radicals (id,zh,alt,py,hv,vi,strokes,name,emoji) VALUES (186,'香',NULL,'xiāng','hương','thơm',9,NULL,NULL);
INSERT INTO radicals (id,zh,alt,py,hv,vi,strokes,name,emoji) VALUES (187,'馬','马','mǎ','mã','ngựa',10,'bộ Mã','🐎');
INSERT INTO radicals (id,zh,alt,py,hv,vi,strokes,name,emoji) VALUES (188,'骨',NULL,'gǔ','cốt','xương',10,NULL,NULL);
INSERT INTO radicals (id,zh,alt,py,hv,vi,strokes,name,emoji) VALUES (189,'高',NULL,'gāo','cao','cao',10,NULL,NULL);
INSERT INTO radicals (id,zh,alt,py,hv,vi,strokes,name,emoji) VALUES (190,'髟',NULL,'biāo','tiêu','tóc dài',10,NULL,NULL);
INSERT INTO radicals (id,zh,alt,py,hv,vi,strokes,name,emoji) VALUES (191,'鬥','斗','dòu','đấu','đánh nhau',10,NULL,NULL);
INSERT INTO radicals (id,zh,alt,py,hv,vi,strokes,name,emoji) VALUES (192,'鬯',NULL,'chàng','sưởng','rượu nếp tế',10,NULL,NULL);
INSERT INTO radicals (id,zh,alt,py,hv,vi,strokes,name,emoji) VALUES (193,'鬲',NULL,'gé','cách','cái đỉnh, nồi',10,NULL,NULL);
INSERT INTO radicals (id,zh,alt,py,hv,vi,strokes,name,emoji) VALUES (194,'鬼',NULL,'guǐ','quỷ','ma quỷ',10,NULL,NULL);
INSERT INTO radicals (id,zh,alt,py,hv,vi,strokes,name,emoji) VALUES (195,'魚','鱼','yú','ngư','cá',11,'bộ Ngư','🐟');
INSERT INTO radicals (id,zh,alt,py,hv,vi,strokes,name,emoji) VALUES (196,'鳥','鸟','niǎo','điểu','chim',11,'bộ Điểu','🐦');
INSERT INTO radicals (id,zh,alt,py,hv,vi,strokes,name,emoji) VALUES (197,'鹵','卤','lǔ','lỗ','muối',11,NULL,NULL);
INSERT INTO radicals (id,zh,alt,py,hv,vi,strokes,name,emoji) VALUES (198,'鹿',NULL,'lù','lộc','hươu',11,NULL,NULL);
INSERT INTO radicals (id,zh,alt,py,hv,vi,strokes,name,emoji) VALUES (199,'麥','麦','mài','mạch','lúa mạch',11,NULL,NULL);
INSERT INTO radicals (id,zh,alt,py,hv,vi,strokes,name,emoji) VALUES (200,'麻',NULL,'má','ma','gai; tê',11,NULL,NULL);
INSERT INTO radicals (id,zh,alt,py,hv,vi,strokes,name,emoji) VALUES (201,'黃','黄','huáng','hoàng','vàng',12,NULL,NULL);
INSERT INTO radicals (id,zh,alt,py,hv,vi,strokes,name,emoji) VALUES (202,'黍',NULL,'shǔ','thử','lúa nếp',12,NULL,NULL);
INSERT INTO radicals (id,zh,alt,py,hv,vi,strokes,name,emoji) VALUES (203,'黑',NULL,'hēi','hắc','đen',12,NULL,NULL);
INSERT INTO radicals (id,zh,alt,py,hv,vi,strokes,name,emoji) VALUES (204,'黹',NULL,'zhǐ','chỉ','thêu',12,NULL,NULL);
INSERT INTO radicals (id,zh,alt,py,hv,vi,strokes,name,emoji) VALUES (205,'黽','黾','mǐn','mãnh','ếch; cố gắng',13,NULL,NULL);
INSERT INTO radicals (id,zh,alt,py,hv,vi,strokes,name,emoji) VALUES (206,'鼎',NULL,'dǐng','đỉnh','cái đỉnh',13,NULL,NULL);
INSERT INTO radicals (id,zh,alt,py,hv,vi,strokes,name,emoji) VALUES (207,'鼓',NULL,'gǔ','cổ','cái trống',13,NULL,NULL);
INSERT INTO radicals (id,zh,alt,py,hv,vi,strokes,name,emoji) VALUES (208,'鼠',NULL,'shǔ','thử','chuột',13,NULL,NULL);
INSERT INTO radicals (id,zh,alt,py,hv,vi,strokes,name,emoji) VALUES (209,'鼻',NULL,'bí','tỵ','mũi',14,NULL,NULL);
INSERT INTO radicals (id,zh,alt,py,hv,vi,strokes,name,emoji) VALUES (210,'齊','齐','qí','tề','đều, ngang bằng',14,NULL,NULL);
INSERT INTO radicals (id,zh,alt,py,hv,vi,strokes,name,emoji) VALUES (211,'齒','齿','chǐ','xỉ','răng',15,NULL,NULL);
INSERT INTO radicals (id,zh,alt,py,hv,vi,strokes,name,emoji) VALUES (212,'龍','龙','lóng','long','rồng',16,NULL,NULL);
INSERT INTO radicals (id,zh,alt,py,hv,vi,strokes,name,emoji) VALUES (213,'龜','龟','guī','quy','rùa',16,NULL,NULL);
INSERT INTO radicals (id,zh,alt,py,hv,vi,strokes,name,emoji) VALUES (214,'龠',NULL,'yuè','dược','ống sáo',17,NULL,NULL);
CREATE TABLE radical_examples (
  radical_id INTEGER NOT NULL, zh TEXT NOT NULL, py TEXT, vi TEXT
);
INSERT INTO radical_examples (radical_id,zh,py,vi) VALUES (9,'个人','gèrén','cá nhân');
INSERT INTO radical_examples (radical_id,zh,py,vi) VALUES (9,'从事','cóngshì','làm việc');
INSERT INTO radical_examples (radical_id,zh,py,vi) VALUES (9,'仁义','rényì','nhân nghĩa');
INSERT INTO radical_examples (radical_id,zh,py,vi) VALUES (18,'切','qiè','cắt');
INSERT INTO radical_examples (radical_id,zh,py,vi) VALUES (18,'前','qián','trước');
INSERT INTO radical_examples (radical_id,zh,py,vi) VALUES (18,'剁','duò','chặt nhỏ');
INSERT INTO radical_examples (radical_id,zh,py,vi) VALUES (19,'努力','nǔlì','nỗ lực');
INSERT INTO radical_examples (radical_id,zh,py,vi) VALUES (19,'动力','dònglì','động lực');
INSERT INTO radical_examples (radical_id,zh,py,vi) VALUES (19,'活力','huólì','sức sống');
INSERT INTO radical_examples (radical_id,zh,py,vi) VALUES (30,'出口','chūkǒu','cửa ra, xuất khẩu');
INSERT INTO radical_examples (radical_id,zh,py,vi) VALUES (30,'吞','tūn','nuốt');
INSERT INTO radical_examples (radical_id,zh,py,vi) VALUES (30,'咽','yàn','nuốt (nước bọt)');
INSERT INTO radical_examples (radical_id,zh,py,vi) VALUES (31,'围绕','wéirào','bao quanh');
INSERT INTO radical_examples (radical_id,zh,py,vi) VALUES (31,'国','guó','nước, quốc gia');
INSERT INTO radical_examples (radical_id,zh,py,vi) VALUES (31,'围观','wéiguān','vây quanh xem');
INSERT INTO radical_examples (radical_id,zh,py,vi) VALUES (32,'土地','tǔdì','đất đai');
INSERT INTO radical_examples (radical_id,zh,py,vi) VALUES (32,'埋','mái','chôn');
INSERT INTO radical_examples (radical_id,zh,py,vi) VALUES (32,'泥土','nítǔ','bùn đất');
INSERT INTO radical_examples (radical_id,zh,py,vi) VALUES (37,'大山','dàshān','núi lớn');
INSERT INTO radical_examples (radical_id,zh,py,vi) VALUES (37,'巨大','jùdà','khổng lồ');
INSERT INTO radical_examples (radical_id,zh,py,vi) VALUES (37,'大街','dàjiē','đại lộ');
INSERT INTO radical_examples (radical_id,zh,py,vi) VALUES (38,'女工','nǚgōng','nữ công nhân');
INSERT INTO radical_examples (radical_id,zh,py,vi) VALUES (38,'美女','měinǚ','người đẹp');
INSERT INTO radical_examples (radical_id,zh,py,vi) VALUES (38,'女子','nǚzǐ','con gái');
INSERT INTO radical_examples (radical_id,zh,py,vi) VALUES (40,'家','jiā','nhà, gia đình');
INSERT INTO radical_examples (radical_id,zh,py,vi) VALUES (40,'密室','mìshì','phòng kín');
INSERT INTO radical_examples (radical_id,zh,py,vi) VALUES (40,'守护','shǒuhù','bảo vệ');
INSERT INTO radical_examples (radical_id,zh,py,vi) VALUES (46,'高山','gāoshān','núi cao');
INSERT INTO radical_examples (radical_id,zh,py,vi) VALUES (46,'登山','dēngshān','leo núi');
INSERT INTO radical_examples (radical_id,zh,py,vi) VALUES (46,'山水','shānshuǐ','sơn thủy');
INSERT INTO radical_examples (radical_id,zh,py,vi) VALUES (50,'手巾','shǒujīn','khăn tay');
INSERT INTO radical_examples (radical_id,zh,py,vi) VALUES (50,'头巾','tóujīn','khăn trùm đầu');
INSERT INTO radical_examples (radical_id,zh,py,vi) VALUES (50,'红巾','hóngjīn','khăn đỏ');
INSERT INTO radical_examples (radical_id,zh,py,vi) VALUES (53,'广阔','guǎngkuò','rộng lớn');
INSERT INTO radical_examples (radical_id,zh,py,vi) VALUES (53,'广场','guǎngchǎng','quảng trường');
INSERT INTO radical_examples (radical_id,zh,py,vi) VALUES (53,'广告','guǎnggào','quảng cáo');
INSERT INTO radical_examples (radical_id,zh,py,vi) VALUES (60,'街道','jiēdào','con phố');
INSERT INTO radical_examples (radical_id,zh,py,vi) VALUES (60,'心路','xīnlù','lối đi trong tâm');
INSERT INTO radical_examples (radical_id,zh,py,vi) VALUES (60,'行动','xíngdòng','hành động');
INSERT INTO radical_examples (radical_id,zh,py,vi) VALUES (61,'心情','xīnqíng','tâm trạng');
INSERT INTO radical_examples (radical_id,zh,py,vi) VALUES (61,'忠心','zhōngxīn','trung thành');
INSERT INTO radical_examples (radical_id,zh,py,vi) VALUES (61,'心血','xīnxuè','tâm huyết');
INSERT INTO radical_examples (radical_id,zh,py,vi) VALUES (64,'手术','shǒushù','phẫu thuật');
INSERT INTO radical_examples (radical_id,zh,py,vi) VALUES (64,'高手','gāoshǒu','cao thủ');
INSERT INTO radical_examples (radical_id,zh,py,vi) VALUES (64,'接手','jiēshǒu','nhận lấy');
INSERT INTO radical_examples (radical_id,zh,py,vi) VALUES (66,'改变','gǎibiàn','thay đổi');
INSERT INTO radical_examples (radical_id,zh,py,vi) VALUES (66,'教改','jiàogǎi','cải cách giáo dục');
INSERT INTO radical_examples (radical_id,zh,py,vi) VALUES (66,'收入','shōurù','thu nhập');
INSERT INTO radical_examples (radical_id,zh,py,vi) VALUES (72,'日期','rìqī','ngày tháng');
INSERT INTO radical_examples (radical_id,zh,py,vi) VALUES (72,'明日','míngrì','ngày mai');
INSERT INTO radical_examples (radical_id,zh,py,vi) VALUES (72,'日常','rìcháng','thường nhật');
INSERT INTO radical_examples (radical_id,zh,py,vi) VALUES (75,'木头','mùtou','khúc gỗ');
INSERT INTO radical_examples (radical_id,zh,py,vi) VALUES (75,'树木','shùmù','cây cối');
INSERT INTO radical_examples (radical_id,zh,py,vi) VALUES (75,'木材','mùcái','vật liệu gỗ');
INSERT INTO radical_examples (radical_id,zh,py,vi) VALUES (85,'流水','liúshuǐ','dòng nước');
INSERT INTO radical_examples (radical_id,zh,py,vi) VALUES (85,'水流','shuǐliú','nước chảy');
INSERT INTO radical_examples (radical_id,zh,py,vi) VALUES (85,'河水','héshuǐ','nước sông');
INSERT INTO radical_examples (radical_id,zh,py,vi) VALUES (86,'火焰','huǒyàn','ngọn lửa');
INSERT INTO radical_examples (radical_id,zh,py,vi) VALUES (86,'灭火','mièhuǒ','dập lửa');
INSERT INTO radical_examples (radical_id,zh,py,vi) VALUES (86,'火灾','huǒzāi','hỏa hoạn');
INSERT INTO radical_examples (radical_id,zh,py,vi) VALUES (93,'水牛','shuǐniú','trâu nước');
INSERT INTO radical_examples (radical_id,zh,py,vi) VALUES (93,'牛群','niúqún','đàn trâu');
INSERT INTO radical_examples (radical_id,zh,py,vi) VALUES (93,'黄牛','huángniú','bò vàng');
INSERT INTO radical_examples (radical_id,zh,py,vi) VALUES (94,'犬只','quǎnzhī','đàn chó');
INSERT INTO radical_examples (radical_id,zh,py,vi) VALUES (94,'牧犬','mùquǎn','chó chăn cừu');
INSERT INTO radical_examples (radical_id,zh,py,vi) VALUES (94,'狗犬','gǒuquǎn','chó nhà');
INSERT INTO radical_examples (radical_id,zh,py,vi) VALUES (96,'玉佩','yùpèi','ngọc bội');
INSERT INTO radical_examples (radical_id,zh,py,vi) VALUES (96,'玉石','yùshí','đá quý');
INSERT INTO radical_examples (radical_id,zh,py,vi) VALUES (96,'翡翠','fěicuì','ngọc phỉ thúy');
INSERT INTO radical_examples (radical_id,zh,py,vi) VALUES (102,'田地','tiándì','ruộng đất');
INSERT INTO radical_examples (radical_id,zh,py,vi) VALUES (102,'稻田','dàotián','ruộng lúa');
INSERT INTO radical_examples (radical_id,zh,py,vi) VALUES (102,'果田','guǒtián','vườn trái cây');
INSERT INTO radical_examples (radical_id,zh,py,vi) VALUES (104,'生病','shēngbìng','mắc bệnh');
INSERT INTO radical_examples (radical_id,zh,py,vi) VALUES (104,'重病','zhòngbìng','bệnh nặng');
INSERT INTO radical_examples (radical_id,zh,py,vi) VALUES (104,'病床','bìngchuáng','giường bệnh');
INSERT INTO radical_examples (radical_id,zh,py,vi) VALUES (109,'眼目','yǎnmù','ánh mắt');
INSERT INTO radical_examples (radical_id,zh,py,vi) VALUES (109,'目光','mùguāng','tầm nhìn');
INSERT INTO radical_examples (radical_id,zh,py,vi) VALUES (109,'注目','zhùmù','chú ý');
INSERT INTO radical_examples (radical_id,zh,py,vi) VALUES (112,'石桥','shíqiáo','cầu đá');
INSERT INTO radical_examples (radical_id,zh,py,vi) VALUES (112,'石头','shítou','viên đá');
INSERT INTO radical_examples (radical_id,zh,py,vi) VALUES (112,'山石','shānshí','núi đá');
INSERT INTO radical_examples (radical_id,zh,py,vi) VALUES (115,'禾苗','hémiáo','mạ lúa');
INSERT INTO radical_examples (radical_id,zh,py,vi) VALUES (115,'禾田','hétián','ruộng lúa');
INSERT INTO radical_examples (radical_id,zh,py,vi) VALUES (115,'种禾','zhònghé','trồng lúa');
INSERT INTO radical_examples (radical_id,zh,py,vi) VALUES (118,'竹叶','zhúyè','lá trúc');
INSERT INTO radical_examples (radical_id,zh,py,vi) VALUES (118,'竹林','zhúlín','rừng trúc');
INSERT INTO radical_examples (radical_id,zh,py,vi) VALUES (118,'竹筒','zhútǒng','ống trúc');
INSERT INTO radical_examples (radical_id,zh,py,vi) VALUES (119,'米粉','mǐfěn','bột gạo');
INSERT INTO radical_examples (radical_id,zh,py,vi) VALUES (119,'糯米','nuòmǐ','gạo nếp');
INSERT INTO radical_examples (radical_id,zh,py,vi) VALUES (119,'米饭','mǐfàn','cơm trắng');
INSERT INTO radical_examples (radical_id,zh,py,vi) VALUES (120,'丝绸','sīchóu','lụa');
INSERT INTO radical_examples (radical_id,zh,py,vi) VALUES (120,'细丝','xìsī','tơ nhỏ');
INSERT INTO radical_examples (radical_id,zh,py,vi) VALUES (120,'毛线','máoxiàn','len');
INSERT INTO radical_examples (radical_id,zh,py,vi) VALUES (130,'肉类','ròulèi','loại thịt');
INSERT INTO radical_examples (radical_id,zh,py,vi) VALUES (130,'鸡肉','jīròu','thịt gà');
INSERT INTO radical_examples (radical_id,zh,py,vi) VALUES (130,'牛肉','niúròu','thịt bò');
INSERT INTO radical_examples (radical_id,zh,py,vi) VALUES (140,'青草','qīngcǎo','cỏ xanh');
INSERT INTO radical_examples (radical_id,zh,py,vi) VALUES (140,'草地','cǎodì','bãi cỏ');
INSERT INTO radical_examples (radical_id,zh,py,vi) VALUES (140,'野草','yěcǎo','cỏ dại');
INSERT INTO radical_examples (radical_id,zh,py,vi) VALUES (142,'昆虫','kūnchóng','côn trùng');
INSERT INTO radical_examples (radical_id,zh,py,vi) VALUES (142,'小虫','xiǎochóng','sâu nhỏ');
INSERT INTO radical_examples (radical_id,zh,py,vi) VALUES (142,'螳螂','tángláng','bọ ngựa');
INSERT INTO radical_examples (radical_id,zh,py,vi) VALUES (145,'衣物','yīwù','quần áo');
INSERT INTO radical_examples (radical_id,zh,py,vi) VALUES (145,'衣服','yīfu','trang phục');
INSERT INTO radical_examples (radical_id,zh,py,vi) VALUES (145,'外衣','wàiyī','áo khoác');
INSERT INTO radical_examples (radical_id,zh,py,vi) VALUES (149,'语言','yǔyán','ngôn ngữ');
INSERT INTO radical_examples (radical_id,zh,py,vi) VALUES (149,'言语','yányǔ','lời nói');
INSERT INTO radical_examples (radical_id,zh,py,vi) VALUES (149,'方言','fāngyán','tiếng địa phương');
INSERT INTO radical_examples (radical_id,zh,py,vi) VALUES (154,'贝壳','bèiké','vỏ sò');
INSERT INTO radical_examples (radical_id,zh,py,vi) VALUES (154,'贝类','bèilèi','loài sò');
INSERT INTO radical_examples (radical_id,zh,py,vi) VALUES (154,'宝贝','bǎobèi','bảo bối');
INSERT INTO radical_examples (radical_id,zh,py,vi) VALUES (157,'足够','zúgòu','đủ');
INSERT INTO radical_examples (radical_id,zh,py,vi) VALUES (157,'足部','zúbù','bàn chân');
INSERT INTO radical_examples (radical_id,zh,py,vi) VALUES (157,'不足','bùzú','không đủ');
INSERT INTO radical_examples (radical_id,zh,py,vi) VALUES (159,'自行车','zìxíngchē','xe đạp');
INSERT INTO radical_examples (radical_id,zh,py,vi) VALUES (159,'火车','huǒchē','xe lửa');
INSERT INTO radical_examples (radical_id,zh,py,vi) VALUES (159,'汽车','qìchē','ô tô');
INSERT INTO radical_examples (radical_id,zh,py,vi) VALUES (162,'过道','guòdào','hành lang');
INSERT INTO radical_examples (radical_id,zh,py,vi) VALUES (162,'迅速','xùnsù','nhanh chóng');
INSERT INTO radical_examples (radical_id,zh,py,vi) VALUES (162,'近路','jìnlù','đường gần');
INSERT INTO radical_examples (radical_id,zh,py,vi) VALUES (163,'邑居','yìjū','nơi ở');
INSERT INTO radical_examples (radical_id,zh,py,vi) VALUES (163,'邑城','yìchéng','thành ấp');
INSERT INTO radical_examples (radical_id,zh,py,vi) VALUES (163,'邻邑','línyì','vùng lân cận');
INSERT INTO radical_examples (radical_id,zh,py,vi) VALUES (167,'黄金','huángjīn','vàng');
INSERT INTO radical_examples (radical_id,zh,py,vi) VALUES (167,'金属','jīnshǔ','kim loại');
INSERT INTO radical_examples (radical_id,zh,py,vi) VALUES (167,'金银','jīnyín','vàng bạc');
INSERT INTO radical_examples (radical_id,zh,py,vi) VALUES (169,'门口','ménkǒu','cửa vào');
INSERT INTO radical_examples (radical_id,zh,py,vi) VALUES (169,'开门','kāimén','mở cửa');
INSERT INTO radical_examples (radical_id,zh,py,vi) VALUES (169,'关门','guānmén','đóng cửa');
INSERT INTO radical_examples (radical_id,zh,py,vi) VALUES (170,'山阜','shānfù','núi nhỏ');
INSERT INTO radical_examples (radical_id,zh,py,vi) VALUES (170,'高阜','gāofù','đồi cao');
INSERT INTO radical_examples (radical_id,zh,py,vi) VALUES (170,'隆阜','lóngfù','gò đất lớn');
INSERT INTO radical_examples (radical_id,zh,py,vi) VALUES (173,'雨水','yǔshuǐ','nước mưa');
INSERT INTO radical_examples (radical_id,zh,py,vi) VALUES (173,'下雨','xiàyǔ','trời mưa');
INSERT INTO radical_examples (radical_id,zh,py,vi) VALUES (173,'暴雨','bàoyǔ','mưa bão');
INSERT INTO radical_examples (radical_id,zh,py,vi) VALUES (181,'书页','shūyè','trang sách');
INSERT INTO radical_examples (radical_id,zh,py,vi) VALUES (181,'页码','yèmǎ','số trang');
INSERT INTO radical_examples (radical_id,zh,py,vi) VALUES (181,'扉页','fēiyè','trang bìa');
INSERT INTO radical_examples (radical_id,zh,py,vi) VALUES (184,'食物','shíwù','thức ăn');
INSERT INTO radical_examples (radical_id,zh,py,vi) VALUES (184,'餐食','cānshí','bữa ăn');
INSERT INTO radical_examples (radical_id,zh,py,vi) VALUES (184,'饱食','bǎoshí','ăn no');
INSERT INTO radical_examples (radical_id,zh,py,vi) VALUES (187,'马匹','mǎpǐ','đàn ngựa');
INSERT INTO radical_examples (radical_id,zh,py,vi) VALUES (187,'马上','mǎshàng','lập tức');
INSERT INTO radical_examples (radical_id,zh,py,vi) VALUES (187,'马车','mǎchē','xe ngựa');
INSERT INTO radical_examples (radical_id,zh,py,vi) VALUES (195,'鱼儿','yúer','cá nhỏ');
INSERT INTO radical_examples (radical_id,zh,py,vi) VALUES (195,'鱼塘','yútáng','ao cá');
INSERT INTO radical_examples (radical_id,zh,py,vi) VALUES (195,'捕鱼','bǔyú','bắt cá');
INSERT INTO radical_examples (radical_id,zh,py,vi) VALUES (196,'飞鸟','fēiniǎo','chim bay');
INSERT INTO radical_examples (radical_id,zh,py,vi) VALUES (196,'鸟巢','niǎocháo','tổ chim');
INSERT INTO radical_examples (radical_id,zh,py,vi) VALUES (196,'鸣鸟','míngniǎo','chim hót');
CREATE TABLE vocab (
  id INTEGER PRIMARY KEY AUTOINCREMENT, zh TEXT NOT NULL, py TEXT, en TEXT, vi TEXT,
  level INTEGER NOT NULL, pos TEXT
, code TEXT, stt INTEGER, tags TEXT);
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (22871,'爱','ài','to love','yêu',1,NULL,'HSK1-001',1,'["2.0 L1","3.0 L1"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (22872,'八','bā','eight','tám',1,NULL,'HSK1-002',2,'["2.0 L1","3.0 L1"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (22873,'爸爸','bà ba','(informal) father','bố, ba',1,NULL,'HSK1-003',3,'["2.0 L1","3.0 L1"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (22874,'吧','ba','(modal particle indicating polite suggestion)','nhé, nhỉ (trợ từ)',1,NULL,'HSK1-004',4,'["2.0 L2","3.0 L1"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (22875,'白天','bái tiān','daytime','ban ngày',1,NULL,'HSK1-005',5,'["3.0 L1"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (22876,'百','bǎi','hundred','trăm',1,NULL,'HSK1-006',6,'["2.0 L2","3.0 L1"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (22877,'半','bàn','half','một nửa',1,NULL,'HSK1-007',7,'["2.0 L3","3.0 L1"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (22878,'包子','bāo zi','steamed stuffed bun','bánh bao',1,NULL,'HSK1-008',8,'["2.0 L4","3.0 L1"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (22879,'杯子','bēi zi','cup','cái cốc, cái ly',1,NULL,'HSK1-009',9,'["2.0 L1","3.0 L1"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (22880,'本','běn','classifier for books, magazines and files','quyển, cái (lượng từ sách vở)',1,NULL,'HSK1-010',10,'["2.0 L1","3.0 L1","3.0 L5"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (22881,'边','biān','side','bên, phía',1,NULL,'HSK1-011',11,'["3.0 L1"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (22882,'便宜','pián yi','small advantages','rẻ',1,NULL,'HSK1-012',12,'["2.0 L2","3.0 L1"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (22883,'病','bìng','illness','bệnh, ốm',1,NULL,'HSK1-013',13,'["3.0 L1"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (22884,'不','bù','(negative prefix)','không',1,NULL,'HSK1-014',14,'["2.0 L1","3.0 L1"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (22885,'不客气','bú kè qi','you''re welcome','không có gì',1,NULL,'HSK1-015',15,'["2.0 L1","3.0 L1"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (22886,'不要','bù yào','don''t!; must not','đừng',1,NULL,'HSK1-016',16,'["3.0 L1"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (22887,'菜','cài','dish (type of food)','món ăn, rau',1,NULL,'HSK1-017',17,'["2.0 L1","3.0 L1"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (22888,'茶','chá','tea','trà',1,NULL,'HSK1-018',18,'["2.0 L1","3.0 L1"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (22889,'唱','chàng','to sing','hát',1,NULL,'HSK1-019',19,'["3.0 L1"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (22890,'超市','chāo shì','supermarket (abbr.)','siêu thị',1,NULL,'HSK1-020',20,'["2.0 L3","3.0 L1"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (22891,'车','chē','car','xe, ô tô',1,NULL,'HSK1-021',21,'["3.0 L1"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (22892,'吃','chī','to eat','ăn',1,NULL,'HSK1-022',22,'["2.0 L1","3.0 L1"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (22893,'出租车','chū zū chē','taxi','taxi',1,NULL,'HSK1-023',23,'["2.0 L1","3.0 L1"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (22894,'穿','chuān','to bore through','mặc (quần áo)',1,NULL,'HSK1-024',24,'["2.0 L2","3.0 L1"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (22895,'打电话','dǎ diàn huà','to make a telephone call','gọi điện thoại',1,NULL,'HSK1-025',25,'["2.0 L1","3.0 L1"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (22896,'大','dà','big; large','to, lớn',1,NULL,'HSK1-026',26,'["2.0 L1","3.0 L1"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (22897,'大家','dà jiā','authority','mọi người',1,NULL,'HSK1-027',27,'["2.0 L2","3.0 L1"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (22898,'大学','dà xué','university','đại học',1,NULL,'HSK1-028',28,'["3.0 L1"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (22899,'大学生','dà xué shēng','university student; college student','sinh viên đại học',1,NULL,'HSK1-029',29,'["3.0 L1"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (22900,'到','dào','to (a place)','đến',1,NULL,'HSK1-030',30,'["2.0 L2","3.0 L1"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (22901,'的','de','possessive and descriptive particle','của (trợ từ)',1,NULL,'HSK1-031',31,'["2.0 L1","3.0 L1"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (22902,'弟弟','dì di','younger brother','em trai',1,NULL,'HSK1-032',32,'["2.0 L2","3.0 L1"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (22903,'第','dì','(literary) grades in which successful candidates in the imperial examinations were placed','thứ (số thứ tự)',1,NULL,'HSK1-033',33,'["3.0 L1"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (22904,'点','diǎn','o''clock; a point; a little','giờ, điểm',1,NULL,'HSK1-034',34,'["2.0 L1","3.0 L1","3.0 L2"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (22905,'电话','diàn huà','telephone','điện thoại',1,NULL,'HSK1-035',35,'["3.0 L1"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (22906,'电脑','diàn nǎo','computer','máy tính',1,NULL,'HSK1-036',36,'["2.0 L1","3.0 L1"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (22907,'电视','diàn shì','television','ti-vi',1,NULL,'HSK1-037',37,'["2.0 L1","3.0 L1"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (22908,'电影','diàn yǐng','movie','phim',1,NULL,'HSK1-038',38,'["2.0 L1","3.0 L1"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (22909,'电影院','diàn yǐng yuàn','cinema; movie theater','rạp chiếu phim',1,NULL,'HSK1-039',39,'["3.0 L1"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (22910,'店','diàn','(bound form) shop; store','cửa hàng, tiệm',1,NULL,'HSK1-040',40,'["3.0 L1"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (22911,'东西','dōng xi','thing','đồ vật',1,NULL,'HSK1-041',41,'["2.0 L1","3.0 L1"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (22912,'都','dōu','all; both','đều',1,NULL,'HSK1-042',42,'["2.0 L1","3.0 L1"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (22913,'读','dú','to read','đọc',1,NULL,'HSK1-043',43,'["2.0 L1","3.0 L1"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (22914,'读书','dú shū','to study; to read (books)','đọc sách, đi học',1,NULL,'HSK1-044',44,'["3.0 L1"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (22915,'对','duì','right','đúng',1,NULL,'HSK1-045',45,'["2.0 L2","3.0 L1"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (22916,'对不起','duì bu qǐ','sorry; excuse me (apology)','xin lỗi',1,NULL,'HSK1-046',46,'["2.0 L1","3.0 L1"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (22917,'多','duō','many','nhiều',1,NULL,'HSK1-047',47,'["2.0 L1","3.0 L1"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (22918,'多少','duō shǎo','how many; how much','bao nhiêu',1,NULL,'HSK1-048',48,'["2.0 L1","3.0 L1"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (22919,'儿子','ér zi','son','con trai',1,NULL,'HSK1-049',49,'["2.0 L1","3.0 L1"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (22920,'二','èr','two','hai',1,NULL,'HSK1-050',50,'["2.0 L1","3.0 L1"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (22921,'饭','fàn','cooked rice','cơm, bữa ăn',1,NULL,'HSK1-051',51,'["3.0 L1"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (22922,'饭店','fàn diàn','restaurant','nhà hàng',1,NULL,'HSK1-052',52,'["2.0 L1","3.0 L1"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (22923,'房间','fáng jiān','room','phòng',1,NULL,'HSK1-053',53,'["2.0 L2","3.0 L1"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (22924,'飞机','fēi jī','airplane','máy bay',1,NULL,'HSK1-054',54,'["2.0 L1","3.0 L1"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (22925,'非常','fēi cháng','unusual','rất, vô cùng',1,NULL,'HSK1-055',55,'["2.0 L2","3.0 L1"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (22926,'分','fēn','to divide','phút',1,NULL,'HSK1-056',56,'["2.0 L3","3.0 L1"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (22927,'分钟','fēn zhōng','minute','phút',1,NULL,'HSK1-057',57,'["2.0 L1","3.0 L1"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (22928,'高兴','gāo xìng','happy','vui vẻ',1,NULL,'HSK1-058',58,'["2.0 L1","3.0 L1"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (22929,'哥哥','gē ge','older brother','anh trai',1,NULL,'HSK1-059',59,'["2.0 L2","3.0 L1"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (22930,'歌','gē','(bound form) to sing','bài hát, hát',1,NULL,'HSK1-060',60,'["3.0 L1"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (22931,'个','gè','general classifier for people and things','cái (lượng từ chung)',1,NULL,'HSK1-061',61,'["2.0 L1","3.0 L1"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (22932,'给','gěi','to','cho',1,NULL,'HSK1-062',62,'["2.0 L2","3.0 L1"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (22933,'工作','gōng zuò','work; job; to work','công việc, làm việc',1,NULL,'HSK1-063',63,'["2.0 L1","3.0 L1"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (22934,'公司','gōng sī','company; firm; corporation','công ty',1,NULL,'HSK1-064',64,'["2.0 L2","3.0 L1"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (22935,'狗','gǒu','dog','con chó',1,NULL,'HSK1-065',65,'["2.0 L1","3.0 L1"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (22936,'贵','guì','expensive','đắt',1,NULL,'HSK1-066',66,'["2.0 L2","3.0 L1"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (22937,'国','guó','country; nation; state','nước, quốc gia',1,NULL,'HSK1-067',67,'["3.0 L1"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (22938,'还','huán','still; also','còn, vẫn',1,NULL,'HSK1-068',68,'["3.0 L1","3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (22939,'孩子','hái zi','child','đứa trẻ',1,NULL,'HSK1-069',69,'["2.0 L2","3.0 L1"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (22940,'汉语','Hàn yǔ','Chinese language','tiếng Hán, tiếng Trung',1,NULL,'HSK1-070',70,'["2.0 L1","3.0 L1"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (22941,'汉字','hàn zì','Chinese character(s)','chữ Hán',1,NULL,'HSK1-071',71,'["3.0 L1"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (22942,'好','hǎo','good; well; okay','tốt, khỏe',1,NULL,'HSK1-072',72,'["2.0 L1","3.0 L1","3.0 L5"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (22943,'好吃','hǎo chī','tasty','ngon',1,NULL,'HSK1-073',73,'["2.0 L2","3.0 L1"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (22944,'好看','hǎo kàn','good-looking; nice-looking','đẹp, hay (nhìn)',1,NULL,'HSK1-074',74,'["3.0 L1"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (22945,'好听','hǎo tīng','pleasant to hear','hay (nghe)',1,NULL,'HSK1-075',75,'["3.0 L1"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (22946,'好玩儿','hǎo wán r','Dictionary gloss under review','vui, thú vị',1,NULL,'HSK1-076',76,'["3.0 L1"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (22947,'号','hào','day of a month','số, ngày (trong tháng)',1,NULL,'HSK1-077',77,'["2.0 L1","3.0 L1"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (22948,'喝','hē','to drink','uống',1,NULL,'HSK1-078',78,'["2.0 L1","3.0 L1"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (22949,'和','hé','and; with','và',1,NULL,'HSK1-079',79,'["2.0 L1","3.0 L1","3.0 L7-9"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (22950,'很','hěn','(adverb of degree)','rất',1,NULL,'HSK1-080',80,'["2.0 L1","3.0 L1"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (22951,'后','hòu','empress','sau, phía sau',1,NULL,'HSK1-081',81,'["3.0 L1"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (22952,'后面','hòu miàn','rear','phía sau',1,NULL,'HSK1-082',82,'["2.0 L1","3.0 L2"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (22953,'回','huí','to circle','về, quay lại',1,NULL,'HSK1-083',83,'["2.0 L1","3.0 L1"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (22954,'会','huì','can; know how to','biết, sẽ',1,NULL,'HSK1-084',84,'["2.0 L1","3.0 L1","3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (22955,'火车','huǒ chē','train','tàu hỏa',1,NULL,'HSK1-085',85,'["3.0 L1"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (22956,'鸡蛋','jī dàn','(chicken) egg','trứng gà',1,NULL,'HSK1-086',86,'["2.0 L2","3.0 L1"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (22957,'几','jǐ','how much','mấy',1,NULL,'HSK1-087',87,'["2.0 L1","3.0 L1"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (22958,'家','jiā','home; family','nhà, gia đình',1,NULL,'HSK1-088',88,'["2.0 L1","3.0 L1"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (22959,'家人','jiā rén','family member','người nhà',1,NULL,'HSK1-089',89,'["3.0 L1"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (22960,'见','jiàn','to see','gặp, thấy',1,NULL,'HSK1-090',90,'["3.0 L1"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (22961,'件','jiàn','item','chiếc (lượng từ quần áo)',1,NULL,'HSK1-091',91,'["2.0 L2","3.0 L1"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (22962,'饺子','jiǎo zi','dumpling','bánh chẻo',1,NULL,'HSK1-092',92,'["2.0 L4","3.0 L1"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (22963,'叫','jiào','to be called; to call','gọi là, kêu',1,NULL,'HSK1-093',93,'["2.0 L1","3.0 L1"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (22964,'姐姐','jiě jie','older sister','chị gái',1,NULL,'HSK1-094',94,'["2.0 L2","3.0 L1"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (22965,'今年','jīn nián','this year','năm nay',1,NULL,'HSK1-095',95,'["3.0 L1"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (22966,'今天','jīn tiān','today','hôm nay',1,NULL,'HSK1-096',96,'["2.0 L1","3.0 L1"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (22967,'九','jiǔ','nine','chín',1,NULL,'HSK1-097',97,'["2.0 L1","3.0 L1"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (22968,'觉得','jué de','to think','cảm thấy',1,NULL,'HSK1-098',98,'["2.0 L2","3.0 L1"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (22969,'开','kāi','to open; to turn on; to drive','mở',1,NULL,'HSK1-099',99,'["2.0 L1","3.0 L1"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (22970,'开车','kāi chē','to drive a car (or train etc)','lái xe',1,NULL,'HSK1-100',100,'["3.0 L1"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (22971,'看','kàn','to see; to watch; to read','xem, nhìn',1,NULL,'HSK1-101',101,'["2.0 L1","3.0 L1","3.0 L5"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (22972,'看病','kàn bìng','to visit a doctor','khám bệnh',1,NULL,'HSK1-102',102,'["3.0 L1"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (22973,'看见','kàn jiàn','to see','nhìn thấy',1,NULL,'HSK1-103',103,'["2.0 L1","3.0 L1"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (22974,'可以','kě yǐ','can','có thể',1,NULL,'HSK1-104',104,'["2.0 L2","3.0 L1"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (22975,'课','kè','subject','bài học, môn học',1,NULL,'HSK1-105',105,'["2.0 L2","3.0 L1"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (22976,'口','kǒu','mouth','miệng, cái (lượng từ người nhà)',1,NULL,'HSK1-106',106,'["2.0 L3","3.0 L1"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (22977,'块','kuài','lump (of earth)','tệ, miếng (lượng từ tiền)',1,NULL,'HSK1-107',107,'["2.0 L1","3.0 L1"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (22978,'来','lái','to come','đến, tới',1,NULL,'HSK1-108',108,'["2.0 L1","3.0 L1"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (22979,'老师','lǎo shī','teacher','giáo viên',1,NULL,'HSK1-109',109,'["2.0 L1","3.0 L1"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (22980,'了','le','particle marking completion or a new situation','rồi (trợ từ)',1,NULL,'HSK1-110',110,'["2.0 L1","3.0 L1"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (22981,'冷','lěng','cold','lạnh',1,NULL,'HSK1-111',111,'["2.0 L1","3.0 L1"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (22982,'里','lǐ','inside; in','trong, bên trong',1,NULL,'HSK1-112',112,'["2.0 L1","3.0 L1"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (22983,'两','liǎng','both','hai',1,NULL,'HSK1-113',113,'["2.0 L2","3.0 L1","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (22984,'零','líng','zero','số không',1,NULL,'HSK1-114',114,'["2.0 L2","3.0 L1"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (22985,'六','liù','six','sáu',1,NULL,'HSK1-115',115,'["2.0 L1","3.0 L1"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (22986,'妈妈','mā ma','mama','mẹ',1,NULL,'HSK1-116',116,'["2.0 L1","3.0 L1"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (22987,'吗','ma','(question tag)','không (trợ từ hỏi)',1,NULL,'HSK1-117',117,'["2.0 L1","3.0 L1"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (22988,'买','mǎi','to buy','mua',1,NULL,'HSK1-118',118,'["2.0 L1","3.0 L1"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (22989,'卖','mài','to sell','bán',1,NULL,'HSK1-119',119,'["2.0 L2","3.0 L1"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (22990,'忙','máng','busy','bận',1,NULL,'HSK1-120',120,'["2.0 L2","3.0 L1"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (22991,'猫','māo','cat','con mèo',1,NULL,'HSK1-121',121,'["2.0 L1","3.0 L1"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (22992,'没关系','méi guān xi','it''s okay; no problem; you''re welcome','không sao, không có gì',1,NULL,'HSK1-122',122,'["2.0 L1","3.0 L1"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (22993,'没事','méi shì','it''s not important','không sao',1,NULL,'HSK1-123',123,'["3.0 L1"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (22994,'没有','méi yǒu','haven''t','không có',1,NULL,'HSK1-124',124,'["2.0 L1","3.0 L1"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (22995,'妹妹','mèi mei','younger sister','em gái',1,NULL,'HSK1-125',125,'["2.0 L2","3.0 L1"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (22996,'们','men','plural marker for pronouns, and nouns referring to individuals','(hậu tố số nhiều)',1,NULL,'HSK1-126',126,'["3.0 L1"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (22997,'米饭','mǐ fàn','(cooked) rice','cơm',1,NULL,'HSK1-127',127,'["2.0 L1","3.0 L1"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (22998,'面包','miàn bāo','bread','bánh mì',1,NULL,'HSK1-128',128,'["2.0 L3","3.0 L1"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (22999,'面条儿','miàn tiáo r','Dictionary gloss under review','mì sợi',1,NULL,'HSK1-129',129,'["3.0 L1"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23000,'名字','míng zi','name (of a person or thing)','tên',1,NULL,'HSK1-130',130,'["2.0 L1","3.0 L1"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23001,'明年','míng nián','next year','năm sau',1,NULL,'HSK1-131',131,'["3.0 L1"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23002,'明天','míng tiān','tomorrow','ngày mai',1,NULL,'HSK1-132',132,'["2.0 L1","3.0 L1"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23003,'哪','nǎ','which','nào',1,NULL,'HSK1-133',133,'["2.0 L1","3.0 L1"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23004,'哪儿','nǎ r','where?','đâu, ở đâu',1,NULL,'HSK1-134',134,'["2.0 L1","3.0 L1"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23005,'哪个','nǎ ge','which','cái nào',1,NULL,'HSK1-135',135,'["3.0 L1"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23006,'哪里','nǎ lǐ','where?','ở đâu',1,NULL,'HSK1-136',136,'["3.0 L1"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23007,'哪些','nǎ xiē','which ones?','những cái nào',1,NULL,'HSK1-137',137,'["3.0 L1"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23008,'那','nà','that','kia, đó',1,NULL,'HSK1-138',138,'["2.0 L1","3.0 L1"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23009,'那边','nà bian','over there','bên kia',1,NULL,'HSK1-139',139,'["3.0 L1"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23010,'那儿','nà r','there','chỗ kia',1,NULL,'HSK1-140',140,'["3.0 L1"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23011,'那个','nà ge','that one','cái kia',1,NULL,'HSK1-141',141,'["3.0 L1"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23012,'那里','nà li','there; that place','chỗ kia',1,NULL,'HSK1-142',142,'["3.0 L1"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23013,'那些','nà xiē','those','những cái kia',1,NULL,'HSK1-143',143,'["3.0 L1"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23014,'男','nán','(bound form) male','nam',1,NULL,'HSK1-144',144,'["2.0 L2","3.0 L1"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23015,'男朋友','nán péng you','boyfriend','bạn trai',1,NULL,'HSK1-145',145,'["3.0 L1"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23016,'呢','ne','(question particle for subjects already mentioned)','chứ, còn (trợ từ)',1,NULL,'HSK1-146',146,'["2.0 L1","3.0 L1"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23017,'能','néng','can; to be able to','có thể',1,NULL,'HSK1-147',147,'["2.0 L1","3.0 L1"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23018,'你','nǐ','Dictionary gloss under review','bạn',1,NULL,'HSK1-148',148,'["2.0 L1","3.0 L1"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23019,'你好','nǐ hǎo','hello; hi','xin chào',1,NULL,'HSK1-149',149,'["3.0 L1"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23020,'你们','nǐ men','you (plural)','các bạn',1,NULL,'HSK1-150',150,'["3.0 L1"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23021,'年','nián','year','năm',1,NULL,'HSK1-151',151,'["2.0 L1","3.0 L1"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23022,'您','nín','Dictionary gloss under review','ngài (kính ngữ)',1,NULL,'HSK1-152',152,'["2.0 L2","3.0 L1"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23023,'牛奶','niú nǎi','cow''s milk','sữa bò',1,NULL,'HSK1-153',153,'["2.0 L2","3.0 L1"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23024,'女','nǚ','female','nữ',1,NULL,'HSK1-154',154,'["2.0 L2","3.0 L1"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23025,'女儿','nǚ ér','daughter','con gái',1,NULL,'HSK1-155',155,'["2.0 L1","3.0 L1"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23026,'女朋友','nǚ péng you','girlfriend','bạn gái',1,NULL,'HSK1-156',156,'["3.0 L1"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23027,'女士','nǚ shì','lady','quý bà, cô',1,NULL,'HSK1-157',157,'["2.0 L5","3.0 L1"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23028,'朋友','péng you','friend','bạn bè',1,NULL,'HSK1-158',158,'["2.0 L1","3.0 L1"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23029,'漂亮','piào liang','pretty','xinh đẹp',1,NULL,'HSK1-159',159,'["2.0 L1","3.0 L1"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23030,'苹果','píng guǒ','apple','quả táo',1,NULL,'HSK1-160',160,'["2.0 L1","3.0 L1"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23031,'七','qī','seven','bảy',1,NULL,'HSK1-161',161,'["2.0 L1","3.0 L1"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23032,'起床','qǐ chuáng','to get up','thức dậy',1,NULL,'HSK1-162',162,'["2.0 L2","3.0 L1"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23033,'千','qiān','thousand','nghìn',1,NULL,'HSK1-163',163,'["2.0 L2","3.0 L1"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23034,'前','qián','front','trước, phía trước',1,NULL,'HSK1-164',164,'["3.0 L1"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23035,'前面','qián miàn','ahead','phía trước',1,NULL,'HSK1-165',165,'["2.0 L1","3.0 L2"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23036,'钱','qián','coin','tiền',1,NULL,'HSK1-166',166,'["2.0 L1","3.0 L1"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23037,'请','qǐng','please; to invite','mời, xin',1,NULL,'HSK1-167',167,'["2.0 L1","3.0 L1"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23038,'请问','qǐng wèn','Excuse me, may I ask...?','xin hỏi',1,NULL,'HSK1-168',168,'["3.0 L1"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23039,'去','qù','to go','đi',1,NULL,'HSK1-169',169,'["2.0 L1","3.0 L1"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23040,'去年','qù nián','last year','năm ngoái',1,NULL,'HSK1-170',170,'["2.0 L2","3.0 L1"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23041,'热','rè','heat','nóng',1,NULL,'HSK1-171',171,'["2.0 L1","3.0 L1"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23042,'人','rén','person; people; human','người',1,NULL,'HSK1-172',172,'["2.0 L1","3.0 L1"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23043,'认识','rèn shi','to know','quen biết',1,NULL,'HSK1-173',173,'["2.0 L1","3.0 L1"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23044,'日','rì','sun','ngày, mặt trời',1,NULL,'HSK1-174',174,'["2.0 L2","3.0 L1"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23045,'三','sān','three','ba',1,NULL,'HSK1-175',175,'["2.0 L1","3.0 L1"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23046,'商店','shāng diàn','store','cửa hàng',1,NULL,'HSK1-176',176,'["2.0 L1","3.0 L1"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23047,'上','shàng','on; above; to attend','trên',1,NULL,'HSK1-177',177,'["2.0 L1","3.0 L1"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23048,'上班','shàng bān','to go to work','đi làm',1,NULL,'HSK1-178',178,'["2.0 L2","3.0 L1"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23049,'上课','shàng kè','to attend class; to have a lesson','vào học',1,NULL,'HSK1-179',179,'["3.0 L1"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23050,'上午','shàng wǔ','morning','buổi sáng',1,NULL,'HSK1-180',180,'["2.0 L1","3.0 L1"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23051,'上学','shàng xué','to go to school','đi học',1,NULL,'HSK1-181',181,'["3.0 L1"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23052,'少','shǎo','few','ít',1,NULL,'HSK1-182',182,'["2.0 L1","3.0 L1"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23053,'谁','shéi','who','ai',1,NULL,'HSK1-183',183,'["2.0 L1","3.0 L1"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23054,'什么','shén me','what','gì, cái gì',1,NULL,'HSK1-184',184,'["2.0 L1","3.0 L1"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23055,'生病','shēng bìng','to fall ill','bị ốm',1,NULL,'HSK1-185',185,'["2.0 L2","3.0 L1"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23056,'十','shí','ten','mười',1,NULL,'HSK1-186',186,'["2.0 L1","3.0 L1"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23057,'时候','shí hou','time','lúc, khi',1,NULL,'HSK1-187',187,'["2.0 L1","3.0 L1"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23058,'时间','shí jiān','time','thời gian',1,NULL,'HSK1-188',188,'["2.0 L2","3.0 L1"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23059,'事','shì','matter','việc',1,NULL,'HSK1-189',189,'["3.0 L1"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23060,'是','shì','to be','là',1,NULL,'HSK1-190',190,'["2.0 L1","3.0 L1"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23061,'手机','shǒu jī','cell phone','điện thoại di động',1,NULL,'HSK1-191',191,'["2.0 L2","3.0 L1"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23062,'书','shū','book','sách',1,NULL,'HSK1-192',192,'["2.0 L1","3.0 L1"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23063,'书店','shū diàn','bookstore','hiệu sách',1,NULL,'HSK1-193',193,'["3.0 L1"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23064,'水','shuǐ','water','nước',1,NULL,'HSK1-194',194,'["2.0 L1","3.0 L1"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23065,'水果','shuǐ guǒ','fruit','hoa quả',1,NULL,'HSK1-195',195,'["2.0 L1","3.0 L1"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23066,'睡','shuì','to sleep','ngủ',1,NULL,'HSK1-196',196,'["3.0 L1"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23067,'睡觉','shuì jiào','to go to bed','ngủ',1,NULL,'HSK1-197',197,'["2.0 L1","3.0 L1"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23068,'说','shuì','to speak; to say','nói',1,NULL,'HSK1-198',198,'["2.0 L1","3.0 L1"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23069,'说话','shuō huà','to speak','nói chuyện',1,NULL,'HSK1-199',199,'["2.0 L2","3.0 L1"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23070,'四','sì','four','bốn',1,NULL,'HSK1-200',200,'["2.0 L1","3.0 L1"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23071,'岁','suì','classifier for years (of age)','tuổi',1,NULL,'HSK1-201',201,'["2.0 L1","3.0 L1"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23072,'他','tā','he or him','anh ấy, ông ấy',1,NULL,'HSK1-202',202,'["2.0 L1","3.0 L1"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23073,'他们','tā men','they; them','họ',1,NULL,'HSK1-203',203,'["3.0 L1"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23074,'它','tā','it','nó (đồ vật)',1,NULL,'HSK1-204',204,'["2.0 L2","3.0 L1"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23075,'它们','tā men','they; them','chúng nó (đồ vật)',1,NULL,'HSK1-205',205,'["3.0 L1"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23076,'她','tā','she','cô ấy, bà ấy',1,NULL,'HSK1-206',206,'["2.0 L1","3.0 L1"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23077,'她们','tā men','they; them (females)','họ (nữ)',1,NULL,'HSK1-207',207,'["3.0 L1"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23078,'太','tài','highest','quá, lắm',1,NULL,'HSK1-208',208,'["2.0 L1","3.0 L1"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23079,'天','tiān','day','ngày, trời',1,NULL,'HSK1-209',209,'["3.0 L1"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23080,'天气','tiān qì','weather','thời tiết',1,NULL,'HSK1-210',210,'["2.0 L1","3.0 L1"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23081,'听','tīng','to listen; to hear','nghe',1,NULL,'HSK1-211',211,'["2.0 L1","3.0 L1"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23082,'听见','tīng jiàn','to hear (a sound reaching the ear)','nghe thấy',1,NULL,'HSK1-212',212,'["3.0 L1"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23083,'同学','tóng xué','(fellow) classmate','bạn học',1,NULL,'HSK1-213',213,'["2.0 L1","3.0 L1"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23084,'外','wài','outside','ngoài',1,NULL,'HSK1-214',214,'["2.0 L2","3.0 L1"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23085,'外边','wài bian','outside','bên ngoài',1,NULL,'HSK1-215',215,'["3.0 L1"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23086,'玩','wán','toy','chơi',1,NULL,'HSK1-216',216,'["2.0 L2","3.0 L1"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23087,'晚','wǎn','evening','tối, muộn',1,NULL,'HSK1-217',217,'["3.0 L1"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23088,'晚饭','wǎn fàn','evening meal','bữa tối',1,NULL,'HSK1-218',218,'["3.0 L1"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23089,'晚上','wǎn shang','in the evening','buổi tối',1,NULL,'HSK1-219',219,'["2.0 L2","3.0 L1"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23090,'喂','wèi','hello (interj., esp. on telephone)','a-lô (nghe điện thoại)',1,NULL,'HSK1-220',220,'["3.0 L1","3.0 L5"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23091,'问','wèn','to ask','hỏi',1,NULL,'HSK1-221',221,'["2.0 L2","3.0 L1"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23092,'问题','wèn tí','question','câu hỏi, vấn đề',1,NULL,'HSK1-222',222,'["2.0 L2","3.0 L1"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23093,'我','wǒ','I','tôi',1,NULL,'HSK1-223',223,'["2.0 L1","3.0 L1"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23094,'我们','wǒ men','we','chúng tôi',1,NULL,'HSK1-224',224,'["2.0 L1","3.0 L1"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23095,'五','wǔ','five','năm (số 5)',1,NULL,'HSK1-225',225,'["2.0 L1","3.0 L1"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23096,'午饭','wǔ fàn','lunch','bữa trưa',1,NULL,'HSK1-226',226,'["3.0 L1"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23097,'喜欢','xǐ huan','to like','thích',1,NULL,'HSK1-227',227,'["2.0 L1","3.0 L1"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23098,'下','xià','below; next; to go down','dưới, xuống',1,NULL,'HSK1-228',228,'["2.0 L1","3.0 L1"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23099,'下班','xià bān','to finish work; to get off work','tan làm',1,NULL,'HSK1-229',229,'["3.0 L1"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23100,'下课','xià kè','to finish class','tan học',1,NULL,'HSK1-230',230,'["3.0 L1"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23101,'下午','xià wǔ','afternoon','buổi chiều',1,NULL,'HSK1-231',231,'["2.0 L1","3.0 L1"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23102,'下雨','xià yǔ','to rain','trời mưa',1,NULL,'HSK1-232',232,'["2.0 L1","3.0 L1"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23103,'先生','xiān sheng','teacher','thầy, ngài',1,NULL,'HSK1-233',233,'["2.0 L1","3.0 L1"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23104,'现在','xiàn zài','now','bây giờ',1,NULL,'HSK1-234',234,'["2.0 L1","3.0 L1"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23105,'想','xiǎng','to want; to think','muốn, nhớ',1,NULL,'HSK1-235',235,'["2.0 L1","3.0 L1"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23106,'小','xiǎo','small','nhỏ',1,NULL,'HSK1-236',236,'["2.0 L1","3.0 L1"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23107,'小朋友','xiǎo péng yǒu','child; kid (used to refer to a child, or by an adult to address a child, or, in Taiwan, to refer to sb''s own child)','trẻ em',1,NULL,'HSK1-237',237,'["3.0 L1"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23108,'小时','xiǎo shí','hour','giờ đồng hồ',1,NULL,'HSK1-238',238,'["2.0 L2","3.0 L1"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23109,'小学','xiǎo xué','elementary school; primary school','trường tiểu học',1,NULL,'HSK1-239',239,'["3.0 L1"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23110,'小学生','xiǎo xué shēng','primary school student','học sinh tiểu học',1,NULL,'HSK1-240',240,'["3.0 L1"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23111,'些','xiē','some; a few','một vài',1,NULL,'HSK1-241',241,'["2.0 L1","3.0 L1"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23112,'写','xiě','to write','viết',1,NULL,'HSK1-242',242,'["2.0 L1","3.0 L1"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23113,'谢谢','xiè xie','thank you','cảm ơn',1,NULL,'HSK1-243',243,'["2.0 L1","3.0 L1"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23114,'新','xīn','new','mới',1,NULL,'HSK1-244',244,'["2.0 L2","3.0 L1"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23115,'星期','xīng qī','week','tuần',1,NULL,'HSK1-245',245,'["2.0 L1","3.0 L1"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23116,'星期日','Xīng qī rì','Sunday','chủ nhật',1,NULL,'HSK1-246',246,'["3.0 L1"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23117,'星期天','Xīng qī tiān','Sunday','chủ nhật',1,NULL,'HSK1-247',247,'["3.0 L1"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23118,'休息','xiū xi','rest','nghỉ ngơi',1,NULL,'HSK1-248',248,'["2.0 L2","3.0 L1"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23119,'学','xué','to learn','học',1,NULL,'HSK1-249',249,'["3.0 L1"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23120,'学生','xué sheng','student','học sinh',1,NULL,'HSK1-250',250,'["2.0 L1","3.0 L1"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23121,'学习','xué xí','to study; to learn','học tập',1,NULL,'HSK1-251',251,'["2.0 L1","3.0 L1"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23122,'学校','xué xiào','school','trường học',1,NULL,'HSK1-252',252,'["2.0 L1","3.0 L1"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23123,'雪','xuě','snow','tuyết',1,NULL,'HSK1-253',253,'["2.0 L2","3.0 L1"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23124,'要','yào','important','muốn, cần',1,NULL,'HSK1-254',254,'["2.0 L2","3.0 L1"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23125,'也','yě','also','cũng',1,NULL,'HSK1-255',255,'["2.0 L2","3.0 L1"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23126,'一','yī','one','một',1,NULL,'HSK1-256',256,'["2.0 L1","3.0 L1"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23127,'一半','yī bàn','half','một nửa',1,NULL,'HSK1-257',257,'["3.0 L1"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23128,'一点儿','yī diǎn r','Dictionary gloss under review','một chút',1,NULL,'HSK1-258',258,'["2.0 L1","3.0 L1"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23129,'一下','yī xià','(after a verb) a bit; a little (indicating brief duration, or softening the tone, or suggesting giving sth a try)','một chút',1,NULL,'HSK1-259',259,'["2.0 L2","3.0 L1"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23130,'一些','yī xiē','some; a few; a little; (following an adjective) slightly ...er','một vài, một ít',1,NULL,'HSK1-260',260,'["3.0 L1"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23131,'衣服','yī fu','clothes','quần áo',1,NULL,'HSK1-261',261,'["2.0 L1","3.0 L1"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23132,'医生','yī shēng','doctor; physician','bác sĩ',1,NULL,'HSK1-262',262,'["2.0 L1","3.0 L1"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23133,'医院','yī yuàn','hospital','bệnh viện',1,NULL,'HSK1-263',263,'["2.0 L1","3.0 L1"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23134,'椅子','yǐ zi','chair','ghế',1,NULL,'HSK1-264',264,'["2.0 L1","3.0 L1"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23135,'有','yǒu','to have; there is','có',1,NULL,'HSK1-265',265,'["2.0 L1","3.0 L1"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23136,'有的','yǒu de','(there are) some (who are...)','có một số',1,NULL,'HSK1-266',266,'["3.0 L1"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23137,'有点儿','yǒu diǎn r','slightly','hơi, có chút',1,NULL,'HSK1-267',267,'["3.0 L1"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23138,'有些','yǒu xiē','some','một số',1,NULL,'HSK1-268',268,'["3.0 L1"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23139,'雨','yǔ','rain','mưa',1,NULL,'HSK1-269',269,'["3.0 L1"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23140,'元','yuán','first','đồng, yuan (tiền TQ)',1,NULL,'HSK1-270',270,'["2.0 L3","3.0 L1"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23141,'月','yuè','moon','tháng, mặt trăng',1,NULL,'HSK1-271',271,'["2.0 L1","3.0 L1"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23142,'再','zài','again','lại, nữa',1,NULL,'HSK1-272',272,'["2.0 L2","3.0 L1"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23143,'再见','zài jiàn','goodbye; see you again','tạm biệt',1,NULL,'HSK1-273',273,'["2.0 L1","3.0 L1"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23144,'在','zài','at; in; to be doing','ở, tại',1,NULL,'HSK1-274',274,'["2.0 L1","3.0 L1"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23145,'早','zǎo','early','sớm',1,NULL,'HSK1-275',275,'["3.0 L1"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23146,'早饭','zǎo fàn','breakfast','bữa sáng',1,NULL,'HSK1-276',276,'["3.0 L1"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23147,'早上','zǎo shang','early morning','buổi sáng',1,NULL,'HSK1-277',277,'["2.0 L2","3.0 L1"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23148,'怎么','zěn me','how?','thế nào',1,NULL,'HSK1-278',278,'["2.0 L1","3.0 L1"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23149,'怎么样','zěn me yàng','how?','thế nào',1,NULL,'HSK1-279',279,'["2.0 L1","3.0 L1"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23150,'找','zhǎo','to try to find','tìm',1,NULL,'HSK1-280',280,'["2.0 L2","3.0 L1"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23151,'这','zhè','this','đây, này',1,NULL,'HSK1-281',281,'["2.0 L1","3.0 L1"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23152,'这边','zhè biān','this side','bên này',1,NULL,'HSK1-282',282,'["3.0 L1"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23153,'这儿','zhè r','here','chỗ này',1,NULL,'HSK1-283',283,'["3.0 L1"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23154,'这个','zhè ge','(pronoun) this','cái này',1,NULL,'HSK1-284',284,'["3.0 L1"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23155,'这里','zhè lǐ','here','chỗ này',1,NULL,'HSK1-285',285,'["3.0 L1"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23156,'这些','zhè xiē','these','những cái này',1,NULL,'HSK1-286',286,'["3.0 L1"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23157,'真','zhēn','really','thật',1,NULL,'HSK1-287',287,'["2.0 L2","3.0 L1"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23158,'正在','zhèng zài','in the process of (doing something or happening)','đang',1,NULL,'HSK1-288',288,'["2.0 L2","3.0 L1"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23159,'知道','zhī dào','to know','biết',1,NULL,'HSK1-289',289,'["2.0 L2","3.0 L1"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23160,'只','zhī','classifier for birds and certain animals, one of a pair, some utensils, vessels etc','chỉ (phó từ), con (lượng từ)',1,NULL,'HSK1-290',290,'["3.0 L1","3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23161,'中国','Zhōng guó','China','Trung Quốc',1,NULL,'HSK1-291',291,'["2.0 L1","3.0 L1"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23162,'中文','Zhōng wén','Chinese language (written or spoken)','tiếng Trung',1,NULL,'HSK1-292',292,'["2.0 L3","3.0 L1"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23163,'中午','zhōng wǔ','noon','buổi trưa',1,NULL,'HSK1-293',293,'["2.0 L1","3.0 L1"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23164,'中学','zhōng xué','middle school','trường cấp 2',1,NULL,'HSK1-294',294,'["3.0 L1"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23165,'中学生','zhōng xué shēng','middle-school student','học sinh cấp 2',1,NULL,'HSK1-295',295,'["3.0 L1"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23166,'住','zhù','to live','ở, sống',1,NULL,'HSK1-296',296,'["2.0 L1","3.0 L1"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23167,'桌子','zhuō zi','table','cái bàn',1,NULL,'HSK1-297',297,'["2.0 L1","3.0 L1"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23168,'字','zì','letter','chữ',1,NULL,'HSK1-298',298,'["2.0 L1","3.0 L1"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23169,'昨天','zuó tiān','yesterday','hôm qua',1,NULL,'HSK1-299',299,'["2.0 L1","3.0 L1"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23170,'坐','zuò','to sit; to take transport','ngồi',1,NULL,'HSK1-300',300,'["2.0 L1","3.0 L1"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23171,'做','zuò','to do','làm',1,NULL,'HSK1-301',301,'["2.0 L1","3.0 L1"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23172,'做饭','zuò fàn','to prepare a meal','nấu cơm',1,NULL,'HSK1-302',302,'["3.0 L1"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23173,'啊','a','modal particle ending sentence, showing affirmation, approval, or consent','(cảm thán) à, a',2,NULL,'HSK2-001',303,'["2.0 L3","3.0 L2","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23174,'爱好','ài hào','to like','sở thích',2,NULL,'HSK2-002',304,'["2.0 L3","3.0 L2"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23175,'白色','bái sè','white','trắng',2,NULL,'HSK2-003',305,'["3.0 L2"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23176,'班','bān','team','lớp học',2,NULL,'HSK2-004',306,'["2.0 L3","3.0 L2"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23177,'帮','bāng','to help','để giúp đỡ',2,NULL,'HSK2-005',307,'["3.0 L2"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23178,'帮忙','bāng máng','to help','để giúp đỡ',2,NULL,'HSK2-006',308,'["2.0 L3","3.0 L2"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23179,'帮助','bāng zhù','assistance','giúp đỡ',2,NULL,'HSK2-007',309,'["2.0 L2","3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23180,'包','bāo','to cover','túi, gói',2,NULL,'HSK2-008',310,'["2.0 L3","3.0 L2"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23181,'报纸','bào zhǐ','newspaper','báo (giấy)',2,NULL,'HSK2-009',311,'["2.0 L2","3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23182,'本子','běn zi','book','sách',2,NULL,'HSK2-010',312,'["3.0 L2"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23183,'比','bǐ','(particle used for comparison and "-er than")','so với',2,NULL,'HSK2-011',313,'["2.0 L2","3.0 L2"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23184,'笔','bǐ','brushstroke; stroke (in painting or calligraphy)','bút',2,NULL,'HSK2-012',314,'["3.0 L2"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23185,'别','bié','to leave','đừng',2,NULL,'HSK2-013',315,'["2.0 L2","3.0 L2","3.0 L5"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23186,'宾馆','bīn guǎn','guesthouse','khách sạn',2,NULL,'HSK2-014',316,'["2.0 L2","3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23187,'不错','bù cuò','correct','Chính xác',2,NULL,'HSK2-015',317,'["3.0 L2"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23188,'不好意思','bù hǎo yì si','to feel embarrassed','cảm thấy xấu hổ',2,NULL,'HSK2-016',318,'["3.0 L2"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23189,'车站','chē zhàn','rail station','ga xe lửa',2,NULL,'HSK2-017',319,'["3.0 L2"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23190,'出','chū','to go out','ra, đi ra',2,NULL,'HSK2-018',320,'["2.0 L2","3.0 L2"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23191,'出国','chū guó','to go abroad; to leave the country','đi nước ngoài',2,NULL,'HSK2-019',321,'["3.0 L2"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23192,'出来','chū lái','to come out','đi ra',2,NULL,'HSK2-020',322,'["3.0 L2"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23193,'出门','chū mén','to go out','đi ra ngoài',2,NULL,'HSK2-021',323,'["3.0 L2"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23194,'出去','chū qù','to go out','đi ra ngoài',2,NULL,'HSK2-022',324,'["3.0 L2"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23195,'床','chuáng','bed; bottom (of rivers, oceans, gardens etc)','giường',2,NULL,'HSK2-023',325,'["3.0 L2"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23196,'词','cí','word','từ',2,NULL,'HSK2-024',326,'["3.0 L2"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23197,'次','cì','next in sequence','lần, lượt (lượng từ)',2,NULL,'HSK2-025',327,'["2.0 L2","3.0 L2"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23198,'从','cóng','from','từ',2,NULL,'HSK2-026',328,'["2.0 L2","3.0 L2"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23199,'从小','cóng xiǎo','from childhood; from a young age','từ thời thơ ấu',2,NULL,'HSK2-027',329,'["3.0 L2"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23200,'错','cuò','mistake','sai',2,NULL,'HSK2-028',330,'["2.0 L2","3.0 L2"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23201,'打','dá','(loanword) dozen','tá',2,NULL,'HSK2-029',331,'["3.0 L2","3.0 L7-9"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23202,'打车','dǎ chē','to take a taxi (in town)','đi taxi',2,NULL,'HSK2-030',332,'["3.0 L2"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23203,'打开','dǎ kāi','to open; to turn on','mở',2,NULL,'HSK2-031',333,'["3.0 L2"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23204,'但','dàn','but; yet; however; still','Nhưng',2,NULL,'HSK2-032',334,'["3.0 L2"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23205,'但是','dàn shì','but','nhưng',2,NULL,'HSK2-033',335,'["3.0 L2"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23206,'得','děi','to have to','(trợ từ bổ ngữ)',2,NULL,'HSK2-034',336,'["3.0 L2","3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23207,'地','de','-ly','(trợ từ trạng ngữ)',2,NULL,'HSK2-035',337,'["3.0 L2","3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23208,'地铁','dì tiě','subway','tàu điện ngầm',2,NULL,'HSK2-036',338,'["2.0 L3","3.0 L2"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23209,'等','děng','et cetera','đợi, chờ',2,NULL,'HSK2-037',339,'["3.0 L2","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23210,'懂','dǒng','to understand','hiểu',2,NULL,'HSK2-038',340,'["2.0 L2","3.0 L2"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23211,'动','dòng','(of sth) to move','di chuyển',2,NULL,'HSK2-039',341,'["3.0 L2"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23212,'饭馆','fàn guǎn','restaurant','nhà hàng',2,NULL,'HSK2-040',342,'["3.0 L2"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23213,'飞','fēi','to fly','bay',2,NULL,'HSK2-041',343,'["3.0 L2"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23214,'高','gāo','high','cao',2,NULL,'HSK2-042',344,'["2.0 L2","3.0 L2"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23215,'高中','gāo zhōng','senior high school','trường trung học phổ thông',2,NULL,'HSK2-043',345,'["3.0 L2"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23216,'告诉','gào su','to tell','kể',2,NULL,'HSK2-044',346,'["2.0 L2","3.0 L2"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23217,'个子','gè zi','height','chiều cao',2,NULL,'HSK2-045',347,'["2.0 L3","3.0 L2"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23218,'跟','gēn','heel','cùng, với',2,NULL,'HSK2-046',348,'["2.0 L3","3.0 L2"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23219,'公交车','gōng jiāo chē','public transport vehicle','phương tiện giao thông công cộng',2,NULL,'HSK2-047',349,'["3.0 L2"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23220,'过','guo','(experienced action marker)','qua (trợ từ kinh nghiệm)',2,NULL,'HSK2-048',350,'["3.0 L2"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23221,'过来','guò lái','to come over','đến đây',2,NULL,'HSK2-049',351,'["3.0 L2"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23222,'过年','guò nián','to celebrate the Chinese New Year','để chào mừng năm mới của Trung Quốc',2,NULL,'HSK2-050',352,'["3.0 L2"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23223,'过去','guò qu','(in the) past','quá khứ, đi qua',2,NULL,'HSK2-051',353,'["2.0 L3","3.0 L2","3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23224,'还是','hái shì','or','hoặc',2,NULL,'HSK2-052',354,'["2.0 L3","3.0 L2"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23225,'黑色','hēi sè','black','đen',2,NULL,'HSK2-053',355,'["3.0 L2"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23226,'红茶','hóng chá','black tea','trà đen',2,NULL,'HSK2-054',356,'["3.0 L2"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23227,'红色','hóng sè','red (color)','màu đỏ',2,NULL,'HSK2-055',357,'["3.0 L2"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23228,'花','huā','to spend (money, time)','hoa, tiêu (tiền)',2,NULL,'HSK2-056',358,'["3.0 L2"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23229,'画','huà','to draw','vẽ, bức tranh',2,NULL,'HSK2-057',359,'["2.0 L3","3.0 L2"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23230,'坏','huài','bad','hỏng, xấu',2,NULL,'HSK2-058',360,'["2.0 L3","3.0 L2"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23231,'回来','huí lai','to return; to come back','trở lại',2,NULL,'HSK2-059',361,'["3.0 L2"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23232,'回去','huí qu','to return','trở lại',2,NULL,'HSK2-060',362,'["3.0 L2"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23233,'机场','jī chǎng','airport','sân bay',2,NULL,'HSK2-061',363,'["2.0 L2","3.0 L2"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23234,'机票','jī piào','plane ticket; airline ticket','vé máy bay',2,NULL,'HSK2-062',364,'["3.0 L2"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23235,'记得','jì de','to remember','nhớ',2,NULL,'HSK2-063',365,'["2.0 L3","3.0 L2"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23236,'间','jiān','between','giữa',2,NULL,'HSK2-064',366,'["3.0 L2"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23237,'教','jiāo','to teach','dạy',2,NULL,'HSK2-065',367,'["2.0 L3","3.0 L2"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23238,'教室','jiào shì','classroom','phòng học',2,NULL,'HSK2-066',368,'["2.0 L2","3.0 L2"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23239,'介绍','jiè shào','to present','giới thiệu',2,NULL,'HSK2-067',369,'["2.0 L2","3.0 L2"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23240,'近','jìn','near','gần',2,NULL,'HSK2-068',370,'["2.0 L2","3.0 L2"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23241,'进','jìn','to advance','vào',2,NULL,'HSK2-069',371,'["2.0 L2","3.0 L2"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23242,'进来','jìn lái','to come in','đi vào',2,NULL,'HSK2-070',372,'["3.0 L2"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23243,'进去','jìn qù','to go in','đi vào',2,NULL,'HSK2-071',373,'["3.0 L2"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23244,'经常','jīng cháng','day to day','thường xuyên',2,NULL,'HSK2-072',374,'["2.0 L3","3.0 L2"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23245,'酒店','jiǔ diàn','wine shop','khách sạn',2,NULL,'HSK2-073',375,'["3.0 L2"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23246,'就','jiù','at once','thì, liền',2,NULL,'HSK2-074',376,'["2.0 L2","3.0 L2"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23247,'咖啡','kā fēi','coffee','cà phê',2,NULL,'HSK2-075',377,'["2.0 L2","3.0 L2"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23248,'开始','kāi shǐ','to begin','bắt đầu',2,NULL,'HSK2-076',378,'["2.0 L2","3.0 L2"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23249,'开学','kāi xué','(of a student) to start school','bắt đầu đi học',2,NULL,'HSK2-077',379,'["3.0 L2"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23250,'考','kǎo','to check','để kiểm tra',2,NULL,'HSK2-078',380,'["3.0 L2"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23251,'考试','kǎo shì','exam','bài thi',2,NULL,'HSK2-079',381,'["2.0 L2","3.0 L2"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23252,'可能','kě néng','might (happen)','có thể',2,NULL,'HSK2-080',382,'["2.0 L2","3.0 L2"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23253,'裤子','kù zi','trousers','quần dài',2,NULL,'HSK2-081',383,'["2.0 L3","3.0 L2"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23254,'快','kuài','rapid','nhanh',2,NULL,'HSK2-082',384,'["2.0 L2","3.0 L2"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23255,'快乐','kuài lè','happy','vui vẻ',2,NULL,'HSK2-083',385,'["2.0 L2","3.0 L2"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23256,'快要','kuài yào','nearly at the point of (doing sth); about to (do sth)','gần đến mức',2,NULL,'HSK2-084',386,'["3.0 L2"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23257,'篮球','lán qiú','basketball','bóng rổ',2,NULL,'HSK2-085',387,'["3.0 L2"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23258,'累','lèi','tired','mệt',2,NULL,'HSK2-086',388,'["2.0 L2","3.0 L2"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23259,'离','lí','to leave','cách',2,NULL,'HSK2-087',389,'["2.0 L2","3.0 L2"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23260,'里面','lǐ miàn','inside','bên trong',2,NULL,'HSK2-088',390,'["3.0 L2"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23261,'楼','lóu','house with more than 1 story','lầu, tầng',2,NULL,'HSK2-089',391,'["2.0 L3","3.0 L2"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23262,'路','lù','road','đường',2,NULL,'HSK2-090',392,'["2.0 L2","3.0 L2"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23263,'路上','lù shang','on the road','trên đường',2,NULL,'HSK2-091',393,'["3.0 L2"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23264,'旅游','lǚ yóu','trip','du lịch',2,NULL,'HSK2-092',394,'["2.0 L2","3.0 L2"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23265,'绿茶','lǜ chá','green tea','trà xanh',2,NULL,'HSK2-093',395,'["3.0 L2"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23266,'绿色','lǜ sè','green','màu xanh lá',2,NULL,'HSK2-094',396,'["3.0 L2"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23267,'慢','màn','slow','chậm',2,NULL,'HSK2-095',397,'["2.0 L2","3.0 L2"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23268,'没意思','méi yì si','boring','nhạt nhẽo',2,NULL,'HSK2-096',398,'["3.0 L2"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23269,'每','měi','each','mỗi',2,NULL,'HSK2-097',399,'["2.0 L2","3.0 L2"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23270,'门','mén','gate','cửa',2,NULL,'HSK2-098',400,'["2.0 L2","3.0 L2"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23271,'门口','mén kǒu','doorway','ngưỡng cửa',2,NULL,'HSK2-099',401,'["3.0 L2"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23272,'门票','mén piào','ticket (for theater, cinema etc)','vé',2,NULL,'HSK2-100',402,'["3.0 L2"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23273,'面','miàn','face','khuôn mặt',2,NULL,'HSK2-101',403,'["3.0 L2","3.0 L5"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23274,'名','míng','name','tên',2,NULL,'HSK2-102',404,'["3.0 L2"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23275,'拿','ná','to hold','cầm, lấy',2,NULL,'HSK2-103',405,'["2.0 L3","3.0 L2"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23276,'那么','nà me','like that; in that way; to that extent','như thế',2,NULL,'HSK2-104',406,'["3.0 L2"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23277,'那样','nà yàng','that kind','loại đó',2,NULL,'HSK2-105',407,'["3.0 L2"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23278,'奶茶','nǎi chá','milk tea','trà sữa',2,NULL,'HSK2-106',408,'["3.0 L2"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23279,'奶奶','nǎi nai','(informal) father''s mother','bà nội',2,NULL,'HSK2-107',409,'["2.0 L3","3.0 L2"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23280,'男孩儿','nán hái r','Dictionary gloss under review','Từ điển chú giải đang được xem xét',2,NULL,'HSK2-108',410,'["3.0 L2"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23281,'鸟','niǎo','bird','chim',2,NULL,'HSK2-109',411,'["2.0 L3","3.0 L2"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23282,'女孩儿','nǚ hái r','Dictionary gloss under review','Từ điển chú giải đang được xem xét',2,NULL,'HSK2-110',412,'["3.0 L2"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23283,'旁边','páng biān','lateral','bên cạnh',2,NULL,'HSK2-111',413,'["2.0 L2","3.0 L2"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23284,'跑','páo','(of an animal) to paw (the ground)','vuốt ve',2,NULL,'HSK2-112',414,'["3.0 L2"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23285,'跑步','pǎo bù','to walk quickly','chạy bộ',2,NULL,'HSK2-113',415,'["2.0 L2","3.0 L2"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23286,'票','piào','ticket','vé',2,NULL,'HSK2-114',416,'["2.0 L2","3.0 L2"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23287,'妻子','qī zi','wife','vợ',2,NULL,'HSK2-115',417,'["2.0 L2","3.0 L2"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23288,'起来','qǐ lái','beginning or continuing an action','bắt đầu hoặc tiếp tục một hành động',2,NULL,'HSK2-116',418,'["2.0 L3","3.0 L2"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23289,'铅笔','qiān bǐ','(lead) pencil','bút chì',2,NULL,'HSK2-117',419,'["2.0 L2","3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23290,'晴','qíng','clear','trời nắng',2,NULL,'HSK2-118',420,'["2.0 L2","3.0 L2"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23291,'球','qiú','ball','quả bóng',2,NULL,'HSK2-119',421,'["3.0 L2"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23292,'让','ràng','to yield','để, khiến',2,NULL,'HSK2-120',422,'["2.0 L2","3.0 L2"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23293,'肉','ròu','meat','thịt',2,NULL,'HSK2-121',423,'["3.0 L2"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23294,'商场','shāng chǎng','shopping mall','trung tâm mua sắm',2,NULL,'HSK2-122',424,'["3.0 L2"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23295,'上来','shàng lái','to come up','đi lên',2,NULL,'HSK2-123',425,'["3.0 L2"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23296,'上面','shàng miàn','above; on top of; the upper part','bên trên',2,NULL,'HSK2-124',426,'["3.0 L2"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23297,'上去','shàng qù','to go up','đi lên',2,NULL,'HSK2-125',427,'["3.0 L2"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23298,'上网','shàng wǎng','to be on the internet','lên mạng',2,NULL,'HSK2-126',428,'["2.0 L3","3.0 L2"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23299,'身体','shēn tǐ','(human) body','thân hình',2,NULL,'HSK2-127',429,'["2.0 L2","3.0 L2"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23300,'生日','shēng rì','birthday','sinh nhật',2,NULL,'HSK2-128',430,'["2.0 L2","3.0 L2"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23301,'时','shí','o''clock','giờ, lúc',2,NULL,'HSK2-129',431,'["3.0 L2"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23302,'事情','shì qing','affair','việc, sự việc',2,NULL,'HSK2-130',432,'["2.0 L2","3.0 L2"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23303,'手','shǒu','hand','tay',2,NULL,'HSK2-131',433,'["3.0 L2"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23304,'手表','shǒu biǎo','wrist watch','đồng hồ đeo tay',2,NULL,'HSK2-132',434,'["2.0 L2","3.0 L2"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23305,'书包','shū bāo','schoolbag','cặp sách',2,NULL,'HSK2-133',435,'["3.0 L2"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23306,'舒服','shū fu','comfortable','thoải mái',2,NULL,'HSK2-134',436,'["2.0 L3","3.0 L2"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23307,'送','sòng','to deliver','để giao hàng',2,NULL,'HSK2-135',437,'["2.0 L2","3.0 L2"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23308,'虽然','suī rán','although','mặc dù',2,NULL,'HSK2-136',438,'["3.0 L2"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23309,'所以','suǒ yǐ','therefore','Vì vậy',2,NULL,'HSK2-137',439,'["3.0 L2"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23310,'疼','téng','(it) hurts','đau',2,NULL,'HSK2-138',440,'["2.0 L3","3.0 L2"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23311,'踢','tī','to kick','đá',2,NULL,'HSK2-139',441,'["3.0 L2"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23312,'题','tí','topic','đề tài',2,NULL,'HSK2-140',442,'["2.0 L2","3.0 L2"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23313,'条','tiáo','strip','con (lượng từ vật dài)',2,NULL,'HSK2-141',443,'["2.0 L3","3.0 L2"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23314,'跳舞','tiào wǔ','to dance','nhảy múa',2,NULL,'HSK2-142',444,'["2.0 L2","3.0 L2"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23315,'头','tóu','head','cái đầu',2,NULL,'HSK2-143',445,'["3.0 L2","3.0 L5"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23316,'外国','wài guó','foreign country','nước ngoài',2,NULL,'HSK2-144',446,'["3.0 L2"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23317,'外面','wài miàn','outside (also pr. [wai4 mian5] for this sense)','bên ngoài',2,NULL,'HSK2-145',447,'["3.0 L2"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23318,'完','wán','to finish','xong',2,NULL,'HSK2-146',448,'["2.0 L2","3.0 L2"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23319,'万','wàn','ten thousand','vạn (mười nghìn)',2,NULL,'HSK2-147',449,'["2.0 L3","3.0 L2"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23320,'网上','wǎng shàng','online','trực tuyến',2,NULL,'HSK2-148',450,'["3.0 L2"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23321,'往','wǎng','to go (in a direction)','đi',2,NULL,'HSK2-149',451,'["2.0 L2","3.0 L2"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23322,'忘','wàng','to forget','quên',2,NULL,'HSK2-150',452,'["3.0 L2"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23323,'为什么','wèi shén me','why?','tại sao',2,NULL,'HSK2-151',453,'["2.0 L2","3.0 L2"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23324,'位','wèi','position','vị (lượng từ敬)',2,NULL,'HSK2-152',454,'["2.0 L3","3.0 L2"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23325,'西瓜','xī guā','watermelon','dưa hấu',2,NULL,'HSK2-153',455,'["2.0 L2","3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23326,'希望','xī wàng','to wish for','ước gì',2,NULL,'HSK2-154',456,'["2.0 L2","3.0 L2"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23327,'洗','xǐ','to wash','rửa, giặt',2,NULL,'HSK2-155',457,'["2.0 L2","3.0 L2"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23328,'洗手间','xǐ shǒu jiān','toilet','nhà vệ sinh',2,NULL,'HSK2-156',458,'["2.0 L3","3.0 L2"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23329,'下来','xià lai','to come down','đi xuống',2,NULL,'HSK2-157',459,'["3.0 L2"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23330,'下面','xià miàn','below','dưới',2,NULL,'HSK2-158',460,'["3.0 L2"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23331,'下去','xià qù','to go down','đi xuống',2,NULL,'HSK2-159',461,'["3.0 L2"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23332,'小孩儿','xiǎo hái r','Dictionary gloss under review','Từ điển chú giải đang được xem xét',2,NULL,'HSK2-160',462,'["3.0 L2"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23333,'小时候','xiǎo shí hou','in one''s childhood','hồi nhỏ',2,NULL,'HSK2-161',463,'["3.0 L2"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23334,'笑','xiào','laugh','cười',2,NULL,'HSK2-162',464,'["2.0 L2","3.0 L2"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23335,'姓','xìng','family name','tên gia đình',2,NULL,'HSK2-163',465,'["2.0 L2","3.0 L2"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23336,'姓名','xìng míng','surname and given name; full name','họ và tên riêng',2,NULL,'HSK2-164',466,'["3.0 L2"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23337,'颜色','yán sè','color','màu sắc',2,NULL,'HSK2-165',467,'["2.0 L2","3.0 L2"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23338,'眼睛','yǎn jing','eye','mắt',2,NULL,'HSK2-166',468,'["2.0 L2","3.0 L2"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23339,'药','yào','medicine','thuốc',2,NULL,'HSK2-167',469,'["2.0 L2","3.0 L2"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23340,'药店','yào diàn','pharmacy; drugstore','hiệu thuốc',2,NULL,'HSK2-168',470,'["3.0 L2"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23341,'爷爷','yé ye','(informal) father''s father','ông nội',2,NULL,'HSK2-169',471,'["2.0 L3","3.0 L2"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23342,'一会儿','yí huì r','a while','một lát',2,NULL,'HSK2-170',472,'["2.0 L3","3.0 L2"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23343,'一起','yì qǐ','in the same place','cùng nhau',2,NULL,'HSK2-171',473,'["2.0 L2","3.0 L2"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23344,'已经','yǐ jīng','already','đã',2,NULL,'HSK2-172',474,'["2.0 L2","3.0 L2"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23345,'意思','yì si','idea','ý tưởng',2,NULL,'HSK2-173',475,'["2.0 L2","3.0 L2"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23346,'因为','yīn wèi','because','bởi vì',2,NULL,'HSK2-174',476,'["3.0 L2"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23347,'阴','yīn','overcast (weather)','u ám',2,NULL,'HSK2-175',477,'["2.0 L2","3.0 L2"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23348,'游','yóu','to walk','bơi, du ngoạn',2,NULL,'HSK2-176',478,'["3.0 L2"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23349,'游泳','yóu yǒng','swim','bơi lội',2,NULL,'HSK2-177',479,'["2.0 L2","3.0 L2"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23350,'有时','yǒu shí','sometimes','Thỉnh thoảng',2,NULL,'HSK2-178',480,'["3.0 L2"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23351,'有意思','yǒu yì si','interesting','thú vị',2,NULL,'HSK2-179',481,'["3.0 L2"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23352,'右','yòu','(bound form) right; right-hand side','Phải',2,NULL,'HSK2-180',482,'["3.0 L2"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23353,'右边','yòu bian','right side','phía phải',2,NULL,'HSK2-181',483,'["2.0 L2","3.0 L2"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23354,'鱼','yú','fish','cá',2,NULL,'HSK2-182',484,'["2.0 L2","3.0 L2"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23355,'远','yuǎn','far','xa',2,NULL,'HSK2-183',485,'["2.0 L2","3.0 L2"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23356,'运动','yùn dòng','movement','thể thao',2,NULL,'HSK2-184',486,'["2.0 L2","3.0 L2"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23357,'站','zhàn','station','trạm, đứng',2,NULL,'HSK2-185',487,'["2.0 L3","3.0 L2","3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23358,'长','zhǎng','chief','dài',2,NULL,'HSK2-186',488,'["3.0 L2","3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23359,'丈夫','zhàng fu','husband','chồng',2,NULL,'HSK2-187',489,'["2.0 L2","3.0 L2"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23360,'这么','zhè me','so much','rất nhiều',2,NULL,'HSK2-188',490,'["3.0 L2"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23361,'这样','zhè yàng','like this; this way; such','như thế này',2,NULL,'HSK2-189',491,'["3.0 L2"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23362,'着','zhe','particle attached after verb to indicate action in progress, like -ing ending','(trợ từ tiếp diễn)',2,NULL,'HSK2-190',492,'["2.0 L2","3.0 L2","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23363,'正','zhèng','upright','ngay thẳng',2,NULL,'HSK2-191',493,'["2.0 L5","3.0 L2"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23364,'周','zhōu','to make a circuit','để làm một mạch',2,NULL,'HSK2-192',494,'["3.0 L2"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23365,'准备','zhǔn bèi','preparation','chuẩn bị',2,NULL,'HSK2-193',495,'["2.0 L2","3.0 L2"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23366,'自己','zì jǐ','self','bản thân',2,NULL,'HSK2-194',496,'["2.0 L3","3.0 L2"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23367,'走','zǒu','to walk','đi bộ',2,NULL,'HSK2-195',497,'["2.0 L2","3.0 L2"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23368,'走路','zǒu lù','to walk; to go on foot','đi bộ',2,NULL,'HSK2-196',498,'["3.0 L2"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23369,'足球','zú qiú','soccer; football','bóng đá',2,NULL,'HSK2-197',499,'["3.0 L2"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23370,'最','zuì','most','nhất',2,NULL,'HSK2-198',500,'["2.0 L2","3.0 L2"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23371,'左','zuǒ','left','bên trái',2,NULL,'HSK2-199',501,'["3.0 L2"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23372,'左边','zuǒ bian','the left side','phía trái',2,NULL,'HSK2-200',502,'["2.0 L2","3.0 L2"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23373,'阿姨','ā yí','maternal aunt','dì/cô (gọi phụ nữ trung niên)',3,NULL,'HSK3-001',503,'["2.0 L3","3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23374,'矮','ǎi','low','thấp, lùn',3,NULL,'HSK3-002',504,'["2.0 L3","3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23375,'爱人','ài ren','spouse (PRC)','vợ/chồng',3,NULL,'HSK3-003',505,'["3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23376,'安静','ān jìng','quiet','yên tĩnh',3,NULL,'HSK3-004',506,'["2.0 L3","3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23377,'安全','ān quán','safe','an toàn',3,NULL,'HSK3-005',507,'["2.0 L4","3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23378,'把','bǎ','to hold','(giới từ câu chữ 把)',3,NULL,'HSK3-006',508,'["2.0 L3","3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23379,'班级','bān jí','class (group of students)','lớp học',3,NULL,'HSK3-007',509,'["3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23380,'搬','bān','to move','chuyển, dọn',3,NULL,'HSK3-008',510,'["2.0 L3","3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23381,'搬家','bān jiā','to move house; to relocate','chuyển nhà',3,NULL,'HSK3-009',511,'["3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23382,'办','bàn','to take care of (a matter); to deal with (a task, procedure etc); to organize (an event)','để chăm sóc',3,NULL,'HSK3-010',512,'["3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23383,'办法','bàn fǎ','means','cách, biện pháp',3,NULL,'HSK3-011',513,'["2.0 L3","3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23384,'办公室','bàn gōng shì','office','văn phòng',3,NULL,'HSK3-012',514,'["2.0 L3","3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23385,'半天','bàn tiān','half of the day','nửa ngày',3,NULL,'HSK3-013',515,'["3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23386,'饱','bǎo','to eat till full','no (ăn no)',3,NULL,'HSK3-014',516,'["2.0 L3","3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23387,'北','běi','north','phía bắc',3,NULL,'HSK3-015',517,'["3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23388,'北方','běi fāng','north','miền Bắc',3,NULL,'HSK3-016',518,'["2.0 L3","3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23389,'被','bèi','by (indicates passive-voice sentences or clauses)','bị, được (câu bị động)',3,NULL,'HSK3-017',519,'["2.0 L3","3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23390,'鼻子','bí zi','nose','mũi',3,NULL,'HSK3-018',520,'["2.0 L3","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23391,'比较','bǐ jiào','compare','so sánh, khá là',3,NULL,'HSK3-019',521,'["2.0 L3","3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23392,'比如','bǐ rú','for example','Ví dụ',3,NULL,'HSK3-020',522,'["2.0 L4","3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23393,'比赛','bǐ sài','competition (sports etc)','thi đấu',3,NULL,'HSK3-021',523,'["2.0 L3","3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23394,'笔记','bǐ jì','to take down (in writing)','hạ gục',3,NULL,'HSK3-022',524,'["3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23395,'笔记本','bǐ jì běn','notebook','vở ghi chép',3,NULL,'HSK3-023',525,'["2.0 L3","3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23396,'必须','bì xū','must; have to; necessary','nhất định phải',3,NULL,'HSK3-024',526,'["2.0 L3","3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23397,'变','biàn','to change','thay đổi',3,NULL,'HSK3-025',527,'["3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23398,'变成','biàn chéng','to change into','để thay đổi thành',3,NULL,'HSK3-026',528,'["3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23399,'变化','biàn huà','change','thay đổi',3,NULL,'HSK3-027',529,'["2.0 L3","3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23400,'遍','biàn','a time','một thời gian',3,NULL,'HSK3-028',530,'["2.0 L4","3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23401,'表演','biǎo yǎn','play','biểu diễn',3,NULL,'HSK3-029',531,'["2.0 L4","3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23402,'别的','bié de','else','khác',3,NULL,'HSK3-030',532,'["3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23403,'别人','bié ren','other people','người khác',3,NULL,'HSK3-031',533,'["2.0 L3","3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23404,'冰','bīng','ice','đá',3,NULL,'HSK3-032',534,'["3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23405,'冰激凌','bīng jī líng','ice cream','kem',3,NULL,'HSK3-033',535,'["2.0 L5","3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23406,'冰箱','bīng xiāng','icebox','tủ lạnh',3,NULL,'HSK3-034',536,'["2.0 L3","3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23407,'病人','bìng rén','sick person','bệnh nhân',3,NULL,'HSK3-035',537,'["3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23408,'不但','bú dàn','not only (... but also...)','không những',3,NULL,'HSK3-036',538,'["3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23409,'不见','bù jiàn','not to see','không được nhìn thấy',3,NULL,'HSK3-037',539,'["3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23410,'不久','bù jiǔ','not long (after)','không lâu',3,NULL,'HSK3-038',540,'["3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23411,'不同','bù tóng','different','khác biệt',3,NULL,'HSK3-039',541,'["3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23412,'不行','bù xíng','won''t do','không được',3,NULL,'HSK3-040',542,'["3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23413,'不用','bù yòng','no need; you don''t have to','không cần',3,NULL,'HSK3-041',543,'["3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23414,'才','cái','ability','mới (phó từ)',3,NULL,'HSK3-042',544,'["3.0 L3","3.0 L5"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23415,'菜单','cài dān','menu','thực đơn',3,NULL,'HSK3-043',545,'["2.0 L3","3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23416,'参加','cān jiā','to participate','tham gia',3,NULL,'HSK3-044',546,'["2.0 L3","3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23417,'草','cǎo','grass','cỏ',3,NULL,'HSK3-045',547,'["2.0 L3","3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23418,'草地','cǎo dì','lawn','bãi cỏ',3,NULL,'HSK3-046',548,'["3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23419,'层','céng','layer','tầng, lớp (lượng từ)',3,NULL,'HSK3-047',549,'["2.0 L3","3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23420,'查','chá','to research','tra, kiểm tra',3,NULL,'HSK3-048',550,'["3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23421,'差','chà','differ from','kém, thiếu',3,NULL,'HSK3-049',551,'["2.0 L3","3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23422,'差不多','chà bu duō','almost','gần như, xấp xỉ',3,NULL,'HSK3-050',552,'["2.0 L4","3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23423,'尝','cháng','to taste','nếm',3,NULL,'HSK3-051',553,'["2.0 L3","3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23424,'常','cháng','always','luôn luôn',3,NULL,'HSK3-052',554,'["3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23425,'常常','cháng cháng','frequently; often','thường xuyên',3,NULL,'HSK3-053',555,'["3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23426,'常见','cháng jiàn','commonly seen','thường thấy',3,NULL,'HSK3-054',556,'["3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23427,'常用','cháng yòng','in common usage','trong cách sử dụng chung',3,NULL,'HSK3-055',557,'["3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23428,'衬衫','chèn shān','shirt','áo sơ mi',3,NULL,'HSK3-056',558,'["2.0 L3","3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23429,'成绩','chéng jì','achievement','thành tích',3,NULL,'HSK3-057',559,'["2.0 L3","3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23430,'城市','chéng shì','city','thành phố',3,NULL,'HSK3-058',560,'["2.0 L3","3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23431,'迟到','chí dào','to arrive late','đến muộn',3,NULL,'HSK3-059',561,'["2.0 L3","3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23432,'出发','chū fā','to start out','để bắt đầu',3,NULL,'HSK3-060',562,'["2.0 L4","3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23433,'出生','chū shēng','to be born','được sinh ra',3,NULL,'HSK3-061',563,'["2.0 L4","3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23434,'出院','chū yuàn','to leave hospital','rời bệnh viện',3,NULL,'HSK3-062',564,'["3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23435,'初中','chū zhōng','Dictionary gloss under review','Từ điển chú giải đang được xem xét',3,NULL,'HSK3-063',565,'["3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23436,'除了','chú le','except; besides; apart from','ngoài... ra',3,NULL,'HSK3-064',566,'["2.0 L3","3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23437,'船','chuán','a boat','thuyền, tàu thủy',3,NULL,'HSK3-065',567,'["2.0 L3","3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23438,'春天','chūn tiān','spring (season)','mùa xuân',3,NULL,'HSK3-066',568,'["3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23439,'词典','cí diǎn','dictionary (of Chinese compound words)','từ điển',3,NULL,'HSK3-067',569,'["2.0 L3","3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23440,'聪明','cōng ming','acute (of sight and hearing)','thông minh',3,NULL,'HSK3-068',570,'["2.0 L3","3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23441,'打扫','dǎ sǎo','to clean','quét dọn',3,NULL,'HSK3-069',571,'["2.0 L3","3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23442,'打算','dǎ suàn','to plan; to intend','dự định',3,NULL,'HSK3-070',572,'["2.0 L3","3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23443,'大概','dà gài','roughly; approximately; probably','đại khái',3,NULL,'HSK3-071',573,'["2.0 L4","3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23444,'大人','dà ren','adult','người lớn',3,NULL,'HSK3-072',574,'["3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23445,'大小','dà xiǎo','large and small','lớn và nhỏ',3,NULL,'HSK3-073',575,'["3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23446,'大熊猫','dà xióng māo','giant panda (Ailuropoda melanoleuca)','gấu trúc khổng lồ',3,NULL,'HSK3-074',576,'["3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23447,'大衣','dà yī','overcoat','áo khoác ngoài',3,NULL,'HSK3-075',577,'["3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23448,'带','dài','band','mang, dẫn',3,NULL,'HSK3-076',578,'["2.0 L3","3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23449,'担心','dān xīn','anxious','lo lắng',3,NULL,'HSK3-077',579,'["2.0 L3","3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23450,'蛋糕','dàn gāo','cake','bánh gato',3,NULL,'HSK3-078',580,'["2.0 L3","3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23451,'当然','dāng rán','only natural','đương nhiên',3,NULL,'HSK3-079',581,'["2.0 L3","3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23452,'到处','dào chù','in all places','ở mọi nơi',3,NULL,'HSK3-080',582,'["2.0 L4","3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23453,'得到','dé dào','to get; to obtain','để có được',3,NULL,'HSK3-081',583,'["3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23454,'得分','dé fēn','to score a point (in a competition, test etc)','để ghi một điểm',3,NULL,'HSK3-082',584,'["3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23455,'地点','dì diǎn','place','địa điểm',3,NULL,'HSK3-083',585,'["2.0 L4","3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23456,'地方','dì fang','region','nơi, chỗ',3,NULL,'HSK3-084',586,'["2.0 L3","3.0 L3","3.0 L6"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23457,'地图','dì tú','map','bản đồ',3,NULL,'HSK3-085',587,'["2.0 L3","3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23458,'的话','de huà','if (coming after a conditional clause)','nếu như',3,NULL,'HSK3-086',588,'["3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23459,'灯','dēng','lamp','đèn',3,NULL,'HSK3-087',589,'["2.0 L3","3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23460,'电','diàn','lightning','tia sét',3,NULL,'HSK3-088',590,'["3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23461,'电梯','diàn tī','elevator','thang máy',3,NULL,'HSK3-089',591,'["2.0 L3","3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23462,'电子书','diàn zǐ shū','electronic book','sách điện tử',3,NULL,'HSK3-090',592,'["3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23463,'丢','diū','to lose','thua',3,NULL,'HSK3-091',593,'["2.0 L4","3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23464,'东','dōng','east','phía đông',3,NULL,'HSK3-092',594,'["2.0 L3","3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23465,'东北','dōng běi','northeast','hướng đông bắc',3,NULL,'HSK3-093',595,'["3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23466,'东方','dōng fāng','east','phía đông',3,NULL,'HSK3-094',596,'["3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23467,'东南','dōng nán','southeast','hướng đông nam',3,NULL,'HSK3-095',597,'["3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23468,'冬天','dōng tiān','winter','mùa đông',3,NULL,'HSK3-096',598,'["3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23469,'懂得','dǒng de','to understand; to know; to comprehend','để hiểu',3,NULL,'HSK3-097',599,'["3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23470,'动物','dòng wù','animal','động vật',3,NULL,'HSK3-098',600,'["2.0 L3","3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23471,'动物园','dòng wù yuán','zoo','sở thú',3,NULL,'HSK3-099',601,'["3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23472,'短','duǎn','short or brief','ngắn',3,NULL,'HSK3-100',602,'["2.0 L3","3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23473,'短裤','duǎn kù','short pants','quần ngắn',3,NULL,'HSK3-101',603,'["3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23474,'段','duàn','paragraph','đoạn (lượng từ)',3,NULL,'HSK3-102',604,'["2.0 L3","3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23475,'锻炼','duàn liàn','to engage in physical exercise','rèn luyện',3,NULL,'HSK3-103',605,'["2.0 L3","3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23476,'对话','duì huà','dialog','hộp thoại',3,NULL,'HSK3-104',606,'["2.0 L4","3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23477,'多么','duō me','how (wonderful etc)','biết bao',3,NULL,'HSK3-105',607,'["2.0 L3","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23478,'饿','è','to be hungry','đói',3,NULL,'HSK3-106',608,'["2.0 L3","3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23479,'而且','ér qiě','(not only ...) but also','hơn nữa',3,NULL,'HSK3-107',609,'["3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23480,'耳朵','ěr duo','ear','tai',3,NULL,'HSK3-108',610,'["2.0 L3","3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23481,'耳机','ěr jī','headphones','tai nghe',3,NULL,'HSK3-109',611,'["3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23482,'发','fā','to send out','gửi đi',3,NULL,'HSK3-110',612,'["2.0 L3","3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23483,'发烧','fā shāo','have a high temperature (from illness)','sốt',3,NULL,'HSK3-111',613,'["2.0 L3","3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23484,'发生','fā shēng','to happen','xảy ra',3,NULL,'HSK3-112',614,'["2.0 L4","3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23485,'发现','fā xiàn','to find','phát hiện',3,NULL,'HSK3-113',615,'["2.0 L3","3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23486,'发展','fā zhǎn','development','phát triển',3,NULL,'HSK3-114',616,'["2.0 L4","3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23487,'方便','fāng biàn','convenient','tiện lợi',3,NULL,'HSK3-115',617,'["2.0 L3","3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23488,'方便面','fāng biàn miàn','instant noodles','mì ăn liền',3,NULL,'HSK3-116',618,'["3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23489,'方法','fāng fǎ','method','phương pháp',3,NULL,'HSK3-117',619,'["2.0 L4","3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23490,'方向','fāng xiàng','direction','phương hướng',3,NULL,'HSK3-118',620,'["2.0 L4","3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23491,'房子','fáng zi','house','căn nhà',3,NULL,'HSK3-119',621,'["3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23492,'放','fàng','to release','đặt, thả',3,NULL,'HSK3-120',622,'["2.0 L3","3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23493,'放假','fàng jià','to have a holiday or vacation','để có một kỳ nghỉ hoặc kỳ nghỉ',3,NULL,'HSK3-121',623,'["3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23494,'放心','fàng xīn','to set one''s mind at rest','yên tâm',3,NULL,'HSK3-122',624,'["2.0 L3","3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23495,'放学','fàng xué','to dismiss students at the end of the school day','cho học sinh ra về vào cuối ngày học',3,NULL,'HSK3-123',625,'["3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23496,'分开','fēn kāi','to separate','tách ra',3,NULL,'HSK3-124',626,'["3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23497,'风','fēng','wind','gió',3,NULL,'HSK3-125',627,'["3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23498,'封','fēng','to confer','trao tặng',3,NULL,'HSK3-126',628,'["3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23499,'夫妻','fū qī','husband and wife; married couple','vợ chồng',3,NULL,'HSK3-127',629,'["3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23500,'服务','fú wù','to serve','để phục vụ',3,NULL,'HSK3-128',630,'["3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23501,'附近','fù jìn','(in the) vicinity','gần đây, lân cận',3,NULL,'HSK3-129',631,'["2.0 L3","3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23502,'复习','fù xí','to revise','ôn tập',3,NULL,'HSK3-130',632,'["2.0 L3","3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23503,'该','gāi','should','nên',3,NULL,'HSK3-131',633,'["3.0 L3","3.0 L6"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23504,'感到','gǎn dào','to feel; to sense; to perceive','cảm nhận',3,NULL,'HSK3-132',634,'["3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23505,'感冒','gǎn mào','to catch cold','cảm cúm',3,NULL,'HSK3-133',635,'["2.0 L3","3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23506,'感兴趣','gǎn xìng qù','to be interested','được quan tâm',3,NULL,'HSK3-134',636,'["2.0 L3","3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23507,'干','gàn','to work','đi làm',3,NULL,'HSK3-135',637,'["2.0 L4","3.0 L3","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23508,'干净','gān jìng','clean','sạch sẽ',3,NULL,'HSK3-136',638,'["2.0 L3","3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23509,'刚','gāng','hard','cứng',3,NULL,'HSK3-137',639,'["2.0 L4","3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23510,'刚才','gāng cái','just now','vừa nãy',3,NULL,'HSK3-138',640,'["2.0 L3","3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23511,'刚刚','gāng gāng','just recently','vừa mới đây thôi',3,NULL,'HSK3-139',641,'["3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23512,'高铁','gāo tiě','high speed rail','đường sắt tốc độ cao',3,NULL,'HSK3-140',642,'["3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23513,'根据','gēn jù','according to','căn cứ',3,NULL,'HSK3-141',643,'["2.0 L3","3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23514,'更','gèng','even more','thậm chí nhiều hơn',3,NULL,'HSK3-142',644,'["2.0 L3","3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23515,'工作日','gōng zuò rì','workday','ngày làm việc',3,NULL,'HSK3-143',645,'["3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23516,'公斤','gōng jīn','kilogram (kg)','kg',3,NULL,'HSK3-144',646,'["2.0 L3","3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23517,'公园','gōng yuán','public park','công viên',3,NULL,'HSK3-145',647,'["2.0 L3","3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23518,'故事','gù shi','story','câu chuyện',3,NULL,'HSK3-146',648,'["2.0 L3","3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23519,'刮','guā','to scrape','cạo',3,NULL,'HSK3-147',649,'["3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23520,'关','guān','mountain pass','đóng, tắt',3,NULL,'HSK3-148',650,'["2.0 L3","3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23521,'关机','guān jī','to turn off (a machine or device)','tắt',3,NULL,'HSK3-149',651,'["3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23522,'关系','guān xì','relation','quan hệ',3,NULL,'HSK3-150',652,'["2.0 L3","3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23523,'关心','guān xīn','to care for sth','quan tâm',3,NULL,'HSK3-151',653,'["2.0 L3","3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23524,'关于','guān yú','pertaining to','về, liên quan đến',3,NULL,'HSK3-152',654,'["2.0 L3","3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23525,'关注','guān zhù','to pay attention to; to follow sth closely; to follow (on social media)','chú ý đến',3,NULL,'HSK3-153',655,'["3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23526,'国家','guó jiā','country','quốc gia',3,NULL,'HSK3-154',656,'["2.0 L3","3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23527,'过节','guò jié','to celebrate a festival','để chào mừng một lễ hội',3,NULL,'HSK3-155',657,'["3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23528,'海','hǎi','ocean','đại dương',3,NULL,'HSK3-156',658,'["3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23529,'害怕','hài pà','to be afraid','sợ hãi',3,NULL,'HSK3-157',659,'["2.0 L3","3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23530,'好多','hǎo duō','many','nhiều',3,NULL,'HSK3-158',660,'["3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23531,'好久','hǎo jiǔ','quite a while','khá lâu',3,NULL,'HSK3-159',661,'["3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23532,'好像','hǎo xiàng','as if','như thể',3,NULL,'HSK3-160',662,'["2.0 L4","3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23533,'号码','hào mǎ','number','số (điện thoại)',3,NULL,'HSK3-161',663,'["2.0 L4","3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23534,'合适','hé shì','suitable','thích hợp',3,NULL,'HSK3-162',664,'["2.0 L4","3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23535,'河','hé','river','dòng sông',3,NULL,'HSK3-163',665,'["3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23536,'黑板','hēi bǎn','blackboard','bảng đen',3,NULL,'HSK3-164',666,'["2.0 L3","3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23537,'红绿灯','hóng lǜ dēng','traffic light','đèn giao thông',3,NULL,'HSK3-165',667,'["3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23538,'后来','hòu lái','afterwards','sau đó',3,NULL,'HSK3-166',668,'["2.0 L3","3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23539,'后年','hòu nián','the year after next','năm sau tiếp theo',3,NULL,'HSK3-167',669,'["3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23540,'后天','hòu tiān','the day after tomorrow','ngày mốt',3,NULL,'HSK3-168',670,'["3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23541,'护照','hù zhào','passport','hộ chiếu',3,NULL,'HSK3-169',671,'["2.0 L3","3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23542,'花园','huā yuán','garden','vườn',3,NULL,'HSK3-170',672,'["3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23543,'画家','huà jiā','painter','họa sĩ',3,NULL,'HSK3-171',673,'["3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23544,'欢迎','huān yíng','to welcome','hoan nghênh',3,NULL,'HSK3-172',674,'["2.0 L3","3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23545,'环境','huán jìng','environment','môi trường',3,NULL,'HSK3-173',675,'["2.0 L3","3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23546,'换','huàn','change','đổi',3,NULL,'HSK3-174',676,'["2.0 L3","3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23547,'黄色','huáng sè','yellow','màu vàng',3,NULL,'HSK3-175',677,'["3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23548,'回答','huí dá','to reply','trả lời',3,NULL,'HSK3-176',678,'["2.0 L3","3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23549,'会议','huì yì','meeting','hội nghị',3,NULL,'HSK3-177',679,'["2.0 L3","3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23550,'或','huò','maybe','Có lẽ',3,NULL,'HSK3-178',680,'["3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23551,'或者','huò zhě','or','hoặc',3,NULL,'HSK3-179',681,'["2.0 L3","3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23552,'机会','jī huì','opportunity','cơ hội',3,NULL,'HSK3-180',682,'["2.0 L3","3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23553,'鸡','jī','fowl','gia cầm',3,NULL,'HSK3-181',683,'["3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23554,'极','jí','extremely','cực kỳ',3,NULL,'HSK3-182',684,'["2.0 L3","3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23555,'急','jí','urgent','cấp bách',3,NULL,'HSK3-183',685,'["3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23556,'几乎','jī hū','almost','hầu như',3,NULL,'HSK3-184',686,'["2.0 L3","3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23557,'记','jì','to record','ghi lại',3,NULL,'HSK3-185',687,'["3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23558,'季','jì','season','mùa',3,NULL,'HSK3-186',688,'["3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23559,'季节','jì jié','time','mùa',3,NULL,'HSK3-187',689,'["2.0 L3","3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23560,'加','jiā','to add','để thêm',3,NULL,'HSK3-188',690,'["3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23561,'假期','jià qī','vacation','kì nghỉ',3,NULL,'HSK3-189',691,'["3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23562,'坚持','jiān chí','to continue upholding','kiên trì',3,NULL,'HSK3-190',692,'["2.0 L4","3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23563,'检查','jiǎn chá','inspection','điều tra',3,NULL,'HSK3-191',693,'["2.0 L3","3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23564,'检票','jiǎn piào','to inspect a ticket','để kiểm tra vé',3,NULL,'HSK3-192',694,'["3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23565,'简单','jiǎn dān','simple','đơn giản',3,NULL,'HSK3-193',695,'["2.0 L3","3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23566,'见面','jiàn miàn','to meet','gặp mặt',3,NULL,'HSK3-194',696,'["2.0 L3","3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23567,'健康','jiàn kāng','health','khỏe mạnh',3,NULL,'HSK3-195',697,'["2.0 L3","3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23568,'讲','jiǎng','to speak','giảng, kể',3,NULL,'HSK3-196',698,'["2.0 L3","3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23569,'角','jiǎo','angle','góc, hào (tiền)',3,NULL,'HSK3-197',699,'["2.0 L3","3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23570,'脚','jiǎo','foot','chân',3,NULL,'HSK3-198',700,'["2.0 L3","3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23571,'接','jiē','to receive','đón',3,NULL,'HSK3-199',701,'["2.0 L3","3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23572,'街','jiē','street','phố',3,NULL,'HSK3-200',702,'["3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23573,'街道','jiē dào','street','phố',3,NULL,'HSK3-201',703,'["2.0 L3","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23574,'节','jié','festival','lễ hội',3,NULL,'HSK3-202',704,'["2.0 L4","3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23575,'节目','jié mù','program','tiết mục, chương trình',3,NULL,'HSK3-203',705,'["2.0 L3","3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23576,'节日','jié rì','holiday','lễ hội',3,NULL,'HSK3-204',706,'["2.0 L3","3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23577,'结婚','jié hūn','to marry','kết hôn',3,NULL,'HSK3-205',707,'["2.0 L3","3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23578,'结束','jié shù','to end; to finish','kết thúc',3,NULL,'HSK3-206',708,'["2.0 L3","3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23579,'姐妹','jiě mèi','sisters','chị em',3,NULL,'HSK3-207',709,'["3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23580,'解决','jiě jué','to settle (a dispute)','giải quyết',3,NULL,'HSK3-208',710,'["2.0 L3","3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23581,'借','jiè','to lend','mượn',3,NULL,'HSK3-209',711,'["2.0 L3","3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23582,'斤','jīn','catty','nhỏ nhắn',3,NULL,'HSK3-210',712,'["3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23583,'经过','jīng guò','to pass','đi qua, trải qua',3,NULL,'HSK3-211',713,'["2.0 L3","3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23584,'经理','jīng lǐ','manager','giám đốc',3,NULL,'HSK3-212',714,'["2.0 L3","3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23585,'久','jiǔ','(long) time','thời gian',3,NULL,'HSK3-213',715,'["2.0 L3","3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23586,'酒','jiǔ','wine (esp. rice wine)','rượu',3,NULL,'HSK3-214',716,'["3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23587,'旧','jiù','old','cũ',3,NULL,'HSK3-215',717,'["2.0 L3","3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23588,'句','gōu','Dictionary gloss under review','Từ điển chú giải đang được xem xét',3,NULL,'HSK3-216',718,'["3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23589,'句子','jù zi','sentence','câu',3,NULL,'HSK3-217',719,'["2.0 L3","3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23590,'决定','jué dìng','to decide (to do something)','quyết định',3,NULL,'HSK3-218',720,'["2.0 L3","3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23591,'卡','kǎ','to stop','dừng lại',3,NULL,'HSK3-219',721,'["3.0 L3","3.0 L7-9"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23592,'开花','kāi huā','to bloom; to blossom; to flower','nở hoa',3,NULL,'HSK3-220',722,'["3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23593,'开会','kāi huì','to hold a meeting; to have a meeting','tổ chức một cuộc họp',3,NULL,'HSK3-221',723,'["3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23594,'开机','kāi jī','to start an engine','để khởi động một động cơ',3,NULL,'HSK3-222',724,'["3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23595,'开心','kāi xīn','to feel happy','cảm thấy hạnh phúc',3,NULL,'HSK3-223',725,'["2.0 L4","3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23596,'看来','kàn lái','apparently','rõ ràng',3,NULL,'HSK3-224',726,'["3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23597,'可','kě','(prefix) can; may; able to; -able','Có thể',3,NULL,'HSK3-225',727,'["3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23598,'可爱','kě ài','amiable','dễ thương',3,NULL,'HSK3-226',728,'["2.0 L3","3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23599,'可是','kě shì','but','Nhưng',3,NULL,'HSK3-227',729,'["2.0 L4","3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23600,'渴','kě','thirsty','khát',3,NULL,'HSK3-228',730,'["2.0 L3","3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23601,'刻','kè','quarter (hour)','khắc (15 phút)',3,NULL,'HSK3-229',731,'["2.0 L3","3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23602,'客人','kè rén','visitor','khách',3,NULL,'HSK3-230',732,'["2.0 L3","3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23603,'课本','kè běn','textbook','sách giáo khoa',3,NULL,'HSK3-231',733,'["3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23604,'课文','kè wén','text','chữ',3,NULL,'HSK3-232',734,'["3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23605,'空调','kōng tiáo','air conditioning','điều hòa',3,NULL,'HSK3-233',735,'["2.0 L3","3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23606,'哭','kū','to cry','khóc',3,NULL,'HSK3-234',736,'["2.0 L3","3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23607,'筷子','kuài zi','chopsticks','đũa',3,NULL,'HSK3-235',737,'["2.0 L3","3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23608,'矿泉水','kuàng quán shuǐ','mineral spring water','nước suối khoáng',3,NULL,'HSK3-236',738,'["2.0 L4","3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23609,'来自','lái zì','to come from (a place)','đến từ',3,NULL,'HSK3-237',739,'["2.0 L4","3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23610,'蓝','lán','blue','(màu) xanh dương',3,NULL,'HSK3-238',740,'["2.0 L3","3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23611,'老','lǎo','prefix used before the surname of a person or a numeral indicating the order of birth of the children in a family or to indicate affection or familiarity','già',3,NULL,'HSK3-239',741,'["2.0 L3","3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23612,'老人','lǎo rén','old man or woman','ông già hay bà già',3,NULL,'HSK3-240',742,'["3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23613,'了解','liǎo jiě','to understand','để hiểu',3,NULL,'HSK3-241',743,'["2.0 L3","3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23614,'离开','lí kāi','to depart','rời khỏi',3,NULL,'HSK3-242',744,'["2.0 L3","3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23615,'礼物','lǐ wù','gift','quà tặng',3,NULL,'HSK3-243',745,'["2.0 L3","3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23616,'历史','lì shǐ','history','lịch sử',3,NULL,'HSK3-244',746,'["2.0 L3","3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23617,'脸','liǎn','face','mặt',3,NULL,'HSK3-245',747,'["2.0 L3","3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23618,'练','liàn','to practice','luyện tập',3,NULL,'HSK3-246',748,'["3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23619,'练习','liàn xí','exercise','luyện tập',3,NULL,'HSK3-247',749,'["2.0 L3","3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23620,'凉快','liáng kuai','nice and cold','đẹp và lạnh',3,NULL,'HSK3-248',750,'["2.0 L4","3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23621,'辆','liàng','classifier for vehicles','chiếc (lượng từ xe)',3,NULL,'HSK3-249',751,'["2.0 L3","3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23622,'聊','liáo','(coll.) to chat','để trò chuyện',3,NULL,'HSK3-250',752,'["3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23623,'聊天儿','liáo tiān r','Dictionary gloss under review','Từ điển chú giải đang được xem xét',3,NULL,'HSK3-251',753,'["3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23624,'邻居','lín jū','neighbor','hàng xóm',3,NULL,'HSK3-252',754,'["2.0 L3","3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23625,'留学','liú xué','to study abroad','du học',3,NULL,'HSK3-253',755,'["2.0 L3","3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23626,'留学生','liú xué shēng','student studying abroad; returned student; foreign student; international student','sinh viên du học',3,NULL,'HSK3-254',756,'["3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23627,'楼梯','lóu tī','stair','cầu thang',3,NULL,'HSK3-255',757,'["3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23628,'路边','lù biān','curb; roadside; wayside','lề đường',3,NULL,'HSK3-256',758,'["3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23629,'路口','lù kǒu','crossing','đi qua',3,NULL,'HSK3-257',759,'["3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23630,'马','mǎ','horse','ngựa',3,NULL,'HSK3-258',760,'["2.0 L3","3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23631,'马路','mǎ lù','street','đường phố',3,NULL,'HSK3-259',761,'["3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23632,'马上','mǎ shàng','at once, right away, immediately','ngay lập tức, ngay lập tức, ngay lập tức',3,NULL,'HSK3-260',762,'["2.0 L3","3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23633,'满意','mǎn yì','satisfied','hài lòng',3,NULL,'HSK3-261',763,'["2.0 L3","3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23634,'毛','máo','hair','tóc',3,NULL,'HSK3-262',764,'["2.0 L4","3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23635,'帽子','mào zi','hat','mũ',3,NULL,'HSK3-263',765,'["2.0 L3","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23636,'米','mǐ','rice','mét, gạo',3,NULL,'HSK3-264',766,'["2.0 L3","3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23637,'面前','miàn qián','in front of','trước mặt',3,NULL,'HSK3-265',767,'["3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23638,'名单','míng dān','list of names','danh sách tên',3,NULL,'HSK3-266',768,'["3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23639,'名人','míng rén','personage','nhân vật',3,NULL,'HSK3-267',769,'["3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23640,'明白','míng bai','clear','hiểu rõ',3,NULL,'HSK3-268',770,'["2.0 L3","3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23641,'男人','nán rén','a man','một người đàn ông',3,NULL,'HSK3-269',771,'["3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23642,'男生','nán shēng','schoolboy','cậu học sinh',3,NULL,'HSK3-270',772,'["3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23643,'南','nán','south','phía nam',3,NULL,'HSK3-271',773,'["2.0 L3","3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23644,'南方','nán fāng','the south; southern part','miền Nam',3,NULL,'HSK3-272',774,'["3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23645,'难','nán','difficult (to...)','khó',3,NULL,'HSK3-273',775,'["2.0 L3","3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23646,'难过','nán guò','feel sorry','buồn',3,NULL,'HSK3-274',776,'["2.0 L3","3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23647,'难看','nán kàn','ugly','xấu xí',3,NULL,'HSK3-275',777,'["3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23648,'难题','nán tí','difficult problem','vấn đề khó khăn',3,NULL,'HSK3-276',778,'["3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23649,'难听','nán tīng','unpleasant to hear','khó chịu khi nghe',3,NULL,'HSK3-277',779,'["3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23650,'年级','nián jí','grade','khối lớp',3,NULL,'HSK3-278',780,'["2.0 L3","3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23651,'年轻','nián qīng','young','trẻ tuổi',3,NULL,'HSK3-279',781,'["2.0 L3","3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23652,'牛','niú','ox','con bò đực',3,NULL,'HSK3-280',782,'["3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23653,'努力','nǔ lì','great effort','nỗ lực',3,NULL,'HSK3-281',783,'["2.0 L3","3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23654,'女人','nǚ rén','woman','đàn bà',3,NULL,'HSK3-282',784,'["3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23655,'女生','nǚ shēng','schoolgirl','nữ sinh',3,NULL,'HSK3-283',785,'["3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23656,'爬','pá','to crawl','bò',3,NULL,'HSK3-284',786,'["3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23657,'怕','pà','to be afraid','sợ hãi',3,NULL,'HSK3-285',787,'["3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23658,'拍照','pāi zhào','to take a picture','để chụp ảnh',3,NULL,'HSK3-286',788,'["3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23659,'盘子','pán zi','tray','cái đĩa',3,NULL,'HSK3-287',789,'["2.0 L3","3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23660,'胖','pàng','fat','mập',3,NULL,'HSK3-288',790,'["2.0 L3","3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23661,'皮鞋','pí xié','leather shoes','giày da',3,NULL,'HSK3-289',791,'["2.0 L3","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23662,'啤酒','pí jiǔ','beer','bia',3,NULL,'HSK3-290',792,'["2.0 L3","3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23663,'平时','píng shí','in normal times','ngày thường',3,NULL,'HSK3-291',793,'["2.0 L4","3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23664,'瓶子','píng zi','bottle','cái chai',3,NULL,'HSK3-292',794,'["2.0 L3","3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23665,'其实','qí shí','actually, in fact, really','thực ra, thực ra, thực sự',3,NULL,'HSK3-293',795,'["2.0 L3","3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23666,'其他','qí tā','other; else','khác',3,NULL,'HSK3-294',796,'["2.0 L3","3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23667,'奇怪','qí guài','strange','lạ lùng',3,NULL,'HSK3-295',797,'["2.0 L3","3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23668,'骑','qí','to ride (an animal or bike)','đi xe',3,NULL,'HSK3-296',798,'["2.0 L3","3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23669,'起','qǐ','to rise','tăng lên',3,NULL,'HSK3-297',799,'["3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23670,'起飞','qǐ fēi','to take off (in an airplane)','cất cánh',3,NULL,'HSK3-298',800,'["2.0 L3","3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23671,'汽车','qì chē','car','ô tô',3,NULL,'HSK3-299',801,'["3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23672,'前年','qián nián','the year before last','năm trước năm ngoái',3,NULL,'HSK3-300',802,'["3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23673,'前天','qián tiān','the day before yesterday','ngày hôm kia',3,NULL,'HSK3-301',803,'["3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23674,'清楚','qīng chu','clear; clearly; to understand','rõ ràng',3,NULL,'HSK3-302',804,'["2.0 L3","3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23675,'请假','qǐng jià','ask for time off','xin nghỉ phép',3,NULL,'HSK3-303',805,'["2.0 L3","3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23676,'请客','qǐng kè','give a dinner party','tổ chức một bữa tiệc tối',3,NULL,'HSK3-304',806,'["3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23677,'秋天','qiū tiān','autumn','mùa thu',3,NULL,'HSK3-305',807,'["3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23678,'球场','qiú chǎng','stadium','sân vận động',3,NULL,'HSK3-306',808,'["3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23679,'裙子','qún zi','skirt','váy',3,NULL,'HSK3-307',809,'["2.0 L3","3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23680,'然后','rán hòu','after','sau đó',3,NULL,'HSK3-308',810,'["2.0 L3","3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23681,'热情','rè qíng','cordial','nhiệt tình',3,NULL,'HSK3-309',811,'["2.0 L3","3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23682,'认得','rèn de','to recognize','để nhận ra',3,NULL,'HSK3-310',812,'["3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23683,'认为','rèn wéi','to believe','cho rằng',3,NULL,'HSK3-311',813,'["2.0 L3","3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23684,'认真','rèn zhēn','conscientious','nghiêm túc',3,NULL,'HSK3-312',814,'["2.0 L3","3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23685,'容易','róng yì','easy','dễ dàng',3,NULL,'HSK3-313',815,'["2.0 L3","3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23686,'如果','rú guǒ','if','nếu',3,NULL,'HSK3-314',816,'["2.0 L3","3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23687,'伞','sǎn','umbrella','ô, dù',3,NULL,'HSK3-315',817,'["2.0 L3","3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23688,'扫','sǎo','to sweep (with a brush or broom)','quét',3,NULL,'HSK3-316',818,'["3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23689,'沙发','shā fā','sofa','ghế sofa',3,NULL,'HSK3-317',819,'["2.0 L4","3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23690,'山','shān','(coll.) small bundle of straw for silkworms to spin cocoons on','bó rơm nhỏ để con tằm quay kén',3,NULL,'HSK3-318',820,'["3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23691,'上衣','shàng yī','jacket','áo khoác',3,NULL,'HSK3-319',821,'["3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23692,'勺子','sháo zi','scoop','muỗng',3,NULL,'HSK3-320',822,'["2.0 L4","3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23693,'身边','shēn biān','at one''s side','bên cạnh',3,NULL,'HSK3-321',823,'["3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23694,'身高','shēn gāo','(a person''s) height','chiều cao',3,NULL,'HSK3-322',824,'["3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23695,'生活','shēng huó','life','mạng sống',3,NULL,'HSK3-323',825,'["2.0 L4","3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23696,'生气','shēng qì','angry','tức giận',3,NULL,'HSK3-324',826,'["2.0 L3","3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23697,'声','shēng','sound','âm thanh',3,NULL,'HSK3-325',827,'["3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23698,'声音','shēng yīn','voice','âm thanh',3,NULL,'HSK3-326',828,'["2.0 L3","3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23699,'世界','shì jiè','world','thế giới',3,NULL,'HSK3-327',829,'["2.0 L3","3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23700,'市','shì','market','chợ',3,NULL,'HSK3-328',830,'["3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23701,'试','shì','to test','thử',3,NULL,'HSK3-329',831,'["2.0 L3","3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23702,'室','shì','room','phòng',3,NULL,'HSK3-330',832,'["3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23703,'收','shōu','to receive','để nhận',3,NULL,'HSK3-331',833,'["2.0 L4","3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23704,'收到','shōu dào','to receive','để nhận',3,NULL,'HSK3-332',834,'["3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23705,'受','shòu','to receive','để nhận',3,NULL,'HSK3-333',835,'["3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23706,'受到','shòu dào','to receive','để nhận',3,NULL,'HSK3-334',836,'["2.0 L4","3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23707,'瘦','shòu','tight','gầy',3,NULL,'HSK3-335',837,'["2.0 L3","3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23708,'叔叔','shū shu','father''s younger brother','chú',3,NULL,'HSK3-336',838,'["2.0 L3","3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23709,'树','shù','tree','cây',3,NULL,'HSK3-337',839,'["2.0 L3","3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23710,'数学','shù xué','mathematics','toán học',3,NULL,'HSK3-338',840,'["2.0 L3","3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23711,'刷','shuā','a brush','một bàn chải',3,NULL,'HSK3-339',841,'["3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23712,'双','shuāng','two','đôi',3,NULL,'HSK3-340',842,'["2.0 L3","3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23713,'水平','shuǐ píng','level (of achievement etc)','trình độ',3,NULL,'HSK3-341',843,'["2.0 L3","3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23714,'司机','sī jī','chauffeur','tài xế',3,NULL,'HSK3-342',844,'["2.0 L3","3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23715,'四季','sì jì','Dictionary gloss under review','Từ điển chú giải đang được xem xét',3,NULL,'HSK3-343',845,'["3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23716,'太阳','tài yáng','sun','mặt trời',3,NULL,'HSK3-344',846,'["2.0 L3","3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23717,'糖','táng','sugar','đường',3,NULL,'HSK3-345',847,'["2.0 L4","3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23718,'特别','tè bié','especially','đặc biệt',3,NULL,'HSK3-346',848,'["2.0 L3","3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23719,'提高','tí gāo','to raise; to improve; to increase','nâng cao',3,NULL,'HSK3-347',849,'["2.0 L3","3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23720,'体育','tǐ yù','sports','thể dục',3,NULL,'HSK3-348',850,'["2.0 L3","3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23721,'体育馆','tǐ yù guǎn','gym','phòng tập thể dục',3,NULL,'HSK3-349',851,'["3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23722,'甜','tián','sweet','ngọt',3,NULL,'HSK3-350',852,'["2.0 L3","3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23723,'跳','tiào','to jump','nhảy',3,NULL,'HSK3-351',853,'["3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23724,'听说','tīng shuō','to hear said; it is said; reportedly','nghe nói',3,NULL,'HSK3-352',854,'["3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23725,'挺','tǐng','to stick out','để dính ra',3,NULL,'HSK3-353',855,'["2.0 L4","3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23726,'同事','tóng shì','colleague','đồng nghiệp',3,NULL,'HSK3-354',856,'["2.0 L3","3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23727,'同意','tóng yì','to agree','đồng ý',3,NULL,'HSK3-355',857,'["2.0 L3","3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23728,'头发','tóu fa','hair (on the head)','tóc',3,NULL,'HSK3-356',858,'["2.0 L3","3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23729,'突然','tū rán','sudden','đột nhiên',3,NULL,'HSK3-357',859,'["2.0 L3","3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23730,'图书馆','tú shū guǎn','library','thư viện',3,NULL,'HSK3-358',860,'["2.0 L3","3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23731,'腿','tuǐ','leg','chân (cẳng)',3,NULL,'HSK3-359',861,'["2.0 L3","3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23732,'外地','wài dì','parts of the country other than where one is','nơi khác trong nước',3,NULL,'HSK3-360',862,'["3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23733,'外卖','wài mài','(of a restaurant) to provide a takeout or home delivery meal','bán đồ ăn mang về',3,NULL,'HSK3-361',863,'["3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23734,'外语','wài yǔ','foreign language','ngoại ngữ',3,NULL,'HSK3-362',864,'["3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23735,'完成','wán chéng','complete','hoàn thành',3,NULL,'HSK3-363',865,'["2.0 L3","3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23736,'晚点','wǎn diǎn','(of trains etc) late','muộn',3,NULL,'HSK3-364',866,'["3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23737,'晚会','wǎn huì','evening party','bữa tiệc tối',3,NULL,'HSK3-365',867,'["3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23738,'碗','wǎn','bowl','bát',3,NULL,'HSK3-366',868,'["2.0 L3","3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23739,'网球','wǎng qiú','tennis','quần vợt',3,NULL,'HSK3-367',869,'["2.0 L4","3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23740,'网站','wǎng zhàn','website','trang web',3,NULL,'HSK3-368',870,'["2.0 L4","3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23741,'忘记','wàng jì','to forget','quên',3,NULL,'HSK3-369',871,'["2.0 L3","3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23742,'卫生间','wèi shēng jiān','bathroom','phòng tắm',3,NULL,'HSK3-370',872,'["2.0 L4","3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23743,'为','wèi','because of','bởi vì',3,NULL,'HSK3-371',873,'["2.0 L3","3.0 L3","3.0 L4","3.0 L5"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23744,'为了','wèi le','in order to','để, vì',3,NULL,'HSK3-372',874,'["2.0 L3","3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23745,'文化','wén huà','culture','văn hoá',3,NULL,'HSK3-373',875,'["2.0 L3","3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23746,'屋子','wū zi','house','căn nhà',3,NULL,'HSK3-374',876,'["2.0 L5","3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23747,'西','xī','west','phía tây',3,NULL,'HSK3-375',877,'["2.0 L3","3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23748,'西北','xī běi','northwest','tây bắc',3,NULL,'HSK3-376',878,'["3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23749,'西方','Xī fāng','the West','phương Tây',3,NULL,'HSK3-377',879,'["3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23750,'西南','xī nán','southwest','tây nam',3,NULL,'HSK3-378',880,'["3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23751,'习惯','xí guàn','habit','thói quen, quen',3,NULL,'HSK3-379',881,'["2.0 L3","3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23752,'洗衣机','xǐ yī jī','washer','máy giặt',3,NULL,'HSK3-380',882,'["3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23753,'洗澡','xǐ zǎo','to bathe','tắm',3,NULL,'HSK3-381',883,'["2.0 L3","3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23754,'喜爱','xǐ ài','to like','thích',3,NULL,'HSK3-382',884,'["3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23755,'夏天','xià tiān','summer','mùa hè',3,NULL,'HSK3-383',885,'["3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23756,'先','xiān','early','trước',3,NULL,'HSK3-384',886,'["2.0 L3","3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23757,'相机','xiàng jī','at the opportune moment','máy ảnh',3,NULL,'HSK3-385',887,'["3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23758,'相信','xiāng xìn','be convinced (that something is true)','bị thuyết phục',3,NULL,'HSK3-386',888,'["2.0 L3","3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23759,'香蕉','xiāng jiāo','banana','chuối',3,NULL,'HSK3-387',889,'["2.0 L3","3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23760,'箱子','xiāng zi','suitcase','va li',3,NULL,'HSK3-388',890,'["3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23761,'向','xiàng','direction','hướng về',3,NULL,'HSK3-389',891,'["2.0 L3","3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23762,'像','xiàng','(look) like','giống',3,NULL,'HSK3-390',892,'["2.0 L3","3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23763,'小区','xiǎo qū','housing estate; community; neighborhood','nhà ở bất động sản',3,NULL,'HSK3-391',893,'["3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23764,'小心','xiǎo xīn','to be careful','hãy cẩn thận',3,NULL,'HSK3-392',894,'["2.0 L3","3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23765,'校园','xiào yuán','campus','khuôn viên đại học',3,NULL,'HSK3-393',895,'["3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23766,'校长','xiào zhǎng','(college, university) president','hiệu trưởng',3,NULL,'HSK3-394',896,'["2.0 L3","3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23767,'鞋','xié','shoe','giày',3,NULL,'HSK3-395',897,'["3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23768,'心里','xīn li','chest','ngực',3,NULL,'HSK3-396',898,'["3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23769,'新年','xīn nián','New Year','năm mới',3,NULL,'HSK3-397',899,'["3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23770,'新闻','xīn wén','news','tin tức',3,NULL,'HSK3-398',900,'["2.0 L3","3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23771,'新鲜','xīn xiān','fresh (experience, food etc)','tươi mới',3,NULL,'HSK3-399',901,'["2.0 L3","3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23772,'信','xìn','letter','thư, tin',3,NULL,'HSK3-400',902,'["3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23773,'信用卡','xìn yòng kǎ','credit card','thẻ tín dụng',3,NULL,'HSK3-401',903,'["2.0 L3","3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23774,'行','xíng','to walk','đi bộ',3,NULL,'HSK3-402',904,'["2.0 L4","3.0 L3","3.0 L5"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23775,'行李','xíng li','luggage','hành lý',3,NULL,'HSK3-403',905,'["3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23776,'兴趣','xìng qu','interest in (something)','hứng thú',3,NULL,'HSK3-404',906,'["3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23777,'休假','xiū jià','to go on vacation; to have a holiday; to take leave','đi nghỉ',3,NULL,'HSK3-405',907,'["3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23778,'需要','xū yào','to need','cần',3,NULL,'HSK3-406',908,'["2.0 L3","3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23779,'选','xuǎn','to choose','để lựa chọn',3,NULL,'HSK3-407',909,'["3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23780,'选择','xuǎn zé','to select','lựa chọn',3,NULL,'HSK3-408',910,'["2.0 L3","3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23781,'学期','xué qī','term','thuật ngữ',3,NULL,'HSK3-409',911,'["2.0 L4","3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23782,'牙','yá','tooth','răng',3,NULL,'HSK3-410',912,'["3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23783,'牙刷','yá shuā','toothbrush','bàn chải đánh răng',3,NULL,'HSK3-411',913,'["3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23784,'羊','yáng','sheep; goat','con cừu',3,NULL,'HSK3-412',914,'["3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23785,'养','yǎng','to raise (animals)','nâng cao',3,NULL,'HSK3-413',915,'["3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23786,'要求','yāo qiú','to request','yêu cầu',3,NULL,'HSK3-414',916,'["2.0 L3","3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23787,'页','yè','page','trang (sách)',3,NULL,'HSK3-415',917,'["2.0 L4","3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23788,'一般','yì bān','same','như nhau',3,NULL,'HSK3-416',918,'["2.0 L3","3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23789,'一边','yì biān','one side','một bên',3,NULL,'HSK3-417',919,'["2.0 L3","3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23790,'一定','yí dìng','surely','chắc chắn',3,NULL,'HSK3-418',920,'["2.0 L3","3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23791,'一共','yí gòng','altogether','tổng cộng',3,NULL,'HSK3-419',921,'["2.0 L3","3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23792,'一块儿','yī kuài r','Dictionary gloss under review','Từ điển chú giải đang được xem xét',3,NULL,'HSK3-420',922,'["3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23793,'一样','yí yàng','same','giống nhau',3,NULL,'HSK3-421',923,'["2.0 L3","3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23794,'一直','yī zhí','straight (in a straight line)','thẳng',3,NULL,'HSK3-422',924,'["2.0 L3","3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23795,'以后','yǐ hòu','after','sau đó',3,NULL,'HSK3-423',925,'["3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23796,'以前','yǐ qián','before','trước đây',3,NULL,'HSK3-424',926,'["2.0 L3","3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23797,'以上','yǐ shàng','that level or higher; that amount or more','mức đó hoặc cao hơn',3,NULL,'HSK3-425',927,'["3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23798,'以外','yǐ wài','except; other than; outside of','ngoại trừ',3,NULL,'HSK3-426',928,'["3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23799,'以为','yǐ wéi','to believe','cho rằng',3,NULL,'HSK3-427',929,'["2.0 L4","3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23800,'以下','yǐ xià','that level or lower','mức đó hoặc thấp hơn',3,NULL,'HSK3-428',930,'["3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23801,'音乐','yīn yuè','music','âm nhạc',3,NULL,'HSK3-429',931,'["2.0 L3","3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23802,'银行','yín háng','bank','ngân hàng',3,NULL,'HSK3-430',932,'["2.0 L3","3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23803,'银行卡','yín háng kǎ','bank card','thẻ ngân hàng',3,NULL,'HSK3-431',933,'["3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23804,'饮料','yǐn liào','drink','đồ uống',3,NULL,'HSK3-432',934,'["2.0 L3","3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23805,'应该','yīng gāi','ought to','nên',3,NULL,'HSK3-433',935,'["2.0 L3","3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23806,'影响','yǐng xiǎng','an influence','ảnh hưởng',3,NULL,'HSK3-434',936,'["2.0 L3","3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23807,'用','yòng','to use','dùng',3,NULL,'HSK3-435',937,'["2.0 L3","3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23808,'邮件','yóu jiàn','mail','thư',3,NULL,'HSK3-436',938,'["3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23809,'邮箱','yóu xiāng','mailbox','hộp thư',3,NULL,'HSK3-437',939,'["3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23810,'游客','yóu kè','traveler; tourist','du khách',3,NULL,'HSK3-438',940,'["3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23811,'游戏','yóu xì','game','trò chơi',3,NULL,'HSK3-439',941,'["2.0 L3","3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23812,'有关','yǒu guān','to have sth to do with','có liên quan gì đến',3,NULL,'HSK3-440',942,'["3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23813,'有名','yǒu míng','famous','nổi tiếng',3,NULL,'HSK3-441',943,'["2.0 L3","3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23814,'有用','yǒu yòng','useful','hữu ích',3,NULL,'HSK3-442',944,'["3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23815,'又','yòu','(once) again','lại',3,NULL,'HSK3-443',945,'["2.0 L3","3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23816,'羽毛球','yǔ máo qiú','shuttlecock','quả cầu',3,NULL,'HSK3-444',946,'["2.0 L4","3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23817,'雨衣','yǔ yī','raincoat','áo mưa',3,NULL,'HSK3-445',947,'["3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23818,'语言','yǔ yán','language','ngôn ngữ',3,NULL,'HSK3-446',948,'["2.0 L4","3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23819,'遇到','yù dào','to meet','gặp nhau',3,NULL,'HSK3-447',949,'["2.0 L3","3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23820,'遇见','yù jiàn','to meet','gặp nhau',3,NULL,'HSK3-448',950,'["3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23821,'员','yuán','(bound form) person engaged in a certain field of activity','người trong ngành',3,NULL,'HSK3-449',951,'["3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23822,'园','yuán','land used for growing plants','đất dùng để trồng cây',3,NULL,'HSK3-450',952,'["3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23823,'愿意','yuàn yì','to wish','ước',3,NULL,'HSK3-451',953,'["2.0 L3","3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23824,'月亮','yuè liang','moon','mặt trăng',3,NULL,'HSK3-452',954,'["2.0 L3","3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23825,'越','yuè','to exceed','càng',3,NULL,'HSK3-453',955,'["2.0 L3","3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23826,'运动会','yùn dòng huì','sports competition','cuộc thi thể thao',3,NULL,'HSK3-454',956,'["3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23827,'运动员','yùn dòng yuán','athlete','vận động viên',3,NULL,'HSK3-455',957,'["3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23828,'咱们','zán men','we or us (including both the speaker and the person(s) spoken to)','chúng ta (gồm người nghe)',3,NULL,'HSK3-456',958,'["2.0 L4","3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23829,'脏','zāng','dirty','bẩn',3,NULL,'HSK3-457',959,'["2.0 L4","3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23830,'怎么办','zěn me bàn','what''s to be done','làm sao đây',3,NULL,'HSK3-458',960,'["3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23831,'怎样','zěn yàng','how','Làm sao',3,NULL,'HSK3-459',961,'["3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23832,'张','zhāng','to open up','mở ra',3,NULL,'HSK3-460',962,'["2.0 L3","3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23833,'照','zhào','according to','theo',3,NULL,'HSK3-461',963,'["2.0 L4","3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23834,'照顾','zhào gu','to take care of','chăm sóc',3,NULL,'HSK3-462',964,'["2.0 L3","3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23835,'照片','zhào piàn','photo; photograph','ảnh',3,NULL,'HSK3-463',965,'["2.0 L3","3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23836,'照相','zhào xiàng','to take a photograph','để chụp ảnh',3,NULL,'HSK3-464',966,'["3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23837,'着急','zháo jí','to worry','sốt ruột',3,NULL,'HSK3-465',967,'["2.0 L3","3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23838,'直到','zhí dào','until','cho đến khi',3,NULL,'HSK3-466',968,'["3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23839,'只能','zhǐ néng','can only','chỉ có thể',3,NULL,'HSK3-467',969,'["3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23840,'只是','zhǐ shì','merely; only; just; nothing but','chỉ đơn thuần là',3,NULL,'HSK3-468',970,'["3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23841,'只要','zhǐ yào','if only','giá như',3,NULL,'HSK3-469',971,'["2.0 L4","3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23842,'只有','zhǐ yǒu','only have ...; there is only ...','chỉ có',3,NULL,'HSK3-470',972,'["3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23843,'纸','zhǐ','classifier for documents, letters etc','phân loại tài liệu, thư từ, v.v.',3,NULL,'HSK3-471',973,'["3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23844,'中','zhōng','within; among; in','giữa, trong',3,NULL,'HSK3-472',974,'["3.0 L3","3.0 L6"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23845,'中间','zhōng jiān','between','giữa',3,NULL,'HSK3-473',975,'["2.0 L3","3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23846,'终于','zhōng yú','at last','cuối cùng',3,NULL,'HSK3-474',976,'["2.0 L3","3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23847,'种','zhǒng','race','loại (lượng từ)',3,NULL,'HSK3-475',977,'["3.0 L3","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23848,'重要','zhòng yào','important','quan trọng',3,NULL,'HSK3-476',978,'["2.0 L3","3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23849,'周末','zhōu mò','weekend','cuối tuần',3,NULL,'HSK3-477',979,'["2.0 L3","3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23850,'主要','zhǔ yào','main','chủ yếu',3,NULL,'HSK3-478',980,'["2.0 L3","3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23851,'住院','zhù yuàn','to stay in hospital; to be hospitalized','ở lại bệnh viện',3,NULL,'HSK3-479',981,'["3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23852,'注意','zhù yì','to take note of','chú ý',3,NULL,'HSK3-480',982,'["2.0 L3","3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23853,'子','zǐ','son','con trai',3,NULL,'HSK3-481',983,'["3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23854,'字典','zì diǎn','dictionary','từ điển',3,NULL,'HSK3-482',984,'["3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23855,'自行车','zì xíng chē','bicycle','xe đạp',3,NULL,'HSK3-483',985,'["2.0 L3","3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23856,'总','zǒng','(bound form) general; overall','tổng quan',3,NULL,'HSK3-484',986,'["3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23857,'总是','zǒng shì','always','luôn luôn',3,NULL,'HSK3-485',987,'["2.0 L3","3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23858,'嘴','zuǐ','mouth','miệng',3,NULL,'HSK3-486',988,'["2.0 L3","3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23859,'最好','zuì hǎo','best','tốt nhất',3,NULL,'HSK3-487',989,'["2.0 L4","3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23860,'最后','zuì hòu','final','cuối cùng',3,NULL,'HSK3-488',990,'["2.0 L3","3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23861,'最近','zuì jìn','recent','gần đây',3,NULL,'HSK3-489',991,'["2.0 L3","3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23862,'作业','zuò yè','school assignment','bài tập',3,NULL,'HSK3-490',992,'["2.0 L3","3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23863,'做客','zuò kè','to be a guest or visitor','làm khách',3,NULL,'HSK3-491',993,'["3.0 L3"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23864,'爱情','ài qíng','romance','tình yêu',4,NULL,'HSK4-001',994,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23865,'爱心','ài xīn','compassion','lòng trắc ẩn',4,NULL,'HSK4-002',995,'["2.0 L5","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23866,'安检','ān jiǎn','to do a security check','để thực hiện kiểm tra an ninh',4,NULL,'HSK4-003',996,'["3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23867,'安排','ān pái','to arrange','sắp xếp',4,NULL,'HSK4-004',997,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23868,'按','àn','to press','nhấn',4,NULL,'HSK4-005',998,'["3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23869,'按时','àn shí','on time','đúng giờ',4,NULL,'HSK4-006',999,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23870,'按照','àn zhào','according to','theo',4,NULL,'HSK4-007',1000,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23871,'白酒','bái jiǔ','baijiu, a spirit usually distilled from sorghum','rượu trắng (bạch tửu)',4,NULL,'HSK4-008',1001,'["3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23872,'办公','bàn gōng','to handle official business (usu. in an office); to do (office) work','để xử lý công việc chính thức',4,NULL,'HSK4-009',1002,'["3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23873,'办理','bàn lǐ','to handle','để xử lý',4,NULL,'HSK4-010',1003,'["2.0 L5","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23874,'办事','bàn shì','to handle (affairs)','để xử lý',4,NULL,'HSK4-011',1004,'["3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23875,'棒','bàng','a stick','một cây gậy',4,NULL,'HSK4-012',1005,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23876,'保护','bǎo hù','to protect','để bảo vệ',4,NULL,'HSK4-013',1006,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23877,'保证','bǎo zhèng','guarantee','bảo đảm',4,NULL,'HSK4-014',1007,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23878,'报考','bào kǎo','to enter oneself for an examination','để vào chính mình để kiểm tra',4,NULL,'HSK4-015',1008,'["3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23879,'报名','bào míng','to sign up','để đăng ký',4,NULL,'HSK4-016',1009,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23880,'抱','bào','to hold','giữ',4,NULL,'HSK4-017',1010,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23881,'抱歉','bào qiàn','sorry','Xin lỗi',4,NULL,'HSK4-018',1011,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23882,'北部','běi bù','northern part','phần phía bắc',4,NULL,'HSK4-019',1012,'["3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23883,'背','bèi','the back of a body or object','mặt sau của cơ thể hoặc vật thể',4,NULL,'HSK4-020',1013,'["2.0 L5","3.0 L4","3.0 L5"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23884,'背包','bēi bāo','knapsack','ba lô',4,NULL,'HSK4-021',1014,'["3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23885,'倍','bèi','(two, three etc) -fold','-nếp gấp',4,NULL,'HSK4-022',1015,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23886,'本科','běn kē','undergraduate course','khóa học đại học',4,NULL,'HSK4-023',1016,'["2.0 L5","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23887,'本来','běn lái','original','nguyên bản',4,NULL,'HSK4-024',1017,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23888,'笨','bèn','stupid','ngốc nghếch',4,NULL,'HSK4-025',1018,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23889,'笔试','bǐ shì','written examination','kiểm tra viết',4,NULL,'HSK4-026',1019,'["3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23890,'毕业','bì yè','graduation','tốt nghiệp',4,NULL,'HSK4-027',1020,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23891,'毕业生','bì yè shēng','graduate','tốt nghiệp',4,NULL,'HSK4-028',1021,'["3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23892,'便于','biàn yú','easy to','dễ dàng để',4,NULL,'HSK4-029',1022,'["2.0 L6","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23893,'标准','biāo zhǔn','(an official) standard','tiêu chuẩn',4,NULL,'HSK4-030',1023,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23894,'表','biǎo','exterior surface','đồng hồ, bảng biểu',4,NULL,'HSK4-031',1024,'["3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23895,'表格','biǎo gé','form','hình thức',4,NULL,'HSK4-032',1025,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23896,'表示','biǎo shì','to express','biểu thị, bày tỏ',4,NULL,'HSK4-033',1026,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23897,'表现','biǎo xiàn','to show','để hiển thị',4,NULL,'HSK4-034',1027,'["2.0 L5","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23898,'表扬','biǎo yáng','to praise','khen ngợi',4,NULL,'HSK4-035',1028,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23899,'饼干','bǐng gān','biscuit','bánh quy',4,NULL,'HSK4-036',1029,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23900,'并','bìng','and','Và',4,NULL,'HSK4-037',1030,'["3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23901,'并且','bìng qiě','and','Và',4,NULL,'HSK4-038',1031,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23902,'播放','bō fàng','to broadcast','phát sóng',4,NULL,'HSK4-039',1032,'["2.0 L5","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23903,'博士','bó shì','doctor','bác sĩ',4,NULL,'HSK4-040',1033,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23904,'不必','bú bì','need not','không cần',4,NULL,'HSK4-041',1034,'["3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23905,'不便','bù biàn','inconvenient','bất tiện',4,NULL,'HSK4-042',1035,'["3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23906,'不得不','bù dé bù','have no choice or option but to','đành phải',4,NULL,'HSK4-043',1036,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23907,'不断','bú duàn','unceasing','không ngừng',4,NULL,'HSK4-044',1037,'["2.0 L5","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23908,'不够','bù gòu','not enough','không đủ',4,NULL,'HSK4-045',1038,'["3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23909,'不管','bù guǎn','no matter (what, how)','không vấn đề gì',4,NULL,'HSK4-046',1039,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23910,'不光','bù guāng','not the only one','không phải là người duy nhất',4,NULL,'HSK4-047',1040,'["3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23911,'不过','bú guò','only','chỉ một',4,NULL,'HSK4-048',1041,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23912,'不仅','bù jǐn','not only (this one)','không chỉ',4,NULL,'HSK4-049',1042,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23913,'不论','bù lùn','whatever','bất cứ điều gì',4,NULL,'HSK4-050',1043,'["3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23914,'不满','bù mǎn','dissatisfied; discontented; resentful','không hài lòng',4,NULL,'HSK4-051',1044,'["3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23915,'不如','bù rú','not equal to','không bằng',4,NULL,'HSK4-052',1045,'["2.0 L5","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23916,'步','bù','a step','một bước',4,NULL,'HSK4-053',1046,'["3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23917,'部','bù','ministry','bộ',4,NULL,'HSK4-054',1047,'["3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23918,'部分','bù fen','part','phần',4,NULL,'HSK4-055',1048,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23919,'部门','bù mén','department','phòng',4,NULL,'HSK4-056',1049,'["2.0 L5","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23920,'擦','cā','to wipe','lau',4,NULL,'HSK4-057',1050,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23921,'猜','cāi','to guess','đoán',4,NULL,'HSK4-058',1051,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23922,'材料','cái liào','material','vật liệu',4,NULL,'HSK4-059',1052,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23923,'参观','cān guān','to look around','nhìn xung quanh',4,NULL,'HSK4-060',1053,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23924,'参赛','cān sài','to compete','để cạnh tranh',4,NULL,'HSK4-061',1054,'["3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23925,'餐厅','cān tīng','dining-hall','phòng ăn',4,NULL,'HSK4-062',1055,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23926,'操场','cāo chǎng','playground','sân chơi',4,NULL,'HSK4-063',1056,'["2.0 L5","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23927,'厕所','cè suǒ','toilet','nhà vệ sinh',4,NULL,'HSK4-064',1057,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23928,'查看','chá kàn','to look over','nhìn qua',4,NULL,'HSK4-065',1058,'["3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23929,'查找','chá zhǎo','to search for','để tìm kiếm',4,NULL,'HSK4-066',1059,'["3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23930,'茶叶','chá yè','tea','trà',4,NULL,'HSK4-067',1060,'["3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23931,'差点儿','chà diǎn r','Dictionary gloss under review','Từ điển chú giải đang được xem xét',4,NULL,'HSK4-068',1061,'["3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23932,'产生','chǎn shēng','to arise','phát sinh',4,NULL,'HSK4-069',1062,'["2.0 L5","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23933,'厂','chǎng','factory','nhà máy',4,NULL,'HSK4-070',1063,'["3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23934,'场','chǎng','threshing floor','sân, buổi (lượng từ)',4,NULL,'HSK4-071',1064,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23935,'超过','chāo guò','to surpass','vượt quá',4,NULL,'HSK4-072',1065,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23936,'车速','chē sù','vehicle speed','tốc độ xe',4,NULL,'HSK4-073',1066,'["3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23937,'车位','chē wèi','parking spot','chỗ đậu xe',4,NULL,'HSK4-074',1067,'["3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23938,'成功','chéng gōng','success','thành công',4,NULL,'HSK4-075',1068,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23939,'成为','chéng wéi','to become','trở thành',4,NULL,'HSK4-076',1069,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23940,'诚实','chéng shí','honest','trung thực',4,NULL,'HSK4-077',1070,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23941,'城','chéng','city walls','tường thành',4,NULL,'HSK4-078',1071,'["3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23942,'乘','chéng','to ride','đi xe',4,NULL,'HSK4-079',1072,'["2.0 L6","3.0 L4","3.0 L6"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23943,'乘客','chéng kè','passenger','hành khách',4,NULL,'HSK4-080',1073,'["3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23944,'乘坐','chéng zuò','to ride (in a vehicle)','đi xe',4,NULL,'HSK4-081',1074,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23945,'吃惊','chī jīng','to be startled','bị giật mình',4,NULL,'HSK4-082',1075,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23946,'迟','chí','late','muộn',4,NULL,'HSK4-083',1076,'["3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23947,'出差','chū chāi','to go on an official or business trip','đi công tác hoặc đi công tác',4,NULL,'HSK4-084',1077,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23948,'出口','chū kǒu','an exit','một lối thoát',4,NULL,'HSK4-085',1078,'["2.0 L5","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23949,'出现','chū xiàn','to appear','xuất hiện',4,NULL,'HSK4-086',1079,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23950,'出行','chū xíng','to go out somewhere (relatively short trip)','đi chơi đâu đó',4,NULL,'HSK4-087',1080,'["3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23951,'出租','chū zū','to rent','thuê',4,NULL,'HSK4-088',1081,'["3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23952,'厨房','chú fáng','kitchen','nhà bếp',4,NULL,'HSK4-089',1082,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23953,'厨师','chú shī','cook','đầu bếp',4,NULL,'HSK4-090',1083,'["3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23954,'窗','chuāng','window','cửa sổ',4,NULL,'HSK4-091',1084,'["3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23955,'窗户','chuāng hu','window','cửa sổ',4,NULL,'HSK4-092',1085,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23956,'吹','chuī','to blow','thổi',4,NULL,'HSK4-093',1086,'["2.0 L5","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23957,'词语','cí yǔ','word (general term including monosyllables through to short phrases)','từ ngữ',4,NULL,'HSK4-094',1087,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23958,'此','cǐ','this; these','cái này',4,NULL,'HSK4-095',1088,'["3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23959,'此次','cǐ cì','this time','lần này',4,NULL,'HSK4-096',1089,'["3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23960,'此外','cǐ wài','besides','bên cạnh đó',4,NULL,'HSK4-097',1090,'["2.0 L5","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23961,'从此','cóng cǐ','from now on','kể từ bây giờ',4,NULL,'HSK4-098',1091,'["2.0 L5","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23962,'从来','cóng lái','always','luôn luôn',4,NULL,'HSK4-099',1092,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23963,'从中','cóng zhōng','from within','từ bên trong',4,NULL,'HSK4-100',1093,'["3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23964,'粗','cū','(of sth long) wide; thick','rộng',4,NULL,'HSK4-101',1094,'["3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23965,'粗心','cū xīn','careless','bất cẩn',4,NULL,'HSK4-102',1095,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23966,'村','cūn','village','làng bản',4,NULL,'HSK4-103',1096,'["3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23967,'存','cún','exist','hiện hữu',4,NULL,'HSK4-104',1097,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23968,'错过','cuò guò','to miss (train, opportunity etc)','bỏ lỡ',4,NULL,'HSK4-105',1098,'["3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23969,'错误','cuò wù','error','lỗi',4,NULL,'HSK4-106',1099,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23970,'达到','dá dào','to reach','để đạt được',4,NULL,'HSK4-107',1100,'["2.0 L5","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23971,'答','dā','Dictionary gloss under review','Từ điển chú giải đang được xem xét',4,NULL,'HSK4-108',1101,'["3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23972,'答案','dá àn','answer','trả lời',4,NULL,'HSK4-109',1102,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23973,'答应','dā ying','to promise','hứa',4,NULL,'HSK4-110',1103,'["2.0 L5","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23974,'打败','dǎ bài','to defeat','đánh bại',4,NULL,'HSK4-111',1104,'["3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23975,'打工','dǎ gōng','to work (do manual labor for a living)','đi làm',4,NULL,'HSK4-112',1105,'["2.0 L5","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23976,'打扰','dǎ rǎo','to disturb','làm phiền',4,NULL,'HSK4-113',1106,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23977,'打印','dǎ yìn','to print','in',4,NULL,'HSK4-114',1107,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23978,'打印机','dǎ yìn jī','printer','máy in',4,NULL,'HSK4-115',1108,'["3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23979,'打招呼','dǎ zhāo hu','to greet sb by word or action','chào hỏi',4,NULL,'HSK4-116',1109,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23980,'打折','dǎ zhé','to give a discount','để giảm giá',4,NULL,'HSK4-117',1110,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23981,'打针','dǎ zhēn','to give or have an injection','tiêm hoặc tiêm',4,NULL,'HSK4-118',1111,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23982,'大巴','dà bā','(coll.) large bus','xe buýt lớn',4,NULL,'HSK4-119',1112,'["3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23983,'大大','dà dà','greatly','rất nhiều',4,NULL,'HSK4-120',1113,'["3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23984,'大夫','dài fu','doctor','bác sĩ',4,NULL,'HSK4-121',1114,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23985,'大量','dà liàng','great amount','số lượng lớn',4,NULL,'HSK4-122',1115,'["3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23986,'大赛','dà sài','grand contest','cuộc thi lớn',4,NULL,'HSK4-123',1116,'["3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23987,'大厅','dà tīng','hall; concourse; public lounge; (hotel) lobby','sảnh',4,NULL,'HSK4-124',1117,'["3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23988,'大约','dà yuē','approximately','khoảng',4,NULL,'HSK4-125',1118,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23989,'大自然','dà zì rán','nature (the natural world)','thiên nhiên',4,NULL,'HSK4-126',1119,'["3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23990,'待','dāi','to stay; to remain','ở lại',4,NULL,'HSK4-127',1120,'["3.0 L4","3.0 L6"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23991,'袋子','dài zi','bag','cái túi',4,NULL,'HSK4-128',1121,'["3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23992,'戴','dài','to put on or wear (glasses, hat, gloves etc)','để mặc hoặc mặc',4,NULL,'HSK4-129',1122,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23993,'单位','dān wèi','a unit','một đơn vị',4,NULL,'HSK4-130',1123,'["2.0 L5","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23994,'弹','dàn','crossball','bóng chéo',4,NULL,'HSK4-131',1124,'["3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23995,'当','dāng','to be','được',4,NULL,'HSK4-132',1125,'["2.0 L4","3.0 L4","3.0 L5"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23996,'当时','dāng shí','then','sau đó',4,NULL,'HSK4-133',1126,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23997,'刀','dāo','knife','dao',4,NULL,'HSK4-134',1127,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23998,'导游','dǎo yóu','tour guide','hướng dẫn viên du lịch',4,NULL,'HSK4-135',1128,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (23999,'到底','dào dǐ','finally','Cuối cùng',4,NULL,'HSK4-136',1129,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24000,'到来','dào lái','to arrive','đến',4,NULL,'HSK4-137',1130,'["3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24001,'倒','dào','to move backwards','di chuyển về phía sau',4,NULL,'HSK4-138',1131,'["2.0 L4","3.0 L4","3.0 L5"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24002,'道','dào','(bound form) way; reason; principle','đường',4,NULL,'HSK4-139',1132,'["3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24003,'道路','dào lù','road','đường',4,NULL,'HSK4-140',1133,'["3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24004,'道歉','dào qiàn','to apologize','xin lỗi',4,NULL,'HSK4-141',1134,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24005,'得意','dé yì','proud of oneself','tự hào về bản thân',4,NULL,'HSK4-142',1135,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24006,'地球','dì qiú','the Earth','trái đất',4,NULL,'HSK4-143',1136,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24007,'地址','dì zhǐ','address','Địa chỉ',4,NULL,'HSK4-144',1137,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24008,'登机','dēng jī','to board a plane','lên máy bay',4,NULL,'HSK4-145',1138,'["3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24009,'等到','děng dào','to wait until','đợi cho đến khi',4,NULL,'HSK4-146',1139,'["3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24010,'低','dī','low','thấp',4,NULL,'HSK4-147',1140,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24011,'低价','dī jià','low price','giá thấp',4,NULL,'HSK4-148',1141,'["3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24012,'低温','dī wēn','low temperature','nhiệt độ thấp',4,NULL,'HSK4-149',1142,'["3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24013,'低于','dī yú','to be lower than','thấp hơn',4,NULL,'HSK4-150',1143,'["3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24014,'底','dǐ','background','lý lịch',4,NULL,'HSK4-151',1144,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24015,'底下','dǐ xia','the location below sth','vị trí bên dưới thứ gì đó',4,NULL,'HSK4-152',1145,'["3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24016,'点名','diǎn míng','roll call','điểm danh',4,NULL,'HSK4-153',1146,'["3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24017,'点头','diǎn tóu','to nod (the head)','gật đầu',4,NULL,'HSK4-154',1147,'["3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24018,'电动车','diàn dòng chē','electric vehicle (commonly refers to e-bikes, scooters or electric cars)','xe điện',4,NULL,'HSK4-155',1148,'["3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24019,'电视剧','diàn shì jù','TV series','phim truyền hình',4,NULL,'HSK4-156',1149,'["3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24020,'调查','diào chá','investigation','cuộc điều tra',4,NULL,'HSK4-157',1150,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24021,'掉','diào','to fall','rơi',4,NULL,'HSK4-158',1151,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24022,'订','dìng','to agree','đồng ý',4,NULL,'HSK4-159',1152,'["3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24023,'定','dìng','to fix; to set; to make definite','sửa chữa',4,NULL,'HSK4-160',1153,'["3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24024,'东部','dōng bù','the east','phía đông',4,NULL,'HSK4-161',1154,'["3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24025,'动车','dòng chē','(PRC) (D- or C-class) high-speed train','(hạng D hoặc hạng C) tàu cao tốc',4,NULL,'HSK4-162',1155,'["3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24026,'动作','dòng zuò','movement','sự chuyển động',4,NULL,'HSK4-163',1156,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24027,'读者','dú zhě','reader','người đọc',4,NULL,'HSK4-164',1157,'["3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24028,'堵车','dǔ chē','traffic jam','tắc đường',4,NULL,'HSK4-165',1158,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24029,'肚子','dù zi','belly','bụng',4,NULL,'HSK4-166',1159,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24030,'度假','dù jià','to go on holidays','đi nghỉ lễ',4,NULL,'HSK4-167',1160,'["3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24031,'短信','duǎn xìn','text message','tin nhắn văn bản',4,NULL,'HSK4-168',1161,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24032,'队','duì','squadron','phi đội',4,NULL,'HSK4-169',1162,'["3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24033,'队员','duì yuán','team member','thành viên trong nhóm',4,NULL,'HSK4-170',1163,'["3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24034,'队长','duì zhǎng','captain','đội trưởng',4,NULL,'HSK4-171',1164,'["3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24035,'对方','duì fāng','counterpart','đối tác',4,NULL,'HSK4-172',1165,'["2.0 L5","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24036,'对面','duì miàn','opposite','đối diện',4,NULL,'HSK4-173',1166,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24037,'对于','duì yú','regarding','về',4,NULL,'HSK4-174',1167,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24038,'顿','dùn','stop','dừng lại',4,NULL,'HSK4-175',1168,'["2.0 L5","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24039,'多数','duō shù','majority; most','số đông',4,NULL,'HSK4-176',1169,'["3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24040,'多样','duō yàng','diverse','phong phú',4,NULL,'HSK4-177',1170,'["3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24041,'儿童','ér tóng','child','đứa trẻ',4,NULL,'HSK4-178',1171,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24042,'而','ér','and','Và',4,NULL,'HSK4-179',1172,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24043,'发出','fā chū','to issue (an order, decree etc); to send out; to dispatch','phát hành',4,NULL,'HSK4-180',1173,'["3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24044,'发送','fā sòng','to transmit','để truyền tải',4,NULL,'HSK4-181',1174,'["3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24045,'法','fǎ','law','pháp luật',4,NULL,'HSK4-182',1175,'["3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24046,'法律','fǎ lǜ','law','pháp luật',4,NULL,'HSK4-183',1176,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24047,'翻译','fān yì','to translate','dịch',4,NULL,'HSK4-184',1177,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24048,'烦','fán','to feel vexed','cảm thấy bực tức',4,NULL,'HSK4-185',1178,'["3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24049,'烦恼','fán nǎo','agonize','làm khổ sở',4,NULL,'HSK4-186',1179,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24050,'反对','fǎn duì','to fight against','để chiến đấu chống lại',4,NULL,'HSK4-187',1180,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24051,'方面','fāng miàn','respect','sự tôn trọng',4,NULL,'HSK4-188',1181,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24052,'方式','fāng shì','way (of life)','đường',4,NULL,'HSK4-189',1182,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24053,'房东','fáng dōng','landlord','chủ nhà',4,NULL,'HSK4-190',1183,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24054,'房租','fáng zū','rent for a room or house','thuê phòng hoặc nhà',4,NULL,'HSK4-191',1184,'["3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24055,'放弃','fàng qì','to renounce','từ bỏ',4,NULL,'HSK4-192',1185,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24056,'放松','fàng sōng','to loosen','nới lỏng',4,NULL,'HSK4-193',1186,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24057,'费','fèi','to cost','chi phí',4,NULL,'HSK4-194',1187,'["3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24058,'费用','fèi yòng','cost','trị giá',4,NULL,'HSK4-195',1188,'["3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24059,'分数','fēn shù','(exam) grade','cấp',4,NULL,'HSK4-196',1189,'["3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24060,'分为','fēn wéi','to divide sth into (parts); to subdivide','chia cái gì đó thành',4,NULL,'HSK4-197',1190,'["3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24061,'份','fèn','part','phần',4,NULL,'HSK4-198',1191,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24062,'丰富','fēng fù','rich','phong phú',4,NULL,'HSK4-199',1192,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24063,'风景','fēng jǐng','scenery','phong cảnh',4,NULL,'HSK4-200',1193,'["2.0 L5","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24064,'否则','fǒu zé','if not','nếu không',4,NULL,'HSK4-201',1194,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24065,'符合','fú hé','in keeping with','phù hợp với',4,NULL,'HSK4-202',1195,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24066,'幅','fú','width','chiều rộng',4,NULL,'HSK4-203',1196,'["2.0 L5","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24067,'父母','fù mǔ','father and mother; parents','cha và mẹ',4,NULL,'HSK4-204',1197,'["3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24068,'父女','fù nǚ','father and daughter','cha và con gái',4,NULL,'HSK4-205',1198,'["3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24069,'父亲','fù qīn','father','bố',4,NULL,'HSK4-206',1199,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24070,'父子','fù zǐ','father and son','cha và con trai',4,NULL,'HSK4-207',1200,'["3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24071,'付','fù','to pay','trả tiền',4,NULL,'HSK4-208',1201,'["3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24072,'负责','fù zé','to be in charge of','phụ trách',4,NULL,'HSK4-209',1202,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24073,'负责人','fù zé rén','person in charge','người phụ trách',4,NULL,'HSK4-210',1203,'["3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24074,'复印','fù yìn','to photocopy','sao chụp',4,NULL,'HSK4-211',1204,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24075,'复杂','fù zá','complicated','phức tap',4,NULL,'HSK4-212',1205,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24076,'改','gǎi','to change','thay đổi',4,NULL,'HSK4-213',1206,'["3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24077,'改变','gǎi biàn','to change','thay đổi',4,NULL,'HSK4-214',1207,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24078,'赶','gǎn','to overtake; to catch up with','vượt qua',4,NULL,'HSK4-215',1208,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24079,'赶紧','gǎn jǐn','hurriedly','vội vã',4,NULL,'HSK4-216',1209,'["2.0 L5","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24080,'赶快','gǎn kuài','at once','cùng một lúc',4,NULL,'HSK4-217',1210,'["2.0 L5","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24081,'赶上','gǎn shàng','to keep up with','để theo kịp',4,NULL,'HSK4-218',1211,'["3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24082,'敢','gǎn','to dare','dám',4,NULL,'HSK4-219',1212,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24083,'感','gǎn','to feel','cảm nhận',4,NULL,'HSK4-220',1213,'["3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24084,'感动','gǎn dòng','to move (sb)','di chuyển',4,NULL,'HSK4-221',1214,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24085,'感觉','gǎn jué','to feel','cảm nhận',4,NULL,'HSK4-222',1215,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24086,'感情','gǎn qíng','feeling','cảm giác',4,NULL,'HSK4-223',1216,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24087,'感人','gǎn rén','touching; moving','chạm vào',4,NULL,'HSK4-224',1217,'["3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24088,'感受','gǎn shòu','to sense','để cảm nhận',4,NULL,'HSK4-225',1218,'["2.0 L5","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24089,'感谢','gǎn xiè','(express) thanks','Cảm ơn',4,NULL,'HSK4-226',1219,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24090,'干杯','gān bēi','to drink a toast','nâng ly chúc mừng',4,NULL,'HSK4-227',1220,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24091,'干活儿','gàn huó r','to work','đi làm',4,NULL,'HSK4-228',1221,'["2.0 L5","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24092,'钢琴','gāng qín','piano','đàn piano',4,NULL,'HSK4-229',1222,'["3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24093,'高价','gāo jià','high price','giá cao',4,NULL,'HSK4-230',1223,'["3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24094,'高考','gāo kǎo','college entrance exam','kỳ thi tuyển sinh đại học',4,NULL,'HSK4-231',1224,'["3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24095,'高速','gāo sù','high speed','tốc độ cao',4,NULL,'HSK4-232',1225,'["3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24096,'高温','gāo wēn','high temperature','nhiệt độ cao',4,NULL,'HSK4-233',1226,'["3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24097,'高于','gāo yú','greater than','lớn hơn',4,NULL,'HSK4-234',1227,'["3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24098,'胳膊','gē bo','arm','cánh tay',4,NULL,'HSK4-235',1228,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24099,'歌声','gē shēng','singing voice','giọng hát',4,NULL,'HSK4-236',1229,'["3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24100,'歌手','gē shǒu','singer','ca sĩ',4,NULL,'HSK4-237',1230,'["3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24101,'各','gè','each','mỗi',4,NULL,'HSK4-238',1231,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24102,'各地','gè dì','in all parts of (a country)','ở tất cả các phần của',4,NULL,'HSK4-239',1232,'["3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24103,'各个','gè gè','every','mọi',4,NULL,'HSK4-240',1233,'["3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24104,'各位','gè wèi','everybody','mọi người',4,NULL,'HSK4-241',1234,'["3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24105,'各种','gè zhǒng','every kind of; all kinds of; various','mọi loại',4,NULL,'HSK4-242',1235,'["3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24106,'更加','gèng jiā','more (than sth else)','hơn',4,NULL,'HSK4-243',1236,'["3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24107,'工厂','gōng chǎng','factory','nhà máy',4,NULL,'HSK4-244',1237,'["2.0 L5","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24108,'工人','gōng rén','worker','công nhân',4,NULL,'HSK4-245',1238,'["2.0 L5","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24109,'工资','gōng zī','wages','tiền lương',4,NULL,'HSK4-246',1239,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24110,'公共','gōng gòng','public; common; communal','công cộng',4,NULL,'HSK4-247',1240,'["3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24111,'公里','gōng lǐ','kilometer','cây số',4,NULL,'HSK4-248',1241,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24112,'公路','gōng lù','highway','đường cao tốc',4,NULL,'HSK4-249',1242,'["3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24113,'功夫','gōng fu','skill','kỹ năng',4,NULL,'HSK4-250',1243,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24114,'功课','gōng kè','schoolwork; homework; lessons','bài tập ở trường',4,NULL,'HSK4-251',1244,'["3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24115,'共','gòng','common','chung',4,NULL,'HSK4-252',1245,'["3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24116,'共同','gòng tóng','common','chung',4,NULL,'HSK4-253',1246,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24117,'购买','gòu mǎi','to purchase; to buy','mua',4,NULL,'HSK4-254',1247,'["3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24118,'购物','gòu wù','shopping','mua sắm',4,NULL,'HSK4-255',1248,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24119,'够','gòu','to reach','để đạt được',4,NULL,'HSK4-256',1249,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24120,'估计','gū jì','to estimate','để ước tính',4,NULL,'HSK4-257',1250,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24121,'姑娘','gū niang','girl','con gái',4,NULL,'HSK4-258',1251,'["2.0 L5","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24122,'鼓励','gǔ lì','to encourage','để khuyến khích',4,NULL,'HSK4-259',1252,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24123,'故意','gù yì','deliberately','cố tình',4,NULL,'HSK4-260',1253,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24124,'顾客','gù kè','client','khách hàng',4,NULL,'HSK4-261',1254,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24125,'挂','guà','to hang or suspend (from a hook etc)','treo hoặc đình chỉ',4,NULL,'HSK4-262',1255,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24126,'关键','guān jiàn','crucial point','điểm quan trọng',4,NULL,'HSK4-263',1256,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24127,'观看','guān kàn','to watch; to view','để xem',4,NULL,'HSK4-264',1257,'["3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24128,'观众','guān zhòng','spectators','khán giả',4,NULL,'HSK4-265',1258,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24129,'管','guǎn','to take care (of)','chăm sóc',4,NULL,'HSK4-266',1259,'["3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24130,'管理','guǎn lǐ','to manage; management','để quản lý',4,NULL,'HSK4-267',1260,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24131,'光','guāng','light','ánh sáng',4,NULL,'HSK4-268',1261,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24132,'广播','guǎng bō','broadcast','phát tin',4,NULL,'HSK4-269',1262,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24133,'广告','guǎng gào','to advertise','để quảng cáo',4,NULL,'HSK4-270',1263,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24134,'逛','guàng','to stroll','đi dạo',4,NULL,'HSK4-271',1264,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24135,'规定','guī dìng','provision','sự cung cấp',4,NULL,'HSK4-272',1265,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24136,'国籍','guó jí','nationality','quốc tịch',4,NULL,'HSK4-273',1266,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24137,'国际','guó jì','international','quốc tế',4,NULL,'HSK4-274',1267,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24138,'果汁','guǒ zhī','fruit juice','nước ép',4,NULL,'HSK4-275',1268,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24139,'过程','guò chéng','course of events','quá trình',4,NULL,'HSK4-276',1269,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24140,'咳','hāi','sound of sighing','tiếng thở dài',4,NULL,'HSK4-277',1270,'["3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24141,'咳嗽','ké sou','to cough','ho',4,NULL,'HSK4-278',1271,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24142,'海洋','hǎi yáng','ocean','đại dương',4,NULL,'HSK4-279',1272,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24143,'害羞','hài xiū','blush','đỏ mặt',4,NULL,'HSK4-280',1273,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24144,'寒假','hán jià','winter vacation','kỳ nghỉ đông',4,NULL,'HSK4-281',1274,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24145,'寒冷','hán lěng','cold (climate)','lạnh lẽo',4,NULL,'HSK4-282',1275,'["3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24146,'喊','hǎn','call','gọi',4,NULL,'HSK4-283',1276,'["2.0 L5","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24147,'汗','hàn','perspiration','mồ hôi',4,NULL,'HSK4-284',1277,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24148,'航班','háng bān','scheduled flight','chuyến bay theo lịch trình',4,NULL,'HSK4-285',1278,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24149,'好处','hǎo chu','benefit','lợi ích',4,NULL,'HSK4-286',1279,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24150,'好好','hǎo hǎo','well; carefully; nicely; properly','Tốt',4,NULL,'HSK4-287',1280,'["3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24151,'好笑','hǎo xiào','laughable; funny; ridiculous','buồn cười',4,NULL,'HSK4-288',1281,'["3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24152,'合格','hé gé','qualified','đạt tiêu chuẩn',4,NULL,'HSK4-289',1282,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24153,'盒子','hé zi','case','trường hợp',4,NULL,'HSK4-290',1283,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24154,'红包','hóng bāo','lit. money wrapped in red as a gift','thắp sáng. tiền bọc màu đỏ làm quà',4,NULL,'HSK4-291',1284,'["3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24155,'后悔','hòu huǐ','to regret','hối tiếc',4,NULL,'HSK4-292',1285,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24156,'厚','hòu','thick','dày',4,NULL,'HSK4-293',1286,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24157,'忽然','hū rán','suddenly','đột nhiên',4,NULL,'HSK4-294',1287,'["2.0 L5","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24158,'互联网','hù lián wǎng','the Internet','Internet',4,NULL,'HSK4-295',1288,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24159,'互相','hù xiāng','each other','nhau',4,NULL,'HSK4-296',1289,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24160,'护士','hù shi','nurse','y tá',4,NULL,'HSK4-297',1290,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24161,'话剧','huà jù','stage play','vở kịch sân khấu',4,NULL,'HSK4-298',1291,'["3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24162,'怀疑','huái yí','to doubt','nghi ngờ',4,NULL,'HSK4-299',1292,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24163,'坏处','huài chu','harm','làm hại',4,NULL,'HSK4-300',1293,'["3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24164,'环保','huán bǎo','environmental protection','bảo vệ môi trường',4,NULL,'HSK4-301',1294,'["3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24165,'换乘','huàn chéng','to change train (plane, bus etc)','đổi tàu',4,NULL,'HSK4-302',1295,'["3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24166,'回复','huí fù','to recover; to revert; to return to (good health, normal condition etc)','để phục hồi',4,NULL,'HSK4-303',1296,'["3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24167,'回信','huí xìn','to reply','trả lời',4,NULL,'HSK4-304',1297,'["3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24168,'回忆','huí yì','to recall','nhớ lại',4,NULL,'HSK4-305',1298,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24169,'会员','huì yuán','member','thành viên',4,NULL,'HSK4-306',1299,'["3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24170,'活','huó','to live','sống',4,NULL,'HSK4-307',1300,'["3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24171,'活动','huó dòng','to exercise','tập thể dục',4,NULL,'HSK4-308',1301,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24172,'活泼','huó po','lively','sống động',4,NULL,'HSK4-309',1302,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24173,'火','huǒ','fire','ngọn lửa',4,NULL,'HSK4-310',1303,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24174,'货','huò','goods','hàng hóa',4,NULL,'HSK4-311',1304,'["3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24175,'获得','huò dé','to obtain','để có được',4,NULL,'HSK4-312',1305,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24176,'获奖','huò jiǎng','to win an award','để giành được giải thưởng',4,NULL,'HSK4-313',1306,'["3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24177,'获取','huò qǔ','to gain; to get; to acquire','để đạt được',4,NULL,'HSK4-314',1307,'["3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24178,'积极','jī jí','active','tích cực',4,NULL,'HSK4-315',1308,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24179,'积累','jī lěi','to accumulate','tích lũy',4,NULL,'HSK4-316',1309,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24180,'基本','jī běn','basic','nền tảng',4,NULL,'HSK4-317',1310,'["2.0 L5","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24181,'基本上','jī běn shang','basically','về cơ bản',4,NULL,'HSK4-318',1311,'["3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24182,'基础','jī chǔ','base','căn cứ',4,NULL,'HSK4-319',1312,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24183,'激动','jī dòng','to excite','kích thích',4,NULL,'HSK4-320',1313,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24184,'及时','jí shí','in time','đúng lúc',4,NULL,'HSK4-321',1314,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24185,'即使','jí shǐ','even if','ngay cả khi',4,NULL,'HSK4-322',1315,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24186,'计划','jì huà','plan','kế hoạch',4,NULL,'HSK4-323',1316,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24187,'记者','jì zhě','reporter','phóng viên',4,NULL,'HSK4-324',1317,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24188,'技术','jì shù','technology','công nghệ',4,NULL,'HSK4-325',1318,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24189,'既','jì','already','đã',4,NULL,'HSK4-326',1319,'["3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24190,'既然','jì rán','since','từ',4,NULL,'HSK4-327',1320,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24191,'继续','jì xù','to continue; to go on','tiếp tục',4,NULL,'HSK4-328',1321,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24192,'寄','jì','to live (in a house)','sống',4,NULL,'HSK4-329',1322,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24193,'加班','jiā bān','to work overtime','làm việc ngoài giờ',4,NULL,'HSK4-330',1323,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24194,'加快','jiā kuài','to accelerate; to speed up; to hasten','tăng tốc',4,NULL,'HSK4-331',1324,'["3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24195,'加强','jiā qiáng','to reinforce; to strengthen; to enhance','để củng cố',4,NULL,'HSK4-332',1325,'["3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24196,'加入','jiā rù','to become a member','để trở thành thành viên',4,NULL,'HSK4-333',1326,'["3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24197,'加上','jiā shàng','plus','cộng thêm',4,NULL,'HSK4-334',1327,'["3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24198,'加油','jiā yóu','to add oil; to top up with gas; to refuel','thêm dầu',4,NULL,'HSK4-335',1328,'["3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24199,'加油站','jiā yóu zhàn','gas station','trạm xăng',4,NULL,'HSK4-336',1329,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24200,'家具','jiā jù','furniture','nội thất',4,NULL,'HSK4-337',1330,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24201,'家庭','jiā tíng','family','gia đình',4,NULL,'HSK4-338',1331,'["2.0 L5","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24202,'家乡','jiā xiāng','hometown','quê hương',4,NULL,'HSK4-339',1332,'["2.0 L5","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24203,'家长','jiā zhǎng','head of a household','chủ gia đình',4,NULL,'HSK4-340',1333,'["3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24204,'假','jiǎ','fake','giả mạo',4,NULL,'HSK4-341',1334,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24205,'假日','jià rì','a holiday; a day off','một kỳ nghỉ',4,NULL,'HSK4-342',1335,'["3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24206,'价格','jià gé','price','giá',4,NULL,'HSK4-343',1336,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24207,'价钱','jià qian','price','giá',4,NULL,'HSK4-344',1337,'["3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24208,'减','jiǎn','to lower','hạ thấp',4,NULL,'HSK4-345',1338,'["3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24209,'减轻','jiǎn qīng','to lighten','làm sáng tỏ',4,NULL,'HSK4-346',1339,'["3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24210,'减少','jiǎn shǎo','to lessen','giảm bớt',4,NULL,'HSK4-347',1340,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24211,'建议','jiàn yì','to propose','đề xuất',4,NULL,'HSK4-348',1341,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24212,'健身','jiàn shēn','to exercise','tập thể dục',4,NULL,'HSK4-349',1342,'["2.0 L5","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24213,'健身房','jiàn shēn fáng','gym','phòng tập thể dục',4,NULL,'HSK4-350',1343,'["3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24214,'江','jiāng','river','dòng sông',4,NULL,'HSK4-351',1344,'["3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24215,'将','jiāng','will','sẽ',4,NULL,'HSK4-352',1345,'["3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24216,'将来','jiāng lái','in the future','trong tương lai',4,NULL,'HSK4-353',1346,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24217,'将要','jiāng yào','will','sẽ',4,NULL,'HSK4-354',1347,'["3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24218,'奖','jiǎng','prize; award; bonus; reward','phần thưởng',4,NULL,'HSK4-355',1348,'["3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24219,'奖金','jiǎng jīn','premium','phần thưởng',4,NULL,'HSK4-356',1349,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24220,'奖学金','jiǎng xué jīn','scholarship','học bổng',4,NULL,'HSK4-357',1350,'["3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24221,'降','jiàng','to drop','thả',4,NULL,'HSK4-358',1351,'["3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24222,'降低','jiàng dī','to reduce','để giảm',4,NULL,'HSK4-359',1352,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24223,'降价','jiàng jià','to cut the price','để giảm giá',4,NULL,'HSK4-360',1353,'["3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24224,'降落','jiàng luò','to descend','đi xuống',4,NULL,'HSK4-361',1354,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24225,'降温','jiàng wēn','to become cooler','trở nên ngầu hơn',4,NULL,'HSK4-362',1355,'["3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24226,'交','jiāo','to hand over','bàn giao',4,NULL,'HSK4-363',1356,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24227,'交警','jiāo jǐng','Dictionary gloss under review','Từ điển chú giải đang được xem xét',4,NULL,'HSK4-364',1357,'["3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24228,'交流','jiāo liú','exchange','trao đổi',4,NULL,'HSK4-365',1358,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24229,'交通','jiāo tōng','to be connected','được kết nối',4,NULL,'HSK4-366',1359,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24230,'郊区','jiāo qū','suburban district','huyện ngoại thành',4,NULL,'HSK4-367',1360,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24231,'骄傲','jiāo ào','arrogant','kiêu ngạo',4,NULL,'HSK4-368',1361,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24232,'叫作','jiào zuò','to call','gọi',4,NULL,'HSK4-369',1362,'["3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24233,'教练','jiào liàn','coach; trainer','huấn luyện viên',4,NULL,'HSK4-370',1363,'["2.0 L5","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24234,'教师','jiào shī','teacher','giáo viên',4,NULL,'HSK4-371',1364,'["3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24235,'教授','jiào shòu','professor','giáo sư',4,NULL,'HSK4-372',1365,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24236,'教学','jiāo xué','to teach (as a professor)','dạy',4,NULL,'HSK4-373',1366,'["3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24237,'教育','jiào yù','to educate','để giáo dục',4,NULL,'HSK4-374',1367,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24238,'接受','jiē shòu','to accept','chấp nhận',4,NULL,'HSK4-375',1368,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24239,'接着','jiē zhe','to catch and hold on','để bắt và giữ',4,NULL,'HSK4-376',1369,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24240,'节假日','jié jià rì','public holiday','ngày nghỉ lễ',4,NULL,'HSK4-377',1370,'["3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24241,'节约','jié yuē','to economize','tiết kiệm',4,NULL,'HSK4-378',1371,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24242,'结果','jié guǒ','result','kết quả',4,NULL,'HSK4-379',1372,'["2.0 L4","3.0 L4","3.0 L6"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24243,'结账','jié zhàng','to pay the bill','để thanh toán hóa đơn',4,NULL,'HSK4-380',1373,'["2.0 L5","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24244,'解释','jiě shì','explanation','lời giải thích',4,NULL,'HSK4-381',1374,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24245,'今后','jīn hòu','hereafter','kiếp sau',4,NULL,'HSK4-382',1375,'["3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24246,'仅','jǐn','barely','hầu như không',4,NULL,'HSK4-383',1376,'["3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24247,'仅仅','jǐn jǐn','barely','hầu như không',4,NULL,'HSK4-384',1377,'["3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24248,'尽管','jǐn guǎn','despite','cho dù',4,NULL,'HSK4-385',1378,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24249,'紧张','jǐn zhāng','nervous','hồi hộp, căng thẳng',4,NULL,'HSK4-386',1379,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24250,'进入','jìn rù','to enter','để vào',4,NULL,'HSK4-387',1380,'["3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24251,'进行','jìn xíng','to advance','tiến lên',4,NULL,'HSK4-388',1381,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24252,'禁止','jìn zhǐ','to prohibit','cấm',4,NULL,'HSK4-389',1382,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24253,'京剧','Jīng jù','Beijing opera','kinh kịch',4,NULL,'HSK4-390',1383,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24254,'经济','jīng jì','economy','kinh tế',4,NULL,'HSK4-391',1384,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24255,'经历','jīng lì','experience','kinh nghiệm',4,NULL,'HSK4-392',1385,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24256,'经验','jīng yàn','to experience','để trải nghiệm',4,NULL,'HSK4-393',1386,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24257,'精彩','jīng cǎi','wonderful; brilliant; exciting','tuyệt vời',4,NULL,'HSK4-394',1387,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24258,'景点','jǐng diǎn','tourist attraction; scenic spot','địa điểm du lịch',4,NULL,'HSK4-395',1388,'["3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24259,'景区','jǐng qū','scenic area','khu danh lam thắng cảnh',4,NULL,'HSK4-396',1389,'["3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24260,'景色','jǐng sè','scenery','phong cảnh',4,NULL,'HSK4-397',1390,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24261,'警察','jǐng chá','police','cảnh sát',4,NULL,'HSK4-398',1391,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24262,'竞争','jìng zhēng','to compete','để cạnh tranh',4,NULL,'HSK4-399',1392,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24263,'竟然','jìng rán','unexpectedly','bất ngờ',4,NULL,'HSK4-400',1393,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24264,'镜子','jìng zi','mirror','gương',4,NULL,'HSK4-401',1394,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24265,'究竟','jiū jìng','after all (when all is said and done)','sau tất cả',4,NULL,'HSK4-402',1395,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24266,'就是','jiù shì','exactly; precisely; it is','chính xác',4,NULL,'HSK4-403',1396,'["3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24267,'举','jǔ','to lift','giơ, tổ chức',4,NULL,'HSK4-404',1397,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24268,'举办','jǔ bàn','to conduct','tiến hành',4,NULL,'HSK4-405',1398,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24269,'举例','jǔ lì','to give an example','để đưa ra một ví dụ',4,NULL,'HSK4-406',1399,'["3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24270,'举行','jǔ xíng','to hold (a meeting, ceremony etc)','giữ',4,NULL,'HSK4-407',1400,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24271,'拒绝','jù jué','to refuse','từ chối',4,NULL,'HSK4-408',1401,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24272,'剧院','jù yuàn','theater','nhà hát',4,NULL,'HSK4-409',1402,'["3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24273,'距离','jù lí','distance','khoảng cách',4,NULL,'HSK4-410',1403,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24274,'聚','jù','to assemble; to gather (transitive or intransitive)','để lắp ráp',4,NULL,'HSK4-411',1404,'["3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24275,'聚餐','jù cān','communal meal','bữa cơm chung',4,NULL,'HSK4-412',1405,'["3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24276,'聚会','jù huì','party','buổi tiệc',4,NULL,'HSK4-413',1406,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24277,'开玩笑','kāi wán xiào','to play a joke','để chơi một trò đùa',4,NULL,'HSK4-414',1407,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24278,'看法','kàn fǎ','way of looking at a thing','cách nhìn vào một sự vật',4,NULL,'HSK4-415',1408,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24279,'考虑','kǎo lǜ','to think over','suy nghĩ lại',4,NULL,'HSK4-416',1409,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24280,'考生','kǎo shēng','exam candidate','thí sinh thi',4,NULL,'HSK4-417',1410,'["3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24281,'烤','kǎo','to roast; to grill; to broil; to bake; to toast (bread)','nướng',4,NULL,'HSK4-418',1411,'["3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24282,'科技','kē jì','science and technology','khoa học và công nghệ',4,NULL,'HSK4-419',1412,'["3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24283,'科学','kē xué','science','khoa học',4,NULL,'HSK4-420',1413,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24284,'棵','kē','classifier for trees, cabbages, plants etc','phân loại cho cây, bắp cải, thực vật vv',4,NULL,'HSK4-421',1414,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24285,'可惜','kě xī','it is a pity','thật đáng tiếc',4,NULL,'HSK4-422',1415,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24286,'克','kè','to be able to','để có thể',4,NULL,'HSK4-423',1416,'["2.0 L5","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24287,'客气','kè qi','polite','lịch sự',4,NULL,'HSK4-424',1417,'["3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24288,'客厅','kè tīng','drawing room (room for arriving guests)','phòng vẽ',4,NULL,'HSK4-425',1418,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24289,'课程','kè chéng','course','khóa học',4,NULL,'HSK4-426',1419,'["2.0 L5","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24290,'课堂','kè táng','Dictionary gloss under review','Từ điển chú giải đang được xem xét',4,NULL,'HSK4-427',1420,'["3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24291,'肯定','kěn dìng','to be sure','để chắc chắn',4,NULL,'HSK4-428',1421,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24292,'空','kōng','empty','trống',4,NULL,'HSK4-429',1422,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24293,'空气','kōng qì','air','không khí',4,NULL,'HSK4-430',1423,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24294,'恐怕','kǒng pà','fear','nỗi sợ',4,NULL,'HSK4-431',1424,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24295,'口语','kǒu yǔ','colloquial speech','lời nói thông tục',4,NULL,'HSK4-432',1425,'["3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24296,'苦','kǔ','bitter','vị đắng',4,NULL,'HSK4-433',1426,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24297,'快餐','kuài cān','fast food','thức ăn nhanh',4,NULL,'HSK4-434',1427,'["3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24298,'快递','kuài dì','express delivery','chuyển phát nhanh',4,NULL,'HSK4-435',1428,'["3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24299,'快速','kuài sù','fast; high-speed; rapid','nhanh',4,NULL,'HSK4-436',1429,'["3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24300,'困','kùn','to trap','để bẫy',4,NULL,'HSK4-437',1430,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24301,'困难','kùn nan','(financial etc) difficulty','khó khăn',4,NULL,'HSK4-438',1431,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24302,'垃圾','lā jī','trash','rác',4,NULL,'HSK4-439',1432,'["3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24303,'拉','lā','to pull','kéo',4,NULL,'HSK4-440',1433,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24304,'辣','là','hot (spicy)','nóng',4,NULL,'HSK4-441',1434,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24305,'来不及','lái bu jí','there''s not enough time (to do sth)','không kịp',4,NULL,'HSK4-442',1435,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24306,'来得及','lái de jí','there''s still time','còn kịp',4,NULL,'HSK4-443',1436,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24307,'懒','lǎn','lazy','lười',4,NULL,'HSK4-444',1437,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24308,'浪费','làng fèi','to waste','lãng phí',4,NULL,'HSK4-445',1438,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24309,'浪漫','làng màn','romantic','lãng mạn',4,NULL,'HSK4-446',1439,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24310,'老虎','lǎo hǔ','tiger','con hổ',4,NULL,'HSK4-447',1440,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24311,'老家','lǎo jiā','native place','quê quán',4,NULL,'HSK4-448',1441,'["3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24312,'老年','lǎo nián','elderly','người già',4,NULL,'HSK4-449',1442,'["3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24313,'老是','lǎo shi','always','luôn luôn',4,NULL,'HSK4-450',1443,'["3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24314,'冷静','lěng jìng','calm','điềm tĩnh',4,NULL,'HSK4-451',1444,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24315,'礼貌','lǐ mào','courtesy','lịch sự',4,NULL,'HSK4-452',1445,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24316,'理发','lǐ fà','a barber','một thợ cắt tóc',4,NULL,'HSK4-453',1446,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24317,'理解','lǐ jiě','to comprehend','để hiểu',4,NULL,'HSK4-454',1447,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24318,'理想','lǐ xiǎng','a dream','một giấc mơ',4,NULL,'HSK4-455',1448,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24319,'力气','lì qi','strength','sức mạnh',4,NULL,'HSK4-456',1449,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24320,'厉害','lì hai','difficult to deal with','khó giải quyết',4,NULL,'HSK4-457',1450,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24321,'例如','lì rú','for example','Ví dụ',4,NULL,'HSK4-458',1451,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24322,'例子','lì zi','case','trường hợp',4,NULL,'HSK4-459',1452,'["3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24323,'俩','liǎ','both','cả hai',4,NULL,'HSK4-460',1453,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24324,'连','lián','to link','liên kết',4,NULL,'HSK4-461',1454,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24325,'联系','lián xì','connection','sự liên quan',4,NULL,'HSK4-462',1455,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24326,'凉','liáng','cool','mát mẻ',4,NULL,'HSK4-463',1456,'["3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24327,'亮','liàng','bright','sáng',4,NULL,'HSK4-464',1457,'["2.0 L5","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24328,'量','liáng','to measure','để đo',4,NULL,'HSK4-465',1458,'["3.0 L4","3.0 L5"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24329,'列','liè','to arrange','sắp xếp',4,NULL,'HSK4-466',1459,'["3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24330,'零花钱','líng huā qián','pocket money','tiền tiêu vặt',4,NULL,'HSK4-467',1460,'["3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24331,'零钱','líng qián','change (of money)','thay đổi',4,NULL,'HSK4-468',1461,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24332,'零食','líng shí','between-meal nibbles','nhấm nháp giữa bữa ăn',4,NULL,'HSK4-469',1462,'["2.0 L5","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24333,'零下','líng xià','below zero (esp. temperature)','dưới 0',4,NULL,'HSK4-470',1463,'["3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24334,'另','lìng','other','khác',4,NULL,'HSK4-471',1464,'["3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24335,'另外','lìng wài','additional','thêm vào',4,NULL,'HSK4-472',1465,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24336,'流','liú','to flow','chảy',4,NULL,'HSK4-473',1466,'["3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24337,'流利','liú lì','fluent','lưu loát',4,NULL,'HSK4-474',1467,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24338,'流行','liú xíng','to spread','lan rộng',4,NULL,'HSK4-475',1468,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24339,'留','liú','to leave (eg a message)','giữ lại, lưu',4,NULL,'HSK4-476',1469,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24340,'留下','liú xià','to leave behind','để lại phía sau',4,NULL,'HSK4-477',1470,'["3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24341,'路过','lù guò','to pass by or through','đi ngang qua hoặc xuyên qua',4,NULL,'HSK4-478',1471,'["3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24342,'旅馆','lǚ guǎn','hotel','khách sạn',4,NULL,'HSK4-479',1472,'["3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24343,'旅客','lǚ kè','traveler; tourist','du khách',4,NULL,'HSK4-480',1473,'["3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24344,'旅行','lǚ xíng','to travel','đi du lịch',4,NULL,'HSK4-481',1474,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24345,'律师','lǜ shī','lawyer','luật sư',4,NULL,'HSK4-482',1475,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24346,'乱','luàn','in confusion or disorder','trong sự nhầm lẫn hoặc rối loạn',4,NULL,'HSK4-483',1476,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24347,'落','là','to leave out','bỏ đi',4,NULL,'HSK4-484',1477,'["3.0 L4","3.0 L6"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24348,'麻烦','má fan','inconvenient','bất tiện',4,NULL,'HSK4-485',1478,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24349,'馒头','mán tou','steamed roll','cuộn hấp',4,NULL,'HSK4-486',1479,'["2.0 L5","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24350,'满','mǎn','full','đầy',4,NULL,'HSK4-487',1480,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24351,'毛巾','máo jīn','towel','cái khăn lau',4,NULL,'HSK4-488',1481,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24352,'毛衣','máo yī','(wool) sweater','áo len',4,NULL,'HSK4-489',1482,'["3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24353,'美','měi','beautiful','xinh đẹp',4,NULL,'HSK4-490',1483,'["3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24354,'美好','měi hǎo','beautiful','xinh đẹp',4,NULL,'HSK4-491',1484,'["3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24355,'美景','měi jǐng','beautiful scenery','phong cảnh đẹp',4,NULL,'HSK4-492',1485,'["3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24356,'美丽','měi lì','beautiful','xinh đẹp',4,NULL,'HSK4-493',1486,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24357,'美食','měi shí','culinary delicacy','ẩm thực ngon',4,NULL,'HSK4-494',1487,'["3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24358,'梦','mèng','dream','mơ',4,NULL,'HSK4-495',1488,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24359,'梦想','mèng xiǎng','to dream of','mơ về',4,NULL,'HSK4-496',1489,'["2.0 L5","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24360,'密码','mì mǎ','code','mã số',4,NULL,'HSK4-497',1490,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24361,'免费','miǎn fèi','free (of charge)','miễn phí',4,NULL,'HSK4-498',1491,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24362,'面对','miàn duì','to confront','đối đầu',4,NULL,'HSK4-499',1492,'["2.0 L5","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24363,'面试','miàn shì','to be interviewed (as a candidate)','được phỏng vấn',4,NULL,'HSK4-500',1493,'["3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24364,'秒','miǎo','second (of time)','thứ hai',4,NULL,'HSK4-501',1494,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24365,'民族','mín zú','nationality','quốc tịch',4,NULL,'HSK4-502',1495,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24366,'末','me','Dictionary gloss under review','Từ điển chú giải đang được xem xét',4,NULL,'HSK4-503',1496,'["3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24367,'母女','mǔ nǚ','mother and daughter','mẹ và con gái',4,NULL,'HSK4-504',1497,'["3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24368,'母亲','mǔ qīn','mother','mẹ',4,NULL,'HSK4-505',1498,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24369,'母子','mǔ zǐ','mother and child','mẹ và con',4,NULL,'HSK4-506',1499,'["3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24370,'目标','mù biāo','target','mục tiêu',4,NULL,'HSK4-507',1500,'["2.0 L5","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24371,'目的','mù dì','purpose','mục đích',4,NULL,'HSK4-508',1501,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24372,'目的地','mù dì dì','destination (location)','điểm đến',4,NULL,'HSK4-509',1502,'["3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24373,'目前','mù qián','at the present time','ở thời điểm hiện tại',4,NULL,'HSK4-510',1503,'["2.0 L5","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24374,'耐心','nài xīn','patient (adjective)','kiên nhẫn',4,NULL,'HSK4-511',1504,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24375,'男士','nán shì','man','người đàn ông',4,NULL,'HSK4-512',1505,'["3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24376,'男性','nán xìng','the male sex','giới tính nam',4,NULL,'HSK4-513',1506,'["3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24377,'南部','nán bù','southern part','phần phía nam',4,NULL,'HSK4-514',1507,'["3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24378,'难道','nán dào','don''t tell me ...','lẽ nào, chẳng lẽ',4,NULL,'HSK4-515',1508,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24379,'难受','nán shòu','to feel unwell','cảm thấy không khỏe',4,NULL,'HSK4-516',1509,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24380,'难忘','nán wàng','unforgettable','không thể nào quên',4,NULL,'HSK4-517',1510,'["3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24381,'内','nèi','inside','bên trong',4,NULL,'HSK4-518',1511,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24382,'内容','nèi róng','content','nội dung',4,NULL,'HSK4-519',1512,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24383,'内心','nèi xīn','heart; innermost being','trái tim',4,NULL,'HSK4-520',1513,'["3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24384,'能否','néng fǒu','whether or not','có hay không',4,NULL,'HSK4-521',1514,'["3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24385,'能够','néng gòu','to be capable of','có khả năng',4,NULL,'HSK4-522',1515,'["3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24386,'能力','néng lì','capability','khả năng',4,NULL,'HSK4-523',1516,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24387,'嗯','ńg','(a groaning sound)','ừ, ờ (thán từ)',4,NULL,'HSK4-524',1517,'["2.0 L5","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24388,'年底','nián dǐ','the end of the year','cuối năm',4,NULL,'HSK4-525',1518,'["3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24389,'年龄','nián líng','(a person''s) age','tuổi',4,NULL,'HSK4-526',1519,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24390,'农村','nóng cūn','rural area','khu vực nông thôn',4,NULL,'HSK4-527',1520,'["2.0 L5","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24391,'弄','nòng','to do','làm',4,NULL,'HSK4-528',1521,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24392,'女性','nǚ xìng','woman','đàn bà',4,NULL,'HSK4-529',1522,'["3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24393,'暖和','nuǎn huo','warm','ấm',4,NULL,'HSK4-530',1523,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24394,'偶尔','ǒu ěr','occasionally','thỉnh thoảng',4,NULL,'HSK4-531',1524,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24395,'拍','pāi','to pat','vỗ nhẹ',4,NULL,'HSK4-532',1525,'["2.0 L5","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24396,'排','pái','a row','một hàng',4,NULL,'HSK4-533',1526,'["3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24397,'排队','pái duì','to line up','xếp hàng',4,NULL,'HSK4-534',1527,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24398,'排球','pái qiú','volleyball','bóng chuyền',4,NULL,'HSK4-535',1528,'["3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24399,'牌','pái','Dictionary gloss under review','Từ điển chú giải đang được xem xét',4,NULL,'HSK4-536',1529,'["3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24400,'牌子','pái zi','sign','dấu hiệu',4,NULL,'HSK4-537',1530,'["3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24401,'判断','pàn duàn','to decide','quyết định',4,NULL,'HSK4-538',1531,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24402,'陪','péi','to accompany','đi cùng',4,NULL,'HSK4-539',1532,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24403,'批评','pī píng','to criticize','chỉ trích',4,NULL,'HSK4-540',1533,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24404,'皮肤','pí fū','skin','da',4,NULL,'HSK4-541',1534,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24405,'脾气','pí qi','temperament','tính khí',4,NULL,'HSK4-542',1535,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24406,'篇','piān','sheet','tờ giấy',4,NULL,'HSK4-543',1536,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24407,'片','piàn','thin piece','mảnh mỏng',4,NULL,'HSK4-544',1537,'["2.0 L5","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24408,'乒乓球','pīng pāng qiú','table tennis','bóng bàn',4,NULL,'HSK4-545',1538,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24409,'平常','píng cháng','ordinary','bình thường',4,NULL,'HSK4-546',1539,'["2.0 L5","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24410,'破','pò','broken','vỡ',4,NULL,'HSK4-547',1540,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24411,'葡萄','pú tao','grape','quả nho',4,NULL,'HSK4-548',1541,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24412,'葡萄酒','pú tao jiǔ','(grape) wine','rượu',4,NULL,'HSK4-549',1542,'["3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24413,'普遍','pǔ biàn','universal','phổ quát',4,NULL,'HSK4-550',1543,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24414,'普通','pǔ tōng','common','chung',4,NULL,'HSK4-551',1544,'["3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24415,'普通话','pǔ tōng huà','Mandarin (common language)','tiếng phổ thông',4,NULL,'HSK4-552',1545,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24416,'期','qī','a period of time','một khoảng thời gian',4,NULL,'HSK4-553',1546,'["3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24417,'期末','qī mò','the end of a term or semester (in school)','kết thúc một học kỳ hoặc học kỳ',4,NULL,'HSK4-554',1547,'["3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24418,'期中','qī zhōng','interim','tạm thời',4,NULL,'HSK4-555',1548,'["3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24419,'其次','qí cì','next','Kế tiếp',4,NULL,'HSK4-556',1549,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24420,'其中','qí zhōng','among','giữa',4,NULL,'HSK4-557',1550,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24421,'起到','qǐ dào','Dictionary gloss under review','Từ điển chú giải đang được xem xét',4,NULL,'HSK4-558',1551,'["3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24422,'气','qì','gas; air','khí đốt',4,NULL,'HSK4-559',1552,'["3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24423,'气候','qì hòu','climate','khí hậu',4,NULL,'HSK4-560',1553,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24424,'气温','qì wēn','air temperature','nhiệt độ không khí',4,NULL,'HSK4-561',1554,'["3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24425,'汽水','qì shuǐ','soda pop; carbonated soft drink','nước ngọt',4,NULL,'HSK4-562',1555,'["3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24426,'千克','qiān kè','kilogram','kg',4,NULL,'HSK4-563',1556,'["3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24427,'千万','qiān wàn','ten million','mười triệu',4,NULL,'HSK4-564',1557,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24428,'签证','qiān zhèng','visa','visa, thị thực',4,NULL,'HSK4-565',1558,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24429,'前方','qián fāng','ahead','phía trước',4,NULL,'HSK4-566',1559,'["3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24430,'前后','qián hòu','around','xung quanh',4,NULL,'HSK4-567',1560,'["3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24431,'强','jiàng','stubborn','bướng bỉnh',4,NULL,'HSK4-568',1561,'["3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24432,'敲','qiāo','extort','tống tiền',4,NULL,'HSK4-569',1562,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24433,'桥','qiáo','bridge','cầu',4,NULL,'HSK4-570',1563,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24434,'巧','qiǎo','opportunely','một cách thích hợp',4,NULL,'HSK4-571',1564,'["3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24435,'巧克力','qiǎo kè lì','chocolate (loanword)','sôcôla',4,NULL,'HSK4-572',1565,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24436,'亲戚','qīn qi','a relative (i.e. family relation)','một người thân',4,NULL,'HSK4-573',1566,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24437,'琴','qín','musical instrument in general','nhạc cụ nói chung',4,NULL,'HSK4-574',1567,'["3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24438,'青年','qīng nián','youth','thiếu niên',4,NULL,'HSK4-575',1568,'["3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24439,'轻','qīng','light','ánh sáng',4,NULL,'HSK4-576',1569,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24440,'轻松','qīng sōng','gentle','dịu dàng',4,NULL,'HSK4-577',1570,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24441,'情况','qíng kuàng','circumstances','trường hợp',4,NULL,'HSK4-578',1571,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24442,'庆祝','qìng zhù','celebrate','kỉ niệm',4,NULL,'HSK4-579',1572,'["2.0 L5","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24443,'球队','qiú duì','sports team (basketball, soccer, football etc)','đội thể thao',4,NULL,'HSK4-580',1573,'["3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24444,'球迷','qiú mí','soccer fan','người hâm mộ bóng đá',4,NULL,'HSK4-581',1574,'["2.0 L5","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24445,'区','qū','area','khu vực',4,NULL,'HSK4-582',1575,'["3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24446,'区别','qū bié','difference','sự khác biệt',4,NULL,'HSK4-583',1576,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24447,'取','qǔ','to take','lấy',4,NULL,'HSK4-584',1577,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24448,'取得','qǔ dé','to acquire; to get; to obtain','để có được',4,NULL,'HSK4-585',1578,'["3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24449,'取消','qǔ xiāo','to cancel','hủy bỏ',4,NULL,'HSK4-586',1579,'["2.0 L5","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24450,'全','quán','all','tất cả',4,NULL,'HSK4-587',1580,'["3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24451,'全部','quán bù','whole','trọn',4,NULL,'HSK4-588',1581,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24452,'全都','quán dōu','all','tất cả',4,NULL,'HSK4-589',1582,'["3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24453,'全球','quán qiú','the whole world','cả thế giới',4,NULL,'HSK4-590',1583,'["3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24454,'全身','quán shēn','the whole body','toàn bộ cơ thể',4,NULL,'HSK4-591',1584,'["3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24455,'缺','quē','deficiency','sự thiếu hụt',4,NULL,'HSK4-592',1585,'["3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24456,'缺点','quē diǎn','weak point','điểm yếu',4,NULL,'HSK4-593',1586,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24457,'缺少','quē shǎo','lack','thiếu',4,NULL,'HSK4-594',1587,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24458,'却','què','but','Nhưng',4,NULL,'HSK4-595',1588,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24459,'确实','què shí','indeed','thực vậy',4,NULL,'HSK4-596',1589,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24460,'然而','rán ér','however','Tuy nhiên',4,NULL,'HSK4-597',1590,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24461,'热闹','rè nao','bustling with noise and excitement','nhộn nhịp với sự ồn ào và phấn khích',4,NULL,'HSK4-598',1591,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24462,'人生','rén shēng','human life','cuộc sống con người',4,NULL,'HSK4-599',1592,'["2.0 L5","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24463,'人数','rén shù','number of people','số lượng người',4,NULL,'HSK4-600',1593,'["3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24464,'人员','rén yuán','staff','nhân viên',4,NULL,'HSK4-601',1594,'["2.0 L5","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24465,'任何','rèn hé','any','bất kì',4,NULL,'HSK4-602',1595,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24466,'任务','rèn wu','mission','Sứ mệnh',4,NULL,'HSK4-603',1596,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24467,'扔','rēng','to throw','ném',4,NULL,'HSK4-604',1597,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24468,'仍','réng','still; yet','vẫn',4,NULL,'HSK4-605',1598,'["3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24469,'仍然','réng rán','still','vẫn',4,NULL,'HSK4-606',1599,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24470,'日常','rì cháng','daily','hằng ngày',4,NULL,'HSK4-607',1600,'["2.0 L5","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24471,'日记','rì jì','diary','nhật ký',4,NULL,'HSK4-608',1601,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24472,'日期','rì qī','date','ngày',4,NULL,'HSK4-609',1602,'["2.0 L5","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24473,'日子','rì zi','day','ngày',4,NULL,'HSK4-610',1603,'["2.0 L5","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24474,'入','rù','to enter; to go into','để vào',4,NULL,'HSK4-611',1604,'["3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24475,'入口','rù kǒu','entrance','cổng vào',4,NULL,'HSK4-612',1605,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24476,'入学','rù xué','to enter a school or college','để vào một trường học hoặc cao đẳng',4,NULL,'HSK4-613',1606,'["3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24477,'入住','rù zhù','to check in (at a hotel etc); to move into (a house)','để đăng ký',4,NULL,'HSK4-614',1607,'["3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24478,'散步','sàn bù','to take a walk','đi dạo',4,NULL,'HSK4-615',1608,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24479,'扫码','sǎo mǎ','to scan a QR code or barcode','để quét mã QR hoặc mã vạch',4,NULL,'HSK4-616',1609,'["3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24480,'森林','sēn lín','forest','rừng',4,NULL,'HSK4-617',1610,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24481,'伤心','shāng xīn','to grieve','đau buồn',4,NULL,'HSK4-618',1611,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24482,'商量','shāng liang','to consult','để tư vấn',4,NULL,'HSK4-619',1612,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24483,'商品','shāng pǐn','good','Tốt',4,NULL,'HSK4-620',1613,'["2.0 L5","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24484,'上门','shàng mén','to drop in','ghé vào',4,NULL,'HSK4-621',1614,'["3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24485,'稍','shāo','somewhat','phần nào',4,NULL,'HSK4-622',1615,'["3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24486,'稍微','shāo wēi','a little bit','một chút',4,NULL,'HSK4-623',1616,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24487,'少见','shǎo jiàn','rare; seldom seen','hiếm',4,NULL,'HSK4-624',1617,'["3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24488,'少量','shǎo liàng','a smidgen','một đứa trẻ nhỏ',4,NULL,'HSK4-625',1618,'["3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24489,'少年','shào nián','early youth','tuổi trẻ sớm',4,NULL,'HSK4-626',1619,'["3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24490,'少数','shǎo shù','small number','số nhỏ',4,NULL,'HSK4-627',1620,'["3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24491,'社会','shè huì','society','xã hội',4,NULL,'HSK4-628',1621,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24492,'摄氏度','shè shì dù','degrees centigrade','độ C',4,NULL,'HSK4-629',1622,'["2.0 L6","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24493,'申请','shēn qǐng','to apply for sth','để nộp đơn xin việc gì đó',4,NULL,'HSK4-630',1623,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24494,'身','shēn','body','thân hình',4,NULL,'HSK4-631',1624,'["3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24495,'身份证','shēn fèn zhèng','identity card','chứng minh nhân dân',4,NULL,'HSK4-632',1625,'["3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24496,'深','shēn','close','đóng',4,NULL,'HSK4-633',1626,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24497,'甚至','shèn zhì','even','thậm chí',4,NULL,'HSK4-634',1627,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24498,'生','shēng','to be born','được sinh ra',4,NULL,'HSK4-635',1628,'["3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24499,'生命','shēng mìng','life','mạng sống',4,NULL,'HSK4-636',1629,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24500,'生意','shēng yì','life force','sinh lực',4,NULL,'HSK4-637',1630,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24501,'省','shěng','to save','để tiết kiệm',4,NULL,'HSK4-638',1631,'["2.0 L4","3.0 L4","3.0 L5"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24502,'剩','shèng','to remain','ở lại',4,NULL,'HSK4-639',1632,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24503,'失败','shī bài','to be defeated','bị đánh bại',4,NULL,'HSK4-640',1633,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24504,'失去','shī qù','to lose','thua',4,NULL,'HSK4-641',1634,'["2.0 L5","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24505,'失望','shī wàng','disappointed','thất vọng',4,NULL,'HSK4-642',1635,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24506,'师傅','shī fu','master','bậc thầy',4,NULL,'HSK4-643',1636,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24507,'师生','shī shēng','teachers and students','giáo viên và học sinh',4,NULL,'HSK4-644',1637,'["3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24508,'十分','shí fēn','to divide into ten equal parts','chia thành mười phần bằng nhau',4,NULL,'HSK4-645',1638,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24509,'十字路口','shí zì lù kǒu','crossroads','ngã tư',4,NULL,'HSK4-646',1639,'["3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24510,'时间表','shí jiān biǎo','schedule','lịch trình',4,NULL,'HSK4-647',1640,'["3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24511,'实际','shí jì','actual','thật sự',4,NULL,'HSK4-648',1641,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24512,'实际上','shí jì shàng','in fact','Trên thực tế',4,NULL,'HSK4-649',1642,'["3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24513,'实在','shí zài','in reality','trong thực tế',4,NULL,'HSK4-650',1643,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24514,'食品','shí pǐn','foodstuff','thực phẩm',4,NULL,'HSK4-651',1644,'["3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24515,'食堂','shí táng','dining hall; cafeteria','phòng ăn',4,NULL,'HSK4-652',1645,'["3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24516,'食物','shí wù','food','đồ ăn',4,NULL,'HSK4-653',1646,'["2.0 L5","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24517,'使','shǐ','to make','làm',4,NULL,'HSK4-654',1647,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24518,'使馆','shǐ guǎn','consulate','lãnh sự quán',4,NULL,'HSK4-655',1648,'["3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24519,'使用','shǐ yòng','to use','sử dụng',4,NULL,'HSK4-656',1649,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24520,'世纪','shì jì','century','thế kỷ',4,NULL,'HSK4-657',1650,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24521,'市场','shì chǎng','market place','chợ',4,NULL,'HSK4-658',1651,'["2.0 L5","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24522,'市区','shì qū','urban district','quận nội thành',4,NULL,'HSK4-659',1652,'["3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24523,'视频','shì pín','video','băng hình',4,NULL,'HSK4-660',1653,'["2.0 L6","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24524,'试题','shì tí','exam question','câu hỏi thi',4,NULL,'HSK4-661',1654,'["3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24525,'是否','shì fǒu','whether (or not)','liệu',4,NULL,'HSK4-662',1655,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24526,'适合','shì hé','to fit','để phù hợp',4,NULL,'HSK4-663',1656,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24527,'适应','shì yìng','to suit','cho phù hợp',4,NULL,'HSK4-664',1657,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24528,'收费','shōu fèi','to charge a fee','tính phí',4,NULL,'HSK4-665',1658,'["3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24529,'收入','shōu rù','to take in','để tham gia',4,NULL,'HSK4-666',1659,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24530,'收拾','shōu shi','to put in order','sắp xếp theo thứ tự',4,NULL,'HSK4-667',1660,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24531,'收听','shōu tīng','to listen to (a radio broadcast)','để lắng nghe',4,NULL,'HSK4-668',1661,'["3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24532,'首','shǒu','head','cái đầu',4,NULL,'HSK4-669',1662,'["2.0 L5","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24533,'首都','shǒu dū','capital (city)','thủ đô',4,NULL,'HSK4-670',1663,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24534,'首先','shǒu xiān','first (of all)','Đầu tiên',4,NULL,'HSK4-671',1664,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24535,'受不了','shòu bù liǎo','unbearable','không thể chịu nổi',4,NULL,'HSK4-672',1665,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24536,'受伤','shòu shāng','to sustain injuries','để duy trì vết thương',4,NULL,'HSK4-673',1666,'["2.0 L5","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24537,'售票员','shòu piào yuán','ticket seller','người bán vé',4,NULL,'HSK4-674',1667,'["3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24538,'输','shū','to lose','thua',4,NULL,'HSK4-675',1668,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24539,'熟','shú','ripe; mature','chín muồi',4,NULL,'HSK4-676',1669,'["3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24540,'熟悉','shú xī','to be familiar with','làm quen với',4,NULL,'HSK4-677',1670,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24541,'暑假','shǔ jià','summer vacation','kỳ nghỉ hè',4,NULL,'HSK4-678',1671,'["3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24542,'树林','shù lín','woods','rừng',4,NULL,'HSK4-679',1672,'["3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24543,'数','shǔ','to count','đếm',4,NULL,'HSK4-680',1673,'["2.0 L5","3.0 L4","3.0 L5"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24544,'数量','shù liàng','amount','số lượng',4,NULL,'HSK4-681',1674,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24545,'数字','shù zì','numeral','chữ số',4,NULL,'HSK4-682',1675,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24546,'帅','shuài','handsome','đẹp trai',4,NULL,'HSK4-683',1676,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24547,'顺便','shùn biàn','conveniently','thuận tiện',4,NULL,'HSK4-684',1677,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24548,'顺利','shùn lì','smoothly','suôn sẻ',4,NULL,'HSK4-685',1678,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24549,'顺序','shùn xù','sequence','sự liên tiếp',4,NULL,'HSK4-686',1679,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24550,'说法','shuō fǎ','to expound Buddhist teachings','giảng dạy giáo lý Phật giáo',4,NULL,'HSK4-687',1680,'["3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24551,'说明','shuō míng','to explain','để giải thích',4,NULL,'HSK4-688',1681,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24552,'说明书','shuō míng shū','(technical) manual','thủ công',4,NULL,'HSK4-689',1682,'["3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24553,'硕士','shuò shì','master''s degree','thạc sĩ',4,NULL,'HSK4-690',1683,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24554,'死','sǐ','to die','chết',4,NULL,'HSK4-691',1684,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24555,'速度','sù dù','speed','tốc độ',4,NULL,'HSK4-692',1685,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24556,'塑料','sù liào','plastic; plastics (general term for synthetic polymer materials)','nhựa',4,NULL,'HSK4-693',1686,'["3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24557,'酸','suān','sour','chua',4,NULL,'HSK4-694',1687,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24558,'酸奶','suān nǎi','yogurt','da ua',4,NULL,'HSK4-695',1688,'["3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24559,'算','suàn','regard as','coi như',4,NULL,'HSK4-696',1689,'["3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24560,'随便','suí biàn','as one wishes','như một người mong muốn',4,NULL,'HSK4-697',1690,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24561,'随着','suí zhe','along with','cùng với',4,NULL,'HSK4-698',1691,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24562,'孙女','sūn nǚ','son''s daughter','cháu gái (nội)',4,NULL,'HSK4-699',1692,'["3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24563,'孙子','sūn zi','grandson (paternal)','cháu trai',4,NULL,'HSK4-700',1693,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24564,'所有','suǒ yǒu','all','tất cả',4,NULL,'HSK4-701',1694,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24565,'台','tái','desk','bàn làm việc',4,NULL,'HSK4-702',1695,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24566,'抬','tái','to lift','nâng',4,NULL,'HSK4-703',1696,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24567,'抬头','tái tóu','to raise one''s head; to look up','ngẩng đầu',4,NULL,'HSK4-704',1697,'["3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24568,'态度','tài du','manner','thái độ',4,NULL,'HSK4-705',1698,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24569,'谈','tán','to talk','nói chuyện',4,NULL,'HSK4-706',1699,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24570,'汤','tāng','soup','canh',4,NULL,'HSK4-707',1700,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24571,'躺','tǎng','to recline','ngả lưng',4,NULL,'HSK4-708',1701,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24572,'趟','tàng','quantifier for the number of trips or runs made','lượng từ chuyến, lượt',4,NULL,'HSK4-709',1702,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24573,'讨论','tǎo lùn','to discuss','để thảo luận',4,NULL,'HSK4-710',1703,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24574,'讨厌','tǎo yàn','disgusting','kinh tởm',4,NULL,'HSK4-711',1704,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24575,'特点','tè diǎn','characteristic (feature)','đặc trưng',4,NULL,'HSK4-712',1705,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24576,'提','tí','to carry','mang theo',4,NULL,'HSK4-713',1706,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24577,'提出','tí chū','to raise (an issue)','nâng cao',4,NULL,'HSK4-714',1707,'["3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24578,'提到','tí dào','to mention','đề cập đến',4,NULL,'HSK4-715',1708,'["3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24579,'提供','tí gōng','to offer','cung cấp',4,NULL,'HSK4-716',1709,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24580,'提前','tí qián','to shift to an earlier date','để chuyển sang một ngày sớm hơn',4,NULL,'HSK4-717',1710,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24581,'提醒','tí xǐng','to remind','để nhắc nhở',4,NULL,'HSK4-718',1711,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24582,'体检','tǐ jiǎn','Dictionary gloss under review','Từ điển chú giải đang được xem xét',4,NULL,'HSK4-719',1712,'["3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24583,'体温','tǐ wēn','(body) temperature','nhiệt độ',4,NULL,'HSK4-720',1713,'["3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24584,'体重','tǐ zhòng','body weight','trọng lượng cơ thể',4,NULL,'HSK4-721',1714,'["3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24585,'填写','tián xiě','to fill in a form','để điền vào một mẫu đơn',4,NULL,'HSK4-722',1715,'["3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24586,'条件','tiáo jiàn','condition','tình trạng',4,NULL,'HSK4-723',1716,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24587,'听力','tīng lì','hearing','thính giác',4,NULL,'HSK4-724',1717,'["3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24588,'听众','tīng zhòng','audience','khán giả',4,NULL,'HSK4-725',1718,'["3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24589,'停','tíng','to stop','dừng lại',4,NULL,'HSK4-726',1719,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24590,'停车','tíng chē','to pull up (stop one''s vehicle)','đỗ xe, dừng xe',4,NULL,'HSK4-727',1720,'["3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24591,'停车场','tíng chē chǎng','parking lot','bãi đậu xe',4,NULL,'HSK4-728',1721,'["3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24592,'停止','tíng zhǐ','to stop','dừng lại',4,NULL,'HSK4-729',1722,'["3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24593,'通','tōng','to go through','đi qua',4,NULL,'HSK4-730',1723,'["3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24594,'通过','tōng guò','by means of','bằng cách',4,NULL,'HSK4-731',1724,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24595,'通知','tōng zhī','to notify','để thông báo',4,NULL,'HSK4-732',1725,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24596,'同时','tóng shí','at the same time','cùng lúc',4,NULL,'HSK4-733',1726,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24597,'同样','tóng yàng','same; equal; similar','như nhau',4,NULL,'HSK4-734',1727,'["3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24598,'童年','tóng nián','childhood','thời thơ ấu',4,NULL,'HSK4-735',1728,'["3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24599,'桶','tǒng','bucket','xô',4,NULL,'HSK4-736',1729,'["3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24600,'痛','tòng','ache','đau nhức',4,NULL,'HSK4-737',1730,'["3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24601,'头痛','tóu tòng','to have a headache','bị đau đầu',4,NULL,'HSK4-738',1731,'["3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24602,'图','tú','diagram','bản đồ, tranh',4,NULL,'HSK4-739',1732,'["3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24603,'图片','tú piàn','picture; photograph','hình ảnh',4,NULL,'HSK4-740',1733,'["3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24604,'土','tǔ','earth','trái đất',4,NULL,'HSK4-741',1734,'["3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24605,'推','tuī','to push','đẩy',4,NULL,'HSK4-742',1735,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24606,'推迟','tuī chí','to postpone','hoãn lại',4,NULL,'HSK4-743',1736,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24607,'推出','tuī chū','to push out','đẩy ra',4,NULL,'HSK4-744',1737,'["3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24608,'脱','tuō','to shed','đổ ra',4,NULL,'HSK4-745',1738,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24609,'袜子','wà zi','socks','vớ',4,NULL,'HSK4-746',1739,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24610,'外出','wài chū','to go out','đi ra ngoài',4,NULL,'HSK4-747',1740,'["3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24611,'外套','wài tào','outer garment; jacket; coat','quần áo bên ngoài',4,NULL,'HSK4-748',1741,'["3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24612,'完全','wán quán','complete','hoàn thành',4,NULL,'HSK4-749',1742,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24613,'晚安','wǎn ān','Good night!','Chúc ngủ ngon!',4,NULL,'HSK4-750',1743,'["3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24614,'晚餐','wǎn cān','evening meal; dinner','bữa tối',4,NULL,'HSK4-751',1744,'["3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24615,'网购','wǎng gòu','Internet shopping','mua sắm trên mạng',4,NULL,'HSK4-752',1745,'["3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24616,'网页','wǎng yè','web page','trang web',4,NULL,'HSK4-753',1746,'["3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24617,'网友','wǎng yǒu','online friend','người bạn trực tuyến',4,NULL,'HSK4-754',1747,'["3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24618,'网址','wǎng zhǐ','website','trang web',4,NULL,'HSK4-755',1748,'["3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24619,'往往','wǎng wǎng','often','thường',4,NULL,'HSK4-756',1749,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24620,'危险','wēi xiǎn','danger','sự nguy hiểm',4,NULL,'HSK4-757',1750,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24621,'卫生','wèi shēng','hygienic; sanitary','hợp vệ sinh',4,NULL,'HSK4-758',1751,'["3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24622,'味','wèi','taste','nếm',4,NULL,'HSK4-759',1752,'["3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24623,'味道','wèi dào','flavor','mùi vị',4,NULL,'HSK4-760',1753,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24624,'温度','wēn dù','temperature','nhiệt độ',4,NULL,'HSK4-761',1754,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24625,'文件','wén jiàn','document; file','tài liệu',4,NULL,'HSK4-762',1755,'["2.0 L5","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24626,'文章','wén zhāng','article','bài văn',4,NULL,'HSK4-763',1756,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24627,'文字','wén zì','character','tính cách',4,NULL,'HSK4-764',1757,'["2.0 L5","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24628,'闻','wén','to hear','nghe',4,NULL,'HSK4-765',1758,'["2.0 L5","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24629,'污染','wū rǎn','pollution','ô nhiễm',4,NULL,'HSK4-766',1759,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24630,'无','wú','-less','-ít hơn',4,NULL,'HSK4-767',1760,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24631,'无法','wú fǎ','unable to; incapable of','không thể',4,NULL,'HSK4-768',1761,'["3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24632,'无聊','wú liáo','nonsense','điều vô lý',4,NULL,'HSK4-769',1762,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24633,'无论','wú lùn','no matter what or how','bất kể điều gì và như thế nào',4,NULL,'HSK4-770',1763,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24634,'午餐','wǔ cān','lunch','bữa trưa',4,NULL,'HSK4-771',1764,'["3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24635,'误会','wù huì','to misunderstand','hiểu lầm',4,NULL,'HSK4-772',1765,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24636,'吸','xī','to breathe','thở',4,NULL,'HSK4-773',1766,'["3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24637,'吸引','xī yǐn','to attract (interest, investment etc)','để thu hút',4,NULL,'HSK4-774',1767,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24638,'西部','xī bù','western part','phần phía tây',4,NULL,'HSK4-775',1768,'["3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24639,'西红柿','xī hóng shì','tomato','cà chua',4,NULL,'HSK4-776',1769,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24640,'细','xì','thin or slender','mỏng hoặc mảnh khảnh',4,NULL,'HSK4-777',1770,'["3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24641,'细心','xì xīn','meticulous; careful; attentive','tỉ mỉ',4,NULL,'HSK4-778',1771,'["3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24642,'下降','xià jiàng','to decline','từ chối',4,NULL,'HSK4-779',1772,'["3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24643,'鲜','xiān','fresh','tươi',4,NULL,'HSK4-780',1773,'["3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24644,'鲜花','xiān huā','flower','hoa',4,NULL,'HSK4-781',1774,'["3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24645,'咸','xián','salty','mặn',4,NULL,'HSK4-782',1775,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24646,'现金','xiàn jīn','cash','tiền mặt',4,NULL,'HSK4-783',1776,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24647,'现有','xiàn yǒu','currently existing','hiện đang tồn tại',4,NULL,'HSK4-784',1777,'["3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24648,'线上','xiàn shàng','online','trực tuyến',4,NULL,'HSK4-785',1778,'["3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24649,'线下','xiàn xià','offline','ngoại tuyến',4,NULL,'HSK4-786',1779,'["3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24650,'羡慕','xiàn mù','envious','ghen tị',4,NULL,'HSK4-787',1780,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24651,'相比','xiāng bǐ','to compare with; compared with','để so sánh với',4,NULL,'HSK4-788',1781,'["3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24652,'相反','xiāng fǎn','opposite','đối diện',4,NULL,'HSK4-789',1782,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24653,'相互','xiāng hù','each other','nhau',4,NULL,'HSK4-790',1783,'["3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24654,'相同','xiāng tóng','identical','giống hệt nhau',4,NULL,'HSK4-791',1784,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24655,'香','xiāng','fragrant','thơm',4,NULL,'HSK4-792',1785,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24656,'详细','xiáng xì','detailed','chi tiết',4,NULL,'HSK4-793',1786,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24657,'响','xiǎng','to make a sound','để tạo ra âm thanh',4,NULL,'HSK4-794',1787,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24658,'想法','xiǎng fǎ','way of thinking; opinion; notion','cách suy nghĩ',4,NULL,'HSK4-795',1788,'["3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24659,'项','xiàng','neck','cổ',4,NULL,'HSK4-796',1789,'["2.0 L5","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24660,'消息','xiāo xi','news','tin tức',4,NULL,'HSK4-797',1790,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24661,'小吃','xiǎo chī','snack','đồ ăn vặt',4,NULL,'HSK4-798',1791,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24662,'小伙子','xiǎo huǒ zi','lad','thanh niên',4,NULL,'HSK4-799',1792,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24663,'小说','xiǎo shuō','novel','cuốn tiểu thuyết',4,NULL,'HSK4-800',1793,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24664,'小组','xiǎo zǔ','group','nhóm',4,NULL,'HSK4-801',1794,'["3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24665,'效果','xiào guǒ','result','kết quả',4,NULL,'HSK4-802',1795,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24666,'笑话','xiào huà','joke','câu nói đùa',4,NULL,'HSK4-803',1796,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24667,'心','xīn','heart','trái tim',4,NULL,'HSK4-804',1797,'["3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24668,'心情','xīn qíng','mood','tâm trạng',4,NULL,'HSK4-805',1798,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24669,'辛苦','xīn kǔ','hard','cứng',4,NULL,'HSK4-806',1799,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24670,'信号','xìn hào','signal','tín hiệu',4,NULL,'HSK4-807',1800,'["2.0 L5","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24671,'信息','xìn xī','information','thông tin',4,NULL,'HSK4-808',1801,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24672,'信心','xìn xīn','confidence','sự tự tin',4,NULL,'HSK4-809',1802,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24673,'星星','xīng xing','(coll.) a star; the stars in the sky','một ngôi sao',4,NULL,'HSK4-810',1803,'["3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24674,'醒','xǐng','to wake up','thức dậy',4,NULL,'HSK4-811',1804,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24675,'兴奋','xīng fèn','excited','hào hứng',4,NULL,'HSK4-812',1805,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24676,'幸福','xìng fú','blessed','may mắn',4,NULL,'HSK4-813',1806,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24677,'性','xìng','nature','thiên nhiên',4,NULL,'HSK4-814',1807,'["3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24678,'性别','xìng bié','gender','giới tính',4,NULL,'HSK4-815',1808,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24679,'性格','xìng gé','nature','thiên nhiên',4,NULL,'HSK4-816',1809,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24680,'兄弟','xiōng dì','older and younger brother','anh trai và em trai',4,NULL,'HSK4-817',1810,'["2.0 L5","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24681,'熊','xióng','bear','con gấu',4,NULL,'HSK4-818',1811,'["3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24682,'修','xiū','to mend','sửa chữa',4,NULL,'HSK4-819',1812,'["3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24683,'修理','xiū lǐ','to repair','sửa chữa',4,NULL,'HSK4-820',1813,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24684,'许多','xǔ duō','many','nhiều',4,NULL,'HSK4-821',1814,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24685,'学费','xué fèi','tuition fee','học phí',4,NULL,'HSK4-822',1815,'["3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24686,'学院','xué yuàn','college','trường cao đẳng',4,NULL,'HSK4-823',1816,'["3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24687,'血','xuè','blood','máu',4,NULL,'HSK4-824',1817,'["2.0 L5","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24688,'压','yā','to press','nhấn',4,NULL,'HSK4-825',1818,'["3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24689,'压力','yā lì','pressure','áp lực',4,NULL,'HSK4-826',1819,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24690,'牙膏','yá gāo','toothpaste','kem đánh răng',4,NULL,'HSK4-827',1820,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24691,'亚洲','Yà zhōu','Asia','Châu Á',4,NULL,'HSK4-828',1821,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24692,'烟','yān','cigarette or pipe tobacco','thuốc lá hoặc thuốc tẩu',4,NULL,'HSK4-829',1822,'["3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24693,'严格','yán gé','strict','nghiêm ngặt',4,NULL,'HSK4-830',1823,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24694,'严重','yán zhòng','grave','phần mộ',4,NULL,'HSK4-831',1824,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24695,'研究','yán jiū','research','nghiên cứu',4,NULL,'HSK4-832',1825,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24696,'研究生','yán jiū shēng','graduate student','sinh viên tốt nghiệp',4,NULL,'HSK4-833',1826,'["3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24697,'盐','yán','salt','muối',4,NULL,'HSK4-834',1827,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24698,'眼镜','yǎn jìng','spectacles','kính đeo mắt',4,NULL,'HSK4-835',1828,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24699,'眼前','yǎn qián','before one''s eyes','trước mắt',4,NULL,'HSK4-836',1829,'["3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24700,'演','yǎn','to perform (a play etc); to stage (a show)','để thực hiện',4,NULL,'HSK4-837',1830,'["3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24701,'演唱','yǎn chàng','to sing (for an audience)','hát',4,NULL,'HSK4-838',1831,'["3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24702,'演出','yǎn chū','to act (in a play)','hành động',4,NULL,'HSK4-839',1832,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24703,'演员','yǎn yuán','actor or actress','diễn viên hoặc nữ diễn viên',4,NULL,'HSK4-840',1833,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24704,'阳光','yáng guāng','sunshine','ánh nắng mặt trời',4,NULL,'HSK4-841',1834,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24705,'养成','yǎng chéng','to cultivate','trồng trọt',4,NULL,'HSK4-842',1835,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24706,'样子','yàng zi','manner','thái độ',4,NULL,'HSK4-843',1836,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24707,'邀请','yāo qǐng','to invite','mời',4,NULL,'HSK4-844',1837,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24708,'要是','yào shi','if','nếu như',4,NULL,'HSK4-845',1838,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24709,'钥匙','yào shi','key','chìa khóa',4,NULL,'HSK4-846',1839,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24710,'也许','yě xǔ','perhaps','có lẽ',4,NULL,'HSK4-847',1840,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24711,'叶子','yè zi','foliage','tán lá',4,NULL,'HSK4-848',1841,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24712,'夜','yè','night','đêm',4,NULL,'HSK4-849',1842,'["2.0 L5","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24713,'夜晚','yè wǎn','night','đêm',4,NULL,'HSK4-850',1843,'["3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24714,'一切','yī qiè','everything','mọi thứ',4,NULL,'HSK4-851',1844,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24715,'一生','yī shēng','all one''s life; throughout one''s life','cả đời',4,NULL,'HSK4-852',1845,'["3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24716,'已','yǐ','already','đã',4,NULL,'HSK4-853',1846,'["3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24717,'以内','yǐ nèi','within','ở trong',4,NULL,'HSK4-854',1847,'["3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24718,'艺术','yì shù','art','nghệ thuật',4,NULL,'HSK4-855',1848,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24719,'意见','yì jiàn','idea','ý tưởng',4,NULL,'HSK4-856',1849,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24720,'因此','yīn cǐ','thus','do đó',4,NULL,'HSK4-857',1850,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24721,'引起','yǐn qǐ','to give rise to','làm phát sinh',4,NULL,'HSK4-858',1851,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24722,'印象','yìn xiàng','impression','ấn tượng',4,NULL,'HSK4-859',1852,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24723,'应聘','yìng pìn','to accept a job offer','chấp nhận lời mời làm việc',4,NULL,'HSK4-860',1853,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24724,'赢','yíng','to beat','đánh bại',4,NULL,'HSK4-861',1854,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24725,'赢得','yíng dé','to win','để giành chiến thắng',4,NULL,'HSK4-862',1855,'["3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24726,'永远','yǒng yuǎn','forever','mãi mãi',4,NULL,'HSK4-863',1856,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24727,'勇敢','yǒng gǎn','brave','can đảm',4,NULL,'HSK4-864',1857,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24728,'用来','yòng lái','to be used for','được sử dụng cho',4,NULL,'HSK4-865',1858,'["3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24729,'用于','yòng yú','to use in; to use on; to use for','để sử dụng trong',4,NULL,'HSK4-866',1859,'["3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24730,'优点','yōu diǎn','merit','công lao',4,NULL,'HSK4-867',1860,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24731,'优秀','yōu xiù','outstanding','nổi bật',4,NULL,'HSK4-868',1861,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24732,'幽默','yōu mò','humor','hài hước',4,NULL,'HSK4-869',1862,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24733,'尤其','yóu qí','especially','đặc biệt',4,NULL,'HSK4-870',1863,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24734,'由','yóu','to follow','đi theo',4,NULL,'HSK4-871',1864,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24735,'由于','yóu yú','due to','bởi vì',4,NULL,'HSK4-872',1865,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24736,'油','yóu','oil','dầu',4,NULL,'HSK4-873',1866,'["3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24737,'游玩','yóu wán','to amuse oneself','để giải trí',4,NULL,'HSK4-874',1867,'["3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24738,'友好','yǒu hǎo','friendly','thân thiện',4,NULL,'HSK4-875',1868,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24739,'友情','yǒu qíng','friendly feelings','tình cảm thân thiện',4,NULL,'HSK4-876',1869,'["3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24740,'友谊','yǒu yì','companionship','tình bạn',4,NULL,'HSK4-877',1870,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24741,'有趣','yǒu qù','interesting','hấp dẫn',4,NULL,'HSK4-878',1871,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24742,'有效','yǒu xiào','effective','hiệu quả',4,NULL,'HSK4-879',1872,'["3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24743,'有着','yǒu zhe','to have','có',4,NULL,'HSK4-880',1873,'["3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24744,'于是','yú shì','thereupon','sau đó',4,NULL,'HSK4-881',1874,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24745,'愉快','yú kuài','cheerful','vui vẻ',4,NULL,'HSK4-882',1875,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24746,'与','yǔ','to give','để cho',4,NULL,'HSK4-883',1876,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24747,'语法','yǔ fǎ','grammar','ngữ pháp',4,NULL,'HSK4-884',1877,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24748,'预习','yù xí','to prepare a lesson','để chuẩn bị một bài học',4,NULL,'HSK4-885',1878,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24749,'原来','yuán lái','original','nguyên bản',4,NULL,'HSK4-886',1879,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24750,'原谅','yuán liàng','to excuse','xin lỗi',4,NULL,'HSK4-887',1880,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24751,'原因','yuán yīn','reason; cause','lý do',4,NULL,'HSK4-888',1881,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24752,'远离','yuǎn lí','to be far from','phải xa',4,NULL,'HSK4-889',1882,'["3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24753,'院长','yuàn zhǎng','Dictionary gloss under review','Từ điển chú giải đang được xem xét',4,NULL,'HSK4-890',1883,'["3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24754,'院子','yuàn zi','courtyard','sân',4,NULL,'HSK4-891',1884,'["3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24755,'约','yāo','to weigh in a balance or on a scale','cân',4,NULL,'HSK4-892',1885,'["3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24756,'约会','yuē huì','appointment','cuộc hẹn',4,NULL,'HSK4-893',1886,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24757,'月饼','yuè bǐng','mooncake (esp. for the Mid-Autumn Festival)','bánh trung thu',4,NULL,'HSK4-894',1887,'["3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24758,'月份','yuè fèn','month','tháng',4,NULL,'HSK4-895',1888,'["3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24759,'阅读','yuè dú','to read','đọc',4,NULL,'HSK4-896',1889,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24760,'云','yún','cloud','mây',4,NULL,'HSK4-897',1890,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24761,'允许','yǔn xǔ','to permit','cho phép',4,NULL,'HSK4-898',1891,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24762,'杂志','zá zhì','magazine','tạp chí',4,NULL,'HSK4-899',1892,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24763,'再次','zài cì','once more; once again','một lần nữa',4,NULL,'HSK4-900',1893,'["3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24764,'再说','zài shuō','to say again','nói lại',4,NULL,'HSK4-901',1894,'["3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24765,'暂时','zàn shí','temporary','tạm thời',4,NULL,'HSK4-902',1895,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24766,'暂停','zàn tíng','to suspend','đình chỉ',4,NULL,'HSK4-903',1896,'["3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24767,'早餐','zǎo cān','breakfast','bữa sáng',4,NULL,'HSK4-904',1897,'["3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24768,'早晨','zǎo chén','early morning','sáng sớm',4,NULL,'HSK4-905',1898,'["3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24769,'责任','zé rèn','responsibility','trách nhiệm',4,NULL,'HSK4-906',1899,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24770,'增加','zēng jiā','to raise','nâng cao',4,NULL,'HSK4-907',1900,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24771,'增长','zēng zhǎng','to grow','phát triển',4,NULL,'HSK4-908',1901,'["3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24772,'招聘','zhāo pìn','recruitment','tuyển dụng',4,NULL,'HSK4-909',1902,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24773,'者','zhě','(after a verb or adjective) one who (is) ...','một người (là)...',4,NULL,'HSK4-910',1903,'["3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24774,'着火','zháo huǒ','to catch fire','để bắt lửa',4,NULL,'HSK4-911',1904,'["2.0 L5","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24775,'真正','zhēn zhèng','genuine','thành thật',4,NULL,'HSK4-912',1905,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24776,'整','zhěng','(bound form) whole; complete; entire; (before a measure word) whole; (before or after number + measure word) exactly','trọn',4,NULL,'HSK4-913',1906,'["3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24777,'整个','zhěng gè','whole','trọn',4,NULL,'HSK4-914',1907,'["2.0 L5","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24778,'整理','zhěng lǐ','to arrange','sắp xếp',4,NULL,'HSK4-915',1908,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24779,'正常','zhèng cháng','normal; regular','Bình thường',4,NULL,'HSK4-916',1909,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24780,'正好','zhèng hǎo','just (in time)','chỉ',4,NULL,'HSK4-917',1910,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24781,'正确','zhèng què','correct','Chính xác',4,NULL,'HSK4-918',1911,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24782,'正式','zhèng shì','formal','chính thức',4,NULL,'HSK4-919',1912,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24783,'证','zhèng','certificate','giấy chứng nhận',4,NULL,'HSK4-920',1913,'["3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24784,'证件','zhèng jiàn','paperwork','giấy tờ',4,NULL,'HSK4-921',1914,'["2.0 L5","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24785,'证明','zhèng míng','proof','bằng chứng',4,NULL,'HSK4-922',1915,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24786,'之','zhī','him','anh ta',4,NULL,'HSK4-923',1916,'["2.0 L4","3.0 L4","3.0 L7-9"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24787,'之后','zhī hòu','after; behind','sau đó',4,NULL,'HSK4-924',1917,'["3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24788,'之间','zhī jiān','(after a noun) between; among; amid','giữa',4,NULL,'HSK4-925',1918,'["3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24789,'之前','zhī qián','before','trước',4,NULL,'HSK4-926',1919,'["3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24790,'之中','zhī zhōng','inside','bên trong',4,NULL,'HSK4-927',1920,'["3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24791,'支持','zhī chí','to be in favor of','ủng hộ',4,NULL,'HSK4-928',1921,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24792,'支付','zhī fù','to pay (money)','trả tiền',4,NULL,'HSK4-929',1922,'["3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24793,'知识','zhī shi','intellectual','trí tuệ',4,NULL,'HSK4-930',1923,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24794,'直接','zhí jiē','direct','trực tiếp',4,NULL,'HSK4-931',1924,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24795,'值','zhí','value','giá trị',4,NULL,'HSK4-932',1925,'["3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24796,'值得','zhí de','to be worth','có giá trị',4,NULL,'HSK4-933',1926,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24797,'职业','zhí yè','occupation','nghề nghiệp',4,NULL,'HSK4-934',1927,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24798,'植物','zhí wù','botanical','thuộc thực vật',4,NULL,'HSK4-935',1928,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24799,'只好','zhǐ hǎo','without any better option','không có lựa chọn nào tốt hơn',4,NULL,'HSK4-936',1929,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24800,'纸巾','zhǐ jīn','tissue; paper towel','mô',4,NULL,'HSK4-937',1930,'["3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24801,'指','zhǐ','finger','ngón tay',4,NULL,'HSK4-938',1931,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24802,'指出','zhǐ chū','to indicate','để chỉ ra',4,NULL,'HSK4-939',1932,'["3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24803,'至少','zhì shǎo','at least','ít nhất',4,NULL,'HSK4-940',1933,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24804,'质量','zhì liàng','quality','chất lượng',4,NULL,'HSK4-941',1934,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24805,'中餐','zhōng cān','Chinese food; Chinese cuisine','đồ ăn Trung Quốc',4,NULL,'HSK4-942',1935,'["3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24806,'中年','zhōng nián','middle age','tuổi trung niên',4,NULL,'HSK4-943',1936,'["3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24807,'重','zhòng','heavy','nặng',4,NULL,'HSK4-944',1937,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24808,'重点','zhòng diǎn','emphasis','sự nhấn mạnh',4,NULL,'HSK4-945',1938,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24809,'重视','zhòng shì','to attach importance to sth','coi trọng điều gì đó',4,NULL,'HSK4-946',1939,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24810,'重新','chóng xīn','again','lại',4,NULL,'HSK4-947',1940,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24811,'周围','zhōu wéi','surroundings','môi trường xung quanh',4,NULL,'HSK4-948',1941,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24812,'主意','zhǔ yi','plan','kế hoạch',4,NULL,'HSK4-949',1942,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24813,'祝','zhù','invoke','gọi',4,NULL,'HSK4-950',1943,'["3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24814,'祝贺','zhù hè','to congratulate','chúc mừng',4,NULL,'HSK4-951',1944,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24815,'著名','zhù míng','famous','nổi tiếng',4,NULL,'HSK4-952',1945,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24816,'专门','zhuān mén','specialist','chuyên gia',4,NULL,'HSK4-953',1946,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24817,'专业','zhuān yè','specialty','đặc sản',4,NULL,'HSK4-954',1947,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24818,'转','zhuǎi','Dictionary gloss under review','Từ điển chú giải đang được xem xét',4,NULL,'HSK4-955',1948,'["2.0 L4","3.0 L4","3.0 L6"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24819,'转发','zhuǎn fā','to transmit','để truyền tải',4,NULL,'HSK4-956',1949,'["3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24820,'转机','zhuǎn jī','(to take) a turn for the better','một bước ngoặt tốt đẹp hơn',4,NULL,'HSK4-957',1950,'["3.0 L4","3.0 L7-9"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24821,'赚','zhuàn','earn','kiếm',4,NULL,'HSK4-958',1951,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24822,'装','zhuāng','adornment','đồ trang sức',4,NULL,'HSK4-959',1952,'["2.0 L5","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24823,'准','zhǔn','to allow','cho phép',4,NULL,'HSK4-960',1953,'["3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24824,'准确','zhǔn què','accurate','chính xác',4,NULL,'HSK4-961',1954,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24825,'准时','zhǔn shí','on time','đúng giờ',4,NULL,'HSK4-962',1955,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24826,'资料','zī liào','material','vật liệu',4,NULL,'HSK4-963',1956,'["2.0 L5","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24827,'仔细','zǐ xì','careful','cẩn thận',4,NULL,'HSK4-964',1957,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24828,'自','zì','(bound form) self; oneself','bản thân',4,NULL,'HSK4-965',1958,'["3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24829,'自然','zì rán','nature','thiên nhiên',4,NULL,'HSK4-966',1959,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24830,'自习','zì xí','to study outside of class time (reviewing one''s lessons)','tự học',4,NULL,'HSK4-967',1960,'["3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24831,'自信','zì xìn','confidence','sự tự tin',4,NULL,'HSK4-968',1961,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24832,'自学','zì xué','self-study','tự học',4,NULL,'HSK4-969',1962,'["3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24833,'总结','zǒng jié','to sum up','tóm lại',4,NULL,'HSK4-970',1963,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24834,'租','zū','to hire','thuê',4,NULL,'HSK4-971',1964,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24835,'组','zǔ','to form','hình thành',4,NULL,'HSK4-972',1965,'["2.0 L5","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24836,'最终','zuì zhōng','final; ultimate','cuối cùng',4,NULL,'HSK4-973',1966,'["3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24837,'尊重','zūn zhòng','esteem','quý trọng',4,NULL,'HSK4-974',1967,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24838,'左右','zuǒ yòu','about','Về',4,NULL,'HSK4-975',1968,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24839,'作家','zuò jiā','author','tác giả',4,NULL,'HSK4-976',1969,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24840,'作品','zuò pǐn','work (of art)','công việc',4,NULL,'HSK4-977',1970,'["2.0 L5","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24841,'作为','zuò wéi','one''s conduct','với tư cách là',4,NULL,'HSK4-978',1971,'["2.0 L5","3.0 L4","3.0 L7-9"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24842,'作文','zuò wén','composition; essay (school writing)','thành phần',4,NULL,'HSK4-979',1972,'["2.0 L5","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24843,'作用','zuò yòng','to act on','tác dụng',4,NULL,'HSK4-980',1973,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24844,'作者','zuò zhě','author','tác giả',4,NULL,'HSK4-981',1974,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24845,'座','zuò','seat','ghế',4,NULL,'HSK4-982',1975,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24846,'座位','zuò wèi','seat','ghế',4,NULL,'HSK4-983',1976,'["2.0 L4","3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24847,'做法','zuò fǎ','way of handling sth','cách xử lý chuyện gì đó',4,NULL,'HSK4-984',1977,'["3.0 L4"]');
INSERT INTO vocab (id,zh,py,en,vi,level,pos,code,stt,tags) VALUES (24848,'做梦','zuò mèng','to dream','mơ',4,NULL,'HSK4-985',1978,'["3.0 L4"]');
CREATE TABLE initials (
  py TEXT PRIMARY KEY, group_name TEXT, vi TEXT, detail TEXT, guide TEXT,
  ex TEXT, ex_py TEXT, ex_vi TEXT, semi INTEGER, say TEXT
, audio TEXT);
INSERT INTO initials (py,group_name,vi,detail,guide,ex,ex_py,ex_vi,semi,say,audio) VALUES ('b','Nhóm âm hai môi và răng môi','Âm “p”','Đọc là [pua] (kết hợp với vần “ua”)','Hai môi mím lại chạm vào nhau, sau đó mở ra thật nhanh và kết hợp với vần “ua” → [pua].','爸','bà','bố',0,'bō','https://cge.edu.vn/ckeditor/audio/1765342025_c1suBjVN1X.mp3');
INSERT INTO initials (py,group_name,vi,detail,guide,ex,ex_py,ex_vi,semi,say,audio) VALUES ('p','Nhóm âm hai môi và răng môi','Âm “p” (có bật hơi)','Đọc là [pua] (kèm bật hơi)','Phát âm giống “b” nhưng kèm bật hơi: mím chặt môi, lấy hơi từ bụng đưa lên cổ họng rồi đẩy mạnh ra ngoài → [pua]. Cảm thấy luồng hơi mạnh là đọc đúng.','怕','pà','sợ',0,'pō','https://cge.edu.vn/ckeditor/audio/1765342030_TfUE6AJLMH.mp3');
INSERT INTO initials (py,group_name,vi,detail,guide,ex,ex_py,ex_vi,semi,say,audio) VALUES ('f','Nhóm âm hai môi và răng môi','Âm “ph”','Đọc là [phua] (kết hợp với vần “ua”)','Răng trên đè chặt vào môi dưới rồi đẩy hơi ra ngoài. Luồng hơi tạo ma sát tại chỗ tiếp xúc răng–môi là phát âm chuẩn.','发','fā','phát, gửi',0,'fō','https://cge.edu.vn/ckeditor/audio/1765342034_zZo8Vlrqu8.mp3');
INSERT INTO initials (py,group_name,vi,detail,guide,ex,ex_py,ex_vi,semi,say,audio) VALUES ('m','Nhóm âm hai môi và răng môi','Âm “m”','Đọc là [mua] (kết hợp với vần “ua”)','Mím môi sâu hơn âm “m” tiếng Việt rồi bật ra từ khẩu hình đang mím (không bật hơi).','妈','mā','mẹ',0,'mō','https://cge.edu.vn/ckeditor/audio/1765342044_9XndqeWqj2.mp3');
INSERT INTO initials (py,group_name,vi,detail,guide,ex,ex_py,ex_vi,semi,say,audio) VALUES ('d','Nhóm âm đầu lưỡi','Âm “t”','Đọc là [tưa] (kết hợp với vần “ưa”)','Đầu lưỡi chạm vào lợi hàm trên, âm không bật hơi. Khẩu hình miệng nhòe sang hai bên.','打','dǎ','đánh',0,'dē','https://cge.edu.vn/ckeditor/audio/1765342061_nHTyQ9BPr4.mp3');
INSERT INTO initials (py,group_name,vi,detail,guide,ex,ex_py,ex_vi,semi,say,audio) VALUES ('t','Nhóm âm đầu lưỡi','Âm “th” (có bật hơi)','Đọc là [thưa] (kèm bật hơi)','Âm bật hơi mạnh: đầu lưỡi tì sát chân răng hàm trên, lấy hơi từ bụng đẩy mạnh ra ngoài.','他','tā','anh ấy',0,'tē','https://cge.edu.vn/ckeditor/audio/1765342066_0ejBhPu7hC.mp3');
INSERT INTO initials (py,group_name,vi,detail,guide,ex,ex_py,ex_vi,semi,say,audio) VALUES ('n','Nhóm âm đầu lưỡi','Âm “n”','Đọc là [nưa] (kết hợp với vần “ưa”)','Khẩu hình miệng nhòe sang hai bên, phát âm như “n” tiếng Việt → [nưa].','你','nǐ','bạn',0,'nē','https://cge.edu.vn/ckeditor/audio/1765342073_SuJPTTwqBE.mp3');
INSERT INTO initials (py,group_name,vi,detail,guide,ex,ex_py,ex_vi,semi,say,audio) VALUES ('l','Nhóm âm đầu lưỡi','Âm “l”','Đọc là [lưa] (kết hợp với vần “ưa”)','Đầu lưỡi chạm vào lợi hàm trên, sau đó lưỡi di chuyển từ trên xuống dưới.','来','lái','đến',0,'lē','https://cge.edu.vn/ckeditor/audio/1765342080_sIx3VJXkOc.mp3');
INSERT INTO initials (py,group_name,vi,detail,guide,ex,ex_py,ex_vi,semi,say,audio) VALUES ('g','Nhóm âm cuống lưỡi','Âm “c”','Đọc là [cưa] (kết hợp với vần “ưa”)','Âm không bật hơi, đọc nhẹ nhàng → [cưa].','哥','gē','anh trai',0,'gē','https://cge.edu.vn/ckeditor/audio/1765342099_m8jQBCzGlo.mp3');
INSERT INTO initials (py,group_name,vi,detail,guide,ex,ex_py,ex_vi,semi,say,audio) VALUES ('k','Nhóm âm cuống lưỡi','Âm “kh” (có bật hơi)','Đọc là [khưa] (kèm bật hơi)','Lấy hơi từ bụng lên cổ họng, giữ ở cuống họng rồi tạo ma sát đẩy ra. Luồng hơi mang âm “kh” đi ra mạnh kèm bật hơi.','可','kě','có thể',0,'kē','https://cge.edu.vn/ckeditor/audio/1765342104_m4tx5cqfGW.mp3');
INSERT INTO initials (py,group_name,vi,detail,guide,ex,ex_py,ex_vi,semi,say,audio) VALUES ('h','Nhóm âm cuống lưỡi','Âm “kh” (không bật hơi)','Đọc là [khưa] (không bật hơi)','Đọc từ từ, nhẹ nhàng, không bật hơi mạnh để tránh nhầm với “k”.','好','hǎo','tốt',0,'hē','https://cge.edu.vn/ckeditor/audio/1765342109_WbiRQZDG7u.mp3');
INSERT INTO initials (py,group_name,vi,detail,guide,ex,ex_py,ex_vi,semi,say,audio) VALUES ('j','Nhóm âm mặt lưỡi','Âm “ch”','Đọc là [chi] (kết hợp với vần “i”)','Khẩu hình nhòe sang hai bên (như cười), lưỡi phẳng, không bật hơi — khống chế để hơi không thoát ra ngoài.','家','jiā','nhà',0,'jī','https://cge.edu.vn/ckeditor/audio/1765342127_P26SI8swA4.mp3');
INSERT INTO initials (py,group_name,vi,detail,guide,ex,ex_py,ex_vi,semi,say,audio) VALUES ('q','Nhóm âm mặt lưỡi','Âm “ch” (có bật hơi)','Đọc là [chi] (kèm bật hơi)','Giống “j” nhưng bật hơi mạnh, lưỡi thẳng. Cảm nhận luồng hơi đi ra rất mạnh là đọc đúng.','去','qù','đi',0,'qī','https://cge.edu.vn/ckeditor/audio/1765342133_WZPsfaVNYJ.mp3');
INSERT INTO initials (py,group_name,vi,detail,guide,ex,ex_py,ex_vi,semi,say,audio) VALUES ('x','Nhóm âm mặt lưỡi','Âm “x”','Đọc là [xi] (không bật hơi)','Đọc nhẹ nhàng, thẳng lưỡi, giống tiếng Việt → [xi]. Lưỡi chạm mặt trong hàm răng dưới là đúng.','学','xué','học',0,'xī','https://cge.edu.vn/ckeditor/audio/1765342139_W277AOX9fN.mp3');
INSERT INTO initials (py,group_name,vi,detail,guide,ex,ex_py,ex_vi,semi,say,audio) VALUES ('z','Nhóm âm đầu lưỡi trước','Âm “ch” miền Bắc, dứt khoát','Đọc là [chư]','Khẩu hình bẹt sang hai bên, đầu lưỡi chạm mặt trong hàm răng trên, phát âm [chư]. Âm lai giữa [chư] và [zư], không hoàn toàn là [chư].','在','zài','ở',0,'zī','https://cge.edu.vn/ckeditor/audio/1765342156_XlGuf5JXBV.mp3');
INSERT INTO initials (py,group_name,vi,detail,guide,ex,ex_py,ex_vi,semi,say,audio) VALUES ('c','Nhóm âm đầu lưỡi trước','Âm “ch” miền Bắc (có bật hơi)','Đọc là [chư] (kèm bật hơi)','Giống “z” nhưng bật hơi mạnh. Đọc đúng thì lưỡi có xu hướng đẩy răng ra ngoài.','才','cái','mới',0,'cī','https://cge.edu.vn/ckeditor/audio/1765342161_qUNNSB9R3F.mp3');
INSERT INTO initials (py,group_name,vi,detail,guide,ex,ex_py,ex_vi,semi,say,audio) VALUES ('s','Nhóm âm đầu lưỡi trước','Âm “x”','Đọc là [xư] (không bật hơi)','Đọc nhẹ nhàng giống “x”. Lưu ý: “s” phát âm giống “x”, chỉ khác ở nguyên âm đi kèm (nguyên âm đi với “s” không bao giờ đi với “x”).','三','sān','ba',0,'sī','https://cge.edu.vn/ckeditor/audio/1765342166_yAWoZMk80X.mp3');
INSERT INTO initials (py,group_name,vi,detail,guide,ex,ex_py,ex_vi,semi,say,audio) VALUES ('zh','Nhóm âm đầu lưỡi sau','Âm “tr”','Đọc là [trư]','Không cuốn lưỡi quá nhiều: nâng lưỡi chạm vòng họng để chặn hơi, khi hơi đầy thì hạ lưỡi cho hơi thoát. Môi hơi tròn, chề ra một chút.','中','zhōng','giữa, Trung',0,'zhī','https://cge.edu.vn/ckeditor/audio/1765342183_WuizsnUNhC.mp3');
INSERT INTO initials (py,group_name,vi,detail,guide,ex,ex_py,ex_vi,semi,say,audio) VALUES ('ch','Nhóm âm đầu lưỡi sau','Âm “tr” (có bật hơi)','Đọc là [trư] (kèm bật hơi)','Giống “zh” nhưng bật hơi mạnh: nâng lưỡi chạm vòng họng, không cuốn sâu, rồi đẩy hơi mạnh ra.','吃','chī','ăn',0,'chī','https://cge.edu.vn/ckeditor/audio/1765342191_qTNyC1T9uF.mp3');
INSERT INTO initials (py,group_name,vi,detail,guide,ex,ex_py,ex_vi,semi,say,audio) VALUES ('sh','Nhóm âm đầu lưỡi sau','Âm “s” nặng','Đọc là [sư]','Cong lưỡi sẵn, nâng gần vòng họng (không cuốn quá nhiều). Lấy hơi sâu đẩy mạnh ra ngoài.','是','shì','là',0,'shī','https://cge.edu.vn/ckeditor/audio/1765342199_POyxPvhcyD.mp3');
INSERT INTO initials (py,group_name,vi,detail,guide,ex,ex_py,ex_vi,semi,say,audio) VALUES ('r','Nhóm âm đầu lưỡi sau','Âm “r” (không rung)','Đọc tương tự [rư]','Không rung cổ họng như “r” tiếng Việt, chỉ cong lưỡi.','人','rén','người',0,'rī','https://cge.edu.vn/ckeditor/audio/1765342205_qyR2rIX6mt.mp3');
INSERT INTO initials (py,group_name,vi,detail,guide,ex,ex_py,ex_vi,semi,say,audio) VALUES ('y','Bán nguyên âm','Âm “d”','Đọc như “d” trong “dạ”','Bán nguyên âm, đọc như “d” tiếng Việt. VD: yǒu (có).','有','yǒu','có',1,'yī',NULL);
INSERT INTO initials (py,group_name,vi,detail,guide,ex,ex_py,ex_vi,semi,say,audio) VALUES ('w','Bán nguyên âm','Âm “u”','Đọc như “u” trong “ua”','Bán nguyên âm, đọc như “u” tiếng Việt. VD: wǒ (tôi).','我','wǒ','tôi',1,'wū',NULL);
CREATE TABLE finals (
  py TEXT PRIMARY KEY, group_name TEXT, mouth TEXT, vi TEXT, guide TEXT, audio TEXT,
  ex TEXT, ex_py TEXT, ex_vi TEXT, say TEXT
);
INSERT INTO finals (py,group_name,mouth,vi,guide,audio,ex,ex_py,ex_vi,say) VALUES ('a','đơn','mở miệng','a','Khẩu hình mở lớn nhất: miệng mở rộng thoải mái, lưỡi hạ thấp thả lỏng. Âm thoát đầy đặn, vang rõ, tương tự “a” tiếng Việt.','https://cge.edu.vn/ckeditor/audio/1765340431_LKcL7ZeH3a.mp3','大','dà','to, lớn','ā');
INSERT INTO finals (py,group_name,mouth,vi,guide,audio,ex,ex_py,ex_vi,say) VALUES ('o','đơn','mở miệng','ô','Môi hơi tròn nhưng tự nhiên, không chu ra. Lưỡi hơi thu về sau, âm trầm ấm vang. Gần “ô” nhưng mở thoáng hơn.','https://cge.edu.vn/ckeditor/audio/1765340437_GQJXCUW4uf.mp3','多','duō','nhiều','ō');
INSERT INTO finals (py,group_name,mouth,vi,guide,audio,ex,ex_py,ex_vi,say) VALUES ('e','đơn','mở miệng','ơ','Miệng mở vừa, môi không siết. Lưỡi hơi lùi, nâng nhẹ phần giữa. Âm đầu hơi đục, càng về cuối càng thoát — gần “ơ” tiếng Việt.','https://cge.edu.vn/ckeditor/audio/1765340442_FXStYaLpvj.mp3','的','de','của','ē');
INSERT INTO finals (py,group_name,mouth,vi,guide,audio,ex,ex_py,ex_vi,say) VALUES ('ai','kép','mở miệng','ai','Bắt đầu bằng “a” mở rộng rồi chuyển mượt sang “i” khi môi dẹt, lưỡi nâng dần về trước. Giống “ai” tiếng Việt.','https://cge.edu.vn/ckeditor/audio/1765340450_7HVmkYCShP.mp3','爱','ài','yêu','āi');
INSERT INTO finals (py,group_name,mouth,vi,guide,audio,ex,ex_py,ex_vi,say) VALUES ('ei','kép','mở miệng','ây','Khởi đầu bằng âm gần “ê” rồi lướt nhẹ sang “i”. Môi thu dần, lưỡi tiến lên trước. Âm sáng gọn, tương tự “ây” nhưng mảnh hơn.','https://cge.edu.vn/ckeditor/audio/1765340456_F8ZPvthkzk.mp3','杯','bēi','cốc','ēi');
INSERT INTO finals (py,group_name,mouth,vi,guide,audio,ex,ex_py,ex_vi,say) VALUES ('ao','kép','mở miệng','ao','Mở đầu bằng “a” vang rộng rồi thu khẩu hình chuyển sang âm giống “o”. Lưỡi thấp rồi lùi nhẹ về sau. Giống “ao” tiếng Việt.','https://cge.edu.vn/ckeditor/audio/1765340493_pGJkDKiRzu.mp3','好','hǎo','tốt','āo');
INSERT INTO finals (py,group_name,mouth,vi,guide,audio,ex,ex_py,ex_vi,say) VALUES ('ou','kép','mở miệng','âu','Xuất phát từ âm gần “âu” rồi khép nhẹ kết thúc bằng “u” thoát nhanh. Lưỡi hơi nâng về sau. Âm gọn, sáng, dễ nhận diện.','https://cge.edu.vn/ckeditor/audio/1765340508_Q1NovSzaQ7.mp3','狗','gǒu','chó','ōu');
INSERT INTO finals (py,group_name,mouth,vi,guide,audio,ex,ex_py,ex_vi,say) VALUES ('an','mũi','mở miệng','an','Miệng mở thoải mái, lưỡi hạ thấp rồi nâng đầu lưỡi kết thúc bằng âm mũi “n”. Tương đương “an” tiếng Việt nhưng vang hơn.','https://cge.edu.vn/ckeditor/audio/1765340516_4qi1rDUjyE.mp3','三','sān','ba','ān');
INSERT INTO finals (py,group_name,mouth,vi,guide,audio,ex,ex_py,ex_vi,say) VALUES ('en','mũi','mở miệng','ân','Miệng mở vừa, lưỡi nâng nhẹ phần giữa trước khi vào âm mũi “n”. Âm ngắn gọn, na ná “ân” nhưng dứt khoát hơn.','https://cge.edu.vn/ckeditor/audio/1765340523_7GYEyi4TDw.mp3','门','mén','cửa','ēn');
INSERT INTO finals (py,group_name,mouth,vi,guide,audio,ex,ex_py,ex_vi,say) VALUES ('ang','mũi','mở miệng','ang','Khẩu hình mở rộng, âm vang xuống họng. Lưỡi hạ thấp rồi nâng phần sau tạo âm “ng”. Âm sâu vang đầy, gần “ang” tiếng Việt.','https://cge.edu.vn/ckeditor/audio/1765340529_Vy2Q6Fxoax.mp3','上','shàng','trên','āng');
INSERT INTO finals (py,group_name,mouth,vi,guide,audio,ex,ex_py,ex_vi,say) VALUES ('eng','mũi','mở miệng','âng','Miệng mở vừa, lưỡi nâng phần giữa và sau. Vào “ng” âm vang nhưng mềm. Gần “âng” nhưng ngắn gọn hơn.','https://cge.edu.vn/ckeditor/audio/1765340536_FH0oHBpfVH.mp3','朋','péng','bạn (trong 朋友)','ēng');
INSERT INTO finals (py,group_name,mouth,vi,guide,audio,ex,ex_py,ex_vi,say) VALUES ('i','đơn','đều răng','i','Miệng dẹt, răng gần nhau, lưỡi nâng cao gần vòm răng trên. Âm sáng mảnh, như “i” tiếng Việt.','https://cge.edu.vn/ckeditor/audio/1765340679_AjJsKWC7us.mp3','你','nǐ','bạn','ī');
INSERT INTO finals (py,group_name,mouth,vi,guide,audio,ex,ex_py,ex_vi,say) VALUES ('ia','kép','đều răng','i + a','Bắt đầu bằng “i” mảnh sáng (miệng dẹt, lưỡi nâng cao) rồi chuyển nhẹ sang “a” miệng mở vừa. Giữ được chất sáng mảnh của “i”.','https://cge.edu.vn/ckeditor/audio/1765340685_bPQ2tkWggO.mp3','家','jiā','nhà','iā');
INSERT INTO finals (py,group_name,mouth,vi,guide,audio,ex,ex_py,ex_vi,say) VALUES ('ie','kép','đều răng','i + ê','Khởi phát bằng “i” sáng mảnh, tiếp nối bằng “e” (miệng mở vừa, lưỡi hạ nhẹ). Âm rõ, sáng, vang nhẹ.','https://cge.edu.vn/ckeditor/audio/1765340692_vx6xDQ1LSB.mp3','姐','jiě','chị','iē');
INSERT INTO finals (py,group_name,mouth,vi,guide,audio,ex,ex_py,ex_vi,say) VALUES ('iao','kép','đều răng','i + ao','Bắt đầu bằng “i” mảnh, chuyển sang “a” rộng, kết thúc bằng “o” tròn nhẹ. Khẩu hình từ hẹp sang rộng, chuyển tiếp mềm mại.','https://cge.edu.vn/ckeditor/audio/1765340699_Wwov1t57FC.mp3','小','xiǎo','nhỏ','iāo');
INSERT INTO finals (py,group_name,mouth,vi,guide,audio,ex,ex_py,ex_vi,say) VALUES ('iu','kép','đều răng','viết tắt của iou: i + âu','Bắt đầu bằng “i” mảnh rồi vòng sang “ou”. Viết gọn là “iu” (đầy đủ: iou).',NULL,'九','jiǔ','chín','iū');
INSERT INTO finals (py,group_name,mouth,vi,guide,audio,ex,ex_py,ex_vi,say) VALUES ('in','mũi','đều răng','in','Miệng dẹt, lưỡi nâng cao phía trước, kết thúc bằng âm mũi “n”. Âm sáng, ngắn gọn, rõ ràng.','https://cge.edu.vn/ckeditor/audio/1765340706_IlI2xpWY32.mp3','心','xīn','tim','īn');
INSERT INTO finals (py,group_name,mouth,vi,guide,audio,ex,ex_py,ex_vi,say) VALUES ('ian','mũi','đều răng','i + an','Bắt đầu bằng “i” mảnh, chuyển sang “a”, kết thúc bằng âm mũi “n”. Giữ độ mảnh, vang nhẹ, rõ ràng.','https://cge.edu.vn/ckeditor/audio/1765340714_OcmhS5k8Yo.mp3','年','nián','năm','iān');
INSERT INTO finals (py,group_name,mouth,vi,guide,audio,ex,ex_py,ex_vi,say) VALUES ('iang','mũi','đều răng','i + ang','Khởi đầu bằng “i” mảnh, chuyển sang “a” rộng, kết thúc bằng “ng”. Vang nhẹ, sáng hơn nhóm mở miệng.','https://cge.edu.vn/ckeditor/audio/1765340720_fmzet5bF5Z.mp3','想','xiǎng','muốn','iāng');
INSERT INTO finals (py,group_name,mouth,vi,guide,audio,ex,ex_py,ex_vi,say) VALUES ('ing','mũi','đều răng','inh','Miệng dẹt, lưỡi nâng cao, kết thúc bằng “ng”. Âm sắc nét, mảnh, vang nhẹ — khác rõ với “eng” nhóm mở miệng.','https://cge.edu.vn/ckeditor/audio/1765340727_C2ZD3wr19P.mp3','明','míng','sáng','īng');
INSERT INTO finals (py,group_name,mouth,vi,guide,audio,ex,ex_py,ex_vi,say) VALUES ('u','đơn','ngậm miệng','u','Môi tròn khép, lưỡi nâng vừa phía sau. Âm tròn ấm sâu, như “u” tiếng Việt.','https://cge.edu.vn/ckeditor/audio/1765340809_IhGOw1gHMP.mp3','不','bù','không','ū');
INSERT INTO finals (py,group_name,mouth,vi,guide,audio,ex,ex_py,ex_vi,say) VALUES ('ua','kép','ngậm miệng','u + a','Khởi đầu bằng “u” tròn ấm rồi mở rộng nhẹ sang “a” (miệng mở vừa, lưỡi hạ thấp). Giữ độ tròn ấm của “u”.','https://cge.edu.vn/ckeditor/audio/1765340840_D1d7dqvTxg.mp3','花','huā','hoa','uā');
INSERT INTO finals (py,group_name,mouth,vi,guide,audio,ex,ex_py,ex_vi,say) VALUES ('uo','kép','ngậm miệng','u + ô','Bắt đầu bằng “u” tròn ấm, kết thúc bằng “o” tròn nhẹ. Khẩu hình luôn tròn, âm vang dày rõ.','https://cge.edu.vn/ckeditor/audio/1765340848_rapimtALu0.mp3','多','duō','nhiều','uō');
INSERT INTO finals (py,group_name,mouth,vi,guide,audio,ex,ex_py,ex_vi,say) VALUES ('uai','kép','ngậm miệng','u + ai','Khởi âm “u” tròn, chuyển sang “a” mở, kết thúc bằng “i” mảnh. Uyển chuyển, vừa ấm vừa sáng.','https://cge.edu.vn/ckeditor/audio/1765340854_NseutrXSP6.mp3','快','kuài','nhanh','uāi');
INSERT INTO finals (py,group_name,mouth,vi,guide,audio,ex,ex_py,ex_vi,say) VALUES ('ui','kép','ngậm miệng','viết tắt của uei: u + ây','Bắt đầu bằng “u” tròn, kết thúc bằng “ei” sáng. Viết gọn là “ui” (đầy đủ: uei). Âm sắc nét, chuyển từ tròn sang sáng.','https://cge.edu.vn/ckeditor/audio/1765340862_xdkDdPGWoT.mp3','水','shuǐ','nước','uī');
INSERT INTO finals (py,group_name,mouth,vi,guide,audio,ex,ex_py,ex_vi,say) VALUES ('uan','mũi','ngậm miệng','u + an','Khởi đầu bằng “u” tròn ấm, chuyển sang “a” mở, kết thúc bằng “n”. Âm vang tròn rõ.','https://cge.edu.vn/ckeditor/audio/1765340872_RtYywuW8iq.mp3','欢','huān','vui (trong 欢迎)','uān');
INSERT INTO finals (py,group_name,mouth,vi,guide,audio,ex,ex_py,ex_vi,say) VALUES ('un','mũi','ngậm miệng','viết tắt của uen: u + ân','Miệng tròn, lưỡi hơi nâng phía sau, kết thúc bằng “n”. Viết gọn là “un” (đầy đủ: uen). Âm tròn ấm, ngắn gọn.','https://cge.edu.vn/ckeditor/audio/1765340889_WEB3YlNJX7.mp3','问','wèn','hỏi','ūn');
INSERT INTO finals (py,group_name,mouth,vi,guide,audio,ex,ex_py,ex_vi,say) VALUES ('uang','mũi','ngậm miệng','u + ang','Khởi âm “u” tròn, chuyển sang “a” mở, kết thúc bằng “ng”. Âm vang dày tròn, lan tỏa rõ rệt.','https://cge.edu.vn/ckeditor/audio/1765340895_B8cHpHr88k.mp3','光','guāng','sáng','uāng');
INSERT INTO finals (py,group_name,mouth,vi,guide,audio,ex,ex_py,ex_vi,say) VALUES ('ueng','mũi','ngậm miệng','u + âng','Bắt đầu bằng “u” tròn, kết thúc bằng “ng” mở rộng. Âm tròn vang sâu, chắc chắn — khác với “eng” nhóm mở miệng.','https://cge.edu.vn/ckeditor/audio/1765341090_1Txy5WeoLy.mp3','翁','wēng','ông lão','uēng');
INSERT INTO finals (py,group_name,mouth,vi,guide,audio,ex,ex_py,ex_vi,say) VALUES ('ong','mũi','ngậm miệng','ung','Khởi đầu bằng âm “u” tròn ấm rất rõ (môi tròn khép chặt, lưỡi nâng cao phía sau như “u” đơn), rồi giữ độ tròn, mở rộng nhẹ, hạ lưỡi một chút chuyển sang “-ng” mũi họng sâu.','https://cge.edu.vn/ckeditor/audio/1765341095_iF0l8FRF5F.mp3','中','zhōng','giữa','ōng');
INSERT INTO finals (py,group_name,mouth,vi,guide,audio,ex,ex_py,ex_vi,say) VALUES ('ü','đơn','chụm miệng','uy (tròn môi)','Môi chụm tròn nhỏ như phát âm “u”, hơi hướng ra trước, lưỡi nâng cao đẩy nhẹ lên trước. Âm sáng mềm, như “uy” nhưng hẹp và tròn môi hơn.','https://cge.edu.vn/ckeditor/audio/1765341296_RzxzAh1xDh.mp3','去','qù','đi','ǖ');
INSERT INTO finals (py,group_name,mouth,vi,guide,audio,ex,ex_py,ex_vi,say) VALUES ('üe','kép','chụm miệng','uy + ê','Bắt đầu bằng “ü” môi chụm tròn nhỏ, rồi chuyển nhẹ sang “e”: mở môi nhưng vẫn hơi tròn, lưỡi hạ xuống lùi nhẹ. Nghe như “uyê” nhưng đầu âm căng tròn hơn.','https://cge.edu.vn/ckeditor/audio/1765341301_WJDSHeDm46.mp3','学','xué','học','üē');
INSERT INTO finals (py,group_name,mouth,vi,guide,audio,ex,ex_py,ex_vi,say) VALUES ('üan','mũi','chụm miệng','uy + an','Bắt đầu bằng “ü” môi chụm tròn, lưỡi nâng cao, rồi chuyển sang “an”: mở rộng môi dần, lưỡi hạ xuống hơi lùi. Nghe giống “uyên” tiếng Việt.','https://cge.edu.vn/ckeditor/audio/1765341308_jpEVwtjbJN.mp3','远','yuǎn','xa','üān');
INSERT INTO finals (py,group_name,mouth,vi,guide,audio,ex,ex_py,ex_vi,say) VALUES ('ün','mũi','chụm miệng','uy + n','Bắt đầu bằng “ü” môi chụm tròn, lưỡi nâng cao phía trước; sang âm “n” thì mở môi nhẹ, giữ độ tròn, đầu lưỡi chạm đúng vị trí n. Ngắn gọn, gần “uyn” nhưng căng tròn môi hơn.','https://cge.edu.vn/ckeditor/audio/1765341314_AIU3xZOoGk.mp3','云','yún','mây','ǖn');
INSERT INTO finals (py,group_name,mouth,vi,guide,audio,ex,ex_py,ex_vi,say) VALUES ('iong','mũi','chụm miệng','i + ung (tròn môi)','Bắt đầu như “i” nhưng môi chụm tròn nhẹ (giữa “i” và “u”), rồi nhanh chóng chuyển sang “ong”: môi tròn hơi đưa ra trước, âm mũi cuối vang nhẹ gọn. Nghe giống “yong” nhưng tròn môi rõ hơn.','https://cge.edu.vn/ckeditor/audio/1765341319_srxTmeRkEL.mp3','穷','qióng','nghèo','iōng');
INSERT INTO finals (py,group_name,mouth,vi,guide,audio,ex,ex_py,ex_vi,say) VALUES ('er','đặc biệt','đặc biệt','ơ (uốn lưỡi)','Lưỡi cong mạnh về phía sau, tạo âm sắc riêng biệt. Đọc như “ơ” nhưng uốn lưỡi.',NULL,'二','èr','hai','ēr');
CREATE TABLE tones (
  id INTEGER PRIMARY KEY, name TEXT, hv TEXT, mark TEXT, descr TEXT, ex TEXT, ex_py TEXT, ex_vi TEXT
, audio TEXT);
INSERT INTO tones (id,name,hv,mark,descr,ex,ex_py,ex_vi,audio) VALUES (0,'Khinh thanh (thanh nhẹ)','khinh thanh','·','Đọc nhẹ, ngắn, không nhấn (thường ở cuối từ).','吗','ma','(trợ từ hỏi)','https://cge.edu.vn/ckeditor/audio/1765346803_f4iQ5II4Wm.mp3');
INSERT INTO tones (id,name,hv,mark,descr,ex,ex_py,ex_vi,audio) VALUES (1,'Thanh 1 — âm bình','âm bình','ˉ','Đọc cao, đều và kéo dài (như đang hát một nốt cao).','妈','mā','mẹ','https://cge.edu.vn/ckeditor/audio/1765346787_oVZQL6O069.mp3');
INSERT INTO tones (id,name,hv,mark,descr,ex,ex_py,ex_vi,audio) VALUES (2,'Thanh 2 — dương bình','dương bình','ˊ','Đọc đi lên, như giọng ngạc nhiên “hả?” trong tiếng Việt.','麻','má','cây gai','https://cge.edu.vn/ckeditor/audio/1765346791_NpAaEpTUmO.mp3');
INSERT INTO tones (id,name,hv,mark,descr,ex,ex_py,ex_vi,audio) VALUES (3,'Thanh 3 — thượng thanh','thượng thanh','ˇ','Đọc hạ thấp rồi vòng lên (như hỏi “hả?” kéo dài).','马','mǎ','ngựa','https://cge.edu.vn/ckeditor/audio/1765346795_mN8NuiKaRr.mp3');
INSERT INTO tones (id,name,hv,mark,descr,ex,ex_py,ex_vi,audio) VALUES (4,'Thanh 4 — khứ thanh','khứ thanh','ˋ','Đọc dứt khoát từ cao xuống thấp, mạnh và ngắn.','骂','mà','mắng','https://cge.edu.vn/ckeditor/audio/1765346799_QOx7f3Bh3H.mp3');
CREATE TABLE grammar (
  id INTEGER PRIMARY KEY AUTOINCREMENT, level TEXT NOT NULL, cat TEXT, sub TEXT, detail TEXT,
  zh TEXT NOT NULL, vi TEXT
);
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (1780,'hsk1','语素','前缀','','小—、第—','Tiền tố');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (1781,'hsk1','语素','后缀','','—们、—边','Hậu tố');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (1782,'hsk1','词类','名词','方位名词','上、下、里、外、前、后','Danh từ phương vị');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (1783,'hsk1','词类','动词','能愿动词','会、能','biết làm / có thể');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (1784,'hsk1','词类','动词','能愿动词','想、要','muốn / cần, định');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (1785,'hsk1','词类','动词','能愿动词','可以','có thể, được phép');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (1786,'hsk1','词类','动词','离合词','看病、睡觉、说话、上课、下课、上班、下班、生病','Từ ly hợp');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (1787,'hsk1','词类','代词','疑问代词','多、多少、几、哪、哪儿、哪里、哪些、什么、谁、怎么、怎么样','Đại từ nghi vấn');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (1788,'hsk1','词类','代词','人称代词','我、你、您、他、她、我们、你们、他们、她们、它、它们、大家','Đại từ nhân xưng');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (1789,'hsk1','词类','代词','指示代词','这、那、这儿、那儿、这里、那里、这些、那些、有的、这个、那个、有些','Đại từ chỉ định');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (1790,'hsk1','词类','数词','','一、二/两、三、四、五、六、七、八、九、零、十、百、半、千','Số từ');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (1791,'hsk1','词类','量词','名量词','（1）专用名量词：本、个、家、口、块、件、只、元','Lượng từ danh');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (1792,'hsk1','词类','量词','名量词','（2）借用名量词：杯','Lượng từ danh');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (1793,'hsk1','词类','量词','时量词','日、号、岁、点、分、年、天','Lượng từ thời gian');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (1794,'hsk1','词类','副词','程度副词','非常、很、太、真、有（一）点儿','Phó từ mức độ');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (1795,'hsk1','词类','副词','范围副词','都1','Phó từ phạm vi');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (1796,'hsk1','词类','副词','时间副词','在、正在','Phó từ thời gian');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (1797,'hsk1','词类','副词','频率副词','再1','Phó từ tần suất');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (1798,'hsk1','词类','副词','关联副词','还1、也','Phó từ liên hệ');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (1799,'hsk1','词类','副词','否定副词','不、没（有）、不要','Phó từ phủ định');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (1800,'hsk1','词类','介词','引出时间、处所','在','Giới từ chỉ thời gian/nơi chốn');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (1801,'hsk1','词类','介词','引出对象','和1、对','Giới từ chỉ đối tượng');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (1802,'hsk1','词类','连词','连接词语或短语','和2','Nối từ/cụm từ');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (1803,'hsk1','词类','助词','结构助词','的1','Trợ từ kết cấu');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (1804,'hsk1','词类','助词','动态助词','了1','Trợ từ động thái');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (1805,'hsk1','词类','助词','语气助词','吧1、了2 、吗、呢1、呢2、呢3','Trợ từ ngữ khí');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (1806,'hsk1','词类','叹词','','喂','Thán từ');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (1807,'hsk1','短语','结构类型','基本结构类型','（1）联合短语','Kiểu kết cấu cơ bản');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (1808,'hsk1','短语','结构类型','基本结构类型','（2）偏正短语','Kiểu kết cấu cơ bản');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (1809,'hsk1','短语','结构类型','基本结构类型','（3）动宾短语','Kiểu kết cấu cơ bản');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (1810,'hsk1','短语','结构类型','基本结构类型','（4）主谓短语','Kiểu kết cấu cơ bản');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (1811,'hsk1','短语','结构类型','其他结构类型','（1）数量短语','Kiểu kết cấu khác');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (1812,'hsk1','短语','结构类型','其他结构类型','（2）介宾短语','Kiểu kết cấu khác');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (1813,'hsk1','短语','结构类型','其他结构类型','（3）方位短语','Kiểu kết cấu khác');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (1814,'hsk1','句子成分','主语','','名词、代词或名词性短语作主语','Chủ ngữ là danh từ, đại từ hoặc cụm danh từ');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (1815,'hsk1','句子成分','谓语','','名词、代词、数词或数量短语作谓语','Vị ngữ');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (1816,'hsk1','句子成分','谓语','','动词或动词性短语、形容词或形容词性短语作谓语','Vị ngữ là động từ/cụm động từ, tính từ/cụm tính từ');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (1817,'hsk1','句子成分','宾语','','名词、代词或名词性短语作宾语','Tân ngữ');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (1818,'hsk1','句子成分','定语','','名词性词语、形容词性短语、数量短语作定语','Định ngữ');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (1819,'hsk1','句子成分','状语','','副词、形容词作状语表示时间、处所的词语作状语','Trạng ngữ');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (1820,'hsk1','句子成分','补语','数量补语1','动词+动量补语','Động từ + bổ ngữ số lần');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (1821,'hsk1','句子的类型','句型','单句','主谓句1：动词谓语句','Câu chủ-vị: vị ngữ động từ');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (1822,'hsk1','句子的类型','句型','单句','主谓句2：形容词谓语句','Câu chủ-vị: vị ngữ tính từ');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (1823,'hsk1','句子的类型','句型','单句','主谓句3：名词谓语句','Câu chủ-vị: vị ngữ danh từ');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (1824,'hsk1','句子的类型','句型','单句','非主谓句','Câu phi chủ-vị');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (1825,'hsk1','句子的类型','句类','陈述句','','Câu trần thuật');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (1826,'hsk1','句子的类型','句类','疑问句','（1）是非问句','Câu hỏi có/không');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (1827,'hsk1','句子的类型','句类','疑问句','（2）特指问句','Câu hỏi chuyên dùng (từ nghi vấn)');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (1828,'hsk1','句子的类型','句类','疑问句','（3）正反问句','Câu hỏi chính-phản');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (1829,'hsk1','句子的类型','句类','祈使句','','Câu cầu khiến');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (1830,'hsk1','句子的类型','句类','感叹句','','Câu cảm thán');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (1831,'hsk1','句子的类型','特殊句型','“是”字句1','表示等同或类属','Biểu thị đồng nhất hoặc loại thuộc');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (1832,'hsk1','句子的类型','特殊句型','“有”字句1','表示领有','Biểu thị sở hữu');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (1833,'hsk1','句子的类型','特殊句型','存现句1','（1）所处+是+名词','Nơi chốn + 是 + danh từ');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (1834,'hsk1','句子的类型','特殊句型','存现句1','（2）处所+有+数量短语+名词','Nơi chốn + 有 + cụm số lượng + danh từ');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (1835,'hsk1','句子的类型','特殊句型','连动句1','（1）前后动作先后发生，后一动作是前一动作的目的','Câu liên động (1)');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (1836,'hsk1','句子的类型','特殊句型','连动句1','（2）前一动作是后一动作的方式','Câu liên động (1)');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (1837,'hsk1','句子的类型','特殊句型','双宾语句1','主语+动词+宾语1+宾语2','Chủ ngữ + động từ + tân ngữ 1 + tân ngữ 2');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (1838,'hsk1','句子的类型','复句','不用关联词语的复句','','Câu ghép không liên từ');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (1839,'hsk1','句子的类型','复句','并列复句','……，也……','…, cũng…');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (1840,'hsk1','句子的类型','复句','并列复句','……，还……','…, còn…');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (1841,'hsk1','动作的态','','完成态','用动态助词“了1”表示','Dùng trợ từ động thái “了” biểu thị');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (1842,'hsk1','动作的态','','变化态','用动态助词“了2”表示','Dùng trợ từ ngữ khí “了” biểu thị');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (1843,'hsk1','动作的态','','进行态','（1）……在/正在+动词','… đang + động từ');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (1844,'hsk1','动作的态','','进行态','（2）……在/正在+动词……+呢','… đang + động từ… + 呢');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (1845,'hsk1','动作的态','','进行态','（3）……呢','… 呢 (đang làm gì)');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (1846,'hsk1','特殊表达法','数的表达法','','钱数表示法','Cách nói số tiền');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (1847,'hsk1','特殊表达法','数的表达法','','序数表达法1：第+数词','Số thứ tự: 第 + số từ');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (1848,'hsk1','特殊表达法','时间表示法','','（1）年、月、日、星期表示法','Cách nói năm, tháng, ngày, thứ');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (1849,'hsk1','特殊表达法','时间表示法','','（2）钟点表示法','Cách nói giờ');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (1850,'hsk2','语素','后缀','','面','Hậu tố');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (1851,'hsk2','词类','名词','方位名词','左、右','Danh từ phương vị');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (1852,'hsk2','词类','动词','动词重叠','AA、A一A、A了A、ABAB','Động từ lặp: VV / V一V / V了V / VV');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (1853,'hsk2','词类','动词','能愿动词','可能','Động từ năng nguyện');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (1854,'hsk2','词类','动词','离合词','帮忙、游泳、跳舞、跑步','Từ ly hợp');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (1855,'hsk2','词类','代词','疑问代词','为什么','Đại từ nghi vấn');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (1856,'hsk2','词类','代词','人称代词','自己','Đại từ nhân xưng');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (1857,'hsk2','词类','代词','指示代词','那么、那样、这么、这样、每','Đại từ chỉ định');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (1858,'hsk2','词类','形容词','形容词重叠','AA、AABB','Tính từ lặp');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (1859,'hsk2','词类','数词','','万、好多、多','Số từ');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (1860,'hsk2','词类','量词','名量词','（1）专用名量词：条、位、间、名','Lượng từ danh chuyên dùng');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (1861,'hsk2','词类','量词','名量词','（2）借用名量词：包','Lượng từ danh');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (1862,'hsk2','词类','量词','动量词','次','Lượng từ động');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (1863,'hsk2','词类','副词','程度副词','多、好、最','Phó từ mức độ');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (1864,'hsk2','词类','副词','范围副词','一起','Phó từ phạm vi');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (1865,'hsk2','词类','副词','时间副词','还2、已经、有时（候）、快、快要、正','Phó từ thời gian');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (1866,'hsk2','词类','副词','频率副词','常、经常','Phó từ tần suất');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (1867,'hsk2','词类','副词','否定副词','别','Phó từ phủ định');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (1868,'hsk2','词类','副词','关联副词','再2、就1','Phó từ liên hệ');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (1869,'hsk2','词类','副词','语气副词','都2、就2、还是1','Phó từ ngữ khí');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (1870,'hsk2','词类','介词','引出时间、处所','从1','Giới từ chỉ thời gian/nơi chốn');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (1871,'hsk2','词类','介词','引出方向、路径','往','Giới từ chỉ hướng/đường đi');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (1872,'hsk2','词类','介词','引出方向、路径','从2','Giới từ chỉ hướng/đường đi');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (1873,'hsk2','词类','介词','引出对象','给','Giới từ chỉ đối tượng');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (1874,'hsk2','词类','介词','引出对象','比','Giới từ chỉ đối tượng');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (1875,'hsk2','词类','介词','引出对象','跟1','Giới từ chỉ đối tượng');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (1876,'hsk2','词类','介词','引出原因','因为1','Giới từ chỉ nguyên nhân');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (1877,'hsk2','词类','连词','连接词或短语','跟2','Nối từ/cụm từ');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (1878,'hsk2','词类','连词','连接分句或者句子','但、但是、那、虽然、还是2、因为2、所以','Nối vế câu/câu');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (1879,'hsk2','词类','助词','结构助词','得、地','Trợ từ kết cấu');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (1880,'hsk2','词类','助词','动态助词','过','Trợ từ động thái');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (1881,'hsk2','词类','助词','动态助词','着','Trợ từ động thái');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (1882,'hsk2','词类','助词','语气助词','呢4、吧2、的2、啊1','Trợ từ ngữ khí');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (1883,'hsk2','短语','结构类型','基本结构类型','动补短语1','Cụm động-bổ');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (1884,'hsk2','短语','结构类型','其他结构类型','（1）“的”字短语','Kiểu kết cấu khác');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (1885,'hsk2','短语','结构类型','其他结构类型','（2）连谓短语','Kiểu kết cấu khác');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (1886,'hsk2','短语','结构类型','其他结构类型','（3）兼语短语','Kiểu kết cấu khác');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (1887,'hsk2','短语','功能类型','名词性短语','','Cụm danh từ');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (1888,'hsk2','短语','功能类型','动词性短语','','Cụm động từ');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (1889,'hsk2','短语','功能类型','形容词性短语','','Cụm tính từ');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (1890,'hsk2','短语','固定短语','其他','什么的','Khác');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (1891,'hsk2','固定格式','','','还是……吧','Cấu trúc cố định');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (1892,'hsk2','固定格式','','','要/快要/就要……了','Cấu trúc cố định');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (1893,'hsk2','固定格式','','','都……了','Cấu trúc cố định');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (1894,'hsk2','句子成分','主语','','受事主语','Chủ ngữ');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (1895,'hsk2','句子成分','谓语','','名词性短语作谓语','Vị ngữ');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (1896,'hsk2','句子成分','定语','','动词或动词性短语、主谓短语作定语','Định ngữ');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (1897,'hsk2','句子成分','补语','结果补语1','动词+错/懂/好/会/完','Bổ ngữ kết quả (1)');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (1898,'hsk2','句子成分','补语','趋向补语1','简单趋向补语的趋向意义用法：（1）动词+来/去','Bổ ngữ xu hướng (1)');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (1899,'hsk2','句子成分','补语','趋向补语1','（2）动词+上/下/进/出/过/回','Bổ ngữ xu hướng (1)');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (1900,'hsk2','句子成分','补语','趋向补语1','复合趋向补语的趋向意义用法：动词+出来/出去/过来/过去/回来/回去/进来/进去/起来/上来/上去/下来/下去','Bổ ngữ xu hướng (1)');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (1901,'hsk2','句子成分','补语','状态补语1','动词+得+形容词性短语','Bổ ngữ trạng thái (1)');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (1902,'hsk2','句子成分','补语','数量补语2','（1）表示动作持续的时间','Bổ ngữ số lượng (2)');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (1903,'hsk2','句子成分','补语','数量补语2','（2）形容词+数量补语','Bổ ngữ số lượng (2)');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (1904,'hsk2','句子的类型','句型','单句','主谓句4：主谓谓语句','Câu đơn');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (1905,'hsk2','句子的类型','句类','疑问句','用“还是”连接的选择问句','Câu hỏi lựa chọn dùng “还是”');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (1906,'hsk2','句子的类型','句类','祈使句','用“别”的祈使句','Câu cầu khiến dùng “别”');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (1907,'hsk2','句子的类型','特殊句式','“是”字句2','表示说明或特征','Biểu thị giải thích hoặc đặc điểm');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (1908,'hsk2','句子的类型','特殊句式','“有”字句2','表示达到','Biểu thị đạt tới mức nào đó');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (1909,'hsk2','句子的类型','特殊句式','存现句2','处所+动词+着(+数量短语)+名词','Nơi chốn + động từ + 着 (+ số lượng) + danh từ');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (1910,'hsk2','句子的类型','特殊句式','比较句1','（1）A比B+形容词','So sánh: A hơn B + tính từ');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (1911,'hsk2','句子的类型','特殊句式','比较句1','（2）A比B+形容词+数量补语/程度补语','A hơn B + tính từ + bổ ngữ');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (1912,'hsk2','句子的类型','特殊句式','比较句1','（3）A有/没有B（+这么/那么）+形容词','A có/không bằng B (…thế) + tính từ');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (1913,'hsk2','句子的类型','特殊句式','比较句1','（4）A比B+动词+得+形容词/A+动词+得+比+B+形容词','A VB hơn B');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (1914,'hsk2','句子的类型','特殊句式','“是……的”句1','强调时间、地点、方式、动作者','Nhấn mạnh thời gian, nơi chốn, cách thức, người thực hiện');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (1915,'hsk2','句子的类型','特殊句式','兼语句1','表使令：主语+请/叫/让……+宾语1+动词+宾语2','Biểu thị sai khiến');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (1916,'hsk2','句子的类型','特殊句式','双宾语句2','主语+动词+给+宾语1+宾语2','Chủ ngữ + động từ + 给 + tân ngữ 1 + tân ngữ 2');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (1917,'hsk2','句子的类型','复句','选择复句','（是）……，还是……','(Là)…, hay… (lựa chọn)');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (1918,'hsk2','句子的类型','复句','转折复句','虽然……，但是……','Mặc dù…, nhưng…');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (1919,'hsk2','句子的类型','复句','因果复句','因为……，所以……','Vì…, nên…');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (1920,'hsk2','句子的类型','复句','紧缩复句','一……就……','Hễ… là…');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (1921,'hsk2','动作的态','','持续态','动词+着：（1）表示状态的持续','Động từ + 着: trạng thái tiếp diễn');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (1922,'hsk2','动作的态','','持续态','（2）表示动作的持续','Hành động tiếp diễn');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (1923,'hsk2','动作的态','','经历态','用动态助词“过”表示','Dùng trợ từ “过” (đã từng)');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (1924,'hsk2','特殊表达法','数的表达法','','序数表示法2：数词+量词','Số thứ tự: số + lượng từ');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (1925,'hsk2','特殊表达法','数的表达法','','概数表达法1：（1）用“几”表示概数','Cách đếm số');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (1926,'hsk2','特殊表达法','数的表达法','','（2）数词+多+量词','Số + 多 + lượng từ');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (1927,'hsk2','特殊表达法','数的表达法','','（3）数词+量词+多','Số + lượng từ + 多');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (1928,'hsk3','语素','前缀','','老—','Tiền tố');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (1929,'hsk3','语素','后缀','','—家、—子、—员','Hậu tố');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (1930,'hsk3','词类','名词','方位名词','东、南、西、北、北方、东方、南方、西方、中间','Danh từ phương vị');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (1931,'hsk3','词类','动词','能愿动词','需要、该、应该、愿意、得','Động từ năng nguyện');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (1932,'hsk3','词类','动词','离合词','动宾式离合词：放假、见面、结婚、洗澡','Từ ly hợp động-tân: nghỉ lễ, gặp mặt, kết hôn, tắm');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (1933,'hsk3','词类','动词','离合词','动补式离合词：离开、完成、分开','Từ ly hợp động-bổ: rời đi, hoàn thành, chia tách');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (1934,'hsk3','词类','代词','疑问代词','怎样','Đại từ nghi vấn');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (1935,'hsk3','词类','代词','疑问代词','疑问代词的非疑问用法：（1）任指用法：①疑问代词+都……②疑问代词+疑问代词','Đại từ nghi vấn');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (1936,'hsk3','词类','代词','疑问代词','（2）不定指用法','Cách dùng chỉ định bất định');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (1937,'hsk3','词类','代词','人称代词','别人、咱们','Đại từ nhân xưng');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (1938,'hsk3','词类','代词','指示代词','别的、其他','Đại từ chỉ định');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (1939,'hsk3','词类','量词','名量词','（1）专用名量词：把、双、张、种、层、封、页、辆、节、所、班、段、头、句公斤、斤、角、毛、刻、米','Lượng từ danh');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (1940,'hsk3','词类','量词','名量词','（2）借用名量词：碗、盘','Lượng từ danh');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (1941,'hsk3','词类','量词','动量词','口、回、遍、声','Lượng từ động');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (1942,'hsk3','词类','量词','量词重叠','个个、张张','Lượng từ lặp (mỗi/mọi)');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (1943,'hsk3','词类','副词','程度副词','比较、还3、更、特别、挺、有些、越、极','Phó từ mức độ');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (1944,'hsk3','词类','副词','范围副词','就3、一块儿、一共、只、到处、只是','Phó từ phạm vi');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (1945,'hsk3','词类','副词','时间副词','才1、马上、先、一会儿、刚、刚刚、一直','Phó từ thời gian');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (1946,'hsk3','词类','副词','频率副词','总、总是、又、常常','Phó từ tần suất');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (1947,'hsk3','词类','副词','关联副词','一边','Phó từ liên hệ');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (1948,'hsk3','词类','副词','情态副词','大概、必须、差不多、一定、好像、几乎','Phó từ tình thái');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (1949,'hsk3','词类','副词','语气副词','当然、其实、终于、才2、才3、就4','Phó từ ngữ khí');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (1950,'hsk3','词类','副词','否定副词','不必、不用','Phó từ phủ định');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (1951,'hsk3','词类','介词','引出对象','为1、向1、关于','Giới từ chỉ đối tượng');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (1952,'hsk3','词类','介词','引出方向、路径','向2','Giới từ chỉ hướng/đường đi');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (1953,'hsk3','词类','介词','引出目的、原因','为了、为2','Giới từ chỉ mục đích/nguyên nhân');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (1954,'hsk3','词类','介词','引出施事、受事','把、被','Giới từ chỉ chủ thể/bị động');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (1955,'hsk3','词类','介词','引出凭借、依据','根据','Giới từ chỉ phương tiện/căn cứ');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (1956,'hsk3','词类','连词','连接词或者短语','或、或者','Nối từ/cụm từ');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (1957,'hsk3','词类','连词','连接分句或句子','只有、只要、不但、而且、如果、可1、可是、然后','Nối vế câu/câu');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (1958,'hsk3','词类','助词','其他助词','的话','Trợ từ khác');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (1959,'hsk3','短语','结构类型','其他结构类型','同位短语','Kiểu kết cấu khác');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (1960,'hsk3','短语','结构类型','其他结构类型','动补短语2','Kiểu kết cấu khác');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (1961,'hsk3','短语','结构类型','其他结构类型','数量重叠：数词+量词+数词+量词','Kiểu kết cấu khác');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (1962,'hsk3','短语','固定短语','四字格','不A 不 B','Không A không B (không…thì không…)');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (1963,'hsk3','短语','固定短语','其 他','不一会儿','Khác');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (1964,'hsk3','短语','固定短语','其 他','看来','Khác');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (1965,'hsk3','短语','固定短语','其 他','在……看来','Khác');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (1966,'hsk3','短语','固定短语','其 他','越来越','Khác');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (1967,'hsk3','短语','固定短语','其 他','看起来','Khác');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (1968,'hsk3','短语','固定短语','其 他','看上去','Khác');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (1969,'hsk3','短语','固定短语','其 他','一般来说','Khác');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (1970,'hsk3','短语','固定短语','其 他','不怎么样','Khác');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (1971,'hsk3','固定格式','','','除了 ……（以外），……还/也/都……','Ngoài… ra, còn/cũng/đều…');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (1972,'hsk3','固定格式','','','从……起','Từ… trở đi');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (1973,'hsk3','固定格式','','','对……来说','Đối với… mà nói');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (1974,'hsk3','固定格式','','','一……也/都+不/没……','Một… cũng không/không có…');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (1975,'hsk3','固定格式','','','一点儿也不','Không một chút nào');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (1976,'hsk3','固定格式','','','越……越……','Càng… càng…');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (1977,'hsk3','固定格式','','','（在）……以前/以后/前/后','(Ở) trước/sau…');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (1978,'hsk3','固定格式','','','X什么（啊）','X…cái gì (không cần)');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (1979,'hsk3','固定格式','','','该……了','Đến lúc phải… rồi');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (1980,'hsk3','固定格式','','','在……上/下/中','Ở trên/dưới/trong…');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (1981,'hsk3','句子成分','主语','','动词或动词性短语、形容词或形容词性短语作主语','Chủ ngữ');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (1982,'hsk3','句子成分','主语','','主谓短语作主语','Chủ ngữ');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (1983,'hsk3','句子成分','定语','','多项定语','Nhiều định ngữ');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (1984,'hsk3','句子成分','补语','结果补语2','动词+到/住/走/上','Động từ + 到/住/走/上 (bổ ngữ kết quả)');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (1985,'hsk3','句子成分','补语','趋向补语2','趋向补语的引申用法：（1）表示结果意义：动词+出/起/下','Bổ ngữ xu hướng (2)');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (1986,'hsk3','句子成分','补语','趋向补语2','（2）表示动作行为的开始：动词+上/起来','Nghĩa bắt đầu: V + 上/起来');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (1987,'hsk3','句子成分','补语','趋向补语2','（3）表示动作行为的持续：动词+下去/下来','Nghĩa tiếp tục: V + 下去/下来');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (1988,'hsk3','句子成分','补语','可能补语1','动词+得/不+动词/形容词','Động từ + 得/不 + động từ/tính từ (bổ ngữ khả năng)');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (1989,'hsk3','句子成分','补语','程度补语1','（1）形容词+得很','Tính từ + 得很 (rất…)');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (1990,'hsk3','句子成分','补语','程度补语1','（2）形容词/动词+极了/坏了','Tính từ/động từ + 极了/坏了 (cực kỳ)');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (1991,'hsk3','句子成分','补语','数量补语3','表示动作结束到某个时间点的间隔时间','Khoảng thời gian từ khi kết thúc đến một thời điểm');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (1992,'hsk3','句子的类型','句类','疑问句','“怎样+动词”的特指问句','Câu hỏi dùng “怎样 + động từ”');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (1993,'hsk3','句子的类型','句类','反问句1','用反问句表示强调：不是……吗？','Chẳng phải… sao?');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (1994,'hsk3','句子的类型','特殊句型','“把”字句1','（1）主语+把+宾语+动词+在/到+处所','S + 把 + O + V + 在/到 + nơi chốn');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (1995,'hsk3','句子的类型','特殊句型','“把”字句1','（2）主语+把+宾语1+动词（+给）+宾语2','S + 把 + O1 + V (+ 给) + O2');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (1996,'hsk3','句子的类型','特殊句型','“把”字句1','（3）主语+把+宾语+动词+结果补语/趋向补语/状态补语','S + 把 + O + V + bổ ngữ');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (1997,'hsk3','句子的类型','特殊句型','被动句1','（1）主语+被+宾语+动词+其他成分','S + 被 + O + V + thành phần khác');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (1998,'hsk3','句子的类型','特殊句型','被动句1','（2）主语+被+动词+其他成分','S + 被 + V + thành phần khác');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (1999,'hsk3','句子的类型','特殊句型','连动句2','“着”表示动作的伴随：动词1+着+动词2','V1 + 着 + V2: làm V2 với tư thế/cách V1');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (2000,'hsk3','句子的类型','特殊句型','比较句2','（1）A比B+更/还+形容词','A càng hơn B + tính từ');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (2001,'hsk3','句子的类型','特殊句型','比较句2','（2）A跟B一样','A giống B');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (2002,'hsk3','句子的类型','特殊句型','比较句2','（3）A跟B一样+形容词','A bằng B + tính từ');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (2003,'hsk3','句子的类型','特殊句型','比较句2','（4）A不比B+形容词','A không hơn B + tính từ');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (2004,'hsk3','句子的类型','特殊句型','比较句2','（5）A比B+多/少/早/晚+动词+数量短语','A hơn B về mức/độ/sớm/muộn');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (2005,'hsk3','句子的类型','特殊句型','存现句3','（1）表示出现：处所词+动词+趋向补语/结果补语+动态助词（了）+数量短语+人/物','Sự xuất hiện');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (2006,'hsk3','句子的类型','特殊句型','存现句3','（2）表示消失：处所词+动词+结果补语+动态助词（了）+数量短语+人/物','Sự biến mất');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (2007,'hsk3','句子的类型','特殊句型','“是……的”句2','强调说话人的看法或态度','Nhấn mạnh quan điểm/thái độ người nói');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (2008,'hsk3','句子的类型','特殊句型','重动句','主语+动词+宾语+动词+补语','S + V + O + V + bổ ngữ (câu lặp động từ)');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (2009,'hsk3','句子的类型','复句','承接复句','先……，再/然后……','Trước…, rồi/sau đó…');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (2010,'hsk3','句子的类型','复句','选择复句','或者……，或者……','Hoặc…, hoặc…');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (2011,'hsk3','句子的类型','复句','并列复句','一会儿……，一会儿……','Lúc…, lúc…');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (2012,'hsk3','句子的类型','复句','并列复句','又……，又……','Vừa…, vừa…');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (2013,'hsk3','句子的类型','复句','并列复句','一边……，一边……','Vừa…, vừa…');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (2014,'hsk3','句子的类型','复句','递进复句','不但……，而且……','Không những…, mà còn…');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (2015,'hsk3','句子的类型','复句','转折复句','虽然……，可是……','Mặc dù…, nhưng…');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (2016,'hsk3','句子的类型','复句','假设复句','如果……，就……','Nếu…, thì…');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (2017,'hsk3','句子的类型','复句','假设复句','……的话，就……','Nếu (như)…, thì…');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (2018,'hsk3','句子的类型','复句','条件复句','只有……，才……','Chỉ khi…, mới…');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (2019,'hsk3','句子的类型','复句','条件复句','只要……，就……','Chỉ cần…, là…');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (2020,'hsk3','句子的类型','复句','目的复句','为了……，……','Để… (mục đích)');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (2021,'hsk3','句子的类型','复句','紧缩复句','……了……（就）……','…rồi… (liền)…');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (2022,'hsk3','特殊表达法','数的表达法','','概数表达法2：（1）用“大概”表示概数','Cách đếm số');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (2023,'hsk3','特殊表达法','数的表达法','','（2）相邻数词连用表示概数','Số liền nhau biểu thị xấp xỉ');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (2024,'hsk4','词类','动词','能愿动词','敢','Động từ năng nguyện');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (2025,'hsk4','词类','代词','指示代词','各、各位、各种、任何、此','Đại từ chỉ định');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (2026,'hsk4','词类','量词','名量词','（1）专用名量词：打、袋、棵、台、幅','Lượng từ danh');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (2027,'hsk4','词类','量词','名量词','（2）借用名量词：脸、手、盒、屋子、桌子','Lượng từ danh');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (2028,'hsk4','词类','量词','动量词','场、顿、趟','Lượng từ động');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (2029,'hsk4','词类','副词','程度副词','十分、更加、稍、稍微、尤其、多么','Phó từ mức độ (rất, càng, hơn, đặc biệt)');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (2030,'hsk4','词类','副词','范围副词','共、全、光、仅、仅仅、至少','Phó từ phạm vi');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (2031,'hsk4','词类','副词','时间副词','按时、从来、赶紧、赶快、已、忽然、将、将要、从、本来','Phó từ thời gian');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (2032,'hsk4','词类','副词','频率副词','重新、往往、偶尔、再次、老','Phó từ tần suất');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (2033,'hsk4','词类','副词','方式副词','故意、互相、相互','Phó từ phương thức');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (2034,'hsk4','词类','副词','关联副词','却','Phó từ liên hệ');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (2035,'hsk4','词类','副词','情态副词','也许、恐怕','Phó từ tình thái');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (2036,'hsk4','词类','副词','语气副词','才4、就5、并1、还4、竟然、究竟、正好、到底、难道、千万、确实、只好、差（一）点儿','Phó từ ngữ khí');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (2037,'hsk4','词类','介词','引出时间、处所','自、当、由1、随着、等1','Giới từ chỉ thời gian/nơi chốn');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (2038,'hsk4','词类','介词','引出施事、受事','将、由2、叫、让','Giới từ chỉ chủ thể/bị động');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (2039,'hsk4','词类','介词','引出原因','由于1','Giới từ chỉ nguyên nhân');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (2040,'hsk4','词类','介词','引出对象','对于、与1','Giới từ chỉ đối tượng');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (2041,'hsk4','词类','介词','引出凭借、依据','作为、按、按照','Giới từ chỉ phương tiện/căn cứ');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (2042,'hsk4','词类','连词','连接词或词组','并2、而1、与2','Nối từ/cụm từ');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (2043,'hsk4','词类','连词','连接分句或句子','此外、而2、既然、甚至、不过、并且','Nối vế câu/câu');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (2044,'hsk4','词类','连词','连接分句或句子','不光、不仅、另外、要是、因此、由于2、加','Nối vế câu/câu');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (2045,'hsk4','词类','助词','其他助词','等2、者、之、就是','Trợ từ khác');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (2046,'hsk4','词类','叹词','','啊、嗯','Thán từ');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (2047,'hsk4','短语','结构类型','','数词+形容词+量词','Loại kết cấu');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (2048,'hsk4','短语','固定短语','四字格','一A一B','Cách nói 4 chữ');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (2049,'hsk4','短语','固定短语','四字格','无A无B','Cách nói 4 chữ');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (2050,'hsk4','短语','固定短语','四字格','有A有B','Cách nói 4 chữ');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (2051,'hsk4','短语','固定短语','其他','来得及/来不及','Khác');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (2052,'hsk4','短语','固定短语','其他','有的是','Khác');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (2053,'hsk4','短语','固定短语','其他','说不定','Khác');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (2054,'hsk4','短语','固定短语','其他','不怎么','Khác');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (2055,'hsk4','短语','固定短语','其他','就是说/这就是说','Khác');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (2056,'hsk4','固定格式','','','一+量词+比+一+量词','Ngày càng (mỗi lúc một…)');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (2057,'hsk4','固定格式','','','在……方面','Về phương diện…');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (2058,'hsk4','固定格式','','','够……的','Đủ… đấy');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (2059,'hsk4','固定格式','','','拿……来说','Lấy… làm ví dụ');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (2060,'hsk4','固定格式','','','再也不/没……','Sẽ không bao giờ… nữa');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (2061,'hsk4','固定格式','','','怎么都/也+不/没……','Thế nào cũng không…');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (2062,'hsk4','固定格式','','','为了……而……','Vì… mà…');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (2063,'hsk4','固定格式','','','动词+一X是一X','Động từ + X là X (bay giờ lúc nào)');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (2064,'hsk4','固定格式','','','（没）有什么（好）X的','(Không) có gì (để) mà X');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (2065,'hsk4','固定格式','','','X是X，Y是Y','X là X, Y là Y (không lẫn lộn)');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (2066,'hsk4','固定格式','','','X也得X，不X也得X','X được, không X cũng phải X (bắt buộc)');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (2067,'hsk4','固定格式','','','X就是了','Cứ X là được');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (2068,'hsk4','固定格式','','','还X呢','Còn X đấy (nói mỉa)');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (2069,'hsk4','固定格式','','','你X你的吧','Bạn cứ X việc của bạn đi');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (2070,'hsk4','固定格式','','','让/叫你X你就X','Bảo X thì cứ X');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (2071,'hsk4','固定格式','','','说什么/怎么（着）也得X','Thế nào cũng phải X');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (2072,'hsk4','固定格式','','','X就X（点儿）吧','X thì X (một chút) thôi');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (2073,'hsk4','固定格式','','','X是X','X là X');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (2074,'hsk4','句子成分','','程度补语2','形容词/心理动词+死了/厉害','Tính từ/động từ tâm lý + ghê/chết');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (2075,'hsk4','句子成分','','可能补语2','动词+得/不+了','Động từ + 得/不 + 了 (bổ ngữ khả năng)');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (2076,'hsk4','句子的类型','句类','反问句2','难道……吗？','Chẳng lẽ… sao?');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (2077,'hsk4','句子的类型','句类','反问句2','由疑问代词构成的反问句','Câu hỏi ngược dùng đại từ nghi vấn');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (2078,'hsk4','句子的类型','特殊句型','“把”字句2','（1）主语+把+宾语+动词（+一/了）+动词','S + 把 + O + V (一/了) + V');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (2079,'hsk4','句子的类型','特殊句型','“把”字句2','（2）主语+把+宾语+动词+了','S + 把 + O + V + 了');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (2080,'hsk4','句子的类型','特殊句型','“把”字句2','（3）主语+把+宾语+动词+动量补语/时量补语','S + 把 + O + V + bổ ngữ số lần/thời gian');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (2081,'hsk4','句子的类型','特殊句型','“把”字句2','（4）主语+把+宾语+状语+动词','S + 把 + O + trạng ngữ + V');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (2082,'hsk4','句子的类型','特殊句型','被动句2','主语+叫/让+宾语+动词+其他成分','S + 叫/让 + O + V + thành phần khác (bị động)');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (2083,'hsk4','句子的类型','特殊句型','兼语句2','（1）表爱憎义：主语+表扬/批评+宾语1+动词+宾语2','Biểu thị yêu/ghét');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (2084,'hsk4','句子的类型','特殊句型','兼语句2','（2）表称谓或认定义：主语+收/选+宾语1+做/当/为+宾语2','Biểu thị xưng hô/nhận định');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (2085,'hsk4','句子的类型','特殊句型','兼语句2','（3）表致使：主语+使/让+人称代词+动词短语','Biểu thị khiến cho');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (2086,'hsk4','句子的类型','','比较句3','（1）A不如B（+形容词）','A không bằng B (+ tính từ)');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (2087,'hsk4','句子的类型','','比较句3','（2）跟……相比','So với…');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (2088,'hsk4','句子的类型','','双重否定句','用双重否定表示强调','Phủ định kép để nhấn mạnh');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (2089,'hsk4','句子的类型','复句','并列复句','不是……，而是……','Không phải…, mà là…');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (2090,'hsk4','句子的类型','复句','并列复句','既……，又/也……','Vừa…, vừa…');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (2091,'hsk4','句子的类型','复句','并列复句','一方面……，另一方面……','Một mặt…, mặt khác…');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (2092,'hsk4','句子的类型','复句','承接复句','首先……，其次……','Trước hết…, kế đến…');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (2093,'hsk4','句子的类型','复句','承接复句','首先……，然后……','Trước hết…, sau đó…');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (2094,'hsk4','句子的类型','复句','承接复句','……，于是……','…, vì vậy…');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (2095,'hsk4','句子的类型','复句','递进复句','……,甚至……','…, thậm chí…');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (2096,'hsk4','句子的类型','复句','递进复句','不仅/不光……，还/而且……','Không chỉ…, mà còn…');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (2097,'hsk4','句子的类型','复句','递进复句','……，并且……','…, đồng thời…');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (2098,'hsk4','句子的类型','复句','递进复句','连……也/都……，……更……','Ngay cả… cũng…, …lại càng…');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (2099,'hsk4','句子的类型','复句','选择复句','不是……，就是……','Không…, thì…');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (2100,'hsk4','句子的类型','复句','转折复句','尽管……，但是/可是……','Dù…, nhưng…');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (2101,'hsk4','句子的类型','复句','转折复句','……，然而……','…, tuy nhiên…');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (2102,'hsk4','句子的类型','复句','转折复句','……，不过……','…, nhưng mà…');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (2103,'hsk4','句子的类型','复句','转折复句','……X是X，就是/不过……','…X là X, nhưng…');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (2104,'hsk4','句子的类型','复句','假设复句','……，否则……','…, nếu không thì…');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (2105,'hsk4','句子的类型','复句','假设复句','要是……，就……','Nếu…, thì…');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (2106,'hsk4','句子的类型','复句','假设复句','要是……，（就）……，否则……','Câu ghép giả định');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (2107,'hsk4','句子的类型','复句','条件复句','不管……，都/也……','Dù…, đều/cũng…');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (2108,'hsk4','句子的类型','复句','条件复句','无论……，都/也……','Dù…, đều/cũng…');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (2109,'hsk4','句子的类型','复句','因果复句','既然……，就……','Đã…, thì…');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (2110,'hsk4','句子的类型','复句','因果复句','（由于）……，因此……','(Do)…, vì vậy…');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (2111,'hsk4','句子的类型','复句','目的复句','……，好……','…, để… (mục đích)');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (2112,'hsk4','句子的类型','复句','让步复句','即使……，也……','Cho dù…, cũng…');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (2113,'hsk4','句子的类型','复句','让步复句','就是……，也……','Cho dù…, cũng…');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (2114,'hsk4','句子的类型','复句','紧缩复句','无标记','Câu ghép rút gọn');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (2115,'hsk4','句子的类型','复句','紧缩复句','不……也……','Không… cũng…');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (2116,'hsk4','特殊表达法','数的表示法','','概数表示法3：数词+来+量词','Số + 来 + lượng từ (khoảng)');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (2117,'hsk4','特殊表达法','数的表示法','','用“大约、左右、前后”表示概数','Dùng 大约/左右/前后 chỉ xấp xỉ');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (2118,'hsk4','特殊表达法','数的表示法','','小数、分数、百分数、倍数的表示法','Cách chỉ số');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (2119,'hsk5','语素','后缀','','—头','Hậu tố');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (2120,'hsk5','词类','代词','指示代词','彼此、如此、本','Đại từ chỉ định');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (2121,'hsk5','词类','量词','名量词','册、朵、届、颗、匹、行、架、群、支、根、批、束、副、集、周','Lượng từ danh');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (2122,'hsk5','词类','量词','动量词','眼','Lượng từ động');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (2123,'hsk5','词类','副词','程度副词','过于、相当、较1、可2、格外、极其','Phó từ mức độ');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (2124,'hsk5','词类','副词','时间副词','时刻、曾经、立刻、连忙、始终、早已、即将、急忙、渐渐、尽快、早晚','Phó từ thời gian');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (2125,'hsk5','词类','副词','频率副词','老是、通常、时常','Phó từ tần suất');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (2126,'hsk5','词类','副词','方式副词','尽量、亲自','Phó từ phương thức');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (2127,'hsk5','词类','副词','关联副词','便、一旦','Phó từ liên hệ');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (2128,'hsk5','词类','副词','情态副词','似乎、仿佛','Phó từ tình thái');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (2129,'hsk5','词类','副词','语气副词','毕竟、居然、反正、根本、果然、简直、绝对、的确、反而、白、刚好、可3','Phó từ ngữ khí');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (2130,'hsk5','词类','介词','引出时间、处所','自从','Giới từ chỉ thời gian/nơi chốn');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (2131,'hsk5','词类','介词','引出方向、路径','朝、沿（着）','Giới từ chỉ hướng/đường đi');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (2132,'hsk5','词类','介词','引出对象','替、同1、较2','Giới từ chỉ đối tượng');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (2133,'hsk5','词类','介词','引出凭借、依据','凭','Giới từ chỉ phương tiện/căn cứ');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (2134,'hsk5','词类','介词','引出凭借、依据','据','Giới từ chỉ phương tiện/căn cứ');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (2135,'hsk5','词类','介词','引出凭借、依据','依据','Giới từ chỉ phương tiện/căn cứ');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (2136,'hsk5','词类','连词','连接词或词组','以及、同2','Nối từ/cụm từ');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (2137,'hsk5','词类','连词','连接分句或句子','从而、可见、假如、总之','Nối vế câu/câu');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (2138,'hsk5','词类','助词','其他助词','似的','Trợ từ khác');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (2139,'hsk5','短语','固定短语','四字格','A来A去','Cách nói 4 chữ');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (2140,'hsk5','短语','固定短语','四字格','A着A着','Cách nói 4 chữ');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (2141,'hsk5','短语','固定短语','四字格','没A没B','Cách nói 4 chữ');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (2142,'hsk5','短语','固定短语','四字格','说A就A','Cách nói 4 chữ');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (2143,'hsk5','短语','固定短语','其他','不得了','Khác');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (2144,'hsk5','短语','固定短语','其他','用不着','Khác');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (2145,'hsk5','短语','固定短语','其他','从……来看','Khác');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (2146,'hsk5','短语','固定短语','其他','A的A，B的B','Khác');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (2147,'hsk5','短语','固定短语','其他','（自）……以来','Khác');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (2148,'hsk5','短语','固定短语','其他','由……组成','Khác');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (2149,'hsk5','短语','固定短语','其他','X也不是，Y也不是','Khác');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (2150,'hsk5','短语','固定短语','其他','X也X不得，Y也Y不得','Khác');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (2151,'hsk5','固定格式','','','X是它，Y也是它','Cấu trúc cố định');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (2152,'hsk5','固定格式','','','X着也是X着','Cấu trúc cố định');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (2153,'hsk5','固定格式','','','不管怎样说','Cấu trúc cố định');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (2154,'hsk5','固定格式','','','真有你/他/她的','Cấu trúc cố định');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (2155,'hsk5','固定格式','','','X什么X','Cấu trúc cố định');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (2156,'hsk5','固定格式','','','什么X不X（的）','Cấu trúc cố định');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (2157,'hsk5','固定格式','','','不X白不X','Cấu trúc cố định');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (2158,'hsk5','固定格式','','','X来X去，都是/就是……','Cấu trúc cố định');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (2159,'hsk5','固定格式','','','动词+什么（就）是什么','Cấu trúc cố định');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (2160,'hsk5','句子成分','状语','','多项状语','Trạng ngữ');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (2161,'hsk5','句子成分','补语','可能补语2','动词+得/不得','Động từ + 得/不得 (không… được)');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (2162,'hsk5','句子成分','补语','程度补语2','形容词/心理动词+得+不得了','Bổ ngữ mức độ (2)');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (2163,'hsk5','句子成分','补语','趋向补语3','趋向补语的引申用法：表示状态意义：动词/形容词+下来/下去/起来/过来/过去','Bổ ngữ xu hướng (3)');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (2164,'hsk5','句子成分','补语','状态补语2','（1）动词/形容词+得+动词短语','Bổ ngữ trạng thái (2)');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (2165,'hsk5','句子成分','补语','状态补语2','（2）动词/形容词+得+主谓短语','Bổ ngữ trạng thái (2)');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (2166,'hsk5','句子成分','补语','状态补语2','（3）动词/形容词+得+固定短语','Bổ ngữ trạng thái (2)');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (2167,'hsk5','句子的类型','特殊句型','“有”字句3','（1）表示存在、具有：主语+有+着+宾语','Biểu thị tồn tại/sở hữu 有+着');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (2168,'hsk5','句子的类型','特殊句型','“有”字句3','（2）表示附着：主语+动词+有+宾语','Biểu thị gắn kèm: V + 有');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (2169,'hsk5','句子的类型','特殊句型','“把”字句3','（1）主语+把+宾语+一+动词','S + 把 + O + 一 + V');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (2170,'hsk5','句子的类型','特殊句型','“把”字句3','（2）主语+把+宾语1+动词+宾语2','S + 把 + O1 + V + O2');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (2171,'hsk5','句子的类型','特殊句型','连动句3','前后两个动词性词语具有因果、转折、条件关系','Câu liên động (3)');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (2172,'hsk5','句子的类型','特殊句型','比较句4','A+形容词+B+数量补语','A + tính từ + B + bổ ngữ số lượng');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (2173,'hsk5','句子的类型','特殊句型','被动句3','主语+被/叫/让+宾语+给+动词+其他成分','S + 被/叫/让 + O + 给 + V + ...');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (2174,'hsk5','句子的类型','复句','承接复句','……，便……','…, liền…');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (2175,'hsk5','句子的类型','复句','选择复句','或是……，或是……','Hoặc…, hoặc…');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (2176,'hsk5','句子的类型','复句','假设复句','一旦……，就……','Một khi…, thì…');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (2177,'hsk5','句子的类型','复句','假设复句','假如……，（就）……','Giả sử…, (thì)…');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (2178,'hsk5','句子的类型','复句','假设复句','万一……，（就）……','Ngộ nhỡ…, (thì)…');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (2179,'hsk5','句子的类型','复句','假设复句','……，要不然/不然……','…, nếu không thì…');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (2180,'hsk5','句子的类型','复句','因果复句','……，因而……','…, do đó…');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (2181,'hsk5','句子的类型','复句','因果复句','……，可见……','…, có thể thấy…');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (2182,'hsk5','句子的类型','复句','让步复句','哪怕……，也……','Dẫu…, cũng…');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (2183,'hsk5','句子的类型','复句','递进复句','不但不/不但没有……，反而……','Không những không…, mà ngược lại…');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (2184,'hsk5','句子的类型','复句','递进复句','不是……，还/还是……','Không phải…, mà còn…');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (2185,'hsk5','句子的类型','复句','目的复句','……，为的是……','…, để mà…');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (2186,'hsk5','句子的类型','复句','紧缩复句','没有……就没有……','Không có…, sẽ không có…');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (2187,'hsk5','句子的类型','复句','紧缩复句','不……不……','Không… không… (câu ghép rút gọn)');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (2188,'hsk5','句子的类型','复句','紧缩复句','再……也……','Dù có… cũng…');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (2189,'hsk6','语素','类前缀','','超—、多—、反—、无—、亚—、准—','Tiền tố (biến thể)');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (2190,'hsk6','语素','类后缀','','—化、—式、—型、—性','Hậu tố (biến thể)');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (2191,'hsk6','词类','代词','人称代词','人家','Người ta');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (2192,'hsk6','词类','量词','名量词','专用名量词：串、滴、枝、扇、卷1、卷2','Lượng từ danh');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (2193,'hsk6','词类','量词','动量词','番','Lượng từ động');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (2194,'hsk6','词类','副词','程度副词','特、异常、较为','Phó từ mức độ');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (2195,'hsk6','词类','副词','范围副词','净、一同、大都','Phó từ phạm vi');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (2196,'hsk6','词类','副词','时间副词','一时、不时、仍旧、依旧、一向','Phó từ thời gian');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (2197,'hsk6','词类','副词','频率副词','一再、再三','Phó từ tần suất');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (2198,'hsk6','词类','副词','方式副词','不禁、赶忙、特地、特意、偷偷','Phó từ (không nén được, vội, cố ý, lén)');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (2199,'hsk6','词类','副词','否定副词','未必','Chưa chắc');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (2200,'hsk6','词类','副词','语气副词','恰好、倒是、干脆、明明、总算','Phó từ ngữ khí (đúng lúc, ngược lại, dứt khoát)');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (2201,'hsk6','词类','介词','引出时间、处所','于','Giới từ chỉ thời gian/nơi chốn');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (2202,'hsk6','词类','介词','引出对象','至于','Giới từ chỉ đối tượng');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (2203,'hsk6','词类','介词','引出目的、原因','因','Giới từ chỉ mục đích/nguyên nhân');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (2204,'hsk6','词类','介词','表示排除','除','Biểu thị loại trừ');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (2205,'hsk6','词类','连词','连接分句或句子','不料','Nối vế câu/câu');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (2206,'hsk6','词类','助词','结构助词','所','Trợ từ “所”');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (2207,'hsk6','词类','助词','语气助词','啦、嘛','Trợ từ ngữ khí');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (2208,'hsk6','词类','助词','其他助词','也好','Trợ từ khác');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (2209,'hsk6','短语','固定短语','四字格','A这A那','A này A kia');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (2210,'hsk6','短语','固定短语','四字格','左A右B','Trái A phải B');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (2211,'hsk6','短语','固定短语','其他','好（不）容易','Khác');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (2212,'hsk6','短语','固定短语','其他','那倒（也）是','Khác');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (2213,'hsk6','短语','固定短语','其他','算了','Khác');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (2214,'hsk6','短语','固定短语','其他','得了','Khác');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (2215,'hsk6','固定格式','','','A一+量词，B一+量词','Cấu trúc cố định');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (2216,'hsk6','固定格式','','','东一A，西一A','Cấu trúc cố định');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (2217,'hsk6','固定格式','','','到……为止','Cho đến…, kết thúc');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (2218,'hsk6','固定格式','','','X到Y头上来了','Cấu trúc cố định');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (2219,'hsk6','固定格式','','','不X不……，一X……','Cấu trúc cố định');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (2220,'hsk6','固定格式','','','好你个X','Cấu trúc cố định');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (2221,'hsk6','固定格式','','','早（也）不X，晚（也）不X','Cấu trúc cố định');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (2222,'hsk6','固定格式','','','看/瞧+把+宾语（施事）+X得','Cấu trúc cố định');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (2223,'hsk6','固定格式','','','放着X不Y','Cấu trúc cố định');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (2224,'hsk6','固定格式','','','X了就X了，（没）有……','Cấu trúc cố định');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (2225,'hsk6','固定格式','','','这/那也不X，那/这也不Y','Cấu trúc cố định');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (2226,'hsk6','固定格式','','','X归X，Y归Y','Cấu trúc cố định');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (2227,'hsk6','固定格式','','','看你X的/瞧他X的','Cấu trúc cố định');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (2228,'hsk6','句子成分','补语','程度补语3','动词/形容词+透+了','Động từ/tính từ + 透 + 了 (rất, toát)');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (2229,'hsk6','句子的类型','特殊句型','“把”字句4','（1）主语（非生物体）+把+宾语+动词+其他成分','Chủ ngữ (không phải người) + 把 + O + V');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (2230,'hsk6','句子的类型','特殊句型','“把”字句4','（2）主语+把+宾语（施事）+动词+其他成分','S + 把 + O (chủ thể hành động) + V');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (2231,'hsk6','句子的类型','复句','并列复句','一时……一时……','Lúc…, lúc…');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (2232,'hsk6','句子的类型','复句','选择复句','要么……，要么……','Hoặc…, hoặc…');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (2233,'hsk6','句子的类型','复句','转折复句','虽……，但/可/却/也……','Dù…, nhưng/ngược/cũng…');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (2234,'hsk6','句子的类型','复句','条件复句','凡是……，都……','Phàm là…, đều…');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (2235,'hsk6','句子的类型','复句','条件复句','除非……，才……','Trừ phi…, mới…');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (2236,'hsk6','句子的类型','复句','条件复句','除非……，否则/不然……','Trừ phi…, nếu không thì…');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (2237,'hsk6','句子的类型','复句','让步复句','就算……，也……','Cho dù…, cũng…');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (2238,'hsk6','句子的类型','复句','目的复句','……，以便……','…, để (mục đích)…');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (2239,'hsk79','语素','类前缀','','后—、亲—','Tiền tố (biến thể)');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (2240,'hsk79','语素','类后缀','','—观、—鬼、—界、—然、—坛、—为、—制','Hậu tố (biến thể)');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (2241,'hsk79','词类','动词','','巴不得、并非、除外、犯不着、犯得着、恨不得、可否、可谓、免不了、所谓、有所、予以','Động từ');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (2242,'hsk79','词类','代词','人称代词','我','Đại từ nhân xưng');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (2243,'hsk79','词类','代词','指示代词','彼、这么着、兹','Đại từ chỉ định');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (2244,'hsk79','词类','代词','疑问代词','何、怎么着','Đại từ nghi vấn');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (2245,'hsk79','词类','代词','数量代词','若干','Đại từ số lượng');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (2246,'hsk79','词类','量词','名量词','重、截、缕、码、枚、摊、丸、则、幢、宗','Lượng từ danh');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (2247,'hsk79','词类','量词','动量词','通','Lượng từ động');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (2248,'hsk79','词类','量词','复合量词','人次','Lượng từ ghép');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (2249,'hsk79','词类','副词','程度副词','大为、分外、何等、极度、极力、略、略微、颇、稍稍、万分、微、尤为、愈加、越发','Phó từ mức độ');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (2250,'hsk79','词类','副词','范围副词','大体、概、皆、尽、均、通通、统统、唯、唯独、唯有、无非、一概','Phó từ phạm vi');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (2251,'hsk79','词类','副词','时间副词','姑且、即、即时、届时、尽早、就此、历来、尚、随即、向来、一经、暂且、早日','Phó từ thời gian');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (2252,'hsk79','词类','副词','频率副词','连连、屡次、屡屡、频、时而、时时、相继、一个劲（儿）、一连、再度','Phó từ tần suất');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (2253,'hsk79','词类','副词','方式副词','按理、按说、百般、不由得、趁机、趁早、大肆、断然、公然、火速、截然、竭力、尽情、就近、刻意、拼命、强行、任意、日趋、如期、擅自、私自、特此、瞎、一并、一举、一手、毅然、有意、照常、照例、照样、执意、骤然、逐一、专程','Phó từ phương thức');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (2254,'hsk79','词类','副词','否定副词','不见得、绝不、无从、无须、无可、勿','Phó từ phủ định');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (2255,'hsk79','词类','副词','语气副词','必定、必将、不妨、不免、反倒、非得、分明、怪不得、果真、好在、何必、竟、愣、莫非、难怪、宁可、宁愿、碰巧、偏偏、恰巧、切、情愿、势必、索性、万万、未免、务必、幸好、幸亏、终究、何不、何尝、何苦','Phó từ ngữ khí');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (2256,'hsk79','词类','副词','判断副词','乃','Phó từ phán đoán');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (2257,'hsk79','词类','介词','引出时间、处所','打','Giới từ chỉ thời gian/nơi chốn');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (2258,'hsk79','词类','介词','引出对象','当着、就6','Giới từ chỉ đối tượng');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (2259,'hsk79','词类','介词','引出凭借、依据','本着、基于、鉴于1、经、依','Giới từ chỉ phương tiện/căn cứ');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (2260,'hsk79','词类','连词','连接分句或句子','鉴于2、况且、免得、若、倘若、以防','Nối vế câu/câu');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (2261,'hsk79','词类','连词','连接词或词组以及分句或句子','加之、乃至、且','Nối từ/cụm và vế câu/câu');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (2262,'hsk79','词类','助词','语气助词','罢了、也罢、矣','Trợ từ ngữ khí');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (2263,'hsk79','词类','助词','语气助词','爱A不A','Trợ từ ngữ khí');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (2264,'hsk79','短语','固定短语','四字格','半A半B','Cách nói 4 chữ');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (2265,'hsk79','短语','固定短语','四字格','不A不B','Cách nói 4 chữ');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (2266,'hsk79','短语','固定短语','四字格','不A而B','Cách nói 4 chữ');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (2267,'hsk79','短语','固定短语','四字格','东A西B','Cách nói 4 chữ');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (2268,'hsk79','短语','固定短语','四字格','非A非B','Cách nói 4 chữ');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (2269,'hsk79','短语','固定短语','四字格','忽A忽B','Cách nói 4 chữ');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (2270,'hsk79','短语','固定短语','四字格','或A或B','Cách nói 4 chữ');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (2271,'hsk79','短语','固定短语','四字格','可A可B','Cách nói 4 chữ');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (2272,'hsk79','短语','固定短语','四字格','连A带B','Cách nói 4 chữ');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (2273,'hsk79','短语','固定短语','四字格','七A八B','Cách nói 4 chữ');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (2274,'hsk79','短语','固定短语','四字格','时A时B','Cách nói 4 chữ');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (2275,'hsk79','短语','固定短语','四字格','无A不B','Cách nói 4 chữ');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (2276,'hsk79','短语','固定短语','四字格','无A可B','Cách nói 4 chữ');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (2277,'hsk79','短语','固定短语','四字格','自A自B','Cách nói 4 chữ');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (2278,'hsk79','短语','固定短语','其他（话语标记）','不瞒你说','Khác (tiểu từ thoại)');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (2279,'hsk79','短语','固定短语','其他（话语标记）','不是','Khác (tiểu từ thoại)');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (2280,'hsk79','短语','固定短语','其他（话语标记）','不是我说你','Khác (tiểu từ thoại)');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (2281,'hsk79','短语','固定短语','其他（话语标记）','反过来（说）','Khác (tiểu từ thoại)');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (2282,'hsk79','短语','固定短语','其他（话语标记）','概括来说','Khác (tiểu từ thoại)');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (2283,'hsk79','短语','固定短语','其他（话语标记）','归根到底','Khác (tiểu từ thoại)');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (2284,'hsk79','短语','固定短语','其他（话语标记）','话是这么说','Khác (tiểu từ thoại)');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (2285,'hsk79','短语','固定短语','其他（话语标记）','话（又）说回来','Khác (tiểu từ thoại)');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (2286,'hsk79','短语','固定短语','其他（话语标记）','换句话说','Khác (tiểu từ thoại)');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (2287,'hsk79','短语','固定短语','其他（话语标记）','简（而）言之','Khác (tiểu từ thoại)');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (2288,'hsk79','短语','固定短语','其他（话语标记）','可不（是嘛）','Khác (tiểu từ thoại)');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (2289,'hsk79','短语','固定短语','其他（话语标记）','老实说','Khác (tiểu từ thoại)');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (2290,'hsk79','短语','固定短语','其他（话语标记）','（你）还别说','Khác (tiểu từ thoại)');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (2291,'hsk79','短语','固定短语','其他（话语标记）','你看你','Khác (tiểu từ thoại)');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (2292,'hsk79','短语','固定短语','其他（话语标记）','说到哪儿去了','Khác (tiểu từ thoại)');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (2293,'hsk79','短语','固定短语','其他（话语标记）','说真的','Khác (tiểu từ thoại)');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (2294,'hsk79','短语','固定短语','其他（话语标记）','退一步说','Khác (tiểu từ thoại)');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (2295,'hsk79','短语','固定短语','其他（话语标记）','无论如何','Khác (tiểu từ thoại)');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (2296,'hsk79','短语','固定短语','其他（话语标记）','要（让）我说','Khác (tiểu từ thoại)');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (2297,'hsk79','短语','固定短语','其他（话语标记）','这不','Khác (tiểu từ thoại)');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (2298,'hsk79','短语','固定短语','其他（话语标记）','这样一来','Khác (tiểu từ thoại)');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (2299,'hsk79','短语','固定短语','其他（话语标记）','真是的','Khác (tiểu từ thoại)');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (2300,'hsk79','短语','固定短语','其他（话语标记）','综上所述','Khác (tiểu từ thoại)');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (2301,'hsk79','短语','固定短语','其他（话语标记）','总的来说','Khác (tiểu từ thoại)');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (2302,'hsk79','短语','固定短语','其他（话语标记）','总而言之','Khác (tiểu từ thoại)');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (2303,'hsk79','固定格式','','','X到这个地步/份上','Cấu trúc cố định');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (2304,'hsk79','固定格式','','','X得要命/要死','Cấu trúc cố định');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (2305,'hsk79','固定格式','','','X都不/没X','Cấu trúc cố định');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (2306,'hsk79','固定格式','','','X就X个Y','Cấu trúc cố định');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (2307,'hsk79','固定格式','','','X了Y，Y了X','Cấu trúc cố định');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (2308,'hsk79','固定格式','','','X也好，Y也罢','Cấu trúc cố định');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (2309,'hsk79','固定格式','','','别提（有）多+形容词+了','Cấu trúc cố định');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (2310,'hsk79','固定格式','','','不亚于……','Cấu trúc cố định');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (2311,'hsk79','固定格式','','','不知X是/才好','Cấu trúc cố định');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (2312,'hsk79','固定格式','','','动不动就……','Cấu trúc cố định');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (2313,'hsk79','固定格式','','','动词+得个……','Cấu trúc cố định');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (2314,'hsk79','固定格式','','','动词+个X','Cấu trúc cố định');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (2315,'hsk79','固定格式','','','该X（就）X，该Y（就）Y','Cấu trúc cố định');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (2316,'hsk79','固定格式','','','何至于……','Cấu trúc cố định');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (2317,'hsk79','固定格式','','','仅次于X','Cấu trúc cố định');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (2318,'hsk79','固定格式','','','看在X的面子上','Cấu trúc cố định');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (2319,'hsk79','固定格式','','','没什么+动词+头儿','Cấu trúc cố định');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (2320,'hsk79','固定格式','','','没什么好+动词+的','Cấu trúc cố định');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (2321,'hsk79','固定格式','','','莫过于……','Cấu trúc cố định');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (2322,'hsk79','固定格式','','','你说你一个X，……','Cấu trúc cố định');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (2323,'hsk79','固定格式','','','什么A的B的','Cấu trúc cố định');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (2324,'hsk79','固定格式','','','视……而定','Tùy… mà định');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (2325,'hsk79','固定格式','','','谈何……','Cấu trúc cố định');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (2326,'hsk79','固定格式','','','无非/不过/只是……罢了/而已','Cấu trúc cố định');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (2327,'hsk79','固定格式','','','想X之所想，急X之所急','Cấu trúc cố định');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (2328,'hsk79','固定格式','','','向……致以……','Cấu trúc cố định');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (2329,'hsk79','固定格式','','','要X有/没X，要Y有/没Y','Cấu trúc cố định');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (2330,'hsk79','固定格式','','','因……而……','Vì… mà…');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (2331,'hsk79','固定格式','','','有何X','Cấu trúc cố định');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (2332,'hsk79','固定格式','','','有什么+动词+头儿','Cấu trúc cố định');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (2333,'hsk79','固定格式','','','（在）……之余','Cấu trúc cố định');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (2334,'hsk79','固定格式','','','值此……之际，……','Cấu trúc cố định');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (2335,'hsk79','句子的类型','特殊句型','比较句5','A+形容词+于/过+B','Câu so sánh (5)');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (2336,'hsk79','句子的类型','简单复句','并列复句','一来……，二来……，三来……','Câu ghép đẳng lập');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (2337,'hsk79','句子的类型','简单复句','并列复句','一则……，二则……，三则……','Câu ghép đẳng lập');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (2338,'hsk79','句子的类型','简单复句','解说复句','所谓……，就是……','Câu ghép giải thích');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (2339,'hsk79','句子的类型','简单复句','选择复句','或……，或……','Câu ghép lựa chọn');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (2340,'hsk79','句子的类型','简单复句','选择复句','宁可/宁愿……，也不……','Thà…, còn hơn…');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (2341,'hsk79','句子的类型','简单复句','选择复句','与其……，宁愿/宁可……','Thà…, còn hơn…');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (2342,'hsk79','句子的类型','简单复句','转折复句','X（倒）是X（了），……','Câu ghép tương phản');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (2343,'hsk79','句子的类型','简单复句','转折复句','别看……，……','Đừng tưởng…, (thực ra)…');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (2344,'hsk79','句子的类型','简单复句','转折复句','虽说……，但/可……','Tuy nói…, nhưng…');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (2345,'hsk79','句子的类型','简单复句','条件复句','无论……与否，都……','Dù… hay không, đều…');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (2346,'hsk79','句子的类型','简单复句','条件复句','凡……（者），均（可）……','Câu ghép điều kiện');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (2347,'hsk79','句子的类型','简单复句','假设复句','假若/假使……，……','Câu ghép giả định');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (2348,'hsk79','句子的类型','简单复句','假设复句','幸亏/幸好……，不然/否则……','May mà…, nếu không…');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (2349,'hsk79','句子的类型','简单复句','假设复句','纵然/纵使……，也……','Cho dù…, cũng…');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (2350,'hsk79','句子的类型','简单复句','因果复句','（因）……，故……','(Vì)…, nên (trang trọng)…');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (2351,'hsk79','句子的类型','简单复句','因果复句','……，以至（于）……','…, đến mức…');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (2352,'hsk79','句子的类型','简单复句','递进复句','别说……，都/也……','Đừng nói…, đều/cũng…');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (2353,'hsk79','句子的类型','简单复句','递进复句','……不说，还……','Câu ghép tăng tiến');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (2354,'hsk79','句子的类型','简单复句','递进复句','连……都……，更不用说……了','Câu ghép tăng tiến');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (2355,'hsk79','句子的类型','简单复句','递进复句','……尚且……，（更）何况……','…đã vậy…, huống chi…');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (2356,'hsk79','句子的类型','简单复句','递进复句','……，更不用说……了','…, nói gì đến…');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (2357,'hsk79','句子的类型','简单复句','目的复句','为（了）……起见，……','Vì (để)… cho (an toàn)…');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (2358,'hsk79','句子的类型','简单复句','目的复句','……，以……','…, để (mục đích trang trọng)…');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (2359,'hsk79','句子的类型','简单复句','紧缩复句','非得……才……','Bắt buộc…, mới…');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (2360,'hsk79','句子的类型','简单复句','紧缩复句','任……也……','Cho dù…, cũng…');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (2361,'hsk79','句子的类型','多重复句','','多重并列复句','Câu ghép nhiều tầng');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (2362,'hsk79','句子的类型','多重复句','','多重转折复句','Câu ghép nhiều tầng');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (2363,'hsk79','句子的类型','多重复句','','多重假设复句','Câu ghép nhiều tầng');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (2364,'hsk79','句子的类型','多重复句','','多重因果复句','Câu ghép nhiều tầng');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (2365,'hsk79','句子的类型','多重复句','','多重递进复句','Câu ghép nhiều tầng');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (2366,'hsk79','语段（句群）','','','时间顺序','Đoạn văn (cụm câu)');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (2367,'hsk79','语段（句群）','','','空间顺序','Đoạn văn (cụm câu)');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (2368,'hsk79','语段（句群）','','','逻辑顺序','Đoạn văn (cụm câu)');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (2369,'hsk79','语段（句群）','','','话题延伸','Đoạn văn (cụm câu)');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (2370,'hsk79','语段（句群）','','','话题转换','Đoạn văn (cụm câu)');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (2371,'hsk79','语段（句群）','','','承前省略','Đoạn văn (cụm câu)');
INSERT INTO grammar (id,level,cat,sub,detail,zh,vi) VALUES (2372,'hsk79','语段（句群）','','','蒙后省略','Đoạn văn (cụm câu)');
CREATE TABLE grammar_docs (
  id INTEGER PRIMARY KEY AUTOINCREMENT, level TEXT NOT NULL UNIQUE, title TEXT, content TEXT NOT NULL
);
INSERT INTO grammar_docs (id,level,title,content) VALUES (9,'hsk1','新版HSK考试大纲 · 语法 — HSK 1','新版HSK考试大纲 · 语法 — HSK 1
========================================
1. Hình vị (语素)
  1.1 Tiền tố (前缀)
    - 小— (nhỏ, tiền tố thân mật) 、第— (thứ — số thứ tự)
  1.2 Hậu tố (后缀)
    - —们 (số nhiều — người) 、—边 (bên, phía)

2. Từ loại (词类)
  2.1 Danh từ (名词)
    2.1.1 Danh từ chỉ phương vị (方位名词)
      - 上 (trên) 、下 (dưới) 、里 (trong) 、外 (ngoài) 、前 (trước) 、后 (sau)
  2.2 Động từ (动词)
    2.2.1 Động từ năng nguyện (能愿动词)
      - 会 (biết, sẽ) 、能 (có thể)
      - 想 (muốn, nghĩ) 、要 (muốn, cần)
      - 可以 (có thể, được phép)
    2.2.2 Từ ly hợp (离合词)
      - 看病 (khám bệnh) 、睡觉 (ngủ) 、说话 (nói chuyện) 、上课 (vào học) 、下课 (tan học) 、上班 (đi làm) 、下班 (tan làm) 、生病 (bị bệnh)
  2.3 Đại từ (代词)
    2.3.1 Đại từ nghi vấn (疑问代词)
      - 多 (bao nhiêu — hỏi mức độ) 、多少 (bao nhiêu) 、几 (mấy) 、哪 (nào) 、哪儿 (đâu) 、哪里 (đâu) 、哪些 (những cái nào) 、什么 (gì) 、谁 (ai) 、怎么 (thế nào, sao) 、怎么样 (thế nào, ra sao)
    2.3.2 Đại từ nhân xưng (人称代词)
      - 我 (tôi) 、你 (bạn) 、您 (ngài — kính ngữ) 、他 (anh ấy) 、她 (cô ấy) 、我们 (chúng tôi) 、你们 (các bạn) 、他们 (họ — nam) 、她们 (họ — nữ) 、它 (nó) 、它们 (chúng nó) 、大家 (mọi người)
    2.3.3 Đại từ chỉ thị (指示代词)
      - 这 (này) 、那 (kia, đó) 、这儿 (đây) 、那儿 (kia, đó) 、这里 (đây) 、那里 (kia, đó) 、这些 (những cái này) 、那些 (những cái kia) 、有的 (có cái) 、这个 (cái này) 、那个 (cái kia) 、有些 (một số)
  2.4 Số từ (数词)
    - 一 (một) 、二/两 (hai) 、三 (ba) 、四 (bốn) 、五 (năm) 、六 (sáu) 、七 (bảy) 、八 (tám) 、九 (chín) 、零 (không, số 0) 、十 (mười) 、百 (trăm) 、半 (nửa) 、千 (nghìn)
  2.5 Lượng từ (量词)
    2.5.1 Danh lượng từ (名量词)
      - （1）Chuyên dụng：本 (quyển) 、个 (cái) 、家 (nhà, tiệm) 、口 (miệng — người trong nhà) 、块 (đồng, miếng) 、件 (chiếc, việc) 、只 (con — động vật) 、元 (đồng, nguyên — tiền)
      - （2）Mượn：杯 (cốc, ly)
    2.5.2 Thời lượng từ (时量词)
      - 日 (ngày) 、号 (ngày, mồng) 、岁 (tuổi) 、点 (giờ) 、分 (phút) 、年 (năm) 、天 (ngày)
  2.6 Phó từ (副词)
    2.6.1 Mức độ (程度副词)
      - 非常 (rất) 、很 (rất) 、太 (quá) 、真 (thật, quả thật) 、有（一）点儿 (hơi, có chút)
    2.6.2 Phạm vi (范围副词)
      - 都1 (đều)
    2.6.3 Thời gian (时间副词)
      - 在 (đang) 、正在 (đang)
    2.6.4 Tần suất (频率副词)
      - 再1 (lại, nữa — việc chưa xảy ra)
    2.6.5 Liên kết (关联副词)
      - 还1 (còn, vẫn) 、也 (cũng)
    2.6.6 Phủ định (否定副词)
      - 不 (không) 、没（有） (chưa/không có) 、不要 (đừng)
  2.7 Giới từ (介词)
    2.7.1 Dẫn ra thời gian, nơi chốn
      - 在 (ở, tại)
    2.7.2 Dẫn ra đối tượng
      - 和1 (và, với) 、对 (đối với)
  2.8 Liên từ (连词)
    2.8.1 Nối từ ngữ hoặc cụm từ
      - 和2 (và)
  2.9 Trợ từ (助词)
    2.9.1 Kết cấu (结构助词)
      - 的1 (trợ từ sở hữu/định ngữ "của")
    2.9.2 Động thái (动态助词)
      - 了1 (trợ từ hoàn thành "rồi")
    2.9.3 Ngữ khí (语气助词)
      - 吧1 (nhé, đi — đề nghị) 、了2 (rồi — biến hóa) 、吗 (à, không — nghi vấn) 、呢1 (nhỉ, thì sao) 、呢2 (đang... — tiếp diễn) 、呢3 (nhỉ — nghi vấn nhẹ)
  2.10 Thán từ (叹词)
    - 喂 (này, alô)

3. Cụm từ (短语)
  3.1 Kết cấu (结构类型)
    3.1.1 Cơ bản (基本结构类型)
      - （1）Cụm liên hợp
      - （2）Cụm chính phụ
      - （3）Cụm động-tân
      - （4）Cụm chủ-vị
    3.1.2 Khác (其他结构类型)
      - （1）Cụm số lượng
      - （2）Cụm giới-tân
      - （3）Cụm phương vị

4. Thành phần câu (句子成分)
  4.1 Chủ ngữ (主语)
    - Danh từ, đại từ hoặc cụm danh từ làm chủ ngữ
  4.2 Vị ngữ (谓语)
    - Danh từ, đại từ, số từ hoặc cụm số lượng làm vị ngữ
    - Động từ/cụm động từ, tính từ/cụm tính từ làm vị ngữ
  4.3 Tân ngữ (宾语)
    - Danh từ, đại từ hoặc cụm danh từ làm tân ngữ
  4.4 Định ngữ (定语)
    - Từ ngữ danh từ tính, cụm tính từ, cụm số lượng làm định ngữ
  4.5 Trạng ngữ (状语)
    - Phó từ, tính từ làm trạng ngữ chỉ thời gian, nơi chốn
  4.6 Bổ ngữ (补语)
    4.6.1 Bổ ngữ số lượng 1 (数量补语1)
      - Động từ + bổ ngữ động lượng

5. Các loại câu (句子的类型)
  5.1 Câu hình (句型)
    5.1.1 Câu đơn (单句)
      - Câu chủ-vị 1：câu vị ngữ động từ
      - Câu chủ-vị 2：câu vị ngữ tính từ
      - Câu chủ-vị 3：câu vị ngữ danh từ
      - Câu không có kết cấu chủ-vị
  5.2 Loại câu (句类)
    5.2.1 Câu trần thuật (陈述句)
      -
    5.2.2 Câu nghi vấn (疑问句)
      - （1）Câu hỏi có/không
      - （2）Câu hỏi đặc chỉ
      - （3）Câu hỏi chính phản
    5.2.3 Câu cầu khiến (祈使句)
      -
    5.2.4 Câu cảm thán (感叹句)
      -
  5.3 Câu đặc biệt (特殊句型)
    5.3.1 Câu chữ "是" 1 ("是"字句1)
      - Biểu thị đồng nhất hoặc thuộc loại
    5.3.2 Câu chữ "有" 1 ("有"字句1)
      - Biểu thị sở hữu
    5.3.3 Câu tồn hiện 1 (存现句1)
      - （1）Nơi chốn+是+danh từ
      - （2）Nơi chốn+有+cụm số lượng+danh từ
    5.3.4 Câu liên động 1 (连动句1)
      - （1）Hai động tác xảy ra trước sau, động tác sau là mục đích của động tác trước
      - （2）Động tác trước là phương thức của động tác sau
    5.3.5 Câu song tân ngữ 1 (双宾语句1)
      - Chủ ngữ+động từ+tân ngữ1+tân ngữ2
  5.4 Câu phức (复句)
    5.4.1 Câu phức không dùng từ liên kết
      -
    5.4.2 Song song (并列复句)
      - ……，也……
      - ……，还……

6. Thái của động tác (动作的态)
  6.1
    6.1.1 Thể hoàn thành (完成态)
      - Dùng trợ từ động thái "了1" để biểu thị
    6.1.2 Thể biến hóa (变化态)
      - Dùng trợ từ động thái "了2" để biểu thị
    6.1.3 Thể tiếp diễn (进行态)
      - （1）……在/正在+động từ
      - （2）……在/正在+động từ……+呢
      - （3）……呢

7. Cách diễn đạt đặc biệt (特殊表达法)
  7.1 Cách biểu thị số (数的表达法)
    - Cách biểu thị số tiền
    - Cách biểu thị số thứ tự 1：第+số từ
  7.2 Cách biểu thị thời gian (时间表示法)
    - （1）Cách biểu thị năm, tháng, ngày, thứ trong tuần
    - （2）Cách biểu thị giờ
');
INSERT INTO grammar_docs (id,level,title,content) VALUES (10,'hsk2','新版HSK考试大纲 · 语法 — HSK 2','新版HSK考试大纲 · 语法 — HSK 2
========================================
1. Hình vị (语素)
  1.1 Hậu tố (后缀)
    - 面 (mặt, phía — hậu tố phương vị)

2. Từ loại (词类)
  2.1 Danh từ (名词)
    2.1.1 Danh từ chỉ phương vị (方位名词)
      - 左 (trái) 、右 (phải)
  2.2 Động từ (动词)
    2.2.1 Động từ trùng điệp (动词重叠)
      - AA、A一A、A了A、ABAB (các dạng láy động từ, biểu thị hành động ngắn/nhẹ)
    2.2.2 Động từ năng nguyện (能愿动词)
      - 可能 (có thể, có lẽ)
    2.2.3 Từ ly hợp (离合词)
      - 帮忙 (giúp đỡ) 、游泳 (bơi) 、跳舞 (nhảy múa) 、跑步 (chạy bộ)
  2.3 Đại từ (代词)
    2.3.1 Đại từ nghi vấn (疑问代词)
      - 为什么 (tại sao)
    2.3.2 Đại từ nhân xưng (人称代词)
      - 自己 (bản thân, tự mình)
    2.3.3 Đại từ chỉ thị (指示代词)
      - 那么 (như vậy, vậy thì) 、那样 (như thế) 、这么 (thế này) 、这样 (như thế này) 、每 (mỗi)
  2.4 Tính từ (形容词)
    2.4.1 Tính từ trùng điệp (形容词重叠)
      - AA、AABB (các dạng láy tính từ, tăng sắc thái miêu tả)
  2.5 Số từ (数词)
    - 万 (vạn — 10.000) 、好多 (nhiều, khá nhiều) 、多 (nhiều)
  2.6 Lượng từ (量词)
    2.6.1 Danh lượng từ (名量词)
      - （1）Chuyên dụng：条 (dải, con — vật dài) 、位 (vị — người, lịch sự) 、间 (gian — phòng) 、名 (người — chức danh/thứ hạng)
      - （2）Mượn：包 (gói)
    2.6.2 Động lượng từ (动量词)
      - 次 (lần)
  2.7 Phó từ (副词)
    2.7.1 Mức độ (程度副词)
      - 多 (bao nhiêu, rất) 、好 (khá, rất) 、最 (nhất)
    2.7.2 Phạm vi (范围副词)
      - 一起 (cùng nhau)
    2.7.3 Thời gian (时间副词)
      - 还2 (vẫn còn) 、已经 (đã) 、有时（候） (thỉnh thoảng) 、快 (sắp, nhanh) 、快要 (sắp) 、正 (đang)
    2.7.4 Tần suất (频率副词)
      - 常 (thường) 、经常 (thường xuyên)
    2.7.5 Phủ định (否定副词)
      - 别 (đừng)
    2.7.6 Liên kết (关联副词)
      - 再2 (rồi mới, sau đó) 、就1 (thì, liền)
    2.7.7 Ngữ khí (语气副词)
      - 都2 (đều, cả) 、就2 (chính là) 、还是1 (hay là, vẫn là)
  2.8 Giới từ (介词)
    2.8.1 Dẫn ra thời gian, nơi chốn
      - 从1 (từ)
    2.8.2 Dẫn ra phương hướng, lộ trình
      - 往 (hướng về, đi về)
      - 从2 (từ)
    2.8.3 Dẫn ra đối tượng
      - 给 (cho)
      - 比 (so với)
      - 跟1 (với, cùng)
    2.8.4 Dẫn ra nguyên nhân
      - 因为1 (vì, bởi vì)
  2.9 Liên từ (连词)
    2.9.1 Nối từ hoặc cụm từ
      - 跟2 (và, cùng)
    2.9.2 Nối phân câu hoặc câu
      - 但 (nhưng) 、但是 (nhưng mà) 、那 (vậy thì) 、虽然 (mặc dù) 、还是2 (vẫn là) 、因为2 (vì) 、所以 (cho nên)
  2.10 Trợ từ (助词)
    2.10.1 Kết cấu (结构助词)
      - 得 (trợ từ dẫn bổ ngữ mức độ) 、地 (trợ từ dẫn trạng ngữ)
    2.10.2 Động thái (动态助词)
      - 过 (đã từng — kinh nghiệm)
      - 着 (đang, ở trạng thái — tiếp diễn)
    2.10.3 Ngữ khí (语气助词)
      - 呢4 (nhỉ) 、吧2 (nhé, chắc là) 、的2 (trợ từ ngữ khí khẳng định) 、啊1 (a, nhỉ — cảm thán)

3. Cụm từ (短语)
  3.1 Kết cấu (结构类型)
    3.1.1 Cơ bản (基本结构类型)
      - Cụm động-bổ 1 (动补短语1)
    3.1.2 Khác (其他结构类型)
      - （1）Cụm chữ "的"
      - （2）Cụm liên vị
      - （3）Cụm kiêm ngữ
  3.2 Chức năng (功能类型)
    3.2.1 Cụm danh từ tính (名词性短语)
      -
    3.2.2 Cụm động từ tính (动词性短语)
      -
    3.2.3 Cụm tính từ tính (形容词性短语)
      -
  3.3 Cụm cố định (固定短语)
    3.3.1 Khác (其他)
      - 什么的 (những thứ như vậy, vân vân)

4. Cấu trúc cố định (固定格式)
  4.1
    - 还是……吧 (hay là... đi)
    - 要/快要/就要……了 (sắp... rồi)
    - 都……了 (đã... rồi)

5. Thành phần câu (句子成分)
  5.1 Chủ ngữ (主语)
    - Chủ ngữ chịu tác động (受事主语)
  5.2 Vị ngữ (谓语)
    - Cụm danh từ làm vị ngữ
  5.3 Định ngữ (定语)
    - Động từ/cụm động từ, cụm chủ-vị làm định ngữ
  5.4 Bổ ngữ (补语)
    5.4.1 Bổ ngữ kết quả 1 (结果补语1)
      - Động từ+错 (sai) /懂 (hiểu) /好 (xong, tốt) /会 (được, biết) /完 (xong)
    5.4.2 Bổ ngữ xu hướng 1 (趋向补语1)
      - Đơn giản：（1）động từ+来 (lại, đến) /去 (đi)
      - （2）động từ+上 (lên) /下 (xuống) /进 (vào) /出 (ra) /过 (qua) /回 (về)
      - Phức hợp：động từ+出来/出去/过来/过去/回来/回去/进来/进去/起来/上来/上去/下来/下去 (các bổ ngữ xu hướng kép, kết hợp hướng + đến/đi)
    5.4.3 Bổ ngữ trạng thái 1 (状态补语1)
      - Động từ+得+cụm tính từ
    5.4.4 Bổ ngữ số lượng 2 (数量补语2)
      - （1）Biểu thị thời gian kéo dài của động tác
      - （2）Tính từ+bổ ngữ số lượng

6. Các loại câu (句子的类型)
  6.1 Câu hình (句型)
    6.1.1 Câu đơn (单句)
      - Câu chủ-vị 4：câu vị ngữ chủ-vị
  6.2 Loại câu (句类)
    6.2.1 Câu nghi vấn (疑问句)
      - Câu hỏi lựa chọn dùng "还是" (hay là) nối
    6.2.2 Câu cầu khiến (祈使句)
      - Câu cầu khiến dùng "别" (đừng)
  6.3 Câu đặc biệt (特殊句式)
    6.3.1 Câu chữ "是" 2 ("是"字句2)
      - Biểu thị giải thích hoặc đặc điểm
    6.3.2 Câu chữ "有" 2 ("有"字句2)
      - Biểu thị đạt tới
    6.3.3 Câu tồn hiện 2 (存现句2)
      - Nơi chốn+động từ+着(+cụm số lượng)+danh từ
    6.3.4 Câu so sánh 1 (比较句1)
      - （1）A比B+tính từ
      - （2）A比B+tính từ+bổ ngữ số lượng/mức độ
      - （3）A有/没有B（+这么/那么）+tính từ
      - （4）A比B+động từ+得+tính từ/A+动词+得+比+B+tính từ
    6.3.5 Câu "是……的" 1 ("是……的"句1)
      - Nhấn mạnh thời gian, địa điểm, phương thức, người thực hiện
    6.3.6 Câu kiêm ngữ 1 (兼语句1)
      - Biểu thị sai khiến：chủ ngữ+请 (mời) /叫 (bảo) /让 (cho phép, khiến) ……+tân ngữ1+động từ+tân ngữ2
    6.3.7 Câu song tân ngữ 2 (双宾语句2)
      - Chủ ngữ+động từ+给+tân ngữ1+tân ngữ2
  6.4 Câu phức (复句)
    6.4.1 Lựa chọn (选择复句)
      - （是）……，还是…… (là... hay là...)
    6.4.2 Chuyển ý (转折复句)
      - 虽然……，但是…… (mặc dù... nhưng...)
    6.4.3 Nhân quả (因果复句)
      - 因为……，所以…… (vì... nên...)
    6.4.4 Rút gọn (紧缩复句)
      - 一……就…… (vừa... đã...)

7. Thái của động tác (动作的态)
  7.1
    7.1.1 Thể tiếp diễn/duy trì (持续态)
      - Động từ+着：（1）biểu thị trạng thái tiếp diễn
      - （2）biểu thị động tác tiếp diễn
    7.1.2 Thể kinh nghiệm (经历态)
      - Dùng trợ từ động thái "过" (đã từng) để biểu thị

8. Cách diễn đạt đặc biệt (特殊表达法)
  8.1 Cách biểu thị số (数的表达法)
    - Cách biểu thị số thứ tự 2：số từ+lượng từ
    - Cách biểu thị số ước lượng 1：（1）dùng "几" (mấy) biểu thị số ước lượng
    - （2）số từ+多 (hơn) +lượng từ
    - （3）số từ+lượng từ+多 (hơn)
');
INSERT INTO grammar_docs (id,level,title,content) VALUES (11,'hsk3','新版HSK考试大纲 · 语法 — HSK 3','新版HSK考试大纲 · 语法 — HSK 3
========================================
1. Hình vị (语素)
  1.1 Tiền tố (前缀)
    - 老— (già, quen — tiền tố thân mật, VD 老师)
  1.2 Hậu tố (后缀)
    - —家 (nhà, giới — VD 画家) 、—子 (hậu tố danh từ, VD 儿子) 、—员 (viên, người — VD 服务员)

2. Từ loại (词类)
  2.1 Danh từ (名词)
    2.1.1 Danh từ chỉ phương vị (方位名词)
      - 东 (đông) 、南 (nam) 、西 (tây) 、北 (bắc) 、北方 (phương bắc) 、东方 (phương đông) 、南方 (phương nam) 、西方 (phương tây) 、中间 (ở giữa)
  2.2 Động từ (动词)
    2.2.1 Động từ năng nguyện (能愿动词)
      - 需要 (cần) 、该 (nên) 、应该 (nên, phải) 、愿意 (sẵn lòng, bằng lòng) 、得 (phải — bắt buộc)
    2.2.2 Từ ly hợp (离合词)
      - Động-tân：放假 (nghỉ lễ, nghỉ học) 、见面 (gặp mặt) 、结婚 (kết hôn) 、洗澡 (tắm)
      - Động-bổ：离开 (rời khỏi) 、完成 (hoàn thành) 、分开 (chia tách, rời nhau)
  2.3 Đại từ (代词)
    2.3.1 Đại từ nghi vấn (疑问代词)
      - 怎样 (như thế nào)
      - Cách dùng phi nghi vấn của đại từ nghi vấn：（1）phiếm chỉ：①đại từ nghi vấn+都……②đại từ nghi vấn+đại từ nghi vấn
      - （2）bất định chỉ
    2.3.2 Đại từ nhân xưng (人称代词)
      - 别人 (người khác) 、咱们 (chúng ta — gồm cả người nghe)
    2.3.3 Đại từ chỉ thị (指示代词)
      - 别的 (cái khác) 、其他 (khác, còn lại)
  2.4 Lượng từ (量词)
    2.4.1 Danh lượng từ (名量词)
      - （1）Chuyên dụng：把 (cái — vật có cán) 、双 (đôi) 、张 (tờ, tấm) 、种 (loại) 、层 (tầng) 、封 (bức — thư) 、页 (trang) 、辆 (chiếc — xe) 、节 (tiết — tiết học) 、所 (sở, ngôi — trường/viện) 、班 (lớp, chuyến) 、段 (đoạn) 、头 (con — gia súc) 、句 (câu) 、公斤 (ki-lô-gam) 、斤 (cân — 0.5kg) 、角 (hào) 、毛 (hào — khẩu ngữ) 、刻 (khắc — 15 phút) 、米 (mét)
      - （2）Mượn：碗 (bát/tô) 、盘 (đĩa)
    2.4.2 Động lượng từ (动量词)
      - 口 (ngụm) 、回 (lần, hồi) 、遍 (lượt — từ đầu đến cuối) 、声 (tiếng)
    2.4.3 Lượng từ láy (量词重叠)
      - 个个 (từng cái một) 、张张 (từng tờ một)
  2.5 Phó từ (副词)
    2.5.1 Mức độ (程度副词)
      - 比较 (tương đối) 、还3 (còn, khá) 、更 (càng) 、特别 (đặc biệt) 、挺 (khá, rất) 、有些 (hơi, có phần) 、越 (càng) 、极 (cực kỳ)
    2.5.2 Phạm vi (范围副词)
      - 就3 (chỉ, chỉ có) 、一块儿 (cùng nhau) 、一共 (tổng cộng) 、只 (chỉ) 、到处 (khắp nơi) 、只是 (chỉ là)
    2.5.3 Thời gian (时间副词)
      - 才1 (mới — muộn) 、马上 (ngay lập tức) 、先 (trước) 、一会儿 (một lát) 、刚 (vừa mới) 、刚刚 (vừa mới) 、一直 (luôn, mãi)
    2.5.4 Tần suất (频率副词)
      - 总 (luôn) 、总是 (luôn luôn) 、又 (lại — việc đã xảy ra) 、常常 (thường thường)
    2.5.5 Liên kết (关联副词)
      - 一边 (vừa... vừa)
    2.5.6 Tình thái (情态副词)
      - 大概 (đại khái, có lẽ) 、必须 (nhất định phải) 、差不多 (gần như, xấp xỉ) 、一定 (nhất định) 、好像 (hình như) 、几乎 (hầu như)
    2.5.7 Ngữ khí (语气副词)
      - 当然 (đương nhiên) 、其实 (thực ra) 、终于 (cuối cùng) 、才2 (mới — nhấn mạnh) 、才3 (mới) 、就4 (chính là, liền)
    2.5.8 Phủ định (否定副词)
      - 不必 (không cần phải) 、不用 (không cần)
  2.6 Giới từ (介词)
    2.6.1 Dẫn ra đối tượng
      - 为1 (vì, cho) 、向1 (hướng về, đối với) 、关于 (về, liên quan đến)
    2.6.2 Dẫn ra phương hướng, lộ trình
      - 向2 (hướng về)
    2.6.3 Dẫn ra mục đích, nguyên nhân
      - 为了 (để, vì) 、为2 (vì)
    2.6.4 Dẫn ra chủ thể/khách thể hành động
      - 把 (đem — dùng trong câu chữ 把) 、被 (bị — bị động)
    2.6.5 Dẫn ra căn cứ
      - 根据 (căn cứ vào, dựa vào)
  2.7 Liên từ (连词)
    2.7.1 Nối từ hoặc cụm từ
      - 或 (hoặc) 、或者 (hoặc là)
    2.7.2 Nối phân câu hoặc câu
      - 只有 (chỉ có) 、只要 (chỉ cần) 、不但 (không những) 、而且 (mà còn) 、如果 (nếu như) 、可1 (nhưng) 、可是 (nhưng mà) 、然后 (sau đó)
  2.8 Trợ từ (助词)
    2.8.1 Khác (其他助词)
      - 的话 (nếu như — kết hợp với 如果/要是)

3. Cụm từ (短语)
  3.1 Kết cấu (结构类型)
    3.1.1 Khác (其他结构类型)
      - Cụm đồng vị
      - Cụm động-bổ 2
      - Trùng điệp số lượng：số từ+lượng từ+số từ+lượng từ
  3.2 Cụm cố định (固定短语)
    3.2.1 Bốn chữ (四字格)
      - 不A不B (không A không B — mẫu bốn chữ)
    3.2.2 Khác (其他)
      - 不一会儿 (không bao lâu)
      - 看来 (xem ra, có vẻ)
      - 在……看来 (theo cách nhìn của...)
      - 越来越 (ngày càng)
      - 看起来 (trông có vẻ)
      - 看上去 (trông có vẻ)
      - 一般来说 (nói chung)
      - 不怎么样 (không hay lắm, tầm thường)

4. Cấu trúc cố định (固定格式)
  4.1
    - 除了……（以外），……还/也/都…… (ngoài... ra, còn/cũng/đều...)
    - 从……起 (bắt đầu từ...)
    - 对……来说 (đối với... mà nói)
    - 一……也/都+不/没…… (một... cũng không...)
    - 一点儿也不 (một chút cũng không)
    - 越……越…… (càng... càng...)
    - （在）……以前/以后/前/后 (trước/sau khi...)
    - X什么（啊） (X gì mà...)
    - 该……了 (nên... rồi)
    - 在……上/下/中 (ở trên/dưới/trong...)

5. Thành phần câu (句子成分)
  5.1 Chủ ngữ (主语)
    - Động từ/cụm động từ, tính từ/cụm tính từ làm chủ ngữ
    - Cụm chủ-vị làm chủ ngữ
  5.2 Định ngữ (定语)
    - Định ngữ nhiều lớp
  5.3 Bổ ngữ (补语)
    5.3.1 Bổ ngữ kết quả 2 (结果补语2)
      - Động từ+到 (đến) /住 (giữ được) /走 (đi) /上 (lên, đạt được)
    5.3.2 Bổ ngữ xu hướng 2 (趋向补语2)
      - Nghĩa mở rộng của bổ ngữ xu hướng：（1）biểu thị kết quả：động từ+出/起/下
      - （2）biểu thị bắt đầu động tác：động từ+上/起来
      - （3）biểu thị động tác tiếp diễn：động từ+下去/下来
    5.3.3 Bổ ngữ khả năng 1 (可能补语1)
      - Động từ+得/不+động từ/tính từ
    5.3.4 Bổ ngữ mức độ 1 (程度补语1)
      - （1）tính từ+得很 (rất...)
      - （2）tính từ/động từ+极了 (cực kỳ) /坏了 (quá, tệ quá — nhấn mạnh)
    5.3.5 Bổ ngữ số lượng 3 (数量补语3)
      - Biểu thị khoảng cách thời gian từ khi kết thúc động tác đến một thời điểm

6. Các loại câu (句子的类型)
  6.1 Loại câu (句类)
    6.1.1 Câu nghi vấn (疑问句)
      - Câu nghi vấn đặc chỉ "怎样+động từ"
    6.1.2 Câu phản vấn 1 (反问句1)
      - Dùng câu phản vấn để nhấn mạnh：不是……吗？ (chẳng phải là... sao?)
  6.2 Câu đặc biệt (特殊句型)
    6.2.1 Câu chữ "把" 1 ("把"字句1)
      - （1）chủ ngữ+把+tân ngữ+động từ+在/到+nơi chốn
      - （2）chủ ngữ+把+tân ngữ1+động từ（+给）+tân ngữ2
      - （3）chủ ngữ+把+tân ngữ+động từ+bổ ngữ kết quả/xu hướng/trạng thái
    6.2.2 Câu bị động 1 (被动句1)
      - （1）chủ ngữ+被+tân ngữ+động từ+thành phần khác
      - （2）chủ ngữ+被+động từ+thành phần khác
    6.2.3 Câu liên động 2 (连动句2)
      - "着" biểu thị động tác đi kèm：động từ1+着+động từ2
    6.2.4 Câu so sánh 2 (比较句2)
      - （1）A比B+更/还+tính từ
      - （2）A跟B一样 (A giống B)
      - （3）A跟B一样+tính từ
      - （4）A不比B+tính từ (A không hơn B)
      - （5）A比B+多/少/早/晚+động từ+cụm số lượng
    6.2.5 Câu tồn hiện 3 (存现句3)
      - （1）biểu thị xuất hiện：nơi chốn+động từ+bổ ngữ xu hướng/kết quả+动态(了)+cụm số lượng+người/vật
      - （2）biểu thị biến mất：nơi chốn+động từ+bổ ngữ kết quả+动态(了)+cụm số lượng+người/vật
    6.2.6 Câu "是……的" 2 ("是……的"句2)
      - Nhấn mạnh quan điểm, thái độ của người nói
    6.2.7 Câu trùng động (重动句)
      - Chủ ngữ+động từ+tân ngữ+động từ+bổ ngữ
  6.3 Câu phức (复句)
    6.3.1 Nối tiếp (承接复句)
      - 先……，再/然后…… (trước tiên... rồi/sau đó...)
    6.3.2 Lựa chọn (选择复句)
      - 或者……，或者…… (hoặc là... hoặc là...)
    6.3.3 Song song (并列复句)
      - 一会儿……，一会儿…… (lúc thì... lúc thì...)
      - 又……，又…… (vừa... vừa...)
      - 一边……，一边…… (vừa... vừa...)
    6.3.4 Tăng tiến (递进复句)
      - 不但……，而且…… (không những... mà còn...)
    6.3.5 Chuyển ý (转折复句)
      - 虽然……，可是…… (mặc dù... nhưng...)
    6.3.6 Giả thiết (假设复句)
      - 如果……，就…… (nếu... thì...)
      - ……的话，就…… (nếu... thì...)
    6.3.7 Điều kiện (条件复句)
      - 只有……，才…… (chỉ có... mới...)
      - 只要……，就…… (chỉ cần... thì...)
    6.3.8 Mục đích (目的复句)
      - 为了……，…… (để...)
    6.3.9 Rút gọn (紧缩复句)
      - ……了……（就）…… (vừa... (thì) đã...)

7. Cách diễn đạt đặc biệt (特殊表达法)
  7.1 Cách biểu thị số (数的表达法)
    - Cách biểu thị số ước lượng 2：（1）dùng "大概" (đại khái) biểu thị số ước lượng
    - （2）số từ liền kề dùng chung biểu thị số ước lượng
');
INSERT INTO grammar_docs (id,level,title,content) VALUES (12,'hsk4','新版HSK考试大纲 · 语法 — HSK 4','新版HSK考试大纲 · 语法 — HSK 4
========================================
1. Từ loại (词类)
  1.1 Động từ (动词)
    1.1.1 Động từ năng nguyện (能愿动词)
      - 敢 (dám)
  1.2 Đại từ (代词)
    1.2.1 Đại từ chỉ thị (指示代词)
      - 各 (mỗi, các) 、各位 (quý vị) 、各种 (các loại) 、任何 (bất cứ) 、此 (này, đây)
  1.3 Lượng từ (量词)
    1.3.1 Danh lượng từ (名量词)
      - （1）Chuyên dụng：打 (tá — 12 cái) 、袋 (túi, bao) 、棵 (cây) 、台 (chiếc — máy móc) 、幅 (bức — tranh, ảnh)
      - （2）Mượn：脸 (mặt) 、手 (tay) 、盒 (hộp) 、屋子 (căn phòng) 、桌子 (bàn)
    1.3.2 Động lượng từ (动量词)
      - 场 (trận, buổi) 、顿 (bữa — ăn) 、趟 (chuyến, lượt)
  1.4 Phó từ (副词)
    1.4.1 Mức độ (程度副词)
      - 十分 (rất, mười phần) 、更加 (càng thêm) 、稍 (hơi, một chút) 、稍微 (hơi, một chút) 、尤其 (đặc biệt là) 、多么 (biết bao, thế nào)
    1.4.2 Phạm vi (范围副词)
      - 共 (tổng cộng) 、全 (toàn bộ) 、光 (chỉ) 、仅 (chỉ) 、仅仅 (chỉ mỗi) 、至少 (ít nhất)
    1.4.3 Thời gian (时间副词)
      - 按时 (đúng giờ) 、从来 (từ trước đến nay) 、赶紧 (vội vàng, mau) 、赶快 (nhanh lên) 、已 (đã) 、忽然 (đột nhiên) 、将 (sắp) 、将要 (sắp sửa) 、从 (từ) 、本来 (vốn dĩ)
    1.4.4 Tần suất (频率副词)
      - 重新 (lại một lần nữa) 、往往 (thường thường) 、偶尔 (thỉnh thoảng) 、再次 (lần nữa) 、老 (luôn, mãi)
    1.4.5 Phương thức (方式副词)
      - 故意 (cố ý) 、互相 (lẫn nhau) 、相互 (lẫn nhau)
    1.4.6 Liên kết (关联副词)
      - 却 (nhưng, lại)
    1.4.7 Tình thái (情态副词)
      - 也许 (có lẽ) 、恐怕 (e rằng, sợ rằng)
    1.4.8 Ngữ khí (语气副词)
      - 才4 (mới) 、就5 (thì, liền) 、并1 (thực ra — nhấn mạnh phủ định) 、还4 (còn, vẫn) 、竟然 (thế mà, lại) 、究竟 (rốt cuộc) 、正好 (vừa hay, đúng lúc) 、到底 (rốt cuộc) 、难道 (chẳng lẽ) 、千万 (ngàn vạn lần — nhất định phải) 、确实 (đích thực, quả thật) 、只好 (đành phải) 、差（一）点儿 (suýt nữa)
  1.5 Giới từ (介词)
    1.5.1 Dẫn ra thời gian, nơi chốn
      - 自 (từ) 、当 (khi, lúc) 、由1 (do, từ) 、随着 (theo, cùng với) 、等1 (đợi)
    1.5.2 Dẫn ra chủ thể/khách thể hành động
      - 将 (đem — như 把) 、由2 (do) 、叫 (bị, bảo) 、让 (khiến, cho phép)
    1.5.3 Dẫn ra nguyên nhân
      - 由于1 (do, bởi vì)
    1.5.4 Dẫn ra đối tượng
      - 对于 (đối với) 、与1 (với, và)
    1.5.5 Dẫn ra căn cứ
      - 作为 (là, với tư cách là) 、按 (theo) 、按照 (theo, dựa theo)
  1.6 Liên từ (连词)
    1.6.1 Nối từ hoặc cụm từ
      - 并2 (và) 、而1 (mà, và) 、与2 (và, với)
    1.6.2 Nối phân câu hoặc câu
      - 此外 (ngoài ra) 、而2 (mà — chuyển ý/nối tiếp) 、既然 (đã như vậy) 、甚至 (thậm chí) 、不过 (nhưng, tuy nhiên) 、并且 (và, hơn nữa)
      - 不光 (không chỉ) 、不仅 (không những) 、另外 (ngoài ra) 、要是 (nếu như) 、因此 (vì thế) 、由于2 (do) 、加 (thêm)
  1.7 Trợ từ (助词)
    1.7.1 Khác (其他助词)
      - 等2 (vân vân, chờ) 、者 (người — hậu tố) 、之 (của — văn viết) 、就是 (chính là)
  1.8 Thán từ (叹词)
    - 啊 (a — cảm thán) 、嗯 (ừ, ờ)

2. Cụm từ (短语)
  2.1 Kết cấu (结构类型)
    - Số từ+tính từ+lượng từ
  2.2 Cụm cố định (固定短语)
    2.2.1 Bốn chữ (四字格)
      - 一A一B (một A một B)
      - 无A无B (không A không B)
      - 有A有B (có A có B)
    2.2.2 Khác (其他)
      - 来得及/来不及 (kịp/không kịp)
      - 有的是 (có thừa, thiếu gì)
      - 说不定 (không chừng, biết đâu)
      - 不怎么 (không mấy, không lắm)
      - 就是说/这就是说 (tức là nói/nghĩa là)

3. Cấu trúc cố định (固定格式)
  3.1
    - 一+量词+比+一+量词 (mỗi lúc một... hơn)
    - 在……方面 (về mặt...)
    - 够……的 (đủ... rồi, quá...)
    - 拿……来说 (lấy... mà nói)
    - 再也不/没…… (không bao giờ... nữa)
    - 怎么都/也+不/没…… (dù thế nào cũng không...)
    - 为了……而…… (vì... mà...)
    - 动词+一X是一X (làm gì thì làm cho ra hồn cái đó)
    - （没）有什么（好）X的 (có gì mà (đáng)...)
    - X是X，Y是Y (X ra X, Y ra Y — tách bạch)
    - X也得X，不X也得X (X cũng phải X, không X cũng phải X)
    - X就是了 (X là được rồi)
    - 还X呢 (còn... cơ đấy — mỉa mai)
    - 你X你的吧 (bạn cứ X đi)
    - 让/叫你X你就X (bảo bạn X thì cứ X)
    - 说什么/怎么（着）也得X (nói gì thì nói cũng phải X)
    - X就X（点儿）吧 (X thì X (một chút) đi)
    - X是X (X thì đúng là X — nhưng có "nhưng")

4. Thành phần câu (句子成分)
  4.1
    4.1.1 Bổ ngữ mức độ 2 (程度补语2)
      - Tính từ/động từ tâm lý+死了 (chết đi được — quá mức) /厉害 (dữ dội, ghê gớm)
    4.1.2 Bổ ngữ khả năng 2 (可能补语2)
      - Động từ+得/不+了 (có thể/không thể...)

5. Các loại câu (句子的类型)
  5.1 Loại câu (句类)
    5.1.1 Câu phản vấn 2 (反问句2)
      - 难道……吗？ (chẳng lẽ... sao?)
      - Câu phản vấn cấu tạo từ đại từ nghi vấn
  5.2 Câu đặc biệt (特殊句型)
    5.2.1 Câu chữ "把" 2 ("把"字句2)
      - （1）chủ ngữ+把+tân ngữ+động từ（+一/了）+động từ
      - （2）chủ ngữ+把+tân ngữ+động từ+了
      - （3）chủ ngữ+把+tân ngữ+động từ+bổ ngữ động lượng/thời lượng
      - （4）chủ ngữ+把+tân ngữ+trạng ngữ+động từ
    5.2.2 Câu bị động 2 (被动句2)
      - Chủ ngữ+叫/让+tân ngữ+động từ+thành phần khác
    5.2.3 Câu kiêm ngữ 2 (兼语句2)
      - （1）biểu thị yêu/ghét：chủ ngữ+表扬 (khen) /批评 (phê bình) +tân ngữ1+động từ+tân ngữ2
      - （2）biểu thị xưng hô/xác định：chủ ngữ+收 (nhận) /选 (chọn) +tân ngữ1+做/当/为 (làm) +tân ngữ2
      - （3）biểu thị khiến sử：chủ ngữ+使/让 (khiến) +đại từ nhân xưng+cụm động từ
  5.3
    5.3.1 Câu so sánh 3 (比较句3)
      - （1）A不如B（+tính từ） (A không bằng B)
      - （2）跟……相比 (so với...)
    5.3.2 Câu song phủ định (双重否定句)
      - Dùng song phủ định để nhấn mạnh
  5.4 Câu phức (复句)
    5.4.1 Song song (并列复句)
      - 不是……，而是…… (không phải... mà là...)
      - 既……，又/也…… (vừa... vừa...)
      - 一方面……，另一方面…… (một mặt... mặt khác...)
    5.4.2 Nối tiếp (承接复句)
      - 首先……，其次…… (trước tiên... tiếp theo...)
      - 首先……，然后…… (trước tiên... sau đó...)
      - ……，于是…… (..., thế là...)
    5.4.3 Tăng tiến (递进复句)
      - ……,甚至…… (..., thậm chí...)
      - 不仅/不光……，还/而且…… (không những... mà còn...)
      - ……，并且…… (..., và...)
      - 连……也/都……，……更…… (ngay cả... cũng..., ... càng...)
    5.4.4 Lựa chọn (选择复句)
      - 不是……，就是…… (không phải... thì là...)
    5.4.5 Chuyển ý (转折复句)
      - 尽管……，但是/可是…… (mặc dù... nhưng...)
      - ……，然而…… (..., tuy nhiên...)
      - ……，不过…… (..., nhưng mà...)
      - ……X是X，就是/不过…… (X thì đúng là X, nhưng...)
    5.4.6 Giả thiết (假设复句)
      - ……，否则…… (..., nếu không thì...)
      - 要是……，就…… (nếu... thì...)
      - 要是……，（就）……，否则…… (nếu... thì..., nếu không thì...)
    5.4.7 Điều kiện (条件复句)
      - 不管……，都/也…… (dù... đều/cũng...)
      - 无论……，都/也…… (bất luận... đều/cũng...)
    5.4.8 Nhân quả (因果复句)
      - 既然……，就…… (đã... thì...)
      - （由于）……，因此…… (do..., vì thế...)
    5.4.9 Mục đích (目的复句)
      - ……，好…… (..., để cho...)
    5.4.10 Nhượng bộ (让步复句)
      - 即使……，也…… (dù cho... cũng...)
      - 就是……，也…… (dù có... cũng...)
    5.4.11 Rút gọn (紧缩复句)
      - Không dấu hiệu
      - 不……也…… (không... cũng...)

6. Cách diễn đạt đặc biệt (特殊表达法)
  6.1 Cách biểu thị số (数的表示法)
    - Cách biểu thị số ước lượng 3：số từ+来 (khoảng) +lượng từ
    - Dùng "大约 (khoảng) 、左右 (khoảng, xung quanh) 、前后 (trước sau, khoảng)" biểu thị số ước lượng
    - Cách biểu thị số thập phân, phân số, phần trăm, bội số
');
CREATE TABLE meta (key TEXT PRIMARY KEY, value TEXT);
INSERT INTO meta (key,value) VALUES ('data_version','9');
CREATE INDEX idx_radex_rid ON radical_examples(radical_id);
CREATE INDEX idx_vocab_level ON vocab(level);
CREATE INDEX idx_vocab_zh ON vocab(zh);
CREATE INDEX idx_grammar_level ON grammar(level);
COMMIT;
