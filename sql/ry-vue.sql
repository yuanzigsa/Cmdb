/*
 Navicat Premium Data Transfer

 Source Server         : 本地MySql数据库
 Source Server Type    : MySQL
 Source Server Version : 80030 (8.0.30)
 Source Host           : localhost:3306
 Source Schema         : ry-vue

 Target Server Type    : MySQL
 Target Server Version : 80030 (8.0.30)
 File Encoding         : 65001

 Date: 19/10/2022 10:30:34
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for asset_downip
-- ----------------------------
DROP TABLE IF EXISTS `asset_downip`;
CREATE TABLE `asset_downip`  (
  `number` bigint NOT NULL AUTO_INCREMENT COMMENT '资产序号',
  `IP` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT 'IP',
  `company` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '归属',
  `room` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '所属机房',
  `business` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '业务类型',
  PRIMARY KEY (`number`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of asset_downip
-- ----------------------------
INSERT INTO `asset_downip` VALUES (1, '192.168.1.1/24', '世捷通', '钟祥电信', '移动');
INSERT INTO `asset_downip` VALUES (2, '172.16.1.1/24', '天海众恒', '襄阳电信', '联通');
INSERT INTO `asset_downip` VALUES (3, NULL, NULL, NULL, '');

-- ----------------------------
-- Table structure for asset_switch
-- ----------------------------
DROP TABLE IF EXISTS `asset_switch`;
CREATE TABLE `asset_switch`  (
  `number` int NOT NULL AUTO_INCREMENT COMMENT '资产序号',
  `sn` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT 'SN编号',
  `device_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '设备类型',
  `device_model` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '设备型号',
  `manege_IP` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '管理IP',
  `cabinet_No` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '机柜编号',
  `room` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '所属机房',
  `business_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '业务类型',
  `port_interconnetion` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '端口互联',
  PRIMARY KEY (`number`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 113 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of asset_switch
-- ----------------------------
INSERT INTO `asset_switch` VALUES (2, '2102350RXE10LA000019', '交换机', 'CE6870', NULL, 'EQU015', '兰州电信（十里店）', '3', NULL);
INSERT INTO `asset_switch` VALUES (3, '2102350RXE10LA000018', '交换机', 'CE6870', NULL, 'EQU015', '兰州电信（十里店）', '3', NULL);
INSERT INTO `asset_switch` VALUES (4, '2102311DEH10F3000168', '服务器', '华为 RH1288A V2', '61.159.95.242', 'EQU015', '兰州电信（十里店）', '3', NULL);
INSERT INTO `asset_switch` VALUES (5, 'DU2030100233', '交换机', 'CE6881', NULL, 'EQU015', '兰州电信（十里店）', '3', NULL);
INSERT INTO `asset_switch` VALUES (6, '2102350JAS6TJ6000423', '交换机', 'CE6851', '118.182.248.33', 'EQU015', '兰州电信（十里店）', '3', NULL);
INSERT INTO `asset_switch` VALUES (7, 'BYTBC52', '服务器', 'DELL 630', '118.182.248.34', 'EQU015', '兰州电信（十里店）', '3', NULL);
INSERT INTO `asset_switch` VALUES (8, '6H6NBD2', '服务器', 'DELL 630', '118.182.248.35', 'EQU015', '兰州电信（十里店）', '3', NULL);
INSERT INTO `asset_switch` VALUES (9, '3VZ4S62', '服务器', 'DELL 630', '118.182.248.36', 'EQU015', '兰州电信（十里店）', '3', NULL);
INSERT INTO `asset_switch` VALUES (10, 'JVQ6S52', '服务器', 'DELL 630', '118.182.248.37', 'EQU015', '兰州电信（十里店）', '3', NULL);
INSERT INTO `asset_switch` VALUES (11, 'F870S62', '服务器', 'DELL 630', '118.182.248.38', 'EQU015', '兰州电信（十里店）', '3', NULL);
INSERT INTO `asset_switch` VALUES (12, 'G1KR10F000163', '交换机', '锐捷s6510', '61.159.95.1', 'EQU016', '兰州电信（十里店）', '3', NULL);
INSERT INTO `asset_switch` VALUES (13, '7Q2J7J2', '服务器', 'DELL R730xd', '61.159.95.4', 'EQU016', '兰州电信（十里店）', '3', NULL);
INSERT INTO `asset_switch` VALUES (14, '7NPH7J2', '服务器', 'DELL R730xd', '61.159.95.5', 'EQU016', '兰州电信（十里店）', '3', NULL);
INSERT INTO `asset_switch` VALUES (15, '7PZL7J2', '服务器', 'DELL R730xd', '61.159.95.6', 'EQU016', '兰州电信（十里店）', '3', NULL);
INSERT INTO `asset_switch` VALUES (16, '7PYG7J2', '服务器', 'DELL R730xd', '61.159.95.7', 'EQU016', '兰州电信（十里店）', '3', NULL);
INSERT INTO `asset_switch` VALUES (17, '7Q1K7J2', '服务器', 'DELL R730xd', '61.159.95.8', 'EQU016', '兰州电信（十里店）', '3', NULL);
INSERT INTO `asset_switch` VALUES (18, '7Q3G7J2', '服务器', 'DELL R730xd', '61.159.95.9', 'EQU016', '兰州电信（十里店）', '3', NULL);
INSERT INTO `asset_switch` VALUES (19, '7NQB7J2', '服务器', 'DELL R730xd', '61.159.95.10', 'EQU016', '兰州电信（十里店）', '3', NULL);
INSERT INTO `asset_switch` VALUES (20, '7Q2L7J2', '服务器', 'DELL R730xd', '61.159.95.11', 'EQU016', '兰州电信（十里店）', '3', NULL);
INSERT INTO `asset_switch` VALUES (21, '7NPL7J2', '服务器', 'DELL R730xd', '61.159.95.12', 'EQU016', '兰州电信（十里店）', '3', NULL);
INSERT INTO `asset_switch` VALUES (22, 'G1N606200089B', '交换机', '锐捷S6000C', '61.159.95.2', 'EQU017', '兰州电信（十里店）', '3', NULL);
INSERT INTO `asset_switch` VALUES (23, '7Q1G7J2', '服务器', 'DELL R730xd', '61.159.95.13', 'EQU017', '兰州电信（十里店）', '3', NULL);
INSERT INTO `asset_switch` VALUES (24, '7Q2F7J2', '服务器', 'DELL R730xd', '61.159.95.35', 'EQU017', '兰州电信（十里店）', '3', NULL);
INSERT INTO `asset_switch` VALUES (25, '7NPD7J2', '服务器', 'DELL R730xd', '61.159.95.36', 'EQU017', '兰州电信（十里店）', '3', NULL);
INSERT INTO `asset_switch` VALUES (26, '7Q1D7J2', '服务器', 'DELL R730xd', '61.159.95.37', 'EQU017', '兰州电信（十里店）', '3', NULL);
INSERT INTO `asset_switch` VALUES (27, '7Q0J7J2', '服务器', 'DELL R730xd', '61.159.95.38', 'EQU017', '兰州电信（十里店）', '3', NULL);
INSERT INTO `asset_switch` VALUES (28, '9800093600762790', '服务器', '曙光 I420-G20', '61.159.95.39', 'EQU017', '兰州电信（十里店）', '3', NULL);
INSERT INTO `asset_switch` VALUES (29, '9800093600762791', '服务器', '曙光 I420-G20', '61.159.95.40', 'EQU017', '兰州电信（十里店）', '3', NULL);
INSERT INTO `asset_switch` VALUES (30, '9800093600762792', '服务器', '曙光 I420-G20', '61.159.95.41', 'EQU017', '兰州电信（十里店）', '3', NULL);
INSERT INTO `asset_switch` VALUES (31, '9800093600762795', '服务器', '曙光 I420-G20', '61.159.95.42', 'EQU017', '兰州电信（十里店）', '3', NULL);
INSERT INTO `asset_switch` VALUES (32, '9800093600762796', '服务器', '曙光 I420-G20', '61.159.95.43', 'EQU017', '兰州电信（十里店）', '3', NULL);
INSERT INTO `asset_switch` VALUES (33, 'G1M81AD000767', '交换机', '锐捷s6220', '61.159.95.33', 'EQU018', '兰州电信（十里店）', '3', NULL);
INSERT INTO `asset_switch` VALUES (34, '9800093600762793', '服务器', '曙光 I620-G20', '61.159.95.44', 'EQU018', '兰州电信（十里店）', '3', NULL);
INSERT INTO `asset_switch` VALUES (35, '9800093600762797', '服务器', '曙光 I620-G20', '61.159.95.45', 'EQU018', '兰州电信（十里店）', '3', NULL);
INSERT INTO `asset_switch` VALUES (36, '9800093600762798', '服务器', '曙光 I620-G20', '61.159.95.46', 'EQU018', '兰州电信（十里店）', '3', NULL);
INSERT INTO `asset_switch` VALUES (37, '6101093101341327', '服务器', '曙光 I420-G20', '61.159.95.47', 'EQU018', '兰州电信（十里店）', '3', NULL);
INSERT INTO `asset_switch` VALUES (38, '6101093101343637', '服务器', '曙光 I420-G20', '61.159.95.48', 'EQU018', '兰州电信（十里店）', '3', NULL);
INSERT INTO `asset_switch` VALUES (39, '6101093101343645', '服务器', '曙光 I420-G20', '61.159.95.49', 'EQU018', '兰州电信（十里店）', '3', NULL);
INSERT INTO `asset_switch` VALUES (40, '6101093101343646', '服务器', '曙光 I420-G20', '61.159.95.50', 'EQU018', '兰州电信（十里店）', '3', NULL);
INSERT INTO `asset_switch` VALUES (41, '6101093101343647', '服务器', '曙光 I420-G20', '61.159.95.51', 'EQU018', '兰州电信（十里店）', '3', NULL);
INSERT INTO `asset_switch` VALUES (42, '6101093101343648', '服务器', '曙光 I420-G20', '61.159.95.52', 'EQU018', '兰州电信（十里店）', '3', NULL);
INSERT INTO `asset_switch` VALUES (43, '6101093101345108', '服务器', '曙光 I420-G20', '61.159.95.53', 'EQU018', '兰州电信（十里店）', '3', NULL);
INSERT INTO `asset_switch` VALUES (44, '210235276710EB000045', '交换机', '华为s6700', NULL, 'EQU019', '兰州电信（十里店）', '3', NULL);
INSERT INTO `asset_switch` VALUES (45, 'ZX3548658', '交换机', '跳板机', NULL, 'EQU019', '兰州电信（十里店）', '3', NULL);
INSERT INTO `asset_switch` VALUES (46, 'CBZ3GD2', '服务器', 'DELL R730X(租用)', '118.182.248.1', 'EQU019', '兰州电信（十里店）', '3', NULL);
INSERT INTO `asset_switch` VALUES (47, 'CCW6GD2', '服务器', 'DELL R730X(租用)', '118.182.248.8', 'EQU019', '兰州电信（十里店）', '3', NULL);
INSERT INTO `asset_switch` VALUES (48, 'DPDQG82', '服务器', 'DELL R730X(租用)', '118.182.248.7', 'EQU019', '兰州电信（十里店）', '3', NULL);
INSERT INTO `asset_switch` VALUES (49, '717217140', '服务器', '浪潮NF5270M4', NULL, 'EQU019', '兰州电信（十里店）', '3', NULL);
INSERT INTO `asset_switch` VALUES (50, '717222904', '服务器', '浪潮NF5270M4', NULL, 'EQU019', '兰州电信（十里店）', '3', NULL);
INSERT INTO `asset_switch` VALUES (51, '817308717', '服务器', '浪潮SA5212M4', NULL, 'EQU019', '兰州电信（十里店）', '3', NULL);
INSERT INTO `asset_switch` VALUES (52, '1F8HDC2', '服务器', 'DELL R730X(租用)', '118.182.248.5', 'EQU019', '兰州电信（十里店）', '3', NULL);
INSERT INTO `asset_switch` VALUES (53, 'C43QG82', '服务器', 'DELL R730X(租用)', '118.182.248.6', 'EQU019', '兰州电信（十里店）', '3', NULL);
INSERT INTO `asset_switch` VALUES (54, 'G1M410M000872', '交换机', '锐捷s6220-2', '61.159.95.65', 'EQU020', '兰州电信（十里店）', '3', NULL);
INSERT INTO `asset_switch` VALUES (55, '6100796501026948', '服务器', 'I620-G20', '61.159.95.67', 'EQU020', '兰州电信（十里店）', '3', NULL);
INSERT INTO `asset_switch` VALUES (56, '6100796501026949', '服务器', 'I620-G20', '61.159.95.68', 'EQU020', '兰州电信（十里店）', '3', NULL);
INSERT INTO `asset_switch` VALUES (57, '6100796501026950', '服务器', 'I620-G20', '61.159.95.69', 'EQU020', '兰州电信（十里店）', '3', NULL);
INSERT INTO `asset_switch` VALUES (58, '6100796501026951', '服务器', 'I620-G20', '61.159.95.70', 'EQU020', '兰州电信（十里店）', '3', NULL);
INSERT INTO `asset_switch` VALUES (59, '6100796501026952', '服务器', 'I620-G20', '61.159.95.71', 'EQU020', '兰州电信（十里店）', '3', NULL);
INSERT INTO `asset_switch` VALUES (60, '6100796501026958', '服务器', 'I620-G20', '61.159.95.72', 'EQU020', '兰州电信（十里店）', '3', NULL);
INSERT INTO `asset_switch` VALUES (61, '6100796501026960', '服务器', 'I620-G20', '61.159.95.73', 'EQU020', '兰州电信（十里店）', '3', NULL);
INSERT INTO `asset_switch` VALUES (62, '6100796501026962', '服务器', 'I620-G20', '61.159.95.74', 'EQU020', '兰州电信（十里店）', '3', NULL);
INSERT INTO `asset_switch` VALUES (63, '9400034700844278', '服务器', 'I620-G20', '61.159.95.75', 'EQU020', '兰州电信（十里店）', '3', NULL);
INSERT INTO `asset_switch` VALUES (64, '9400034700844306', '服务器', 'I620-G20', '61.159.95.76', 'EQU020', '兰州电信（十里店）', '3', NULL);
INSERT INTO `asset_switch` VALUES (65, 'G1KDAF100828A', '交换机', '锐捷S2652G-I', NULL, 'EQU021', '兰州电信（十里店）', '3', NULL);
INSERT INTO `asset_switch` VALUES (66, '9400034700844315', '服务器', 'I620-G20', '61.159.95.77', 'EQU021', '兰州电信（十里店）', '3', NULL);
INSERT INTO `asset_switch` VALUES (67, '6100637600846438', '服务器', 'I620-G20', '61.159.95.79', 'EQU021', '兰州电信（十里店）', '3', NULL);
INSERT INTO `asset_switch` VALUES (68, '6100796501033944', '服务器', 'I620-G20', '61.159.95.82', 'EQU021', '兰州电信（十里店）', '3', NULL);
INSERT INTO `asset_switch` VALUES (69, '9400034700844282', '服务器', 'I620-G20', '61.159.95.83', 'EQU021', '兰州电信（十里店）', '3', NULL);
INSERT INTO `asset_switch` VALUES (70, '9400034700844288', '服务器', 'I620-G20', '61.159.95.84', 'EQU021', '兰州电信（十里店）', '3', NULL);
INSERT INTO `asset_switch` VALUES (71, '9400034700844297', '服务器', 'I620-G20', '61.159.95.86', 'EQU021', '兰州电信（十里店）', '3', NULL);
INSERT INTO `asset_switch` VALUES (72, 'G1M70MF000947', '交换机', '锐捷s6220-3', '61.159.95.99', 'EQU022', '兰州电信（十里店）', '3', NULL);
INSERT INTO `asset_switch` VALUES (73, '9400034700860918', '服务器', 'I620-G20', '61.159.95.100', 'EQU022', '兰州电信（十里店）', '3', NULL);
INSERT INTO `asset_switch` VALUES (74, '9400034700860921', '服务器', 'I620-G20', '61.159.95.101', 'EQU022', '兰州电信（十里店）', '3', NULL);
INSERT INTO `asset_switch` VALUES (75, '9400034700860925', '服务器', 'I620-G20', '61.159.95.102', 'EQU022', '兰州电信（十里店）', '3', NULL);
INSERT INTO `asset_switch` VALUES (76, '9800106400948558', '服务器', 'I620-G20', '61.159.95.103', 'EQU022', '兰州电信（十里店）', '3', NULL);
INSERT INTO `asset_switch` VALUES (77, '9800106400948567', '服务器', 'I620-G20', '61.159.95.104', 'EQU022', '兰州电信（十里店）', '3', NULL);
INSERT INTO `asset_switch` VALUES (78, '9800106400948572', '服务器', 'I620-G20', '61.159.95.105', 'EQU022', '兰州电信（十里店）', '3', NULL);
INSERT INTO `asset_switch` VALUES (79, '9800093600762822', '服务器', 'I420-G20', '61.159.95.106', 'EQU022', '兰州电信（十里店）', '3', NULL);
INSERT INTO `asset_switch` VALUES (80, '9800093600762825', '服务器', 'I420-G20', '61.159.95.107', 'EQU022', '兰州电信（十里店）', '3', NULL);
INSERT INTO `asset_switch` VALUES (81, '9800093600762826', '服务器', 'I420-G20', '61.159.95.108', 'EQU022', '兰州电信（十里店）', '3', NULL);
INSERT INTO `asset_switch` VALUES (82, '9800093600762827', '服务器', 'I420-G20', '61.159.95.105', 'EQU022', '兰州电信（十里店）', '3', NULL);
INSERT INTO `asset_switch` VALUES (83, '9800093600762829', '服务器', 'I420-G20', '61.159.95.109', 'EQU023', '兰州电信（十里店）', '3', NULL);
INSERT INTO `asset_switch` VALUES (84, '9800093600762834', '服务器', 'I420-G20', '61.159.95.110', 'EQU023', '兰州电信（十里店）', '3', NULL);
INSERT INTO `asset_switch` VALUES (85, '9800093600762838', '服务器', 'I420-G20', '61.159.95.111', 'EQU023', '兰州电信（十里店）', '3', NULL);
INSERT INTO `asset_switch` VALUES (86, '9800093600762844', '服务器', 'I420-G20', '61.159.95.112', 'EQU023', '兰州电信（十里店）', '3', NULL);
INSERT INTO `asset_switch` VALUES (87, '9800093600762849', '服务器', 'I420-G20', '61.159.95.113', 'EQU023', '兰州电信（十里店）', '3', NULL);
INSERT INTO `asset_switch` VALUES (88, '9800093600762915', '服务器', 'I420-G20', '61.159.95.114', 'EQU023', '兰州电信（十里店）', '3', NULL);
INSERT INTO `asset_switch` VALUES (89, '9800093600762916', '服务器', 'I420-G20', '61.159.95.115', 'EQU023', '兰州电信（十里店）', '3', NULL);
INSERT INTO `asset_switch` VALUES (90, '1FWJDC2', '服务器', 'DELL R730xd(租用)', '118.182.248.40', 'EQU029', '兰州电信（十里店）', '3', NULL);
INSERT INTO `asset_switch` VALUES (91, 'G5QHFD2', '服务器', 'DELL R730xd(租用)', '118.182.248.41', 'EQU029', '兰州电信（十里店）', '3', NULL);
INSERT INTO `asset_switch` VALUES (92, '8HW7RD2', '服务器', 'DELL R730xd(租用)', '118.182.248.42', 'EQU029', '兰州电信（十里店）', '3', NULL);
INSERT INTO `asset_switch` VALUES (93, 'C3YVG82', '服务器', 'DELL R730xd(租用)', '118.182.248.43', 'EQU029', '兰州电信（十里店）', '3', NULL);
INSERT INTO `asset_switch` VALUES (94, 'CHG4962', '服务器', 'Dell r720xd', NULL, 'EQU029', '兰州电信（十里店）', '3', NULL);
INSERT INTO `asset_switch` VALUES (95, 'CJG4962', '服务器', 'Dell r720xd', NULL, 'EQU029', '兰州电信（十里店）', '3', NULL);
INSERT INTO `asset_switch` VALUES (96, 'GKY1Z42', '服务器', 'Dell r720xd', NULL, 'EQU029', '兰州电信（十里店）', '3', NULL);
INSERT INTO `asset_switch` VALUES (97, 'GCWXZ22', '服务器', 'DELL R720XD', '118.182.248.66', 'EQU032', '兰州电信（十里店）', '3', NULL);
INSERT INTO `asset_switch` VALUES (98, 'BBPHF3X', '服务器', 'DELL R720XD', '118.182.248.67', 'EQU032', '兰州电信（十里店）', '3', NULL);
INSERT INTO `asset_switch` VALUES (99, 'D63LS02', '服务器', 'DELL R720XD', '118.182.248.68', 'EQU032', '兰州电信（十里店）', '3', NULL);
INSERT INTO `asset_switch` VALUES (100, 'D6K3822', '服务器', 'DELL R720XD', '118.182.248.69', 'EQU032', '兰州电信（十里店）', '3', NULL);
INSERT INTO `asset_switch` VALUES (101, 'FTH9S12', '服务器', 'DELL R720XD', '118.182.248.70', 'EQU032', '兰州电信（十里店）', '3', NULL);
INSERT INTO `asset_switch` VALUES (102, '210235276710FC000031', '交换机', 'S6700', '118.182.248.62', 'EQU033', '兰州电信（十里店）', '3', NULL);
INSERT INTO `asset_switch` VALUES (103, 'B04K5X1', '服务器', 'Dell r720xd', '118.182.248.55', 'EQU033', '兰州电信（十里店）', '3', NULL);
INSERT INTO `asset_switch` VALUES (104, '54K3822', '服务器', 'Dell r720xd', '118.182.248.54', 'EQU033', '兰州电信（十里店）', '3', NULL);
INSERT INTO `asset_switch` VALUES (105, '286V2Y1', '服务器', 'Dell r720xd', '118.182.248.49', 'EQU033', '兰州电信（十里店）', '3', NULL);
INSERT INTO `asset_switch` VALUES (106, '6XHB742', '服务器', 'Dell r720xd', '118.182.248.50', 'EQU033', '兰州电信（十里店）', '3', NULL);
INSERT INTO `asset_switch` VALUES (107, '7R01G42', '服务器', 'Dell r720xd', '118.182.248.51', 'EQU033', '兰州电信（十里店）', '3', NULL);
INSERT INTO `asset_switch` VALUES (108, '9BR9742', '服务器', 'Dell r720xd', '118.182.248.52', 'EQU033', '兰州电信（十里店）', '3', NULL);
INSERT INTO `asset_switch` VALUES (109, 'H6Y8S12', '服务器', 'Dell r720xd', '118.182.248.53', 'EQU033', '兰州电信（十里店）', '3', NULL);
INSERT INTO `asset_switch` VALUES (110, '9YHH6Z1', '服务器', 'Dell r720xd', NULL, 'EQU033', '兰州电信（十里店）', '3', NULL);
INSERT INTO `asset_switch` VALUES (111, '6RS2H62', '服务器', 'Dell r720xd', NULL, 'EQU033', '兰州电信（十里店）', '3', NULL);

-- ----------------------------
-- Table structure for asset_up_ip
-- ----------------------------
DROP TABLE IF EXISTS `asset_up_ip`;
CREATE TABLE `asset_up_ip`  (
  `number` bigint NOT NULL AUTO_INCREMENT COMMENT '资产序号',
  `ip` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT 'IP',
  `company` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '归属',
  `room` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '所属机房',
  PRIMARY KEY (`number`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of asset_up_ip
-- ----------------------------

-- ----------------------------
-- Table structure for gen_table
-- ----------------------------
DROP TABLE IF EXISTS `gen_table`;
CREATE TABLE `gen_table`  (
  `table_id` bigint NOT NULL AUTO_INCREMENT COMMENT '编号',
  `table_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '表名称',
  `table_comment` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '表描述',
  `sub_table_name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '关联子表的表名',
  `sub_table_fk_name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '子表关联的外键名',
  `class_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '实体类名称',
  `tpl_category` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT 'crud' COMMENT '使用的模板（crud单表操作 tree树表操作）',
  `package_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '生成包路径',
  `module_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '生成模块名',
  `business_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '生成业务名',
  `function_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '生成功能名',
  `function_author` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '生成功能作者',
  `gen_type` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '0' COMMENT '生成代码方式（0zip压缩包 1自定义路径）',
  `gen_path` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '/' COMMENT '生成路径（不填默认项目路径）',
  `options` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '其它生成选项',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`table_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 14 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '代码生成业务表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of gen_table
-- ----------------------------
INSERT INTO `gen_table` VALUES (13, 'asset_switch', '交换机管理', NULL, NULL, 'AssetSwitch', 'crud', 'com.yuanzi.asset', 'asset', 'switchMan', '交换机管理', 'yuanzi', '0', '/', '{\"parentMenuId\":\"2000\"}', 'admin', '2022-10-18 16:42:40', '', '2022-10-18 16:52:17', NULL);

-- ----------------------------
-- Table structure for gen_table_column
-- ----------------------------
DROP TABLE IF EXISTS `gen_table_column`;
CREATE TABLE `gen_table_column`  (
  `column_id` bigint NOT NULL AUTO_INCREMENT COMMENT '编号',
  `table_id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '归属表编号',
  `column_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '列名称',
  `column_comment` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '列描述',
  `column_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '列类型',
  `java_type` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT 'JAVA类型',
  `java_field` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT 'JAVA字段名',
  `is_pk` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '是否主键（1是）',
  `is_increment` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '是否自增（1是）',
  `is_required` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '是否必填（1是）',
  `is_insert` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '是否为插入字段（1是）',
  `is_edit` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '是否编辑字段（1是）',
  `is_list` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '是否列表字段（1是）',
  `is_query` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '是否查询字段（1是）',
  `query_type` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT 'EQ' COMMENT '查询方式（等于、不等于、大于、小于、范围）',
  `html_type` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '显示类型（文本框、文本域、下拉框、复选框、单选框、日期控件）',
  `dict_type` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '字典类型',
  `sort` int NULL DEFAULT NULL COMMENT '排序',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`column_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 87 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '代码生成业务表字段' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of gen_table_column
-- ----------------------------
INSERT INTO `gen_table_column` VALUES (78, '13', 'number', '资产序号', 'int', 'Long', 'number', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2022-10-18 16:42:40', '', '2022-10-18 16:52:17');
INSERT INTO `gen_table_column` VALUES (79, '13', 'sn', 'SN编号', 'varchar(255)', 'String', 'sn', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2022-10-18 16:42:40', '', '2022-10-18 16:52:17');
INSERT INTO `gen_table_column` VALUES (80, '13', 'device_type', '设备类型', 'varchar(255)', 'String', 'deviceType', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'select', 'device_type', 3, 'admin', '2022-10-18 16:42:40', '', '2022-10-18 16:52:17');
INSERT INTO `gen_table_column` VALUES (81, '13', 'device_model', '设备型号', 'varchar(255)', 'String', 'deviceModel', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 4, 'admin', '2022-10-18 16:42:40', '', '2022-10-18 16:52:17');
INSERT INTO `gen_table_column` VALUES (82, '13', 'manege_IP', '管理IP', 'varchar(255)', 'String', 'manegeIp', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 5, 'admin', '2022-10-18 16:42:40', '', '2022-10-18 16:52:17');
INSERT INTO `gen_table_column` VALUES (83, '13', 'cabinet_No', '机柜编号', 'varchar(255)', 'String', 'cabinetNo', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 6, 'admin', '2022-10-18 16:42:40', '', '2022-10-18 16:52:17');
INSERT INTO `gen_table_column` VALUES (84, '13', 'room', '所属机房', 'varchar(255)', 'String', 'room', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 7, 'admin', '2022-10-18 16:42:40', '', '2022-10-18 16:52:17');
INSERT INTO `gen_table_column` VALUES (85, '13', 'business_type', '业务类型', 'varchar(255)', 'String', 'businessType', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'select', 'asset_business', 8, 'admin', '2022-10-18 16:42:40', '', '2022-10-18 16:52:17');
INSERT INTO `gen_table_column` VALUES (86, '13', 'port_interconnetion', '端口互联', 'varchar(255)', 'String', 'portInterconnetion', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'editor', '', 9, 'admin', '2022-10-18 16:42:40', '', '2022-10-18 16:52:17');

-- ----------------------------
-- Table structure for qrtz_blob_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_blob_triggers`;
CREATE TABLE `qrtz_blob_triggers`  (
  `sched_name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '调度名称',
  `trigger_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT 'qrtz_triggers表trigger_name的外键',
  `trigger_group` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  `blob_data` blob NULL COMMENT '存放持久化Trigger对象',
  PRIMARY KEY (`sched_name`, `trigger_name`, `trigger_group`) USING BTREE,
  CONSTRAINT `qrtz_blob_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = 'Blob类型的触发器表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of qrtz_blob_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_calendars
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_calendars`;
CREATE TABLE `qrtz_calendars`  (
  `sched_name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '调度名称',
  `calendar_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '日历名称',
  `calendar` blob NOT NULL COMMENT '存放持久化calendar对象',
  PRIMARY KEY (`sched_name`, `calendar_name`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '日历信息表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of qrtz_calendars
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_cron_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_cron_triggers`;
CREATE TABLE `qrtz_cron_triggers`  (
  `sched_name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '调度名称',
  `trigger_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT 'qrtz_triggers表trigger_name的外键',
  `trigger_group` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  `cron_expression` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT 'cron表达式',
  `time_zone_id` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '时区',
  PRIMARY KEY (`sched_name`, `trigger_name`, `trigger_group`) USING BTREE,
  CONSTRAINT `qrtz_cron_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = 'Cron类型的触发器表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of qrtz_cron_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_fired_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_fired_triggers`;
CREATE TABLE `qrtz_fired_triggers`  (
  `sched_name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '调度名称',
  `entry_id` varchar(95) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '调度器实例id',
  `trigger_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT 'qrtz_triggers表trigger_name的外键',
  `trigger_group` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  `instance_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '调度器实例名',
  `fired_time` bigint NOT NULL COMMENT '触发的时间',
  `sched_time` bigint NOT NULL COMMENT '定时器制定的时间',
  `priority` int NOT NULL COMMENT '优先级',
  `state` varchar(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '状态',
  `job_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '任务名称',
  `job_group` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '任务组名',
  `is_nonconcurrent` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '是否并发',
  `requests_recovery` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '是否接受恢复执行',
  PRIMARY KEY (`sched_name`, `entry_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '已触发的触发器表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of qrtz_fired_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_job_details
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_job_details`;
CREATE TABLE `qrtz_job_details`  (
  `sched_name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '调度名称',
  `job_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '任务名称',
  `job_group` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '任务组名',
  `description` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '相关介绍',
  `job_class_name` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '执行任务类名称',
  `is_durable` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '是否持久化',
  `is_nonconcurrent` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '是否并发',
  `is_update_data` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '是否更新数据',
  `requests_recovery` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '是否接受恢复执行',
  `job_data` blob NULL COMMENT '存放持久化job对象',
  PRIMARY KEY (`sched_name`, `job_name`, `job_group`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '任务详细信息表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of qrtz_job_details
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_locks
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_locks`;
CREATE TABLE `qrtz_locks`  (
  `sched_name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '调度名称',
  `lock_name` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '悲观锁名称',
  PRIMARY KEY (`sched_name`, `lock_name`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '存储的悲观锁信息表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of qrtz_locks
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_paused_trigger_grps
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_paused_trigger_grps`;
CREATE TABLE `qrtz_paused_trigger_grps`  (
  `sched_name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '调度名称',
  `trigger_group` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  PRIMARY KEY (`sched_name`, `trigger_group`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '暂停的触发器表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of qrtz_paused_trigger_grps
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_scheduler_state
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_scheduler_state`;
CREATE TABLE `qrtz_scheduler_state`  (
  `sched_name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '调度名称',
  `instance_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '实例名称',
  `last_checkin_time` bigint NOT NULL COMMENT '上次检查时间',
  `checkin_interval` bigint NOT NULL COMMENT '检查间隔时间',
  PRIMARY KEY (`sched_name`, `instance_name`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '调度器状态表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of qrtz_scheduler_state
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_simple_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_simple_triggers`;
CREATE TABLE `qrtz_simple_triggers`  (
  `sched_name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '调度名称',
  `trigger_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT 'qrtz_triggers表trigger_name的外键',
  `trigger_group` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  `repeat_count` bigint NOT NULL COMMENT '重复的次数统计',
  `repeat_interval` bigint NOT NULL COMMENT '重复的间隔时间',
  `times_triggered` bigint NOT NULL COMMENT '已经触发的次数',
  PRIMARY KEY (`sched_name`, `trigger_name`, `trigger_group`) USING BTREE,
  CONSTRAINT `qrtz_simple_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '简单触发器的信息表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of qrtz_simple_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_simprop_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_simprop_triggers`;
CREATE TABLE `qrtz_simprop_triggers`  (
  `sched_name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '调度名称',
  `trigger_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT 'qrtz_triggers表trigger_name的外键',
  `trigger_group` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  `str_prop_1` varchar(512) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT 'String类型的trigger的第一个参数',
  `str_prop_2` varchar(512) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT 'String类型的trigger的第二个参数',
  `str_prop_3` varchar(512) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT 'String类型的trigger的第三个参数',
  `int_prop_1` int NULL DEFAULT NULL COMMENT 'int类型的trigger的第一个参数',
  `int_prop_2` int NULL DEFAULT NULL COMMENT 'int类型的trigger的第二个参数',
  `long_prop_1` bigint NULL DEFAULT NULL COMMENT 'long类型的trigger的第一个参数',
  `long_prop_2` bigint NULL DEFAULT NULL COMMENT 'long类型的trigger的第二个参数',
  `dec_prop_1` decimal(13, 4) NULL DEFAULT NULL COMMENT 'decimal类型的trigger的第一个参数',
  `dec_prop_2` decimal(13, 4) NULL DEFAULT NULL COMMENT 'decimal类型的trigger的第二个参数',
  `bool_prop_1` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT 'Boolean类型的trigger的第一个参数',
  `bool_prop_2` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT 'Boolean类型的trigger的第二个参数',
  PRIMARY KEY (`sched_name`, `trigger_name`, `trigger_group`) USING BTREE,
  CONSTRAINT `qrtz_simprop_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '同步机制的行锁表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of qrtz_simprop_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_triggers`;
CREATE TABLE `qrtz_triggers`  (
  `sched_name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '调度名称',
  `trigger_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '触发器的名字',
  `trigger_group` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '触发器所属组的名字',
  `job_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT 'qrtz_job_details表job_name的外键',
  `job_group` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT 'qrtz_job_details表job_group的外键',
  `description` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '相关介绍',
  `next_fire_time` bigint NULL DEFAULT NULL COMMENT '上一次触发时间（毫秒）',
  `prev_fire_time` bigint NULL DEFAULT NULL COMMENT '下一次触发时间（默认为-1表示不触发）',
  `priority` int NULL DEFAULT NULL COMMENT '优先级',
  `trigger_state` varchar(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '触发器状态',
  `trigger_type` varchar(8) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '触发器的类型',
  `start_time` bigint NOT NULL COMMENT '开始时间',
  `end_time` bigint NULL DEFAULT NULL COMMENT '结束时间',
  `calendar_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '日程表名称',
  `misfire_instr` smallint NULL DEFAULT NULL COMMENT '补偿执行的策略',
  `job_data` blob NULL COMMENT '存放持久化job对象',
  PRIMARY KEY (`sched_name`, `trigger_name`, `trigger_group`) USING BTREE,
  INDEX `sched_name`(`sched_name` ASC, `job_name` ASC, `job_group` ASC) USING BTREE,
  CONSTRAINT `qrtz_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `job_name`, `job_group`) REFERENCES `qrtz_job_details` (`sched_name`, `job_name`, `job_group`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '触发器详细信息表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of qrtz_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for sys_config
-- ----------------------------
DROP TABLE IF EXISTS `sys_config`;
CREATE TABLE `sys_config`  (
  `config_id` int NOT NULL AUTO_INCREMENT COMMENT '参数主键',
  `config_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '参数名称',
  `config_key` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '参数键名',
  `config_value` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '参数键值',
  `config_type` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT 'N' COMMENT '系统内置（Y是 N否）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`config_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 100 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '参数配置表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_config
-- ----------------------------
INSERT INTO `sys_config` VALUES (1, '主框架页-默认皮肤样式名称', 'sys.index.skinName', 'skin-blue', 'Y', 'admin', '2022-10-12 15:10:42', '', NULL, '蓝色 skin-blue、绿色 skin-green、紫色 skin-purple、红色 skin-red、黄色 skin-yellow');
INSERT INTO `sys_config` VALUES (2, '用户管理-账号初始密码', 'sys.user.initPassword', '123456', 'Y', 'admin', '2022-10-12 15:10:42', '', NULL, '初始化密码 123456');
INSERT INTO `sys_config` VALUES (3, '主框架页-侧边栏主题', 'sys.index.sideTheme', 'theme-dark', 'Y', 'admin', '2022-10-12 15:10:42', '', NULL, '深色主题theme-dark，浅色主题theme-light');
INSERT INTO `sys_config` VALUES (4, '账号自助-验证码开关', 'sys.account.captchaOnOff', 'true', 'Y', 'admin', '2022-10-12 15:10:42', '', NULL, '是否开启验证码功能（true开启，false关闭）');
INSERT INTO `sys_config` VALUES (5, '账号自助-是否开启用户注册功能', 'sys.account.registerUser', 'false', 'Y', 'admin', '2022-10-12 15:10:42', '', NULL, '是否开启注册用户功能（true开启，false关闭）');

-- ----------------------------
-- Table structure for sys_dept
-- ----------------------------
DROP TABLE IF EXISTS `sys_dept`;
CREATE TABLE `sys_dept`  (
  `dept_id` bigint NOT NULL AUTO_INCREMENT COMMENT '部门id',
  `parent_id` bigint NULL DEFAULT 0 COMMENT '父部门id',
  `ancestors` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '祖级列表',
  `dept_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '部门名称',
  `order_num` int NULL DEFAULT 0 COMMENT '显示顺序',
  `leader` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '负责人',
  `phone` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '联系电话',
  `email` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '邮箱',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '0' COMMENT '部门状态（0正常 1停用）',
  `del_flag` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`dept_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 200 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '部门表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_dept
-- ----------------------------
INSERT INTO `sys_dept` VALUES (100, 0, '0', '若依科技', 0, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2022-10-12 15:10:39', '', NULL);
INSERT INTO `sys_dept` VALUES (101, 100, '0,100', '深圳总公司', 1, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2022-10-12 15:10:39', '', NULL);
INSERT INTO `sys_dept` VALUES (102, 100, '0,100', '长沙分公司', 2, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2022-10-12 15:10:39', '', NULL);
INSERT INTO `sys_dept` VALUES (103, 101, '0,100,101', '研发部门', 1, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2022-10-12 15:10:39', '', NULL);
INSERT INTO `sys_dept` VALUES (104, 101, '0,100,101', '市场部门', 2, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2022-10-12 15:10:39', '', NULL);
INSERT INTO `sys_dept` VALUES (105, 101, '0,100,101', '测试部门', 3, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2022-10-12 15:10:39', '', NULL);
INSERT INTO `sys_dept` VALUES (106, 101, '0,100,101', '财务部门', 4, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2022-10-12 15:10:39', '', NULL);
INSERT INTO `sys_dept` VALUES (107, 101, '0,100,101', '运维部门', 5, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2022-10-12 15:10:39', '', NULL);
INSERT INTO `sys_dept` VALUES (108, 102, '0,100,102', '市场部门', 1, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2022-10-12 15:10:39', '', NULL);
INSERT INTO `sys_dept` VALUES (109, 102, '0,100,102', '财务部门', 2, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2022-10-12 15:10:39', '', NULL);

-- ----------------------------
-- Table structure for sys_dict_data
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict_data`;
CREATE TABLE `sys_dict_data`  (
  `dict_code` bigint NOT NULL AUTO_INCREMENT COMMENT '字典编码',
  `dict_sort` int NULL DEFAULT 0 COMMENT '字典排序',
  `dict_label` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '字典标签',
  `dict_value` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '字典键值',
  `dict_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '字典类型',
  `css_class` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '样式属性（其他样式扩展）',
  `list_class` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '表格回显样式',
  `is_default` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT 'N' COMMENT '是否默认（Y是 N否）',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '0' COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`dict_code`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 102 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '字典数据表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_dict_data
-- ----------------------------
INSERT INTO `sys_dict_data` VALUES (1, 1, '男', '0', 'sys_user_sex', '', '', 'Y', '0', 'admin', '2022-10-12 15:10:42', '', NULL, '性别男');
INSERT INTO `sys_dict_data` VALUES (2, 2, '女', '1', 'sys_user_sex', '', '', 'N', '0', 'admin', '2022-10-12 15:10:42', '', NULL, '性别女');
INSERT INTO `sys_dict_data` VALUES (3, 3, '未知', '2', 'sys_user_sex', '', '', 'N', '0', 'admin', '2022-10-12 15:10:42', '', NULL, '性别未知');
INSERT INTO `sys_dict_data` VALUES (4, 1, '显示', '0', 'sys_show_hide', '', 'primary', 'Y', '0', 'admin', '2022-10-12 15:10:42', '', NULL, '显示菜单');
INSERT INTO `sys_dict_data` VALUES (5, 2, '隐藏', '1', 'sys_show_hide', '', 'danger', 'N', '0', 'admin', '2022-10-12 15:10:42', '', NULL, '隐藏菜单');
INSERT INTO `sys_dict_data` VALUES (6, 1, '正常', '0', 'sys_normal_disable', '', 'primary', 'Y', '0', 'admin', '2022-10-12 15:10:42', '', NULL, '正常状态');
INSERT INTO `sys_dict_data` VALUES (7, 2, '停用', '1', 'sys_normal_disable', '', 'danger', 'N', '0', 'admin', '2022-10-12 15:10:42', '', NULL, '停用状态');
INSERT INTO `sys_dict_data` VALUES (8, 1, '正常', '0', 'sys_job_status', '', 'primary', 'Y', '0', 'admin', '2022-10-12 15:10:42', '', NULL, '正常状态');
INSERT INTO `sys_dict_data` VALUES (9, 2, '暂停', '1', 'sys_job_status', '', 'danger', 'N', '0', 'admin', '2022-10-12 15:10:42', '', NULL, '停用状态');
INSERT INTO `sys_dict_data` VALUES (10, 1, '默认', 'DEFAULT', 'sys_job_group', '', '', 'Y', '0', 'admin', '2022-10-12 15:10:42', '', NULL, '默认分组');
INSERT INTO `sys_dict_data` VALUES (11, 2, '系统', 'SYSTEM', 'sys_job_group', '', '', 'N', '0', 'admin', '2022-10-12 15:10:42', '', NULL, '系统分组');
INSERT INTO `sys_dict_data` VALUES (12, 1, '是', 'Y', 'sys_yes_no', '', 'primary', 'Y', '0', 'admin', '2022-10-12 15:10:42', '', NULL, '系统默认是');
INSERT INTO `sys_dict_data` VALUES (13, 2, '否', 'N', 'sys_yes_no', '', 'danger', 'N', '0', 'admin', '2022-10-12 15:10:42', '', NULL, '系统默认否');
INSERT INTO `sys_dict_data` VALUES (14, 1, '通知', '1', 'sys_notice_type', '', 'warning', 'Y', '0', 'admin', '2022-10-12 15:10:42', '', NULL, '通知');
INSERT INTO `sys_dict_data` VALUES (15, 2, '公告', '2', 'sys_notice_type', '', 'success', 'N', '0', 'admin', '2022-10-12 15:10:42', '', NULL, '公告');
INSERT INTO `sys_dict_data` VALUES (16, 1, '正常', '0', 'sys_notice_status', '', 'primary', 'Y', '0', 'admin', '2022-10-12 15:10:42', '', NULL, '正常状态');
INSERT INTO `sys_dict_data` VALUES (17, 2, '关闭', '1', 'sys_notice_status', '', 'danger', 'N', '0', 'admin', '2022-10-12 15:10:42', '', NULL, '关闭状态');
INSERT INTO `sys_dict_data` VALUES (18, 1, '新增', '1', 'sys_oper_type', '', 'info', 'N', '0', 'admin', '2022-10-12 15:10:42', '', NULL, '新增操作');
INSERT INTO `sys_dict_data` VALUES (19, 2, '修改', '2', 'sys_oper_type', '', 'info', 'N', '0', 'admin', '2022-10-12 15:10:42', '', NULL, '修改操作');
INSERT INTO `sys_dict_data` VALUES (20, 3, '删除', '3', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2022-10-12 15:10:42', '', NULL, '删除操作');
INSERT INTO `sys_dict_data` VALUES (21, 4, '授权', '4', 'sys_oper_type', '', 'primary', 'N', '0', 'admin', '2022-10-12 15:10:42', '', NULL, '授权操作');
INSERT INTO `sys_dict_data` VALUES (22, 5, '导出', '5', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2022-10-12 15:10:42', '', NULL, '导出操作');
INSERT INTO `sys_dict_data` VALUES (23, 6, '导入', '6', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2022-10-12 15:10:42', '', NULL, '导入操作');
INSERT INTO `sys_dict_data` VALUES (24, 7, '强退', '7', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2022-10-12 15:10:42', '', NULL, '强退操作');
INSERT INTO `sys_dict_data` VALUES (25, 8, '生成代码', '8', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2022-10-12 15:10:42', '', NULL, '生成操作');
INSERT INTO `sys_dict_data` VALUES (26, 9, '清空数据', '9', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2022-10-12 15:10:42', '', NULL, '清空操作');
INSERT INTO `sys_dict_data` VALUES (27, 1, '成功', '0', 'sys_common_status', '', 'primary', 'N', '0', 'admin', '2022-10-12 15:10:42', '', NULL, '正常状态');
INSERT INTO `sys_dict_data` VALUES (28, 2, '失败', '1', 'sys_common_status', '', 'danger', 'N', '0', 'admin', '2022-10-12 15:10:42', '', NULL, '停用状态');
INSERT INTO `sys_dict_data` VALUES (29, 1, '移动', '1', 'asset_business', NULL, 'primary', 'N', '0', '', NULL, 'admin', '2022-10-18 15:04:26', '移动');
INSERT INTO `sys_dict_data` VALUES (30, 2, '联通', '2', 'asset_business', NULL, 'primary', 'N', '0', '', NULL, 'admin', '2022-10-18 15:04:21', '联通');
INSERT INTO `sys_dict_data` VALUES (31, 3, '电信', '3', 'asset_business', NULL, 'primary', 'N', '0', '', NULL, 'admin', '2022-10-18 15:04:14', '电信');
INSERT INTO `sys_dict_data` VALUES (100, 4, '边缘计算', '4', 'asset_business', NULL, 'primary', 'N', '0', 'admin', '2022-10-18 15:03:08', 'admin', '2022-10-18 15:04:04', '边缘计算');
INSERT INTO `sys_dict_data` VALUES (101, 1, '交换机', '1', 'device_type', NULL, 'primary', 'N', '0', 'admin', '2022-10-18 16:46:08', '', NULL, NULL);

-- ----------------------------
-- Table structure for sys_dict_type
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict_type`;
CREATE TABLE `sys_dict_type`  (
  `dict_id` bigint NOT NULL AUTO_INCREMENT COMMENT '字典主键',
  `dict_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '字典名称',
  `dict_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '字典类型',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '0' COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`dict_id`) USING BTREE,
  UNIQUE INDEX `dict_type`(`dict_type` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 102 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '字典类型表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_dict_type
-- ----------------------------
INSERT INTO `sys_dict_type` VALUES (1, '用户性别', 'sys_user_sex', '0', 'admin', '2022-10-12 15:10:42', '', NULL, '用户性别列表');
INSERT INTO `sys_dict_type` VALUES (2, '菜单状态', 'sys_show_hide', '0', 'admin', '2022-10-12 15:10:42', '', NULL, '菜单状态列表');
INSERT INTO `sys_dict_type` VALUES (3, '系统开关', 'sys_normal_disable', '0', 'admin', '2022-10-12 15:10:42', '', NULL, '系统开关列表');
INSERT INTO `sys_dict_type` VALUES (4, '任务状态', 'sys_job_status', '0', 'admin', '2022-10-12 15:10:42', '', NULL, '任务状态列表');
INSERT INTO `sys_dict_type` VALUES (5, '任务分组', 'sys_job_group', '0', 'admin', '2022-10-12 15:10:42', '', NULL, '任务分组列表');
INSERT INTO `sys_dict_type` VALUES (6, '系统是否', 'sys_yes_no', '0', 'admin', '2022-10-12 15:10:42', '', NULL, '系统是否列表');
INSERT INTO `sys_dict_type` VALUES (7, '通知类型', 'sys_notice_type', '0', 'admin', '2022-10-12 15:10:42', '', NULL, '通知类型列表');
INSERT INTO `sys_dict_type` VALUES (8, '通知状态', 'sys_notice_status', '0', 'admin', '2022-10-12 15:10:42', '', NULL, '通知状态列表');
INSERT INTO `sys_dict_type` VALUES (9, '操作类型', 'sys_oper_type', '0', 'admin', '2022-10-12 15:10:42', '', NULL, '操作类型列表');
INSERT INTO `sys_dict_type` VALUES (10, '系统状态', 'sys_common_status', '0', 'admin', '2022-10-12 15:10:42', '', NULL, '登录状态列表');
INSERT INTO `sys_dict_type` VALUES (100, '业务类型', 'asset_business', '0', 'admin', '2022-10-17 16:13:18', 'admin', '2022-10-17 16:13:46', '业务类型列表');
INSERT INTO `sys_dict_type` VALUES (101, '设备类型', 'device_type', '0', 'admin', '2022-10-18 16:45:19', 'admin', '2022-10-18 16:45:36', '设备类型列表');

-- ----------------------------
-- Table structure for sys_job
-- ----------------------------
DROP TABLE IF EXISTS `sys_job`;
CREATE TABLE `sys_job`  (
  `job_id` bigint NOT NULL AUTO_INCREMENT COMMENT '任务ID',
  `job_name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '' COMMENT '任务名称',
  `job_group` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT 'DEFAULT' COMMENT '任务组名',
  `invoke_target` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '调用目标字符串',
  `cron_expression` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT 'cron执行表达式',
  `misfire_policy` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '3' COMMENT '计划执行错误策略（1立即执行 2执行一次 3放弃执行）',
  `concurrent` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '1' COMMENT '是否并发执行（0允许 1禁止）',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '0' COMMENT '状态（0正常 1暂停）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '备注信息',
  PRIMARY KEY (`job_id`, `job_name`, `job_group`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 100 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '定时任务调度表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_job
-- ----------------------------
INSERT INTO `sys_job` VALUES (1, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '0/10 * * * * ?', '3', '1', '1', 'admin', '2022-10-12 15:10:42', '', NULL, '');
INSERT INTO `sys_job` VALUES (2, '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '0/15 * * * * ?', '3', '1', '1', 'admin', '2022-10-12 15:10:42', '', NULL, '');
INSERT INTO `sys_job` VALUES (3, '系统默认（多参）', 'DEFAULT', 'ryTask.ryMultipleParams(\'ry\', true, 2000L, 316.50D, 100)', '0/20 * * * * ?', '3', '1', '1', 'admin', '2022-10-12 15:10:42', '', NULL, '');

-- ----------------------------
-- Table structure for sys_job_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_job_log`;
CREATE TABLE `sys_job_log`  (
  `job_log_id` bigint NOT NULL AUTO_INCREMENT COMMENT '任务日志ID',
  `job_name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '任务名称',
  `job_group` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '任务组名',
  `invoke_target` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '调用目标字符串',
  `job_message` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '日志信息',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '0' COMMENT '执行状态（0正常 1失败）',
  `exception_info` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '异常信息',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`job_log_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '定时任务调度日志表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_job_log
-- ----------------------------

-- ----------------------------
-- Table structure for sys_logininfor
-- ----------------------------
DROP TABLE IF EXISTS `sys_logininfor`;
CREATE TABLE `sys_logininfor`  (
  `info_id` bigint NOT NULL AUTO_INCREMENT COMMENT '访问ID',
  `user_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '用户账号',
  `ipaddr` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '登录IP地址',
  `login_location` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '登录地点',
  `browser` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '浏览器类型',
  `os` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '操作系统',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '0' COMMENT '登录状态（0成功 1失败）',
  `msg` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '提示消息',
  `login_time` datetime NULL DEFAULT NULL COMMENT '访问时间',
  PRIMARY KEY (`info_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 149 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '系统访问记录' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_logininfor
-- ----------------------------
INSERT INTO `sys_logininfor` VALUES (100, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-10-12 15:22:05');
INSERT INTO `sys_logininfor` VALUES (101, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-10-12 15:24:24');
INSERT INTO `sys_logininfor` VALUES (102, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-10-13 14:56:07');
INSERT INTO `sys_logininfor` VALUES (103, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-10-13 16:16:29');
INSERT INTO `sys_logininfor` VALUES (104, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-10-13 19:11:38');
INSERT INTO `sys_logininfor` VALUES (105, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '1', '验证码错误', '2022-10-14 09:55:22');
INSERT INTO `sys_logininfor` VALUES (106, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-10-14 09:55:26');
INSERT INTO `sys_logininfor` VALUES (107, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-10-14 10:50:46');
INSERT INTO `sys_logininfor` VALUES (108, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-10-14 14:19:00');
INSERT INTO `sys_logininfor` VALUES (109, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-10-14 15:46:30');
INSERT INTO `sys_logininfor` VALUES (110, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-10-14 16:46:12');
INSERT INTO `sys_logininfor` VALUES (111, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-10-15 10:07:49');
INSERT INTO `sys_logininfor` VALUES (112, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2022-10-15 10:49:59');
INSERT INTO `sys_logininfor` VALUES (113, 'skyton', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-10-15 10:50:10');
INSERT INTO `sys_logininfor` VALUES (114, 'skyton', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2022-10-15 10:50:40');
INSERT INTO `sys_logininfor` VALUES (115, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-10-15 10:50:45');
INSERT INTO `sys_logininfor` VALUES (116, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2022-10-15 10:51:22');
INSERT INTO `sys_logininfor` VALUES (117, 'skyton', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-10-15 10:51:27');
INSERT INTO `sys_logininfor` VALUES (118, 'skyton', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2022-10-15 10:52:30');
INSERT INTO `sys_logininfor` VALUES (119, 'skyton', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-10-15 10:52:34');
INSERT INTO `sys_logininfor` VALUES (120, 'skyton', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2022-10-15 10:52:40');
INSERT INTO `sys_logininfor` VALUES (121, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-10-15 10:52:45');
INSERT INTO `sys_logininfor` VALUES (122, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2022-10-15 10:53:21');
INSERT INTO `sys_logininfor` VALUES (123, 'skyton', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-10-15 10:53:26');
INSERT INTO `sys_logininfor` VALUES (124, 'skyton', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2022-10-15 10:55:58');
INSERT INTO `sys_logininfor` VALUES (125, 'skyton', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-10-15 10:56:13');
INSERT INTO `sys_logininfor` VALUES (126, 'skyton', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2022-10-15 10:56:34');
INSERT INTO `sys_logininfor` VALUES (127, 'skyton', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '1', '验证码已失效', '2022-10-15 11:00:42');
INSERT INTO `sys_logininfor` VALUES (128, 'skyton', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-10-15 11:00:46');
INSERT INTO `sys_logininfor` VALUES (129, 'skyton', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-10-17 10:27:43');
INSERT INTO `sys_logininfor` VALUES (130, 'skyton', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2022-10-17 10:34:41');
INSERT INTO `sys_logininfor` VALUES (131, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-10-17 10:34:46');
INSERT INTO `sys_logininfor` VALUES (132, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2022-10-17 11:13:40');
INSERT INTO `sys_logininfor` VALUES (133, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '1', '验证码错误', '2022-10-17 11:13:45');
INSERT INTO `sys_logininfor` VALUES (134, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '1', '验证码错误', '2022-10-17 11:13:49');
INSERT INTO `sys_logininfor` VALUES (135, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '1', '验证码错误', '2022-10-17 11:13:54');
INSERT INTO `sys_logininfor` VALUES (136, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-10-17 11:13:57');
INSERT INTO `sys_logininfor` VALUES (137, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-10-17 14:04:54');
INSERT INTO `sys_logininfor` VALUES (138, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2022-10-17 15:29:34');
INSERT INTO `sys_logininfor` VALUES (139, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-10-17 15:29:38');
INSERT INTO `sys_logininfor` VALUES (140, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2022-10-17 16:11:14');
INSERT INTO `sys_logininfor` VALUES (141, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-10-17 16:11:20');
INSERT INTO `sys_logininfor` VALUES (142, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-10-18 10:07:17');
INSERT INTO `sys_logininfor` VALUES (143, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-10-18 11:59:19');
INSERT INTO `sys_logininfor` VALUES (144, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-10-18 14:02:01');
INSERT INTO `sys_logininfor` VALUES (145, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-10-18 14:51:52');
INSERT INTO `sys_logininfor` VALUES (146, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2022-10-18 15:39:19');
INSERT INTO `sys_logininfor` VALUES (147, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-10-18 15:39:23');
INSERT INTO `sys_logininfor` VALUES (148, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-10-18 16:42:19');

-- ----------------------------
-- Table structure for sys_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu`;
CREATE TABLE `sys_menu`  (
  `menu_id` bigint NOT NULL AUTO_INCREMENT COMMENT '菜单ID',
  `menu_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '菜单名称',
  `parent_id` bigint NULL DEFAULT 0 COMMENT '父菜单ID',
  `order_num` int NULL DEFAULT 0 COMMENT '显示顺序',
  `path` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '路由地址',
  `component` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '组件路径',
  `query` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '路由参数',
  `is_frame` int NULL DEFAULT 1 COMMENT '是否为外链（0是 1否）',
  `is_cache` int NULL DEFAULT 0 COMMENT '是否缓存（0缓存 1不缓存）',
  `menu_type` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '菜单类型（M目录 C菜单 F按钮）',
  `visible` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '0' COMMENT '菜单状态（0显示 1隐藏）',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '0' COMMENT '菜单状态（0正常 1停用）',
  `perms` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '权限标识',
  `icon` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '#' COMMENT '菜单图标',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '备注',
  PRIMARY KEY (`menu_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2105 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '菜单权限表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_menu
-- ----------------------------
INSERT INTO `sys_menu` VALUES (1, '系统管理', 0, 10, 'system', NULL, '', 1, 0, 'M', '0', '0', '', 'system', 'admin', '2022-10-12 15:10:40', 'admin', '2022-10-12 15:28:03', '系统管理目录');
INSERT INTO `sys_menu` VALUES (2, '系统监控', 0, 11, 'monitor', NULL, '', 1, 0, 'M', '0', '0', '', 'monitor', 'admin', '2022-10-12 15:10:40', 'admin', '2022-10-12 15:28:14', '系统监控目录');
INSERT INTO `sys_menu` VALUES (3, '系统工具', 0, 12, 'tool', NULL, '', 1, 0, 'M', '0', '0', '', 'tool', 'admin', '2022-10-12 15:10:40', 'admin', '2022-10-12 15:28:23', '系统工具目录');
INSERT INTO `sys_menu` VALUES (100, '用户管理', 1, 1, 'user', 'system/user/index', '', 1, 0, 'C', '0', '0', 'system:user:list', 'user', 'admin', '2022-10-12 15:10:40', '', NULL, '用户管理菜单');
INSERT INTO `sys_menu` VALUES (101, '角色管理', 1, 2, 'role', 'system/role/index', '', 1, 0, 'C', '0', '0', 'system:role:list', 'peoples', 'admin', '2022-10-12 15:10:40', '', NULL, '角色管理菜单');
INSERT INTO `sys_menu` VALUES (102, '菜单管理', 1, 3, 'menu', 'system/menu/index', '', 1, 0, 'C', '0', '0', 'system:menu:list', 'tree-table', 'admin', '2022-10-12 15:10:40', '', NULL, '菜单管理菜单');
INSERT INTO `sys_menu` VALUES (103, '部门管理', 1, 4, 'dept', 'system/dept/index', '', 1, 0, 'C', '0', '0', 'system:dept:list', 'tree', 'admin', '2022-10-12 15:10:40', '', NULL, '部门管理菜单');
INSERT INTO `sys_menu` VALUES (104, '岗位管理', 1, 5, 'post', 'system/post/index', '', 1, 0, 'C', '0', '0', 'system:post:list', 'post', 'admin', '2022-10-12 15:10:40', '', NULL, '岗位管理菜单');
INSERT INTO `sys_menu` VALUES (105, '字典管理', 1, 6, 'dict', 'system/dict/index', '', 1, 0, 'C', '0', '0', 'system:dict:list', 'dict', 'admin', '2022-10-12 15:10:40', '', NULL, '字典管理菜单');
INSERT INTO `sys_menu` VALUES (106, '参数设置', 1, 7, 'config', 'system/config/index', '', 1, 0, 'C', '0', '0', 'system:config:list', 'edit', 'admin', '2022-10-12 15:10:40', '', NULL, '参数设置菜单');
INSERT INTO `sys_menu` VALUES (107, '通知公告', 1, 8, 'notice', 'system/notice/index', '', 1, 0, 'C', '0', '0', 'system:notice:list', 'message', 'admin', '2022-10-12 15:10:40', '', NULL, '通知公告菜单');
INSERT INTO `sys_menu` VALUES (108, '日志管理', 1, 9, 'log', '', '', 1, 0, 'M', '0', '0', '', 'log', 'admin', '2022-10-12 15:10:40', '', NULL, '日志管理菜单');
INSERT INTO `sys_menu` VALUES (109, '在线用户', 2, 1, 'online', 'monitor/online/index', '', 1, 0, 'C', '0', '0', 'monitor:online:list', 'online', 'admin', '2022-10-12 15:10:40', '', NULL, '在线用户菜单');
INSERT INTO `sys_menu` VALUES (110, '定时任务', 2, 2, 'job', 'monitor/job/index', '', 1, 0, 'C', '0', '0', 'monitor:job:list', 'job', 'admin', '2022-10-12 15:10:40', '', NULL, '定时任务菜单');
INSERT INTO `sys_menu` VALUES (111, '数据监控', 2, 3, 'druid', 'monitor/druid/index', '', 1, 0, 'C', '0', '0', 'monitor:druid:list', 'druid', 'admin', '2022-10-12 15:10:40', '', NULL, '数据监控菜单');
INSERT INTO `sys_menu` VALUES (112, '服务监控', 2, 4, 'server', 'monitor/server/index', '', 1, 0, 'C', '0', '0', 'monitor:server:list', 'server', 'admin', '2022-10-12 15:10:40', '', NULL, '服务监控菜单');
INSERT INTO `sys_menu` VALUES (113, '缓存监控', 2, 5, 'cache', 'monitor/cache/index', '', 1, 0, 'C', '0', '0', 'monitor:cache:list', 'redis', 'admin', '2022-10-12 15:10:40', '', NULL, '缓存监控菜单');
INSERT INTO `sys_menu` VALUES (114, '表单构建', 3, 1, 'build', 'tool/build/index', '', 1, 0, 'C', '0', '0', 'tool:build:list', 'build', 'admin', '2022-10-12 15:10:40', '', NULL, '表单构建菜单');
INSERT INTO `sys_menu` VALUES (115, '代码生成', 3, 2, 'gen', 'tool/gen/index', '', 1, 0, 'C', '0', '0', 'tool:gen:list', 'code', 'admin', '2022-10-12 15:10:40', '', NULL, '代码生成菜单');
INSERT INTO `sys_menu` VALUES (116, '系统接口', 3, 3, 'swagger', 'tool/swagger/index', '', 1, 0, 'C', '0', '0', 'tool:swagger:list', 'swagger', 'admin', '2022-10-12 15:10:40', '', NULL, '系统接口菜单');
INSERT INTO `sys_menu` VALUES (500, '操作日志', 108, 1, 'operlog', 'monitor/operlog/index', '', 1, 0, 'C', '0', '0', 'monitor:operlog:list', 'form', 'admin', '2022-10-12 15:10:40', '', NULL, '操作日志菜单');
INSERT INTO `sys_menu` VALUES (501, '登录日志', 108, 2, 'logininfor', 'monitor/logininfor/index', '', 1, 0, 'C', '0', '0', 'monitor:logininfor:list', 'logininfor', 'admin', '2022-10-12 15:10:40', '', NULL, '登录日志菜单');
INSERT INTO `sys_menu` VALUES (1000, '用户查询', 100, 1, '', '', '', 1, 0, 'F', '0', '0', 'system:user:query', '#', 'admin', '2022-10-12 15:10:40', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1001, '用户新增', 100, 2, '', '', '', 1, 0, 'F', '0', '0', 'system:user:add', '#', 'admin', '2022-10-12 15:10:40', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1002, '用户修改', 100, 3, '', '', '', 1, 0, 'F', '0', '0', 'system:user:edit', '#', 'admin', '2022-10-12 15:10:40', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1003, '用户删除', 100, 4, '', '', '', 1, 0, 'F', '0', '0', 'system:user:remove', '#', 'admin', '2022-10-12 15:10:40', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1004, '用户导出', 100, 5, '', '', '', 1, 0, 'F', '0', '0', 'system:user:export', '#', 'admin', '2022-10-12 15:10:40', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1005, '用户导入', 100, 6, '', '', '', 1, 0, 'F', '0', '0', 'system:user:import', '#', 'admin', '2022-10-12 15:10:40', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1006, '重置密码', 100, 7, '', '', '', 1, 0, 'F', '0', '0', 'system:user:resetPwd', '#', 'admin', '2022-10-12 15:10:40', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1007, '角色查询', 101, 1, '', '', '', 1, 0, 'F', '0', '0', 'system:role:query', '#', 'admin', '2022-10-12 15:10:40', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1008, '角色新增', 101, 2, '', '', '', 1, 0, 'F', '0', '0', 'system:role:add', '#', 'admin', '2022-10-12 15:10:40', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1009, '角色修改', 101, 3, '', '', '', 1, 0, 'F', '0', '0', 'system:role:edit', '#', 'admin', '2022-10-12 15:10:40', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1010, '角色删除', 101, 4, '', '', '', 1, 0, 'F', '0', '0', 'system:role:remove', '#', 'admin', '2022-10-12 15:10:40', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1011, '角色导出', 101, 5, '', '', '', 1, 0, 'F', '0', '0', 'system:role:export', '#', 'admin', '2022-10-12 15:10:40', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1012, '菜单查询', 102, 1, '', '', '', 1, 0, 'F', '0', '0', 'system:menu:query', '#', 'admin', '2022-10-12 15:10:40', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1013, '菜单新增', 102, 2, '', '', '', 1, 0, 'F', '0', '0', 'system:menu:add', '#', 'admin', '2022-10-12 15:10:40', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1014, '菜单修改', 102, 3, '', '', '', 1, 0, 'F', '0', '0', 'system:menu:edit', '#', 'admin', '2022-10-12 15:10:40', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1015, '菜单删除', 102, 4, '', '', '', 1, 0, 'F', '0', '0', 'system:menu:remove', '#', 'admin', '2022-10-12 15:10:40', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1016, '部门查询', 103, 1, '', '', '', 1, 0, 'F', '0', '0', 'system:dept:query', '#', 'admin', '2022-10-12 15:10:40', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1017, '部门新增', 103, 2, '', '', '', 1, 0, 'F', '0', '0', 'system:dept:add', '#', 'admin', '2022-10-12 15:10:40', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1018, '部门修改', 103, 3, '', '', '', 1, 0, 'F', '0', '0', 'system:dept:edit', '#', 'admin', '2022-10-12 15:10:40', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1019, '部门删除', 103, 4, '', '', '', 1, 0, 'F', '0', '0', 'system:dept:remove', '#', 'admin', '2022-10-12 15:10:40', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1020, '岗位查询', 104, 1, '', '', '', 1, 0, 'F', '0', '0', 'system:post:query', '#', 'admin', '2022-10-12 15:10:40', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1021, '岗位新增', 104, 2, '', '', '', 1, 0, 'F', '0', '0', 'system:post:add', '#', 'admin', '2022-10-12 15:10:40', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1022, '岗位修改', 104, 3, '', '', '', 1, 0, 'F', '0', '0', 'system:post:edit', '#', 'admin', '2022-10-12 15:10:40', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1023, '岗位删除', 104, 4, '', '', '', 1, 0, 'F', '0', '0', 'system:post:remove', '#', 'admin', '2022-10-12 15:10:40', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1024, '岗位导出', 104, 5, '', '', '', 1, 0, 'F', '0', '0', 'system:post:export', '#', 'admin', '2022-10-12 15:10:40', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1025, '字典查询', 105, 1, '#', '', '', 1, 0, 'F', '0', '0', 'system:dict:query', '#', 'admin', '2022-10-12 15:10:40', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1026, '字典新增', 105, 2, '#', '', '', 1, 0, 'F', '0', '0', 'system:dict:add', '#', 'admin', '2022-10-12 15:10:40', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1027, '字典修改', 105, 3, '#', '', '', 1, 0, 'F', '0', '0', 'system:dict:edit', '#', 'admin', '2022-10-12 15:10:40', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1028, '字典删除', 105, 4, '#', '', '', 1, 0, 'F', '0', '0', 'system:dict:remove', '#', 'admin', '2022-10-12 15:10:40', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1029, '字典导出', 105, 5, '#', '', '', 1, 0, 'F', '0', '0', 'system:dict:export', '#', 'admin', '2022-10-12 15:10:40', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1030, '参数查询', 106, 1, '#', '', '', 1, 0, 'F', '0', '0', 'system:config:query', '#', 'admin', '2022-10-12 15:10:40', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1031, '参数新增', 106, 2, '#', '', '', 1, 0, 'F', '0', '0', 'system:config:add', '#', 'admin', '2022-10-12 15:10:40', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1032, '参数修改', 106, 3, '#', '', '', 1, 0, 'F', '0', '0', 'system:config:edit', '#', 'admin', '2022-10-12 15:10:40', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1033, '参数删除', 106, 4, '#', '', '', 1, 0, 'F', '0', '0', 'system:config:remove', '#', 'admin', '2022-10-12 15:10:40', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1034, '参数导出', 106, 5, '#', '', '', 1, 0, 'F', '0', '0', 'system:config:export', '#', 'admin', '2022-10-12 15:10:40', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1035, '公告查询', 107, 1, '#', '', '', 1, 0, 'F', '0', '0', 'system:notice:query', '#', 'admin', '2022-10-12 15:10:40', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1036, '公告新增', 107, 2, '#', '', '', 1, 0, 'F', '0', '0', 'system:notice:add', '#', 'admin', '2022-10-12 15:10:40', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1037, '公告修改', 107, 3, '#', '', '', 1, 0, 'F', '0', '0', 'system:notice:edit', '#', 'admin', '2022-10-12 15:10:40', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1038, '公告删除', 107, 4, '#', '', '', 1, 0, 'F', '0', '0', 'system:notice:remove', '#', 'admin', '2022-10-12 15:10:40', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1039, '操作查询', 500, 1, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:operlog:query', '#', 'admin', '2022-10-12 15:10:40', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1040, '操作删除', 500, 2, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:operlog:remove', '#', 'admin', '2022-10-12 15:10:40', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1041, '日志导出', 500, 4, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:operlog:export', '#', 'admin', '2022-10-12 15:10:40', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1042, '登录查询', 501, 1, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:logininfor:query', '#', 'admin', '2022-10-12 15:10:40', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1043, '登录删除', 501, 2, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:logininfor:remove', '#', 'admin', '2022-10-12 15:10:40', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1044, '日志导出', 501, 3, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:logininfor:export', '#', 'admin', '2022-10-12 15:10:40', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1045, '在线查询', 109, 1, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:online:query', '#', 'admin', '2022-10-12 15:10:40', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1046, '批量强退', 109, 2, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:online:batchLogout', '#', 'admin', '2022-10-12 15:10:40', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1047, '单条强退', 109, 3, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:online:forceLogout', '#', 'admin', '2022-10-12 15:10:40', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1048, '任务查询', 110, 1, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:job:query', '#', 'admin', '2022-10-12 15:10:40', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1049, '任务新增', 110, 2, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:job:add', '#', 'admin', '2022-10-12 15:10:40', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1050, '任务修改', 110, 3, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:job:edit', '#', 'admin', '2022-10-12 15:10:40', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1051, '任务删除', 110, 4, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:job:remove', '#', 'admin', '2022-10-12 15:10:40', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1052, '状态修改', 110, 5, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:job:changeStatus', '#', 'admin', '2022-10-12 15:10:40', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1053, '任务导出', 110, 7, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:job:export', '#', 'admin', '2022-10-12 15:10:40', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1054, '生成查询', 115, 1, '#', '', '', 1, 0, 'F', '0', '0', 'tool:gen:query', '#', 'admin', '2022-10-12 15:10:40', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1055, '生成修改', 115, 2, '#', '', '', 1, 0, 'F', '0', '0', 'tool:gen:edit', '#', 'admin', '2022-10-12 15:10:40', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1056, '生成删除', 115, 3, '#', '', '', 1, 0, 'F', '0', '0', 'tool:gen:remove', '#', 'admin', '2022-10-12 15:10:40', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1057, '导入代码', 115, 2, '#', '', '', 1, 0, 'F', '0', '0', 'tool:gen:import', '#', 'admin', '2022-10-12 15:10:40', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1058, '预览代码', 115, 4, '#', '', '', 1, 0, 'F', '0', '0', 'tool:gen:preview', '#', 'admin', '2022-10-12 15:10:40', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1059, '生成代码', 115, 5, '#', '', '', 1, 0, 'F', '0', '0', 'tool:gen:code', '#', 'admin', '2022-10-12 15:10:40', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2000, '资产管理', 0, 0, '2131', NULL, NULL, 1, 0, 'M', '0', '0', '', 'dict', 'admin', '2022-10-12 15:25:44', 'admin', '2022-10-12 15:29:04', '');
INSERT INTO `sys_menu` VALUES (2003, '排班管理', 0, 2, 'paiban', NULL, NULL, 1, 0, 'M', '0', '0', '', 'date', 'admin', '2022-10-12 15:35:53', 'admin', '2022-10-12 15:40:50', '');
INSERT INTO `sys_menu` VALUES (2004, '值班表', 2003, 1, 'zhiban', NULL, NULL, 1, 0, 'M', '0', '0', NULL, '#', 'admin', '2022-10-12 15:36:09', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2005, '运维工具', 0, 3, 'yunwei', NULL, NULL, 1, 0, 'M', '0', '0', '', 'druid', 'admin', '2022-10-12 15:37:09', 'admin', '2022-10-12 15:41:05', '');
INSERT INTO `sys_menu` VALUES (2006, '网络监测', 2005, 1, 'wangluo', NULL, NULL, 1, 0, 'M', '0', '0', NULL, '#', 'admin', '2022-10-12 15:37:34', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2007, '技术文档库', 0, 60, 'https://yuanzigsa.top/', NULL, NULL, 0, 0, 'M', '0', '0', '', 'documentation', 'admin', '2022-10-12 15:38:06', 'admin', '2022-10-18 15:58:47', '');
INSERT INTO `sys_menu` VALUES (2099, '交换机管理', 2000, 1, 'switchMan', 'asset/switchMan/index', NULL, 1, 0, 'C', '0', '0', 'asset:switchMan:list', '#', 'admin', '2022-10-18 16:53:33', '', NULL, '交换机管理菜单');
INSERT INTO `sys_menu` VALUES (2100, '交换机管理查询', 2099, 1, '#', '', NULL, 1, 0, 'F', '0', '0', 'asset:switchMan:query', '#', 'admin', '2022-10-18 16:53:33', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2101, '交换机管理新增', 2099, 2, '#', '', NULL, 1, 0, 'F', '0', '0', 'asset:switchMan:add', '#', 'admin', '2022-10-18 16:53:33', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2102, '交换机管理修改', 2099, 3, '#', '', NULL, 1, 0, 'F', '0', '0', 'asset:switchMan:edit', '#', 'admin', '2022-10-18 16:53:33', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2103, '交换机管理删除', 2099, 4, '#', '', NULL, 1, 0, 'F', '0', '0', 'asset:switchMan:remove', '#', 'admin', '2022-10-18 16:53:33', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2104, '交换机管理导出', 2099, 5, '#', '', NULL, 1, 0, 'F', '0', '0', 'asset:switchMan:export', '#', 'admin', '2022-10-18 16:53:33', '', NULL, '');

-- ----------------------------
-- Table structure for sys_notice
-- ----------------------------
DROP TABLE IF EXISTS `sys_notice`;
CREATE TABLE `sys_notice`  (
  `notice_id` int NOT NULL AUTO_INCREMENT COMMENT '公告ID',
  `notice_title` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '公告标题',
  `notice_type` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '公告类型（1通知 2公告）',
  `notice_content` longblob NULL COMMENT '公告内容',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '0' COMMENT '公告状态（0正常 1关闭）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`notice_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '通知公告表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_notice
-- ----------------------------
INSERT INTO `sys_notice` VALUES (10, 'test', '1', 0x3C703E32303232E5B9B43130E69C883135E697A531303A35333A30323C2F703E, '0', 'admin', '2022-10-15 10:53:09', '', NULL, NULL);

-- ----------------------------
-- Table structure for sys_oper_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_oper_log`;
CREATE TABLE `sys_oper_log`  (
  `oper_id` bigint NOT NULL AUTO_INCREMENT COMMENT '日志主键',
  `title` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '模块标题',
  `business_type` int NULL DEFAULT 0 COMMENT '业务类型（0其它 1新增 2修改 3删除）',
  `method` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '方法名称',
  `request_method` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '请求方式',
  `operator_type` int NULL DEFAULT 0 COMMENT '操作类别（0其它 1后台用户 2手机端用户）',
  `oper_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '操作人员',
  `dept_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '部门名称',
  `oper_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '请求URL',
  `oper_ip` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '主机地址',
  `oper_location` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '操作地点',
  `oper_param` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '请求参数',
  `json_result` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '返回参数',
  `status` int NULL DEFAULT 0 COMMENT '操作状态（0正常 1异常）',
  `error_msg` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '错误消息',
  `oper_time` datetime NULL DEFAULT NULL COMMENT '操作时间',
  PRIMARY KEY (`oper_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 446 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '操作日志记录' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_oper_log
-- ----------------------------
INSERT INTO `sys_oper_log` VALUES (100, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', NULL, '/system/menu/4', '127.0.0.1', '内网IP', '{menuId=4}', '{\"msg\":\"菜单已分配,不允许删除\",\"code\":500}', 0, NULL, '2022-10-12 15:22:49');
INSERT INTO `sys_oper_log` VALUES (101, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', NULL, '/system/menu/4', '127.0.0.1', '内网IP', '{menuId=4}', '{\"msg\":\"菜单已分配,不允许删除\",\"code\":500}', 0, NULL, '2022-10-12 15:23:03');
INSERT INTO `sys_oper_log` VALUES (102, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', NULL, '/system/menu/4', '127.0.0.1', '内网IP', '{menuId=4}', '{\"msg\":\"菜单已分配,不允许删除\",\"code\":500}', 0, NULL, '2022-10-12 15:24:43');
INSERT INTO `sys_oper_log` VALUES (103, '菜单管理', 1, 'com.ruoyi.web.controller.system.SysMenuController.add()', 'POST', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"createBy\":\"admin\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuName\":\"资产管理\",\"menuType\":\"M\",\"orderNum\":0,\"params\":{},\"parentId\":0,\"path\":\"2131\",\"status\":\"0\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-10-12 15:25:44');
INSERT INTO `sys_oper_log` VALUES (104, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"createTime\":\"2022-10-12 15:25:44\",\"icon\":\"dict\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2000,\"menuName\":\"资产管理\",\"menuType\":\"M\",\"orderNum\":0,\"params\":{},\"parentId\":0,\"path\":\"2131\",\"perms\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-10-12 15:26:55');
INSERT INTO `sys_oper_log` VALUES (105, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"createTime\":\"2022-10-12 15:10:40\",\"icon\":\"system\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":1,\"menuName\":\"系统管理\",\"menuType\":\"M\",\"orderNum\":10,\"params\":{},\"parentId\":0,\"path\":\"system\",\"perms\":\"\",\"query\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-10-12 15:28:03');
INSERT INTO `sys_oper_log` VALUES (106, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"createTime\":\"2022-10-12 15:10:40\",\"icon\":\"monitor\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2,\"menuName\":\"系统监控\",\"menuType\":\"M\",\"orderNum\":11,\"params\":{},\"parentId\":0,\"path\":\"monitor\",\"perms\":\"\",\"query\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-10-12 15:28:14');
INSERT INTO `sys_oper_log` VALUES (107, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"createTime\":\"2022-10-12 15:10:40\",\"icon\":\"tool\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":3,\"menuName\":\"系统工具\",\"menuType\":\"M\",\"orderNum\":12,\"params\":{},\"parentId\":0,\"path\":\"tool\",\"perms\":\"\",\"query\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-10-12 15:28:23');
INSERT INTO `sys_oper_log` VALUES (108, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"createTime\":\"2022-10-12 15:25:44\",\"icon\":\"dict\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2000,\"menuName\":\"资产管理\",\"menuType\":\"C\",\"orderNum\":0,\"params\":{},\"parentId\":0,\"path\":\"2131\",\"perms\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-10-12 15:28:40');
INSERT INTO `sys_oper_log` VALUES (109, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"createTime\":\"2022-10-12 15:25:44\",\"icon\":\"dict\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2000,\"menuName\":\"资产管理\",\"menuType\":\"M\",\"orderNum\":0,\"params\":{},\"parentId\":0,\"path\":\"2131\",\"perms\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-10-12 15:29:04');
INSERT INTO `sys_oper_log` VALUES (110, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"createTime\":\"2022-10-12 15:10:40\",\"icon\":\"guide\",\"isCache\":\"0\",\"isFrame\":\"0\",\"menuId\":4,\"menuName\":\"若依官网\",\"menuType\":\"M\",\"orderNum\":50,\"params\":{},\"parentId\":0,\"path\":\"http://ruoyi.vip\",\"perms\":\"\",\"query\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-10-12 15:32:24');
INSERT INTO `sys_oper_log` VALUES (111, '菜单管理', 1, 'com.ruoyi.web.controller.system.SysMenuController.add()', 'POST', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"createBy\":\"admin\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuName\":\"上联IP资源\",\"menuType\":\"M\",\"orderNum\":1,\"params\":{},\"parentId\":2000,\"path\":\"shanglian\",\"status\":\"0\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-10-12 15:33:24');
INSERT INTO `sys_oper_log` VALUES (112, '菜单管理', 1, 'com.ruoyi.web.controller.system.SysMenuController.add()', 'POST', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"createBy\":\"admin\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuName\":\"客户IP资源\",\"menuType\":\"M\",\"orderNum\":2,\"params\":{},\"parentId\":2000,\"path\":\"kehu\",\"status\":\"0\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-10-12 15:33:45');
INSERT INTO `sys_oper_log` VALUES (113, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"createTime\":\"2022-10-12 15:33:24\",\"icon\":\"icon\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2001,\"menuName\":\"上联IP资源\",\"menuType\":\"M\",\"orderNum\":1,\"params\":{},\"parentId\":2000,\"path\":\"shanglian\",\"perms\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-10-12 15:34:24');
INSERT INTO `sys_oper_log` VALUES (114, '菜单管理', 1, 'com.ruoyi.web.controller.system.SysMenuController.add()', 'POST', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"createBy\":\"admin\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuName\":\"排班管理\",\"menuType\":\"M\",\"orderNum\":2,\"params\":{},\"parentId\":0,\"path\":\"paiban\",\"status\":\"0\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-10-12 15:35:53');
INSERT INTO `sys_oper_log` VALUES (115, '菜单管理', 1, 'com.ruoyi.web.controller.system.SysMenuController.add()', 'POST', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"createBy\":\"admin\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuName\":\"值班表\",\"menuType\":\"M\",\"orderNum\":1,\"params\":{},\"parentId\":2003,\"path\":\"zhiban\",\"status\":\"0\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-10-12 15:36:09');
INSERT INTO `sys_oper_log` VALUES (116, '菜单管理', 1, 'com.ruoyi.web.controller.system.SysMenuController.add()', 'POST', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"createBy\":\"admin\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuName\":\"运维工具\",\"menuType\":\"M\",\"orderNum\":3,\"params\":{},\"parentId\":0,\"path\":\"yunwei\",\"status\":\"0\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-10-12 15:37:09');
INSERT INTO `sys_oper_log` VALUES (117, '菜单管理', 1, 'com.ruoyi.web.controller.system.SysMenuController.add()', 'POST', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"createBy\":\"admin\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuName\":\"网络监测\",\"menuType\":\"M\",\"orderNum\":1,\"params\":{},\"parentId\":2005,\"path\":\"wangluo\",\"status\":\"0\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-10-12 15:37:34');
INSERT INTO `sys_oper_log` VALUES (118, '菜单管理', 1, 'com.ruoyi.web.controller.system.SysMenuController.add()', 'POST', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"createBy\":\"admin\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuName\":\"技术文档库\",\"menuType\":\"M\",\"orderNum\":4,\"params\":{},\"parentId\":0,\"path\":\"jishu\",\"status\":\"0\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-10-12 15:38:06');
INSERT INTO `sys_oper_log` VALUES (119, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"createTime\":\"2022-10-12 15:38:06\",\"icon\":\"clipboard\",\"isCache\":\"0\",\"isFrame\":\"0\",\"menuId\":2007,\"menuName\":\"技术文档库\",\"menuType\":\"M\",\"orderNum\":4,\"params\":{},\"parentId\":0,\"path\":\"jishu\",\"perms\":\"\",\"status\":\"0\",\"visible\":\"0\"}', '{\"msg\":\"修改菜单\'技术文档库\'失败，地址必须以http(s)://开头\",\"code\":500}', 0, NULL, '2022-10-12 15:38:53');
INSERT INTO `sys_oper_log` VALUES (120, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"createTime\":\"2022-10-12 15:38:06\",\"icon\":\"clipboard\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2007,\"menuName\":\"技术文档库\",\"menuType\":\"M\",\"orderNum\":4,\"params\":{},\"parentId\":0,\"path\":\"jishu\",\"perms\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-10-12 15:39:04');
INSERT INTO `sys_oper_log` VALUES (121, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"createTime\":\"2022-10-12 15:38:06\",\"icon\":\"clipboard\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2007,\"menuName\":\"技术文档库\",\"menuType\":\"M\",\"orderNum\":60,\"params\":{},\"parentId\":0,\"path\":\"jishu\",\"perms\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-10-12 15:39:42');
INSERT INTO `sys_oper_log` VALUES (122, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"createTime\":\"2022-10-12 15:37:09\",\"icon\":\"build\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2005,\"menuName\":\"运维工具\",\"menuType\":\"M\",\"orderNum\":3,\"params\":{},\"parentId\":0,\"path\":\"yunwei\",\"perms\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-10-12 15:40:25');
INSERT INTO `sys_oper_log` VALUES (123, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"createTime\":\"2022-10-12 15:35:53\",\"icon\":\"date\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2003,\"menuName\":\"排班管理\",\"menuType\":\"M\",\"orderNum\":2,\"params\":{},\"parentId\":0,\"path\":\"paiban\",\"perms\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-10-12 15:40:50');
INSERT INTO `sys_oper_log` VALUES (124, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"createTime\":\"2022-10-12 15:37:09\",\"icon\":\"druid\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2005,\"menuName\":\"运维工具\",\"menuType\":\"M\",\"orderNum\":3,\"params\":{},\"parentId\":0,\"path\":\"yunwei\",\"perms\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-10-12 15:41:05');
INSERT INTO `sys_oper_log` VALUES (125, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"createTime\":\"2022-10-12 15:38:06\",\"icon\":\"documentation\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2007,\"menuName\":\"技术文档库\",\"menuType\":\"M\",\"orderNum\":60,\"params\":{},\"parentId\":0,\"path\":\"jishu\",\"perms\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-10-12 15:41:45');
INSERT INTO `sys_oper_log` VALUES (126, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"createTime\":\"2022-10-12 15:33:45\",\"icon\":\"icon\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2002,\"menuName\":\"客户IP资源\",\"menuType\":\"M\",\"orderNum\":2,\"params\":{},\"parentId\":2000,\"path\":\"kehu\",\"perms\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-10-13 15:02:06');
INSERT INTO `sys_oper_log` VALUES (127, '菜单管理', 1, 'com.ruoyi.web.controller.system.SysMenuController.add()', 'POST', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"createBy\":\"admin\",\"icon\":\"dict\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuName\":\"交换机管理\",\"menuType\":\"M\",\"orderNum\":3,\"params\":{},\"parentId\":2000,\"path\":\"jiaohuanji\",\"status\":\"0\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-10-13 15:13:48');
INSERT INTO `sys_oper_log` VALUES (128, '代码生成', 6, 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', NULL, '/tool/gen/importTable', '127.0.0.1', '内网IP', 'zc_jhj', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-10-13 15:17:38');
INSERT INTO `sys_oper_log` VALUES (129, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', NULL, '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{}', NULL, 0, NULL, '2022-10-13 15:17:48');
INSERT INTO `sys_oper_log` VALUES (130, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', NULL, '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"jhj\",\"className\":\"ZcJhj\",\"columns\":[{\"capJavaField\":\"Sn\",\"columnId\":1,\"columnName\":\"SN\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"createTime\":\"2022-10-13 15:17:37\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"javaField\":\"sn\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":1,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"设备类型\",\"columnId\":2,\"columnName\":\"设备类型\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"createTime\":\"2022-10-13 15:17:37\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"javaField\":\"设备类型\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":false,\"sort\":2,\"superColumn\":false,\"tableId\":1,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"设备型号\",\"columnId\":3,\"columnName\":\"设备型号\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"createTime\":\"2022-10-13 15:17:37\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"javaField\":\"设备型号\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":false,\"sort\":3,\"superColumn\":false,\"tableId\":1,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"管理ip\",\"columnId\":4,\"columnName\":\"管理IP\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"createTime\":\"2022-10-13 15:17:37\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"javaField\":\"管理ip\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":false,\"sort\":4,\"superColumn\":false,\"tableId\":1,\"', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-10-13 15:41:49');
INSERT INTO `sys_oper_log` VALUES (131, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', NULL, '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"jhj\",\"className\":\"ZcJhj\",\"columns\":[{\"capJavaField\":\"Sn\",\"columnId\":1,\"columnName\":\"SN\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"createTime\":\"2022-10-13 15:17:37\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"javaField\":\"sn\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":1,\"updateBy\":\"\",\"updateTime\":\"2022-10-13 15:41:49\",\"usableColumn\":false},{\"capJavaField\":\"设备类型\",\"columnId\":2,\"columnName\":\"设备类型\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"createTime\":\"2022-10-13 15:17:37\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"javaField\":\"设备类型\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":false,\"sort\":2,\"superColumn\":false,\"tableId\":1,\"updateBy\":\"\",\"updateTime\":\"2022-10-13 15:41:49\",\"usableColumn\":false},{\"capJavaField\":\"设备型号\",\"columnId\":3,\"columnName\":\"设备型号\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"createTime\":\"2022-10-13 15:17:37\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"javaField\":\"设备型号\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":false,\"sort\":3,\"superColumn\":false,\"tableId\":1,\"updateBy\":\"\",\"updateTime\":\"2022-10-13 15:41:49\",\"usableColumn\":false},{\"capJavaField\":\"管理ip\",\"columnId\":4,\"columnName\":\"管理IP\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"createTime\":\"2022-10-13 15:17:37\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"javaField\":\"管理ip\",\"javaType\":\"String\",\"list\":true,\"params', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-10-13 15:42:23');
INSERT INTO `sys_oper_log` VALUES (132, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', NULL, '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"jhj\",\"className\":\"ZcJhj\",\"columns\":[{\"capJavaField\":\"Sn\",\"columnId\":1,\"columnName\":\"SN\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"createTime\":\"2022-10-13 15:17:37\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"javaField\":\"sn\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":1,\"updateBy\":\"\",\"updateTime\":\"2022-10-13 15:42:23\",\"usableColumn\":false},{\"capJavaField\":\"设备类型\",\"columnId\":2,\"columnName\":\"设备类型\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"createTime\":\"2022-10-13 15:17:37\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"javaField\":\"设备类型\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":false,\"sort\":2,\"superColumn\":false,\"tableId\":1,\"updateBy\":\"\",\"updateTime\":\"2022-10-13 15:42:23\",\"usableColumn\":false},{\"capJavaField\":\"设备型号\",\"columnId\":3,\"columnName\":\"设备型号\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"createTime\":\"2022-10-13 15:17:37\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"javaField\":\"设备型号\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":false,\"sort\":3,\"superColumn\":false,\"tableId\":1,\"updateBy\":\"\",\"updateTime\":\"2022-10-13 15:42:23\",\"usableColumn\":false},{\"capJavaField\":\"管理ip\",\"columnId\":4,\"columnName\":\"管理IP\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"createTime\":\"2022-10-13 15:17:37\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"javaField\":\"管理ip\",\"javaType\":\"String\",\"list\":true,\"params', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-10-13 15:43:53');
INSERT INTO `sys_oper_log` VALUES (133, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', NULL, '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{}', NULL, 0, NULL, '2022-10-13 15:46:49');
INSERT INTO `sys_oper_log` VALUES (134, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"jhj/jhj/index\",\"createTime\":\"2022-10-13 15:13:48\",\"icon\":\"dict\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2008,\"menuName\":\"交换机管理\",\"menuType\":\"C\",\"orderNum\":3,\"params\":{},\"parentId\":2000,\"path\":\"jhj\",\"perms\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-10-13 16:18:07');
INSERT INTO `sys_oper_log` VALUES (135, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', NULL, '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"jHj\",\"className\":\"ZcJhj\",\"columns\":[{\"capJavaField\":\"Sn\",\"columnId\":1,\"columnName\":\"SN\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"createTime\":\"2022-10-13 15:17:37\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"javaField\":\"sn\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":1,\"updateBy\":\"\",\"updateTime\":\"2022-10-13 15:43:53\",\"usableColumn\":false},{\"capJavaField\":\"设备类型\",\"columnId\":2,\"columnName\":\"设备类型\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"createTime\":\"2022-10-13 15:17:37\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"javaField\":\"设备类型\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":false,\"sort\":2,\"superColumn\":false,\"tableId\":1,\"updateBy\":\"\",\"updateTime\":\"2022-10-13 15:43:53\",\"usableColumn\":false},{\"capJavaField\":\"设备型号\",\"columnId\":3,\"columnName\":\"设备型号\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"createTime\":\"2022-10-13 15:17:37\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"javaField\":\"设备型号\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":false,\"sort\":3,\"superColumn\":false,\"tableId\":1,\"updateBy\":\"\",\"updateTime\":\"2022-10-13 15:43:53\",\"usableColumn\":false},{\"capJavaField\":\"管理ip\",\"columnId\":4,\"columnName\":\"管理IP\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"createTime\":\"2022-10-13 15:17:37\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"javaField\":\"管理ip\",\"javaType\":\"String\",\"list\":true,\"params', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-10-13 16:38:04');
INSERT INTO `sys_oper_log` VALUES (136, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', NULL, '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{}', NULL, 0, NULL, '2022-10-13 16:38:07');
INSERT INTO `sys_oper_log` VALUES (137, '交换机管理', 2, 'com.ruoyi.ZcJhjController.edit()', 'PUT', 1, 'admin', NULL, '/jhj/jhj', '127.0.0.1', '内网IP', '{\"params\":{},\"sn\":\"3221312312\",\"端口互联\":\"/profile/upload/2022/10/13/四级作文_20221013164659A001.txt\",\"管理ip\":\"321312\",\"设备型号\":\"21312\",\"设备类型\":\"华为\"}', '{\"msg\":\"操作失败\",\"code\":500}', 0, NULL, '2022-10-13 16:48:47');
INSERT INTO `sys_oper_log` VALUES (138, '交换机管理', 2, 'com.ruoyi.ZcJhjController.edit()', 'PUT', 1, 'admin', NULL, '/jhj/jhj', '127.0.0.1', '内网IP', '{\"params\":{},\"sn\":\"3221312312\",\"端口互联\":\"/profile/upload/2022/10/13/四级作文_20221013164659A001.txt\",\"管理ip\":\"321312\",\"设备型号\":\"21312\",\"设备类型\":\"华为\"}', '{\"msg\":\"操作失败\",\"code\":500}', 0, NULL, '2022-10-13 16:48:48');
INSERT INTO `sys_oper_log` VALUES (139, '交换机管理', 2, 'com.ruoyi.ZcJhjController.edit()', 'PUT', 1, 'admin', NULL, '/jhj/jhj', '127.0.0.1', '内网IP', '{\"params\":{},\"sn\":\"3221312312\",\"端口互联\":\"/profile/upload/2022/10/13/四级作文_20221013164659A001.txt\",\"管理ip\":\"321312\",\"设备型号\":\"21312\",\"设备类型\":\"华为\"}', '{\"msg\":\"操作失败\",\"code\":500}', 0, NULL, '2022-10-13 16:48:50');
INSERT INTO `sys_oper_log` VALUES (140, '交换机管理', 5, 'com.ruoyi.ZcJhjController.export()', 'POST', 1, 'admin', NULL, '/jhj/jhj/export', '127.0.0.1', '内网IP', '{\"params\":{}}', NULL, 0, NULL, '2022-10-13 16:49:07');
INSERT INTO `sys_oper_log` VALUES (141, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', NULL, '/system/menu/4', '127.0.0.1', '内网IP', '{menuId=4}', '{\"msg\":\"菜单已分配,不允许删除\",\"code\":500}', 0, NULL, '2022-10-13 16:49:59');
INSERT INTO `sys_oper_log` VALUES (142, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"createTime\":\"2022-10-12 15:10:40\",\"icon\":\"guide\",\"isCache\":\"0\",\"isFrame\":\"0\",\"menuId\":4,\"menuName\":\"若依官网\",\"menuType\":\"M\",\"orderNum\":50,\"params\":{},\"parentId\":0,\"path\":\"http://ruoyi.vip\",\"perms\":\"\",\"query\":\"\",\"status\":\"1\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-10-13 16:50:16');
INSERT INTO `sys_oper_log` VALUES (143, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', NULL, '/system/menu/4', '127.0.0.1', '内网IP', '{menuId=4}', '{\"msg\":\"菜单已分配,不允许删除\",\"code\":500}', 0, NULL, '2022-10-13 16:50:22');
INSERT INTO `sys_oper_log` VALUES (144, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"createTime\":\"2022-10-12 15:10:40\",\"icon\":\"guide\",\"isCache\":\"0\",\"isFrame\":\"0\",\"menuId\":4,\"menuName\":\"若依官网\",\"menuType\":\"C\",\"orderNum\":50,\"params\":{},\"path\":\"http://ruoyi.vip\",\"perms\":\"\",\"query\":\"\",\"status\":\"1\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-10-13 16:51:09');
INSERT INTO `sys_oper_log` VALUES (145, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', NULL, '/system/menu/4', '127.0.0.1', '内网IP', '{menuId=4}', '{\"msg\":\"菜单已分配,不允许删除\",\"code\":500}', 0, NULL, '2022-10-13 16:51:13');
INSERT INTO `sys_oper_log` VALUES (146, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"createTime\":\"2022-10-12 15:10:40\",\"icon\":\"guide\",\"isCache\":\"0\",\"isFrame\":\"0\",\"menuId\":4,\"menuName\":\"若依官网\",\"menuType\":\"C\",\"orderNum\":50,\"params\":{},\"path\":\"http://ruoyi.vip\",\"perms\":\"\",\"query\":\"\",\"status\":\"1\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-10-13 16:51:32');
INSERT INTO `sys_oper_log` VALUES (147, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', NULL, '/system/menu/4', '127.0.0.1', '内网IP', '{menuId=4}', '{\"msg\":\"菜单已分配,不允许删除\",\"code\":500}', 0, NULL, '2022-10-13 16:51:41');
INSERT INTO `sys_oper_log` VALUES (148, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', NULL, '/system/menu/4', '127.0.0.1', '内网IP', '{menuId=4}', '{\"msg\":\"菜单已分配,不允许删除\",\"code\":500}', 0, NULL, '2022-10-13 16:51:58');
INSERT INTO `sys_oper_log` VALUES (149, '字典类型', 5, 'com.ruoyi.web.controller.system.SysDictTypeController.export()', 'POST', 1, 'admin', NULL, '/system/dict/type/export', '127.0.0.1', '内网IP', '{\"params\":{}}', NULL, 0, NULL, '2022-10-13 16:55:19');
INSERT INTO `sys_oper_log` VALUES (150, '字典类型', 9, 'com.ruoyi.web.controller.system.SysDictTypeController.refreshCache()', 'DELETE', 1, 'admin', NULL, '/system/dict/type/refreshCache', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-10-13 16:55:48');
INSERT INTO `sys_oper_log` VALUES (151, '代码生成', 3, 'com.ruoyi.generator.controller.GenController.remove()', 'DELETE', 1, 'admin', NULL, '/tool/gen/1', '127.0.0.1', '内网IP', '{tableIds=1}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-10-13 17:09:10');
INSERT INTO `sys_oper_log` VALUES (152, '代码生成', 6, 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', NULL, '/tool/gen/importTable', '127.0.0.1', '内网IP', 'zc_jhj', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-10-13 17:09:15');
INSERT INTO `sys_oper_log` VALUES (153, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', NULL, '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"jHj\",\"className\":\"ZcJhj\",\"columns\":[{\"capJavaField\":\"Sn\",\"columnComment\":\"SN编号\",\"columnId\":9,\"columnName\":\"sn\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"createTime\":\"2022-10-13 17:09:15\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"javaField\":\"sn\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":2,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"DeviceType\",\"columnComment\":\"设备类型\",\"columnId\":10,\"columnName\":\"device_type\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"createTime\":\"2022-10-13 17:09:15\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"javaField\":\"deviceType\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":false,\"sort\":2,\"superColumn\":false,\"tableId\":2,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"DeviceModel\",\"columnComment\":\"设备型号\",\"columnId\":11,\"columnName\":\"device_model\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"createTime\":\"2022-10-13 17:09:15\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"javaField\":\"deviceModel\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":false,\"sort\":3,\"superColumn\":false,\"tableId\":2,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"ManegeIp\",\"columnComment\":\"管理IP\",\"columnId\":12,\"columnName\":\"manege_IP\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"createTime\":\"2022-10-13 17:09:15\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"javaField\":\"maneg', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-10-13 17:10:58');
INSERT INTO `sys_oper_log` VALUES (154, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', NULL, '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{}', NULL, 0, NULL, '2022-10-13 17:11:02');
INSERT INTO `sys_oper_log` VALUES (155, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"system/jHj/index\",\"createTime\":\"2022-10-13 15:13:48\",\"icon\":\"dict\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2008,\"menuName\":\"交换机管理\",\"menuType\":\"C\",\"orderNum\":3,\"params\":{},\"parentId\":2000,\"path\":\"jhj\",\"perms\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-10-13 17:16:30');
INSERT INTO `sys_oper_log` VALUES (156, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"system/jHj/index\",\"createTime\":\"2022-10-13 15:13:48\",\"icon\":\"dict\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2008,\"menuName\":\"交换机管理\",\"menuType\":\"C\",\"orderNum\":3,\"params\":{},\"parentId\":2000,\"path\":\"jHj\",\"perms\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-10-13 17:19:01');
INSERT INTO `sys_oper_log` VALUES (157, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', NULL, '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"switchManage\",\"className\":\"ZcJhj\",\"columns\":[{\"capJavaField\":\"Sn\",\"columnComment\":\"SN编号\",\"columnId\":9,\"columnName\":\"sn\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"createTime\":\"2022-10-13 17:09:15\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"javaField\":\"sn\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":2,\"updateBy\":\"\",\"updateTime\":\"2022-10-13 17:10:58\",\"usableColumn\":false},{\"capJavaField\":\"DeviceType\",\"columnComment\":\"设备类型\",\"columnId\":10,\"columnName\":\"device_type\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"createTime\":\"2022-10-13 17:09:15\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"javaField\":\"deviceType\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":false,\"sort\":2,\"superColumn\":false,\"tableId\":2,\"updateBy\":\"\",\"updateTime\":\"2022-10-13 17:10:58\",\"usableColumn\":false},{\"capJavaField\":\"DeviceModel\",\"columnComment\":\"设备型号\",\"columnId\":11,\"columnName\":\"device_model\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"createTime\":\"2022-10-13 17:09:15\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"javaField\":\"deviceModel\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":false,\"sort\":3,\"superColumn\":false,\"tableId\":2,\"updateBy\":\"\",\"updateTime\":\"2022-10-13 17:10:58\",\"usableColumn\":false},{\"capJavaField\":\"ManegeIp\",\"columnComment\":\"管理IP\",\"columnId\":12,\"columnName\":\"manege_IP\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"createTime\":\"2022-10-13 17:09:15\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"i', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-10-13 17:23:03');
INSERT INTO `sys_oper_log` VALUES (158, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', NULL, '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{}', NULL, 0, NULL, '2022-10-13 17:23:06');
INSERT INTO `sys_oper_log` VALUES (159, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', NULL, '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{}', NULL, 0, NULL, '2022-10-13 17:23:06');
INSERT INTO `sys_oper_log` VALUES (160, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"switch/switchManage/index\",\"createTime\":\"2022-10-13 15:13:48\",\"icon\":\"dict\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2008,\"menuName\":\"交换机管理\",\"menuType\":\"C\",\"orderNum\":3,\"params\":{},\"parentId\":2000,\"path\":\"switch\",\"perms\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-10-13 17:28:53');
INSERT INTO `sys_oper_log` VALUES (161, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"switch/switchManage/index\",\"createTime\":\"2022-10-13 15:13:48\",\"icon\":\"dict\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2008,\"menuName\":\"交换机管理\",\"menuType\":\"C\",\"orderNum\":3,\"params\":{},\"parentId\":2000,\"path\":\"switchManage\",\"perms\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-10-13 17:29:25');
INSERT INTO `sys_oper_log` VALUES (162, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"switch/switchManage/index\",\"createTime\":\"2022-10-13 15:13:48\",\"icon\":\"dict\",\"isCache\":\"1\",\"isFrame\":\"1\",\"menuId\":2008,\"menuName\":\"交换机管理\",\"menuType\":\"C\",\"orderNum\":3,\"params\":{},\"parentId\":2000,\"path\":\"switchManage\",\"perms\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-10-13 17:31:41');
INSERT INTO `sys_oper_log` VALUES (163, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', NULL, '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"swManage\",\"className\":\"ZcJhj\",\"columns\":[{\"capJavaField\":\"Sn\",\"columnComment\":\"SN编号\",\"columnId\":9,\"columnName\":\"sn\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"createTime\":\"2022-10-13 17:09:15\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"javaField\":\"sn\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":2,\"updateBy\":\"\",\"updateTime\":\"2022-10-13 17:23:03\",\"usableColumn\":false},{\"capJavaField\":\"DeviceType\",\"columnComment\":\"设备类型\",\"columnId\":10,\"columnName\":\"device_type\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"createTime\":\"2022-10-13 17:09:15\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"javaField\":\"deviceType\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":false,\"sort\":2,\"superColumn\":false,\"tableId\":2,\"updateBy\":\"\",\"updateTime\":\"2022-10-13 17:23:03\",\"usableColumn\":false},{\"capJavaField\":\"DeviceModel\",\"columnComment\":\"设备型号\",\"columnId\":11,\"columnName\":\"device_model\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"createTime\":\"2022-10-13 17:09:15\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"javaField\":\"deviceModel\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":false,\"sort\":3,\"superColumn\":false,\"tableId\":2,\"updateBy\":\"\",\"updateTime\":\"2022-10-13 17:23:03\",\"usableColumn\":false},{\"capJavaField\":\"ManegeIp\",\"columnComment\":\"管理IP\",\"columnId\":12,\"columnName\":\"manege_IP\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"createTime\":\"2022-10-13 17:09:15\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"inser', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-10-14 10:51:43');
INSERT INTO `sys_oper_log` VALUES (164, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', NULL, '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{}', NULL, 0, NULL, '2022-10-14 10:51:47');
INSERT INTO `sys_oper_log` VALUES (165, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"sw/swManage/index\",\"createTime\":\"2022-10-14 09:58:07\",\"icon\":\"#\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2009,\"menuName\":\"交换机管理\",\"menuType\":\"C\",\"orderNum\":1,\"params\":{},\"parentId\":2000,\"path\":\"swManage\",\"perms\":\"sw:swManage:list\",\"status\":\"0\",\"visible\":\"0\"}', '{\"msg\":\"修改菜单\'交换机管理\'失败，菜单名称已存在\",\"code\":500}', 0, NULL, '2022-10-14 14:20:32');
INSERT INTO `sys_oper_log` VALUES (166, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"sw/swManage/index\",\"createTime\":\"2022-10-14 09:58:07\",\"icon\":\"#\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2009,\"menuName\":\"交换机管理\",\"menuType\":\"C\",\"orderNum\":1,\"params\":{},\"parentId\":2000,\"path\":\"swManage\",\"perms\":\"sw:swManage:list\",\"status\":\"0\",\"visible\":\"0\"}', '{\"msg\":\"修改菜单\'交换机管理\'失败，菜单名称已存在\",\"code\":500}', 0, NULL, '2022-10-14 14:20:49');
INSERT INTO `sys_oper_log` VALUES (167, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"sw/swManage/index\",\"createTime\":\"2022-10-14 09:58:07\",\"icon\":\"#\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2009,\"menuName\":\"交换机管理\",\"menuType\":\"C\",\"orderNum\":1,\"params\":{},\"parentId\":2000,\"path\":\"swManage\",\"perms\":\"sw:swManage:list\",\"status\":\"0\",\"visible\":\"0\"}', '{\"msg\":\"修改菜单\'交换机管理\'失败，菜单名称已存在\",\"code\":500}', 0, NULL, '2022-10-14 14:20:50');
INSERT INTO `sys_oper_log` VALUES (168, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"switch/switchManage/index\",\"createTime\":\"2022-10-14 09:58:07\",\"icon\":\"#\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2009,\"menuName\":\"交换机管理\",\"menuType\":\"C\",\"orderNum\":1,\"params\":{},\"parentId\":2000,\"path\":\"switchManage\",\"perms\":\"switch:switchManage:list\",\"status\":\"0\",\"visible\":\"0\"}', '{\"msg\":\"修改菜单\'交换机管理\'失败，菜单名称已存在\",\"code\":500}', 0, NULL, '2022-10-14 14:21:48');
INSERT INTO `sys_oper_log` VALUES (169, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"switch/switchManage/index\",\"createTime\":\"2022-10-14 09:58:07\",\"icon\":\"#\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2009,\"menuName\":\"交换机管理\",\"menuType\":\"C\",\"orderNum\":1,\"params\":{},\"parentId\":2000,\"path\":\"switchManage\",\"perms\":\"switch:switchManage:list\",\"status\":\"0\",\"visible\":\"0\"}', '{\"msg\":\"修改菜单\'交换机管理\'失败，菜单名称已存在\",\"code\":500}', 0, NULL, '2022-10-14 14:21:59');
INSERT INTO `sys_oper_log` VALUES (170, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"switch/switchManage/index\",\"createTime\":\"2022-10-14 09:58:07\",\"icon\":\"#\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2009,\"menuName\":\"交换机\",\"menuType\":\"C\",\"orderNum\":1,\"params\":{},\"parentId\":2000,\"path\":\"switchManage\",\"perms\":\"switch:switchManage:list\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-10-14 14:23:57');
INSERT INTO `sys_oper_log` VALUES (171, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', NULL, '/system/menu/2009', '127.0.0.1', '内网IP', '{menuId=2009}', '{\"msg\":\"存在子菜单,不允许删除\",\"code\":500}', 0, NULL, '2022-10-14 14:24:28');
INSERT INTO `sys_oper_log` VALUES (172, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"switch/switchManage/index\",\"createTime\":\"2022-10-13 15:13:48\",\"icon\":\"dict\",\"isCache\":\"1\",\"isFrame\":\"1\",\"menuId\":2008,\"menuName\":\"交换机管理\",\"menuType\":\"C\",\"orderNum\":3,\"params\":{},\"parentId\":2000,\"path\":\"switchManage\",\"perms\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-10-14 14:24:39');
INSERT INTO `sys_oper_log` VALUES (173, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"sw/swManage/index\",\"createTime\":\"2022-10-13 15:13:48\",\"icon\":\"dict\",\"isCache\":\"1\",\"isFrame\":\"1\",\"menuId\":2008,\"menuName\":\"交换机管理\",\"menuType\":\"C\",\"orderNum\":3,\"params\":{},\"parentId\":2000,\"path\":\"swManage\",\"perms\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-10-14 14:25:20');
INSERT INTO `sys_oper_log` VALUES (174, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', NULL, '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"swManage\",\"className\":\"ZcJhj\",\"columns\":[{\"capJavaField\":\"Sn\",\"columnComment\":\"SN编号\",\"columnId\":9,\"columnName\":\"sn\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"createTime\":\"2022-10-13 17:09:15\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"javaField\":\"sn\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":2,\"updateBy\":\"\",\"updateTime\":\"2022-10-14 10:51:43\",\"usableColumn\":false},{\"capJavaField\":\"DeviceType\",\"columnComment\":\"设备类型\",\"columnId\":10,\"columnName\":\"device_type\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"createTime\":\"2022-10-13 17:09:15\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"javaField\":\"deviceType\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":false,\"sort\":2,\"superColumn\":false,\"tableId\":2,\"updateBy\":\"\",\"updateTime\":\"2022-10-14 10:51:43\",\"usableColumn\":false},{\"capJavaField\":\"DeviceModel\",\"columnComment\":\"设备型号\",\"columnId\":11,\"columnName\":\"device_model\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"createTime\":\"2022-10-13 17:09:15\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"javaField\":\"deviceModel\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":false,\"sort\":3,\"superColumn\":false,\"tableId\":2,\"updateBy\":\"\",\"updateTime\":\"2022-10-14 10:51:43\",\"usableColumn\":false},{\"capJavaField\":\"ManegeIp\",\"columnComment\":\"管理IP\",\"columnId\":12,\"columnName\":\"manege_IP\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"createTime\":\"2022-10-13 17:09:15\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"inser', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-10-15 10:10:09');
INSERT INTO `sys_oper_log` VALUES (175, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', NULL, '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{}', NULL, 0, NULL, '2022-10-15 10:10:16');
INSERT INTO `sys_oper_log` VALUES (176, '用户管理', 3, 'com.ruoyi.web.controller.system.SysUserController.remove()', 'DELETE', 1, 'admin', NULL, '/system/user/2', '127.0.0.1', '内网IP', '{userIds=2}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-10-15 10:43:40');
INSERT INTO `sys_oper_log` VALUES (177, '用户管理', 1, 'com.ruoyi.web.controller.system.SysUserController.add()', 'POST', 1, 'admin', NULL, '/system/user', '127.0.0.1', '内网IP', '{\"admin\":false,\"createBy\":\"admin\",\"nickName\":\"测试\",\"params\":{},\"password\":\"$2a$10$vJp/yJU1oRo5wMM4rH9iMea7SHC8twB2qYl96dsXMtNfi3IGZVhtW\",\"postIds\":[4],\"roleIds\":[2],\"status\":\"0\",\"userId\":100,\"userName\":\"skyton\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-10-15 10:48:26');
INSERT INTO `sys_oper_log` VALUES (178, '角色管理', 2, 'com.ruoyi.web.controller.system.SysRoleController.edit()', 'PUT', 1, 'admin', NULL, '/system/role', '127.0.0.1', '内网IP', '{\"admin\":false,\"createTime\":\"2022-10-12 15:10:40\",\"dataScope\":\"2\",\"delFlag\":\"0\",\"deptCheckStrictly\":true,\"flag\":false,\"menuCheckStrictly\":true,\"menuIds\":[1,2000,2001,2009,2010,2011,2012,2013,2014,2002,2008,2003,2004,2005,2006,100,1000,1001,1002,1003,1004,1005,1006,101,1007,1008,1009,1010,1011,103,1016,1017,1018,1019,104,1020,1021,1022,1023,1024,105,1025,1026,1027,1028,1029,106,1030,1031,1032,1033,1034,107,1035,1036,1037,1038,108,500,1039,1040,1041,501,1042,1043,1044,2,109,1045,1046,1047,110,1048,1049,1050,1051,1052,1053,111,112,113,3,114,115,1054,1055,1057,1056,1058,1059,116,2007],\"params\":{},\"remark\":\"普通角色\",\"roleId\":2,\"roleKey\":\"common\",\"roleName\":\"普通角色\",\"roleSort\":\"2\",\"status\":\"0\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-10-15 10:49:54');
INSERT INTO `sys_oper_log` VALUES (179, '角色管理', 2, 'com.ruoyi.web.controller.system.SysRoleController.edit()', 'PUT', 1, 'admin', NULL, '/system/role', '127.0.0.1', '内网IP', '{\"admin\":false,\"createTime\":\"2022-10-12 15:10:40\",\"dataScope\":\"2\",\"delFlag\":\"0\",\"deptCheckStrictly\":true,\"flag\":false,\"menuCheckStrictly\":true,\"menuIds\":[1,2000,2001,2009,2010,2011,2012,2013,2014,2002,2008,2003,2004,2005,2006,100,1000,1001,1002,1003,1004,1005,1006,101,1007,1008,1009,1010,1011,103,1016,1017,1018,1019,104,1020,1021,1022,1023,1024,105,1025,1026,1027,1028,1029,106,1030,1031,1032,1033,1034,107,1035,1036,1037,1038,108,500,1039,1040,1041,501,1042,1043,1044,2,109,1045,1046,1047,110,1048,1049,1050,1051,1052,1053,111,112,113,2007],\"params\":{},\"remark\":\"普通角色\",\"roleId\":2,\"roleKey\":\"common\",\"roleName\":\"普通角色\",\"roleSort\":\"2\",\"status\":\"0\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-10-15 10:51:17');
INSERT INTO `sys_oper_log` VALUES (180, '通知公告', 1, 'com.ruoyi.web.controller.system.SysNoticeController.add()', 'POST', 1, 'admin', NULL, '/system/notice', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"noticeContent\":\"<p>2022年10月15日10:53:02</p>\",\"noticeTitle\":\"test\",\"noticeType\":\"1\",\"params\":{},\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-10-15 10:53:09');
INSERT INTO `sys_oper_log` VALUES (181, '通知公告', 3, 'com.ruoyi.web.controller.system.SysNoticeController.remove()', 'DELETE', 1, 'admin', NULL, '/system/notice/1', '127.0.0.1', '内网IP', '{noticeIds=1}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-10-15 10:53:15');
INSERT INTO `sys_oper_log` VALUES (182, '通知公告', 3, 'com.ruoyi.web.controller.system.SysNoticeController.remove()', 'DELETE', 1, 'admin', NULL, '/system/notice/2', '127.0.0.1', '内网IP', '{noticeIds=2}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-10-15 10:53:17');
INSERT INTO `sys_oper_log` VALUES (183, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', NULL, '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"swManage\",\"className\":\"ZcJhj\",\"columns\":[{\"capJavaField\":\"Sn\",\"columnComment\":\"SN编号\",\"columnId\":9,\"columnName\":\"sn\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"createTime\":\"2022-10-13 17:09:15\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"javaField\":\"sn\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":2,\"updateBy\":\"\",\"updateTime\":\"2022-10-15 10:10:09\",\"usableColumn\":false},{\"capJavaField\":\"DeviceType\",\"columnComment\":\"设备类型\",\"columnId\":10,\"columnName\":\"device_type\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"createTime\":\"2022-10-13 17:09:15\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"javaField\":\"deviceType\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":false,\"sort\":2,\"superColumn\":false,\"tableId\":2,\"updateBy\":\"\",\"updateTime\":\"2022-10-15 10:10:09\",\"usableColumn\":false},{\"capJavaField\":\"DeviceModel\",\"columnComment\":\"设备型号\",\"columnId\":11,\"columnName\":\"device_model\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"createTime\":\"2022-10-13 17:09:15\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"javaField\":\"deviceModel\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":false,\"sort\":3,\"superColumn\":false,\"tableId\":2,\"updateBy\":\"\",\"updateTime\":\"2022-10-15 10:10:09\",\"usableColumn\":false},{\"capJavaField\":\"ManegeIp\",\"columnComment\":\"管理IP\",\"columnId\":12,\"columnName\":\"manege_IP\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"createTime\":\"2022-10-13 17:09:15\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"inser', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-10-17 10:38:20');
INSERT INTO `sys_oper_log` VALUES (184, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', NULL, '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{}', NULL, 0, NULL, '2022-10-17 10:38:23');
INSERT INTO `sys_oper_log` VALUES (185, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', NULL, '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{}', NULL, 0, NULL, '2022-10-17 10:43:10');
INSERT INTO `sys_oper_log` VALUES (186, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', NULL, '/system/menu/2015', '127.0.0.1', '内网IP', '{menuId=2015}', '{\"msg\":\"存在子菜单,不允许删除\",\"code\":500}', 0, NULL, '2022-10-17 11:08:03');
INSERT INTO `sys_oper_log` VALUES (187, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', NULL, '/system/menu/2009', '127.0.0.1', '内网IP', '{menuId=2009}', '{\"msg\":\"存在子菜单,不允许删除\",\"code\":500}', 0, NULL, '2022-10-17 11:08:12');
INSERT INTO `sys_oper_log` VALUES (188, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', NULL, '/system/menu/2010', '127.0.0.1', '内网IP', '{menuId=2010}', '{\"msg\":\"菜单已分配,不允许删除\",\"code\":500}', 0, NULL, '2022-10-17 11:08:20');
INSERT INTO `sys_oper_log` VALUES (189, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', NULL, '/system/menu/2008', '127.0.0.1', '内网IP', '{menuId=2008}', '{\"msg\":\"菜单已分配,不允许删除\",\"code\":500}', 0, NULL, '2022-10-17 11:09:53');
INSERT INTO `sys_oper_log` VALUES (190, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"sw/swManage/index\",\"createTime\":\"2022-10-17 10:43:33\",\"icon\":\"dict\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2015,\"menuName\":\"交换机管理\",\"menuType\":\"C\",\"orderNum\":1,\"params\":{},\"parentId\":2000,\"path\":\"swManage\",\"perms\":\"sw:swManage:list\",\"status\":\"0\",\"visible\":\"0\"}', '{\"msg\":\"修改菜单\'交换机管理\'失败，菜单名称已存在\",\"code\":500}', 0, NULL, '2022-10-17 11:10:21');
INSERT INTO `sys_oper_log` VALUES (191, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', NULL, '/system/menu/2008', '127.0.0.1', '内网IP', '{menuId=2008}', '{\"msg\":\"菜单已分配,不允许删除\",\"code\":500}', 0, NULL, '2022-10-17 11:10:38');
INSERT INTO `sys_oper_log` VALUES (192, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"sw/swManage/index\",\"createTime\":\"2022-10-13 15:13:48\",\"icon\":\"dict\",\"isCache\":\"1\",\"isFrame\":\"1\",\"menuId\":2008,\"menuName\":\"交换机管理\",\"menuType\":\"C\",\"orderNum\":3,\"params\":{},\"parentId\":2000,\"path\":\"swManage\",\"perms\":\"\",\"status\":\"1\",\"updateBy\":\"admin\",\"visible\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-10-17 11:10:56');
INSERT INTO `sys_oper_log` VALUES (193, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', NULL, '/system/menu/2008', '127.0.0.1', '内网IP', '{menuId=2008}', '{\"msg\":\"菜单已分配,不允许删除\",\"code\":500}', 0, NULL, '2022-10-17 11:11:00');
INSERT INTO `sys_oper_log` VALUES (194, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"sw/swManage/index\",\"createTime\":\"2022-10-13 15:13:48\",\"icon\":\"dict\",\"isCache\":\"1\",\"isFrame\":\"1\",\"menuId\":2008,\"menuName\":\"交换机管理\",\"menuType\":\"C\",\"orderNum\":3,\"params\":{},\"path\":\"swManage\",\"perms\":\"\",\"status\":\"1\",\"updateBy\":\"admin\",\"visible\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-10-17 11:11:16');
INSERT INTO `sys_oper_log` VALUES (195, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', NULL, '/system/menu/2008', '127.0.0.1', '内网IP', '{menuId=2008}', '{\"msg\":\"菜单已分配,不允许删除\",\"code\":500}', 0, NULL, '2022-10-17 11:11:19');
INSERT INTO `sys_oper_log` VALUES (196, '交换机管理', 2, 'com.ruoyi.system.controller.ZcJhjController.edit()', 'PUT', 1, 'admin', NULL, '/sw/swManage', '127.0.0.1', '内网IP', '{\"businessType\":\"<p>边缘计算</p>\",\"deviceModel\":\"华为5800\",\"deviceType\":\"交换机\",\"manegeIp\":\"192.168.1.1\",\"params\":{},\"sn\":\"GBX3213\"}', '{\"msg\":\"操作失败\",\"code\":500}', 0, NULL, '2022-10-17 11:12:35');
INSERT INTO `sys_oper_log` VALUES (197, '交换机管理', 2, 'com.ruoyi.system.controller.ZcJhjController.edit()', 'PUT', 1, 'admin', NULL, '/sw/swManage', '127.0.0.1', '内网IP', '{\"businessType\":\"<p>边缘计算</p>\",\"deviceModel\":\"华为5800\",\"deviceType\":\"交换机\",\"manegeIp\":\"192.168.1.1\",\"params\":{},\"portInterconnetion\":\"/profile/upload/2022/10/17/MySQL点滴_20221017111301A001.doc\",\"sn\":\"GBX3213\"}', '{\"msg\":\"操作失败\",\"code\":500}', 0, NULL, '2022-10-17 11:13:03');
INSERT INTO `sys_oper_log` VALUES (198, '交换机管理', 2, 'com.ruoyi.system.controller.ZcJhjController.edit()', 'PUT', 1, 'admin', NULL, '/sw/swManage', '127.0.0.1', '内网IP', '{\"businessType\":\"<p><br></p>\",\"deviceModel\":\"3213\",\"deviceType\":\"23132\",\"manegeIp\":\"3123\",\"params\":{},\"sn\":\"121212\"}', '{\"msg\":\"操作失败\",\"code\":500}', 0, NULL, '2022-10-17 11:13:21');
INSERT INTO `sys_oper_log` VALUES (199, '交换机管理', 2, 'com.ruoyi.system.controller.ZcJhjController.edit()', 'PUT', 1, 'admin', NULL, '/sw/swManage', '127.0.0.1', '内网IP', '{\"businessType\":\"<p>31231</p>\",\"deviceModel\":\"3213\",\"deviceType\":\"23132\",\"manegeIp\":\"3123\",\"params\":{},\"sn\":\"121212\"}', '{\"msg\":\"操作失败\",\"code\":500}', 0, NULL, '2022-10-17 11:13:25');
INSERT INTO `sys_oper_log` VALUES (200, '交换机管理', 2, 'com.ruoyi.system.controller.ZcJhjController.edit()', 'PUT', 1, 'admin', NULL, '/sw/swManage', '127.0.0.1', '内网IP', '{\"businessType\":\"<p>31231</p>\",\"deviceModel\":\"3213\",\"deviceType\":\"23132\",\"manegeIp\":\"3123\",\"params\":{},\"sn\":\"121212\"}', '{\"msg\":\"操作失败\",\"code\":500}', 0, NULL, '2022-10-17 11:13:26');
INSERT INTO `sys_oper_log` VALUES (201, '交换机管理', 5, 'com.ruoyi.system.controller.ZcJhjController.export()', 'POST', 1, 'admin', NULL, '/sw/swManage/export', '127.0.0.1', '内网IP', '{\"params\":{}}', NULL, 0, NULL, '2022-10-17 11:13:29');
INSERT INTO `sys_oper_log` VALUES (202, '交换机管理', 2, 'com.ruoyi.system.controller.ZcJhjController.edit()', 'PUT', 1, 'admin', NULL, '/sw/swManage', '127.0.0.1', '内网IP', '{\"businessType\":\"<p>4141</p>\",\"deviceModel\":\"4123412\",\"deviceType\":\"41324123\",\"manegeIp\":\"41234\",\"params\":{},\"sn\":\"43214\"}', '{\"msg\":\"操作失败\",\"code\":500}', 0, NULL, '2022-10-17 11:14:14');
INSERT INTO `sys_oper_log` VALUES (203, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', NULL, '/system/menu/2008', '127.0.0.1', '内网IP', '{menuId=2008}', '{\"msg\":\"菜单已分配,不允许删除\",\"code\":500}', 0, NULL, '2022-10-17 11:16:20');
INSERT INTO `sys_oper_log` VALUES (204, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"\",\"createTime\":\"2022-10-13 15:13:48\",\"icon\":\"dict\",\"isCache\":\"1\",\"isFrame\":\"1\",\"menuId\":2008,\"menuName\":\"交换机管理\",\"menuType\":\"C\",\"orderNum\":3,\"params\":{},\"parentId\":2000,\"path\":\"45\",\"perms\":\"\",\"status\":\"1\",\"updateBy\":\"admin\",\"visible\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-10-17 11:16:35');
INSERT INTO `sys_oper_log` VALUES (205, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', NULL, '/system/menu/2008', '127.0.0.1', '内网IP', '{menuId=2008}', '{\"msg\":\"菜单已分配,不允许删除\",\"code\":500}', 0, NULL, '2022-10-17 11:16:38');
INSERT INTO `sys_oper_log` VALUES (206, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"\",\"createTime\":\"2022-10-13 15:13:48\",\"icon\":\"dict\",\"isCache\":\"1\",\"isFrame\":\"1\",\"menuId\":2008,\"menuName\":\"交换机管理\",\"menuType\":\"C\",\"orderNum\":3,\"params\":{},\"parentId\":0,\"path\":\"45\",\"perms\":\"\",\"status\":\"1\",\"updateBy\":\"admin\",\"visible\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-10-17 11:16:56');
INSERT INTO `sys_oper_log` VALUES (207, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', NULL, '/system/menu/2008', '127.0.0.1', '内网IP', '{menuId=2008}', '{\"msg\":\"菜单已分配,不允许删除\",\"code\":500}', 0, NULL, '2022-10-17 11:17:03');
INSERT INTO `sys_oper_log` VALUES (208, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"\",\"createTime\":\"2022-10-13 15:13:48\",\"icon\":\"dict\",\"isCache\":\"1\",\"isFrame\":\"1\",\"menuId\":2008,\"menuName\":\"交换机管理\",\"menuType\":\"M\",\"orderNum\":3,\"params\":{},\"parentId\":0,\"path\":\"45\",\"perms\":\"\",\"status\":\"1\",\"updateBy\":\"admin\",\"visible\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-10-17 11:17:24');
INSERT INTO `sys_oper_log` VALUES (209, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', NULL, '/system/menu/2008', '127.0.0.1', '内网IP', '{menuId=2008}', '{\"msg\":\"菜单已分配,不允许删除\",\"code\":500}', 0, NULL, '2022-10-17 11:17:28');
INSERT INTO `sys_oper_log` VALUES (210, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"createTime\":\"2022-10-12 15:33:45\",\"icon\":\"icon\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2002,\"menuName\":\"客户IP资源\",\"menuType\":\"M\",\"orderNum\":2,\"params\":{},\"path\":\"kehu\",\"perms\":\"\",\"status\":\"1\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-10-17 11:18:06');
INSERT INTO `sys_oper_log` VALUES (211, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', NULL, '/system/menu/2002', '127.0.0.1', '内网IP', '{menuId=2002}', '{\"msg\":\"菜单已分配,不允许删除\",\"code\":500}', 0, NULL, '2022-10-17 11:18:13');
INSERT INTO `sys_oper_log` VALUES (212, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"createTime\":\"2022-10-12 15:33:45\",\"icon\":\"icon\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2002,\"menuName\":\"客户IP资源\",\"menuType\":\"M\",\"orderNum\":2,\"params\":{},\"parentId\":0,\"path\":\"kehu\",\"perms\":\"\",\"status\":\"1\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-10-17 11:18:25');
INSERT INTO `sys_oper_log` VALUES (213, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"switch/switchManage/index\",\"createTime\":\"2022-10-14 09:58:07\",\"icon\":\"#\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2009,\"menuName\":\"交换机\",\"menuType\":\"F\",\"orderNum\":1,\"params\":{},\"parentId\":0,\"path\":\"switchManage\",\"perms\":\"switch:switchManage:list\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-10-17 11:18:51');
INSERT INTO `sys_oper_log` VALUES (214, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', NULL, '/system/menu/2009', '127.0.0.1', '内网IP', '{menuId=2009}', '{\"msg\":\"存在子菜单,不允许删除\",\"code\":500}', 0, NULL, '2022-10-17 11:19:09');
INSERT INTO `sys_oper_log` VALUES (215, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', NULL, '/system/menu/2010', '127.0.0.1', '内网IP', '{menuId=2010}', '{\"msg\":\"菜单已分配,不允许删除\",\"code\":500}', 0, NULL, '2022-10-17 11:19:15');
INSERT INTO `sys_oper_log` VALUES (216, '角色管理', 2, 'com.ruoyi.web.controller.system.SysRoleController.edit()', 'PUT', 1, 'admin', NULL, '/system/role', '127.0.0.1', '内网IP', '{\"admin\":false,\"createTime\":\"2022-10-12 15:10:40\",\"dataScope\":\"2\",\"delFlag\":\"0\",\"deptCheckStrictly\":true,\"flag\":false,\"menuCheckStrictly\":true,\"menuIds\":[2000,1,2001,2009,2010,2011,2012,2013,2014,2002,2003,2004,2005,2006,2008,100,1000,1001,1002,1003,1004,1005,1006,101,1007,1008,1009,1010,1011,103,1016,1017,1018,1019,104,1020,1021,1022,1023,1024,105,1025,1026,1027,1028,1029,106,1030,1031,1032,1033,1034,107,1035,1036,1037,1038,108,500,1039,1040,1041,501,1042,1043,1044,2,109,1045,1046,1047,110,1048,1049,1050,1051,1052,1053,111,112,113,2007],\"params\":{},\"remark\":\"普通角色\",\"roleId\":2,\"roleKey\":\"common\",\"roleName\":\"普通角色\",\"roleSort\":\"2\",\"status\":\"1\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-10-17 11:20:13');
INSERT INTO `sys_oper_log` VALUES (217, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', NULL, '/system/menu/2002', '127.0.0.1', '内网IP', '{menuId=2002}', '{\"msg\":\"菜单已分配,不允许删除\",\"code\":500}', 0, NULL, '2022-10-17 11:20:21');
INSERT INTO `sys_oper_log` VALUES (218, '角色管理', 2, 'com.ruoyi.web.controller.system.SysRoleController.changeStatus()', 'PUT', 1, 'admin', NULL, '/system/role/changeStatus', '127.0.0.1', '内网IP', '{\"admin\":false,\"deptCheckStrictly\":false,\"flag\":false,\"menuCheckStrictly\":false,\"params\":{},\"roleId\":2,\"status\":\"0\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-10-17 11:20:31');
INSERT INTO `sys_oper_log` VALUES (219, '角色管理', 2, 'com.ruoyi.web.controller.system.SysRoleController.changeStatus()', 'PUT', 1, 'admin', NULL, '/system/role/changeStatus', '127.0.0.1', '内网IP', '{\"admin\":false,\"deptCheckStrictly\":false,\"flag\":false,\"menuCheckStrictly\":false,\"params\":{},\"roleId\":2,\"status\":\"1\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-10-17 11:20:42');
INSERT INTO `sys_oper_log` VALUES (220, '角色管理', 2, 'com.ruoyi.web.controller.system.SysRoleController.edit()', 'PUT', 1, 'admin', NULL, '/system/role', '127.0.0.1', '内网IP', '{\"admin\":false,\"createTime\":\"2022-10-12 15:10:40\",\"dataScope\":\"2\",\"delFlag\":\"0\",\"deptCheckStrictly\":false,\"flag\":false,\"menuCheckStrictly\":false,\"menuIds\":[],\"params\":{},\"remark\":\"普通角色\",\"roleId\":2,\"roleKey\":\"common\",\"roleName\":\"普通角色\",\"roleSort\":\"2\",\"status\":\"1\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-10-17 11:21:00');
INSERT INTO `sys_oper_log` VALUES (221, '角色管理', 2, 'com.ruoyi.web.controller.system.SysRoleController.changeStatus()', 'PUT', 1, 'admin', NULL, '/system/role/changeStatus', '127.0.0.1', '内网IP', '{\"admin\":false,\"deptCheckStrictly\":false,\"flag\":false,\"menuCheckStrictly\":false,\"params\":{},\"roleId\":2,\"status\":\"0\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-10-17 11:21:04');
INSERT INTO `sys_oper_log` VALUES (222, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', NULL, '/system/menu/2008', '127.0.0.1', '内网IP', '{menuId=2008}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-10-17 11:21:12');
INSERT INTO `sys_oper_log` VALUES (223, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', NULL, '/system/menu/2002', '127.0.0.1', '内网IP', '{menuId=2002}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-10-17 11:21:16');
INSERT INTO `sys_oper_log` VALUES (224, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', NULL, '/system/menu/2009', '127.0.0.1', '内网IP', '{menuId=2009}', '{\"msg\":\"存在子菜单,不允许删除\",\"code\":500}', 0, NULL, '2022-10-17 11:21:25');
INSERT INTO `sys_oper_log` VALUES (225, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', NULL, '/system/menu/2010', '127.0.0.1', '内网IP', '{menuId=2010}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-10-17 11:21:37');
INSERT INTO `sys_oper_log` VALUES (226, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', NULL, '/system/menu/2011', '127.0.0.1', '内网IP', '{menuId=2011}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-10-17 11:21:40');
INSERT INTO `sys_oper_log` VALUES (227, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', NULL, '/system/menu/2012', '127.0.0.1', '内网IP', '{menuId=2012}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-10-17 11:21:42');
INSERT INTO `sys_oper_log` VALUES (228, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', NULL, '/system/menu/2013', '127.0.0.1', '内网IP', '{menuId=2013}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-10-17 11:21:44');
INSERT INTO `sys_oper_log` VALUES (229, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', NULL, '/system/menu/2014', '127.0.0.1', '内网IP', '{menuId=2014}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-10-17 11:21:46');
INSERT INTO `sys_oper_log` VALUES (230, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', NULL, '/system/menu/2009', '127.0.0.1', '内网IP', '{menuId=2009}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-10-17 11:21:50');
INSERT INTO `sys_oper_log` VALUES (231, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"sw/swManage/index\",\"createTime\":\"2022-10-17 10:43:33\",\"icon\":\"dict\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2015,\"menuName\":\"交换机管理\",\"menuType\":\"C\",\"orderNum\":1,\"params\":{},\"parentId\":2000,\"path\":\"swManage\",\"perms\":\"sw:swManage:list\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-10-17 11:22:16');
INSERT INTO `sys_oper_log` VALUES (232, '交换机管理', 2, 'com.ruoyi.system.controller.ZcJhjController.edit()', 'PUT', 1, 'admin', NULL, '/sw/swManage', '127.0.0.1', '内网IP', '{\"deviceModel\":\"412421\",\"deviceType\":\"342141\",\"manegeIp\":\"421421\",\"params\":{},\"sn\":\"2121\"}', '{\"msg\":\"操作失败\",\"code\":500}', 0, NULL, '2022-10-17 11:23:47');
INSERT INTO `sys_oper_log` VALUES (233, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', NULL, '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"swManage\",\"className\":\"ZcJhj\",\"columns\":[{\"capJavaField\":\"Sn\",\"columnComment\":\"SN编号\",\"columnId\":9,\"columnName\":\"sn\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"createTime\":\"2022-10-13 17:09:15\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"javaField\":\"sn\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":2,\"updateBy\":\"\",\"updateTime\":\"2022-10-17 10:38:20\",\"usableColumn\":false},{\"capJavaField\":\"DeviceType\",\"columnComment\":\"设备类型\",\"columnId\":10,\"columnName\":\"device_type\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"createTime\":\"2022-10-13 17:09:15\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"javaField\":\"deviceType\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":false,\"sort\":2,\"superColumn\":false,\"tableId\":2,\"updateBy\":\"\",\"updateTime\":\"2022-10-17 10:38:20\",\"usableColumn\":false},{\"capJavaField\":\"DeviceModel\",\"columnComment\":\"设备型号\",\"columnId\":11,\"columnName\":\"device_model\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"createTime\":\"2022-10-13 17:09:15\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"javaField\":\"deviceModel\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":false,\"sort\":3,\"superColumn\":false,\"tableId\":2,\"updateBy\":\"\",\"updateTime\":\"2022-10-17 10:38:20\",\"usableColumn\":false},{\"capJavaField\":\"ManegeIp\",\"columnComment\":\"管理IP\",\"columnId\":12,\"columnName\":\"manege_IP\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"createTime\":\"2022-10-13 17:09:15\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\"', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-10-17 11:30:18');
INSERT INTO `sys_oper_log` VALUES (234, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', NULL, '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{}', NULL, 0, NULL, '2022-10-17 11:30:26');
INSERT INTO `sys_oper_log` VALUES (235, '交换机管理', 2, 'com.ruoyi.system.controller.ZcJhjController.edit()', 'PUT', 1, 'admin', NULL, '/sw/swManage', '127.0.0.1', '内网IP', '{\"businessType\":\"312312\",\"cabinetNo\":\"312312\",\"deviceModel\":\"31231\",\"deviceType\":\"23123\",\"manegeIp\":\"312312\",\"params\":{},\"room\":\"312321\",\"sn\":21213}', '{\"msg\":\"操作失败\",\"code\":500}', 0, NULL, '2022-10-17 11:34:28');
INSERT INTO `sys_oper_log` VALUES (236, '交换机管理', 2, 'com.ruoyi.system.controller.ZcJhjController.edit()', 'PUT', 1, 'admin', NULL, '/sw/swManage', '127.0.0.1', '内网IP', '{\"businessType\":\"312312\",\"cabinetNo\":\"312312\",\"deviceModel\":\"31231\",\"deviceType\":\"23123\",\"manegeIp\":\"312312\",\"params\":{},\"room\":\"312321\",\"sn\":21213}', '{\"msg\":\"操作失败\",\"code\":500}', 0, NULL, '2022-10-17 11:34:30');
INSERT INTO `sys_oper_log` VALUES (237, '交换机管理', 2, 'com.ruoyi.system.controller.ZcJhjController.edit()', 'PUT', 1, 'admin', NULL, '/sw/swManage', '127.0.0.1', '内网IP', '{\"businessType\":\"1123\",\"cabinetNo\":\"12312312\",\"deviceModel\":\"321\",\"deviceType\":\"3123\",\"manegeIp\":\"3213\",\"params\":{},\"room\":\"312323\",\"sn\":321312}', '{\"msg\":\"操作失败\",\"code\":500}', 0, NULL, '2022-10-17 11:35:09');
INSERT INTO `sys_oper_log` VALUES (238, '交换机管理', 2, 'com.ruoyi.system.controller.ZcJhjController.edit()', 'PUT', 1, 'admin', NULL, '/sw/swManage', '127.0.0.1', '内网IP', '{\"businessType\":\"1123\",\"cabinetNo\":\"12312312\",\"deviceModel\":\"321\",\"deviceType\":\"3123\",\"manegeIp\":\"3213\",\"params\":{},\"room\":\"312323\",\"sn\":321312}', '{\"msg\":\"操作失败\",\"code\":500}', 0, NULL, '2022-10-17 11:35:50');
INSERT INTO `sys_oper_log` VALUES (239, '交换机管理', 2, 'com.ruoyi.system.controller.ZcJhjController.edit()', 'PUT', 1, 'admin', NULL, '/sw/swManage', '127.0.0.1', '内网IP', '{\"businessType\":\"1123\",\"cabinetNo\":\"12312312\",\"deviceModel\":\"321\",\"deviceType\":\"3123\",\"manegeIp\":\"3213\",\"params\":{},\"room\":\"312323\",\"sn\":321312}', '{\"msg\":\"操作失败\",\"code\":500}', 0, NULL, '2022-10-17 11:35:55');
INSERT INTO `sys_oper_log` VALUES (240, '交换机管理', 3, 'com.ruoyi.system.controller.ZcJhjController.remove()', 'DELETE', 1, 'admin', NULL, '/sw/swManage/123', '127.0.0.1', '内网IP', '{sns=123}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-10-17 11:38:33');
INSERT INTO `sys_oper_log` VALUES (241, '交换机管理', 2, 'com.ruoyi.system.controller.ZcJhjController.edit()', 'PUT', 1, 'admin', NULL, '/sw/swManage', '127.0.0.1', '内网IP', '{\"businessType\":\"边缘计算\",\"cabinetNo\":\"A01\",\"deviceModel\":\"华为5800\",\"deviceType\":\"交换机\",\"manegeIp\":\"192.168.1.1\",\"params\":{},\"portInterconnetion\":\"/profile/upload/2022/10/17/遥远的救世主_20221017114200A001.txt\",\"room\":\"雅安电信\",\"sn\":2321}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-10-17 11:42:01');
INSERT INTO `sys_oper_log` VALUES (242, '交换机管理', 2, 'com.ruoyi.system.controller.ZcJhjController.edit()', 'PUT', 1, 'admin', NULL, '/sw/swManage', '127.0.0.1', '内网IP', '{\"businessType\":\"边缘计算\",\"cabinetNo\":\"A01\",\"deviceModel\":\"华为5800\",\"deviceType\":\"交换机\",\"manegeIp\":\"192.168.1.1\",\"params\":{},\"portInterconnetion\":\"/profile/upload/2022/10/17/Centos 7.4离线升级内核_20221017114219A002.docx\",\"room\":\"雅安电信\",\"sn\":2321}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-10-17 11:42:21');
INSERT INTO `sys_oper_log` VALUES (243, '交换机管理', 2, 'com.ruoyi.system.controller.ZcJhjController.edit()', 'PUT', 1, 'admin', NULL, '/sw/swManage', '127.0.0.1', '内网IP', '{\"businessType\":\"边缘计算\",\"cabinetNo\":\"A01\",\"deviceModel\":\"华为5800\",\"deviceType\":\"交换机\",\"manegeIp\":\"192.168.1.1\",\"params\":{},\"portInterconnetion\":\"\",\"room\":\"雅安电信\",\"sn\":2321}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-10-17 11:43:01');
INSERT INTO `sys_oper_log` VALUES (244, '交换机管理', 2, 'com.ruoyi.system.controller.ZcJhjController.edit()', 'PUT', 1, 'admin', NULL, '/sw/swManage', '127.0.0.1', '内网IP', '{\"businessType\":\"13113\",\"cabinetNo\":\"31\",\"deviceModel\":\"1212\",\"deviceType\":\"1212\",\"manegeIp\":\"2131\",\"params\":{},\"room\":\"213\",\"sn\":1231}', '{\"msg\":\"操作失败\",\"code\":500}', 0, NULL, '2022-10-17 11:43:24');
INSERT INTO `sys_oper_log` VALUES (245, '交换机管理', 2, 'com.ruoyi.system.controller.ZcJhjController.edit()', 'PUT', 1, 'admin', NULL, '/sw/swManage', '127.0.0.1', '内网IP', '{\"businessType\":\"边缘计算\",\"cabinetNo\":\"A01\",\"deviceModel\":\"华为5800\",\"deviceType\":\"交换机\",\"manegeIp\":\"192.168.1.1\",\"params\":{},\"portInterconnetion\":\"\",\"room\":\"雅安电信\",\"sn\":2321232}', '{\"msg\":\"操作失败\",\"code\":500}', 0, NULL, '2022-10-17 14:05:26');
INSERT INTO `sys_oper_log` VALUES (246, '交换机管理', 2, 'com.ruoyi.system.controller.ZcJhjController.edit()', 'PUT', 1, 'admin', NULL, '/sw/swManage', '127.0.0.1', '内网IP', '{\"businessType\":\"边缘计算\",\"cabinetNo\":\"A01\",\"deviceModel\":\"华为5800\",\"deviceType\":\"交换机\",\"manegeIp\":\"192.168.1.1\",\"params\":{},\"portInterconnetion\":\"\",\"room\":\"雅安电信\",\"sn\":2321232}', '{\"msg\":\"操作失败\",\"code\":500}', 0, NULL, '2022-10-17 14:05:27');
INSERT INTO `sys_oper_log` VALUES (247, '交换机管理', 2, 'com.ruoyi.system.controller.ZcJhjController.edit()', 'PUT', 1, 'admin', NULL, '/sw/swManage', '127.0.0.1', '内网IP', '{\"businessType\":\"边缘计算\",\"cabinetNo\":\"A01\",\"deviceModel\":\"华为5800\",\"deviceType\":\"交换机\",\"manegeIp\":\"192.168.1.1\",\"params\":{},\"portInterconnetion\":\"\",\"room\":\"雅安电信\",\"sn\":2321232}', '{\"msg\":\"操作失败\",\"code\":500}', 0, NULL, '2022-10-17 14:07:52');
INSERT INTO `sys_oper_log` VALUES (248, '交换机管理', 2, 'com.ruoyi.system.controller.ZcJhjController.edit()', 'PUT', 1, 'admin', NULL, '/sw/swManage', '127.0.0.1', '内网IP', '{\"businessType\":\"边缘计算\",\"cabinetNo\":\"A01\",\"deviceModel\":\"华为5800\",\"deviceType\":\"交换机\",\"manegeIp\":\"192.168.1.1\",\"params\":{},\"portInterconnetion\":\"\",\"room\":\"雅安电信\",\"sn\":2321231}', '{\"msg\":\"操作失败\",\"code\":500}', 0, NULL, '2022-10-17 14:08:08');
INSERT INTO `sys_oper_log` VALUES (249, '代码生成', 6, 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', NULL, '/tool/gen/importTable', '127.0.0.1', '内网IP', 'asset_up_ip', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-10-17 14:25:53');
INSERT INTO `sys_oper_log` VALUES (250, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', NULL, '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"ip\",\"className\":\"AssetUpIp\",\"columns\":[{\"capJavaField\":\"Ip\",\"columnComment\":\"IP\",\"columnId\":17,\"columnName\":\"IP\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"createTime\":\"2022-10-17 14:25:53\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isPk\":\"1\",\"javaField\":\"ip\",\"javaType\":\"String\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":3,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"Company\",\"columnComment\":\"归属\",\"columnId\":18,\"columnName\":\"company\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"createTime\":\"2022-10-17 14:25:53\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"javaField\":\"company\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":false,\"sort\":2,\"superColumn\":false,\"tableId\":3,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"Room\",\"columnComment\":\"所属机房\",\"columnId\":19,\"columnName\":\"room\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"createTime\":\"2022-10-17 14:25:53\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"javaField\":\"room\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":false,\"sort\":3,\"superColumn\":false,\"tableId\":3,\"updateBy\":\"\",\"usableColumn\":false}],\"crud\":true,\"functionAuthor\":\"yuanzi\",\"functionName\":\"上联IP资源\",\"genPath\":\"/\",\"genType\":\"0\",\"moduleName\":\"upip\",\"options\":\"{\\\"parentMenuId\\\":2000}\",\"packageName\":\"com.asset.upip\",\"params\":{\"parentMenuId\":2000},\"parentMenuId\":\"2000\",\"sub\":false,\"tableComment\":\"上联IP资源\",\"tableId\":3,\"tableName\":\"asset_up_ip\",\"tplCategory\":\"crud\",\"tree\":false}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-10-17 14:28:26');
INSERT INTO `sys_oper_log` VALUES (251, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', NULL, '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{}', NULL, 0, NULL, '2022-10-17 14:28:31');
INSERT INTO `sys_oper_log` VALUES (252, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', NULL, '/system/menu/2001', '127.0.0.1', '内网IP', '{menuId=2001}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-10-17 14:29:27');
INSERT INTO `sys_oper_log` VALUES (253, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"upip/ip/index\",\"createTime\":\"2022-10-17 14:29:42\",\"icon\":\"icon\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2021,\"menuName\":\"上联IP资源\",\"menuType\":\"C\",\"orderNum\":1,\"params\":{},\"parentId\":2000,\"path\":\"ip\",\"perms\":\"upip:ip:list\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-10-17 14:30:18');
INSERT INTO `sys_oper_log` VALUES (254, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"sw/swManage/index\",\"createTime\":\"2022-10-17 10:43:33\",\"icon\":\"dict\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2015,\"menuName\":\"交换机管理\",\"menuType\":\"C\",\"orderNum\":20,\"params\":{},\"parentId\":2000,\"path\":\"swManage\",\"perms\":\"sw:swManage:list\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-10-17 14:30:54');
INSERT INTO `sys_oper_log` VALUES (255, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"upip/ip/index\",\"createTime\":\"2022-10-17 14:29:42\",\"icon\":\"icon\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2021,\"menuName\":\"上联IP资源\",\"menuType\":\"C\",\"orderNum\":10,\"params\":{},\"parentId\":2000,\"path\":\"ip\",\"perms\":\"upip:ip:list\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-10-17 14:31:04');
INSERT INTO `sys_oper_log` VALUES (256, '代码生成', 3, 'com.ruoyi.generator.controller.GenController.remove()', 'DELETE', 1, 'admin', NULL, '/tool/gen/2,3', '127.0.0.1', '内网IP', '{tableIds=2,3}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-10-17 15:31:20');
INSERT INTO `sys_oper_log` VALUES (257, '代码生成', 6, 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', NULL, '/tool/gen/importTable', '127.0.0.1', '内网IP', 'asset_switch,asset_up_ip', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-10-17 15:41:34');
INSERT INTO `sys_oper_log` VALUES (258, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', NULL, '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"switch\",\"className\":\"AssetSwitch\",\"columns\":[{\"capJavaField\":\"Sn\",\"columnComment\":\"SN编号\",\"columnId\":20,\"columnName\":\"sn\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"createTime\":\"2022-10-17 15:41:34\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isPk\":\"1\",\"javaField\":\"sn\",\"javaType\":\"String\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":4,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"DeviceType\",\"columnComment\":\"设备类型\",\"columnId\":21,\"columnName\":\"device_type\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"createTime\":\"2022-10-17 15:41:34\",\"dictType\":\"sys_user_sex\",\"edit\":true,\"htmlType\":\"select\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"javaField\":\"deviceType\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":false,\"sort\":2,\"superColumn\":false,\"tableId\":4,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"DeviceModel\",\"columnComment\":\"设备型号\",\"columnId\":22,\"columnName\":\"device_model\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"createTime\":\"2022-10-17 15:41:34\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"javaField\":\"deviceModel\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":false,\"sort\":3,\"superColumn\":false,\"tableId\":4,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"ManegeIp\",\"columnComment\":\"管理IP\",\"columnId\":23,\"columnName\":\"manege_IP\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"createTime\":\"2022-10-17 15:41:34\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"javaField\":\"manegeIp\",\"javaType\"', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-10-17 15:42:54');
INSERT INTO `sys_oper_log` VALUES (259, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', NULL, '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{}', NULL, 0, NULL, '2022-10-17 15:42:58');
INSERT INTO `sys_oper_log` VALUES (260, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', NULL, '/system/menu/2021', '127.0.0.1', '内网IP', '{menuId=2021}', '{\"msg\":\"存在子菜单,不允许删除\",\"code\":500}', 0, NULL, '2022-10-17 15:43:27');
INSERT INTO `sys_oper_log` VALUES (261, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', NULL, '/system/menu/2022', '127.0.0.1', '内网IP', '{menuId=2022}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-10-17 15:43:34');
INSERT INTO `sys_oper_log` VALUES (262, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', NULL, '/system/menu/2023', '127.0.0.1', '内网IP', '{menuId=2023}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-10-17 15:43:36');
INSERT INTO `sys_oper_log` VALUES (263, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', NULL, '/system/menu/2024', '127.0.0.1', '内网IP', '{menuId=2024}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-10-17 15:43:37');
INSERT INTO `sys_oper_log` VALUES (264, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', NULL, '/system/menu/2025', '127.0.0.1', '内网IP', '{menuId=2025}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-10-17 15:43:38');
INSERT INTO `sys_oper_log` VALUES (265, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', NULL, '/system/menu/2026', '127.0.0.1', '内网IP', '{menuId=2026}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-10-17 15:43:40');
INSERT INTO `sys_oper_log` VALUES (266, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', NULL, '/system/menu/2016', '127.0.0.1', '内网IP', '{menuId=2016}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-10-17 15:43:44');
INSERT INTO `sys_oper_log` VALUES (267, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', NULL, '/system/menu/2017', '127.0.0.1', '内网IP', '{menuId=2017}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-10-17 15:43:45');
INSERT INTO `sys_oper_log` VALUES (268, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', NULL, '/system/menu/2018', '127.0.0.1', '内网IP', '{menuId=2018}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-10-17 15:43:47');
INSERT INTO `sys_oper_log` VALUES (269, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', NULL, '/system/menu/2019', '127.0.0.1', '内网IP', '{menuId=2019}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-10-17 15:43:49');
INSERT INTO `sys_oper_log` VALUES (270, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', NULL, '/system/menu/2020', '127.0.0.1', '内网IP', '{menuId=2020}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-10-17 15:43:50');
INSERT INTO `sys_oper_log` VALUES (271, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', NULL, '/system/menu/2015', '127.0.0.1', '内网IP', '{menuId=2015}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-10-17 15:43:53');
INSERT INTO `sys_oper_log` VALUES (272, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', NULL, '/system/menu/2021', '127.0.0.1', '内网IP', '{menuId=2021}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-10-17 15:43:55');
INSERT INTO `sys_oper_log` VALUES (273, '交换机管理', 1, 'com.ruoyi.system.controller.AssetSwitchController.add()', 'POST', 1, 'admin', NULL, '/system/switch', '127.0.0.1', '内网IP', '{\"businessType\":\"0\",\"cabinetNo\":\"213\",\"deviceModel\":\"3213\",\"deviceType\":\"0\",\"manegeIp\":\"12\",\"params\":{},\"portInterconnetion\":\"3123\",\"room\":\"212\"}', NULL, 1, '\r\n### Error updating database.  Cause: java.sql.SQLException: Field \'sn\' doesn\'t have a default value\r\n### The error may exist in file [D:\\Code\\Cmdb\\asset_management\\target\\classes\\mapper\\system\\AssetSwitchMapper.xml]\r\n### The error may involve com.ruoyi.system.mapper.AssetSwitchMapper.insertAssetSwitch-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into asset_switch          ( device_type,             device_model,             manege_IP,             cabinet_No,             room,             business_type,             port_interconnetion )           values ( ?,             ?,             ?,             ?,             ?,             ?,             ? )\r\n### Cause: java.sql.SQLException: Field \'sn\' doesn\'t have a default value\n; Field \'sn\' doesn\'t have a default value; nested exception is java.sql.SQLException: Field \'sn\' doesn\'t have a default value', '2022-10-17 16:03:55');
INSERT INTO `sys_oper_log` VALUES (274, '交换机管理', 1, 'com.ruoyi.system.controller.AssetSwitchController.add()', 'POST', 1, 'admin', NULL, '/system/switch', '127.0.0.1', '内网IP', '{\"businessType\":\"0\",\"cabinetNo\":\"1231231\",\"deviceModel\":\"231\",\"deviceType\":\"2\",\"manegeIp\":\"213123\",\"params\":{},\"portInterconnetion\":\"12312313\",\"room\":\"3123123\"}', NULL, 1, '\r\n### Error updating database.  Cause: java.sql.SQLException: Field \'sn\' doesn\'t have a default value\r\n### The error may exist in file [D:\\Code\\Cmdb\\asset_management\\target\\classes\\mapper\\system\\AssetSwitchMapper.xml]\r\n### The error may involve com.ruoyi.system.mapper.AssetSwitchMapper.insertAssetSwitch-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into asset_switch          ( device_type,             device_model,             manege_IP,             cabinet_No,             room,             business_type,             port_interconnetion )           values ( ?,             ?,             ?,             ?,             ?,             ?,             ? )\r\n### Cause: java.sql.SQLException: Field \'sn\' doesn\'t have a default value\n; Field \'sn\' doesn\'t have a default value; nested exception is java.sql.SQLException: Field \'sn\' doesn\'t have a default value', '2022-10-17 16:04:19');
INSERT INTO `sys_oper_log` VALUES (275, '交换机管理', 1, 'com.ruoyi.system.controller.AssetSwitchController.add()', 'POST', 1, 'admin', NULL, '/system/switch', '127.0.0.1', '内网IP', '{\"businessType\":\"0\",\"cabinetNo\":\"1231231\",\"deviceModel\":\"231\",\"deviceType\":\"2\",\"manegeIp\":\"213123\",\"params\":{},\"portInterconnetion\":\"12312313\",\"room\":\"3123123\"}', NULL, 1, '\r\n### Error updating database.  Cause: java.sql.SQLException: Field \'sn\' doesn\'t have a default value\r\n### The error may exist in file [D:\\Code\\Cmdb\\asset_management\\target\\classes\\mapper\\system\\AssetSwitchMapper.xml]\r\n### The error may involve com.ruoyi.system.mapper.AssetSwitchMapper.insertAssetSwitch-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into asset_switch          ( device_type,             device_model,             manege_IP,             cabinet_No,             room,             business_type,             port_interconnetion )           values ( ?,             ?,             ?,             ?,             ?,             ?,             ? )\r\n### Cause: java.sql.SQLException: Field \'sn\' doesn\'t have a default value\n; Field \'sn\' doesn\'t have a default value; nested exception is java.sql.SQLException: Field \'sn\' doesn\'t have a default value', '2022-10-17 16:04:23');
INSERT INTO `sys_oper_log` VALUES (276, '交换机管理', 1, 'com.ruoyi.system.controller.AssetSwitchController.add()', 'POST', 1, 'admin', NULL, '/system/switch', '127.0.0.1', '内网IP', '{\"businessType\":\"0\",\"cabinetNo\":\"1231231\",\"deviceModel\":\"231123\",\"deviceType\":\"2\",\"manegeIp\":\"213123\",\"params\":{},\"portInterconnetion\":\"12312313\",\"room\":\"3123123\"}', NULL, 1, '\r\n### Error updating database.  Cause: java.sql.SQLException: Field \'sn\' doesn\'t have a default value\r\n### The error may exist in file [D:\\Code\\Cmdb\\asset_management\\target\\classes\\mapper\\system\\AssetSwitchMapper.xml]\r\n### The error may involve com.ruoyi.system.mapper.AssetSwitchMapper.insertAssetSwitch-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into asset_switch          ( device_type,             device_model,             manege_IP,             cabinet_No,             room,             business_type,             port_interconnetion )           values ( ?,             ?,             ?,             ?,             ?,             ?,             ? )\r\n### Cause: java.sql.SQLException: Field \'sn\' doesn\'t have a default value\n; Field \'sn\' doesn\'t have a default value; nested exception is java.sql.SQLException: Field \'sn\' doesn\'t have a default value', '2022-10-17 16:04:43');
INSERT INTO `sys_oper_log` VALUES (277, '交换机管理', 5, 'com.ruoyi.system.controller.AssetSwitchController.export()', 'POST', 1, 'admin', NULL, '/system/switch/export', '127.0.0.1', '内网IP', '{\"params\":{}}', NULL, 0, NULL, '2022-10-17 16:04:47');
INSERT INTO `sys_oper_log` VALUES (278, '代码生成', 3, 'com.ruoyi.generator.controller.GenController.remove()', 'DELETE', 1, 'admin', NULL, '/tool/gen/5', '127.0.0.1', '内网IP', '{tableIds=5}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-10-17 16:07:18');
INSERT INTO `sys_oper_log` VALUES (279, '代码生成', 6, 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', NULL, '/tool/gen/importTable', '127.0.0.1', '内网IP', 'asset_up_ip', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-10-17 16:07:28');
INSERT INTO `sys_oper_log` VALUES (280, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', NULL, '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"ip\",\"className\":\"AssetUpIp\",\"columns\":[{\"capJavaField\":\"Ip\",\"columnComment\":\"IP\",\"columnId\":31,\"columnName\":\"IP\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"createTime\":\"2022-10-17 16:07:28\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"javaField\":\"ip\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":6,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"Company\",\"columnComment\":\"归属\",\"columnId\":32,\"columnName\":\"company\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"createTime\":\"2022-10-17 16:07:28\",\"dictType\":\"sys_user_sex\",\"edit\":true,\"htmlType\":\"select\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"javaField\":\"company\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":false,\"sort\":2,\"superColumn\":false,\"tableId\":6,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"Room\",\"columnComment\":\"所属机房\",\"columnId\":33,\"columnName\":\"room\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"createTime\":\"2022-10-17 16:07:28\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"javaField\":\"room\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":false,\"sort\":3,\"superColumn\":false,\"tableId\":6,\"updateBy\":\"\",\"usableColumn\":false}],\"crud\":true,\"functionAuthor\":\"yuanzi\",\"functionName\":\"上联IP资源\",\"genPath\":\"/\",\"genType\":\"0\",\"moduleName\":\"system\",\"options\":\"{\\\"parentMenuId\\\":2000}\",\"packageName\":\"com.ruoyi.system\",\"params\":{\"parentMenuId\":2000},\"parentMenuId\":\"2000\",\"sub\":false,\"tableComment\":\"上联IP资源\",\"tableId\":6,\"tableName\":\"asset_up_ip\",\"tplCategory\":\"crud\",\"tree\":false}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-10-17 16:08:33');
INSERT INTO `sys_oper_log` VALUES (281, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', NULL, '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{}', NULL, 0, NULL, '2022-10-17 16:08:37');
INSERT INTO `sys_oper_log` VALUES (282, '上联IP资源', 2, 'com.ruoyi.system.controller.AssetUpIpController.edit()', 'PUT', 1, 'admin', NULL, '/system/ip', '127.0.0.1', '内网IP', '{\"company\":\"0\",\"ip\":\"2121213123\",\"params\":{},\"room\":\"雅安电信\"}', '{\"msg\":\"操作失败\",\"code\":500}', 0, NULL, '2022-10-17 16:11:47');
INSERT INTO `sys_oper_log` VALUES (283, '上联IP资源', 2, 'com.ruoyi.system.controller.AssetUpIpController.edit()', 'PUT', 1, 'admin', NULL, '/system/ip', '127.0.0.1', '内网IP', '{\"company\":\"0\",\"ip\":\"2121213123\",\"params\":{},\"room\":\"雅安电信\"}', '{\"msg\":\"操作失败\",\"code\":500}', 0, NULL, '2022-10-17 16:11:49');
INSERT INTO `sys_oper_log` VALUES (284, '上联IP资源', 2, 'com.ruoyi.system.controller.AssetUpIpController.edit()', 'PUT', 1, 'admin', NULL, '/system/ip', '127.0.0.1', '内网IP', '{\"company\":\"0\",\"ip\":\"2121213123\",\"params\":{},\"room\":\"雅安电信\"}', '{\"msg\":\"操作失败\",\"code\":500}', 0, NULL, '2022-10-17 16:11:50');
INSERT INTO `sys_oper_log` VALUES (285, '字典类型', 1, 'com.ruoyi.web.controller.system.SysDictTypeController.add()', 'POST', 1, 'admin', NULL, '/system/dict/type', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"dictName\":\"业务类型\",\"dictType\":\"asset_business\",\"params\":{},\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-10-17 16:13:18');
INSERT INTO `sys_oper_log` VALUES (286, '字典类型', 2, 'com.ruoyi.web.controller.system.SysDictTypeController.edit()', 'PUT', 1, 'admin', NULL, '/system/dict/type', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"createTime\":\"2022-10-17 16:13:18\",\"dictId\":100,\"dictName\":\"业务类型\",\"dictType\":\"asset_business\",\"params\":{},\"remark\":\"业务类型列表\",\"status\":\"0\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-10-17 16:13:46');
INSERT INTO `sys_oper_log` VALUES (287, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', NULL, '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"switch\",\"className\":\"AssetSwitch\",\"columns\":[{\"capJavaField\":\"Sn\",\"columnComment\":\"SN编号\",\"columnId\":20,\"columnName\":\"sn\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"createTime\":\"2022-10-17 15:41:34\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isPk\":\"1\",\"javaField\":\"sn\",\"javaType\":\"String\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":4,\"updateBy\":\"\",\"updateTime\":\"2022-10-17 15:42:54\",\"usableColumn\":false},{\"capJavaField\":\"DeviceType\",\"columnComment\":\"设备类型\",\"columnId\":21,\"columnName\":\"device_type\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"createTime\":\"2022-10-17 15:41:34\",\"dictType\":\"sys_user_sex\",\"edit\":true,\"htmlType\":\"select\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"javaField\":\"deviceType\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":false,\"sort\":2,\"superColumn\":false,\"tableId\":4,\"updateBy\":\"\",\"updateTime\":\"2022-10-17 15:42:54\",\"usableColumn\":false},{\"capJavaField\":\"DeviceModel\",\"columnComment\":\"设备型号\",\"columnId\":22,\"columnName\":\"device_model\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"createTime\":\"2022-10-17 15:41:34\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"javaField\":\"deviceModel\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":false,\"sort\":3,\"superColumn\":false,\"tableId\":4,\"updateBy\":\"\",\"updateTime\":\"2022-10-17 15:42:54\",\"usableColumn\":false},{\"capJavaField\":\"ManegeIp\",\"columnComment\":\"管理IP\",\"columnId\":23,\"columnName\":\"manege_IP\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"createTime\":\"2022-10-17 15:41:34\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\"', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-10-17 16:27:25');
INSERT INTO `sys_oper_log` VALUES (288, '代码生成', 6, 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', NULL, '/tool/gen/importTable', '127.0.0.1', '内网IP', 'asset_downip', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-10-17 16:33:42');
INSERT INTO `sys_oper_log` VALUES (289, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', NULL, '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"downip\",\"className\":\"AssetDownip\",\"columns\":[{\"capJavaField\":\"Ip\",\"columnComment\":\"IP\",\"columnId\":34,\"columnName\":\"IP\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"createTime\":\"2022-10-17 16:33:42\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"javaField\":\"ip\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":7,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"Company\",\"columnComment\":\"归属\",\"columnId\":35,\"columnName\":\"company\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"createTime\":\"2022-10-17 16:33:42\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"javaField\":\"company\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":false,\"sort\":2,\"superColumn\":false,\"tableId\":7,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"Room\",\"columnComment\":\"所属机房\",\"columnId\":36,\"columnName\":\"room\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"createTime\":\"2022-10-17 16:33:42\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"javaField\":\"room\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":false,\"sort\":3,\"superColumn\":false,\"tableId\":7,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"Business\",\"columnComment\":\"业务类型\",\"columnId\":37,\"columnName\":\"business\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"createTime\":\"2022-10-17 16:33:42\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"javaField\":\"business\",\"javaType\":\"String\",\"l', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-10-17 16:34:20');
INSERT INTO `sys_oper_log` VALUES (290, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', NULL, '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{}', NULL, 0, NULL, '2022-10-17 16:34:24');
INSERT INTO `sys_oper_log` VALUES (291, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', NULL, '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"downip\",\"className\":\"AssetDownip\",\"columns\":[{\"capJavaField\":\"Ip\",\"columnComment\":\"IP\",\"columnId\":34,\"columnName\":\"IP\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"createTime\":\"2022-10-17 16:33:42\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"javaField\":\"ip\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":7,\"updateBy\":\"\",\"updateTime\":\"2022-10-17 16:34:20\",\"usableColumn\":false},{\"capJavaField\":\"Company\",\"columnComment\":\"归属\",\"columnId\":35,\"columnName\":\"company\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"createTime\":\"2022-10-17 16:33:42\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"javaField\":\"company\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":false,\"sort\":2,\"superColumn\":false,\"tableId\":7,\"updateBy\":\"\",\"updateTime\":\"2022-10-17 16:34:20\",\"usableColumn\":false},{\"capJavaField\":\"Room\",\"columnComment\":\"所属机房\",\"columnId\":36,\"columnName\":\"room\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"createTime\":\"2022-10-17 16:33:42\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"javaField\":\"room\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":false,\"sort\":3,\"superColumn\":false,\"tableId\":7,\"updateBy\":\"\",\"updateTime\":\"2022-10-17 16:34:20\",\"usableColumn\":false},{\"capJavaField\":\"Business\",\"columnComment\":\"业务类型\",\"columnId\":37,\"columnName\":\"business\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"createTime\":\"2022-10-17 16:33:42\",\"dictType\":\"asset_business\",\"edit\":true,\"htmlType\":\"select\",\"increment\":false,\"insert\":true,\"isEdit\":', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-10-17 16:37:01');
INSERT INTO `sys_oper_log` VALUES (292, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', NULL, '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{}', NULL, 0, NULL, '2022-10-17 16:37:30');
INSERT INTO `sys_oper_log` VALUES (293, '客户IP资源', 2, 'com.ruoyi.system.controller.AssetDownipController.edit()', 'PUT', 1, 'admin', NULL, '/system/downip', '127.0.0.1', '内网IP', '{\"business\":\"3\",\"company\":\"23123\",\"ip\":\"213213\",\"params\":{},\"room\":\"21321\"}', '{\"msg\":\"操作失败\",\"code\":500}', 0, NULL, '2022-10-17 16:41:51');
INSERT INTO `sys_oper_log` VALUES (294, '客户IP资源', 2, 'com.ruoyi.system.controller.AssetDownipController.edit()', 'PUT', 1, 'admin', NULL, '/system/downip', '127.0.0.1', '内网IP', '{\"business\":\"1\",\"company\":\"12432141\",\"ip\":\"234124\",\"params\":{},\"room\":\"41324\"}', '{\"msg\":\"操作失败\",\"code\":500}', 0, NULL, '2022-10-17 17:19:14');
INSERT INTO `sys_oper_log` VALUES (295, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', NULL, '/system/menu/2028', '127.0.0.1', '内网IP', '{menuId=2028}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-10-18 10:08:08');
INSERT INTO `sys_oper_log` VALUES (296, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', NULL, '/system/menu/2029', '127.0.0.1', '内网IP', '{menuId=2029}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-10-18 10:08:09');
INSERT INTO `sys_oper_log` VALUES (297, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', NULL, '/system/menu/2030', '127.0.0.1', '内网IP', '{menuId=2030}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-10-18 10:08:11');
INSERT INTO `sys_oper_log` VALUES (298, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', NULL, '/system/menu/2031', '127.0.0.1', '内网IP', '{menuId=2031}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-10-18 10:08:13');
INSERT INTO `sys_oper_log` VALUES (299, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', NULL, '/system/menu/2032', '127.0.0.1', '内网IP', '{menuId=2032}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-10-18 10:08:15');
INSERT INTO `sys_oper_log` VALUES (300, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', NULL, '/system/menu/2033', '127.0.0.1', '内网IP', '{menuId=2033}', '{\"msg\":\"存在子菜单,不允许删除\",\"code\":500}', 0, NULL, '2022-10-18 10:08:17');
INSERT INTO `sys_oper_log` VALUES (301, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', NULL, '/system/menu/2027', '127.0.0.1', '内网IP', '{menuId=2027}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-10-18 10:08:22');
INSERT INTO `sys_oper_log` VALUES (302, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', NULL, '/system/menu/2034', '127.0.0.1', '内网IP', '{menuId=2034}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-10-18 10:08:26');
INSERT INTO `sys_oper_log` VALUES (303, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', NULL, '/system/menu/2035', '127.0.0.1', '内网IP', '{menuId=2035}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-10-18 10:08:27');
INSERT INTO `sys_oper_log` VALUES (304, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', NULL, '/system/menu/2036', '127.0.0.1', '内网IP', '{menuId=2036}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-10-18 10:08:28');
INSERT INTO `sys_oper_log` VALUES (305, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', NULL, '/system/menu/2037', '127.0.0.1', '内网IP', '{menuId=2037}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-10-18 10:08:30');
INSERT INTO `sys_oper_log` VALUES (306, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', NULL, '/system/menu/2038', '127.0.0.1', '内网IP', '{menuId=2038}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-10-18 10:08:31');
INSERT INTO `sys_oper_log` VALUES (307, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', NULL, '/system/menu/2040', '127.0.0.1', '内网IP', '{menuId=2040}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-10-18 10:08:35');
INSERT INTO `sys_oper_log` VALUES (308, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', NULL, '/system/menu/2041', '127.0.0.1', '内网IP', '{menuId=2041}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-10-18 10:08:37');
INSERT INTO `sys_oper_log` VALUES (309, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', NULL, '/system/menu/2042', '127.0.0.1', '内网IP', '{menuId=2042}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-10-18 10:08:39');
INSERT INTO `sys_oper_log` VALUES (310, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', NULL, '/system/menu/2043', '127.0.0.1', '内网IP', '{menuId=2043}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-10-18 10:08:40');
INSERT INTO `sys_oper_log` VALUES (311, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', NULL, '/system/menu/2039', '127.0.0.1', '内网IP', '{menuId=2039}', '{\"msg\":\"存在子菜单,不允许删除\",\"code\":500}', 0, NULL, '2022-10-18 10:08:42');
INSERT INTO `sys_oper_log` VALUES (312, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', NULL, '/system/menu/2044', '127.0.0.1', '内网IP', '{menuId=2044}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-10-18 10:08:47');
INSERT INTO `sys_oper_log` VALUES (313, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', NULL, '/system/menu/2046', '127.0.0.1', '内网IP', '{menuId=2046}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-10-18 10:08:51');
INSERT INTO `sys_oper_log` VALUES (314, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', NULL, '/system/menu/2047', '127.0.0.1', '内网IP', '{menuId=2047}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-10-18 10:08:52');
INSERT INTO `sys_oper_log` VALUES (315, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', NULL, '/system/menu/2048', '127.0.0.1', '内网IP', '{menuId=2048}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-10-18 10:08:54');
INSERT INTO `sys_oper_log` VALUES (316, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', NULL, '/system/menu/2049', '127.0.0.1', '内网IP', '{menuId=2049}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-10-18 10:08:56');
INSERT INTO `sys_oper_log` VALUES (317, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', NULL, '/system/menu/2050', '127.0.0.1', '内网IP', '{menuId=2050}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-10-18 10:08:57');
INSERT INTO `sys_oper_log` VALUES (318, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', NULL, '/system/menu/2033', '127.0.0.1', '内网IP', '{menuId=2033}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-10-18 10:09:00');
INSERT INTO `sys_oper_log` VALUES (319, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', NULL, '/system/menu/2045', '127.0.0.1', '内网IP', '{menuId=2045}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-10-18 10:09:01');
INSERT INTO `sys_oper_log` VALUES (320, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', NULL, '/system/menu/2039', '127.0.0.1', '内网IP', '{menuId=2039}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-10-18 10:09:04');
INSERT INTO `sys_oper_log` VALUES (321, '代码生成', 3, 'com.ruoyi.generator.controller.GenController.remove()', 'DELETE', 1, 'admin', NULL, '/tool/gen/4', '127.0.0.1', '内网IP', '{tableIds=4}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-10-18 10:13:12');
INSERT INTO `sys_oper_log` VALUES (322, '代码生成', 6, 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', NULL, '/tool/gen/importTable', '127.0.0.1', '内网IP', 'asset_switch', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-10-18 10:34:12');
INSERT INTO `sys_oper_log` VALUES (323, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', NULL, '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"switch_management\",\"className\":\"AssetSwitch\",\"columns\":[{\"capJavaField\":\"Sn\",\"columnComment\":\"SN编号\",\"columnId\":38,\"columnName\":\"sn\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"createTime\":\"2022-10-18 10:34:12\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"javaField\":\"sn\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":8,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"No.\",\"columnComment\":\"编号\",\"columnId\":39,\"columnName\":\"no.\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"createTime\":\"2022-10-18 10:34:12\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isPk\":\"1\",\"javaField\":\"no.\",\"javaType\":\"String\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":2,\"superColumn\":false,\"tableId\":8,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"DeviceType\",\"columnComment\":\"设备类型\",\"columnId\":40,\"columnName\":\"device_type\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"createTime\":\"2022-10-18 10:34:12\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"select\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"javaField\":\"deviceType\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":false,\"sort\":3,\"superColumn\":false,\"tableId\":8,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"DeviceModel\",\"columnComment\":\"设备型号\",\"columnId\":41,\"columnName\":\"device_model\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"createTime\":\"2022-10-18 10:34:12\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"javaField\":\"deviceModel\",\"javaType\":\"String\",\"list\":tr', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-10-18 10:42:37');
INSERT INTO `sys_oper_log` VALUES (324, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', NULL, '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{}', NULL, 0, NULL, '2022-10-18 10:42:47');
INSERT INTO `sys_oper_log` VALUES (325, '代码生成', 3, 'com.ruoyi.generator.controller.GenController.remove()', 'DELETE', 1, 'admin', NULL, '/tool/gen/8', '127.0.0.1', '内网IP', '{tableIds=8}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-10-18 10:50:17');
INSERT INTO `sys_oper_log` VALUES (326, '代码生成', 6, 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', NULL, '/tool/gen/importTable', '127.0.0.1', '内网IP', 'asset_switch', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-10-18 10:50:26');
INSERT INTO `sys_oper_log` VALUES (327, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', NULL, '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"switchman\",\"className\":\"AssetSwitch\",\"columns\":[{\"capJavaField\":\"Sn\",\"columnComment\":\"SN编号\",\"columnId\":47,\"columnName\":\"sn\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"createTime\":\"2022-10-18 10:50:26\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"javaField\":\"sn\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":9,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"No\",\"columnComment\":\"编号\",\"columnId\":48,\"columnName\":\"no\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"createTime\":\"2022-10-18 10:50:26\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isPk\":\"1\",\"javaField\":\"no\",\"javaType\":\"String\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":2,\"superColumn\":false,\"tableId\":9,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"DeviceType\",\"columnComment\":\"设备类型\",\"columnId\":49,\"columnName\":\"device_type\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"createTime\":\"2022-10-18 10:50:26\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"select\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"javaField\":\"deviceType\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":false,\"sort\":3,\"superColumn\":false,\"tableId\":9,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"DeviceModel\",\"columnComment\":\"设备型号\",\"columnId\":50,\"columnName\":\"device_model\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"createTime\":\"2022-10-18 10:50:26\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"javaField\":\"deviceModel\",\"javaType\":\"String\",\"list\":true,\"params\"', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-10-18 10:51:26');
INSERT INTO `sys_oper_log` VALUES (328, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', NULL, '/system/menu/2052', '127.0.0.1', '内网IP', '{menuId=2052}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-10-18 10:51:37');
INSERT INTO `sys_oper_log` VALUES (329, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', NULL, '/system/menu/2053', '127.0.0.1', '内网IP', '{menuId=2053}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-10-18 10:51:40');
INSERT INTO `sys_oper_log` VALUES (330, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', NULL, '/system/menu/2054', '127.0.0.1', '内网IP', '{menuId=2054}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-10-18 10:51:42');
INSERT INTO `sys_oper_log` VALUES (331, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', NULL, '/system/menu/2055', '127.0.0.1', '内网IP', '{menuId=2055}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-10-18 10:51:44');
INSERT INTO `sys_oper_log` VALUES (332, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', NULL, '/system/menu/2056', '127.0.0.1', '内网IP', '{menuId=2056}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-10-18 10:51:46');
INSERT INTO `sys_oper_log` VALUES (333, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', NULL, '/system/menu/2051', '127.0.0.1', '内网IP', '{menuId=2051}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-10-18 10:51:49');
INSERT INTO `sys_oper_log` VALUES (334, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', NULL, '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{}', NULL, 0, NULL, '2022-10-18 10:52:13');
INSERT INTO `sys_oper_log` VALUES (335, '交换机管理', 1, 'com.ruoyi.web.controller.sw.AssetSwitchController.add()', 'POST', 1, 'admin', NULL, '/sw/switchman', '127.0.0.1', '内网IP', '{\"businessType\":\"1\",\"cabinetNo\":\"321312\",\"deviceModel\":\"312312\",\"manegeIp\":\"312321\",\"params\":{},\"portInterconnetion\":\"3123\",\"room\":\"3213\",\"sn\":\"3213\"}', NULL, 1, '\r\n### Error updating database.  Cause: java.sql.SQLException: Field \'no\' doesn\'t have a default value\r\n### The error may exist in file [D:\\Code\\Cmdb\\asset_management\\target\\classes\\mapper\\sw\\AssetSwitchMapper.xml]\r\n### The error may involve com.yuanzi.sw.mapper.sw.AssetSwitchMapper.insertAssetSwitch-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into asset_switch          ( sn,                                       device_model,             manege_IP,             cabinet_No,             room,             business_type,             port_interconnetion )           values ( ?,                                       ?,             ?,             ?,             ?,             ?,             ? )\r\n### Cause: java.sql.SQLException: Field \'no\' doesn\'t have a default value\n; Field \'no\' doesn\'t have a default value; nested exception is java.sql.SQLException: Field \'no\' doesn\'t have a default value', '2022-10-18 11:59:58');
INSERT INTO `sys_oper_log` VALUES (336, '交换机管理', 1, 'com.ruoyi.web.controller.sw.AssetSwitchController.add()', 'POST', 1, 'admin', NULL, '/sw/switchman', '127.0.0.1', '内网IP', '{\"businessType\":\"1\",\"cabinetNo\":\"321312\",\"deviceModel\":\"312312\",\"manegeIp\":\"312321\",\"params\":{},\"portInterconnetion\":\"3123\",\"room\":\"3213\",\"sn\":\"3213\"}', NULL, 1, '\r\n### Error updating database.  Cause: java.sql.SQLException: Field \'no\' doesn\'t have a default value\r\n### The error may exist in file [D:\\Code\\Cmdb\\asset_management\\target\\classes\\mapper\\sw\\AssetSwitchMapper.xml]\r\n### The error may involve com.yuanzi.sw.mapper.sw.AssetSwitchMapper.insertAssetSwitch-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into asset_switch          ( sn,                                       device_model,             manege_IP,             cabinet_No,             room,             business_type,             port_interconnetion )           values ( ?,                                       ?,             ?,             ?,             ?,             ?,             ? )\r\n### Cause: java.sql.SQLException: Field \'no\' doesn\'t have a default value\n; Field \'no\' doesn\'t have a default value; nested exception is java.sql.SQLException: Field \'no\' doesn\'t have a default value', '2022-10-18 12:00:02');
INSERT INTO `sys_oper_log` VALUES (337, '交换机管理', 1, 'com.ruoyi.web.controller.sw.AssetSwitchController.add()', 'POST', 1, 'admin', NULL, '/sw/switchman', '127.0.0.1', '内网IP', '{\"businessType\":\"2\",\"cabinetNo\":\"4234234\",\"deviceModel\":\"42342\",\"manegeIp\":\"423423\",\"params\":{},\"portInterconnetion\":\"42343\",\"room\":\"234234\",\"sn\":\"342\"}', NULL, 1, '\r\n### Error updating database.  Cause: java.sql.SQLException: Field \'no\' doesn\'t have a default value\r\n### The error may exist in file [D:\\Code\\Cmdb\\asset_management\\target\\classes\\mapper\\sw\\AssetSwitchMapper.xml]\r\n### The error may involve com.yuanzi.sw.mapper.sw.AssetSwitchMapper.insertAssetSwitch-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into asset_switch          ( sn,                                       device_model,             manege_IP,             cabinet_No,             room,             business_type,             port_interconnetion )           values ( ?,                                       ?,             ?,             ?,             ?,             ?,             ? )\r\n### Cause: java.sql.SQLException: Field \'no\' doesn\'t have a default value\n; Field \'no\' doesn\'t have a default value; nested exception is java.sql.SQLException: Field \'no\' doesn\'t have a default value', '2022-10-18 14:04:25');
INSERT INTO `sys_oper_log` VALUES (338, '交换机管理', 1, 'com.ruoyi.web.controller.sw.AssetSwitchController.add()', 'POST', 1, 'admin', NULL, '/sw/switchman', '127.0.0.1', '内网IP', '{\"businessType\":\"3\",\"cabinetNo\":\"432\",\"deviceModel\":\"4324\",\"manegeIp\":\"4234\",\"params\":{},\"portInterconnetion\":\"423\",\"room\":\"423\",\"sn\":\"432\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-10-18 14:06:14');
INSERT INTO `sys_oper_log` VALUES (339, '代码生成', 3, 'com.ruoyi.generator.controller.GenController.remove()', 'DELETE', 1, 'admin', NULL, '/tool/gen/9', '127.0.0.1', '内网IP', '{tableIds=9}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-10-18 14:06:35');
INSERT INTO `sys_oper_log` VALUES (340, '代码生成', 6, 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', NULL, '/tool/gen/importTable', '127.0.0.1', '内网IP', 'asset_switch', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-10-18 14:06:44');
INSERT INTO `sys_oper_log` VALUES (341, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', NULL, '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"switchMan\",\"className\":\"AssetSwitch\",\"columns\":[{\"capJavaField\":\"Sn\",\"columnComment\":\"SN编号\",\"columnId\":56,\"columnName\":\"sn\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"createTime\":\"2022-10-18 14:06:44\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"javaField\":\"sn\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":10,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"DeviceType\",\"columnComment\":\"设备类型\",\"columnId\":57,\"columnName\":\"device_type\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"createTime\":\"2022-10-18 14:06:44\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"select\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"javaField\":\"deviceType\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":false,\"sort\":2,\"superColumn\":false,\"tableId\":10,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"DeviceModel\",\"columnComment\":\"设备型号\",\"columnId\":58,\"columnName\":\"device_model\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"createTime\":\"2022-10-18 14:06:44\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"javaField\":\"deviceModel\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":false,\"sort\":3,\"superColumn\":false,\"tableId\":10,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"ManegeIp\",\"columnComment\":\"管理IP\",\"columnId\":59,\"columnName\":\"manege_IP\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"createTime\":\"2022-10-18 14:06:44\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-10-18 14:07:41');
INSERT INTO `sys_oper_log` VALUES (342, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', NULL, '/system/menu/2062', '127.0.0.1', '内网IP', '{menuId=2062}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-10-18 14:07:59');
INSERT INTO `sys_oper_log` VALUES (343, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', NULL, '/system/menu/2061', '127.0.0.1', '内网IP', '{menuId=2061}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-10-18 14:08:01');
INSERT INTO `sys_oper_log` VALUES (344, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', NULL, '/system/menu/2060', '127.0.0.1', '内网IP', '{menuId=2060}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-10-18 14:08:02');
INSERT INTO `sys_oper_log` VALUES (345, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', NULL, '/system/menu/2059', '127.0.0.1', '内网IP', '{menuId=2059}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-10-18 14:08:04');
INSERT INTO `sys_oper_log` VALUES (346, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', NULL, '/system/menu/2058', '127.0.0.1', '内网IP', '{menuId=2058}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-10-18 14:08:06');
INSERT INTO `sys_oper_log` VALUES (347, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', NULL, '/system/menu/2057', '127.0.0.1', '内网IP', '{menuId=2057}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-10-18 14:08:08');
INSERT INTO `sys_oper_log` VALUES (348, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', NULL, '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{}', NULL, 0, NULL, '2022-10-18 14:08:19');
INSERT INTO `sys_oper_log` VALUES (349, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', NULL, '/system/menu/2064', '127.0.0.1', '内网IP', '{menuId=2064}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-10-18 14:20:48');
INSERT INTO `sys_oper_log` VALUES (350, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', NULL, '/system/menu/2065', '127.0.0.1', '内网IP', '{menuId=2065}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-10-18 14:20:49');
INSERT INTO `sys_oper_log` VALUES (351, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', NULL, '/system/menu/2066', '127.0.0.1', '内网IP', '{menuId=2066}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-10-18 14:20:52');
INSERT INTO `sys_oper_log` VALUES (352, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', NULL, '/system/menu/2067', '127.0.0.1', '内网IP', '{menuId=2067}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-10-18 14:20:53');
INSERT INTO `sys_oper_log` VALUES (353, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', NULL, '/system/menu/2068', '127.0.0.1', '内网IP', '{menuId=2068}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-10-18 14:20:56');
INSERT INTO `sys_oper_log` VALUES (354, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', NULL, '/system/menu/2063', '127.0.0.1', '内网IP', '{menuId=2063}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-10-18 14:20:57');
INSERT INTO `sys_oper_log` VALUES (355, '交换机管理', 3, 'com.yuanzi.sw.controller.AssetSwitchController.remove()', 'DELETE', 1, 'admin', NULL, '/sw/switchMan/432', '127.0.0.1', '内网IP', '{sns=432}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-10-18 14:26:18');
INSERT INTO `sys_oper_log` VALUES (356, '交换机管理', 2, 'com.yuanzi.sw.controller.AssetSwitchController.edit()', 'PUT', 1, 'admin', NULL, '/sw/switchMan', '127.0.0.1', '内网IP', '{\"businessType\":\"1\",\"cabinetNo\":\"12312312\",\"deviceModel\":\"3123\",\"manegeIp\":\"3123\",\"params\":{},\"portInterconnetion\":\"32131\",\"room\":\"312321321\",\"sn\":\"321312\"}', '{\"msg\":\"操作失败\",\"code\":500}', 0, NULL, '2022-10-18 14:26:32');
INSERT INTO `sys_oper_log` VALUES (357, '交换机管理', 2, 'com.yuanzi.sw.controller.AssetSwitchController.edit()', 'PUT', 1, 'admin', NULL, '/sw/switchMan', '127.0.0.1', '内网IP', '{\"businessType\":\"1\",\"cabinetNo\":\"12312312\",\"deviceModel\":\"3123\",\"manegeIp\":\"3123\",\"params\":{},\"portInterconnetion\":\"32131\",\"room\":\"312321321\",\"sn\":\"321312\"}', '{\"msg\":\"操作失败\",\"code\":500}', 0, NULL, '2022-10-18 14:26:41');
INSERT INTO `sys_oper_log` VALUES (358, '交换机管理', 2, 'com.yuanzi.sw.controller.AssetSwitchController.edit()', 'PUT', 1, 'admin', NULL, '/sw/switchMan', '127.0.0.1', '内网IP', '{\"businessType\":\"1\",\"cabinetNo\":\"12312312\",\"deviceModel\":\"3123\",\"manegeIp\":\"3123\",\"params\":{},\"portInterconnetion\":\"32131\",\"room\":\"312321321\",\"sn\":\"321312\"}', '{\"msg\":\"操作失败\",\"code\":500}', 0, NULL, '2022-10-18 14:26:43');
INSERT INTO `sys_oper_log` VALUES (359, '交换机管理', 3, 'com.yuanzi.sw.controller.AssetSwitchController.remove()', 'DELETE', 1, 'admin', NULL, '/sw/switchMan/2313', '127.0.0.1', '内网IP', '{sns=2313}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-10-18 14:27:12');
INSERT INTO `sys_oper_log` VALUES (360, '交换机管理', 2, 'com.yuanzi.sw.controller.AssetSwitchController.edit()', 'PUT', 1, 'admin', NULL, '/sw/switchMan', '127.0.0.1', '内网IP', '{\"businessType\":\"电信\",\"cabinetNo\":\"EQU017\",\"deviceModel\":\"曙光 I420-G20\",\"deviceType\":\"服务器\",\"manegeIp\":\"61.159.95.42\",\"params\":{},\"room\":\"兰州电信（十里店）\",\"sn\":\"9800093600762795\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-10-18 14:52:58');
INSERT INTO `sys_oper_log` VALUES (361, '交换机管理', 2, 'com.yuanzi.sw.controller.AssetSwitchController.edit()', 'PUT', 1, 'admin', NULL, '/sw/switchMan', '127.0.0.1', '内网IP', '{\"businessType\":\"2\",\"cabinetNo\":\"EQU017\",\"deviceModel\":\"曙光 I420-G20\",\"deviceType\":\"服务器\",\"manegeIp\":\"61.159.95.42\",\"params\":{},\"room\":\"兰州电信（十里店）\",\"sn\":\"9800093600762795\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-10-18 14:53:04');
INSERT INTO `sys_oper_log` VALUES (362, '交换机管理', 2, 'com.yuanzi.sw.controller.AssetSwitchController.edit()', 'PUT', 1, 'admin', NULL, '/sw/switchMan', '127.0.0.1', '内网IP', '{\"businessType\":\"3\",\"cabinetNo\":\"EQU017\",\"deviceModel\":\"曙光 I420-G20\",\"deviceType\":\"服务器\",\"manegeIp\":\"61.159.95.42\",\"params\":{},\"room\":\"兰州电信（十里店）\",\"sn\":\"9800093600762795\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-10-18 14:53:11');
INSERT INTO `sys_oper_log` VALUES (363, '交换机管理', 2, 'com.yuanzi.sw.controller.AssetSwitchController.edit()', 'PUT', 1, 'admin', NULL, '/sw/switchMan', '127.0.0.1', '内网IP', '{\"businessType\":\"3\",\"cabinetNo\":\"EQU017\",\"deviceModel\":\"曙光 I420-G20\",\"deviceType\":\"服务器\",\"manegeIp\":\"61.159.95.43\",\"params\":{},\"room\":\"兰州电信（十里店）\",\"sn\":\"9800093600762796\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-10-18 14:54:02');
INSERT INTO `sys_oper_log` VALUES (364, '交换机管理', 2, 'com.yuanzi.sw.controller.AssetSwitchController.edit()', 'PUT', 1, 'admin', NULL, '/sw/switchMan', '127.0.0.1', '内网IP', '{\"businessType\":\"3\",\"cabinetNo\":\"EQU018\",\"deviceModel\":\"锐捷s6220\",\"deviceType\":\"交换机\",\"manegeIp\":\"61.159.95.33\",\"params\":{},\"room\":\"兰州电信（十里店）\",\"sn\":\"G1M81AD000767\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-10-18 14:54:09');
INSERT INTO `sys_oper_log` VALUES (365, '交换机管理', 2, 'com.yuanzi.sw.controller.AssetSwitchController.edit()', 'PUT', 1, 'admin', NULL, '/sw/switchMan', '127.0.0.1', '内网IP', '{\"businessType\":\"3\",\"cabinetNo\":\"EQU018\",\"deviceModel\":\"曙光 I620-G20\",\"deviceType\":\"服务器\",\"manegeIp\":\"61.159.95.44\",\"params\":{},\"room\":\"兰州电信（十里店）\",\"sn\":\"9800093600762793\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-10-18 14:54:57');
INSERT INTO `sys_oper_log` VALUES (366, '交换机管理', 2, 'com.yuanzi.sw.controller.AssetSwitchController.edit()', 'PUT', 1, 'admin', NULL, '/sw/switchMan', '127.0.0.1', '内网IP', '{\"businessType\":\"3\",\"cabinetNo\":\"EQU018\",\"deviceModel\":\"曙光 I620-G20\",\"deviceType\":\"服务器\",\"manegeIp\":\"61.159.95.45\",\"params\":{},\"room\":\"兰州电信（十里店）\",\"sn\":\"9800093600762797\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-10-18 14:55:02');
INSERT INTO `sys_oper_log` VALUES (367, '交换机管理', 2, 'com.yuanzi.sw.controller.AssetSwitchController.edit()', 'PUT', 1, 'admin', NULL, '/sw/switchMan', '127.0.0.1', '内网IP', '{\"businessType\":\"3\",\"cabinetNo\":\"EQU018\",\"deviceModel\":\"曙光 I620-G20\",\"deviceType\":\"服务器\",\"manegeIp\":\"61.159.95.46\",\"params\":{},\"room\":\"兰州电信（十里店）\",\"sn\":\"9800093600762798\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-10-18 14:55:07');
INSERT INTO `sys_oper_log` VALUES (368, '交换机管理', 2, 'com.yuanzi.sw.controller.AssetSwitchController.edit()', 'PUT', 1, 'admin', NULL, '/sw/switchMan', '127.0.0.1', '内网IP', '{\"businessType\":\"3\",\"cabinetNo\":\"EQU018\",\"deviceModel\":\"曙光 I420-G20\",\"deviceType\":\"服务器\",\"manegeIp\":\"61.159.95.47\",\"params\":{},\"room\":\"兰州电信（十里店）\",\"sn\":\"6101093101341327\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-10-18 14:55:12');
INSERT INTO `sys_oper_log` VALUES (369, '交换机管理', 2, 'com.yuanzi.sw.controller.AssetSwitchController.edit()', 'PUT', 1, 'admin', NULL, '/sw/switchMan', '127.0.0.1', '内网IP', '{\"businessType\":\"3\",\"cabinetNo\":\"EQU018\",\"deviceModel\":\"曙光 I420-G20\",\"deviceType\":\"服务器\",\"manegeIp\":\"61.159.95.48\",\"params\":{},\"room\":\"兰州电信（十里店）\",\"sn\":\"6101093101343637\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-10-18 14:55:16');
INSERT INTO `sys_oper_log` VALUES (370, '交换机管理', 2, 'com.yuanzi.sw.controller.AssetSwitchController.edit()', 'PUT', 1, 'admin', NULL, '/sw/switchMan', '127.0.0.1', '内网IP', '{\"businessType\":\"3\",\"cabinetNo\":\"EQU018\",\"deviceModel\":\"曙光 I420-G20\",\"deviceType\":\"服务器\",\"manegeIp\":\"61.159.95.49\",\"params\":{},\"room\":\"兰州电信（十里店）\",\"sn\":\"6101093101343645\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-10-18 14:55:20');
INSERT INTO `sys_oper_log` VALUES (371, '交换机管理', 2, 'com.yuanzi.sw.controller.AssetSwitchController.edit()', 'PUT', 1, 'admin', NULL, '/sw/switchMan', '127.0.0.1', '内网IP', '{\"businessType\":\"3\",\"cabinetNo\":\"EQU018\",\"deviceModel\":\"曙光 I420-G20\",\"deviceType\":\"服务器\",\"manegeIp\":\"61.159.95.50\",\"params\":{},\"room\":\"兰州电信（十里店）\",\"sn\":\"6101093101343646\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-10-18 14:55:25');
INSERT INTO `sys_oper_log` VALUES (372, '交换机管理', 2, 'com.yuanzi.sw.controller.AssetSwitchController.edit()', 'PUT', 1, 'admin', NULL, '/sw/switchMan', '127.0.0.1', '内网IP', '{\"businessType\":\"3\",\"cabinetNo\":\"EQU018\",\"deviceModel\":\"曙光 I420-G20\",\"deviceType\":\"服务器\",\"manegeIp\":\"61.159.95.51\",\"params\":{},\"room\":\"兰州电信（十里店）\",\"sn\":\"6101093101343647\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-10-18 14:55:29');
INSERT INTO `sys_oper_log` VALUES (373, '交换机管理', 2, 'com.yuanzi.sw.controller.AssetSwitchController.edit()', 'PUT', 1, 'admin', NULL, '/sw/switchMan', '127.0.0.1', '内网IP', '{\"businessType\":\"3\",\"cabinetNo\":\"EQU018\",\"deviceModel\":\"曙光 I420-G20\",\"deviceType\":\"服务器\",\"manegeIp\":\"61.159.95.52\",\"params\":{},\"room\":\"兰州电信（十里店）\",\"sn\":\"6101093101343648\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-10-18 14:55:34');
INSERT INTO `sys_oper_log` VALUES (374, '交换机管理', 2, 'com.yuanzi.sw.controller.AssetSwitchController.edit()', 'PUT', 1, 'admin', NULL, '/sw/switchMan', '127.0.0.1', '内网IP', '{\"businessType\":\"3\",\"cabinetNo\":\"EQU018\",\"deviceModel\":\"曙光 I420-G20\",\"deviceType\":\"服务器\",\"manegeIp\":\"61.159.95.53\",\"params\":{},\"room\":\"兰州电信（十里店）\",\"sn\":\"6101093101345108\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-10-18 14:55:38');
INSERT INTO `sys_oper_log` VALUES (375, '交换机管理', 2, 'com.yuanzi.sw.controller.AssetSwitchController.edit()', 'PUT', 1, 'admin', NULL, '/sw/switchMan', '127.0.0.1', '内网IP', '{\"businessType\":\"3\",\"cabinetNo\":\"EQU019\",\"deviceModel\":\"华为s6700\",\"deviceType\":\"交换机\",\"params\":{},\"room\":\"兰州电信（十里店）\",\"sn\":\"210235276710EB000045\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-10-18 14:55:43');
INSERT INTO `sys_oper_log` VALUES (376, '交换机管理', 2, 'com.yuanzi.sw.controller.AssetSwitchController.edit()', 'PUT', 1, 'admin', NULL, '/sw/switchMan', '127.0.0.1', '内网IP', '{\"businessType\":\"3\",\"cabinetNo\":\"EQU019\",\"deviceModel\":\"跳板机\",\"deviceType\":\"交换机\",\"params\":{},\"room\":\"兰州电信（十里店）\",\"sn\":\"ZX3548658\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-10-18 14:55:48');
INSERT INTO `sys_oper_log` VALUES (377, '交换机管理', 2, 'com.yuanzi.sw.controller.AssetSwitchController.edit()', 'PUT', 1, 'admin', NULL, '/sw/switchMan', '127.0.0.1', '内网IP', '{\"businessType\":\"3\",\"cabinetNo\":\"EQU019\",\"deviceModel\":\"DELL R730X(租用)\",\"deviceType\":\"服务器\",\"manegeIp\":\"118.182.248.1\",\"params\":{},\"room\":\"兰州电信（十里店）\",\"sn\":\"CBZ3GD2\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-10-18 14:55:52');
INSERT INTO `sys_oper_log` VALUES (378, '交换机管理', 3, 'com.yuanzi.sw.controller.AssetSwitchController.remove()', 'DELETE', 1, 'admin', NULL, '/sw/switchMan/4R76BC2', '127.0.0.1', '内网IP', '{sns=4R76BC2}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-10-18 14:55:58');
INSERT INTO `sys_oper_log` VALUES (379, '字典数据', 1, 'com.ruoyi.web.controller.system.SysDictDataController.add()', 'POST', 1, 'admin', NULL, '/system/dict/data', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"dictLabel\":\"边缘计算\",\"dictSort\":4,\"dictType\":\"asset_business\",\"dictValue\":\"4\",\"listClass\":\"default\",\"params\":{},\"remark\":\"边缘计算\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-10-18 15:03:08');
INSERT INTO `sys_oper_log` VALUES (380, '字典数据', 2, 'com.ruoyi.web.controller.system.SysDictDataController.edit()', 'PUT', 1, 'admin', NULL, '/system/dict/data', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"createTime\":\"2022-10-18 15:03:08\",\"dictCode\":100,\"dictLabel\":\"边缘计算\",\"dictSort\":4,\"dictType\":\"asset_business\",\"dictValue\":\"4\",\"isDefault\":\"N\",\"listClass\":\"primary\",\"params\":{},\"remark\":\"边缘计算\",\"status\":\"0\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-10-18 15:03:28');
INSERT INTO `sys_oper_log` VALUES (381, '字典数据', 2, 'com.ruoyi.web.controller.system.SysDictDataController.edit()', 'PUT', 1, 'admin', NULL, '/system/dict/data', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"createTime\":\"2022-10-18 15:03:08\",\"dictCode\":100,\"dictLabel\":\"边缘计算\",\"dictSort\":4,\"dictType\":\"asset_business\",\"dictValue\":\"4\",\"isDefault\":\"N\",\"listClass\":\"success\",\"params\":{},\"remark\":\"边缘计算\",\"status\":\"0\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-10-18 15:03:41');
INSERT INTO `sys_oper_log` VALUES (382, '字典数据', 2, 'com.ruoyi.web.controller.system.SysDictDataController.edit()', 'PUT', 1, 'admin', NULL, '/system/dict/data', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"createTime\":\"2022-10-18 15:03:08\",\"dictCode\":100,\"dictLabel\":\"边缘计算\",\"dictSort\":4,\"dictType\":\"asset_business\",\"dictValue\":\"4\",\"isDefault\":\"N\",\"listClass\":\"info\",\"params\":{},\"remark\":\"边缘计算\",\"status\":\"0\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-10-18 15:03:48');
INSERT INTO `sys_oper_log` VALUES (383, '字典数据', 2, 'com.ruoyi.web.controller.system.SysDictDataController.edit()', 'PUT', 1, 'admin', NULL, '/system/dict/data', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"createTime\":\"2022-10-18 15:03:08\",\"dictCode\":100,\"dictLabel\":\"边缘计算\",\"dictSort\":4,\"dictType\":\"asset_business\",\"dictValue\":\"4\",\"isDefault\":\"N\",\"listClass\":\"warning\",\"params\":{},\"remark\":\"边缘计算\",\"status\":\"0\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-10-18 15:03:57');
INSERT INTO `sys_oper_log` VALUES (384, '字典数据', 2, 'com.ruoyi.web.controller.system.SysDictDataController.edit()', 'PUT', 1, 'admin', NULL, '/system/dict/data', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"createTime\":\"2022-10-18 15:03:08\",\"dictCode\":100,\"dictLabel\":\"边缘计算\",\"dictSort\":4,\"dictType\":\"asset_business\",\"dictValue\":\"4\",\"isDefault\":\"N\",\"listClass\":\"primary\",\"params\":{},\"remark\":\"边缘计算\",\"status\":\"0\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-10-18 15:04:04');
INSERT INTO `sys_oper_log` VALUES (385, '字典数据', 2, 'com.ruoyi.web.controller.system.SysDictDataController.edit()', 'PUT', 1, 'admin', NULL, '/system/dict/data', '127.0.0.1', '内网IP', '{\"createBy\":\"\",\"dictCode\":31,\"dictLabel\":\"电信\",\"dictSort\":3,\"dictType\":\"asset_business\",\"dictValue\":\"3\",\"isDefault\":\"N\",\"listClass\":\"primary\",\"params\":{},\"remark\":\"电信\",\"status\":\"0\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-10-18 15:04:14');
INSERT INTO `sys_oper_log` VALUES (386, '字典数据', 2, 'com.ruoyi.web.controller.system.SysDictDataController.edit()', 'PUT', 1, 'admin', NULL, '/system/dict/data', '127.0.0.1', '内网IP', '{\"createBy\":\"\",\"dictCode\":30,\"dictLabel\":\"联通\",\"dictSort\":2,\"dictType\":\"asset_business\",\"dictValue\":\"2\",\"isDefault\":\"N\",\"listClass\":\"primary\",\"params\":{},\"remark\":\"联通\",\"status\":\"0\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-10-18 15:04:21');
INSERT INTO `sys_oper_log` VALUES (387, '字典数据', 2, 'com.ruoyi.web.controller.system.SysDictDataController.edit()', 'PUT', 1, 'admin', NULL, '/system/dict/data', '127.0.0.1', '内网IP', '{\"createBy\":\"\",\"dictCode\":29,\"dictLabel\":\"移动\",\"dictSort\":1,\"dictType\":\"asset_business\",\"dictValue\":\"1\",\"isDefault\":\"N\",\"listClass\":\"primary\",\"params\":{},\"remark\":\"移动\",\"status\":\"0\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-10-18 15:04:26');
INSERT INTO `sys_oper_log` VALUES (388, '代码生成', 6, 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', NULL, '/tool/gen/importTable', '127.0.0.1', '内网IP', 'biz_book', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-10-18 15:20:09');
INSERT INTO `sys_oper_log` VALUES (389, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', NULL, '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"book\",\"className\":\"BizBook\",\"columns\":[{\"capJavaField\":\"BookId\",\"columnComment\":\"电话本ID\",\"columnId\":64,\"columnName\":\"book_id\",\"columnType\":\"bigint\",\"createBy\":\"admin\",\"createTime\":\"2022-10-18 15:20:09\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":true,\"isIncrement\":\"1\",\"isInsert\":\"1\",\"isPk\":\"1\",\"javaField\":\"bookId\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":11,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"BookName\",\"columnComment\":\"姓名\",\"columnId\":65,\"columnName\":\"book_name\",\"columnType\":\"varchar(50)\",\"createBy\":\"admin\",\"createTime\":\"2022-10-18 15:20:09\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"bookName\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":true,\"sort\":2,\"superColumn\":false,\"tableId\":11,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"BookPhone\",\"columnComment\":\"手机号\",\"columnId\":66,\"columnName\":\"book_phone\",\"columnType\":\"varchar(50)\",\"createBy\":\"admin\",\"createTime\":\"2022-10-18 15:20:09\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"bookPhone\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":true,\"sort\":3,\"superColumn\":false,\"tableId\":11,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"BookBirthday\",\"columnComment\":\"生日\",\"columnId\":67,\"columnName\":\"book_birthday\",\"columnType\":\"datetime\",\"createBy\":\"admin\",\"createTime\":\"2022-10-18 15:20:09\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"datetime\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"java', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-10-18 15:21:49');
INSERT INTO `sys_oper_log` VALUES (390, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', NULL, '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{}', NULL, 0, NULL, '2022-10-18 15:21:52');
INSERT INTO `sys_oper_log` VALUES (391, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', NULL, '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"book\",\"className\":\"BizBook\",\"columns\":[{\"capJavaField\":\"BookId\",\"columnComment\":\"电话本ID\",\"columnId\":64,\"columnName\":\"book_id\",\"columnType\":\"bigint\",\"createBy\":\"admin\",\"createTime\":\"2022-10-18 15:20:09\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":true,\"isIncrement\":\"1\",\"isInsert\":\"1\",\"isPk\":\"1\",\"javaField\":\"bookId\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":11,\"updateBy\":\"\",\"updateTime\":\"2022-10-18 15:21:49\",\"usableColumn\":false},{\"capJavaField\":\"BookName\",\"columnComment\":\"姓名\",\"columnId\":65,\"columnName\":\"book_name\",\"columnType\":\"varchar(50)\",\"createBy\":\"admin\",\"createTime\":\"2022-10-18 15:20:09\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"bookName\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":true,\"sort\":2,\"superColumn\":false,\"tableId\":11,\"updateBy\":\"\",\"updateTime\":\"2022-10-18 15:21:49\",\"usableColumn\":false},{\"capJavaField\":\"BookPhone\",\"columnComment\":\"手机号\",\"columnId\":66,\"columnName\":\"book_phone\",\"columnType\":\"varchar(50)\",\"createBy\":\"admin\",\"createTime\":\"2022-10-18 15:20:09\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"bookPhone\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":true,\"sort\":3,\"superColumn\":false,\"tableId\":11,\"updateBy\":\"\",\"updateTime\":\"2022-10-18 15:21:49\",\"usableColumn\":false},{\"capJavaField\":\"BookBirthday\",\"columnComment\":\"生日\",\"columnId\":67,\"columnName\":\"book_birthday\",\"columnType\":\"datetime\",\"createBy\":\"admin\",\"createTime\":\"2022-10-18 15:20:09\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"datetime\",\"increment\":false,\"insert\":true,\"', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-10-18 15:31:56');
INSERT INTO `sys_oper_log` VALUES (392, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', NULL, '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{}', NULL, 0, NULL, '2022-10-18 15:31:58');
INSERT INTO `sys_oper_log` VALUES (393, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', NULL, '/system/menu/2076', '127.0.0.1', '内网IP', '{menuId=2076}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-10-18 15:37:57');
INSERT INTO `sys_oper_log` VALUES (394, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', NULL, '/system/menu/2077', '127.0.0.1', '内网IP', '{menuId=2077}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-10-18 15:37:59');
INSERT INTO `sys_oper_log` VALUES (395, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', NULL, '/system/menu/2078', '127.0.0.1', '内网IP', '{menuId=2078}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-10-18 15:38:00');
INSERT INTO `sys_oper_log` VALUES (396, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', NULL, '/system/menu/2079', '127.0.0.1', '内网IP', '{menuId=2079}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-10-18 15:38:02');
INSERT INTO `sys_oper_log` VALUES (397, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', NULL, '/system/menu/2080', '127.0.0.1', '内网IP', '{menuId=2080}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-10-18 15:38:05');
INSERT INTO `sys_oper_log` VALUES (398, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', NULL, '/system/menu/2075', '127.0.0.1', '内网IP', '{menuId=2075}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-10-18 15:38:11');
INSERT INTO `sys_oper_log` VALUES (399, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', NULL, '/system/menu/2082', '127.0.0.1', '内网IP', '{menuId=2082}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-10-18 15:38:32');
INSERT INTO `sys_oper_log` VALUES (400, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', NULL, '/system/menu/2083', '127.0.0.1', '内网IP', '{menuId=2083}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-10-18 15:38:37');
INSERT INTO `sys_oper_log` VALUES (401, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', NULL, '/system/menu/2084', '127.0.0.1', '内网IP', '{menuId=2084}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-10-18 15:38:39');
INSERT INTO `sys_oper_log` VALUES (402, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', NULL, '/system/menu/2085', '127.0.0.1', '内网IP', '{menuId=2085}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-10-18 15:38:40');
INSERT INTO `sys_oper_log` VALUES (403, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', NULL, '/system/menu/2086', '127.0.0.1', '内网IP', '{menuId=2086}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-10-18 15:38:45');
INSERT INTO `sys_oper_log` VALUES (404, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', NULL, '/system/menu/2069', '127.0.0.1', '内网IP', '{menuId=2069}', '{\"msg\":\"存在子菜单,不允许删除\",\"code\":500}', 0, NULL, '2022-10-18 15:38:49');
INSERT INTO `sys_oper_log` VALUES (405, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', NULL, '/system/menu/2081', '127.0.0.1', '内网IP', '{menuId=2081}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-10-18 15:38:52');
INSERT INTO `sys_oper_log` VALUES (406, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', NULL, '/system/menu/2088', '127.0.0.1', '内网IP', '{menuId=2088}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-10-18 15:40:05');
INSERT INTO `sys_oper_log` VALUES (407, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', NULL, '/system/menu/2089', '127.0.0.1', '内网IP', '{menuId=2089}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-10-18 15:40:06');
INSERT INTO `sys_oper_log` VALUES (408, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', NULL, '/system/menu/2090', '127.0.0.1', '内网IP', '{menuId=2090}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-10-18 15:40:07');
INSERT INTO `sys_oper_log` VALUES (409, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', NULL, '/system/menu/2091', '127.0.0.1', '内网IP', '{menuId=2091}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-10-18 15:40:09');
INSERT INTO `sys_oper_log` VALUES (410, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', NULL, '/system/menu/2092', '127.0.0.1', '内网IP', '{menuId=2092}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-10-18 15:40:11');
INSERT INTO `sys_oper_log` VALUES (411, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', NULL, '/system/menu/2087', '127.0.0.1', '内网IP', '{menuId=2087}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-10-18 15:40:14');
INSERT INTO `sys_oper_log` VALUES (412, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', NULL, '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"book\",\"className\":\"BizBook\",\"columns\":[{\"capJavaField\":\"BookId\",\"columnComment\":\"电话本ID\",\"columnId\":64,\"columnName\":\"book_id\",\"columnType\":\"bigint\",\"createBy\":\"admin\",\"createTime\":\"2022-10-18 15:20:09\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":true,\"isIncrement\":\"1\",\"isInsert\":\"1\",\"isPk\":\"1\",\"javaField\":\"bookId\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":11,\"updateBy\":\"\",\"updateTime\":\"2022-10-18 15:31:56\",\"usableColumn\":false},{\"capJavaField\":\"BookName\",\"columnComment\":\"姓名\",\"columnId\":65,\"columnName\":\"book_name\",\"columnType\":\"varchar(50)\",\"createBy\":\"admin\",\"createTime\":\"2022-10-18 15:20:09\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"bookName\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":true,\"sort\":2,\"superColumn\":false,\"tableId\":11,\"updateBy\":\"\",\"updateTime\":\"2022-10-18 15:31:56\",\"usableColumn\":false},{\"capJavaField\":\"BookPhone\",\"columnComment\":\"手机号\",\"columnId\":66,\"columnName\":\"book_phone\",\"columnType\":\"varchar(50)\",\"createBy\":\"admin\",\"createTime\":\"2022-10-18 15:20:09\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"bookPhone\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":true,\"sort\":3,\"superColumn\":false,\"tableId\":11,\"updateBy\":\"\",\"updateTime\":\"2022-10-18 15:31:56\",\"usableColumn\":false},{\"capJavaField\":\"BookBirthday\",\"columnComment\":\"生日\",\"columnId\":67,\"columnName\":\"book_birthday\",\"columnType\":\"datetime\",\"createBy\":\"admin\",\"createTime\":\"2022-10-18 15:20:09\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"datetime\",\"increment\":false,\"insert\":true,\"', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-10-18 15:42:58');
INSERT INTO `sys_oper_log` VALUES (413, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', NULL, '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{}', NULL, 0, NULL, '2022-10-18 15:43:04');
INSERT INTO `sys_oper_log` VALUES (414, '电话本', 1, 'com.ruoyi.system.controller.BizBookController.add()', 'POST', 1, 'admin', NULL, '/system/book', '127.0.0.1', '内网IP', '{\"bookBirthday\":\"2022-10-19 00:00:00\",\"bookId\":1,\"bookName\":\"李进元\",\"bookPhone\":\"17354394275\",\"createTime\":\"2022-10-18T15:45:23.682+08:00\",\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-10-18 15:45:23');
INSERT INTO `sys_oper_log` VALUES (415, '电话本', 1, 'com.ruoyi.system.controller.BizBookController.add()', 'POST', 1, 'admin', NULL, '/system/book', '127.0.0.1', '内网IP', '{\"bookBirthday\":\"2022-10-13 00:00:00\",\"bookId\":2,\"bookName\":\"231\",\"bookPhone\":\"3123\",\"createTime\":\"2022-10-18T15:46:25.078+08:00\",\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-10-18 15:46:25');
INSERT INTO `sys_oper_log` VALUES (416, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"createTime\":\"2022-10-12 15:38:06\",\"icon\":\"documentation\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2007,\"menuName\":\"技术文档库\",\"menuType\":\"M\",\"orderNum\":60,\"params\":{},\"parentId\":0,\"path\":\"https://yuanzigsa.top/\",\"perms\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-10-18 15:58:17');
INSERT INTO `sys_oper_log` VALUES (417, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"createTime\":\"2022-10-12 15:38:06\",\"icon\":\"documentation\",\"isCache\":\"0\",\"isFrame\":\"0\",\"menuId\":2007,\"menuName\":\"技术文档库\",\"menuType\":\"M\",\"orderNum\":60,\"params\":{},\"parentId\":0,\"path\":\"https://yuanzigsa.top/\",\"perms\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-10-18 15:58:33');
INSERT INTO `sys_oper_log` VALUES (418, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"createTime\":\"2022-10-12 15:38:06\",\"icon\":\"documentation\",\"isCache\":\"0\",\"isFrame\":\"0\",\"menuId\":2007,\"menuName\":\"技术文档库\",\"menuType\":\"M\",\"orderNum\":60,\"params\":{},\"parentId\":0,\"path\":\"https://yuanzigsa.top/\",\"perms\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-10-18 15:58:47');
INSERT INTO `sys_oper_log` VALUES (419, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', NULL, '/system/menu/2094', '127.0.0.1', '内网IP', '{menuId=2094}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-10-18 16:08:58');
INSERT INTO `sys_oper_log` VALUES (420, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', NULL, '/system/menu/2095', '127.0.0.1', '内网IP', '{menuId=2095}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-10-18 16:09:00');
INSERT INTO `sys_oper_log` VALUES (421, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', NULL, '/system/menu/2096', '127.0.0.1', '内网IP', '{menuId=2096}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-10-18 16:09:02');
INSERT INTO `sys_oper_log` VALUES (422, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', NULL, '/system/menu/2097', '127.0.0.1', '内网IP', '{menuId=2097}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-10-18 16:09:03');
INSERT INTO `sys_oper_log` VALUES (423, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', NULL, '/system/menu/2098', '127.0.0.1', '内网IP', '{menuId=2098}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-10-18 16:09:05');
INSERT INTO `sys_oper_log` VALUES (424, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', NULL, '/system/menu/2093', '127.0.0.1', '内网IP', '{menuId=2093}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-10-18 16:09:09');
INSERT INTO `sys_oper_log` VALUES (425, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', NULL, '/system/menu/2070', '127.0.0.1', '内网IP', '{menuId=2070}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-10-18 16:09:13');
INSERT INTO `sys_oper_log` VALUES (426, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', NULL, '/system/menu/2071', '127.0.0.1', '内网IP', '{menuId=2071}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-10-18 16:09:15');
INSERT INTO `sys_oper_log` VALUES (427, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', NULL, '/system/menu/2072', '127.0.0.1', '内网IP', '{menuId=2072}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-10-18 16:09:17');
INSERT INTO `sys_oper_log` VALUES (428, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', NULL, '/system/menu/2073', '127.0.0.1', '内网IP', '{menuId=2073}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-10-18 16:09:18');
INSERT INTO `sys_oper_log` VALUES (429, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', NULL, '/system/menu/2074', '127.0.0.1', '内网IP', '{menuId=2074}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-10-18 16:09:20');
INSERT INTO `sys_oper_log` VALUES (430, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', NULL, '/system/menu/2069', '127.0.0.1', '内网IP', '{menuId=2069}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-10-18 16:09:22');
INSERT INTO `sys_oper_log` VALUES (431, '代码生成', 3, 'com.ruoyi.generator.controller.GenController.remove()', 'DELETE', 1, 'admin', NULL, '/tool/gen/6,7,10,11', '127.0.0.1', '内网IP', '{tableIds=6,7,10,11}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-10-18 16:09:32');
INSERT INTO `sys_oper_log` VALUES (432, '代码生成', 6, 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', NULL, '/tool/gen/importTable', '127.0.0.1', '内网IP', 'asset_switch', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-10-18 16:15:28');
INSERT INTO `sys_oper_log` VALUES (433, '代码生成', 3, 'com.ruoyi.generator.controller.GenController.remove()', 'DELETE', 1, 'admin', NULL, '/tool/gen/12', '127.0.0.1', '内网IP', '{tableIds=12}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-10-18 16:42:34');
INSERT INTO `sys_oper_log` VALUES (434, '代码生成', 6, 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', NULL, '/tool/gen/importTable', '127.0.0.1', '内网IP', 'asset_switch', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-10-18 16:42:40');
INSERT INTO `sys_oper_log` VALUES (435, '字典类型', 1, 'com.ruoyi.web.controller.system.SysDictTypeController.add()', 'POST', 1, 'admin', NULL, '/system/dict/type', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"dictName\":\"设备类型\",\"dictType\":\"device_type\",\"params\":{},\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-10-18 16:45:19');
INSERT INTO `sys_oper_log` VALUES (436, '字典类型', 2, 'com.ruoyi.web.controller.system.SysDictTypeController.edit()', 'PUT', 1, 'admin', NULL, '/system/dict/type', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"createTime\":\"2022-10-18 16:45:19\",\"dictId\":101,\"dictName\":\"设备类型\",\"dictType\":\"device_type\",\"params\":{},\"remark\":\"设备类型列表\",\"status\":\"0\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-10-18 16:45:36');
INSERT INTO `sys_oper_log` VALUES (437, '字典数据', 1, 'com.ruoyi.web.controller.system.SysDictDataController.add()', 'POST', 1, 'admin', NULL, '/system/dict/data', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"dictLabel\":\"交换机\",\"dictSort\":1,\"dictType\":\"device_type\",\"dictValue\":\"1\",\"listClass\":\"primary\",\"params\":{},\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-10-18 16:46:08');
INSERT INTO `sys_oper_log` VALUES (438, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', NULL, '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"switchMan\",\"className\":\"AssetSwitch\",\"columns\":[{\"capJavaField\":\"Number\",\"columnComment\":\"资产序号\",\"columnId\":78,\"columnName\":\"number\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2022-10-18 16:42:40\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":true,\"isIncrement\":\"1\",\"isInsert\":\"1\",\"isPk\":\"1\",\"javaField\":\"number\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":13,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"Sn\",\"columnComment\":\"SN编号\",\"columnId\":79,\"columnName\":\"sn\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"createTime\":\"2022-10-18 16:42:40\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"javaField\":\"sn\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":false,\"sort\":2,\"superColumn\":false,\"tableId\":13,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"DeviceType\",\"columnComment\":\"设备类型\",\"columnId\":80,\"columnName\":\"device_type\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"createTime\":\"2022-10-18 16:42:40\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"select\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"javaField\":\"deviceType\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":false,\"sort\":3,\"superColumn\":false,\"tableId\":13,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"DeviceModel\",\"columnComment\":\"设备型号\",\"columnId\":81,\"columnName\":\"device_model\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"createTime\":\"2022-10-18 16:42:40\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"javaField\":\"deviceModel\",\"javaType\":\"String\",\"list\":true,\"pa', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-10-18 16:48:49');
INSERT INTO `sys_oper_log` VALUES (439, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', NULL, '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{}', NULL, 0, NULL, '2022-10-18 16:51:18');
INSERT INTO `sys_oper_log` VALUES (440, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', NULL, '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"switchMan\",\"className\":\"AssetSwitch\",\"columns\":[{\"capJavaField\":\"Number\",\"columnComment\":\"资产序号\",\"columnId\":78,\"columnName\":\"number\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2022-10-18 16:42:40\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":true,\"isIncrement\":\"1\",\"isInsert\":\"1\",\"isPk\":\"1\",\"javaField\":\"number\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":13,\"updateBy\":\"\",\"updateTime\":\"2022-10-18 16:48:49\",\"usableColumn\":false},{\"capJavaField\":\"Sn\",\"columnComment\":\"SN编号\",\"columnId\":79,\"columnName\":\"sn\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"createTime\":\"2022-10-18 16:42:40\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"javaField\":\"sn\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":false,\"sort\":2,\"superColumn\":false,\"tableId\":13,\"updateBy\":\"\",\"updateTime\":\"2022-10-18 16:48:49\",\"usableColumn\":false},{\"capJavaField\":\"DeviceType\",\"columnComment\":\"设备类型\",\"columnId\":80,\"columnName\":\"device_type\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"createTime\":\"2022-10-18 16:42:40\",\"dictType\":\"device_type\",\"edit\":true,\"htmlType\":\"select\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"javaField\":\"deviceType\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":false,\"sort\":3,\"superColumn\":false,\"tableId\":13,\"updateBy\":\"\",\"updateTime\":\"2022-10-18 16:48:49\",\"usableColumn\":false},{\"capJavaField\":\"DeviceModel\",\"columnComment\":\"设备型号\",\"columnId\":81,\"columnName\":\"device_model\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"createTime\":\"2022-10-18 16:42:40\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-10-18 16:52:17');
INSERT INTO `sys_oper_log` VALUES (441, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', NULL, '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{}', NULL, 0, NULL, '2022-10-18 16:52:20');
INSERT INTO `sys_oper_log` VALUES (442, '交换机管理', 1, 'com.yuanzi.asset.controller.AssetSwitchController.add()', 'POST', 1, 'admin', NULL, '/asset/switchMan', '127.0.0.1', '内网IP', '{\"businessType\":\"2\",\"cabinetNo\":\"132321\",\"deviceModel\":\"213123\",\"deviceType\":\"1\",\"manegeIp\":\"321312\",\"number\":112,\"params\":{},\"room\":\"3123\",\"sn\":\"21312\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-10-18 17:11:47');
INSERT INTO `sys_oper_log` VALUES (443, '交换机管理', 3, 'com.yuanzi.asset.controller.AssetSwitchController.remove()', 'DELETE', 1, 'admin', NULL, '/asset/switchMan/112', '127.0.0.1', '内网IP', '{numbers=112}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-10-18 17:12:10');
INSERT INTO `sys_oper_log` VALUES (444, '交换机管理', 5, 'com.yuanzi.asset.controller.AssetSwitchController.export()', 'POST', 1, 'admin', NULL, '/asset/switchMan/export', '127.0.0.1', '内网IP', '{\"params\":{}}', NULL, 0, NULL, '2022-10-18 17:12:24');
INSERT INTO `sys_oper_log` VALUES (445, '交换机管理', 3, 'com.yuanzi.asset.controller.AssetSwitchController.remove()', 'DELETE', 1, 'admin', NULL, '/asset/switchMan/1', '127.0.0.1', '内网IP', '{numbers=1}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-10-18 17:29:50');

-- ----------------------------
-- Table structure for sys_post
-- ----------------------------
DROP TABLE IF EXISTS `sys_post`;
CREATE TABLE `sys_post`  (
  `post_id` bigint NOT NULL AUTO_INCREMENT COMMENT '岗位ID',
  `post_code` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '岗位编码',
  `post_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '岗位名称',
  `post_sort` int NOT NULL COMMENT '显示顺序',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`post_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '岗位信息表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_post
-- ----------------------------
INSERT INTO `sys_post` VALUES (1, 'ceo', '董事长', 1, '0', 'admin', '2022-10-12 15:10:40', '', NULL, '');
INSERT INTO `sys_post` VALUES (2, 'se', '项目经理', 2, '0', 'admin', '2022-10-12 15:10:40', '', NULL, '');
INSERT INTO `sys_post` VALUES (3, 'hr', '人力资源', 3, '0', 'admin', '2022-10-12 15:10:40', '', NULL, '');
INSERT INTO `sys_post` VALUES (4, 'user', '普通员工', 4, '0', 'admin', '2022-10-12 15:10:40', '', NULL, '');

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role`  (
  `role_id` bigint NOT NULL AUTO_INCREMENT COMMENT '角色ID',
  `role_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '角色名称',
  `role_key` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '角色权限字符串',
  `role_sort` int NOT NULL COMMENT '显示顺序',
  `data_scope` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '1' COMMENT '数据范围（1：全部数据权限 2：自定数据权限 3：本部门数据权限 4：本部门及以下数据权限）',
  `menu_check_strictly` tinyint(1) NULL DEFAULT 1 COMMENT '菜单树选择项是否关联显示',
  `dept_check_strictly` tinyint(1) NULL DEFAULT 1 COMMENT '部门树选择项是否关联显示',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '角色状态（0正常 1停用）',
  `del_flag` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`role_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 100 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '角色信息表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO `sys_role` VALUES (1, '超级管理员', 'admin', 1, '1', 1, 1, '0', '0', 'admin', '2022-10-12 15:10:40', '', NULL, '超级管理员');
INSERT INTO `sys_role` VALUES (2, '普通角色', 'common', 2, '2', 0, 0, '0', '0', 'admin', '2022-10-12 15:10:40', 'admin', '2022-10-17 11:21:04', '普通角色');

-- ----------------------------
-- Table structure for sys_role_dept
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_dept`;
CREATE TABLE `sys_role_dept`  (
  `role_id` bigint NOT NULL COMMENT '角色ID',
  `dept_id` bigint NOT NULL COMMENT '部门ID',
  PRIMARY KEY (`role_id`, `dept_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '角色和部门关联表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_role_dept
-- ----------------------------
INSERT INTO `sys_role_dept` VALUES (2, 100);
INSERT INTO `sys_role_dept` VALUES (2, 101);
INSERT INTO `sys_role_dept` VALUES (2, 105);

-- ----------------------------
-- Table structure for sys_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_menu`;
CREATE TABLE `sys_role_menu`  (
  `role_id` bigint NOT NULL COMMENT '角色ID',
  `menu_id` bigint NOT NULL COMMENT '菜单ID',
  PRIMARY KEY (`role_id`, `menu_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '角色和菜单关联表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_role_menu
-- ----------------------------

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user`  (
  `user_id` bigint NOT NULL AUTO_INCREMENT COMMENT '用户ID',
  `dept_id` bigint NULL DEFAULT NULL COMMENT '部门ID',
  `user_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '用户账号',
  `nick_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '用户昵称',
  `user_type` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '00' COMMENT '用户类型（00系统用户）',
  `email` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '用户邮箱',
  `phonenumber` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '手机号码',
  `sex` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '0' COMMENT '用户性别（0男 1女 2未知）',
  `avatar` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '头像地址',
  `password` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '密码',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '0' COMMENT '帐号状态（0正常 1停用）',
  `del_flag` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `login_ip` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '最后登录IP',
  `login_date` datetime NULL DEFAULT NULL COMMENT '最后登录时间',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`user_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 101 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '用户信息表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES (1, 103, 'admin', '若依', '00', 'ry@163.com', '15888888888', '1', '', '$2a$10$7JB720yubVSZvUI0rEqK/.VqGOZTH.ulu33dHOiBE8ByOhJIrdAu2', '0', '0', '127.0.0.1', '2022-10-18 16:42:19', 'admin', '2022-10-12 15:10:39', '', '2022-10-18 16:42:19', '管理员');
INSERT INTO `sys_user` VALUES (2, 105, 'ry', '若依', '00', 'ry@qq.com', '15666666666', '1', '', '$2a$10$7JB720yubVSZvUI0rEqK/.VqGOZTH.ulu33dHOiBE8ByOhJIrdAu2', '0', '2', '127.0.0.1', '2022-10-12 15:10:39', 'admin', '2022-10-12 15:10:39', '', NULL, '测试员');
INSERT INTO `sys_user` VALUES (100, NULL, 'skyton', '测试', '00', '', '', '0', '', '$2a$10$vJp/yJU1oRo5wMM4rH9iMea7SHC8twB2qYl96dsXMtNfi3IGZVhtW', '0', '0', '127.0.0.1', '2022-10-17 10:27:43', 'admin', '2022-10-15 10:48:26', '', '2022-10-17 10:27:43', NULL);

-- ----------------------------
-- Table structure for sys_user_post
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_post`;
CREATE TABLE `sys_user_post`  (
  `user_id` bigint NOT NULL COMMENT '用户ID',
  `post_id` bigint NOT NULL COMMENT '岗位ID',
  PRIMARY KEY (`user_id`, `post_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '用户与岗位关联表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_user_post
-- ----------------------------
INSERT INTO `sys_user_post` VALUES (1, 1);
INSERT INTO `sys_user_post` VALUES (100, 4);

-- ----------------------------
-- Table structure for sys_user_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_role`;
CREATE TABLE `sys_user_role`  (
  `user_id` bigint NOT NULL COMMENT '用户ID',
  `role_id` bigint NOT NULL COMMENT '角色ID',
  PRIMARY KEY (`user_id`, `role_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '用户和角色关联表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_user_role
-- ----------------------------
INSERT INTO `sys_user_role` VALUES (1, 1);
INSERT INTO `sys_user_role` VALUES (100, 2);

SET FOREIGN_KEY_CHECKS = 1;
