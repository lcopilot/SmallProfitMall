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

 Date: 08/04/2020 20:36:22
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
  `introduction` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`contentId`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 308 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of newsContent
-- ----------------------------
INSERT INTO `newsContent` VALUES (306, 4, '7c9fdfa3177042a08766aed29e7de6cd', '{\"address\":{\"addressId\":164,\"alias\":\"学校\",\"areaCode\":[\"14\",\"1402\",\"140214\",\"140214002\"],\"areaCodes\":\"14,1402,140214,140214002,\",\"areas\":\"山西省 大同市 云冈区 新平旺街道 \",\"defaults\":true,\"detailedAddress\":\"三大法师速度还是大\",\"email\":\"liuxianliangli@foxmail.com\",\"name\":\"速度还是大\",\"phone\":\"15367885410\",\"userId\":\"7c9fdfa3177042a08766aed29e7de6cd\"},\"deliveryTime\":1586606997439,\"deliveryWay\":1,\"id\":0,\"orderId\":\"1586347797232100103\",\"orderNote\":\"\",\"orderState\":2,\"paymentTime\":1586347813254,\"paymentWay\":1,\"productContents\":[{\"evaluate\":false,\"id\":1794,\"orderId\":\"1586347797232100103\",\"productConfiguration\":\"星河银 \",\"productImage\":\"\\r\\nhttp://productdata.fhxasdsada.xyz/971ec333c8ef1de2.jpg\",\"productName\":\"华为 HUAWEI Mate 30 Pro 麒麟990旗舰芯片OLED环幕屏双4000万徕卡电影四摄手机\",\"productPrice\":5399.0,\"productQuantity\":1,\"productWeight\":\"0.54kg\"}],\"userId\":\"7c9fdfa3177042a08766aed29e7de6cd\"}', 4, '0', '确认订单消息', '2020-04-08 20:10:13', 0, '消息简介');
INSERT INTO `newsContent` VALUES (307, 3, '7c9fdfa3177042a08766aed29e7de6cd', '{\"orderId\":\"1586347797232100103\",\"paymentAmount\":\"5399.0\",\"paymentStatus\":1,\"paymentTime\":1586347813000,\"senderId\":\"3\",\"senderName\":\"微利支付\",\"userId\":\"7c9fdfa3177042a08766aed29e7de6cd\"}', 3, '0', '支付通知', '2020-04-08 20:10:13', 0, '支付通知');

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
INSERT INTO `orderAddress` VALUES ('f92b9f8f372e445fb6564cdd57aa3c3e', '1586177750376100008', 'ff', '天津市 市辖区 和平区 劝业场街道 ', 'd156', '18598814121', '2252@qq.com', '12,1201,120101,120101001,', 'ad');
INSERT INTO `orderAddress` VALUES ('7c9fdfa3177042a08766aed29e7de6cd', '1586177784998100009', '递四方速递', '河北省 唐山市 古冶区 古冶街道 ', '速度还是大', '15367885410', 'liuxianliangli@foxmail.com', '13,1302,130204,130204003,', '公司');
INSERT INTO `orderAddress` VALUES ('f92b9f8f372e445fb6564cdd57aa3c3e', '1586227845282100001', 'ff', '天津市 市辖区 和平区 劝业场街道 ', 'd156', '18598814121', '2252@qq.com', '12,1201,120101,120101001,', 'ad');
INSERT INTO `orderAddress` VALUES ('f92b9f8f372e445fb6564cdd57aa3c3e', '1586227978121100002', 'ff', '天津市 市辖区 和平区 劝业场街道 ', 'd156', '18598814121', '2252@qq.com', '12,1201,120101,120101001,', 'ad');
INSERT INTO `orderAddress` VALUES ('f92b9f8f372e445fb6564cdd57aa3c3e', '1586228264452100003', 'ff', '天津市 市辖区 和平区 劝业场街道 ', 'd156', '18598814121', '2252@qq.com', '12,1201,120101,120101001,', 'ad');
INSERT INTO `orderAddress` VALUES ('f92b9f8f372e445fb6564cdd57aa3c3e', '1586229257791100004', 'ff', '天津市 市辖区 和平区 劝业场街道 ', 'd156', '18598814121', '2252@qq.com', '12,1201,120101,120101001,', 'ad');
INSERT INTO `orderAddress` VALUES ('f92b9f8f372e445fb6564cdd57aa3c3e', '1586229545997100005', 'ff', '天津市 市辖区 和平区 劝业场街道 ', 'd156', '18598814121', '2252@qq.com', '12,1201,120101,120101001,', 'ad');
INSERT INTO `orderAddress` VALUES ('f92b9f8f372e445fb6564cdd57aa3c3e', '1586234250274100006', 'faf', '山西省 大同市 平城区 南关街道 ', 'asdas', '18598855555', '2252@qq.com', '14,1402,140213,140213001,', 'dsa');
INSERT INTO `orderAddress` VALUES ('f92b9f8f372e445fb6564cdd57aa3c3e', '1586234688047100007', 'ff', '天津市 市辖区 和平区 劝业场街道 ', 'd156', '18598814121', '2252@qq.com', '12,1201,120101,120101001,', 'ad');
INSERT INTO `orderAddress` VALUES ('7c9fdfa3177042a08766aed29e7de6cd', '1586236398447100008', '递四方速递', '河北省 唐山市 古冶区 古冶街道 ', '速度还是大', '15367885410', 'liuxianliangli@foxmail.com', '13,1302,130204,130204003,', '公司');
INSERT INTO `orderAddress` VALUES ('7c9fdfa3177042a08766aed29e7de6cd', '1586239367643100009', '递四方速递', '河北省 唐山市 古冶区 古冶街道 ', '速度还是大', '15367885410', 'liuxianliangli@foxmail.com', '13,1302,130204,130204003,', '公司');
INSERT INTO `orderAddress` VALUES ('7c9fdfa3177042a08766aed29e7de6cd', '1586239408329100010', '递四方速递', '河北省 唐山市 古冶区 古冶街道 ', '速度还是大', '15367885410', 'liuxianliangli@foxmail.com', '13,1302,130204,130204003,', '公司');
INSERT INTO `orderAddress` VALUES ('7c9fdfa3177042a08766aed29e7de6cd', '1586241057285100011', '递四方速递', '河北省 唐山市 古冶区 古冶街道 ', '速度还是大', '15367885410', 'liuxianliangli@foxmail.com', '13,1302,130204,130204003,', '公司');
INSERT INTO `orderAddress` VALUES ('7c9fdfa3177042a08766aed29e7de6cd', '1586241316139100012', '是多喝点水', '内蒙古自治区 包头市 白云鄂博矿区 通阳道街道 ', '速度还是大', '15367885410', 'liuxianliangli@foxmail.com', '15,1502,150206,150206002,', '学校');
INSERT INTO `orderAddress` VALUES ('7c9fdfa3177042a08766aed29e7de6cd', '1586241445141100013', '是多喝点水', '内蒙古自治区 包头市 白云鄂博矿区 通阳道街道 ', '速度还是大', '15367885410', 'liuxianliangli@foxmail.com', '15,1502,150206,150206002,', '学校');
INSERT INTO `orderAddress` VALUES ('7c9fdfa3177042a08766aed29e7de6cd', '1586241576341100014', '是多喝点水', '内蒙古自治区 包头市 白云鄂博矿区 通阳道街道 ', '速度还是大', '15367885410', 'liuxianliangli@foxmail.com', '15,1502,150206,150206002,', '学校');
INSERT INTO `orderAddress` VALUES ('7c9fdfa3177042a08766aed29e7de6cd', '1586242155794100015', '速度还是大', '山西省 大同市 云冈区 新平旺街道 ', '三大法师速度还是大', '15367885410', 'liuxianliangli@foxmail.com', '14,1402,140214,140214002,', '学校');
INSERT INTO `orderAddress` VALUES ('7c9fdfa3177042a08766aed29e7de6cd', '1586242549535100016', '速度还是大', '山西省 大同市 云冈区 新平旺街道 ', '三大法师速度还是大', '15367885410', 'liuxianliangli@foxmail.com', '14,1402,140214,140214002,', '学校');
INSERT INTO `orderAddress` VALUES ('7c9fdfa3177042a08766aed29e7de6cd', '1586242588420100017', '速度还是大', '山西省 大同市 云冈区 新平旺街道 ', '三大法师速度还是大', '15367885410', 'liuxianliangli@foxmail.com', '14,1402,140214,140214002,', '学校');
INSERT INTO `orderAddress` VALUES ('7c9fdfa3177042a08766aed29e7de6cd', '1586242643719100018', '速度还是大', '山西省 大同市 云冈区 新平旺街道 ', '三大法师速度还是大', '15367885410', 'liuxianliangli@foxmail.com', '14,1402,140214,140214002,', '学校');
INSERT INTO `orderAddress` VALUES ('7c9fdfa3177042a08766aed29e7de6cd', '1586242673368100019', '速度还是大', '山西省 大同市 云冈区 新平旺街道 ', '三大法师速度还是大', '15367885410', 'liuxianliangli@foxmail.com', '14,1402,140214,140214002,', '学校');
INSERT INTO `orderAddress` VALUES ('7c9fdfa3177042a08766aed29e7de6cd', '1586242712385100020', '速度还是大', '山西省 大同市 云冈区 新平旺街道 ', '三大法师速度还是大', '15367885410', 'liuxianliangli@foxmail.com', '14,1402,140214,140214002,', '学校');
INSERT INTO `orderAddress` VALUES ('7c9fdfa3177042a08766aed29e7de6cd', '1586242785604100021', '速度还是大', '山西省 大同市 云冈区 新平旺街道 ', '三大法师速度还是大', '15367885410', 'liuxianliangli@foxmail.com', '14,1402,140214,140214002,', '学校');
INSERT INTO `orderAddress` VALUES ('7c9fdfa3177042a08766aed29e7de6cd', '1586242817938100022', '速度还是大', '山西省 大同市 云冈区 新平旺街道 ', '三大法师速度还是大', '15367885410', 'liuxianliangli@foxmail.com', '14,1402,140214,140214002,', '学校');
INSERT INTO `orderAddress` VALUES ('7c9fdfa3177042a08766aed29e7de6cd', '1586242833922100024', '速度还是大', '山西省 大同市 云冈区 新平旺街道 ', '三大法师速度还是大', '15367885410', 'liuxianliangli@foxmail.com', '14,1402,140214,140214002,', '学校');
INSERT INTO `orderAddress` VALUES ('7c9fdfa3177042a08766aed29e7de6cd', '1586242849011100025', '速度还是大', '山西省 大同市 云冈区 新平旺街道 ', '三大法师速度还是大', '15367885410', 'liuxianliangli@foxmail.com', '14,1402,140214,140214002,', '学校');
INSERT INTO `orderAddress` VALUES ('7c9fdfa3177042a08766aed29e7de6cd', '1586242862396100026', '速度还是大', '山西省 大同市 云冈区 新平旺街道 ', '三大法师速度还是大', '15367885410', 'liuxianliangli@foxmail.com', '14,1402,140214,140214002,', '学校');
INSERT INTO `orderAddress` VALUES ('7c9fdfa3177042a08766aed29e7de6cd', '1586242881229100027', '速度还是大', '山西省 大同市 云冈区 新平旺街道 ', '三大法师速度还是大', '15367885410', 'liuxianliangli@foxmail.com', '14,1402,140214,140214002,', '学校');
INSERT INTO `orderAddress` VALUES ('7c9fdfa3177042a08766aed29e7de6cd', '1586242911593100028', '速度还是大', '山西省 大同市 云冈区 新平旺街道 ', '三大法师速度还是大', '15367885410', 'liuxianliangli@foxmail.com', '14,1402,140214,140214002,', '学校');
INSERT INTO `orderAddress` VALUES ('7c9fdfa3177042a08766aed29e7de6cd', '1586242927495100029', '速度还是大', '山西省 大同市 云冈区 新平旺街道 ', '三大法师速度还是大', '15367885410', 'liuxianliangli@foxmail.com', '14,1402,140214,140214002,', '学校');
INSERT INTO `orderAddress` VALUES ('7c9fdfa3177042a08766aed29e7de6cd', '1586242942565100030', '速度还是大', '山西省 大同市 云冈区 新平旺街道 ', '三大法师速度还是大', '15367885410', 'liuxianliangli@foxmail.com', '14,1402,140214,140214002,', '学校');
INSERT INTO `orderAddress` VALUES ('7c9fdfa3177042a08766aed29e7de6cd', '1586242956836100031', '速度还是大', '山西省 大同市 云冈区 新平旺街道 ', '三大法师速度还是大', '15367885410', 'liuxianliangli@foxmail.com', '14,1402,140214,140214002,', '学校');
INSERT INTO `orderAddress` VALUES ('7c9fdfa3177042a08766aed29e7de6cd', '1586242990240100032', '速度还是大', '山西省 大同市 云冈区 新平旺街道 ', '三大法师速度还是大', '15367885410', 'liuxianliangli@foxmail.com', '14,1402,140214,140214002,', '学校');
INSERT INTO `orderAddress` VALUES ('7c9fdfa3177042a08766aed29e7de6cd', '1586243015914100033', '速度还是大', '山西省 大同市 云冈区 新平旺街道 ', '三大法师速度还是大', '15367885410', 'liuxianliangli@foxmail.com', '14,1402,140214,140214002,', '学校');
INSERT INTO `orderAddress` VALUES ('7c9fdfa3177042a08766aed29e7de6cd', '1586243033913100034', '速度还是大', '山西省 大同市 云冈区 新平旺街道 ', '三大法师速度还是大', '15367885410', 'liuxianliangli@foxmail.com', '14,1402,140214,140214002,', '学校');
INSERT INTO `orderAddress` VALUES ('7c9fdfa3177042a08766aed29e7de6cd', '1586247745389100035', '速度还是大', '山西省 大同市 云冈区 新平旺街道 ', '三大法师速度还是大', '15367885410', 'liuxianliangli@foxmail.com', '14,1402,140214,140214002,', '学校');
INSERT INTO `orderAddress` VALUES ('7c9fdfa3177042a08766aed29e7de6cd', '1586247786562100036', '速度还是大', '山西省 大同市 云冈区 新平旺街道 ', '三大法师速度还是大', '15367885410', 'liuxianliangli@foxmail.com', '14,1402,140214,140214002,', '学校');
INSERT INTO `orderAddress` VALUES ('7c9fdfa3177042a08766aed29e7de6cd', '1586247835094100037', '速度还是大', '山西省 大同市 云冈区 新平旺街道 ', '三大法师速度还是大', '15367885410', 'liuxianliangli@foxmail.com', '14,1402,140214,140214002,', '学校');
INSERT INTO `orderAddress` VALUES ('7c9fdfa3177042a08766aed29e7de6cd', '1586247859779100038', '速度还是大', '山西省 大同市 云冈区 新平旺街道 ', '三大法师速度还是大', '15367885410', 'liuxianliangli@foxmail.com', '14,1402,140214,140214002,', '学校');
INSERT INTO `orderAddress` VALUES ('7c9fdfa3177042a08766aed29e7de6cd', '1586247919566100039', '速度还是大', '山西省 大同市 云冈区 新平旺街道 ', '三大法师速度还是大', '15367885410', 'liuxianliangli@foxmail.com', '14,1402,140214,140214002,', '学校');
INSERT INTO `orderAddress` VALUES ('7c9fdfa3177042a08766aed29e7de6cd', '1586248026249100040', '速度还是大', '山西省 大同市 云冈区 新平旺街道 ', '三大法师速度还是大', '15367885410', 'liuxianliangli@foxmail.com', '14,1402,140214,140214002,', '学校');
INSERT INTO `orderAddress` VALUES ('7c9fdfa3177042a08766aed29e7de6cd', '1586248059120100041', '速度还是大', '山西省 大同市 云冈区 新平旺街道 ', '三大法师速度还是大', '15367885410', 'liuxianliangli@foxmail.com', '14,1402,140214,140214002,', '学校');
INSERT INTO `orderAddress` VALUES ('7c9fdfa3177042a08766aed29e7de6cd', '1586248122702100042', '速度还是大', '山西省 大同市 云冈区 新平旺街道 ', '三大法师速度还是大', '15367885410', 'liuxianliangli@foxmail.com', '14,1402,140214,140214002,', '学校');
INSERT INTO `orderAddress` VALUES ('7c9fdfa3177042a08766aed29e7de6cd', '1586248190988100043', '速度还是大', '山西省 大同市 云冈区 新平旺街道 ', '三大法师速度还是大', '15367885410', 'liuxianliangli@foxmail.com', '14,1402,140214,140214002,', '学校');
INSERT INTO `orderAddress` VALUES ('f92b9f8f372e445fb6564cdd57aa3c3e', '1586252630919100050', '方鸢', '河北省 唐山市 路南区 学院南路街道 ', 'dasdas', '18598814121', '2252821162@qq.com', '13,1302,130202,130202001,', '闺蜜家');
INSERT INTO `orderAddress` VALUES ('f92b9f8f372e445fb6564cdd57aa3c3e', '1586252980197100051', '方鸢', '河北省 唐山市 路南区 学院南路街道 ', 'dasdas', '18598814121', '2252821162@qq.com', '13,1302,130202,130202001,', '闺蜜家');
INSERT INTO `orderAddress` VALUES ('7c9fdfa3177042a08766aed29e7de6cd', '1586254017053100052', '的发送发送的', '山西省 太原市 杏花岭区 巨轮街道 ', '水电费水电费', '15367885410', 'liuxianliangli@foxmail.com', '14,1401,140107,140107001,', '公司');
INSERT INTO `orderAddress` VALUES ('7c9fdfa3177042a08766aed29e7de6cd', '1586254132885100053', '的发送发送的', '山西省 太原市 杏花岭区 巨轮街道 ', '水电费水电费', '15367885410', 'liuxianliangli@foxmail.com', '14,1401,140107,140107001,', '公司');
INSERT INTO `orderAddress` VALUES ('f92b9f8f372e445fb6564cdd57aa3c3e', '1586255036074100054', '方鸢', '河北省 唐山市 路南区 学院南路街道 ', 'dasdas', '18598814121', '2252821162@qq.com', '13,1302,130202,130202001,', '闺蜜家');
INSERT INTO `orderAddress` VALUES ('f92b9f8f372e445fb6564cdd57aa3c3e', '1586255412437100055', '方鸢', '河北省 唐山市 路南区 学院南路街道 ', 'dasdas', '18598814121', '2252821162@qq.com', '13,1302,130202,130202001,', '闺蜜家');
INSERT INTO `orderAddress` VALUES ('f92b9f8f372e445fb6564cdd57aa3c3e', '1586255796478100056', '方鸢', '河北省 唐山市 路南区 学院南路街道 ', 'dasdas', '18598814121', '2252821162@qq.com', '13,1302,130202,130202001,', '闺蜜家');
INSERT INTO `orderAddress` VALUES ('f92b9f8f372e445fb6564cdd57aa3c3e', '1586255939932100057', '方鸢', '河北省 唐山市 路南区 学院南路街道 ', 'dasdas', '18598814121', '2252821162@qq.com', '13,1302,130202,130202001,', '闺蜜家');
INSERT INTO `orderAddress` VALUES ('f92b9f8f372e445fb6564cdd57aa3c3e', '1586256018429100058', '方鸢', '河北省 唐山市 路南区 学院南路街道 ', 'dasdas', '18598814121', '2252821162@qq.com', '13,1302,130202,130202001,', '闺蜜家');
INSERT INTO `orderAddress` VALUES ('f92b9f8f372e445fb6564cdd57aa3c3e', '1586256369960100060', '方鸢', '河北省 唐山市 路南区 学院南路街道 ', 'dasdas', '18598814121', '2252821162@qq.com', '13,1302,130202,130202001,', '闺蜜家');
INSERT INTO `orderAddress` VALUES ('f92b9f8f372e445fb6564cdd57aa3c3e', '1586256939671100061', '方鸢', '河北省 唐山市 路南区 学院南路街道 ', 'dasdas', '18598814121', '2252821162@qq.com', '13,1302,130202,130202001,', '闺蜜家');
INSERT INTO `orderAddress` VALUES ('f92b9f8f372e445fb6564cdd57aa3c3e', '1586259365788100063', '方鸢', '河北省 唐山市 路南区 学院南路街道 ', 'dasdas', '18598814121', '2252821162@qq.com', '13,1302,130202,130202001,', '闺蜜家');
INSERT INTO `orderAddress` VALUES ('f92b9f8f372e445fb6564cdd57aa3c3e', '1586259481625100064', '方鸢', '河北省 唐山市 路南区 学院南路街道 ', 'dasdas', '18598814121', '2252821162@qq.com', '13,1302,130202,130202001,', '闺蜜家');
INSERT INTO `orderAddress` VALUES ('f92b9f8f372e445fb6564cdd57aa3c3e', '1586259951154100065', '方鸢', '河北省 唐山市 路南区 学院南路街道 ', 'dasdas', '18598814121', '2252821162@qq.com', '13,1302,130202,130202001,', '闺蜜家');
INSERT INTO `orderAddress` VALUES ('7c9fdfa3177042a08766aed29e7de6cd', '1586260769216100067', '速度还是大', '山西省 大同市 云冈区 新平旺街道 ', '三大法师速度还是大', '15367885410', 'liuxianliangli@foxmail.com', '14,1402,140214,140214002,', '学校');
INSERT INTO `orderAddress` VALUES ('f92b9f8f372e445fb6564cdd57aa3c3e', '1586261244406100068', '方鸢', '河北省 唐山市 路南区 学院南路街道 ', 'dasdas', '18598814121', '2252821162@qq.com', '13,1302,130202,130202001,', '闺蜜家');
INSERT INTO `orderAddress` VALUES ('f92b9f8f372e445fb6564cdd57aa3c3e', '1586261391127100069', '方鸢', '河北省 唐山市 路南区 学院南路街道 ', 'dasdas', '18598814121', '2252821162@qq.com', '13,1302,130202,130202001,', '闺蜜家');
INSERT INTO `orderAddress` VALUES ('f92b9f8f372e445fb6564cdd57aa3c3e', '1586261446251100070', '方鸢', '河北省 唐山市 路南区 学院南路街道 ', 'dasdas', '18598814121', '2252821162@qq.com', '13,1302,130202,130202001,', '闺蜜家');
INSERT INTO `orderAddress` VALUES ('f92b9f8f372e445fb6564cdd57aa3c3e', '1586261497633100071', '方鸢', '河北省 唐山市 路南区 学院南路街道 ', 'dasdas', '18598814121', '2252821162@qq.com', '13,1302,130202,130202001,', '闺蜜家');
INSERT INTO `orderAddress` VALUES ('f92b9f8f372e445fb6564cdd57aa3c3e', '1586262716564100072', '方鸢', '河北省 唐山市 路南区 学院南路街道 ', 'dasdas', '18598814121', '2252821162@qq.com', '13,1302,130202,130202001,', '闺蜜家');
INSERT INTO `orderAddress` VALUES ('f92b9f8f372e445fb6564cdd57aa3c3e', '1586262874435100073', '方鸢', '河北省 唐山市 路南区 学院南路街道 ', 'dasdas', '18598814121', '2252821162@qq.com', '13,1302,130202,130202001,', '闺蜜家');
INSERT INTO `orderAddress` VALUES ('f92b9f8f372e445fb6564cdd57aa3c3e', '1586263923536100075', '方鸢', '河北省 唐山市 路南区 学院南路街道 ', 'dasdas', '18598814121', '2252821162@qq.com', '13,1302,130202,130202001,', '闺蜜家');
INSERT INTO `orderAddress` VALUES ('f92b9f8f372e445fb6564cdd57aa3c3e', '1586309784640100001', '方鸢', '河北省 唐山市 路南区 学院南路街道 ', 'dasdas', '18598814121', '2252821162@qq.com', '13,1302,130202,130202001,', '闺蜜家');
INSERT INTO `orderAddress` VALUES ('f92b9f8f372e445fb6564cdd57aa3c3e', '1586310643530100003', '方鸢', '河北省 唐山市 路南区 学院南路街道 ', 'dasdas', '18598814121', '2252821162@qq.com', '13,1302,130202,130202001,', '闺蜜家');
INSERT INTO `orderAddress` VALUES ('7c9fdfa3177042a08766aed29e7de6cd', '1586310968950100004', '速度还是大', '山西省 大同市 云冈区 新平旺街道 ', '三大法师速度还是大', '15367885410', 'liuxianliangli@foxmail.com', '14,1402,140214,140214002,', '学校');
INSERT INTO `orderAddress` VALUES ('f92b9f8f372e445fb6564cdd57aa3c3e', '1586311132950100005', '方鸢', '河北省 唐山市 路南区 学院南路街道 ', 'dasdas', '18598814121', '2252821162@qq.com', '13,1302,130202,130202001,', '闺蜜家');
INSERT INTO `orderAddress` VALUES ('f92b9f8f372e445fb6564cdd57aa3c3e', '1586311181878100006', '方鸢', '河北省 唐山市 路南区 学院南路街道 ', 'dasdas', '18598814121', '2252821162@qq.com', '13,1302,130202,130202001,', '闺蜜家');
INSERT INTO `orderAddress` VALUES ('f92b9f8f372e445fb6564cdd57aa3c3e', '1586311337409100007', '方鸢', '河北省 唐山市 路南区 学院南路街道 ', 'dasdas', '18598814121', '2252821162@qq.com', '13,1302,130202,130202001,', '闺蜜家');
INSERT INTO `orderAddress` VALUES ('f92b9f8f372e445fb6564cdd57aa3c3e', '1586311853807100008', '方鸢', '河北省 唐山市 路南区 学院南路街道 ', 'dasdas', '18598814121', '2252821162@qq.com', '13,1302,130202,130202001,', '闺蜜家');
INSERT INTO `orderAddress` VALUES ('f92b9f8f372e445fb6564cdd57aa3c3e', '1586312338768100009', '方鸢', '河北省 唐山市 路南区 学院南路街道 ', 'dasdas', '18598814121', '2252821162@qq.com', '13,1302,130202,130202001,', '闺蜜家');
INSERT INTO `orderAddress` VALUES ('f92b9f8f372e445fb6564cdd57aa3c3e', '1586312622584100010', '方鸢', '河北省 唐山市 路南区 学院南路街道 ', 'dasdas', '18598814121', '2252821162@qq.com', '13,1302,130202,130202001,', '闺蜜家');
INSERT INTO `orderAddress` VALUES ('f92b9f8f372e445fb6564cdd57aa3c3e', '1586312817978100011', '方鸢', '河北省 唐山市 路南区 学院南路街道 ', 'dasdas', '18598814121', '2252821162@qq.com', '13,1302,130202,130202001,', '闺蜜家');
INSERT INTO `orderAddress` VALUES ('f92b9f8f372e445fb6564cdd57aa3c3e', '1586314253265100012', '方鸢', '河北省 唐山市 路南区 学院南路街道 ', 'dasdas', '18598814121', '2252821162@qq.com', '13,1302,130202,130202001,', '闺蜜家');
INSERT INTO `orderAddress` VALUES ('f92b9f8f372e445fb6564cdd57aa3c3e', '1586314313589100013', '方鸢', '河北省 唐山市 路南区 学院南路街道 ', 'dasdas', '18598814121', '2252821162@qq.com', '13,1302,130202,130202001,', '闺蜜家');
INSERT INTO `orderAddress` VALUES ('f92b9f8f372e445fb6564cdd57aa3c3e', '1586314367766100015', '方鸢', '河北省 唐山市 路南区 学院南路街道 ', 'dasdas', '18598814121', '2252821162@qq.com', '13,1302,130202,130202001,', '闺蜜家');
INSERT INTO `orderAddress` VALUES ('7c9fdfa3177042a08766aed29e7de6cd', '1586315362708100016', '速度还是大', '山西省 大同市 云冈区 新平旺街道 ', '三大法师速度还是大', '15367885410', 'liuxianliangli@foxmail.com', '14,1402,140214,140214002,', '学校');
INSERT INTO `orderAddress` VALUES ('f92b9f8f372e445fb6564cdd57aa3c3e', '1586325905224100017', '方鸢', '河北省 唐山市 路南区 学院南路街道 ', 'dasdas', '18598814121', '2252821162@qq.com', '13,1302,130202,130202001,', '闺蜜家');
INSERT INTO `orderAddress` VALUES ('f92b9f8f372e445fb6564cdd57aa3c3e', '1586326092047100018', '方鸢', '河北省 唐山市 路南区 学院南路街道 ', 'dasdas', '18598814121', '2252821162@qq.com', '13,1302,130202,130202001,', '闺蜜家');
INSERT INTO `orderAddress` VALUES ('f92b9f8f372e445fb6564cdd57aa3c3e', '1586326190022100019', '方鸢', '河北省 唐山市 路南区 学院南路街道 ', 'dasdas', '18598814121', '2252821162@qq.com', '13,1302,130202,130202001,', '闺蜜家');
INSERT INTO `orderAddress` VALUES ('f92b9f8f372e445fb6564cdd57aa3c3e', '1586326397173100020', '方鸢', '河北省 唐山市 路南区 学院南路街道 ', 'dasdas', '18598814121', '2252821162@qq.com', '13,1302,130202,130202001,', '闺蜜家');
INSERT INTO `orderAddress` VALUES ('f92b9f8f372e445fb6564cdd57aa3c3e', '1586326717239100021', '方鸢', '河北省 唐山市 路南区 学院南路街道 ', 'dasdas', '18598814121', '2252821162@qq.com', '13,1302,130202,130202001,', '闺蜜家');
INSERT INTO `orderAddress` VALUES ('f92b9f8f372e445fb6564cdd57aa3c3e', '1586326717239100021', '方鸢', '河北省 唐山市 路南区 学院南路街道 ', 'dasdas', '18598814121', '2252821162@qq.com', '13,1302,130202,130202001,', '闺蜜家');
INSERT INTO `orderAddress` VALUES ('f92b9f8f372e445fb6564cdd57aa3c3e', '1586327109695100022', '方鸢', '河北省 唐山市 路南区 学院南路街道 ', 'dasdas', '18598814121', '2252821162@qq.com', '13,1302,130202,130202001,', '闺蜜家');
INSERT INTO `orderAddress` VALUES ('f92b9f8f372e445fb6564cdd57aa3c3e', '1586327483882100023', '方鸢', '河北省 唐山市 路南区 学院南路街道 ', 'dasdas', '18598814121', '2252821162@qq.com', '13,1302,130202,130202001,', '闺蜜家');
INSERT INTO `orderAddress` VALUES ('f92b9f8f372e445fb6564cdd57aa3c3e', '1586328116902100024', '方鸢', '河北省 唐山市 路南区 学院南路街道 ', 'dasdas', '18598814121', '2252821162@qq.com', '13,1302,130202,130202001,', '闺蜜家');
INSERT INTO `orderAddress` VALUES ('f92b9f8f372e445fb6564cdd57aa3c3e', '1586328249149100025', '方鸢', '河北省 唐山市 路南区 学院南路街道 ', 'dasdas', '18598814121', '2252821162@qq.com', '13,1302,130202,130202001,', '闺蜜家');
INSERT INTO `orderAddress` VALUES ('f92b9f8f372e445fb6564cdd57aa3c3e', '1586328739243100026', '方鸢', '河北省 唐山市 路南区 学院南路街道 ', 'dasdas', '18598814121', '2252821162@qq.com', '13,1302,130202,130202001,', '闺蜜家');
INSERT INTO `orderAddress` VALUES ('f92b9f8f372e445fb6564cdd57aa3c3e', '1586328858883100027', '方鸢', '河北省 唐山市 路南区 学院南路街道 ', 'dasdas', '18598814121', '2252821162@qq.com', '13,1302,130202,130202001,', '闺蜜家');
INSERT INTO `orderAddress` VALUES ('f92b9f8f372e445fb6564cdd57aa3c3e', '1586329006944100028', '方鸢', '河北省 唐山市 路南区 学院南路街道 ', 'dasdas', '18598814121', '2252821162@qq.com', '13,1302,130202,130202001,', '闺蜜家');
INSERT INTO `orderAddress` VALUES ('f92b9f8f372e445fb6564cdd57aa3c3e', '1586329384401100029', '方鸢', '河北省 唐山市 路南区 学院南路街道 ', 'dasdas', '18598814121', '2252821162@qq.com', '13,1302,130202,130202001,', '闺蜜家');
INSERT INTO `orderAddress` VALUES ('f92b9f8f372e445fb6564cdd57aa3c3e', '1586329935910100030', '方鸢', '河北省 唐山市 路南区 学院南路街道 ', 'dasdas', '18598814121', '2252821162@qq.com', '13,1302,130202,130202001,', '闺蜜家');
INSERT INTO `orderAddress` VALUES ('f92b9f8f372e445fb6564cdd57aa3c3e', '1586330046300100031', '方鸢', '河北省 唐山市 路南区 学院南路街道 ', 'dasdas', '18598814121', '2252821162@qq.com', '13,1302,130202,130202001,', '闺蜜家');
INSERT INTO `orderAddress` VALUES ('f92b9f8f372e445fb6564cdd57aa3c3e', '1586330187986100032', '方鸢', '河北省 唐山市 路南区 学院南路街道 ', 'dasdas', '18598814121', '2252821162@qq.com', '13,1302,130202,130202001,', '闺蜜家');
INSERT INTO `orderAddress` VALUES ('f92b9f8f372e445fb6564cdd57aa3c3e', '1586330322781100033', '方鸢', '河北省 唐山市 路南区 学院南路街道 ', 'dasdas', '18598814121', '2252821162@qq.com', '13,1302,130202,130202001,', '闺蜜家');
INSERT INTO `orderAddress` VALUES ('f92b9f8f372e445fb6564cdd57aa3c3e', '1586330418325100034', '方鸢', '河北省 唐山市 路南区 学院南路街道 ', 'dasdas', '18598814121', '2252821162@qq.com', '13,1302,130202,130202001,', '闺蜜家');
INSERT INTO `orderAddress` VALUES ('f92b9f8f372e445fb6564cdd57aa3c3e', '1586330485339100035', '方鸢', '河北省 唐山市 路南区 学院南路街道 ', 'dasdas', '18598814121', '2252821162@qq.com', '13,1302,130202,130202001,', '闺蜜家');
INSERT INTO `orderAddress` VALUES ('f92b9f8f372e445fb6564cdd57aa3c3e', '1586330774697100036', '方鸢', '河北省 唐山市 路南区 学院南路街道 ', 'dasdas', '18598814121', '2252821162@qq.com', '13,1302,130202,130202001,', '闺蜜家');
INSERT INTO `orderAddress` VALUES ('f92b9f8f372e445fb6564cdd57aa3c3e', '1586330857867100037', '方鸢', '河北省 唐山市 路南区 学院南路街道 ', 'dasdas', '18598814121', '2252821162@qq.com', '13,1302,130202,130202001,', '闺蜜家');
INSERT INTO `orderAddress` VALUES ('f92b9f8f372e445fb6564cdd57aa3c3e', '1586331023560100039', '方鸢', '河北省 唐山市 路南区 学院南路街道 ', 'dasdas', '18598814121', '2252821162@qq.com', '13,1302,130202,130202001,', '闺蜜家');
INSERT INTO `orderAddress` VALUES ('7c9fdfa3177042a08766aed29e7de6cd', '1586331051802100040', '速度还是大', '山西省 大同市 云冈区 新平旺街道 ', '三大法师速度还是大', '15367885410', 'liuxianliangli@foxmail.com', '14,1402,140214,140214002,', '学校');
INSERT INTO `orderAddress` VALUES ('f92b9f8f372e445fb6564cdd57aa3c3e', '1586331235483100041', '方鸢', '河北省 唐山市 路南区 学院南路街道 ', 'dasdas', '18598814121', '2252821162@qq.com', '13,1302,130202,130202001,', '闺蜜家');
INSERT INTO `orderAddress` VALUES ('f92b9f8f372e445fb6564cdd57aa3c3e', '1586331315312100042', '方鸢', '河北省 唐山市 路南区 学院南路街道 ', 'dasdas', '18598814121', '2252821162@qq.com', '13,1302,130202,130202001,', '闺蜜家');
INSERT INTO `orderAddress` VALUES ('f92b9f8f372e445fb6564cdd57aa3c3e', '1586331346315100043', '方鸢', '河北省 唐山市 路南区 学院南路街道 ', 'dasdas', '18598814121', '2252821162@qq.com', '13,1302,130202,130202001,', '闺蜜家');
INSERT INTO `orderAddress` VALUES ('f92b9f8f372e445fb6564cdd57aa3c3e', '1586331446671100044', '方鸢', '河北省 唐山市 路南区 学院南路街道 ', 'dasdas', '18598814121', '2252821162@qq.com', '13,1302,130202,130202001,', '闺蜜家');
INSERT INTO `orderAddress` VALUES ('f92b9f8f372e445fb6564cdd57aa3c3e', '1586331525220100045', '方鸢', '河北省 唐山市 路南区 学院南路街道 ', 'dasdas', '18598814121', '2252821162@qq.com', '13,1302,130202,130202001,', '闺蜜家');
INSERT INTO `orderAddress` VALUES ('f92b9f8f372e445fb6564cdd57aa3c3e', '1586331602215100046', '方鸢', '河北省 唐山市 路南区 学院南路街道 ', 'dasdas', '18598814121', '2252821162@qq.com', '13,1302,130202,130202001,', '闺蜜家');
INSERT INTO `orderAddress` VALUES ('f92b9f8f372e445fb6564cdd57aa3c3e', '1586331768296100047', '方鸢', '河北省 唐山市 路南区 学院南路街道 ', 'dasdas', '18598814121', '2252821162@qq.com', '13,1302,130202,130202001,', '闺蜜家');
INSERT INTO `orderAddress` VALUES ('f92b9f8f372e445fb6564cdd57aa3c3e', '1586331986991100048', '方鸢', '河北省 唐山市 路南区 学院南路街道 ', 'dasdas', '18598814121', '2252821162@qq.com', '13,1302,130202,130202001,', '闺蜜家');
INSERT INTO `orderAddress` VALUES ('f92b9f8f372e445fb6564cdd57aa3c3e', '1586332437571100049', '方鸢', '河北省 唐山市 路南区 学院南路街道 ', 'dasdas', '18598814121', '2252821162@qq.com', '13,1302,130202,130202001,', '闺蜜家');
INSERT INTO `orderAddress` VALUES ('f92b9f8f372e445fb6564cdd57aa3c3e', '1586332626695100050', '方鸢', '河北省 唐山市 路南区 学院南路街道 ', 'dasdas', '18598814121', '2252821162@qq.com', '13,1302,130202,130202001,', '闺蜜家');
INSERT INTO `orderAddress` VALUES ('7c9fdfa3177042a08766aed29e7de6cd', '1586332960262100051', '速度还是大', '山西省 大同市 云冈区 新平旺街道 ', '三大法师速度还是大', '15367885410', 'liuxianliangli@foxmail.com', '14,1402,140214,140214002,', '学校');
INSERT INTO `orderAddress` VALUES ('7c9fdfa3177042a08766aed29e7de6cd', '1586333067632100052', '速度还是大', '山西省 大同市 云冈区 新平旺街道 ', '三大法师速度还是大', '15367885410', 'liuxianliangli@foxmail.com', '14,1402,140214,140214002,', '学校');
INSERT INTO `orderAddress` VALUES ('7c9fdfa3177042a08766aed29e7de6cd', '1586333160811100053', '速度还是大', '山西省 大同市 云冈区 新平旺街道 ', '三大法师速度还是大', '15367885410', 'liuxianliangli@foxmail.com', '14,1402,140214,140214002,', '学校');
INSERT INTO `orderAddress` VALUES ('7c9fdfa3177042a08766aed29e7de6cd', '1586333201012100054', '速度还是大', '山西省 大同市 云冈区 新平旺街道 ', '三大法师速度还是大', '15367885410', 'liuxianliangli@foxmail.com', '14,1402,140214,140214002,', '学校');
INSERT INTO `orderAddress` VALUES ('f92b9f8f372e445fb6564cdd57aa3c3e', '1586333275753100055', '方鸢', '河北省 唐山市 路南区 学院南路街道 ', 'dasdas', '18598814121', '2252821162@qq.com', '13,1302,130202,130202001,', '闺蜜家');
INSERT INTO `orderAddress` VALUES ('7c9fdfa3177042a08766aed29e7de6cd', '1586333333650100056', '速度还是大', '山西省 大同市 云冈区 新平旺街道 ', '三大法师速度还是大', '15367885410', 'liuxianliangli@foxmail.com', '14,1402,140214,140214002,', '学校');
INSERT INTO `orderAddress` VALUES ('f92b9f8f372e445fb6564cdd57aa3c3e', '1586333608038100057', '方鸢', '河北省 唐山市 路南区 学院南路街道 ', 'dasdas', '18598814121', '2252821162@qq.com', '13,1302,130202,130202001,', '闺蜜家');
INSERT INTO `orderAddress` VALUES ('f92b9f8f372e445fb6564cdd57aa3c3e', '1586333708733100058', '方鸢', '河北省 唐山市 路南区 学院南路街道 ', 'dasdas', '18598814121', '2252821162@qq.com', '13,1302,130202,130202001,', '闺蜜家');
INSERT INTO `orderAddress` VALUES ('f92b9f8f372e445fb6564cdd57aa3c3e', '1586333814265100059', '方鸢', '河北省 唐山市 路南区 学院南路街道 ', 'dasdas', '18598814121', '2252821162@qq.com', '13,1302,130202,130202001,', '闺蜜家');
INSERT INTO `orderAddress` VALUES ('f92b9f8f372e445fb6564cdd57aa3c3e', '1586333846163100060', '方鸢', '河北省 唐山市 路南区 学院南路街道 ', 'dasdas', '18598814121', '2252821162@qq.com', '13,1302,130202,130202001,', '闺蜜家');
INSERT INTO `orderAddress` VALUES ('f92b9f8f372e445fb6564cdd57aa3c3e', '1586333882661100061', '方鸢', '河北省 唐山市 路南区 学院南路街道 ', 'dasdas', '18598814121', '2252821162@qq.com', '13,1302,130202,130202001,', '闺蜜家');
INSERT INTO `orderAddress` VALUES ('f92b9f8f372e445fb6564cdd57aa3c3e', '1586333947479100062', '方鸢', '河北省 唐山市 路南区 学院南路街道 ', 'dasdas', '18598814121', '2252821162@qq.com', '13,1302,130202,130202001,', '闺蜜家');
INSERT INTO `orderAddress` VALUES ('f92b9f8f372e445fb6564cdd57aa3c3e', '1586333977321100063', '方鸢', '河北省 唐山市 路南区 学院南路街道 ', 'dasdas', '18598814121', '2252821162@qq.com', '13,1302,130202,130202001,', '闺蜜家');
INSERT INTO `orderAddress` VALUES ('f92b9f8f372e445fb6564cdd57aa3c3e', '1586334265439100065', '方鸢', '河北省 唐山市 路南区 学院南路街道 ', 'dasdas', '18598814121', '2252821162@qq.com', '13,1302,130202,130202001,', '闺蜜家');
INSERT INTO `orderAddress` VALUES ('f92b9f8f372e445fb6564cdd57aa3c3e', '1586334391883100066', '方鸢', '河北省 唐山市 路南区 学院南路街道 ', 'dasdas', '18598814121', '2252821162@qq.com', '13,1302,130202,130202001,', '闺蜜家');
INSERT INTO `orderAddress` VALUES ('f92b9f8f372e445fb6564cdd57aa3c3e', '1586334419560100067', '方鸢', '河北省 唐山市 路南区 学院南路街道 ', 'dasdas', '18598814121', '2252821162@qq.com', '13,1302,130202,130202001,', '闺蜜家');
INSERT INTO `orderAddress` VALUES ('f92b9f8f372e445fb6564cdd57aa3c3e', '1586334619735100068', '方鸢', '河北省 唐山市 路南区 学院南路街道 ', 'dasdas', '18598814121', '2252821162@qq.com', '13,1302,130202,130202001,', '闺蜜家');
INSERT INTO `orderAddress` VALUES ('f92b9f8f372e445fb6564cdd57aa3c3e', '1586334735964100069', '方鸢', '河北省 唐山市 路南区 学院南路街道 ', 'dasdas', '18598814121', '2252821162@qq.com', '13,1302,130202,130202001,', '闺蜜家');
INSERT INTO `orderAddress` VALUES ('f92b9f8f372e445fb6564cdd57aa3c3e', '1586335617675100074', '方鸢', '河北省 唐山市 路南区 学院南路街道 ', 'dasdas', '18598814121', '2252821162@qq.com', '13,1302,130202,130202001,', '闺蜜家');
INSERT INTO `orderAddress` VALUES ('f92b9f8f372e445fb6564cdd57aa3c3e', '1586335781667100075', '方鸢', '河北省 唐山市 路南区 学院南路街道 ', 'dasdas', '18598814121', '2252821162@qq.com', '13,1302,130202,130202001,', '闺蜜家');
INSERT INTO `orderAddress` VALUES ('f92b9f8f372e445fb6564cdd57aa3c3e', '1586335946450100076', '方鸢', '河北省 唐山市 路南区 学院南路街道 ', 'dasdas', '18598814121', '2252821162@qq.com', '13,1302,130202,130202001,', '闺蜜家');
INSERT INTO `orderAddress` VALUES ('f92b9f8f372e445fb6564cdd57aa3c3e', '1586336175680100077', '方鸢', '河北省 唐山市 路南区 学院南路街道 ', 'dasdas', '18598814121', '2252821162@qq.com', '13,1302,130202,130202001,', '闺蜜家');
INSERT INTO `orderAddress` VALUES ('f92b9f8f372e445fb6564cdd57aa3c3e', '1586336297988100078', '方鸢', '河北省 唐山市 路南区 学院南路街道 ', 'dasdas', '18598814121', '2252821162@qq.com', '13,1302,130202,130202001,', '闺蜜家');
INSERT INTO `orderAddress` VALUES ('f92b9f8f372e445fb6564cdd57aa3c3e', '1586336332833100079', '方鸢', '河北省 唐山市 路南区 学院南路街道 ', 'dasdas', '18598814121', '2252821162@qq.com', '13,1302,130202,130202001,', '闺蜜家');
INSERT INTO `orderAddress` VALUES ('f92b9f8f372e445fb6564cdd57aa3c3e', '1586336354634100080', '方鸢', '河北省 唐山市 路南区 学院南路街道 ', 'dasdas', '18598814121', '2252821162@qq.com', '13,1302,130202,130202001,', '闺蜜家');
INSERT INTO `orderAddress` VALUES ('f92b9f8f372e445fb6564cdd57aa3c3e', '1586336416827100081', '方鸢', '河北省 唐山市 路南区 学院南路街道 ', 'dasdas', '18598814121', '2252821162@qq.com', '13,1302,130202,130202001,', '闺蜜家');
INSERT INTO `orderAddress` VALUES ('f92b9f8f372e445fb6564cdd57aa3c3e', '1586336592904100082', '方鸢', '河北省 唐山市 路南区 学院南路街道 ', 'dasdas', '18598814121', '2252821162@qq.com', '13,1302,130202,130202001,', '闺蜜家');
INSERT INTO `orderAddress` VALUES ('f92b9f8f372e445fb6564cdd57aa3c3e', '1586336592904100082', '方鸢', '河北省 唐山市 路南区 学院南路街道 ', 'dasdas', '18598814121', '2252821162@qq.com', '13,1302,130202,130202001,', '闺蜜家');
INSERT INTO `orderAddress` VALUES ('f92b9f8f372e445fb6564cdd57aa3c3e', '1586336592904100082', '方鸢', '河北省 唐山市 路南区 学院南路街道 ', 'dasdas', '18598814121', '2252821162@qq.com', '13,1302,130202,130202001,', '闺蜜家');
INSERT INTO `orderAddress` VALUES ('f92b9f8f372e445fb6564cdd57aa3c3e', '1586336975758100083', '方鸢', '河北省 唐山市 路南区 学院南路街道 ', 'dasdas', '18598814121', '2252821162@qq.com', '13,1302,130202,130202001,', '闺蜜家');
INSERT INTO `orderAddress` VALUES ('f92b9f8f372e445fb6564cdd57aa3c3e', '1586337129312100084', '方鸢', '河北省 唐山市 路南区 学院南路街道 ', 'dasdas', '18598814121', '2252821162@qq.com', '13,1302,130202,130202001,', '闺蜜家');
INSERT INTO `orderAddress` VALUES ('f92b9f8f372e445fb6564cdd57aa3c3e', '1586337215075100085', '方鸢', '河北省 唐山市 路南区 学院南路街道 ', 'dasdas', '18598814121', '2252821162@qq.com', '13,1302,130202,130202001,', '闺蜜家');
INSERT INTO `orderAddress` VALUES ('7c9fdfa3177042a08766aed29e7de6cd', '1586337264238100086', '速度还是大', '山西省 大同市 云冈区 新平旺街道 ', '三大法师速度还是大', '15367885410', 'liuxianliangli@foxmail.com', '14,1402,140214,140214002,', '学校');
INSERT INTO `orderAddress` VALUES ('f92b9f8f372e445fb6564cdd57aa3c3e', '1586337299858100087', '方鸢', '河北省 唐山市 路南区 学院南路街道 ', 'dasdas', '18598814121', '2252821162@qq.com', '13,1302,130202,130202001,', '闺蜜家');
INSERT INTO `orderAddress` VALUES ('f92b9f8f372e445fb6564cdd57aa3c3e', '1586337755264100088', '方鸢', '河北省 唐山市 路南区 学院南路街道 ', 'dasdas', '18598814121', '2252821162@qq.com', '13,1302,130202,130202001,', '闺蜜家');
INSERT INTO `orderAddress` VALUES ('f92b9f8f372e445fb6564cdd57aa3c3e', '1586337845372100089', '方鸢', '河北省 唐山市 路南区 学院南路街道 ', 'dasdas', '18598814121', '2252821162@qq.com', '13,1302,130202,130202001,', '闺蜜家');
INSERT INTO `orderAddress` VALUES ('f92b9f8f372e445fb6564cdd57aa3c3e', '1586337984118100090', '方鸢', '河北省 唐山市 路南区 学院南路街道 ', 'dasdas', '18598814121', '2252821162@qq.com', '13,1302,130202,130202001,', '闺蜜家');
INSERT INTO `orderAddress` VALUES ('7c9fdfa3177042a08766aed29e7de6cd', '1586338418729100091', '速度还是大', '山西省 大同市 云冈区 新平旺街道 ', '三大法师速度还是大', '15367885410', 'liuxianliangli@foxmail.com', '14,1402,140214,140214002,', '学校');
INSERT INTO `orderAddress` VALUES ('7c9fdfa3177042a08766aed29e7de6cd', '1586338663596100092', '速度还是大', '山西省 大同市 云冈区 新平旺街道 ', '三大法师速度还是大', '15367885410', 'liuxianliangli@foxmail.com', '14,1402,140214,140214002,', '学校');
INSERT INTO `orderAddress` VALUES ('f92b9f8f372e445fb6564cdd57aa3c3e', '1586340012414100093', '方鸢', '河北省 唐山市 路南区 学院南路街道 ', 'dasdas', '18598814121', '2252821162@qq.com', '13,1302,130202,130202001,', '闺蜜家');
INSERT INTO `orderAddress` VALUES ('f92b9f8f372e445fb6564cdd57aa3c3e', '1586340129197100095', '方鸢', '河北省 唐山市 路南区 学院南路街道 ', 'dasdas', '18598814121', '2252821162@qq.com', '13,1302,130202,130202001,', '闺蜜家');
INSERT INTO `orderAddress` VALUES ('f92b9f8f372e445fb6564cdd57aa3c3e', '1586340324722100097', '方鸢', '河北省 唐山市 路南区 学院南路街道 ', 'dasdas', '18598814121', '2252821162@qq.com', '13,1302,130202,130202001,', '闺蜜家');
INSERT INTO `orderAddress` VALUES ('f92b9f8f372e445fb6564cdd57aa3c3e', '1586340450254100098', '方鸢', '河北省 唐山市 路南区 学院南路街道 ', 'dasdas', '18598814121', '2252821162@qq.com', '13,1302,130202,130202001,', '闺蜜家');
INSERT INTO `orderAddress` VALUES ('f92b9f8f372e445fb6564cdd57aa3c3e', '1586340577693100099', '方鸢', '河北省 唐山市 路南区 学院南路街道 ', 'dasdas', '18598814121', '2252821162@qq.com', '13,1302,130202,130202001,', '闺蜜家');
INSERT INTO `orderAddress` VALUES ('f92b9f8f372e445fb6564cdd57aa3c3e', '1586342414649100100', '方鸢', '河北省 唐山市 路南区 学院南路街道 ', 'dasdas', '18598814121', '2252821162@qq.com', '13,1302,130202,130202001,', '闺蜜家');
INSERT INTO `orderAddress` VALUES ('f92b9f8f372e445fb6564cdd57aa3c3e', '1586346035358100101', '方鸢', '河北省 唐山市 路南区 学院南路街道 ', 'dasdas', '18598814121', '2252821162@qq.com', '13,1302,130202,130202001,', '闺蜜家');
INSERT INTO `orderAddress` VALUES ('7c9fdfa3177042a08766aed29e7de6cd', '1586346607917100102', '速度还是大', '山西省 大同市 云冈区 新平旺街道 ', '三大法师速度还是大', '15367885410', 'liuxianliangli@foxmail.com', '14,1402,140214,140214002,', '学校');
INSERT INTO `orderAddress` VALUES ('7c9fdfa3177042a08766aed29e7de6cd', '1586347797232100103', '速度还是大', '山西省 大同市 云冈区 新平旺街道 ', '三大法师速度还是大', '15367885410', 'liuxianliangli@foxmail.com', '14,1402,140214,140214002,', '学校');

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
) ENGINE = InnoDB AUTO_INCREMENT = 1795 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

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
INSERT INTO `orders` VALUES (1389, '1586177578542100007', '【二手95新】劳力士 系列:迪通拿系列 型号:116505 材质:18k玫瑰金 镜面:蓝宝石玻璃 未使用', '\r\nhttp://productdata.fhxasdsada.xyz/2-SXJILMjHoQXj66aurkzg.jpg', '玫瑰金 ', '99', 260000, '220克', 0);
INSERT INTO `orders` VALUES (1390, '1586177578542100007', '【二手95新】劳力士 系列:迪通拿系列 型号:116505 材质:18k玫瑰金 镜面:蓝宝石玻璃 未使用', '\r\nhttp://productdata.fhxasdsada.xyz/2-SXJILMjHoQXj66aurkzg.jpg', '玫瑰金 ', '99', 260000, '220克', 0);
INSERT INTO `orders` VALUES (1391, '1586177578542100007', '【二手95新】劳力士 系列:迪通拿系列 型号:116505 材质:18k玫瑰金 镜面:蓝宝石玻璃 未使用', '\r\nhttp://productdata.fhxasdsada.xyz/2-SXJILMjHoQXj66aurkzg.jpg', '玫瑰金 ', '99', 260000, '220克', 0);
INSERT INTO `orders` VALUES (1392, '1586177578542100007', '【二手95新】劳力士 系列:迪通拿系列 型号:116505 材质:18k玫瑰金 镜面:蓝宝石玻璃 未使用', '\r\nhttp://productdata.fhxasdsada.xyz/2-SXJILMjHoQXj66aurkzg.jpg', '玫瑰金 ', '99', 260000, '220克', 0);
INSERT INTO `orders` VALUES (1393, '1586177578542100007', '【二手95新】劳力士 系列:迪通拿系列 型号:116505 材质:18k玫瑰金 镜面:蓝宝石玻璃 未使用', '\r\nhttp://productdata.fhxasdsada.xyz/2-SXJILMjHoQXj66aurkzg.jpg', '玫瑰金 ', '99', 260000, '220克', 0);
INSERT INTO `orders` VALUES (1394, '1586177578542100007', '【二手95新】劳力士 系列:迪通拿系列 型号:116505 材质:18k玫瑰金 镜面:蓝宝石玻璃 未使用', '\r\nhttp://productdata.fhxasdsada.xyz/2-SXJILMjHoQXj66aurkzg.jpg', '玫瑰金 ', '99', 260000, '220克', 0);
INSERT INTO `orders` VALUES (1395, '1586177578542100007', '【二手95新】劳力士 系列:迪通拿系列 型号:116505 材质:18k玫瑰金 镜面:蓝宝石玻璃 未使用', '\r\nhttp://productdata.fhxasdsada.xyz/2-SXJILMjHoQXj66aurkzg.jpg', '玫瑰金 ', '99', 260000, '220克', 0);
INSERT INTO `orders` VALUES (1396, '1586177578542100007', '【二手95新】劳力士 系列:迪通拿系列 型号:116505 材质:18k玫瑰金 镜面:蓝宝石玻璃 未使用', '\r\nhttp://productdata.fhxasdsada.xyz/2-SXJILMjHoQXj66aurkzg.jpg', '玫瑰金 ', '99', 260000, '220克', 0);
INSERT INTO `orders` VALUES (1397, '1586177578542100007', '【二手95新】劳力士 系列:迪通拿系列 型号:116505 材质:18k玫瑰金 镜面:蓝宝石玻璃 未使用', '\r\nhttp://productdata.fhxasdsada.xyz/2-SXJILMjHoQXj66aurkzg.jpg', '玫瑰金 ', '99', 260000, '220克', 0);
INSERT INTO `orders` VALUES (1398, '1586177578542100007', '【二手95新】劳力士 系列:迪通拿系列 型号:116505 材质:18k玫瑰金 镜面:蓝宝石玻璃 未使用', '\r\nhttp://productdata.fhxasdsada.xyz/2-SXJILMjHoQXj66aurkzg.jpg', '玫瑰金 ', '99', 260000, '220克', 0);
INSERT INTO `orders` VALUES (1399, '1586177578542100007', '【二手95新】劳力士 系列:迪通拿系列 型号:116505 材质:18k玫瑰金 镜面:蓝宝石玻璃 未使用', '\r\nhttp://productdata.fhxasdsada.xyz/2-SXJILMjHoQXj66aurkzg.jpg', '玫瑰金 ', '99', 260000, '220克', 0);
INSERT INTO `orders` VALUES (1400, '1586177578542100007', '【二手95新】劳力士 系列:迪通拿系列 型号:116505 材质:18k玫瑰金 镜面:蓝宝石玻璃 未使用', '\r\nhttp://productdata.fhxasdsada.xyz/2-SXJILMjHoQXj66aurkzg.jpg', '玫瑰金 ', '99', 260000, '220克', 0);
INSERT INTO `orders` VALUES (1401, '1586177578542100007', '【二手95新】劳力士 系列:迪通拿系列 型号:116505 材质:18k玫瑰金 镜面:蓝宝石玻璃 未使用', '\r\nhttp://productdata.fhxasdsada.xyz/2-SXJILMjHoQXj66aurkzg.jpg', '玫瑰金 ', '99', 260000, '220克', 0);
INSERT INTO `orders` VALUES (1402, '1586177578542100007', '【二手95新】劳力士 系列:迪通拿系列 型号:116505 材质:18k玫瑰金 镜面:蓝宝石玻璃 未使用', '\r\nhttp://productdata.fhxasdsada.xyz/2-SXJILMjHoQXj66aurkzg.jpg', '玫瑰金 ', '99', 260000, '220克', 0);
INSERT INTO `orders` VALUES (1403, '1586177578542100007', '【二手95新】劳力士 系列:迪通拿系列 型号:116505 材质:18k玫瑰金 镜面:蓝宝石玻璃 未使用', '\r\nhttp://productdata.fhxasdsada.xyz/2-SXJILMjHoQXj66aurkzg.jpg', '玫瑰金 ', '99', 260000, '220克', 0);
INSERT INTO `orders` VALUES (1404, '1586177578542100007', '【二手95新】劳力士 系列:迪通拿系列 型号:116505 材质:18k玫瑰金 镜面:蓝宝石玻璃 未使用', '\r\nhttp://productdata.fhxasdsada.xyz/2-SXJILMjHoQXj66aurkzg.jpg', '玫瑰金 ', '99', 260000, '220克', 0);
INSERT INTO `orders` VALUES (1405, '1586177578542100007', '【二手95新】劳力士 系列:迪通拿系列 型号:116505 材质:18k玫瑰金 镜面:蓝宝石玻璃 未使用', '\r\nhttp://productdata.fhxasdsada.xyz/2-SXJILMjHoQXj66aurkzg.jpg', '玫瑰金 ', '99', 260000, '220克', 0);
INSERT INTO `orders` VALUES (1406, '1586177578542100007', '【二手95新】劳力士 系列:迪通拿系列 型号:116505 材质:18k玫瑰金 镜面:蓝宝石玻璃 未使用', '\r\nhttp://productdata.fhxasdsada.xyz/2-SXJILMjHoQXj66aurkzg.jpg', '玫瑰金 ', '99', 260000, '220克', 0);
INSERT INTO `orders` VALUES (1407, '1586177578542100007', '【二手95新】劳力士 系列:迪通拿系列 型号:116505 材质:18k玫瑰金 镜面:蓝宝石玻璃 未使用', '\r\nhttp://productdata.fhxasdsada.xyz/2-SXJILMjHoQXj66aurkzg.jpg', '玫瑰金 ', '99', 260000, '220克', 0);
INSERT INTO `orders` VALUES (1408, '1586177578542100007', '【二手95新】劳力士 系列:迪通拿系列 型号:116505 材质:18k玫瑰金 镜面:蓝宝石玻璃 未使用', '\r\nhttp://productdata.fhxasdsada.xyz/2-SXJILMjHoQXj66aurkzg.jpg', '玫瑰金 ', '99', 260000, '220克', 0);
INSERT INTO `orders` VALUES (1409, '1586177578542100007', '【二手95新】劳力士 系列:迪通拿系列 型号:116505 材质:18k玫瑰金 镜面:蓝宝石玻璃 未使用', '\r\nhttp://productdata.fhxasdsada.xyz/2-SXJILMjHoQXj66aurkzg.jpg', '玫瑰金 ', '99', 260000, '220克', 0);
INSERT INTO `orders` VALUES (1410, '1586177578542100007', '【二手95新】劳力士 系列:迪通拿系列 型号:116505 材质:18k玫瑰金 镜面:蓝宝石玻璃 未使用', '\r\nhttp://productdata.fhxasdsada.xyz/2-SXJILMjHoQXj66aurkzg.jpg', '玫瑰金 ', '99', 260000, '220克', 0);
INSERT INTO `orders` VALUES (1411, '1586177578542100007', '【二手95新】劳力士 系列:迪通拿系列 型号:116505 材质:18k玫瑰金 镜面:蓝宝石玻璃 未使用', '\r\nhttp://productdata.fhxasdsada.xyz/2-SXJILMjHoQXj66aurkzg.jpg', '玫瑰金 ', '99', 260000, '220克', 0);
INSERT INTO `orders` VALUES (1412, '1586177578542100007', '【二手95新】劳力士 系列:迪通拿系列 型号:116505 材质:18k玫瑰金 镜面:蓝宝石玻璃 未使用', '\r\nhttp://productdata.fhxasdsada.xyz/2-SXJILMjHoQXj66aurkzg.jpg', '玫瑰金 ', '99', 260000, '220克', 0);
INSERT INTO `orders` VALUES (1413, '1586177578542100007', '【二手95新】劳力士 系列:迪通拿系列 型号:116505 材质:18k玫瑰金 镜面:蓝宝石玻璃 未使用', '\r\nhttp://productdata.fhxasdsada.xyz/2-SXJILMjHoQXj66aurkzg.jpg', '玫瑰金 ', '99', 260000, '220克', 0);
INSERT INTO `orders` VALUES (1414, '1586177578542100007', '【二手95新】劳力士 系列:迪通拿系列 型号:116505 材质:18k玫瑰金 镜面:蓝宝石玻璃 未使用', '\r\nhttp://productdata.fhxasdsada.xyz/2-SXJILMjHoQXj66aurkzg.jpg', '玫瑰金 ', '99', 260000, '220克', 0);
INSERT INTO `orders` VALUES (1415, '1586177578542100007', '【二手95新】劳力士 系列:迪通拿系列 型号:116505 材质:18k玫瑰金 镜面:蓝宝石玻璃 未使用', '\r\nhttp://productdata.fhxasdsada.xyz/2-SXJILMjHoQXj66aurkzg.jpg', '玫瑰金 ', '99', 260000, '220克', 0);
INSERT INTO `orders` VALUES (1416, '1586177578542100007', '【二手95新】劳力士 系列:迪通拿系列 型号:116505 材质:18k玫瑰金 镜面:蓝宝石玻璃 未使用', '\r\nhttp://productdata.fhxasdsada.xyz/2-SXJILMjHoQXj66aurkzg.jpg', '玫瑰金 ', '99', 260000, '220克', 0);
INSERT INTO `orders` VALUES (1417, '1586177578542100007', '【二手95新】劳力士 系列:迪通拿系列 型号:116505 材质:18k玫瑰金 镜面:蓝宝石玻璃 未使用', '\r\nhttp://productdata.fhxasdsada.xyz/2-SXJILMjHoQXj66aurkzg.jpg', '玫瑰金 ', '99', 260000, '220克', 0);
INSERT INTO `orders` VALUES (1418, '1586177578542100007', '【二手95新】劳力士 系列:迪通拿系列 型号:116505 材质:18k玫瑰金 镜面:蓝宝石玻璃 未使用', '\r\nhttp://productdata.fhxasdsada.xyz/2-SXJILMjHoQXj66aurkzg.jpg', '玫瑰金 ', '99', 260000, '220克', 0);
INSERT INTO `orders` VALUES (1419, '1586177578542100007', '【二手95新】劳力士 系列:迪通拿系列 型号:116505 材质:18k玫瑰金 镜面:蓝宝石玻璃 未使用', '\r\nhttp://productdata.fhxasdsada.xyz/2-SXJILMjHoQXj66aurkzg.jpg', '玫瑰金 ', '99', 260000, '220克', 0);
INSERT INTO `orders` VALUES (1420, '1586177578542100007', '【二手95新】劳力士 系列:迪通拿系列 型号:116505 材质:18k玫瑰金 镜面:蓝宝石玻璃 未使用', '\r\nhttp://productdata.fhxasdsada.xyz/2-SXJILMjHoQXj66aurkzg.jpg', '玫瑰金 ', '99', 260000, '220克', 0);
INSERT INTO `orders` VALUES (1421, '1586177578542100007', '【二手95新】劳力士 系列:迪通拿系列 型号:116505 材质:18k玫瑰金 镜面:蓝宝石玻璃 未使用', '\r\nhttp://productdata.fhxasdsada.xyz/2-SXJILMjHoQXj66aurkzg.jpg', '玫瑰金 ', '99', 260000, '220克', 0);
INSERT INTO `orders` VALUES (1422, '1586177578542100007', '【二手95新】劳力士 系列:迪通拿系列 型号:116505 材质:18k玫瑰金 镜面:蓝宝石玻璃 未使用', '\r\nhttp://productdata.fhxasdsada.xyz/2-SXJILMjHoQXj66aurkzg.jpg', '玫瑰金 ', '99', 260000, '220克', 0);
INSERT INTO `orders` VALUES (1423, '1586177578542100007', '【二手95新】劳力士 系列:迪通拿系列 型号:116505 材质:18k玫瑰金 镜面:蓝宝石玻璃 未使用', '\r\nhttp://productdata.fhxasdsada.xyz/2-SXJILMjHoQXj66aurkzg.jpg', '玫瑰金 ', '99', 260000, '220克', 0);
INSERT INTO `orders` VALUES (1424, '1586177578542100007', '【二手95新】劳力士 系列:迪通拿系列 型号:116505 材质:18k玫瑰金 镜面:蓝宝石玻璃 未使用', '\r\nhttp://productdata.fhxasdsada.xyz/2-SXJILMjHoQXj66aurkzg.jpg', '玫瑰金 ', '99', 260000, '220克', 0);
INSERT INTO `orders` VALUES (1425, '1586177578542100007', '【二手95新】劳力士 系列:迪通拿系列 型号:116505 材质:18k玫瑰金 镜面:蓝宝石玻璃 未使用', '\r\nhttp://productdata.fhxasdsada.xyz/2-SXJILMjHoQXj66aurkzg.jpg', '玫瑰金 ', '99', 260000, '220克', 0);
INSERT INTO `orders` VALUES (1426, '1586177578542100007', '【二手95新】劳力士 系列:迪通拿系列 型号:116505 材质:18k玫瑰金 镜面:蓝宝石玻璃 未使用', '\r\nhttp://productdata.fhxasdsada.xyz/2-SXJILMjHoQXj66aurkzg.jpg', '玫瑰金 ', '99', 260000, '220克', 0);
INSERT INTO `orders` VALUES (1427, '1586177578542100007', '【二手95新】劳力士 系列:迪通拿系列 型号:116505 材质:18k玫瑰金 镜面:蓝宝石玻璃 未使用', '\r\nhttp://productdata.fhxasdsada.xyz/2-SXJILMjHoQXj66aurkzg.jpg', '玫瑰金 ', '99', 260000, '220克', 0);
INSERT INTO `orders` VALUES (1428, '1586177578542100007', '【二手95新】劳力士 系列:迪通拿系列 型号:116505 材质:18k玫瑰金 镜面:蓝宝石玻璃 未使用', '\r\nhttp://productdata.fhxasdsada.xyz/2-SXJILMjHoQXj66aurkzg.jpg', '玫瑰金 ', '99', 260000, '220克', 0);
INSERT INTO `orders` VALUES (1429, '1586177578542100007', '【二手95新】劳力士 系列:迪通拿系列 型号:116505 材质:18k玫瑰金 镜面:蓝宝石玻璃 未使用', '\r\nhttp://productdata.fhxasdsada.xyz/2-SXJILMjHoQXj66aurkzg.jpg', '玫瑰金 ', '99', 260000, '220克', 0);
INSERT INTO `orders` VALUES (1430, '1586177578542100007', '【二手95新】劳力士 系列:迪通拿系列 型号:116505 材质:18k玫瑰金 镜面:蓝宝石玻璃 未使用', '\r\nhttp://productdata.fhxasdsada.xyz/2-SXJILMjHoQXj66aurkzg.jpg', '玫瑰金 ', '99', 260000, '220克', 0);
INSERT INTO `orders` VALUES (1431, '1586177578542100007', '【二手95新】劳力士 系列:迪通拿系列 型号:116505 材质:18k玫瑰金 镜面:蓝宝石玻璃 未使用', '\r\nhttp://productdata.fhxasdsada.xyz/2-SXJILMjHoQXj66aurkzg.jpg', '玫瑰金 ', '99', 260000, '220克', 0);
INSERT INTO `orders` VALUES (1432, '1586177578542100007', '【二手95新】劳力士 系列:迪通拿系列 型号:116505 材质:18k玫瑰金 镜面:蓝宝石玻璃 未使用', '\r\nhttp://productdata.fhxasdsada.xyz/2-SXJILMjHoQXj66aurkzg.jpg', '玫瑰金 ', '99', 260000, '220克', 0);
INSERT INTO `orders` VALUES (1433, '1586177578542100007', '【二手95新】劳力士 系列:迪通拿系列 型号:116505 材质:18k玫瑰金 镜面:蓝宝石玻璃 未使用', '\r\nhttp://productdata.fhxasdsada.xyz/2-SXJILMjHoQXj66aurkzg.jpg', '玫瑰金 ', '99', 260000, '220克', 0);
INSERT INTO `orders` VALUES (1434, '1586177578542100007', '【二手95新】劳力士 系列:迪通拿系列 型号:116505 材质:18k玫瑰金 镜面:蓝宝石玻璃 未使用', '\r\nhttp://productdata.fhxasdsada.xyz/2-SXJILMjHoQXj66aurkzg.jpg', '玫瑰金 ', '99', 260000, '220克', 0);
INSERT INTO `orders` VALUES (1435, '1586177578542100007', '【二手95新】劳力士 系列:迪通拿系列 型号:116505 材质:18k玫瑰金 镜面:蓝宝石玻璃 未使用', '\r\nhttp://productdata.fhxasdsada.xyz/2-SXJILMjHoQXj66aurkzg.jpg', '玫瑰金 ', '99', 260000, '220克', 0);
INSERT INTO `orders` VALUES (1436, '1586177578542100007', '【二手95新】劳力士 系列:迪通拿系列 型号:116505 材质:18k玫瑰金 镜面:蓝宝石玻璃 未使用', '\r\nhttp://productdata.fhxasdsada.xyz/2-SXJILMjHoQXj66aurkzg.jpg', '玫瑰金 ', '99', 260000, '220克', 0);
INSERT INTO `orders` VALUES (1437, '1586177578542100007', '【二手95新】劳力士 系列:迪通拿系列 型号:116505 材质:18k玫瑰金 镜面:蓝宝石玻璃 未使用', '\r\nhttp://productdata.fhxasdsada.xyz/2-SXJILMjHoQXj66aurkzg.jpg', '玫瑰金 ', '99', 260000, '220克', 0);
INSERT INTO `orders` VALUES (1438, '1586177578542100007', '【二手95新】劳力士 系列:迪通拿系列 型号:116505 材质:18k玫瑰金 镜面:蓝宝石玻璃 未使用', '\r\nhttp://productdata.fhxasdsada.xyz/2-SXJILMjHoQXj66aurkzg.jpg', '玫瑰金 ', '99', 260000, '220克', 0);
INSERT INTO `orders` VALUES (1439, '1586177578542100007', '【二手95新】劳力士 系列:迪通拿系列 型号:116505 材质:18k玫瑰金 镜面:蓝宝石玻璃 未使用', '\r\nhttp://productdata.fhxasdsada.xyz/2-SXJILMjHoQXj66aurkzg.jpg', '玫瑰金 ', '99', 260000, '220克', 0);
INSERT INTO `orders` VALUES (1440, '1586177578542100007', '【二手95新】劳力士 系列:迪通拿系列 型号:116505 材质:18k玫瑰金 镜面:蓝宝石玻璃 未使用', '\r\nhttp://productdata.fhxasdsada.xyz/2-SXJILMjHoQXj66aurkzg.jpg', '玫瑰金 ', '99', 260000, '220克', 0);
INSERT INTO `orders` VALUES (1441, '1586177578542100007', '【二手95新】劳力士 系列:迪通拿系列 型号:116505 材质:18k玫瑰金 镜面:蓝宝石玻璃 未使用', '\r\nhttp://productdata.fhxasdsada.xyz/2-SXJILMjHoQXj66aurkzg.jpg', '玫瑰金 ', '99', 260000, '220克', 0);
INSERT INTO `orders` VALUES (1442, '1586177578542100007', '【二手95新】劳力士 系列:迪通拿系列 型号:116505 材质:18k玫瑰金 镜面:蓝宝石玻璃 未使用', '\r\nhttp://productdata.fhxasdsada.xyz/2-SXJILMjHoQXj66aurkzg.jpg', '玫瑰金 ', '99', 260000, '220克', 0);
INSERT INTO `orders` VALUES (1443, '1586177578542100007', '【二手95新】劳力士 系列:迪通拿系列 型号:116505 材质:18k玫瑰金 镜面:蓝宝石玻璃 未使用', '\r\nhttp://productdata.fhxasdsada.xyz/2-SXJILMjHoQXj66aurkzg.jpg', '玫瑰金 ', '99', 260000, '220克', 0);
INSERT INTO `orders` VALUES (1444, '1586177578542100007', '【二手95新】劳力士 系列:迪通拿系列 型号:116505 材质:18k玫瑰金 镜面:蓝宝石玻璃 未使用', '\r\nhttp://productdata.fhxasdsada.xyz/2-SXJILMjHoQXj66aurkzg.jpg', '玫瑰金 ', '99', 260000, '220克', 0);
INSERT INTO `orders` VALUES (1445, '1586177578542100007', '【二手95新】劳力士 系列:迪通拿系列 型号:116505 材质:18k玫瑰金 镜面:蓝宝石玻璃 未使用', '\r\nhttp://productdata.fhxasdsada.xyz/2-SXJILMjHoQXj66aurkzg.jpg', '玫瑰金 ', '99', 260000, '220克', 0);
INSERT INTO `orders` VALUES (1446, '1586177578542100007', '【二手95新】劳力士 系列:迪通拿系列 型号:116505 材质:18k玫瑰金 镜面:蓝宝石玻璃 未使用', '\r\nhttp://productdata.fhxasdsada.xyz/2-SXJILMjHoQXj66aurkzg.jpg', '玫瑰金 ', '99', 260000, '220克', 0);
INSERT INTO `orders` VALUES (1447, '1586177578542100007', '【二手95新】劳力士 系列:迪通拿系列 型号:116505 材质:18k玫瑰金 镜面:蓝宝石玻璃 未使用', '\r\nhttp://productdata.fhxasdsada.xyz/2-SXJILMjHoQXj66aurkzg.jpg', '玫瑰金 ', '99', 260000, '220克', 0);
INSERT INTO `orders` VALUES (1448, '1586177578542100007', '【二手95新】劳力士 系列:迪通拿系列 型号:116505 材质:18k玫瑰金 镜面:蓝宝石玻璃 未使用', '\r\nhttp://productdata.fhxasdsada.xyz/2-SXJILMjHoQXj66aurkzg.jpg', '玫瑰金 ', '99', 260000, '220克', 0);
INSERT INTO `orders` VALUES (1449, '1586177578542100007', '【二手95新】劳力士 系列:迪通拿系列 型号:116505 材质:18k玫瑰金 镜面:蓝宝石玻璃 未使用', '\r\nhttp://productdata.fhxasdsada.xyz/2-SXJILMjHoQXj66aurkzg.jpg', '玫瑰金 ', '99', 260000, '220克', 0);
INSERT INTO `orders` VALUES (1450, '1586177578542100007', '【二手95新】劳力士 系列:迪通拿系列 型号:116505 材质:18k玫瑰金 镜面:蓝宝石玻璃 未使用', '\r\nhttp://productdata.fhxasdsada.xyz/2-SXJILMjHoQXj66aurkzg.jpg', '玫瑰金 ', '99', 260000, '220克', 0);
INSERT INTO `orders` VALUES (1451, '1586177578542100007', '【二手95新】劳力士 系列:迪通拿系列 型号:116505 材质:18k玫瑰金 镜面:蓝宝石玻璃 未使用', '\r\nhttp://productdata.fhxasdsada.xyz/2-SXJILMjHoQXj66aurkzg.jpg', '玫瑰金 ', '99', 260000, '220克', 0);
INSERT INTO `orders` VALUES (1452, '1586177578542100007', '【二手95新】劳力士 系列:迪通拿系列 型号:116505 材质:18k玫瑰金 镜面:蓝宝石玻璃 未使用', '\r\nhttp://productdata.fhxasdsada.xyz/2-SXJILMjHoQXj66aurkzg.jpg', '玫瑰金 ', '99', 260000, '220克', 0);
INSERT INTO `orders` VALUES (1453, '1586177578542100007', '【二手95新】劳力士 系列:迪通拿系列 型号:116505 材质:18k玫瑰金 镜面:蓝宝石玻璃 未使用', '\r\nhttp://productdata.fhxasdsada.xyz/2-SXJILMjHoQXj66aurkzg.jpg', '玫瑰金 ', '99', 260000, '220克', 0);
INSERT INTO `orders` VALUES (1454, '1586177578542100007', '【二手95新】劳力士 系列:迪通拿系列 型号:116505 材质:18k玫瑰金 镜面:蓝宝石玻璃 未使用', '\r\nhttp://productdata.fhxasdsada.xyz/2-SXJILMjHoQXj66aurkzg.jpg', '玫瑰金 ', '99', 260000, '220克', 0);
INSERT INTO `orders` VALUES (1455, '1586177578542100007', '【二手95新】劳力士 系列:迪通拿系列 型号:116505 材质:18k玫瑰金 镜面:蓝宝石玻璃 未使用', '\r\nhttp://productdata.fhxasdsada.xyz/2-SXJILMjHoQXj66aurkzg.jpg', '玫瑰金 ', '99', 260000, '220克', 0);
INSERT INTO `orders` VALUES (1456, '1586177578542100007', '【二手95新】劳力士 系列:迪通拿系列 型号:116505 材质:18k玫瑰金 镜面:蓝宝石玻璃 未使用', '\r\nhttp://productdata.fhxasdsada.xyz/2-SXJILMjHoQXj66aurkzg.jpg', '玫瑰金 ', '99', 260000, '220克', 0);
INSERT INTO `orders` VALUES (1457, '1586177578542100007', '【二手95新】劳力士 系列:迪通拿系列 型号:116505 材质:18k玫瑰金 镜面:蓝宝石玻璃 未使用', '\r\nhttp://productdata.fhxasdsada.xyz/2-SXJILMjHoQXj66aurkzg.jpg', '玫瑰金 ', '99', 260000, '220克', 0);
INSERT INTO `orders` VALUES (1458, '1586177578542100007', '【二手95新】劳力士 系列:迪通拿系列 型号:116505 材质:18k玫瑰金 镜面:蓝宝石玻璃 未使用', '\r\nhttp://productdata.fhxasdsada.xyz/2-SXJILMjHoQXj66aurkzg.jpg', '玫瑰金 ', '99', 260000, '220克', 0);
INSERT INTO `orders` VALUES (1459, '1586177578542100007', '【二手95新】劳力士 系列:迪通拿系列 型号:116505 材质:18k玫瑰金 镜面:蓝宝石玻璃 未使用', '\r\nhttp://productdata.fhxasdsada.xyz/2-SXJILMjHoQXj66aurkzg.jpg', '玫瑰金 ', '99', 260000, '220克', 0);
INSERT INTO `orders` VALUES (1460, '1586177750376100008', '\r\nCOACH PARKER 16 女士山茶花装饰可斜挎双肩包', '\r\nhttp://productdata.fhxasdsada.xyz/tuhaokuai_1583977278.jpg', '棕黄色锈色 均码 ', '1', 1299, NULL, 0);
INSERT INTO `orders` VALUES (1461, '1586177750376100008', '三只松鼠芒果干 蜜饯果干芒果片休闲零食办公室小吃果脯水果干116g/袋', 'http://productdata.fhxasdsada.xyz/3531d2420f91d48177112641833bc7aa_2_3_photo.jpg', '奶茶味 ', '1', 20, '0.15kg', 0);
INSERT INTO `orders` VALUES (1462, '1586177784998100009', '小米（MI）小爱智能音箱Pro 无线蓝牙音响 语音控制智能家居 APP远程操控 专业DTS 音效 黑色', 'http://productdata.fhxasdsada.xyz/5JR1uDh09y-dhv8RSstl9g.jpg', '【新品】小爱触屏音箱Pro  小爱音箱play版 ', '2', 265.09, '\r\n1.56kg', 0);
INSERT INTO `orders` VALUES (1463, '1586177784998100009', '小米（MI）小爱智能音箱Pro 无线蓝牙音响 语音控制智能家居 APP远程操控 专业DTS 音效 黑色', 'http://productdata.fhxasdsada.xyz/5JR1uDh09y-dhv8RSstl9g.jpg', '【小爱触屏音箱-红色】  小爱音箱play版 ', '1', 265.09, '\r\n1.56kg', 0);
INSERT INTO `orders` VALUES (1464, '1586177784998100009', '小米（MI）小爱智能音箱Pro 无线蓝牙音响 语音控制智能家居 APP远程操控 专业DTS 音效 黑色', 'http://productdata.fhxasdsada.xyz/5JR1uDh09y-dhv8RSstl9g.jpg', '【小爱触屏音箱-红色】  小爱音箱play版 ', '1', 265.09, '\r\n1.56kg', 0);
INSERT INTO `orders` VALUES (1465, '1586177784998100009', '小米（MI）小爱智能音箱Pro 无线蓝牙音响 语音控制智能家居 APP远程操控 专业DTS 音效 黑色', 'http://productdata.fhxasdsada.xyz/5JR1uDh09y-dhv8RSstl9g.jpg', '【新品】小爱音箱Pro  小爱音箱play版 ', '1', 265.09, '\r\n1.56kg', 0);
INSERT INTO `orders` VALUES (1466, '1586177784998100009', '小米（MI）小爱智能音箱Pro 无线蓝牙音响 语音控制智能家居 APP远程操控 专业DTS 音效 黑色', 'http://productdata.fhxasdsada.xyz/5JR1uDh09y-dhv8RSstl9g.jpg', '【新品】小爱音箱Pro  小爱音箱play版 ', '1', 265.09, '\r\n1.56kg', 0);
INSERT INTO `orders` VALUES (1467, '1586177784998100009', '小米（MI）小爱智能音箱Pro 无线蓝牙音响 语音控制智能家居 APP远程操控 专业DTS 音效 黑色', 'http://productdata.fhxasdsada.xyz/5JR1uDh09y-dhv8RSstl9g.jpg', '【新品】小爱音箱Pro  小爱音箱play版 ', '1', 265.09, '\r\n1.56kg', 0);
INSERT INTO `orders` VALUES (1468, '1586177784998100009', '小米（MI）小爱智能音箱Pro 无线蓝牙音响 语音控制智能家居 APP远程操控 专业DTS 音效 黑色', 'http://productdata.fhxasdsada.xyz/5JR1uDh09y-dhv8RSstl9g.jpg', 'Redmi 小爱音箱Play  小爱音箱play版 ', '2', 265.09, '\r\n1.56kg', 0);
INSERT INTO `orders` VALUES (1469, '1586177784998100009', '小米（MI）小爱智能音箱Pro 无线蓝牙音响 语音控制智能家居 APP远程操控 专业DTS 音效 黑色', 'http://productdata.fhxasdsada.xyz/5JR1uDh09y-dhv8RSstl9g.jpg', 'Redmi 小爱音箱Play  小米小爱音箱【HD版 深灰色】 ', '1', 265.09, '\r\n1.56kg', 0);
INSERT INTO `orders` VALUES (1470, '1586177784998100009', '小米（MI）小爱智能音箱Pro 无线蓝牙音响 语音控制智能家居 APP远程操控 专业DTS 音效 黑色', 'http://productdata.fhxasdsada.xyz/5JR1uDh09y-dhv8RSstl9g.jpg', 'Redmi 小爱音箱Play  小米小爱音箱【HD版 深灰色】 ', '1', 265.09, '\r\n1.56kg', 0);
INSERT INTO `orders` VALUES (1471, '1586177784998100009', '小米（MI）小爱智能音箱Pro 无线蓝牙音响 语音控制智能家居 APP远程操控 专业DTS 音效 黑色', 'http://productdata.fhxasdsada.xyz/5JR1uDh09y-dhv8RSstl9g.jpg', 'Redmi 小爱音箱Play  小米小爱音箱【HD版 浅灰色】 ', '2', 265.09, '\r\n1.56kg', 0);
INSERT INTO `orders` VALUES (1472, '1586177784998100009', '小米（MI）小爱智能音箱Pro 无线蓝牙音响 语音控制智能家居 APP远程操控 专业DTS 音效 黑色', 'http://productdata.fhxasdsada.xyz/5JR1uDh09y-dhv8RSstl9g.jpg', 'Redmi 小爱音箱Play   Redmi 小爱音箱Play 蓝色 ', '3', 265.09, '\r\n1.56kg', 0);
INSERT INTO `orders` VALUES (1473, '1586177784998100009', '小米（MI）小爱智能音箱Pro 无线蓝牙音响 语音控制智能家居 APP远程操控 专业DTS 音效 黑色', 'http://productdata.fhxasdsada.xyz/5JR1uDh09y-dhv8RSstl9g.jpg', 'Redmi 小爱音箱Play  Redmi 小爱音箱Play 绿色 ', '1', 265.09, '\r\n1.56kg', 0);
INSERT INTO `orders` VALUES (1474, '1586177784998100009', '小米（MI）小爱智能音箱Pro 无线蓝牙音响 语音控制智能家居 APP远程操控 专业DTS 音效 黑色', 'http://productdata.fhxasdsada.xyz/5JR1uDh09y-dhv8RSstl9g.jpg', 'Redmi 小爱音箱Play  Redmi 小爱音箱Play 绿色 ', '1', 265.09, '\r\n1.56kg', 0);
INSERT INTO `orders` VALUES (1475, '1586177784998100009', '小米（MI）小爱智能音箱Pro 无线蓝牙音响 语音控制智能家居 APP远程操控 专业DTS 音效 黑色', 'http://productdata.fhxasdsada.xyz/5JR1uDh09y-dhv8RSstl9g.jpg', 'Redmi 小爱音箱Play  小爱音箱万能遥控版  ', '1', 265.09, '\r\n1.56kg', 0);
INSERT INTO `orders` VALUES (1476, '1586177784998100009', '小米（MI）小爱智能音箱Pro 无线蓝牙音响 语音控制智能家居 APP远程操控 专业DTS 音效 黑色', 'http://productdata.fhxasdsada.xyz/5JR1uDh09y-dhv8RSstl9g.jpg', 'Redmi 小爱音箱Play  小爱音箱万能遥控版  ', '1', 265.09, '\r\n1.56kg', 0);
INSERT INTO `orders` VALUES (1477, '1586177784998100009', '【二手95新】劳力士 系列:迪通拿系列 型号:116505 材质:18k玫瑰金 镜面:蓝宝石玻璃 未使用', '\r\nhttp://productdata.fhxasdsada.xyz/2-SXJILMjHoQXj66aurkzg.jpg', '玫瑰金 ', '99', 260000, '220克', 0);
INSERT INTO `orders` VALUES (1478, '1586227845282100001', '【二手95新】劳力士 系列:迪通拿系列 型号:116505 材质:18k玫瑰金 镜面:蓝宝石玻璃 未使用', '\r\nhttp://productdata.fhxasdsada.xyz/2-SXJILMjHoQXj66aurkzg.jpg', '玫瑰金 ', '1', 260000, '220克', 0);
INSERT INTO `orders` VALUES (1479, '1586227978121100002', '骨伽（COUGAR） 电脑主机箱 台式机中塔式侧透征服者游戏定制水冷机箱 黑色\r\n', 'http://productdata.fhxasdsada.xyz/5b4d4cc8N0bf9c476.jpg', '黑色+骨伽LLC750全模组电源 ', '1', 2898, '2.8kg', 0);
INSERT INTO `orders` VALUES (1480, '1586228264452100003', 'Apple iPad Pro 12.9英寸平板电脑 2018款(64G WLAN版/全面屏/A12X/FaceID MTEL2CH/A)深空灰\r\n', 'http://productdata.fhxasdsada.xyz/7a77ad4e3100e885.jpg', 'WLAN版64G ', '1', 7890, '2.8kg', 0);
INSERT INTO `orders` VALUES (1481, '1586229257791100004', '【假一赔十】beats solo3wireless 蓝牙耳机头戴式 米奇 游戏手机耳机 折叠式重低音 运动 玫瑰金', 'http://productdata.fhxasdsada.xyz/135638619666091357760161_x.jpg', '磨砂黑 ', '1', 773, NULL, 0);
INSERT INTO `orders` VALUES (1482, '1586229545997100005', '【二手95新】劳力士 系列:迪通拿系列 型号:116505 材质:18k玫瑰金 镜面:蓝宝石玻璃 未使用', '\r\nhttp://productdata.fhxasdsada.xyz/2-SXJILMjHoQXj66aurkzg.jpg', '玫瑰金 ', '1', 260000, '220克', 0);
INSERT INTO `orders` VALUES (1483, '1586234250274100006', '三只松鼠芒果干 蜜饯果干芒果片休闲零食办公室小吃果脯水果干116g/袋', 'http://productdata.fhxasdsada.xyz/3531d2420f91d48177112641833bc7aa_2_3_photo.jpg', '奶茶味 ', '1', 20, '0.15kg', 0);
INSERT INTO `orders` VALUES (1484, '1586234688047100007', '三只松鼠芒果干 蜜饯果干芒果片休闲零食办公室小吃果脯水果干116g/袋', 'http://productdata.fhxasdsada.xyz/3531d2420f91d48177112641833bc7aa_2_3_photo.jpg', '奶茶味 ', '1', 20, '0.15kg', 0);
INSERT INTO `orders` VALUES (1485, '1586236398447100008', '\r\nCOACH PARKER 16 女士山茶花装饰可斜挎双肩包', '\r\nhttp://productdata.fhxasdsada.xyz/tuhaokuai_1583977278.jpg', '粉色 均码 ', '1', 1299, NULL, 0);
INSERT INTO `orders` VALUES (1486, '1586236398447100008', '【良品铺子】综合果仁525g 每日坚果组合混合干果礼盒零食大礼包健康零食', 'http://productdata.fhxasdsada.xyz/FlnxmuE-gh4YKIj4txsLfg.jpg', '525g(21天装) ', '1', 71, '575.5g', 0);
INSERT INTO `orders` VALUES (1487, '1586236398447100008', 'HHKB Professional BT 蓝牙版黑无刻静电容键盘 程序员码农专用便携迷你键盘 编程适用', 'http://productdata.fhxasdsada.xyz/AD8JQ6Q0jfeySzdxAVglqw.jpg', '标准白有刻  ', '1', 2188, NULL, 0);
INSERT INTO `orders` VALUES (1488, '1586236398447100008', '【专柜正品】Dior迪奥口红烈艳蓝金女士唇膏999口红套装送女友生日礼物 送老婆情人节礼物 【情人节星星限量版五只装套盒】', '\r\nhttp://productdata.fhxasdsada.xyz/5cd5acfbN24c0ee18.jpg', '999+ 520+花漾甜心100ML [口红香水套装] ', '1', 1140, '0.4kg', 0);
INSERT INTO `orders` VALUES (1489, '1586236398447100008', 'Classic | 40mm Canterbury', '\r\nhttp://productdata.fhxasdsada.xyz/adadas3e.jpg', '多彩尼龙白盘 ', '1', 1289, NULL, 0);
INSERT INTO `orders` VALUES (1490, '1586236398447100008', '美国正品代购阿迪达斯adidas YEEZY BOOST 350 V2 侃爷冰蓝椰子鞋新款男跑步鞋', 'http://productdata.fhxasdsada.xyz/334355456168161240400082_x.jpg', 'BB1826灰橙色  标准46.5/US12  ', '1', 2920.01, '2.5kg', 0);
INSERT INTO `orders` VALUES (1491, '1586236398447100008', '夹克男工装外套男士韩版宽松潮流上衣服2019秋季新款男装潮牌连帽夹克衫男学生', 'http://productdata.fhxasdsada.xyz/5Bl2awngovDrpx-B7yhitw.jpg', '米白色 套餐 种类 M 口味 规格 ', '1', 128, '0.1', 0);
INSERT INTO `orders` VALUES (1492, '1586236398447100008', '万代（BANDAI） Megahouse POP 海贼王 路飞9人 模型玩具（无售后！！！） 四档路飞\r\n', '\r\nhttp://productdata.fhxasdsada.xyz/5b90958cN736d78c4.jpg', '', '2', 3500, '100kg', 0);
INSERT INTO `orders` VALUES (1493, '1586236398447100008', 'Hot Toys 复仇者联盟3 无限战争 HOTTOYS 钢铁侠 模型玩具礼物 MK7 普通版\r\n\r\n', 'http://productdata.fhxasdsada.xyz/9bf639975363fbb0.jpg', '', '1', 3350, '5kg', 0);
INSERT INTO `orders` VALUES (1494, '1586236398447100008', ' 索尼（SONY）WF-1000XM3 真无线蓝牙降噪耳机 智能降噪 触控面板 苹果/安卓手机适用 黑色\r\n', 'http://productdata.fhxasdsada.xyz/2ca45e2fd9758794.jpg', '黑色 ', '1', 1499, '0.6kg', 0);
INSERT INTO `orders` VALUES (1495, '1586236398447100008', '星农联合 智利帝王蟹5.5-5.0斤 熟冻大螃蟹 进口海鲜礼盒', 'http://productdata.fhxasdsada.xyz/212478163d84fcf0.jpg', '【超大款】帝王蟹礼盒4.5-4.0斤  ', '1', 758, '不计重', 0);
INSERT INTO `orders` VALUES (1496, '1586236398447100008', 'Apple Watch Series 5智能手表（GPS款 40毫米深空灰色铝金属表壳 黑色运动型表带 MWV82CH/A)\r\n', 'http://productdata.fhxasdsada.xyz/44c3c5495c1b5145.jpg', '黑色 GPS版AC+ 40毫米 ', '1', 3199, '0.23kg', 0);
INSERT INTO `orders` VALUES (1497, '1586236398447100008', 'Apple Watch Series 5智能手表（GPS款 40毫米深空灰色铝金属表壳 黑色运动型表带 MWV82CH/A)\r\n', 'http://productdata.fhxasdsada.xyz/44c3c5495c1b5145.jpg', '黑色 GPS版 40毫米 ', '1', 3199, '0.23kg', 0);
INSERT INTO `orders` VALUES (1498, '1586236398447100008', '华为 HUAWEI Mate 30 Pro 麒麟990旗舰芯片OLED环幕屏双4000万徕卡电影四摄手机', '\r\nhttp://productdata.fhxasdsada.xyz/971ec333c8ef1de2.jpg', '星河银 ', '1', 5399, '0.54kg', 0);
INSERT INTO `orders` VALUES (1499, '1586236398447100008', '三只松鼠芒果干 蜜饯果干芒果片休闲零食办公室小吃果脯水果干116g/袋', 'http://productdata.fhxasdsada.xyz/3531d2420f91d48177112641833bc7aa_2_3_photo.jpg', '奶茶味 ', '1', 20, '0.15kg', 0);
INSERT INTO `orders` VALUES (1500, '1586236398447100008', '骨伽（COUGAR） 电脑主机箱 台式机中塔式侧透征服者游戏定制水冷机箱 黑色\r\n', 'http://productdata.fhxasdsada.xyz/5b4d4cc8N0bf9c476.jpg', '黑色 ', '1', 2898, '2.8kg', 0);
INSERT INTO `orders` VALUES (1501, '1586236398447100008', '华硕（ASUS）猛禽ROG-STRIX-GeForce RTX 2080 ', 'http://productdata.fhxasdsada.xyz/1f3f9fd0e759383f.jpg', '华硕PRIME X299-A主板+  ', '1', 11999, '2.08kg', 0);
INSERT INTO `orders` VALUES (1502, '1586236398447100008', '联想(Lenovo)小新Pro13.3英寸全面屏超轻薄笔记本电脑(标压锐龙R5-3550H 16G 512G 2.5K QHD 100%sRGB)银 ', '\r\nhttp://productdata.fhxasdsada.xyz/2b0744939bd398f0.jpg', '小清新蓝 Pro13|标压R5 16G 512G QHD ', '1', 4999, '2.08kg', 0);
INSERT INTO `orders` VALUES (1503, '1586236398447100008', 'Apple iPhone 11 Pro Max (A2220) 64GB 金色 移动联通电信4G手机 双卡双待 ', '\r\nhttp://productdata.fhxasdsada.xyz/04e04ec4954e07bd.jpg', '暗夜绿色 128G+2G ', '1', 10398, '0.56kg', 0);
INSERT INTO `orders` VALUES (1504, '1586236398447100008', 'Apple iPhone 11 Pro Max (A2220) 64GB 金色 移动联通电信4G手机 双卡双待 ', '\r\nhttp://productdata.fhxasdsada.xyz/04e04ec4954e07bd.jpg', '银色 128G+2G ', '2', 10398, '0.56kg', 0);
INSERT INTO `orders` VALUES (1505, '1586236398447100008', '阿玛尼（ Emporio Armani）满天星手表 女新款玫瑰金钢制表带镶钻石英轻奢女士腕表礼物 AR11244 ', '\r\nhttp://productdata.fhxasdsada.xyz/8c0b0a13e48adce3.jpg', '圣颜色 ', '1', 3596, '\r\n0.485kg', 0);
INSERT INTO `orders` VALUES (1506, '1586236398447100008', 'Apple iPhone 11 (A2223) 128GB 黑色 移动联通电信4G手机 双卡双待 ', 'http://productdata.fhxasdsada.xyz/68836f52ffaaad96.jpg', '黑色 豪华版 256G+8G\r\n ', '1', 5999, '0.74kg', 0);
INSERT INTO `orders` VALUES (1507, '1586236398447100008', '【假一赔十】beats solo3wireless 蓝牙耳机头戴式 米奇 游戏手机耳机 折叠式重低音 运动 玫瑰金', 'http://productdata.fhxasdsada.xyz/135638619666091357760161_x.jpg', '学院红 ', '1', 773, NULL, 0);
INSERT INTO `orders` VALUES (1508, '1586236398447100008', '【假一赔十】beats solo3wireless 蓝牙耳机头戴式 米奇 游戏手机耳机 折叠式重低音 运动 玫瑰金', 'http://productdata.fhxasdsada.xyz/135638619666091357760161_x.jpg', '磨砂黑 ', '1', 773, NULL, 0);
INSERT INTO `orders` VALUES (1509, '1586239367643100009', '【二手95新】劳力士 系列:迪通拿系列 型号:116505 材质:18k玫瑰金 镜面:蓝宝石玻璃 未使用', '\r\nhttp://productdata.fhxasdsada.xyz/2-SXJILMjHoQXj66aurkzg.jpg', '玫瑰金 ', '99', 260000, '220克', 0);
INSERT INTO `orders` VALUES (1510, '1586239408329100010', '三只松鼠芒果干 蜜饯果干芒果片休闲零食办公室小吃果脯水果干116g/袋', 'http://productdata.fhxasdsada.xyz/3531d2420f91d48177112641833bc7aa_2_3_photo.jpg', '苹果味 ', '1', 20, '0.15kg', 0);
INSERT INTO `orders` VALUES (1511, '1586239408329100010', '三只松鼠芒果干 蜜饯果干芒果片休闲零食办公室小吃果脯水果干116g/袋', 'http://productdata.fhxasdsada.xyz/3531d2420f91d48177112641833bc7aa_2_3_photo.jpg', '奶茶味 ', '2', 20, '0.15kg', 0);
INSERT INTO `orders` VALUES (1512, '1586239408329100010', '【二手95新】劳力士 系列:迪通拿系列 型号:116505 材质:18k玫瑰金 镜面:蓝宝石玻璃 未使用', '\r\nhttp://productdata.fhxasdsada.xyz/2-SXJILMjHoQXj66aurkzg.jpg', '玫瑰金 ', '1', 260000, '220克', 0);
INSERT INTO `orders` VALUES (1513, '1586241057285100011', '【专柜正品】Dior迪奥口红烈艳蓝金女士唇膏999口红套装送女友生日礼物 送老婆情人节礼物 【情人节星星限量版五只装套盒】', '\r\nhttp://productdata.fhxasdsada.xyz/5cd5acfbN24c0ee18.jpg', '[限量版星星5支套装礼盒] ', '1', 1140, '0.4kg', 0);
INSERT INTO `orders` VALUES (1514, '1586241057285100011', '【专柜正品】Dior迪奥口红烈艳蓝金女士唇膏999口红套装送女友生日礼物 送老婆情人节礼物 【情人节星星限量版五只装套盒】', '\r\nhttp://productdata.fhxasdsada.xyz/5cd5acfbN24c0ee18.jpg', '888#哑光开运红 ', '1', 1140, '0.4kg', 0);
INSERT INTO `orders` VALUES (1515, '1586241057285100011', '【专柜正品】Dior迪奥口红烈艳蓝金女士唇膏999口红套装送女友生日礼物 送老婆情人节礼物 【情人节星星限量版五只装套盒】', '\r\nhttp://productdata.fhxasdsada.xyz/5cd5acfbN24c0ee18.jpg', '080#滋润微笑红 ', '2', 1140, '0.4kg', 0);
INSERT INTO `orders` VALUES (1516, '1586241057285100011', '【专柜正品】Dior迪奥口红烈艳蓝金女士唇膏999口红套装送女友生日礼物 送老婆情人节礼物 【情人节星星限量版五只装套盒】', '\r\nhttp://productdata.fhxasdsada.xyz/5cd5acfbN24c0ee18.jpg', '771#哑光树玫红 ', '1', 1140, '0.4kg', 0);
INSERT INTO `orders` VALUES (1517, '1586241057285100011', '【专柜正品】Dior迪奥口红烈艳蓝金女士唇膏999口红套装送女友生日礼物 送老婆情人节礼物 【情人节星星限量版五只装套盒】', '\r\nhttp://productdata.fhxasdsada.xyz/5cd5acfbN24c0ee18.jpg', '[情人节星星限量版五只装套盒] ', '1', 1140, '0.4kg', 0);
INSERT INTO `orders` VALUES (1518, '1586241057285100011', '【专柜正品】Dior迪奥口红烈艳蓝金女士唇膏999口红套装送女友生日礼物 送老婆情人节礼物 【情人节星星限量版五只装套盒】', '\r\nhttp://productdata.fhxasdsada.xyz/5cd5acfbN24c0ee18.jpg', '挚爱红管999#传奇正红[赠专柜礼盒] ', '1', 1140, '0.4kg', 0);
INSERT INTO `orders` VALUES (1519, '1586241057285100011', '【专柜正品】Dior迪奥口红烈艳蓝金女士唇膏999口红套装送女友生日礼物 送老婆情人节礼物 【情人节星星限量版五只装套盒】', '\r\nhttp://productdata.fhxasdsada.xyz/5cd5acfbN24c0ee18.jpg', '[红弯心动6支套装] [赠视频玫瑰礼盒 ] ', '1', 1140, '0.4kg', 0);
INSERT INTO `orders` VALUES (1520, '1586241057285100011', '【专柜正品】Dior迪奥口红烈艳蓝金女士唇膏999口红套装送女友生日礼物 送老婆情人节礼物 【情人节星星限量版五只装套盒】', '\r\nhttp://productdata.fhxasdsada.xyz/5cd5acfbN24c0ee18.jpg', '[限量版挚爱红管烟花5支装套盒] ', '1', 1140, '0.4kg', 0);
INSERT INTO `orders` VALUES (1521, '1586241057285100011', '【专柜正品】Dior迪奥口红烈艳蓝金女士唇膏999口红套装送女友生日礼物 送老婆情人节礼物 【情人节星星限量版五只装套盒】', '\r\nhttp://productdata.fhxasdsada.xyz/5cd5acfbN24c0ee18.jpg', '999+ 520+花漾甜心100ML [口红香水套装] ', '1', 1140, '0.4kg', 0);
INSERT INTO `orders` VALUES (1522, '1586241057285100011', '【专柜正品】Dior迪奥口红烈艳蓝金女士唇膏999口红套装送女友生日礼物 送老婆情人节礼物 【情人节星星限量版五只装套盒】', '\r\nhttp://productdata.fhxasdsada.xyz/5cd5acfbN24c0ee18.jpg', '028#滋润珊瑚红 ', '1', 1140, '0.4kg', 0);
INSERT INTO `orders` VALUES (1523, '1586241316139100012', '小米（MI）小爱智能音箱Pro 无线蓝牙音响 语音控制智能家居 APP远程操控 专业DTS 音效 黑色', 'http://productdata.fhxasdsada.xyz/5JR1uDh09y-dhv8RSstl9g.jpg', 'Redmi 小爱音箱Play   Redmi 小爱音箱Play 蓝色 ', '2', 265.09, '\r\n1.56kg', 0);
INSERT INTO `orders` VALUES (1524, '1586241316139100012', '小米（MI）小爱智能音箱Pro 无线蓝牙音响 语音控制智能家居 APP远程操控 专业DTS 音效 黑色', 'http://productdata.fhxasdsada.xyz/5JR1uDh09y-dhv8RSstl9g.jpg', 'Redmi 小爱音箱Play  Redmi 小爱音箱Play 绿色 ', '1', 265.09, '\r\n1.56kg', 0);
INSERT INTO `orders` VALUES (1525, '1586241316139100012', '小米（MI）小爱智能音箱Pro 无线蓝牙音响 语音控制智能家居 APP远程操控 专业DTS 音效 黑色', 'http://productdata.fhxasdsada.xyz/5JR1uDh09y-dhv8RSstl9g.jpg', 'Redmi 小爱音箱Play  Redmi 小爱音箱Play 绿色 ', '1', 265.09, '\r\n1.56kg', 0);
INSERT INTO `orders` VALUES (1526, '1586241316139100012', '小米（MI）小爱智能音箱Pro 无线蓝牙音响 语音控制智能家居 APP远程操控 专业DTS 音效 黑色', 'http://productdata.fhxasdsada.xyz/5JR1uDh09y-dhv8RSstl9g.jpg', 'Redmi 小爱音箱Play  Redmi 小爱音箱Play 绿色 ', '1', 265.09, '\r\n1.56kg', 0);
INSERT INTO `orders` VALUES (1527, '1586241316139100012', '小米（MI）小爱智能音箱Pro 无线蓝牙音响 语音控制智能家居 APP远程操控 专业DTS 音效 黑色', 'http://productdata.fhxasdsada.xyz/5JR1uDh09y-dhv8RSstl9g.jpg', 'Redmi 小爱音箱Play  小爱音箱万能遥控版  ', '1', 265.09, '\r\n1.56kg', 0);
INSERT INTO `orders` VALUES (1528, '1586241316139100012', '小米（MI）小爱智能音箱Pro 无线蓝牙音响 语音控制智能家居 APP远程操控 专业DTS 音效 黑色', 'http://productdata.fhxasdsada.xyz/5JR1uDh09y-dhv8RSstl9g.jpg', 'Redmi 小爱音箱Play  小爱音箱万能遥控版  ', '1', 265.09, '\r\n1.56kg', 0);
INSERT INTO `orders` VALUES (1529, '1586241316139100012', 'Apple iPhone 11 Pro Max (A2220) 64GB 金色 移动联通电信4G手机 双卡双待 ', '\r\nhttp://productdata.fhxasdsada.xyz/04e04ec4954e07bd.jpg', '深空灰色 128G+2G ', '1', 10398, '0.56kg', 0);
INSERT INTO `orders` VALUES (1530, '1586241316139100012', 'Apple iPhone 11 Pro Max (A2220) 64GB 金色 移动联通电信4G手机 双卡双待 ', '\r\nhttp://productdata.fhxasdsada.xyz/04e04ec4954e07bd.jpg', '暗夜绿色 128G+2G ', '1', 10398, '0.56kg', 0);
INSERT INTO `orders` VALUES (1531, '1586241316139100012', 'Apple iPhone 11 Pro Max (A2220) 64GB 金色 移动联通电信4G手机 双卡双待 ', '\r\nhttp://productdata.fhxasdsada.xyz/04e04ec4954e07bd.jpg', '银色 128G+2G ', '1', 10398, '0.56kg', 0);
INSERT INTO `orders` VALUES (1532, '1586241445141100013', '【专柜正品】Dior迪奥口红烈艳蓝金女士唇膏999口红套装送女友生日礼物 送老婆情人节礼物 【情人节星星限量版五只装套盒】', '\r\nhttp://productdata.fhxasdsada.xyz/5cd5acfbN24c0ee18.jpg', '[情人节星星限量版五只装套盒] ', '1', 1140, '0.4kg', 0);
INSERT INTO `orders` VALUES (1533, '1586241445141100013', '【专柜正品】Dior迪奥口红烈艳蓝金女士唇膏999口红套装送女友生日礼物 送老婆情人节礼物 【情人节星星限量版五只装套盒】', '\r\nhttp://productdata.fhxasdsada.xyz/5cd5acfbN24c0ee18.jpg', '挚爱红管999#传奇正红[赠专柜礼盒] ', '1', 1140, '0.4kg', 0);
INSERT INTO `orders` VALUES (1534, '1586241445141100013', '【专柜正品】Dior迪奥口红烈艳蓝金女士唇膏999口红套装送女友生日礼物 送老婆情人节礼物 【情人节星星限量版五只装套盒】', '\r\nhttp://productdata.fhxasdsada.xyz/5cd5acfbN24c0ee18.jpg', '[限量版挚爱红管烟花5支装套盒] ', '1', 1140, '0.4kg', 0);
INSERT INTO `orders` VALUES (1535, '1586241445141100013', '【专柜正品】Dior迪奥口红烈艳蓝金女士唇膏999口红套装送女友生日礼物 送老婆情人节礼物 【情人节星星限量版五只装套盒】', '\r\nhttp://productdata.fhxasdsada.xyz/5cd5acfbN24c0ee18.jpg', '[红弯心动6支套装] [赠视频玫瑰礼盒 ] ', '1', 1140, '0.4kg', 0);
INSERT INTO `orders` VALUES (1536, '1586241445141100013', '【专柜正品】Dior迪奥口红烈艳蓝金女士唇膏999口红套装送女友生日礼物 送老婆情人节礼物 【情人节星星限量版五只装套盒】', '\r\nhttp://productdata.fhxasdsada.xyz/5cd5acfbN24c0ee18.jpg', '999+ 520+花漾甜心100ML [口红香水套装] ', '1', 1140, '0.4kg', 0);
INSERT INTO `orders` VALUES (1537, '1586241576341100014', '三只松鼠芒果干 蜜饯果干芒果片休闲零食办公室小吃果脯水果干116g/袋', 'http://productdata.fhxasdsada.xyz/3531d2420f91d48177112641833bc7aa_2_3_photo.jpg', '奶茶味 ', '1', 20, '0.15kg', 0);
INSERT INTO `orders` VALUES (1538, '1586242155794100015', '华为 HUAWEI Mate 30 Pro 麒麟990旗舰芯片OLED环幕屏双4000万徕卡电影四摄手机', '\r\nhttp://productdata.fhxasdsada.xyz/971ec333c8ef1de2.jpg', '星河银 ', '1', 5399, '0.54kg', 0);
INSERT INTO `orders` VALUES (1539, '1586242549535100016', 'HHKB Professional BT 蓝牙版黑无刻静电容键盘 程序员码农专用便携迷你键盘 编程适用', 'http://productdata.fhxasdsada.xyz/AD8JQ6Q0jfeySzdxAVglqw.jpg', '标准白有刻  ', '1', 2188, NULL, 0);
INSERT INTO `orders` VALUES (1540, '1586242588420100017', 'Hot Toys 复仇者联盟3 无限战争 HOTTOYS 钢铁侠 模型玩具礼物 MK7 普通版\r\n\r\n', 'http://productdata.fhxasdsada.xyz/9bf639975363fbb0.jpg', '', '1', 3350, '5kg', 0);
INSERT INTO `orders` VALUES (1541, '1586242643719100018', 'Hot Toys 复仇者联盟3 无限战争 HOTTOYS 钢铁侠 模型玩具礼物 MK7 普通版\r\n\r\n', 'http://productdata.fhxasdsada.xyz/9bf639975363fbb0.jpg', '', '1', 3350, '5kg', 0);
INSERT INTO `orders` VALUES (1542, '1586242673368100019', '【假一赔十】beats solo3wireless 蓝牙耳机头戴式 米奇 游戏手机耳机 折叠式重低音 运动 玫瑰金', 'http://productdata.fhxasdsada.xyz/135638619666091357760161_x.jpg', '学院蓝 ', '1', 773, NULL, 0);
INSERT INTO `orders` VALUES (1543, '1586242673368100019', '【假一赔十】beats solo3wireless 蓝牙耳机头戴式 米奇 游戏手机耳机 折叠式重低音 运动 玫瑰金', 'http://productdata.fhxasdsada.xyz/135638619666091357760161_x.jpg', '学院蓝 ', '1', 773, NULL, 0);
INSERT INTO `orders` VALUES (1544, '1586242673368100019', '【假一赔十】beats solo3wireless 蓝牙耳机头戴式 米奇 游戏手机耳机 折叠式重低音 运动 玫瑰金', 'http://productdata.fhxasdsada.xyz/135638619666091357760161_x.jpg', '猪年限量版 90周年 ', '2', 773, NULL, 0);
INSERT INTO `orders` VALUES (1545, '1586242673368100019', '【假一赔十】beats solo3wireless 蓝牙耳机头戴式 米奇 游戏手机耳机 折叠式重低音 运动 玫瑰金', 'http://productdata.fhxasdsada.xyz/135638619666091357760161_x.jpg', '米奇老鼠版  ', '1', 773, NULL, 0);
INSERT INTO `orders` VALUES (1546, '1586242673368100019', '【假一赔十】beats solo3wireless 蓝牙耳机头戴式 米奇 游戏手机耳机 折叠式重低音 运动 玫瑰金', 'http://productdata.fhxasdsada.xyz/135638619666091357760161_x.jpg', '米奇老鼠版  ', '2', 773, NULL, 0);
INSERT INTO `orders` VALUES (1547, '1586242673368100019', '【假一赔十】beats solo3wireless 蓝牙耳机头戴式 米奇 游戏手机耳机 折叠式重低音 运动 玫瑰金', 'http://productdata.fhxasdsada.xyz/135638619666091357760161_x.jpg', ' 学院黄 ', '3', 773, NULL, 0);
INSERT INTO `orders` VALUES (1548, '1586242673368100019', '【假一赔十】beats solo3wireless 蓝牙耳机头戴式 米奇 游戏手机耳机 折叠式重低音 运动 玫瑰金', 'http://productdata.fhxasdsada.xyz/135638619666091357760161_x.jpg', '学院红 ', '2', 773, NULL, 0);
INSERT INTO `orders` VALUES (1549, '1586242673368100019', '【假一赔十】beats solo3wireless 蓝牙耳机头戴式 米奇 游戏手机耳机 折叠式重低音 运动 玫瑰金', 'http://productdata.fhxasdsada.xyz/135638619666091357760161_x.jpg', '磨砂黑 ', '2', 773, NULL, 0);
INSERT INTO `orders` VALUES (1550, '1586242712385100020', '小米（MI）小爱智能音箱Pro 无线蓝牙音响 语音控制智能家居 APP远程操控 专业DTS 音效 黑色', 'http://productdata.fhxasdsada.xyz/5JR1uDh09y-dhv8RSstl9g.jpg', '【新品】小爱触屏音箱Pro  小爱音箱play版 ', '3', 265.09, '\r\n1.56kg', 0);
INSERT INTO `orders` VALUES (1551, '1586242712385100020', '小米（MI）小爱智能音箱Pro 无线蓝牙音响 语音控制智能家居 APP远程操控 专业DTS 音效 黑色', 'http://productdata.fhxasdsada.xyz/5JR1uDh09y-dhv8RSstl9g.jpg', '【新品】小爱触屏音箱Pro   Redmi 小爱音箱Play 蓝色 ', '3', 265.09, '\r\n1.56kg', 0);
INSERT INTO `orders` VALUES (1552, '1586242712385100020', '小米（MI）小爱智能音箱Pro 无线蓝牙音响 语音控制智能家居 APP远程操控 专业DTS 音效 黑色', 'http://productdata.fhxasdsada.xyz/5JR1uDh09y-dhv8RSstl9g.jpg', '【新品】小爱触屏音箱Pro  Redmi 小爱音箱Play 绿色 ', '2', 265.09, '\r\n1.56kg', 0);
INSERT INTO `orders` VALUES (1553, '1586242712385100020', '小米（MI）小爱智能音箱Pro 无线蓝牙音响 语音控制智能家居 APP远程操控 专业DTS 音效 黑色', 'http://productdata.fhxasdsada.xyz/5JR1uDh09y-dhv8RSstl9g.jpg', 'Redmi 小爱音箱Play  Redmi 小爱音箱Play 绿色 ', '2', 265.09, '\r\n1.56kg', 0);
INSERT INTO `orders` VALUES (1554, '1586242712385100020', '小米（MI）小爱智能音箱Pro 无线蓝牙音响 语音控制智能家居 APP远程操控 专业DTS 音效 黑色', 'http://productdata.fhxasdsada.xyz/5JR1uDh09y-dhv8RSstl9g.jpg', 'Redmi 小爱音箱Play  小爱音箱万能遥控版  ', '3', 265.09, '\r\n1.56kg', 0);
INSERT INTO `orders` VALUES (1555, '1586242785604100021', '【专柜正品】Dior迪奥口红烈艳蓝金女士唇膏999口红套装送女友生日礼物 送老婆情人节礼物 【情人节星星限量版五只装套盒】', '\r\nhttp://productdata.fhxasdsada.xyz/5cd5acfbN24c0ee18.jpg', '080#滋润微笑红 ', '1', 1140, '0.4kg', 0);
INSERT INTO `orders` VALUES (1556, '1586242785604100021', '【专柜正品】Dior迪奥口红烈艳蓝金女士唇膏999口红套装送女友生日礼物 送老婆情人节礼物 【情人节星星限量版五只装套盒】', '\r\nhttp://productdata.fhxasdsada.xyz/5cd5acfbN24c0ee18.jpg', '080#滋润微笑红 ', '1', 1140, '0.4kg', 0);
INSERT INTO `orders` VALUES (1557, '1586242785604100021', '【专柜正品】Dior迪奥口红烈艳蓝金女士唇膏999口红套装送女友生日礼物 送老婆情人节礼物 【情人节星星限量版五只装套盒】', '\r\nhttp://productdata.fhxasdsada.xyz/5cd5acfbN24c0ee18.jpg', '888#哑光开运红 ', '3', 1140, '0.4kg', 0);
INSERT INTO `orders` VALUES (1558, '1586242785604100021', '【专柜正品】Dior迪奥口红烈艳蓝金女士唇膏999口红套装送女友生日礼物 送老婆情人节礼物 【情人节星星限量版五只装套盒】', '\r\nhttp://productdata.fhxasdsada.xyz/5cd5acfbN24c0ee18.jpg', '[限量版星星5支套装礼盒] ', '1', 1140, '0.4kg', 0);
INSERT INTO `orders` VALUES (1559, '1586242785604100021', '【专柜正品】Dior迪奥口红烈艳蓝金女士唇膏999口红套装送女友生日礼物 送老婆情人节礼物 【情人节星星限量版五只装套盒】', '\r\nhttp://productdata.fhxasdsada.xyz/5cd5acfbN24c0ee18.jpg', '[限量版星星5支套装礼盒] ', '1', 1140, '0.4kg', 0);
INSERT INTO `orders` VALUES (1560, '1586242785604100021', '【专柜正品】Dior迪奥口红烈艳蓝金女士唇膏999口红套装送女友生日礼物 送老婆情人节礼物 【情人节星星限量版五只装套盒】', '\r\nhttp://productdata.fhxasdsada.xyz/5cd5acfbN24c0ee18.jpg', '772#哑光豆沙红 ', '2', 1140, '0.4kg', 0);
INSERT INTO `orders` VALUES (1561, '1586242785604100021', '【专柜正品】Dior迪奥口红烈艳蓝金女士唇膏999口红套装送女友生日礼物 送老婆情人节礼物 【情人节星星限量版五只装套盒】', '\r\nhttp://productdata.fhxasdsada.xyz/5cd5acfbN24c0ee18.jpg', '[限量版挚爱红管烟花5支装套盒] ', '2', 1140, '0.4kg', 0);
INSERT INTO `orders` VALUES (1562, '1586242785604100021', '【专柜正品】Dior迪奥口红烈艳蓝金女士唇膏999口红套装送女友生日礼物 送老婆情人节礼物 【情人节星星限量版五只装套盒】', '\r\nhttp://productdata.fhxasdsada.xyz/5cd5acfbN24c0ee18.jpg', '[限量版挚爱红管烟花5支装套盒] ', '2', 1140, '0.4kg', 0);
INSERT INTO `orders` VALUES (1563, '1586242785604100021', '【专柜正品】Dior迪奥口红烈艳蓝金女士唇膏999口红套装送女友生日礼物 送老婆情人节礼物 【情人节星星限量版五只装套盒】', '\r\nhttp://productdata.fhxasdsada.xyz/5cd5acfbN24c0ee18.jpg', '挚爱红管999#传奇正红[赠专柜礼盒] ', '2', 1140, '0.4kg', 0);
INSERT INTO `orders` VALUES (1564, '1586242785604100021', '【专柜正品】Dior迪奥口红烈艳蓝金女士唇膏999口红套装送女友生日礼物 送老婆情人节礼物 【情人节星星限量版五只装套盒】', '\r\nhttp://productdata.fhxasdsada.xyz/5cd5acfbN24c0ee18.jpg', '999+ 520+花漾甜心100ML [口红香水套装] ', '1', 1140, '0.4kg', 0);
INSERT INTO `orders` VALUES (1565, '1586242785604100021', '【专柜正品】Dior迪奥口红烈艳蓝金女士唇膏999口红套装送女友生日礼物 送老婆情人节礼物 【情人节星星限量版五只装套盒】', '\r\nhttp://productdata.fhxasdsada.xyz/5cd5acfbN24c0ee18.jpg', '999+ 520+花漾甜心100ML [口红香水套装] ', '2', 1140, '0.4kg', 0);
INSERT INTO `orders` VALUES (1566, '1586242785604100021', '【专柜正品】Dior迪奥口红烈艳蓝金女士唇膏999口红套装送女友生日礼物 送老婆情人节礼物 【情人节星星限量版五只装套盒】', '\r\nhttp://productdata.fhxasdsada.xyz/5cd5acfbN24c0ee18.jpg', '028#滋润珊瑚红 ', '4', 1140, '0.4kg', 0);
INSERT INTO `orders` VALUES (1567, '1586242817938100022', '【假一赔十】beats solo3wireless 蓝牙耳机头戴式 米奇 游戏手机耳机 折叠式重低音 运动 玫瑰金', 'http://productdata.fhxasdsada.xyz/135638619666091357760161_x.jpg', '磨砂黑 ', '1', 773, NULL, 0);
INSERT INTO `orders` VALUES (1568, '1586242818433100023', '【假一赔十】beats solo3wireless 蓝牙耳机头戴式 米奇 游戏手机耳机 折叠式重低音 运动 玫瑰金', 'http://productdata.fhxasdsada.xyz/135638619666091357760161_x.jpg', '磨砂黑 ', '1', 773, NULL, 0);
INSERT INTO `orders` VALUES (1569, '1586242833922100024', '美国正品代购阿迪达斯adidas YEEZY BOOST 350 V2 侃爷冰蓝椰子鞋新款男跑步鞋', 'http://productdata.fhxasdsada.xyz/334355456168161240400082_x.jpg', 'BB1826灰橙色  标准46.5/US12  ', '1', 2920.01, '2.5kg', 0);
INSERT INTO `orders` VALUES (1570, '1586242849011100025', '\r\nCOACH PARKER 16 女士山茶花装饰可斜挎双肩包', '\r\nhttp://productdata.fhxasdsada.xyz/tuhaokuai_1583977278.jpg', '棕黄色锈色 均码 ', '1', 1299, NULL, 0);
INSERT INTO `orders` VALUES (1571, '1586242862396100026', 'Hot Toys 复仇者联盟3 无限战争 HOTTOYS 钢铁侠 模型玩具礼物 MK7 普通版\r\n\r\n', 'http://productdata.fhxasdsada.xyz/9bf639975363fbb0.jpg', '', '1', 3350, '5kg', 0);
INSERT INTO `orders` VALUES (1572, '1586242881229100027', '小米（MI）小爱智能音箱Pro 无线蓝牙音响 语音控制智能家居 APP远程操控 专业DTS 音效 黑色', 'http://productdata.fhxasdsada.xyz/5JR1uDh09y-dhv8RSstl9g.jpg', 'Redmi 小爱音箱Play  小爱音箱万能遥控版  ', '1', 265.09, '\r\n1.56kg', 0);
INSERT INTO `orders` VALUES (1573, '1586242911593100028', 'Apple iPad Pro 12.9英寸平板电脑 2018款(64G WLAN版/全面屏/A12X/FaceID MTEL2CH/A)深空灰\r\n', 'http://productdata.fhxasdsada.xyz/7a77ad4e3100e885.jpg', 'WLAN版64G ', '1', 7890, '2.8kg', 0);
INSERT INTO `orders` VALUES (1574, '1586242927495100029', '\r\nCOACH PARKER 16 女士山茶花装饰可斜挎双肩包', '\r\nhttp://productdata.fhxasdsada.xyz/tuhaokuai_1583977278.jpg', '棕黄色锈色 均码 ', '1', 1299, NULL, 0);
INSERT INTO `orders` VALUES (1575, '1586242942565100030', 'Apple iPad Pro 12.9英寸平板电脑 2018款(64G WLAN版/全面屏/A12X/FaceID MTEL2CH/A)深空灰\r\n', 'http://productdata.fhxasdsada.xyz/7a77ad4e3100e885.jpg', 'WLAN版64G ', '1', 7890, '2.8kg', 0);
INSERT INTO `orders` VALUES (1576, '1586242956836100031', ' 索尼（SONY）WF-1000XM3 真无线蓝牙降噪耳机 智能降噪 触控面板 苹果/安卓手机适用 黑色\r\n', 'http://productdata.fhxasdsada.xyz/2ca45e2fd9758794.jpg', '黑色 ', '1', 1499, '0.6kg', 0);
INSERT INTO `orders` VALUES (1577, '1586242990240100032', 'Hot Toys 复仇者联盟3 无限战争 HOTTOYS 钢铁侠 模型玩具礼物 MK7 普通版\r\n\r\n', 'http://productdata.fhxasdsada.xyz/9bf639975363fbb0.jpg', '', '1', 3350, '5kg', 0);
INSERT INTO `orders` VALUES (1578, '1586243015914100033', '\r\nCOACH PARKER 16 女士山茶花装饰可斜挎双肩包', '\r\nhttp://productdata.fhxasdsada.xyz/tuhaokuai_1583977278.jpg', '棕黄色锈色 均码 ', '1', 1299, NULL, 0);
INSERT INTO `orders` VALUES (1579, '1586243033913100034', 'Apple Watch Series 5智能手表（GPS款 40毫米深空灰色铝金属表壳 黑色运动型表带 MWV82CH/A)\r\n', 'http://productdata.fhxasdsada.xyz/44c3c5495c1b5145.jpg', '黑色 GPS版 40毫米 ', '1', 3199, '0.23kg', 0);
INSERT INTO `orders` VALUES (1580, '1586247745389100035', '三只松鼠芒果干 蜜饯果干芒果片休闲零食办公室小吃果脯水果干116g/袋', 'http://productdata.fhxasdsada.xyz/3531d2420f91d48177112641833bc7aa_2_3_photo.jpg', '奶茶味 ', '1', 20, '0.15kg', 0);
INSERT INTO `orders` VALUES (1581, '1586247786562100036', '【二手95新】劳力士 系列:迪通拿系列 型号:116505 材质:18k玫瑰金 镜面:蓝宝石玻璃 未使用', '\r\nhttp://productdata.fhxasdsada.xyz/2-SXJILMjHoQXj66aurkzg.jpg', '玫瑰金 ', '1', 260000, '220克', 0);
INSERT INTO `orders` VALUES (1582, '1586247835094100037', '三只松鼠芒果干 蜜饯果干芒果片休闲零食办公室小吃果脯水果干116g/袋', 'http://productdata.fhxasdsada.xyz/3531d2420f91d48177112641833bc7aa_2_3_photo.jpg', '香蕉味 ', '1', 20, '0.15kg', 0);
INSERT INTO `orders` VALUES (1583, '1586247859779100038', '三只松鼠芒果干 蜜饯果干芒果片休闲零食办公室小吃果脯水果干116g/袋', 'http://productdata.fhxasdsada.xyz/3531d2420f91d48177112641833bc7aa_2_3_photo.jpg', '奶茶味 ', '1', 20, '0.15kg', 0);
INSERT INTO `orders` VALUES (1584, '1586247919566100039', '三只松鼠芒果干 蜜饯果干芒果片休闲零食办公室小吃果脯水果干116g/袋', 'http://productdata.fhxasdsada.xyz/3531d2420f91d48177112641833bc7aa_2_3_photo.jpg', '奶茶味 ', '1', 20, '0.15kg', 0);
INSERT INTO `orders` VALUES (1585, '1586248026249100040', '万代（BANDAI） Megahouse POP 海贼王 路飞9人 模型玩具（无售后！！！） 四档路飞\r\n', '\r\nhttp://productdata.fhxasdsada.xyz/5b90958cN736d78c4.jpg', '', '1', 3500, '100kg', 0);
INSERT INTO `orders` VALUES (1586, '1586248059120100041', '华为 HUAWEI Mate 30 Pro 麒麟990旗舰芯片OLED环幕屏双4000万徕卡电影四摄手机', '\r\nhttp://productdata.fhxasdsada.xyz/971ec333c8ef1de2.jpg', '星河银 ', '1', 5399, '0.54kg', 0);
INSERT INTO `orders` VALUES (1587, '1586248122702100042', '华为 HUAWEI Mate 30 Pro 麒麟990旗舰芯片OLED环幕屏双4000万徕卡电影四摄手机', '\r\nhttp://productdata.fhxasdsada.xyz/971ec333c8ef1de2.jpg', '星河银 ', '1', 5399, '0.54kg', 0);
INSERT INTO `orders` VALUES (1588, '1586248190988100043', 'Apple iPhone 11 Pro Max (A2220) 64GB 金色 移动联通电信4G手机 双卡双待 ', '\r\nhttp://productdata.fhxasdsada.xyz/04e04ec4954e07bd.jpg', '银色 128G+2G ', '1', 10398, '0.56kg', 0);
INSERT INTO `orders` VALUES (1589, '1586250799087100044', '\r\nCOACH PARKER 16 女士山茶花装饰可斜挎双肩包', '\r\nhttp://productdata.fhxasdsada.xyz/tuhaokuai_1583977278.jpg', '棕黄色锈色 均码 ', '1', 1299, NULL, 0);
INSERT INTO `orders` VALUES (1590, '1586250918072100045', 'Apple iPad Pro 12.9英寸平板电脑 2018款(64G WLAN版/全面屏/A12X/FaceID MTEL2CH/A)深空灰\r\n', 'http://productdata.fhxasdsada.xyz/7a77ad4e3100e885.jpg', 'WLAN版64G ', '1', 7890, '2.8kg', 0);
INSERT INTO `orders` VALUES (1591, '1586250971675100046', 'HHKB Professional BT 蓝牙版黑无刻静电容键盘 程序员码农专用便携迷你键盘 编程适用', 'http://productdata.fhxasdsada.xyz/AD8JQ6Q0jfeySzdxAVglqw.jpg', '标准白有刻  ', '1', 2188, NULL, 0);
INSERT INTO `orders` VALUES (1592, '1586251146540100047', '三只松鼠芒果干 蜜饯果干芒果片休闲零食办公室小吃果脯水果干116g/袋', 'http://productdata.fhxasdsada.xyz/3531d2420f91d48177112641833bc7aa_2_3_photo.jpg', '奶茶味 ', '1', 20, '0.15kg', 0);
INSERT INTO `orders` VALUES (1593, '1586251393200100048', 'Hot Toys 复仇者联盟3 无限战争 HOTTOYS 钢铁侠 模型玩具礼物 MK7 普通版\r\n\r\n', 'http://productdata.fhxasdsada.xyz/9bf639975363fbb0.jpg', '', '1', 3350, '5kg', 0);
INSERT INTO `orders` VALUES (1594, '1586252395609100049', '华为 HUAWEI Mate 30 Pro 麒麟990旗舰芯片OLED环幕屏双4000万徕卡电影四摄手机', '\r\nhttp://productdata.fhxasdsada.xyz/971ec333c8ef1de2.jpg', '星河银 ', '1', 5399, '0.54kg', 0);
INSERT INTO `orders` VALUES (1595, '1586252630919100050', '阿玛尼（ Emporio Armani）满天星手表 女新款玫瑰金钢制表带镶钻石英轻奢女士腕表礼物 AR11244 ', '\r\nhttp://productdata.fhxasdsada.xyz/8c0b0a13e48adce3.jpg', '圣颜色 ', '1', 3596, '\r\n0.485kg', 0);
INSERT INTO `orders` VALUES (1596, '1586252980197100051', '三只松鼠芒果干 蜜饯果干芒果片休闲零食办公室小吃果脯水果干116g/袋', 'http://productdata.fhxasdsada.xyz/3531d2420f91d48177112641833bc7aa_2_3_photo.jpg', '奶茶味 ', '1', 20, '0.15kg', 0);
INSERT INTO `orders` VALUES (1597, '1586254017053100052', 'Hot Toys 复仇者联盟3 无限战争 HOTTOYS 钢铁侠 模型玩具礼物 MK7 普通版\r\n\r\n', 'http://productdata.fhxasdsada.xyz/9bf639975363fbb0.jpg', '', '1', 3350, '5kg', 0);
INSERT INTO `orders` VALUES (1598, '1586254132885100053', '三只松鼠芒果干 蜜饯果干芒果片休闲零食办公室小吃果脯水果干116g/袋', 'http://productdata.fhxasdsada.xyz/3531d2420f91d48177112641833bc7aa_2_3_photo.jpg', '香蕉味 ', '1', 20, '0.15kg', 0);
INSERT INTO `orders` VALUES (1599, '1586255036074100054', 'Hot Toys 复仇者联盟3 无限战争 HOTTOYS 钢铁侠 模型玩具礼物 MK7 普通版\r\n\r\n', 'http://productdata.fhxasdsada.xyz/9bf639975363fbb0.jpg', '', '1', 3350, '5kg', 0);
INSERT INTO `orders` VALUES (1600, '1586255412437100055', '三只松鼠芒果干 蜜饯果干芒果片休闲零食办公室小吃果脯水果干116g/袋', 'http://productdata.fhxasdsada.xyz/3531d2420f91d48177112641833bc7aa_2_3_photo.jpg', '奶茶味 ', '1', 20, '0.15kg', 0);
INSERT INTO `orders` VALUES (1601, '1586255796478100056', '三只松鼠芒果干 蜜饯果干芒果片休闲零食办公室小吃果脯水果干116g/袋', 'http://productdata.fhxasdsada.xyz/3531d2420f91d48177112641833bc7aa_2_3_photo.jpg', '奶茶味 ', '1', 20, '0.15kg', 0);
INSERT INTO `orders` VALUES (1602, '1586255939932100057', '骨伽（COUGAR） 电脑主机箱 台式机中塔式侧透征服者游戏定制水冷机箱 黑色\r\n', 'http://productdata.fhxasdsada.xyz/5b4d4cc8N0bf9c476.jpg', '黑色 ', '1', 2898, '2.8kg', 0);
INSERT INTO `orders` VALUES (1603, '1586256018429100058', '骨伽（COUGAR） 电脑主机箱 台式机中塔式侧透征服者游戏定制水冷机箱 黑色\r\n', 'http://productdata.fhxasdsada.xyz/5b4d4cc8N0bf9c476.jpg', '黑色 ', '1', 2898, '2.8kg', 0);
INSERT INTO `orders` VALUES (1604, '1586256142953100059', '三只松鼠芒果干 蜜饯果干芒果片休闲零食办公室小吃果脯水果干116g/袋', 'http://productdata.fhxasdsada.xyz/3531d2420f91d48177112641833bc7aa_2_3_photo.jpg', '奶茶味 ', '1', 20, '0.15kg', 0);
INSERT INTO `orders` VALUES (1605, '1586256369960100060', 'HHKB Professional BT 蓝牙版黑无刻静电容键盘 程序员码农专用便携迷你键盘 编程适用', 'http://productdata.fhxasdsada.xyz/AD8JQ6Q0jfeySzdxAVglqw.jpg', '标准白有刻  ', '1', 2188, NULL, 0);
INSERT INTO `orders` VALUES (1606, '1586256939671100061', '三只松鼠芒果干 蜜饯果干芒果片休闲零食办公室小吃果脯水果干116g/袋', 'http://productdata.fhxasdsada.xyz/3531d2420f91d48177112641833bc7aa_2_3_photo.jpg', '奶茶味 ', '1', 20, '0.15kg', 0);
INSERT INTO `orders` VALUES (1607, '1586259354495100062', '三只松鼠芒果干 蜜饯果干芒果片休闲零食办公室小吃果脯水果干116g/袋', 'http://productdata.fhxasdsada.xyz/3531d2420f91d48177112641833bc7aa_2_3_photo.jpg', '奶茶味 ', '1', 20, '0.15kg', 0);
INSERT INTO `orders` VALUES (1608, '1586259365788100063', 'Apple iPhone 11 Pro Max (A2220) 64GB 金色 移动联通电信4G手机 双卡双待 ', '\r\nhttp://productdata.fhxasdsada.xyz/04e04ec4954e07bd.jpg', '银色 128G+2G ', '1', 10398, '0.56kg', 0);
INSERT INTO `orders` VALUES (1609, '1586259481625100064', '阿玛尼（ Emporio Armani）满天星手表 女新款玫瑰金钢制表带镶钻石英轻奢女士腕表礼物 AR11244 ', '\r\nhttp://productdata.fhxasdsada.xyz/8c0b0a13e48adce3.jpg', '圣颜色 ', '1', 3596, '\r\n0.485kg', 0);
INSERT INTO `orders` VALUES (1610, '1586259951154100065', '三只松鼠芒果干 蜜饯果干芒果片休闲零食办公室小吃果脯水果干116g/袋', 'http://productdata.fhxasdsada.xyz/3531d2420f91d48177112641833bc7aa_2_3_photo.jpg', '奶茶味 ', '1', 20, '0.15kg', 0);
INSERT INTO `orders` VALUES (1611, '1586260308241100066', 'Apple iPad Pro 12.9英寸平板电脑 2018款(64G WLAN版/全面屏/A12X/FaceID MTEL2CH/A)深空灰\r\n', 'http://productdata.fhxasdsada.xyz/7a77ad4e3100e885.jpg', 'WLAN版64G ', '1', 7890, '2.8kg', 0);
INSERT INTO `orders` VALUES (1612, '1586260769216100067', 'Apple Watch Series 5智能手表（GPS款 40毫米深空灰色铝金属表壳 黑色运动型表带 MWV82CH/A)\r\n', 'http://productdata.fhxasdsada.xyz/44c3c5495c1b5145.jpg', '黑色 GPS版 40毫米 ', '1', 3199, '0.23kg', 0);
INSERT INTO `orders` VALUES (1613, '1586261244406100068', '三只松鼠芒果干 蜜饯果干芒果片休闲零食办公室小吃果脯水果干116g/袋', 'http://productdata.fhxasdsada.xyz/3531d2420f91d48177112641833bc7aa_2_3_photo.jpg', '奶茶味 ', '1', 20, '0.15kg', 0);
INSERT INTO `orders` VALUES (1614, '1586261391127100069', '华硕（ASUS）ROG Strix XG27VQ 27英寸144HZ 1800R Free-Sync旋转升降AURA-RGB电竞显示器（HDMI/DP/DVI）', 'http://productdata.fhxasdsada.xyz/0070137366-000000010059586574_3.jpg', '', '1', 5199, '16.84kg', 0);
INSERT INTO `orders` VALUES (1615, '1586261446251100070', '\r\nCOACH PARKER 16 女士山茶花装饰可斜挎双肩包', '\r\nhttp://productdata.fhxasdsada.xyz/tuhaokuai_1583977278.jpg', '黄褐色 均码 ', '1', 1299, NULL, 0);
INSERT INTO `orders` VALUES (1616, '1586261497633100071', '三只松鼠芒果干 蜜饯果干芒果片休闲零食办公室小吃果脯水果干116g/袋', 'http://productdata.fhxasdsada.xyz/3531d2420f91d48177112641833bc7aa_2_3_photo.jpg', '奶茶味 ', '1', 20, '0.15kg', 0);
INSERT INTO `orders` VALUES (1617, '1586262716564100072', '骨伽（COUGAR） 电脑主机箱 台式机中塔式侧透征服者游戏定制水冷机箱 黑色\r\n', 'http://productdata.fhxasdsada.xyz/5b4d4cc8N0bf9c476.jpg', '黑色 ', '1', 2898, '2.8kg', 0);
INSERT INTO `orders` VALUES (1618, '1586262874435100073', '新款Huawei/华为折叠手机mates xs 5g版大屏双屏全面屏双面屏官方旗舰店对折手机可折叠屏 Mate XS折叠\r\n', 'http://productdata.fhxasdsada.xyz/7a3a192a7fca3c35.png', '星际蓝 ', '1', 30576, '0.24kg', 0);
INSERT INTO `orders` VALUES (1619, '1586263101576100074', 'Apple iPhone 11 Pro Max (A2220) 64GB 金色 移动联通电信4G手机 双卡双待 ', '\r\nhttp://productdata.fhxasdsada.xyz/04e04ec4954e07bd.jpg', '银色 128G+2G ', '1', 10398, '0.56kg', 0);
INSERT INTO `orders` VALUES (1620, '1586263923536100075', '阿玛尼（ Emporio Armani）满天星手表 女新款玫瑰金钢制表带镶钻石英轻奢女士腕表礼物 AR11244 ', '\r\nhttp://productdata.fhxasdsada.xyz/8c0b0a13e48adce3.jpg', '圣颜色 ', '1', 3596, '\r\n0.485kg', 0);
INSERT INTO `orders` VALUES (1621, '1586263958916100076', '三只松鼠芒果干 蜜饯果干芒果片休闲零食办公室小吃果脯水果干116g/袋', 'http://productdata.fhxasdsada.xyz/3531d2420f91d48177112641833bc7aa_2_3_photo.jpg', '奶茶味 ', '1', 20, '0.15kg', 0);
INSERT INTO `orders` VALUES (1622, '1586264034043100077', '华为 HUAWEI Mate 30 Pro 麒麟990旗舰芯片OLED环幕屏双4000万徕卡电影四摄手机', '\r\nhttp://productdata.fhxasdsada.xyz/971ec333c8ef1de2.jpg', '星河银 ', '1', 5399, '0.54kg', 0);
INSERT INTO `orders` VALUES (1623, '1586309784640100001', 'Apple iPad Pro 12.9英寸平板电脑 2018款(64G WLAN版/全面屏/A12X/FaceID MTEL2CH/A)深空灰\r\n', 'http://productdata.fhxasdsada.xyz/7a77ad4e3100e885.jpg', 'WLAN版64G ', '1', 7890, '2.8kg', 0);
INSERT INTO `orders` VALUES (1624, '1586310585325100002', '\r\nCOACH PARKER 16 女士山茶花装饰可斜挎双肩包', '\r\nhttp://productdata.fhxasdsada.xyz/tuhaokuai_1583977278.jpg', '棕黄色锈色 均码 ', '1', 1299, NULL, 0);
INSERT INTO `orders` VALUES (1625, '1586310643530100003', '【专柜正品】Dior迪奥口红烈艳蓝金女士唇膏999口红套装送女友生日礼物 送老婆情人节礼物 【情人节星星限量版五只装套盒】', '\r\nhttp://productdata.fhxasdsada.xyz/5cd5acfbN24c0ee18.jpg', '028#滋润珊瑚红 ', '1', 1140, '0.4kg', 0);
INSERT INTO `orders` VALUES (1626, '1586310968950100004', '三只松鼠芒果干 蜜饯果干芒果片休闲零食办公室小吃果脯水果干116g/袋', 'http://productdata.fhxasdsada.xyz/3531d2420f91d48177112641833bc7aa_2_3_photo.jpg', '香蕉味 ', '1', 20, '0.15kg', 0);
INSERT INTO `orders` VALUES (1627, '1586311132950100005', '骨伽（COUGAR） 电脑主机箱 台式机中塔式侧透征服者游戏定制水冷机箱 黑色\r\n', 'http://productdata.fhxasdsada.xyz/5b4d4cc8N0bf9c476.jpg', '黑色 ', '1', 2898, '2.8kg', 0);
INSERT INTO `orders` VALUES (1628, '1586311181878100006', 'Classic | 40mm Canterbury', '\r\nhttp://productdata.fhxasdsada.xyz/adadas3e.jpg', '多彩尼龙白盘 ', '1', 1289, NULL, 0);
INSERT INTO `orders` VALUES (1629, '1586311337409100007', '三只松鼠芒果干 蜜饯果干芒果片休闲零食办公室小吃果脯水果干116g/袋', 'http://productdata.fhxasdsada.xyz/3531d2420f91d48177112641833bc7aa_2_3_photo.jpg', '奶茶味 ', '1', 20, '0.15kg', 0);
INSERT INTO `orders` VALUES (1630, '1586311853807100008', '三只松鼠芒果干 蜜饯果干芒果片休闲零食办公室小吃果脯水果干116g/袋', 'http://productdata.fhxasdsada.xyz/3531d2420f91d48177112641833bc7aa_2_3_photo.jpg', '奶茶味 ', '1', 20, '0.15kg', 0);
INSERT INTO `orders` VALUES (1631, '1586312338768100009', '三只松鼠芒果干 蜜饯果干芒果片休闲零食办公室小吃果脯水果干116g/袋', 'http://productdata.fhxasdsada.xyz/3531d2420f91d48177112641833bc7aa_2_3_photo.jpg', '奶茶味 ', '1', 20, '0.15kg', 0);
INSERT INTO `orders` VALUES (1632, '1586312622584100010', '三只松鼠芒果干 蜜饯果干芒果片休闲零食办公室小吃果脯水果干116g/袋', 'http://productdata.fhxasdsada.xyz/3531d2420f91d48177112641833bc7aa_2_3_photo.jpg', '奶茶味 ', '1', 20, '0.15kg', 0);
INSERT INTO `orders` VALUES (1633, '1586312817978100011', '骨伽（COUGAR） 电脑主机箱 台式机中塔式侧透征服者游戏定制水冷机箱 黑色\r\n', 'http://productdata.fhxasdsada.xyz/5b4d4cc8N0bf9c476.jpg', '黑色 ', '1', 2898, '2.8kg', 0);
INSERT INTO `orders` VALUES (1634, '1586314253265100012', '阿玛尼（ Emporio Armani）满天星手表 女新款玫瑰金钢制表带镶钻石英轻奢女士腕表礼物 AR11244 ', '\r\nhttp://productdata.fhxasdsada.xyz/8c0b0a13e48adce3.jpg', '圣颜色 ', '1', 3596, '\r\n0.485kg', 0);
INSERT INTO `orders` VALUES (1635, '1586314313589100013', ' 索尼（SONY）WF-1000XM3 真无线蓝牙降噪耳机 智能降噪 触控面板 苹果/安卓手机适用 黑色\r\n', 'http://productdata.fhxasdsada.xyz/2ca45e2fd9758794.jpg', '黑色 ', '1', 1499, '0.6kg', 0);
INSERT INTO `orders` VALUES (1636, '1586314350884100014', '新款Huawei/华为折叠手机mates xs 5g版大屏双屏全面屏双面屏官方旗舰店对折手机可折叠屏 Mate XS折叠\r\n', 'http://productdata.fhxasdsada.xyz/7a3a192a7fca3c35.png', '星际蓝 ', '1', 30576, '0.24kg', 0);
INSERT INTO `orders` VALUES (1637, '1586314367766100015', 'HHKB Professional BT 蓝牙版黑无刻静电容键盘 程序员码农专用便携迷你键盘 编程适用', 'http://productdata.fhxasdsada.xyz/AD8JQ6Q0jfeySzdxAVglqw.jpg', '标准黑有刻  ', '1', 2188, NULL, 0);
INSERT INTO `orders` VALUES (1638, '1586314367766100015', 'HHKB Professional BT 蓝牙版黑无刻静电容键盘 程序员码农专用便携迷你键盘 编程适用', 'http://productdata.fhxasdsada.xyz/AD8JQ6Q0jfeySzdxAVglqw.jpg', '标准白无刻 ', '1', 2188, NULL, 0);
INSERT INTO `orders` VALUES (1639, '1586314367766100015', 'HHKB Professional BT 蓝牙版黑无刻静电容键盘 程序员码农专用便携迷你键盘 编程适用', 'http://productdata.fhxasdsada.xyz/AD8JQ6Q0jfeySzdxAVglqw.jpg', '标准白有刻  ', '1', 2188, NULL, 0);
INSERT INTO `orders` VALUES (1640, '1586315362708100016', '三只松鼠芒果干 蜜饯果干芒果片休闲零食办公室小吃果脯水果干116g/袋', 'http://productdata.fhxasdsada.xyz/3531d2420f91d48177112641833bc7aa_2_3_photo.jpg', '奶茶味 ', '1', 20, '0.15kg', 0);
INSERT INTO `orders` VALUES (1641, '1586325905224100017', '三只松鼠芒果干 蜜饯果干芒果片休闲零食办公室小吃果脯水果干116g/袋', 'http://productdata.fhxasdsada.xyz/3531d2420f91d48177112641833bc7aa_2_3_photo.jpg', '奶茶味 ', '1', 20, '0.15kg', 0);
INSERT INTO `orders` VALUES (1642, '1586326092047100018', 'Hot Toys 复仇者联盟3 无限战争 HOTTOYS 钢铁侠 模型玩具礼物 MK7 普通版\r\n\r\n', 'http://productdata.fhxasdsada.xyz/9bf639975363fbb0.jpg', '', '1', 3350, '5kg', 0);
INSERT INTO `orders` VALUES (1643, '1586326190022100019', '【专柜正品】Dior迪奥口红烈艳蓝金女士唇膏999口红套装送女友生日礼物 送老婆情人节礼物 【情人节星星限量版五只装套盒】', '\r\nhttp://productdata.fhxasdsada.xyz/5cd5acfbN24c0ee18.jpg', '028#滋润珊瑚红 ', '1', 1140, '0.4kg', 0);
INSERT INTO `orders` VALUES (1644, '1586326397173100020', '\r\nCOACH PARKER 16 女士山茶花装饰可斜挎双肩包', '\r\nhttp://productdata.fhxasdsada.xyz/tuhaokuai_1583977278.jpg', '棕黄色锈色 均码 ', '1', 1299, NULL, 0);
INSERT INTO `orders` VALUES (1645, '1586326717239100021', '骨伽（COUGAR） 电脑主机箱 台式机中塔式侧透征服者游戏定制水冷机箱 黑色\r\n', 'http://productdata.fhxasdsada.xyz/5b4d4cc8N0bf9c476.jpg', '黑色 ', '1', 2898, '2.8kg', 0);
INSERT INTO `orders` VALUES (1646, '1586327109695100022', '三只松鼠芒果干 蜜饯果干芒果片休闲零食办公室小吃果脯水果干116g/袋', 'http://productdata.fhxasdsada.xyz/3531d2420f91d48177112641833bc7aa_2_3_photo.jpg', '奶茶味 ', '1', 20, '0.15kg', 0);
INSERT INTO `orders` VALUES (1647, '1586327109927100022', '三只松鼠芒果干 蜜饯果干芒果片休闲零食办公室小吃果脯水果干116g/袋', 'http://productdata.fhxasdsada.xyz/3531d2420f91d48177112641833bc7aa_2_3_photo.jpg', '奶茶味 ', '1', 20, '0.15kg', 0);
INSERT INTO `orders` VALUES (1648, '1586327483882100023', 'Hot Toys 复仇者联盟3 无限战争 HOTTOYS 钢铁侠 模型玩具礼物 MK7 普通版\r\n\r\n', 'http://productdata.fhxasdsada.xyz/9bf639975363fbb0.jpg', '', '1', 3350, '5kg', 0);
INSERT INTO `orders` VALUES (1649, '1586328116902100024', 'Apple iPad Pro 12.9英寸平板电脑 2018款(64G WLAN版/全面屏/A12X/FaceID MTEL2CH/A)深空灰\r\n', 'http://productdata.fhxasdsada.xyz/7a77ad4e3100e885.jpg', 'WLAN版64G ', '1', 7890, '2.8kg', 0);
INSERT INTO `orders` VALUES (1650, '1586328249149100025', '【假一赔十】beats solo3wireless 蓝牙耳机头戴式 米奇 游戏手机耳机 折叠式重低音 运动 玫瑰金', 'http://productdata.fhxasdsada.xyz/135638619666091357760161_x.jpg', '磨砂黑 ', '1', 773, NULL, 0);
INSERT INTO `orders` VALUES (1651, '1586328739243100026', 'Apple iPad Pro 12.9英寸平板电脑 2018款(64G WLAN版/全面屏/A12X/FaceID MTEL2CH/A)深空灰\r\n', 'http://productdata.fhxasdsada.xyz/7a77ad4e3100e885.jpg', 'WLAN版64G ', '1', 7890, '2.8kg', 0);
INSERT INTO `orders` VALUES (1652, '1586328858883100027', '【二手95新】劳力士 系列:迪通拿系列 型号:116505 材质:18k玫瑰金 镜面:蓝宝石玻璃 未使用', '\r\nhttp://productdata.fhxasdsada.xyz/2-SXJILMjHoQXj66aurkzg.jpg', '玫瑰金 ', '1', 260000, '220克', 0);
INSERT INTO `orders` VALUES (1653, '1586329006944100028', '三只松鼠芒果干 蜜饯果干芒果片休闲零食办公室小吃果脯水果干116g/袋', 'http://productdata.fhxasdsada.xyz/3531d2420f91d48177112641833bc7aa_2_3_photo.jpg', '奶茶味 ', '1', 20, '0.15kg', 0);
INSERT INTO `orders` VALUES (1654, '1586329384401100029', '【专柜正品】Dior迪奥口红烈艳蓝金女士唇膏999口红套装送女友生日礼物 送老婆情人节礼物 【情人节星星限量版五只装套盒】', '\r\nhttp://productdata.fhxasdsada.xyz/5cd5acfbN24c0ee18.jpg', '028#滋润珊瑚红 ', '1', 1140, '0.4kg', 0);
INSERT INTO `orders` VALUES (1655, '1586329935910100030', 'Apple iPad Pro 12.9英寸平板电脑 2018款(64G WLAN版/全面屏/A12X/FaceID MTEL2CH/A)深空灰\r\n', 'http://productdata.fhxasdsada.xyz/7a77ad4e3100e885.jpg', 'WLAN版64G ', '1', 7890, '2.8kg', 0);
INSERT INTO `orders` VALUES (1656, '1586330046300100031', '三只松鼠芒果干 蜜饯果干芒果片休闲零食办公室小吃果脯水果干116g/袋', 'http://productdata.fhxasdsada.xyz/3531d2420f91d48177112641833bc7aa_2_3_photo.jpg', '奶茶味 ', '1', 20, '0.15kg', 0);
INSERT INTO `orders` VALUES (1657, '1586330187986100032', 'Apple iPhone 11 Pro Max (A2220) 64GB 金色 移动联通电信4G手机 双卡双待 ', '\r\nhttp://productdata.fhxasdsada.xyz/04e04ec4954e07bd.jpg', '银色 128G+2G ', '1', 10398, '0.56kg', 0);
INSERT INTO `orders` VALUES (1658, '1586330322781100033', '阿玛尼（ Emporio Armani）满天星手表 女新款玫瑰金钢制表带镶钻石英轻奢女士腕表礼物 AR11244 ', '\r\nhttp://productdata.fhxasdsada.xyz/8c0b0a13e48adce3.jpg', '圣颜色 ', '1', 3596, '\r\n0.485kg', 0);
INSERT INTO `orders` VALUES (1659, '1586330418325100034', '阿玛尼（ Emporio Armani）满天星手表 女新款玫瑰金钢制表带镶钻石英轻奢女士腕表礼物 AR11244 ', '\r\nhttp://productdata.fhxasdsada.xyz/8c0b0a13e48adce3.jpg', '圣颜色 ', '1', 3596, '\r\n0.485kg', 0);
INSERT INTO `orders` VALUES (1660, '1586330485339100035', '三只松鼠芒果干 蜜饯果干芒果片休闲零食办公室小吃果脯水果干116g/袋', 'http://productdata.fhxasdsada.xyz/3531d2420f91d48177112641833bc7aa_2_3_photo.jpg', '奶茶味 ', '1', 20, '0.15kg', 0);
INSERT INTO `orders` VALUES (1661, '1586330774697100036', '三只松鼠芒果干 蜜饯果干芒果片休闲零食办公室小吃果脯水果干116g/袋', 'http://productdata.fhxasdsada.xyz/3531d2420f91d48177112641833bc7aa_2_3_photo.jpg', '奶茶味 ', '1', 20, '0.15kg', 0);
INSERT INTO `orders` VALUES (1662, '1586330857867100037', '华为 HUAWEI Mate 30 Pro 麒麟990旗舰芯片OLED环幕屏双4000万徕卡电影四摄手机', '\r\nhttp://productdata.fhxasdsada.xyz/971ec333c8ef1de2.jpg', '星河银 ', '1', 5399, '0.54kg', 0);
INSERT INTO `orders` VALUES (1663, '1586330898117100038', '小米（MI）小爱智能音箱Pro 无线蓝牙音响 语音控制智能家居 APP远程操控 专业DTS 音效 黑色', 'http://productdata.fhxasdsada.xyz/5JR1uDh09y-dhv8RSstl9g.jpg', 'Redmi 小爱音箱Play   Redmi 小爱音箱Play 蓝色 ', '1', 265.09, '\r\n1.56kg', 0);
INSERT INTO `orders` VALUES (1664, '1586330898117100038', '小米（MI）小爱智能音箱Pro 无线蓝牙音响 语音控制智能家居 APP远程操控 专业DTS 音效 黑色', 'http://productdata.fhxasdsada.xyz/5JR1uDh09y-dhv8RSstl9g.jpg', 'Redmi 小爱音箱Play   Redmi 小爱音箱Play 蓝色 ', '1', 265.09, '\r\n1.56kg', 0);
INSERT INTO `orders` VALUES (1665, '1586330898117100038', '小米（MI）小爱智能音箱Pro 无线蓝牙音响 语音控制智能家居 APP远程操控 专业DTS 音效 黑色', 'http://productdata.fhxasdsada.xyz/5JR1uDh09y-dhv8RSstl9g.jpg', 'Redmi 小爱音箱Play  Redmi 小爱音箱Play 绿色 ', '1', 265.09, '\r\n1.56kg', 0);
INSERT INTO `orders` VALUES (1666, '1586330898117100038', '小米（MI）小爱智能音箱Pro 无线蓝牙音响 语音控制智能家居 APP远程操控 专业DTS 音效 黑色', 'http://productdata.fhxasdsada.xyz/5JR1uDh09y-dhv8RSstl9g.jpg', 'Redmi 小爱音箱Play  Redmi 小爱音箱Play 绿色 ', '1', 265.09, '\r\n1.56kg', 0);
INSERT INTO `orders` VALUES (1667, '1586330898117100038', '小米（MI）小爱智能音箱Pro 无线蓝牙音响 语音控制智能家居 APP远程操控 专业DTS 音效 黑色', 'http://productdata.fhxasdsada.xyz/5JR1uDh09y-dhv8RSstl9g.jpg', 'Redmi 小爱音箱Play  小米小爱音箱【HD版 深灰色】 ', '1', 265.09, '\r\n1.56kg', 0);
INSERT INTO `orders` VALUES (1668, '1586330898117100038', '小米（MI）小爱智能音箱Pro 无线蓝牙音响 语音控制智能家居 APP远程操控 专业DTS 音效 黑色', 'http://productdata.fhxasdsada.xyz/5JR1uDh09y-dhv8RSstl9g.jpg', 'Redmi 小爱音箱Play  小米小爱音箱【HD版 深灰色】 ', '1', 265.09, '\r\n1.56kg', 0);
INSERT INTO `orders` VALUES (1669, '1586331023560100039', 'Hot Toys 复仇者联盟3 无限战争 HOTTOYS 钢铁侠 模型玩具礼物 MK7 普通版\r\n\r\n', 'http://productdata.fhxasdsada.xyz/9bf639975363fbb0.jpg', '', '1', 3350, '5kg', 0);
INSERT INTO `orders` VALUES (1670, '1586331051802100040', 'HHKB Professional BT 蓝牙版黑无刻静电容键盘 程序员码农专用便携迷你键盘 编程适用', 'http://productdata.fhxasdsada.xyz/AD8JQ6Q0jfeySzdxAVglqw.jpg', '蓝牙白无刻  ', '2', 2188, NULL, 0);
INSERT INTO `orders` VALUES (1671, '1586331051802100040', 'HHKB Professional BT 蓝牙版黑无刻静电容键盘 程序员码农专用便携迷你键盘 编程适用', 'http://productdata.fhxasdsada.xyz/AD8JQ6Q0jfeySzdxAVglqw.jpg', '静音白无刻 ', '1', 2188, NULL, 0);
INSERT INTO `orders` VALUES (1672, '1586331051802100040', 'HHKB Professional BT 蓝牙版黑无刻静电容键盘 程序员码农专用便携迷你键盘 编程适用', 'http://productdata.fhxasdsada.xyz/AD8JQ6Q0jfeySzdxAVglqw.jpg', '静音白无刻 ', '1', 2188, NULL, 0);
INSERT INTO `orders` VALUES (1673, '1586331051802100040', 'HHKB Professional BT 蓝牙版黑无刻静电容键盘 程序员码农专用便携迷你键盘 编程适用', 'http://productdata.fhxasdsada.xyz/AD8JQ6Q0jfeySzdxAVglqw.jpg', '蓝牙黑无刻 ', '2', 2188, NULL, 0);
INSERT INTO `orders` VALUES (1674, '1586331051802100040', 'HHKB Professional BT 蓝牙版黑无刻静电容键盘 程序员码农专用便携迷你键盘 编程适用', 'http://productdata.fhxasdsada.xyz/AD8JQ6Q0jfeySzdxAVglqw.jpg', '蓝牙黑无刻 ', '1', 2188, NULL, 0);
INSERT INTO `orders` VALUES (1675, '1586331051802100040', 'HHKB Professional BT 蓝牙版黑无刻静电容键盘 程序员码农专用便携迷你键盘 编程适用', 'http://productdata.fhxasdsada.xyz/AD8JQ6Q0jfeySzdxAVglqw.jpg', '标准白有刻  ', '3', 2188, NULL, 0);
INSERT INTO `orders` VALUES (1676, '1586331235483100041', '三只松鼠芒果干 蜜饯果干芒果片休闲零食办公室小吃果脯水果干116g/袋', 'http://productdata.fhxasdsada.xyz/3531d2420f91d48177112641833bc7aa_2_3_photo.jpg', '奶茶味 ', '1', 20, '0.15kg', 0);
INSERT INTO `orders` VALUES (1677, '1586331315312100042', '万代（BANDAI） Megahouse POP 海贼王 路飞9人 模型玩具（无售后！！！） 四档路飞\r\n', '\r\nhttp://productdata.fhxasdsada.xyz/5b90958cN736d78c4.jpg', '', '1', 3500, '100kg', 0);
INSERT INTO `orders` VALUES (1678, '1586331346315100043', '阿玛尼（ Emporio Armani）满天星手表 女新款玫瑰金钢制表带镶钻石英轻奢女士腕表礼物 AR11244 ', '\r\nhttp://productdata.fhxasdsada.xyz/8c0b0a13e48adce3.jpg', '圣颜色 ', '1', 3596, '\r\n0.485kg', 0);
INSERT INTO `orders` VALUES (1679, '1586331446671100044', '阿玛尼（ Emporio Armani）满天星手表 女新款玫瑰金钢制表带镶钻石英轻奢女士腕表礼物 AR11244 ', '\r\nhttp://productdata.fhxasdsada.xyz/8c0b0a13e48adce3.jpg', '圣颜色 ', '1', 3596, '\r\n0.485kg', 0);
INSERT INTO `orders` VALUES (1680, '1586331525220100045', 'Apple iPhone 11 Pro Max (A2220) 64GB 金色 移动联通电信4G手机 双卡双待 ', '\r\nhttp://productdata.fhxasdsada.xyz/04e04ec4954e07bd.jpg', '银色 128G+2G ', '1', 10398, '0.56kg', 0);
INSERT INTO `orders` VALUES (1681, '1586331602215100046', '骨伽（COUGAR） 电脑主机箱 台式机中塔式侧透征服者游戏定制水冷机箱 黑色\r\n', 'http://productdata.fhxasdsada.xyz/5b4d4cc8N0bf9c476.jpg', '黑色 ', '1', 2898, '2.8kg', 0);
INSERT INTO `orders` VALUES (1682, '1586331768296100047', '华为 HUAWEI Mate 30 Pro 麒麟990旗舰芯片OLED环幕屏双4000万徕卡电影四摄手机', '\r\nhttp://productdata.fhxasdsada.xyz/971ec333c8ef1de2.jpg', '星河银 ', '1', 5399, '0.54kg', 0);
INSERT INTO `orders` VALUES (1683, '1586331986991100048', '三只松鼠芒果干 蜜饯果干芒果片休闲零食办公室小吃果脯水果干116g/袋', 'http://productdata.fhxasdsada.xyz/3531d2420f91d48177112641833bc7aa_2_3_photo.jpg', '奶茶味 ', '1', 20, '0.15kg', 0);
INSERT INTO `orders` VALUES (1684, '1586332437571100049', '三只松鼠芒果干 蜜饯果干芒果片休闲零食办公室小吃果脯水果干116g/袋', 'http://productdata.fhxasdsada.xyz/3531d2420f91d48177112641833bc7aa_2_3_photo.jpg', '奶茶味 ', '1', 20, '0.15kg', 0);
INSERT INTO `orders` VALUES (1685, '1586332626695100050', '骨伽（COUGAR） 电脑主机箱 台式机中塔式侧透征服者游戏定制水冷机箱 黑色\r\n', 'http://productdata.fhxasdsada.xyz/5b4d4cc8N0bf9c476.jpg', '黑色 ', '1', 2898, '2.8kg', 0);
INSERT INTO `orders` VALUES (1686, '1586332960262100051', '【专柜正品】Dior迪奥口红烈艳蓝金女士唇膏999口红套装送女友生日礼物 送老婆情人节礼物 【情人节星星限量版五只装套盒】', '\r\nhttp://productdata.fhxasdsada.xyz/5cd5acfbN24c0ee18.jpg', '[红弯心动6支套装] [赠视频玫瑰礼盒 ] ', '2', 1140, '0.4kg', 0);
INSERT INTO `orders` VALUES (1687, '1586332960262100051', '【专柜正品】Dior迪奥口红烈艳蓝金女士唇膏999口红套装送女友生日礼物 送老婆情人节礼物 【情人节星星限量版五只装套盒】', '\r\nhttp://productdata.fhxasdsada.xyz/5cd5acfbN24c0ee18.jpg', '[限量版挚爱红管烟花5支装套盒] ', '1', 1140, '0.4kg', 0);
INSERT INTO `orders` VALUES (1688, '1586332960262100051', '【专柜正品】Dior迪奥口红烈艳蓝金女士唇膏999口红套装送女友生日礼物 送老婆情人节礼物 【情人节星星限量版五只装套盒】', '\r\nhttp://productdata.fhxasdsada.xyz/5cd5acfbN24c0ee18.jpg', '[限量版挚爱红管烟花5支装套盒] ', '1', 1140, '0.4kg', 0);
INSERT INTO `orders` VALUES (1689, '1586332960262100051', '【专柜正品】Dior迪奥口红烈艳蓝金女士唇膏999口红套装送女友生日礼物 送老婆情人节礼物 【情人节星星限量版五只装套盒】', '\r\nhttp://productdata.fhxasdsada.xyz/5cd5acfbN24c0ee18.jpg', '999+ 520+花漾甜心100ML [口红香水套装] ', '2', 1140, '0.4kg', 0);
INSERT INTO `orders` VALUES (1690, '1586332960262100051', '【专柜正品】Dior迪奥口红烈艳蓝金女士唇膏999口红套装送女友生日礼物 送老婆情人节礼物 【情人节星星限量版五只装套盒】', '\r\nhttp://productdata.fhxasdsada.xyz/5cd5acfbN24c0ee18.jpg', '028#滋润珊瑚红 ', '4', 1140, '0.4kg', 0);
INSERT INTO `orders` VALUES (1691, '1586333067632100052', '三只松鼠芒果干 蜜饯果干芒果片休闲零食办公室小吃果脯水果干116g/袋', 'http://productdata.fhxasdsada.xyz/3531d2420f91d48177112641833bc7aa_2_3_photo.jpg', '奶茶味 ', '4', 20, '0.15kg', 0);
INSERT INTO `orders` VALUES (1692, '1586333160811100053', '三只松鼠芒果干 蜜饯果干芒果片休闲零食办公室小吃果脯水果干116g/袋', 'http://productdata.fhxasdsada.xyz/3531d2420f91d48177112641833bc7aa_2_3_photo.jpg', '奶油味 ', '1', 20, '0.15kg', 0);
INSERT INTO `orders` VALUES (1693, '1586333160811100053', '三只松鼠芒果干 蜜饯果干芒果片休闲零食办公室小吃果脯水果干116g/袋', 'http://productdata.fhxasdsada.xyz/3531d2420f91d48177112641833bc7aa_2_3_photo.jpg', '奶油味 ', '1', 20, '0.15kg', 0);
INSERT INTO `orders` VALUES (1694, '1586333160811100053', '三只松鼠芒果干 蜜饯果干芒果片休闲零食办公室小吃果脯水果干116g/袋', 'http://productdata.fhxasdsada.xyz/3531d2420f91d48177112641833bc7aa_2_3_photo.jpg', '香蕉味 ', '1', 20, '0.15kg', 0);
INSERT INTO `orders` VALUES (1695, '1586333160811100053', '三只松鼠芒果干 蜜饯果干芒果片休闲零食办公室小吃果脯水果干116g/袋', 'http://productdata.fhxasdsada.xyz/3531d2420f91d48177112641833bc7aa_2_3_photo.jpg', '香蕉味 ', '1', 20, '0.15kg', 0);
INSERT INTO `orders` VALUES (1696, '1586333160811100053', '三只松鼠芒果干 蜜饯果干芒果片休闲零食办公室小吃果脯水果干116g/袋', 'http://productdata.fhxasdsada.xyz/3531d2420f91d48177112641833bc7aa_2_3_photo.jpg', '苹果味 ', '2', 20, '0.15kg', 0);
INSERT INTO `orders` VALUES (1697, '1586333201012100054', 'Apple iPhone 11 Pro Max (A2220) 64GB 金色 移动联通电信4G手机 双卡双待 ', '\r\nhttp://productdata.fhxasdsada.xyz/04e04ec4954e07bd.jpg', '暗夜绿色 128G+2G ', '1', 10398, '0.56kg', 0);
INSERT INTO `orders` VALUES (1698, '1586333201012100054', 'Apple iPhone 11 Pro Max (A2220) 64GB 金色 移动联通电信4G手机 双卡双待 ', '\r\nhttp://productdata.fhxasdsada.xyz/04e04ec4954e07bd.jpg', '暗夜绿色 128G+2G ', '1', 10398, '0.56kg', 0);
INSERT INTO `orders` VALUES (1699, '1586333201012100054', 'Apple iPhone 11 Pro Max (A2220) 64GB 金色 移动联通电信4G手机 双卡双待 ', '\r\nhttp://productdata.fhxasdsada.xyz/04e04ec4954e07bd.jpg', '深空灰色 128G+2G ', '1', 10398, '0.56kg', 0);
INSERT INTO `orders` VALUES (1700, '1586333201012100054', 'Apple iPhone 11 Pro Max (A2220) 64GB 金色 移动联通电信4G手机 双卡双待 ', '\r\nhttp://productdata.fhxasdsada.xyz/04e04ec4954e07bd.jpg', '深空灰色 128G+2G ', '1', 10398, '0.56kg', 0);
INSERT INTO `orders` VALUES (1701, '1586333201012100054', 'Apple iPhone 11 Pro Max (A2220) 64GB 金色 移动联通电信4G手机 双卡双待 ', '\r\nhttp://productdata.fhxasdsada.xyz/04e04ec4954e07bd.jpg', '银色 128G+2G ', '1', 10398, '0.56kg', 0);
INSERT INTO `orders` VALUES (1702, '1586333201012100054', 'Apple iPhone 11 Pro Max (A2220) 64GB 金色 移动联通电信4G手机 双卡双待 ', '\r\nhttp://productdata.fhxasdsada.xyz/04e04ec4954e07bd.jpg', '银色 128G+2G ', '1', 10398, '0.56kg', 0);
INSERT INTO `orders` VALUES (1703, '1586333275753100055', '三只松鼠芒果干 蜜饯果干芒果片休闲零食办公室小吃果脯水果干116g/袋', 'http://productdata.fhxasdsada.xyz/3531d2420f91d48177112641833bc7aa_2_3_photo.jpg', '奶茶味 ', '1', 20, '0.15kg', 0);
INSERT INTO `orders` VALUES (1704, '1586333333650100056', '【假一赔十】beats solo3wireless 蓝牙耳机头戴式 米奇 游戏手机耳机 折叠式重低音 运动 玫瑰金', 'http://productdata.fhxasdsada.xyz/135638619666091357760161_x.jpg', ' POP赘蓝色 ', '1', 773, NULL, 0);
INSERT INTO `orders` VALUES (1705, '1586333333650100056', '【假一赔十】beats solo3wireless 蓝牙耳机头戴式 米奇 游戏手机耳机 折叠式重低音 运动 玫瑰金', 'http://productdata.fhxasdsada.xyz/135638619666091357760161_x.jpg', ' POP赘蓝色 ', '1', 773, NULL, 0);
INSERT INTO `orders` VALUES (1706, '1586333333650100056', '【假一赔十】beats solo3wireless 蓝牙耳机头戴式 米奇 游戏手机耳机 折叠式重低音 运动 玫瑰金', 'http://productdata.fhxasdsada.xyz/135638619666091357760161_x.jpg', '丝锻银  ', '1', 773, NULL, 0);
INSERT INTO `orders` VALUES (1707, '1586333333650100056', '【假一赔十】beats solo3wireless 蓝牙耳机头戴式 米奇 游戏手机耳机 折叠式重低音 运动 玫瑰金', 'http://productdata.fhxasdsada.xyz/135638619666091357760161_x.jpg', '丝锻银  ', '1', 773, NULL, 0);
INSERT INTO `orders` VALUES (1708, '1586333333650100056', '【假一赔十】beats solo3wireless 蓝牙耳机头戴式 米奇 游戏手机耳机 折叠式重低音 运动 玫瑰金', 'http://productdata.fhxasdsada.xyz/135638619666091357760161_x.jpg', ' 丝锻金 ', '1', 773, NULL, 0);
INSERT INTO `orders` VALUES (1709, '1586333333650100056', '【假一赔十】beats solo3wireless 蓝牙耳机头戴式 米奇 游戏手机耳机 折叠式重低音 运动 玫瑰金', 'http://productdata.fhxasdsada.xyz/135638619666091357760161_x.jpg', ' 丝锻金 ', '1', 773, NULL, 0);
INSERT INTO `orders` VALUES (1710, '1586333333650100056', '【假一赔十】beats solo3wireless 蓝牙耳机头戴式 米奇 游戏手机耳机 折叠式重低音 运动 玫瑰金', 'http://productdata.fhxasdsada.xyz/135638619666091357760161_x.jpg', '金色  ', '1', 773, NULL, 0);
INSERT INTO `orders` VALUES (1711, '1586333333650100056', '【假一赔十】beats solo3wireless 蓝牙耳机头戴式 米奇 游戏手机耳机 折叠式重低音 运动 玫瑰金', 'http://productdata.fhxasdsada.xyz/135638619666091357760161_x.jpg', '金色  ', '1', 773, NULL, 0);
INSERT INTO `orders` VALUES (1712, '1586333333650100056', '【假一赔十】beats solo3wireless 蓝牙耳机头戴式 米奇 游戏手机耳机 折叠式重低音 运动 玫瑰金', 'http://productdata.fhxasdsada.xyz/135638619666091357760161_x.jpg', '玫瑰金  ', '1', 773, NULL, 0);
INSERT INTO `orders` VALUES (1713, '1586333333650100056', '【假一赔十】beats solo3wireless 蓝牙耳机头戴式 米奇 游戏手机耳机 折叠式重低音 运动 玫瑰金', 'http://productdata.fhxasdsada.xyz/135638619666091357760161_x.jpg', '玫瑰金  ', '1', 773, NULL, 0);
INSERT INTO `orders` VALUES (1714, '1586333333650100056', '【假一赔十】beats solo3wireless 蓝牙耳机头戴式 米奇 游戏手机耳机 折叠式重低音 运动 玫瑰金', 'http://productdata.fhxasdsada.xyz/135638619666091357760161_x.jpg', '猪年限量版 90周年 ', '1', 773, NULL, 0);
INSERT INTO `orders` VALUES (1715, '1586333333650100056', '【假一赔十】beats solo3wireless 蓝牙耳机头戴式 米奇 游戏手机耳机 折叠式重低音 运动 玫瑰金', 'http://productdata.fhxasdsada.xyz/135638619666091357760161_x.jpg', '猪年限量版 90周年 ', '1', 773, NULL, 0);
INSERT INTO `orders` VALUES (1716, '1586333333650100056', '【假一赔十】beats solo3wireless 蓝牙耳机头戴式 米奇 游戏手机耳机 折叠式重低音 运动 玫瑰金', 'http://productdata.fhxasdsada.xyz/135638619666091357760161_x.jpg', ' 学院黄 ', '1', 773, NULL, 0);
INSERT INTO `orders` VALUES (1717, '1586333333650100056', '【假一赔十】beats solo3wireless 蓝牙耳机头戴式 米奇 游戏手机耳机 折叠式重低音 运动 玫瑰金', 'http://productdata.fhxasdsada.xyz/135638619666091357760161_x.jpg', ' 学院黄 ', '1', 773, NULL, 0);
INSERT INTO `orders` VALUES (1718, '1586333333650100056', '【假一赔十】beats solo3wireless 蓝牙耳机头戴式 米奇 游戏手机耳机 折叠式重低音 运动 玫瑰金', 'http://productdata.fhxasdsada.xyz/135638619666091357760161_x.jpg', '学院红 ', '1', 773, NULL, 0);
INSERT INTO `orders` VALUES (1719, '1586333333650100056', '【假一赔十】beats solo3wireless 蓝牙耳机头戴式 米奇 游戏手机耳机 折叠式重低音 运动 玫瑰金', 'http://productdata.fhxasdsada.xyz/135638619666091357760161_x.jpg', '学院红 ', '1', 773, NULL, 0);
INSERT INTO `orders` VALUES (1720, '1586333333650100056', '【假一赔十】beats solo3wireless 蓝牙耳机头戴式 米奇 游戏手机耳机 折叠式重低音 运动 玫瑰金', 'http://productdata.fhxasdsada.xyz/135638619666091357760161_x.jpg', '银色  ', '1', 773, NULL, 0);
INSERT INTO `orders` VALUES (1721, '1586333333650100056', '【假一赔十】beats solo3wireless 蓝牙耳机头戴式 米奇 游戏手机耳机 折叠式重低音 运动 玫瑰金', 'http://productdata.fhxasdsada.xyz/135638619666091357760161_x.jpg', '银色  ', '1', 773, NULL, 0);
INSERT INTO `orders` VALUES (1722, '1586333333650100056', '【专柜正品】Dior迪奥口红烈艳蓝金女士唇膏999口红套装送女友生日礼物 送老婆情人节礼物 【情人节星星限量版五只装套盒】', '\r\nhttp://productdata.fhxasdsada.xyz/5cd5acfbN24c0ee18.jpg', '[红弯心动6支套装] [赠视频玫瑰礼盒 ] ', '1', 1140, '0.4kg', 0);
INSERT INTO `orders` VALUES (1723, '1586333333650100056', '【专柜正品】Dior迪奥口红烈艳蓝金女士唇膏999口红套装送女友生日礼物 送老婆情人节礼物 【情人节星星限量版五只装套盒】', '\r\nhttp://productdata.fhxasdsada.xyz/5cd5acfbN24c0ee18.jpg', '[红弯心动6支套装] [赠视频玫瑰礼盒 ] ', '1', 1140, '0.4kg', 0);
INSERT INTO `orders` VALUES (1724, '1586333333650100056', '【专柜正品】Dior迪奥口红烈艳蓝金女士唇膏999口红套装送女友生日礼物 送老婆情人节礼物 【情人节星星限量版五只装套盒】', '\r\nhttp://productdata.fhxasdsada.xyz/5cd5acfbN24c0ee18.jpg', '[限量版挚爱红管烟花5支装套盒] ', '1', 1140, '0.4kg', 0);
INSERT INTO `orders` VALUES (1725, '1586333333650100056', '【专柜正品】Dior迪奥口红烈艳蓝金女士唇膏999口红套装送女友生日礼物 送老婆情人节礼物 【情人节星星限量版五只装套盒】', '\r\nhttp://productdata.fhxasdsada.xyz/5cd5acfbN24c0ee18.jpg', '[限量版挚爱红管烟花5支装套盒] ', '1', 1140, '0.4kg', 0);
INSERT INTO `orders` VALUES (1726, '1586333333650100056', '【专柜正品】Dior迪奥口红烈艳蓝金女士唇膏999口红套装送女友生日礼物 送老婆情人节礼物 【情人节星星限量版五只装套盒】', '\r\nhttp://productdata.fhxasdsada.xyz/5cd5acfbN24c0ee18.jpg', '999+ 520+花漾甜心100ML [口红香水套装] ', '1', 1140, '0.4kg', 0);
INSERT INTO `orders` VALUES (1727, '1586333333650100056', '【专柜正品】Dior迪奥口红烈艳蓝金女士唇膏999口红套装送女友生日礼物 送老婆情人节礼物 【情人节星星限量版五只装套盒】', '\r\nhttp://productdata.fhxasdsada.xyz/5cd5acfbN24c0ee18.jpg', '999+ 520+花漾甜心100ML [口红香水套装] ', '2', 1140, '0.4kg', 0);
INSERT INTO `orders` VALUES (1728, '1586333333650100056', '【专柜正品】Dior迪奥口红烈艳蓝金女士唇膏999口红套装送女友生日礼物 送老婆情人节礼物 【情人节星星限量版五只装套盒】', '\r\nhttp://productdata.fhxasdsada.xyz/5cd5acfbN24c0ee18.jpg', '028#滋润珊瑚红 ', '1', 1140, '0.4kg', 0);
INSERT INTO `orders` VALUES (1729, '1586333333650100056', '【专柜正品】Dior迪奥口红烈艳蓝金女士唇膏999口红套装送女友生日礼物 送老婆情人节礼物 【情人节星星限量版五只装套盒】', '\r\nhttp://productdata.fhxasdsada.xyz/5cd5acfbN24c0ee18.jpg', '028#滋润珊瑚红 ', '2', 1140, '0.4kg', 0);
INSERT INTO `orders` VALUES (1730, '1586333333650100056', '华为 HUAWEI Mate 30 Pro 麒麟990旗舰芯片OLED环幕屏双4000万徕卡电影四摄手机', '\r\nhttp://productdata.fhxasdsada.xyz/971ec333c8ef1de2.jpg', '罗兰紫 ', '1', 5399, '0.54kg', 0);
INSERT INTO `orders` VALUES (1731, '1586333333650100056', '华为 HUAWEI Mate 30 Pro 麒麟990旗舰芯片OLED环幕屏双4000万徕卡电影四摄手机', '\r\nhttp://productdata.fhxasdsada.xyz/971ec333c8ef1de2.jpg', '罗兰紫 ', '2', 5399, '0.54kg', 0);
INSERT INTO `orders` VALUES (1732, '1586333333650100056', '华为 HUAWEI Mate 30 Pro 麒麟990旗舰芯片OLED环幕屏双4000万徕卡电影四摄手机', '\r\nhttp://productdata.fhxasdsada.xyz/971ec333c8ef1de2.jpg', '翡冷翠 ', '1', 5399, '0.54kg', 0);
INSERT INTO `orders` VALUES (1733, '1586333333650100056', '华为 HUAWEI Mate 30 Pro 麒麟990旗舰芯片OLED环幕屏双4000万徕卡电影四摄手机', '\r\nhttp://productdata.fhxasdsada.xyz/971ec333c8ef1de2.jpg', '翡冷翠 ', '2', 5399, '0.54kg', 0);
INSERT INTO `orders` VALUES (1734, '1586333333650100056', '华为 HUAWEI Mate 30 Pro 麒麟990旗舰芯片OLED环幕屏双4000万徕卡电影四摄手机', '\r\nhttp://productdata.fhxasdsada.xyz/971ec333c8ef1de2.jpg', '星河银 ', '3', 5399, '0.54kg', 0);
INSERT INTO `orders` VALUES (1735, '1586333333650100056', 'Hot Toys 复仇者联盟3 无限战争 HOTTOYS 钢铁侠 模型玩具礼物 MK7 普通版\r\n\r\n', 'http://productdata.fhxasdsada.xyz/9bf639975363fbb0.jpg', '', '7', 3350, '5kg', 0);
INSERT INTO `orders` VALUES (1736, '1586333608038100057', '阿玛尼（ Emporio Armani）满天星手表 女新款玫瑰金钢制表带镶钻石英轻奢女士腕表礼物 AR11244 ', '\r\nhttp://productdata.fhxasdsada.xyz/8c0b0a13e48adce3.jpg', '圣颜色 ', '1', 3596, '\r\n0.485kg', 0);
INSERT INTO `orders` VALUES (1737, '1586333708733100058', '阿玛尼（ Emporio Armani）满天星手表 女新款玫瑰金钢制表带镶钻石英轻奢女士腕表礼物 AR11244 ', '\r\nhttp://productdata.fhxasdsada.xyz/8c0b0a13e48adce3.jpg', '圣颜色 ', '1', 3596, '\r\n0.485kg', 0);
INSERT INTO `orders` VALUES (1738, '1586333814265100059', '阿玛尼（ Emporio Armani）满天星手表 女新款玫瑰金钢制表带镶钻石英轻奢女士腕表礼物 AR11244 ', '\r\nhttp://productdata.fhxasdsada.xyz/8c0b0a13e48adce3.jpg', '圣颜色 ', '1', 3596, '\r\n0.485kg', 0);
INSERT INTO `orders` VALUES (1739, '1586333846163100060', '三只松鼠芒果干 蜜饯果干芒果片休闲零食办公室小吃果脯水果干116g/袋', 'http://productdata.fhxasdsada.xyz/3531d2420f91d48177112641833bc7aa_2_3_photo.jpg', '奶茶味 ', '1', 20, '0.15kg', 0);
INSERT INTO `orders` VALUES (1740, '1586333882661100061', '\r\nCOACH PARKER 16 女士山茶花装饰可斜挎双肩包', '\r\nhttp://productdata.fhxasdsada.xyz/tuhaokuai_1583977278.jpg', '棕黄色锈色 均码 ', '1', 1299, NULL, 0);
INSERT INTO `orders` VALUES (1741, '1586333947479100062', '阿玛尼（ Emporio Armani）满天星手表 女新款玫瑰金钢制表带镶钻石英轻奢女士腕表礼物 AR11244 ', '\r\nhttp://productdata.fhxasdsada.xyz/8c0b0a13e48adce3.jpg', '圣颜色 ', '1', 3596, '\r\n0.485kg', 0);
INSERT INTO `orders` VALUES (1742, '1586333977321100063', '三只松鼠芒果干 蜜饯果干芒果片休闲零食办公室小吃果脯水果干116g/袋', 'http://productdata.fhxasdsada.xyz/3531d2420f91d48177112641833bc7aa_2_3_photo.jpg', '奶茶味 ', '1', 20, '0.15kg', 0);
INSERT INTO `orders` VALUES (1743, '1586334172418100064', '三只松鼠芒果干 蜜饯果干芒果片休闲零食办公室小吃果脯水果干116g/袋', 'http://productdata.fhxasdsada.xyz/3531d2420f91d48177112641833bc7aa_2_3_photo.jpg', '奶茶味 ', '1', 20, '0.15kg', 0);
INSERT INTO `orders` VALUES (1744, '1586334265439100065', '华为 HUAWEI Mate 30 Pro 麒麟990旗舰芯片OLED环幕屏双4000万徕卡电影四摄手机', '\r\nhttp://productdata.fhxasdsada.xyz/971ec333c8ef1de2.jpg', '星河银 ', '1', 5399, '0.54kg', 0);
INSERT INTO `orders` VALUES (1745, '1586334391883100066', '万代（BANDAI） Megahouse POP 海贼王 路飞9人 模型玩具（无售后！！！） 四档路飞\r\n', '\r\nhttp://productdata.fhxasdsada.xyz/5b90958cN736d78c4.jpg', '', '1', 3500, '100kg', 0);
INSERT INTO `orders` VALUES (1746, '1586334419560100067', 'Apple iPhone 11 Pro Max (A2220) 64GB 金色 移动联通电信4G手机 双卡双待 ', '\r\nhttp://productdata.fhxasdsada.xyz/04e04ec4954e07bd.jpg', '银色 128G+2G ', '1', 10398, '0.56kg', 0);
INSERT INTO `orders` VALUES (1747, '1586334619735100068', '三只松鼠芒果干 蜜饯果干芒果片休闲零食办公室小吃果脯水果干116g/袋', 'http://productdata.fhxasdsada.xyz/3531d2420f91d48177112641833bc7aa_2_3_photo.jpg', '奶茶味 ', '1', 20, '0.15kg', 0);
INSERT INTO `orders` VALUES (1748, '1586334735964100069', '阿玛尼（ Emporio Armani）满天星手表 女新款玫瑰金钢制表带镶钻石英轻奢女士腕表礼物 AR11244 ', '\r\nhttp://productdata.fhxasdsada.xyz/8c0b0a13e48adce3.jpg', '圣颜色 ', '1', 3596, '\r\n0.485kg', 0);
INSERT INTO `orders` VALUES (1749, '1586334862093100070', '三只松鼠芒果干 蜜饯果干芒果片休闲零食办公室小吃果脯水果干116g/袋', 'http://productdata.fhxasdsada.xyz/3531d2420f91d48177112641833bc7aa_2_3_photo.jpg', '奶茶味 ', '1', 20, '0.15kg', 0);
INSERT INTO `orders` VALUES (1750, '1586334974919100071', '\r\nCOACH PARKER 16 女士山茶花装饰可斜挎双肩包', '\r\nhttp://productdata.fhxasdsada.xyz/tuhaokuai_1583977278.jpg', '棕黄色锈色 均码 ', '1', 1299, NULL, 0);
INSERT INTO `orders` VALUES (1751, '1586335078755100072', 'Hot Toys 复仇者联盟3 无限战争 HOTTOYS 钢铁侠 模型玩具礼物 MK7 普通版\r\n\r\n', 'http://productdata.fhxasdsada.xyz/9bf639975363fbb0.jpg', '', '1', 3350, '5kg', 0);
INSERT INTO `orders` VALUES (1752, '1586335429346100073', ' 索尼（SONY）WF-1000XM3 真无线蓝牙降噪耳机 智能降噪 触控面板 苹果/安卓手机适用 黑色\r\n', 'http://productdata.fhxasdsada.xyz/2ca45e2fd9758794.jpg', '黑色 ', '1', 1499, '0.6kg', 0);
INSERT INTO `orders` VALUES (1753, '1586335617675100074', '三只松鼠芒果干 蜜饯果干芒果片休闲零食办公室小吃果脯水果干116g/袋', 'http://productdata.fhxasdsada.xyz/3531d2420f91d48177112641833bc7aa_2_3_photo.jpg', '奶茶味 ', '1', 20, '0.15kg', 0);
INSERT INTO `orders` VALUES (1754, '1586335781667100075', '三只松鼠芒果干 蜜饯果干芒果片休闲零食办公室小吃果脯水果干116g/袋', 'http://productdata.fhxasdsada.xyz/3531d2420f91d48177112641833bc7aa_2_3_photo.jpg', '奶茶味 ', '1', 20, '0.15kg', 0);
INSERT INTO `orders` VALUES (1755, '1586335946450100076', '【专柜正品】Dior迪奥口红烈艳蓝金女士唇膏999口红套装送女友生日礼物 送老婆情人节礼物 【情人节星星限量版五只装套盒】', '\r\nhttp://productdata.fhxasdsada.xyz/5cd5acfbN24c0ee18.jpg', '028#滋润珊瑚红 ', '1', 1140, '0.4kg', 0);
INSERT INTO `orders` VALUES (1756, '1586336175680100077', '三只松鼠芒果干 蜜饯果干芒果片休闲零食办公室小吃果脯水果干116g/袋', 'http://productdata.fhxasdsada.xyz/3531d2420f91d48177112641833bc7aa_2_3_photo.jpg', '奶茶味 ', '1', 20, '0.15kg', 0);
INSERT INTO `orders` VALUES (1757, '1586336297988100078', 'Hot Toys 复仇者联盟3 无限战争 HOTTOYS 钢铁侠 模型玩具礼物 MK7 普通版\r\n\r\n', 'http://productdata.fhxasdsada.xyz/9bf639975363fbb0.jpg', '', '1', 3350, '5kg', 0);
INSERT INTO `orders` VALUES (1758, '1586336332833100079', '三只松鼠芒果干 蜜饯果干芒果片休闲零食办公室小吃果脯水果干116g/袋', 'http://productdata.fhxasdsada.xyz/3531d2420f91d48177112641833bc7aa_2_3_photo.jpg', '奶茶味 ', '1', 20, '0.15kg', 0);
INSERT INTO `orders` VALUES (1759, '1586336354634100080', ' 索尼（SONY）WF-1000XM3 真无线蓝牙降噪耳机 智能降噪 触控面板 苹果/安卓手机适用 黑色\r\n', 'http://productdata.fhxasdsada.xyz/2ca45e2fd9758794.jpg', '黑色 ', '1', 1499, '0.6kg', 0);
INSERT INTO `orders` VALUES (1760, '1586336416827100081', 'Apple iPad Pro 12.9英寸平板电脑 2018款(64G WLAN版/全面屏/A12X/FaceID MTEL2CH/A)深空灰\r\n', 'http://productdata.fhxasdsada.xyz/7a77ad4e3100e885.jpg', 'Cellular版1TB ', '1', 7890, '2.8kg', 0);
INSERT INTO `orders` VALUES (1761, '1586336416827100081', 'Apple iPad Pro 12.9英寸平板电脑 2018款(64G WLAN版/全面屏/A12X/FaceID MTEL2CH/A)深空灰\r\n', 'http://productdata.fhxasdsada.xyz/7a77ad4e3100e885.jpg', 'Cellular版512G  ', '1', 7890, '2.8kg', 0);
INSERT INTO `orders` VALUES (1762, '1586336416827100081', 'Apple iPad Pro 12.9英寸平板电脑 2018款(64G WLAN版/全面屏/A12X/FaceID MTEL2CH/A)深空灰\r\n', 'http://productdata.fhxasdsada.xyz/7a77ad4e3100e885.jpg', ' WLAN版1TB ', '1', 7890, '2.8kg', 0);
INSERT INTO `orders` VALUES (1763, '1586336416827100081', 'Apple iPad Pro 12.9英寸平板电脑 2018款(64G WLAN版/全面屏/A12X/FaceID MTEL2CH/A)深空灰\r\n', 'http://productdata.fhxasdsada.xyz/7a77ad4e3100e885.jpg', 'Cellular版64G  ', '1', 7890, '2.8kg', 0);
INSERT INTO `orders` VALUES (1764, '1586336416827100081', 'Apple iPad Pro 12.9英寸平板电脑 2018款(64G WLAN版/全面屏/A12X/FaceID MTEL2CH/A)深空灰\r\n', 'http://productdata.fhxasdsada.xyz/7a77ad4e3100e885.jpg', 'Cellular版256G ', '1', 7890, '2.8kg', 0);
INSERT INTO `orders` VALUES (1765, '1586336416827100081', 'Apple iPad Pro 12.9英寸平板电脑 2018款(64G WLAN版/全面屏/A12X/FaceID MTEL2CH/A)深空灰\r\n', 'http://productdata.fhxasdsada.xyz/7a77ad4e3100e885.jpg', 'WLAN版512G ', '1', 7890, '2.8kg', 0);
INSERT INTO `orders` VALUES (1766, '1586336416827100081', 'Apple iPad Pro 12.9英寸平板电脑 2018款(64G WLAN版/全面屏/A12X/FaceID MTEL2CH/A)深空灰\r\n', 'http://productdata.fhxasdsada.xyz/7a77ad4e3100e885.jpg', ' WLAN版256G  ', '1', 7890, '2.8kg', 0);
INSERT INTO `orders` VALUES (1767, '1586336416827100081', 'Apple iPad Pro 12.9英寸平板电脑 2018款(64G WLAN版/全面屏/A12X/FaceID MTEL2CH/A)深空灰\r\n', 'http://productdata.fhxasdsada.xyz/7a77ad4e3100e885.jpg', 'WLAN版64G ', '1', 7890, '2.8kg', 0);
INSERT INTO `orders` VALUES (1768, '1586336416827100081', '新款Huawei/华为折叠手机mates xs 5g版大屏双屏全面屏双面屏官方旗舰店对折手机可折叠屏 Mate XS折叠\r\n', 'http://productdata.fhxasdsada.xyz/7a3a192a7fca3c35.png', '星际蓝 ', '1', 30576, '0.24kg', 0);
INSERT INTO `orders` VALUES (1769, '1586336592904100082', '三只松鼠芒果干 蜜饯果干芒果片休闲零食办公室小吃果脯水果干116g/袋', 'http://productdata.fhxasdsada.xyz/3531d2420f91d48177112641833bc7aa_2_3_photo.jpg', '奶茶味 ', '1', 20, '0.15kg', 0);
INSERT INTO `orders` VALUES (1770, '1586336975758100083', '三只松鼠芒果干 蜜饯果干芒果片休闲零食办公室小吃果脯水果干116g/袋', 'http://productdata.fhxasdsada.xyz/3531d2420f91d48177112641833bc7aa_2_3_photo.jpg', '奶茶味 ', '1', 20, '0.15kg', 0);
INSERT INTO `orders` VALUES (1771, '1586337129312100084', 'Apple iPhone 11 Pro Max (A2220) 64GB 金色 移动联通电信4G手机 双卡双待 ', '\r\nhttp://productdata.fhxasdsada.xyz/04e04ec4954e07bd.jpg', '银色 128G+2G ', '1', 10398, '0.56kg', 0);
INSERT INTO `orders` VALUES (1772, '1586337215075100085', '骨伽（COUGAR） 电脑主机箱 台式机中塔式侧透征服者游戏定制水冷机箱 黑色\r\n', 'http://productdata.fhxasdsada.xyz/5b4d4cc8N0bf9c476.jpg', '黑色 ', '1', 2898, '2.8kg', 0);
INSERT INTO `orders` VALUES (1773, '1586337264238100086', '华为 HUAWEI Mate 30 Pro 麒麟990旗舰芯片OLED环幕屏双4000万徕卡电影四摄手机', '\r\nhttp://productdata.fhxasdsada.xyz/971ec333c8ef1de2.jpg', '罗兰紫 ', '2', 5399, '0.54kg', 0);
INSERT INTO `orders` VALUES (1774, '1586337264238100086', '华为 HUAWEI Mate 30 Pro 麒麟990旗舰芯片OLED环幕屏双4000万徕卡电影四摄手机', '\r\nhttp://productdata.fhxasdsada.xyz/971ec333c8ef1de2.jpg', '星河银 ', '3', 5399, '0.54kg', 0);
INSERT INTO `orders` VALUES (1775, '1586337264238100086', '三只松鼠芒果干 蜜饯果干芒果片休闲零食办公室小吃果脯水果干116g/袋', 'http://productdata.fhxasdsada.xyz/3531d2420f91d48177112641833bc7aa_2_3_photo.jpg', '奶茶味 ', '4', 20, '0.15kg', 0);
INSERT INTO `orders` VALUES (1776, '1586337299858100087', '骨伽（COUGAR） 电脑主机箱 台式机中塔式侧透征服者游戏定制水冷机箱 黑色\r\n', 'http://productdata.fhxasdsada.xyz/5b4d4cc8N0bf9c476.jpg', '黑色 ', '1', 2898, '2.8kg', 0);
INSERT INTO `orders` VALUES (1777, '1586337755264100088', '骨伽（COUGAR） 电脑主机箱 台式机中塔式侧透征服者游戏定制水冷机箱 黑色\r\n', 'http://productdata.fhxasdsada.xyz/5b4d4cc8N0bf9c476.jpg', '黑色 ', '1', 2898, '2.8kg', 0);
INSERT INTO `orders` VALUES (1778, '1586337845372100089', '骨伽（COUGAR） 电脑主机箱 台式机中塔式侧透征服者游戏定制水冷机箱 黑色\r\n', 'http://productdata.fhxasdsada.xyz/5b4d4cc8N0bf9c476.jpg', '黑色 ', '1', 2898, '2.8kg', 0);
INSERT INTO `orders` VALUES (1779, '1586337984118100090', '骨伽（COUGAR） 电脑主机箱 台式机中塔式侧透征服者游戏定制水冷机箱 黑色\r\n', 'http://productdata.fhxasdsada.xyz/5b4d4cc8N0bf9c476.jpg', '黑色 ', '1', 2898, '2.8kg', 0);
INSERT INTO `orders` VALUES (1780, '1586338418729100091', '阿玛尼（ Emporio Armani）满天星手表 女新款玫瑰金钢制表带镶钻石英轻奢女士腕表礼物 AR11244 ', '\r\nhttp://productdata.fhxasdsada.xyz/8c0b0a13e48adce3.jpg', '玫瑰金满天星AR11244 ', '1', 3596, '\r\n0.485kg', 0);
INSERT INTO `orders` VALUES (1781, '1586338418729100091', '阿玛尼（ Emporio Armani）满天星手表 女新款玫瑰金钢制表带镶钻石英轻奢女士腕表礼物 AR11244 ', '\r\nhttp://productdata.fhxasdsada.xyz/8c0b0a13e48adce3.jpg', '玫瑰金满天星AR11244 ', '1', 3596, '\r\n0.485kg', 0);
INSERT INTO `orders` VALUES (1782, '1586338418729100091', '阿玛尼（ Emporio Armani）满天星手表 女新款玫瑰金钢制表带镶钻石英轻奢女士腕表礼物 AR11244 ', '\r\nhttp://productdata.fhxasdsada.xyz/8c0b0a13e48adce3.jpg', '钢质表带AR11129 ', '2', 3596, '\r\n0.485kg', 0);
INSERT INTO `orders` VALUES (1783, '1586338663596100092', '三只松鼠芒果干 蜜饯果干芒果片休闲零食办公室小吃果脯水果干116g/袋', 'http://productdata.fhxasdsada.xyz/3531d2420f91d48177112641833bc7aa_2_3_photo.jpg', '奶茶味 ', '1', 20, '0.15kg', 0);
INSERT INTO `orders` VALUES (1784, '1586340012414100093', '骨伽（COUGAR） 电脑主机箱 台式机中塔式侧透征服者游戏定制水冷机箱 黑色\r\n', 'http://productdata.fhxasdsada.xyz/5b4d4cc8N0bf9c476.jpg', '黑色 ', '1', 2898, '2.8kg', 0);
INSERT INTO `orders` VALUES (1785, '1586340102626100094', '三只松鼠芒果干 蜜饯果干芒果片休闲零食办公室小吃果脯水果干116g/袋', 'http://productdata.fhxasdsada.xyz/3531d2420f91d48177112641833bc7aa_2_3_photo.jpg', '奶茶味 ', '1', 20, '0.15kg', 0);
INSERT INTO `orders` VALUES (1786, '1586340129197100095', '阿玛尼（ Emporio Armani）满天星手表 女新款玫瑰金钢制表带镶钻石英轻奢女士腕表礼物 AR11244 ', '\r\nhttp://productdata.fhxasdsada.xyz/8c0b0a13e48adce3.jpg', '圣颜色 ', '1', 3596, '\r\n0.485kg', 0);
INSERT INTO `orders` VALUES (1787, '1586340288246100096', '三只松鼠芒果干 蜜饯果干芒果片休闲零食办公室小吃果脯水果干116g/袋', 'http://productdata.fhxasdsada.xyz/3531d2420f91d48177112641833bc7aa_2_3_photo.jpg', '奶茶味 ', '1', 20, '0.15kg', 0);
INSERT INTO `orders` VALUES (1788, '1586340324722100097', '骨伽（COUGAR） 电脑主机箱 台式机中塔式侧透征服者游戏定制水冷机箱 黑色\r\n', 'http://productdata.fhxasdsada.xyz/5b4d4cc8N0bf9c476.jpg', '黑色 ', '1', 2898, '2.8kg', 0);
INSERT INTO `orders` VALUES (1789, '1586340450254100098', '三只松鼠芒果干 蜜饯果干芒果片休闲零食办公室小吃果脯水果干116g/袋', 'http://productdata.fhxasdsada.xyz/3531d2420f91d48177112641833bc7aa_2_3_photo.jpg', '奶茶味 ', '1', 20, '0.15kg', 0);
INSERT INTO `orders` VALUES (1790, '1586340577693100099', '三只松鼠芒果干 蜜饯果干芒果片休闲零食办公室小吃果脯水果干116g/袋', 'http://productdata.fhxasdsada.xyz/3531d2420f91d48177112641833bc7aa_2_3_photo.jpg', '奶茶味 ', '1', 20, '0.15kg', 0);
INSERT INTO `orders` VALUES (1791, '1586342414649100100', '骨伽（COUGAR） 电脑主机箱 台式机中塔式侧透征服者游戏定制水冷机箱 黑色\r\n', 'http://productdata.fhxasdsada.xyz/5b4d4cc8N0bf9c476.jpg', '黑色 ', '1', 2898, '2.8kg', 0);
INSERT INTO `orders` VALUES (1792, '1586346035358100101', 'Apple iPad Pro 12.9英寸平板电脑 2018款(64G WLAN版/全面屏/A12X/FaceID MTEL2CH/A)深空灰\r\n', 'http://productdata.fhxasdsada.xyz/7a77ad4e3100e885.jpg', 'WLAN版64G ', '1', 7890, '2.8kg', 0);
INSERT INTO `orders` VALUES (1793, '1586346607917100102', 'Hot Toys 复仇者联盟3 无限战争 HOTTOYS 钢铁侠 模型玩具礼物 MK7 普通版\r\n\r\n', 'http://productdata.fhxasdsada.xyz/9bf639975363fbb0.jpg', '', '1', 3350, '5kg', 0);
INSERT INTO `orders` VALUES (1794, '1586347797232100103', '华为 HUAWEI Mate 30 Pro 麒麟990旗舰芯片OLED环幕屏双4000万徕卡电影四摄手机', '\r\nhttp://productdata.fhxasdsada.xyz/971ec333c8ef1de2.jpg', '星河银 ', '1', 5399, '0.54kg', 0);

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
) ENGINE = InnoDB AUTO_INCREMENT = 2645 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of shoppingCart
-- ----------------------------
INSERT INTO `shoppingCart` VALUES (627, 'f92b9f8f372e445fb6564cdd57aa3c3e', 10002, '白色 优惠套餐一 ', 1);
INSERT INTO `shoppingCart` VALUES (628, '8b616d638682406f96acd3b54dfbc723', 10001, '白色 ', 99);
INSERT INTO `shoppingCart` VALUES (701, '8b616d638682406f96acd3b54dfbc723', 10015, '白色 ', 99);
INSERT INTO `shoppingCart` VALUES (1330, NULL, 10028, '【新品】小爱音箱  Redmi 小爱音箱Play 绿色 ', 1);
INSERT INTO `shoppingCart` VALUES (1331, NULL, 10028, 'Redmi 小爱音箱Play  小爱音箱万能遥控版  ', 2);
INSERT INTO `shoppingCart` VALUES (1390, '7c9fdfa3177042a08766aed29e7de6cd', 10002, '白色 优惠套餐一 ', 14);
INSERT INTO `shoppingCart` VALUES (1598, '7c9fdfa3177042a08766aed29e7de6cd', 10026, 'XS ', 6);

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
INSERT INTO `userAddress` VALUES (165, '7c9fdfa3177042a08766aed29e7de6cd', '递四方速递', '内蒙古自治区 包头市 石拐区 石拐街道 ', '水电费水电费', '15367885410', 'liuxianliangli@foxmail.com', '15,1502,150205,150205001,', '0', '公司', 1);
INSERT INTO `userAddress` VALUES (166, '7c9fdfa3177042a08766aed29e7de6cd', '的发送发送的', '山西省 太原市 杏花岭区 巨轮街道 ', '水电费水电费', '15367885410', 'liuxianliangli@foxmail.com', '14,1401,140107,140107001,', '0', '公司', 1);
INSERT INTO `userAddress` VALUES (167, 'f92b9f8f372e445fb6564cdd57aa3c3e', '方鸢', '河北省 唐山市 路南区 学院南路街道 ', 'dasdas', '18598814121', '2252821162@qq.com', '13,1302,130202,130202001,', '1', '闺蜜家', 1);

