/*
Navicat MySQL Data Transfer

Source Server         : center_user-192.168.162.192
Source Server Version : 50530
Source Host           : 192.168.162.192:3306
Source Database       : center_user

Target Server Type    : MYSQL
Target Server Version : 50530
File Encoding         : 65001

Date: 2017-07-31 16:21:14
*/

use center_user;

-- ----------------------------
-- Table structure for uc_company
-- ----------------------------
DROP TABLE IF EXISTS `uc_company`;
CREATE TABLE `uc_company` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `status` tinyint(4) DEFAULT NULL COMMENT '1.启用，2.禁用',
  `api_code` varchar(50) DEFAULT NULL COMMENT '商户唯一键',
  `remark` varchar(1000) DEFAULT NULL COMMENT '描述',
  `nick` varchar(200) DEFAULT NULL COMMENT '简称',
  `company_name` varchar(50) DEFAULT NULL COMMENT '公司名称',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `create_user` int(11) DEFAULT NULL COMMENT '创建人id',
  `update_user` int(11) DEFAULT NULL COMMENT '更新人id',
  `update_date` datetime DEFAULT NULL COMMENT '更新时间',
  `delete_flag` tinyint(4) DEFAULT NULL COMMENT '是否删除',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1149 DEFAULT CHARSET=utf8 COMMENT='#br.auth';

-- ----------------------------
-- Records of uc_company
-- ----------------------------
INSERT INTO `uc_company` VALUES ('757', '1', '100053', '11', null, '南粤银行', '2015-05-14 14:52:51', '0', '46', '2015-11-26 11:58:19', null);
INSERT INTO `uc_company` VALUES ('766', '1', '100058', '111', null, '原形金融', '2015-05-28 11:16:57', '0', '42', '2015-12-03 08:32:41', null);
INSERT INTO `uc_company` VALUES ('989', '3', '2546323', '1111', null, 'zcwww', '2015-11-28 10:35:32', '0', '0', '2015-11-28 10:35:32', null);
INSERT INTO `uc_company` VALUES ('993', '1', '100213', '11111', null, 'com15', '2015-11-30 10:44:14', '0', '0', '2015-11-30 10:44:14', null);
INSERT INTO `uc_company` VALUES ('995', '2', '3423233433', null, null, 'sdfsddsa', '2015-11-30 10:57:40', '0', '0', '2015-11-30 10:57:40', null);
INSERT INTO `uc_company` VALUES ('996', '2', '999111', null, null, 'conpass7', '2015-12-01 06:19:40', '0', '0', '2015-12-01 06:19:40', null);
INSERT INTO `uc_company` VALUES ('998', '1', 'compass8', null, null, 'compass8', '2015-12-01 08:27:34', '0', '0', '2015-12-01 08:27:34', null);
INSERT INTO `uc_company` VALUES ('1000', '1', '-1', null, null, '百融', '2015-12-01 10:54:40', '0', '0', '2015-12-01 10:54:40', null);
INSERT INTO `uc_company` VALUES ('1002', '1', '999121', null, null, 'compass11', '2015-12-02 02:19:38', '0', '10154', '2015-12-03 13:01:16', null);
INSERT INTO `uc_company` VALUES ('1004', '2', '36001019', null, null, 'compasschao', '2015-12-02 04:03:30', '0', '0', '2015-12-02 04:03:30', null);
INSERT INTO `uc_company` VALUES ('1008', '2', '999126', null, null, 'com12', '2015-12-02 13:37:53', '0', '0', '2015-12-02 13:37:53', null);
INSERT INTO `uc_company` VALUES ('1009', '2', '100092', '2222222', null, '穆萌测试', '2015-12-04 07:09:22', '0', '10173', '2017-06-21 18:09:40', null);
INSERT INTO `uc_company` VALUES ('1010', '2', '999102', null, null, '3.0hanqi', '2015-12-08 14:00:34', '0', '10182', '2017-06-23 11:11:53', null);
INSERT INTO `uc_company` VALUES ('1015', '3', '100095', null, null, 'com2', '2015-12-10 07:10:01', '0', '0', '2015-12-10 07:10:01', null);
INSERT INTO `uc_company` VALUES ('1018', '2', '100097', null, null, 'com4', '2015-12-22 15:38:27', '0', '0', '2015-12-22 15:38:27', null);
INSERT INTO `uc_company` VALUES ('1023', '2', '100098', null, null, 'hanqi2', '2016-01-12 16:32:21', '0', '0', '2016-01-12 16:32:21', null);
INSERT INTO `uc_company` VALUES ('1024', '1', '999131', null, null, 'ccss', '2016-01-13 16:32:39', '0', '0', '2016-01-13 16:32:39', null);
INSERT INTO `uc_company` VALUES ('1025', '2', '100200', null, null, 'com6', '2016-01-14 14:44:38', '0', '0', '2016-01-14 14:44:38', null);
INSERT INTO `uc_company` VALUES ('1027', '3', '100202', null, null, 'com8', '2016-01-16 20:49:59', '0', '0', '2016-01-18 19:48:16', null);
INSERT INTO `uc_company` VALUES ('1028', '1', '100203', null, null, 'com9', '2016-01-16 21:11:04', '0', '0', '2016-01-16 21:11:04', null);
INSERT INTO `uc_company` VALUES ('1031', '1', '100204', null, null, 'com10', '2016-01-18 20:29:05', '0', '0', '2016-01-18 20:29:05', null);
INSERT INTO `uc_company` VALUES ('1033', '2', '100206', null, null, 'pingfen1', '2016-02-03 14:35:59', '0', '0', '2016-02-03 14:35:59', null);
INSERT INTO `uc_company` VALUES ('1036', '2', '10000056', null, null, '收到罚单', '2016-03-16 14:59:24', '0', '0', '2016-03-16 14:59:24', null);
INSERT INTO `uc_company` VALUES ('1037', '2', '100005', null, null, 'zhongxin', '2016-03-16 15:22:45', '0', '0', '2016-03-16 15:22:45', null);
INSERT INTO `uc_company` VALUES ('1039', '1', '100099', null, null, 'com5', '2016-03-21 10:31:13', '0', '10230', '2016-03-21 11:00:46', null);
INSERT INTO `uc_company` VALUES ('1040', '2', '444333', null, null, 'zgh', '2016-03-22 13:30:03', '0', '10266', '2016-03-22 15:00:26', null);
INSERT INTO `uc_company` VALUES ('1042', '2', '333999', null, null, 'zhangjie', '2016-04-08 14:27:37', '0', '1', '2017-02-14 09:59:33', null);
INSERT INTO `uc_company` VALUES ('1043', '2', '3000055', null, null, '罗盘无审批', '2016-04-08 18:15:31', '0', '0', '2016-04-08 18:15:31', null);
INSERT INTO `uc_company` VALUES ('1044', '3', '999991', null, null, 'demo', '2016-04-12 16:01:43', '0', '0', '2016-04-12 16:01:43', null);
INSERT INTO `uc_company` VALUES ('1045', '1', '999886', null, null, '张张张', '2016-04-12 16:07:26', '0', '0', '2016-04-12 16:07:26', null);
INSERT INTO `uc_company` VALUES ('1046', '2', '999133', null, null, '贷中添加', '2016-04-13 00:15:03', '0', '0', '2016-04-13 00:15:03', null);
INSERT INTO `uc_company` VALUES ('1047', '1', '100054', null, null, 'jinyuanbao_test', '2016-04-19 14:05:36', '0', '0', '2016-04-19 14:05:36', null);
INSERT INTO `uc_company` VALUES ('1048', '1', '100100', null, null, 'bfd', '2016-04-19 14:08:12', '0', '0', '2016-04-19 14:08:12', null);
INSERT INTO `uc_company` VALUES ('1049', '2', '100008', null, null, 'wecash', '2016-04-19 19:47:24', '0', '0', '2016-04-19 19:47:24', null);
INSERT INTO `uc_company` VALUES ('1050', '1', '999142', null, null, 'new1', '2016-04-19 20:25:33', '0', '0', '2016-04-19 20:25:33', null);
INSERT INTO `uc_company` VALUES ('1051', '1', '999143', null, null, 'new2', '2016-04-20 11:57:21', '0', '0', '2016-04-20 11:57:21', null);
INSERT INTO `uc_company` VALUES ('1053', '2', '100016', null, null, 'kuake', '2016-04-20 17:30:57', '0', '0', '2016-04-20 17:30:57', null);
INSERT INTO `uc_company` VALUES ('1054', '2', '100001', null, null, 'minsheng', '2016-04-21 20:54:25', '0', '0', '2016-04-21 20:54:25', null);
INSERT INTO `uc_company` VALUES ('1055', '2', '100002', null, null, 'pingan', '2016-04-21 21:01:32', '0', '0', '2016-04-21 21:01:32', null);
INSERT INTO `uc_company` VALUES ('1056', '2', '100003', null, null, 'guangda', '2016-04-21 21:05:05', '0', '0', '2016-04-21 21:05:05', null);
INSERT INTO `uc_company` VALUES ('1057', '2', '100004', null, null, 'zhaoshang', '2016-04-21 21:06:43', '0', '0', '2016-04-21 21:06:43', null);
INSERT INTO `uc_company` VALUES ('1058', '2', '100009', null, null, 'wuyao', '2016-05-03 10:38:42', '0', '0', '2016-05-03 10:38:42', null);
INSERT INTO `uc_company` VALUES ('1059', '2', '111121', null, null, 'dts_jh', '2016-05-03 10:45:41', '0', '0', '2016-05-03 10:45:41', null);
INSERT INTO `uc_company` VALUES ('1060', '2', '111134', null, null, '王涵', '2016-05-03 17:15:57', '0', '0', '2016-05-03 17:15:57', null);
INSERT INTO `uc_company` VALUES ('1061', '2', '110038', null, null, 'dts_zzy', '2016-05-03 17:22:33', '0', '0', '2016-05-03 17:22:33', null);
INSERT INTO `uc_company` VALUES ('1062', '2', '100193', null, null, '阳光保险1', '2016-05-03 17:22:59', '0', '0', '2016-05-03 17:22:59', null);
INSERT INTO `uc_company` VALUES ('1063', '2', '123144', null, null, '辉军', '2016-05-03 17:25:18', '0', '0', '2016-05-03 17:25:18', null);
INSERT INTO `uc_company` VALUES ('1064', '2', '123100', null, null, '土豆', '2016-05-03 17:28:41', '0', '0', '2016-05-03 17:28:41', null);
INSERT INTO `uc_company` VALUES ('1065', '2', '400003', null, null, ' 信融贷', '2016-05-06 11:39:00', '0', '0', '2016-05-06 11:39:00', null);
INSERT INTO `uc_company` VALUES ('1066', '2', '4000003', null, null, '信融贷真', '2016-05-06 17:44:45', '0', '10383', '2016-05-06 17:47:12', null);
INSERT INTO `uc_company` VALUES ('1067', '3', '009988', null, null, '7878', '2016-05-17 11:45:38', '0', '0', '2016-05-17 11:45:38', null);
INSERT INTO `uc_company` VALUES ('1068', '1', '899999', null, null, '实施测试', '2016-06-25 20:11:15', '0', '0', '2016-06-25 20:11:31', null);
INSERT INTO `uc_company` VALUES ('1069', '2', '100014', null, null, '么么贷', '2016-07-18 16:08:57', '0', '0', '2016-07-18 16:08:57', null);
INSERT INTO `uc_company` VALUES ('1070', '2', '100010', null, null, '友众信业金融信息服务（上海）有限公司（人人友信）', '2016-07-18 16:14:16', '0', '0', '2016-07-18 16:14:16', null);
INSERT INTO `uc_company` VALUES ('1071', '2', '100024', null, null, '上海你我贷互联网金融信息服务有限公司', '2016-07-23 14:59:26', '0', '0', '2016-07-23 14:59:26', null);
INSERT INTO `uc_company` VALUES ('1073', '3', '3011009', null, null, '武汉金机构', '2016-09-06 10:29:47', '0', '0', '2016-09-06 10:29:47', null);
INSERT INTO `uc_company` VALUES ('1074', '1', '5000002', null, null, '罗盘商户1', '2016-09-24 11:25:50', '0', '0', '2016-09-24 11:25:50', null);
INSERT INTO `uc_company` VALUES ('1075', '2', '5000003', null, null, '罗盘商户2', '2016-09-24 12:44:07', '0', '0', '2016-09-24 12:44:07', null);
INSERT INTO `uc_company` VALUES ('1077', '1', '100033', null, null, '深圳妈妈资本管理有限公司', '2016-10-18 17:14:06', '0', '0', '2016-10-18 17:14:06', null);
INSERT INTO `uc_company` VALUES ('1078', '2', '100101', null, null, 'guoyutest', '2016-10-24 18:23:30', '0', '0', '2016-10-24 18:23:30', null);
INSERT INTO `uc_company` VALUES ('1079', '2', '100030', null, null, 'test', '2016-10-24 18:35:30', '0', '0', '2017-03-02 17:34:15', null);
INSERT INTO `uc_company` VALUES ('1088', '2', '4000019', null, null, '罗盘商户1', '2016-11-03 19:56:28', '0', '10456', '2016-11-08 15:18:03', null);
INSERT INTO `uc_company` VALUES ('1090', '2', '999333', null, null, '张洁测试2', '2016-11-24 18:39:40', '0', '0', '2016-11-24 18:39:40', null);
INSERT INTO `uc_company` VALUES ('1095', '2', '36009097', null, null, 'xiaobai', '2017-01-03 15:21:58', '0', '0', '2017-01-03 15:21:58', null);
INSERT INTO `uc_company` VALUES ('1107', '2', '4000039', null, null, '内部测试', '2017-02-27 10:42:38', '0', '0', '2017-02-27 10:42:38', null);
INSERT INTO `uc_company` VALUES ('1108', '2', '400090', null, null, 'aa', '2017-02-27 10:43:39', '0', '0', '2017-02-27 10:43:39', null);
INSERT INTO `uc_company` VALUES ('1109', '1', '3000517', null, null, ' 银客金融信息服务有限公司', '2017-03-02 14:38:16', '0', '0', '2017-03-02 14:38:16', null);
INSERT INTO `uc_company` VALUES ('1110', '1', '3000026', null, null, '深圳前海大道金融服务有限公司', '2017-03-02 14:45:01', '0', '0', '2017-03-02 14:45:01', null);
INSERT INTO `uc_company` VALUES ('1111', '2', '100032', null, null, '北京神州微融金融信息服务有限公司（神州融）', '2017-03-02 17:35:04', '0', '0', '2017-03-02 17:35:04', null);
INSERT INTO `uc_company` VALUES ('1112', '2', '100038', null, null, '新力', '2017-03-02 17:36:18', '0', '0', '2017-03-02 17:36:18', null);
INSERT INTO `uc_company` VALUES ('1113', '2', '4000065', null, null, '风险罗盘标准版迁移测试f', '2017-03-17 15:37:29', '0', '10547', '2017-03-21 17:11:06', null);
INSERT INTO `uc_company` VALUES ('1114', '2', '4000064', null, null, '风险罗盘标准版迁移测试e', '2017-03-17 15:38:17', '0', '10546', '2017-05-05 18:48:14', null);
INSERT INTO `uc_company` VALUES ('1115', '2', '4000062', null, null, '风险罗盘网页迁移测试c ', '2017-03-17 15:39:19', '0', '4000062', '2017-04-26 17:22:53', null);
INSERT INTO `uc_company` VALUES ('1116', '2', '4000063', null, null, '风险罗盘网页迁移测试d', '2017-03-17 15:40:12', '0', '0', '2017-04-26 11:39:22', null);
INSERT INTO `uc_company` VALUES ('1123', '2', '100109', null, null, '上海厚本金融信息服务有限公司', '2017-04-10 16:58:42', '0', '0', '2017-04-10 16:58:42', null);
INSERT INTO `uc_company` VALUES ('1125', '1', '100067', null, null, '天道计然（北京）信息科技有限责任公司（新有利网）', '2017-04-24 11:09:37', '0', '0', '2017-04-24 11:09:37', null);
INSERT INTO `uc_company` VALUES ('1126', '1', '100021', null, null, '北京易融德利网络科技有限公司', '2017-04-24 11:19:36', '0', '0', '2017-04-24 11:19:36', null);
INSERT INTO `uc_company` VALUES ('1145', '2', '4800001', null, null, '新客户1', '2017-04-26 17:31:24', '0', '10581', '2017-05-17 18:47:07', null);
INSERT INTO `uc_company` VALUES ('1146', '1', '4800002', null, null, '湖北安陆有限公司', '2017-05-03 14:19:42', '0', '0', '2017-05-03 18:11:03', null);
INSERT INTO `uc_company` VALUES ('1147', '2', '100017', null, null, '信柏', '2017-05-03 18:29:53', '0', '0', '2017-06-02 11:38:28', null);
INSERT INTO `uc_company` VALUES ('1148', '1', '551651959', '测试测试测试', null, '测试可以删除', '2017-07-18 18:49:50', '99', '99', '2017-07-18 18:49:50', null);

