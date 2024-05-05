/*
 Navicat Premium Data Transfer

 Source Server         : 127.0.0.1
 Source Server Type    : MySQL
 Source Server Version : 80400
 Source Host           : 127.0.0.1:3306
 Source Schema         : product_source

 Target Server Type    : MySQL
 Target Server Version : 80400
 File Encoding         : 65001

 Date: 05/05/2024 22:09:47
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for base_account
-- ----------------------------
DROP TABLE IF EXISTS `base_account`;
CREATE TABLE `base_account`  (
  `account_id` bigint NOT NULL,
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NULL DEFAULT NULL,
  `realname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NULL DEFAULT NULL,
  `photo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NULL DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NULL DEFAULT NULL,
  `mobile` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NULL DEFAULT NULL,
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NULL DEFAULT NULL,
  PRIMARY KEY (`account_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of base_account
-- ----------------------------

-- ----------------------------
-- Table structure for disease_record
-- ----------------------------
DROP TABLE IF EXISTS `disease_record`;
CREATE TABLE `disease_record`  (
  `dr_id` bigint NOT NULL AUTO_INCREMENT,
  `dr_animal_id` bigint NULL DEFAULT NULL,
  `dr_desc` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NULL DEFAULT NULL,
  `dr_time` datetime NULL DEFAULT NULL,
  `dr_status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NULL DEFAULT NULL,
  `dr_d_id` bigint NULL DEFAULT NULL,
  PRIMARY KEY (`dr_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of disease_record
-- ----------------------------

-- ----------------------------
-- Table structure for issue_record
-- ----------------------------
DROP TABLE IF EXISTS `issue_record`;
CREATE TABLE `issue_record`  (
  `isr_id` bigint NOT NULL,
  `isr_time` datetime NULL DEFAULT NULL,
  `isr_num` int NULL DEFAULT NULL,
  `isr_price` decimal(10, 2) NULL DEFAULT NULL,
  `isr_deliver` datetime NULL DEFAULT NULL,
  `isr_status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NULL DEFAULT NULL,
  `isr_customer_id` bigint NULL DEFAULT NULL,
  PRIMARY KEY (`isr_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of issue_record
-- ----------------------------

-- ----------------------------
-- Table structure for manager_animal
-- ----------------------------
DROP TABLE IF EXISTS `manager_animal`;
CREATE TABLE `manager_animal`  (
  `a_animal_id` bigint NOT NULL,
  `a_weight` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NULL DEFAULT NULL,
  `a_gender` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NULL DEFAULT NULL,
  `a_healthy` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NULL DEFAULT NULL,
  `a_status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NULL DEFAULT NULL,
  `a_inoculate` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NULL DEFAULT NULL,
  `a_time` date NULL DEFAULT NULL,
  `a_batch_id` bigint NULL DEFAULT NULL,
  `a_hurdles_id` bigint NULL DEFAULT NULL,
  PRIMARY KEY (`a_animal_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of manager_animal
-- ----------------------------

-- ----------------------------
-- Table structure for manager_batch
-- ----------------------------
DROP TABLE IF EXISTS `manager_batch`;
CREATE TABLE `manager_batch`  (
  `b_serial_id` bigint NOT NULL,
  `b_desc` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NULL DEFAULT NULL,
  `b_quarantine` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NULL DEFAULT NULL,
  `b_qualified` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NULL DEFAULT NULL,
  `b_time` date NULL DEFAULT NULL,
  PRIMARY KEY (`b_serial_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of manager_batch
-- ----------------------------

-- ----------------------------
-- Table structure for manager_disease
-- ----------------------------
DROP TABLE IF EXISTS `manager_disease`;
CREATE TABLE `manager_disease`  (
  `d_id` bigint NOT NULL,
  `d_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NULL DEFAULT NULL,
  `d_desc` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NULL DEFAULT NULL,
  `d_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NULL DEFAULT NULL,
  `d_etiology` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NULL DEFAULT NULL,
  `d_symptom` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NULL DEFAULT NULL,
  `d_prevention` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NULL DEFAULT NULL,
  PRIMARY KEY (`d_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of manager_disease
-- ----------------------------

-- ----------------------------
-- Table structure for manager_fence_house
-- ----------------------------
DROP TABLE IF EXISTS `manager_fence_house`;
CREATE TABLE `manager_fence_house`  (
  `fh_id` bigint NOT NULL,
  `fh_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NULL DEFAULT NULL,
  `fh_desc` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NULL DEFAULT NULL,
  `fh_time` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`fh_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of manager_fence_house
-- ----------------------------

-- ----------------------------
-- Table structure for manager_hurdles
-- ----------------------------
DROP TABLE IF EXISTS `manager_hurdles`;
CREATE TABLE `manager_hurdles`  (
  `h_id` bigint NOT NULL AUTO_INCREMENT,
  `h_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NULL DEFAULT NULL,
  `h_desc` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NULL DEFAULT NULL,
  `h_max` bigint NULL DEFAULT NULL,
  `h_saved` smallint NULL DEFAULT NULL,
  `h_time` datetime NULL DEFAULT NULL,
  `h_enable` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NULL DEFAULT NULL,
  `h_full` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NULL DEFAULT NULL,
  `h_fence_id` bigint NULL DEFAULT NULL,
  PRIMARY KEY (`h_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of manager_hurdles
-- ----------------------------

-- ----------------------------
-- Table structure for manager_qrcode
-- ----------------------------
DROP TABLE IF EXISTS `manager_qrcode`;
CREATE TABLE `manager_qrcode`  (
  `q_id` bigint NOT NULL AUTO_INCREMENT,
  `q_animal_id` bigint NULL DEFAULT NULL,
  `q_image_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NULL DEFAULT NULL,
  PRIMARY KEY (`q_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of manager_qrcode
-- ----------------------------

-- ----------------------------
-- Table structure for quarantine_registration
-- ----------------------------
DROP TABLE IF EXISTS `quarantine_registration`;
CREATE TABLE `quarantine_registration`  (
  `gr_id` bigint NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `gr_time` datetime NULL DEFAULT NULL COMMENT '时间',
  `gr_img` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NULL DEFAULT NULL COMMENT '图片',
  `gr_mechanism` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NULL DEFAULT NULL COMMENT '检疫机构',
  `gr_batch_id` bigint NULL DEFAULT NULL COMMENT '批次id',
  `b_qualified` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NULL DEFAULT NULL COMMENT '检疫结果',
  PRIMARY KEY (`gr_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of quarantine_registration
-- ----------------------------

SET FOREIGN_KEY_CHECKS = 1;
