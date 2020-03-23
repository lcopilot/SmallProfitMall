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

 Date: 23/03/2020 14:30:33
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
) ENGINE = InnoDB AUTO_INCREMENT = 10029 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

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

-- ----------------------------
-- Table structure for ProductColour
-- ----------------------------
DROP TABLE IF EXISTS `ProductColour`;
CREATE TABLE `ProductColour`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ProductId` int(11) NULL DEFAULT NULL,
  `ProductColour` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 104 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

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

-- ----------------------------
-- Table structure for ProductCombo
-- ----------------------------
DROP TABLE IF EXISTS `ProductCombo`;
CREATE TABLE `ProductCombo`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ProductId` int(11) NULL DEFAULT NULL,
  `ProductCombo` varchar(80) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 18 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

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
) ENGINE = InnoDB AUTO_INCREMENT = 147 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

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
INSERT INTO `ProductImage` VALUES (143, 10029, 'http://productdata.fhxasdsada.xyz/334355456168161240400082_x.jpg', NULL);
INSERT INTO `ProductImage` VALUES (144, 10029, 'http://productdata.fhxasdsada.xyz/619597484920156642971000_x.jpg', NULL);
INSERT INTO `ProductImage` VALUES (145, 10029, 'http://productdata.fhxasdsada.xyz/907405909774268174160400_x.jpg', NULL);
INSERT INTO `ProductImage` VALUES (146, 10029, 'http://productdata.fhxasdsada.xyz/hfQeM5SNL7aIQsnz4m2MwA.jpg', NULL);

-- ----------------------------
-- Table structure for ProductKind
-- ----------------------------
DROP TABLE IF EXISTS `ProductKind`;
CREATE TABLE `ProductKind`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ProductId` int(11) NULL DEFAULT NULL,
  `ProductKind` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 15 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ProductKind
-- ----------------------------
INSERT INTO `ProductKind` VALUES (9, 10003, '【超大款】帝王蟹礼盒4.5-4.0斤 ');
INSERT INTO `ProductKind` VALUES (10, 10003, '【大蟹款】帝王蟹礼盒4.0-3.6斤 ');
INSERT INTO `ProductKind` VALUES (11, 10003, '【尊享款】帝王蟹礼盒5.5-5.0斤\r\n');
INSERT INTO `ProductKind` VALUES (12, 10003, '【尝鲜款】帝王蟹礼盒2.8-2.4斤');
INSERT INTO `ProductKind` VALUES (13, 10003, '黄金蟹礼盒1000-800g');
INSERT INTO `ProductKind` VALUES (14, 10003, '黄金蟹礼盒800-600g');

-- ----------------------------
-- Table structure for ProductLowPrice
-- ----------------------------
DROP TABLE IF EXISTS `ProductLowPrice`;
CREATE TABLE `ProductLowPrice`  (
  `ProductId` int(11) NULL DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 33 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

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
) ENGINE = InnoDB AUTO_INCREMENT = 30 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ProductPrice
-- ----------------------------
INSERT INTO `ProductPrice` VALUES (1, 10001, 5999.00, 4844, 4549.00, 10.00, 0.00);
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
INSERT INTO `ProductPrice` VALUES (26, 10026, 636.00, 620, 599.00, 15661156.00, 1846818.00);
INSERT INTO `ProductPrice` VALUES (27, 10027, 773.00, 666, 689.00, 154854.00, 1666.00);
INSERT INTO `ProductPrice` VALUES (28, 10028, 265.00, 222, 218.00, 151515.00, 156165.00);
INSERT INTO `ProductPrice` VALUES (29, 10029, 2920.00, 288, 2999.00, 21261.00, 165161.00);

-- ----------------------------
-- Table structure for ProductSize
-- ----------------------------
DROP TABLE IF EXISTS `ProductSize`;
CREATE TABLE `ProductSize`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ProductId` int(11) NULL DEFAULT NULL,
  `ProductSize` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 21 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

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

-- ----------------------------
-- Table structure for ProductSpecification
-- ----------------------------
DROP TABLE IF EXISTS `ProductSpecification`;
CREATE TABLE `ProductSpecification`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ProductId` int(11) NULL DEFAULT NULL,
  `Specification` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 18 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

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

-- ----------------------------
-- Table structure for ProductTaste
-- ----------------------------
DROP TABLE IF EXISTS `ProductTaste`;
CREATE TABLE `ProductTaste`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ProductId` int(11) NULL DEFAULT NULL,
  `ProductTaste` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ProductTaste