-- ----------------------------
-- Table structure for uc_login_log
-- ----------------------------
DROP TABLE IF EXISTS `uc_login_log`;
CREATE TABLE `uc_login_log` (
  `id` bigint(20) NOT NULL DEFAULT '0' COMMENT '主键',
  `user_id` bigint(20) DEFAULT NULL COMMENT '用户id',
  `user_agent` varchar(128) DEFAULT NULL COMMENT '浏览器标识',
  `ip_address` varchar(128) DEFAULT NULL COMMENT 'IP地址',
  `type` int(11) DEFAULT NULL COMMENT '1：网页登录2：OpenId登录',
  `login_time` datetime DEFAULT NULL COMMENT '登录时间',
  `modified_time` datetime DEFAULT NULL COMMENT '修改时间',
  `status` int(11) DEFAULT NULL COMMENT '1：正常',
  `is_delete` tinyint(4) DEFAULT NULL COMMENT '是否删除',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=COMPACT COMMENT='#br.auth';

-- ----------------------------
-- Records of uc_login_log
-- ----------------------------

-- ----------------------------
-- Table structure for uc_parameter
-- ----------------------------
DROP TABLE IF EXISTS `uc_parameter`;
CREATE TABLE `uc_parameter` (
  `parameter_id` varchar(20) COLLATE utf8_bin NOT NULL DEFAULT '' COMMENT '参数id',
  `parameter_name` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '参数名',
  `parameter_value` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '参数值',
  `parent_id` varchar(20) COLLATE utf8_bin DEFAULT NULL COMMENT '父级id',
  `remark` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '备注',
  `create_user_id` int(11) DEFAULT NULL COMMENT '创建人id',
  `create_date_time` datetime DEFAULT NULL COMMENT '创建时间',
  `modify_user_id` int(11) DEFAULT NULL COMMENT '修改人id',
  `modify_date_time` datetime DEFAULT NULL COMMENT '修改时间',
  `delete_flag` tinyint(4) DEFAULT NULL COMMENT '删除标记',
  PRIMARY KEY (`parameter_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=COMPACT COMMENT='#br.auth';

-- ----------------------------
-- Records of uc_parameter
-- ----------------------------
INSERT INTO `uc_parameter` VALUES ('100010', '', '模型算法', '0', '模型算法', null, null, null, null, null);
INSERT INTO `uc_parameter` VALUES ('100011', 'lr', '逻辑回归', '100010', '逻辑回归', null, null, null, null, null);
INSERT INTO `uc_parameter` VALUES ('100012', 'reg', '回归', '100010', '回归', null, null, null, null, null);
INSERT INTO `uc_parameter` VALUES ('100020', null, '适用客群', '0', '适用客群', null, null, null, null, null);
INSERT INTO `uc_parameter` VALUES ('100021', null, '所有客群', '100020', '所有客群', null, null, null, null, null);
INSERT INTO `uc_parameter` VALUES ('100022', null, '银行信用卡客群', '100020', '银行信用卡客群', null, null, null, null, null);
INSERT INTO `uc_parameter` VALUES ('100023', null, '线下消费贷客群', '100020', '线下消费贷客群', null, null, null, null, null);
INSERT INTO `uc_parameter` VALUES ('100024', null, '线上小额现金贷客群', '100020', '线上小额现金贷客群', null, null, null, null, null);
INSERT INTO `uc_parameter` VALUES ('100025', null, '线上大额现金贷客群', '100020', '线上大额现金贷客群', null, null, null, null, null);
INSERT INTO `uc_parameter` VALUES ('100026', null, '线下大额现金贷客群', '100020', '线下大额现金贷客群', null, null, null, null, null);
INSERT INTO `uc_parameter` VALUES ('100027', null, '信用卡代偿现金贷客群', '100020', '信用卡代偿现金贷客群', null, null, null, null, null);
INSERT INTO `uc_parameter` VALUES ('100028', null, '客制化', '100020', '客制化', null, null, null, null, null);
INSERT INTO `uc_parameter` VALUES ('100029', '其他', '其他', '100020', '其他', null, null, null, null, null);
INSERT INTO `uc_parameter` VALUES ('100030', null, '模型评价指标', '0', '模型评价指标', null, null, null, null, null);
INSERT INTO `uc_parameter` VALUES ('100031', 'psi', 'psi', '100030', 'psi', null, null, null, null, null);
INSERT INTO `uc_parameter` VALUES ('100032', 'ks', 'ks', '100030', 'ks', null, null, null, null, null);
INSERT INTO `uc_parameter` VALUES ('100033', 'auc', 'auc', '100030', 'auc', null, null, null, null, null);
INSERT INTO `uc_parameter` VALUES ('100034', 'arsqu', 'arsqu', '100030', 'arsqu', null, null, null, null, null);
INSERT INTO `uc_parameter` VALUES ('100035', 'tau', 'tau', '100030', 'tau', null, null, null, null, null);
INSERT INTO `uc_parameter` VALUES ('100040', null, 'Y值转换', '0', 'Y值转换', null, null, null, null, null);
INSERT INTO `uc_parameter` VALUES ('100041', 'equal', 'equal', '100040', 'equal', null, null, null, null, null);
INSERT INTO `uc_parameter` VALUES ('100042', 'alog', 'alog', '100040', 'alog', null, null, null, null, null);
INSERT INTO `uc_parameter` VALUES ('100043', 'alogb', 'alogb', '100040', 'alogb', null, null, null, null, null);
INSERT INTO `uc_parameter` VALUES ('100044', 'blog', 'blog', '100040', 'blog', null, null, null, null, null);
INSERT INTO `uc_parameter` VALUES ('100050', null, '产品', '0', '产品', null, null, null, null, null);
INSERT INTO `uc_parameter` VALUES ('100051', null, '贷前审核', '100050', '（产品信息切勿修改）', null, null, null, null, null);
INSERT INTO `uc_parameter` VALUES ('100052', null, '服务平台', '100050', '（产品信息切勿修改）', null, null, null, null, null);
INSERT INTO `uc_parameter` VALUES ('100053', null, '爬虫系统', '100050', '（产品信息切勿修改）', null, null, null, null, null);
INSERT INTO `uc_parameter` VALUES ('100054', null, '贷中管理', '100050', '（产品信息切勿修改）', null, null, null, null, null);
INSERT INTO `uc_parameter` VALUES ('100055', null, '规则管理', '100050', '（产品信息切勿修改）', null, null, null, null, null);

-- ----------------------------
-- Table structure for uc_product_role
-- ----------------------------
DROP TABLE IF EXISTS `uc_product_role`;
CREATE TABLE `uc_product_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rproduct_id` int(11) DEFAULT NULL,
  `role_id` int(11) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `createUserId` int(11) DEFAULT NULL,
  `updateDate` datetime DEFAULT NULL,
  `updateUserId` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of uc_product_role
-- ----------------------------

-- ----------------------------
-- Table structure for uc_resources
-- ----------------------------
DROP TABLE IF EXISTS `uc_resources`;
CREATE TABLE `uc_resources` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `icon` varchar(255) DEFAULT NULL COMMENT '资源图标',
  `product_codes` varchar(255) DEFAULT NULL COMMENT '所属产品',
  `name` varchar(24) DEFAULT NULL COMMENT '资源名字',
  `authority` varchar(64) DEFAULT NULL COMMENT '权限',
  `url` varchar(255) DEFAULT NULL COMMENT '资源路径',
  `type` int(11) DEFAULT NULL COMMENT '资源类型（1:一级菜单，2:二级菜单，3:三级菜单，4:按钮）',
  `parent_id` bigint(20) DEFAULT NULL COMMENT '父资源ID',
  `sort` int(11) DEFAULT NULL COMMENT '资源顺序',
  `created_time` datetime DEFAULT NULL COMMENT '创建时间',
  `modified_time` datetime DEFAULT NULL COMMENT '修改时间',
  `status` int(11) DEFAULT NULL COMMENT '1：正常',
  `is_delete` tinyint(4) DEFAULT NULL COMMENT '是否删除',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=88 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=COMPACT COMMENT='#br.auth';

-- ----------------------------
-- Records of uc_resources
-- ----------------------------
INSERT INTO `uc_resources` VALUES ('1', '/icon', '100051', '规则管理', 'test.*.findbyid', '/规则管理/规则管理', '1', '0', '2', '2017-07-05 14:21:23', '2017-07-20 13:42:59', '1', '0');
INSERT INTO `uc_resources` VALUES ('2', null, '', '预置规则管理', null, null, '2', '1', '1', '2017-07-05 14:19:27', '2017-07-05 14:19:27', '1', '0');
INSERT INTO `uc_resources` VALUES ('3', null, '100051', '预置规则', null, null, '3', '2', '1', '2017-07-05 14:19:27', '2017-07-05 14:19:27', '1', '0');
INSERT INTO `uc_resources` VALUES ('4', null, null, '规则变量配置', null, null, '3', '2', '2', '2017-07-05 14:19:27', '2017-07-05 14:19:27', '1', '0');
INSERT INTO `uc_resources` VALUES ('5', null, null, '规则集配置', null, null, '3', '2', '2', '2017-07-05 14:19:27', '2017-07-05 14:19:27', '1', '0');
INSERT INTO `uc_resources` VALUES ('6', null, null, '百融规则管理', null, null, '3', '2', '3', '2017-07-05 14:19:27', '2017-07-05 14:19:27', '1', '0');
INSERT INTO `uc_resources` VALUES ('7', null, null, '客制化数据', null, null, '2', '1', '2', '2017-07-05 14:19:27', '2017-07-05 14:19:27', '1', '0');
INSERT INTO `uc_resources` VALUES ('8', null, null, '定制数据管理', null, null, '3', '7', '1', '2017-07-05 14:19:27', '2017-07-05 14:19:27', '1', '0');
INSERT INTO `uc_resources` VALUES ('9', null, null, '预置数据项配置', null, null, '3', '7', '2', '2017-07-05 14:19:27', '2017-07-05 14:19:27', '1', '0');
INSERT INTO `uc_resources` VALUES ('10', null, null, '客户规则管理', null, null, '2', '1', '3', '2017-07-05 14:19:27', '2017-07-05 14:19:27', '1', '0');
INSERT INTO `uc_resources` VALUES ('11', null, null, '客户已启用规则', null, null, '3', '10', '1', '2017-07-05 14:19:27', '2017-07-05 14:19:27', '1', '0');
INSERT INTO `uc_resources` VALUES ('12', null, null, '标准版批处理', null, null, '3', '10', '2', '2017-07-05 14:19:28', '2017-07-05 14:19:28', '1', '0');
INSERT INTO `uc_resources` VALUES ('13', null, null, '指定客户规则批处理', null, null, '3', '10', '3', '2017-07-05 14:19:28', '2017-07-05 14:19:28', '1', '0');
INSERT INTO `uc_resources` VALUES ('14', 'ico', '', '系统设置', 'qqqq', '/user/aa', '1', '0', '2', '2017-07-05 14:19:28', '2017-07-05 14:19:28', '1', '0');
INSERT INTO `uc_resources` VALUES ('15', null, null, '权限维护', null, null, '2', '14', '1', '2017-07-05 14:19:28', '2017-07-05 14:19:28', '1', '0');
INSERT INTO `uc_resources` VALUES ('16', null, null, '用户管理', null, null, '3', '15', '1', '2017-07-05 14:19:28', '2017-07-05 14:19:28', '1', '0');
INSERT INTO `uc_resources` VALUES ('17', null, null, '商户管理', null, null, '3', '15', '2', '2017-07-05 14:19:28', '2017-07-05 14:19:28', '1', '0');
INSERT INTO `uc_resources` VALUES ('18', null, null, '权限管理', null, null, '3', '15', '3', '2017-07-05 14:19:28', '2017-07-05 14:19:28', '1', '0');
INSERT INTO `uc_resources` VALUES ('19', null, null, '内部用户管理', null, null, '3', '15', '4', '2017-07-05 14:19:28', '2017-07-05 14:19:28', '1', '0');
INSERT INTO `uc_resources` VALUES ('20', null, null, '特殊名单', null, null, '2', '14', '2', '2017-07-05 14:19:28', '2017-07-05 14:19:28', '1', '0');
INSERT INTO `uc_resources` VALUES ('21', null, null, '黑名单管理', null, null, '3', '20', '1', '2017-07-05 14:19:28', '2017-07-05 14:19:28', '1', '0');
INSERT INTO `uc_resources` VALUES ('22', null, null, '设备白名单', null, null, '3', '20', '2', '2017-07-05 14:19:28', '2017-07-05 14:19:28', '1', '0');
INSERT INTO `uc_resources` VALUES ('23', null, null, '特殊名单统计', null, null, '3', '20', '3', '2017-07-05 14:19:28', '2017-07-05 14:19:28', '1', '0');
INSERT INTO `uc_resources` VALUES ('24', null, '', '我的', null, null, '1', '0', '3', '2017-07-05 14:19:28', '2017-07-05 14:19:28', '1', '0');
INSERT INTO `uc_resources` VALUES ('25', null, null, '消息', null, null, '2', '24', '1', '2017-07-05 14:19:28', '2017-07-05 14:19:28', '1', '0');
INSERT INTO `uc_resources` VALUES ('26', null, null, '我的消息', null, null, '3', '25', '1', '2017-07-05 14:19:28', '2017-07-05 14:19:28', '1', '0');
INSERT INTO `uc_resources` VALUES ('27', null, null, '消息管理', null, null, '3', '25', '2', '2017-07-05 14:19:28', '2017-07-05 14:19:28', '1', '0');
INSERT INTO `uc_resources` VALUES ('28', null, null, '设置', null, null, '2', '24', '2', '2017-07-05 14:19:28', '2017-07-05 14:19:28', '1', '0');
INSERT INTO `uc_resources` VALUES ('29', null, null, '密码管理', null, null, '3', '28', '1', '2017-07-05 14:19:28', '2017-07-05 14:19:28', '1', '0');
INSERT INTO `uc_resources` VALUES ('30', null, null, '个性化设置', null, null, '3', '28', '2', '2017-07-05 14:19:28', '2017-07-05 14:19:28', '1', '0');
INSERT INTO `uc_resources` VALUES ('31', null, '', '运营管理', null, null, '1', '0', '4', '2017-07-05 14:19:28', '2017-07-05 14:19:28', '1', '0');
INSERT INTO `uc_resources` VALUES ('32', null, null, '历史验证', null, null, '2', '31', '1', '2017-07-05 14:19:28', '2017-07-05 14:19:28', '1', '0');
INSERT INTO `uc_resources` VALUES ('33', null, null, '贷前审核历史', null, null, '3', '32', '1', '2017-07-05 14:19:28', '2017-07-05 14:19:28', '1', '0');
INSERT INTO `uc_resources` VALUES ('34', null, null, '贷中管理历史', null, null, '3', '32', '2', '2017-07-05 14:19:28', '2017-07-05 14:19:28', '1', '0');
INSERT INTO `uc_resources` VALUES ('35', null, '100053', '爬虫历史', null, null, '3', '32', '3', '2017-07-05 14:19:28', '2017-07-05 14:19:28', '1', '0');
INSERT INTO `uc_resources` VALUES ('36', null, null, '风向标', null, null, '2', '31', '2', '2017-07-05 14:19:28', '2017-07-05 14:19:28', '1', '0');
INSERT INTO `uc_resources` VALUES ('37', null, null, '贷前审核', null, null, '3', '36', '1', '2017-07-05 14:19:28', '2017-07-05 14:19:28', '1', '0');
INSERT INTO `uc_resources` VALUES ('38', null, null, '贷中分析', null, null, '3', '36', '2', '2017-07-05 14:19:28', '2017-07-05 14:19:28', '1', '0');
INSERT INTO `uc_resources` VALUES ('39', null, null, '贷后分析', null, null, '3', '36', '3', '2017-07-05 14:19:28', '2017-07-05 14:19:28', '1', '0');
INSERT INTO `uc_resources` VALUES ('40', null, null, '模型分析', null, null, '2', '31', '3', '2017-07-05 14:19:28', '2017-07-05 14:19:28', '1', '0');
INSERT INTO `uc_resources` VALUES ('41', null, null, '模型监控', null, null, '3', '40', '1', '2017-07-05 14:19:28', '2017-07-05 14:19:28', '1', '0');
INSERT INTO `uc_resources` VALUES ('42', null, '100051', '贷前审核', null, null, '1', '0', '5', '2017-07-05 14:19:28', '2017-07-05 14:19:28', '1', '0');
INSERT INTO `uc_resources` VALUES ('43', null, null, '风险评估', null, null, '2', '42', '1', '2017-07-05 14:19:28', '2017-07-05 14:19:28', '1', '0');
INSERT INTO `uc_resources` VALUES ('44', null, null, '客户分析报告', null, null, '3', '43', '1', '2017-07-05 14:19:28', '2017-07-05 14:19:28', '1', '0');
INSERT INTO `uc_resources` VALUES ('45', null, null, '信息验证', null, null, '3', '43', '2', '2017-07-05 14:19:28', '2017-07-05 14:19:28', '1', '0');
INSERT INTO `uc_resources` VALUES ('46', null, null, '规则中心', null, null, '3', '43', '3', '2017-07-05 14:19:28', '2017-07-05 14:19:28', '1', '0');
INSERT INTO `uc_resources` VALUES ('47', null, null, '使用量统计', null, null, '3', '43', '4', '2017-07-05 14:19:28', '2017-07-05 14:19:28', '1', '0');
INSERT INTO `uc_resources` VALUES ('48', null, null, '风向标', null, null, '2', '42', '2', '2017-07-05 14:19:28', '2017-07-05 14:19:28', '1', '0');
INSERT INTO `uc_resources` VALUES ('49', null, null, '风险趋势', null, null, '3', '48', '1', '2017-07-05 14:19:28', '2017-07-05 14:19:28', '1', '0');
INSERT INTO `uc_resources` VALUES ('50', null, null, '规则集分析', null, null, '3', '48', '2', '2017-07-05 14:19:28', '2017-07-05 14:19:28', '1', '0');
INSERT INTO `uc_resources` VALUES ('51', null, null, '信用分分析', null, null, '3', '48', '3', '2017-07-05 14:19:28', '2017-07-05 14:19:28', '1', '0');
INSERT INTO `uc_resources` VALUES ('52', null, '100052', '服务平台', null, null, '1', '0', '6', '2017-07-05 14:19:28', '2017-07-05 14:19:28', '1', '0');
INSERT INTO `uc_resources` VALUES ('53', null, null, '监控中心', null, null, '2', '52', '1', '2017-07-05 14:19:28', '2017-07-05 14:19:28', '1', '0');
INSERT INTO `uc_resources` VALUES ('54', null, null, '数据产品使用统计/周报', null, null, '3', '53', '1', '2017-07-05 14:19:28', '2017-07-05 14:19:28', '1', '0');
INSERT INTO `uc_resources` VALUES ('55', null, null, '模型监控', null, null, '3', '53', '2', '2017-07-05 14:19:28', '2017-07-05 14:19:28', '1', '0');
INSERT INTO `uc_resources` VALUES ('56', null, null, '规则监控', null, null, '3', '53', '3', '2017-07-05 14:19:28', '2017-07-05 14:19:28', '1', '0');
INSERT INTO `uc_resources` VALUES ('57', null, null, '配置中心', null, null, '2', '52', '2', '2017-07-05 14:19:28', '2017-07-05 14:19:28', '1', '0');
INSERT INTO `uc_resources` VALUES ('58', null, null, '模型引擎', null, null, '3', '57', '1', '2017-07-05 14:19:28', '2017-07-05 14:19:28', '1', '0');
INSERT INTO `uc_resources` VALUES ('59', null, null, '规则配置', null, null, '3', '57', '2', '2017-07-05 14:19:28', '2017-07-05 14:19:28', '1', '0');
INSERT INTO `uc_resources` VALUES ('60', null, null, '历史追溯', null, null, '2', '52', '3', '2017-07-05 14:19:28', '2017-07-05 14:19:28', '1', '0');
INSERT INTO `uc_resources` VALUES ('61', null, null, '设备——事件查询与跟踪', null, null, '3', '60', '1', '2017-07-05 14:19:28', '2017-07-05 14:19:28', '1', '0');
INSERT INTO `uc_resources` VALUES ('62', null, null, '关系图谱', null, null, '3', '60', '2', '2017-07-05 14:19:28', '2017-07-05 14:19:28', '1', '0');
INSERT INTO `uc_resources` VALUES ('63', null, null, '策略沙盘', 'auth.findbyid.*', '/auth/findbyid/1', '2', '52', '4', '2017-07-05 14:19:28', '2017-07-05 14:19:28', '1', '0');
INSERT INTO `uc_resources` VALUES ('64', null, null, '策略沙盘', null, null, '3', '63', '1', '2017-07-05 14:19:28', '2017-07-05 14:19:28', '1', '0');
INSERT INTO `uc_resources` VALUES ('65', null, '100053', '爬虫系统', null, null, '1', '0', '7', '2017-07-05 14:19:28', '2017-07-05 14:19:28', '1', '0');
INSERT INTO `uc_resources` VALUES ('66', null, null, '贷中', null, null, '2', '65', '1', '2017-07-05 14:19:28', '2017-07-05 14:19:28', '1', '0');
INSERT INTO `uc_resources` VALUES ('67', null, null, '授权产品(产品使用说明)', null, null, '3', '66', '1', '2017-07-05 14:19:28', '2017-07-05 14:19:28', '1', '0');
INSERT INTO `uc_resources` VALUES ('68', null, null, '授权历史', null, null, '3', '66', '2', '2017-07-05 14:19:28', '2017-07-05 14:19:28', '1', '0');
INSERT INTO `uc_resources` VALUES ('69', null, null, '规则配置', null, null, '3', '66', '3', '2017-07-05 14:19:28', '2017-07-05 14:19:28', '1', '0');
INSERT INTO `uc_resources` VALUES ('70', null, null, '风向标', null, null, '2', '65', '2', '2017-07-05 14:19:28', '2017-07-05 14:19:28', '1', '0');
INSERT INTO `uc_resources` VALUES ('71', null, null, '风险趋势', null, null, '3', '70', '1', '2017-07-05 14:19:28', '2017-07-05 14:19:28', '1', '0');
INSERT INTO `uc_resources` VALUES ('72', null, null, '规则集分析', null, null, '3', '70', '2', '2017-07-05 14:19:28', '2017-07-05 14:19:28', '1', '0');
INSERT INTO `uc_resources` VALUES ('73', null, null, '操作日志', null, null, '2', '65', '3', '2017-07-05 14:19:28', '2017-07-05 14:19:28', '1', '0');
INSERT INTO `uc_resources` VALUES ('74', null, null, '使用量统计', null, null, '3', '73', '1', '2017-07-05 14:19:28', '2017-07-05 14:19:28', '1', '0');
INSERT INTO `uc_resources` VALUES ('75', null, null, '统计日志', null, null, '3', '73', '2', '2017-07-05 14:19:28', '2017-07-05 14:19:28', '1', '0');
INSERT INTO `uc_resources` VALUES ('76', null, '100054', '贷中管理', null, null, '1', '0', '8', '2017-07-05 14:19:28', '2017-07-05 14:19:28', '1', '0');
INSERT INTO `uc_resources` VALUES ('77', null, null, '贷中', null, null, '2', '76', '1', '2017-07-05 14:19:28', '2017-07-05 14:19:28', '1', '0');
INSERT INTO `uc_resources` VALUES ('78', null, null, '预警信息', null, null, '3', '77', '1', '2017-07-05 14:19:28', '2017-07-05 14:19:28', '1', '0');
INSERT INTO `uc_resources` VALUES ('79', null, null, '监控名单', null, null, '3', '77', '2', '2017-07-05 14:19:28', '2017-07-05 14:19:28', '1', '0');
INSERT INTO `uc_resources` VALUES ('80', null, null, '规则配置', null, null, '3', '77', '3', '2017-07-05 14:19:28', '2017-07-05 14:19:28', '1', '0');
INSERT INTO `uc_resources` VALUES ('81', null, null, '风向标', null, null, '2', '76', '2', '2017-07-05 14:19:28', '2017-07-05 14:19:28', '1', '0');
INSERT INTO `uc_resources` VALUES ('82', null, null, '风险趋势', null, null, '3', '81', '1', '2017-07-05 14:19:28', '2017-07-05 14:19:28', '1', '0');
INSERT INTO `uc_resources` VALUES ('83', null, null, '规则集分析', null, null, '3', '81', '2', '2017-07-05 14:19:28', '2017-07-05 14:19:28', '1', '0');
INSERT INTO `uc_resources` VALUES ('84', null, null, '操作日志', null, null, '2', '76', '3', '2017-07-05 14:19:29', '2017-07-05 14:19:29', '1', '0');
INSERT INTO `uc_resources` VALUES ('85', null, null, '使用量统计', null, null, '3', '84', '1', '2017-07-05 14:19:29', '2017-07-05 14:19:29', '1', '0');
INSERT INTO `uc_resources` VALUES ('86', null, null, '统计日志', null, null, '3', '84', '2', '2017-07-05 14:19:29', '2017-07-05 14:19:29', '1', '0');
INSERT INTO `uc_resources` VALUES ('87', null, null, '角色管理', null, null, '3', '15', '5', '2017-07-26 17:32:57', '2017-07-26 17:32:57', '1', '0');

-- ----------------------------
-- Table structure for uc_resources_bak
-- ----------------------------
DROP TABLE IF EXISTS `uc_resources_bak`;
CREATE TABLE `uc_resources_bak` (
  `id` bigint(20) NOT NULL DEFAULT '0' COMMENT '主键ID',
  `icon` varchar(255) DEFAULT NULL COMMENT '资源图标',
  `product_codes` varchar(255) DEFAULT NULL COMMENT '所属产品',
  `name` varchar(24) DEFAULT NULL COMMENT '资源名字',
  `authority` varchar(64) DEFAULT NULL COMMENT '权限',
  `url` varchar(255) DEFAULT NULL COMMENT '资源路径',
  `type` int(11) DEFAULT NULL COMMENT '资源类型（1:一级菜单，2:二级菜单，3:三级菜单，4:按钮）',
  `parent_id` bigint(20) DEFAULT NULL COMMENT '父资源ID',
  `sort` int(11) DEFAULT NULL COMMENT '资源顺序',
  `created_time` datetime DEFAULT NULL COMMENT '创建时间',
  `modified_time` datetime DEFAULT NULL COMMENT '修改时间',
  `status` int(11) DEFAULT NULL COMMENT '1：正常',
  `is_delete` tinyint(4) DEFAULT NULL COMMENT '是否删除',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=COMPACT COMMENT='#br.auth';

-- ----------------------------
-- Records of uc_resources_bak
-- ----------------------------
INSERT INTO `uc_resources_bak` VALUES ('1', null, null, '规则管理', null, null, '1', '0', '1', '2017-07-05 14:21:23', '2017-07-05 14:21:23', '1', '0');
INSERT INTO `uc_resources_bak` VALUES ('2', null, null, '预置规则管理', null, null, '2', '1', '1', '2017-07-05 14:19:27', '2017-07-05 14:19:27', '1', '0');
INSERT INTO `uc_resources_bak` VALUES ('3', null, null, '预置规则', null, null, '3', '2', '1', '2017-07-05 14:19:27', '2017-07-05 14:19:27', '1', '0');
INSERT INTO `uc_resources_bak` VALUES ('4', null, null, '规则变量配置', null, null, '3', '2', '2', '2017-07-05 14:19:27', '2017-07-05 14:19:27', '1', '0');
INSERT INTO `uc_resources_bak` VALUES ('5', null, null, '规则集配置', null, null, '3', '2', '2', '2017-07-05 14:19:27', '2017-07-05 14:19:27', '1', '0');
INSERT INTO `uc_resources_bak` VALUES ('6', null, null, '百融规则管理', null, null, '3', '2', '3', '2017-07-05 14:19:27', '2017-07-05 14:19:27', '1', '0');
INSERT INTO `uc_resources_bak` VALUES ('7', null, null, '客制化数据', null, null, '2', '1', '2', '2017-07-05 14:19:27', '2017-07-05 14:19:27', '1', '0');
INSERT INTO `uc_resources_bak` VALUES ('8', null, null, '定制数据管理', null, null, '3', '7', '1', '2017-07-05 14:19:27', '2017-07-05 14:19:27', '1', '0');
INSERT INTO `uc_resources_bak` VALUES ('9', null, null, '预置数据项配置', null, null, '3', '7', '2', '2017-07-05 14:19:27', '2017-07-05 14:19:27', '1', '0');
INSERT INTO `uc_resources_bak` VALUES ('10', null, null, '客户规则管理', null, null, '2', '1', '3', '2017-07-05 14:19:27', '2017-07-05 14:19:27', '1', '0');
INSERT INTO `uc_resources_bak` VALUES ('11', null, null, '客户已启用规则', null, null, '3', '10', '1', '2017-07-05 14:19:27', '2017-07-05 14:19:27', '1', '0');
INSERT INTO `uc_resources_bak` VALUES ('12', null, null, '标准版批处理', null, null, '3', '10', '2', '2017-07-05 14:19:28', '2017-07-05 14:19:28', '1', '0');
INSERT INTO `uc_resources_bak` VALUES ('13', null, null, '指定客户规则批处理', null, null, '3', '10', '3', '2017-07-05 14:19:28', '2017-07-05 14:19:28', '1', '0');
INSERT INTO `uc_resources_bak` VALUES ('14', null, null, '系统设置', null, null, '1', '0', '2', '2017-07-05 14:19:28', '2017-07-05 14:19:28', '1', '0');
INSERT INTO `uc_resources_bak` VALUES ('15', null, null, '权限维护', null, null, '2', '14', '1', '2017-07-05 14:19:28', '2017-07-05 14:19:28', '1', '0');
INSERT INTO `uc_resources_bak` VALUES ('16', null, null, '用户管理', null, null, '3', '15', '1', '2017-07-05 14:19:28', '2017-07-05 14:19:28', '1', '0');
INSERT INTO `uc_resources_bak` VALUES ('17', null, null, '商户管理', null, null, '3', '15', '2', '2017-07-05 14:19:28', '2017-07-05 14:19:28', '1', '0');
INSERT INTO `uc_resources_bak` VALUES ('18', null, null, '权限管理', null, null, '3', '15', '3', '2017-07-05 14:19:28', '2017-07-05 14:19:28', '1', '0');
INSERT INTO `uc_resources_bak` VALUES ('19', null, null, '内部用户管理', null, null, '3', '15', '4', '2017-07-05 14:19:28', '2017-07-05 14:19:28', '1', '0');
INSERT INTO `uc_resources_bak` VALUES ('20', null, null, '特殊名单', null, null, '2', '14', '2', '2017-07-05 14:19:28', '2017-07-05 14:19:28', '1', '0');
INSERT INTO `uc_resources_bak` VALUES ('21', null, null, '黑名单管理', null, null, '3', '20', '1', '2017-07-05 14:19:28', '2017-07-05 14:19:28', '1', '0');
INSERT INTO `uc_resources_bak` VALUES ('22', null, null, '设备白名单', null, null, '3', '20', '2', '2017-07-05 14:19:28', '2017-07-05 14:19:28', '1', '0');
INSERT INTO `uc_resources_bak` VALUES ('23', null, null, '特殊名单统计', null, null, '3', '20', '3', '2017-07-05 14:19:28', '2017-07-05 14:19:28', '1', '0');
INSERT INTO `uc_resources_bak` VALUES ('24', null, null, '我的', null, null, '1', '0', '3', '2017-07-05 14:19:28', '2017-07-05 14:19:28', '1', '0');
INSERT INTO `uc_resources_bak` VALUES ('25', null, null, '消息', null, null, '2', '24', '1', '2017-07-05 14:19:28', '2017-07-05 14:19:28', '1', '0');
INSERT INTO `uc_resources_bak` VALUES ('26', null, null, '我的消息', null, null, '3', '25', '1', '2017-07-05 14:19:28', '2017-07-05 14:19:28', '1', '0');
INSERT INTO `uc_resources_bak` VALUES ('27', null, null, '消息管理', null, null, '3', '25', '2', '2017-07-05 14:19:28', '2017-07-05 14:19:28', '1', '0');
INSERT INTO `uc_resources_bak` VALUES ('28', null, null, '设置', null, null, '2', '24', '2', '2017-07-05 14:19:28', '2017-07-05 14:19:28', '1', '0');
INSERT INTO `uc_resources_bak` VALUES ('29', null, null, '密码管理', null, null, '3', '28', '1', '2017-07-05 14:19:28', '2017-07-05 14:19:28', '1', '0');
INSERT INTO `uc_resources_bak` VALUES ('30', null, null, '个性化设置', null, null, '3', '28', '2', '2017-07-05 14:19:28', '2017-07-05 14:19:28', '1', '0');
INSERT INTO `uc_resources_bak` VALUES ('31', null, null, '运营管理', null, null, '1', '0', '4', '2017-07-05 14:19:28', '2017-07-05 14:19:28', '1', '0');
INSERT INTO `uc_resources_bak` VALUES ('32', null, null, '历史验证', null, null, '2', '31', '1', '2017-07-05 14:19:28', '2017-07-05 14:19:28', '1', '0');
INSERT INTO `uc_resources_bak` VALUES ('33', null, null, '贷前审核历史', null, null, '3', '32', '1', '2017-07-05 14:19:28', '2017-07-05 14:19:28', '1', '0');
INSERT INTO `uc_resources_bak` VALUES ('34', null, null, '贷中管理历史', null, null, '3', '32', '2', '2017-07-05 14:19:28', '2017-07-05 14:19:28', '1', '0');
INSERT INTO `uc_resources_bak` VALUES ('35', null, null, '爬虫历史', null, null, '3', '32', '3', '2017-07-05 14:19:28', '2017-07-05 14:19:28', '1', '0');
INSERT INTO `uc_resources_bak` VALUES ('36', null, null, '风向标', null, null, '2', '31', '2', '2017-07-05 14:19:28', '2017-07-05 14:19:28', '1', '0');
INSERT INTO `uc_resources_bak` VALUES ('37', null, null, '贷前审核', null, null, '3', '36', '1', '2017-07-05 14:19:28', '2017-07-05 14:19:28', '1', '0');
INSERT INTO `uc_resources_bak` VALUES ('38', null, null, '贷中分析', null, null, '3', '36', '2', '2017-07-05 14:19:28', '2017-07-05 14:19:28', '1', '0');
INSERT INTO `uc_resources_bak` VALUES ('39', null, null, '贷后分析', null, null, '3', '36', '3', '2017-07-05 14:19:28', '2017-07-05 14:19:28', '1', '0');
INSERT INTO `uc_resources_bak` VALUES ('40', null, null, '模型分析', null, null, '2', '31', '3', '2017-07-05 14:19:28', '2017-07-05 14:19:28', '1', '0');
INSERT INTO `uc_resources_bak` VALUES ('41', null, null, '模型监控', null, null, '3', '40', '1', '2017-07-05 14:19:28', '2017-07-05 14:19:28', '1', '0');
INSERT INTO `uc_resources_bak` VALUES ('42', null, null, '贷前审核', null, null, '1', '0', '5', '2017-07-05 14:19:28', '2017-07-05 14:19:28', '1', '0');
INSERT INTO `uc_resources_bak` VALUES ('43', null, null, '风险评估', null, null, '2', '42', '1', '2017-07-05 14:19:28', '2017-07-05 14:19:28', '1', '0');
INSERT INTO `uc_resources_bak` VALUES ('44', null, null, '客户分析报告', null, null, '3', '43', '1', '2017-07-05 14:19:28', '2017-07-05 14:19:28', '1', '0');
INSERT INTO `uc_resources_bak` VALUES ('45', null, null, '信息验证', null, null, '3', '43', '2', '2017-07-05 14:19:28', '2017-07-05 14:19:28', '1', '0');
INSERT INTO `uc_resources_bak` VALUES ('46', null, null, '规则中心', null, null, '3', '43', '3', '2017-07-05 14:19:28', '2017-07-05 14:19:28', '1', '0');
INSERT INTO `uc_resources_bak` VALUES ('47', null, null, '使用量统计', null, null, '3', '43', '4', '2017-07-05 14:19:28', '2017-07-05 14:19:28', '1', '0');
INSERT INTO `uc_resources_bak` VALUES ('48', null, null, '风向标', null, null, '2', '42', '2', '2017-07-05 14:19:28', '2017-07-05 14:19:28', '1', '0');
INSERT INTO `uc_resources_bak` VALUES ('49', null, null, '风险趋势', null, null, '3', '48', '1', '2017-07-05 14:19:28', '2017-07-05 14:19:28', '1', '0');
INSERT INTO `uc_resources_bak` VALUES ('50', null, null, '规则集分析', null, null, '3', '48', '2', '2017-07-05 14:19:28', '2017-07-05 14:19:28', '1', '0');
INSERT INTO `uc_resources_bak` VALUES ('51', null, null, '信用分分析', null, null, '3', '48', '3', '2017-07-05 14:19:28', '2017-07-05 14:19:28', '1', '0');
INSERT INTO `uc_resources_bak` VALUES ('52', null, null, '服务平台', null, null, '1', '0', '6', '2017-07-05 14:19:28', '2017-07-05 14:19:28', '1', '0');
INSERT INTO `uc_resources_bak` VALUES ('53', null, null, '监控中心', null, null, '2', '52', '1', '2017-07-05 14:19:28', '2017-07-05 14:19:28', '1', '0');
INSERT INTO `uc_resources_bak` VALUES ('54', null, null, '数据产品使用统计/周报', null, null, '3', '53', '1', '2017-07-05 14:19:28', '2017-07-05 14:19:28', '1', '0');
INSERT INTO `uc_resources_bak` VALUES ('55', null, null, '模型监控', null, null, '3', '53', '2', '2017-07-05 14:19:28', '2017-07-05 14:19:28', '1', '0');
INSERT INTO `uc_resources_bak` VALUES ('56', null, null, '规则监控', null, null, '3', '53', '3', '2017-07-05 14:19:28', '2017-07-05 14:19:28', '1', '0');
INSERT INTO `uc_resources_bak` VALUES ('57', null, null, '配置中心', null, null, '2', '52', '2', '2017-07-05 14:19:28', '2017-07-05 14:19:28', '1', '0');
INSERT INTO `uc_resources_bak` VALUES ('58', null, null, '模型引擎', null, null, '3', '57', '1', '2017-07-05 14:19:28', '2017-07-05 14:19:28', '1', '0');
INSERT INTO `uc_resources_bak` VALUES ('59', null, null, '规则配置', null, null, '3', '57', '2', '2017-07-05 14:19:28', '2017-07-05 14:19:28', '1', '0');
INSERT INTO `uc_resources_bak` VALUES ('60', null, null, '历史追溯', null, null, '2', '52', '3', '2017-07-05 14:19:28', '2017-07-05 14:19:28', '1', '0');
INSERT INTO `uc_resources_bak` VALUES ('61', null, null, '设备——事件查询与跟踪', null, null, '3', '60', '1', '2017-07-05 14:19:28', '2017-07-05 14:19:28', '1', '0');
INSERT INTO `uc_resources_bak` VALUES ('62', null, null, '关系图谱', null, null, '3', '60', '2', '2017-07-05 14:19:28', '2017-07-05 14:19:28', '1', '0');
INSERT INTO `uc_resources_bak` VALUES ('63', null, null, '策略沙盘', null, null, '2', '52', '4', '2017-07-05 14:19:28', '2017-07-05 14:19:28', '1', '0');
INSERT INTO `uc_resources_bak` VALUES ('64', null, null, '策略沙盘', null, null, '3', '63', '1', '2017-07-05 14:19:28', '2017-07-05 14:19:28', '1', '0');
INSERT INTO `uc_resources_bak` VALUES ('65', null, null, '爬虫', null, null, '1', '0', '7', '2017-07-05 14:19:28', '2017-07-05 14:19:28', '1', '0');
INSERT INTO `uc_resources_bak` VALUES ('66', null, null, '贷中', null, null, '2', '65', '1', '2017-07-05 14:19:28', '2017-07-05 14:19:28', '1', '0');
INSERT INTO `uc_resources_bak` VALUES ('67', null, null, '授权产品(产品使用说明)', null, null, '3', '66', '1', '2017-07-05 14:19:28', '2017-07-05 14:19:28', '1', '0');
INSERT INTO `uc_resources_bak` VALUES ('68', null, null, '授权历史', null, null, '3', '66', '2', '2017-07-05 14:19:28', '2017-07-05 14:19:28', '1', '0');
INSERT INTO `uc_resources_bak` VALUES ('69', null, null, '规则配置', null, null, '3', '66', '3', '2017-07-05 14:19:28', '2017-07-05 14:19:28', '1', '0');
INSERT INTO `uc_resources_bak` VALUES ('70', null, null, '风向标', null, null, '2', '65', '2', '2017-07-05 14:19:28', '2017-07-05 14:19:28', '1', '0');
INSERT INTO `uc_resources_bak` VALUES ('71', null, null, '风险趋势', null, null, '3', '70', '1', '2017-07-05 14:19:28', '2017-07-05 14:19:28', '1', '0');
INSERT INTO `uc_resources_bak` VALUES ('72', null, null, '规则集分析', null, null, '3', '70', '2', '2017-07-05 14:19:28', '2017-07-05 14:19:28', '1', '0');
INSERT INTO `uc_resources_bak` VALUES ('73', null, null, '操作日志', null, null, '2', '65', '3', '2017-07-05 14:19:28', '2017-07-05 14:19:28', '1', '0');
INSERT INTO `uc_resources_bak` VALUES ('74', null, null, '使用量统计', null, null, '3', '73', '1', '2017-07-05 14:19:28', '2017-07-05 14:19:28', '1', '0');
INSERT INTO `uc_resources_bak` VALUES ('75', null, null, '统计日志', null, null, '3', '73', '2', '2017-07-05 14:19:28', '2017-07-05 14:19:28', '1', '0');
INSERT INTO `uc_resources_bak` VALUES ('76', null, null, '贷中管理', null, null, '1', '0', '8', '2017-07-05 14:19:28', '2017-07-05 14:19:28', '1', '0');
INSERT INTO `uc_resources_bak` VALUES ('77', null, null, '贷中', null, null, '2', '76', '1', '2017-07-05 14:19:28', '2017-07-05 14:19:28', '1', '0');
INSERT INTO `uc_resources_bak` VALUES ('78', null, null, '预警信息', null, null, '3', '77', '1', '2017-07-05 14:19:28', '2017-07-05 14:19:28', '1', '0');
INSERT INTO `uc_resources_bak` VALUES ('79', null, null, '监控名单', null, null, '3', '77', '2', '2017-07-05 14:19:28', '2017-07-05 14:19:28', '1', '0');
INSERT INTO `uc_resources_bak` VALUES ('80', null, null, '规则配置', null, null, '3', '77', '3', '2017-07-05 14:19:28', '2017-07-05 14:19:28', '1', '0');
INSERT INTO `uc_resources_bak` VALUES ('81', null, null, '风向标', null, null, '2', '76', '2', '2017-07-05 14:19:28', '2017-07-05 14:19:28', '1', '0');
INSERT INTO `uc_resources_bak` VALUES ('82', null, null, '风险趋势', null, null, '3', '81', '1', '2017-07-05 14:19:28', '2017-07-05 14:19:28', '1', '0');
INSERT INTO `uc_resources_bak` VALUES ('83', null, null, '规则集分析', null, null, '3', '81', '2', '2017-07-05 14:19:28', '2017-07-05 14:19:28', '1', '0');
INSERT INTO `uc_resources_bak` VALUES ('84', null, null, '操作日志', null, null, '2', '76', '3', '2017-07-05 14:19:29', '2017-07-05 14:19:29', '1', '0');
INSERT INTO `uc_resources_bak` VALUES ('85', null, null, '使用量统计', null, null, '3', '84', '1', '2017-07-05 14:19:29', '2017-07-05 14:19:29', '1', '0');
INSERT INTO `uc_resources_bak` VALUES ('86', null, null, '统计日志', null, null, '3', '84', '2', '2017-07-05 14:19:29', '2017-07-05 14:19:29', '1', '0');

-- ----------------------------
-- Table structure for uc_role
-- ----------------------------
DROP TABLE IF EXISTS `uc_role`;
CREATE TABLE `uc_role` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `api_code` varchar(255) DEFAULT NULL,
  `name` varchar(24) DEFAULT NULL COMMENT '角色名字(英文）',
  `name_remark` varchar(200) DEFAULT NULL COMMENT '角色描述',
  `created_time` datetime DEFAULT NULL COMMENT '创建时间',
  `modified_time` datetime DEFAULT NULL COMMENT '修改时间',
  `status` int(11) DEFAULT NULL COMMENT '1:正常',
  `is_delete` tinyint(4) DEFAULT NULL COMMENT '是否删除',
  `product_code` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=COMPACT COMMENT='#br.auth';

-- ----------------------------
-- Records of uc_role
-- ----------------------------
INSERT INTO `uc_role` VALUES ('1', null, '百融管理员', '用户管理-风向标-修改密码-帮助', '2017-07-06 16:22:22', '2017-07-24 11:32:35', '1', '1', '');
INSERT INTO `uc_role` VALUES ('2', null, 'admin', '商户管理员', '2017-06-08 12:40:53', '2017-07-10 19:03:52', '1', '0', '');
INSERT INTO `uc_role` VALUES ('3', null, '分析师(有审批)', '风向标-修改密码-帮助', '2017-07-06 15:13:14', '2017-07-10 19:03:52', '1', '0', '');
INSERT INTO `uc_role` VALUES ('4', null, '规则管理员', '规则集-修改密码-帮助', '2017-07-06 16:22:22', '2017-07-06 16:22:22', '1', '0', null);
INSERT INTO `uc_role` VALUES ('5', '', '审批员', '贷前管理-修改密码-帮助', '2017-07-06 16:22:22', '2017-07-10 19:03:33', '1', '0', null);
INSERT INTO `uc_role` VALUES ('6', null, '系统管理员(有审批)', '用户管理-贷前管理-规则中心-风向标-修改密码-帮助-用户通知', '2017-07-06 16:22:22', '2017-07-06 16:22:22', '1', '0', null);
INSERT INTO `uc_role` VALUES ('7', null, '分析师（无审批）', '风向标-修改密码-帮助中心-用户通知', '2017-07-06 16:22:22', '2017-07-06 16:22:22', '1', '0', null);
INSERT INTO `uc_role` VALUES ('8', null, '系统管理员(无审批)', '用户管理-风向标-修改密码-帮助中心（无审批）', '2017-07-06 16:22:22', '2017-07-06 16:22:22', '1', '0', null);
INSERT INTO `uc_role` VALUES ('9', null, '贷中管理员', '', '2017-07-06 16:22:22', '2017-07-06 16:22:22', '1', '0', '100054');
INSERT INTO `uc_role` VALUES ('10', null, '百融规则管理员', null, '2017-07-06 16:22:22', '2017-07-06 16:22:22', '1', '0', null);
INSERT INTO `uc_role` VALUES ('11', null, '百融运营管理员', null, '2017-07-06 16:22:22', '2017-07-06 16:22:22', '1', '0', null);
INSERT INTO `uc_role` VALUES ('12', null, '标准版管理员', '用户管理-贷前管理-规则中心-风向标-修改密码-', '2017-07-06 16:22:22', '2017-07-06 16:22:22', '1', '0', null);
INSERT INTO `uc_role` VALUES ('13', null, '标准版审批员', null, '2017-07-06 16:22:22', '2017-07-06 16:22:22', '1', '0', null);
INSERT INTO `uc_role` VALUES ('14', null, '标准版规则管理员', null, '2017-07-06 16:22:22', '2017-07-06 16:22:22', '1', '0', null);
INSERT INTO `uc_role` VALUES ('24', '', '百融模型管理员', '百融模型管理员', '2017-07-18 16:15:27', '2017-07-18 16:15:27', '1', '0', null);

-- ----------------------------
-- Table structure for uc_role_resources
-- ----------------------------
DROP TABLE IF EXISTS `uc_role_resources`;
CREATE TABLE `uc_role_resources` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `role_id` bigint(20) DEFAULT '0' COMMENT '角色ID',
  `resource_id` bigint(20) DEFAULT '0' COMMENT '资源ID',
  `created_time` datetime DEFAULT NULL COMMENT '创建时间',
  `modified_time` datetime DEFAULT NULL COMMENT '修改时间',
  `status` int(11) DEFAULT '1' COMMENT '1：正常',
  `is_delete` tinyint(4) DEFAULT '0' COMMENT '是否删除',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=347 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of uc_role_resources
-- ----------------------------
INSERT INTO `uc_role_resources` VALUES ('1', '1', '1', '2017-07-26 17:15:40', '2017-07-26 17:15:40', '1', '0');
INSERT INTO `uc_role_resources` VALUES ('2', '1', '2', '2017-07-26 17:15:40', '2017-07-26 17:15:40', '1', '0');
INSERT INTO `uc_role_resources` VALUES ('3', '1', '3', '2017-07-26 17:15:40', '2017-07-26 17:15:40', '1', '0');
INSERT INTO `uc_role_resources` VALUES ('4', '1', '4', '2017-07-26 17:15:40', '2017-07-26 17:15:40', '1', '0');
INSERT INTO `uc_role_resources` VALUES ('5', '1', '5', '2017-07-26 17:15:40', '2017-07-26 17:15:40', '1', '0');
INSERT INTO `uc_role_resources` VALUES ('6', '1', '6', '2017-07-26 17:15:40', '2017-07-26 17:15:40', '1', '0');
INSERT INTO `uc_role_resources` VALUES ('7', '1', '7', '2017-07-26 17:15:40', '2017-07-26 17:15:40', '1', '0');
INSERT INTO `uc_role_resources` VALUES ('8', '1', '8', '2017-07-26 17:15:40', '2017-07-26 17:15:40', '1', '0');
INSERT INTO `uc_role_resources` VALUES ('9', '1', '9', '2017-07-26 17:15:40', '2017-07-26 17:15:40', '1', '0');
INSERT INTO `uc_role_resources` VALUES ('10', '1', '10', '2017-07-26 17:15:41', '2017-07-26 17:15:41', '1', '0');
INSERT INTO `uc_role_resources` VALUES ('11', '1', '11', '2017-07-26 17:15:41', '2017-07-26 17:15:41', '1', '0');
INSERT INTO `uc_role_resources` VALUES ('12', '1', '12', '2017-07-26 17:15:41', '2017-07-26 17:15:41', '1', '0');
INSERT INTO `uc_role_resources` VALUES ('13', '1', '13', '2017-07-26 17:15:41', '2017-07-26 17:15:41', '1', '0');
INSERT INTO `uc_role_resources` VALUES ('14', '1', '14', '2017-07-26 17:15:41', '2017-07-26 17:15:41', '1', '0');
INSERT INTO `uc_role_resources` VALUES ('15', '1', '15', '2017-07-26 17:15:41', '2017-07-26 17:15:41', '1', '0');
INSERT INTO `uc_role_resources` VALUES ('16', '1', '16', '2017-07-26 17:15:41', '2017-07-26 17:15:41', '1', '0');
INSERT INTO `uc_role_resources` VALUES ('17', '1', '17', '2017-07-26 17:15:41', '2017-07-26 17:15:41', '1', '0');
INSERT INTO `uc_role_resources` VALUES ('18', '1', '18', '2017-07-26 17:15:41', '2017-07-26 17:15:41', '1', '0');
INSERT INTO `uc_role_resources` VALUES ('19', '1', '19', '2017-07-26 17:15:42', '2017-07-26 17:15:42', '1', '0');
INSERT INTO `uc_role_resources` VALUES ('20', '1', '20', '2017-07-26 17:15:42', '2017-07-26 17:15:42', '1', '0');
INSERT INTO `uc_role_resources` VALUES ('21', '1', '21', '2017-07-26 17:15:42', '2017-07-26 17:15:42', '1', '0');
INSERT INTO `uc_role_resources` VALUES ('22', '1', '22', '2017-07-26 17:15:42', '2017-07-26 17:15:42', '1', '0');
INSERT INTO `uc_role_resources` VALUES ('23', '1', '23', '2017-07-26 17:15:42', '2017-07-26 17:15:42', '1', '0');
INSERT INTO `uc_role_resources` VALUES ('24', '1', '24', '2017-07-26 17:15:42', '2017-07-26 17:15:42', '1', '0');
INSERT INTO `uc_role_resources` VALUES ('25', '1', '25', '2017-07-26 17:15:42', '2017-07-26 17:15:42', '1', '0');
INSERT INTO `uc_role_resources` VALUES ('26', '1', '26', '2017-07-26 17:15:42', '2017-07-26 17:15:42', '1', '0');
INSERT INTO `uc_role_resources` VALUES ('27', '1', '27', '2017-07-26 17:15:43', '2017-07-26 17:15:43', '1', '0');
INSERT INTO `uc_role_resources` VALUES ('28', '1', '28', '2017-07-26 17:15:43', '2017-07-26 17:15:43', '1', '0');
INSERT INTO `uc_role_resources` VALUES ('29', '1', '29', '2017-07-26 17:15:43', '2017-07-26 17:15:43', '1', '0');
INSERT INTO `uc_role_resources` VALUES ('30', '1', '30', '2017-07-26 17:15:43', '2017-07-26 17:15:43', '1', '0');
INSERT INTO `uc_role_resources` VALUES ('31', '1', '76', '2017-07-26 17:15:43', '2017-07-26 17:15:43', '1', '0');
INSERT INTO `uc_role_resources` VALUES ('32', '1', '77', '2017-07-26 17:15:43', '2017-07-26 17:15:43', '1', '0');
INSERT INTO `uc_role_resources` VALUES ('33', '1', '78', '2017-07-26 17:15:43', '2017-07-26 17:15:43', '1', '0');
INSERT INTO `uc_role_resources` VALUES ('34', '1', '79', '2017-07-26 17:15:43', '2017-07-26 17:15:43', '1', '0');
INSERT INTO `uc_role_resources` VALUES ('35', '1', '80', '2017-07-26 17:15:43', '2017-07-26 17:15:43', '1', '0');
INSERT INTO `uc_role_resources` VALUES ('36', '1', '81', '2017-07-26 17:15:43', '2017-07-26 17:15:43', '1', '0');
INSERT INTO `uc_role_resources` VALUES ('37', '1', '82', '2017-07-26 17:15:43', '2017-07-26 17:15:43', '1', '0');
INSERT INTO `uc_role_resources` VALUES ('38', '1', '83', '2017-07-26 17:15:44', '2017-07-26 17:15:44', '1', '0');
INSERT INTO `uc_role_resources` VALUES ('39', '1', '84', '2017-07-26 17:15:44', '2017-07-26 17:15:44', '1', '0');
INSERT INTO `uc_role_resources` VALUES ('40', '1', '85', '2017-07-26 17:15:44', '2017-07-26 17:15:44', '1', '0');
INSERT INTO `uc_role_resources` VALUES ('41', '1', '86', '2017-07-26 17:15:44', '2017-07-26 17:15:44', '1', '0');
INSERT INTO `uc_role_resources` VALUES ('42', '3', '24', '2017-07-26 17:18:23', '2017-07-26 17:18:23', '1', '0');
INSERT INTO `uc_role_resources` VALUES ('43', '3', '25', '2017-07-26 17:18:23', '2017-07-26 17:18:23', '1', '0');
INSERT INTO `uc_role_resources` VALUES ('44', '3', '26', '2017-07-26 17:18:23', '2017-07-26 17:18:23', '1', '0');
INSERT INTO `uc_role_resources` VALUES ('45', '3', '27', '2017-07-26 17:18:23', '2017-07-26 17:18:23', '1', '0');
INSERT INTO `uc_role_resources` VALUES ('46', '3', '28', '2017-07-26 17:18:23', '2017-07-26 17:18:23', '1', '0');
INSERT INTO `uc_role_resources` VALUES ('47', '3', '29', '2017-07-26 17:18:23', '2017-07-26 17:18:23', '1', '0');
INSERT INTO `uc_role_resources` VALUES ('48', '3', '30', '2017-07-26 17:18:23', '2017-07-26 17:18:23', '1', '0');
INSERT INTO `uc_role_resources` VALUES ('49', '3', '42', '2017-07-26 17:18:23', '2017-07-26 17:18:23', '1', '0');
INSERT INTO `uc_role_resources` VALUES ('50', '3', '48', '2017-07-26 17:18:23', '2017-07-26 17:18:23', '1', '0');
INSERT INTO `uc_role_resources` VALUES ('51', '3', '49', '2017-07-26 17:18:23', '2017-07-26 17:18:23', '1', '0');
INSERT INTO `uc_role_resources` VALUES ('52', '3', '50', '2017-07-26 17:18:23', '2017-07-26 17:18:23', '1', '0');
INSERT INTO `uc_role_resources` VALUES ('53', '3', '51', '2017-07-26 17:18:23', '2017-07-26 17:18:23', '1', '0');
INSERT INTO `uc_role_resources` VALUES ('54', '4', '1', '2017-07-26 17:22:15', '2017-07-26 17:22:15', '1', '0');
INSERT INTO `uc_role_resources` VALUES ('55', '4', '10', '2017-07-26 17:22:15', '2017-07-26 17:22:15', '1', '0');
INSERT INTO `uc_role_resources` VALUES ('56', '4', '11', '2017-07-26 17:22:15', '2017-07-26 17:22:15', '1', '0');
INSERT INTO `uc_role_resources` VALUES ('57', '4', '12', '2017-07-26 17:22:15', '2017-07-26 17:22:15', '1', '0');
INSERT INTO `uc_role_resources` VALUES ('58', '4', '13', '2017-07-26 17:22:15', '2017-07-26 17:22:15', '1', '0');
INSERT INTO `uc_role_resources` VALUES ('59', '4', '24', '2017-07-26 17:22:16', '2017-07-26 17:22:16', '1', '0');
INSERT INTO `uc_role_resources` VALUES ('60', '4', '25', '2017-07-26 17:22:16', '2017-07-26 17:22:16', '1', '0');
INSERT INTO `uc_role_resources` VALUES ('61', '4', '26', '2017-07-26 17:22:16', '2017-07-26 17:22:16', '1', '0');
INSERT INTO `uc_role_resources` VALUES ('62', '4', '27', '2017-07-26 17:22:16', '2017-07-26 17:22:16', '1', '0');
INSERT INTO `uc_role_resources` VALUES ('63', '4', '28', '2017-07-26 17:22:16', '2017-07-26 17:22:16', '1', '0');
INSERT INTO `uc_role_resources` VALUES ('64', '4', '29', '2017-07-26 17:22:16', '2017-07-26 17:22:16', '1', '0');
INSERT INTO `uc_role_resources` VALUES ('65', '4', '30', '2017-07-26 17:22:16', '2017-07-26 17:22:16', '1', '0');
INSERT INTO `uc_role_resources` VALUES ('66', '5', '24', '2017-07-26 17:23:15', '2017-07-26 17:23:15', '1', '0');
INSERT INTO `uc_role_resources` VALUES ('67', '5', '25', '2017-07-26 17:23:15', '2017-07-26 17:23:15', '1', '0');
INSERT INTO `uc_role_resources` VALUES ('68', '5', '26', '2017-07-26 17:23:16', '2017-07-26 17:23:16', '1', '0');
INSERT INTO `uc_role_resources` VALUES ('69', '5', '27', '2017-07-26 17:23:16', '2017-07-26 17:23:16', '1', '0');
INSERT INTO `uc_role_resources` VALUES ('70', '5', '28', '2017-07-26 17:23:16', '2017-07-26 17:23:16', '1', '0');
INSERT INTO `uc_role_resources` VALUES ('71', '5', '29', '2017-07-26 17:23:16', '2017-07-26 17:23:16', '1', '0');
INSERT INTO `uc_role_resources` VALUES ('72', '5', '30', '2017-07-26 17:23:16', '2017-07-26 17:23:16', '1', '0');
INSERT INTO `uc_role_resources` VALUES ('73', '5', '42', '2017-07-26 17:23:16', '2017-07-26 17:23:16', '1', '0');
INSERT INTO `uc_role_resources` VALUES ('74', '5', '43', '2017-07-26 17:23:16', '2017-07-26 17:23:16', '1', '0');
INSERT INTO `uc_role_resources` VALUES ('75', '5', '44', '2017-07-26 17:23:16', '2017-07-26 17:23:16', '1', '0');
INSERT INTO `uc_role_resources` VALUES ('76', '5', '45', '2017-07-26 17:23:16', '2017-07-26 17:23:16', '1', '0');
INSERT INTO `uc_role_resources` VALUES ('77', '5', '46', '2017-07-26 17:23:16', '2017-07-26 17:23:16', '1', '0');
INSERT INTO `uc_role_resources` VALUES ('78', '5', '47', '2017-07-26 17:23:16', '2017-07-26 17:23:16', '1', '0');
INSERT INTO `uc_role_resources` VALUES ('79', '5', '48', '2017-07-26 17:23:16', '2017-07-26 17:23:16', '1', '0');
INSERT INTO `uc_role_resources` VALUES ('80', '5', '49', '2017-07-26 17:23:17', '2017-07-26 17:23:17', '1', '0');
INSERT INTO `uc_role_resources` VALUES ('81', '5', '50', '2017-07-26 17:23:17', '2017-07-26 17:23:17', '1', '0');
INSERT INTO `uc_role_resources` VALUES ('82', '5', '51', '2017-07-26 17:23:17', '2017-07-26 17:23:17', '1', '0');
INSERT INTO `uc_role_resources` VALUES ('83', '6', '1', '2017-07-26 17:25:16', '2017-07-26 17:25:16', '1', '0');
INSERT INTO `uc_role_resources` VALUES ('84', '6', '10', '2017-07-26 17:25:16', '2017-07-26 17:25:16', '1', '0');
INSERT INTO `uc_role_resources` VALUES ('85', '6', '11', '2017-07-26 17:25:16', '2017-07-26 17:25:16', '1', '0');
INSERT INTO `uc_role_resources` VALUES ('86', '6', '12', '2017-07-26 17:25:17', '2017-07-26 17:25:17', '1', '0');
INSERT INTO `uc_role_resources` VALUES ('87', '6', '13', '2017-07-26 17:25:17', '2017-07-26 17:25:17', '1', '0');
INSERT INTO `uc_role_resources` VALUES ('88', '6', '24', '2017-07-26 17:25:17', '2017-07-26 17:25:17', '1', '0');
INSERT INTO `uc_role_resources` VALUES ('89', '6', '25', '2017-07-26 17:25:17', '2017-07-26 17:25:17', '1', '0');
INSERT INTO `uc_role_resources` VALUES ('90', '6', '26', '2017-07-26 17:25:17', '2017-07-26 17:25:17', '1', '0');
INSERT INTO `uc_role_resources` VALUES ('91', '6', '27', '2017-07-26 17:25:17', '2017-07-26 17:25:17', '1', '0');
INSERT INTO `uc_role_resources` VALUES ('92', '6', '28', '2017-07-26 17:25:17', '2017-07-26 17:25:17', '1', '0');
INSERT INTO `uc_role_resources` VALUES ('93', '6', '29', '2017-07-26 17:25:17', '2017-07-26 17:25:17', '1', '0');
INSERT INTO `uc_role_resources` VALUES ('94', '6', '30', '2017-07-26 17:25:17', '2017-07-26 17:25:17', '1', '0');
INSERT INTO `uc_role_resources` VALUES ('95', '6', '42', '2017-07-26 17:25:17', '2017-07-26 17:25:17', '1', '0');
INSERT INTO `uc_role_resources` VALUES ('96', '6', '43', '2017-07-26 17:25:17', '2017-07-26 17:25:17', '1', '0');
INSERT INTO `uc_role_resources` VALUES ('97', '6', '44', '2017-07-26 17:25:17', '2017-07-26 17:25:17', '1', '0');
INSERT INTO `uc_role_resources` VALUES ('98', '6', '45', '2017-07-26 17:25:17', '2017-07-26 17:25:17', '1', '0');
INSERT INTO `uc_role_resources` VALUES ('99', '6', '46', '2017-07-26 17:25:18', '2017-07-26 17:25:18', '1', '0');
INSERT INTO `uc_role_resources` VALUES ('100', '6', '47', '2017-07-26 17:25:18', '2017-07-26 17:25:18', '1', '0');
INSERT INTO `uc_role_resources` VALUES ('101', '6', '48', '2017-07-26 17:25:18', '2017-07-26 17:25:18', '1', '0');
INSERT INTO `uc_role_resources` VALUES ('102', '6', '49', '2017-07-26 17:25:18', '2017-07-26 17:25:18', '1', '0');
INSERT INTO `uc_role_resources` VALUES ('103', '6', '50', '2017-07-26 17:25:18', '2017-07-26 17:25:18', '1', '0');
INSERT INTO `uc_role_resources` VALUES ('104', '6', '51', '2017-07-26 17:25:18', '2017-07-26 17:25:18', '1', '0');
INSERT INTO `uc_role_resources` VALUES ('105', '6', '65', '2017-07-26 17:25:18', '2017-07-26 17:25:18', '1', '0');
INSERT INTO `uc_role_resources` VALUES ('106', '6', '66', '2017-07-26 17:25:18', '2017-07-26 17:25:18', '1', '0');
INSERT INTO `uc_role_resources` VALUES ('107', '6', '67', '2017-07-26 17:25:18', '2017-07-26 17:25:18', '1', '0');
INSERT INTO `uc_role_resources` VALUES ('108', '6', '68', '2017-07-26 17:25:19', '2017-07-26 17:25:19', '1', '0');
INSERT INTO `uc_role_resources` VALUES ('109', '6', '69', '2017-07-26 17:25:19', '2017-07-26 17:25:19', '1', '0');
INSERT INTO `uc_role_resources` VALUES ('110', '6', '70', '2017-07-26 17:25:19', '2017-07-26 17:25:19', '1', '0');
INSERT INTO `uc_role_resources` VALUES ('111', '6', '71', '2017-07-26 17:25:19', '2017-07-26 17:25:19', '1', '0');
INSERT INTO `uc_role_resources` VALUES ('112', '6', '72', '2017-07-26 17:25:19', '2017-07-26 17:25:19', '1', '0');
INSERT INTO `uc_role_resources` VALUES ('113', '6', '73', '2017-07-26 17:25:19', '2017-07-26 17:25:19', '1', '0');
INSERT INTO `uc_role_resources` VALUES ('114', '6', '74', '2017-07-26 17:25:19', '2017-07-26 17:25:19', '1', '0');
INSERT INTO `uc_role_resources` VALUES ('115', '6', '75', '2017-07-26 17:25:19', '2017-07-26 17:25:19', '1', '0');
INSERT INTO `uc_role_resources` VALUES ('116', '2', '1', '2017-07-26 17:25:49', '2017-07-26 17:25:49', '1', '0');
INSERT INTO `uc_role_resources` VALUES ('117', '2', '2', '2017-07-26 17:25:49', '2017-07-26 17:25:49', '1', '0');
INSERT INTO `uc_role_resources` VALUES ('118', '2', '3', '2017-07-26 17:25:49', '2017-07-26 17:25:49', '1', '0');
INSERT INTO `uc_role_resources` VALUES ('119', '2', '4', '2017-07-26 17:25:50', '2017-07-26 17:25:50', '1', '0');
INSERT INTO `uc_role_resources` VALUES ('120', '2', '5', '2017-07-26 17:25:50', '2017-07-26 17:25:50', '1', '0');
INSERT INTO `uc_role_resources` VALUES ('121', '2', '6', '2017-07-26 17:25:50', '2017-07-26 17:25:50', '1', '0');
INSERT INTO `uc_role_resources` VALUES ('122', '2', '7', '2017-07-26 17:25:50', '2017-07-26 17:25:50', '1', '0');
INSERT INTO `uc_role_resources` VALUES ('123', '2', '8', '2017-07-26 17:25:50', '2017-07-26 17:25:50', '1', '0');
INSERT INTO `uc_role_resources` VALUES ('124', '2', '9', '2017-07-26 17:25:50', '2017-07-26 17:25:50', '1', '0');
INSERT INTO `uc_role_resources` VALUES ('125', '2', '10', '2017-07-26 17:25:50', '2017-07-26 17:25:50', '1', '0');
INSERT INTO `uc_role_resources` VALUES ('126', '2', '11', '2017-07-26 17:25:50', '2017-07-26 17:25:50', '1', '0');
INSERT INTO `uc_role_resources` VALUES ('127', '2', '12', '2017-07-26 17:25:50', '2017-07-26 17:25:50', '1', '0');
INSERT INTO `uc_role_resources` VALUES ('128', '2', '13', '2017-07-26 17:25:50', '2017-07-26 17:25:50', '1', '0');
INSERT INTO `uc_role_resources` VALUES ('129', '2', '14', '2017-07-26 17:25:51', '2017-07-26 17:25:51', '1', '0');
INSERT INTO `uc_role_resources` VALUES ('130', '2', '15', '2017-07-26 17:25:51', '2017-07-26 17:25:51', '1', '0');
INSERT INTO `uc_role_resources` VALUES ('131', '2', '16', '2017-07-26 17:25:51', '2017-07-26 17:25:51', '1', '0');
INSERT INTO `uc_role_resources` VALUES ('132', '2', '17', '2017-07-26 17:25:51', '2017-07-26 17:25:51', '1', '0');
INSERT INTO `uc_role_resources` VALUES ('133', '2', '18', '2017-07-26 17:25:51', '2017-07-26 17:25:51', '1', '0');
INSERT INTO `uc_role_resources` VALUES ('134', '2', '19', '2017-07-26 17:25:51', '2017-07-26 17:25:51', '1', '0');
INSERT INTO `uc_role_resources` VALUES ('135', '2', '20', '2017-07-26 17:25:51', '2017-07-26 17:25:51', '1', '0');
INSERT INTO `uc_role_resources` VALUES ('136', '2', '21', '2017-07-26 17:25:51', '2017-07-26 17:25:51', '1', '0');
INSERT INTO `uc_role_resources` VALUES ('137', '2', '22', '2017-07-26 17:25:51', '2017-07-26 17:25:51', '1', '0');
INSERT INTO `uc_role_resources` VALUES ('138', '2', '23', '2017-07-26 17:25:52', '2017-07-26 17:25:52', '1', '0');
INSERT INTO `uc_role_resources` VALUES ('139', '2', '24', '2017-07-26 17:25:52', '2017-07-26 17:25:52', '1', '0');
INSERT INTO `uc_role_resources` VALUES ('140', '2', '25', '2017-07-26 17:25:52', '2017-07-26 17:25:52', '1', '0');
INSERT INTO `uc_role_resources` VALUES ('141', '2', '26', '2017-07-26 17:25:52', '2017-07-26 17:25:52', '1', '0');
INSERT INTO `uc_role_resources` VALUES ('142', '2', '27', '2017-07-26 17:25:52', '2017-07-26 17:25:52', '1', '0');
INSERT INTO `uc_role_resources` VALUES ('143', '2', '28', '2017-07-26 17:25:52', '2017-07-26 17:25:52', '1', '0');
INSERT INTO `uc_role_resources` VALUES ('144', '2', '29', '2017-07-26 17:25:52', '2017-07-26 17:25:52', '1', '0');
INSERT INTO `uc_role_resources` VALUES ('145', '2', '30', '2017-07-26 17:25:52', '2017-07-26 17:25:52', '1', '0');
INSERT INTO `uc_role_resources` VALUES ('146', '2', '31', '2017-07-26 17:25:52', '2017-07-26 17:25:52', '1', '0');
INSERT INTO `uc_role_resources` VALUES ('147', '2', '32', '2017-07-26 17:25:52', '2017-07-26 17:25:52', '1', '0');
INSERT INTO `uc_role_resources` VALUES ('148', '2', '33', '2017-07-26 17:25:52', '2017-07-26 17:25:52', '1', '0');
INSERT INTO `uc_role_resources` VALUES ('149', '2', '34', '2017-07-26 17:25:52', '2017-07-26 17:25:52', '1', '0');
INSERT INTO `uc_role_resources` VALUES ('150', '2', '35', '2017-07-26 17:25:52', '2017-07-26 17:25:52', '1', '0');
INSERT INTO `uc_role_resources` VALUES ('151', '2', '36', '2017-07-26 17:25:53', '2017-07-26 17:25:53', '1', '0');
INSERT INTO `uc_role_resources` VALUES ('152', '2', '37', '2017-07-26 17:25:53', '2017-07-26 17:25:53', '1', '0');
INSERT INTO `uc_role_resources` VALUES ('153', '2', '38', '2017-07-26 17:25:53', '2017-07-26 17:25:53', '1', '0');
INSERT INTO `uc_role_resources` VALUES ('154', '2', '39', '2017-07-26 17:25:53', '2017-07-26 17:25:53', '1', '0');
INSERT INTO `uc_role_resources` VALUES ('155', '2', '40', '2017-07-26 17:25:53', '2017-07-26 17:25:53', '1', '0');
INSERT INTO `uc_role_resources` VALUES ('156', '2', '41', '2017-07-26 17:25:53', '2017-07-26 17:25:53', '1', '0');
INSERT INTO `uc_role_resources` VALUES ('157', '2', '42', '2017-07-26 17:25:53', '2017-07-26 17:25:53', '1', '0');
INSERT INTO `uc_role_resources` VALUES ('158', '2', '43', '2017-07-26 17:25:53', '2017-07-26 17:25:53', '1', '0');
INSERT INTO `uc_role_resources` VALUES ('159', '2', '44', '2017-07-26 17:25:53', '2017-07-26 17:25:53', '1', '0');
INSERT INTO `uc_role_resources` VALUES ('160', '2', '45', '2017-07-26 17:25:53', '2017-07-26 17:25:53', '1', '0');
INSERT INTO `uc_role_resources` VALUES ('161', '2', '46', '2017-07-26 17:25:53', '2017-07-26 17:25:53', '1', '0');
INSERT INTO `uc_role_resources` VALUES ('162', '2', '47', '2017-07-26 17:25:54', '2017-07-26 17:25:54', '1', '0');
INSERT INTO `uc_role_resources` VALUES ('163', '2', '48', '2017-07-26 17:25:54', '2017-07-26 17:25:54', '1', '0');
INSERT INTO `uc_role_resources` VALUES ('164', '2', '49', '2017-07-26 17:25:54', '2017-07-26 17:25:54', '1', '0');
INSERT INTO `uc_role_resources` VALUES ('165', '2', '50', '2017-07-26 17:25:54', '2017-07-26 17:25:54', '1', '0');
INSERT INTO `uc_role_resources` VALUES ('166', '2', '51', '2017-07-26 17:25:54', '2017-07-26 17:25:54', '1', '0');
INSERT INTO `uc_role_resources` VALUES ('167', '2', '52', '2017-07-26 17:25:54', '2017-07-26 17:25:54', '1', '0');
INSERT INTO `uc_role_resources` VALUES ('168', '2', '53', '2017-07-26 17:25:54', '2017-07-26 17:25:54', '1', '0');
INSERT INTO `uc_role_resources` VALUES ('169', '2', '54', '2017-07-26 17:25:54', '2017-07-26 17:25:54', '1', '0');
INSERT INTO `uc_role_resources` VALUES ('170', '2', '55', '2017-07-26 17:25:54', '2017-07-26 17:25:54', '1', '0');
INSERT INTO `uc_role_resources` VALUES ('171', '2', '56', '2017-07-26 17:25:54', '2017-07-26 17:25:54', '1', '0');
INSERT INTO `uc_role_resources` VALUES ('172', '2', '57', '2017-07-26 17:25:54', '2017-07-26 17:25:54', '1', '0');
INSERT INTO `uc_role_resources` VALUES ('173', '2', '58', '2017-07-26 17:25:55', '2017-07-26 17:25:55', '1', '0');
INSERT INTO `uc_role_resources` VALUES ('174', '2', '59', '2017-07-26 17:25:55', '2017-07-26 17:25:55', '1', '0');
INSERT INTO `uc_role_resources` VALUES ('175', '2', '60', '2017-07-26 17:25:55', '2017-07-26 17:25:55', '1', '0');
INSERT INTO `uc_role_resources` VALUES ('176', '2', '61', '2017-07-26 17:25:55', '2017-07-26 17:25:55', '1', '0');
INSERT INTO `uc_role_resources` VALUES ('177', '2', '62', '2017-07-26 17:25:55', '2017-07-26 17:25:55', '1', '0');
INSERT INTO `uc_role_resources` VALUES ('178', '2', '63', '2017-07-26 17:25:55', '2017-07-26 17:25:55', '1', '0');
INSERT INTO `uc_role_resources` VALUES ('179', '2', '64', '2017-07-26 17:25:55', '2017-07-26 17:25:55', '1', '0');
INSERT INTO `uc_role_resources` VALUES ('180', '2', '65', '2017-07-26 17:25:55', '2017-07-26 17:25:55', '1', '0');
INSERT INTO `uc_role_resources` VALUES ('181', '2', '66', '2017-07-26 17:25:55', '2017-07-26 17:25:55', '1', '0');
INSERT INTO `uc_role_resources` VALUES ('182', '2', '67', '2017-07-26 17:25:56', '2017-07-26 17:25:56', '1', '0');
INSERT INTO `uc_role_resources` VALUES ('183', '2', '68', '2017-07-26 17:25:56', '2017-07-26 17:25:56', '1', '0');
INSERT INTO `uc_role_resources` VALUES ('184', '2', '69', '2017-07-26 17:25:56', '2017-07-26 17:25:56', '1', '0');
INSERT INTO `uc_role_resources` VALUES ('185', '2', '70', '2017-07-26 17:25:56', '2017-07-26 17:25:56', '1', '0');
INSERT INTO `uc_role_resources` VALUES ('186', '2', '71', '2017-07-26 17:25:56', '2017-07-26 17:25:56', '1', '0');
INSERT INTO `uc_role_resources` VALUES ('187', '2', '72', '2017-07-26 17:25:56', '2017-07-26 17:25:56', '1', '0');
INSERT INTO `uc_role_resources` VALUES ('188', '2', '73', '2017-07-26 17:25:56', '2017-07-26 17:25:56', '1', '0');
INSERT INTO `uc_role_resources` VALUES ('189', '2', '74', '2017-07-26 17:25:56', '2017-07-26 17:25:56', '1', '0');
INSERT INTO `uc_role_resources` VALUES ('190', '2', '75', '2017-07-26 17:25:56', '2017-07-26 17:25:56', '1', '0');
INSERT INTO `uc_role_resources` VALUES ('191', '2', '76', '2017-07-26 17:25:56', '2017-07-26 17:25:56', '1', '0');
INSERT INTO `uc_role_resources` VALUES ('192', '2', '77', '2017-07-26 17:25:56', '2017-07-26 17:25:56', '1', '0');
INSERT INTO `uc_role_resources` VALUES ('193', '2', '78', '2017-07-26 17:25:57', '2017-07-26 17:25:57', '1', '0');
INSERT INTO `uc_role_resources` VALUES ('194', '2', '79', '2017-07-26 17:25:57', '2017-07-26 17:25:57', '1', '0');
INSERT INTO `uc_role_resources` VALUES ('195', '2', '80', '2017-07-26 17:25:57', '2017-07-26 17:25:57', '1', '0');
INSERT INTO `uc_role_resources` VALUES ('196', '2', '81', '2017-07-26 17:25:57', '2017-07-26 17:25:57', '1', '0');
INSERT INTO `uc_role_resources` VALUES ('197', '2', '82', '2017-07-26 17:25:57', '2017-07-26 17:25:57', '1', '0');
INSERT INTO `uc_role_resources` VALUES ('198', '2', '83', '2017-07-26 17:25:57', '2017-07-26 17:25:57', '1', '0');
INSERT INTO `uc_role_resources` VALUES ('199', '2', '84', '2017-07-26 17:25:58', '2017-07-26 17:25:58', '1', '0');
INSERT INTO `uc_role_resources` VALUES ('200', '2', '85', '2017-07-26 17:25:58', '2017-07-26 17:25:58', '1', '0');
INSERT INTO `uc_role_resources` VALUES ('201', '2', '86', '2017-07-26 17:25:58', '2017-07-26 17:25:58', '1', '0');
INSERT INTO `uc_role_resources` VALUES ('202', '7', '24', '2017-07-26 17:27:10', '2017-07-26 17:27:10', '1', '0');
INSERT INTO `uc_role_resources` VALUES ('203', '7', '25', '2017-07-26 17:27:10', '2017-07-26 17:27:10', '1', '0');
INSERT INTO `uc_role_resources` VALUES ('204', '7', '26', '2017-07-26 17:27:10', '2017-07-26 17:27:10', '1', '0');
INSERT INTO `uc_role_resources` VALUES ('205', '7', '27', '2017-07-26 17:27:10', '2017-07-26 17:27:10', '1', '0');
INSERT INTO `uc_role_resources` VALUES ('206', '7', '28', '2017-07-26 17:27:10', '2017-07-26 17:27:10', '1', '0');
INSERT INTO `uc_role_resources` VALUES ('207', '7', '29', '2017-07-26 17:27:10', '2017-07-26 17:27:10', '1', '0');
INSERT INTO `uc_role_resources` VALUES ('208', '7', '30', '2017-07-26 17:27:10', '2017-07-26 17:27:10', '1', '0');
INSERT INTO `uc_role_resources` VALUES ('209', '7', '31', '2017-07-26 17:27:11', '2017-07-26 17:27:11', '1', '0');
INSERT INTO `uc_role_resources` VALUES ('210', '7', '36', '2017-07-26 17:27:11', '2017-07-26 17:27:11', '1', '0');
INSERT INTO `uc_role_resources` VALUES ('211', '7', '37', '2017-07-26 17:27:11', '2017-07-26 17:27:11', '1', '0');
INSERT INTO `uc_role_resources` VALUES ('212', '7', '38', '2017-07-26 17:27:11', '2017-07-26 17:27:11', '1', '0');
INSERT INTO `uc_role_resources` VALUES ('213', '7', '39', '2017-07-26 17:27:11', '2017-07-26 17:27:11', '1', '0');
INSERT INTO `uc_role_resources` VALUES ('214', '7', '42', '2017-07-26 17:27:11', '2017-07-26 17:27:11', '1', '0');
INSERT INTO `uc_role_resources` VALUES ('215', '7', '48', '2017-07-26 17:27:11', '2017-07-26 17:27:11', '1', '0');
INSERT INTO `uc_role_resources` VALUES ('216', '7', '49', '2017-07-26 17:27:11', '2017-07-26 17:27:11', '1', '0');
INSERT INTO `uc_role_resources` VALUES ('217', '7', '50', '2017-07-26 17:27:11', '2017-07-26 17:27:11', '1', '0');
INSERT INTO `uc_role_resources` VALUES ('218', '7', '51', '2017-07-26 17:27:11', '2017-07-26 17:27:11', '1', '0');
INSERT INTO `uc_role_resources` VALUES ('219', '7', '65', '2017-07-26 17:27:11', '2017-07-26 17:27:11', '1', '0');
INSERT INTO `uc_role_resources` VALUES ('220', '7', '70', '2017-07-26 17:27:11', '2017-07-26 17:27:11', '1', '0');
INSERT INTO `uc_role_resources` VALUES ('221', '7', '71', '2017-07-26 17:27:12', '2017-07-26 17:27:12', '1', '0');
INSERT INTO `uc_role_resources` VALUES ('222', '7', '72', '2017-07-26 17:27:12', '2017-07-26 17:27:12', '1', '0');
INSERT INTO `uc_role_resources` VALUES ('223', '7', '73', '2017-07-26 17:27:12', '2017-07-26 17:27:12', '1', '0');
INSERT INTO `uc_role_resources` VALUES ('224', '7', '74', '2017-07-26 17:27:12', '2017-07-26 17:27:12', '1', '0');
INSERT INTO `uc_role_resources` VALUES ('225', '7', '75', '2017-07-26 17:27:12', '2017-07-26 17:27:12', '1', '0');
INSERT INTO `uc_role_resources` VALUES ('226', '7', '76', '2017-07-26 17:27:12', '2017-07-26 17:27:12', '1', '0');
INSERT INTO `uc_role_resources` VALUES ('227', '7', '81', '2017-07-26 17:27:12', '2017-07-26 17:27:12', '1', '0');
INSERT INTO `uc_role_resources` VALUES ('228', '7', '82', '2017-07-26 17:27:12', '2017-07-26 17:27:12', '1', '0');
INSERT INTO `uc_role_resources` VALUES ('229', '7', '83', '2017-07-26 17:27:12', '2017-07-26 17:27:12', '1', '0');
INSERT INTO `uc_role_resources` VALUES ('230', '7', '84', '2017-07-26 17:27:12', '2017-07-26 17:27:12', '1', '0');
INSERT INTO `uc_role_resources` VALUES ('231', '7', '85', '2017-07-26 17:27:12', '2017-07-26 17:27:12', '1', '0');
INSERT INTO `uc_role_resources` VALUES ('232', '7', '86', '2017-07-26 17:27:13', '2017-07-26 17:27:13', '1', '0');
INSERT INTO `uc_role_resources` VALUES ('233', '8', '14', '2017-07-26 17:29:30', '2017-07-26 17:29:30', '1', '0');
INSERT INTO `uc_role_resources` VALUES ('234', '8', '15', '2017-07-26 17:29:30', '2017-07-26 17:29:30', '1', '0');
INSERT INTO `uc_role_resources` VALUES ('235', '8', '16', '2017-07-26 17:29:30', '2017-07-26 17:29:30', '1', '0');
INSERT INTO `uc_role_resources` VALUES ('236', '8', '24', '2017-07-26 17:29:30', '2017-07-26 17:29:30', '1', '0');
INSERT INTO `uc_role_resources` VALUES ('237', '8', '25', '2017-07-26 17:29:30', '2017-07-26 17:29:30', '1', '0');
INSERT INTO `uc_role_resources` VALUES ('238', '8', '26', '2017-07-26 17:29:30', '2017-07-26 17:29:30', '1', '0');
INSERT INTO `uc_role_resources` VALUES ('239', '8', '27', '2017-07-26 17:29:30', '2017-07-26 17:29:30', '1', '0');
INSERT INTO `uc_role_resources` VALUES ('240', '8', '28', '2017-07-26 17:29:30', '2017-07-26 17:29:30', '1', '0');
INSERT INTO `uc_role_resources` VALUES ('241', '8', '29', '2017-07-26 17:29:30', '2017-07-26 17:29:30', '1', '0');
INSERT INTO `uc_role_resources` VALUES ('242', '8', '30', '2017-07-26 17:29:30', '2017-07-26 17:29:30', '1', '0');
INSERT INTO `uc_role_resources` VALUES ('243', '8', '42', '2017-07-26 17:29:30', '2017-07-26 17:29:30', '1', '0');
INSERT INTO `uc_role_resources` VALUES ('244', '8', '48', '2017-07-26 17:29:30', '2017-07-26 17:29:30', '1', '0');
INSERT INTO `uc_role_resources` VALUES ('245', '8', '49', '2017-07-26 17:29:30', '2017-07-26 17:29:30', '1', '0');
INSERT INTO `uc_role_resources` VALUES ('246', '8', '50', '2017-07-26 17:29:31', '2017-07-26 17:29:31', '1', '0');
INSERT INTO `uc_role_resources` VALUES ('247', '8', '51', '2017-07-26 17:29:31', '2017-07-26 17:29:31', '1', '0');
INSERT INTO `uc_role_resources` VALUES ('248', '8', '52', '2017-07-26 17:29:31', '2017-07-26 17:29:31', '1', '0');
INSERT INTO `uc_role_resources` VALUES ('249', '8', '53', '2017-07-26 17:29:31', '2017-07-26 17:29:31', '1', '0');
INSERT INTO `uc_role_resources` VALUES ('250', '8', '54', '2017-07-26 17:29:31', '2017-07-26 17:29:31', '1', '0');
INSERT INTO `uc_role_resources` VALUES ('251', '8', '55', '2017-07-26 17:29:31', '2017-07-26 17:29:31', '1', '0');
INSERT INTO `uc_role_resources` VALUES ('252', '8', '56', '2017-07-26 17:29:31', '2017-07-26 17:29:31', '1', '0');
INSERT INTO `uc_role_resources` VALUES ('253', '8', '76', '2017-07-26 17:29:31', '2017-07-26 17:29:31', '1', '0');
INSERT INTO `uc_role_resources` VALUES ('254', '8', '77', '2017-07-26 17:29:31', '2017-07-26 17:29:31', '1', '0');
INSERT INTO `uc_role_resources` VALUES ('255', '8', '78', '2017-07-26 17:29:31', '2017-07-26 17:29:31', '1', '0');
INSERT INTO `uc_role_resources` VALUES ('256', '8', '79', '2017-07-26 17:29:31', '2017-07-26 17:29:31', '1', '0');
INSERT INTO `uc_role_resources` VALUES ('257', '8', '80', '2017-07-26 17:29:31', '2017-07-26 17:29:31', '1', '0');
INSERT INTO `uc_role_resources` VALUES ('258', '8', '81', '2017-07-26 17:29:31', '2017-07-26 17:29:31', '1', '0');
INSERT INTO `uc_role_resources` VALUES ('259', '8', '82', '2017-07-26 17:29:32', '2017-07-26 17:29:32', '1', '0');
INSERT INTO `uc_role_resources` VALUES ('260', '8', '83', '2017-07-26 17:29:32', '2017-07-26 17:29:32', '1', '0');
INSERT INTO `uc_role_resources` VALUES ('261', '11', '1', '2017-07-26 17:29:56', '2017-07-26 17:29:56', '1', '0');
INSERT INTO `uc_role_resources` VALUES ('262', '11', '2', '2017-07-26 17:29:56', '2017-07-26 17:29:56', '1', '0');
INSERT INTO `uc_role_resources` VALUES ('263', '11', '3', '2017-07-26 17:29:56', '2017-07-26 17:29:56', '1', '0');
INSERT INTO `uc_role_resources` VALUES ('264', '11', '4', '2017-07-26 17:29:56', '2017-07-26 17:29:56', '1', '0');
INSERT INTO `uc_role_resources` VALUES ('265', '11', '5', '2017-07-26 17:29:56', '2017-07-26 17:29:56', '1', '0');
INSERT INTO `uc_role_resources` VALUES ('266', '11', '6', '2017-07-26 17:29:57', '2017-07-26 17:29:57', '1', '0');
INSERT INTO `uc_role_resources` VALUES ('267', '11', '7', '2017-07-26 17:29:57', '2017-07-26 17:29:57', '1', '0');
INSERT INTO `uc_role_resources` VALUES ('268', '11', '8', '2017-07-26 17:29:57', '2017-07-26 17:29:57', '1', '0');
INSERT INTO `uc_role_resources` VALUES ('269', '11', '9', '2017-07-26 17:29:57', '2017-07-26 17:29:57', '1', '0');
INSERT INTO `uc_role_resources` VALUES ('270', '11', '10', '2017-07-26 17:29:57', '2017-07-26 17:29:57', '1', '0');
INSERT INTO `uc_role_resources` VALUES ('271', '11', '11', '2017-07-26 17:29:57', '2017-07-26 17:29:57', '1', '0');
INSERT INTO `uc_role_resources` VALUES ('272', '11', '12', '2017-07-26 17:29:58', '2017-07-26 17:29:58', '1', '0');
INSERT INTO `uc_role_resources` VALUES ('273', '11', '13', '2017-07-26 17:29:58', '2017-07-26 17:29:58', '1', '0');
INSERT INTO `uc_role_resources` VALUES ('274', '11', '14', '2017-07-26 17:29:58', '2017-07-26 17:29:58', '1', '0');
INSERT INTO `uc_role_resources` VALUES ('275', '11', '15', '2017-07-26 17:29:58', '2017-07-26 17:29:58', '1', '0');
INSERT INTO `uc_role_resources` VALUES ('276', '11', '16', '2017-07-26 17:29:58', '2017-07-26 17:29:58', '1', '0');
INSERT INTO `uc_role_resources` VALUES ('277', '11', '17', '2017-07-26 17:29:58', '2017-07-26 17:29:58', '1', '0');
INSERT INTO `uc_role_resources` VALUES ('278', '11', '18', '2017-07-26 17:29:58', '2017-07-26 17:29:58', '1', '0');
INSERT INTO `uc_role_resources` VALUES ('279', '11', '19', '2017-07-26 17:29:58', '2017-07-26 17:29:58', '1', '0');
INSERT INTO `uc_role_resources` VALUES ('280', '11', '20', '2017-07-26 17:29:59', '2017-07-26 17:29:59', '1', '0');
INSERT INTO `uc_role_resources` VALUES ('281', '11', '21', '2017-07-26 17:29:59', '2017-07-26 17:29:59', '1', '0');
INSERT INTO `uc_role_resources` VALUES ('282', '11', '22', '2017-07-26 17:29:59', '2017-07-26 17:29:59', '1', '0');
INSERT INTO `uc_role_resources` VALUES ('283', '11', '23', '2017-07-26 17:29:59', '2017-07-26 17:29:59', '1', '0');
INSERT INTO `uc_role_resources` VALUES ('284', '11', '24', '2017-07-26 17:29:59', '2017-07-26 17:29:59', '1', '0');
INSERT INTO `uc_role_resources` VALUES ('285', '11', '25', '2017-07-26 17:29:59', '2017-07-26 17:29:59', '1', '0');
INSERT INTO `uc_role_resources` VALUES ('286', '11', '26', '2017-07-26 17:29:59', '2017-07-26 17:29:59', '1', '0');
INSERT INTO `uc_role_resources` VALUES ('287', '11', '27', '2017-07-26 17:29:59', '2017-07-26 17:29:59', '1', '0');
INSERT INTO `uc_role_resources` VALUES ('288', '11', '28', '2017-07-26 17:30:00', '2017-07-26 17:30:00', '1', '0');
INSERT INTO `uc_role_resources` VALUES ('289', '11', '29', '2017-07-26 17:30:00', '2017-07-26 17:30:00', '1', '0');
INSERT INTO `uc_role_resources` VALUES ('290', '11', '30', '2017-07-26 17:30:00', '2017-07-26 17:30:00', '1', '0');
INSERT INTO `uc_role_resources` VALUES ('291', '11', '31', '2017-07-26 17:30:00', '2017-07-26 17:30:00', '1', '0');
INSERT INTO `uc_role_resources` VALUES ('292', '11', '32', '2017-07-26 17:30:00', '2017-07-26 17:30:00', '1', '0');
INSERT INTO `uc_role_resources` VALUES ('293', '11', '33', '2017-07-26 17:30:00', '2017-07-26 17:30:00', '1', '0');
INSERT INTO `uc_role_resources` VALUES ('294', '11', '34', '2017-07-26 17:30:00', '2017-07-26 17:30:00', '1', '0');
INSERT INTO `uc_role_resources` VALUES ('295', '11', '35', '2017-07-26 17:30:00', '2017-07-26 17:30:00', '1', '0');
INSERT INTO `uc_role_resources` VALUES ('296', '11', '36', '2017-07-26 17:30:00', '2017-07-26 17:30:00', '1', '0');
INSERT INTO `uc_role_resources` VALUES ('297', '11', '37', '2017-07-26 17:30:00', '2017-07-26 17:30:00', '1', '0');
INSERT INTO `uc_role_resources` VALUES ('298', '11', '38', '2017-07-26 17:30:00', '2017-07-26 17:30:00', '1', '0');
INSERT INTO `uc_role_resources` VALUES ('299', '11', '39', '2017-07-26 17:30:00', '2017-07-26 17:30:00', '1', '0');
INSERT INTO `uc_role_resources` VALUES ('300', '11', '40', '2017-07-26 17:30:00', '2017-07-26 17:30:00', '1', '0');
INSERT INTO `uc_role_resources` VALUES ('301', '11', '41', '2017-07-26 17:30:01', '2017-07-26 17:30:01', '1', '0');
INSERT INTO `uc_role_resources` VALUES ('302', '11', '42', '2017-07-26 17:30:01', '2017-07-26 17:30:01', '1', '0');
INSERT INTO `uc_role_resources` VALUES ('303', '11', '43', '2017-07-26 17:30:01', '2017-07-26 17:30:01', '1', '0');
INSERT INTO `uc_role_resources` VALUES ('304', '11', '44', '2017-07-26 17:30:01', '2017-07-26 17:30:01', '1', '0');
INSERT INTO `uc_role_resources` VALUES ('305', '11', '45', '2017-07-26 17:30:01', '2017-07-26 17:30:01', '1', '0');
INSERT INTO `uc_role_resources` VALUES ('306', '11', '46', '2017-07-26 17:30:01', '2017-07-26 17:30:01', '1', '0');
INSERT INTO `uc_role_resources` VALUES ('307', '11', '47', '2017-07-26 17:30:01', '2017-07-26 17:30:01', '1', '0');
INSERT INTO `uc_role_resources` VALUES ('308', '11', '48', '2017-07-26 17:30:01', '2017-07-26 17:30:01', '1', '0');
INSERT INTO `uc_role_resources` VALUES ('309', '11', '49', '2017-07-26 17:30:01', '2017-07-26 17:30:01', '1', '0');
INSERT INTO `uc_role_resources` VALUES ('310', '11', '50', '2017-07-26 17:30:01', '2017-07-26 17:30:01', '1', '0');
INSERT INTO `uc_role_resources` VALUES ('311', '11', '51', '2017-07-26 17:30:01', '2017-07-26 17:30:01', '1', '0');
INSERT INTO `uc_role_resources` VALUES ('312', '11', '52', '2017-07-26 17:30:01', '2017-07-26 17:30:01', '1', '0');
INSERT INTO `uc_role_resources` VALUES ('313', '11', '53', '2017-07-26 17:30:02', '2017-07-26 17:30:02', '1', '0');
INSERT INTO `uc_role_resources` VALUES ('314', '11', '54', '2017-07-26 17:30:02', '2017-07-26 17:30:02', '1', '0');
INSERT INTO `uc_role_resources` VALUES ('315', '11', '55', '2017-07-26 17:30:02', '2017-07-26 17:30:02', '1', '0');
INSERT INTO `uc_role_resources` VALUES ('316', '11', '56', '2017-07-26 17:30:02', '2017-07-26 17:30:02', '1', '0');
INSERT INTO `uc_role_resources` VALUES ('317', '11', '57', '2017-07-26 17:30:02', '2017-07-26 17:30:02', '1', '0');
INSERT INTO `uc_role_resources` VALUES ('318', '11', '58', '2017-07-26 17:30:02', '2017-07-26 17:30:02', '1', '0');
INSERT INTO `uc_role_resources` VALUES ('319', '11', '59', '2017-07-26 17:30:02', '2017-07-26 17:30:02', '1', '0');
INSERT INTO `uc_role_resources` VALUES ('320', '11', '60', '2017-07-26 17:30:02', '2017-07-26 17:30:02', '1', '0');
INSERT INTO `uc_role_resources` VALUES ('321', '11', '61', '2017-07-26 17:30:02', '2017-07-26 17:30:02', '1', '0');
INSERT INTO `uc_role_resources` VALUES ('322', '11', '62', '2017-07-26 17:30:02', '2017-07-26 17:30:02', '1', '0');
INSERT INTO `uc_role_resources` VALUES ('323', '11', '63', '2017-07-26 17:30:02', '2017-07-26 17:30:02', '1', '0');
INSERT INTO `uc_role_resources` VALUES ('324', '11', '64', '2017-07-26 17:30:03', '2017-07-26 17:30:03', '1', '0');
INSERT INTO `uc_role_resources` VALUES ('325', '11', '65', '2017-07-26 17:30:03', '2017-07-26 17:30:03', '1', '0');
INSERT INTO `uc_role_resources` VALUES ('326', '11', '66', '2017-07-26 17:30:03', '2017-07-26 17:30:03', '1', '0');
INSERT INTO `uc_role_resources` VALUES ('327', '11', '67', '2017-07-26 17:30:03', '2017-07-26 17:30:03', '1', '0');
INSERT INTO `uc_role_resources` VALUES ('328', '11', '68', '2017-07-26 17:30:03', '2017-07-26 17:30:03', '1', '0');
INSERT INTO `uc_role_resources` VALUES ('329', '11', '69', '2017-07-26 17:30:03', '2017-07-26 17:30:03', '1', '0');
INSERT INTO `uc_role_resources` VALUES ('330', '11', '70', '2017-07-26 17:30:03', '2017-07-26 17:30:03', '1', '0');
INSERT INTO `uc_role_resources` VALUES ('331', '11', '71', '2017-07-26 17:30:03', '2017-07-26 17:30:03', '1', '0');
INSERT INTO `uc_role_resources` VALUES ('332', '11', '72', '2017-07-26 17:30:03', '2017-07-26 17:30:03', '1', '0');
INSERT INTO `uc_role_resources` VALUES ('333', '11', '73', '2017-07-26 17:30:03', '2017-07-26 17:30:03', '1', '0');
INSERT INTO `uc_role_resources` VALUES ('334', '11', '74', '2017-07-26 17:30:03', '2017-07-26 17:30:03', '1', '0');
INSERT INTO `uc_role_resources` VALUES ('335', '11', '75', '2017-07-26 17:30:04', '2017-07-26 17:30:04', '1', '0');
INSERT INTO `uc_role_resources` VALUES ('336', '11', '76', '2017-07-26 17:30:04', '2017-07-26 17:30:04', '1', '0');
INSERT INTO `uc_role_resources` VALUES ('337', '11', '77', '2017-07-26 17:30:04', '2017-07-26 17:30:04', '1', '0');
INSERT INTO `uc_role_resources` VALUES ('338', '11', '78', '2017-07-26 17:30:04', '2017-07-26 17:30:04', '1', '0');
INSERT INTO `uc_role_resources` VALUES ('339', '11', '79', '2017-07-26 17:30:04', '2017-07-26 17:30:04', '1', '0');
INSERT INTO `uc_role_resources` VALUES ('340', '11', '80', '2017-07-26 17:30:04', '2017-07-26 17:30:04', '1', '0');
INSERT INTO `uc_role_resources` VALUES ('341', '11', '81', '2017-07-26 17:30:04', '2017-07-26 17:30:04', '1', '0');
INSERT INTO `uc_role_resources` VALUES ('342', '11', '82', '2017-07-26 17:30:04', '2017-07-26 17:30:04', '1', '0');
INSERT INTO `uc_role_resources` VALUES ('343', '11', '83', '2017-07-26 17:30:04', '2017-07-26 17:30:04', '1', '0');
INSERT INTO `uc_role_resources` VALUES ('344', '11', '84', '2017-07-26 17:30:04', '2017-07-26 17:30:04', '1', '0');
INSERT INTO `uc_role_resources` VALUES ('345', '11', '85', '2017-07-26 17:30:04', '2017-07-26 17:30:04', '1', '0');
INSERT INTO `uc_role_resources` VALUES ('346', '11', '86', '2017-07-26 17:30:05', '2017-07-26 17:30:05', '1', '0');

-- ----------------------------
-- Table structure for uc_sys_log
-- ----------------------------
DROP TABLE IF EXISTS `uc_sys_log`;
CREATE TABLE `uc_sys_log` (
  `id` bigint(20) NOT NULL DEFAULT '0' COMMENT '主键id',
  `app_name` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '服务名',
  `model_name` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '模块名',
  `key_word1` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '关键字1',
  `key_word2` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '关键字2',
  `key_word3` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '关键字3',
  `key_word4` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '关键字4',
  `summary` varchar(500) COLLATE utf8_bin DEFAULT NULL COMMENT '摘要',
  `log_detail` text COLLATE utf8_bin COMMENT '日志详情',
  `log_level` varchar(20) COLLATE utf8_bin DEFAULT NULL COMMENT '日志级别',
  `is_check` tinyint(4) DEFAULT NULL COMMENT '0为未处理，1为已经处理',
  `operater` varchar(50) COLLATE utf8_bin DEFAULT NULL COMMENT '操作人',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=COMPACT COMMENT='#br.auth';

-- ----------------------------
-- Records of uc_sys_log
-- ----------------------------

-- ----------------------------
-- Table structure for uc_user
-- ----------------------------
DROP TABLE IF EXISTS `uc_user`;
CREATE TABLE `uc_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `userType` tinyint(4) DEFAULT NULL COMMENT '0:普通管理员（分析师，审批员，规则管理员）1:商户管理员 2:商户超级管理员 3：Api版本 4：网页版本  5 部门管理员',
  `password` varchar(40) COLLATE utf8_bin DEFAULT NULL COMMENT '密码',
  `real_name` varchar(30) COLLATE utf8_bin DEFAULT NULL COMMENT '账户名',
  `username` varchar(30) COLLATE utf8_bin DEFAULT NULL COMMENT '登录账户',
  `remark` varchar(300) COLLATE utf8_bin DEFAULT NULL COMMENT '描述',
  `status` tinyint(4) DEFAULT NULL COMMENT '1试用 2正式 3禁用',
  `api_code` varchar(50) COLLATE utf8_bin DEFAULT NULL COMMENT 'apiCode',
  `createDate` datetime DEFAULT NULL COMMENT '创建时间',
  `createUserId` int(11) DEFAULT NULL COMMENT '创建人',
  `updateDate` datetime DEFAULT NULL COMMENT '修改时间',
  `updateUserId` int(11) DEFAULT NULL COMMENT '修改人',
  `email` varchar(50) COLLATE utf8_bin DEFAULT NULL COMMENT '邮箱',
  `phone` varchar(15) COLLATE utf8_bin DEFAULT NULL COMMENT '电话',
  `product_code` varchar(500) COLLATE utf8_bin DEFAULT NULL COMMENT '开通业务',
  `is_delete` tinyint(255) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `i_sUser_apiCode` (`api_code`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=10646 DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=COMPACT COMMENT='#br.auth';

-- ----------------------------
-- Records of uc_user
-- ----------------------------
INSERT INTO `uc_user` VALUES ('1', '2', '21232f297a57a5a743894a0e4a801fc3', '测试', 'admin', 'asewqd22221', '2', '333999', '2015-11-23 11:58:39', '0', '2017-07-04 16:50:28', '10477', '', '', null, '0');
INSERT INTO `uc_user` VALUES ('156', '1', 'c47b8db8ca10fb218831e3eb9006251c', '姓姓', 'nanyueyinhang', '', '1', '100053', '2015-05-14 17:22:06', null, '2017-07-20 19:06:37', '156', '', '', null, '0');
INSERT INTO `uc_user` VALUES ('249', '0', '96e79218965eb72c92a549dd5a330112', '深圳分部唐小玲', 'SZUPLTXL', '', '1', '100053', '2015-06-26 00:00:00', '156', '2015-06-26 00:00:00', '156', '', null, null, '0');
INSERT INTO `uc_user` VALUES ('250', '0', '96e79218965eb72c92a549dd5a330112', '深圳分部黄振宇', 'SZUPLHZY', '', '1', '100053', '2015-06-26 00:00:00', '156', '2015-06-26 00:00:00', '156', '', null, null, '0');
INSERT INTO `uc_user` VALUES ('251', '0', '96e79218965eb72c92a549dd5a330112', '深圳分部郑雨娜', 'SZUPLZYN', '', '1', '100053', '2015-06-26 00:00:00', '156', '2015-06-26 00:00:00', '156', '', null, null, '0');
INSERT INTO `uc_user` VALUES ('252', '0', '96e79218965eb72c92a549dd5a330112', '东莞分部胡衬弟', 'DGUPLHCD', '', '1', '100053', '2015-06-26 00:00:00', '156', '2015-06-26 00:00:00', '156', '', null, null, '0');
INSERT INTO `uc_user` VALUES ('254', '0', '96e79218965eb72c92a549dd5a330112', '广州分部赖旭莹', 'GZUPLLXY', '', '1', '100053', '2015-06-26 00:00:00', '156', '2015-06-26 00:00:00', '156', '', null, null, '0');
INSERT INTO `uc_user` VALUES ('255', '0', '96e79218965eb72c92a549dd5a330112', '广州分部杨婉君', 'GZUPLYWJ', '', '1', '100053', '2015-06-26 00:00:00', '156', '2015-06-26 00:00:00', '156', '', null, null, '0');
INSERT INTO `uc_user` VALUES ('256', '0', '96e79218965eb72c92a549dd5a330112', '广州分部刘悦', 'GZUPLLY', '', '1', '100053', '2015-06-26 00:00:00', '156', '2015-06-26 00:00:00', '156', '', null, null, '0');
INSERT INTO `uc_user` VALUES ('257', '0', '96e79218965eb72c92a549dd5a330112', '重庆分部缪疆霞', 'CQUPLMJX', '', '1', '100053', '2015-06-26 00:00:00', '156', '2015-06-26 00:00:00', '156', '', null, null, '0');
INSERT INTO `uc_user` VALUES ('258', '0', '96e79218965eb72c92a549dd5a330112', '重庆分部杨红', 'CQUPLYH', '', '1', '100053', '2015-06-26 00:00:00', '156', '2015-06-26 00:00:00', '156', '', null, null, '0');
INSERT INTO `uc_user` VALUES ('259', '0', '96e79218965eb72c92a549dd5a330112', '重庆分部何婷', 'CQUPLHT', '', '1', '100053', '2015-06-26 00:00:00', '156', '2015-06-26 00:00:00', '156', '', null, null, '0');
INSERT INTO `uc_user` VALUES ('260', '0', '96e79218965eb72c92a549dd5a330112', '湛江分部陈颖玉', 'ZJUPLCYY', '', '1', '100053', '2015-06-26 00:00:00', '156', '2015-06-26 00:00:00', '156', '', null, null, '0');
INSERT INTO `uc_user` VALUES ('261', '0', '96e79218965eb72c92a549dd5a330112', '总部', 'UPLWY', '', '1', '100053', '2015-06-26 00:00:00', '156', '2015-06-26 00:00:00', '156', '', null, null, '0');
INSERT INTO `uc_user` VALUES ('262', '0', '96e79218965eb72c92a549dd5a330112', '东莞分部莫燕荷', 'DGUPLMYH', '', '1', '100053', '2015-06-26 00:00:00', '156', '2015-06-26 00:00:00', '156', '', null, null, '0');
INSERT INTO `uc_user` VALUES ('425', '0', '96e79218965eb72c92a549dd5a330112', '重庆分部李薇薇', 'CQUPLLWW', '', '1', '100053', '2015-07-27 00:00:00', '156', '2015-07-27 14:01:23', '156', '', null, null, '0');
INSERT INTO `uc_user` VALUES ('523', '1', '96e79218965eb72c92a549dd5a330112', '原形金融', 'yuanxingjinrong', '', '1', '100058', '2015-09-15 17:52:28', '0', '2017-02-22 14:38:23', '10021', '', '', null, '0');
INSERT INTO `uc_user` VALUES ('524', '0', '96e79218965eb72c92a549dd5a330112', '初审', 'yx_chushen', '', '1', '100058', '2015-09-15 18:06:47', '523', '2016-06-23 18:59:41', '523', '', '', null, '0');
INSERT INTO `uc_user` VALUES ('562', '0', '96e79218965eb72c92a549dd5a330112', '赖宝琪', 'DGUPLLBQ', '东莞分部', '1', '100053', '2015-10-19 00:00:00', '156', '2015-10-19 12:44:38', '156', '', null, null, '0');
INSERT INTO `uc_user` VALUES ('593', '0', '96e79218965eb72c92a549dd5a330112', '余翔', 'SZUPLYX', '深圳分部', '1', '100053', '2015-11-04 14:09:44', '156', '2015-11-04 14:09:44', '156', '', null, null, '0');
INSERT INTO `uc_user` VALUES ('10019', '1', 'fd8570f02be1ea0f5f058171f70b9446', '风险罗盘三', 'compass3', null, '3', '334521', '2015-11-30 10:10:41', '0', '2015-11-30 10:10:41', '0', null, null, null, '0');
INSERT INTO `uc_user` VALUES ('10020', '1', '96e79218965eb72c92a549dd5a330112', '四大九分裤', 'xsfdxx', null, '3', '334521', '2015-11-30 10:44:14', '0', '2015-11-30 10:44:14', '0', null, null, null, '0');
INSERT INTO `uc_user` VALUES ('10021', '2', '96e79218965eb72c92a549dd5a330112', 'qd', 'com_admin', null, '2', '-1', '2015-12-01 11:01:56', '0', '2016-04-14 18:11:01', '0', null, null, null, '0');
INSERT INTO `uc_user` VALUES ('10022', '0', '96e79218965eb72c92a549dd5a330112', 'sdfsd', 'guizeguanli', '111', '1', '333999', '2015-12-01 03:38:01', '2', '2016-04-18 19:44:10', '10342', '', '', null, '0');
INSERT INTO `uc_user` VALUES ('10023', '0', '96e79218965eb72c92a549dd5a330112', 'fenxishi', 'fenxishi', 'sdf', '0', '333999', '2015-12-01 03:39:42', '2', '2016-04-18 19:44:36', '10342', '', '', null, '0');
INSERT INTO `uc_user` VALUES ('10024', '1', '2d9f4c0db6d1710f780cddc30482abc7', '罗盘', 'compaass7', null, '3', '999111', '2015-12-01 06:19:40', '0', '2015-12-07 04:01:27', '10021', null, null, null, '0');
INSERT INTO `uc_user` VALUES ('10025', '1', '670b14728ad9902aecba32e22fa4f6bd', '罗盘十', 'compass10', null, '1', '999116', '2015-12-01 09:30:58', '0', '2015-12-04 02:58:22', '0', null, null, null, '0');
INSERT INTO `uc_user` VALUES ('10026', '0', '96e79218965eb72c92a549dd5a330112', '姓名', '333', '1111111111', '3', '333999', '2015-12-01 10:25:15', '2', '2017-02-13 14:10:22', '10477', '', '', null, '0');
INSERT INTO `uc_user` VALUES ('10028', '1', '96e79218965eb72c92a549dd5a330112', '实姓', 'compass11', null, '3', '999116', '2015-12-01 11:00:48', '0', '2015-12-11 17:50:48', '10021', null, null, null, '0');
INSERT INTO `uc_user` VALUES ('10153', '1', '9982b2a7fceaaee2c8444b5086aee008', '罗盘', 'compass111', null, '3', '999121', '2015-12-02 02:19:38', '0', '2015-12-05 03:29:53', '0', null, null, null, '0');
INSERT INTO `uc_user` VALUES ('10155', '1', '96e79218965eb72c92a549dd5a330112', '测试', 'compasschao', null, '1', '36001019', '2015-12-02 04:03:30', '0', '2015-12-03 11:52:50', '0', null, null, null, '0');
INSERT INTO `uc_user` VALUES ('10156', '0', '96e79218965eb72c92a549dd5a330112', '张超', 'fenxishitest', '分析师角色，张超创建', '0', '36001019', '2015-12-02 04:05:40', '10155', '2015-12-11 16:40:26', '10155', '', null, null, '0');
INSERT INTO `uc_user` VALUES ('10157', '0', '7fa8282ad93047a4d6fe6111c93b308a', '侧搜', '3', '备注必输？???', '0', '333999', '2015-12-02 05:52:22', '2', '2015-12-03 12:15:49', '2', '', null, null, '0');
INSERT INTO `uc_user` VALUES ('10158', '0', '7fa8282ad93047a4d6fe6111c93b308a', '侧搜', '4', '备注必输？', '1', '333999', '2015-12-02 05:54:01', '2', '2015-12-02 14:13:04', '2', '', null, null, '0');
INSERT INTO `uc_user` VALUES ('10159', '0', 'e10adc3949ba59abbe56e057f20f883e', '审批', 'sp', '111111', '0', '999121', '2015-12-02 07:37:00', '10153', '2015-12-02 07:48:04', '10153', '', null, null, '0');
INSERT INTO `uc_user` VALUES ('10160', '0', '96e79218965eb72c92a549dd5a330112', '规则', 'gz', '111111', '0', '999121', '2015-12-02 07:38:04', '10153', '2015-12-02 07:38:04', '10153', '', null, null, '0');
INSERT INTO `uc_user` VALUES ('10161', '0', '523af537946b79c4f8369ed39ba78605', 'sad', 'wd', 'da', '1', '333999', '2015-12-02 10:50:11', '2', '2015-12-02 14:05:15', '2', '', null, null, '0');
INSERT INTO `uc_user` VALUES ('10163', '0', '96e79218965eb72c92a549dd5a330112', '1', 'chushen', '1', '1', '333999', '2015-12-03 03:05:25', '2', '2015-12-03 04:03:39', '2', '', null, null, '0');
INSERT INTO `uc_user` VALUES ('10168', '0', 'f3abb86bd34cf4d52698f14c0da1dc60', '222', 'yyy', '2222', '0', '333999', '2015-12-03 07:48:01', '2', '2015-12-03 12:16:26', '2', '', null, null, '0');
INSERT INTO `uc_user` VALUES ('10169', '0', 'f4471d549d548f8f0baa6f9d7dad63e7', 'daasdadas', 'asdasdada', 'asdasdasd', '3', '333999', '2015-12-03 12:02:25', '2', '2015-12-03 12:02:35', '2', '', null, null, '0');
INSERT INTO `uc_user` VALUES ('10170', '0', '08a4415e9d594ff960030b921d42b91e', 'ss', 'sss', 'ss恩恩', '1', '333999', '2015-12-04 03:16:55', '2', '2015-12-04 09:16:44', '2', '', null, null, '0');
INSERT INTO `uc_user` VALUES ('10171', '0', '182be0c5cdcd5072bb1864cdee4d3d6e', '113', '11', '11', '3', '333999', '2015-12-04 03:30:49', '2', '2015-12-04 03:38:42', '2', '', null, null, '0');
INSERT INTO `uc_user` VALUES ('10172', '0', '96e79218965eb72c92a549dd5a330112', '审批', 'shenpi', '审批员', '1', '333999', '2015-12-04 03:45:13', '2', '2015-12-04 03:45:13', '2', '', null, null, '0');
INSERT INTO `uc_user` VALUES ('10173', '1', 'c47b8db8ca10fb218831e3eb9006251c', '罗盘', 'mumeng', '1', '1', '100092', '2015-12-04 07:09:22', '0', '2017-03-15 18:24:07', '10173', 'meinv.ye@100credit.com', '', null, '0');
INSERT INTO `uc_user` VALUES ('10174', '0', 'c47b8db8ca10fb218831e3eb9006251c', 'ddd', 'mu', '1', '1', '100092', '2015-12-04 07:33:56', '10173', '2017-06-05 10:12:08', '10173', 'meng.mu@100credit.com', '', null, '0');
INSERT INTO `uc_user` VALUES ('10175', '0', '96e79218965eb72c92a549dd5a330112', '审批', 'musp', '1', '3', '100092', '2015-12-05 06:23:55', '10173', '2016-04-07 15:58:50', '10173', '', null, null, '0');
INSERT INTO `uc_user` VALUES ('10177', '0', '96e79218965eb72c92a549dd5a330112', 'aw', 'fe', 'qw', '1', '333999', '2015-12-07 06:51:51', '2', '2015-12-07 06:51:51', '2', '', null, null, '0');
INSERT INTO `uc_user` VALUES ('10178', '0', '343b1c4a3ea721b2d640fc8700db0f36', '审批', 'sp1', 'QQ群QQ群', '1', '100053', '2015-12-07 10:10:48', '156', '2015-12-07 10:10:48', '156', '', null, null, '0');
INSERT INTO `uc_user` VALUES ('10179', '0', '96e79218965eb72c92a549dd5a330112', '南粤', 'nanyue', '11111', '1', '100053', '2015-12-08 06:02:00', '156', '2015-12-08 06:02:00', '156', '', null, null, '0');
INSERT INTO `uc_user` VALUES ('10181', '0', '698d51a19d8a121ce581499d7b701668', '111', '111', '111', '1', '100053', '2015-12-08 11:32:26', '156', '2015-12-08 11:32:26', '156', '', null, null, '0');
INSERT INTO `uc_user` VALUES ('10182', '1', '96e79218965eb72c92a549dd5a330112', '风险罗盘', 'hanqi', '', '1', '999102', '2015-12-08 14:00:34', '0', '2017-02-22 14:39:59', '10021', '', '', null, '0');
INSERT INTO `uc_user` VALUES ('10183', '0', '96e79218965eb72c92a549dd5a330112', '三个2', 'hanqi1', '再次测试一下可以不', '1', '999102', '2015-12-08 14:01:51', '10182', '2017-05-31 15:06:28', '10182', '', '', null, '0');
INSERT INTO `uc_user` VALUES ('10185', '0', '1679091c5a880faf6fb5e6087eb1b2dc', '6', '6', '', '1', '333999', '2015-12-09 08:16:32', '2', '2015-12-09 08:16:32', '2', '', null, null, '0');
INSERT INTO `uc_user` VALUES ('10186', '0', '96e79218965eb72c92a549dd5a330112', 'zlb测试', 'zlbtest', '1', '3', '100092', '2015-12-09 09:36:18', '10173', '2016-04-07 15:58:50', '10173', '', null, null, '0');
INSERT INTO `uc_user` VALUES ('10187', '0', '96e79218965eb72c92a549dd5a330112', 'yeyazhu', 'yeyazhu', '1', '3', '100092', '2015-12-09 10:10:20', '10173', '2016-04-07 15:58:50', '10173', '', null, null, '0');
INSERT INTO `uc_user` VALUES ('10188', '0', 'e1671797c52e15f763380b45e841ec32', 'e', 'e', '', '1', '333999', '2015-12-09 11:59:29', '2', '2015-12-09 11:59:29', '2', '', null, null, '0');
INSERT INTO `uc_user` VALUES ('10189', '0', 'c4ca4238a0b923820dcc509a6f75849b', '1', '11', '', '3', '999102', '2015-12-09 12:13:26', '10182', '2015-12-09 12:13:32', '10182', '', null, null, '0');
INSERT INTO `uc_user` VALUES ('10190', '0', 'e3ceb5881a0a1fdaad01296d7554868d', 'mmm', 'mmm', 'ccc', '1', '333999', '2015-12-09 12:52:52', '2', '2015-12-11 15:51:25', '2', '', null, null, '0');
INSERT INTO `uc_user` VALUES ('10191', '1', '96e79218965eb72c92a549dd5a330112', '罗盘', 'com2', null, '3', '999131', '2015-12-10 06:43:36', '0', '2015-12-10 09:48:08', '10021', null, null, null, '0');
INSERT INTO `uc_user` VALUES ('10192', '1', '96e79218965eb72c92a549dd5a330112', '真实姓', 'com21', null, '3', '100095', '2015-12-10 07:07:47', '0', '2016-07-18 15:59:46', '10021', null, null, null, '0');
INSERT INTO `uc_user` VALUES ('10193', '1', '96e79218965eb72c92a549dd5a330112', '真实', 'com22', null, '3', '100095', '2015-12-10 07:09:15', '0', '2016-07-18 15:59:46', '10021', null, null, null, '0');
INSERT INTO `uc_user` VALUES ('10194', '1', '463c894d093401dda15964d02f6a43cc', '真实', 'com3', '测试一下对不对', '3', '100095', '2015-12-10 07:10:01', '0', '2016-07-18 15:59:46', '10021', '', '13512135124', null, '0');
INSERT INTO `uc_user` VALUES ('10196', '0', '6512bd43d9caa6e02c990b0a82652dca', '11', '11', '11', '3', '999102', '2015-12-10 07:22:24', '10182', '2015-12-10 07:32:08', '10182', '', null, null, '0');
INSERT INTO `uc_user` VALUES ('10197', '0', '698d51a19d8a121ce581499d7b701668', '111', '11111', '111', '3', '999102', '2015-12-10 07:59:41', '10182', '2015-12-10 07:59:47', '10182', '', null, null, '0');
INSERT INTO `uc_user` VALUES ('10198', '0', '96e79218965eb72c92a549dd5a330112', '名字', '账户', '111111', '3', '999102', '2015-12-10 08:06:13', '10182', '2015-12-10 08:09:53', '10182', '', null, null, '0');
INSERT INTO `uc_user` VALUES ('10199', '0', '7fa8282ad93047a4d6fe6111c93b308a', '1', 'smz', '1', '3', '333999', '2015-12-11 15:52:04', '2', '2015-12-11 15:52:18', '2', '', null, null, '0');
INSERT INTO `uc_user` VALUES ('10200', '0', '698d51a19d8a121ce581499d7b701668', '都来看', 'djakka', '', '1', '333999', '2015-12-11 16:25:13', '2', '2015-12-11 16:25:13', '2', '', null, null, '0');
INSERT INTO `uc_user` VALUES ('10201', '0', '698d51a19d8a121ce581499d7b701668', '你的卡', 'hadk', '', '1', '333999', '2015-12-11 16:25:51', '2', '2015-12-11 16:25:51', '2', '', null, null, '0');
INSERT INTO `uc_user` VALUES ('10202', '0', '698d51a19d8a121ce581499d7b701668', '假的快乐的', 'asd', '', '1', '333999', '2015-12-11 16:28:25', '2', '2015-12-11 16:28:25', '2', '', null, null, '0');
INSERT INTO `uc_user` VALUES ('10203', '0', '96e79218965eb72c92a549dd5a330112', '的时间浪费', 'sd', '', '1', '333999', '2015-12-11 16:33:57', '2', '2015-12-11 16:33:57', '2', '', null, null, '0');
INSERT INTO `uc_user` VALUES ('10204', '0', '698d51a19d8a121ce581499d7b701668', '是啥', 'a', '', '3', '333999', '2015-12-11 16:39:35', '2', '2015-12-15 17:25:29', '2', '', null, null, '0');
INSERT INTO `uc_user` VALUES ('10205', '0', '182be0c5cdcd5072bb1864cdee4d3d6e', '的说法', '11', '', '1', '333999', '2015-12-11 16:40:36', '2', '2015-12-11 16:40:36', '2', '', null, null, '0');
INSERT INTO `uc_user` VALUES ('10206', '0', '698d51a19d8a121ce581499d7b701668', '111', '111111', '111', '3', '999102', '2015-12-11 17:52:06', '10182', '2015-12-11 17:52:22', '10182', '', null, null, '0');
INSERT INTO `uc_user` VALUES ('10207', '1', 'e10adc3949ba59abbe56e057f20f883e', '罗盘', 'com31', null, '3', '100097', '2015-12-11 18:52:42', '0', '2015-12-17 06:13:27', '10021', null, null, null, '0');
INSERT INTO `uc_user` VALUES ('10208', '0', '96e79218965eb72c92a549dd5a330112', '天坛', 'tianxia', '', '1', '333999', '2015-12-17 05:30:05', '2', '2015-12-17 05:30:05', '2', '', null, null, '0');
INSERT INTO `uc_user` VALUES ('10209', '0', '96e79218965eb72c92a549dd5a330112', 'sdf', 'sdfsdff', '', '1', '333999', '2015-12-17 07:20:53', '2', '2015-12-17 07:20:53', '2', '', null, null, '0');
INSERT INTO `uc_user` VALUES ('10210', '0', '96e79218965eb72c92a549dd5a330112', 'rtert', 'uuyutyu', '', '1', '333999', '2015-12-17 07:23:54', '2', '2015-12-17 07:23:54', '2', '', null, null, '0');
INSERT INTO `uc_user` VALUES ('10211', '0', '96e79218965eb72c92a549dd5a330112', 'sssssf', 'ddddd', '', '1', '333999', '2015-12-17 07:27:39', '2', '2015-12-17 07:27:39', '2', '', null, null, '0');
INSERT INTO `uc_user` VALUES ('10212', '0', '96e79218965eb72c92a549dd5a330112', '福克斯', '222', '3', '1', '333999', '2015-12-17 08:32:30', '2', '2016-04-19 21:36:16', '10342', '', '13111212211', null, '0');
INSERT INTO `uc_user` VALUES ('10213', '0', '96e79218965eb72c92a549dd5a330112', '是否', 'qqqqqqqqqqqqq', '', '3', '333999', '2015-12-17 08:46:19', '2', '2015-12-17 08:46:27', '2', '', null, null, '0');
INSERT INTO `uc_user` VALUES ('10214', '0', '96e79218965eb72c92a549dd5a330112', '随碟附送的', 'wwwwwwwww', '22', '3', '333999', '2015-12-17 08:51:08', '2', '2015-12-17 08:51:16', '2', '', null, null, '0');
INSERT INTO `uc_user` VALUES ('10215', '0', '96e79218965eb72c92a549dd5a330112', '姓名', 'qqq', 'qq', '3', '999102', '2015-12-17 08:56:27', '10182', '2015-12-17 08:56:35', '10182', '', null, null, '0');
INSERT INTO `uc_user` VALUES ('10216', '0', '1bbd886460827015e5d605ed44252251', '姓名', 'ee', '', '3', '999102', '2015-12-17 08:57:04', '10182', '2015-12-17 08:57:13', '10182', '', null, null, '0');
INSERT INTO `uc_user` VALUES ('10217', '0', '96e79218965eb72c92a549dd5a330112', '姓名', '1111', '', '1', '999102', '2015-12-17 08:57:31', '10182', '2016-11-09 18:39:03', '10182', '', '', null, '0');
INSERT INTO `uc_user` VALUES ('10218', '1', '96e79218965eb72c92a549dd5a330112', '刘敏测试2222', 'com41', '刘敏测试刘敏测试刘敏测试刘敏测试', '3', '100097', '2015-12-22 15:38:27', '0', '2016-07-18 15:59:46', '10021', '', '', null, '0');
INSERT INTO `uc_user` VALUES ('10219', '0', '96e79218965eb72c92a549dd5a330112', '姓名', '123', '111', '1', '999102', '2015-12-22 16:43:11', '10182', '2016-01-18 19:28:56', '10182', '', null, null, '0');
INSERT INTO `uc_user` VALUES ('10220', '1', 'e10adc3949ba59abbe56e057f20f883e', '替丁', 'yibutiantang', null, '3', '100098', '2016-01-12 15:15:14', '0', '2016-01-12 15:20:19', '10021', null, null, null, '0');
INSERT INTO `uc_user` VALUES ('10221', '1', 'e10adc3949ba59abbe56e057f20f883e', '替丁', 'yibutiantang1', null, '3', '100098', '2016-01-12 15:26:42', '0', '2016-01-12 15:28:08', '10021', null, null, null, '0');
INSERT INTO `uc_user` VALUES ('10222', '1', 'e10adc3949ba59abbe56e057f20f883e', '替丁', 'yibutiantang2', null, '3', '100098', '2016-01-12 15:31:41', '0', '2016-01-12 15:34:31', '10021', null, null, null, '0');
INSERT INTO `uc_user` VALUES ('10223', '1', 'e10adc3949ba59abbe56e057f20f883e', '替丁', 'yibutiantang3', null, '3', '100098', '2016-01-12 15:34:55', '0', '2016-01-12 16:30:41', '10021', null, null, null, '0');
INSERT INTO `uc_user` VALUES ('10224', '1', 'e10adc3949ba59abbe56e057f20f883e', '替丁', 'yibutiantang4', 'faewfawffffffffffffffffffffffffffffffff111111111111111111111111111111111111111faewwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww', '3', '100098', '2016-01-12 16:32:21', '0', '2016-04-19 10:31:14', '10021', '', '18810212121', null, '0');
INSERT INTO `uc_user` VALUES ('10225', '1', '96e79218965eb72c92a549dd5a330112', '李四', '123456', null, '3', '999131', '2016-01-13 16:32:39', '0', '2016-04-11 13:24:16', '10021', null, null, null, '0');
INSERT INTO `uc_user` VALUES ('10226', '1', 'a191990b4cd2cb17283bb1ff14187d47', 'com6', 'com6', '', '3', '100200', '2016-01-14 14:44:38', '0', '2016-04-11 13:24:16', '10021', null, null, null, '0');
INSERT INTO `uc_user` VALUES ('10228', '0', 'e10adc3949ba59abbe56e057f20f883e', '几点', 'comt32set', '地方', '1', '100200', '2016-01-14 16:59:28', '10226', '2016-01-14 18:03:58', '10226', '', null, null, '0');
INSERT INTO `uc_user` VALUES ('10229', '0', '96e79218965eb72c92a549dd5a330112', '五五', 'com51', '', '1', '100099', '2016-01-14 18:06:48', '10227', '2016-01-18 17:09:22', '10227', '', null, null, '0');
INSERT INTO `uc_user` VALUES ('10230', '0', '96e79218965eb72c92a549dd5a330112', '姓名', 'com52', '', '1', '100099', '2016-01-16 19:43:02', '10227', '2016-03-21 10:37:50', '10264', '', null, null, '0');
INSERT INTO `uc_user` VALUES ('10231', '1', '96e79218965eb72c92a549dd5a330112', '罗盘', 'com8', null, '3', '100202', '2016-01-16 20:49:59', '0', '2016-02-03 14:32:14', '10021', null, null, null, '0');
INSERT INTO `uc_user` VALUES ('10232', '0', '96e79218965eb72c92a549dd5a330112', '姓名', 'com81', '', '1', '100202', '2016-01-16 20:51:46', '10231', '2016-01-16 20:51:46', '10231', '', null, null, '0');
INSERT INTO `uc_user` VALUES ('10233', '1', '96e79218965eb72c92a549dd5a330112', '名名', 'com9', '', '3', '100203', '2016-01-16 21:11:04', '0', '2016-02-03 14:32:14', '10021', null, null, null, '0');
INSERT INTO `uc_user` VALUES ('10234', '0', '96e79218965eb72c92a549dd5a330112', '姓名', 'com91', '', '1', '100203', '2016-01-16 21:15:58', '10233', '2016-01-16 21:15:58', '10233', '', null, null, '0');
INSERT INTO `uc_user` VALUES ('10235', '1', 'e10adc3949ba59abbe56e057f20f883e', '姓名', 'com10', '', '3', '100204', '2016-01-16 21:19:12', '0', '2016-01-18 19:51:09', '10021', null, null, null, '0');
INSERT INTO `uc_user` VALUES ('10236', '0', '96e79218965eb72c92a549dd5a330112', '姓名', 'com101', '', '1', '100204', '2016-01-16 21:20:22', '10235', '2016-01-16 21:20:22', '10235', '', null, null, '0');
INSERT INTO `uc_user` VALUES ('10237', '0', 'fcea920f7412b5da7be0cf42b8c93759', '姓姓', '1234567', '', '3', '999102', '2016-01-18 17:58:19', '10182', '2016-01-18 17:58:25', '10182', '', null, null, '0');
INSERT INTO `uc_user` VALUES ('10238', '0', 'c162de19c4c3731ca3428769d0cd593d', '啊啊啊', 'qwert', '', '3', '999102', '2016-01-18 19:28:17', '10182', '2016-01-18 19:28:21', '10182', '', null, null, '0');
INSERT INTO `uc_user` VALUES ('10239', '1', '96e79218965eb72c92a549dd5a330112', '姓名', 'com102', '', '3', '100204', '2016-01-18 19:51:57', '0', '2016-01-18 20:29:02', '10021', null, null, null, '0');
INSERT INTO `uc_user` VALUES ('10240', '1', '96e79218965eb72c92a549dd5a330112', '姓名', 'www', null, '3', '100204', '2016-01-18 20:29:05', '0', '2016-04-11 13:24:16', '10021', null, null, null, '0');
INSERT INTO `uc_user` VALUES ('10241', '0', '4d18e2c96bb0f39c6d6dc690542b0bdc', '姓名姓名', '111111111111111111111111', '', '3', '999102', '2016-01-19 11:45:27', '10182', '2016-01-19 11:47:04', '10182', '', null, null, '0');
INSERT INTO `uc_user` VALUES ('10242', '0', '79d886010186eb60e3611cd4a5d0bcae', '姓名', '2222222222222222222222', '333', '3', '999102', '2016-01-19 11:48:36', '10182', '2016-01-19 11:49:13', '10182', '', null, null, '0');
INSERT INTO `uc_user` VALUES ('10243', '1', 'e10adc3949ba59abbe56e057f20f883e', '姓名', 'pingfen1', null, '3', '100206', '2016-01-21 11:25:30', '0', '2016-02-03 14:34:05', '10021', null, null, null, '0');
INSERT INTO `uc_user` VALUES ('10244', '0', 'e10adc3949ba59abbe56e057f20f883e', '评分', 'pingfen11', '', '1', '100206', '2016-01-21 11:26:46', '10243', '2016-01-21 11:26:46', '10243', '', null, null, '0');
INSERT INTO `uc_user` VALUES ('10245', '0', '8ce87b8ec346ff4c80635f667d1592ae', '姓名', '1212', '', '3', '999102', '2016-01-25 19:53:40', '10182', '2016-01-25 19:53:52', '10182', '', null, null, '0');
INSERT INTO `uc_user` VALUES ('10246', '0', 'e11170b8cbd2d74102651cb967fa28e5', '啦啦啦啦啦', '7777777', '', '3', '999102', '2016-01-25 19:56:06', '10182', '2016-01-25 19:56:10', '10182', '', null, null, '0');
INSERT INTO `uc_user` VALUES ('10247', '1', '96e79218965eb72c92a549dd5a330112', 'fen1', '管理员账号', '', '3', '100206', '2016-02-03 14:35:59', '0', '2016-04-11 13:24:16', '10021', null, null, null, '0');
INSERT INTO `uc_user` VALUES ('10250', '0', '96e79218965eb72c92a549dd5a330112', '贷中管理员', 'daizhongguanli', '1', '3', '100092', '2016-03-08 15:20:19', '10173', '2016-04-07 19:36:29', '10173', 'li.sun@100credit.com', null, null, '0');
INSERT INTO `uc_user` VALUES ('10251', '0', '96e79218965eb72c92a549dd5a330112', '姓名', '111111', '1', '3', '100092', '2016-03-09 19:50:01', '10173', '2016-03-09 19:50:08', '10173', '', null, null, '0');
INSERT INTO `uc_user` VALUES ('10252', '0', '0b7da663c8a1ee358aa8dbb6e55d0d2b', '姓名', '11112', '1', '3', '100092', '2016-03-10 17:50:53', '10173', '2016-04-07 15:59:11', '10173', '', null, null, '0');
INSERT INTO `uc_user` VALUES ('10253', '0', '96e79218965eb72c92a549dd5a330112', '姓名', 'qqqq', '1', '3', '100092', '2016-03-10 17:51:33', '10173', '2016-04-07 15:58:13', '10173', '', null, null, '0');
INSERT INTO `uc_user` VALUES ('10254', '0', '96e79218965eb72c92a549dd5a330112', '姓名', 'wwww', '1', '3', '100092', '2016-03-10 17:52:09', '10173', '2016-04-07 15:59:11', '10173', '', null, null, '0');
INSERT INTO `uc_user` VALUES ('10255', '0', '96e79218965eb72c92a549dd5a330112', '姓名', '1212', '1', '3', '100092', '2016-03-10 17:52:25', '10173', '2016-04-07 15:59:11', '10173', '', null, null, '0');
INSERT INTO `uc_user` VALUES ('10256', '0', '96e79218965eb72c92a549dd5a330112', '姓名', '112', '1', '3', '100092', '2016-03-10 18:40:49', '10173', '2016-04-07 15:58:32', '10173', '', null, null, '0');
INSERT INTO `uc_user` VALUES ('10257', '0', '96e79218965eb72c92a549dd5a330112', '账号', '22', '1', '3', '100092', '2016-03-10 18:56:46', '10173', '2016-04-07 15:58:32', '10173', '', null, null, '0');
INSERT INTO `uc_user` VALUES ('10258', '0', '96e79218965eb72c92a549dd5a330112', '备注', '2222', '1', '3', '100092', '2016-03-10 21:19:38', '10173', '2016-04-07 15:59:11', '10173', '', null, null, '0');
INSERT INTO `uc_user` VALUES ('10259', '0', '96e79218965eb72c92a549dd5a330112', '姓名', '22222', '1', '3', '100092', '2016-03-10 21:21:09', '10173', '2016-04-07 15:58:32', '10173', '', null, null, '0');
INSERT INTO `uc_user` VALUES ('10260', '0', '96e79218965eb72c92a549dd5a330112', '分析', '222222', '1', '3', '100092', '2016-03-10 21:21:50', '10173', '2016-04-07 15:58:32', '10173', '', null, null, '0');
INSERT INTO `uc_user` VALUES ('10261', '1', '96e79218965eb72c92a549dd5a330112', '天地', '11112112', null, '3', '10000056', '2016-03-16 14:59:24', '0', '2016-04-11 13:24:16', '10021', null, null, null, '0');
INSERT INTO `uc_user` VALUES ('10262', '1', '96e79218965eb72c92a549dd5a330112', '多个', 'dfgdfg', null, '3', '100005', '2016-03-16 15:22:45', '0', '2016-04-11 13:24:16', '10021', null, null, null, '0');
INSERT INTO `uc_user` VALUES ('10264', '1', '5b1b68a9abf4d2cd155c81a9225fd158', '555555', '555555', null, '3', '100099', '2016-03-21 10:31:13', '0', '2016-03-22 17:27:28', '10021', null, null, null, '0');
INSERT INTO `uc_user` VALUES ('10265', '1', '9e632425614686ec7845a011088f015f', '反欺诈测试11', 'zgh', '', '3', '444333', '2016-03-22 13:30:03', '0', '2016-04-11 13:24:16', '10021', null, null, null, '0');
INSERT INTO `uc_user` VALUES ('10266', '0', '96e79218965eb72c92a549dd5a330112', '反欺诈测试', 'fqz', '', '1', '444333', '2016-03-22 13:32:06', '10265', '2016-03-22 13:32:06', '10265', '', null, null, '0');
INSERT INTO `uc_user` VALUES ('10267', '0', '96e79218965eb72c92a549dd5a330112', '审批', 'shen', '1', '3', '100092', '2016-04-07 16:00:54', '10173', '2016-04-07 19:36:29', '10173', '', null, null, '0');
INSERT INTO `uc_user` VALUES ('10275', '0', '96e79218965eb72c92a549dd5a330112', '有审批的分析师', 'shenfen', '1', '3', '100092', '2016-04-07 17:13:50', '10173', '2016-04-07 19:36:29', '10173', '', null, null, '0');
INSERT INTO `uc_user` VALUES ('10276', '0', '96e79218965eb72c92a549dd5a330112', '有审批的分析师', 'shenfen', '1', '3', '100092', '2016-04-07 17:13:50', '10173', '2016-04-07 17:27:44', '10173', '', null, null, '0');
INSERT INTO `uc_user` VALUES ('10277', '0', '96e79218965eb72c92a549dd5a330112', '有审批的分析师', 'shenfen', '1', '3', '100092', '2016-04-07 17:13:50', '10173', '2016-04-07 17:27:44', '10173', '', null, null, '0');
INSERT INTO `uc_user` VALUES ('10278', '0', '96e79218965eb72c92a549dd5a330112', '验证的', 'yanzheng', '1', '3', '100092', '2016-04-07 17:50:13', '10173', '2016-04-07 19:36:18', '10173', '', null, null, '0');
INSERT INTO `uc_user` VALUES ('10279', '0', '96e79218965eb72c92a549dd5a330112', '验证的', 'yanzheng', '1', '3', '100092', '2016-04-07 17:50:13', '10173', '2016-04-07 19:36:18', '10173', '', null, null, '0');
INSERT INTO `uc_user` VALUES ('10280', '0', '96e79218965eb72c92a549dd5a330112', '验证的', 'yanzheng', '1', '3', '100092', '2016-04-07 17:50:13', '10173', '2016-04-07 19:36:18', '10173', '', null, null, '0');
INSERT INTO `uc_user` VALUES ('10281', '0', '96e79218965eb72c92a549dd5a330112', '验证的', 'yanzheng', '1', '3', '100092', '2016-04-07 17:50:13', '10173', '2016-04-07 19:36:29', '10173', '', null, null, '0');
INSERT INTO `uc_user` VALUES ('10282', '0', '96e79218965eb72c92a549dd5a330112', '天天', 'hanqi12', '', '1', '999102', '2016-04-07 18:04:40', '10182', '2016-09-22 15:26:30', '10182', '', '', null, '0');
INSERT INTO `uc_user` VALUES ('10283', '0', '96e79218965eb72c92a549dd5a330112', '地方', 'muceshi1', '1', '3', '100092', '2016-04-07 18:05:18', '10173', '2016-04-07 19:36:18', '10173', '', null, null, '0');
INSERT INTO `uc_user` VALUES ('10284', '0', '96e79218965eb72c92a549dd5a330112', '地方', 'muceshi1', '1', '3', '100092', '2016-04-07 18:05:18', '10173', '2016-04-07 19:36:18', '10173', '', null, null, '0');
INSERT INTO `uc_user` VALUES ('10285', '0', '96e79218965eb72c92a549dd5a330112', '地方', 'muceshi1', '1', '3', '100092', '2016-04-07 18:05:18', '10173', '2016-04-07 19:36:18', '10173', '', null, null, '0');
INSERT INTO `uc_user` VALUES ('10286', '0', '96e79218965eb72c92a549dd5a330112', '的的', 'shisushi', '1', '3', '100092', '2016-04-07 18:08:26', '10173', '2016-04-07 19:36:18', '10173', '', null, null, '0');
INSERT INTO `uc_user` VALUES ('10287', '0', '96e79218965eb72c92a549dd5a330112', '的的', 'shisushi', '1', '3', '100092', '2016-04-07 18:08:26', '10173', '2016-04-07 19:36:18', '10173', '', null, null, '0');
INSERT INTO `uc_user` VALUES ('10288', '0', '96e79218965eb72c92a549dd5a330112', '的的', 'shisushi', '1', '3', '100092', '2016-04-07 18:08:26', '10173', '2016-04-07 19:36:18', '10173', '', null, null, '0');
INSERT INTO `uc_user` VALUES ('10289', '0', '96e79218965eb72c92a549dd5a330112', '的的', 'shisushi', '1', '3', '100092', '2016-04-07 18:08:26', '10173', '2016-04-07 19:36:18', '10173', '', null, null, '0');
INSERT INTO `uc_user` VALUES ('10290', '0', '96e79218965eb72c92a549dd5a330112', '中文11', 'mushibushi', '1', '3', '100092', '2016-04-07 18:11:03', '10173', '2016-04-07 18:40:31', '10173', '', null, null, '0');
INSERT INTO `uc_user` VALUES ('10291', '0', '200820e3227815ed1756a6b531e7e0d2', '贷中', 'daizhong', '1', '1', '100092', '2016-04-07 19:36:51', '10173', '2017-02-28 10:05:13', '10291', 'li.sun@100credit.com', '', null, '0');
INSERT INTO `uc_user` VALUES ('10292', '0', '96e79218965eb72c92a549dd5a330112', '审批员', 'spyuan', '1', '1', '100092', '2016-04-07 19:37:30', '10173', '2016-07-26 17:31:22', '10173', '', '', null, '0');
INSERT INTO `uc_user` VALUES ('10293', '0', '96e79218965eb72c92a549dd5a330112', '规则', 'guize', '1', '1', '100092', '2016-04-07 19:38:25', '10173', '2016-04-08 11:40:07', '10173', '', null, null, '0');
INSERT INTO `uc_user` VALUES ('10294', '0', '96e79218965eb72c92a549dd5a330112', '规则', 'guizetest', '1', '1', '100092', '2016-04-08 11:38:57', '10173', '2016-04-20 10:39:45', '10173', '', '', null, '0');
INSERT INTO `uc_user` VALUES ('10298', '1', '96e79218965eb72c92a549dd5a330112', '罗盘1', 'spwu', 'feaf', '3', '999132', '2016-04-08 18:15:31', '0', '2016-04-19 09:53:10', '10021', '', '18019182211', null, '0');
INSERT INTO `uc_user` VALUES ('10299', '0', '96e79218965eb72c92a549dd5a330112', '无贷中', 'wudaizhong', '', '1', '999132', '2016-04-08 18:40:05', '10298', '2016-04-08 18:40:05', '10298', '', null, null, '0');
INSERT INTO `uc_user` VALUES ('10300', '0', '96e79218965eb72c92a549dd5a330112', '无分析', 'wufenxi', '111111', '1', '999132', '2016-04-08 18:43:06', '10298', '2016-04-08 18:43:06', '10298', '', null, null, '0');
INSERT INTO `uc_user` VALUES ('10301', '0', '96e79218965eb72c92a549dd5a330112', '无规则', 'wuguize', '', '1', '999132', '2016-04-08 18:43:27', '10298', '2016-04-08 18:43:27', '10298', '', null, null, '0');
INSERT INTO `uc_user` VALUES ('10302', '0', '96e79218965eb72c92a549dd5a330112', '无全', 'wuquan', '', '1', '999132', '2016-04-08 18:44:44', '10298', '2016-04-08 18:44:44', '10298', '', null, null, '0');
INSERT INTO `uc_user` VALUES ('10303', '0', '96e79218965eb72c92a549dd5a330112', '有审批的分析师', 'have', '1', '1', '100092', '2016-04-11 10:25:09', '10173', '2016-05-16 18:20:02', '10173', '', '', null, '0');
INSERT INTO `uc_user` VALUES ('10304', '0', '96e79218965eb72c92a549dd5a330112', '随便的', 'suibian', '', '1', '999132', '2016-04-11 17:38:43', '10298', '2016-04-11 17:38:43', '10298', '', null, null, '0');
INSERT INTO `uc_user` VALUES ('10305', '1', '96e79218965eb72c92a549dd5a330112', '而是他', 'ddm', null, '3', '999991', '2016-04-12 16:01:43', '0', '2016-04-12 21:15:52', '10021', null, null, null, '0');
INSERT INTO `uc_user` VALUES ('10306', '1', '96e79218965eb72c92a549dd5a330112', 'dd', 'dddd', null, '3', '999886', '2016-04-12 16:07:26', '0', '2016-04-12 21:15:45', '10021', null, null, null, '0');
INSERT INTO `uc_user` VALUES ('10307', '1', '96e79218965eb72c92a549dd5a330112', '带重', 'adddaizhong', 'eeeessss', '3', '999133', '2016-04-13 00:15:03', '0', '2016-04-18 17:31:12', '10021', '', '13310111111', null, '0');
INSERT INTO `uc_user` VALUES ('10308', '0', '96e79218965eb72c92a549dd5a330112', '姓名', 'adddaizhong1', '', '1', '999133', '2016-04-13 00:16:00', '10307', '2016-04-13 00:16:00', '10307', '', null, null, '0');
INSERT INTO `uc_user` VALUES ('10313', '2', 'e3ceb5881a0a1fdaad01296d7554868d', '哈萨克', 'yunyingguanliyuan', '测试添加内部管理员', '2', '-1', '2016-04-14 16:04:03', '10021', '2016-05-19 18:47:11', '10021', '', '13111245564', null, '0');
INSERT INTO `uc_user` VALUES ('10314', '2', '96e79218965eb72c92a549dd5a330112', '哈萨克', 'brguizeguanliyuan', '测试添加内部管理员', '3', '-1', '2016-04-14 18:34:09', '10021', '2016-05-19 18:47:11', '10021', '', '13111245564', null, '0');
INSERT INTO `uc_user` VALUES ('10315', '0', 'd60937f1d226ef166b76cfa75166710a', '天地', 'tiantianc', '地方', '1', '999102', '2016-04-15 09:47:35', '10182', '2017-02-24 18:50:07', '10182', '', null, null, '0');
INSERT INTO `uc_user` VALUES ('10316', '0', '612982123c3dbe826139354e7d16cf61', '测试', 'faefaw', 'faeeeeeeeeeeeeeee', '1', '-1', '2016-04-15 14:13:14', '10021', '2016-04-15 14:13:14', '10021', '', null, null, '0');
INSERT INTO `uc_user` VALUES ('10317', '0', '8f84d6aa35309bd263fd92d7ca0605c5', '测试测试', 'faewf', 'faeaewaw', '1', '-1', '2016-04-15 15:16:29', '10021', '2016-04-15 15:16:29', '10021', '', null, null, '0');
INSERT INTO `uc_user` VALUES ('10330', '2', '96e79218965eb72c92a549dd5a330112', '卡发', 'teste22', 'feaf', '3', '-1', '2016-04-18 15:14:23', '10021', '2016-05-19 18:47:11', '10021', '', '', null, '0');
INSERT INTO `uc_user` VALUES ('10331', '2', '96e79218965eb72c92a549dd5a330112', '忽然', 'test2222', 'faef', '3', '-1', '2016-04-18 15:39:35', '10021', '2016-05-19 18:47:11', '10021', '', '', null, '0');
INSERT INTO `uc_user` VALUES ('10332', '2', '96e79218965eb72c92a549dd5a330112', '响亮级', 'ceshiji', 'fe', '3', '-1', '2016-04-18 15:39:55', '10021', '2016-05-19 18:47:11', '10021', '', '', null, '0');
INSERT INTO `uc_user` VALUES ('10333', '2', '96e79218965eb72c92a549dd5a330112', '马尔科夫', 'ceshi23', '', '3', '-1', '2016-04-18 15:40:27', '10021', '2016-05-19 18:47:01', '10021', '', '', null, '0');
INSERT INTO `uc_user` VALUES ('10334', '2', '96e79218965eb72c92a549dd5a330112', '信息里1111', 'ceshi22', 'afeaaaa', '2', '-1', '2016-04-18 15:41:04', '10021', '2016-05-25 11:28:07', '10021', '', '18810212121', null, '0');
INSERT INTO `uc_user` VALUES ('10335', '2', '96e79218965eb72c92a549dd5a330112', '决策树', 'ceshi1122', '', '3', '-1', '2016-04-18 15:41:42', '10021', '2016-04-18 19:47:37', '10021', '', '', null, '0');
INSERT INTO `uc_user` VALUES ('10336', '2', '00b7691d86d96aebd21dd9e138f90840', '感知机', 'ceshices', '', '3', '-1', '2016-04-18 15:42:43', '10021', '2016-04-18 17:31:19', '10021', '', '', null, '0');
INSERT INTO `uc_user` VALUES ('10337', '2', '7fa8282ad93047a4d6fe6111c93b308a', '神经网络', 'ceshivn', '', '3', '-1', '2016-04-18 15:43:03', '10021', '2016-04-18 16:27:36', '10021', '', '', null, '0');
INSERT INTO `uc_user` VALUES ('10338', '2', '96e79218965eb72c92a549dd5a330112', '高斯', 'cehsi', '', '3', '-1', '2016-04-18 15:43:27', '10021', '2016-04-18 16:27:36', '10021', '', '', null, '0');
INSERT INTO `uc_user` VALUES ('10339', '2', '96e79218965eb72c92a549dd5a330112', '上下文', 'teste222', '', '3', '-1', '2016-04-18 16:13:03', '10021', '2016-04-18 16:27:11', '10021', '', '', null, '0');
INSERT INTO `uc_user` VALUES ('10340', '2', 'e10adc3949ba59abbe56e057f20f883e', '测试用例', 'ceshiyongli', 'faeffaefawefawe', '3', '-1', '2016-04-18 17:58:23', '10021', '2016-04-18 19:37:05', '10021', '', '18019191111', null, '0');
INSERT INTO `uc_user` VALUES ('10341', '2', '96e79218965eb72c92a549dd5a330112', '示例', 'ceshiyongli11', 'fef', '3', '-1', '2016-04-18 18:58:44', '10021', '2016-04-18 18:58:52', '10021', '', '18810223344', null, '0');
INSERT INTO `uc_user` VALUES ('10343', '2', '96e79218965eb72c92a549dd5a330112', '她过得', 'dfgdfgdf', '地方', '3', '-1', '2016-04-18 19:48:29', '10021', '2016-04-19 09:47:13', '10021', '', '13122112211', null, '0');
INSERT INTO `uc_user` VALUES ('10344', '2', '96e79218965eb72c92a549dd5a330112', '管理员111', 'test22', 'faefawefaefeww', '3', '-1', '2016-04-19 09:50:29', '10021', '2016-04-19 10:10:06', '10021', '', '18834534543', null, '0');
INSERT INTO `uc_user` VALUES ('10345', '2', '00b7691d86d96aebd21dd9e138f90840', '特征向量11', 'faef', '1212', '3', '-1', '2016-04-19 10:33:06', '10021', '2016-05-25 11:28:22', '10021', '', '', null, '0');
INSERT INTO `uc_user` VALUES ('10346', '2', '96e79218965eb72c92a549dd5a330112', '特征空间', 'com_ddd', '', '3', '-1', '2016-04-19 12:35:50', '10021', '2016-04-19 12:36:02', '10021', '', '', null, '0');
INSERT INTO `uc_user` VALUES ('10347', '2', '00b7691d86d96aebd21dd9e138f90840', '损失函数11', 'com_admin1', 'faewf', '3', '-1', '2016-04-19 12:37:19', '10021', '2016-04-19 13:31:25', '10021', '', '18011111111', null, '0');
INSERT INTO `uc_user` VALUES ('10348', '1', '96e79218965eb72c92a549dd5a330112', '牛顿', 'test234', null, '3', '100054', '2016-04-19 14:05:36', '0', '2016-07-18 16:00:16', '10021', '', '', null, '0');
INSERT INTO `uc_user` VALUES ('10349', '1', '96e79218965eb72c92a549dd5a330112', '最小二乘', 'cehuizhong', 'faefawefawefawe', '3', '100100', '2016-04-19 14:08:12', '0', '2016-07-18 16:00:50', '10021', '', '18801223330', null, '0');
INSERT INTO `uc_user` VALUES ('10350', '2', '96e79218965eb72c92a549dd5a330112', '腾讯', 'testtest123', 'faefaw', '3', '-1', '2016-04-19 14:24:13', '10021', '2016-05-25 11:29:58', '10021', '', '18810452332', null, '0');
INSERT INTO `uc_user` VALUES ('10351', '2', '96e79218965eb72c92a549dd5a330112', '规则管理员', 'rule', '', '3', '-1', '2016-04-19 15:44:15', '10021', '2016-05-25 11:35:29', '10021', '', '', null, '0');
INSERT INTO `uc_user` VALUES ('10352', '2', '93279e3308bdbbeed946fc965017f67a', '支持向量机', 'zhangha1', 'faeafe', '3', '-1', '2016-04-19 16:46:44', '10021', '2016-04-19 17:59:28', '10021', '', '18810212121', null, '0');
INSERT INTO `uc_user` VALUES ('10353', '2', '93279e3308bdbbeed946fc965017f67a', '支持向量机', '121212', '', '3', '-1', '2016-04-19 17:04:22', '10021', '2016-05-25 11:35:36', '10021', '', '', null, '0');
INSERT INTO `uc_user` VALUES ('10354', '2', '93279e3308bdbbeed946fc965017f67a', '支持向量机', 'hanghao', '', '3', '-1', '2016-04-19 17:06:43', '10021', '2016-04-19 18:51:49', '10021', '', '', null, '0');
INSERT INTO `uc_user` VALUES ('10355', '2', '00b7691d86d96aebd21dd9e138f90840', '姓名11', 'zhangh', '', '3', '-1', '2016-04-19 17:25:50', '10021', '2016-05-25 17:43:12', '10021', '', '18810211211', null, '0');
INSERT INTO `uc_user` VALUES ('10356', '2', '96e79218965eb72c92a549dd5a330112', '梯度下降', 'com.cn', 'faefawe', '3', '-1', '2016-04-19 18:04:50', '10021', '2016-05-25 17:38:26', '10021', '', '18810221111', null, '0');
INSERT INTO `uc_user` VALUES ('10357', '2', '7fa8282ad93047a4d6fe6111c93b308a', '杭州', 'faewffe', '', '3', '-1', '2016-04-19 18:29:06', '10021', '2016-05-25 17:38:26', '10021', '', '18810234444', null, '0');
INSERT INTO `uc_user` VALUES ('10358', '2', '96e79218965eb72c92a549dd5a330112', '运营11', 'operator', 'beizhu beizhu ddddddddddddddddddddd', '3', '-1', '2016-04-19 18:32:08', '10021', '2016-05-25 17:38:26', '10021', '', '15002525236', null, '0');
INSERT INTO `uc_user` VALUES ('10359', '2', '96e79218965eb72c92a549dd5a330112', '浩瀚', 'zhanghao', 'fefaef1', '3', '-1', '2016-04-19 18:52:42', '10021', '2016-05-25 17:38:26', '10021', '', '18810212121', null, '0');
INSERT INTO `uc_user` VALUES ('10360', '1', '96e79218965eb72c92a549dd5a330112', '士大夫', 'xxxaaa', null, '3', '100008', '2016-04-19 19:47:25', '0', '2016-07-18 16:00:50', '10021', '', '', null, '0');
INSERT INTO `uc_user` VALUES ('10361', '1', '96e79218965eb72c92a549dd5a330112', 'new2', 'new2', null, '3', '999142', '2016-04-19 20:25:33', '0', '2016-07-18 16:00:50', '10021', '', '15001252365', null, '0');
INSERT INTO `uc_user` VALUES ('10362', '0', '96e79218965eb72c92a549dd5a330112', '贷中', 'new21', '', '1', '999142', '2016-04-19 20:36:16', '10361', '2016-04-19 20:38:17', '10361', '', '', null, '0');
INSERT INTO `uc_user` VALUES ('10363', '2', '96e79218965eb72c92a549dd5a330112', '删除', 'delete', '', '3', '-1', '2016-04-20 11:10:47', '10021', '2016-04-20 11:41:46', '10021', '', '15001252525', null, '0');
INSERT INTO `uc_user` VALUES ('10364', '1', '96e79218965eb72c92a549dd5a330112', 'new3', 'new3', null, '3', '999143', '2016-04-20 11:57:21', '0', '2016-07-18 16:00:50', '10021', '', '15001252563', null, '0');
INSERT INTO `uc_user` VALUES ('10366', '0', '96e79218965eb72c92a549dd5a330112', '姓名', 'new31', '', '1', '999143', '2016-04-20 13:56:24', '10364', '2016-04-20 13:56:24', '10364', '', null, null, '0');
INSERT INTO `uc_user` VALUES ('10368', '1', 'abe003354a8c5ccf6eead749f9b4632f', 'qqq', 'testqq', null, '3', '100016', '2016-04-20 17:30:57', '0', '2016-07-18 16:00:50', '10021', '', '18844355555', null, '0');
INSERT INTO `uc_user` VALUES ('10369', '1', '96e79218965eb72c92a549dd5a330112', '测试', 'ceshidaizhong', null, '3', '100001', '2016-04-21 20:54:25', '0', '2016-07-18 16:00:50', '10021', '', '', null, '0');
INSERT INTO `uc_user` VALUES ('10370', '1', '96e79218965eb72c92a549dd5a330112', '在册实', 'zaicishice', '', '1', '100002', '2016-04-21 21:01:33', '0', '2017-02-22 14:40:14', '10021', '', '', null, '0');
INSERT INTO `uc_user` VALUES ('10371', '1', '96e79218965eb72c92a549dd5a330112', '仔仔测', 'zaizaicceshi', '', '1', '100003', '2016-04-21 21:05:18', '0', '2017-02-22 14:39:21', '10021', '', '', null, '0');
INSERT INTO `uc_user` VALUES ('10372', '1', '96e79218965eb72c92a549dd5a330112', '胜多负少', 'tttttt1', '1', '1', '100004', '2016-04-21 21:06:44', '0', '2017-02-22 14:39:04', '10021', '', '', null, '0');
INSERT INTO `uc_user` VALUES ('10373', '1', '96e79218965eb72c92a549dd5a330112', '巫妖', 'wuyao', '', '1', '100009', '2016-05-03 10:38:42', '0', '2017-02-22 14:38:56', '10021', '', '', null, '0');
INSERT INTO `uc_user` VALUES ('10374', '1', '96e79218965eb72c92a549dd5a330112', 'dts_jh', 'dts_jh', '', '1', '111121', '2016-05-03 10:45:41', '0', '2017-02-22 14:38:48', '10021', '', '', null, '0');
INSERT INTO `uc_user` VALUES ('10375', '1', '96e79218965eb72c92a549dd5a330112', 'nanyue11', 'nanyue11', '', '1', '111134', '2016-05-03 17:15:57', '0', '2017-02-22 14:42:32', '10021', '', '', null, '0');
INSERT INTO `uc_user` VALUES ('10376', '1', '96e79218965eb72c92a549dd5a330112', 'dts_zzy', 'dts_zzy', '', '1', '110038', '2016-05-03 17:22:33', '0', '2017-02-22 14:42:25', '10021', '', '', null, '0');
INSERT INTO `uc_user` VALUES ('10377', '1', '96e79218965eb72c92a549dd5a330112', 'ygbx', 'ygbx', '', '1', '100193', '2016-05-03 17:22:59', '0', '2017-02-22 14:42:18', '10021', '', '', null, '0');
INSERT INTO `uc_user` VALUES ('10378', '1', '96e79218965eb72c92a549dd5a330112', 'hui---apos;jun', 'hui\'jun', '', '1', '123144', '2016-05-03 17:25:18', '0', '2017-02-22 14:42:13', '10021', '', '', null, '0');
INSERT INTO `uc_user` VALUES ('10379', '1', '96e79218965eb72c92a549dd5a330112', 'tu---apos;dou', 'tu\'dou', '', '1', '123100', '2016-05-03 17:28:41', '0', '2017-02-22 14:42:06', '10021', '', '', null, '0');
INSERT INTO `uc_user` VALUES ('10380', '1', '96e79218965eb72c92a549dd5a330112', '信融贷', 'xinrong', '', '1', '400003', '2016-05-06 11:39:00', '0', '2017-02-22 14:42:00', '10021', '', '', null, '0');
INSERT INTO `uc_user` VALUES ('10381', '0', '96e79218965eb72c92a549dd5a330112', '信融贷一', 'xinrong1', '', '1', '400003', '2016-05-06 11:42:07', '10380', '2016-05-06 11:42:07', '10380', '', null, null, '0');
INSERT INTO `uc_user` VALUES ('10382', '1', '96e79218965eb72c92a549dd5a330112', '信融真', 'xinrongz', 'sdadddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwttttttttttttttttttttttttttttttttttttttttttttttttttttttt', '3', '4000003', '2016-05-06 17:44:45', '0', '2016-05-12 14:54:59', '10021', '', '', null, '0');
INSERT INTO `uc_user` VALUES ('10383', '0', '96e79218965eb72c92a549dd5a330112', '信融真一', 'xinrongz1', '111111111111111111111111', '1', '4000003', '2016-05-06 17:46:08', '10382', '2016-05-09 16:31:36', '10382', '', '', null, '0');
INSERT INTO `uc_user` VALUES ('10384', '0', '96e79218965eb72c92a549dd5a330112', '姓名', '1111111', '', '3', '4000003', '2016-05-09 11:22:00', '10382', '2016-05-09 11:22:05', '10382', '', null, null, '0');
INSERT INTO `uc_user` VALUES ('10385', '1', '52256218d42c85262eb3319cf2e96ea6', '雪花', '2', null, '3', '333999', '2016-05-12 10:57:42', '0', '2016-12-30 10:57:03', '10021', '', '', null, '0');
INSERT INTO `uc_user` VALUES ('10386', '0', '96e79218965eb72c92a549dd5a330112', '姓名', 'daizhong1', '1', '3', '100092', '2016-05-12 11:21:35', '10173', '2016-05-12 11:21:41', '10173', '', null, null, '0');
INSERT INTO `uc_user` VALUES ('10387', '0', '96e79218965eb72c92a549dd5a330112', '姓名', 'zhangha', '1', '1', '100092', '2016-05-12 11:25:27', '10173', '2016-05-17 11:03:51', '10173', '', '18855333333', null, '0');
INSERT INTO `uc_user` VALUES ('10388', '0', '96e79218965eb72c92a549dd5a330112', '删除的', 'shanchude', '1', '3', '100092', '2016-05-16 18:22:51', '10173', '2016-05-16 18:23:17', '10173', '', '', null, '0');
INSERT INTO `uc_user` VALUES ('10389', '0', '96e79218965eb72c92a549dd5a330112', '测试', 'faef11', '1', '3', '100092', '2016-05-17 11:05:42', '10173', '2016-05-17 11:15:01', '10173', '', null, null, '0');
INSERT INTO `uc_user` VALUES ('10390', '0', '96e79218965eb72c92a549dd5a330112', '密码', 'tttt', '1', '3', '100092', '2016-05-17 11:14:43', '10173', '2016-05-17 11:14:56', '10173', '', '18867464564', null, '0');
INSERT INTO `uc_user` VALUES ('10391', '1', '96e79218965eb72c92a549dd5a330112', '姓名', '7878', null, '3', '009988', '2016-05-17 11:45:38', '0', '2016-05-17 11:45:45', '10358', '', '', null, '0');
INSERT INTO `uc_user` VALUES ('10392', '2', '96e79218965eb72c92a549dd5a330112', '测试', 'feafaew', 'afef', '3', '-1', '2016-05-18 10:05:44', '10021', '2016-05-18 10:06:38', '10021', null, null, null, '0');
INSERT INTO `uc_user` VALUES ('10393', '0', '9ab05cae3461bcb6642a19b67784866a', '导致', '222222222', '1', '3', '100092', '2016-05-18 16:47:41', '10173', '2016-05-18 16:47:59', '10173', '', '15001252363', null, '0');
INSERT INTO `uc_user` VALUES ('10394', '2', '96e79218965eb72c92a549dd5a330112', '向量的秩', 'tt', '', '3', '-1', '2016-05-25 11:07:24', '10021', '2016-05-25 17:38:26', '10021', '', '', null, '0');
INSERT INTO `uc_user` VALUES ('10395', '2', '96e79218965eb72c92a549dd5a330112', '工厂模式', '111feFe', '', '3', '-1', '2016-05-25 11:29:10', '10021', '2016-05-25 17:38:26', '10021', '', '', null, '0');
INSERT INTO `uc_user` VALUES ('10396', '2', '96e79218965eb72c92a549dd5a330112', '抽象工厂模式', 'fae323', '', '3', '-1', '2016-05-25 11:29:30', '10021', '2016-05-25 17:38:26', '10021', '', '', null, '0');
INSERT INTO `uc_user` VALUES ('10397', '2', '96e79218965eb72c92a549dd5a330112', '创建型', 'ef2323', '', '3', '-1', '2016-05-25 11:29:47', '10021', '2016-05-25 17:38:26', '10021', '', '', null, '0');
INSERT INTO `uc_user` VALUES ('10398', '2', '96e79218965eb72c92a549dd5a330112', '测试测试', 'fefefe', '', '3', '-1', '2016-05-25 11:35:02', '10021', '2016-05-25 17:38:26', '10021', '', '', null, '0');
INSERT INTO `uc_user` VALUES ('10399', '2', '96e79218965eb72c92a549dd5a330112', '运营管理', 'rr', '', '3', '-1', '2016-05-25 15:59:49', '10021', '2016-05-25 17:38:26', '10021', '', '', null, '0');
INSERT INTO `uc_user` VALUES ('10400', '2', '96e79218965eb72c92a549dd5a330112', '向量', 'ttkk', '', '3', '-1', '2016-05-25 17:45:09', '10021', '2016-05-25 17:45:27', '10021', '', '', null, '0');
INSERT INTO `uc_user` VALUES ('10401', '2', '96e79218965eb72c92a549dd5a330112', '向量', 'ttsstt', '', '3', '-1', '2016-05-25 17:45:57', '10021', '2016-05-25 17:46:34', '10021', '', '', null, '0');
INSERT INTO `uc_user` VALUES ('10402', '2', '96e79218965eb72c92a549dd5a330112', '测试', 'tstsks', '', '1', '-1', '2016-05-25 17:50:39', '10021', '2016-11-08 14:39:00', '10021', '', '', null, '0');
INSERT INTO `uc_user` VALUES ('10403', '2', '96e79218965eb72c92a549dd5a330112', '向量', 'ttthhh', '', '1', '-1', '2016-05-25 17:51:13', '10021', '2016-05-25 17:51:13', '10021', '', '', null, '0');
INSERT INTO `uc_user` VALUES ('10404', '2', '96e79218965eb72c92a549dd5a330112', '用例', 'tata', '', '1', '-1', '2016-05-25 17:53:53', '10021', '2016-05-25 17:53:53', '10021', '', '', null, '0');
INSERT INTO `uc_user` VALUES ('10405', '2', '96e79218965eb72c92a549dd5a330112', '雅洁', 'yajie', '', '1', '-1', '2016-05-26 17:35:54', '10021', '2016-09-07 10:38:10', '10021', '', '', null, '0');
INSERT INTO `uc_user` VALUES ('10406', '2', '96e79218965eb72c92a549dd5a330112', '运营', 'yunying', '', '1', '-1', '2016-06-01 19:09:02', '10021', '2016-09-07 10:38:16', '10021', '', '', null, '0');
INSERT INTO `uc_user` VALUES ('10407', '0', '96e79218965eb72c92a549dd5a330112', '姓名', 'choushu', '1', '1', '100092', '2016-06-16 11:07:31', '10173', '2016-06-16 11:07:31', '10173', '', '', null, '0');
INSERT INTO `uc_user` VALUES ('10408', '0', '96e79218965eb72c92a549dd5a330112', '姓名', 'coushu2', '1', '1', '100092', '2016-06-16 11:08:11', '10173', '2016-06-16 11:08:11', '10173', '', '', null, '0');
INSERT INTO `uc_user` VALUES ('10409', '0', '96e79218965eb72c92a549dd5a330112', '凑数', 'coushu3', '1', '3', '100092', '2016-06-16 11:08:28', '10173', '2017-02-22 18:21:24', '10173', '', '', null, '0');
INSERT INTO `uc_user` VALUES ('10410', '0', '96e79218965eb72c92a549dd5a330112', '凑数', 'cosuhu4', '1', '3', '100092', '2016-06-16 11:08:45', '10173', '2017-02-22 18:20:51', '10173', '', '', null, '0');
INSERT INTO `uc_user` VALUES ('10411', '1', '6d249379f6202e885153ff4267bbdc44', 'djp', '899999', '', '1', '899999', '2016-06-25 20:11:15', '0', '2017-02-22 14:41:17', '10021', '', '', null, '0');
INSERT INTO `uc_user` VALUES ('10412', '1', '96e79218965eb72c92a549dd5a330112', '姓套餐套餐', '222111', '', '1', '100014', '2016-07-18 16:08:57', '0', '2017-02-22 14:41:09', '10021', '', '', null, '0');
INSERT INTO `uc_user` VALUES ('10413', '1', '96e79218965eb72c92a549dd5a330112', '姓名', 'asdf', '', '1', '100010', '2016-07-18 16:14:16', '0', '2017-02-22 14:40:45', '10021', '', '', null, '0');
INSERT INTO `uc_user` VALUES ('10414', '2', '96e79218965eb72c92a549dd5a330112', '姓名', '111111111111', '', '3', '-1', '2016-07-18 16:14:53', '10021', '2016-07-18 16:15:00', '10021', '', '', null, '0');
INSERT INTO `uc_user` VALUES ('10415', '1', '96e79218965eb72c92a549dd5a330112', '测试用例', 'ttest', '', '1', '100024', '2016-07-23 14:59:26', '0', '2017-02-22 14:40:39', '10021', '', '', null, '0');
INSERT INTO `uc_user` VALUES ('10416', '0', '96e79218965eb72c92a549dd5a330112', '测试', 'mutest1', '1', '1', '100092', '2016-08-08 15:35:19', '10173', '2016-08-08 15:35:19', '10173', '', '', null, '0');
INSERT INTO `uc_user` VALUES ('10417', '0', '96e79218965eb72c92a549dd5a330112', '分析师', 'muTest', '1', '1', '100092', '2016-09-05 16:02:08', '10173', '2016-09-05 16:02:35', '10173', '', '', null, '0');
INSERT INTO `uc_user` VALUES ('10419', '1', '2fa9e7e187073032e600f801b759f413', '武汉金机构', '3011009mumeng', null, '3', '3011009', '2016-09-06 10:29:47', '0', '2016-09-06 10:33:36', '10021', 'meng.mu@100crdit.com', '', null, '0');
INSERT INTO `uc_user` VALUES ('10420', '1', '7d2adbb34104a75673dfbab7ba35bfd6', '武汉金机构1', '3011009mumeng1', null, '3', '3011009', '2016-09-06 10:35:03', '0', '2016-09-06 10:36:45', '10021', '', '', null, '0');
INSERT INTO `uc_user` VALUES ('10421', '1', '830e7ca0f21eeb027d6cccc1a74890f3', '罗盘商户', 'comsh1', '', '1', '5000002', '2016-09-24 11:25:50', '0', '2017-05-03 10:09:34', '10021', '', '', null, '0');
INSERT INTO `uc_user` VALUES ('10422', '0', '6c651240644abf13aba8b7fbd1d9463a', '罗盘商户一全', 'comsh1a', '', '1', '5000002', '2016-09-24 11:27:23', '10421', '2016-09-24 11:32:15', '10421', '', '', null, '0');
INSERT INTO `uc_user` VALUES ('10423', '1', 'e9bf16f08ba401f7c04e0ba32bcc9a20', '罗盘商户二', 'comsh2a', '', '1', '5000003', '2016-09-24 12:44:07', '0', '2016-09-24 14:49:00', '10021', '', '', null, '0');
INSERT INTO `uc_user` VALUES ('10424', '0', '7abad6046d2431f93bacdf4ebe4c87fd', '姓姓姓姓', 'comsh2', '', '1', '5000003', '2016-09-24 12:45:57', '10423', '2016-09-24 14:49:21', '10423', '', '', null, '0');
INSERT INTO `uc_user` VALUES ('10434', '2', '96e79218965eb72c92a549dd5a330112', '李心颖', 'xinying', '', '1', '-1', '2016-09-28 17:16:10', '10021', '2017-02-17 10:57:59', '10021', 'yuheng.wang@100credit.com', '', null, '0');
INSERT INTO `uc_user` VALUES ('10435', '2', '29d571e18af045b0e778126486119ed9', '王煜恒', 'yuhengyy', 'dddd', '1', '-1', '2016-09-28 17:17:03', '10021', '2017-07-08 18:21:07', '10021', 'yuheng.wang@100credit.com', '', null, '0');
INSERT INTO `uc_user` VALUES ('10436', '0', '670b14728ad9902aecba32e22fa4f6bd', '哈哈', 'lalal', '1', '3', '100092', '2016-10-13 18:59:18', '10173', '2016-10-13 18:59:33', '10173', '', '13245678903', null, '0');
INSERT INTO `uc_user` VALUES ('10437', '0', '96e79218965eb72c92a549dd5a330112', '姓名', 'mutest', '1', '1', '100092', '2016-10-17 16:44:15', '10173', '2016-10-17 16:44:15', '10173', '', '', null, '0');
INSERT INTO `uc_user` VALUES ('10438', '1', '96e79218965eb72c92a549dd5a330112', '管理员', '88888', null, '1', '100095', '2016-10-18 17:13:29', '0', '2016-10-18 17:13:29', '0', '', '', null, '0');
INSERT INTO `uc_user` VALUES ('10440', '1', '5b1b68a9abf4d2cd155c81a9225fd158', '姓名', '6666666', '', '1', '100033', '2016-10-18 17:14:06', '0', '2017-02-22 14:40:30', '10021', '', '', null, '0');
INSERT INTO `uc_user` VALUES ('10441', '1', '96e79218965eb72c92a549dd5a330112', 'guoyu', 'guoyu', null, '3', '100101', '2016-10-24 18:23:30', '0', '2016-10-24 18:51:06', '10021', '', '', null, '0');
INSERT INTO `uc_user` VALUES ('10443', '1', '96e79218965eb72c92a549dd5a330112', 'test1', 'test1', null, '3', '100030', '2016-10-24 18:35:30', '0', '2016-10-24 18:51:06', '10021', '', '', null, '0');
INSERT INTO `uc_user` VALUES ('10444', '0', '96e79218965eb72c92a549dd5a330112', '测试', 'test11', '', '3', '100030', '2016-10-24 18:38:29', '10443', '2016-10-24 18:50:36', '10443', '', '', null, '0');
INSERT INTO `uc_user` VALUES ('10445', '0', '96e79218965eb72c92a549dd5a330112', '郭宇', 'guoyu1', '', '3', '100101', '2016-10-24 18:44:13', '10441', '2016-10-24 18:49:51', '10441', '', '', null, '0');
INSERT INTO `uc_user` VALUES ('10446', '0', '96e79218965eb72c92a549dd5a330112', '阿女', 'avon1', '', '3', '100012', '2016-10-24 18:46:32', '10442', '2016-10-24 18:50:14', '10442', '', '', null, '0');
INSERT INTO `uc_user` VALUES ('10447', '0', '96e79218965eb72c92a549dd5a330112', '郭宇', 'guoyu2', '', '3', '100101', '2016-10-24 18:48:27', '10441', '2016-10-24 18:49:51', '10441', '', '', null, '0');
INSERT INTO `uc_user` VALUES ('10456', '1', '96e79218965eb72c92a549dd5a330112', '名名名', 'guanliyuan', '', '1', '4000019', '2016-11-03 19:56:28', '0', '2016-11-19 10:46:27', '10021', '', '', null, '0');
INSERT INTO `uc_user` VALUES ('10457', '2', '14246c4061a3077b9681dc41bae4b2f5', '叶美女', 'meinv.ye', '', '1', '-1', '2016-11-07 11:48:25', '10021', '2016-11-07 11:48:25', '10021', '', '', null, '0');
INSERT INTO `uc_user` VALUES ('10458', '0', '1bbd886460827015e5d605ed44252251', '名名', '11111111', '', '1', '4000019', '2016-11-08 14:42:02', '10456', '2016-11-08 14:42:02', '10456', '', '', null, '0');
INSERT INTO `uc_user` VALUES ('10459', '0', '4da9cf3baf63c4d5f3bf520001b3ffb4', '姓名', '66666666', '', '1', '999102', '2016-11-21 14:00:49', '10182', '2016-11-21 14:00:49', '10182', '', '', null, '0');
INSERT INTO `uc_user` VALUES ('10461', '1', '96e79218965eb72c92a549dd5a330112', '张杰', 'zhangjie2', '', '1', '999333', '2016-11-24 18:39:40', '0', '2017-02-22 14:40:58', '10021', '', '', null, '0');
INSERT INTO `uc_user` VALUES ('10462', '0', '46f94c8de14fb36680850768ff1b7f2a', '姓姓姓姓', 'ssssssss', '1', '3', '100092', '2016-12-15 15:58:56', '10173', '2016-12-22 11:03:05', '10173', '', '', null, '0');
INSERT INTO `uc_user` VALUES ('10463', '0', '6db4efaea017cf8aad33a54fd589d9cb', '角色角色', 'ttt', '1', '3', '100092', '2016-12-15 16:12:18', '10173', '2016-12-22 10:37:19', '10173', '', '', null, '0');
INSERT INTO `uc_user` VALUES ('10464', '0', '49b3b2a0569be572731830ec6eee6053', '姓名', 'zhanghao123', '1', '3', '100092', '2016-12-15 17:28:57', '10173', '2016-12-15 18:09:23', '10173', '', '', null, '0');
INSERT INTO `uc_user` VALUES ('10465', '0', '49b3b2a0569be572731830ec6eee6053', '姓名', 'zhanghao113', '1', '3', '100092', '2016-12-15 17:31:43', '10173', '2016-12-15 18:09:23', '10173', '', '', null, '0');
INSERT INTO `uc_user` VALUES ('10466', '0', '49b3b2a0569be572731830ec6eee6053', '姓名', 'zhanghao114', '1', '3', '100092', '2016-12-15 18:23:58', '10173', '2016-12-15 18:24:07', '10173', '', '', null, '0');
INSERT INTO `uc_user` VALUES ('10467', '0', '49b3b2a0569be572731830ec6eee6053', '姓名', 'zhanghao115', '1', '3', '100092', '2016-12-19 10:20:14', '10173', '2016-12-19 10:20:24', '10173', '', '', null, '0');
INSERT INTO `uc_user` VALUES ('10468', '0', 'e19d5cd5af0378da05f63f891c7467af', '姓名', 'name144', '1', '3', '100092', '2016-12-22 11:07:13', '10173', '2016-12-22 11:07:23', '10173', '', '', null, '0');
INSERT INTO `uc_user` VALUES ('10469', '0', 'e19d5cd5af0378da05f63f891c7467af', '姓名', 'name146', '1', '3', '100092', '2016-12-22 11:10:18', '10173', '2016-12-22 11:10:28', '10173', '', '', null, '0');
INSERT INTO `uc_user` VALUES ('10470', '0', 'e19d5cd5af0378da05f63f891c7467af', '姓名', 'name148', '1', '3', '100092', '2016-12-22 11:18:31', '10173', '2016-12-22 11:18:40', '10173', '', '', null, '0');
INSERT INTO `uc_user` VALUES ('10471', '0', 'e19d5cd5af0378da05f63f891c7467af', '姓名', 'name150', '1', '3', '100092', '2016-12-22 16:29:01', '10173', '2016-12-22 16:29:11', '10173', '', '', null, '0');
INSERT INTO `uc_user` VALUES ('10472', '0', 'e19d5cd5af0378da05f63f891c7467af', '姓名', 'name154', '1', '3', '100092', '2016-12-22 16:39:36', '10173', '2016-12-22 16:39:45', '10173', '', '', null, '0');
INSERT INTO `uc_user` VALUES ('10473', '0', 'e19d5cd5af0378da05f63f891c7467af', '姓名', 'name156', '1', '3', '100092', '2016-12-23 13:54:41', '10173', '2016-12-23 13:54:51', '10173', '', '', null, '0');
INSERT INTO `uc_user` VALUES ('10474', '0', 'e19d5cd5af0378da05f63f891c7467af', '姓名', 'name158', '1', '3', '100092', '2016-12-23 14:05:35', '10173', '2016-12-23 14:05:44', '10173', '', '', null, '0');
INSERT INTO `uc_user` VALUES ('10475', '0', '666b3ef5814f56aa21285e0095283b06', '独到的', 'bbx111', '1', '1', '100092', '2016-12-27 15:26:58', '10173', '2016-12-27 15:26:58', '10173', '', '', null, '0');
INSERT INTO `uc_user` VALUES ('10476', '0', 'e19d5cd5af0378da05f63f891c7467af', '姓名', 'name160', '1', '3', '100092', '2016-12-28 18:39:57', '10173', '2016-12-28 18:40:06', '10173', '', '', null, '0');
INSERT INTO `uc_user` VALUES ('10477', '1', '91867847673972c27c0db78875dbbe44', '姓名', 'zhangjie3', '', '1', '333999', '2016-12-30 10:57:49', '0', '2017-02-22 14:41:03', '10021', '', '', null, '0');
INSERT INTO `uc_user` VALUES ('10482', '1', '96e79218965eb72c92a549dd5a330112', '姓名姓名', 'hhhh', '', '1', '36009097', '2017-01-03 15:21:58', '0', '2017-02-22 14:40:53', '10021', '', '', null, '0');
INSERT INTO `uc_user` VALUES ('10483', '0', '22c0bf4c7df253b5d4ee6770fabb8cfa', '姓名名', 'mutest5', '1', '1', '100092', '2017-01-05 15:21:07', '10173', '2017-01-05 15:25:26', '10173', 'meinv.ye@100credit.com', '', null, '0');
INSERT INTO `uc_user` VALUES ('10484', '0', 'b4fae328e6daf6aef95a86afdf1978ff', '姓姓222', 'mutest6mutest6mutest6', '1', '1', '100092', '2017-01-05 15:27:49', '10173', '2017-01-17 15:14:55', '10173', '', '', null, '0');
INSERT INTO `uc_user` VALUES ('10485', '2', '0672ca9430716d57364299818a448d8f', '姓姓姓姓姓', '1111111111', '', '3', '-1', '2017-01-09 10:18:22', '10021', '2017-01-09 10:18:28', '10021', '', '', null, '0');
INSERT INTO `uc_user` VALUES ('10486', '0', 'c8ad3c7c32535ac070393a6268d6a9fe', '姓名', 'xingming', '', '3', '999102', '2017-01-09 11:15:38', '10182', '2017-01-09 11:15:44', '10182', '', '', null, '0');
INSERT INTO `uc_user` VALUES ('10487', '0', 'af2263d93fb8f510b73a286a372e0fde', '名名名名', 'zhnaghao3', '1', '3', '100092', '2017-01-16 11:14:18', '10173', '2017-01-16 19:33:43', '10173', '', '', null, '0');
INSERT INTO `uc_user` VALUES ('10500', '0', '3829eaeba40e6d83876f8965e51b0265', '姓名', 'hanqide1', '', '1', '999102', '2017-01-16 16:24:29', '10182', '2017-01-16 16:24:29', '10182', '', '', null, '0');
INSERT INTO `uc_user` VALUES ('10501', '0', '9a15724611b68175e524fa35fbceb560', '谢谢', 'hanqide2', '', '1', '999102', '2017-01-16 16:24:44', '10182', '2017-01-16 16:24:44', '10182', '', '', null, '0');
INSERT INTO `uc_user` VALUES ('10502', '0', '9eecee349f48510f0d26a3ae904167bb', '请求', 'hanqide3', '', '1', '999102', '2017-01-16 16:24:55', '10182', '2017-01-16 16:24:55', '10182', '', '', null, '0');
INSERT INTO `uc_user` VALUES ('10503', '0', '96dfd02acbbf9641c3cbaaad71900208', '请求', 'hanqide4', '', '1', '999102', '2017-01-16 16:25:12', '10182', '2017-01-16 16:25:12', '10182', '', '', null, '0');
INSERT INTO `uc_user` VALUES ('10504', '0', '5b6eefe1a9dfad093f89bbe837cb9817', '请求', 'hanqide5', '', '1', '999102', '2017-01-16 16:25:36', '10182', '2017-01-16 16:25:36', '10182', '', '', null, '0');
INSERT INTO `uc_user` VALUES ('10514', '2', '2fd96af279338944e4bd63f9be5faa98', '百融规则管理员', 'hello', '', '1', '-1', '2017-02-17 15:18:10', '10021', '2017-02-20 09:29:49', '10021', '', '', null, '0');
INSERT INTO `uc_user` VALUES ('10520', '1', 'dfad7f26ef2d1f81d7111f2f439a501c', '内部测试', '4000039a', '', '1', '4000039', '2017-02-27 10:42:38', '0', '2017-02-27 10:44:17', '10021', '', '', null, '0');
INSERT INTO `uc_user` VALUES ('10521', '1', 'c92b51b2f4d93d4e1081670bd9273402', '测试', '400090a', null, '1', '400090', '2017-02-27 10:43:39', '0', '2017-03-17 17:05:22', '10521', '', '', null, '0');
INSERT INTO `uc_user` VALUES ('10522', '0', 'c47b8db8ca10fb218831e3eb9006251c', '则管', 'hanqi11', '1', '1', '100092', '2017-02-28 23:26:46', '10173', '2017-05-05 09:59:51', '10173', '', '', null, '0');
INSERT INTO `uc_user` VALUES ('10523', '0', '6846860684f05029abccc09a53cd66f1', '管理', 'hanqi1@', '1', '1', '100092', '2017-02-28 23:46:58', '10173', '2017-02-28 23:48:45', '10173', '', '', null, '0');
INSERT INTO `uc_user` VALUES ('10524', '1', '21218cca77804d2ba1922c33e0151105', '骆驼金融', 'oneship_API', null, '3', '3000517', '2017-03-02 14:38:16', '0', '2017-03-02 14:44:26', '10021', 'chengixing@oneship.cc', '13812112211', null, '0');
INSERT INTO `uc_user` VALUES ('10525', '1', 'c47b8db8ca10fb218831e3eb9006251c', '易拉单的', 'ssdfsdfsdf', null, '1', '3000026', '2017-03-02 14:45:01', '0', '2017-05-08 15:01:10', '10021', '', '', null, '0');
INSERT INTO `uc_user` VALUES ('10526', '1', 'c47b8db8ca10fb218831e3eb9006251c', '名名', 'testtest', null, '1', '100030', '2017-03-02 17:34:15', '0', '2017-05-08 14:01:34', '10021', '', '', null, '0');
INSERT INTO `uc_user` VALUES ('10527', '1', '1fb0e331c05a52d5eb847d6fc018320d', '姓名', '1q!%40%23%24%25%5E%26*', null, '1', '100032', '2017-03-02 17:35:04', '0', '2017-03-02 17:35:04', '0', '', '', null, '0');
INSERT INTO `uc_user` VALUES ('10528', '1', '8dd47963ab01a347fcd3a047eb782624', '名名', '1q~!%40%23%24%25%5E%26*', null, '1', '100038', '2017-03-02 17:36:18', '0', '2017-03-02 17:36:18', '0', '', '', null, '0');
INSERT INTO `uc_user` VALUES ('10529', '0', 'f30db51caf1c79748b19f44b333e4028', '名名', '123qqq', '1', '1', '100092', '2017-03-02 17:40:50', '10173', '2017-03-02 17:40:50', '10173', '', '', null, '0');
INSERT INTO `uc_user` VALUES ('10530', '0', 'a6a6fb12ab23eb8a4d31b9f4219d48f9', '姓名', 'name163', '1', '1', '100092', '2017-03-13 14:35:59', '10173', '2017-03-13 14:35:59', '10173', '', '', null, '0');
INSERT INTO `uc_user` VALUES ('10531', '0', 'ee4f34a72737a5b33b5077f2490efa12', '姓名', 'zhanghao111', '1', '1', '100092', '2017-03-13 16:41:48', '10173', '2017-03-13 16:41:48', '10173', '', '', null, '0');
INSERT INTO `uc_user` VALUES ('10532', '0', 'e120ea280aa50693d5568d0071456460', '姓名', 'name170abcd1234', '1', '1', '100092', '2017-03-13 17:39:13', '10173', '2017-03-13 17:39:13', '10173', '', '', null, '0');
INSERT INTO `uc_user` VALUES ('10533', '0', 'e19d5cd5af0378da05f63f891c7467af', '姓名', 'name174', '1', '3', '100092', '2017-03-13 17:55:11', '10173', '2017-03-13 17:57:52', '10173', '', '', null, '0');
INSERT INTO `uc_user` VALUES ('10534', '0', 'e19d5cd5af0378da05f63f891c7467af', '姓名', 'name178', '1', '1', '100092', '2017-03-13 17:59:49', '10173', '2017-03-13 17:59:49', '10173', '', '', null, '0');
INSERT INTO `uc_user` VALUES ('10535', '0', 'e19d5cd5af0378da05f63f891c7467af', '姓名', 'name180', '1', '3', '100092', '2017-03-13 18:01:25', '10173', '2017-03-13 18:01:46', '10173', '', '', null, '0');
INSERT INTO `uc_user` VALUES ('10536', '0', 'e19d5cd5af0378da05f63f891c7467af', '姓名', 'name182', '1', '1', '100092', '2017-03-14 16:20:29', '10173', '2017-03-14 16:20:29', '10173', '', '', null, '0');
INSERT INTO `uc_user` VALUES ('10537', '0', 'e19d5cd5af0378da05f63f891c7467af', '姓名', 'name184', '1', '1', '100092', '2017-03-14 20:51:26', '10173', '2017-03-14 20:51:26', '10173', '', '', null, '0');
INSERT INTO `uc_user` VALUES ('10538', '0', 'e19d5cd5af0378da05f63f891c7467af', '姓名', 'name186', '1', '1', '100092', '2017-03-14 20:52:31', '10173', '2017-03-14 20:52:31', '10173', '', '', null, '0');
INSERT INTO `uc_user` VALUES ('10539', '0', 'cccf71197401f0af57f60a39827de52f', '名名', '111@222a', '1', '1', '100092', '2017-03-15 14:40:52', '10173', '2017-03-15 14:42:02', '10539', '', '', null, '0');
INSERT INTO `uc_user` VALUES ('10540', '0', 'cccf71197401f0af57f60a39827de52f', '姓名姓名姓名', '1q1q2', '1', '1', '100092', '2017-03-15 14:42:43', '10173', '2017-03-15 14:43:11', '10540', '', '', null, '0');
INSERT INTO `uc_user` VALUES ('10541', '0', '99e4bf344d216feb3b6c0d147134997a', '敏敏测试勿动', 'minmintest', '1', '1', '100092', '2017-03-15 16:31:28', '10173', '2017-03-15 16:31:28', '10173', '', '', null, '0');
INSERT INTO `uc_user` VALUES ('10542', '1', '96e79218965eb72c92a549dd5a330112', 'test-f', 'test-f', null, '3', '4000065', '2017-03-17 15:37:29', '0', '2017-03-17 18:28:07', '10021', '', '', null, '0');
INSERT INTO `uc_user` VALUES ('10543', '1', '96e79218965eb72c92a549dd5a330112', 'test-e', 'test-e', null, '3', '4000064', '2017-03-17 15:38:17', '0', '2017-03-17 18:28:07', '10021', '', '', null, '0');
INSERT INTO `uc_user` VALUES ('10544', '1', '96e79218965eb72c92a549dd5a330112', 'test-c', 'test-c', null, '3', '4000062', '2017-03-17 15:39:19', '0', '2017-03-17 18:25:41', '10021', '', '', null, '0');
INSERT INTO `uc_user` VALUES ('10545', '1', '96e79218965eb72c92a549dd5a330112', 'test-d', 'test-d', null, '3', '4000063', '2017-03-17 15:40:12', '0', '2017-03-17 18:25:41', '10021', '', '', null, '0');
INSERT INTO `uc_user` VALUES ('10546', '1', 'a115a58e6c40da1887f9c5072ba14a37', '原模块', 'test_e', '', '1', '4000064', '2017-03-17 18:28:12', '0', '2017-05-05 15:26:49', '10021', '', '', null, '0');
INSERT INTO `uc_user` VALUES ('10547', '1', 'bafa1d54bc9e3bb264c0b2e96c75ee3c', '新模块', 'test_f', '', '1', '4000065', '2017-03-17 18:28:49', '0', '2017-03-17 18:38:01', '10021', '', '', null, '0');
INSERT INTO `uc_user` VALUES ('10548', '0', '190235fe2e05512b53e597eca655ce99', '姓名', 'fenxishi123', '', '1', '100092', '2017-04-05 10:19:34', '10173', '2017-06-02 16:39:55', '10173', '', '', null, '0');
INSERT INTO `uc_user` VALUES ('10549', '1', '0ac8dca546f3ee907015e5ccbdd19c86', '姓姓', 'zgjs', null, '3', '100108', '2017-04-05 11:30:10', '0', '2017-04-05 11:32:14', '10021', '', '', null, '0');
INSERT INTO `uc_user` VALUES ('10550', '1', '59819844396a9295c87271773fbcb78b', '姓名', 'zsyh', null, '3', '100108', '2017-04-05 11:32:54', '0', '2017-04-10 14:43:11', '10021', '', '', null, '0');
INSERT INTO `uc_user` VALUES ('10552', '0', '4061863caf7f28c0b0346719e764d561', '姓名姓名', 'test111', '', '1', '999102', '2017-04-07 14:49:12', '10182', '2017-04-07 14:49:12', '10182', '', '', null, '0');
INSERT INTO `uc_user` VALUES ('10553', '2', '098642cbbd544f326f3c995438873408', '姓姓', 'testyy', '', '3', '-1', '2017-04-07 15:06:00', '10021', '2017-04-07 15:06:06', '10021', '', '', null, '0');
INSERT INTO `uc_user` VALUES ('10558', '2', '1603e69463fb17ce5b4a1ec345a0a653', '姓名', 'yuyu', '', '3', '-1', '2017-04-10 14:46:01', '10021', '2017-04-10 14:46:07', '10021', '', '', null, '0');
INSERT INTO `uc_user` VALUES ('10559', '0', '78fa2dfa335e807807f30c3ad66e7872', '姓名', '111111w', '', '1', '3000026', '2017-04-10 14:51:16', '10525', '2017-04-10 14:51:16', '10525', '', '', null, '0');
INSERT INTO `uc_user` VALUES ('10560', '1', 'fd512fd435218ed16370af573470c7da', '姓名', 'shhbt', null, '1', '100109', '2017-04-10 16:58:42', '0', '2017-04-10 16:58:42', '0', '', '', null, '0');
INSERT INTO `uc_user` VALUES ('10561', '1', '4af388ffd9ccdc80064c02e17361ffbb', '硒鼓要', 'qwertyuiop', null, '1', '100067', '2017-04-24 11:09:37', '0', '2017-05-03 10:11:15', '10021', '', '', null, '0');
INSERT INTO `uc_user` VALUES ('10562', '1', '6846860684f05029abccc09a53cd66f1', '测试测试测试', 'qwertyuiop123456', null, '3', '100021', '2017-04-24 11:19:36', '0', '2017-04-24 13:19:56', '10021', '', '', null, '0');
INSERT INTO `uc_user` VALUES ('10579', '1', 'ad07fb25aa2d3a9f96ee12f25e0be902', '超出', 'c123456', null, '1', '4000062', '2017-04-25 15:59:35', '0', '2017-04-25 15:59:35', '0', '', '', null, '0');
INSERT INTO `uc_user` VALUES ('10580', '1', 'adf00707a1c0154a9ad8edb57c8646f4', '姓名', 'd123456', '', '1', '4000063', '2017-04-26 11:39:22', '0', '2017-04-26 14:02:32', '10021', '', '', null, '0');
INSERT INTO `uc_user` VALUES ('10581', '1', 'c47b8db8ca10fb218831e3eb9006251c', '新客户一', 'new111', null, '1', '4800001', '2017-04-26 17:31:24', '0', '2017-05-16 17:45:22', '10021', '', '', null, '0');
INSERT INTO `uc_user` VALUES ('10582', '1', '5bcb7fe95c442eed49aad9d25d0c8135', '新项目二', 'xinxiangmu2', '', '1', '4800002', '2017-05-03 14:19:42', '0', '2017-05-17 13:35:11', '10021', '', '', null, '0');
INSERT INTO `uc_user` VALUES ('10583', '0', '372744b0b0ac50e7a2cc55b335147964', '测试', 'lbjtest', '', '1', '999102', '2017-05-03 15:40:48', '10182', '2017-05-03 15:40:48', '10182', '', '', null, '0');
INSERT INTO `uc_user` VALUES ('10584', '2', '372744b0b0ac50e7a2cc55b335147964', '规则管理员', 'lbj', 'dddd', '1', '-1', '2017-05-03 17:15:06', '10021', '2017-07-08 18:20:19', '10021', '', '', null, '0');
INSERT INTO `uc_user` VALUES ('10585', '2', '372744b0b0ac50e7a2cc55b335147964', '百融运营管理员', 'lbj1', '', '1', '-1', '2017-05-03 18:05:27', '10021', '2017-05-03 18:05:27', '10021', '', '', null, '0');
INSERT INTO `uc_user` VALUES ('10586', '1', 'a01588751bd98798dce183bfcaf23fc5', '姓名', 'ssseee', null, '3', '100017', '2017-05-03 18:29:53', '0', '2017-05-03 18:30:07', '10021', '', '', null, '0');
INSERT INTO `uc_user` VALUES ('10587', '1', '5e543256c480ac577d30f76f9120eb74', '姓姓姓', 'wwweee', null, '3', '100017', '2017-05-03 18:30:37', '0', '2017-05-03 18:30:46', '10021', '', '', null, '0');
INSERT INTO `uc_user` VALUES ('10588', '1', '68343c973ef8655a73e17a54fcfa07bc', '名名', 'rrrttt', null, '3', '100017', '2017-05-03 18:31:35', '0', '2017-05-03 18:32:31', '10021', '', '', null, '0');
INSERT INTO `uc_user` VALUES ('10589', '0', '372744b0b0ac50e7a2cc55b335147964', '标准版规则管理员', 'lbj2', '', '1', '100053', '2017-05-08 15:35:44', '156', '2017-05-08 15:35:44', '156', '', '', null, '0');
INSERT INTO `uc_user` VALUES ('10590', '0', '372744b0b0ac50e7a2cc55b335147964', '规则管理员', 'lbj3', '', '1', '100030', '2017-05-08 15:47:10', '10526', '2017-05-08 15:47:10', '10526', '', '', null, '0');
INSERT INTO `uc_user` VALUES ('10591', '1', '3177f70caa7e236d70c6bab46c96dd76', '标准版用户管理员', 'xinbo', null, '3', '100017', '2017-05-30 10:35:16', '0', '2017-05-30 10:40:05', '10021', 'meng.mu@100credit.com', '15001258239', null, '0');
INSERT INTO `uc_user` VALUES ('10592', '1', '7c910d243d69ce03c9e2120bf8b1ccd2', '准版用户管理员', 'xinbode', null, '3', '100017', '2017-05-30 10:40:45', '0', '2017-06-02 11:37:48', '10021', '', '', null, '0');
INSERT INTO `uc_user` VALUES ('10593', '0', 'd5810d1c844175ec3a2b2994c48bfbd2', '普通贷前审核', 'putong1', '', '1', '999102', '2017-06-01 13:52:34', '10182', '2017-06-01 14:11:37', '10182', '', '', null, '0');
INSERT INTO `uc_user` VALUES ('10594', '0', 'fdea1e09a93a4c5ec96f697711de8ba2', '普通贷中', 'putong2', '', '1', '999102', '2017-06-01 13:53:18', '10182', '2017-06-05 18:26:12', '10182', '', '', null, '0');
INSERT INTO `uc_user` VALUES ('10595', '0', 'cfdcc898dcb98c30f881c74826c69245', '贷前规则管理', 'putong3', '壹佰元整', '1', '999102', '2017-06-01 14:11:17', '10182', '2017-06-01 14:11:17', '10182', '', '', null, '0');
INSERT INTO `uc_user` VALUES ('10596', '1', 'ed4883823cbfea6c81a28086f63951dd', '姓名', 'xinxin', null, '1', '100017', '2017-06-02 11:38:28', '0', '2017-06-02 11:38:28', '0', '', '', null, '0');
INSERT INTO `uc_user` VALUES ('10598', '0', '94459dd820cce87c7c1c84cecd02c3d9', '新增', 'xinzeng', '', '1', '100092', '2017-06-09 11:42:49', '10173', '2017-06-09 11:42:49', '10173', '', '', null, '0');
INSERT INTO `uc_user` VALUES ('10599', '0', '27e9acf810c975e88c1b7ecb5009c065', '测试退出', 's1234567890', '', '1', '100092', '2017-06-09 14:13:04', '10173', '2017-06-09 14:13:13', '10173', '', '', null, '0');
INSERT INTO `uc_user` VALUES ('10600', '0', '94459dd820cce87c7c1c84cecd02c3d9', '新增', 'xinzeng6', '', '1', '100092', '2017-06-09 14:22:05', '10173', '2017-06-09 14:22:05', '10173', '', '', null, '0');
INSERT INTO `uc_user` VALUES ('10601', '0', '58bb145b71bb90c2d9b453a034e2baee', '姓名', 'zhanghao1', '', '3', '100092', '2017-06-09 14:23:11', '10173', '2017-07-04 10:28:26', '10173', '', '', null, '0');
INSERT INTO `uc_user` VALUES ('10602', '0', 'a7aceef829ffc451fac9ae345f667333', '新增', 'xi1496990590147', '', '1', '100092', '2017-06-09 14:38:40', '10173', '2017-07-04 10:28:27', '10173', 'qq@qqqqq.com', '', null, '0');
INSERT INTO `uc_user` VALUES ('10603', '0', '94459dd820cce87c7c1c84cecd02c3d9', '新增', 'xi1496992987462', '', '1', '100092', '2017-06-09 15:18:37', '10173', '2017-06-09 15:18:37', '10173', '', '', null, '0');
INSERT INTO `uc_user` VALUES ('10604', '0', '94459dd820cce87c7c1c84cecd02c3d9', '新增', 'xi1496993522395', '', '1', '100092', '2017-06-09 15:27:32', '10173', '2017-06-09 15:27:32', '10173', '', '', null, '0');
INSERT INTO `uc_user` VALUES ('10605', '0', '94459dd820cce87c7c1c84cecd02c3d9', '新增', 'xi1497001462432', '', '1', '100092', '2017-06-09 17:39:52', '10173', '2017-06-09 17:39:52', '10173', '', '', null, '0');
INSERT INTO `uc_user` VALUES ('10606', '0', 'c47b8db8ca10fb218831e3eb9006251c', '标准版贷中', 'mudaizhong', '', '1', '100092', '2017-06-20 15:24:54', '10173', '2017-06-20 15:32:26', '10606', '', '', null, '0');
INSERT INTO `uc_user` VALUES ('10607', '0', 'c47b8db8ca10fb218831e3eb9006251c', '贷中', 'mudz', '', '1', '100092', '2017-06-20 15:39:51', '10173', '2017-06-20 15:40:37', '10607', '', '', null, '0');
INSERT INTO `uc_user` VALUES ('10608', '0', 'c47b8db8ca10fb218831e3eb9006251c', '标准版审批', 'muspy', '', '1', '100092', '2017-06-20 18:34:04', '10173', '2017-06-20 18:39:45', '10608', '', '', null, '0');
INSERT INTO `uc_user` VALUES ('10609', '0', 'c47b8db8ca10fb218831e3eb9006251c', '标准规则', 'mugz', '', '1', '100092', '2017-06-21 11:30:57', '10173', '2017-06-21 11:31:37', '10609', '', '', null, '0');
INSERT INTO `uc_user` VALUES ('10610', '0', '94459dd820cce87c7c1c84cecd02c3d9', '新增', 'xi1498029541139', '', '1', '100092', '2017-06-21 15:17:06', '10173', '2017-06-21 15:17:06', '10173', '', '', null, '0');
INSERT INTO `uc_user` VALUES ('10611', '0', '94459dd820cce87c7c1c84cecd02c3d9', '新增', 'xi1498029818548', '', '1', '100092', '2017-06-21 15:21:44', '10173', '2017-06-21 15:21:44', '10173', '', '', null, '0');
INSERT INTO `uc_user` VALUES ('10612', '0', '94459dd820cce87c7c1c84cecd02c3d9', '新增', 'xi1498030121130', '', '1', '100092', '2017-06-21 15:26:46', '10173', '2017-06-21 15:26:46', '10173', '', '', null, '0');
INSERT INTO `uc_user` VALUES ('10613', '0', '94459dd820cce87c7c1c84cecd02c3d9', '新增', 'xi1498030502350', '', '1', '100092', '2017-06-21 15:30:05', '10173', '2017-06-21 15:30:05', '10173', '', '', null, '0');
INSERT INTO `uc_user` VALUES ('10614', '0', '94459dd820cce87c7c1c84cecd02c3d9', '新增', 'xi1498031293603', '', '1', '100092', '2017-06-21 15:46:19', '10173', '2017-06-21 15:46:19', '10173', '', '', null, '0');
INSERT INTO `uc_user` VALUES ('10615', '0', '94459dd820cce87c7c1c84cecd02c3d9', '新增', 'xi1498037181621', '', '1', '100092', '2017-06-21 17:24:27', '10173', '2017-06-21 17:24:27', '10173', '', '', null, '0');
INSERT INTO `uc_user` VALUES ('10616', '0', '94459dd820cce87c7c1c84cecd02c3d9', '新增', 'xi1498039890663', '', '1', '100092', '2017-06-21 18:09:36', '10173', '2017-06-21 18:09:36', '10173', '', '', null, '0');
INSERT INTO `uc_user` VALUES ('10617', '2', 'dc483e80a7a0bd9ef71d8cf973673924', 'ÃÂ¨ÃÂ¿ÃÂÃÂ¨ÃÂÃÂ¥', 'yy', 'ffff', '3', '-1', '2017-06-23 13:47:13', '10021', '2017-07-18 15:58:28', '1', '', '', null, '0');
INSERT INTO `uc_user` VALUES ('10618', '0', '94459dd820cce87c7c1c84cecd02c3d9', '新增', 'xi1499135615410', '', '1', '100092', '2017-07-04 10:28:26', '10173', '2017-07-04 10:28:26', '10173', '', '', null, '0');
INSERT INTO `uc_user` VALUES ('10619', '0', '1038ef05197e0883aa309c19fb76d6a0', '贷中测试', 'loantest', '', '1', '100092', '2017-07-07 16:11:16', '10173', '2017-07-07 16:11:51', '10173', '', '', null, '0');
INSERT INTO `uc_user` VALUES ('10623', '2', '200820e3227815ed1756a6b531e7e0d2', 'zhang', '测试账号', '测试账号', '1', '-1', '2017-07-19 10:04:56', '1', '2017-07-19 10:04:56', '1', 'qweqwe@qq.com', '13122234212', null, '0');
INSERT INTO `uc_user` VALUES ('10624', '2', 'd41d8cd98f00b204e9800998ecf8427e', 'qqqqqq', null, null, '1', '-1', '2017-07-19 10:36:28', null, '2017-07-19 10:36:28', null, null, null, null, '0');
INSERT INTO `uc_user` VALUES ('10625', '2', 'd41d8cd98f00b204e9800998ecf8427e', 'qqqqqq', null, null, '3', '-1', '2017-07-19 10:46:56', null, '2017-07-19 17:32:26', '1', null, null, null, '0');
INSERT INTO `uc_user` VALUES ('10629', '2', '200820e3227815ed1756a6b531e7e0d2', '十多万群', '蔷薇蔷薇', '蔷薇蔷薇', '1', '-1', '2017-07-19 16:29:59', '1', '2017-07-19 17:14:53', '1', null, '13122223333', null, '0');
INSERT INTO `uc_user` VALUES ('10630', '2', '200820e3227815ed1756a6b531e7e0d2', '张三', 'qwe111', 'qweqweQWEQW', '3', '-1', '2017-07-19 17:42:03', '1', '2017-07-31 15:13:48', '111', 'qweqwe@qq.com', '13122323123', null, '0');
INSERT INTO `uc_user` VALUES ('10645', '1', 'e2f56f957d47b916aca667876a28e420', '测试测试', 'TestTestTest', null, null, '15915915915', null, null, null, null, 'TestTestTest@100credit.com', '15915915915', '100054', '0');

-- ----------------------------
-- Table structure for uc_user_product
-- ----------------------------
DROP TABLE IF EXISTS `uc_user_product`;
CREATE TABLE `uc_user_product` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `product_code` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '产品code',
  `user_id` int(11) DEFAULT NULL COMMENT '用户id',
  `createDate` datetime DEFAULT NULL COMMENT '创建时间',
  `createUserId` int(11) DEFAULT NULL COMMENT '创建用户id',
  `updateDate` datetime DEFAULT NULL COMMENT '更新时间',
  `updateUserId` int(11) DEFAULT NULL COMMENT '更新用户id',
  `apiCode` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT 'apiCode',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='#br.auth';

-- ----------------------------
-- Records of uc_user_product
-- ----------------------------
INSERT INTO `uc_user_product` VALUES ('1', '100051', '10173', '2017-07-13 19:12:18', '99', '2017-07-20 19:12:32', '99', '100092');
INSERT INTO `uc_user_product` VALUES ('2', '100052', '10173', '2017-07-13 19:12:18', '99', '2017-07-20 19:12:32', '99', '100092');
INSERT INTO `uc_user_product` VALUES ('3', '100053', '10173', '2017-07-13 19:12:18', '99', '2017-07-20 19:12:32', '99', '100092');
INSERT INTO `uc_user_product` VALUES ('18', '100054', '10645', '2017-07-29 16:03:14', '99', '2017-07-29 16:03:14', '99', '15915915915');

-- ----------------------------
-- Table structure for uc_user_role
-- ----------------------------
DROP TABLE IF EXISTS `uc_user_role`;
CREATE TABLE `uc_user_role` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `user_id` bigint(20) DEFAULT NULL COMMENT '用户ID',
  `role_id` bigint(20) DEFAULT NULL COMMENT '角色ID',
  `created_time` datetime DEFAULT NULL COMMENT '创建时间',
  `modified_time` datetime DEFAULT NULL COMMENT '修改时间',
  `status` int(11) DEFAULT NULL COMMENT '1：正常',
  `is_delete` tinyint(4) DEFAULT NULL COMMENT '是否删除',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=COMPACT COMMENT='#br.auth';

-- ----------------------------
-- Records of uc_user_role
-- ----------------------------
INSERT INTO `uc_user_role` VALUES ('1', '156', '1', '2016-12-02 12:10:19', '2017-07-20 19:03:51', '1', '1');
INSERT INTO `uc_user_role` VALUES ('2', '156', '3', '2017-06-09 17:23:08', '2017-07-20 19:03:51', '1', '1');
INSERT INTO `uc_user_role` VALUES ('3', '156', '2', '2017-06-09 17:23:08', '2017-07-20 19:03:51', '1', '1');
INSERT INTO `uc_user_role` VALUES ('4', '156', '5', '2017-06-09 18:04:52', '2017-06-13 13:16:01', '1', '1');
INSERT INTO `uc_user_role` VALUES ('5', '10585', '2', '2017-06-09 18:04:52', '2017-06-13 13:16:01', '1', '1');
INSERT INTO `uc_user_role` VALUES ('6', '1', '2', '2017-06-12 19:24:28', '2017-06-13 13:16:01', '1', '1');
INSERT INTO `uc_user_role` VALUES ('7', '1', '1', '2017-06-12 19:24:43', '2017-06-13 13:16:01', '1', '1');
INSERT INTO `uc_user_role` VALUES ('8', '1', '2', '2017-06-12 19:24:43', '2017-06-13 13:16:01', '1', '1');
INSERT INTO `uc_user_role` VALUES ('9', '1', '2', '2017-06-12 19:25:27', '2017-06-13 13:16:01', '1', '1');
INSERT INTO `uc_user_role` VALUES ('10', '10585', '1', '2017-06-13 13:15:54', '2017-06-13 13:16:01', '1', '1');
INSERT INTO `uc_user_role` VALUES ('11', '1', '2', '2017-06-13 13:15:54', '2017-06-13 13:16:01', '1', '1');
INSERT INTO `uc_user_role` VALUES ('12', '1', '1', '2017-06-13 13:16:01', '2017-06-13 13:16:01', '1', '0');
INSERT INTO `uc_user_role` VALUES ('13', '10585', '2', '2017-06-13 13:16:01', '2017-06-13 13:16:01', '1', '0');
INSERT INTO `uc_user_role` VALUES ('14', '10173', '12', '2017-06-13 13:16:01', '2017-06-13 13:16:01', '1', '0');
INSERT INTO `uc_user_role` VALUES ('15', '10589', '9', '2017-06-13 13:16:01', '2017-06-13 13:16:01', '1', '0');
INSERT INTO `uc_user_role` VALUES ('17', '10589', '24', '2017-07-19 10:04:56', '2017-07-19 10:04:56', '1', '0');
INSERT INTO `uc_user_role` VALUES ('18', '10589', '11', '2017-07-19 16:30:00', '2017-07-19 17:14:53', '1', '0');
INSERT INTO `uc_user_role` VALUES ('19', '10630', '11', '2017-07-19 17:42:04', '2017-07-19 17:42:04', '1', '0');
INSERT INTO `uc_user_role` VALUES ('29', '10645', '9', '2017-07-29 16:03:19', '2017-07-29 16:03:19', '1', null);
