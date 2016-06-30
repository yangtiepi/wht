/*
Navicat MySQL Data Transfer

Source Server         : weihuotong
Source Server Version : 50171
Source Host           : 211.149.241.17:3306
Source Database       : weihuotong123

Target Server Type    : MYSQL
Target Server Version : 50171
File Encoding         : 65001

Date: 2016-04-12 16:04:48
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_account
-- ----------------------------

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_accountflow
-- ----------------------------

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
  `user_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FKD8948F5751726E53` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of t_address
-- ----------------------------
INSERT INTO `t_address` VALUES ('1', '老王', '110', '锦阳商厦', '1', '248', '1');

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
INSERT INTO `t_adpositionid` VALUES ('1', '1', null, '11');
INSERT INTO `t_adpositionid` VALUES ('2', '1', null, '22');
INSERT INTO `t_adpositionid` VALUES ('3', '1', null, '33');
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_bannerimage
-- ----------------------------
INSERT INTO `t_bannerimage` VALUES ('1', 'http://120.27.129.103:8888/bmw/image/car/20160331-101531595.jpg', null, '1');

-- ----------------------------
-- Table structure for t_brand
-- ----------------------------
DROP TABLE IF EXISTS `t_brand`;
CREATE TABLE `t_brand` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `pinYin` varchar(10) NOT NULL,
  `image` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_brand
-- ----------------------------
INSERT INTO `t_brand` VALUES ('1', '韩都衣舍', 'H', '品牌图片');

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
INSERT INTO `t_detailsimage` VALUES ('1', 'http://120.27.129.103:8888/bmw/image/car/20160323-165145452.jpg', null, '1');
INSERT INTO `t_detailsimage` VALUES ('2', 'http://120.27.129.103:8888/bmw/image/car/20160323-163630117.jpg', null, '1');
INSERT INTO `t_detailsimage` VALUES ('3', 'http://120.27.129.103:8888/bmw/image/car/20160323-165605572.jpg', null, '1');

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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_employee
-- ----------------------------
INSERT INTO `t_employee` VALUES ('1', 'admin', '21232F297A57A5A743894A0E4A801FC3', '超级管理员', null, '1', null);
INSERT INTO `t_employee` VALUES ('2', 'qwert', 'D8578EDF8458CE06FBC5BB76A58C5CA4', 'qw', null, '1', null);

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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_employee_role
-- ----------------------------
INSERT INTO `t_employee_role` VALUES ('2', '1');

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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_goods
-- ----------------------------
INSERT INTO `t_goods` VALUES ('1', '2016韩版女夏装新款宽松V领露肩休闲短袖T恤', 'A32133', '详情', '100', '10', '10', '1', '0', '0', '2016-03-01 10:46:25', '1', '1', '1');

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
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_menu
-- ----------------------------
INSERT INTO `t_menu` VALUES ('1', '营销管理', null, null, 'icon-1_close', null);
INSERT INTO `t_menu` VALUES ('2', '客户管理', null, null, 'icon-1_open', null);
INSERT INTO `t_menu` VALUES ('3', '系统管理', null, null, 'icon-1_close', null);
INSERT INTO `t_menu` VALUES ('11', '商品管理', 'goods/index', '1', 'icon-8', null);
INSERT INTO `t_menu` VALUES ('12', '分类管理', 'type/index', '1', 'icon-9', null);
INSERT INTO `t_menu` VALUES ('13', '品牌管理', null, '1', 'icon-10', null);
INSERT INTO `t_menu` VALUES ('14', '订单管理', 'order/index', '3', 'icon-16', null);
INSERT INTO `t_menu` VALUES ('31', '员工管理', 'employee/index', '3', 'icon-9', null);
INSERT INTO `t_menu` VALUES ('32', '系统资源', 'resource/index', '3', 'icon-11', null);
INSERT INTO `t_menu` VALUES ('33', '系统权限管理', 'permission/index', '3', 'icon-12', null);
INSERT INTO `t_menu` VALUES ('34', '系统角色', 'role/index', '3', 'icon-13', null);
INSERT INTO `t_menu` VALUES ('35', '数据字典', 'systemDictionary/index', '3', 'icon-14', null);
INSERT INTO `t_menu` VALUES ('36', '系统日志', 'systemLog/index', '3', 'icon-15', null);

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
) ENGINE=InnoDB AUTO_INCREMENT=256 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_permission
-- ----------------------------
INSERT INTO `t_permission` VALUES ('1', '商品删除', '商品管理', 'com.huashidai.weihuotong.controller.GoodsCotroller:delete');
INSERT INTO `t_permission` VALUES ('2', '商品列表', '商品管理', 'com.huashidai.weihuotong.controller.GoodsCotroller:query');
INSERT INTO `t_permission` VALUES ('3', '商品下架', '商品管理', 'com.huashidai.weihuotong.controller.GoodsCotroller:leave');
INSERT INTO `t_permission` VALUES ('4', '商品上架', '商品管理', 'com.huashidai.weihuotong.controller.GoodsCotroller:up');
INSERT INTO `t_permission` VALUES ('5', '商品主页', '商品管理', 'com.huashidai.weihuotong.controller.GoodsCotroller:employee');
INSERT INTO `t_permission` VALUES ('6', '全部', '商品管理', 'com.huashidai.weihuotong.controller.GoodsCotroller:ALL');
INSERT INTO `t_permission` VALUES ('7', '权限编辑', '权限管理', 'com.huashidai.weihuotong.controller.PermissionController:save');
INSERT INTO `t_permission` VALUES ('8', '权限列表', '权限管理', 'com.huashidai.weihuotong.controller.PermissionController:list');
INSERT INTO `t_permission` VALUES ('9', '权限删除', '权限管理', 'com.huashidai.weihuotong.controller.PermissionController:delete');
INSERT INTO `t_permission` VALUES ('10', '权限主页', '权限管理', 'com.huashidai.weihuotong.controller.PermissionController:index');
INSERT INTO `t_permission` VALUES ('11', '全部', '权限管理', 'com.huashidai.weihuotong.controller.PermissionController:ALL');
INSERT INTO `t_permission` VALUES ('12', '数据字典编辑', '数据字典', 'com.huashidai.weihuotong.controller.SystemDictionaryCotroller:save');
INSERT INTO `t_permission` VALUES ('13', '数据字典删除', '数据字典', 'com.huashidai.weihuotong.controller.SystemDictionaryCotroller:delete');
INSERT INTO `t_permission` VALUES ('14', '数据字典主页', '数据字典', 'com.huashidai.weihuotong.controller.SystemDictionaryCotroller:index');
INSERT INTO `t_permission` VALUES ('15', '数据字典列表', '数据字典', 'com.huashidai.weihuotong.controller.SystemDictionaryCotroller:systemDictionaryList');
INSERT INTO `t_permission` VALUES ('16', '全部', '数据字典', 'com.huashidai.weihuotong.controller.SystemDictionaryCotroller:ALL');
INSERT INTO `t_permission` VALUES ('17', '字典明细编辑', '数据字典', 'com.huashidai.weihuotong.controller.SystemDictionaryItemCotroller:save');
INSERT INTO `t_permission` VALUES ('18', '字典明细删除', '数据字典', 'com.huashidai.weihuotong.controller.SystemDictionaryItemCotroller:delete');
INSERT INTO `t_permission` VALUES ('19', '字典明细列表', '数据字典', 'com.huashidai.weihuotong.controller.SystemDictionaryItemCotroller:SystemDictionaryItemList');
INSERT INTO `t_permission` VALUES ('20', '全部', '数据字典', 'com.huashidai.weihuotong.controller.SystemDictionaryItemCotroller:ALL');
INSERT INTO `t_permission` VALUES ('21', '账户编辑', '账户管理', 'com.huashidai.weihuotong.controller.UserController:save');
INSERT INTO `t_permission` VALUES ('22', '账户列表', '账户管理', 'com.huashidai.weihuotong.controller.UserController:list');
INSERT INTO `t_permission` VALUES ('23', '账户删除', '账户管理', 'com.huashidai.weihuotong.controller.UserController:delete');
INSERT INTO `t_permission` VALUES ('24', '账户主页', '账户管理', 'com.huashidai.weihuotong.controller.UserController:index');
INSERT INTO `t_permission` VALUES ('25', '全部', '账户管理', 'com.huashidai.weihuotong.controller.UserController:ALL');
INSERT INTO `t_permission` VALUES ('206', '商品主页', '商品管理', 'com.huashidai.weihuotong.controller.GoodsCotroller:goods');
INSERT INTO `t_permission` VALUES ('207', '分类主页', '商品管理', 'com.huashidai.weihuotong.controller.TypeCotroller:type');
INSERT INTO `t_permission` VALUES ('208', '添加分类', '商品管理', 'com.huashidai.weihuotong.controller.TypeCotroller:save');
INSERT INTO `t_permission` VALUES ('209', '删除分类', '商品管理', 'com.huashidai.weihuotong.controller.TypeCotroller:delete');
INSERT INTO `t_permission` VALUES ('210', '分类列表', '商品管理', 'com.huashidai.weihuotong.controller.TypeCotroller:query');
INSERT INTO `t_permission` VALUES ('211', '全部', '商品管理', 'com.huashidai.weihuotong.controller.TypeCotroller:ALL');

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
  `user_id` bigint(20) NOT NULL,
  `store_id` bigint(20) DEFAULT NULL,
  `payPrice` decimal(10,0) DEFAULT NULL,
  `totalOrder_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_productorder
-- ----------------------------
INSERT INTO `t_productorder` VALUES ('5', '2016-03-11 16:27:58', '10000010311162758151', '10', '0', '160', '收货人:老王;电话:110;地址:锦阳商厦;店铺:店铺', '1', '1', '1', '160', '80');
INSERT INTO `t_productorder` VALUES ('6', '2016-03-14 09:27:26', '10000010314092726024', '10', '0', '160', '收货人:老王;电话:110;地址:锦阳商厦;店铺:店铺', '1', '1', '1', '160', '81');
INSERT INTO `t_productorder` VALUES ('7', '2016-03-14 09:27:38', '10000010314092738329', '10', '0', '160', '收货人:老王;电话:110;地址:锦阳商厦;店铺:店铺', '1', '1', '1', '160', '82');

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
INSERT INTO `t_promotion` VALUES ('1', '图片', '1', '1', '2016-02-01 14:27:55', '2016-02-18 14:27:59', '123', '1', '0');
INSERT INTO `t_promotion` VALUES ('2', '图片', '1', '1', '2016-02-01 14:27:55', '2016-02-18 14:27:59', '123', '2', '0');
INSERT INTO `t_promotion` VALUES ('3', '图片', '1', '1', '2016-02-01 14:27:55', '2016-02-18 14:27:59', '123', '3', '0');
INSERT INTO `t_promotion` VALUES ('4', '图片', '1', '1', '2016-02-01 14:27:55', '2016-02-18 14:27:59', '123', '4', '0');
INSERT INTO `t_promotion` VALUES ('5', '图片', '1', '1', '2016-02-01 14:27:55', '2016-02-18 14:27:59', '123', '5', '0');
INSERT INTO `t_promotion` VALUES ('6', '图片', '1', '1', '2016-02-01 14:27:55', '2016-02-18 14:27:59', '123', '6', '0');
INSERT INTO `t_promotion` VALUES ('7', '图片', '1', '1', '2016-02-01 14:27:55', '2016-02-18 14:27:59', '123', '7', '0');
INSERT INTO `t_promotion` VALUES ('8', '图片', '1', '1', '2016-02-01 14:27:55', '2016-02-18 14:27:59', '123', '8', '0');
INSERT INTO `t_promotion` VALUES ('9', '图片', '1', '1', '2016-02-01 14:27:55', '2016-02-18 14:27:59', '123', '9', '0');
INSERT INTO `t_promotion` VALUES ('10', '图片', '1', '1', '2016-02-01 14:27:55', '2016-02-18 14:27:59', '123', '10', '0');
INSERT INTO `t_promotion` VALUES ('11', '图片', '1', '1', '2016-02-01 14:27:55', '2016-02-18 14:27:59', '123', '11', '0');
INSERT INTO `t_promotion` VALUES ('12', '图片', '1', '1', '2016-02-01 14:27:55', '2016-02-18 14:27:59', '123', '12', '0');
INSERT INTO `t_promotion` VALUES ('13', '图片', '1', '1', '2016-01-15 16:32:40', '2016-02-24 16:32:47', '123', '13', '0');
INSERT INTO `t_promotion` VALUES ('14', '图片', '1', '1', '2016-02-29 16:33:15', '2016-02-29 16:33:18', '123', '14', '0');
INSERT INTO `t_promotion` VALUES ('15', '图片', '1', '1', '2016-02-29 16:33:30', '2016-02-29 16:33:33', '123', '15', '0');
INSERT INTO `t_promotion` VALUES ('16', '图片', '1', '1', '2016-02-29 16:34:16', '2016-02-29 16:34:18', '123', '16', '0');
INSERT INTO `t_promotion` VALUES ('17', '图片', '1', '1', '2016-02-10 16:34:40', '2016-02-20 16:34:42', '123', '17', '0');
INSERT INTO `t_promotion` VALUES ('18', '图片', '3', '1', '2016-02-24 16:34:56', '2016-02-12 16:35:00', '123', '18', '0');

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
-- Table structure for t_resource
-- ----------------------------
DROP TABLE IF EXISTS `t_resource`;
CREATE TABLE `t_resource` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=1047 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_resource
-- ----------------------------
INSERT INTO `t_resource` VALUES ('1', 'com.huashidai.weihuotong.app.CommonAPP:city');
INSERT INTO `t_resource` VALUES ('2', 'com.huashidai.weihuotong.app.CommonAPP:province');
INSERT INTO `t_resource` VALUES ('3', 'com.huashidai.weihuotong.app.GoodsAPP:detailsImages');
INSERT INTO `t_resource` VALUES ('5', 'com.huashidai.weihuotong.app.GoodsAPP:enterGoods');
INSERT INTO `t_resource` VALUES ('9', 'com.huashidai.weihuotong.app.GoodsAPP:newGoods');
INSERT INTO `t_resource` VALUES ('6', 'com.huashidai.weihuotong.app.GoodsAPP:proxyGoods');
INSERT INTO `t_resource` VALUES ('4', 'com.huashidai.weihuotong.app.GoodsAPP:queryGoods');
INSERT INTO `t_resource` VALUES ('10', 'com.huashidai.weihuotong.app.GoodsAPP:saveGoods');
INSERT INTO `t_resource` VALUES ('688', 'com.huashidai.weihuotong.app.GoodsAPP:searchGoods');
INSERT INTO `t_resource` VALUES ('7', 'com.huashidai.weihuotong.app.GoodsAPP:submitOrder');
INSERT INTO `t_resource` VALUES ('8', 'com.huashidai.weihuotong.app.GoodsAPP:toBuyProduct');
INSERT INTO `t_resource` VALUES ('11', 'com.huashidai.weihuotong.app.PromotionAPP:enterPromotion');
INSERT INTO `t_resource` VALUES ('14', 'com.huashidai.weihuotong.app.PromotionAPP:enterWebPage');
INSERT INTO `t_resource` VALUES ('13', 'com.huashidai.weihuotong.app.PromotionAPP:promotion');
INSERT INTO `t_resource` VALUES ('12', 'com.huashidai.weihuotong.app.PromotionAPP:promotionOfType');
INSERT INTO `t_resource` VALUES ('17', 'com.huashidai.weihuotong.app.StoreAPP:allPostageTemplate');
INSERT INTO `t_resource` VALUES ('19', 'com.huashidai.weihuotong.app.StoreAPP:enterStore');
INSERT INTO `t_resource` VALUES ('15', 'com.huashidai.weihuotong.app.StoreAPP:postageTemplate');
INSERT INTO `t_resource` VALUES ('20', 'com.huashidai.weihuotong.app.StoreAPP:saveStore');
INSERT INTO `t_resource` VALUES ('18', 'com.huashidai.weihuotong.app.StoreAPP:saveStoreAuth');
INSERT INTO `t_resource` VALUES ('689', 'com.huashidai.weihuotong.app.StoreAPP:searchStore');
INSERT INTO `t_resource` VALUES ('16', 'com.huashidai.weihuotong.app.StoreAPP:updateHeadImage');
INSERT INTO `t_resource` VALUES ('23', 'com.huashidai.weihuotong.app.TypeAPP:enterType');
INSERT INTO `t_resource` VALUES ('21', 'com.huashidai.weihuotong.app.TypeAPP:parentsAndItem');
INSERT INTO `t_resource` VALUES ('24', 'com.huashidai.weihuotong.app.TypeAPP:parentTypes');
INSERT INTO `t_resource` VALUES ('25', 'com.huashidai.weihuotong.app.TypeAPP:typeItem');
INSERT INTO `t_resource` VALUES ('22', 'com.huashidai.weihuotong.app.TypeAPP:typesByParent');
INSERT INTO `t_resource` VALUES ('37', 'com.huashidai.weihuotong.app.UserAPP:checkLogin');
INSERT INTO `t_resource` VALUES ('34', 'com.huashidai.weihuotong.app.UserAPP:deleteAddress');
INSERT INTO `t_resource` VALUES ('28', 'com.huashidai.weihuotong.app.UserAPP:forgetPassword');
INSERT INTO `t_resource` VALUES ('27', 'com.huashidai.weihuotong.app.UserAPP:getAddress');
INSERT INTO `t_resource` VALUES ('26', 'com.huashidai.weihuotong.app.UserAPP:register');
INSERT INTO `t_resource` VALUES ('35', 'com.huashidai.weihuotong.app.UserAPP:saveAddress');
INSERT INTO `t_resource` VALUES ('31', 'com.huashidai.weihuotong.app.UserAPP:updateAddress');
INSERT INTO `t_resource` VALUES ('29', 'com.huashidai.weihuotong.app.UserAPP:updateBackground');
INSERT INTO `t_resource` VALUES ('30', 'com.huashidai.weihuotong.app.UserAPP:updateDefault');
INSERT INTO `t_resource` VALUES ('32', 'com.huashidai.weihuotong.app.UserAPP:updatePassword');
INSERT INTO `t_resource` VALUES ('33', 'com.huashidai.weihuotong.app.UserAPP:updateUserImages');
INSERT INTO `t_resource` VALUES ('36', 'com.huashidai.weihuotong.app.UserAPP:userImages');
INSERT INTO `t_resource` VALUES ('93', 'com.huashidai.weihuotong.app.UserAPP:userInfo');
INSERT INTO `t_resource` VALUES ('39', 'com.huashidai.weihuotong.controller.EmployeeCotroller:delete');
INSERT INTO `t_resource` VALUES ('43', 'com.huashidai.weihuotong.controller.EmployeeCotroller:employee');
INSERT INTO `t_resource` VALUES ('40', 'com.huashidai.weihuotong.controller.EmployeeCotroller:employeeQuery');
INSERT INTO `t_resource` VALUES ('41', 'com.huashidai.weihuotong.controller.EmployeeCotroller:employeeResult');
INSERT INTO `t_resource` VALUES ('42', 'com.huashidai.weihuotong.controller.EmployeeCotroller:leave');
INSERT INTO `t_resource` VALUES ('38', 'com.huashidai.weihuotong.controller.EmployeeCotroller:save');
INSERT INTO `t_resource` VALUES ('49', 'com.huashidai.weihuotong.controller.GoodsCotroller:ALL');
INSERT INTO `t_resource` VALUES ('44', 'com.huashidai.weihuotong.controller.GoodsCotroller:delete');
INSERT INTO `t_resource` VALUES ('48', 'com.huashidai.weihuotong.controller.GoodsCotroller:employee');
INSERT INTO `t_resource` VALUES ('862', 'com.huashidai.weihuotong.controller.GoodsCotroller:goods');
INSERT INTO `t_resource` VALUES ('46', 'com.huashidai.weihuotong.controller.GoodsCotroller:leave');
INSERT INTO `t_resource` VALUES ('45', 'com.huashidai.weihuotong.controller.GoodsCotroller:query');
INSERT INTO `t_resource` VALUES ('47', 'com.huashidai.weihuotong.controller.GoodsCotroller:up');
INSERT INTO `t_resource` VALUES ('50', 'com.huashidai.weihuotong.controller.IndexController:execut');
INSERT INTO `t_resource` VALUES ('52', 'com.huashidai.weihuotong.controller.LoginController:checkLogin');
INSERT INTO `t_resource` VALUES ('51', 'com.huashidai.weihuotong.controller.LoginController:mian');
INSERT INTO `t_resource` VALUES ('53', 'com.huashidai.weihuotong.controller.MenuCotroller:test2');
INSERT INTO `t_resource` VALUES ('59', 'com.huashidai.weihuotong.controller.PermissionController:ALL');
INSERT INTO `t_resource` VALUES ('56', 'com.huashidai.weihuotong.controller.PermissionController:delete');
INSERT INTO `t_resource` VALUES ('57', 'com.huashidai.weihuotong.controller.PermissionController:index');
INSERT INTO `t_resource` VALUES ('55', 'com.huashidai.weihuotong.controller.PermissionController:list');
INSERT INTO `t_resource` VALUES ('58', 'com.huashidai.weihuotong.controller.PermissionController:permissionAll');
INSERT INTO `t_resource` VALUES ('54', 'com.huashidai.weihuotong.controller.PermissionController:save');
INSERT INTO `t_resource` VALUES ('61', 'com.huashidai.weihuotong.controller.RandomCodeController:getRandColor');
INSERT INTO `t_resource` VALUES ('60', 'com.huashidai.weihuotong.controller.RandomCodeController:service');
INSERT INTO `t_resource` VALUES ('63', 'com.huashidai.weihuotong.controller.ResourceController:delete');
INSERT INTO `t_resource` VALUES ('65', 'com.huashidai.weihuotong.controller.ResourceController:roleAll');
INSERT INTO `t_resource` VALUES ('64', 'com.huashidai.weihuotong.controller.ResourceController:roleList');
INSERT INTO `t_resource` VALUES ('62', 'com.huashidai.weihuotong.controller.ResourceController:save');
INSERT INTO `t_resource` VALUES ('67', 'com.huashidai.weihuotong.controller.RoleController:delete');
INSERT INTO `t_resource` VALUES ('70', 'com.huashidai.weihuotong.controller.RoleController:echo');
INSERT INTO `t_resource` VALUES ('69', 'com.huashidai.weihuotong.controller.RoleController:roleAll');
INSERT INTO `t_resource` VALUES ('68', 'com.huashidai.weihuotong.controller.RoleController:roleList');
INSERT INTO `t_resource` VALUES ('66', 'com.huashidai.weihuotong.controller.RoleController:save');
INSERT INTO `t_resource` VALUES ('71', 'com.huashidai.weihuotong.controller.StoreController:delete');
INSERT INTO `t_resource` VALUES ('73', 'com.huashidai.weihuotong.controller.StoreController:getAll');
INSERT INTO `t_resource` VALUES ('72', 'com.huashidai.weihuotong.controller.StoreController:index');
INSERT INTO `t_resource` VALUES ('78', 'com.huashidai.weihuotong.controller.SystemDictionaryCotroller:ALL');
INSERT INTO `t_resource` VALUES ('75', 'com.huashidai.weihuotong.controller.SystemDictionaryCotroller:delete');
INSERT INTO `t_resource` VALUES ('76', 'com.huashidai.weihuotong.controller.SystemDictionaryCotroller:index');
INSERT INTO `t_resource` VALUES ('74', 'com.huashidai.weihuotong.controller.SystemDictionaryCotroller:save');
INSERT INTO `t_resource` VALUES ('77', 'com.huashidai.weihuotong.controller.SystemDictionaryCotroller:systemDictionaryList');
INSERT INTO `t_resource` VALUES ('82', 'com.huashidai.weihuotong.controller.SystemDictionaryItemCotroller:ALL');
INSERT INTO `t_resource` VALUES ('80', 'com.huashidai.weihuotong.controller.SystemDictionaryItemCotroller:delete');
INSERT INTO `t_resource` VALUES ('79', 'com.huashidai.weihuotong.controller.SystemDictionaryItemCotroller:save');
INSERT INTO `t_resource` VALUES ('81', 'com.huashidai.weihuotong.controller.SystemDictionaryItemCotroller:SystemDictionaryItemList');
INSERT INTO `t_resource` VALUES ('84', 'com.huashidai.weihuotong.controller.SystemLogController:index');
INSERT INTO `t_resource` VALUES ('83', 'com.huashidai.weihuotong.controller.SystemLogController:list');
INSERT INTO `t_resource` VALUES ('85', 'com.huashidai.weihuotong.controller.SystemLogController:query');
INSERT INTO `t_resource` VALUES ('867', 'com.huashidai.weihuotong.controller.TypeCotroller:ALL');
INSERT INTO `t_resource` VALUES ('865', 'com.huashidai.weihuotong.controller.TypeCotroller:delete');
INSERT INTO `t_resource` VALUES ('954', 'com.huashidai.weihuotong.controller.TypeCotroller:list');
INSERT INTO `t_resource` VALUES ('866', 'com.huashidai.weihuotong.controller.TypeCotroller:query');
INSERT INTO `t_resource` VALUES ('864', 'com.huashidai.weihuotong.controller.TypeCotroller:save');
INSERT INTO `t_resource` VALUES ('863', 'com.huashidai.weihuotong.controller.TypeCotroller:type');
INSERT INTO `t_resource` VALUES ('92', 'com.huashidai.weihuotong.controller.UserController:ALL');
INSERT INTO `t_resource` VALUES ('88', 'com.huashidai.weihuotong.controller.UserController:delete');
INSERT INTO `t_resource` VALUES ('91', 'com.huashidai.weihuotong.controller.UserController:getSystemDic');
INSERT INTO `t_resource` VALUES ('89', 'com.huashidai.weihuotong.controller.UserController:index');
INSERT INTO `t_resource` VALUES ('87', 'com.huashidai.weihuotong.controller.UserController:list');
INSERT INTO `t_resource` VALUES ('90', 'com.huashidai.weihuotong.controller.UserController:move');
INSERT INTO `t_resource` VALUES ('86', 'com.huashidai.weihuotong.controller.UserController:save');

-- ----------------------------
-- Table structure for t_role
-- ----------------------------
DROP TABLE IF EXISTS `t_role`;
CREATE TABLE `t_role` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) DEFAULT NULL,
  `sn` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_role
-- ----------------------------
INSERT INTO `t_role` VALUES ('1', '权限管理员', '001');

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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_store
-- ----------------------------
INSERT INTO `t_store` VALUES ('1', '韩都衣舍', '昵称', '123456789', '469813867', '1', '1', '0', null, '0', '0', '0');
INSERT INTO `t_store` VALUES ('2', 'zara', '昵称', '123456789', '469813867', '1', '1', '0', null, '0', '0', '0');
INSERT INTO `t_store` VALUES ('3', 'forever', '昵称', '123456789', '469813867', '1', '1', '0', null, '0', '0', '0');

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
) ENGINE=InnoDB AUTO_INCREMENT=1584 DEFAULT CHARSET=utf8;

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
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_type
-- ----------------------------
INSERT INTO `t_type` VALUES ('1', '女装', 'N', '11', null);
INSERT INTO `t_type` VALUES ('2', '男装', 'N', '11', null);
INSERT INTO `t_type` VALUES ('3', '鞋子', 'X', '11', null);
INSERT INTO `t_type` VALUES ('4', '时尚裙装', 'S', '二级', '1');
INSERT INTO `t_type` VALUES ('5', '时尚裤装', 'S', '二级', '1');
INSERT INTO `t_type` VALUES ('6', '裤装', 'K', '二级', '2');
INSERT INTO `t_type` VALUES ('7', '上衣', 'S', '二级', '2');
INSERT INTO `t_type` VALUES ('8', '运动鞋', 'Y', '22', '3');
INSERT INTO `t_type` VALUES ('9', '皮鞋', 'P', '22', '3');
INSERT INTO `t_type` VALUES ('10', '连衣裙', 'L', '33', '4');
INSERT INTO `t_type` VALUES ('11', '短裙', 'D', '33', '4');
INSERT INTO `t_type` VALUES ('12', '短裤', 'D', '33', '5');
INSERT INTO `t_type` VALUES ('13', '长裤', 'C', '33', '5');

-- ----------------------------
-- Table structure for t_user
-- ----------------------------
DROP TABLE IF EXISTS `t_user`;
CREATE TABLE `t_user` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `nickname` varchar(255) DEFAULT NULL,
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
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_user
-- ----------------------------
INSERT INTO `t_user` VALUES ('1', 'admin', '21232F297A57A5A743894A0E4A801FC3', '呵呵', 'http://120.27.129.103:8888/bmw/image/usedCarImage/20160309-155812453.png', '1', '0', '123456', '', 'http://120.27.129.103:8888/bmw/image/usedCarImage/20160309-155812453.png', '0', '0', null);
INSERT INTO `t_user` VALUES ('4', 'qwerty', 'D8578EDF8458CE06FBC5BB76A58C5CA4', null, null, '1', '0', 'kcEtuZ', '123456', null, '0', '0', null);
INSERT INTO `t_user` VALUES ('5', '13245678910', 'E10ADC3949BA59ABBE56E057F20F883E', null, null, '1', '0', '05HIGB', '123456', null, '0', '0', null);
INSERT INTO `t_user` VALUES ('6', '13245678918', 'E10ADC3949BA59ABBE56E057F20F883E', null, null, '1', '0', 'VGmxRJ', '123456', null, '0', '0', null);
INSERT INTO `t_user` VALUES ('7', '13245678919', 'E10ADC3949BA59ABBE56E057F20F883E', null, null, '1', '0', '4jzkFd', '123456', null, '0', '0', null);
INSERT INTO `t_user` VALUES ('8', '13245678917', 'E10ADC3949BA59ABBE56E057F20F883E', null, null, '1', '0', 'CUPY31', '123456', null, '0', '0', null);
INSERT INTO `t_user` VALUES ('9', '13245678915', '202CB962AC59075B964B07152D234B70', null, null, '1', '0', '7j3z8C', '123456', null, '0', '0', null);
INSERT INTO `t_user` VALUES ('10', '13245678916', '202CB962AC59075B964B07152D234B70', null, null, '1', '0', '8AZgGi', '123456', null, '0', '0', null);

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_userimage
-- ----------------------------

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
