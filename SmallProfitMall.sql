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

 Date: 19/04/2020 20:56:24
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
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ProductId` int(11) NULL DEFAULT NULL,
  `version` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 31 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ProductVersion
-- ----------------------------
INSERT INTO `ProductVersion` VALUES (1, 10005, 'WLAN版64G');
INSERT INTO `ProductVersion` VALUES (2, 10005, ' WLAN版256G ');
INSERT INTO `ProductVersion` VALUES (3, 10005, 'WLAN版512G');
INSERT INTO `ProductVersion` VALUES (4, 10005, ' WLAN版1TB');
INSERT INTO `ProductVersion` VALUES (5, 10005, 'Cellular版64G ');
INSERT INTO `ProductVersion` VALUES (6, 10005, 'Cellular版256G');
INSERT INTO `ProductVersion` VALUES (7, 10005, 'Cellular版512G ');
INSERT INTO `ProductVersion` VALUES (8, 10005, 'Cellular版1TB');
INSERT INTO `ProductVersion` VALUES (9, 10001, '豪华版');
INSERT INTO `ProductVersion` VALUES (10, 10001, '标志版');
INSERT INTO `ProductVersion` VALUES (11, 10017, 'GPS版');
INSERT INTO `ProductVersion` VALUES (12, 10017, ' 蜂窝版');
INSERT INTO `ProductVersion` VALUES (13, 10017, 'GPS版AC+');
INSERT INTO `ProductVersion` VALUES (14, 10017, '蜂窝版AC+');
INSERT INTO `ProductVersion` VALUES (15, 10024, '标准白有刻 ');
INSERT INTO `ProductVersion` VALUES (16, 10024, '标准白无刻');
INSERT INTO `ProductVersion` VALUES (17, 10024, '标准黑有刻 ');
INSERT INTO `ProductVersion` VALUES (18, 10024, '标准黑无刻');
INSERT INTO `ProductVersion` VALUES (19, 10024, '蓝牙白有刻 ');
INSERT INTO `ProductVersion` VALUES (20, 10024, '蓝牙白无刻 ');
INSERT INTO `ProductVersion` VALUES (21, 10024, '蓝牙黑有刻 ');
INSERT INTO `ProductVersion` VALUES (22, 10024, '蓝牙黑无刻');
INSERT INTO `ProductVersion` VALUES (23, 10024, '静音白有刻 ');
INSERT INTO `ProductVersion` VALUES (24, 10024, '静音白无刻');
INSERT INTO `ProductVersion` VALUES (25, 10028, '小爱音箱万能遥控版 ');
INSERT INTO `ProductVersion` VALUES (26, 10028, '小爱音箱play版');
INSERT INTO `ProductVersion` VALUES (27, 10028, '小米小爱音箱【HD版 深灰色】');
INSERT INTO `ProductVersion` VALUES (28, 10028, '小米小爱音箱【HD版 浅灰色】');
INSERT INTO `ProductVersion` VALUES (29, 10028, ' Redmi 小爱音箱Play 蓝色');
INSERT INTO `ProductVersion` VALUES (30, 10028, 'Redmi 小爱音箱Play 绿色');

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
  `newsTypeId` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `sign` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0',
  `title` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `newsTime` datetime(0) NULL DEFAULT NULL,
  `newsStatus` int(11) NULL DEFAULT NULL,
  `introduction` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`contentId`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3708 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of newsContent
-- ----------------------------
INSERT INTO `newsContent` VALUES (3614, 4, 'f92b9f8f372e445fb6564cdd57aa3c3e', NULL, 4, '1587291971075100001', '0', '确认订单消息', '2020-04-19 18:26:16', 0, '消息简介');
INSERT INTO `newsContent` VALUES (3615, 3, 'f92b9f8f372e445fb6564cdd57aa3c3e', NULL, 3, '1587291971075100001', '0', '支付通知', '2020-04-19 18:26:16', 0, '支付通知');
INSERT INTO `newsContent` VALUES (3666, 4, 'f92b9f8f372e445fb6564cdd57aa3c3e', NULL, 4, '1587292127976100003', '0', '确认订单消息', '2020-04-19 18:31:11', 0, '消息简介');
INSERT INTO `newsContent` VALUES (3667, 3, 'f92b9f8f372e445fb6564cdd57aa3c3e', NULL, 3, '1587292127976100003', '0', '支付通知', '2020-04-19 18:31:11', 0, '支付通知');
INSERT INTO `newsContent` VALUES (3706, 4, 'f92b9f8f372e445fb6564cdd57aa3c3e', NULL, 4, '1587292363848100004', '0', '确认订单消息', '2020-04-19 18:34:35', 1, '消息简介');
INSERT INTO `newsContent` VALUES (3707, 3, 'f92b9f8f372e445fb6564cdd57aa3c3e', NULL, 3, '1587292363848100004', '0', '支付通知', '2020-04-19 18:34:40', 1, '支付通知');

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
INSERT INTO `newsSender` VALUES (2, 2, '微利助手', 'http://img.fhxasdsada.xyz/undraw_happy_music_g6wc.png');
INSERT INTO `newsSender` VALUES (3, 3, '微利支付', 'http://img.fhxasdsada.xyz//000000001312c10c0000000002255f0a?t=1578145613938');
INSERT INTO `newsSender` VALUES (4, 4, '订单助手', 'http://img.fhxasdsada.xyz/undraw_happy_music_g6wc.png');

-- ----------------------------
-- Table structure for orderAddress
-- ----------------------------
DROP TABLE IF EXISTS `orderAddress`;
CREATE TABLE `orderAddress`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userId` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `orderId` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `areas` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `detailedAddress` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `phone` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `email` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `areaCodes` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 212 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of orderAddress
-- ----------------------------
INSERT INTO `orderAddress` VALUES (208, 'f92b9f8f372e445fb6564cdd57aa3c3e', '1587291971075100001', '方鸢', '河北省 唐山市 路南区 学院南路街道 ', 'dasdas', '18598814121', '2252821162@qq.com', '13,1302,130202,130202001,', '闺蜜家');
INSERT INTO `orderAddress` VALUES (209, 'f92b9f8f372e445fb6564cdd57aa3c3e', '1587291988367100002', '方鸢', '河北省 唐山市 路南区 学院南路街道 ', 'dasdas', '18598814121', '2252821162@qq.com', '13,1302,130202,130202001,', '闺蜜家');
INSERT INTO `orderAddress` VALUES (210, 'f92b9f8f372e445fb6564cdd57aa3c3e', '1587292127976100003', '方鸢', '河北省 唐山市 路南区 学院南路街道 ', 'dasdas', '18598814121', '2252821162@qq.com', '13,1302,130202,130202001,', '闺蜜家');
INSERT INTO `orderAddress` VALUES (211, 'f92b9f8f372e445fb6564cdd57aa3c3e', '1587292363848100004', '方鸢', '河北省 唐山市 路南区 学院南路街道 ', 'dasdas', '18598814121', '2252821162@qq.com', '13,1302,130202,130202001,', '闺蜜家');

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
) ENGINE = InnoDB AUTO_INCREMENT = 2138 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of orders
-- ----------------------------
INSERT INTO `orders` VALUES (2134, '1587291971075100001', '华硕（ASUS）猛禽ROG-STRIX-GeForce RTX 2080 ', 'http://productdata.fhxasdsada.xyz/1f3f9fd0e759383f.jpg', '华硕PRIME X299-A主板+  ', '1', 11999, '2.08kg', 0);
INSERT INTO `orders` VALUES (2135, '1587291988367100002', ' 索尼（SONY）WF-1000XM3 真无线蓝牙降噪耳机 智能降噪 触控面板 苹果/安卓手机适用 黑色\r\n', 'http://productdata.fhxasdsada.xyz/2ca45e2fd9758794.jpg', '黑色 ', '1', 1499, '0.6kg', 0);
INSERT INTO `orders` VALUES (2136, '1587292127976100003', ' 索尼（SONY）WF-1000XM3 真无线蓝牙降噪耳机 智能降噪 触控面板 苹果/安卓手机适用 黑色\r\n', 'http://productdata.fhxasdsada.xyz/2ca45e2fd9758794.jpg', '黑色 ', '1', 1499, '0.6kg', 0);
INSERT INTO `orders` VALUES (2137, '1587292363848100004', '骨伽（COUGAR） 电脑主机箱 台式机中塔式侧透征服者游戏定制水冷机箱 黑色\r\n', 'http://productdata.fhxasdsada.xyz/5b4d4cc8N0bf9c476.jpg', '黑色 ', '1', 2898, '2.8kg', 0);

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
) ENGINE = InnoDB AUTO_INCREMENT = 2806 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of shoppingCart
-- ----------------------------
INSERT INTO `shoppingCart` VALUES (627, 'f92b9f8f372e445fb6564cdd57aa3c3e', 10002, '白色 优惠套餐一 ', 1);
INSERT INTO `shoppingCart` VALUES (628, '8b616d638682406f96acd3b54dfbc723', 10001, '白色 ', 99);
INSERT INTO `shoppingCart` VALUES (701, '8b616d638682406f96acd3b54dfbc723', 10015, '白色 ', 99);
INSERT INTO `shoppingCart` VALUES (1330, NULL, 10028, '【新品】小爱音箱  Redmi 小爱音箱Play 绿色 ', 1);
INSERT INTO `shoppingCart` VALUES (1331, NULL, 10028, 'Redmi 小爱音箱Play  小爱音箱万能遥控版  ', 2);
INSERT INTO `shoppingCart` VALUES (1390, '7c9fdfa3177042a08766aed29e7de6cd', 10002, '白色 优惠套餐一 ', 16);
INSERT INTO `shoppingCart` VALUES (1598, '7c9fdfa3177042a08766aed29e7de6cd', 10026, 'XS ', 6);
INSERT INTO `shoppingCart` VALUES (2665, 'f92b9f8f372e445fb6564cdd57aa3c3e', 10026, 'XS ', 3);

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
) ENGINE = InnoDB AUTO_INCREMENT = 62 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (52, 'f92b9f8f372e445fb6564cdd57aa3c3e', '小白i', '7cwP8Rhq61a70gE+gsoW/w==', '1', 't45eesyhFshmLr/zH6A2Dw==', 'AkbKyPZy0QJ0j1YkhIin1STD2hfGcrPgwh81SZwPpoU=', ' http://img.fhxasdsada.xyz/f92b9f8f372e445fb6564cdd57aa3c3e?t=1587283491105', 'DM', '2018-3-1');
INSERT INTO `user` VALUES (54, '0497326c70a447ceb815aa23743daeab', 'smallProfit', '++OrO3KQIS+TzybCOsQhcw==', '1', 'fedMKLH76FIJ74Tc9t1rkQ==', NULL, 'http://img.fhxasdsada.xyz//000000001312c10c0000000002255f0a?t=1578145613938', 'DM', '0-0-0');
INSERT INTO `user` VALUES (55, '7c9fdfa3177042a08766aed29e7de6cd', 'MuGe', '++OrO3KQIS+TzybCOsQhcw==', '1', '7/nilpLOcaBpX6+BnSD+SQ==', 'NOCyNow6lg6D1Wibn5x0WCnRmd72oX+WfuO6bjCodHY=', ' http://img.fhxasdsada.xyz/7c9fdfa3177042a08766aed29e7de6cd?t=1586869491807', 'DM', '2019-4-15');
INSERT INTO `user` VALUES (59, 'd52e8cc4c9a34b839c74a20d1685f04c', 'smallProfit', '++OrO3KQIS+TzybCOsQhcw==', '1', 'Cx1wSRDN2c0lmnkbDmMQyA==', NULL, 'http://img.fhxasdsada.xyz//000000001312c10c0000000002255f0a?t=1578145613938', 'DM', '0-0-0');
INSERT INTO `user` VALUES (60, '311e2fca19b944668631da49d5c1dbb2', 'smallProfit', '++OrO3KQIS+TzybCOsQhcw==', '1', 'wha358tH5pru/1cDld3/lA==', NULL, 'http://img.fhxasdsada.xyz//000000001312c10c0000000002255f0a?t=1578145613938', 'DM', '0-0-0');
INSERT INTO `user` VALUES (61, '451a7d05126a4e58a74846983282267d', 'smallProfit', '++OrO3KQIS+TzybCOsQhcw==', '1', 'Jbn4oawYdnYGzFUG6EhS1A==', NULL, 'http://img.fhxasdsada.xyz//000000001312c10c0000000002255f0a?t=1578145613938', 'DM', '0-0-0');

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
) ENGINE = InnoDB AUTO_INCREMENT = 168 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of userAddress
-- ----------------------------
INSERT INTO `userAddress` VALUES (147, 'f92b9f8f372e445fb6564cdd57aa3c3e', '芳芳', '北京市 市辖区 东城区 东华门街道 ', 'sadasdasd', '18599988525', '2252821162@qq.com', '11,1101,110101,110101001,', '0', '闺蜜家', 0);
INSERT INTO `userAddress` VALUES (148, 'f92b9f8f372e445fb6564cdd57aa3c3e', 'ff', '北京市 市辖区 东城区 东华门街道 ', 'sadas', '18598814121', '32252@qq.com', '11,1101,110101,110101001,', '0', 'asd', 0);
INSERT INTO `userAddress` VALUES (149, 'f92b9f8f372e445fb6564cdd57aa3c3e', 'ff', '天津市 市辖区 和平区 劝业场街道 ', 'dasd', '18599988544', '2252@qq.com', '12,1201,120101,120101001,', '0', 'sad', 0);
INSERT INTO `userAddress` VALUES (150, 'f92b9f8f372e445fb6564cdd57aa3c3e', 'ff', '天津市 市辖区 和平区 劝业场街道 ', 'd156', '18598814121', '2252@qq.com', '12,1201,120101,120101001,', '0', 'ad', 0);
INSERT INTO `userAddress` VALUES (151, 'f92b9f8f372e445fb6564cdd57aa3c3e', 'asdasd', '北京市 市辖区 东城区 东华门街道 ', 'asdasd', '18598814421', 'sdasd@qq.com', '11,1101,110101,110101001,', '0', 'adas', 0);
INSERT INTO `userAddress` VALUES (152, 'f92b9f8f372e445fb6564cdd57aa3c3e', 'faf', '山西省 大同市 平城区 南关街道 ', 'asdas', '18598855555', '2252@qq.com', '14,1402,140213,140213001,', '0', 'dsa', 0);
INSERT INTO `userAddress` VALUES (153, '7c9fdfa3177042a08766aed29e7de6cd', '彭浩', '天津市 市辖区 南开区 鼓楼街道 ', '递四方速递', '15367885410', 'liuxianliangli@foxmail.com', '12,1201,120104,120104002,', '0', '学校', 0);
INSERT INTO `userAddress` VALUES (154, '7c9fdfa3177042a08766aed29e7de6cd', '三大法师', '山西省 大同市 云州区 西坪镇 ', '速度还是大', '15367885410', 'liuxianliangli@foxmail.com', '14,1402,140215,140215100,', '0', '速度还是大', 0);
INSERT INTO `userAddress` VALUES (155, '7c9fdfa3177042a08766aed29e7de6cd', '三个和尚的', '山西省 大同市 云冈区 永定庄街道 ', '速度还是大', '15367885410', 'liuxianliangli@foxmail.com', '14,1402,140214,140214004,', '0', '公司', 0);
INSERT INTO `userAddress` VALUES (156, 'f92b9f8f372e445fb6564cdd57aa3c3e', '芳芳', '北京市 市辖区 东城区 东华门街道 ', 'asdsad', '18598814121', '225252@qq.com', '11,1101,110101,110101001,', '0', 'sad', 0);
INSERT INTO `userAddress` VALUES (157, '7c9fdfa3177042a08766aed29e7de6cd', '订单号', '天津市 市辖区 河北区 望海楼街道 ', '速度还是大', '15367885410', 'liuxianliangli@foxmail.com', '12,1201,120105,120105002,', '0', '学校', 0);
INSERT INTO `userAddress` VALUES (158, '7c9fdfa3177042a08766aed29e7de6cd', '很多事', '山西省 阳泉市 矿区 沙坪街道 ', '三大法师', '15367885410', 'liuxianliangli@foxmail.com', '14,1403,140303,140303005,', '0', '闺蜜家', 0);
INSERT INTO `userAddress` VALUES (159, '7c9fdfa3177042a08766aed29e7de6cd', '递四方速递', '河北省 唐山市 古冶区 古冶街道 ', '速度还是大', '15367885410', 'liuxianliangli@foxmail.com', '13,1302,130204,130204003,', '0', '公司', 0);
INSERT INTO `userAddress` VALUES (160, '7c9fdfa3177042a08766aed29e7de6cd', '速度还是大', '河北省 唐山市 开平区 开平街道 ', '速度还是大', '15367885410', 'liuxianliangli@foxmail.com', '13,1302,130205,130205002,', '0', '学校', 0);
INSERT INTO `userAddress` VALUES (161, '7c9fdfa3177042a08766aed29e7de6cd', '是多喝点水', '内蒙古自治区 包头市 白云鄂博矿区 通阳道街道 ', '速度还是大', '15367885410', 'liuxianliangli@foxmail.com', '15,1502,150206,150206002,', '0', '学校', 0);
INSERT INTO `userAddress` VALUES (162, '7c9fdfa3177042a08766aed29e7de6cd', '是多喝点水', '河北省 唐山市 开平区 税务庄街道 ', '速度还是大', '15367885410', 'liuxianliangli@foxmail.com', '13,1302,130205,130205003,', '0', '是', 0);
INSERT INTO `userAddress` VALUES (163, '7c9fdfa3177042a08766aed29e7de6cd', '速度还是大', '河北省 唐山市 开平区 开平街道 ', '三大法师第三方第三方的是何等是非得失和GV的非官方的速度还是大', '15367885410', 'liuxianliangli@foxmail.com', '13,1302,130205,130205002,', '0', '对对对', 0);
INSERT INTO `userAddress` VALUES (164, '7c9fdfa3177042a08766aed29e7de6cd', '速度还是大', '山西省 大同市 云冈区 新平旺街道 ', '三大法师速度还是大', '15367885410', 'liuxianliangli@foxmail.com', '14,1402,140214,140214002,', '1', '学校', 1);
INSERT INTO `userAddress` VALUES (165, '7c9fdfa3177042a08766aed29e7de6cd', '递四方速递水电费', '内蒙古自治区 包头市 石拐区 石拐街道 ', '水电费水电费离开速度还是大', '15367885410', 'liuxianliangli@foxmail.com', '15,1502,150205,150205001,', '0', '公司', 1);
INSERT INTO `userAddress` VALUES (166, '7c9fdfa3177042a08766aed29e7de6cd', '的发送发送的', '山西省 太原市 杏花岭区 巨轮街道 ', '水电费水电费', '15367885410', 'liuxianliangli@foxmail.com', '14,1401,140107,140107001,', '0', '公司', 1);
INSERT INTO `userAddress` VALUES (167, 'f92b9f8f372e445fb6564cdd57aa3c3e', '方鸢', '河北省 唐山市 路南区 学院南路街道 ', 'dasdas', '18598814121', '2252821162@qq.com', '13,1302,130202,130202001,', '1', '闺蜜家', 1);