-- ----------------------------
INSERT INTO `ProductTaste` VALUES (1, 10015, '奶茶味');
INSERT INTO `ProductTaste` VALUES (2, 10015, '茉莉味');
INSERT INTO `ProductTaste` VALUES (3, 10015, '香蕉味');
INSERT INTO `ProductTaste` VALUES (4, 10015, '苹果味');
INSERT INTO `ProductTaste` VALUES (5, 10015, '奶油味');

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
-- Table structure for footprint
-- ----------------------------
DROP TABLE IF EXISTS `footprint`;
CREATE TABLE `footprint`  (
  `footprintId` int(11) NOT NULL AUTO_INCREMENT,
  `userId` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `productId` int(11) NULL DEFAULT NULL,
  `time` date NULL DEFAULT NULL,
  PRIMARY KEY (`footprintId`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of footprint
-- ----------------------------
INSERT INTO `footprint` VALUES (1, 'asdfghjkl', 10002, '2020-03-23');

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
) ENGINE = InnoDB AUTO_INCREMENT = 59 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

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
  `productPrice` decimal(10, 2) NULL DEFAULT NULL,
  `productName` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`shoppingCartId`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 127 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of shoppingCart
-- ----------------------------
INSERT INTO `shoppingCart` VALUES (36, 'adsasd', 10009, '黑色 套餐一 ', 100, 47699.00, '外星人Alienware area-51m 17.3英寸游戏笔记本电脑(i9-9900K 32G 512GX2 1T RTX2080 8G 144Hz 低蓝光屏)黑\r\n');
INSERT INTO `shoppingCart` VALUES (37, 'adsasd', 10009, '黑色 套餐一 ', 100, 47699.00, '外星人Alienware area-51m 17.3英寸游戏笔记本电脑(i9-9900K 32G 512GX2 1T RTX2080 8G 144Hz 低蓝光屏)黑\r\n');
INSERT INTO `shoppingCart` VALUES (38, 'adsasd', 10009, '黑色 套餐一 ', 100, 47699.00, '外星人Alienware area-51m 17.3英寸游戏笔记本电脑(i9-9900K 32G 512GX2 1T RTX2080 8G 144Hz 低蓝光屏)黑\r\n');
INSERT INTO `shoppingCart` VALUES (96, 'f05d7667b5384a02b45fb540ba0ed2da', 10015, '奶茶味 ', 1, 20.00, '三只松鼠芒果干 蜜饯果干芒果片休闲零食办公室小吃果脯水果干116g/袋');
INSERT INTO `shoppingCart` VALUES (98, 'f05d7667b5384a02b45fb540ba0ed2da', 10008, '', 1, 3500.00, '万代（BANDAI） Megahouse POP 海贼王 路飞9人 模型玩具（无售后！！！） 四档路飞\r\n');
INSERT INTO `shoppingCart` VALUES (118, 'f05d7667b5384a02b45fb540ba0ed2da', 10015, '奶茶味 ', 1, 20.00, '三只松鼠芒果干 蜜饯果干芒果片休闲零食办公室小吃果脯水果干116g/袋');
INSERT INTO `shoppingCart` VALUES (119, 'f05d7667b5384a02b45fb540ba0ed2da', 10015, '香蕉味 ', 1, 20.00, '三只松鼠芒果干 蜜饯果干芒果片休闲零食办公室小吃果脯水果干116g/袋');
INSERT INTO `shoppingCart` VALUES (120, 'f05d7667b5384a02b45fb540ba0ed2da', 10015, '茉莉味 ', 1, 20.00, '三只松鼠芒果干 蜜饯果干芒果片休闲零食办公室小吃果脯水果干116g/袋');
INSERT INTO `shoppingCart` VALUES (121, 'f05d7667b5384a02b45fb540ba0ed2da', 10015, '奶油味 ', 1, 20.00, '三只松鼠芒果干 蜜饯果干芒果片休闲零食办公室小吃果脯水果干116g/袋');
INSERT INTO `shoppingCart` VALUES (122, 'f05d7667b5384a02b45fb540ba0ed2da', 10015, '奶油味 ', 1, 20.00, '三只松鼠芒果干 蜜饯果干芒果片休闲零食办公室小吃果脯水果干116g/袋');
INSERT INTO `shoppingCart` VALUES (123, 'f05d7667b5384a02b45fb540ba0ed2da', 10015, '茉莉味 ', 1, 20.00, '三只松鼠芒果干 蜜饯果干芒果片休闲零食办公室小吃果脯水果干116g/袋');
INSERT INTO `shoppingCart` VALUES (124, 'f05d7667b5384a02b45fb540ba0ed2da', 10011, '暗夜绿色 128G+2G ', 1, 10398.00, 'Apple iPhone 11 Pro Max (A2220) 64GB 金色 移动联通电信4G手机 双卡双待 ');
INSERT INTO `shoppingCart` VALUES (125, 'f05d7667b5384a02b45fb540ba0ed2da', 10011, '暗夜绿色 64G+2G ', 1, 10398.00, 'Apple iPhone 11 Pro Max (A2220) 64GB 金色 移动联通电信4G手机 双卡双待 ');
INSERT INTO `shoppingCart` VALUES (126, 'f05d7667b5384a02b45fb540ba0ed2da', 10011, '深空灰色 64G+2G ', 1, 10398.00, 'Apple iPhone 11 Pro Max (A2220) 64GB 金色 移动联通电信4G手机 双卡双待 ');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `password` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `sex` varchar(5) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `phone` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `email` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `Image` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `token` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `birthday` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 41 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (37, 'f05d7667b5384a02b45fb540ba0ed2da', 'MuGe', '123456', '1', '15367885410', 'liuxianliangli@foxmail.com', ' http://img.fhxasdsada.xyz/f05d7667b5384a02b45fb540ba0ed2da?t=1584944811380', 'DM', '2019-4-15');
INSERT INTO `user` VALUES (38, 'asdfghjkl', '方鸢', '123456', '1', '18598814121', '2252821162@qq.com', ' http://img.fhxasdsada.xyz/asdfghjkl?t=1584768785710', 'DM', '2017-2-1');
INSERT INTO `user` VALUES (39, '8b616d638682406f96acd3b54dfbc723', 'HuangFan', '123123', '1', '13135361457', '552449824@qq.com', ' http://img.fhxasdsada.xyz/8b616d638682406f96acd3b54dfbc723?t=1584605671330', 'DM', '2019-4-4');
INSERT INTO `user` VALUES (40, '46d254f0c27b4cdc85da8ea9246394be', 'smallProfit', '123456', '1', '15575702771', NULL, 'http://img.fhxasdsada.xyz//000000001312c10c0000000002255f0a?t=1578145613938', 'DM', NULL);

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
) ENGINE = InnoDB AUTO_INCREMENT = 104 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of userAddress
-- ----------------------------
INSERT INTO `userAddress` VALUES (76, 'f05d7667b5384a02b45fb540ba0ed2da', '格式的函数的啊实打实', '河北省 唐山市 路北区 东新村街道 河北省 唐山市 路北区 文化路街道 江苏省 徐州市 鼓楼区 牌楼街道 江苏省 徐州市 贾汪区 大吴街道 江苏省 徐州市 贾汪区 大泉街道 ', '速度还是大速度还都是是大三大法师啊实打实东方闪电速度还是大', '15367885410', 'liuxianliangli@foxmail.com', '32,3203,320305,320305003,', '0', '学校', 0);
INSERT INTO `userAddress` VALUES (77, 'f05d7667b5384a02b45fb540ba0ed2da', '大范甘迪', '河北省 石家庄市 井陉矿区 四微街道 ', '读后感', '15367885410', 'liuxianliangli@foxmail.com', '13,1301,130107,130107002,', '0', '读后感', 0);
INSERT INTO `userAddress` VALUES (78, 'f05d7667b5384a02b45fb540ba0ed2da', '速度还是大', '河北省 唐山市 丰南区 黄各庄镇 ', '速度还是大', '15367885410', 'liuxianliangli@foxmail.com', '13,1302,130207,130207104,', '0', '速度还是大', 0);
INSERT INTO `userAddress` VALUES (79, 'f05d7667b5384a02b45fb540ba0ed2da', '水电费', '天津市 市辖区 南开区 兴南街道 ', '三大法师', '15367885410', 'liuxianliangli@foxmail.com', '12,1201,120104,120104003,', '0', '水电费', 0);
INSERT INTO `userAddress` VALUES (80, 'f05d7667b5384a02b45fb540ba0ed2da', '速度还是大', '河北省 石家庄市 新华区 宁安街道 ', '速度还是大', '15367885410', 'liuxianliangli@foxmail.com', '13,1301,130105,130105004,', '0', '速度还是大', 0);
INSERT INTO `userAddress` VALUES (81, 'f05d7667b5384a02b45fb540ba0ed2da', '速度还是大', '山西省 太原市 杏花岭区 鼓楼街道 ', '生活的速度', '15367885410', 'liuxianliangli@foxmail.com', '14,1401,140107,140107003,', '0', '水电费', 1);
INSERT INTO `userAddress` VALUES (82, 'f05d7667b5384a02b45fb540ba0ed2da', '递四方速递', '河北省 石家庄市 井陉矿区 贾庄镇 ', '是多喝点水', '15367885410', 'liuxianliangli@foxmail.com', '13,1301,130107,130107100,', '0', '电话', 0);
INSERT INTO `userAddress` VALUES (83, 'f05d7667b5384a02b45fb540ba0ed2da', '三大法师', '山西省 大同市 阳高县 罗文皂镇 ', '速度还是大', '15367885410', 'liuxianliangli@foxmail.com', '14,1402,140221,140221101,', '0', '公司', 0);
INSERT INTO `userAddress` VALUES (84, 'f05d7667b5384a02b45fb540ba0ed2da', '速度还是大', '河北省 唐山市 开平区 开平街道 ', '速度还是大', '15367885410', 'liuxianliangli@foxmail.com', '13,1302,130205,130205002,', '0', '父母家', 0);
INSERT INTO `userAddress` VALUES (86, 'f05d7667b5384a02b45fb540ba0ed2da', '方鸿鑫', '河北省 唐山市 开平区 开平街道 ', '试婚纱', '15367885410', 'liuxianliangli@foxmail.com', '13,1302,130205,130205002,', '1', '学校', 1);
INSERT INTO `userAddress` VALUES (87, 'f05d7667b5384a02b45fb540ba0ed2da', '方式', '河北省 唐山市 开平区 开平街道 ', '试婚纱', '15367885410', 'liuxianliangli@foxmail.com', '13,1302,130205,130205002,', '0', '学校', 1);
INSERT INTO `userAddress` VALUES (88, 'f05d7667b5384a02b45fb540ba0ed2da', '速度还是大', '河北省 石家庄市 井陉矿区 四微街道 ', '三大法师', '15367885410', 'liuxianliangli@foxmail.com', '13,1301,130107,130107002,', '0', '闺蜜家', 1);
INSERT INTO `userAddress` VALUES (90, 'f05d7667b5384a02b45fb540ba0ed2da', '萨迪', '河北省 石家庄市 裕华区 裕兴街道 ', '的时候', '15367885410', 'liuxianliangli@foxmail.com', '13,1301,130108,130108001,', '0', '学校', 1);
INSERT INTO `userAddress` VALUES (91, 'f05d7667b5384a02b45fb540ba0ed2da', '啊实打实', '山西省 太原市 尖草坪区 尖草坪街道 ', '啊实打实', '15367885410', 'liuxianliangli@foxmail.com', '14,1401,140108,140108001,', '0', '公司', 1);
INSERT INTO `userAddress` VALUES (98, 'adsasdasd', '小小', '湖南省,长沙市', '湖南大学', '18598814121', '2252821162@qq.com', '123,123,123,123,', '0', '家', 1);
INSERT INTO `userAddress` VALUES (99, 'adsasdasd', '小小', '湖南省,长沙市', '湖南大学', '18598814121', '2252821162@qq.com', '123,123,123,123,', '0', '家', 1);
INSERT INTO `userAddress` VALUES (100, 'adsasdasd', '小小', '湖南省,长沙市', '湖南大学', '18598814121', '2252821162@qq.com', '123,123,123,123,', '0', '家', 1);
INSERT INTO `userAddress` VALUES (101, 'adsasdasd', '小小', '湖南省,长沙市', '湖南大学', '18598814121', '2252821162@qq.com', '123,123,123,123,', '0', '家', 1);
INSERT INTO `userAddress` VALUES (102, 'adsasdasd', '小小', '湖南省,长沙市', '湖南大学', '18598814121', '2252821162@qq.com', '123,123,123,123,', '0', '家', 1);
INSERT INTO `userAddress` VALUES (103, 'asdfghjkl', '方', '天津市 市辖区 和平区 劝业场街道 ', '桂东', '18598814121', '2252821162@qq.com', '12,1201,120101,120101001,', '1', '家', 1);

-- ----------------------------
-- Table structure for userEvaluation
-- ----------------------------
DROP TABLE IF EXISTS `userEvaluation`;
CREATE TABLE `userEvaluation`  (
  `evaluationId` int(11) NOT NULL AUTO_INCREMENT,
  `userId` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `produvtId` int(11) NULL DEFAULT NULL,
  `sign` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`evaluationId`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of userEvaluation
-- ----------------------------
INSERT INTO `userEvaluation` VALUES (1, 'adsasd', 10001, 'true');
INSERT INTO `userEvaluation` VALUES (2, 'f05d7667b5384a02b45fb540ba0ed2da', 10001, 'true');

SET FOREIGN_KEY_CHECKS = 1;