-- ----------------------------
-- Table structure for userConsumptionRecords
-- ----------------------------
DROP TABLE IF EXISTS `userConsumptionRecords`;
CREATE TABLE `userConsumptionRecords`  (
  `orderId` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `userId` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `paymentStatus` int(11) NULL DEFAULT NULL,
  `productName` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `senderId` int(11) NULL DEFAULT NULL,
  `paymentTime` datetime(0) NULL DEFAULT NULL,
  `paymentAmount` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of userConsumptionRecords
-- ----------------------------
INSERT INTO `userConsumptionRecords` VALUES ('1586346035358100101', 'f92b9f8f372e445fb6564cdd57aa3c3e', 1, NULL, 3, '2020-04-08 19:40:41', '7890.0');
INSERT INTO `userConsumptionRecords` VALUES ('1586346607917100102', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-08 19:50:14', '3350.0');
INSERT INTO `userConsumptionRecords` VALUES ('1586347797232100103', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-04-08 20:10:13', '5399.0');

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
INSERT INTO `userFootprint` VALUES (10, '7c9fdfa3177042a08766aed29e7de6cd', 10006, '2020-04-08 16:59:11');
INSERT INTO `userFootprint` VALUES (11, '7c9fdfa3177042a08766aed29e7de6cd', 10013, '2020-04-07 13:09:15');
INSERT INTO `userFootprint` VALUES (12, '7c9fdfa3177042a08766aed29e7de6cd', 10001, '2020-04-07 13:08:12');
INSERT INTO `userFootprint` VALUES (13, '7c9fdfa3177042a08766aed29e7de6cd', 10018, '2020-04-08 16:52:21');
INSERT INTO `userFootprint` VALUES (14, '7c9fdfa3177042a08766aed29e7de6cd', 10028, '2020-04-08 15:27:57');
INSERT INTO `userFootprint` VALUES (15, '7c9fdfa3177042a08766aed29e7de6cd', 10027, '2020-04-08 16:08:18');
INSERT INTO `userFootprint` VALUES (16, '7c9fdfa3177042a08766aed29e7de6cd', 10023, '2020-04-08 16:36:12');
INSERT INTO `userFootprint` VALUES (17, '7c9fdfa3177042a08766aed29e7de6cd', 10017, '2020-04-07 19:59:26');
INSERT INTO `userFootprint` VALUES (18, '7c9fdfa3177042a08766aed29e7de6cd', 10024, '2020-04-08 15:28:28');
INSERT INTO `userFootprint` VALUES (19, '7c9fdfa3177042a08766aed29e7de6cd', 10015, '2020-04-08 18:09:35');
INSERT INTO `userFootprint` VALUES (20, '7c9fdfa3177042a08766aed29e7de6cd', 10019, '2020-04-08 14:54:14');
INSERT INTO `userFootprint` VALUES (21, '7c9fdfa3177042a08766aed29e7de6cd', 10009, '2020-04-04 10:33:02');
INSERT INTO `userFootprint` VALUES (22, 'abcd', 10005, '2020-04-08 19:40:32');
INSERT INTO `userFootprint` VALUES (23, 'asdasd', 0, '2020-03-27 09:52:30');
INSERT INTO `userFootprint` VALUES (24, '7c9fdfa3177042a08766aed29e7de6cd', 10014, '2020-04-08 18:40:12');
INSERT INTO `userFootprint` VALUES (25, '7c9fdfa3177042a08766aed29e7de6cd', 10021, '2020-04-05 18:13:03');
INSERT INTO `userFootprint` VALUES (26, '7c9fdfa3177042a08766aed29e7de6cd', 10020, '2020-04-07 20:09:46');
INSERT INTO `userFootprint` VALUES (27, '7c9fdfa3177042a08766aed29e7de6cd', 10026, '2020-04-07 13:11:22');
INSERT INTO `userFootprint` VALUES (28, '7c9fdfa3177042a08766aed29e7de6cd', 10025, '2020-04-07 13:12:31');
INSERT INTO `userFootprint` VALUES (29, 'f92b9f8f372e445fb6564cdd57aa3c3e', 10002, '2020-04-08 17:34:10');
INSERT INTO `userFootprint` VALUES (30, '7c9fdfa3177042a08766aed29e7de6cd', 10004, '2020-04-08 16:59:50');
INSERT INTO `userFootprint` VALUES (31, '7c9fdfa3177042a08766aed29e7de6cd', 10011, '2020-04-08 17:12:05');
INSERT INTO `userFootprint` VALUES (32, '7c9fdfa3177042a08766aed29e7de6cd', 10007, '2020-04-08 19:50:05');
INSERT INTO `userFootprint` VALUES (33, '7c9fdfa3177042a08766aed29e7de6cd', 10010, '2020-04-08 18:02:05');
INSERT INTO `userFootprint` VALUES (34, '7c9fdfa3177042a08766aed29e7de6cd', 10016, '2020-04-08 20:09:53');
INSERT INTO `userFootprint` VALUES (35, '7c9fdfa3177042a08766aed29e7de6cd', 10029, '2020-04-07 15:00:30');
INSERT INTO `userFootprint` VALUES (36, '7c9fdfa3177042a08766aed29e7de6cd', 10030, '2020-04-07 13:11:01');
INSERT INTO `userFootprint` VALUES (37, '7c9fdfa3177042a08766aed29e7de6cd', 10008, '2020-04-08 16:26:26');
INSERT INTO `userFootprint` VALUES (38, '7c9fdfa3177042a08766aed29e7de6cd', 10012, '2020-04-07 13:09:10');
INSERT INTO `userFootprint` VALUES (39, 'f92b9f8f372e445fb6564cdd57aa3c3e', 10022, '2020-04-08 09:59:39');
INSERT INTO `userFootprint` VALUES (40, 'f92b9f8f372e445fb6564cdd57aa3c3e', 10003, '2020-04-07 13:10:08');

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
INSERT INTO `userMembe` VALUES ('7c9fdfa3177042a08766aed29e7de6cd', 'MggeIQS/pNbNd89sZN2lkQ==', 98000, 5, 2, 1540);
INSERT INTO `userMembe` VALUES ('0497326c70a447ceb815aa23743daeab', NULL, 0, 0, 0, 0);
INSERT INTO `userMembe` VALUES ('9c1e482cfabf48f7ab64baee9bd778fd', NULL, 0, 0, 0, 0);
INSERT INTO `userMembe` VALUES ('f92b9f8f372e445fb6564cdd57aa3c3e', 'uBJgFz2rxo9SNBwh/lVX7A==', 0, 0, 0, 0);

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
) ENGINE = InnoDB AUTO_INCREMENT = 419 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of userOrder
-- ----------------------------
INSERT INTO `userOrder` VALUES (229, '7c9fdfa3177042a08766aed29e7de6cd', '1586176369021100001', NULL, NULL, '2020-04-06 20:33:53', NULL, NULL, NULL, NULL, '207860.00', 1);
INSERT INTO `userOrder` VALUES (230, '7c9fdfa3177042a08766aed29e7de6cd', '1586176532725100002', NULL, NULL, '2020-04-06 20:35:46', NULL, NULL, NULL, NULL, '196920.00', 1);
INSERT INTO `userOrder` VALUES (231, '7c9fdfa3177042a08766aed29e7de6cd', '1586176805593100003', NULL, NULL, '2020-04-06 20:40:20', NULL, NULL, NULL, NULL, '2496780000.00', 1);
INSERT INTO `userOrder` VALUES (232, '7c9fdfa3177042a08766aed29e7de6cd', '1586177041772100004', NULL, NULL, '2020-04-06 20:44:17', NULL, NULL, NULL, NULL, '2625480000.00', 1);
INSERT INTO `userOrder` VALUES (233, '7c9fdfa3177042a08766aed29e7de6cd', '1586177124101100005', NULL, NULL, '2020-04-06 20:45:24', NULL, NULL, NULL, NULL, '10392.00', 1);
INSERT INTO `userOrder` VALUES (234, 'f92b9f8f372e445fb6564cdd57aa3c3e', '1586177356476100006', 1, 1, '2020-04-06 20:49:16', '2020-04-09 20:49:16', NULL, NULL, '', '1499.0', NULL);
INSERT INTO `userOrder` VALUES (235, '7c9fdfa3177042a08766aed29e7de6cd', '1586177578542100007', NULL, NULL, '2020-04-06 20:53:09', NULL, NULL, NULL, NULL, '1827540000.00', 1);
INSERT INTO `userOrder` VALUES (236, 'f92b9f8f372e445fb6564cdd57aa3c3e', '1586177750376100008', 1, 1, '2020-04-06 20:55:51', '2020-04-09 20:55:51', NULL, NULL, '', '1319.00', 1);
INSERT INTO `userOrder` VALUES (237, '7c9fdfa3177042a08766aed29e7de6cd', '1586177784998100009', 1, 1, '2020-04-06 20:56:27', '2020-04-09 20:56:27', NULL, NULL, '', '25745301.80', 1);
INSERT INTO `userOrder` VALUES (238, 'f92b9f8f372e445fb6564cdd57aa3c3e', '1586227845282100001', 1, 1, '2020-04-07 10:50:45', '2020-04-10 10:50:45', '2020-04-07 10:51:01', NULL, '', '260000.0', NULL);
INSERT INTO `userOrder` VALUES (239, 'f92b9f8f372e445fb6564cdd57aa3c3e', '1586227978121100002', 1, 2, '2020-04-07 10:52:58', '2020-04-11 00:00:00', '2020-04-07 10:53:32', NULL, 'cuc', '2898.0', NULL);
INSERT INTO `userOrder` VALUES (240, 'f92b9f8f372e445fb6564cdd57aa3c3e', '1586228264452100003', 1, 1, '2020-04-07 10:57:44', '2020-04-10 10:57:44', '2020-04-07 11:01:50', NULL, '', '7890.0', NULL);
INSERT INTO `userOrder` VALUES (241, 'f92b9f8f372e445fb6564cdd57aa3c3e', '1586229257791100004', 1, 1, '2020-04-07 11:14:17', '2020-04-10 11:14:18', '2020-04-07 11:15:11', NULL, '', '773.0', 1);
INSERT INTO `userOrder` VALUES (242, 'f92b9f8f372e445fb6564cdd57aa3c3e', '1586229545997100005', 1, 1, '2020-04-07 11:19:06', '2020-04-10 11:19:06', '2020-04-07 11:20:23', NULL, '', '260000.0', 2);
INSERT INTO `userOrder` VALUES (243, 'f92b9f8f372e445fb6564cdd57aa3c3e', '1586234250274100006', 1, 1, '2020-04-07 12:37:30', '2020-04-10 12:37:30', '2020-04-07 12:37:37', NULL, '', '20.0', 2);
INSERT INTO `userOrder` VALUES (244, 'f92b9f8f372e445fb6564cdd57aa3c3e', '1586234688047100007', 1, 1, '2020-04-07 12:44:48', '2020-04-10 12:44:48', '2020-04-07 12:44:57', NULL, '', '20.0', 2);
INSERT INTO `userOrder` VALUES (245, '7c9fdfa3177042a08766aed29e7de6cd', '1586236398447100008', 1, 1, '2020-04-07 13:13:20', '2020-04-10 13:13:20', NULL, NULL, '', '95690.01', 1);
INSERT INTO `userOrder` VALUES (246, '7c9fdfa3177042a08766aed29e7de6cd', '1586239367643100009', 1, 1, '2020-04-07 14:02:47', '2020-04-10 14:02:47', NULL, NULL, '', '25740000.0', NULL);
INSERT INTO `userOrder` VALUES (247, '7c9fdfa3177042a08766aed29e7de6cd', '1586239408329100010', 1, 1, '2020-04-07 14:03:28', '2020-04-10 14:03:28', NULL, NULL, '', '260060.00', 1);
INSERT INTO `userOrder` VALUES (248, '7c9fdfa3177042a08766aed29e7de6cd', '1586241057285100011', 1, 1, '2020-04-07 14:30:58', '2020-04-10 14:30:58', NULL, NULL, '', '12540.00', 1);
INSERT INTO `userOrder` VALUES (249, '7c9fdfa3177042a08766aed29e7de6cd', '1586241316139100012', 1, 1, '2020-04-07 14:35:17', '2020-04-10 14:35:17', NULL, NULL, '', '33049.63', 1);
INSERT INTO `userOrder` VALUES (250, '7c9fdfa3177042a08766aed29e7de6cd', '1586241445141100013', 1, 1, '2020-04-07 14:37:25', '2020-04-10 14:37:25', NULL, NULL, '', '5700.00', 1);
INSERT INTO `userOrder` VALUES (251, '7c9fdfa3177042a08766aed29e7de6cd', '1586241576341100014', 1, 1, '2020-04-07 14:39:36', '2020-04-10 14:39:36', NULL, NULL, '', '20.0', NULL);
INSERT INTO `userOrder` VALUES (252, '7c9fdfa3177042a08766aed29e7de6cd', '1586242155794100015', 1, 2, '2020-04-07 14:49:15', '2020-04-17 00:00:00', '2020-04-07 14:51:05', NULL, '基督教生活环境可能是大家好开始库连接水电费\n开始计划书可能是大家好\n了水电费就开始\n端口号开始的fjs入第及时发送连连看时空来电好解释圣诞快乐火炬大厦卡萨丁卷发梳接口可视对讲三号地块是SDK铝合金肯德基克雷登斯圣诞节快乐或所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所水电费尽快若若若若若若若若若若若若若若若若若若水电费尽快若所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所打火机扩若所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所位会或或或或或或或或或或或或或或或或或或或或或或或或或或或或或或或或或或或或或SDK链接赋加快速度水电费技术的端口号过扩军多或若若若若若若若若或或或或或或或或或或或或或或或或或或或或或或二回或军偶铺所或或或或或或或所所所所所所所所所所所所所所所所所所所所所所所等会偶所或若所所所所所所所所所若若所若若若若若若若若若若若若若若若所若所若所若所若所若所若所若所若所若所若所二VPN木覅无法哈哈哈哈哈哈哈哈哈哈回环往复无法挽回无法挽回无法挽回无法挽回无法挽回无法挽回所所所所所所所所所所所所水电费尽快若若若若若若若若若若若若若若若若若若水电费尽快若所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所打火机扩若所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所位会或或或或或或或或或或或或或或或或或或或或或或或或或或或或或或或或或或或或或SDK链接赋加快速度水电费技术的端口号过扩军多或若若若若若若若若或或或或或或或或或或或或或或或或或或或或或或二回或军偶铺所或或或或或或或所所所所所所所所所所所所所所所所所所所所所所所等会偶所或所所所所所所所所所所所所水电费尽快若若若若若若若若若若若若若若若若若若水电费尽快若所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所打火机若所所所所所所所所所若若所若若若若若若若若若若若若若若若所若所若所若所若所若所若所若所若所若所若所二VPN木覅无法哈哈哈哈哈哈哈哈哈哈回环往复无法挽回无法挽回无法挽回无法挽回无法挽回无法挽回无法挽回无法挽回无法挽回无法挽回', '5399.0', 2);
INSERT INTO `userOrder` VALUES (253, '7c9fdfa3177042a08766aed29e7de6cd', '1586242549535100016', 1, 1, '2020-04-07 14:55:49', '2020-04-10 14:55:49', '2020-04-07 14:55:55', NULL, '', '2188.0', 2);
INSERT INTO `userOrder` VALUES (254, '7c9fdfa3177042a08766aed29e7de6cd', '1586242588420100017', 1, 1, '2020-04-07 14:56:28', '2020-04-10 14:56:28', '2020-04-07 14:56:33', NULL, '', '3350.0', 2);
INSERT INTO `userOrder` VALUES (255, '7c9fdfa3177042a08766aed29e7de6cd', '1586242643719100018', 1, 1, '2020-04-07 14:57:23', '2020-04-10 14:57:23', '2020-04-07 14:57:28', NULL, '', '3350.0', 2);
INSERT INTO `userOrder` VALUES (256, '7c9fdfa3177042a08766aed29e7de6cd', '1586242673368100019', 1, 1, '2020-04-07 14:57:54', '2020-04-10 14:57:54', '2020-04-07 14:57:59', NULL, '', '10822.00', 2);
INSERT INTO `userOrder` VALUES (257, '7c9fdfa3177042a08766aed29e7de6cd', '1586242712385100020', 1, 1, '2020-04-07 14:58:32', '2020-04-10 14:58:32', '2020-04-07 14:58:39', NULL, '', '3446.17', 2);
INSERT INTO `userOrder` VALUES (258, '7c9fdfa3177042a08766aed29e7de6cd', '1586242785604100021', 1, 1, '2020-04-07 14:59:47', '2020-04-10 14:59:47', '2020-04-07 14:59:54', NULL, '', '25080.00', 2);
INSERT INTO `userOrder` VALUES (259, '7c9fdfa3177042a08766aed29e7de6cd', '1586242817938100022', 1, 1, '2020-04-07 15:00:18', '2020-04-10 15:00:18', '2020-04-07 15:00:24', NULL, '', '773.0', 2);
INSERT INTO `userOrder` VALUES (260, '7c9fdfa3177042a08766aed29e7de6cd', '1586242818433100023', NULL, NULL, '2020-04-07 15:00:18', NULL, NULL, NULL, NULL, '773.0', 1);
INSERT INTO `userOrder` VALUES (261, '7c9fdfa3177042a08766aed29e7de6cd', '1586242833922100024', 1, 1, '2020-04-07 15:00:33', '2020-04-10 15:00:34', '2020-04-07 15:00:39', NULL, '', '2920.01', 2);
INSERT INTO `userOrder` VALUES (262, '7c9fdfa3177042a08766aed29e7de6cd', '1586242849011100025', 1, 1, '2020-04-07 15:00:49', '2020-04-10 15:00:49', '2020-04-07 15:00:55', NULL, '', '1299.0', 2);
INSERT INTO `userOrder` VALUES (263, '7c9fdfa3177042a08766aed29e7de6cd', '1586242862396100026', 1, 1, '2020-04-07 15:01:02', '2020-04-10 15:01:02', '2020-04-07 15:01:08', NULL, '', '3350.0', 2);
INSERT INTO `userOrder` VALUES (264, '7c9fdfa3177042a08766aed29e7de6cd', '1586242881229100027', 1, 1, '2020-04-07 15:01:21', '2020-04-10 15:01:21', '2020-04-07 15:01:29', NULL, '', '265.09', 2);
INSERT INTO `userOrder` VALUES (265, '7c9fdfa3177042a08766aed29e7de6cd', '1586242911593100028', 1, 1, '2020-04-07 15:01:51', '2020-04-10 15:01:51', '2020-04-07 15:01:56', NULL, '', '7890.0', 2);
INSERT INTO `userOrder` VALUES (266, '7c9fdfa3177042a08766aed29e7de6cd', '1586242927495100029', 1, 1, '2020-04-07 15:02:07', '2020-04-10 15:02:07', '2020-04-07 15:02:12', NULL, '', '1299.0', 2);
INSERT INTO `userOrder` VALUES (267, '7c9fdfa3177042a08766aed29e7de6cd', '1586242942565100030', 1, 1, '2020-04-07 15:02:22', '2020-04-10 15:02:22', '2020-04-07 15:02:27', NULL, '', '7890.0', 2);
INSERT INTO `userOrder` VALUES (268, '7c9fdfa3177042a08766aed29e7de6cd', '1586242956836100031', 1, 1, '2020-04-07 15:02:36', '2020-04-10 15:02:37', '2020-04-07 15:02:42', NULL, '', '1499.0', 2);
INSERT INTO `userOrder` VALUES (269, '7c9fdfa3177042a08766aed29e7de6cd', '1586242990240100032', 1, 1, '2020-04-07 15:03:10', '2020-04-10 15:03:10', '2020-04-07 15:03:15', NULL, '', '3350.0', 2);
INSERT INTO `userOrder` VALUES (270, '7c9fdfa3177042a08766aed29e7de6cd', '1586243015914100033', 1, 1, '2020-04-07 15:03:36', '2020-04-10 15:03:36', '2020-04-07 15:03:41', NULL, '', '1299.0', 2);
INSERT INTO `userOrder` VALUES (271, '7c9fdfa3177042a08766aed29e7de6cd', '1586243033913100034', 1, 1, '2020-04-07 15:03:53', '2020-04-10 15:03:54', '2020-04-07 15:04:01', NULL, '', '3199.0', 2);
INSERT INTO `userOrder` VALUES (272, '7c9fdfa3177042a08766aed29e7de6cd', '1586247745389100035', 1, 1, '2020-04-07 16:22:25', '2020-04-10 16:22:25', '2020-04-07 16:22:31', NULL, '', '20.0', 2);
INSERT INTO `userOrder` VALUES (273, '7c9fdfa3177042a08766aed29e7de6cd', '1586247786562100036', 1, 1, '2020-04-07 16:23:06', '2020-04-10 16:23:06', '2020-04-07 16:23:11', NULL, '', '260000.0', 2);
INSERT INTO `userOrder` VALUES (274, '7c9fdfa3177042a08766aed29e7de6cd', '1586247835094100037', 1, 1, '2020-04-07 16:23:55', '2020-04-10 16:23:55', '2020-04-07 16:23:59', NULL, '', '20.0', 2);
INSERT INTO `userOrder` VALUES (275, '7c9fdfa3177042a08766aed29e7de6cd', '1586247859779100038', 1, 1, '2020-04-07 16:24:19', '2020-04-10 16:24:20', '2020-04-07 16:24:24', NULL, '', '20.0', 2);
INSERT INTO `userOrder` VALUES (276, '7c9fdfa3177042a08766aed29e7de6cd', '1586247919566100039', 1, 1, '2020-04-07 16:25:19', '2020-04-10 16:25:19', '2020-04-07 16:25:24', NULL, '', '20.0', 2);
INSERT INTO `userOrder` VALUES (277, '7c9fdfa3177042a08766aed29e7de6cd', '1586248026249100040', 1, 1, '2020-04-07 16:27:06', '2020-04-10 16:27:06', '2020-04-07 16:27:10', NULL, '', '3500.0', 2);
INSERT INTO `userOrder` VALUES (278, '7c9fdfa3177042a08766aed29e7de6cd', '1586248059120100041', 1, 1, '2020-04-07 16:27:39', '2020-04-10 16:27:39', '2020-04-07 16:27:43', NULL, '', '5399.0', 2);
INSERT INTO `userOrder` VALUES (279, '7c9fdfa3177042a08766aed29e7de6cd', '1586248122702100042', 1, 1, '2020-04-07 16:28:42', '2020-04-10 16:28:42', '2020-04-07 16:28:47', NULL, '', '5399.0', 2);
INSERT INTO `userOrder` VALUES (280, '7c9fdfa3177042a08766aed29e7de6cd', '1586248190988100043', 1, 1, '2020-04-07 16:29:51', '2020-04-10 16:29:51', '2020-04-07 16:29:55', NULL, '', '10398.0', 2);
INSERT INTO `userOrder` VALUES (281, 'f92b9f8f372e445fb6564cdd57aa3c3e', '1586250799087100044', NULL, NULL, '2020-04-07 17:13:19', NULL, NULL, NULL, NULL, '1299.0', 1);
INSERT INTO `userOrder` VALUES (282, 'f92b9f8f372e445fb6564cdd57aa3c3e', '1586250918072100045', NULL, NULL, '2020-04-07 17:15:18', NULL, NULL, NULL, NULL, '7890.0', 1);
INSERT INTO `userOrder` VALUES (283, 'f92b9f8f372e445fb6564cdd57aa3c3e', '1586250971675100046', NULL, NULL, '2020-04-07 17:16:11', NULL, NULL, NULL, NULL, '2188.0', 1);
INSERT INTO `userOrder` VALUES (284, 'f92b9f8f372e445fb6564cdd57aa3c3e', '1586251146540100047', NULL, NULL, '2020-04-07 17:19:06', NULL, NULL, NULL, NULL, '20.0', 1);
INSERT INTO `userOrder` VALUES (285, 'f92b9f8f372e445fb6564cdd57aa3c3e', '1586251393200100048', NULL, NULL, '2020-04-07 17:23:13', NULL, NULL, NULL, NULL, '3350.0', 1);
INSERT INTO `userOrder` VALUES (286, '7c9fdfa3177042a08766aed29e7de6cd', '1586252395609100049', NULL, NULL, '2020-04-07 17:39:55', NULL, NULL, NULL, NULL, '5399.0', 1);
INSERT INTO `userOrder` VALUES (287, 'f92b9f8f372e445fb6564cdd57aa3c3e', '1586252630919100050', 1, 1, '2020-04-07 17:43:51', '2020-04-10 17:43:51', '2020-04-07 17:43:57', NULL, '', '3596.0', 2);
INSERT INTO `userOrder` VALUES (288, 'f92b9f8f372e445fb6564cdd57aa3c3e', '1586252980197100051', 1, 1, '2020-04-07 17:49:40', '2020-04-10 17:49:40', '2020-04-07 17:49:48', NULL, '', '20.0', 2);
INSERT INTO `userOrder` VALUES (289, '7c9fdfa3177042a08766aed29e7de6cd', '1586254017053100052', 1, 2, '2020-04-07 18:06:57', '2020-04-15 00:00:00', '2020-04-07 18:07:25', NULL, '手电筒感受到和v给对方好多个申达股份SD敢达', '3350.0', 2);
INSERT INTO `userOrder` VALUES (290, '7c9fdfa3177042a08766aed29e7de6cd', '1586254132885100053', 1, 2, '2020-04-07 18:08:52', '2020-04-15 00:00:00', '2020-04-07 18:09:25', NULL, '更好地发给的', '20.0', 2);
INSERT INTO `userOrder` VALUES (291, 'f92b9f8f372e445fb6564cdd57aa3c3e', '1586255036074100054', 1, 1, '2020-04-07 18:23:56', '2020-04-10 18:23:56', '2020-04-07 18:24:02', NULL, '', '3350.0', 2);
INSERT INTO `userOrder` VALUES (292, 'f92b9f8f372e445fb6564cdd57aa3c3e', '1586255412437100055', 1, 1, '2020-04-07 18:30:12', '2020-04-10 18:30:12', '2020-04-07 18:30:19', NULL, '', '20.0', 2);
INSERT INTO `userOrder` VALUES (293, 'f92b9f8f372e445fb6564cdd57aa3c3e', '1586255796478100056', 1, 1, '2020-04-07 18:36:36', '2020-04-10 18:36:36', '2020-04-07 18:36:42', NULL, '', '20.0', 2);
INSERT INTO `userOrder` VALUES (294, 'f92b9f8f372e445fb6564cdd57aa3c3e', '1586255939932100057', 1, 1, '2020-04-07 18:39:00', '2020-04-10 18:39:00', '2020-04-07 18:39:06', NULL, '', '2898.0', 2);
INSERT INTO `userOrder` VALUES (295, 'f92b9f8f372e445fb6564cdd57aa3c3e', '1586256018429100058', 1, 1, '2020-04-07 18:40:18', '2020-04-10 18:40:18', '2020-04-07 18:40:25', NULL, '', '2898.0', 2);
INSERT INTO `userOrder` VALUES (296, 'f92b9f8f372e445fb6564cdd57aa3c3e', '1586256142953100059', NULL, NULL, '2020-04-07 18:42:23', NULL, NULL, NULL, NULL, '20.0', 1);
INSERT INTO `userOrder` VALUES (297, 'f92b9f8f372e445fb6564cdd57aa3c3e', '1586256369960100060', 1, 1, '2020-04-07 18:46:10', '2020-04-10 18:46:10', '2020-04-07 18:46:16', NULL, '', '2188.0', 2);
INSERT INTO `userOrder` VALUES (298, 'f92b9f8f372e445fb6564cdd57aa3c3e', '1586256939671100061', 1, 1, '2020-04-07 18:55:39', '2020-04-10 18:55:40', '2020-04-07 18:55:49', NULL, '', '20.0', 2);
INSERT INTO `userOrder` VALUES (299, 'f92b9f8f372e445fb6564cdd57aa3c3e', '1586259354495100062', NULL, NULL, '2020-04-07 19:35:54', NULL, NULL, NULL, NULL, '20.0', 1);
INSERT INTO `userOrder` VALUES (300, 'f92b9f8f372e445fb6564cdd57aa3c3e', '1586259365788100063', 1, 1, '2020-04-07 19:36:05', '2020-04-10 19:36:06', '2020-04-07 19:36:14', NULL, '', '10398.0', 2);
INSERT INTO `userOrder` VALUES (301, 'f92b9f8f372e445fb6564cdd57aa3c3e', '1586259481625100064', 1, 1, '2020-04-07 19:38:01', '2020-04-10 19:38:01', '2020-04-07 19:38:08', NULL, '', '3596.0', 2);
INSERT INTO `userOrder` VALUES (302, 'f92b9f8f372e445fb6564cdd57aa3c3e', '1586259951154100065', 1, 1, '2020-04-07 19:45:51', '2020-04-10 19:45:51', '2020-04-07 19:45:58', NULL, '', '20.0', 2);
INSERT INTO `userOrder` VALUES (303, 'f92b9f8f372e445fb6564cdd57aa3c3e', '1586260308241100066', NULL, NULL, '2020-04-07 19:51:48', NULL, NULL, NULL, NULL, '7890.0', 1);
INSERT INTO `userOrder` VALUES (304, '7c9fdfa3177042a08766aed29e7de6cd', '1586260769216100067', 1, 1, '2020-04-07 19:59:29', '2020-04-10 19:59:29', '2020-04-07 19:59:35', NULL, '', '3199.0', 2);
INSERT INTO `userOrder` VALUES (305, 'f92b9f8f372e445fb6564cdd57aa3c3e', '1586261244406100068', 1, 1, '2020-04-07 20:07:24', '2020-04-10 20:07:24', '2020-04-07 20:07:39', NULL, '', '20.0', 2);
INSERT INTO `userOrder` VALUES (306, 'f92b9f8f372e445fb6564cdd57aa3c3e', '1586261391127100069', 1, 1, '2020-04-07 20:09:51', '2020-04-10 20:09:51', '2020-04-07 20:10:07', NULL, '', '5199.0', 2);
INSERT INTO `userOrder` VALUES (307, 'f92b9f8f372e445fb6564cdd57aa3c3e', '1586261446251100070', 1, 1, '2020-04-07 20:10:46', '2020-04-10 20:10:46', '2020-04-07 20:11:19', NULL, '', '1299.00', 2);
INSERT INTO `userOrder` VALUES (308, 'f92b9f8f372e445fb6564cdd57aa3c3e', '1586261497633100071', 1, 1, '2020-04-07 20:11:37', '2020-04-10 20:11:38', '2020-04-07 20:12:00', NULL, '', '20.0', 2);
INSERT INTO `userOrder` VALUES (309, 'f92b9f8f372e445fb6564cdd57aa3c3e', '1586262716564100072', 1, 1, '2020-04-07 20:31:56', '2020-04-10 20:31:56', '2020-04-07 20:32:37', NULL, '', '2898.0', 2);
INSERT INTO `userOrder` VALUES (310, 'f92b9f8f372e445fb6564cdd57aa3c3e', '1586262874435100073', 1, 1, '2020-04-07 20:34:34', '2020-04-10 20:34:34', '2020-04-07 20:36:18', NULL, '', '30576.0', 2);
INSERT INTO `userOrder` VALUES (311, '7c9fdfa3177042a08766aed29e7de6cd', '1586263101576100074', NULL, NULL, '2020-04-07 20:38:21', NULL, NULL, NULL, NULL, '10398.0', 1);
INSERT INTO `userOrder` VALUES (312, 'f92b9f8f372e445fb6564cdd57aa3c3e', '1586263923536100075', 1, 1, '2020-04-07 20:52:03', '2020-04-10 20:52:03', '2020-04-07 20:52:26', NULL, '', '3596.0', 2);
INSERT INTO `userOrder` VALUES (313, 'f92b9f8f372e445fb6564cdd57aa3c3e', '1586263958916100076', NULL, NULL, '2020-04-07 20:52:39', NULL, NULL, NULL, NULL, '20.0', 1);
INSERT INTO `userOrder` VALUES (314, '7c9fdfa3177042a08766aed29e7de6cd', '1586264034043100077', NULL, NULL, '2020-04-07 20:53:54', NULL, NULL, NULL, NULL, '5399.0', 1);
INSERT INTO `userOrder` VALUES (315, 'f92b9f8f372e445fb6564cdd57aa3c3e', '1586309784640100001', 1, 1, '2020-04-08 09:36:24', '2020-04-11 09:36:24', '2020-04-08 09:37:16', NULL, '', '7890.0', 2);
INSERT INTO `userOrder` VALUES (316, 'f92b9f8f372e445fb6564cdd57aa3c3e', '1586310585325100002', NULL, NULL, '2020-04-08 09:49:45', NULL, NULL, NULL, NULL, '1299.0', 1);
INSERT INTO `userOrder` VALUES (317, 'f92b9f8f372e445fb6564cdd57aa3c3e', '1586310643530100003', 1, 1, '2020-04-08 09:50:43', '2020-04-11 09:50:43', '2020-04-08 09:50:50', NULL, '', '1140.0', 2);
INSERT INTO `userOrder` VALUES (318, '7c9fdfa3177042a08766aed29e7de6cd', '1586310968950100004', 1, 1, '2020-04-08 09:56:09', '2020-04-11 09:56:09', '2020-04-08 09:56:14', NULL, '', '20.00', 2);
INSERT INTO `userOrder` VALUES (319, 'f92b9f8f372e445fb6564cdd57aa3c3e', '1586311132950100005', 1, 1, '2020-04-08 09:58:53', '2020-04-11 09:58:53', '2020-04-08 09:58:59', NULL, '', '2898.0', 2);
INSERT INTO `userOrder` VALUES (320, 'f92b9f8f372e445fb6564cdd57aa3c3e', '1586311181878100006', 1, 1, '2020-04-08 09:59:42', '2020-04-11 09:59:42', '2020-04-08 09:59:49', NULL, '', '1289.0', 2);
INSERT INTO `userOrder` VALUES (321, 'f92b9f8f372e445fb6564cdd57aa3c3e', '1586311337409100007', 1, 1, '2020-04-08 10:02:17', '2020-04-11 10:02:17', '2020-04-08 10:02:25', NULL, '', '20.0', 2);
INSERT INTO `userOrder` VALUES (322, 'f92b9f8f372e445fb6564cdd57aa3c3e', '1586311853807100008', 1, 1, '2020-04-08 10:10:53', '2020-04-11 10:10:54', '2020-04-08 10:11:00', NULL, '', '20.0', 2);
INSERT INTO `userOrder` VALUES (323, 'f92b9f8f372e445fb6564cdd57aa3c3e', '1586312338768100009', 1, 1, '2020-04-08 10:18:58', '2020-04-11 10:18:59', '2020-04-08 10:19:05', NULL, '', '20.0', 2);
INSERT INTO `userOrder` VALUES (324, 'f92b9f8f372e445fb6564cdd57aa3c3e', '1586312622584100010', 1, 1, '2020-04-08 10:23:42', '2020-04-11 10:23:42', '2020-04-08 10:23:49', NULL, '', '20.0', 2);
INSERT INTO `userOrder` VALUES (325, 'f92b9f8f372e445fb6564cdd57aa3c3e', '1586312817978100011', 1, 1, '2020-04-08 10:26:58', '2020-04-11 10:26:58', '2020-04-08 10:27:04', NULL, '', '2898.0', 2);
INSERT INTO `userOrder` VALUES (326, 'f92b9f8f372e445fb6564cdd57aa3c3e', '1586314253265100012', 1, 1, '2020-04-08 10:50:53', '2020-04-11 10:50:53', '2020-04-08 10:50:59', NULL, '', '3596.0', 2);
INSERT INTO `userOrder` VALUES (327, 'f92b9f8f372e445fb6564cdd57aa3c3e', '1586314313589100013', 1, 1, '2020-04-08 10:51:53', '2020-04-11 10:51:53', '2020-04-08 10:52:01', NULL, '', '1499.0', 2);
INSERT INTO `userOrder` VALUES (328, 'f92b9f8f372e445fb6564cdd57aa3c3e', '1586314350884100014', NULL, NULL, '2020-04-08 10:52:31', NULL, NULL, NULL, NULL, '30576.0', 1);
INSERT INTO `userOrder` VALUES (329, 'f92b9f8f372e445fb6564cdd57aa3c3e', '1586314367766100015', 1, 1, '2020-04-08 10:52:48', '2020-04-11 10:52:48', '2020-04-08 10:52:55', NULL, '', '6564.00', 2);
INSERT INTO `userOrder` VALUES (330, '7c9fdfa3177042a08766aed29e7de6cd', '1586315362708100016', 1, 1, '2020-04-08 11:09:22', '2020-04-17 00:00:00', '2020-04-08 11:09:41', NULL, '黄金鸡块包放进开不了机', '20.0', 2);
INSERT INTO `userOrder` VALUES (331, 'f92b9f8f372e445fb6564cdd57aa3c3e', '1586325905224100017', 1, 1, '2020-04-08 14:05:05', '2020-04-11 14:05:05', '2020-04-08 14:05:12', NULL, '', '20.0', 2);
INSERT INTO `userOrder` VALUES (332, 'f92b9f8f372e445fb6564cdd57aa3c3e', '1586326092047100018', 1, 1, '2020-04-08 14:08:12', '2020-04-11 14:08:12', '2020-04-08 14:08:19', NULL, '', '3350.0', 2);
INSERT INTO `userOrder` VALUES (333, 'f92b9f8f372e445fb6564cdd57aa3c3e', '1586326190022100019', 1, 1, '2020-04-08 14:09:50', '2020-04-11 14:09:50', '2020-04-08 14:09:56', NULL, '', '1140.0', 2);
INSERT INTO `userOrder` VALUES (334, 'f92b9f8f372e445fb6564cdd57aa3c3e', '1586326397173100020', 1, 1, '2020-04-08 14:13:17', '2020-04-11 14:13:17', '2020-04-08 14:13:24', NULL, '', '1299.0', 2);
INSERT INTO `userOrder` VALUES (335, 'f92b9f8f372e445fb6564cdd57aa3c3e', '1586326717239100021', 1, 1, '2020-04-08 14:18:37', '2020-04-11 14:18:37', '2020-04-08 14:18:44', NULL, '', '2898.0', 2);
INSERT INTO `userOrder` VALUES (336, 'f92b9f8f372e445fb6564cdd57aa3c3e', '1586327109695100022', 1, 1, '2020-04-08 14:25:09', '2020-04-11 14:25:10', '2020-04-08 14:25:16', NULL, '', '20.0', 2);
INSERT INTO `userOrder` VALUES (337, 'f92b9f8f372e445fb6564cdd57aa3c3e', '1586327109927100022', NULL, NULL, '2020-04-08 14:25:10', NULL, NULL, NULL, NULL, '20.0', 1);
INSERT INTO `userOrder` VALUES (338, 'f92b9f8f372e445fb6564cdd57aa3c3e', '1586327483882100023', 1, 1, '2020-04-08 14:31:24', '2020-04-11 14:31:24', '2020-04-08 14:31:34', NULL, '', '3350.0', 2);
INSERT INTO `userOrder` VALUES (339, 'f92b9f8f372e445fb6564cdd57aa3c3e', '1586328116902100024', 1, 1, '2020-04-08 14:41:57', '2020-04-11 14:41:57', '2020-04-08 14:42:05', NULL, '', '7890.0', 2);
INSERT INTO `userOrder` VALUES (340, 'f92b9f8f372e445fb6564cdd57aa3c3e', '1586328249149100025', 1, 1, '2020-04-08 14:44:10', '2020-04-11 14:44:10', '2020-04-08 14:44:16', NULL, '', '773.0', 2);
INSERT INTO `userOrder` VALUES (341, 'f92b9f8f372e445fb6564cdd57aa3c3e', '1586328739243100026', 1, 1, '2020-04-08 14:52:19', '2020-04-11 14:52:19', '2020-04-08 14:52:26', NULL, '', '7890.0', 2);
INSERT INTO `userOrder` VALUES (342, 'f92b9f8f372e445fb6564cdd57aa3c3e', '1586328858883100027', 1, 1, '2020-04-08 14:54:19', '2020-04-11 14:54:19', '2020-04-08 14:54:25', NULL, '', '260000.0', 2);
INSERT INTO `userOrder` VALUES (343, 'f92b9f8f372e445fb6564cdd57aa3c3e', '1586329006944100028', 1, 1, '2020-04-08 14:56:47', '2020-04-11 14:56:47', '2020-04-08 14:56:57', NULL, '', '20.0', 2);
INSERT INTO `userOrder` VALUES (344, 'f92b9f8f372e445fb6564cdd57aa3c3e', '1586329384401100029', 1, 1, '2020-04-08 15:03:04', '2020-04-11 15:03:04', '2020-04-08 15:03:11', NULL, '', '1140.0', 2);
INSERT INTO `userOrder` VALUES (345, 'f92b9f8f372e445fb6564cdd57aa3c3e', '1586329935910100030', 1, 1, '2020-04-08 15:12:16', '2020-04-11 15:12:16', '2020-04-08 15:12:22', NULL, '', '7890.0', 2);
INSERT INTO `userOrder` VALUES (346, 'f92b9f8f372e445fb6564cdd57aa3c3e', '1586330046300100031', 1, 1, '2020-04-08 15:14:06', '2020-04-11 15:14:06', '2020-04-08 15:14:13', NULL, '', '20.0', 2);
INSERT INTO `userOrder` VALUES (347, 'f92b9f8f372e445fb6564cdd57aa3c3e', '1586330187986100032', 1, 1, '2020-04-08 15:16:28', '2020-04-11 15:16:28', '2020-04-08 15:16:33', NULL, '', '10398.0', 2);
INSERT INTO `userOrder` VALUES (348, 'f92b9f8f372e445fb6564cdd57aa3c3e', '1586330322781100033', 1, 1, '2020-04-08 15:18:43', '2020-04-11 15:18:43', '2020-04-08 15:18:48', NULL, '', '3596.0', 2);
INSERT INTO `userOrder` VALUES (349, 'f92b9f8f372e445fb6564cdd57aa3c3e', '1586330418325100034', 1, 1, '2020-04-08 15:20:18', '2020-04-11 15:20:18', '2020-04-08 15:20:23', NULL, '', '3596.0', 2);
INSERT INTO `userOrder` VALUES (350, 'f92b9f8f372e445fb6564cdd57aa3c3e', '1586330485339100035', 1, 1, '2020-04-08 15:21:25', '2020-04-11 15:21:26', '2020-04-08 15:21:32', NULL, '', '20.0', 2);
INSERT INTO `userOrder` VALUES (351, 'f92b9f8f372e445fb6564cdd57aa3c3e', '1586330774697100036', 1, 1, '2020-04-08 15:26:14', '2020-04-11 15:26:15', '2020-04-08 15:26:20', NULL, '', '20.0', 2);
INSERT INTO `userOrder` VALUES (352, 'f92b9f8f372e445fb6564cdd57aa3c3e', '1586330857867100037', 1, 1, '2020-04-08 15:27:38', '2020-04-11 15:27:38', '2020-04-08 15:27:43', NULL, '', '5399.0', 2);
INSERT INTO `userOrder` VALUES (353, '7c9fdfa3177042a08766aed29e7de6cd', '1586330898117100038', NULL, NULL, '2020-04-08 15:28:18', NULL, NULL, NULL, NULL, '1590.54', 1);
INSERT INTO `userOrder` VALUES (354, 'f92b9f8f372e445fb6564cdd57aa3c3e', '1586331023560100039', 1, 1, '2020-04-08 15:30:24', '2020-04-11 15:30:24', '2020-04-08 15:30:33', NULL, '', '3350.0', 2);
INSERT INTO `userOrder` VALUES (355, '7c9fdfa3177042a08766aed29e7de6cd', '1586331051802100040', 1, 1, '2020-04-08 15:30:52', '2020-04-11 15:30:52', '2020-04-08 15:31:02', NULL, '', '21880.00', 2);
INSERT INTO `userOrder` VALUES (356, 'f92b9f8f372e445fb6564cdd57aa3c3e', '1586331235483100041', 1, 1, '2020-04-08 15:33:55', '2020-04-11 15:33:55', '2020-04-08 15:34:01', NULL, '', '20.0', 2);
INSERT INTO `userOrder` VALUES (357, 'f92b9f8f372e445fb6564cdd57aa3c3e', '1586331315312100042', 1, 1, '2020-04-08 15:35:15', '2020-04-11 15:35:15', '2020-04-08 15:35:22', NULL, '', '3500.0', 2);
INSERT INTO `userOrder` VALUES (358, 'f92b9f8f372e445fb6564cdd57aa3c3e', '1586331346315100043', 1, 1, '2020-04-08 15:35:46', '2020-04-11 15:35:46', '2020-04-08 15:35:53', NULL, '', '3596.0', 2);
INSERT INTO `userOrder` VALUES (359, 'f92b9f8f372e445fb6564cdd57aa3c3e', '1586331446671100044', 1, 1, '2020-04-08 15:37:26', '2020-04-11 15:37:27', '2020-04-08 15:37:33', NULL, '', '3596.0', 2);
INSERT INTO `userOrder` VALUES (360, 'f92b9f8f372e445fb6564cdd57aa3c3e', '1586331525220100045', 1, 1, '2020-04-08 15:38:45', '2020-04-11 15:38:45', '2020-04-08 15:38:51', NULL, '', '10398.0', 2);
INSERT INTO `userOrder` VALUES (361, 'f92b9f8f372e445fb6564cdd57aa3c3e', '1586331602215100046', 1, 1, '2020-04-08 15:40:02', '2020-04-11 15:40:02', '2020-04-08 15:40:07', NULL, '', '2898.0', 2);
INSERT INTO `userOrder` VALUES (362, 'f92b9f8f372e445fb6564cdd57aa3c3e', '1586331768296100047', 1, 1, '2020-04-08 15:42:48', '2020-04-11 15:42:48', '2020-04-08 15:42:55', NULL, '', '5399.0', 2);
INSERT INTO `userOrder` VALUES (363, 'f92b9f8f372e445fb6564cdd57aa3c3e', '1586331986991100048', 1, 1, '2020-04-08 15:46:27', '2020-04-11 15:46:27', '2020-04-08 15:46:35', NULL, '', '20.0', 2);
INSERT INTO `userOrder` VALUES (364, 'f92b9f8f372e445fb6564cdd57aa3c3e', '1586332437571100049', 1, 1, '2020-04-08 15:53:57', '2020-04-11 15:53:57', '2020-04-08 15:54:03', NULL, '', '20.0', 2);
INSERT INTO `userOrder` VALUES (365, 'f92b9f8f372e445fb6564cdd57aa3c3e', '1586332626695100050', 1, 1, '2020-04-08 15:57:06', '2020-04-11 15:57:07', '2020-04-08 15:57:13', NULL, '', '2898.0', 2);
INSERT INTO `userOrder` VALUES (366, '7c9fdfa3177042a08766aed29e7de6cd', '1586332960262100051', 1, 1, '2020-04-08 16:02:40', '2020-04-11 16:02:40', '2020-04-08 16:02:52', NULL, '', '11400.00', 2);
INSERT INTO `userOrder` VALUES (367, '7c9fdfa3177042a08766aed29e7de6cd', '1586333067632100052', 1, 1, '2020-04-08 16:04:27', '2020-04-11 16:04:27', '2020-04-08 16:04:34', NULL, '', '80.00', 2);
INSERT INTO `userOrder` VALUES (368, '7c9fdfa3177042a08766aed29e7de6cd', '1586333160811100053', 1, 1, '2020-04-08 16:06:01', '2020-04-11 16:06:01', '2020-04-08 16:06:07', NULL, '', '120.00', 2);
INSERT INTO `userOrder` VALUES (369, '7c9fdfa3177042a08766aed29e7de6cd', '1586333201012100054', 1, 1, '2020-04-08 16:06:41', '2020-04-11 16:06:41', '2020-04-08 16:06:55', NULL, '', '62388.00', 2);
INSERT INTO `userOrder` VALUES (370, 'f92b9f8f372e445fb6564cdd57aa3c3e', '1586333275753100055', 1, 1, '2020-04-08 16:07:55', '2020-04-11 16:07:56', '2020-04-08 16:08:01', NULL, '', '20.0', 2);
INSERT INTO `userOrder` VALUES (371, '7c9fdfa3177042a08766aed29e7de6cd', '1586333333650100056', 1, 1, '2020-04-08 16:08:56', '2020-04-11 16:09:16', '2020-04-08 16:09:22', NULL, '', '97355.00', 2);
INSERT INTO `userOrder` VALUES (372, 'f92b9f8f372e445fb6564cdd57aa3c3e', '1586333608038100057', 1, 1, '2020-04-08 16:13:28', '2020-04-11 16:13:28', '2020-04-08 16:13:34', NULL, '', '3596.0', 2);
INSERT INTO `userOrder` VALUES (373, 'f92b9f8f372e445fb6564cdd57aa3c3e', '1586333708733100058', 1, 1, '2020-04-08 16:15:08', '2020-04-11 16:15:09', '2020-04-08 16:15:14', NULL, '', '3596.0', 2);
INSERT INTO `userOrder` VALUES (374, 'f92b9f8f372e445fb6564cdd57aa3c3e', '1586333814265100059', 1, 1, '2020-04-08 16:16:54', '2020-04-11 16:16:54', '2020-04-08 16:16:59', NULL, '', '3596.0', 2);
INSERT INTO `userOrder` VALUES (375, 'f92b9f8f372e445fb6564cdd57aa3c3e', '1586333846163100060', 1, 1, '2020-04-08 16:17:26', '2020-04-11 16:17:26', '2020-04-08 16:17:31', NULL, '', '20.0', 2);
INSERT INTO `userOrder` VALUES (376, 'f92b9f8f372e445fb6564cdd57aa3c3e', '1586333882661100061', 1, 1, '2020-04-08 16:18:02', '2020-04-11 16:18:03', '2020-04-08 16:18:08', NULL, '', '1299.0', 2);
INSERT INTO `userOrder` VALUES (377, 'f92b9f8f372e445fb6564cdd57aa3c3e', '1586333947479100062', 1, 1, '2020-04-08 16:19:07', '2020-04-11 16:19:07', '2020-04-08 16:19:14', NULL, '', '3596.0', 2);
INSERT INTO `userOrder` VALUES (378, 'f92b9f8f372e445fb6564cdd57aa3c3e', '1586333977321100063', 1, 1, '2020-04-08 16:19:37', '2020-04-11 16:19:37', '2020-04-08 16:19:42', NULL, '', '20.0', 2);
INSERT INTO `userOrder` VALUES (379, 'f92b9f8f372e445fb6564cdd57aa3c3e', '1586334172418100064', NULL, NULL, '2020-04-08 16:22:52', NULL, NULL, NULL, NULL, '20.0', 1);
INSERT INTO `userOrder` VALUES (380, 'f92b9f8f372e445fb6564cdd57aa3c3e', '1586334265439100065', 1, 1, '2020-04-08 16:24:25', '2020-04-11 16:24:25', '2020-04-08 16:24:31', NULL, '', '5399.0', 2);
INSERT INTO `userOrder` VALUES (381, 'f92b9f8f372e445fb6564cdd57aa3c3e', '1586334391883100066', 1, 1, '2020-04-08 16:26:32', '2020-04-11 16:26:32', '2020-04-08 16:26:37', NULL, '', '3500.0', 2);
INSERT INTO `userOrder` VALUES (382, 'f92b9f8f372e445fb6564cdd57aa3c3e', '1586334419560100067', 1, 1, '2020-04-08 16:26:59', '2020-04-11 16:27:00', '2020-04-08 16:27:06', NULL, '', '10398.0', 2);
INSERT INTO `userOrder` VALUES (383, 'f92b9f8f372e445fb6564cdd57aa3c3e', '1586334619735100068', 1, 1, '2020-04-08 16:30:20', '2020-04-11 16:30:20', '2020-04-08 16:30:26', NULL, '', '20.0', 2);
INSERT INTO `userOrder` VALUES (384, 'f92b9f8f372e445fb6564cdd57aa3c3e', '1586334735964100069', 1, 1, '2020-04-08 16:32:16', '2020-04-11 16:32:16', '2020-04-08 16:32:22', NULL, '', '3596.0', 2);
INSERT INTO `userOrder` VALUES (385, 'f92b9f8f372e445fb6564cdd57aa3c3e', '1586334862093100070', NULL, NULL, '2020-04-08 16:34:22', NULL, NULL, NULL, NULL, '20.0', 1);
INSERT INTO `userOrder` VALUES (386, 'f92b9f8f372e445fb6564cdd57aa3c3e', '1586334974919100071', NULL, NULL, '2020-04-08 16:36:15', NULL, NULL, NULL, NULL, '1299.0', 1);
INSERT INTO `userOrder` VALUES (387, 'f92b9f8f372e445fb6564cdd57aa3c3e', '1586335078755100072', NULL, NULL, '2020-04-08 16:37:59', NULL, NULL, NULL, NULL, '3350.0', 1);
INSERT INTO `userOrder` VALUES (388, 'f92b9f8f372e445fb6564cdd57aa3c3e', '1586335429346100073', NULL, NULL, '2020-04-08 16:43:49', NULL, NULL, NULL, NULL, '1499.0', 1);
INSERT INTO `userOrder` VALUES (389, 'f92b9f8f372e445fb6564cdd57aa3c3e', '1586335617675100074', 1, 1, '2020-04-08 16:46:57', '2020-04-11 16:46:58', '2020-04-08 16:47:02', NULL, '', '20.0', 2);
INSERT INTO `userOrder` VALUES (390, 'f92b9f8f372e445fb6564cdd57aa3c3e', '1586335781667100075', 1, 1, '2020-04-08 16:49:41', '2020-04-11 16:49:42', '2020-04-08 16:49:46', NULL, '', '20.0', 2);
INSERT INTO `userOrder` VALUES (391, 'f92b9f8f372e445fb6564cdd57aa3c3e', '1586335946450100076', 1, 1, '2020-04-08 16:52:26', '2020-04-11 16:52:26', '2020-04-08 16:52:31', NULL, '', '1140.0', 2);
INSERT INTO `userOrder` VALUES (392, 'f92b9f8f372e445fb6564cdd57aa3c3e', '1586336175680100077', 1, 1, '2020-04-08 16:56:15', '2020-04-11 16:56:16', '2020-04-08 16:56:21', NULL, '', '20.0', 2);
INSERT INTO `userOrder` VALUES (393, 'f92b9f8f372e445fb6564cdd57aa3c3e', '1586336297988100078', 1, 1, '2020-04-08 16:58:18', '2020-04-11 16:58:18', '2020-04-08 16:58:24', NULL, '', '3350.0', 2);
INSERT INTO `userOrder` VALUES (394, 'f92b9f8f372e445fb6564cdd57aa3c3e', '1586336332833100079', 1, 1, '2020-04-08 16:58:52', '2020-04-11 16:58:53', '2020-04-08 16:58:58', NULL, '', '20.0', 2);
INSERT INTO `userOrder` VALUES (395, 'f92b9f8f372e445fb6564cdd57aa3c3e', '1586336354634100080', 1, 1, '2020-04-08 16:59:14', '2020-04-11 16:59:14', '2020-04-08 16:59:22', NULL, '', '1499.0', 2);
INSERT INTO `userOrder` VALUES (396, 'f92b9f8f372e445fb6564cdd57aa3c3e', '1586336416827100081', 1, 1, '2020-04-08 17:00:19', '2020-04-11 17:00:19', '2020-04-08 17:00:27', NULL, '', '93696.00', 2);
INSERT INTO `userOrder` VALUES (397, 'f92b9f8f372e445fb6564cdd57aa3c3e', '1586336592904100082', 1, 1, '2020-04-08 17:03:13', '2020-04-11 17:03:13', '2020-04-08 17:03:21', NULL, '', '20.0', 2);
INSERT INTO `userOrder` VALUES (398, 'f92b9f8f372e445fb6564cdd57aa3c3e', '1586336975758100083', 1, 1, '2020-04-08 17:09:35', '2020-04-11 17:09:36', '2020-04-08 17:09:41', NULL, '', '20.0', 2);
INSERT INTO `userOrder` VALUES (399, 'f92b9f8f372e445fb6564cdd57aa3c3e', '1586337129312100084', 1, 1, '2020-04-08 17:12:09', '2020-04-11 17:12:09', '2020-04-08 17:12:14', NULL, '', '10398.0', 2);
INSERT INTO `userOrder` VALUES (400, 'f92b9f8f372e445fb6564cdd57aa3c3e', '1586337215075100085', 1, 1, '2020-04-08 17:13:35', '2020-04-11 17:13:35', '2020-04-08 17:13:40', NULL, '', '2898.0', 2);
INSERT INTO `userOrder` VALUES (401, '7c9fdfa3177042a08766aed29e7de6cd', '1586337264238100086', 1, 1, '2020-04-08 17:14:24', '2020-04-11 17:14:24', '2020-04-08 17:14:31', NULL, '', '27075.00', 2);
INSERT INTO `userOrder` VALUES (402, 'f92b9f8f372e445fb6564cdd57aa3c3e', '1586337299858100087', 1, 1, '2020-04-08 17:15:00', '2020-04-11 17:15:00', '2020-04-08 17:15:06', NULL, '', '2898.0', 2);
INSERT INTO `userOrder` VALUES (403, 'f92b9f8f372e445fb6564cdd57aa3c3e', '1586337755264100088', 1, 1, '2020-04-08 17:22:36', '2020-04-11 17:22:36', '2020-04-08 17:22:44', NULL, '', '2898.0', 2);
INSERT INTO `userOrder` VALUES (404, 'f92b9f8f372e445fb6564cdd57aa3c3e', '1586337845372100089', 1, 1, '2020-04-08 17:24:05', '2020-04-11 17:24:05', '2020-04-08 17:24:10', NULL, '', '2898.0', 2);
INSERT INTO `userOrder` VALUES (405, 'f92b9f8f372e445fb6564cdd57aa3c3e', '1586337984118100090', 1, 1, '2020-04-08 17:26:24', '2020-04-11 17:26:24', '2020-04-08 17:26:30', NULL, '', '2898.0', 2);
INSERT INTO `userOrder` VALUES (406, '7c9fdfa3177042a08766aed29e7de6cd', '1586338418729100091', 1, 1, '2020-04-08 17:33:38', '2020-04-11 17:34:05', '2020-04-08 17:34:12', NULL, '', '14384.00', 2);
INSERT INTO `userOrder` VALUES (407, '7c9fdfa3177042a08766aed29e7de6cd', '1586338663596100092', 1, 1, '2020-04-08 17:37:43', '2020-04-11 17:37:43', '2020-04-08 17:37:48', NULL, '', '20.0', 2);
INSERT INTO `userOrder` VALUES (408, 'f92b9f8f372e445fb6564cdd57aa3c3e', '1586340012414100093', 1, 1, '2020-04-08 18:00:12', '2020-04-11 18:00:12', '2020-04-08 18:00:23', NULL, '', '2898.0', 2);
INSERT INTO `userOrder` VALUES (409, 'f92b9f8f372e445fb6564cdd57aa3c3e', '1586340102626100094', NULL, NULL, '2020-04-08 18:01:42', NULL, NULL, NULL, NULL, '20.0', 1);
INSERT INTO `userOrder` VALUES (410, 'f92b9f8f372e445fb6564cdd57aa3c3e', '1586340129197100095', 1, 1, '2020-04-08 18:02:09', '2020-04-11 18:02:09', '2020-04-08 18:02:14', NULL, '', '3596.0', 2);
INSERT INTO `userOrder` VALUES (411, 'f92b9f8f372e445fb6564cdd57aa3c3e', '1586340288246100096', NULL, NULL, '2020-04-08 18:04:48', NULL, NULL, NULL, NULL, '20.0', 1);
INSERT INTO `userOrder` VALUES (412, 'f92b9f8f372e445fb6564cdd57aa3c3e', '1586340324722100097', 1, 1, '2020-04-08 18:05:24', '2020-04-11 18:05:25', '2020-04-08 18:05:33', NULL, '', '2898.0', 2);
INSERT INTO `userOrder` VALUES (413, 'f92b9f8f372e445fb6564cdd57aa3c3e', '1586340450254100098', 1, 1, '2020-04-08 18:07:30', '2020-04-11 18:07:30', '2020-04-08 18:07:36', NULL, '', '20.0', 2);
INSERT INTO `userOrder` VALUES (414, 'f92b9f8f372e445fb6564cdd57aa3c3e', '1586340577693100099', 1, 1, '2020-04-08 18:09:37', '2020-04-11 18:09:38', '2020-04-08 18:09:44', NULL, '', '20.0', 2);
INSERT INTO `userOrder` VALUES (415, 'f92b9f8f372e445fb6564cdd57aa3c3e', '1586342414649100100', 1, 1, '2020-04-08 18:40:14', '2020-04-11 18:40:14', '2020-04-08 18:40:20', NULL, '', '2898.0', 2);
INSERT INTO `userOrder` VALUES (416, 'f92b9f8f372e445fb6564cdd57aa3c3e', '1586346035358100101', 1, 1, '2020-04-08 19:40:35', '2020-04-11 19:40:35', '2020-04-08 19:40:40', NULL, '', '7890.0', 2);
INSERT INTO `userOrder` VALUES (417, '7c9fdfa3177042a08766aed29e7de6cd', '1586346607917100102', 1, 1, '2020-04-08 19:50:08', '2020-04-11 19:50:08', '2020-04-08 19:50:13', NULL, '', '3350.0', 2);
INSERT INTO `userOrder` VALUES (418, '7c9fdfa3177042a08766aed29e7de6cd', '1586347797232100103', 1, 1, '2020-04-08 20:09:57', '2020-04-11 20:09:57', '2020-04-08 20:10:13', NULL, '', '5399.0', 2);

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
INSERT INTO `userPassword` VALUES ('f92b9f8f372e445fb6564cdd57aa3c3e', '/NSW7XPKATxkLBTZjWbLLA==', 0, NULL);

SET FOREIGN_KEY_CHECKS = 1;