-- ----------------------------
-- Table structure for userConsumptionRecords
-- ----------------------------
DROP TABLE IF EXISTS `userConsumptionRecords`;
CREATE TABLE `userConsumptionRecords`  (
  `consumptiomId` int(11) NOT NULL AUTO_INCREMENT,
  `orderId` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `userId` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `paymentStatus` int(11) NULL DEFAULT NULL,
  `productName` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `senderId` int(11) NULL DEFAULT NULL,
  `paymentTime` datetime(0) NULL DEFAULT NULL,
  `paymentAmount` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`consumptiomId`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3163 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of userConsumptionRecords
-- ----------------------------
INSERT INTO `userConsumptionRecords` VALUES (2144, '1587114000360100039', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-17 17:12:49', '2898.0');
INSERT INTO `userConsumptionRecords` VALUES (2145, '1587114000360100039', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-17 17:12:51', '2898.0');
INSERT INTO `userConsumptionRecords` VALUES (2146, '1587114000360100039', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-17 17:12:52', '2898.0');
INSERT INTO `userConsumptionRecords` VALUES (2147, '1587114000360100039', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-17 17:12:54', '2898.0');
INSERT INTO `userConsumptionRecords` VALUES (2148, '1587114000360100039', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-17 17:12:55', '2898.0');
INSERT INTO `userConsumptionRecords` VALUES (2149, '1587114000360100039', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-17 17:12:56', '2898.0');
INSERT INTO `userConsumptionRecords` VALUES (2150, '1587114000360100039', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-17 17:12:58', '2898.0');
INSERT INTO `userConsumptionRecords` VALUES (2151, '1587114000360100039', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-17 17:12:59', '2898.0');
INSERT INTO `userConsumptionRecords` VALUES (2152, '1587114000360100039', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-17 17:13:00', '2898.0');
INSERT INTO `userConsumptionRecords` VALUES (2153, '1587114000360100039', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-17 17:13:02', '2898.0');
INSERT INTO `userConsumptionRecords` VALUES (2154, '1587114000360100039', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-17 17:13:03', '2898.0');
INSERT INTO `userConsumptionRecords` VALUES (2155, '1587114000360100039', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-17 17:13:04', '2898.0');
INSERT INTO `userConsumptionRecords` VALUES (2156, '1587114000360100039', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-17 17:13:06', '2898.0');
INSERT INTO `userConsumptionRecords` VALUES (2157, '1587114000360100039', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-17 17:13:07', '2898.0');
INSERT INTO `userConsumptionRecords` VALUES (2158, '1587114000360100039', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-17 17:13:08', '2898.0');
INSERT INTO `userConsumptionRecords` VALUES (2159, '1587114000360100039', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-17 17:13:10', '2898.0');
INSERT INTO `userConsumptionRecords` VALUES (2160, '1587114000360100039', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-17 17:13:11', '2898.0');
INSERT INTO `userConsumptionRecords` VALUES (2161, '1587114000360100039', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-17 17:13:13', '2898.0');
INSERT INTO `userConsumptionRecords` VALUES (2162, '1587114000360100039', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-17 17:13:14', '2898.0');
INSERT INTO `userConsumptionRecords` VALUES (2163, '1587114000360100039', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-17 17:13:15', '2898.0');
INSERT INTO `userConsumptionRecords` VALUES (2164, '1587114000360100039', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-17 17:13:17', '2898.0');
INSERT INTO `userConsumptionRecords` VALUES (2165, '1587114000360100039', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-17 17:13:18', '2898.0');
INSERT INTO `userConsumptionRecords` VALUES (2166, '1587114000360100039', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-17 17:13:19', '2898.0');
INSERT INTO `userConsumptionRecords` VALUES (2167, '1587114000360100039', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-17 17:13:21', '2898.0');
INSERT INTO `userConsumptionRecords` VALUES (2168, '1587114000360100039', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-17 17:13:22', '2898.0');
INSERT INTO `userConsumptionRecords` VALUES (2169, '1587114000360100039', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-17 17:13:24', '2898.0');
INSERT INTO `userConsumptionRecords` VALUES (2170, '1587114000360100039', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-17 17:13:25', '2898.0');
INSERT INTO `userConsumptionRecords` VALUES (2171, '1587114000360100039', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-17 17:13:27', '2898.0');
INSERT INTO `userConsumptionRecords` VALUES (2172, '1587114000360100039', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-17 17:13:28', '2898.0');
INSERT INTO `userConsumptionRecords` VALUES (2173, '1587114000360100039', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-17 17:13:29', '2898.0');
INSERT INTO `userConsumptionRecords` VALUES (2174, '1587114000360100039', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-17 17:13:31', '2898.0');
INSERT INTO `userConsumptionRecords` VALUES (2175, '1587114000360100039', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-17 17:13:32', '2898.0');
INSERT INTO `userConsumptionRecords` VALUES (2176, '1587114000360100039', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-17 17:13:33', '2898.0');
INSERT INTO `userConsumptionRecords` VALUES (2177, '1587114000360100039', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-17 17:13:35', '2898.0');
INSERT INTO `userConsumptionRecords` VALUES (2178, '1587114000360100039', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-17 17:13:36', '2898.0');
INSERT INTO `userConsumptionRecords` VALUES (2179, '1587114000360100039', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-17 17:13:37', '2898.0');
INSERT INTO `userConsumptionRecords` VALUES (2180, '1587114000360100039', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-17 17:13:39', '2898.0');
INSERT INTO `userConsumptionRecords` VALUES (2181, '1587114000360100039', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-17 17:18:11', '2898.0');
INSERT INTO `userConsumptionRecords` VALUES (2182, '1587114000360100039', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-17 17:18:12', '2898.0');
INSERT INTO `userConsumptionRecords` VALUES (2183, '1587114000360100039', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-17 17:18:13', '2898.0');
INSERT INTO `userConsumptionRecords` VALUES (2184, '1587114000360100039', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-17 17:18:14', '2898.0');
INSERT INTO `userConsumptionRecords` VALUES (2185, '1587114000360100039', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-17 17:18:16', '2898.0');
INSERT INTO `userConsumptionRecords` VALUES (2186, '1587114000360100039', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-17 17:18:17', '2898.0');
INSERT INTO `userConsumptionRecords` VALUES (2187, '1587114000360100039', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-17 17:18:18', '2898.0');
INSERT INTO `userConsumptionRecords` VALUES (2188, '1587114000360100039', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-17 17:18:20', '2898.0');
INSERT INTO `userConsumptionRecords` VALUES (2189, '1587114000360100039', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-17 17:18:21', '2898.0');
INSERT INTO `userConsumptionRecords` VALUES (2190, '1587114000360100039', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-17 17:18:23', '2898.0');
INSERT INTO `userConsumptionRecords` VALUES (2191, '1587114000360100039', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-17 17:18:24', '2898.0');
INSERT INTO `userConsumptionRecords` VALUES (2192, '1587114000360100039', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-17 17:18:26', '2898.0');
INSERT INTO `userConsumptionRecords` VALUES (2193, '1587114000360100039', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-17 17:18:27', '2898.0');
INSERT INTO `userConsumptionRecords` VALUES (2194, '1587114000360100039', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-17 17:18:28', '2898.0');
INSERT INTO `userConsumptionRecords` VALUES (2195, '1587114000360100039', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-17 17:18:30', '2898.0');
INSERT INTO `userConsumptionRecords` VALUES (2196, '1587114000360100039', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-17 17:18:31', '2898.0');
INSERT INTO `userConsumptionRecords` VALUES (2197, '1587114000360100039', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-17 17:18:33', '2898.0');
INSERT INTO `userConsumptionRecords` VALUES (2198, '1587114000360100039', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-17 17:18:34', '2898.0');
INSERT INTO `userConsumptionRecords` VALUES (2199, '1587114000360100039', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-17 17:18:35', '2898.0');
INSERT INTO `userConsumptionRecords` VALUES (2200, '1587114000360100039', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-17 17:18:37', '2898.0');
INSERT INTO `userConsumptionRecords` VALUES (2201, '1587114000360100039', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-17 17:18:38', '2898.0');
INSERT INTO `userConsumptionRecords` VALUES (2202, '1587114000360100039', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-17 17:18:40', '2898.0');
INSERT INTO `userConsumptionRecords` VALUES (2203, '1587114000360100039', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-17 17:18:41', '2898.0');
INSERT INTO `userConsumptionRecords` VALUES (2204, '1587114000360100039', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-17 17:18:43', '2898.0');
INSERT INTO `userConsumptionRecords` VALUES (2205, '1587114000360100039', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-17 17:18:44', '2898.0');
INSERT INTO `userConsumptionRecords` VALUES (2206, '1587114000360100039', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-17 17:18:45', '2898.0');
INSERT INTO `userConsumptionRecords` VALUES (2207, '1587114000360100039', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-17 17:18:47', '2898.0');
INSERT INTO `userConsumptionRecords` VALUES (2208, '1587114000360100039', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-17 17:18:48', '2898.0');
INSERT INTO `userConsumptionRecords` VALUES (2209, '1587114000360100039', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-17 17:18:50', '2898.0');
INSERT INTO `userConsumptionRecords` VALUES (2210, '1587114000360100039', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-17 17:18:51', '2898.0');
INSERT INTO `userConsumptionRecords` VALUES (2211, '1587114000360100039', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-17 17:18:53', '2898.0');
INSERT INTO `userConsumptionRecords` VALUES (2212, '1587114000360100039', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-17 17:18:54', '2898.0');
INSERT INTO `userConsumptionRecords` VALUES (2213, '1587114000360100039', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-17 17:18:55', '2898.0');
INSERT INTO `userConsumptionRecords` VALUES (2214, '1587114000360100039', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-17 17:18:57', '2898.0');
INSERT INTO `userConsumptionRecords` VALUES (2215, '1587114000360100039', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-17 17:18:59', '2898.0');
INSERT INTO `userConsumptionRecords` VALUES (2216, '1587114000360100039', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-17 17:19:01', '2898.0');
INSERT INTO `userConsumptionRecords` VALUES (2217, '1587114000360100039', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-17 17:19:02', '2898.0');
INSERT INTO `userConsumptionRecords` VALUES (2218, '1587114000360100039', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-17 17:19:04', '2898.0');
INSERT INTO `userConsumptionRecords` VALUES (2219, '1587114000360100039', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-17 17:19:05', '2898.0');
INSERT INTO `userConsumptionRecords` VALUES (2220, '1587114000360100039', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-17 17:19:07', '2898.0');
INSERT INTO `userConsumptionRecords` VALUES (2221, '1587114000360100039', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-17 17:19:08', '2898.0');
INSERT INTO `userConsumptionRecords` VALUES (2222, '1587114000360100039', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-17 17:19:09', '2898.0');
INSERT INTO `userConsumptionRecords` VALUES (2223, '1587114000360100039', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-17 17:19:11', '2898.0');
INSERT INTO `userConsumptionRecords` VALUES (2224, '1587114000360100039', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-17 17:19:12', '2898.0');
INSERT INTO `userConsumptionRecords` VALUES (2225, '1587114000360100039', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-17 17:19:14', '2898.0');
INSERT INTO `userConsumptionRecords` VALUES (2226, '1587114000360100039', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-17 17:19:15', '2898.0');
INSERT INTO `userConsumptionRecords` VALUES (2227, '1587114000360100039', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-17 17:19:17', '2898.0');
INSERT INTO `userConsumptionRecords` VALUES (2228, '1587114000360100039', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-17 17:19:18', '2898.0');
INSERT INTO `userConsumptionRecords` VALUES (2229, '1587114000360100039', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-17 17:19:19', '2898.0');
INSERT INTO `userConsumptionRecords` VALUES (2230, '1587114000360100039', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-17 17:19:21', '2898.0');
INSERT INTO `userConsumptionRecords` VALUES (2231, '1587114000360100039', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-17 17:19:23', '2898.0');
INSERT INTO `userConsumptionRecords` VALUES (2232, '1587114000360100039', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-17 17:19:24', '2898.0');
INSERT INTO `userConsumptionRecords` VALUES (2233, '1587114000360100039', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-17 17:19:25', '2898.0');
INSERT INTO `userConsumptionRecords` VALUES (2234, '1587114000360100039', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-17 17:19:27', '2898.0');
INSERT INTO `userConsumptionRecords` VALUES (2235, '1587114000360100039', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-17 17:19:28', '2898.0');
INSERT INTO `userConsumptionRecords` VALUES (2236, '1587114000360100039', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-17 17:19:30', '2898.0');
INSERT INTO `userConsumptionRecords` VALUES (2237, '1587114000360100039', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-17 17:19:31', '2898.0');
INSERT INTO `userConsumptionRecords` VALUES (2238, '1587114000360100039', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-17 17:19:33', '2898.0');
INSERT INTO `userConsumptionRecords` VALUES (2239, '1587114000360100039', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-17 17:19:34', '2898.0');
INSERT INTO `userConsumptionRecords` VALUES (2240, '1587114000360100039', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-17 17:19:36', '2898.0');
INSERT INTO `userConsumptionRecords` VALUES (2241, '1587114000360100039', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-17 17:19:37', '2898.0');
INSERT INTO `userConsumptionRecords` VALUES (2242, '1587114000360100039', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-17 17:19:39', '2898.0');
INSERT INTO `userConsumptionRecords` VALUES (2243, '1587114000360100039', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-17 17:19:40', '2898.0');
INSERT INTO `userConsumptionRecords` VALUES (2244, '1587114000360100039', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-17 17:19:41', '2898.0');
INSERT INTO `userConsumptionRecords` VALUES (2245, '1587114000360100039', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-17 17:19:43', '2898.0');
INSERT INTO `userConsumptionRecords` VALUES (2246, '1587114000360100039', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-17 17:19:45', '2898.0');
INSERT INTO `userConsumptionRecords` VALUES (2247, '1587114000360100039', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-17 17:19:46', '2898.0');
INSERT INTO `userConsumptionRecords` VALUES (2248, '1587114000360100039', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-17 17:19:48', '2898.0');
INSERT INTO `userConsumptionRecords` VALUES (2249, '1587114000360100039', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-17 17:19:49', '2898.0');
INSERT INTO `userConsumptionRecords` VALUES (2250, '1587114000360100039', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-17 17:19:51', '2898.0');
INSERT INTO `userConsumptionRecords` VALUES (2251, '1587114000360100039', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-17 17:19:52', '2898.0');
INSERT INTO `userConsumptionRecords` VALUES (2252, '1587114000360100039', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-17 17:19:53', '2898.0');
INSERT INTO `userConsumptionRecords` VALUES (2253, '1587114000360100039', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-17 17:19:55', '2898.0');
INSERT INTO `userConsumptionRecords` VALUES (2254, '1587114000360100039', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-17 17:19:56', '2898.0');
INSERT INTO `userConsumptionRecords` VALUES (2255, '1587114000360100039', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-17 17:19:58', '2898.0');
INSERT INTO `userConsumptionRecords` VALUES (2256, '1587114000360100039', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-17 17:19:59', '2898.0');
INSERT INTO `userConsumptionRecords` VALUES (2257, '1587114000360100039', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-17 17:20:01', '2898.0');
INSERT INTO `userConsumptionRecords` VALUES (2258, '1587114000360100039', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-17 17:20:03', '2898.0');
INSERT INTO `userConsumptionRecords` VALUES (2259, '1587114000360100039', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-17 17:20:04', '2898.0');
INSERT INTO `userConsumptionRecords` VALUES (2260, '1587114000360100039', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-17 17:20:05', '2898.0');
INSERT INTO `userConsumptionRecords` VALUES (2261, '1587114000360100039', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-17 17:20:07', '2898.0');
INSERT INTO `userConsumptionRecords` VALUES (2262, '1587114000360100039', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-17 17:20:08', '2898.0');
INSERT INTO `userConsumptionRecords` VALUES (2263, '1587114000360100039', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-17 17:20:10', '2898.0');
INSERT INTO `userConsumptionRecords` VALUES (2264, '1587114000360100039', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-17 17:20:11', '2898.0');
INSERT INTO `userConsumptionRecords` VALUES (2265, '1587114000360100039', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-17 17:20:13', '2898.0');
INSERT INTO `userConsumptionRecords` VALUES (2266, '1587114000360100039', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-17 17:20:14', '2898.0');
INSERT INTO `userConsumptionRecords` VALUES (2267, '1587114000360100039', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-17 17:20:16', '2898.0');
INSERT INTO `userConsumptionRecords` VALUES (2268, '1587114000360100039', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-17 17:20:17', '2898.0');
INSERT INTO `userConsumptionRecords` VALUES (2269, '1587114000360100039', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-17 17:20:19', '2898.0');
INSERT INTO `userConsumptionRecords` VALUES (2270, '1587114000360100039', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-17 17:20:20', '2898.0');
INSERT INTO `userConsumptionRecords` VALUES (2271, '1587114000360100039', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-17 17:20:22', '2898.0');
INSERT INTO `userConsumptionRecords` VALUES (2272, '1587114000360100039', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-17 17:20:23', '2898.0');
INSERT INTO `userConsumptionRecords` VALUES (2273, '1587114000360100039', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-17 17:20:25', '2898.0');
INSERT INTO `userConsumptionRecords` VALUES (2274, '1587114000360100039', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-17 17:20:26', '2898.0');
INSERT INTO `userConsumptionRecords` VALUES (2275, '1587114000360100039', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-17 17:20:28', '2898.0');
INSERT INTO `userConsumptionRecords` VALUES (2276, '1587114000360100039', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-17 17:20:29', '2898.0');
INSERT INTO `userConsumptionRecords` VALUES (2277, '1587114000360100039', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-17 17:20:31', '2898.0');
INSERT INTO `userConsumptionRecords` VALUES (2278, '1587114000360100039', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-17 17:20:33', '2898.0');
INSERT INTO `userConsumptionRecords` VALUES (2279, '1587114000360100039', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-17 17:20:34', '2898.0');
INSERT INTO `userConsumptionRecords` VALUES (2280, '1587114000360100039', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-17 17:20:36', '2898.0');
INSERT INTO `userConsumptionRecords` VALUES (2281, '1587114000360100039', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-17 17:20:37', '2898.0');
INSERT INTO `userConsumptionRecords` VALUES (2282, '1587114000360100039', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-17 17:20:39', '2898.0');
INSERT INTO `userConsumptionRecords` VALUES (2283, '1587114000360100039', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-17 17:20:40', '2898.0');
INSERT INTO `userConsumptionRecords` VALUES (2284, '1587114000360100039', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-17 17:20:42', '2898.0');
INSERT INTO `userConsumptionRecords` VALUES (2285, '1587114000360100039', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-17 17:20:45', '2898.0');
INSERT INTO `userConsumptionRecords` VALUES (2286, '1587114000360100039', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-17 17:20:44', '2898.0');
INSERT INTO `userConsumptionRecords` VALUES (2287, '1587114000360100039', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-17 17:20:48', '2898.0');
INSERT INTO `userConsumptionRecords` VALUES (2288, '1587114000360100039', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-17 17:20:46', '2898.0');
INSERT INTO `userConsumptionRecords` VALUES (2289, '1587114000360100039', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-17 17:20:49', '2898.0');
INSERT INTO `userConsumptionRecords` VALUES (2290, '1587114000360100039', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-17 17:20:51', '2898.0');
INSERT INTO `userConsumptionRecords` VALUES (2291, '1587114000360100039', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-17 17:20:54', '2898.0');
INSERT INTO `userConsumptionRecords` VALUES (2292, '1587114000360100039', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-17 17:20:53', '2898.0');
INSERT INTO `userConsumptionRecords` VALUES (2293, '1587114000360100039', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-17 17:20:55', '2898.0');
INSERT INTO `userConsumptionRecords` VALUES (2294, '1587114000360100039', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-17 17:20:57', '2898.0');
INSERT INTO `userConsumptionRecords` VALUES (2295, '1587114000360100039', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-17 17:21:00', '2898.0');
INSERT INTO `userConsumptionRecords` VALUES (2296, '1587114000360100039', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-17 17:20:59', '2898.0');
INSERT INTO `userConsumptionRecords` VALUES (2297, '1587114000360100039', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-17 17:21:02', '2898.0');
INSERT INTO `userConsumptionRecords` VALUES (2298, '1587114000360100039', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-17 17:21:04', '2898.0');
INSERT INTO `userConsumptionRecords` VALUES (2299, '1587114000360100039', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-17 17:21:04', '2898.0');
INSERT INTO `userConsumptionRecords` VALUES (2300, '1587114000360100039', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-17 17:21:08', '2898.0');
INSERT INTO `userConsumptionRecords` VALUES (2301, '1587114000360100039', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-17 17:21:08', '2898.0');
INSERT INTO `userConsumptionRecords` VALUES (2302, '1587114000360100039', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-17 17:21:11', '2898.0');
INSERT INTO `userConsumptionRecords` VALUES (2303, '1587114000360100039', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-17 17:21:10', '2898.0');
INSERT INTO `userConsumptionRecords` VALUES (2304, '1587114000360100039', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-17 17:21:14', '2898.0');
INSERT INTO `userConsumptionRecords` VALUES (2305, '1587114000360100039', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-17 17:21:14', '2898.0');
INSERT INTO `userConsumptionRecords` VALUES (2306, '1587114000360100039', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-17 17:21:18', '2898.0');
INSERT INTO `userConsumptionRecords` VALUES (2307, '1587114000360100039', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-17 17:21:16', '2898.0');
INSERT INTO `userConsumptionRecords` VALUES (2308, '1587114000360100039', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-17 17:21:21', '2898.0');
INSERT INTO `userConsumptionRecords` VALUES (2309, '1587114000360100039', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-17 17:21:20', '2898.0');
INSERT INTO `userConsumptionRecords` VALUES (2310, '1587114000360100039', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-17 17:21:23', '2898.0');
INSERT INTO `userConsumptionRecords` VALUES (2311, '1587114000360100039', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-17 17:21:23', '2898.0');
INSERT INTO `userConsumptionRecords` VALUES (2312, '1587114000360100039', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-17 17:21:27', '2898.0');
INSERT INTO `userConsumptionRecords` VALUES (2313, '1587114000360100039', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-17 17:21:26', '2898.0');
INSERT INTO `userConsumptionRecords` VALUES (2314, '1587114000360100039', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-17 17:21:29', '2898.0');
INSERT INTO `userConsumptionRecords` VALUES (2315, '1587114000360100039', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-17 17:21:31', '2898.0');
INSERT INTO `userConsumptionRecords` VALUES (2316, '1587114000360100039', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-17 17:21:31', '2898.0');
INSERT INTO `userConsumptionRecords` VALUES (2317, '1587114000360100039', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-17 17:21:35', '2898.0');
INSERT INTO `userConsumptionRecords` VALUES (2318, '1587114000360100039', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-17 17:21:34', '2898.0');
INSERT INTO `userConsumptionRecords` VALUES (2319, '1587114000360100039', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-17 17:21:36', '2898.0');
INSERT INTO `userConsumptionRecords` VALUES (2320, '1587114000360100039', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-17 17:21:40', '2898.0');
INSERT INTO `userConsumptionRecords` VALUES (2321, '1587114000360100039', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-17 17:21:38', '2898.0');
INSERT INTO `userConsumptionRecords` VALUES (2322, '1587114000360100039', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-17 17:21:41', '2898.0');
INSERT INTO `userConsumptionRecords` VALUES (2323, '1587114000360100039', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-17 17:21:44', '2898.0');
INSERT INTO `userConsumptionRecords` VALUES (2324, '1587114000360100039', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-17 17:21:44', '2898.0');
INSERT INTO `userConsumptionRecords` VALUES (2325, '1587114000360100039', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-17 17:21:47', '2898.0');
INSERT INTO `userConsumptionRecords` VALUES (2326, '1587114000360100039', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-17 17:21:47', '2898.0');
INSERT INTO `userConsumptionRecords` VALUES (2327, '1587114000360100039', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-17 17:21:49', '2898.0');
INSERT INTO `userConsumptionRecords` VALUES (2328, '1587114000360100039', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-17 17:21:52', '2898.0');
INSERT INTO `userConsumptionRecords` VALUES (2329, '1587114000360100039', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-17 17:21:52', '2898.0');
INSERT INTO `userConsumptionRecords` VALUES (2330, '1587114000360100039', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-17 17:21:56', '2898.0');
INSERT INTO `userConsumptionRecords` VALUES (2331, '1587114000360100039', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-17 17:21:54', '2898.0');
INSERT INTO `userConsumptionRecords` VALUES (2332, '1587114000360100039', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-17 17:21:57', '2898.0');
INSERT INTO `userConsumptionRecords` VALUES (2333, '1587114000360100039', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-17 17:22:00', '2898.0');
INSERT INTO `userConsumptionRecords` VALUES (2334, '1587114000360100039', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-17 17:22:00', '2898.0');
INSERT INTO `userConsumptionRecords` VALUES (2335, '1587114000360100039', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-17 17:22:04', '2898.0');
INSERT INTO `userConsumptionRecords` VALUES (2336, '1587114000360100039', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-17 17:22:03', '2898.0');
INSERT INTO `userConsumptionRecords` VALUES (2337, '1587114000360100039', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-17 17:22:07', '2898.0');
INSERT INTO `userConsumptionRecords` VALUES (2338, '1587114000360100039', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-17 17:22:06', '2898.0');
INSERT INTO `userConsumptionRecords` VALUES (2339, '1587114000360100039', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-17 17:22:09', '2898.0');
INSERT INTO `userConsumptionRecords` VALUES (2340, '1587114000360100039', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-17 17:22:11', '2898.0');
INSERT INTO `userConsumptionRecords` VALUES (2341, '1587114000360100039', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-17 17:22:11', '2898.0');
INSERT INTO `userConsumptionRecords` VALUES (2342, '1587114000360100039', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-17 17:22:14', '2898.0');
INSERT INTO `userConsumptionRecords` VALUES (2343, '1587114000360100039', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-17 17:22:15', '2898.0');
INSERT INTO `userConsumptionRecords` VALUES (2344, '1587114000360100039', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-17 17:22:19', '2898.0');
INSERT INTO `userConsumptionRecords` VALUES (2345, '1587114000360100039', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-17 17:22:18', '2898.0');
INSERT INTO `userConsumptionRecords` VALUES (2346, '1587114000360100039', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-17 17:22:21', '2898.0');
INSERT INTO `userConsumptionRecords` VALUES (2347, '1587114000360100039', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-17 17:22:21', '2898.0');
INSERT INTO `userConsumptionRecords` VALUES (2348, '1587114000360100039', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-17 17:22:24', '2898.0');
INSERT INTO `userConsumptionRecords` VALUES (2349, '1587114000360100039', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-17 17:22:24', '2898.0');
INSERT INTO `userConsumptionRecords` VALUES (2350, '1587114000360100039', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-17 17:22:27', '2898.0');
INSERT INTO `userConsumptionRecords` VALUES (2351, '1587114000360100039', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-17 17:22:28', '2898.0');
INSERT INTO `userConsumptionRecords` VALUES (2352, '1587114000360100039', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-17 17:22:30', '2898.0');
INSERT INTO `userConsumptionRecords` VALUES (2353, '1587114000360100039', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-17 17:22:31', '2898.0');
INSERT INTO `userConsumptionRecords` VALUES (2354, '1587114000360100039', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-17 17:22:33', '2898.0');
INSERT INTO `userConsumptionRecords` VALUES (2355, '1587114000360100039', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-17 17:22:35', '2898.0');
INSERT INTO `userConsumptionRecords` VALUES (2356, '1587114000360100039', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-17 17:22:36', '2898.0');
INSERT INTO `userConsumptionRecords` VALUES (2357, '1587114000360100039', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-17 17:22:38', '2898.0');
INSERT INTO `userConsumptionRecords` VALUES (2358, '1587114000360100039', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-17 17:22:40', '2898.0');
INSERT INTO `userConsumptionRecords` VALUES (2359, '1587114000360100039', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-17 17:22:41', '2898.0');
INSERT INTO `userConsumptionRecords` VALUES (2360, '1587114000360100039', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-17 17:22:43', '2898.0');
INSERT INTO `userConsumptionRecords` VALUES (2361, '1587114000360100039', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-17 17:22:45', '2898.0');
INSERT INTO `userConsumptionRecords` VALUES (2362, '1587114000360100039', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-17 17:22:46', '2898.0');
INSERT INTO `userConsumptionRecords` VALUES (2363, '1587114000360100039', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-17 17:22:48', '2898.0');
INSERT INTO `userConsumptionRecords` VALUES (2364, '1587114000360100039', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-17 17:22:49', '2898.0');
INSERT INTO `userConsumptionRecords` VALUES (2365, '1587114000360100039', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-17 17:22:51', '2898.0');
INSERT INTO `userConsumptionRecords` VALUES (2366, '1587114000360100039', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-17 17:22:53', '2898.0');
INSERT INTO `userConsumptionRecords` VALUES (2367, '1587114000360100039', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-17 17:22:54', '2898.0');
INSERT INTO `userConsumptionRecords` VALUES (2368, '1587114000360100039', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-17 17:22:56', '2898.0');
INSERT INTO `userConsumptionRecords` VALUES (2369, '1587114000360100039', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-17 17:22:58', '2898.0');
INSERT INTO `userConsumptionRecords` VALUES (2370, '1587114000360100039', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-17 17:22:59', '2898.0');
INSERT INTO `userConsumptionRecords` VALUES (2371, '1587114000360100039', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-17 17:23:01', '2898.0');
INSERT INTO `userConsumptionRecords` VALUES (2372, '1587114000360100039', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-17 17:23:02', '2898.0');
INSERT INTO `userConsumptionRecords` VALUES (2373, '1587114000360100039', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-17 17:23:04', '2898.0');
INSERT INTO `userConsumptionRecords` VALUES (2374, '1587114000360100039', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-17 17:23:06', '2898.0');
INSERT INTO `userConsumptionRecords` VALUES (2375, '1587114000360100039', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-17 17:23:08', '2898.0');
INSERT INTO `userConsumptionRecords` VALUES (2376, '1587114000360100039', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-17 17:23:09', '2898.0');
INSERT INTO `userConsumptionRecords` VALUES (2377, '1587114000360100039', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-17 17:23:11', '2898.0');
INSERT INTO `userConsumptionRecords` VALUES (2378, '1587114000360100039', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-17 17:23:13', '2898.0');
INSERT INTO `userConsumptionRecords` VALUES (2379, '1587114000360100039', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-17 17:23:14', '2898.0');
INSERT INTO `userConsumptionRecords` VALUES (2380, '1587114000360100039', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-17 17:23:16', '2898.0');
INSERT INTO `userConsumptionRecords` VALUES (2381, '1587114000360100039', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-17 17:23:17', '2898.0');
INSERT INTO `userConsumptionRecords` VALUES (2382, '1587114000360100039', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-17 17:23:19', '2898.0');
INSERT INTO `userConsumptionRecords` VALUES (2383, '1587114000360100039', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-17 17:23:21', '2898.0');
INSERT INTO `userConsumptionRecords` VALUES (2384, '1587114000360100039', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-17 17:23:23', '2898.0');
INSERT INTO `userConsumptionRecords` VALUES (2385, '1587114000360100039', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-17 17:23:24', '2898.0');
INSERT INTO `userConsumptionRecords` VALUES (2386, '1587114000360100039', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-17 17:23:26', '2898.0');
INSERT INTO `userConsumptionRecords` VALUES (2387, '1587114000360100039', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-17 17:23:28', '2898.0');
INSERT INTO `userConsumptionRecords` VALUES (2388, '1587114000360100039', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-17 17:23:29', '2898.0');
INSERT INTO `userConsumptionRecords` VALUES (2389, '1587114000360100039', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-17 17:23:31', '2898.0');
INSERT INTO `userConsumptionRecords` VALUES (2390, '1587114000360100039', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-17 17:23:32', '2898.0');
INSERT INTO `userConsumptionRecords` VALUES (2391, '1587114000360100039', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-17 17:23:34', '2898.0');
INSERT INTO `userConsumptionRecords` VALUES (2392, '1587114000360100039', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-17 17:23:36', '2898.0');
INSERT INTO `userConsumptionRecords` VALUES (2393, '1587114000360100039', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-17 17:23:37', '2898.0');
INSERT INTO `userConsumptionRecords` VALUES (2394, '1587114000360100039', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-17 17:23:39', '2898.0');
INSERT INTO `userConsumptionRecords` VALUES (2395, '1587114000360100039', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-17 17:23:45', '2898.0');
INSERT INTO `userConsumptionRecords` VALUES (2396, '1587114000360100039', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-17 17:23:44', '2898.0');
INSERT INTO `userConsumptionRecords` VALUES (2397, '1587114000360100039', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-17 17:23:47', '2898.0');
INSERT INTO `userConsumptionRecords` VALUES (2398, '1587114000360100039', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-17 17:23:47', '2898.0');
INSERT INTO `userConsumptionRecords` VALUES (2399, '1587114000360100039', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-17 17:23:51', '2898.0');
INSERT INTO `userConsumptionRecords` VALUES (2400, '1587114000360100039', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-17 17:23:50', '2898.0');
INSERT INTO `userConsumptionRecords` VALUES (2401, '1587114000360100039', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-17 17:23:54', '2898.0');
INSERT INTO `userConsumptionRecords` VALUES (2402, '1587114000360100039', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-17 17:23:54', '2898.0');
INSERT INTO `userConsumptionRecords` VALUES (2403, '1587114000360100039', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-17 17:23:58', '2898.0');
INSERT INTO `userConsumptionRecords` VALUES (2404, '1587114000360100039', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-17 17:23:57', '2898.0');
INSERT INTO `userConsumptionRecords` VALUES (2405, '1587114000360100039', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-17 17:24:01', '2898.0');
INSERT INTO `userConsumptionRecords` VALUES (2406, '1587115429066100003', 'f92b9f8f372e445fb6564cdd57aa3c3e', 1, NULL, 3, '2020-04-17 17:23:59', '20.0');
INSERT INTO `userConsumptionRecords` VALUES (2407, '1587114000360100039', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-17 17:24:03', '2898.0');
INSERT INTO `userConsumptionRecords` VALUES (2408, '1587114000360100039', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-17 17:24:02', '2898.0');
INSERT INTO `userConsumptionRecords` VALUES (2409, '1587114000360100039', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-17 17:24:06', '2898.0');
INSERT INTO `userConsumptionRecords` VALUES (2410, '1587114000360100039', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-17 17:24:06', '2898.0');
INSERT INTO `userConsumptionRecords` VALUES (2411, '1587114000360100039', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-17 17:24:10', '2898.0');
INSERT INTO `userConsumptionRecords` VALUES (2412, '1587114000360100039', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-17 17:24:09', '2898.0');
INSERT INTO `userConsumptionRecords` VALUES (2413, '1587114000360100039', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-17 17:24:13', '2898.0');
INSERT INTO `userConsumptionRecords` VALUES (2414, '1587114000360100039', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-17 17:24:13', '2898.0');
INSERT INTO `userConsumptionRecords` VALUES (2415, '1587114000360100039', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-17 17:24:17', '2898.0');
INSERT INTO `userConsumptionRecords` VALUES (2416, '1587114000360100039', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-17 17:24:16', '2898.0');
INSERT INTO `userConsumptionRecords` VALUES (2417, '1587114000360100039', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-17 17:24:20', '2898.0');
INSERT INTO `userConsumptionRecords` VALUES (2418, '1587114000360100039', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-17 17:24:20', '2898.0');
INSERT INTO `userConsumptionRecords` VALUES (2419, '1587114000360100039', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-17 17:24:24', '2898.0');
INSERT INTO `userConsumptionRecords` VALUES (2420, '1587114000360100039', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-17 17:24:23', '2898.0');
INSERT INTO `userConsumptionRecords` VALUES (2421, '1587114000360100039', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-17 17:24:27', '2898.0');
INSERT INTO `userConsumptionRecords` VALUES (2422, '1587114000360100039', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-17 17:24:26', '2898.0');
INSERT INTO `userConsumptionRecords` VALUES (2423, '1587114000360100039', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-17 17:24:30', '2898.0');
INSERT INTO `userConsumptionRecords` VALUES (2424, '1587114000360100039', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-17 17:24:30', '2898.0');
INSERT INTO `userConsumptionRecords` VALUES (2425, '1587114000360100039', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-17 17:24:34', '2898.0');
INSERT INTO `userConsumptionRecords` VALUES (2426, '1587114000360100039', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-17 17:24:33', '2898.0');
INSERT INTO `userConsumptionRecords` VALUES (2427, '1587114000360100039', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-17 17:24:37', '2898.0');
INSERT INTO `userConsumptionRecords` VALUES (2428, '1587114000360100039', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-17 17:24:37', '2898.0');
INSERT INTO `userConsumptionRecords` VALUES (2429, '1587114000360100039', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-17 17:24:41', '2898.0');
INSERT INTO `userConsumptionRecords` VALUES (2430, '1587114000360100039', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-17 17:24:40', '2898.0');
INSERT INTO `userConsumptionRecords` VALUES (2431, '1587114000360100039', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-17 17:24:44', '2898.0');
INSERT INTO `userConsumptionRecords` VALUES (2432, '1587114000360100039', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-17 17:24:44', '2898.0');
INSERT INTO `userConsumptionRecords` VALUES (2433, '1587114000360100039', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-17 17:24:48', '2898.0');
INSERT INTO `userConsumptionRecords` VALUES (2434, '1587114000360100039', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-17 17:24:47', '2898.0');
INSERT INTO `userConsumptionRecords` VALUES (2435, '1587114000360100039', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-17 17:24:51', '2898.0');
INSERT INTO `userConsumptionRecords` VALUES (2436, '1587114000360100039', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-17 17:24:51', '2898.0');
INSERT INTO `userConsumptionRecords` VALUES (2437, '1587114000360100039', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-17 17:24:55', '2898.0');
INSERT INTO `userConsumptionRecords` VALUES (2438, '1587114000360100039', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-17 17:24:54', '2898.0');
INSERT INTO `userConsumptionRecords` VALUES (2439, '1587114000360100039', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-17 17:24:58', '2898.0');
INSERT INTO `userConsumptionRecords` VALUES (2440, '1587114000360100039', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-17 17:24:58', '2898.0');
INSERT INTO `userConsumptionRecords` VALUES (2441, '1587114000360100039', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-17 17:25:02', '2898.0');
INSERT INTO `userConsumptionRecords` VALUES (2442, '1587114000360100039', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-17 17:25:01', '2898.0');
INSERT INTO `userConsumptionRecords` VALUES (2443, '1587114000360100039', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-17 17:25:05', '2898.0');
INSERT INTO `userConsumptionRecords` VALUES (2444, '1587114000360100039', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-17 17:25:05', '2898.0');
INSERT INTO `userConsumptionRecords` VALUES (2445, '1587114000360100039', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-17 17:25:09', '2898.0');
INSERT INTO `userConsumptionRecords` VALUES (2446, '1587114000360100039', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-17 17:25:08', '2898.0');
INSERT INTO `userConsumptionRecords` VALUES (2447, '1587114000360100039', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-17 17:25:12', '2898.0');
INSERT INTO `userConsumptionRecords` VALUES (2448, '1587114000360100039', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-17 17:25:12', '2898.0');
INSERT INTO `userConsumptionRecords` VALUES (2449, '1587114000360100039', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-17 17:25:16', '2898.0');
INSERT INTO `userConsumptionRecords` VALUES (2450, '1587114000360100039', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-17 17:25:15', '2898.0');
INSERT INTO `userConsumptionRecords` VALUES (2451, '1587114000360100039', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-17 17:25:19', '2898.0');
INSERT INTO `userConsumptionRecords` VALUES (2452, '1587114000360100039', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-17 17:25:19', '2898.0');
INSERT INTO `userConsumptionRecords` VALUES (2453, '1587114000360100039', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-17 17:25:23', '2898.0');
INSERT INTO `userConsumptionRecords` VALUES (2454, '1587114000360100039', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-17 17:25:22', '2898.0');
INSERT INTO `userConsumptionRecords` VALUES (2455, '1587114000360100039', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-17 17:25:26', '2898.0');
INSERT INTO `userConsumptionRecords` VALUES (2456, '1587114000360100039', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-17 17:25:26', '2898.0');
INSERT INTO `userConsumptionRecords` VALUES (2457, '1587114000360100039', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-17 17:25:30', '2898.0');
INSERT INTO `userConsumptionRecords` VALUES (2458, '1587114000360100039', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-17 17:25:29', '2898.0');
INSERT INTO `userConsumptionRecords` VALUES (2459, '1587114000360100039', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-17 17:25:33', '2898.0');
INSERT INTO `userConsumptionRecords` VALUES (2460, '1587114000360100039', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-17 17:25:33', '2898.0');
INSERT INTO `userConsumptionRecords` VALUES (2461, '1587114000360100039', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-17 17:25:37', '2898.0');
INSERT INTO `userConsumptionRecords` VALUES (2462, '1587114000360100039', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-17 17:25:36', '2898.0');
INSERT INTO `userConsumptionRecords` VALUES (2463, '1587114000360100039', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-17 17:25:40', '2898.0');
INSERT INTO `userConsumptionRecords` VALUES (2464, '1587114000360100039', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-17 17:25:40', '2898.0');
INSERT INTO `userConsumptionRecords` VALUES (2465, '1587114000360100039', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-17 17:25:42', '2898.0');
INSERT INTO `userConsumptionRecords` VALUES (2466, '1587114000360100039', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-17 17:25:43', '2898.0');
INSERT INTO `userConsumptionRecords` VALUES (2467, '1587114000360100039', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-17 17:25:45', '2898.0');
INSERT INTO `userConsumptionRecords` VALUES (2468, '1587114000360100039', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-17 17:25:47', '2898.0');
INSERT INTO `userConsumptionRecords` VALUES (2469, '1587114000360100039', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-17 17:25:49', '2898.0');
INSERT INTO `userConsumptionRecords` VALUES (2470, '1587114000360100039', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-17 17:25:51', '2898.0');
INSERT INTO `userConsumptionRecords` VALUES (2471, '1587114000360100039', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-17 17:25:53', '2898.0');
INSERT INTO `userConsumptionRecords` VALUES (2472, '1587114000360100039', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-17 17:25:54', '2898.0');
INSERT INTO `userConsumptionRecords` VALUES (2473, '1587114000360100039', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-17 17:25:56', '2898.0');
INSERT INTO `userConsumptionRecords` VALUES (2474, '1587114000360100039', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-17 17:25:58', '2898.0');
INSERT INTO `userConsumptionRecords` VALUES (2475, '1587114000360100039', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-17 17:25:59', '2898.0');
INSERT INTO `userConsumptionRecords` VALUES (2476, '1587114000360100039', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-17 17:26:01', '2898.0');
INSERT INTO `userConsumptionRecords` VALUES (2477, '1587114000360100039', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-17 17:26:03', '2898.0');
INSERT INTO `userConsumptionRecords` VALUES (2478, '1587114000360100039', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-17 17:26:05', '2898.0');
INSERT INTO `userConsumptionRecords` VALUES (2479, '1587114000360100039', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-17 17:26:07', '2898.0');
INSERT INTO `userConsumptionRecords` VALUES (2480, '1587114000360100039', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-17 17:26:45', '2898.0');
INSERT INTO `userConsumptionRecords` VALUES (2481, '1587114000360100039', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-17 17:35:08', '2898.0');
INSERT INTO `userConsumptionRecords` VALUES (2482, '1587114000360100039', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-17 17:36:46', '2898.0');
INSERT INTO `userConsumptionRecords` VALUES (2483, '1587114000360100039', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-17 17:36:48', '2898.0');
INSERT INTO `userConsumptionRecords` VALUES (2484, '1587114000360100039', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-17 17:36:49', '2898.0');
INSERT INTO `userConsumptionRecords` VALUES (2485, '1587114000360100039', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-17 17:36:51', '2898.0');
INSERT INTO `userConsumptionRecords` VALUES (2486, '1587260740570100001', 'f92b9f8f372e445fb6564cdd57aa3c3e', 1, NULL, 3, '2020-04-19 09:45:53', '2898.0');
INSERT INTO `userConsumptionRecords` VALUES (2487, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:26:11', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2488, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:26:12', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2489, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:26:12', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2490, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:26:12', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2491, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:26:12', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2492, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:26:12', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2493, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:26:13', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2494, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:26:13', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2495, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:26:13', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2496, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:26:13', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2497, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:26:14', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2498, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:26:14', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2499, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:26:14', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2500, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:26:14', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2501, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:26:14', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2502, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:26:15', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2503, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:26:15', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2504, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:26:15', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2505, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:26:15', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2506, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:26:15', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2507, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:26:16', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2508, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:26:16', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2509, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:26:16', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2510, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:26:16', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2511, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:26:16', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2512, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:26:17', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2513, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:26:17', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2514, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:26:17', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2515, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:26:17', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2516, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:26:18', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2517, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:26:18', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2518, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:26:18', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2519, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:26:18', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2520, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:26:18', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2521, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:26:19', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2522, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:26:19', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2523, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:26:19', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2524, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:26:19', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2525, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:26:19', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2526, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:26:20', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2527, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:26:20', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2528, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:26:20', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2529, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:26:20', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2530, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:26:21', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2531, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:26:21', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2532, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:26:21', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2533, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:26:21', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2534, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:26:21', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2535, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:26:22', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2536, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:26:22', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2537, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:26:22', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2538, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:26:22', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2539, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:26:22', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2540, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:26:23', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2541, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:26:23', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2542, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:26:23', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2543, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:26:23', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2544, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:26:23', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2545, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:26:24', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2546, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:26:24', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2547, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:26:24', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2548, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:26:24', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2549, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:26:25', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2550, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:26:25', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2551, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:26:25', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2552, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:26:25', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2553, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:26:25', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2554, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:26:26', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2555, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:26:26', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2556, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:26:26', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2557, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:26:26', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2558, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:26:26', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2559, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:26:27', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2560, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:26:27', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2561, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:26:27', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2562, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:26:27', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2563, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:26:27', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2564, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:26:28', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2565, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:26:28', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2566, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:26:28', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2567, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:26:28', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2568, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:26:28', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2569, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:26:29', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2570, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:26:29', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2571, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:26:29', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2572, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:26:29', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2573, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:26:30', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2574, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:26:30', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2575, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:26:30', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2576, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:26:30', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2577, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:26:30', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2578, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:26:31', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2579, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:26:31', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2580, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:26:31', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2581, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:26:31', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2582, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:26:31', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2583, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:26:32', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2584, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:26:32', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2585, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:26:32', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2586, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:26:32', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2587, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:26:33', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2588, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:26:33', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2589, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:26:33', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2590, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:26:33', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2591, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:26:34', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2592, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:26:34', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2593, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:26:34', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2594, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:26:34', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2595, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:26:34', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2596, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:26:35', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2597, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:26:35', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2598, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:26:35', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2599, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:26:35', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2600, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:26:36', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2601, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:26:36', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2602, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:26:36', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2603, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:26:36', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2604, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:26:36', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2605, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:26:37', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2606, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:26:37', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2607, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:26:37', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2608, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:26:37', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2609, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:26:37', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2610, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:26:38', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2611, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:26:38', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2612, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:26:38', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2613, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:26:38', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2614, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:26:38', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2615, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:26:39', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2616, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:26:39', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2617, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:26:39', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2618, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:26:39', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2619, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:26:40', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2620, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:26:40', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2621, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:26:40', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2622, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:26:40', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2623, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:26:40', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2624, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:26:41', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2625, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:26:41', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2626, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:26:41', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2627, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:26:41', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2628, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:26:41', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2629, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:26:42', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2630, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:26:42', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2631, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:26:42', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2632, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:26:42', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2633, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:26:42', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2634, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:26:43', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2635, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:26:43', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2636, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:26:43', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2637, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:26:43', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2638, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:26:44', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2639, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:26:44', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2640, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:26:44', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2641, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:26:44', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2642, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:26:44', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2643, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:26:45', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2644, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:26:45', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2645, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:26:45', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2646, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:26:45', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2647, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:26:46', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2648, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:26:46', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2649, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:26:46', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2650, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:26:47', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2651, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:26:47', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2652, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:26:47', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2653, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:26:47', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2654, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:26:48', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2655, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:26:48', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2656, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:26:48', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2657, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:26:48', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2658, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:26:49', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2659, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:26:49', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2660, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:26:49', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2661, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:26:50', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2662, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:26:50', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2663, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:26:50', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2664, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:26:50', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2665, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:26:51', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2666, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:26:51', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2667, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:26:51', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2668, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:26:51', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2669, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:26:52', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2670, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:26:52', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2671, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:26:52', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2672, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:26:53', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2673, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:26:53', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2674, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:26:53', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2675, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:26:53', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2676, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:26:54', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2677, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:26:54', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2678, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:26:55', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2679, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:26:55', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2680, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:26:55', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2681, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:26:55', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2682, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:26:56', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2683, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:26:56', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2684, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:26:56', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2685, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:26:57', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2686, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:26:57', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2687, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:26:57', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2688, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:26:57', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2689, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:26:58', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2690, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:26:58', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2691, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:26:59', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2692, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:26:59', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2693, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:26:59', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2694, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:26:59', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2695, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:27:00', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2696, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:27:00', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2697, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:27:01', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2698, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:27:01', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2699, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:27:01', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2700, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:27:01', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2701, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:27:02', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2702, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:27:02', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2703, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:27:02', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2704, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:27:03', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2705, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:27:03', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2706, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:27:03', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2707, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:27:04', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2708, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:27:04', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2709, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:27:04', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2710, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:27:05', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2711, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:27:05', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2712, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:27:06', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2713, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:27:06', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2714, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:27:06', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2715, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:27:06', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2716, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:27:07', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2717, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:27:07', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2718, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:27:08', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2719, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:27:08', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2720, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:27:08', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2721, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:27:09', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2722, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:27:09', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2723, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:27:09', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2724, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:27:10', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2725, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:27:10', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2726, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:27:11', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2727, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:27:11', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2728, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:27:11', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2729, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:27:12', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2730, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:27:12', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2731, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:27:13', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2732, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:27:13', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2733, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:27:13', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2734, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:27:13', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2735, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:27:14', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2736, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:27:14', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2737, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:27:15', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2738, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:27:15', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2739, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:27:16', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2740, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:27:16', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2741, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:27:16', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2742, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:27:17', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2743, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:27:17', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2744, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:27:17', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2745, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:27:18', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2746, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:27:18', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2747, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:27:19', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2748, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:27:19', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2749, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:27:19', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2750, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:27:20', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2751, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:27:20', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2752, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:27:20', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2753, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:27:21', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2754, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:27:21', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2755, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:27:22', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2756, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:27:22', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2757, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:27:23', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2758, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:27:23', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2759, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:27:23', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2760, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:27:24', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2761, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:27:24', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2762, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:27:25', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2763, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:27:25', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2764, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:27:25', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2765, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:27:26', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2766, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:27:26', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2767, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:27:27', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2768, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:27:27', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2769, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:27:28', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2770, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:27:28', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2771, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:27:29', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2772, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:27:29', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2773, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:27:29', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2774, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:27:30', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2775, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:27:30', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2776, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:27:31', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2777, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:29:19', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2778, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:29:20', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2779, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:29:20', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2780, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:29:21', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2781, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:29:21', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2782, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:29:21', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2783, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:29:22', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2784, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:29:22', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2785, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:29:23', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2786, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:29:23', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2787, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:29:23', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2788, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:29:24', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2789, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:29:24', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2790, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:29:25', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2791, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:29:25', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2792, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:29:25', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2793, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:29:26', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2794, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:29:26', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2795, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:29:27', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2796, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:29:27', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2797, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:29:28', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2798, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:29:28', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2799, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:29:29', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2800, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:29:29', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2801, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:29:29', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2802, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:29:30', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2803, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:29:31', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2804, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:29:31', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2805, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:29:32', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2806, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:29:32', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2807, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:29:32', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2808, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:29:33', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2809, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:29:33', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2810, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:29:34', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2811, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:29:34', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2812, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:29:35', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2813, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:29:35', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2814, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:29:36', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2815, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:29:36', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2816, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:29:37', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2817, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:29:37', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2818, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:29:38', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2819, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:29:38', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2820, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:29:39', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2821, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:29:39', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2822, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:29:40', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2823, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:29:40', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2824, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:29:41', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2825, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:29:41', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2826, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:29:42', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2827, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:29:42', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2828, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:29:43', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2829, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:29:43', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2830, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:29:44', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2831, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:29:45', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2832, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:29:45', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2833, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:29:46', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2834, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:29:46', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2835, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:29:47', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2836, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:29:47', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2837, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:29:48', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2838, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:29:48', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2839, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:29:49', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2840, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:29:49', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2841, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:29:50', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2842, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:29:50', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2843, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:29:51', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2844, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:29:51', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2845, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:29:51', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2846, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:29:52', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2847, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:29:53', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2848, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:29:53', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2849, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:29:54', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2850, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:29:54', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2851, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:29:55', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2852, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:29:55', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2853, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:29:56', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2854, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:29:56', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2855, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:29:57', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2856, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:29:57', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2857, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:29:58', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2858, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:29:58', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2859, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:29:59', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2860, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:30:00', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2861, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:30:00', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2862, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:30:01', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2863, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:30:01', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2864, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:30:02', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2865, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:30:02', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2866, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:30:03', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2867, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:30:04', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2868, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:30:04', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2869, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:30:05', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2870, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:30:05', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2871, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:30:06', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2872, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:30:07', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2873, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:30:07', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2874, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:30:08', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2875, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:30:08', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2876, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:30:09', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2877, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:30:09', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2878, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:30:10', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2879, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:30:10', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2880, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:30:11', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2881, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:30:12', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2882, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:30:12', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2883, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:30:13', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2884, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:30:13', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2885, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:30:14', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2886, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:30:15', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2887, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:30:15', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2888, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:30:15', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2889, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:30:16', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2890, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:30:17', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2891, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:30:17', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2892, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:30:18', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2893, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:30:18', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2894, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:30:19', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2895, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:30:20', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2896, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:30:20', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2897, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:30:21', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2898, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:30:22', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2899, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:30:22', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2900, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:30:23', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2901, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:30:23', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2902, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:30:24', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2903, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:30:24', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2904, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:30:25', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2905, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:30:26', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2906, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:30:26', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2907, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:30:27', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2908, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:30:27', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2909, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:30:28', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2910, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:30:29', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2911, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:30:29', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2912, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:30:30', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2913, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:30:31', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2914, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:30:31', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2915, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:30:32', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2916, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:30:32', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2917, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:30:33', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2918, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:30:34', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2919, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:30:35', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2920, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:30:35', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2921, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:30:36', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2922, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:30:36', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2923, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:30:37', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2924, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:30:38', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2925, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:30:38', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2926, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:30:39', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2927, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:30:39', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2928, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:30:40', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2929, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:30:41', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2930, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:30:42', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2931, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:30:42', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2932, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:30:43', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2933, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:30:43', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2934, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:30:44', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2935, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:30:45', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2936, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:30:45', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2937, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:30:46', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2938, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:30:47', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2939, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:30:47', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2940, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:30:48', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2941, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:30:49', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2942, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:30:49', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2943, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:30:50', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2944, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:31:20', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2945, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:31:20', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2946, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:31:21', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2947, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:31:21', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2948, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:31:22', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2949, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:31:22', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2950, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:31:23', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2951, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:31:24', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2952, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:31:25', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2953, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:31:25', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2954, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:31:26', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2955, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:31:26', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2956, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:31:27', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2957, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:31:28', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2958, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:31:29', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2959, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:31:29', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2960, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:31:30', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2961, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:31:31', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2962, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:31:31', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2963, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:31:32', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2964, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:31:33', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2965, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:31:33', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2966, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:31:34', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2967, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:31:35', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2968, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:31:35', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2969, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:31:36', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2970, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:31:37', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2971, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:31:38', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2972, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:31:38', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2973, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:31:39', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2974, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:31:40', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2975, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:31:41', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2976, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:31:41', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2977, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:31:42', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2978, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:31:42', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2979, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:31:43', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2980, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:31:44', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2981, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:31:45', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2982, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:31:45', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2983, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:31:46', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2984, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:31:47', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2985, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:31:48', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2986, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:31:48', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2987, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:31:49', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2988, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:31:50', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2989, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:31:50', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2990, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:31:51', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2991, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:31:52', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2992, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:31:53', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2993, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:31:53', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2994, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:31:54', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2995, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:31:55', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2996, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:31:56', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2997, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:31:56', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2998, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:31:57', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (2999, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:31:58', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (3000, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:31:58', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (3001, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:31:59', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (3002, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:32:00', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (3003, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:32:01', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (3004, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:32:02', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (3005, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:32:02', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (3006, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:32:03', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (3007, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:32:04', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (3008, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:32:05', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (3009, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:32:05', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (3010, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:32:06', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (3011, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:32:07', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (3012, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:32:08', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (3013, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:32:09', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (3014, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:32:09', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (3015, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:32:10', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (3016, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:32:11', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (3017, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:32:11', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (3018, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:32:12', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (3019, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:32:13', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (3020, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:32:14', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (3021, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:32:14', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (3022, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:32:15', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (3023, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:32:16', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (3024, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:32:17', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (3025, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:32:18', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (3026, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:32:18', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (3027, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:32:19', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (3028, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:32:20', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (3029, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:32:21', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (3030, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:32:22', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (3031, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:32:22', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (3032, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:32:23', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (3033, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:32:24', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (3034, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:32:25', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (3035, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:32:59', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (3036, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:32:59', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (3037, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:33:00', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (3038, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:33:01', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (3039, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:33:01', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (3040, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:33:02', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (3041, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:33:03', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (3042, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:33:04', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (3043, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:33:04', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (3044, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:33:05', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (3045, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:33:06', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (3046, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:33:07', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (3047, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:33:07', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (3048, '1587288329210100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-19 17:33:08', '18054.00');
INSERT INTO `userConsumptionRecords` VALUES (3049, '1587289427174100001', 'f92b9f8f372e445fb6564cdd57aa3c3e', 1, NULL, 3, '2020-04-19 17:43:54', '1499.0');
INSERT INTO `userConsumptionRecords` VALUES (3050, '1587289711210100002', 'f92b9f8f372e445fb6564cdd57aa3c3e', 1, NULL, 3, '2020-04-19 17:49:03', '758.0');
INSERT INTO `userConsumptionRecords` VALUES (3051, '1587289711210100002', 'f92b9f8f372e445fb6564cdd57aa3c3e', 1, NULL, 3, '2020-04-19 17:49:33', '758.0');
INSERT INTO `userConsumptionRecords` VALUES (3052, '1587289711210100002', 'f92b9f8f372e445fb6564cdd57aa3c3e', 1, NULL, 3, '2020-04-19 17:50:06', '758.0');
INSERT INTO `userConsumptionRecords` VALUES (3053, '1587289711210100002', 'f92b9f8f372e445fb6564cdd57aa3c3e', 1, NULL, 3, '2020-04-19 17:51:56', '758.0');
INSERT INTO `userConsumptionRecords` VALUES (3054, '1587289711210100002', 'f92b9f8f372e445fb6564cdd57aa3c3e', 1, NULL, 3, '2020-04-19 17:53:05', '758.0');
INSERT INTO `userConsumptionRecords` VALUES (3055, '1587289711210100002', 'f92b9f8f372e445fb6564cdd57aa3c3e', 1, NULL, 3, '2020-04-19 17:53:06', '758.0');
INSERT INTO `userConsumptionRecords` VALUES (3056, '1587289711210100002', 'f92b9f8f372e445fb6564cdd57aa3c3e', 1, NULL, 3, '2020-04-19 17:53:07', '758.0');
INSERT INTO `userConsumptionRecords` VALUES (3057, '1587289711210100002', 'f92b9f8f372e445fb6564cdd57aa3c3e', 1, NULL, 3, '2020-04-19 17:53:08', '758.0');
INSERT INTO `userConsumptionRecords` VALUES (3058, '1587289711210100002', 'f92b9f8f372e445fb6564cdd57aa3c3e', 1, NULL, 3, '2020-04-19 17:53:08', '758.0');
INSERT INTO `userConsumptionRecords` VALUES (3059, '1587289711210100002', 'f92b9f8f372e445fb6564cdd57aa3c3e', 1, NULL, 3, '2020-04-19 17:53:09', '758.0');
INSERT INTO `userConsumptionRecords` VALUES (3060, '1587289711210100002', 'f92b9f8f372e445fb6564cdd57aa3c3e', 1, NULL, 3, '2020-04-19 17:53:10', '758.0');
INSERT INTO `userConsumptionRecords` VALUES (3061, '1587289711210100002', 'f92b9f8f372e445fb6564cdd57aa3c3e', 1, NULL, 3, '2020-04-19 17:53:43', '758.0');
INSERT INTO `userConsumptionRecords` VALUES (3062, '1587290101768100003', 'f92b9f8f372e445fb6564cdd57aa3c3e', 1, NULL, 3, '2020-04-19 17:55:10', '2898.0');
INSERT INTO `userConsumptionRecords` VALUES (3063, '1587290131436100004', 'f92b9f8f372e445fb6564cdd57aa3c3e', 1, NULL, 3, '2020-04-19 17:55:45', '2898.0');
INSERT INTO `userConsumptionRecords` VALUES (3064, '1587290131436100004', 'f92b9f8f372e445fb6564cdd57aa3c3e', 1, NULL, 3, '2020-04-19 17:55:52', '2898.0');
INSERT INTO `userConsumptionRecords` VALUES (3065, '1587290131436100004', 'f92b9f8f372e445fb6564cdd57aa3c3e', 1, NULL, 3, '2020-04-19 17:57:05', '2898.0');
INSERT INTO `userConsumptionRecords` VALUES (3066, '1587290131436100004', 'f92b9f8f372e445fb6564cdd57aa3c3e', 1, NULL, 3, '2020-04-19 17:58:43', '2898.0');
INSERT INTO `userConsumptionRecords` VALUES (3067, '1587290131436100004', 'f92b9f8f372e445fb6564cdd57aa3c3e', 1, NULL, 3, '2020-04-19 17:58:43', '2898.0');
INSERT INTO `userConsumptionRecords` VALUES (3068, '1587290131436100004', 'f92b9f8f372e445fb6564cdd57aa3c3e', 1, NULL, 3, '2020-04-19 17:58:44', '2898.0');
INSERT INTO `userConsumptionRecords` VALUES (3069, '1587290131436100004', 'f92b9f8f372e445fb6564cdd57aa3c3e', 1, NULL, 3, '2020-04-19 17:58:45', '2898.0');
INSERT INTO `userConsumptionRecords` VALUES (3070, '1587290131436100004', 'f92b9f8f372e445fb6564cdd57aa3c3e', 1, NULL, 3, '2020-04-19 17:58:45', '2898.0');
INSERT INTO `userConsumptionRecords` VALUES (3071, '1587290131436100004', 'f92b9f8f372e445fb6564cdd57aa3c3e', 1, NULL, 3, '2020-04-19 17:58:46', '2898.0');
INSERT INTO `userConsumptionRecords` VALUES (3072, '1587290131436100004', 'f92b9f8f372e445fb6564cdd57aa3c3e', 1, NULL, 3, '2020-04-19 17:58:47', '2898.0');
INSERT INTO `userConsumptionRecords` VALUES (3073, '1587290131436100004', 'f92b9f8f372e445fb6564cdd57aa3c3e', 1, NULL, 3, '2020-04-19 17:59:15', '2898.0');
INSERT INTO `userConsumptionRecords` VALUES (3074, '1587290544954100001', 'f92b9f8f372e445fb6564cdd57aa3c3e', 1, NULL, 3, '2020-04-19 18:02:36', '1299.0');
INSERT INTO `userConsumptionRecords` VALUES (3075, '1587290588311100002', 'f92b9f8f372e445fb6564cdd57aa3c3e', 1, NULL, 3, '2020-04-19 18:03:24', '11999.0');
INSERT INTO `userConsumptionRecords` VALUES (3076, '1587290588311100002', 'f92b9f8f372e445fb6564cdd57aa3c3e', 1, NULL, 3, '2020-04-19 18:03:29', '11999.0');
INSERT INTO `userConsumptionRecords` VALUES (3077, '1587290588311100002', 'f92b9f8f372e445fb6564cdd57aa3c3e', 1, NULL, 3, '2020-04-19 18:03:36', '11999.0');
INSERT INTO `userConsumptionRecords` VALUES (3078, '1587290588311100002', 'f92b9f8f372e445fb6564cdd57aa3c3e', 1, NULL, 3, '2020-04-19 18:04:39', '11999.0');
INSERT INTO `userConsumptionRecords` VALUES (3079, '1587290588311100002', 'f92b9f8f372e445fb6564cdd57aa3c3e', 1, NULL, 3, '2020-04-19 18:05:30', '11999.0');
INSERT INTO `userConsumptionRecords` VALUES (3080, '1587290588311100002', 'f92b9f8f372e445fb6564cdd57aa3c3e', 1, NULL, 3, '2020-04-19 18:07:22', '11999.0');
INSERT INTO `userConsumptionRecords` VALUES (3081, '1587290588311100002', 'f92b9f8f372e445fb6564cdd57aa3c3e', 1, NULL, 3, '2020-04-19 18:07:23', '11999.0');
INSERT INTO `userConsumptionRecords` VALUES (3082, '1587290588311100002', 'f92b9f8f372e445fb6564cdd57aa3c3e', 1, NULL, 3, '2020-04-19 18:07:24', '11999.0');
INSERT INTO `userConsumptionRecords` VALUES (3083, '1587290588311100002', 'f92b9f8f372e445fb6564cdd57aa3c3e', 1, NULL, 3, '2020-04-19 18:07:24', '11999.0');
INSERT INTO `userConsumptionRecords` VALUES (3084, '1587290588311100002', 'f92b9f8f372e445fb6564cdd57aa3c3e', 1, NULL, 3, '2020-04-19 18:07:25', '11999.0');
INSERT INTO `userConsumptionRecords` VALUES (3085, '1587290588311100002', 'f92b9f8f372e445fb6564cdd57aa3c3e', 1, NULL, 3, '2020-04-19 18:07:26', '11999.0');
INSERT INTO `userConsumptionRecords` VALUES (3086, '1587290588311100002', 'f92b9f8f372e445fb6564cdd57aa3c3e', 1, NULL, 3, '2020-04-19 18:07:26', '11999.0');
INSERT INTO `userConsumptionRecords` VALUES (3087, '1587290588311100002', 'f92b9f8f372e445fb6564cdd57aa3c3e', 1, NULL, 3, '2020-04-19 18:07:27', '11999.0');
INSERT INTO `userConsumptionRecords` VALUES (3088, '1587290588311100002', 'f92b9f8f372e445fb6564cdd57aa3c3e', 1, NULL, 3, '2020-04-19 18:08:02', '11999.0');
INSERT INTO `userConsumptionRecords` VALUES (3089, '1587291382963100001', 'f92b9f8f372e445fb6564cdd57aa3c3e', 1, NULL, 3, '2020-04-19 18:16:30', '2898.0');
INSERT INTO `userConsumptionRecords` VALUES (3090, '1587291382963100001', 'f92b9f8f372e445fb6564cdd57aa3c3e', 1, NULL, 3, '2020-04-19 18:16:31', '2898.0');
INSERT INTO `userConsumptionRecords` VALUES (3091, '1587291382963100001', 'f92b9f8f372e445fb6564cdd57aa3c3e', 1, NULL, 3, '2020-04-19 18:16:32', '2898.0');
INSERT INTO `userConsumptionRecords` VALUES (3092, '1587291382963100001', 'f92b9f8f372e445fb6564cdd57aa3c3e', 1, NULL, 3, '2020-04-19 18:16:32', '2898.0');
INSERT INTO `userConsumptionRecords` VALUES (3093, '1587291382963100001', 'f92b9f8f372e445fb6564cdd57aa3c3e', 1, NULL, 3, '2020-04-19 18:16:33', '2898.0');
INSERT INTO `userConsumptionRecords` VALUES (3094, '1587291382963100001', 'f92b9f8f372e445fb6564cdd57aa3c3e', 1, NULL, 3, '2020-04-19 18:16:34', '2898.0');
INSERT INTO `userConsumptionRecords` VALUES (3095, '1587291382963100001', 'f92b9f8f372e445fb6564cdd57aa3c3e', 1, NULL, 3, '2020-04-19 18:16:34', '2898.0');
INSERT INTO `userConsumptionRecords` VALUES (3096, '1587291382963100001', 'f92b9f8f372e445fb6564cdd57aa3c3e', 1, NULL, 3, '2020-04-19 18:16:35', '2898.0');
INSERT INTO `userConsumptionRecords` VALUES (3097, '1587291382963100001', 'f92b9f8f372e445fb6564cdd57aa3c3e', 1, NULL, 3, '2020-04-19 18:16:36', '2898.0');
INSERT INTO `userConsumptionRecords` VALUES (3098, '1587291382963100001', 'f92b9f8f372e445fb6564cdd57aa3c3e', 1, NULL, 3, '2020-04-19 18:16:36', '2898.0');
INSERT INTO `userConsumptionRecords` VALUES (3099, '1587291382963100001', 'f92b9f8f372e445fb6564cdd57aa3c3e', 1, NULL, 3, '2020-04-19 18:16:37', '2898.0');
INSERT INTO `userConsumptionRecords` VALUES (3100, '1587291382963100001', 'f92b9f8f372e445fb6564cdd57aa3c3e', 1, NULL, 3, '2020-04-19 18:16:38', '2898.0');
INSERT INTO `userConsumptionRecords` VALUES (3101, '1587291382963100001', 'f92b9f8f372e445fb6564cdd57aa3c3e', 1, NULL, 3, '2020-04-19 18:16:38', '2898.0');
INSERT INTO `userConsumptionRecords` VALUES (3102, '1587291382963100001', 'f92b9f8f372e445fb6564cdd57aa3c3e', 1, NULL, 3, '2020-04-19 18:16:39', '2898.0');
INSERT INTO `userConsumptionRecords` VALUES (3103, '1587291382963100001', 'f92b9f8f372e445fb6564cdd57aa3c3e', 1, NULL, 3, '2020-04-19 18:16:40', '2898.0');
INSERT INTO `userConsumptionRecords` VALUES (3104, '1587291382963100001', 'f92b9f8f372e445fb6564cdd57aa3c3e', 1, NULL, 3, '2020-04-19 18:16:40', '2898.0');
INSERT INTO `userConsumptionRecords` VALUES (3105, '1587291382963100001', 'f92b9f8f372e445fb6564cdd57aa3c3e', 1, NULL, 3, '2020-04-19 18:16:41', '2898.0');
INSERT INTO `userConsumptionRecords` VALUES (3106, '1587291382963100001', 'f92b9f8f372e445fb6564cdd57aa3c3e', 1, NULL, 3, '2020-04-19 18:16:42', '2898.0');
INSERT INTO `userConsumptionRecords` VALUES (3107, '1587291382963100001', 'f92b9f8f372e445fb6564cdd57aa3c3e', 1, NULL, 3, '2020-04-19 18:16:42', '2898.0');
INSERT INTO `userConsumptionRecords` VALUES (3108, '1587291382963100001', 'f92b9f8f372e445fb6564cdd57aa3c3e', 1, NULL, 3, '2020-04-19 18:16:43', '2898.0');
INSERT INTO `userConsumptionRecords` VALUES (3109, '1587291382963100001', 'f92b9f8f372e445fb6564cdd57aa3c3e', 1, NULL, 3, '2020-04-19 18:16:44', '2898.0');
INSERT INTO `userConsumptionRecords` VALUES (3110, '1587291382963100001', 'f92b9f8f372e445fb6564cdd57aa3c3e', 1, NULL, 3, '2020-04-19 18:16:44', '2898.0');
INSERT INTO `userConsumptionRecords` VALUES (3111, '1587291382963100001', 'f92b9f8f372e445fb6564cdd57aa3c3e', 1, NULL, 3, '2020-04-19 18:16:45', '2898.0');
INSERT INTO `userConsumptionRecords` VALUES (3112, '1587291382963100001', 'f92b9f8f372e445fb6564cdd57aa3c3e', 1, NULL, 3, '2020-04-19 18:16:46', '2898.0');
INSERT INTO `userConsumptionRecords` VALUES (3113, '1587291382963100001', 'f92b9f8f372e445fb6564cdd57aa3c3e', 1, NULL, 3, '2020-04-19 18:16:46', '2898.0');
INSERT INTO `userConsumptionRecords` VALUES (3114, '1587291382963100001', 'f92b9f8f372e445fb6564cdd57aa3c3e', 1, NULL, 3, '2020-04-19 18:16:47', '2898.0');
INSERT INTO `userConsumptionRecords` VALUES (3115, '1587291382963100001', 'f92b9f8f372e445fb6564cdd57aa3c3e', 1, NULL, 3, '2020-04-19 18:25:02', '2898.0');
INSERT INTO `userConsumptionRecords` VALUES (3116, '1587291971075100001', 'f92b9f8f372e445fb6564cdd57aa3c3e', 1, NULL, 3, '2020-04-19 18:26:16', '11999.0');
INSERT INTO `userConsumptionRecords` VALUES (3142, '1587292127976100003', 'f92b9f8f372e445fb6564cdd57aa3c3e', 1, NULL, 3, '2020-04-19 18:31:11', '1499.0');
INSERT INTO `userConsumptionRecords` VALUES (3162, '1587292363848100004', 'f92b9f8f372e445fb6564cdd57aa3c3e', 1, NULL, 3, '2020-04-19 18:34:46', '2898.0');

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
) ENGINE = InnoDB AUTO_INCREMENT = 168 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of userEvaluation
-- ----------------------------
INSERT INTO `userEvaluation` VALUES (127, 'f92b9f8f372e445fb6564cdd57aa3c3e', 10026, 'true', '2020-04-19 16:27:11');

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
) ENGINE = InnoDB AUTO_INCREMENT = 127 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of userFootprint
-- ----------------------------
INSERT INTO `userFootprint` VALUES (22, 'abcd', 10005, '2020-04-19 16:50:47');
INSERT INTO `userFootprint` VALUES (23, 'asdasd', 0, '2020-03-27 09:52:30');
INSERT INTO `userFootprint` VALUES (29, 'f92b9f8f372e445fb6564cdd57aa3c3e', 10002, '2020-04-19 17:48:21');
INSERT INTO `userFootprint` VALUES (39, 'f92b9f8f372e445fb6564cdd57aa3c3e', 10022, '2020-04-19 16:33:27');
INSERT INTO `userFootprint` VALUES (40, 'f92b9f8f372e445fb6564cdd57aa3c3e', 10003, '2020-04-19 17:48:27');
INSERT INTO `userFootprint` VALUES (41, 'f92b9f8f372e445fb6564cdd57aa3c3e', 10007, '2020-04-19 16:49:25');
INSERT INTO `userFootprint` VALUES (54, 'f92b9f8f372e445fb6564cdd57aa3c3e', 10006, '2020-04-19 18:28:45');
INSERT INTO `userFootprint` VALUES (55, 'f92b9f8f372e445fb6564cdd57aa3c3e', 10012, '2020-04-19 16:51:21');
INSERT INTO `userFootprint` VALUES (124, 'f92b9f8f372e445fb6564cdd57aa3c3e', 10013, '2020-04-19 18:26:08');
INSERT INTO `userFootprint` VALUES (125, 'f92b9f8f372e445fb6564cdd57aa3c3e', 10014, '2020-04-19 18:32:40');
INSERT INTO `userFootprint` VALUES (126, 'f92b9f8f372e445fb6564cdd57aa3c3e', 10023, '2020-04-19 18:02:22');

-- ----------------------------
-- Table structure for userMembe
-- ----------------------------
DROP TABLE IF EXISTS `userMembe`;
CREATE TABLE `userMembe`  (
  `membeId` int(11) NOT NULL AUTO_INCREMENT,
  `userId` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `balance` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `integral` int(11) NULL DEFAULT 0,
  `coupon` int(11) NULL DEFAULT 0,
  `membershipCard` int(11) NULL DEFAULT 0,
  `growthValue` int(11) NULL DEFAULT 0,
  PRIMARY KEY (`membeId`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of userMembe
-- ----------------------------
INSERT INTO `userMembe` VALUES (1, '7c9fdfa3177042a08766aed29e7de6cd', 'lV4dSKdYwk8DdWhNxsiH0Q==', 98000, 5, 2, 1540);
INSERT INTO `userMembe` VALUES (2, '0497326c70a447ceb815aa23743daeab', NULL, 0, 0, 0, 0);
INSERT INTO `userMembe` VALUES (3, '9c1e482cfabf48f7ab64baee9bd778fd', NULL, 0, 0, 0, 0);
INSERT INTO `userMembe` VALUES (4, 'f92b9f8f372e445fb6564cdd57aa3c3e', 'Bdz6CbMq9viUyX1kDcXCPA==', 0, 0, 0, 0);
INSERT INTO `userMembe` VALUES (5, '836fa03c4977499a9361f986672dea7f', NULL, 0, 0, 0, 0);
INSERT INTO `userMembe` VALUES (6, '058656382d454f2cb40340934812d5c4', NULL, 0, 0, 0, 0);
INSERT INTO `userMembe` VALUES (7, 'fd113e77699c4d21ab50acaf88e7e141', NULL, 0, 0, 0, 0);
INSERT INTO `userMembe` VALUES (8, 'd52e8cc4c9a34b839c74a20d1685f04c', NULL, 0, 0, 0, 0);
INSERT INTO `userMembe` VALUES (9, '311e2fca19b944668631da49d5c1dbb2', NULL, 0, 0, 0, 0);
INSERT INTO `userMembe` VALUES (10, '451a7d05126a4e58a74846983282267d', NULL, 0, 0, 0, 0);

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
  `orderState` int(11) NULL DEFAULT 1,
  `changeQuantity` int(11) NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 617 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of userOrder
-- ----------------------------
INSERT INTO `userOrder` VALUES (613, 'f92b9f8f372e445fb6564cdd57aa3c3e', '1587291971075100001', 1, 1, '2020-04-19 18:26:11', '2020-04-22 18:26:11', NULL, NULL, '', '11999.0', NULL, 0);
INSERT INTO `userOrder` VALUES (614, 'f92b9f8f372e445fb6564cdd57aa3c3e', '1587291988367100002', 2, 1, '2020-04-19 18:26:28', '2020-04-22 18:26:28', NULL, NULL, '', '1499.0', NULL, 0);
INSERT INTO `userOrder` VALUES (615, 'f92b9f8f372e445fb6564cdd57aa3c3e', '1587292127976100003', 2, 1, '2020-04-19 18:28:48', '2020-04-22 18:28:48', NULL, NULL, '', '1499.0', NULL, 0);
INSERT INTO `userOrder` VALUES (616, 'f92b9f8f372e445fb6564cdd57aa3c3e', '1587292363848100004', 2, 1, '2020-04-19 18:32:44', '2020-04-22 18:32:44', NULL, NULL, '', '2898.0', NULL, 0);

-- ----------------------------
-- Table structure for userPassword
-- ----------------------------
DROP TABLE IF EXISTS `userPassword`;
CREATE TABLE `userPassword`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userId` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `paymentPassword` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `faceRecognition` int(11) NULL DEFAULT 0,
  `faceToken` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of userPassword
-- ----------------------------
INSERT INTO `userPassword` VALUES (1, '7c9fdfa3177042a08766aed29e7de6cd', '++OrO3KQIS+TzybCOsQhcw==', 0, NULL);
INSERT INTO `userPassword` VALUES (2, '9c1e482cfabf48f7ab64baee9bd778fd', NULL, 0, NULL);
INSERT INTO `userPassword` VALUES (3, 'f92b9f8f372e445fb6564cdd57aa3c3e', '/NSW7XPKATxkLBTZjWbLLA==', 0, NULL);
INSERT INTO `userPassword` VALUES (4, '836fa03c4977499a9361f986672dea7f', NULL, 0, NULL);
INSERT INTO `userPassword` VALUES (5, '058656382d454f2cb40340934812d5c4', NULL, 0, NULL);
INSERT INTO `userPassword` VALUES (6, 'fd113e77699c4d21ab50acaf88e7e141', NULL, 0, NULL);
INSERT INTO `userPassword` VALUES (7, 'd52e8cc4c9a34b839c74a20d1685f04c', NULL, 0, NULL);
INSERT INTO `userPassword` VALUES (8, '311e2fca19b944668631da49d5c1dbb2', NULL, 0, NULL);
INSERT INTO `userPassword` VALUES (9, '451a7d05126a4e58a74846983282267d', NULL, 0, NULL);

-- ----------------------------
-- Function structure for mycat_seq_currval
-- ----------------------------
DROP FUNCTION IF EXISTS `mycat_seq_currval`;
delimiter ;;
CREATE FUNCTION `mycat_seq_currval`(seq_name VARCHAR(50))
 RETURNS varchar(64) CHARSET utf8
  DETERMINISTIC
BEGIN DECLARE retval VARCHAR(64);
        SET retval="-999999999,null";  
        SELECT CONCAT(CAST(current_value AS CHAR),",",CAST(increment AS CHAR) ) INTO retval 
          FROM MYCAT_SEQUENCE WHERE NAME = seq_name;  
        RETURN retval ; 
END
;;
delimiter ;

-- ----------------------------
-- Function structure for mycat_seq_nextval
-- ----------------------------
DROP FUNCTION IF EXISTS `mycat_seq_nextval`;
delimiter ;;
CREATE FUNCTION `mycat_seq_nextval`(seq_name VARCHAR(50))
 RETURNS varchar(64) CHARSET utf8
  DETERMINISTIC
BEGIN UPDATE MYCAT_SEQUENCE  
                 SET current_value = current_value + increment 
                  WHERE NAME = seq_name;  
         RETURN mycat_seq_currval(seq_name);  
END
;;
delimiter ;

-- ----------------------------
-- Function structure for mycat_seq_setval
-- ----------------------------
DROP FUNCTION IF EXISTS `mycat_seq_setval`;
delimiter ;;
CREATE FUNCTION `mycat_seq_setval`(seq_name VARCHAR(50), VALUE INTEGER)
 RETURNS varchar(64) CHARSET utf8
  DETERMINISTIC
BEGIN UPDATE MYCAT_SEQUENCE  
                   SET current_value = VALUE  
                   WHERE NAME = seq_name;  
         RETURN mycat_seq_currval(seq_name);  
END
;;
delimiter ;

SET FOREIGN_KEY_CHECKS = 1;
