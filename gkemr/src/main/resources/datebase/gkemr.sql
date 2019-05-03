/*
 Navicat Premium Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 50715
 Source Host           : localhost:3306
 Source Schema         : gkemr

 Target Server Type    : MySQL
 Target Server Version : 50715
 File Encoding         : 65001

 Date: 04/05/2019 00:42:23
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for emr_bed
-- ----------------------------
DROP TABLE IF EXISTS `emr_bed`;
CREATE TABLE `emr_bed`  (
  `bed_id` int(10) NOT NULL COMMENT '床位id',
  `bed_no` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '床位标号',
  `status` int(11) NULL DEFAULT NULL COMMENT '床位状态',
  PRIMARY KEY (`bed_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of emr_bed
-- ----------------------------
INSERT INTO `emr_bed` VALUES (1, '1', 1);

-- ----------------------------
-- Table structure for emr_drug
-- ----------------------------
DROP TABLE IF EXISTS `emr_drug`;
CREATE TABLE `emr_drug`  (
  `dr_id` int(10) NOT NULL AUTO_INCREMENT COMMENT '药品id',
  `dr_num` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '药品编号',
  `dr_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '药品名称',
  `dr_level` int(10) NULL DEFAULT NULL COMMENT '药品等级 0：非限制 1：限制药',
  `dr_price` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '药品价格',
  `dr_account` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '药品数量',
  `dr_date` date NULL DEFAULT NULL COMMENT '进药时间',
  `dr_status` int(19) NULL DEFAULT NULL COMMENT '药品状态',
  PRIMARY KEY (`dr_id`) USING BTREE,
  INDEX `dr_num`(`dr_num`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of emr_drug
-- ----------------------------
INSERT INTO `emr_drug` VALUES (1, 'y001', '急救包', 0, '22', '20', '2019-04-23', NULL);
INSERT INTO `emr_drug` VALUES (2, 'y002', '医疗箱', 0, '33', '19', '2019-04-01', NULL);
INSERT INTO `emr_drug` VALUES (3, 'y003', '止痛药', 0, '55', '33', '2019-03-14', NULL);
INSERT INTO `emr_drug` VALUES (4, 'y004', '能量饮料', 0, '13', '324', '2019-02-25', NULL);
INSERT INTO `emr_drug` VALUES (5, 'y005', '绷带', 0, '5', '55', '2019-01-23', NULL);
INSERT INTO `emr_drug` VALUES (6, 'y006', '板蓝根', 0, '25', '32', '2018-12-31', NULL);
INSERT INTO `emr_drug` VALUES (7, 'y009', '阿莫西林', 0, '25', '23', '2019-04-24', NULL);

-- ----------------------------
-- Table structure for emr_ith
-- ----------------------------
DROP TABLE IF EXISTS `emr_ith`;
CREATE TABLE `emr_ith`  (
  `ith_id` int(10) NOT NULL AUTO_INCREMENT COMMENT '住院表id',
  `ith_no` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '病历号',
  `ith_patient` int(10) NOT NULL COMMENT '病人id',
  `ith_nurse` int(10) NULL DEFAULT NULL COMMENT '护理等级',
  `ith_bed` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '床位',
  `ith_msg` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '住院备注',
  `ith_status` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '状态',
  `ith_user` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '主治医生',
  PRIMARY KEY (`ith_id`) USING BTREE,
  INDEX `fk_emr_ith_emr_patient_1`(`ith_patient`) USING BTREE,
  INDEX `fk_emr_ith_emr_nurse_1`(`ith_nurse`) USING BTREE,
  CONSTRAINT `fk_emr_ith_emr_nurse_1` FOREIGN KEY (`ith_nurse`) REFERENCES `emr_nurse` (`n_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `fk_emr_ith_emr_patient_1` FOREIGN KEY (`ith_patient`) REFERENCES `emr_patient` (`p_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of emr_ith
-- ----------------------------
INSERT INTO `emr_ith` VALUES (11, NULL, 20, 3, '1', '感冒', '已办理', '王五');
INSERT INTO `emr_ith` VALUES (12, NULL, 21, 2, '1', '良好', '已入院', '李四');

-- ----------------------------
-- Table structure for emr_menu
-- ----------------------------
DROP TABLE IF EXISTS `emr_menu`;
CREATE TABLE `emr_menu`  (
  `m_id` int(10) NOT NULL COMMENT '菜单id',
  `m_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '菜单名称',
  PRIMARY KEY (`m_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of emr_menu
-- ----------------------------
INSERT INTO `emr_menu` VALUES (1, '医生管理');
INSERT INTO `emr_menu` VALUES (2, '病历管理');
INSERT INTO `emr_menu` VALUES (3, '护理管理');
INSERT INTO `emr_menu` VALUES (4, '入院管理');

-- ----------------------------
-- Table structure for emr_menu_permission
-- ----------------------------
DROP TABLE IF EXISTS `emr_menu_permission`;
CREATE TABLE `emr_menu_permission`  (
  `m_id` int(10) NOT NULL COMMENT '菜单表id',
  `pe_id` int(10) NOT NULL COMMENT '权限表id',
  PRIMARY KEY (`m_id`, `pe_id`) USING BTREE,
  INDEX `menu_permission`(`pe_id`) USING BTREE,
  CONSTRAINT `menu` FOREIGN KEY (`m_id`) REFERENCES `emr_menu` (`m_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `menu_permission` FOREIGN KEY (`pe_id`) REFERENCES `emr_permission` (`pe_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for emr_mr
-- ----------------------------
DROP TABLE IF EXISTS `emr_mr`;
CREATE TABLE `emr_mr`  (
  `bl_id` int(10) NOT NULL AUTO_INCREMENT COMMENT '病历表id',
  `bl_num` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '病历编号',
  `bl_style` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '病人患病类型',
  `bl_msg` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '治疗信息',
  `status` int(255) NULL DEFAULT NULL COMMENT '病历状态0：未上锁 1：已上锁',
  `bl_history` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '历史病历',
  `bl_patient` int(10) NULL DEFAULT NULL COMMENT '病人id',
  `bl_user` int(10) NULL DEFAULT NULL COMMENT '医生编号',
  `bl_drug` int(255) NULL DEFAULT NULL COMMENT '药品编号',
  `bl_zldj` int(255) NULL DEFAULT NULL COMMENT '治疗等级',
  `bl_huli` int(255) NULL DEFAULT NULL COMMENT '护理等级',
  `bi_bed` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`bl_id`) USING BTREE,
  INDEX `fk_emr_mr_emr_user_1`(`bl_user`) USING BTREE,
  INDEX `fk_emr_mr_emr_patient_1`(`bl_patient`) USING BTREE,
  INDEX `fk_emr_mr_emr_drug_1`(`bl_drug`) USING BTREE,
  INDEX `fk_emr_mr_emr_treat_1`(`bl_zldj`) USING BTREE,
  INDEX `fk_emr_mr_emr_nurse_1`(`bl_huli`) USING BTREE,
  CONSTRAINT `fk_emr_mr_emr_drug_1` FOREIGN KEY (`bl_drug`) REFERENCES `emr_drug` (`dr_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `fk_emr_mr_emr_nurse_1` FOREIGN KEY (`bl_huli`) REFERENCES `emr_nurse` (`n_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `fk_emr_mr_emr_patient_1` FOREIGN KEY (`bl_patient`) REFERENCES `emr_patient` (`p_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `fk_emr_mr_emr_treat_1` FOREIGN KEY (`bl_zldj`) REFERENCES `emr_treat` (`t_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `fk_emr_mr_emr_user_1` FOREIGN KEY (`bl_user`) REFERENCES `emr_user` (`u_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 19 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of emr_mr
-- ----------------------------
INSERT INTO `emr_mr` VALUES (6, '23545', '感冒', NULL, NULL, NULL, 20, 1, 2, NULL, NULL, NULL);
INSERT INTO `emr_mr` VALUES (7, '23545', '风寒', '良好', NULL, NULL, 21, 2, NULL, NULL, 2, 1);
INSERT INTO `emr_mr` VALUES (8, '123124124', '粉碎性骨折', NULL, NULL, NULL, 22, 3, NULL, NULL, NULL, NULL);
INSERT INTO `emr_mr` VALUES (9, '231232', '费虽小', NULL, NULL, NULL, 23, 4, NULL, NULL, NULL, NULL);
INSERT INTO `emr_mr` VALUES (18, 'y001', '感冒', NULL, NULL, NULL, 24, 2, NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for emr_nurse
-- ----------------------------
DROP TABLE IF EXISTS `emr_nurse`;
CREATE TABLE `emr_nurse`  (
  `n_id` int(10) NOT NULL COMMENT '护理id',
  `n_level` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '护理等级',
  PRIMARY KEY (`n_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of emr_nurse
-- ----------------------------
INSERT INTO `emr_nurse` VALUES (1, '一级护理');
INSERT INTO `emr_nurse` VALUES (2, '二级护理');
INSERT INTO `emr_nurse` VALUES (3, '普通护理');

-- ----------------------------
-- Table structure for emr_patient
-- ----------------------------
DROP TABLE IF EXISTS `emr_patient`;
CREATE TABLE `emr_patient`  (
  `p_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '病人id',
  `p_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户姓名',
  `p_sex` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户性别',
  `p_age` int(10) NOT NULL COMMENT '用户年龄',
  `p_tel` int(11) NULL DEFAULT NULL COMMENT '用户电话',
  `mr_num` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户病历号',
  `status` int(11) NULL DEFAULT NULL COMMENT '病人状态0：未检查，1：已检查',
  `mz_num` int(22) NULL DEFAULT NULL COMMENT '门诊编号',
  `gh_time` date NULL DEFAULT NULL COMMENT '挂号时间',
  `p_doctor` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '诊断医生',
  `ith_status` int(11) NULL DEFAULT NULL COMMENT '住院与否',
  `ith_banli` int(11) NULL DEFAULT NULL COMMENT '是否已办理住院',
  PRIMARY KEY (`p_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 25 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of emr_patient
-- ----------------------------
INSERT INTO `emr_patient` VALUES (20, '王祖玲', '女', 18, 157363, '23545', 1, 1, '2019-04-20', '王五', 1, 1);
INSERT INTO `emr_patient` VALUES (21, '刘清平', '男', 3, 2123445, '23545', 1, 4, '2019-04-20', '张三', 1, 1);
INSERT INTO `emr_patient` VALUES (22, '木子希', '女', 23, 1231231234, '123124124', 1, 2312, '2019-04-21', '张三', 0, 0);
INSERT INTO `emr_patient` VALUES (23, '李四', '男', 11, 223123, '231232', 1, 3123, '2019-04-21', '张三', 1, 0);
INSERT INTO `emr_patient` VALUES (24, '吴青峰', '男', 33, 23123445, '238418234', 1, 34342, '2019-04-24', '李四', 1, 0);

-- ----------------------------
-- Table structure for emr_permission
-- ----------------------------
DROP TABLE IF EXISTS `emr_permission`;
CREATE TABLE `emr_permission`  (
  `pe_id` int(10) NOT NULL COMMENT '权限表id',
  `pe_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '权限名',
  PRIMARY KEY (`pe_id`) USING BTREE,
  INDEX `pe_name`(`pe_name`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of emr_permission
-- ----------------------------
INSERT INTO `emr_permission` VALUES (1, '医生权限');
INSERT INTO `emr_permission` VALUES (3, '实习权限');
INSERT INTO `emr_permission` VALUES (4, '审核权限');
INSERT INTO `emr_permission` VALUES (2, '护理权限');

-- ----------------------------
-- Table structure for emr_prescription
-- ----------------------------
DROP TABLE IF EXISTS `emr_prescription`;
CREATE TABLE `emr_prescription`  (
  `patient_id` int(10) NOT NULL COMMENT '病人id',
  `u_id` int(10) NOT NULL COMMENT '医生id',
  `d_id` int(10) NOT NULL COMMENT '药品id\r\n',
  `status` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '审核状态',
  `shenhe` int(10) NULL DEFAULT NULL COMMENT '审核人',
  PRIMARY KEY (`patient_id`, `d_id`, `u_id`) USING BTREE,
  INDEX `userid`(`u_id`) USING BTREE,
  INDEX `drugid`(`d_id`) USING BTREE,
  INDEX `shenhe`(`shenhe`) USING BTREE,
  CONSTRAINT `drugid` FOREIGN KEY (`d_id`) REFERENCES `emr_drug` (`dr_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `patient` FOREIGN KEY (`patient_id`) REFERENCES `emr_patient` (`p_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `shenhe` FOREIGN KEY (`shenhe`) REFERENCES `emr_user` (`u_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `userid` FOREIGN KEY (`u_id`) REFERENCES `emr_user` (`u_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of emr_prescription
-- ----------------------------
INSERT INTO `emr_prescription` VALUES (20, 1, 2, '1', 2);
INSERT INTO `emr_prescription` VALUES (21, 2, 3, '1', 4);
INSERT INTO `emr_prescription` VALUES (22, 3, 2, '1', NULL);
INSERT INTO `emr_prescription` VALUES (22, 3, 3, '1', NULL);
INSERT INTO `emr_prescription` VALUES (22, 3, 4, '1', NULL);
INSERT INTO `emr_prescription` VALUES (23, 4, 2, NULL, NULL);
INSERT INTO `emr_prescription` VALUES (23, 4, 4, NULL, NULL);
INSERT INTO `emr_prescription` VALUES (23, 4, 6, NULL, NULL);
INSERT INTO `emr_prescription` VALUES (24, 2, 3, '1', NULL);
INSERT INTO `emr_prescription` VALUES (24, 2, 4, '1', NULL);
INSERT INTO `emr_prescription` VALUES (24, 2, 6, '1', NULL);

-- ----------------------------
-- Table structure for emr_role
-- ----------------------------
DROP TABLE IF EXISTS `emr_role`;
CREATE TABLE `emr_role`  (
  `r_id` int(10) NOT NULL COMMENT '角色表id',
  `r_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '角色名称',
  PRIMARY KEY (`r_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of emr_role
-- ----------------------------
INSERT INTO `emr_role` VALUES (1, '主管医生');
INSERT INTO `emr_role` VALUES (2, '实习医生');
INSERT INTO `emr_role` VALUES (3, '护理医生');
INSERT INTO `emr_role` VALUES (4, '审核医生');

-- ----------------------------
-- Table structure for emr_role_permission
-- ----------------------------
DROP TABLE IF EXISTS `emr_role_permission`;
CREATE TABLE `emr_role_permission`  (
  `r_id` int(10) NOT NULL COMMENT '角色id',
  `pe_id` int(10) NOT NULL COMMENT '权限id',
  PRIMARY KEY (`r_id`, `pe_id`) USING BTREE,
  INDEX `fk_emr_role_permission_emr_role_2`(`pe_id`) USING BTREE,
  CONSTRAINT `fk_emr_role_permission_emr_role_1` FOREIGN KEY (`r_id`) REFERENCES `emr_role` (`r_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `fk_emr_role_permission_emr_role_2` FOREIGN KEY (`pe_id`) REFERENCES `emr_permission` (`pe_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of emr_role_permission
-- ----------------------------
INSERT INTO `emr_role_permission` VALUES (1, 1);
INSERT INTO `emr_role_permission` VALUES (3, 2);
INSERT INTO `emr_role_permission` VALUES (2, 3);
INSERT INTO `emr_role_permission` VALUES (4, 4);

-- ----------------------------
-- Table structure for emr_role_user
-- ----------------------------
DROP TABLE IF EXISTS `emr_role_user`;
CREATE TABLE `emr_role_user`  (
  `r_id` int(10) NOT NULL COMMENT '角色id',
  `u_id` int(10) NOT NULL COMMENT '用户id',
  PRIMARY KEY (`r_id`, `u_id`) USING BTREE,
  INDEX `user1`(`u_id`) USING BTREE,
  CONSTRAINT `role` FOREIGN KEY (`r_id`) REFERENCES `emr_role` (`r_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `user` FOREIGN KEY (`u_id`) REFERENCES `emr_user` (`u_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of emr_role_user
-- ----------------------------
INSERT INTO `emr_role_user` VALUES (1, 1);
INSERT INTO `emr_role_user` VALUES (2, 2);
INSERT INTO `emr_role_user` VALUES (3, 3);
INSERT INTO `emr_role_user` VALUES (4, 4);

-- ----------------------------
-- Table structure for emr_treat
-- ----------------------------
DROP TABLE IF EXISTS `emr_treat`;
CREATE TABLE `emr_treat`  (
  `t_id` int(10) NOT NULL COMMENT '治疗id',
  `t_level` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '治疗等级',
  PRIMARY KEY (`t_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for emr_user
-- ----------------------------
DROP TABLE IF EXISTS `emr_user`;
CREATE TABLE `emr_user`  (
  `u_id` int(10) NOT NULL AUTO_INCREMENT COMMENT '用户id',
  `u_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户姓名',
  `u_password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户账户密码',
  `u_age` int(10) NULL DEFAULT NULL COMMENT '用户年龄',
  `u_sex` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户性别',
  `u_tel` bigint(11) NULL DEFAULT NULL COMMENT '用户电话',
  `u_email` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户邮箱',
  `u_num` varchar(19) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户编号',
  `status` int(255) NULL DEFAULT NULL COMMENT '用户状态',
  PRIMARY KEY (`u_id`) USING BTREE,
  INDEX `d_num`(`u_num`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of emr_user
-- ----------------------------
INSERT INTO `emr_user` VALUES (1, '张三', '5D93CEB70E2BF5DAA84EC3D0CD2C731A', 11, '男', 12345678901, '643170568@qq.com', 'wzgk10001', 1);
INSERT INTO `emr_user` VALUES (2, '李四', '5D93CEB70E2BF5DAA84EC3D0CD2C731A', 25, '女', 15023436431, 'egdfbgshdf@163.com', 'wzgk10002', 1);
INSERT INTO `emr_user` VALUES (3, '王五', '5D93CEB70E2BF5DAA84EC3D0CD2C731A', 45, '男', 11111111111, '4461578@qq.com', 'wzgk10003', 1);
INSERT INTO `emr_user` VALUES (4, '赵六', '5D93CEB70E2BF5DAA84EC3D0CD2C731A', 55, '女', 18716839971, '326167467@qq.com', 'wzgk10004', 1);

SET FOREIGN_KEY_CHECKS = 1;
