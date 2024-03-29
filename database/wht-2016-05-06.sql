/*
Navicat MySQL Data Transfer

Source Server         : weihuotong
Source Server Version : 50171
Source Host           : 211.149.241.17:3306
Source Database       : weihuotong123

Target Server Type    : MYSQL
Target Server Version : 50171
File Encoding         : 65001

Date: 2016-05-06 18:12:47
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for t_account
-- ----------------------------
DROP TABLE IF EXISTS `t_account`;
CREATE TABLE `t_account` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `usableAmount` decimal(10,0) NOT NULL,
  `freezeAmount` decimal(10,0) NOT NULL,
  `proxyIncome` decimal(10,0) NOT NULL,
  `saleIncome` decimal(10,0) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_account
-- ----------------------------
INSERT INTO `t_account` VALUES ('1', '1000', '100', '50', '50', '1');

-- ----------------------------
-- Table structure for t_accountflow
-- ----------------------------
DROP TABLE IF EXISTS `t_accountflow`;
CREATE TABLE `t_accountflow` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `accountActionType` int(11) NOT NULL,
  `usableAmount` decimal(10,0) NOT NULL,
  `freezeAmount` decimal(10,0) NOT NULL,
  `amount` decimal(10,0) NOT NULL,
  `note` varchar(255) DEFAULT NULL,
  `operateTime` datetime NOT NULL,
  `account_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_accountflow
-- ----------------------------
INSERT INTO `t_accountflow` VALUES ('1', '1', '1000', '100', '10', '测试', '2016-04-29 16:12:02', '1');

-- ----------------------------
-- Table structure for t_address
-- ----------------------------
DROP TABLE IF EXISTS `t_address`;
CREATE TABLE `t_address` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `defaultAddress` int(11) NOT NULL,
  `city_id` bigint(20) NOT NULL,
  `customer_id` bigint(20) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKD8948F5751726E53` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of t_address
-- ----------------------------
INSERT INTO `t_address` VALUES ('1', '老王', '110', '锦阳商厦', '1', '248', null, '1');

-- ----------------------------
-- Table structure for t_adpositionid
-- ----------------------------
DROP TABLE IF EXISTS `t_adpositionid`;
CREATE TABLE `t_adpositionid` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `type` int(11) NOT NULL,
  `goodsType_id` bigint(20) DEFAULT NULL,
  `dayPrice` decimal(10,0) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_adpositionid
-- ----------------------------
INSERT INTO `t_adpositionid` VALUES ('1', '1', '0', '11');
INSERT INTO `t_adpositionid` VALUES ('2', '1', '0', '22');
INSERT INTO `t_adpositionid` VALUES ('3', '1', '0', '33');
INSERT INTO `t_adpositionid` VALUES ('4', '2', '1', '44');
INSERT INTO `t_adpositionid` VALUES ('5', '3', '1', '44');
INSERT INTO `t_adpositionid` VALUES ('6', '3', '1', '44');
INSERT INTO `t_adpositionid` VALUES ('7', '2', '2', '55');
INSERT INTO `t_adpositionid` VALUES ('8', '3', '2', '55');
INSERT INTO `t_adpositionid` VALUES ('9', '3', '2', '55');
INSERT INTO `t_adpositionid` VALUES ('10', '2', '3', '66');
INSERT INTO `t_adpositionid` VALUES ('11', '3', '3', '66');
INSERT INTO `t_adpositionid` VALUES ('12', '3', '3', '66');
INSERT INTO `t_adpositionid` VALUES ('13', '1', '1', '77');
INSERT INTO `t_adpositionid` VALUES ('14', '1', '1', '88');
INSERT INTO `t_adpositionid` VALUES ('15', '1', '2', '99');
INSERT INTO `t_adpositionid` VALUES ('16', '1', '2', '110');
INSERT INTO `t_adpositionid` VALUES ('17', '1', '3', '120');
INSERT INTO `t_adpositionid` VALUES ('18', '1', '3', '130');

-- ----------------------------
-- Table structure for t_bannerimage
-- ----------------------------
DROP TABLE IF EXISTS `t_bannerimage`;
CREATE TABLE `t_bannerimage` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `src` varchar(100) NOT NULL,
  `sort` int(11) DEFAULT NULL,
  `goods_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_bannerimage
-- ----------------------------
INSERT INTO `t_bannerimage` VALUES ('1', '/images/bannerImage/20160413-175740.jpg', null, '1');
INSERT INTO `t_bannerimage` VALUES ('2', '/images/bannerImage/20160413-175740.jpg', null, '2');
INSERT INTO `t_bannerimage` VALUES ('3', '/images/bannerImage/20160413-175740.jpg', null, '3');
INSERT INTO `t_bannerimage` VALUES ('4', '/images/bannerImage/20160413-175740.jpg', null, '4');
INSERT INTO `t_bannerimage` VALUES ('5', '/images/bannerImage/20160413-175740.jpg', null, '5');
INSERT INTO `t_bannerimage` VALUES ('6', '/images/bannerImage/20160413-175740.jpg', null, '6');
INSERT INTO `t_bannerimage` VALUES ('7', '/images/bannerImage/20160413-175740.jpg', null, '7');
INSERT INTO `t_bannerimage` VALUES ('8', '/images/bannerImage/20160413-175740.jpg', null, '8');

-- ----------------------------
-- Table structure for t_brand
-- ----------------------------
DROP TABLE IF EXISTS `t_brand`;
CREATE TABLE `t_brand` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `pinYin` varchar(10) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_brand
-- ----------------------------
INSERT INTO `t_brand` VALUES ('1', '韩都衣舍', 'H', '/images/brandImage/20160413-180657.jpg');
INSERT INTO `t_brand` VALUES ('2', '优衣库', 'Y', '/images/brandImage/20160413-175740.jpg');

-- ----------------------------
-- Table structure for t_city
-- ----------------------------
DROP TABLE IF EXISTS `t_city`;
CREATE TABLE `t_city` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `province_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK2E996BE813D513` (`province_id`)
) ENGINE=MyISAM AUTO_INCREMENT=392 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of t_city
-- ----------------------------
INSERT INTO `t_city` VALUES ('1', '北京市', '1');
INSERT INTO `t_city` VALUES ('2', '天津市', '2');
INSERT INTO `t_city` VALUES ('3', '上海市', '3');
INSERT INTO `t_city` VALUES ('4', '重庆市', '4');
INSERT INTO `t_city` VALUES ('5', '石家庄市', '5');
INSERT INTO `t_city` VALUES ('6', '唐山市', '5');
INSERT INTO `t_city` VALUES ('7', '秦皇岛市', '5');
INSERT INTO `t_city` VALUES ('8', '邯郸市', '5');
INSERT INTO `t_city` VALUES ('9', '邢台市', '5');
INSERT INTO `t_city` VALUES ('10', '保定市', '5');
INSERT INTO `t_city` VALUES ('11', '张家口市', '5');
INSERT INTO `t_city` VALUES ('12', '承德市', '5');
INSERT INTO `t_city` VALUES ('13', '沧州市', '5');
INSERT INTO `t_city` VALUES ('14', '廊坊市', '5');
INSERT INTO `t_city` VALUES ('15', '衡水市', '5');
INSERT INTO `t_city` VALUES ('16', '太原市', '6');
INSERT INTO `t_city` VALUES ('17', '大同市', '6');
INSERT INTO `t_city` VALUES ('18', '阳泉市', '6');
INSERT INTO `t_city` VALUES ('19', '长治市', '6');
INSERT INTO `t_city` VALUES ('20', '晋城市', '6');
INSERT INTO `t_city` VALUES ('21', '朔州市', '6');
INSERT INTO `t_city` VALUES ('22', '晋中市', '6');
INSERT INTO `t_city` VALUES ('23', '运城市', '6');
INSERT INTO `t_city` VALUES ('24', '忻州市', '6');
INSERT INTO `t_city` VALUES ('25', '临汾市', '6');
INSERT INTO `t_city` VALUES ('26', '吕梁市', '6');
INSERT INTO `t_city` VALUES ('27', '台北市', '7');
INSERT INTO `t_city` VALUES ('28', '高雄市', '7');
INSERT INTO `t_city` VALUES ('29', '基隆市', '7');
INSERT INTO `t_city` VALUES ('30', '台中市', '7');
INSERT INTO `t_city` VALUES ('31', '台南市', '7');
INSERT INTO `t_city` VALUES ('32', '新竹市', '7');
INSERT INTO `t_city` VALUES ('33', '嘉义市', '7');
INSERT INTO `t_city` VALUES ('34', '台北县', '7');
INSERT INTO `t_city` VALUES ('35', '宜兰县', '7');
INSERT INTO `t_city` VALUES ('36', '桃园县', '7');
INSERT INTO `t_city` VALUES ('37', '新竹县', '7');
INSERT INTO `t_city` VALUES ('38', '苗栗县', '7');
INSERT INTO `t_city` VALUES ('39', '台中县', '7');
INSERT INTO `t_city` VALUES ('40', '彰化县', '7');
INSERT INTO `t_city` VALUES ('41', '南投县', '7');
INSERT INTO `t_city` VALUES ('42', '云林县', '7');
INSERT INTO `t_city` VALUES ('43', '嘉义县', '7');
INSERT INTO `t_city` VALUES ('44', '台南县', '7');
INSERT INTO `t_city` VALUES ('45', '高雄县', '7');
INSERT INTO `t_city` VALUES ('46', '屏东县', '7');
INSERT INTO `t_city` VALUES ('47', '澎湖县', '7');
INSERT INTO `t_city` VALUES ('48', '台东县', '7');
INSERT INTO `t_city` VALUES ('49', '花莲县', '7');
INSERT INTO `t_city` VALUES ('50', '沈阳市', '8');
INSERT INTO `t_city` VALUES ('51', '大连市', '8');
INSERT INTO `t_city` VALUES ('52', '鞍山市', '8');
INSERT INTO `t_city` VALUES ('53', '抚顺市', '8');
INSERT INTO `t_city` VALUES ('54', '本溪市', '8');
INSERT INTO `t_city` VALUES ('55', '丹东市', '8');
INSERT INTO `t_city` VALUES ('56', '锦州市', '8');
INSERT INTO `t_city` VALUES ('57', '营口市', '8');
INSERT INTO `t_city` VALUES ('58', '阜新市', '8');
INSERT INTO `t_city` VALUES ('59', '辽阳市', '8');
INSERT INTO `t_city` VALUES ('60', '盘锦市', '8');
INSERT INTO `t_city` VALUES ('61', '铁岭市', '8');
INSERT INTO `t_city` VALUES ('62', '朝阳市', '8');
INSERT INTO `t_city` VALUES ('63', '葫芦岛市', '8');
INSERT INTO `t_city` VALUES ('64', '长春市', '9');
INSERT INTO `t_city` VALUES ('65', '吉林市', '9');
INSERT INTO `t_city` VALUES ('66', '四平市', '9');
INSERT INTO `t_city` VALUES ('67', '辽源市', '9');
INSERT INTO `t_city` VALUES ('68', '通化市', '9');
INSERT INTO `t_city` VALUES ('69', '白山市', '9');
INSERT INTO `t_city` VALUES ('70', '松原市', '9');
INSERT INTO `t_city` VALUES ('71', '白城市', '9');
INSERT INTO `t_city` VALUES ('72', '延边朝鲜族自治州', '9');
INSERT INTO `t_city` VALUES ('73', '哈尔滨市', '10');
INSERT INTO `t_city` VALUES ('74', '齐齐哈尔市', '10');
INSERT INTO `t_city` VALUES ('75', '鹤岗市', '10');
INSERT INTO `t_city` VALUES ('76', '双鸭山市', '10');
INSERT INTO `t_city` VALUES ('77', '鸡市', '10');
INSERT INTO `t_city` VALUES ('78', '大庆市', '10');
INSERT INTO `t_city` VALUES ('79', '伊春市', '10');
INSERT INTO `t_city` VALUES ('80', '牡丹江市', '10');
INSERT INTO `t_city` VALUES ('81', '佳木斯市', '10');
INSERT INTO `t_city` VALUES ('82', '七台河市', '10');
INSERT INTO `t_city` VALUES ('83', '黑河市', '10');
INSERT INTO `t_city` VALUES ('84', '绥化市', '10');
INSERT INTO `t_city` VALUES ('85', '大兴安岭地区', '10');
INSERT INTO `t_city` VALUES ('86', '南京市', '11');
INSERT INTO `t_city` VALUES ('87', '无锡市', '11');
INSERT INTO `t_city` VALUES ('88', '徐州市', '11');
INSERT INTO `t_city` VALUES ('89', '常州市', '11');
INSERT INTO `t_city` VALUES ('90', '苏州市', '11');
INSERT INTO `t_city` VALUES ('91', '南通市', '11');
INSERT INTO `t_city` VALUES ('92', '连云港市', '11');
INSERT INTO `t_city` VALUES ('93', '淮安市', '11');
INSERT INTO `t_city` VALUES ('94', '盐城市', '11');
INSERT INTO `t_city` VALUES ('95', '扬州市', '11');
INSERT INTO `t_city` VALUES ('96', '镇江市', '11');
INSERT INTO `t_city` VALUES ('97', '泰州市', '11');
INSERT INTO `t_city` VALUES ('98', '宿迁市', '11');
INSERT INTO `t_city` VALUES ('99', '杭州市', '12');
INSERT INTO `t_city` VALUES ('100', '宁波市', '12');
INSERT INTO `t_city` VALUES ('101', '温州市', '12');
INSERT INTO `t_city` VALUES ('102', '嘉兴市', '12');
INSERT INTO `t_city` VALUES ('103', '湖州市', '12');
INSERT INTO `t_city` VALUES ('104', '绍兴市', '12');
INSERT INTO `t_city` VALUES ('105', '金华市', '12');
INSERT INTO `t_city` VALUES ('106', '衢州市', '12');
INSERT INTO `t_city` VALUES ('107', '舟山市', '12');
INSERT INTO `t_city` VALUES ('108', '台州市', '12');
INSERT INTO `t_city` VALUES ('109', '丽水市', '12');
INSERT INTO `t_city` VALUES ('110', '合肥市', '13');
INSERT INTO `t_city` VALUES ('111', '芜湖市', '13');
INSERT INTO `t_city` VALUES ('112', '蚌埠市', '13');
INSERT INTO `t_city` VALUES ('113', '淮南市', '13');
INSERT INTO `t_city` VALUES ('114', '马鞍山市', '13');
INSERT INTO `t_city` VALUES ('115', '淮北市', '13');
INSERT INTO `t_city` VALUES ('116', '铜陵市', '13');
INSERT INTO `t_city` VALUES ('117', '安庆市', '13');
INSERT INTO `t_city` VALUES ('118', '黄山市', '13');
INSERT INTO `t_city` VALUES ('119', '滁州市', '13');
INSERT INTO `t_city` VALUES ('120', '阜阳市', '13');
INSERT INTO `t_city` VALUES ('121', '宿州市', '13');
INSERT INTO `t_city` VALUES ('122', '巢湖市', '13');
INSERT INTO `t_city` VALUES ('123', '六安市', '13');
INSERT INTO `t_city` VALUES ('124', '亳州市', '13');
INSERT INTO `t_city` VALUES ('125', '池州市', '13');
INSERT INTO `t_city` VALUES ('126', '宣城市', '13');
INSERT INTO `t_city` VALUES ('127', '福州市', '14');
INSERT INTO `t_city` VALUES ('128', '厦门市', '14');
INSERT INTO `t_city` VALUES ('129', '莆田市', '14');
INSERT INTO `t_city` VALUES ('130', '三明市', '14');
INSERT INTO `t_city` VALUES ('131', '泉州市', '14');
INSERT INTO `t_city` VALUES ('132', '漳州市', '14');
INSERT INTO `t_city` VALUES ('133', '南平市', '14');
INSERT INTO `t_city` VALUES ('134', '龙岩市', '14');
INSERT INTO `t_city` VALUES ('135', '宁德市', '14');
INSERT INTO `t_city` VALUES ('136', '南昌市', '15');
INSERT INTO `t_city` VALUES ('137', '景德镇市', '15');
INSERT INTO `t_city` VALUES ('138', '萍乡市', '15');
INSERT INTO `t_city` VALUES ('139', '九江市', '15');
INSERT INTO `t_city` VALUES ('140', '新余市', '15');
INSERT INTO `t_city` VALUES ('141', '鹰潭市', '15');
INSERT INTO `t_city` VALUES ('142', '赣州市', '15');
INSERT INTO `t_city` VALUES ('143', '吉安市', '15');
INSERT INTO `t_city` VALUES ('144', '宜春市', '15');
INSERT INTO `t_city` VALUES ('145', '抚州市', '15');
INSERT INTO `t_city` VALUES ('146', '上饶市', '15');
INSERT INTO `t_city` VALUES ('147', '济南市', '16');
INSERT INTO `t_city` VALUES ('148', '青岛市', '16');
INSERT INTO `t_city` VALUES ('149', '淄博市', '16');
INSERT INTO `t_city` VALUES ('150', '枣庄市', '16');
INSERT INTO `t_city` VALUES ('151', '东营市', '16');
INSERT INTO `t_city` VALUES ('152', '烟台市', '16');
INSERT INTO `t_city` VALUES ('153', '潍坊市', '16');
INSERT INTO `t_city` VALUES ('154', '济宁市', '16');
INSERT INTO `t_city` VALUES ('155', '泰安市', '16');
INSERT INTO `t_city` VALUES ('156', '威海市', '16');
INSERT INTO `t_city` VALUES ('157', '日照市', '16');
INSERT INTO `t_city` VALUES ('158', '莱芜市', '16');
INSERT INTO `t_city` VALUES ('159', '临沂市', '16');
INSERT INTO `t_city` VALUES ('160', '德州市', '16');
INSERT INTO `t_city` VALUES ('161', '聊城市', '16');
INSERT INTO `t_city` VALUES ('162', '滨州市', '16');
INSERT INTO `t_city` VALUES ('163', '菏泽市', '16');
INSERT INTO `t_city` VALUES ('164', '郑州市', '17');
INSERT INTO `t_city` VALUES ('165', '开封市', '17');
INSERT INTO `t_city` VALUES ('166', '洛阳市', '17');
INSERT INTO `t_city` VALUES ('167', '平顶山市', '17');
INSERT INTO `t_city` VALUES ('168', '安阳市', '17');
INSERT INTO `t_city` VALUES ('169', '鹤壁市', '17');
INSERT INTO `t_city` VALUES ('170', '新乡市', '17');
INSERT INTO `t_city` VALUES ('171', '焦作市', '17');
INSERT INTO `t_city` VALUES ('172', '濮阳市', '17');
INSERT INTO `t_city` VALUES ('173', '许昌市', '17');
INSERT INTO `t_city` VALUES ('174', '漯河市', '17');
INSERT INTO `t_city` VALUES ('175', '三门峡市', '17');
INSERT INTO `t_city` VALUES ('176', '南阳市', '17');
INSERT INTO `t_city` VALUES ('177', '商丘市', '17');
INSERT INTO `t_city` VALUES ('178', '信阳市', '17');
INSERT INTO `t_city` VALUES ('179', '周口市', '17');
INSERT INTO `t_city` VALUES ('180', '驻马店市', '17');
INSERT INTO `t_city` VALUES ('181', '济源市', '17');
INSERT INTO `t_city` VALUES ('182', '武汉市', '18');
INSERT INTO `t_city` VALUES ('183', '黄石市', '18');
INSERT INTO `t_city` VALUES ('184', '十堰市', '18');
INSERT INTO `t_city` VALUES ('185', '荆州市', '18');
INSERT INTO `t_city` VALUES ('186', '宜昌市', '18');
INSERT INTO `t_city` VALUES ('187', '襄樊市', '18');
INSERT INTO `t_city` VALUES ('188', '鄂州市', '18');
INSERT INTO `t_city` VALUES ('189', '荆门市', '18');
INSERT INTO `t_city` VALUES ('190', '孝感市', '18');
INSERT INTO `t_city` VALUES ('191', '黄冈市', '18');
INSERT INTO `t_city` VALUES ('192', '咸宁市', '18');
INSERT INTO `t_city` VALUES ('193', '随州市', '18');
INSERT INTO `t_city` VALUES ('194', '仙桃市', '18');
INSERT INTO `t_city` VALUES ('195', '天门市', '18');
INSERT INTO `t_city` VALUES ('196', '潜江市', '18');
INSERT INTO `t_city` VALUES ('197', '神农架林区', '18');
INSERT INTO `t_city` VALUES ('198', '恩施土家族苗族自治州', '18');
INSERT INTO `t_city` VALUES ('199', '长沙市', '19');
INSERT INTO `t_city` VALUES ('200', '株洲市', '19');
INSERT INTO `t_city` VALUES ('201', '湘潭市', '19');
INSERT INTO `t_city` VALUES ('202', '衡阳市', '19');
INSERT INTO `t_city` VALUES ('203', '邵阳市', '19');
INSERT INTO `t_city` VALUES ('204', '岳阳市', '19');
INSERT INTO `t_city` VALUES ('205', '常德市', '19');
INSERT INTO `t_city` VALUES ('206', '张家界市', '19');
INSERT INTO `t_city` VALUES ('207', '益阳市', '19');
INSERT INTO `t_city` VALUES ('208', '郴州市', '19');
INSERT INTO `t_city` VALUES ('209', '永州市', '19');
INSERT INTO `t_city` VALUES ('210', '怀化市', '19');
INSERT INTO `t_city` VALUES ('211', '娄底市', '19');
INSERT INTO `t_city` VALUES ('212', '湘西土家族苗族自治州', '19');
INSERT INTO `t_city` VALUES ('213', '广州市', '20');
INSERT INTO `t_city` VALUES ('214', '深圳市', '20');
INSERT INTO `t_city` VALUES ('215', '珠海市', '20');
INSERT INTO `t_city` VALUES ('216', '汕头市', '20');
INSERT INTO `t_city` VALUES ('217', '韶关市', '20');
INSERT INTO `t_city` VALUES ('218', '佛山市', '20');
INSERT INTO `t_city` VALUES ('219', '江门市', '20');
INSERT INTO `t_city` VALUES ('220', '湛江市', '20');
INSERT INTO `t_city` VALUES ('221', '茂名市', '20');
INSERT INTO `t_city` VALUES ('222', '肇庆市', '20');
INSERT INTO `t_city` VALUES ('223', '惠州市', '20');
INSERT INTO `t_city` VALUES ('224', '梅州市', '20');
INSERT INTO `t_city` VALUES ('225', '汕尾市', '20');
INSERT INTO `t_city` VALUES ('226', '河源市', '20');
INSERT INTO `t_city` VALUES ('227', '阳江市', '20');
INSERT INTO `t_city` VALUES ('228', '清远市', '20');
INSERT INTO `t_city` VALUES ('229', '东莞市', '20');
INSERT INTO `t_city` VALUES ('230', '中山市', '20');
INSERT INTO `t_city` VALUES ('231', '潮州市', '20');
INSERT INTO `t_city` VALUES ('232', '揭阳市', '20');
INSERT INTO `t_city` VALUES ('233', '云浮市', '20');
INSERT INTO `t_city` VALUES ('234', '兰州市', '21');
INSERT INTO `t_city` VALUES ('235', '金昌市', '21');
INSERT INTO `t_city` VALUES ('236', '白银市', '21');
INSERT INTO `t_city` VALUES ('237', '天水市', '21');
INSERT INTO `t_city` VALUES ('238', '嘉峪关市', '21');
INSERT INTO `t_city` VALUES ('239', '武威市', '21');
INSERT INTO `t_city` VALUES ('240', '张掖市', '21');
INSERT INTO `t_city` VALUES ('241', '平凉市', '21');
INSERT INTO `t_city` VALUES ('242', '酒泉市', '21');
INSERT INTO `t_city` VALUES ('243', '庆阳市', '21');
INSERT INTO `t_city` VALUES ('244', '定西市', '21');
INSERT INTO `t_city` VALUES ('245', '陇南市', '21');
INSERT INTO `t_city` VALUES ('246', '临夏回族自治州', '21');
INSERT INTO `t_city` VALUES ('247', '甘南藏族自治州', '21');
INSERT INTO `t_city` VALUES ('248', '成都市', '22');
INSERT INTO `t_city` VALUES ('249', '自贡市', '22');
INSERT INTO `t_city` VALUES ('250', '攀枝花市', '22');
INSERT INTO `t_city` VALUES ('251', '泸州市', '22');
INSERT INTO `t_city` VALUES ('252', '德阳市', '22');
INSERT INTO `t_city` VALUES ('253', '绵阳市', '22');
INSERT INTO `t_city` VALUES ('254', '广元市', '22');
INSERT INTO `t_city` VALUES ('255', '遂宁市', '22');
INSERT INTO `t_city` VALUES ('256', '内江市', '22');
INSERT INTO `t_city` VALUES ('257', '乐山市', '22');
INSERT INTO `t_city` VALUES ('258', '南充市', '22');
INSERT INTO `t_city` VALUES ('259', '眉山市', '22');
INSERT INTO `t_city` VALUES ('260', '宜宾市', '22');
INSERT INTO `t_city` VALUES ('261', '广安市', '22');
INSERT INTO `t_city` VALUES ('262', '达州市', '22');
INSERT INTO `t_city` VALUES ('263', '雅安市', '22');
INSERT INTO `t_city` VALUES ('264', '巴中市', '22');
INSERT INTO `t_city` VALUES ('265', '资阳市', '22');
INSERT INTO `t_city` VALUES ('266', '阿坝藏族羌族自治州', '22');
INSERT INTO `t_city` VALUES ('267', '甘孜藏族自治州', '22');
INSERT INTO `t_city` VALUES ('268', '凉山彝族自治州', '22');
INSERT INTO `t_city` VALUES ('269', '贵阳市', '24');
INSERT INTO `t_city` VALUES ('270', '六盘水市', '24');
INSERT INTO `t_city` VALUES ('271', '遵义市', '24');
INSERT INTO `t_city` VALUES ('272', '安顺市', '24');
INSERT INTO `t_city` VALUES ('273', '铜仁地区', '24');
INSERT INTO `t_city` VALUES ('274', '毕节地区', '24');
INSERT INTO `t_city` VALUES ('275', '黔西南布依族苗族自治州', '24');
INSERT INTO `t_city` VALUES ('276', '黔东南苗族侗族自治州', '24');
INSERT INTO `t_city` VALUES ('277', '黔南布依族苗族自治州', '24');
INSERT INTO `t_city` VALUES ('278', '海口市', '25');
INSERT INTO `t_city` VALUES ('279', '三亚市', '25');
INSERT INTO `t_city` VALUES ('280', '五指山市', '25');
INSERT INTO `t_city` VALUES ('281', '琼海市', '25');
INSERT INTO `t_city` VALUES ('282', '儋州市', '25');
INSERT INTO `t_city` VALUES ('283', '文昌市', '25');
INSERT INTO `t_city` VALUES ('284', '万宁市', '25');
INSERT INTO `t_city` VALUES ('285', '东方市', '25');
INSERT INTO `t_city` VALUES ('286', '澄迈县', '25');
INSERT INTO `t_city` VALUES ('287', '定安县', '25');
INSERT INTO `t_city` VALUES ('288', '屯昌县', '25');
INSERT INTO `t_city` VALUES ('289', '临高县', '25');
INSERT INTO `t_city` VALUES ('290', '白沙黎族自治县', '25');
INSERT INTO `t_city` VALUES ('291', '昌江黎族自治县', '25');
INSERT INTO `t_city` VALUES ('292', '乐东黎族自治县', '25');
INSERT INTO `t_city` VALUES ('293', '陵水黎族自治县', '25');
INSERT INTO `t_city` VALUES ('294', '保亭黎族苗族自治县', '25');
INSERT INTO `t_city` VALUES ('295', '琼中黎族苗族自治县', '25');
INSERT INTO `t_city` VALUES ('296', '昆明市', '26');
INSERT INTO `t_city` VALUES ('297', '曲靖市', '26');
INSERT INTO `t_city` VALUES ('298', '玉溪市', '26');
INSERT INTO `t_city` VALUES ('299', '保山市', '26');
INSERT INTO `t_city` VALUES ('300', '昭通市', '26');
INSERT INTO `t_city` VALUES ('301', '丽江市', '26');
INSERT INTO `t_city` VALUES ('302', '思茅市', '26');
INSERT INTO `t_city` VALUES ('303', '临沧市', '26');
INSERT INTO `t_city` VALUES ('304', '文山壮族苗族自治州', '26');
INSERT INTO `t_city` VALUES ('305', '红河哈尼族彝族自治州', '26');
INSERT INTO `t_city` VALUES ('306', '西双版纳傣族自治州', '26');
INSERT INTO `t_city` VALUES ('307', '楚雄彝族自治州', '26');
INSERT INTO `t_city` VALUES ('308', '大理白族自治州', '26');
INSERT INTO `t_city` VALUES ('309', '德宏傣族景颇族自治州', '26');
INSERT INTO `t_city` VALUES ('310', '怒江傈傈族自治州', '26');
INSERT INTO `t_city` VALUES ('311', '迪庆藏族自治州', '26');
INSERT INTO `t_city` VALUES ('312', '西宁市', '27');
INSERT INTO `t_city` VALUES ('313', '海东地区', '27');
INSERT INTO `t_city` VALUES ('314', '海北藏族自治州', '27');
INSERT INTO `t_city` VALUES ('315', '黄南藏族自治州', '27');
INSERT INTO `t_city` VALUES ('316', '海南藏族自治州', '27');
INSERT INTO `t_city` VALUES ('317', '果洛藏族自治州', '27');
INSERT INTO `t_city` VALUES ('318', '玉树藏族自治州', '27');
INSERT INTO `t_city` VALUES ('319', '海西蒙古族藏族自治州', '27');
INSERT INTO `t_city` VALUES ('320', '西安市', '28');
INSERT INTO `t_city` VALUES ('321', '铜川市', '28');
INSERT INTO `t_city` VALUES ('322', '宝鸡市', '28');
INSERT INTO `t_city` VALUES ('323', '咸阳市', '28');
INSERT INTO `t_city` VALUES ('324', '渭南市', '28');
INSERT INTO `t_city` VALUES ('325', '延安市', '28');
INSERT INTO `t_city` VALUES ('326', '汉中市', '28');
INSERT INTO `t_city` VALUES ('327', '榆林市', '28');
INSERT INTO `t_city` VALUES ('328', '安康市', '28');
INSERT INTO `t_city` VALUES ('329', '商洛市', '28');
INSERT INTO `t_city` VALUES ('330', '南宁市', '29');
INSERT INTO `t_city` VALUES ('331', '柳州市', '29');
INSERT INTO `t_city` VALUES ('332', '桂林市', '29');
INSERT INTO `t_city` VALUES ('333', '梧州市', '29');
INSERT INTO `t_city` VALUES ('334', '北海市', '29');
INSERT INTO `t_city` VALUES ('335', '防城港市', '29');
INSERT INTO `t_city` VALUES ('336', '钦州市', '29');
INSERT INTO `t_city` VALUES ('337', '贵港市', '29');
INSERT INTO `t_city` VALUES ('338', '玉林市', '29');
INSERT INTO `t_city` VALUES ('339', '百色市', '29');
INSERT INTO `t_city` VALUES ('340', '贺州市', '29');
INSERT INTO `t_city` VALUES ('341', '河池市', '29');
INSERT INTO `t_city` VALUES ('342', '来宾市', '29');
INSERT INTO `t_city` VALUES ('343', '崇左市', '29');
INSERT INTO `t_city` VALUES ('344', '拉萨市', '30');
INSERT INTO `t_city` VALUES ('345', '那曲地区', '30');
INSERT INTO `t_city` VALUES ('346', '昌都地区', '30');
INSERT INTO `t_city` VALUES ('347', '山南地区', '30');
INSERT INTO `t_city` VALUES ('348', '日喀则地区', '30');
INSERT INTO `t_city` VALUES ('349', '阿里地区', '30');
INSERT INTO `t_city` VALUES ('350', '林芝地区', '30');
INSERT INTO `t_city` VALUES ('351', '银川市', '31');
INSERT INTO `t_city` VALUES ('352', '石嘴山市', '31');
INSERT INTO `t_city` VALUES ('353', '吴忠市', '31');
INSERT INTO `t_city` VALUES ('354', '固原市', '31');
INSERT INTO `t_city` VALUES ('355', '中卫市', '31');
INSERT INTO `t_city` VALUES ('356', '乌鲁木齐市', '32');
INSERT INTO `t_city` VALUES ('357', '克拉玛依市', '32');
INSERT INTO `t_city` VALUES ('358', '石河子市　', '32');
INSERT INTO `t_city` VALUES ('359', '阿拉尔市', '32');
INSERT INTO `t_city` VALUES ('360', '图木舒克市', '32');
INSERT INTO `t_city` VALUES ('361', '五家渠市', '32');
INSERT INTO `t_city` VALUES ('362', '吐鲁番市', '32');
INSERT INTO `t_city` VALUES ('363', '阿克苏市', '32');
INSERT INTO `t_city` VALUES ('364', '喀什市', '32');
INSERT INTO `t_city` VALUES ('365', '哈密市', '32');
INSERT INTO `t_city` VALUES ('366', '和田市', '32');
INSERT INTO `t_city` VALUES ('367', '阿图什市', '32');
INSERT INTO `t_city` VALUES ('368', '库尔勒市', '32');
INSERT INTO `t_city` VALUES ('369', '昌吉市　', '32');
INSERT INTO `t_city` VALUES ('370', '阜康市', '32');
INSERT INTO `t_city` VALUES ('371', '米泉市', '32');
INSERT INTO `t_city` VALUES ('372', '博乐市', '32');
INSERT INTO `t_city` VALUES ('373', '伊宁市', '32');
INSERT INTO `t_city` VALUES ('374', '奎屯市', '32');
INSERT INTO `t_city` VALUES ('375', '塔城市', '32');
INSERT INTO `t_city` VALUES ('376', '乌苏市', '32');
INSERT INTO `t_city` VALUES ('377', '阿勒泰市', '32');
INSERT INTO `t_city` VALUES ('378', '呼和浩特市', '33');
INSERT INTO `t_city` VALUES ('379', '包头市', '33');
INSERT INTO `t_city` VALUES ('380', '乌海市', '33');
INSERT INTO `t_city` VALUES ('381', '赤峰市', '33');
INSERT INTO `t_city` VALUES ('382', '通辽市', '33');
INSERT INTO `t_city` VALUES ('383', '鄂尔多斯市', '33');
INSERT INTO `t_city` VALUES ('384', '呼伦贝尔市', '33');
INSERT INTO `t_city` VALUES ('385', '巴彦淖尔市', '33');
INSERT INTO `t_city` VALUES ('386', '乌兰察布市', '33');
INSERT INTO `t_city` VALUES ('387', '锡林郭勒盟', '33');
INSERT INTO `t_city` VALUES ('388', '兴安盟', '33');
INSERT INTO `t_city` VALUES ('389', '阿拉善盟', '33');
INSERT INTO `t_city` VALUES ('390', '澳门特别行政区', '34');
INSERT INTO `t_city` VALUES ('391', '香港特别行政区', '35');

-- ----------------------------
-- Table structure for t_customer
-- ----------------------------
DROP TABLE IF EXISTS `t_customer`;
CREATE TABLE `t_customer` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_customer
-- ----------------------------
INSERT INTO `t_customer` VALUES ('1', 'admin', '21232F297A57A5A743894A0E4A801FC3', null, '123@qq.com');
INSERT INTO `t_customer` VALUES ('4', 'qwerty', 'D8578EDF8458CE06FBC5BB76A58C5CA4', null, null);
INSERT INTO `t_customer` VALUES ('5', '13245678910', 'E10ADC3949BA59ABBE56E057F20F883E', null, null);
INSERT INTO `t_customer` VALUES ('6', '13245678918', 'E10ADC3949BA59ABBE56E057F20F883E', null, null);
INSERT INTO `t_customer` VALUES ('7', '13245678919', 'E10ADC3949BA59ABBE56E057F20F883E', null, null);
INSERT INTO `t_customer` VALUES ('8', '13245678917', 'E10ADC3949BA59ABBE56E057F20F883E', null, null);
INSERT INTO `t_customer` VALUES ('9', '13245678915', '202CB962AC59075B964B07152D234B70', null, null);
INSERT INTO `t_customer` VALUES ('10', '13245678916', '202CB962AC59075B964B07152D234B70', null, null);

-- ----------------------------
-- Table structure for t_detailsimage
-- ----------------------------
DROP TABLE IF EXISTS `t_detailsimage`;
CREATE TABLE `t_detailsimage` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `src` varchar(100) NOT NULL,
  `sort` int(11) DEFAULT NULL,
  `goods_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_detailsimage
-- ----------------------------
INSERT INTO `t_detailsimage` VALUES ('1', '/images/detailsImage/20160413-175740.jpg', null, '1');
INSERT INTO `t_detailsimage` VALUES ('2', '/images/detailsImage/20160413-175740.jpg', null, '1');
INSERT INTO `t_detailsimage` VALUES ('3', '/images/detailsImage/20160413-175740.jpg', null, '1');

-- ----------------------------
-- Table structure for t_employee
-- ----------------------------
DROP TABLE IF EXISTS `t_employee`;
CREATE TABLE `t_employee` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `realname` varchar(255) NOT NULL,
  `loginTime` datetime DEFAULT NULL,
  `state` int(11) NOT NULL,
  `role_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_employee
-- ----------------------------
INSERT INTO `t_employee` VALUES ('1', 'admin', '21232F297A57A5A743894A0E4A801FC3', '超级管理员', null, '1', null);
INSERT INTO `t_employee` VALUES ('2', 'qwert', 'D8578EDF8458CE06FBC5BB76A58C5CA4', 'qw', null, '1', null);
INSERT INTO `t_employee` VALUES ('5', '123456', '698D51A19D8A121CE581499D7B701668', 'sc', null, '1', null);

-- ----------------------------
-- Table structure for t_employee_role
-- ----------------------------
DROP TABLE IF EXISTS `t_employee_role`;
CREATE TABLE `t_employee_role` (
  `employee_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `role_id` bigint(20) DEFAULT NULL,
  KEY `employee_id` (`employee_id`),
  KEY `role_id` (`role_id`),
  CONSTRAINT `t_employee_role_ibfk_1` FOREIGN KEY (`employee_id`) REFERENCES `t_employee` (`id`),
  CONSTRAINT `t_employee_role_ibfk_2` FOREIGN KEY (`role_id`) REFERENCES `t_role` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_employee_role
-- ----------------------------

-- ----------------------------
-- Table structure for t_goods
-- ----------------------------
DROP TABLE IF EXISTS `t_goods`;
CREATE TABLE `t_goods` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(120) NOT NULL,
  `goodsNum` varchar(50) DEFAULT NULL,
  `details` text NOT NULL,
  `price` decimal(10,0) DEFAULT NULL,
  `salePrice` decimal(10,0) NOT NULL,
  `postage` decimal(10,0) NOT NULL,
  `state` int(11) DEFAULT NULL,
  `proxyNum` int(11) DEFAULT NULL,
  `saleNum` int(11) DEFAULT NULL,
  `time` datetime NOT NULL,
  `brand_id` bigint(20) NOT NULL,
  `type_id` bigint(20) NOT NULL,
  `store_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_goods
-- ----------------------------
INSERT INTO `t_goods` VALUES ('1', '2016韩版女夏装新款宽松V领露肩休闲短袖T恤', 'A32133', '详情', '100', '10', '10', '1', '0', '0', '2016-03-01 10:46:25', '1', '1', '1');
INSERT INTO `t_goods` VALUES ('2', '2016韩版女夏装新款宽松V领露肩休闲短袖T恤', 'A32133', '详情', '100', '10', '10', '1', '0', '0', '2016-03-01 10:46:25', '1', '1', '1');
INSERT INTO `t_goods` VALUES ('3', '2016韩版女夏装新款宽松V领露肩休闲短袖T恤', 'A32133', '详情', '100', '10', '10', '1', '0', '0', '2016-03-01 10:46:25', '1', '1', '1');
INSERT INTO `t_goods` VALUES ('4', '2016韩版女夏装新款宽松V领露肩休闲短袖T恤', 'A32133', '详情', '100', '10', '10', '1', '0', '0', '2016-03-01 10:46:25', '1', '1', '1');
INSERT INTO `t_goods` VALUES ('5', '2016韩版女夏装新款宽松V领露肩休闲短袖T恤', 'A32133', '详情', '100', '10', '10', '1', '0', '0', '2016-03-01 10:46:25', '1', '1', '1');
INSERT INTO `t_goods` VALUES ('6', '2016韩版女夏装新款宽松V领露肩休闲短袖T恤', 'A32133', '详情', '100', '10', '10', '1', '0', '0', '2016-03-01 10:46:25', '1', '1', '1');
INSERT INTO `t_goods` VALUES ('7', '2016韩版女夏装新款宽松V领露肩休闲短袖T恤', 'A32133', '详情', '100', '10', '10', '1', '0', '0', '2016-03-01 10:46:25', '1', '1', '1');
INSERT INTO `t_goods` VALUES ('8', '2016韩版女夏装新款宽松V领露肩休闲短袖T恤', 'A32133', '详情', '100', '10', '10', '1', '0', '0', '2016-03-01 10:46:25', '1', '1', '1');

-- ----------------------------
-- Table structure for t_menu
-- ----------------------------
DROP TABLE IF EXISTS `t_menu`;
CREATE TABLE `t_menu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `text` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `parent_id` bigint(11) DEFAULT NULL,
  `iconCls` varchar(255) DEFAULT NULL,
  `intro` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_menu
-- ----------------------------
INSERT INTO `t_menu` VALUES ('1', '营销管理', null, null, 'icon-1_close', null);
INSERT INTO `t_menu` VALUES ('2', '客户管理', null, null, 'icon-1_open', null);
INSERT INTO `t_menu` VALUES ('3', '系统管理', null, null, 'icon-1_close', null);
INSERT INTO `t_menu` VALUES ('10', '商品管理', 'goods/index', '1', 'icon-8', null);
INSERT INTO `t_menu` VALUES ('11', '分类管理', 'type/index', '1', 'icon-9', null);
INSERT INTO `t_menu` VALUES ('12', '品牌管理', 'brand/index', '1', 'icon-10', null);
INSERT INTO `t_menu` VALUES ('13', '广告位', 'adPositionId/index', '1', 'icon-4', null);
INSERT INTO `t_menu` VALUES ('14', '广告管理', 'promotion/index', '1', 'icon-5', null);
INSERT INTO `t_menu` VALUES ('15', '订单管理', 'productOrder/index', '1', 'icon-16', null);
INSERT INTO `t_menu` VALUES ('20', '用户管理', 'user/index', '2', 'icon-3', null);
INSERT INTO `t_menu` VALUES ('21', '店铺管理', 'store/index', '2', 'icon-2', null);
INSERT INTO `t_menu` VALUES ('30', '员工管理', 'employee/index', '3', 'icon-9', null);
INSERT INTO `t_menu` VALUES ('31', '权限管理', 'permission/index', '3', 'icon-12', null);
INSERT INTO `t_menu` VALUES ('32', '系统角色', 'role/index', '3', 'icon-13', null);
INSERT INTO `t_menu` VALUES ('33', '系统日志', 'systemLog/index', '3', 'icon-14', null);

-- ----------------------------
-- Table structure for t_permission
-- ----------------------------
DROP TABLE IF EXISTS `t_permission`;
CREATE TABLE `t_permission` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) DEFAULT NULL,
  `type` varchar(100) DEFAULT NULL,
  `resource` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `resource` (`resource`)
) ENGINE=InnoDB AUTO_INCREMENT=4905 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_permission
-- ----------------------------
INSERT INTO `t_permission` VALUES ('583', '添加', '商品品牌', 'com.huashidai.weihuotong.controller.BrandCotroller:save');
INSERT INTO `t_permission` VALUES ('584', '删除', '商品品牌', 'com.huashidai.weihuotong.controller.BrandCotroller:delete');
INSERT INTO `t_permission` VALUES ('585', '列表', '商品品牌', 'com.huashidai.weihuotong.controller.BrandCotroller:query');
INSERT INTO `t_permission` VALUES ('586', '主页', '商品品牌', 'com.huashidai.weihuotong.controller.BrandCotroller:brand');
INSERT INTO `t_permission` VALUES ('587', '全部', '商品品牌', 'com.huashidai.weihuotong.controller.BrandCotroller:ALL');
INSERT INTO `t_permission` VALUES ('588', '编辑', '账户', 'com.huashidai.weihuotong.controller.EmployeeCotroller:save');
INSERT INTO `t_permission` VALUES ('589', '删除', '账户', 'com.huashidai.weihuotong.controller.EmployeeCotroller:delete');
INSERT INTO `t_permission` VALUES ('590', '启用', '账户', 'com.huashidai.weihuotong.controller.EmployeeCotroller:up');
INSERT INTO `t_permission` VALUES ('591', '停用', '账户', 'com.huashidai.weihuotong.controller.EmployeeCotroller:leave');
INSERT INTO `t_permission` VALUES ('592', '主页', '账户', 'com.huashidai.weihuotong.controller.EmployeeCotroller:employee');
INSERT INTO `t_permission` VALUES ('593', '查询', '账户', 'com.huashidai.weihuotong.controller.EmployeeCotroller:employeeQuery');
INSERT INTO `t_permission` VALUES ('594', '全部', '账户', 'com.huashidai.weihuotong.controller.EmployeeCotroller:ALL');
INSERT INTO `t_permission` VALUES ('595', '删除', '商品', 'com.huashidai.weihuotong.controller.GoodsCotroller:delete');
INSERT INTO `t_permission` VALUES ('596', '列表', '商品', 'com.huashidai.weihuotong.controller.GoodsCotroller:query');
INSERT INTO `t_permission` VALUES ('597', '上架', '商品', 'com.huashidai.weihuotong.controller.GoodsCotroller:up');
INSERT INTO `t_permission` VALUES ('598', '下架', '商品', 'com.huashidai.weihuotong.controller.GoodsCotroller:leave');
INSERT INTO `t_permission` VALUES ('599', '主页', '商品', 'com.huashidai.weihuotong.controller.GoodsCotroller:goods');
INSERT INTO `t_permission` VALUES ('600', '全部', '商品', 'com.huashidai.weihuotong.controller.GoodsCotroller:ALL');
INSERT INTO `t_permission` VALUES ('601', '编辑', '账户权限', 'com.huashidai.weihuotong.controller.PermissionController:save');
INSERT INTO `t_permission` VALUES ('602', '删除', '账户权限', 'com.huashidai.weihuotong.controller.PermissionController:delete');
INSERT INTO `t_permission` VALUES ('603', '主页', '账户权限', 'com.huashidai.weihuotong.controller.PermissionController:index');
INSERT INTO `t_permission` VALUES ('604', '查询', '账户权限', 'com.huashidai.weihuotong.controller.PermissionController:quert');
INSERT INTO `t_permission` VALUES ('605', '全部', '账户权限', 'com.huashidai.weihuotong.controller.PermissionController:ALL');
INSERT INTO `t_permission` VALUES ('606', '审核拒绝', '商家', 'com.huashidai.weihuotong.controller.StoreController:failure');
INSERT INTO `t_permission` VALUES ('607', '停用', '商家', 'com.huashidai.weihuotong.controller.StoreController:stop');
INSERT INTO `t_permission` VALUES ('608', '主页', '商家', 'com.huashidai.weihuotong.controller.StoreController:index');
INSERT INTO `t_permission` VALUES ('609', '查询', '商家', 'com.huashidai.weihuotong.controller.StoreController:query');
INSERT INTO `t_permission` VALUES ('610', '列表', '商家', 'com.huashidai.weihuotong.controller.StoreController:getAll');
INSERT INTO `t_permission` VALUES ('611', '审核通过', '商家', 'com.huashidai.weihuotong.controller.StoreController:success');
INSERT INTO `t_permission` VALUES ('612', '认证信息', '商家', 'com.huashidai.weihuotong.controller.StoreController:storeAuth');
INSERT INTO `t_permission` VALUES ('613', '全部', '商家', 'com.huashidai.weihuotong.controller.StoreController:ALL');
INSERT INTO `t_permission` VALUES ('614', '主页', '商品类型', 'com.huashidai.weihuotong.controller.TypeCotroller:type');
INSERT INTO `t_permission` VALUES ('615', '编辑', '商品类型', 'com.huashidai.weihuotong.controller.TypeCotroller:save');
INSERT INTO `t_permission` VALUES ('616', '删除', '商品类型', 'com.huashidai.weihuotong.controller.TypeCotroller:delete');
INSERT INTO `t_permission` VALUES ('617', '查询', '商品类型', 'com.huashidai.weihuotong.controller.TypeCotroller:query');
INSERT INTO `t_permission` VALUES ('618', '全部', '商品类型', 'com.huashidai.weihuotong.controller.TypeCotroller:ALL');
INSERT INTO `t_permission` VALUES ('655', '删除', '客户账户', 'com.huashidai.weihuotong.controller.UserController:delete');
INSERT INTO `t_permission` VALUES ('656', '主页', '客户账户', 'com.huashidai.weihuotong.controller.UserController:index');
INSERT INTO `t_permission` VALUES ('657', '查询', '客户账户', 'com.huashidai.weihuotong.controller.UserController:query');
INSERT INTO `t_permission` VALUES ('658', '停用', '客户账户', 'com.huashidai.weihuotong.controller.UserController:leave');
INSERT INTO `t_permission` VALUES ('659', '启用', '客户账户', 'com.huashidai.weihuotong.controller.UserController:up');
INSERT INTO `t_permission` VALUES ('660', '全部', '客户账户', 'com.huashidai.weihuotong.controller.UserController:ALL');
INSERT INTO `t_permission` VALUES ('781', '停用', '客户商家', 'com.huashidai.weihuotong.controller.StoreController:up');
INSERT INTO `t_permission` VALUES ('782', '停用', '客户商家', 'com.huashidai.weihuotong.controller.StoreController:leave');
INSERT INTO `t_permission` VALUES ('953', '编辑', '广告位', 'com.huashidai.weihuotong.controller.AdPositionIdCotroller:save');
INSERT INTO `t_permission` VALUES ('954', '删除', '广告位', 'com.huashidai.weihuotong.controller.AdPositionIdCotroller:delete');
INSERT INTO `t_permission` VALUES ('955', '列表', '广告位', 'com.huashidai.weihuotong.controller.AdPositionIdCotroller:query');
INSERT INTO `t_permission` VALUES ('956', '主页', '广告位', 'com.huashidai.weihuotong.controller.AdPositionIdCotroller:adPositionId');
INSERT INTO `t_permission` VALUES ('957', '全部', '广告位', 'com.huashidai.weihuotong.controller.AdPositionIdCotroller:ALL');
INSERT INTO `t_permission` VALUES ('1905', '编辑', '广告位', 'com.huashidai.weihuotong.controller.PromotionCotroller:save');
INSERT INTO `t_permission` VALUES ('1906', '删除', '广告位', 'com.huashidai.weihuotong.controller.PromotionCotroller:delete');
INSERT INTO `t_permission` VALUES ('1907', '查询', '广告位', 'com.huashidai.weihuotong.controller.PromotionCotroller:query');
INSERT INTO `t_permission` VALUES ('1908', '主页', '广告位', 'com.huashidai.weihuotong.controller.PromotionCotroller:adPositionId');
INSERT INTO `t_permission` VALUES ('1909', '全部', '广告位', 'com.huashidai.weihuotong.controller.PromotionCotroller:ALL');
INSERT INTO `t_permission` VALUES ('1958', '主页', '广告', 'com.huashidai.weihuotong.controller.PromotionCotroller:promotion');
INSERT INTO `t_permission` VALUES ('2468', '审核拒绝', '广告', 'com.huashidai.weihuotong.controller.PromotionCotroller:failure');
INSERT INTO `t_permission` VALUES ('2469', '审核通过', '广告', 'com.huashidai.weihuotong.controller.PromotionCotroller:success');
INSERT INTO `t_permission` VALUES ('2738', '查询', '商品订单', 'com.huashidai.weihuotong.controller.ProductOrderCotroller:query');
INSERT INTO `t_permission` VALUES ('2739', '主页', '商品订单', 'com.huashidai.weihuotong.controller.ProductOrderCotroller:productOrder');
INSERT INTO `t_permission` VALUES ('2740', '全部', '商品订单', 'com.huashidai.weihuotong.controller.ProductOrderCotroller:ALL');
INSERT INTO `t_permission` VALUES ('3764', '代理订单', '商品订单', 'com.huashidai.weihuotong.controller.ProductOrderCotroller:proxyOrder');

-- ----------------------------
-- Table structure for t_postagetemplate
-- ----------------------------
DROP TABLE IF EXISTS `t_postagetemplate`;
CREATE TABLE `t_postagetemplate` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL,
  `one` decimal(10,0) NOT NULL,
  `other` decimal(10,0) NOT NULL,
  `freeNumber` int(11) DEFAULT NULL,
  `area` varchar(255) NOT NULL,
  `store_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of t_postagetemplate
-- ----------------------------

-- ----------------------------
-- Table structure for t_product
-- ----------------------------
DROP TABLE IF EXISTS `t_product`;
CREATE TABLE `t_product` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `inventoryNum` int(11) NOT NULL,
  `specification` varchar(255) NOT NULL,
  `goods_id` bigint(20) NOT NULL,
  `version` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_product
-- ----------------------------
INSERT INTO `t_product` VALUES ('1', '10', '红色L', '1', '0');
INSERT INTO `t_product` VALUES ('2', '10', '黑色L', '1', '0');

-- ----------------------------
-- Table structure for t_productorder
-- ----------------------------
DROP TABLE IF EXISTS `t_productorder`;
CREATE TABLE `t_productorder` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `buyTime` datetime NOT NULL,
  `orderNum` varchar(255) NOT NULL,
  `postage` decimal(10,0) NOT NULL,
  `state` int(11) NOT NULL,
  `totalPrice` decimal(10,0) DEFAULT NULL,
  `message` varchar(255) DEFAULT NULL,
  `address_id` bigint(20) NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `customer_id` bigint(20) DEFAULT NULL,
  `proxyUser_id` bigint(20) DEFAULT NULL,
  `store_id` bigint(20) DEFAULT NULL,
  `payPrice` decimal(10,0) DEFAULT NULL,
  `totalOrder_id` bigint(20) DEFAULT NULL,
  `proxyPrice` decimal(10,0) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_productorder
-- ----------------------------
INSERT INTO `t_productorder` VALUES ('5', '2016-03-11 16:27:58', '10000010311162758151', '10', '0', '160', '收货人:老王;电话:110;地址:锦阳商厦;商家:店铺;收货人:老王;电话:110;地址:锦阳商厦;商家:店铺;收货人:老王;电话:110;地址:锦阳商厦;商家:店铺;收货人:老王;电话:110;地址:锦阳商厦;商家:店铺;', '1', '1', null, null, '1', '160', '80', null);
INSERT INTO `t_productorder` VALUES ('6', '2016-03-14 09:27:26', '10000010314092726024', '10', '0', '160', '收货人:老王;电话:110;地址:锦阳商厦;商家:店铺', '1', '1', null, null, '1', '160', '81', null);
INSERT INTO `t_productorder` VALUES ('7', '2016-03-14 09:27:38', '10000010314092738329', '10', '0', '160', '收货人:老王;电话:110;地址:锦阳商厦;商家:店铺', '1', null, '1', '1', '1', '160', '82', '10');

-- ----------------------------
-- Table structure for t_productorderitem
-- ----------------------------
DROP TABLE IF EXISTS `t_productorderitem`;
CREATE TABLE `t_productorderitem` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `price` decimal(10,0) NOT NULL,
  `amount` decimal(10,0) DEFAULT NULL,
  `num` int(11) NOT NULL,
  `productOrder_id` bigint(20) NOT NULL,
  `product_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FKF7DE8F5266441213` (`productOrder_id`),
  CONSTRAINT `FKF7DE8F5266441213` FOREIGN KEY (`productOrder_id`) REFERENCES `t_productorder` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_productorderitem
-- ----------------------------
INSERT INTO `t_productorderitem` VALUES ('8', '20', '100', '5', '5', '1');
INSERT INTO `t_productorderitem` VALUES ('9', '10', '50', '5', '5', '1');
INSERT INTO `t_productorderitem` VALUES ('10', '20', '100', '5', '6', '1');
INSERT INTO `t_productorderitem` VALUES ('11', '10', '50', '5', '6', '1');
INSERT INTO `t_productorderitem` VALUES ('12', '20', '100', '5', '7', '1');
INSERT INTO `t_productorderitem` VALUES ('13', '10', '50', '5', '7', '1');

-- ----------------------------
-- Table structure for t_promotion
-- ----------------------------
DROP TABLE IF EXISTS `t_promotion`;
CREATE TABLE `t_promotion` (
  `state` bigint(20) NOT NULL,
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `image` varchar(255) NOT NULL,
  `contentType` int(11) NOT NULL,
  `contentId` int(11) NOT NULL,
  `beginTime` datetime NOT NULL,
  `endTime` datetime NOT NULL,
  `price` decimal(10,0) NOT NULL,
  `adPositionId_id` bigint(20) NOT NULL,
  `store_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_promotion
-- ----------------------------
INSERT INTO `t_promotion` VALUES ('1', '1', '/images/promotion/123.jpg', '1', '1', '2016-02-01 14:27:55', '2016-06-01 14:27:59', '123', '1', '0');
INSERT INTO `t_promotion` VALUES ('1', '2', '/images/promotion/123.jpg', '1', '1', '2016-02-01 14:27:55', '2016-06-01 14:27:59', '123', '2', '0');
INSERT INTO `t_promotion` VALUES ('0', '3', '/images/promotion/123.jpg', '1', '1', '2016-02-01 14:27:55', '2016-06-01 14:27:59', '123', '3', '0');
INSERT INTO `t_promotion` VALUES ('1', '4', '/images/promotion/123.jpg', '1', '1', '2016-02-01 14:27:55', '2016-06-01 14:27:59', '123', '4', '0');
INSERT INTO `t_promotion` VALUES ('1', '5', '/images/promotion/123.jpg', '1', '1', '2016-02-01 14:27:55', '2016-02-18 14:27:59', '123', '5', '0');
INSERT INTO `t_promotion` VALUES ('0', '6', '/images/promotion/123.jpg', '1', '1', '2016-02-01 14:27:55', '2016-02-18 14:27:59', '123', '6', '0');
INSERT INTO `t_promotion` VALUES ('0', '7', '/images/promotion/123.jpg', '1', '1', '2016-02-01 14:27:55', '2016-02-18 14:27:59', '123', '7', '0');
INSERT INTO `t_promotion` VALUES ('0', '8', '/images/promotion/123.jpg', '1', '1', '2016-02-01 14:27:55', '2016-02-18 14:27:59', '123', '8', '0');
INSERT INTO `t_promotion` VALUES ('0', '9', '/images/promotion/123.jpg', '1', '1', '2016-02-01 14:27:55', '2016-02-18 14:27:59', '123', '9', '0');
INSERT INTO `t_promotion` VALUES ('0', '10', '/images/promotion/123.jpg', '1', '1', '2016-02-01 14:27:55', '2016-02-18 14:27:59', '123', '10', '0');
INSERT INTO `t_promotion` VALUES ('0', '11', '/images/promotion/123.jpg', '1', '1', '2016-02-01 14:27:55', '2016-02-18 14:27:59', '123', '11', '0');
INSERT INTO `t_promotion` VALUES ('0', '12', '/images/promotion/123.jpg', '1', '1', '2016-02-01 14:27:55', '2016-02-18 14:27:59', '123', '12', '0');
INSERT INTO `t_promotion` VALUES ('0', '13', '/images/promotion/123.jpg', '1', '1', '2016-01-15 16:32:40', '2016-02-24 16:32:47', '123', '13', '0');
INSERT INTO `t_promotion` VALUES ('0', '14', '/images/promotion/123.jpg', '1', '1', '2016-02-29 16:33:15', '2016-02-29 16:33:18', '123', '14', '0');
INSERT INTO `t_promotion` VALUES ('0', '15', '/images/promotion/123.jpg', '1', '1', '2016-02-29 16:33:30', '2016-02-29 16:33:33', '123', '15', '0');
INSERT INTO `t_promotion` VALUES ('0', '16', '/images/promotion/123.jpg', '1', '1', '2016-02-29 16:34:16', '2016-02-29 16:34:18', '123', '16', '0');
INSERT INTO `t_promotion` VALUES ('0', '18', '/images/promotion/123.jpg', '3', '1', '2016-02-24 16:34:56', '2016-02-12 16:35:00', '123', '18', '0');

-- ----------------------------
-- Table structure for t_province
-- ----------------------------
DROP TABLE IF EXISTS `t_province`;
CREATE TABLE `t_province` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `carorg` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lsp` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=36 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of t_province
-- ----------------------------
INSERT INTO `t_province` VALUES ('1', '北京市', 'beijing', '京');
INSERT INTO `t_province` VALUES ('2', '天津市', null, null);
INSERT INTO `t_province` VALUES ('3', '上海市', 'shanghai', '沪');
INSERT INTO `t_province` VALUES ('4', '重庆市', 'chongqing', '渝');
INSERT INTO `t_province` VALUES ('5', '河北省', 'hebei', '冀');
INSERT INTO `t_province` VALUES ('6', '山西省', 'shanxi', '晋');
INSERT INTO `t_province` VALUES ('7', '台湾省', null, null);
INSERT INTO `t_province` VALUES ('8', '辽宁省', null, null);
INSERT INTO `t_province` VALUES ('9', '吉林省', 'jilin', '吉');
INSERT INTO `t_province` VALUES ('10', '黑龙江省', 'heilongjiang', '黑');
INSERT INTO `t_province` VALUES ('11', '江苏省', 'jiangsu', '苏');
INSERT INTO `t_province` VALUES ('12', '浙江省', 'zhejiang', '浙');
INSERT INTO `t_province` VALUES ('13', '安徽省', 'anhui', '皖');
INSERT INTO `t_province` VALUES ('14', '福建省', 'fujian', '闽');
INSERT INTO `t_province` VALUES ('15', '江西省', null, null);
INSERT INTO `t_province` VALUES ('16', '山东省', 'shandong', '鲁');
INSERT INTO `t_province` VALUES ('17', '河南省', 'henan', '豫');
INSERT INTO `t_province` VALUES ('18', '湖北省', 'hubei', '鄂');
INSERT INTO `t_province` VALUES ('19', '湖南省', 'hunan', '湘');
INSERT INTO `t_province` VALUES ('20', '广东省', 'guangdong', '粤');
INSERT INTO `t_province` VALUES ('21', '甘肃省', 'gansu', '甘');
INSERT INTO `t_province` VALUES ('22', '四川省', 'sichuan', '川');
INSERT INTO `t_province` VALUES ('24', '贵州省', 'guizhou', '贵');
INSERT INTO `t_province` VALUES ('25', '海南省', 'hainan', '琼');
INSERT INTO `t_province` VALUES ('26', '云南省', 'yunnan', '云');
INSERT INTO `t_province` VALUES ('27', '青海省', 'qinghai', '青');
INSERT INTO `t_province` VALUES ('28', '陕西省', null, null);
INSERT INTO `t_province` VALUES ('29', '广西壮族自治区', null, null);
INSERT INTO `t_province` VALUES ('30', '西藏自治区', null, null);
INSERT INTO `t_province` VALUES ('31', '宁夏回族自治区', 'ningxia', '宁');
INSERT INTO `t_province` VALUES ('32', '新疆维吾尔自治区', 'xinjiang', '新');
INSERT INTO `t_province` VALUES ('33', '内蒙古自治区', null, null);
INSERT INTO `t_province` VALUES ('34', '澳门特别行政区', null, null);
INSERT INTO `t_province` VALUES ('35', '香港特别行政区', null, null);

-- ----------------------------
-- Table structure for t_proxygoods
-- ----------------------------
DROP TABLE IF EXISTS `t_proxygoods`;
CREATE TABLE `t_proxygoods` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `price` decimal(10,0) NOT NULL,
  `details` text NOT NULL,
  `goods_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_proxygoods
-- ----------------------------

-- ----------------------------
-- Table structure for t_proxyorder
-- ----------------------------
DROP TABLE IF EXISTS `t_proxyorder`;
CREATE TABLE `t_proxyorder` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `buyTime` datetime NOT NULL,
  `orderNum` varchar(255) NOT NULL,
  `proxyPrice` decimal(10,0) NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `customer_id` bigint(20) DEFAULT NULL,
  `store_id` bigint(20) DEFAULT NULL,
  `productOrderNum` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_proxyorder
-- ----------------------------

-- ----------------------------
-- Table structure for t_resource
-- ----------------------------
DROP TABLE IF EXISTS `t_resource`;
CREATE TABLE `t_resource` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=11564 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_resource
-- ----------------------------
INSERT INTO `t_resource` VALUES ('1869', 'com.huashidai.weihuotong.app.CommonAPP:city');
INSERT INTO `t_resource` VALUES ('1870', 'com.huashidai.weihuotong.app.CommonAPP:province');
INSERT INTO `t_resource` VALUES ('8207', 'com.huashidai.weihuotong.app.CommonAPP:randomCode');
INSERT INTO `t_resource` VALUES ('1879', 'com.huashidai.weihuotong.app.GoodsAPP:addGoods');
INSERT INTO `t_resource` VALUES ('1874', 'com.huashidai.weihuotong.app.GoodsAPP:allBrand');
INSERT INTO `t_resource` VALUES ('1880', 'com.huashidai.weihuotong.app.GoodsAPP:detailsImages');
INSERT INTO `t_resource` VALUES ('1873', 'com.huashidai.weihuotong.app.GoodsAPP:enterGoods');
INSERT INTO `t_resource` VALUES ('1876', 'com.huashidai.weihuotong.app.GoodsAPP:newGoods');
INSERT INTO `t_resource` VALUES ('1875', 'com.huashidai.weihuotong.app.GoodsAPP:proxyGoods');
INSERT INTO `t_resource` VALUES ('1877', 'com.huashidai.weihuotong.app.GoodsAPP:queryGoods');
INSERT INTO `t_resource` VALUES ('1878', 'com.huashidai.weihuotong.app.GoodsAPP:searchGoods');
INSERT INTO `t_resource` VALUES ('1871', 'com.huashidai.weihuotong.app.GoodsAPP:submitOrder');
INSERT INTO `t_resource` VALUES ('7958', 'com.huashidai.weihuotong.app.GoodsAPP:submitProxyOrder');
INSERT INTO `t_resource` VALUES ('1872', 'com.huashidai.weihuotong.app.GoodsAPP:toBuyProduct');
INSERT INTO `t_resource` VALUES ('1884', 'com.huashidai.weihuotong.app.PromotionAPP:enterPromotion');
INSERT INTO `t_resource` VALUES ('1881', 'com.huashidai.weihuotong.app.PromotionAPP:enterWebPage');
INSERT INTO `t_resource` VALUES ('1882', 'com.huashidai.weihuotong.app.PromotionAPP:promotion');
INSERT INTO `t_resource` VALUES ('1883', 'com.huashidai.weihuotong.app.PromotionAPP:promotionOfType');
INSERT INTO `t_resource` VALUES ('11189', 'com.huashidai.weihuotong.app.StoreAPP:addStoreFavorites');
INSERT INTO `t_resource` VALUES ('1890', 'com.huashidai.weihuotong.app.StoreAPP:allPostageTemplate');
INSERT INTO `t_resource` VALUES ('1887', 'com.huashidai.weihuotong.app.StoreAPP:enterStore');
INSERT INTO `t_resource` VALUES ('1891', 'com.huashidai.weihuotong.app.StoreAPP:postageTemplate');
INSERT INTO `t_resource` VALUES ('11190', 'com.huashidai.weihuotong.app.StoreAPP:removeStoreFavorites');
INSERT INTO `t_resource` VALUES ('1885', 'com.huashidai.weihuotong.app.StoreAPP:saveStore');
INSERT INTO `t_resource` VALUES ('1889', 'com.huashidai.weihuotong.app.StoreAPP:saveStoreAuth');
INSERT INTO `t_resource` VALUES ('1886', 'com.huashidai.weihuotong.app.StoreAPP:searchStore');
INSERT INTO `t_resource` VALUES ('11191', 'com.huashidai.weihuotong.app.StoreAPP:storeFavorites');
INSERT INTO `t_resource` VALUES ('1888', 'com.huashidai.weihuotong.app.StoreAPP:updateHeadImage');
INSERT INTO `t_resource` VALUES ('1892', 'com.huashidai.weihuotong.app.TypeAPP:enterType');
INSERT INTO `t_resource` VALUES ('1894', 'com.huashidai.weihuotong.app.TypeAPP:parentsAndItem');
INSERT INTO `t_resource` VALUES ('1893', 'com.huashidai.weihuotong.app.TypeAPP:typeItem');
INSERT INTO `t_resource` VALUES ('1895', 'com.huashidai.weihuotong.app.TypeAPP:typesByParent');
INSERT INTO `t_resource` VALUES ('1899', 'com.huashidai.weihuotong.app.UserAPP:checkLogin');
INSERT INTO `t_resource` VALUES ('1906', 'com.huashidai.weihuotong.app.UserAPP:deleteAddress');
INSERT INTO `t_resource` VALUES ('1905', 'com.huashidai.weihuotong.app.UserAPP:forgetPassword');
INSERT INTO `t_resource` VALUES ('1897', 'com.huashidai.weihuotong.app.UserAPP:getAddress');
INSERT INTO `t_resource` VALUES ('1896', 'com.huashidai.weihuotong.app.UserAPP:register');
INSERT INTO `t_resource` VALUES ('1900', 'com.huashidai.weihuotong.app.UserAPP:saveAddress');
INSERT INTO `t_resource` VALUES ('1903', 'com.huashidai.weihuotong.app.UserAPP:updateAddress');
INSERT INTO `t_resource` VALUES ('1902', 'com.huashidai.weihuotong.app.UserAPP:updateBackground');
INSERT INTO `t_resource` VALUES ('1907', 'com.huashidai.weihuotong.app.UserAPP:updateDefault');
INSERT INTO `t_resource` VALUES ('1904', 'com.huashidai.weihuotong.app.UserAPP:updatePassword');
INSERT INTO `t_resource` VALUES ('1901', 'com.huashidai.weihuotong.app.UserAPP:updateUserImages');
INSERT INTO `t_resource` VALUES ('7342', 'com.huashidai.weihuotong.app.UserAPP:userAccount');
INSERT INTO `t_resource` VALUES ('7343', 'com.huashidai.weihuotong.app.UserAPP:userAccountFlow');
INSERT INTO `t_resource` VALUES ('1898', 'com.huashidai.weihuotong.app.UserAPP:userInfo');
INSERT INTO `t_resource` VALUES ('2809', 'com.huashidai.weihuotong.controller.AdPositionIdCotroller:adPositionId');
INSERT INTO `t_resource` VALUES ('2810', 'com.huashidai.weihuotong.controller.AdPositionIdCotroller:ALL');
INSERT INTO `t_resource` VALUES ('2807', 'com.huashidai.weihuotong.controller.AdPositionIdCotroller:delete');
INSERT INTO `t_resource` VALUES ('2808', 'com.huashidai.weihuotong.controller.AdPositionIdCotroller:query');
INSERT INTO `t_resource` VALUES ('2806', 'com.huashidai.weihuotong.controller.AdPositionIdCotroller:save');
INSERT INTO `t_resource` VALUES ('1912', 'com.huashidai.weihuotong.controller.BrandCotroller:ALL');
INSERT INTO `t_resource` VALUES ('1911', 'com.huashidai.weihuotong.controller.BrandCotroller:brand');
INSERT INTO `t_resource` VALUES ('1909', 'com.huashidai.weihuotong.controller.BrandCotroller:delete');
INSERT INTO `t_resource` VALUES ('1910', 'com.huashidai.weihuotong.controller.BrandCotroller:query');
INSERT INTO `t_resource` VALUES ('1908', 'com.huashidai.weihuotong.controller.BrandCotroller:save');
INSERT INTO `t_resource` VALUES ('1919', 'com.huashidai.weihuotong.controller.EmployeeCotroller:ALL');
INSERT INTO `t_resource` VALUES ('1914', 'com.huashidai.weihuotong.controller.EmployeeCotroller:delete');
INSERT INTO `t_resource` VALUES ('1917', 'com.huashidai.weihuotong.controller.EmployeeCotroller:employee');
INSERT INTO `t_resource` VALUES ('1918', 'com.huashidai.weihuotong.controller.EmployeeCotroller:employeeQuery');
INSERT INTO `t_resource` VALUES ('1916', 'com.huashidai.weihuotong.controller.EmployeeCotroller:leave');
INSERT INTO `t_resource` VALUES ('1913', 'com.huashidai.weihuotong.controller.EmployeeCotroller:save');
INSERT INTO `t_resource` VALUES ('1915', 'com.huashidai.weihuotong.controller.EmployeeCotroller:up');
INSERT INTO `t_resource` VALUES ('1925', 'com.huashidai.weihuotong.controller.GoodsCotroller:ALL');
INSERT INTO `t_resource` VALUES ('1920', 'com.huashidai.weihuotong.controller.GoodsCotroller:delete');
INSERT INTO `t_resource` VALUES ('1924', 'com.huashidai.weihuotong.controller.GoodsCotroller:goods');
INSERT INTO `t_resource` VALUES ('1923', 'com.huashidai.weihuotong.controller.GoodsCotroller:leave');
INSERT INTO `t_resource` VALUES ('1921', 'com.huashidai.weihuotong.controller.GoodsCotroller:query');
INSERT INTO `t_resource` VALUES ('1922', 'com.huashidai.weihuotong.controller.GoodsCotroller:up');
INSERT INTO `t_resource` VALUES ('1926', 'com.huashidai.weihuotong.controller.IndexController:execut');
INSERT INTO `t_resource` VALUES ('1928', 'com.huashidai.weihuotong.controller.LoginController:checkLogin');
INSERT INTO `t_resource` VALUES ('1927', 'com.huashidai.weihuotong.controller.LoginController:mian');
INSERT INTO `t_resource` VALUES ('1929', 'com.huashidai.weihuotong.controller.MenuCotroller:test2');
INSERT INTO `t_resource` VALUES ('1935', 'com.huashidai.weihuotong.controller.PermissionController:ALL');
INSERT INTO `t_resource` VALUES ('1931', 'com.huashidai.weihuotong.controller.PermissionController:delete');
INSERT INTO `t_resource` VALUES ('1932', 'com.huashidai.weihuotong.controller.PermissionController:index');
INSERT INTO `t_resource` VALUES ('1934', 'com.huashidai.weihuotong.controller.PermissionController:permissionAll');
INSERT INTO `t_resource` VALUES ('1933', 'com.huashidai.weihuotong.controller.PermissionController:quert');
INSERT INTO `t_resource` VALUES ('1930', 'com.huashidai.weihuotong.controller.PermissionController:save');
INSERT INTO `t_resource` VALUES ('6864', 'com.huashidai.weihuotong.controller.ProductOrderCotroller:ALL');
INSERT INTO `t_resource` VALUES ('6863', 'com.huashidai.weihuotong.controller.ProductOrderCotroller:productOrder');
INSERT INTO `t_resource` VALUES ('9080', 'com.huashidai.weihuotong.controller.ProductOrderCotroller:proxyOrder');
INSERT INTO `t_resource` VALUES ('6862', 'com.huashidai.weihuotong.controller.ProductOrderCotroller:query');
INSERT INTO `t_resource` VALUES ('5024', 'com.huashidai.weihuotong.controller.PromotionCotroller:adPositionId');
INSERT INTO `t_resource` VALUES ('5025', 'com.huashidai.weihuotong.controller.PromotionCotroller:ALL');
INSERT INTO `t_resource` VALUES ('5022', 'com.huashidai.weihuotong.controller.PromotionCotroller:delete');
INSERT INTO `t_resource` VALUES ('6277', 'com.huashidai.weihuotong.controller.PromotionCotroller:failure');
INSERT INTO `t_resource` VALUES ('5137', 'com.huashidai.weihuotong.controller.PromotionCotroller:promotion');
INSERT INTO `t_resource` VALUES ('5023', 'com.huashidai.weihuotong.controller.PromotionCotroller:query');
INSERT INTO `t_resource` VALUES ('5021', 'com.huashidai.weihuotong.controller.PromotionCotroller:save');
INSERT INTO `t_resource` VALUES ('6278', 'com.huashidai.weihuotong.controller.PromotionCotroller:success');
INSERT INTO `t_resource` VALUES ('1937', 'com.huashidai.weihuotong.controller.RandomCodeController:getRandColor');
INSERT INTO `t_resource` VALUES ('1936', 'com.huashidai.weihuotong.controller.RandomCodeController:service');
INSERT INTO `t_resource` VALUES ('1938', 'com.huashidai.weihuotong.controller.ResourceController:roleAll');
INSERT INTO `t_resource` VALUES ('1940', 'com.huashidai.weihuotong.controller.RoleController:delete');
INSERT INTO `t_resource` VALUES ('1941', 'com.huashidai.weihuotong.controller.RoleController:echo');
INSERT INTO `t_resource` VALUES ('1942', 'com.huashidai.weihuotong.controller.RoleController:roleAll');
INSERT INTO `t_resource` VALUES ('1943', 'com.huashidai.weihuotong.controller.RoleController:roleList');
INSERT INTO `t_resource` VALUES ('1939', 'com.huashidai.weihuotong.controller.RoleController:save');
INSERT INTO `t_resource` VALUES ('1951', 'com.huashidai.weihuotong.controller.StoreController:ALL');
INSERT INTO `t_resource` VALUES ('1944', 'com.huashidai.weihuotong.controller.StoreController:failure');
INSERT INTO `t_resource` VALUES ('1948', 'com.huashidai.weihuotong.controller.StoreController:getAll');
INSERT INTO `t_resource` VALUES ('1946', 'com.huashidai.weihuotong.controller.StoreController:index');
INSERT INTO `t_resource` VALUES ('2383', 'com.huashidai.weihuotong.controller.StoreController:leave');
INSERT INTO `t_resource` VALUES ('1947', 'com.huashidai.weihuotong.controller.StoreController:query');
INSERT INTO `t_resource` VALUES ('1945', 'com.huashidai.weihuotong.controller.StoreController:stop');
INSERT INTO `t_resource` VALUES ('1950', 'com.huashidai.weihuotong.controller.StoreController:storeAuth');
INSERT INTO `t_resource` VALUES ('1949', 'com.huashidai.weihuotong.controller.StoreController:success');
INSERT INTO `t_resource` VALUES ('2382', 'com.huashidai.weihuotong.controller.StoreController:up');
INSERT INTO `t_resource` VALUES ('1953', 'com.huashidai.weihuotong.controller.SystemDictionaryCotroller:delete');
INSERT INTO `t_resource` VALUES ('1954', 'com.huashidai.weihuotong.controller.SystemDictionaryCotroller:index');
INSERT INTO `t_resource` VALUES ('1952', 'com.huashidai.weihuotong.controller.SystemDictionaryCotroller:save');
INSERT INTO `t_resource` VALUES ('1955', 'com.huashidai.weihuotong.controller.SystemDictionaryCotroller:systemDictionaryList');
INSERT INTO `t_resource` VALUES ('1957', 'com.huashidai.weihuotong.controller.SystemDictionaryItemCotroller:delete');
INSERT INTO `t_resource` VALUES ('1956', 'com.huashidai.weihuotong.controller.SystemDictionaryItemCotroller:save');
INSERT INTO `t_resource` VALUES ('1958', 'com.huashidai.weihuotong.controller.SystemDictionaryItemCotroller:SystemDictionaryItemList');
INSERT INTO `t_resource` VALUES ('1960', 'com.huashidai.weihuotong.controller.SystemLogController:index');
INSERT INTO `t_resource` VALUES ('1959', 'com.huashidai.weihuotong.controller.SystemLogController:list');
INSERT INTO `t_resource` VALUES ('1961', 'com.huashidai.weihuotong.controller.SystemLogController:query');
INSERT INTO `t_resource` VALUES ('1967', 'com.huashidai.weihuotong.controller.TypeCotroller:ALL');
INSERT INTO `t_resource` VALUES ('1965', 'com.huashidai.weihuotong.controller.TypeCotroller:delete');
INSERT INTO `t_resource` VALUES ('1963', 'com.huashidai.weihuotong.controller.TypeCotroller:list');
INSERT INTO `t_resource` VALUES ('4352', 'com.huashidai.weihuotong.controller.TypeCotroller:listOfAd');
INSERT INTO `t_resource` VALUES ('1966', 'com.huashidai.weihuotong.controller.TypeCotroller:query');
INSERT INTO `t_resource` VALUES ('1964', 'com.huashidai.weihuotong.controller.TypeCotroller:save');
INSERT INTO `t_resource` VALUES ('1962', 'com.huashidai.weihuotong.controller.TypeCotroller:type');
INSERT INTO `t_resource` VALUES ('2072', 'com.huashidai.weihuotong.controller.UserController:ALL');
INSERT INTO `t_resource` VALUES ('2067', 'com.huashidai.weihuotong.controller.UserController:delete');
INSERT INTO `t_resource` VALUES ('2068', 'com.huashidai.weihuotong.controller.UserController:index');
INSERT INTO `t_resource` VALUES ('2070', 'com.huashidai.weihuotong.controller.UserController:leave');
INSERT INTO `t_resource` VALUES ('2069', 'com.huashidai.weihuotong.controller.UserController:query');
INSERT INTO `t_resource` VALUES ('2071', 'com.huashidai.weihuotong.controller.UserController:up');
INSERT INTO `t_resource` VALUES ('7586', 'com.huashidai.weihuotong.pay.PayController:callBack');
INSERT INTO `t_resource` VALUES ('7587', 'com.huashidai.weihuotong.pay.PayController:createCharge');

-- ----------------------------
-- Table structure for t_role
-- ----------------------------
DROP TABLE IF EXISTS `t_role`;
CREATE TABLE `t_role` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) DEFAULT NULL,
  `sn` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_role
-- ----------------------------
INSERT INTO `t_role` VALUES ('1', '权限管理员', '001');
INSERT INTO `t_role` VALUES ('3', '商品管理员', '001');
INSERT INTO `t_role` VALUES ('5', '测试', '测试');

-- ----------------------------
-- Table structure for t_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `t_role_menu`;
CREATE TABLE `t_role_menu` (
  `role_id` bigint(20) DEFAULT NULL,
  `menu_id` bigint(20) DEFAULT NULL,
  KEY `role_id` (`role_id`),
  KEY `menu_id` (`menu_id`),
  CONSTRAINT `t_role_menu_ibfk_1` FOREIGN KEY (`role_id`) REFERENCES `t_role` (`id`),
  CONSTRAINT `t_role_menu_ibfk_2` FOREIGN KEY (`menu_id`) REFERENCES `t_menu` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_role_menu
-- ----------------------------

-- ----------------------------
-- Table structure for t_role_permission
-- ----------------------------
DROP TABLE IF EXISTS `t_role_permission`;
CREATE TABLE `t_role_permission` (
  `role_id` bigint(20) NOT NULL,
  `permission_id` bigint(20) NOT NULL,
  PRIMARY KEY (`role_id`,`permission_id`),
  KEY `permission_id` (`permission_id`),
  CONSTRAINT `t_role_permission_ibfk_1` FOREIGN KEY (`role_id`) REFERENCES `t_role` (`id`),
  CONSTRAINT `t_role_permission_ibfk_2` FOREIGN KEY (`permission_id`) REFERENCES `t_permission` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_role_permission
-- ----------------------------
INSERT INTO `t_role_permission` VALUES ('1', '614');
INSERT INTO `t_role_permission` VALUES ('1', '615');
INSERT INTO `t_role_permission` VALUES ('1', '616');
INSERT INTO `t_role_permission` VALUES ('1', '617');
INSERT INTO `t_role_permission` VALUES ('1', '618');

-- ----------------------------
-- Table structure for t_shoppingcart
-- ----------------------------
DROP TABLE IF EXISTS `t_shoppingcart`;
CREATE TABLE `t_shoppingcart` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `totalPrice` decimal(10,0) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_shoppingcart
-- ----------------------------

-- ----------------------------
-- Table structure for t_shoppingcartitem
-- ----------------------------
DROP TABLE IF EXISTS `t_shoppingcartitem`;
CREATE TABLE `t_shoppingcartitem` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `price` decimal(10,0) NOT NULL,
  `num` int(11) NOT NULL,
  `amount` decimal(10,0) NOT NULL,
  `shoppingCart_id` bigint(20) NOT NULL,
  `product_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK30FD47DB5E93D5B3` (`shoppingCart_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_shoppingcartitem
-- ----------------------------

-- ----------------------------
-- Table structure for t_store
-- ----------------------------
DROP TABLE IF EXISTS `t_store`;
CREATE TABLE `t_store` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `linkman` varchar(50) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `qq` varchar(20) NOT NULL,
  `city_id` bigint(20) NOT NULL,
  `type_id` bigint(20) NOT NULL,
  `state` int(11) NOT NULL,
  `headImage` varchar(255) DEFAULT NULL,
  `secured` int(11) NOT NULL,
  `margin` int(11) NOT NULL,
  `saleNum` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_store
-- ----------------------------
INSERT INTO `t_store` VALUES ('1', '韩都衣舍', '昵称', '123456789', '469813867', '1', '1', '0', null, '0', '0', '0');
INSERT INTO `t_store` VALUES ('2', 'zara', '昵称', '123456789', '469813867', '1', '1', '0', null, '0', '0', '0');
INSERT INTO `t_store` VALUES ('3', 'forever', '昵称', '123456789', '469813867', '1', '1', '1', null, '0', '0', '0');
INSERT INTO `t_store` VALUES ('4', '优衣库', '优衣库昵称', '110', '123456', '1', '2', '1', null, '1', '100', '0');
INSERT INTO `t_store` VALUES ('5', '测试', '11', '11', '11', '2', '3', '-2', null, '0', '0', '0');

-- ----------------------------
-- Table structure for t_storeauth
-- ----------------------------
DROP TABLE IF EXISTS `t_storeauth`;
CREATE TABLE `t_storeauth` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `linkman` varchar(50) NOT NULL,
  `idCard1` varchar(255) DEFAULT NULL,
  `idCard2` varchar(255) DEFAULT NULL,
  `otherCard1` varchar(255) DEFAULT NULL,
  `otherCard2` varchar(255) DEFAULT NULL,
  `otherCard3` varchar(255) DEFAULT NULL,
  `otherCard4` varchar(255) DEFAULT NULL,
  `state` int(11) NOT NULL,
  `applyTime` date DEFAULT NULL,
  `store_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_storeauth
-- ----------------------------
INSERT INTO `t_storeauth` VALUES ('2', '11', '/images/realAuth/20160308-175535.jpg', '/images/realAuth/20160308-175535.jpg', '/images/realAuth/20160308-175535.jpg', '/images/realAuth/20160308-175535.jpg', '/images/realAuth/20160308-175535.jpg', '/images/realAuth/20160308-175535.jpg', '0', '2016-03-08', '1');

-- ----------------------------
-- Table structure for t_storefavorites
-- ----------------------------
DROP TABLE IF EXISTS `t_storefavorites`;
CREATE TABLE `t_storefavorites` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `time` datetime NOT NULL,
  `userId` bigint(20) NOT NULL,
  `storeName` varchar(255) NOT NULL,
  `storeId` bigint(20) NOT NULL,
  `storeType` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_storefavorites
-- ----------------------------
INSERT INTO `t_storefavorites` VALUES ('1', '2016-05-06 18:02:21', '1', '韩都衣舍', '1', '女装');
INSERT INTO `t_storefavorites` VALUES ('3', '2016-05-06 18:10:57', '1', 'zara', '2', '女装');

-- ----------------------------
-- Table structure for t_systemdictionary
-- ----------------------------
DROP TABLE IF EXISTS `t_systemdictionary`;
CREATE TABLE `t_systemdictionary` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `sn` varchar(30) NOT NULL,
  `name` varchar(30) NOT NULL,
  `intro` varchar(255) DEFAULT NULL,
  `state` varchar(2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_systemdictionary
-- ----------------------------

-- ----------------------------
-- Table structure for t_systemdictionaryitem
-- ----------------------------
DROP TABLE IF EXISTS `t_systemdictionaryitem`;
CREATE TABLE `t_systemdictionaryitem` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `sn` int(11) DEFAULT NULL,
  `name` varchar(20) NOT NULL,
  `intro` varchar(255) DEFAULT NULL,
  `parent_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_systemdictionaryitem
-- ----------------------------

-- ----------------------------
-- Table structure for t_systemlog
-- ----------------------------
DROP TABLE IF EXISTS `t_systemlog`;
CREATE TABLE `t_systemlog` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `opUser` varchar(20) DEFAULT NULL,
  `opTime` datetime DEFAULT NULL,
  `opIP` varchar(32) DEFAULT NULL,
  `function` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5211 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_systemlog
-- ----------------------------
INSERT INTO `t_systemlog` VALUES ('1', null, '2016-02-25 11:00:03', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.EmployeeServiceImpl:findByCookie');
INSERT INTO `t_systemlog` VALUES ('2', null, '2016-02-25 11:00:49', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.EmployeeServiceImpl:findByCookie');
INSERT INTO `t_systemlog` VALUES ('3', null, '2016-02-25 11:01:40', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.EmployeeServiceImpl:findByCookie');
INSERT INTO `t_systemlog` VALUES ('4', null, '2016-02-25 11:01:40', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.EmployeeServiceImpl:findByCookie');
INSERT INTO `t_systemlog` VALUES ('5', null, '2016-02-25 11:02:03', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.EmployeeServiceImpl:findcheckLogin');
INSERT INTO `t_systemlog` VALUES ('6', null, '2016-02-25 11:02:37', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.EmployeeServiceImpl:findcheckLogin');
INSERT INTO `t_systemlog` VALUES ('7', null, '2016-02-25 11:06:28', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.EmployeeServiceImpl:findcheckLogin');
INSERT INTO `t_systemlog` VALUES ('8', null, '2016-02-25 11:33:24', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.EmployeeServiceImpl:findcheckLogin');
INSERT INTO `t_systemlog` VALUES ('9', 'admin', '2016-02-25 11:33:43', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.EmployeeServiceImpl:findcheckLogin');
INSERT INTO `t_systemlog` VALUES ('10', 'admin', '2016-02-25 11:33:43', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:getUserPermission');
INSERT INTO `t_systemlog` VALUES ('11', 'admin', '2016-02-25 11:33:43', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:getPermissionByResources');
INSERT INTO `t_systemlog` VALUES ('12', 'admin', '2016-02-25 11:33:44', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:getPermissionByResources');
INSERT INTO `t_systemlog` VALUES ('13', 'admin', '2016-02-25 11:33:44', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.MenuServiceImpl:getMenuResult');
INSERT INTO `t_systemlog` VALUES ('14', 'admin', '2016-02-25 11:36:13', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:getPermissionByResources');
INSERT INTO `t_systemlog` VALUES ('15', 'admin', '2016-02-25 11:36:14', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:getPermissionByResources');
INSERT INTO `t_systemlog` VALUES ('16', 'admin', '2016-02-25 11:36:14', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.MenuServiceImpl:getMenuResult');
INSERT INTO `t_systemlog` VALUES ('17', 'admin', '2016-02-25 11:40:48', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:getPermissionByResources');
INSERT INTO `t_systemlog` VALUES ('18', 'admin', '2016-02-25 11:40:48', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:getPermissionByResources');
INSERT INTO `t_systemlog` VALUES ('19', 'admin', '2016-02-25 11:40:48', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.MenuServiceImpl:getMenuResult');
INSERT INTO `t_systemlog` VALUES ('20', 'admin', '2016-02-25 11:44:00', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:getPermissionByResources');
INSERT INTO `t_systemlog` VALUES ('21', 'admin', '2016-02-25 11:44:01', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:getPermissionByResources');
INSERT INTO `t_systemlog` VALUES ('22', 'admin', '2016-02-25 11:44:01', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.MenuServiceImpl:getMenuResult');
INSERT INTO `t_systemlog` VALUES ('23', 'admin', '2016-02-25 11:45:06', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:getPermissionByResources');
INSERT INTO `t_systemlog` VALUES ('24', 'admin', '2016-02-25 11:45:07', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:getPermissionByResources');
INSERT INTO `t_systemlog` VALUES ('25', 'admin', '2016-02-25 11:45:07', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.MenuServiceImpl:getMenuResult');
INSERT INTO `t_systemlog` VALUES ('26', 'admin', '2016-02-25 11:45:09', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:getPermissionByResources');
INSERT INTO `t_systemlog` VALUES ('27', 'admin', '2016-02-25 11:45:09', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:getPermissionByResources');
INSERT INTO `t_systemlog` VALUES ('28', 'admin', '2016-02-25 11:45:09', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.MenuServiceImpl:getMenuResult');
INSERT INTO `t_systemlog` VALUES ('29', 'admin', '2016-02-25 11:45:11', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:getPermissionByResources');
INSERT INTO `t_systemlog` VALUES ('30', 'admin', '2016-02-25 11:45:12', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:getPermissionByResources');
INSERT INTO `t_systemlog` VALUES ('31', 'admin', '2016-02-25 11:45:12', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.MenuServiceImpl:getMenuResult');
INSERT INTO `t_systemlog` VALUES ('32', 'admin', '2016-02-25 11:45:17', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:getPermissionByResources');
INSERT INTO `t_systemlog` VALUES ('33', 'admin', '2016-02-25 11:45:18', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:getPermissionByResources');
INSERT INTO `t_systemlog` VALUES ('34', 'admin', '2016-02-25 11:45:18', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.MenuServiceImpl:getMenuResult');
INSERT INTO `t_systemlog` VALUES ('35', 'admin', '2016-02-25 11:45:19', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:getPermissionByResources');
INSERT INTO `t_systemlog` VALUES ('36', 'admin', '2016-02-25 11:45:20', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:getPermissionByResources');
INSERT INTO `t_systemlog` VALUES ('37', 'admin', '2016-02-25 11:45:20', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.MenuServiceImpl:getMenuResult');
INSERT INTO `t_systemlog` VALUES ('38', 'admin', '2016-02-25 11:45:22', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:getPermissionByResources');
INSERT INTO `t_systemlog` VALUES ('39', 'admin', '2016-02-25 11:45:23', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:getPermissionByResources');
INSERT INTO `t_systemlog` VALUES ('40', 'admin', '2016-02-25 11:45:23', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.MenuServiceImpl:getMenuResult');
INSERT INTO `t_systemlog` VALUES ('41', null, '2016-02-25 14:18:10', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.EmployeeServiceImpl:findByCookie');
INSERT INTO `t_systemlog` VALUES ('42', 'admin', '2016-02-25 14:18:22', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.EmployeeServiceImpl:findcheckLogin');
INSERT INTO `t_systemlog` VALUES ('43', 'admin', '2016-02-25 14:18:22', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:getUserPermission');
INSERT INTO `t_systemlog` VALUES ('44', 'admin', '2016-02-25 14:18:22', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:getPermissionByResources');
INSERT INTO `t_systemlog` VALUES ('45', 'admin', '2016-02-25 14:18:23', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:getPermissionByResources');
INSERT INTO `t_systemlog` VALUES ('46', 'admin', '2016-02-25 14:18:23', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.MenuServiceImpl:getMenuResult');
INSERT INTO `t_systemlog` VALUES ('47', 'admin', '2016-02-25 14:19:30', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:getPermissionByResources');
INSERT INTO `t_systemlog` VALUES ('48', 'admin', '2016-02-25 14:19:31', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:getPermissionByResources');
INSERT INTO `t_systemlog` VALUES ('49', 'admin', '2016-02-25 14:19:31', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.MenuServiceImpl:getMenuResult');
INSERT INTO `t_systemlog` VALUES ('50', 'admin', '2016-02-25 14:19:36', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:getPermissionByResources');
INSERT INTO `t_systemlog` VALUES ('51', 'admin', '2016-02-25 14:19:37', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:getPermissionByResources');
INSERT INTO `t_systemlog` VALUES ('52', 'admin', '2016-02-25 14:19:37', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.MenuServiceImpl:getMenuResult');
INSERT INTO `t_systemlog` VALUES ('53', 'admin', '2016-02-25 14:19:52', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:getPermissionByResources');
INSERT INTO `t_systemlog` VALUES ('54', 'admin', '2016-02-25 14:19:53', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:getPermissionByResources');
INSERT INTO `t_systemlog` VALUES ('55', 'admin', '2016-02-25 14:19:53', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.MenuServiceImpl:getMenuResult');
INSERT INTO `t_systemlog` VALUES ('56', 'admin', '2016-02-25 14:20:14', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.EmployeeServiceImpl:findcheckLogin');
INSERT INTO `t_systemlog` VALUES ('57', 'admin', '2016-02-25 14:20:14', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:getUserPermission');
INSERT INTO `t_systemlog` VALUES ('58', 'admin', '2016-02-25 14:20:14', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:getPermissionByResources');
INSERT INTO `t_systemlog` VALUES ('59', 'admin', '2016-02-25 14:20:14', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:getPermissionByResources');
INSERT INTO `t_systemlog` VALUES ('60', 'admin', '2016-02-25 14:20:14', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.MenuServiceImpl:getMenuResult');
INSERT INTO `t_systemlog` VALUES ('61', null, '2016-02-25 14:24:28', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.EmployeeServiceImpl:findByCookie');
INSERT INTO `t_systemlog` VALUES ('62', 'admin', '2016-02-25 14:24:39', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.EmployeeServiceImpl:findcheckLogin');
INSERT INTO `t_systemlog` VALUES ('63', 'admin', '2016-02-25 14:24:39', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:getUserPermission');
INSERT INTO `t_systemlog` VALUES ('64', 'admin', '2016-02-25 14:24:39', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:getPermissionByResources');
INSERT INTO `t_systemlog` VALUES ('65', 'admin', '2016-02-25 14:24:40', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:getPermissionByResources');
INSERT INTO `t_systemlog` VALUES ('66', 'admin', '2016-02-25 14:24:40', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.MenuServiceImpl:getMenuResult');
INSERT INTO `t_systemlog` VALUES ('67', 'admin', '2016-02-25 14:24:52', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:getPermissionByResources');
INSERT INTO `t_systemlog` VALUES ('68', 'admin', '2016-02-25 14:24:52', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:getPermissionByResources');
INSERT INTO `t_systemlog` VALUES ('69', 'admin', '2016-02-25 14:24:52', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.MenuServiceImpl:getMenuResult');
INSERT INTO `t_systemlog` VALUES ('70', 'admin', '2016-02-25 14:25:08', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:getPermissionByResources');
INSERT INTO `t_systemlog` VALUES ('71', 'admin', '2016-02-25 14:25:09', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:getPermissionByResources');
INSERT INTO `t_systemlog` VALUES ('72', 'admin', '2016-02-25 14:25:09', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.MenuServiceImpl:getMenuResult');
INSERT INTO `t_systemlog` VALUES ('73', 'admin', '2016-02-25 14:25:30', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:getPermissionByResources');
INSERT INTO `t_systemlog` VALUES ('74', 'admin', '2016-02-25 14:25:35', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:getPermissionByResources');
INSERT INTO `t_systemlog` VALUES ('75', 'admin', '2016-02-25 14:25:35', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.MenuServiceImpl:getMenuResult');
INSERT INTO `t_systemlog` VALUES ('76', 'admin', '2016-02-25 14:26:18', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.EmployeeServiceImpl:findcheckLogin');
INSERT INTO `t_systemlog` VALUES ('77', 'admin', '2016-02-25 14:26:18', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:getUserPermission');
INSERT INTO `t_systemlog` VALUES ('78', 'admin', '2016-02-25 14:26:18', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:getPermissionByResources');
INSERT INTO `t_systemlog` VALUES ('79', 'admin', '2016-02-25 14:26:19', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:getPermissionByResources');
INSERT INTO `t_systemlog` VALUES ('80', 'admin', '2016-02-25 14:26:19', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.MenuServiceImpl:getMenuResult');
INSERT INTO `t_systemlog` VALUES ('81', null, '2016-02-25 14:26:39', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.EmployeeServiceImpl:findcheckLogin');
INSERT INTO `t_systemlog` VALUES ('82', null, '2016-02-25 14:53:30', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.EmployeeServiceImpl:findcheckLogin');
INSERT INTO `t_systemlog` VALUES ('83', null, '2016-02-25 14:53:44', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.EmployeeServiceImpl:findcheckLogin');
INSERT INTO `t_systemlog` VALUES ('84', null, '2016-02-25 15:37:35', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.EmployeeServiceImpl:findcheckLogin');
INSERT INTO `t_systemlog` VALUES ('85', 'admin', '2016-02-25 15:37:49', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.EmployeeServiceImpl:findcheckLogin');
INSERT INTO `t_systemlog` VALUES ('86', 'admin', '2016-02-25 15:37:49', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:getUserPermission');
INSERT INTO `t_systemlog` VALUES ('87', 'admin', '2016-02-25 15:37:49', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:getPermissionByResources');
INSERT INTO `t_systemlog` VALUES ('88', 'admin', '2016-02-25 15:37:51', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:getPermissionByResources');
INSERT INTO `t_systemlog` VALUES ('89', 'admin', '2016-02-25 15:37:51', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.MenuServiceImpl:getMenuResult');
INSERT INTO `t_systemlog` VALUES ('90', 'admin', '2016-02-25 15:38:47', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.UserServiceImpl:findcheckLogin');
INSERT INTO `t_systemlog` VALUES ('91', null, '2016-02-25 15:47:20', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.UserServiceImpl:findcheckLogin');
INSERT INTO `t_systemlog` VALUES ('92', null, '2016-02-25 15:47:24', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.UserServiceImpl:findcheckLogin');
INSERT INTO `t_systemlog` VALUES ('93', null, '2016-02-25 15:47:26', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.UserServiceImpl:findcheckLogin');
INSERT INTO `t_systemlog` VALUES ('94', null, '2016-02-25 15:47:31', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.UserServiceImpl:findcheckLogin');
INSERT INTO `t_systemlog` VALUES ('95', null, '2016-02-25 15:47:47', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.UserServiceImpl:findcheckLogin');
INSERT INTO `t_systemlog` VALUES ('96', null, '2016-02-29 14:20:31', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:getByAdType');
INSERT INTO `t_systemlog` VALUES ('97', null, '2016-02-29 14:20:31', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('98', null, '2016-02-29 14:20:31', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.EmployeeServiceImpl:findByCookie');
INSERT INTO `t_systemlog` VALUES ('99', null, '2016-02-29 14:20:31', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.EmployeeServiceImpl:findByCookie');
INSERT INTO `t_systemlog` VALUES ('100', null, '2016-02-29 14:53:34', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:getByAdType');
INSERT INTO `t_systemlog` VALUES ('101', null, '2016-02-29 14:53:34', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('102', null, '2016-02-29 14:54:54', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:getByAdType');
INSERT INTO `t_systemlog` VALUES ('103', null, '2016-02-29 14:54:54', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('104', null, '2016-02-29 14:55:19', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:getByAdType');
INSERT INTO `t_systemlog` VALUES ('105', null, '2016-02-29 14:55:19', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('106', null, '2016-02-29 14:58:58', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:getByAdType');
INSERT INTO `t_systemlog` VALUES ('107', null, '2016-02-29 14:58:58', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('108', null, '2016-02-29 14:58:58', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:getByGoodsType');
INSERT INTO `t_systemlog` VALUES ('109', null, '2016-02-29 15:01:14', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:getByAdType');
INSERT INTO `t_systemlog` VALUES ('110', null, '2016-02-29 15:01:14', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('111', null, '2016-02-29 15:01:14', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:getByGoodsType');
INSERT INTO `t_systemlog` VALUES ('112', null, '2016-02-29 15:01:59', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:getByAdType');
INSERT INTO `t_systemlog` VALUES ('113', null, '2016-02-29 15:01:59', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('114', null, '2016-02-29 15:01:59', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:getByGoodsType');
INSERT INTO `t_systemlog` VALUES ('115', null, '2016-02-29 15:03:10', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:getByAdType');
INSERT INTO `t_systemlog` VALUES ('116', null, '2016-02-29 15:03:10', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('117', null, '2016-02-29 15:03:10', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:getByGoodsType');
INSERT INTO `t_systemlog` VALUES ('118', null, '2016-02-29 15:04:24', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:getByAdType');
INSERT INTO `t_systemlog` VALUES ('119', null, '2016-02-29 15:04:24', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('120', null, '2016-02-29 15:04:24', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:getByGoodsType');
INSERT INTO `t_systemlog` VALUES ('121', null, '2016-02-29 15:22:41', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:getByAdType');
INSERT INTO `t_systemlog` VALUES ('122', null, '2016-02-29 15:22:41', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('123', null, '2016-02-29 15:22:41', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:getByGoodsType');
INSERT INTO `t_systemlog` VALUES ('124', null, '2016-02-29 15:22:41', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:getByAd');
INSERT INTO `t_systemlog` VALUES ('125', null, '2016-02-29 15:22:41', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:getByAd');
INSERT INTO `t_systemlog` VALUES ('126', null, '2016-02-29 15:22:41', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:getByAd');
INSERT INTO `t_systemlog` VALUES ('127', null, '2016-02-29 15:22:41', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:getByGoodsType');
INSERT INTO `t_systemlog` VALUES ('128', null, '2016-02-29 15:22:41', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:getByAd');
INSERT INTO `t_systemlog` VALUES ('129', null, '2016-02-29 15:22:41', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:getByAd');
INSERT INTO `t_systemlog` VALUES ('130', null, '2016-02-29 15:22:41', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:getByAd');
INSERT INTO `t_systemlog` VALUES ('131', null, '2016-02-29 15:22:41', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:getByGoodsType');
INSERT INTO `t_systemlog` VALUES ('132', null, '2016-02-29 15:22:41', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:getByAd');
INSERT INTO `t_systemlog` VALUES ('133', null, '2016-02-29 15:22:41', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:getByAd');
INSERT INTO `t_systemlog` VALUES ('134', null, '2016-02-29 15:22:41', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:getByAd');
INSERT INTO `t_systemlog` VALUES ('135', null, '2016-02-29 16:16:32', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:getBanner');
INSERT INTO `t_systemlog` VALUES ('136', null, '2016-02-29 16:29:07', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:getBanner');
INSERT INTO `t_systemlog` VALUES ('137', null, '2016-02-29 16:29:07', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:getByGoodsType');
INSERT INTO `t_systemlog` VALUES ('138', null, '2016-02-29 16:29:30', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:getBanner');
INSERT INTO `t_systemlog` VALUES ('139', null, '2016-02-29 16:29:30', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:getByGoodsType');
INSERT INTO `t_systemlog` VALUES ('140', null, '2016-02-29 16:29:30', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:getByAd');
INSERT INTO `t_systemlog` VALUES ('141', null, '2016-02-29 16:29:30', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:getByAd');
INSERT INTO `t_systemlog` VALUES ('142', null, '2016-02-29 16:29:30', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:getByAd');
INSERT INTO `t_systemlog` VALUES ('143', null, '2016-02-29 16:29:30', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:getByAd');
INSERT INTO `t_systemlog` VALUES ('144', null, '2016-02-29 16:29:30', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:getByAd');
INSERT INTO `t_systemlog` VALUES ('145', null, '2016-02-29 16:35:18', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:getBanner');
INSERT INTO `t_systemlog` VALUES ('146', null, '2016-02-29 16:35:18', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:getByGoodsType');
INSERT INTO `t_systemlog` VALUES ('147', null, '2016-02-29 16:35:18', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:getByAd');
INSERT INTO `t_systemlog` VALUES ('148', null, '2016-02-29 16:35:18', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:getByAd');
INSERT INTO `t_systemlog` VALUES ('149', null, '2016-02-29 16:35:18', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:getByAd');
INSERT INTO `t_systemlog` VALUES ('150', null, '2016-02-29 16:35:18', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:getByAd');
INSERT INTO `t_systemlog` VALUES ('151', null, '2016-02-29 16:35:18', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:getByAd');
INSERT INTO `t_systemlog` VALUES ('152', null, '2016-02-29 16:37:48', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:getBanner');
INSERT INTO `t_systemlog` VALUES ('153', null, '2016-02-29 16:37:48', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:getByGoodsType');
INSERT INTO `t_systemlog` VALUES ('154', null, '2016-02-29 16:37:48', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:getByAd');
INSERT INTO `t_systemlog` VALUES ('155', null, '2016-02-29 16:37:48', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:getByAd');
INSERT INTO `t_systemlog` VALUES ('156', null, '2016-02-29 16:37:48', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:getByAd');
INSERT INTO `t_systemlog` VALUES ('157', null, '2016-02-29 16:37:48', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:getByAd');
INSERT INTO `t_systemlog` VALUES ('158', null, '2016-02-29 16:37:48', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:getByAd');
INSERT INTO `t_systemlog` VALUES ('159', null, '2016-02-29 16:38:13', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:getBanner');
INSERT INTO `t_systemlog` VALUES ('160', null, '2016-02-29 16:38:13', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:getByGoodsType');
INSERT INTO `t_systemlog` VALUES ('161', null, '2016-02-29 16:38:13', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:getByAd');
INSERT INTO `t_systemlog` VALUES ('162', null, '2016-02-29 16:38:13', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:getByAd');
INSERT INTO `t_systemlog` VALUES ('163', null, '2016-02-29 16:38:13', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:getByAd');
INSERT INTO `t_systemlog` VALUES ('164', null, '2016-02-29 16:38:13', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:getByAd');
INSERT INTO `t_systemlog` VALUES ('165', null, '2016-02-29 16:38:13', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:getByAd');
INSERT INTO `t_systemlog` VALUES ('166', null, '2016-02-29 16:49:24', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:getBanner');
INSERT INTO `t_systemlog` VALUES ('167', null, '2016-02-29 16:49:24', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:getByGoodsType');
INSERT INTO `t_systemlog` VALUES ('168', null, '2016-02-29 16:49:24', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:getByAd');
INSERT INTO `t_systemlog` VALUES ('169', null, '2016-02-29 16:49:24', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:getByAd');
INSERT INTO `t_systemlog` VALUES ('170', null, '2016-02-29 16:49:24', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:getByAd');
INSERT INTO `t_systemlog` VALUES ('171', null, '2016-02-29 16:49:24', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:getByAd');
INSERT INTO `t_systemlog` VALUES ('172', null, '2016-02-29 16:49:24', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:getByAd');
INSERT INTO `t_systemlog` VALUES ('173', null, '2016-02-29 16:55:07', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:getBanner');
INSERT INTO `t_systemlog` VALUES ('174', null, '2016-02-29 16:55:07', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('175', null, '2016-02-29 16:55:07', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:getByGoodsType');
INSERT INTO `t_systemlog` VALUES ('176', null, '2016-02-29 16:55:07', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:getByAd');
INSERT INTO `t_systemlog` VALUES ('177', null, '2016-02-29 16:55:07', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:getByAd');
INSERT INTO `t_systemlog` VALUES ('178', null, '2016-02-29 16:55:07', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:getByAd');
INSERT INTO `t_systemlog` VALUES ('179', null, '2016-02-29 16:55:07', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:getByAd');
INSERT INTO `t_systemlog` VALUES ('180', null, '2016-02-29 16:55:07', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:getByAd');
INSERT INTO `t_systemlog` VALUES ('181', null, '2016-02-29 16:55:07', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:getByGoodsType');
INSERT INTO `t_systemlog` VALUES ('182', null, '2016-02-29 16:55:07', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:getByAd');
INSERT INTO `t_systemlog` VALUES ('183', null, '2016-02-29 16:55:07', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:getByAd');
INSERT INTO `t_systemlog` VALUES ('184', null, '2016-02-29 16:55:07', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:getByAd');
INSERT INTO `t_systemlog` VALUES ('185', null, '2016-02-29 16:55:07', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:getByAd');
INSERT INTO `t_systemlog` VALUES ('186', null, '2016-02-29 16:55:07', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:getByAd');
INSERT INTO `t_systemlog` VALUES ('187', null, '2016-02-29 16:55:07', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:getByGoodsType');
INSERT INTO `t_systemlog` VALUES ('188', null, '2016-02-29 16:55:07', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:getByAd');
INSERT INTO `t_systemlog` VALUES ('189', null, '2016-02-29 16:55:07', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:getByAd');
INSERT INTO `t_systemlog` VALUES ('190', null, '2016-02-29 16:55:08', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:getByAd');
INSERT INTO `t_systemlog` VALUES ('191', null, '2016-02-29 16:55:08', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:getByAd');
INSERT INTO `t_systemlog` VALUES ('192', null, '2016-02-29 16:55:08', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:getByAd');
INSERT INTO `t_systemlog` VALUES ('193', null, '2016-02-29 16:59:48', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:getBanner');
INSERT INTO `t_systemlog` VALUES ('194', null, '2016-02-29 16:59:48', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('195', null, '2016-02-29 16:59:48', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:getByGoodsType');
INSERT INTO `t_systemlog` VALUES ('196', null, '2016-02-29 16:59:48', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:getByAd');
INSERT INTO `t_systemlog` VALUES ('197', null, '2016-02-29 16:59:48', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:getByAd');
INSERT INTO `t_systemlog` VALUES ('198', null, '2016-02-29 16:59:48', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:getByAd');
INSERT INTO `t_systemlog` VALUES ('199', null, '2016-02-29 16:59:48', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:getByAd');
INSERT INTO `t_systemlog` VALUES ('200', null, '2016-02-29 16:59:48', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:getByAd');
INSERT INTO `t_systemlog` VALUES ('201', null, '2016-02-29 16:59:48', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:getByGoodsType');
INSERT INTO `t_systemlog` VALUES ('202', null, '2016-02-29 16:59:48', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:getByAd');
INSERT INTO `t_systemlog` VALUES ('203', null, '2016-02-29 16:59:48', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:getByAd');
INSERT INTO `t_systemlog` VALUES ('204', null, '2016-02-29 16:59:48', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:getByAd');
INSERT INTO `t_systemlog` VALUES ('205', null, '2016-02-29 16:59:49', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:getByAd');
INSERT INTO `t_systemlog` VALUES ('206', null, '2016-02-29 16:59:49', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:getByAd');
INSERT INTO `t_systemlog` VALUES ('207', null, '2016-02-29 16:59:49', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:getByGoodsType');
INSERT INTO `t_systemlog` VALUES ('208', null, '2016-02-29 16:59:49', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:getByAd');
INSERT INTO `t_systemlog` VALUES ('209', null, '2016-02-29 16:59:49', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:getByAd');
INSERT INTO `t_systemlog` VALUES ('210', null, '2016-02-29 16:59:49', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:getByAd');
INSERT INTO `t_systemlog` VALUES ('211', null, '2016-02-29 16:59:49', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:getByAd');
INSERT INTO `t_systemlog` VALUES ('212', null, '2016-02-29 16:59:49', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:getByAd');
INSERT INTO `t_systemlog` VALUES ('213', null, '2016-02-29 17:00:05', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:getBanner');
INSERT INTO `t_systemlog` VALUES ('214', null, '2016-02-29 17:00:05', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:getByGoodsType');
INSERT INTO `t_systemlog` VALUES ('215', null, '2016-02-29 17:00:05', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:getByAd');
INSERT INTO `t_systemlog` VALUES ('216', null, '2016-02-29 17:00:05', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:getByAd');
INSERT INTO `t_systemlog` VALUES ('217', null, '2016-02-29 17:00:05', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:getByAd');
INSERT INTO `t_systemlog` VALUES ('218', null, '2016-02-29 17:00:05', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:getByAd');
INSERT INTO `t_systemlog` VALUES ('219', null, '2016-02-29 17:00:05', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:getByAd');
INSERT INTO `t_systemlog` VALUES ('220', null, '2016-02-29 17:08:11', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:getBanner');
INSERT INTO `t_systemlog` VALUES ('221', null, '2016-02-29 17:08:11', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:getByGoodsType');
INSERT INTO `t_systemlog` VALUES ('222', null, '2016-02-29 17:13:41', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:getBanner');
INSERT INTO `t_systemlog` VALUES ('223', null, '2016-02-29 17:13:41', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:getByGoodsType');
INSERT INTO `t_systemlog` VALUES ('224', null, '2016-02-29 17:14:31', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:getBanner');
INSERT INTO `t_systemlog` VALUES ('225', null, '2016-02-29 17:14:31', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:getByGoodsType');
INSERT INTO `t_systemlog` VALUES ('226', null, '2016-02-29 17:14:31', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:getByAd');
INSERT INTO `t_systemlog` VALUES ('227', null, '2016-02-29 17:14:31', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:getByAd');
INSERT INTO `t_systemlog` VALUES ('228', null, '2016-02-29 17:14:31', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:getByAd');
INSERT INTO `t_systemlog` VALUES ('229', null, '2016-03-02 17:43:29', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:get');
INSERT INTO `t_systemlog` VALUES ('230', null, '2016-03-02 17:43:29', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.WebpageServiceImpl:get');
INSERT INTO `t_systemlog` VALUES ('231', null, '2016-03-02 17:44:06', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:get');
INSERT INTO `t_systemlog` VALUES ('232', null, '2016-03-02 17:44:06', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.WebpageServiceImpl:get');
INSERT INTO `t_systemlog` VALUES ('233', null, '2016-03-02 17:44:30', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:get');
INSERT INTO `t_systemlog` VALUES ('234', null, '2016-03-02 17:44:30', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.WebpageServiceImpl:get');
INSERT INTO `t_systemlog` VALUES ('235', null, '2016-03-02 17:45:12', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:get');
INSERT INTO `t_systemlog` VALUES ('236', null, '2016-03-02 17:45:12', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.WebpageServiceImpl:get');
INSERT INTO `t_systemlog` VALUES ('237', null, '2016-03-02 17:48:49', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:get');
INSERT INTO `t_systemlog` VALUES ('238', null, '2016-03-02 17:48:49', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.WebpageServiceImpl:get');
INSERT INTO `t_systemlog` VALUES ('239', null, '2016-03-02 17:57:12', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:get');
INSERT INTO `t_systemlog` VALUES ('240', null, '2016-03-02 17:57:12', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.WebpageServiceImpl:get');
INSERT INTO `t_systemlog` VALUES ('241', null, '2016-03-02 17:58:47', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:get');
INSERT INTO `t_systemlog` VALUES ('242', null, '2016-03-02 17:58:47', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.WebpageServiceImpl:get');
INSERT INTO `t_systemlog` VALUES ('243', null, '2016-03-03 11:33:05', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:getBanner');
INSERT INTO `t_systemlog` VALUES ('244', null, '2016-03-03 11:33:05', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('245', null, '2016-03-03 11:33:05', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:getByGoodsType');
INSERT INTO `t_systemlog` VALUES ('246', null, '2016-03-03 11:33:05', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:getByAd');
INSERT INTO `t_systemlog` VALUES ('247', null, '2016-03-03 11:33:05', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:getByAd');
INSERT INTO `t_systemlog` VALUES ('248', null, '2016-03-03 11:33:05', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:getByAd');
INSERT INTO `t_systemlog` VALUES ('249', null, '2016-03-03 11:33:05', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:getByGoodsType');
INSERT INTO `t_systemlog` VALUES ('250', null, '2016-03-03 11:33:05', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:getByAd');
INSERT INTO `t_systemlog` VALUES ('251', null, '2016-03-03 11:33:05', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:getByAd');
INSERT INTO `t_systemlog` VALUES ('252', null, '2016-03-03 11:33:05', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:getByAd');
INSERT INTO `t_systemlog` VALUES ('253', null, '2016-03-03 11:33:05', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:getByGoodsType');
INSERT INTO `t_systemlog` VALUES ('254', null, '2016-03-03 11:33:05', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:getByAd');
INSERT INTO `t_systemlog` VALUES ('255', null, '2016-03-03 11:33:05', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:getByAd');
INSERT INTO `t_systemlog` VALUES ('256', null, '2016-03-03 11:33:05', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:getByAd');
INSERT INTO `t_systemlog` VALUES ('257', null, '2016-03-03 11:35:20', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:getBanner');
INSERT INTO `t_systemlog` VALUES ('258', null, '2016-03-03 11:35:20', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('259', null, '2016-03-03 11:35:20', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:getByGoodsType');
INSERT INTO `t_systemlog` VALUES ('260', null, '2016-03-03 11:35:20', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:getByAd');
INSERT INTO `t_systemlog` VALUES ('261', null, '2016-03-03 11:35:20', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:getByAd');
INSERT INTO `t_systemlog` VALUES ('262', null, '2016-03-03 11:35:20', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:getByAd');
INSERT INTO `t_systemlog` VALUES ('263', null, '2016-03-03 11:35:20', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:getByGoodsType');
INSERT INTO `t_systemlog` VALUES ('264', null, '2016-03-03 11:35:20', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:getByAd');
INSERT INTO `t_systemlog` VALUES ('265', null, '2016-03-03 11:35:20', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:getByAd');
INSERT INTO `t_systemlog` VALUES ('266', null, '2016-03-03 11:35:20', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:getByAd');
INSERT INTO `t_systemlog` VALUES ('267', null, '2016-03-03 11:35:20', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:getByGoodsType');
INSERT INTO `t_systemlog` VALUES ('268', null, '2016-03-03 11:35:20', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:getByAd');
INSERT INTO `t_systemlog` VALUES ('269', null, '2016-03-03 11:35:20', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:getByAd');
INSERT INTO `t_systemlog` VALUES ('270', null, '2016-03-03 11:35:20', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:getByAd');
INSERT INTO `t_systemlog` VALUES ('271', null, '2016-03-03 11:38:42', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:getBanner');
INSERT INTO `t_systemlog` VALUES ('272', null, '2016-03-03 11:38:42', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('273', null, '2016-03-03 11:38:42', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:getByGoodsType');
INSERT INTO `t_systemlog` VALUES ('274', null, '2016-03-03 11:38:42', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:getByAd');
INSERT INTO `t_systemlog` VALUES ('275', null, '2016-03-03 11:38:42', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:getByAd');
INSERT INTO `t_systemlog` VALUES ('276', null, '2016-03-03 11:38:42', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:getByAd');
INSERT INTO `t_systemlog` VALUES ('277', null, '2016-03-03 11:38:42', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:getByGoodsType');
INSERT INTO `t_systemlog` VALUES ('278', null, '2016-03-03 11:38:42', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:getByAd');
INSERT INTO `t_systemlog` VALUES ('279', null, '2016-03-03 11:38:42', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:getByAd');
INSERT INTO `t_systemlog` VALUES ('280', null, '2016-03-03 11:38:42', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:getByAd');
INSERT INTO `t_systemlog` VALUES ('281', null, '2016-03-03 11:38:42', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:getByGoodsType');
INSERT INTO `t_systemlog` VALUES ('282', null, '2016-03-03 11:38:42', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:getByAd');
INSERT INTO `t_systemlog` VALUES ('283', null, '2016-03-03 11:38:42', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:getByAd');
INSERT INTO `t_systemlog` VALUES ('284', null, '2016-03-03 11:38:42', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:getByAd');
INSERT INTO `t_systemlog` VALUES ('285', null, '2016-03-03 18:10:42', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.DetailsImageServiceImpl:getByGoods');
INSERT INTO `t_systemlog` VALUES ('286', null, '2016-03-03 18:11:26', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.DetailsImageServiceImpl:getByGoods');
INSERT INTO `t_systemlog` VALUES ('287', null, '2016-03-03 18:11:55', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.DetailsImageServiceImpl:getByGoods');
INSERT INTO `t_systemlog` VALUES ('288', null, '2016-03-03 18:12:08', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.DetailsImageServiceImpl:getByGoods');
INSERT INTO `t_systemlog` VALUES ('289', null, '2016-03-03 18:12:31', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.DetailsImageServiceImpl:getByGoods');
INSERT INTO `t_systemlog` VALUES ('290', null, '2016-03-03 18:13:19', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.DetailsImageServiceImpl:getByGoods');
INSERT INTO `t_systemlog` VALUES ('291', null, '2016-03-03 18:13:39', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.DetailsImageServiceImpl:getByGoods');
INSERT INTO `t_systemlog` VALUES ('292', null, '2016-03-03 18:16:06', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.DetailsImageServiceImpl:getByGoods');
INSERT INTO `t_systemlog` VALUES ('293', null, '2016-03-03 23:43:44', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.DetailsImageServiceImpl:getByGoods');
INSERT INTO `t_systemlog` VALUES ('294', null, '2016-03-03 23:43:45', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.EmployeeServiceImpl:findByCookie');
INSERT INTO `t_systemlog` VALUES ('295', 'admin', '2016-03-03 23:43:45', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:getUserPermission');
INSERT INTO `t_systemlog` VALUES ('296', null, '2016-03-03 23:49:18', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.DetailsImageServiceImpl:getByGoods');
INSERT INTO `t_systemlog` VALUES ('297', null, '2016-03-03 23:50:32', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.DetailsImageServiceImpl:getByGoods');
INSERT INTO `t_systemlog` VALUES ('298', null, '2016-03-03 23:51:00', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.DetailsImageServiceImpl:getByGoods');
INSERT INTO `t_systemlog` VALUES ('299', null, '2016-03-04 10:50:41', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getParentType');
INSERT INTO `t_systemlog` VALUES ('300', null, '2016-03-04 10:50:42', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.EmployeeServiceImpl:findByCookie');
INSERT INTO `t_systemlog` VALUES ('301', 'admin', '2016-03-04 10:50:42', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:getUserPermission');
INSERT INTO `t_systemlog` VALUES ('302', null, '2016-03-04 11:34:39', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getParentType');
INSERT INTO `t_systemlog` VALUES ('303', null, '2016-03-04 11:34:39', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getItemByParent');
INSERT INTO `t_systemlog` VALUES ('304', null, '2016-03-04 11:35:35', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.DetailsImageServiceImpl:getByGoods');
INSERT INTO `t_systemlog` VALUES ('305', null, '2016-03-04 11:35:43', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.DetailsImageServiceImpl:getByGoods');
INSERT INTO `t_systemlog` VALUES ('306', null, '2016-03-04 11:35:52', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:getBanner');
INSERT INTO `t_systemlog` VALUES ('307', null, '2016-03-04 11:35:52', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('308', null, '2016-03-04 11:35:52', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:getByGoodsType');
INSERT INTO `t_systemlog` VALUES ('309', null, '2016-03-04 11:35:52', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:getByAd');
INSERT INTO `t_systemlog` VALUES ('310', null, '2016-03-04 11:35:52', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:getByAd');
INSERT INTO `t_systemlog` VALUES ('311', null, '2016-03-04 11:35:52', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:getByAd');
INSERT INTO `t_systemlog` VALUES ('312', null, '2016-03-04 11:35:52', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:getByGoodsType');
INSERT INTO `t_systemlog` VALUES ('313', null, '2016-03-04 11:35:52', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:getByAd');
INSERT INTO `t_systemlog` VALUES ('314', null, '2016-03-04 11:35:52', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:getByAd');
INSERT INTO `t_systemlog` VALUES ('315', null, '2016-03-04 11:35:52', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:getByAd');
INSERT INTO `t_systemlog` VALUES ('316', null, '2016-03-04 11:35:52', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:getByGoodsType');
INSERT INTO `t_systemlog` VALUES ('317', null, '2016-03-04 11:35:52', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:getByAd');
INSERT INTO `t_systemlog` VALUES ('318', null, '2016-03-04 11:35:52', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:getByAd');
INSERT INTO `t_systemlog` VALUES ('319', null, '2016-03-04 11:35:52', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:getByAd');
INSERT INTO `t_systemlog` VALUES ('320', null, '2016-03-04 11:37:02', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getParentType');
INSERT INTO `t_systemlog` VALUES ('321', null, '2016-03-04 11:37:02', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getItemByParent');
INSERT INTO `t_systemlog` VALUES ('322', null, '2016-03-04 11:41:28', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getParentType');
INSERT INTO `t_systemlog` VALUES ('323', null, '2016-03-04 11:41:28', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getItemByParent');
INSERT INTO `t_systemlog` VALUES ('324', null, '2016-03-04 11:41:50', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getParentType');
INSERT INTO `t_systemlog` VALUES ('325', null, '2016-03-04 11:41:50', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getItemByParent');
INSERT INTO `t_systemlog` VALUES ('326', null, '2016-03-04 11:44:49', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getParentType');
INSERT INTO `t_systemlog` VALUES ('327', null, '2016-03-04 11:44:49', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getItemByParent');
INSERT INTO `t_systemlog` VALUES ('328', null, '2016-03-04 11:48:45', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getParentType');
INSERT INTO `t_systemlog` VALUES ('329', null, '2016-03-04 11:48:45', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getItemByParent');
INSERT INTO `t_systemlog` VALUES ('330', null, '2016-03-04 14:04:43', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getParentType');
INSERT INTO `t_systemlog` VALUES ('331', null, '2016-03-04 14:04:43', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getItemByParent');
INSERT INTO `t_systemlog` VALUES ('332', null, '2016-03-04 14:04:55', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getParentType');
INSERT INTO `t_systemlog` VALUES ('333', null, '2016-03-04 14:04:55', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getItemByParent');
INSERT INTO `t_systemlog` VALUES ('334', null, '2016-03-04 14:07:26', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getParentType');
INSERT INTO `t_systemlog` VALUES ('335', null, '2016-03-04 14:07:26', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getItemByParent');
INSERT INTO `t_systemlog` VALUES ('336', null, '2016-03-04 14:08:16', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getParentType');
INSERT INTO `t_systemlog` VALUES ('337', null, '2016-03-04 14:08:16', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getItemByParent');
INSERT INTO `t_systemlog` VALUES ('338', null, '2016-03-04 14:26:27', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getParentType');
INSERT INTO `t_systemlog` VALUES ('339', null, '2016-03-04 14:26:28', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getItemByParent');
INSERT INTO `t_systemlog` VALUES ('340', null, '2016-03-04 14:31:21', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getParentType');
INSERT INTO `t_systemlog` VALUES ('341', null, '2016-03-04 14:31:21', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getItemByParent');
INSERT INTO `t_systemlog` VALUES ('342', null, '2016-03-04 14:39:24', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getParentType');
INSERT INTO `t_systemlog` VALUES ('343', null, '2016-03-04 14:39:24', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getItemByParent');
INSERT INTO `t_systemlog` VALUES ('344', null, '2016-03-04 14:42:13', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getParentType');
INSERT INTO `t_systemlog` VALUES ('345', null, '2016-03-04 14:42:13', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getItemByParent');
INSERT INTO `t_systemlog` VALUES ('346', null, '2016-03-04 14:48:41', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getParentType');
INSERT INTO `t_systemlog` VALUES ('347', null, '2016-03-04 15:00:48', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getParentType');
INSERT INTO `t_systemlog` VALUES ('348', null, '2016-03-04 15:00:48', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getItemByParent');
INSERT INTO `t_systemlog` VALUES ('349', null, '2016-03-04 15:11:28', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getItemByParent');
INSERT INTO `t_systemlog` VALUES ('350', null, '2016-03-04 15:11:30', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getItemByParent');
INSERT INTO `t_systemlog` VALUES ('351', null, '2016-03-04 15:13:27', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getItemByParent');
INSERT INTO `t_systemlog` VALUES ('352', null, '2016-03-04 15:14:12', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getItemByParent');
INSERT INTO `t_systemlog` VALUES ('353', null, '2016-03-04 15:18:02', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getItemByParent');
INSERT INTO `t_systemlog` VALUES ('354', null, '2016-03-04 15:23:39', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getParentType');
INSERT INTO `t_systemlog` VALUES ('355', null, '2016-03-04 15:23:39', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getItemByParent');
INSERT INTO `t_systemlog` VALUES ('360', null, '2016-03-04 17:27:18', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.GoodsServiceImpl:queryMap');
INSERT INTO `t_systemlog` VALUES ('361', null, '2016-03-04 17:27:18', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:enterType');
INSERT INTO `t_systemlog` VALUES ('362', null, '2016-03-07 14:58:29', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:typesByParent');
INSERT INTO `t_systemlog` VALUES ('363', null, '2016-03-07 14:58:29', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.EmployeeServiceImpl:findByCookie');
INSERT INTO `t_systemlog` VALUES ('364', 'admin', '2016-03-07 14:58:29', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:getUserPermission');
INSERT INTO `t_systemlog` VALUES ('365', 'admin', '2016-03-07 14:59:51', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:typesByParent');
INSERT INTO `t_systemlog` VALUES ('366', 'admin', '2016-03-07 15:11:19', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:getBanner');
INSERT INTO `t_systemlog` VALUES ('367', 'admin', '2016-03-07 15:11:19', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('368', 'admin', '2016-03-07 15:11:19', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:getByGoodsType');
INSERT INTO `t_systemlog` VALUES ('369', 'admin', '2016-03-07 15:11:19', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:getByAd');
INSERT INTO `t_systemlog` VALUES ('370', 'admin', '2016-03-07 15:11:19', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:getByAd');
INSERT INTO `t_systemlog` VALUES ('371', 'admin', '2016-03-07 15:11:19', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:getByAd');
INSERT INTO `t_systemlog` VALUES ('372', 'admin', '2016-03-07 15:11:19', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:getByGoodsType');
INSERT INTO `t_systemlog` VALUES ('373', 'admin', '2016-03-07 15:11:19', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:getByAd');
INSERT INTO `t_systemlog` VALUES ('374', 'admin', '2016-03-07 15:11:19', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:getByAd');
INSERT INTO `t_systemlog` VALUES ('375', 'admin', '2016-03-07 15:11:19', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:getByAd');
INSERT INTO `t_systemlog` VALUES ('376', 'admin', '2016-03-07 15:11:19', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:getByGoodsType');
INSERT INTO `t_systemlog` VALUES ('377', 'admin', '2016-03-07 15:11:19', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:getByAd');
INSERT INTO `t_systemlog` VALUES ('378', 'admin', '2016-03-07 15:11:19', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:getByAd');
INSERT INTO `t_systemlog` VALUES ('379', 'admin', '2016-03-07 15:11:19', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:getByAd');
INSERT INTO `t_systemlog` VALUES ('380', 'admin', '2016-03-07 15:11:56', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:typesByParent');
INSERT INTO `t_systemlog` VALUES ('381', null, '2016-03-08 10:23:54', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.EmployeeServiceImpl:findByCookie');
INSERT INTO `t_systemlog` VALUES ('382', 'admin', '2016-03-08 10:23:54', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:getUserPermission');
INSERT INTO `t_systemlog` VALUES ('383', null, '2016-03-08 10:23:54', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.EmployeeServiceImpl:findByCookie');
INSERT INTO `t_systemlog` VALUES ('384', 'admin', '2016-03-08 10:23:54', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:getUserPermission');
INSERT INTO `t_systemlog` VALUES ('395', null, '2016-03-08 11:25:37', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:save');
INSERT INTO `t_systemlog` VALUES ('396', null, '2016-03-08 17:33:51', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:save');
INSERT INTO `t_systemlog` VALUES ('397', null, '2016-03-08 17:35:10', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:save');
INSERT INTO `t_systemlog` VALUES ('401', null, '2016-03-08 17:39:20', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreAuthServiceImpl:save');
INSERT INTO `t_systemlog` VALUES ('407', null, '2016-03-08 17:55:35', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreAuthServiceImpl:save');
INSERT INTO `t_systemlog` VALUES ('408', null, '2016-03-10 16:31:16', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.EmployeeServiceImpl:findByCookie');
INSERT INTO `t_systemlog` VALUES ('409', 'admin', '2016-03-10 16:31:16', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:getUserPermission');
INSERT INTO `t_systemlog` VALUES ('410', null, '2016-03-11 16:19:49', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.EmployeeServiceImpl:findByCookie');
INSERT INTO `t_systemlog` VALUES ('411', 'admin', '2016-03-11 16:19:49', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:getUserPermission');
INSERT INTO `t_systemlog` VALUES ('412', null, '2016-03-11 16:19:49', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.EmployeeServiceImpl:findByCookie');
INSERT INTO `t_systemlog` VALUES ('413', 'admin', '2016-03-11 16:19:49', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:getUserPermission');
INSERT INTO `t_systemlog` VALUES ('421', null, '2016-03-11 16:27:58', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.ProductOrderServiceImpl:submitOrder');
INSERT INTO `t_systemlog` VALUES ('422', null, '2016-03-14 09:27:25', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.EmployeeServiceImpl:findByCookie');
INSERT INTO `t_systemlog` VALUES ('423', 'admin', '2016-03-14 09:27:25', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:getUserPermission');
INSERT INTO `t_systemlog` VALUES ('424', 'admin', '2016-03-14 09:27:26', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.ProductOrderServiceImpl:submitOrder');
INSERT INTO `t_systemlog` VALUES ('425', 'admin', '2016-03-14 09:27:38', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.ProductOrderServiceImpl:submitOrder');
INSERT INTO `t_systemlog` VALUES ('426', 'admin', '2016-03-15 17:10:17', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.EmployeeServiceImpl:findcheckLogin');
INSERT INTO `t_systemlog` VALUES ('427', 'admin', '2016-03-15 17:10:17', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:getUserPermission');
INSERT INTO `t_systemlog` VALUES ('428', 'admin', '2016-03-15 17:10:17', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:getPermissionByResources');
INSERT INTO `t_systemlog` VALUES ('429', 'admin', '2016-03-15 17:10:18', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:getPermissionByResources');
INSERT INTO `t_systemlog` VALUES ('430', 'admin', '2016-03-15 17:10:18', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.MenuServiceImpl:getMenuResult');
INSERT INTO `t_systemlog` VALUES ('431', 'admin', '2016-03-16 10:03:51', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.EmployeeServiceImpl:findcheckLogin');
INSERT INTO `t_systemlog` VALUES ('432', 'admin', '2016-03-16 10:03:51', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:getUserPermission');
INSERT INTO `t_systemlog` VALUES ('433', 'admin', '2016-03-16 10:03:51', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:getPermissionByResources');
INSERT INTO `t_systemlog` VALUES ('434', 'admin', '2016-03-16 10:03:52', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:getPermissionByResources');
INSERT INTO `t_systemlog` VALUES ('435', 'admin', '2016-03-16 10:03:52', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.MenuServiceImpl:getMenuResult');
INSERT INTO `t_systemlog` VALUES ('436', 'admin', '2016-03-16 10:03:54', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('437', 'admin', '2016-03-16 10:03:54', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('438', 'admin', '2016-03-16 10:04:18', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('439', 'admin', '2016-03-16 10:04:18', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('440', 'admin', '2016-03-16 10:04:18', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('441', 'admin', '2016-03-16 10:04:18', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('442', 'admin', '2016-03-16 10:04:19', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('443', 'admin', '2016-03-16 10:04:19', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('444', 'admin', '2016-03-16 10:04:22', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('445', 'admin', '2016-03-16 10:04:22', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('446', 'admin', '2016-03-16 10:04:23', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('447', 'admin', '2016-03-16 10:04:23', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('448', 'admin', '2016-03-16 10:04:24', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('449', 'admin', '2016-03-16 10:04:24', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('450', 'admin', '2016-03-16 10:04:32', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('451', 'admin', '2016-03-16 10:04:32', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('452', 'admin', '2016-03-16 10:04:43', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('453', 'admin', '2016-03-16 10:04:43', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('454', 'admin', '2016-03-16 10:04:45', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('455', 'admin', '2016-03-16 10:04:46', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('456', 'admin', '2016-03-16 10:04:48', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('457', 'admin', '2016-03-16 10:04:48', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('458', 'admin', '2016-03-16 10:06:57', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:getPermissionByResources');
INSERT INTO `t_systemlog` VALUES ('459', 'admin', '2016-03-16 10:06:58', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:getPermissionByResources');
INSERT INTO `t_systemlog` VALUES ('460', 'admin', '2016-03-16 10:06:58', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.MenuServiceImpl:getMenuResult');
INSERT INTO `t_systemlog` VALUES ('461', 'admin', '2016-03-16 10:06:59', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('462', 'admin', '2016-03-16 10:06:59', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('463', 'admin', '2016-03-16 10:07:38', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('464', 'admin', '2016-03-16 10:07:38', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('465', 'admin', '2016-03-16 10:08:39', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:delete');
INSERT INTO `t_systemlog` VALUES ('466', 'admin', '2016-03-16 10:08:39', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('467', 'admin', '2016-03-16 10:08:39', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('468', 'admin', '2016-03-16 10:08:55', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('469', 'admin', '2016-03-16 10:08:55', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('470', 'admin', '2016-03-16 10:09:37', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('471', 'admin', '2016-03-16 10:09:37', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('472', 'admin', '2016-03-16 10:09:38', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('473', 'admin', '2016-03-16 10:09:38', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('474', 'admin', '2016-03-16 10:09:42', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('475', 'admin', '2016-03-16 10:09:42', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('476', 'admin', '2016-03-16 10:09:51', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('477', 'admin', '2016-03-16 10:09:51', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('478', 'admin', '2016-03-16 10:09:57', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('479', 'admin', '2016-03-16 10:09:57', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('480', 'admin', '2016-03-16 10:10:02', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('481', 'admin', '2016-03-16 10:10:02', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('482', null, '2016-03-16 10:24:26', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.EmployeeServiceImpl:findByCookie');
INSERT INTO `t_systemlog` VALUES ('483', 'admin', '2016-03-16 10:24:33', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.EmployeeServiceImpl:findcheckLogin');
INSERT INTO `t_systemlog` VALUES ('484', 'admin', '2016-03-16 10:24:33', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:getUserPermission');
INSERT INTO `t_systemlog` VALUES ('485', 'admin', '2016-03-16 10:24:33', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:getPermissionByResources');
INSERT INTO `t_systemlog` VALUES ('486', 'admin', '2016-03-16 10:24:34', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:getPermissionByResources');
INSERT INTO `t_systemlog` VALUES ('487', 'admin', '2016-03-16 10:24:34', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.MenuServiceImpl:getMenuResult');
INSERT INTO `t_systemlog` VALUES ('488', 'admin', '2016-03-16 10:24:54', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.RoleServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('489', 'admin', '2016-03-16 10:24:54', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:getAllPermission');
INSERT INTO `t_systemlog` VALUES ('490', 'admin', '2016-03-16 10:24:54', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:getAllPermission');
INSERT INTO `t_systemlog` VALUES ('491', 'admin', '2016-03-16 10:24:59', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.ResourceServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('492', 'admin', '2016-03-16 10:25:18', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('493', 'admin', '2016-03-16 10:25:18', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('494', 'admin', '2016-03-16 10:26:53', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:getAllPermission');
INSERT INTO `t_systemlog` VALUES ('495', 'admin', '2016-03-16 10:26:56', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:getAllPermission');
INSERT INTO `t_systemlog` VALUES ('496', 'admin', '2016-03-16 10:28:26', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.RoleServiceImpl:save');
INSERT INTO `t_systemlog` VALUES ('497', 'admin', '2016-03-16 10:28:27', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.RoleServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('498', 'admin', '2016-03-16 10:28:30', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.RoleServiceImpl:findPermissions');
INSERT INTO `t_systemlog` VALUES ('499', 'admin', '2016-03-16 10:28:30', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:getAllPermission');
INSERT INTO `t_systemlog` VALUES ('500', 'admin', '2016-03-16 10:28:41', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.RoleServiceImpl:findPermissions');
INSERT INTO `t_systemlog` VALUES ('501', 'admin', '2016-03-16 10:28:42', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:getAllPermission');
INSERT INTO `t_systemlog` VALUES ('502', 'admin', '2016-03-16 10:29:01', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.RoleServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('503', 'admin', '2016-03-16 10:29:01', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:getPermissionByResources');
INSERT INTO `t_systemlog` VALUES ('505', 'admin', '2016-03-16 10:30:03', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.RoleServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('506', 'admin', '2016-03-16 10:30:03', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:getPermissionByResources');
INSERT INTO `t_systemlog` VALUES ('508', 'admin', '2016-03-16 10:30:40', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:getPermissionByResources');
INSERT INTO `t_systemlog` VALUES ('510', 'admin', '2016-03-16 10:30:47', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:getPermissionByResources');
INSERT INTO `t_systemlog` VALUES ('512', 'admin', '2016-03-16 10:35:05', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.RoleServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('513', 'admin', '2016-03-16 10:35:05', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:getPermissionByResources');
INSERT INTO `t_systemlog` VALUES ('515', 'admin', '2016-03-16 10:35:23', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:getPermissionByResources');
INSERT INTO `t_systemlog` VALUES ('516', 'admin', '2016-03-16 10:35:24', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:getPermissionByResources');
INSERT INTO `t_systemlog` VALUES ('517', 'admin', '2016-03-16 10:35:24', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.MenuServiceImpl:getMenuResult');
INSERT INTO `t_systemlog` VALUES ('518', 'admin', '2016-03-16 10:35:32', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.RoleServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('519', 'admin', '2016-03-16 10:35:32', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:getPermissionByResources');
INSERT INTO `t_systemlog` VALUES ('521', 'admin', '2016-03-16 10:37:20', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.RoleServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('522', 'admin', '2016-03-16 10:37:20', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:getPermissionByResources');
INSERT INTO `t_systemlog` VALUES ('524', 'admin', '2016-03-16 10:37:53', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.RoleServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('525', 'admin', '2016-03-16 10:37:53', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:getPermissionByResources');
INSERT INTO `t_systemlog` VALUES ('527', 'admin', '2016-03-16 10:41:01', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.EmployeeServiceImpl:findcheckLogin');
INSERT INTO `t_systemlog` VALUES ('528', 'admin', '2016-03-16 10:41:01', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:getUserPermission');
INSERT INTO `t_systemlog` VALUES ('529', 'admin', '2016-03-16 10:41:02', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:getPermissionByResources');
INSERT INTO `t_systemlog` VALUES ('530', 'admin', '2016-03-16 10:41:02', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:getPermissionByResources');
INSERT INTO `t_systemlog` VALUES ('531', 'admin', '2016-03-16 10:41:02', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.MenuServiceImpl:getMenuResult');
INSERT INTO `t_systemlog` VALUES ('532', 'admin', '2016-03-16 10:41:05', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.RoleServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('533', 'admin', '2016-03-16 10:41:05', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:getPermissionByResources');
INSERT INTO `t_systemlog` VALUES ('535', 'admin', '2016-03-16 10:41:24', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:getPermissionByResources');
INSERT INTO `t_systemlog` VALUES ('537', null, '2016-03-16 10:51:42', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.EmployeeServiceImpl:findByCookie');
INSERT INTO `t_systemlog` VALUES ('538', null, '2016-03-16 10:51:53', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.EmployeeServiceImpl:findByCookie');
INSERT INTO `t_systemlog` VALUES ('539', null, '2016-03-16 10:51:55', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.EmployeeServiceImpl:findByCookie');
INSERT INTO `t_systemlog` VALUES ('540', null, '2016-03-16 10:51:59', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.EmployeeServiceImpl:findByCookie');
INSERT INTO `t_systemlog` VALUES ('541', 'admin', '2016-03-16 10:52:04', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.EmployeeServiceImpl:findcheckLogin');
INSERT INTO `t_systemlog` VALUES ('542', 'admin', '2016-03-16 10:52:04', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:getUserPermission');
INSERT INTO `t_systemlog` VALUES ('543', 'admin', '2016-03-16 10:52:05', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:getPermissionByResources');
INSERT INTO `t_systemlog` VALUES ('544', 'admin', '2016-03-16 10:52:05', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:getPermissionByResources');
INSERT INTO `t_systemlog` VALUES ('545', 'admin', '2016-03-16 10:52:05', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.MenuServiceImpl:getMenuResult');
INSERT INTO `t_systemlog` VALUES ('546', 'admin', '2016-03-16 10:52:08', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.RoleServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('547', 'admin', '2016-03-16 10:52:09', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.EmployeeServiceImpl:empQuery');
INSERT INTO `t_systemlog` VALUES ('548', 'admin', '2016-03-16 10:52:11', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.EmployeeServiceImpl:empQuery');
INSERT INTO `t_systemlog` VALUES ('550', 'admin', '2016-03-16 10:55:15', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:getPermissionByResources');
INSERT INTO `t_systemlog` VALUES ('551', 'admin', '2016-03-16 10:55:15', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:getPermissionByResources');
INSERT INTO `t_systemlog` VALUES ('552', 'admin', '2016-03-16 10:55:15', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.MenuServiceImpl:getMenuResult');
INSERT INTO `t_systemlog` VALUES ('553', 'admin', '2016-03-16 10:55:17', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.RoleServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('554', 'admin', '2016-03-16 10:55:17', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.EmployeeServiceImpl:empQuery');
INSERT INTO `t_systemlog` VALUES ('559', 'admin', '2016-03-16 11:04:18', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:getPermissionByResources');
INSERT INTO `t_systemlog` VALUES ('560', 'admin', '2016-03-16 11:04:18', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:getPermissionByResources');
INSERT INTO `t_systemlog` VALUES ('561', 'admin', '2016-03-16 11:04:18', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.MenuServiceImpl:getMenuResult');
INSERT INTO `t_systemlog` VALUES ('562', 'admin', '2016-03-16 11:04:20', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.RoleServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('563', 'admin', '2016-03-16 11:04:20', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.EmployeeServiceImpl:empQuery');
INSERT INTO `t_systemlog` VALUES ('564', 'admin', '2016-03-16 11:04:33', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.EmployeeServiceImpl:save');
INSERT INTO `t_systemlog` VALUES ('565', 'admin', '2016-03-16 11:04:34', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.EmployeeServiceImpl:empQuery');
INSERT INTO `t_systemlog` VALUES ('566', 'admin', '2016-03-16 11:04:44', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.EmployeeServiceImpl:empQuery');
INSERT INTO `t_systemlog` VALUES ('567', 'admin', '2016-03-16 11:10:53', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.EmployeeServiceImpl:empQuery');
INSERT INTO `t_systemlog` VALUES ('568', 'admin', '2016-03-16 11:16:08', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.EmployeeServiceImpl:empQuery');
INSERT INTO `t_systemlog` VALUES ('569', 'admin', '2016-03-16 11:16:16', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.ResourceServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('570', 'admin', '2016-03-16 11:17:20', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:getPermissionByResources');
INSERT INTO `t_systemlog` VALUES ('571', 'admin', '2016-03-16 11:17:21', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:getPermissionByResources');
INSERT INTO `t_systemlog` VALUES ('572', 'admin', '2016-03-16 11:17:21', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.MenuServiceImpl:getMenuResult');
INSERT INTO `t_systemlog` VALUES ('573', 'admin', '2016-03-16 11:17:27', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.RoleServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('574', 'admin', '2016-03-16 11:17:27', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.EmployeeServiceImpl:empQuery');
INSERT INTO `t_systemlog` VALUES ('575', 'admin', '2016-03-16 11:19:48', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:getPermissionByResources');
INSERT INTO `t_systemlog` VALUES ('576', 'admin', '2016-03-16 11:19:48', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:getPermissionByResources');
INSERT INTO `t_systemlog` VALUES ('577', 'admin', '2016-03-16 11:19:48', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.MenuServiceImpl:getMenuResult');
INSERT INTO `t_systemlog` VALUES ('578', 'admin', '2016-03-16 11:19:50', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.RoleServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('579', 'admin', '2016-03-16 11:19:50', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.EmployeeServiceImpl:empQuery');
INSERT INTO `t_systemlog` VALUES ('580', 'admin', '2016-03-16 11:19:52', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.EmployeeServiceImpl:empQuery');
INSERT INTO `t_systemlog` VALUES ('581', 'admin', '2016-03-16 11:19:53', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.EmployeeServiceImpl:empQuery');
INSERT INTO `t_systemlog` VALUES ('582', 'admin', '2016-03-16 11:19:54', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.EmployeeServiceImpl:empQuery');
INSERT INTO `t_systemlog` VALUES ('583', 'admin', '2016-03-16 11:19:54', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.EmployeeServiceImpl:empQuery');
INSERT INTO `t_systemlog` VALUES ('584', 'admin', '2016-03-16 11:19:54', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.EmployeeServiceImpl:empQuery');
INSERT INTO `t_systemlog` VALUES ('585', 'admin', '2016-03-16 11:19:54', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.EmployeeServiceImpl:empQuery');
INSERT INTO `t_systemlog` VALUES ('586', 'admin', '2016-03-16 11:19:54', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.EmployeeServiceImpl:empQuery');
INSERT INTO `t_systemlog` VALUES ('587', 'admin', '2016-03-16 11:19:55', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.EmployeeServiceImpl:empQuery');
INSERT INTO `t_systemlog` VALUES ('588', 'admin', '2016-03-16 11:19:55', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.EmployeeServiceImpl:empQuery');
INSERT INTO `t_systemlog` VALUES ('589', 'admin', '2016-03-16 11:48:42', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.RoleServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('590', 'admin', '2016-03-16 11:48:42', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:getAllPermission');
INSERT INTO `t_systemlog` VALUES ('591', 'admin', '2016-03-16 11:59:50', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.EmployeeServiceImpl:findcheckLogin');
INSERT INTO `t_systemlog` VALUES ('592', 'admin', '2016-03-16 11:59:50', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:getUserPermission');
INSERT INTO `t_systemlog` VALUES ('593', 'admin', '2016-03-16 11:59:51', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:getPermissionByResources');
INSERT INTO `t_systemlog` VALUES ('594', 'admin', '2016-03-16 11:59:52', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:getPermissionByResources');
INSERT INTO `t_systemlog` VALUES ('595', 'admin', '2016-03-16 11:59:52', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.MenuServiceImpl:getMenuResult');
INSERT INTO `t_systemlog` VALUES ('596', 'admin', '2016-03-16 11:59:54', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.RoleServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('597', 'admin', '2016-03-16 11:59:54', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.EmployeeServiceImpl:empQuery');
INSERT INTO `t_systemlog` VALUES ('598', null, '2016-03-17 10:19:04', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.EmployeeServiceImpl:findByCookie');
INSERT INTO `t_systemlog` VALUES ('599', null, '2016-03-17 10:19:04', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.EmployeeServiceImpl:findByCookie');
INSERT INTO `t_systemlog` VALUES ('600', 'admin', '2016-03-17 10:19:08', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.EmployeeServiceImpl:findcheckLogin');
INSERT INTO `t_systemlog` VALUES ('601', 'admin', '2016-03-17 10:19:08', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:getUserPermission');
INSERT INTO `t_systemlog` VALUES ('602', 'admin', '2016-03-17 10:19:08', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:getPermissionByResources');
INSERT INTO `t_systemlog` VALUES ('603', 'admin', '2016-03-17 10:19:09', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:getPermissionByResources');
INSERT INTO `t_systemlog` VALUES ('604', 'admin', '2016-03-17 10:19:09', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.MenuServiceImpl:getMenuResult');
INSERT INTO `t_systemlog` VALUES ('605', 'admin', '2016-03-17 10:19:14', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.EmployeeServiceImpl:empQuery');
INSERT INTO `t_systemlog` VALUES ('606', 'admin', '2016-03-17 10:19:14', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.RoleServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('607', 'admin', '2016-03-17 10:19:48', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.ResourceServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('608', 'admin', '2016-03-17 10:19:54', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('609', 'admin', '2016-03-17 10:19:54', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('610', null, '2016-03-17 10:38:02', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('611', null, '2016-03-17 10:38:02', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('612', null, '2016-03-17 10:38:05', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.RoleServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('613', null, '2016-03-17 10:38:05', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:getAllPermission');
INSERT INTO `t_systemlog` VALUES ('614', null, '2016-03-17 10:38:05', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:getAllPermission');
INSERT INTO `t_systemlog` VALUES ('615', null, '2016-03-17 10:38:55', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.RoleServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('616', null, '2016-03-17 10:38:55', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.EmployeeServiceImpl:empQuery');
INSERT INTO `t_systemlog` VALUES ('617', null, '2016-03-17 10:39:11', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.EmployeeServiceImpl:findByCookie');
INSERT INTO `t_systemlog` VALUES ('618', 'admin', '2016-03-17 10:39:15', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.EmployeeServiceImpl:findcheckLogin');
INSERT INTO `t_systemlog` VALUES ('619', 'admin', '2016-03-17 10:39:15', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:getUserPermission');
INSERT INTO `t_systemlog` VALUES ('620', 'admin', '2016-03-17 10:39:15', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:getPermissionByResources');
INSERT INTO `t_systemlog` VALUES ('621', 'admin', '2016-03-17 10:39:16', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:getPermissionByResources');
INSERT INTO `t_systemlog` VALUES ('622', 'admin', '2016-03-17 10:39:16', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.MenuServiceImpl:getMenuResult');
INSERT INTO `t_systemlog` VALUES ('623', 'admin', '2016-03-17 10:39:57', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.RoleServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('624', 'admin', '2016-03-17 10:39:57', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:getAllPermission');
INSERT INTO `t_systemlog` VALUES ('625', 'admin', '2016-03-17 11:49:57', '171.214.139.170', 'com.huashidai.weihuotong.service.impl.EmployeeServiceImpl:findcheckLogin');
INSERT INTO `t_systemlog` VALUES ('626', 'admin', '2016-03-17 11:49:57', '171.214.139.170', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:getUserPermission');
INSERT INTO `t_systemlog` VALUES ('627', 'admin', '2016-03-17 11:49:58', '171.214.139.170', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:getPermissionByResources');
INSERT INTO `t_systemlog` VALUES ('628', 'admin', '2016-03-17 11:50:00', '171.214.139.170', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:getPermissionByResources');
INSERT INTO `t_systemlog` VALUES ('629', 'admin', '2016-03-17 11:50:00', '171.214.139.170', 'com.huashidai.weihuotong.service.impl.MenuServiceImpl:getMenuResult');
INSERT INTO `t_systemlog` VALUES ('630', 'admin', '2016-03-17 11:50:02', '171.214.139.170', 'com.huashidai.weihuotong.service.impl.RoleServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('631', 'admin', '2016-03-17 11:50:03', '171.214.139.170', 'com.huashidai.weihuotong.service.impl.EmployeeServiceImpl:empQuery');
INSERT INTO `t_systemlog` VALUES ('632', 'admin', '2016-03-17 11:50:05', '171.214.139.170', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('633', 'admin', '2016-03-17 11:50:05', '171.214.139.170', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('634', 'admin', '2016-03-17 11:50:08', '171.214.139.170', 'com.huashidai.weihuotong.service.impl.RoleServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('635', 'admin', '2016-03-17 11:50:08', '171.214.139.170', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:getAllPermission');
INSERT INTO `t_systemlog` VALUES ('636', 'admin', '2016-03-17 11:50:08', '171.214.139.170', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:getAllPermission');
INSERT INTO `t_systemlog` VALUES ('639', null, '2016-03-17 11:52:20', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.EmployeeServiceImpl:findByCookie');
INSERT INTO `t_systemlog` VALUES ('644', 'admin', '2016-03-17 16:42:23', '171.214.139.170', 'com.huashidai.weihuotong.service.impl.EmployeeServiceImpl:findcheckLogin');
INSERT INTO `t_systemlog` VALUES ('645', 'admin', '2016-03-17 16:42:23', '171.214.139.170', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:getUserPermission');
INSERT INTO `t_systemlog` VALUES ('646', 'admin', '2016-03-17 16:42:23', '171.214.139.170', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:getPermissionByResources');
INSERT INTO `t_systemlog` VALUES ('647', 'admin', '2016-03-17 16:42:24', '171.214.139.170', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:getPermissionByResources');
INSERT INTO `t_systemlog` VALUES ('648', 'admin', '2016-03-17 16:42:24', '171.214.139.170', 'com.huashidai.weihuotong.service.impl.MenuServiceImpl:getMenuResult');
INSERT INTO `t_systemlog` VALUES ('649', 'admin', '2016-03-17 16:42:27', '171.214.139.170', 'com.huashidai.weihuotong.service.impl.RoleServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('650', 'admin', '2016-03-17 16:42:27', '171.214.139.170', 'com.huashidai.weihuotong.service.impl.EmployeeServiceImpl:empQuery');
INSERT INTO `t_systemlog` VALUES ('651', 'admin', '2016-03-17 16:42:31', '171.214.139.170', 'com.huashidai.weihuotong.service.impl.ResourceServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('652', 'admin', '2016-03-17 16:42:33', '171.214.139.170', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('653', 'admin', '2016-03-17 16:42:33', '171.214.139.170', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('654', 'admin', '2016-03-17 16:42:35', '171.214.139.170', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:getAllPermission');
INSERT INTO `t_systemlog` VALUES ('655', 'admin', '2016-03-17 16:42:35', '171.214.139.170', 'com.huashidai.weihuotong.service.impl.RoleServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('656', 'admin', '2016-03-17 16:42:35', '171.214.139.170', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:getAllPermission');
INSERT INTO `t_systemlog` VALUES ('657', null, '2016-03-17 16:50:50', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.EmployeeServiceImpl:findcheckLogin');
INSERT INTO `t_systemlog` VALUES ('658', 'admin', '2016-03-17 16:50:56', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.EmployeeServiceImpl:findcheckLogin');
INSERT INTO `t_systemlog` VALUES ('659', 'admin', '2016-03-17 16:50:57', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:getUserPermission');
INSERT INTO `t_systemlog` VALUES ('660', 'admin', '2016-03-17 16:50:57', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:getPermissionByResources');
INSERT INTO `t_systemlog` VALUES ('661', 'admin', '2016-03-17 16:50:58', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:getPermissionByResources');
INSERT INTO `t_systemlog` VALUES ('662', 'admin', '2016-03-17 16:50:58', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.MenuServiceImpl:getMenuResult');
INSERT INTO `t_systemlog` VALUES ('663', 'admin', '2016-03-17 16:53:14', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:getPermissionByResources');
INSERT INTO `t_systemlog` VALUES ('664', 'admin', '2016-03-17 16:53:15', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:getPermissionByResources');
INSERT INTO `t_systemlog` VALUES ('665', 'admin', '2016-03-17 16:53:15', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.MenuServiceImpl:getMenuResult');
INSERT INTO `t_systemlog` VALUES ('666', 'admin', '2016-03-17 16:53:18', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.RoleServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('667', 'admin', '2016-03-17 16:53:18', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.RoleServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('668', 'admin', '2016-03-17 16:53:53', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.RoleServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('669', 'admin', '2016-03-17 16:54:45', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.RoleServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('670', 'admin', '2016-03-17 16:55:07', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.RoleServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('671', 'admin', '2016-03-17 16:57:34', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.RoleServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('672', 'admin', '2016-03-17 16:57:45', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.RoleServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('673', 'admin', '2016-03-17 16:57:54', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.RoleServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('674', 'admin', '2016-03-17 16:58:17', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.RoleServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('675', 'admin', '2016-03-17 16:58:42', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.RoleServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('676', 'admin', '2016-03-17 16:58:55', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.RoleServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('677', null, '2016-03-17 17:24:43', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.EmployeeServiceImpl:findByCookie');
INSERT INTO `t_systemlog` VALUES ('678', 'admin', '2016-03-17 17:24:52', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.EmployeeServiceImpl:findcheckLogin');
INSERT INTO `t_systemlog` VALUES ('679', 'admin', '2016-03-17 17:24:52', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:getUserPermission');
INSERT INTO `t_systemlog` VALUES ('680', 'admin', '2016-03-17 17:24:52', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:getPermissionByResources');
INSERT INTO `t_systemlog` VALUES ('681', 'admin', '2016-03-17 17:24:53', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:getPermissionByResources');
INSERT INTO `t_systemlog` VALUES ('682', 'admin', '2016-03-17 17:24:53', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.MenuServiceImpl:getMenuResult');
INSERT INTO `t_systemlog` VALUES ('683', 'admin', '2016-03-17 17:24:56', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('684', 'admin', '2016-03-17 17:25:51', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('685', 'admin', '2016-03-17 17:26:14', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('686', 'admin', '2016-03-17 17:32:01', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('687', 'admin', '2016-03-17 17:32:09', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('688', 'admin', '2016-03-17 17:32:16', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('689', 'admin', '2016-03-17 17:32:22', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('690', 'admin', '2016-03-17 17:33:39', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('691', 'admin', '2016-03-17 17:34:10', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('692', 'admin', '2016-03-17 17:34:17', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.RoleServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('693', 'admin', '2016-03-17 17:34:29', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.ResourceServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('694', 'admin', '2016-03-17 17:36:57', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.RoleServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('695', 'admin', '2016-03-17 17:38:03', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.RoleServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('696', 'admin', '2016-03-17 17:38:32', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.RoleServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('697', 'admin', '2016-03-17 17:40:39', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.EmployeeServiceImpl:findcheckLogin');
INSERT INTO `t_systemlog` VALUES ('698', 'admin', '2016-03-17 17:40:40', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:getUserPermission');
INSERT INTO `t_systemlog` VALUES ('699', 'admin', '2016-03-17 17:40:40', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:getPermissionByResources');
INSERT INTO `t_systemlog` VALUES ('700', 'admin', '2016-03-17 17:40:41', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:getPermissionByResources');
INSERT INTO `t_systemlog` VALUES ('701', 'admin', '2016-03-17 17:40:41', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.MenuServiceImpl:getMenuResult');
INSERT INTO `t_systemlog` VALUES ('702', 'admin', '2016-03-17 17:40:43', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.EmployeeServiceImpl:empQuery');
INSERT INTO `t_systemlog` VALUES ('703', 'admin', '2016-03-17 17:40:43', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.RoleServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('704', 'admin', '2016-03-17 17:40:49', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('705', 'admin', '2016-03-17 17:40:50', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.GoodsServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('706', 'admin', '2016-03-17 17:48:41', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('707', 'admin', '2016-03-17 17:48:41', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.GoodsServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('708', 'admin', '2016-03-17 17:48:55', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.GoodsServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('709', 'admin', '2016-03-17 17:49:06', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.GoodsServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('710', 'admin', '2016-03-17 17:51:48', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('711', 'admin', '2016-03-17 17:51:48', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.GoodsServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('712', 'admin', '2016-03-17 17:54:43', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('713', 'admin', '2016-03-17 17:54:43', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.GoodsServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('714', 'admin', '2016-03-17 17:54:51', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.GoodsServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('715', 'admin', '2016-03-17 17:55:03', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.GoodsServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('716', 'admin', '2016-03-17 17:55:27', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('717', 'admin', '2016-03-17 17:55:27', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.GoodsServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('720', null, '2016-04-06 11:13:46', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.EmployeeServiceImpl:findByCookie');
INSERT INTO `t_systemlog` VALUES ('721', 'admin', '2016-04-06 11:13:47', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:getUserPermission');
INSERT INTO `t_systemlog` VALUES ('722', null, '2016-04-06 11:13:47', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.EmployeeServiceImpl:findByCookie');
INSERT INTO `t_systemlog` VALUES ('723', 'admin', '2016-04-06 11:13:47', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:getUserPermission');
INSERT INTO `t_systemlog` VALUES ('724', 'admin', '2016-04-06 11:13:56', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.EmployeeServiceImpl:findcheckLogin');
INSERT INTO `t_systemlog` VALUES ('725', 'admin', '2016-04-06 11:13:56', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:getUserPermission');
INSERT INTO `t_systemlog` VALUES ('726', 'admin', '2016-04-06 11:13:57', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:getPermissionByResources');
INSERT INTO `t_systemlog` VALUES ('727', 'admin', '2016-04-06 11:13:58', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:getPermissionByResources');
INSERT INTO `t_systemlog` VALUES ('728', 'admin', '2016-04-06 11:13:58', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.MenuServiceImpl:getMenuResult');
INSERT INTO `t_systemlog` VALUES ('729', 'admin', '2016-04-06 11:14:02', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('730', 'admin', '2016-04-06 11:14:03', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.GoodsServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('731', 'admin', '2016-04-06 11:14:09', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.RoleServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('732', 'admin', '2016-04-06 11:14:09', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.EmployeeServiceImpl:empQuery');
INSERT INTO `t_systemlog` VALUES ('733', 'admin', '2016-04-06 11:14:45', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.RoleServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('734', 'admin', '2016-04-06 11:14:45', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:getAllPermission');
INSERT INTO `t_systemlog` VALUES ('735', 'admin', '2016-04-06 11:14:45', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:getAllPermission');
INSERT INTO `t_systemlog` VALUES ('736', null, '2016-04-06 14:12:52', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.GoodsServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('737', null, '2016-04-06 14:12:56', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.GoodsServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('738', null, '2016-04-06 16:10:26', '171.214.139.76', 'com.huashidai.weihuotong.service.impl.EmployeeServiceImpl:findByCookie');
INSERT INTO `t_systemlog` VALUES ('739', null, '2016-04-06 16:10:26', '171.214.139.76', 'com.huashidai.weihuotong.service.impl.EmployeeServiceImpl:findByCookie');
INSERT INTO `t_systemlog` VALUES ('740', null, '2016-04-06 16:51:04', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.EmployeeServiceImpl:findByCookie');
INSERT INTO `t_systemlog` VALUES ('741', 'admin', '2016-04-06 16:51:13', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.EmployeeServiceImpl:findcheckLogin');
INSERT INTO `t_systemlog` VALUES ('742', 'admin', '2016-04-06 16:51:13', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:getUserPermission');
INSERT INTO `t_systemlog` VALUES ('743', 'admin', '2016-04-06 16:51:13', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:getPermissionByResources');
INSERT INTO `t_systemlog` VALUES ('744', 'admin', '2016-04-06 16:51:14', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:getPermissionByResources');
INSERT INTO `t_systemlog` VALUES ('745', 'admin', '2016-04-06 16:51:15', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.MenuServiceImpl:getMenuResult');
INSERT INTO `t_systemlog` VALUES ('746', 'admin', '2016-04-06 16:51:17', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('747', 'admin', '2016-04-06 16:51:17', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.GoodsServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('748', 'admin', '2016-04-06 16:52:56', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.GoodsServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('749', 'admin', '2016-04-06 16:53:28', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.GoodsServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('750', 'admin', '2016-04-06 16:55:10', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.GoodsServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('751', null, '2016-04-06 16:57:16', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.GoodsServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('752', null, '2016-04-06 16:57:17', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.GoodsServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('753', null, '2016-04-06 16:57:18', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.GoodsServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('754', null, '2016-04-06 16:57:40', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.GoodsServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('755', null, '2016-04-06 16:58:01', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.GoodsServiceImpl:leave');
INSERT INTO `t_systemlog` VALUES ('756', null, '2016-04-06 16:58:02', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.GoodsServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('757', null, '2016-04-06 16:58:05', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.GoodsServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('758', null, '2016-04-06 16:58:05', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.GoodsServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('759', null, '2016-04-06 16:58:06', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.GoodsServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('760', null, '2016-04-06 16:58:07', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.GoodsServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('761', null, '2016-04-06 16:58:18', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.GoodsServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('762', null, '2016-04-06 16:58:21', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.GoodsServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('763', null, '2016-04-06 17:00:38', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.GoodsServiceImpl:leave');
INSERT INTO `t_systemlog` VALUES ('764', null, '2016-04-06 17:00:48', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.GoodsServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('765', null, '2016-04-06 17:00:49', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.GoodsServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('766', null, '2016-04-06 17:00:50', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.GoodsServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('767', null, '2016-04-06 17:00:51', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.GoodsServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('768', null, '2016-04-06 17:04:10', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('769', null, '2016-04-06 17:04:10', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.GoodsServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('770', null, '2016-04-06 17:07:47', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('771', null, '2016-04-06 17:07:47', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.GoodsServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('772', null, '2016-04-06 17:08:07', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('773', null, '2016-04-06 17:08:07', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.GoodsServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('774', null, '2016-04-06 17:08:22', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('775', null, '2016-04-06 17:08:22', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.GoodsServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('776', null, '2016-04-06 17:08:48', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('777', null, '2016-04-06 17:08:49', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.GoodsServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('778', null, '2016-04-06 17:09:33', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('779', null, '2016-04-06 17:09:33', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.GoodsServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('780', null, '2016-04-06 17:09:42', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('781', null, '2016-04-06 17:09:42', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.GoodsServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('782', null, '2016-04-06 17:10:22', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('783', null, '2016-04-06 17:10:22', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.GoodsServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('784', null, '2016-04-06 17:10:28', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('785', null, '2016-04-06 17:10:28', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.GoodsServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('786', null, '2016-04-06 17:10:47', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('787', null, '2016-04-06 17:10:47', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.GoodsServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('788', null, '2016-04-06 17:11:20', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('789', null, '2016-04-06 17:11:20', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.GoodsServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('790', null, '2016-04-06 17:11:39', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('791', null, '2016-04-06 17:11:39', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.GoodsServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('792', null, '2016-04-06 17:12:56', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('793', null, '2016-04-06 17:12:56', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.GoodsServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('794', null, '2016-04-06 17:13:05', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('795', null, '2016-04-06 17:13:05', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.GoodsServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('796', null, '2016-04-06 17:13:23', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('797', null, '2016-04-06 17:13:23', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.GoodsServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('798', null, '2016-04-06 17:16:14', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('799', null, '2016-04-06 17:16:14', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.GoodsServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('800', null, '2016-04-06 17:16:21', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('801', null, '2016-04-06 17:16:21', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.GoodsServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('802', null, '2016-04-06 17:16:33', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('803', null, '2016-04-06 17:16:33', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.GoodsServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('804', null, '2016-04-06 17:16:55', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('805', null, '2016-04-06 17:16:55', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.GoodsServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('806', null, '2016-04-06 17:17:17', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('807', null, '2016-04-06 17:17:17', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.GoodsServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('808', null, '2016-04-06 17:19:26', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('809', null, '2016-04-06 17:19:26', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.GoodsServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('810', null, '2016-04-06 17:19:46', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('811', null, '2016-04-06 17:19:46', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.GoodsServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('812', null, '2016-04-06 17:20:01', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('813', null, '2016-04-06 17:20:01', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.GoodsServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('814', null, '2016-04-06 17:20:10', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('815', null, '2016-04-06 17:20:10', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.GoodsServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('816', null, '2016-04-06 17:20:24', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('817', null, '2016-04-06 17:20:24', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.GoodsServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('818', null, '2016-04-06 17:20:31', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.GoodsServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('819', null, '2016-04-06 17:25:36', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('820', null, '2016-04-06 17:25:36', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.GoodsServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('821', null, '2016-04-06 17:26:15', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('822', null, '2016-04-06 17:26:15', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.GoodsServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('824', null, '2016-04-06 17:26:21', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.GoodsServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('826', null, '2016-04-06 17:29:06', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('827', null, '2016-04-06 17:29:07', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.GoodsServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('828', null, '2016-04-06 17:29:11', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.GoodsServiceImpl:leave');
INSERT INTO `t_systemlog` VALUES ('829', null, '2016-04-06 17:29:13', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.GoodsServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('830', null, '2016-04-06 17:29:17', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.GoodsServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('831', null, '2016-04-06 17:29:18', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.GoodsServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('832', null, '2016-04-06 17:29:19', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.GoodsServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('833', null, '2016-04-06 17:29:28', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.GoodsServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('834', null, '2016-04-06 17:31:08', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.GoodsServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('835', null, '2016-04-06 17:31:19', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.GoodsServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('836', null, '2016-04-06 17:31:28', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.GoodsServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('837', null, '2016-04-06 17:31:31', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.GoodsServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('838', null, '2016-04-06 17:31:49', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.GoodsServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('839', null, '2016-04-06 17:32:04', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.GoodsServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('840', null, '2016-04-06 17:32:33', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.GoodsServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('841', null, '2016-04-06 17:33:36', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.GoodsServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('842', null, '2016-04-06 17:35:14', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('843', null, '2016-04-06 17:35:15', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.GoodsServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('844', null, '2016-04-06 17:35:19', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.GoodsServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('845', null, '2016-04-06 17:35:22', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.GoodsServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('846', null, '2016-04-06 17:35:28', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.GoodsServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('847', null, '2016-04-06 17:35:30', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.GoodsServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('848', null, '2016-04-06 17:35:33', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('849', null, '2016-04-06 17:35:33', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.GoodsServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('850', null, '2016-04-06 17:36:21', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('851', null, '2016-04-06 17:36:22', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.GoodsServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('852', null, '2016-04-06 17:36:34', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.GoodsServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('853', null, '2016-04-06 17:36:37', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.GoodsServiceImpl:up');
INSERT INTO `t_systemlog` VALUES ('854', null, '2016-04-06 17:36:38', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.GoodsServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('855', null, '2016-04-06 17:36:41', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.GoodsServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('856', null, '2016-04-06 17:38:11', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.GoodsServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('857', null, '2016-04-06 17:38:18', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.GoodsServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('858', null, '2016-04-06 17:53:32', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('859', null, '2016-04-06 17:53:32', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.GoodsServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('860', null, '2016-04-06 17:54:29', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('861', null, '2016-04-06 17:54:29', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.GoodsServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('862', null, '2016-04-06 17:55:58', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('863', null, '2016-04-06 17:56:02', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.GoodsServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('864', null, '2016-04-06 17:56:37', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('865', null, '2016-04-06 17:56:37', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.GoodsServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('866', null, '2016-04-06 17:57:14', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('867', null, '2016-04-06 17:57:14', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.GoodsServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('868', null, '2016-04-06 18:07:06', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('869', null, '2016-04-06 18:07:17', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('870', null, '2016-04-06 18:07:40', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('871', null, '2016-04-06 18:07:47', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('872', null, '2016-04-06 18:08:37', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('873', null, '2016-04-06 18:10:32', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('874', null, '2016-04-06 18:10:41', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('875', null, '2016-04-06 18:11:09', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('876', null, '2016-04-06 18:11:09', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.GoodsServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('877', null, '2016-04-06 18:11:18', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('878', null, '2016-04-06 18:11:18', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.GoodsServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('879', null, '2016-04-06 18:11:47', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('880', null, '2016-04-06 18:11:55', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('881', null, '2016-04-06 18:12:49', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('882', null, '2016-04-06 18:13:36', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('883', null, '2016-04-06 18:13:36', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.GoodsServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('884', null, '2016-04-06 18:14:05', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('885', null, '2016-04-06 18:14:05', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.GoodsServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('886', null, '2016-04-06 18:14:20', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('887', null, '2016-04-06 18:14:20', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.GoodsServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('888', null, '2016-04-06 18:14:29', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('889', null, '2016-04-06 18:14:29', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.GoodsServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('890', null, '2016-04-06 18:15:45', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('891', null, '2016-04-06 18:15:58', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.EmployeeServiceImpl:findByCookie');
INSERT INTO `t_systemlog` VALUES ('892', 'admin', '2016-04-06 18:16:02', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.EmployeeServiceImpl:findcheckLogin');
INSERT INTO `t_systemlog` VALUES ('893', 'admin', '2016-04-06 18:16:02', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:getUserPermission');
INSERT INTO `t_systemlog` VALUES ('894', 'admin', '2016-04-06 18:16:02', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:getPermissionByResources');
INSERT INTO `t_systemlog` VALUES ('895', 'admin', '2016-04-06 18:16:03', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:getPermissionByResources');
INSERT INTO `t_systemlog` VALUES ('896', 'admin', '2016-04-06 18:16:03', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.MenuServiceImpl:getMenuResult');
INSERT INTO `t_systemlog` VALUES ('897', 'admin', '2016-04-06 18:16:05', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('898', 'admin', '2016-04-06 18:16:05', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.GoodsServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('899', null, '2016-04-07 10:01:12', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.EmployeeServiceImpl:findByCookie');
INSERT INTO `t_systemlog` VALUES ('900', null, '2016-04-07 10:01:13', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.EmployeeServiceImpl:findByCookie');
INSERT INTO `t_systemlog` VALUES ('901', 'admin', '2016-04-07 10:05:32', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.EmployeeServiceImpl:findcheckLogin');
INSERT INTO `t_systemlog` VALUES ('902', 'admin', '2016-04-07 10:05:32', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:getUserPermission');
INSERT INTO `t_systemlog` VALUES ('903', 'admin', '2016-04-07 10:05:33', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:getPermissionByResources');
INSERT INTO `t_systemlog` VALUES ('904', 'admin', '2016-04-07 10:05:34', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:getPermissionByResources');
INSERT INTO `t_systemlog` VALUES ('905', 'admin', '2016-04-07 10:05:34', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.MenuServiceImpl:getMenuResult');
INSERT INTO `t_systemlog` VALUES ('906', 'admin', '2016-04-07 10:05:37', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('907', 'admin', '2016-04-07 10:05:37', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.GoodsServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('908', 'admin', '2016-04-07 10:08:52', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('909', 'admin', '2016-04-07 10:08:52', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.GoodsServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('910', 'admin', '2016-04-07 10:08:58', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.GoodsServiceImpl:leave');
INSERT INTO `t_systemlog` VALUES ('911', 'admin', '2016-04-07 10:09:00', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.GoodsServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('913', 'admin', '2016-04-07 10:09:11', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.GoodsServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('916', 'admin', '2016-04-07 10:11:20', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('917', 'admin', '2016-04-07 10:11:20', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.GoodsServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('920', 'admin', '2016-04-07 10:12:16', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.GoodsServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('922', 'admin', '2016-04-07 10:14:07', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('923', 'admin', '2016-04-07 10:14:07', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.GoodsServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('924', 'admin', '2016-04-07 10:14:10', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.GoodsServiceImpl:delete');
INSERT INTO `t_systemlog` VALUES ('925', 'admin', '2016-04-07 10:14:12', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.GoodsServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('926', 'admin', '2016-04-07 10:25:16', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.GoodsServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('927', 'admin', '2016-04-07 10:25:21', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.GoodsServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('928', 'admin', '2016-04-07 10:25:29', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.GoodsServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('929', 'admin', '2016-04-07 10:25:34', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('930', 'admin', '2016-04-07 10:27:50', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.GoodsServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('931', 'admin', '2016-04-07 10:27:54', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.GoodsServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('932', 'admin', '2016-04-07 10:33:59', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.EmployeeServiceImpl:findcheckLogin');
INSERT INTO `t_systemlog` VALUES ('933', 'admin', '2016-04-07 10:33:59', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:getUserPermission');
INSERT INTO `t_systemlog` VALUES ('934', 'admin', '2016-04-07 10:34:00', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:getPermissionByResources');
INSERT INTO `t_systemlog` VALUES ('935', 'admin', '2016-04-07 10:34:01', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:getPermissionByResources');
INSERT INTO `t_systemlog` VALUES ('936', 'admin', '2016-04-07 10:34:01', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.MenuServiceImpl:getMenuResult');
INSERT INTO `t_systemlog` VALUES ('937', 'admin', '2016-04-07 10:34:02', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('938', 'admin', '2016-04-07 10:34:03', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.GoodsServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('939', 'admin', '2016-04-07 10:34:08', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.GoodsServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('940', 'admin', '2016-04-07 10:34:24', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.GoodsServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('941', 'admin', '2016-04-07 10:34:28', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('942', 'admin', '2016-04-07 10:34:28', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.GoodsServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('943', 'admin', '2016-04-07 10:34:46', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('944', 'admin', '2016-04-07 10:34:46', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.GoodsServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('945', null, '2016-04-07 10:35:01', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('946', null, '2016-04-07 10:35:01', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.GoodsServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('947', null, '2016-04-07 10:35:17', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('948', null, '2016-04-07 10:35:17', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.GoodsServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('949', null, '2016-04-07 10:35:21', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.GoodsServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('950', null, '2016-04-07 10:35:46', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('951', null, '2016-04-07 10:35:46', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.GoodsServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('952', null, '2016-04-07 10:35:54', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.EmployeeServiceImpl:findByCookie');
INSERT INTO `t_systemlog` VALUES ('953', 'admin', '2016-04-07 10:36:03', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.EmployeeServiceImpl:findcheckLogin');
INSERT INTO `t_systemlog` VALUES ('954', 'admin', '2016-04-07 10:36:04', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:getUserPermission');
INSERT INTO `t_systemlog` VALUES ('955', 'admin', '2016-04-07 10:36:07', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:getPermissionByResources');
INSERT INTO `t_systemlog` VALUES ('956', 'admin', '2016-04-07 10:36:08', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:getPermissionByResources');
INSERT INTO `t_systemlog` VALUES ('957', 'admin', '2016-04-07 10:36:09', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.MenuServiceImpl:getMenuResult');
INSERT INTO `t_systemlog` VALUES ('958', 'admin', '2016-04-07 10:36:11', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('959', 'admin', '2016-04-07 10:36:11', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.GoodsServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('960', null, '2016-04-07 10:37:50', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('961', null, '2016-04-07 10:37:51', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.GoodsServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('962', null, '2016-04-07 10:37:54', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.EmployeeServiceImpl:findByCookie');
INSERT INTO `t_systemlog` VALUES ('963', 'admin', '2016-04-07 10:38:01', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.EmployeeServiceImpl:findcheckLogin');
INSERT INTO `t_systemlog` VALUES ('964', 'admin', '2016-04-07 10:38:02', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:getUserPermission');
INSERT INTO `t_systemlog` VALUES ('965', 'admin', '2016-04-07 10:38:03', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:getPermissionByResources');
INSERT INTO `t_systemlog` VALUES ('966', 'admin', '2016-04-07 10:38:04', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:getPermissionByResources');
INSERT INTO `t_systemlog` VALUES ('967', 'admin', '2016-04-07 10:38:07', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.MenuServiceImpl:getMenuResult');
INSERT INTO `t_systemlog` VALUES ('968', null, '2016-04-07 10:38:10', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('969', null, '2016-04-07 10:38:10', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.GoodsServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('970', null, '2016-04-07 10:40:42', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('971', null, '2016-04-07 10:40:43', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.GoodsServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('972', null, '2016-04-07 10:40:48', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.EmployeeServiceImpl:findByCookie');
INSERT INTO `t_systemlog` VALUES ('973', 'admin', '2016-04-07 10:41:46', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.EmployeeServiceImpl:findcheckLogin');
INSERT INTO `t_systemlog` VALUES ('974', 'admin', '2016-04-07 10:41:47', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:getUserPermission');
INSERT INTO `t_systemlog` VALUES ('975', 'admin', '2016-04-07 10:41:49', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:getPermissionByResources');
INSERT INTO `t_systemlog` VALUES ('976', 'admin', '2016-04-07 10:43:16', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.EmployeeServiceImpl:findcheckLogin');
INSERT INTO `t_systemlog` VALUES ('977', 'admin', '2016-04-07 10:43:25', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:getUserPermission');
INSERT INTO `t_systemlog` VALUES ('978', 'admin', '2016-04-07 10:43:34', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.MenuServiceImpl:getMenuResult');
INSERT INTO `t_systemlog` VALUES ('979', 'admin', '2016-04-07 10:43:38', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('980', 'admin', '2016-04-07 10:43:38', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.GoodsServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('981', 'admin', '2016-04-07 10:44:02', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('982', 'admin', '2016-04-07 10:44:03', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.GoodsServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('983', 'admin', '2016-04-07 10:45:36', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('984', 'admin', '2016-04-07 10:45:36', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.GoodsServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('985', null, '2016-04-07 10:45:46', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.MenuServiceImpl:getMenuResult');
INSERT INTO `t_systemlog` VALUES ('986', null, '2016-04-07 10:45:48', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('987', null, '2016-04-07 10:45:49', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.GoodsServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('988', null, '2016-04-07 10:48:10', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.MenuServiceImpl:getMenuResult');
INSERT INTO `t_systemlog` VALUES ('989', null, '2016-04-07 10:48:13', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('990', null, '2016-04-07 10:48:13', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.GoodsServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('991', null, '2016-04-07 10:48:56', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('992', null, '2016-04-07 10:48:57', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.GoodsServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('993', null, '2016-04-07 10:49:20', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.GoodsServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('994', null, '2016-04-07 10:49:31', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.MenuServiceImpl:getMenuResult');
INSERT INTO `t_systemlog` VALUES ('995', null, '2016-04-07 10:49:47', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('996', null, '2016-04-07 10:49:47', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.GoodsServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('997', null, '2016-04-07 10:49:53', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.MenuServiceImpl:getMenuResult');
INSERT INTO `t_systemlog` VALUES ('998', null, '2016-04-07 10:49:57', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('999', null, '2016-04-07 10:49:58', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.GoodsServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('1000', null, '2016-04-07 11:35:17', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.MenuServiceImpl:getMenuResult');
INSERT INTO `t_systemlog` VALUES ('1001', null, '2016-04-07 11:35:20', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('1002', null, '2016-04-07 11:36:22', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.MenuServiceImpl:getMenuResult');
INSERT INTO `t_systemlog` VALUES ('1003', null, '2016-04-07 11:36:24', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('1004', null, '2016-04-07 11:36:24', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.GoodsServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('1005', null, '2016-04-07 11:56:24', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.MenuServiceImpl:getMenuResult');
INSERT INTO `t_systemlog` VALUES ('1006', null, '2016-04-07 11:56:27', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('1007', null, '2016-04-07 11:56:48', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('1008', null, '2016-04-07 11:56:48', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.GoodsServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('1009', null, '2016-04-07 11:57:47', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('1010', null, '2016-04-07 11:57:47', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.GoodsServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('1011', null, '2016-04-07 12:05:53', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.MenuServiceImpl:getMenuResult');
INSERT INTO `t_systemlog` VALUES ('1012', null, '2016-04-07 12:06:06', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.MenuServiceImpl:getMenuResult');
INSERT INTO `t_systemlog` VALUES ('1013', null, '2016-04-07 12:06:11', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.MenuServiceImpl:getMenuResult');
INSERT INTO `t_systemlog` VALUES ('1014', null, '2016-04-07 12:06:12', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('1015', null, '2016-04-07 12:06:12', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.GoodsServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('1016', null, '2016-04-07 12:06:57', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('1017', null, '2016-04-07 12:06:57', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.GoodsServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('1018', null, '2016-04-07 12:07:09', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.MenuServiceImpl:getMenuResult');
INSERT INTO `t_systemlog` VALUES ('1019', null, '2016-04-07 12:07:11', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('1020', null, '2016-04-07 12:07:11', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.GoodsServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('1021', 'admin', '2016-04-07 14:21:38', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.EmployeeServiceImpl:findcheckLogin');
INSERT INTO `t_systemlog` VALUES ('1022', 'admin', '2016-04-07 14:21:39', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:getUserPermission');
INSERT INTO `t_systemlog` VALUES ('1023', 'admin', '2016-04-07 14:21:40', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.MenuServiceImpl:getMenuResult');
INSERT INTO `t_systemlog` VALUES ('1024', 'admin', '2016-04-07 14:21:43', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('1025', 'admin', '2016-04-07 14:21:43', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.GoodsServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('1026', 'admin', '2016-04-07 14:22:19', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.GoodsServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('1027', null, '2016-04-07 14:22:43', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.MenuServiceImpl:getMenuResult');
INSERT INTO `t_systemlog` VALUES ('1028', null, '2016-04-07 14:22:46', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('1029', null, '2016-04-07 14:22:46', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.GoodsServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('1030', null, '2016-04-07 14:23:19', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.MenuServiceImpl:getMenuResult');
INSERT INTO `t_systemlog` VALUES ('1031', null, '2016-04-07 14:23:20', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('1032', null, '2016-04-07 14:23:20', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.GoodsServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('1033', null, '2016-04-07 14:23:34', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.MenuServiceImpl:getMenuResult');
INSERT INTO `t_systemlog` VALUES ('1034', null, '2016-04-07 14:23:36', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('1035', null, '2016-04-07 14:23:36', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.GoodsServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('1036', null, '2016-04-07 14:24:20', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('1037', null, '2016-04-07 14:24:20', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.GoodsServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('1038', null, '2016-04-07 14:25:31', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.GoodsServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('1039', null, '2016-04-07 14:27:56', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.GoodsServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('1040', null, '2016-04-07 14:28:01', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.GoodsServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('1041', null, '2016-04-07 14:28:08', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('1042', null, '2016-04-07 14:28:08', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.GoodsServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('1043', null, '2016-04-07 14:28:23', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.MenuServiceImpl:getMenuResult');
INSERT INTO `t_systemlog` VALUES ('1044', null, '2016-04-07 14:28:26', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('1045', null, '2016-04-07 14:28:27', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.GoodsServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('1046', null, '2016-04-07 14:29:06', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.GoodsServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('1047', null, '2016-04-07 14:31:41', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.GoodsServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('1048', null, '2016-04-07 14:31:43', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.GoodsServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('1049', null, '2016-04-07 14:31:51', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.GoodsServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('1050', null, '2016-04-07 14:34:26', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.GoodsServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('1051', null, '2016-04-07 14:34:27', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.GoodsServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('1052', null, '2016-04-07 14:34:29', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.GoodsServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('1053', null, '2016-04-07 14:34:33', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.GoodsServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('1054', null, '2016-04-07 14:35:18', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.MenuServiceImpl:getMenuResult');
INSERT INTO `t_systemlog` VALUES ('1055', null, '2016-04-07 14:35:23', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.MenuServiceImpl:getMenuResult');
INSERT INTO `t_systemlog` VALUES ('1056', null, '2016-04-07 14:35:24', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('1057', null, '2016-04-07 14:35:42', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.GoodsServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('1058', null, '2016-04-07 14:35:58', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.GoodsServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('1059', null, '2016-04-07 14:36:52', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.GoodsServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('1060', null, '2016-04-07 14:42:16', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.MenuServiceImpl:getMenuResult');
INSERT INTO `t_systemlog` VALUES ('1061', null, '2016-04-07 14:42:21', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('1062', null, '2016-04-07 14:42:21', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.GoodsServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('1063', null, '2016-04-07 14:43:15', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('1064', null, '2016-04-07 14:43:16', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.GoodsServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('1065', null, '2016-04-07 14:43:31', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.MenuServiceImpl:getMenuResult');
INSERT INTO `t_systemlog` VALUES ('1066', null, '2016-04-07 14:43:33', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('1067', null, '2016-04-07 14:43:33', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.GoodsServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('1068', null, '2016-04-07 14:44:00', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.MenuServiceImpl:getMenuResult');
INSERT INTO `t_systemlog` VALUES ('1069', null, '2016-04-07 14:44:02', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('1070', null, '2016-04-07 14:44:02', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.GoodsServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('1071', null, '2016-04-07 14:44:54', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('1072', null, '2016-04-07 14:44:54', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.GoodsServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('1073', null, '2016-04-07 14:45:03', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.MenuServiceImpl:getMenuResult');
INSERT INTO `t_systemlog` VALUES ('1074', null, '2016-04-07 14:45:06', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('1075', null, '2016-04-07 14:45:06', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.GoodsServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('1076', null, '2016-04-07 14:46:35', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('1077', null, '2016-04-07 14:46:36', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.GoodsServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('1078', null, '2016-04-07 14:53:18', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.MenuServiceImpl:getMenuResult');
INSERT INTO `t_systemlog` VALUES ('1079', null, '2016-04-07 14:53:34', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('1080', null, '2016-04-07 14:53:34', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.GoodsServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('1081', null, '2016-04-07 14:54:57', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.MenuServiceImpl:getMenuResult');
INSERT INTO `t_systemlog` VALUES ('1082', null, '2016-04-07 14:54:59', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('1083', null, '2016-04-07 14:54:59', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.GoodsServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('1084', null, '2016-04-07 14:55:08', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.MenuServiceImpl:getMenuResult');
INSERT INTO `t_systemlog` VALUES ('1085', null, '2016-04-07 14:55:10', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('1086', null, '2016-04-07 14:55:11', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.GoodsServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('1087', null, '2016-04-07 14:56:12', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.MenuServiceImpl:getMenuResult');
INSERT INTO `t_systemlog` VALUES ('1088', null, '2016-04-07 14:56:16', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('1089', null, '2016-04-07 14:56:16', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.GoodsServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('1090', null, '2016-04-07 14:57:04', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('1091', null, '2016-04-07 14:57:04', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.GoodsServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('1092', null, '2016-04-07 14:57:19', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('1093', null, '2016-04-07 14:57:20', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.GoodsServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('1094', null, '2016-04-07 14:57:37', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('1095', null, '2016-04-07 14:57:37', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.GoodsServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('1096', null, '2016-04-07 14:57:45', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.MenuServiceImpl:getMenuResult');
INSERT INTO `t_systemlog` VALUES ('1097', null, '2016-04-07 14:57:50', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('1098', null, '2016-04-07 14:57:50', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.GoodsServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('1099', null, '2016-04-07 14:59:32', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.MenuServiceImpl:getMenuResult');
INSERT INTO `t_systemlog` VALUES ('1100', null, '2016-04-07 14:59:34', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('1101', null, '2016-04-07 14:59:35', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.GoodsServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('1102', null, '2016-04-07 15:00:18', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('1103', null, '2016-04-07 15:00:18', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.GoodsServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('1104', null, '2016-04-07 15:05:39', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.MenuServiceImpl:getMenuResult');
INSERT INTO `t_systemlog` VALUES ('1105', null, '2016-04-07 15:05:41', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('1106', null, '2016-04-07 15:05:42', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.GoodsServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('1107', null, '2016-04-07 15:05:44', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.MenuServiceImpl:getMenuResult');
INSERT INTO `t_systemlog` VALUES ('1108', null, '2016-04-07 15:08:46', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('1109', null, '2016-04-07 15:08:46', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.GoodsServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('1110', null, '2016-04-07 15:08:56', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.MenuServiceImpl:getMenuResult');
INSERT INTO `t_systemlog` VALUES ('1111', null, '2016-04-07 15:08:58', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('1112', null, '2016-04-07 15:08:58', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.GoodsServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('1113', null, '2016-04-07 15:09:18', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.MenuServiceImpl:getMenuResult');
INSERT INTO `t_systemlog` VALUES ('1114', null, '2016-04-07 15:09:19', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('1115', null, '2016-04-07 15:09:20', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.GoodsServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('1116', null, '2016-04-07 15:09:35', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('1117', null, '2016-04-07 15:09:35', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.GoodsServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('1119', null, '2016-04-07 15:10:12', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.MenuServiceImpl:getMenuResult');
INSERT INTO `t_systemlog` VALUES ('1120', null, '2016-04-07 15:10:14', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('1121', null, '2016-04-07 15:10:14', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.GoodsServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('1122', null, '2016-04-07 15:10:52', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.MenuServiceImpl:getMenuResult');
INSERT INTO `t_systemlog` VALUES ('1123', null, '2016-04-07 15:10:54', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('1124', null, '2016-04-07 15:10:54', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.GoodsServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('1125', null, '2016-04-07 15:11:16', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('1126', null, '2016-04-07 15:11:16', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.GoodsServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('1136', null, '2016-04-07 15:26:22', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.UserServiceImpl:register');
INSERT INTO `t_systemlog` VALUES ('1141', null, '2016-04-07 15:32:26', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.MenuServiceImpl:getMenuResult');
INSERT INTO `t_systemlog` VALUES ('1142', null, '2016-04-07 15:32:38', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('1143', null, '2016-04-07 15:32:38', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.GoodsServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('1144', null, '2016-04-07 15:35:11', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.MenuServiceImpl:getMenuResult');
INSERT INTO `t_systemlog` VALUES ('1145', null, '2016-04-07 15:35:13', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('1146', null, '2016-04-07 15:35:13', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.GoodsServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('1147', null, '2016-04-07 15:35:40', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.MenuServiceImpl:getMenuResult');
INSERT INTO `t_systemlog` VALUES ('1148', null, '2016-04-07 15:35:41', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('1149', null, '2016-04-07 15:35:42', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.GoodsServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('1150', null, '2016-04-07 15:36:14', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.MenuServiceImpl:getMenuResult');
INSERT INTO `t_systemlog` VALUES ('1151', null, '2016-04-07 15:36:16', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('1152', null, '2016-04-07 15:36:16', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.GoodsServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('1153', null, '2016-04-07 15:36:21', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.MenuServiceImpl:getMenuResult');
INSERT INTO `t_systemlog` VALUES ('1154', null, '2016-04-07 15:36:23', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('1155', null, '2016-04-07 15:36:24', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.GoodsServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('1156', null, '2016-04-07 15:47:10', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.MenuServiceImpl:getMenuResult');
INSERT INTO `t_systemlog` VALUES ('1157', null, '2016-04-07 15:47:16', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.MenuServiceImpl:getMenuResult');
INSERT INTO `t_systemlog` VALUES ('1158', null, '2016-04-07 15:47:20', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('1159', null, '2016-04-07 15:47:20', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.GoodsServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('1160', null, '2016-04-07 15:47:27', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.MenuServiceImpl:getMenuResult');
INSERT INTO `t_systemlog` VALUES ('1161', null, '2016-04-07 15:47:37', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('1162', null, '2016-04-07 15:47:37', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.GoodsServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('1163', null, '2016-04-07 15:47:15', '110.184.41.82', 'com.huashidai.weihuotong.service.impl.UserServiceImpl:register');
INSERT INTO `t_systemlog` VALUES ('1164', null, '2016-04-07 15:48:16', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.MenuServiceImpl:getMenuResult');
INSERT INTO `t_systemlog` VALUES ('1165', null, '2016-04-07 15:48:17', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('1166', null, '2016-04-07 15:48:18', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.GoodsServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('1167', null, '2016-04-07 15:50:48', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.MenuServiceImpl:getMenuResult');
INSERT INTO `t_systemlog` VALUES ('1168', null, '2016-04-07 15:50:49', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('1169', null, '2016-04-07 15:50:50', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.GoodsServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('1170', null, '2016-04-07 15:51:35', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.GoodsServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('1171', null, '2016-04-07 15:51:38', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('1172', null, '2016-04-07 15:51:38', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.GoodsServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('1173', null, '2016-04-07 15:51:46', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.MenuServiceImpl:getMenuResult');
INSERT INTO `t_systemlog` VALUES ('1174', null, '2016-04-07 15:51:48', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('1175', null, '2016-04-07 15:51:48', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.GoodsServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('1176', null, '2016-04-07 15:52:00', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('1177', null, '2016-04-07 15:52:00', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.GoodsServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('1178', null, '2016-04-07 15:52:16', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('1179', null, '2016-04-07 15:52:16', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.GoodsServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('1180', null, '2016-04-07 15:53:25', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('1181', null, '2016-04-07 15:53:25', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.GoodsServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('1182', 'admin', '2016-04-07 15:59:27', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.EmployeeServiceImpl:findcheckLogin');
INSERT INTO `t_systemlog` VALUES ('1183', 'admin', '2016-04-07 15:59:27', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:getUserPermission');
INSERT INTO `t_systemlog` VALUES ('1184', 'admin', '2016-04-07 15:59:29', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.MenuServiceImpl:getMenuResult');
INSERT INTO `t_systemlog` VALUES ('1185', 'admin', '2016-04-07 15:59:31', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('1186', 'admin', '2016-04-07 15:59:31', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.GoodsServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('1187', 'admin', '2016-04-07 15:59:49', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.MenuServiceImpl:getMenuResult');
INSERT INTO `t_systemlog` VALUES ('1188', 'admin', '2016-04-07 15:59:51', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('1189', 'admin', '2016-04-07 15:59:51', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.GoodsServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('1190', null, '2016-04-07 16:01:17', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('1191', null, '2016-04-07 16:01:17', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.GoodsServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('1192', null, '2016-04-07 16:02:02', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('1193', null, '2016-04-07 16:02:02', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.GoodsServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('1195', null, '2016-04-07 16:02:59', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.MenuServiceImpl:getMenuResult');
INSERT INTO `t_systemlog` VALUES ('1196', null, '2016-04-07 16:03:01', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('1197', null, '2016-04-07 16:03:02', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.GoodsServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('1198', null, '2016-04-07 16:03:26', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('1199', null, '2016-04-07 16:03:26', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.GoodsServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('1200', null, '2016-04-07 16:04:02', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('1201', null, '2016-04-07 16:04:02', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.GoodsServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('1202', null, '2016-04-07 16:06:04', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('1203', null, '2016-04-07 16:06:05', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.GoodsServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('1204', null, '2016-04-07 16:06:49', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('1205', null, '2016-04-07 16:06:49', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.GoodsServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('1206', null, '2016-04-07 16:06:51', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.DetailsImageServiceImpl:getByGoods');
INSERT INTO `t_systemlog` VALUES ('1207', null, '2016-04-07 16:07:16', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.DetailsImageServiceImpl:getByGoods');
INSERT INTO `t_systemlog` VALUES ('1208', null, '2016-04-07 16:07:20', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.DetailsImageServiceImpl:getByGoods');
INSERT INTO `t_systemlog` VALUES ('1209', null, '2016-04-07 16:07:27', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.DetailsImageServiceImpl:getByGoods');
INSERT INTO `t_systemlog` VALUES ('1210', null, '2016-04-07 16:07:39', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('1211', null, '2016-04-07 16:07:39', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.GoodsServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('1212', null, '2016-04-07 16:07:41', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.DetailsImageServiceImpl:getByGoods');
INSERT INTO `t_systemlog` VALUES ('1213', null, '2016-04-07 16:07:49', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.MenuServiceImpl:getMenuResult');
INSERT INTO `t_systemlog` VALUES ('1214', null, '2016-04-07 16:07:50', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('1215', null, '2016-04-07 16:07:50', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.GoodsServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('1216', null, '2016-04-07 16:07:53', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.DetailsImageServiceImpl:getByGoods');
INSERT INTO `t_systemlog` VALUES ('1217', null, '2016-04-07 16:08:22', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('1218', null, '2016-04-07 16:08:22', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.GoodsServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('1219', null, '2016-04-07 16:08:25', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.DetailsImageServiceImpl:getByGoods');
INSERT INTO `t_systemlog` VALUES ('1220', null, '2016-04-07 16:08:36', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('1221', null, '2016-04-07 16:08:36', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.GoodsServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('1222', null, '2016-04-07 16:08:37', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.DetailsImageServiceImpl:getByGoods');
INSERT INTO `t_systemlog` VALUES ('1223', null, '2016-04-07 16:09:17', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.DetailsImageServiceImpl:getByGoods');
INSERT INTO `t_systemlog` VALUES ('1224', null, '2016-04-07 16:41:43', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('1225', null, '2016-04-07 16:41:43', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.GoodsServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('1226', null, '2016-04-07 16:41:51', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('1227', null, '2016-04-07 16:41:51', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.GoodsServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('1228', null, '2016-04-07 16:41:54', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.DetailsImageServiceImpl:getByGoods');
INSERT INTO `t_systemlog` VALUES ('1229', null, '2016-04-07 16:41:59', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('1230', null, '2016-04-07 16:41:59', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.GoodsServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('1231', null, '2016-04-07 16:42:41', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.MenuServiceImpl:getMenuResult');
INSERT INTO `t_systemlog` VALUES ('1232', null, '2016-04-07 16:42:43', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('1233', null, '2016-04-07 16:42:44', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.GoodsServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('1234', null, '2016-04-07 16:42:45', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.DetailsImageServiceImpl:getByGoods');
INSERT INTO `t_systemlog` VALUES ('1235', null, '2016-04-07 16:43:13', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('1236', null, '2016-04-07 16:43:13', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.GoodsServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('1237', null, '2016-04-07 16:43:26', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.MenuServiceImpl:getMenuResult');
INSERT INTO `t_systemlog` VALUES ('1238', null, '2016-04-07 16:43:28', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('1239', null, '2016-04-07 16:43:28', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.GoodsServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('1240', null, '2016-04-07 16:44:43', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('1241', null, '2016-04-07 16:44:43', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.GoodsServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('1242', null, '2016-04-07 16:44:55', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.DetailsImageServiceImpl:getByGoods');
INSERT INTO `t_systemlog` VALUES ('1243', null, '2016-04-07 16:46:03', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('1244', null, '2016-04-07 16:46:03', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.GoodsServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('1245', null, '2016-04-07 16:46:04', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.DetailsImageServiceImpl:getByGoods');
INSERT INTO `t_systemlog` VALUES ('1246', null, '2016-04-07 16:46:40', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.DetailsImageServiceImpl:getByGoods');
INSERT INTO `t_systemlog` VALUES ('1247', 'admin', '2016-04-07 16:52:37', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.EmployeeServiceImpl:findcheckLogin');
INSERT INTO `t_systemlog` VALUES ('1248', 'admin', '2016-04-07 16:52:38', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:getUserPermission');
INSERT INTO `t_systemlog` VALUES ('1249', 'admin', '2016-04-07 16:52:39', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.MenuServiceImpl:getMenuResult');
INSERT INTO `t_systemlog` VALUES ('1250', 'admin', '2016-04-07 16:52:41', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('1251', 'admin', '2016-04-07 16:52:42', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.GoodsServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('1252', 'admin', '2016-04-07 16:53:14', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('1253', 'admin', '2016-04-07 16:53:14', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.GoodsServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('1254', 'admin', '2016-04-07 16:53:31', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.MenuServiceImpl:getMenuResult');
INSERT INTO `t_systemlog` VALUES ('1255', 'admin', '2016-04-07 16:53:33', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('1256', 'admin', '2016-04-07 16:53:33', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.GoodsServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('1257', 'admin', '2016-04-07 16:58:47', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('1258', 'admin', '2016-04-07 16:58:47', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.GoodsServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('1259', 'admin', '2016-04-07 16:58:51', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.MenuServiceImpl:getMenuResult');
INSERT INTO `t_systemlog` VALUES ('1260', null, '2016-04-07 16:58:53', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.MenuServiceImpl:getMenuResult');
INSERT INTO `t_systemlog` VALUES ('1261', null, '2016-04-07 16:58:54', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('1262', null, '2016-04-07 16:58:54', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.GoodsServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('1263', null, '2016-04-07 16:58:56', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.MenuServiceImpl:getMenuResult');
INSERT INTO `t_systemlog` VALUES ('1264', null, '2016-04-07 16:59:08', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('1265', null, '2016-04-07 16:59:08', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.GoodsServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('1266', null, '2016-04-07 17:01:50', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('1267', null, '2016-04-07 17:01:50', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.GoodsServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('1268', null, '2016-04-07 17:01:59', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.DetailsImageServiceImpl:getByGoods');
INSERT INTO `t_systemlog` VALUES ('1269', null, '2016-04-07 17:02:41', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.RoleServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('1270', null, '2016-04-07 17:02:41', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.EmployeeServiceImpl:empQuery');
INSERT INTO `t_systemlog` VALUES ('1271', null, '2016-04-07 17:03:22', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('1272', null, '2016-04-07 17:03:22', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('1273', null, '2016-04-07 17:03:45', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('1274', null, '2016-04-07 17:03:46', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('1275', null, '2016-04-07 17:03:51', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('1276', null, '2016-04-07 17:03:51', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('1277', null, '2016-04-07 17:04:03', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('1278', null, '2016-04-07 17:04:04', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('1279', null, '2016-04-07 17:04:06', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('1280', null, '2016-04-07 17:04:07', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('1281', null, '2016-04-07 17:04:14', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('1282', null, '2016-04-07 17:04:14', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('1283', null, '2016-04-07 17:18:34', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('1284', null, '2016-04-07 17:19:01', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('1285', null, '2016-04-07 17:19:02', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.GoodsServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('1286', null, '2016-04-07 17:19:02', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('1287', null, '2016-04-07 17:19:32', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('1288', null, '2016-04-07 17:19:36', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('1289', null, '2016-04-07 17:20:55', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('1290', null, '2016-04-07 17:21:02', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('1291', null, '2016-04-07 17:21:10', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('1292', null, '2016-04-07 17:21:13', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('1293', null, '2016-04-07 17:21:57', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('1294', null, '2016-04-07 17:21:57', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.GoodsServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('1295', null, '2016-04-07 17:22:04', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.RoleServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('1296', null, '2016-04-07 17:22:04', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:getAllPermission');
INSERT INTO `t_systemlog` VALUES ('1297', null, '2016-04-07 17:22:04', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:getAllPermission');
INSERT INTO `t_systemlog` VALUES ('1298', null, '2016-04-07 17:33:07', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.MenuServiceImpl:getMenuResult');
INSERT INTO `t_systemlog` VALUES ('1299', null, '2016-04-07 17:33:10', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('1300', null, '2016-04-07 17:33:32', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('1301', null, '2016-04-07 17:37:27', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('1302', null, '2016-04-07 17:37:35', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('1303', null, '2016-04-07 17:37:43', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('1304', null, '2016-04-07 17:37:47', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('1305', null, '2016-04-07 17:37:49', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('1306', null, '2016-04-07 17:37:50', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('1317', null, '2016-04-08 10:18:54', '110.184.47.44', 'com.huashidai.weihuotong.service.impl.UserServiceImpl:findcheckLogin');
INSERT INTO `t_systemlog` VALUES ('1319', null, '2016-04-08 10:19:37', '110.184.47.44', 'com.huashidai.weihuotong.service.impl.UserServiceImpl:findcheckLogin');
INSERT INTO `t_systemlog` VALUES ('1324', null, '2016-04-08 11:35:23', '110.184.47.44', 'com.huashidai.weihuotong.service.impl.EmployeeServiceImpl:findByCookie');
INSERT INTO `t_systemlog` VALUES ('1325', null, '2016-04-08 11:36:12', '110.184.47.44', 'com.huashidai.weihuotong.service.impl.EmployeeServiceImpl:findByCookie');
INSERT INTO `t_systemlog` VALUES ('1326', null, '2016-04-08 15:01:47', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.UserServiceImpl:findcheckLogin');
INSERT INTO `t_systemlog` VALUES ('1327', null, '2016-04-08 15:01:57', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.UserServiceImpl:findcheckLogin');
INSERT INTO `t_systemlog` VALUES ('1328', null, '2016-04-08 15:02:02', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.UserServiceImpl:findcheckLogin');
INSERT INTO `t_systemlog` VALUES ('1329', null, '2016-04-08 15:02:06', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.UserServiceImpl:findcheckLogin');
INSERT INTO `t_systemlog` VALUES ('1330', null, '2016-04-08 15:02:11', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.UserServiceImpl:findcheckLogin');
INSERT INTO `t_systemlog` VALUES ('1331', null, '2016-04-08 15:03:28', '110.184.47.44', 'com.huashidai.weihuotong.service.impl.UserServiceImpl:findcheckLogin');
INSERT INTO `t_systemlog` VALUES ('1332', null, '2016-04-08 15:21:43', '110.184.47.44', 'com.huashidai.weihuotong.service.impl.UserServiceImpl:getUserInfo');
INSERT INTO `t_systemlog` VALUES ('1333', null, '2016-04-08 15:24:43', '110.184.47.44', 'com.huashidai.weihuotong.service.impl.UserServiceImpl:getUserInfo');
INSERT INTO `t_systemlog` VALUES ('1334', null, '2016-04-08 15:24:46', '110.184.47.44', 'com.huashidai.weihuotong.service.impl.UserServiceImpl:getUserInfo');
INSERT INTO `t_systemlog` VALUES ('1335', null, '2016-04-08 15:25:38', '110.184.47.44', 'com.huashidai.weihuotong.service.impl.UserServiceImpl:getUserInfo');
INSERT INTO `t_systemlog` VALUES ('1336', null, '2016-04-08 15:25:42', '110.184.47.44', 'com.huashidai.weihuotong.service.impl.UserServiceImpl:getUserInfo');
INSERT INTO `t_systemlog` VALUES ('1337', null, '2016-04-08 15:25:54', '110.184.47.44', 'com.huashidai.weihuotong.service.impl.UserServiceImpl:getUserInfo');
INSERT INTO `t_systemlog` VALUES ('1338', null, '2016-04-08 15:29:32', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.UserServiceImpl:getUserInfo');
INSERT INTO `t_systemlog` VALUES ('1339', null, '2016-04-08 15:34:58', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.UserServiceImpl:getUserInfo');
INSERT INTO `t_systemlog` VALUES ('1340', null, '2016-04-08 15:35:50', '110.184.47.44', 'com.huashidai.weihuotong.service.impl.UserServiceImpl:getUserInfo');
INSERT INTO `t_systemlog` VALUES ('1341', null, '2016-04-11 10:08:28', '171.214.137.176', 'com.huashidai.weihuotong.service.impl.UserServiceImpl:findcheckLogin');
INSERT INTO `t_systemlog` VALUES ('1342', null, '2016-04-11 10:11:57', '171.214.137.176', 'com.huashidai.weihuotong.service.impl.UserServiceImpl:findcheckLogin');
INSERT INTO `t_systemlog` VALUES ('1343', 'admin', '2016-04-11 10:39:15', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.EmployeeServiceImpl:findcheckLogin');
INSERT INTO `t_systemlog` VALUES ('1344', 'admin', '2016-04-11 10:39:15', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:getUserPermission');
INSERT INTO `t_systemlog` VALUES ('1345', 'admin', '2016-04-11 10:39:16', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.MenuServiceImpl:getMenuResult');
INSERT INTO `t_systemlog` VALUES ('1346', 'admin', '2016-04-11 10:39:19', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('1347', 'admin', '2016-04-11 10:39:19', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.GoodsServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('1348', 'admin', '2016-04-11 10:39:23', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.DetailsImageServiceImpl:getByGoods');
INSERT INTO `t_systemlog` VALUES ('1349', null, '2016-04-11 10:39:36', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.MenuServiceImpl:getMenuResult');
INSERT INTO `t_systemlog` VALUES ('1350', null, '2016-04-11 10:39:38', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('1351', null, '2016-04-11 10:39:38', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.GoodsServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('1352', null, '2016-04-11 10:39:40', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.DetailsImageServiceImpl:getByGoods');
INSERT INTO `t_systemlog` VALUES ('1353', null, '2016-04-11 10:39:57', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.RoleServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('1354', null, '2016-04-11 10:39:57', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.EmployeeServiceImpl:empQuery');
INSERT INTO `t_systemlog` VALUES ('1356', null, '2016-04-11 10:43:32', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.UserServiceImpl:updatePassword');
INSERT INTO `t_systemlog` VALUES ('1357', null, '2016-04-11 10:46:13', '171.214.137.176', 'com.huashidai.weihuotong.service.impl.UserServiceImpl:getUserInfo');
INSERT INTO `t_systemlog` VALUES ('1358', null, '2016-04-11 11:38:27', '171.214.137.176', 'com.huashidai.weihuotong.service.impl.UserServiceImpl:findcheckLogin');
INSERT INTO `t_systemlog` VALUES ('1359', null, '2016-04-11 11:38:35', '171.214.137.176', 'com.huashidai.weihuotong.service.impl.UserServiceImpl:findcheckLogin');
INSERT INTO `t_systemlog` VALUES ('1385', null, '2016-04-11 11:41:22', '171.214.137.176', 'com.huashidai.weihuotong.service.impl.UserServiceImpl:register');
INSERT INTO `t_systemlog` VALUES ('1390', null, '2016-04-11 11:44:32', '171.214.137.176', 'com.huashidai.weihuotong.service.impl.UserServiceImpl:register');
INSERT INTO `t_systemlog` VALUES ('1391', null, '2016-04-11 11:44:48', '171.214.137.176', 'com.huashidai.weihuotong.service.impl.UserServiceImpl:findcheckLogin');
INSERT INTO `t_systemlog` VALUES ('1392', null, '2016-04-11 11:45:19', '171.214.137.176', 'com.huashidai.weihuotong.service.impl.UserServiceImpl:findcheckLogin');
INSERT INTO `t_systemlog` VALUES ('1393', null, '2016-04-11 14:21:51', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:searchStore');
INSERT INTO `t_systemlog` VALUES ('1394', null, '2016-04-11 14:22:13', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:searchStore');
INSERT INTO `t_systemlog` VALUES ('1395', null, '2016-04-11 14:24:27', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:searchStore');
INSERT INTO `t_systemlog` VALUES ('1396', null, '2016-04-11 14:24:48', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:searchStore');
INSERT INTO `t_systemlog` VALUES ('1397', null, '2016-04-11 14:25:50', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.GoodsServiceImpl:searchGoods');
INSERT INTO `t_systemlog` VALUES ('1398', null, '2016-04-11 14:25:58', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.GoodsServiceImpl:searchGoods');
INSERT INTO `t_systemlog` VALUES ('1399', null, '2016-04-11 14:26:15', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.GoodsServiceImpl:searchGoods');
INSERT INTO `t_systemlog` VALUES ('1400', null, '2016-04-11 14:27:01', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.GoodsServiceImpl:searchGoods');
INSERT INTO `t_systemlog` VALUES ('1401', null, '2016-04-11 14:39:27', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.MenuServiceImpl:getMenuResult');
INSERT INTO `t_systemlog` VALUES ('1402', null, '2016-04-11 14:39:29', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('1403', null, '2016-04-11 14:39:29', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.GoodsServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('1404', null, '2016-04-11 14:39:40', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.MenuServiceImpl:getMenuResult');
INSERT INTO `t_systemlog` VALUES ('1405', null, '2016-04-11 14:42:54', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.MenuServiceImpl:getMenuResult');
INSERT INTO `t_systemlog` VALUES ('1406', null, '2016-04-11 14:43:15', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.MenuServiceImpl:getMenuResult');
INSERT INTO `t_systemlog` VALUES ('1407', null, '2016-04-11 14:43:22', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('1408', null, '2016-04-11 14:43:22', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.GoodsServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('1409', null, '2016-04-11 15:22:03', '171.214.138.255', 'com.huashidai.weihuotong.service.impl.UserServiceImpl:register');
INSERT INTO `t_systemlog` VALUES ('1411', null, '2016-04-11 15:23:35', '171.214.138.255', 'com.huashidai.weihuotong.service.impl.UserServiceImpl:register');
INSERT INTO `t_systemlog` VALUES ('1412', null, '2016-04-11 15:24:48', '171.214.138.255', 'com.huashidai.weihuotong.service.impl.UserServiceImpl:register');
INSERT INTO `t_systemlog` VALUES ('1413', null, '2016-04-11 15:36:51', '171.214.138.255', 'com.huashidai.weihuotong.service.impl.UserServiceImpl:register');
INSERT INTO `t_systemlog` VALUES ('1414', null, '2016-04-11 15:36:51', '171.214.138.255', 'com.huashidai.weihuotong.service.impl.UserServiceImpl:findcheckLogin');
INSERT INTO `t_systemlog` VALUES ('1416', null, '2016-04-11 15:42:16', '171.214.138.255', 'com.huashidai.weihuotong.service.impl.UserServiceImpl:register');
INSERT INTO `t_systemlog` VALUES ('1417', null, '2016-04-11 15:48:42', '171.214.138.255', 'com.huashidai.weihuotong.service.impl.UserServiceImpl:findcheckLogin');
INSERT INTO `t_systemlog` VALUES ('1418', null, '2016-04-11 15:49:36', '171.214.138.255', 'com.huashidai.weihuotong.service.impl.UserServiceImpl:findcheckLogin');
INSERT INTO `t_systemlog` VALUES ('1419', null, '2016-04-12 10:10:36', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.MenuServiceImpl:getMenuResult');
INSERT INTO `t_systemlog` VALUES ('1420', null, '2016-04-12 10:10:39', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('1421', null, '2016-04-12 10:10:39', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.GoodsServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('1422', null, '2016-04-12 11:00:42', '171.214.137.25', 'com.huashidai.weihuotong.service.impl.UserServiceImpl:findcheckLogin');
INSERT INTO `t_systemlog` VALUES ('1423', null, '2016-04-12 11:00:53', '171.214.137.25', 'com.huashidai.weihuotong.service.impl.UserServiceImpl:findcheckLogin');
INSERT INTO `t_systemlog` VALUES ('1424', null, '2016-04-12 11:00:55', '171.214.137.25', 'com.huashidai.weihuotong.service.impl.UserServiceImpl:findcheckLogin');
INSERT INTO `t_systemlog` VALUES ('1425', null, '2016-04-12 11:00:56', '171.214.137.25', 'com.huashidai.weihuotong.service.impl.UserServiceImpl:findcheckLogin');
INSERT INTO `t_systemlog` VALUES ('1426', null, '2016-04-12 11:00:58', '171.214.137.25', 'com.huashidai.weihuotong.service.impl.UserServiceImpl:findcheckLogin');
INSERT INTO `t_systemlog` VALUES ('1427', null, '2016-04-12 11:21:54', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.MenuServiceImpl:getMenuResult');
INSERT INTO `t_systemlog` VALUES ('1428', null, '2016-04-12 11:21:59', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.MenuServiceImpl:getMenuResult');
INSERT INTO `t_systemlog` VALUES ('1429', null, '2016-04-12 11:22:06', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.MenuServiceImpl:getMenuResult');
INSERT INTO `t_systemlog` VALUES ('1430', null, '2016-04-12 11:22:12', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.MenuServiceImpl:getMenuResult');
INSERT INTO `t_systemlog` VALUES ('1431', null, '2016-04-12 11:23:08', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.MenuServiceImpl:getMenuResult');
INSERT INTO `t_systemlog` VALUES ('1432', null, '2016-04-12 11:23:16', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.MenuServiceImpl:getMenuResult');
INSERT INTO `t_systemlog` VALUES ('1433', null, '2016-04-12 11:25:31', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.MenuServiceImpl:getMenuResult');
INSERT INTO `t_systemlog` VALUES ('1434', null, '2016-04-12 11:25:49', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('1435', null, '2016-04-12 11:25:55', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.MenuServiceImpl:getMenuResult');
INSERT INTO `t_systemlog` VALUES ('1436', null, '2016-04-12 11:25:57', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('1437', null, '2016-04-12 11:25:57', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.GoodsServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('1438', null, '2016-04-12 11:31:26', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.MenuServiceImpl:getMenuResult');
INSERT INTO `t_systemlog` VALUES ('1439', null, '2016-04-12 11:31:28', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('1440', null, '2016-04-12 11:31:29', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.GoodsServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('1441', null, '2016-04-12 11:31:31', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.MenuServiceImpl:getMenuResult');
INSERT INTO `t_systemlog` VALUES ('1442', null, '2016-04-12 11:32:06', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.MenuServiceImpl:getMenuResult');
INSERT INTO `t_systemlog` VALUES ('1443', null, '2016-04-12 11:32:08', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('1444', null, '2016-04-12 11:32:08', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.GoodsServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('1445', null, '2016-04-12 11:32:24', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.MenuServiceImpl:getMenuResult');
INSERT INTO `t_systemlog` VALUES ('1446', null, '2016-04-12 11:32:25', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('1447', null, '2016-04-12 11:32:25', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.GoodsServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('1448', null, '2016-04-12 11:33:22', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.MenuServiceImpl:getMenuResult');
INSERT INTO `t_systemlog` VALUES ('1449', null, '2016-04-12 11:33:24', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('1450', null, '2016-04-12 11:33:24', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.GoodsServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('1451', null, '2016-04-12 11:33:35', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.MenuServiceImpl:getMenuResult');
INSERT INTO `t_systemlog` VALUES ('1452', null, '2016-04-12 11:33:37', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('1453', null, '2016-04-12 11:33:37', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.GoodsServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('1454', null, '2016-04-12 11:33:39', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.GoodsServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('1455', null, '2016-04-12 11:33:42', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.GoodsServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('1456', null, '2016-04-12 11:33:44', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.GoodsServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('1457', null, '2016-04-12 11:35:35', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('1458', null, '2016-04-12 11:35:35', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.GoodsServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('1459', null, '2016-04-12 11:35:47', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('1460', null, '2016-04-12 11:35:47', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.GoodsServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('1461', null, '2016-04-12 11:36:38', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('1462', null, '2016-04-12 11:36:38', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.GoodsServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('1463', null, '2016-04-12 11:38:01', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('1464', null, '2016-04-12 11:38:01', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.GoodsServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('1465', null, '2016-04-12 11:55:41', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.MenuServiceImpl:getMenuResult');
INSERT INTO `t_systemlog` VALUES ('1466', null, '2016-04-12 11:55:43', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('1467', null, '2016-04-12 11:57:24', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.MenuServiceImpl:getMenuResult');
INSERT INTO `t_systemlog` VALUES ('1468', null, '2016-04-12 11:57:27', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.MenuServiceImpl:getMenuResult');
INSERT INTO `t_systemlog` VALUES ('1469', null, '2016-04-12 11:57:29', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('1470', null, '2016-04-12 11:57:30', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.GoodsServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('1471', null, '2016-04-12 12:02:56', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.MenuServiceImpl:getMenuResult');
INSERT INTO `t_systemlog` VALUES ('1472', null, '2016-04-12 12:02:59', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('1473', null, '2016-04-12 12:03:00', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.GoodsServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('1474', null, '2016-04-12 12:03:04', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.MenuServiceImpl:getMenuResult');
INSERT INTO `t_systemlog` VALUES ('1475', null, '2016-04-12 12:03:17', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.GoodsServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('1476', null, '2016-04-12 12:05:00', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.GoodsServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('1477', null, '2016-04-12 12:05:48', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.GoodsServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('1478', null, '2016-04-12 12:06:30', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('1479', null, '2016-04-12 12:06:30', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.GoodsServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('1480', null, '2016-04-12 12:08:29', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('1481', null, '2016-04-12 12:08:30', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.GoodsServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('1482', null, '2016-04-12 12:08:40', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.GoodsServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('1483', null, '2016-04-12 12:09:09', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.GoodsServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('1484', null, '2016-04-12 12:09:13', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('1485', null, '2016-04-12 12:09:13', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.GoodsServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('1486', null, '2016-04-12 12:10:00', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('1487', null, '2016-04-12 12:10:00', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.GoodsServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('1488', null, '2016-04-12 12:10:12', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.GoodsServiceImpl:leave');
INSERT INTO `t_systemlog` VALUES ('1489', null, '2016-04-12 12:10:14', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.GoodsServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('1490', null, '2016-04-12 12:10:19', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.GoodsServiceImpl:up');
INSERT INTO `t_systemlog` VALUES ('1491', null, '2016-04-12 12:10:21', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.GoodsServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('1492', null, '2016-04-12 12:10:24', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.GoodsServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('1493', null, '2016-04-12 14:51:57', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.MenuServiceImpl:getMenuResult');
INSERT INTO `t_systemlog` VALUES ('1494', null, '2016-04-12 14:52:26', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('1495', null, '2016-04-12 14:52:27', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.GoodsServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('1496', null, '2016-04-12 14:54:07', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('1497', null, '2016-04-12 14:54:07', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('1498', null, '2016-04-12 15:05:50', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.MenuServiceImpl:getMenuResult');
INSERT INTO `t_systemlog` VALUES ('1499', null, '2016-04-12 15:05:52', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('1500', null, '2016-04-12 15:05:53', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.GoodsServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('1501', null, '2016-04-12 15:13:23', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.MenuServiceImpl:getMenuResult');
INSERT INTO `t_systemlog` VALUES ('1502', null, '2016-04-12 15:13:23', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.MenuServiceImpl:getMenuResult');
INSERT INTO `t_systemlog` VALUES ('1503', null, '2016-04-12 15:13:26', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.MenuServiceImpl:getMenuResult');
INSERT INTO `t_systemlog` VALUES ('1504', null, '2016-04-12 15:13:26', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('1505', null, '2016-04-12 15:13:26', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('1506', null, '2016-04-12 15:13:26', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('1507', null, '2016-04-12 15:13:32', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.MenuServiceImpl:getMenuResult');
INSERT INTO `t_systemlog` VALUES ('1508', null, '2016-04-12 15:13:47', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('1509', null, '2016-04-12 15:13:52', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('1510', null, '2016-04-12 15:13:52', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('1511', null, '2016-04-12 15:13:52', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('1512', null, '2016-04-12 15:14:51', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('1513', null, '2016-04-12 15:14:51', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('1514', null, '2016-04-12 15:15:09', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('1515', null, '2016-04-12 15:15:09', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('1516', null, '2016-04-12 15:15:09', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('1517', null, '2016-04-12 15:25:33', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('1518', null, '2016-04-12 15:27:12', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.MenuServiceImpl:getMenuResult');
INSERT INTO `t_systemlog` VALUES ('1519', null, '2016-04-12 15:27:23', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.MenuServiceImpl:getMenuResult');
INSERT INTO `t_systemlog` VALUES ('1520', null, '2016-04-12 15:28:00', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.MenuServiceImpl:getMenuResult');
INSERT INTO `t_systemlog` VALUES ('1521', null, '2016-04-12 15:28:03', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('1522', null, '2016-04-12 15:28:04', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.GoodsServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('1523', null, '2016-04-12 15:28:46', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('1524', null, '2016-04-12 15:28:46', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.GoodsServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('1525', null, '2016-04-12 15:28:53', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.MenuServiceImpl:getMenuResult');
INSERT INTO `t_systemlog` VALUES ('1526', null, '2016-04-12 15:28:55', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('1527', null, '2016-04-12 15:28:55', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.GoodsServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('1528', null, '2016-04-12 15:29:00', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('1529', null, '2016-04-12 15:30:53', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.MenuServiceImpl:getMenuResult');
INSERT INTO `t_systemlog` VALUES ('1530', null, '2016-04-12 15:30:55', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('1531', null, '2016-04-12 15:31:19', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.MenuServiceImpl:getMenuResult');
INSERT INTO `t_systemlog` VALUES ('1532', null, '2016-04-12 15:31:20', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('1533', null, '2016-04-12 15:33:10', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.MenuServiceImpl:getMenuResult');
INSERT INTO `t_systemlog` VALUES ('1534', null, '2016-04-12 15:33:12', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('1535', null, '2016-04-12 15:33:37', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.MenuServiceImpl:getMenuResult');
INSERT INTO `t_systemlog` VALUES ('1536', null, '2016-04-12 15:36:02', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.MenuServiceImpl:getMenuResult');
INSERT INTO `t_systemlog` VALUES ('1537', null, '2016-04-12 15:36:05', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.MenuServiceImpl:getMenuResult');
INSERT INTO `t_systemlog` VALUES ('1538', null, '2016-04-12 15:36:08', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('1539', null, '2016-04-12 15:39:16', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.MenuServiceImpl:getMenuResult');
INSERT INTO `t_systemlog` VALUES ('1540', null, '2016-04-12 15:39:18', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('1541', null, '2016-04-12 15:40:34', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.MenuServiceImpl:getMenuResult');
INSERT INTO `t_systemlog` VALUES ('1542', null, '2016-04-12 15:40:37', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('1543', null, '2016-04-12 15:41:13', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.MenuServiceImpl:getMenuResult');
INSERT INTO `t_systemlog` VALUES ('1544', null, '2016-04-12 15:41:14', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('1545', null, '2016-04-12 15:42:41', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.MenuServiceImpl:getMenuResult');
INSERT INTO `t_systemlog` VALUES ('1546', null, '2016-04-12 15:42:43', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('1547', null, '2016-04-12 15:43:02', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('1548', null, '2016-04-12 15:45:01', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('1549', null, '2016-04-12 15:45:12', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('1550', null, '2016-04-12 15:45:15', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('1551', null, '2016-04-12 15:45:19', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('1552', null, '2016-04-12 15:45:19', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('1553', null, '2016-04-12 15:45:20', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.GoodsServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('1554', null, '2016-04-12 15:46:25', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('1555', null, '2016-04-12 15:46:40', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('1556', null, '2016-04-12 15:46:40', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('1557', null, '2016-04-12 15:46:43', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('1558', null, '2016-04-12 15:48:33', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('1559', null, '2016-04-12 15:48:33', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('1560', null, '2016-04-12 15:50:03', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('1561', null, '2016-04-12 15:50:03', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('1562', null, '2016-04-12 15:52:30', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('1563', null, '2016-04-12 15:52:31', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('1564', null, '2016-04-12 15:52:34', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('1565', null, '2016-04-12 15:52:42', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('1566', null, '2016-04-12 15:56:29', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.MenuServiceImpl:getMenuResult');
INSERT INTO `t_systemlog` VALUES ('1567', null, '2016-04-12 15:56:31', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('1568', null, '2016-04-12 15:56:31', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('1569', null, '2016-04-12 15:56:34', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('1570', null, '2016-04-12 15:57:02', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('1571', null, '2016-04-12 15:57:02', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.GoodsServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('1572', null, '2016-04-12 15:57:03', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('1573', null, '2016-04-12 15:57:03', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('1574', null, '2016-04-12 15:57:05', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('1575', null, '2016-04-12 15:57:12', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.MenuServiceImpl:getMenuResult');
INSERT INTO `t_systemlog` VALUES ('1576', null, '2016-04-12 15:57:14', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('1577', null, '2016-04-12 15:57:14', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('1578', null, '2016-04-12 15:57:23', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('1579', null, '2016-04-12 15:57:24', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('1580', null, '2016-04-12 15:57:31', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('1581', null, '2016-04-12 16:04:14', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.MenuServiceImpl:getMenuResult');
INSERT INTO `t_systemlog` VALUES ('1582', null, '2016-04-12 16:04:19', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.MenuServiceImpl:getMenuResult');
INSERT INTO `t_systemlog` VALUES ('1583', null, '2016-04-12 16:04:24', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.MenuServiceImpl:getMenuResult');
INSERT INTO `t_systemlog` VALUES ('1584', null, '2016-04-12 16:33:53', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.MenuServiceImpl:getMenuResult');
INSERT INTO `t_systemlog` VALUES ('1585', null, '2016-04-12 16:33:58', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('1586', null, '2016-04-12 16:33:58', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.GoodsServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('1587', null, '2016-04-12 16:34:00', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('1588', null, '2016-04-12 16:34:00', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('1589', null, '2016-04-12 16:34:01', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('1590', null, '2016-04-12 16:34:02', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('1591', null, '2016-04-12 16:34:08', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('1592', null, '2016-04-12 16:34:09', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('1593', null, '2016-04-12 16:34:10', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('1594', null, '2016-04-12 16:34:10', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('1595', null, '2016-04-12 16:34:12', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('1596', null, '2016-04-12 16:34:12', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('1597', null, '2016-04-12 16:34:12', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('1598', null, '2016-04-12 16:34:19', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('1599', null, '2016-04-12 16:36:23', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('1600', null, '2016-04-12 16:36:23', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('1601', null, '2016-04-12 16:36:23', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('1602', null, '2016-04-12 17:00:41', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.MenuServiceImpl:getMenuResult');
INSERT INTO `t_systemlog` VALUES ('1603', null, '2016-04-12 17:00:43', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('1604', null, '2016-04-12 17:00:43', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('1605', null, '2016-04-12 17:00:43', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('1606', null, '2016-04-12 17:00:43', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('1607', null, '2016-04-12 17:02:06', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('1608', null, '2016-04-12 17:02:06', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('1609', null, '2016-04-12 17:02:06', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('1610', null, '2016-04-12 17:02:06', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('1611', null, '2016-04-12 17:04:32', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.MenuServiceImpl:getMenuResult');
INSERT INTO `t_systemlog` VALUES ('1612', null, '2016-04-12 17:04:34', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('1613', null, '2016-04-12 17:04:34', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('1614', null, '2016-04-12 17:04:34', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('1615', null, '2016-04-12 17:04:34', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('1616', null, '2016-04-12 17:12:15', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('1617', null, '2016-04-12 17:12:15', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('1618', null, '2016-04-12 17:12:15', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('1619', null, '2016-04-12 17:12:15', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('1620', null, '2016-04-12 17:12:41', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('1621', null, '2016-04-12 17:12:41', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('1622', null, '2016-04-12 17:12:41', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('1623', null, '2016-04-12 17:12:41', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('1624', null, '2016-04-12 17:12:41', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('1625', null, '2016-04-12 17:14:30', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('1626', null, '2016-04-12 17:14:30', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('1627', null, '2016-04-12 17:14:30', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('1628', null, '2016-04-12 17:14:30', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('1629', null, '2016-04-12 17:14:30', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('1630', null, '2016-04-12 17:16:18', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.MenuServiceImpl:getMenuResult');
INSERT INTO `t_systemlog` VALUES ('1631', null, '2016-04-12 17:16:20', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('1632', null, '2016-04-12 17:16:20', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('1633', null, '2016-04-12 17:16:20', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('1634', null, '2016-04-12 17:16:20', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('1635', null, '2016-04-12 17:16:20', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('1636', null, '2016-04-12 17:17:12', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('1637', null, '2016-04-12 17:17:12', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('1638', null, '2016-04-12 17:17:12', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('1639', null, '2016-04-12 17:17:12', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('1640', null, '2016-04-12 17:17:13', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('1641', null, '2016-04-12 17:19:02', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('1642', null, '2016-04-12 17:19:02', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('1643', null, '2016-04-12 17:19:02', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('1644', null, '2016-04-12 17:19:02', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('1645', null, '2016-04-12 17:19:02', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('1646', null, '2016-04-12 17:20:57', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('1647', null, '2016-04-12 17:20:57', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('1648', null, '2016-04-12 17:20:57', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('1649', null, '2016-04-12 17:20:57', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('1650', null, '2016-04-12 17:20:57', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('1651', null, '2016-04-12 17:21:34', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('1652', null, '2016-04-12 17:21:34', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('1653', null, '2016-04-12 17:21:34', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('1654', null, '2016-04-12 17:21:34', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('1655', null, '2016-04-12 17:21:34', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('1656', null, '2016-04-12 17:21:59', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('1657', null, '2016-04-12 17:21:59', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('1658', null, '2016-04-12 17:21:59', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('1659', null, '2016-04-12 17:21:59', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('1660', null, '2016-04-12 17:21:59', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('1661', null, '2016-04-12 17:22:46', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('1662', null, '2016-04-12 17:22:46', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('1663', null, '2016-04-12 17:22:46', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('1664', null, '2016-04-12 17:22:46', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('1665', null, '2016-04-12 17:22:46', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('1666', null, '2016-04-12 17:23:21', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('1667', null, '2016-04-12 17:23:21', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('1668', null, '2016-04-12 17:23:21', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('1669', null, '2016-04-12 17:23:21', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('1670', null, '2016-04-12 17:23:21', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('1671', null, '2016-04-12 17:24:35', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('1672', null, '2016-04-12 17:24:35', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('1673', null, '2016-04-12 17:24:35', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('1674', null, '2016-04-12 17:24:35', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('1675', null, '2016-04-12 17:24:35', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('1676', null, '2016-04-12 17:24:46', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('1677', null, '2016-04-12 17:24:46', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('1678', null, '2016-04-12 17:24:46', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('1679', null, '2016-04-12 17:24:46', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('1680', null, '2016-04-12 17:24:46', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('1681', null, '2016-04-12 17:27:25', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('1682', null, '2016-04-12 17:27:25', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('1683', null, '2016-04-12 17:27:25', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('1684', null, '2016-04-12 17:27:25', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('1685', null, '2016-04-12 17:27:25', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('1686', null, '2016-04-12 17:28:13', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('1687', null, '2016-04-12 17:28:13', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('1688', null, '2016-04-12 17:28:13', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('1689', null, '2016-04-12 17:28:13', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('1690', null, '2016-04-12 17:28:13', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('1691', null, '2016-04-12 17:28:44', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('1692', null, '2016-04-12 17:28:44', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('1693', null, '2016-04-12 17:28:44', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('1694', null, '2016-04-12 17:28:44', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('1695', null, '2016-04-12 17:28:44', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('1696', null, '2016-04-12 17:29:24', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('1697', null, '2016-04-12 17:29:25', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.GoodsServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('1698', null, '2016-04-12 17:29:26', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('1699', null, '2016-04-12 17:29:26', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('1700', null, '2016-04-12 17:29:26', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('1701', null, '2016-04-12 17:29:26', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('1702', null, '2016-04-12 17:29:26', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('1703', null, '2016-04-12 17:31:21', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('1704', null, '2016-04-12 17:31:21', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('1705', null, '2016-04-12 17:31:21', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('1706', null, '2016-04-12 17:31:21', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('1707', null, '2016-04-12 17:31:21', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('1708', null, '2016-04-12 17:32:22', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.MenuServiceImpl:getMenuResult');
INSERT INTO `t_systemlog` VALUES ('1709', null, '2016-04-12 17:32:24', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('1710', null, '2016-04-12 17:32:24', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('1711', null, '2016-04-12 17:32:24', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('1712', null, '2016-04-12 17:32:24', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('1713', null, '2016-04-12 17:32:25', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('1714', null, '2016-04-12 17:33:11', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('1715', null, '2016-04-12 17:33:11', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('1716', null, '2016-04-12 17:33:11', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('1717', null, '2016-04-12 17:33:11', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('1718', null, '2016-04-12 17:33:11', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('1719', null, '2016-04-12 17:33:40', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('1720', null, '2016-04-12 17:33:41', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('1721', null, '2016-04-12 17:33:42', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('1722', null, '2016-04-12 17:36:41', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('1724', null, '2016-04-12 17:36:57', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('1725', null, '2016-04-12 17:37:09', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('1726', null, '2016-04-12 17:44:45', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('1727', null, '2016-04-12 17:44:45', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('1728', null, '2016-04-12 17:44:45', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('1729', null, '2016-04-12 17:44:45', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('1730', null, '2016-04-12 17:44:45', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('1731', null, '2016-04-12 17:50:56', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('1732', null, '2016-04-12 17:50:56', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('1733', null, '2016-04-12 17:50:56', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('1734', null, '2016-04-12 17:50:56', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('1735', null, '2016-04-12 17:50:56', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('1736', null, '2016-04-12 17:51:38', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('1737', null, '2016-04-12 17:51:38', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('1738', null, '2016-04-12 17:51:38', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('1739', null, '2016-04-12 17:51:38', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('1740', null, '2016-04-12 17:51:38', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('1741', null, '2016-04-12 17:51:51', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('1742', null, '2016-04-12 17:52:05', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('1743', null, '2016-04-12 17:52:39', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('1744', null, '2016-04-12 17:52:39', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('1745', null, '2016-04-12 17:52:39', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('1746', null, '2016-04-12 17:52:39', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('1747', null, '2016-04-12 17:52:39', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('1751', null, '2016-04-12 17:53:35', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('1754', null, '2016-04-12 17:55:30', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('1755', null, '2016-04-12 17:55:30', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('1756', null, '2016-04-12 17:55:30', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('1757', null, '2016-04-12 17:55:30', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('1758', null, '2016-04-12 17:55:31', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('1760', null, '2016-04-12 17:56:32', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('1761', null, '2016-04-12 17:56:32', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('1762', null, '2016-04-12 17:56:32', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('1763', null, '2016-04-12 17:56:32', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('1764', null, '2016-04-12 17:56:32', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('1766', null, '2016-04-12 17:57:19', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('1767', null, '2016-04-12 17:57:19', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('1768', null, '2016-04-12 17:57:19', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('1769', null, '2016-04-12 17:57:19', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('1770', null, '2016-04-12 17:57:20', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('1772', null, '2016-04-12 17:58:09', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('1773', null, '2016-04-12 17:58:09', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('1774', null, '2016-04-12 17:58:09', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('1775', null, '2016-04-12 17:58:09', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('1776', null, '2016-04-12 17:58:09', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('1777', null, '2016-04-12 18:05:17', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('1778', null, '2016-04-12 18:05:17', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('1779', null, '2016-04-12 18:05:17', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('1780', null, '2016-04-12 18:05:17', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('1781', null, '2016-04-12 18:05:17', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('1783', null, '2016-04-12 18:07:20', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('1784', null, '2016-04-12 18:07:20', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('1785', null, '2016-04-12 18:07:20', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('1786', null, '2016-04-12 18:07:20', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('1787', null, '2016-04-12 18:07:20', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('1789', null, '2016-04-12 18:08:07', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('1790', null, '2016-04-12 18:08:07', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('1791', null, '2016-04-12 18:08:07', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('1792', null, '2016-04-12 18:08:07', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('1793', null, '2016-04-12 18:08:08', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('1795', null, '2016-04-12 18:08:30', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('1796', null, '2016-04-12 18:08:30', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('1797', null, '2016-04-12 18:08:30', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('1798', null, '2016-04-12 18:08:30', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('1799', null, '2016-04-12 18:08:31', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('1801', null, '2016-04-12 18:09:38', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('1802', null, '2016-04-12 18:09:38', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('1803', null, '2016-04-12 18:09:38', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('1804', null, '2016-04-12 18:09:39', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('1805', null, '2016-04-12 18:09:39', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('1807', null, '2016-04-12 18:10:21', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.MenuServiceImpl:getMenuResult');
INSERT INTO `t_systemlog` VALUES ('1808', null, '2016-04-12 18:10:33', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('1809', null, '2016-04-12 18:10:33', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('1810', null, '2016-04-12 18:10:34', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('1811', null, '2016-04-12 18:10:34', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('1812', null, '2016-04-12 18:10:34', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('1814', null, '2016-04-12 18:10:53', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('1815', null, '2016-04-12 18:10:53', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('1816', null, '2016-04-12 18:10:53', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('1817', null, '2016-04-12 18:10:53', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('1818', null, '2016-04-12 18:10:53', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('1820', null, '2016-04-12 18:11:43', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('1821', null, '2016-04-12 18:11:43', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('1822', null, '2016-04-12 18:11:43', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('1823', null, '2016-04-12 18:11:43', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('1824', null, '2016-04-12 18:11:43', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('1826', null, '2016-04-12 18:12:13', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('1827', null, '2016-04-12 18:12:13', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('1828', null, '2016-04-12 18:12:13', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('1829', null, '2016-04-12 18:12:13', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('1830', null, '2016-04-12 18:12:13', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('1832', null, '2016-04-12 18:12:49', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('1833', null, '2016-04-12 18:12:49', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('1834', null, '2016-04-12 18:12:49', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('1835', null, '2016-04-12 18:12:49', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('1836', null, '2016-04-12 18:12:49', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('1839', null, '2016-04-13 10:01:35', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.MenuServiceImpl:getMenuResult');
INSERT INTO `t_systemlog` VALUES ('1840', null, '2016-04-13 10:01:57', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('1841', null, '2016-04-13 10:01:57', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('1842', null, '2016-04-13 10:01:57', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('1843', null, '2016-04-13 10:01:57', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('1844', null, '2016-04-13 10:01:57', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('1845', null, '2016-04-13 10:02:07', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('1847', null, '2016-04-13 10:03:53', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('1848', null, '2016-04-13 10:03:53', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('1849', null, '2016-04-13 10:03:53', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('1850', null, '2016-04-13 10:03:53', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('1851', null, '2016-04-13 10:03:53', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('1852', null, '2016-04-13 10:03:58', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('1853', null, '2016-04-13 10:14:00', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('1854', null, '2016-04-13 10:14:00', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('1855', null, '2016-04-13 10:14:00', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('1856', null, '2016-04-13 10:14:00', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('1857', null, '2016-04-13 10:14:00', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('1858', null, '2016-04-13 10:14:04', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('1860', null, '2016-04-13 10:18:05', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('1861', null, '2016-04-13 10:18:05', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('1862', null, '2016-04-13 10:18:05', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('1863', null, '2016-04-13 10:18:05', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('1864', null, '2016-04-13 10:18:05', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('1865', null, '2016-04-13 10:18:09', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('1867', null, '2016-04-13 10:18:43', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('1868', null, '2016-04-13 10:18:43', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('1869', null, '2016-04-13 10:18:43', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('1870', null, '2016-04-13 10:18:43', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('1871', null, '2016-04-13 10:18:43', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('1872', null, '2016-04-13 10:18:46', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('1874', null, '2016-04-13 10:20:15', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('1875', null, '2016-04-13 10:20:15', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('1876', null, '2016-04-13 10:20:15', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('1877', null, '2016-04-13 10:20:15', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('1878', null, '2016-04-13 10:20:16', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('1880', null, '2016-04-13 10:20:42', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('1882', null, '2016-04-13 10:20:47', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('1885', null, '2016-04-13 10:21:54', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('1886', null, '2016-04-13 10:21:54', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('1887', null, '2016-04-13 10:21:54', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('1888', null, '2016-04-13 10:21:54', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('1889', null, '2016-04-13 10:21:54', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('1891', null, '2016-04-13 10:22:05', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('1893', null, '2016-04-13 10:25:06', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('1894', null, '2016-04-13 10:25:06', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('1895', null, '2016-04-13 10:25:06', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('1896', null, '2016-04-13 10:25:06', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('1897', null, '2016-04-13 10:25:06', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('1898', null, '2016-04-13 10:25:21', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('1899', null, '2016-04-13 10:25:21', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('1900', null, '2016-04-13 11:16:57', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('1902', null, '2016-04-13 11:24:26', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('1903', null, '2016-04-13 11:24:26', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('1904', null, '2016-04-13 11:24:26', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('1905', null, '2016-04-13 11:24:26', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('1906', null, '2016-04-13 11:24:26', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('1907', null, '2016-04-13 11:26:49', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('1908', null, '2016-04-13 11:26:49', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('1909', null, '2016-04-13 11:26:49', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('1910', null, '2016-04-13 11:26:49', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('1911', null, '2016-04-13 11:26:49', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('1912', null, '2016-04-13 11:27:15', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('1913', null, '2016-04-13 11:27:15', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('1914', null, '2016-04-13 11:27:15', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('1915', null, '2016-04-13 11:27:15', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('1916', null, '2016-04-13 11:27:15', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('1917', null, '2016-04-13 11:27:51', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('1918', null, '2016-04-13 11:27:51', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('1919', null, '2016-04-13 11:27:51', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('1920', null, '2016-04-13 11:27:51', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('1921', null, '2016-04-13 11:27:51', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('1922', null, '2016-04-13 11:28:08', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('1923', null, '2016-04-13 11:28:08', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('1924', null, '2016-04-13 11:28:08', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('1925', null, '2016-04-13 11:28:08', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('1926', null, '2016-04-13 11:28:08', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('1927', null, '2016-04-13 11:31:48', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.MenuServiceImpl:getMenuResult');
INSERT INTO `t_systemlog` VALUES ('1928', null, '2016-04-13 11:32:17', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.MenuServiceImpl:getMenuResult');
INSERT INTO `t_systemlog` VALUES ('1929', null, '2016-04-13 11:32:22', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('1930', null, '2016-04-13 11:32:22', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.GoodsServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('1931', null, '2016-04-13 11:37:22', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.MenuServiceImpl:getMenuResult');
INSERT INTO `t_systemlog` VALUES ('1932', null, '2016-04-13 11:37:29', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.MenuServiceImpl:getMenuResult');
INSERT INTO `t_systemlog` VALUES ('1933', null, '2016-04-13 11:39:40', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.MenuServiceImpl:getMenuResult');
INSERT INTO `t_systemlog` VALUES ('1934', null, '2016-04-13 11:39:43', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('1935', null, '2016-04-13 11:39:43', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.GoodsServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('1936', null, '2016-04-13 11:39:49', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('1937', null, '2016-04-13 11:39:49', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('1938', null, '2016-04-13 11:39:49', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('1939', null, '2016-04-13 11:39:49', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('1940', null, '2016-04-13 11:39:49', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('1941', null, '2016-04-13 11:45:12', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.MenuServiceImpl:getMenuResult');
INSERT INTO `t_systemlog` VALUES ('1942', null, '2016-04-13 11:45:19', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.MenuServiceImpl:getMenuResult');
INSERT INTO `t_systemlog` VALUES ('1943', null, '2016-04-13 11:45:21', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.MenuServiceImpl:getMenuResult');
INSERT INTO `t_systemlog` VALUES ('1944', null, '2016-04-13 11:45:39', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.MenuServiceImpl:getMenuResult');
INSERT INTO `t_systemlog` VALUES ('1945', null, '2016-04-13 11:46:34', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.MenuServiceImpl:getMenuResult');
INSERT INTO `t_systemlog` VALUES ('1946', null, '2016-04-13 11:47:08', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('1947', null, '2016-04-13 11:47:09', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.GoodsServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('1948', null, '2016-04-13 11:53:59', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('1949', null, '2016-04-13 11:53:59', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.GoodsServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('1950', null, '2016-04-13 11:54:05', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('1951', null, '2016-04-13 11:54:05', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('1952', null, '2016-04-13 11:54:05', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('1953', null, '2016-04-13 11:54:05', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('1954', null, '2016-04-13 11:54:06', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('1955', null, '2016-04-13 11:55:01', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('1956', null, '2016-04-13 11:55:01', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('1957', null, '2016-04-13 11:55:01', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('1958', null, '2016-04-13 11:55:01', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('1959', null, '2016-04-13 11:55:01', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('1960', null, '2016-04-13 11:55:18', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.MenuServiceImpl:getMenuResult');
INSERT INTO `t_systemlog` VALUES ('1961', null, '2016-04-13 11:55:20', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('1962', null, '2016-04-13 11:55:20', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('1963', null, '2016-04-13 11:55:20', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('1964', null, '2016-04-13 11:55:20', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('1965', null, '2016-04-13 11:55:20', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('1966', null, '2016-04-13 11:56:05', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('1967', null, '2016-04-13 11:56:05', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('1968', null, '2016-04-13 11:56:05', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('1969', null, '2016-04-13 11:56:05', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('1970', null, '2016-04-13 11:56:05', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('1971', null, '2016-04-13 11:57:39', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('1972', null, '2016-04-13 11:57:39', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('1973', null, '2016-04-13 11:57:39', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('1974', null, '2016-04-13 11:57:39', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('1975', null, '2016-04-13 11:57:39', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('1976', null, '2016-04-13 11:58:02', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('1977', null, '2016-04-13 11:58:02', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('1978', null, '2016-04-13 11:58:02', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('1979', null, '2016-04-13 11:58:02', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('1980', null, '2016-04-13 11:58:02', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('1981', null, '2016-04-13 11:58:16', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('1982', null, '2016-04-13 11:58:16', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('1983', null, '2016-04-13 11:58:16', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('1984', null, '2016-04-13 11:58:16', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('1985', null, '2016-04-13 11:58:16', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('1986', null, '2016-04-13 11:58:32', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('1987', null, '2016-04-13 11:58:32', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('1988', null, '2016-04-13 11:58:32', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('1989', null, '2016-04-13 11:58:32', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('1990', null, '2016-04-13 11:58:32', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('1991', null, '2016-04-13 11:59:18', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('1992', null, '2016-04-13 11:59:18', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('1993', null, '2016-04-13 11:59:18', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('1994', null, '2016-04-13 11:59:18', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('1995', null, '2016-04-13 11:59:18', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('1996', null, '2016-04-13 11:59:30', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('1997', null, '2016-04-13 11:59:30', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('1998', null, '2016-04-13 11:59:30', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('1999', null, '2016-04-13 11:59:30', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('2000', null, '2016-04-13 11:59:30', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('2001', null, '2016-04-13 11:59:53', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('2002', null, '2016-04-13 11:59:53', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('2003', null, '2016-04-13 11:59:53', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('2004', null, '2016-04-13 11:59:53', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('2005', null, '2016-04-13 11:59:53', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('2006', null, '2016-04-13 14:29:29', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('2007', null, '2016-04-13 14:29:54', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('2035', null, '2016-04-13 14:33:33', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('2036', null, '2016-04-13 14:33:33', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('2037', null, '2016-04-13 14:33:33', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('2038', null, '2016-04-13 14:33:33', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('2039', null, '2016-04-13 14:33:33', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('2090', null, '2016-04-13 14:34:45', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('2091', null, '2016-04-13 14:34:45', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.GoodsServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('2092', null, '2016-04-13 14:35:10', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('2093', null, '2016-04-13 14:35:10', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('2094', null, '2016-04-13 14:35:10', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('2095', null, '2016-04-13 14:35:10', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('2096', null, '2016-04-13 14:35:10', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('2108', null, '2016-04-13 14:36:03', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.MenuServiceImpl:getMenuResult');
INSERT INTO `t_systemlog` VALUES ('2109', null, '2016-04-13 14:36:05', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('2110', null, '2016-04-13 14:36:05', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('2111', null, '2016-04-13 14:36:05', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('2112', null, '2016-04-13 14:36:05', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('2113', null, '2016-04-13 14:36:05', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('2115', null, '2016-04-13 14:36:09', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('2117', null, '2016-04-13 14:36:18', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('2119', null, '2016-04-13 14:36:21', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('2120', null, '2016-04-13 14:37:30', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('2121', null, '2016-04-13 14:37:30', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('2122', null, '2016-04-13 14:37:30', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('2123', null, '2016-04-13 14:37:30', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('2124', null, '2016-04-13 14:37:30', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('2127', null, '2016-04-13 14:37:33', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('2128', null, '2016-04-13 14:37:33', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('2129', null, '2016-04-13 14:37:41', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('2130', null, '2016-04-13 14:37:41', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('2131', null, '2016-04-13 14:37:41', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('2132', null, '2016-04-13 14:37:41', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('2133', null, '2016-04-13 14:37:41', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('2137', null, '2016-04-13 14:37:44', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('2138', null, '2016-04-13 14:37:44', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('2139', null, '2016-04-13 14:37:44', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('2140', null, '2016-04-13 14:39:10', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('2141', null, '2016-04-13 14:39:10', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('2142', null, '2016-04-13 14:39:10', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('2143', null, '2016-04-13 14:39:10', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('2144', null, '2016-04-13 14:39:10', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('2145', null, '2016-04-13 14:39:22', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('2146', null, '2016-04-13 14:39:22', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('2147', null, '2016-04-13 14:39:22', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('2148', null, '2016-04-13 14:39:22', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('2149', null, '2016-04-13 14:39:23', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('2155', null, '2016-04-13 14:39:36', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('2156', null, '2016-04-13 14:39:36', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('2157', null, '2016-04-13 14:39:36', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('2158', null, '2016-04-13 14:39:36', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('2159', null, '2016-04-13 14:39:36', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('2160', null, '2016-04-13 14:40:44', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('2161', null, '2016-04-13 14:40:44', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('2162', null, '2016-04-13 14:40:44', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('2163', null, '2016-04-13 14:40:44', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('2164', null, '2016-04-13 14:40:44', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('2171', null, '2016-04-13 14:40:52', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('2172', null, '2016-04-13 14:40:52', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('2173', null, '2016-04-13 14:40:52', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('2174', null, '2016-04-13 14:40:52', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('2175', null, '2016-04-13 14:40:52', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('2176', null, '2016-04-13 14:40:52', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('2177', null, '2016-04-13 14:45:10', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('2178', null, '2016-04-13 14:45:10', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('2179', null, '2016-04-13 14:45:10', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('2180', null, '2016-04-13 14:45:10', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('2181', null, '2016-04-13 14:45:10', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('2189', null, '2016-04-13 14:45:18', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('2190', null, '2016-04-13 14:45:18', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('2191', null, '2016-04-13 14:45:18', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('2192', null, '2016-04-13 14:45:18', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('2193', null, '2016-04-13 14:45:18', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('2194', null, '2016-04-13 14:45:18', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('2195', null, '2016-04-13 14:45:18', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('2203', null, '2016-04-13 14:45:48', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('2204', null, '2016-04-13 14:45:48', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('2205', null, '2016-04-13 14:45:48', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('2206', null, '2016-04-13 14:45:48', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('2207', null, '2016-04-13 14:45:48', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('2208', null, '2016-04-13 14:45:48', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('2209', null, '2016-04-13 14:45:48', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('2210', null, '2016-04-13 15:00:24', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('2211', null, '2016-04-13 15:00:24', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('2212', null, '2016-04-13 15:00:24', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('2213', null, '2016-04-13 15:00:43', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('2214', null, '2016-04-13 15:00:43', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('2215', null, '2016-04-13 15:00:43', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('2216', null, '2016-04-13 15:06:10', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('2217', null, '2016-04-13 15:06:10', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('2218', null, '2016-04-13 15:06:11', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('2219', null, '2016-04-13 15:06:21', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('2230', null, '2016-04-13 15:06:33', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('2231', null, '2016-04-13 15:06:33', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('2232', null, '2016-04-13 15:06:33', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('2233', null, '2016-04-13 15:06:33', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('2234', null, '2016-04-13 15:06:33', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('2235', null, '2016-04-13 15:06:33', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('2236', null, '2016-04-13 15:06:33', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('2237', null, '2016-04-13 15:06:33', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('2238', null, '2016-04-13 15:06:33', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('2239', null, '2016-04-13 15:06:33', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('2240', null, '2016-04-13 15:08:30', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('2241', null, '2016-04-13 15:08:30', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('2242', null, '2016-04-13 15:08:30', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('2254', null, '2016-04-13 15:08:43', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('2255', null, '2016-04-13 15:08:43', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('2256', null, '2016-04-13 15:08:43', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('2257', null, '2016-04-13 15:08:43', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('2258', null, '2016-04-13 15:08:43', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('2259', null, '2016-04-13 15:08:43', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('2260', null, '2016-04-13 15:08:43', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('2261', null, '2016-04-13 15:08:43', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('2262', null, '2016-04-13 15:08:43', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('2263', null, '2016-04-13 15:08:43', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('2264', null, '2016-04-13 15:08:43', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('2265', null, '2016-04-13 15:09:07', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('2266', null, '2016-04-13 15:09:07', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.GoodsServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('2267', null, '2016-04-13 15:09:08', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('2268', null, '2016-04-13 15:09:08', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('2269', null, '2016-04-13 15:09:08', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('2282', null, '2016-04-13 15:09:14', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('2283', null, '2016-04-13 15:09:14', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('2284', null, '2016-04-13 15:09:14', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('2285', null, '2016-04-13 15:09:14', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('2286', null, '2016-04-13 15:09:14', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('2287', null, '2016-04-13 15:09:14', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('2288', null, '2016-04-13 15:09:14', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('2289', null, '2016-04-13 15:09:14', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('2290', null, '2016-04-13 15:09:14', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('2291', null, '2016-04-13 15:09:14', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('2292', null, '2016-04-13 15:09:14', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('2293', null, '2016-04-13 15:09:14', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('2294', null, '2016-04-13 15:10:42', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.MenuServiceImpl:getMenuResult');
INSERT INTO `t_systemlog` VALUES ('2295', null, '2016-04-13 15:10:43', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('2296', null, '2016-04-13 15:10:43', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('2297', null, '2016-04-13 15:10:43', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('2299', null, '2016-04-13 15:10:52', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('2301', null, '2016-04-13 15:11:03', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('2303', null, '2016-04-13 15:11:09', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('2305', null, '2016-04-13 15:11:32', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('2307', null, '2016-04-13 15:15:50', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('2308', null, '2016-04-13 15:26:58', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.MenuServiceImpl:getMenuResult');
INSERT INTO `t_systemlog` VALUES ('2309', null, '2016-04-13 15:27:01', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('2310', null, '2016-04-13 15:27:01', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('2311', null, '2016-04-13 15:27:01', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('2312', null, '2016-04-13 15:27:09', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('2313', null, '2016-04-13 15:30:32', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('2314', null, '2016-04-13 15:30:32', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('2315', null, '2016-04-13 15:30:32', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('2316', null, '2016-04-13 15:31:40', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('2317', null, '2016-04-13 15:31:40', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('2318', null, '2016-04-13 15:31:40', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('2319', null, '2016-04-13 15:34:36', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('2320', null, '2016-04-13 15:37:50', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.MenuServiceImpl:getMenuResult');
INSERT INTO `t_systemlog` VALUES ('2321', null, '2016-04-13 15:37:54', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('2322', null, '2016-04-13 15:37:54', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('2323', null, '2016-04-13 15:37:54', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('2324', null, '2016-04-13 15:42:07', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.MenuServiceImpl:getMenuResult');
INSERT INTO `t_systemlog` VALUES ('2325', null, '2016-04-13 15:42:12', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.MenuServiceImpl:getMenuResult');
INSERT INTO `t_systemlog` VALUES ('2326', null, '2016-04-13 15:42:14', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('2327', null, '2016-04-13 15:42:14', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('2328', null, '2016-04-13 15:42:14', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('2330', null, '2016-04-13 15:45:30', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('2331', null, '2016-04-13 15:45:30', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('2332', null, '2016-04-13 15:45:30', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('2335', null, '2016-04-13 15:46:07', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('2336', null, '2016-04-13 15:46:07', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('2337', null, '2016-04-13 15:46:07', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('2341', null, '2016-04-13 15:47:58', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('2342', null, '2016-04-13 15:47:58', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('2343', null, '2016-04-13 15:47:58', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('2344', null, '2016-04-13 15:48:02', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.MenuServiceImpl:getMenuResult');
INSERT INTO `t_systemlog` VALUES ('2345', null, '2016-04-13 15:48:04', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('2346', null, '2016-04-13 15:48:04', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('2347', null, '2016-04-13 15:48:04', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('2349', null, '2016-04-13 15:54:51', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.MenuServiceImpl:getMenuResult');
INSERT INTO `t_systemlog` VALUES ('2350', null, '2016-04-13 15:54:53', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('2351', null, '2016-04-13 15:54:53', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('2352', null, '2016-04-13 15:54:53', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('2354', null, '2016-04-13 15:59:49', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.MenuServiceImpl:getMenuResult');
INSERT INTO `t_systemlog` VALUES ('2355', null, '2016-04-13 15:59:50', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('2356', null, '2016-04-13 15:59:50', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('2357', null, '2016-04-13 15:59:50', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('2358', null, '2016-04-13 16:00:08', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:save');
INSERT INTO `t_systemlog` VALUES ('2359', null, '2016-04-13 16:02:10', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('2360', null, '2016-04-13 16:02:10', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('2361', null, '2016-04-13 16:02:10', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('2362', null, '2016-04-13 16:06:40', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('2363', null, '2016-04-13 16:06:40', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('2364', null, '2016-04-13 16:06:40', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('2365', null, '2016-04-13 16:06:48', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.MenuServiceImpl:getMenuResult');
INSERT INTO `t_systemlog` VALUES ('2366', null, '2016-04-13 16:06:49', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('2367', null, '2016-04-13 16:06:49', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('2368', null, '2016-04-13 16:06:49', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('2369', null, '2016-04-13 16:07:21', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('2370', null, '2016-04-13 16:07:21', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('2371', null, '2016-04-13 16:07:21', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('2372', null, '2016-04-13 16:07:36', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('2373', null, '2016-04-13 16:07:36', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('2374', null, '2016-04-13 16:07:36', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('2375', null, '2016-04-13 16:07:45', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('2376', null, '2016-04-13 16:07:45', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.GoodsServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('2377', null, '2016-04-13 16:07:50', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('2378', null, '2016-04-13 16:07:50', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('2379', null, '2016-04-13 16:07:50', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('2380', null, '2016-04-13 16:09:23', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('2381', null, '2016-04-13 16:09:23', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('2382', null, '2016-04-13 16:09:23', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('2383', null, '2016-04-13 16:10:56', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('2384', null, '2016-04-13 16:14:18', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('2385', null, '2016-04-13 16:14:18', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('2386', null, '2016-04-13 16:14:18', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('2387', null, '2016-04-13 16:16:23', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:update');
INSERT INTO `t_systemlog` VALUES ('2388', null, '2016-04-13 16:16:23', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:update');
INSERT INTO `t_systemlog` VALUES ('2389', null, '2016-04-13 16:16:23', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:update');
INSERT INTO `t_systemlog` VALUES ('2390', null, '2016-04-13 16:16:23', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:update');
INSERT INTO `t_systemlog` VALUES ('2391', null, '2016-04-13 16:16:23', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:update');
INSERT INTO `t_systemlog` VALUES ('2392', null, '2016-04-13 16:16:23', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:update');
INSERT INTO `t_systemlog` VALUES ('2393', null, '2016-04-13 16:16:26', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('2394', null, '2016-04-13 16:16:29', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('2395', null, '2016-04-13 16:16:30', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('2396', null, '2016-04-13 16:16:31', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('2397', null, '2016-04-13 16:16:32', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('2398', null, '2016-04-13 16:16:32', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('2399', null, '2016-04-13 16:16:39', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('2400', null, '2016-04-13 16:16:40', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('2401', null, '2016-04-13 16:17:07', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('2402', null, '2016-04-13 16:17:07', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('2403', null, '2016-04-13 16:17:08', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('2404', null, '2016-04-13 16:17:08', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('2405', null, '2016-04-13 16:17:09', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('2406', null, '2016-04-13 16:17:12', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.MenuServiceImpl:getMenuResult');
INSERT INTO `t_systemlog` VALUES ('2407', null, '2016-04-13 16:17:13', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('2408', null, '2016-04-13 16:17:13', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('2409', null, '2016-04-13 16:17:13', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('2410', null, '2016-04-13 16:18:21', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:update');
INSERT INTO `t_systemlog` VALUES ('2411', null, '2016-04-13 16:18:25', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('2412', null, '2016-04-13 16:19:28', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:update');
INSERT INTO `t_systemlog` VALUES ('2413', null, '2016-04-13 16:21:03', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('2414', null, '2016-04-13 16:21:07', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:update');
INSERT INTO `t_systemlog` VALUES ('2415', null, '2016-04-13 16:21:09', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('2416', null, '2016-04-13 16:21:34', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:update');
INSERT INTO `t_systemlog` VALUES ('2417', null, '2016-04-13 16:21:35', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('2418', null, '2016-04-13 16:22:48', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:update');
INSERT INTO `t_systemlog` VALUES ('2419', null, '2016-04-13 16:22:49', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('2420', null, '2016-04-13 16:22:57', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:update');
INSERT INTO `t_systemlog` VALUES ('2421', null, '2016-04-13 16:22:58', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('2422', null, '2016-04-13 16:23:09', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.MenuServiceImpl:getMenuResult');
INSERT INTO `t_systemlog` VALUES ('2423', null, '2016-04-13 16:23:11', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('2424', null, '2016-04-13 16:23:11', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('2425', null, '2016-04-13 16:23:11', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('2426', null, '2016-04-13 16:29:19', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('2427', null, '2016-04-13 16:29:19', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('2428', null, '2016-04-13 16:29:19', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('2429', null, '2016-04-13 16:29:42', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('2432', null, '2016-04-13 16:31:03', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('2433', null, '2016-04-13 16:31:03', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('2434', null, '2016-04-13 16:31:03', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('2437', null, '2016-04-13 16:31:13', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:save');
INSERT INTO `t_systemlog` VALUES ('2438', null, '2016-04-13 16:31:14', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('2439', null, '2016-04-13 16:31:43', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:delete');
INSERT INTO `t_systemlog` VALUES ('2440', null, '2016-04-13 16:31:44', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('2441', null, '2016-04-13 16:44:40', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('2442', null, '2016-04-13 16:44:40', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('2443', null, '2016-04-13 16:44:40', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('2444', null, '2016-04-13 16:44:44', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('2445', null, '2016-04-13 16:45:33', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.MenuServiceImpl:getMenuResult');
INSERT INTO `t_systemlog` VALUES ('2446', null, '2016-04-13 16:45:35', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('2447', null, '2016-04-13 16:45:35', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('2448', null, '2016-04-13 16:45:35', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('2449', null, '2016-04-13 16:45:37', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('2450', null, '2016-04-13 16:46:26', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('2451', null, '2016-04-13 16:46:26', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.GoodsServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('2452', null, '2016-04-13 16:46:27', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('2453', null, '2016-04-13 16:46:27', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('2454', null, '2016-04-13 16:46:27', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('2455', null, '2016-04-13 16:46:29', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('2456', null, '2016-04-13 16:46:33', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.MenuServiceImpl:getMenuResult');
INSERT INTO `t_systemlog` VALUES ('2457', null, '2016-04-13 16:46:35', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('2458', null, '2016-04-13 16:46:35', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('2459', null, '2016-04-13 16:46:35', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('2460', null, '2016-04-13 16:46:37', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('2461', null, '2016-04-13 16:47:20', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.MenuServiceImpl:getMenuResult');
INSERT INTO `t_systemlog` VALUES ('2462', null, '2016-04-13 16:47:22', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('2463', null, '2016-04-13 16:47:22', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('2464', null, '2016-04-13 16:47:22', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('2465', null, '2016-04-13 16:47:24', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('2466', null, '2016-04-13 16:47:49', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.MenuServiceImpl:getMenuResult');
INSERT INTO `t_systemlog` VALUES ('2467', null, '2016-04-13 16:47:50', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('2468', null, '2016-04-13 16:47:50', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('2469', null, '2016-04-13 16:47:50', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('2470', null, '2016-04-13 16:47:52', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('2471', null, '2016-04-13 16:47:53', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('2472', null, '2016-04-13 16:47:55', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('2473', null, '2016-04-13 16:48:00', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('2474', null, '2016-04-13 16:48:51', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.MenuServiceImpl:getMenuResult');
INSERT INTO `t_systemlog` VALUES ('2475', null, '2016-04-13 16:48:53', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('2476', null, '2016-04-13 16:48:53', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('2477', null, '2016-04-13 16:48:53', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('2478', null, '2016-04-13 16:48:56', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('2479', null, '2016-04-13 16:48:57', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('2480', null, '2016-04-13 16:49:00', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('2481', null, '2016-04-13 16:49:01', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('2482', null, '2016-04-13 16:49:03', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('2483', null, '2016-04-13 16:49:03', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('2484', null, '2016-04-13 17:00:47', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('2485', null, '2016-04-13 17:00:47', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('2486', null, '2016-04-13 17:00:47', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('2487', null, '2016-04-13 17:47:24', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.MenuServiceImpl:getMenuResult');
INSERT INTO `t_systemlog` VALUES ('2488', null, '2016-04-13 17:47:27', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('2489', null, '2016-04-13 17:47:27', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('2490', null, '2016-04-13 17:47:27', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('2491', null, '2016-04-13 17:52:11', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('2492', null, '2016-04-13 17:52:11', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('2493', null, '2016-04-13 17:52:11', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('2494', null, '2016-04-13 17:52:18', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.BrandServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('2495', null, '2016-04-13 17:53:46', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.BrandServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('2496', null, '2016-04-13 17:53:51', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.MenuServiceImpl:getMenuResult');
INSERT INTO `t_systemlog` VALUES ('2497', null, '2016-04-13 17:53:53', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.BrandServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('2498', null, '2016-04-13 17:54:49', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.MenuServiceImpl:getMenuResult');
INSERT INTO `t_systemlog` VALUES ('2499', null, '2016-04-13 17:54:50', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.BrandServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('2500', null, '2016-04-13 17:55:52', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.BrandServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('2501', null, '2016-04-13 17:56:42', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.BrandServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('2502', null, '2016-04-13 17:56:57', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.BrandServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('2503', null, '2016-04-13 17:57:09', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.BrandServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('2504', null, '2016-04-13 17:57:40', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.BrandServiceImpl:save');
INSERT INTO `t_systemlog` VALUES ('2505', null, '2016-04-13 17:57:41', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.BrandServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('2510', null, '2016-04-13 18:00:00', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.BrandServiceImpl:save');
INSERT INTO `t_systemlog` VALUES ('2511', null, '2016-04-13 18:00:01', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.BrandServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('2512', null, '2016-04-13 18:00:30', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.BrandServiceImpl:delete');
INSERT INTO `t_systemlog` VALUES ('2513', null, '2016-04-13 18:00:31', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.BrandServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('2514', null, '2016-04-13 18:00:41', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.BrandServiceImpl:save');
INSERT INTO `t_systemlog` VALUES ('2515', null, '2016-04-13 18:00:42', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.BrandServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('2516', null, '2016-04-13 18:01:42', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.MenuServiceImpl:getMenuResult');
INSERT INTO `t_systemlog` VALUES ('2517', null, '2016-04-13 18:01:44', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.MenuServiceImpl:getMenuResult');
INSERT INTO `t_systemlog` VALUES ('2518', null, '2016-04-13 18:01:45', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.BrandServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('2519', null, '2016-04-13 18:02:16', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('2520', null, '2016-04-13 18:02:16', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('2521', null, '2016-04-13 18:02:16', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('2522', null, '2016-04-13 18:03:10', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.BrandServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('2523', null, '2016-04-13 18:03:24', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.BrandServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('2524', null, '2016-04-13 18:03:26', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.BrandServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('2525', null, '2016-04-13 18:03:27', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.BrandServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('2526', null, '2016-04-13 18:03:27', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.BrandServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('2527', null, '2016-04-13 18:03:27', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.BrandServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('2528', null, '2016-04-13 18:03:30', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.BrandServiceImpl:delete');
INSERT INTO `t_systemlog` VALUES ('2529', null, '2016-04-13 18:03:31', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.BrandServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('2539', null, '2016-04-13 18:05:31', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.MenuServiceImpl:getMenuResult');
INSERT INTO `t_systemlog` VALUES ('2540', null, '2016-04-13 18:05:33', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.BrandServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('2542', null, '2016-04-13 18:06:47', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.MenuServiceImpl:getMenuResult');
INSERT INTO `t_systemlog` VALUES ('2543', null, '2016-04-13 18:06:48', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.BrandServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('2544', null, '2016-04-13 18:06:57', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.BrandServiceImpl:update');
INSERT INTO `t_systemlog` VALUES ('2545', null, '2016-04-13 18:06:58', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.BrandServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('2546', null, '2016-04-14 10:01:46', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.MenuServiceImpl:getMenuResult');
INSERT INTO `t_systemlog` VALUES ('2547', null, '2016-04-14 10:01:49', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.BrandServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('2548', null, '2016-04-14 10:01:53', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.BrandServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('2549', null, '2016-04-14 10:01:54', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.BrandServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('2550', null, '2016-04-14 10:03:06', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.MenuServiceImpl:getMenuResult');
INSERT INTO `t_systemlog` VALUES ('2551', null, '2016-04-14 10:03:10', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('2552', null, '2016-04-14 10:03:10', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.GoodsServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('2553', null, '2016-04-14 10:03:12', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('2554', null, '2016-04-14 10:03:12', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('2555', null, '2016-04-14 10:03:12', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('2556', null, '2016-04-14 10:03:13', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.BrandServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('2557', null, '2016-04-14 10:03:58', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.RoleServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('2558', null, '2016-04-14 10:03:58', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.EmployeeServiceImpl:empQuery');
INSERT INTO `t_systemlog` VALUES ('2559', null, '2016-04-14 11:31:47', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.MenuServiceImpl:getMenuResult');
INSERT INTO `t_systemlog` VALUES ('2560', null, '2016-04-14 11:31:50', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.BrandServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('2561', null, '2016-04-14 11:32:07', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('2562', null, '2016-04-14 11:32:07', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.GoodsServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('2563', null, '2016-04-14 11:34:51', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.MenuServiceImpl:getMenuResult');
INSERT INTO `t_systemlog` VALUES ('2564', null, '2016-04-14 11:37:54', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.MenuServiceImpl:getMenuResult');
INSERT INTO `t_systemlog` VALUES ('2565', null, '2016-04-14 11:37:57', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('2566', null, '2016-04-14 11:37:57', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.GoodsServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('2567', null, '2016-04-14 14:15:17', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('2568', null, '2016-04-14 14:15:17', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.GoodsServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('2569', null, '2016-04-14 14:15:22', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('2570', null, '2016-04-14 14:15:22', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.GoodsServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('2571', null, '2016-04-14 14:15:55', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.BrandServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('2572', null, '2016-04-14 14:15:56', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('2573', null, '2016-04-14 14:15:56', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.GoodsServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('2574', null, '2016-04-14 14:15:58', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('2575', null, '2016-04-14 14:15:58', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('2576', null, '2016-04-14 14:15:58', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('2577', null, '2016-04-14 14:16:12', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('2578', null, '2016-04-14 14:16:12', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.GoodsServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('2579', null, '2016-04-14 14:16:23', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('2580', null, '2016-04-14 14:16:23', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.GoodsServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('2581', null, '2016-04-14 14:16:26', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.MenuServiceImpl:getMenuResult');
INSERT INTO `t_systemlog` VALUES ('2582', null, '2016-04-14 14:16:28', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('2583', null, '2016-04-14 14:16:28', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.GoodsServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('2584', null, '2016-04-14 14:16:30', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('2585', null, '2016-04-14 14:16:30', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('2586', null, '2016-04-14 14:16:30', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('2587', null, '2016-04-14 14:16:32', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.BrandServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('2588', null, '2016-04-14 14:16:36', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('2589', null, '2016-04-14 14:16:36', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.GoodsServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('2590', null, '2016-04-14 14:16:55', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('2591', null, '2016-04-14 14:16:55', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.GoodsServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('2592', null, '2016-04-15 10:20:25', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.MenuServiceImpl:getMenuResult');
INSERT INTO `t_systemlog` VALUES ('2593', null, '2016-04-15 10:20:30', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('2594', null, '2016-04-15 10:36:07', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('2595', null, '2016-04-15 10:38:23', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.MenuServiceImpl:getMenuResult');
INSERT INTO `t_systemlog` VALUES ('2596', null, '2016-04-15 10:38:25', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('2597', null, '2016-04-15 11:32:36', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('2598', null, '2016-04-15 11:50:24', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('2599', null, '2016-04-15 14:15:17', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('2600', null, '2016-04-15 14:16:14', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.MenuServiceImpl:getMenuResult');
INSERT INTO `t_systemlog` VALUES ('2601', null, '2016-04-15 14:16:16', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('2602', null, '2016-04-15 14:17:42', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('2603', null, '2016-04-15 14:18:18', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('2604', null, '2016-04-15 14:19:06', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('2605', null, '2016-04-15 14:19:18', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('2606', null, '2016-04-15 14:20:44', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('2607', null, '2016-04-15 14:21:24', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('2608', null, '2016-04-15 14:22:04', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('2609', null, '2016-04-15 14:22:05', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('2610', null, '2016-04-15 14:22:11', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('2611', null, '2016-04-15 14:23:10', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('2612', null, '2016-04-15 14:23:10', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.GoodsServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('2613', null, '2016-04-15 14:23:26', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('2614', null, '2016-04-15 14:23:27', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.GoodsServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('2615', null, '2016-04-15 14:26:41', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('2616', null, '2016-04-15 14:26:41', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('2617', null, '2016-04-15 14:26:41', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('2618', null, '2016-04-15 14:26:55', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.MenuServiceImpl:getMenuResult');
INSERT INTO `t_systemlog` VALUES ('2619', null, '2016-04-15 14:26:56', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('2620', null, '2016-04-15 14:26:56', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.GoodsServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('2621', null, '2016-04-15 14:27:02', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('2622', null, '2016-04-15 14:27:02', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('2623', null, '2016-04-15 14:27:02', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('2624', null, '2016-04-15 14:29:07', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.MenuServiceImpl:getMenuResult');
INSERT INTO `t_systemlog` VALUES ('2625', null, '2016-04-15 14:29:10', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('2626', null, '2016-04-15 14:29:10', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('2627', null, '2016-04-15 14:29:10', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('2628', null, '2016-04-15 14:33:03', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('2629', null, '2016-04-15 14:33:03', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.GoodsServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('2630', null, '2016-04-15 14:34:07', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('2631', null, '2016-04-15 14:34:07', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.GoodsServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('2632', null, '2016-04-15 14:34:47', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('2633', null, '2016-04-15 14:34:47', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.GoodsServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('2634', null, '2016-04-15 14:38:10', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('2635', null, '2016-04-15 14:38:10', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.GoodsServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('2636', null, '2016-04-15 14:38:38', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('2637', null, '2016-04-15 14:38:38', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.GoodsServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('2638', null, '2016-04-15 14:38:45', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.MenuServiceImpl:getMenuResult');
INSERT INTO `t_systemlog` VALUES ('2639', null, '2016-04-15 14:38:46', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('2640', null, '2016-04-15 14:38:46', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.GoodsServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('2641', null, '2016-04-15 14:39:45', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('2642', null, '2016-04-15 14:39:45', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.GoodsServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('2643', null, '2016-04-15 14:40:06', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('2644', null, '2016-04-15 14:40:06', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.GoodsServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('2645', null, '2016-04-15 14:42:06', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('2646', null, '2016-04-15 14:42:06', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.GoodsServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('2647', null, '2016-04-15 14:42:22', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('2648', null, '2016-04-15 14:42:22', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.GoodsServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('2649', null, '2016-04-15 14:42:27', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.MenuServiceImpl:getMenuResult');
INSERT INTO `t_systemlog` VALUES ('2650', null, '2016-04-15 14:42:28', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('2651', null, '2016-04-15 14:42:28', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.GoodsServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('2652', null, '2016-04-15 14:43:10', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('2653', null, '2016-04-15 14:43:10', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.GoodsServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('2654', null, '2016-04-15 14:43:18', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('2655', null, '2016-04-15 14:43:19', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.GoodsServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('2656', null, '2016-04-15 14:43:21', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.MenuServiceImpl:getMenuResult');
INSERT INTO `t_systemlog` VALUES ('2657', null, '2016-04-15 14:43:22', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('2658', null, '2016-04-15 14:43:22', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.GoodsServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('2659', null, '2016-04-15 14:43:59', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('2660', null, '2016-04-15 14:43:59', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.GoodsServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('2661', null, '2016-04-15 14:45:39', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('2662', null, '2016-04-15 14:45:39', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.GoodsServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('2663', null, '2016-04-15 14:46:16', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('2664', null, '2016-04-15 14:46:16', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.GoodsServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('2665', null, '2016-04-15 14:46:37', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('2666', null, '2016-04-15 14:46:37', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.GoodsServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('2667', null, '2016-04-15 14:47:50', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.GoodsServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('2668', null, '2016-04-15 14:47:51', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.GoodsServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('2669', null, '2016-04-15 14:47:54', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.GoodsServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('2670', null, '2016-04-15 14:47:55', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.GoodsServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('2671', null, '2016-04-15 14:47:56', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.GoodsServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('2672', null, '2016-04-15 14:48:01', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.GoodsServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('2673', null, '2016-04-15 14:48:22', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.GoodsServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('2674', null, '2016-04-15 14:51:59', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.GoodsServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('2675', null, '2016-04-15 14:54:04', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('2676', null, '2016-04-15 14:54:04', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.GoodsServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('2677', null, '2016-04-15 14:54:07', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.GoodsServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('2678', null, '2016-04-15 14:54:09', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.GoodsServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('2679', null, '2016-04-15 14:54:11', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.GoodsServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('2680', null, '2016-04-15 14:54:13', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('2681', null, '2016-04-15 14:54:13', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('2682', null, '2016-04-15 14:54:13', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('2683', null, '2016-04-15 14:55:43', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('2684', null, '2016-04-15 14:55:43', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('2685', null, '2016-04-15 14:55:43', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('2686', null, '2016-04-15 14:55:48', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.MenuServiceImpl:getMenuResult');
INSERT INTO `t_systemlog` VALUES ('2687', null, '2016-04-15 14:55:49', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('2688', null, '2016-04-15 14:55:49', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('2689', null, '2016-04-15 14:55:49', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('2690', null, '2016-04-15 14:56:19', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.MenuServiceImpl:getMenuResult');
INSERT INTO `t_systemlog` VALUES ('2691', null, '2016-04-15 14:56:21', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('2692', null, '2016-04-15 14:56:21', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('2693', null, '2016-04-15 14:56:21', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('2694', null, '2016-04-15 14:57:35', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.MenuServiceImpl:getMenuResult');
INSERT INTO `t_systemlog` VALUES ('2695', null, '2016-04-15 14:57:36', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('2696', null, '2016-04-15 14:57:36', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('2697', null, '2016-04-15 14:57:36', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('2698', null, '2016-04-15 14:57:59', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('2699', null, '2016-04-15 14:57:59', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('2700', null, '2016-04-15 14:57:59', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('2701', null, '2016-04-15 14:59:42', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('2702', null, '2016-04-15 14:59:42', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('2703', null, '2016-04-15 14:59:42', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('2704', null, '2016-04-15 14:59:44', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('2705', null, '2016-04-15 14:59:49', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('2706', null, '2016-04-15 15:00:15', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('2707', null, '2016-04-15 15:00:42', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('2708', null, '2016-04-15 15:03:47', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('2709', null, '2016-04-15 15:03:48', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('2710', null, '2016-04-15 15:03:52', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('2711', null, '2016-04-15 15:03:55', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.BrandServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('2712', null, '2016-04-15 15:04:00', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('2713', null, '2016-04-15 15:04:06', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('2714', null, '2016-04-15 15:04:06', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.GoodsServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('2715', null, '2016-04-15 15:04:14', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('2716', null, '2016-04-15 15:04:14', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('2717', null, '2016-04-15 15:04:20', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('2718', null, '2016-04-15 15:04:21', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('2719', null, '2016-04-15 15:04:22', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('2720', null, '2016-04-15 15:04:23', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('2721', null, '2016-04-15 15:04:23', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('2722', null, '2016-04-15 15:04:25', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('2723', null, '2016-04-15 15:04:25', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('2724', null, '2016-04-15 15:04:29', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('2725', null, '2016-04-15 15:04:29', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('2726', null, '2016-04-15 15:04:29', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('2727', null, '2016-04-15 15:05:10', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('2728', null, '2016-04-15 15:05:10', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('2729', null, '2016-04-15 15:05:10', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('2730', null, '2016-04-15 15:05:11', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('2731', null, '2016-04-15 15:05:13', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('2732', null, '2016-04-15 15:05:16', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('2733', null, '2016-04-15 15:05:17', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('2734', null, '2016-04-15 15:05:18', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('2735', null, '2016-04-15 15:05:19', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('2736', null, '2016-04-15 15:05:19', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('2737', null, '2016-04-15 15:05:27', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('2738', null, '2016-04-15 15:06:25', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('2739', null, '2016-04-15 15:06:36', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.MenuServiceImpl:getMenuResult');
INSERT INTO `t_systemlog` VALUES ('2740', null, '2016-04-15 15:06:37', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('2741', null, '2016-04-15 15:06:37', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('2742', null, '2016-04-15 15:06:37', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('2743', null, '2016-04-15 15:06:39', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('2744', null, '2016-04-15 15:06:40', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('2745', null, '2016-04-15 15:06:47', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('2746', null, '2016-04-15 15:06:48', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('2747', null, '2016-04-15 15:06:48', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('2748', null, '2016-04-15 15:06:49', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('2749', null, '2016-04-15 15:06:59', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('2750', null, '2016-04-15 15:07:00', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('2751', null, '2016-04-15 15:07:11', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:update');
INSERT INTO `t_systemlog` VALUES ('2752', null, '2016-04-15 15:07:12', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('2753', null, '2016-04-15 15:07:16', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('2754', null, '2016-04-15 15:07:17', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('2755', null, '2016-04-15 15:07:18', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('2756', null, '2016-04-15 15:07:18', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('2757', null, '2016-04-15 15:07:18', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('2758', null, '2016-04-15 15:07:19', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('2759', null, '2016-04-15 15:07:23', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('2760', null, '2016-04-15 15:07:23', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('2761', null, '2016-04-15 15:07:23', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('2762', null, '2016-04-15 15:07:56', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('2764', null, '2016-04-15 15:08:07', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:update');
INSERT INTO `t_systemlog` VALUES ('2765', null, '2016-04-15 15:08:08', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('2767', null, '2016-04-15 15:08:24', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:update');
INSERT INTO `t_systemlog` VALUES ('2768', null, '2016-04-15 15:08:25', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('2769', null, '2016-04-15 15:08:34', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('2770', null, '2016-04-15 15:08:40', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('2771', null, '2016-04-15 15:08:40', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('2772', null, '2016-04-15 15:08:40', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('2773', null, '2016-04-15 15:08:42', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('2774', null, '2016-04-15 15:08:43', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('2775', null, '2016-04-15 15:10:48', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('2776', null, '2016-04-15 15:10:48', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('2777', null, '2016-04-15 15:10:48', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('2778', null, '2016-04-15 15:10:50', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('2779', null, '2016-04-15 15:10:51', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('2780', null, '2016-04-15 15:10:52', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('2781', null, '2016-04-15 15:10:54', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('2782', null, '2016-04-15 15:12:35', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('2783', null, '2016-04-15 15:12:36', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('2784', null, '2016-04-15 15:12:37', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('2785', null, '2016-04-15 15:12:37', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('2786', null, '2016-04-15 15:12:44', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('2787', null, '2016-04-15 15:12:44', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('2788', null, '2016-04-15 15:12:44', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('2789', null, '2016-04-15 15:12:46', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('2790', null, '2016-04-15 15:12:47', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('2791', null, '2016-04-15 15:12:49', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('2792', null, '2016-04-15 15:12:49', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('2793', null, '2016-04-15 15:12:50', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('2794', null, '2016-04-15 15:12:50', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('2795', null, '2016-04-15 15:14:21', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('2796', null, '2016-04-15 15:14:21', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('2797', null, '2016-04-15 15:14:21', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('2798', null, '2016-04-15 15:14:22', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('2799', null, '2016-04-15 15:14:24', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('2800', null, '2016-04-15 15:14:26', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.MenuServiceImpl:getMenuResult');
INSERT INTO `t_systemlog` VALUES ('2801', null, '2016-04-15 15:14:36', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('2802', null, '2016-04-15 15:14:36', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.GoodsServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('2803', null, '2016-04-15 15:16:15', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('2804', null, '2016-04-15 15:16:15', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('2805', null, '2016-04-15 15:16:15', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('2806', null, '2016-04-15 15:16:17', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('2807', null, '2016-04-15 15:16:17', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('2808', null, '2016-04-15 15:16:55', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('2809', null, '2016-04-15 15:16:57', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('2810', null, '2016-04-15 15:16:58', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('2811', null, '2016-04-15 15:16:59', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('2812', null, '2016-04-15 15:17:00', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('2813', null, '2016-04-15 15:17:06', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('2814', null, '2016-04-15 15:18:12', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('2815', null, '2016-04-15 15:19:44', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('2816', null, '2016-04-15 15:19:44', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('2817', null, '2016-04-15 15:19:44', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('2818', null, '2016-04-15 15:19:45', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('2819', null, '2016-04-15 15:19:47', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('2820', null, '2016-04-15 15:19:48', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('2821', null, '2016-04-15 15:19:49', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('2822', null, '2016-04-15 15:19:50', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('2823', null, '2016-04-15 15:19:50', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('2824', null, '2016-04-15 15:19:51', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('2825', null, '2016-04-15 15:19:51', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('2826', null, '2016-04-15 15:19:55', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.BrandServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('2827', null, '2016-04-15 15:19:58', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.BrandServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('2828', null, '2016-04-15 15:19:58', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.BrandServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('2829', null, '2016-04-15 15:20:00', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('2830', null, '2016-04-15 15:20:10', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('2831', null, '2016-04-15 15:20:10', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('2832', null, '2016-04-15 15:20:10', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('2833', null, '2016-04-15 15:20:13', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('2834', null, '2016-04-15 15:20:14', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('2835', null, '2016-04-15 15:20:16', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('2836', null, '2016-04-15 15:20:17', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('2837', null, '2016-04-15 15:20:17', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('2838', null, '2016-04-15 15:20:25', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.MenuServiceImpl:getMenuResult');
INSERT INTO `t_systemlog` VALUES ('2839', null, '2016-04-15 15:20:26', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('2840', null, '2016-04-15 15:20:26', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('2841', null, '2016-04-15 15:20:26', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('2842', null, '2016-04-15 15:20:28', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('2843', null, '2016-04-15 15:20:28', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('2846', null, '2016-04-15 15:20:55', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('2847', null, '2016-04-15 15:20:56', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('2848', null, '2016-04-15 15:20:57', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('2850', null, '2016-04-15 15:24:17', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('2855', null, '2016-04-15 15:27:21', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:update');
INSERT INTO `t_systemlog` VALUES ('2856', null, '2016-04-15 15:27:23', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('2857', null, '2016-04-15 15:27:26', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('2858', null, '2016-04-15 15:27:33', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('2859', null, '2016-04-15 15:27:34', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('2860', null, '2016-04-15 15:27:35', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('2861', null, '2016-04-15 15:27:35', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('2862', null, '2016-04-15 15:27:36', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('2863', null, '2016-04-15 15:27:37', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('2864', null, '2016-04-15 15:27:37', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('2865', null, '2016-04-15 15:28:05', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('2866', null, '2016-04-15 15:28:28', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('2867', null, '2016-04-15 15:28:31', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('2868', null, '2016-04-15 15:28:31', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('2869', null, '2016-04-15 15:28:34', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('2870', null, '2016-04-15 15:28:35', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('2871', null, '2016-04-15 15:28:37', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('2872', null, '2016-04-15 15:34:24', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('2873', null, '2016-04-15 15:34:30', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('2874', null, '2016-04-15 15:34:40', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('2875', null, '2016-04-15 15:37:18', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('2876', null, '2016-04-15 15:37:20', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('2877', null, '2016-04-15 15:37:23', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('2878', null, '2016-04-15 15:37:26', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('2879', null, '2016-04-15 15:40:17', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('2880', null, '2016-04-15 15:40:20', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('2881', null, '2016-04-15 15:40:25', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('2882', null, '2016-04-15 15:40:30', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('2883', null, '2016-04-15 15:40:43', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.MenuServiceImpl:getMenuResult');
INSERT INTO `t_systemlog` VALUES ('2884', null, '2016-04-15 15:40:45', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('2885', null, '2016-04-15 15:42:16', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('2886', null, '2016-04-15 15:42:18', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('2887', null, '2016-04-15 15:42:48', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('2888', null, '2016-04-15 15:42:53', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:updateState');
INSERT INTO `t_systemlog` VALUES ('2889', null, '2016-04-15 15:42:56', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('2890', null, '2016-04-15 15:43:06', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:updateState');
INSERT INTO `t_systemlog` VALUES ('2891', null, '2016-04-15 15:43:07', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('2892', null, '2016-04-15 15:43:27', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('2893', null, '2016-04-15 15:43:28', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('2894', null, '2016-04-15 15:43:28', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('2895', null, '2016-04-15 15:43:31', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:updateState');
INSERT INTO `t_systemlog` VALUES ('2896', null, '2016-04-15 15:43:32', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('2897', null, '2016-04-15 15:43:39', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('2898', null, '2016-04-15 15:43:41', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('2899', null, '2016-04-15 15:43:44', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('2900', null, '2016-04-15 15:43:47', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('2901', null, '2016-04-15 15:43:50', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('2902', null, '2016-04-15 15:50:21', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('2903', null, '2016-04-15 15:50:26', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('2904', null, '2016-04-15 16:10:47', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('2905', null, '2016-04-15 16:17:16', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('2906', null, '2016-04-15 16:18:09', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('2907', null, '2016-04-15 16:18:33', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('2908', null, '2016-04-15 16:18:44', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.MenuServiceImpl:getMenuResult');
INSERT INTO `t_systemlog` VALUES ('2909', null, '2016-04-15 16:18:46', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('2910', null, '2016-04-15 16:19:05', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.MenuServiceImpl:getMenuResult');
INSERT INTO `t_systemlog` VALUES ('2911', null, '2016-04-15 16:19:07', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('2912', null, '2016-04-15 16:19:40', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('2913', null, '2016-04-15 16:19:44', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:updateState');
INSERT INTO `t_systemlog` VALUES ('2914', null, '2016-04-15 16:19:45', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('2915', null, '2016-04-15 16:19:50', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('2916', null, '2016-04-15 16:19:54', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('2917', null, '2016-04-15 16:19:55', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('2918', null, '2016-04-15 16:20:43', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('2919', null, '2016-04-15 16:20:57', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('2921', null, '2016-04-15 16:21:05', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('2922', null, '2016-04-15 16:21:06', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('2923', null, '2016-04-15 16:21:07', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('2924', null, '2016-04-15 16:21:22', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('2925', null, '2016-04-15 16:21:23', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('2927', null, '2016-04-15 17:19:13', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('2928', null, '2016-04-15 17:57:34', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.MenuServiceImpl:getMenuResult');
INSERT INTO `t_systemlog` VALUES ('2929', null, '2016-04-15 17:57:36', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('2930', null, '2016-04-15 18:00:06', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.MenuServiceImpl:getMenuResult');
INSERT INTO `t_systemlog` VALUES ('2931', null, '2016-04-15 18:02:29', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.MenuServiceImpl:getMenuResult');
INSERT INTO `t_systemlog` VALUES ('2932', null, '2016-04-15 18:10:20', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.MenuServiceImpl:getMenuResult');
INSERT INTO `t_systemlog` VALUES ('2933', null, '2016-04-15 18:10:21', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('2934', null, '2016-04-15 18:10:48', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('2935', null, '2016-04-15 18:43:31', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.MenuServiceImpl:getMenuResult');
INSERT INTO `t_systemlog` VALUES ('2936', null, '2016-04-15 18:43:36', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('2937', null, '2016-04-15 18:43:42', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreAuthServiceImpl:getByStore');
INSERT INTO `t_systemlog` VALUES ('2938', null, '2016-04-15 18:47:04', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('2939', null, '2016-04-15 18:47:06', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreAuthServiceImpl:getByStore');
INSERT INTO `t_systemlog` VALUES ('2940', null, '2016-04-15 18:47:13', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreAuthServiceImpl:getByStore');
INSERT INTO `t_systemlog` VALUES ('2941', null, '2016-04-15 18:47:41', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('2942', null, '2016-04-15 18:47:43', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreAuthServiceImpl:getByStore');
INSERT INTO `t_systemlog` VALUES ('2943', null, '2016-04-15 18:47:55', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('2944', null, '2016-04-15 18:47:56', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreAuthServiceImpl:getByStore');
INSERT INTO `t_systemlog` VALUES ('2945', null, '2016-04-15 18:49:17', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('2946', null, '2016-04-15 18:49:18', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreAuthServiceImpl:getByStore');
INSERT INTO `t_systemlog` VALUES ('2947', null, '2016-04-15 18:50:10', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('2948', null, '2016-04-15 18:50:11', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreAuthServiceImpl:getByStore');
INSERT INTO `t_systemlog` VALUES ('2949', null, '2016-04-15 18:50:14', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreAuthServiceImpl:getByStore');
INSERT INTO `t_systemlog` VALUES ('2950', null, '2016-04-15 18:50:26', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('2951', null, '2016-04-15 18:50:27', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreAuthServiceImpl:getByStore');
INSERT INTO `t_systemlog` VALUES ('2952', null, '2016-04-15 18:51:53', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreAuthServiceImpl:getByStore');
INSERT INTO `t_systemlog` VALUES ('2953', null, '2016-04-15 18:51:54', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreAuthServiceImpl:getByStore');
INSERT INTO `t_systemlog` VALUES ('2954', null, '2016-04-15 18:53:44', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('2955', null, '2016-04-15 18:53:46', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreAuthServiceImpl:getByStore');
INSERT INTO `t_systemlog` VALUES ('2956', null, '2016-04-15 18:56:08', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('2957', null, '2016-04-15 18:56:10', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreAuthServiceImpl:getByStore');
INSERT INTO `t_systemlog` VALUES ('2958', null, '2016-04-15 18:56:27', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('2959', null, '2016-04-15 18:56:29', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreAuthServiceImpl:getByStore');
INSERT INTO `t_systemlog` VALUES ('2960', null, '2016-04-15 18:56:30', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreAuthServiceImpl:getByStore');
INSERT INTO `t_systemlog` VALUES ('2961', null, '2016-04-15 18:56:41', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('2962', null, '2016-04-15 18:56:43', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreAuthServiceImpl:getByStore');
INSERT INTO `t_systemlog` VALUES ('2963', null, '2016-04-15 18:57:26', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('2964', null, '2016-04-15 18:57:28', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreAuthServiceImpl:getByStore');
INSERT INTO `t_systemlog` VALUES ('2965', null, '2016-04-15 18:57:42', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('2966', null, '2016-04-15 18:57:43', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreAuthServiceImpl:getByStore');
INSERT INTO `t_systemlog` VALUES ('2967', null, '2016-04-15 19:00:33', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('2968', null, '2016-04-15 19:00:39', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreAuthServiceImpl:getByStore');
INSERT INTO `t_systemlog` VALUES ('2969', null, '2016-04-15 19:00:58', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreAuthServiceImpl:getByStore');
INSERT INTO `t_systemlog` VALUES ('2970', null, '2016-04-15 19:01:23', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('2971', null, '2016-04-15 19:01:49', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('2972', null, '2016-04-15 19:01:50', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreAuthServiceImpl:getByStore');
INSERT INTO `t_systemlog` VALUES ('2973', null, '2016-04-15 19:01:53', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreAuthServiceImpl:getByStore');
INSERT INTO `t_systemlog` VALUES ('2974', null, '2016-04-15 19:01:56', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreAuthServiceImpl:getByStore');
INSERT INTO `t_systemlog` VALUES ('2975', null, '2016-04-15 19:02:18', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreAuthServiceImpl:getByStore');
INSERT INTO `t_systemlog` VALUES ('2976', null, '2016-04-15 19:02:30', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreAuthServiceImpl:getByStore');
INSERT INTO `t_systemlog` VALUES ('2977', null, '2016-04-15 19:03:14', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('2978', null, '2016-04-15 19:03:26', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('2979', null, '2016-04-15 19:03:26', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('2980', null, '2016-04-15 19:03:26', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('2981', null, '2016-04-15 19:04:15', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('2982', null, '2016-04-15 19:04:46', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreAuthServiceImpl:getByStore');
INSERT INTO `t_systemlog` VALUES ('2983', null, '2016-04-15 19:04:50', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreAuthServiceImpl:getByStore');
INSERT INTO `t_systemlog` VALUES ('2984', null, '2016-04-15 19:06:14', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreAuthServiceImpl:getByStore');
INSERT INTO `t_systemlog` VALUES ('2985', null, '2016-04-15 19:06:34', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('2986', null, '2016-04-15 19:06:35', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreAuthServiceImpl:getByStore');
INSERT INTO `t_systemlog` VALUES ('2987', null, '2016-04-15 19:12:51', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('2988', null, '2016-04-15 19:12:52', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreAuthServiceImpl:getByStore');
INSERT INTO `t_systemlog` VALUES ('2989', null, '2016-04-15 19:12:59', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('2990', null, '2016-04-15 19:13:04', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreAuthServiceImpl:getByStore');
INSERT INTO `t_systemlog` VALUES ('2991', null, '2016-04-15 19:13:33', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreAuthServiceImpl:getByStore');
INSERT INTO `t_systemlog` VALUES ('2992', null, '2016-04-15 19:14:29', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreAuthServiceImpl:getByStore');
INSERT INTO `t_systemlog` VALUES ('2993', null, '2016-04-15 19:17:23', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('2994', null, '2016-04-15 19:17:24', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreAuthServiceImpl:getByStore');
INSERT INTO `t_systemlog` VALUES ('2995', null, '2016-04-15 19:17:31', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('2996', null, '2016-04-15 19:17:35', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreAuthServiceImpl:getByStore');
INSERT INTO `t_systemlog` VALUES ('2997', null, '2016-04-15 19:17:58', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreAuthServiceImpl:getByStore');
INSERT INTO `t_systemlog` VALUES ('2998', null, '2016-04-15 19:18:21', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('2999', null, '2016-04-15 19:18:23', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreAuthServiceImpl:getByStore');
INSERT INTO `t_systemlog` VALUES ('3000', null, '2016-04-15 19:18:31', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.MenuServiceImpl:getMenuResult');
INSERT INTO `t_systemlog` VALUES ('3001', null, '2016-04-15 19:18:33', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('3002', null, '2016-04-15 19:18:35', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreAuthServiceImpl:getByStore');
INSERT INTO `t_systemlog` VALUES ('3003', null, '2016-04-15 19:19:23', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.MenuServiceImpl:getMenuResult');
INSERT INTO `t_systemlog` VALUES ('3004', null, '2016-04-15 19:19:54', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('3005', null, '2016-04-15 19:19:55', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreAuthServiceImpl:getByStore');
INSERT INTO `t_systemlog` VALUES ('3006', null, '2016-04-15 19:19:57', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreAuthServiceImpl:getByStore');
INSERT INTO `t_systemlog` VALUES ('3007', null, '2016-04-15 19:19:58', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreAuthServiceImpl:getByStore');
INSERT INTO `t_systemlog` VALUES ('3008', null, '2016-04-15 19:20:00', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreAuthServiceImpl:getByStore');
INSERT INTO `t_systemlog` VALUES ('3009', null, '2016-04-15 19:22:39', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('3010', null, '2016-04-15 19:26:25', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('3011', null, '2016-04-15 19:26:26', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreAuthServiceImpl:getByStore');
INSERT INTO `t_systemlog` VALUES ('3012', null, '2016-04-15 19:26:54', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('3013', null, '2016-04-15 19:26:55', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreAuthServiceImpl:getByStore');
INSERT INTO `t_systemlog` VALUES ('3014', null, '2016-04-15 19:31:27', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreAuthServiceImpl:getByStore');
INSERT INTO `t_systemlog` VALUES ('3015', null, '2016-04-15 19:31:59', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreAuthServiceImpl:getByStore');
INSERT INTO `t_systemlog` VALUES ('3016', null, '2016-04-15 19:32:02', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreAuthServiceImpl:getByStore');
INSERT INTO `t_systemlog` VALUES ('3017', null, '2016-04-15 19:32:05', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('3018', null, '2016-04-15 19:32:08', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreAuthServiceImpl:getByStore');
INSERT INTO `t_systemlog` VALUES ('3019', null, '2016-04-15 19:32:12', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreAuthServiceImpl:getByStore');
INSERT INTO `t_systemlog` VALUES ('3020', null, '2016-04-15 19:33:53', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('3021', null, '2016-04-15 19:33:54', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreAuthServiceImpl:getByStore');
INSERT INTO `t_systemlog` VALUES ('3022', null, '2016-04-15 19:34:22', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('3023', null, '2016-04-15 19:34:23', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreAuthServiceImpl:getByStore');
INSERT INTO `t_systemlog` VALUES ('3024', null, '2016-04-15 19:36:05', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('3025', null, '2016-04-15 19:36:07', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreAuthServiceImpl:getByStore');
INSERT INTO `t_systemlog` VALUES ('3026', null, '2016-04-15 19:36:11', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreAuthServiceImpl:getByStore');
INSERT INTO `t_systemlog` VALUES ('3027', null, '2016-04-15 19:36:20', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreAuthServiceImpl:getByStore');
INSERT INTO `t_systemlog` VALUES ('3028', null, '2016-04-15 19:36:23', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('3029', null, '2016-04-15 19:36:24', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreAuthServiceImpl:getByStore');
INSERT INTO `t_systemlog` VALUES ('3030', null, '2016-04-15 19:36:35', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('3031', null, '2016-04-15 19:36:36', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreAuthServiceImpl:getByStore');
INSERT INTO `t_systemlog` VALUES ('3032', null, '2016-04-15 19:43:41', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('3033', null, '2016-04-15 19:43:43', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreAuthServiceImpl:getByStore');
INSERT INTO `t_systemlog` VALUES ('3034', null, '2016-04-15 19:43:49', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.MenuServiceImpl:getMenuResult');
INSERT INTO `t_systemlog` VALUES ('3035', null, '2016-04-15 19:43:50', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('3036', null, '2016-04-15 19:43:52', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreAuthServiceImpl:getByStore');
INSERT INTO `t_systemlog` VALUES ('3037', null, '2016-04-15 19:43:54', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreAuthServiceImpl:getByStore');
INSERT INTO `t_systemlog` VALUES ('3038', null, '2016-04-15 19:43:55', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreAuthServiceImpl:getByStore');
INSERT INTO `t_systemlog` VALUES ('3039', null, '2016-04-15 19:43:55', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreAuthServiceImpl:getByStore');
INSERT INTO `t_systemlog` VALUES ('3040', null, '2016-04-15 19:43:56', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreAuthServiceImpl:getByStore');
INSERT INTO `t_systemlog` VALUES ('3041', null, '2016-04-15 19:43:57', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreAuthServiceImpl:getByStore');
INSERT INTO `t_systemlog` VALUES ('3042', null, '2016-04-15 19:44:15', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreAuthServiceImpl:getByStore');
INSERT INTO `t_systemlog` VALUES ('3043', null, '2016-04-15 19:45:31', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('3044', null, '2016-04-15 19:45:32', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('3045', null, '2016-04-15 19:45:33', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('3046', null, '2016-04-15 19:45:37', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('3047', null, '2016-04-15 19:45:39', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('3048', null, '2016-04-15 19:45:42', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('3049', null, '2016-04-15 19:46:43', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('3050', null, '2016-04-15 19:46:44', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreAuthServiceImpl:getByStore');
INSERT INTO `t_systemlog` VALUES ('3051', null, '2016-04-15 19:46:46', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreAuthServiceImpl:getByStore');
INSERT INTO `t_systemlog` VALUES ('3052', null, '2016-04-15 19:46:47', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreAuthServiceImpl:getByStore');
INSERT INTO `t_systemlog` VALUES ('3053', null, '2016-04-15 19:48:25', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('3054', null, '2016-04-15 19:48:26', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreAuthServiceImpl:getByStore');
INSERT INTO `t_systemlog` VALUES ('3055', null, '2016-04-15 19:49:05', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('3056', null, '2016-04-15 19:49:06', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreAuthServiceImpl:getByStore');
INSERT INTO `t_systemlog` VALUES ('3057', null, '2016-04-15 19:49:26', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('3058', null, '2016-04-15 19:49:28', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreAuthServiceImpl:getByStore');
INSERT INTO `t_systemlog` VALUES ('3059', null, '2016-04-15 19:50:01', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('3060', null, '2016-04-15 19:50:02', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreAuthServiceImpl:getByStore');
INSERT INTO `t_systemlog` VALUES ('3061', null, '2016-04-15 19:51:41', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('3062', null, '2016-04-15 19:51:42', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreAuthServiceImpl:getByStore');
INSERT INTO `t_systemlog` VALUES ('3063', null, '2016-04-15 19:51:44', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreAuthServiceImpl:getByStore');
INSERT INTO `t_systemlog` VALUES ('3064', null, '2016-04-15 19:51:45', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreAuthServiceImpl:getByStore');
INSERT INTO `t_systemlog` VALUES ('3065', null, '2016-04-15 19:52:36', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('3066', null, '2016-04-15 19:52:38', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreAuthServiceImpl:getByStore');
INSERT INTO `t_systemlog` VALUES ('3067', null, '2016-04-15 19:53:34', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('3068', null, '2016-04-15 19:53:35', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreAuthServiceImpl:getByStore');
INSERT INTO `t_systemlog` VALUES ('3069', null, '2016-04-15 19:55:46', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('3070', null, '2016-04-15 19:55:58', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.MenuServiceImpl:getMenuResult');
INSERT INTO `t_systemlog` VALUES ('3071', null, '2016-04-15 19:55:59', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('3072', null, '2016-04-15 19:56:00', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreAuthServiceImpl:getByStore');
INSERT INTO `t_systemlog` VALUES ('3073', null, '2016-04-15 19:56:38', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('3074', null, '2016-04-15 19:56:39', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreAuthServiceImpl:getByStore');
INSERT INTO `t_systemlog` VALUES ('3075', null, '2016-04-15 19:56:42', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.MenuServiceImpl:getMenuResult');
INSERT INTO `t_systemlog` VALUES ('3076', null, '2016-04-15 19:56:44', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('3077', null, '2016-04-15 19:56:45', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreAuthServiceImpl:getByStore');
INSERT INTO `t_systemlog` VALUES ('3078', null, '2016-04-15 19:57:06', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.MenuServiceImpl:getMenuResult');
INSERT INTO `t_systemlog` VALUES ('3079', null, '2016-04-15 19:57:07', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('3080', null, '2016-04-15 19:57:08', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreAuthServiceImpl:getByStore');
INSERT INTO `t_systemlog` VALUES ('3081', null, '2016-04-15 19:57:19', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreAuthServiceImpl:getByStore');
INSERT INTO `t_systemlog` VALUES ('3082', null, '2016-04-15 19:57:20', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreAuthServiceImpl:getByStore');
INSERT INTO `t_systemlog` VALUES ('3083', null, '2016-04-15 19:57:40', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('3084', null, '2016-04-15 19:57:41', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreAuthServiceImpl:getByStore');
INSERT INTO `t_systemlog` VALUES ('3085', null, '2016-04-15 19:57:53', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreAuthServiceImpl:getByStore');
INSERT INTO `t_systemlog` VALUES ('3086', null, '2016-04-15 19:57:56', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreAuthServiceImpl:getByStore');
INSERT INTO `t_systemlog` VALUES ('3087', null, '2016-04-15 19:57:57', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreAuthServiceImpl:getByStore');
INSERT INTO `t_systemlog` VALUES ('3088', null, '2016-04-15 19:57:59', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreAuthServiceImpl:getByStore');
INSERT INTO `t_systemlog` VALUES ('3089', null, '2016-04-15 19:58:01', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreAuthServiceImpl:getByStore');
INSERT INTO `t_systemlog` VALUES ('3090', null, '2016-04-15 19:58:03', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreAuthServiceImpl:getByStore');
INSERT INTO `t_systemlog` VALUES ('3091', null, '2016-04-15 19:58:11', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.MenuServiceImpl:getMenuResult');
INSERT INTO `t_systemlog` VALUES ('3092', null, '2016-04-15 19:58:14', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('3093', null, '2016-04-15 19:58:20', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreAuthServiceImpl:getByStore');
INSERT INTO `t_systemlog` VALUES ('3094', null, '2016-04-18 09:36:30', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.MenuServiceImpl:getMenuResult');
INSERT INTO `t_systemlog` VALUES ('3095', null, '2016-04-18 09:37:12', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('3096', null, '2016-04-18 09:37:34', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:updateState');
INSERT INTO `t_systemlog` VALUES ('3097', null, '2016-04-18 09:37:35', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('3098', null, '2016-04-18 09:37:44', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreAuthServiceImpl:getByStore');
INSERT INTO `t_systemlog` VALUES ('3099', null, '2016-04-18 09:37:46', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreAuthServiceImpl:getByStore');
INSERT INTO `t_systemlog` VALUES ('3100', null, '2016-04-18 14:58:10', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.MenuServiceImpl:getMenuResult');
INSERT INTO `t_systemlog` VALUES ('3101', null, '2016-04-18 14:58:13', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('3102', null, '2016-04-18 14:58:26', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.RoleServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('3103', null, '2016-04-18 14:58:26', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.EmployeeServiceImpl:empQuery');
INSERT INTO `t_systemlog` VALUES ('3104', null, '2016-04-18 14:58:46', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.ResourceServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('3105', null, '2016-04-18 14:58:49', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('3106', null, '2016-04-18 15:00:43', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('3107', null, '2016-04-18 15:00:48', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('3108', null, '2016-04-18 15:00:49', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('3109', null, '2016-04-18 15:00:50', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('3110', null, '2016-04-18 15:00:56', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('3111', null, '2016-04-18 15:02:49', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('3112', null, '2016-04-18 15:02:50', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('3113', null, '2016-04-18 15:03:08', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('3114', null, '2016-04-18 15:03:09', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('3115', null, '2016-04-18 15:03:12', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.ResourceServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('3116', null, '2016-04-18 15:03:13', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.ResourceServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('3117', null, '2016-04-18 15:03:19', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('3118', null, '2016-04-18 15:03:22', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('3119', null, '2016-04-18 15:03:56', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('3120', null, '2016-04-18 15:04:02', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('3121', null, '2016-04-18 15:04:14', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('3122', null, '2016-04-18 15:05:41', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('3123', null, '2016-04-18 15:05:54', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('3124', null, '2016-04-18 15:06:24', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('3125', null, '2016-04-18 15:06:49', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.EmployeeServiceImpl:empQuery');
INSERT INTO `t_systemlog` VALUES ('3126', null, '2016-04-18 15:06:53', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:getAllPermission');
INSERT INTO `t_systemlog` VALUES ('3127', null, '2016-04-18 15:16:11', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('3128', null, '2016-04-18 15:16:11', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.GoodsServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('3129', null, '2016-04-18 15:24:18', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.RoleServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('3130', null, '2016-04-18 15:27:05', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.MenuServiceImpl:getMenuResult');
INSERT INTO `t_systemlog` VALUES ('3131', null, '2016-04-18 15:27:06', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.RoleServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('3132', null, '2016-04-18 15:32:16', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.MenuServiceImpl:getMenuResult');
INSERT INTO `t_systemlog` VALUES ('3133', null, '2016-04-18 15:32:18', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.RoleServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('3134', null, '2016-04-18 15:32:18', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.EmployeeServiceImpl:empQuery');
INSERT INTO `t_systemlog` VALUES ('3135', null, '2016-04-18 15:32:41', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('3136', null, '2016-04-18 15:32:41', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('3137', null, '2016-04-18 15:32:41', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('3138', null, '2016-04-18 15:32:44', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('3139', null, '2016-04-18 15:32:44', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.GoodsServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('3140', null, '2016-04-18 15:38:18', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.EmployeeServiceImpl:empQuery');
INSERT INTO `t_systemlog` VALUES ('3141', null, '2016-04-18 15:38:18', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.RoleServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('3142', null, '2016-04-18 15:38:34', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.RoleServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('3143', null, '2016-04-18 15:38:34', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.EmployeeServiceImpl:empQuery');
INSERT INTO `t_systemlog` VALUES ('3144', null, '2016-04-18 15:38:38', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.MenuServiceImpl:getMenuResult');
INSERT INTO `t_systemlog` VALUES ('3145', null, '2016-04-18 15:38:39', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.MenuServiceImpl:getMenuResult');
INSERT INTO `t_systemlog` VALUES ('3146', null, '2016-04-18 15:38:41', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.RoleServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('3147', null, '2016-04-18 15:38:41', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.EmployeeServiceImpl:empQuery');
INSERT INTO `t_systemlog` VALUES ('3148', null, '2016-04-18 15:38:50', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.MenuServiceImpl:getMenuResult');
INSERT INTO `t_systemlog` VALUES ('3149', null, '2016-04-18 15:38:51', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.RoleServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('3150', null, '2016-04-18 15:38:51', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.EmployeeServiceImpl:empQuery');
INSERT INTO `t_systemlog` VALUES ('3151', null, '2016-04-18 15:39:07', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.MenuServiceImpl:getMenuResult');
INSERT INTO `t_systemlog` VALUES ('3152', null, '2016-04-18 15:39:10', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.RoleServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('3153', null, '2016-04-18 15:39:10', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.EmployeeServiceImpl:empQuery');
INSERT INTO `t_systemlog` VALUES ('3154', null, '2016-04-18 15:39:13', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.MenuServiceImpl:getMenuResult');
INSERT INTO `t_systemlog` VALUES ('3155', null, '2016-04-18 15:39:14', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.RoleServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('3156', null, '2016-04-18 15:39:14', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.EmployeeServiceImpl:empQuery');
INSERT INTO `t_systemlog` VALUES ('3157', null, '2016-04-18 15:39:50', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.RoleServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('3158', null, '2016-04-18 15:39:50', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.EmployeeServiceImpl:empQuery');
INSERT INTO `t_systemlog` VALUES ('3159', null, '2016-04-18 15:43:35', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.RoleServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('3160', null, '2016-04-18 15:43:35', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.EmployeeServiceImpl:empQuery');
INSERT INTO `t_systemlog` VALUES ('3161', null, '2016-04-18 15:45:03', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('3162', null, '2016-04-18 15:45:03', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('3163', null, '2016-04-18 15:45:03', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('3164', null, '2016-04-18 15:46:13', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.RoleServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('3165', null, '2016-04-18 15:46:13', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.EmployeeServiceImpl:empQuery');
INSERT INTO `t_systemlog` VALUES ('3166', null, '2016-04-18 15:48:08', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.MenuServiceImpl:getMenuResult');
INSERT INTO `t_systemlog` VALUES ('3167', null, '2016-04-18 15:48:09', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.RoleServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('3168', null, '2016-04-18 15:48:09', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.EmployeeServiceImpl:empQuery');
INSERT INTO `t_systemlog` VALUES ('3169', null, '2016-04-18 15:48:40', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.RoleServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('3170', null, '2016-04-18 15:48:40', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.EmployeeServiceImpl:empQuery');
INSERT INTO `t_systemlog` VALUES ('3171', null, '2016-04-18 15:50:16', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.RoleServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('3172', null, '2016-04-18 15:50:16', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.EmployeeServiceImpl:empQuery');
INSERT INTO `t_systemlog` VALUES ('3173', null, '2016-04-18 15:52:14', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.RoleServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('3174', null, '2016-04-18 15:52:14', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.EmployeeServiceImpl:empQuery');
INSERT INTO `t_systemlog` VALUES ('3175', null, '2016-04-18 15:52:44', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.RoleServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('3176', null, '2016-04-18 15:52:44', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.EmployeeServiceImpl:empQuery');
INSERT INTO `t_systemlog` VALUES ('3177', null, '2016-04-18 15:52:58', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.RoleServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('3178', null, '2016-04-18 15:52:58', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.EmployeeServiceImpl:empQuery');
INSERT INTO `t_systemlog` VALUES ('3179', null, '2016-04-18 15:53:13', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.RoleServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('3180', null, '2016-04-18 15:53:13', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.EmployeeServiceImpl:empQuery');
INSERT INTO `t_systemlog` VALUES ('3181', null, '2016-04-18 15:53:46', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.RoleServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('3182', null, '2016-04-18 15:53:46', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.EmployeeServiceImpl:empQuery');
INSERT INTO `t_systemlog` VALUES ('3183', null, '2016-04-18 15:53:56', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.RoleServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('3184', null, '2016-04-18 15:53:56', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.EmployeeServiceImpl:empQuery');
INSERT INTO `t_systemlog` VALUES ('3185', null, '2016-04-18 15:54:46', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.RoleServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('3186', null, '2016-04-18 15:54:46', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.EmployeeServiceImpl:empQuery');
INSERT INTO `t_systemlog` VALUES ('3187', null, '2016-04-18 15:54:53', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.BrandServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('3188', null, '2016-04-18 15:55:03', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('3189', null, '2016-04-18 15:55:03', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('3190', null, '2016-04-18 15:55:03', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('3191', null, '2016-04-18 15:58:03', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.RoleServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('3192', null, '2016-04-18 15:58:03', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.EmployeeServiceImpl:empQuery');
INSERT INTO `t_systemlog` VALUES ('3193', null, '2016-04-18 16:07:40', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.RoleServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('3194', null, '2016-04-18 16:07:40', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.EmployeeServiceImpl:empQuery');
INSERT INTO `t_systemlog` VALUES ('3195', null, '2016-04-18 16:07:58', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.EmployeeServiceImpl:update');
INSERT INTO `t_systemlog` VALUES ('3196', null, '2016-04-18 16:07:58', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.EmployeeServiceImpl:update');
INSERT INTO `t_systemlog` VALUES ('3197', null, '2016-04-18 16:07:58', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.EmployeeServiceImpl:update');
INSERT INTO `t_systemlog` VALUES ('3198', null, '2016-04-18 16:07:58', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.EmployeeServiceImpl:update');
INSERT INTO `t_systemlog` VALUES ('3199', null, '2016-04-18 16:07:58', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.EmployeeServiceImpl:update');
INSERT INTO `t_systemlog` VALUES ('3200', null, '2016-04-18 16:07:58', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.EmployeeServiceImpl:update');
INSERT INTO `t_systemlog` VALUES ('3201', null, '2016-04-18 16:07:58', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.EmployeeServiceImpl:update');
INSERT INTO `t_systemlog` VALUES ('3202', null, '2016-04-18 16:08:03', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.EmployeeServiceImpl:empQuery');
INSERT INTO `t_systemlog` VALUES ('3203', null, '2016-04-18 16:08:05', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.EmployeeServiceImpl:empQuery');
INSERT INTO `t_systemlog` VALUES ('3204', null, '2016-04-18 16:08:06', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.EmployeeServiceImpl:empQuery');
INSERT INTO `t_systemlog` VALUES ('3205', null, '2016-04-18 16:08:06', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.EmployeeServiceImpl:empQuery');
INSERT INTO `t_systemlog` VALUES ('3206', null, '2016-04-18 16:08:06', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.EmployeeServiceImpl:empQuery');
INSERT INTO `t_systemlog` VALUES ('3207', null, '2016-04-18 16:08:06', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.EmployeeServiceImpl:empQuery');
INSERT INTO `t_systemlog` VALUES ('3208', null, '2016-04-18 16:08:06', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.EmployeeServiceImpl:empQuery');
INSERT INTO `t_systemlog` VALUES ('3209', null, '2016-04-18 16:08:10', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.EmployeeServiceImpl:empQuery');
INSERT INTO `t_systemlog` VALUES ('3210', null, '2016-04-18 16:21:00', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('3211', null, '2016-04-18 16:21:00', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.GoodsServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('3212', null, '2016-04-18 16:26:26', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('3213', null, '2016-04-18 16:26:26', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.GoodsServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('3214', null, '2016-04-18 16:26:30', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.RoleServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('3215', null, '2016-04-18 16:26:30', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.EmployeeServiceImpl:empQuery');
INSERT INTO `t_systemlog` VALUES ('3216', null, '2016-04-18 16:35:10', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.RoleServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('3217', null, '2016-04-18 16:35:10', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.EmployeeServiceImpl:empQuery');
INSERT INTO `t_systemlog` VALUES ('3218', null, '2016-04-18 16:35:22', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.EmployeeServiceImpl:update');
INSERT INTO `t_systemlog` VALUES ('3219', null, '2016-04-18 16:35:22', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.EmployeeServiceImpl:update');
INSERT INTO `t_systemlog` VALUES ('3220', null, '2016-04-18 16:35:22', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.EmployeeServiceImpl:update');
INSERT INTO `t_systemlog` VALUES ('3221', null, '2016-04-18 16:35:22', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.EmployeeServiceImpl:update');
INSERT INTO `t_systemlog` VALUES ('3222', null, '2016-04-18 16:35:22', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.EmployeeServiceImpl:update');
INSERT INTO `t_systemlog` VALUES ('3223', null, '2016-04-18 16:35:22', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.EmployeeServiceImpl:update');
INSERT INTO `t_systemlog` VALUES ('3224', null, '2016-04-18 16:35:22', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.EmployeeServiceImpl:update');
INSERT INTO `t_systemlog` VALUES ('3225', null, '2016-04-18 16:35:22', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.EmployeeServiceImpl:update');
INSERT INTO `t_systemlog` VALUES ('3226', null, '2016-04-18 16:35:22', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.EmployeeServiceImpl:update');
INSERT INTO `t_systemlog` VALUES ('3227', null, '2016-04-18 16:35:22', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.EmployeeServiceImpl:update');
INSERT INTO `t_systemlog` VALUES ('3228', null, '2016-04-18 16:35:22', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.EmployeeServiceImpl:update');
INSERT INTO `t_systemlog` VALUES ('3229', null, '2016-04-18 16:35:22', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.EmployeeServiceImpl:update');
INSERT INTO `t_systemlog` VALUES ('3230', null, '2016-04-18 16:35:22', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.EmployeeServiceImpl:update');
INSERT INTO `t_systemlog` VALUES ('3231', null, '2016-04-18 16:35:22', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.EmployeeServiceImpl:update');
INSERT INTO `t_systemlog` VALUES ('3232', null, '2016-04-18 16:35:22', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.EmployeeServiceImpl:update');
INSERT INTO `t_systemlog` VALUES ('3233', null, '2016-04-18 16:35:25', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.EmployeeServiceImpl:empQuery');
INSERT INTO `t_systemlog` VALUES ('3234', null, '2016-04-18 16:35:28', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.EmployeeServiceImpl:empQuery');
INSERT INTO `t_systemlog` VALUES ('3235', null, '2016-04-18 16:35:28', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.EmployeeServiceImpl:empQuery');
INSERT INTO `t_systemlog` VALUES ('3236', null, '2016-04-18 16:35:28', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.EmployeeServiceImpl:empQuery');
INSERT INTO `t_systemlog` VALUES ('3237', null, '2016-04-18 16:35:28', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.EmployeeServiceImpl:empQuery');
INSERT INTO `t_systemlog` VALUES ('3238', null, '2016-04-18 16:35:29', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.EmployeeServiceImpl:empQuery');
INSERT INTO `t_systemlog` VALUES ('3239', null, '2016-04-18 16:35:29', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.EmployeeServiceImpl:empQuery');
INSERT INTO `t_systemlog` VALUES ('3240', null, '2016-04-18 16:35:29', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.EmployeeServiceImpl:empQuery');
INSERT INTO `t_systemlog` VALUES ('3241', null, '2016-04-18 16:35:30', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.EmployeeServiceImpl:empQuery');
INSERT INTO `t_systemlog` VALUES ('3242', null, '2016-04-18 16:35:30', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.EmployeeServiceImpl:empQuery');
INSERT INTO `t_systemlog` VALUES ('3243', null, '2016-04-18 16:35:30', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.EmployeeServiceImpl:empQuery');
INSERT INTO `t_systemlog` VALUES ('3244', null, '2016-04-18 16:35:30', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.EmployeeServiceImpl:empQuery');
INSERT INTO `t_systemlog` VALUES ('3245', null, '2016-04-18 16:35:31', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.EmployeeServiceImpl:empQuery');
INSERT INTO `t_systemlog` VALUES ('3246', null, '2016-04-18 16:35:31', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.EmployeeServiceImpl:empQuery');
INSERT INTO `t_systemlog` VALUES ('3247', null, '2016-04-18 16:35:32', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.EmployeeServiceImpl:empQuery');
INSERT INTO `t_systemlog` VALUES ('3248', null, '2016-04-18 16:35:34', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.EmployeeServiceImpl:empQuery');
INSERT INTO `t_systemlog` VALUES ('3249', null, '2016-04-18 16:35:35', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.EmployeeServiceImpl:empQuery');
INSERT INTO `t_systemlog` VALUES ('3250', null, '2016-04-18 16:35:35', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.EmployeeServiceImpl:empQuery');
INSERT INTO `t_systemlog` VALUES ('3251', null, '2016-04-18 16:35:54', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.MenuServiceImpl:getMenuResult');
INSERT INTO `t_systemlog` VALUES ('3252', null, '2016-04-18 16:35:56', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.RoleServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('3253', null, '2016-04-18 16:35:56', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.EmployeeServiceImpl:empQuery');
INSERT INTO `t_systemlog` VALUES ('3254', null, '2016-04-18 16:36:10', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.EmployeeServiceImpl:update');
INSERT INTO `t_systemlog` VALUES ('3255', null, '2016-04-18 16:36:12', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.EmployeeServiceImpl:empQuery');
INSERT INTO `t_systemlog` VALUES ('3256', null, '2016-04-18 16:37:08', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.EmployeeServiceImpl:empQuery');
INSERT INTO `t_systemlog` VALUES ('3257', null, '2016-04-18 16:37:09', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.RoleServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('3258', null, '2016-04-18 16:37:24', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.RoleServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('3259', null, '2016-04-18 16:37:24', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.EmployeeServiceImpl:empQuery');
INSERT INTO `t_systemlog` VALUES ('3260', null, '2016-04-18 16:37:41', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.RoleServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('3261', null, '2016-04-18 16:37:41', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.EmployeeServiceImpl:empQuery');
INSERT INTO `t_systemlog` VALUES ('3262', null, '2016-04-18 16:38:01', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.EmployeeServiceImpl:empQuery');
INSERT INTO `t_systemlog` VALUES ('3263', null, '2016-04-18 16:38:04', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.RoleServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('3264', null, '2016-04-18 16:38:04', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.EmployeeServiceImpl:empQuery');
INSERT INTO `t_systemlog` VALUES ('3265', null, '2016-04-18 16:38:20', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.EmployeeServiceImpl:empQuery');
INSERT INTO `t_systemlog` VALUES ('3266', null, '2016-04-18 16:38:37', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.EmployeeServiceImpl:update');
INSERT INTO `t_systemlog` VALUES ('3267', null, '2016-04-18 16:38:37', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.EmployeeServiceImpl:update');
INSERT INTO `t_systemlog` VALUES ('3268', null, '2016-04-18 16:38:37', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.EmployeeServiceImpl:update');
INSERT INTO `t_systemlog` VALUES ('3269', null, '2016-04-18 16:38:37', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.EmployeeServiceImpl:update');
INSERT INTO `t_systemlog` VALUES ('3270', null, '2016-04-18 16:38:37', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.EmployeeServiceImpl:update');
INSERT INTO `t_systemlog` VALUES ('3271', null, '2016-04-18 16:38:39', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.EmployeeServiceImpl:empQuery');
INSERT INTO `t_systemlog` VALUES ('3272', null, '2016-04-18 16:38:40', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.EmployeeServiceImpl:empQuery');
INSERT INTO `t_systemlog` VALUES ('3273', null, '2016-04-18 16:38:42', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.EmployeeServiceImpl:empQuery');
INSERT INTO `t_systemlog` VALUES ('3274', null, '2016-04-18 16:38:42', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.EmployeeServiceImpl:empQuery');
INSERT INTO `t_systemlog` VALUES ('3275', null, '2016-04-18 16:38:43', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.EmployeeServiceImpl:empQuery');
INSERT INTO `t_systemlog` VALUES ('3276', null, '2016-04-18 16:38:47', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.EmployeeServiceImpl:empQuery');
INSERT INTO `t_systemlog` VALUES ('3277', null, '2016-04-18 16:44:28', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.RoleServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('3278', null, '2016-04-18 16:44:58', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.MenuServiceImpl:getMenuResult');
INSERT INTO `t_systemlog` VALUES ('3279', null, '2016-04-18 16:44:59', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.RoleServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('3280', null, '2016-04-18 16:44:59', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.EmployeeServiceImpl:empQuery');
INSERT INTO `t_systemlog` VALUES ('3281', null, '2016-04-18 16:45:02', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.EmployeeServiceImpl:empQuery');
INSERT INTO `t_systemlog` VALUES ('3282', null, '2016-04-18 16:46:09', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.MenuServiceImpl:getMenuResult');
INSERT INTO `t_systemlog` VALUES ('3283', null, '2016-04-18 16:46:11', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.EmployeeServiceImpl:empQuery');
INSERT INTO `t_systemlog` VALUES ('3284', null, '2016-04-18 16:46:11', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.RoleServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('3285', null, '2016-04-18 16:46:34', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.RoleServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('3286', null, '2016-04-18 16:46:34', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.EmployeeServiceImpl:empQuery');
INSERT INTO `t_systemlog` VALUES ('3287', null, '2016-04-18 16:46:38', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.MenuServiceImpl:getMenuResult');
INSERT INTO `t_systemlog` VALUES ('3288', null, '2016-04-18 16:46:39', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.RoleServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('3289', null, '2016-04-18 16:46:39', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.EmployeeServiceImpl:empQuery');
INSERT INTO `t_systemlog` VALUES ('3290', null, '2016-04-18 16:46:54', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.RoleServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('3291', null, '2016-04-18 16:46:54', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.EmployeeServiceImpl:empQuery');
INSERT INTO `t_systemlog` VALUES ('3292', null, '2016-04-18 16:47:01', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.EmployeeServiceImpl:empQuery');
INSERT INTO `t_systemlog` VALUES ('3293', null, '2016-04-18 16:47:29', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.RoleServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('3294', null, '2016-04-18 16:47:29', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.EmployeeServiceImpl:empQuery');
INSERT INTO `t_systemlog` VALUES ('3295', null, '2016-04-18 16:47:37', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.MenuServiceImpl:getMenuResult');
INSERT INTO `t_systemlog` VALUES ('3296', null, '2016-04-18 16:47:38', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.RoleServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('3297', null, '2016-04-18 16:47:38', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.EmployeeServiceImpl:empQuery');
INSERT INTO `t_systemlog` VALUES ('3298', null, '2016-04-18 16:47:49', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.EmployeeServiceImpl:empQuery');
INSERT INTO `t_systemlog` VALUES ('3299', null, '2016-04-18 16:48:11', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.RoleServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('3300', null, '2016-04-18 16:48:11', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.EmployeeServiceImpl:empQuery');
INSERT INTO `t_systemlog` VALUES ('3301', null, '2016-04-18 16:48:18', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.MenuServiceImpl:getMenuResult');
INSERT INTO `t_systemlog` VALUES ('3302', null, '2016-04-18 16:48:23', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.MenuServiceImpl:getMenuResult');
INSERT INTO `t_systemlog` VALUES ('3303', null, '2016-04-18 16:48:25', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.RoleServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('3304', null, '2016-04-18 16:48:25', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.EmployeeServiceImpl:empQuery');
INSERT INTO `t_systemlog` VALUES ('3305', null, '2016-04-18 16:49:33', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.MenuServiceImpl:getMenuResult');
INSERT INTO `t_systemlog` VALUES ('3306', null, '2016-04-18 16:49:41', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.RoleServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('3307', null, '2016-04-18 16:49:41', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.EmployeeServiceImpl:empQuery');
INSERT INTO `t_systemlog` VALUES ('3308', null, '2016-04-18 16:55:51', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.RoleServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('3309', null, '2016-04-18 16:55:51', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.EmployeeServiceImpl:empQuery');
INSERT INTO `t_systemlog` VALUES ('3310', null, '2016-04-18 16:55:57', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.MenuServiceImpl:getMenuResult');
INSERT INTO `t_systemlog` VALUES ('3311', null, '2016-04-18 16:55:58', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.RoleServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('3312', null, '2016-04-18 16:55:58', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.EmployeeServiceImpl:empQuery');
INSERT INTO `t_systemlog` VALUES ('3313', null, '2016-04-18 16:56:59', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.RoleServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('3314', null, '2016-04-18 16:56:59', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.EmployeeServiceImpl:empQuery');
INSERT INTO `t_systemlog` VALUES ('3315', null, '2016-04-18 16:57:08', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.EmployeeServiceImpl:empQuery');
INSERT INTO `t_systemlog` VALUES ('3316', null, '2016-04-18 16:57:10', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.EmployeeServiceImpl:empQuery');
INSERT INTO `t_systemlog` VALUES ('3317', null, '2016-04-18 16:57:59', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.EmployeeServiceImpl:save');
INSERT INTO `t_systemlog` VALUES ('3319', null, '2016-04-18 16:58:01', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.EmployeeServiceImpl:empQuery');
INSERT INTO `t_systemlog` VALUES ('3320', null, '2016-04-18 16:59:31', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.EmployeeServiceImpl:update');
INSERT INTO `t_systemlog` VALUES ('3321', null, '2016-04-18 16:59:31', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.EmployeeServiceImpl:update');
INSERT INTO `t_systemlog` VALUES ('3322', null, '2016-04-18 16:59:32', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.EmployeeServiceImpl:empQuery');
INSERT INTO `t_systemlog` VALUES ('3323', null, '2016-04-18 16:59:34', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.EmployeeServiceImpl:empQuery');
INSERT INTO `t_systemlog` VALUES ('3324', null, '2016-04-18 16:59:51', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.EmployeeServiceImpl:empQuery');
INSERT INTO `t_systemlog` VALUES ('3325', null, '2016-04-18 17:00:52', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.RoleServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('3326', null, '2016-04-18 17:00:52', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.EmployeeServiceImpl:empQuery');
INSERT INTO `t_systemlog` VALUES ('3327', null, '2016-04-18 17:00:55', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.EmployeeServiceImpl:leave');
INSERT INTO `t_systemlog` VALUES ('3328', null, '2016-04-18 17:00:56', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.EmployeeServiceImpl:empQuery');
INSERT INTO `t_systemlog` VALUES ('3329', null, '2016-04-18 17:02:01', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.EmployeeServiceImpl:empQuery');
INSERT INTO `t_systemlog` VALUES ('3330', null, '2016-04-18 17:02:06', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.RoleServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('3331', null, '2016-04-18 17:02:06', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.EmployeeServiceImpl:empQuery');
INSERT INTO `t_systemlog` VALUES ('3332', null, '2016-04-18 17:02:09', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.EmployeeServiceImpl:delete');
INSERT INTO `t_systemlog` VALUES ('3333', null, '2016-04-18 17:02:11', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.EmployeeServiceImpl:empQuery');
INSERT INTO `t_systemlog` VALUES ('3334', null, '2016-04-18 17:05:19', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.MenuServiceImpl:getMenuResult');
INSERT INTO `t_systemlog` VALUES ('3335', null, '2016-04-18 17:05:20', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.RoleServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('3336', null, '2016-04-18 17:05:20', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.EmployeeServiceImpl:empQuery');
INSERT INTO `t_systemlog` VALUES ('3337', null, '2016-04-18 17:05:34', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.EmployeeServiceImpl:save');
INSERT INTO `t_systemlog` VALUES ('3338', null, '2016-04-18 17:05:37', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.EmployeeServiceImpl:empQuery');
INSERT INTO `t_systemlog` VALUES ('3339', null, '2016-04-18 17:06:29', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.EmployeeServiceImpl:empQuery');
INSERT INTO `t_systemlog` VALUES ('3340', null, '2016-04-18 17:07:08', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.EmployeeServiceImpl:update');
INSERT INTO `t_systemlog` VALUES ('3341', null, '2016-04-18 17:07:09', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.EmployeeServiceImpl:empQuery');
INSERT INTO `t_systemlog` VALUES ('3342', null, '2016-04-18 17:07:41', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.EmployeeServiceImpl:empQuery');
INSERT INTO `t_systemlog` VALUES ('3343', null, '2016-04-18 17:08:18', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.EmployeeServiceImpl:empQuery');
INSERT INTO `t_systemlog` VALUES ('3344', null, '2016-04-18 17:09:52', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.RoleServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('3345', null, '2016-04-18 17:09:52', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.EmployeeServiceImpl:empQuery');
INSERT INTO `t_systemlog` VALUES ('3346', null, '2016-04-18 17:09:59', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.EmployeeServiceImpl:empQuery');
INSERT INTO `t_systemlog` VALUES ('3347', null, '2016-04-18 17:10:06', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.MenuServiceImpl:getMenuResult');
INSERT INTO `t_systemlog` VALUES ('3348', null, '2016-04-18 17:10:08', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.RoleServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('3349', null, '2016-04-18 17:10:08', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.EmployeeServiceImpl:empQuery');
INSERT INTO `t_systemlog` VALUES ('3350', null, '2016-04-18 17:10:12', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.EmployeeServiceImpl:empQuery');
INSERT INTO `t_systemlog` VALUES ('3351', null, '2016-04-18 17:10:24', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.EmployeeServiceImpl:empQuery');
INSERT INTO `t_systemlog` VALUES ('3352', null, '2016-04-18 17:10:28', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.EmployeeServiceImpl:empQuery');
INSERT INTO `t_systemlog` VALUES ('3353', null, '2016-04-18 17:10:45', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.EmployeeServiceImpl:empQuery');
INSERT INTO `t_systemlog` VALUES ('3354', null, '2016-04-18 17:12:34', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.MenuServiceImpl:getMenuResult');
INSERT INTO `t_systemlog` VALUES ('3355', null, '2016-04-18 17:12:36', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.EmployeeServiceImpl:empQuery');
INSERT INTO `t_systemlog` VALUES ('3356', null, '2016-04-18 17:12:36', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.RoleServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('3357', null, '2016-04-18 17:12:39', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.EmployeeServiceImpl:empQuery');
INSERT INTO `t_systemlog` VALUES ('3358', null, '2016-04-18 17:12:43', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.EmployeeServiceImpl:empQuery');
INSERT INTO `t_systemlog` VALUES ('3359', null, '2016-04-18 17:28:16', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.ResourceServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('3360', null, '2016-04-18 17:29:49', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.MenuServiceImpl:getMenuResult');
INSERT INTO `t_systemlog` VALUES ('3361', null, '2016-04-18 17:29:53', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('3362', null, '2016-04-19 11:36:07', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.MenuServiceImpl:getMenuResult');
INSERT INTO `t_systemlog` VALUES ('3363', null, '2016-04-19 11:36:21', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.RoleServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('3364', null, '2016-04-19 11:36:21', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.EmployeeServiceImpl:empQuery');
INSERT INTO `t_systemlog` VALUES ('3365', null, '2016-04-19 11:36:23', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('3366', null, '2016-04-19 14:59:38', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('3367', null, '2016-04-19 14:59:55', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('3368', null, '2016-04-19 15:01:38', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('3369', null, '2016-04-19 15:02:10', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('3370', null, '2016-04-19 15:02:44', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('3371', null, '2016-04-19 15:08:41', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('3372', null, '2016-04-19 15:14:12', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.ResourceServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('3373', null, '2016-04-19 15:14:12', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('3374', null, '2016-04-19 15:16:47', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('3375', null, '2016-04-19 15:16:47', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.ResourceServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('3376', null, '2016-04-19 15:16:57', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:save');
INSERT INTO `t_systemlog` VALUES ('3378', null, '2016-04-19 15:16:58', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('3379', null, '2016-04-19 15:17:02', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('3380', null, '2016-04-19 15:17:02', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('3381', null, '2016-04-19 15:17:03', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('3382', null, '2016-04-19 15:17:16', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:update');
INSERT INTO `t_systemlog` VALUES ('3388', null, '2016-04-19 15:17:16', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:update');
INSERT INTO `t_systemlog` VALUES ('3390', null, '2016-04-19 15:17:16', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:update');
INSERT INTO `t_systemlog` VALUES ('3391', null, '2016-04-19 15:17:18', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('3392', null, '2016-04-19 15:17:19', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('3393', null, '2016-04-19 15:17:20', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('3394', null, '2016-04-19 15:17:21', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('3395', null, '2016-04-19 15:17:22', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('3396', null, '2016-04-19 15:17:23', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('3397', null, '2016-04-19 15:17:33', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:update');
INSERT INTO `t_systemlog` VALUES ('3402', null, '2016-04-19 15:17:33', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:update');
INSERT INTO `t_systemlog` VALUES ('3403', null, '2016-04-19 15:17:34', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:update');
INSERT INTO `t_systemlog` VALUES ('3406', null, '2016-04-19 15:20:37', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('3407', null, '2016-04-19 15:20:37', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.ResourceServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('3408', null, '2016-04-19 15:20:59', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('3409', null, '2016-04-19 15:20:59', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.ResourceServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('3410', null, '2016-04-19 15:21:10', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('3411', null, '2016-04-19 15:21:10', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.ResourceServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('3412', null, '2016-04-19 15:21:24', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('3413', null, '2016-04-19 15:21:24', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.ResourceServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('3414', null, '2016-04-19 15:34:13', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('3415', null, '2016-04-19 15:34:13', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('3416', null, '2016-04-19 15:34:34', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:update');
INSERT INTO `t_systemlog` VALUES ('3423', null, '2016-04-19 15:34:34', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:update');
INSERT INTO `t_systemlog` VALUES ('3424', null, '2016-04-19 15:34:34', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:update');
INSERT INTO `t_systemlog` VALUES ('3425', null, '2016-04-19 15:34:34', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:update');
INSERT INTO `t_systemlog` VALUES ('3426', null, '2016-04-19 15:34:34', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:update');
INSERT INTO `t_systemlog` VALUES ('3427', null, '2016-04-19 15:34:34', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:update');
INSERT INTO `t_systemlog` VALUES ('3428', null, '2016-04-19 15:34:34', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:update');
INSERT INTO `t_systemlog` VALUES ('3429', null, '2016-04-19 15:35:06', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('3430', null, '2016-04-19 15:35:06', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('3431', null, '2016-04-19 15:35:07', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('3432', null, '2016-04-19 15:35:07', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('3433', null, '2016-04-19 15:35:07', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('3434', null, '2016-04-19 15:35:07', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('3435', null, '2016-04-19 15:35:07', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('3436', null, '2016-04-19 15:35:10', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('3437', null, '2016-04-19 15:35:15', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.MenuServiceImpl:getMenuResult');
INSERT INTO `t_systemlog` VALUES ('3438', null, '2016-04-19 15:35:18', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('3439', null, '2016-04-19 15:35:18', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.ResourceServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('3440', null, '2016-04-19 15:35:21', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('3441', null, '2016-04-19 15:35:26', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:update');
INSERT INTO `t_systemlog` VALUES ('3442', null, '2016-04-19 15:35:27', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('3443', null, '2016-04-19 15:35:30', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:delete');
INSERT INTO `t_systemlog` VALUES ('3444', null, '2016-04-19 15:35:31', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('3445', null, '2016-04-19 15:36:11', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:getAllPermission');
INSERT INTO `t_systemlog` VALUES ('3446', null, '2016-04-19 15:36:16', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.MenuServiceImpl:getMenuResult');
INSERT INTO `t_systemlog` VALUES ('3447', null, '2016-04-19 15:38:08', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.MenuServiceImpl:getMenuResult');
INSERT INTO `t_systemlog` VALUES ('3448', null, '2016-04-19 15:38:30', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.MenuServiceImpl:getMenuResult');
INSERT INTO `t_systemlog` VALUES ('3449', null, '2016-04-19 15:38:36', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:getAllPermission');
INSERT INTO `t_systemlog` VALUES ('3450', null, '2016-04-19 15:49:22', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.MenuServiceImpl:getMenuResult');
INSERT INTO `t_systemlog` VALUES ('3451', null, '2016-04-19 15:50:04', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:getAllPermission');
INSERT INTO `t_systemlog` VALUES ('3452', null, '2016-04-19 16:13:36', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.MenuServiceImpl:getMenuResult');
INSERT INTO `t_systemlog` VALUES ('3453', null, '2016-04-19 16:13:38', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.RoleServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('3454', null, '2016-04-19 16:13:38', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.EmployeeServiceImpl:empQuery');
INSERT INTO `t_systemlog` VALUES ('3455', null, '2016-04-19 16:15:39', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.RoleServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('3456', null, '2016-04-19 16:15:40', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:getAllPermission');
INSERT INTO `t_systemlog` VALUES ('3457', null, '2016-04-19 16:16:19', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.MenuServiceImpl:getMenuResult');
INSERT INTO `t_systemlog` VALUES ('3458', null, '2016-04-19 16:16:20', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.RoleServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('3459', null, '2016-04-19 16:16:20', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:getAllPermission');
INSERT INTO `t_systemlog` VALUES ('3460', null, '2016-04-19 16:18:32', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.RoleServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('3461', null, '2016-04-19 16:18:32', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:getAllPermission');
INSERT INTO `t_systemlog` VALUES ('3462', null, '2016-04-19 16:18:33', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:getAllPermission');
INSERT INTO `t_systemlog` VALUES ('3463', null, '2016-04-19 16:20:12', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.RoleServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('3464', null, '2016-04-19 16:20:12', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:getAllPermission');
INSERT INTO `t_systemlog` VALUES ('3465', null, '2016-04-19 16:20:13', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:getAllPermission');
INSERT INTO `t_systemlog` VALUES ('3466', null, '2016-04-19 16:20:53', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.RoleServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('3467', null, '2016-04-19 16:20:53', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:getAllPermission');
INSERT INTO `t_systemlog` VALUES ('3468', null, '2016-04-19 16:20:53', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:getAllPermission');
INSERT INTO `t_systemlog` VALUES ('3469', null, '2016-04-19 16:20:57', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.MenuServiceImpl:getMenuResult');
INSERT INTO `t_systemlog` VALUES ('3470', null, '2016-04-19 16:20:59', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.RoleServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('3471', null, '2016-04-19 16:20:59', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:getAllPermission');
INSERT INTO `t_systemlog` VALUES ('3472', null, '2016-04-19 16:21:00', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:getAllPermission');
INSERT INTO `t_systemlog` VALUES ('3473', null, '2016-04-19 16:21:08', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.MenuServiceImpl:getMenuResult');
INSERT INTO `t_systemlog` VALUES ('3474', null, '2016-04-19 16:21:09', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.RoleServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('3475', null, '2016-04-19 16:21:09', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:getAllPermission');
INSERT INTO `t_systemlog` VALUES ('3476', null, '2016-04-19 16:21:10', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:getAllPermission');
INSERT INTO `t_systemlog` VALUES ('3477', null, '2016-04-19 16:29:24', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:getAllPermission');
INSERT INTO `t_systemlog` VALUES ('3478', null, '2016-04-19 16:29:24', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.RoleServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('3479', null, '2016-04-19 16:29:26', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:getAllPermission');
INSERT INTO `t_systemlog` VALUES ('3480', null, '2016-04-19 16:29:36', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.RoleServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('3481', null, '2016-04-19 16:29:37', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:getAllPermission');
INSERT INTO `t_systemlog` VALUES ('3482', null, '2016-04-19 16:29:44', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:getAllPermission');
INSERT INTO `t_systemlog` VALUES ('3483', null, '2016-04-19 16:30:33', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.RoleServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('3484', null, '2016-04-19 16:30:33', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:getAllPermission');
INSERT INTO `t_systemlog` VALUES ('3485', null, '2016-04-19 16:30:34', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:getAllPermission');
INSERT INTO `t_systemlog` VALUES ('3486', null, '2016-04-19 16:30:43', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:getAllPermission');
INSERT INTO `t_systemlog` VALUES ('3487', null, '2016-04-19 16:31:21', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:getAllPermission');
INSERT INTO `t_systemlog` VALUES ('3488', null, '2016-04-19 16:32:14', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.RoleServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('3489', null, '2016-04-19 16:32:14', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:getAllPermission');
INSERT INTO `t_systemlog` VALUES ('3490', null, '2016-04-19 16:32:25', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.RoleServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('3491', null, '2016-04-19 16:32:25', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:getAllPermission');
INSERT INTO `t_systemlog` VALUES ('3492', null, '2016-04-19 16:34:13', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.RoleServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('3493', null, '2016-04-19 16:34:13', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:getAllPermission');
INSERT INTO `t_systemlog` VALUES ('3494', null, '2016-04-19 16:34:14', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.RoleServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('3495', null, '2016-04-19 16:34:14', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.RoleServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('3496', null, '2016-04-19 16:34:15', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.RoleServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('3497', null, '2016-04-19 16:34:15', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.RoleServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('3498', null, '2016-04-19 16:34:15', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.RoleServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('3499', null, '2016-04-19 16:34:15', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.RoleServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('3500', null, '2016-04-19 16:34:16', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.RoleServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('3501', null, '2016-04-19 16:34:33', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:getAllPermission');
INSERT INTO `t_systemlog` VALUES ('3502', null, '2016-04-19 16:36:04', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.MenuServiceImpl:getMenuResult');
INSERT INTO `t_systemlog` VALUES ('3503', null, '2016-04-19 16:36:05', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.RoleServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('3504', null, '2016-04-19 16:36:05', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:getAllPermission');
INSERT INTO `t_systemlog` VALUES ('3505', null, '2016-04-19 16:36:06', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:getAllPermission');
INSERT INTO `t_systemlog` VALUES ('3506', null, '2016-04-19 16:36:43', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.RoleServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('3507', null, '2016-04-19 16:36:43', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:getAllPermission');
INSERT INTO `t_systemlog` VALUES ('3508', null, '2016-04-19 16:36:44', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:getAllPermission');
INSERT INTO `t_systemlog` VALUES ('3509', null, '2016-04-19 16:38:33', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.RoleServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('3510', null, '2016-04-19 16:38:33', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:getAllPermission');
INSERT INTO `t_systemlog` VALUES ('3511', null, '2016-04-19 16:42:45', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.RoleServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('3512', null, '2016-04-19 16:42:45', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:getAllPermission');
INSERT INTO `t_systemlog` VALUES ('3513', null, '2016-04-19 16:42:47', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:getAllPermission');
INSERT INTO `t_systemlog` VALUES ('3514', null, '2016-04-19 16:43:05', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.RoleServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('3515', null, '2016-04-19 16:43:05', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:getAllPermission');
INSERT INTO `t_systemlog` VALUES ('3516', null, '2016-04-19 16:43:06', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:getAllPermission');
INSERT INTO `t_systemlog` VALUES ('3517', null, '2016-04-19 16:45:13', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:getAllPermission');
INSERT INTO `t_systemlog` VALUES ('3518', null, '2016-04-19 16:45:13', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.ResourceServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('3519', null, '2016-04-19 16:47:45', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:getAllPermission');
INSERT INTO `t_systemlog` VALUES ('3520', null, '2016-04-19 16:47:45', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.ResourceServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('3521', null, '2016-04-19 16:48:25', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:getAllPermission');
INSERT INTO `t_systemlog` VALUES ('3522', null, '2016-04-19 16:48:25', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.ResourceServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('3523', null, '2016-04-19 16:48:30', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.RoleServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('3524', null, '2016-04-19 16:48:30', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:getAllPermission');
INSERT INTO `t_systemlog` VALUES ('3525', null, '2016-04-19 16:49:34', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.RoleServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('3526', null, '2016-04-19 16:49:34', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:getAllPermission');
INSERT INTO `t_systemlog` VALUES ('3527', null, '2016-04-19 16:49:40', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.MenuServiceImpl:getMenuResult');
INSERT INTO `t_systemlog` VALUES ('3528', null, '2016-04-19 16:49:43', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.RoleServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('3529', null, '2016-04-19 16:49:43', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:getAllPermission');
INSERT INTO `t_systemlog` VALUES ('3530', null, '2016-04-19 16:50:27', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.MenuServiceImpl:getMenuResult');
INSERT INTO `t_systemlog` VALUES ('3531', null, '2016-04-19 16:50:31', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.RoleServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('3532', null, '2016-04-19 16:50:31', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:getAllPermission');
INSERT INTO `t_systemlog` VALUES ('3533', null, '2016-04-19 16:50:34', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:getAllPermission');
INSERT INTO `t_systemlog` VALUES ('3534', null, '2016-04-19 16:51:41', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.MenuServiceImpl:getMenuResult');
INSERT INTO `t_systemlog` VALUES ('3535', null, '2016-04-19 16:51:46', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.RoleServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('3536', null, '2016-04-19 16:51:46', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:getAllPermission');
INSERT INTO `t_systemlog` VALUES ('3537', null, '2016-04-19 16:54:07', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.RoleServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('3538', null, '2016-04-19 16:54:07', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:getAllPermission');
INSERT INTO `t_systemlog` VALUES ('3539', null, '2016-04-19 16:54:37', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.RoleServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('3540', null, '2016-04-19 16:54:37', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:getAllPermission');
INSERT INTO `t_systemlog` VALUES ('3541', null, '2016-04-19 16:56:19', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.MenuServiceImpl:getMenuResult');
INSERT INTO `t_systemlog` VALUES ('3542', null, '2016-04-19 16:56:21', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.RoleServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('3543', null, '2016-04-19 16:56:21', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:getAllPermission');
INSERT INTO `t_systemlog` VALUES ('3544', null, '2016-04-19 17:01:22', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.RoleServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('3545', null, '2016-04-19 17:01:23', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:getAllPermission');
INSERT INTO `t_systemlog` VALUES ('3546', null, '2016-04-19 17:01:47', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.RoleServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('3547', null, '2016-04-19 17:01:47', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:getAllPermission');
INSERT INTO `t_systemlog` VALUES ('3548', null, '2016-04-19 17:06:07', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.RoleServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('3549', null, '2016-04-19 17:06:07', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:getAllPermission');
INSERT INTO `t_systemlog` VALUES ('3550', null, '2016-04-19 17:07:16', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.RoleServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('3551', null, '2016-04-19 17:07:16', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:getAllPermission');
INSERT INTO `t_systemlog` VALUES ('3552', null, '2016-04-19 17:09:23', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.RoleServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('3553', null, '2016-04-19 17:09:30', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.RoleServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('3554', null, '2016-04-19 17:09:30', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:getAllPermission');
INSERT INTO `t_systemlog` VALUES ('3555', null, '2016-04-19 17:12:07', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.RoleServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('3556', null, '2016-04-19 17:12:07', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:getAllPermission');
INSERT INTO `t_systemlog` VALUES ('3557', null, '2016-04-19 17:13:16', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.RoleServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('3558', null, '2016-04-19 17:13:29', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.RoleServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('3559', null, '2016-04-19 17:13:46', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.RoleServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('3560', null, '2016-04-19 17:14:26', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.RoleServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('3561', null, '2016-04-19 17:15:02', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.RoleServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('3562', null, '2016-04-19 17:15:31', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.RoleServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('3563', null, '2016-04-19 17:15:31', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:getAllPermission');
INSERT INTO `t_systemlog` VALUES ('3564', null, '2016-04-19 17:16:29', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.RoleServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('3565', null, '2016-04-19 17:16:49', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.RoleServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('3566', null, '2016-04-19 17:19:21', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.RoleServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('3567', null, '2016-04-19 17:19:21', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:getAllPermission');
INSERT INTO `t_systemlog` VALUES ('3568', null, '2016-04-19 17:19:43', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.RoleServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('3569', null, '2016-04-19 17:20:07', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.RoleServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('3570', null, '2016-04-19 17:20:17', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.RoleServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('3571', null, '2016-04-19 17:21:07', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.RoleServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('3572', null, '2016-04-19 17:21:07', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:getAllPermission');
INSERT INTO `t_systemlog` VALUES ('3573', null, '2016-04-19 17:21:08', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:getAllPermission');
INSERT INTO `t_systemlog` VALUES ('3574', null, '2016-04-19 17:21:28', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.RoleServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('3575', null, '2016-04-19 17:21:28', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:getAllPermission');
INSERT INTO `t_systemlog` VALUES ('3576', null, '2016-04-19 17:21:29', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:getAllPermission');
INSERT INTO `t_systemlog` VALUES ('3577', null, '2016-04-19 17:22:17', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.RoleServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('3578', null, '2016-04-19 17:22:17', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:getAllPermission');
INSERT INTO `t_systemlog` VALUES ('3579', null, '2016-04-19 17:22:19', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:getAllPermission');
INSERT INTO `t_systemlog` VALUES ('3580', null, '2016-04-19 17:22:45', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.RoleServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('3581', null, '2016-04-19 17:22:45', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:getAllPermission');
INSERT INTO `t_systemlog` VALUES ('3582', null, '2016-04-19 17:22:46', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:getAllPermission');
INSERT INTO `t_systemlog` VALUES ('3583', null, '2016-04-19 17:23:14', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.RoleServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('3584', null, '2016-04-19 17:23:14', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:getAllPermission');
INSERT INTO `t_systemlog` VALUES ('3585', null, '2016-04-19 17:23:15', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:getAllPermission');
INSERT INTO `t_systemlog` VALUES ('3586', null, '2016-04-19 17:23:36', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.MenuServiceImpl:getMenuResult');
INSERT INTO `t_systemlog` VALUES ('3587', null, '2016-04-19 17:23:37', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.RoleServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('3588', null, '2016-04-19 17:23:37', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:getAllPermission');
INSERT INTO `t_systemlog` VALUES ('3589', null, '2016-04-19 17:23:39', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:getAllPermission');
INSERT INTO `t_systemlog` VALUES ('3590', null, '2016-04-19 17:26:01', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.RoleServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('3591', null, '2016-04-19 17:26:01', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:getAllPermission');
INSERT INTO `t_systemlog` VALUES ('3592', null, '2016-04-19 17:26:16', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.RoleServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('3593', null, '2016-04-19 17:26:16', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:getAllPermission');
INSERT INTO `t_systemlog` VALUES ('3594', null, '2016-04-19 17:26:17', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:getAllPermission');
INSERT INTO `t_systemlog` VALUES ('3595', null, '2016-04-19 17:26:49', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.RoleServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('3596', null, '2016-04-19 17:26:49', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:getAllPermission');
INSERT INTO `t_systemlog` VALUES ('3597', null, '2016-04-19 17:26:50', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:getAllPermission');
INSERT INTO `t_systemlog` VALUES ('3598', null, '2016-04-19 17:27:00', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.MenuServiceImpl:getMenuResult');
INSERT INTO `t_systemlog` VALUES ('3599', null, '2016-04-19 17:27:02', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.RoleServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('3600', null, '2016-04-19 17:27:02', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:getAllPermission');
INSERT INTO `t_systemlog` VALUES ('3601', null, '2016-04-19 17:27:03', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:getAllPermission');
INSERT INTO `t_systemlog` VALUES ('3602', null, '2016-04-19 17:27:15', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.MenuServiceImpl:getMenuResult');
INSERT INTO `t_systemlog` VALUES ('3603', null, '2016-04-19 17:27:17', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.RoleServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('3604', null, '2016-04-19 17:27:17', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:getAllPermission');
INSERT INTO `t_systemlog` VALUES ('3605', null, '2016-04-19 17:27:18', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:getAllPermission');
INSERT INTO `t_systemlog` VALUES ('3606', null, '2016-04-19 17:27:40', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.RoleServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('3607', null, '2016-04-19 17:27:40', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:getAllPermission');
INSERT INTO `t_systemlog` VALUES ('3608', null, '2016-04-19 17:27:41', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:getAllPermission');
INSERT INTO `t_systemlog` VALUES ('3609', null, '2016-04-19 17:28:06', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.RoleServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('3610', null, '2016-04-19 17:28:06', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:getAllPermission');
INSERT INTO `t_systemlog` VALUES ('3611', null, '2016-04-19 17:28:07', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:getAllPermission');
INSERT INTO `t_systemlog` VALUES ('3612', null, '2016-04-19 17:28:44', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.RoleServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('3613', null, '2016-04-19 17:28:44', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:getAllPermission');
INSERT INTO `t_systemlog` VALUES ('3614', null, '2016-04-19 17:28:45', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:getAllPermission');
INSERT INTO `t_systemlog` VALUES ('3615', null, '2016-04-19 17:29:34', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.RoleServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('3616', null, '2016-04-19 17:29:34', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('3617', null, '2016-04-19 17:29:35', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('3618', null, '2016-04-19 17:29:46', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('3619', null, '2016-04-19 17:29:46', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('3620', null, '2016-04-19 17:29:47', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('3621', null, '2016-04-19 17:29:47', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('3622', null, '2016-04-19 17:29:49', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('3623', null, '2016-04-19 17:29:50', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('3624', null, '2016-04-19 17:29:50', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('3625', null, '2016-04-19 17:29:50', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('3626', null, '2016-04-19 17:30:33', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.RoleServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('3627', null, '2016-04-19 17:30:33', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('3628', null, '2016-04-19 17:30:34', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('3629', null, '2016-04-19 17:32:20', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.RoleServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('3630', null, '2016-04-19 17:32:20', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('3631', null, '2016-04-19 17:32:21', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('3632', null, '2016-04-19 17:33:15', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('3633', null, '2016-04-19 17:33:16', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('3634', null, '2016-04-19 17:33:19', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('3635', null, '2016-04-19 17:33:20', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('3636', null, '2016-04-19 17:35:23', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.RoleServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('3637', null, '2016-04-19 17:35:23', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('3638', null, '2016-04-19 17:35:25', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('3639', null, '2016-04-19 17:35:46', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('3640', null, '2016-04-19 17:35:50', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('3641', null, '2016-04-19 17:35:51', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('3642', null, '2016-04-19 17:35:53', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('3643', null, '2016-04-19 17:35:56', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('3644', null, '2016-04-19 17:35:56', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('3645', null, '2016-04-19 17:35:56', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('3646', null, '2016-04-19 17:35:57', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('3647', null, '2016-04-19 17:42:59', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.RoleServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('3648', null, '2016-04-19 17:42:59', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('3649', null, '2016-04-19 17:43:02', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('3650', null, '2016-04-19 17:43:45', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.RoleServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('3651', null, '2016-04-19 17:43:45', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('3652', null, '2016-04-19 17:43:47', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('3653', null, '2016-04-19 17:44:03', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.RoleServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('3654', null, '2016-04-19 17:44:03', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('3655', null, '2016-04-19 17:44:04', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('3656', null, '2016-04-19 17:44:46', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.RoleServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('3657', null, '2016-04-19 17:44:46', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('3658', null, '2016-04-19 17:44:47', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('3659', null, '2016-04-19 17:45:13', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.MenuServiceImpl:getMenuResult');
INSERT INTO `t_systemlog` VALUES ('3660', null, '2016-04-19 17:45:15', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.RoleServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('3661', null, '2016-04-19 17:45:15', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('3662', null, '2016-04-19 17:45:16', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('3663', null, '2016-04-19 17:46:32', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.RoleServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('3664', null, '2016-04-19 17:46:32', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('3665', null, '2016-04-19 17:46:33', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('3666', null, '2016-04-19 17:47:05', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.RoleServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('3667', null, '2016-04-19 17:47:06', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('3668', null, '2016-04-19 17:47:07', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('3669', null, '2016-04-19 17:47:48', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('3670', null, '2016-04-19 17:47:52', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('3671', null, '2016-04-19 17:47:56', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('3672', null, '2016-04-19 17:48:04', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('3673', null, '2016-04-19 17:48:12', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('3674', null, '2016-04-19 17:48:17', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('3675', null, '2016-04-19 17:48:25', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('3676', null, '2016-04-19 17:48:30', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('3677', null, '2016-04-19 17:48:57', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.RoleServiceImpl:save');
INSERT INTO `t_systemlog` VALUES ('3678', null, '2016-04-19 17:48:57', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.RoleServiceImpl:save');
INSERT INTO `t_systemlog` VALUES ('3679', null, '2016-04-19 17:48:57', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.RoleServiceImpl:save');
INSERT INTO `t_systemlog` VALUES ('3680', null, '2016-04-19 17:48:59', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.RoleServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('3681', null, '2016-04-19 17:49:00', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.RoleServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('3682', null, '2016-04-19 17:49:01', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.RoleServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('3683', null, '2016-04-19 17:49:04', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.RoleServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('3684', null, '2016-04-19 17:49:05', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.RoleServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('3685', null, '2016-04-19 17:49:05', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.RoleServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('3686', null, '2016-04-19 17:49:58', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.RoleServiceImpl:delete');
INSERT INTO `t_systemlog` VALUES ('3687', null, '2016-04-19 17:49:58', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.RoleServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('3688', null, '2016-04-19 17:50:01', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.RoleServiceImpl:delete');
INSERT INTO `t_systemlog` VALUES ('3689', null, '2016-04-19 17:50:01', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.RoleServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('3690', null, '2016-04-19 17:50:05', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('3691', null, '2016-04-19 17:50:27', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.RoleServiceImpl:save');
INSERT INTO `t_systemlog` VALUES ('3692', null, '2016-04-19 17:50:27', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.RoleServiceImpl:save');
INSERT INTO `t_systemlog` VALUES ('3693', null, '2016-04-19 17:50:27', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.RoleServiceImpl:save');
INSERT INTO `t_systemlog` VALUES ('3694', null, '2016-04-19 17:50:29', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.RoleServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('3695', null, '2016-04-19 17:50:30', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.RoleServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('3696', null, '2016-04-19 17:50:31', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.RoleServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('3697', null, '2016-04-19 17:50:43', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.MenuServiceImpl:getMenuResult');
INSERT INTO `t_systemlog` VALUES ('3698', null, '2016-04-19 17:50:47', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.MenuServiceImpl:getMenuResult');
INSERT INTO `t_systemlog` VALUES ('3699', null, '2016-04-19 17:50:49', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.RoleServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('3700', null, '2016-04-19 17:50:49', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('3701', null, '2016-04-19 17:50:52', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.RoleServiceImpl:delete');
INSERT INTO `t_systemlog` VALUES ('3702', null, '2016-04-19 17:50:52', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.RoleServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('3703', null, '2016-04-19 17:50:56', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.RoleServiceImpl:delete');
INSERT INTO `t_systemlog` VALUES ('3704', null, '2016-04-19 17:50:56', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.RoleServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('3705', null, '2016-04-19 17:50:59', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('3706', null, '2016-04-19 17:51:06', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.RoleServiceImpl:save');
INSERT INTO `t_systemlog` VALUES ('3707', null, '2016-04-19 17:51:08', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.RoleServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('3708', null, '2016-04-19 17:51:12', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.RoleServiceImpl:delete');
INSERT INTO `t_systemlog` VALUES ('3709', null, '2016-04-19 17:51:13', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.RoleServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('3710', null, '2016-04-19 17:51:16', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('3711', null, '2016-04-19 17:51:16', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.RoleServiceImpl:findPermissions');
INSERT INTO `t_systemlog` VALUES ('3712', null, '2016-04-19 17:51:30', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('3713', null, '2016-04-19 17:51:30', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.RoleServiceImpl:findPermissions');
INSERT INTO `t_systemlog` VALUES ('3714', null, '2016-04-19 18:09:30', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.MenuServiceImpl:getMenuResult');
INSERT INTO `t_systemlog` VALUES ('3715', null, '2016-04-19 18:09:33', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.RoleServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('3716', null, '2016-04-19 18:09:33', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('3717', null, '2016-04-19 18:09:37', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('3718', null, '2016-04-19 18:09:37', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.RoleServiceImpl:findPermissions');
INSERT INTO `t_systemlog` VALUES ('3719', null, '2016-04-19 18:09:43', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('3720', null, '2016-04-19 18:09:45', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('3721', null, '2016-04-19 18:09:47', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('3722', null, '2016-04-19 18:09:55', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.RoleServiceImpl:update');
INSERT INTO `t_systemlog` VALUES ('3723', null, '2016-04-19 18:09:57', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.RoleServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('3724', null, '2016-04-19 18:09:59', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('3725', null, '2016-04-19 18:09:59', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.RoleServiceImpl:findPermissions');
INSERT INTO `t_systemlog` VALUES ('3726', null, '2016-04-19 18:10:43', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.RoleServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('3727', null, '2016-04-19 18:10:43', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('3728', null, '2016-04-19 18:10:44', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('3729', null, '2016-04-19 18:11:05', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.RoleServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('3730', null, '2016-04-19 18:11:05', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('3731', null, '2016-04-19 18:11:06', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('3732', null, '2016-04-20 10:17:45', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.MenuServiceImpl:getMenuResult');
INSERT INTO `t_systemlog` VALUES ('3733', null, '2016-04-20 10:17:48', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.RoleServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('3734', null, '2016-04-20 10:17:48', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('3735', null, '2016-04-20 10:18:38', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.MenuServiceImpl:getMenuResult');
INSERT INTO `t_systemlog` VALUES ('3736', null, '2016-04-20 10:19:17', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.MenuServiceImpl:getMenuResult');
INSERT INTO `t_systemlog` VALUES ('3737', null, '2016-04-20 10:19:23', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.MenuServiceImpl:getMenuResult');
INSERT INTO `t_systemlog` VALUES ('3738', null, '2016-04-20 10:19:37', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.MenuServiceImpl:getMenuResult');
INSERT INTO `t_systemlog` VALUES ('3739', null, '2016-04-20 11:28:59', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.RoleServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('3740', null, '2016-04-20 11:28:59', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.EmployeeServiceImpl:empQuery');
INSERT INTO `t_systemlog` VALUES ('3741', null, '2016-04-20 11:29:46', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('3742', null, '2016-04-20 11:29:56', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('3743', null, '2016-04-20 11:29:56', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.GoodsServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('3744', null, '2016-04-20 11:34:40', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.RoleServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('3745', null, '2016-04-20 11:34:40', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.EmployeeServiceImpl:empQuery');
INSERT INTO `t_systemlog` VALUES ('3746', null, '2016-04-20 11:35:03', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.RoleServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('3747', null, '2016-04-20 11:35:03', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.EmployeeServiceImpl:empQuery');
INSERT INTO `t_systemlog` VALUES ('3748', null, '2016-04-20 11:45:07', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('3749', null, '2016-04-20 11:46:34', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('3750', null, '2016-04-20 11:47:21', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.UserServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('3751', null, '2016-04-20 11:47:21', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('3752', null, '2016-04-20 11:47:48', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.RoleServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('3753', null, '2016-04-20 11:47:48', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.EmployeeServiceImpl:empQuery');
INSERT INTO `t_systemlog` VALUES ('3754', null, '2016-04-20 11:48:14', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('3755', null, '2016-04-20 11:54:17', '127.0.0.1', 'com.huashidai.weihuotong.service.impl.UserServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('3756', null, '2016-04-20 12:09:31', '127.0.0.1', 'com.huashidai.weihuotong.service.impl.UserServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('3757', null, '2016-04-20 13:29:18', '127.0.0.1', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('3758', null, '2016-04-20 13:29:27', '127.0.0.1', 'com.huashidai.weihuotong.service.impl.StoreAuthServiceImpl:getByStore');
INSERT INTO `t_systemlog` VALUES ('3759', null, '2016-04-20 13:52:48', '127.0.0.1', 'com.huashidai.weihuotong.service.impl.UserServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('3760', null, '2016-04-20 13:53:23', '127.0.0.1', 'com.huashidai.weihuotong.service.impl.UserServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('3761', null, '2016-04-20 13:53:24', '127.0.0.1', 'com.huashidai.weihuotong.service.impl.UserServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('3762', null, '2016-04-20 13:53:25', '127.0.0.1', 'com.huashidai.weihuotong.service.impl.UserServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('3763', null, '2016-04-20 13:53:25', '127.0.0.1', 'com.huashidai.weihuotong.service.impl.UserServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('3764', null, '2016-04-20 13:54:24', '127.0.0.1', 'com.huashidai.weihuotong.service.impl.UserServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('3765', null, '2016-04-20 13:56:39', '127.0.0.1', 'com.huashidai.weihuotong.service.impl.UserServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('3766', null, '2016-04-20 13:57:36', '127.0.0.1', 'com.huashidai.weihuotong.service.impl.UserServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('3767', null, '2016-04-20 14:48:50', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.BrandServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('3768', null, '2016-04-20 14:52:18', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('3769', null, '2016-04-20 14:52:18', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('3770', null, '2016-04-20 14:52:18', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('3771', null, '2016-04-20 14:52:19', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('3772', null, '2016-04-20 14:52:19', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.GoodsServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('3773', null, '2016-04-20 14:52:25', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.UserServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('3774', null, '2016-04-20 14:52:25', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('3775', null, '2016-04-20 14:52:27', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreAuthServiceImpl:getByStore');
INSERT INTO `t_systemlog` VALUES ('3776', null, '2016-04-20 14:52:37', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreAuthServiceImpl:getByStore');
INSERT INTO `t_systemlog` VALUES ('3777', null, '2016-04-21 10:03:38', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('3778', null, '2016-04-21 10:03:39', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.GoodsServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('3779', null, '2016-04-21 10:03:40', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('3780', null, '2016-04-21 10:03:40', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('3781', null, '2016-04-21 10:03:40', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('3782', null, '2016-04-21 10:22:57', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.BrandServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('3783', null, '2016-04-21 10:23:30', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.BrandServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('3784', null, '2016-04-21 10:27:55', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.GoodsServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('3785', null, '2016-04-21 10:30:17', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('3786', null, '2016-04-21 11:12:24', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('3787', null, '2016-04-21 14:11:48', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('3788', null, '2016-04-21 14:18:08', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('3789', null, '2016-04-21 14:19:37', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('3790', null, '2016-04-21 14:20:21', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('3791', null, '2016-04-21 14:20:42', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('3792', null, '2016-04-21 14:20:54', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('3793', null, '2016-04-21 14:21:56', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('3794', null, '2016-04-21 14:22:08', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('3795', null, '2016-04-21 14:23:50', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('3796', null, '2016-04-21 14:25:33', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('3797', null, '2016-04-21 14:25:48', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('3798', null, '2016-04-21 14:25:48', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('3799', null, '2016-04-21 14:25:50', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('3800', null, '2016-04-21 14:25:54', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('3801', null, '2016-04-21 14:25:55', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('3802', null, '2016-04-21 14:25:55', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('3803', null, '2016-04-21 14:26:11', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('3804', null, '2016-04-21 14:26:27', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.BrandServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('3805', null, '2016-04-21 14:26:45', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('3806', null, '2016-04-21 14:26:47', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('3807', null, '2016-04-21 14:26:52', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('3808', null, '2016-04-21 14:26:52', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.GoodsServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('3809', null, '2016-04-21 14:26:54', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('3810', null, '2016-04-21 14:26:54', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('3811', null, '2016-04-21 14:26:54', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('3812', null, '2016-04-21 14:26:57', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('3813', null, '2016-04-21 14:27:20', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('3814', null, '2016-04-21 14:27:20', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('3815', null, '2016-04-21 14:27:20', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('3816', null, '2016-04-21 14:27:27', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.RoleServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('3817', null, '2016-04-21 14:27:27', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('3818', null, '2016-04-21 14:28:01', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('3819', null, '2016-04-21 14:28:04', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('3820', null, '2016-04-21 14:28:09', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('3821', null, '2016-04-21 14:28:10', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('3822', null, '2016-04-21 14:30:32', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('3823', null, '2016-04-21 14:30:36', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('3824', null, '2016-04-21 14:30:37', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('3825', null, '2016-04-21 14:30:38', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('3826', null, '2016-04-21 14:30:41', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('3827', null, '2016-04-21 14:44:52', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('3828', null, '2016-04-21 14:47:25', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('3829', null, '2016-04-21 14:47:31', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('3830', null, '2016-04-21 17:52:52', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('3831', null, '2016-04-21 17:56:41', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('3832', null, '2016-04-21 17:56:56', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('3833', null, '2016-04-21 17:57:20', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('3834', null, '2016-04-21 18:07:27', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('3835', null, '2016-04-22 10:18:14', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('3836', null, '2016-04-22 11:06:14', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('3837', null, '2016-04-22 11:08:23', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('3838', null, '2016-04-22 11:10:30', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('3839', null, '2016-04-22 11:10:30', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('3840', null, '2016-04-22 11:10:42', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('3841', null, '2016-04-22 11:10:42', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('3842', null, '2016-04-22 11:11:29', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('3843', null, '2016-04-22 11:11:29', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('3844', null, '2016-04-22 11:13:25', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('3845', null, '2016-04-22 11:13:25', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('3846', null, '2016-04-22 11:13:25', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('3847', null, '2016-04-22 11:13:51', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('3848', null, '2016-04-22 11:13:51', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('3849', null, '2016-04-22 11:13:51', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('3850', null, '2016-04-22 11:14:20', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('3851', null, '2016-04-22 11:14:20', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('3852', null, '2016-04-22 11:14:20', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('3853', null, '2016-04-22 11:17:08', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('3854', null, '2016-04-22 11:17:08', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('3855', null, '2016-04-22 11:17:08', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('3856', null, '2016-04-22 11:17:40', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('3857', null, '2016-04-22 11:17:40', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('3858', null, '2016-04-22 11:17:40', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('3859', null, '2016-04-22 11:20:06', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('3860', null, '2016-04-22 11:20:06', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('3861', null, '2016-04-22 11:20:06', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('3862', null, '2016-04-22 11:20:48', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('3863', null, '2016-04-22 11:20:48', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('3864', null, '2016-04-22 11:20:48', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('3865', null, '2016-04-22 11:21:13', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('3866', null, '2016-04-22 11:21:13', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('3867', null, '2016-04-22 11:21:13', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('3868', null, '2016-04-22 11:21:41', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('3869', null, '2016-04-22 11:21:41', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('3870', null, '2016-04-22 11:21:42', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('3871', null, '2016-04-22 11:22:00', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('3872', null, '2016-04-22 11:22:00', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('3873', null, '2016-04-22 11:22:00', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('3874', null, '2016-04-22 11:22:14', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('3875', null, '2016-04-22 11:24:18', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('3876', null, '2016-04-22 11:24:27', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('3877', null, '2016-04-22 11:25:16', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('3878', null, '2016-04-22 11:26:45', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('3879', null, '2016-04-22 11:26:45', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('3880', null, '2016-04-22 11:26:45', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('3881', null, '2016-04-22 11:27:31', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('3882', null, '2016-04-22 11:27:31', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('3883', null, '2016-04-22 11:27:31', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('3884', null, '2016-04-22 11:28:02', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('3885', null, '2016-04-22 11:28:02', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('3886', null, '2016-04-22 11:28:02', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('3887', null, '2016-04-22 11:28:15', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('3888', null, '2016-04-22 11:28:15', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('3889', null, '2016-04-22 11:28:15', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('3890', null, '2016-04-22 11:28:49', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('3891', null, '2016-04-22 11:28:49', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('3892', null, '2016-04-22 11:28:50', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('3893', null, '2016-04-22 11:29:19', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('3894', null, '2016-04-22 11:29:20', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('3895', null, '2016-04-22 11:29:21', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('3896', null, '2016-04-22 11:29:23', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('3897', null, '2016-04-22 11:29:23', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('3898', null, '2016-04-22 11:29:27', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('3899', null, '2016-04-22 11:29:29', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('3900', null, '2016-04-22 11:32:18', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('3901', null, '2016-04-22 11:32:18', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('3902', null, '2016-04-22 11:32:18', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('3903', null, '2016-04-22 11:32:38', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('3904', null, '2016-04-22 11:32:38', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('3905', null, '2016-04-22 11:32:38', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('3906', null, '2016-04-22 11:33:00', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('3907', null, '2016-04-22 11:33:00', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('3908', null, '2016-04-22 11:33:00', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('3909', null, '2016-04-22 11:34:14', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('3910', null, '2016-04-22 11:34:14', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('3911', null, '2016-04-22 11:34:14', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('3912', null, '2016-04-22 11:34:52', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('3913', null, '2016-04-22 11:34:52', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('3914', null, '2016-04-22 11:34:52', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('3915', null, '2016-04-22 11:36:36', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('3916', null, '2016-04-22 11:36:36', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('3917', null, '2016-04-22 11:36:36', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('3918', null, '2016-04-22 11:41:45', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('3919', null, '2016-04-22 11:41:45', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('3920', null, '2016-04-22 11:41:45', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('3921', null, '2016-04-22 11:43:27', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('3922', null, '2016-04-22 11:43:27', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('3923', null, '2016-04-22 11:43:27', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('3924', null, '2016-04-22 11:44:05', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('3925', null, '2016-04-22 11:44:05', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('3926', null, '2016-04-22 11:44:05', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('3927', null, '2016-04-22 11:44:53', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('3928', null, '2016-04-22 11:44:53', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('3929', null, '2016-04-22 11:44:53', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('3930', null, '2016-04-22 11:45:01', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('3931', null, '2016-04-22 11:45:17', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('3932', null, '2016-04-22 11:45:17', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('3933', null, '2016-04-22 11:45:18', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('3934', null, '2016-04-22 11:45:32', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('3935', null, '2016-04-22 11:45:32', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('3936', null, '2016-04-22 11:45:32', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('3937', null, '2016-04-22 11:45:40', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('3938', null, '2016-04-22 11:45:40', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('3939', null, '2016-04-22 11:45:41', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('3940', null, '2016-04-22 11:46:33', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('3941', null, '2016-04-22 11:46:33', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('3942', null, '2016-04-22 11:46:33', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('3943', null, '2016-04-22 11:46:41', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('3944', null, '2016-04-22 11:46:41', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('3945', null, '2016-04-22 11:46:41', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('3946', null, '2016-04-22 14:21:09', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('3947', null, '2016-04-22 14:21:09', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('3948', null, '2016-04-22 14:21:09', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('3949', null, '2016-04-22 14:21:40', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('3950', null, '2016-04-22 14:21:40', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('3951', null, '2016-04-22 14:21:40', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('3952', null, '2016-04-22 14:24:22', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('3953', null, '2016-04-22 14:24:22', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('3954', null, '2016-04-22 14:24:23', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('3955', null, '2016-04-22 14:25:04', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('3956', null, '2016-04-22 14:25:04', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('3957', null, '2016-04-22 14:25:04', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('3958', null, '2016-04-22 14:33:56', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('3959', null, '2016-04-22 14:33:56', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('3960', null, '2016-04-22 14:37:50', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('3961', null, '2016-04-22 14:37:50', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('3962', null, '2016-04-22 14:38:08', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('3963', null, '2016-04-22 14:38:08', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('3964', null, '2016-04-22 14:38:08', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('3965', null, '2016-04-22 14:38:13', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('3966', null, '2016-04-22 14:38:13', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.GoodsServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('3967', null, '2016-04-22 16:57:26', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('3968', null, '2016-04-22 16:57:26', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('3969', null, '2016-04-22 16:57:43', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('3970', null, '2016-04-22 16:57:43', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('3971', null, '2016-04-22 16:58:02', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('3972', null, '2016-04-22 16:58:02', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('3973', null, '2016-04-22 16:58:02', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('3974', null, '2016-04-22 16:58:08', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('3975', null, '2016-04-22 16:58:08', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('3976', null, '2016-04-22 16:58:08', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('3977', null, '2016-04-22 17:01:06', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('3978', null, '2016-04-22 17:01:06', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('3979', null, '2016-04-22 17:01:06', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('3980', null, '2016-04-22 17:02:17', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('3981', null, '2016-04-22 17:02:17', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('3982', null, '2016-04-22 17:02:18', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('3983', null, '2016-04-22 17:02:22', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('3984', null, '2016-04-22 17:02:22', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('3985', null, '2016-04-22 17:02:22', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('3986', null, '2016-04-22 17:06:47', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('3987', null, '2016-04-22 17:06:47', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('3988', null, '2016-04-22 17:06:47', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('3989', null, '2016-04-22 17:07:07', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('3990', null, '2016-04-22 17:07:07', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('3991', null, '2016-04-22 17:07:08', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('3992', null, '2016-04-22 17:07:17', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.BrandServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('3993', null, '2016-04-22 17:07:18', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('3994', null, '2016-04-22 17:07:18', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('3995', null, '2016-04-22 17:07:18', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('3996', null, '2016-04-25 09:53:16', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('3997', null, '2016-04-25 09:53:16', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('3998', null, '2016-04-25 09:53:16', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('3999', null, '2016-04-25 09:53:44', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4000', null, '2016-04-25 09:53:44', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('4001', null, '2016-04-25 09:53:44', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('4002', null, '2016-04-25 10:03:24', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('4003', null, '2016-04-25 10:03:24', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('4004', null, '2016-04-25 10:03:24', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4005', null, '2016-04-25 10:04:42', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4006', null, '2016-04-25 10:04:42', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('4007', null, '2016-04-25 10:04:42', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('4008', null, '2016-04-25 10:06:22', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4009', null, '2016-04-25 10:06:22', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('4010', null, '2016-04-25 10:06:22', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('4011', null, '2016-04-25 10:06:27', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('4012', null, '2016-04-25 10:06:27', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4013', null, '2016-04-25 10:06:27', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('4014', null, '2016-04-25 10:07:03', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4015', null, '2016-04-25 10:07:03', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('4016', null, '2016-04-25 10:07:03', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('4017', null, '2016-04-25 10:08:13', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4018', null, '2016-04-25 10:08:13', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('4019', null, '2016-04-25 10:08:13', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('4020', null, '2016-04-25 10:10:20', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4021', null, '2016-04-25 10:10:20', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('4022', null, '2016-04-25 10:10:20', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('4023', null, '2016-04-25 10:10:27', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('4024', null, '2016-04-25 10:10:27', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4025', null, '2016-04-25 10:10:27', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('4026', null, '2016-04-25 10:12:17', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4027', null, '2016-04-25 10:12:17', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('4028', null, '2016-04-25 10:12:17', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('4029', null, '2016-04-25 10:14:27', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4030', null, '2016-04-25 10:15:39', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4031', null, '2016-04-25 10:15:39', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('4032', null, '2016-04-25 10:15:39', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('4033', null, '2016-04-25 10:20:39', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4034', null, '2016-04-25 10:20:39', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('4035', null, '2016-04-25 10:20:39', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('4036', null, '2016-04-25 10:21:19', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4037', null, '2016-04-25 10:21:19', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('4038', null, '2016-04-25 10:21:19', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('4039', null, '2016-04-25 10:26:10', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4040', null, '2016-04-25 10:26:10', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('4041', null, '2016-04-25 10:26:11', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('4042', null, '2016-04-25 10:27:00', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('4043', null, '2016-04-25 10:27:00', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4044', null, '2016-04-25 10:27:20', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('4045', null, '2016-04-25 10:27:20', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4046', null, '2016-04-25 10:27:41', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.BrandServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4047', null, '2016-04-25 10:27:44', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('4048', null, '2016-04-25 10:27:44', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4049', null, '2016-04-25 10:27:44', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('4050', null, '2016-04-25 10:27:51', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4051', null, '2016-04-25 10:27:51', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('4052', null, '2016-04-25 10:27:51', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('4053', null, '2016-04-25 10:28:34', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('4054', null, '2016-04-25 10:28:34', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4055', null, '2016-04-25 10:28:34', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('4056', null, '2016-04-25 10:28:49', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('4057', null, '2016-04-25 10:28:49', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4058', null, '2016-04-25 10:28:50', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('4059', null, '2016-04-25 10:29:41', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4060', null, '2016-04-25 10:29:41', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('4061', null, '2016-04-25 10:29:41', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('4062', null, '2016-04-25 10:30:21', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4063', null, '2016-04-25 10:30:21', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('4064', null, '2016-04-25 10:30:21', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('4065', null, '2016-04-25 10:30:30', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('4066', null, '2016-04-25 10:30:30', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4067', null, '2016-04-25 10:30:30', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('4068', null, '2016-04-25 10:31:18', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4069', null, '2016-04-25 10:31:18', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('4070', null, '2016-04-25 10:31:18', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('4071', null, '2016-04-25 10:31:46', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4072', null, '2016-04-25 10:31:46', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('4073', null, '2016-04-25 10:31:46', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('4074', null, '2016-04-25 10:33:28', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4075', null, '2016-04-25 10:33:28', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('4076', null, '2016-04-25 10:33:46', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('4077', null, '2016-04-25 10:33:46', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4078', null, '2016-04-25 10:39:03', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.BrandServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4079', null, '2016-04-25 10:39:05', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('4080', null, '2016-04-25 10:39:06', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.GoodsServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4081', null, '2016-04-25 10:40:16', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4082', null, '2016-04-25 10:40:17', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4083', null, '2016-04-25 10:40:17', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4084', null, '2016-04-25 10:40:17', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4085', null, '2016-04-25 10:40:18', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4086', null, '2016-04-25 10:40:23', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4087', null, '2016-04-25 10:40:34', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('4088', null, '2016-04-25 10:40:34', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.GoodsServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4089', null, '2016-04-25 10:40:42', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.GoodsServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4090', null, '2016-04-25 10:40:46', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.GoodsServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4091', null, '2016-04-25 10:40:50', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.BrandServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4092', null, '2016-04-25 10:40:51', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('4093', null, '2016-04-25 10:40:51', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('4094', null, '2016-04-25 10:40:51', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4095', null, '2016-04-25 10:40:55', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.UserServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4096', null, '2016-04-25 10:41:03', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4097', null, '2016-04-25 10:41:08', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.RoleServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('4098', null, '2016-04-25 10:41:08', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.EmployeeServiceImpl:empQuery');
INSERT INTO `t_systemlog` VALUES ('4099', null, '2016-04-25 10:43:37', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('4100', null, '2016-04-25 10:43:37', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4101', null, '2016-04-25 10:43:42', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4102', null, '2016-04-25 10:47:45', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('4103', null, '2016-04-25 10:47:45', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4104', null, '2016-04-25 10:48:48', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('4105', null, '2016-04-25 10:48:48', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4106', null, '2016-04-25 10:48:54', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4107', null, '2016-04-25 10:53:13', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4108', null, '2016-04-25 10:56:35', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4109', null, '2016-04-25 10:56:35', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('4110', null, '2016-04-25 10:56:37', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4111', null, '2016-04-25 10:56:41', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4112', null, '2016-04-25 11:08:43', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('4113', null, '2016-04-25 11:08:43', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4114', null, '2016-04-25 11:11:06', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('4115', null, '2016-04-25 11:11:06', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4116', null, '2016-04-25 11:11:39', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4117', null, '2016-04-25 11:11:40', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('4118', null, '2016-04-25 11:11:56', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.BrandServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4119', null, '2016-04-25 11:11:57', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('4120', null, '2016-04-25 11:11:57', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4121', null, '2016-04-25 11:13:09', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('4122', null, '2016-04-25 11:13:09', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4123', null, '2016-04-25 11:21:54', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4124', null, '2016-04-25 11:21:54', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('4125', null, '2016-04-25 11:23:18', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4126', null, '2016-04-25 11:23:18', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('4127', null, '2016-04-25 11:23:27', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('4128', null, '2016-04-25 11:23:27', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4129', null, '2016-04-25 11:23:42', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4130', null, '2016-04-25 11:23:42', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('4131', null, '2016-04-25 14:11:58', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('4132', null, '2016-04-25 14:11:58', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4133', null, '2016-04-25 14:17:14', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('4134', null, '2016-04-25 14:17:14', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4135', null, '2016-04-25 15:34:30', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('4136', null, '2016-04-25 15:34:30', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4137', null, '2016-04-25 15:40:28', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('4138', null, '2016-04-25 15:40:28', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4139', null, '2016-04-25 15:40:41', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('4140', null, '2016-04-25 15:40:41', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4141', null, '2016-04-25 15:44:57', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('4142', null, '2016-04-25 15:44:57', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4143', null, '2016-04-25 15:45:38', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('4144', null, '2016-04-25 15:45:38', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4145', null, '2016-04-25 15:45:57', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('4146', null, '2016-04-25 15:45:57', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4147', null, '2016-04-25 15:46:58', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('4148', null, '2016-04-25 15:46:58', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4149', null, '2016-04-25 15:47:16', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4150', null, '2016-04-25 15:47:16', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('4151', null, '2016-04-25 15:48:00', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('4152', null, '2016-04-25 15:48:00', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4153', null, '2016-04-25 15:48:23', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('4154', null, '2016-04-25 15:48:23', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4155', null, '2016-04-25 15:48:55', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('4156', null, '2016-04-25 15:48:55', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4157', null, '2016-04-25 15:59:58', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4158', null, '2016-04-25 16:01:12', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4159', null, '2016-04-25 16:01:12', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('4160', null, '2016-04-26 09:40:14', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('4161', null, '2016-04-26 09:40:14', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4162', null, '2016-04-26 09:54:23', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('4163', null, '2016-04-26 09:54:23', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4164', null, '2016-04-26 09:59:04', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4165', null, '2016-04-26 09:59:04', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('4166', null, '2016-04-26 09:59:07', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4167', null, '2016-04-26 10:08:26', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('4168', null, '2016-04-26 10:08:26', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4169', null, '2016-04-26 10:08:28', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4170', null, '2016-04-26 10:11:26', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4171', null, '2016-04-26 10:11:26', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('4172', null, '2016-04-26 10:11:31', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4173', null, '2016-04-26 10:13:53', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4174', null, '2016-04-26 10:13:53', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('4175', null, '2016-04-26 10:13:55', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4176', null, '2016-04-26 10:13:57', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4177', null, '2016-04-26 10:14:36', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4178', null, '2016-04-26 10:14:55', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4179', null, '2016-04-26 10:14:56', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4180', null, '2016-04-26 10:14:57', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4181', null, '2016-04-26 10:15:03', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4182', null, '2016-04-26 10:15:03', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('4183', null, '2016-04-26 10:15:04', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4184', null, '2016-04-26 10:15:49', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('4185', null, '2016-04-26 10:15:49', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4186', null, '2016-04-26 10:15:50', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4187', null, '2016-04-26 10:16:15', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4188', null, '2016-04-26 10:16:15', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('4189', null, '2016-04-26 10:16:17', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4190', null, '2016-04-26 10:16:51', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('4191', null, '2016-04-26 10:16:51', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4192', null, '2016-04-26 10:16:52', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4193', null, '2016-04-26 10:17:07', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('4194', null, '2016-04-26 10:17:07', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4195', null, '2016-04-26 10:17:08', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4196', null, '2016-04-26 10:17:18', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4197', null, '2016-04-26 10:23:13', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('4198', null, '2016-04-26 10:23:13', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4199', null, '2016-04-26 10:23:31', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('4200', null, '2016-04-26 10:23:31', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4201', null, '2016-04-26 10:23:58', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('4202', null, '2016-04-26 10:23:58', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.GoodsServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4203', null, '2016-04-26 10:23:59', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('4204', null, '2016-04-26 10:23:59', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4205', null, '2016-04-26 10:24:01', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4206', null, '2016-04-26 10:26:44', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('4207', null, '2016-04-26 10:26:44', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4208', null, '2016-04-26 10:26:45', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4209', null, '2016-04-26 10:27:02', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4210', null, '2016-04-26 10:27:02', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('4211', null, '2016-04-26 10:27:03', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4212', null, '2016-04-26 10:27:05', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4213', null, '2016-04-26 10:27:51', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4214', null, '2016-04-26 10:27:51', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('4215', null, '2016-04-26 10:27:53', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4216', null, '2016-04-26 10:27:55', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4217', null, '2016-04-26 10:27:56', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4218', null, '2016-04-26 10:27:58', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4219', null, '2016-04-26 10:28:04', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4220', null, '2016-04-26 10:29:20', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4221', null, '2016-04-26 11:00:42', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('4222', null, '2016-04-26 11:00:42', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4223', null, '2016-04-26 11:00:45', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4224', null, '2016-04-26 11:09:46', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4225', null, '2016-04-26 11:09:46', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('4226', null, '2016-04-26 11:10:49', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4227', null, '2016-04-26 11:10:52', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4228', null, '2016-04-26 11:10:57', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4229', null, '2016-04-26 11:33:58', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('4230', null, '2016-04-26 11:33:58', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4231', null, '2016-04-26 11:34:14', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('4232', null, '2016-04-26 11:34:14', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4233', null, '2016-04-26 11:35:58', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('4234', null, '2016-04-26 11:35:58', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4235', null, '2016-04-26 11:36:10', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('4236', null, '2016-04-26 11:36:10', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4237', null, '2016-04-26 11:36:50', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('4238', null, '2016-04-26 11:36:50', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.GoodsServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4239', null, '2016-04-26 14:08:53', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4240', null, '2016-04-26 14:19:41', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4241', null, '2016-04-26 14:19:41', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('4242', null, '2016-04-26 14:19:42', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('4243', null, '2016-04-26 14:19:42', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4244', null, '2016-04-26 14:21:53', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('4245', null, '2016-04-26 14:21:53', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4246', null, '2016-04-26 14:22:00', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4247', null, '2016-04-26 14:22:14', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('4248', null, '2016-04-26 14:22:14', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4249', null, '2016-04-26 14:23:46', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4250', null, '2016-04-26 14:23:46', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('4251', null, '2016-04-26 14:23:46', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('4252', null, '2016-04-26 14:23:50', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.BrandServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4253', null, '2016-04-26 14:23:54', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('4254', null, '2016-04-26 14:23:54', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4255', null, '2016-04-26 14:23:56', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.UserServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4256', null, '2016-04-26 14:25:31', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4257', null, '2016-04-26 14:25:39', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.RoleServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('4258', null, '2016-04-26 14:25:39', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.EmployeeServiceImpl:empQuery');
INSERT INTO `t_systemlog` VALUES ('4259', null, '2016-04-26 14:25:43', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:getAllPermission');
INSERT INTO `t_systemlog` VALUES ('4260', null, '2016-04-26 14:25:43', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.ResourceServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('4261', null, '2016-04-26 14:26:30', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:getAllPermission');
INSERT INTO `t_systemlog` VALUES ('4262', null, '2016-04-26 14:26:30', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.ResourceServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('4263', null, '2016-04-26 14:26:45', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.RoleServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('4264', null, '2016-04-26 14:26:45', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PermissionServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4265', null, '2016-04-26 14:27:40', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('4266', null, '2016-04-26 14:27:40', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4267', null, '2016-04-26 14:27:42', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('4268', null, '2016-04-26 14:27:42', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4269', null, '2016-04-26 14:28:04', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('4270', null, '2016-04-26 14:28:04', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4271', null, '2016-04-26 14:29:14', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('4272', null, '2016-04-26 14:29:14', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4273', null, '2016-04-26 14:29:17', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4274', null, '2016-04-26 14:29:20', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4275', null, '2016-04-26 14:29:22', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4276', null, '2016-04-26 14:29:29', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4277', null, '2016-04-26 14:29:39', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4278', null, '2016-04-26 14:29:59', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('4279', null, '2016-04-26 14:29:59', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4280', null, '2016-04-26 14:30:00', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4281', null, '2016-04-26 14:30:07', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('4282', null, '2016-04-26 14:30:07', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4283', null, '2016-04-26 14:30:40', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('4284', null, '2016-04-26 14:30:40', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4285', null, '2016-04-26 14:30:47', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('4286', null, '2016-04-26 14:30:47', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4287', null, '2016-04-26 14:31:43', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('4288', null, '2016-04-26 14:31:43', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4289', null, '2016-04-26 14:32:03', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('4290', null, '2016-04-26 14:32:03', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4291', null, '2016-04-26 14:42:00', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('4292', null, '2016-04-26 14:42:00', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4293', null, '2016-04-26 14:42:35', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('4294', null, '2016-04-26 14:42:35', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4295', null, '2016-04-26 14:42:45', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('4296', null, '2016-04-26 14:42:45', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.GoodsServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4297', null, '2016-04-26 14:42:47', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.DetailsImageServiceImpl:getByGoods');
INSERT INTO `t_systemlog` VALUES ('4298', null, '2016-04-26 14:48:19', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('4299', null, '2016-04-26 14:48:19', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4300', null, '2016-04-26 14:48:24', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:getContent');
INSERT INTO `t_systemlog` VALUES ('4301', null, '2016-04-26 14:48:59', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('4302', null, '2016-04-26 14:48:59', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.GoodsServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4303', null, '2016-04-26 14:49:37', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('4304', null, '2016-04-26 14:49:37', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.GoodsServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4305', null, '2016-04-26 14:49:49', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('4306', null, '2016-04-26 14:49:49', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('4307', null, '2016-04-26 14:49:49', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4308', null, '2016-04-26 14:49:55', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.BrandServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4309', null, '2016-04-26 14:50:36', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4310', null, '2016-04-26 14:50:36', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('4311', null, '2016-04-26 14:50:36', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('4312', null, '2016-04-26 14:51:02', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4313', null, '2016-04-26 14:51:02', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('4314', null, '2016-04-26 14:51:05', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('4315', null, '2016-04-26 14:51:05', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4316', null, '2016-04-26 14:51:09', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.UserServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4317', null, '2016-04-26 14:51:14', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4318', null, '2016-04-26 14:51:51', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('4319', null, '2016-04-26 14:51:51', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.GoodsServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4320', null, '2016-04-26 14:52:30', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.RoleServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('4321', null, '2016-04-26 14:52:30', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.EmployeeServiceImpl:empQuery');
INSERT INTO `t_systemlog` VALUES ('4322', null, '2016-04-26 14:53:14', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('4323', null, '2016-04-26 14:53:14', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.GoodsServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4324', null, '2016-04-26 14:53:37', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('4325', null, '2016-04-26 14:53:37', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4326', null, '2016-04-26 14:53:50', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4327', null, '2016-04-26 14:56:13', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4328', null, '2016-04-26 14:56:13', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('4329', null, '2016-04-26 14:56:15', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4330', null, '2016-04-26 14:57:34', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('4331', null, '2016-04-26 14:57:34', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4332', null, '2016-04-26 14:57:36', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4333', null, '2016-04-26 14:57:41', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('4334', null, '2016-04-26 14:57:41', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4335', null, '2016-04-26 14:57:43', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4336', null, '2016-04-26 15:00:35', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('4337', null, '2016-04-26 15:00:35', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4338', null, '2016-04-26 15:00:36', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4339', null, '2016-04-26 15:02:47', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4340', null, '2016-04-26 15:02:47', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('4341', null, '2016-04-26 15:02:48', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4342', null, '2016-04-26 15:02:51', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4343', null, '2016-04-26 15:02:52', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4344', null, '2016-04-26 15:03:30', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('4345', null, '2016-04-26 15:03:30', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4346', null, '2016-04-26 15:07:58', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('4347', null, '2016-04-26 15:07:58', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4348', null, '2016-04-26 15:09:29', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4349', null, '2016-04-26 15:09:32', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4350', null, '2016-04-26 15:09:35', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4351', null, '2016-04-26 15:09:40', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4352', null, '2016-04-26 15:09:41', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4353', null, '2016-04-26 15:09:46', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4354', null, '2016-04-26 15:12:28', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('4355', null, '2016-04-26 15:12:28', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.GoodsServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4356', null, '2016-04-26 15:12:31', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4357', null, '2016-04-26 17:27:43', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('4358', null, '2016-04-26 17:27:43', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4359', null, '2016-04-26 17:28:54', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('4360', null, '2016-04-26 17:28:54', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4361', null, '2016-04-26 17:29:01', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:updateState');
INSERT INTO `t_systemlog` VALUES ('4362', null, '2016-04-26 17:29:03', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4363', null, '2016-04-26 17:29:10', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:updateState');
INSERT INTO `t_systemlog` VALUES ('4364', null, '2016-04-26 17:29:11', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4365', null, '2016-04-26 17:29:18', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:delete');
INSERT INTO `t_systemlog` VALUES ('4366', null, '2016-04-26 17:29:20', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4367', null, '2016-04-26 17:29:36', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:updateState');
INSERT INTO `t_systemlog` VALUES ('4368', null, '2016-04-26 17:29:37', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4369', null, '2016-04-26 17:29:41', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:updateState');
INSERT INTO `t_systemlog` VALUES ('4370', null, '2016-04-26 17:29:42', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4371', null, '2016-04-26 17:29:47', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4372', null, '2016-04-26 17:29:52', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4373', null, '2016-04-26 17:29:55', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4374', null, '2016-04-26 17:29:58', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4375', null, '2016-04-26 17:30:13', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4376', null, '2016-04-26 17:30:15', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4377', null, '2016-04-26 17:30:21', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4378', null, '2016-04-26 17:30:23', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4379', null, '2016-04-26 17:30:25', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4380', null, '2016-04-26 17:30:27', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4381', null, '2016-04-26 17:30:32', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4382', null, '2016-04-26 17:31:41', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4383', null, '2016-04-26 17:31:46', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4384', null, '2016-04-26 17:31:48', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4385', null, '2016-04-26 17:31:53', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4386', null, '2016-04-26 17:34:25', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4387', null, '2016-04-26 17:34:26', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4388', null, '2016-04-26 17:34:31', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4389', null, '2016-04-28 15:07:10', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4390', null, '2016-04-28 15:07:12', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.UserServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4391', null, '2016-04-28 15:54:16', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('4392', null, '2016-04-28 15:54:16', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.GoodsServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4393', null, '2016-04-28 16:27:51', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('4394', null, '2016-04-28 16:27:51', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4395', null, '2016-04-28 16:28:12', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.ProductOrderServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4396', null, '2016-04-28 16:28:48', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.ProductOrderServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4397', null, '2016-04-28 16:29:14', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.ProductOrderServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4398', null, '2016-04-28 16:29:47', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.ProductOrderServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4399', null, '2016-04-28 16:30:11', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.ProductOrderServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4400', null, '2016-04-28 16:30:29', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.ProductOrderServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4401', null, '2016-04-28 16:30:33', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.ProductOrderServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4402', null, '2016-04-28 16:30:34', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.ProductOrderServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4403', null, '2016-04-28 16:30:34', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.ProductOrderServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4404', null, '2016-04-28 16:30:34', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.ProductOrderServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4405', null, '2016-04-28 16:30:39', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.ProductOrderServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4406', null, '2016-04-28 16:32:38', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('4407', null, '2016-04-28 16:32:38', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.GoodsServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4408', null, '2016-04-28 16:32:44', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.GoodsServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4409', null, '2016-04-28 16:32:45', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.GoodsServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4410', null, '2016-04-28 16:33:29', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.ProductOrderServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4411', null, '2016-04-28 16:34:23', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.ProductOrderServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4412', null, '2016-04-28 16:34:24', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.ProductOrderServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4413', null, '2016-04-28 16:34:24', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.ProductOrderServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4414', null, '2016-04-28 16:34:24', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.ProductOrderServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4415', null, '2016-04-28 16:34:25', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.ProductOrderServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4416', null, '2016-04-28 16:34:25', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.ProductOrderServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4417', null, '2016-04-28 16:34:32', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.ProductOrderServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4418', null, '2016-04-28 16:36:21', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.ProductOrderServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4419', null, '2016-04-28 16:38:50', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.ProductOrderServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4420', null, '2016-04-28 16:38:52', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.ProductOrderServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4421', null, '2016-04-28 16:38:52', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.ProductOrderServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4422', null, '2016-04-29 16:15:46', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.GoodsServiceImpl:queryMap');
INSERT INTO `t_systemlog` VALUES ('4423', null, '2016-04-29 16:15:46', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:enterType');
INSERT INTO `t_systemlog` VALUES ('4424', null, '2016-04-29 16:16:42', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('4425', null, '2016-04-29 16:16:42', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.GoodsServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4426', null, '2016-04-29 16:16:54', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.GoodsServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4427', null, '2016-04-29 16:17:18', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.GoodsServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4428', null, '2016-04-29 16:24:28', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.AccountServiceImpl:getByUser');
INSERT INTO `t_systemlog` VALUES ('4429', null, '2016-04-29 16:27:25', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.AccountFlowServiceImpl:queryMap');
INSERT INTO `t_systemlog` VALUES ('4430', null, '2016-04-29 16:27:49', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.AccountFlowServiceImpl:queryMap');
INSERT INTO `t_systemlog` VALUES ('4431', null, '2016-04-29 16:28:01', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.AccountFlowServiceImpl:queryMap');
INSERT INTO `t_systemlog` VALUES ('4432', null, '2016-04-29 16:30:16', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.AccountFlowServiceImpl:queryMap');
INSERT INTO `t_systemlog` VALUES ('4433', null, '2016-05-03 10:10:30', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:getBanner');
INSERT INTO `t_systemlog` VALUES ('4434', null, '2016-05-03 10:10:30', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4435', null, '2016-05-03 10:10:30', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4436', null, '2016-05-03 10:10:30', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4437', null, '2016-05-03 10:10:30', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:getTypeAndAd');
INSERT INTO `t_systemlog` VALUES ('4438', null, '2016-05-03 11:20:25', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:getBanner');
INSERT INTO `t_systemlog` VALUES ('4439', null, '2016-05-03 11:20:25', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4440', null, '2016-05-03 11:20:25', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:getTypeAndAd');
INSERT INTO `t_systemlog` VALUES ('4441', null, '2016-05-03 11:20:36', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:getBanner');
INSERT INTO `t_systemlog` VALUES ('4442', null, '2016-05-03 11:20:36', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4443', null, '2016-05-03 11:20:37', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:getTypeAndAd');
INSERT INTO `t_systemlog` VALUES ('4444', null, '2016-05-03 11:20:40', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:getBanner');
INSERT INTO `t_systemlog` VALUES ('4445', null, '2016-05-03 11:20:40', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4446', null, '2016-05-03 11:20:40', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:getTypeAndAd');
INSERT INTO `t_systemlog` VALUES ('4447', null, '2016-05-03 11:21:08', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:getBanner');
INSERT INTO `t_systemlog` VALUES ('4448', null, '2016-05-03 11:21:08', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4449', null, '2016-05-03 11:21:08', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:getTypeAndAd');
INSERT INTO `t_systemlog` VALUES ('4450', null, '2016-05-03 11:23:04', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:getBanner');
INSERT INTO `t_systemlog` VALUES ('4451', null, '2016-05-03 11:23:04', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4452', null, '2016-05-03 11:23:04', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4453', null, '2016-05-03 11:23:04', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4454', null, '2016-05-03 11:23:04', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:getTypeAndAd');
INSERT INTO `t_systemlog` VALUES ('4455', null, '2016-05-03 11:23:44', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:getBanner');
INSERT INTO `t_systemlog` VALUES ('4456', null, '2016-05-03 11:23:44', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4457', null, '2016-05-03 11:23:44', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4458', null, '2016-05-03 11:23:44', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4459', null, '2016-05-03 11:23:44', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:getTypeAndAd');
INSERT INTO `t_systemlog` VALUES ('4460', null, '2016-05-05 11:04:29', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('4461', null, '2016-05-05 11:04:29', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.GoodsServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4462', null, '2016-05-05 11:04:31', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.BrandServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4463', null, '2016-05-05 11:11:44', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.ProductOrderServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4464', null, '2016-05-05 11:12:29', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.ProductOrderServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4465', null, '2016-05-05 11:15:49', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.ProductOrderServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4466', null, '2016-05-05 11:47:46', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.ProductOrderServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4467', null, '2016-05-05 11:49:28', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.ProductOrderServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4468', null, '2016-05-05 11:54:19', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.ProductOrderServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4469', null, '2016-05-05 11:59:15', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.ProductOrderServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4470', null, '2016-05-05 11:59:57', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.ProductOrderServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4471', null, '2016-05-05 11:59:58', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.ProductOrderServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4472', null, '2016-05-05 11:59:59', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.ProductOrderServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4473', null, '2016-05-05 12:00:02', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.ProductOrderServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4474', null, '2016-05-05 12:00:55', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.ProductOrderServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4475', null, '2016-05-05 12:00:56', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.ProductOrderServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4476', null, '2016-05-05 12:00:56', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.ProductOrderServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4477', null, '2016-05-05 12:02:42', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.ProductOrderServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4478', null, '2016-05-05 12:03:49', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.ProductOrderServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4479', null, '2016-05-05 12:05:02', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.ProductOrderServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4480', null, '2016-05-05 12:07:30', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.ProductOrderServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4481', null, '2016-05-05 12:07:34', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.ProductOrderServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4482', null, '2016-05-05 12:07:38', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.ProductOrderServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4483', null, '2016-05-05 14:06:07', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.ProductOrderServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4484', null, '2016-05-05 14:08:18', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.ProductOrderServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4485', null, '2016-05-05 14:08:22', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.ProductOrderServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4486', null, '2016-05-05 14:09:24', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.ProductOrderServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4487', null, '2016-05-05 14:09:59', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.ProductOrderServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4488', null, '2016-05-05 14:10:02', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.ProductOrderServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4489', null, '2016-05-05 14:10:02', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.ProductOrderServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4490', null, '2016-05-05 14:10:03', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.ProductOrderServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4491', null, '2016-05-05 14:11:10', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.ProductOrderServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4492', null, '2016-05-05 14:11:11', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.ProductOrderServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4493', null, '2016-05-05 14:11:12', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.ProductOrderServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4494', null, '2016-05-05 14:11:13', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.ProductOrderServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4495', null, '2016-05-05 14:11:14', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.ProductOrderServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4496', null, '2016-05-05 14:11:25', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.ProductOrderServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4497', null, '2016-05-05 14:11:33', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.ProductOrderServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4498', null, '2016-05-05 14:11:34', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.ProductOrderServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4499', null, '2016-05-05 14:12:52', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.ProductOrderServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4500', null, '2016-05-05 14:12:53', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.ProductOrderServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4501', null, '2016-05-05 14:31:28', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.ProductOrderServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4502', null, '2016-05-05 14:32:31', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.ProductOrderServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4503', null, '2016-05-05 14:37:41', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.TypeServiceImpl:getByParent');
INSERT INTO `t_systemlog` VALUES ('4504', null, '2016-05-05 14:37:41', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4505', null, '2016-05-05 14:37:43', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.ProductOrderServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4506', null, '2016-05-05 14:57:22', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.ProductOrderServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4507', null, '2016-05-05 14:58:40', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.ProductOrderServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4508', null, '2016-05-05 14:59:12', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.ProductOrderServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4509', null, '2016-05-05 14:59:20', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.ProductOrderServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4510', null, '2016-05-05 14:59:46', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.ProductOrderServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4511', null, '2016-05-05 15:00:04', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.ProductOrderServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4512', null, '2016-05-05 15:00:18', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.ProductOrderServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4513', null, '2016-05-05 15:01:41', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.ProductOrderServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4514', null, '2016-05-05 15:03:49', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.ProductOrderServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4515', null, '2016-05-05 15:03:55', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.ProductOrderServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4516', null, '2016-05-05 15:35:39', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.ProductOrderServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4517', null, '2016-05-05 15:37:29', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.ProductOrderServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4518', null, '2016-05-05 15:39:52', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.ProductOrderServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4519', null, '2016-05-05 15:46:05', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.ProductOrderServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4520', null, '2016-05-05 16:06:02', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.UserServiceImpl:getUserInfo');
INSERT INTO `t_systemlog` VALUES ('4525', null, '2016-05-05 16:29:00', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.GoodsServiceImpl:queryMap');
INSERT INTO `t_systemlog` VALUES ('4526', null, '2016-05-05 16:29:00', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:enterStore');
INSERT INTO `t_systemlog` VALUES ('4527', null, '2016-05-05 16:29:00', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:enterPromotion');
INSERT INTO `t_systemlog` VALUES ('4528', null, '2016-05-05 17:06:38', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('4529', null, '2016-05-05 17:06:38', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.GoodsServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4530', null, '2016-05-05 17:06:40', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.GoodsServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4531', null, '2016-05-05 17:06:41', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.GoodsServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4532', null, '2016-05-05 17:06:41', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.GoodsServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4533', null, '2016-05-05 17:06:41', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.GoodsServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4534', null, '2016-05-05 17:06:41', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.GoodsServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4535', null, '2016-05-05 17:06:42', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.GoodsServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4536', null, '2016-05-05 17:11:34', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('4537', null, '2016-05-05 17:11:45', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('4538', null, '2016-05-05 17:11:45', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.GoodsServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4539', null, '2016-05-05 17:12:09', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.GoodsServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4540', null, '2016-05-05 17:12:09', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:getAll');
INSERT INTO `t_systemlog` VALUES ('4553', null, '2016-05-05 17:24:01', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.GoodsServiceImpl:queryMap');
INSERT INTO `t_systemlog` VALUES ('4554', null, '2016-05-05 17:24:01', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:enterStore');
INSERT INTO `t_systemlog` VALUES ('4555', null, '2016-05-05 17:24:01', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:enterPromotion');
INSERT INTO `t_systemlog` VALUES ('4556', null, '2016-05-05 17:20:44', '45.32.42.174', 'com.huashidai.weihuotong.service.impl.GoodsServiceImpl:queryMap');
INSERT INTO `t_systemlog` VALUES ('4557', null, '2016-05-05 17:20:44', '45.32.42.174', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:enterStore');
INSERT INTO `t_systemlog` VALUES ('4558', null, '2016-05-05 17:20:44', '45.32.42.174', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:enterPromotion');
INSERT INTO `t_systemlog` VALUES ('4559', null, '2016-05-05 17:21:13', '171.214.136.98', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:getBanner');
INSERT INTO `t_systemlog` VALUES ('4560', null, '2016-05-05 17:21:13', '171.214.136.98', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4561', null, '2016-05-05 17:21:13', '171.214.136.98', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4562', null, '2016-05-05 17:21:14', '171.214.136.98', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4563', null, '2016-05-05 17:21:14', '171.214.136.98', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:getTypeAndAd');
INSERT INTO `t_systemlog` VALUES ('4564', null, '2016-05-05 17:21:16', '171.214.136.98', 'com.huashidai.weihuotong.service.impl.GoodsServiceImpl:queryMap');
INSERT INTO `t_systemlog` VALUES ('4565', null, '2016-05-05 17:21:16', '171.214.136.98', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:enterStore');
INSERT INTO `t_systemlog` VALUES ('4566', null, '2016-05-05 17:21:16', '171.214.136.98', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:enterPromotion');
INSERT INTO `t_systemlog` VALUES ('4567', null, '2016-05-05 17:21:50', '171.214.136.98', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:getBanner');
INSERT INTO `t_systemlog` VALUES ('4568', null, '2016-05-05 17:21:50', '171.214.136.98', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4569', null, '2016-05-05 17:21:50', '171.214.136.98', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4570', null, '2016-05-05 17:21:50', '171.214.136.98', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4571', null, '2016-05-05 17:21:50', '171.214.136.98', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:getTypeAndAd');
INSERT INTO `t_systemlog` VALUES ('4572', null, '2016-05-05 17:21:52', '171.214.136.98', 'com.huashidai.weihuotong.service.impl.GoodsServiceImpl:queryMap');
INSERT INTO `t_systemlog` VALUES ('4573', null, '2016-05-05 17:21:52', '171.214.136.98', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:enterStore');
INSERT INTO `t_systemlog` VALUES ('4574', null, '2016-05-05 17:21:52', '171.214.136.98', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:enterPromotion');
INSERT INTO `t_systemlog` VALUES ('4575', null, '2016-05-05 17:22:49', '171.214.136.98', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:getBanner');
INSERT INTO `t_systemlog` VALUES ('4576', null, '2016-05-05 17:22:49', '171.214.136.98', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4577', null, '2016-05-05 17:22:49', '171.214.136.98', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4578', null, '2016-05-05 17:22:49', '171.214.136.98', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4579', null, '2016-05-05 17:22:49', '171.214.136.98', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:getTypeAndAd');
INSERT INTO `t_systemlog` VALUES ('4580', null, '2016-05-05 17:23:03', '171.214.136.98', 'com.huashidai.weihuotong.service.impl.GoodsServiceImpl:queryMap');
INSERT INTO `t_systemlog` VALUES ('4581', null, '2016-05-05 17:23:03', '171.214.136.98', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:enterStore');
INSERT INTO `t_systemlog` VALUES ('4582', null, '2016-05-05 17:23:03', '171.214.136.98', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:enterPromotion');
INSERT INTO `t_systemlog` VALUES ('4583', null, '2016-05-05 17:23:52', '171.214.136.98', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:getBanner');
INSERT INTO `t_systemlog` VALUES ('4584', null, '2016-05-05 17:23:52', '171.214.136.98', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4585', null, '2016-05-05 17:23:53', '171.214.136.98', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4586', null, '2016-05-05 17:23:53', '171.214.136.98', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4587', null, '2016-05-05 17:23:53', '171.214.136.98', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:getTypeAndAd');
INSERT INTO `t_systemlog` VALUES ('4588', null, '2016-05-05 17:23:55', '171.214.136.98', 'com.huashidai.weihuotong.service.impl.GoodsServiceImpl:queryMap');
INSERT INTO `t_systemlog` VALUES ('4589', null, '2016-05-05 17:23:55', '171.214.136.98', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:enterStore');
INSERT INTO `t_systemlog` VALUES ('4590', null, '2016-05-05 17:23:55', '171.214.136.98', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:enterPromotion');
INSERT INTO `t_systemlog` VALUES ('4591', null, '2016-05-05 17:25:21', '171.214.136.98', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:getBanner');
INSERT INTO `t_systemlog` VALUES ('4592', null, '2016-05-05 17:25:21', '171.214.136.98', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4593', null, '2016-05-05 17:25:22', '171.214.136.98', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4594', null, '2016-05-05 17:25:22', '171.214.136.98', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4595', null, '2016-05-05 17:25:22', '171.214.136.98', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:getTypeAndAd');
INSERT INTO `t_systemlog` VALUES ('4596', null, '2016-05-05 17:25:24', '171.214.136.98', 'com.huashidai.weihuotong.service.impl.GoodsServiceImpl:queryMap');
INSERT INTO `t_systemlog` VALUES ('4597', null, '2016-05-05 17:25:24', '171.214.136.98', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:enterStore');
INSERT INTO `t_systemlog` VALUES ('4598', null, '2016-05-05 17:25:24', '171.214.136.98', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:enterPromotion');
INSERT INTO `t_systemlog` VALUES ('4599', null, '2016-05-05 17:26:05', '171.214.136.98', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:getBanner');
INSERT INTO `t_systemlog` VALUES ('4600', null, '2016-05-05 17:26:05', '171.214.136.98', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4601', null, '2016-05-05 17:26:05', '171.214.136.98', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4602', null, '2016-05-05 17:26:05', '171.214.136.98', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4603', null, '2016-05-05 17:26:05', '171.214.136.98', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:getTypeAndAd');
INSERT INTO `t_systemlog` VALUES ('4604', null, '2016-05-05 17:30:05', '125.70.56.40', 'com.huashidai.weihuotong.service.impl.UserServiceImpl:findcheckLogin');
INSERT INTO `t_systemlog` VALUES ('4605', null, '2016-05-05 17:30:22', '125.70.56.40', 'com.huashidai.weihuotong.service.impl.UserServiceImpl:findcheckLogin');
INSERT INTO `t_systemlog` VALUES ('4606', null, '2016-05-05 17:30:41', '125.70.56.40', 'com.huashidai.weihuotong.service.impl.UserServiceImpl:register');
INSERT INTO `t_systemlog` VALUES ('4607', null, '2016-05-05 17:30:41', '125.70.56.40', 'com.huashidai.weihuotong.service.impl.UserServiceImpl:findcheckLogin');
INSERT INTO `t_systemlog` VALUES ('4608', null, '2016-05-05 17:30:41', '125.70.56.40', 'com.huashidai.weihuotong.service.impl.UserServiceImpl:getUserInfo');
INSERT INTO `t_systemlog` VALUES ('4609', null, '2016-05-05 17:30:50', '171.214.136.98', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:getBanner');
INSERT INTO `t_systemlog` VALUES ('4610', null, '2016-05-05 17:30:50', '171.214.136.98', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4611', null, '2016-05-05 17:30:50', '171.214.136.98', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4612', null, '2016-05-05 17:30:50', '171.214.136.98', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4613', null, '2016-05-05 17:30:50', '171.214.136.98', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:getTypeAndAd');
INSERT INTO `t_systemlog` VALUES ('4614', null, '2016-05-05 17:30:52', '125.70.56.40', 'com.huashidai.weihuotong.service.impl.UserServiceImpl:updateBackground');
INSERT INTO `t_systemlog` VALUES ('4615', null, '2016-05-05 17:30:52', '125.70.56.40', 'com.huashidai.weihuotong.service.impl.UserServiceImpl:getUserInfo');
INSERT INTO `t_systemlog` VALUES ('4616', null, '2016-05-05 17:30:54', '171.214.136.98', 'com.huashidai.weihuotong.service.impl.GoodsServiceImpl:queryMap');
INSERT INTO `t_systemlog` VALUES ('4617', null, '2016-05-05 17:30:54', '171.214.136.98', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:enterStore');
INSERT INTO `t_systemlog` VALUES ('4618', null, '2016-05-05 17:30:54', '171.214.136.98', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:enterPromotion');
INSERT INTO `t_systemlog` VALUES ('4619', null, '2016-05-05 17:31:00', '125.70.56.40', 'com.huashidai.weihuotong.service.impl.UserServiceImpl:updateBackground');
INSERT INTO `t_systemlog` VALUES ('4620', null, '2016-05-05 17:31:00', '125.70.56.40', 'com.huashidai.weihuotong.service.impl.UserServiceImpl:getUserInfo');
INSERT INTO `t_systemlog` VALUES ('4621', null, '2016-05-05 17:33:46', '125.70.56.40', 'com.huashidai.weihuotong.service.impl.UserServiceImpl:findcheckLogin');
INSERT INTO `t_systemlog` VALUES ('4622', null, '2016-05-05 17:33:53', '125.70.56.40', 'com.huashidai.weihuotong.service.impl.UserServiceImpl:findcheckLogin');
INSERT INTO `t_systemlog` VALUES ('4623', null, '2016-05-05 17:33:53', '125.70.56.40', 'com.huashidai.weihuotong.service.impl.UserServiceImpl:getUserInfo');
INSERT INTO `t_systemlog` VALUES ('4624', null, '2016-05-05 17:34:00', '171.214.136.98', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:getBanner');
INSERT INTO `t_systemlog` VALUES ('4625', null, '2016-05-05 17:34:00', '171.214.136.98', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4626', null, '2016-05-05 17:34:00', '171.214.136.98', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4627', null, '2016-05-05 17:34:00', '171.214.136.98', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4628', null, '2016-05-05 17:34:00', '171.214.136.98', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:getTypeAndAd');
INSERT INTO `t_systemlog` VALUES ('4629', null, '2016-05-05 17:34:05', '125.70.56.40', 'com.huashidai.weihuotong.service.impl.UserServiceImpl:updateBackground');
INSERT INTO `t_systemlog` VALUES ('4630', null, '2016-05-05 17:34:05', '125.70.56.40', 'com.huashidai.weihuotong.service.impl.UserServiceImpl:getUserInfo');
INSERT INTO `t_systemlog` VALUES ('4631', null, '2016-05-05 17:34:14', '171.214.136.98', 'com.huashidai.weihuotong.service.impl.GoodsServiceImpl:queryMap');
INSERT INTO `t_systemlog` VALUES ('4632', null, '2016-05-05 17:34:14', '171.214.136.98', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:enterStore');
INSERT INTO `t_systemlog` VALUES ('4633', null, '2016-05-05 17:34:14', '171.214.136.98', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:enterPromotion');
INSERT INTO `t_systemlog` VALUES ('4634', null, '2016-05-05 17:34:36', '125.70.56.40', 'com.huashidai.weihuotong.service.impl.UserServiceImpl:findcheckLogin');
INSERT INTO `t_systemlog` VALUES ('4635', null, '2016-05-05 17:34:37', '125.70.56.40', 'com.huashidai.weihuotong.service.impl.UserServiceImpl:getUserInfo');
INSERT INTO `t_systemlog` VALUES ('4636', null, '2016-05-05 17:34:52', '125.70.56.40', 'com.huashidai.weihuotong.service.impl.UserImageServiceImpl:updateByUser');
INSERT INTO `t_systemlog` VALUES ('4637', null, '2016-05-05 17:34:52', '125.70.56.40', 'com.huashidai.weihuotong.service.impl.UserServiceImpl:getUserInfo');
INSERT INTO `t_systemlog` VALUES ('4638', null, '2016-05-05 17:35:09', '125.70.56.40', 'com.huashidai.weihuotong.service.impl.UserServiceImpl:findcheckLogin');
INSERT INTO `t_systemlog` VALUES ('4639', null, '2016-05-05 17:35:10', '125.70.56.40', 'com.huashidai.weihuotong.service.impl.UserServiceImpl:getUserInfo');
INSERT INTO `t_systemlog` VALUES ('4640', null, '2016-05-05 17:35:17', '171.214.136.98', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:getBanner');
INSERT INTO `t_systemlog` VALUES ('4641', null, '2016-05-05 17:35:17', '171.214.136.98', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4642', null, '2016-05-05 17:35:17', '171.214.136.98', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4643', null, '2016-05-05 17:35:17', '171.214.136.98', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4644', null, '2016-05-05 17:35:17', '171.214.136.98', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:getTypeAndAd');
INSERT INTO `t_systemlog` VALUES ('4645', null, '2016-05-05 17:35:25', '171.214.136.98', 'com.huashidai.weihuotong.service.impl.GoodsServiceImpl:queryMap');
INSERT INTO `t_systemlog` VALUES ('4646', null, '2016-05-05 17:35:25', '171.214.136.98', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:enterStore');
INSERT INTO `t_systemlog` VALUES ('4647', null, '2016-05-05 17:35:25', '171.214.136.98', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:enterPromotion');
INSERT INTO `t_systemlog` VALUES ('4648', null, '2016-05-05 17:35:45', '125.70.56.40', 'com.huashidai.weihuotong.service.impl.UserServiceImpl:findcheckLogin');
INSERT INTO `t_systemlog` VALUES ('4649', null, '2016-05-05 17:35:45', '125.70.56.40', 'com.huashidai.weihuotong.service.impl.UserServiceImpl:getUserInfo');
INSERT INTO `t_systemlog` VALUES ('4650', null, '2016-05-05 17:36:38', '125.70.56.40', 'com.huashidai.weihuotong.service.impl.UserServiceImpl:findcheckLogin');
INSERT INTO `t_systemlog` VALUES ('4651', null, '2016-05-05 17:36:38', '125.70.56.40', 'com.huashidai.weihuotong.service.impl.UserServiceImpl:getUserInfo');
INSERT INTO `t_systemlog` VALUES ('4652', null, '2016-05-05 17:36:57', '171.214.136.98', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:getBanner');
INSERT INTO `t_systemlog` VALUES ('4653', null, '2016-05-05 17:36:57', '171.214.136.98', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4654', null, '2016-05-05 17:36:57', '171.214.136.98', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4655', null, '2016-05-05 17:36:57', '171.214.136.98', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4656', null, '2016-05-05 17:36:57', '171.214.136.98', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:getTypeAndAd');
INSERT INTO `t_systemlog` VALUES ('4657', null, '2016-05-05 17:37:01', '171.214.136.98', 'com.huashidai.weihuotong.service.impl.GoodsServiceImpl:queryMap');
INSERT INTO `t_systemlog` VALUES ('4658', null, '2016-05-05 17:37:01', '171.214.136.98', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:enterStore');
INSERT INTO `t_systemlog` VALUES ('4659', null, '2016-05-05 17:37:01', '171.214.136.98', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:enterPromotion');
INSERT INTO `t_systemlog` VALUES ('4660', null, '2016-05-05 17:37:05', '125.70.56.40', 'com.huashidai.weihuotong.service.impl.UserImageServiceImpl:updateByUser');
INSERT INTO `t_systemlog` VALUES ('4661', null, '2016-05-05 17:37:05', '125.70.56.40', 'com.huashidai.weihuotong.service.impl.UserServiceImpl:getUserInfo');
INSERT INTO `t_systemlog` VALUES ('4662', null, '2016-05-05 17:38:17', '171.214.136.98', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:getBanner');
INSERT INTO `t_systemlog` VALUES ('4663', null, '2016-05-05 17:38:17', '171.214.136.98', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4664', null, '2016-05-05 17:38:17', '171.214.136.98', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4665', null, '2016-05-05 17:38:17', '171.214.136.98', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4666', null, '2016-05-05 17:38:17', '171.214.136.98', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:getTypeAndAd');
INSERT INTO `t_systemlog` VALUES ('4667', null, '2016-05-05 17:38:21', '171.214.136.98', 'com.huashidai.weihuotong.service.impl.GoodsServiceImpl:queryMap');
INSERT INTO `t_systemlog` VALUES ('4668', null, '2016-05-05 17:38:21', '171.214.136.98', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:enterStore');
INSERT INTO `t_systemlog` VALUES ('4669', null, '2016-05-05 17:38:21', '171.214.136.98', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:enterPromotion');
INSERT INTO `t_systemlog` VALUES ('4670', null, '2016-05-05 17:38:26', '125.70.56.40', 'com.huashidai.weihuotong.service.impl.UserServiceImpl:findcheckLogin');
INSERT INTO `t_systemlog` VALUES ('4671', null, '2016-05-05 17:38:26', '125.70.56.40', 'com.huashidai.weihuotong.service.impl.UserServiceImpl:getUserInfo');
INSERT INTO `t_systemlog` VALUES ('4672', null, '2016-05-05 17:40:15', '171.214.136.98', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:getBanner');
INSERT INTO `t_systemlog` VALUES ('4673', null, '2016-05-05 17:40:15', '171.214.136.98', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4674', null, '2016-05-05 17:40:15', '171.214.136.98', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4675', null, '2016-05-05 17:40:15', '171.214.136.98', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4676', null, '2016-05-05 17:40:15', '171.214.136.98', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:getTypeAndAd');
INSERT INTO `t_systemlog` VALUES ('4677', null, '2016-05-05 17:40:17', '171.214.136.98', 'com.huashidai.weihuotong.service.impl.GoodsServiceImpl:queryMap');
INSERT INTO `t_systemlog` VALUES ('4678', null, '2016-05-05 17:40:17', '171.214.136.98', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:enterStore');
INSERT INTO `t_systemlog` VALUES ('4679', null, '2016-05-05 17:40:17', '171.214.136.98', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:enterPromotion');
INSERT INTO `t_systemlog` VALUES ('4680', null, '2016-05-05 17:41:27', '171.214.136.98', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:getBanner');
INSERT INTO `t_systemlog` VALUES ('4681', null, '2016-05-05 17:41:27', '171.214.136.98', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4682', null, '2016-05-05 17:41:27', '171.214.136.98', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4683', null, '2016-05-05 17:41:27', '171.214.136.98', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4684', null, '2016-05-05 17:41:27', '171.214.136.98', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:getTypeAndAd');
INSERT INTO `t_systemlog` VALUES ('4685', null, '2016-05-05 17:41:29', '171.214.136.98', 'com.huashidai.weihuotong.service.impl.GoodsServiceImpl:queryMap');
INSERT INTO `t_systemlog` VALUES ('4686', null, '2016-05-05 17:41:29', '171.214.136.98', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:enterStore');
INSERT INTO `t_systemlog` VALUES ('4687', null, '2016-05-05 17:41:29', '171.214.136.98', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:enterPromotion');
INSERT INTO `t_systemlog` VALUES ('4688', null, '2016-05-05 17:42:09', '171.214.136.98', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:getBanner');
INSERT INTO `t_systemlog` VALUES ('4689', null, '2016-05-05 17:42:09', '171.214.136.98', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4690', null, '2016-05-05 17:42:09', '171.214.136.98', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4691', null, '2016-05-05 17:42:09', '171.214.136.98', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4692', null, '2016-05-05 17:42:10', '171.214.136.98', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:getTypeAndAd');
INSERT INTO `t_systemlog` VALUES ('4693', null, '2016-05-05 17:43:09', '171.214.136.98', 'com.huashidai.weihuotong.service.impl.GoodsServiceImpl:queryMap');
INSERT INTO `t_systemlog` VALUES ('4694', null, '2016-05-05 17:43:09', '171.214.136.98', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:enterStore');
INSERT INTO `t_systemlog` VALUES ('4695', null, '2016-05-05 17:43:09', '171.214.136.98', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:enterPromotion');
INSERT INTO `t_systemlog` VALUES ('4696', null, '2016-05-05 17:45:40', '171.214.136.98', 'com.huashidai.weihuotong.service.impl.GoodsServiceImpl:queryMap');
INSERT INTO `t_systemlog` VALUES ('4697', null, '2016-05-05 17:45:40', '171.214.136.98', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:enterStore');
INSERT INTO `t_systemlog` VALUES ('4698', null, '2016-05-05 17:45:40', '171.214.136.98', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:enterPromotion');
INSERT INTO `t_systemlog` VALUES ('4699', null, '2016-05-05 19:12:44', '183.232.175.2', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:getBanner');
INSERT INTO `t_systemlog` VALUES ('4700', null, '2016-05-05 19:12:45', '183.232.175.2', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4701', null, '2016-05-05 19:12:45', '183.232.175.2', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4702', null, '2016-05-05 19:12:45', '183.232.175.2', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4703', null, '2016-05-05 19:12:45', '183.232.175.2', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:getTypeAndAd');
INSERT INTO `t_systemlog` VALUES ('4704', null, '2016-05-05 19:12:46', '183.232.175.2', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:getBanner');
INSERT INTO `t_systemlog` VALUES ('4705', null, '2016-05-05 19:12:46', '183.232.175.2', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4706', null, '2016-05-05 19:12:46', '183.232.175.2', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4707', null, '2016-05-05 19:12:46', '183.232.175.2', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4708', null, '2016-05-05 19:12:46', '183.232.175.2', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:getTypeAndAd');
INSERT INTO `t_systemlog` VALUES ('4709', null, '2016-05-05 19:12:54', '183.232.175.2', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:getBanner');
INSERT INTO `t_systemlog` VALUES ('4710', null, '2016-05-05 19:12:54', '183.232.175.2', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4711', null, '2016-05-05 19:12:54', '183.232.175.2', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4712', null, '2016-05-05 19:12:54', '183.232.175.2', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4713', null, '2016-05-05 19:12:54', '183.232.175.2', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:getTypeAndAd');
INSERT INTO `t_systemlog` VALUES ('4714', null, '2016-05-05 19:13:00', '183.232.175.2', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:getBanner');
INSERT INTO `t_systemlog` VALUES ('4715', null, '2016-05-05 19:13:00', '183.232.175.2', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4716', null, '2016-05-05 19:13:00', '183.232.175.2', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4717', null, '2016-05-05 19:13:00', '183.232.175.2', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4718', null, '2016-05-05 19:13:00', '183.232.175.2', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:getTypeAndAd');
INSERT INTO `t_systemlog` VALUES ('4719', null, '2016-05-05 19:13:05', '183.232.175.2', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:getBanner');
INSERT INTO `t_systemlog` VALUES ('4720', null, '2016-05-05 19:13:05', '183.232.175.2', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4721', null, '2016-05-05 19:13:05', '183.232.175.2', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4722', null, '2016-05-05 19:13:05', '183.232.175.2', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4723', null, '2016-05-05 19:13:06', '183.232.175.2', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:getTypeAndAd');
INSERT INTO `t_systemlog` VALUES ('4724', null, '2016-05-05 21:20:01', '183.3.234.62', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:getBanner');
INSERT INTO `t_systemlog` VALUES ('4725', null, '2016-05-05 21:20:01', '183.3.234.62', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4726', null, '2016-05-05 21:20:01', '183.3.234.62', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4727', null, '2016-05-05 21:20:01', '183.3.234.62', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4728', null, '2016-05-05 21:20:01', '183.3.234.62', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:getTypeAndAd');
INSERT INTO `t_systemlog` VALUES ('4729', null, '2016-05-05 21:20:26', '183.3.234.62', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:getBanner');
INSERT INTO `t_systemlog` VALUES ('4730', null, '2016-05-05 21:20:26', '183.3.234.62', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4731', null, '2016-05-05 21:20:26', '183.3.234.62', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4732', null, '2016-05-05 21:20:26', '183.3.234.62', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4733', null, '2016-05-05 21:20:26', '183.3.234.62', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:getTypeAndAd');
INSERT INTO `t_systemlog` VALUES ('4734', null, '2016-05-05 23:38:11', '117.139.128.171', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:getBanner');
INSERT INTO `t_systemlog` VALUES ('4735', null, '2016-05-05 23:38:11', '117.139.128.171', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4736', null, '2016-05-05 23:38:12', '117.139.128.171', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4737', null, '2016-05-05 23:38:12', '117.139.128.171', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4738', null, '2016-05-05 23:38:12', '117.139.128.171', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:getTypeAndAd');
INSERT INTO `t_systemlog` VALUES ('4739', null, '2016-05-05 23:38:25', '117.139.128.171', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:getBanner');
INSERT INTO `t_systemlog` VALUES ('4740', null, '2016-05-05 23:38:25', '117.139.128.171', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4741', null, '2016-05-05 23:38:25', '117.139.128.171', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:getByGoodsType');
INSERT INTO `t_systemlog` VALUES ('4742', null, '2016-05-05 23:38:30', '117.139.128.171', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:getBanner');
INSERT INTO `t_systemlog` VALUES ('4743', null, '2016-05-05 23:38:30', '117.139.128.171', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4744', null, '2016-05-05 23:38:30', '117.139.128.171', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:getByGoodsType');
INSERT INTO `t_systemlog` VALUES ('4745', null, '2016-05-05 23:38:38', '117.139.128.171', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:getBanner');
INSERT INTO `t_systemlog` VALUES ('4746', null, '2016-05-05 23:38:39', '117.139.128.171', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4747', null, '2016-05-05 23:38:39', '117.139.128.171', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:getByGoodsType');
INSERT INTO `t_systemlog` VALUES ('4748', null, '2016-05-05 23:38:43', '117.139.128.171', 'com.huashidai.weihuotong.service.impl.GoodsServiceImpl:queryMap');
INSERT INTO `t_systemlog` VALUES ('4749', null, '2016-05-05 23:38:43', '117.139.128.171', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:enterStore');
INSERT INTO `t_systemlog` VALUES ('4750', null, '2016-05-05 23:38:43', '117.139.128.171', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:enterPromotion');
INSERT INTO `t_systemlog` VALUES ('4751', null, '2016-05-05 23:39:23', '117.139.128.171', 'com.huashidai.weihuotong.service.impl.GoodsServiceImpl:queryMap');
INSERT INTO `t_systemlog` VALUES ('4752', null, '2016-05-05 23:39:23', '117.139.128.171', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:enterStore');
INSERT INTO `t_systemlog` VALUES ('4753', null, '2016-05-05 23:39:23', '117.139.128.171', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:enterPromotion');
INSERT INTO `t_systemlog` VALUES ('4754', null, '2016-05-05 23:39:36', '117.139.128.171', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:getBanner');
INSERT INTO `t_systemlog` VALUES ('4755', null, '2016-05-05 23:39:36', '117.139.128.171', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4756', null, '2016-05-05 23:39:36', '117.139.128.171', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4757', null, '2016-05-05 23:39:36', '117.139.128.171', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4758', null, '2016-05-05 23:39:36', '117.139.128.171', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:getTypeAndAd');
INSERT INTO `t_systemlog` VALUES ('4759', null, '2016-05-05 23:39:40', '117.139.128.171', 'com.huashidai.weihuotong.service.impl.GoodsServiceImpl:queryMap');
INSERT INTO `t_systemlog` VALUES ('4760', null, '2016-05-05 23:39:40', '117.139.128.171', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:enterStore');
INSERT INTO `t_systemlog` VALUES ('4761', null, '2016-05-05 23:39:40', '117.139.128.171', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:enterPromotion');
INSERT INTO `t_systemlog` VALUES ('4762', null, '2016-05-05 23:39:51', '117.139.128.171', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:getBanner');
INSERT INTO `t_systemlog` VALUES ('4763', null, '2016-05-05 23:39:51', '117.139.128.171', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4764', null, '2016-05-05 23:39:51', '117.139.128.171', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4765', null, '2016-05-05 23:39:51', '117.139.128.171', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4766', null, '2016-05-05 23:39:51', '117.139.128.171', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:getTypeAndAd');
INSERT INTO `t_systemlog` VALUES ('4767', null, '2016-05-05 23:39:54', '117.139.128.171', 'com.huashidai.weihuotong.service.impl.GoodsServiceImpl:queryMap');
INSERT INTO `t_systemlog` VALUES ('4768', null, '2016-05-05 23:39:54', '117.139.128.171', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:enterStore');
INSERT INTO `t_systemlog` VALUES ('4769', null, '2016-05-05 23:39:54', '117.139.128.171', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:enterPromotion');
INSERT INTO `t_systemlog` VALUES ('4770', null, '2016-05-05 23:39:59', '117.139.128.171', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:getBanner');
INSERT INTO `t_systemlog` VALUES ('4771', null, '2016-05-05 23:39:59', '117.139.128.171', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4772', null, '2016-05-05 23:39:59', '117.139.128.171', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4773', null, '2016-05-05 23:39:59', '117.139.128.171', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4774', null, '2016-05-05 23:39:59', '117.139.128.171', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:getTypeAndAd');
INSERT INTO `t_systemlog` VALUES ('4775', null, '2016-05-05 23:40:13', '117.139.128.171', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:getBanner');
INSERT INTO `t_systemlog` VALUES ('4776', null, '2016-05-05 23:40:13', '117.139.128.171', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4777', null, '2016-05-05 23:40:13', '117.139.128.171', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4778', null, '2016-05-05 23:40:14', '117.139.128.171', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4779', null, '2016-05-05 23:40:14', '117.139.128.171', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:getTypeAndAd');
INSERT INTO `t_systemlog` VALUES ('4780', null, '2016-05-05 23:40:30', '117.139.128.171', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:getBanner');
INSERT INTO `t_systemlog` VALUES ('4781', null, '2016-05-05 23:40:30', '117.139.128.171', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4782', null, '2016-05-05 23:40:30', '117.139.128.171', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4783', null, '2016-05-05 23:40:30', '117.139.128.171', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4784', null, '2016-05-05 23:40:31', '117.139.128.171', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:getTypeAndAd');
INSERT INTO `t_systemlog` VALUES ('4785', null, '2016-05-06 10:17:20', '171.214.138.24', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:getBanner');
INSERT INTO `t_systemlog` VALUES ('4786', null, '2016-05-06 10:17:20', '171.214.138.24', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4787', null, '2016-05-06 10:17:20', '171.214.138.24', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4788', null, '2016-05-06 10:17:20', '171.214.138.24', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4789', null, '2016-05-06 10:17:20', '171.214.138.24', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:getTypeAndAd');
INSERT INTO `t_systemlog` VALUES ('4790', null, '2016-05-06 10:17:24', '183.232.175.3', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:getBanner');
INSERT INTO `t_systemlog` VALUES ('4791', null, '2016-05-06 10:17:24', '183.232.175.3', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4792', null, '2016-05-06 10:17:24', '183.232.175.3', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4793', null, '2016-05-06 10:17:24', '183.232.175.3', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4794', null, '2016-05-06 10:17:25', '183.232.175.3', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:getTypeAndAd');
INSERT INTO `t_systemlog` VALUES ('4795', null, '2016-05-06 10:17:25', '171.214.138.24', 'com.huashidai.weihuotong.service.impl.GoodsServiceImpl:queryMap');
INSERT INTO `t_systemlog` VALUES ('4796', null, '2016-05-06 10:17:25', '171.214.138.24', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:enterStore');
INSERT INTO `t_systemlog` VALUES ('4797', null, '2016-05-06 10:17:25', '171.214.138.24', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:enterPromotion');
INSERT INTO `t_systemlog` VALUES ('4798', null, '2016-05-06 10:17:30', '183.232.175.3', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:getBanner');
INSERT INTO `t_systemlog` VALUES ('4799', null, '2016-05-06 10:17:30', '183.232.175.3', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4800', null, '2016-05-06 10:17:30', '183.232.175.3', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4801', null, '2016-05-06 10:17:30', '183.232.175.3', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4802', null, '2016-05-06 10:17:30', '183.232.175.3', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:getTypeAndAd');
INSERT INTO `t_systemlog` VALUES ('4803', null, '2016-05-06 10:17:32', '183.232.175.3', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:getBanner');
INSERT INTO `t_systemlog` VALUES ('4804', null, '2016-05-06 10:17:32', '183.232.175.3', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4805', null, '2016-05-06 10:17:33', '183.232.175.3', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4806', null, '2016-05-06 10:17:33', '183.232.175.3', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4807', null, '2016-05-06 10:17:33', '183.232.175.3', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:getTypeAndAd');
INSERT INTO `t_systemlog` VALUES ('4808', null, '2016-05-06 10:21:06', '171.214.138.24', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:getBanner');
INSERT INTO `t_systemlog` VALUES ('4809', null, '2016-05-06 10:21:06', '171.214.138.24', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4810', null, '2016-05-06 10:21:06', '171.214.138.24', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4811', null, '2016-05-06 10:21:06', '171.214.138.24', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4812', null, '2016-05-06 10:21:06', '171.214.138.24', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:getTypeAndAd');
INSERT INTO `t_systemlog` VALUES ('4813', null, '2016-05-06 10:21:11', '171.214.138.24', 'com.huashidai.weihuotong.service.impl.GoodsServiceImpl:queryMap');
INSERT INTO `t_systemlog` VALUES ('4814', null, '2016-05-06 10:21:11', '171.214.138.24', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:enterStore');
INSERT INTO `t_systemlog` VALUES ('4815', null, '2016-05-06 10:21:11', '171.214.138.24', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:enterPromotion');
INSERT INTO `t_systemlog` VALUES ('4816', null, '2016-05-06 10:21:16', '171.214.138.24', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:getBanner');
INSERT INTO `t_systemlog` VALUES ('4817', null, '2016-05-06 10:21:16', '171.214.138.24', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4818', null, '2016-05-06 10:21:17', '171.214.138.24', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4819', null, '2016-05-06 10:21:17', '171.214.138.24', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4820', null, '2016-05-06 10:21:17', '171.214.138.24', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:getTypeAndAd');
INSERT INTO `t_systemlog` VALUES ('4821', null, '2016-05-06 10:22:47', '171.214.138.24', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:getBanner');
INSERT INTO `t_systemlog` VALUES ('4822', null, '2016-05-06 10:22:47', '171.214.138.24', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4823', null, '2016-05-06 10:22:47', '171.214.138.24', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4824', null, '2016-05-06 10:22:48', '171.214.138.24', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4825', null, '2016-05-06 10:22:48', '171.214.138.24', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:getTypeAndAd');
INSERT INTO `t_systemlog` VALUES ('4826', null, '2016-05-06 10:22:51', '171.214.138.24', 'com.huashidai.weihuotong.service.impl.GoodsServiceImpl:queryMap');
INSERT INTO `t_systemlog` VALUES ('4827', null, '2016-05-06 10:22:51', '171.214.138.24', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:enterStore');
INSERT INTO `t_systemlog` VALUES ('4828', null, '2016-05-06 10:22:51', '171.214.138.24', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:enterPromotion');
INSERT INTO `t_systemlog` VALUES ('4829', null, '2016-05-06 10:22:54', '171.214.138.24', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:getBanner');
INSERT INTO `t_systemlog` VALUES ('4830', null, '2016-05-06 10:22:54', '171.214.138.24', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4831', null, '2016-05-06 10:22:55', '171.214.138.24', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4832', null, '2016-05-06 10:22:55', '171.214.138.24', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4833', null, '2016-05-06 10:22:55', '171.214.138.24', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:getTypeAndAd');
INSERT INTO `t_systemlog` VALUES ('4834', null, '2016-05-06 10:24:35', '171.214.138.24', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:getBanner');
INSERT INTO `t_systemlog` VALUES ('4835', null, '2016-05-06 10:24:35', '171.214.138.24', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4836', null, '2016-05-06 10:24:35', '171.214.138.24', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4837', null, '2016-05-06 10:24:35', '171.214.138.24', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4838', null, '2016-05-06 10:24:35', '171.214.138.24', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:getTypeAndAd');
INSERT INTO `t_systemlog` VALUES ('4839', null, '2016-05-06 10:24:59', '171.214.138.24', 'com.huashidai.weihuotong.service.impl.GoodsServiceImpl:queryMap');
INSERT INTO `t_systemlog` VALUES ('4840', null, '2016-05-06 10:24:59', '171.214.138.24', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:enterStore');
INSERT INTO `t_systemlog` VALUES ('4841', null, '2016-05-06 10:24:59', '171.214.138.24', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:enterPromotion');
INSERT INTO `t_systemlog` VALUES ('4842', null, '2016-05-06 10:25:04', '171.214.138.24', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:getBanner');
INSERT INTO `t_systemlog` VALUES ('4843', null, '2016-05-06 10:25:04', '171.214.138.24', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4844', null, '2016-05-06 10:25:05', '171.214.138.24', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4845', null, '2016-05-06 10:25:05', '171.214.138.24', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4846', null, '2016-05-06 10:25:05', '171.214.138.24', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:getTypeAndAd');
INSERT INTO `t_systemlog` VALUES ('4847', null, '2016-05-06 10:31:05', '171.214.138.24', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:getBanner');
INSERT INTO `t_systemlog` VALUES ('4848', null, '2016-05-06 10:31:06', '171.214.138.24', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4849', null, '2016-05-06 10:31:06', '171.214.138.24', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4850', null, '2016-05-06 10:31:06', '171.214.138.24', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4851', null, '2016-05-06 10:31:06', '171.214.138.24', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:getTypeAndAd');
INSERT INTO `t_systemlog` VALUES ('4852', null, '2016-05-06 10:31:20', '171.214.138.24', 'com.huashidai.weihuotong.service.impl.GoodsServiceImpl:queryMap');
INSERT INTO `t_systemlog` VALUES ('4853', null, '2016-05-06 10:31:20', '171.214.138.24', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:enterStore');
INSERT INTO `t_systemlog` VALUES ('4854', null, '2016-05-06 10:31:20', '171.214.138.24', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:enterPromotion');
INSERT INTO `t_systemlog` VALUES ('4855', null, '2016-05-06 10:31:24', '171.214.138.24', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:getBanner');
INSERT INTO `t_systemlog` VALUES ('4856', null, '2016-05-06 10:31:24', '171.214.138.24', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4857', null, '2016-05-06 10:31:24', '171.214.138.24', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4858', null, '2016-05-06 10:31:24', '171.214.138.24', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4859', null, '2016-05-06 10:31:24', '171.214.138.24', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:getTypeAndAd');
INSERT INTO `t_systemlog` VALUES ('4860', null, '2016-05-06 10:32:05', '171.214.138.24', 'com.huashidai.weihuotong.service.impl.GoodsServiceImpl:queryMap');
INSERT INTO `t_systemlog` VALUES ('4861', null, '2016-05-06 10:32:05', '171.214.138.24', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:enterStore');
INSERT INTO `t_systemlog` VALUES ('4862', null, '2016-05-06 10:32:05', '171.214.138.24', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:enterPromotion');
INSERT INTO `t_systemlog` VALUES ('4863', null, '2016-05-06 10:32:12', '171.214.138.24', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:getBanner');
INSERT INTO `t_systemlog` VALUES ('4864', null, '2016-05-06 10:32:12', '171.214.138.24', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4865', null, '2016-05-06 10:32:13', '171.214.138.24', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4866', null, '2016-05-06 10:32:13', '171.214.138.24', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4867', null, '2016-05-06 10:32:13', '171.214.138.24', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:getTypeAndAd');
INSERT INTO `t_systemlog` VALUES ('4868', null, '2016-05-06 10:32:19', '171.214.138.24', 'com.huashidai.weihuotong.service.impl.GoodsServiceImpl:queryMap');
INSERT INTO `t_systemlog` VALUES ('4869', null, '2016-05-06 10:32:19', '171.214.138.24', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:enterStore');
INSERT INTO `t_systemlog` VALUES ('4870', null, '2016-05-06 10:32:19', '171.214.138.24', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:enterPromotion');
INSERT INTO `t_systemlog` VALUES ('4871', null, '2016-05-06 10:32:23', '171.214.138.24', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:getBanner');
INSERT INTO `t_systemlog` VALUES ('4872', null, '2016-05-06 10:32:23', '171.214.138.24', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4873', null, '2016-05-06 10:32:24', '171.214.138.24', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4874', null, '2016-05-06 10:32:24', '171.214.138.24', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4875', null, '2016-05-06 10:32:24', '171.214.138.24', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:getTypeAndAd');
INSERT INTO `t_systemlog` VALUES ('4876', null, '2016-05-06 10:32:31', '171.214.138.24', 'com.huashidai.weihuotong.service.impl.GoodsServiceImpl:queryMap');
INSERT INTO `t_systemlog` VALUES ('4877', null, '2016-05-06 10:32:31', '171.214.138.24', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:enterStore');
INSERT INTO `t_systemlog` VALUES ('4878', null, '2016-05-06 10:32:31', '171.214.138.24', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:enterPromotion');
INSERT INTO `t_systemlog` VALUES ('4879', null, '2016-05-06 10:32:39', '171.214.138.24', 'com.huashidai.weihuotong.service.impl.GoodsServiceImpl:queryMap');
INSERT INTO `t_systemlog` VALUES ('4880', null, '2016-05-06 10:32:39', '171.214.138.24', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:enterStore');
INSERT INTO `t_systemlog` VALUES ('4881', null, '2016-05-06 10:32:39', '171.214.138.24', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:enterPromotion');
INSERT INTO `t_systemlog` VALUES ('4882', null, '2016-05-06 10:33:20', '171.214.138.24', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:getBanner');
INSERT INTO `t_systemlog` VALUES ('4883', null, '2016-05-06 10:33:20', '171.214.138.24', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4884', null, '2016-05-06 10:33:20', '171.214.138.24', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4885', null, '2016-05-06 10:33:20', '171.214.138.24', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4886', null, '2016-05-06 10:33:20', '171.214.138.24', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:getTypeAndAd');
INSERT INTO `t_systemlog` VALUES ('4887', null, '2016-05-06 10:33:24', '171.214.138.24', 'com.huashidai.weihuotong.service.impl.GoodsServiceImpl:queryMap');
INSERT INTO `t_systemlog` VALUES ('4888', null, '2016-05-06 10:33:24', '171.214.138.24', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:enterStore');
INSERT INTO `t_systemlog` VALUES ('4889', null, '2016-05-06 10:33:24', '171.214.138.24', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:enterPromotion');
INSERT INTO `t_systemlog` VALUES ('4890', null, '2016-05-06 10:33:29', '171.214.138.24', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:getBanner');
INSERT INTO `t_systemlog` VALUES ('4891', null, '2016-05-06 10:33:29', '171.214.138.24', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4892', null, '2016-05-06 10:33:29', '171.214.138.24', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4893', null, '2016-05-06 10:33:29', '171.214.138.24', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4894', null, '2016-05-06 10:33:29', '171.214.138.24', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:getTypeAndAd');
INSERT INTO `t_systemlog` VALUES ('4895', null, '2016-05-06 10:33:55', '171.214.138.24', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:getBanner');
INSERT INTO `t_systemlog` VALUES ('4896', null, '2016-05-06 10:33:55', '171.214.138.24', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4897', null, '2016-05-06 10:33:56', '171.214.138.24', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4898', null, '2016-05-06 10:33:56', '171.214.138.24', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4899', null, '2016-05-06 10:33:56', '171.214.138.24', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:getTypeAndAd');
INSERT INTO `t_systemlog` VALUES ('4900', null, '2016-05-06 10:34:11', '171.214.138.24', 'com.huashidai.weihuotong.service.impl.GoodsServiceImpl:queryMap');
INSERT INTO `t_systemlog` VALUES ('4901', null, '2016-05-06 10:34:11', '171.214.138.24', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:enterStore');
INSERT INTO `t_systemlog` VALUES ('4902', null, '2016-05-06 10:34:11', '171.214.138.24', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:enterPromotion');
INSERT INTO `t_systemlog` VALUES ('4903', null, '2016-05-06 10:34:15', '171.214.138.24', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:getBanner');
INSERT INTO `t_systemlog` VALUES ('4904', null, '2016-05-06 10:34:15', '171.214.138.24', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4905', null, '2016-05-06 10:34:15', '171.214.138.24', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4906', null, '2016-05-06 10:34:15', '171.214.138.24', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4907', null, '2016-05-06 10:34:15', '171.214.138.24', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:getTypeAndAd');
INSERT INTO `t_systemlog` VALUES ('4908', null, '2016-05-06 10:37:58', '171.214.138.24', 'com.huashidai.weihuotong.service.impl.GoodsServiceImpl:queryMap');
INSERT INTO `t_systemlog` VALUES ('4909', null, '2016-05-06 10:37:58', '171.214.138.24', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:enterStore');
INSERT INTO `t_systemlog` VALUES ('4910', null, '2016-05-06 10:37:58', '171.214.138.24', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:enterPromotion');
INSERT INTO `t_systemlog` VALUES ('4911', null, '2016-05-06 10:38:43', '171.214.138.24', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:getBanner');
INSERT INTO `t_systemlog` VALUES ('4912', null, '2016-05-06 10:38:43', '171.214.138.24', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4913', null, '2016-05-06 10:38:43', '171.214.138.24', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4914', null, '2016-05-06 10:38:43', '171.214.138.24', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4915', null, '2016-05-06 10:38:44', '171.214.138.24', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:getTypeAndAd');
INSERT INTO `t_systemlog` VALUES ('4916', null, '2016-05-06 10:40:40', '171.214.138.24', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:getBanner');
INSERT INTO `t_systemlog` VALUES ('4917', null, '2016-05-06 10:40:41', '171.214.138.24', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4918', null, '2016-05-06 10:40:41', '171.214.138.24', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4919', null, '2016-05-06 10:40:41', '171.214.138.24', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4920', null, '2016-05-06 10:40:41', '171.214.138.24', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:getTypeAndAd');
INSERT INTO `t_systemlog` VALUES ('4921', null, '2016-05-06 10:40:43', '171.214.138.24', 'com.huashidai.weihuotong.service.impl.GoodsServiceImpl:queryMap');
INSERT INTO `t_systemlog` VALUES ('4922', null, '2016-05-06 10:40:43', '171.214.138.24', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:enterStore');
INSERT INTO `t_systemlog` VALUES ('4923', null, '2016-05-06 10:40:43', '171.214.138.24', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:enterPromotion');
INSERT INTO `t_systemlog` VALUES ('4924', null, '2016-05-06 10:43:36', '171.214.138.24', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:getBanner');
INSERT INTO `t_systemlog` VALUES ('4925', null, '2016-05-06 10:43:36', '171.214.138.24', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4926', null, '2016-05-06 10:43:36', '171.214.138.24', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4927', null, '2016-05-06 10:43:36', '171.214.138.24', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4928', null, '2016-05-06 10:43:36', '171.214.138.24', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:getTypeAndAd');
INSERT INTO `t_systemlog` VALUES ('4929', null, '2016-05-06 10:43:42', '171.214.138.24', 'com.huashidai.weihuotong.service.impl.GoodsServiceImpl:queryMap');
INSERT INTO `t_systemlog` VALUES ('4930', null, '2016-05-06 10:43:42', '171.214.138.24', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:enterStore');
INSERT INTO `t_systemlog` VALUES ('4931', null, '2016-05-06 10:43:42', '171.214.138.24', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:enterPromotion');
INSERT INTO `t_systemlog` VALUES ('4932', null, '2016-05-06 10:52:30', '183.232.175.3', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:getBanner');
INSERT INTO `t_systemlog` VALUES ('4933', null, '2016-05-06 10:52:30', '183.232.175.3', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4934', null, '2016-05-06 10:52:30', '183.232.175.3', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4935', null, '2016-05-06 10:52:30', '183.232.175.3', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4936', null, '2016-05-06 10:52:31', '183.232.175.3', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:getTypeAndAd');
INSERT INTO `t_systemlog` VALUES ('4937', null, '2016-05-06 10:52:38', '183.232.175.3', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:getBanner');
INSERT INTO `t_systemlog` VALUES ('4938', null, '2016-05-06 10:52:38', '183.232.175.3', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4939', null, '2016-05-06 10:52:38', '183.232.175.3', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4940', null, '2016-05-06 10:52:38', '183.232.175.3', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4941', null, '2016-05-06 10:52:39', '183.232.175.3', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:getTypeAndAd');
INSERT INTO `t_systemlog` VALUES ('4942', null, '2016-05-06 11:42:32', '171.214.138.24', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:getBanner');
INSERT INTO `t_systemlog` VALUES ('4943', null, '2016-05-06 11:42:32', '171.214.138.24', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4944', null, '2016-05-06 11:42:33', '171.214.138.24', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4945', null, '2016-05-06 11:42:33', '171.214.138.24', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4946', null, '2016-05-06 11:42:33', '171.214.138.24', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:getTypeAndAd');
INSERT INTO `t_systemlog` VALUES ('4947', null, '2016-05-06 11:42:35', '171.214.138.24', 'com.huashidai.weihuotong.service.impl.GoodsServiceImpl:queryMap');
INSERT INTO `t_systemlog` VALUES ('4948', null, '2016-05-06 11:42:35', '171.214.138.24', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:enterStore');
INSERT INTO `t_systemlog` VALUES ('4949', null, '2016-05-06 11:42:35', '171.214.138.24', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:enterPromotion');
INSERT INTO `t_systemlog` VALUES ('4950', null, '2016-05-06 11:42:59', '171.214.138.24', 'com.huashidai.weihuotong.service.impl.GoodsServiceImpl:queryMap');
INSERT INTO `t_systemlog` VALUES ('4951', null, '2016-05-06 11:42:59', '171.214.138.24', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:enterStore');
INSERT INTO `t_systemlog` VALUES ('4952', null, '2016-05-06 11:42:59', '171.214.138.24', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:enterPromotion');
INSERT INTO `t_systemlog` VALUES ('4953', null, '2016-05-06 12:36:20', '183.232.175.4', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:getBanner');
INSERT INTO `t_systemlog` VALUES ('4954', null, '2016-05-06 12:36:20', '183.232.175.4', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4955', null, '2016-05-06 12:36:20', '183.232.175.4', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4956', null, '2016-05-06 12:36:21', '183.232.175.4', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('4957', null, '2016-05-06 12:36:21', '183.232.175.4', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:getTypeAndAd');
INSERT INTO `t_systemlog` VALUES ('4958', null, '2016-05-06 12:36:24', '183.232.175.4', 'com.huashidai.weihuotong.service.impl.GoodsServiceImpl:queryMap');
INSERT INTO `t_systemlog` VALUES ('4959', null, '2016-05-06 12:36:24', '183.232.175.4', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:enterStore');
INSERT INTO `t_systemlog` VALUES ('4960', null, '2016-05-06 12:36:24', '183.232.175.4', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:enterPromotion');
INSERT INTO `t_systemlog` VALUES ('4961', null, '2016-05-06 13:42:00', '125.70.56.40', 'com.huashidai.weihuotong.service.impl.UserServiceImpl:findcheckLogin');
INSERT INTO `t_systemlog` VALUES ('4962', null, '2016-05-06 13:42:00', '125.70.56.40', 'com.huashidai.weihuotong.service.impl.UserServiceImpl:getUserInfo');
INSERT INTO `t_systemlog` VALUES ('4963', null, '2016-05-06 13:42:02', '125.70.56.40', 'com.huashidai.weihuotong.service.impl.UserServiceImpl:getUserInfo');
INSERT INTO `t_systemlog` VALUES ('4964', null, '2016-05-06 13:42:21', '125.70.56.40', 'com.huashidai.weihuotong.service.impl.UserServiceImpl:findcheckLogin');
INSERT INTO `t_systemlog` VALUES ('4965', null, '2016-05-06 13:42:21', '125.70.56.40', 'com.huashidai.weihuotong.service.impl.UserServiceImpl:getUserInfo');
INSERT INTO `t_systemlog` VALUES ('4966', null, '2016-05-06 13:44:40', '125.70.56.40', 'com.huashidai.weihuotong.service.impl.UserServiceImpl:findcheckLogin');
INSERT INTO `t_systemlog` VALUES ('4967', null, '2016-05-06 13:44:40', '125.70.56.40', 'com.huashidai.weihuotong.service.impl.UserServiceImpl:getUserInfo');
INSERT INTO `t_systemlog` VALUES ('4968', null, '2016-05-06 13:44:50', '125.70.56.40', 'com.huashidai.weihuotong.service.impl.UserImageServiceImpl:updateByUser');
INSERT INTO `t_systemlog` VALUES ('4969', null, '2016-05-06 13:44:50', '125.70.56.40', 'com.huashidai.weihuotong.service.impl.UserServiceImpl:getUserInfo');
INSERT INTO `t_systemlog` VALUES ('4970', null, '2016-05-06 13:45:19', '125.70.56.40', 'com.huashidai.weihuotong.service.impl.UserServiceImpl:findcheckLogin');
INSERT INTO `t_systemlog` VALUES ('4971', null, '2016-05-06 13:45:19', '125.70.56.40', 'com.huashidai.weihuotong.service.impl.UserServiceImpl:getUserInfo');
INSERT INTO `t_systemlog` VALUES ('4972', null, '2016-05-06 13:45:33', '125.70.56.40', 'com.huashidai.weihuotong.service.impl.UserImageServiceImpl:updateByUser');
INSERT INTO `t_systemlog` VALUES ('4973', null, '2016-05-06 13:45:33', '125.70.56.40', 'com.huashidai.weihuotong.service.impl.UserServiceImpl:getUserInfo');
INSERT INTO `t_systemlog` VALUES ('4974', null, '2016-05-06 13:56:49', '171.214.138.24', 'com.huashidai.weihuotong.service.impl.GoodsServiceImpl:queryMap');
INSERT INTO `t_systemlog` VALUES ('4975', null, '2016-05-06 13:56:49', '171.214.138.24', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:enterStore');
INSERT INTO `t_systemlog` VALUES ('4976', null, '2016-05-06 13:56:49', '171.214.138.24', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:enterPromotion');
INSERT INTO `t_systemlog` VALUES ('4977', null, '2016-05-06 13:57:05', '171.214.138.24', 'com.huashidai.weihuotong.service.impl.UserServiceImpl:getUserInfo');
INSERT INTO `t_systemlog` VALUES ('4978', null, '2016-05-06 14:04:25', '171.214.138.24', 'com.huashidai.weihuotong.service.impl.UserServiceImpl:getUserInfo');
INSERT INTO `t_systemlog` VALUES ('4979', null, '2016-05-06 14:05:38', '125.70.56.40', 'com.huashidai.weihuotong.service.impl.UserServiceImpl:findcheckLogin');
INSERT INTO `t_systemlog` VALUES ('4980', null, '2016-05-06 14:05:39', '125.70.56.40', 'com.huashidai.weihuotong.service.impl.UserServiceImpl:getUserInfo');
INSERT INTO `t_systemlog` VALUES ('4981', null, '2016-05-06 14:06:40', '125.70.56.40', 'com.huashidai.weihuotong.service.impl.UserServiceImpl:findcheckLogin');
INSERT INTO `t_systemlog` VALUES ('4982', null, '2016-05-06 14:06:40', '125.70.56.40', 'com.huashidai.weihuotong.service.impl.UserServiceImpl:getUserInfo');
INSERT INTO `t_systemlog` VALUES ('4983', null, '2016-05-06 14:08:27', '125.70.56.40', 'com.huashidai.weihuotong.service.impl.UserServiceImpl:findcheckLogin');
INSERT INTO `t_systemlog` VALUES ('4984', null, '2016-05-06 14:08:27', '125.70.56.40', 'com.huashidai.weihuotong.service.impl.UserServiceImpl:getUserInfo');
INSERT INTO `t_systemlog` VALUES ('4985', null, '2016-05-06 14:10:17', '125.70.56.40', 'com.huashidai.weihuotong.service.impl.UserServiceImpl:findcheckLogin');
INSERT INTO `t_systemlog` VALUES ('4986', null, '2016-05-06 14:10:18', '125.70.56.40', 'com.huashidai.weihuotong.service.impl.UserServiceImpl:getUserInfo');
INSERT INTO `t_systemlog` VALUES ('4990', null, '2016-05-06 14:12:25', '125.70.56.40', 'com.huashidai.weihuotong.service.impl.UserServiceImpl:findcheckLogin');
INSERT INTO `t_systemlog` VALUES ('4991', null, '2016-05-06 14:12:25', '125.70.56.40', 'com.huashidai.weihuotong.service.impl.UserServiceImpl:findcheckLogin');
INSERT INTO `t_systemlog` VALUES ('4992', null, '2016-05-06 14:12:25', '125.70.56.40', 'com.huashidai.weihuotong.service.impl.UserServiceImpl:findcheckLogin');
INSERT INTO `t_systemlog` VALUES ('4993', null, '2016-05-06 14:12:25', '125.70.56.40', 'com.huashidai.weihuotong.service.impl.UserServiceImpl:findcheckLogin');
INSERT INTO `t_systemlog` VALUES ('4994', null, '2016-05-06 14:12:47', '125.70.56.40', 'com.huashidai.weihuotong.service.impl.UserServiceImpl:findcheckLogin');
INSERT INTO `t_systemlog` VALUES ('4995', null, '2016-05-06 14:12:48', '125.70.56.40', 'com.huashidai.weihuotong.service.impl.UserServiceImpl:getUserInfo');
INSERT INTO `t_systemlog` VALUES ('4996', null, '2016-05-06 14:12:59', '125.70.56.40', 'com.huashidai.weihuotong.service.impl.UserServiceImpl:findcheckLogin');
INSERT INTO `t_systemlog` VALUES ('4997', null, '2016-05-06 14:12:59', '125.70.56.40', 'com.huashidai.weihuotong.service.impl.UserServiceImpl:getUserInfo');
INSERT INTO `t_systemlog` VALUES ('4999', null, '2016-05-06 14:13:38', '125.70.56.40', 'com.huashidai.weihuotong.service.impl.UserServiceImpl:findcheckLogin');
INSERT INTO `t_systemlog` VALUES ('5000', null, '2016-05-06 14:13:39', '125.70.56.40', 'com.huashidai.weihuotong.service.impl.UserServiceImpl:getUserInfo');
INSERT INTO `t_systemlog` VALUES ('5001', null, '2016-05-06 14:13:56', '125.70.56.40', 'com.huashidai.weihuotong.service.impl.UserImageServiceImpl:updateByUser');
INSERT INTO `t_systemlog` VALUES ('5002', null, '2016-05-06 14:13:56', '125.70.56.40', 'com.huashidai.weihuotong.service.impl.UserServiceImpl:getUserInfo');
INSERT INTO `t_systemlog` VALUES ('5003', null, '2016-05-06 14:15:18', '125.70.56.40', 'com.huashidai.weihuotong.service.impl.UserServiceImpl:findcheckLogin');
INSERT INTO `t_systemlog` VALUES ('5004', null, '2016-05-06 14:15:18', '125.70.56.40', 'com.huashidai.weihuotong.service.impl.UserServiceImpl:getUserInfo');
INSERT INTO `t_systemlog` VALUES ('5005', null, '2016-05-06 14:16:07', '125.70.56.40', 'com.huashidai.weihuotong.service.impl.UserServiceImpl:findcheckLogin');
INSERT INTO `t_systemlog` VALUES ('5006', null, '2016-05-06 14:16:07', '125.70.56.40', 'com.huashidai.weihuotong.service.impl.UserServiceImpl:getUserInfo');
INSERT INTO `t_systemlog` VALUES ('5007', null, '2016-05-06 14:18:16', '125.70.56.40', 'com.huashidai.weihuotong.service.impl.UserServiceImpl:findcheckLogin');
INSERT INTO `t_systemlog` VALUES ('5008', null, '2016-05-06 14:18:17', '125.70.56.40', 'com.huashidai.weihuotong.service.impl.UserServiceImpl:getUserInfo');
INSERT INTO `t_systemlog` VALUES ('5009', null, '2016-05-06 14:19:02', '125.70.56.40', 'com.huashidai.weihuotong.service.impl.UserServiceImpl:findcheckLogin');
INSERT INTO `t_systemlog` VALUES ('5010', null, '2016-05-06 14:19:02', '125.70.56.40', 'com.huashidai.weihuotong.service.impl.UserServiceImpl:getUserInfo');
INSERT INTO `t_systemlog` VALUES ('5011', null, '2016-05-06 14:19:18', '125.70.56.40', 'com.huashidai.weihuotong.service.impl.UserImageServiceImpl:updateByUser');
INSERT INTO `t_systemlog` VALUES ('5012', null, '2016-05-06 14:19:18', '125.70.56.40', 'com.huashidai.weihuotong.service.impl.UserServiceImpl:getUserInfo');
INSERT INTO `t_systemlog` VALUES ('5013', null, '2016-05-06 14:25:54', '125.70.56.40', 'com.huashidai.weihuotong.service.impl.UserServiceImpl:findcheckLogin');
INSERT INTO `t_systemlog` VALUES ('5014', null, '2016-05-06 14:25:55', '125.70.56.40', 'com.huashidai.weihuotong.service.impl.UserServiceImpl:getUserInfo');
INSERT INTO `t_systemlog` VALUES ('5015', null, '2016-05-06 14:26:12', '125.70.56.40', 'com.huashidai.weihuotong.service.impl.UserImageServiceImpl:updateByUser');
INSERT INTO `t_systemlog` VALUES ('5016', null, '2016-05-06 14:26:12', '125.70.56.40', 'com.huashidai.weihuotong.service.impl.UserServiceImpl:getUserInfo');
INSERT INTO `t_systemlog` VALUES ('5017', null, '2016-05-06 14:28:16', '125.70.56.40', 'com.huashidai.weihuotong.service.impl.UserServiceImpl:findcheckLogin');
INSERT INTO `t_systemlog` VALUES ('5018', null, '2016-05-06 14:28:16', '125.70.56.40', 'com.huashidai.weihuotong.service.impl.UserServiceImpl:getUserInfo');
INSERT INTO `t_systemlog` VALUES ('5019', null, '2016-05-06 14:29:47', '125.70.56.40', 'com.huashidai.weihuotong.service.impl.UserServiceImpl:findcheckLogin');
INSERT INTO `t_systemlog` VALUES ('5020', null, '2016-05-06 14:29:47', '125.70.56.40', 'com.huashidai.weihuotong.service.impl.UserServiceImpl:getUserInfo');
INSERT INTO `t_systemlog` VALUES ('5021', null, '2016-05-06 14:31:39', '125.70.56.40', 'com.huashidai.weihuotong.service.impl.UserServiceImpl:findcheckLogin');
INSERT INTO `t_systemlog` VALUES ('5022', null, '2016-05-06 14:31:41', '125.70.56.40', 'com.huashidai.weihuotong.service.impl.UserServiceImpl:getUserInfo');
INSERT INTO `t_systemlog` VALUES ('5023', null, '2016-05-06 14:32:10', '125.70.56.40', 'com.huashidai.weihuotong.service.impl.UserImageServiceImpl:updateByUser');
INSERT INTO `t_systemlog` VALUES ('5024', null, '2016-05-06 14:32:11', '125.70.56.40', 'com.huashidai.weihuotong.service.impl.UserServiceImpl:getUserInfo');
INSERT INTO `t_systemlog` VALUES ('5025', null, '2016-05-06 14:32:34', '125.70.56.40', 'com.huashidai.weihuotong.service.impl.UserServiceImpl:findcheckLogin');
INSERT INTO `t_systemlog` VALUES ('5026', null, '2016-05-06 14:32:34', '125.70.56.40', 'com.huashidai.weihuotong.service.impl.UserServiceImpl:getUserInfo');
INSERT INTO `t_systemlog` VALUES ('5027', null, '2016-05-06 14:32:37', '125.70.56.40', 'com.huashidai.weihuotong.service.impl.UserServiceImpl:getUserInfo');
INSERT INTO `t_systemlog` VALUES ('5028', null, '2016-05-06 14:32:55', '125.70.56.40', 'com.huashidai.weihuotong.service.impl.UserImageServiceImpl:updateByUser');
INSERT INTO `t_systemlog` VALUES ('5029', null, '2016-05-06 14:32:55', '125.70.56.40', 'com.huashidai.weihuotong.service.impl.UserServiceImpl:getUserInfo');
INSERT INTO `t_systemlog` VALUES ('5030', null, '2016-05-06 14:33:05', '125.70.56.40', 'com.huashidai.weihuotong.service.impl.UserServiceImpl:getUserInfo');
INSERT INTO `t_systemlog` VALUES ('5031', null, '2016-05-06 14:35:44', '125.70.56.40', 'com.huashidai.weihuotong.service.impl.UserServiceImpl:findcheckLogin');
INSERT INTO `t_systemlog` VALUES ('5032', null, '2016-05-06 14:35:44', '125.70.56.40', 'com.huashidai.weihuotong.service.impl.UserServiceImpl:getUserInfo');
INSERT INTO `t_systemlog` VALUES ('5033', null, '2016-05-06 14:37:24', '125.70.56.40', 'com.huashidai.weihuotong.service.impl.UserServiceImpl:findcheckLogin');
INSERT INTO `t_systemlog` VALUES ('5034', null, '2016-05-06 14:37:25', '125.70.56.40', 'com.huashidai.weihuotong.service.impl.UserServiceImpl:getUserInfo');
INSERT INTO `t_systemlog` VALUES ('5035', null, '2016-05-06 14:39:39', '125.70.56.40', 'com.huashidai.weihuotong.service.impl.UserServiceImpl:findcheckLogin');
INSERT INTO `t_systemlog` VALUES ('5036', null, '2016-05-06 14:39:39', '125.70.56.40', 'com.huashidai.weihuotong.service.impl.UserServiceImpl:getUserInfo');
INSERT INTO `t_systemlog` VALUES ('5037', null, '2016-05-06 14:57:20', '125.70.56.40', 'com.huashidai.weihuotong.service.impl.UserImageServiceImpl:updateByUser');
INSERT INTO `t_systemlog` VALUES ('5038', null, '2016-05-06 14:57:21', '125.70.56.40', 'com.huashidai.weihuotong.service.impl.UserServiceImpl:getUserInfo');
INSERT INTO `t_systemlog` VALUES ('5039', null, '2016-05-06 15:00:36', '125.70.56.40', 'com.huashidai.weihuotong.service.impl.UserImageServiceImpl:updateByUser');
INSERT INTO `t_systemlog` VALUES ('5040', null, '2016-05-06 15:00:36', '125.70.56.40', 'com.huashidai.weihuotong.service.impl.UserServiceImpl:getUserInfo');
INSERT INTO `t_systemlog` VALUES ('5041', null, '2016-05-06 15:01:00', '125.70.56.40', 'com.huashidai.weihuotong.service.impl.UserImageServiceImpl:updateByUser');
INSERT INTO `t_systemlog` VALUES ('5042', null, '2016-05-06 15:01:01', '125.70.56.40', 'com.huashidai.weihuotong.service.impl.UserServiceImpl:getUserInfo');
INSERT INTO `t_systemlog` VALUES ('5043', null, '2016-05-06 15:07:24', '125.70.56.40', 'com.huashidai.weihuotong.service.impl.UserServiceImpl:getUserInfo');
INSERT INTO `t_systemlog` VALUES ('5044', null, '2016-05-06 15:07:28', '125.70.56.40', 'com.huashidai.weihuotong.service.impl.UserServiceImpl:getUserInfo');
INSERT INTO `t_systemlog` VALUES ('5045', null, '2016-05-06 15:07:47', '125.70.56.40', 'com.huashidai.weihuotong.service.impl.UserServiceImpl:getUserInfo');
INSERT INTO `t_systemlog` VALUES ('5046', null, '2016-05-06 15:07:49', '125.70.56.40', 'com.huashidai.weihuotong.service.impl.UserServiceImpl:getUserInfo');
INSERT INTO `t_systemlog` VALUES ('5047', null, '2016-05-06 15:07:54', '125.70.56.40', 'com.huashidai.weihuotong.service.impl.UserServiceImpl:getUserInfo');
INSERT INTO `t_systemlog` VALUES ('5048', null, '2016-05-06 15:07:57', '125.70.56.40', 'com.huashidai.weihuotong.service.impl.UserServiceImpl:getUserInfo');
INSERT INTO `t_systemlog` VALUES ('5049', null, '2016-05-06 15:14:19', '125.70.56.40', 'com.huashidai.weihuotong.service.impl.UserServiceImpl:findcheckLogin');
INSERT INTO `t_systemlog` VALUES ('5050', null, '2016-05-06 15:14:22', '125.70.56.40', 'com.huashidai.weihuotong.service.impl.UserServiceImpl:findcheckLogin');
INSERT INTO `t_systemlog` VALUES ('5051', null, '2016-05-06 15:14:30', '125.70.56.40', 'com.huashidai.weihuotong.service.impl.UserServiceImpl:findcheckLogin');
INSERT INTO `t_systemlog` VALUES ('5052', null, '2016-05-06 15:14:31', '125.70.56.40', 'com.huashidai.weihuotong.service.impl.UserServiceImpl:getUserInfo');
INSERT INTO `t_systemlog` VALUES ('5053', null, '2016-05-06 15:14:32', '125.70.56.40', 'com.huashidai.weihuotong.service.impl.UserServiceImpl:getUserInfo');
INSERT INTO `t_systemlog` VALUES ('5054', null, '2016-05-06 15:15:57', '125.70.56.40', 'com.huashidai.weihuotong.service.impl.UserImageServiceImpl:updateByUser');
INSERT INTO `t_systemlog` VALUES ('5055', null, '2016-05-06 15:15:57', '125.70.56.40', 'com.huashidai.weihuotong.service.impl.UserServiceImpl:getUserInfo');
INSERT INTO `t_systemlog` VALUES ('5056', null, '2016-05-06 15:16:02', '125.70.56.40', 'com.huashidai.weihuotong.service.impl.UserServiceImpl:getUserInfo');
INSERT INTO `t_systemlog` VALUES ('5057', null, '2016-05-06 15:16:04', '125.70.56.40', 'com.huashidai.weihuotong.service.impl.UserServiceImpl:getUserInfo');
INSERT INTO `t_systemlog` VALUES ('5058', null, '2016-05-06 15:16:15', '125.70.56.40', 'com.huashidai.weihuotong.service.impl.UserImageServiceImpl:updateByUser');
INSERT INTO `t_systemlog` VALUES ('5059', null, '2016-05-06 15:16:15', '125.70.56.40', 'com.huashidai.weihuotong.service.impl.UserServiceImpl:getUserInfo');
INSERT INTO `t_systemlog` VALUES ('5060', null, '2016-05-06 15:16:56', '125.70.56.40', 'com.huashidai.weihuotong.service.impl.UserImageServiceImpl:updateByUser');
INSERT INTO `t_systemlog` VALUES ('5061', null, '2016-05-06 15:16:56', '125.70.56.40', 'com.huashidai.weihuotong.service.impl.UserServiceImpl:getUserInfo');
INSERT INTO `t_systemlog` VALUES ('5062', null, '2016-05-06 15:18:16', '125.70.56.40', 'com.huashidai.weihuotong.service.impl.UserServiceImpl:getUserInfo');
INSERT INTO `t_systemlog` VALUES ('5063', null, '2016-05-06 15:18:31', '125.70.56.40', 'com.huashidai.weihuotong.service.impl.UserImageServiceImpl:updateByUser');
INSERT INTO `t_systemlog` VALUES ('5064', null, '2016-05-06 15:18:31', '125.70.56.40', 'com.huashidai.weihuotong.service.impl.UserServiceImpl:getUserInfo');
INSERT INTO `t_systemlog` VALUES ('5065', null, '2016-05-06 15:18:34', '125.70.56.40', 'com.huashidai.weihuotong.service.impl.UserServiceImpl:getUserInfo');
INSERT INTO `t_systemlog` VALUES ('5066', null, '2016-05-06 15:28:03', '125.70.56.40', 'com.huashidai.weihuotong.service.impl.AddressServiceImpl:getByUser');
INSERT INTO `t_systemlog` VALUES ('5067', null, '2016-05-06 15:31:57', '125.70.56.40', 'com.huashidai.weihuotong.service.impl.AddressServiceImpl:getByUser');
INSERT INTO `t_systemlog` VALUES ('5068', null, '2016-05-06 15:37:18', '125.70.56.40', 'com.huashidai.weihuotong.service.impl.AddressServiceImpl:getByUser');
INSERT INTO `t_systemlog` VALUES ('5069', null, '2016-05-06 15:38:10', '125.70.56.40', 'com.huashidai.weihuotong.service.impl.AddressServiceImpl:getByUser');
INSERT INTO `t_systemlog` VALUES ('5070', null, '2016-05-06 15:38:44', '125.70.56.40', 'com.huashidai.weihuotong.service.impl.AddressServiceImpl:getByUser');
INSERT INTO `t_systemlog` VALUES ('5071', null, '2016-05-06 15:40:20', '125.70.56.40', 'com.huashidai.weihuotong.service.impl.AddressServiceImpl:getByUser');
INSERT INTO `t_systemlog` VALUES ('5072', null, '2016-05-06 15:43:53', '125.70.56.40', 'com.huashidai.weihuotong.service.impl.AddressServiceImpl:getByUser');
INSERT INTO `t_systemlog` VALUES ('5073', null, '2016-05-06 15:48:17', '125.70.56.40', 'com.huashidai.weihuotong.service.impl.AddressServiceImpl:getByUser');
INSERT INTO `t_systemlog` VALUES ('5074', null, '2016-05-06 15:51:10', '125.70.56.40', 'com.huashidai.weihuotong.service.impl.AddressServiceImpl:getByUser');
INSERT INTO `t_systemlog` VALUES ('5075', null, '2016-05-06 15:52:15', '125.70.56.40', 'com.huashidai.weihuotong.service.impl.UserServiceImpl:updateBackground');
INSERT INTO `t_systemlog` VALUES ('5076', null, '2016-05-06 15:52:16', '125.70.56.40', 'com.huashidai.weihuotong.service.impl.UserServiceImpl:getUserInfo');
INSERT INTO `t_systemlog` VALUES ('5077', null, '2016-05-06 15:52:19', '125.70.56.40', 'com.huashidai.weihuotong.service.impl.UserServiceImpl:getUserInfo');
INSERT INTO `t_systemlog` VALUES ('5078', null, '2016-05-06 15:55:17', '125.70.56.40', 'com.huashidai.weihuotong.service.impl.UserImageServiceImpl:updateByUser');
INSERT INTO `t_systemlog` VALUES ('5079', null, '2016-05-06 15:55:17', '125.70.56.40', 'com.huashidai.weihuotong.service.impl.UserServiceImpl:getUserInfo');
INSERT INTO `t_systemlog` VALUES ('5080', null, '2016-05-06 16:03:35', '125.70.56.40', 'com.huashidai.weihuotong.service.impl.UserServiceImpl:getUserInfo');
INSERT INTO `t_systemlog` VALUES ('5081', null, '2016-05-06 16:09:56', '125.70.56.40', 'com.huashidai.weihuotong.service.impl.AddressServiceImpl:getByUser');
INSERT INTO `t_systemlog` VALUES ('5082', null, '2016-05-06 16:12:19', '125.70.56.40', 'com.huashidai.weihuotong.service.impl.AddressServiceImpl:getByUser');
INSERT INTO `t_systemlog` VALUES ('5083', null, '2016-05-06 16:24:22', '125.70.56.40', 'com.huashidai.weihuotong.service.impl.AddressServiceImpl:getByUser');
INSERT INTO `t_systemlog` VALUES ('5084', null, '2016-05-06 16:27:42', '125.70.56.40', 'com.huashidai.weihuotong.service.impl.AddressServiceImpl:getByUser');
INSERT INTO `t_systemlog` VALUES ('5085', null, '2016-05-06 16:30:10', '125.70.56.40', 'com.huashidai.weihuotong.service.impl.AddressServiceImpl:getByUser');
INSERT INTO `t_systemlog` VALUES ('5086', null, '2016-05-06 16:37:40', '125.70.56.40', 'com.huashidai.weihuotong.service.impl.AddressServiceImpl:getByUser');
INSERT INTO `t_systemlog` VALUES ('5087', null, '2016-05-06 16:39:12', '125.70.56.40', 'com.huashidai.weihuotong.service.impl.AddressServiceImpl:getByUser');
INSERT INTO `t_systemlog` VALUES ('5088', null, '2016-05-06 16:48:15', '125.70.56.40', 'com.huashidai.weihuotong.service.impl.AddressServiceImpl:getByUser');
INSERT INTO `t_systemlog` VALUES ('5089', null, '2016-05-06 16:48:58', '125.70.56.40', 'com.huashidai.weihuotong.service.impl.AddressServiceImpl:getByUser');
INSERT INTO `t_systemlog` VALUES ('5090', null, '2016-05-06 16:50:24', '125.70.56.40', 'com.huashidai.weihuotong.service.impl.AddressServiceImpl:getByUser');
INSERT INTO `t_systemlog` VALUES ('5091', null, '2016-05-06 16:51:23', '125.70.56.40', 'com.huashidai.weihuotong.service.impl.AddressServiceImpl:getByUser');
INSERT INTO `t_systemlog` VALUES ('5092', null, '2016-05-06 16:52:29', '125.70.56.40', 'com.huashidai.weihuotong.service.impl.AddressServiceImpl:getByUser');
INSERT INTO `t_systemlog` VALUES ('5093', null, '2016-05-06 16:53:03', '125.70.56.40', 'com.huashidai.weihuotong.service.impl.AddressServiceImpl:getByUser');
INSERT INTO `t_systemlog` VALUES ('5094', null, '2016-05-06 16:55:46', '125.70.56.40', 'com.huashidai.weihuotong.service.impl.AddressServiceImpl:getByUser');
INSERT INTO `t_systemlog` VALUES ('5095', null, '2016-05-06 16:56:04', '125.70.56.40', 'com.huashidai.weihuotong.service.impl.AddressServiceImpl:getByUser');
INSERT INTO `t_systemlog` VALUES ('5096', null, '2016-05-06 17:37:47', '171.214.138.24', 'com.huashidai.weihuotong.service.impl.GoodsServiceImpl:queryMap');
INSERT INTO `t_systemlog` VALUES ('5097', null, '2016-05-06 17:37:47', '171.214.138.24', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:enterStore');
INSERT INTO `t_systemlog` VALUES ('5098', null, '2016-05-06 17:38:10', '171.214.138.24', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:getBanner');
INSERT INTO `t_systemlog` VALUES ('5099', null, '2016-05-06 17:38:10', '171.214.138.24', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('5100', null, '2016-05-06 17:38:11', '171.214.138.24', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('5101', null, '2016-05-06 17:38:11', '171.214.138.24', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('5102', null, '2016-05-06 17:38:11', '171.214.138.24', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:getTypeAndAd');
INSERT INTO `t_systemlog` VALUES ('5103', null, '2016-05-06 17:38:18', '171.214.138.24', 'com.huashidai.weihuotong.service.impl.GoodsServiceImpl:queryMap');
INSERT INTO `t_systemlog` VALUES ('5104', null, '2016-05-06 17:38:18', '171.214.138.24', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:enterStore');
INSERT INTO `t_systemlog` VALUES ('5105', null, '2016-05-06 17:38:18', '171.214.138.24', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:enterPromotion');
INSERT INTO `t_systemlog` VALUES ('5106', null, '2016-05-06 17:38:21', '171.214.138.24', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:getBanner');
INSERT INTO `t_systemlog` VALUES ('5107', null, '2016-05-06 17:38:21', '171.214.138.24', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('5108', null, '2016-05-06 17:38:21', '171.214.138.24', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('5109', null, '2016-05-06 17:38:21', '171.214.138.24', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('5110', null, '2016-05-06 17:38:21', '171.214.138.24', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:getTypeAndAd');
INSERT INTO `t_systemlog` VALUES ('5111', null, '2016-05-06 17:38:44', '171.214.138.24', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:getBanner');
INSERT INTO `t_systemlog` VALUES ('5112', null, '2016-05-06 17:38:44', '171.214.138.24', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('5113', null, '2016-05-06 17:38:45', '171.214.138.24', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('5114', null, '2016-05-06 17:38:45', '171.214.138.24', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('5115', null, '2016-05-06 17:38:45', '171.214.138.24', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:getTypeAndAd');
INSERT INTO `t_systemlog` VALUES ('5116', null, '2016-05-06 17:38:55', '171.214.138.24', 'com.huashidai.weihuotong.service.impl.GoodsServiceImpl:queryMap');
INSERT INTO `t_systemlog` VALUES ('5117', null, '2016-05-06 17:38:55', '171.214.138.24', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:enterStore');
INSERT INTO `t_systemlog` VALUES ('5118', null, '2016-05-06 17:38:55', '171.214.138.24', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:enterPromotion');
INSERT INTO `t_systemlog` VALUES ('5119', null, '2016-05-06 17:39:57', '171.214.138.24', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:getBanner');
INSERT INTO `t_systemlog` VALUES ('5120', null, '2016-05-06 17:39:58', '171.214.138.24', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('5121', null, '2016-05-06 17:39:58', '171.214.138.24', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('5122', null, '2016-05-06 17:39:58', '171.214.138.24', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('5123', null, '2016-05-06 17:39:58', '171.214.138.24', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:getTypeAndAd');
INSERT INTO `t_systemlog` VALUES ('5124', null, '2016-05-06 17:41:48', '171.214.138.24', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:getBanner');
INSERT INTO `t_systemlog` VALUES ('5125', null, '2016-05-06 17:41:48', '171.214.138.24', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('5126', null, '2016-05-06 17:41:48', '171.214.138.24', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('5127', null, '2016-05-06 17:41:49', '171.214.138.24', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('5128', null, '2016-05-06 17:41:49', '171.214.138.24', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:getTypeAndAd');
INSERT INTO `t_systemlog` VALUES ('5129', null, '2016-05-06 17:41:53', '171.214.138.24', 'com.huashidai.weihuotong.service.impl.GoodsServiceImpl:queryMap');
INSERT INTO `t_systemlog` VALUES ('5130', null, '2016-05-06 17:41:53', '171.214.138.24', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:enterStore');
INSERT INTO `t_systemlog` VALUES ('5131', null, '2016-05-06 17:41:53', '171.214.138.24', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:enterPromotion');
INSERT INTO `t_systemlog` VALUES ('5132', null, '2016-05-06 17:41:55', '171.214.138.24', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:getBanner');
INSERT INTO `t_systemlog` VALUES ('5133', null, '2016-05-06 17:41:56', '171.214.138.24', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('5134', null, '2016-05-06 17:41:56', '171.214.138.24', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('5135', null, '2016-05-06 17:41:56', '171.214.138.24', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('5136', null, '2016-05-06 17:41:56', '171.214.138.24', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:getTypeAndAd');
INSERT INTO `t_systemlog` VALUES ('5137', null, '2016-05-06 17:44:28', '171.214.138.24', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:getBanner');
INSERT INTO `t_systemlog` VALUES ('5138', null, '2016-05-06 17:44:28', '171.214.138.24', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('5139', null, '2016-05-06 17:44:28', '171.214.138.24', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('5140', null, '2016-05-06 17:44:29', '171.214.138.24', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('5141', null, '2016-05-06 17:44:29', '171.214.138.24', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:getTypeAndAd');
INSERT INTO `t_systemlog` VALUES ('5142', null, '2016-05-06 17:44:33', '171.214.138.24', 'com.huashidai.weihuotong.service.impl.GoodsServiceImpl:queryMap');
INSERT INTO `t_systemlog` VALUES ('5143', null, '2016-05-06 17:44:33', '171.214.138.24', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:enterStore');
INSERT INTO `t_systemlog` VALUES ('5144', null, '2016-05-06 17:44:33', '171.214.138.24', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:enterPromotion');
INSERT INTO `t_systemlog` VALUES ('5145', null, '2016-05-06 17:57:01', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.AccountFlowServiceImpl:queryMap');
INSERT INTO `t_systemlog` VALUES ('5146', null, '2016-05-06 17:44:37', '171.214.138.24', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:getBanner');
INSERT INTO `t_systemlog` VALUES ('5147', null, '2016-05-06 17:44:37', '171.214.138.24', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('5148', null, '2016-05-06 17:44:38', '171.214.138.24', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('5149', null, '2016-05-06 17:44:38', '171.214.138.24', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('5150', null, '2016-05-06 17:44:38', '171.214.138.24', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:getTypeAndAd');
INSERT INTO `t_systemlog` VALUES ('5151', null, '2016-05-06 17:44:52', '171.214.138.24', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:getBanner');
INSERT INTO `t_systemlog` VALUES ('5152', null, '2016-05-06 17:44:52', '171.214.138.24', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('5153', null, '2016-05-06 17:44:52', '171.214.138.24', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('5154', null, '2016-05-06 17:44:53', '171.214.138.24', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('5155', null, '2016-05-06 17:57:32', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.AccountFlowServiceImpl:queryMap');
INSERT INTO `t_systemlog` VALUES ('5156', null, '2016-05-06 17:44:53', '171.214.138.24', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:getTypeAndAd');
INSERT INTO `t_systemlog` VALUES ('5157', null, '2016-05-06 17:45:02', '171.214.138.24', 'com.huashidai.weihuotong.service.impl.GoodsServiceImpl:queryMap');
INSERT INTO `t_systemlog` VALUES ('5158', null, '2016-05-06 17:45:02', '171.214.138.24', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:enterStore');
INSERT INTO `t_systemlog` VALUES ('5159', null, '2016-05-06 17:45:02', '171.214.138.24', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:enterPromotion');
INSERT INTO `t_systemlog` VALUES ('5160', null, '2016-05-06 17:57:52', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:searchStore');
INSERT INTO `t_systemlog` VALUES ('5161', null, '2016-05-06 17:58:08', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.GoodsServiceImpl:searchGoods');
INSERT INTO `t_systemlog` VALUES ('5162', null, '2016-05-06 17:45:31', '171.214.138.24', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:getBanner');
INSERT INTO `t_systemlog` VALUES ('5163', null, '2016-05-06 17:45:31', '171.214.138.24', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('5164', null, '2016-05-06 17:45:31', '171.214.138.24', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('5165', null, '2016-05-06 17:45:32', '171.214.138.24', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('5166', null, '2016-05-06 17:45:32', '171.214.138.24', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:getTypeAndAd');
INSERT INTO `t_systemlog` VALUES ('5167', null, '2016-05-06 17:45:43', '171.214.138.24', 'com.huashidai.weihuotong.service.impl.GoodsServiceImpl:queryMap');
INSERT INTO `t_systemlog` VALUES ('5168', null, '2016-05-06 17:45:43', '171.214.138.24', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:enterStore');
INSERT INTO `t_systemlog` VALUES ('5169', null, '2016-05-06 17:45:43', '171.214.138.24', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:enterPromotion');
INSERT INTO `t_systemlog` VALUES ('5170', null, '2016-05-06 17:58:26', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.GoodsServiceImpl:newGoods');
INSERT INTO `t_systemlog` VALUES ('5172', null, '2016-05-06 17:59:21', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.GoodsServiceImpl:searchGoods');
INSERT INTO `t_systemlog` VALUES ('5173', null, '2016-05-06 17:59:21', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreFavoritesServiceImpl:isFavorites');
INSERT INTO `t_systemlog` VALUES ('5174', null, '2016-05-06 17:59:22', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:enterStore');
INSERT INTO `t_systemlog` VALUES ('5175', null, '2016-05-06 17:59:22', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:enterPromotion');
INSERT INTO `t_systemlog` VALUES ('5176', null, '2016-05-06 17:59:44', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.GoodsServiceImpl:searchGoods');
INSERT INTO `t_systemlog` VALUES ('5177', null, '2016-05-06 17:59:44', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreFavoritesServiceImpl:isFavorites');
INSERT INTO `t_systemlog` VALUES ('5178', null, '2016-05-06 17:59:44', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:enterStore');
INSERT INTO `t_systemlog` VALUES ('5179', null, '2016-05-06 17:59:44', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:enterPromotion');
INSERT INTO `t_systemlog` VALUES ('5180', null, '2016-05-06 17:47:06', '171.214.138.24', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:getBanner');
INSERT INTO `t_systemlog` VALUES ('5181', null, '2016-05-06 17:47:07', '171.214.138.24', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('5182', null, '2016-05-06 17:47:07', '171.214.138.24', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('5183', null, '2016-05-06 17:47:07', '171.214.138.24', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('5184', null, '2016-05-06 17:47:07', '171.214.138.24', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:getTypeAndAd');
INSERT INTO `t_systemlog` VALUES ('5185', null, '2016-05-06 17:47:10', '171.214.138.24', 'com.huashidai.weihuotong.service.impl.GoodsServiceImpl:queryMap');
INSERT INTO `t_systemlog` VALUES ('5186', null, '2016-05-06 17:47:10', '171.214.138.24', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:enterStore');
INSERT INTO `t_systemlog` VALUES ('5187', null, '2016-05-06 17:47:10', '171.214.138.24', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:enterPromotion');
INSERT INTO `t_systemlog` VALUES ('5191', null, '2016-05-06 18:02:21', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreFavoritesServiceImpl:save');
INSERT INTO `t_systemlog` VALUES ('5192', null, '2016-05-06 17:49:19', '171.214.138.24', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:getBanner');
INSERT INTO `t_systemlog` VALUES ('5193', null, '2016-05-06 17:49:20', '171.214.138.24', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('5194', null, '2016-05-06 17:49:20', '171.214.138.24', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('5195', null, '2016-05-06 17:49:20', '171.214.138.24', 'com.huashidai.weihuotong.service.impl.AdPositionIdServiceImpl:query');
INSERT INTO `t_systemlog` VALUES ('5196', null, '2016-05-06 17:49:21', '171.214.138.24', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:getTypeAndAd');
INSERT INTO `t_systemlog` VALUES ('5197', null, '2016-05-06 17:49:22', '171.214.138.24', 'com.huashidai.weihuotong.service.impl.GoodsServiceImpl:queryMap');
INSERT INTO `t_systemlog` VALUES ('5198', null, '2016-05-06 17:49:22', '171.214.138.24', 'com.huashidai.weihuotong.service.impl.StoreServiceImpl:enterStore');
INSERT INTO `t_systemlog` VALUES ('5199', null, '2016-05-06 17:49:22', '171.214.138.24', 'com.huashidai.weihuotong.service.impl.PromotionServiceImpl:enterPromotion');
INSERT INTO `t_systemlog` VALUES ('5200', null, '2016-05-06 18:02:35', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreFavoritesServiceImpl:queryMap');
INSERT INTO `t_systemlog` VALUES ('5201', null, '2016-05-06 18:02:51', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreFavoritesServiceImpl:save');
INSERT INTO `t_systemlog` VALUES ('5207', null, '2016-05-06 18:08:40', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreFavoritesServiceImpl:delete');
INSERT INTO `t_systemlog` VALUES ('5208', null, '2016-05-06 18:10:52', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreFavoritesServiceImpl:save');
INSERT INTO `t_systemlog` VALUES ('5209', null, '2016-05-06 18:10:57', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreFavoritesServiceImpl:save');
INSERT INTO `t_systemlog` VALUES ('5210', null, '2016-05-06 18:11:04', '0:0:0:0:0:0:0:1', 'com.huashidai.weihuotong.service.impl.StoreFavoritesServiceImpl:queryMap');

-- ----------------------------
-- Table structure for t_totalorder
-- ----------------------------
DROP TABLE IF EXISTS `t_totalorder`;
CREATE TABLE `t_totalorder` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `orderNum` varchar(255) NOT NULL,
  `totalPrice` decimal(10,0) DEFAULT NULL,
  `payPrice` decimal(10,0) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=83 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_totalorder
-- ----------------------------

-- ----------------------------
-- Table structure for t_type
-- ----------------------------
DROP TABLE IF EXISTS `t_type`;
CREATE TABLE `t_type` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `pinYin` varchar(10) NOT NULL,
  `image` varchar(255) NOT NULL,
  `parent_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_type
-- ----------------------------
INSERT INTO `t_type` VALUES ('1', '女装', 'N', '/images/typeImage/20160415-150807.jpg', null);
INSERT INTO `t_type` VALUES ('2', '男装', 'N', '/images/typeImage/20160415-150824.jpg', null);
INSERT INTO `t_type` VALUES ('3', '鞋子', 'X', '/images/typeImage/20160413-162248.jpg', null);
INSERT INTO `t_type` VALUES ('4', '时尚裙装', 'S', '/images/typeImage/20160415-150710.jpg', '1');
INSERT INTO `t_type` VALUES ('5', '时尚裤装', 'S', '/images/typeImage/20160415-152721.jpg', '1');
INSERT INTO `t_type` VALUES ('6', '裤装', 'K', '/images/typeImage/20160413-160007.jpg', '2');
INSERT INTO `t_type` VALUES ('7', '上衣', 'S', '/images/typeImage/20160413-160007.jpg', '2');
INSERT INTO `t_type` VALUES ('8', '运动鞋', 'Y', '/images/typeImage/20160413-160007.jpg', '3');
INSERT INTO `t_type` VALUES ('9', '皮鞋', 'P', '/images/typeImage/20160413-160007.jpg', '3');
INSERT INTO `t_type` VALUES ('10', '连衣裙', 'L', '/images/typeImage/20160413-160007.jpg', '4');
INSERT INTO `t_type` VALUES ('11', '短裙', 'D', '/images/typeImage/20160413-160007.jpg', '4');
INSERT INTO `t_type` VALUES ('12', '短裤', 'D', '/images/typeImage/20160413-160007.jpg', '5');
INSERT INTO `t_type` VALUES ('13', '长裤', 'C', '/images/typeImage/20160413-160007.jpg', '5');
INSERT INTO `t_type` VALUES ('14', '童装', 'T', '/images/typeImage/20160413-162257.jpg', null);

-- ----------------------------
-- Table structure for t_user
-- ----------------------------
DROP TABLE IF EXISTS `t_user`;
CREATE TABLE `t_user` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `nickname` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `headImage` varchar(255) DEFAULT NULL,
  `state` int(11) NOT NULL,
  `userTpye` int(11) NOT NULL,
  `myCode` varchar(20) NOT NULL,
  `useCode` varchar(255) NOT NULL,
  `background` varchar(255) DEFAULT NULL,
  `turnover` int(11) NOT NULL,
  `amount` decimal(10,0) NOT NULL,
  `store_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_user
-- ----------------------------
INSERT INTO `t_user` VALUES ('1', 'admin', '21232F297A57A5A743894A0E4A801FC3', '呵呵', '123@qq.com', 'http://120.27.129.103:8888/bmw/image/usedCarImage/20160309-155812453.png', '1', '0', '123456', '', '/images/userImage/20160413-175740.jpg', '0', '0', '1');
INSERT INTO `t_user` VALUES ('4', 'qwerty', 'D8578EDF8458CE06FBC5BB76A58C5CA4', null, null, null, '1', '0', 'kcEtuZ', '123456', '/images/userImage/20160413-175740.jpg', '0', '0', '2');
INSERT INTO `t_user` VALUES ('5', '13245678910', 'E10ADC3949BA59ABBE56E057F20F883E', null, null, null, '1', '0', '05HIGB', '123456', '/images/userImage/20160413-175740.jpg', '0', '0', '3');
INSERT INTO `t_user` VALUES ('6', '13245678918', 'E10ADC3949BA59ABBE56E057F20F883E', null, null, null, '1', '0', 'VGmxRJ', '123456', '/images/userImage/20160413-175740.jpg', '0', '0', '4');
INSERT INTO `t_user` VALUES ('7', '13245678919', 'E10ADC3949BA59ABBE56E057F20F883E', null, null, null, '1', '0', '4jzkFd', '123456', '/images/userImage/20160413-175740.jpg', '0', '0', '5');
INSERT INTO `t_user` VALUES ('8', '13245678917', 'E10ADC3949BA59ABBE56E057F20F883E', null, null, null, '1', '0', 'CUPY31', '123456', '/images/userImage/20160413-175740.jpg', '0', '0', null);
INSERT INTO `t_user` VALUES ('9', '13245678915', '202CB962AC59075B964B07152D234B70', null, null, null, '1', '0', '7j3z8C', '123456', '/images/userImage/20160413-175740.jpg', '0', '0', null);
INSERT INTO `t_user` VALUES ('10', '13245678916', '202CB962AC59075B964B07152D234B70', null, null, null, '1', '0', '8AZgGi', '123456', '/images/userImage/20160413-175740.jpg', '0', '0', null);
INSERT INTO `t_user` VALUES ('11', '18683958857', '1BBD886460827015E5D605ED44252251', null, null, null, '1', '0', 'Zs7UAn', '', '/images/background/f4b64dec-c483-4a09-8597-92c4d9d0b646.jpg', '0', '0', null);

-- ----------------------------
-- Table structure for t_userimage
-- ----------------------------
DROP TABLE IF EXISTS `t_userimage`;
CREATE TABLE `t_userimage` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `src` varchar(255) NOT NULL,
  `sort` int(11) DEFAULT NULL,
  `user_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_userimage
-- ----------------------------
INSERT INTO `t_userimage` VALUES ('1', '/images/userImage/20160413-180411.jpg', null, '1');
INSERT INTO `t_userimage` VALUES ('2', '/images/userImage/20160413-180411.jpg', null, '4');
INSERT INTO `t_userimage` VALUES ('3', '/images/userImage/20160413-180411.jpg', null, '5');
INSERT INTO `t_userimage` VALUES ('4', '/images/userImage/20160413-180411.jpg', null, '6');
INSERT INTO `t_userimage` VALUES ('5', '/images/userImage/20160413-180411.jpg', null, '7');
INSERT INTO `t_userimage` VALUES ('6', '/images/userImage/20160413-180411.jpg', null, '8');
INSERT INTO `t_userimage` VALUES ('7', '/images/userImage/20160413-180411.jpg', null, '9');
INSERT INTO `t_userimage` VALUES ('8', '/images/userImage/20160413-180411.jpg', null, '10');
INSERT INTO `t_userimage` VALUES ('38', '/images/userImage/066c116b-096b-4daf-873a-148d4d7af8ff.jpg', null, '11');
INSERT INTO `t_userimage` VALUES ('39', '/images/userImage/9643e101-f380-4463-81b0-12b650669f12.jpg', null, '11');
INSERT INTO `t_userimage` VALUES ('40', '/images/userImage/fbfcd9d6-e2f4-4d37-b81f-a09b17da195b.jpg', null, '11');
INSERT INTO `t_userimage` VALUES ('41', '/images/userImage/a7bbee21-83d4-4938-893d-6863a341d8e3.jpg', null, '11');
INSERT INTO `t_userimage` VALUES ('42', '/images/userImage/4f5cd51b-3d50-4533-8feb-1d030fb7d5f8.jpg', null, '11');
INSERT INTO `t_userimage` VALUES ('43', '/images/userImage/9f72271e-74ed-4654-b132-1dec6a708e77.jpg', null, '11');

-- ----------------------------
-- Table structure for t_webpage
-- ----------------------------
DROP TABLE IF EXISTS `t_webpage`;
CREATE TABLE `t_webpage` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `content` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_webpage
-- ----------------------------
INSERT INTO `t_webpage` VALUES ('1', '我是网页');
