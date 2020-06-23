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

 Date: 23/06/2020 22:01:32
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for  management_role_authority
-- ----------------------------
DROP TABLE IF EXISTS ` management_role_authority`;
CREATE TABLE ` management_role_authority`  (
  `father_id` int(11) NOT NULL,
  `descendant_id` int(11) NULL DEFAULT NULL,
  `depth` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`father_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of  management_role_authority
-- ----------------------------

-- ----------------------------
-- Table structure for ProductBasis
-- ----------------------------
DROP TABLE IF EXISTS `ProductBasis`;
CREATE TABLE `ProductBasis`  (
  `id` int(11) NULL DEFAULT 0,
  `ProductId` int(11) NOT NULL AUTO_INCREMENT,
  `ProductName` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ProductVideo` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ProductWeight` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `prodcutPrimaryCategory` int(11) NULL DEFAULT NULL,
  `productSecondaryCategory` int(11) NULL DEFAULT NULL,
  `productFinalCategory` int(11) NULL DEFAULT NULL,
  `productPageviews` int(11) NULL DEFAULT 0,
  `productDescription` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `productAfterSale` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `productParameter` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `productState` int(11) NULL DEFAULT 0,
  `hot` int(11) NULL DEFAULT 1,
  `Favorite` int(11) NULL DEFAULT 1,
  `sign` int(11) NULL DEFAULT 0,
  `shelves` int(11) NULL DEFAULT 1,
  PRIMARY KEY (`ProductId`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10086 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ProductBasis
-- ----------------------------
INSERT INTO `ProductBasis` VALUES (1, 10001, 'Apple iPhone 11 (A2223) 128GB 黑色 移动联通电信4G手机 双卡双待', 'http://productdata.isdfmk.xyz/v.f30.mp4', '0.74kg', 104, 1009, 10062, 65, '<p>Hey this <strong>editor</strong> rocks&nbsp;</p>\n', '<p>Hey this <strong>editor</strong> rocks&nbsp;</p>\n', '<p>Hey this <strong>editor</strong> rocks&nbsp;</p>\n', 1, 1, 1, 0, 1);
INSERT INTO `ProductBasis` VALUES (3, 10002, 'Apple AirPods Pro 主动降噪无线蓝牙耳机', '\r\nhttp://productdata.isdfmk.xyz/v.f30.mp4', '0.24kg', 104, 1010, 10075, 28, '<p></p>\n', '<p></p>\n', '<p></p>\n', 1, 1, 1, 0, 1);
INSERT INTO `ProductBasis` VALUES (12, 10003, '星农联合 智利帝王蟹5.5-5.0斤 熟冻大螃蟹 进口海鲜礼盒', NULL, '0kg', 132, 1068, 10495, 23, '<p></p>\n', '<p></p>\n', '<p></p>\n', 1, 1, 1, 0, 1);
INSERT INTO `ProductBasis` VALUES (13, 10004, '新款Huawei/华为折叠手机mates xs 5g版大屏双屏全面屏双面屏官方旗舰店对折手机可折叠屏 Mate XS折叠\r\n', 'http://productdata.isdfmk.xyz/sdfjsdomytupj,nkc.mp4', '0.24kg', 104, 1009, 10066, 15, NULL, NULL, NULL, 1, 2, 1, 0, 1);
INSERT INTO `ProductBasis` VALUES (14, 10005, 'Apple iPad Pro 12.9英寸平板电脑 2018款(64G WLAN版/全面屏/A12X/FaceID MTEL2CH/A)深空灰\r\n', 'http://productdata.isdfmk.xyz/diferwngmopsvm,jaks.mp4', '2.8kg', 106, 1016, 10119, 19, NULL, NULL, NULL, 1, 2, 1, 0, 1);
INSERT INTO `ProductBasis` VALUES (15, 10006, ' 索尼（SONY）WF-1000XM3 真无线蓝牙降噪耳机 智能降噪 触控面板 苹果/安卓手机适用 黑色\r\n', 'http://productdata.isdfmk.xyz/iorhmm,wcvihj.mp4', '0.6kg', 106, 1010, 10075, 32, NULL, NULL, NULL, 1, 2, 1, 0, 1);
INSERT INTO `ProductBasis` VALUES (16, 10007, 'Hot Toys 复仇者联盟3 无限战争 HOTTOYS 钢铁侠 模型玩具礼物 MK7 普通版', NULL, '5kg', 132, 1068, 10495, 20, '<p></p>\n', '<p></p>\n', '<p></p>\n', 1, 2, 1, 0, 1);
INSERT INTO `ProductBasis` VALUES (17, 10008, '万代（BANDAI） Megahouse POP 海贼王 路飞9人 模型玩具（无售后！！！） 四档路飞\r\n', NULL, '100kg', 132, 1068, 10495, 12, NULL, NULL, NULL, 1, 2, 1, 0, 1);
INSERT INTO `ProductBasis` VALUES (18, 10009, '外星人Alienware area-51m 17.3英寸游戏笔记本电脑(i9-9900K 32G 512GX2 1T RTX2080 8G 144Hz 低蓝光屏)黑\r\n', NULL, '5.6kg', 107, 1017, 10126, 17, NULL, NULL, NULL, 1, 1, 1, 0, 1);
INSERT INTO `ProductBasis` VALUES (4, 10010, '阿玛尼（ Emporio Armani）满天星手表 女新款玫瑰金钢制表带镶钻石英轻奢女士腕表礼物 AR11244 ', '\r\nhttp://productdata.isdfmk.xyz/v.f30%20%281%29.mp4', '\r\n0.485kg', 106, 1015, 10495, 18, NULL, NULL, NULL, 1, 1, 1, 0, 1);
INSERT INTO `ProductBasis` VALUES (5, 10011, 'Apple iPhone 11 Pro Max (A2220) 64GB 金色 移动联通电信4G手机 双卡双待 ', '\r\nhttp://productdata.isdfmk.xyz/v.f10011.mp4', '0.56kg', 104, 1009, 10062, 26, NULL, NULL, NULL, 1, 1, 1, 0, 1);
INSERT INTO `ProductBasis` VALUES (6, 10012, '联想(Lenovo)小新Pro13.3英寸全面屏超轻薄笔记本电脑(标压锐龙R5-3550H 16G 512G 2.5K QHD 100%sRGB)银 ', '\r\nhttp://productdata.isdfmk.xyz/10012%5B1%5D.mp4', '2.08kg', 107, 1017, 10126, 14, NULL, NULL, NULL, 1, 2, 1, 0, 1);
INSERT INTO `ProductBasis` VALUES (7, 10013, '华硕（ASUS）猛禽ROG-STRIX-GeForce RTX 2080', 'https://jdvod.300hu.com/4c1f7a6atransbjngwcloud1oss/7d07cd26107144746580840449/v.f30.mp4?dockingId=88290b33-b297-4d55-aa10-3996cc45a4b6&storageSource=3', '2.08kg', 107, 1018, 10128, 18, '<p></p>\n', '<p></p>\n', '<p></p>\n', 1, 1, 1, 0, 1);
INSERT INTO `ProductBasis` VALUES (8, 10014, '骨伽（COUGAR） 电脑主机箱 台式机中塔式侧透征服者游戏定制水冷机箱 黑色\r\n', 'http://productdata.isdfmk.xyz/sdfjsdfjmrthnndvisdgsdg.mp4', '2.8kg', 107, 1018, 10129, 17, NULL, NULL, NULL, 1, 2, 1, 0, 1);
INSERT INTO `ProductBasis` VALUES (9, 10015, '三只松鼠芒果干 蜜饯果干芒果片休闲零食办公室小吃果脯水果干116g/袋', 'http://productdata.isdfmk.xyz/sdkjj.mp4', '0.15kg', 132, 1068, 10495, 13, NULL, NULL, NULL, 1, 1, 1, 0, 1);
INSERT INTO `ProductBasis` VALUES (10, 10016, '华为 HUAWEI Mate 30 Pro 麒麟990旗舰芯片OLED环幕屏双4000万徕卡电影四摄手机', '\r\nhttp://productdata.isdfmk.xyz/v.f30%20%282%29.mp4', '0.54kg', 104, 1009, 10062, 10, NULL, NULL, NULL, 1, 2, 1, 0, 1);
INSERT INTO `ProductBasis` VALUES (11, 10017, 'Apple Watch Series 5智能手表（GPS款 40毫米深空灰色铝金属表壳 黑色运动型表带 MWV82CH/A)\r\n', 'http://productdata.isdfmk.xyz/asuashfoeryubvxcmivmdsfomaosaergl.mp4', '0.23kg', 106, 1015, 10113, 4, NULL, NULL, NULL, 1, 1, 1, 0, 1);
INSERT INTO `ProductBasis` VALUES (19, 10018, '【专柜正品】Dior迪奥口红烈艳蓝金女士唇膏999口红套装送女友生日礼物 送老婆情人节礼物 【情人节星星限量版五只装套盒】', '\r\nhttp://productdata.isdfmk.xyz/v.f30%20%284%29.mp4\r\n\r\n', '0.4kg', 113, 1032, 10240, 11, NULL, NULL, NULL, 1, 2, 1, 0, 1);
INSERT INTO `ProductBasis` VALUES (10018, 10019, '【二手95新】劳力士 系列:迪通拿系列 型号:116505 材质:18k玫瑰金 镜面:蓝宝石玻璃 未使用', NULL, '0.22kg', 118, 1042, 10497, 8, NULL, NULL, NULL, 1, 2, 1, 0, 1);
INSERT INTO `ProductBasis` VALUES (10019, 10020, '华硕（ASUS）ROG Strix XG27VQ 27英寸144HZ 1800R Free-Sync旋转升降AURA-RGB电竞显示器（HDMI/DP/DVI）', 'http://productdata.isdfmk.xyz/0a2dn6qco6afmqiL4K2doafhoaGdmaydo6M.mp4', '16.84kg', 101, 1001, 10496, 8, NULL, NULL, NULL, 1, 2, 1, 0, 1);
INSERT INTO `ProductBasis` VALUES (10020, 10021, '长虹（CHANGHONG）D6U 长虹', '', '5.84kg', 101, 1001, 10002, 6, '<p></p>\n', '<p></p>\n', '<p></p>\n', 1, 2, 1, 0, 1);
INSERT INTO `ProductBasis` VALUES (10024, 10022, 'Classic | 40mm Canterbury', NULL, NULL, 118, 1026, 10189, 22, NULL, NULL, NULL, 1, 1, 1, 0, 1);
INSERT INTO `ProductBasis` VALUES (10021, 10023, '\r\nCOACH PARKER 16 女士山茶花装饰可斜挎双肩包', NULL, NULL, 117, 1039, 10295, 12, NULL, NULL, NULL, 1, 1, 1, 0, 1);
INSERT INTO `ProductBasis` VALUES (10022, 10024, 'HHKB Professional BT 蓝牙版黑无刻静电容键盘 程序员码农专用便携迷你键盘 编程适用', 'http://productdata.isdfmk.xyz/0a2dn62WqaCdmqiL4K2doafhoaOhnqeZpKc.mp4', NULL, 107, 1019, 10141, 14, NULL, NULL, NULL, 1, 1, 1, 0, 1);
INSERT INTO `ProductBasis` VALUES (10023, 10025, '【良品铺子】综合果仁525g 每日坚果组合混合干果礼盒零食大礼包健康零食', NULL, '575.5kg', 132, 1068, 10495, 12, NULL, NULL, NULL, 1, 1, 1, 0, 1);
INSERT INTO `ProductBasis` VALUES (10025, 10026, '2019新款翻领磨破短款女士休闲牛仔外套', NULL, NULL, 111, 1026, 10362, 14, NULL, NULL, NULL, 1, 1, 1, 0, 1);
INSERT INTO `ProductBasis` VALUES (10026, 10027, '【假一赔十】beats solo3wireless 蓝牙耳机头戴式 米奇 游戏手机耳机 折叠式重低音 运动 玫瑰金', NULL, NULL, 104, 1010, 10075, 22, NULL, NULL, NULL, 1, 2, 1, 0, 1);
INSERT INTO `ProductBasis` VALUES (10027, 10028, '小米（MI）小爱智能音箱Pro 无线蓝牙音响 语音控制智能家居 APP远程操控 专业DTS 音效 黑色', NULL, '\r\n1.56kg', 106, 1014, 10106, 9, NULL, NULL, NULL, 1, 2, 1, 0, 1);
INSERT INTO `ProductBasis` VALUES (10028, 10029, '美国正品代购阿迪达斯adidas YEEZY BOOST 350 V2 侃爷冰蓝椰子鞋新款男跑步鞋', NULL, '2.5kg', 119, 1043, 10320, 17, '<p></p>\n', '<p></p>\n', '<p></p>\n', 1, 2, 1, 0, 1);
INSERT INTO `ProductBasis` VALUES (10029, 10030, '夹克男工装外套男士韩版宽松潮流上衣服2019秋季新款男装潮牌连帽夹克衫男学生', 'http://productdata.isdfmk.xyz/0a2dn62WqaCdmqiL4K2doafhoaOhnqeZpKc.mp4', '0.1kg', 110, 1025, 10182, 12, '<p></p>\n', '<p></p>\n', '<p></p>\n', 1, 2, 1, 0, 1);
INSERT INTO `ProductBasis` VALUES (0, 10078, 'dfgdfgdf', NULL, '856.0kg', 104, 1010, 10071, 0, '<p></p>\n', '<p></p>\n', '<p></p>\n', 0, 1, 1, 1, 1);
INSERT INTO `ProductBasis` VALUES (0, 10079, '54231', NULL, '856.0kg', 104, 1010, 10072, 0, '<p></p>\n', '<p></p>\n', '<p></p>\n', 0, 1, 1, 1, 1);
INSERT INTO `ProductBasis` VALUES (0, 10080, 'dfgdfgdf', NULL, '856.0kg', 105, 1011, 10082, 0, '<p></p>\n', '<p></p>\n', '<p></p>\n', 0, 1, 1, 1, 1);
INSERT INTO `ProductBasis` VALUES (0, 10081, 'dfgdfgdf', NULL, '856.0kg', 104, 1010, 10071, 0, '<p></p>\n', '<p></p>\n', '<p></p>\n', 0, 1, 1, 1, 1);
INSERT INTO `ProductBasis` VALUES (0, 10082, 'dfgdfgdf', NULL, '856.0kg', 106, 1014, 10106, 0, '<p></p>\n', '<p></p>\n', '<p></p>\n', 0, 1, 1, 1, 1);
INSERT INTO `ProductBasis` VALUES (0, 10083, 'dfgdfgdf', NULL, '856.0kg', 107, 1020, 10151, 0, '<p></p>\n', '<p></p>\n', '<p></p>\n', 0, 1, 1, 1, 1);
INSERT INTO `ProductBasis` VALUES (0, 10084, 'dfgdfgdf', NULL, '856.0kg', 104, 1010, 10071, 0, '<p></p>\n', '<p></p>\n', '<p></p>\n', 0, 1, 1, 1, 1);
INSERT INTO `ProductBasis` VALUES (0, 10085, 'dfgdfgdf', NULL, '856.0kg', 106, 1014, 10106, 0, '<p></p>\n', '<p></p>\n', '<p></p>\n', 0, 1, 1, 1, 1);

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
) ENGINE = InnoDB AUTO_INCREMENT = 291 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ProductImage
-- ----------------------------
INSERT INTO `ProductImage` VALUES (1, 10001, 'http://productdata.isdfmk.xyz/68836f52ffaaad96.jpg', 1);
INSERT INTO `ProductImage` VALUES (2, 10001, 'http://productdata.isdfmk.xyz/43a1962b41270d97.jpg', 0);
INSERT INTO `ProductImage` VALUES (3, 10001, 'http://productdata.isdfmk.xyz/ee567a1dea515d38.jpg', 0);
INSERT INTO `ProductImage` VALUES (4, 10001, 'http://productdata.isdfmk.xyz/08fed8837c92433a.jpg', 0);
INSERT INTO `ProductImage` VALUES (5, 10001, 'http://productdata.isdfmk.xyz/001e63e04f967e90.jpg', 0);
INSERT INTO `ProductImage` VALUES (8, 10002, 'http://productdata.isdfmk.xyz/7193b42ba13929fd.jpg', 0);
INSERT INTO `ProductImage` VALUES (11, 10002, 'http://productdata.isdfmk.xyz/8786efc04f001e50.jpg', 0);
INSERT INTO `ProductImage` VALUES (13, 10010, '\r\nhttp://productdata.isdfmk.xyz/8c0b0a13e48adce3.jpg', 1);
INSERT INTO `ProductImage` VALUES (14, 10010, '\r\nhttp://productdata.isdfmk.xyz/19f5df0ae27b218a.jpg', 0);
INSERT INTO `ProductImage` VALUES (15, 10010, '\r\nhttp://productdata.isdfmk.xyz/48f8745314110ddd.jpg', 0);
INSERT INTO `ProductImage` VALUES (16, 10010, '\r\nhttp://productdata.isdfmk.xyz/220f4a39216bc62b.jpg', 0);
INSERT INTO `ProductImage` VALUES (17, 10011, '\r\nhttp://productdata.isdfmk.xyz/04e04ec4954e07bd.jpg', 1);
INSERT INTO `ProductImage` VALUES (18, 10011, '\r\nhttp://productdata.isdfmk.xyz/3957b8e1cce2b048.jpg', 0);
INSERT INTO `ProductImage` VALUES (19, 10011, '\r\nhttp://productdata.isdfmk.xyz/394596a8af6149cf.jpg', 0);
INSERT INTO `ProductImage` VALUES (20, 10011, '\r\nhttp://productdata.isdfmk.xyz/da0eb4c6670eab20.jpg', 0);
INSERT INTO `ProductImage` VALUES (21, 10011, '\r\nhttp://productdata.isdfmk.xyz/e54ca7b1b222a83b.jpg', 0);
INSERT INTO `ProductImage` VALUES (22, 10012, '\r\nhttp://productdata.isdfmk.xyz/2b0744939bd398f0.jpg', 1);
INSERT INTO `ProductImage` VALUES (23, 10012, '\r\nhttp://productdata.isdfmk.xyz/5ce4b1fcNc14ca9c7.jpg', 0);
INSERT INTO `ProductImage` VALUES (24, 10012, '\r\nhttp://productdata.isdfmk.xyz/6522a53a673ee61d.jpg', 0);
INSERT INTO `ProductImage` VALUES (25, 10012, '\r\nhttp://productdata.isdfmk.xyz/c15786ad5136e74f.jpg', 0);
INSERT INTO `ProductImage` VALUES (26, 10012, '\r\nhttp://productdata.isdfmk.xyz/caa1b677b914cb5f.jpg', 0);
INSERT INTO `ProductImage` VALUES (27, 10013, 'http://productdata.isdfmk.xyz/1f3f9fd0e759383f.jpg', 1);
INSERT INTO `ProductImage` VALUES (28, 10013, 'http://productdata.isdfmk.xyz/4fc927901b1aae32.jpg', 0);
INSERT INTO `ProductImage` VALUES (29, 10013, 'http://productdata.isdfmk.xyz/5bc47ce4Ne79570db.jpg', 0);
INSERT INTO `ProductImage` VALUES (30, 10013, 'http://productdata.isdfmk.xyz/3480e2930d6e9a25.jpg', 0);
INSERT INTO `ProductImage` VALUES (31, 10013, 'http://productdata.isdfmk.xyz/562d20d464bb56ac.jpg', 0);
INSERT INTO `ProductImage` VALUES (32, 10014, 'http://productdata.isdfmk.xyz/5b4d4cc8N0bf9c476.jpg', 1);
INSERT INTO `ProductImage` VALUES (33, 10014, 'http://productdata.isdfmk.xyz/5b2473c4Nea457f92.png', 0);
INSERT INTO `ProductImage` VALUES (34, 10014, 'http://productdata.isdfmk.xyz/5b2473e0Ne5d2fed8.jpg', 0);
INSERT INTO `ProductImage` VALUES (35, 10014, 'http://productdata.isdfmk.xyz/5b2473e3Nc422faf9.jpg', 0);
INSERT INTO `ProductImage` VALUES (36, 10014, 'http://productdata.isdfmk.xyz/e8a8c0ac848fd663.jpg', 0);
INSERT INTO `ProductImage` VALUES (37, 10015, 'http://productdata.isdfmk.xyz/3531d2420f91d48177112641833bc7aa_2_3_photo.jpg', 1);
INSERT INTO `ProductImage` VALUES (38, 10015, 'http://productdata.isdfmk.xyz/65d595ccc0df91701a30c5b9af96662c_2_3_photo.jpg', 0);
INSERT INTO `ProductImage` VALUES (39, 10015, 'http://productdata.isdfmk.xyz/6ad6e5468f3c79afd9e2aaac6235b643_2_3_photo.jpg', 0);
INSERT INTO `ProductImage` VALUES (40, 10015, 'http://productdata.isdfmk.xyz/a6bd598ec1911c7cd8f850f3e88e7ba5_2_3_photo.jpg', 0);
INSERT INTO `ProductImage` VALUES (41, 10015, 'http://productdata.isdfmk.xyz/a6bd598ec1911c7cd8f850f3e88e7ba5_2_3_photo.jpg', 0);
INSERT INTO `ProductImage` VALUES (42, 10016, '\r\nhttp://productdata.isdfmk.xyz/971ec333c8ef1de2.jpg', 1);
INSERT INTO `ProductImage` VALUES (43, 10016, '\r\nhttp://productdata.isdfmk.xyz/8053c011fc5f3f37.jpg', 0);
INSERT INTO `ProductImage` VALUES (44, 10016, '\r\nhttp://productdata.isdfmk.xyz/66447aca06daf84d.jpg', 0);
INSERT INTO `ProductImage` VALUES (45, 10016, '\r\nhttp://productdata.isdfmk.xyz/b13aea126799a8f7.jpg', 0);
INSERT INTO `ProductImage` VALUES (46, 10016, '\r\nhttp://productdata.isdfmk.xyz/fb8e44067242df88.jpg', 0);
INSERT INTO `ProductImage` VALUES (47, 10017, 'http://productdata.isdfmk.xyz/44c3c5495c1b5145.jpg', 1);
INSERT INTO `ProductImage` VALUES (48, 10017, 'http://productdata.isdfmk.xyz/2501bf3e7f96c1fb.jpg', 0);
INSERT INTO `ProductImage` VALUES (49, 10017, 'http://productdata.isdfmk.xyz/38043e785531d4f5.jpg', 0);
INSERT INTO `ProductImage` VALUES (50, 10017, 'http://productdata.isdfmk.xyz/bb905838dcde3ccd.jpg', 0);
INSERT INTO `ProductImage` VALUES (51, 10017, 'http://productdata.isdfmk.xyz/cc8e307f5aeccb49.jpg', 0);
INSERT INTO `ProductImage` VALUES (52, 10003, 'http://productdata.isdfmk.xyz/212478163d84fcf0.jpg', 1);
INSERT INTO `ProductImage` VALUES (54, 10003, 'http://productdata.isdfmk.xyz/7e885a6364ff7b21.jpg', 0);
INSERT INTO `ProductImage` VALUES (55, 10003, 'http://productdata.isdfmk.xyz/ad914e4c1ac2e465.jpg', 0);
INSERT INTO `ProductImage` VALUES (56, 10003, 'http://productdata.isdfmk.xyz/d094f60a2c15d012.jpg', 0);
INSERT INTO `ProductImage` VALUES (57, 10004, 'http://productdata.isdfmk.xyz/7a3a192a7fca3c35.png', 1);
INSERT INTO `ProductImage` VALUES (58, 10004, 'http://productdata.isdfmk.xyz/9c03f65ed857d88a.png', 0);
INSERT INTO `ProductImage` VALUES (59, 10004, 'http://productdata.isdfmk.xyz/4686681b97deebb2.png', 0);
INSERT INTO `ProductImage` VALUES (60, 10004, 'http://productdata.isdfmk.xyz/b0d64ec97f4d8f0d.jpg', 0);
INSERT INTO `ProductImage` VALUES (61, 10004, 'http://productdata.isdfmk.xyz/f88f82bdd98d9a68.png', 0);
INSERT INTO `ProductImage` VALUES (62, 10006, 'http://productdata.isdfmk.xyz/2ca45e2fd9758794.jpg', 1);
INSERT INTO `ProductImage` VALUES (63, 10006, 'http://productdata.isdfmk.xyz/223e72e6bb404498.jpg', 0);
INSERT INTO `ProductImage` VALUES (64, 10006, 'http://productdata.isdfmk.xyz/a2ba77e3e7b4a561.jpg', 0);
INSERT INTO `ProductImage` VALUES (65, 10006, 'http://productdata.isdfmk.xyz/a673d6639eecfb31.jpg', 0);
INSERT INTO `ProductImage` VALUES (66, 10006, 'http://productdata.isdfmk.xyz/b452b971225f3837.jpg', 0);
INSERT INTO `ProductImage` VALUES (67, 10007, 'http://productdata.isdfmk.xyz/9bf639975363fbb0.jpg', 1);
INSERT INTO `ProductImage` VALUES (68, 10007, 'http://productdata.isdfmk.xyz/15ae759577a35aa9.jpg', 0);
INSERT INTO `ProductImage` VALUES (69, 10007, 'http://productdata.isdfmk.xyz/9153db93fc57f0c4.jpg', 0);
INSERT INTO `ProductImage` VALUES (71, 10007, 'http://productdata.isdfmk.xyz/e7dacfdfe765ab9c.jpg', 0);
INSERT INTO `ProductImage` VALUES (72, 10008, '\r\nhttp://productdata.isdfmk.xyz/5b90958cN736d78c4.jpg', 1);
INSERT INTO `ProductImage` VALUES (73, 10008, 'http://productdata.isdfmk.xyz/5b90958dN5fb23f95.jpg', 0);
INSERT INTO `ProductImage` VALUES (74, 10008, 'http://productdata.isdfmk.xyz/6c7fafb8a6841a8c.jpg', 0);
INSERT INTO `ProductImage` VALUES (75, 10008, 'http://productdata.isdfmk.xyz/9a92c2762bb5c57b.jpg', 0);
INSERT INTO `ProductImage` VALUES (76, 10008, 'http://productdata.isdfmk.xyz/59fed11aN25bcc727.jpg', 0);
INSERT INTO `ProductImage` VALUES (77, 10009, 'http://productdata.isdfmk.xyz/0fb1612d25f44013.jpg', 1);
INSERT INTO `ProductImage` VALUES (78, 10009, 'http://productdata.isdfmk.xyz/4cc5b3d55b1d5695.jpg', 0);
INSERT INTO `ProductImage` VALUES (79, 10009, 'http://productdata.isdfmk.xyz/82805185280bf7fe.jpg', 0);
INSERT INTO `ProductImage` VALUES (80, 10009, 'http://productdata.isdfmk.xyz/a83b14d7249e7b35.jpg', 0);
INSERT INTO `ProductImage` VALUES (81, 10009, 'http://productdata.isdfmk.xyz/b081f2d2c95ed76d.jpg', 0);
INSERT INTO `ProductImage` VALUES (82, 10005, 'http://productdata.isdfmk.xyz/7a77ad4e3100e885.jpg', 1);
INSERT INTO `ProductImage` VALUES (83, 10005, 'http://productdata.isdfmk.xyz/7112412352ada3c6.jpg', 0);
INSERT INTO `ProductImage` VALUES (84, 10005, 'http://productdata.isdfmk.xyz/a2e58b389d88d1d9.jpg', 0);
INSERT INTO `ProductImage` VALUES (85, 10005, 'http://productdata.isdfmk.xyz/b4c0df48e4bbcc4a.jpg', 0);
INSERT INTO `ProductImage` VALUES (86, 10005, 'http://productdata.isdfmk.xyz/d695e3db95cf66cb.jpg', 0);
INSERT INTO `ProductImage` VALUES (87, 10018, '\r\nhttp://productdata.isdfmk.xyz/5cd5acfbN24c0ee18.jpg', 1);
INSERT INTO `ProductImage` VALUES (88, 10018, '\r\nhttp://productdata.isdfmk.xyz/5ce44b68N134a0ce4.jpg', 0);
INSERT INTO `ProductImage` VALUES (89, 10018, '\r\nhttp://productdata.isdfmk.xyz/5ce44b70N7a533656.jpg', 0);
INSERT INTO `ProductImage` VALUES (90, 10018, '\r\nhttp://productdata.isdfmk.xyz/12d9fdefc091d9e7.jpg', 0);
INSERT INTO `ProductImage` VALUES (91, 10018, '\r\nhttp://productdata.isdfmk.xyz/0938b8c9db25d916.jpg', 0);
INSERT INTO `ProductImage` VALUES (92, 10019, '\r\nhttp://productdata.isdfmk.xyz/2-SXJILMjHoQXj66aurkzg.jpg', 1);
INSERT INTO `ProductImage` VALUES (93, 10019, '\r\nhttp://productdata.isdfmk.xyz/bHr9HgsqtllBbPtMov6jww.jpg', 0);
INSERT INTO `ProductImage` VALUES (94, 10019, '\r\nhttp://productdata.isdfmk.xyz/ca9NrNg1kMP-VoP8tOYNxg.jpg', 0);
INSERT INTO `ProductImage` VALUES (95, 10019, '\r\nhttp://productdata.isdfmk.xyz/jg1eWej2dz72FeRkl0C_8w.jpg', 0);
INSERT INTO `ProductImage` VALUES (96, 10019, '\r\nhttp://productdata.isdfmk.xyz/xranhinAPpnEuaarT7JhRw.jpg', 0);
INSERT INTO `ProductImage` VALUES (97, 10020, 'http://productdata.isdfmk.xyz/0070137366-000000010059586574_3.jpg', 1);
INSERT INTO `ProductImage` VALUES (98, 10020, 'http://productdata.isdfmk.xyz/0070137366-000000010059586574_4.jpg', 0);
INSERT INTO `ProductImage` VALUES (99, 10020, 'http://productdata.isdfmk.xyz/0070137366-000000010059586574_5.jpg', 0);
INSERT INTO `ProductImage` VALUES (100, 10020, 'http://productdata.isdfmk.xyz/225731782139609909464061_x.jpg', 0);
INSERT INTO `ProductImage` VALUES (101, 10020, 'http://productdata.isdfmk.xyz/367000235486258003552709_x.jpg', 0);
INSERT INTO `ProductImage` VALUES (102, 10021, 'http://productdata.isdfmk.xyz/dbBltniJF2LoPk9QQ3YWaw.jpg', 1);
INSERT INTO `ProductImage` VALUES (103, 10021, 'http://productdata.isdfmk.xyz/DjtdSBwAWuSxHs6yAAc3Yw.jpg', 0);
INSERT INTO `ProductImage` VALUES (104, 10021, 'http://productdata.isdfmk.xyz/iLSvW0r_-YDo4L7iUT7xkw.jpg', 0);
INSERT INTO `ProductImage` VALUES (105, 10021, 'http://productdata.isdfmk.xyz/N_lvVexzFxRREgxewSkOxA.jpg', 0);
INSERT INTO `ProductImage` VALUES (106, 10021, 'http://productdata.isdfmk.xyz/vqMAvTS5sJGYjfaD_qEVWA.jpg', 0);
INSERT INTO `ProductImage` VALUES (107, 10022, '\r\nhttp://productdata.isdfmk.xyz/adadas3e.jpg', 1);
INSERT INTO `ProductImage` VALUES (108, 10022, '\r\nhttp://productdata.isdfmk.xyz/Bjxu9RqIzP3Ee5QkFP6d1A.jpg', 0);
INSERT INTO `ProductImage` VALUES (109, 10022, '\r\nhttp://productdata.isdfmk.xyz/aIcBs8oaW7BK7O_XjKnyDw.jpg', 0);
INSERT INTO `ProductImage` VALUES (110, 10022, '\r\nhttp://productdata.isdfmk.xyz/RUbeN8NHFbwRkkH4-AuKbQ.jpg', 0);
INSERT INTO `ProductImage` VALUES (111, 10022, '\r\nhttp://productdata.isdfmk.xyz/x-0NQEGxSXEpg4GUBE7gkQ.jpg', 0);
INSERT INTO `ProductImage` VALUES (112, 10023, '\r\nhttp://productdata.isdfmk.xyz/tuhaokuai_1583977278.jpg', 1);
INSERT INTO `ProductImage` VALUES (113, 10023, '\r\nhttp://productdata.isdfmk.xyz/tuhaokuai_1583977330.jpg', 0);
INSERT INTO `ProductImage` VALUES (114, 10023, '\r\nhttp://productdata.isdfmk.xyz/tuhaokuai_1583977307.jpg', 0);
INSERT INTO `ProductImage` VALUES (115, 10023, '\r\nhttp://productdata.isdfmk.xyz/tuhaokuai_1583977378.jpg', 0);
INSERT INTO `ProductImage` VALUES (116, 10023, 'http://productdata.isdfmk.xyz/tuhaokuai_1583977378.jpg', 0);
INSERT INTO `ProductImage` VALUES (117, 10024, 'http://productdata.isdfmk.xyz/AD8JQ6Q0jfeySzdxAVglqw.jpg', 1);
INSERT INTO `ProductImage` VALUES (118, 10024, 'http://productdata.isdfmk.xyz/1k7IJMBhmkX97QGmsBnJmA.jpg', 0);
INSERT INTO `ProductImage` VALUES (119, 10024, 'http://productdata.isdfmk.xyz/QlCRL5Qc2PQ1Ds9msLQ0aw.jpg', 0);
INSERT INTO `ProductImage` VALUES (120, 10024, 'http://productdata.isdfmk.xyz/vGYPFoIyeYmz5oRZzvZdgQ.jpg', 0);
INSERT INTO `ProductImage` VALUES (121, 10024, 'http://productdata.isdfmk.xyz/YZNbG7O6_BbGM7S33OAZxQ.jpg\r\n', 0);
INSERT INTO `ProductImage` VALUES (122, 10025, 'http://productdata.isdfmk.xyz/FlnxmuE-gh4YKIj4txsLfg.jpg', 1);
INSERT INTO `ProductImage` VALUES (123, 10025, 'http://productdata.isdfmk.xyz/NL-OSHZUQGs6vGjGsmI__w.jpg', 0);
INSERT INTO `ProductImage` VALUES (124, 10025, 'http://productdata.isdfmk.xyz/CZ5siXML-q9UXRnuqpww0g.jpg', 0);
INSERT INTO `ProductImage` VALUES (125, 10025, 'http://productdata.isdfmk.xyz/GVEWb_biyayx8a3dNgKA2g.jpg', 0);
INSERT INTO `ProductImage` VALUES (126, 10025, 'http://productdata.isdfmk.xyz/i7kQ4Pf_DtOVDPRC-HazMg.jpg', 0);
INSERT INTO `ProductImage` VALUES (127, 10026, 'http://productdata.isdfmk.xyz/a1.jpg', 1);
INSERT INTO `ProductImage` VALUES (128, 10026, 'http://productdata.isdfmk.xyz/a2.jpg', 0);
INSERT INTO `ProductImage` VALUES (129, 10026, 'http://productdata.isdfmk.xyz/b1.jpg', 0);
INSERT INTO `ProductImage` VALUES (130, 10026, 'http://productdata.isdfmk.xyz/b2.jpg', 0);
INSERT INTO `ProductImage` VALUES (131, 10026, 'http://productdata.isdfmk.xyz/b3.jpg', 0);
INSERT INTO `ProductImage` VALUES (132, 10027, 'http://productdata.isdfmk.xyz/135638619666091357760161_x.jpg', 1);
INSERT INTO `ProductImage` VALUES (133, 10027, 'http://productdata.isdfmk.xyz/147494239513439282291194_x.jpg', 0);
INSERT INTO `ProductImage` VALUES (134, 10027, 'http://productdata.isdfmk.xyz/194496895094406041420196_x.jpg', 0);
INSERT INTO `ProductImage` VALUES (135, 10027, 'http://productdata.isdfmk.xyz/216693731079825961722732_x.jpg', 0);
INSERT INTO `ProductImage` VALUES (136, 10027, 'http://productdata.isdfmk.xyz/HtNyjfPMAhzQjw1RPlMUoA.jpg', 0);
INSERT INTO `ProductImage` VALUES (137, 10028, 'http://productdata.isdfmk.xyz/5JR1uDh09y-dhv8RSstl9g.jpg', 1);
INSERT INTO `ProductImage` VALUES (138, 10028, 'http://productdata.isdfmk.xyz/jU8rPyTxL3Siw6dLEUHhDQ.jpg', 0);
INSERT INTO `ProductImage` VALUES (139, 10028, 'http://productdata.isdfmk.xyz/MUak68zcW1wihVXkpQ3rIQ.jpg', 0);
INSERT INTO `ProductImage` VALUES (140, 10028, 'http://productdata.isdfmk.xyz/nV358PZUk4icX1T7fBcc_Q.jpg', 0);
INSERT INTO `ProductImage` VALUES (141, 10028, 'http://productdata.isdfmk.xyz/XJSBumEOLmp8H7P3GX2ASw.jpg', 0);
INSERT INTO `ProductImage` VALUES (143, 10029, 'http://productdata.isdfmk.xyz/334355456168161240400082_x.jpg', 1);
INSERT INTO `ProductImage` VALUES (144, 10029, 'http://productdata.isdfmk.xyz/619597484920156642971000_x.jpg', 0);
INSERT INTO `ProductImage` VALUES (145, 10029, 'http://productdata.isdfmk.xyz/907405909774268174160400_x.jpg', 0);
INSERT INTO `ProductImage` VALUES (146, 10029, 'http://productdata.isdfmk.xyz/hfQeM5SNL7aIQsnz4m2MwA.jpg', 0);
INSERT INTO `ProductImage` VALUES (147, 10030, 'http://productdata.isdfmk.xyz/5Bl2awngovDrpx-B7yhitw.jpg', 1);
INSERT INTO `ProductImage` VALUES (148, 10030, 'http://productdata.isdfmk.xyz/EPgdZq3WD1ibfSP8znHfFQ.jpg', 0);
INSERT INTO `ProductImage` VALUES (149, 10030, 'http://productdata.isdfmk.xyz/hlkkdGdo-SSYb77-pYqpmw.jpg', 0);
INSERT INTO `ProductImage` VALUES (150, 10030, 'http://productdata.isdfmk.xyz/mvkEwjIBeMqinZ51RBJt6A.jpg', 0);
INSERT INTO `ProductImage` VALUES (277, 10007, 'http://productdata.isdfmk.xyz/46a38b07d9db03e28a5795058bbf564f.jpg_100071592725181433', 0);
INSERT INTO `ProductImage` VALUES (278, 10002, 'http://productdata.isdfmk.xyz/3201246f8bc8b066434092eb5865e533.jpeg_100021592729359004', 1);
INSERT INTO `ProductImage` VALUES (279, 10002, 'http://productdata.isdfmk.xyz/36e1afbfc55303502fe9d46c46ddbd85.jpg_100021592729360263', 0);
INSERT INTO `ProductImage` VALUES (280, 10002, 'http://productdata.isdfmk.xyz/58e93764062b27867e53f1ca35660cec.jpeg_100021592729360830', 0);
INSERT INTO `ProductImage` VALUES (281, 10030, 'http://productdata.isdfmk.xyz/8065596a6fbcf0b6175b0824518deadc.jpg_100301592901297654', 0);
INSERT INTO `ProductImage` VALUES (283, 10078, 'http://productdata.isdfmk.xyz/3ad7a63ae046a0e1b895f4450d988721.jpg_100781592902857272', 1);
INSERT INTO `ProductImage` VALUES (284, 10079, 'http://productdata.isdfmk.xyz/46a38b07d9db03e28a5795058bbf564f.jpg_100791592902941463', 1);
INSERT INTO `ProductImage` VALUES (285, 10080, 'http://productdata.isdfmk.xyz/46a38b07d9db03e28a5795058bbf564f.jpg_100801592903647402', 1);
INSERT INTO `ProductImage` VALUES (286, 10081, 'http://productdata.isdfmk.xyz/46a38b07d9db03e28a5795058bbf564f.jpg_100811592903718073', 1);
INSERT INTO `ProductImage` VALUES (287, 10082, 'http://productdata.isdfmk.xyz/46a38b07d9db03e28a5795058bbf564f.jpg_100821592903810853', 1);
INSERT INTO `ProductImage` VALUES (288, 10083, 'http://productdata.isdfmk.xyz/3ad7a63ae046a0e1b895f4450d988721.jpg_100831592903882928', 1);
INSERT INTO `ProductImage` VALUES (289, 10084, 'http://productdata.isdfmk.xyz/46a38b07d9db03e28a5795058bbf564f.jpg_100841592904659832', 1);
INSERT INTO `ProductImage` VALUES (290, 10085, 'http://productdata.isdfmk.xyz/46a38b07d9db03e28a5795058bbf564f.jpg_100851592904703447', 1);

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
  `ProductSales` double(10, 2) NULL DEFAULT 0.00,
  `ProductInventory` double(10, 2) NULL DEFAULT 0.00,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 70 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ProductPrice
-- ----------------------------
INSERT INTO `ProductPrice` VALUES (1, 10001, 599955.00, 4844, 4549.00, 2.00, 0.00);
INSERT INTO `ProductPrice` VALUES (2, 10002, 1999.00, 1899, 15886.00, 77.00, 99.00);
INSERT INTO `ProductPrice` VALUES (3, 10010, 3596.00, 2563, 2523.00, 1582.00, 1853.00);
INSERT INTO `ProductPrice` VALUES (4, 10011, 10398.00, 19888, 9999.00, 18982.00, 15547.00);
INSERT INTO `ProductPrice` VALUES (5, 10012, 4999.00, 4888, 4760.00, 17748.00, 58658.00);
INSERT INTO `ProductPrice` VALUES (6, 10013, 11999.00, 18999, 10888.00, 1122304.00, 144444.00);
INSERT INTO `ProductPrice` VALUES (7, 10014, 2898.00, 2584, 2541.00, 14526.00, 18858.00);
INSERT INTO `ProductPrice` VALUES (8, 10015, 20.00, 10, 8.80, 88970.00, 74536.00);
INSERT INTO `ProductPrice` VALUES (9, 10016, 5399.00, 4999, 4988.00, 158637.00, 786317.00);
INSERT INTO `ProductPrice` VALUES (10, 10017, 3199.00, 2999, 3012.00, 4538.00, 78580.00);
INSERT INTO `ProductPrice` VALUES (11, 10003, 88.00, 666, 589.00, 18967.00, 5665526.00);
INSERT INTO `ProductPrice` VALUES (12, 10006, 1499.00, 1399, 1360.00, 156448.00, 4855431.00);
INSERT INTO `ProductPrice` VALUES (13, 10007, 2899.00, 2899, 1569.00, 157081.00, 145544.00);
INSERT INTO `ProductPrice` VALUES (14, 10008, 3500.00, 15588, 1585.00, 10084.00, 15247.00);
INSERT INTO `ProductPrice` VALUES (15, 10009, 47699.00, 4688, 45666.00, 666748.00, 48586.00);
INSERT INTO `ProductPrice` VALUES (16, 10004, 30576.00, 29999, 28999.00, 10082.00, 158547.00);
INSERT INTO `ProductPrice` VALUES (17, 10005, 7890.00, 5888, 4585.00, 155637.00, 14555.00);
INSERT INTO `ProductPrice` VALUES (18, 10018, 1140.00, 1111, 999.00, 1938.00, 15545.00);
INSERT INTO `ProductPrice` VALUES (19, 10019, 260000.00, 259999, 259999.00, 83.00, 7.00);
INSERT INTO `ProductPrice` VALUES (20, 10020, 5199.00, 4999, 4855.00, 182.00, 11103.00);
INSERT INTO `ProductPrice` VALUES (21, 10021, 18599.00, 1855, 1599.00, 1082.00, 5547.00);
INSERT INTO `ProductPrice` VALUES (22, 10023, 1299.00, 1152, 1258.00, 1082.00, 244.00);
INSERT INTO `ProductPrice` VALUES (23, 10024, 2188.00, 2088, 1999.00, 1598.00, 4894641.00);
INSERT INTO `ProductPrice` VALUES (24, 10025, 71.00, 66, 59.90, 161538.00, 156155.00);
INSERT INTO `ProductPrice` VALUES (25, 10022, 1289.00, 1206, 1126.00, 54615247.00, 465147.00);
INSERT INTO `ProductPrice` VALUES (26, 10026, 100000.00, 620, 599.00, 15661238.00, 12.00);
INSERT INTO `ProductPrice` VALUES (27, 10027, 773.00, 666, 689.00, 154936.00, 1658.00);
INSERT INTO `ProductPrice` VALUES (28, 10028, 265.09, 222, 218.00, 151597.00, 154565.00);
INSERT INTO `ProductPrice` VALUES (29, 10029, 2920.01, 288, 2999.00, 21343.00, 165138.00);
INSERT INTO `ProductPrice` VALUES (30, 10030, 128.00, 128, 128.00, 10082.00, 992.00);
INSERT INTO `ProductPrice` VALUES (62, 10078, 312322.00, NULL, NULL, 0.00, 0.00);
INSERT INTO `ProductPrice` VALUES (63, 10079, 21123.00, NULL, NULL, 0.00, 0.00);
INSERT INTO `ProductPrice` VALUES (64, 10080, 312322.00, NULL, NULL, 0.00, 0.00);
INSERT INTO `ProductPrice` VALUES (65, 10081, 312322.00, NULL, NULL, 0.00, 0.00);
INSERT INTO `ProductPrice` VALUES (66, 10082, 312322.00, NULL, NULL, 0.00, 0.00);
INSERT INTO `ProductPrice` VALUES (67, 10083, 312322.00, NULL, NULL, 0.00, 0.00);
INSERT INTO `ProductPrice` VALUES (68, 10084, 312322.00, NULL, NULL, 0.00, 0.00);
INSERT INTO `ProductPrice` VALUES (69, 10085, 312322.00, NULL, NULL, 0.00, 0.00);

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
INSERT INTO `RotationChart` VALUES (1, 'http://carousel.isdfmk.xyz/5690b6dcNd5aaa0f0.jpg', '/', 'http://carousel.isdfmk.xyz/56cdc416Ne54f9cd9.jpg', '/', 'http://carousel.isdfmk.xyz/56cdc486N8446aa1b.jpg', '/', 'http://carousel.isdfmk.xyz/56cdc802Ne2d2904c.jpg', '/');
INSERT INTO `RotationChart` VALUES (2, 'http://carousel.isdfmk.xyz/56960e10N27e2d29f.jpg', '/', 'http://carousel.isdfmk.xyz/56cdc812N28b5f894.jpg', '/', 'http://carousel.isdfmk.xyz/56cdc822N62394473.jpg', '/', 'http://carousel.isdfmk.xyz/56cdc906Na4b1ff7c.jpg', '/');
INSERT INTO `RotationChart` VALUES (3, 'http://carousel.isdfmk.xyz/5698a5aaN08e09475.jpg', '/', 'http://carousel.isdfmk.xyz/56cdc944N4f9497d4.jpg', '/', 'http://carousel.isdfmk.xyz/56cdc956Na8d6ef06.jpg', '/', 'http://carousel.isdfmk.xyz/56cdc966N3b48164b.jpg', '/');
INSERT INTO `RotationChart` VALUES (4, 'http://carousel.isdfmk.xyz/56a05078N6add136b.jpg', '/', 'http://carousel.isdfmk.xyz/56cdc97aN3e1b0fe9.jpg', '/', 'http://carousel.isdfmk.xyz/56cdc99cN4291a808.jpg', '/', 'http://carousel.isdfmk.xyz/56cdca25N8aa1cbb6.jpg', '/');
INSERT INTO `RotationChart` VALUES (5, 'http://carousel.isdfmk.xyz/56a09e6aN373313d9.jpg', '/', 'http://carousel.isdfmk.xyz/56cdca36N6e25e29a.jpg', '/', 'http://carousel.isdfmk.xyz/56cdca8dNc0da3888.jpg', '/', 'http://carousel.isdfmk.xyz/56cdca9eN5a1c2c29.jpg', '/');

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
-- Table structure for arrivalNotice
-- ----------------------------
DROP TABLE IF EXISTS `arrivalNotice`;
CREATE TABLE `arrivalNotice`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userId` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `productId` int(11) NULL DEFAULT NULL,
  `distinctionId` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 16 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of arrivalNotice
-- ----------------------------
INSERT INTO `arrivalNotice` VALUES (13, '7c9fdfa3177042a08766aed29e7de6cd', 10001, NULL);
INSERT INTO `arrivalNotice` VALUES (14, '7c9fdfa3177042a08766aed29e7de6cd', 10002, NULL);
INSERT INTO `arrivalNotice` VALUES (15, '7c9fdfa3177042a08766aed29e7de6cd', 10026, NULL);

-- ----------------------------
-- Table structure for attributeType
-- ----------------------------
DROP TABLE IF EXISTS `attributeType`;
CREATE TABLE `attributeType`  (
  `attributeTypeId` int(11) NOT NULL,
  `value` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `title` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`attributeTypeId`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of attributeType
-- ----------------------------
INSERT INTO `attributeType` VALUES (10, 'size', '尺寸');
INSERT INTO `attributeType` VALUES (11, 'colour', '颜色');
INSERT INTO `attributeType` VALUES (12, 'combo', '套餐');
INSERT INTO `attributeType` VALUES (13, 'specification', '规格');
INSERT INTO `attributeType` VALUES (14, 'taste', '口味');
INSERT INTO `attributeType` VALUES (15, 'kind', '种类');
INSERT INTO `attributeType` VALUES (16, 'version', '版本');

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
-- Table structure for commentImage
-- ----------------------------
DROP TABLE IF EXISTS `commentImage`;
CREATE TABLE `commentImage`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `commentId` int(11) NULL DEFAULT NULL,
  `commentPicture` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `fign` int(11) NULL DEFAULT 1,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 186 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of commentImage
-- ----------------------------
INSERT INTO `commentImage` VALUES (98, 175, ' http://img.isdfmk.xyz/f7beb49c75774b1f8fafb8cb03ac2123?t=1589884732', 1);
INSERT INTO `commentImage` VALUES (99, 175, ' http://img.isdfmk.xyz/76088a31f50741d9ad882183bbdfb9d2?t=1589884733', 1);
INSERT INTO `commentImage` VALUES (100, 175, ' http://img.isdfmk.xyz/7058538fbddc46f08247440737a19b0d?t=1589884734', 1);
INSERT INTO `commentImage` VALUES (101, 175, ' http://img.isdfmk.xyz/22e8291452d14003b8ed65ae71ea1897?t=1589884736', 1);
INSERT INTO `commentImage` VALUES (102, 175, ' http://img.isdfmk.xyz/7d0786825f4a45eea0b1870fee365e1b?t=1589884736', 1);
INSERT INTO `commentImage` VALUES (103, 175, NULL, 1);
INSERT INTO `commentImage` VALUES (104, 176, ' http://img.isdfmk.xyz/d5cd009c90a347a0a8ee1f62cf26ecdf?t=1589888247', 1);
INSERT INTO `commentImage` VALUES (105, 176, NULL, 1);
INSERT INTO `commentImage` VALUES (106, 177, ' http://img.isdfmk.xyz/72312c360f9d4790ad9a93c0c55ba60e?t=1589892685', 1);
INSERT INTO `commentImage` VALUES (107, 177, ' http://img.isdfmk.xyz/13b520de8eea408285a9bb3ffd0ce591?t=1589892687', 1);
INSERT INTO `commentImage` VALUES (108, 177, ' http://img.isdfmk.xyz/18cc28d764964825b6b83f3f8d51250d?t=1589892688', 1);
INSERT INTO `commentImage` VALUES (109, 177, ' http://img.isdfmk.xyz/6a35598e8465446183fff33bb1cc1e95?t=1589892688', 1);
INSERT INTO `commentImage` VALUES (110, 177, ' http://img.isdfmk.xyz/cd1f4687a9e64efdbe81064bc7bfef9c?t=1589892689', 1);
INSERT INTO `commentImage` VALUES (111, 177, ' http://img.isdfmk.xyz/bb81c84add2d4ec0be99d564c8d74f36?t=1589892689', 1);
INSERT INTO `commentImage` VALUES (112, 177, ' http://img.isdfmk.xyz/bdd2499a46f340dd8c0c27010ca5298d?t=1589892690', 1);
INSERT INTO `commentImage` VALUES (113, 177, ' http://img.isdfmk.xyz/e88824410d6b479a90c718c21937131b?t=1589892690', 1);
INSERT INTO `commentImage` VALUES (114, 177, ' http://img.isdfmk.xyz/8d1de32664274f218bed09abf2733d56?t=1589892691', 1);
INSERT INTO `commentImage` VALUES (115, 177, ' http://img.isdfmk.xyz/7f987d8063c4490aa102087e380fa4da?t=1589892691', 1);
INSERT INTO `commentImage` VALUES (116, 177, NULL, 1);
INSERT INTO `commentImage` VALUES (117, 178, ' http://img.isdfmk.xyz/bad3e625f3144ec7ba746631dfba9bb8?t=1589892702', 1);
INSERT INTO `commentImage` VALUES (118, 178, ' http://img.isdfmk.xyz/4614d2fce538476b8b3d583357ebad7a?t=1589892704', 1);
INSERT INTO `commentImage` VALUES (119, 178, ' http://img.isdfmk.xyz/c6e97a5eea174e70b0ebf7de1833f897?t=1589892705', 1);
INSERT INTO `commentImage` VALUES (120, 178, ' http://img.isdfmk.xyz/e0e71e1d1ea54aedbfd9ee059de7c988?t=1589892706', 1);
INSERT INTO `commentImage` VALUES (121, 178, ' http://img.isdfmk.xyz/2df20875492d4977bdda804ae0733e49?t=1589892706', 1);
INSERT INTO `commentImage` VALUES (122, 178, ' http://img.isdfmk.xyz/d6c7d312a48146ec8c869d797a3ba4b7?t=1589892706', 1);
INSERT INTO `commentImage` VALUES (123, 178, ' http://img.isdfmk.xyz/6ab34c8dc0be43bf94b96b744054c02a?t=1589892707', 1);
INSERT INTO `commentImage` VALUES (124, 178, ' http://img.isdfmk.xyz/5cd72a024cc94302b5733ca5852b374f?t=1589892707', 1);
INSERT INTO `commentImage` VALUES (125, 178, ' http://img.isdfmk.xyz/4deafe9029de4547a73bfe5b775a97e1?t=1589892707', 1);
INSERT INTO `commentImage` VALUES (126, 178, ' http://img.isdfmk.xyz/ab4c5d62dcf14e9ea3b7ebfe231095f8?t=1589892707', 1);
INSERT INTO `commentImage` VALUES (127, 178, NULL, 1);
INSERT INTO `commentImage` VALUES (128, 179, ' http://img.isdfmk.xyz/3bddd0baefa84b189cd4e6cdd44f0418?t=1589936467', 1);
INSERT INTO `commentImage` VALUES (129, 180, ' http://img.isdfmk.xyz/971f759398b54dd48d5eba2d2f5a860b?t=1589962992', 1);
INSERT INTO `commentImage` VALUES (130, 180, ' http://img.isdfmk.xyz/24f340b6ddf942569d5ebf9a8dc09239?t=1589962994', 1);
INSERT INTO `commentImage` VALUES (131, 180, ' http://img.isdfmk.xyz/601906fb212541afb69ff3f67353a66b?t=1589962996', 1);
INSERT INTO `commentImage` VALUES (132, 180, ' http://img.isdfmk.xyz/c31166bc125847259f079244b7bc5c09?t=1589962996', 1);
INSERT INTO `commentImage` VALUES (133, 180, ' http://img.isdfmk.xyz/e7a885f7f82146fda08599a14130d0b0?t=1589962996', 1);
INSERT INTO `commentImage` VALUES (134, 180, ' http://img.isdfmk.xyz/b2f1303ec87b40d9bbf90295e5672de0?t=1589962996', 1);
INSERT INTO `commentImage` VALUES (135, 180, ' http://img.isdfmk.xyz/8abc2647695844018ecf43b3f615ee87?t=1589962997', 1);
INSERT INTO `commentImage` VALUES (136, 180, ' http://img.isdfmk.xyz/8ac8ebd584e649dab2c4e6c48ba5a857?t=1589962997', 1);
INSERT INTO `commentImage` VALUES (137, 180, ' http://img.isdfmk.xyz/d6c19e50ae7442d9b38359aa71385aa7?t=1589962997', 1);
INSERT INTO `commentImage` VALUES (138, 180, ' http://img.isdfmk.xyz/3f9426f137a744e7975a2c59208253d0?t=1589962998', 1);
INSERT INTO `commentImage` VALUES (139, 180, NULL, 1);
INSERT INTO `commentImage` VALUES (140, 181, ' http://img.isdfmk.xyz/dfec66a86dbd4ba28d8f82c4b090c2f8?t=1589963000', 1);
INSERT INTO `commentImage` VALUES (141, 181, ' http://img.isdfmk.xyz/d5f05ed783124cb8b7261d1f3123a407?t=1589963002', 1);
INSERT INTO `commentImage` VALUES (142, 181, ' http://img.isdfmk.xyz/9555440b94124077a47121a48b0b83f8?t=1589963003', 1);
INSERT INTO `commentImage` VALUES (143, 181, ' http://img.isdfmk.xyz/2017a4c8978b4bf19479d95e06328e04?t=1589963004', 1);
INSERT INTO `commentImage` VALUES (144, 181, ' http://img.isdfmk.xyz/0865bd5a77de41aabd42c528f81d802a?t=1589963004', 1);
INSERT INTO `commentImage` VALUES (145, 181, ' http://img.isdfmk.xyz/fa00e57fb2944bd1978d22384b0a233c?t=1589963005', 1);
INSERT INTO `commentImage` VALUES (146, 181, ' http://img.isdfmk.xyz/1795915e7d1a43d1bd0c427bb2cc9dbf?t=1589963005', 1);
INSERT INTO `commentImage` VALUES (147, 181, ' http://img.isdfmk.xyz/89cc8fa54f964e459ce77ae332c2162e?t=1589963005', 1);
INSERT INTO `commentImage` VALUES (148, 181, ' http://img.isdfmk.xyz/bc882f88d77f43d0a83ecff7669204cc?t=1589963006', 1);
INSERT INTO `commentImage` VALUES (149, 181, ' http://img.isdfmk.xyz/284c5788404b4ea18895d1f70f530405?t=1589963006', 1);
INSERT INTO `commentImage` VALUES (150, 181, NULL, 1);
INSERT INTO `commentImage` VALUES (151, 182, ' http://img.isdfmk.xyz/4ddd4ca88f424192a9be031a804ca279?t=1589982769', 1);
INSERT INTO `commentImage` VALUES (152, 184, ' http://img.isdfmk.xyz/c334eee8122d476d93d0761bc4b8c915?t=1590033014', 1);
INSERT INTO `commentImage` VALUES (153, 184, ' http://img.isdfmk.xyz/c28a3de0d1d1453c9e622b645af6ca17?t=1590033016', 1);
INSERT INTO `commentImage` VALUES (154, 184, ' http://img.isdfmk.xyz/dbc4c6b5cd3f4a72bc05666bb17531b1?t=1590033018', 1);
INSERT INTO `commentImage` VALUES (155, 184, ' http://img.isdfmk.xyz/78a6ac5f27d440518d5c8d6842e2ad13?t=1590033018', 1);
INSERT INTO `commentImage` VALUES (156, 184, ' http://img.isdfmk.xyz/c72811f814784c10b5bc9ed1d016b979?t=1590033019', 1);
INSERT INTO `commentImage` VALUES (157, 184, ' http://img.isdfmk.xyz/233cd39feb164c1d92b173918145cde1?t=1590033020', 1);
INSERT INTO `commentImage` VALUES (158, 184, ' http://img.isdfmk.xyz/ee683bce56a3437fb19c884955cca206?t=1590033020', 1);
INSERT INTO `commentImage` VALUES (159, 184, ' http://img.isdfmk.xyz/d08e9b51a114499185ad3f12056f0269?t=1590033020', 1);
INSERT INTO `commentImage` VALUES (160, 184, ' http://img.isdfmk.xyz/ee6ace5b00a64cdf8475fbb8dab8d003?t=1590033021', 1);
INSERT INTO `commentImage` VALUES (161, 184, ' http://img.isdfmk.xyz/0416acc0e56448a4981f29413913ca19?t=1590033021', 1);
INSERT INTO `commentImage` VALUES (162, 184, NULL, 1);
INSERT INTO `commentImage` VALUES (163, 185, ' http://img.isdfmk.xyz/4a153dba7297473982ae2b5b49f2d777?t=1590237961', 1);
INSERT INTO `commentImage` VALUES (164, 185, ' http://img.isdfmk.xyz/a122ba49f3924957ab6517a8355c74ce?t=1590237963', 1);
INSERT INTO `commentImage` VALUES (165, 185, ' http://img.isdfmk.xyz/53525314e8b242e6948f2007c4aba7c3?t=1590237964', 1);
INSERT INTO `commentImage` VALUES (166, 185, ' http://img.isdfmk.xyz/8accd15209cb4120b9165a7a8c439de4?t=1590237965', 1);
INSERT INTO `commentImage` VALUES (167, 185, ' http://img.isdfmk.xyz/7c89cfc3dedf4caa9ff497da62b24bda?t=1590237965', 1);
INSERT INTO `commentImage` VALUES (168, 185, ' http://img.isdfmk.xyz/9814f8c60ced4995994b202a3ceb5b29?t=1590237965', 1);
INSERT INTO `commentImage` VALUES (169, 185, ' http://img.isdfmk.xyz/733c062837db4fb7a499dc4d7d6f99b8?t=1590237965', 1);
INSERT INTO `commentImage` VALUES (170, 185, ' http://img.isdfmk.xyz/47d8e2fc079d4abc85db11a43bef36df?t=1590237966', 1);
INSERT INTO `commentImage` VALUES (171, 185, ' http://img.isdfmk.xyz/b39017c9910d4b24bbd6bdac6fe32005?t=1590237967', 1);
INSERT INTO `commentImage` VALUES (172, 185, ' http://img.isdfmk.xyz/f837f34d2de14c9cb185702ebed0235e?t=1590237967', 1);
INSERT INTO `commentImage` VALUES (173, 185, NULL, 1);
INSERT INTO `commentImage` VALUES (174, 186, ' http://img.isdfmk.xyz/72c447f5c69c41f98d61433c0e81da47?t=1590237970', 1);
INSERT INTO `commentImage` VALUES (175, 186, ' http://img.isdfmk.xyz/a93e1d61afcc40b992ecbbd42ad0f5ef?t=1590237972', 1);
INSERT INTO `commentImage` VALUES (176, 186, ' http://img.isdfmk.xyz/e8218e6d9d2f471db91182cf3ba2de78?t=1590237974', 1);
INSERT INTO `commentImage` VALUES (177, 186, ' http://img.isdfmk.xyz/8977e8c33524436589d15eed914770ec?t=1590237974', 1);
INSERT INTO `commentImage` VALUES (178, 186, ' http://img.isdfmk.xyz/a1f97c4f867d47c3beec8ee8fb42c3cf?t=1590237974', 1);
INSERT INTO `commentImage` VALUES (179, 186, ' http://img.isdfmk.xyz/0612c893bb0d4e359ff8acbb52d8ef2e?t=1590237974', 1);
INSERT INTO `commentImage` VALUES (180, 186, ' http://img.isdfmk.xyz/a2312a01c5dc4f55bb4c51069b9d5b89?t=1590237975', 1);
INSERT INTO `commentImage` VALUES (181, 186, ' http://img.isdfmk.xyz/1bd6f33e15f14992b23b5050aac07aad?t=1590237975', 1);
INSERT INTO `commentImage` VALUES (182, 186, ' http://img.isdfmk.xyz/91a8a6ab8e9141978b2e064449e77cc0?t=1590237975', 1);
INSERT INTO `commentImage` VALUES (183, 186, ' http://img.isdfmk.xyz/c85148fc73a7452f83c885300953f6c9?t=1590237975', 1);
INSERT INTO `commentImage` VALUES (184, 186, NULL, 1);
INSERT INTO `commentImage` VALUES (185, 189, ' http://img.isdfmk.xyz/b8fda32a36fe440a82fb5b5152118564?t=1592795975', 1);

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
INSERT INTO `homepageIcon` VALUES (1, 'http://img.isdfmk.xyz/e.png', '/personalCenter', '会员');
INSERT INTO `homepageIcon` VALUES (2, 'http://img.isdfmk.xyz/d.png', '/personalInformation', '我的');
INSERT INTO `homepageIcon` VALUES (3, 'http://img.isdfmk.xyz/a.png', '/messageCenter', '消息');
INSERT INTO `homepageIcon` VALUES (4, '\r\nhttp://img.isdfmk.xyz/f.png', '/favorite', '收藏');
INSERT INTO `homepageIcon` VALUES (5, '\r\nhttp://img.isdfmk.xyz/h.png', '/shoppingCart', '购物车');
INSERT INTO `homepageIcon` VALUES (6, '\r\nhttp://img.isdfmk.xyz/g.png', '/allOrders', '订单');
INSERT INTO `homepageIcon` VALUES (7, '\r\nhttp://img.isdfmk.xyz/c.png', '/', '客服');
INSERT INTO `homepageIcon` VALUES (8, 'http://img.isdfmk.xyz/b.png', '/', '物流');
INSERT INTO `homepageIcon` VALUES (9, '\r\nhttp://img.isdfmk.xyz/l.png', '/accountSettings', '设置');

-- ----------------------------
-- Table structure for management_role
-- ----------------------------
DROP TABLE IF EXISTS `management_role`;
CREATE TABLE `management_role`  (
  `r_id` int(11) NOT NULL AUTO_INCREMENT,
  `menus` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_time` datetime(0) NULL DEFAULT NULL,
  `create_author_id` int(11) NULL DEFAULT NULL,
  `last_time` datetime(0) NULL DEFAULT NULL,
  `last_author_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `role_ids` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `sign` int(11) NULL DEFAULT 0,
  PRIMARY KEY (`r_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 20070 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of management_role
-- ----------------------------
INSERT INTO `management_role` VALUES (20001, '/home,/dashboard,/dashboard/analysis,/dashboard/monitor,/products,/products/category,/products/product,/user,/role,/order', '超级管理员', '2020-06-03 09:57:26', 10001, '2020-06-03 09:58:12', '10001', NULL, 0);
INSERT INTO `management_role` VALUES (20063, '/home,/products,/products/category,/products/product,/dashboard,/dashboard/analysis,/dashboard/monitor,/order', '管理员1', '2020-06-07 17:47:25', 10001, '2020-06-07 17:47:25', '10001', NULL, 0);
INSERT INTO `management_role` VALUES (20064, '/home,/products,/products/category,/products/product,/user', '管理员2', '2020-06-07 17:47:36', 10001, '2020-06-08 13:51:17', '10001', '20064,20063', 0);
INSERT INTO `management_role` VALUES (20065, '/home,/products', '管理员3', '2020-06-07 17:47:53', 10001, '2020-06-08 13:15:18', '10001', '20064,20063', 0);
INSERT INTO `management_role` VALUES (20066, '/home,/order', '经理', '2020-06-09 11:26:16', 10001, '2020-06-09 11:26:16', '10001', NULL, 0);
INSERT INTO `management_role` VALUES (20067, '/home,/order', '经理是', '2020-06-09 11:26:25', 10001, '2020-06-09 11:26:25', '10001', NULL, 0);
INSERT INTO `management_role` VALUES (20068, '/home,/order', '经理傻傻', '2020-06-09 11:26:31', 10001, '2020-06-09 11:26:31', '10001', NULL, 0);
INSERT INTO `management_role` VALUES (20069, '/home,/products/product,/user,/role,/products', 'ROLE_USER', '2020-06-09 15:29:40', 10001, '2020-06-09 15:29:40', '10001', '20063', 0);

-- ----------------------------
-- Table structure for management_role_relationship
-- ----------------------------
DROP TABLE IF EXISTS `management_role_relationship`;
CREATE TABLE `management_role_relationship`  (
  `descendant_id` int(11) NULL DEFAULT NULL,
  `father_id` int(11) NULL DEFAULT NULL,
  `depth` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of management_role_relationship
-- ----------------------------
INSERT INTO `management_role_relationship` VALUES (10001, 0, '');
INSERT INTO `management_role_relationship` VALUES (10051, 10001, NULL);
INSERT INTO `management_role_relationship` VALUES (10052, 10051, NULL);
INSERT INTO `management_role_relationship` VALUES (10053, 10051, NULL);
INSERT INTO `management_role_relationship` VALUES (10054, 10001, NULL);

-- ----------------------------
-- Table structure for management_user
-- ----------------------------
DROP TABLE IF EXISTS `management_user`;
CREATE TABLE `management_user`  (
  `u_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `password` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_time` datetime(0) NULL DEFAULT NULL,
  `role_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `email` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `phone` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `creator_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `last_time` datetime(0) NULL DEFAULT NULL,
  `last_author_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `sign` int(11) NULL DEFAULT 0,
  PRIMARY KEY (`u_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10055 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of management_user
-- ----------------------------
INSERT INTO `management_user` VALUES (10001, 'admin', 'admin', '2020-06-02 19:27:33', '20001', '2252821162@qq.com', '18598814121', '10001', '2020-06-02 19:27:59', '10001', 0);
INSERT INTO `management_user` VALUES (10051, 'fhx', '123456', '2020-06-08 11:28:36', '20065', 'as@qq.com', '18588855444', '10001', '2020-06-08 11:28:36', '10001', 1);
INSERT INTO `management_user` VALUES (10052, 'xxfhx', '123456', '2020-06-08 11:29:30', '20064', '22528211@qq.com', '18555545454', '10051', '2020-06-08 11:29:30', '10051', 1);
INSERT INTO `management_user` VALUES (10053, 'aaasss', '123456', '2020-06-08 11:30:14', '20063', 'ffffff@qq.com', '15151111111', '10051', '2020-06-08 13:49:01', '10001', 0);
INSERT INTO `management_user` VALUES (10054, 'muge', '123456', '2020-06-08 13:51:32', '20064', 'liuxianliangli@foxmail.com', '15367885410', '10001', '2020-06-08 13:51:32', '10001', 0);

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
) ENGINE = InnoDB AUTO_INCREMENT = 6882799 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of newsContent
-- ----------------------------
INSERT INTO `newsContent` VALUES (6882779, 4, 'f92b9f8f372e445fb6564cdd57aa3c3e', NULL, 4, '1592822082163100007', '0', '确认订单消息', '2020-06-22 10:35:09', 0, '消息简介');
INSERT INTO `newsContent` VALUES (6882780, 3, 'f92b9f8f372e445fb6564cdd57aa3c3e', NULL, 3, '1592822082163100007', '0', '支付通知', '2020-06-22 10:35:09', 0, '支付通知');
INSERT INTO `newsContent` VALUES (6882781, 4, 'f92b9f8f372e445fb6564cdd57aa3c3e', NULL, 4, '1592822136658100009', '0', '确认订单消息', '2020-06-22 10:35:59', 0, '消息简介');
INSERT INTO `newsContent` VALUES (6882782, 3, 'f92b9f8f372e445fb6564cdd57aa3c3e', NULL, 3, '1592822136658100009', '0', '支付通知', '2020-06-22 10:35:59', 0, '支付通知');
INSERT INTO `newsContent` VALUES (6882783, 4, 'fd2d5eb2dd124f23802f163cd3998741', NULL, 4, '1592822162479100010', '0', '确认订单消息', '2020-06-22 10:36:27', 0, '消息简介');
INSERT INTO `newsContent` VALUES (6882784, 3, 'fd2d5eb2dd124f23802f163cd3998741', NULL, 3, '1592822162479100010', '0', '支付通知', '2020-06-22 10:36:27', 0, '支付通知');
INSERT INTO `newsContent` VALUES (6882785, 4, 'f92b9f8f372e445fb6564cdd57aa3c3e', NULL, 4, '1592822206628100011', '0', '确认订单消息', '2020-06-22 10:37:05', 0, '消息简介');
INSERT INTO `newsContent` VALUES (6882786, 3, 'f92b9f8f372e445fb6564cdd57aa3c3e', NULL, 3, '1592822206628100011', '0', '支付通知', '2020-06-22 10:37:05', 0, '支付通知');
INSERT INTO `newsContent` VALUES (6882787, 4, 'fd2d5eb2dd124f23802f163cd3998741', NULL, 4, '1592822220149100012', '0', '确认订单消息', '2020-06-22 10:37:28', 0, '消息简介');
INSERT INTO `newsContent` VALUES (6882788, 3, 'fd2d5eb2dd124f23802f163cd3998741', NULL, 3, '1592822220149100012', '0', '支付通知', '2020-06-22 10:37:28', 0, '支付通知');
INSERT INTO `newsContent` VALUES (6882789, 4, 'f92b9f8f372e445fb6564cdd57aa3c3e', NULL, 4, '1592822337263100013', '0', '确认订单消息', '2020-06-22 10:39:48', 0, '消息简介');
INSERT INTO `newsContent` VALUES (6882790, 3, 'f92b9f8f372e445fb6564cdd57aa3c3e', NULL, 3, '1592822337263100013', '0', '支付通知', '2020-06-22 10:39:48', 0, '支付通知');
INSERT INTO `newsContent` VALUES (6882791, 4, 'f92b9f8f372e445fb6564cdd57aa3c3e', NULL, 4, '1592822486861100014', '0', '确认订单消息', '2020-06-22 10:42:32', 0, '消息简介');
INSERT INTO `newsContent` VALUES (6882792, 3, 'f92b9f8f372e445fb6564cdd57aa3c3e', NULL, 3, '1592822486861100014', '0', '支付通知', '2020-06-22 10:42:32', 0, '支付通知');
INSERT INTO `newsContent` VALUES (6882793, 4, 'f92b9f8f372e445fb6564cdd57aa3c3e', NULL, 4, '1592830150961100015', '0', '确认订单消息', '2020-06-22 12:49:52', 0, '消息简介');
INSERT INTO `newsContent` VALUES (6882794, 3, 'f92b9f8f372e445fb6564cdd57aa3c3e', NULL, 3, '1592830150961100015', '0', '支付通知', '2020-06-22 12:49:52', 0, '支付通知');
INSERT INTO `newsContent` VALUES (6882795, 4, 'f92b9f8f372e445fb6564cdd57aa3c3e', NULL, 4, '1592868925313100017', '0', '确认订单消息', '2020-06-22 23:36:20', 0, '消息简介');
INSERT INTO `newsContent` VALUES (6882796, 3, 'f92b9f8f372e445fb6564cdd57aa3c3e', NULL, 3, '1592868925313100017', '0', '支付通知', '2020-06-22 23:36:20', 0, '支付通知');
INSERT INTO `newsContent` VALUES (6882797, 4, 'f92b9f8f372e445fb6564cdd57aa3c3e', NULL, 4, '1592869177091100018', '0', '确认订单消息', '2020-06-22 23:40:08', 0, '消息简介');
INSERT INTO `newsContent` VALUES (6882798, 3, 'f92b9f8f372e445fb6564cdd57aa3c3e', NULL, 3, '1592869177091100018', '0', '支付通知', '2020-06-22 23:40:08', 0, '支付通知');

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
INSERT INTO `newsSender` VALUES (1, 1, '微利官方', ' http://img.isdfmk.xyz/7c9fdfa3177042a08766aed29e7de6cd?t=1585021695781');
INSERT INTO `newsSender` VALUES (2, 2, '微利助手', 'http://img.isdfmk.xyz/undraw_happy_music_g6wc.png');
INSERT INTO `newsSender` VALUES (3, 3, '微利支付', 'http://img.isdfmk.xyz/JE%5B%25FC76MGL0BS787~WXR1O.png');
INSERT INTO `newsSender` VALUES (4, 4, '订单助手', 'http://img.isdfmk.xyz/timg.jpg');

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
) ENGINE = InnoDB AUTO_INCREMENT = 791 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of orderAddress
-- ----------------------------
INSERT INTO `orderAddress` VALUES (645, 'fd2d5eb2dd124f23802f163cd3998741', '1590896526472100008', '速度还是大', '天津市 市辖区 南开区 鼓楼街道 ', '速度还是大', '15367885410', 'liuxianliangli@foxmail.com', '12,1201,120104,120104002,', '');
INSERT INTO `orderAddress` VALUES (646, 'fd2d5eb2dd124f23802f163cd3998741', '1590896526472100008', '速度还是大', '天津市 市辖区 南开区 鼓楼街道 ', '速度还是大', '15367885410', 'liuxianliangli@foxmail.com', '12,1201,120104,120104002,', '');
INSERT INTO `orderAddress` VALUES (647, 'fd2d5eb2dd124f23802f163cd3998741', '1590896526472100008', '速度还是大', '天津市 市辖区 南开区 鼓楼街道 ', '速度还是大', '15367885410', 'liuxianliangli@foxmail.com', '12,1201,120104,120104002,', '');
INSERT INTO `orderAddress` VALUES (648, 'fd2d5eb2dd124f23802f163cd3998741', '1590896526472100008', '速度还是大', '天津市 市辖区 南开区 鼓楼街道 ', '速度还是大', '15367885410', 'liuxianliangli@foxmail.com', '12,1201,120104,120104002,', '');
INSERT INTO `orderAddress` VALUES (649, 'fd2d5eb2dd124f23802f163cd3998741', '1590896526472100008', '速度还是大', '天津市 市辖区 南开区 鼓楼街道 ', '速度还是大', '15367885410', 'liuxianliangli@foxmail.com', '12,1201,120104,120104002,', '');
INSERT INTO `orderAddress` VALUES (650, 'bab534a3fb2e42afb704894fc556c11d', '1590897539621100003', 'FF', '天津市 市辖区 和平区 劝业场街道 ', 'adas', '18598852522', '2225@qq.com', '12,1201,120101,120101001,', 'adsd');
INSERT INTO `orderAddress` VALUES (651, 'bab534a3fb2e42afb704894fc556c11d', '1590897928981100004', 'FF', '天津市 市辖区 和平区 劝业场街道 ', 'adas', '18598852522', '2225@qq.com', '12,1201,120101,120101001,', 'adsd');
INSERT INTO `orderAddress` VALUES (652, 'bab534a3fb2e42afb704894fc556c11d', '1590897928981100004', 'FF', '天津市 市辖区 和平区 劝业场街道 ', 'adas', '18598852522', '2225@qq.com', '12,1201,120101,120101001,', 'adsd');
INSERT INTO `orderAddress` VALUES (653, 'bab534a3fb2e42afb704894fc556c11d', '1590897958726100005', 'FF', '天津市 市辖区 和平区 劝业场街道 ', 'adas', '18598852522', '2225@qq.com', '12,1201,120101,120101001,', 'adsd');
INSERT INTO `orderAddress` VALUES (654, 'bab534a3fb2e42afb704894fc556c11d', '1590897990915100006', 'FF', '天津市 市辖区 和平区 劝业场街道 ', 'adas', '18598852522', '2225@qq.com', '12,1201,120101,120101001,', 'adsd');
INSERT INTO `orderAddress` VALUES (655, 'bab534a3fb2e42afb704894fc556c11d', '1590898731844100007', 'FF', '天津市 市辖区 和平区 劝业场街道 ', 'adas', '18598852522', '2225@qq.com', '12,1201,120101,120101001,', 'adsd');
INSERT INTO `orderAddress` VALUES (656, 'bab534a3fb2e42afb704894fc556c11d', '1590906359505100008', 'FF', '天津市 市辖区 和平区 劝业场街道 ', 'adas', '18598852522', '2225@qq.com', '12,1201,120101,120101001,', 'adsd');
INSERT INTO `orderAddress` VALUES (657, 'bab534a3fb2e42afb704894fc556c11d', '1590907414212100010', 'FF', '天津市 市辖区 和平区 劝业场街道 ', 'adas', '18598852522', '2225@qq.com', '12,1201,120101,120101001,', 'adsd');
INSERT INTO `orderAddress` VALUES (658, 'bab534a3fb2e42afb704894fc556c11d', '1590907433458100011', 'FF', '天津市 市辖区 和平区 劝业场街道 ', 'adas', '18598852522', '2225@qq.com', '12,1201,120101,120101001,', 'adsd');
INSERT INTO `orderAddress` VALUES (659, 'bab534a3fb2e42afb704894fc556c11d', '1590907433458100011', 'FF', '天津市 市辖区 和平区 劝业场街道 ', 'adas', '18598852522', '2225@qq.com', '12,1201,120101,120101001,', 'adsd');
INSERT INTO `orderAddress` VALUES (660, 'bab534a3fb2e42afb704894fc556c11d', '1590907477142100012', 'FF', '天津市 市辖区 和平区 劝业场街道 ', 'adas', '18598852522', '2225@qq.com', '12,1201,120101,120101001,', 'adsd');
INSERT INTO `orderAddress` VALUES (661, 'fd2d5eb2dd124f23802f163cd3998741', '1590908670202100013', '速度还是大', '天津市 市辖区 南开区 鼓楼街道 ', '速度还是大', '15367885410', 'liuxianliangli@foxmail.com', '12,1201,120104,120104002,', '');
INSERT INTO `orderAddress` VALUES (662, 'fd2d5eb2dd124f23802f163cd3998741', '1590908670202100013', '速度还是大', '天津市 市辖区 南开区 鼓楼街道 ', '速度还是大', '15367885410', 'liuxianliangli@foxmail.com', '12,1201,120104,120104002,', '');
INSERT INTO `orderAddress` VALUES (663, 'fd2d5eb2dd124f23802f163cd3998741', '1590909146438100013', '速度还是大', '天津市 市辖区 南开区 鼓楼街道 ', '速度还是大', '15367885410', 'liuxianliangli@foxmail.com', '12,1201,120104,120104002,', '');
INSERT INTO `orderAddress` VALUES (664, 'fd2d5eb2dd124f23802f163cd3998741', '1590909332999100013', '速度还是大', '天津市 市辖区 南开区 鼓楼街道 ', '速度还是大', '15367885410', 'liuxianliangli@foxmail.com', '12,1201,120104,120104002,', '');
INSERT INTO `orderAddress` VALUES (665, 'fd2d5eb2dd124f23802f163cd3998741', '1590909332999100013', '速度还是大', '天津市 市辖区 南开区 鼓楼街道 ', '速度还是大', '15367885410', 'liuxianliangli@foxmail.com', '12,1201,120104,120104002,', '');
INSERT INTO `orderAddress` VALUES (666, 'fd2d5eb2dd124f23802f163cd3998741', '1590897183222100001', '速度还是大', '天津市 市辖区 南开区 鼓楼街道 ', '速度还是大', '15367885410', 'liuxianliangli@foxmail.com', '12,1201,120104,120104002,', '');
INSERT INTO `orderAddress` VALUES (667, 'fd2d5eb2dd124f23802f163cd3998741', '1590897183222100001', '速度还是大', '天津市 市辖区 南开区 鼓楼街道 ', '速度还是大', '15367885410', 'liuxianliangli@foxmail.com', '12,1201,120104,120104002,', '');
INSERT INTO `orderAddress` VALUES (668, 'f92b9f8f372e445fb6564cdd57aa3c3e', '1590909909158100013', '2252821162@qq.com', '北京市 市辖区 东城区 东华门街道 ', '2252821162@qq.com', '18598814121', '2252821162@qq.com', '11,1101,110101,110101001,', '2');
INSERT INTO `orderAddress` VALUES (669, 'fd2d5eb2dd124f23802f163cd3998741', '1590897183222100001', '速度还是大', '天津市 市辖区 南开区 鼓楼街道 ', '速度还是大', '15367885410', 'liuxianliangli@foxmail.com', '12,1201,120104,120104002,', '');
INSERT INTO `orderAddress` VALUES (670, 'fd2d5eb2dd124f23802f163cd3998741', '1590910061652100013', '速度还是大', '天津市 市辖区 南开区 鼓楼街道 ', '速度还是大', '15367885410', 'liuxianliangli@foxmail.com', '12,1201,120104,120104002,', '');
INSERT INTO `orderAddress` VALUES (671, 'fd2d5eb2dd124f23802f163cd3998741', '1590910061652100013', '速度还是大', '天津市 市辖区 南开区 鼓楼街道 ', '速度还是大', '15367885410', 'liuxianliangli@foxmail.com', '12,1201,120104,120104002,', '');
INSERT INTO `orderAddress` VALUES (672, 'fd2d5eb2dd124f23802f163cd3998741', '1590910132694100013', '速度还是大', '天津市 市辖区 南开区 鼓楼街道 ', '速度还是大', '15367885410', 'liuxianliangli@foxmail.com', '12,1201,120104,120104002,', '');
INSERT INTO `orderAddress` VALUES (673, 'fd2d5eb2dd124f23802f163cd3998741', '1590910175558100013', '速度还是大', '天津市 市辖区 南开区 鼓楼街道 ', '速度还是大', '15367885410', 'liuxianliangli@foxmail.com', '12,1201,120104,120104002,', '');
INSERT INTO `orderAddress` VALUES (674, 'fd2d5eb2dd124f23802f163cd3998741', '1590910212879100013', '速度还是大', '天津市 市辖区 南开区 鼓楼街道 ', '速度还是大', '15367885410', 'liuxianliangli@foxmail.com', '12,1201,120104,120104002,', '');
INSERT INTO `orderAddress` VALUES (675, 'f92b9f8f372e445fb6564cdd57aa3c3e', '1590910432642100013', '2252821162@qq.com', '北京市 市辖区 东城区 东华门街道 ', '2252821162@qq.com', '18598814121', '2252821162@qq.com', '11,1101,110101,110101001,', '2');
INSERT INTO `orderAddress` VALUES (676, 'f92b9f8f372e445fb6564cdd57aa3c3e', '1590910522187100013', '2252821162@qq.com', '北京市 市辖区 东城区 东华门街道 ', '2252821162@qq.com', '18598814121', '2252821162@qq.com', '11,1101,110101,110101001,', '2');
INSERT INTO `orderAddress` VALUES (677, 'f92b9f8f372e445fb6564cdd57aa3c3e', '1590910582333100013', '2252821162@qq.com', '北京市 市辖区 东城区 东华门街道 ', '2252821162@qq.com', '18598814121', '2252821162@qq.com', '11,1101,110101,110101001,', '2');
INSERT INTO `orderAddress` VALUES (678, 'fd2d5eb2dd124f23802f163cd3998741', '1590910643262100013', '速度还是大', '天津市 市辖区 南开区 鼓楼街道 ', '速度还是大', '15367885410', 'liuxianliangli@foxmail.com', '12,1201,120104,120104002,', '');
INSERT INTO `orderAddress` VALUES (679, 'fd2d5eb2dd124f23802f163cd3998741', '1590911347478100013', '速度还是大', '天津市 市辖区 南开区 鼓楼街道 ', '速度还是大', '15367885410', 'liuxianliangli@foxmail.com', '12,1201,120104,120104002,', '');
INSERT INTO `orderAddress` VALUES (680, 'fd2d5eb2dd124f23802f163cd3998741', '1590911433725100014', '速度还是大', '天津市 市辖区 南开区 鼓楼街道 ', '速度还是大', '15367885410', 'liuxianliangli@foxmail.com', '12,1201,120104,120104002,', '');
INSERT INTO `orderAddress` VALUES (681, 'fd2d5eb2dd124f23802f163cd3998741', '1590911459130100015', '速度还是大', '天津市 市辖区 南开区 鼓楼街道 ', '速度还是大', '15367885410', 'liuxianliangli@foxmail.com', '12,1201,120104,120104002,', '');
INSERT INTO `orderAddress` VALUES (682, 'fd2d5eb2dd124f23802f163cd3998741', '1590911526301100016', '速度还是大', '天津市 市辖区 南开区 鼓楼街道 ', '速度还是大', '15367885410', 'liuxianliangli@foxmail.com', '12,1201,120104,120104002,', '');
INSERT INTO `orderAddress` VALUES (683, 'fd2d5eb2dd124f23802f163cd3998741', '1590911576719100016', '速度还是大', '天津市 市辖区 南开区 鼓楼街道 ', '速度还是大', '15367885410', 'liuxianliangli@foxmail.com', '12,1201,120104,120104002,', '');
INSERT INTO `orderAddress` VALUES (684, 'fd2d5eb2dd124f23802f163cd3998741', '1590911711193100016', '速度还是大', '天津市 市辖区 南开区 鼓楼街道 ', '速度还是大', '15367885410', 'liuxianliangli@foxmail.com', '12,1201,120104,120104002,', '');
INSERT INTO `orderAddress` VALUES (685, 'fd2d5eb2dd124f23802f163cd3998741', '1590911737986100016', '速度还是大', '天津市 市辖区 南开区 鼓楼街道 ', '速度还是大', '15367885410', 'liuxianliangli@foxmail.com', '12,1201,120104,120104002,', '');
INSERT INTO `orderAddress` VALUES (686, 'fd2d5eb2dd124f23802f163cd3998741', '1590911779313100016', '速度还是大', '天津市 市辖区 南开区 鼓楼街道 ', '速度还是大', '15367885410', 'liuxianliangli@foxmail.com', '12,1201,120104,120104002,', '');
INSERT INTO `orderAddress` VALUES (687, 'fd2d5eb2dd124f23802f163cd3998741', '1590911818051100016', '速度还是大', '天津市 市辖区 南开区 鼓楼街道 ', '速度还是大', '15367885410', 'liuxianliangli@foxmail.com', '12,1201,120104,120104002,', '');
INSERT INTO `orderAddress` VALUES (688, 'fd2d5eb2dd124f23802f163cd3998741', '1590911891053100016', '速度还是大', '天津市 市辖区 南开区 鼓楼街道 ', '速度还是大', '15367885410', 'liuxianliangli@foxmail.com', '12,1201,120104,120104002,', '');
INSERT INTO `orderAddress` VALUES (689, 'fd2d5eb2dd124f23802f163cd3998741', '1590912029632100016', '速度还是大', '天津市 市辖区 南开区 鼓楼街道 ', '速度还是大', '15367885410', 'liuxianliangli@foxmail.com', '12,1201,120104,120104002,', '');
INSERT INTO `orderAddress` VALUES (690, 'fd2d5eb2dd124f23802f163cd3998741', '1590912209984100016', '速度还是大', '天津市 市辖区 南开区 鼓楼街道 ', '速度还是大', '15367885410', 'liuxianliangli@foxmail.com', '12,1201,120104,120104002,', '');
INSERT INTO `orderAddress` VALUES (691, 'fd2d5eb2dd124f23802f163cd3998741', '1590913114287100016', '速度还是大', '天津市 市辖区 南开区 鼓楼街道 ', '速度还是大', '15367885410', 'liuxianliangli@foxmail.com', '12,1201,120104,120104002,', '');
INSERT INTO `orderAddress` VALUES (692, 'fd2d5eb2dd124f23802f163cd3998741', '1590913206587100016', '速度还是大', '天津市 市辖区 南开区 鼓楼街道 ', '速度还是大', '15367885410', 'liuxianliangli@foxmail.com', '12,1201,120104,120104002,', '');
INSERT INTO `orderAddress` VALUES (693, 'fd2d5eb2dd124f23802f163cd3998741', '1590913317844100016', '速度还是大', '天津市 市辖区 南开区 鼓楼街道 ', '速度还是大', '15367885410', 'liuxianliangli@foxmail.com', '12,1201,120104,120104002,', '');
INSERT INTO `orderAddress` VALUES (694, 'fd2d5eb2dd124f23802f163cd3998741', '1590913594499100016', '速度还是大', '天津市 市辖区 南开区 鼓楼街道 ', '速度还是大', '15367885410', 'liuxianliangli@foxmail.com', '12,1201,120104,120104002,', '');
INSERT INTO `orderAddress` VALUES (695, 'fd2d5eb2dd124f23802f163cd3998741', '1590913666936100016', '速度还是大', '天津市 市辖区 南开区 鼓楼街道 ', '速度还是大', '15367885410', 'liuxianliangli@foxmail.com', '12,1201,120104,120104002,', '');
INSERT INTO `orderAddress` VALUES (696, 'fd2d5eb2dd124f23802f163cd3998741', '1590914298003100016', '速度还是大', '天津市 市辖区 南开区 鼓楼街道 ', '速度还是大', '15367885410', 'liuxianliangli@foxmail.com', '12,1201,120104,120104002,', '');
INSERT INTO `orderAddress` VALUES (697, 'fd2d5eb2dd124f23802f163cd3998741', '1590914370882100016', '速度还是大', '天津市 市辖区 南开区 鼓楼街道 ', '速度还是大', '15367885410', 'liuxianliangli@foxmail.com', '12,1201,120104,120104002,', '');
INSERT INTO `orderAddress` VALUES (698, 'fd2d5eb2dd124f23802f163cd3998741', '1590914552067100016', '速度还是大', '天津市 市辖区 南开区 鼓楼街道 ', '速度还是大', '15367885410', 'liuxianliangli@foxmail.com', '12,1201,120104,120104002,', '');
INSERT INTO `orderAddress` VALUES (699, 'fd2d5eb2dd124f23802f163cd3998741', '1590914605546100016', '速度还是大', '天津市 市辖区 南开区 鼓楼街道 ', '速度还是大', '15367885410', 'liuxianliangli@foxmail.com', '12,1201,120104,120104002,', '');
INSERT INTO `orderAddress` VALUES (700, 'fd2d5eb2dd124f23802f163cd3998741', '1590914958294100016', '速度还是大', '天津市 市辖区 南开区 鼓楼街道 ', '速度还是大', '15367885410', 'liuxianliangli@foxmail.com', '12,1201,120104,120104002,', '');
INSERT INTO `orderAddress` VALUES (701, 'fd2d5eb2dd124f23802f163cd3998741', '1590915061056100016', '速度还是大', '天津市 市辖区 南开区 鼓楼街道 ', '速度还是大', '15367885410', 'liuxianliangli@foxmail.com', '12,1201,120104,120104002,', '');
INSERT INTO `orderAddress` VALUES (702, 'f92b9f8f372e445fb6564cdd57aa3c3e', '1590917430584100016', '2252821162@qq.com', '北京市 市辖区 东城区 东华门街道 ', '2252821162@qq.com', '18598814121', '2252821162@qq.com', '11,1101,110101,110101001,', '2');
INSERT INTO `orderAddress` VALUES (703, 'fd2d5eb2dd124f23802f163cd3998741', '1590917437802100016', '速度还是大', '天津市 市辖区 南开区 鼓楼街道 ', '速度还是大', '15367885410', 'liuxianliangli@foxmail.com', '12,1201,120104,120104002,', '');
INSERT INTO `orderAddress` VALUES (704, 'fd2d5eb2dd124f23802f163cd3998741', '1590917515330100016', '速度还是大', '天津市 市辖区 南开区 鼓楼街道 ', '速度还是大', '15367885410', 'liuxianliangli@foxmail.com', '12,1201,120104,120104002,', '');
INSERT INTO `orderAddress` VALUES (705, 'f92b9f8f372e445fb6564cdd57aa3c3e', '1590917522539100016', '2252821162@qq.com', '北京市 市辖区 东城区 东华门街道 ', '2252821162@qq.com', '18598814121', '2252821162@qq.com', '11,1101,110101,110101001,', '2');
INSERT INTO `orderAddress` VALUES (706, 'f92b9f8f372e445fb6564cdd57aa3c3e', '1590917586580100016', '2252821162@qq.com', '北京市 市辖区 东城区 东华门街道 ', '2252821162@qq.com', '18598814121', '2252821162@qq.com', '11,1101,110101,110101001,', '2');
INSERT INTO `orderAddress` VALUES (707, 'fd2d5eb2dd124f23802f163cd3998741', '1590917609537100016', '速度还是大', '天津市 市辖区 南开区 鼓楼街道 ', '速度还是大', '15367885410', 'liuxianliangli@foxmail.com', '12,1201,120104,120104002,', '');
INSERT INTO `orderAddress` VALUES (708, 'fd2d5eb2dd124f23802f163cd3998741', '1590917710022100016', '速度还是大', '天津市 市辖区 南开区 鼓楼街道 ', '速度还是大', '15367885410', 'liuxianliangli@foxmail.com', '12,1201,120104,120104002,', '');
INSERT INTO `orderAddress` VALUES (709, 'fd2d5eb2dd124f23802f163cd3998741', '1590917771089100016', '速度还是大', '天津市 市辖区 南开区 鼓楼街道 ', '速度还是大', '15367885410', 'liuxianliangli@foxmail.com', '12,1201,120104,120104002,', '');
INSERT INTO `orderAddress` VALUES (710, 'fd2d5eb2dd124f23802f163cd3998741', '1590917870824100016', '速度还是大', '天津市 市辖区 南开区 鼓楼街道 ', '速度还是大', '15367885410', 'liuxianliangli@foxmail.com', '12,1201,120104,120104002,', '');
INSERT INTO `orderAddress` VALUES (711, 'fd2d5eb2dd124f23802f163cd3998741', '1590918482778100016', '速度还是大', '天津市 市辖区 南开区 鼓楼街道 ', '速度还是大', '15367885410', 'liuxianliangli@foxmail.com', '12,1201,120104,120104002,', '');
INSERT INTO `orderAddress` VALUES (712, 'fd2d5eb2dd124f23802f163cd3998741', '1590918561879100016', '速度还是大', '天津市 市辖区 南开区 鼓楼街道 ', '速度还是大', '15367885410', 'liuxianliangli@foxmail.com', '12,1201,120104,120104002,', '');
INSERT INTO `orderAddress` VALUES (713, 'fd2d5eb2dd124f23802f163cd3998741', '1590918609256100016', '速度还是大', '天津市 市辖区 南开区 鼓楼街道 ', '速度还是大', '15367885410', 'liuxianliangli@foxmail.com', '12,1201,120104,120104002,', '');
INSERT INTO `orderAddress` VALUES (714, 'fd2d5eb2dd124f23802f163cd3998741', '1590918630745100016', '速度还是大', '天津市 市辖区 南开区 鼓楼街道 ', '速度还是大', '15367885410', 'liuxianliangli@foxmail.com', '12,1201,120104,120104002,', '');
INSERT INTO `orderAddress` VALUES (715, 'fd2d5eb2dd124f23802f163cd3998741', '1590918650270100016', '速度还是大', '天津市 市辖区 南开区 鼓楼街道 ', '速度还是大', '15367885410', 'liuxianliangli@foxmail.com', '12,1201,120104,120104002,', '');
INSERT INTO `orderAddress` VALUES (716, 'fd2d5eb2dd124f23802f163cd3998741', '1590918684473100016', '速度还是大', '天津市 市辖区 南开区 鼓楼街道 ', '速度还是大', '15367885410', 'liuxianliangli@foxmail.com', '12,1201,120104,120104002,', '');
INSERT INTO `orderAddress` VALUES (717, 'fd2d5eb2dd124f23802f163cd3998741', '1590918740609100016', '速度还是大', '天津市 市辖区 南开区 鼓楼街道 ', '速度还是大', '15367885410', 'liuxianliangli@foxmail.com', '12,1201,120104,120104002,', '');
INSERT INTO `orderAddress` VALUES (718, 'fd2d5eb2dd124f23802f163cd3998741', '1590918792407100016', '速度还是大', '天津市 市辖区 南开区 鼓楼街道 ', '速度还是大', '15367885410', 'liuxianliangli@foxmail.com', '12,1201,120104,120104002,', '');
INSERT INTO `orderAddress` VALUES (719, 'fd2d5eb2dd124f23802f163cd3998741', '1590918811413100016', '速度还是大', '天津市 市辖区 南开区 鼓楼街道 ', '速度还是大', '15367885410', 'liuxianliangli@foxmail.com', '12,1201,120104,120104002,', '');
INSERT INTO `orderAddress` VALUES (720, 'fd2d5eb2dd124f23802f163cd3998741', '1590918825532100016', '速度还是大', '天津市 市辖区 南开区 鼓楼街道 ', '速度还是大', '15367885410', 'liuxianliangli@foxmail.com', '12,1201,120104,120104002,', '');
INSERT INTO `orderAddress` VALUES (721, 'fd2d5eb2dd124f23802f163cd3998741', '1590918842170100016', '速度还是大', '天津市 市辖区 南开区 鼓楼街道 ', '速度还是大', '15367885410', 'liuxianliangli@foxmail.com', '12,1201,120104,120104002,', '');
INSERT INTO `orderAddress` VALUES (722, 'fd2d5eb2dd124f23802f163cd3998741', '1590919184200100016', '速度还是大', '天津市 市辖区 南开区 鼓楼街道 ', '速度还是大', '15367885410', 'liuxianliangli@foxmail.com', '12,1201,120104,120104002,', '');
INSERT INTO `orderAddress` VALUES (723, 'fd2d5eb2dd124f23802f163cd3998741', '1590919245687100016', '速度还是大', '天津市 市辖区 南开区 鼓楼街道 ', '速度还是大', '15367885410', 'liuxianliangli@foxmail.com', '12,1201,120104,120104002,', '');
INSERT INTO `orderAddress` VALUES (724, 'fd2d5eb2dd124f23802f163cd3998741', '1590919292508100016', '速度还是大', '天津市 市辖区 南开区 鼓楼街道 ', '速度还是大', '15367885410', 'liuxianliangli@foxmail.com', '12,1201,120104,120104002,', '');
INSERT INTO `orderAddress` VALUES (725, 'fd2d5eb2dd124f23802f163cd3998741', '1590919376700100016', '速度还是大', '天津市 市辖区 南开区 鼓楼街道 ', '速度还是大', '15367885410', 'liuxianliangli@foxmail.com', '12,1201,120104,120104002,', '');
INSERT INTO `orderAddress` VALUES (726, 'fd2d5eb2dd124f23802f163cd3998741', '1590919434457100016', '速度还是大', '天津市 市辖区 南开区 鼓楼街道 ', '速度还是大', '15367885410', 'liuxianliangli@foxmail.com', '12,1201,120104,120104002,', '');
INSERT INTO `orderAddress` VALUES (727, 'fd2d5eb2dd124f23802f163cd3998741', '1590919467718100016', '速度还是大', '天津市 市辖区 南开区 鼓楼街道 ', '速度还是大', '15367885410', 'liuxianliangli@foxmail.com', '12,1201,120104,120104002,', '');
INSERT INTO `orderAddress` VALUES (728, 'fd2d5eb2dd124f23802f163cd3998741', '1590919485248100016', '速度还是大', '天津市 市辖区 南开区 鼓楼街道 ', '速度还是大', '15367885410', 'liuxianliangli@foxmail.com', '12,1201,120104,120104002,', '');
INSERT INTO `orderAddress` VALUES (729, 'fd2d5eb2dd124f23802f163cd3998741', '1590925984688100016', '速度还是大', '天津市 市辖区 南开区 鼓楼街道 ', '速度还是大', '15367885410', 'liuxianliangli@foxmail.com', '12,1201,120104,120104002,', '');
INSERT INTO `orderAddress` VALUES (730, 'fd2d5eb2dd124f23802f163cd3998741', '1590926019048100016', '速度还是大', '天津市 市辖区 南开区 鼓楼街道 ', '速度还是大', '15367885410', 'liuxianliangli@foxmail.com', '12,1201,120104,120104002,', '');
INSERT INTO `orderAddress` VALUES (731, 'fd2d5eb2dd124f23802f163cd3998741', '1590926071845100016', '速度还是大', '天津市 市辖区 南开区 鼓楼街道 ', '速度还是大', '15367885410', 'liuxianliangli@foxmail.com', '12,1201,120104,120104002,', '');
INSERT INTO `orderAddress` VALUES (732, 'fd2d5eb2dd124f23802f163cd3998741', '1590926117771100016', '速度还是大', '天津市 市辖区 南开区 鼓楼街道 ', '速度还是大', '15367885410', 'liuxianliangli@foxmail.com', '12,1201,120104,120104002,', '');
INSERT INTO `orderAddress` VALUES (733, 'fd2d5eb2dd124f23802f163cd3998741', '1590926161372100016', '速度还是大', '天津市 市辖区 南开区 鼓楼街道 ', '速度还是大', '15367885410', 'liuxianliangli@foxmail.com', '12,1201,120104,120104002,', '');
INSERT INTO `orderAddress` VALUES (734, 'f92b9f8f372e445fb6564cdd57aa3c3e', '1591103165390100001', '2252821162@qq.com', '北京市 市辖区 东城区 东华门街道 ', '2252821162@qq.com', '18598814121', '2252821162@qq.com', '11,1101,110101,110101001,', '2');
INSERT INTO `orderAddress` VALUES (735, 'f92b9f8f372e445fb6564cdd57aa3c3e', '1591112727758100002', '2252821162@qq.com', '北京市 市辖区 东城区 东华门街道 ', '2252821162@qq.com', '18598814121', '2252821162@qq.com', '11,1101,110101,110101001,', '2');
INSERT INTO `orderAddress` VALUES (736, 'bab534a3fb2e42afb704894fc556c11d', '1591112856284100003', 'FF', '天津市 市辖区 和平区 劝业场街道 ', 'adas', '18598852522', '2225@qq.com', '12,1201,120101,120101001,', 'adsd');
INSERT INTO `orderAddress` VALUES (737, 'bab534a3fb2e42afb704894fc556c11d', '1591112908727100004', 'FF', '天津市 市辖区 和平区 劝业场街道 ', 'adas', '18598852522', '2225@qq.com', '12,1201,120101,120101001,', 'adsd');
INSERT INTO `orderAddress` VALUES (738, 'f92b9f8f372e445fb6564cdd57aa3c3e', '1591146353330100001', '2252821162@qq.com', '北京市 市辖区 东城区 东华门街道 ', '2252821162@qq.com', '18598814121', '2252821162@qq.com', '11,1101,110101,110101001,', '2');
INSERT INTO `orderAddress` VALUES (739, 'fd2d5eb2dd124f23802f163cd3998741', '1591191744705100002', '速度还是大', '天津市 市辖区 南开区 鼓楼街道 ', '速度还是大', '15367885410', 'liuxianliangli@foxmail.com', '12,1201,120104,120104002,', '');
INSERT INTO `orderAddress` VALUES (740, 'fd2d5eb2dd124f23802f163cd3998741', '1591262782959100001', '速度还是大', '天津市 市辖区 南开区 鼓楼街道 ', '速度还是大', '15367885410', 'liuxianliangli@foxmail.com', '12,1201,120104,120104002,', '');
INSERT INTO `orderAddress` VALUES (741, '3e7cb3ada38c49a58d57a7c3446ec932', '1591697678854100001', '黑妹儿', '湖南省 长沙市 天心区 暮云街道 ', '科院', '15873790368', '', '43,4301,430103,430103015,', '');
INSERT INTO `orderAddress` VALUES (742, 'fd2d5eb2dd124f23802f163cd3998741', '1591697873586100002', '速度还是大', '天津市 市辖区 南开区 鼓楼街道 ', '速度还是大', '15367885410', 'liuxianliangli@foxmail.com', '12,1201,120104,120104002,', '学校');
INSERT INTO `orderAddress` VALUES (743, '3e7cb3ada38c49a58d57a7c3446ec932', '1591697678854100001', '黑妹儿', '湖南省 长沙市 天心区 暮云街道 ', '科院', '15873790368', '', '43,4301,430103,430103015,', '');
INSERT INTO `orderAddress` VALUES (744, '3e7cb3ada38c49a58d57a7c3446ec932', '1591697678854100001', '黑妹儿', '湖南省 长沙市 天心区 暮云街道 ', '科院', '15873790368', '', '43,4301,430103,430103015,', '');
INSERT INTO `orderAddress` VALUES (745, '3e7cb3ada38c49a58d57a7c3446ec932', '1591697678854100001', '黑妹儿', '湖南省 长沙市 天心区 暮云街道 ', '科院', '15873790368', '', '43,4301,430103,430103015,', '');
INSERT INTO `orderAddress` VALUES (746, '3e7cb3ada38c49a58d57a7c3446ec932', '1591697678854100001', '黑妹儿', '湖南省 长沙市 天心区 暮云街道 ', '科院', '15873790368', '', '43,4301,430103,430103015,', '');
INSERT INTO `orderAddress` VALUES (747, 'f92b9f8f372e445fb6564cdd57aa3c3e', '1591698004323100003', '2252821162@qq.com', '北京市 市辖区 东城区 东华门街道 ', '2252821162@qq.com', '18598814121', '2252821162@qq.com', '11,1101,110101,110101001,', '2');
INSERT INTO `orderAddress` VALUES (748, '3e7cb3ada38c49a58d57a7c3446ec932', '1591697678854100001', '黑妹儿', '湖南省 长沙市 天心区 暮云街道 ', '科院', '15873790368', '', '43,4301,430103,430103015,', '');
INSERT INTO `orderAddress` VALUES (749, 'fd2d5eb2dd124f23802f163cd3998741', '1591699783753100005', '速度还是大', '天津市 市辖区 南开区 鼓楼街道 ', '速度还是大', '15367885410', 'liuxianliangli@foxmail.com', '12,1201,120104,120104002,', '学校');
INSERT INTO `orderAddress` VALUES (750, 'f92b9f8f372e445fb6564cdd57aa3c3e', '1592198179386100001', '2252821162@qq.com', '北京市 市辖区 东城区 东华门街道 ', '2252821162@qq.com', '18598814121', '2252821162@qq.com', '11,1101,110101,110101001,', '2');
INSERT INTO `orderAddress` VALUES (751, 'f92b9f8f372e445fb6564cdd57aa3c3e', '1592198179386100001', '2252821162@qq.com', '北京市 市辖区 东城区 东华门街道 ', '2252821162@qq.com', '18598814121', '2252821162@qq.com', '11,1101,110101,110101001,', '2');
INSERT INTO `orderAddress` VALUES (752, 'f92b9f8f372e445fb6564cdd57aa3c3e', '1592198179386100001', '2252821162@qq.com', '北京市 市辖区 东城区 东华门街道 ', '2252821162@qq.com', '18598814121', '2252821162@qq.com', '11,1101,110101,110101001,', '2');
INSERT INTO `orderAddress` VALUES (753, 'f92b9f8f372e445fb6564cdd57aa3c3e', '1592201143597100002', '2252821162@qq.com', '北京市 市辖区 东城区 东华门街道 ', '2252821162@qq.com', '18598814121', '2252821162@qq.com', '11,1101,110101,110101001,', '2');
INSERT INTO `orderAddress` VALUES (754, 'f92b9f8f372e445fb6564cdd57aa3c3e', '1592713282803100001', '2252821162@qq.com', '北京市 市辖区 东城区 东华门街道 ', '2252821162@qq.com', '18598814121', '2252821162@qq.com', '11,1101,110101,110101001,', '2');
INSERT INTO `orderAddress` VALUES (755, 'f92b9f8f372e445fb6564cdd57aa3c3e', '1592720296500100003', '2252821162@qq.com', '北京市 市辖区 东城区 东华门街道 ', '2252821162@qq.com', '18598814121', '2252821162@qq.com', '11,1101,110101,110101001,', '2');
INSERT INTO `orderAddress` VALUES (756, 'f92b9f8f372e445fb6564cdd57aa3c3e', '1592720296500100003', '2252821162@qq.com', '北京市 市辖区 东城区 东华门街道 ', '2252821162@qq.com', '18598814121', '2252821162@qq.com', '11,1101,110101,110101001,', '2');
INSERT INTO `orderAddress` VALUES (757, 'f92b9f8f372e445fb6564cdd57aa3c3e', '1592720376237100004', '2252821162@qq.com', '北京市 市辖区 东城区 东华门街道 ', '2252821162@qq.com', '18598814121', '2252821162@qq.com', '11,1101,110101,110101001,', '2');
INSERT INTO `orderAddress` VALUES (758, 'f92b9f8f372e445fb6564cdd57aa3c3e', '1592720376237100004', '2252821162@qq.com', '北京市 市辖区 东城区 东华门街道 ', '2252821162@qq.com', '18598814121', '2252821162@qq.com', '11,1101,110101,110101001,', '2');
INSERT INTO `orderAddress` VALUES (759, 'f92b9f8f372e445fb6564cdd57aa3c3e', '1592720450436100005', '2252821162@qq.com', '北京市 市辖区 东城区 东华门街道 ', '2252821162@qq.com', '18598814121', '2252821162@qq.com', '11,1101,110101,110101001,', '2');
INSERT INTO `orderAddress` VALUES (760, 'f92b9f8f372e445fb6564cdd57aa3c3e', '1592720376237100004', '2252821162@qq.com', '北京市 市辖区 东城区 东华门街道 ', '2252821162@qq.com', '18598814121', '2252821162@qq.com', '11,1101,110101,110101001,', '2');
INSERT INTO `orderAddress` VALUES (761, 'f92b9f8f372e445fb6564cdd57aa3c3e', '1592720594896100006', '2252821162@qq.com', '北京市 市辖区 东城区 东华门街道 ', '2252821162@qq.com', '18598814121', '2252821162@qq.com', '11,1101,110101,110101001,', '2');
INSERT INTO `orderAddress` VALUES (762, 'f92b9f8f372e445fb6564cdd57aa3c3e', '1592730170372100007', '2252821162@qq.com', '北京市 市辖区 东城区 东华门街道 ', '2252821162@qq.com', '18598814121', '2252821162@qq.com', '11,1101,110101,110101001,', '2');
INSERT INTO `orderAddress` VALUES (763, 'f92b9f8f372e445fb6564cdd57aa3c3e', '1592730540160100008', '2252821162@qq.com', '北京市 市辖区 东城区 东华门街道 ', '2252821162@qq.com', '18598814121', '2252821162@qq.com', '11,1101,110101,110101001,', '2');
INSERT INTO `orderAddress` VALUES (764, 'f92b9f8f372e445fb6564cdd57aa3c3e', '1592730653251100009', '2252821162@qq.com', '北京市 市辖区 东城区 东华门街道 ', '2252821162@qq.com', '18598814121', '2252821162@qq.com', '11,1101,110101,110101001,', '2');
INSERT INTO `orderAddress` VALUES (765, 'f92b9f8f372e445fb6564cdd57aa3c3e', '1592730653251100009', '2252821162@qq.com', '北京市 市辖区 东城区 东华门街道 ', '2252821162@qq.com', '18598814121', '2252821162@qq.com', '11,1101,110101,110101001,', '2');
INSERT INTO `orderAddress` VALUES (766, 'f92b9f8f372e445fb6564cdd57aa3c3e', '1592732849879100010', '2252821162@qq.com', '北京市 市辖区 东城区 东华门街道 ', '2252821162@qq.com', '18598814121', '2252821162@qq.com', '11,1101,110101,110101001,', '2');
INSERT INTO `orderAddress` VALUES (767, 'f92b9f8f372e445fb6564cdd57aa3c3e', '1592733331815100011', '2252821162@qq.com', '北京市 市辖区 东城区 东华门街道 ', '2252821162@qq.com', '18598814121', '2252821162@qq.com', '11,1101,110101,110101001,', '2');
INSERT INTO `orderAddress` VALUES (768, 'f92b9f8f372e445fb6564cdd57aa3c3e', '1592733438424100012', '2252821162@qq.com', '北京市 市辖区 东城区 东华门街道 ', '2252821162@qq.com', '18598814121', '2252821162@qq.com', '11,1101,110101,110101001,', '2');
INSERT INTO `orderAddress` VALUES (769, 'f92b9f8f372e445fb6564cdd57aa3c3e', '1592789666162100001', '2252821162@qq.com', '北京市 市辖区 东城区 东华门街道 ', '2252821162@qq.com', '18598814121', '2252821162@qq.com', '11,1101,110101,110101001,', '2');
INSERT INTO `orderAddress` VALUES (770, 'f92b9f8f372e445fb6564cdd57aa3c3e', '1592789907532100002', '2252821162@qq.com', '北京市 市辖区 东城区 东华门街道 ', '2252821162@qq.com', '18598814121', '2252821162@qq.com', '11,1101,110101,110101001,', '2');
INSERT INTO `orderAddress` VALUES (771, 'f92b9f8f372e445fb6564cdd57aa3c3e', '1592790083822100003', '2252821162@qq.com', '北京市 市辖区 东城区 东华门街道 ', '2252821162@qq.com', '18598814121', '2252821162@qq.com', '11,1101,110101,110101001,', '2');
INSERT INTO `orderAddress` VALUES (772, 'f92b9f8f372e445fb6564cdd57aa3c3e', '1592790154608100004', '2252821162@qq.com', '北京市 市辖区 东城区 东华门街道 ', '2252821162@qq.com', '18598814121', '2252821162@qq.com', '11,1101,110101,110101001,', '2');
INSERT INTO `orderAddress` VALUES (773, 'f92b9f8f372e445fb6564cdd57aa3c3e', '1592790303315100004', '2252821162@qq.com', '北京市 市辖区 东城区 东华门街道 ', '2252821162@qq.com', '18598814121', '2252821162@qq.com', '11,1101,110101,110101001,', '2');
INSERT INTO `orderAddress` VALUES (774, 'f92b9f8f372e445fb6564cdd57aa3c3e', '1592790449779100004', '2252821162@qq.com', '北京市 市辖区 东城区 东华门街道 ', '2252821162@qq.com', '18598814121', '2252821162@qq.com', '11,1101,110101,110101001,', '2');
INSERT INTO `orderAddress` VALUES (775, 'f92b9f8f372e445fb6564cdd57aa3c3e', '1592790788151100005', '2252821162@qq.com', '北京市 市辖区 东城区 东华门街道 ', '2252821162@qq.com', '18598814121', '2252821162@qq.com', '11,1101,110101,110101001,', '2');
INSERT INTO `orderAddress` VALUES (776, 'f92b9f8f372e445fb6564cdd57aa3c3e', '1592791713279100006', '2252821162@qq.com', '北京市 市辖区 东城区 东华门街道 ', '2252821162@qq.com', '18598814121', '2252821162@qq.com', '11,1101,110101,110101001,', '2');
INSERT INTO `orderAddress` VALUES (777, 'f92b9f8f372e445fb6564cdd57aa3c3e', '1592795816465100006', '2252821162@qq.com', '北京市 市辖区 东城区 东华门街道 ', '2252821162@qq.com', '18598814121', '2252821162@qq.com', '11,1101,110101,110101001,', '2');
INSERT INTO `orderAddress` VALUES (778, 'f92b9f8f372e445fb6564cdd57aa3c3e', '1592821932895100006', '2252821162@qq.com', '北京市 市辖区 东城区 东华门街道 ', '2252821162@qq.com', '18598814121', '2252821162@qq.com', '11,1101,110101,110101001,', '2');
INSERT INTO `orderAddress` VALUES (779, 'f92b9f8f372e445fb6564cdd57aa3c3e', '1592822082163100007', '2252821162@qq.com', '北京市 市辖区 东城区 东华门街道 ', '2252821162@qq.com', '18598814121', '2252821162@qq.com', '11,1101,110101,110101001,', '2');
INSERT INTO `orderAddress` VALUES (780, 'f92b9f8f372e445fb6564cdd57aa3c3e', '1592822136658100009', '2252821162@qq.com', '北京市 市辖区 东城区 东华门街道 ', '2252821162@qq.com', '18598814121', '2252821162@qq.com', '11,1101,110101,110101001,', '2');
INSERT INTO `orderAddress` VALUES (781, 'fd2d5eb2dd124f23802f163cd3998741', '1592822162479100010', '速度还是大', '天津市 市辖区 南开区 鼓楼街道 ', '速度还是大', '15367885410', 'liuxianliangli@foxmail.com', '12,1201,120104,120104002,', '学校');
INSERT INTO `orderAddress` VALUES (782, 'f92b9f8f372e445fb6564cdd57aa3c3e', '1592822206628100011', '2252821162@qq.com', '北京市 市辖区 东城区 东华门街道 ', '2252821162@qq.com', '18598814121', '2252821162@qq.com', '11,1101,110101,110101001,', '2');
INSERT INTO `orderAddress` VALUES (783, 'fd2d5eb2dd124f23802f163cd3998741', '1592822220149100012', '速度还是大', '天津市 市辖区 南开区 鼓楼街道 ', '速度还是大', '15367885410', 'liuxianliangli@foxmail.com', '12,1201,120104,120104002,', '学校');
INSERT INTO `orderAddress` VALUES (784, 'f92b9f8f372e445fb6564cdd57aa3c3e', '1592822337263100013', '2252821162@qq.com', '北京市 市辖区 东城区 东华门街道 ', '2252821162@qq.com', '18598814121', '2252821162@qq.com', '11,1101,110101,110101001,', '2');
INSERT INTO `orderAddress` VALUES (785, 'f92b9f8f372e445fb6564cdd57aa3c3e', '1592822337263100013', '2252821162@qq.com', '北京市 市辖区 东城区 东华门街道 ', '2252821162@qq.com', '18598814121', '2252821162@qq.com', '11,1101,110101,110101001,', '2');
INSERT INTO `orderAddress` VALUES (786, 'f92b9f8f372e445fb6564cdd57aa3c3e', '1592822486861100014', '2252821162@qq.com', '北京市 市辖区 东城区 东华门街道 ', '2252821162@qq.com', '18598814121', '2252821162@qq.com', '11,1101,110101,110101001,', '2');
INSERT INTO `orderAddress` VALUES (787, 'f92b9f8f372e445fb6564cdd57aa3c3e', '1592822486861100014', '2252821162@qq.com', '北京市 市辖区 东城区 东华门街道 ', '2252821162@qq.com', '18598814121', '2252821162@qq.com', '11,1101,110101,110101001,', '2');
INSERT INTO `orderAddress` VALUES (788, 'f92b9f8f372e445fb6564cdd57aa3c3e', '1592830150961100015', '2252821162@qq.com', '北京市 市辖区 东城区 东华门街道 ', '2252821162@qq.com', '18598814121', '2252821162@qq.com', '11,1101,110101,110101001,', '2');
INSERT INTO `orderAddress` VALUES (789, 'f92b9f8f372e445fb6564cdd57aa3c3e', '1592868925313100017', '2252821162@qq.com', '北京市 市辖区 东城区 东华门街道 ', '2252821162@qq.com', '18598814121', '2252821162@qq.com', '11,1101,110101,110101001,', '2');
INSERT INTO `orderAddress` VALUES (790, 'f92b9f8f372e445fb6564cdd57aa3c3e', '1592869177091100018', '2252821162@qq.com', '北京市 市辖区 东城区 东华门街道 ', '2252821162@qq.com', '18598814121', '2252821162@qq.com', '11,1101,110101,110101001,', '2');

-- ----------------------------
-- Table structure for orderAddress_copy1
-- ----------------------------
DROP TABLE IF EXISTS `orderAddress_copy1`;
CREATE TABLE `orderAddress_copy1`  (
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
) ENGINE = InnoDB AUTO_INCREMENT = 754 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of orderAddress_copy1
-- ----------------------------

-- ----------------------------
-- Table structure for orders
-- ----------------------------
DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders`  (
  `purchaseId` int(11) NOT NULL AUTO_INCREMENT,
  `ProductId` int(11) NULL DEFAULT NULL,
  `orderId` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `productName` varchar(300) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `productImage` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `productConfiguration` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `productQuantity` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `productPrice` double NULL DEFAULT NULL,
  `productWeight` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `evaluate` int(11) NULL DEFAULT NULL,
  `productState` int(11) NULL DEFAULT 0,
  `isDelete` int(11) NULL DEFAULT 0,
  PRIMARY KEY (`purchaseId`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3456 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of orders
-- ----------------------------
INSERT INTO `orders` VALUES (3293, 10018, '1590897183222100001', '【专柜正品】Dior迪奥口红烈艳蓝金女士唇膏999口红套装送女友生日礼物 送老婆情人节礼物 【情人节星星限量版五只装套盒】', '\r\nhttp://productdata.isdfmk.xyz/5cd5acfbN24c0ee18.jpg', '[红弯心动6支套装] [赠视频玫瑰礼盒 ] ', '1', 988, '0.4kg', 0, 2, 0);
INSERT INTO `orders` VALUES (3294, 10018, '1590897183222100001', '【专柜正品】Dior迪奥口红烈艳蓝金女士唇膏999口红套装送女友生日礼物 送老婆情人节礼物 【情人节星星限量版五只装套盒】', '\r\nhttp://productdata.isdfmk.xyz/5cd5acfbN24c0ee18.jpg', '[限量版挚爱红管烟花5支装套盒] ', '1', 588, '0.4kg', 0, 2, 0);
INSERT INTO `orders` VALUES (3295, 10018, '1590897183222100001', '【专柜正品】Dior迪奥口红烈艳蓝金女士唇膏999口红套装送女友生日礼物 送老婆情人节礼物 【情人节星星限量版五只装套盒】', '\r\nhttp://productdata.isdfmk.xyz/5cd5acfbN24c0ee18.jpg', '999+ 520+花漾甜心100ML [口红香水套装] ', '1', 1140, '0.4kg', 0, 2, 0);
INSERT INTO `orders` VALUES (3296, 10018, '1590897183222100001', '【专柜正品】Dior迪奥口红烈艳蓝金女士唇膏999口红套装送女友生日礼物 送老婆情人节礼物 【情人节星星限量版五只装套盒】', '\r\nhttp://productdata.isdfmk.xyz/5cd5acfbN24c0ee18.jpg', '挚爱红管999#传奇正红[赠专柜礼盒] ', '2', 588, '0.4kg', 0, 2, 0);
INSERT INTO `orders` VALUES (3297, 10005, '1590897475548100002', 'Apple iPad Pro 12.9英寸平板电脑 2018款(64G WLAN版/全面屏/A12X/FaceID MTEL2CH/A)深空灰\r\n', 'http://productdata.isdfmk.xyz/7a77ad4e3100e885.jpg', 'WLAN版512G ', '1', 7890, '2.8kg', 0, 0, 0);
INSERT INTO `orders` VALUES (3298, 10005, '1590897539621100003', 'Apple iPad Pro 12.9英寸平板电脑 2018款(64G WLAN版/全面屏/A12X/FaceID MTEL2CH/A)深空灰\r\n', 'http://productdata.isdfmk.xyz/7a77ad4e3100e885.jpg', 'WLAN版512G ', '1', 7890, '2.8kg', 0, 0, 0);
INSERT INTO `orders` VALUES (3299, 10013, '1590897928981100004', '华硕（ASUS）猛禽ROG-STRIX-GeForce RTX 2080 ', 'http://productdata.isdfmk.xyz/1f3f9fd0e759383f.jpg', '华硕PRIME X299-A主板+  ', '1', 11999, '2.08kg', 0, 0, 0);
INSERT INTO `orders` VALUES (3300, 10006, '1590897958726100005', ' 索尼（SONY）WF-1000XM3 真无线蓝牙降噪耳机 智能降噪 触控面板 苹果/安卓手机适用 黑色\r\n', 'http://productdata.isdfmk.xyz/2ca45e2fd9758794.jpg', '黑色 ', '1', 1499, '0.6kg', 0, 0, 0);
INSERT INTO `orders` VALUES (3301, 10013, '1590897990915100006', '华硕（ASUS）猛禽ROG-STRIX-GeForce RTX 2080 ', 'http://productdata.isdfmk.xyz/1f3f9fd0e759383f.jpg', '华硕PRIME X299-A主板+  ', '1', 11999, '2.08kg', 0, 0, 0);
INSERT INTO `orders` VALUES (3302, 10029, '1590898731844100007', '美国正品代购阿迪达斯adidas YEEZY BOOST 350 V2 侃爷冰蓝椰子鞋新款男跑步鞋', 'http://productdata.isdfmk.xyz/334355456168161240400082_x.jpg', 'BB1826灰橙色  标准46.5/US12  ', '1', 2920.01, '2.5kg', 0, 0, 0);
INSERT INTO `orders` VALUES (3303, 10011, '1590906359505100008', 'Apple iPhone 11 Pro Max (A2220) 64GB 金色 移动联通电信4G手机 双卡双待 ', '\r\nhttp://productdata.isdfmk.xyz/04e04ec4954e07bd.jpg', '银色 128G+2G ', '1', 10398, '0.56kg', 0, 0, 0);
INSERT INTO `orders` VALUES (3304, 10005, '1590906899170100009', 'Apple iPad Pro 12.9英寸平板电脑 2018款(64G WLAN版/全面屏/A12X/FaceID MTEL2CH/A)深空灰\r\n', 'http://productdata.isdfmk.xyz/7a77ad4e3100e885.jpg', 'WLAN版512G ', '1', 7890, '2.8kg', 0, 0, 0);
INSERT INTO `orders` VALUES (3305, 10013, '1590907414212100010', '华硕（ASUS）猛禽ROG-STRIX-GeForce RTX 2080 ', 'http://productdata.isdfmk.xyz/1f3f9fd0e759383f.jpg', '华硕PRIME X299-A主板+  ', '1', 11999, '2.08kg', 0, 0, 0);
INSERT INTO `orders` VALUES (3306, 10008, '1590907433458100011', '万代（BANDAI） Megahouse POP 海贼王 路飞9人 模型玩具（无售后！！！） 四档路飞\r\n', '\r\nhttp://productdata.isdfmk.xyz/5b90958cN736d78c4.jpg', '', '1', 3500, '100kg', 0, 0, 0);
INSERT INTO `orders` VALUES (3307, 10005, '1590907477142100012', 'Apple iPad Pro 12.9英寸平板电脑 2018款(64G WLAN版/全面屏/A12X/FaceID MTEL2CH/A)深空灰\r\n', 'http://productdata.isdfmk.xyz/7a77ad4e3100e885.jpg', 'WLAN版512G ', '1', 7890, '2.8kg', 0, 2, 0);
INSERT INTO `orders` VALUES (3308, 10011, '1590908670202100013', 'Apple iPhone 11 Pro Max (A2220) 64GB 金色 移动联通电信4G手机 双卡双待 ', '\r\nhttp://productdata.isdfmk.xyz/04e04ec4954e07bd.jpg', '暗夜绿色 64G+2G ', '1', 9999, '0.56kg', 0, 0, 0);
INSERT INTO `orders` VALUES (3309, 10011, '1590908670202100013', 'Apple iPhone 11 Pro Max (A2220) 64GB 金色 移动联通电信4G手机 双卡双待 ', '\r\nhttp://productdata.isdfmk.xyz/04e04ec4954e07bd.jpg', '银色 64G+2G ', '1', 9999, '0.56kg', 0, 0, 0);
INSERT INTO `orders` VALUES (3310, 10011, '1590908670202100013', 'Apple iPhone 11 Pro Max (A2220) 64GB 金色 移动联通电信4G手机 双卡双待 ', '\r\nhttp://productdata.isdfmk.xyz/04e04ec4954e07bd.jpg', '银色 128G+2G ', '1', 10398, '0.56kg', 0, 0, 0);
INSERT INTO `orders` VALUES (3311, 10005, '1590909146438100013', 'Apple iPad Pro 12.9英寸平板电脑 2018款(64G WLAN版/全面屏/A12X/FaceID MTEL2CH/A)深空灰\r\n', 'http://productdata.isdfmk.xyz/7a77ad4e3100e885.jpg', 'WLAN版512G ', '1', 7890, '2.8kg', 0, 0, 0);
INSERT INTO `orders` VALUES (3312, 10005, '1590909332999100013', 'Apple iPad Pro 12.9英寸平板电脑 2018款(64G WLAN版/全面屏/A12X/FaceID MTEL2CH/A)深空灰\r\n', 'http://productdata.isdfmk.xyz/7a77ad4e3100e885.jpg', 'Cellular版512G  ', '1', 7890, '2.8kg', 0, 0, 0);
INSERT INTO `orders` VALUES (3313, 10024, '1590909909158100013', 'HHKB Professional BT 蓝牙版黑无刻静电容键盘 程序员码农专用便携迷你键盘 编程适用', 'http://productdata.isdfmk.xyz/AD8JQ6Q0jfeySzdxAVglqw.jpg', '标准白有刻  ', '11', 2188, NULL, 0, 2, 0);
INSERT INTO `orders` VALUES (3314, 10025, '1590910061652100013', '【良品铺子】综合果仁525g 每日坚果组合混合干果礼盒零食大礼包健康零食', 'http://productdata.isdfmk.xyz/FlnxmuE-gh4YKIj4txsLfg.jpg', '525g(21天装) 标准黑有刻  ', '1', 74.9, '575.5g', 0, 2, 0);
INSERT INTO `orders` VALUES (3315, 10025, '1590910061652100013', '【良品铺子】综合果仁525g 每日坚果组合混合干果礼盒零食大礼包健康零食', 'http://productdata.isdfmk.xyz/FlnxmuE-gh4YKIj4txsLfg.jpg', '750g(30天装) 44毫米 ', '2', 59.9, '575.5g', 0, 2, 0);
INSERT INTO `orders` VALUES (3316, 10009, '1590910061652100013', '外星人Alienware area-51m 17.3英寸游戏笔记本电脑(i9-9900K 32G 512GX2 1T RTX2080 8G 144Hz 低蓝光屏)黑\r\n', 'http://productdata.isdfmk.xyz/0fb1612d25f44013.jpg', '[A51M]9代i9 2080 低蓝光屏 黑  ', '25', 47699, '5.6kg', 0, 2, 0);
INSERT INTO `orders` VALUES (3317, 10005, '1590910132694100013', 'Apple iPad Pro 12.9英寸平板电脑 2018款(64G WLAN版/全面屏/A12X/FaceID MTEL2CH/A)深空灰\r\n', 'http://productdata.isdfmk.xyz/7a77ad4e3100e885.jpg', 'WLAN版512G ', '1', 7890, '2.8kg', 0, 2, 0);
INSERT INTO `orders` VALUES (3318, 10027, '1590910175558100013', '【假一赔十】beats solo3wireless 蓝牙耳机头戴式 米奇 游戏手机耳机 折叠式重低音 运动 玫瑰金', 'http://productdata.isdfmk.xyz/135638619666091357760161_x.jpg', '磨砂黑 ', '1', 773, NULL, 0, 2, 0);
INSERT INTO `orders` VALUES (3319, 10025, '1590910212879100013', '【良品铺子】综合果仁525g 每日坚果组合混合干果礼盒零食大礼包健康零食', 'http://productdata.isdfmk.xyz/FlnxmuE-gh4YKIj4txsLfg.jpg', '750g(30天装) 44毫米 ', '1', 59.9, '575.5g', 0, 2, 0);
INSERT INTO `orders` VALUES (3320, 10027, '1590910381616100013', '【假一赔十】beats solo3wireless 蓝牙耳机头戴式 米奇 游戏手机耳机 折叠式重低音 运动 玫瑰金', 'http://productdata.isdfmk.xyz/135638619666091357760161_x.jpg', '磨砂黑 ', '1', 773, NULL, 0, 0, 0);
INSERT INTO `orders` VALUES (3321, 10027, '1590910432642100013', '【假一赔十】beats solo3wireless 蓝牙耳机头戴式 米奇 游戏手机耳机 折叠式重低音 运动 玫瑰金', 'http://productdata.isdfmk.xyz/135638619666091357760161_x.jpg', '磨砂黑 ', '1', 773, NULL, 0, 2, 0);
INSERT INTO `orders` VALUES (3322, 10027, '1590910522187100013', '【假一赔十】beats solo3wireless 蓝牙耳机头戴式 米奇 游戏手机耳机 折叠式重低音 运动 玫瑰金', 'http://productdata.isdfmk.xyz/135638619666091357760161_x.jpg', '磨砂黑 ', '1', 773, NULL, 0, 2, 0);
INSERT INTO `orders` VALUES (3323, 10027, '1590910582333100013', '【假一赔十】beats solo3wireless 蓝牙耳机头戴式 米奇 游戏手机耳机 折叠式重低音 运动 玫瑰金', 'http://productdata.isdfmk.xyz/135638619666091357760161_x.jpg', '磨砂黑 ', '1', 773, NULL, 0, 2, 0);
INSERT INTO `orders` VALUES (3324, 10027, '1590910643262100013', '【假一赔十】beats solo3wireless 蓝牙耳机头戴式 米奇 游戏手机耳机 折叠式重低音 运动 玫瑰金', 'http://productdata.isdfmk.xyz/135638619666091357760161_x.jpg', ' 丝锻金 ', '1', 773, NULL, 0, 2, 0);
INSERT INTO `orders` VALUES (3325, 10027, '1590911347478100013', '【假一赔十】beats solo3wireless 蓝牙耳机头戴式 米奇 游戏手机耳机 折叠式重低音 运动 玫瑰金', 'http://productdata.isdfmk.xyz/135638619666091357760161_x.jpg', '猪年限量版 90周年 ', '1', 873, NULL, 0, 2, 0);
INSERT INTO `orders` VALUES (3326, 10027, '1590911433725100014', '【假一赔十】beats solo3wireless 蓝牙耳机头戴式 米奇 游戏手机耳机 折叠式重低音 运动 玫瑰金', 'http://productdata.isdfmk.xyz/135638619666091357760161_x.jpg', '银色  ', '1', 773, NULL, 0, 2, 0);
INSERT INTO `orders` VALUES (3327, 10027, '1590911459130100015', '【假一赔十】beats solo3wireless 蓝牙耳机头戴式 米奇 游戏手机耳机 折叠式重低音 运动 玫瑰金', 'http://productdata.isdfmk.xyz/135638619666091357760161_x.jpg', '磨砂黑 ', '1', 773, NULL, 0, 2, 0);
INSERT INTO `orders` VALUES (3328, 10027, '1590911526301100016', '【假一赔十】beats solo3wireless 蓝牙耳机头戴式 米奇 游戏手机耳机 折叠式重低音 运动 玫瑰金', 'http://productdata.isdfmk.xyz/135638619666091357760161_x.jpg', '磨砂黑 ', '1', 773, NULL, 0, 2, 0);
INSERT INTO `orders` VALUES (3329, 10027, '1590911576719100016', '【假一赔十】beats solo3wireless 蓝牙耳机头戴式 米奇 游戏手机耳机 折叠式重低音 运动 玫瑰金', 'http://productdata.isdfmk.xyz/135638619666091357760161_x.jpg', '磨砂黑 ', '1', 773, NULL, 0, 2, 0);
INSERT INTO `orders` VALUES (3330, 10027, '1590911711193100016', '【假一赔十】beats solo3wireless 蓝牙耳机头戴式 米奇 游戏手机耳机 折叠式重低音 运动 玫瑰金', 'http://productdata.isdfmk.xyz/135638619666091357760161_x.jpg', '磨砂黑 ', '1', 773, NULL, 0, 2, 0);
INSERT INTO `orders` VALUES (3331, 10027, '1590911737986100016', '【假一赔十】beats solo3wireless 蓝牙耳机头戴式 米奇 游戏手机耳机 折叠式重低音 运动 玫瑰金', 'http://productdata.isdfmk.xyz/135638619666091357760161_x.jpg', '磨砂黑 ', '1', 773, NULL, 0, 2, 0);
INSERT INTO `orders` VALUES (3332, 10027, '1590911779313100016', '【假一赔十】beats solo3wireless 蓝牙耳机头戴式 米奇 游戏手机耳机 折叠式重低音 运动 玫瑰金', 'http://productdata.isdfmk.xyz/135638619666091357760161_x.jpg', '磨砂黑 ', '1', 773, NULL, 0, 2, 0);
INSERT INTO `orders` VALUES (3333, 10027, '1590911818051100016', '【假一赔十】beats solo3wireless 蓝牙耳机头戴式 米奇 游戏手机耳机 折叠式重低音 运动 玫瑰金', 'http://productdata.isdfmk.xyz/135638619666091357760161_x.jpg', '磨砂黑 ', '1', 773, NULL, 0, 2, 0);
INSERT INTO `orders` VALUES (3334, 10027, '1590911891053100016', '【假一赔十】beats solo3wireless 蓝牙耳机头戴式 米奇 游戏手机耳机 折叠式重低音 运动 玫瑰金', 'http://productdata.isdfmk.xyz/135638619666091357760161_x.jpg', '米奇老鼠版  ', '1', 773, NULL, 0, 2, 0);
INSERT INTO `orders` VALUES (3335, 10027, '1590912029632100016', '【假一赔十】beats solo3wireless 蓝牙耳机头戴式 米奇 游戏手机耳机 折叠式重低音 运动 玫瑰金', 'http://productdata.isdfmk.xyz/135638619666091357760161_x.jpg', '米奇老鼠版  ', '1', 773, NULL, 0, 2, 0);
INSERT INTO `orders` VALUES (3336, 10027, '1590912209984100016', '【假一赔十】beats solo3wireless 蓝牙耳机头戴式 米奇 游戏手机耳机 折叠式重低音 运动 玫瑰金', 'http://productdata.isdfmk.xyz/135638619666091357760161_x.jpg', '磨砂黑 ', '1', 773, NULL, 0, 2, 0);
INSERT INTO `orders` VALUES (3337, 10025, '1590913114287100016', '【良品铺子】综合果仁525g 每日坚果组合混合干果礼盒零食大礼包健康零食', 'http://productdata.isdfmk.xyz/FlnxmuE-gh4YKIj4txsLfg.jpg', '750g(30天装) 44毫米 ', '1', 59.9, '575.5g', 0, 2, 0);
INSERT INTO `orders` VALUES (3338, 10021, '1590913206587100016', '长虹（CHANGHONG）D6U 长虹 激光电视 影院 投影仪 激光电视 私人电影院 投影机 长虹 4K画质 3500流明 115%广色域 AI人工智能 语音控制\r\n4K画质，3500流明，115%广色域，AI人工智能，语音控制  ', 'http://productdata.isdfmk.xyz/dbBltniJF2LoPk9QQ3YWaw.jpg', '官方标配 ', '1', 18599, '5.84kg', 0, 2, 0);
INSERT INTO `orders` VALUES (3339, 10027, '1590913317844100016', '【假一赔十】beats solo3wireless 蓝牙耳机头戴式 米奇 游戏手机耳机 折叠式重低音 运动 玫瑰金', 'http://productdata.isdfmk.xyz/135638619666091357760161_x.jpg', '磨砂黑 ', '1', 773, NULL, 0, 2, 0);
INSERT INTO `orders` VALUES (3340, 10027, '1590913594499100016', '【假一赔十】beats solo3wireless 蓝牙耳机头戴式 米奇 游戏手机耳机 折叠式重低音 运动 玫瑰金', 'http://productdata.isdfmk.xyz/135638619666091357760161_x.jpg', '磨砂黑 ', '1', 773, NULL, 0, 2, 0);
INSERT INTO `orders` VALUES (3341, 10027, '1590913597703100016', '【假一赔十】beats solo3wireless 蓝牙耳机头戴式 米奇 游戏手机耳机 折叠式重低音 运动 玫瑰金', 'http://productdata.isdfmk.xyz/135638619666091357760161_x.jpg', '磨砂黑 ', '1', 773, NULL, 0, 0, 0);
INSERT INTO `orders` VALUES (3342, 10025, '1590913666936100016', '【良品铺子】综合果仁525g 每日坚果组合混合干果礼盒零食大礼包健康零食', 'http://productdata.isdfmk.xyz/FlnxmuE-gh4YKIj4txsLfg.jpg', '750g(30天装) 44毫米 ', '1', 59.9, '575.5g', 0, 2, 0);
INSERT INTO `orders` VALUES (3343, 10027, '1590914298003100016', '【假一赔十】beats solo3wireless 蓝牙耳机头戴式 米奇 游戏手机耳机 折叠式重低音 运动 玫瑰金', 'http://productdata.isdfmk.xyz/135638619666091357760161_x.jpg', '磨砂黑 ', '1', 773, NULL, 0, 2, 0);
INSERT INTO `orders` VALUES (3344, 10025, '1590914370882100016', '【良品铺子】综合果仁525g 每日坚果组合混合干果礼盒零食大礼包健康零食', 'http://productdata.isdfmk.xyz/FlnxmuE-gh4YKIj4txsLfg.jpg', '750g(30天装) 44毫米 ', '1', 59.9, '575.5g', 0, 2, 0);
INSERT INTO `orders` VALUES (3345, 10025, '1590914549676100016', '【良品铺子】综合果仁525g 每日坚果组合混合干果礼盒零食大礼包健康零食', 'http://productdata.isdfmk.xyz/FlnxmuE-gh4YKIj4txsLfg.jpg', '750g(30天装) 44毫米 ', '1', 59.9, '575.5g', 0, 0, 0);
INSERT INTO `orders` VALUES (3346, 10025, '1590914552067100016', '【良品铺子】综合果仁525g 每日坚果组合混合干果礼盒零食大礼包健康零食', 'http://productdata.isdfmk.xyz/FlnxmuE-gh4YKIj4txsLfg.jpg', '525g(21天装) 标准黑有刻  ', '1', 74.9, '575.5g', 0, 2, 0);
INSERT INTO `orders` VALUES (3347, 10027, '1590914605546100016', '【假一赔十】beats solo3wireless 蓝牙耳机头戴式 米奇 游戏手机耳机 折叠式重低音 运动 玫瑰金', 'http://productdata.isdfmk.xyz/135638619666091357760161_x.jpg', '磨砂黑 ', '1', 773, NULL, 0, 2, 0);
INSERT INTO `orders` VALUES (3348, 10025, '1590914958294100016', '【良品铺子】综合果仁525g 每日坚果组合混合干果礼盒零食大礼包健康零食', 'http://productdata.isdfmk.xyz/FlnxmuE-gh4YKIj4txsLfg.jpg', '750g(30天装) 44毫米 ', '1', 59.9, '575.5g', 0, 2, 0);
INSERT INTO `orders` VALUES (3349, 10003, '1590915061056100016', '星农联合 智利帝王蟹5.5-5.0斤 熟冻大螃蟹 进口海鲜礼盒', 'http://productdata.isdfmk.xyz/212478163d84fcf0.jpg', '【超大款】帝王蟹礼盒4.5-4.0斤  ', '1', 888, '不计重', 0, 2, 0);
INSERT INTO `orders` VALUES (3350, 10003, '1590917430584100016', '星农联合 智利帝王蟹5.5-5.0斤 熟冻大螃蟹 进口海鲜礼盒', 'http://productdata.isdfmk.xyz/212478163d84fcf0.jpg', '【超大款】帝王蟹礼盒4.5-4.0斤  ', '1', 888, '不计重', 0, 2, 0);
INSERT INTO `orders` VALUES (3351, 10027, '1590917437802100016', '【假一赔十】beats solo3wireless 蓝牙耳机头戴式 米奇 游戏手机耳机 折叠式重低音 运动 玫瑰金', 'http://productdata.isdfmk.xyz/135638619666091357760161_x.jpg', '米奇老鼠版  ', '1', 773, NULL, 0, 2, 0);
INSERT INTO `orders` VALUES (3352, 10025, '1590917515330100016', '【良品铺子】综合果仁525g 每日坚果组合混合干果礼盒零食大礼包健康零食', 'http://productdata.isdfmk.xyz/FlnxmuE-gh4YKIj4txsLfg.jpg', '750g(30天装) 44毫米 ', '1', 59.9, '575.5g', 0, 2, 0);
INSERT INTO `orders` VALUES (3353, 10029, '1590917522539100016', '美国正品代购阿迪达斯adidas YEEZY BOOST 350 V2 侃爷冰蓝椰子鞋新款男跑步鞋', 'http://productdata.isdfmk.xyz/334355456168161240400082_x.jpg', 'BB1826灰橙色  标准46.5/US12  ', '1', 2920.01, '2.5kg', 0, 2, 0);
INSERT INTO `orders` VALUES (3354, 10027, '1590917586580100016', '【假一赔十】beats solo3wireless 蓝牙耳机头戴式 米奇 游戏手机耳机 折叠式重低音 运动 玫瑰金', 'http://productdata.isdfmk.xyz/135638619666091357760161_x.jpg', '磨砂黑 ', '1', 773, NULL, 0, 2, 0);
INSERT INTO `orders` VALUES (3355, 10027, '1590917609537100016', '【假一赔十】beats solo3wireless 蓝牙耳机头戴式 米奇 游戏手机耳机 折叠式重低音 运动 玫瑰金', 'http://productdata.isdfmk.xyz/135638619666091357760161_x.jpg', '猪年限量版 90周年 ', '1', 873, NULL, 0, 2, 0);
INSERT INTO `orders` VALUES (3356, 10027, '1590917710022100016', '【假一赔十】beats solo3wireless 蓝牙耳机头戴式 米奇 游戏手机耳机 折叠式重低音 运动 玫瑰金', 'http://productdata.isdfmk.xyz/135638619666091357760161_x.jpg', ' 紫色 ', '1', 773, NULL, 0, 2, 0);
INSERT INTO `orders` VALUES (3357, 10025, '1590917771089100016', '【良品铺子】综合果仁525g 每日坚果组合混合干果礼盒零食大礼包健康零食', 'http://productdata.isdfmk.xyz/FlnxmuE-gh4YKIj4txsLfg.jpg', '750g(30天装) 44毫米 ', '1', 59.9, '575.5g', 0, 2, 0);
INSERT INTO `orders` VALUES (3358, 10027, '1590917870824100016', '【假一赔十】beats solo3wireless 蓝牙耳机头戴式 米奇 游戏手机耳机 折叠式重低音 运动 玫瑰金', 'http://productdata.isdfmk.xyz/135638619666091357760161_x.jpg', '磨砂黑 ', '1', 773, NULL, 0, 2, 0);
INSERT INTO `orders` VALUES (3359, 10027, '1590918482778100016', '【假一赔十】beats solo3wireless 蓝牙耳机头戴式 米奇 游戏手机耳机 折叠式重低音 运动 玫瑰金', 'http://productdata.isdfmk.xyz/135638619666091357760161_x.jpg', '米奇老鼠版  ', '1', 773, NULL, 0, 2, 0);
INSERT INTO `orders` VALUES (3360, 10027, '1590918561879100016', '【假一赔十】beats solo3wireless 蓝牙耳机头戴式 米奇 游戏手机耳机 折叠式重低音 运动 玫瑰金', 'http://productdata.isdfmk.xyz/135638619666091357760161_x.jpg', '磨砂黑 ', '1', 773, NULL, 0, 2, 0);
INSERT INTO `orders` VALUES (3361, 10027, '1590918609256100016', '【假一赔十】beats solo3wireless 蓝牙耳机头戴式 米奇 游戏手机耳机 折叠式重低音 运动 玫瑰金', 'http://productdata.isdfmk.xyz/135638619666091357760161_x.jpg', '磨砂黑 ', '1', 773, NULL, 0, 2, 0);
INSERT INTO `orders` VALUES (3362, 10027, '1590918630745100016', '【假一赔十】beats solo3wireless 蓝牙耳机头戴式 米奇 游戏手机耳机 折叠式重低音 运动 玫瑰金', 'http://productdata.isdfmk.xyz/135638619666091357760161_x.jpg', '磨砂黑 ', '1', 773, NULL, 0, 2, 0);
INSERT INTO `orders` VALUES (3363, 10027, '1590918650270100016', '【假一赔十】beats solo3wireless 蓝牙耳机头戴式 米奇 游戏手机耳机 折叠式重低音 运动 玫瑰金', 'http://productdata.isdfmk.xyz/135638619666091357760161_x.jpg', '磨砂黑 ', '1', 773, NULL, 0, 2, 0);
INSERT INTO `orders` VALUES (3364, 10027, '1590918684473100016', '【假一赔十】beats solo3wireless 蓝牙耳机头戴式 米奇 游戏手机耳机 折叠式重低音 运动 玫瑰金', 'http://productdata.isdfmk.xyz/135638619666091357760161_x.jpg', '玫瑰金  ', '1', 773, NULL, 0, 2, 0);
INSERT INTO `orders` VALUES (3365, 10027, '1590918684473100016', '【假一赔十】beats solo3wireless 蓝牙耳机头戴式 米奇 游戏手机耳机 折叠式重低音 运动 玫瑰金', 'http://productdata.isdfmk.xyz/135638619666091357760161_x.jpg', '米奇老鼠版  ', '1', 773, NULL, 0, 2, 0);
INSERT INTO `orders` VALUES (3366, 10027, '1590918684473100016', '【假一赔十】beats solo3wireless 蓝牙耳机头戴式 米奇 游戏手机耳机 折叠式重低音 运动 玫瑰金', 'http://productdata.isdfmk.xyz/135638619666091357760161_x.jpg', 'POP红色 ', '1', 773, NULL, 0, 2, 0);
INSERT INTO `orders` VALUES (3367, 10027, '1590918684473100016', '【假一赔十】beats solo3wireless 蓝牙耳机头戴式 米奇 游戏手机耳机 折叠式重低音 运动 玫瑰金', 'http://productdata.isdfmk.xyz/135638619666091357760161_x.jpg', '猪年限量版 90周年 ', '1', 873, NULL, 0, 2, 0);
INSERT INTO `orders` VALUES (3368, 10027, '1590918684473100016', '【假一赔十】beats solo3wireless 蓝牙耳机头戴式 米奇 游戏手机耳机 折叠式重低音 运动 玫瑰金', 'http://productdata.isdfmk.xyz/135638619666091357760161_x.jpg', '学院白  ', '1', 773, NULL, 0, 2, 0);
INSERT INTO `orders` VALUES (3369, 10027, '1590918684473100016', '【假一赔十】beats solo3wireless 蓝牙耳机头戴式 米奇 游戏手机耳机 折叠式重低音 运动 玫瑰金', 'http://productdata.isdfmk.xyz/135638619666091357760161_x.jpg', '学院蓝 ', '1', 773, NULL, 0, 2, 0);
INSERT INTO `orders` VALUES (3370, 10027, '1590918684473100016', '【假一赔十】beats solo3wireless 蓝牙耳机头戴式 米奇 游戏手机耳机 折叠式重低音 运动 玫瑰金', 'http://productdata.isdfmk.xyz/135638619666091357760161_x.jpg', '学院红 ', '1', 773, NULL, 0, 2, 0);
INSERT INTO `orders` VALUES (3371, 10027, '1590918684473100016', '【假一赔十】beats solo3wireless 蓝牙耳机头戴式 米奇 游戏手机耳机 折叠式重低音 运动 玫瑰金', 'http://productdata.isdfmk.xyz/135638619666091357760161_x.jpg', '磨砂黑 ', '1', 773, NULL, 0, 2, 0);
INSERT INTO `orders` VALUES (3372, 10025, '1590918684473100016', '【良品铺子】综合果仁525g 每日坚果组合混合干果礼盒零食大礼包健康零食', 'http://productdata.isdfmk.xyz/FlnxmuE-gh4YKIj4txsLfg.jpg', '750g(30天装) 44毫米 ', '1', 59.9, '575.5g', 0, 2, 0);
INSERT INTO `orders` VALUES (3373, 10027, '1590918740609100016', '【假一赔十】beats solo3wireless 蓝牙耳机头戴式 米奇 游戏手机耳机 折叠式重低音 运动 玫瑰金', 'http://productdata.isdfmk.xyz/135638619666091357760161_x.jpg', '米奇老鼠版  ', '1', 773, NULL, 0, 2, 0);
INSERT INTO `orders` VALUES (3374, 10027, '1590918740609100016', '【假一赔十】beats solo3wireless 蓝牙耳机头戴式 米奇 游戏手机耳机 折叠式重低音 运动 玫瑰金', 'http://productdata.isdfmk.xyz/135638619666091357760161_x.jpg', '猪年限量版 90周年 ', '1', 873, NULL, 0, 2, 0);
INSERT INTO `orders` VALUES (3375, 10027, '1590918740609100016', '【假一赔十】beats solo3wireless 蓝牙耳机头戴式 米奇 游戏手机耳机 折叠式重低音 运动 玫瑰金', 'http://productdata.isdfmk.xyz/135638619666091357760161_x.jpg', '学院蓝 ', '1', 773, NULL, 0, 2, 0);
INSERT INTO `orders` VALUES (3376, 10027, '1590918740609100016', '【假一赔十】beats solo3wireless 蓝牙耳机头戴式 米奇 游戏手机耳机 折叠式重低音 运动 玫瑰金', 'http://productdata.isdfmk.xyz/135638619666091357760161_x.jpg', '学院红 ', '1', 773, NULL, 0, 2, 0);
INSERT INTO `orders` VALUES (3377, 10027, '1590918740609100016', '【假一赔十】beats solo3wireless 蓝牙耳机头戴式 米奇 游戏手机耳机 折叠式重低音 运动 玫瑰金', 'http://productdata.isdfmk.xyz/135638619666091357760161_x.jpg', '磨砂黑 ', '1', 773, NULL, 0, 2, 0);
INSERT INTO `orders` VALUES (3378, 10025, '1590918740609100016', '【良品铺子】综合果仁525g 每日坚果组合混合干果礼盒零食大礼包健康零食', 'http://productdata.isdfmk.xyz/FlnxmuE-gh4YKIj4txsLfg.jpg', '525g(21天装) 标准黑有刻  ', '1', 74.9, '575.5g', 0, 2, 0);
INSERT INTO `orders` VALUES (3379, 10025, '1590918740609100016', '【良品铺子】综合果仁525g 每日坚果组合混合干果礼盒零食大礼包健康零食', 'http://productdata.isdfmk.xyz/FlnxmuE-gh4YKIj4txsLfg.jpg', '750g(30天装) 44毫米 ', '1', 59.9, '575.5g', 0, 2, 0);
INSERT INTO `orders` VALUES (3380, 10027, '1590918792407100016', '【假一赔十】beats solo3wireless 蓝牙耳机头戴式 米奇 游戏手机耳机 折叠式重低音 运动 玫瑰金', 'http://productdata.isdfmk.xyz/135638619666091357760161_x.jpg', '黑红十周年纪念版  ', '1', 873, NULL, 0, 2, 0);
INSERT INTO `orders` VALUES (3381, 10027, '1590918792407100016', '【假一赔十】beats solo3wireless 蓝牙耳机头戴式 米奇 游戏手机耳机 折叠式重低音 运动 玫瑰金', 'http://productdata.isdfmk.xyz/135638619666091357760161_x.jpg', '猪年限量版 90周年 ', '1', 873, NULL, 0, 2, 0);
INSERT INTO `orders` VALUES (3382, 10027, '1590918792407100016', '【假一赔十】beats solo3wireless 蓝牙耳机头戴式 米奇 游戏手机耳机 折叠式重低音 运动 玫瑰金', 'http://productdata.isdfmk.xyz/135638619666091357760161_x.jpg', '学院蓝 ', '1', 773, NULL, 0, 2, 0);
INSERT INTO `orders` VALUES (3383, 10027, '1590918792407100016', '【假一赔十】beats solo3wireless 蓝牙耳机头戴式 米奇 游戏手机耳机 折叠式重低音 运动 玫瑰金', 'http://productdata.isdfmk.xyz/135638619666091357760161_x.jpg', '学院红 ', '1', 773, NULL, 0, 2, 0);
INSERT INTO `orders` VALUES (3384, 10027, '1590918792407100016', '【假一赔十】beats solo3wireless 蓝牙耳机头戴式 米奇 游戏手机耳机 折叠式重低音 运动 玫瑰金', 'http://productdata.isdfmk.xyz/135638619666091357760161_x.jpg', '磨砂黑 ', '1', 773, NULL, 0, 2, 0);
INSERT INTO `orders` VALUES (3385, 10025, '1590918811413100016', '【良品铺子】综合果仁525g 每日坚果组合混合干果礼盒零食大礼包健康零食', 'http://productdata.isdfmk.xyz/FlnxmuE-gh4YKIj4txsLfg.jpg', '750g(30天装) 44毫米 ', '1', 59.9, '575.5g', 0, 2, 0);
INSERT INTO `orders` VALUES (3386, 10025, '1590918825532100016', '【良品铺子】综合果仁525g 每日坚果组合混合干果礼盒零食大礼包健康零食', 'http://productdata.isdfmk.xyz/FlnxmuE-gh4YKIj4txsLfg.jpg', '750g(30天装) 44毫米 ', '1', 59.9, '575.5g', 0, 2, 0);
INSERT INTO `orders` VALUES (3387, 10025, '1590918842170100016', '【良品铺子】综合果仁525g 每日坚果组合混合干果礼盒零食大礼包健康零食', 'http://productdata.isdfmk.xyz/FlnxmuE-gh4YKIj4txsLfg.jpg', '750g(30天装) 44毫米 ', '1', 59.9, '575.5g', 0, 2, 0);
INSERT INTO `orders` VALUES (3388, 10025, '1590919184200100016', '【良品铺子】综合果仁525g 每日坚果组合混合干果礼盒零食大礼包健康零食', 'http://productdata.isdfmk.xyz/FlnxmuE-gh4YKIj4txsLfg.jpg', '750g(30天装) 44毫米 ', '1', 59.9, '575.5g', 0, 2, 0);
INSERT INTO `orders` VALUES (3389, 10025, '1590919245687100016', '【良品铺子】综合果仁525g 每日坚果组合混合干果礼盒零食大礼包健康零食', 'http://productdata.isdfmk.xyz/FlnxmuE-gh4YKIj4txsLfg.jpg', '750g(30天装) 44毫米 ', '1', 59.9, '575.5g', 0, 2, 0);
INSERT INTO `orders` VALUES (3390, 10025, '1590919292508100016', '【良品铺子】综合果仁525g 每日坚果组合混合干果礼盒零食大礼包健康零食', 'http://productdata.isdfmk.xyz/FlnxmuE-gh4YKIj4txsLfg.jpg', '750g(30天装) 44毫米 ', '1', 59.9, '575.5g', 0, 2, 0);
INSERT INTO `orders` VALUES (3391, 10027, '1590919376700100016', '【假一赔十】beats solo3wireless 蓝牙耳机头戴式 米奇 游戏手机耳机 折叠式重低音 运动 玫瑰金', 'http://productdata.isdfmk.xyz/135638619666091357760161_x.jpg', '米奇老鼠版  ', '1', 773, NULL, 0, 2, 0);
INSERT INTO `orders` VALUES (3392, 10027, '1590919434457100016', '【假一赔十】beats solo3wireless 蓝牙耳机头戴式 米奇 游戏手机耳机 折叠式重低音 运动 玫瑰金', 'http://productdata.isdfmk.xyz/135638619666091357760161_x.jpg', '磨砂黑 ', '1', 773, NULL, 0, 2, 0);
INSERT INTO `orders` VALUES (3393, 10027, '1590919467718100016', '【假一赔十】beats solo3wireless 蓝牙耳机头戴式 米奇 游戏手机耳机 折叠式重低音 运动 玫瑰金', 'http://productdata.isdfmk.xyz/135638619666091357760161_x.jpg', '学院红 ', '1', 773, NULL, 0, 2, 0);
INSERT INTO `orders` VALUES (3394, 10027, '1590919485248100016', '【假一赔十】beats solo3wireless 蓝牙耳机头戴式 米奇 游戏手机耳机 折叠式重低音 运动 玫瑰金', 'http://productdata.isdfmk.xyz/135638619666091357760161_x.jpg', '磨砂黑 ', '1', 773, NULL, 0, 2, 0);
INSERT INTO `orders` VALUES (3395, 10025, '1590925984688100016', '【良品铺子】综合果仁525g 每日坚果组合混合干果礼盒零食大礼包健康零食', 'http://productdata.isdfmk.xyz/FlnxmuE-gh4YKIj4txsLfg.jpg', '750g(30天装) 44毫米 ', '1', 59.9, '575.5g', 0, 2, 0);
INSERT INTO `orders` VALUES (3396, 10025, '1590926019048100016', '【良品铺子】综合果仁525g 每日坚果组合混合干果礼盒零食大礼包健康零食', 'http://productdata.isdfmk.xyz/FlnxmuE-gh4YKIj4txsLfg.jpg', '750g(30天装) 44毫米 ', '1', 59.9, '575.5g', 0, 2, 0);
INSERT INTO `orders` VALUES (3397, 10027, '1590926071845100016', '【假一赔十】beats solo3wireless 蓝牙耳机头戴式 米奇 游戏手机耳机 折叠式重低音 运动 玫瑰金', 'http://productdata.isdfmk.xyz/135638619666091357760161_x.jpg', '磨砂黑 ', '1', 773, NULL, 0, 2, 0);
INSERT INTO `orders` VALUES (3398, 10027, '1590926117771100016', '【假一赔十】beats solo3wireless 蓝牙耳机头戴式 米奇 游戏手机耳机 折叠式重低音 运动 玫瑰金', 'http://productdata.isdfmk.xyz/135638619666091357760161_x.jpg', '学院红 ', '1', 773, NULL, 0, 2, 0);
INSERT INTO `orders` VALUES (3399, 10027, '1590926117771100016', '【假一赔十】beats solo3wireless 蓝牙耳机头戴式 米奇 游戏手机耳机 折叠式重低音 运动 玫瑰金', 'http://productdata.isdfmk.xyz/135638619666091357760161_x.jpg', '米奇老鼠版  ', '1', 773, NULL, 0, 2, 0);
INSERT INTO `orders` VALUES (3400, 10025, '1590926117771100016', '【良品铺子】综合果仁525g 每日坚果组合混合干果礼盒零食大礼包健康零食', 'http://productdata.isdfmk.xyz/FlnxmuE-gh4YKIj4txsLfg.jpg', '750g(30天装) 44毫米 ', '1', 59.9, '575.5g', 0, 2, 0);
INSERT INTO `orders` VALUES (3401, 10027, '1590926161372100016', '【假一赔十】beats solo3wireless 蓝牙耳机头戴式 米奇 游戏手机耳机 折叠式重低音 运动 玫瑰金', 'http://productdata.isdfmk.xyz/135638619666091357760161_x.jpg', '磨砂黑 ', '1', 773, NULL, 0, 2, 0);
INSERT INTO `orders` VALUES (3402, 10011, '1591103165390100001', 'Apple iPhone 11 Pro Max (A2220) 64GB 金色 移动联通电信4G手机 双卡双待 ', '\r\nhttp://productdata.isdfmk.xyz/04e04ec4954e07bd.jpg', '银色 128G+2G ', '1', 10398, '0.56kg', 0, 5, 0);
INSERT INTO `orders` VALUES (3403, 10013, '1591112727758100002', '华硕（ASUS）猛禽ROG-STRIX-GeForce RTX 2080 ', 'http://productdata.isdfmk.xyz/1f3f9fd0e759383f.jpg', '华硕PRIME X299-A主板+  ', '1', 11999, '2.08kg', 0, 2, 0);
INSERT INTO `orders` VALUES (3404, 10003, '1591112856284100003', '星农联合 智利帝王蟹5.5-5.0斤 熟冻大螃蟹 进口海鲜礼盒', 'http://productdata.isdfmk.xyz/212478163d84fcf0.jpg', '【超大款】帝王蟹礼盒4.5-4.0斤  ', '1', 888, '不计重', 0, 0, 0);
INSERT INTO `orders` VALUES (3405, 10008, '1591112908727100004', '万代（BANDAI） Megahouse POP 海贼王 路飞9人 模型玩具（无售后！！！） 四档路飞\r\n', '\r\nhttp://productdata.isdfmk.xyz/5b90958cN736d78c4.jpg', '', '1', 3500, '100kg', 0, 2, 0);
INSERT INTO `orders` VALUES (3406, 10029, '1591146353330100001', '美国正品代购阿迪达斯adidas YEEZY BOOST 350 V2 侃爷冰蓝椰子鞋新款男跑步鞋', 'http://productdata.isdfmk.xyz/334355456168161240400082_x.jpg', 'BY9611黑灰色 标准46.5/US12  ', '6', 2920.01, '2.5kg', 0, 2, 0);
INSERT INTO `orders` VALUES (3407, 10029, '1591146353330100001', '美国正品代购阿迪达斯adidas YEEZY BOOST 350 V2 侃爷冰蓝椰子鞋新款男跑步鞋', 'http://productdata.isdfmk.xyz/334355456168161240400082_x.jpg', 'BB1826灰橙色  标准46.5/US12  ', '7', 2920.01, '2.5kg', 0, 2, 0);
INSERT INTO `orders` VALUES (3408, 10025, '1591191744705100002', '【良品铺子】综合果仁525g 每日坚果组合混合干果礼盒零食大礼包健康零食', 'http://productdata.isdfmk.xyz/FlnxmuE-gh4YKIj4txsLfg.jpg', '525g(21天装) 标准黑有刻  ', '1', 74.9, '575.5g', 0, 0, 0);
INSERT INTO `orders` VALUES (3409, 10025, '1591191744705100002', '【良品铺子】综合果仁525g 每日坚果组合混合干果礼盒零食大礼包健康零食', 'http://productdata.isdfmk.xyz/FlnxmuE-gh4YKIj4txsLfg.jpg', '750g(30天装) 44毫米 ', '1', 59.9, '575.5g', 0, 0, 0);
INSERT INTO `orders` VALUES (3410, 10027, '1591262782959100001', '【假一赔十】beats solo3wireless 蓝牙耳机头戴式 米奇 游戏手机耳机 折叠式重低音 运动 玫瑰金', 'http://productdata.isdfmk.xyz/135638619666091357760161_x.jpg', '磨砂黑 ', '1', 773, NULL, 0, 2, 0);
INSERT INTO `orders` VALUES (3411, 10003, '1591697678854100001', '星农联合 智利帝王蟹5.5-5.0斤 熟冻大螃蟹 进口海鲜礼盒', 'http://productdata.isdfmk.xyz/212478163d84fcf0.jpg', '【超大款】帝王蟹礼盒4.5-4.0斤  ', '1', 888, '不计重', 0, 5, 0);
INSERT INTO `orders` VALUES (3412, 10027, '1591697873586100002', '【假一赔十】beats solo3wireless 蓝牙耳机头戴式 米奇 游戏手机耳机 折叠式重低音 运动 玫瑰金', 'http://productdata.isdfmk.xyz/135638619666091357760161_x.jpg', '磨砂黑 ', '1', 773, NULL, 0, 2, 0);
INSERT INTO `orders` VALUES (3413, 10009, '1591698004323100003', '外星人Alienware area-51m 17.3英寸游戏笔记本电脑(i9-9900K 32G 512GX2 1T RTX2080 8G 144Hz 低蓝光屏)黑\r\n', 'http://productdata.isdfmk.xyz/0fb1612d25f44013.jpg', '[A51M]9代i9 2080 低蓝光屏 黑  ', '1', 47699, '5.6kg', 0, 2, 0);
INSERT INTO `orders` VALUES (3414, 10027, '1591699418536100004', '【假一赔十】beats solo3wireless 蓝牙耳机头戴式 米奇 游戏手机耳机 折叠式重低音 运动 玫瑰金', 'http://productdata.isdfmk.xyz/135638619666091357760161_x.jpg', '磨砂黑 ', '1', 773, NULL, 0, 0, 0);
INSERT INTO `orders` VALUES (3415, 10005, '1591699783753100005', 'Apple iPad Pro 12.9英寸平板电脑 2018款(64G WLAN版/全面屏/A12X/FaceID MTEL2CH/A)深空灰\r\n', 'http://productdata.isdfmk.xyz/7a77ad4e3100e885.jpg', 'WLAN版512G ', '1', 7890, '2.8kg', 0, 2, 0);
INSERT INTO `orders` VALUES (3416, 10005, '1592198179386100001', 'Apple iPad Pro 12.9英寸平板电脑 2018款(64G WLAN版/全面屏/A12X/FaceID MTEL2CH/A)深空灰\r\n', 'http://productdata.isdfmk.xyz/7a77ad4e3100e885.jpg', 'Cellular版1TB ', '1', 7490, '2.8kg', 0, 2, 0);
INSERT INTO `orders` VALUES (3417, 10005, '1592198179386100001', 'Apple iPad Pro 12.9英寸平板电脑 2018款(64G WLAN版/全面屏/A12X/FaceID MTEL2CH/A)深空灰\r\n', 'http://productdata.isdfmk.xyz/7a77ad4e3100e885.jpg', 'WLAN版512G ', '1', 7890, '2.8kg', 0, 2, 0);
INSERT INTO `orders` VALUES (3418, 10014, '1592201143597100002', '骨伽（COUGAR） 电脑主机箱 台式机中塔式侧透征服者游戏定制水冷机箱 黑色\r\n', 'http://productdata.isdfmk.xyz/5b4d4cc8N0bf9c476.jpg', '黑色 ', '1', 2898, '2.8kg', 0, 2, 0);
INSERT INTO `orders` VALUES (3419, 10015, '1592203784754100003', '三只松鼠芒果干 蜜饯果干芒果片休闲零食办公室小吃果脯水果干116g/袋', 'http://productdata.isdfmk.xyz/3531d2420f91d48177112641833bc7aa_2_3_photo.jpg', '奶油味 ', '3', 20, '0.15kg', 0, 0, 0);
INSERT INTO `orders` VALUES (3420, 10015, '1592204359482100004', '三只松鼠芒果干 蜜饯果干芒果片休闲零食办公室小吃果脯水果干116g/袋', 'http://productdata.isdfmk.xyz/3531d2420f91d48177112641833bc7aa_2_3_photo.jpg', '奶茶味 ', '1', 20, '0.15kg', 0, 0, 0);
INSERT INTO `orders` VALUES (3421, 10006, '1592713282803100001', ' 索尼（SONY）WF-1000XM3 真无线蓝牙降噪耳机 智能降噪 触控面板 苹果/安卓手机适用 黑色\r\n', 'http://productdata.isdfmk.xyz/2ca45e2fd9758794.jpg', '黑色 ', '1', 1499, '0.6kg', 0, 0, 0);
INSERT INTO `orders` VALUES (3422, 10011, '1592713565109100002', 'Apple iPhone 11 Pro Max (A2220) 64GB 金色 移动联通电信4G手机 双卡双待 ', '\r\nhttp://productdata.isdfmk.xyz/04e04ec4954e07bd.jpg', '银色 128G+2G ', '1', 10398, '0.56kg', 0, 0, 0);
INSERT INTO `orders` VALUES (3423, 10011, '1592713565109100002', 'Apple iPhone 11 Pro Max (A2220) 64GB 金色 移动联通电信4G手机 双卡双待 ', '\r\nhttp://productdata.isdfmk.xyz/04e04ec4954e07bd.jpg', '暗夜绿色 128G+2G ', '35', 10398, '0.56kg', 0, 0, 0);
INSERT INTO `orders` VALUES (3424, 10006, '1592720296500100003', ' 索尼（SONY）WF-1000XM3 真无线蓝牙降噪耳机 智能降噪 触控面板 苹果/安卓手机适用 黑色\r\n', 'http://productdata.isdfmk.xyz/2ca45e2fd9758794.jpg', '黑色 ', '1', 1499, '0.6kg', 0, 0, 0);
INSERT INTO `orders` VALUES (3425, 10016, '1592720376237100004', '华为 HUAWEI Mate 30 Pro 麒麟990旗舰芯片OLED环幕屏双4000万徕卡电影四摄手机', '\r\nhttp://productdata.isdfmk.xyz/971ec333c8ef1de2.jpg', '星河银 ', '1', 5399, '0.54kg', 0, 2, 0);
INSERT INTO `orders` VALUES (3426, 10013, '1592720450436100005', '华硕（ASUS）猛禽ROG-STRIX-GeForce RTX 2080', 'http://productdata.isdfmk.xyz/1f3f9fd0e759383f.jpg', '华硕PRIME X299-A主板+  ', '1', 11999, '2.08kg', 0, 0, 0);
INSERT INTO `orders` VALUES (3427, 10013, '1592720594896100006', '华硕（ASUS）猛禽ROG-STRIX-GeForce RTX 2080', 'http://productdata.isdfmk.xyz/1f3f9fd0e759383f.jpg', '华硕PRIME X299-A主板+  ', '1', 11999, '2.08kg', 0, 0, 0);
INSERT INTO `orders` VALUES (3428, 10009, '1592730170372100007', '外星人Alienware area-51m 17.3英寸游戏笔记本电脑(i9-9900K 32G 512GX2 1T RTX2080 8G 144Hz 低蓝光屏)黑\r\n', 'http://productdata.isdfmk.xyz/0fb1612d25f44013.jpg', '[A51M]9代i9 2080 低蓝光屏 黑  ', '1', 47699, '5.6kg', 0, 0, 0);
INSERT INTO `orders` VALUES (3429, 10013, '1592730540160100008', '华硕（ASUS）猛禽ROG-STRIX-GeForce RTX 2080', 'http://productdata.isdfmk.xyz/1f3f9fd0e759383f.jpg', '华硕PRIME X299-A主板+  ', '1', 11999, '2.08kg', 0, 0, 0);
INSERT INTO `orders` VALUES (3430, 10005, '1592730653251100009', 'Apple iPad Pro 12.9英寸平板电脑 2018款(64G WLAN版/全面屏/A12X/FaceID MTEL2CH/A)深空灰\r\n', 'http://productdata.isdfmk.xyz/7a77ad4e3100e885.jpg', 'WLAN版512G ', '1', 7890, '2.8kg', 0, 0, 0);
INSERT INTO `orders` VALUES (3431, 10013, '1592732849879100010', '华硕（ASUS）猛禽ROG-STRIX-GeForce RTX 2080', 'http://productdata.isdfmk.xyz/1f3f9fd0e759383f.jpg', '华硕PRIME X299-A主板+  ', '1', 11999, '2.08kg', 0, 0, 0);
INSERT INTO `orders` VALUES (3432, 10005, '1592733331815100011', 'Apple iPad Pro 12.9英寸平板电脑 2018款(64G WLAN版/全面屏/A12X/FaceID MTEL2CH/A)深空灰\r\n', 'http://productdata.isdfmk.xyz/7a77ad4e3100e885.jpg', 'Cellular版1TB ', '1', 7490, '2.8kg', 0, 2, 0);
INSERT INTO `orders` VALUES (3433, 10016, '1592733438424100012', '华为 HUAWEI Mate 30 Pro 麒麟990旗舰芯片OLED环幕屏双4000万徕卡电影四摄手机', '\r\nhttp://productdata.isdfmk.xyz/971ec333c8ef1de2.jpg', '星河银 ', '1', 5399, '0.54kg', 0, 0, 0);
INSERT INTO `orders` VALUES (3434, 10011, '1592789666162100001', 'Apple iPhone 11 Pro Max (A2220) 64GB 金色 移动联通电信4G手机 双卡双待 ', '\r\nhttp://productdata.isdfmk.xyz/04e04ec4954e07bd.jpg', '银色 64G+2G ', '1', 9999, '0.56kg', 0, 0, 0);
INSERT INTO `orders` VALUES (3435, 10005, '1592789907532100002', 'Apple iPad Pro 12.9英寸平板电脑 2018款(64G WLAN版/全面屏/A12X/FaceID MTEL2CH/A)深空灰\r\n', 'http://productdata.isdfmk.xyz/7a77ad4e3100e885.jpg', 'WLAN版512G ', '1', 7890, '2.8kg', 0, 0, 0);
INSERT INTO `orders` VALUES (3436, 10010, '1592790083822100003', '阿玛尼（ Emporio Armani）满天星手表 女新款玫瑰金钢制表带镶钻石英轻奢女士腕表礼物 AR11244 ', '\r\nhttp://productdata.isdfmk.xyz/8c0b0a13e48adce3.jpg', '钢质表带AR11129 ', '1', 3496, '\r\n0.485kg', 0, 2, 0);
INSERT INTO `orders` VALUES (3437, 10009, '1592790154608100004', '外星人Alienware area-51m 17.3英寸游戏笔记本电脑(i9-9900K 32G 512GX2 1T RTX2080 8G 144Hz 低蓝光屏)黑\r\n', 'http://productdata.isdfmk.xyz/0fb1612d25f44013.jpg', '[A51M]9代i9 2080 低蓝光屏 黑  ', '1', 47699, '5.6kg', 0, 2, 0);
INSERT INTO `orders` VALUES (3438, 10006, '1592790303315100004', ' 索尼（SONY）WF-1000XM3 真无线蓝牙降噪耳机 智能降噪 触控面板 苹果/安卓手机适用 黑色\r\n', 'http://productdata.isdfmk.xyz/2ca45e2fd9758794.jpg', '黑色 ', '1', 1499, '0.6kg', 0, 2, 0);
INSERT INTO `orders` VALUES (3439, 10006, '1592790449779100004', ' 索尼（SONY）WF-1000XM3 真无线蓝牙降噪耳机 智能降噪 触控面板 苹果/安卓手机适用 黑色\r\n', 'http://productdata.isdfmk.xyz/2ca45e2fd9758794.jpg', '黑色 ', '1', 1499, '0.6kg', 0, 2, 0);
INSERT INTO `orders` VALUES (3440, 10013, '1592790788151100005', '华硕（ASUS）猛禽ROG-STRIX-GeForce RTX 2080', 'http://productdata.isdfmk.xyz/1f3f9fd0e759383f.jpg', '华硕PRIME X299-A主板+  ', '1', 11999, '2.08kg', 0, 5, 0);
INSERT INTO `orders` VALUES (3441, 10006, '1592791713279100006', ' 索尼（SONY）WF-1000XM3 真无线蓝牙降噪耳机 智能降噪 触控面板 苹果/安卓手机适用 黑色\r\n', 'http://productdata.isdfmk.xyz/2ca45e2fd9758794.jpg', '黑色 ', '1', 1499, '0.6kg', 0, 2, 0);
INSERT INTO `orders` VALUES (3442, 10005, '1592795816465100006', 'Apple iPad Pro 12.9英寸平板电脑 2018款(64G WLAN版/全面屏/A12X/FaceID MTEL2CH/A)深空灰\r\n', 'http://productdata.isdfmk.xyz/7a77ad4e3100e885.jpg', 'WLAN版512G ', '1', 7890, '2.8kg', 0, 2, 0);
INSERT INTO `orders` VALUES (3443, 10029, '1592821932895100006', '美国正品代购阿迪达斯adidas YEEZY BOOST 350 V2 侃爷冰蓝椰子鞋新款男跑步鞋', 'http://productdata.isdfmk.xyz/334355456168161240400082_x.jpg', 'BB1826灰橙色  标准46.5/US12  ', '1', 2920.01, '2.5kg', 0, 0, 0);
INSERT INTO `orders` VALUES (3444, 10006, '1592822082163100007', ' 索尼（SONY）WF-1000XM3 真无线蓝牙降噪耳机 智能降噪 触控面板 苹果/安卓手机适用 黑色\r\n', 'http://productdata.isdfmk.xyz/2ca45e2fd9758794.jpg', '黑色 ', '1', 1499, '0.6kg', 0, 2, 0);
INSERT INTO `orders` VALUES (3445, 10006, '1592822092266100008', ' 索尼（SONY）WF-1000XM3 真无线蓝牙降噪耳机 智能降噪 触控面板 苹果/安卓手机适用 黑色\r\n', 'http://productdata.isdfmk.xyz/2ca45e2fd9758794.jpg', '黑色 ', '1', 1499, '0.6kg', 0, 0, 0);
INSERT INTO `orders` VALUES (3446, 10008, '1592822136658100009', '万代（BANDAI） Megahouse POP 海贼王 路飞9人 模型玩具（无售后！！！） 四档路飞\r\n', '\r\nhttp://productdata.isdfmk.xyz/5b90958cN736d78c4.jpg', '', '1', 3500, '100kg', 0, 2, 0);
INSERT INTO `orders` VALUES (3447, 10007, '1592822162479100010', 'Hot Toys 复仇者联盟3 无限战争 HOTTOYS 钢铁侠 模型玩具礼物 MK7 普通版', 'http://productdata.isdfmk.xyz/9bf639975363fbb0.jpg', '', '1', 1569, '5kg', 0, 2, 0);
INSERT INTO `orders` VALUES (3448, 10006, '1592822206628100011', ' 索尼（SONY）WF-1000XM3 真无线蓝牙降噪耳机 智能降噪 触控面板 苹果/安卓手机适用 黑色\r\n', 'http://productdata.isdfmk.xyz/2ca45e2fd9758794.jpg', '黑色 ', '1', 1499, '0.6kg', 0, 2, 0);
INSERT INTO `orders` VALUES (3449, 10024, '1592822220149100012', 'HHKB Professional BT 蓝牙版黑无刻静电容键盘 程序员码农专用便携迷你键盘 编程适用', 'http://productdata.isdfmk.xyz/AD8JQ6Q0jfeySzdxAVglqw.jpg', '标准白有刻  ', '1', 2188, NULL, 0, 2, 0);
INSERT INTO `orders` VALUES (3450, 10013, '1592822337263100013', '华硕（ASUS）猛禽ROG-STRIX-GeForce RTX 2080', 'http://productdata.isdfmk.xyz/1f3f9fd0e759383f.jpg', '华硕PRIME X299-A主板+  ', '1', 11999, '2.08kg', 0, 2, 0);
INSERT INTO `orders` VALUES (3451, 10026, '1592822486861100014', '2019新款翻领磨破短款女士休闲牛仔外套', 'http://productdata.isdfmk.xyz/a1.jpg', 'XS ', '1', 799, NULL, 0, 2, 0);
INSERT INTO `orders` VALUES (3452, 10024, '1592830150961100015', 'HHKB Professional BT 蓝牙版黑无刻静电容键盘 程序员码农专用便携迷你键盘 编程适用', 'http://productdata.isdfmk.xyz/AD8JQ6Q0jfeySzdxAVglqw.jpg', '标准白有刻  ', '1', 2188, NULL, 0, 2, 0);
INSERT INTO `orders` VALUES (3453, 10008, '1592832215019100016', '万代（BANDAI） Megahouse POP 海贼王 路飞9人 模型玩具（无售后！！！） 四档路飞\r\n', '\r\nhttp://productdata.isdfmk.xyz/5b90958cN736d78c4.jpg', '', '1', 3500, '100kg', 0, 0, 0);
INSERT INTO `orders` VALUES (3454, 10006, '1592868925313100017', ' 索尼（SONY）WF-1000XM3 真无线蓝牙降噪耳机 智能降噪 触控面板 苹果/安卓手机适用 黑色\r\n', 'http://productdata.isdfmk.xyz/2ca45e2fd9758794.jpg', '黑色 ', '1', 1499, '0.6kg', 0, 2, 0);
INSERT INTO `orders` VALUES (3455, 10022, '1592869177091100018', 'Classic | 40mm Canterbury', '\r\nhttp://productdata.isdfmk.xyz/adadas3e.jpg', '多彩尼龙白盘 ', '1', 1289, NULL, 0, 2, 0);

-- ----------------------------
-- Table structure for productAttribute
-- ----------------------------
DROP TABLE IF EXISTS `productAttribute`;
CREATE TABLE `productAttribute`  (
  `attributeId` int(11) NOT NULL AUTO_INCREMENT,
  `productId` int(11) NULL DEFAULT NULL,
  `attributeContent` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `attributeType` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`attributeId`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 623 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of productAttribute
-- ----------------------------
INSERT INTO `productAttribute` VALUES (1, 10001, '红色', '11');
INSERT INTO `productAttribute` VALUES (2, 10001, '黑色', '11');
INSERT INTO `productAttribute` VALUES (3, 10001, '标准版', '16');
INSERT INTO `productAttribute` VALUES (4, 10001, '豪华版', '16');
INSERT INTO `productAttribute` VALUES (5, 10001, '128G+2G', '13 ');
INSERT INTO `productAttribute` VALUES (6, 10001, '256G+8G\r\n', '13 ');
INSERT INTO `productAttribute` VALUES (7, 10002, '白色', '11');
INSERT INTO `productAttribute` VALUES (8, 10002, '优惠12一', '12');
INSERT INTO `productAttribute` VALUES (9, 10002, '优惠12二', '12');
INSERT INTO `productAttribute` VALUES (10, 10003, '【超大款】帝王蟹礼盒4.5-4.0斤 ', '15');
INSERT INTO `productAttribute` VALUES (11, 10003, '【大蟹款】帝王蟹礼盒4.0-3.6斤 ', '15');
INSERT INTO `productAttribute` VALUES (12, 10003, '【尊享款】帝王蟹礼盒5.5-5.0斤\r\n', '15');
INSERT INTO `productAttribute` VALUES (13, 10003, '【尝鲜款】帝王蟹礼盒2.8-2.4斤', '15');
INSERT INTO `productAttribute` VALUES (16, 10004, '星际蓝', '11');
INSERT INTO `productAttribute` VALUES (17, 10004, '华为mate Xs星际蓝(新款)', '11');
INSERT INTO `productAttribute` VALUES (18, 10005, 'WLAN版512G', '16');
INSERT INTO `productAttribute` VALUES (19, 10005, ' WLAN版1TB', '16');
INSERT INTO `productAttribute` VALUES (20, 10005, 'Cellular版64G ', '16');
INSERT INTO `productAttribute` VALUES (21, 10005, 'Cellular版256G', '16');
INSERT INTO `productAttribute` VALUES (22, 10005, 'Cellular版512G ', '16');
INSERT INTO `productAttribute` VALUES (23, 10005, 'Cellular版1TB', '16');
INSERT INTO `productAttribute` VALUES (24, 10006, '黑色', '11');
INSERT INTO `productAttribute` VALUES (25, 10006, '铂金银', '11');
INSERT INTO `productAttribute` VALUES (26, 10009, '[A51M]9代i9 2080 低蓝光屏 黑 ', '11');
INSERT INTO `productAttribute` VALUES (27, 10009, '[A51M]9代i9 512GX2+1T 2080 144', '11');
INSERT INTO `productAttribute` VALUES (28, 10009, '[A51M]9代i7 512GX2 2070 144 白', '11');
INSERT INTO `productAttribute` VALUES (29, 10009, ' [A51M]9代i7 1TSSD 2060OC 144黑', '11');
INSERT INTO `productAttribute` VALUES (30, 10009, '[A51M]9代i7 512GX2 2070 144 黑', '11');
INSERT INTO `productAttribute` VALUES (31, 10009, ' [鼠标耳机]+i7 512GX2 20700C 白', '11');
INSERT INTO `productAttribute` VALUES (32, 10009, '[鼠标耳机]+i7 512GX2 20700C 黑 ', '11');
INSERT INTO `productAttribute` VALUES (33, 10009, '[耳机]+9代i7 512GX2 20700C 白', '11');
INSERT INTO `productAttribute` VALUES (34, 10009, '[耳机]+9代i7 512GX2 20700C 黑', '11');
INSERT INTO `productAttribute` VALUES (35, 10010, '圣11', '11');
INSERT INTO `productAttribute` VALUES (36, 10010, '钢质表带AR1957', '11');
INSERT INTO `productAttribute` VALUES (37, 10010, '璀璨满天星AR1926', '11');
INSERT INTO `productAttribute` VALUES (38, 10010, '闪耀满天星AR1925', '11');
INSERT INTO `productAttribute` VALUES (39, 10010, '钢质表带AR11129', '11');
INSERT INTO `productAttribute` VALUES (40, 10010, '玫瑰金满天星AR11244', '11');
INSERT INTO `productAttribute` VALUES (41, 10011, '银色', '11');
INSERT INTO `productAttribute` VALUES (42, 10011, '暗夜绿色', '11');
INSERT INTO `productAttribute` VALUES (43, 10011, '128G+2G', '16');
INSERT INTO `productAttribute` VALUES (44, 10011, '64G+2G', '16');
INSERT INTO `productAttribute` VALUES (45, 10012, '小清新蓝', '11');
INSERT INTO `productAttribute` VALUES (46, 10012, 'Pro13|标压R5 16G 512G QHD', '16');
INSERT INTO `productAttribute` VALUES (47, 10012, '小新Air14|R5 12G 512G', '16');
INSERT INTO `productAttribute` VALUES (48, 10012, '小新14大固态|R5 8G 1T 128G', '16');
INSERT INTO `productAttribute` VALUES (49, 10013, '华硕PRIME X299-A主板+ ', '13 ');
INSERT INTO `productAttribute` VALUES (50, 10013, 'PRIME X299-DELUXE II 主板+', '13 ');
INSERT INTO `productAttribute` VALUES (51, 10013, 'RAMPAGE VI EXTREME OMEGA+ ', '13 ');
INSERT INTO `productAttribute` VALUES (52, 10013, 'TUF X299 MARK 2电竞主板+', '13 ');
INSERT INTO `productAttribute` VALUES (53, 10014, '黑色', '11');
INSERT INTO `productAttribute` VALUES (54, 10014, '黑色+骨伽LLC750全模组电源', '11');
INSERT INTO `productAttribute` VALUES (55, 10015, '奶茶味', '14');
INSERT INTO `productAttribute` VALUES (56, 10015, '茉莉味', '14');
INSERT INTO `productAttribute` VALUES (57, 10015, '香蕉味', '14');
INSERT INTO `productAttribute` VALUES (58, 10015, '苹果味', '14');
INSERT INTO `productAttribute` VALUES (59, 10015, '奶油味', '14');
INSERT INTO `productAttribute` VALUES (60, 10016, '星河银', '11');
INSERT INTO `productAttribute` VALUES (61, 10016, '亮黑色', '11');
INSERT INTO `productAttribute` VALUES (62, 10016, '翡冷翠', '11');
INSERT INTO `productAttribute` VALUES (63, 10016, '罗兰紫', '11');
INSERT INTO `productAttribute` VALUES (64, 10017, '黑色', '11');
INSERT INTO `productAttribute` VALUES (65, 10017, '白色', '11');
INSERT INTO `productAttribute` VALUES (66, 10017, '粉砂色', '11');
INSERT INTO `productAttribute` VALUES (67, 10017, 'GPS版', '16');
INSERT INTO `productAttribute` VALUES (68, 10017, ' 蜂窝版', '16');
INSERT INTO `productAttribute` VALUES (69, 10017, '蜂窝版AC+', '16');
INSERT INTO `productAttribute` VALUES (70, 10017, '40毫米', '13 ');
INSERT INTO `productAttribute` VALUES (71, 10017, '44毫米', '13 ');
INSERT INTO `productAttribute` VALUES (72, 10018, '028#滋润珊瑚红', '11');
INSERT INTO `productAttribute` VALUES (73, 10018, '999#滋润传奇正红', '11');
INSERT INTO `productAttribute` VALUES (74, 10018, '080#滋润微笑红', '11');
INSERT INTO `productAttribute` VALUES (75, 10018, '888#哑光开运红', '11');
INSERT INTO `productAttribute` VALUES (76, 10018, '772#哑光豆沙红', '11');
INSERT INTO `productAttribute` VALUES (77, 10018, '771#哑光树玫红', '11');
INSERT INTO `productAttribute` VALUES (78, 10018, '[限量版星星5支套装礼盒]', '11');
INSERT INTO `productAttribute` VALUES (79, 10018, '[情人节星星限量版五只装套盒]', '11');
INSERT INTO `productAttribute` VALUES (80, 10018, '挚爱红管999#传奇正红[赠专柜礼盒]', '11');
INSERT INTO `productAttribute` VALUES (81, 10018, '[红弯心动6支套装] [赠视频玫瑰礼盒 ]', '11');
INSERT INTO `productAttribute` VALUES (82, 10018, '[限量版挚爱红管烟花5支装套盒]', '11');
INSERT INTO `productAttribute` VALUES (83, 10018, '999+ 520+花漾甜心100ML [口红香水套装]', '11');
INSERT INTO `productAttribute` VALUES (84, 10021, '官方标配', '12');
INSERT INTO `productAttribute` VALUES (85, 10021, '100寸黑栅硬屏12', '12');
INSERT INTO `productAttribute` VALUES (86, 10021, '100菲涅尔硬屏12', '12');
INSERT INTO `productAttribute` VALUES (87, 10022, '多彩尼龙白盘', '11');
INSERT INTO `productAttribute` VALUES (88, 10022, '粉色尼龙白盘', '11');
INSERT INTO `productAttribute` VALUES (89, 10022, '黑色尼龙黑盘', '11');
INSERT INTO `productAttribute` VALUES (90, 10022, '黑色尼龙白盘', '11');
INSERT INTO `productAttribute` VALUES (91, 10022, '蓝红尼龙白盘', '11');
INSERT INTO `productAttribute` VALUES (92, 10022, '蓝粉尼龙白盘', '11');
INSERT INTO `productAttribute` VALUES (93, 10023, '棕黄色锈色', '11');
INSERT INTO `productAttribute` VALUES (94, 10023, '粉色', '11');
INSERT INTO `productAttribute` VALUES (95, 10023, '黄褐色', '11');
INSERT INTO `productAttribute` VALUES (96, 10023, '均码', '10');
INSERT INTO `productAttribute` VALUES (97, 10024, '标准白有刻 ', '16');
INSERT INTO `productAttribute` VALUES (98, 10024, '标准白无刻', '16');
INSERT INTO `productAttribute` VALUES (99, 10024, '标准黑有刻 ', '16');
INSERT INTO `productAttribute` VALUES (100, 10024, '标准黑无刻', '16');
INSERT INTO `productAttribute` VALUES (101, 10024, '蓝牙白有刻 ', '16');
INSERT INTO `productAttribute` VALUES (102, 10024, '蓝牙白无刻 ', '16');
INSERT INTO `productAttribute` VALUES (103, 10024, '蓝牙黑有刻 ', '16');
INSERT INTO `productAttribute` VALUES (104, 10024, '蓝牙黑无刻', '16');
INSERT INTO `productAttribute` VALUES (105, 10024, '静音白有刻 ', '16');
INSERT INTO `productAttribute` VALUES (106, 10024, '静音白无刻', '16');
INSERT INTO `productAttribute` VALUES (107, 10025, '750g(30天装)', '12');
INSERT INTO `productAttribute` VALUES (108, 10025, '525g(21天装)', '12');
INSERT INTO `productAttribute` VALUES (109, 10026, 'XS', '10');
INSERT INTO `productAttribute` VALUES (110, 10026, 'S', '10');
INSERT INTO `productAttribute` VALUES (111, 10026, 'M', '10');
INSERT INTO `productAttribute` VALUES (112, 10026, 'L', '10');
INSERT INTO `productAttribute` VALUES (113, 10027, '磨砂黑', '11');
INSERT INTO `productAttribute` VALUES (114, 10027, ' POP水蓝色', '11');
INSERT INTO `productAttribute` VALUES (115, 10027, ' POP赘蓝色', '11');
INSERT INTO `productAttribute` VALUES (116, 10027, 'POP红色', '11');
INSERT INTO `productAttribute` VALUES (117, 10027, ' POP紫色', '11');
INSERT INTO `productAttribute` VALUES (118, 10027, ' 丝锻金', '11');
INSERT INTO `productAttribute` VALUES (119, 10027, '丝锻银 ', '11');
INSERT INTO `productAttribute` VALUES (120, 10027, '炫黑色', '11');
INSERT INTO `productAttribute` VALUES (121, 10027, '炫白色 ', '11');
INSERT INTO `productAttribute` VALUES (122, 10027, '金色 ', '11');
INSERT INTO `productAttribute` VALUES (123, 10027, '玫瑰金 ', '11');
INSERT INTO `productAttribute` VALUES (124, 10027, '银色 ', '11');
INSERT INTO `productAttribute` VALUES (125, 10027, '红色', '11');
INSERT INTO `productAttribute` VALUES (126, 10027, '黑红十周年纪念版 ', '11');
INSERT INTO `productAttribute` VALUES (127, 10027, '猪年限量版 90周年', '11');
INSERT INTO `productAttribute` VALUES (128, 10027, '米奇老鼠版 ', '11');
INSERT INTO `productAttribute` VALUES (129, 10027, '学院白 ', '11');
INSERT INTO `productAttribute` VALUES (130, 10027, '学院蓝', '11');
INSERT INTO `productAttribute` VALUES (131, 10027, '学院红', '11');
INSERT INTO `productAttribute` VALUES (132, 10027, ' 紫色', '11');
INSERT INTO `productAttribute` VALUES (133, 10028, 'Redmi 小爱音箱Play ', '11');
INSERT INTO `productAttribute` VALUES (134, 10028, '【小爱触屏音箱-白色】', '11');
INSERT INTO `productAttribute` VALUES (135, 10028, '【小爱触屏音箱-红色】 ', '11');
INSERT INTO `productAttribute` VALUES (136, 10028, '小爱音箱万能遥控版 ', '16');
INSERT INTO `productAttribute` VALUES (137, 10028, '小爱音箱play版', '16');
INSERT INTO `productAttribute` VALUES (138, 10029, 'BB1826灰橙色 ', '11');
INSERT INTO `productAttribute` VALUES (139, 10029, 'BY9611黑灰色', '11');
INSERT INTO `productAttribute` VALUES (140, 10029, 'BY9612黑橙色 ', '11');
INSERT INTO `productAttribute` VALUES (141, 10029, '标准46.5/US12 ', '10');
INSERT INTO `productAttribute` VALUES (142, 10029, '标准40/US7 ', '10');
INSERT INTO `productAttribute` VALUES (143, 10029, '标准41/US8 ', '10');
INSERT INTO `productAttribute` VALUES (144, 10030, '米白色', '11');
INSERT INTO `productAttribute` VALUES (145, 10030, ' 黄色', '11');
INSERT INTO `productAttribute` VALUES (146, 10030, '黑色', '11');
INSERT INTO `productAttribute` VALUES (147, 10030, 'L', '10');
INSERT INTO `productAttribute` VALUES (148, 10030, 'M', '10');
INSERT INTO `productAttribute` VALUES (149, 10030, 'X', '10');
INSERT INTO `productAttribute` VALUES (605, 10073, '口味好吃', '15');
INSERT INTO `productAttribute` VALUES (606, 10073, ' 今天', '15');
INSERT INTO `productAttribute` VALUES (607, 10073, '版本 ', '16');
INSERT INTO `productAttribute` VALUES (608, 10075, '好吃', '15');
INSERT INTO `productAttribute` VALUES (609, 10077, 'S', '10');
INSERT INTO `productAttribute` VALUES (610, 10077, 'M', '10');
INSERT INTO `productAttribute` VALUES (611, 10077, 'F', '12');
INSERT INTO `productAttribute` VALUES (612, 10077, 'W', '12');
INSERT INTO `productAttribute` VALUES (613, 10001, '31231', '11');
INSERT INTO `productAttribute` VALUES (614, 10001, '12231', '11');
INSERT INTO `productAttribute` VALUES (615, 10001, '212312', '11');
INSERT INTO `productAttribute` VALUES (616, 10013, '21123412', '13');
INSERT INTO `productAttribute` VALUES (617, 10030, '套餐一', '12');
INSERT INTO `productAttribute` VALUES (618, 10030, '套餐二', '12');
INSERT INTO `productAttribute` VALUES (619, 10001, '545', '13');
INSERT INTO `productAttribute` VALUES (620, 10021, '套餐', '12');
INSERT INTO `productAttribute` VALUES (621, 10021, '套餐2', '12');
INSERT INTO `productAttribute` VALUES (622, 10021, '套餐3', '12');

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
-- Table structure for productComment
-- ----------------------------
DROP TABLE IF EXISTS `productComment`;
CREATE TABLE `productComment`  (
  `commentId` int(11) NOT NULL AUTO_INCREMENT,
  `userId` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `productId` int(11) NULL DEFAULT NULL,
  `purchaseId` int(11) NULL DEFAULT NULL,
  `textComment` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `videoComment` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `favorability` int(11) NULL DEFAULT NULL,
  `likeQuantity` int(11) NULL DEFAULT 0,
  `commentTime` datetime(0) NULL DEFAULT NULL,
  `anonymity` int(11) NULL DEFAULT NULL,
  `commentVideoSign` int(11) NULL DEFAULT 0,
  PRIMARY KEY (`commentId`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 190 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of productComment
-- ----------------------------
INSERT INTO `productComment` VALUES (175, 'f92b9f8f372e445fb6564cdd57aa3c3e', 10001, 2770, '这个手机看了好久了 终于决定买了', ' http://img.isdfmk.xyz/ecd7e5d4053a4c97a56da11b8c02fb28', 5, 0, '2020-05-19 18:38:50', 0, 0);
INSERT INTO `productComment` VALUES (176, 'f92b9f8f372e445fb6564cdd57aa3c3e', 10002, 2779, '第二次买了 这副耳机太爱了 ', ' http://img.isdfmk.xyz/3c9d41b992754d9e9e3014401d7b4a5b', 5, 0, '2020-05-19 19:36:57', 0, 0);
INSERT INTO `productComment` VALUES (177, '7c9fdfa3177042a08766aed29e7de6cd', 10003, 2780, '速度还是大', ' http://img.isdfmk.xyz/d357729dac4e47b99aa7844c4790b1b1', 5, 0, '2020-05-19 20:51:24', 0, 0);
INSERT INTO `productComment` VALUES (178, '7c9fdfa3177042a08766aed29e7de6cd', 10003, 2780, '速度还是大', ' http://img.isdfmk.xyz/0bb3feb42e2c464cb3b752a0f64ab587', 5, 0, '2020-05-19 20:51:42', 0, 0);
INSERT INTO `productComment` VALUES (179, 'f92b9f8f372e445fb6564cdd57aa3c3e', 10002, 2786, '520收到爱的礼物了', NULL, 5, 0, '2020-05-20 09:01:05', 0, 0);
INSERT INTO `productComment` VALUES (180, '7c9fdfa3177042a08766aed29e7de6cd', 10001, 2837, '4556', ' http://img.isdfmk.xyz/6850587ac9e942b39d23607c4cbdcda0', 2, 0, '2020-05-20 16:23:11', 0, 0);
INSERT INTO `productComment` VALUES (181, '7c9fdfa3177042a08766aed29e7de6cd', 10001, 2837, '4556', ' http://img.isdfmk.xyz/c5b79f75debc46eaaa6dd30bcab8b343', 2, 0, '2020-05-20 16:23:19', 0, 0);
INSERT INTO `productComment` VALUES (182, 'f92b9f8f372e445fb6564cdd57aa3c3e', 10018, 2838, '你好', NULL, 5, 0, '2020-05-20 21:52:47', 0, 0);
INSERT INTO `productComment` VALUES (183, 'f92b9f8f372e445fb6564cdd57aa3c3e', 10001, 2808, '111', NULL, 5, 0, '2020-05-21 11:43:36', 0, 0);
INSERT INTO `productComment` VALUES (184, '7c9fdfa3177042a08766aed29e7de6cd', 10015, 2832, 'sdfsd', ' http://img.isdfmk.xyz/1f278b84799d480fb73ea144175cdb3f', 5, 0, '2020-05-21 11:50:12', 0, 0);
INSERT INTO `productComment` VALUES (185, '7c9fdfa3177042a08766aed29e7de6cd', 10005, 2845, 'sdfsdf', ' http://img.isdfmk.xyz/f0f6a4136c144b9eae7ce43a7466bb9a', 5, 0, '2020-05-23 20:46:00', 0, 0);
INSERT INTO `productComment` VALUES (186, '7c9fdfa3177042a08766aed29e7de6cd', 10005, 2845, 'sdfsd', ' http://img.isdfmk.xyz/ee3338d4bd7d49a6926ff42411d2d4b1', 5, 0, '2020-05-23 20:46:10', 0, 0);
INSERT INTO `productComment` VALUES (187, 'f92b9f8f372e445fb6564cdd57aa3c3e', 10011, 3402, '好评', NULL, 5, 0, '2020-06-02 13:07:17', 0, 0);
INSERT INTO `productComment` VALUES (188, '3e7cb3ada38c49a58d57a7c3446ec932', 10003, 3411, 'hhhh', NULL, 5, 0, '2020-06-09 10:35:01', 0, 0);
INSERT INTO `productComment` VALUES (189, 'f92b9f8f372e445fb6564cdd57aa3c3e', 10013, 3440, '', NULL, 5, 0, '2020-06-22 03:19:33', 0, 0);

-- ----------------------------
-- Table structure for productDistinction
-- ----------------------------
DROP TABLE IF EXISTS `productDistinction`;
CREATE TABLE `productDistinction`  (
  `distinctionId` int(11) NOT NULL AUTO_INCREMENT,
  `productId` int(11) NULL DEFAULT NULL,
  `sizeId` int(11) NULL DEFAULT NULL,
  `colourId` int(11) NULL DEFAULT NULL,
  `comboId` int(11) NULL DEFAULT NULL,
  `specificationId` int(11) NULL DEFAULT NULL,
  `tasteId` int(11) NULL DEFAULT NULL,
  `kindId` int(11) NULL DEFAULT NULL,
  `versionId` int(11) NULL DEFAULT NULL,
  `productPrice` double(10, 2) NULL DEFAULT 0.00,
  `priceSpikePrice` decimal(10, 2) NULL DEFAULT NULL,
  `priceDiscount` decimal(10, 2) NULL DEFAULT NULL,
  `ProductInventory` double(10, 2) NULL DEFAULT 0.00,
  `ProductSales` double(10, 2) NULL DEFAULT 0.00,
  `sign` int(11) NULL DEFAULT 0,
  PRIMARY KEY (`distinctionId`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1476 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of productDistinction
-- ----------------------------
INSERT INTO `productDistinction` VALUES (1, 10001, NULL, 1, NULL, 6, NULL, NULL, 3, 5899.00, 4888.00, 4999.00, 0.00, 1.00, 1);
INSERT INTO `productDistinction` VALUES (2, 10001, NULL, 1, NULL, 6, NULL, NULL, 4, 6900.00, 4888.00, 4999.00, 0.00, 2.00, 1);
INSERT INTO `productDistinction` VALUES (3, 10001, NULL, 1, NULL, 5, NULL, NULL, 3, 5741.00, 4888.00, 4999.00, 0.00, 3.00, 1);
INSERT INTO `productDistinction` VALUES (4, 10001, NULL, 1, NULL, 5, NULL, NULL, 4, 5845.00, 4888.00, 4999.00, 0.00, 4.00, 1);
INSERT INTO `productDistinction` VALUES (5, 10001, NULL, 2, NULL, 6, NULL, NULL, 3, 5854.00, 4888.00, 4999.00, 0.00, 5.00, 1);
INSERT INTO `productDistinction` VALUES (6, 10001, NULL, 2, NULL, 6, NULL, NULL, 4, 1525.00, 4888.00, 4999.00, 0.00, 6.00, 1);
INSERT INTO `productDistinction` VALUES (7, 10001, NULL, 2, NULL, 5, NULL, NULL, 3, 5899.00, 4888.00, 4999.00, 0.00, 1.00, 1);
INSERT INTO `productDistinction` VALUES (8, 10001, NULL, 2, NULL, 5, NULL, NULL, 4, 6900.00, 4888.00, 4999.00, 0.00, 2.00, 1);
INSERT INTO `productDistinction` VALUES (13, 10002, NULL, 7, 8, NULL, NULL, NULL, NULL, 1899.00, 1799.00, 1699.00, 995.00, 100.00, 0);
INSERT INTO `productDistinction` VALUES (14, 10002, NULL, 7, 9, NULL, NULL, NULL, NULL, 1899.00, 1799.00, 1699.00, 45.00, 52.00, 0);
INSERT INTO `productDistinction` VALUES (15, 10003, NULL, NULL, NULL, NULL, NULL, 10, NULL, 888.00, 877.00, 888.00, 119.00, 8.00, 0);
INSERT INTO `productDistinction` VALUES (16, 10003, NULL, NULL, NULL, NULL, NULL, 11, NULL, 758.00, 768.00, 738.00, 1000.00, 7.00, 0);
INSERT INTO `productDistinction` VALUES (17, 10003, NULL, NULL, NULL, NULL, NULL, 12, NULL, 685.00, 585.00, 565.00, 848.00, 6.00, 0);
INSERT INTO `productDistinction` VALUES (18, 10003, NULL, NULL, NULL, NULL, NULL, 13, NULL, 566.00, 466.00, 463.00, 1000.00, 8.00, 0);
INSERT INTO `productDistinction` VALUES (19, 10003, NULL, NULL, NULL, NULL, NULL, 14, NULL, 433.00, 333.00, 362.00, 29.00, 5.00, 1);
INSERT INTO `productDistinction` VALUES (20, 10003, NULL, NULL, NULL, NULL, NULL, 15, NULL, 366.00, 266.00, 285.00, 1000.00, 6.00, 1);
INSERT INTO `productDistinction` VALUES (21, 10004, NULL, 16, NULL, NULL, NULL, NULL, NULL, 30576.00, 28999.00, 29999.00, 89.00, 852.00, 0);
INSERT INTO `productDistinction` VALUES (22, 10004, NULL, 17, NULL, NULL, NULL, NULL, NULL, 31676.00, 29999.00, 29999.00, 77.00, 520.00, 0);
INSERT INTO `productDistinction` VALUES (23, 10005, NULL, NULL, NULL, NULL, NULL, NULL, 18, 7890.00, 4585.00, 5388.00, 828.00, 8.00, 0);
INSERT INTO `productDistinction` VALUES (24, 10005, NULL, NULL, NULL, NULL, NULL, NULL, 19, 7890.00, 4585.00, 5888.00, 562.00, 8.00, 0);
INSERT INTO `productDistinction` VALUES (25, 10005, NULL, NULL, NULL, NULL, NULL, NULL, 20, 7830.00, 4585.00, 5878.00, 34.00, 1.00, 0);
INSERT INTO `productDistinction` VALUES (26, 10005, NULL, NULL, NULL, NULL, NULL, NULL, 21, 7690.00, 4585.00, 5488.00, 43.00, 2.00, 0);
INSERT INTO `productDistinction` VALUES (27, 10005, NULL, NULL, NULL, NULL, NULL, NULL, 22, 7890.00, 4995.00, 4888.00, 998.00, 8.00, 0);
INSERT INTO `productDistinction` VALUES (28, 10005, NULL, NULL, NULL, NULL, NULL, NULL, 23, 7490.00, 4584.00, 4888.00, 26.00, 5.00, 0);
INSERT INTO `productDistinction` VALUES (29, 10006, NULL, 24, NULL, NULL, NULL, NULL, NULL, 1499.00, 1360.00, 1399.00, 28.00, 2.00, 0);
INSERT INTO `productDistinction` VALUES (30, 10006, NULL, 25, NULL, NULL, NULL, NULL, NULL, 1499.00, 1360.00, 1399.00, 995.00, 100.00, 0);
INSERT INTO `productDistinction` VALUES (31, 10007, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1569.00, 2899.00, 1576.00, 3.00, 11.00, 0);
INSERT INTO `productDistinction` VALUES (32, 10008, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3500.00, 1585.00, 1558.00, 12.00, 10.00, 0);
INSERT INTO `productDistinction` VALUES (33, 10009, NULL, 26, NULL, NULL, NULL, NULL, NULL, 47699.00, 45666.00, 3688.00, 969.00, 7.00, 0);
INSERT INTO `productDistinction` VALUES (34, 10009, NULL, 27, NULL, NULL, NULL, NULL, NULL, 37799.00, 35666.00, 3688.00, 847.00, 6.00, 0);
INSERT INTO `productDistinction` VALUES (35, 10009, NULL, 28, NULL, NULL, NULL, NULL, NULL, 37699.00, 35666.00, 3688.00, 999.00, 8.00, 0);
INSERT INTO `productDistinction` VALUES (36, 10009, NULL, 29, NULL, NULL, NULL, NULL, NULL, 37699.00, 35666.00, 3688.00, 28.00, 5.00, 0);
INSERT INTO `productDistinction` VALUES (37, 10009, NULL, 30, NULL, NULL, NULL, NULL, NULL, 47699.00, 45466.00, 4688.00, 998.00, 6.00, 0);
INSERT INTO `productDistinction` VALUES (38, 10009, NULL, 31, NULL, NULL, NULL, NULL, NULL, 46666.00, 44866.00, 4688.00, 98.00, 852.00, 0);
INSERT INTO `productDistinction` VALUES (39, 10009, NULL, 32, NULL, NULL, NULL, NULL, NULL, 47699.00, 45666.00, 4688.00, 86.00, 520.00, 0);
INSERT INTO `productDistinction` VALUES (40, 10009, NULL, 33, NULL, NULL, NULL, NULL, NULL, 57699.00, 55666.00, 4688.00, 843.00, 8.00, 0);
INSERT INTO `productDistinction` VALUES (41, 10009, NULL, 34, NULL, NULL, NULL, NULL, NULL, 67699.00, 55666.00, 5688.00, 562.00, 8.00, 0);
INSERT INTO `productDistinction` VALUES (42, 10010, NULL, 35, NULL, NULL, NULL, NULL, NULL, 3596.00, 2523.00, 2563.00, 45.00, 2.00, 0);
INSERT INTO `productDistinction` VALUES (43, 10010, NULL, 36, NULL, NULL, NULL, NULL, NULL, 3586.00, 2523.00, 2563.00, 1000.00, 100.00, 0);
INSERT INTO `productDistinction` VALUES (44, 10010, NULL, 37, NULL, NULL, NULL, NULL, NULL, 3576.00, 2523.00, 2563.00, 10.00, 11.00, 0);
INSERT INTO `productDistinction` VALUES (45, 10010, NULL, 38, NULL, NULL, NULL, NULL, NULL, 3646.00, 2523.00, 2563.00, 19.00, 10.00, 0);
INSERT INTO `productDistinction` VALUES (46, 10010, NULL, 39, NULL, NULL, NULL, NULL, NULL, 3496.00, 2523.00, 2563.00, 999.00, 7.00, 0);
INSERT INTO `productDistinction` VALUES (47, 10010, NULL, 40, NULL, NULL, NULL, NULL, NULL, 3333.00, 2523.00, 2563.00, 848.00, 6.00, 0);
INSERT INTO `productDistinction` VALUES (48, 10011, NULL, 41, NULL, NULL, NULL, NULL, 43, 10398.00, 9999.00, 19888.00, 0.00, 11.00, 1);
INSERT INTO `productDistinction` VALUES (49, 10011, NULL, 41, NULL, NULL, NULL, NULL, 44, 9999.00, 9500.00, 9888.00, 15.00, 10.00, 0);
INSERT INTO `productDistinction` VALUES (50, 10011, NULL, 42, NULL, NULL, NULL, NULL, 43, 10398.00, 9999.00, 19888.00, 964.00, 7.00, 0);
INSERT INTO `productDistinction` VALUES (51, 10011, NULL, 42, NULL, NULL, NULL, NULL, 44, 9999.00, 9500.00, 9888.00, 845.00, 6.00, 0);
INSERT INTO `productDistinction` VALUES (52, 10012, NULL, 45, NULL, NULL, NULL, NULL, 46, 4999.00, 4760.00, 4888.00, 843.00, 8.00, 0);
INSERT INTO `productDistinction` VALUES (53, 10012, NULL, 45, NULL, NULL, NULL, NULL, 47, 4555.00, 4360.00, 4333.00, 562.00, 8.00, 0);
INSERT INTO `productDistinction` VALUES (54, 10012, NULL, 45, NULL, NULL, NULL, NULL, 48, 3888.00, 3777.00, 3666.00, 44.00, 2.00, 0);
INSERT INTO `productDistinction` VALUES (55, 10013, NULL, NULL, NULL, 49, NULL, NULL, NULL, 11999.00, 10888.00, 10289.00, 34.00, 2.00, 1);
INSERT INTO `productDistinction` VALUES (56, 10013, NULL, NULL, NULL, 50, NULL, NULL, NULL, 12999.00, 10288.00, 18999.00, 999.00, 100.00, 1);
INSERT INTO `productDistinction` VALUES (57, 10013, NULL, NULL, NULL, 51, NULL, NULL, NULL, 10999.00, 9999.00, 10888.00, 8.00, 11.00, 1);
INSERT INTO `productDistinction` VALUES (58, 10013, NULL, NULL, NULL, 52, NULL, NULL, NULL, 11888.00, 10001.00, 11065.00, 19.00, 10.00, 1);
INSERT INTO `productDistinction` VALUES (59, 10014, NULL, 53, NULL, NULL, NULL, NULL, NULL, 2898.00, 2541.00, 2584.00, 9994.00, 99999.00, 0);
INSERT INTO `productDistinction` VALUES (60, 10014, NULL, 54, NULL, NULL, NULL, NULL, NULL, 3298.00, 2888.00, 2890.00, 5819.00, 4152.00, 0);
INSERT INTO `productDistinction` VALUES (61, 10015, NULL, NULL, NULL, NULL, 55, NULL, NULL, 20.00, 8.80, 10.00, 9998.00, 70000.00, 0);
INSERT INTO `productDistinction` VALUES (62, 10015, NULL, NULL, NULL, NULL, 56, NULL, NULL, 20.00, 8.80, 10.00, 50004.00, 85635.00, 0);
INSERT INTO `productDistinction` VALUES (63, 10015, NULL, NULL, NULL, NULL, 57, NULL, NULL, 20.00, 8.80, 10.00, 78563.00, 85263.00, 0);
INSERT INTO `productDistinction` VALUES (64, 10015, NULL, NULL, NULL, NULL, 58, NULL, NULL, 20.00, 8.80, 10.00, 102555.00, 11551.00, 0);
INSERT INTO `productDistinction` VALUES (65, 10015, NULL, NULL, NULL, NULL, 59, NULL, NULL, 20.00, 8.80, 10.00, 4151211.00, 255111.00, 0);
INSERT INTO `productDistinction` VALUES (66, 10016, NULL, 60, NULL, NULL, NULL, NULL, NULL, 5399.00, 4988.00, 4999.00, 17.00, 10.00, 0);
INSERT INTO `productDistinction` VALUES (67, 10016, NULL, 61, NULL, NULL, NULL, NULL, NULL, 5399.00, 4988.00, 4999.00, 1000.00, 7.00, 0);
INSERT INTO `productDistinction` VALUES (68, 10016, NULL, 62, NULL, NULL, NULL, NULL, NULL, 5499.00, 4988.00, 4999.00, 848.00, 6.00, 0);
INSERT INTO `productDistinction` VALUES (69, 10016, NULL, 63, NULL, NULL, NULL, NULL, NULL, 5499.00, 4988.00, 4999.00, 10.00, 11.00, 0);
INSERT INTO `productDistinction` VALUES (70, 10017, NULL, 64, NULL, 70, NULL, NULL, 67, 3199.00, 3012.00, 2999.00, 1000.00, 7.00, 0);
INSERT INTO `productDistinction` VALUES (71, 10017, NULL, 64, NULL, 70, NULL, NULL, 68, 3189.00, 3012.00, 2999.00, 10000.00, 70000.00, 0);
INSERT INTO `productDistinction` VALUES (72, 10017, NULL, 64, NULL, 70, NULL, NULL, 69, 3199.00, 3012.00, 2999.00, 50004.00, 85635.00, 0);
INSERT INTO `productDistinction` VALUES (73, 10017, NULL, 64, NULL, 71, NULL, NULL, 67, 3399.00, 3012.00, 2999.00, 78563.00, 85263.00, 0);
INSERT INTO `productDistinction` VALUES (74, 10017, NULL, 64, NULL, 71, NULL, NULL, 68, 3399.00, 3012.00, 2999.00, 102555.00, 11551.00, 0);
INSERT INTO `productDistinction` VALUES (75, 10017, NULL, 64, NULL, 71, NULL, NULL, 69, 3399.00, 3012.00, 2999.00, 4151214.00, 255111.00, 0);
INSERT INTO `productDistinction` VALUES (76, 10017, NULL, 65, NULL, 70, NULL, NULL, 67, 3199.00, 3012.00, 2999.00, 19.00, 10.00, 0);
INSERT INTO `productDistinction` VALUES (77, 10017, NULL, 65, NULL, 70, NULL, NULL, 68, 3199.00, 3012.00, 2999.00, 1000.00, 7.00, 0);
INSERT INTO `productDistinction` VALUES (78, 10017, NULL, 65, NULL, 70, NULL, NULL, 69, 3199.00, 3012.00, 2999.00, 848.00, 6.00, 0);
INSERT INTO `productDistinction` VALUES (79, 10017, NULL, 65, NULL, 71, NULL, NULL, 67, 3399.00, 3012.00, 2999.00, 10.00, 11.00, 0);
INSERT INTO `productDistinction` VALUES (80, 10017, NULL, 65, NULL, 71, NULL, NULL, 68, 3399.00, 3012.00, 2999.00, 10000.00, 70000.00, 0);
INSERT INTO `productDistinction` VALUES (81, 10017, NULL, 65, NULL, 71, NULL, NULL, 69, 3399.00, 3012.00, 2999.00, 50004.00, 85635.00, 0);
INSERT INTO `productDistinction` VALUES (82, 10017, NULL, 66, NULL, 70, NULL, NULL, 67, 3199.00, 3012.00, 2999.00, 78563.00, 85263.00, 0);
INSERT INTO `productDistinction` VALUES (83, 10017, NULL, 66, NULL, 70, NULL, NULL, 68, 3199.00, 3012.00, 2999.00, 102555.00, 11551.00, 0);
INSERT INTO `productDistinction` VALUES (84, 10017, NULL, 66, NULL, 70, NULL, NULL, 69, 3199.00, 3012.00, 2999.00, 4151214.00, 255111.00, 0);
INSERT INTO `productDistinction` VALUES (85, 10017, NULL, 66, NULL, 71, NULL, NULL, 67, 3399.00, 3012.00, 2999.00, 19.00, 10.00, 0);
INSERT INTO `productDistinction` VALUES (86, 10017, NULL, 66, NULL, 71, NULL, NULL, 68, 3399.00, 3012.00, 2999.00, 1000.00, 7.00, 0);
INSERT INTO `productDistinction` VALUES (87, 10017, NULL, 66, NULL, 71, NULL, NULL, 69, 3399.00, 3012.00, 2999.00, 848.00, 6.00, 0);
INSERT INTO `productDistinction` VALUES (88, 10018, NULL, 72, NULL, NULL, NULL, NULL, NULL, 328.00, 312.00, 299.00, 999.00, 7.00, 0);
INSERT INTO `productDistinction` VALUES (89, 10018, NULL, 73, NULL, NULL, NULL, NULL, NULL, 328.00, 312.00, 299.00, 848.00, 6.00, 0);
INSERT INTO `productDistinction` VALUES (90, 10018, NULL, 74, NULL, NULL, NULL, NULL, NULL, 328.00, 312.00, 299.00, 10.00, 11.00, 0);
INSERT INTO `productDistinction` VALUES (91, 10018, NULL, 75, NULL, NULL, NULL, NULL, NULL, 328.00, 312.00, 299.00, 9999.00, 70000.00, 0);
INSERT INTO `productDistinction` VALUES (92, 10018, NULL, 76, NULL, NULL, NULL, NULL, NULL, 328.00, 312.00, 299.00, 50004.00, 85635.00, 0);
INSERT INTO `productDistinction` VALUES (93, 10018, NULL, 77, NULL, NULL, NULL, NULL, NULL, 328.00, 312.00, 299.00, 78563.00, 85263.00, 0);
INSERT INTO `productDistinction` VALUES (94, 10018, NULL, 78, NULL, NULL, NULL, NULL, NULL, 588.00, 566.00, 566.00, 4151214.00, 255111.00, 0);
INSERT INTO `productDistinction` VALUES (95, 10018, NULL, 79, NULL, NULL, NULL, NULL, NULL, 588.00, 566.00, 566.00, 19.00, 10.00, 0);
INSERT INTO `productDistinction` VALUES (96, 10018, NULL, 80, NULL, NULL, NULL, NULL, NULL, 588.00, 566.00, 566.00, 998.00, 7.00, 0);
INSERT INTO `productDistinction` VALUES (97, 10018, NULL, 81, NULL, NULL, NULL, NULL, NULL, 988.00, 966.00, 974.00, 135.00, 11103.00, 0);
INSERT INTO `productDistinction` VALUES (98, 10018, NULL, 82, NULL, NULL, NULL, NULL, NULL, 588.00, 566.00, 568.00, 1033.00, 5547.00, 0);
INSERT INTO `productDistinction` VALUES (99, 10018, NULL, 83, NULL, NULL, NULL, NULL, NULL, 1140.00, 999.00, 1111.00, 18.00, 10.00, 0);
INSERT INTO `productDistinction` VALUES (100, 10019, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 260000.00, 259999.00, 259999.00, 49.00, 5.00, 0);
INSERT INTO `productDistinction` VALUES (101, 10020, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5199.00, 4855.00, 4999.00, 135.00, 11103.00, 0);
INSERT INTO `productDistinction` VALUES (102, 10021, NULL, NULL, 84, NULL, NULL, NULL, NULL, 18599.00, 1599.00, 1855.00, 1032.00, 5547.00, 1);
INSERT INTO `productDistinction` VALUES (103, 10021, NULL, NULL, 85, NULL, NULL, NULL, NULL, 19599.00, 1699.00, 1755.00, 125167.00, 1284.00, 1);
INSERT INTO `productDistinction` VALUES (104, 10021, NULL, NULL, 86, NULL, NULL, NULL, NULL, 19599.00, 1699.00, 1855.00, 48939.00, 89498.00, 1);
INSERT INTO `productDistinction` VALUES (105, 10022, NULL, 87, NULL, NULL, NULL, NULL, NULL, 1289.00, 1126.00, 1206.00, 5847.00, 856.00, 0);
INSERT INTO `productDistinction` VALUES (106, 10022, NULL, 88, NULL, NULL, NULL, NULL, NULL, 1289.00, 1126.00, 1206.00, 45520.00, 45.00, 0);
INSERT INTO `productDistinction` VALUES (107, 10022, NULL, 89, NULL, NULL, NULL, NULL, NULL, 1289.00, 1126.00, 1206.00, 5261.00, 56.00, 0);
INSERT INTO `productDistinction` VALUES (108, 10022, NULL, 90, NULL, NULL, NULL, NULL, NULL, 1289.00, 1126.00, 1206.00, 82.00, 11.00, 0);
INSERT INTO `productDistinction` VALUES (109, 10022, NULL, 91, NULL, NULL, NULL, NULL, NULL, 1289.00, 1126.00, 1206.00, 71.00, 2845.00, 0);
INSERT INTO `productDistinction` VALUES (110, 10022, NULL, 92, NULL, NULL, NULL, NULL, NULL, 1289.00, 1126.00, 1206.00, 961.00, 8787.00, 0);
INSERT INTO `productDistinction` VALUES (111, 10023, 96, 93, NULL, NULL, NULL, NULL, NULL, 1299.00, 1258.00, 1152.00, 0.00, 88.00, 0);
INSERT INTO `productDistinction` VALUES (112, 10023, 96, 94, NULL, NULL, NULL, NULL, NULL, 1299.00, 1258.00, 1152.00, 76.00, 76.00, 0);
INSERT INTO `productDistinction` VALUES (113, 10023, 96, 95, NULL, NULL, NULL, NULL, NULL, 1299.00, 1258.00, 1152.00, 74.00, 76.00, 0);
INSERT INTO `productDistinction` VALUES (114, 10024, NULL, NULL, NULL, NULL, NULL, NULL, 97, 2188.00, 1999.00, 2088.00, 5248.00, 56.00, 0);
INSERT INTO `productDistinction` VALUES (115, 10024, NULL, NULL, NULL, NULL, NULL, NULL, 98, 2088.00, 1888.00, 1999.00, 85.00, 11.00, 0);
INSERT INTO `productDistinction` VALUES (116, 10024, NULL, NULL, NULL, NULL, NULL, NULL, 99, 2388.00, 2199.00, 2088.00, 74.00, 2845.00, 0);
INSERT INTO `productDistinction` VALUES (117, 10024, NULL, NULL, NULL, NULL, NULL, NULL, 100, 2288.00, 2188.00, 1999.00, 137.00, 11103.00, 0);
INSERT INTO `productDistinction` VALUES (118, 10024, NULL, NULL, NULL, NULL, NULL, NULL, 101, 2388.00, 2199.00, 2088.00, 1036.00, 5547.00, 0);
INSERT INTO `productDistinction` VALUES (119, 10024, NULL, NULL, NULL, NULL, NULL, NULL, 102, 2288.00, 2188.00, 1999.00, 136.00, 11103.00, 0);
INSERT INTO `productDistinction` VALUES (120, 10024, NULL, NULL, NULL, NULL, NULL, NULL, 103, 2388.00, 2199.00, 2088.00, 1036.00, 5547.00, 0);
INSERT INTO `productDistinction` VALUES (121, 10024, NULL, NULL, NULL, NULL, NULL, NULL, 104, 2288.00, 2188.00, 1999.00, 868.00, 869.00, 0);
INSERT INTO `productDistinction` VALUES (122, 10024, NULL, NULL, NULL, NULL, NULL, NULL, 105, 2488.00, 2388.00, 2268.00, 8498.00, 869.00, 0);
INSERT INTO `productDistinction` VALUES (123, 10024, NULL, NULL, NULL, NULL, NULL, NULL, 106, 2488.00, 2688.00, 2288.00, 82.00, 66.00, 0);
INSERT INTO `productDistinction` VALUES (124, 10025, NULL, NULL, 107, NULL, NULL, NULL, 71, 59.90, 66.00, 66.00, 922.00, 974.00, 0);
INSERT INTO `productDistinction` VALUES (125, 10025, NULL, NULL, 108, NULL, NULL, NULL, 99, 74.90, 66.00, 66.00, 546.00, 568.00, 0);
INSERT INTO `productDistinction` VALUES (126, 10026, 109, NULL, NULL, NULL, NULL, NULL, NULL, 799.00, 599.00, 620.00, 79.00, 66.00, 0);
INSERT INTO `productDistinction` VALUES (127, 10026, 110, NULL, NULL, NULL, NULL, NULL, NULL, 799.00, 599.00, 620.00, 933.00, 974.00, 0);
INSERT INTO `productDistinction` VALUES (128, 10026, 111, NULL, NULL, NULL, NULL, NULL, NULL, 799.00, 599.00, 620.00, 5262.00, 56.00, 0);
INSERT INTO `productDistinction` VALUES (129, 10026, 112, NULL, NULL, NULL, NULL, NULL, NULL, 799.00, 599.00, 620.00, 85.00, 11.00, 0);
INSERT INTO `productDistinction` VALUES (130, 10027, NULL, 113, NULL, NULL, NULL, NULL, NULL, 773.00, 689.00, 666.00, 26.00, 67.00, 0);
INSERT INTO `productDistinction` VALUES (131, 10027, NULL, 114, NULL, NULL, NULL, NULL, NULL, 773.00, 689.00, 666.00, 66.00, 67.00, 0);
INSERT INTO `productDistinction` VALUES (132, 10027, NULL, 115, NULL, NULL, NULL, NULL, NULL, 773.00, 689.00, 666.00, 66.00, 67.00, 0);
INSERT INTO `productDistinction` VALUES (133, 10027, NULL, 116, NULL, NULL, NULL, NULL, NULL, 773.00, 689.00, 666.00, 744.00, 745.00, 0);
INSERT INTO `productDistinction` VALUES (134, 10027, NULL, 117, NULL, NULL, NULL, NULL, NULL, 773.00, 689.00, 666.00, 745.00, 745.00, 0);
INSERT INTO `productDistinction` VALUES (135, 10027, NULL, 118, NULL, NULL, NULL, NULL, NULL, 773.00, 689.00, 666.00, 744.00, 745.00, 0);
INSERT INTO `productDistinction` VALUES (136, 10027, NULL, 119, NULL, NULL, NULL, NULL, NULL, 773.00, 689.00, 666.00, 745.00, 745.00, 0);
INSERT INTO `productDistinction` VALUES (137, 10027, NULL, 120, NULL, NULL, NULL, NULL, NULL, 773.00, 689.00, 666.00, 745.00, 869.00, 0);
INSERT INTO `productDistinction` VALUES (138, 10027, NULL, 121, NULL, NULL, NULL, NULL, NULL, 773.00, 689.00, 666.00, 745.00, 66.00, 0);
INSERT INTO `productDistinction` VALUES (139, 10027, NULL, 122, NULL, NULL, NULL, NULL, NULL, 773.00, 689.00, 666.00, 66.00, 974.00, 0);
INSERT INTO `productDistinction` VALUES (140, 10027, NULL, 123, NULL, NULL, NULL, NULL, NULL, 773.00, 689.00, 666.00, 65.00, 568.00, 0);
INSERT INTO `productDistinction` VALUES (141, 10027, NULL, 124, NULL, NULL, NULL, NULL, NULL, 773.00, 689.00, 666.00, 6853.00, 66.00, 0);
INSERT INTO `productDistinction` VALUES (142, 10027, NULL, 125, NULL, NULL, NULL, NULL, NULL, 773.00, 689.00, 666.00, 66.00, 6855.00, 0);
INSERT INTO `productDistinction` VALUES (143, 10027, NULL, 126, NULL, NULL, NULL, NULL, NULL, 873.00, 689.00, 666.00, 596.00, 6855.00, 0);
INSERT INTO `productDistinction` VALUES (144, 10027, NULL, 127, NULL, NULL, NULL, NULL, NULL, 873.00, 689.00, 666.00, 591.00, 745.00, 0);
INSERT INTO `productDistinction` VALUES (145, 10027, NULL, 128, NULL, NULL, NULL, NULL, NULL, 773.00, 689.00, 666.00, 56.00, 745.00, 0);
INSERT INTO `productDistinction` VALUES (146, 10027, NULL, 129, NULL, NULL, NULL, NULL, NULL, 773.00, 689.00, 666.00, 58.90, 869.00, 0);
INSERT INTO `productDistinction` VALUES (147, 10027, NULL, 130, NULL, NULL, NULL, NULL, NULL, 773.00, 689.00, 666.00, 67.90, 66.00, 0);
INSERT INTO `productDistinction` VALUES (148, 10027, NULL, 131, NULL, NULL, NULL, NULL, NULL, 773.00, 689.00, 666.00, 790.00, 974.00, 0);
INSERT INTO `productDistinction` VALUES (149, 10027, NULL, 132, NULL, NULL, NULL, NULL, NULL, 773.00, 689.00, 666.00, 60.00, 67.00, 0);
INSERT INTO `productDistinction` VALUES (150, 10028, NULL, 133, NULL, NULL, NULL, NULL, 136, 325.09, 218.00, 222.00, 744.00, 745.00, 0);
INSERT INTO `productDistinction` VALUES (151, 10028, NULL, 133, NULL, NULL, NULL, NULL, 137, 265.09, 218.00, 222.00, 744.00, 869.00, 0);
INSERT INTO `productDistinction` VALUES (152, 10028, NULL, 134, NULL, NULL, NULL, NULL, 136, 325.09, 299.00, 298.00, 745.00, 66.00, 0);
INSERT INTO `productDistinction` VALUES (153, 10028, NULL, 134, NULL, NULL, NULL, NULL, 137, 265.09, 218.00, 222.00, 66.00, 974.00, 0);
INSERT INTO `productDistinction` VALUES (154, 10028, NULL, 135, NULL, NULL, NULL, NULL, 136, 325.09, 299.00, 298.00, 74.90, 66.00, 0);
INSERT INTO `productDistinction` VALUES (155, 10028, NULL, 135, NULL, NULL, NULL, NULL, 137, 265.09, 218.00, 222.00, 598.00, 6855.00, 0);
INSERT INTO `productDistinction` VALUES (156, 10029, 141, 138, NULL, NULL, NULL, NULL, NULL, 2920.01, 2890.00, 2888.00, 733.00, 66.00, 0);
INSERT INTO `productDistinction` VALUES (157, 10029, 141, 139, NULL, NULL, NULL, NULL, NULL, 2920.01, 2890.00, 2888.00, 60.00, 974.00, 0);
INSERT INTO `productDistinction` VALUES (158, 10029, 141, 140, NULL, NULL, NULL, NULL, NULL, 2920.01, 2890.00, 2888.00, 73.90, 66.00, 0);
INSERT INTO `productDistinction` VALUES (159, 10029, 142, 138, NULL, NULL, NULL, NULL, NULL, 2920.01, 2890.00, 2888.00, 689.00, 666.00, 0);
INSERT INTO `productDistinction` VALUES (160, 10029, 142, 139, NULL, NULL, NULL, NULL, NULL, 2920.01, 2890.00, 2888.00, 21298.00, 165138.00, 0);
INSERT INTO `productDistinction` VALUES (161, 10029, 142, 140, NULL, NULL, NULL, NULL, NULL, 2920.01, 2890.00, 2888.00, 773.00, 689.00, 0);
INSERT INTO `productDistinction` VALUES (162, 10029, 143, 138, NULL, NULL, NULL, NULL, NULL, 2920.01, 2890.00, 2888.00, 773.00, 689.00, 0);
INSERT INTO `productDistinction` VALUES (163, 10029, 143, 139, NULL, NULL, NULL, NULL, NULL, 2920.01, 2890.00, 2888.00, 218.00, 222.00, 0);
INSERT INTO `productDistinction` VALUES (164, 10029, 143, 140, NULL, NULL, NULL, NULL, NULL, 2920.01, 2890.00, 2888.00, 218.00, 222.00, 0);
INSERT INTO `productDistinction` VALUES (165, 10030, 147, 144, NULL, NULL, NULL, NULL, NULL, 128.00, 119.00, 118.00, 770.00, 689.00, 1);
INSERT INTO `productDistinction` VALUES (166, 10030, 147, 145, NULL, NULL, NULL, NULL, NULL, 128.00, 119.00, 118.00, 60.00, 99.00, 1);
INSERT INTO `productDistinction` VALUES (167, 10030, 147, 146, NULL, NULL, NULL, NULL, NULL, 128.00, 119.00, 118.00, 64.00, 99.00, 1);
INSERT INTO `productDistinction` VALUES (168, 10030, 148, 144, NULL, NULL, NULL, NULL, NULL, 128.00, 119.00, 118.00, 773.00, 689.00, 1);
INSERT INTO `productDistinction` VALUES (169, 10030, 148, 145, NULL, NULL, NULL, NULL, NULL, 128.00, 119.00, 118.00, 869.00, 298.00, 1);
INSERT INTO `productDistinction` VALUES (170, 10030, 148, 146, NULL, NULL, NULL, NULL, NULL, 128.00, 119.00, 118.00, 66.00, 222.00, 1);
INSERT INTO `productDistinction` VALUES (171, 10030, 149, 144, NULL, NULL, NULL, NULL, NULL, 128.00, 119.00, 118.00, 974.00, 2888.00, 1);
INSERT INTO `productDistinction` VALUES (172, 10030, 149, 145, NULL, NULL, NULL, NULL, NULL, 128.00, 119.00, 118.00, 66.00, 666.00, 1);
INSERT INTO `productDistinction` VALUES (173, 10030, 149, 146, NULL, NULL, NULL, NULL, NULL, 128.00, 119.00, 118.00, 6855.00, 165138.00, 1);
INSERT INTO `productDistinction` VALUES (1360, 10001, NULL, 1, NULL, 5, NULL, NULL, 3, 0.00, NULL, NULL, 0.00, 0.00, 1);
INSERT INTO `productDistinction` VALUES (1361, 10001, NULL, 1, NULL, 5, NULL, NULL, 4, 0.00, NULL, NULL, 0.00, 0.00, 1);
INSERT INTO `productDistinction` VALUES (1362, 10001, NULL, 1, NULL, 6, NULL, NULL, 3, 0.00, NULL, NULL, 0.00, 0.00, 1);
INSERT INTO `productDistinction` VALUES (1363, 10001, NULL, 1, NULL, 6, NULL, NULL, 4, 0.00, NULL, NULL, 0.00, 0.00, 1);
INSERT INTO `productDistinction` VALUES (1364, 10001, NULL, 2, NULL, 5, NULL, NULL, 3, 0.00, NULL, NULL, 0.00, 0.00, 1);
INSERT INTO `productDistinction` VALUES (1365, 10001, NULL, 2, NULL, 5, NULL, NULL, 4, 0.00, NULL, NULL, 0.00, 0.00, 1);
INSERT INTO `productDistinction` VALUES (1366, 10001, NULL, 2, NULL, 6, NULL, NULL, 3, 0.00, NULL, NULL, 0.00, 0.00, 1);
INSERT INTO `productDistinction` VALUES (1367, 10001, NULL, 2, NULL, 6, NULL, NULL, 4, 0.00, NULL, NULL, 0.00, 0.00, 1);
INSERT INTO `productDistinction` VALUES (1368, 10001, NULL, 613, NULL, 5, NULL, NULL, 3, 0.00, NULL, NULL, 0.00, 0.00, 1);
INSERT INTO `productDistinction` VALUES (1369, 10001, NULL, 613, NULL, 5, NULL, NULL, 4, 0.00, NULL, NULL, 0.00, 0.00, 1);
INSERT INTO `productDistinction` VALUES (1370, 10001, NULL, 613, NULL, 6, NULL, NULL, 3, 0.00, NULL, NULL, 0.00, 0.00, 1);
INSERT INTO `productDistinction` VALUES (1371, 10001, NULL, 613, NULL, 6, NULL, NULL, 4, 0.00, NULL, NULL, 0.00, 0.00, 1);
INSERT INTO `productDistinction` VALUES (1372, 10001, NULL, 1, NULL, 5, NULL, NULL, 3, 0.00, NULL, NULL, 0.00, 0.00, 1);
INSERT INTO `productDistinction` VALUES (1373, 10001, NULL, 1, NULL, 5, NULL, NULL, 4, 0.00, NULL, NULL, 0.00, 0.00, 1);
INSERT INTO `productDistinction` VALUES (1374, 10001, NULL, 1, NULL, 6, NULL, NULL, 3, 0.00, NULL, NULL, 0.00, 0.00, 1);
INSERT INTO `productDistinction` VALUES (1375, 10001, NULL, 1, NULL, 6, NULL, NULL, 4, 0.00, NULL, NULL, 0.00, 0.00, 1);
INSERT INTO `productDistinction` VALUES (1376, 10001, NULL, 2, NULL, 5, NULL, NULL, 3, 0.00, NULL, NULL, 0.00, 0.00, 1);
INSERT INTO `productDistinction` VALUES (1377, 10001, NULL, 2, NULL, 5, NULL, NULL, 4, 0.00, NULL, NULL, 0.00, 0.00, 1);
INSERT INTO `productDistinction` VALUES (1378, 10001, NULL, 2, NULL, 6, NULL, NULL, 3, 0.00, NULL, NULL, 0.00, 0.00, 1);
INSERT INTO `productDistinction` VALUES (1379, 10001, NULL, 2, NULL, 6, NULL, NULL, 4, 0.00, NULL, NULL, 0.00, 0.00, 1);
INSERT INTO `productDistinction` VALUES (1380, 10001, NULL, 613, NULL, 5, NULL, NULL, 3, 0.00, NULL, NULL, 0.00, 0.00, 1);
INSERT INTO `productDistinction` VALUES (1381, 10001, NULL, 613, NULL, 5, NULL, NULL, 4, 0.00, NULL, NULL, 0.00, 0.00, 1);
INSERT INTO `productDistinction` VALUES (1382, 10001, NULL, 613, NULL, 6, NULL, NULL, 3, 0.00, NULL, NULL, 0.00, 0.00, 1);
INSERT INTO `productDistinction` VALUES (1383, 10001, NULL, 613, NULL, 6, NULL, NULL, 4, 0.00, NULL, NULL, 0.00, 0.00, 1);
INSERT INTO `productDistinction` VALUES (1384, 10001, NULL, 614, NULL, 5, NULL, NULL, 3, 0.00, NULL, NULL, 0.00, 0.00, 1);
INSERT INTO `productDistinction` VALUES (1385, 10001, NULL, 614, NULL, 5, NULL, NULL, 4, 0.00, NULL, NULL, 0.00, 0.00, 1);
INSERT INTO `productDistinction` VALUES (1386, 10001, NULL, 614, NULL, 6, NULL, NULL, 3, 0.00, NULL, NULL, 0.00, 0.00, 1);
INSERT INTO `productDistinction` VALUES (1387, 10001, NULL, 614, NULL, 6, NULL, NULL, 4, 0.00, NULL, NULL, 0.00, 0.00, 1);
INSERT INTO `productDistinction` VALUES (1388, 10001, NULL, 1, NULL, 5, NULL, NULL, 3, 5999.00, NULL, NULL, 20.00, 0.00, 1);
INSERT INTO `productDistinction` VALUES (1389, 10001, NULL, 1, NULL, 5, NULL, NULL, 4, 5999.25, NULL, NULL, 50.00, 0.00, 1);
INSERT INTO `productDistinction` VALUES (1390, 10001, NULL, 1, NULL, 6, NULL, NULL, 3, 953.45, NULL, NULL, 0.00, 0.00, 1);
INSERT INTO `productDistinction` VALUES (1391, 10001, NULL, 1, NULL, 6, NULL, NULL, 4, 55.56, NULL, NULL, 0.00, 0.00, 1);
INSERT INTO `productDistinction` VALUES (1392, 10001, NULL, 2, NULL, 5, NULL, NULL, 3, 5054.60, NULL, NULL, 0.00, 0.00, 1);
INSERT INTO `productDistinction` VALUES (1393, 10001, NULL, 2, NULL, 5, NULL, NULL, 4, 5.68, NULL, NULL, 0.00, 0.00, 1);
INSERT INTO `productDistinction` VALUES (1394, 10001, NULL, 2, NULL, 6, NULL, NULL, 3, 5523.00, NULL, NULL, 0.00, 0.00, 1);
INSERT INTO `productDistinction` VALUES (1395, 10001, NULL, 2, NULL, 6, NULL, NULL, 4, 1321.00, NULL, NULL, 0.00, 0.00, 1);
INSERT INTO `productDistinction` VALUES (1396, 10001, NULL, 613, NULL, 5, NULL, NULL, 3, 3131.00, NULL, NULL, 0.00, 0.00, 1);
INSERT INTO `productDistinction` VALUES (1397, 10001, NULL, 613, NULL, 5, NULL, NULL, 4, 31231.00, NULL, NULL, 531.00, 0.00, 1);
INSERT INTO `productDistinction` VALUES (1398, 10001, NULL, 613, NULL, 6, NULL, NULL, 3, 5341.00, NULL, NULL, 313.00, 0.00, 1);
INSERT INTO `productDistinction` VALUES (1399, 10001, NULL, 613, NULL, 6, NULL, NULL, 4, 545.00, NULL, NULL, 3132.00, 0.00, 1);
INSERT INTO `productDistinction` VALUES (1400, 10001, NULL, 614, NULL, 5, NULL, NULL, 3, 51321.00, NULL, NULL, 21231.00, 0.00, 1);
INSERT INTO `productDistinction` VALUES (1401, 10001, NULL, 614, NULL, 5, NULL, NULL, 4, 45656.00, NULL, NULL, 3213.00, 0.00, 1);
INSERT INTO `productDistinction` VALUES (1402, 10001, NULL, 614, NULL, 6, NULL, NULL, 3, 99999.00, NULL, NULL, 99999.00, 0.00, 1);
INSERT INTO `productDistinction` VALUES (1403, 10001, NULL, 614, NULL, 6, NULL, NULL, 4, 556.00, NULL, NULL, 0.00, 0.00, 1);
INSERT INTO `productDistinction` VALUES (1404, 10001, NULL, 615, NULL, 5, NULL, NULL, 3, 8886.00, NULL, NULL, 0.00, 0.00, 1);
INSERT INTO `productDistinction` VALUES (1405, 10001, NULL, 615, NULL, 5, NULL, NULL, 4, 31.88, NULL, NULL, 0.00, 0.00, 1);
INSERT INTO `productDistinction` VALUES (1406, 10001, NULL, 615, NULL, 6, NULL, NULL, 3, 5456.00, NULL, NULL, 0.00, 0.00, 1);
INSERT INTO `productDistinction` VALUES (1407, 10001, NULL, 615, NULL, 6, NULL, NULL, 4, 64556.00, NULL, NULL, 0.00, 0.00, 1);
INSERT INTO `productDistinction` VALUES (1408, 10013, NULL, NULL, NULL, 49, NULL, NULL, NULL, 0.00, NULL, NULL, 0.00, 0.00, 0);
INSERT INTO `productDistinction` VALUES (1409, 10013, NULL, NULL, NULL, 50, NULL, NULL, NULL, 0.00, NULL, NULL, 0.00, 0.00, 0);
INSERT INTO `productDistinction` VALUES (1410, 10013, NULL, NULL, NULL, 51, NULL, NULL, NULL, 0.00, NULL, NULL, 0.00, 0.00, 0);
INSERT INTO `productDistinction` VALUES (1411, 10013, NULL, NULL, NULL, 52, NULL, NULL, NULL, 0.00, NULL, NULL, 0.00, 0.00, 0);
INSERT INTO `productDistinction` VALUES (1412, 10013, NULL, NULL, NULL, 616, NULL, NULL, NULL, 0.00, NULL, NULL, 0.00, 0.00, 0);
INSERT INTO `productDistinction` VALUES (1413, 10030, 147, 144, 617, NULL, NULL, NULL, NULL, 10.00, NULL, NULL, 1.00, 0.00, 0);
INSERT INTO `productDistinction` VALUES (1414, 10030, 147, 144, 618, NULL, NULL, NULL, NULL, 10.00, NULL, NULL, 2.00, 0.00, 0);
INSERT INTO `productDistinction` VALUES (1415, 10030, 147, 145, 617, NULL, NULL, NULL, NULL, 10.00, NULL, NULL, 3.00, 0.00, 0);
INSERT INTO `productDistinction` VALUES (1416, 10030, 147, 145, 618, NULL, NULL, NULL, NULL, 10.00, NULL, NULL, 4.00, 0.00, 0);
INSERT INTO `productDistinction` VALUES (1417, 10030, 147, 146, 617, NULL, NULL, NULL, NULL, 10.00, NULL, NULL, 5.00, 0.00, 0);
INSERT INTO `productDistinction` VALUES (1418, 10030, 147, 146, 618, NULL, NULL, NULL, NULL, 10.00, NULL, NULL, 6.00, 0.00, 0);
INSERT INTO `productDistinction` VALUES (1419, 10030, 148, 144, 617, NULL, NULL, NULL, NULL, 10.00, NULL, NULL, 0.00, 0.00, 0);
INSERT INTO `productDistinction` VALUES (1420, 10030, 148, 144, 618, NULL, NULL, NULL, NULL, 10.00, NULL, NULL, 0.00, 0.00, 0);
INSERT INTO `productDistinction` VALUES (1421, 10030, 148, 145, 617, NULL, NULL, NULL, NULL, 10.00, NULL, NULL, 0.00, 0.00, 0);
INSERT INTO `productDistinction` VALUES (1422, 10030, 148, 145, 618, NULL, NULL, NULL, NULL, 10.00, NULL, NULL, 0.00, 0.00, 0);
INSERT INTO `productDistinction` VALUES (1423, 10030, 148, 146, 617, NULL, NULL, NULL, NULL, 23.00, NULL, NULL, 123.00, 0.00, 0);
INSERT INTO `productDistinction` VALUES (1424, 10030, 148, 146, 618, NULL, NULL, NULL, NULL, 323.00, NULL, NULL, 0.00, 0.00, 0);
INSERT INTO `productDistinction` VALUES (1425, 10030, 149, 144, 617, NULL, NULL, NULL, NULL, 323.00, NULL, NULL, 0.00, 0.00, 0);
INSERT INTO `productDistinction` VALUES (1426, 10030, 149, 144, 618, NULL, NULL, NULL, NULL, 23.00, NULL, NULL, 0.00, 0.00, 0);
INSERT INTO `productDistinction` VALUES (1427, 10030, 149, 145, 617, NULL, NULL, NULL, NULL, 321.00, NULL, NULL, 0.00, 0.00, 0);
INSERT INTO `productDistinction` VALUES (1428, 10030, 149, 145, 618, NULL, NULL, NULL, NULL, 32.00, NULL, NULL, 0.00, 0.00, 0);
INSERT INTO `productDistinction` VALUES (1429, 10030, 149, 146, 617, NULL, NULL, NULL, NULL, 32.00, NULL, NULL, 0.00, 0.00, 0);
INSERT INTO `productDistinction` VALUES (1430, 10030, 149, 146, 618, NULL, NULL, NULL, NULL, 32.00, NULL, NULL, 0.00, 0.00, 0);
INSERT INTO `productDistinction` VALUES (1431, 10001, NULL, 1, NULL, 5, NULL, NULL, 3, 0.00, NULL, NULL, 0.00, 0.00, 0);
INSERT INTO `productDistinction` VALUES (1432, 10001, NULL, 1, NULL, 5, NULL, NULL, 4, 0.00, NULL, NULL, 0.00, 0.00, 0);
INSERT INTO `productDistinction` VALUES (1433, 10001, NULL, 1, NULL, 6, NULL, NULL, 3, 0.00, NULL, NULL, 0.00, 0.00, 0);
INSERT INTO `productDistinction` VALUES (1434, 10001, NULL, 1, NULL, 6, NULL, NULL, 4, 0.00, NULL, NULL, 0.00, 0.00, 0);
INSERT INTO `productDistinction` VALUES (1435, 10001, NULL, 1, NULL, 619, NULL, NULL, 3, 0.00, NULL, NULL, 0.00, 0.00, 0);
INSERT INTO `productDistinction` VALUES (1436, 10001, NULL, 1, NULL, 619, NULL, NULL, 4, 0.00, NULL, NULL, 0.00, 0.00, 0);
INSERT INTO `productDistinction` VALUES (1437, 10001, NULL, 2, NULL, 5, NULL, NULL, 3, 0.00, NULL, NULL, 0.00, 0.00, 0);
INSERT INTO `productDistinction` VALUES (1438, 10001, NULL, 2, NULL, 5, NULL, NULL, 4, 0.00, NULL, NULL, 0.00, 0.00, 0);
INSERT INTO `productDistinction` VALUES (1439, 10001, NULL, 2, NULL, 6, NULL, NULL, 3, 0.00, NULL, NULL, 0.00, 0.00, 0);
INSERT INTO `productDistinction` VALUES (1440, 10001, NULL, 2, NULL, 6, NULL, NULL, 4, 0.00, NULL, NULL, 0.00, 0.00, 0);
INSERT INTO `productDistinction` VALUES (1441, 10001, NULL, 2, NULL, 619, NULL, NULL, 3, 0.00, NULL, NULL, 0.00, 0.00, 0);
INSERT INTO `productDistinction` VALUES (1442, 10001, NULL, 2, NULL, 619, NULL, NULL, 4, 0.00, NULL, NULL, 0.00, 0.00, 0);
INSERT INTO `productDistinction` VALUES (1443, 10001, NULL, 613, NULL, 5, NULL, NULL, 3, 0.00, NULL, NULL, 0.00, 0.00, 0);
INSERT INTO `productDistinction` VALUES (1444, 10001, NULL, 613, NULL, 5, NULL, NULL, 4, 0.00, NULL, NULL, 0.00, 0.00, 0);
INSERT INTO `productDistinction` VALUES (1445, 10001, NULL, 613, NULL, 6, NULL, NULL, 3, 0.00, NULL, NULL, 0.00, 0.00, 0);
INSERT INTO `productDistinction` VALUES (1446, 10001, NULL, 613, NULL, 6, NULL, NULL, 4, 0.00, NULL, NULL, 0.00, 0.00, 0);
INSERT INTO `productDistinction` VALUES (1447, 10001, NULL, 613, NULL, 619, NULL, NULL, 3, 0.00, NULL, NULL, 0.00, 0.00, 0);
INSERT INTO `productDistinction` VALUES (1448, 10001, NULL, 613, NULL, 619, NULL, NULL, 4, 0.00, NULL, NULL, 0.00, 0.00, 0);
INSERT INTO `productDistinction` VALUES (1449, 10001, NULL, 614, NULL, 5, NULL, NULL, 3, 0.00, NULL, NULL, 0.00, 0.00, 0);
INSERT INTO `productDistinction` VALUES (1450, 10001, NULL, 614, NULL, 5, NULL, NULL, 4, 0.00, NULL, NULL, 0.00, 0.00, 0);
INSERT INTO `productDistinction` VALUES (1451, 10001, NULL, 614, NULL, 6, NULL, NULL, 3, 0.00, NULL, NULL, 0.00, 0.00, 0);
INSERT INTO `productDistinction` VALUES (1452, 10001, NULL, 614, NULL, 6, NULL, NULL, 4, 0.00, NULL, NULL, 0.00, 0.00, 0);
INSERT INTO `productDistinction` VALUES (1453, 10001, NULL, 614, NULL, 619, NULL, NULL, 3, 0.00, NULL, NULL, 0.00, 0.00, 0);
INSERT INTO `productDistinction` VALUES (1454, 10001, NULL, 614, NULL, 619, NULL, NULL, 4, 0.00, NULL, NULL, 0.00, 0.00, 0);
INSERT INTO `productDistinction` VALUES (1455, 10001, NULL, 615, NULL, 5, NULL, NULL, 3, 0.00, NULL, NULL, 0.00, 0.00, 0);
INSERT INTO `productDistinction` VALUES (1456, 10001, NULL, 615, NULL, 5, NULL, NULL, 4, 0.00, NULL, NULL, 0.00, 0.00, 0);
INSERT INTO `productDistinction` VALUES (1457, 10001, NULL, 615, NULL, 6, NULL, NULL, 3, 0.00, NULL, NULL, 0.00, 0.00, 0);
INSERT INTO `productDistinction` VALUES (1458, 10001, NULL, 615, NULL, 6, NULL, NULL, 4, 0.00, NULL, NULL, 0.00, 0.00, 0);
INSERT INTO `productDistinction` VALUES (1459, 10001, NULL, 615, NULL, 619, NULL, NULL, 3, 0.00, NULL, NULL, 0.00, 0.00, 0);
INSERT INTO `productDistinction` VALUES (1460, 10001, NULL, 615, NULL, 619, NULL, NULL, 4, 0.00, NULL, NULL, 0.00, 0.00, 0);
INSERT INTO `productDistinction` VALUES (1465, 10021, NULL, NULL, 84, NULL, NULL, NULL, NULL, 110.00, NULL, NULL, 12.00, 0.00, 1);
INSERT INTO `productDistinction` VALUES (1466, 10021, NULL, NULL, 85, NULL, NULL, NULL, NULL, 1001.00, NULL, NULL, 1.00, 0.00, 1);
INSERT INTO `productDistinction` VALUES (1467, 10021, NULL, NULL, 86, NULL, NULL, NULL, NULL, 123.00, NULL, NULL, 1.00, 0.00, 1);
INSERT INTO `productDistinction` VALUES (1468, 10021, NULL, NULL, 620, NULL, NULL, NULL, NULL, 132.00, NULL, NULL, 1.00, 0.00, 1);
INSERT INTO `productDistinction` VALUES (1469, 10021, NULL, NULL, 621, NULL, NULL, NULL, NULL, 213.00, NULL, NULL, 1.00, 0.00, 1);
INSERT INTO `productDistinction` VALUES (1470, 10021, NULL, NULL, 84, NULL, NULL, NULL, NULL, 0.00, NULL, NULL, 0.00, 0.00, 0);
INSERT INTO `productDistinction` VALUES (1471, 10021, NULL, NULL, 85, NULL, NULL, NULL, NULL, 0.00, NULL, NULL, 0.00, 0.00, 0);
INSERT INTO `productDistinction` VALUES (1472, 10021, NULL, NULL, 86, NULL, NULL, NULL, NULL, 0.00, NULL, NULL, 0.00, 0.00, 0);
INSERT INTO `productDistinction` VALUES (1473, 10021, NULL, NULL, 620, NULL, NULL, NULL, NULL, 0.00, NULL, NULL, 0.00, 0.00, 0);
INSERT INTO `productDistinction` VALUES (1474, 10021, NULL, NULL, 621, NULL, NULL, NULL, NULL, 0.00, NULL, NULL, 0.00, 0.00, 0);
INSERT INTO `productDistinction` VALUES (1475, 10021, NULL, NULL, 622, NULL, NULL, NULL, NULL, 0.00, NULL, NULL, 0.00, 0.00, 0);

-- ----------------------------
-- Table structure for product_final_category
-- ----------------------------
DROP TABLE IF EXISTS `product_final_category`;
CREATE TABLE `product_final_category`  (
  `product_final_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_secondary_id` int(11) NULL DEFAULT NULL,
  `final_content` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `show_sign` int(11) NULL DEFAULT 0,
  PRIMARY KEY (`product_final_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10498 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of product_final_category
-- ----------------------------
INSERT INTO `product_final_category` VALUES (10001, 1001, '轻薄电视', 1);
INSERT INTO `product_final_category` VALUES (10002, 1001, '全屏电视', 1);
INSERT INTO `product_final_category` VALUES (10003, 1001, '智能电视', 1);
INSERT INTO `product_final_category` VALUES (10004, 1001, '智慧屏', 1);
INSERT INTO `product_final_category` VALUES (10005, 1001, '4k超清电视', 1);
INSERT INTO `product_final_category` VALUES (10006, 1001, '55英寸电视', 1);
INSERT INTO `product_final_category` VALUES (10007, 1001, '65英寸', 1);
INSERT INTO `product_final_category` VALUES (10008, 1001, '电视配件', 1);
INSERT INTO `product_final_category` VALUES (10009, 1002, '空调挂机', 1);
INSERT INTO `product_final_category` VALUES (10010, 1002, '空调柜机', 1);
INSERT INTO `product_final_category` VALUES (10011, 1002, '变频空调', 1);
INSERT INTO `product_final_category` VALUES (10012, 1002, '一级能效', 1);
INSERT INTO `product_final_category` VALUES (10013, 1002, '移动空调', 1);
INSERT INTO `product_final_category` VALUES (10014, 1002, '以旧换新', 1);
INSERT INTO `product_final_category` VALUES (10015, 1003, '滚筒洗衣机', 1);
INSERT INTO `product_final_category` VALUES (10016, 1003, '洗烘一体', 1);
INSERT INTO `product_final_category` VALUES (10017, 1003, '波轮洗衣机', 1);
INSERT INTO `product_final_category` VALUES (10018, 1003, '迷你洗衣机', 1);
INSERT INTO `product_final_category` VALUES (10019, 1003, '烘干机', 1);
INSERT INTO `product_final_category` VALUES (10020, 1003, '洗衣机配件', 1);
INSERT INTO `product_final_category` VALUES (10021, 1004, '多门', 1);
INSERT INTO `product_final_category` VALUES (10022, 1004, '对开门', 1);
INSERT INTO `product_final_category` VALUES (10023, 1004, '三门', 1);
INSERT INTO `product_final_category` VALUES (10024, 1004, '双门', 1);
INSERT INTO `product_final_category` VALUES (10025, 1004, '冰柜冰吧', 1);
INSERT INTO `product_final_category` VALUES (10026, 1004, '酒柜', 1);
INSERT INTO `product_final_category` VALUES (10027, 1004, '冰箱配件', 1);
INSERT INTO `product_final_category` VALUES (10028, 1004, '多功能', 1);
INSERT INTO `product_final_category` VALUES (10029, 1005, '油烟机', 1);
INSERT INTO `product_final_category` VALUES (10030, 1005, '燃气灶', 1);
INSERT INTO `product_final_category` VALUES (10031, 1005, '烟灶套装', 1);
INSERT INTO `product_final_category` VALUES (10032, 1005, '集成灶', 1);
INSERT INTO `product_final_category` VALUES (10033, 1005, '消毒柜', 1);
INSERT INTO `product_final_category` VALUES (10034, 1005, '洗碗机', 1);
INSERT INTO `product_final_category` VALUES (10035, 1005, '热水器', 1);
INSERT INTO `product_final_category` VALUES (10036, 1005, '空气热水器', 1);
INSERT INTO `product_final_category` VALUES (10037, 1005, '面包机', 1);
INSERT INTO `product_final_category` VALUES (10038, 1006, '破壁机', 1);
INSERT INTO `product_final_category` VALUES (10039, 1006, '电烤箱', 1);
INSERT INTO `product_final_category` VALUES (10040, 1006, '电饭煲', 1);
INSERT INTO `product_final_category` VALUES (10041, 1006, '电压力锅', 1);
INSERT INTO `product_final_category` VALUES (10042, 1006, '电炖锅', 1);
INSERT INTO `product_final_category` VALUES (10043, 1006, '豆浆机', 1);
INSERT INTO `product_final_category` VALUES (10044, 1006, '料理机', 1);
INSERT INTO `product_final_category` VALUES (10045, 1006, '咖啡机', 1);
INSERT INTO `product_final_category` VALUES (10046, 1006, '电火炉', 1);
INSERT INTO `product_final_category` VALUES (10047, 1007, '电风扇', 1);
INSERT INTO `product_final_category` VALUES (10048, 1007, '冷风扇', 1);
INSERT INTO `product_final_category` VALUES (10049, 1007, '空气争化器', 1);
INSERT INTO `product_final_category` VALUES (10050, 1007, '吸尘器', 1);
INSERT INTO `product_final_category` VALUES (10051, 1007, '除螨仪', 1);
INSERT INTO `product_final_category` VALUES (10052, 1007, '扫地机器人', 1);
INSERT INTO `product_final_category` VALUES (10053, 1007, '除湿机', 1);
INSERT INTO `product_final_category` VALUES (10054, 1007, '干衣机', 1);
INSERT INTO `product_final_category` VALUES (10055, 1008, '剃须刀', 1);
INSERT INTO `product_final_category` VALUES (10056, 1008, '电动牙刷', 1);
INSERT INTO `product_final_category` VALUES (10057, 1008, '电吹风', 1);
INSERT INTO `product_final_category` VALUES (10058, 1008, '美容器', 1);
INSERT INTO `product_final_category` VALUES (10059, 1008, '洁面仪', 1);
INSERT INTO `product_final_category` VALUES (10060, 1008, '按摩器', 1);
INSERT INTO `product_final_category` VALUES (10061, 1008, '健康秤', 1);
INSERT INTO `product_final_category` VALUES (10062, 1009, '手机', 1);
INSERT INTO `product_final_category` VALUES (10063, 1009, '游戏手机', 1);
INSERT INTO `product_final_category` VALUES (10064, 1009, '5G手机', 1);
INSERT INTO `product_final_category` VALUES (10065, 1009, '拍照手机', 1);
INSERT INTO `product_final_category` VALUES (10066, 1009, '全面屏手机', 1);
INSERT INTO `product_final_category` VALUES (10067, 1009, '老人机', 1);
INSERT INTO `product_final_category` VALUES (10068, 1009, '对讲机', 1);
INSERT INTO `product_final_category` VALUES (10069, 1009, '以旧换新', 1);
INSERT INTO `product_final_category` VALUES (10070, 1010, '手机壳', 1);
INSERT INTO `product_final_category` VALUES (10071, 1010, '贴膜', 1);
INSERT INTO `product_final_category` VALUES (10072, 1010, '手机存储卡', 1);
INSERT INTO `product_final_category` VALUES (10073, 1010, '数据线', 1);
INSERT INTO `product_final_category` VALUES (10074, 1010, '充电器', 1);
INSERT INTO `product_final_category` VALUES (10075, 1010, '手机耳机', 1);
INSERT INTO `product_final_category` VALUES (10076, 1010, '创意配件', 1);
INSERT INTO `product_final_category` VALUES (10077, 1010, '手机饰品', 1);
INSERT INTO `product_final_category` VALUES (10078, 1010, '手机电池', 1);
INSERT INTO `product_final_category` VALUES (10079, 1011, '合约机', 1);
INSERT INTO `product_final_category` VALUES (10080, 1011, '手机卡', 1);
INSERT INTO `product_final_category` VALUES (10081, 1011, '宽带', 1);
INSERT INTO `product_final_category` VALUES (10082, 1011, '充话费流量', 1);
INSERT INTO `product_final_category` VALUES (10083, 1011, '中国电信', 1);
INSERT INTO `product_final_category` VALUES (10084, 1011, '中国移动', 1);
INSERT INTO `product_final_category` VALUES (10085, 1011, '中国联通', 1);
INSERT INTO `product_final_category` VALUES (10086, 1011, '京东通信', 1);
INSERT INTO `product_final_category` VALUES (10087, 1012, '数码相机', 1);
INSERT INTO `product_final_category` VALUES (10088, 1012, '微单相机', 1);
INSERT INTO `product_final_category` VALUES (10089, 1012, '单反相机', 1);
INSERT INTO `product_final_category` VALUES (10090, 1012, '拍立得', 1);
INSERT INTO `product_final_category` VALUES (10091, 1012, '运动相机', 1);
INSERT INTO `product_final_category` VALUES (10092, 1012, '摄像机', 1);
INSERT INTO `product_final_category` VALUES (10093, 1012, '镜头', 1);
INSERT INTO `product_final_category` VALUES (10094, 1012, '户外器材', 1);
INSERT INTO `product_final_category` VALUES (10095, 1012, '影棚器材', 1);
INSERT INTO `product_final_category` VALUES (10096, 1013, '存储卡', 1);
INSERT INTO `product_final_category` VALUES (10097, 1013, '三脚架云台', 1);
INSERT INTO `product_final_category` VALUES (10098, 1013, '相机包', 1);
INSERT INTO `product_final_category` VALUES (10099, 1013, '滤鏡', 1);
INSERT INTO `product_final_category` VALUES (10100, 1013, '闪光灯 手柄', 1);
INSERT INTO `product_final_category` VALUES (10101, 1013, '相机清洁贴膜', 1);
INSERT INTO `product_final_category` VALUES (10102, 1013, '机身附件', 1);
INSERT INTO `product_final_category` VALUES (10103, 1013, '镜头附件', 1);
INSERT INTO `product_final_category` VALUES (10104, 1014, '耳机耳麦', 1);
INSERT INTO `product_final_category` VALUES (10105, 1014, '音箱音响', 1);
INSERT INTO `product_final_category` VALUES (10106, 1014, '智能音箱', 1);
INSERT INTO `product_final_category` VALUES (10107, 1014, '便携无线音箱', 1);
INSERT INTO `product_final_category` VALUES (10108, 1014, '收音机', 1);
INSERT INTO `product_final_category` VALUES (10109, 1014, '麦克风', 1);
INSERT INTO `product_final_category` VALUES (10110, 1014, 'MP3 MP4', 1);
INSERT INTO `product_final_category` VALUES (10111, 1014, '专业音频', 1);
INSERT INTO `product_final_category` VALUES (10112, 1015, '手表', 1);
INSERT INTO `product_final_category` VALUES (10113, 1015, '智能手表', 1);
INSERT INTO `product_final_category` VALUES (10114, 1015, '智能眼镜', 1);
INSERT INTO `product_final_category` VALUES (10115, 1015, '智能机器人', 1);
INSERT INTO `product_final_category` VALUES (10116, 1015, '运动跟踪器', 1);
INSERT INTO `product_final_category` VALUES (10117, 1015, '健康监测', 1);
INSERT INTO `product_final_category` VALUES (10118, 1015, '智能配饰', 1);
INSERT INTO `product_final_category` VALUES (10119, 1016, '学生平板', 1);
INSERT INTO `product_final_category` VALUES (10120, 1016, '点读机 笔', 1);
INSERT INTO `product_final_category` VALUES (10121, 1016, '早教益智', 1);
INSERT INTO `product_final_category` VALUES (10122, 1016, '录音笔', 1);
INSERT INTO `product_final_category` VALUES (10123, 1016, '电纸书', 1);
INSERT INTO `product_final_category` VALUES (10124, 1016, '电子词典', 1);
INSERT INTO `product_final_category` VALUES (10125, 1016, '复读机翻译机', 1);
INSERT INTO `product_final_category` VALUES (10126, 1017, '笔记本', 1);
INSERT INTO `product_final_category` VALUES (10127, 1017, '游戏本', 1);
INSERT INTO `product_final_category` VALUES (10128, 1017, '平板电脑', 1);
INSERT INTO `product_final_category` VALUES (10129, 1017, '台式机', 1);
INSERT INTO `product_final_category` VALUES (10130, 1017, '一体机', 1);
INSERT INTO `product_final_category` VALUES (10131, 1017, '服务器 工作站', 1);
INSERT INTO `product_final_category` VALUES (10132, 1018, '显示器', 1);
INSERT INTO `product_final_category` VALUES (10133, 1018, 'CPU', 1);
INSERT INTO `product_final_category` VALUES (10134, 1018, '主板', 1);
INSERT INTO `product_final_category` VALUES (10135, 1018, '显卡', 1);
INSERT INTO `product_final_category` VALUES (10136, 1018, '硬盘', 1);
INSERT INTO `product_final_category` VALUES (10137, 1018, '内存', 1);
INSERT INTO `product_final_category` VALUES (10138, 1018, '机箱', 1);
INSERT INTO `product_final_category` VALUES (10139, 1018, '电源', 1);
INSERT INTO `product_final_category` VALUES (10140, 1019, '鼠标', 1);
INSERT INTO `product_final_category` VALUES (10141, 1019, '键盘', 1);
INSERT INTO `product_final_category` VALUES (10142, 1019, '键鼠套装', 1);
INSERT INTO `product_final_category` VALUES (10143, 1019, '网络仪表仪器', 1);
INSERT INTO `product_final_category` VALUES (10144, 1019, 'U盘', 1);
INSERT INTO `product_final_category` VALUES (10145, 1019, '移动硬盘', 1);
INSERT INTO `product_final_category` VALUES (10146, 1019, '鼠标垫', 1);
INSERT INTO `product_final_category` VALUES (10147, 1019, '摄像头', 1);
INSERT INTO `product_final_category` VALUES (10148, 1020, '游戏机', 1);
INSERT INTO `product_final_category` VALUES (10149, 1020, '游戏耳机', 1);
INSERT INTO `product_final_category` VALUES (10150, 1020, '手柄 方向盘', 1);
INSERT INTO `product_final_category` VALUES (10151, 1020, '游戏软件', 1);
INSERT INTO `product_final_category` VALUES (10152, 1020, '游戏周边', 1);
INSERT INTO `product_final_category` VALUES (10153, 1021, '路由器', 1);
INSERT INTO `product_final_category` VALUES (10154, 1021, '网络机顶盒', 1);
INSERT INTO `product_final_category` VALUES (10155, 1021, '交换机', 1);
INSERT INTO `product_final_category` VALUES (10156, 1021, '网络存储', 1);
INSERT INTO `product_final_category` VALUES (10157, 1021, '网卡', 1);
INSERT INTO `product_final_category` VALUES (10158, 1021, '5G 4G上网', 1);
INSERT INTO `product_final_category` VALUES (10159, 1021, '网线', 1);
INSERT INTO `product_final_category` VALUES (10160, 1021, '网络配件', 1);
INSERT INTO `product_final_category` VALUES (10161, 1022, '投影机', 1);
INSERT INTO `product_final_category` VALUES (10162, 1022, '投影配件', 1);
INSERT INTO `product_final_category` VALUES (10163, 1022, '打印机', 1);
INSERT INTO `product_final_category` VALUES (10164, 1022, '传真设备', 1);
INSERT INTO `product_final_category` VALUES (10165, 1022, '验钞 点钞机', 1);
INSERT INTO `product_final_category` VALUES (10166, 1022, '扫描设备', 1);
INSERT INTO `product_final_category` VALUES (10167, 1022, '复合机', 1);
INSERT INTO `product_final_category` VALUES (10168, 1022, '碎纸机', 1);
INSERT INTO `product_final_category` VALUES (10169, 1023, '笔类', 1);
INSERT INTO `product_final_category` VALUES (10170, 1023, '本册 便签', 1);
INSERT INTO `product_final_category` VALUES (10171, 1023, '办公文具', 1);
INSERT INTO `product_final_category` VALUES (10172, 1023, '文件收纳', 1);
INSERT INTO `product_final_category` VALUES (10173, 1023, '学生文具', 1);
INSERT INTO `product_final_category` VALUES (10174, 1023, '计算器', 1);
INSERT INTO `product_final_category` VALUES (10175, 1023, '画具画材', 1);
INSERT INTO `product_final_category` VALUES (10176, 1023, '财会用品', 1);
INSERT INTO `product_final_category` VALUES (10177, 1024, '硒鼓 墨粉', 1);
INSERT INTO `product_final_category` VALUES (10178, 1024, '墨盒', 1);
INSERT INTO `product_final_category` VALUES (10179, 1024, '色带', 1);
INSERT INTO `product_final_category` VALUES (10180, 1024, '纸类', 1);
INSERT INTO `product_final_category` VALUES (10181, 1024, '刻录光盘', 1);
INSERT INTO `product_final_category` VALUES (10182, 1025, '当季热卖', 1);
INSERT INTO `product_final_category` VALUES (10183, 1025, '新品推荐', 1);
INSERT INTO `product_final_category` VALUES (10184, 1025, 'T恤', 1);
INSERT INTO `product_final_category` VALUES (10185, 1025, '牛仔裤', 1);
INSERT INTO `product_final_category` VALUES (10186, 1025, '休闲裤', 1);
INSERT INTO `product_final_category` VALUES (10187, 1025, '衬衫', 1);
INSERT INTO `product_final_category` VALUES (10188, 1025, '短裤', 1);
INSERT INTO `product_final_category` VALUES (10189, 1026, '当季热卖', 1);
INSERT INTO `product_final_category` VALUES (10190, 1026, '新品推荐', 1);
INSERT INTO `product_final_category` VALUES (10191, 1026, '商场同款', 1);
INSERT INTO `product_final_category` VALUES (10192, 1026, '时尚套装', 1);
INSERT INTO `product_final_category` VALUES (10193, 1026, '连衣裙', 1);
INSERT INTO `product_final_category` VALUES (10194, 1026, '半身裙', 1);
INSERT INTO `product_final_category` VALUES (10195, 1026, 'T恤衬衫', 1);
INSERT INTO `product_final_category` VALUES (10196, 1027, '文胸', 1);
INSERT INTO `product_final_category` VALUES (10197, 1027, '睡衣 家居服', 1);
INSERT INTO `product_final_category` VALUES (10198, 1027, '男士内裤', 1);
INSERT INTO `product_final_category` VALUES (10199, 1027, '女士内裤', 1);
INSERT INTO `product_final_category` VALUES (10200, 1027, '吊带 背心', 1);
INSERT INTO `product_final_category` VALUES (10201, 1027, '文胸套装', 1);
INSERT INTO `product_final_category` VALUES (10202, 1027, '情侣睡衣', 1);
INSERT INTO `product_final_category` VALUES (10203, 1027, '塑身美体', 1);
INSERT INTO `product_final_category` VALUES (10204, 1028, '女士围巾 披肩', 1);
INSERT INTO `product_final_category` VALUES (10205, 1028, '光学镜架镜片', 1);
INSERT INTO `product_final_category` VALUES (10206, 1028, '真皮手套', 1);
INSERT INTO `product_final_category` VALUES (10207, 1028, '毛线帽', 1);
INSERT INTO `product_final_category` VALUES (10208, 1028, '太阳镜', 1);
INSERT INTO `product_final_category` VALUES (10209, 1028, '棒球帽', 1);
INSERT INTO `product_final_category` VALUES (10210, 1028, '防辐射', 1);
INSERT INTO `product_final_category` VALUES (10211, 1029, '套装', 1);
INSERT INTO `product_final_category` VALUES (10212, 1029, '卫衣', 1);
INSERT INTO `product_final_category` VALUES (10213, 1029, '裤子', 1);
INSERT INTO `product_final_category` VALUES (10214, 1029, '外套 大衣', 1);
INSERT INTO `product_final_category` VALUES (10215, 1029, '毛衣 针织衫', 1);
INSERT INTO `product_final_category` VALUES (10216, 1029, '衬衫', 1);
INSERT INTO `product_final_category` VALUES (10217, 1029, '户外 运动服', 1);
INSERT INTO `product_final_category` VALUES (10218, 1030, '运动鞋', 1);
INSERT INTO `product_final_category` VALUES (10219, 1030, '靴子', 1);
INSERT INTO `product_final_category` VALUES (10220, 1030, '帆布鞋', 1);
INSERT INTO `product_final_category` VALUES (10221, 1030, '皮鞋', 1);
INSERT INTO `product_final_category` VALUES (10222, 1030, '棉鞋', 1);
INSERT INTO `product_final_category` VALUES (10223, 1030, '凉鞋', 1);
INSERT INTO `product_final_category` VALUES (10224, 1030, '拖鞋', 1);
INSERT INTO `product_final_category` VALUES (10225, 1031, '礼盒', 1);
INSERT INTO `product_final_category` VALUES (10226, 1031, '卸妆', 1);
INSERT INTO `product_final_category` VALUES (10227, 1031, '美白', 1);
INSERT INTO `product_final_category` VALUES (10228, 1031, '防晒', 1);
INSERT INTO `product_final_category` VALUES (10229, 1031, '面膜', 1);
INSERT INTO `product_final_category` VALUES (10230, 1031, '洁面', 1);
INSERT INTO `product_final_category` VALUES (10231, 1031, '爽肤', 1);
INSERT INTO `product_final_category` VALUES (10232, 1031, '水精华', 1);
INSERT INTO `product_final_category` VALUES (10233, 1031, '眼霜', 1);
INSERT INTO `product_final_category` VALUES (10234, 1031, '乳液 霜', 1);
INSERT INTO `product_final_category` VALUES (10235, 1032, '隔离', 1);
INSERT INTO `product_final_category` VALUES (10236, 1032, '遮瑕', 1);
INSERT INTO `product_final_category` VALUES (10237, 1032, '气热BB', 1);
INSERT INTO `product_final_category` VALUES (10238, 1032, '粉底', 1);
INSERT INTO `product_final_category` VALUES (10239, 1032, '腮红', 1);
INSERT INTO `product_final_category` VALUES (10240, 1032, '口红 唇膏', 1);
INSERT INTO `product_final_category` VALUES (10241, 1032, '唇釉 唇彩', 1);
INSERT INTO `product_final_category` VALUES (10242, 1032, '睫毛膏', 1);
INSERT INTO `product_final_category` VALUES (10243, 1032, '眼影', 1);
INSERT INTO `product_final_category` VALUES (10244, 1033, '眼线', 1);
INSERT INTO `product_final_category` VALUES (10245, 1033, '眉笔 眉粉', 1);
INSERT INTO `product_final_category` VALUES (10246, 1033, '洗发水', 1);
INSERT INTO `product_final_category` VALUES (10247, 1033, '护发素', 1);
INSERT INTO `product_final_category` VALUES (10248, 1033, '发膜 精油', 1);
INSERT INTO `product_final_category` VALUES (10249, 1033, '造型', 1);
INSERT INTO `product_final_category` VALUES (10250, 1033, '染发', 1);
INSERT INTO `product_final_category` VALUES (10251, 1033, '烫发', 1);
INSERT INTO `product_final_category` VALUES (10252, 1033, '假发', 1);
INSERT INTO `product_final_category` VALUES (10253, 1034, '美发工具', 1);
INSERT INTO `product_final_category` VALUES (10254, 1034, '卫生巾', 1);
INSERT INTO `product_final_category` VALUES (10255, 1034, '卫生棉条', 1);
INSERT INTO `product_final_category` VALUES (10256, 1034, '卫生护垫', 1);
INSERT INTO `product_final_category` VALUES (10257, 1034, '私处护理', 1);
INSERT INTO `product_final_category` VALUES (10258, 1035, '抽纸', 1);
INSERT INTO `product_final_category` VALUES (10259, 1035, '卷紙', 1);
INSERT INTO `product_final_category` VALUES (10260, 1035, '湿巾', 1);
INSERT INTO `product_final_category` VALUES (10261, 1035, '厨房用纸', 1);
INSERT INTO `product_final_category` VALUES (10262, 1035, '湿厕纸', 1);
INSERT INTO `product_final_category` VALUES (10263, 1035, '洗衣疑珠', 1);
INSERT INTO `product_final_category` VALUES (10264, 1035, '洗衣液', 1);
INSERT INTO `product_final_category` VALUES (10265, 1035, '洗衣粉', 1);
INSERT INTO `product_final_category` VALUES (10266, 1035, '肥皂', 1);
INSERT INTO `product_final_category` VALUES (10267, 1036, '洗洁精', 1);
INSERT INTO `product_final_category` VALUES (10268, 1036, '油污净', 1);
INSERT INTO `product_final_category` VALUES (10269, 1036, '洁厕剂', 1);
INSERT INTO `product_final_category` VALUES (10270, 1036, '消毒液', 1);
INSERT INTO `product_final_category` VALUES (10271, 1036, '地板清洁剂', 1);
INSERT INTO `product_final_category` VALUES (10272, 1036, '垃圾袋', 1);
INSERT INTO `product_final_category` VALUES (10273, 1036, '垃圾桶', 1);
INSERT INTO `product_final_category` VALUES (10274, 1036, '拖把 扫把', 1);
INSERT INTO `product_final_category` VALUES (10275, 1037, '狗粮', 1);
INSERT INTO `product_final_category` VALUES (10276, 1037, '狗罐头', 1);
INSERT INTO `product_final_category` VALUES (10277, 1037, '狗零食', 1);
INSERT INTO `product_final_category` VALUES (10278, 1037, '狗厕所', 1);
INSERT INTO `product_final_category` VALUES (10279, 1037, '尿垫', 1);
INSERT INTO `product_final_category` VALUES (10280, 1037, '猫粮', 1);
INSERT INTO `product_final_category` VALUES (10281, 1037, '猫罐头', 1);
INSERT INTO `product_final_category` VALUES (10282, 1037, '猫零食', 1);
INSERT INTO `product_final_category` VALUES (10283, 1037, '猫砂', 1);
INSERT INTO `product_final_category` VALUES (10284, 1038, '新品推荐', 1);
INSERT INTO `product_final_category` VALUES (10285, 1038, '休闲鞋', 1);
INSERT INTO `product_final_category` VALUES (10286, 1038, '凉鞋', 1);
INSERT INTO `product_final_category` VALUES (10287, 1038, '单鞋', 1);
INSERT INTO `product_final_category` VALUES (10288, 1038, '拖鞋 人字拖', 1);
INSERT INTO `product_final_category` VALUES (10289, 1038, '高跟鞋', 1);
INSERT INTO `product_final_category` VALUES (10290, 1038, '妈妈鞋', 1);
INSERT INTO `product_final_category` VALUES (10291, 1039, '真皮包', 1);
INSERT INTO `product_final_category` VALUES (10292, 1039, '单肩包', 1);
INSERT INTO `product_final_category` VALUES (10293, 1039, '手提包', 1);
INSERT INTO `product_final_category` VALUES (10294, 1039, '斜挎包', 1);
INSERT INTO `product_final_category` VALUES (10295, 1039, '双肩包', 1);
INSERT INTO `product_final_category` VALUES (10296, 1039, '钱包', 1);
INSERT INTO `product_final_category` VALUES (10297, 1039, '手拿包', 1);
INSERT INTO `product_final_category` VALUES (10298, 1039, '卡包 零钱包', 1);
INSERT INTO `product_final_category` VALUES (10299, 1040, '男士钱包', 1);
INSERT INTO `product_final_category` VALUES (10300, 1040, '双肩包', 1);
INSERT INTO `product_final_category` VALUES (10301, 1040, '单肩 斜挎包', 1);
INSERT INTO `product_final_category` VALUES (10302, 1040, '商务公文包', 1);
INSERT INTO `product_final_category` VALUES (10303, 1040, '男士手包', 1);
INSERT INTO `product_final_category` VALUES (10304, 1040, '卡包', 1);
INSERT INTO `product_final_category` VALUES (10305, 1040, '名片夹', 1);
INSERT INTO `product_final_category` VALUES (10306, 1041, '拉杆箱', 1);
INSERT INTO `product_final_category` VALUES (10307, 1041, '拉杆包', 1);
INSERT INTO `product_final_category` VALUES (10308, 1041, '旅行包', 1);
INSERT INTO `product_final_category` VALUES (10309, 1041, '电脑包', 1);
INSERT INTO `product_final_category` VALUES (10310, 1041, '休闲运动包', 1);
INSERT INTO `product_final_category` VALUES (10311, 1041, '书包登山', 1);
INSERT INTO `product_final_category` VALUES (10312, 1042, 'DW', 1);
INSERT INTO `product_final_category` VALUES (10313, 1042, '天梭', 1);
INSERT INTO `product_final_category` VALUES (10314, 1042, '浪琴', 1);
INSERT INTO `product_final_category` VALUES (10315, 1042, '欧米茄', 1);
INSERT INTO `product_final_category` VALUES (10316, 1042, '萧邦', 1);
INSERT INTO `product_final_category` VALUES (10317, 1042, '阿玛尼', 1);
INSERT INTO `product_final_category` VALUES (10318, 1042, '卡西欧', 1);
INSERT INTO `product_final_category` VALUES (10319, 1042, '西铁城', 1);
INSERT INTO `product_final_category` VALUES (10320, 1043, '新品推荐', 1);
INSERT INTO `product_final_category` VALUES (10321, 1043, '休闲鞋凉', 1);
INSERT INTO `product_final_category` VALUES (10322, 1043, '休闲鞋', 1);
INSERT INTO `product_final_category` VALUES (10323, 1043, '正装鞋', 1);
INSERT INTO `product_final_category` VALUES (10324, 1043, '帆布鞋', 1);
INSERT INTO `product_final_category` VALUES (10325, 1043, '传统布鞋', 1);
INSERT INTO `product_final_category` VALUES (10326, 1043, '增高鞋', 1);
INSERT INTO `product_final_category` VALUES (10327, 1044, '跑步鞋', 1);
INSERT INTO `product_final_category` VALUES (10328, 1044, '休鞋', 1);
INSERT INTO `product_final_category` VALUES (10329, 1044, '篮球鞋', 1);
INSERT INTO `product_final_category` VALUES (10330, 1044, '帆布鞋', 1);
INSERT INTO `product_final_category` VALUES (10331, 1044, '板鞋拖鞋', 1);
INSERT INTO `product_final_category` VALUES (10332, 1044, '运动包', 1);
INSERT INTO `product_final_category` VALUES (10333, 1044, '足球鞋', 1);
INSERT INTO `product_final_category` VALUES (10334, 1044, '专项运动鞋', 1);
INSERT INTO `product_final_category` VALUES (10335, 1045, '羽绒服运动套装', 1);
INSERT INTO `product_final_category` VALUES (10336, 1045, '运动裤卫衣', 1);
INSERT INTO `product_final_category` VALUES (10337, 1045, '套头衫', 1);
INSERT INTO `product_final_category` VALUES (10338, 1045, '棉服', 1);
INSERT INTO `product_final_category` VALUES (10339, 1045, '夹克 风衣', 1);
INSERT INTO `product_final_category` VALUES (10340, 1045, 'T恤', 1);
INSERT INTO `product_final_category` VALUES (10341, 1045, '运动配饰', 1);
INSERT INTO `product_final_category` VALUES (10342, 1045, '健身服', 1);
INSERT INTO `product_final_category` VALUES (10343, 1046, '跑步机', 1);
INSERT INTO `product_final_category` VALUES (10344, 1046, '动感单健身车', 1);
INSERT INTO `product_final_category` VALUES (10345, 1046, '椭园机', 1);
INSERT INTO `product_final_category` VALUES (10346, 1046, '综合训练脂', 1);
INSERT INTO `product_final_category` VALUES (10347, 1046, '划船机', 1);
INSERT INTO `product_final_category` VALUES (10348, 1046, '甩脂机', 1);
INSERT INTO `product_final_category` VALUES (10349, 1046, '倒立机', 1);
INSERT INTO `product_final_category` VALUES (10350, 1047, '山地车', 1);
INSERT INTO `product_final_category` VALUES (10351, 1047, '公路车', 1);
INSERT INTO `product_final_category` VALUES (10352, 1047, '折叠车', 1);
INSERT INTO `product_final_category` VALUES (10353, 1047, '骑行服', 1);
INSERT INTO `product_final_category` VALUES (10354, 1047, '电动车', 1);
INSERT INTO `product_final_category` VALUES (10355, 1047, '电动滑板车', 1);
INSERT INTO `product_final_category` VALUES (10356, 1047, '城市自行车', 1);
INSERT INTO `product_final_category` VALUES (10357, 1048, '乒乓球', 1);
INSERT INTO `product_final_category` VALUES (10358, 1048, '羽毛球', 1);
INSERT INTO `product_final_category` VALUES (10359, 1048, '篮球', 1);
INSERT INTO `product_final_category` VALUES (10360, 1048, '足球', 1);
INSERT INTO `product_final_category` VALUES (10361, 1048, '轮滑', 1);
INSERT INTO `product_final_category` VALUES (10362, 1049, '户外风衣', 1);
INSERT INTO `product_final_category` VALUES (10363, 1049, '徒步鞋', 1);
INSERT INTO `product_final_category` VALUES (10364, 1049, 'T恤', 1);
INSERT INTO `product_final_category` VALUES (10365, 1049, '冲锋衣裤', 1);
INSERT INTO `product_final_category` VALUES (10366, 1049, '速干衣裤', 1);
INSERT INTO `product_final_category` VALUES (10367, 1049, '越野跑鞋', 1);
INSERT INTO `product_final_category` VALUES (10368, 1049, '滑雪服', 1);
INSERT INTO `product_final_category` VALUES (10369, 1049, '羽线服 棉服', 1);
INSERT INTO `product_final_category` VALUES (10370, 1050, '背包', 1);
INSERT INTO `product_final_category` VALUES (10371, 1050, '帐篷 垫子', 1);
INSERT INTO `product_final_category` VALUES (10372, 1050, '望远镜', 1);
INSERT INTO `product_final_category` VALUES (10373, 1050, '烧烤用具', 1);
INSERT INTO `product_final_category` VALUES (10374, 1050, '便携桌椅床', 1);
INSERT INTO `product_final_category` VALUES (10375, 1050, '户外配饰', 1);
INSERT INTO `product_final_category` VALUES (10376, 1050, '军迷用品', 1);
INSERT INTO `product_final_category` VALUES (10377, 1050, '野餐用品', 1);
INSERT INTO `product_final_category` VALUES (10378, 1051, '最新开盘', 1);
INSERT INTO `product_final_category` VALUES (10379, 1051, '普通住宅', 1);
INSERT INTO `product_final_category` VALUES (10380, 1051, '别墅商业', 1);
INSERT INTO `product_final_category` VALUES (10381, 1051, '办公海外', 1);
INSERT INTO `product_final_category` VALUES (10382, 1051, '房产', 1);
INSERT INTO `product_final_category` VALUES (10383, 1051, '文旅地产', 1);
INSERT INTO `product_final_category` VALUES (10384, 1051, '长租公寓', 1);
INSERT INTO `product_final_category` VALUES (10385, 1052, '微型车', 1);
INSERT INTO `product_final_category` VALUES (10386, 1052, '小型车', 1);
INSERT INTO `product_final_category` VALUES (10387, 1052, '紧凑型', 1);
INSERT INTO `product_final_category` VALUES (10388, 1052, '车中型', 1);
INSERT INTO `product_final_category` VALUES (10389, 1052, '车中大型', 1);
INSERT INTO `product_final_category` VALUES (10390, 1052, '车豪', 1);
INSERT INTO `product_final_category` VALUES (10391, 1052, '华车 ', 1);
INSERT INTO `product_final_category` VALUES (10392, 1052, 'MPV ', 1);
INSERT INTO `product_final_category` VALUES (10393, 1053, '5-8万', 1);
INSERT INTO `product_final_category` VALUES (10394, 1053, '8-12万', 1);
INSERT INTO `product_final_category` VALUES (10395, 1053, '12-18万', 1);
INSERT INTO `product_final_category` VALUES (10396, 1053, '18-25万', 1);
INSERT INTO `product_final_category` VALUES (10397, 1053, '25-40万', 1);
INSERT INTO `product_final_category` VALUES (10398, 1053, '40万以上', 1);
INSERT INTO `product_final_category` VALUES (10399, 1054, '大众', 1);
INSERT INTO `product_final_category` VALUES (10400, 1054, '日产', 1);
INSERT INTO `product_final_category` VALUES (10401, 1054, '丰田', 1);
INSERT INTO `product_final_category` VALUES (10402, 1054, '别克', 1);
INSERT INTO `product_final_category` VALUES (10403, 1054, '宝骏', 1);
INSERT INTO `product_final_category` VALUES (10404, 1054, '本田', 1);
INSERT INTO `product_final_category` VALUES (10405, 1055, '京东保养', 1);
INSERT INTO `product_final_category` VALUES (10406, 1055, '汽机', 1);
INSERT INTO `product_final_category` VALUES (10407, 1055, '油轮胎', 1);
INSERT INTO `product_final_category` VALUES (10408, 1055, '添加剂', 1);
INSERT INTO `product_final_category` VALUES (10409, 1055, '防冻液', 1);
INSERT INTO `product_final_category` VALUES (10410, 1055, '滤清器', 1);
INSERT INTO `product_final_category` VALUES (10411, 1055, '畫电池', 1);
INSERT INTO `product_final_category` VALUES (10412, 1055, '变速箱油', 1);
INSERT INTO `product_final_category` VALUES (10413, 1055, '旎雨刷', 1);
INSERT INTO `product_final_category` VALUES (10414, 1056, '座垫', 1);
INSERT INTO `product_final_category` VALUES (10415, 1056, '座套脚垫', 1);
INSERT INTO `product_final_category` VALUES (10416, 1056, '头枕', 1);
INSERT INTO `product_final_category` VALUES (10417, 1056, '腰靠', 1);
INSERT INTO `product_final_category` VALUES (10418, 1056, '方向盘套', 1);
INSERT INTO `product_final_category` VALUES (10419, 1056, '后备箱垫', 1);
INSERT INTO `product_final_category` VALUES (10420, 1056, '车载支架', 1);
INSERT INTO `product_final_category` VALUES (10421, 1056, '车钥匙扣', 1);
INSERT INTO `product_final_category` VALUES (10422, 1057, '胎压监测', 1);
INSERT INTO `product_final_category` VALUES (10423, 1057, '充气泵', 1);
INSERT INTO `product_final_category` VALUES (10424, 1057, '灭火器', 1);
INSERT INTO `product_final_category` VALUES (10425, 1057, '车载床', 1);
INSERT INTO `product_final_category` VALUES (10426, 1057, '应急救援', 1);
INSERT INTO `product_final_category` VALUES (10427, 1057, '防盗设备', 1);
INSERT INTO `product_final_category` VALUES (10428, 1057, '自驾野营', 1);
INSERT INTO `product_final_category` VALUES (10429, 1057, '摩托车', 1);
INSERT INTO `product_final_category` VALUES (10430, 1058, '保养维修', 1);
INSERT INTO `product_final_category` VALUES (10431, 1058, '洗车钣', 1);
INSERT INTO `product_final_category` VALUES (10432, 1058, '金喷漆', 1);
INSERT INTO `product_final_category` VALUES (10433, 1058, '清洗', 1);
INSERT INTO `product_final_category` VALUES (10434, 1058, '美容功能', 1);
INSERT INTO `product_final_category` VALUES (10435, 1058, '升级', 1);
INSERT INTO `product_final_category` VALUES (10436, 1058, '改装服务', 1);
INSERT INTO `product_final_category` VALUES (10437, 1059, ' NB', 1);
INSERT INTO `product_final_category` VALUES (10438, 1059, ' S ', 1);
INSERT INTO `product_final_category` VALUES (10439, 1059, 'M ', 1);
INSERT INTO `product_final_category` VALUES (10440, 1059, 'XL ', 1);
INSERT INTO `product_final_category` VALUES (10441, 1059, 'XXL', 1);
INSERT INTO `product_final_category` VALUES (10442, 1059, '拉拉裤', 1);
INSERT INTO `product_final_category` VALUES (10443, 1059, '成人尿裤', 1);
INSERT INTO `product_final_category` VALUES (10444, 1060, '宝宝护肤', 1);
INSERT INTO `product_final_category` VALUES (10445, 1060, '日常护理', 1);
INSERT INTO `product_final_category` VALUES (10446, 1060, '洗发沐浴', 1);
INSERT INTO `product_final_category` VALUES (10447, 1060, '洗澡用具', 1);
INSERT INTO `product_final_category` VALUES (10448, 1060, '洗衣液', 1);
INSERT INTO `product_final_category` VALUES (10449, 1060, '理发器', 1);
INSERT INTO `product_final_category` VALUES (10450, 1061, '防辐射服', 1);
INSERT INTO `product_final_category` VALUES (10451, 1061, '孕妈装', 1);
INSERT INTO `product_final_category` VALUES (10452, 1061, '孕妇护肤', 1);
INSERT INTO `product_final_category` VALUES (10453, 1061, '妈咪包', 1);
INSERT INTO `product_final_category` VALUES (10454, 1061, '护理产后', 1);
INSERT INTO `product_final_category` VALUES (10455, 1061, '塑身', 1);
INSERT INTO `product_final_category` VALUES (10456, 1061, '文胸 内裤', 1);
INSERT INTO `product_final_category` VALUES (10457, 1062, '1段', 1);
INSERT INTO `product_final_category` VALUES (10458, 1062, '2段', 1);
INSERT INTO `product_final_category` VALUES (10459, 1062, '3段', 1);
INSERT INTO `product_final_category` VALUES (10460, 1062, '4段', 1);
INSERT INTO `product_final_category` VALUES (10461, 1062, '孕妈奶粉', 1);
INSERT INTO `product_final_category` VALUES (10462, 1062, '特殊配方奶粉', 1);
INSERT INTO `product_final_category` VALUES (10463, 1062, '有机奶粉', 1);
INSERT INTO `product_final_category` VALUES (10464, 1063, '益智玩具', 1);
INSERT INTO `product_final_category` VALUES (10465, 1063, '健身 戏水', 1);
INSERT INTO `product_final_category` VALUES (10466, 1063, '橡皮泥', 1);
INSERT INTO `product_final_category` VALUES (10467, 1063, '芭比娃娃', 1);
INSERT INTO `product_final_category` VALUES (10468, 1063, '绘画', 1);
INSERT INTO `product_final_category` VALUES (10469, 1063, '积木拼装', 1);
INSERT INTO `product_final_category` VALUES (10470, 1063, '遥控', 1);
INSERT INTO `product_final_category` VALUES (10471, 1063, '电动毛线玩具', 1);
INSERT INTO `product_final_category` VALUES (10472, 1064, '钢琴', 1);
INSERT INTO `product_final_category` VALUES (10473, 1064, '电钢琴', 1);
INSERT INTO `product_final_category` VALUES (10474, 1064, '电子琴', 1);
INSERT INTO `product_final_category` VALUES (10475, 1064, '吉他', 1);
INSERT INTO `product_final_category` VALUES (10476, 1064, '打击乐器', 1);
INSERT INTO `product_final_category` VALUES (10477, 1064, '西洋管弦', 1);
INSERT INTO `product_final_category` VALUES (10478, 1064, '民族乐器', 1);
INSERT INTO `product_final_category` VALUES (10479, 1064, '乐器', 1);
INSERT INTO `product_final_category` VALUES (10480, 1064, '乐器配件', 1);
INSERT INTO `product_final_category` VALUES (10481, 1065, '国内机票', 1);
INSERT INTO `product_final_category` VALUES (10482, 1065, '国际机票', 1);
INSERT INTO `product_final_category` VALUES (10483, 1065, '火车票', 1);
INSERT INTO `product_final_category` VALUES (10484, 1065, '机场服务', 1);
INSERT INTO `product_final_category` VALUES (10485, 1065, '机票套餐', 1);
INSERT INTO `product_final_category` VALUES (10486, 1066, '国内酒店', 1);
INSERT INTO `product_final_category` VALUES (10487, 1066, '国际酒店', 1);
INSERT INTO `product_final_category` VALUES (10488, 1066, '酒店套餐', 1);
INSERT INTO `product_final_category` VALUES (10489, 1066, '超值精选', 1);
INSERT INTO `product_final_category` VALUES (10490, 1067, '国内旅游', 1);
INSERT INTO `product_final_category` VALUES (10491, 1067, '出境旅游', 1);
INSERT INTO `product_final_category` VALUES (10492, 1067, '全球签证', 1);
INSERT INTO `product_final_category` VALUES (10493, 1067, '景点门票', 1);
INSERT INTO `product_final_category` VALUES (10494, 1067, '邮轮旅行', 1);
INSERT INTO `product_final_category` VALUES (10495, 1068, '食物', 0);
INSERT INTO `product_final_category` VALUES (10496, 1017, '显示屏', 0);
INSERT INTO `product_final_category` VALUES (10497, 1015, '劳力士', 0);

-- ----------------------------
-- Table structure for product_pageviews
-- ----------------------------
DROP TABLE IF EXISTS `product_pageviews`;
CREATE TABLE `product_pageviews`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NULL DEFAULT NULL,
  `user_ip` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `user_id` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `browse_time` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 513 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of product_pageviews
-- ----------------------------
INSERT INTO `product_pageviews` VALUES (60, 10001, '175.8.61.126', NULL, '2020-05-20 11:16:56');
INSERT INTO `product_pageviews` VALUES (61, 10001, '116.162.2.61', NULL, '2020-05-20 11:17:32');
INSERT INTO `product_pageviews` VALUES (62, 10014, '116.162.2.61', NULL, '2020-05-20 11:18:56');
INSERT INTO `product_pageviews` VALUES (63, 10015, '116.162.2.194', NULL, '2020-05-20 12:08:32');
INSERT INTO `product_pageviews` VALUES (64, 10008, '127.0.0.1', NULL, '2020-05-20 21:46:21');
INSERT INTO `product_pageviews` VALUES (65, 10005, '127.0.0.1', 'f92b9f8f372e445fb6564cdd57aa3c3e', '2020-05-20 21:47:58');
INSERT INTO `product_pageviews` VALUES (66, 10006, '127.0.0.1', 'f92b9f8f372e445fb6564cdd57aa3c3e', '2020-05-20 21:48:54');
INSERT INTO `product_pageviews` VALUES (67, 10002, '127.0.0.1', 'f92b9f8f372e445fb6564cdd57aa3c3e', '2020-05-20 21:49:02');
INSERT INTO `product_pageviews` VALUES (68, 10001, '127.0.0.1', 'f92b9f8f372e445fb6564cdd57aa3c3e', '2020-05-20 21:51:45');
INSERT INTO `product_pageviews` VALUES (69, 10018, '127.0.0.1', 'f92b9f8f372e445fb6564cdd57aa3c3e', '2020-05-20 21:52:04');
INSERT INTO `product_pageviews` VALUES (70, 10023, '175.8.61.126', '7c9fdfa3177042a08766aed29e7de6cd', '2020-05-21 00:40:16');
INSERT INTO `product_pageviews` VALUES (71, 10002, '175.8.61.126', '7c9fdfa3177042a08766aed29e7de6cd', '2020-05-21 01:52:36');
INSERT INTO `product_pageviews` VALUES (72, 10019, '175.8.61.126', '7c9fdfa3177042a08766aed29e7de6cd', '2020-05-21 01:56:58');
INSERT INTO `product_pageviews` VALUES (73, 10001, '175.8.61.126', '7c9fdfa3177042a08766aed29e7de6cd', '2020-05-21 01:57:07');
INSERT INTO `product_pageviews` VALUES (74, 10023, '220.202.152.82', NULL, '2020-05-21 02:48:34');
INSERT INTO `product_pageviews` VALUES (75, 10003, '220.202.152.82', NULL, '2020-05-21 02:49:14');
INSERT INTO `product_pageviews` VALUES (76, 10003, '175.8.61.126', NULL, '2020-05-21 02:49:19');
INSERT INTO `product_pageviews` VALUES (77, 10002, '120.227.23.194', NULL, '2020-05-22 03:18:59');
INSERT INTO `product_pageviews` VALUES (78, 10001, '120.227.23.194', NULL, '2020-05-22 03:19:14');
INSERT INTO `product_pageviews` VALUES (79, 10003, '175.8.61.182', NULL, '2020-05-22 03:20:04');
INSERT INTO `product_pageviews` VALUES (80, 10007, '175.8.61.182', NULL, '2020-05-22 03:20:10');
INSERT INTO `product_pageviews` VALUES (81, 10001, '175.8.61.182', NULL, '2020-05-22 03:20:17');
INSERT INTO `product_pageviews` VALUES (82, 10023, '175.8.61.182', NULL, '2020-05-22 03:20:28');
INSERT INTO `product_pageviews` VALUES (83, 10019, '175.8.61.182', NULL, '2020-05-22 03:20:36');
INSERT INTO `product_pageviews` VALUES (84, 10012, '175.8.61.182', NULL, '2020-05-22 03:20:44');
INSERT INTO `product_pageviews` VALUES (85, 10016, '175.8.61.182', '7c9fdfa3177042a08766aed29e7de6cd', '2020-05-22 03:21:23');
INSERT INTO `product_pageviews` VALUES (86, 10003, '127.0.0.1', 'f92b9f8f372e445fb6564cdd57aa3c3e', '2020-05-22 13:46:59');
INSERT INTO `product_pageviews` VALUES (87, 10010, '127.0.0.1', 'f92b9f8f372e445fb6564cdd57aa3c3e', '2020-05-22 13:51:25');
INSERT INTO `product_pageviews` VALUES (88, 10013, '127.0.0.1', 'f92b9f8f372e445fb6564cdd57aa3c3e', '2020-05-22 13:52:16');
INSERT INTO `product_pageviews` VALUES (89, 10001, '127.0.0.1', 'f92b9f8f372e445fb6564cdd57aa3c3e', '2020-05-22 13:52:21');
INSERT INTO `product_pageviews` VALUES (90, 10002, '127.0.0.1', NULL, '2020-05-22 14:23:04');
INSERT INTO `product_pageviews` VALUES (91, 10006, '127.0.0.1', NULL, '2020-05-22 14:29:04');
INSERT INTO `product_pageviews` VALUES (92, 10027, '127.0.0.1', NULL, '2020-05-22 14:29:09');
INSERT INTO `product_pageviews` VALUES (93, 10014, '127.0.0.1', 'f92b9f8f372e445fb6564cdd57aa3c3e', '2020-05-22 14:30:35');
INSERT INTO `product_pageviews` VALUES (94, 10015, '127.0.0.1', 'f92b9f8f372e445fb6564cdd57aa3c3e', '2020-05-22 14:30:40');
INSERT INTO `product_pageviews` VALUES (95, 10016, '127.0.0.1', 'f92b9f8f372e445fb6564cdd57aa3c3e', '2020-05-22 14:30:46');
INSERT INTO `product_pageviews` VALUES (96, 10018, '127.0.0.1', 'f92b9f8f372e445fb6564cdd57aa3c3e', '2020-05-22 14:30:55');
INSERT INTO `product_pageviews` VALUES (97, 10007, '127.0.0.1', 'f92b9f8f372e445fb6564cdd57aa3c3e', '2020-05-22 14:31:01');
INSERT INTO `product_pageviews` VALUES (98, 10029, '127.0.0.1', 'f92b9f8f372e445fb6564cdd57aa3c3e', '2020-05-22 14:31:40');
INSERT INTO `product_pageviews` VALUES (99, 10030, '127.0.0.1', 'f92b9f8f372e445fb6564cdd57aa3c3e', '2020-05-22 14:31:48');
INSERT INTO `product_pageviews` VALUES (100, 10004, '127.0.0.1', 'f92b9f8f372e445fb6564cdd57aa3c3e', '2020-05-22 14:31:54');
INSERT INTO `product_pageviews` VALUES (101, 10014, '163.142.63.17', NULL, '2020-05-22 06:32:05');
INSERT INTO `product_pageviews` VALUES (102, 10012, '127.0.0.1', NULL, '2020-05-22 14:38:17');
INSERT INTO `product_pageviews` VALUES (103, 10001, '127.0.0.1', 'f92b9f8f372e445fb6564cdd57aa3c3e', '2020-05-22 17:52:21');
INSERT INTO `product_pageviews` VALUES (104, 10015, '127.0.0.1', '7c9fdfa3177042a08766aed29e7de6cd', '2020-05-22 18:59:57');
INSERT INTO `product_pageviews` VALUES (105, 10003, '127.0.0.1', '7c9fdfa3177042a08766aed29e7de6cd', '2020-05-22 19:12:42');
INSERT INTO `product_pageviews` VALUES (106, 10002, '127.0.0.1', '7c9fdfa3177042a08766aed29e7de6cd', '2020-05-22 19:12:47');
INSERT INTO `product_pageviews` VALUES (107, 10023, '127.0.0.1', '7c9fdfa3177042a08766aed29e7de6cd', '2020-05-22 19:13:02');
INSERT INTO `product_pageviews` VALUES (108, 10007, '127.0.0.1', '7c9fdfa3177042a08766aed29e7de6cd', '2020-05-22 19:13:15');
INSERT INTO `product_pageviews` VALUES (109, 10018, '127.0.0.1', '7c9fdfa3177042a08766aed29e7de6cd', '2020-05-22 19:15:25');
INSERT INTO `product_pageviews` VALUES (110, 10029, '127.0.0.1', '7c9fdfa3177042a08766aed29e7de6cd', '2020-05-22 19:15:56');
INSERT INTO `product_pageviews` VALUES (111, 10028, '127.0.0.1', '7c9fdfa3177042a08766aed29e7de6cd', '2020-05-22 19:17:00');
INSERT INTO `product_pageviews` VALUES (112, 10009, '127.0.0.1', '7c9fdfa3177042a08766aed29e7de6cd', '2020-05-22 19:17:07');
INSERT INTO `product_pageviews` VALUES (113, 10014, '127.0.0.1', '7c9fdfa3177042a08766aed29e7de6cd', '2020-05-22 19:17:12');
INSERT INTO `product_pageviews` VALUES (114, 10010, '127.0.0.1', 'f92b9f8f372e445fb6564cdd57aa3c3e', '2020-05-22 19:40:42');
INSERT INTO `product_pageviews` VALUES (115, 10030, '127.0.0.1', 'f92b9f8f372e445fb6564cdd57aa3c3e', '2020-05-22 19:41:33');
INSERT INTO `product_pageviews` VALUES (116, 10005, '175.8.61.182', '7c9fdfa3177042a08766aed29e7de6cd', '2020-05-22 12:48:27');
INSERT INTO `product_pageviews` VALUES (117, 10001, '163.142.63.17', NULL, '2020-05-22 13:48:17');
INSERT INTO `product_pageviews` VALUES (118, 10011, '163.142.63.17', 'f92b9f8f372e445fb6564cdd57aa3c3e', '2020-05-22 13:50:51');
INSERT INTO `product_pageviews` VALUES (119, 10015, '163.142.63.17', NULL, '2020-05-22 14:19:15');
INSERT INTO `product_pageviews` VALUES (120, 10002, '175.8.61.182', NULL, '2020-05-22 23:54:53');
INSERT INTO `product_pageviews` VALUES (121, 10006, '175.8.61.182', NULL, '2020-05-22 23:55:22');
INSERT INTO `product_pageviews` VALUES (122, 10001, '175.8.61.182', NULL, '2020-05-22 23:55:40');
INSERT INTO `product_pageviews` VALUES (123, 10029, '175.8.61.182', NULL, '2020-05-22 23:55:49');
INSERT INTO `product_pageviews` VALUES (124, 10027, '175.8.61.182', NULL, '2020-05-22 23:56:18');
INSERT INTO `product_pageviews` VALUES (125, 10023, '175.8.61.182', '7c9fdfa3177042a08766aed29e7de6cd', '2020-05-22 23:59:21');
INSERT INTO `product_pageviews` VALUES (126, 10001, '127.0.0.1', '7c9fdfa3177042a08766aed29e7de6cd', '2020-05-23 12:05:01');
INSERT INTO `product_pageviews` VALUES (127, 10001, '112.97.218.222', NULL, '2020-05-23 05:14:01');
INSERT INTO `product_pageviews` VALUES (128, 10002, '223.157.231.120', NULL, '2020-05-23 10:20:13');
INSERT INTO `product_pageviews` VALUES (129, 10006, '127.0.0.1', '7c9fdfa3177042a08766aed29e7de6cd', '2020-05-23 19:42:18');
INSERT INTO `product_pageviews` VALUES (130, 10001, '127.0.0.1', '7c9fdfa3177042a08766aed29e7de6cd', '2020-05-23 19:42:27');
INSERT INTO `product_pageviews` VALUES (131, 10030, '127.0.0.1', NULL, '2020-05-23 23:29:12');
INSERT INTO `product_pageviews` VALUES (132, 10001, '127.0.0.1', NULL, '2020-05-24 01:28:58');
INSERT INTO `product_pageviews` VALUES (133, 10006, '127.0.0.1', 'f92b9f8f372e445fb6564cdd57aa3c3e', '2020-05-24 01:32:55');
INSERT INTO `product_pageviews` VALUES (134, 10002, '127.0.0.1', 'f92b9f8f372e445fb6564cdd57aa3c3e', '2020-05-24 01:34:04');
INSERT INTO `product_pageviews` VALUES (135, 10003, '127.0.0.1', 'f92b9f8f372e445fb6564cdd57aa3c3e', '2020-05-24 01:34:12');
INSERT INTO `product_pageviews` VALUES (136, 10014, '127.0.0.1', 'f92b9f8f372e445fb6564cdd57aa3c3e', '2020-05-24 01:43:10');
INSERT INTO `product_pageviews` VALUES (137, 10001, '127.0.0.1', NULL, '2020-05-24 08:28:56');
INSERT INTO `product_pageviews` VALUES (138, 10022, '127.0.0.1', 'f92b9f8f372e445fb6564cdd57aa3c3e', '2020-05-24 10:53:11');
INSERT INTO `product_pageviews` VALUES (139, 10030, '127.0.0.1', NULL, '2020-05-24 11:38:26');
INSERT INTO `product_pageviews` VALUES (140, 10011, '127.0.0.1', NULL, '2020-05-24 11:38:49');
INSERT INTO `product_pageviews` VALUES (141, 10009, '127.0.0.1', 'f92b9f8f372e445fb6564cdd57aa3c3e', '2020-05-24 11:43:48');
INSERT INTO `product_pageviews` VALUES (142, 10029, '127.0.0.1', 'f92b9f8f372e445fb6564cdd57aa3c3e', '2020-05-24 11:44:00');
INSERT INTO `product_pageviews` VALUES (143, 10001, '127.0.0.1', NULL, '2020-05-24 12:28:59');
INSERT INTO `product_pageviews` VALUES (144, 10001, '175.8.62.141', NULL, '2020-05-24 05:55:13');
INSERT INTO `product_pageviews` VALUES (145, 10010, '175.8.62.141', NULL, '2020-05-24 05:55:34');
INSERT INTO `product_pageviews` VALUES (146, 10028, '175.8.62.141', NULL, '2020-05-24 05:56:30');
INSERT INTO `product_pageviews` VALUES (147, 10003, '27.37.251.88', NULL, '2020-05-24 05:57:03');
INSERT INTO `product_pageviews` VALUES (148, 10001, '27.37.251.88', NULL, '2020-05-24 05:57:08');
INSERT INTO `product_pageviews` VALUES (149, 10006, '127.0.0.1', NULL, '2020-05-24 14:37:53');
INSERT INTO `product_pageviews` VALUES (150, 10017, '127.0.0.1', NULL, '2020-05-24 14:38:09');
INSERT INTO `product_pageviews` VALUES (151, 10022, '27.37.251.88', 'f92b9f8f372e445fb6564cdd57aa3c3e', '2020-05-24 07:58:42');
INSERT INTO `product_pageviews` VALUES (152, 10013, '27.37.251.88', 'f92b9f8f372e445fb6564cdd57aa3c3e', '2020-05-24 07:58:48');
INSERT INTO `product_pageviews` VALUES (153, 10026, '27.37.251.88', 'f92b9f8f372e445fb6564cdd57aa3c3e', '2020-05-24 08:14:06');
INSERT INTO `product_pageviews` VALUES (154, 10029, '27.37.251.88', 'f92b9f8f372e445fb6564cdd57aa3c3e', '2020-05-24 08:14:14');
INSERT INTO `product_pageviews` VALUES (155, 10030, '27.37.251.88', 'f92b9f8f372e445fb6564cdd57aa3c3e', '2020-05-24 08:14:22');
INSERT INTO `product_pageviews` VALUES (156, 10024, '27.37.251.88', 'f92b9f8f372e445fb6564cdd57aa3c3e', '2020-05-24 08:14:31');
INSERT INTO `product_pageviews` VALUES (157, 10007, '27.37.251.88', 'f92b9f8f372e445fb6564cdd57aa3c3e', '2020-05-24 08:15:56');
INSERT INTO `product_pageviews` VALUES (158, 10002, '127.0.0.1', 'f92b9f8f372e445fb6564cdd57aa3c3e', '2020-05-24 16:23:16');
INSERT INTO `product_pageviews` VALUES (159, 10022, '127.0.0.1', 'f92b9f8f372e445fb6564cdd57aa3c3e', '2020-05-24 16:36:35');
INSERT INTO `product_pageviews` VALUES (160, 10005, '127.0.0.1', '7c9fdfa3177042a08766aed29e7de6cd', '2020-05-24 17:15:23');
INSERT INTO `product_pageviews` VALUES (161, 10028, '127.0.0.1', '7c9fdfa3177042a08766aed29e7de6cd', '2020-05-24 17:25:26');
INSERT INTO `product_pageviews` VALUES (162, 10009, '127.0.0.1', 'f92b9f8f372e445fb6564cdd57aa3c3e', '2020-05-24 17:55:41');
INSERT INTO `product_pageviews` VALUES (163, 10022, '127.0.0.1', NULL, '2020-05-25 09:55:34');
INSERT INTO `product_pageviews` VALUES (164, 10001, '127.0.0.1', NULL, '2020-05-25 09:55:44');
INSERT INTO `product_pageviews` VALUES (165, 10006, '127.0.0.1', 'f92b9f8f372e445fb6564cdd57aa3c3e', '2020-05-25 13:09:19');
INSERT INTO `product_pageviews` VALUES (166, 10007, '127.0.0.1', '7c9fdfa3177042a08766aed29e7de6cd', '2020-05-25 13:54:07');
INSERT INTO `product_pageviews` VALUES (167, 10003, '127.0.0.1', '7c9fdfa3177042a08766aed29e7de6cd', '2020-05-25 17:16:13');
INSERT INTO `product_pageviews` VALUES (168, 10001, '127.0.0.1', 'f92b9f8f372e445fb6564cdd57aa3c3e', '2020-05-25 18:08:29');
INSERT INTO `product_pageviews` VALUES (169, 10001, '127.0.0.1', NULL, '2020-05-26 09:49:50');
INSERT INTO `product_pageviews` VALUES (170, 10016, '127.0.0.1', NULL, '2020-05-26 11:00:20');
INSERT INTO `product_pageviews` VALUES (171, 10009, '127.0.0.1', '7c9fdfa3177042a08766aed29e7de6cd', '2020-05-26 11:09:21');
INSERT INTO `product_pageviews` VALUES (172, 10002, '127.0.0.1', 'f92b9f8f372e445fb6564cdd57aa3c3e', '2020-05-26 12:16:09');
INSERT INTO `product_pageviews` VALUES (173, 10001, '175.8.62.141', '7c9fdfa3177042a08766aed29e7de6cd', '2020-05-26 05:22:36');
INSERT INTO `product_pageviews` VALUES (174, 10001, '127.0.0.1', '7c9fdfa3177042a08766aed29e7de6cd', '2020-05-26 13:50:16');
INSERT INTO `product_pageviews` VALUES (175, 10001, '113.78.105.117', NULL, '2020-05-26 05:58:07');
INSERT INTO `product_pageviews` VALUES (176, 10011, '175.8.62.141', '7c9fdfa3177042a08766aed29e7de6cd', '2020-05-26 06:08:15');
INSERT INTO `product_pageviews` VALUES (177, 10011, '127.0.0.1', '7c9fdfa3177042a08766aed29e7de6cd', '2020-05-26 14:14:35');
INSERT INTO `product_pageviews` VALUES (178, 10027, '127.0.0.1', '7c9fdfa3177042a08766aed29e7de6cd', '2020-05-26 14:19:59');
INSERT INTO `product_pageviews` VALUES (179, 10004, '127.0.0.1', '7c9fdfa3177042a08766aed29e7de6cd', '2020-05-26 14:32:41');
INSERT INTO `product_pageviews` VALUES (180, 10023, '127.0.0.1', NULL, '2020-05-26 16:52:30');
INSERT INTO `product_pageviews` VALUES (181, 10029, '127.0.0.1', NULL, '2020-05-26 18:08:57');
INSERT INTO `product_pageviews` VALUES (182, 10001, '127.0.0.1', NULL, '2020-05-26 18:09:05');
INSERT INTO `product_pageviews` VALUES (183, 10020, '127.0.0.1', NULL, '2020-05-26 18:09:13');
INSERT INTO `product_pageviews` VALUES (184, 10019, '127.0.0.1', NULL, '2020-05-26 18:09:20');
INSERT INTO `product_pageviews` VALUES (185, 10028, '127.0.0.1', NULL, '2020-05-26 18:09:28');
INSERT INTO `product_pageviews` VALUES (186, 10026, '127.0.0.1', NULL, '2020-05-26 18:09:36');
INSERT INTO `product_pageviews` VALUES (187, 10022, '127.0.0.1', NULL, '2020-05-26 18:09:42');
INSERT INTO `product_pageviews` VALUES (188, 10008, '127.0.0.1', NULL, '2020-05-26 18:18:05');
INSERT INTO `product_pageviews` VALUES (189, 10012, '127.0.0.1', NULL, '2020-05-26 18:18:10');
INSERT INTO `product_pageviews` VALUES (190, 10006, '127.0.0.1', NULL, '2020-05-26 18:23:04');
INSERT INTO `product_pageviews` VALUES (191, 10025, '127.0.0.1', NULL, '2020-05-26 18:23:20');
INSERT INTO `product_pageviews` VALUES (192, 10030, '127.0.0.1', NULL, '2020-05-26 18:23:42');
INSERT INTO `product_pageviews` VALUES (193, 10005, '127.0.0.1', '7c9fdfa3177042a08766aed29e7de6cd', '2020-05-26 18:42:14');
INSERT INTO `product_pageviews` VALUES (194, 10027, '127.0.0.1', '7c9fdfa3177042a08766aed29e7de6cd', '2020-05-26 18:42:22');
INSERT INTO `product_pageviews` VALUES (195, 10011, '127.0.0.1', '7c9fdfa3177042a08766aed29e7de6cd', '2020-05-26 18:51:36');
INSERT INTO `product_pageviews` VALUES (196, 10004, '127.0.0.1', '7c9fdfa3177042a08766aed29e7de6cd', '2020-05-26 20:24:38');
INSERT INTO `product_pageviews` VALUES (197, 10011, '113.220.47.58', NULL, '2020-05-26 12:39:03');
INSERT INTO `product_pageviews` VALUES (198, 10001, '127.0.0.1', NULL, '2020-05-27 10:17:46');
INSERT INTO `product_pageviews` VALUES (199, 10001, '175.8.62.141', NULL, '2020-05-27 07:34:36');
INSERT INTO `product_pageviews` VALUES (200, 10005, '175.8.62.141', NULL, '2020-05-27 07:50:29');
INSERT INTO `product_pageviews` VALUES (201, 10004, '175.8.62.141', NULL, '2020-05-27 07:50:48');
INSERT INTO `product_pageviews` VALUES (202, 10002, '175.8.62.141', NULL, '2020-05-27 07:54:56');
INSERT INTO `product_pageviews` VALUES (203, 10007, '175.8.62.141', NULL, '2020-05-27 07:55:03');
INSERT INTO `product_pageviews` VALUES (204, 10001, '127.0.0.1', '7c9fdfa3177042a08766aed29e7de6cd', '2020-05-27 19:32:11');
INSERT INTO `product_pageviews` VALUES (205, 10019, '127.0.0.1', '7c9fdfa3177042a08766aed29e7de6cd', '2020-05-27 19:39:04');
INSERT INTO `product_pageviews` VALUES (206, 10027, '127.0.0.1', '7c9fdfa3177042a08766aed29e7de6cd', '2020-05-27 19:39:11');
INSERT INTO `product_pageviews` VALUES (207, 10022, '127.0.0.1', 'f92b9f8f372e445fb6564cdd57aa3c3e', '2020-05-27 20:41:44');
INSERT INTO `product_pageviews` VALUES (208, 10001, '175.8.62.141', '7c9fdfa3177042a08766aed29e7de6cd', '2020-05-27 13:03:00');
INSERT INTO `product_pageviews` VALUES (209, 10001, '127.0.0.1', NULL, '2020-05-28 08:35:16');
INSERT INTO `product_pageviews` VALUES (210, 10006, '127.0.0.1', '7c9fdfa3177042a08766aed29e7de6cd', '2020-05-28 10:18:24');
INSERT INTO `product_pageviews` VALUES (211, 10001, '127.0.0.1', '7c9fdfa3177042a08766aed29e7de6cd', '2020-05-28 13:55:24');
INSERT INTO `product_pageviews` VALUES (212, 10003, '127.0.0.1', '7c9fdfa3177042a08766aed29e7de6cd', '2020-05-28 14:45:21');
INSERT INTO `product_pageviews` VALUES (213, 10023, '127.0.0.1', '7c9fdfa3177042a08766aed29e7de6cd', '2020-05-28 15:13:10');
INSERT INTO `product_pageviews` VALUES (214, 10001, '127.0.0.1', 'f92b9f8f372e445fb6564cdd57aa3c3e', '2020-05-29 00:52:05');
INSERT INTO `product_pageviews` VALUES (215, 10002, '127.0.0.1', 'f92b9f8f372e445fb6564cdd57aa3c3e', '2020-05-29 00:59:25');
INSERT INTO `product_pageviews` VALUES (216, 10003, '127.0.0.1', 'f92b9f8f372e445fb6564cdd57aa3c3e', '2020-05-29 01:19:47');
INSERT INTO `product_pageviews` VALUES (217, 10004, '127.0.0.1', 'f92b9f8f372e445fb6564cdd57aa3c3e', '2020-05-29 01:24:31');
INSERT INTO `product_pageviews` VALUES (218, 10005, '127.0.0.1', 'f92b9f8f372e445fb6564cdd57aa3c3e', '2020-05-29 01:30:41');
INSERT INTO `product_pageviews` VALUES (219, 10006, '127.0.0.1', 'f92b9f8f372e445fb6564cdd57aa3c3e', '2020-05-29 01:34:26');
INSERT INTO `product_pageviews` VALUES (220, 10007, '127.0.0.1', 'f92b9f8f372e445fb6564cdd57aa3c3e', '2020-05-29 01:46:09');
INSERT INTO `product_pageviews` VALUES (221, 10008, '127.0.0.1', 'f92b9f8f372e445fb6564cdd57aa3c3e', '2020-05-29 01:48:09');
INSERT INTO `product_pageviews` VALUES (222, 10009, '127.0.0.1', 'f92b9f8f372e445fb6564cdd57aa3c3e', '2020-05-29 01:57:43');
INSERT INTO `product_pageviews` VALUES (223, 10022, '127.0.0.1', 'f92b9f8f372e445fb6564cdd57aa3c3e', '2020-05-29 02:01:22');
INSERT INTO `product_pageviews` VALUES (224, 10010, '127.0.0.1', 'f92b9f8f372e445fb6564cdd57aa3c3e', '2020-05-29 02:01:30');
INSERT INTO `product_pageviews` VALUES (225, 10012, '127.0.0.1', 'f92b9f8f372e445fb6564cdd57aa3c3e', '2020-05-29 02:02:26');
INSERT INTO `product_pageviews` VALUES (226, 10011, '127.0.0.1', 'f92b9f8f372e445fb6564cdd57aa3c3e', '2020-05-29 02:08:10');
INSERT INTO `product_pageviews` VALUES (227, 10015, '127.0.0.1', 'f92b9f8f372e445fb6564cdd57aa3c3e', '2020-05-29 07:39:12');
INSERT INTO `product_pageviews` VALUES (228, 10013, '127.0.0.1', 'f92b9f8f372e445fb6564cdd57aa3c3e', '2020-05-29 07:39:21');
INSERT INTO `product_pageviews` VALUES (229, 10012, '127.0.0.1', 'f92b9f8f372e445fb6564cdd57aa3c3e', '2020-05-29 07:39:33');
INSERT INTO `product_pageviews` VALUES (230, 10014, '127.0.0.1', 'f92b9f8f372e445fb6564cdd57aa3c3e', '2020-05-29 07:40:35');
INSERT INTO `product_pageviews` VALUES (231, 10016, '127.0.0.1', 'f92b9f8f372e445fb6564cdd57aa3c3e', '2020-05-29 07:46:32');
INSERT INTO `product_pageviews` VALUES (232, 10017, '127.0.0.1', 'f92b9f8f372e445fb6564cdd57aa3c3e', '2020-05-29 07:55:57');
INSERT INTO `product_pageviews` VALUES (233, 10018, '127.0.0.1', 'f92b9f8f372e445fb6564cdd57aa3c3e', '2020-05-29 08:03:36');
INSERT INTO `product_pageviews` VALUES (234, 10019, '127.0.0.1', 'f92b9f8f372e445fb6564cdd57aa3c3e', '2020-05-29 08:12:26');
INSERT INTO `product_pageviews` VALUES (235, 10020, '127.0.0.1', 'f92b9f8f372e445fb6564cdd57aa3c3e', '2020-05-29 08:14:08');
INSERT INTO `product_pageviews` VALUES (236, 10021, '127.0.0.1', 'f92b9f8f372e445fb6564cdd57aa3c3e', '2020-05-29 08:16:49');
INSERT INTO `product_pageviews` VALUES (237, 10022, '127.0.0.1', 'f92b9f8f372e445fb6564cdd57aa3c3e', '2020-05-29 08:20:56');
INSERT INTO `product_pageviews` VALUES (238, 10023, '127.0.0.1', 'f92b9f8f372e445fb6564cdd57aa3c3e', '2020-05-29 08:24:02');
INSERT INTO `product_pageviews` VALUES (239, 10024, '127.0.0.1', 'f92b9f8f372e445fb6564cdd57aa3c3e', '2020-05-29 08:34:54');
INSERT INTO `product_pageviews` VALUES (240, 10025, '127.0.0.1', 'f92b9f8f372e445fb6564cdd57aa3c3e', '2020-05-29 08:37:04');
INSERT INTO `product_pageviews` VALUES (241, 10026, '127.0.0.1', 'f92b9f8f372e445fb6564cdd57aa3c3e', '2020-05-29 08:39:27');
INSERT INTO `product_pageviews` VALUES (242, 10027, '127.0.0.1', 'f92b9f8f372e445fb6564cdd57aa3c3e', '2020-05-29 08:39:40');
INSERT INTO `product_pageviews` VALUES (243, 10028, '127.0.0.1', 'f92b9f8f372e445fb6564cdd57aa3c3e', '2020-05-29 08:46:27');
INSERT INTO `product_pageviews` VALUES (244, 10029, '127.0.0.1', 'f92b9f8f372e445fb6564cdd57aa3c3e', '2020-05-29 08:49:20');
INSERT INTO `product_pageviews` VALUES (245, 10005, '127.0.0.1', 'f92b9f8f372e445fb6564cdd57aa3c3e', '2020-05-29 08:49:29');
INSERT INTO `product_pageviews` VALUES (246, 10007, '127.0.0.1', 'f92b9f8f372e445fb6564cdd57aa3c3e', '2020-05-29 08:50:38');
INSERT INTO `product_pageviews` VALUES (247, 10006, '127.0.0.1', NULL, '2020-05-29 08:51:28');
INSERT INTO `product_pageviews` VALUES (248, 10030, '127.0.0.1', NULL, '2020-05-29 09:12:08');
INSERT INTO `product_pageviews` VALUES (249, 10009, '127.0.0.1', NULL, '2020-05-29 10:36:13');
INSERT INTO `product_pageviews` VALUES (250, 10002, '127.0.0.1', NULL, '2020-05-29 10:36:45');
INSERT INTO `product_pageviews` VALUES (251, 10010022, '127.0.0.1', NULL, '2020-05-29 10:42:16');
INSERT INTO `product_pageviews` VALUES (252, 10011, '127.0.0.1', NULL, '2020-05-29 10:44:55');
INSERT INTO `product_pageviews` VALUES (253, 10008, '127.0.0.1', NULL, '2020-05-29 10:46:47');
INSERT INTO `product_pageviews` VALUES (254, 10001, '127.0.0.1', 'f92b9f8f372e445fb6564cdd57aa3c3e', '2020-05-29 11:24:56');
INSERT INTO `product_pageviews` VALUES (255, 10004, '127.0.0.1', 'f92b9f8f372e445fb6564cdd57aa3c3e', '2020-05-29 12:36:46');
INSERT INTO `product_pageviews` VALUES (256, 10002, '175.8.62.141', '7c9fdfa3177042a08766aed29e7de6cd', '2020-05-29 05:24:01');
INSERT INTO `product_pageviews` VALUES (257, 10001, '175.8.62.141', '7c9fdfa3177042a08766aed29e7de6cd', '2020-05-29 05:24:28');
INSERT INTO `product_pageviews` VALUES (258, 10004, '175.8.62.141', '7c9fdfa3177042a08766aed29e7de6cd', '2020-05-29 05:33:55');
INSERT INTO `product_pageviews` VALUES (259, 10023, '127.0.0.1', NULL, '2020-05-29 14:11:24');
INSERT INTO `product_pageviews` VALUES (260, 10019, '127.0.0.1', 'f92b9f8f372e445fb6564cdd57aa3c3e', '2020-05-29 14:13:46');
INSERT INTO `product_pageviews` VALUES (261, 10027, '127.0.0.1', 'f92b9f8f372e445fb6564cdd57aa3c3e', '2020-05-29 14:28:50');
INSERT INTO `product_pageviews` VALUES (262, 10003, '127.0.0.1', 'f92b9f8f372e445fb6564cdd57aa3c3e', '2020-05-29 14:29:12');
INSERT INTO `product_pageviews` VALUES (263, 10014, '127.0.0.1', 'f92b9f8f372e445fb6564cdd57aa3c3e', '2020-05-29 14:33:09');
INSERT INTO `product_pageviews` VALUES (264, 10002, '127.0.0.1', 'f92b9f8f372e445fb6564cdd57aa3c3e', '2020-05-29 14:46:25');
INSERT INTO `product_pageviews` VALUES (265, 10006, '127.0.0.1', 'f92b9f8f372e445fb6564cdd57aa3c3e', '2020-05-29 14:49:27');
INSERT INTO `product_pageviews` VALUES (266, 10012, '127.0.0.1', 'f92b9f8f372e445fb6564cdd57aa3c3e', '2020-05-29 14:49:40');
INSERT INTO `product_pageviews` VALUES (267, 10008, '127.0.0.1', 'f92b9f8f372e445fb6564cdd57aa3c3e', '2020-05-29 15:00:12');
INSERT INTO `product_pageviews` VALUES (268, 10026, '127.0.0.1', 'f92b9f8f372e445fb6564cdd57aa3c3e', '2020-05-29 15:41:07');
INSERT INTO `product_pageviews` VALUES (269, 10001, '127.0.0.1', NULL, '2020-05-29 16:44:44');
INSERT INTO `product_pageviews` VALUES (270, 10022, '127.0.0.1', 'f92b9f8f372e445fb6564cdd57aa3c3e', '2020-05-29 17:33:08');
INSERT INTO `product_pageviews` VALUES (271, 10003, '43.250.200.104', 'f92b9f8f372e445fb6564cdd57aa3c3e', '2020-05-29 10:09:12');
INSERT INTO `product_pageviews` VALUES (272, 10001, '43.250.200.104', 'f92b9f8f372e445fb6564cdd57aa3c3e', '2020-05-29 10:10:40');
INSERT INTO `product_pageviews` VALUES (273, 10001, '175.8.62.141', '7c9fdfa3177042a08766aed29e7de6cd', '2020-05-29 10:10:54');
INSERT INTO `product_pageviews` VALUES (274, 10008, '43.250.200.104', 'f92b9f8f372e445fb6564cdd57aa3c3e', '2020-05-29 10:13:22');
INSERT INTO `product_pageviews` VALUES (275, 10028, '43.250.200.104', 'f92b9f8f372e445fb6564cdd57aa3c3e', '2020-05-29 10:14:39');
INSERT INTO `product_pageviews` VALUES (276, 10007, '43.250.200.104', 'f92b9f8f372e445fb6564cdd57aa3c3e', '2020-05-29 10:14:45');
INSERT INTO `product_pageviews` VALUES (277, 10006, '43.250.200.104', 'f92b9f8f372e445fb6564cdd57aa3c3e', '2020-05-29 10:16:00');
INSERT INTO `product_pageviews` VALUES (278, 10022, '43.250.200.104', 'f92b9f8f372e445fb6564cdd57aa3c3e', '2020-05-29 10:21:01');
INSERT INTO `product_pageviews` VALUES (279, 10029, '43.250.200.104', 'f92b9f8f372e445fb6564cdd57aa3c3e', '2020-05-29 10:25:20');
INSERT INTO `product_pageviews` VALUES (280, 10023, '127.0.0.1', '7c9fdfa3177042a08766aed29e7de6cd', '2020-05-29 18:50:29');
INSERT INTO `product_pageviews` VALUES (281, 10004, '175.8.62.141', '7c9fdfa3177042a08766aed29e7de6cd', '2020-05-29 11:20:05');
INSERT INTO `product_pageviews` VALUES (282, 10002, '175.8.62.141', '7c9fdfa3177042a08766aed29e7de6cd', '2020-05-29 11:20:14');
INSERT INTO `product_pageviews` VALUES (283, 10007, '175.8.62.141', '7c9fdfa3177042a08766aed29e7de6cd', '2020-05-29 11:24:39');
INSERT INTO `product_pageviews` VALUES (284, 10006, '175.8.62.141', NULL, '2020-05-29 11:25:38');
INSERT INTO `product_pageviews` VALUES (285, 10005, '175.8.62.141', '7c9fdfa3177042a08766aed29e7de6cd', '2020-05-29 11:34:37');
INSERT INTO `product_pageviews` VALUES (286, 10011, '175.8.62.141', '7c9fdfa3177042a08766aed29e7de6cd', '2020-05-29 11:35:14');
INSERT INTO `product_pageviews` VALUES (287, 10024, '175.8.62.141', '7c9fdfa3177042a08766aed29e7de6cd', '2020-05-29 11:36:59');
INSERT INTO `product_pageviews` VALUES (288, 10003, '127.0.0.1', 'f92b9f8f372e445fb6564cdd57aa3c3e', '2020-05-29 19:57:47');
INSERT INTO `product_pageviews` VALUES (289, 10004, '127.0.0.1', 'f92b9f8f372e445fb6564cdd57aa3c3e', '2020-05-29 19:58:14');
INSERT INTO `product_pageviews` VALUES (290, 10026, '127.0.0.1', 'f92b9f8f372e445fb6564cdd57aa3c3e', '2020-05-29 19:58:20');
INSERT INTO `product_pageviews` VALUES (291, 10011, '127.0.0.1', 'f92b9f8f372e445fb6564cdd57aa3c3e', '2020-05-29 22:07:46');
INSERT INTO `product_pageviews` VALUES (292, 10014, '127.0.0.1', 'f92b9f8f372e445fb6564cdd57aa3c3e', '2020-05-29 22:08:02');
INSERT INTO `product_pageviews` VALUES (293, 10005, '127.0.0.1', 'f92b9f8f372e445fb6564cdd57aa3c3e', '2020-05-29 22:11:30');
INSERT INTO `product_pageviews` VALUES (294, 10007, '127.0.0.1', 'f92b9f8f372e445fb6564cdd57aa3c3e', '2020-05-29 22:11:36');
INSERT INTO `product_pageviews` VALUES (295, 10015, '127.0.0.1', 'f92b9f8f372e445fb6564cdd57aa3c3e', '2020-05-29 22:11:43');
INSERT INTO `product_pageviews` VALUES (296, 10027, '127.0.0.1', 'f92b9f8f372e445fb6564cdd57aa3c3e', '2020-05-29 22:12:23');
INSERT INTO `product_pageviews` VALUES (297, 10009, '127.0.0.1', 'f92b9f8f372e445fb6564cdd57aa3c3e', '2020-05-29 22:16:46');
INSERT INTO `product_pageviews` VALUES (298, 10028, '127.0.0.1', '7c9fdfa3177042a08766aed29e7de6cd', '2020-05-29 22:19:41');
INSERT INTO `product_pageviews` VALUES (299, 10024, '127.0.0.1', '7c9fdfa3177042a08766aed29e7de6cd', '2020-05-29 22:37:56');
INSERT INTO `product_pageviews` VALUES (300, 10025, '127.0.0.1', '7c9fdfa3177042a08766aed29e7de6cd', '2020-05-29 22:39:45');
INSERT INTO `product_pageviews` VALUES (301, 10018, '127.0.0.1', '7c9fdfa3177042a08766aed29e7de6cd', '2020-05-29 22:41:40');
INSERT INTO `product_pageviews` VALUES (302, 10001, '127.0.0.1', '7c9fdfa3177042a08766aed29e7de6cd', '2020-05-30 10:05:37');
INSERT INTO `product_pageviews` VALUES (303, 10002, '127.0.0.1', '7c9fdfa3177042a08766aed29e7de6cd', '2020-05-30 10:05:50');
INSERT INTO `product_pageviews` VALUES (304, 10014, '127.0.0.1', '7c9fdfa3177042a08766aed29e7de6cd', '2020-05-30 10:07:28');
INSERT INTO `product_pageviews` VALUES (305, 10008, '127.0.0.1', '7c9fdfa3177042a08766aed29e7de6cd', '2020-05-30 10:07:35');
INSERT INTO `product_pageviews` VALUES (306, 10027, '127.0.0.1', '7c9fdfa3177042a08766aed29e7de6cd', '2020-05-30 10:07:50');
INSERT INTO `product_pageviews` VALUES (307, 10029, '127.0.0.1', '7c9fdfa3177042a08766aed29e7de6cd', '2020-05-30 10:08:15');
INSERT INTO `product_pageviews` VALUES (308, 10001, '175.8.62.141', '7c9fdfa3177042a08766aed29e7de6cd', '2020-05-30 02:48:54');
INSERT INTO `product_pageviews` VALUES (309, 10009, '175.8.62.141', '7c9fdfa3177042a08766aed29e7de6cd', '2020-05-30 02:49:56');
INSERT INTO `product_pageviews` VALUES (310, 10002, '175.8.62.141', '7c9fdfa3177042a08766aed29e7de6cd', '2020-05-30 02:50:52');
INSERT INTO `product_pageviews` VALUES (311, 10021, '175.8.62.141', '7c9fdfa3177042a08766aed29e7de6cd', '2020-05-30 02:51:08');
INSERT INTO `product_pageviews` VALUES (312, 10020, '175.8.62.141', '7c9fdfa3177042a08766aed29e7de6cd', '2020-05-30 02:51:24');
INSERT INTO `product_pageviews` VALUES (313, 10022, '175.8.62.141', '7c9fdfa3177042a08766aed29e7de6cd', '2020-05-30 02:51:43');
INSERT INTO `product_pageviews` VALUES (314, 10018, '175.8.62.141', '7c9fdfa3177042a08766aed29e7de6cd', '2020-05-30 03:16:25');
INSERT INTO `product_pageviews` VALUES (315, 10022, '127.0.0.1', NULL, '2020-05-30 13:03:46');
INSERT INTO `product_pageviews` VALUES (316, 10020, '127.0.0.1', '7c9fdfa3177042a08766aed29e7de6cd', '2020-05-30 14:04:45');
INSERT INTO `product_pageviews` VALUES (317, 10001, '127.0.0.1', '7c9fdfa3177042a08766aed29e7de6cd', '2020-05-30 14:06:37');
INSERT INTO `product_pageviews` VALUES (318, 10024, '127.0.0.1', '7c9fdfa3177042a08766aed29e7de6cd', '2020-05-30 14:14:12');
INSERT INTO `product_pageviews` VALUES (319, 10008, '127.0.0.1', '7c9fdfa3177042a08766aed29e7de6cd', '2020-05-30 14:20:12');
INSERT INTO `product_pageviews` VALUES (320, 10006, '127.0.0.1', '7c9fdfa3177042a08766aed29e7de6cd', '2020-05-30 14:20:36');
INSERT INTO `product_pageviews` VALUES (321, 10029, '127.0.0.1', '7c9fdfa3177042a08766aed29e7de6cd', '2020-05-30 15:03:18');
INSERT INTO `product_pageviews` VALUES (322, 10004, '127.0.0.1', '7c9fdfa3177042a08766aed29e7de6cd', '2020-05-30 15:03:28');
INSERT INTO `product_pageviews` VALUES (323, 10004, '175.8.62.141', '7c9fdfa3177042a08766aed29e7de6cd', '2020-05-30 07:06:48');
INSERT INTO `product_pageviews` VALUES (324, 10005, '127.0.0.1', '7c9fdfa3177042a08766aed29e7de6cd', '2020-05-30 16:26:07');
INSERT INTO `product_pageviews` VALUES (325, 10026, '175.8.62.141', '7c9fdfa3177042a08766aed29e7de6cd', '2020-05-30 09:35:19');
INSERT INTO `product_pageviews` VALUES (326, 10001, '175.8.62.141', '7c9fdfa3177042a08766aed29e7de6cd', '2020-05-30 09:35:29');
INSERT INTO `product_pageviews` VALUES (327, 10011, '127.0.0.1', '7c9fdfa3177042a08766aed29e7de6cd', '2020-05-30 17:44:53');
INSERT INTO `product_pageviews` VALUES (328, 10026, '127.0.0.1', '7c9fdfa3177042a08766aed29e7de6cd', '2020-05-30 18:06:23');
INSERT INTO `product_pageviews` VALUES (329, 10030, '127.0.0.1', '7c9fdfa3177042a08766aed29e7de6cd', '2020-05-30 18:43:26');
INSERT INTO `product_pageviews` VALUES (330, 10027, '127.0.0.1', '7c9fdfa3177042a08766aed29e7de6cd', '2020-05-30 18:45:27');
INSERT INTO `product_pageviews` VALUES (331, 10025, '127.0.0.1', '7c9fdfa3177042a08766aed29e7de6cd', '2020-05-30 18:46:26');
INSERT INTO `product_pageviews` VALUES (332, 10001, '127.0.0.1', '7c9fdfa3177042a08766aed29e7de6cd', '2020-05-30 19:04:58');
INSERT INTO `product_pageviews` VALUES (333, 10023, '127.0.0.1', 'f92b9f8f372e445fb6564cdd57aa3c3e', '2020-05-30 19:38:59');
INSERT INTO `product_pageviews` VALUES (334, 10025, '175.8.62.141', '7c9fdfa3177042a08766aed29e7de6cd', '2020-05-30 12:23:54');
INSERT INTO `product_pageviews` VALUES (335, 10006, '43.250.200.104', NULL, '2020-05-30 12:32:48');
INSERT INTO `product_pageviews` VALUES (336, 10021, '43.250.200.104', 'f92b9f8f372e445fb6564cdd57aa3c3e', '2020-05-30 12:39:16');
INSERT INTO `product_pageviews` VALUES (337, 10027, '43.250.200.104', 'f92b9f8f372e445fb6564cdd57aa3c3e', '2020-05-30 12:39:42');
INSERT INTO `product_pageviews` VALUES (338, 10004, '175.8.62.141', '7c9fdfa3177042a08766aed29e7de6cd', '2020-05-30 12:41:12');
INSERT INTO `product_pageviews` VALUES (339, 10024, '127.0.0.1', '7c9fdfa3177042a08766aed29e7de6cd', '2020-05-30 21:07:11');
INSERT INTO `product_pageviews` VALUES (340, 10007, '127.0.0.1', 'f92b9f8f372e445fb6564cdd57aa3c3e', '2020-05-30 21:08:36');
INSERT INTO `product_pageviews` VALUES (341, 10011, '175.8.62.141', '7c9fdfa3177042a08766aed29e7de6cd', '2020-05-30 13:24:31');
INSERT INTO `product_pageviews` VALUES (342, 10030, '175.8.62.141', '7c9fdfa3177042a08766aed29e7de6cd', '2020-05-30 13:28:01');
INSERT INTO `product_pageviews` VALUES (343, 10027, '175.8.62.141', '7c9fdfa3177042a08766aed29e7de6cd', '2020-05-30 13:51:07');
INSERT INTO `product_pageviews` VALUES (344, 10026, '113.220.5.206', '3e7cb3ada38c49a58d57a7c3446ec932', '2020-05-30 14:12:23');
INSERT INTO `product_pageviews` VALUES (345, 10018, '113.220.5.206', '3e7cb3ada38c49a58d57a7c3446ec932', '2020-05-30 14:14:29');
INSERT INTO `product_pageviews` VALUES (346, 10011, '113.220.5.206', '3e7cb3ada38c49a58d57a7c3446ec932', '2020-05-30 14:37:43');
INSERT INTO `product_pageviews` VALUES (347, 10029, '113.220.5.206', '3e7cb3ada38c49a58d57a7c3446ec932', '2020-05-30 15:18:23');
INSERT INTO `product_pageviews` VALUES (348, 10001, '113.220.5.206', '3e7cb3ada38c49a58d57a7c3446ec932', '2020-05-30 15:18:54');
INSERT INTO `product_pageviews` VALUES (349, 10001, '175.8.62.141', '7c9fdfa3177042a08766aed29e7de6cd', '2020-05-31 02:14:41');
INSERT INTO `product_pageviews` VALUES (350, 10027, '175.8.62.141', '7c9fdfa3177042a08766aed29e7de6cd', '2020-05-31 02:14:46');
INSERT INTO `product_pageviews` VALUES (351, 10002, '175.8.62.141', '7c9fdfa3177042a08766aed29e7de6cd', '2020-05-31 02:28:24');
INSERT INTO `product_pageviews` VALUES (352, 10018, '175.8.62.141', '7c9fdfa3177042a08766aed29e7de6cd', '2020-05-31 02:28:40');
INSERT INTO `product_pageviews` VALUES (353, 10013, '127.0.0.1', '7c9fdfa3177042a08766aed29e7de6cd', '2020-05-31 10:36:39');
INSERT INTO `product_pageviews` VALUES (354, 10009, '127.0.0.1', '7c9fdfa3177042a08766aed29e7de6cd', '2020-05-31 10:39:57');
INSERT INTO `product_pageviews` VALUES (355, 10025, '127.0.0.1', '7c9fdfa3177042a08766aed29e7de6cd', '2020-05-31 10:41:38');
INSERT INTO `product_pageviews` VALUES (356, 10027, '127.0.0.1', 'fd2d5eb2dd124f23802f163cd3998741', '2020-05-31 11:39:45');
INSERT INTO `product_pageviews` VALUES (357, 10005, '43.250.200.104', 'f92b9f8f372e445fb6564cdd57aa3c3e', '2020-05-31 03:43:31');
INSERT INTO `product_pageviews` VALUES (358, 10004, '43.250.200.104', 'f92b9f8f372e445fb6564cdd57aa3c3e', '2020-05-31 03:43:55');
INSERT INTO `product_pageviews` VALUES (359, 10024, '127.0.0.1', 'fd2d5eb2dd124f23802f163cd3998741', '2020-05-31 11:50:46');
INSERT INTO `product_pageviews` VALUES (360, 10018, '127.0.0.1', 'fd2d5eb2dd124f23802f163cd3998741', '2020-05-31 11:52:43');
INSERT INTO `product_pageviews` VALUES (361, 10005, '127.0.0.1', 'bab534a3fb2e42afb704894fc556c11d', '2020-05-31 11:57:54');
INSERT INTO `product_pageviews` VALUES (362, 10006, '127.0.0.1', 'bab534a3fb2e42afb704894fc556c11d', '2020-05-31 12:05:57');
INSERT INTO `product_pageviews` VALUES (363, 10029, '127.0.0.1', 'bab534a3fb2e42afb704894fc556c11d', '2020-05-31 12:18:50');
INSERT INTO `product_pageviews` VALUES (364, 10011, '127.0.0.1', 'bab534a3fb2e42afb704894fc556c11d', '2020-05-31 14:25:57');
INSERT INTO `product_pageviews` VALUES (365, 10013, '127.0.0.1', 'bab534a3fb2e42afb704894fc556c11d', '2020-05-31 14:43:30');
INSERT INTO `product_pageviews` VALUES (366, 10008, '127.0.0.1', 'bab534a3fb2e42afb704894fc556c11d', '2020-05-31 14:43:51');
INSERT INTO `product_pageviews` VALUES (367, 10001, '175.8.62.141', 'fd2d5eb2dd124f23802f163cd3998741', '2020-05-31 07:04:16');
INSERT INTO `product_pageviews` VALUES (368, 10011, '175.8.62.141', 'fd2d5eb2dd124f23802f163cd3998741', '2020-05-31 07:04:22');
INSERT INTO `product_pageviews` VALUES (369, 10005, '175.8.62.141', 'fd2d5eb2dd124f23802f163cd3998741', '2020-05-31 07:12:25');
INSERT INTO `product_pageviews` VALUES (370, 10027, '175.8.62.141', 'fd2d5eb2dd124f23802f163cd3998741', '2020-05-31 07:19:21');
INSERT INTO `product_pageviews` VALUES (371, 10015, '43.250.200.104', NULL, '2020-05-31 07:20:19');
INSERT INTO `product_pageviews` VALUES (372, 10017, '43.250.200.104', NULL, '2020-05-31 07:20:29');
INSERT INTO `product_pageviews` VALUES (373, 10010, '43.250.200.104', NULL, '2020-05-31 07:20:57');
INSERT INTO `product_pageviews` VALUES (374, 10006, '43.250.200.104', 'f92b9f8f372e445fb6564cdd57aa3c3e', '2020-05-31 07:23:01');
INSERT INTO `product_pageviews` VALUES (375, 10029, '43.250.200.104', 'f92b9f8f372e445fb6564cdd57aa3c3e', '2020-05-31 07:23:20');
INSERT INTO `product_pageviews` VALUES (376, 10009, '175.8.62.141', 'fd2d5eb2dd124f23802f163cd3998741', '2020-05-31 07:24:34');
INSERT INTO `product_pageviews` VALUES (377, 10024, '43.250.200.104', 'f92b9f8f372e445fb6564cdd57aa3c3e', '2020-05-31 07:24:50');
INSERT INTO `product_pageviews` VALUES (378, 10025, '175.8.62.141', 'fd2d5eb2dd124f23802f163cd3998741', '2020-05-31 07:24:58');
INSERT INTO `product_pageviews` VALUES (379, 10016, '43.250.200.104', 'f92b9f8f372e445fb6564cdd57aa3c3e', '2020-05-31 07:27:51');
INSERT INTO `product_pageviews` VALUES (380, 10027, '43.250.200.104', 'f92b9f8f372e445fb6564cdd57aa3c3e', '2020-05-31 07:32:56');
INSERT INTO `product_pageviews` VALUES (381, 10027, '127.0.0.1', 'fd2d5eb2dd124f23802f163cd3998741', '2020-05-31 15:49:05');
INSERT INTO `product_pageviews` VALUES (382, 10021, '175.8.62.141', 'fd2d5eb2dd124f23802f163cd3998741', '2020-05-31 08:20:00');
INSERT INTO `product_pageviews` VALUES (383, 10003, '175.8.62.141', 'fd2d5eb2dd124f23802f163cd3998741', '2020-05-31 08:50:59');
INSERT INTO `product_pageviews` VALUES (384, 10003, '43.250.200.104', 'f92b9f8f372e445fb6564cdd57aa3c3e', '2020-05-31 09:30:29');
INSERT INTO `product_pageviews` VALUES (385, 10020, '43.250.200.104', NULL, '2020-05-31 09:40:03');
INSERT INTO `product_pageviews` VALUES (386, 10009, '43.250.200.104', 'f92b9f8f372e445fb6564cdd57aa3c3e', '2020-05-31 09:40:35');
INSERT INTO `product_pageviews` VALUES (387, 10021, '43.250.200.104', NULL, '2020-05-31 09:42:22');
INSERT INTO `product_pageviews` VALUES (388, 10011, '43.250.200.104', 'f92b9f8f372e445fb6564cdd57aa3c3e', '2020-05-31 09:47:13');
INSERT INTO `product_pageviews` VALUES (389, 10025, '175.8.62.141', 'fd2d5eb2dd124f23802f163cd3998741', '2020-05-31 11:53:03');
INSERT INTO `product_pageviews` VALUES (390, 10027, '175.8.62.141', 'fd2d5eb2dd124f23802f163cd3998741', '2020-05-31 11:54:30');
INSERT INTO `product_pageviews` VALUES (391, 10013, '43.250.200.106', NULL, '2020-06-02 13:04:07');
INSERT INTO `product_pageviews` VALUES (392, 10016, '43.250.200.106', NULL, '2020-06-02 13:04:31');
INSERT INTO `product_pageviews` VALUES (393, 10020, '43.250.200.106', NULL, '2020-06-02 13:04:49');
INSERT INTO `product_pageviews` VALUES (394, 10011, '43.250.200.106', 'f92b9f8f372e445fb6564cdd57aa3c3e', '2020-06-02 13:06:02');
INSERT INTO `product_pageviews` VALUES (395, 10006, '43.250.200.106', 'f92b9f8f372e445fb6564cdd57aa3c3e', '2020-06-02 15:44:45');
INSERT INTO `product_pageviews` VALUES (396, 10015, '43.250.200.106', NULL, '2020-06-02 15:44:59');
INSERT INTO `product_pageviews` VALUES (397, 10022, '43.250.200.106', NULL, '2020-06-02 15:45:06');
INSERT INTO `product_pageviews` VALUES (398, 10003, '43.250.200.106', 'bab534a3fb2e42afb704894fc556c11d', '2020-06-02 15:47:34');
INSERT INTO `product_pageviews` VALUES (399, 10008, '43.250.200.106', 'bab534a3fb2e42afb704894fc556c11d', '2020-06-02 15:48:27');
INSERT INTO `product_pageviews` VALUES (400, 10015, '43.250.200.106', NULL, '2020-06-03 01:05:15');
INSERT INTO `product_pageviews` VALUES (401, 10006, '43.250.200.106', NULL, '2020-06-03 01:08:01');
INSERT INTO `product_pageviews` VALUES (402, 10022, '43.250.200.106', NULL, '2020-06-03 01:08:16');
INSERT INTO `product_pageviews` VALUES (403, 10001, '43.250.200.106', NULL, '2020-06-03 03:20:12');
INSERT INTO `product_pageviews` VALUES (404, 10007, '43.250.200.106', NULL, '2020-06-03 03:24:24');
INSERT INTO `product_pageviews` VALUES (405, 10011, '43.250.200.106', NULL, '2020-06-03 03:24:47');
INSERT INTO `product_pageviews` VALUES (406, 10013, '43.250.200.106', 'f92b9f8f372e445fb6564cdd57aa3c3e', '2020-06-03 03:33:57');
INSERT INTO `product_pageviews` VALUES (407, 10029, '220.202.152.18', NULL, '2020-06-03 10:56:46');
INSERT INTO `product_pageviews` VALUES (408, 10025, '175.8.61.76', 'fd2d5eb2dd124f23802f163cd3998741', '2020-06-03 13:42:18');
INSERT INTO `product_pageviews` VALUES (409, 10027, '175.8.61.76', 'fd2d5eb2dd124f23802f163cd3998741', '2020-06-04 09:26:21');
INSERT INTO `product_pageviews` VALUES (410, 10006, '220.202.152.90', NULL, '2020-06-05 02:38:58');
INSERT INTO `product_pageviews` VALUES (411, 10001, '220.202.152.90', NULL, '2020-06-05 02:39:43');
INSERT INTO `product_pageviews` VALUES (412, 10007, '220.202.152.90', NULL, '2020-06-05 02:40:58');
INSERT INTO `product_pageviews` VALUES (413, 10022, '220.202.152.90', NULL, '2020-06-05 02:43:46');
INSERT INTO `product_pageviews` VALUES (414, 10001, '127.0.0.1', NULL, '2020-06-06 16:27:54');
INSERT INTO `product_pageviews` VALUES (415, 10001, '175.8.62.207', NULL, '2020-06-09 08:41:40');
INSERT INTO `product_pageviews` VALUES (416, 10013, '175.8.62.207', NULL, '2020-06-09 08:41:54');
INSERT INTO `product_pageviews` VALUES (417, 10002, '113.220.7.240', '3e7cb3ada38c49a58d57a7c3446ec932', '2020-06-09 08:55:40');
INSERT INTO `product_pageviews` VALUES (418, 10015, '113.220.7.240', '3e7cb3ada38c49a58d57a7c3446ec932', '2020-06-09 10:13:37');
INSERT INTO `product_pageviews` VALUES (419, 10003, '113.220.7.240', '3e7cb3ada38c49a58d57a7c3446ec932', '2020-06-09 10:14:20');
INSERT INTO `product_pageviews` VALUES (420, 10027, '175.8.62.207', 'fd2d5eb2dd124f23802f163cd3998741', '2020-06-09 10:17:51');
INSERT INTO `product_pageviews` VALUES (421, 10009, '43.250.200.90', 'f92b9f8f372e445fb6564cdd57aa3c3e', '2020-06-09 10:20:02');
INSERT INTO `product_pageviews` VALUES (422, 10011, '175.8.62.207', 'fd2d5eb2dd124f23802f163cd3998741', '2020-06-09 10:28:37');
INSERT INTO `product_pageviews` VALUES (423, 10003, '175.8.62.207', 'fd2d5eb2dd124f23802f163cd3998741', '2020-06-09 10:35:45');
INSERT INTO `product_pageviews` VALUES (424, 10009, '175.8.62.207', 'fd2d5eb2dd124f23802f163cd3998741', '2020-06-09 10:47:11');
INSERT INTO `product_pageviews` VALUES (425, 10005, '175.8.62.207', 'fd2d5eb2dd124f23802f163cd3998741', '2020-06-09 10:49:42');
INSERT INTO `product_pageviews` VALUES (426, 10006, '127.0.0.1', NULL, '2020-06-09 19:12:26');
INSERT INTO `product_pageviews` VALUES (427, 10024, '175.8.62.207', 'fd2d5eb2dd124f23802f163cd3998741', '2020-06-09 11:17:32');
INSERT INTO `product_pageviews` VALUES (428, 10007, '223.104.131.133', NULL, '2020-06-10 13:22:23');
INSERT INTO `product_pageviews` VALUES (429, 10013, '223.104.131.133', NULL, '2020-06-10 13:24:31');
INSERT INTO `product_pageviews` VALUES (430, 10013, '175.8.61.199', NULL, '2020-06-15 02:11:23');
INSERT INTO `product_pageviews` VALUES (431, 10027, '175.8.61.199', NULL, '2020-06-15 02:11:35');
INSERT INTO `product_pageviews` VALUES (432, 10003, '175.8.61.199', 'fd2d5eb2dd124f23802f163cd3998741', '2020-06-15 04:10:40');
INSERT INTO `product_pageviews` VALUES (433, 10004, '175.8.61.199', 'fd2d5eb2dd124f23802f163cd3998741', '2020-06-15 04:10:56');
INSERT INTO `product_pageviews` VALUES (434, 10026, '43.250.200.98', NULL, '2020-06-15 05:15:18');
INSERT INTO `product_pageviews` VALUES (435, 10005, '43.250.200.98', 'f92b9f8f372e445fb6564cdd57aa3c3e', '2020-06-15 05:16:06');
INSERT INTO `product_pageviews` VALUES (436, 10014, '43.250.200.98', 'f92b9f8f372e445fb6564cdd57aa3c3e', '2020-06-15 06:05:39');
INSERT INTO `product_pageviews` VALUES (437, 10006, '43.250.200.98', 'f92b9f8f372e445fb6564cdd57aa3c3e', '2020-06-15 06:06:39');
INSERT INTO `product_pageviews` VALUES (438, 10001, '43.250.200.98', 'f92b9f8f372e445fb6564cdd57aa3c3e', '2020-06-15 06:07:10');
INSERT INTO `product_pageviews` VALUES (439, 10022, '43.250.200.98', 'f92b9f8f372e445fb6564cdd57aa3c3e', '2020-06-15 06:08:54');
INSERT INTO `product_pageviews` VALUES (440, 10015, '113.220.1.251', '3e7cb3ada38c49a58d57a7c3446ec932', '2020-06-15 06:59:05');
INSERT INTO `product_pageviews` VALUES (441, 10026, '43.250.201.16', 'f92b9f8f372e445fb6564cdd57aa3c3e', '2020-06-15 09:07:33');
INSERT INTO `product_pageviews` VALUES (442, 10029, '43.250.201.59', NULL, '2020-06-16 02:17:15');
INSERT INTO `product_pageviews` VALUES (443, 10006, '175.8.61.199', NULL, '2020-06-16 02:57:16');
INSERT INTO `product_pageviews` VALUES (444, 10026, '175.8.61.199', NULL, '2020-06-16 02:57:49');
INSERT INTO `product_pageviews` VALUES (445, 10009, '175.8.61.199', NULL, '2020-06-16 02:57:55');
INSERT INTO `product_pageviews` VALUES (446, 10011, '175.8.61.199', NULL, '2020-06-16 02:58:04');
INSERT INTO `product_pageviews` VALUES (447, 10025, '175.8.61.199', NULL, '2020-06-16 02:58:15');
INSERT INTO `product_pageviews` VALUES (448, 10022, '175.8.61.199', NULL, '2020-06-16 02:58:19');
INSERT INTO `product_pageviews` VALUES (449, 10001, '175.8.61.199', NULL, '2020-06-16 02:58:32');
INSERT INTO `product_pageviews` VALUES (450, 10002, '175.8.61.199', NULL, '2020-06-16 02:58:37');
INSERT INTO `product_pageviews` VALUES (451, 10019, '175.8.61.199', NULL, '2020-06-16 02:58:42');
INSERT INTO `product_pageviews` VALUES (452, 10016, '175.8.61.199', NULL, '2020-06-16 02:58:48');
INSERT INTO `product_pageviews` VALUES (453, 10007, '175.8.61.199', NULL, '2020-06-16 02:58:53');
INSERT INTO `product_pageviews` VALUES (454, 10024, '175.8.61.199', NULL, '2020-06-16 03:00:04');
INSERT INTO `product_pageviews` VALUES (455, 10022, '119.39.248.77', 'f92b9f8f372e445fb6564cdd57aa3c3e', '2020-06-16 09:17:47');
INSERT INTO `product_pageviews` VALUES (456, 10013, '175.8.61.32', NULL, '2020-06-18 09:41:25');
INSERT INTO `product_pageviews` VALUES (457, 10004, '175.8.61.32', NULL, '2020-06-18 09:41:39');
INSERT INTO `product_pageviews` VALUES (458, 10011, '175.8.61.32', NULL, '2020-06-18 09:42:00');
INSERT INTO `product_pageviews` VALUES (459, 10001, '175.8.61.32', NULL, '2020-06-18 09:49:46');
INSERT INTO `product_pageviews` VALUES (460, 10019, '127.0.0.1', NULL, '2020-06-19 10:45:11');
INSERT INTO `product_pageviews` VALUES (461, 10095, '127.0.0.1', NULL, '2020-06-19 10:45:16');
INSERT INTO `product_pageviews` VALUES (462, 10104, '127.0.0.1', NULL, '2020-06-19 10:46:08');
INSERT INTO `product_pageviews` VALUES (463, 10002, '127.0.0.1', NULL, '2020-06-19 18:46:55');
INSERT INTO `product_pageviews` VALUES (464, 10107, '127.0.0.1', NULL, '2020-06-19 18:47:04');
INSERT INTO `product_pageviews` VALUES (465, 10001, '127.0.0.1', NULL, '2020-06-20 16:14:07');
INSERT INTO `product_pageviews` VALUES (466, 10069, '127.0.0.1', NULL, '2020-06-20 16:14:16');
INSERT INTO `product_pageviews` VALUES (467, 10011, '127.0.0.1', NULL, '2020-06-20 16:23:45');
INSERT INTO `product_pageviews` VALUES (468, 10013, '127.0.0.1', 'f92b9f8f372e445fb6564cdd57aa3c3e', '2020-06-20 16:28:52');
INSERT INTO `product_pageviews` VALUES (469, 10006, '43.250.200.30', 'f92b9f8f372e445fb6564cdd57aa3c3e', '2020-06-21 04:21:21');
INSERT INTO `product_pageviews` VALUES (470, 10007, '43.250.200.30', NULL, '2020-06-21 04:30:11');
INSERT INTO `product_pageviews` VALUES (471, 10022, '43.250.200.30', NULL, '2020-06-21 04:30:18');
INSERT INTO `product_pageviews` VALUES (472, 10026, '43.250.200.30', NULL, '2020-06-21 04:30:22');
INSERT INTO `product_pageviews` VALUES (473, 10013, '43.250.200.30', NULL, '2020-06-21 04:30:28');
INSERT INTO `product_pageviews` VALUES (474, 10006, '43.250.201.17', 'f92b9f8f372e445fb6564cdd57aa3c3e', '2020-06-21 06:18:15');
INSERT INTO `product_pageviews` VALUES (475, 10016, '43.250.201.17', 'f92b9f8f372e445fb6564cdd57aa3c3e', '2020-06-21 06:19:34');
INSERT INTO `product_pageviews` VALUES (476, 10013, '43.250.201.17', 'f92b9f8f372e445fb6564cdd57aa3c3e', '2020-06-21 06:20:47');
INSERT INTO `product_pageviews` VALUES (477, 10030, '43.250.201.17', NULL, '2020-06-21 06:55:34');
INSERT INTO `product_pageviews` VALUES (478, 10003, '43.250.201.17', 'f92b9f8f372e445fb6564cdd57aa3c3e', '2020-06-21 08:46:22');
INSERT INTO `product_pageviews` VALUES (479, 10002, '43.250.201.17', 'f92b9f8f372e445fb6564cdd57aa3c3e', '2020-06-21 08:47:06');
INSERT INTO `product_pageviews` VALUES (480, 10005, '43.250.201.17', NULL, '2020-06-21 09:02:09');
INSERT INTO `product_pageviews` VALUES (481, 10009, '43.250.201.17', 'f92b9f8f372e445fb6564cdd57aa3c3e', '2020-06-21 09:02:47');
INSERT INTO `product_pageviews` VALUES (482, 10007, '43.250.201.17', 'f92b9f8f372e445fb6564cdd57aa3c3e', '2020-06-21 09:56:55');
INSERT INTO `product_pageviews` VALUES (483, 10001, '43.250.201.17', 'f92b9f8f372e445fb6564cdd57aa3c3e', '2020-06-21 09:57:01');
INSERT INTO `product_pageviews` VALUES (484, 10001, '175.8.62.247', 'fd2d5eb2dd124f23802f163cd3998741', '2020-06-21 12:36:19');
INSERT INTO `product_pageviews` VALUES (485, 10002, '175.8.62.247', 'fd2d5eb2dd124f23802f163cd3998741', '2020-06-21 12:36:23');
INSERT INTO `product_pageviews` VALUES (486, 10011, '127.0.0.1', 'f92b9f8f372e445fb6564cdd57aa3c3e', '2020-06-22 09:34:17');
INSERT INTO `product_pageviews` VALUES (487, 10005, '127.0.0.1', 'f92b9f8f372e445fb6564cdd57aa3c3e', '2020-06-22 09:38:25');
INSERT INTO `product_pageviews` VALUES (488, 10010, '127.0.0.1', 'f92b9f8f372e445fb6564cdd57aa3c3e', '2020-06-22 09:41:17');
INSERT INTO `product_pageviews` VALUES (489, 10009, '116.162.2.125', 'f92b9f8f372e445fb6564cdd57aa3c3e', '2020-06-22 01:42:31');
INSERT INTO `product_pageviews` VALUES (490, 10006, '116.162.2.125', 'f92b9f8f372e445fb6564cdd57aa3c3e', '2020-06-22 01:44:41');
INSERT INTO `product_pageviews` VALUES (491, 10006, '127.0.0.1', 'f92b9f8f372e445fb6564cdd57aa3c3e', '2020-06-22 09:47:28');
INSERT INTO `product_pageviews` VALUES (492, 10013, '127.0.0.1', 'f92b9f8f372e445fb6564cdd57aa3c3e', '2020-06-22 09:53:06');
INSERT INTO `product_pageviews` VALUES (493, 10005, '116.162.2.125', 'f92b9f8f372e445fb6564cdd57aa3c3e', '2020-06-22 03:16:55');
INSERT INTO `product_pageviews` VALUES (494, 10013, '116.162.2.125', 'f92b9f8f372e445fb6564cdd57aa3c3e', '2020-06-22 03:19:46');
INSERT INTO `product_pageviews` VALUES (495, 10006, '43.250.200.6', NULL, '2020-06-22 10:31:53');
INSERT INTO `product_pageviews` VALUES (496, 10029, '43.250.200.6', 'f92b9f8f372e445fb6564cdd57aa3c3e', '2020-06-22 10:32:11');
INSERT INTO `product_pageviews` VALUES (497, 10006, '175.8.63.9', 'fd2d5eb2dd124f23802f163cd3998741', '2020-06-22 10:34:50');
INSERT INTO `product_pageviews` VALUES (498, 10008, '43.250.200.6', 'f92b9f8f372e445fb6564cdd57aa3c3e', '2020-06-22 10:35:35');
INSERT INTO `product_pageviews` VALUES (499, 10007, '175.8.63.9', 'fd2d5eb2dd124f23802f163cd3998741', '2020-06-22 10:36:01');
INSERT INTO `product_pageviews` VALUES (500, 10024, '175.8.63.9', 'fd2d5eb2dd124f23802f163cd3998741', '2020-06-22 10:36:58');
INSERT INTO `product_pageviews` VALUES (501, 10001, '175.8.63.9', 'fd2d5eb2dd124f23802f163cd3998741', '2020-06-22 10:37:45');
INSERT INTO `product_pageviews` VALUES (502, 10002, '43.250.200.6', 'f92b9f8f372e445fb6564cdd57aa3c3e', '2020-06-22 10:38:27');
INSERT INTO `product_pageviews` VALUES (503, 10014, '175.8.63.9', 'fd2d5eb2dd124f23802f163cd3998741', '2020-06-22 10:38:43');
INSERT INTO `product_pageviews` VALUES (504, 10013, '43.250.200.6', 'f92b9f8f372e445fb6564cdd57aa3c3e', '2020-06-22 10:38:53');
INSERT INTO `product_pageviews` VALUES (505, 10011, '175.8.63.9', 'fd2d5eb2dd124f23802f163cd3998741', '2020-06-22 10:39:06');
INSERT INTO `product_pageviews` VALUES (506, 10002, '175.8.63.9', 'fd2d5eb2dd124f23802f163cd3998741', '2020-06-22 10:39:40');
INSERT INTO `product_pageviews` VALUES (507, 10028, '175.8.63.9', 'fd2d5eb2dd124f23802f163cd3998741', '2020-06-22 10:40:45');
INSERT INTO `product_pageviews` VALUES (508, 10026, '43.250.200.6', 'f92b9f8f372e445fb6564cdd57aa3c3e', '2020-06-22 10:41:24');
INSERT INTO `product_pageviews` VALUES (509, 10024, '43.250.200.6', 'f92b9f8f372e445fb6564cdd57aa3c3e', '2020-06-22 12:49:09');
INSERT INTO `product_pageviews` VALUES (510, 10006, '43.250.200.12', 'f92b9f8f372e445fb6564cdd57aa3c3e', '2020-06-22 23:35:24');
INSERT INTO `product_pageviews` VALUES (511, 10022, '43.250.200.12', 'f92b9f8f372e445fb6564cdd57aa3c3e', '2020-06-22 23:39:35');
INSERT INTO `product_pageviews` VALUES (512, 10030, '43.250.201.18', NULL, '2020-06-23 08:41:28');

-- ----------------------------
-- Table structure for product_primary_category
-- ----------------------------
DROP TABLE IF EXISTS `product_primary_category`;
CREATE TABLE `product_primary_category`  (
  `product_primary_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_content_id` int(11) NULL DEFAULT NULL,
  `category_content` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `sign` int(11) NULL DEFAULT 0,
  `show_sign` int(11) NULL DEFAULT 0,
  PRIMARY KEY (`product_primary_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 133 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of product_primary_category
-- ----------------------------
INSERT INTO `product_primary_category` VALUES (101, 10, '家用电器', 1, 1);
INSERT INTO `product_primary_category` VALUES (104, 11, '手机', 0, 1);
INSERT INTO `product_primary_category` VALUES (105, 11, '运营商', 0, 1);
INSERT INTO `product_primary_category` VALUES (106, 11, '数码', 1, 1);
INSERT INTO `product_primary_category` VALUES (107, 12, '电脑', 0, 1);
INSERT INTO `product_primary_category` VALUES (108, 12, '办公', 0, 1);
INSERT INTO `product_primary_category` VALUES (109, 12, '文具', 1, 1);
INSERT INTO `product_primary_category` VALUES (110, 13, '男装', 0, 1);
INSERT INTO `product_primary_category` VALUES (111, 13, '女装', 0, 1);
INSERT INTO `product_primary_category` VALUES (112, 13, '童装', 1, 1);
INSERT INTO `product_primary_category` VALUES (113, 14, '美装', 0, 1);
INSERT INTO `product_primary_category` VALUES (114, 14, '个人清洁', 0, 1);
INSERT INTO `product_primary_category` VALUES (115, 14, '宠物', 1, 1);
INSERT INTO `product_primary_category` VALUES (116, 15, '女鞋', 0, 1);
INSERT INTO `product_primary_category` VALUES (117, 15, '箱包', 0, 1);
INSERT INTO `product_primary_category` VALUES (118, 15, '钟表', 1, 1);
INSERT INTO `product_primary_category` VALUES (119, 16, '男鞋', 0, 1);
INSERT INTO `product_primary_category` VALUES (120, 16, '运动', 0, 1);
INSERT INTO `product_primary_category` VALUES (121, 16, '户外', 1, 1);
INSERT INTO `product_primary_category` VALUES (122, 17, '房产', 0, 1);
INSERT INTO `product_primary_category` VALUES (123, 17, '汽车', 0, 1);
INSERT INTO `product_primary_category` VALUES (124, 17, '汽车用品', 1, 1);
INSERT INTO `product_primary_category` VALUES (125, 18, '母婴', 0, 1);
INSERT INTO `product_primary_category` VALUES (126, 18, '奶粉', 0, 1);
INSERT INTO `product_primary_category` VALUES (127, 18, '玩具', 1, 1);
INSERT INTO `product_primary_category` VALUES (129, 19, '机票', 0, 1);
INSERT INTO `product_primary_category` VALUES (130, 19, '酒店', 0, 1);
INSERT INTO `product_primary_category` VALUES (131, 19, '旅行', 1, 1);
INSERT INTO `product_primary_category` VALUES (132, 20, '食品', 1, 0);

-- ----------------------------
-- Table structure for product_secondary_category
-- ----------------------------
DROP TABLE IF EXISTS `product_secondary_category`;
CREATE TABLE `product_secondary_category`  (
  `product_secondary_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_primary_id` int(11) NULL DEFAULT NULL,
  `secondary_content` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `show_sign` int(11) NULL DEFAULT 0,
  PRIMARY KEY (`product_secondary_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1069 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of product_secondary_category
-- ----------------------------
INSERT INTO `product_secondary_category` VALUES (1001, 101, '电视', 1);
INSERT INTO `product_secondary_category` VALUES (1002, 101, '空调', 1);
INSERT INTO `product_secondary_category` VALUES (1003, 101, '洗衣机', 1);
INSERT INTO `product_secondary_category` VALUES (1004, 101, '冰箱', 1);
INSERT INTO `product_secondary_category` VALUES (1005, 101, '厨卫大电', 1);
INSERT INTO `product_secondary_category` VALUES (1006, 101, '厨房小电', 1);
INSERT INTO `product_secondary_category` VALUES (1007, 101, '生活电器', 1);
INSERT INTO `product_secondary_category` VALUES (1008, 101, '个人健康', 1);
INSERT INTO `product_secondary_category` VALUES (1009, 104, '手机通信', 1);
INSERT INTO `product_secondary_category` VALUES (1010, 104, '手机配件', 1);
INSERT INTO `product_secondary_category` VALUES (1011, 105, '运营商', 1);
INSERT INTO `product_secondary_category` VALUES (1012, 106, '摄影摄像', 1);
INSERT INTO `product_secondary_category` VALUES (1013, 106, '数码配件', 1);
INSERT INTO `product_secondary_category` VALUES (1014, 106, '影音娱乐', 1);
INSERT INTO `product_secondary_category` VALUES (1015, 106, '智能设备', 1);
INSERT INTO `product_secondary_category` VALUES (1016, 106, '电子教育', 1);
INSERT INTO `product_secondary_category` VALUES (1017, 107, '电脑整机', 1);
INSERT INTO `product_secondary_category` VALUES (1018, 107, '电脑配件', 1);
INSERT INTO `product_secondary_category` VALUES (1019, 107, '外设产品', 1);
INSERT INTO `product_secondary_category` VALUES (1020, 107, '游戏设备', 1);
INSERT INTO `product_secondary_category` VALUES (1021, 107, '网络产品', 1);
INSERT INTO `product_secondary_category` VALUES (1022, 108, '办公设备', 1);
INSERT INTO `product_secondary_category` VALUES (1023, 109, '文具', 1);
INSERT INTO `product_secondary_category` VALUES (1024, 109, '耗材', 1);
INSERT INTO `product_secondary_category` VALUES (1025, 110, '男装', 1);
INSERT INTO `product_secondary_category` VALUES (1026, 111, '女装', 1);
INSERT INTO `product_secondary_category` VALUES (1027, 111, '内衣', 1);
INSERT INTO `product_secondary_category` VALUES (1028, 111, '配饰', 1);
INSERT INTO `product_secondary_category` VALUES (1029, 112, '童装', 1);
INSERT INTO `product_secondary_category` VALUES (1030, 112, '童鞋', 1);
INSERT INTO `product_secondary_category` VALUES (1031, 113, '面部护肤', 1);
INSERT INTO `product_secondary_category` VALUES (1032, 113, '香水彩妆', 1);
INSERT INTO `product_secondary_category` VALUES (1033, 114, '洗发护发', 1);
INSERT INTO `product_secondary_category` VALUES (1034, 114, '女性护理', 1);
INSERT INTO `product_secondary_category` VALUES (1035, 114, '纸品清洗', 1);
INSERT INTO `product_secondary_category` VALUES (1036, 114, '家庭清洁', 1);
INSERT INTO `product_secondary_category` VALUES (1037, 115, '宠物生活', 1);
INSERT INTO `product_secondary_category` VALUES (1038, 116, '时尚女鞋', 1);
INSERT INTO `product_secondary_category` VALUES (1039, 117, '潮流女包', 1);
INSERT INTO `product_secondary_category` VALUES (1040, 117, '精品男包', 1);
INSERT INTO `product_secondary_category` VALUES (1041, 117, '功能箱包', 1);
INSERT INTO `product_secondary_category` VALUES (1042, 118, '钟表', 1);
INSERT INTO `product_secondary_category` VALUES (1043, 119, '流行男鞋', 1);
INSERT INTO `product_secondary_category` VALUES (1044, 119, '运动鞋包', 1);
INSERT INTO `product_secondary_category` VALUES (1045, 120, '运动服饰', 1);
INSERT INTO `product_secondary_category` VALUES (1046, 120, '健身训练', 1);
INSERT INTO `product_secondary_category` VALUES (1047, 120, '骑行运动', 1);
INSERT INTO `product_secondary_category` VALUES (1048, 120, '体育用品', 1);
INSERT INTO `product_secondary_category` VALUES (1049, 121, '户外鞋服', 1);
INSERT INTO `product_secondary_category` VALUES (1050, 121, '户外装备', 1);
INSERT INTO `product_secondary_category` VALUES (1051, 122, '房产', 1);
INSERT INTO `product_secondary_category` VALUES (1052, 123, '汽车车型', 1);
INSERT INTO `product_secondary_category` VALUES (1053, 123, '汽车价格', 1);
INSERT INTO `product_secondary_category` VALUES (1054, 123, '汽车品牌', 1);
INSERT INTO `product_secondary_category` VALUES (1055, 123, '维修保养', 1);
INSERT INTO `product_secondary_category` VALUES (1056, 124, '汽车装饰', 1);
INSERT INTO `product_secondary_category` VALUES (1057, 124, '安全自驾', 1);
INSERT INTO `product_secondary_category` VALUES (1058, 124, '汽车脶务', 1);
INSERT INTO `product_secondary_category` VALUES (1059, 125, '尿裤湿巾', 1);
INSERT INTO `product_secondary_category` VALUES (1060, 125, '护品', 1);
INSERT INTO `product_secondary_category` VALUES (1061, 125, '妈妈专区', 1);
INSERT INTO `product_secondary_category` VALUES (1062, 126, '奶粉', 1);
INSERT INTO `product_secondary_category` VALUES (1063, 127, '儿童玩具', 1);
INSERT INTO `product_secondary_category` VALUES (1064, 127, '乐器', 1);
INSERT INTO `product_secondary_category` VALUES (1065, 129, '交通出行', 1);
INSERT INTO `product_secondary_category` VALUES (1066, 130, '酒店预订', 1);
INSERT INTO `product_secondary_category` VALUES (1067, 131, '旅游度假', 1);
INSERT INTO `product_secondary_category` VALUES (1068, 132, '食物', 0);

-- ----------------------------
-- Table structure for secondComment
-- ----------------------------
DROP TABLE IF EXISTS `secondComment`;
CREATE TABLE `secondComment`  (
  `secondCommentId` int(11) NOT NULL AUTO_INCREMENT,
  `commentId` int(255) NULL DEFAULT NULL,
  `textSecondComment` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `videoSecondComment` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `secondCommentTime` datetime(0) NULL DEFAULT NULL,
  `secondCommentVideoSign` int(11) NULL DEFAULT 0,
  PRIMARY KEY (`secondCommentId`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 18 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of secondComment
-- ----------------------------
INSERT INTO `secondComment` VALUES (13, 182, 'wew', NULL, '2020-05-21 11:41:19', 0);
INSERT INTO `secondComment` VALUES (14, 182, 'wew', ' http://img.isdfmk.xyz/71f0d8ea3f3e4886bba9f2c5f945205d', '2020-05-21 11:42:24', 0);
INSERT INTO `secondComment` VALUES (15, 183, '', ' http://img.isdfmk.xyz/eeb4f8cfbe33405ebc4df206b891a136', '2020-05-21 11:44:31', 0);
INSERT INTO `secondComment` VALUES (16, 183, '', ' http://img.isdfmk.xyz/e7521757027a4e3b9af1e2c2ff0e1b03', '2020-05-21 11:44:31', 0);
INSERT INTO `secondComment` VALUES (17, 184, 'sdfsf', ' http://img.isdfmk.xyz/2b316ee4c6b940adbd2515243d60d3f1', '2020-05-21 11:50:43', 0);

-- ----------------------------
-- Table structure for secondCommentImage
-- ----------------------------
DROP TABLE IF EXISTS `secondCommentImage`;
CREATE TABLE `secondCommentImage`  (
  `secondCommentId` int(11) NULL DEFAULT NULL,
  `secondCommentPicture` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of secondCommentImage
-- ----------------------------
INSERT INTO `secondCommentImage` VALUES (13, ' http://img.isdfmk.xyz/f4450c342a4747d59726a849633d000d?t=1590032487');
INSERT INTO `secondCommentImage` VALUES (15, ' http://img.isdfmk.xyz/7b2f7a02f9aa4fde84ae2a2233465791?t=1590032672');
INSERT INTO `secondCommentImage` VALUES (15, NULL);
INSERT INTO `secondCommentImage` VALUES (16, ' http://img.isdfmk.xyz/c407a0b20e7d41f09770af4187181abf?t=1590032673');
INSERT INTO `secondCommentImage` VALUES (16, NULL);
INSERT INTO `secondCommentImage` VALUES (17, ' http://img.isdfmk.xyz/056fc433ee874aff94bb1c46167c9dd6?t=1590033044');
INSERT INTO `secondCommentImage` VALUES (17, ' http://img.isdfmk.xyz/23d7ad21406d43a0b376e5c3194cfc86?t=1590033045');
INSERT INTO `secondCommentImage` VALUES (17, ' http://img.isdfmk.xyz/1083f4bbc8c34b93acad6151240ca622?t=1590033046');
INSERT INTO `secondCommentImage` VALUES (17, ' http://img.isdfmk.xyz/bb657cec66114562bf9228bafa3e59a0?t=1590033047');
INSERT INTO `secondCommentImage` VALUES (17, ' http://img.isdfmk.xyz/5ee6861ee27a4a4a948573602e94890a?t=1590033047');
INSERT INTO `secondCommentImage` VALUES (17, ' http://img.isdfmk.xyz/45296ba8731f44f68f6eb5e65c8cf075?t=1590033047');
INSERT INTO `secondCommentImage` VALUES (17, ' http://img.isdfmk.xyz/4d8e7dbb066c46ea8473073a88c9359f?t=1590033048');
INSERT INTO `secondCommentImage` VALUES (17, ' http://img.isdfmk.xyz/cb719fedc15949ab8888bef3dc7746e6?t=1590033048');
INSERT INTO `secondCommentImage` VALUES (17, ' http://img.isdfmk.xyz/a23fc02dbe0443eeb21bcbdef94862c6?t=1590033048');
INSERT INTO `secondCommentImage` VALUES (17, ' http://img.isdfmk.xyz/450a9fa61c0a4596ad474b35a86531ed?t=1590033048');
INSERT INTO `secondCommentImage` VALUES (17, NULL);

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
  `productPrice` double NULL DEFAULT NULL,
  `distinctionId` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`shoppingCartId`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3579 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of shoppingCart
-- ----------------------------
INSERT INTO `shoppingCart` VALUES (3453, '7c9fdfa3177042a08766aed29e7de6cd', 10001, '红色 豪华版 256G+8G\r\n ', 2, 6900, 2);
INSERT INTO `shoppingCart` VALUES (3455, '7c9fdfa3177042a08766aed29e7de6cd', 10001, '红色 豪华版 128G+2G ', 1, 5845, 4);
INSERT INTO `shoppingCart` VALUES (3530, 'fd2d5eb2dd124f23802f163cd3998741', 10001, '红色 标准版 128G+2G ', 1, 5741, 3);
INSERT INTO `shoppingCart` VALUES (3574, 'f92b9f8f372e445fb6564cdd57aa3c3e', 10013, '华硕PRIME X299-A主板+  ', 10, 11999, 55);
INSERT INTO `shoppingCart` VALUES (3575, 'fd2d5eb2dd124f23802f163cd3998741', 10028, 'Redmi 小爱音箱Play  小爱音箱万能遥控版  ', 1, 325.09, 150);
INSERT INTO `shoppingCart` VALUES (3576, 'fd2d5eb2dd124f23802f163cd3998741', 10028, '【小爱触屏音箱-红色】  小爱音箱万能遥控版  ', 1, 325.09, 154);
INSERT INTO `shoppingCart` VALUES (3577, 'fd2d5eb2dd124f23802f163cd3998741', 10028, '【小爱触屏音箱-白色】 小爱音箱万能遥控版  ', 1, 325.09, 152);
INSERT INTO `shoppingCart` VALUES (3578, 'fd2d5eb2dd124f23802f163cd3998741', 10028, 'Redmi 小爱音箱Play  小爱音箱play版 ', 1, 265.09, 151);

-- ----------------------------
-- Table structure for slideshow
-- ----------------------------
DROP TABLE IF EXISTS `slideshow`;
CREATE TABLE `slideshow`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `image` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `site` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `imageType` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 24 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of slideshow
-- ----------------------------
INSERT INTO `slideshow` VALUES (1, 'http://carousel.isdfmk.xyz/5690b6dcNd5aaa0f0.jpg', 'https://smallprofit.fhxasdsada.xyz/', '1');
INSERT INTO `slideshow` VALUES (2, 'http://carousel.isdfmk.xyz/56960e10N27e2d29f.jpg', 'https://smallprofit.fhxasdsada.xyz/', '1');
INSERT INTO `slideshow` VALUES (3, 'http://carousel.isdfmk.xyz/5698a5aaN08e09475.jpg', 'https://smallprofit.fhxasdsada.xyz/', '1');
INSERT INTO `slideshow` VALUES (4, 'http://carousel.isdfmk.xyz/56a05078N6add136b.jpg', 'https://smallprofit.fhxasdsada.xyz/', '1');
INSERT INTO `slideshow` VALUES (5, 'http://carousel.isdfmk.xyz/56a09e6aN373313d9.jpg', 'https://smallprofit.fhxasdsada.xyz/', '1');
INSERT INTO `slideshow` VALUES (6, 'http://carousel.isdfmk.xyz/56cdc416Ne54f9cd9.jpg', 'https://smallprofit.fhxasdsada.xyz/', '2');
INSERT INTO `slideshow` VALUES (7, 'http://carousel.isdfmk.xyz/56cdc812N28b5f894.jpg', 'https://smallprofit.fhxasdsada.xyz/', '2');
INSERT INTO `slideshow` VALUES (8, 'http://carousel.isdfmk.xyz/56cdc944N4f9497d4.jpg', 'https://smallprofit.fhxasdsada.xyz/', '2');
INSERT INTO `slideshow` VALUES (9, 'http://carousel.isdfmk.xyz/56cdc97aN3e1b0fe9.jpg', 'https://smallprofit.fhxasdsada.xyz/', '2');
INSERT INTO `slideshow` VALUES (10, 'http://carousel.isdfmk.xyz/56cdca36N6e25e29a.jpg', 'https://smallprofit.fhxasdsada.xyz/', '2');
INSERT INTO `slideshow` VALUES (11, 'http://carousel.isdfmk.xyz/56cdc486N8446aa1b.jpg', 'https://smallprofit.fhxasdsada.xyz/', '2');
INSERT INTO `slideshow` VALUES (12, 'http://carousel.isdfmk.xyz/56cdc822N62394473.jpg', 'https://smallprofit.fhxasdsada.xyz/', '2');
INSERT INTO `slideshow` VALUES (13, 'http://carousel.isdfmk.xyz/56cdc956Na8d6ef06.jpg', 'https://smallprofit.fhxasdsada.xyz/', '2');
INSERT INTO `slideshow` VALUES (14, 'http://carousel.isdfmk.xyz/56cdc99cN4291a808.jpg', 'https://smallprofit.fhxasdsada.xyz/', '2');
INSERT INTO `slideshow` VALUES (15, 'http://carousel.isdfmk.xyz/56cdca8dNc0da3888.jpg', 'https://smallprofit.fhxasdsada.xyz/', '2');
INSERT INTO `slideshow` VALUES (16, 'http://carousel.isdfmk.xyz/56cdc802Ne2d2904c.jpg', 'https://smallprofit.fhxasdsada.xyz/', '2');
INSERT INTO `slideshow` VALUES (17, 'http://carousel.isdfmk.xyz/56cdc906Na4b1ff7c.jpg', 'https://smallprofit.fhxasdsada.xyz/', '2');
INSERT INTO `slideshow` VALUES (18, 'http://carousel.isdfmk.xyz/56cdc966N3b48164b.jpg', 'https://smallprofit.fhxasdsada.xyz/', '2');
INSERT INTO `slideshow` VALUES (19, 'http://carousel.isdfmk.xyz/56cdca25N8aa1cbb6.jpg', 'https://smallprofit.fhxasdsada.xyz/', '2');
INSERT INTO `slideshow` VALUES (20, 'http://carousel.isdfmk.xyz/56cdca9eN5a1c2c29.jpg', 'https://smallprofit.fhxasdsada.xyz/', '2');
INSERT INTO `slideshow` VALUES (21, 'http://img.isdfmk.xyz/9U5D%29GS~X6~KA8L23YD%29RSR.png', 'https://smallprofit.fhxasdsada.xyz/', '3');
INSERT INTO `slideshow` VALUES (22, 'http://img.isdfmk.xyz/7XJAXW7H%5B%24%299J%40%406L%5DL%5B7%40O.png', 'https://smallprofit.fhxasdsada.xyz/', '3');
INSERT INTO `slideshow` VALUES (23, 'http://img.isdfmk.xyz/CM5%7D~T3XEPPZ934W%40MCPP64.png', 'https://smallprofit.fhxasdsada.xyz/', '3');

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
) ENGINE = InnoDB AUTO_INCREMENT = 65 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (52, 'f92b9f8f372e445fb6564cdd57aa3c3e', '小白', '++OrO3KQIS+TzybCOsQhcw==', '3', 't45eesyhFshmLr/zH6A2Dw==', 'AkbKyPZy0QJ0j1YkhIin1STD2hfGcrPgwh81SZwPpoU=', ' http://img.isdfmk.xyz/f92b9f8f372e445fb6564cdd57aa3c3e?t=1590307098', 'DM', '2017-1-2');
INSERT INTO `user` VALUES (62, '3e7cb3ada38c49a58d57a7c3446ec932', '嘿倩儿-', '++OrO3KQIS+TzybCOsQhcw==', '2', 'H68OxGNZWXLebdJRSn5NfA==', NULL, ' http://img.isdfmk.xyz/3e7cb3ada38c49a58d57a7c3446ec932?t=1590847382', 'DM', '2000-2-10');
INSERT INTO `user` VALUES (63, 'fd2d5eb2dd124f23802f163cd3998741', 'MuGe', '++OrO3KQIS+TzybCOsQhcw==', '1', '7/nilpLOcaBpX6+BnSD+SQ==', 'NOCyNow6lg6D1Wibn5x0WCnRmd72oX+WfuO6bjCodHY=', ' http://img.isdfmk.xyz/fd2d5eb2dd124f23802f163cd3998741?t=1590910324', 'DM', '2020-2-2');
INSERT INTO `user` VALUES (64, 'bab534a3fb2e42afb704894fc556c11d', '大哥', '++OrO3KQIS+TzybCOsQhcw==', '1', 'TZZt8yWUPuX+EsC02IOVKA==', NULL, 'http://img.isdfmk.xyz/iduyadfgjdekldjhf.png', 'DM', '0-0-0');

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
) ENGINE = InnoDB AUTO_INCREMENT = 174 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

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
INSERT INTO `userAddress` VALUES (165, '7c9fdfa3177042a08766aed29e7de6cd', '递四方速递水电费', '内蒙古自治区 包头市 石拐区 石拐街道 湖南省 长沙市 长沙县 星沙街道 ', '水电费水电费离开速度还是大', '15367885410', 'liuxianliangli@foxmail.com', '43,4301,430121,430121001,', '0', '公司', 1);
INSERT INTO `userAddress` VALUES (166, '7c9fdfa3177042a08766aed29e7de6cd', '的发送发送的', '山西省 太原市 杏花岭区 巨轮街道 ', '水电费水电费', '15367885410', 'liuxianliangli@foxmail.com', '14,1401,140107,140107001,', '0', '公司', 1);
INSERT INTO `userAddress` VALUES (167, 'f92b9f8f372e445fb6564cdd57aa3c3e', '方鸢', '河北省 唐山市 路南区 学院南路街道 ', 'dasdas', '18598814121', '2252821162@qq.com', '13,1302,130202,130202001,', '0', '闺蜜家', 0);
INSERT INTO `userAddress` VALUES (168, 'f92b9f8f372e445fb6564cdd57aa3c3e', '小芳', '北京市 市辖区 东城区 东华门街道 ', '湖南科技职业学院', '18598814121', '2252821162@qq.com', '11,1101,110101,110101001,', '0', '家', 0);
INSERT INTO `userAddress` VALUES (169, '3e7cb3ada38c49a58d57a7c3446ec932', '黑妹儿', '湖南省 长沙市 天心区 暮云街道 ', '科院', '15873790368', '', '43,4301,430103,430103015,', '1', '', 1);
INSERT INTO `userAddress` VALUES (170, 'fd2d5eb2dd124f23802f163cd3998741', '速度还是大', '天津市 市辖区 南开区 鼓楼街道 ', '速度还是大', '15367885410', 'liuxianliangli@foxmail.com', '12,1201,120104,120104002,', '0', '学校', 1);
INSERT INTO `userAddress` VALUES (171, 'fd2d5eb2dd124f23802f163cd3998741', '大范甘迪', '山西省 阳泉市 郊区 平坦镇 ', '速度还是大', '15367885410', 'liuxianliangli@foxmail.com', '14,1403,140311,140311103,', '1', '学校', 1);
INSERT INTO `userAddress` VALUES (172, 'bab534a3fb2e42afb704894fc556c11d', 'FF', '天津市 市辖区 和平区 劝业场街道 ', 'adas', '18598852522', '2225@qq.com', '12,1201,120101,120101001,', '1', 'adsd', 1);
INSERT INTO `userAddress` VALUES (173, 'f92b9f8f372e445fb6564cdd57aa3c3e', '2252821162@qq.com', '北京市 市辖区 东城区 东华门街道 ', '2252821162@qq.com', '18598814121', '2252821162@qq.com', '11,1101,110101,110101001,', '1', '2', 1);

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
) ENGINE = InnoDB AUTO_INCREMENT = 3943 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of userConsumptionRecords
-- ----------------------------
INSERT INTO `userConsumptionRecords` VALUES (3701, '1590490325230100001', 'f92b9f8f372e445fb6564cdd57aa3c3e', 1, NULL, 3, '2020-05-26 18:52:19', '32864.00');
INSERT INTO `userConsumptionRecords` VALUES (3702, '1590583558692100001', 'f92b9f8f372e445fb6564cdd57aa3c3e', 1, NULL, 3, '2020-05-27 20:46:27', '5845.00');
INSERT INTO `userConsumptionRecords` VALUES (3703, '1590626149208100001', 'f92b9f8f372e445fb6564cdd57aa3c3e', 1, NULL, 3, '2020-05-28 08:36:06', '5741.00');
INSERT INTO `userConsumptionRecords` VALUES (3704, '1590626253504100002', 'f92b9f8f372e445fb6564cdd57aa3c3e', 1, NULL, 3, '2020-05-28 08:37:49', '5741.00');
INSERT INTO `userConsumptionRecords` VALUES (3705, '1590627530913100003', 'f92b9f8f372e445fb6564cdd57aa3c3e', 1, NULL, 3, '2020-05-28 08:59:06', '5741.00');
INSERT INTO `userConsumptionRecords` VALUES (3706, '1590627630498100004', 'f92b9f8f372e445fb6564cdd57aa3c3e', 1, NULL, 3, '2020-05-28 09:00:49', '5741.00');
INSERT INTO `userConsumptionRecords` VALUES (3707, '1590627750757100005', 'f92b9f8f372e445fb6564cdd57aa3c3e', 1, NULL, 3, '2020-05-28 09:02:42', '5741.00');
INSERT INTO `userConsumptionRecords` VALUES (3708, '1590630123622100006', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-05-28 09:42:08', '47191.00');
INSERT INTO `userConsumptionRecords` VALUES (3709, '1590630198015100007', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-05-28 09:43:25', '5741.00');
INSERT INTO `userConsumptionRecords` VALUES (3710, '1590631789354100008', 'f92b9f8f372e445fb6564cdd57aa3c3e', 1, NULL, 3, '2020-05-28 10:10:01', '5741.00');
INSERT INTO `userConsumptionRecords` VALUES (3711, '1590631898694100010', 'f92b9f8f372e445fb6564cdd57aa3c3e', 1, NULL, 3, '2020-05-28 10:11:50', '5899.00');
INSERT INTO `userConsumptionRecords` VALUES (3712, '1590632122990100011', 'f92b9f8f372e445fb6564cdd57aa3c3e', 1, NULL, 3, '2020-05-28 10:15:45', '5741.00');
INSERT INTO `userConsumptionRecords` VALUES (3713, '1590636137477100012', 'f92b9f8f372e445fb6564cdd57aa3c3e', 1, NULL, 3, '2020-05-28 11:22:30', '5741.00');
INSERT INTO `userConsumptionRecords` VALUES (3714, '1590636668439100014', 'f92b9f8f372e445fb6564cdd57aa3c3e', 1, NULL, 3, '2020-05-28 11:31:20', '5741.00');
INSERT INTO `userConsumptionRecords` VALUES (3715, '1590636812645100015', 'f92b9f8f372e445fb6564cdd57aa3c3e', 1, NULL, 3, '2020-05-28 11:33:44', '5741.00');
INSERT INTO `userConsumptionRecords` VALUES (3716, '1590637466850100016', 'f92b9f8f372e445fb6564cdd57aa3c3e', 1, NULL, 3, '2020-05-28 11:44:39', '5741.00');
INSERT INTO `userConsumptionRecords` VALUES (3717, '1590645329264100017', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-05-28 13:55:35', '5741.00');
INSERT INTO `userConsumptionRecords` VALUES (3718, '1590645495408100018', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-05-28 13:58:30', '5741.00');
INSERT INTO `userConsumptionRecords` VALUES (3719, '1590645545913100019', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-05-28 13:59:10', '5741.00');
INSERT INTO `userConsumptionRecords` VALUES (3720, '1590645598295100020', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-05-28 14:00:03', '5741.00');
INSERT INTO `userConsumptionRecords` VALUES (3721, '1590645658307100021', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-05-28 14:01:03', '5741.00');
INSERT INTO `userConsumptionRecords` VALUES (3722, '1590646473903100022', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-05-28 14:14:42', '5741.00');
INSERT INTO `userConsumptionRecords` VALUES (3723, '1590646527905100023', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-05-28 14:15:32', '5741.00');
INSERT INTO `userConsumptionRecords` VALUES (3724, '1590646604642100024', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-05-28 14:16:50', '5741.00');
INSERT INTO `userConsumptionRecords` VALUES (3725, '1590646651145100025', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-05-28 14:17:38', '5741.00');
INSERT INTO `userConsumptionRecords` VALUES (3726, '1590646718898100026', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-05-28 14:18:44', '5741.00');
INSERT INTO `userConsumptionRecords` VALUES (3727, '1590646875178100027', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-05-28 14:21:20', '5741.00');
INSERT INTO `userConsumptionRecords` VALUES (3728, '1590647450946100028', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-05-28 14:30:55', '5741.00');
INSERT INTO `userConsumptionRecords` VALUES (3729, '1590647864180100029', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-05-28 14:37:54', '5741.00');
INSERT INTO `userConsumptionRecords` VALUES (3730, '1590647964045100030', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-05-28 14:39:29', '5741.00');
INSERT INTO `userConsumptionRecords` VALUES (3731, '1590647989842100031', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-05-28 14:40:00', '5741.00');
INSERT INTO `userConsumptionRecords` VALUES (3732, '1590648122001100032', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-05-28 14:42:09', '5741.00');
INSERT INTO `userConsumptionRecords` VALUES (3733, '1590648340194100034', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-05-28 14:45:46', '5899.00');
INSERT INTO `userConsumptionRecords` VALUES (3734, '1590648409790100036', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-05-28 14:46:55', '5845.00');
INSERT INTO `userConsumptionRecords` VALUES (3735, '1590649874395100037', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-05-28 15:11:20', '5741.00');
INSERT INTO `userConsumptionRecords` VALUES (3736, '1590649997937100038', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-05-28 15:13:27', '5741.00');
INSERT INTO `userConsumptionRecords` VALUES (3737, '1590650545863100039', 'f92b9f8f372e445fb6564cdd57aa3c3e', 1, NULL, 3, '2020-05-28 15:22:38', '5741.00');
INSERT INTO `userConsumptionRecords` VALUES (3738, '1590650743929100040', 'f92b9f8f372e445fb6564cdd57aa3c3e', 1, NULL, 3, '2020-05-28 15:26:07', '5741.00');
INSERT INTO `userConsumptionRecords` VALUES (3739, '1590650871412100041', 'f92b9f8f372e445fb6564cdd57aa3c3e', 1, NULL, 3, '2020-05-28 15:28:05', '5741.00');
INSERT INTO `userConsumptionRecords` VALUES (3740, '1590651263910100042', 'f92b9f8f372e445fb6564cdd57aa3c3e', 1, NULL, 3, '2020-05-28 15:34:47', '5741.00');
INSERT INTO `userConsumptionRecords` VALUES (3741, '1590651614457100043', 'f92b9f8f372e445fb6564cdd57aa3c3e', 1, NULL, 3, '2020-05-28 15:40:29', '5741.00');
INSERT INTO `userConsumptionRecords` VALUES (3746, '1590652722813100048', 'f92b9f8f372e445fb6564cdd57aa3c3e', 1, NULL, 3, '2020-05-28 15:58:54', '5899.00');
INSERT INTO `userConsumptionRecords` VALUES (3748, '1590653044375100050', 'f92b9f8f372e445fb6564cdd57aa3c3e', 1, NULL, 3, '2020-05-28 16:04:11', '5899.00');
INSERT INTO `userConsumptionRecords` VALUES (3749, '1590653206187100051', 'f92b9f8f372e445fb6564cdd57aa3c3e', 1, NULL, 3, '2020-05-28 16:06:53', '5845.00');
INSERT INTO `userConsumptionRecords` VALUES (3750, '1590653443474100052', 'f92b9f8f372e445fb6564cdd57aa3c3e', 1, NULL, 3, '2020-05-28 16:10:50', '5899.00');
INSERT INTO `userConsumptionRecords` VALUES (3751, '1590654752432100053', 'f92b9f8f372e445fb6564cdd57aa3c3e', 1, NULL, 3, '2020-05-28 16:32:38', '5899.00');
INSERT INTO `userConsumptionRecords` VALUES (3752, '1590654814258100054', 'f92b9f8f372e445fb6564cdd57aa3c3e', 1, NULL, 3, '2020-05-28 16:33:43', '6900.00');
INSERT INTO `userConsumptionRecords` VALUES (3753, '1590687116489100055', 'f92b9f8f372e445fb6564cdd57aa3c3e', 1, NULL, 3, '2020-05-29 01:32:03', '7690.00');
INSERT INTO `userConsumptionRecords` VALUES (3754, '1590688010255100055', 'f92b9f8f372e445fb6564cdd57aa3c3e', 1, NULL, 3, '2020-05-29 01:46:55', '1569.00');
INSERT INTO `userConsumptionRecords` VALUES (3755, '1590688091749100055', 'f92b9f8f372e445fb6564cdd57aa3c3e', 1, NULL, 3, '2020-05-29 01:48:17', '3500.00');
INSERT INTO `userConsumptionRecords` VALUES (3756, '1590722699864100056', 'f92b9f8f372e445fb6564cdd57aa3c3e', 1, NULL, 3, '2020-05-29 11:25:06', '5899.00');
INSERT INTO `userConsumptionRecords` VALUES (3757, '1590727412881100057', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-05-29 12:43:37', '5845.00');
INSERT INTO `userConsumptionRecords` VALUES (3758, '1590730066530100058', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-05-29 05:28:00', '128117.00');
INSERT INTO `userConsumptionRecords` VALUES (3759, '1590730160250100058', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-05-29 05:29:57', '5845.00');
INSERT INTO `userConsumptionRecords` VALUES (3760, '1590730363115100058', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-05-29 05:32:55', '5845.00');
INSERT INTO `userConsumptionRecords` VALUES (3761, '1590730442433100058', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-05-29 05:34:07', '30576.00');
INSERT INTO `userConsumptionRecords` VALUES (3762, '1590732750209100058', 'f92b9f8f372e445fb6564cdd57aa3c3e', 1, NULL, 3, '2020-05-29 14:12:40', '5899.00');
INSERT INTO `userConsumptionRecords` VALUES (3763, '1590732839127100059', 'f92b9f8f372e445fb6564cdd57aa3c3e', 1, NULL, 3, '2020-05-29 14:14:05', '260000.00');
INSERT INTO `userConsumptionRecords` VALUES (3764, '1590734743283100060', 'f92b9f8f372e445fb6564cdd57aa3c3e', 1, NULL, 3, '2020-05-29 14:45:49', '5899.00');
INSERT INTO `userConsumptionRecords` VALUES (3765, '1590734786973100061', 'f92b9f8f372e445fb6564cdd57aa3c3e', 1, NULL, 3, '2020-05-29 14:46:32', '1899.00');
INSERT INTO `userConsumptionRecords` VALUES (3766, '1590734889033100062', 'f92b9f8f372e445fb6564cdd57aa3c3e', 1, NULL, 3, '2020-05-29 14:48:14', '5899.00');
INSERT INTO `userConsumptionRecords` VALUES (3767, '1590742820290100063', 'f92b9f8f372e445fb6564cdd57aa3c3e', 1, NULL, 3, '2020-05-29 17:00:25', '5899.00');
INSERT INTO `userConsumptionRecords` VALUES (3768, '1590744606084100001', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-05-29 17:30:10', '5845.00');
INSERT INTO `userConsumptionRecords` VALUES (3769, '1590744795069100002', 'f92b9f8f372e445fb6564cdd57aa3c3e', 1, NULL, 3, '2020-05-29 17:33:20', '1289.00');
INSERT INTO `userConsumptionRecords` VALUES (3770, '1590744988805100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-05-29 17:36:33', '5845.00');
INSERT INTO `userConsumptionRecords` VALUES (3771, '1590746952799100004', 'f92b9f8f372e445fb6564cdd57aa3c3e', 1, NULL, 3, '2020-05-29 10:09:22', '888.00');
INSERT INTO `userConsumptionRecords` VALUES (3772, '1590747043867100004', 'f92b9f8f372e445fb6564cdd57aa3c3e', 1, NULL, 3, '2020-05-29 10:10:51', '5899.00');
INSERT INTO `userConsumptionRecords` VALUES (3773, '1590747057245100004', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-05-29 10:11:11', '5845.00');
INSERT INTO `userConsumptionRecords` VALUES (3774, '1590747361801100004', 'f92b9f8f372e445fb6564cdd57aa3c3e', 1, NULL, 3, '2020-05-29 10:16:19', '1499.00');
INSERT INTO `userConsumptionRecords` VALUES (3775, '1590747673327100004', 'f92b9f8f372e445fb6564cdd57aa3c3e', 1, NULL, 3, '2020-05-29 10:22:57', '1289.00');
INSERT INTO `userConsumptionRecords` VALUES (3776, '1590748119586100004', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-05-29 18:28:51', '5845.00');
INSERT INTO `userConsumptionRecords` VALUES (3777, '1590749409865100005', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-05-29 18:50:15', '5845.00');
INSERT INTO `userConsumptionRecords` VALUES (3778, '1590749818325100006', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-05-29 18:57:02', '5845.00');
INSERT INTO `userConsumptionRecords` VALUES (3779, '1590749897634100007', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-05-29 18:58:22', '5899.00');
INSERT INTO `userConsumptionRecords` VALUES (3780, '1590750106064100008', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-05-29 19:01:50', '5845.00');
INSERT INTO `userConsumptionRecords` VALUES (3781, '1590750144823100009', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-05-29 19:02:30', '5845.00');
INSERT INTO `userConsumptionRecords` VALUES (3782, '1590750359113100010', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-05-29 19:06:04', '5845.00');
INSERT INTO `userConsumptionRecords` VALUES (3783, '1590750468312100011', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-05-29 19:07:54', '5899.00');
INSERT INTO `userConsumptionRecords` VALUES (3784, '1590750513960100012', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-05-29 19:08:40', '5845.00');
INSERT INTO `userConsumptionRecords` VALUES (3785, '1590750563242100013', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-05-29 19:09:28', '5845.00');
INSERT INTO `userConsumptionRecords` VALUES (3786, '1590750610879100014', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-05-29 19:10:21', '5845.00');
INSERT INTO `userConsumptionRecords` VALUES (3787, '1590750659817100015', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-05-29 19:11:04', '5845.00');
INSERT INTO `userConsumptionRecords` VALUES (3788, '1590750690984100016', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-05-29 19:11:35', '5845.00');
INSERT INTO `userConsumptionRecords` VALUES (3789, '1590751033801100017', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-05-29 11:17:21', '5899.00');
INSERT INTO `userConsumptionRecords` VALUES (3790, '1590751176273100017', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-05-29 11:19:42', '5899.00');
INSERT INTO `userConsumptionRecords` VALUES (3791, '1590751239040100017', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-05-29 11:20:44', '66050.00');
INSERT INTO `userConsumptionRecords` VALUES (3792, '1590751606431100017', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-05-29 11:26:52', '4567.00');
INSERT INTO `userConsumptionRecords` VALUES (3793, '1590751867792100017', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-05-29 19:31:12', '2998.00');
INSERT INTO `userConsumptionRecords` VALUES (3794, '1590751986759100018', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-05-29 11:33:12', '2998.00');
INSERT INTO `userConsumptionRecords` VALUES (3795, '1590752089374100018', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-05-29 11:34:55', '38850.00');
INSERT INTO `userConsumptionRecords` VALUES (3796, '1590752122135100018', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-05-29 11:35:27', '30396.00');
INSERT INTO `userConsumptionRecords` VALUES (3797, '1590752157504100018', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-05-29 11:36:02', '12745.00');
INSERT INTO `userConsumptionRecords` VALUES (3798, '1590752195502100018', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-05-29 11:36:43', '5845.00');
INSERT INTO `userConsumptionRecords` VALUES (3799, '1590752231715100018', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-05-29 11:37:16', '25908.00');
INSERT INTO `userConsumptionRecords` VALUES (3800, '1590753469460100018', 'f92b9f8f372e445fb6564cdd57aa3c3e', 1, NULL, 3, '2020-05-29 19:58:03', '888.00');
INSERT INTO `userConsumptionRecords` VALUES (3801, '1590753512264100019', 'f92b9f8f372e445fb6564cdd57aa3c3e', 1, NULL, 3, '2020-05-29 19:58:45', '31375.00');
INSERT INTO `userConsumptionRecords` VALUES (3802, '1590761292677100023', 'f92b9f8f372e445fb6564cdd57aa3c3e', 1, NULL, 3, '2020-05-29 22:08:26', '13296.00');
INSERT INTO `userConsumptionRecords` VALUES (3803, '1590761639542100025', 'f92b9f8f372e445fb6564cdd57aa3c3e', 1, NULL, 3, '2020-05-29 22:14:22', '6816.00');
INSERT INTO `userConsumptionRecords` VALUES (3804, '1590761808544100026', 'f92b9f8f372e445fb6564cdd57aa3c3e', 1, NULL, 3, '2020-05-29 22:16:53', '47699.00');
INSERT INTO `userConsumptionRecords` VALUES (3805, '1590761995617100027', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-05-29 22:20:03', '15315.36');
INSERT INTO `userConsumptionRecords` VALUES (3806, '1590762046345100028', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-05-29 22:21:00', '7890.00');
INSERT INTO `userConsumptionRecords` VALUES (3807, '1590762161191100029', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-05-29 22:22:58', '5845.00');
INSERT INTO `userConsumptionRecords` VALUES (3808, '1590762278268100030', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-05-29 22:24:49', '5845.00');
INSERT INTO `userConsumptionRecords` VALUES (3809, '1590762328229100031', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-05-29 22:25:35', '5845.00');
INSERT INTO `userConsumptionRecords` VALUES (3810, '1590762489448100032', 'f92b9f8f372e445fb6564cdd57aa3c3e', 1, NULL, 3, '2020-05-29 22:28:15', '5845.00');
INSERT INTO `userConsumptionRecords` VALUES (3811, '1590762685407100033', 'f92b9f8f372e445fb6564cdd57aa3c3e', 1, NULL, 3, '2020-05-29 22:31:31', '5845.00');
INSERT INTO `userConsumptionRecords` VALUES (3812, '1590762795517100034', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-05-29 22:33:22', '5845.00');
INSERT INTO `userConsumptionRecords` VALUES (3813, '1590762893525100035', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-05-29 22:35:00', '5845.00');
INSERT INTO `userConsumptionRecords` VALUES (3814, '1590763031663100036', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-05-29 22:37:17', '5845.00');
INSERT INTO `userConsumptionRecords` VALUES (3815, '1590763193148100037', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-05-29 22:40:03', '19772.80');
INSERT INTO `userConsumptionRecords` VALUES (3816, '1590763343413100038', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-05-29 22:42:36', '5535.80');
INSERT INTO `userConsumptionRecords` VALUES (3817, '1590763511779100039', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-05-29 22:45:19', '5845.00');
INSERT INTO `userConsumptionRecords` VALUES (3818, '1590763721980100040', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-05-29 22:48:52', '5845.00');
INSERT INTO `userConsumptionRecords` VALUES (3819, '1590804392343100001', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-05-30 10:06:42', '28341.00');
INSERT INTO `userConsumptionRecords` VALUES (3820, '1590804511334100002', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-05-30 10:08:40', '54620.03');
INSERT INTO `userConsumptionRecords` VALUES (3821, '1590807021978100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-05-30 02:50:28', '1313978.00');
INSERT INTO `userConsumptionRecords` VALUES (3822, '1590807872531100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-05-30 03:04:50', '1289.00');
INSERT INTO `userConsumptionRecords` VALUES (3823, '1590807915248100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-05-30 03:05:32', '1289.00');
INSERT INTO `userConsumptionRecords` VALUES (3824, '1590815280949100003', 'f92b9f8f372e445fb6564cdd57aa3c3e', 1, NULL, 3, '2020-05-30 13:08:11', '7734.00');
INSERT INTO `userConsumptionRecords` VALUES (3825, '1590818466225100004', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-05-30 14:01:48', '7734.00');
INSERT INTO `userConsumptionRecords` VALUES (3826, '1590818536574100005', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-05-30 14:02:26', '102894.00');
INSERT INTO `userConsumptionRecords` VALUES (3827, '1590818558447100006', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-05-30 14:02:44', '5697.00');
INSERT INTO `userConsumptionRecords` VALUES (3828, '1590818653088100007', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-05-30 14:04:19', '31389.00');
INSERT INTO `userConsumptionRecords` VALUES (3829, '1590818716672100008', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-05-30 14:05:22', '34833.00');
INSERT INTO `userConsumptionRecords` VALUES (3830, '1590818817686100009', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-05-30 14:07:16', '166387.00');
INSERT INTO `userConsumptionRecords` VALUES (3831, '1590844155232100051', 'f92b9f8f372e445fb6564cdd57aa3c3e', 1, NULL, 3, '2020-05-30 21:09:21', '10398.00');
INSERT INTO `userConsumptionRecords` VALUES (3832, '1590844963662100052', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-05-30 13:22:49', '9752.00');
INSERT INTO `userConsumptionRecords` VALUES (3833, '1590845080276100052', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-05-30 13:24:45', '40794.00');
INSERT INTO `userConsumptionRecords` VALUES (3834, '1590845288102100052', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-05-30 13:28:13', '384.00');
INSERT INTO `userConsumptionRecords` VALUES (3835, '1590846674096100052', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-05-30 13:51:19', '2319.00');
INSERT INTO `userConsumptionRecords` VALUES (3836, '1590846854041100052', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-05-30 13:54:21', '256.00');
INSERT INTO `userConsumptionRecords` VALUES (3837, '1590891297099100001', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-05-31 02:15:02', '3965.00');
INSERT INTO `userConsumptionRecords` VALUES (3838, '1590892607656100002', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-05-31 10:36:53', '46996.00');
INSERT INTO `userConsumptionRecords` VALUES (3839, '1590892799126100003', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-05-31 10:40:04', '47699.00');
INSERT INTO `userConsumptionRecords` VALUES (3840, '1590892901020100004', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-05-31 10:41:47', '74.90');
INSERT INTO `userConsumptionRecords` VALUES (3841, '1590894978486100005', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-05-31 11:16:23', '47699.00');
INSERT INTO `userConsumptionRecords` VALUES (3842, '1590895953611100006', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-05-31 03:32:42', '773.00');
INSERT INTO `userConsumptionRecords` VALUES (3843, '1590907477142100012', 'bab534a3fb2e42afb704894fc556c11d', 1, NULL, 3, '2020-05-31 14:44:43', '7890.00');
INSERT INTO `userConsumptionRecords` VALUES (3844, '1590909909158100013', 'f92b9f8f372e445fb6564cdd57aa3c3e', 1, NULL, 3, '2020-05-31 07:26:30', '24068.00');
INSERT INTO `userConsumptionRecords` VALUES (3845, '1590897183222100001', 'fd2d5eb2dd124f23802f163cd3998741', 1, NULL, 3, '2020-05-31 07:26:38', '3892.00');
INSERT INTO `userConsumptionRecords` VALUES (3846, '1590910061652100013', 'fd2d5eb2dd124f23802f163cd3998741', 1, NULL, 3, '2020-05-31 07:28:13', '1192669.70');
INSERT INTO `userConsumptionRecords` VALUES (3847, '1590910132694100013', 'fd2d5eb2dd124f23802f163cd3998741', 1, NULL, 3, '2020-05-31 07:28:57', '7890.00');
INSERT INTO `userConsumptionRecords` VALUES (3848, '1590910175558100013', 'fd2d5eb2dd124f23802f163cd3998741', 1, NULL, 3, '2020-05-31 07:29:40', '773.00');
INSERT INTO `userConsumptionRecords` VALUES (3849, '1590910212879100013', 'fd2d5eb2dd124f23802f163cd3998741', 1, NULL, 3, '2020-05-31 07:30:24', '59.90');
INSERT INTO `userConsumptionRecords` VALUES (3850, '1590910432642100013', 'f92b9f8f372e445fb6564cdd57aa3c3e', 1, NULL, 3, '2020-05-31 07:34:02', '773.00');
INSERT INTO `userConsumptionRecords` VALUES (3851, '1590910522187100013', 'f92b9f8f372e445fb6564cdd57aa3c3e', 1, NULL, 3, '2020-05-31 07:35:28', '773.00');
INSERT INTO `userConsumptionRecords` VALUES (3852, '1590910582333100013', 'f92b9f8f372e445fb6564cdd57aa3c3e', 1, NULL, 3, '2020-05-31 07:36:28', '773.00');
INSERT INTO `userConsumptionRecords` VALUES (3853, '1590910643262100013', 'fd2d5eb2dd124f23802f163cd3998741', 1, NULL, 3, '2020-05-31 07:37:28', '773.00');
INSERT INTO `userConsumptionRecords` VALUES (3854, '1590911347478100013', 'fd2d5eb2dd124f23802f163cd3998741', 1, NULL, 3, '2020-05-31 15:49:12', '873.00');
INSERT INTO `userConsumptionRecords` VALUES (3855, '1590911433725100014', 'fd2d5eb2dd124f23802f163cd3998741', 1, NULL, 3, '2020-05-31 15:50:38', '773.00');
INSERT INTO `userConsumptionRecords` VALUES (3856, '1590911459130100015', 'fd2d5eb2dd124f23802f163cd3998741', 1, NULL, 3, '2020-05-31 15:51:04', '773.00');
INSERT INTO `userConsumptionRecords` VALUES (3857, '1590911526301100016', 'fd2d5eb2dd124f23802f163cd3998741', 1, NULL, 3, '2020-05-31 07:52:11', '773.00');
INSERT INTO `userConsumptionRecords` VALUES (3858, '1590911576719100016', 'fd2d5eb2dd124f23802f163cd3998741', 1, NULL, 3, '2020-05-31 07:53:08', '773.00');
INSERT INTO `userConsumptionRecords` VALUES (3859, '1590911711193100016', 'fd2d5eb2dd124f23802f163cd3998741', 1, NULL, 3, '2020-05-31 07:55:16', '773.00');
INSERT INTO `userConsumptionRecords` VALUES (3860, '1590911737986100016', 'fd2d5eb2dd124f23802f163cd3998741', 1, NULL, 3, '2020-05-31 07:55:43', '773.00');
INSERT INTO `userConsumptionRecords` VALUES (3861, '1590911779313100016', 'fd2d5eb2dd124f23802f163cd3998741', 1, NULL, 3, '2020-05-31 07:56:24', '773.00');
INSERT INTO `userConsumptionRecords` VALUES (3862, '1590911818051100016', 'fd2d5eb2dd124f23802f163cd3998741', 1, NULL, 3, '2020-05-31 07:57:07', '773.00');
INSERT INTO `userConsumptionRecords` VALUES (3863, '1590911891053100016', 'fd2d5eb2dd124f23802f163cd3998741', 1, NULL, 3, '2020-05-31 07:58:44', '773.00');
INSERT INTO `userConsumptionRecords` VALUES (3864, '1590912029632100016', 'fd2d5eb2dd124f23802f163cd3998741', 1, NULL, 3, '2020-05-31 08:00:38', '773.00');
INSERT INTO `userConsumptionRecords` VALUES (3865, '1590912209984100016', 'fd2d5eb2dd124f23802f163cd3998741', 1, NULL, 3, '2020-05-31 08:03:34', '773.00');
INSERT INTO `userConsumptionRecords` VALUES (3866, '1590913114287100016', 'fd2d5eb2dd124f23802f163cd3998741', 1, NULL, 3, '2020-05-31 08:18:50', '59.90');
INSERT INTO `userConsumptionRecords` VALUES (3867, '1590913206587100016', 'fd2d5eb2dd124f23802f163cd3998741', 1, NULL, 3, '2020-05-31 08:20:15', '18599.00');
INSERT INTO `userConsumptionRecords` VALUES (3868, '1590913317844100016', 'fd2d5eb2dd124f23802f163cd3998741', 1, NULL, 3, '2020-05-31 08:22:03', '773.00');
INSERT INTO `userConsumptionRecords` VALUES (3869, '1590913594499100016', 'fd2d5eb2dd124f23802f163cd3998741', 1, NULL, 3, '2020-05-31 08:26:44', '773.00');
INSERT INTO `userConsumptionRecords` VALUES (3870, '1590913666936100016', 'fd2d5eb2dd124f23802f163cd3998741', 1, NULL, 3, '2020-05-31 08:27:54', '59.90');
INSERT INTO `userConsumptionRecords` VALUES (3871, '1590914298003100016', 'fd2d5eb2dd124f23802f163cd3998741', 1, NULL, 3, '2020-05-31 08:38:30', '773.00');
INSERT INTO `userConsumptionRecords` VALUES (3872, '1590914370882100016', 'fd2d5eb2dd124f23802f163cd3998741', 1, NULL, 3, '2020-05-31 08:39:37', '59.90');
INSERT INTO `userConsumptionRecords` VALUES (3873, '1590914552067100016', 'fd2d5eb2dd124f23802f163cd3998741', 1, NULL, 3, '2020-05-31 08:42:46', '74.90');
INSERT INTO `userConsumptionRecords` VALUES (3874, '1590914605546100016', 'fd2d5eb2dd124f23802f163cd3998741', 1, NULL, 3, '2020-05-31 08:43:32', '773.00');
INSERT INTO `userConsumptionRecords` VALUES (3875, '1590914958294100016', 'fd2d5eb2dd124f23802f163cd3998741', 1, NULL, 3, '2020-05-31 08:49:23', '59.90');
INSERT INTO `userConsumptionRecords` VALUES (3876, '1590915061056100016', 'fd2d5eb2dd124f23802f163cd3998741', 1, NULL, 3, '2020-05-31 08:51:07', '888.00');
INSERT INTO `userConsumptionRecords` VALUES (3877, '1590917430584100016', 'f92b9f8f372e445fb6564cdd57aa3c3e', 1, NULL, 3, '2020-05-31 09:30:36', '888.00');
INSERT INTO `userConsumptionRecords` VALUES (3878, '1590917437802100016', 'fd2d5eb2dd124f23802f163cd3998741', 1, NULL, 3, '2020-05-31 09:30:45', '773.00');
INSERT INTO `userConsumptionRecords` VALUES (3879, '1590917515330100016', 'fd2d5eb2dd124f23802f163cd3998741', 1, NULL, 3, '2020-05-31 09:32:02', '59.90');
INSERT INTO `userConsumptionRecords` VALUES (3880, '1590917522539100016', 'f92b9f8f372e445fb6564cdd57aa3c3e', 1, NULL, 3, '2020-05-31 09:32:09', '2920.01');
INSERT INTO `userConsumptionRecords` VALUES (3881, '1590917586580100016', 'f92b9f8f372e445fb6564cdd57aa3c3e', 1, NULL, 3, '2020-05-31 09:33:13', '773.00');
INSERT INTO `userConsumptionRecords` VALUES (3882, '1590917609537100016', 'fd2d5eb2dd124f23802f163cd3998741', 1, NULL, 3, '2020-05-31 09:33:35', '873.00');
INSERT INTO `userConsumptionRecords` VALUES (3883, '1590917710022100016', 'fd2d5eb2dd124f23802f163cd3998741', 1, NULL, 3, '2020-05-31 09:35:16', '773.00');
INSERT INTO `userConsumptionRecords` VALUES (3884, '1590917771089100016', 'fd2d5eb2dd124f23802f163cd3998741', 1, NULL, 3, '2020-05-31 09:36:16', '59.90');
INSERT INTO `userConsumptionRecords` VALUES (3885, '1590917870824100016', 'fd2d5eb2dd124f23802f163cd3998741', 1, NULL, 3, '2020-05-31 09:37:55', '773.00');
INSERT INTO `userConsumptionRecords` VALUES (3886, '1590918482778100016', 'fd2d5eb2dd124f23802f163cd3998741', 1, NULL, 3, '2020-05-31 09:48:09', '773.00');
INSERT INTO `userConsumptionRecords` VALUES (3887, '1590918561879100016', 'fd2d5eb2dd124f23802f163cd3998741', 1, NULL, 3, '2020-05-31 09:49:27', '773.00');
INSERT INTO `userConsumptionRecords` VALUES (3888, '1590918609256100016', 'fd2d5eb2dd124f23802f163cd3998741', 1, NULL, 3, '2020-05-31 09:50:14', '773.00');
INSERT INTO `userConsumptionRecords` VALUES (3889, '1590918630745100016', 'fd2d5eb2dd124f23802f163cd3998741', 1, NULL, 3, '2020-05-31 09:50:35', '773.00');
INSERT INTO `userConsumptionRecords` VALUES (3890, '1590918650270100016', 'fd2d5eb2dd124f23802f163cd3998741', 1, NULL, 3, '2020-05-31 09:50:55', '773.00');
INSERT INTO `userConsumptionRecords` VALUES (3891, '1590918684473100016', 'fd2d5eb2dd124f23802f163cd3998741', 1, NULL, 3, '2020-05-31 09:51:31', '6343.90');
INSERT INTO `userConsumptionRecords` VALUES (3892, '1590918740609100016', 'fd2d5eb2dd124f23802f163cd3998741', 1, NULL, 3, '2020-05-31 09:52:26', '4099.80');
INSERT INTO `userConsumptionRecords` VALUES (3893, '1590918792407100016', 'fd2d5eb2dd124f23802f163cd3998741', 1, NULL, 3, '2020-05-31 09:53:19', '4065.00');
INSERT INTO `userConsumptionRecords` VALUES (3894, '1590918811413100016', 'fd2d5eb2dd124f23802f163cd3998741', 1, NULL, 3, '2020-05-31 09:53:35', '59.90');
INSERT INTO `userConsumptionRecords` VALUES (3895, '1590918825532100016', 'fd2d5eb2dd124f23802f163cd3998741', 1, NULL, 3, '2020-05-31 09:53:50', '59.90');
INSERT INTO `userConsumptionRecords` VALUES (3896, '1590918842170100016', 'fd2d5eb2dd124f23802f163cd3998741', 1, NULL, 3, '2020-05-31 09:54:07', '59.90');
INSERT INTO `userConsumptionRecords` VALUES (3897, '1590919184200100016', 'fd2d5eb2dd124f23802f163cd3998741', 1, NULL, 3, '2020-05-31 09:59:49', '59.90');
INSERT INTO `userConsumptionRecords` VALUES (3898, '1590919245687100016', 'fd2d5eb2dd124f23802f163cd3998741', 1, NULL, 3, '2020-05-31 10:00:52', '59.90');
INSERT INTO `userConsumptionRecords` VALUES (3899, '1590919292508100016', 'fd2d5eb2dd124f23802f163cd3998741', 1, NULL, 3, '2020-05-31 10:01:41', '59.90');
INSERT INTO `userConsumptionRecords` VALUES (3900, '1590919376700100016', 'fd2d5eb2dd124f23802f163cd3998741', 1, NULL, 3, '2020-05-31 10:03:01', '773.00');
INSERT INTO `userConsumptionRecords` VALUES (3901, '1590919434457100016', 'fd2d5eb2dd124f23802f163cd3998741', 1, NULL, 3, '2020-05-31 10:03:59', '773.00');
INSERT INTO `userConsumptionRecords` VALUES (3902, '1590919467718100016', 'fd2d5eb2dd124f23802f163cd3998741', 1, NULL, 3, '2020-05-31 10:04:32', '773.00');
INSERT INTO `userConsumptionRecords` VALUES (3903, '1590919485248100016', 'fd2d5eb2dd124f23802f163cd3998741', 1, NULL, 3, '2020-05-31 10:04:49', '773.00');
INSERT INTO `userConsumptionRecords` VALUES (3904, '1590925984688100016', 'fd2d5eb2dd124f23802f163cd3998741', 1, NULL, 3, '2020-05-31 11:53:09', '59.90');
INSERT INTO `userConsumptionRecords` VALUES (3905, '1590926019048100016', 'fd2d5eb2dd124f23802f163cd3998741', 1, NULL, 3, '2020-05-31 11:53:44', '59.90');
INSERT INTO `userConsumptionRecords` VALUES (3906, '1590926071845100016', 'fd2d5eb2dd124f23802f163cd3998741', 1, NULL, 3, '2020-05-31 11:54:36', '773.00');
INSERT INTO `userConsumptionRecords` VALUES (3907, '1590926117771100016', 'fd2d5eb2dd124f23802f163cd3998741', 1, NULL, 3, '2020-05-31 11:55:22', '1605.90');
INSERT INTO `userConsumptionRecords` VALUES (3908, '1590926161372100016', 'fd2d5eb2dd124f23802f163cd3998741', 1, NULL, 3, '2020-05-31 11:56:05', '773.00');
INSERT INTO `userConsumptionRecords` VALUES (3909, '1591103165390100001', 'f92b9f8f372e445fb6564cdd57aa3c3e', 1, NULL, 3, '2020-06-02 13:06:10', '10398.00');
INSERT INTO `userConsumptionRecords` VALUES (3910, '1591112727758100002', 'f92b9f8f372e445fb6564cdd57aa3c3e', 1, NULL, 3, '2020-06-02 15:45:32', '11999.00');
INSERT INTO `userConsumptionRecords` VALUES (3911, '1591112908727100004', 'bab534a3fb2e42afb704894fc556c11d', 1, NULL, 3, '2020-06-02 15:48:37', '3500.00');
INSERT INTO `userConsumptionRecords` VALUES (3912, '1591146353330100001', 'f92b9f8f372e445fb6564cdd57aa3c3e', 1, NULL, 3, '2020-06-03 01:05:58', '37960.13');
INSERT INTO `userConsumptionRecords` VALUES (3913, '1591262782959100001', 'fd2d5eb2dd124f23802f163cd3998741', 1, NULL, 3, '2020-06-04 09:26:52', '773.00');
INSERT INTO `userConsumptionRecords` VALUES (3914, '1591262782959100001', 'fd2d5eb2dd124f23802f163cd3998741', 1, NULL, 3, '2020-06-04 09:27:02', '773.00');
INSERT INTO `userConsumptionRecords` VALUES (3915, '1591697873586100002', 'fd2d5eb2dd124f23802f163cd3998741', 1, NULL, 3, '2020-06-09 10:18:06', '773.00');
INSERT INTO `userConsumptionRecords` VALUES (3916, '1591698004323100003', 'f92b9f8f372e445fb6564cdd57aa3c3e', 1, NULL, 3, '2020-06-09 10:20:09', '47699.00');
INSERT INTO `userConsumptionRecords` VALUES (3917, '1591697678854100001', '3e7cb3ada38c49a58d57a7c3446ec932', 1, NULL, 3, '2020-06-09 10:20:51', '888.00');
INSERT INTO `userConsumptionRecords` VALUES (3918, '1591699783753100005', 'fd2d5eb2dd124f23802f163cd3998741', 1, NULL, 3, '2020-06-09 10:50:02', '7890.00');
INSERT INTO `userConsumptionRecords` VALUES (3919, '1592198179386100001', 'f92b9f8f372e445fb6564cdd57aa3c3e', 1, NULL, 3, '2020-06-15 05:16:46', '15380.00');
INSERT INTO `userConsumptionRecords` VALUES (3920, '1592201143597100002', 'f92b9f8f372e445fb6564cdd57aa3c3e', 1, NULL, 3, '2020-06-15 06:06:04', '2898.00');
INSERT INTO `userConsumptionRecords` VALUES (3921, '1592720376237100004', 'f92b9f8f372e445fb6564cdd57aa3c3e', 1, NULL, 3, '2020-06-21 06:21:56', '5399.00');
INSERT INTO `userConsumptionRecords` VALUES (3922, '1592733331815100011', 'f92b9f8f372e445fb6564cdd57aa3c3e', 1, NULL, 3, '2020-06-21 09:56:06', '7490.00');
INSERT INTO `userConsumptionRecords` VALUES (3923, '1592790083822100003', 'f92b9f8f372e445fb6564cdd57aa3c3e', 1, NULL, 3, '2020-06-22 09:42:07', '3496.00');
INSERT INTO `userConsumptionRecords` VALUES (3924, '1592790154608100004', 'f92b9f8f372e445fb6564cdd57aa3c3e', 1, NULL, 3, '2020-06-22 01:43:10', '47699.00');
INSERT INTO `userConsumptionRecords` VALUES (3925, '1592790154608100004', 'f92b9f8f372e445fb6564cdd57aa3c3e', 1, NULL, 3, '2020-06-22 01:43:18', '47699.00');
INSERT INTO `userConsumptionRecords` VALUES (3926, '1592790303315100004', 'f92b9f8f372e445fb6564cdd57aa3c3e', 1, NULL, 3, '2020-06-22 01:45:44', '1499.00');
INSERT INTO `userConsumptionRecords` VALUES (3927, '1592790303315100004', 'f92b9f8f372e445fb6564cdd57aa3c3e', 1, NULL, 3, '2020-06-22 01:45:51', '1499.00');
INSERT INTO `userConsumptionRecords` VALUES (3928, '1592790449779100004', 'f92b9f8f372e445fb6564cdd57aa3c3e', 1, NULL, 3, '2020-06-22 09:47:58', '1499.00');
INSERT INTO `userConsumptionRecords` VALUES (3929, '1592790788151100005', 'f92b9f8f372e445fb6564cdd57aa3c3e', 1, NULL, 3, '2020-06-22 09:53:36', '11999.00');
INSERT INTO `userConsumptionRecords` VALUES (3930, '1592791713279100006', 'f92b9f8f372e445fb6564cdd57aa3c3e', 1, NULL, 3, '2020-06-22 02:09:03', '1499.00');
INSERT INTO `userConsumptionRecords` VALUES (3931, '1592791713279100006', 'f92b9f8f372e445fb6564cdd57aa3c3e', 1, NULL, 3, '2020-06-22 02:09:10', '1499.00');
INSERT INTO `userConsumptionRecords` VALUES (3932, '1592795816465100006', 'f92b9f8f372e445fb6564cdd57aa3c3e', 1, NULL, 3, '2020-06-22 03:17:15', '7890.00');
INSERT INTO `userConsumptionRecords` VALUES (3933, '1592822082163100007', 'f92b9f8f372e445fb6564cdd57aa3c3e', 1, NULL, 3, '2020-06-22 10:35:08', '1499.00');
INSERT INTO `userConsumptionRecords` VALUES (3934, '1592822136658100009', 'f92b9f8f372e445fb6564cdd57aa3c3e', 1, NULL, 3, '2020-06-22 10:35:58', '3500.00');
INSERT INTO `userConsumptionRecords` VALUES (3935, '1592822162479100010', 'fd2d5eb2dd124f23802f163cd3998741', 1, NULL, 3, '2020-06-22 10:36:26', '1569.00');
INSERT INTO `userConsumptionRecords` VALUES (3936, '1592822206628100011', 'f92b9f8f372e445fb6564cdd57aa3c3e', 1, NULL, 3, '2020-06-22 10:37:04', '1499.00');
INSERT INTO `userConsumptionRecords` VALUES (3937, '1592822220149100012', 'fd2d5eb2dd124f23802f163cd3998741', 1, NULL, 3, '2020-06-22 10:37:28', '2188.00');
INSERT INTO `userConsumptionRecords` VALUES (3938, '1592822337263100013', 'f92b9f8f372e445fb6564cdd57aa3c3e', 1, NULL, 3, '2020-06-22 10:39:48', '11999.00');
INSERT INTO `userConsumptionRecords` VALUES (3939, '1592822486861100014', 'f92b9f8f372e445fb6564cdd57aa3c3e', 1, NULL, 3, '2020-06-22 10:42:32', '799.00');
INSERT INTO `userConsumptionRecords` VALUES (3940, '1592830150961100015', 'f92b9f8f372e445fb6564cdd57aa3c3e', 1, NULL, 3, '2020-06-22 12:49:51', '2188.00');
INSERT INTO `userConsumptionRecords` VALUES (3941, '1592868925313100017', 'f92b9f8f372e445fb6564cdd57aa3c3e', 1, NULL, 3, '2020-06-22 23:36:20', '1499.00');
INSERT INTO `userConsumptionRecords` VALUES (3942, '1592869177091100018', 'f92b9f8f372e445fb6564cdd57aa3c3e', 1, NULL, 3, '2020-06-22 23:40:07', '1289.00');

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
) ENGINE = InnoDB AUTO_INCREMENT = 184 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of userEvaluation
-- ----------------------------
INSERT INTO `userEvaluation` VALUES (182, '3e7cb3ada38c49a58d57a7c3446ec932', 10029, 'true', '2020-06-09 10:25:36');
INSERT INTO `userEvaluation` VALUES (183, '3e7cb3ada38c49a58d57a7c3446ec932', 10005, 'true', '2020-06-09 10:25:56');

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
) ENGINE = InnoDB AUTO_INCREMENT = 660 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of userFootprint
-- ----------------------------
INSERT INTO `userFootprint` VALUES (573, 'fd2d5eb2dd124f23802f163cd3998741', 10018, '2020-05-31 12:24:26');
INSERT INTO `userFootprint` VALUES (574, 'bab534a3fb2e42afb704894fc556c11d', 10005, '2020-05-31 14:44:36');
INSERT INTO `userFootprint` VALUES (575, 'bab534a3fb2e42afb704894fc556c11d', 10013, '2020-05-31 14:43:30');
INSERT INTO `userFootprint` VALUES (576, 'bab534a3fb2e42afb704894fc556c11d', 10006, '2020-05-31 12:05:56');
INSERT INTO `userFootprint` VALUES (577, 'bab534a3fb2e42afb704894fc556c11d', 10029, '2020-05-31 12:18:49');
INSERT INTO `userFootprint` VALUES (578, 'bab534a3fb2e42afb704894fc556c11d', 10011, '2020-05-31 14:25:57');
INSERT INTO `userFootprint` VALUES (579, 'bab534a3fb2e42afb704894fc556c11d', 10008, '2020-05-31 14:43:51');
INSERT INTO `userFootprint` VALUES (580, 'fd2d5eb2dd124f23802f163cd3998741', 10001, '2020-05-31 07:04:16');
INSERT INTO `userFootprint` VALUES (581, 'fd2d5eb2dd124f23802f163cd3998741', 10011, '2020-05-31 07:04:22');
INSERT INTO `userFootprint` VALUES (582, 'fd2d5eb2dd124f23802f163cd3998741', 10005, '2020-05-31 07:28:51');
INSERT INTO `userFootprint` VALUES (583, 'fd2d5eb2dd124f23802f163cd3998741', 10027, '2020-05-31 11:56:00');
INSERT INTO `userFootprint` VALUES (584, 'bab534a3fb2e42afb704894fc556c11d', 10004, '2020-05-31 07:21:49');
INSERT INTO `userFootprint` VALUES (585, 'f92b9f8f372e445fb6564cdd57aa3c3e', 10006, '2020-05-31 07:23:01');
INSERT INTO `userFootprint` VALUES (586, 'f92b9f8f372e445fb6564cdd57aa3c3e', 10029, '2020-05-31 09:32:00');
INSERT INTO `userFootprint` VALUES (587, 'fd2d5eb2dd124f23802f163cd3998741', 10009, '2020-05-31 07:24:34');
INSERT INTO `userFootprint` VALUES (588, 'f92b9f8f372e445fb6564cdd57aa3c3e', 10024, '2020-05-31 07:24:50');
INSERT INTO `userFootprint` VALUES (589, 'fd2d5eb2dd124f23802f163cd3998741', 10025, '2020-05-31 11:53:38');
INSERT INTO `userFootprint` VALUES (590, 'f92b9f8f372e445fb6564cdd57aa3c3e', 10016, '2020-05-31 09:41:33');
INSERT INTO `userFootprint` VALUES (591, 'f92b9f8f372e445fb6564cdd57aa3c3e', 10027, '2020-05-31 09:33:05');
INSERT INTO `userFootprint` VALUES (592, 'fd2d5eb2dd124f23802f163cd3998741', 10021, '2020-05-31 08:20:00');
INSERT INTO `userFootprint` VALUES (593, 'fd2d5eb2dd124f23802f163cd3998741', 10003, '2020-05-31 08:50:59');
INSERT INTO `userFootprint` VALUES (594, 'f92b9f8f372e445fb6564cdd57aa3c3e', 10003, '2020-05-31 09:41:16');
INSERT INTO `userFootprint` VALUES (595, 'f92b9f8f372e445fb6564cdd57aa3c3e', 10009, '2020-05-31 09:40:36');
INSERT INTO `userFootprint` VALUES (596, 'f92b9f8f372e445fb6564cdd57aa3c3e', 10011, '2020-05-31 09:47:14');
INSERT INTO `userFootprint` VALUES (597, 'f92b9f8f372e445fb6564cdd57aa3c3e', 10011, '2020-06-02 13:07:49');
INSERT INTO `userFootprint` VALUES (598, 'f92b9f8f372e445fb6564cdd57aa3c3e', 10013, '2020-06-02 15:45:26');
INSERT INTO `userFootprint` VALUES (599, 'f92b9f8f372e445fb6564cdd57aa3c3e', 10006, '2020-06-02 15:44:45');
INSERT INTO `userFootprint` VALUES (600, 'bab534a3fb2e42afb704894fc556c11d', 10015, '2020-06-02 15:46:14');
INSERT INTO `userFootprint` VALUES (601, 'bab534a3fb2e42afb704894fc556c11d', 10003, '2020-06-02 15:48:07');
INSERT INTO `userFootprint` VALUES (602, 'bab534a3fb2e42afb704894fc556c11d', 10008, '2020-06-02 15:48:27');
INSERT INTO `userFootprint` VALUES (603, 'bab534a3fb2e42afb704894fc556c11d', 10016, '2020-06-02 15:49:12');
INSERT INTO `userFootprint` VALUES (604, 'f92b9f8f372e445fb6564cdd57aa3c3e', 10013, '2020-06-03 03:33:57');
INSERT INTO `userFootprint` VALUES (605, 'fd2d5eb2dd124f23802f163cd3998741', 10025, '2020-06-03 13:42:18');
INSERT INTO `userFootprint` VALUES (606, 'fd2d5eb2dd124f23802f163cd3998741', 10027, '2020-06-04 09:26:21');
INSERT INTO `userFootprint` VALUES (607, '3e7cb3ada38c49a58d57a7c3446ec932', 10002, '2020-06-09 08:55:41');
INSERT INTO `userFootprint` VALUES (608, '3e7cb3ada38c49a58d57a7c3446ec932', 10015, '2020-06-09 10:25:06');
INSERT INTO `userFootprint` VALUES (609, '3e7cb3ada38c49a58d57a7c3446ec932', 10003, '2020-06-09 10:35:25');
INSERT INTO `userFootprint` VALUES (610, 'fd2d5eb2dd124f23802f163cd3998741', 10027, '2020-06-09 10:43:50');
INSERT INTO `userFootprint` VALUES (611, 'f92b9f8f372e445fb6564cdd57aa3c3e', 10009, '2020-06-09 10:20:02');
INSERT INTO `userFootprint` VALUES (612, 'fd2d5eb2dd124f23802f163cd3998741', 10011, '2020-06-09 10:34:05');
INSERT INTO `userFootprint` VALUES (613, 'fd2d5eb2dd124f23802f163cd3998741', 10003, '2020-06-09 10:35:45');
INSERT INTO `userFootprint` VALUES (614, 'fd2d5eb2dd124f23802f163cd3998741', 10009, '2020-06-09 10:47:11');
INSERT INTO `userFootprint` VALUES (615, 'fd2d5eb2dd124f23802f163cd3998741', 10001, '2020-06-09 10:47:24');
INSERT INTO `userFootprint` VALUES (616, 'fd2d5eb2dd124f23802f163cd3998741', 10005, '2020-06-09 10:49:42');
INSERT INTO `userFootprint` VALUES (617, 'fd2d5eb2dd124f23802f163cd3998741', 10024, '2020-06-09 11:17:33');
INSERT INTO `userFootprint` VALUES (618, 'fd2d5eb2dd124f23802f163cd3998741', 10003, '2020-06-15 04:10:40');
INSERT INTO `userFootprint` VALUES (619, 'fd2d5eb2dd124f23802f163cd3998741', 10004, '2020-06-15 04:10:56');
INSERT INTO `userFootprint` VALUES (620, 'f92b9f8f372e445fb6564cdd57aa3c3e', 10005, '2020-06-15 05:16:06');
INSERT INTO `userFootprint` VALUES (621, 'f92b9f8f372e445fb6564cdd57aa3c3e', 10014, '2020-06-15 06:05:39');
INSERT INTO `userFootprint` VALUES (622, 'f92b9f8f372e445fb6564cdd57aa3c3e', 10006, '2020-06-15 06:06:39');
INSERT INTO `userFootprint` VALUES (623, 'f92b9f8f372e445fb6564cdd57aa3c3e', 10001, '2020-06-15 06:07:10');
INSERT INTO `userFootprint` VALUES (624, 'f92b9f8f372e445fb6564cdd57aa3c3e', 10022, '2020-06-15 06:08:54');
INSERT INTO `userFootprint` VALUES (625, '3e7cb3ada38c49a58d57a7c3446ec932', 10015, '2020-06-15 06:59:05');
INSERT INTO `userFootprint` VALUES (626, 'f92b9f8f372e445fb6564cdd57aa3c3e', 10026, '2020-06-15 09:07:33');
INSERT INTO `userFootprint` VALUES (627, 'f92b9f8f372e445fb6564cdd57aa3c3e', 10022, '2020-06-16 09:17:47');
INSERT INTO `userFootprint` VALUES (628, 'f92b9f8f372e445fb6564cdd57aa3c3e', 10013, '2020-06-20 16:28:52');
INSERT INTO `userFootprint` VALUES (629, 'f92b9f8f372e445fb6564cdd57aa3c3e', 10006, '2020-06-21 06:18:15');
INSERT INTO `userFootprint` VALUES (630, 'f92b9f8f372e445fb6564cdd57aa3c3e', 10016, '2020-06-21 09:57:17');
INSERT INTO `userFootprint` VALUES (631, 'f92b9f8f372e445fb6564cdd57aa3c3e', 10013, '2020-06-21 09:47:28');
INSERT INTO `userFootprint` VALUES (632, 'f92b9f8f372e445fb6564cdd57aa3c3e', 10003, '2020-06-21 08:46:22');
INSERT INTO `userFootprint` VALUES (633, 'f92b9f8f372e445fb6564cdd57aa3c3e', 10002, '2020-06-21 08:47:07');
INSERT INTO `userFootprint` VALUES (634, 'f92b9f8f372e445fb6564cdd57aa3c3e', 10009, '2020-06-21 09:02:48');
INSERT INTO `userFootprint` VALUES (635, 'f92b9f8f372e445fb6564cdd57aa3c3e', 10005, '2020-06-21 09:55:27');
INSERT INTO `userFootprint` VALUES (636, 'f92b9f8f372e445fb6564cdd57aa3c3e', 10007, '2020-06-21 09:56:55');
INSERT INTO `userFootprint` VALUES (637, 'f92b9f8f372e445fb6564cdd57aa3c3e', 10001, '2020-06-21 09:57:01');
INSERT INTO `userFootprint` VALUES (638, 'fd2d5eb2dd124f23802f163cd3998741', 10001, '2020-06-21 12:36:19');
INSERT INTO `userFootprint` VALUES (639, 'fd2d5eb2dd124f23802f163cd3998741', 10002, '2020-06-21 12:36:23');
INSERT INTO `userFootprint` VALUES (640, 'f92b9f8f372e445fb6564cdd57aa3c3e', 10011, '2020-06-22 09:34:17');
INSERT INTO `userFootprint` VALUES (641, 'f92b9f8f372e445fb6564cdd57aa3c3e', 10005, '2020-06-22 03:16:55');
INSERT INTO `userFootprint` VALUES (642, 'f92b9f8f372e445fb6564cdd57aa3c3e', 10010, '2020-06-22 09:41:17');
INSERT INTO `userFootprint` VALUES (643, 'f92b9f8f372e445fb6564cdd57aa3c3e', 10009, '2020-06-22 01:42:31');
INSERT INTO `userFootprint` VALUES (644, 'f92b9f8f372e445fb6564cdd57aa3c3e', 10006, '2020-06-22 23:35:24');
INSERT INTO `userFootprint` VALUES (645, 'f92b9f8f372e445fb6564cdd57aa3c3e', 10013, '2020-06-22 10:43:28');
INSERT INTO `userFootprint` VALUES (646, 'f92b9f8f372e445fb6564cdd57aa3c3e', 10029, '2020-06-22 10:32:11');
INSERT INTO `userFootprint` VALUES (647, 'fd2d5eb2dd124f23802f163cd3998741', 10006, '2020-06-22 10:34:51');
INSERT INTO `userFootprint` VALUES (648, 'f92b9f8f372e445fb6564cdd57aa3c3e', 10008, '2020-06-22 13:23:28');
INSERT INTO `userFootprint` VALUES (649, 'fd2d5eb2dd124f23802f163cd3998741', 10007, '2020-06-22 10:36:01');
INSERT INTO `userFootprint` VALUES (650, 'fd2d5eb2dd124f23802f163cd3998741', 10024, '2020-06-22 10:36:58');
INSERT INTO `userFootprint` VALUES (651, 'fd2d5eb2dd124f23802f163cd3998741', 10001, '2020-06-22 10:39:14');
INSERT INTO `userFootprint` VALUES (652, 'f92b9f8f372e445fb6564cdd57aa3c3e', 10002, '2020-06-22 12:53:57');
INSERT INTO `userFootprint` VALUES (653, 'fd2d5eb2dd124f23802f163cd3998741', 10014, '2020-06-22 10:38:43');
INSERT INTO `userFootprint` VALUES (654, 'fd2d5eb2dd124f23802f163cd3998741', 10011, '2020-06-22 10:39:06');
INSERT INTO `userFootprint` VALUES (655, 'fd2d5eb2dd124f23802f163cd3998741', 10002, '2020-06-22 10:39:40');
INSERT INTO `userFootprint` VALUES (656, 'fd2d5eb2dd124f23802f163cd3998741', 10028, '2020-06-22 10:40:45');
INSERT INTO `userFootprint` VALUES (657, 'f92b9f8f372e445fb6564cdd57aa3c3e', 10026, '2020-06-22 10:41:24');
INSERT INTO `userFootprint` VALUES (658, 'f92b9f8f372e445fb6564cdd57aa3c3e', 10024, '2020-06-22 12:49:09');
INSERT INTO `userFootprint` VALUES (659, 'f92b9f8f372e445fb6564cdd57aa3c3e', 10022, '2020-06-22 23:39:35');

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
) ENGINE = InnoDB AUTO_INCREMENT = 14 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of userMembe
-- ----------------------------
INSERT INTO `userMembe` VALUES (1, '7c9fdfa3177042a08766aed29e7de6cd', '9FP/FSGu9MiEsuW3yukRGw==', 98000, 5, 2, 1540);
INSERT INTO `userMembe` VALUES (2, '0497326c70a447ceb815aa23743daeab', NULL, 0, 0, 0, 0);
INSERT INTO `userMembe` VALUES (3, '9c1e482cfabf48f7ab64baee9bd778fd', NULL, 0, 0, 0, 0);
INSERT INTO `userMembe` VALUES (4, 'f92b9f8f372e445fb6564cdd57aa3c3e', 'O0YddbL1uGnEqOMWIA8zqA==', 0, 0, 0, 0);
INSERT INTO `userMembe` VALUES (5, '836fa03c4977499a9361f986672dea7f', NULL, 0, 0, 0, 0);
INSERT INTO `userMembe` VALUES (6, '058656382d454f2cb40340934812d5c4', NULL, 0, 0, 0, 0);
INSERT INTO `userMembe` VALUES (7, 'fd113e77699c4d21ab50acaf88e7e141', NULL, 0, 0, 0, 0);
INSERT INTO `userMembe` VALUES (8, 'd52e8cc4c9a34b839c74a20d1685f04c', NULL, 0, 0, 0, 0);
INSERT INTO `userMembe` VALUES (9, '311e2fca19b944668631da49d5c1dbb2', NULL, 0, 0, 0, 0);
INSERT INTO `userMembe` VALUES (10, '451a7d05126a4e58a74846983282267d', NULL, 0, 0, 0, 0);
INSERT INTO `userMembe` VALUES (11, '3e7cb3ada38c49a58d57a7c3446ec932', 'zK1PW2ema6+OdC3R/QPkZQ==', 0, 0, 0, 0);
INSERT INTO `userMembe` VALUES (12, 'fd2d5eb2dd124f23802f163cd3998741', 'YybtLQVYFl9w19wt5vCKnw==', 0, 0, 0, 0);
INSERT INTO `userMembe` VALUES (13, 'bab534a3fb2e42afb704894fc556c11d', 'oEaOiNVznhUiG+kf56V3tA==', 0, 0, 0, 0);

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
  `isDelete` int(11) NULL DEFAULT 0,
  `sign` int(11) NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1284 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of userOrder
-- ----------------------------
INSERT INTO `userOrder` VALUES (1152, 'fd2d5eb2dd124f23802f163cd3998741', '1590897183222100001', 1, 1, '2020-05-31 11:53:03', '2020-06-03 07:26:33', '2020-05-31 07:26:38', NULL, '', '3892.00', 2, 0, 0, 0);
INSERT INTO `userOrder` VALUES (1153, 'bab534a3fb2e42afb704894fc556c11d', '1590897475548100002', NULL, NULL, '2020-05-31 11:57:55', NULL, NULL, NULL, NULL, '7890.0', 1, 0, 0, 0);
INSERT INTO `userOrder` VALUES (1154, 'bab534a3fb2e42afb704894fc556c11d', '1590897539621100003', 1, 1, '2020-05-31 11:58:59', '2020-06-03 11:59:00', NULL, NULL, '', '7890.0', 1, 0, 0, 0);
INSERT INTO `userOrder` VALUES (1155, 'bab534a3fb2e42afb704894fc556c11d', '1590897928981100004', 1, 1, '2020-05-31 12:05:29', '2020-06-03 12:05:29', NULL, NULL, '', '11999.0', 1, 0, 0, 0);
INSERT INTO `userOrder` VALUES (1156, 'bab534a3fb2e42afb704894fc556c11d', '1590897958726100005', 1, 1, '2020-05-31 12:05:58', '2020-06-03 12:05:59', NULL, NULL, '', '1499.0', 1, 0, 0, 0);
INSERT INTO `userOrder` VALUES (1157, 'bab534a3fb2e42afb704894fc556c11d', '1590897990915100006', 1, 1, '2020-05-31 12:06:31', '2020-06-03 12:06:31', NULL, NULL, '', '11999.0', 1, 0, 0, 0);
INSERT INTO `userOrder` VALUES (1158, 'bab534a3fb2e42afb704894fc556c11d', '1590898731844100007', 1, 1, '2020-05-31 12:18:52', '2020-06-03 12:18:52', NULL, NULL, '', '2920.01', 1, 0, 0, 0);
INSERT INTO `userOrder` VALUES (1159, 'bab534a3fb2e42afb704894fc556c11d', '1590906359505100008', 1, 1, '2020-05-31 14:25:59', '2020-06-03 14:26:00', NULL, NULL, '', '10398.0', 1, 0, 0, 0);
INSERT INTO `userOrder` VALUES (1160, 'bab534a3fb2e42afb704894fc556c11d', '1590906899170100009', NULL, NULL, '2020-05-31 14:34:59', NULL, NULL, NULL, NULL, '7890.0', 1, 0, 0, 0);
INSERT INTO `userOrder` VALUES (1161, 'bab534a3fb2e42afb704894fc556c11d', '1590907414212100010', 1, 1, '2020-05-31 14:43:34', '2020-06-03 14:43:35', NULL, NULL, '', '11999.0', 1, 0, 0, 0);
INSERT INTO `userOrder` VALUES (1162, 'bab534a3fb2e42afb704894fc556c11d', '1590907433458100011', 1, 1, '2020-05-31 14:43:53', '2020-06-03 14:43:53', NULL, NULL, '', '3500.0', 1, 0, 0, 0);
INSERT INTO `userOrder` VALUES (1163, 'bab534a3fb2e42afb704894fc556c11d', '1590907477142100012', 1, 1, '2020-05-31 14:44:37', '2020-06-03 14:44:37', '2020-05-31 14:44:42', NULL, '', '7890.0', 2, 0, 0, 0);
INSERT INTO `userOrder` VALUES (1164, 'fd2d5eb2dd124f23802f163cd3998741', '1590908670202100013', 2, 1, '2020-05-31 07:04:30', '2020-06-03 07:04:30', NULL, NULL, '', '30396.00', 1, 0, 0, 0);
INSERT INTO `userOrder` VALUES (1165, 'fd2d5eb2dd124f23802f163cd3998741', '1590909146438100013', 2, 1, '2020-05-31 07:12:26', '2020-06-03 07:12:26', NULL, NULL, '', '7890.0', 1, 0, 0, 0);
INSERT INTO `userOrder` VALUES (1166, 'fd2d5eb2dd124f23802f163cd3998741', '1590909332999100013', 2, 1, '2020-05-31 07:15:33', '2020-06-03 07:15:33', NULL, NULL, '', '7890.0', 1, 0, 0, 0);
INSERT INTO `userOrder` VALUES (1167, 'f92b9f8f372e445fb6564cdd57aa3c3e', '1590909909158100013', 1, 1, '2020-05-31 07:25:09', '2020-06-03 07:26:13', '2020-05-31 07:26:30', NULL, '', '24068.00', 2, 0, 0, 0);
INSERT INTO `userOrder` VALUES (1168, 'fd2d5eb2dd124f23802f163cd3998741', '1590910061652100013', 1, 1, '2020-05-31 07:27:42', '2020-06-03 07:28:08', '2020-05-31 07:28:13', NULL, '', '1192669.70', 2, 0, 0, 0);
INSERT INTO `userOrder` VALUES (1169, 'fd2d5eb2dd124f23802f163cd3998741', '1590910132694100013', 1, 1, '2020-05-31 07:28:52', '2020-06-03 07:28:52', '2020-05-31 07:28:57', NULL, '', '7890.0', 2, 0, 0, 0);
INSERT INTO `userOrder` VALUES (1170, 'fd2d5eb2dd124f23802f163cd3998741', '1590910175558100013', 1, 1, '2020-05-31 07:29:35', '2020-06-03 07:29:35', '2020-05-31 07:29:40', NULL, '', '773.0', 2, 0, 0, 0);
INSERT INTO `userOrder` VALUES (1171, 'fd2d5eb2dd124f23802f163cd3998741', '1590910212879100013', 1, 1, '2020-05-31 07:30:13', '2020-06-03 07:30:14', '2020-05-31 07:30:24', NULL, '', '59.9', 2, 0, 0, 0);
INSERT INTO `userOrder` VALUES (1172, 'f92b9f8f372e445fb6564cdd57aa3c3e', '1590910381616100013', NULL, NULL, '2020-05-31 07:33:01', NULL, NULL, NULL, NULL, '773.0', 1, 0, 0, 0);
INSERT INTO `userOrder` VALUES (1173, 'f92b9f8f372e445fb6564cdd57aa3c3e', '1590910432642100013', 1, 1, '2020-05-31 07:33:52', '2020-06-03 07:33:52', '2020-05-31 07:34:02', NULL, '', '773.0', 2, 0, 0, 0);
INSERT INTO `userOrder` VALUES (1174, 'f92b9f8f372e445fb6564cdd57aa3c3e', '1590910522187100013', 1, 1, '2020-05-31 07:35:22', '2020-06-03 07:35:22', '2020-05-31 07:35:28', NULL, '', '773.0', 2, 0, 0, 0);
INSERT INTO `userOrder` VALUES (1175, 'f92b9f8f372e445fb6564cdd57aa3c3e', '1590910582333100013', 1, 1, '2020-05-31 07:36:22', '2020-06-03 07:36:22', '2020-05-31 07:36:28', NULL, '', '773.0', 2, 0, 0, 0);
INSERT INTO `userOrder` VALUES (1176, 'fd2d5eb2dd124f23802f163cd3998741', '1590910643262100013', 1, 1, '2020-05-31 07:37:23', '2020-06-03 07:37:23', '2020-05-31 07:37:28', NULL, '', '773.0', 2, 0, 0, 0);
INSERT INTO `userOrder` VALUES (1177, 'fd2d5eb2dd124f23802f163cd3998741', '1590911347478100013', 1, 1, '2020-05-31 15:49:07', '2020-06-03 15:49:07', '2020-05-31 15:49:12', NULL, '', '873.0', 2, 0, 0, 0);
INSERT INTO `userOrder` VALUES (1178, 'fd2d5eb2dd124f23802f163cd3998741', '1590911433725100014', 1, 1, '2020-05-31 15:50:33', '2020-06-03 15:50:34', '2020-05-31 15:50:38', NULL, '', '773.0', 2, 0, 0, 0);
INSERT INTO `userOrder` VALUES (1179, 'fd2d5eb2dd124f23802f163cd3998741', '1590911459130100015', 1, 1, '2020-05-31 15:50:59', '2020-06-03 15:50:59', '2020-05-31 15:51:04', NULL, '', '773.0', 2, 0, 0, 0);
INSERT INTO `userOrder` VALUES (1180, 'fd2d5eb2dd124f23802f163cd3998741', '1590911526301100016', 1, 1, '2020-05-31 07:52:06', '2020-06-03 07:52:06', '2020-05-31 07:52:11', NULL, '', '773.0', 2, 0, 0, 0);
INSERT INTO `userOrder` VALUES (1181, 'fd2d5eb2dd124f23802f163cd3998741', '1590911576719100016', 1, 1, '2020-05-31 07:52:56', '2020-06-03 07:52:56', '2020-05-31 07:53:08', NULL, '', '773.0', 2, 0, 0, 0);
INSERT INTO `userOrder` VALUES (1182, 'fd2d5eb2dd124f23802f163cd3998741', '1590911711193100016', 1, 1, '2020-05-31 07:55:11', '2020-06-03 07:55:11', '2020-05-31 07:55:16', NULL, '', '773.0', 2, 0, 0, 0);
INSERT INTO `userOrder` VALUES (1183, 'fd2d5eb2dd124f23802f163cd3998741', '1590911737986100016', 1, 1, '2020-05-31 07:55:38', '2020-06-03 07:55:38', '2020-05-31 07:55:43', NULL, '', '773.0', 2, 0, 0, 0);
INSERT INTO `userOrder` VALUES (1184, 'fd2d5eb2dd124f23802f163cd3998741', '1590911779313100016', 1, 1, '2020-05-31 07:56:19', '2020-06-03 07:56:19', '2020-05-31 07:56:24', NULL, '', '773.0', 2, 0, 0, 0);
INSERT INTO `userOrder` VALUES (1185, 'fd2d5eb2dd124f23802f163cd3998741', '1590911818051100016', 1, 1, '2020-05-31 07:56:58', '2020-06-03 07:57:01', '2020-05-31 07:57:07', NULL, '', '773.0', 2, 0, 0, 0);
INSERT INTO `userOrder` VALUES (1186, 'fd2d5eb2dd124f23802f163cd3998741', '1590911891053100016', 1, 1, '2020-05-31 07:58:11', '2020-06-03 07:58:14', '2020-05-31 07:58:44', NULL, '', '773.0', 2, 0, 0, 0);
INSERT INTO `userOrder` VALUES (1187, 'fd2d5eb2dd124f23802f163cd3998741', '1590912029632100016', 1, 1, '2020-05-31 08:00:29', '2020-06-03 08:00:32', '2020-05-31 08:00:38', NULL, '', '773.0', 2, 0, 0, 0);
INSERT INTO `userOrder` VALUES (1188, 'fd2d5eb2dd124f23802f163cd3998741', '1590912209984100016', 1, 1, '2020-05-31 08:03:30', '2020-06-03 08:03:30', '2020-05-31 08:03:34', NULL, '', '773.0', 2, 0, 0, 0);
INSERT INTO `userOrder` VALUES (1189, 'fd2d5eb2dd124f23802f163cd3998741', '1590913114287100016', 1, 1, '2020-05-31 08:18:34', '2020-06-03 08:18:37', '2020-05-31 08:18:50', NULL, '', '59.9', 2, 0, 0, 0);
INSERT INTO `userOrder` VALUES (1190, 'fd2d5eb2dd124f23802f163cd3998741', '1590913206587100016', 1, 1, '2020-05-31 08:20:06', '2020-06-03 08:20:06', '2020-05-31 08:20:15', NULL, '', '18599.0', 2, 0, 0, 0);
INSERT INTO `userOrder` VALUES (1191, 'fd2d5eb2dd124f23802f163cd3998741', '1590913317844100016', 1, 1, '2020-05-31 08:21:58', '2020-06-03 08:21:58', '2020-05-31 08:22:03', NULL, '', '773.0', 2, 0, 0, 0);
INSERT INTO `userOrder` VALUES (1192, 'fd2d5eb2dd124f23802f163cd3998741', '1590913594499100016', 1, 1, '2020-05-31 08:26:34', '2020-06-03 08:26:37', '2020-05-31 08:26:44', NULL, '', '773.0', 2, 0, 0, 0);
INSERT INTO `userOrder` VALUES (1193, 'fd2d5eb2dd124f23802f163cd3998741', '1590913597703100016', NULL, NULL, '2020-05-31 08:26:37', NULL, NULL, NULL, NULL, '773.0', 1, 0, 0, 0);
INSERT INTO `userOrder` VALUES (1194, 'fd2d5eb2dd124f23802f163cd3998741', '1590913666936100016', 1, 1, '2020-05-31 08:27:47', '2020-06-03 08:27:47', '2020-05-31 08:27:54', NULL, '', '59.9', 2, 0, 0, 0);
INSERT INTO `userOrder` VALUES (1195, 'fd2d5eb2dd124f23802f163cd3998741', '1590914298003100016', 1, 1, '2020-05-31 08:38:18', '2020-06-03 08:38:21', '2020-05-31 08:38:30', NULL, '', '773.0', 2, 0, 0, 0);
INSERT INTO `userOrder` VALUES (1196, 'fd2d5eb2dd124f23802f163cd3998741', '1590914370882100016', 1, 1, '2020-05-31 08:39:31', '2020-06-03 08:39:31', '2020-05-31 08:39:37', NULL, '', '59.9', 2, 0, 0, 0);
INSERT INTO `userOrder` VALUES (1197, 'fd2d5eb2dd124f23802f163cd3998741', '1590914549676100016', NULL, NULL, '2020-05-31 08:42:29', NULL, NULL, NULL, NULL, '59.9', 1, 0, 0, 0);
INSERT INTO `userOrder` VALUES (1198, 'fd2d5eb2dd124f23802f163cd3998741', '1590914552067100016', 1, 1, '2020-05-31 08:42:32', '2020-06-03 08:42:33', '2020-05-31 08:42:46', NULL, '', '74.9', 2, 0, 0, 0);
INSERT INTO `userOrder` VALUES (1199, 'fd2d5eb2dd124f23802f163cd3998741', '1590914605546100016', 1, 1, '2020-05-31 08:43:25', '2020-06-03 08:43:25', '2020-05-31 08:43:32', NULL, '', '773.0', 2, 0, 0, 0);
INSERT INTO `userOrder` VALUES (1200, 'fd2d5eb2dd124f23802f163cd3998741', '1590914958294100016', 1, 1, '2020-05-31 08:49:18', '2020-06-03 08:49:18', '2020-05-31 08:49:23', NULL, '', '59.9', 2, 0, 0, 0);
INSERT INTO `userOrder` VALUES (1201, 'fd2d5eb2dd124f23802f163cd3998741', '1590915061056100016', 1, 1, '2020-05-31 08:51:01', '2020-06-03 08:51:01', '2020-05-31 08:51:07', NULL, '', '888.0', 2, 0, 0, 0);
INSERT INTO `userOrder` VALUES (1202, 'f92b9f8f372e445fb6564cdd57aa3c3e', '1590917430584100016', 1, 1, '2020-05-31 09:30:30', '2020-06-03 09:30:30', '2020-05-31 09:30:36', NULL, '', '888.0', 2, 0, 0, 0);
INSERT INTO `userOrder` VALUES (1203, 'fd2d5eb2dd124f23802f163cd3998741', '1590917437802100016', 1, 1, '2020-05-31 09:30:38', '2020-06-03 09:30:38', '2020-05-31 09:30:45', NULL, '', '773.0', 2, 0, 0, 0);
INSERT INTO `userOrder` VALUES (1204, 'fd2d5eb2dd124f23802f163cd3998741', '1590917515330100016', 1, 1, '2020-05-31 09:31:55', '2020-06-03 09:31:55', '2020-05-31 09:32:02', NULL, '', '59.9', 2, 0, 0, 0);
INSERT INTO `userOrder` VALUES (1205, 'f92b9f8f372e445fb6564cdd57aa3c3e', '1590917522539100016', 1, 1, '2020-05-31 09:32:02', '2020-06-03 09:32:02', '2020-05-31 09:32:09', NULL, '', '2920.01', 2, 0, 0, 0);
INSERT INTO `userOrder` VALUES (1206, 'f92b9f8f372e445fb6564cdd57aa3c3e', '1590917586580100016', 1, 1, '2020-05-31 09:33:06', '2020-06-03 09:33:06', '2020-05-31 09:33:13', NULL, '', '773.0', 2, 0, 0, 0);
INSERT INTO `userOrder` VALUES (1207, 'fd2d5eb2dd124f23802f163cd3998741', '1590917609537100016', 1, 1, '2020-05-31 09:33:29', '2020-06-03 09:33:29', '2020-05-31 09:33:35', NULL, '', '873.0', 2, 0, 0, 0);
INSERT INTO `userOrder` VALUES (1208, 'fd2d5eb2dd124f23802f163cd3998741', '1590917710022100016', 1, 1, '2020-05-31 09:35:10', '2020-06-03 09:35:10', '2020-05-31 09:35:16', NULL, '', '773.0', 2, 0, 0, 0);
INSERT INTO `userOrder` VALUES (1209, 'fd2d5eb2dd124f23802f163cd3998741', '1590917771089100016', 1, 1, '2020-05-31 09:36:11', '2020-06-03 09:36:11', '2020-05-31 09:36:16', NULL, '', '59.9', 2, 0, 0, 0);
INSERT INTO `userOrder` VALUES (1210, 'fd2d5eb2dd124f23802f163cd3998741', '1590917870824100016', 1, 1, '2020-05-31 09:37:51', '2020-06-03 09:37:51', '2020-05-31 09:37:55', NULL, '', '773.0', 2, 0, 0, 0);
INSERT INTO `userOrder` VALUES (1211, 'fd2d5eb2dd124f23802f163cd3998741', '1590918482778100016', 1, 1, '2020-05-31 09:48:02', '2020-06-03 09:48:02', '2020-05-31 09:48:09', NULL, '', '773.0', 2, 0, 0, 0);
INSERT INTO `userOrder` VALUES (1212, 'fd2d5eb2dd124f23802f163cd3998741', '1590918561879100016', 1, 1, '2020-05-31 09:49:22', '2020-06-03 09:49:22', '2020-05-31 09:49:27', NULL, '', '773.0', 2, 0, 0, 0);
INSERT INTO `userOrder` VALUES (1213, 'fd2d5eb2dd124f23802f163cd3998741', '1590918609256100016', 1, 1, '2020-05-31 09:50:09', '2020-06-03 09:50:09', '2020-05-31 09:50:14', NULL, '', '773.0', 2, 0, 0, 0);
INSERT INTO `userOrder` VALUES (1214, 'fd2d5eb2dd124f23802f163cd3998741', '1590918630745100016', 1, 1, '2020-05-31 09:50:30', '2020-06-03 09:50:30', '2020-05-31 09:50:35', NULL, '', '773.0', 2, 0, 0, 0);
INSERT INTO `userOrder` VALUES (1215, 'fd2d5eb2dd124f23802f163cd3998741', '1590918650270100016', 1, 1, '2020-05-31 09:50:50', '2020-06-03 09:50:50', '2020-05-31 09:50:55', NULL, '', '773.0', 2, 0, 0, 0);
INSERT INTO `userOrder` VALUES (1216, 'fd2d5eb2dd124f23802f163cd3998741', '1590918684473100016', 1, 1, '2020-05-31 09:51:25', '2020-06-03 09:51:25', '2020-05-31 09:51:31', NULL, '', '6343.90', 2, 0, 0, 0);
INSERT INTO `userOrder` VALUES (1217, 'fd2d5eb2dd124f23802f163cd3998741', '1590918740609100016', 1, 1, '2020-05-31 09:52:21', '2020-06-03 09:52:21', '2020-05-31 09:52:26', NULL, '', '4099.80', 2, 0, 0, 0);
INSERT INTO `userOrder` VALUES (1218, 'fd2d5eb2dd124f23802f163cd3998741', '1590918792407100016', 1, 1, '2020-05-31 09:53:13', '2020-06-03 09:53:13', '2020-05-31 09:53:19', NULL, '', '4065.00', 2, 0, 0, 0);
INSERT INTO `userOrder` VALUES (1219, 'fd2d5eb2dd124f23802f163cd3998741', '1590918811413100016', 1, 1, '2020-05-31 09:53:31', '2020-06-03 09:53:31', '2020-05-31 09:53:35', NULL, '', '59.9', 2, 0, 0, 0);
INSERT INTO `userOrder` VALUES (1220, 'fd2d5eb2dd124f23802f163cd3998741', '1590918825532100016', 1, 1, '2020-05-31 09:53:45', '2020-06-03 09:53:45', '2020-05-31 09:53:50', NULL, '', '59.9', 2, 0, 0, 0);
INSERT INTO `userOrder` VALUES (1221, 'fd2d5eb2dd124f23802f163cd3998741', '1590918842170100016', 1, 1, '2020-05-31 09:54:02', '2020-06-03 09:54:02', '2020-05-31 09:54:07', NULL, '', '59.9', 2, 0, 0, 0);
INSERT INTO `userOrder` VALUES (1222, 'fd2d5eb2dd124f23802f163cd3998741', '1590919184200100016', 1, 1, '2020-05-31 09:59:44', '2020-06-03 09:59:44', '2020-05-31 09:59:49', NULL, '', '59.9', 2, 0, 0, 0);
INSERT INTO `userOrder` VALUES (1223, 'fd2d5eb2dd124f23802f163cd3998741', '1590919245687100016', 1, 1, '2020-05-31 10:00:45', '2020-06-03 10:00:46', '2020-05-31 10:00:52', NULL, '', '59.9', 2, 0, 0, 0);
INSERT INTO `userOrder` VALUES (1224, 'fd2d5eb2dd124f23802f163cd3998741', '1590919292508100016', 1, 1, '2020-05-31 10:01:32', '2020-06-03 10:01:32', '2020-05-31 10:01:41', NULL, '', '59.9', 2, 0, 0, 0);
INSERT INTO `userOrder` VALUES (1225, 'fd2d5eb2dd124f23802f163cd3998741', '1590919376700100016', 1, 1, '2020-05-31 10:02:56', '2020-06-03 10:02:56', '2020-05-31 10:03:01', NULL, '', '773.0', 2, 0, 0, 0);
INSERT INTO `userOrder` VALUES (1226, 'fd2d5eb2dd124f23802f163cd3998741', '1590919434457100016', 1, 1, '2020-05-31 10:03:54', '2020-06-03 10:03:54', '2020-05-31 10:03:59', NULL, '', '773.0', 2, 0, 0, 0);
INSERT INTO `userOrder` VALUES (1227, 'fd2d5eb2dd124f23802f163cd3998741', '1590919467718100016', 1, 1, '2020-05-31 10:04:27', '2020-06-03 10:04:27', '2020-05-31 10:04:32', NULL, '', '773.0', 2, 0, 0, 0);
INSERT INTO `userOrder` VALUES (1228, 'fd2d5eb2dd124f23802f163cd3998741', '1590919485248100016', 1, 1, '2020-05-31 10:04:45', '2020-06-03 10:04:45', '2020-05-31 10:04:49', NULL, '', '773.0', 2, 0, 0, 0);
INSERT INTO `userOrder` VALUES (1229, 'fd2d5eb2dd124f23802f163cd3998741', '1590925984688100016', 1, 1, '2020-05-31 11:53:04', '2020-06-03 11:53:04', '2020-05-31 11:53:09', NULL, '', '59.9', 2, 0, 0, 0);
INSERT INTO `userOrder` VALUES (1230, 'fd2d5eb2dd124f23802f163cd3998741', '1590926019048100016', 1, 1, '2020-05-31 11:53:39', '2020-06-03 11:53:39', '2020-05-31 11:53:44', NULL, '', '59.9', 2, 0, 0, 0);
INSERT INTO `userOrder` VALUES (1231, 'fd2d5eb2dd124f23802f163cd3998741', '1590926071845100016', 1, 1, '2020-05-31 11:54:32', '2020-06-03 11:54:32', '2020-05-31 11:54:36', NULL, '', '773.0', 2, 0, 0, 0);
INSERT INTO `userOrder` VALUES (1232, 'fd2d5eb2dd124f23802f163cd3998741', '1590926117771100016', 1, 1, '2020-05-31 11:55:18', '2020-06-03 11:55:18', '2020-05-31 11:55:22', NULL, '', '1605.90', 2, 0, 0, 0);
INSERT INTO `userOrder` VALUES (1233, 'fd2d5eb2dd124f23802f163cd3998741', '1590926161372100016', 1, 1, '2020-05-31 11:56:01', '2020-06-03 11:56:01', '2020-05-31 11:56:05', NULL, '', '773.0', 2, 0, 0, 0);
INSERT INTO `userOrder` VALUES (1234, 'f92b9f8f372e445fb6564cdd57aa3c3e', '1591103165390100001', 1, 1, '2020-06-02 13:06:05', '2020-06-05 13:06:04', '2020-06-02 13:06:10', NULL, '', '10398.0', 3, 0, 0, 0);
INSERT INTO `userOrder` VALUES (1235, 'f92b9f8f372e445fb6564cdd57aa3c3e', '1591112727758100002', 1, 1, '2020-06-02 15:45:27', '2020-06-05 15:45:27', '2020-06-02 15:45:32', NULL, '', '11999.0', 2, 0, 0, 0);
INSERT INTO `userOrder` VALUES (1236, 'bab534a3fb2e42afb704894fc556c11d', '1591112856284100003', 1, 1, '2020-06-02 15:47:36', '2020-06-05 15:47:36', NULL, NULL, '', '888.0', 1, 0, 0, 0);
INSERT INTO `userOrder` VALUES (1237, 'bab534a3fb2e42afb704894fc556c11d', '1591112908727100004', 1, 1, '2020-06-02 15:48:28', '2020-06-05 15:48:29', '2020-06-02 15:48:37', NULL, '', '3500.0', 2, 0, 0, 0);
INSERT INTO `userOrder` VALUES (1238, 'f92b9f8f372e445fb6564cdd57aa3c3e', '1591146353330100001', 1, 1, '2020-06-03 01:05:53', '2020-06-06 01:05:53', '2020-06-03 01:05:58', NULL, '', '37960.13', 2, 0, 0, 0);
INSERT INTO `userOrder` VALUES (1239, 'fd2d5eb2dd124f23802f163cd3998741', '1591191744705100002', 2, 1, '2020-06-03 13:42:25', '2020-06-06 13:42:25', NULL, NULL, '', '134.80', 1, 0, 0, 0);
INSERT INTO `userOrder` VALUES (1240, 'fd2d5eb2dd124f23802f163cd3998741', '1591262782959100001', 2, 1, '2020-06-04 09:26:23', '2020-06-07 09:26:23', '2020-06-04 09:27:02', NULL, '', '773.0', 2, 0, 0, 0);
INSERT INTO `userOrder` VALUES (1241, '3e7cb3ada38c49a58d57a7c3446ec932', '1591697678854100001', 1, 1, '2020-06-09 10:14:39', '2020-06-12 10:20:44', '2020-06-09 10:20:51', NULL, '', '888.0', 3, 0, 0, 0);
INSERT INTO `userOrder` VALUES (1242, 'fd2d5eb2dd124f23802f163cd3998741', '1591697873586100002', 1, 1, '2020-06-09 10:17:53', '2020-06-12 10:18:01', '2020-06-09 10:18:06', NULL, '', '773.0', 2, 0, 0, 0);
INSERT INTO `userOrder` VALUES (1243, 'f92b9f8f372e445fb6564cdd57aa3c3e', '1591698004323100003', 1, 1, '2020-06-09 10:20:04', '2020-06-12 10:20:03', '2020-06-09 10:20:09', NULL, '', '47699.0', 2, 0, 0, 0);
INSERT INTO `userOrder` VALUES (1244, 'fd2d5eb2dd124f23802f163cd3998741', '1591699418536100004', NULL, NULL, '2020-06-09 10:43:38', NULL, NULL, NULL, NULL, '773.0', 1, 0, 0, 0);
INSERT INTO `userOrder` VALUES (1245, 'fd2d5eb2dd124f23802f163cd3998741', '1591699783753100005', 1, 1, '2020-06-09 10:49:43', '2020-06-12 10:49:44', '2020-06-09 10:50:02', NULL, '', '7890.0', 2, 0, 0, 0);
INSERT INTO `userOrder` VALUES (1246, 'f92b9f8f372e445fb6564cdd57aa3c3e', '1592198179386100001', 1, 1, '2020-06-15 05:16:19', '2020-06-18 05:16:18', '2020-06-15 05:16:46', NULL, '', '15380.00', 2, 0, 0, 0);
INSERT INTO `userOrder` VALUES (1247, 'f92b9f8f372e445fb6564cdd57aa3c3e', '1592201143597100002', 1, 1, '2020-06-15 06:05:43', '2020-06-18 06:05:42', '2020-06-15 06:06:04', NULL, '', '2898.0', 2, 0, 0, 0);
INSERT INTO `userOrder` VALUES (1248, '3e7cb3ada38c49a58d57a7c3446ec932', '1592203784754100003', NULL, NULL, '2020-06-15 06:49:45', NULL, NULL, NULL, NULL, '60.00', 1, 0, 0, 0);
INSERT INTO `userOrder` VALUES (1249, '3e7cb3ada38c49a58d57a7c3446ec932', '1592204359482100004', NULL, NULL, '2020-06-15 06:59:19', NULL, NULL, NULL, NULL, '20.00', 1, 0, 0, 0);
INSERT INTO `userOrder` VALUES (1250, 'f92b9f8f372e445fb6564cdd57aa3c3e', '1592713282803100001', 2, 1, '2020-06-21 04:21:23', '2020-06-24 04:21:22', NULL, NULL, '', '1499.0', 1, 0, 0, 0);
INSERT INTO `userOrder` VALUES (1251, 'fd2d5eb2dd124f23802f163cd3998741', '1592713565109100002', NULL, NULL, '2020-06-21 04:26:05', NULL, NULL, NULL, NULL, '374328.00', 1, 0, 0, 0);
INSERT INTO `userOrder` VALUES (1252, 'f92b9f8f372e445fb6564cdd57aa3c3e', '1592720296500100003', 2, 1, '2020-06-21 06:18:16', '2020-06-24 06:18:54', NULL, NULL, '', '1499.0', 1, 0, 0, 0);
INSERT INTO `userOrder` VALUES (1253, 'f92b9f8f372e445fb6564cdd57aa3c3e', '1592720376237100004', 1, 1, '2020-06-21 06:19:36', '2020-06-24 06:20:02', '2020-06-21 06:21:56', NULL, '', '5399.0', 2, 0, 0, 0);
INSERT INTO `userOrder` VALUES (1254, 'f92b9f8f372e445fb6564cdd57aa3c3e', '1592720450436100005', 2, 1, '2020-06-21 06:20:50', '2020-06-24 06:20:49', NULL, NULL, '', '11999.0', 1, 0, 0, 0);
INSERT INTO `userOrder` VALUES (1255, 'f92b9f8f372e445fb6564cdd57aa3c3e', '1592720594896100006', 2, 1, '2020-06-21 06:23:15', '2020-06-24 06:23:14', NULL, NULL, '', '11999.0', 1, 0, 0, 0);
INSERT INTO `userOrder` VALUES (1256, 'f92b9f8f372e445fb6564cdd57aa3c3e', '1592730170372100007', 2, 1, '2020-06-21 09:02:50', '2020-06-24 09:02:49', NULL, NULL, '', '47699.0', 1, 0, 0, 0);
INSERT INTO `userOrder` VALUES (1257, 'f92b9f8f372e445fb6564cdd57aa3c3e', '1592730540160100008', 2, 1, '2020-06-21 09:09:00', '2020-06-24 09:08:59', NULL, NULL, '', '11999.0', 1, 0, 0, 0);
INSERT INTO `userOrder` VALUES (1258, 'f92b9f8f372e445fb6564cdd57aa3c3e', '1592730653251100009', 2, 1, '2020-06-21 09:10:53', '2020-06-24 09:11:13', NULL, NULL, '', '7890.0', 1, 0, 0, 0);
INSERT INTO `userOrder` VALUES (1259, 'f92b9f8f372e445fb6564cdd57aa3c3e', '1592732849879100010', 2, 1, '2020-06-21 09:47:30', '2020-06-24 09:47:29', NULL, NULL, '', '11999.0', 1, 0, 0, 0);
INSERT INTO `userOrder` VALUES (1260, 'f92b9f8f372e445fb6564cdd57aa3c3e', '1592733331815100011', 1, 1, '2020-06-21 09:55:32', '2020-06-24 09:55:30', '2020-06-21 09:56:06', NULL, '', '7490.0', 2, 0, 0, 0);
INSERT INTO `userOrder` VALUES (1261, 'f92b9f8f372e445fb6564cdd57aa3c3e', '1592733438424100012', 2, 1, '2020-06-21 09:57:18', '2020-06-24 09:57:17', NULL, NULL, '', '5399.0', 1, 0, 0, 0);
INSERT INTO `userOrder` VALUES (1262, 'f92b9f8f372e445fb6564cdd57aa3c3e', '1592789666162100001', 2, 1, '2020-06-22 09:34:26', '2020-06-25 09:34:26', NULL, NULL, '', '9999.0', 1, 0, 0, 0);
INSERT INTO `userOrder` VALUES (1263, 'f92b9f8f372e445fb6564cdd57aa3c3e', '1592789907532100002', 2, 1, '2020-06-22 09:38:28', '2020-06-25 09:38:28', NULL, NULL, '', '7890.0', 1, 0, 0, 0);
INSERT INTO `userOrder` VALUES (1264, 'f92b9f8f372e445fb6564cdd57aa3c3e', '1592790083822100003', 2, 1, '2020-06-22 09:41:24', '2020-06-25 09:41:24', '2020-06-22 09:42:06', NULL, '', '3496.0', 2, 0, 0, 0);
INSERT INTO `userOrder` VALUES (1265, 'f92b9f8f372e445fb6564cdd57aa3c3e', '1592790154608100004', 2, 1, '2020-06-22 01:42:34', '2020-06-25 01:42:32', '2020-06-22 01:43:18', NULL, '', '47699.0', 2, 0, 0, 0);
INSERT INTO `userOrder` VALUES (1266, 'f92b9f8f372e445fb6564cdd57aa3c3e', '1592790303315100004', 2, 1, '2020-06-22 01:45:03', '2020-06-25 01:45:01', '2020-06-22 01:45:50', NULL, '', '1499.0', 2, 0, 0, 0);
INSERT INTO `userOrder` VALUES (1267, 'f92b9f8f372e445fb6564cdd57aa3c3e', '1592790449779100004', 2, 1, '2020-06-22 09:47:30', '2020-06-25 09:47:30', '2020-06-22 09:47:58', NULL, '', '1499.0', 2, 0, 0, 0);
INSERT INTO `userOrder` VALUES (1268, 'f92b9f8f372e445fb6564cdd57aa3c3e', '1592790788151100005', 2, 1, '2020-06-22 09:53:08', '2020-06-25 09:53:08', '2020-06-22 09:53:36', NULL, '', '11999.0', 3, 0, 0, 0);
INSERT INTO `userOrder` VALUES (1269, 'f92b9f8f372e445fb6564cdd57aa3c3e', '1592791713279100006', 2, 1, '2020-06-22 02:08:33', '2020-06-25 02:08:31', '2020-06-22 02:09:10', NULL, '', '1499.0', 2, 0, 0, 0);
INSERT INTO `userOrder` VALUES (1270, 'f92b9f8f372e445fb6564cdd57aa3c3e', '1592795816465100006', 1, 1, '2020-06-22 03:16:56', '2020-06-25 03:16:54', '2020-06-22 03:17:15', NULL, '', '7890.0', 2, 0, 0, 0);
INSERT INTO `userOrder` VALUES (1271, 'f92b9f8f372e445fb6564cdd57aa3c3e', '1592821932895100006', 2, 1, '2020-06-22 10:32:13', '2020-06-25 10:32:10', NULL, NULL, '', '2920.01', 1, 0, 0, 0);
INSERT INTO `userOrder` VALUES (1272, 'f92b9f8f372e445fb6564cdd57aa3c3e', '1592822082163100007', 2, 1, '2020-06-22 10:34:42', '2020-06-25 10:34:40', '2020-06-22 10:35:08', NULL, '', '1499.0', 2, 0, 0, 0);
INSERT INTO `userOrder` VALUES (1273, 'fd2d5eb2dd124f23802f163cd3998741', '1592822092266100008', NULL, NULL, '2020-06-22 10:34:52', NULL, NULL, NULL, NULL, '1499.0', 1, 0, 0, 0);
INSERT INTO `userOrder` VALUES (1274, 'f92b9f8f372e445fb6564cdd57aa3c3e', '1592822136658100009', 1, 1, '2020-06-22 10:35:36', '2020-06-25 10:35:34', '2020-06-22 10:35:58', NULL, '', '3500.0', 2, 0, 0, 0);
INSERT INTO `userOrder` VALUES (1275, 'fd2d5eb2dd124f23802f163cd3998741', '1592822162479100010', 1, 1, '2020-06-22 10:36:02', '2020-06-25 10:36:02', '2020-06-22 10:36:26', NULL, '', '1569.0', 2, 0, 0, 0);
INSERT INTO `userOrder` VALUES (1276, 'f92b9f8f372e445fb6564cdd57aa3c3e', '1592822206628100011', 1, 1, '2020-06-22 10:36:46', '2020-06-25 10:36:44', '2020-06-22 10:37:04', NULL, '', '1499.0', 2, 0, 0, 0);
INSERT INTO `userOrder` VALUES (1277, 'fd2d5eb2dd124f23802f163cd3998741', '1592822220149100012', 1, 1, '2020-06-22 10:37:00', '2020-06-25 10:37:00', '2020-06-22 10:37:28', NULL, '', '2188.0', 2, 0, 0, 0);
INSERT INTO `userOrder` VALUES (1278, 'f92b9f8f372e445fb6564cdd57aa3c3e', '1592822337263100013', 1, 1, '2020-06-22 10:38:57', '2020-06-25 10:40:57', NULL, NULL, '', '11999.0', 2, 0, 0, 0);
INSERT INTO `userOrder` VALUES (1279, 'f92b9f8f372e445fb6564cdd57aa3c3e', '1592822486861100014', 1, 1, '2020-06-22 10:41:27', '2020-06-25 10:41:43', '2020-06-22 10:42:32', NULL, '', '799.0', 2, 0, 0, 0);
INSERT INTO `userOrder` VALUES (1280, 'f92b9f8f372e445fb6564cdd57aa3c3e', '1592830150961100015', 2, 1, '2020-06-22 12:49:11', '2020-06-25 12:49:09', '2020-06-22 12:49:51', NULL, '', '2188.0', 2, 0, 0, 0);
INSERT INTO `userOrder` VALUES (1281, 'f92b9f8f372e445fb6564cdd57aa3c3e', '1592832215019100016', NULL, NULL, '2020-06-22 13:23:35', NULL, NULL, NULL, NULL, '3500.0', 1, 0, 0, 0);
INSERT INTO `userOrder` VALUES (1282, 'f92b9f8f372e445fb6564cdd57aa3c3e', '1592868925313100017', 2, 1, '2020-06-22 23:35:25', '2020-06-25 23:35:25', '2020-06-22 23:36:20', NULL, '', '1499.0', 2, 0, 0, 0);
INSERT INTO `userOrder` VALUES (1283, 'f92b9f8f372e445fb6564cdd57aa3c3e', '1592869177091100018', 2, 1, '2020-06-22 23:39:37', '2020-06-25 23:39:37', '2020-06-22 23:40:07', NULL, '', '1289.0', 2, 0, 0, 0);

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
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of userPassword
-- ----------------------------
INSERT INTO `userPassword` VALUES (1, '7c9fdfa3177042a08766aed29e7de6cd', '++OrO3KQIS+TzybCOsQhcw==', 0, NULL);
INSERT INTO `userPassword` VALUES (3, 'f92b9f8f372e445fb6564cdd57aa3c3e', '7cwP8Rhq61a70gE+gsoW/w==', 1, '38417695494a95eeccd793abc88bce0b');
INSERT INTO `userPassword` VALUES (10, '3e7cb3ada38c49a58d57a7c3446ec932', '++OrO3KQIS+TzybCOsQhcw==', 0, NULL);
INSERT INTO `userPassword` VALUES (11, 'fd2d5eb2dd124f23802f163cd3998741', '++OrO3KQIS+TzybCOsQhcw==', 1, '9cd4b40d649517ebfadd4914bd3abdf9');
INSERT INTO `userPassword` VALUES (12, 'bab534a3fb2e42afb704894fc556c11d', '++OrO3KQIS+TzybCOsQhcw==', 0, NULL);

-- ----------------------------
-- Function structure for GET_CHILD_NODE
-- ----------------------------
DROP FUNCTION IF EXISTS `GET_CHILD_NODE`;
delimiter ;;
CREATE FUNCTION `GET_CHILD_NODE`(rootId varchar(100))
 RETURNS varchar(2000) CHARSET utf8
BEGIN   
DECLARE str varchar(2000);  
DECLARE cid varchar(100);   
SET str = '$';   
SET cid = rootId;   
WHILE cid is not null DO   
    SET str = concat(str, ',', cid);   
    SELECT group_concat(descendant_id) INTO cid FROM management_role_relationship where FIND_IN_SET(father_id, cid);   
END WHILE;   
RETURN str;   
END
;;
delimiter ;

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
