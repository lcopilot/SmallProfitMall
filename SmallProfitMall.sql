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

 Date: 02/03/2020 17:41:38
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for Product
-- ----------------------------
DROP TABLE IF EXISTS `Product`;
CREATE TABLE `Product`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` varchar(80) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `popularName` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `popularIntroduce` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `popularPrice` double(10, 2) NULL DEFAULT NULL,
  `popularInventory` int(11) NULL DEFAULT NULL,
  `salesVolume` int(11) NULL DEFAULT NULL,
  `integral` int(11) NULL DEFAULT NULL,
  `evaluateAmount` int(11) NULL DEFAULT NULL,
  `collect` varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `shoppingTrolley` varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `discountPrice` double(10, 2) NULL DEFAULT NULL,
  `productPicture` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `popularProducts` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ProductLowPrice
-- ----------------------------
DROP TABLE IF EXISTS `ProductLowPrice`;
CREATE TABLE `ProductLowPrice`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ProductImage` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ProductSite` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `Price` decimal(10, 2) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 21 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ProductLowPrice
-- ----------------------------
INSERT INTO `ProductLowPrice` VALUES (1, 'http://img.fhxasdsada.xyz/lowprice1.jpg', '/', 68.00);
INSERT INTO `ProductLowPrice` VALUES (2, 'http://img.fhxasdsada.xyz/lowprice10.jpg', '/', 36.00);
INSERT INTO `ProductLowPrice` VALUES (3, 'http://img.fhxasdsada.xyz/lowprice11.jpg', '/', 26.00);
INSERT INTO `ProductLowPrice` VALUES (4, 'http://img.fhxasdsada.xyz/lowprice12.jpg', '/', 366.00);
INSERT INTO `ProductLowPrice` VALUES (5, 'http://img.fhxasdsada.xyz/lowprice8.jpg', '/1', 99.00);
INSERT INTO `ProductLowPrice` VALUES (6, 'http://img.fhxasdsada.xyz/lowprice14.jpg', '/', 46.00);
INSERT INTO `ProductLowPrice` VALUES (7, 'http://img.fhxasdsada.xyz/lowprice15.jpg', '/', 163.00);
INSERT INTO `ProductLowPrice` VALUES (8, 'http://img.fhxasdsada.xyz/lowprice16.jpg', '/', 99.00);
INSERT INTO `ProductLowPrice` VALUES (9, 'http://img.fhxasdsada.xyz/lowprice17.jpg', '/', 46.00);
INSERT INTO `ProductLowPrice` VALUES (10, 'http://img.fhxasdsada.xyz/lowprice18.jpg', '/', 86.00);
INSERT INTO `ProductLowPrice` VALUES (11, 'http://img.fhxasdsada.xyz/lowprice19.jpg', '/', 98.00);
INSERT INTO `ProductLowPrice` VALUES (12, 'http://img.fhxasdsada.xyz/lowprice2.jpg', '/', 365.00);
INSERT INTO `ProductLowPrice` VALUES (13, 'http://img.fhxasdsada.xyz/lowprice20.jpg', '/', 298.00);
INSERT INTO `ProductLowPrice` VALUES (14, 'http://img.fhxasdsada.xyz/lowprice3.jpg', '/', 9.90);
INSERT INTO `ProductLowPrice` VALUES (15, 'http://img.fhxasdsada.xyz/lowprice4.jpg', '/', 9.90);
INSERT INTO `ProductLowPrice` VALUES (16, 'http://img.fhxasdsada.xyz/lowprice5.jpg', '/', 66.00);
INSERT INTO `ProductLowPrice` VALUES (17, 'http://img.fhxasdsada.xyz/lowprice6.jpg', '/', 86.00);
INSERT INTO `ProductLowPrice` VALUES (18, 'http://img.fhxasdsada.xyz/lowprice7.jpg', '/', 99.00);
INSERT INTO `ProductLowPrice` VALUES (19, 'http://img.fhxasdsada.xyz/lowprice8.jpg', '/', NULL);
INSERT INTO `ProductLowPrice` VALUES (20, 'http://img.fhxasdsada.xyz/lowprice9.jpg', '/', NULL);

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
  `id` int(11) NOT NULL,
  `BuyingPrice` double(10, 0) NULL DEFAULT NULL,
  `seckillPrice` double(10, 0) NULL DEFAULT NULL,
  `productName` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `productPicture` varchar(80) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `productSite` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `productIntroduce` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `time` datetime(0) NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of Seckill
-- ----------------------------
INSERT INTO `Seckill` VALUES (1, 99, 39, 'HP/惠普G200黑色CF/LOL/守望先锋专业电竞游戏鼠标大尺寸厚重款|', '\r\nhttp://img.fhxasdsada.xyz/O1CN010orf751iMmrqdaUmf_%21%210-item_pic.jpg', '/', NULL, '2020-03-02 16:00:00');
INSERT INTO `Seckill` VALUES (2, 288, 128, '大嘴猴女鞋2020新款春季高帮鞋女韩版嘻哈女鞋子潮帆布鞋女经典款', '\r\nhttp://img.fhxasdsada.xyz/O1CN014zxHqf2G3jKmoBchY_%21%210-item_pic.jpg', '/', NULL, '2020-03-02 16:00:00');
INSERT INTO `Seckill` VALUES (3, 188, 99, 'Deborah金管口红女学生黄皮肤番茄色豆沙梅子色滋润保湿显白平价', '\r\nhttp://img.fhxasdsada.xyz/O1CN0150IkHO1KMHf8cFgm1_%21%210-item_pic.jpg', '/', NULL, '2020-02-02 16:00:00');
INSERT INTO `Seckill` VALUES (4, 566, 399, '[嘭弹小白瓶] Swisse斯维诗水润光感胶原蛋白饮延缓衰老50ml*10', '\r\nhttp://img.fhxasdsada.xyz/O1CN019tXeRZ1O57EvvXE0z_%21%212-item_pic.png', '/', NULL, '2020-03-02 16:00:00');
INSERT INTO `Seckill` VALUES (5, 358, 128, 'Eucerin优色林润唇膏4.8g保湿抗干燥深层修护3支装', '\r\nhttp://img.fhxasdsada.xyz/O1CN01A4XXxW1e5bXKFqkIa_%21%212206496073820.jpg', '/', NULL, NULL);
INSERT INTO `Seckill` VALUES (6, 199, 76, 'vga转hami线转换器VGA公转HDMI公电脑连接电视高清头1.5米3米5米 ', '\r\nhttp://img.fhxasdsada.xyz/O1CN01BnHEDF1j2StiaI4yn_%21%210-item_pic.jpg', '/', NULL, NULL);
INSERT INTO `Seckill` VALUES (7, 8644, 6544, '蜜茶手机苹果xs iphone xs Apple/苹果 iphonexs 苹果手机xs 苹果xs手机 国行正品全网通苹果手机', '\r\nhttp://img.fhxasdsada.xyz/O1CN01QsqIKS1vDFbpMdXAm_%21%210-item_pic.jpg', '/', NULL, NULL);
INSERT INTO `Seckill` VALUES (8, 299, 179, '瑞戈瑞士军刀男士胸包户外休闲瑞士单肩包斜挎包男包胸前包韩版潮 ', '\r\nhttp://img.fhxasdsada.xyz/O1CN01SSoIRx1EXNZ7qGeE8_%21%210-item_pic.jpg', '/', NULL, NULL);
INSERT INTO `Seckill` VALUES (9, 149, 116, 'Edifier/漫步者 H293P Plus 手机耳机通用带麦有线入耳式运动音乐 ', '\r\nhttp://img.fhxasdsada.xyz/O1CN01VrK33a2Gahq5o3aYs_%21%210-item_pic.jpg', '/', NULL, NULL);
INSERT INTO `Seckill` VALUES (10, 399, 199, '七匹狼男士长袖T恤青年卫衣男秋冬款宽松休闲男装圆领秋装打底衫 ', '\r\nhttp://img.fhxasdsada.xyz/O1CN01aGUysb1EGtHkbSGxZ_%21%212214950325.jpg', '/', NULL, NULL);
INSERT INTO `Seckill` VALUES (11, 1890, 1429, 'HiVi/惠威M-50WMKIII蓝牙数字有源2.1音箱客厅电视手机音响 ', '\r\nhttp://img.fhxasdsada.xyz/O1CN01fY3F1O1xy5N2RspYl_%21%210-item_pic.jpg', '/', NULL, NULL);
INSERT INTO `Seckill` VALUES (12, 118, 70, '赫恩男士面膜去黑头淡化痘印送美白补水保湿控油祛痘收缩毛孔专用', '\r\nhttp://img.fhxasdsada.xyz/O1CN01meyDHq1Xzkjx77KyS_%21%210-item_pic.gif.jpg', '/', NULL, NULL);
INSERT INTO `Seckill` VALUES (13, 499, 144, '大嘴猴女鞋2020新款春季高帮鞋女韩版嘻哈女鞋子潮帆布鞋女经典款', '\r\nhttp://img.fhxasdsada.xyz/O1CN01nLuWva1hKD27hVdQ8_%21%210-item_pic.jpg', '/', NULL, NULL);
INSERT INTO `Seckill` VALUES (14, 279, 179, '乔丹男鞋纯黑色山地跑步鞋春季款网眼面透气运动鞋越野跑鞋旅游鞋 ', '\r\nhttp://img.fhxasdsada.xyz/O1CN01vNxfq01fwYt731YeL_%21%210-item_pic.jpg', '/', NULL, NULL);
INSERT INTO `Seckill` VALUES (15, 120, 98, 'PC Steam 文明5 美丽的新世界 Civilization5 Brave New World', '\r\nhttp://img.fhxasdsada.xyz/TB1IMv7eL5TBuNjSspmXXaDRVXa_%21%210-item_pic.jpg', '/', NULL, NULL);
INSERT INTO `Seckill` VALUES (16, 788, 580, 'Maeil每日名作奶粉3段 800g*3罐装宝宝奶粉原装进口 ', '\r\nhttp://img.fhxasdsada.xyz/TB1e.JxgpT7gK0jSZFpXXaTkpXa-400-400.jpg', '/', NULL, NULL);

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
INSERT INTO `homepageIcon` VALUES (2, 'http://img.fhxasdsada.xyz/d.png', '/', '我的');
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
-- Table structure for navigation_2
-- ----------------------------
DROP TABLE IF EXISTS `navigation_2`;
CREATE TABLE `navigation_2`  (
  `cid` int(5) NULL DEFAULT NULL,
  `goodsName_1_c` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `goodsId_1_c` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of navigation_2
-- ----------------------------
INSERT INTO `navigation_2` VALUES (1, '秒杀', '/');
INSERT INTO `navigation_2` VALUES (2, '优惠券', '/');
INSERT INTO `navigation_2` VALUES (3, '微利会员', '/');
INSERT INTO `navigation_2` VALUES (4, '品牌闪购', '/');
INSERT INTO `navigation_2` VALUES (5, '拍卖', '/');
INSERT INTO `navigation_2` VALUES (6, '微利家电', '/');
INSERT INTO `navigation_2` VALUES (7, '微利超市', '/');
INSERT INTO `navigation_2` VALUES (8, '品牌馆', '/');
INSERT INTO `navigation_2` VALUES (9, '网红必备', '/');

-- ----------------------------
-- Table structure for recommend
-- ----------------------------
DROP TABLE IF EXISTS `recommend`;
CREATE TABLE `recommend`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rid` varchar(80) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ProductPicture` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ProductName` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ProductPrice` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `Favorite` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `shoppingTrolley` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `hot` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 30 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of recommend
-- ----------------------------
INSERT INTO `recommend` VALUES (5, NULL, 'http://hotproducts.fhxasdsada.xyz/64e480521b15b599.jpg', 'TCL 65V6 65英寸液晶电视机 4k超高清 超薄 全面屏 人工智能 智慧屏 家居互联 玩转语音操控 教育电视', '3099', '1', '1', '1');
INSERT INTO `recommend` VALUES (6, NULL, 'http://hotproducts.fhxasdsada.xyz/00055b92d669b40c.jpg', '海信（Hisense）HZ65E5D 65英寸4K超高清 超薄全面屏 AI声控智慧屏家电 网络WiFi液晶平板智能教育电视机', '4169', '1', '1', '1');
INSERT INTO `recommend` VALUES (7, NULL, 'http://hotproducts.fhxasdsada.xyz/55d7ddf23a788a6e.jpg', '海信（Hisense）HZ55E60D 55英寸 AI声控 3+32GB MEMC 超薄全面屏 京品家电 智慧屏 教育电视 京鱼座智能产品', '3499', '1', '1', '1');
INSERT INTO `recommend` VALUES (8, NULL, 'http://hotproducts.fhxasdsada.xyz/99010a38549a00da.jpg', 'TCL 65Q9 65英寸液晶电视机 4k超高清 6.9mm超薄全面屏 人工智能 智慧屏 哈曼音响 3+32GB大内存 教育电视', '6199', '1', '1', '2');
INSERT INTO `recommend` VALUES (9, NULL, 'http://hotproducts.fhxasdsada.xyz/ad8ca60793aa2c54.jpg', '海信（Hisense）HZ65E7D 65英寸 超高色域 3GB+32GB 超音画 AI声控 杜比全景声 超薄全面屏 教育电视', '5699', '1', '1', '2');
INSERT INTO `recommend` VALUES (10, NULL, 'http://hotproducts.fhxasdsada.xyz/tuhaokuai_1583128904.jpg', '创维（SKYWORTH）40X6 40英寸10核窄边高清 人工智能 网络WiFi 教育资源 家用卧室液晶平板电视机', '1088', '1', '1', '1');
INSERT INTO `recommend` VALUES (11, NULL, 'http://hotproducts.fhxasdsada.xyz/tuhaokuai_1583129054.jpg', '海信（Hisense）HZ40E35D 40英寸 海量内容 纤薄机身 家庭 教育 VIDAA AI 智能操控 智能电视机', '1088', '1', '1', '1');
INSERT INTO `recommend` VALUES (12, NULL, 'http://hotproducts.fhxasdsada.xyz/tuhaokuai_1583129224.jpg', '联想小新潮7000 15.6英寸全高清独显窄边框超轻薄便携家用商务学生办公游戏笔记本电脑手提 升级:9系CPU丨4G内存 256G固态 独显', '3299', '1', '1', '1');
INSERT INTO `recommend` VALUES (13, NULL, 'http://hotproducts.fhxasdsada.xyz/tuhaokuai_1583129394.jpg', '小米全面屏电视E65A 65英寸 4K超高清 内置小爱 2GB+8GB 教育电视 AI人工智能网络液晶平板电视L65M5-EA', '2699', '1', '1', '1');
INSERT INTO `recommend` VALUES (14, NULL, 'http://hotproducts.fhxasdsada.xyz/tuhaokuai_1583129635.jpg', '创维 酷开(coocaa) 43K5D 43英寸全高清 智能WiFi 教育电视 腾讯影视 人工智能液晶网络电视机', '999', '1', '1', '1');
INSERT INTO `recommend` VALUES (15, NULL, 'http://hotproducts.fhxasdsada.xyz/tuhaokuai_1583129766.jpg', '索尼（SONY）KD-55X9500G 55英寸 4K超高清 HDR 智能网络 液晶平板电视 人工智能语音 安卓8.0 蓝牙/WiFi', '6199', '1', '1', '1');
INSERT INTO `recommend` VALUES (16, NULL, 'http://hotproducts.fhxasdsada.xyz/tuhaokuai_1583129971.jpg', '海信（Hisense）65英寸E3D京享版 65E3D-J 无边全面屏 AI语音 超高清4K HDR 教育电视 人工智能电视机', '2799', '1', '1', '1');
INSERT INTO `recommend` VALUES (17, NULL, 'http://hotproducts.fhxasdsada.xyz/tuhaokuai_1583130086.jpg', '飞利浦（PHILIPS）70PUF7295/T3 70英寸全面屏 16G 杜比全景声 4K运动防抖HDR 人工智能语音 网络液晶电视机', '3999', '1', '1', '1');
INSERT INTO `recommend` VALUES (18, NULL, 'http://hotproducts.fhxasdsada.xyz/tuhaokuai_1583130234.jpg', '创维（SKYWORTH）32X3 32英寸窄边蓝光高清节能 家用液晶平板电视机', '699', '1', '1', '1');
INSERT INTO `recommend` VALUES (19, NULL, 'http://hotproducts.fhxasdsada.xyz/tuhaokuai_1583130353.jpg', '乐视（Letv）超级电视 X40C 40英寸 1GB+8GB大存储 全高清人工智能超薄网络液晶平板电视机（标配底座）', '949', '1', '1', '1');
INSERT INTO `recommend` VALUES (20, NULL, 'http://hotproducts.fhxasdsada.xyz/tuhaokuai_1583130472.jpg', '飞利浦（PHILIPS）65PUF6192/T3 65英寸 人工智能 4K超高清 HDR网络智能液晶电视机', '2699', '1', '1', '1');
INSERT INTO `recommend` VALUES (21, NULL, 'http://hotproducts.fhxasdsada.xyz/tuhaokuai_1583130577.jpg', '创维（SKYWORTH）65A8 65英寸4K超高清超薄全面屏 2+64G 声控智慧屏 教育 京鱼座智能生态平板电视 京品家电', '4899', '1', '1', '1');
INSERT INTO `recommend` VALUES (22, NULL, 'http://hotproducts.fhxasdsada.xyz/tuhaokuai_1583130703.jpg', '飞利浦（PHILIPS）55PUF6023/T3 55英寸 人工智能 4K超高清HDR 二级能效 网络智能液晶电视机', '1899', '1', '1', '1');
INSERT INTO `recommend` VALUES (23, NULL, 'http://hotproducts.fhxasdsada.xyz/tuhaokuai_1583130796.jpg', '海信（Hisense）HZ65E3D-PRO 65英寸 AI声控 MEMC防抖 16GB大存储 无边全面屏 智慧屏 教育电视', '3599', '1', '1', '1');
INSERT INTO `recommend` VALUES (24, NULL, '\r\nhttp://hotproducts.fhxasdsada.xyz/tuhaokuai_1583130950.jpg', '飞利浦（PHILIPS）70PUF6894/T3 70英寸 人工智能超大屏幕金属边框 16G大内存4K超高清HDR网络智能液晶电视机', '3599', '1', '1', '1');
INSERT INTO `recommend` VALUES (25, NULL, 'http://hotproducts.fhxasdsada.xyz/tuhaokuai_1583131061.jpg', '创维 酷开(coocaa) 32K5C 32英寸 高清 智能WiFi 15核 教育电视 丰富影视 人工智能液晶网络电视机', '699', '1', '1', '1');
INSERT INTO `recommend` VALUES (26, NULL, 'http://hotproducts.fhxasdsada.xyz/tuhaokuai_1583134314.jpg', '飞利浦（PHILIPS）39PHF5292/T3 39英寸 人工智能 海量应用 网络智能高清LED液晶电视机', '999', '1', '1', '1');
INSERT INTO `recommend` VALUES (27, NULL, 'http://hotproducts.fhxasdsada.xyz/tuhaokuai_1583134504.jpg', '小米全面屏电视E40A 40英寸 全高清HDR 内置小爱 1GB+8GB 教育电视 AI 人工智能网络液晶平板电视 L40M5-FA', '1199', '1', '1', '1');
INSERT INTO `recommend` VALUES (28, NULL, 'http://hotproducts.fhxasdsada.xyz/tuhaokuai_1583134629.jpg', '康佳（KONKA） LED32E330C 32英寸 高清窄边LED液晶电视机', '688', '1', '1', '1');
INSERT INTO `recommend` VALUES (29, NULL, 'http://hotproducts.fhxasdsada.xyz/tuhaokuai_1583134740.jpg', '飞利浦（PHILIPS）43PFF5292/T3 43英寸 人工智能 全高清 二级省电能效 网络智能液晶电视机', '1299', '1', '1', '1');

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
  `mail` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `Image` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `token` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 21 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (18, 'c69bf9c84f4542418e56f7f8adb3663b', '小白', '123456', '男', '15367885410', NULL, 'http://img.fhxasdsada.xyz//000000001312c10c0000000002255f0a?t=1578145613938', 'DM');
INSERT INTO `user` VALUES (19, '0cfd86808ed3444598a9267d5241d868', '黎明', '123456', '男', '18598814121', NULL, 'http://img.fhxasdsada.xyz//000000001312c10c0000000002255f0a?t=1578145613938', 'DM');
INSERT INTO `user` VALUES (20, '4f69423c02324aa49d659e2d77d46bc1', '小白', '123456', '男', '15074163638', NULL, 'http://img.fhxasdsada.xyz//000000001312c10c0000000002255f0a?t=1578145613938', 'DM');

SET FOREIGN_KEY_CHECKS = 1;
