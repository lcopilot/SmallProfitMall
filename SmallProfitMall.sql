/*
 Navicat Premium Data Transfer

 Source Server         : MySql_120.25.154.76
 Source Server Type    : MySQL
 Source Server Version : 50726
 Source Host           : 120.25.154.76:3306
 Source Schema         : SmallProfitMall

 Target Server Type    : MySQL
 Target Server Version : 50726
 File Encoding         : 65001

 Date: 06/04/2020 20:51:10
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for ProductBasis
-- ----------------------------
DROP TABLE IF EXISTS `ProductBasis`;
CREATE TABLE `ProductBasis`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ProductId` int(11) NOT NULL,
  `ProductName` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ProductVideo` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ProductWeight` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10030 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ProductBasis
-- ----------------------------
INSERT INTO `ProductBasis` VALUES (1, 10001, 'Apple iPhone 11 (A2223) 128GB 黑色 移动联通电信4G手机 双卡双待 ', 'http://productdata.fhxasdsada.xyz/v.f30.mp4', '0.74kg');
INSERT INTO `ProductBasis` VALUES (3, 10002, 'Apple AirPods Pro 主动降噪无线蓝牙耳机', '\r\nhttp://productdata.fhxasdsada.xyz/v.f30.mp4', '0.24kg');
INSERT INTO `ProductBasis` VALUES (4, 10010, '阿玛尼（ Emporio Armani）满天星手表 女新款玫瑰金钢制表带镶钻石英轻奢女士腕表礼物 AR11244 ', '\r\nhttp://productdata.fhxasdsada.xyz/v.f30%20%281%29.mp4', '\r\n0.485kg');
INSERT INTO `ProductBasis` VALUES (5, 10011, 'Apple iPhone 11 Pro Max (A2220) 64GB 金色 移动联通电信4G手机 双卡双待 ', '\r\nhttp://productdata.fhxasdsada.xyz/v.f10011.mp4', '0.56kg');
INSERT INTO `ProductBasis` VALUES (6, 10012, '联想(Lenovo)小新Pro13.3英寸全面屏超轻薄笔记本电脑(标压锐龙R5-3550H 16G 512G 2.5K QHD 100%sRGB)银 ', '\r\nhttp://productdata.fhxasdsada.xyz/10012%5B1%5D.mp4', '2.08kg');
INSERT INTO `ProductBasis` VALUES (7, 10013, '华硕（ASUS）猛禽ROG-STRIX-GeForce RTX 2080 ', 'https://jdvod.300hu.com/4c1f7a6atransbjngwcloud1oss/7d07cd26107144746580840449/v.f30.mp4?dockingId=88290b33-b297-4d55-aa10-3996cc45a4b6&storageSource=3', '2.08kg');
INSERT INTO `ProductBasis` VALUES (8, 10014, '骨伽（COUGAR） 电脑主机箱 台式机中塔式侧透征服者游戏定制水冷机箱 黑色\r\n', 'http://productdata.fhxasdsada.xyz/sdfjsdfjmrthnndvisdgsdg.mp4', '2.8kg');
INSERT INTO `ProductBasis` VALUES (9, 10015, '三只松鼠芒果干 蜜饯果干芒果片休闲零食办公室小吃果脯水果干116g/袋', 'http://productdata.fhxasdsada.xyz/sdkjj.mp4', '0.15kg');
INSERT INTO `ProductBasis` VALUES (10, 10016, '华为 HUAWEI Mate 30 Pro 麒麟990旗舰芯片OLED环幕屏双4000万徕卡电影四摄手机', '\r\nhttp://productdata.fhxasdsada.xyz/v.f30%20%282%29.mp4', '0.54kg');
INSERT INTO `ProductBasis` VALUES (11, 10017, 'Apple Watch Series 5智能手表（GPS款 40毫米深空灰色铝金属表壳 黑色运动型表带 MWV82CH/A)\r\n', 'http://productdata.fhxasdsada.xyz/asuashfoeryubvxcmivmdsfomaosaergl.mp4', '0.23kg');
INSERT INTO `ProductBasis` VALUES (12, 10003, '星农联合 智利帝王蟹5.5-5.0斤 熟冻大螃蟹 进口海鲜礼盒', NULL, '不计重');
INSERT INTO `ProductBasis` VALUES (13, 10004, '新款Huawei/华为折叠手机mates xs 5g版大屏双屏全面屏双面屏官方旗舰店对折手机可折叠屏 Mate XS折叠\r\n', 'http://productdata.fhxasdsada.xyz/sdfjsdomytupj,nkc.mp4', '0.24kg');
INSERT INTO `ProductBasis` VALUES (14, 10005, 'Apple iPad Pro 12.9英寸平板电脑 2018款(64G WLAN版/全面屏/A12X/FaceID MTEL2CH/A)深空灰\r\n', 'http://productdata.fhxasdsada.xyz/diferwngmopsvm,jaks.mp4', '2.8kg');
INSERT INTO `ProductBasis` VALUES (15, 10006, ' 索尼（SONY）WF-1000XM3 真无线蓝牙降噪耳机 智能降噪 触控面板 苹果/安卓手机适用 黑色\r\n', 'http://productdata.fhxasdsada.xyz/iorhmm,wcvihj.mp4', '0.6kg');
INSERT INTO `ProductBasis` VALUES (16, 10007, 'Hot Toys 复仇者联盟3 无限战争 HOTTOYS 钢铁侠 模型玩具礼物 MK7 普通版\r\n\r\n', NULL, '5kg');
INSERT INTO `ProductBasis` VALUES (17, 10008, '万代（BANDAI） Megahouse POP 海贼王 路飞9人 模型玩具（无售后！！！） 四档路飞\r\n', NULL, '100kg');
INSERT INTO `ProductBasis` VALUES (18, 10009, '外星人Alienware area-51m 17.3英寸游戏笔记本电脑(i9-9900K 32G 512GX2 1T RTX2080 8G 144Hz 低蓝光屏)黑\r\n', NULL, '5.6kg');
INSERT INTO `ProductBasis` VALUES (19, 10018, '【专柜正品】Dior迪奥口红烈艳蓝金女士唇膏999口红套装送女友生日礼物 送老婆情人节礼物 【情人节星星限量版五只装套盒】', '\r\nhttp://productdata.fhxasdsada.xyz/v.f30%20%284%29.mp4\r\n\r\n', '0.4kg');
INSERT INTO `ProductBasis` VALUES (10018, 10019, '【二手95新】劳力士 系列:迪通拿系列 型号:116505 材质:18k玫瑰金 镜面:蓝宝石玻璃 未使用', NULL, '220克');
INSERT INTO `ProductBasis` VALUES (10019, 10020, '华硕（ASUS）ROG Strix XG27VQ 27英寸144HZ 1800R Free-Sync旋转升降AURA-RGB电竞显示器（HDMI/DP/DVI）', 'http://productdata.fhxasdsada.xyz/0a2dn6qco6afmqiL4K2doafhoaGdmaydo6M.mp4', '16.84kg');
INSERT INTO `ProductBasis` VALUES (10020, 10021, '长虹（CHANGHONG）D6U 长虹 激光电视 影院 投影仪 激光电视 私人电影院 投影机 长虹 4K画质 3500流明 115%广色域 AI人工智能 语音控制\r\n4K画质，3500流明，115%广色域，AI人工智能，语音控制  ', '', '5.84kg');
INSERT INTO `ProductBasis` VALUES (10021, 10023, '\r\nCOACH PARKER 16 女士山茶花装饰可斜挎双肩包', NULL, NULL);
INSERT INTO `ProductBasis` VALUES (10022, 10024, 'HHKB Professional BT 蓝牙版黑无刻静电容键盘 程序员码农专用便携迷你键盘 编程适用', 'http://productdata.fhxasdsada.xyz/0a2dn62WqaCdmqiL4K2doafhoaOhnqeZpKc.mp4', NULL);
INSERT INTO `ProductBasis` VALUES (10023, 10025, '【良品铺子】综合果仁525g 每日坚果组合混合干果礼盒零食大礼包健康零食', NULL, '575.5g');
INSERT INTO `ProductBasis` VALUES (10024, 10022, 'Classic | 40mm Canterbury', NULL, NULL);
INSERT INTO `ProductBasis` VALUES (10025, 10026, '2019新款翻领磨破短款女士休闲牛仔外套', NULL, NULL);
INSERT INTO `ProductBasis` VALUES (10026, 10027, '【假一赔十】beats solo3wireless 蓝牙耳机头戴式 米奇 游戏手机耳机 折叠式重低音 运动 玫瑰金', NULL, NULL);
INSERT INTO `ProductBasis` VALUES (10027, 10028, '小米（MI）小爱智能音箱Pro 无线蓝牙音响 语音控制智能家居 APP远程操控 专业DTS 音效 黑色', NULL, '\r\n1.56kg');
INSERT INTO `ProductBasis` VALUES (10028, 10029, '美国正品代购阿迪达斯adidas YEEZY BOOST 350 V2 侃爷冰蓝椰子鞋新款男跑步鞋', NULL, '2.5kg');
INSERT INTO `ProductBasis` VALUES (10029, 10030, '夹克男工装外套男士韩版宽松潮流上衣服2019秋季新款男装潮牌连帽夹克衫男学生', 'http://productdata.fhxasdsada.xyz/0a2dn62WqaCdmqiL4K2doafhoaOhnqeZpKc.mp4', '0.1');

-- ----------------------------
-- Table structure for ProductColour
-- ----------------------------
DROP TABLE IF EXISTS `ProductColour`;
CREATE TABLE `ProductColour`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ProductId` int(11) NULL DEFAULT NULL,
  `ProductColour` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 107 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ProductColour
-- ----------------------------
INSERT INTO `ProductColour` VALUES (1, 10001, '黑色');
INSERT INTO `ProductColour` VALUES (2, 10001, '绿色');
INSERT INTO `ProductColour` VALUES (3, 10001, '紫色');
INSERT INTO `ProductColour` VALUES (4, 10002, '白色');
INSERT INTO `ProductColour` VALUES (5, 10010, '圣颜色');
INSERT INTO `ProductColour` VALUES (6, 10010, '钢质表带AR1957');
INSERT INTO `ProductColour` VALUES (7, 10010, '璀璨满天星AR1926');
INSERT INTO `ProductColour` VALUES (8, 10010, '闪耀满天星AR1925');
INSERT INTO `ProductColour` VALUES (9, 10010, '钢质表带AR11129');
INSERT INTO `ProductColour` VALUES (10, 10010, '玫瑰金满天星AR11244');
INSERT INTO `ProductColour` VALUES (11, 10011, '银色');
INSERT INTO `ProductColour` VALUES (12, 10011, '暗夜绿色');
INSERT INTO `ProductColour` VALUES (13, 10011, '深空灰色');
INSERT INTO `ProductColour` VALUES (14, 10012, '小清新蓝');
INSERT INTO `ProductColour` VALUES (18, 10014, '黑色');
INSERT INTO `ProductColour` VALUES (19, 10014, '黑色+骨伽LLC750全模组电源');
INSERT INTO `ProductColour` VALUES (20, 10016, '星河银');
INSERT INTO `ProductColour` VALUES (21, 10016, '亮黑色');
INSERT INTO `ProductColour` VALUES (22, 10016, '翡冷翠');
INSERT INTO `ProductColour` VALUES (23, 10016, '罗兰紫');
INSERT INTO `ProductColour` VALUES (24, 10017, '黑色');
INSERT INTO `ProductColour` VALUES (25, 10017, '白色');
INSERT INTO `ProductColour` VALUES (26, 10017, '粉砂色');
INSERT INTO `ProductColour` VALUES (27, 10004, '星际蓝');
INSERT INTO `ProductColour` VALUES (28, 10004, '华为mate Xs星际蓝(新款)');
INSERT INTO `ProductColour` VALUES (29, 10006, '黑色');
INSERT INTO `ProductColour` VALUES (30, 10006, '铂金银');
INSERT INTO `ProductColour` VALUES (31, 10009, '[A51M]9代i9 2080 低蓝光屏 黑 ');
INSERT INTO `ProductColour` VALUES (32, 10009, '[A51M]9代i9 512GX2+1T 2080 144');
INSERT INTO `ProductColour` VALUES (33, 10009, '[A51M]9代i7 512GX2 2070 144 白');
INSERT INTO `ProductColour` VALUES (34, 10009, ' [A51M]9代i7 1TSSD 2060OC 144黑');
INSERT INTO `ProductColour` VALUES (35, 10009, '[A51M]9代i7 512GX2 2070 144 黑');
INSERT INTO `ProductColour` VALUES (36, 10009, ' [鼠标耳机]+i7 512GX2 20700C 白');
INSERT INTO `ProductColour` VALUES (37, 10009, '[鼠标耳机]+i7 512GX2 20700C 黑 ');
INSERT INTO `ProductColour` VALUES (38, 10009, '[耳机]+9代i7 512GX2 20700C 白');
INSERT INTO `ProductColour` VALUES (39, 10009, '[耳机]+9代i7 512GX2 20700C 黑');
INSERT INTO `ProductColour` VALUES (40, 10018, '028#滋润珊瑚红');
INSERT INTO `ProductColour` VALUES (41, 10018, '999#滋润传奇正红');
INSERT INTO `ProductColour` VALUES (42, 10018, '080#滋润微笑红');
INSERT INTO `ProductColour` VALUES (43, 10018, '888#哑光开运红');
INSERT INTO `ProductColour` VALUES (44, 10018, '772#哑光豆沙红');
INSERT INTO `ProductColour` VALUES (45, 10018, '771#哑光树玫红');
INSERT INTO `ProductColour` VALUES (46, 10018, '[限量版星星5支套装礼盒]');
INSERT INTO `ProductColour` VALUES (47, 10018, '[情人节星星限量版五只装套盒]');
INSERT INTO `ProductColour` VALUES (48, 10018, '挚爱红管999#传奇正红[赠专柜礼盒]');
INSERT INTO `ProductColour` VALUES (49, 10018, '[红弯心动6支套装] [赠视频玫瑰礼盒 ]');
INSERT INTO `ProductColour` VALUES (50, 10018, '[限量版挚爱红管烟花5支装套盒]');
INSERT INTO `ProductColour` VALUES (51, 10018, '999+ 520+花漾甜心100ML [口红香水套装]');
INSERT INTO `ProductColour` VALUES (56, 10019, '玫瑰金');
INSERT INTO `ProductColour` VALUES (57, 10022, '多彩尼龙白盘');
INSERT INTO `ProductColour` VALUES (58, 10022, '粉色尼龙白盘');
INSERT INTO `ProductColour` VALUES (59, 10022, '黑色尼龙黑盘');
INSERT INTO `ProductColour` VALUES (60, 10022, '黑色尼龙白盘');
INSERT INTO `ProductColour` VALUES (61, 10022, '蓝红尼龙白盘');
INSERT INTO `ProductColour` VALUES (62, 10022, '蓝粉尼龙白盘');
INSERT INTO `ProductColour` VALUES (63, 10023, '棕黄色锈色');
INSERT INTO `ProductColour` VALUES (64, 10023, '粉色');
INSERT INTO `ProductColour` VALUES (65, 10023, '黄褐色');
INSERT INTO `ProductColour` VALUES (66, 10027, '磨砂黑');
INSERT INTO `ProductColour` VALUES (67, 10027, ' POP水蓝色');
INSERT INTO `ProductColour` VALUES (68, 10027, ' POP赘蓝色');
INSERT INTO `ProductColour` VALUES (69, 10027, 'POP红色');
INSERT INTO `ProductColour` VALUES (70, 10027, ' POP紫色');
INSERT INTO `ProductColour` VALUES (71, 10027, ' 丝锻金');
INSERT INTO `ProductColour` VALUES (72, 10027, '丝锻银 ');
INSERT INTO `ProductColour` VALUES (73, 10027, '炫黑色');
INSERT INTO `ProductColour` VALUES (74, 10027, '炫白色 ');
INSERT INTO `ProductColour` VALUES (75, 10027, '金色 ');
INSERT INTO `ProductColour` VALUES (76, 10027, '玫瑰金 ');
INSERT INTO `ProductColour` VALUES (77, 10027, '银色 ');
INSERT INTO `ProductColour` VALUES (78, 10027, '红色');
INSERT INTO `ProductColour` VALUES (80, 10027, '黑红十周年纪念版 ');
INSERT INTO `ProductColour` VALUES (81, 10027, '猪年限量版 90周年');
INSERT INTO `ProductColour` VALUES (82, 10027, '米奇老鼠版 ');
INSERT INTO `ProductColour` VALUES (83, 10027, '学院白 ');
INSERT INTO `ProductColour` VALUES (84, 10027, '学院蓝');
INSERT INTO `ProductColour` VALUES (85, 10027, '学院红');
INSERT INTO `ProductColour` VALUES (86, 10027, ' 学院黄');
INSERT INTO `ProductColour` VALUES (87, 10027, ' 紫色');
INSERT INTO `ProductColour` VALUES (88, 10028, 'Redmi 小爱音箱Play ');
INSERT INTO `ProductColour` VALUES (89, 10028, '【小爱触屏音箱-白色】');
INSERT INTO `ProductColour` VALUES (90, 10028, '【小爱触屏音箱-红色】 ');
INSERT INTO `ProductColour` VALUES (91, 10028, '【新品】小爱触屏音箱Pro ');
INSERT INTO `ProductColour` VALUES (92, 10028, '【新品】小爱音箱 ');
INSERT INTO `ProductColour` VALUES (93, 10028, '【新品】小爱音箱Pro ');
INSERT INTO `ProductColour` VALUES (94, 10029, 'BB1826灰橙色 ');
INSERT INTO `ProductColour` VALUES (95, 10029, 'BY9611黑灰色');
INSERT INTO `ProductColour` VALUES (96, 10029, 'BY9612黑橙色 ');
INSERT INTO `ProductColour` VALUES (97, 10029, 'CP9654白斑马');
INSERT INTO `ProductColour` VALUES (98, 10029, 'B37572黄斑马');
INSERT INTO `ProductColour` VALUES (99, 10029, 'AH2203新灰橙 ');
INSERT INTO `ProductColour` VALUES (100, 10029, 'B37571冰蓝色 ');
INSERT INTO `ProductColour` VALUES (101, 10029, 'CP9652黑红色 ');
INSERT INTO `ProductColour` VALUES (102, 10029, 'BY1604黑灰色 ');
INSERT INTO `ProductColour` VALUES (103, 10029, 'BY1605黑铜色');
INSERT INTO `ProductColour` VALUES (104, 10030, '米白色');
INSERT INTO `ProductColour` VALUES (105, 10030, ' 黄色');
INSERT INTO `ProductColour` VALUES (106, 10030, '黑色');

-- ----------------------------
-- Table structure for ProductCombo
-- ----------------------------
DROP TABLE IF EXISTS `ProductCombo`;
CREATE TABLE `ProductCombo`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ProductId` int(11) NULL DEFAULT NULL,
  `ProductCombo` varchar(80) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 19 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ProductCombo
-- ----------------------------
INSERT INTO `ProductCombo` VALUES (4, 10002, '优惠套餐一');
INSERT INTO `ProductCombo` VALUES (5, 10002, '优惠套餐二');
INSERT INTO `ProductCombo` VALUES (6, 10002, '优惠套餐三');
INSERT INTO `ProductCombo` VALUES (13, 10021, '官方标配');
INSERT INTO `ProductCombo` VALUES (14, 10021, '100寸黑栅硬屏套餐');
INSERT INTO `ProductCombo` VALUES (15, 10021, '100菲涅尔硬屏套餐');
INSERT INTO `ProductCombo` VALUES (16, 10025, '750g(30天装)');
INSERT INTO `ProductCombo` VALUES (17, 10025, '525g(21天装)');
INSERT INTO `ProductCombo` VALUES (18, 10030, '套餐');

-- ----------------------------
-- Table structure for ProductImage
-- ----------------------------
DROP TABLE IF EXISTS `ProductImage`;
CREATE TABLE `ProductImage`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ProductId` int(11) NULL DEFAULT NULL,
  `ImageSite` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `sign` int(1) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 152 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ProductImage
-- ----------------------------
INSERT INTO `ProductImage` VALUES (1, 10001, 'http://productdata.fhxasdsada.xyz/68836f52ffaaad96.jpg', 1);
INSERT INTO `ProductImage` VALUES (2, 10001, 'http://productdata.fhxasdsada.xyz/43a1962b41270d97.jpg', NULL);
INSERT INTO `ProductImage` VALUES (3, 10001, 'http://productdata.fhxasdsada.xyz/ee567a1dea515d38.jpg', NULL);
INSERT INTO `ProductImage` VALUES (4, 10001, 'http://productdata.fhxasdsada.xyz/08fed8837c92433a.jpg', NULL);
INSERT INTO `ProductImage` VALUES (5, 10001, 'http://productdata.fhxasdsada.xyz/001e63e04f967e90.jpg', NULL);
INSERT INTO `ProductImage` VALUES (6, 10002, '\r\nhttp://productdata.fhxasdsada.xyz/2b6fc898ee704a36.jpg\r\n', 1);
INSERT INTO `ProductImage` VALUES (7, 10002, '\r\nhttp://productdata.fhxasdsada.xyz/6a155195eb3285c9.jpg', NULL);
INSERT INTO `ProductImage` VALUES (8, 10002, 'http://productdata.fhxasdsada.xyz/7193b42ba13929fd.jpg', NULL);
INSERT INTO `ProductImage` VALUES (9, 10002, '\r\nhttp://productdata.fhxasdsada.xyz/8786efc04f001e50.jpg', NULL);
INSERT INTO `ProductImage` VALUES (11, 10002, 'http://productdata.fhxasdsada.xyz/8786efc04f001e50.jpg', NULL);
INSERT INTO `ProductImage` VALUES (13, 10010, '\r\nhttp://productdata.fhxasdsada.xyz/8c0b0a13e48adce3.jpg', 1);
INSERT INTO `ProductImage` VALUES (14, 10010, '\r\nhttp://productdata.fhxasdsada.xyz/19f5df0ae27b218a.jpg', NULL);
INSERT INTO `ProductImage` VALUES (15, 10010, '\r\nhttp://productdata.fhxasdsada.xyz/48f8745314110ddd.jpg', NULL);
INSERT INTO `ProductImage` VALUES (16, 10010, '\r\nhttp://productdata.fhxasdsada.xyz/220f4a39216bc62b.jpg', NULL);
INSERT INTO `ProductImage` VALUES (17, 10011, '\r\nhttp://productdata.fhxasdsada.xyz/04e04ec4954e07bd.jpg', 1);
INSERT INTO `ProductImage` VALUES (18, 10011, '\r\nhttp://productdata.fhxasdsada.xyz/3957b8e1cce2b048.jpg', NULL);
INSERT INTO `ProductImage` VALUES (19, 10011, '\r\nhttp://productdata.fhxasdsada.xyz/394596a8af6149cf.jpg', NULL);
INSERT INTO `ProductImage` VALUES (20, 10011, '\r\nhttp://productdata.fhxasdsada.xyz/da0eb4c6670eab20.jpg', NULL);
INSERT INTO `ProductImage` VALUES (21, 10011, '\r\nhttp://productdata.fhxasdsada.xyz/e54ca7b1b222a83b.jpg', NULL);
INSERT INTO `ProductImage` VALUES (22, 10012, '\r\nhttp://productdata.fhxasdsada.xyz/2b0744939bd398f0.jpg', 1);
INSERT INTO `ProductImage` VALUES (23, 10012, '\r\nhttp://productdata.fhxasdsada.xyz/5ce4b1fcNc14ca9c7.jpg', NULL);
INSERT INTO `ProductImage` VALUES (24, 10012, '\r\nhttp://productdata.fhxasdsada.xyz/6522a53a673ee61d.jpg', NULL);
INSERT INTO `ProductImage` VALUES (25, 10012, '\r\nhttp://productdata.fhxasdsada.xyz/c15786ad5136e74f.jpg', NULL);
INSERT INTO `ProductImage` VALUES (26, 10012, '\r\nhttp://productdata.fhxasdsada.xyz/caa1b677b914cb5f.jpg', NULL);
INSERT INTO `ProductImage` VALUES (27, 10013, 'http://productdata.fhxasdsada.xyz/1f3f9fd0e759383f.jpg', 1);
INSERT INTO `ProductImage` VALUES (28, 10013, 'http://productdata.fhxasdsada.xyz/4fc927901b1aae32.jpg', NULL);
INSERT INTO `ProductImage` VALUES (29, 10013, 'http://productdata.fhxasdsada.xyz/5bc47ce4Ne79570db.jpg', NULL);
INSERT INTO `ProductImage` VALUES (30, 10013, 'http://productdata.fhxasdsada.xyz/3480e2930d6e9a25.jpg', NULL);
INSERT INTO `ProductImage` VALUES (31, 10013, 'http://productdata.fhxasdsada.xyz/562d20d464bb56ac.jpg', NULL);
INSERT INTO `ProductImage` VALUES (32, 10014, 'http://productdata.fhxasdsada.xyz/5b4d4cc8N0bf9c476.jpg', 1);
INSERT INTO `ProductImage` VALUES (33, 10014, 'http://productdata.fhxasdsada.xyz/5b2473c4Nea457f92.png', NULL);
INSERT INTO `ProductImage` VALUES (34, 10014, 'http://productdata.fhxasdsada.xyz/5b2473e0Ne5d2fed8.jpg', NULL);
INSERT INTO `ProductImage` VALUES (35, 10014, 'http://productdata.fhxasdsada.xyz/5b2473e3Nc422faf9.jpg', NULL);
INSERT INTO `ProductImage` VALUES (36, 10014, 'http://productdata.fhxasdsada.xyz/e8a8c0ac848fd663.jpg', NULL);
INSERT INTO `ProductImage` VALUES (37, 10015, 'http://productdata.fhxasdsada.xyz/3531d2420f91d48177112641833bc7aa_2_3_photo.jpg', 1);
INSERT INTO `ProductImage` VALUES (38, 10015, 'http://productdata.fhxasdsada.xyz/65d595ccc0df91701a30c5b9af96662c_2_3_photo.jpg', NULL);
INSERT INTO `ProductImage` VALUES (39, 10015, 'http://productdata.fhxasdsada.xyz/6ad6e5468f3c79afd9e2aaac6235b643_2_3_photo.jpg', NULL);
INSERT INTO `ProductImage` VALUES (40, 10015, 'http://productdata.fhxasdsada.xyz/a6bd598ec1911c7cd8f850f3e88e7ba5_2_3_photo.jpg', NULL);
INSERT INTO `ProductImage` VALUES (41, 10015, 'http://productdata.fhxasdsada.xyz/a6bd598ec1911c7cd8f850f3e88e7ba5_2_3_photo.jpg', NULL);
INSERT INTO `ProductImage` VALUES (42, 10016, '\r\nhttp://productdata.fhxasdsada.xyz/971ec333c8ef1de2.jpg', 1);
INSERT INTO `ProductImage` VALUES (43, 10016, '\r\nhttp://productdata.fhxasdsada.xyz/8053c011fc5f3f37.jpg', NULL);
INSERT INTO `ProductImage` VALUES (44, 10016, '\r\nhttp://productdata.fhxasdsada.xyz/66447aca06daf84d.jpg', NULL);
INSERT INTO `ProductImage` VALUES (45, 10016, '\r\nhttp://productdata.fhxasdsada.xyz/b13aea126799a8f7.jpg', NULL);
INSERT INTO `ProductImage` VALUES (46, 10016, '\r\nhttp://productdata.fhxasdsada.xyz/fb8e44067242df88.jpg', NULL);
INSERT INTO `ProductImage` VALUES (47, 10017, 'http://productdata.fhxasdsada.xyz/44c3c5495c1b5145.jpg', 1);
INSERT INTO `ProductImage` VALUES (48, 10017, 'http://productdata.fhxasdsada.xyz/2501bf3e7f96c1fb.jpg', NULL);
INSERT INTO `ProductImage` VALUES (49, 10017, 'http://productdata.fhxasdsada.xyz/38043e785531d4f5.jpg', NULL);
INSERT INTO `ProductImage` VALUES (50, 10017, 'http://productdata.fhxasdsada.xyz/bb905838dcde3ccd.jpg', NULL);
INSERT INTO `ProductImage` VALUES (51, 10017, 'http://productdata.fhxasdsada.xyz/cc8e307f5aeccb49.jpg', NULL);
INSERT INTO `ProductImage` VALUES (52, 10003, 'http://productdata.fhxasdsada.xyz/212478163d84fcf0.jpg', 1);
INSERT INTO `ProductImage` VALUES (53, 10003, 'http://productdata.fhxasdsada.xyz/212478163d84fcf0.jpg', NULL);
INSERT INTO `ProductImage` VALUES (54, 10003, 'http://productdata.fhxasdsada.xyz/7e885a6364ff7b21.jpg', NULL);
INSERT INTO `ProductImage` VALUES (55, 10003, 'http://productdata.fhxasdsada.xyz/ad914e4c1ac2e465.jpg', NULL);
INSERT INTO `ProductImage` VALUES (56, 10003, 'http://productdata.fhxasdsada.xyz/d094f60a2c15d012.jpg', NULL);
INSERT INTO `ProductImage` VALUES (57, 10004, 'http://productdata.fhxasdsada.xyz/7a3a192a7fca3c35.png', 1);
INSERT INTO `ProductImage` VALUES (58, 10004, 'http://productdata.fhxasdsada.xyz/9c03f65ed857d88a.png', NULL);
INSERT INTO `ProductImage` VALUES (59, 10004, 'http://productdata.fhxasdsada.xyz/4686681b97deebb2.png', NULL);
INSERT INTO `ProductImage` VALUES (60, 10004, 'http://productdata.fhxasdsada.xyz/b0d64ec97f4d8f0d.jpg', NULL);
INSERT INTO `ProductImage` VALUES (61, 10004, 'http://productdata.fhxasdsada.xyz/f88f82bdd98d9a68.png', NULL);
INSERT INTO `ProductImage` VALUES (62, 10006, 'http://productdata.fhxasdsada.xyz/2ca45e2fd9758794.jpg', 1);
INSERT INTO `ProductImage` VALUES (63, 10006, 'http://productdata.fhxasdsada.xyz/223e72e6bb404498.jpg', NULL);
INSERT INTO `ProductImage` VALUES (64, 10006, 'http://productdata.fhxasdsada.xyz/a2ba77e3e7b4a561.jpg', NULL);
INSERT INTO `ProductImage` VALUES (65, 10006, 'http://productdata.fhxasdsada.xyz/a673d6639eecfb31.jpg', NULL);
INSERT INTO `ProductImage` VALUES (66, 10006, 'http://productdata.fhxasdsada.xyz/b452b971225f3837.jpg', NULL);
INSERT INTO `ProductImage` VALUES (67, 10007, 'http://productdata.fhxasdsada.xyz/9bf639975363fbb0.jpg', 1);
INSERT INTO `ProductImage` VALUES (68, 10007, 'http://productdata.fhxasdsada.xyz/15ae759577a35aa9.jpg', NULL);
INSERT INTO `ProductImage` VALUES (69, 10007, 'http://productdata.fhxasdsada.xyz/9153db93fc57f0c4.jpg', NULL);
INSERT INTO `ProductImage` VALUES (70, 10007, 'http://productdata.fhxasdsada.xyz/9153db93fc57f0c4.jpg', NULL);
INSERT INTO `ProductImage` VALUES (71, 10007, 'http://productdata.fhxasdsada.xyz/e7dacfdfe765ab9c.jpg', NULL);
INSERT INTO `ProductImage` VALUES (72, 10008, '\r\nhttp://productdata.fhxasdsada.xyz/5b90958cN736d78c4.jpg', 1);
INSERT INTO `ProductImage` VALUES (73, 10008, 'http://productdata.fhxasdsada.xyz/5b90958dN5fb23f95.jpg', NULL);
INSERT INTO `ProductImage` VALUES (74, 10008, 'http://productdata.fhxasdsada.xyz/6c7fafb8a6841a8c.jpg', NULL);
INSERT INTO `ProductImage` VALUES (75, 10008, 'http://productdata.fhxasdsada.xyz/9a92c2762bb5c57b.jpg', NULL);
INSERT INTO `ProductImage` VALUES (76, 10008, 'http://productdata.fhxasdsada.xyz/59fed11aN25bcc727.jpg', NULL);
INSERT INTO `ProductImage` VALUES (77, 10009, 'http://productdata.fhxasdsada.xyz/0fb1612d25f44013.jpg', 1);
INSERT INTO `ProductImage` VALUES (78, 10009, 'http://productdata.fhxasdsada.xyz/4cc5b3d55b1d5695.jpg', NULL);
INSERT INTO `ProductImage` VALUES (79, 10009, 'http://productdata.fhxasdsada.xyz/82805185280bf7fe.jpg', NULL);
INSERT INTO `ProductImage` VALUES (80, 10009, 'http://productdata.fhxasdsada.xyz/a83b14d7249e7b35.jpg', NULL);
INSERT INTO `ProductImage` VALUES (81, 10009, 'http://productdata.fhxasdsada.xyz/b081f2d2c95ed76d.jpg', NULL);
INSERT INTO `ProductImage` VALUES (82, 10005, 'http://productdata.fhxasdsada.xyz/7a77ad4e3100e885.jpg', 1);
INSERT INTO `ProductImage` VALUES (83, 10005, 'http://productdata.fhxasdsada.xyz/7112412352ada3c6.jpg', NULL);
INSERT INTO `ProductImage` VALUES (84, 10005, 'http://productdata.fhxasdsada.xyz/a2e58b389d88d1d9.jpg', NULL);
INSERT INTO `ProductImage` VALUES (85, 10005, 'http://productdata.fhxasdsada.xyz/b4c0df48e4bbcc4a.jpg', NULL);
INSERT INTO `ProductImage` VALUES (86, 10005, 'http://productdata.fhxasdsada.xyz/d695e3db95cf66cb.jpg', NULL);
INSERT INTO `ProductImage` VALUES (87, 10018, '\r\nhttp://productdata.fhxasdsada.xyz/5cd5acfbN24c0ee18.jpg', 1);
INSERT INTO `ProductImage` VALUES (88, 10018, '\r\nhttp://productdata.fhxasdsada.xyz/5ce44b68N134a0ce4.jpg', NULL);
INSERT INTO `ProductImage` VALUES (89, 10018, '\r\nhttp://productdata.fhxasdsada.xyz/5ce44b70N7a533656.jpg', NULL);
INSERT INTO `ProductImage` VALUES (90, 10018, '\r\nhttp://productdata.fhxasdsada.xyz/12d9fdefc091d9e7.jpg', NULL);
INSERT INTO `ProductImage` VALUES (91, 10018, '\r\nhttp://productdata.fhxasdsada.xyz/0938b8c9db25d916.jpg', NULL);
INSERT INTO `ProductImage` VALUES (92, 10019, '\r\nhttp://productdata.fhxasdsada.xyz/2-SXJILMjHoQXj66aurkzg.jpg', 1);
INSERT INTO `ProductImage` VALUES (93, 10019, '\r\nhttp://productdata.fhxasdsada.xyz/bHr9HgsqtllBbPtMov6jww.jpg', NULL);
INSERT INTO `ProductImage` VALUES (94, 10019, '\r\nhttp://productdata.fhxasdsada.xyz/ca9NrNg1kMP-VoP8tOYNxg.jpg', NULL);
INSERT INTO `ProductImage` VALUES (95, 10019, '\r\nhttp://productdata.fhxasdsada.xyz/jg1eWej2dz72FeRkl0C_8w.jpg', NULL);
INSERT INTO `ProductImage` VALUES (96, 10019, '\r\nhttp://productdata.fhxasdsada.xyz/xranhinAPpnEuaarT7JhRw.jpg', NULL);
INSERT INTO `ProductImage` VALUES (97, 10020, 'http://productdata.fhxasdsada.xyz/0070137366-000000010059586574_3.jpg', 1);
INSERT INTO `ProductImage` VALUES (98, 10020, 'http://productdata.fhxasdsada.xyz/0070137366-000000010059586574_4.jpg', NULL);
INSERT INTO `ProductImage` VALUES (99, 10020, 'http://productdata.fhxasdsada.xyz/0070137366-000000010059586574_5.jpg', NULL);
INSERT INTO `ProductImage` VALUES (100, 10020, 'http://productdata.fhxasdsada.xyz/225731782139609909464061_x.jpg', NULL);
INSERT INTO `ProductImage` VALUES (101, 10020, 'http://productdata.fhxasdsada.xyz/367000235486258003552709_x.jpg', NULL);
INSERT INTO `ProductImage` VALUES (102, 10021, 'http://productdata.fhxasdsada.xyz/dbBltniJF2LoPk9QQ3YWaw.jpg', 1);
INSERT INTO `ProductImage` VALUES (103, 10021, 'http://productdata.fhxasdsada.xyz/DjtdSBwAWuSxHs6yAAc3Yw.jpg', NULL);
INSERT INTO `ProductImage` VALUES (104, 10021, 'http://productdata.fhxasdsada.xyz/iLSvW0r_-YDo4L7iUT7xkw.jpg', NULL);
INSERT INTO `ProductImage` VALUES (105, 10021, 'http://productdata.fhxasdsada.xyz/N_lvVexzFxRREgxewSkOxA.jpg', NULL);
INSERT INTO `ProductImage` VALUES (106, 10021, 'http://productdata.fhxasdsada.xyz/vqMAvTS5sJGYjfaD_qEVWA.jpg', NULL);
INSERT INTO `ProductImage` VALUES (107, 10022, '\r\nhttp://productdata.fhxasdsada.xyz/adadas3e.jpg', 1);
INSERT INTO `ProductImage` VALUES (108, 10022, '\r\nhttp://productdata.fhxasdsada.xyz/Bjxu9RqIzP3Ee5QkFP6d1A.jpg', NULL);
INSERT INTO `ProductImage` VALUES (109, 10022, '\r\nhttp://productdata.fhxasdsada.xyz/aIcBs8oaW7BK7O_XjKnyDw.jpg', NULL);
INSERT INTO `ProductImage` VALUES (110, 10022, '\r\nhttp://productdata.fhxasdsada.xyz/RUbeN8NHFbwRkkH4-AuKbQ.jpg', NULL);
INSERT INTO `ProductImage` VALUES (111, 10022, '\r\nhttp://productdata.fhxasdsada.xyz/x-0NQEGxSXEpg4GUBE7gkQ.jpg', NULL);
INSERT INTO `ProductImage` VALUES (112, 10023, '\r\nhttp://productdata.fhxasdsada.xyz/tuhaokuai_1583977278.jpg', 1);
INSERT INTO `ProductImage` VALUES (113, 10023, '\r\nhttp://productdata.fhxasdsada.xyz/tuhaokuai_1583977330.jpg', NULL);
INSERT INTO `ProductImage` VALUES (114, 10023, '\r\nhttp://productdata.fhxasdsada.xyz/tuhaokuai_1583977307.jpg', NULL);
INSERT INTO `ProductImage` VALUES (115, 10023, '\r\nhttp://productdata.fhxasdsada.xyz/tuhaokuai_1583977378.jpg', NULL);
INSERT INTO `ProductImage` VALUES (116, 10023, 'http://productdata.fhxasdsada.xyz/tuhaokuai_1583977378.jpg', NULL);
INSERT INTO `ProductImage` VALUES (117, 10024, 'http://productdata.fhxasdsada.xyz/AD8JQ6Q0jfeySzdxAVglqw.jpg', 1);
INSERT INTO `ProductImage` VALUES (118, 10024, 'http://productdata.fhxasdsada.xyz/1k7IJMBhmkX97QGmsBnJmA.jpg', NULL);
INSERT INTO `ProductImage` VALUES (119, 10024, 'http://productdata.fhxasdsada.xyz/QlCRL5Qc2PQ1Ds9msLQ0aw.jpg', NULL);
INSERT INTO `ProductImage` VALUES (120, 10024, 'http://productdata.fhxasdsada.xyz/vGYPFoIyeYmz5oRZzvZdgQ.jpg', NULL);
INSERT INTO `ProductImage` VALUES (121, 10024, 'http://productdata.fhxasdsada.xyz/YZNbG7O6_BbGM7S33OAZxQ.jpg\r\n', NULL);
INSERT INTO `ProductImage` VALUES (122, 10025, 'http://productdata.fhxasdsada.xyz/FlnxmuE-gh4YKIj4txsLfg.jpg', 1);
INSERT INTO `ProductImage` VALUES (123, 10025, 'http://productdata.fhxasdsada.xyz/NL-OSHZUQGs6vGjGsmI__w.jpg', NULL);
INSERT INTO `ProductImage` VALUES (124, 10025, 'http://productdata.fhxasdsada.xyz/CZ5siXML-q9UXRnuqpww0g.jpg', NULL);
INSERT INTO `ProductImage` VALUES (125, 10025, 'http://productdata.fhxasdsada.xyz/GVEWb_biyayx8a3dNgKA2g.jpg', NULL);
INSERT INTO `ProductImage` VALUES (126, 10025, 'http://productdata.fhxasdsada.xyz/i7kQ4Pf_DtOVDPRC-HazMg.jpg', NULL);
INSERT INTO `ProductImage` VALUES (127, 10026, 'http://productdata.fhxasdsada.xyz/a1.jpg', 1);
INSERT INTO `ProductImage` VALUES (128, 10026, 'http://productdata.fhxasdsada.xyz/a2.jpg', NULL);
INSERT INTO `ProductImage` VALUES (129, 10026, 'http://productdata.fhxasdsada.xyz/b1.jpg', NULL);
INSERT INTO `ProductImage` VALUES (130, 10026, 'http://productdata.fhxasdsada.xyz/b2.jpg', NULL);
INSERT INTO `ProductImage` VALUES (131, 10026, 'http://productdata.fhxasdsada.xyz/b3.jpg', NULL);
INSERT INTO `ProductImage` VALUES (132, 10027, 'http://productdata.fhxasdsada.xyz/135638619666091357760161_x.jpg', 1);
INSERT INTO `ProductImage` VALUES (133, 10027, 'http://productdata.fhxasdsada.xyz/147494239513439282291194_x.jpg', NULL);
INSERT INTO `ProductImage` VALUES (134, 10027, 'http://productdata.fhxasdsada.xyz/194496895094406041420196_x.jpg', NULL);
INSERT INTO `ProductImage` VALUES (135, 10027, 'http://productdata.fhxasdsada.xyz/216693731079825961722732_x.jpg', NULL);
INSERT INTO `ProductImage` VALUES (136, 10027, 'http://productdata.fhxasdsada.xyz/HtNyjfPMAhzQjw1RPlMUoA.jpg', NULL);
INSERT INTO `ProductImage` VALUES (137, 10028, 'http://productdata.fhxasdsada.xyz/5JR1uDh09y-dhv8RSstl9g.jpg', 1);
INSERT INTO `ProductImage` VALUES (138, 10028, 'http://productdata.fhxasdsada.xyz/jU8rPyTxL3Siw6dLEUHhDQ.jpg', NULL);
INSERT INTO `ProductImage` VALUES (139, 10028, 'http://productdata.fhxasdsada.xyz/MUak68zcW1wihVXkpQ3rIQ.jpg', NULL);
INSERT INTO `ProductImage` VALUES (140, 10028, 'http://productdata.fhxasdsada.xyz/nV358PZUk4icX1T7fBcc_Q.jpg', NULL);
INSERT INTO `ProductImage` VALUES (141, 10028, 'http://productdata.fhxasdsada.xyz/XJSBumEOLmp8H7P3GX2ASw.jpg', NULL);
INSERT INTO `ProductImage` VALUES (142, 10029, '\r\nhttp://productdata.fhxasdsada.xyz/317865394161552203721050_x.jpg', NULL);
INSERT INTO `ProductImage` VALUES (143, 10029, 'http://productdata.fhxasdsada.xyz/334355456168161240400082_x.jpg', 1);
INSERT INTO `ProductImage` VALUES (144, 10029, 'http://productdata.fhxasdsada.xyz/619597484920156642971000_x.jpg', NULL);
INSERT INTO `ProductImage` VALUES (145, 10029, 'http://productdata.fhxasdsada.xyz/907405909774268174160400_x.jpg', NULL);
INSERT INTO `ProductImage` VALUES (146, 10029, 'http://productdata.fhxasdsada.xyz/hfQeM5SNL7aIQsnz4m2MwA.jpg', NULL);
INSERT INTO `ProductImage` VALUES (147, 10030, 'http://productdata.fhxasdsada.xyz/5Bl2awngovDrpx-B7yhitw.jpg', 1);
INSERT INTO `ProductImage` VALUES (148, 10030, 'http://productdata.fhxasdsada.xyz/EPgdZq3WD1ibfSP8znHfFQ.jpg', NULL);
INSERT INTO `ProductImage` VALUES (149, 10030, 'http://productdata.fhxasdsada.xyz/hlkkdGdo-SSYb77-pYqpmw.jpg', NULL);
INSERT INTO `ProductImage` VALUES (150, 10030, 'http://productdata.fhxasdsada.xyz/mvkEwjIBeMqinZ51RBJt6A.jpg', NULL);
INSERT INTO `ProductImage` VALUES (151, 10030, 'http://productdata.fhxasdsada.xyz/o3M12fplwwBGg6zbJm69hA.jpg', NULL);

-- ----------------------------
-- Table structure for ProductKind
-- ----------------------------
DROP TABLE IF EXISTS `ProductKind`;
CREATE TABLE `ProductKind`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ProductId` int(11) NULL DEFAULT NULL,
  `ProductKind` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 16 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ProductKind
-- ----------------------------
INSERT INTO `ProductKind` VALUES (9, 10003, '【超大款】帝王蟹礼盒4.5-4.0斤 ');
INSERT INTO `ProductKind` VALUES (10, 10003, '【大蟹款】帝王蟹礼盒4.0-3.6斤 ');
INSERT INTO `ProductKind` VALUES (11, 10003, '【尊享款】帝王蟹礼盒5.5-5.0斤\r\n');
INSERT INTO `ProductKind` VALUES (12, 10003, '【尝鲜款】帝王蟹礼盒2.8-2.4斤');
INSERT INTO `ProductKind` VALUES (13, 10003, '黄金蟹礼盒1000-800g');
INSERT INTO `ProductKind` VALUES (14, 10003, '黄金蟹礼盒800-600g');
INSERT INTO `ProductKind` VALUES (15, 10030, '种类');

-- ----------------------------
-- Table structure for ProductLowPrice
-- ----------------------------
DROP TABLE IF EXISTS `ProductLowPrice`;
CREATE TABLE `ProductLowPrice`  (
  `ProductId` int(11) NULL DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 32 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ProductLowPrice
-- ----------------------------
INSERT INTO `ProductLowPrice` VALUES (10006, 1);
INSERT INTO `ProductLowPrice` VALUES (10007, 2);
INSERT INTO `ProductLowPrice` VALUES (10008, 3);
INSERT INTO `ProductLowPrice` VALUES (10009, 23);
INSERT INTO `ProductLowPrice` VALUES (10010, 24);
INSERT INTO `ProductLowPrice` VALUES (10011, 25);
INSERT INTO `ProductLowPrice` VALUES (10012, 26);
INSERT INTO `ProductLowPrice` VALUES (10013, 27);
INSERT INTO `ProductLowPrice` VALUES (10014, 28);
INSERT INTO `ProductLowPrice` VALUES (10015, 29);
INSERT INTO `ProductLowPrice` VALUES (10016, 30);
INSERT INTO `ProductLowPrice` VALUES (10017, 31);

-- ----------------------------
-- Table structure for ProductPrice
-- ----------------------------
DROP TABLE IF EXISTS `ProductPrice`;
CREATE TABLE `ProductPrice`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ProductId` int(11) NULL DEFAULT NULL,
  `ProductPrice` decimal(10, 2) NULL DEFAULT NULL,
  `SalesPrice` decimal(10, 0) NULL DEFAULT NULL,
  `SpikePrice` decimal(10, 2) NULL DEFAULT NULL,
  `ProductSales` decimal(10, 2) NULL DEFAULT NULL,
  `ProductInventory` decimal(10, 2) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 31 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ProductPrice
-- ----------------------------
INSERT INTO `ProductPrice` VALUES (1, 10001, 5999.00, 4844, 4549.00, 100000.00, 100000.00);
INSERT INTO `ProductPrice` VALUES (2, 10002, 1999.00, 1899, 15886.00, 15000.00, 0.00);
INSERT INTO `ProductPrice` VALUES (3, 10010, 3596.00, 2563, 2523.00, 1500.00, 1863.00);
INSERT INTO `ProductPrice` VALUES (4, 10011, 10398.00, 19888, 9999.00, 18900.00, 15555.00);
INSERT INTO `ProductPrice` VALUES (5, 10012, 4999.00, 4888, 4760.00, 17666.00, 58666.00);
INSERT INTO `ProductPrice` VALUES (6, 10013, 11999.00, 18999, 10888.00, 1122222.00, 144455.00);
INSERT INTO `ProductPrice` VALUES (7, 10014, 2898.00, 2584, 2541.00, 14444.00, 18885.00);
INSERT INTO `ProductPrice` VALUES (8, 10015, 20.00, 10, 8.80, 88888.00, 74565.00);
INSERT INTO `ProductPrice` VALUES (9, 10016, 5399.00, 4999, 4988.00, 158555.00, 786325.00);
INSERT INTO `ProductPrice` VALUES (10, 10017, 3199.00, 2999, 3012.00, 4456.00, 78588.00);
INSERT INTO `ProductPrice` VALUES (11, 10003, 758.00, 666, 589.00, 18885.00, 5665555.00);
INSERT INTO `ProductPrice` VALUES (12, 10006, 1499.00, 1399, 1360.00, 156366.00, 4855454.00);
INSERT INTO `ProductPrice` VALUES (13, 10007, 3350.00, 2899, 1569.00, 156999.00, 145552.00);
INSERT INTO `ProductPrice` VALUES (14, 10008, 3500.00, 15588, 1585.00, 10002.00, 15255.00);
INSERT INTO `ProductPrice` VALUES (15, 10009, 47699.00, 4688, 45666.00, 666666.00, 48599.00);
INSERT INTO `ProductPrice` VALUES (16, 10004, 30576.00, 29999, 28999.00, 10000.00, 158555.00);
INSERT INTO `ProductPrice` VALUES (17, 10005, 7890.00, 5888, 4585.00, 155555.00, 14565.00);
INSERT INTO `ProductPrice` VALUES (18, 10018, 1140.00, 1111, 999.00, 1856.00, 15555.00);
INSERT INTO `ProductPrice` VALUES (19, 10019, 260000.00, 259999, 259999.00, 1.00, 1.00);
INSERT INTO `ProductPrice` VALUES (20, 10020, 5199.00, 4999, 4855.00, 100.00, 11111.00);
INSERT INTO `ProductPrice` VALUES (21, 10021, 18599.00, 1855, 1599.00, 1000.00, 5555.00);
INSERT INTO `ProductPrice` VALUES (22, 10023, 1299.00, 1152, 1258.00, 1000.00, 252.00);
INSERT INTO `ProductPrice` VALUES (23, 10024, 2188.00, 2088, 1999.00, 1516.00, 4894651.00);
INSERT INTO `ProductPrice` VALUES (24, 10025, 71.00, 66, 59.90, 161456.00, 156165.00);
INSERT INTO `ProductPrice` VALUES (25, 10022, 1289.00, 1206, 1126.00, 54615165.00, 465156.00);
INSERT INTO `ProductPrice` VALUES (26, 10026, 100000.00, 620, 599.00, 15661156.00, 0.00);
INSERT INTO `ProductPrice` VALUES (27, 10027, 773.00, 666, 689.00, 154854.00, 1666.00);
INSERT INTO `ProductPrice` VALUES (28, 10028, 265.09, 222, 218.00, 151515.00, 156165.00);
INSERT INTO `ProductPrice` VALUES (29, 10029, 2920.01, 288, 2999.00, 21261.00, 165161.00);
INSERT INTO `ProductPrice` VALUES (30, 10030, 128.00, 128, 128.00, 10000.00, 1000.00);

-- ----------------------------
-- Table structure for ProductSize
-- ----------------------------
DROP TABLE IF EXISTS `ProductSize`;
CREATE TABLE `ProductSize`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ProductId` int(11) NULL DEFAULT NULL,
  `ProductSize` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 26 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ProductSize
-- ----------------------------
INSERT INTO `ProductSize` VALUES (4, 10023, '均码');
INSERT INTO `ProductSize` VALUES (5, 10026, 'XS');
INSERT INTO `ProductSize` VALUES (6, 10026, 'S');
INSERT INTO `ProductSize` VALUES (7, 10026, 'M');
INSERT INTO `ProductSize` VALUES (8, 10026, 'L');
INSERT INTO `ProductSize` VALUES (9, 10029, '标准46.5/US12 ');
INSERT INTO `ProductSize` VALUES (10, 10029, '标准40/US7 ');
INSERT INTO `ProductSize` VALUES (11, 10029, '标准40.5/US7.5 ');
INSERT INTO `ProductSize` VALUES (12, 10029, '标准41/US8 ');
INSERT INTO `ProductSize` VALUES (13, 10029, '标准42/US8.5');
INSERT INTO `ProductSize` VALUES (14, 10029, '标准42.5/US9 ');
INSERT INTO `ProductSize` VALUES (15, 10029, '标准43/US9.5');
INSERT INTO `ProductSize` VALUES (16, 10029, '标准44/US10 ');
INSERT INTO `ProductSize` VALUES (17, 10029, '标准44.5/US10.5 ');
INSERT INTO `ProductSize` VALUES (18, 10029, '标准45/US11 ');
INSERT INTO `ProductSize` VALUES (19, 10029, '标准46/US11.5 ');
INSERT INTO `ProductSize` VALUES (20, 10029, '其他大码请咨询客服');
INSERT INTO `ProductSize` VALUES (21, 10030, 'M');
INSERT INTO `ProductSize` VALUES (22, 10030, ' L ');
INSERT INTO `ProductSize` VALUES (23, 10030, 'XL');
INSERT INTO `ProductSize` VALUES (24, 10030, 'XXL ');
INSERT INTO `ProductSize` VALUES (25, 10030, 'XXXL');

-- ----------------------------
-- Table structure for ProductSpecification
-- ----------------------------
DROP TABLE IF EXISTS `ProductSpecification`;
CREATE TABLE `ProductSpecification`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ProductId` int(11) NULL DEFAULT NULL,
  `Specification` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 19 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ProductSpecification
-- ----------------------------
INSERT INTO `ProductSpecification` VALUES (1, 10001, '256G+8G\r\n');
INSERT INTO `ProductSpecification` VALUES (2, 10001, '128G+2G');
INSERT INTO `ProductSpecification` VALUES (3, 10001, '64G+3G');
INSERT INTO `ProductSpecification` VALUES (4, 10011, '128G+2G');
INSERT INTO `ProductSpecification` VALUES (5, 10011, '128G+3G');
INSERT INTO `ProductSpecification` VALUES (6, 10011, '64G+2G');
INSERT INTO `ProductSpecification` VALUES (7, 10017, '40毫米');
INSERT INTO `ProductSpecification` VALUES (8, 10017, '44毫米');
INSERT INTO `ProductSpecification` VALUES (9, 10011, '256G+3G');
INSERT INTO `ProductSpecification` VALUES (10, 10012, 'Pro13|标压R5 16G 512G QHD');
INSERT INTO `ProductSpecification` VALUES (11, 10012, '小新Air14|R5 12G 512G');
INSERT INTO `ProductSpecification` VALUES (12, 10012, '小新14大固态|R5 8G 1T 128G');
INSERT INTO `ProductSpecification` VALUES (13, 10013, '华硕PRIME X299-A主板+ ');
INSERT INTO `ProductSpecification` VALUES (14, 10013, 'PRIME X299-DELUXE II 主板+');
INSERT INTO `ProductSpecification` VALUES (15, 10013, 'RAMPAGE VI EXTREME OMEGA+ ');
INSERT INTO `ProductSpecification` VALUES (16, 10013, 'TUF X299 MARK 2电竞主板+');
INSERT INTO `ProductSpecification` VALUES (17, 10013, 'ROG STRIX X299-E GAMING+');
INSERT INTO `ProductSpecification` VALUES (18, 10030, '规格');

-- ----------------------------
-- Table structure for ProductTaste
-- ----------------------------
DROP TABLE IF EXISTS `ProductTaste`;
CREATE TABLE `ProductTaste`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ProductId` int(11) NULL DEFAULT NULL,
  `ProductTaste` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ProductTaste
-- ----------------------------
INSERT INTO `ProductTaste` VALUES (1, 10015, '奶茶味');
INSERT INTO `ProductTaste` VALUES (2, 10015, '茉莉味');
INSERT INTO `ProductTaste` VALUES (3, 10015, '香蕉味');
INSERT INTO `ProductTaste` VALUES (4, 10015, '苹果味');
INSERT INTO `ProductTaste` VALUES (5, 10015, '奶油味');
INSERT INTO `ProductTaste` VALUES (6, 10030, '口味');

-- ----------------------------
-- Table structure for ProductVersion
-- ----------------------------
DROP TABLE IF EXISTS `ProductVersion`;
CREATE TABLE `ProductVersion`  (
  `ProductId` int(11) NULL DEFAULT NULL,
  `version` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ProductVersion
-- ----------------------------
INSERT INTO `ProductVersion` VALUES (10005, 'WLAN版64G');
INSERT INTO `ProductVersion` VALUES (10005, ' WLAN版256G ');
INSERT INTO `ProductVersion` VALUES (10005, 'WLAN版512G');
INSERT INTO `ProductVersion` VALUES (10005, ' WLAN版1TB');
INSERT INTO `ProductVersion` VALUES (10005, 'Cellular版64G ');
INSERT INTO `ProductVersion` VALUES (10005, 'Cellular版256G');
INSERT INTO `ProductVersion` VALUES (10005, 'Cellular版512G ');
INSERT INTO `ProductVersion` VALUES (10005, 'Cellular版1TB');
INSERT INTO `ProductVersion` VALUES (10001, '豪华版');
INSERT INTO `ProductVersion` VALUES (10001, '标志版');
INSERT INTO `ProductVersion` VALUES (10017, 'GPS版');
INSERT INTO `ProductVersion` VALUES (10017, ' 蜂窝版');
INSERT INTO `ProductVersion` VALUES (10017, 'GPS版AC+');
INSERT INTO `ProductVersion` VALUES (10017, '蜂窝版AC+');
INSERT INTO `ProductVersion` VALUES (10024, '标准白有刻 ');
INSERT INTO `ProductVersion` VALUES (10024, '标准白无刻');
INSERT INTO `ProductVersion` VALUES (10024, '标准黑有刻 ');
INSERT INTO `ProductVersion` VALUES (10024, '标准黑无刻');
INSERT INTO `ProductVersion` VALUES (10024, '蓝牙白有刻 ');
INSERT INTO `ProductVersion` VALUES (10024, '蓝牙白无刻 ');
INSERT INTO `ProductVersion` VALUES (10024, '蓝牙黑有刻 ');
INSERT INTO `ProductVersion` VALUES (10024, '蓝牙黑无刻');
INSERT INTO `ProductVersion` VALUES (10024, '静音白有刻 ');
INSERT INTO `ProductVersion` VALUES (10024, '静音白无刻');
INSERT INTO `ProductVersion` VALUES (10028, '小爱音箱万能遥控版 ');
INSERT INTO `ProductVersion` VALUES (10028, '小爱音箱play版');
INSERT INTO `ProductVersion` VALUES (10028, '小米小爱音箱【HD版 深灰色】');
INSERT INTO `ProductVersion` VALUES (10028, '小米小爱音箱【HD版 浅灰色】');
INSERT INTO `ProductVersion` VALUES (10028, ' Redmi 小爱音箱Play 蓝色');
INSERT INTO `ProductVersion` VALUES (10028, 'Redmi 小爱音箱Play 绿色');

-- ----------------------------
-- Table structure for RotationChart
-- ----------------------------
DROP TABLE IF EXISTS `RotationChart`;
CREATE TABLE `RotationChart`  (
  `Rid` int(11) NOT NULL,
  `RotationChartOne` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `RotationChartOneSite` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `RotationChartTwo_1` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `RotationChartTwoSite_1` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `RotationChartTwo_2` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `RotationChartTwoSite_2` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `RotationChartTwo_3` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `RotationChartTwoSite_3` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`Rid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of RotationChart
-- ----------------------------
INSERT INTO `RotationChart` VALUES (1, 'http://carousel.fhxasdsada.xyz/5690b6dcNd5aaa0f0.jpg', '/', 'http://carousel.fhxasdsada.xyz/56cdc416Ne54f9cd9.jpg', '/', 'http://carousel.fhxasdsada.xyz/56cdc486N8446aa1b.jpg', '/', 'http://carousel.fhxasdsada.xyz/56cdc802Ne2d2904c.jpg', '/');
INSERT INTO `RotationChart` VALUES (2, 'http://carousel.fhxasdsada.xyz/56960e10N27e2d29f.jpg', '/', 'http://carousel.fhxasdsada.xyz/56cdc812N28b5f894.jpg', '/', 'http://carousel.fhxasdsada.xyz/56cdc822N62394473.jpg', '/', 'http://carousel.fhxasdsada.xyz/56cdc906Na4b1ff7c.jpg', '/');
INSERT INTO `RotationChart` VALUES (3, 'http://carousel.fhxasdsada.xyz/5698a5aaN08e09475.jpg', '/', 'http://carousel.fhxasdsada.xyz/56cdc944N4f9497d4.jpg', '/', 'http://carousel.fhxasdsada.xyz/56cdc956Na8d6ef06.jpg', '/', 'http://carousel.fhxasdsada.xyz/56cdc966N3b48164b.jpg', '/');
INSERT INTO `RotationChart` VALUES (4, 'http://carousel.fhxasdsada.xyz/56a05078N6add136b.jpg', '/', 'http://carousel.fhxasdsada.xyz/56cdc97aN3e1b0fe9.jpg', '/', 'http://carousel.fhxasdsada.xyz/56cdc99cN4291a808.jpg', '/', 'http://carousel.fhxasdsada.xyz/56cdca25N8aa1cbb6.jpg', '/');
INSERT INTO `RotationChart` VALUES (5, 'http://carousel.fhxasdsada.xyz/56a09e6aN373313d9.jpg', '/', 'http://carousel.fhxasdsada.xyz/56cdca36N6e25e29a.jpg', '/', 'http://carousel.fhxasdsada.xyz/56cdca8dNc0da3888.jpg', '/', 'http://carousel.fhxasdsada.xyz/56cdca9eN5a1c2c29.jpg', '/');

-- ----------------------------
-- Table structure for Seckill
-- ----------------------------
DROP TABLE IF EXISTS `Seckill`;
CREATE TABLE `Seckill`  (
  `ProductId` int(11) NULL DEFAULT NULL,
  `time` datetime(0) NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(0),
  `SeckillId` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`SeckillId`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of Seckill
-- ----------------------------
INSERT INTO `Seckill` VALUES (10010, '2020-03-10 03:51:53', 1);
INSERT INTO `Seckill` VALUES (10011, '2020-03-10 04:26:31', 2);
INSERT INTO `Seckill` VALUES (10012, '2020-03-10 04:30:25', 3);
INSERT INTO `Seckill` VALUES (10013, '2020-03-10 04:30:29', 4);
INSERT INTO `Seckill` VALUES (10014, '2020-03-10 13:32:42', 5);
INSERT INTO `Seckill` VALUES (10015, '2020-03-10 13:32:45', 6);
INSERT INTO `Seckill` VALUES (10016, '2020-03-10 13:32:48', 7);
INSERT INTO `Seckill` VALUES (10017, '2020-03-10 13:32:50', 8);

-- ----------------------------
-- Table structure for ad
-- ----------------------------
DROP TABLE IF EXISTS `ad`;
CREATE TABLE `ad`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `img` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `site` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ad
-- ----------------------------
INSERT INTO `ad` VALUES (1, 'http://img.fhxasdsada.xyz/9U5D%29GS~X6~KA8L23YD%29RSR.png', '/');
INSERT INTO `ad` VALUES (2, 'http://img.fhxasdsada.xyz/7XJAXW7H%5B%24%299J%40%406L%5DL%5B7%40O.png', '/');
INSERT INTO `ad` VALUES (3, 'http://img.fhxasdsada.xyz/CM5%7D~T3XEPPZ934W%40MCPP64.png', '/');

-- ----------------------------
-- Table structure for arrivalNotice
-- ----------------------------
DROP TABLE IF EXISTS `arrivalNotice`;
CREATE TABLE `arrivalNotice`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userId` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `productId` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 15 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of arrivalNotice
-- ----------------------------
INSERT INTO `arrivalNotice` VALUES (13, '7c9fdfa3177042a08766aed29e7de6cd', 10001);
INSERT INTO `arrivalNotice` VALUES (14, '7c9fdfa3177042a08766aed29e7de6cd', 10002);

-- ----------------------------
-- Table structure for category
-- ----------------------------
DROP TABLE IF EXISTS `category`;
CREATE TABLE `category`  (
  `cid` int(5) NULL DEFAULT NULL,
  `goodsName_1_c` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `goodsId_1_c` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of category
-- ----------------------------
INSERT INTO `category` VALUES (1, '秒杀', '/');
INSERT INTO `category` VALUES (2, '优惠券', '/');
INSERT INTO `category` VALUES (3, '微利会员', '/');
INSERT INTO `category` VALUES (4, '品牌闪购', '/');
INSERT INTO `category` VALUES (5, '拍卖', '/');
INSERT INTO `category` VALUES (6, '微利家电', '/');
INSERT INTO `category` VALUES (7, '微利超市', '/');
INSERT INTO `category` VALUES (8, '品牌馆', '/');
INSERT INTO `category` VALUES (9, '网红必备', '/');

-- ----------------------------
-- Table structure for classification
-- ----------------------------
DROP TABLE IF EXISTS `classification`;
CREATE TABLE `classification`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nid` int(11) NULL DEFAULT NULL,
  `classificationHeader` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `classifyName_1` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `classifySite_1` varchar(80) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `classifyName_2` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `classifySite_2` varchar(80) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `classifyName_3` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `classifySite_3` varchar(80) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `classifyName_4` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `classifySite_4` varchar(80) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `classifyName_5` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `classifySite_5` varchar(80) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `classifyName_6` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `classifySite_6` varchar(80) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `classifyName_7` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `classifySite_7` varchar(80) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `classifyName_8` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `classifySite_8` varchar(80) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 63 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of classification
-- ----------------------------
INSERT INTO `classification` VALUES (1, 1, '电视', '轻薄电视', '/', '全屏电视', '/', '智能电视', '/', '智慧屏', '/', '4k超清电视', '/', '55英寸电视', '/', '65英寸', '/', '电视配件', '/');
INSERT INTO `classification` VALUES (2, 1, '空调', '空调挂机', '/', '中央空调', '/', '空调柜机', '/', '变频空调', '/', '一级能效', '/', '移动空调', '/', '以旧换新', '/', NULL, NULL);
INSERT INTO `classification` VALUES (14, 1, '洗衣机', '滚筒洗衣机', '/', '波轮洗衣机', '/', '迷你洗衣机', '/', '烘干机', '/', '洗衣机配件', '/', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `classification` VALUES (15, 1, '冰箱', '多门', '/', '三门', '/', '双门', '/', '冷柜/冰柜', '/', '酒柜', '/', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `classification` VALUES (16, 1, '厨卫', '油烟机', '/', '燃气灶', '/', '烟灶套装', '/', '消毒柜', '/', '洗碗机', '/', '电热水器', '/', '太阳能', '/', NULL, NULL);
INSERT INTO `classification` VALUES (17, 1, '生活电器', '取暖器', '/', '电烤箱', '/', '电饭煲', '/', '电压力锅', '/', '电火锅', '/', '面包机', '/', '煮蛋器', '/', NULL, NULL);
INSERT INTO `classification` VALUES (18, 1, '个人健康', '剃须刀', '/', '电动牙刷', '/', '电吹风', '/', '美容器', '/', '按摩器', '/', '理发器', '/', '按摩椅', '/', NULL, NULL);
INSERT INTO `classification` VALUES (19, 3, '手机通信', '手机', '/', '游戏手机', '/', '老人机', '/', '对讲机', '/', '以旧换新', '/', '手机维修', '/', NULL, NULL, NULL, NULL);
INSERT INTO `classification` VALUES (20, 3, '运营商', '合约机', '/', '手机卡', '/', '宽带', '/', '话费充值', '/', '中国电信', '/', '中国移动', '/', '中国联通', '/', NULL, NULL);
INSERT INTO `classification` VALUES (21, 3, '手机配件', '手机壳', '/', '贴膜', '/', '储存卡', '/', '数据线', '/', '充电器', '/', '手机耳机', '/', '创意配件', '/', NULL, NULL);
INSERT INTO `classification` VALUES (22, 3, '摄影摄像', '数码相机', '/', '微单相机', '/', '拍立得', '/', '运动相机', '/', '摄像头', '/', '镜头', '/', '户外器材', '/', NULL, NULL);
INSERT INTO `classification` VALUES (23, 3, '数码配件', '储存卡', '/', '三脚架', '/', '滤镜', '/', '闪光灯', '/', '相机清洁', '/', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `classification` VALUES (24, 3, '影视娱乐', '耳机耳麦', '/', '音响/音响', '/', '智能音箱', '/', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `classification` VALUES (25, 5, '女装', '当前热卖', '/', '新品推荐', '/', '商场同款', '/', '大码女装', '/', '短裤', '/', '连衣裙', '/', '半身裙', '/', '羽绒服', '/');
INSERT INTO `classification` VALUES (26, 5, '男装5', '当季热卖', '/', '新品推荐', '/', 'T恤', '/', '牛仔裤', '/', '风衣', '/', '马甲', '/', '中老年', '/', NULL, NULL);
INSERT INTO `classification` VALUES (27, 5, '内衣', '文胸', '/', '睡衣', '/', '吊带/背心', '/', '打底裤袜', NULL, '大码内衣', '/', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `classification` VALUES (28, 5, '配饰', '女士围巾', '/', '真皮羊毛', '/', '围巾', '/', '扣子', '/', '太阳镜', '/', '钥匙扣', '/', NULL, NULL, NULL, NULL);
INSERT INTO `classification` VALUES (29, 5, '童鞋', '运动鞋', '/', '靴子', '/', '帆布鞋', '/', '皮鞋', '/', '棉鞋', '/', '凉鞋', '/', '拖鞋', '/', NULL, NULL);
INSERT INTO `classification` VALUES (30, 6, '面部护肤6', '礼盒', '/', '美白', '/', '防晒', '/', '面膜', '/', '精华', '/', '卸妆', '/', '润唇膏', '/', NULL, NULL);
INSERT INTO `classification` VALUES (31, 6, '香水彩妆', '隔离', '/', '气垫', '/', '粉底', '/', '腮红', '/', '眼线', '/', '美甲', '/', '女士香水', '/', NULL, NULL);
INSERT INTO `classification` VALUES (32, 6, '男士护肤', '控油', '/', '剃须', '/', '睫毛膏', '/', '防晒', '/', '套装礼盒', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `classification` VALUES (33, 6, '女性护理', '卫生巾', '/', '卫生棉签', '/', '卫生护垫', '/', '私处处理', '/', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `classification` VALUES (34, 6, '宠物生活', '狗粮', '/', '狗罐头', '/', '狗厕所', '/', '猫零食', '/', '宠物衣服', '/', '小宠用品', '/', NULL, NULL, NULL, NULL);
INSERT INTO `classification` VALUES (35, 2, '电脑整机', '笔记本', '/', '游戏本', '/', '平板电脑', '/', '一体机', '/', '服务器', '/', '笔记本配件', '/', NULL, NULL, NULL, NULL);
INSERT INTO `classification` VALUES (36, 2, '电脑配件', '显示器', '/', 'CPU', '/', '主板', '/', '显卡', '/', '硬盘', '/', '内存', '/', '机箱', '/', '电源', '/');
INSERT INTO `classification` VALUES (37, 2, '游戏配件', '游戏机', '/', '游戏耳机', '/', '游戏软件', '/', '游戏周边', '/', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `classification` VALUES (38, 2, '网络产品', '路由器', '/', '网络机顶盒', '/', '交换机', '/', '网卡', '/', '5G/4G', '/', '网线', '/', NULL, NULL, NULL, NULL);
INSERT INTO `classification` VALUES (39, 2, '文具', '笔类', '/', '本册', '/', '文件收纳', '/', '画具', '/', '文房四宝', '/', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `classification` VALUES (40, 4, '厨具', '水具酒具', '/', '炒锅', '/', '刀菜板', '/', '插具', '/', '咖啡具', '/', '保温杯', '/', NULL, NULL, NULL, NULL);
INSERT INTO `classification` VALUES (41, 4, '家纺', '四件套', '/', '被子', '/', '枕头', '/', '窗帘', '/', '床单', '/', '被套', '/', NULL, NULL, NULL, NULL);
INSERT INTO `classification` VALUES (42, 4, '生活用品', '雨伞', '/', '浴室用品', '/', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `classification` VALUES (43, 4, '家具', '客厅', '/', '卧室', '/', '台灯', '/', '电脑桌', '/', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `classification` VALUES (44, 4, '五金电工', '指纹锁', '/', '手动工具', '/', '劳防用品', '/', '开关灯座', '/', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `classification` VALUES (45, 7, '时尚女鞋', '新品推荐', '/', '女靴', '/', '单鞋', '/', '妈妈鞋', '/', '凉鞋', '/', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `classification` VALUES (46, 7, '潮流女包', '真皮包', '/', '单肩包', '/', '斜挎包', '/', '卡包', '/', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `classification` VALUES (47, 7, '奢侈品', '箱包', '/', '钱包', '/', '服饰', '/', '饰品', '/', '配件', '/', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `classification` VALUES (48, 7, '钟表', 'DW', '/', '浪琴', '/', '卡西欧', '/', '劳力士', '/', '天王', '/', '瑞表', '/', NULL, NULL, NULL, NULL);
INSERT INTO `classification` VALUES (49, 7, '珠宝', '黄金', '/', '钻石', '/', '银饰', '/', '铂金', '/', '珍珠', '/', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `classification` VALUES (50, 8, '潮流男鞋', '新品推荐', '/', '休闲鞋', '/', '商务休闲鞋', '/', '功能鞋', '/', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `classification` VALUES (51, 8, '运动鞋包', '跑步鞋', '/', '篮球鞋', '/', '运动包', '/', '足球鞋', '/', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `classification` VALUES (52, 8, '户外装备', '户外风衣', '/', '徒步鞋', '/', '登山鞋', '/', '军迷用品', '/', '救援装备', '/', '户外工具', '/', NULL, NULL, NULL, NULL);
INSERT INTO `classification` VALUES (53, 8, '游泳用品', '女士泳衣', '/', '比基尼', '/', '男士泳衣', '/', '泳帽', '/', '游泳配件', '/', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `classification` VALUES (54, 9, '房产', '最近开盘', '/', '普通住宅', '/', '商业办公', '/', '海外房产', '/', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `classification` VALUES (55, 9, '汽车型车', '小型车', '/', '中型车', '/', '豪华车', '/', '跑车', '/', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `classification` VALUES (56, 9, '汽车品牌', '大众', '/', '日产', '/', '别克', '/', '本田', '/', '宝骏', '/', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `classification` VALUES (57, 9, '汽车服务', '保养维修', '/', '洗车', '/', '玻璃水', '/', 'ECT', '/', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `classification` VALUES (58, 10, '奶粉', '1段', '/', '2段', '/', '3段', '/', '4段', '/', '孕妈奶粉', '/', '有机奶粉', '/', NULL, NULL, NULL, NULL);
INSERT INTO `classification` VALUES (59, 10, '营养辅食', '米粉', '/', '面条', '/', '果汁', '/', '益生菌', '/', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `classification` VALUES (60, 10, '喂养用品', '奶瓶', '/', '吸奶器', '/', '食物储存', '/', '水壶', '/', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `classification` VALUES (61, 10, '玩具', '益智玩具', '/', '戏水', '/', '绘画', '/', '芭比玩玩', '/', '电动', '/', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `classification` VALUES (62, 10, '儿童床', '安全床', '/', '婴儿推车', '/', '学步车', '/', '三轮车', '/', '电动车', '/', NULL, NULL, NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for evaluation
-- ----------------------------
DROP TABLE IF EXISTS `evaluation`;
CREATE TABLE `evaluation`  (
  `id` int(11) NOT NULL,
  `eid` varchar(80) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `Evaluation` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of evaluation
-- ----------------------------

-- ----------------------------
-- Table structure for homepageIcon
-- ----------------------------
DROP TABLE IF EXISTS `homepageIcon`;
CREATE TABLE `homepageIcon`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `icon` varchar(80) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `iconSite` varchar(80) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `iconName` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of homepageIcon
-- ----------------------------
INSERT INTO `homepageIcon` VALUES (1, 'http://img.fhxasdsada.xyz/e.png', '/', '会员');
INSERT INTO `homepageIcon` VALUES (2, 'http://img.fhxasdsada.xyz/d.png', '/personalCenter', '我的');
INSERT INTO `homepageIcon` VALUES (3, 'http://img.fhxasdsada.xyz/a.png', '/', '消息');
INSERT INTO `homepageIcon` VALUES (4, '\r\nhttp://img.fhxasdsada.xyz/f.png', '/', '收藏');
INSERT INTO `homepageIcon` VALUES (5, '\r\nhttp://img.fhxasdsada.xyz/h.png', '/', '购物车');
INSERT INTO `homepageIcon` VALUES (6, '\r\nhttp://img.fhxasdsada.xyz/g.png', '/', '订单');
INSERT INTO `homepageIcon` VALUES (7, '\r\nhttp://img.fhxasdsada.xyz/c.png', '/', '客服');
INSERT INTO `homepageIcon` VALUES (8, 'http://img.fhxasdsada.xyz/b.png', '/', '物流');
INSERT INTO `homepageIcon` VALUES (9, '\r\nhttp://img.fhxasdsada.xyz/l.png', '/', '设置');

-- ----------------------------
-- Table structure for navigation
-- ----------------------------
DROP TABLE IF EXISTS `navigation`;
CREATE TABLE `navigation`  (
  `nid` int(15) NULL DEFAULT NULL,
  `goodsName_1` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `goodsId_1` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `goodsName_2` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `goodsId_2` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `goodsName_3` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `goodsId_3` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `goodsName_4` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `goodsId_4` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of navigation
-- ----------------------------
INSERT INTO `navigation` VALUES (1, '家用电器', '/', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `navigation` VALUES (2, '手机', '/', '运营商', '/', '数码', '/', NULL, NULL);
INSERT INTO `navigation` VALUES (3, '电脑', '/', '办公', '/', NULL, NULL, NULL, NULL);
INSERT INTO `navigation` VALUES (4, '家居', '/', '家具', '/', '家装', '/', '厨具', '/');
INSERT INTO `navigation` VALUES (5, '男装', '/', '女装', '/', '童装', '/', '内衣', '/');
INSERT INTO `navigation` VALUES (6, '美装', '/', '个人清洁', '/', '宠物', '/', NULL, NULL);
INSERT INTO `navigation` VALUES (7, '女鞋', '/', '箱包', '/', '钟表', '/', '珠宝', '/');
INSERT INTO `navigation` VALUES (8, '男鞋', '/', '运动', '/', '户外', '/', NULL, NULL);
INSERT INTO `navigation` VALUES (9, '房产', '/', '汽车', '/', '汽车用品', '/', NULL, NULL);
INSERT INTO `navigation` VALUES (10, '母婴', '/', '玩具', '/', NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for newsContent
-- ----------------------------
DROP TABLE IF EXISTS `newsContent`;
CREATE TABLE `newsContent`  (
  `contentId` int(11) NOT NULL AUTO_INCREMENT,
  `senderId` int(11) NULL DEFAULT NULL,
  `userId` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `newsContent` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `newsType` int(11) NULL DEFAULT NULL,
  `sign` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0',
  `title` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `newsTime` datetime(0) NULL DEFAULT NULL,
  `newsStatus` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`contentId`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 81 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of newsContent
-- ----------------------------
INSERT INTO `newsContent` VALUES (46, 4, 'f92b9f8f372e445fb6564cdd57aa3c3e', '{\"deliveryTime\":1586425219369,\"deliveryWay\":1,\"id\":0,\"orderAddress\":{\"addressId\":150,\"alias\":\"ad\",\"areaCode\":[\"12\",\"1201\",\"120101\",\"120101001\"],\"areaCodes\":\"12,1201,120101,120101001,\",\"areas\":\"天津市 市辖区 和平区 劝业场街道 \",\"defaults\":true,\"detailedAddress\":\"d156\",\"email\":\"2252@qq.com\",\"name\":\"ff\",\"phone\":\"18598814121\",\"userId\":\"f92b9f8f372e445fb6564cdd57aa3c3e\"},\"orderId\":\"1586166018805100056\",\"orderNote\":\"\",\"orderState\":2,\"paymentWay\":1,\"userId\":\"f92b9f8f372e445fb6564cdd57aa3c3e\"}', 4, '0', '确认订单消息', '2020-04-06 17:40:39', 0);
INSERT INTO `newsContent` VALUES (47, 4, '7c9fdfa3177042a08766aed29e7de6cd', '{\"deliveryTime\":1586425217349,\"deliveryWay\":1,\"id\":0,\"orderAddress\":{\"addressId\":154,\"alias\":\"速度还是大\",\"areaCode\":[\"14\",\"1402\",\"140215\",\"140215100\"],\"areaCodes\":\"14,1402,140215,140215100,\",\"areas\":\"山西省 大同市 云州区 西坪镇 \",\"defaults\":false,\"detailedAddress\":\"速度还是大\",\"email\":\"liuxianliangli@foxmail.com\",\"name\":\"三大法师\",\"phone\":\"15367885410\",\"userId\":\"7c9fdfa3177042a08766aed29e7de6cd\"},\"orderId\":\"1586166016559100055\",\"orderNote\":\"\",\"orderState\":2,\"paymentWay\":1,\"userId\":\"7c9fdfa3177042a08766aed29e7de6cd\"}', 4, '0', '确认订单消息', '2020-04-06 17:40:40', 0);
INSERT INTO `newsContent` VALUES (48, 4, '7c9fdfa3177042a08766aed29e7de6cd', '{\"deliveryTime\":1586425339297,\"deliveryWay\":1,\"id\":0,\"orderAddress\":{\"addressId\":154,\"alias\":\"速度还是大\",\"areaCode\":[\"14\",\"1402\",\"140215\",\"140215100\"],\"areaCodes\":\"14,1402,140215,140215100,\",\"areas\":\"山西省 大同市 云州区 西坪镇 \",\"defaults\":false,\"detailedAddress\":\"速度还是大\",\"email\":\"liuxianliangli@foxmail.com\",\"name\":\"三大法师\",\"phone\":\"15367885410\",\"userId\":\"7c9fdfa3177042a08766aed29e7de6cd\"},\"orderId\":\"1586166138991100057\",\"orderNote\":\"\",\"orderState\":2,\"paymentWay\":1,\"userId\":\"7c9fdfa3177042a08766aed29e7de6cd\"}', 4, '0', '确认订单消息', '2020-04-06 17:42:42', 0);
INSERT INTO `newsContent` VALUES (49, 4, '7c9fdfa3177042a08766aed29e7de6cd', '{\"deliveryTime\":1586425458319,\"deliveryWay\":1,\"id\":0,\"orderAddress\":{\"addressId\":153,\"alias\":\"学校\",\"areaCode\":[\"12\",\"1201\",\"120104\",\"120104002\"],\"areaCodes\":\"12,1201,120104,120104002,\",\"areas\":\"天津市 市辖区 南开区 鼓楼街道 \",\"defaults\":false,\"detailedAddress\":\"递四方速递\",\"email\":\"liuxianliangli@foxmail.com\",\"name\":\"彭浩\",\"phone\":\"15367885410\",\"userId\":\"7c9fdfa3177042a08766aed29e7de6cd\"},\"orderId\":\"1586166257712100058\",\"orderNote\":\"\",\"orderState\":2,\"paymentWay\":1,\"userId\":\"7c9fdfa3177042a08766aed29e7de6cd\"}', 4, '0', '确认订单消息', '2020-04-06 17:44:26', 0);
INSERT INTO `newsContent` VALUES (50, 4, '7c9fdfa3177042a08766aed29e7de6cd', '{\"deliveryTime\":1586425496706,\"deliveryWay\":1,\"id\":0,\"orderAddress\":{\"addressId\":153,\"alias\":\"学校\",\"areaCode\":[\"12\",\"1201\",\"120104\",\"120104002\"],\"areaCodes\":\"12,1201,120104,120104002,\",\"areas\":\"天津市 市辖区 南开区 鼓楼街道 \",\"defaults\":false,\"detailedAddress\":\"递四方速递\",\"email\":\"liuxianliangli@foxmail.com\",\"name\":\"彭浩\",\"phone\":\"15367885410\",\"userId\":\"7c9fdfa3177042a08766aed29e7de6cd\"},\"orderId\":\"1586166296110100059\",\"orderNote\":\"\",\"orderState\":2,\"paymentWay\":1,\"userId\":\"7c9fdfa3177042a08766aed29e7de6cd\"}', 4, '0', '确认订单消息', '2020-04-06 17:45:08', 0);
INSERT INTO `newsContent` VALUES (51, 4, '7c9fdfa3177042a08766aed29e7de6cd', '{\"deliveryTime\":1586426175564,\"deliveryWay\":1,\"id\":0,\"orderAddress\":{\"addressId\":157,\"alias\":\"学校\",\"areaCode\":[\"12\",\"1201\",\"120105\",\"120105002\"],\"areaCodes\":\"12,1201,120105,120105002,\",\"areas\":\"天津市 市辖区 河北区 望海楼街道 \",\"defaults\":true,\"detailedAddress\":\"速度还是大\",\"email\":\"liuxianliangli@foxmail.com\",\"name\":\"订单号\",\"phone\":\"15367885410\",\"userId\":\"7c9fdfa3177042a08766aed29e7de6cd\"},\"orderId\":\"1586166975029100060\",\"orderNote\":\"\",\"orderState\":2,\"paymentWay\":1,\"userId\":\"7c9fdfa3177042a08766aed29e7de6cd\"}', 4, '0', '确认订单消息', '2020-04-06 17:56:24', 0);
INSERT INTO `newsContent` VALUES (52, 4, 'f92b9f8f372e445fb6564cdd57aa3c3e', '{\"deliveryTime\":1586426254324,\"deliveryWay\":1,\"id\":0,\"orderAddress\":{\"addressId\":156,\"alias\":\"sad\",\"areaCode\":[\"11\",\"1101\",\"110101\",\"110101001\"],\"areaCodes\":\"11,1101,110101,110101001,\",\"areas\":\"北京市 市辖区 东城区 东华门街道 \",\"defaults\":false,\"detailedAddress\":\"asdsad\",\"email\":\"225252@qq.com\",\"name\":\"芳芳\",\"phone\":\"18598814121\",\"userId\":\"f92b9f8f372e445fb6564cdd57aa3c3e\"},\"orderId\":\"1586167053686100062\",\"orderNote\":\"\",\"orderState\":2,\"paymentWay\":1,\"userId\":\"f92b9f8f372e445fb6564cdd57aa3c3e\"}', 4, '0', '确认订单消息', '2020-04-06 17:57:51', 0);
INSERT INTO `newsContent` VALUES (53, 4, '7c9fdfa3177042a08766aed29e7de6cd', '{\"deliveryTime\":1586426503266,\"deliveryWay\":1,\"id\":0,\"orderAddress\":{\"addressId\":159,\"alias\":\"公司\",\"areaCode\":[\"13\",\"1302\",\"130204\",\"130204003\"],\"areaCodes\":\"13,1302,130204,130204003,\",\"areas\":\"河北省 唐山市 古冶区 古冶街道 \",\"defaults\":true,\"detailedAddress\":\"速度还是大\",\"email\":\"liuxianliangli@foxmail.com\",\"name\":\"递四方速递\",\"phone\":\"15367885410\",\"userId\":\"7c9fdfa3177042a08766aed29e7de6cd\"},\"orderId\":\"1586167280239100063\",\"orderNote\":\"\",\"orderState\":2,\"paymentWay\":1,\"userId\":\"7c9fdfa3177042a08766aed29e7de6cd\"}', 4, '0', '确认订单消息', '2020-04-06 18:01:53', 0);
INSERT INTO `newsContent` VALUES (54, 4, '7c9fdfa3177042a08766aed29e7de6cd', '{\"deliveryTime\":1586426541323,\"deliveryWay\":1,\"id\":0,\"orderAddress\":{\"addressId\":159,\"alias\":\"公司\",\"areaCode\":[\"13\",\"1302\",\"130204\",\"130204003\"],\"areaCodes\":\"13,1302,130204,130204003,\",\"areas\":\"河北省 唐山市 古冶区 古冶街道 \",\"defaults\":false,\"detailedAddress\":\"速度还是大\",\"email\":\"liuxianliangli@foxmail.com\",\"name\":\"递四方速递\",\"phone\":\"15367885410\",\"userId\":\"7c9fdfa3177042a08766aed29e7de6cd\"},\"orderId\":\"1586167341081100064\",\"orderNote\":\"\",\"orderState\":2,\"paymentWay\":1,\"userId\":\"7c9fdfa3177042a08766aed29e7de6cd\"}', 4, '0', '确认订单消息', '2020-04-06 18:02:32', 0);
INSERT INTO `newsContent` VALUES (55, 4, '7c9fdfa3177042a08766aed29e7de6cd', '{\"deliveryTime\":1586426580982,\"deliveryWay\":1,\"id\":0,\"orderAddress\":{\"addressId\":159,\"alias\":\"公司\",\"areaCode\":[\"13\",\"1302\",\"130204\",\"130204003\"],\"areaCodes\":\"13,1302,130204,130204003,\",\"areas\":\"河北省 唐山市 古冶区 古冶街道 \",\"defaults\":false,\"detailedAddress\":\"速度还是大\",\"email\":\"liuxianliangli@foxmail.com\",\"name\":\"递四方速递\",\"phone\":\"15367885410\",\"userId\":\"7c9fdfa3177042a08766aed29e7de6cd\"},\"orderId\":\"1586167380721100065\",\"orderNote\":\"\",\"orderState\":2,\"paymentWay\":1,\"userId\":\"7c9fdfa3177042a08766aed29e7de6cd\"}', 4, '0', '确认订单消息', '2020-04-06 18:03:15', 0);
INSERT INTO `newsContent` VALUES (56, 4, '7c9fdfa3177042a08766aed29e7de6cd', '{\"deliveryTime\":1586426628090,\"deliveryWay\":1,\"id\":0,\"orderAddress\":{\"addressId\":159,\"alias\":\"公司\",\"areaCode\":[\"13\",\"1302\",\"130204\",\"130204003\"],\"areaCodes\":\"13,1302,130204,130204003,\",\"areas\":\"河北省 唐山市 古冶区 古冶街道 \",\"defaults\":false,\"detailedAddress\":\"速度还是大\",\"email\":\"liuxianliangli@foxmail.com\",\"name\":\"递四方速递\",\"phone\":\"15367885410\",\"userId\":\"7c9fdfa3177042a08766aed29e7de6cd\"},\"orderId\":\"1586167427758100066\",\"orderNote\":\"\",\"orderState\":2,\"paymentWay\":1,\"userId\":\"7c9fdfa3177042a08766aed29e7de6cd\"}', 4, '0', '确认订单消息', '2020-04-06 18:03:58', 0);
INSERT INTO `newsContent` VALUES (57, 4, '7c9fdfa3177042a08766aed29e7de6cd', '{\"deliveryTime\":1586426755501,\"deliveryWay\":1,\"id\":0,\"orderAddress\":{\"addressId\":159,\"alias\":\"公司\",\"areaCode\":[\"13\",\"1302\",\"130204\",\"130204003\"],\"areaCodes\":\"13,1302,130204,130204003,\",\"areas\":\"河北省 唐山市 古冶区 古冶街道 \",\"defaults\":false,\"detailedAddress\":\"速度还是大\",\"email\":\"liuxianliangli@foxmail.com\",\"name\":\"递四方速递\",\"phone\":\"15367885410\",\"userId\":\"7c9fdfa3177042a08766aed29e7de6cd\"},\"orderId\":\"1586167555296100067\",\"orderNote\":\"\",\"orderState\":2,\"paymentWay\":1,\"userId\":\"7c9fdfa3177042a08766aed29e7de6cd\"}', 4, '0', '确认订单消息', '2020-04-06 18:06:10', 0);
INSERT INTO `newsContent` VALUES (58, 4, '7c9fdfa3177042a08766aed29e7de6cd', '{\"deliveryTime\":1586427496854,\"deliveryWay\":1,\"id\":0,\"orderAddress\":{\"addressId\":159,\"alias\":\"公司\",\"areaCode\":[\"13\",\"1302\",\"130204\",\"130204003\"],\"areaCodes\":\"13,1302,130204,130204003,\",\"areas\":\"河北省 唐山市 古冶区 古冶街道 \",\"defaults\":false,\"detailedAddress\":\"速度还是大\",\"email\":\"liuxianliangli@foxmail.com\",\"name\":\"递四方速递\",\"phone\":\"15367885410\",\"userId\":\"7c9fdfa3177042a08766aed29e7de6cd\"},\"orderId\":\"1586168296523100068\",\"orderNote\":\"\",\"orderState\":2,\"paymentWay\":1,\"userId\":\"7c9fdfa3177042a08766aed29e7de6cd\"}', 4, '0', '确认订单消息', '2020-04-06 18:18:26', 0);
INSERT INTO `newsContent` VALUES (59, 4, '7c9fdfa3177042a08766aed29e7de6cd', '{\"deliveryTime\":1586427607278,\"deliveryWay\":1,\"id\":0,\"orderAddress\":{\"addressId\":159,\"alias\":\"公司\",\"areaCode\":[\"13\",\"1302\",\"130204\",\"130204003\"],\"areaCodes\":\"13,1302,130204,130204003,\",\"areas\":\"河北省 唐山市 古冶区 古冶街道 \",\"defaults\":false,\"detailedAddress\":\"速度还是大\",\"email\":\"liuxianliangli@foxmail.com\",\"name\":\"递四方速递\",\"phone\":\"15367885410\",\"userId\":\"7c9fdfa3177042a08766aed29e7de6cd\"},\"orderId\":\"1586168406557100069\",\"orderNote\":\"\",\"orderState\":2,\"paymentWay\":1,\"userId\":\"7c9fdfa3177042a08766aed29e7de6cd\"}', 4, '0', '确认订单消息', '2020-04-06 18:20:24', 0);
INSERT INTO `newsContent` VALUES (60, 4, '7c9fdfa3177042a08766aed29e7de6cd', '{\"deliveryTime\":1586427646572,\"deliveryWay\":1,\"id\":0,\"orderAddress\":{\"addressId\":159,\"alias\":\"公司\",\"areaCode\":[\"13\",\"1302\",\"130204\",\"130204003\"],\"areaCodes\":\"13,1302,130204,130204003,\",\"areas\":\"河北省 唐山市 古冶区 古冶街道 \",\"defaults\":false,\"detailedAddress\":\"速度还是大\",\"email\":\"liuxianliangli@foxmail.com\",\"name\":\"递四方速递\",\"phone\":\"15367885410\",\"userId\":\"7c9fdfa3177042a08766aed29e7de6cd\"},\"orderId\":\"1586168446274100070\",\"orderNote\":\"\",\"orderState\":2,\"paymentWay\":1,\"userId\":\"7c9fdfa3177042a08766aed29e7de6cd\"}', 4, '0', '确认订单消息', '2020-04-06 18:20:55', 0);
INSERT INTO `newsContent` VALUES (61, 4, '7c9fdfa3177042a08766aed29e7de6cd', '{\"deliveryTime\":1586427691311,\"deliveryWay\":1,\"id\":0,\"orderAddress\":{\"addressId\":159,\"alias\":\"公司\",\"areaCode\":[\"13\",\"1302\",\"130204\",\"130204003\"],\"areaCodes\":\"13,1302,130204,130204003,\",\"areas\":\"河北省 唐山市 古冶区 古冶街道 \",\"defaults\":false,\"detailedAddress\":\"速度还是大\",\"email\":\"liuxianliangli@foxmail.com\",\"name\":\"递四方速递\",\"phone\":\"15367885410\",\"userId\":\"7c9fdfa3177042a08766aed29e7de6cd\"},\"orderId\":\"1586168490950100071\",\"orderNote\":\"\",\"orderState\":2,\"paymentWay\":1,\"userId\":\"7c9fdfa3177042a08766aed29e7de6cd\"}', 4, '0', '确认订单消息', '2020-04-06 18:21:40', 0);
INSERT INTO `newsContent` VALUES (62, 4, '7c9fdfa3177042a08766aed29e7de6cd', '{\"deliveryTime\":1586428699811,\"deliveryWay\":1,\"id\":0,\"orderAddress\":{\"addressId\":159,\"alias\":\"公司\",\"areaCode\":[\"13\",\"1302\",\"130204\",\"130204003\"],\"areaCodes\":\"13,1302,130204,130204003,\",\"areas\":\"河北省 唐山市 古冶区 古冶街道 \",\"defaults\":false,\"detailedAddress\":\"速度还是大\",\"email\":\"liuxianliangli@foxmail.com\",\"name\":\"递四方速递\",\"phone\":\"15367885410\",\"userId\":\"7c9fdfa3177042a08766aed29e7de6cd\"},\"orderId\":\"1586169499515100073\",\"orderNote\":\"\",\"orderState\":2,\"paymentWay\":1,\"userId\":\"7c9fdfa3177042a08766aed29e7de6cd\"}', 4, '0', '确认订单消息', '2020-04-06 18:38:32', 0);
INSERT INTO `newsContent` VALUES (63, 4, '7c9fdfa3177042a08766aed29e7de6cd', '{\"deliveryTime\":1586429685909,\"deliveryWay\":1,\"id\":0,\"orderAddress\":{\"addressId\":159,\"alias\":\"公司\",\"areaCode\":[\"13\",\"1302\",\"130204\",\"130204003\"],\"areaCodes\":\"13,1302,130204,130204003,\",\"areas\":\"河北省 唐山市 古冶区 古冶街道 \",\"defaults\":false,\"detailedAddress\":\"速度还是大\",\"email\":\"liuxianliangli@foxmail.com\",\"name\":\"递四方速递\",\"phone\":\"15367885410\",\"userId\":\"7c9fdfa3177042a08766aed29e7de6cd\"},\"orderId\":\"1586170485521100075\",\"orderNote\":\"\",\"orderState\":2,\"paymentWay\":1,\"userId\":\"7c9fdfa3177042a08766aed29e7de6cd\"}', 4, '0', '确认订单消息', '2020-04-06 18:56:50', 0);
INSERT INTO `newsContent` VALUES (64, 4, '7c9fdfa3177042a08766aed29e7de6cd', '{\"deliveryTime\":1586429828786,\"deliveryWay\":1,\"id\":0,\"orderAddress\":{\"addressId\":159,\"alias\":\"公司\",\"areaCode\":[\"13\",\"1302\",\"130204\",\"130204003\"],\"areaCodes\":\"13,1302,130204,130204003,\",\"areas\":\"河北省 唐山市 古冶区 古冶街道 \",\"defaults\":false,\"detailedAddress\":\"速度还是大\",\"email\":\"liuxianliangli@foxmail.com\",\"name\":\"递四方速递\",\"phone\":\"15367885410\",\"userId\":\"7c9fdfa3177042a08766aed29e7de6cd\"},\"orderId\":\"1586170628544100076\",\"orderNote\":\"\",\"orderState\":2,\"paymentWay\":1,\"userId\":\"7c9fdfa3177042a08766aed29e7de6cd\"}', 4, '0', '确认订单消息', '2020-04-06 18:57:15', 0);
INSERT INTO `newsContent` VALUES (65, 4, '7c9fdfa3177042a08766aed29e7de6cd', '{\"deliveryTime\":1586430696083,\"deliveryWay\":1,\"id\":0,\"orderAddress\":{\"addressId\":159,\"alias\":\"公司\",\"areaCode\":[\"13\",\"1302\",\"130204\",\"130204003\"],\"areaCodes\":\"13,1302,130204,130204003,\",\"areas\":\"河北省 唐山市 古冶区 古冶街道 \",\"defaults\":false,\"detailedAddress\":\"速度还是大\",\"email\":\"liuxianliangli@foxmail.com\",\"name\":\"递四方速递\",\"phone\":\"15367885410\",\"userId\":\"7c9fdfa3177042a08766aed29e7de6cd\"},\"orderId\":\"1586171242930100077\",\"orderNote\":\"\",\"orderState\":2,\"paymentWay\":1,\"productContents\":[{\"evaluate\":false,\"id\":618,\"orderId\":\"1586171242930100077\",\"productConfiguration\":\"奶茶味 \",\"productImage\":\"http://productdata.fhxasdsada.xyz/3531d2420f91d48177112641833bc7aa_2_3_photo.jpg\",\"productName\":\"三只松鼠芒果干 蜜饯果干芒果片休闲零食办公室小吃果脯水果干116g/袋\",\"productPrice\":20.0,\"productQuantity\":1,\"productWeight\":\"0.15kg\"}],\"userId\":\"7c9fdfa3177042a08766aed29e7de6cd\"}', 4, '0', '确认订单消息', '2020-04-06 19:12:24', 0);
INSERT INTO `newsContent` VALUES (66, 4, 'f92b9f8f372e445fb6564cdd57aa3c3e', '{\"deliveryTime\":1586430743893,\"deliveryWay\":1,\"id\":0,\"orderAddress\":{\"addressId\":156,\"alias\":\"sad\",\"areaCode\":[\"11\",\"1101\",\"110101\",\"110101001\"],\"areaCodes\":\"11,1101,110101,110101001,\",\"areas\":\"北京市 市辖区 东城区 东华门街道 \",\"defaults\":false,\"detailedAddress\":\"asdsad\",\"email\":\"225252@qq.com\",\"name\":\"芳芳\",\"phone\":\"18598814121\",\"userId\":\"f92b9f8f372e445fb6564cdd57aa3c3e\"},\"orderId\":\"1586171543535100079\",\"orderNote\":\"\",\"orderState\":2,\"paymentWay\":1,\"productContents\":[{\"evaluate\":false,\"id\":620,\"orderId\":\"1586171543535100079\",\"productConfiguration\":\"圣颜色 \",\"productImage\":\"\\r\\nhttp://productdata.fhxasdsada.xyz/8c0b0a13e48adce3.jpg\",\"productName\":\"阿玛尼（ Emporio Armani）满天星手表 女新款玫瑰金钢制表带镶钻石英轻奢女士腕表礼物 AR11244 \",\"productPrice\":3596.0,\"productQuantity\":1,\"productWeight\":\"\\r\\n0.485kg\"}],\"userId\":\"f92b9f8f372e445fb6564cdd57aa3c3e\"}', 4, '0', '确认订单消息', '2020-04-06 19:12:34', 0);
INSERT INTO `newsContent` VALUES (67, 4, '7c9fdfa3177042a08766aed29e7de6cd', '{\"deliveryTime\":1586430763774,\"deliveryWay\":1,\"id\":0,\"orderAddress\":{\"addressId\":159,\"alias\":\"公司\",\"areaCode\":[\"13\",\"1302\",\"130204\",\"130204003\"],\"areaCodes\":\"13,1302,130204,130204003,\",\"areas\":\"河北省 唐山市 古冶区 古冶街道 \",\"defaults\":false,\"detailedAddress\":\"速度还是大\",\"email\":\"liuxianliangli@foxmail.com\",\"name\":\"递四方速递\",\"phone\":\"15367885410\",\"userId\":\"7c9fdfa3177042a08766aed29e7de6cd\"},\"orderId\":\"1586171563622100080\",\"orderNote\":\"\",\"orderState\":2,\"paymentWay\":1,\"productContents\":[{\"evaluate\":false,\"id\":621,\"orderId\":\"1586171563622100080\",\"productConfiguration\":\"奶茶味 \",\"productImage\":\"http://productdata.fhxasdsada.xyz/3531d2420f91d48177112641833bc7aa_2_3_photo.jpg\",\"productName\":\"三只松鼠芒果干 蜜饯果干芒果片休闲零食办公室小吃果脯水果干116g/袋\",\"productPrice\":20.0,\"productQuantity\":1,\"productWeight\":\"0.15kg\"}],\"userId\":\"7c9fdfa3177042a08766aed29e7de6cd\"}', 4, '0', '确认订单消息', '2020-04-06 19:12:52', 0);
INSERT INTO `newsContent` VALUES (68, 4, '7c9fdfa3177042a08766aed29e7de6cd', '{\"deliveryTime\":1586431775077,\"deliveryWay\":1,\"id\":0,\"orderAddress\":{\"addressId\":159,\"alias\":\"公司\",\"areaCode\":[\"13\",\"1302\",\"130204\",\"130204003\"],\"areaCodes\":\"13,1302,130204,130204003,\",\"areas\":\"河北省 唐山市 古冶区 古冶街道 \",\"defaults\":false,\"detailedAddress\":\"速度还是大\",\"email\":\"liuxianliangli@foxmail.com\",\"name\":\"递四方速递\",\"phone\":\"15367885410\",\"userId\":\"7c9fdfa3177042a08766aed29e7de6cd\"},\"orderId\":\"1586172574431100081\",\"orderNote\":\"\",\"orderState\":2,\"paymentWay\":1,\"productContents\":[{\"evaluate\":false,\"id\":622,\"orderId\":\"1586172574431100081\",\"productConfiguration\":\"\",\"productImage\":\"http://productdata.fhxasdsada.xyz/9bf639975363fbb0.jpg\",\"productName\":\"Hot Toys 复仇者联盟3 无限战争 HOTTOYS 钢铁侠 模型玩具礼物 MK7 普通版\\r\\n\\r\\n\",\"productPrice\":3350.0,\"productQuantity\":1,\"productWeight\":\"5kg\"}],\"userId\":\"7c9fdfa3177042a08766aed29e7de6cd\"}', 4, '0', '确认订单消息', '2020-04-06 19:29:40', 0);
INSERT INTO `newsContent` VALUES (69, 4, '7c9fdfa3177042a08766aed29e7de6cd', '{\"deliveryTime\":1586432022421,\"deliveryWay\":1,\"id\":0,\"orderAddress\":{\"addressId\":159,\"alias\":\"公司\",\"areaCode\":[\"13\",\"1302\",\"130204\",\"130204003\"],\"areaCodes\":\"13,1302,130204,130204003,\",\"areas\":\"河北省 唐山市 古冶区 古冶街道 \",\"defaults\":false,\"detailedAddress\":\"速度还是大\",\"email\":\"liuxianliangli@foxmail.com\",\"name\":\"递四方速递\",\"phone\":\"15367885410\",\"userId\":\"7c9fdfa3177042a08766aed29e7de6cd\"},\"orderId\":\"1586172821690100082\",\"orderNote\":\"\",\"orderState\":2,\"paymentWay\":1,\"productContents\":[{\"evaluate\":false,\"id\":623,\"orderId\":\"1586172821690100082\",\"productConfiguration\":\"奶茶味 \",\"productImage\":\"http://productdata.fhxasdsada.xyz/3531d2420f91d48177112641833bc7aa_2_3_photo.jpg\",\"productName\":\"三只松鼠芒果干 蜜饯果干芒果片休闲零食办公室小吃果脯水果干116g/袋\",\"productPrice\":20.0,\"productQuantity\":1,\"productWeight\":\"0.15kg\"}],\"userId\":\"7c9fdfa3177042a08766aed29e7de6cd\"}', 4, '0', '确认订单消息', '2020-04-06 19:33:47', 0);
INSERT INTO `newsContent` VALUES (70, 4, '7c9fdfa3177042a08766aed29e7de6cd', '{\"deliveryTime\":1586432486958,\"deliveryWay\":1,\"id\":0,\"orderAddress\":{\"addressId\":159,\"alias\":\"公司\",\"areaCode\":[\"13\",\"1302\",\"130204\",\"130204003\"],\"areaCodes\":\"13,1302,130204,130204003,\",\"areas\":\"河北省 唐山市 古冶区 古冶街道 \",\"defaults\":false,\"detailedAddress\":\"速度还是大\",\"email\":\"liuxianliangli@foxmail.com\",\"name\":\"递四方速递\",\"phone\":\"15367885410\",\"userId\":\"7c9fdfa3177042a08766aed29e7de6cd\"},\"orderId\":\"1586173286242100083\",\"orderNote\":\"\",\"orderState\":2,\"paymentWay\":1,\"productContents\":[{\"evaluate\":false,\"id\":624,\"orderId\":\"1586173286242100083\",\"productConfiguration\":\"奶茶味 \",\"productImage\":\"http://productdata.fhxasdsada.xyz/3531d2420f91d48177112641833bc7aa_2_3_photo.jpg\",\"productName\":\"三只松鼠芒果干 蜜饯果干芒果片休闲零食办公室小吃果脯水果干116g/袋\",\"productPrice\":20.0,\"productQuantity\":1,\"productWeight\":\"0.15kg\"}],\"userId\":\"7c9fdfa3177042a08766aed29e7de6cd\"}', 4, '0', '确认订单消息', '2020-04-06 19:41:33', 0);
INSERT INTO `newsContent` VALUES (71, 4, '7c9fdfa3177042a08766aed29e7de6cd', '{\"deliveryTime\":1586432515780,\"deliveryWay\":1,\"id\":0,\"orderAddress\":{\"addressId\":159,\"alias\":\"公司\",\"areaCode\":[\"13\",\"1302\",\"130204\",\"130204003\"],\"areaCodes\":\"13,1302,130204,130204003,\",\"areas\":\"河北省 唐山市 古冶区 古冶街道 \",\"defaults\":false,\"detailedAddress\":\"速度还是大\",\"email\":\"liuxianliangli@foxmail.com\",\"name\":\"递四方速递\",\"phone\":\"15367885410\",\"userId\":\"7c9fdfa3177042a08766aed29e7de6cd\"},\"orderId\":\"1586173315556100084\",\"orderNote\":\"\",\"orderState\":2,\"paymentWay\":1,\"productContents\":[{\"evaluate\":false,\"id\":625,\"orderId\":\"1586173315556100084\",\"productConfiguration\":\"奶茶味 \",\"productImage\":\"http://productdata.fhxasdsada.xyz/3531d2420f91d48177112641833bc7aa_2_3_photo.jpg\",\"productName\":\"三只松鼠芒果干 蜜饯果干芒果片休闲零食办公室小吃果脯水果干116g/袋\",\"productPrice\":20.0,\"productQuantity\":1,\"productWeight\":\"0.15kg\"}],\"userId\":\"7c9fdfa3177042a08766aed29e7de6cd\"}', 4, '0', '确认订单消息', '2020-04-06 19:42:02', 0);
INSERT INTO `newsContent` VALUES (72, 4, '7c9fdfa3177042a08766aed29e7de6cd', '{\"deliveryTime\":1586432584651,\"deliveryWay\":1,\"id\":0,\"orderAddress\":{\"addressId\":159,\"alias\":\"公司\",\"areaCode\":[\"13\",\"1302\",\"130204\",\"130204003\"],\"areaCodes\":\"13,1302,130204,130204003,\",\"areas\":\"河北省 唐山市 古冶区 古冶街道 \",\"defaults\":false,\"detailedAddress\":\"速度还是大\",\"email\":\"liuxianliangli@foxmail.com\",\"name\":\"递四方速递\",\"phone\":\"15367885410\",\"userId\":\"7c9fdfa3177042a08766aed29e7de6cd\"},\"orderId\":\"1586173384206100085\",\"orderNote\":\"\",\"orderState\":2,\"paymentWay\":1,\"productContents\":[{\"evaluate\":false,\"id\":626,\"orderId\":\"1586173384206100085\",\"productConfiguration\":\"奶茶味 \",\"productImage\":\"http://productdata.fhxasdsada.xyz/3531d2420f91d48177112641833bc7aa_2_3_photo.jpg\",\"productName\":\"三只松鼠芒果干 蜜饯果干芒果片休闲零食办公室小吃果脯水果干116g/袋\",\"productPrice\":20.0,\"productQuantity\":1,\"productWeight\":\"0.15kg\"}],\"userId\":\"7c9fdfa3177042a08766aed29e7de6cd\"}', 4, '0', '确认订单消息', '2020-04-06 19:43:10', 0);
INSERT INTO `newsContent` VALUES (73, 4, 'f92b9f8f372e445fb6564cdd57aa3c3e', '{\"deliveryTime\":1586432597611,\"deliveryWay\":1,\"id\":0,\"orderAddress\":{\"addressId\":156,\"alias\":\"sad\",\"areaCode\":[\"11\",\"1101\",\"110101\",\"110101001\"],\"areaCodes\":\"11,1101,110101,110101001,\",\"areas\":\"北京市 市辖区 东城区 东华门街道 \",\"defaults\":false,\"detailedAddress\":\"asdsad\",\"email\":\"225252@qq.com\",\"name\":\"芳芳\",\"phone\":\"18598814121\",\"userId\":\"f92b9f8f372e445fb6564cdd57aa3c3e\"},\"orderId\":\"1586173397229100086\",\"orderNote\":\"\",\"orderState\":2,\"paymentWay\":1,\"productContents\":[{\"evaluate\":false,\"id\":627,\"orderId\":\"1586173397229100086\",\"productConfiguration\":\"黑色 \",\"productImage\":\"http://productdata.fhxasdsada.xyz/5b4d4cc8N0bf9c476.jpg\",\"productName\":\"骨伽（COUGAR） 电脑主机箱 台式机中塔式侧透征服者游戏定制水冷机箱 黑色\\r\\n\",\"productPrice\":2898.0,\"productQuantity\":1,\"productWeight\":\"2.8kg\"}],\"userId\":\"f92b9f8f372e445fb6564cdd57aa3c3e\"}', 4, '0', '确认订单消息', '2020-04-06 19:43:28', 0);
INSERT INTO `newsContent` VALUES (74, 4, 'f92b9f8f372e445fb6564cdd57aa3c3e', '{\"deliveryTime\":1586432837569,\"deliveryWay\":1,\"id\":0,\"orderAddress\":{\"addressId\":156,\"alias\":\"sad\",\"areaCode\":[\"11\",\"1101\",\"110101\",\"110101001\"],\"areaCodes\":\"11,1101,110101,110101001,\",\"areas\":\"北京市 市辖区 东城区 东华门街道 \",\"defaults\":false,\"detailedAddress\":\"asdsad\",\"email\":\"225252@qq.com\",\"name\":\"芳芳\",\"phone\":\"18598814121\",\"userId\":\"f92b9f8f372e445fb6564cdd57aa3c3e\"},\"orderId\":\"1586173636884100087\",\"orderNote\":\"\",\"orderState\":2,\"paymentWay\":1,\"productContents\":[{\"evaluate\":false,\"id\":628,\"orderId\":\"1586173636884100087\",\"productConfiguration\":\"玫瑰金 \",\"productImage\":\"\\r\\nhttp://productdata.fhxasdsada.xyz/2-SXJILMjHoQXj66aurkzg.jpg\",\"productName\":\"【二手95新】劳力士 系列:迪通拿系列 型号:116505 材质:18k玫瑰金 镜面:蓝宝石玻璃 未使用\",\"productPrice\":260000.0,\"productQuantity\":1,\"productWeight\":\"220克\"}],\"userId\":\"f92b9f8f372e445fb6564cdd57aa3c3e\"}', 4, '0', '确认订单消息', '2020-04-06 19:47:29', 0);
INSERT INTO `newsContent` VALUES (75, 4, '7c9fdfa3177042a08766aed29e7de6cd', '{\"deliveryTime\":1586432926131,\"deliveryWay\":1,\"id\":0,\"orderAddress\":{\"addressId\":159,\"alias\":\"公司\",\"areaCode\":[\"13\",\"1302\",\"130204\",\"130204003\"],\"areaCodes\":\"13,1302,130204,130204003,\",\"areas\":\"河北省 唐山市 古冶区 古冶街道 \",\"defaults\":false,\"detailedAddress\":\"速度还是大\",\"email\":\"liuxianliangli@foxmail.com\",\"name\":\"递四方速递\",\"phone\":\"15367885410\",\"userId\":\"7c9fdfa3177042a08766aed29e7de6cd\"},\"orderId\":\"1586173725783100088\",\"orderNote\":\"\",\"orderState\":2,\"paymentWay\":1,\"productContents\":[{\"evaluate\":false,\"id\":629,\"orderId\":\"1586173725783100088\",\"productConfiguration\":\"奶茶味 \",\"productImage\":\"http://productdata.fhxasdsada.xyz/3531d2420f91d48177112641833bc7aa_2_3_photo.jpg\",\"productName\":\"三只松鼠芒果干 蜜饯果干芒果片休闲零食办公室小吃果脯水果干116g/袋\",\"productPrice\":20.0,\"productQuantity\":1,\"productWeight\":\"0.15kg\"}],\"userId\":\"7c9fdfa3177042a08766aed29e7de6cd\"}', 4, '0', '确认订单消息', '2020-04-06 19:48:53', 0);
INSERT INTO `newsContent` VALUES (76, 4, 'f92b9f8f372e445fb6564cdd57aa3c3e', '{\"deliveryTime\":1586433727379,\"deliveryWay\":1,\"id\":0,\"orderAddress\":{\"addressId\":156,\"alias\":\"sad\",\"areaCode\":[\"11\",\"1101\",\"110101\",\"110101001\"],\"areaCodes\":\"11,1101,110101,110101001,\",\"areas\":\"北京市 市辖区 东城区 东华门街道 \",\"defaults\":false,\"detailedAddress\":\"asdsad\",\"email\":\"225252@qq.com\",\"name\":\"芳芳\",\"phone\":\"18598814121\",\"userId\":\"f92b9f8f372e445fb6564cdd57aa3c3e\"},\"orderId\":\"1586174526842100089\",\"orderNote\":\"\",\"orderState\":2,\"paymentWay\":1,\"productContents\":[{\"evaluate\":false,\"id\":630,\"orderId\":\"1586174526842100089\",\"productConfiguration\":\"棕黄色锈色 均码 \",\"productImage\":\"\\r\\nhttp://productdata.fhxasdsada.xyz/tuhaokuai_1583977278.jpg\",\"productName\":\"\\r\\nCOACH PARKER 16 女士山茶花装饰可斜挎双肩包\",\"productPrice\":1299.0,\"productQuantity\":1}],\"userId\":\"f92b9f8f372e445fb6564cdd57aa3c3e\"}', 4, '0', '确认订单消息', '2020-04-06 20:02:19', 0);
INSERT INTO `newsContent` VALUES (77, 4, '7c9fdfa3177042a08766aed29e7de6cd', '{\"deliveryTime\":1586433742310,\"deliveryWay\":1,\"id\":0,\"orderAddress\":{\"addressId\":159,\"alias\":\"公司\",\"areaCode\":[\"13\",\"1302\",\"130204\",\"130204003\"],\"areaCodes\":\"13,1302,130204,130204003,\",\"areas\":\"河北省 唐山市 古冶区 古冶街道 \",\"defaults\":false,\"detailedAddress\":\"速度还是大\",\"email\":\"liuxianliangli@foxmail.com\",\"name\":\"递四方速递\",\"phone\":\"15367885410\",\"userId\":\"7c9fdfa3177042a08766aed29e7de6cd\"},\"orderId\":\"1586174541819100090\",\"orderNote\":\"\",\"orderState\":2,\"paymentWay\":1,\"productContents\":[{\"evaluate\":false,\"id\":631,\"orderId\":\"1586174541819100090\",\"productConfiguration\":\"奶茶味 \",\"productImage\":\"http://productdata.fhxasdsada.xyz/3531d2420f91d48177112641833bc7aa_2_3_photo.jpg\",\"productName\":\"三只松鼠芒果干 蜜饯果干芒果片休闲零食办公室小吃果脯水果干116g/袋\",\"productPrice\":20.0,\"productQuantity\":1,\"productWeight\":\"0.15kg\"}],\"userId\":\"7c9fdfa3177042a08766aed29e7de6cd\"}', 4, '0', '确认订单消息', '2020-04-06 20:02:28', 0);
INSERT INTO `newsContent` VALUES (78, 4, '7c9fdfa3177042a08766aed29e7de6cd', '{\"deliveryTime\":1586433909230,\"deliveryWay\":1,\"id\":0,\"orderAddress\":{\"addressId\":159,\"alias\":\"公司\",\"areaCode\":[\"13\",\"1302\",\"130204\",\"130204003\"],\"areaCodes\":\"13,1302,130204,130204003,\",\"areas\":\"河北省 唐山市 古冶区 古冶街道 \",\"defaults\":false,\"detailedAddress\":\"速度还是大\",\"email\":\"liuxianliangli@foxmail.com\",\"name\":\"递四方速递\",\"phone\":\"15367885410\",\"userId\":\"7c9fdfa3177042a08766aed29e7de6cd\"},\"orderId\":\"1586174705113100091\",\"orderNote\":\"\",\"orderState\":2,\"paymentWay\":1,\"productContents\":[{\"evaluate\":false,\"id\":632,\"orderId\":\"1586174705113100091\",\"productConfiguration\":\"黑红十周年纪念版  \",\"productImage\":\"http://productdata.fhxasdsada.xyz/135638619666091357760161_x.jpg\",\"productName\":\"【假一赔十】beats solo3wireless 蓝牙耳机头戴式 米奇 游戏手机耳机 折叠式重低音 运动 玫瑰金\",\"productPrice\":773.0,\"productQuantity\":1},{\"evaluate\":false,\"id\":633,\"orderId\":\"1586174705113100091\",\"productConfiguration\":\"炫黑色 \",\"productImage\":\"http://productdata.fhxasdsada.xyz/135638619666091357760161_x.jpg\",\"productName\":\"【假一赔十】beats solo3wireless 蓝牙耳机头戴式 米奇 游戏手机耳机 折叠式重低音 运动 玫瑰金\",\"productPrice\":773.0,\"productQuantity\":1},{\"evaluate\":false,\"id\":634,\"orderId\":\"1586174705113100091\",\"productConfiguration\":\"玫瑰金  \",\"productImage\":\"http://productdata.fhxasdsada.xyz/135638619666091357760161_x.jpg\",\"productName\":\"【假一赔十】beats solo3wireless 蓝牙耳机头戴式 米奇 游戏手机耳机 折叠式重低音 运动 玫瑰金\",\"productPrice\":773.0,\"productQuantity\":3},{\"evaluate\":false,\"id\":635,\"orderId\":\"1586174705113100091\",\"productConfiguration\":\"学院蓝 \",\"productImage\":\"http://productdata.fhxasdsada.xyz/135638619666091357760161_x.jpg\",\"productName\":\"【假一赔十】beats solo3wireless 蓝牙耳机头戴式 米奇 游戏手机耳机 折叠式重低音 运动 玫瑰金\",\"productPrice\":773.0,\"productQuantity\":2},{\"evaluate\":false,\"id\":636,\"orderId\":\"1586174705113100091\",\"productConfiguration\":\"猪年限量版 90周年 \",\"productImage\":\"http://productdata.fhxasdsada.xyz/135638619666091357760161_x.jpg\",\"productName\":\"【假一赔十】beats solo3wireless 蓝牙耳机头戴式 米奇 游戏手机耳机 折叠式重低音 运动 玫瑰金\",\"productPrice\":773.0,\"productQuantity\":2},{\"evaluate\":false,\"id\":637,\"orderId\":\"1586174705113100091\",\"productConfiguration\":\" 学院黄 \",\"productImage\":\"http://productdata.fhxasdsada.xyz/135638619666091357760161_x.jpg\",\"productName\":\"【假一赔十】beats solo3wireless 蓝牙耳机头戴式 米奇 游戏手机耳机 折叠式重低音 运动 玫瑰金\",\"productPrice\":773.0,\"productQuantity\":2},{\"evaluate\":false,\"id\":638,\"orderId\":\"1586174705113100091\",\"productConfiguration\":\"学院红 \",\"productImage\":\"http://productdata.fhxasdsada.xyz/135638619666091357760161_x.jpg\",\"productName\":\"【假一赔十】beats solo3wireless 蓝牙耳机头戴式 米奇 游戏手机耳机 折叠式重低音 运动 玫瑰金\",\"productPrice\":773.0,\"productQuantity\":2},{\"evaluate\":false,\"id\":639,\"orderId\":\"1586174705113100091\",\"productConfiguration\":\"磨砂黑 \",\"productImage\":\"http://productdata.fhxasdsada.xyz/135638619666091357760161_x.jpg\",\"productName\":\"【假一赔十】beats solo3wireless 蓝牙耳机头戴式 米奇 游戏手机耳机 折叠式重低音 运动 玫瑰金\",\"productPrice\":773.0,\"productQuantity\":2},{\"evaluate\":false,\"id\":640,\"orderId\":\"1586174705113100091\",\"productConfiguration\":\" WLAN版256G  \",\"productImage\":\"http://productdata.fhxasdsada.xyz/7a77ad4e3100e885.jpg\",\"productName\":\"Apple iPad Pro 12.9英寸平板电脑 2018款(64G WLAN版/全面屏/A12X/FaceID MTEL2CH/A)深空灰\\r\\n\",\"productPrice\":7890.0,\"productQuantity\":2,\"productWeight\":\"2.8kg\"},{\"evaluate\":false,\"id\":641,\"orderId\":\"1586174705113100091\",\"productConfiguration\":\"Cellular版64G  \",\"productImage\":\"http://productdata.fhxasdsada.xyz/7a77ad4e3100e885.jpg\",\"productName\":\"Apple iPad Pro 12.9英寸平板电脑 2018款(64G WLAN版/全面屏/A12X/FaceID MTEL2CH/A)深空灰\\r\\n\",\"productPrice\":7890.0,\"productQuantity\":5,\"productWeight\":\"2.8kg\"},{\"evaluate\":false,\"id\":642,\"orderId\":\"1586174705113100091\",\"productConfiguration\":\"Cellular版512G  \",\"productImage\":\"http://productdata.fhxasdsada.xyz/7a77ad4e3100e885.jpg\",\"productName\":\"Apple iPad Pro 12.9英寸平板电脑 2018款(64G WLAN版/全面屏/A12X/FaceID MTEL2CH/A)深空灰\\r\\n\",\"productPrice\":7890.0,\"productQuantity\":2,\"productWeight\":\"2.8kg\"},{\"evaluate\":false,\"id\":643,\"orderId\":\"1586174705113100091\",\"productConfiguration\":\"Cellular版512G  \",\"productImage\":\"http://productdata.fhxasdsada.xyz/7a77ad4e3100e885.jpg\",\"productName\":\"Apple iPad Pro 12.9英寸平板电脑 2018款(64G WLAN版/全面屏/A12X/FaceID MTEL2CH/A)深空灰\\r\\n\",\"productPrice\":7890.0,\"productQuantity\":1,\"productWeight\":\"2.8kg\"},{\"evaluate\":false,\"id\":644,\"orderId\":\"1586174705113100091\",\"productConfiguration\":\"Cellular版256G \",\"productImage\":\"http://productdata.fhxasdsada.xyz/7a77ad4e3100e885.jpg\",\"productName\":\"Apple iPad Pro 12.9英寸平板电脑 2018款(64G WLAN版/全面屏/A12X/FaceID MTEL2CH/A)深空灰\\r\\n\",\"productPrice\":7890.0,\"productQuantity\":2,\"productWeight\":\"2.8kg\"},{\"evaluate\":false,\"id\":645,\"orderId\":\"1586174705113100091\",\"productConfiguration\":\"Cellular版1TB \",\"productImage\":\"http://productdata.fhxasdsada.xyz/7a77ad4e3100e885.jpg\",\"productName\":\"Apple iPad Pro 12.9英寸平板电脑 2018款(64G WLAN版/全面屏/A12X/FaceID MTEL2CH/A)深空灰\\r\\n\",\"productPrice\":7890.0,\"productQuantity\":3,\"productWeight\":\"2.8kg\"},{\"evaluate\":false,\"id\":646,\"orderId\":\"1586174705113100091\",\"productConfiguration\":\"Cellular版1TB \",\"productImage\":\"http://productdata.fhxasdsada.xyz/7a77ad4e3100e885.jpg\",\"productName\":\"Apple iPad Pro 12.9英寸平板电脑 2018款(64G WLAN版/全面屏/A12X/FaceID MTEL2CH/A)深空灰\\r\\n\",\"productPrice\":7890.0,\"productQuantity\":1,\"productWeight\":\"2.8kg\"},{\"evaluate\":false,\"id\":647,\"orderId\":\"1586174705113100091\",\"productConfiguration\":\"WLAN版64G \",\"productImage\":\"http://productdata.fhxasdsada.xyz/7a77ad4e3100e885.jpg\",\"productName\":\"Apple iPad Pro 12.9英寸平板电脑 2018款(64G WLAN版/全面屏/A12X/FaceID MTEL2CH/A)深空灰\\r\\n\",\"productPrice\":7890.0,\"productQuantity\":3,\"productWeight\":\"2.8kg\"},{\"evaluate\":false,\"id\":648,\"orderId\":\"1586174705113100091\",\"productConfiguration\":\"WLAN版64G \",\"productImage\":\"http://productdata.fhxasdsada.xyz/7a77ad4e3100e885.jpg\",\"productName\":\"Apple iPad Pro 12.9英寸平板电脑 2018款(64G WLAN版/全面屏/A12X/FaceID MTEL2CH/A)深空灰\\r\\n\",\"productPrice\":7890.0,\"productQuantity\":1,\"productWeight\":\"2.8kg\"},{\"evaluate\":false,\"id\":649,\"orderId\":\"1586174705113100091\",\"productConfiguration\":\"黄褐色 均码 \",\"productImage\":\"\\r\\nhttp://productdata.fhxasdsada.xyz/tuhaokuai_1583977278.jpg\",\"productName\":\"\\r\\nCOACH PARKER 16 女士山茶花装饰可斜挎双肩包\",\"productPrice\":1299.0,\"productQuantity\":1},{\"evaluate\":false,\"id\":650,\"orderId\":\"1586174705113100091\",\"productConfiguration\":\"黄褐色 均码 \",\"productImage\":\"\\r\\nhttp://productdata.fhxasdsada.xyz/tuhaokuai_1583977278.jpg\",\"productName\":\"\\r\\nCOACH PARKER 16 女士山茶花装饰可斜挎双肩包\",\"productPrice\":1299.0,\"productQuantity\":1},{\"evaluate\":false,\"id\":651,\"orderId\":\"1586174705113100091\",\"productConfiguration\":\"粉色 均码 \",\"productImage\":\"\\r\\nhttp://productdata.fhxasdsada.xyz/tuhaokuai_1583977278.jpg\",\"productName\":\"\\r\\nCOACH PARKER 16 女士山茶花装饰可斜挎双肩包\",\"productPrice\":1299.0,\"productQuantity\":2},{\"evaluate\":false,\"id\":652,\"orderId\":\"1586174705113100091\",\"productConfiguration\":\"棕黄色锈色 均码 \",\"productImage\":\"\\r\\nhttp://productdata.fhxasdsada.xyz/tuhaokuai_1583977278.jpg\",\"productName\":\"\\r\\nCOACH PARKER 16 女士山茶花装饰可斜挎双肩包\",\"productPrice\":1299.0,\"productQuantity\":3},{\"evaluate\":false,\"id\":653,\"orderId\":\"1586174705113100091\",\"productConfiguration\":\"棕黄色锈色 均码 \",\"productImage\":\"\\r\\nhttp://productdata.fhxasdsada.xyz/tuhaokuai_1583977278.jpg\",\"productName\":\"\\r\\nCOACH PARKER 16 女士山茶花装饰可斜挎双肩包\",\"productPrice\":1299.0,\"productQuantity\":1},{\"evaluate\":false,\"id\":654,\"orderId\":\"1586174705113100091\",\"productConfiguration\":\"茉莉味 \",\"productImage\":\"http://productdata.fhxasdsada.xyz/3531d2420f91d48177112641833bc7aa_2_3_photo.jpg\",\"productName\":\"三只松鼠芒果干 蜜饯果干芒果片休闲零食办公室小吃果脯水果干116g/袋\",\"productPrice\":20.0,\"productQuantity\":1,\"productWeight\":\"0.15kg\"},{\"evaluate\":false,\"id\":655,\"orderId\":\"1586174705113100091\",\"productConfiguration\":\"茉莉味 \",\"productImage\":\"http://productdata.fhxasdsada.xyz/3531d2420f91d48177112641833bc7aa_2_3_photo.jpg\",\"productName\":\"三只松鼠芒果干 蜜饯果干芒果片休闲零食办公室小吃果脯水果干116g/袋\",\"productPrice\":20.0,\"productQuantity\":1,\"productWeight\":\"0.15kg\"},{\"evaluate\":false,\"id\":656,\"orderId\":\"1586174705113100091\",\"productConfiguration\":\"香蕉味 \",\"productImage\":\"http://productdata.fhxasdsada.xyz/3531d2420f91d48177112641833bc7aa_2_3_photo.jpg\",\"productName\":\"三只松鼠芒果干 蜜饯果干芒果片休闲零食办公室小吃果脯水果干116g/袋\",\"productPrice\":20.0,\"productQuantity\":2,\"productWeight\":\"0.15kg\"},{\"evaluate\":false,\"id\":657,\"orderId\":\"1586174705113100091\",\"productConfiguration\":\"苹果味 \",\"productImage\":\"http://productdata.fhxasdsada.xyz/3531d2420f91d48177112641833bc7aa_2_3_photo.jpg\",\"productName\":\"三只松鼠芒果干 蜜饯果干芒果片休闲零食办公室小吃果脯水果干116g/袋\",\"productPrice\":20.0,\"productQuantity\":1,\"productWeight\":\"0.15kg\"},{\"evaluate\":false,\"id\":658,\"orderId\":\"1586174705113100091\",\"productConfiguration\":\"苹果味 \",\"productImage\":\"http://productdata.fhxasdsada.xyz/3531d2420f91d48177112641833bc7aa_2_3_photo.jpg\",\"productName\":\"三只松鼠芒果干 蜜饯果干芒果片休闲零食办公室小吃果脯水果干116g/袋\",\"productPrice\":20.0,\"productQuantity\":1,\"productWeight\":\"0.15kg\"},{\"evaluate\":false,\"id\":659,\"orderId\":\"1586174705113100091\",\"productConfiguration\":\"奶油味 \",\"productImage\":\"http://productdata.fhxasdsada.xyz/3531d2420f91d48177112641833bc7aa_2_3_photo.jpg\",\"productName\":\"三只松鼠芒果干 蜜饯果干芒果片休闲零食办公室小吃果脯水果干116g/袋\",\"productPrice\":20.0,\"productQuantity\":2,\"productWeight\":\"0.15kg\"},{\"evaluate\":false,\"id\":660,\"orderId\":\"1586174705113100091\",\"productConfiguration\":\"奶茶味 \",\"productImage\":\"http://productdata.fhxasdsada.xyz/3531d2420f91d48177112641833bc7aa_2_3_photo.jpg\",\"productName\":\"三只松鼠芒果干 蜜饯果干芒果片休闲零食办公室小吃果脯水果干116g/袋\",\"productPrice\":20.0,\"productQuantity\":8,\"productWeight\":\"0.15kg\"},{\"evaluate\":false,\"id\":661,\"orderId\":\"1586174705113100091\",\"productConfiguration\":\"奶茶味 \",\"productImage\":\"http://productdata.fhxasdsada.xyz/3531d2420f91d48177112641833bc7aa_2_3_photo.jpg\",\"productName\":\"三只松鼠芒果干 蜜饯果干芒果片休闲零食办公室小吃果脯水果干116g/袋\",\"productPrice\":20.0,\"productQuantity\":2,\"productWeight\":\"0.15kg\"}],\"userId\":\"7c9fdfa3177042a08766aed29e7de6cd\"}', 4, '0', '确认订单消息', '2020-04-06 20:09:09', 0);
INSERT INTO `newsContent` VALUES (79, 4, '7c9fdfa3177042a08766aed29e7de6cd', '{\"deliveryTime\":1586434718028,\"deliveryWay\":1,\"id\":0,\"orderAddress\":{\"addressId\":160,\"alias\":\"学校\",\"areaCode\":[\"13\",\"1302\",\"130205\",\"130205002\"],\"areaCodes\":\"13,1302,130205,130205002,\",\"areas\":\"河北省 唐山市 开平区 开平街道 \",\"defaults\":false,\"detailedAddress\":\"速度还是大\",\"email\":\"liuxianliangli@foxmail.com\",\"name\":\"速度还是大\",\"phone\":\"15367885410\",\"userId\":\"7c9fdfa3177042a08766aed29e7de6cd\"},\"orderId\":\"1586175514198100093\",\"orderNote\":\"\",\"orderState\":2,\"paymentWay\":1,\"productContents\":[{\"evaluate\":false,\"id\":759,\"orderId\":\"1586175514198100093\",\"productConfiguration\":\"标准白有刻? \",\"productImage\":\"http://productdata.fhxasdsada.xyz/AD8JQ6Q0jfeySzdxAVglqw.jpg\",\"productName\":\"HHKB Professional BT 蓝牙版黑无刻静电容键盘 程序员码农专用便携迷你键盘 编程适用\",\"productPrice\":2188.0,\"productQuantity\":1},{\"evaluate\":false,\"id\":760,\"orderId\":\"1586175514198100093\",\"productConfiguration\":\"标准白有刻? \",\"productImage\":\"http://productdata.fhxasdsada.xyz/AD8JQ6Q0jfeySzdxAVglqw.jpg\",\"productName\":\"HHKB Professional BT 蓝牙版黑无刻静电容键盘 程序员码农专用便携迷你键盘 编程适用\",\"productPrice\":2188.0,\"productQuantity\":1},{\"evaluate\":false,\"id\":761,\"orderId\":\"1586175514198100093\",\"productConfiguration\":\"标准白有刻? \",\"productImage\":\"http://productdata.fhxasdsada.xyz/AD8JQ6Q0jfeySzdxAVglqw.jpg\",\"productName\":\"HHKB Professional BT 蓝牙版黑无刻静电容键盘 程序员码农专用便携迷你键盘 编程适用\",\"productPrice\":2188.0,\"productQuantity\":1},{\"evaluate\":false,\"id\":762,\"orderId\":\"1586175514198100093\",\"productConfiguration\":\"标准白有刻? \",\"productImage\":\"http://productdata.fhxasdsada.xyz/AD8JQ6Q0jfeySzdxAVglqw.jpg\",\"productName\":\"HHKB Professional BT 蓝牙版黑无刻静电容键盘 程序员码农专用便携迷你键盘 编程适用\",\"productPrice\":2188.0,\"productQuantity\":1},{\"evaluate\":false,\"id\":763,\"orderId\":\"1586175514198100093\",\"productConfiguration\":\"标准白有刻? \",\"productImage\":\"http://productdata.fhxasdsada.xyz/AD8JQ6Q0jfeySzdxAVglqw.jpg\",\"productName\":\"HHKB Professional BT 蓝牙版黑无刻静电容键盘 程序员码农专用便携迷你键盘 编程适用\",\"productPrice\":2188.0,\"productQuantity\":1},{\"evaluate\":false,\"id\":764,\"orderId\":\"1586175514198100093\",\"productConfiguration\":\"标准白有刻? \",\"productImage\":\"http://productdata.fhxasdsada.xyz/AD8JQ6Q0jfeySzdxAVglqw.jpg\",\"productName\":\"HHKB Professional BT 蓝牙版黑无刻静电容键盘 程序员码农专用便携迷你键盘 编程适用\",\"productPrice\":2188.0,\"productQuantity\":1},{\"evaluate\":false,\"id\":765,\"orderId\":\"1586175514198100093\",\"productConfiguration\":\"标准白有刻? \",\"productImage\":\"http://productdata.fhxasdsada.xyz/AD8JQ6Q0jfeySzdxAVglqw.jpg\",\"productName\":\"HHKB Professional BT 蓝牙版黑无刻静电容键盘 程序员码农专用便携迷你键盘 编程适用\",\"productPrice\":2188.0,\"productQuantity\":1},{\"evaluate\":false,\"id\":766,\"orderId\":\"1586175514198100093\",\"productConfiguration\":\"标准白有刻? \",\"productImage\":\"http://productdata.fhxasdsada.xyz/AD8JQ6Q0jfeySzdxAVglqw.jpg\",\"productName\":\"HHKB Professional BT 蓝牙版黑无刻静电容键盘 程序员码农专用便携迷你键盘 编程适用\",\"productPrice\":2188.0,\"productQuantity\":1},{\"evaluate\":false,\"id\":767,\"orderId\":\"1586175514198100093\",\"productConfiguration\":\"标准白有刻? \",\"productImage\":\"http://productdata.fhxasdsada.xyz/AD8JQ6Q0jfeySzdxAVglqw.jpg\",\"productName\":\"HHKB Professional BT 蓝牙版黑无刻静电容键盘 程序员码农专用便携迷你键盘 编程适用\",\"productPrice\":2188.0,\"productQuantity\":1},{\"evaluate\":false,\"id\":768,\"orderId\":\"1586175514198100093\",\"productConfiguration\":\"标准白有刻? \",\"productImage\":\"http://productdata.fhxasdsada.xyz/AD8JQ6Q0jfeySzdxAVglqw.jpg\",\"productName\":\"HHKB Professional BT 蓝牙版黑无刻静电容键盘 程序员码农专用便携迷你键盘 编程适用\",\"productPrice\":2188.0,\"productQuantity\":1},{\"evaluate\":false,\"id\":769,\"orderId\":\"1586175514198100093\",\"productConfiguration\":\"标准白有刻? \",\"productImage\":\"http://productdata.fhxasdsada.xyz/AD8JQ6Q0jfeySzdxAVglqw.jpg\",\"productName\":\"HHKB Professional BT 蓝牙版黑无刻静电容键盘 程序员码农专用便携迷你键盘 编程适用\",\"productPrice\":2188.0,\"productQuantity\":1},{\"evaluate\":false,\"id\":770,\"orderId\":\"1586175514198100093\",\"productConfiguration\":\"标准白有刻? \",\"productImage\":\"http://productdata.fhxasdsada.xyz/AD8JQ6Q0jfeySzdxAVglqw.jpg\",\"productName\":\"HHKB Professional BT 蓝牙版黑无刻静电容键盘 程序员码农专用便携迷你键盘 编程适用\",\"productPrice\":2188.0,\"productQuantity\":1},{\"evaluate\":false,\"id\":771,\"orderId\":\"1586175514198100093\",\"productConfiguration\":\"标准白有刻? \",\"productImage\":\"http://productdata.fhxasdsada.xyz/AD8JQ6Q0jfeySzdxAVglqw.jpg\",\"productName\":\"HHKB Professional BT 蓝牙版黑无刻静电容键盘 程序员码农专用便携迷你键盘 编程适用\",\"productPrice\":2188.0,\"productQuantity\":1},{\"evaluate\":false,\"id\":772,\"orderId\":\"1586175514198100093\",\"productConfiguration\":\"标准白有刻? \",\"productImage\":\"http://productdata.fhxasdsada.xyz/AD8JQ6Q0jfeySzdxAVglqw.jpg\",\"productName\":\"HHKB Professional BT 蓝牙版黑无刻静电容键盘 程序员码农专用便携迷你键盘 编程适用\",\"productPrice\":2188.0,\"productQuantity\":1},{\"evaluate\":false,\"id\":773,\"orderId\":\"1586175514198100093\",\"productConfiguration\":\"标准白有刻? \",\"productImage\":\"http://productdata.fhxasdsada.xyz/AD8JQ6Q0jfeySzdxAVglqw.jpg\",\"productName\":\"HHKB Professional BT 蓝牙版黑无刻静电容键盘 程序员码农专用便携迷你键盘 编程适用\",\"productPrice\":2188.0,\"productQuantity\":1},{\"evaluate\":false,\"id\":774,\"orderId\":\"1586175514198100093\",\"productConfiguration\":\"标准白有刻? \",\"productImage\":\"http://productdata.fhxasdsada.xyz/AD8JQ6Q0jfeySzdxAVglqw.jpg\",\"productName\":\"HHKB Professional BT 蓝牙版黑无刻静电容键盘 程序员码农专用便携迷你键盘 编程适用\",\"productPrice\":2188.0,\"productQuantity\":1},{\"evaluate\":false,\"id\":775,\"orderId\":\"1586175514198100093\",\"productConfiguration\":\"标准白有刻? \",\"productImage\":\"http://productdata.fhxasdsada.xyz/AD8JQ6Q0jfeySzdxAVglqw.jpg\",\"productName\":\"HHKB Professional BT 蓝牙版黑无刻静电容键盘 程序员码农专用便携迷你键盘 编程适用\",\"productPrice\":2188.0,\"productQuantity\":1},{\"evaluate\":false,\"id\":776,\"orderId\":\"1586175514198100093\",\"productConfiguration\":\"标准白有刻? \",\"productImage\":\"http://productdata.fhxasdsada.xyz/AD8JQ6Q0jfeySzdxAVglqw.jpg\",\"productName\":\"HHKB Professional BT 蓝牙版黑无刻静电容键盘 程序员码农专用便携迷你键盘 编程适用\",\"productPrice\":2188.0,\"productQuantity\":1},{\"evaluate\":false,\"id\":777,\"orderId\":\"1586175514198100093\",\"productConfiguration\":\"标准白有刻? \",\"productImage\":\"http://productdata.fhxasdsada.xyz/AD8JQ6Q0jfeySzdxAVglqw.jpg\",\"productName\":\"HHKB Professional BT 蓝牙版黑无刻静电容键盘 程序员码农专用便携迷你键盘 编程适用\",\"productPrice\":2188.0,\"productQuantity\":1},{\"evaluate\":false,\"id\":778,\"orderId\":\"1586175514198100093\",\"productConfiguration\":\"标准白有刻? \",\"productImage\":\"http://productdata.fhxasdsada.xyz/AD8JQ6Q0jfeySzdxAVglqw.jpg\",\"productName\":\"HHKB Professional BT 蓝牙版黑无刻静电容键盘 程序员码农专用便携迷你键盘 编程适用\",\"productPrice\":2188.0,\"productQuantity\":1},{\"evaluate\":false,\"id\":779,\"orderId\":\"1586175514198100093\",\"productConfiguration\":\"标准白有刻? \",\"productImage\":\"http://productdata.fhxasdsada.xyz/AD8JQ6Q0jfeySzdxAVglqw.jpg\",\"productName\":\"HHKB Professional BT 蓝牙版黑无刻静电容键盘 程序员码农专用便携迷你键盘 编程适用\",\"productPrice\":2188.0,\"productQuantity\":1},{\"evaluate\":false,\"id\":780,\"orderId\":\"1586175514198100093\",\"productConfiguration\":\"标准白有刻? \",\"productImage\":\"http://productdata.fhxasdsada.xyz/AD8JQ6Q0jfeySzdxAVglqw.jpg\",\"productName\":\"HHKB Professional BT 蓝牙版黑无刻静电容键盘 程序员码农专用便携迷你键盘 编程适用\",\"productPrice\":2188.0,\"productQuantity\":1},{\"evaluate\":false,\"id\":781,\"orderId\":\"1586175514198100093\",\"productConfiguration\":\"标准白有刻? \",\"productImage\":\"http://productdata.fhxasdsada.xyz/AD8JQ6Q0jfeySzdxAVglqw.jpg\",\"productName\":\"HHKB Professional BT 蓝牙版黑无刻静电容键盘 程序员码农专用便携迷你键盘 编程适用\",\"productPrice\":2188.0,\"productQuantity\":1}],\"userId\":\"7c9fdfa3177042a08766aed29e7de6cd\"}', 4, '0', '确认订单消息', '2020-04-06 20:18:50', 0);
INSERT INTO `newsContent` VALUES (80, 4, 'f92b9f8f372e445fb6564cdd57aa3c3e', '{\"deliveryTime\":1586436556874,\"deliveryWay\":1,\"id\":0,\"orderAddress\":{\"addressId\":150,\"alias\":\"ad\",\"areaCode\":[\"12\",\"1201\",\"120101\",\"120101001\"],\"areaCodes\":\"12,1201,120101,120101001,\",\"areas\":\"天津市 市辖区 和平区 劝业场街道 \",\"defaults\":true,\"detailedAddress\":\"d156\",\"email\":\"2252@qq.com\",\"name\":\"ff\",\"phone\":\"18598814121\",\"userId\":\"f92b9f8f372e445fb6564cdd57aa3c3e\"},\"orderId\":\"1586177356476100006\",\"orderNote\":\"\",\"orderState\":2,\"paymentWay\":1,\"productContents\":[{\"evaluate\":false,\"id\":1388,\"orderId\":\"1586177356476100006\",\"productConfiguration\":\"黑色 \",\"productImage\":\"http://productdata.fhxasdsada.xyz/2ca45e2fd9758794.jpg\",\"productName\":\" 索尼（SONY）WF-1000XM3 真无线蓝牙降噪耳机 智能降噪 触控面板 苹果/安卓手机适用 黑色\\r\\n\",\"productPrice\":1499.0,\"productQuantity\":1,\"productWeight\":\"0.6kg\"}],\"userId\":\"f92b9f8f372e445fb6564cdd57aa3c3e\"}', 4, '0', '确认订单消息', '2020-04-06 20:49:33', 0);

-- ----------------------------
-- Table structure for newsSender
-- ----------------------------
DROP TABLE IF EXISTS `newsSender`;
CREATE TABLE `newsSender`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `SenderId` int(11) NULL DEFAULT NULL,
  `senderName` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `senderAvatar` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of newsSender
-- ----------------------------
INSERT INTO `newsSender` VALUES (1, 1, '微利官方', ' http://img.fhxasdsada.xyz/7c9fdfa3177042a08766aed29e7de6cd?t=1585021695781');
INSERT INTO `newsSender` VALUES (2, 2, '微利助手', 'http://img.fhxasdsada.xyz//000000001312c10c0000000002255f0a?t=1578145613938');
INSERT INTO `newsSender` VALUES (3, 3, '微利支付', 'http://img.fhxasdsada.xyz//000000001312c10c0000000002255f0a?t=1578145613938');
INSERT INTO `newsSender` VALUES (4, 4, '订单助手', 'http://img.fhxasdsada.xyz//000000001312c10c0000000002255f0a?t=1578145613938');

-- ----------------------------
-- Table structure for orderAddress
-- ----------------------------
DROP TABLE IF EXISTS `orderAddress`;
CREATE TABLE `orderAddress`  (
  `userId` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `orderId` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `areas` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `detailedAddress` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `phone` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `email` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `areaCodes` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of orderAddress
-- ----------------------------
INSERT INTO `orderAddress` VALUES ('f92b9f8f372e445fb6564cdd57aa3c3e', '1586082791315100040', '1', '天津市 市辖区 和平区 劝业场街道 ', 'asdcas', '15456468456', '2@qq.com', '12,1201,120101,120101001,', '公司');
INSERT INTO `orderAddress` VALUES ('f92b9f8f372e445fb6564cdd57aa3c3e', '1586085322645100044', 'ff', '天津市 市辖区 和平区 劝业场街道 ', 'asdas', '18598814125', '2252@qq.com', '12,1201,120101,120101001,', 'sad');
INSERT INTO `orderAddress` VALUES ('f92b9f8f372e445fb6564cdd57aa3c3e', '1586138649967100009', '小芳', '天津市 市辖区 和平区 劝业场街道 ', 'adas', '18598814121', '2252821162@qq.com', '12,1201,120101,120101001,', 'asd');
INSERT INTO `orderAddress` VALUES ('f92b9f8f372e445fb6564cdd57aa3c3e', '1586139254064100012', '小芳', '天津市 市辖区 和平区 劝业场街道 ', 'adas', '18598814121', '2252821162@qq.com', '12,1201,120101,120101001,', 'asd');
INSERT INTO `orderAddress` VALUES ('f92b9f8f372e445fb6564cdd57aa3c3e', '1586139609122100013', '小芳', '天津市 市辖区 和平区 劝业场街道 ', 'adas', '18598814121', '2252821162@qq.com', '12,1201,120101,120101001,', 'asd');
INSERT INTO `orderAddress` VALUES ('f92b9f8f372e445fb6564cdd57aa3c3e', '1586139703810100014', '小芳', '天津市 市辖区 和平区 劝业场街道 ', 'adas', '18598814121', '2252821162@qq.com', '12,1201,120101,120101001,', 'asd');
INSERT INTO `orderAddress` VALUES ('f92b9f8f372e445fb6564cdd57aa3c3e', '1586139783410100015', '小芳', '天津市 市辖区 和平区 劝业场街道 ', 'adas', '18598814121', '2252821162@qq.com', '12,1201,120101,120101001,', 'asd');
INSERT INTO `orderAddress` VALUES ('f92b9f8f372e445fb6564cdd57aa3c3e', '1586140418234100016', '小芳', '天津市 市辖区 和平区 劝业场街道 ', 'adas', '18598814121', '2252821162@qq.com', '12,1201,120101,120101001,', 'asd');
INSERT INTO `orderAddress` VALUES ('f92b9f8f372e445fb6564cdd57aa3c3e', '1586140418234100016', '小芳', '天津市 市辖区 和平区 劝业场街道 ', 'adas', '18598814121', '2252821162@qq.com', '12,1201,120101,120101001,', 'asd');
INSERT INTO `orderAddress` VALUES ('f92b9f8f372e445fb6564cdd57aa3c3e', '1586141783850100017', '小芳', '天津市 市辖区 和平区 劝业场街道 ', 'adas', '18598814121', '2252821162@qq.com', '12,1201,120101,120101001,', 'asd');
INSERT INTO `orderAddress` VALUES ('f92b9f8f372e445fb6564cdd57aa3c3e', '1586142182982100019', '芳芳', '北京市 市辖区 东城区 东华门街道 ', 'sadasdasd', '18599988525', '2252821162@qq.com', '11,1101,110101,110101001,', '闺蜜家');
INSERT INTO `orderAddress` VALUES ('f92b9f8f372e445fb6564cdd57aa3c3e', '1586142687221100022', 'ff', '天津市 市辖区 和平区 劝业场街道 ', 'd156', '18598814121', '2252@qq.com', '12,1201,120101,120101001,', 'ad');
INSERT INTO `orderAddress` VALUES ('f92b9f8f372e445fb6564cdd57aa3c3e', '1586159078589100034', 'faf', '山西省 大同市 平城区 南关街道 ', 'asdas', '18598855555', '2252@qq.com', '14,1402,140213,140213001,', 'dsa');
INSERT INTO `orderAddress` VALUES ('f92b9f8f372e445fb6564cdd57aa3c3e', '1586162332511100038', 'ff', '天津市 市辖区 和平区 劝业场街道 ', 'd156', '18598814121', '2252@qq.com', '12,1201,120101,120101001,', 'ad');
INSERT INTO `orderAddress` VALUES ('f92b9f8f372e445fb6564cdd57aa3c3e', '1586162727108100039', 'faf', '山西省 大同市 平城区 南关街道 ', 'asdas', '18598855555', '2252@qq.com', '14,1402,140213,140213001,', 'dsa');
INSERT INTO `orderAddress` VALUES ('f92b9f8f372e445fb6564cdd57aa3c3e', '1586163062257100040', 'ff', '天津市 市辖区 和平区 劝业场街道 ', 'd156', '18598814121', '2252@qq.com', '12,1201,120101,120101001,', 'ad');
INSERT INTO `orderAddress` VALUES ('f92b9f8f372e445fb6564cdd57aa3c3e', '1586163092851100041', 'faf', '山西省 大同市 平城区 南关街道 ', 'asdas', '18598855555', '2252@qq.com', '14,1402,140213,140213001,', 'dsa');
INSERT INTO `orderAddress` VALUES ('f92b9f8f372e445fb6564cdd57aa3c3e', '1586165357456100051', 'faf', '山西省 大同市 平城区 南关街道 ', 'asdas', '18598855555', '2252@qq.com', '14,1402,140213,140213001,', 'dsa');
INSERT INTO `orderAddress` VALUES ('7c9fdfa3177042a08766aed29e7de6cd', '1586165775279100053', '三大法师', '山西省 大同市 云州区 西坪镇 ', '速度还是大', '15367885410', 'liuxianliangli@foxmail.com', '14,1402,140215,140215100,', '速度还是大');
INSERT INTO `orderAddress` VALUES ('f92b9f8f372e445fb6564cdd57aa3c3e', '1586166018805100056', 'ff', '天津市 市辖区 和平区 劝业场街道 ', 'd156', '18598814121', '2252@qq.com', '12,1201,120101,120101001,', 'ad');
INSERT INTO `orderAddress` VALUES ('7c9fdfa3177042a08766aed29e7de6cd', '1586166016559100055', '三大法师', '山西省 大同市 云州区 西坪镇 ', '速度还是大', '15367885410', 'liuxianliangli@foxmail.com', '14,1402,140215,140215100,', '速度还是大');
INSERT INTO `orderAddress` VALUES ('7c9fdfa3177042a08766aed29e7de6cd', '1586166138991100057', '三大法师', '山西省 大同市 云州区 西坪镇 ', '速度还是大', '15367885410', 'liuxianliangli@foxmail.com', '14,1402,140215,140215100,', '速度还是大');
INSERT INTO `orderAddress` VALUES ('7c9fdfa3177042a08766aed29e7de6cd', '1586166257712100058', '彭浩', '天津市 市辖区 南开区 鼓楼街道 ', '递四方速递', '15367885410', 'liuxianliangli@foxmail.com', '12,1201,120104,120104002,', '学校');
INSERT INTO `orderAddress` VALUES ('7c9fdfa3177042a08766aed29e7de6cd', '1586166296110100059', '彭浩', '天津市 市辖区 南开区 鼓楼街道 ', '递四方速递', '15367885410', 'liuxianliangli@foxmail.com', '12,1201,120104,120104002,', '学校');
INSERT INTO `orderAddress` VALUES ('7c9fdfa3177042a08766aed29e7de6cd', '1586166975029100060', '订单号', '天津市 市辖区 河北区 望海楼街道 ', '速度还是大', '15367885410', 'liuxianliangli@foxmail.com', '12,1201,120105,120105002,', '学校');
INSERT INTO `orderAddress` VALUES ('f92b9f8f372e445fb6564cdd57aa3c3e', '1586167053686100062', '芳芳', '北京市 市辖区 东城区 东华门街道 ', 'asdsad', '18598814121', '225252@qq.com', '11,1101,110101,110101001,', 'sad');
INSERT INTO `orderAddress` VALUES ('7c9fdfa3177042a08766aed29e7de6cd', '1586167280239100063', '递四方速递', '河北省 唐山市 古冶区 古冶街道 ', '速度还是大', '15367885410', 'liuxianliangli@foxmail.com', '13,1302,130204,130204003,', '公司');
INSERT INTO `orderAddress` VALUES ('7c9fdfa3177042a08766aed29e7de6cd', '1586167341081100064', '递四方速递', '河北省 唐山市 古冶区 古冶街道 ', '速度还是大', '15367885410', 'liuxianliangli@foxmail.com', '13,1302,130204,130204003,', '公司');
INSERT INTO `orderAddress` VALUES ('7c9fdfa3177042a08766aed29e7de6cd', '1586167380721100065', '递四方速递', '河北省 唐山市 古冶区 古冶街道 ', '速度还是大', '15367885410', 'liuxianliangli@foxmail.com', '13,1302,130204,130204003,', '公司');
INSERT INTO `orderAddress` VALUES ('7c9fdfa3177042a08766aed29e7de6cd', '1586167427758100066', '递四方速递', '河北省 唐山市 古冶区 古冶街道 ', '速度还是大', '15367885410', 'liuxianliangli@foxmail.com', '13,1302,130204,130204003,', '公司');
INSERT INTO `orderAddress` VALUES ('7c9fdfa3177042a08766aed29e7de6cd', '1586167555296100067', '递四方速递', '河北省 唐山市 古冶区 古冶街道 ', '速度还是大', '15367885410', 'liuxianliangli@foxmail.com', '13,1302,130204,130204003,', '公司');
INSERT INTO `orderAddress` VALUES ('7c9fdfa3177042a08766aed29e7de6cd', '1586168296523100068', '递四方速递', '河北省 唐山市 古冶区 古冶街道 ', '速度还是大', '15367885410', 'liuxianliangli@foxmail.com', '13,1302,130204,130204003,', '公司');
INSERT INTO `orderAddress` VALUES ('7c9fdfa3177042a08766aed29e7de6cd', '1586168406557100069', '递四方速递', '河北省 唐山市 古冶区 古冶街道 ', '速度还是大', '15367885410', 'liuxianliangli@foxmail.com', '13,1302,130204,130204003,', '公司');
INSERT INTO `orderAddress` VALUES ('7c9fdfa3177042a08766aed29e7de6cd', '1586168446274100070', '递四方速递', '河北省 唐山市 古冶区 古冶街道 ', '速度还是大', '15367885410', 'liuxianliangli@foxmail.com', '13,1302,130204,130204003,', '公司');
INSERT INTO `orderAddress` VALUES ('7c9fdfa3177042a08766aed29e7de6cd', '1586168490950100071', '递四方速递', '河北省 唐山市 古冶区 古冶街道 ', '速度还是大', '15367885410', 'liuxianliangli@foxmail.com', '13,1302,130204,130204003,', '公司');
INSERT INTO `orderAddress` VALUES ('7c9fdfa3177042a08766aed29e7de6cd', '1586169499515100073', '递四方速递', '河北省 唐山市 古冶区 古冶街道 ', '速度还是大', '15367885410', 'liuxianliangli@foxmail.com', '13,1302,130204,130204003,', '公司');
INSERT INTO `orderAddress` VALUES ('7c9fdfa3177042a08766aed29e7de6cd', '1586170485521100075', '递四方速递', '河北省 唐山市 古冶区 古冶街道 ', '速度还是大', '15367885410', 'liuxianliangli@foxmail.com', '13,1302,130204,130204003,', '公司');
INSERT INTO `orderAddress` VALUES ('7c9fdfa3177042a08766aed29e7de6cd', '1586170628544100076', '递四方速递', '河北省 唐山市 古冶区 古冶街道 ', '速度还是大', '15367885410', 'liuxianliangli@foxmail.com', '13,1302,130204,130204003,', '公司');
INSERT INTO `orderAddress` VALUES ('7c9fdfa3177042a08766aed29e7de6cd', '1586171242930100077', '递四方速递', '河北省 唐山市 古冶区 古冶街道 ', '速度还是大', '15367885410', 'liuxianliangli@foxmail.com', '13,1302,130204,130204003,', '公司');
INSERT INTO `orderAddress` VALUES ('f92b9f8f372e445fb6564cdd57aa3c3e', '1586171543535100079', '芳芳', '北京市 市辖区 东城区 东华门街道 ', 'asdsad', '18598814121', '225252@qq.com', '11,1101,110101,110101001,', 'sad');
INSERT INTO `orderAddress` VALUES ('7c9fdfa3177042a08766aed29e7de6cd', '1586171563622100080', '递四方速递', '河北省 唐山市 古冶区 古冶街道 ', '速度还是大', '15367885410', 'liuxianliangli@foxmail.com', '13,1302,130204,130204003,', '公司');
INSERT INTO `orderAddress` VALUES ('7c9fdfa3177042a08766aed29e7de6cd', '1586172574431100081', '递四方速递', '河北省 唐山市 古冶区 古冶街道 ', '速度还是大', '15367885410', 'liuxianliangli@foxmail.com', '13,1302,130204,130204003,', '公司');
INSERT INTO `orderAddress` VALUES ('7c9fdfa3177042a08766aed29e7de6cd', '1586172821690100082', '递四方速递', '河北省 唐山市 古冶区 古冶街道 ', '速度还是大', '15367885410', 'liuxianliangli@foxmail.com', '13,1302,130204,130204003,', '公司');
INSERT INTO `orderAddress` VALUES ('7c9fdfa3177042a08766aed29e7de6cd', '1586173286242100083', '递四方速递', '河北省 唐山市 古冶区 古冶街道 ', '速度还是大', '15367885410', 'liuxianliangli@foxmail.com', '13,1302,130204,130204003,', '公司');
INSERT INTO `orderAddress` VALUES ('7c9fdfa3177042a08766aed29e7de6cd', '1586173315556100084', '递四方速递', '河北省 唐山市 古冶区 古冶街道 ', '速度还是大', '15367885410', 'liuxianliangli@foxmail.com', '13,1302,130204,130204003,', '公司');
INSERT INTO `orderAddress` VALUES ('7c9fdfa3177042a08766aed29e7de6cd', '1586173384206100085', '递四方速递', '河北省 唐山市 古冶区 古冶街道 ', '速度还是大', '15367885410', 'liuxianliangli@foxmail.com', '13,1302,130204,130204003,', '公司');
INSERT INTO `orderAddress` VALUES ('f92b9f8f372e445fb6564cdd57aa3c3e', '1586173397229100086', '芳芳', '北京市 市辖区 东城区 东华门街道 ', 'asdsad', '18598814121', '225252@qq.com', '11,1101,110101,110101001,', 'sad');
INSERT INTO `orderAddress` VALUES ('f92b9f8f372e445fb6564cdd57aa3c3e', '1586173636884100087', '芳芳', '北京市 市辖区 东城区 东华门街道 ', 'asdsad', '18598814121', '225252@qq.com', '11,1101,110101,110101001,', 'sad');
INSERT INTO `orderAddress` VALUES ('7c9fdfa3177042a08766aed29e7de6cd', '1586173725783100088', '递四方速递', '河北省 唐山市 古冶区 古冶街道 ', '速度还是大', '15367885410', 'liuxianliangli@foxmail.com', '13,1302,130204,130204003,', '公司');
INSERT INTO `orderAddress` VALUES ('f92b9f8f372e445fb6564cdd57aa3c3e', '1586174526842100089', '芳芳', '北京市 市辖区 东城区 东华门街道 ', 'asdsad', '18598814121', '225252@qq.com', '11,1101,110101,110101001,', 'sad');
INSERT INTO `orderAddress` VALUES ('7c9fdfa3177042a08766aed29e7de6cd', '1586174541819100090', '递四方速递', '河北省 唐山市 古冶区 古冶街道 ', '速度还是大', '15367885410', 'liuxianliangli@foxmail.com', '13,1302,130204,130204003,', '公司');
INSERT INTO `orderAddress` VALUES ('7c9fdfa3177042a08766aed29e7de6cd', '1586174705113100091', '递四方速递', '河北省 唐山市 古冶区 古冶街道 ', '速度还是大', '15367885410', 'liuxianliangli@foxmail.com', '13,1302,130204,130204003,', '公司');
INSERT INTO `orderAddress` VALUES ('7c9fdfa3177042a08766aed29e7de6cd', '1586175514198100093', '速度还是大', '河北省 唐山市 开平区 开平街道 ', '速度还是大', '15367885410', 'liuxianliangli@foxmail.com', '13,1302,130205,130205002,', '学校');
INSERT INTO `orderAddress` VALUES ('f92b9f8f372e445fb6564cdd57aa3c3e', '1586177356476100006', 'ff', '天津市 市辖区 和平区 劝业场街道 ', 'd156', '18598814121', '2252@qq.com', '12,1201,120101,120101001,', 'ad');

-- ----------------------------
-- Table structure for orders
-- ----------------------------
DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `orderId` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `productName` varchar(300) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `productImage` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `productConfiguration` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `productQuantity` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `productPrice` double NULL DEFAULT NULL,
  `productWeight` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `evaluate` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1389 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of orders
-- ----------------------------
INSERT INTO `orders` VALUES (999, '1586176369021100001', 'HHKB Professional BT 蓝牙版黑无刻静电容键盘 程序员码农专用便携迷你键盘 编程适用', 'http://productdata.fhxasdsada.xyz/AD8JQ6Q0jfeySzdxAVglqw.jpg', '标准白有刻? ', '1', 2188, NULL, 0);
INSERT INTO `orders` VALUES (1000, '1586176369021100001', 'HHKB Professional BT 蓝牙版黑无刻静电容键盘 程序员码农专用便携迷你键盘 编程适用', 'http://productdata.fhxasdsada.xyz/AD8JQ6Q0jfeySzdxAVglqw.jpg', '标准白有刻? ', '1', 2188, NULL, 0);
INSERT INTO `orders` VALUES (1001, '1586176369021100001', 'HHKB Professional BT 蓝牙版黑无刻静电容键盘 程序员码农专用便携迷你键盘 编程适用', 'http://productdata.fhxasdsada.xyz/AD8JQ6Q0jfeySzdxAVglqw.jpg', '标准白有刻? ', '1', 2188, NULL, 0);
INSERT INTO `orders` VALUES (1002, '1586176369021100001', 'HHKB Professional BT 蓝牙版黑无刻静电容键盘 程序员码农专用便携迷你键盘 编程适用', 'http://productdata.fhxasdsada.xyz/AD8JQ6Q0jfeySzdxAVglqw.jpg', '标准白有刻? ', '1', 2188, NULL, 0);
INSERT INTO `orders` VALUES (1003, '1586176369021100001', 'HHKB Professional BT 蓝牙版黑无刻静电容键盘 程序员码农专用便携迷你键盘 编程适用', 'http://productdata.fhxasdsada.xyz/AD8JQ6Q0jfeySzdxAVglqw.jpg', '标准白有刻? ', '1', 2188, NULL, 0);
INSERT INTO `orders` VALUES (1004, '1586176369021100001', 'HHKB Professional BT 蓝牙版黑无刻静电容键盘 程序员码农专用便携迷你键盘 编程适用', 'http://productdata.fhxasdsada.xyz/AD8JQ6Q0jfeySzdxAVglqw.jpg', '标准白有刻? ', '1', 2188, NULL, 0);
INSERT INTO `orders` VALUES (1005, '1586176369021100001', 'HHKB Professional BT 蓝牙版黑无刻静电容键盘 程序员码农专用便携迷你键盘 编程适用', 'http://productdata.fhxasdsada.xyz/AD8JQ6Q0jfeySzdxAVglqw.jpg', '标准白有刻? ', '1', 2188, NULL, 0);
INSERT INTO `orders` VALUES (1006, '1586176369021100001', 'HHKB Professional BT 蓝牙版黑无刻静电容键盘 程序员码农专用便携迷你键盘 编程适用', 'http://productdata.fhxasdsada.xyz/AD8JQ6Q0jfeySzdxAVglqw.jpg', '标准白有刻? ', '1', 2188, NULL, 0);
INSERT INTO `orders` VALUES (1007, '1586176369021100001', 'HHKB Professional BT 蓝牙版黑无刻静电容键盘 程序员码农专用便携迷你键盘 编程适用', 'http://productdata.fhxasdsada.xyz/AD8JQ6Q0jfeySzdxAVglqw.jpg', '标准白有刻? ', '1', 2188, NULL, 0);
INSERT INTO `orders` VALUES (1008, '1586176369021100001', 'HHKB Professional BT 蓝牙版黑无刻静电容键盘 程序员码农专用便携迷你键盘 编程适用', 'http://productdata.fhxasdsada.xyz/AD8JQ6Q0jfeySzdxAVglqw.jpg', '标准白有刻? ', '1', 2188, NULL, 0);
INSERT INTO `orders` VALUES (1009, '1586176369021100001', 'HHKB Professional BT 蓝牙版黑无刻静电容键盘 程序员码农专用便携迷你键盘 编程适用', 'http://productdata.fhxasdsada.xyz/AD8JQ6Q0jfeySzdxAVglqw.jpg', '标准白有刻? ', '1', 2188, NULL, 0);
INSERT INTO `orders` VALUES (1010, '1586176369021100001', 'HHKB Professional BT 蓝牙版黑无刻静电容键盘 程序员码农专用便携迷你键盘 编程适用', 'http://productdata.fhxasdsada.xyz/AD8JQ6Q0jfeySzdxAVglqw.jpg', '标准白有刻? ', '1', 2188, NULL, 0);
INSERT INTO `orders` VALUES (1011, '1586176369021100001', 'HHKB Professional BT 蓝牙版黑无刻静电容键盘 程序员码农专用便携迷你键盘 编程适用', 'http://productdata.fhxasdsada.xyz/AD8JQ6Q0jfeySzdxAVglqw.jpg', '标准白有刻? ', '1', 2188, NULL, 0);
INSERT INTO `orders` VALUES (1012, '1586176369021100001', 'HHKB Professional BT 蓝牙版黑无刻静电容键盘 程序员码农专用便携迷你键盘 编程适用', 'http://productdata.fhxasdsada.xyz/AD8JQ6Q0jfeySzdxAVglqw.jpg', '标准白有刻? ', '1', 2188, NULL, 0);
INSERT INTO `orders` VALUES (1013, '1586176369021100001', 'HHKB Professional BT 蓝牙版黑无刻静电容键盘 程序员码农专用便携迷你键盘 编程适用', 'http://productdata.fhxasdsada.xyz/AD8JQ6Q0jfeySzdxAVglqw.jpg', '标准白有刻? ', '1', 2188, NULL, 0);
INSERT INTO `orders` VALUES (1014, '1586176369021100001', 'HHKB Professional BT 蓝牙版黑无刻静电容键盘 程序员码农专用便携迷你键盘 编程适用', 'http://productdata.fhxasdsada.xyz/AD8JQ6Q0jfeySzdxAVglqw.jpg', '标准白有刻? ', '1', 2188, NULL, 0);
INSERT INTO `orders` VALUES (1015, '1586176369021100001', 'HHKB Professional BT 蓝牙版黑无刻静电容键盘 程序员码农专用便携迷你键盘 编程适用', 'http://productdata.fhxasdsada.xyz/AD8JQ6Q0jfeySzdxAVglqw.jpg', '标准白有刻? ', '1', 2188, NULL, 0);
INSERT INTO `orders` VALUES (1016, '1586176369021100001', 'HHKB Professional BT 蓝牙版黑无刻静电容键盘 程序员码农专用便携迷你键盘 编程适用', 'http://productdata.fhxasdsada.xyz/AD8JQ6Q0jfeySzdxAVglqw.jpg', '标准白有刻? ', '1', 2188, NULL, 0);
INSERT INTO `orders` VALUES (1017, '1586176369021100001', 'HHKB Professional BT 蓝牙版黑无刻静电容键盘 程序员码农专用便携迷你键盘 编程适用', 'http://productdata.fhxasdsada.xyz/AD8JQ6Q0jfeySzdxAVglqw.jpg', '标准白有刻? ', '1', 2188, NULL, 0);
INSERT INTO `orders` VALUES (1018, '1586176369021100001', 'HHKB Professional BT 蓝牙版黑无刻静电容键盘 程序员码农专用便携迷你键盘 编程适用', 'http://productdata.fhxasdsada.xyz/AD8JQ6Q0jfeySzdxAVglqw.jpg', '标准白有刻? ', '1', 2188, NULL, 0);
INSERT INTO `orders` VALUES (1019, '1586176369021100001', 'HHKB Professional BT 蓝牙版黑无刻静电容键盘 程序员码农专用便携迷你键盘 编程适用', 'http://productdata.fhxasdsada.xyz/AD8JQ6Q0jfeySzdxAVglqw.jpg', '标准白有刻? ', '1', 2188, NULL, 0);
INSERT INTO `orders` VALUES (1020, '1586176369021100001', 'HHKB Professional BT 蓝牙版黑无刻静电容键盘 程序员码农专用便携迷你键盘 编程适用', 'http://productdata.fhxasdsada.xyz/AD8JQ6Q0jfeySzdxAVglqw.jpg', '标准白有刻? ', '1', 2188, NULL, 0);
INSERT INTO `orders` VALUES (1021, '1586176369021100001', 'HHKB Professional BT 蓝牙版黑无刻静电容键盘 程序员码农专用便携迷你键盘 编程适用', 'http://productdata.fhxasdsada.xyz/AD8JQ6Q0jfeySzdxAVglqw.jpg', '标准白有刻? ', '1', 2188, NULL, 0);
INSERT INTO `orders` VALUES (1022, '1586176369021100001', 'HHKB Professional BT 蓝牙版黑无刻静电容键盘 程序员码农专用便携迷你键盘 编程适用', 'http://productdata.fhxasdsada.xyz/AD8JQ6Q0jfeySzdxAVglqw.jpg', '标准白有刻? ', '1', 2188, NULL, 0);
INSERT INTO `orders` VALUES (1023, '1586176369021100001', 'HHKB Professional BT 蓝牙版黑无刻静电容键盘 程序员码农专用便携迷你键盘 编程适用', 'http://productdata.fhxasdsada.xyz/AD8JQ6Q0jfeySzdxAVglqw.jpg', '标准白有刻? ', '1', 2188, NULL, 0);
INSERT INTO `orders` VALUES (1024, '1586176369021100001', 'HHKB Professional BT 蓝牙版黑无刻静电容键盘 程序员码农专用便携迷你键盘 编程适用', 'http://productdata.fhxasdsada.xyz/AD8JQ6Q0jfeySzdxAVglqw.jpg', '标准白有刻? ', '1', 2188, NULL, 0);
INSERT INTO `orders` VALUES (1025, '1586176369021100001', 'HHKB Professional BT 蓝牙版黑无刻静电容键盘 程序员码农专用便携迷你键盘 编程适用', 'http://productdata.fhxasdsada.xyz/AD8JQ6Q0jfeySzdxAVglqw.jpg', '标准白有刻? ', '1', 2188, NULL, 0);
INSERT INTO `orders` VALUES (1026, '1586176369021100001', 'HHKB Professional BT 蓝牙版黑无刻静电容键盘 程序员码农专用便携迷你键盘 编程适用', 'http://productdata.fhxasdsada.xyz/AD8JQ6Q0jfeySzdxAVglqw.jpg', '标准白有刻? ', '1', 2188, NULL, 0);
INSERT INTO `orders` VALUES (1027, '1586176369021100001', 'HHKB Professional BT 蓝牙版黑无刻静电容键盘 程序员码农专用便携迷你键盘 编程适用', 'http://productdata.fhxasdsada.xyz/AD8JQ6Q0jfeySzdxAVglqw.jpg', '标准白有刻? ', '1', 2188, NULL, 0);
INSERT INTO `orders` VALUES (1028, '1586176369021100001', 'HHKB Professional BT 蓝牙版黑无刻静电容键盘 程序员码农专用便携迷你键盘 编程适用', 'http://productdata.fhxasdsada.xyz/AD8JQ6Q0jfeySzdxAVglqw.jpg', '标准白有刻? ', '1', 2188, NULL, 0);
INSERT INTO `orders` VALUES (1029, '1586176369021100001', 'HHKB Professional BT 蓝牙版黑无刻静电容键盘 程序员码农专用便携迷你键盘 编程适用', 'http://productdata.fhxasdsada.xyz/AD8JQ6Q0jfeySzdxAVglqw.jpg', '标准白有刻? ', '1', 2188, NULL, 0);
INSERT INTO `orders` VALUES (1030, '1586176369021100001', 'HHKB Professional BT 蓝牙版黑无刻静电容键盘 程序员码农专用便携迷你键盘 编程适用', 'http://productdata.fhxasdsada.xyz/AD8JQ6Q0jfeySzdxAVglqw.jpg', '标准白有刻? ', '1', 2188, NULL, 0);
INSERT INTO `orders` VALUES (1031, '1586176369021100001', 'HHKB Professional BT 蓝牙版黑无刻静电容键盘 程序员码农专用便携迷你键盘 编程适用', 'http://productdata.fhxasdsada.xyz/AD8JQ6Q0jfeySzdxAVglqw.jpg', '标准白有刻? ', '1', 2188, NULL, 0);
INSERT INTO `orders` VALUES (1032, '1586176369021100001', 'HHKB Professional BT 蓝牙版黑无刻静电容键盘 程序员码农专用便携迷你键盘 编程适用', 'http://productdata.fhxasdsada.xyz/AD8JQ6Q0jfeySzdxAVglqw.jpg', '标准白有刻? ', '1', 2188, NULL, 0);
INSERT INTO `orders` VALUES (1033, '1586176369021100001', 'HHKB Professional BT 蓝牙版黑无刻静电容键盘 程序员码农专用便携迷你键盘 编程适用', 'http://productdata.fhxasdsada.xyz/AD8JQ6Q0jfeySzdxAVglqw.jpg', '标准白有刻? ', '1', 2188, NULL, 0);
INSERT INTO `orders` VALUES (1034, '1586176369021100001', 'HHKB Professional BT 蓝牙版黑无刻静电容键盘 程序员码农专用便携迷你键盘 编程适用', 'http://productdata.fhxasdsada.xyz/AD8JQ6Q0jfeySzdxAVglqw.jpg', '标准白有刻? ', '1', 2188, NULL, 0);
INSERT INTO `orders` VALUES (1035, '1586176369021100001', 'HHKB Professional BT 蓝牙版黑无刻静电容键盘 程序员码农专用便携迷你键盘 编程适用', 'http://productdata.fhxasdsada.xyz/AD8JQ6Q0jfeySzdxAVglqw.jpg', '标准白有刻? ', '1', 2188, NULL, 0);
INSERT INTO `orders` VALUES (1036, '1586176369021100001', 'HHKB Professional BT 蓝牙版黑无刻静电容键盘 程序员码农专用便携迷你键盘 编程适用', 'http://productdata.fhxasdsada.xyz/AD8JQ6Q0jfeySzdxAVglqw.jpg', '标准白有刻? ', '1', 2188, NULL, 0);
INSERT INTO `orders` VALUES (1037, '1586176369021100001', 'HHKB Professional BT 蓝牙版黑无刻静电容键盘 程序员码农专用便携迷你键盘 编程适用', 'http://productdata.fhxasdsada.xyz/AD8JQ6Q0jfeySzdxAVglqw.jpg', '标准白有刻? ', '1', 2188, NULL, 0);
INSERT INTO `orders` VALUES (1038, '1586176369021100001', 'HHKB Professional BT 蓝牙版黑无刻静电容键盘 程序员码农专用便携迷你键盘 编程适用', 'http://productdata.fhxasdsada.xyz/AD8JQ6Q0jfeySzdxAVglqw.jpg', '标准白有刻? ', '1', 2188, NULL, 0);
INSERT INTO `orders` VALUES (1039, '1586176369021100001', 'HHKB Professional BT 蓝牙版黑无刻静电容键盘 程序员码农专用便携迷你键盘 编程适用', 'http://productdata.fhxasdsada.xyz/AD8JQ6Q0jfeySzdxAVglqw.jpg', '标准白有刻? ', '1', 2188, NULL, 0);
INSERT INTO `orders` VALUES (1040, '1586176369021100001', 'HHKB Professional BT 蓝牙版黑无刻静电容键盘 程序员码农专用便携迷你键盘 编程适用', 'http://productdata.fhxasdsada.xyz/AD8JQ6Q0jfeySzdxAVglqw.jpg', '标准白有刻? ', '1', 2188, NULL, 0);
INSERT INTO `orders` VALUES (1041, '1586176369021100001', 'HHKB Professional BT 蓝牙版黑无刻静电容键盘 程序员码农专用便携迷你键盘 编程适用', 'http://productdata.fhxasdsada.xyz/AD8JQ6Q0jfeySzdxAVglqw.jpg', '标准白有刻? ', '1', 2188, NULL, 0);
INSERT INTO `orders` VALUES (1042, '1586176369021100001', 'HHKB Professional BT 蓝牙版黑无刻静电容键盘 程序员码农专用便携迷你键盘 编程适用', 'http://productdata.fhxasdsada.xyz/AD8JQ6Q0jfeySzdxAVglqw.jpg', '标准白有刻? ', '1', 2188, NULL, 0);
INSERT INTO `orders` VALUES (1043, '1586176369021100001', 'HHKB Professional BT 蓝牙版黑无刻静电容键盘 程序员码农专用便携迷你键盘 编程适用', 'http://productdata.fhxasdsada.xyz/AD8JQ6Q0jfeySzdxAVglqw.jpg', '标准白有刻? ', '1', 2188, NULL, 0);
INSERT INTO `orders` VALUES (1044, '1586176369021100001', 'HHKB Professional BT 蓝牙版黑无刻静电容键盘 程序员码农专用便携迷你键盘 编程适用', 'http://productdata.fhxasdsada.xyz/AD8JQ6Q0jfeySzdxAVglqw.jpg', '标准白有刻? ', '1', 2188, NULL, 0);
INSERT INTO `orders` VALUES (1045, '1586176369021100001', 'HHKB Professional BT 蓝牙版黑无刻静电容键盘 程序员码农专用便携迷你键盘 编程适用', 'http://productdata.fhxasdsada.xyz/AD8JQ6Q0jfeySzdxAVglqw.jpg', '标准白有刻? ', '1', 2188, NULL, 0);
INSERT INTO `orders` VALUES (1046, '1586176369021100001', 'HHKB Professional BT 蓝牙版黑无刻静电容键盘 程序员码农专用便携迷你键盘 编程适用', 'http://productdata.fhxasdsada.xyz/AD8JQ6Q0jfeySzdxAVglqw.jpg', '标准白有刻? ', '1', 2188, NULL, 0);
INSERT INTO `orders` VALUES (1047, '1586176369021100001', 'HHKB Professional BT 蓝牙版黑无刻静电容键盘 程序员码农专用便携迷你键盘 编程适用', 'http://productdata.fhxasdsada.xyz/AD8JQ6Q0jfeySzdxAVglqw.jpg', '标准白有刻? ', '1', 2188, NULL, 0);
INSERT INTO `orders` VALUES (1048, '1586176369021100001', 'HHKB Professional BT 蓝牙版黑无刻静电容键盘 程序员码农专用便携迷你键盘 编程适用', 'http://productdata.fhxasdsada.xyz/AD8JQ6Q0jfeySzdxAVglqw.jpg', '标准白有刻? ', '1', 2188, NULL, 0);
INSERT INTO `orders` VALUES (1049, '1586176369021100001', 'HHKB Professional BT 蓝牙版黑无刻静电容键盘 程序员码农专用便携迷你键盘 编程适用', 'http://productdata.fhxasdsada.xyz/AD8JQ6Q0jfeySzdxAVglqw.jpg', '标准白有刻? ', '1', 2188, NULL, 0);
INSERT INTO `orders` VALUES (1050, '1586176369021100001', 'HHKB Professional BT 蓝牙版黑无刻静电容键盘 程序员码农专用便携迷你键盘 编程适用', 'http://productdata.fhxasdsada.xyz/AD8JQ6Q0jfeySzdxAVglqw.jpg', '标准白有刻? ', '1', 2188, NULL, 0);
INSERT INTO `orders` VALUES (1051, '1586176369021100001', 'HHKB Professional BT 蓝牙版黑无刻静电容键盘 程序员码农专用便携迷你键盘 编程适用', 'http://productdata.fhxasdsada.xyz/AD8JQ6Q0jfeySzdxAVglqw.jpg', '标准白有刻? ', '1', 2188, NULL, 0);
INSERT INTO `orders` VALUES (1052, '1586176369021100001', 'HHKB Professional BT 蓝牙版黑无刻静电容键盘 程序员码农专用便携迷你键盘 编程适用', 'http://productdata.fhxasdsada.xyz/AD8JQ6Q0jfeySzdxAVglqw.jpg', '标准白有刻? ', '1', 2188, NULL, 0);
INSERT INTO `orders` VALUES (1053, '1586176369021100001', 'HHKB Professional BT 蓝牙版黑无刻静电容键盘 程序员码农专用便携迷你键盘 编程适用', 'http://productdata.fhxasdsada.xyz/AD8JQ6Q0jfeySzdxAVglqw.jpg', '标准白有刻? ', '1', 2188, NULL, 0);
INSERT INTO `orders` VALUES (1054, '1586176369021100001', 'HHKB Professional BT 蓝牙版黑无刻静电容键盘 程序员码农专用便携迷你键盘 编程适用', 'http://productdata.fhxasdsada.xyz/AD8JQ6Q0jfeySzdxAVglqw.jpg', '标准白有刻? ', '1', 2188, NULL, 0);
INSERT INTO `orders` VALUES (1055, '1586176369021100001', 'HHKB Professional BT 蓝牙版黑无刻静电容键盘 程序员码农专用便携迷你键盘 编程适用', 'http://productdata.fhxasdsada.xyz/AD8JQ6Q0jfeySzdxAVglqw.jpg', '标准白有刻? ', '1', 2188, NULL, 0);
INSERT INTO `orders` VALUES (1056, '1586176369021100001', 'HHKB Professional BT 蓝牙版黑无刻静电容键盘 程序员码农专用便携迷你键盘 编程适用', 'http://productdata.fhxasdsada.xyz/AD8JQ6Q0jfeySzdxAVglqw.jpg', '标准白有刻? ', '1', 2188, NULL, 0);
INSERT INTO `orders` VALUES (1057, '1586176369021100001', 'HHKB Professional BT 蓝牙版黑无刻静电容键盘 程序员码农专用便携迷你键盘 编程适用', 'http://productdata.fhxasdsada.xyz/AD8JQ6Q0jfeySzdxAVglqw.jpg', '标准白有刻? ', '1', 2188, NULL, 0);
INSERT INTO `orders` VALUES (1058, '1586176369021100001', 'HHKB Professional BT 蓝牙版黑无刻静电容键盘 程序员码农专用便携迷你键盘 编程适用', 'http://productdata.fhxasdsada.xyz/AD8JQ6Q0jfeySzdxAVglqw.jpg', '标准白有刻? ', '1', 2188, NULL, 0);
INSERT INTO `orders` VALUES (1059, '1586176369021100001', 'HHKB Professional BT 蓝牙版黑无刻静电容键盘 程序员码农专用便携迷你键盘 编程适用', 'http://productdata.fhxasdsada.xyz/AD8JQ6Q0jfeySzdxAVglqw.jpg', '标准白有刻? ', '1', 2188, NULL, 0);
INSERT INTO `orders` VALUES (1060, '1586176369021100001', 'HHKB Professional BT 蓝牙版黑无刻静电容键盘 程序员码农专用便携迷你键盘 编程适用', 'http://productdata.fhxasdsada.xyz/AD8JQ6Q0jfeySzdxAVglqw.jpg', '标准白有刻? ', '1', 2188, NULL, 0);
INSERT INTO `orders` VALUES (1061, '1586176369021100001', 'HHKB Professional BT 蓝牙版黑无刻静电容键盘 程序员码农专用便携迷你键盘 编程适用', 'http://productdata.fhxasdsada.xyz/AD8JQ6Q0jfeySzdxAVglqw.jpg', '标准白有刻? ', '1', 2188, NULL, 0);
INSERT INTO `orders` VALUES (1062, '1586176369021100001', 'HHKB Professional BT 蓝牙版黑无刻静电容键盘 程序员码农专用便携迷你键盘 编程适用', 'http://productdata.fhxasdsada.xyz/AD8JQ6Q0jfeySzdxAVglqw.jpg', '标准白有刻? ', '1', 2188, NULL, 0);
INSERT INTO `orders` VALUES (1063, '1586176369021100001', 'HHKB Professional BT 蓝牙版黑无刻静电容键盘 程序员码农专用便携迷你键盘 编程适用', 'http://productdata.fhxasdsada.xyz/AD8JQ6Q0jfeySzdxAVglqw.jpg', '标准白有刻? ', '1', 2188, NULL, 0);
INSERT INTO `orders` VALUES (1064, '1586176369021100001', 'HHKB Professional BT 蓝牙版黑无刻静电容键盘 程序员码农专用便携迷你键盘 编程适用', 'http://productdata.fhxasdsada.xyz/AD8JQ6Q0jfeySzdxAVglqw.jpg', '标准白有刻? ', '1', 2188, NULL, 0);
INSERT INTO `orders` VALUES (1065, '1586176369021100001', 'HHKB Professional BT 蓝牙版黑无刻静电容键盘 程序员码农专用便携迷你键盘 编程适用', 'http://productdata.fhxasdsada.xyz/AD8JQ6Q0jfeySzdxAVglqw.jpg', '标准白有刻? ', '1', 2188, NULL, 0);
INSERT INTO `orders` VALUES (1066, '1586176369021100001', 'HHKB Professional BT 蓝牙版黑无刻静电容键盘 程序员码农专用便携迷你键盘 编程适用', 'http://productdata.fhxasdsada.xyz/AD8JQ6Q0jfeySzdxAVglqw.jpg', '标准白有刻? ', '1', 2188, NULL, 0);
INSERT INTO `orders` VALUES (1067, '1586176369021100001', 'HHKB Professional BT 蓝牙版黑无刻静电容键盘 程序员码农专用便携迷你键盘 编程适用', 'http://productdata.fhxasdsada.xyz/AD8JQ6Q0jfeySzdxAVglqw.jpg', '标准白有刻? ', '1', 2188, NULL, 0);
INSERT INTO `orders` VALUES (1068, '1586176369021100001', 'HHKB Professional BT 蓝牙版黑无刻静电容键盘 程序员码农专用便携迷你键盘 编程适用', 'http://productdata.fhxasdsada.xyz/AD8JQ6Q0jfeySzdxAVglqw.jpg', '标准白有刻? ', '1', 2188, NULL, 0);
INSERT INTO `orders` VALUES (1069, '1586176369021100001', 'HHKB Professional BT 蓝牙版黑无刻静电容键盘 程序员码农专用便携迷你键盘 编程适用', 'http://productdata.fhxasdsada.xyz/AD8JQ6Q0jfeySzdxAVglqw.jpg', '标准白有刻? ', '1', 2188, NULL, 0);
INSERT INTO `orders` VALUES (1070, '1586176369021100001', 'HHKB Professional BT 蓝牙版黑无刻静电容键盘 程序员码农专用便携迷你键盘 编程适用', 'http://productdata.fhxasdsada.xyz/AD8JQ6Q0jfeySzdxAVglqw.jpg', '标准白有刻? ', '1', 2188, NULL, 0);
INSERT INTO `orders` VALUES (1071, '1586176369021100001', 'HHKB Professional BT 蓝牙版黑无刻静电容键盘 程序员码农专用便携迷你键盘 编程适用', 'http://productdata.fhxasdsada.xyz/AD8JQ6Q0jfeySzdxAVglqw.jpg', '标准白有刻? ', '1', 2188, NULL, 0);
INSERT INTO `orders` VALUES (1072, '1586176369021100001', 'HHKB Professional BT 蓝牙版黑无刻静电容键盘 程序员码农专用便携迷你键盘 编程适用', 'http://productdata.fhxasdsada.xyz/AD8JQ6Q0jfeySzdxAVglqw.jpg', '标准白有刻? ', '1', 2188, NULL, 0);
INSERT INTO `orders` VALUES (1073, '1586176369021100001', 'HHKB Professional BT 蓝牙版黑无刻静电容键盘 程序员码农专用便携迷你键盘 编程适用', 'http://productdata.fhxasdsada.xyz/AD8JQ6Q0jfeySzdxAVglqw.jpg', '标准白有刻? ', '1', 2188, NULL, 0);
INSERT INTO `orders` VALUES (1074, '1586176369021100001', 'HHKB Professional BT 蓝牙版黑无刻静电容键盘 程序员码农专用便携迷你键盘 编程适用', 'http://productdata.fhxasdsada.xyz/AD8JQ6Q0jfeySzdxAVglqw.jpg', '标准白有刻? ', '1', 2188, NULL, 0);
INSERT INTO `orders` VALUES (1075, '1586176369021100001', 'HHKB Professional BT 蓝牙版黑无刻静电容键盘 程序员码农专用便携迷你键盘 编程适用', 'http://productdata.fhxasdsada.xyz/AD8JQ6Q0jfeySzdxAVglqw.jpg', '标准白有刻? ', '1', 2188, NULL, 0);
INSERT INTO `orders` VALUES (1076, '1586176369021100001', 'HHKB Professional BT 蓝牙版黑无刻静电容键盘 程序员码农专用便携迷你键盘 编程适用', 'http://productdata.fhxasdsada.xyz/AD8JQ6Q0jfeySzdxAVglqw.jpg', '标准白有刻? ', '1', 2188, NULL, 0);
INSERT INTO `orders` VALUES (1077, '1586176369021100001', 'HHKB Professional BT 蓝牙版黑无刻静电容键盘 程序员码农专用便携迷你键盘 编程适用', 'http://productdata.fhxasdsada.xyz/AD8JQ6Q0jfeySzdxAVglqw.jpg', '标准白有刻? ', '1', 2188, NULL, 0);
INSERT INTO `orders` VALUES (1078, '1586176369021100001', 'HHKB Professional BT 蓝牙版黑无刻静电容键盘 程序员码农专用便携迷你键盘 编程适用', 'http://productdata.fhxasdsada.xyz/AD8JQ6Q0jfeySzdxAVglqw.jpg', '标准白有刻? ', '1', 2188, NULL, 0);
INSERT INTO `orders` VALUES (1079, '1586176369021100001', 'HHKB Professional BT 蓝牙版黑无刻静电容键盘 程序员码农专用便携迷你键盘 编程适用', 'http://productdata.fhxasdsada.xyz/AD8JQ6Q0jfeySzdxAVglqw.jpg', '标准白有刻? ', '1', 2188, NULL, 0);
INSERT INTO `orders` VALUES (1080, '1586176369021100001', 'HHKB Professional BT 蓝牙版黑无刻静电容键盘 程序员码农专用便携迷你键盘 编程适用', 'http://productdata.fhxasdsada.xyz/AD8JQ6Q0jfeySzdxAVglqw.jpg', '标准白有刻? ', '1', 2188, NULL, 0);
INSERT INTO `orders` VALUES (1081, '1586176369021100001', 'HHKB Professional BT 蓝牙版黑无刻静电容键盘 程序员码农专用便携迷你键盘 编程适用', 'http://productdata.fhxasdsada.xyz/AD8JQ6Q0jfeySzdxAVglqw.jpg', '标准白有刻? ', '1', 2188, NULL, 0);
INSERT INTO `orders` VALUES (1082, '1586176369021100001', 'HHKB Professional BT 蓝牙版黑无刻静电容键盘 程序员码农专用便携迷你键盘 编程适用', 'http://productdata.fhxasdsada.xyz/AD8JQ6Q0jfeySzdxAVglqw.jpg', '标准白有刻? ', '1', 2188, NULL, 0);
INSERT INTO `orders` VALUES (1083, '1586176369021100001', 'HHKB Professional BT 蓝牙版黑无刻静电容键盘 程序员码农专用便携迷你键盘 编程适用', 'http://productdata.fhxasdsada.xyz/AD8JQ6Q0jfeySzdxAVglqw.jpg', '标准白有刻? ', '1', 2188, NULL, 0);
INSERT INTO `orders` VALUES (1084, '1586176369021100001', 'HHKB Professional BT 蓝牙版黑无刻静电容键盘 程序员码农专用便携迷你键盘 编程适用', 'http://productdata.fhxasdsada.xyz/AD8JQ6Q0jfeySzdxAVglqw.jpg', '标准白有刻? ', '1', 2188, NULL, 0);
INSERT INTO `orders` VALUES (1085, '1586176369021100001', 'HHKB Professional BT 蓝牙版黑无刻静电容键盘 程序员码农专用便携迷你键盘 编程适用', 'http://productdata.fhxasdsada.xyz/AD8JQ6Q0jfeySzdxAVglqw.jpg', '标准白有刻? ', '1', 2188, NULL, 0);
INSERT INTO `orders` VALUES (1086, '1586176369021100001', 'HHKB Professional BT 蓝牙版黑无刻静电容键盘 程序员码农专用便携迷你键盘 编程适用', 'http://productdata.fhxasdsada.xyz/AD8JQ6Q0jfeySzdxAVglqw.jpg', '标准白有刻? ', '1', 2188, NULL, 0);
INSERT INTO `orders` VALUES (1087, '1586176369021100001', 'HHKB Professional BT 蓝牙版黑无刻静电容键盘 程序员码农专用便携迷你键盘 编程适用', 'http://productdata.fhxasdsada.xyz/AD8JQ6Q0jfeySzdxAVglqw.jpg', '标准白有刻? ', '1', 2188, NULL, 0);
INSERT INTO `orders` VALUES (1088, '1586176369021100001', 'HHKB Professional BT 蓝牙版黑无刻静电容键盘 程序员码农专用便携迷你键盘 编程适用', 'http://productdata.fhxasdsada.xyz/AD8JQ6Q0jfeySzdxAVglqw.jpg', '标准白有刻? ', '1', 2188, NULL, 0);
INSERT INTO `orders` VALUES (1089, '1586176369021100001', 'HHKB Professional BT 蓝牙版黑无刻静电容键盘 程序员码农专用便携迷你键盘 编程适用', 'http://productdata.fhxasdsada.xyz/AD8JQ6Q0jfeySzdxAVglqw.jpg', '标准白有刻? ', '1', 2188, NULL, 0);
INSERT INTO `orders` VALUES (1090, '1586176369021100001', 'HHKB Professional BT 蓝牙版黑无刻静电容键盘 程序员码农专用便携迷你键盘 编程适用', 'http://productdata.fhxasdsada.xyz/AD8JQ6Q0jfeySzdxAVglqw.jpg', '标准白有刻? ', '1', 2188, NULL, 0);
INSERT INTO `orders` VALUES (1091, '1586176369021100001', 'HHKB Professional BT 蓝牙版黑无刻静电容键盘 程序员码农专用便携迷你键盘 编程适用', 'http://productdata.fhxasdsada.xyz/AD8JQ6Q0jfeySzdxAVglqw.jpg', '标准白有刻? ', '1', 2188, NULL, 0);
INSERT INTO `orders` VALUES (1092, '1586176369021100001', 'HHKB Professional BT 蓝牙版黑无刻静电容键盘 程序员码农专用便携迷你键盘 编程适用', 'http://productdata.fhxasdsada.xyz/AD8JQ6Q0jfeySzdxAVglqw.jpg', '标准白有刻? ', '1', 2188, NULL, 0);
INSERT INTO `orders` VALUES (1093, '1586176369021100001', 'HHKB Professional BT 蓝牙版黑无刻静电容键盘 程序员码农专用便携迷你键盘 编程适用', 'http://productdata.fhxasdsada.xyz/AD8JQ6Q0jfeySzdxAVglqw.jpg', '标准白有刻? ', '1', 2188, NULL, 0);
INSERT INTO `orders` VALUES (1094, '1586176532725100002', 'HHKB Professional BT 蓝牙版黑无刻静电容键盘 程序员码农专用便携迷你键盘 编程适用', 'http://productdata.fhxasdsada.xyz/AD8JQ6Q0jfeySzdxAVglqw.jpg', '标准白有刻? ', '1', 2188, NULL, 0);
INSERT INTO `orders` VALUES (1095, '1586176532725100002', 'HHKB Professional BT 蓝牙版黑无刻静电容键盘 程序员码农专用便携迷你键盘 编程适用', 'http://productdata.fhxasdsada.xyz/AD8JQ6Q0jfeySzdxAVglqw.jpg', '标准白有刻? ', '1', 2188, NULL, 0);
INSERT INTO `orders` VALUES (1096, '1586176532725100002', 'HHKB Professional BT 蓝牙版黑无刻静电容键盘 程序员码农专用便携迷你键盘 编程适用', 'http://productdata.fhxasdsada.xyz/AD8JQ6Q0jfeySzdxAVglqw.jpg', '标准白有刻? ', '1', 2188, NULL, 0);
INSERT INTO `orders` VALUES (1097, '1586176532725100002', 'HHKB Professional BT 蓝牙版黑无刻静电容键盘 程序员码农专用便携迷你键盘 编程适用', 'http://productdata.fhxasdsada.xyz/AD8JQ6Q0jfeySzdxAVglqw.jpg', '标准白有刻? ', '1', 2188, NULL, 0);
INSERT INTO `orders` VALUES (1098, '1586176532725100002', 'HHKB Professional BT 蓝牙版黑无刻静电容键盘 程序员码农专用便携迷你键盘 编程适用', 'http://productdata.fhxasdsada.xyz/AD8JQ6Q0jfeySzdxAVglqw.jpg', '标准白有刻? ', '1', 2188, NULL, 0);
INSERT INTO `orders` VALUES (1099, '1586176532725100002', 'HHKB Professional BT 蓝牙版黑无刻静电容键盘 程序员码农专用便携迷你键盘 编程适用', 'http://productdata.fhxasdsada.xyz/AD8JQ6Q0jfeySzdxAVglqw.jpg', '标准白有刻? ', '1', 2188, NULL, 0);
INSERT INTO `orders` VALUES (1100, '1586176532725100002', 'HHKB Professional BT 蓝牙版黑无刻静电容键盘 程序员码农专用便携迷你键盘 编程适用', 'http://productdata.fhxasdsada.xyz/AD8JQ6Q0jfeySzdxAVglqw.jpg', '标准白有刻? ', '1', 2188, NULL, 0);
INSERT INTO `orders` VALUES (1101, '1586176532725100002', 'HHKB Professional BT 蓝牙版黑无刻静电容键盘 程序员码农专用便携迷你键盘 编程适用', 'http://productdata.fhxasdsada.xyz/AD8JQ6Q0jfeySzdxAVglqw.jpg', '标准白有刻? ', '1', 2188, NULL, 0);
INSERT INTO `orders` VALUES (1102, '1586176532725100002', 'HHKB Professional BT 蓝牙版黑无刻静电容键盘 程序员码农专用便携迷你键盘 编程适用', 'http://productdata.fhxasdsada.xyz/AD8JQ6Q0jfeySzdxAVglqw.jpg', '标准白有刻? ', '1', 2188, NULL, 0);
INSERT INTO `orders` VALUES (1103, '1586176532725100002', 'HHKB Professional BT 蓝牙版黑无刻静电容键盘 程序员码农专用便携迷你键盘 编程适用', 'http://productdata.fhxasdsada.xyz/AD8JQ6Q0jfeySzdxAVglqw.jpg', '标准白有刻? ', '1', 2188, NULL, 0);
INSERT INTO `orders` VALUES (1104, '1586176532725100002', 'HHKB Professional BT 蓝牙版黑无刻静电容键盘 程序员码农专用便携迷你键盘 编程适用', 'http://productdata.fhxasdsada.xyz/AD8JQ6Q0jfeySzdxAVglqw.jpg', '标准白有刻? ', '1', 2188, NULL, 0);
INSERT INTO `orders` VALUES (1105, '1586176532725100002', 'HHKB Professional BT 蓝牙版黑无刻静电容键盘 程序员码农专用便携迷你键盘 编程适用', 'http://productdata.fhxasdsada.xyz/AD8JQ6Q0jfeySzdxAVglqw.jpg', '标准白有刻? ', '1', 2188, NULL, 0);
INSERT INTO `orders` VALUES (1106, '1586176532725100002', 'HHKB Professional BT 蓝牙版黑无刻静电容键盘 程序员码农专用便携迷你键盘 编程适用', 'http://productdata.fhxasdsada.xyz/AD8JQ6Q0jfeySzdxAVglqw.jpg', '标准白有刻? ', '1', 2188, NULL, 0);
INSERT INTO `orders` VALUES (1107, '1586176532725100002', 'HHKB Professional BT 蓝牙版黑无刻静电容键盘 程序员码农专用便携迷你键盘 编程适用', 'http://productdata.fhxasdsada.xyz/AD8JQ6Q0jfeySzdxAVglqw.jpg', '标准白有刻? ', '1', 2188, NULL, 0);
INSERT INTO `orders` VALUES (1108, '1586176532725100002', 'HHKB Professional BT 蓝牙版黑无刻静电容键盘 程序员码农专用便携迷你键盘 编程适用', 'http://productdata.fhxasdsada.xyz/AD8JQ6Q0jfeySzdxAVglqw.jpg', '标准白有刻? ', '1', 2188, NULL, 0);
INSERT INTO `orders` VALUES (1109, '1586176532725100002', 'HHKB Professional BT 蓝牙版黑无刻静电容键盘 程序员码农专用便携迷你键盘 编程适用', 'http://productdata.fhxasdsada.xyz/AD8JQ6Q0jfeySzdxAVglqw.jpg', '标准白有刻? ', '1', 2188, NULL, 0);
INSERT INTO `orders` VALUES (1110, '1586176532725100002', 'HHKB Professional BT 蓝牙版黑无刻静电容键盘 程序员码农专用便携迷你键盘 编程适用', 'http://productdata.fhxasdsada.xyz/AD8JQ6Q0jfeySzdxAVglqw.jpg', '标准白有刻? ', '1', 2188, NULL, 0);
INSERT INTO `orders` VALUES (1111, '1586176532725100002', 'HHKB Professional BT 蓝牙版黑无刻静电容键盘 程序员码农专用便携迷你键盘 编程适用', 'http://productdata.fhxasdsada.xyz/AD8JQ6Q0jfeySzdxAVglqw.jpg', '标准白有刻? ', '1', 2188, NULL, 0);
INSERT INTO `orders` VALUES (1112, '1586176532725100002', 'HHKB Professional BT 蓝牙版黑无刻静电容键盘 程序员码农专用便携迷你键盘 编程适用', 'http://productdata.fhxasdsada.xyz/AD8JQ6Q0jfeySzdxAVglqw.jpg', '标准白有刻? ', '1', 2188, NULL, 0);
INSERT INTO `orders` VALUES (1113, '1586176532725100002', 'HHKB Professional BT 蓝牙版黑无刻静电容键盘 程序员码农专用便携迷你键盘 编程适用', 'http://productdata.fhxasdsada.xyz/AD8JQ6Q0jfeySzdxAVglqw.jpg', '标准白有刻? ', '1', 2188, NULL, 0);
INSERT INTO `orders` VALUES (1114, '1586176532725100002', 'HHKB Professional BT 蓝牙版黑无刻静电容键盘 程序员码农专用便携迷你键盘 编程适用', 'http://productdata.fhxasdsada.xyz/AD8JQ6Q0jfeySzdxAVglqw.jpg', '标准白有刻? ', '1', 2188, NULL, 0);
INSERT INTO `orders` VALUES (1115, '1586176532725100002', 'HHKB Professional BT 蓝牙版黑无刻静电容键盘 程序员码农专用便携迷你键盘 编程适用', 'http://productdata.fhxasdsada.xyz/AD8JQ6Q0jfeySzdxAVglqw.jpg', '标准白有刻? ', '1', 2188, NULL, 0);
INSERT INTO `orders` VALUES (1116, '1586176532725100002', 'HHKB Professional BT 蓝牙版黑无刻静电容键盘 程序员码农专用便携迷你键盘 编程适用', 'http://productdata.fhxasdsada.xyz/AD8JQ6Q0jfeySzdxAVglqw.jpg', '标准白有刻? ', '1', 2188, NULL, 0);
INSERT INTO `orders` VALUES (1117, '1586176532725100002', 'HHKB Professional BT 蓝牙版黑无刻静电容键盘 程序员码农专用便携迷你键盘 编程适用', 'http://productdata.fhxasdsada.xyz/AD8JQ6Q0jfeySzdxAVglqw.jpg', '标准白有刻? ', '1', 2188, NULL, 0);
INSERT INTO `orders` VALUES (1118, '1586176532725100002', 'HHKB Professional BT 蓝牙版黑无刻静电容键盘 程序员码农专用便携迷你键盘 编程适用', 'http://productdata.fhxasdsada.xyz/AD8JQ6Q0jfeySzdxAVglqw.jpg', '标准白有刻? ', '1', 2188, NULL, 0);
INSERT INTO `orders` VALUES (1119, '1586176532725100002', 'HHKB Professional BT 蓝牙版黑无刻静电容键盘 程序员码农专用便携迷你键盘 编程适用', 'http://productdata.fhxasdsada.xyz/AD8JQ6Q0jfeySzdxAVglqw.jpg', '标准白有刻? ', '1', 2188, NULL, 0);
INSERT INTO `orders` VALUES (1120, '1586176532725100002', 'HHKB Professional BT 蓝牙版黑无刻静电容键盘 程序员码农专用便携迷你键盘 编程适用', 'http://productdata.fhxasdsada.xyz/AD8JQ6Q0jfeySzdxAVglqw.jpg', '标准白有刻? ', '1', 2188, NULL, 0);
INSERT INTO `orders` VALUES (1121, '1586176532725100002', 'HHKB Professional BT 蓝牙版黑无刻静电容键盘 程序员码农专用便携迷你键盘 编程适用', 'http://productdata.fhxasdsada.xyz/AD8JQ6Q0jfeySzdxAVglqw.jpg', '标准白有刻? ', '1', 2188, NULL, 0);
INSERT INTO `orders` VALUES (1122, '1586176532725100002', 'HHKB Professional BT 蓝牙版黑无刻静电容键盘 程序员码农专用便携迷你键盘 编程适用', 'http://productdata.fhxasdsada.xyz/AD8JQ6Q0jfeySzdxAVglqw.jpg', '标准白有刻? ', '1', 2188, NULL, 0);
INSERT INTO `orders` VALUES (1123, '1586176532725100002', 'HHKB Professional BT 蓝牙版黑无刻静电容键盘 程序员码农专用便携迷你键盘 编程适用', 'http://productdata.fhxasdsada.xyz/AD8JQ6Q0jfeySzdxAVglqw.jpg', '标准白有刻? ', '1', 2188, NULL, 0);
INSERT INTO `orders` VALUES (1124, '1586176532725100002', 'HHKB Professional BT 蓝牙版黑无刻静电容键盘 程序员码农专用便携迷你键盘 编程适用', 'http://productdata.fhxasdsada.xyz/AD8JQ6Q0jfeySzdxAVglqw.jpg', '标准白有刻? ', '1', 2188, NULL, 0);
INSERT INTO `orders` VALUES (1125, '1586176532725100002', 'HHKB Professional BT 蓝牙版黑无刻静电容键盘 程序员码农专用便携迷你键盘 编程适用', 'http://productdata.fhxasdsada.xyz/AD8JQ6Q0jfeySzdxAVglqw.jpg', '标准白有刻? ', '1', 2188, NULL, 0);
INSERT INTO `orders` VALUES (1126, '1586176532725100002', 'HHKB Professional BT 蓝牙版黑无刻静电容键盘 程序员码农专用便携迷你键盘 编程适用', 'http://productdata.fhxasdsada.xyz/AD8JQ6Q0jfeySzdxAVglqw.jpg', '标准白有刻? ', '1', 2188, NULL, 0);
INSERT INTO `orders` VALUES (1127, '1586176532725100002', 'HHKB Professional BT 蓝牙版黑无刻静电容键盘 程序员码农专用便携迷你键盘 编程适用', 'http://productdata.fhxasdsada.xyz/AD8JQ6Q0jfeySzdxAVglqw.jpg', '标准白有刻? ', '1', 2188, NULL, 0);
INSERT INTO `orders` VALUES (1128, '1586176532725100002', 'HHKB Professional BT 蓝牙版黑无刻静电容键盘 程序员码农专用便携迷你键盘 编程适用', 'http://productdata.fhxasdsada.xyz/AD8JQ6Q0jfeySzdxAVglqw.jpg', '标准白有刻? ', '1', 2188, NULL, 0);
INSERT INTO `orders` VALUES (1129, '1586176532725100002', 'HHKB Professional BT 蓝牙版黑无刻静电容键盘 程序员码农专用便携迷你键盘 编程适用', 'http://productdata.fhxasdsada.xyz/AD8JQ6Q0jfeySzdxAVglqw.jpg', '标准白有刻? ', '1', 2188, NULL, 0);
INSERT INTO `orders` VALUES (1130, '1586176532725100002', 'HHKB Professional BT 蓝牙版黑无刻静电容键盘 程序员码农专用便携迷你键盘 编程适用', 'http://productdata.fhxasdsada.xyz/AD8JQ6Q0jfeySzdxAVglqw.jpg', '标准白有刻? ', '1', 2188, NULL, 0);
INSERT INTO `orders` VALUES (1131, '1586176532725100002', 'HHKB Professional BT 蓝牙版黑无刻静电容键盘 程序员码农专用便携迷你键盘 编程适用', 'http://productdata.fhxasdsada.xyz/AD8JQ6Q0jfeySzdxAVglqw.jpg', '标准白有刻? ', '1', 2188, NULL, 0);
INSERT INTO `orders` VALUES (1132, '1586176532725100002', 'HHKB Professional BT 蓝牙版黑无刻静电容键盘 程序员码农专用便携迷你键盘 编程适用', 'http://productdata.fhxasdsada.xyz/AD8JQ6Q0jfeySzdxAVglqw.jpg', '标准白有刻? ', '1', 2188, NULL, 0);
INSERT INTO `orders` VALUES (1133, '1586176532725100002', 'HHKB Professional BT 蓝牙版黑无刻静电容键盘 程序员码农专用便携迷你键盘 编程适用', 'http://productdata.fhxasdsada.xyz/AD8JQ6Q0jfeySzdxAVglqw.jpg', '标准白有刻? ', '1', 2188, NULL, 0);
INSERT INTO `orders` VALUES (1134, '1586176532725100002', 'HHKB Professional BT 蓝牙版黑无刻静电容键盘 程序员码农专用便携迷你键盘 编程适用', 'http://productdata.fhxasdsada.xyz/AD8JQ6Q0jfeySzdxAVglqw.jpg', '标准白有刻? ', '1', 2188, NULL, 0);
INSERT INTO `orders` VALUES (1135, '1586176532725100002', 'HHKB Professional BT 蓝牙版黑无刻静电容键盘 程序员码农专用便携迷你键盘 编程适用', 'http://productdata.fhxasdsada.xyz/AD8JQ6Q0jfeySzdxAVglqw.jpg', '标准白有刻? ', '1', 2188, NULL, 0);
INSERT INTO `orders` VALUES (1136, '1586176532725100002', 'HHKB Professional BT 蓝牙版黑无刻静电容键盘 程序员码农专用便携迷你键盘 编程适用', 'http://productdata.fhxasdsada.xyz/AD8JQ6Q0jfeySzdxAVglqw.jpg', '标准白有刻? ', '1', 2188, NULL, 0);
INSERT INTO `orders` VALUES (1137, '1586176532725100002', 'HHKB Professional BT 蓝牙版黑无刻静电容键盘 程序员码农专用便携迷你键盘 编程适用', 'http://productdata.fhxasdsada.xyz/AD8JQ6Q0jfeySzdxAVglqw.jpg', '标准白有刻? ', '1', 2188, NULL, 0);
INSERT INTO `orders` VALUES (1138, '1586176532725100002', 'HHKB Professional BT 蓝牙版黑无刻静电容键盘 程序员码农专用便携迷你键盘 编程适用', 'http://productdata.fhxasdsada.xyz/AD8JQ6Q0jfeySzdxAVglqw.jpg', '标准白有刻? ', '1', 2188, NULL, 0);
INSERT INTO `orders` VALUES (1139, '1586176532725100002', 'HHKB Professional BT 蓝牙版黑无刻静电容键盘 程序员码农专用便携迷你键盘 编程适用', 'http://productdata.fhxasdsada.xyz/AD8JQ6Q0jfeySzdxAVglqw.jpg', '标准白有刻? ', '1', 2188, NULL, 0);
INSERT INTO `orders` VALUES (1140, '1586176532725100002', 'HHKB Professional BT 蓝牙版黑无刻静电容键盘 程序员码农专用便携迷你键盘 编程适用', 'http://productdata.fhxasdsada.xyz/AD8JQ6Q0jfeySzdxAVglqw.jpg', '标准白有刻? ', '1', 2188, NULL, 0);
INSERT INTO `orders` VALUES (1141, '1586176532725100002', 'HHKB Professional BT 蓝牙版黑无刻静电容键盘 程序员码农专用便携迷你键盘 编程适用', 'http://productdata.fhxasdsada.xyz/AD8JQ6Q0jfeySzdxAVglqw.jpg', '标准白有刻? ', '1', 2188, NULL, 0);
INSERT INTO `orders` VALUES (1142, '1586176532725100002', 'HHKB Professional BT 蓝牙版黑无刻静电容键盘 程序员码农专用便携迷你键盘 编程适用', 'http://productdata.fhxasdsada.xyz/AD8JQ6Q0jfeySzdxAVglqw.jpg', '标准白有刻? ', '1', 2188, NULL, 0);
INSERT INTO `orders` VALUES (1143, '1586176532725100002', 'HHKB Professional BT 蓝牙版黑无刻静电容键盘 程序员码农专用便携迷你键盘 编程适用', 'http://productdata.fhxasdsada.xyz/AD8JQ6Q0jfeySzdxAVglqw.jpg', '标准白有刻? ', '1', 2188, NULL, 0);
INSERT INTO `orders` VALUES (1144, '1586176532725100002', 'HHKB Professional BT 蓝牙版黑无刻静电容键盘 程序员码农专用便携迷你键盘 编程适用', 'http://productdata.fhxasdsada.xyz/AD8JQ6Q0jfeySzdxAVglqw.jpg', '标准白有刻? ', '1', 2188, NULL, 0);
INSERT INTO `orders` VALUES (1145, '1586176532725100002', 'HHKB Professional BT 蓝牙版黑无刻静电容键盘 程序员码农专用便携迷你键盘 编程适用', 'http://productdata.fhxasdsada.xyz/AD8JQ6Q0jfeySzdxAVglqw.jpg', '标准白有刻? ', '1', 2188, NULL, 0);
INSERT INTO `orders` VALUES (1146, '1586176532725100002', 'HHKB Professional BT 蓝牙版黑无刻静电容键盘 程序员码农专用便携迷你键盘 编程适用', 'http://productdata.fhxasdsada.xyz/AD8JQ6Q0jfeySzdxAVglqw.jpg', '标准白有刻? ', '1', 2188, NULL, 0);
INSERT INTO `orders` VALUES (1147, '1586176532725100002', 'HHKB Professional BT 蓝牙版黑无刻静电容键盘 程序员码农专用便携迷你键盘 编程适用', 'http://productdata.fhxasdsada.xyz/AD8JQ6Q0jfeySzdxAVglqw.jpg', '标准白有刻? ', '1', 2188, NULL, 0);
INSERT INTO `orders` VALUES (1148, '1586176532725100002', 'HHKB Professional BT 蓝牙版黑无刻静电容键盘 程序员码农专用便携迷你键盘 编程适用', 'http://productdata.fhxasdsada.xyz/AD8JQ6Q0jfeySzdxAVglqw.jpg', '标准白有刻? ', '1', 2188, NULL, 0);
INSERT INTO `orders` VALUES (1149, '1586176532725100002', 'HHKB Professional BT 蓝牙版黑无刻静电容键盘 程序员码农专用便携迷你键盘 编程适用', 'http://productdata.fhxasdsada.xyz/AD8JQ6Q0jfeySzdxAVglqw.jpg', '标准白有刻? ', '1', 2188, NULL, 0);
INSERT INTO `orders` VALUES (1150, '1586176532725100002', 'HHKB Professional BT 蓝牙版黑无刻静电容键盘 程序员码农专用便携迷你键盘 编程适用', 'http://productdata.fhxasdsada.xyz/AD8JQ6Q0jfeySzdxAVglqw.jpg', '标准白有刻? ', '1', 2188, NULL, 0);
INSERT INTO `orders` VALUES (1151, '1586176532725100002', 'HHKB Professional BT 蓝牙版黑无刻静电容键盘 程序员码农专用便携迷你键盘 编程适用', 'http://productdata.fhxasdsada.xyz/AD8JQ6Q0jfeySzdxAVglqw.jpg', '标准白有刻? ', '1', 2188, NULL, 0);
INSERT INTO `orders` VALUES (1152, '1586176532725100002', 'HHKB Professional BT 蓝牙版黑无刻静电容键盘 程序员码农专用便携迷你键盘 编程适用', 'http://productdata.fhxasdsada.xyz/AD8JQ6Q0jfeySzdxAVglqw.jpg', '标准白有刻? ', '1', 2188, NULL, 0);
INSERT INTO `orders` VALUES (1153, '1586176532725100002', 'HHKB Professional BT 蓝牙版黑无刻静电容键盘 程序员码农专用便携迷你键盘 编程适用', 'http://productdata.fhxasdsada.xyz/AD8JQ6Q0jfeySzdxAVglqw.jpg', '标准白有刻? ', '1', 2188, NULL, 0);
INSERT INTO `orders` VALUES (1154, '1586176532725100002', 'HHKB Professional BT 蓝牙版黑无刻静电容键盘 程序员码农专用便携迷你键盘 编程适用', 'http://productdata.fhxasdsada.xyz/AD8JQ6Q0jfeySzdxAVglqw.jpg', '标准白有刻? ', '1', 2188, NULL, 0);
INSERT INTO `orders` VALUES (1155, '1586176532725100002', 'HHKB Professional BT 蓝牙版黑无刻静电容键盘 程序员码农专用便携迷你键盘 编程适用', 'http://productdata.fhxasdsada.xyz/AD8JQ6Q0jfeySzdxAVglqw.jpg', '标准白有刻? ', '1', 2188, NULL, 0);
INSERT INTO `orders` VALUES (1156, '1586176532725100002', 'HHKB Professional BT 蓝牙版黑无刻静电容键盘 程序员码农专用便携迷你键盘 编程适用', 'http://productdata.fhxasdsada.xyz/AD8JQ6Q0jfeySzdxAVglqw.jpg', '标准白有刻? ', '1', 2188, NULL, 0);
INSERT INTO `orders` VALUES (1157, '1586176532725100002', 'HHKB Professional BT 蓝牙版黑无刻静电容键盘 程序员码农专用便携迷你键盘 编程适用', 'http://productdata.fhxasdsada.xyz/AD8JQ6Q0jfeySzdxAVglqw.jpg', '标准白有刻? ', '1', 2188, NULL, 0);
INSERT INTO `orders` VALUES (1158, '1586176532725100002', 'HHKB Professional BT 蓝牙版黑无刻静电容键盘 程序员码农专用便携迷你键盘 编程适用', 'http://productdata.fhxasdsada.xyz/AD8JQ6Q0jfeySzdxAVglqw.jpg', '标准白有刻? ', '1', 2188, NULL, 0);
INSERT INTO `orders` VALUES (1159, '1586176532725100002', 'HHKB Professional BT 蓝牙版黑无刻静电容键盘 程序员码农专用便携迷你键盘 编程适用', 'http://productdata.fhxasdsada.xyz/AD8JQ6Q0jfeySzdxAVglqw.jpg', '标准白有刻? ', '1', 2188, NULL, 0);
INSERT INTO `orders` VALUES (1160, '1586176532725100002', 'HHKB Professional BT 蓝牙版黑无刻静电容键盘 程序员码农专用便携迷你键盘 编程适用', 'http://productdata.fhxasdsada.xyz/AD8JQ6Q0jfeySzdxAVglqw.jpg', '标准白有刻? ', '1', 2188, NULL, 0);
INSERT INTO `orders` VALUES (1161, '1586176532725100002', 'HHKB Professional BT 蓝牙版黑无刻静电容键盘 程序员码农专用便携迷你键盘 编程适用', 'http://productdata.fhxasdsada.xyz/AD8JQ6Q0jfeySzdxAVglqw.jpg', '标准白有刻? ', '1', 2188, NULL, 0);
INSERT INTO `orders` VALUES (1162, '1586176532725100002', 'HHKB Professional BT 蓝牙版黑无刻静电容键盘 程序员码农专用便携迷你键盘 编程适用', 'http://productdata.fhxasdsada.xyz/AD8JQ6Q0jfeySzdxAVglqw.jpg', '标准白有刻? ', '1', 2188, NULL, 0);
INSERT INTO `orders` VALUES (1163, '1586176532725100002', 'HHKB Professional BT 蓝牙版黑无刻静电容键盘 程序员码农专用便携迷你键盘 编程适用', 'http://productdata.fhxasdsada.xyz/AD8JQ6Q0jfeySzdxAVglqw.jpg', '标准白有刻? ', '1', 2188, NULL, 0);
INSERT INTO `orders` VALUES (1164, '1586176532725100002', 'HHKB Professional BT 蓝牙版黑无刻静电容键盘 程序员码农专用便携迷你键盘 编程适用', 'http://productdata.fhxasdsada.xyz/AD8JQ6Q0jfeySzdxAVglqw.jpg', '标准白有刻? ', '1', 2188, NULL, 0);
INSERT INTO `orders` VALUES (1165, '1586176532725100002', 'HHKB Professional BT 蓝牙版黑无刻静电容键盘 程序员码农专用便携迷你键盘 编程适用', 'http://productdata.fhxasdsada.xyz/AD8JQ6Q0jfeySzdxAVglqw.jpg', '标准白有刻? ', '1', 2188, NULL, 0);
INSERT INTO `orders` VALUES (1166, '1586176532725100002', 'HHKB Professional BT 蓝牙版黑无刻静电容键盘 程序员码农专用便携迷你键盘 编程适用', 'http://productdata.fhxasdsada.xyz/AD8JQ6Q0jfeySzdxAVglqw.jpg', '标准白有刻? ', '1', 2188, NULL, 0);
INSERT INTO `orders` VALUES (1167, '1586176532725100002', 'HHKB Professional BT 蓝牙版黑无刻静电容键盘 程序员码农专用便携迷你键盘 编程适用', 'http://productdata.fhxasdsada.xyz/AD8JQ6Q0jfeySzdxAVglqw.jpg', '标准白有刻? ', '1', 2188, NULL, 0);
INSERT INTO `orders` VALUES (1168, '1586176532725100002', 'HHKB Professional BT 蓝牙版黑无刻静电容键盘 程序员码农专用便携迷你键盘 编程适用', 'http://productdata.fhxasdsada.xyz/AD8JQ6Q0jfeySzdxAVglqw.jpg', '标准白有刻? ', '1', 2188, NULL, 0);
INSERT INTO `orders` VALUES (1169, '1586176532725100002', 'HHKB Professional BT 蓝牙版黑无刻静电容键盘 程序员码农专用便携迷你键盘 编程适用', 'http://productdata.fhxasdsada.xyz/AD8JQ6Q0jfeySzdxAVglqw.jpg', '标准白有刻? ', '1', 2188, NULL, 0);
INSERT INTO `orders` VALUES (1170, '1586176532725100002', 'HHKB Professional BT 蓝牙版黑无刻静电容键盘 程序员码农专用便携迷你键盘 编程适用', 'http://productdata.fhxasdsada.xyz/AD8JQ6Q0jfeySzdxAVglqw.jpg', '标准白有刻? ', '1', 2188, NULL, 0);
INSERT INTO `orders` VALUES (1171, '1586176532725100002', 'HHKB Professional BT 蓝牙版黑无刻静电容键盘 程序员码农专用便携迷你键盘 编程适用', 'http://productdata.fhxasdsada.xyz/AD8JQ6Q0jfeySzdxAVglqw.jpg', '标准白有刻? ', '1', 2188, NULL, 0);
INSERT INTO `orders` VALUES (1172, '1586176532725100002', 'HHKB Professional BT 蓝牙版黑无刻静电容键盘 程序员码农专用便携迷你键盘 编程适用', 'http://productdata.fhxasdsada.xyz/AD8JQ6Q0jfeySzdxAVglqw.jpg', '标准白有刻? ', '1', 2188, NULL, 0);
INSERT INTO `orders` VALUES (1173, '1586176532725100002', 'HHKB Professional BT 蓝牙版黑无刻静电容键盘 程序员码农专用便携迷你键盘 编程适用', 'http://productdata.fhxasdsada.xyz/AD8JQ6Q0jfeySzdxAVglqw.jpg', '标准白有刻? ', '1', 2188, NULL, 0);
INSERT INTO `orders` VALUES (1174, '1586176532725100002', 'HHKB Professional BT 蓝牙版黑无刻静电容键盘 程序员码农专用便携迷你键盘 编程适用', 'http://productdata.fhxasdsada.xyz/AD8JQ6Q0jfeySzdxAVglqw.jpg', '标准白有刻? ', '1', 2188, NULL, 0);
INSERT INTO `orders` VALUES (1175, '1586176532725100002', 'HHKB Professional BT 蓝牙版黑无刻静电容键盘 程序员码农专用便携迷你键盘 编程适用', 'http://productdata.fhxasdsada.xyz/AD8JQ6Q0jfeySzdxAVglqw.jpg', '标准白有刻? ', '1', 2188, NULL, 0);
INSERT INTO `orders` VALUES (1176, '1586176532725100002', 'HHKB Professional BT 蓝牙版黑无刻静电容键盘 程序员码农专用便携迷你键盘 编程适用', 'http://productdata.fhxasdsada.xyz/AD8JQ6Q0jfeySzdxAVglqw.jpg', '标准白有刻? ', '1', 2188, NULL, 0);
INSERT INTO `orders` VALUES (1177, '1586176532725100002', 'HHKB Professional BT 蓝牙版黑无刻静电容键盘 程序员码农专用便携迷你键盘 编程适用', 'http://productdata.fhxasdsada.xyz/AD8JQ6Q0jfeySzdxAVglqw.jpg', '标准白有刻? ', '1', 2188, NULL, 0);
INSERT INTO `orders` VALUES (1178, '1586176532725100002', 'HHKB Professional BT 蓝牙版黑无刻静电容键盘 程序员码农专用便携迷你键盘 编程适用', 'http://productdata.fhxasdsada.xyz/AD8JQ6Q0jfeySzdxAVglqw.jpg', '标准白有刻? ', '1', 2188, NULL, 0);
INSERT INTO `orders` VALUES (1179, '1586176532725100002', 'HHKB Professional BT 蓝牙版黑无刻静电容键盘 程序员码农专用便携迷你键盘 编程适用', 'http://productdata.fhxasdsada.xyz/AD8JQ6Q0jfeySzdxAVglqw.jpg', '标准白有刻? ', '1', 2188, NULL, 0);
INSERT INTO `orders` VALUES (1180, '1586176532725100002', 'HHKB Professional BT 蓝牙版黑无刻静电容键盘 程序员码农专用便携迷你键盘 编程适用', 'http://productdata.fhxasdsada.xyz/AD8JQ6Q0jfeySzdxAVglqw.jpg', '标准白有刻? ', '1', 2188, NULL, 0);
INSERT INTO `orders` VALUES (1181, '1586176532725100002', 'HHKB Professional BT 蓝牙版黑无刻静电容键盘 程序员码农专用便携迷你键盘 编程适用', 'http://productdata.fhxasdsada.xyz/AD8JQ6Q0jfeySzdxAVglqw.jpg', '标准白有刻? ', '1', 2188, NULL, 0);
INSERT INTO `orders` VALUES (1182, '1586176532725100002', 'HHKB Professional BT 蓝牙版黑无刻静电容键盘 程序员码农专用便携迷你键盘 编程适用', 'http://productdata.fhxasdsada.xyz/AD8JQ6Q0jfeySzdxAVglqw.jpg', '标准白有刻? ', '1', 2188, NULL, 0);
INSERT INTO `orders` VALUES (1183, '1586176532725100002', 'HHKB Professional BT 蓝牙版黑无刻静电容键盘 程序员码农专用便携迷你键盘 编程适用', 'http://productdata.fhxasdsada.xyz/AD8JQ6Q0jfeySzdxAVglqw.jpg', '标准白有刻? ', '1', 2188, NULL, 0);
INSERT INTO `orders` VALUES (1184, '1586176805593100003', '【二手95新】劳力士 系列:迪通拿系列 型号:116505 材质:18k玫瑰金 镜面:蓝宝石玻璃 未使用', '\r\nhttp://productdata.fhxasdsada.xyz/2-SXJILMjHoQXj66aurkzg.jpg', '玫瑰金 ', '99', 260000, '220克', 0);
INSERT INTO `orders` VALUES (1185, '1586176805593100003', '【二手95新】劳力士 系列:迪通拿系列 型号:116505 材质:18k玫瑰金 镜面:蓝宝石玻璃 未使用', '\r\nhttp://productdata.fhxasdsada.xyz/2-SXJILMjHoQXj66aurkzg.jpg', '玫瑰金 ', '99', 260000, '220克', 0);
INSERT INTO `orders` VALUES (1186, '1586176805593100003', '【二手95新】劳力士 系列:迪通拿系列 型号:116505 材质:18k玫瑰金 镜面:蓝宝石玻璃 未使用', '\r\nhttp://productdata.fhxasdsada.xyz/2-SXJILMjHoQXj66aurkzg.jpg', '玫瑰金 ', '99', 260000, '220克', 0);
INSERT INTO `orders` VALUES (1187, '1586176805593100003', '【二手95新】劳力士 系列:迪通拿系列 型号:116505 材质:18k玫瑰金 镜面:蓝宝石玻璃 未使用', '\r\nhttp://productdata.fhxasdsada.xyz/2-SXJILMjHoQXj66aurkzg.jpg', '玫瑰金 ', '99', 260000, '220克', 0);
INSERT INTO `orders` VALUES (1188, '1586176805593100003', '【二手95新】劳力士 系列:迪通拿系列 型号:116505 材质:18k玫瑰金 镜面:蓝宝石玻璃 未使用', '\r\nhttp://productdata.fhxasdsada.xyz/2-SXJILMjHoQXj66aurkzg.jpg', '玫瑰金 ', '99', 260000, '220克', 0);
INSERT INTO `orders` VALUES (1189, '1586176805593100003', '【二手95新】劳力士 系列:迪通拿系列 型号:116505 材质:18k玫瑰金 镜面:蓝宝石玻璃 未使用', '\r\nhttp://productdata.fhxasdsada.xyz/2-SXJILMjHoQXj66aurkzg.jpg', '玫瑰金 ', '99', 260000, '220克', 0);
INSERT INTO `orders` VALUES (1190, '1586176805593100003', '【二手95新】劳力士 系列:迪通拿系列 型号:116505 材质:18k玫瑰金 镜面:蓝宝石玻璃 未使用', '\r\nhttp://productdata.fhxasdsada.xyz/2-SXJILMjHoQXj66aurkzg.jpg', '玫瑰金 ', '99', 260000, '220克', 0);
INSERT INTO `orders` VALUES (1191, '1586176805593100003', '【二手95新】劳力士 系列:迪通拿系列 型号:116505 材质:18k玫瑰金 镜面:蓝宝石玻璃 未使用', '\r\nhttp://productdata.fhxasdsada.xyz/2-SXJILMjHoQXj66aurkzg.jpg', '玫瑰金 ', '99', 260000, '220克', 0);
INSERT INTO `orders` VALUES (1192, '1586176805593100003', '【二手95新】劳力士 系列:迪通拿系列 型号:116505 材质:18k玫瑰金 镜面:蓝宝石玻璃 未使用', '\r\nhttp://productdata.fhxasdsada.xyz/2-SXJILMjHoQXj66aurkzg.jpg', '玫瑰金 ', '99', 260000, '220克', 0);
INSERT INTO `orders` VALUES (1193, '1586176805593100003', '【二手95新】劳力士 系列:迪通拿系列 型号:116505 材质:18k玫瑰金 镜面:蓝宝石玻璃 未使用', '\r\nhttp://productdata.fhxasdsada.xyz/2-SXJILMjHoQXj66aurkzg.jpg', '玫瑰金 ', '99', 260000, '220克', 0);
INSERT INTO `orders` VALUES (1194, '1586176805593100003', '【二手95新】劳力士 系列:迪通拿系列 型号:116505 材质:18k玫瑰金 镜面:蓝宝石玻璃 未使用', '\r\nhttp://productdata.fhxasdsada.xyz/2-SXJILMjHoQXj66aurkzg.jpg', '玫瑰金 ', '99', 260000, '220克', 0);
INSERT INTO `orders` VALUES (1195, '1586176805593100003', '【二手95新】劳力士 系列:迪通拿系列 型号:116505 材质:18k玫瑰金 镜面:蓝宝石玻璃 未使用', '\r\nhttp://productdata.fhxasdsada.xyz/2-SXJILMjHoQXj66aurkzg.jpg', '玫瑰金 ', '99', 260000, '220克', 0);
INSERT INTO `orders` VALUES (1196, '1586176805593100003', '【二手95新】劳力士 系列:迪通拿系列 型号:116505 材质:18k玫瑰金 镜面:蓝宝石玻璃 未使用', '\r\nhttp://productdata.fhxasdsada.xyz/2-SXJILMjHoQXj66aurkzg.jpg', '玫瑰金 ', '99', 260000, '220克', 0);
INSERT INTO `orders` VALUES (1197, '1586176805593100003', '【二手95新】劳力士 系列:迪通拿系列 型号:116505 材质:18k玫瑰金 镜面:蓝宝石玻璃 未使用', '\r\nhttp://productdata.fhxasdsada.xyz/2-SXJILMjHoQXj66aurkzg.jpg', '玫瑰金 ', '99', 260000, '220克', 0);
INSERT INTO `orders` VALUES (1198, '1586176805593100003', '【二手95新】劳力士 系列:迪通拿系列 型号:116505 材质:18k玫瑰金 镜面:蓝宝石玻璃 未使用', '\r\nhttp://productdata.fhxasdsada.xyz/2-SXJILMjHoQXj66aurkzg.jpg', '玫瑰金 ', '99', 260000, '220克', 0);
INSERT INTO `orders` VALUES (1199, '1586176805593100003', '【二手95新】劳力士 系列:迪通拿系列 型号:116505 材质:18k玫瑰金 镜面:蓝宝石玻璃 未使用', '\r\nhttp://productdata.fhxasdsada.xyz/2-SXJILMjHoQXj66aurkzg.jpg', '玫瑰金 ', '99', 260000, '220克', 0);
INSERT INTO `orders` VALUES (1200, '1586176805593100003', '【二手95新】劳力士 系列:迪通拿系列 型号:116505 材质:18k玫瑰金 镜面:蓝宝石玻璃 未使用', '\r\nhttp://productdata.fhxasdsada.xyz/2-SXJILMjHoQXj66aurkzg.jpg', '玫瑰金 ', '99', 260000, '220克', 0);
INSERT INTO `orders` VALUES (1201, '1586176805593100003', '【二手95新】劳力士 系列:迪通拿系列 型号:116505 材质:18k玫瑰金 镜面:蓝宝石玻璃 未使用', '\r\nhttp://productdata.fhxasdsada.xyz/2-SXJILMjHoQXj66aurkzg.jpg', '玫瑰金 ', '99', 260000, '220克', 0);
INSERT INTO `orders` VALUES (1202, '1586176805593100003', '【二手95新】劳力士 系列:迪通拿系列 型号:116505 材质:18k玫瑰金 镜面:蓝宝石玻璃 未使用', '\r\nhttp://productdata.fhxasdsada.xyz/2-SXJILMjHoQXj66aurkzg.jpg', '玫瑰金 ', '99', 260000, '220克', 0);
INSERT INTO `orders` VALUES (1203, '1586176805593100003', '【二手95新】劳力士 系列:迪通拿系列 型号:116505 材质:18k玫瑰金 镜面:蓝宝石玻璃 未使用', '\r\nhttp://productdata.fhxasdsada.xyz/2-SXJILMjHoQXj66aurkzg.jpg', '玫瑰金 ', '99', 260000, '220克', 0);
INSERT INTO `orders` VALUES (1204, '1586176805593100003', '【二手95新】劳力士 系列:迪通拿系列 型号:116505 材质:18k玫瑰金 镜面:蓝宝石玻璃 未使用', '\r\nhttp://productdata.fhxasdsada.xyz/2-SXJILMjHoQXj66aurkzg.jpg', '玫瑰金 ', '99', 260000, '220克', 0);
INSERT INTO `orders` VALUES (1205, '1586176805593100003', '【二手95新】劳力士 系列:迪通拿系列 型号:116505 材质:18k玫瑰金 镜面:蓝宝石玻璃 未使用', '\r\nhttp://productdata.fhxasdsada.xyz/2-SXJILMjHoQXj66aurkzg.jpg', '玫瑰金 ', '99', 260000, '220克', 0);
INSERT INTO `orders` VALUES (1206, '1586176805593100003', '【二手95新】劳力士 系列:迪通拿系列 型号:116505 材质:18k玫瑰金 镜面:蓝宝石玻璃 未使用', '\r\nhttp://productdata.fhxasdsada.xyz/2-SXJILMjHoQXj66aurkzg.jpg', '玫瑰金 ', '99', 260000, '220克', 0);
INSERT INTO `orders` VALUES (1207, '1586176805593100003', '【二手95新】劳力士 系列:迪通拿系列 型号:116505 材质:18k玫瑰金 镜面:蓝宝石玻璃 未使用', '\r\nhttp://productdata.fhxasdsada.xyz/2-SXJILMjHoQXj66aurkzg.jpg', '玫瑰金 ', '99', 260000, '220克', 0);
INSERT INTO `orders` VALUES (1208, '1586176805593100003', '【二手95新】劳力士 系列:迪通拿系列 型号:116505 材质:18k玫瑰金 镜面:蓝宝石玻璃 未使用', '\r\nhttp://productdata.fhxasdsada.xyz/2-SXJILMjHoQXj66aurkzg.jpg', '玫瑰金 ', '99', 260000, '220克', 0);
INSERT INTO `orders` VALUES (1209, '1586176805593100003', '【二手95新】劳力士 系列:迪通拿系列 型号:116505 材质:18k玫瑰金 镜面:蓝宝石玻璃 未使用', '\r\nhttp://productdata.fhxasdsada.xyz/2-SXJILMjHoQXj66aurkzg.jpg', '玫瑰金 ', '99', 260000, '220克', 0);
INSERT INTO `orders` VALUES (1210, '1586176805593100003', '【二手95新】劳力士 系列:迪通拿系列 型号:116505 材质:18k玫瑰金 镜面:蓝宝石玻璃 未使用', '\r\nhttp://productdata.fhxasdsada.xyz/2-SXJILMjHoQXj66aurkzg.jpg', '玫瑰金 ', '99', 260000, '220克', 0);
INSERT INTO `orders` VALUES (1211, '1586176805593100003', '【二手95新】劳力士 系列:迪通拿系列 型号:116505 材质:18k玫瑰金 镜面:蓝宝石玻璃 未使用', '\r\nhttp://productdata.fhxasdsada.xyz/2-SXJILMjHoQXj66aurkzg.jpg', '玫瑰金 ', '99', 260000, '220克', 0);
INSERT INTO `orders` VALUES (1212, '1586176805593100003', '【二手95新】劳力士 系列:迪通拿系列 型号:116505 材质:18k玫瑰金 镜面:蓝宝石玻璃 未使用', '\r\nhttp://productdata.fhxasdsada.xyz/2-SXJILMjHoQXj66aurkzg.jpg', '玫瑰金 ', '99', 260000, '220克', 0);
INSERT INTO `orders` VALUES (1213, '1586176805593100003', '【二手95新】劳力士 系列:迪通拿系列 型号:116505 材质:18k玫瑰金 镜面:蓝宝石玻璃 未使用', '\r\nhttp://productdata.fhxasdsada.xyz/2-SXJILMjHoQXj66aurkzg.jpg', '玫瑰金 ', '99', 260000, '220克', 0);
INSERT INTO `orders` VALUES (1214, '1586176805593100003', '【二手95新】劳力士 系列:迪通拿系列 型号:116505 材质:18k玫瑰金 镜面:蓝宝石玻璃 未使用', '\r\nhttp://productdata.fhxasdsada.xyz/2-SXJILMjHoQXj66aurkzg.jpg', '玫瑰金 ', '99', 260000, '220克', 0);
INSERT INTO `orders` VALUES (1215, '1586176805593100003', '【二手95新】劳力士 系列:迪通拿系列 型号:116505 材质:18k玫瑰金 镜面:蓝宝石玻璃 未使用', '\r\nhttp://productdata.fhxasdsada.xyz/2-SXJILMjHoQXj66aurkzg.jpg', '玫瑰金 ', '99', 260000, '220克', 0);
INSERT INTO `orders` VALUES (1216, '1586176805593100003', '【二手95新】劳力士 系列:迪通拿系列 型号:116505 材质:18k玫瑰金 镜面:蓝宝石玻璃 未使用', '\r\nhttp://productdata.fhxasdsada.xyz/2-SXJILMjHoQXj66aurkzg.jpg', '玫瑰金 ', '99', 260000, '220克', 0);
INSERT INTO `orders` VALUES (1217, '1586176805593100003', '【二手95新】劳力士 系列:迪通拿系列 型号:116505 材质:18k玫瑰金 镜面:蓝宝石玻璃 未使用', '\r\nhttp://productdata.fhxasdsada.xyz/2-SXJILMjHoQXj66aurkzg.jpg', '玫瑰金 ', '99', 260000, '220克', 0);
INSERT INTO `orders` VALUES (1218, '1586176805593100003', '【二手95新】劳力士 系列:迪通拿系列 型号:116505 材质:18k玫瑰金 镜面:蓝宝石玻璃 未使用', '\r\nhttp://productdata.fhxasdsada.xyz/2-SXJILMjHoQXj66aurkzg.jpg', '玫瑰金 ', '99', 260000, '220克', 0);
INSERT INTO `orders` VALUES (1219, '1586176805593100003', '【二手95新】劳力士 系列:迪通拿系列 型号:116505 材质:18k玫瑰金 镜面:蓝宝石玻璃 未使用', '\r\nhttp://productdata.fhxasdsada.xyz/2-SXJILMjHoQXj66aurkzg.jpg', '玫瑰金 ', '99', 260000, '220克', 0);
INSERT INTO `orders` VALUES (1220, '1586176805593100003', '【二手95新】劳力士 系列:迪通拿系列 型号:116505 材质:18k玫瑰金 镜面:蓝宝石玻璃 未使用', '\r\nhttp://productdata.fhxasdsada.xyz/2-SXJILMjHoQXj66aurkzg.jpg', '玫瑰金 ', '99', 260000, '220克', 0);
INSERT INTO `orders` VALUES (1221, '1586176805593100003', '【二手95新】劳力士 系列:迪通拿系列 型号:116505 材质:18k玫瑰金 镜面:蓝宝石玻璃 未使用', '\r\nhttp://productdata.fhxasdsada.xyz/2-SXJILMjHoQXj66aurkzg.jpg', '玫瑰金 ', '99', 260000, '220克', 0);
INSERT INTO `orders` VALUES (1222, '1586176805593100003', '【二手95新】劳力士 系列:迪通拿系列 型号:116505 材质:18k玫瑰金 镜面:蓝宝石玻璃 未使用', '\r\nhttp://productdata.fhxasdsada.xyz/2-SXJILMjHoQXj66aurkzg.jpg', '玫瑰金 ', '99', 260000, '220克', 0);
INSERT INTO `orders` VALUES (1223, '1586176805593100003', '【二手95新】劳力士 系列:迪通拿系列 型号:116505 材质:18k玫瑰金 镜面:蓝宝石玻璃 未使用', '\r\nhttp://productdata.fhxasdsada.xyz/2-SXJILMjHoQXj66aurkzg.jpg', '玫瑰金 ', '99', 260000, '220克', 0);
INSERT INTO `orders` VALUES (1224, '1586176805593100003', '【二手95新】劳力士 系列:迪通拿系列 型号:116505 材质:18k玫瑰金 镜面:蓝宝石玻璃 未使用', '\r\nhttp://productdata.fhxasdsada.xyz/2-SXJILMjHoQXj66aurkzg.jpg', '玫瑰金 ', '99', 260000, '220克', 0);
INSERT INTO `orders` VALUES (1225, '1586176805593100003', '【二手95新】劳力士 系列:迪通拿系列 型号:116505 材质:18k玫瑰金 镜面:蓝宝石玻璃 未使用', '\r\nhttp://productdata.fhxasdsada.xyz/2-SXJILMjHoQXj66aurkzg.jpg', '玫瑰金 ', '99', 260000, '220克', 0);
INSERT INTO `orders` VALUES (1226, '1586176805593100003', '【二手95新】劳力士 系列:迪通拿系列 型号:116505 材质:18k玫瑰金 镜面:蓝宝石玻璃 未使用', '\r\nhttp://productdata.fhxasdsada.xyz/2-SXJILMjHoQXj66aurkzg.jpg', '玫瑰金 ', '99', 260000, '220克', 0);
INSERT INTO `orders` VALUES (1227, '1586176805593100003', '【二手95新】劳力士 系列:迪通拿系列 型号:116505 材质:18k玫瑰金 镜面:蓝宝石玻璃 未使用', '\r\nhttp://productdata.fhxasdsada.xyz/2-SXJILMjHoQXj66aurkzg.jpg', '玫瑰金 ', '99', 260000, '220克', 0);
INSERT INTO `orders` VALUES (1228, '1586176805593100003', '【二手95新】劳力士 系列:迪通拿系列 型号:116505 材质:18k玫瑰金 镜面:蓝宝石玻璃 未使用', '\r\nhttp://productdata.fhxasdsada.xyz/2-SXJILMjHoQXj66aurkzg.jpg', '玫瑰金 ', '99', 260000, '220克', 0);
INSERT INTO `orders` VALUES (1229, '1586176805593100003', '【二手95新】劳力士 系列:迪通拿系列 型号:116505 材质:18k玫瑰金 镜面:蓝宝石玻璃 未使用', '\r\nhttp://productdata.fhxasdsada.xyz/2-SXJILMjHoQXj66aurkzg.jpg', '玫瑰金 ', '99', 260000, '220克', 0);
INSERT INTO `orders` VALUES (1230, '1586176805593100003', '【二手95新】劳力士 系列:迪通拿系列 型号:116505 材质:18k玫瑰金 镜面:蓝宝石玻璃 未使用', '\r\nhttp://productdata.fhxasdsada.xyz/2-SXJILMjHoQXj66aurkzg.jpg', '玫瑰金 ', '99', 260000, '220克', 0);
INSERT INTO `orders` VALUES (1231, '1586176805593100003', '【二手95新】劳力士 系列:迪通拿系列 型号:116505 材质:18k玫瑰金 镜面:蓝宝石玻璃 未使用', '\r\nhttp://productdata.fhxasdsada.xyz/2-SXJILMjHoQXj66aurkzg.jpg', '玫瑰金 ', '99', 260000, '220克', 0);
INSERT INTO `orders` VALUES (1232, '1586176805593100003', '【二手95新】劳力士 系列:迪通拿系列 型号:116505 材质:18k玫瑰金 镜面:蓝宝石玻璃 未使用', '\r\nhttp://productdata.fhxasdsada.xyz/2-SXJILMjHoQXj66aurkzg.jpg', '玫瑰金 ', '99', 260000, '220克', 0);
INSERT INTO `orders` VALUES (1233, '1586176805593100003', '【二手95新】劳力士 系列:迪通拿系列 型号:116505 材质:18k玫瑰金 镜面:蓝宝石玻璃 未使用', '\r\nhttp://productdata.fhxasdsada.xyz/2-SXJILMjHoQXj66aurkzg.jpg', '玫瑰金 ', '99', 260000, '220克', 0);
INSERT INTO `orders` VALUES (1234, '1586176805593100003', '【二手95新】劳力士 系列:迪通拿系列 型号:116505 材质:18k玫瑰金 镜面:蓝宝石玻璃 未使用', '\r\nhttp://productdata.fhxasdsada.xyz/2-SXJILMjHoQXj66aurkzg.jpg', '玫瑰金 ', '99', 260000, '220克', 0);
INSERT INTO `orders` VALUES (1235, '1586176805593100003', '【二手95新】劳力士 系列:迪通拿系列 型号:116505 材质:18k玫瑰金 镜面:蓝宝石玻璃 未使用', '\r\nhttp://productdata.fhxasdsada.xyz/2-SXJILMjHoQXj66aurkzg.jpg', '玫瑰金 ', '99', 260000, '220克', 0);
INSERT INTO `orders` VALUES (1236, '1586176805593100003', '【二手95新】劳力士 系列:迪通拿系列 型号:116505 材质:18k玫瑰金 镜面:蓝宝石玻璃 未使用', '\r\nhttp://productdata.fhxasdsada.xyz/2-SXJILMjHoQXj66aurkzg.jpg', '玫瑰金 ', '99', 260000, '220克', 0);
INSERT INTO `orders` VALUES (1237, '1586176805593100003', '【二手95新】劳力士 系列:迪通拿系列 型号:116505 材质:18k玫瑰金 镜面:蓝宝石玻璃 未使用', '\r\nhttp://productdata.fhxasdsada.xyz/2-SXJILMjHoQXj66aurkzg.jpg', '玫瑰金 ', '99', 260000, '220克', 0);
INSERT INTO `orders` VALUES (1238, '1586176805593100003', '【二手95新】劳力士 系列:迪通拿系列 型号:116505 材质:18k玫瑰金 镜面:蓝宝石玻璃 未使用', '\r\nhttp://productdata.fhxasdsada.xyz/2-SXJILMjHoQXj66aurkzg.jpg', '玫瑰金 ', '99', 260000, '220克', 0);
INSERT INTO `orders` VALUES (1239, '1586176805593100003', '【二手95新】劳力士 系列:迪通拿系列 型号:116505 材质:18k玫瑰金 镜面:蓝宝石玻璃 未使用', '\r\nhttp://productdata.fhxasdsada.xyz/2-SXJILMjHoQXj66aurkzg.jpg', '玫瑰金 ', '99', 260000, '220克', 0);
INSERT INTO `orders` VALUES (1240, '1586176805593100003', '【二手95新】劳力士 系列:迪通拿系列 型号:116505 材质:18k玫瑰金 镜面:蓝宝石玻璃 未使用', '\r\nhttp://productdata.fhxasdsada.xyz/2-SXJILMjHoQXj66aurkzg.jpg', '玫瑰金 ', '99', 260000, '220克', 0);
INSERT INTO `orders` VALUES (1241, '1586176805593100003', '【二手95新】劳力士 系列:迪通拿系列 型号:116505 材质:18k玫瑰金 镜面:蓝宝石玻璃 未使用', '\r\nhttp://productdata.fhxasdsada.xyz/2-SXJILMjHoQXj66aurkzg.jpg', '玫瑰金 ', '99', 260000, '220克', 0);
INSERT INTO `orders` VALUES (1242, '1586176805593100003', '【二手95新】劳力士 系列:迪通拿系列 型号:116505 材质:18k玫瑰金 镜面:蓝宝石玻璃 未使用', '\r\nhttp://productdata.fhxasdsada.xyz/2-SXJILMjHoQXj66aurkzg.jpg', '玫瑰金 ', '99', 260000, '220克', 0);
INSERT INTO `orders` VALUES (1243, '1586176805593100003', '【二手95新】劳力士 系列:迪通拿系列 型号:116505 材质:18k玫瑰金 镜面:蓝宝石玻璃 未使用', '\r\nhttp://productdata.fhxasdsada.xyz/2-SXJILMjHoQXj66aurkzg.jpg', '玫瑰金 ', '99', 260000, '220克', 0);
INSERT INTO `orders` VALUES (1244, '1586176805593100003', '【二手95新】劳力士 系列:迪通拿系列 型号:116505 材质:18k玫瑰金 镜面:蓝宝石玻璃 未使用', '\r\nhttp://productdata.fhxasdsada.xyz/2-SXJILMjHoQXj66aurkzg.jpg', '玫瑰金 ', '99', 260000, '220克', 0);
INSERT INTO `orders` VALUES (1245, '1586176805593100003', '【二手95新】劳力士 系列:迪通拿系列 型号:116505 材质:18k玫瑰金 镜面:蓝宝石玻璃 未使用', '\r\nhttp://productdata.fhxasdsada.xyz/2-SXJILMjHoQXj66aurkzg.jpg', '玫瑰金 ', '99', 260000, '220克', 0);
INSERT INTO `orders` VALUES (1246, '1586176805593100003', '【二手95新】劳力士 系列:迪通拿系列 型号:116505 材质:18k玫瑰金 镜面:蓝宝石玻璃 未使用', '\r\nhttp://productdata.fhxasdsada.xyz/2-SXJILMjHoQXj66aurkzg.jpg', '玫瑰金 ', '99', 260000, '220克', 0);
INSERT INTO `orders` VALUES (1247, '1586176805593100003', '【二手95新】劳力士 系列:迪通拿系列 型号:116505 材质:18k玫瑰金 镜面:蓝宝石玻璃 未使用', '\r\nhttp://productdata.fhxasdsada.xyz/2-SXJILMjHoQXj66aurkzg.jpg', '玫瑰金 ', '99', 260000, '220克', 0);
INSERT INTO `orders` VALUES (1248, '1586176805593100003', '【二手95新】劳力士 系列:迪通拿系列 型号:116505 材质:18k玫瑰金 镜面:蓝宝石玻璃 未使用', '\r\nhttp://productdata.fhxasdsada.xyz/2-SXJILMjHoQXj66aurkzg.jpg', '玫瑰金 ', '99', 260000, '220克', 0);
INSERT INTO `orders` VALUES (1249, '1586176805593100003', '【二手95新】劳力士 系列:迪通拿系列 型号:116505 材质:18k玫瑰金 镜面:蓝宝石玻璃 未使用', '\r\nhttp://productdata.fhxasdsada.xyz/2-SXJILMjHoQXj66aurkzg.jpg', '玫瑰金 ', '99', 260000, '220克', 0);
INSERT INTO `orders` VALUES (1250, '1586176805593100003', '【二手95新】劳力士 系列:迪通拿系列 型号:116505 材质:18k玫瑰金 镜面:蓝宝石玻璃 未使用', '\r\nhttp://productdata.fhxasdsada.xyz/2-SXJILMjHoQXj66aurkzg.jpg', '玫瑰金 ', '99', 260000, '220克', 0);
INSERT INTO `orders` VALUES (1251, '1586176805593100003', '【二手95新】劳力士 系列:迪通拿系列 型号:116505 材质:18k玫瑰金 镜面:蓝宝石玻璃 未使用', '\r\nhttp://productdata.fhxasdsada.xyz/2-SXJILMjHoQXj66aurkzg.jpg', '玫瑰金 ', '99', 260000, '220克', 0);
INSERT INTO `orders` VALUES (1252, '1586176805593100003', '【二手95新】劳力士 系列:迪通拿系列 型号:116505 材质:18k玫瑰金 镜面:蓝宝石玻璃 未使用', '\r\nhttp://productdata.fhxasdsada.xyz/2-SXJILMjHoQXj66aurkzg.jpg', '玫瑰金 ', '99', 260000, '220克', 0);
INSERT INTO `orders` VALUES (1253, '1586176805593100003', '【二手95新】劳力士 系列:迪通拿系列 型号:116505 材质:18k玫瑰金 镜面:蓝宝石玻璃 未使用', '\r\nhttp://productdata.fhxasdsada.xyz/2-SXJILMjHoQXj66aurkzg.jpg', '玫瑰金 ', '99', 260000, '220克', 0);
INSERT INTO `orders` VALUES (1254, '1586176805593100003', '【二手95新】劳力士 系列:迪通拿系列 型号:116505 材质:18k玫瑰金 镜面:蓝宝石玻璃 未使用', '\r\nhttp://productdata.fhxasdsada.xyz/2-SXJILMjHoQXj66aurkzg.jpg', '玫瑰金 ', '99', 260000, '220克', 0);
INSERT INTO `orders` VALUES (1255, '1586176805593100003', '【二手95新】劳力士 系列:迪通拿系列 型号:116505 材质:18k玫瑰金 镜面:蓝宝石玻璃 未使用', '\r\nhttp://productdata.fhxasdsada.xyz/2-SXJILMjHoQXj66aurkzg.jpg', '玫瑰金 ', '99', 260000, '220克', 0);
INSERT INTO `orders` VALUES (1256, '1586176805593100003', '【二手95新】劳力士 系列:迪通拿系列 型号:116505 材质:18k玫瑰金 镜面:蓝宝石玻璃 未使用', '\r\nhttp://productdata.fhxasdsada.xyz/2-SXJILMjHoQXj66aurkzg.jpg', '玫瑰金 ', '99', 260000, '220克', 0);
INSERT INTO `orders` VALUES (1257, '1586176805593100003', '【二手95新】劳力士 系列:迪通拿系列 型号:116505 材质:18k玫瑰金 镜面:蓝宝石玻璃 未使用', '\r\nhttp://productdata.fhxasdsada.xyz/2-SXJILMjHoQXj66aurkzg.jpg', '玫瑰金 ', '99', 260000, '220克', 0);
INSERT INTO `orders` VALUES (1258, '1586176805593100003', '【二手95新】劳力士 系列:迪通拿系列 型号:116505 材质:18k玫瑰金 镜面:蓝宝石玻璃 未使用', '\r\nhttp://productdata.fhxasdsada.xyz/2-SXJILMjHoQXj66aurkzg.jpg', '玫瑰金 ', '99', 260000, '220克', 0);
INSERT INTO `orders` VALUES (1259, '1586176805593100003', '【二手95新】劳力士 系列:迪通拿系列 型号:116505 材质:18k玫瑰金 镜面:蓝宝石玻璃 未使用', '\r\nhttp://productdata.fhxasdsada.xyz/2-SXJILMjHoQXj66aurkzg.jpg', '玫瑰金 ', '99', 260000, '220克', 0);
INSERT INTO `orders` VALUES (1260, '1586176805593100003', '【二手95新】劳力士 系列:迪通拿系列 型号:116505 材质:18k玫瑰金 镜面:蓝宝石玻璃 未使用', '\r\nhttp://productdata.fhxasdsada.xyz/2-SXJILMjHoQXj66aurkzg.jpg', '玫瑰金 ', '99', 260000, '220克', 0);
INSERT INTO `orders` VALUES (1261, '1586176805593100003', '【二手95新】劳力士 系列:迪通拿系列 型号:116505 材质:18k玫瑰金 镜面:蓝宝石玻璃 未使用', '\r\nhttp://productdata.fhxasdsada.xyz/2-SXJILMjHoQXj66aurkzg.jpg', '玫瑰金 ', '99', 260000, '220克', 0);
INSERT INTO `orders` VALUES (1262, '1586176805593100003', '【二手95新】劳力士 系列:迪通拿系列 型号:116505 材质:18k玫瑰金 镜面:蓝宝石玻璃 未使用', '\r\nhttp://productdata.fhxasdsada.xyz/2-SXJILMjHoQXj66aurkzg.jpg', '玫瑰金 ', '99', 260000, '220克', 0);
INSERT INTO `orders` VALUES (1263, '1586176805593100003', '【二手95新】劳力士 系列:迪通拿系列 型号:116505 材质:18k玫瑰金 镜面:蓝宝石玻璃 未使用', '\r\nhttp://productdata.fhxasdsada.xyz/2-SXJILMjHoQXj66aurkzg.jpg', '玫瑰金 ', '99', 260000, '220克', 0);
INSERT INTO `orders` VALUES (1264, '1586176805593100003', '【二手95新】劳力士 系列:迪通拿系列 型号:116505 材质:18k玫瑰金 镜面:蓝宝石玻璃 未使用', '\r\nhttp://productdata.fhxasdsada.xyz/2-SXJILMjHoQXj66aurkzg.jpg', '玫瑰金 ', '99', 260000, '220克', 0);
INSERT INTO `orders` VALUES (1265, '1586176805593100003', '【二手95新】劳力士 系列:迪通拿系列 型号:116505 材质:18k玫瑰金 镜面:蓝宝石玻璃 未使用', '\r\nhttp://productdata.fhxasdsada.xyz/2-SXJILMjHoQXj66aurkzg.jpg', '玫瑰金 ', '99', 260000, '220克', 0);
INSERT INTO `orders` VALUES (1266, '1586176805593100003', '【二手95新】劳力士 系列:迪通拿系列 型号:116505 材质:18k玫瑰金 镜面:蓝宝石玻璃 未使用', '\r\nhttp://productdata.fhxasdsada.xyz/2-SXJILMjHoQXj66aurkzg.jpg', '玫瑰金 ', '99', 260000, '220克', 0);
INSERT INTO `orders` VALUES (1267, '1586176805593100003', '【二手95新】劳力士 系列:迪通拿系列 型号:116505 材质:18k玫瑰金 镜面:蓝宝石玻璃 未使用', '\r\nhttp://productdata.fhxasdsada.xyz/2-SXJILMjHoQXj66aurkzg.jpg', '玫瑰金 ', '99', 260000, '220克', 0);
INSERT INTO `orders` VALUES (1268, '1586176805593100003', '【二手95新】劳力士 系列:迪通拿系列 型号:116505 材质:18k玫瑰金 镜面:蓝宝石玻璃 未使用', '\r\nhttp://productdata.fhxasdsada.xyz/2-SXJILMjHoQXj66aurkzg.jpg', '玫瑰金 ', '99', 260000, '220克', 0);
INSERT INTO `orders` VALUES (1269, '1586176805593100003', '【二手95新】劳力士 系列:迪通拿系列 型号:116505 材质:18k玫瑰金 镜面:蓝宝石玻璃 未使用', '\r\nhttp://productdata.fhxasdsada.xyz/2-SXJILMjHoQXj66aurkzg.jpg', '玫瑰金 ', '99', 260000, '220克', 0);
INSERT INTO `orders` VALUES (1270, '1586176805593100003', '【二手95新】劳力士 系列:迪通拿系列 型号:116505 材质:18k玫瑰金 镜面:蓝宝石玻璃 未使用', '\r\nhttp://productdata.fhxasdsada.xyz/2-SXJILMjHoQXj66aurkzg.jpg', '玫瑰金 ', '99', 260000, '220克', 0);
INSERT INTO `orders` VALUES (1271, '1586176805593100003', '【二手95新】劳力士 系列:迪通拿系列 型号:116505 材质:18k玫瑰金 镜面:蓝宝石玻璃 未使用', '\r\nhttp://productdata.fhxasdsada.xyz/2-SXJILMjHoQXj66aurkzg.jpg', '玫瑰金 ', '99', 260000, '220克', 0);
INSERT INTO `orders` VALUES (1272, '1586176805593100003', '【二手95新】劳力士 系列:迪通拿系列 型号:116505 材质:18k玫瑰金 镜面:蓝宝石玻璃 未使用', '\r\nhttp://productdata.fhxasdsada.xyz/2-SXJILMjHoQXj66aurkzg.jpg', '玫瑰金 ', '99', 260000, '220克', 0);
INSERT INTO `orders` VALUES (1273, '1586176805593100003', '【二手95新】劳力士 系列:迪通拿系列 型号:116505 材质:18k玫瑰金 镜面:蓝宝石玻璃 未使用', '\r\nhttp://productdata.fhxasdsada.xyz/2-SXJILMjHoQXj66aurkzg.jpg', '玫瑰金 ', '99', 260000, '220克', 0);
INSERT INTO `orders` VALUES (1274, '1586176805593100003', '【二手95新】劳力士 系列:迪通拿系列 型号:116505 材质:18k玫瑰金 镜面:蓝宝石玻璃 未使用', '\r\nhttp://productdata.fhxasdsada.xyz/2-SXJILMjHoQXj66aurkzg.jpg', '玫瑰金 ', '99', 260000, '220克', 0);
INSERT INTO `orders` VALUES (1275, '1586176805593100003', '【二手95新】劳力士 系列:迪通拿系列 型号:116505 材质:18k玫瑰金 镜面:蓝宝石玻璃 未使用', '\r\nhttp://productdata.fhxasdsada.xyz/2-SXJILMjHoQXj66aurkzg.jpg', '玫瑰金 ', '99', 260000, '220克', 0);
INSERT INTO `orders` VALUES (1276, '1586176805593100003', '【二手95新】劳力士 系列:迪通拿系列 型号:116505 材质:18k玫瑰金 镜面:蓝宝石玻璃 未使用', '\r\nhttp://productdata.fhxasdsada.xyz/2-SXJILMjHoQXj66aurkzg.jpg', '玫瑰金 ', '99', 260000, '220克', 0);
INSERT INTO `orders` VALUES (1277, '1586176805593100003', '【二手95新】劳力士 系列:迪通拿系列 型号:116505 材质:18k玫瑰金 镜面:蓝宝石玻璃 未使用', '\r\nhttp://productdata.fhxasdsada.xyz/2-SXJILMjHoQXj66aurkzg.jpg', '玫瑰金 ', '99', 260000, '220克', 0);
INSERT INTO `orders` VALUES (1278, '1586176805593100003', '【二手95新】劳力士 系列:迪通拿系列 型号:116505 材质:18k玫瑰金 镜面:蓝宝石玻璃 未使用', '\r\nhttp://productdata.fhxasdsada.xyz/2-SXJILMjHoQXj66aurkzg.jpg', '玫瑰金 ', '99', 260000, '220克', 0);
INSERT INTO `orders` VALUES (1279, '1586176805593100003', '【二手95新】劳力士 系列:迪通拿系列 型号:116505 材质:18k玫瑰金 镜面:蓝宝石玻璃 未使用', '\r\nhttp://productdata.fhxasdsada.xyz/2-SXJILMjHoQXj66aurkzg.jpg', '玫瑰金 ', '99', 260000, '220克', 0);
INSERT INTO `orders` VALUES (1280, '1586176805593100003', '【二手95新】劳力士 系列:迪通拿系列 型号:116505 材质:18k玫瑰金 镜面:蓝宝石玻璃 未使用', '\r\nhttp://productdata.fhxasdsada.xyz/2-SXJILMjHoQXj66aurkzg.jpg', '玫瑰金 ', '99', 260000, '220克', 0);
INSERT INTO `orders` VALUES (1281, '1586177041772100004', '【二手95新】劳力士 系列:迪通拿系列 型号:116505 材质:18k玫瑰金 镜面:蓝宝石玻璃 未使用', '\r\nhttp://productdata.fhxasdsada.xyz/2-SXJILMjHoQXj66aurkzg.jpg', '玫瑰金 ', '99', 260000, '220克', 0);
INSERT INTO `orders` VALUES (1282, '1586177041772100004', '【二手95新】劳力士 系列:迪通拿系列 型号:116505 材质:18k玫瑰金 镜面:蓝宝石玻璃 未使用', '\r\nhttp://productdata.fhxasdsada.xyz/2-SXJILMjHoQXj66aurkzg.jpg', '玫瑰金 ', '99', 260000, '220克', 0);
INSERT INTO `orders` VALUES (1283, '1586177041772100004', '【二手95新】劳力士 系列:迪通拿系列 型号:116505 材质:18k玫瑰金 镜面:蓝宝石玻璃 未使用', '\r\nhttp://productdata.fhxasdsada.xyz/2-SXJILMjHoQXj66aurkzg.jpg', '玫瑰金 ', '99', 260000, '220克', 0);
INSERT INTO `orders` VALUES (1284, '1586177041772100004', '【二手95新】劳力士 系列:迪通拿系列 型号:116505 材质:18k玫瑰金 镜面:蓝宝石玻璃 未使用', '\r\nhttp://productdata.fhxasdsada.xyz/2-SXJILMjHoQXj66aurkzg.jpg', '玫瑰金 ', '99', 260000, '220克', 0);
INSERT INTO `orders` VALUES (1285, '1586177041772100004', '【二手95新】劳力士 系列:迪通拿系列 型号:116505 材质:18k玫瑰金 镜面:蓝宝石玻璃 未使用', '\r\nhttp://productdata.fhxasdsada.xyz/2-SXJILMjHoQXj66aurkzg.jpg', '玫瑰金 ', '99', 260000, '220克', 0);
INSERT INTO `orders` VALUES (1286, '1586177041772100004', '【二手95新】劳力士 系列:迪通拿系列 型号:116505 材质:18k玫瑰金 镜面:蓝宝石玻璃 未使用', '\r\nhttp://productdata.fhxasdsada.xyz/2-SXJILMjHoQXj66aurkzg.jpg', '玫瑰金 ', '99', 260000, '220克', 0);
INSERT INTO `orders` VALUES (1287, '1586177041772100004', '【二手95新】劳力士 系列:迪通拿系列 型号:116505 材质:18k玫瑰金 镜面:蓝宝石玻璃 未使用', '\r\nhttp://productdata.fhxasdsada.xyz/2-SXJILMjHoQXj66aurkzg.jpg', '玫瑰金 ', '99', 260000, '220克', 0);
INSERT INTO `orders` VALUES (1288, '1586177041772100004', '【二手95新】劳力士 系列:迪通拿系列 型号:116505 材质:18k玫瑰金 镜面:蓝宝石玻璃 未使用', '\r\nhttp://productdata.fhxasdsada.xyz/2-SXJILMjHoQXj66aurkzg.jpg', '玫瑰金 ', '99', 260000, '220克', 0);
INSERT INTO `orders` VALUES (1289, '1586177041772100004', '【二手95新】劳力士 系列:迪通拿系列 型号:116505 材质:18k玫瑰金 镜面:蓝宝石玻璃 未使用', '\r\nhttp://productdata.fhxasdsada.xyz/2-SXJILMjHoQXj66aurkzg.jpg', '玫瑰金 ', '99', 260000, '220克', 0);
INSERT INTO `orders` VALUES (1290, '1586177041772100004', '【二手95新】劳力士 系列:迪通拿系列 型号:116505 材质:18k玫瑰金 镜面:蓝宝石玻璃 未使用', '\r\nhttp://productdata.fhxasdsada.xyz/2-SXJILMjHoQXj66aurkzg.jpg', '玫瑰金 ', '99', 260000, '220克', 0);
INSERT INTO `orders` VALUES (1291, '1586177041772100004', '【二手95新】劳力士 系列:迪通拿系列 型号:116505 材质:18k玫瑰金 镜面:蓝宝石玻璃 未使用', '\r\nhttp://productdata.fhxasdsada.xyz/2-SXJILMjHoQXj66aurkzg.jpg', '玫瑰金 ', '99', 260000, '220克', 0);
INSERT INTO `orders` VALUES (1292, '1586177041772100004', '【二手95新】劳力士 系列:迪通拿系列 型号:116505 材质:18k玫瑰金 镜面:蓝宝石玻璃 未使用', '\r\nhttp://productdata.fhxasdsada.xyz/2-SXJILMjHoQXj66aurkzg.jpg', '玫瑰金 ', '99', 260000, '220克', 0);
INSERT INTO `orders` VALUES (1293, '1586177041772100004', '【二手95新】劳力士 系列:迪通拿系列 型号:116505 材质:18k玫瑰金 镜面:蓝宝石玻璃 未使用', '\r\nhttp://productdata.fhxasdsada.xyz/2-SXJILMjHoQXj66aurkzg.jpg', '玫瑰金 ', '99', 260000, '220克', 0);
INSERT INTO `orders` VALUES (1294, '1586177041772100004', '【二手95新】劳力士 系列:迪通拿系列 型号:116505 材质:18k玫瑰金 镜面:蓝宝石玻璃 未使用', '\r\nhttp://productdata.fhxasdsada.xyz/2-SXJILMjHoQXj66aurkzg.jpg', '玫瑰金 ', '99', 260000, '220克', 0);
INSERT INTO `orders` VALUES (1295, '1586177041772100004', '【二手95新】劳力士 系列:迪通拿系列 型号:116505 材质:18k玫瑰金 镜面:蓝宝石玻璃 未使用', '\r\nhttp://productdata.fhxasdsada.xyz/2-SXJILMjHoQXj66aurkzg.jpg', '玫瑰金 ', '99', 260000, '220克', 0);
INSERT INTO `orders` VALUES (1296, '1586177041772100004', '【二手95新】劳力士 系列:迪通拿系列 型号:116505 材质:18k玫瑰金 镜面:蓝宝石玻璃 未使用', '\r\nhttp://productdata.fhxasdsada.xyz/2-SXJILMjHoQXj66aurkzg.jpg', '玫瑰金 ', '99', 260000, '220克', 0);
INSERT INTO `orders` VALUES (1297, '1586177041772100004', '【二手95新】劳力士 系列:迪通拿系列 型号:116505 材质:18k玫瑰金 镜面:蓝宝石玻璃 未使用', '\r\nhttp://productdata.fhxasdsada.xyz/2-SXJILMjHoQXj66aurkzg.jpg', '玫瑰金 ', '99', 260000, '220克', 0);
INSERT INTO `orders` VALUES (1298, '1586177041772100004', '【二手95新】劳力士 系列:迪通拿系列 型号:116505 材质:18k玫瑰金 镜面:蓝宝石玻璃 未使用', '\r\nhttp://productdata.fhxasdsada.xyz/2-SXJILMjHoQXj66aurkzg.jpg', '玫瑰金 ', '99', 260000, '220克', 0);
INSERT INTO `orders` VALUES (1299, '1586177041772100004', '【二手95新】劳力士 系列:迪通拿系列 型号:116505 材质:18k玫瑰金 镜面:蓝宝石玻璃 未使用', '\r\nhttp://productdata.fhxasdsada.xyz/2-SXJILMjHoQXj66aurkzg.jpg', '玫瑰金 ', '99', 260000, '220克', 0);
INSERT INTO `orders` VALUES (1300, '1586177041772100004', '【二手95新】劳力士 系列:迪通拿系列 型号:116505 材质:18k玫瑰金 镜面:蓝宝石玻璃 未使用', '\r\nhttp://productdata.fhxasdsada.xyz/2-SXJILMjHoQXj66aurkzg.jpg', '玫瑰金 ', '99', 260000, '220克', 0);
INSERT INTO `orders` VALUES (1301, '1586177041772100004', '【二手95新】劳力士 系列:迪通拿系列 型号:116505 材质:18k玫瑰金 镜面:蓝宝石玻璃 未使用', '\r\nhttp://productdata.fhxasdsada.xyz/2-SXJILMjHoQXj66aurkzg.jpg', '玫瑰金 ', '99', 260000, '220克', 0);
INSERT INTO `orders` VALUES (1302, '1586177041772100004', '【二手95新】劳力士 系列:迪通拿系列 型号:116505 材质:18k玫瑰金 镜面:蓝宝石玻璃 未使用', '\r\nhttp://productdata.fhxasdsada.xyz/2-SXJILMjHoQXj66aurkzg.jpg', '玫瑰金 ', '99', 260000, '220克', 0);
INSERT INTO `orders` VALUES (1303, '1586177041772100004', '【二手95新】劳力士 系列:迪通拿系列 型号:116505 材质:18k玫瑰金 镜面:蓝宝石玻璃 未使用', '\r\nhttp://productdata.fhxasdsada.xyz/2-SXJILMjHoQXj66aurkzg.jpg', '玫瑰金 ', '99', 260000, '220克', 0);
INSERT INTO `orders` VALUES (1304, '1586177041772100004', '【二手95新】劳力士 系列:迪通拿系列 型号:116505 材质:18k玫瑰金 镜面:蓝宝石玻璃 未使用', '\r\nhttp://productdata.fhxasdsada.xyz/2-SXJILMjHoQXj66aurkzg.jpg', '玫瑰金 ', '99', 260000, '220克', 0);
INSERT INTO `orders` VALUES (1305, '1586177041772100004', '【二手95新】劳力士 系列:迪通拿系列 型号:116505 材质:18k玫瑰金 镜面:蓝宝石玻璃 未使用', '\r\nhttp://productdata.fhxasdsada.xyz/2-SXJILMjHoQXj66aurkzg.jpg', '玫瑰金 ', '99', 260000, '220克', 0);
INSERT INTO `orders` VALUES (1306, '1586177041772100004', '【二手95新】劳力士 系列:迪通拿系列 型号:116505 材质:18k玫瑰金 镜面:蓝宝石玻璃 未使用', '\r\nhttp://productdata.fhxasdsada.xyz/2-SXJILMjHoQXj66aurkzg.jpg', '玫瑰金 ', '99', 260000, '220克', 0);
INSERT INTO `orders` VALUES (1307, '1586177041772100004', '【二手95新】劳力士 系列:迪通拿系列 型号:116505 材质:18k玫瑰金 镜面:蓝宝石玻璃 未使用', '\r\nhttp://productdata.fhxasdsada.xyz/2-SXJILMjHoQXj66aurkzg.jpg', '玫瑰金 ', '99', 260000, '220克', 0);
INSERT INTO `orders` VALUES (1308, '1586177041772100004', '【二手95新】劳力士 系列:迪通拿系列 型号:116505 材质:18k玫瑰金 镜面:蓝宝石玻璃 未使用', '\r\nhttp://productdata.fhxasdsada.xyz/2-SXJILMjHoQXj66aurkzg.jpg', '玫瑰金 ', '99', 260000, '220克', 0);
INSERT INTO `orders` VALUES (1309, '1586177041772100004', '【二手95新】劳力士 系列:迪通拿系列 型号:116505 材质:18k玫瑰金 镜面:蓝宝石玻璃 未使用', '\r\nhttp://productdata.fhxasdsada.xyz/2-SXJILMjHoQXj66aurkzg.jpg', '玫瑰金 ', '99', 260000, '220克', 0);
INSERT INTO `orders` VALUES (1310, '1586177041772100004', '【二手95新】劳力士 系列:迪通拿系列 型号:116505 材质:18k玫瑰金 镜面:蓝宝石玻璃 未使用', '\r\nhttp://productdata.fhxasdsada.xyz/2-SXJILMjHoQXj66aurkzg.jpg', '玫瑰金 ', '99', 260000, '220克', 0);
INSERT INTO `orders` VALUES (1311, '1586177041772100004', '【二手95新】劳力士 系列:迪通拿系列 型号:116505 材质:18k玫瑰金 镜面:蓝宝石玻璃 未使用', '\r\nhttp://productdata.fhxasdsada.xyz/2-SXJILMjHoQXj66aurkzg.jpg', '玫瑰金 ', '99', 260000, '220克', 0);
INSERT INTO `orders` VALUES (1312, '1586177041772100004', '【二手95新】劳力士 系列:迪通拿系列 型号:116505 材质:18k玫瑰金 镜面:蓝宝石玻璃 未使用', '\r\nhttp://productdata.fhxasdsada.xyz/2-SXJILMjHoQXj66aurkzg.jpg', '玫瑰金 ', '99', 260000, '220克', 0);
INSERT INTO `orders` VALUES (1313, '1586177041772100004', '【二手95新】劳力士 系列:迪通拿系列 型号:116505 材质:18k玫瑰金 镜面:蓝宝石玻璃 未使用', '\r\nhttp://productdata.fhxasdsada.xyz/2-SXJILMjHoQXj66aurkzg.jpg', '玫瑰金 ', '99', 260000, '220克', 0);
INSERT INTO `orders` VALUES (1314, '1586177041772100004', '【二手95新】劳力士 系列:迪通拿系列 型号:116505 材质:18k玫瑰金 镜面:蓝宝石玻璃 未使用', '\r\nhttp://productdata.fhxasdsada.xyz/2-SXJILMjHoQXj66aurkzg.jpg', '玫瑰金 ', '99', 260000, '220克', 0);
INSERT INTO `orders` VALUES (1315, '1586177041772100004', '【二手95新】劳力士 系列:迪通拿系列 型号:116505 材质:18k玫瑰金 镜面:蓝宝石玻璃 未使用', '\r\nhttp://productdata.fhxasdsada.xyz/2-SXJILMjHoQXj66aurkzg.jpg', '玫瑰金 ', '99', 260000, '220克', 0);
INSERT INTO `orders` VALUES (1316, '1586177041772100004', '【二手95新】劳力士 系列:迪通拿系列 型号:116505 材质:18k玫瑰金 镜面:蓝宝石玻璃 未使用', '\r\nhttp://productdata.fhxasdsada.xyz/2-SXJILMjHoQXj66aurkzg.jpg', '玫瑰金 ', '99', 260000, '220克', 0);
INSERT INTO `orders` VALUES (1317, '1586177041772100004', '【二手95新】劳力士 系列:迪通拿系列 型号:116505 材质:18k玫瑰金 镜面:蓝宝石玻璃 未使用', '\r\nhttp://productdata.fhxasdsada.xyz/2-SXJILMjHoQXj66aurkzg.jpg', '玫瑰金 ', '99', 260000, '220克', 0);
INSERT INTO `orders` VALUES (1318, '1586177041772100004', '【二手95新】劳力士 系列:迪通拿系列 型号:116505 材质:18k玫瑰金 镜面:蓝宝石玻璃 未使用', '\r\nhttp://productdata.fhxasdsada.xyz/2-SXJILMjHoQXj66aurkzg.jpg', '玫瑰金 ', '99', 260000, '220克', 0);
INSERT INTO `orders` VALUES (1319, '1586177041772100004', '【二手95新】劳力士 系列:迪通拿系列 型号:116505 材质:18k玫瑰金 镜面:蓝宝石玻璃 未使用', '\r\nhttp://productdata.fhxasdsada.xyz/2-SXJILMjHoQXj66aurkzg.jpg', '玫瑰金 ', '99', 260000, '220克', 0);
INSERT INTO `orders` VALUES (1320, '1586177041772100004', '【二手95新】劳力士 系列:迪通拿系列 型号:116505 材质:18k玫瑰金 镜面:蓝宝石玻璃 未使用', '\r\nhttp://productdata.fhxasdsada.xyz/2-SXJILMjHoQXj66aurkzg.jpg', '玫瑰金 ', '99', 260000, '220克', 0);
INSERT INTO `orders` VALUES (1321, '1586177041772100004', '【二手95新】劳力士 系列:迪通拿系列 型号:116505 材质:18k玫瑰金 镜面:蓝宝石玻璃 未使用', '\r\nhttp://productdata.fhxasdsada.xyz/2-SXJILMjHoQXj66aurkzg.jpg', '玫瑰金 ', '99', 260000, '220克', 0);
INSERT INTO `orders` VALUES (1322, '1586177041772100004', '【二手95新】劳力士 系列:迪通拿系列 型号:116505 材质:18k玫瑰金 镜面:蓝宝石玻璃 未使用', '\r\nhttp://productdata.fhxasdsada.xyz/2-SXJILMjHoQXj66aurkzg.jpg', '玫瑰金 ', '99', 260000, '220克', 0);
INSERT INTO `orders` VALUES (1323, '1586177041772100004', '【二手95新】劳力士 系列:迪通拿系列 型号:116505 材质:18k玫瑰金 镜面:蓝宝石玻璃 未使用', '\r\nhttp://productdata.fhxasdsada.xyz/2-SXJILMjHoQXj66aurkzg.jpg', '玫瑰金 ', '99', 260000, '220克', 0);
INSERT INTO `orders` VALUES (1324, '1586177041772100004', '【二手95新】劳力士 系列:迪通拿系列 型号:116505 材质:18k玫瑰金 镜面:蓝宝石玻璃 未使用', '\r\nhttp://productdata.fhxasdsada.xyz/2-SXJILMjHoQXj66aurkzg.jpg', '玫瑰金 ', '99', 260000, '220克', 0);
INSERT INTO `orders` VALUES (1325, '1586177041772100004', '【二手95新】劳力士 系列:迪通拿系列 型号:116505 材质:18k玫瑰金 镜面:蓝宝石玻璃 未使用', '\r\nhttp://productdata.fhxasdsada.xyz/2-SXJILMjHoQXj66aurkzg.jpg', '玫瑰金 ', '99', 260000, '220克', 0);
INSERT INTO `orders` VALUES (1326, '1586177041772100004', '【二手95新】劳力士 系列:迪通拿系列 型号:116505 材质:18k玫瑰金 镜面:蓝宝石玻璃 未使用', '\r\nhttp://productdata.fhxasdsada.xyz/2-SXJILMjHoQXj66aurkzg.jpg', '玫瑰金 ', '99', 260000, '220克', 0);
INSERT INTO `orders` VALUES (1327, '1586177041772100004', '【二手95新】劳力士 系列:迪通拿系列 型号:116505 材质:18k玫瑰金 镜面:蓝宝石玻璃 未使用', '\r\nhttp://productdata.fhxasdsada.xyz/2-SXJILMjHoQXj66aurkzg.jpg', '玫瑰金 ', '99', 260000, '220克', 0);
INSERT INTO `orders` VALUES (1328, '1586177041772100004', '【二手95新】劳力士 系列:迪通拿系列 型号:116505 材质:18k玫瑰金 镜面:蓝宝石玻璃 未使用', '\r\nhttp://productdata.fhxasdsada.xyz/2-SXJILMjHoQXj66aurkzg.jpg', '玫瑰金 ', '99', 260000, '220克', 0);
INSERT INTO `orders` VALUES (1329, '1586177041772100004', '【二手95新】劳力士 系列:迪通拿系列 型号:116505 材质:18k玫瑰金 镜面:蓝宝石玻璃 未使用', '\r\nhttp://productdata.fhxasdsada.xyz/2-SXJILMjHoQXj66aurkzg.jpg', '玫瑰金 ', '99', 260000, '220克', 0);
INSERT INTO `orders` VALUES (1330, '1586177041772100004', '【二手95新】劳力士 系列:迪通拿系列 型号:116505 材质:18k玫瑰金 镜面:蓝宝石玻璃 未使用', '\r\nhttp://productdata.fhxasdsada.xyz/2-SXJILMjHoQXj66aurkzg.jpg', '玫瑰金 ', '99', 260000, '220克', 0);
INSERT INTO `orders` VALUES (1331, '1586177041772100004', '【二手95新】劳力士 系列:迪通拿系列 型号:116505 材质:18k玫瑰金 镜面:蓝宝石玻璃 未使用', '\r\nhttp://productdata.fhxasdsada.xyz/2-SXJILMjHoQXj66aurkzg.jpg', '玫瑰金 ', '99', 260000, '220克', 0);
INSERT INTO `orders` VALUES (1332, '1586177041772100004', '【二手95新】劳力士 系列:迪通拿系列 型号:116505 材质:18k玫瑰金 镜面:蓝宝石玻璃 未使用', '\r\nhttp://productdata.fhxasdsada.xyz/2-SXJILMjHoQXj66aurkzg.jpg', '玫瑰金 ', '99', 260000, '220克', 0);
INSERT INTO `orders` VALUES (1333, '1586177041772100004', '【二手95新】劳力士 系列:迪通拿系列 型号:116505 材质:18k玫瑰金 镜面:蓝宝石玻璃 未使用', '\r\nhttp://productdata.fhxasdsada.xyz/2-SXJILMjHoQXj66aurkzg.jpg', '玫瑰金 ', '99', 260000, '220克', 0);
INSERT INTO `orders` VALUES (1334, '1586177041772100004', '【二手95新】劳力士 系列:迪通拿系列 型号:116505 材质:18k玫瑰金 镜面:蓝宝石玻璃 未使用', '\r\nhttp://productdata.fhxasdsada.xyz/2-SXJILMjHoQXj66aurkzg.jpg', '玫瑰金 ', '99', 260000, '220克', 0);
INSERT INTO `orders` VALUES (1335, '1586177041772100004', '【二手95新】劳力士 系列:迪通拿系列 型号:116505 材质:18k玫瑰金 镜面:蓝宝石玻璃 未使用', '\r\nhttp://productdata.fhxasdsada.xyz/2-SXJILMjHoQXj66aurkzg.jpg', '玫瑰金 ', '99', 260000, '220克', 0);
INSERT INTO `orders` VALUES (1336, '1586177041772100004', '【二手95新】劳力士 系列:迪通拿系列 型号:116505 材质:18k玫瑰金 镜面:蓝宝石玻璃 未使用', '\r\nhttp://productdata.fhxasdsada.xyz/2-SXJILMjHoQXj66aurkzg.jpg', '玫瑰金 ', '99', 260000, '220克', 0);
INSERT INTO `orders` VALUES (1337, '1586177041772100004', '【二手95新】劳力士 系列:迪通拿系列 型号:116505 材质:18k玫瑰金 镜面:蓝宝石玻璃 未使用', '\r\nhttp://productdata.fhxasdsada.xyz/2-SXJILMjHoQXj66aurkzg.jpg', '玫瑰金 ', '99', 260000, '220克', 0);
INSERT INTO `orders` VALUES (1338, '1586177041772100004', '【二手95新】劳力士 系列:迪通拿系列 型号:116505 材质:18k玫瑰金 镜面:蓝宝石玻璃 未使用', '\r\nhttp://productdata.fhxasdsada.xyz/2-SXJILMjHoQXj66aurkzg.jpg', '玫瑰金 ', '99', 260000, '220克', 0);
INSERT INTO `orders` VALUES (1339, '1586177041772100004', '【二手95新】劳力士 系列:迪通拿系列 型号:116505 材质:18k玫瑰金 镜面:蓝宝石玻璃 未使用', '\r\nhttp://productdata.fhxasdsada.xyz/2-SXJILMjHoQXj66aurkzg.jpg', '玫瑰金 ', '99', 260000, '220克', 0);
INSERT INTO `orders` VALUES (1340, '1586177041772100004', '【二手95新】劳力士 系列:迪通拿系列 型号:116505 材质:18k玫瑰金 镜面:蓝宝石玻璃 未使用', '\r\nhttp://productdata.fhxasdsada.xyz/2-SXJILMjHoQXj66aurkzg.jpg', '玫瑰金 ', '99', 260000, '220克', 0);
INSERT INTO `orders` VALUES (1341, '1586177041772100004', '【二手95新】劳力士 系列:迪通拿系列 型号:116505 材质:18k玫瑰金 镜面:蓝宝石玻璃 未使用', '\r\nhttp://productdata.fhxasdsada.xyz/2-SXJILMjHoQXj66aurkzg.jpg', '玫瑰金 ', '99', 260000, '220克', 0);
INSERT INTO `orders` VALUES (1342, '1586177041772100004', '【二手95新】劳力士 系列:迪通拿系列 型号:116505 材质:18k玫瑰金 镜面:蓝宝石玻璃 未使用', '\r\nhttp://productdata.fhxasdsada.xyz/2-SXJILMjHoQXj66aurkzg.jpg', '玫瑰金 ', '99', 260000, '220克', 0);
INSERT INTO `orders` VALUES (1343, '1586177041772100004', '【二手95新】劳力士 系列:迪通拿系列 型号:116505 材质:18k玫瑰金 镜面:蓝宝石玻璃 未使用', '\r\nhttp://productdata.fhxasdsada.xyz/2-SXJILMjHoQXj66aurkzg.jpg', '玫瑰金 ', '99', 260000, '220克', 0);
INSERT INTO `orders` VALUES (1344, '1586177041772100004', '【二手95新】劳力士 系列:迪通拿系列 型号:116505 材质:18k玫瑰金 镜面:蓝宝石玻璃 未使用', '\r\nhttp://productdata.fhxasdsada.xyz/2-SXJILMjHoQXj66aurkzg.jpg', '玫瑰金 ', '99', 260000, '220克', 0);
INSERT INTO `orders` VALUES (1345, '1586177041772100004', '【二手95新】劳力士 系列:迪通拿系列 型号:116505 材质:18k玫瑰金 镜面:蓝宝石玻璃 未使用', '\r\nhttp://productdata.fhxasdsada.xyz/2-SXJILMjHoQXj66aurkzg.jpg', '玫瑰金 ', '99', 260000, '220克', 0);
INSERT INTO `orders` VALUES (1346, '1586177041772100004', '【二手95新】劳力士 系列:迪通拿系列 型号:116505 材质:18k玫瑰金 镜面:蓝宝石玻璃 未使用', '\r\nhttp://productdata.fhxasdsada.xyz/2-SXJILMjHoQXj66aurkzg.jpg', '玫瑰金 ', '99', 260000, '220克', 0);
INSERT INTO `orders` VALUES (1347, '1586177041772100004', '【二手95新】劳力士 系列:迪通拿系列 型号:116505 材质:18k玫瑰金 镜面:蓝宝石玻璃 未使用', '\r\nhttp://productdata.fhxasdsada.xyz/2-SXJILMjHoQXj66aurkzg.jpg', '玫瑰金 ', '99', 260000, '220克', 0);
INSERT INTO `orders` VALUES (1348, '1586177041772100004', '【二手95新】劳力士 系列:迪通拿系列 型号:116505 材质:18k玫瑰金 镜面:蓝宝石玻璃 未使用', '\r\nhttp://productdata.fhxasdsada.xyz/2-SXJILMjHoQXj66aurkzg.jpg', '玫瑰金 ', '99', 260000, '220克', 0);
INSERT INTO `orders` VALUES (1349, '1586177041772100004', '【二手95新】劳力士 系列:迪通拿系列 型号:116505 材质:18k玫瑰金 镜面:蓝宝石玻璃 未使用', '\r\nhttp://productdata.fhxasdsada.xyz/2-SXJILMjHoQXj66aurkzg.jpg', '玫瑰金 ', '99', 260000, '220克', 0);
INSERT INTO `orders` VALUES (1350, '1586177041772100004', '【二手95新】劳力士 系列:迪通拿系列 型号:116505 材质:18k玫瑰金 镜面:蓝宝石玻璃 未使用', '\r\nhttp://productdata.fhxasdsada.xyz/2-SXJILMjHoQXj66aurkzg.jpg', '玫瑰金 ', '99', 260000, '220克', 0);
INSERT INTO `orders` VALUES (1351, '1586177041772100004', '【二手95新】劳力士 系列:迪通拿系列 型号:116505 材质:18k玫瑰金 镜面:蓝宝石玻璃 未使用', '\r\nhttp://productdata.fhxasdsada.xyz/2-SXJILMjHoQXj66aurkzg.jpg', '玫瑰金 ', '99', 260000, '220克', 0);
INSERT INTO `orders` VALUES (1352, '1586177041772100004', '【二手95新】劳力士 系列:迪通拿系列 型号:116505 材质:18k玫瑰金 镜面:蓝宝石玻璃 未使用', '\r\nhttp://productdata.fhxasdsada.xyz/2-SXJILMjHoQXj66aurkzg.jpg', '玫瑰金 ', '99', 260000, '220克', 0);
INSERT INTO `orders` VALUES (1353, '1586177041772100004', '【二手95新】劳力士 系列:迪通拿系列 型号:116505 材质:18k玫瑰金 镜面:蓝宝石玻璃 未使用', '\r\nhttp://productdata.fhxasdsada.xyz/2-SXJILMjHoQXj66aurkzg.jpg', '玫瑰金 ', '99', 260000, '220克', 0);
INSERT INTO `orders` VALUES (1354, '1586177041772100004', '【二手95新】劳力士 系列:迪通拿系列 型号:116505 材质:18k玫瑰金 镜面:蓝宝石玻璃 未使用', '\r\nhttp://productdata.fhxasdsada.xyz/2-SXJILMjHoQXj66aurkzg.jpg', '玫瑰金 ', '99', 260000, '220克', 0);
INSERT INTO `orders` VALUES (1355, '1586177041772100004', '【二手95新】劳力士 系列:迪通拿系列 型号:116505 材质:18k玫瑰金 镜面:蓝宝石玻璃 未使用', '\r\nhttp://productdata.fhxasdsada.xyz/2-SXJILMjHoQXj66aurkzg.jpg', '玫瑰金 ', '99', 260000, '220克', 0);
INSERT INTO `orders` VALUES (1356, '1586177041772100004', '【二手95新】劳力士 系列:迪通拿系列 型号:116505 材质:18k玫瑰金 镜面:蓝宝石玻璃 未使用', '\r\nhttp://productdata.fhxasdsada.xyz/2-SXJILMjHoQXj66aurkzg.jpg', '玫瑰金 ', '99', 260000, '220克', 0);
INSERT INTO `orders` VALUES (1357, '1586177041772100004', '【二手95新】劳力士 系列:迪通拿系列 型号:116505 材质:18k玫瑰金 镜面:蓝宝石玻璃 未使用', '\r\nhttp://productdata.fhxasdsada.xyz/2-SXJILMjHoQXj66aurkzg.jpg', '玫瑰金 ', '99', 260000, '220克', 0);
INSERT INTO `orders` VALUES (1358, '1586177041772100004', '【二手95新】劳力士 系列:迪通拿系列 型号:116505 材质:18k玫瑰金 镜面:蓝宝石玻璃 未使用', '\r\nhttp://productdata.fhxasdsada.xyz/2-SXJILMjHoQXj66aurkzg.jpg', '玫瑰金 ', '99', 260000, '220克', 0);
INSERT INTO `orders` VALUES (1359, '1586177041772100004', '【二手95新】劳力士 系列:迪通拿系列 型号:116505 材质:18k玫瑰金 镜面:蓝宝石玻璃 未使用', '\r\nhttp://productdata.fhxasdsada.xyz/2-SXJILMjHoQXj66aurkzg.jpg', '玫瑰金 ', '99', 260000, '220克', 0);
INSERT INTO `orders` VALUES (1360, '1586177041772100004', '【二手95新】劳力士 系列:迪通拿系列 型号:116505 材质:18k玫瑰金 镜面:蓝宝石玻璃 未使用', '\r\nhttp://productdata.fhxasdsada.xyz/2-SXJILMjHoQXj66aurkzg.jpg', '玫瑰金 ', '99', 260000, '220克', 0);
INSERT INTO `orders` VALUES (1361, '1586177041772100004', '【二手95新】劳力士 系列:迪通拿系列 型号:116505 材质:18k玫瑰金 镜面:蓝宝石玻璃 未使用', '\r\nhttp://productdata.fhxasdsada.xyz/2-SXJILMjHoQXj66aurkzg.jpg', '玫瑰金 ', '99', 260000, '220克', 0);
INSERT INTO `orders` VALUES (1362, '1586177041772100004', '【二手95新】劳力士 系列:迪通拿系列 型号:116505 材质:18k玫瑰金 镜面:蓝宝石玻璃 未使用', '\r\nhttp://productdata.fhxasdsada.xyz/2-SXJILMjHoQXj66aurkzg.jpg', '玫瑰金 ', '99', 260000, '220克', 0);
INSERT INTO `orders` VALUES (1363, '1586177041772100004', '【二手95新】劳力士 系列:迪通拿系列 型号:116505 材质:18k玫瑰金 镜面:蓝宝石玻璃 未使用', '\r\nhttp://productdata.fhxasdsada.xyz/2-SXJILMjHoQXj66aurkzg.jpg', '玫瑰金 ', '99', 260000, '220克', 0);
INSERT INTO `orders` VALUES (1364, '1586177041772100004', '【二手95新】劳力士 系列:迪通拿系列 型号:116505 材质:18k玫瑰金 镜面:蓝宝石玻璃 未使用', '\r\nhttp://productdata.fhxasdsada.xyz/2-SXJILMjHoQXj66aurkzg.jpg', '玫瑰金 ', '99', 260000, '220克', 0);
INSERT INTO `orders` VALUES (1365, '1586177041772100004', '【二手95新】劳力士 系列:迪通拿系列 型号:116505 材质:18k玫瑰金 镜面:蓝宝石玻璃 未使用', '\r\nhttp://productdata.fhxasdsada.xyz/2-SXJILMjHoQXj66aurkzg.jpg', '玫瑰金 ', '99', 260000, '220克', 0);
INSERT INTO `orders` VALUES (1366, '1586177041772100004', '【二手95新】劳力士 系列:迪通拿系列 型号:116505 材质:18k玫瑰金 镜面:蓝宝石玻璃 未使用', '\r\nhttp://productdata.fhxasdsada.xyz/2-SXJILMjHoQXj66aurkzg.jpg', '玫瑰金 ', '99', 260000, '220克', 0);
INSERT INTO `orders` VALUES (1367, '1586177041772100004', '【二手95新】劳力士 系列:迪通拿系列 型号:116505 材质:18k玫瑰金 镜面:蓝宝石玻璃 未使用', '\r\nhttp://productdata.fhxasdsada.xyz/2-SXJILMjHoQXj66aurkzg.jpg', '玫瑰金 ', '99', 260000, '220克', 0);
INSERT INTO `orders` VALUES (1368, '1586177041772100004', '【二手95新】劳力士 系列:迪通拿系列 型号:116505 材质:18k玫瑰金 镜面:蓝宝石玻璃 未使用', '\r\nhttp://productdata.fhxasdsada.xyz/2-SXJILMjHoQXj66aurkzg.jpg', '玫瑰金 ', '99', 260000, '220克', 0);
INSERT INTO `orders` VALUES (1369, '1586177041772100004', '【二手95新】劳力士 系列:迪通拿系列 型号:116505 材质:18k玫瑰金 镜面:蓝宝石玻璃 未使用', '\r\nhttp://productdata.fhxasdsada.xyz/2-SXJILMjHoQXj66aurkzg.jpg', '玫瑰金 ', '99', 260000, '220克', 0);
INSERT INTO `orders` VALUES (1370, '1586177041772100004', '【二手95新】劳力士 系列:迪通拿系列 型号:116505 材质:18k玫瑰金 镜面:蓝宝石玻璃 未使用', '\r\nhttp://productdata.fhxasdsada.xyz/2-SXJILMjHoQXj66aurkzg.jpg', '玫瑰金 ', '99', 260000, '220克', 0);
INSERT INTO `orders` VALUES (1371, '1586177041772100004', '【二手95新】劳力士 系列:迪通拿系列 型号:116505 材质:18k玫瑰金 镜面:蓝宝石玻璃 未使用', '\r\nhttp://productdata.fhxasdsada.xyz/2-SXJILMjHoQXj66aurkzg.jpg', '玫瑰金 ', '99', 260000, '220克', 0);
INSERT INTO `orders` VALUES (1372, '1586177041772100004', '【二手95新】劳力士 系列:迪通拿系列 型号:116505 材质:18k玫瑰金 镜面:蓝宝石玻璃 未使用', '\r\nhttp://productdata.fhxasdsada.xyz/2-SXJILMjHoQXj66aurkzg.jpg', '玫瑰金 ', '99', 260000, '220克', 0);
INSERT INTO `orders` VALUES (1373, '1586177041772100004', '【二手95新】劳力士 系列:迪通拿系列 型号:116505 材质:18k玫瑰金 镜面:蓝宝石玻璃 未使用', '\r\nhttp://productdata.fhxasdsada.xyz/2-SXJILMjHoQXj66aurkzg.jpg', '玫瑰金 ', '99', 260000, '220克', 0);
INSERT INTO `orders` VALUES (1374, '1586177041772100004', '【二手95新】劳力士 系列:迪通拿系列 型号:116505 材质:18k玫瑰金 镜面:蓝宝石玻璃 未使用', '\r\nhttp://productdata.fhxasdsada.xyz/2-SXJILMjHoQXj66aurkzg.jpg', '玫瑰金 ', '99', 260000, '220克', 0);
INSERT INTO `orders` VALUES (1375, '1586177041772100004', '【二手95新】劳力士 系列:迪通拿系列 型号:116505 材质:18k玫瑰金 镜面:蓝宝石玻璃 未使用', '\r\nhttp://productdata.fhxasdsada.xyz/2-SXJILMjHoQXj66aurkzg.jpg', '玫瑰金 ', '99', 260000, '220克', 0);
INSERT INTO `orders` VALUES (1376, '1586177041772100004', '【二手95新】劳力士 系列:迪通拿系列 型号:116505 材质:18k玫瑰金 镜面:蓝宝石玻璃 未使用', '\r\nhttp://productdata.fhxasdsada.xyz/2-SXJILMjHoQXj66aurkzg.jpg', '玫瑰金 ', '99', 260000, '220克', 0);
INSERT INTO `orders` VALUES (1377, '1586177041772100004', '【二手95新】劳力士 系列:迪通拿系列 型号:116505 材质:18k玫瑰金 镜面:蓝宝石玻璃 未使用', '\r\nhttp://productdata.fhxasdsada.xyz/2-SXJILMjHoQXj66aurkzg.jpg', '玫瑰金 ', '99', 260000, '220克', 0);
INSERT INTO `orders` VALUES (1378, '1586177041772100004', '【二手95新】劳力士 系列:迪通拿系列 型号:116505 材质:18k玫瑰金 镜面:蓝宝石玻璃 未使用', '\r\nhttp://productdata.fhxasdsada.xyz/2-SXJILMjHoQXj66aurkzg.jpg', '玫瑰金 ', '99', 260000, '220克', 0);
INSERT INTO `orders` VALUES (1379, '1586177041772100004', '【二手95新】劳力士 系列:迪通拿系列 型号:116505 材质:18k玫瑰金 镜面:蓝宝石玻璃 未使用', '\r\nhttp://productdata.fhxasdsada.xyz/2-SXJILMjHoQXj66aurkzg.jpg', '玫瑰金 ', '99', 260000, '220克', 0);
INSERT INTO `orders` VALUES (1380, '1586177041772100004', '【二手95新】劳力士 系列:迪通拿系列 型号:116505 材质:18k玫瑰金 镜面:蓝宝石玻璃 未使用', '\r\nhttp://productdata.fhxasdsada.xyz/2-SXJILMjHoQXj66aurkzg.jpg', '玫瑰金 ', '99', 260000, '220克', 0);
INSERT INTO `orders` VALUES (1381, '1586177041772100004', '【二手95新】劳力士 系列:迪通拿系列 型号:116505 材质:18k玫瑰金 镜面:蓝宝石玻璃 未使用', '\r\nhttp://productdata.fhxasdsada.xyz/2-SXJILMjHoQXj66aurkzg.jpg', '玫瑰金 ', '99', 260000, '220克', 0);
INSERT INTO `orders` VALUES (1382, '1586177041772100004', '【二手95新】劳力士 系列:迪通拿系列 型号:116505 材质:18k玫瑰金 镜面:蓝宝石玻璃 未使用', '\r\nhttp://productdata.fhxasdsada.xyz/2-SXJILMjHoQXj66aurkzg.jpg', '玫瑰金 ', '99', 260000, '220克', 0);
INSERT INTO `orders` VALUES (1383, '1586177124101100005', '\r\nCOACH PARKER 16 女士山茶花装饰可斜挎双肩包', '\r\nhttp://productdata.fhxasdsada.xyz/tuhaokuai_1583977278.jpg', '黄褐色 均码 ', '2', 1299, NULL, 0);
INSERT INTO `orders` VALUES (1384, '1586177124101100005', '\r\nCOACH PARKER 16 女士山茶花装饰可斜挎双肩包', '\r\nhttp://productdata.fhxasdsada.xyz/tuhaokuai_1583977278.jpg', '黄褐色 均码 ', '1', 1299, NULL, 0);
INSERT INTO `orders` VALUES (1385, '1586177124101100005', '\r\nCOACH PARKER 16 女士山茶花装饰可斜挎双肩包', '\r\nhttp://productdata.fhxasdsada.xyz/tuhaokuai_1583977278.jpg', '黄褐色 均码 ', '1', 1299, NULL, 0);
INSERT INTO `orders` VALUES (1386, '1586177124101100005', '\r\nCOACH PARKER 16 女士山茶花装饰可斜挎双肩包', '\r\nhttp://productdata.fhxasdsada.xyz/tuhaokuai_1583977278.jpg', '粉色 均码 ', '2', 1299, NULL, 0);
INSERT INTO `orders` VALUES (1387, '1586177124101100005', '\r\nCOACH PARKER 16 女士山茶花装饰可斜挎双肩包', '\r\nhttp://productdata.fhxasdsada.xyz/tuhaokuai_1583977278.jpg', '棕黄色锈色 均码 ', '2', 1299, NULL, 0);
INSERT INTO `orders` VALUES (1388, '1586177356476100006', ' 索尼（SONY）WF-1000XM3 真无线蓝牙降噪耳机 智能降噪 触控面板 苹果/安卓手机适用 黑色\r\n', 'http://productdata.fhxasdsada.xyz/2ca45e2fd9758794.jpg', '黑色 ', '1', 1499, '0.6kg', 0);

-- ----------------------------
-- Table structure for productAttributes
-- ----------------------------
DROP TABLE IF EXISTS `productAttributes`;
CREATE TABLE `productAttributes`  (
  `productId` int(11) NOT NULL,
  `size` int(11) NULL DEFAULT 0,
  `colour` int(11) NULL DEFAULT 0,
  `combo` int(11) NULL DEFAULT 0,
  `specification` int(11) NULL DEFAULT 0,
  `taste` int(11) NULL DEFAULT 0,
  `kind` int(11) NULL DEFAULT 0,
  `version` int(11) NULL DEFAULT 0,
  PRIMARY KEY (`productId`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of productAttributes
-- ----------------------------
INSERT INTO `productAttributes` VALUES (10001, 0, 1, 0, 0, 0, 0, 1);
INSERT INTO `productAttributes` VALUES (10002, 0, 1, 1, 0, 0, 0, 0);

-- ----------------------------
-- Table structure for recommend
-- ----------------------------
DROP TABLE IF EXISTS `recommend`;
CREATE TABLE `recommend`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ProductId` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `Favorite` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `shoppingTrolley` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `hot` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '1 表示热门  2表示不热门',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 60 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of recommend
-- ----------------------------
INSERT INTO `recommend` VALUES (30, '10001', '1', '1', '1');
INSERT INTO `recommend` VALUES (31, '10002', '1', '1', '1');
INSERT INTO `recommend` VALUES (32, '10003', '1', '1', '1');
INSERT INTO `recommend` VALUES (33, '10010', '1', '1', '2');
INSERT INTO `recommend` VALUES (34, '10011', '1', '1', '1');
INSERT INTO `recommend` VALUES (35, '10012', '1', '1', '2');
INSERT INTO `recommend` VALUES (36, '10013', '1', '1', '1');
INSERT INTO `recommend` VALUES (37, '10014', '1', '1', '2');
INSERT INTO `recommend` VALUES (38, '10015', '1', '1', '1');
INSERT INTO `recommend` VALUES (39, '10016', '1', '1', '1');
INSERT INTO `recommend` VALUES (40, '10017', '1', '1', '2');
INSERT INTO `recommend` VALUES (41, '10008', '1', '1', '2');
INSERT INTO `recommend` VALUES (42, '10006', '1', '1', '2');
INSERT INTO `recommend` VALUES (43, '10007', '1', '1', '2');
INSERT INTO `recommend` VALUES (44, '10009', '1', '1', '2');
INSERT INTO `recommend` VALUES (45, '10004', '1', '1', '1');
INSERT INTO `recommend` VALUES (46, '10005', '1', '1', '2');
INSERT INTO `recommend` VALUES (47, '10018', '1', '1', '2');
INSERT INTO `recommend` VALUES (48, '10019', '1', '1', '2');
INSERT INTO `recommend` VALUES (49, '10020', '1', '1', '2');
INSERT INTO `recommend` VALUES (50, '10021', '1', '1', '1');
INSERT INTO `recommend` VALUES (51, '10022', '1', '1', '1');
INSERT INTO `recommend` VALUES (52, '10023', '1', '1', '1');
INSERT INTO `recommend` VALUES (53, '10024', '1', '1', '1');
INSERT INTO `recommend` VALUES (54, '10025', '1', '1', '1');
INSERT INTO `recommend` VALUES (55, '10026', '1', '1', '2');
INSERT INTO `recommend` VALUES (56, '10027', '1', '1', '2');
INSERT INTO `recommend` VALUES (57, '10028', '1', '1', '2');
INSERT INTO `recommend` VALUES (58, '10029', '1', '1', '2');
INSERT INTO `recommend` VALUES (59, '10030', '1', '1', '2');

-- ----------------------------
-- Table structure for shoppingCart
-- ----------------------------
DROP TABLE IF EXISTS `shoppingCart`;
CREATE TABLE `shoppingCart`  (
  `shoppingCartId` int(11) NOT NULL AUTO_INCREMENT,
  `userId` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `productId` int(150) NULL DEFAULT NULL,
  `productDeploy` varchar(250) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `quantity` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`shoppingCartId`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2466 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of shoppingCart
-- ----------------------------
INSERT INTO `shoppingCart` VALUES (627, 'f92b9f8f372e445fb6564cdd57aa3c3e', 10002, '白色 优惠套餐一 ', 1);
INSERT INTO `shoppingCart` VALUES (628, '8b616d638682406f96acd3b54dfbc723', 10001, '白色 ', 99);
INSERT INTO `shoppingCart` VALUES (701, '8b616d638682406f96acd3b54dfbc723', 10015, '白色 ', 99);
INSERT INTO `shoppingCart` VALUES (1330, NULL, 10028, '【新品】小爱音箱  Redmi 小爱音箱Play 绿色 ', 1);
INSERT INTO `shoppingCart` VALUES (1331, NULL, 10028, 'Redmi 小爱音箱Play  小爱音箱万能遥控版  ', 2);
INSERT INTO `shoppingCart` VALUES (1390, '7c9fdfa3177042a08766aed29e7de6cd', 10002, '白色 优惠套餐一 ', 13);
INSERT INTO `shoppingCart` VALUES (1598, '7c9fdfa3177042a08766aed29e7de6cd', 10026, 'XS ', 1);
INSERT INTO `shoppingCart` VALUES (2395, '7c9fdfa3177042a08766aed29e7de6cd', 10019, '玫瑰金 ', 99);
INSERT INTO `shoppingCart` VALUES (2396, '7c9fdfa3177042a08766aed29e7de6cd', 10019, '玫瑰金 ', 99);
INSERT INTO `shoppingCart` VALUES (2397, '7c9fdfa3177042a08766aed29e7de6cd', 10019, '玫瑰金 ', 99);
INSERT INTO `shoppingCart` VALUES (2398, '7c9fdfa3177042a08766aed29e7de6cd', 10019, '玫瑰金 ', 99);
INSERT INTO `shoppingCart` VALUES (2399, '7c9fdfa3177042a08766aed29e7de6cd', 10019, '玫瑰金 ', 99);
INSERT INTO `shoppingCart` VALUES (2400, '7c9fdfa3177042a08766aed29e7de6cd', 10019, '玫瑰金 ', 99);
INSERT INTO `shoppingCart` VALUES (2401, '7c9fdfa3177042a08766aed29e7de6cd', 10019, '玫瑰金 ', 99);
INSERT INTO `shoppingCart` VALUES (2402, '7c9fdfa3177042a08766aed29e7de6cd', 10019, '玫瑰金 ', 99);
INSERT INTO `shoppingCart` VALUES (2403, '7c9fdfa3177042a08766aed29e7de6cd', 10019, '玫瑰金 ', 99);
INSERT INTO `shoppingCart` VALUES (2404, '7c9fdfa3177042a08766aed29e7de6cd', 10019, '玫瑰金 ', 99);
INSERT INTO `shoppingCart` VALUES (2405, '7c9fdfa3177042a08766aed29e7de6cd', 10019, '玫瑰金 ', 99);
INSERT INTO `shoppingCart` VALUES (2406, '7c9fdfa3177042a08766aed29e7de6cd', 10019, '玫瑰金 ', 99);
INSERT INTO `shoppingCart` VALUES (2407, '7c9fdfa3177042a08766aed29e7de6cd', 10019, '玫瑰金 ', 99);
INSERT INTO `shoppingCart` VALUES (2408, '7c9fdfa3177042a08766aed29e7de6cd', 10019, '玫瑰金 ', 99);
INSERT INTO `shoppingCart` VALUES (2409, '7c9fdfa3177042a08766aed29e7de6cd', 10019, '玫瑰金 ', 99);
INSERT INTO `shoppingCart` VALUES (2410, '7c9fdfa3177042a08766aed29e7de6cd', 10019, '玫瑰金 ', 99);
INSERT INTO `shoppingCart` VALUES (2411, '7c9fdfa3177042a08766aed29e7de6cd', 10019, '玫瑰金 ', 99);
INSERT INTO `shoppingCart` VALUES (2412, '7c9fdfa3177042a08766aed29e7de6cd', 10019, '玫瑰金 ', 99);
INSERT INTO `shoppingCart` VALUES (2413, '7c9fdfa3177042a08766aed29e7de6cd', 10019, '玫瑰金 ', 99);
INSERT INTO `shoppingCart` VALUES (2414, '7c9fdfa3177042a08766aed29e7de6cd', 10019, '玫瑰金 ', 99);
INSERT INTO `shoppingCart` VALUES (2415, '7c9fdfa3177042a08766aed29e7de6cd', 10019, '玫瑰金 ', 99);
INSERT INTO `shoppingCart` VALUES (2416, '7c9fdfa3177042a08766aed29e7de6cd', 10019, '玫瑰金 ', 99);
INSERT INTO `shoppingCart` VALUES (2417, '7c9fdfa3177042a08766aed29e7de6cd', 10019, '玫瑰金 ', 99);
INSERT INTO `shoppingCart` VALUES (2418, '7c9fdfa3177042a08766aed29e7de6cd', 10019, '玫瑰金 ', 99);
INSERT INTO `shoppingCart` VALUES (2419, '7c9fdfa3177042a08766aed29e7de6cd', 10019, '玫瑰金 ', 99);
INSERT INTO `shoppingCart` VALUES (2420, '7c9fdfa3177042a08766aed29e7de6cd', 10019, '玫瑰金 ', 99);
INSERT INTO `shoppingCart` VALUES (2421, '7c9fdfa3177042a08766aed29e7de6cd', 10019, '玫瑰金 ', 99);
INSERT INTO `shoppingCart` VALUES (2422, '7c9fdfa3177042a08766aed29e7de6cd', 10019, '玫瑰金 ', 99);
INSERT INTO `shoppingCart` VALUES (2423, '7c9fdfa3177042a08766aed29e7de6cd', 10019, '玫瑰金 ', 99);
INSERT INTO `shoppingCart` VALUES (2424, '7c9fdfa3177042a08766aed29e7de6cd', 10019, '玫瑰金 ', 99);
INSERT INTO `shoppingCart` VALUES (2425, '7c9fdfa3177042a08766aed29e7de6cd', 10019, '玫瑰金 ', 99);
INSERT INTO `shoppingCart` VALUES (2426, '7c9fdfa3177042a08766aed29e7de6cd', 10019, '玫瑰金 ', 99);
INSERT INTO `shoppingCart` VALUES (2427, '7c9fdfa3177042a08766aed29e7de6cd', 10019, '玫瑰金 ', 99);
INSERT INTO `shoppingCart` VALUES (2428, '7c9fdfa3177042a08766aed29e7de6cd', 10019, '玫瑰金 ', 99);
INSERT INTO `shoppingCart` VALUES (2429, '7c9fdfa3177042a08766aed29e7de6cd', 10019, '玫瑰金 ', 99);
INSERT INTO `shoppingCart` VALUES (2430, '7c9fdfa3177042a08766aed29e7de6cd', 10019, '玫瑰金 ', 99);
INSERT INTO `shoppingCart` VALUES (2431, '7c9fdfa3177042a08766aed29e7de6cd', 10019, '玫瑰金 ', 99);
INSERT INTO `shoppingCart` VALUES (2432, '7c9fdfa3177042a08766aed29e7de6cd', 10019, '玫瑰金 ', 99);
INSERT INTO `shoppingCart` VALUES (2433, '7c9fdfa3177042a08766aed29e7de6cd', 10019, '玫瑰金 ', 99);
INSERT INTO `shoppingCart` VALUES (2434, '7c9fdfa3177042a08766aed29e7de6cd', 10019, '玫瑰金 ', 99);
INSERT INTO `shoppingCart` VALUES (2435, '7c9fdfa3177042a08766aed29e7de6cd', 10019, '玫瑰金 ', 99);
INSERT INTO `shoppingCart` VALUES (2436, '7c9fdfa3177042a08766aed29e7de6cd', 10019, '玫瑰金 ', 99);
INSERT INTO `shoppingCart` VALUES (2437, '7c9fdfa3177042a08766aed29e7de6cd', 10019, '玫瑰金 ', 99);
INSERT INTO `shoppingCart` VALUES (2438, '7c9fdfa3177042a08766aed29e7de6cd', 10019, '玫瑰金 ', 99);
INSERT INTO `shoppingCart` VALUES (2439, '7c9fdfa3177042a08766aed29e7de6cd', 10019, '玫瑰金 ', 99);
INSERT INTO `shoppingCart` VALUES (2440, '7c9fdfa3177042a08766aed29e7de6cd', 10019, '玫瑰金 ', 99);
INSERT INTO `shoppingCart` VALUES (2441, '7c9fdfa3177042a08766aed29e7de6cd', 10019, '玫瑰金 ', 99);
INSERT INTO `shoppingCart` VALUES (2442, '7c9fdfa3177042a08766aed29e7de6cd', 10019, '玫瑰金 ', 99);
INSERT INTO `shoppingCart` VALUES (2443, '7c9fdfa3177042a08766aed29e7de6cd', 10019, '玫瑰金 ', 99);
INSERT INTO `shoppingCart` VALUES (2444, '7c9fdfa3177042a08766aed29e7de6cd', 10019, '玫瑰金 ', 99);
INSERT INTO `shoppingCart` VALUES (2445, '7c9fdfa3177042a08766aed29e7de6cd', 10019, '玫瑰金 ', 99);
INSERT INTO `shoppingCart` VALUES (2446, '7c9fdfa3177042a08766aed29e7de6cd', 10019, '玫瑰金 ', 99);
INSERT INTO `shoppingCart` VALUES (2447, '7c9fdfa3177042a08766aed29e7de6cd', 10019, '玫瑰金 ', 99);
INSERT INTO `shoppingCart` VALUES (2448, '7c9fdfa3177042a08766aed29e7de6cd', 10019, '玫瑰金 ', 99);
INSERT INTO `shoppingCart` VALUES (2449, '7c9fdfa3177042a08766aed29e7de6cd', 10019, '玫瑰金 ', 99);
INSERT INTO `shoppingCart` VALUES (2450, '7c9fdfa3177042a08766aed29e7de6cd', 10019, '玫瑰金 ', 99);
INSERT INTO `shoppingCart` VALUES (2451, '7c9fdfa3177042a08766aed29e7de6cd', 10019, '玫瑰金 ', 99);
INSERT INTO `shoppingCart` VALUES (2452, '7c9fdfa3177042a08766aed29e7de6cd', 10019, '玫瑰金 ', 99);
INSERT INTO `shoppingCart` VALUES (2453, '7c9fdfa3177042a08766aed29e7de6cd', 10019, '玫瑰金 ', 99);
INSERT INTO `shoppingCart` VALUES (2454, '7c9fdfa3177042a08766aed29e7de6cd', 10019, '玫瑰金 ', 99);
INSERT INTO `shoppingCart` VALUES (2455, '7c9fdfa3177042a08766aed29e7de6cd', 10019, '玫瑰金 ', 99);
INSERT INTO `shoppingCart` VALUES (2456, '7c9fdfa3177042a08766aed29e7de6cd', 10019, '玫瑰金 ', 99);
INSERT INTO `shoppingCart` VALUES (2457, '7c9fdfa3177042a08766aed29e7de6cd', 10019, '玫瑰金 ', 99);
INSERT INTO `shoppingCart` VALUES (2458, '7c9fdfa3177042a08766aed29e7de6cd', 10019, '玫瑰金 ', 99);
INSERT INTO `shoppingCart` VALUES (2459, '7c9fdfa3177042a08766aed29e7de6cd', 10019, '玫瑰金 ', 99);
INSERT INTO `shoppingCart` VALUES (2460, '7c9fdfa3177042a08766aed29e7de6cd', 10019, '玫瑰金 ', 99);
INSERT INTO `shoppingCart` VALUES (2461, '7c9fdfa3177042a08766aed29e7de6cd', 10019, '玫瑰金 ', 99);
INSERT INTO `shoppingCart` VALUES (2462, '7c9fdfa3177042a08766aed29e7de6cd', 10019, '玫瑰金 ', 99);
INSERT INTO `shoppingCart` VALUES (2463, '7c9fdfa3177042a08766aed29e7de6cd', 10019, '玫瑰金 ', 99);
INSERT INTO `shoppingCart` VALUES (2464, '7c9fdfa3177042a08766aed29e7de6cd', 10019, '玫瑰金 ', 99);
INSERT INTO `shoppingCart` VALUES (2465, '7c9fdfa3177042a08766aed29e7de6cd', 10019, '玫瑰金 ', 99);

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `password` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `sex` varchar(5) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `phone` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `email` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `Image` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `token` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `birthday` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 56 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (52, 'f92b9f8f372e445fb6564cdd57aa3c3e', '小白', '++OrO3KQIS+TzybCOsQhcw==', '1', 't45eesyhFshmLr/zH6A2Dw==', 'AkbKyPZy0QJ0j1YkhIin1STD2hfGcrPgwh81SZwPpoU=', ' http://img.fhxasdsada.xyz/f92b9f8f372e445fb6564cdd57aa3c3e?t=1586177247290', 'DM', '2018-3-3');
INSERT INTO `user` VALUES (54, '0497326c70a447ceb815aa23743daeab', 'smallProfit', '++OrO3KQIS+TzybCOsQhcw==', '1', 'fedMKLH76FIJ74Tc9t1rkQ==', NULL, 'http://img.fhxasdsada.xyz//000000001312c10c0000000002255f0a?t=1578145613938', 'DM', '0-0-0');
INSERT INTO `user` VALUES (55, '7c9fdfa3177042a08766aed29e7de6cd', 'MuGe', '++OrO3KQIS+TzybCOsQhcw==', '1', '7/nilpLOcaBpX6+BnSD+SQ==', 'NOCyNow6lg6D1Wibn5x0WCnRmd72oX+WfuO6bjCodHY=', ' http://img.fhxasdsada.xyz/7c9fdfa3177042a08766aed29e7de6cd?t=1586170783021', 'DM', '2019-4-15');

-- ----------------------------
-- Table structure for userAddress
-- ----------------------------
DROP TABLE IF EXISTS `userAddress`;
CREATE TABLE `userAddress`  (
  `addressId` int(11) NOT NULL AUTO_INCREMENT,
  `userId` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `areas` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `detailedAddress` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `phone` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `email` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `areaCodes` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `defaults` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `alias` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `isdelete` int(11) NULL DEFAULT 1,
  PRIMARY KEY (`addressId`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 161 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of userAddress
-- ----------------------------
INSERT INTO `userAddress` VALUES (147, 'f92b9f8f372e445fb6564cdd57aa3c3e', '芳芳', '北京市 市辖区 东城区 东华门街道 ', 'sadasdasd', '18599988525', '2252821162@qq.com', '11,1101,110101,110101001,', '0', '闺蜜家', 0);
INSERT INTO `userAddress` VALUES (148, 'f92b9f8f372e445fb6564cdd57aa3c3e', 'ff', '北京市 市辖区 东城区 东华门街道 ', 'sadas', '18598814121', '32252@qq.com', '11,1101,110101,110101001,', '0', 'asd', 0);
INSERT INTO `userAddress` VALUES (149, 'f92b9f8f372e445fb6564cdd57aa3c3e', 'ff', '天津市 市辖区 和平区 劝业场街道 ', 'dasd', '18599988544', '2252@qq.com', '12,1201,120101,120101001,', '0', 'sad', 0);
INSERT INTO `userAddress` VALUES (150, 'f92b9f8f372e445fb6564cdd57aa3c3e', 'ff', '天津市 市辖区 和平区 劝业场街道 ', 'd156', '18598814121', '2252@qq.com', '12,1201,120101,120101001,', '0', 'ad', 1);
INSERT INTO `userAddress` VALUES (151, 'f92b9f8f372e445fb6564cdd57aa3c3e', 'asdasd', '北京市 市辖区 东城区 东华门街道 ', 'asdasd', '18598814421', 'sdasd@qq.com', '11,1101,110101,110101001,', '0', 'adas', 0);
INSERT INTO `userAddress` VALUES (152, 'f92b9f8f372e445fb6564cdd57aa3c3e', 'faf', '山西省 大同市 平城区 南关街道 ', 'asdas', '18598855555', '2252@qq.com', '14,1402,140213,140213001,', '0', 'dsa', 1);
INSERT INTO `userAddress` VALUES (153, '7c9fdfa3177042a08766aed29e7de6cd', '彭浩', '天津市 市辖区 南开区 鼓楼街道 ', '递四方速递', '15367885410', 'liuxianliangli@foxmail.com', '12,1201,120104,120104002,', '0', '学校', 0);
INSERT INTO `userAddress` VALUES (154, '7c9fdfa3177042a08766aed29e7de6cd', '三大法师', '山西省 大同市 云州区 西坪镇 ', '速度还是大', '15367885410', 'liuxianliangli@foxmail.com', '14,1402,140215,140215100,', '0', '速度还是大', 0);
INSERT INTO `userAddress` VALUES (155, '7c9fdfa3177042a08766aed29e7de6cd', '三个和尚的', '山西省 大同市 云冈区 永定庄街道 ', '速度还是大', '15367885410', 'liuxianliangli@foxmail.com', '14,1402,140214,140214004,', '0', '公司', 0);
INSERT INTO `userAddress` VALUES (156, 'f92b9f8f372e445fb6564cdd57aa3c3e', '芳芳', '北京市 市辖区 东城区 东华门街道 ', 'asdsad', '18598814121', '225252@qq.com', '11,1101,110101,110101001,', '0', 'sad', 0);
INSERT INTO `userAddress` VALUES (157, '7c9fdfa3177042a08766aed29e7de6cd', '订单号', '天津市 市辖区 河北区 望海楼街道 ', '速度还是大', '15367885410', 'liuxianliangli@foxmail.com', '12,1201,120105,120105002,', '0', '学校', 0);
INSERT INTO `userAddress` VALUES (158, '7c9fdfa3177042a08766aed29e7de6cd', '很多事', '山西省 阳泉市 矿区 沙坪街道 ', '三大法师', '15367885410', 'liuxianliangli@foxmail.com', '14,1403,140303,140303005,', '0', '闺蜜家', 0);
INSERT INTO `userAddress` VALUES (159, '7c9fdfa3177042a08766aed29e7de6cd', '递四方速递', '河北省 唐山市 古冶区 古冶街道 ', '速度还是大', '15367885410', 'liuxianliangli@foxmail.com', '13,1302,130204,130204003,', '0', '公司', 1);
INSERT INTO `userAddress` VALUES (160, '7c9fdfa3177042a08766aed29e7de6cd', '速度还是大', '河北省 唐山市 开平区 开平街道 ', '速度还是大', '15367885410', 'liuxianliangli@foxmail.com', '13,1302,130205,130205002,', '0', '学校', 1);

-- ----------------------------
-- Table structure for userEvaluation
-- ----------------------------
DROP TABLE IF EXISTS `userEvaluation`;
CREATE TABLE `userEvaluation`  (
  `evaluationId` int(11) NOT NULL AUTO_INCREMENT,
  `userId` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `productId` int(11) NULL DEFAULT NULL,
  `sign` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `evaluationTime` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`evaluationId`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 122 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of userEvaluation
-- ----------------------------
INSERT INTO `userEvaluation` VALUES (110, 'f92b9f8f372e445fb6564cdd57aa3c3e', 10014, 'true', '2020-04-03 12:51:52');
INSERT INTO `userEvaluation` VALUES (111, 'f92b9f8f372e445fb6564cdd57aa3c3e', 10007, 'true', '2020-04-03 12:51:52');
INSERT INTO `userEvaluation` VALUES (112, '7c9fdfa3177042a08766aed29e7de6cd', 10012, 'true', '2020-04-03 12:52:34');
INSERT INTO `userEvaluation` VALUES (113, '7c9fdfa3177042a08766aed29e7de6cd', 10023, 'true', '2020-04-03 12:52:34');
INSERT INTO `userEvaluation` VALUES (114, '7c9fdfa3177042a08766aed29e7de6cd', 10005, 'true', '2020-04-03 12:52:53');
INSERT INTO `userEvaluation` VALUES (115, '7c9fdfa3177042a08766aed29e7de6cd', 10030, 'true', '2020-04-03 12:53:02');
INSERT INTO `userEvaluation` VALUES (116, '7c9fdfa3177042a08766aed29e7de6cd', 10027, 'true', '2020-04-03 12:53:07');
INSERT INTO `userEvaluation` VALUES (117, '7c9fdfa3177042a08766aed29e7de6cd', 10028, 'true', '2020-04-03 12:53:07');
INSERT INTO `userEvaluation` VALUES (118, '7c9fdfa3177042a08766aed29e7de6cd', 10002, 'true', '2020-04-03 12:53:18');
INSERT INTO `userEvaluation` VALUES (119, '7c9fdfa3177042a08766aed29e7de6cd', 10001, 'true', '2020-04-03 13:04:44');
INSERT INTO `userEvaluation` VALUES (120, '7c9fdfa3177042a08766aed29e7de6cd', 10019, 'true', '2020-04-03 13:04:45');
INSERT INTO `userEvaluation` VALUES (121, '7c9fdfa3177042a08766aed29e7de6cd', 10026, 'true', '2020-04-03 13:08:18');

-- ----------------------------
-- Table structure for userFootprint
-- ----------------------------
DROP TABLE IF EXISTS `userFootprint`;
CREATE TABLE `userFootprint`  (
  `footprintId` int(11) NOT NULL AUTO_INCREMENT,
  `userId` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `productId` int(11) NULL DEFAULT NULL,
  `footprintTime` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`footprintId`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 41 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of userFootprint
-- ----------------------------
INSERT INTO `userFootprint` VALUES (10, '7c9fdfa3177042a08766aed29e7de6cd', 10006, '2020-04-06 20:49:12');
INSERT INTO `userFootprint` VALUES (11, '7c9fdfa3177042a08766aed29e7de6cd', 10013, '2020-04-05 13:59:06');
INSERT INTO `userFootprint` VALUES (12, '7c9fdfa3177042a08766aed29e7de6cd', 10001, '2020-04-06 17:13:53');
INSERT INTO `userFootprint` VALUES (13, '7c9fdfa3177042a08766aed29e7de6cd', 10018, '2020-04-06 20:25:28');
INSERT INTO `userFootprint` VALUES (14, '7c9fdfa3177042a08766aed29e7de6cd', 10028, '2020-04-05 18:23:52');
INSERT INTO `userFootprint` VALUES (15, '7c9fdfa3177042a08766aed29e7de6cd', 10027, '2020-04-06 20:25:17');
INSERT INTO `userFootprint` VALUES (16, '7c9fdfa3177042a08766aed29e7de6cd', 10023, '2020-04-06 20:45:10');
INSERT INTO `userFootprint` VALUES (17, '7c9fdfa3177042a08766aed29e7de6cd', 10017, '2020-04-05 13:59:27');
INSERT INTO `userFootprint` VALUES (18, '7c9fdfa3177042a08766aed29e7de6cd', 10024, '2020-04-06 20:15:32');
INSERT INTO `userFootprint` VALUES (19, '7c9fdfa3177042a08766aed29e7de6cd', 10015, '2020-04-06 20:02:33');
INSERT INTO `userFootprint` VALUES (20, '7c9fdfa3177042a08766aed29e7de6cd', 10019, '2020-04-06 20:43:16');
INSERT INTO `userFootprint` VALUES (21, '7c9fdfa3177042a08766aed29e7de6cd', 10009, '2020-04-04 10:33:02');
INSERT INTO `userFootprint` VALUES (22, 'abcd', 10005, '2020-04-06 18:35:44');
INSERT INTO `userFootprint` VALUES (23, 'asdasd', 0, '2020-03-27 09:52:30');
INSERT INTO `userFootprint` VALUES (24, '7c9fdfa3177042a08766aed29e7de6cd', 10014, '2020-04-06 19:43:04');
INSERT INTO `userFootprint` VALUES (25, '7c9fdfa3177042a08766aed29e7de6cd', 10021, '2020-04-05 18:13:03');
INSERT INTO `userFootprint` VALUES (26, '7c9fdfa3177042a08766aed29e7de6cd', 10020, '2020-04-05 16:41:17');
INSERT INTO `userFootprint` VALUES (27, '7c9fdfa3177042a08766aed29e7de6cd', 10026, '2020-04-06 17:06:41');
INSERT INTO `userFootprint` VALUES (28, '7c9fdfa3177042a08766aed29e7de6cd', 10025, '2020-04-05 18:22:42');
INSERT INTO `userFootprint` VALUES (29, 'f92b9f8f372e445fb6564cdd57aa3c3e', 10002, '2020-04-06 19:47:04');
INSERT INTO `userFootprint` VALUES (30, '7c9fdfa3177042a08766aed29e7de6cd', 10004, '2020-04-06 15:06:04');
INSERT INTO `userFootprint` VALUES (31, '7c9fdfa3177042a08766aed29e7de6cd', 10011, '2020-04-05 13:58:34');
INSERT INTO `userFootprint` VALUES (32, '7c9fdfa3177042a08766aed29e7de6cd', 10007, '2020-04-06 20:46:32');
INSERT INTO `userFootprint` VALUES (33, '7c9fdfa3177042a08766aed29e7de6cd', 10010, '2020-04-06 20:37:19');
INSERT INTO `userFootprint` VALUES (34, '7c9fdfa3177042a08766aed29e7de6cd', 10016, '2020-04-05 15:35:35');
INSERT INTO `userFootprint` VALUES (35, '7c9fdfa3177042a08766aed29e7de6cd', 10029, '2020-04-06 20:23:46');
INSERT INTO `userFootprint` VALUES (36, '7c9fdfa3177042a08766aed29e7de6cd', 10030, '2020-04-05 13:23:46');
INSERT INTO `userFootprint` VALUES (37, '7c9fdfa3177042a08766aed29e7de6cd', 10008, '2020-04-05 18:12:45');
INSERT INTO `userFootprint` VALUES (38, '7c9fdfa3177042a08766aed29e7de6cd', 10012, '2020-04-05 13:58:39');
INSERT INTO `userFootprint` VALUES (39, 'f92b9f8f372e445fb6564cdd57aa3c3e', 10022, '2020-04-06 10:21:41');
INSERT INTO `userFootprint` VALUES (40, 'f92b9f8f372e445fb6564cdd57aa3c3e', 10003, '2020-04-05 14:27:25');

-- ----------------------------
-- Table structure for userMembe
-- ----------------------------
DROP TABLE IF EXISTS `userMembe`;
CREATE TABLE `userMembe`  (
  `userId` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `balance` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `integral` int(11) NULL DEFAULT 0,
  `coupon` int(11) NULL DEFAULT 0,
  `membershipCard` int(11) NULL DEFAULT 0,
  `growthValue` int(11) NULL DEFAULT 0
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of userMembe
-- ----------------------------
INSERT INTO `userMembe` VALUES ('7c9fdfa3177042a08766aed29e7de6cd', 'xOOG6V1wMVNXNpMizSh38g==', 98000, 5, 2, 1540);
INSERT INTO `userMembe` VALUES ('0497326c70a447ceb815aa23743daeab', NULL, 0, 0, 0, 0);
INSERT INTO `userMembe` VALUES ('9c1e482cfabf48f7ab64baee9bd778fd', NULL, 0, 0, 0, 0);
INSERT INTO `userMembe` VALUES ('f92b9f8f372e445fb6564cdd57aa3c3e', '9rRDfKkFqZd5gycegQa/eQ==', 0, 0, 0, 0);

-- ----------------------------
-- Table structure for userOrder
-- ----------------------------
DROP TABLE IF EXISTS `userOrder`;
CREATE TABLE `userOrder`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userId` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `orderId` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `paymentWay` int(11) NULL DEFAULT NULL,
  `deliveryWay` int(255) NULL DEFAULT NULL,
  `orderTime` datetime(0) NULL DEFAULT NULL,
  `deliveryTime` datetime(0) NULL DEFAULT NULL,
  `paymentTime` datetime(0) NULL DEFAULT NULL,
  `submitTime` datetime(0) NULL DEFAULT NULL,
  `orderNote` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `orderTotal` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `orderState` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 235 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of userOrder
-- ----------------------------
INSERT INTO `userOrder` VALUES (229, '7c9fdfa3177042a08766aed29e7de6cd', '1586176369021100001', NULL, NULL, '2020-04-06 20:33:53', NULL, NULL, NULL, NULL, '207860.00', 1);
INSERT INTO `userOrder` VALUES (230, '7c9fdfa3177042a08766aed29e7de6cd', '1586176532725100002', NULL, NULL, '2020-04-06 20:35:46', NULL, NULL, NULL, NULL, '196920.00', 1);
INSERT INTO `userOrder` VALUES (231, '7c9fdfa3177042a08766aed29e7de6cd', '1586176805593100003', NULL, NULL, '2020-04-06 20:40:20', NULL, NULL, NULL, NULL, '2496780000.00', 1);
INSERT INTO `userOrder` VALUES (232, '7c9fdfa3177042a08766aed29e7de6cd', '1586177041772100004', NULL, NULL, '2020-04-06 20:44:17', NULL, NULL, NULL, NULL, '2625480000.00', 1);
INSERT INTO `userOrder` VALUES (233, '7c9fdfa3177042a08766aed29e7de6cd', '1586177124101100005', NULL, NULL, '2020-04-06 20:45:24', NULL, NULL, NULL, NULL, '10392.00', 1);
INSERT INTO `userOrder` VALUES (234, 'f92b9f8f372e445fb6564cdd57aa3c3e', '1586177356476100006', 1, 1, '2020-04-06 20:49:16', '2020-04-09 20:49:16', NULL, NULL, '', '1499.0', NULL);

-- ----------------------------
-- Table structure for userPassword
-- ----------------------------
DROP TABLE IF EXISTS `userPassword`;
CREATE TABLE `userPassword`  (
  `userId` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `paymentPassword` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `faceRecognition` int(11) NULL DEFAULT 0,
  `faceToken` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of userPassword
-- ----------------------------
INSERT INTO `userPassword` VALUES ('7c9fdfa3177042a08766aed29e7de6cd', '++OrO3KQIS+TzybCOsQhcw==', 0, NULL);
INSERT INTO `userPassword` VALUES ('9c1e482cfabf48f7ab64baee9bd778fd', NULL, 0, NULL);
INSERT INTO `userPassword` VALUES ('f92b9f8f372e445fb6564cdd57aa3c3e', '/NSW7XPKATxkLBTZjWbLLA==', 1, '5c88cb4c9aa90f3194293b1ea87fc04f');

SET FOREIGN_KEY_CHECKS = 1;
