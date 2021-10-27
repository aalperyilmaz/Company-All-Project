/*
 Navicat Premium Data Transfer

 Source Server         : sakila
 Source Server Type    : MySQL
 Source Server Version : 100420
 Source Host           : localhost:3306
 Source Schema         : companyalltest

 Target Server Type    : MySQL
 Target Server Version : 100420
 File Encoding         : 65001

 Date: 27/10/2021 13:09:13
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for adress
-- ----------------------------
DROP TABLE IF EXISTS `adress`;
CREATE TABLE `adress`  (
  `adress_id` int NOT NULL,
  `adress_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`adress_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of adress
-- ----------------------------
INSERT INTO `adress` VALUES (22, 'sss');

-- ----------------------------
-- Table structure for adress_customer_id
-- ----------------------------
DROP TABLE IF EXISTS `adress_customer_id`;
CREATE TABLE `adress_customer_id`  (
  `customer_customer_id` int NULL DEFAULT NULL,
  `adress_id` int NOT NULL,
  PRIMARY KEY (`adress_id`) USING BTREE,
  INDEX `FK6i4wfx632g8ppk7mc8520v7ya`(`customer_customer_id`) USING BTREE,
  CONSTRAINT `FK6i4wfx632g8ppk7mc8520v7ya` FOREIGN KEY (`customer_customer_id`) REFERENCES `customer` (`customer_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FKks30pr7kvcpg19749bo9abei4` FOREIGN KEY (`adress_id`) REFERENCES `adress` (`adress_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of adress_customer_id
-- ----------------------------
INSERT INTO `adress_customer_id` VALUES (1, 22);

-- ----------------------------
-- Table structure for advertisement
-- ----------------------------
DROP TABLE IF EXISTS `advertisement`;
CREATE TABLE `advertisement`  (
  `advertisement_id` int NOT NULL AUTO_INCREMENT,
  `advertisement_end_date` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `advertisement_height` int NULL DEFAULT NULL,
  `advertisement_image_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `advertisement_link` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `advertisement_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `advertisement_presentation_watch_size` int NULL DEFAULT NULL,
  `advertisement_start_date` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `advertisement_width` int NULL DEFAULT NULL,
  PRIMARY KEY (`advertisement_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of advertisement
-- ----------------------------
INSERT INTO `advertisement` VALUES (1, '2021-10-20', 12, '', '112', 'assa', 12, '2021-10-13', 12);
INSERT INTO `advertisement` VALUES (2, '2021-10-15', 12, 'Alper-Yılmaz-BlogPprojesi-Sunumu-page-5.jpg', '12', 'reklam', 33, '2021-10-28', 12);

-- ----------------------------
-- Table structure for advertisement_comp_id
-- ----------------------------
DROP TABLE IF EXISTS `advertisement_comp_id`;
CREATE TABLE `advertisement_comp_id`  (
  `company_company_id` int NULL DEFAULT NULL,
  `advertisement_id` int NOT NULL,
  PRIMARY KEY (`advertisement_id`) USING BTREE,
  INDEX `FKmjicw91eim3bkghsyachcsi4a`(`company_company_id`) USING BTREE,
  CONSTRAINT `FK1ive433p8eq0ybdlw9j0ivg28` FOREIGN KEY (`advertisement_id`) REFERENCES `advertisement` (`advertisement_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FKmjicw91eim3bkghsyachcsi4a` FOREIGN KEY (`company_company_id`) REFERENCES `company` (`company_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of advertisement_comp_id
-- ----------------------------
INSERT INTO `advertisement_comp_id` VALUES (1, 1);
INSERT INTO `advertisement_comp_id` VALUES (1, 2);

-- ----------------------------
-- Table structure for agenda
-- ----------------------------
DROP TABLE IF EXISTS `agenda`;
CREATE TABLE `agenda`  (
  `id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `agdate` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `agtext` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `agtime` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `agtitle` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of agenda
-- ----------------------------

-- ----------------------------
-- Table structure for announcement
-- ----------------------------
DROP TABLE IF EXISTS `announcement`;
CREATE TABLE `announcement`  (
  `announcement_id` int NOT NULL AUTO_INCREMENT,
  `announcement_comment` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `announcement_date` date NULL DEFAULT NULL,
  `announcement_status` int NULL DEFAULT NULL,
  `announcement_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`announcement_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 16 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of announcement
-- ----------------------------
INSERT INTO `announcement` VALUES (4, 'asdlkjasdljkasdljsadlkj', '2021-10-22', 1, 'Duyru düzenle');
INSERT INTO `announcement` VALUES (5, 'asdlkjasdljkasdljsadlkj', '2021-10-22', 1, 'Duyru');
INSERT INTO `announcement` VALUES (6, 'asdlkjasdljkasdljsadlkj', '2021-10-22', 1, ' Duyru');
INSERT INTO `announcement` VALUES (9, 'asdlkjasdljkasdljsadlkj', '2021-10-22', 1, 'Duyru');
INSERT INTO `announcement` VALUES (15, 'müşteri@mail.com', '2021-10-20', 1, 'duyuru');

-- ----------------------------
-- Table structure for announcement_comp_id
-- ----------------------------
DROP TABLE IF EXISTS `announcement_comp_id`;
CREATE TABLE `announcement_comp_id`  (
  `company_company_id` int NULL DEFAULT NULL,
  `announcement_id` int NOT NULL,
  PRIMARY KEY (`announcement_id`) USING BTREE,
  INDEX `FKexg6sljggl7r06bwkitwa2iw7`(`company_company_id`) USING BTREE,
  CONSTRAINT `FK47btjdk91kvjxy4u8f4ay3d48` FOREIGN KEY (`announcement_id`) REFERENCES `announcement` (`announcement_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FKexg6sljggl7r06bwkitwa2iw7` FOREIGN KEY (`company_company_id`) REFERENCES `company` (`company_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of announcement_comp_id
-- ----------------------------
INSERT INTO `announcement_comp_id` VALUES (1, 4);
INSERT INTO `announcement_comp_id` VALUES (1, 5);
INSERT INTO `announcement_comp_id` VALUES (1, 6);
INSERT INTO `announcement_comp_id` VALUES (1, 9);
INSERT INTO `announcement_comp_id` VALUES (1, 15);

-- ----------------------------
-- Table structure for category
-- ----------------------------
DROP TABLE IF EXISTS `category`;
CREATE TABLE `category`  (
  `category_id` int NOT NULL AUTO_INCREMENT,
  `category_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `created_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `created_date` datetime NULL DEFAULT NULL,
  `last_modified_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `last_modified_date` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`category_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of category
-- ----------------------------
INSERT INTO `category` VALUES (1, 'aasd', NULL, NULL, NULL, NULL);
INSERT INTO `category` VALUES (2, 'fgfdgdf', NULL, NULL, NULL, NULL);
INSERT INTO `category` VALUES (3, 'üst kategori', NULL, NULL, NULL, NULL);
INSERT INTO `category` VALUES (4, 'üst kategori1', NULL, NULL, NULL, NULL);
INSERT INTO `category` VALUES (5, 'üst', NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for cnotice_omp_id
-- ----------------------------
DROP TABLE IF EXISTS `cnotice_omp_id`;
CREATE TABLE `cnotice_omp_id`  (
  `company_company_id` int NULL DEFAULT NULL,
  `notice_id` int NOT NULL,
  PRIMARY KEY (`notice_id`) USING BTREE,
  INDEX `FKr7x4f49yscus8eso5dbkguyp6`(`company_company_id`) USING BTREE,
  CONSTRAINT `FK3obniciu9bp9hgnf1trp3kswa` FOREIGN KEY (`notice_id`) REFERENCES `notice` (`notice_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FKr7x4f49yscus8eso5dbkguyp6` FOREIGN KEY (`company_company_id`) REFERENCES `company` (`company_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cnotice_omp_id
-- ----------------------------

-- ----------------------------
-- Table structure for company
-- ----------------------------
DROP TABLE IF EXISTS `company`;
CREATE TABLE `company`  (
  `company_id` int NOT NULL AUTO_INCREMENT,
  `company_address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `company_latitude` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `company_longitude` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `company_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `company_sector` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `company_status` int NULL DEFAULT NULL,
  `company_tel` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`company_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of company
-- ----------------------------
INSERT INTO `company` VALUES (1, 'dsad', 'dsfds', 'sdf', 'dsfds', 'dsf', 1, '45645');
INSERT INTO `company` VALUES (2, 'bursa', '435', '8079', 'alperCooop', 'Otomotiv', NULL, '66767667');
INSERT INTO `company` VALUES (3, 'Bursa', '23', '43', 'FooCoop', 'Otomotiv', NULL, '32244543');
INSERT INTO `company` VALUES (4, '234sdklfldsf', '658', '9564', 'fooCmpa', 'sdlfsdşfl', NULL, '9083409823');
INSERT INTO `company` VALUES (5, '234sdklfldsf', '658', '9564', 'fooCmpa', 'sdlfsdşfl', NULL, '9083409823');
INSERT INTO `company` VALUES (6, 'asdasd', 'dsfdkhgruıty', 'dsşlfsdgm', 'alperAlper', 'rıeotdfgvlskmf', NULL, 'ewrefgj');
INSERT INTO `company` VALUES (7, 'assda', 'sadas', 'asdasd', 'app', 'asdasd', NULL, 'asdasd');
INSERT INTO `company` VALUES (8, 'appmain', 'appmain', 'appmain', 'appmain', 'appmain', NULL, 'appmain');
INSERT INTO `company` VALUES (9, 'ferhat', '22', '333', 'ferhat', 'Otomotiv', NULL, '23232');

-- ----------------------------
-- Table structure for confirmation_token
-- ----------------------------
DROP TABLE IF EXISTS `confirmation_token`;
CREATE TABLE `confirmation_token`  (
  `token_id` bigint NOT NULL,
  `confirmation_token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `created_date` datetime NULL DEFAULT NULL,
  `user_id` bigint NOT NULL,
  PRIMARY KEY (`token_id`) USING BTREE,
  INDEX `FKhjrtky9wbd6lbk7mu9tuddqgn`(`user_id`) USING BTREE,
  CONSTRAINT `FKhjrtky9wbd6lbk7mu9tuddqgn` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of confirmation_token
-- ----------------------------
INSERT INTO `confirmation_token` VALUES (3, 'a1d99a85-ae2c-48ec-870c-2cf3da911a5c', NULL, 2);
INSERT INTO `confirmation_token` VALUES (5, 'bae42ede-c47e-40d9-88b3-cdd9e05e344f', NULL, 4);
INSERT INTO `confirmation_token` VALUES (7, 'f66c203a-cc70-423a-9aa2-30f79dd1f414', '2021-10-21 21:22:33', 4);
INSERT INTO `confirmation_token` VALUES (8, 'dd68b4fd-1327-4efa-a3af-9098682b1ab0', '2021-10-21 21:23:26', 4);
INSERT INTO `confirmation_token` VALUES (9, '7721baf0-7b70-4f0b-a025-78397f33651e', '2021-10-21 21:32:24', 4);
INSERT INTO `confirmation_token` VALUES (10, '3cb62d01-6113-4570-a5d5-b92d0eae157c', '2021-10-21 21:32:26', 4);
INSERT INTO `confirmation_token` VALUES (11, 'b98137b4-8cbf-43c6-9544-3e2db3d185e2', '2021-10-21 21:34:07', 4);
INSERT INTO `confirmation_token` VALUES (12, '3043d3f4-a427-4e97-b9a4-9823a6ea6871', '2021-10-21 21:34:57', 4);
INSERT INTO `confirmation_token` VALUES (15, '3098424d-6a32-4daa-9347-b6f07cff7bd2', '2021-10-23 15:37:28', 14);
INSERT INTO `confirmation_token` VALUES (17, 'ede8d665-6c78-4a1c-8e65-4b99599a897a', '2021-10-23 15:39:36', 16);
INSERT INTO `confirmation_token` VALUES (19, 'c18cbc98-8e2f-4b20-9f48-0449262617a9', '2021-10-24 02:02:25', 18);
INSERT INTO `confirmation_token` VALUES (21, '84382d80-7f96-4daf-854c-0e976e78bc75', '2021-10-24 02:14:25', 20);
INSERT INTO `confirmation_token` VALUES (24, 'adff594e-c784-484c-b0c9-8512acde8e7b', '2021-10-27 09:53:57', 23);

-- ----------------------------
-- Table structure for content
-- ----------------------------
DROP TABLE IF EXISTS `content`;
CREATE TABLE `content`  (
  `content_id` int NOT NULL AUTO_INCREMENT,
  `content_long_comment` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `content_short_comment` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `content_status` int NULL DEFAULT NULL,
  `content_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `created_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `created_date` datetime NULL DEFAULT NULL,
  `last_modified_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `last_modified_date` datetime NULL DEFAULT NULL,
  `content_add_date` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`content_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of content
-- ----------------------------
INSERT INTO `content` VALUES (4, '<p>İçerik Deta</p>', 'İçerik', 1, 'İçerik Başlığı', 'alper@mail.com', '2021-10-27 12:50:59', 'alper@mail.com', '2021-10-27 12:50:59', '2021-10-27 12:50:59');
INSERT INTO `content` VALUES (5, '<p>içerikler detay</p>', 'içerikler detay', 1, 'içerikler', 'alper@mail.com', '2021-10-27 12:51:18', 'alper@mail.com', '2021-10-27 12:51:18', '2021-10-27 12:51:18');

-- ----------------------------
-- Table structure for content_comp_id
-- ----------------------------
DROP TABLE IF EXISTS `content_comp_id`;
CREATE TABLE `content_comp_id`  (
  `company_company_id` int NULL DEFAULT NULL,
  `content_id` int NOT NULL,
  PRIMARY KEY (`content_id`) USING BTREE,
  INDEX `FK2md7owpw5v8injj8ji4xltawg`(`company_company_id`) USING BTREE,
  CONSTRAINT `FK2md7owpw5v8injj8ji4xltawg` FOREIGN KEY (`company_company_id`) REFERENCES `company` (`company_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FKtruyg2u8lktqail7c0sdqrk54` FOREIGN KEY (`content_id`) REFERENCES `content` (`content_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of content_comp_id
-- ----------------------------
INSERT INTO `content_comp_id` VALUES (1, 4);
INSERT INTO `content_comp_id` VALUES (1, 5);

-- ----------------------------
-- Table structure for customer
-- ----------------------------
DROP TABLE IF EXISTS `customer`;
CREATE TABLE `customer`  (
  `customer_id` int NOT NULL AUTO_INCREMENT,
  `customer_mail` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `customer_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `customer_status` int NULL DEFAULT NULL,
  `customer_surname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `created_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `created_date` datetime NULL DEFAULT NULL,
  `last_modified_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `last_modified_date` datetime NULL DEFAULT NULL,
  `customer_phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`customer_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of customer
-- ----------------------------
INSERT INTO `customer` VALUES (1, 's@mail.com', 's', 1, 's', 's', '', '2021-10-05 07:12:30', NULL, '2021-10-12 07:13:00', NULL);

-- ----------------------------
-- Table structure for customer_comp_id
-- ----------------------------
DROP TABLE IF EXISTS `customer_comp_id`;
CREATE TABLE `customer_comp_id`  (
  `company_company_id` int NULL DEFAULT NULL,
  `customer_id` int NOT NULL,
  PRIMARY KEY (`customer_id`) USING BTREE,
  INDEX `FK14718errb72wltrnovvqcujex`(`company_company_id`) USING BTREE,
  CONSTRAINT `FK14718errb72wltrnovvqcujex` FOREIGN KEY (`company_company_id`) REFERENCES `company` (`company_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FKscy3rqjr2r8qadgglbxj0s6cm` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`customer_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of customer_comp_id
-- ----------------------------
INSERT INTO `customer_comp_id` VALUES (8, 1);

-- ----------------------------
-- Table structure for form
-- ----------------------------
DROP TABLE IF EXISTS `form`;
CREATE TABLE `form`  (
  `form_id` int NOT NULL AUTO_INCREMENT,
  `form_content` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `form_date` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `form_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`form_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of form
-- ----------------------------

-- ----------------------------
-- Table structure for form_comp_id
-- ----------------------------
DROP TABLE IF EXISTS `form_comp_id`;
CREATE TABLE `form_comp_id`  (
  `company_company_id` int NULL DEFAULT NULL,
  `form_id` int NOT NULL,
  PRIMARY KEY (`form_id`) USING BTREE,
  INDEX `FKn8f8rvuxrwlnhvcuwva4lv19u`(`company_company_id`) USING BTREE,
  CONSTRAINT `FKn8f8rvuxrwlnhvcuwva4lv19u` FOREIGN KEY (`company_company_id`) REFERENCES `company` (`company_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FKodroxw36w36ulwi13p0luyun6` FOREIGN KEY (`form_id`) REFERENCES `form` (`form_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of form_comp_id
-- ----------------------------

-- ----------------------------
-- Table structure for gallery
-- ----------------------------
DROP TABLE IF EXISTS `gallery`;
CREATE TABLE `gallery`  (
  `gallery_id` int NOT NULL AUTO_INCREMENT,
  `gallery_comment` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `gallery_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `gallery_status` int NULL DEFAULT NULL,
  `gallery_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `created_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `created_date` datetime NULL DEFAULT NULL,
  `last_modified_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `last_modified_date` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`gallery_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 30 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of gallery
-- ----------------------------
INSERT INTO `gallery` VALUES (12, 'sdfdsfsd', 'asujdasj', 1, 'cbe77ee6-a140-48d7-a3d3-31a6ad7c54cdy.png', NULL, NULL, NULL, NULL);
INSERT INTO `gallery` VALUES (13, 'gggg', 'gggg', 1, '213f61ad-38a5-478d-b578-a24da2f20cc84.png', NULL, NULL, NULL, NULL);
INSERT INTO `gallery` VALUES (15, 'fdgdfg', 'ssdgfdg', 0, 'f565993c-fe6d-4b1a-996b-412629171db25.png', NULL, NULL, NULL, NULL);
INSERT INTO `gallery` VALUES (16, 'fdgdfg', 'ssdgfdg', 0, 'adddf787-0d11-4c03-b37d-8f0e5f05db0d1.png', NULL, NULL, NULL, NULL);
INSERT INTO `gallery` VALUES (18, 'YeniGaleriKategori', 'YeniGaleri', 0, '4bc45743-98f1-41c7-a0e6-68f592ce39c82.jpg', NULL, NULL, NULL, NULL);
INSERT INTO `gallery` VALUES (19, 'YeniGaleriKategori', 'YeniGaleri', 0, 'faa4c404-f6f9-414e-a064-6e4f034291a13.jpg', NULL, NULL, NULL, NULL);
INSERT INTO `gallery` VALUES (21, 'Kategori', 'galeriler', 0, 'ca8f0c9b-6eeb-4c9e-8515-a3ab4ba5db573.jpg', 'alper@mail.com', '2021-10-27 09:57:11', 'alper@mail.com', '2021-10-27 09:57:11');
INSERT INTO `gallery` VALUES (22, 'Kategori', 'galeriler', 0, 'a9631732-c0cb-4a62-9aa5-29429eb5ba9c4.jpg', 'alper@mail.com', '2021-10-27 09:57:11', 'alper@mail.com', '2021-10-27 09:57:11');
INSERT INTO `gallery` VALUES (23, 'Kategori', 'galeriler', 0, '9964a37b-bb5d-41b4-9076-8da566c38ab05.jpg', 'alper@mail.com', '2021-10-27 09:57:11', 'alper@mail.com', '2021-10-27 09:57:11');
INSERT INTO `gallery` VALUES (24, 'Kateg', 'Kategorilerce', 0, '54498766-b7dc-45f9-8954-7c50c7827682).png', 'alper@mail.com', '2021-10-27 12:53:24', 'alper@mail.com', '2021-10-27 12:53:24');
INSERT INTO `gallery` VALUES (25, 'Kateg', 'Kategorilerce', 0, '7fcf27bf-7e6c-401d-a31b-747c7ecd5364y.png', 'alper@mail.com', '2021-10-27 12:53:24', 'alper@mail.com', '2021-10-27 12:53:24');
INSERT INTO `gallery` VALUES (26, 'Kateg', 'Kategorilerce', 0, 'ee246357-4c22-4f3b-b8c5-e83e3238b5014.png', 'alper@mail.com', '2021-10-27 12:53:24', 'alper@mail.com', '2021-10-27 12:53:24');
INSERT INTO `gallery` VALUES (29, 'KAtegori', 'Galeri', 0, 'da8893c0-0fd3-45d8-9f21-73f2f8315de9y.png', 'alper@mail.com', '2021-10-27 12:54:13', 'alper@mail.com', '2021-10-27 12:54:13');

-- ----------------------------
-- Table structure for gallery_omp_id
-- ----------------------------
DROP TABLE IF EXISTS `gallery_omp_id`;
CREATE TABLE `gallery_omp_id`  (
  `company_company_id` int NULL DEFAULT NULL,
  `gallery_id` int NOT NULL,
  PRIMARY KEY (`gallery_id`) USING BTREE,
  INDEX `FKbfpwy9e4oqukx086i5wjv9yc5`(`company_company_id`) USING BTREE,
  CONSTRAINT `FK4x1ojtukggf9ltypoqi2x4n32` FOREIGN KEY (`gallery_id`) REFERENCES `gallery` (`gallery_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FKbfpwy9e4oqukx086i5wjv9yc5` FOREIGN KEY (`company_company_id`) REFERENCES `company` (`company_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of gallery_omp_id
-- ----------------------------
INSERT INTO `gallery_omp_id` VALUES (1, 12);
INSERT INTO `gallery_omp_id` VALUES (1, 13);
INSERT INTO `gallery_omp_id` VALUES (1, 15);
INSERT INTO `gallery_omp_id` VALUES (1, 16);
INSERT INTO `gallery_omp_id` VALUES (1, 18);
INSERT INTO `gallery_omp_id` VALUES (1, 19);
INSERT INTO `gallery_omp_id` VALUES (1, 21);
INSERT INTO `gallery_omp_id` VALUES (1, 22);
INSERT INTO `gallery_omp_id` VALUES (1, 23);
INSERT INTO `gallery_omp_id` VALUES (1, 24);
INSERT INTO `gallery_omp_id` VALUES (1, 25);
INSERT INTO `gallery_omp_id` VALUES (1, 26);
INSERT INTO `gallery_omp_id` VALUES (1, 29);

-- ----------------------------
-- Table structure for gallery_options
-- ----------------------------
DROP TABLE IF EXISTS `gallery_options`;
CREATE TABLE `gallery_options`  (
  `galeryop_id` int NOT NULL AUTO_INCREMENT,
  `gallery_option_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`galeryop_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of gallery_options
-- ----------------------------

-- ----------------------------
-- Table structure for hibernate_sequence
-- ----------------------------
DROP TABLE IF EXISTS `hibernate_sequence`;
CREATE TABLE `hibernate_sequence`  (
  `next_val` bigint NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of hibernate_sequence
-- ----------------------------
INSERT INTO `hibernate_sequence` VALUES (25);

-- ----------------------------
-- Table structure for logger
-- ----------------------------
DROP TABLE IF EXISTS `logger`;
CREATE TABLE `logger`  (
  `lid` int NOT NULL AUTO_INCREMENT,
  `l_date` datetime NULL DEFAULT NULL,
  `l_ip` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `l_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `lemail` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `lname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `lroles` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `lsession_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `lsurname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`lid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3864 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of logger
-- ----------------------------
INSERT INTO `logger` VALUES (1, '2021-10-26 20:33:48', '0:0:0:0:0:0:0:1', '/swagger-ui', 'anonymousUser', NULL, NULL, '254DDB64750345EB80A4B07579711E19', NULL);
INSERT INTO `logger` VALUES (2, '2021-10-26 20:33:50', '0:0:0:0:0:0:0:1', '/favicon.ico', 'anonymousUser', NULL, NULL, '254DDB64750345EB80A4B07579711E19', NULL);
INSERT INTO `logger` VALUES (3, '2021-10-26 20:34:02', '0:0:0:0:0:0:0:1', '/swagger-ui/', 'anonymousUser', NULL, NULL, '254DDB64750345EB80A4B07579711E19', NULL);
INSERT INTO `logger` VALUES (4, '2021-10-26 20:34:03', '0:0:0:0:0:0:0:1', '/swagger-ui/swagger-ui-bundle.js', 'anonymousUser', NULL, NULL, '254DDB64750345EB80A4B07579711E19', NULL);
INSERT INTO `logger` VALUES (5, '2021-10-26 20:34:03', '0:0:0:0:0:0:0:1', '/swagger-ui/swagger-ui.css', 'anonymousUser', NULL, NULL, '254DDB64750345EB80A4B07579711E19', NULL);
INSERT INTO `logger` VALUES (6, '2021-10-26 20:34:03', '0:0:0:0:0:0:0:1', '/swagger-ui/springfox.css', 'anonymousUser', NULL, NULL, '254DDB64750345EB80A4B07579711E19', NULL);
INSERT INTO `logger` VALUES (7, '2021-10-26 20:34:03', '0:0:0:0:0:0:0:1', '/swagger-ui/springfox.js', 'anonymousUser', NULL, NULL, '254DDB64750345EB80A4B07579711E19', NULL);
INSERT INTO `logger` VALUES (8, '2021-10-26 20:34:03', '0:0:0:0:0:0:0:1', '/swagger-ui/swagger-ui-standalone-preset.js', 'anonymousUser', NULL, NULL, '254DDB64750345EB80A4B07579711E19', NULL);
INSERT INTO `logger` VALUES (9, '2021-10-26 20:34:03', '0:0:0:0:0:0:0:1', '/swagger-resources/configuration/ui', 'anonim@mail.com', NULL, NULL, '254DDB64750345EB80A4B07579711E19', NULL);
INSERT INTO `logger` VALUES (10, '2021-10-26 20:34:03', '0:0:0:0:0:0:0:1', '/swagger-ui/favicon-32x32.png', 'anonymousUser', NULL, NULL, '254DDB64750345EB80A4B07579711E19', NULL);
INSERT INTO `logger` VALUES (11, '2021-10-26 20:34:03', '0:0:0:0:0:0:0:1', '/swagger-resources/configuration/security', 'anonim@mail.com', NULL, NULL, '254DDB64750345EB80A4B07579711E19', NULL);
INSERT INTO `logger` VALUES (12, '2021-10-26 20:34:03', '0:0:0:0:0:0:0:1', '/swagger-resources', 'anonim@mail.com', NULL, NULL, '254DDB64750345EB80A4B07579711E19', NULL);
INSERT INTO `logger` VALUES (13, '2021-10-26 20:34:03', '0:0:0:0:0:0:0:1', '/v2/api-docs', 'anonim@mail.com', NULL, NULL, '254DDB64750345EB80A4B07579711E19', NULL);
INSERT INTO `logger` VALUES (14, '2021-10-26 20:35:43', '0:0:0:0:0:0:0:1', '/swagger-ui/', 'anonymousUser', NULL, NULL, '254DDB64750345EB80A4B07579711E19', NULL);
INSERT INTO `logger` VALUES (15, '2021-10-26 20:35:43', '127.0.0.1', '/swagger-ui/swagger-ui.css', 'anonymousUser', NULL, NULL, '254DDB64750345EB80A4B07579711E19', NULL);
INSERT INTO `logger` VALUES (16, '2021-10-26 20:35:43', '0:0:0:0:0:0:0:1', '/swagger-ui/springfox.js', 'anonymousUser', NULL, NULL, '254DDB64750345EB80A4B07579711E19', NULL);
INSERT INTO `logger` VALUES (17, '2021-10-26 20:35:43', '0:0:0:0:0:0:0:1', '/swagger-ui/swagger-ui-standalone-preset.js', 'anonymousUser', NULL, NULL, '254DDB64750345EB80A4B07579711E19', NULL);
INSERT INTO `logger` VALUES (18, '2021-10-26 20:35:43', '0:0:0:0:0:0:0:1', '/swagger-ui/springfox.css', 'anonymousUser', NULL, NULL, '254DDB64750345EB80A4B07579711E19', NULL);
INSERT INTO `logger` VALUES (19, '2021-10-26 20:35:43', '127.0.0.1', '/swagger-ui/swagger-ui-bundle.js', 'anonymousUser', NULL, NULL, '254DDB64750345EB80A4B07579711E19', NULL);
INSERT INTO `logger` VALUES (20, '2021-10-26 20:35:44', '127.0.0.1', '/swagger-resources/configuration/ui', 'anonim@mail.com', NULL, NULL, '254DDB64750345EB80A4B07579711E19', NULL);
INSERT INTO `logger` VALUES (21, '2021-10-26 20:35:44', '0:0:0:0:0:0:0:1', '/swagger-ui/favicon-32x32.png', 'anonymousUser', NULL, NULL, '254DDB64750345EB80A4B07579711E19', NULL);
INSERT INTO `logger` VALUES (22, '2021-10-26 20:35:44', '127.0.0.1', '/swagger-resources/configuration/security', 'anonim@mail.com', NULL, NULL, '254DDB64750345EB80A4B07579711E19', NULL);
INSERT INTO `logger` VALUES (23, '2021-10-26 20:35:44', '127.0.0.1', '/swagger-resources', 'anonim@mail.com', NULL, NULL, '254DDB64750345EB80A4B07579711E19', NULL);
INSERT INTO `logger` VALUES (24, '2021-10-26 20:35:44', '127.0.0.1', '/v2/api-docs', 'anonim@mail.com', NULL, NULL, '254DDB64750345EB80A4B07579711E19', NULL);
INSERT INTO `logger` VALUES (25, '2021-10-26 20:40:55', '0:0:0:0:0:0:0:1', '/swagger-ui/', 'anonymousUser', NULL, NULL, '254DDB64750345EB80A4B07579711E19', NULL);
INSERT INTO `logger` VALUES (26, '2021-10-26 20:40:55', '0:0:0:0:0:0:0:1', '/swagger-ui/springfox.css', 'anonymousUser', NULL, NULL, '254DDB64750345EB80A4B07579711E19', NULL);
INSERT INTO `logger` VALUES (27, '2021-10-26 20:40:55', '0:0:0:0:0:0:0:1', '/swagger-ui/swagger-ui.css', 'anonymousUser', NULL, NULL, '254DDB64750345EB80A4B07579711E19', NULL);
INSERT INTO `logger` VALUES (28, '2021-10-26 20:40:55', '0:0:0:0:0:0:0:1', '/swagger-ui/swagger-ui-standalone-preset.js', 'anonymousUser', NULL, NULL, '254DDB64750345EB80A4B07579711E19', NULL);
INSERT INTO `logger` VALUES (29, '2021-10-26 20:40:55', '0:0:0:0:0:0:0:1', '/swagger-ui/swagger-ui-bundle.js', 'anonymousUser', NULL, NULL, '254DDB64750345EB80A4B07579711E19', NULL);
INSERT INTO `logger` VALUES (30, '2021-10-26 20:40:55', '0:0:0:0:0:0:0:1', '/swagger-ui/springfox.js', 'anonymousUser', NULL, NULL, '254DDB64750345EB80A4B07579711E19', NULL);
INSERT INTO `logger` VALUES (31, '2021-10-26 20:40:56', '0:0:0:0:0:0:0:1', '/swagger-ui/favicon-32x32.png', 'anonymousUser', NULL, NULL, '254DDB64750345EB80A4B07579711E19', NULL);
INSERT INTO `logger` VALUES (32, '2021-10-26 20:40:56', '0:0:0:0:0:0:0:1', '/swagger-resources/configuration/ui', 'anonim@mail.com', NULL, NULL, '254DDB64750345EB80A4B07579711E19', NULL);
INSERT INTO `logger` VALUES (33, '2021-10-26 20:40:56', '0:0:0:0:0:0:0:1', '/swagger-resources/configuration/security', 'anonim@mail.com', NULL, NULL, '254DDB64750345EB80A4B07579711E19', NULL);
INSERT INTO `logger` VALUES (34, '2021-10-26 20:40:56', '0:0:0:0:0:0:0:1', '/swagger-resources', 'anonim@mail.com', NULL, NULL, '254DDB64750345EB80A4B07579711E19', NULL);
INSERT INTO `logger` VALUES (35, '2021-10-26 20:40:56', '0:0:0:0:0:0:0:1', '/v2/api-docs', 'anonim@mail.com', NULL, NULL, '254DDB64750345EB80A4B07579711E19', NULL);
INSERT INTO `logger` VALUES (36, '2021-10-26 20:42:48', '0:0:0:0:0:0:0:1', '/swagger-ui/', 'anonymousUser', NULL, NULL, '254DDB64750345EB80A4B07579711E19', NULL);
INSERT INTO `logger` VALUES (37, '2021-10-26 20:42:48', '0:0:0:0:0:0:0:1', '/swagger-ui/springfox.css', 'anonymousUser', NULL, NULL, '254DDB64750345EB80A4B07579711E19', NULL);
INSERT INTO `logger` VALUES (38, '2021-10-26 20:42:48', '0:0:0:0:0:0:0:1', '/swagger-ui/swagger-ui.css', 'anonymousUser', NULL, NULL, '254DDB64750345EB80A4B07579711E19', NULL);
INSERT INTO `logger` VALUES (39, '2021-10-26 20:42:48', '0:0:0:0:0:0:0:1', '/swagger-ui/swagger-ui-bundle.js', 'anonymousUser', NULL, NULL, '254DDB64750345EB80A4B07579711E19', NULL);
INSERT INTO `logger` VALUES (40, '2021-10-26 20:42:48', '0:0:0:0:0:0:0:1', '/swagger-ui/springfox.js', 'anonymousUser', NULL, NULL, '254DDB64750345EB80A4B07579711E19', NULL);
INSERT INTO `logger` VALUES (41, '2021-10-26 20:42:48', '0:0:0:0:0:0:0:1', '/swagger-ui/swagger-ui-standalone-preset.js', 'anonymousUser', NULL, NULL, '254DDB64750345EB80A4B07579711E19', NULL);
INSERT INTO `logger` VALUES (42, '2021-10-26 20:42:49', '0:0:0:0:0:0:0:1', '/swagger-resources/configuration/ui', 'anonim@mail.com', NULL, NULL, '254DDB64750345EB80A4B07579711E19', NULL);
INSERT INTO `logger` VALUES (43, '2021-10-26 20:42:49', '0:0:0:0:0:0:0:1', '/swagger-ui/favicon-32x32.png', 'anonymousUser', NULL, NULL, '254DDB64750345EB80A4B07579711E19', NULL);
INSERT INTO `logger` VALUES (44, '2021-10-26 20:42:49', '0:0:0:0:0:0:0:1', '/swagger-resources/configuration/security', 'anonim@mail.com', NULL, NULL, '254DDB64750345EB80A4B07579711E19', NULL);
INSERT INTO `logger` VALUES (45, '2021-10-26 20:42:49', '0:0:0:0:0:0:0:1', '/swagger-resources', 'anonim@mail.com', NULL, NULL, '254DDB64750345EB80A4B07579711E19', NULL);
INSERT INTO `logger` VALUES (46, '2021-10-26 20:42:49', '0:0:0:0:0:0:0:1', '/v2/api-docs', 'anonim@mail.com', NULL, NULL, '254DDB64750345EB80A4B07579711E19', NULL);
INSERT INTO `logger` VALUES (47, '2021-10-26 21:15:35', '0:0:0:0:0:0:0:1', '/swagger-ui/', 'anonymousUser', NULL, NULL, '8A0B097BB41C6E4A0FEA50BFAC3EEC98', NULL);
INSERT INTO `logger` VALUES (48, '2021-10-26 21:15:35', '0:0:0:0:0:0:0:1', '/swagger-ui/springfox.css', 'anonymousUser', NULL, NULL, '8A0B097BB41C6E4A0FEA50BFAC3EEC98', NULL);
INSERT INTO `logger` VALUES (49, '2021-10-26 21:15:35', '0:0:0:0:0:0:0:1', '/swagger-ui/swagger-ui.css', 'anonymousUser', NULL, NULL, '8A0B097BB41C6E4A0FEA50BFAC3EEC98', NULL);
INSERT INTO `logger` VALUES (50, '2021-10-26 21:15:35', '0:0:0:0:0:0:0:1', '/swagger-ui/springfox.js', 'anonymousUser', NULL, NULL, '8A0B097BB41C6E4A0FEA50BFAC3EEC98', NULL);
INSERT INTO `logger` VALUES (51, '2021-10-26 21:15:35', '0:0:0:0:0:0:0:1', '/swagger-ui/swagger-ui-standalone-preset.js', 'anonymousUser', NULL, NULL, '8A0B097BB41C6E4A0FEA50BFAC3EEC98', NULL);
INSERT INTO `logger` VALUES (52, '2021-10-26 21:15:35', '0:0:0:0:0:0:0:1', '/swagger-ui/swagger-ui-bundle.js', 'anonymousUser', NULL, NULL, '8A0B097BB41C6E4A0FEA50BFAC3EEC98', NULL);
INSERT INTO `logger` VALUES (53, '2021-10-26 21:15:35', '0:0:0:0:0:0:0:1', '/swagger-resources/configuration/ui', 'anonim@mail.com', NULL, NULL, '8A0B097BB41C6E4A0FEA50BFAC3EEC98', NULL);
INSERT INTO `logger` VALUES (54, '2021-10-26 21:15:36', '0:0:0:0:0:0:0:1', '/swagger-resources/configuration/security', 'anonim@mail.com', NULL, NULL, '8A0B097BB41C6E4A0FEA50BFAC3EEC98', NULL);
INSERT INTO `logger` VALUES (55, '2021-10-26 21:15:36', '0:0:0:0:0:0:0:1', '/swagger-resources', 'anonim@mail.com', NULL, NULL, '8A0B097BB41C6E4A0FEA50BFAC3EEC98', NULL);
INSERT INTO `logger` VALUES (56, '2021-10-26 21:15:36', '0:0:0:0:0:0:0:1', '/v2/api-docs', 'anonim@mail.com', NULL, NULL, '8A0B097BB41C6E4A0FEA50BFAC3EEC98', NULL);
INSERT INTO `logger` VALUES (57, '2021-10-26 21:16:02', '0:0:0:0:0:0:0:1', '/swagger-ui/', 'anonymousUser', NULL, NULL, '8A0B097BB41C6E4A0FEA50BFAC3EEC98', NULL);
INSERT INTO `logger` VALUES (58, '2021-10-26 21:16:02', '0:0:0:0:0:0:0:1', '/swagger-ui/springfox.css', 'anonymousUser', NULL, NULL, '8A0B097BB41C6E4A0FEA50BFAC3EEC98', NULL);
INSERT INTO `logger` VALUES (59, '2021-10-26 21:16:02', '0:0:0:0:0:0:0:1', '/swagger-ui/swagger-ui.css', 'anonymousUser', NULL, NULL, '8A0B097BB41C6E4A0FEA50BFAC3EEC98', NULL);
INSERT INTO `logger` VALUES (60, '2021-10-26 21:16:02', '0:0:0:0:0:0:0:1', '/swagger-ui/swagger-ui-standalone-preset.js', 'anonymousUser', NULL, NULL, '8A0B097BB41C6E4A0FEA50BFAC3EEC98', NULL);
INSERT INTO `logger` VALUES (61, '2021-10-26 21:16:02', '0:0:0:0:0:0:0:1', '/swagger-ui/swagger-ui-bundle.js', 'anonymousUser', NULL, NULL, '8A0B097BB41C6E4A0FEA50BFAC3EEC98', NULL);
INSERT INTO `logger` VALUES (62, '2021-10-26 21:16:02', '0:0:0:0:0:0:0:1', '/swagger-ui/springfox.js', 'anonymousUser', NULL, NULL, '8A0B097BB41C6E4A0FEA50BFAC3EEC98', NULL);
INSERT INTO `logger` VALUES (63, '2021-10-26 21:16:03', '0:0:0:0:0:0:0:1', '/swagger-resources/configuration/ui', 'anonim@mail.com', NULL, NULL, '8A0B097BB41C6E4A0FEA50BFAC3EEC98', NULL);
INSERT INTO `logger` VALUES (64, '2021-10-26 21:16:03', '0:0:0:0:0:0:0:1', '/swagger-ui/favicon-32x32.png', 'anonymousUser', NULL, NULL, '8A0B097BB41C6E4A0FEA50BFAC3EEC98', NULL);
INSERT INTO `logger` VALUES (65, '2021-10-26 21:16:03', '0:0:0:0:0:0:0:1', '/swagger-resources/configuration/security', 'anonim@mail.com', NULL, NULL, '8A0B097BB41C6E4A0FEA50BFAC3EEC98', NULL);
INSERT INTO `logger` VALUES (66, '2021-10-26 21:16:03', '0:0:0:0:0:0:0:1', '/swagger-resources', 'anonim@mail.com', NULL, NULL, '8A0B097BB41C6E4A0FEA50BFAC3EEC98', NULL);
INSERT INTO `logger` VALUES (67, '2021-10-26 21:16:03', '0:0:0:0:0:0:0:1', '/v2/api-docs', 'anonim@mail.com', NULL, NULL, '8A0B097BB41C6E4A0FEA50BFAC3EEC98', NULL);
INSERT INTO `logger` VALUES (68, '2021-10-27 02:44:08', '0:0:0:0:0:0:0:1', '/login', 'anonymousUser', NULL, NULL, '3DE4D7C4FCDFBE7E47D8F73A8ED4C26C', NULL);
INSERT INTO `logger` VALUES (69, '2021-10-27 02:44:10', '0:0:0:0:0:0:0:1', '/js/jquery-3.1.1.js', 'anonymousUser', NULL, NULL, '3DE4D7C4FCDFBE7E47D8F73A8ED4C26C', NULL);
INSERT INTO `logger` VALUES (70, '2021-10-27 02:44:10', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.js', 'anonymousUser', NULL, NULL, '3DE4D7C4FCDFBE7E47D8F73A8ED4C26C', NULL);
INSERT INTO `logger` VALUES (71, '2021-10-27 02:44:10', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.css', 'anonymousUser', NULL, NULL, '3DE4D7C4FCDFBE7E47D8F73A8ED4C26C', NULL);
INSERT INTO `logger` VALUES (72, '2021-10-27 02:44:10', '0:0:0:0:0:0:0:1', '/css/all.min.css', 'anonymousUser', NULL, NULL, '3DE4D7C4FCDFBE7E47D8F73A8ED4C26C', NULL);
INSERT INTO `logger` VALUES (73, '2021-10-27 02:44:10', '0:0:0:0:0:0:0:1', '/css/ckeditor.css', 'anonymousUser', NULL, NULL, '3DE4D7C4FCDFBE7E47D8F73A8ED4C26C', NULL);
INSERT INTO `logger` VALUES (74, '2021-10-27 02:44:10', '0:0:0:0:0:0:0:1', '/css/style.css', 'anonymousUser', NULL, NULL, '3DE4D7C4FCDFBE7E47D8F73A8ED4C26C', NULL);
INSERT INTO `logger` VALUES (75, '2021-10-27 02:44:10', '0:0:0:0:0:0:0:1', '/js/script.js', 'anonymousUser', NULL, NULL, '3DE4D7C4FCDFBE7E47D8F73A8ED4C26C', NULL);
INSERT INTO `logger` VALUES (76, '2021-10-27 02:44:11', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/brand-icons.woff2', 'anonymousUser', NULL, NULL, '3DE4D7C4FCDFBE7E47D8F73A8ED4C26C', NULL);
INSERT INTO `logger` VALUES (77, '2021-10-27 02:44:11', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/outline-icons.woff2', 'anonymousUser', NULL, NULL, '3DE4D7C4FCDFBE7E47D8F73A8ED4C26C', NULL);
INSERT INTO `logger` VALUES (78, '2021-10-27 02:44:11', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/icons.woff2', 'anonymousUser', NULL, NULL, '3DE4D7C4FCDFBE7E47D8F73A8ED4C26C', NULL);
INSERT INTO `logger` VALUES (79, '2021-10-27 02:44:12', '0:0:0:0:0:0:0:1', '/login', 'anonymousUser', NULL, NULL, '3DE4D7C4FCDFBE7E47D8F73A8ED4C26C', NULL);
INSERT INTO `logger` VALUES (80, '2021-10-27 02:45:22', '0:0:0:0:0:0:0:1', '/announce', 'alper@mail.com', 'alper', 'ROLE_MVC', 'E1ED81576D356645A078DB177A326AA4', 'yilmaz');
INSERT INTO `logger` VALUES (81, '2021-10-27 02:45:22', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.css', 'alper@mail.com', 'alper', 'ROLE_MVC', 'E1ED81576D356645A078DB177A326AA4', 'yilmaz');
INSERT INTO `logger` VALUES (82, '2021-10-27 02:45:22', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.js', 'alper@mail.com', 'alper', 'ROLE_MVC', 'E1ED81576D356645A078DB177A326AA4', 'yilmaz');
INSERT INTO `logger` VALUES (83, '2021-10-27 02:45:22', '0:0:0:0:0:0:0:1', '/js/jquery-3.1.1.js', 'alper@mail.com', 'alper', 'ROLE_MVC', 'E1ED81576D356645A078DB177A326AA4', 'yilmaz');
INSERT INTO `logger` VALUES (84, '2021-10-27 02:45:22', '0:0:0:0:0:0:0:1', '/css/style.css', 'alper@mail.com', 'alper', 'ROLE_MVC', 'E1ED81576D356645A078DB177A326AA4', 'yilmaz');
INSERT INTO `logger` VALUES (85, '2021-10-27 02:45:22', '0:0:0:0:0:0:0:1', '/css/ckeditor.css', 'alper@mail.com', 'alper', 'ROLE_MVC', 'E1ED81576D356645A078DB177A326AA4', 'yilmaz');
INSERT INTO `logger` VALUES (86, '2021-10-27 02:45:22', '0:0:0:0:0:0:0:1', '/css/all.min.css', 'alper@mail.com', 'alper', 'ROLE_MVC', 'E1ED81576D356645A078DB177A326AA4', 'yilmaz');
INSERT INTO `logger` VALUES (87, '2021-10-27 02:45:22', '0:0:0:0:0:0:0:1', '/js/script.js', 'alper@mail.com', 'alper', 'ROLE_MVC', 'E1ED81576D356645A078DB177A326AA4', 'yilmaz');
INSERT INTO `logger` VALUES (88, '2021-10-27 02:45:22', '0:0:0:0:0:0:0:1', '/sitejs/announce.js', 'alper@mail.com', 'alper', 'ROLE_MVC', 'E1ED81576D356645A078DB177A326AA4', 'yilmaz');
INSERT INTO `logger` VALUES (89, '2021-10-27 02:45:23', '0:0:0:0:0:0:0:1', '/announce/listed', 'alper@mail.com', 'alper', 'ROLE_MVC', 'E1ED81576D356645A078DB177A326AA4', 'yilmaz');
INSERT INTO `logger` VALUES (90, '2021-10-27 02:45:23', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/brand-icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', 'E1ED81576D356645A078DB177A326AA4', 'yilmaz');
INSERT INTO `logger` VALUES (91, '2021-10-27 02:45:23', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', 'E1ED81576D356645A078DB177A326AA4', 'yilmaz');
INSERT INTO `logger` VALUES (92, '2021-10-27 02:45:23', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/outline-icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', 'E1ED81576D356645A078DB177A326AA4', 'yilmaz');
INSERT INTO `logger` VALUES (93, '2021-10-27 02:45:24', '0:0:0:0:0:0:0:1', '/favicon.ico', 'alper@mail.com', 'alper', 'ROLE_MVC', 'E1ED81576D356645A078DB177A326AA4', 'yilmaz');
INSERT INTO `logger` VALUES (94, '2021-10-27 02:45:48', '0:0:0:0:0:0:0:1', '/productManager', 'alper@mail.com', 'alper', 'ROLE_MVC', 'E1ED81576D356645A078DB177A326AA4', 'yilmaz');
INSERT INTO `logger` VALUES (95, '2021-10-27 02:45:48', '0:0:0:0:0:0:0:1', '/css/style.css', 'alper@mail.com', 'alper', 'ROLE_MVC', 'E1ED81576D356645A078DB177A326AA4', 'yilmaz');
INSERT INTO `logger` VALUES (96, '2021-10-27 02:45:48', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.css', 'alper@mail.com', 'alper', 'ROLE_MVC', 'E1ED81576D356645A078DB177A326AA4', 'yilmaz');
INSERT INTO `logger` VALUES (97, '2021-10-27 02:45:48', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.js', 'alper@mail.com', 'alper', 'ROLE_MVC', 'E1ED81576D356645A078DB177A326AA4', 'yilmaz');
INSERT INTO `logger` VALUES (98, '2021-10-27 02:45:48', '0:0:0:0:0:0:0:1', '/js/jquery-3.1.1.js', 'alper@mail.com', 'alper', 'ROLE_MVC', 'E1ED81576D356645A078DB177A326AA4', 'yilmaz');
INSERT INTO `logger` VALUES (99, '2021-10-27 02:45:48', '0:0:0:0:0:0:0:1', '/css/all.min.css', 'alper@mail.com', 'alper', 'ROLE_MVC', 'E1ED81576D356645A078DB177A326AA4', 'yilmaz');
INSERT INTO `logger` VALUES (100, '2021-10-27 02:45:48', '0:0:0:0:0:0:0:1', '/css/ckeditor.css', 'alper@mail.com', 'alper', 'ROLE_MVC', 'E1ED81576D356645A078DB177A326AA4', 'yilmaz');
INSERT INTO `logger` VALUES (101, '2021-10-27 02:45:48', '0:0:0:0:0:0:0:1', '/sitejs/productManagement.js', 'alper@mail.com', 'alper', 'ROLE_MVC', 'E1ED81576D356645A078DB177A326AA4', 'yilmaz');
INSERT INTO `logger` VALUES (102, '2021-10-27 02:45:48', '0:0:0:0:0:0:0:1', '/js/script.js', 'alper@mail.com', 'alper', 'ROLE_MVC', 'E1ED81576D356645A078DB177A326AA4', 'yilmaz');
INSERT INTO `logger` VALUES (103, '2021-10-27 02:45:49', '0:0:0:0:0:0:0:1', '/productManager/listed', 'alper@mail.com', 'alper', 'ROLE_MVC', 'E1ED81576D356645A078DB177A326AA4', 'yilmaz');
INSERT INTO `logger` VALUES (104, '2021-10-27 02:45:49', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/outline-icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', 'E1ED81576D356645A078DB177A326AA4', 'yilmaz');
INSERT INTO `logger` VALUES (105, '2021-10-27 02:45:49', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/brand-icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', 'E1ED81576D356645A078DB177A326AA4', 'yilmaz');
INSERT INTO `logger` VALUES (106, '2021-10-27 02:45:49', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', 'E1ED81576D356645A078DB177A326AA4', 'yilmaz');
INSERT INTO `logger` VALUES (107, '2021-10-27 02:45:51', '0:0:0:0:0:0:0:1', '/uploads/product/a9a1e5a0-ba70-481c-af53-29b069e96d386.jpg', 'alper@mail.com', 'alper', 'ROLE_MVC', 'E1ED81576D356645A078DB177A326AA4', 'yilmaz');
INSERT INTO `logger` VALUES (108, '2021-10-27 02:45:51', '0:0:0:0:0:0:0:1', '/uploads/product/c1bc4107-e05d-4cd3-aaab-6e37ae5b578a5.jpg', 'alper@mail.com', 'alper', 'ROLE_MVC', 'E1ED81576D356645A078DB177A326AA4', 'yilmaz');
INSERT INTO `logger` VALUES (109, '2021-10-27 02:45:51', '0:0:0:0:0:0:0:1', '/uploads/product/9dc57043-5540-4b12-a266-35f59b965d577.jpg', 'alper@mail.com', 'alper', 'ROLE_MVC', 'E1ED81576D356645A078DB177A326AA4', 'yilmaz');
INSERT INTO `logger` VALUES (110, '2021-10-27 02:45:53', '0:0:0:0:0:0:0:1', '/uploads/product/b01e0740-dc4a-4dc2-bc8b-ad5ccfcd14245.jpg', 'alper@mail.com', 'alper', 'ROLE_MVC', 'E1ED81576D356645A078DB177A326AA4', 'yilmaz');
INSERT INTO `logger` VALUES (111, '2021-10-27 02:45:59', '0:0:0:0:0:0:0:1', '/productManager/pagelisted/1/5', 'alper@mail.com', 'alper', 'ROLE_MVC', 'E1ED81576D356645A078DB177A326AA4', 'yilmaz');
INSERT INTO `logger` VALUES (112, '2021-10-27 02:46:10', '0:0:0:0:0:0:0:1', '/productManager/pagelisted/0/5', 'alper@mail.com', 'alper', 'ROLE_MVC', 'E1ED81576D356645A078DB177A326AA4', 'yilmaz');
INSERT INTO `logger` VALUES (113, '2021-10-27 02:46:45', '0:0:0:0:0:0:0:1', '/productManager/pagelisted/1/5', 'alper@mail.com', 'alper', 'ROLE_MVC', 'E1ED81576D356645A078DB177A326AA4', 'yilmaz');
INSERT INTO `logger` VALUES (114, '2021-10-27 02:46:57', '0:0:0:0:0:0:0:1', '/uploads/product/effa238b-69db-4d38-af7c-42846c2ecfef4.jpg', 'alper@mail.com', 'alper', 'ROLE_MVC', 'E1ED81576D356645A078DB177A326AA4', 'yilmaz');
INSERT INTO `logger` VALUES (115, '2021-10-27 02:46:57', '0:0:0:0:0:0:0:1', '/uploads/product/8267c080-a458-49de-a4d2-c01c85a4f1455.jpg', 'alper@mail.com', 'alper', 'ROLE_MVC', 'E1ED81576D356645A078DB177A326AA4', 'yilmaz');
INSERT INTO `logger` VALUES (116, '2021-10-27 02:46:57', '0:0:0:0:0:0:0:1', '/uploads/product/ad5bcdf7-2abe-42b4-8de5-9914447f5f386.jpg', 'alper@mail.com', 'alper', 'ROLE_MVC', 'E1ED81576D356645A078DB177A326AA4', 'yilmaz');
INSERT INTO `logger` VALUES (117, '2021-10-27 02:47:08', '0:0:0:0:0:0:0:1', '/product', 'alper@mail.com', 'alper', 'ROLE_MVC', 'E1ED81576D356645A078DB177A326AA4', 'yilmaz');
INSERT INTO `logger` VALUES (118, '2021-10-27 02:47:08', '0:0:0:0:0:0:0:1', '/js/jquery-3.1.1.js', 'alper@mail.com', 'alper', 'ROLE_MVC', 'E1ED81576D356645A078DB177A326AA4', 'yilmaz');
INSERT INTO `logger` VALUES (119, '2021-10-27 02:47:08', '0:0:0:0:0:0:0:1', '/css/all.min.css', 'alper@mail.com', 'alper', 'ROLE_MVC', 'E1ED81576D356645A078DB177A326AA4', 'yilmaz');
INSERT INTO `logger` VALUES (120, '2021-10-27 02:47:08', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.js', 'alper@mail.com', 'alper', 'ROLE_MVC', 'E1ED81576D356645A078DB177A326AA4', 'yilmaz');
INSERT INTO `logger` VALUES (121, '2021-10-27 02:47:08', '0:0:0:0:0:0:0:1', '/css/ckeditor.css', 'alper@mail.com', 'alper', 'ROLE_MVC', 'E1ED81576D356645A078DB177A326AA4', 'yilmaz');
INSERT INTO `logger` VALUES (122, '2021-10-27 02:47:08', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.css', 'alper@mail.com', 'alper', 'ROLE_MVC', 'E1ED81576D356645A078DB177A326AA4', 'yilmaz');
INSERT INTO `logger` VALUES (123, '2021-10-27 02:47:08', '0:0:0:0:0:0:0:1', '/css/style.css', 'alper@mail.com', 'alper', 'ROLE_MVC', 'E1ED81576D356645A078DB177A326AA4', 'yilmaz');
INSERT INTO `logger` VALUES (124, '2021-10-27 02:47:08', '0:0:0:0:0:0:0:1', '/js/script.js', 'alper@mail.com', 'alper', 'ROLE_MVC', 'E1ED81576D356645A078DB177A326AA4', 'yilmaz');
INSERT INTO `logger` VALUES (125, '2021-10-27 02:47:09', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/brand-icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', 'E1ED81576D356645A078DB177A326AA4', 'yilmaz');
INSERT INTO `logger` VALUES (126, '2021-10-27 02:47:09', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', 'E1ED81576D356645A078DB177A326AA4', 'yilmaz');
INSERT INTO `logger` VALUES (127, '2021-10-27 02:47:09', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/outline-icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', 'E1ED81576D356645A078DB177A326AA4', 'yilmaz');
INSERT INTO `logger` VALUES (128, '2021-10-27 02:47:20', '0:0:0:0:0:0:0:1', '/product/add', 'alper@mail.com', 'alper', 'ROLE_MVC', 'E1ED81576D356645A078DB177A326AA4', 'yilmaz');
INSERT INTO `logger` VALUES (129, '2021-10-27 02:47:20', '0:0:0:0:0:0:0:1', '/css/style.css', 'alper@mail.com', 'alper', 'ROLE_MVC', 'E1ED81576D356645A078DB177A326AA4', 'yilmaz');
INSERT INTO `logger` VALUES (130, '2021-10-27 02:47:20', '0:0:0:0:0:0:0:1', '/css/all.min.css', 'alper@mail.com', 'alper', 'ROLE_MVC', 'E1ED81576D356645A078DB177A326AA4', 'yilmaz');
INSERT INTO `logger` VALUES (131, '2021-10-27 02:47:20', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.js', 'alper@mail.com', 'alper', 'ROLE_MVC', 'E1ED81576D356645A078DB177A326AA4', 'yilmaz');
INSERT INTO `logger` VALUES (132, '2021-10-27 02:47:20', '0:0:0:0:0:0:0:1', '/js/jquery-3.1.1.js', 'alper@mail.com', 'alper', 'ROLE_MVC', 'E1ED81576D356645A078DB177A326AA4', 'yilmaz');
INSERT INTO `logger` VALUES (133, '2021-10-27 02:47:20', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.css', 'alper@mail.com', 'alper', 'ROLE_MVC', 'E1ED81576D356645A078DB177A326AA4', 'yilmaz');
INSERT INTO `logger` VALUES (134, '2021-10-27 02:47:20', '0:0:0:0:0:0:0:1', '/css/ckeditor.css', 'alper@mail.com', 'alper', 'ROLE_MVC', 'E1ED81576D356645A078DB177A326AA4', 'yilmaz');
INSERT INTO `logger` VALUES (135, '2021-10-27 02:47:20', '0:0:0:0:0:0:0:1', '/js/script.js', 'alper@mail.com', 'alper', 'ROLE_MVC', 'E1ED81576D356645A078DB177A326AA4', 'yilmaz');
INSERT INTO `logger` VALUES (136, '2021-10-27 02:47:21', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', 'E1ED81576D356645A078DB177A326AA4', 'yilmaz');
INSERT INTO `logger` VALUES (137, '2021-10-27 02:47:21', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/brand-icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', 'E1ED81576D356645A078DB177A326AA4', 'yilmaz');
INSERT INTO `logger` VALUES (138, '2021-10-27 02:47:21', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/outline-icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', 'E1ED81576D356645A078DB177A326AA4', 'yilmaz');
INSERT INTO `logger` VALUES (139, '2021-10-27 02:47:30', '0:0:0:0:0:0:0:1', '/product/', 'alper@mail.com', 'alper', 'ROLE_MVC', 'E1ED81576D356645A078DB177A326AA4', 'yilmaz');
INSERT INTO `logger` VALUES (140, '2021-10-27 02:47:49', '0:0:0:0:0:0:0:1', '/registers', 'alper@mail.com', 'alper', 'ROLE_MVC', 'E1ED81576D356645A078DB177A326AA4', 'yilmaz');
INSERT INTO `logger` VALUES (141, '2021-10-27 02:47:49', '0:0:0:0:0:0:0:1', '/js/jquery-3.1.1.js', 'alper@mail.com', 'alper', 'ROLE_MVC', 'E1ED81576D356645A078DB177A326AA4', 'yilmaz');
INSERT INTO `logger` VALUES (142, '2021-10-27 02:47:49', '0:0:0:0:0:0:0:1', '/registers', 'alper@mail.com', 'alper', 'ROLE_MVC', 'E1ED81576D356645A078DB177A326AA4', 'yilmaz');
INSERT INTO `logger` VALUES (143, '2021-10-27 02:47:49', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.js', 'alper@mail.com', 'alper', 'ROLE_MVC', 'E1ED81576D356645A078DB177A326AA4', 'yilmaz');
INSERT INTO `logger` VALUES (144, '2021-10-27 02:47:49', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.css', 'alper@mail.com', 'alper', 'ROLE_MVC', 'E1ED81576D356645A078DB177A326AA4', 'yilmaz');
INSERT INTO `logger` VALUES (145, '2021-10-27 02:47:49', '0:0:0:0:0:0:0:1', '/css/all.min.css', 'alper@mail.com', 'alper', 'ROLE_MVC', 'E1ED81576D356645A078DB177A326AA4', 'yilmaz');
INSERT INTO `logger` VALUES (146, '2021-10-27 02:47:49', '0:0:0:0:0:0:0:1', '/css/style.css', 'alper@mail.com', 'alper', 'ROLE_MVC', 'E1ED81576D356645A078DB177A326AA4', 'yilmaz');
INSERT INTO `logger` VALUES (147, '2021-10-27 02:47:50', '0:0:0:0:0:0:0:1', '/css/ckeditor.css', 'alper@mail.com', 'alper', 'ROLE_MVC', 'E1ED81576D356645A078DB177A326AA4', 'yilmaz');
INSERT INTO `logger` VALUES (148, '2021-10-27 02:47:50', '0:0:0:0:0:0:0:1', '/js/script.js', 'alper@mail.com', 'alper', 'ROLE_MVC', 'E1ED81576D356645A078DB177A326AA4', 'yilmaz');
INSERT INTO `logger` VALUES (149, '2021-10-27 02:47:50', '0:0:0:0:0:0:0:1', '/css/ckeditor.css', 'alper@mail.com', 'alper', 'ROLE_MVC', 'E1ED81576D356645A078DB177A326AA4', 'yilmaz');
INSERT INTO `logger` VALUES (150, '2021-10-27 02:47:50', '0:0:0:0:0:0:0:1', '/js/jquery-3.1.1.js', 'alper@mail.com', 'alper', 'ROLE_MVC', 'E1ED81576D356645A078DB177A326AA4', 'yilmaz');
INSERT INTO `logger` VALUES (151, '2021-10-27 02:47:50', '0:0:0:0:0:0:0:1', '/css/all.min.css', 'alper@mail.com', 'alper', 'ROLE_MVC', 'E1ED81576D356645A078DB177A326AA4', 'yilmaz');
INSERT INTO `logger` VALUES (152, '2021-10-27 02:47:50', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.css', 'alper@mail.com', 'alper', 'ROLE_MVC', 'E1ED81576D356645A078DB177A326AA4', 'yilmaz');
INSERT INTO `logger` VALUES (153, '2021-10-27 02:47:50', '0:0:0:0:0:0:0:1', '/css/style.css', 'alper@mail.com', 'alper', 'ROLE_MVC', 'E1ED81576D356645A078DB177A326AA4', 'yilmaz');
INSERT INTO `logger` VALUES (154, '2021-10-27 02:47:50', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.js', 'alper@mail.com', 'alper', 'ROLE_MVC', 'E1ED81576D356645A078DB177A326AA4', 'yilmaz');
INSERT INTO `logger` VALUES (155, '2021-10-27 02:47:50', '0:0:0:0:0:0:0:1', '/js/script.js', 'alper@mail.com', 'alper', 'ROLE_MVC', 'E1ED81576D356645A078DB177A326AA4', 'yilmaz');
INSERT INTO `logger` VALUES (156, '2021-10-27 02:47:51', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/brand-icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', 'E1ED81576D356645A078DB177A326AA4', 'yilmaz');
INSERT INTO `logger` VALUES (157, '2021-10-27 02:47:51', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/outline-icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', 'E1ED81576D356645A078DB177A326AA4', 'yilmaz');
INSERT INTO `logger` VALUES (158, '2021-10-27 02:47:51', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', 'E1ED81576D356645A078DB177A326AA4', 'yilmaz');
INSERT INTO `logger` VALUES (159, '2021-10-27 02:47:53', '0:0:0:0:0:0:0:1', '/registers/add', 'alper@mail.com', 'alper', 'ROLE_MVC', 'E1ED81576D356645A078DB177A326AA4', 'yilmaz');
INSERT INTO `logger` VALUES (160, '2021-10-27 02:47:54', '0:0:0:0:0:0:0:1', '/css/all.min.css', 'alper@mail.com', 'alper', 'ROLE_MVC', 'E1ED81576D356645A078DB177A326AA4', 'yilmaz');
INSERT INTO `logger` VALUES (161, '2021-10-27 02:47:54', '0:0:0:0:0:0:0:1', '/css/ckeditor.css', 'alper@mail.com', 'alper', 'ROLE_MVC', 'E1ED81576D356645A078DB177A326AA4', 'yilmaz');
INSERT INTO `logger` VALUES (162, '2021-10-27 02:47:54', '0:0:0:0:0:0:0:1', '/css/style.css', 'alper@mail.com', 'alper', 'ROLE_MVC', 'E1ED81576D356645A078DB177A326AA4', 'yilmaz');
INSERT INTO `logger` VALUES (163, '2021-10-27 02:47:54', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.js', 'alper@mail.com', 'alper', 'ROLE_MVC', 'E1ED81576D356645A078DB177A326AA4', 'yilmaz');
INSERT INTO `logger` VALUES (164, '2021-10-27 02:47:54', '0:0:0:0:0:0:0:1', '/js/jquery-3.1.1.js', 'alper@mail.com', 'alper', 'ROLE_MVC', 'E1ED81576D356645A078DB177A326AA4', 'yilmaz');
INSERT INTO `logger` VALUES (165, '2021-10-27 02:47:54', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.css', 'alper@mail.com', 'alper', 'ROLE_MVC', 'E1ED81576D356645A078DB177A326AA4', 'yilmaz');
INSERT INTO `logger` VALUES (166, '2021-10-27 02:47:55', '0:0:0:0:0:0:0:1', '/js/script.js', 'alper@mail.com', 'alper', 'ROLE_MVC', 'E1ED81576D356645A078DB177A326AA4', 'yilmaz');
INSERT INTO `logger` VALUES (167, '2021-10-27 02:47:55', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/outline-icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', 'E1ED81576D356645A078DB177A326AA4', 'yilmaz');
INSERT INTO `logger` VALUES (168, '2021-10-27 02:47:55', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/brand-icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', 'E1ED81576D356645A078DB177A326AA4', 'yilmaz');
INSERT INTO `logger` VALUES (169, '2021-10-27 02:47:55', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', 'E1ED81576D356645A078DB177A326AA4', 'yilmaz');
INSERT INTO `logger` VALUES (170, '2021-10-27 02:48:46', '0:0:0:0:0:0:0:1', '/login', 'anonymousUser', NULL, NULL, 'ABD27C04DB35F41AB6A6500A6E0FF724', NULL);
INSERT INTO `logger` VALUES (171, '2021-10-27 02:48:47', '0:0:0:0:0:0:0:1', '/login', 'anonymousUser', NULL, NULL, 'AE3F1A622F54889591C9FF325A0C7389', NULL);
INSERT INTO `logger` VALUES (172, '2021-10-27 02:48:47', '0:0:0:0:0:0:0:1', '/js/jquery-3.1.1.js', 'anonymousUser', NULL, NULL, 'AE3F1A622F54889591C9FF325A0C7389', NULL);
INSERT INTO `logger` VALUES (173, '2021-10-27 02:48:47', '0:0:0:0:0:0:0:1', '/css/style.css', 'anonymousUser', NULL, NULL, 'AE3F1A622F54889591C9FF325A0C7389', NULL);
INSERT INTO `logger` VALUES (174, '2021-10-27 02:48:47', '0:0:0:0:0:0:0:1', '/css/ckeditor.css', 'anonymousUser', NULL, NULL, 'AE3F1A622F54889591C9FF325A0C7389', NULL);
INSERT INTO `logger` VALUES (175, '2021-10-27 02:48:47', '0:0:0:0:0:0:0:1', '/css/all.min.css', 'anonymousUser', NULL, NULL, 'AE3F1A622F54889591C9FF325A0C7389', NULL);
INSERT INTO `logger` VALUES (176, '2021-10-27 02:48:47', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.css', 'anonymousUser', NULL, NULL, 'AE3F1A622F54889591C9FF325A0C7389', NULL);
INSERT INTO `logger` VALUES (177, '2021-10-27 02:48:47', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.js', 'anonymousUser', NULL, NULL, 'AE3F1A622F54889591C9FF325A0C7389', NULL);
INSERT INTO `logger` VALUES (178, '2021-10-27 02:48:47', '0:0:0:0:0:0:0:1', '/js/script.js', 'anonymousUser', NULL, NULL, 'AE3F1A622F54889591C9FF325A0C7389', NULL);
INSERT INTO `logger` VALUES (179, '2021-10-27 02:48:49', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/brand-icons.woff2', 'anonymousUser', NULL, NULL, 'AE3F1A622F54889591C9FF325A0C7389', NULL);
INSERT INTO `logger` VALUES (180, '2021-10-27 02:48:49', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/outline-icons.woff2', 'anonymousUser', NULL, NULL, 'AE3F1A622F54889591C9FF325A0C7389', NULL);
INSERT INTO `logger` VALUES (181, '2021-10-27 02:48:49', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/icons.woff2', 'anonymousUser', NULL, NULL, 'AE3F1A622F54889591C9FF325A0C7389', NULL);
INSERT INTO `logger` VALUES (182, '2021-10-27 02:48:58', '0:0:0:0:0:0:0:1', '/registers', 'anonymousUser', NULL, NULL, 'AE3F1A622F54889591C9FF325A0C7389', NULL);
INSERT INTO `logger` VALUES (183, '2021-10-27 02:48:58', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.css', 'anonymousUser', NULL, NULL, 'AE3F1A622F54889591C9FF325A0C7389', NULL);
INSERT INTO `logger` VALUES (184, '2021-10-27 02:48:58', '0:0:0:0:0:0:0:1', '/js/jquery-3.1.1.js', 'anonymousUser', NULL, NULL, 'AE3F1A622F54889591C9FF325A0C7389', NULL);
INSERT INTO `logger` VALUES (185, '2021-10-27 02:48:58', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.js', 'anonymousUser', NULL, NULL, 'AE3F1A622F54889591C9FF325A0C7389', NULL);
INSERT INTO `logger` VALUES (186, '2021-10-27 02:48:58', '0:0:0:0:0:0:0:1', '/css/style.css', 'anonymousUser', NULL, NULL, 'AE3F1A622F54889591C9FF325A0C7389', NULL);
INSERT INTO `logger` VALUES (187, '2021-10-27 02:48:58', '0:0:0:0:0:0:0:1', '/css/ckeditor.css', 'anonymousUser', NULL, NULL, 'AE3F1A622F54889591C9FF325A0C7389', NULL);
INSERT INTO `logger` VALUES (188, '2021-10-27 02:48:58', '0:0:0:0:0:0:0:1', '/css/all.min.css', 'anonymousUser', NULL, NULL, 'AE3F1A622F54889591C9FF325A0C7389', NULL);
INSERT INTO `logger` VALUES (189, '2021-10-27 02:48:58', '0:0:0:0:0:0:0:1', '/js/script.js', 'anonymousUser', NULL, NULL, 'AE3F1A622F54889591C9FF325A0C7389', NULL);
INSERT INTO `logger` VALUES (190, '2021-10-27 02:48:59', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/brand-icons.woff2', 'anonymousUser', NULL, NULL, 'AE3F1A622F54889591C9FF325A0C7389', NULL);
INSERT INTO `logger` VALUES (191, '2021-10-27 02:48:59', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/icons.woff2', 'anonymousUser', NULL, NULL, 'AE3F1A622F54889591C9FF325A0C7389', NULL);
INSERT INTO `logger` VALUES (192, '2021-10-27 02:48:59', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/outline-icons.woff2', 'anonymousUser', NULL, NULL, 'AE3F1A622F54889591C9FF325A0C7389', NULL);
INSERT INTO `logger` VALUES (193, '2021-10-27 02:49:01', '0:0:0:0:0:0:0:1', '/login', 'anonymousUser', NULL, NULL, 'AE3F1A622F54889591C9FF325A0C7389', NULL);
INSERT INTO `logger` VALUES (194, '2021-10-27 02:49:01', '0:0:0:0:0:0:0:1', '/js/jquery-3.1.1.js', 'anonymousUser', NULL, NULL, 'AE3F1A622F54889591C9FF325A0C7389', NULL);
INSERT INTO `logger` VALUES (195, '2021-10-27 02:49:01', '0:0:0:0:0:0:0:1', '/css/all.min.css', 'anonymousUser', NULL, NULL, 'AE3F1A622F54889591C9FF325A0C7389', NULL);
INSERT INTO `logger` VALUES (196, '2021-10-27 02:49:01', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.css', 'anonymousUser', NULL, NULL, 'AE3F1A622F54889591C9FF325A0C7389', NULL);
INSERT INTO `logger` VALUES (197, '2021-10-27 02:49:01', '0:0:0:0:0:0:0:1', '/css/style.css', 'anonymousUser', NULL, NULL, 'AE3F1A622F54889591C9FF325A0C7389', NULL);
INSERT INTO `logger` VALUES (198, '2021-10-27 02:49:01', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.js', 'anonymousUser', NULL, NULL, 'AE3F1A622F54889591C9FF325A0C7389', NULL);
INSERT INTO `logger` VALUES (199, '2021-10-27 02:49:01', '0:0:0:0:0:0:0:1', '/css/ckeditor.css', 'anonymousUser', NULL, NULL, 'AE3F1A622F54889591C9FF325A0C7389', NULL);
INSERT INTO `logger` VALUES (200, '2021-10-27 02:49:01', '0:0:0:0:0:0:0:1', '/js/script.js', 'anonymousUser', NULL, NULL, 'AE3F1A622F54889591C9FF325A0C7389', NULL);
INSERT INTO `logger` VALUES (201, '2021-10-27 02:50:01', '0:0:0:0:0:0:0:1', '/login', 'anonymousUser', NULL, NULL, 'AE3F1A622F54889591C9FF325A0C7389', NULL);
INSERT INTO `logger` VALUES (202, '2021-10-27 02:50:01', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.js', 'anonymousUser', NULL, NULL, 'AE3F1A622F54889591C9FF325A0C7389', NULL);
INSERT INTO `logger` VALUES (203, '2021-10-27 02:50:01', '0:0:0:0:0:0:0:1', '/css/style.css', 'anonymousUser', NULL, NULL, 'AE3F1A622F54889591C9FF325A0C7389', NULL);
INSERT INTO `logger` VALUES (204, '2021-10-27 02:50:01', '0:0:0:0:0:0:0:1', '/js/jquery-3.1.1.js', 'anonymousUser', NULL, NULL, 'AE3F1A622F54889591C9FF325A0C7389', NULL);
INSERT INTO `logger` VALUES (205, '2021-10-27 02:50:01', '0:0:0:0:0:0:0:1', '/css/all.min.css', 'anonymousUser', NULL, NULL, 'AE3F1A622F54889591C9FF325A0C7389', NULL);
INSERT INTO `logger` VALUES (206, '2021-10-27 02:50:01', '0:0:0:0:0:0:0:1', '/css/ckeditor.css', 'anonymousUser', NULL, NULL, 'AE3F1A622F54889591C9FF325A0C7389', NULL);
INSERT INTO `logger` VALUES (207, '2021-10-27 02:50:01', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.css', 'anonymousUser', NULL, NULL, 'AE3F1A622F54889591C9FF325A0C7389', NULL);
INSERT INTO `logger` VALUES (208, '2021-10-27 02:50:02', '0:0:0:0:0:0:0:1', '/js/script.js', 'anonymousUser', NULL, NULL, 'AE3F1A622F54889591C9FF325A0C7389', NULL);
INSERT INTO `logger` VALUES (209, '2021-10-27 02:50:02', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/outline-icons.woff2', 'anonymousUser', NULL, NULL, 'AE3F1A622F54889591C9FF325A0C7389', NULL);
INSERT INTO `logger` VALUES (210, '2021-10-27 02:50:02', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/icons.woff2', 'anonymousUser', NULL, NULL, 'AE3F1A622F54889591C9FF325A0C7389', NULL);
INSERT INTO `logger` VALUES (211, '2021-10-27 02:50:02', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/brand-icons.woff2', 'anonymousUser', NULL, NULL, 'AE3F1A622F54889591C9FF325A0C7389', NULL);
INSERT INTO `logger` VALUES (212, '2021-10-27 02:50:50', '0:0:0:0:0:0:0:1', '/announce', 'alper@mail.com', 'alper', 'ROLE_MVC', 'BF271240364AE5F388343B611C3DB30C', 'yilmaz');
INSERT INTO `logger` VALUES (213, '2021-10-27 02:50:50', '0:0:0:0:0:0:0:1', '/css/style.css', 'alper@mail.com', 'alper', 'ROLE_MVC', 'BF271240364AE5F388343B611C3DB30C', 'yilmaz');
INSERT INTO `logger` VALUES (214, '2021-10-27 02:50:50', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.css', 'alper@mail.com', 'alper', 'ROLE_MVC', 'BF271240364AE5F388343B611C3DB30C', 'yilmaz');
INSERT INTO `logger` VALUES (215, '2021-10-27 02:50:50', '0:0:0:0:0:0:0:1', '/css/all.min.css', 'alper@mail.com', 'alper', 'ROLE_MVC', 'BF271240364AE5F388343B611C3DB30C', 'yilmaz');
INSERT INTO `logger` VALUES (216, '2021-10-27 02:50:50', '0:0:0:0:0:0:0:1', '/js/jquery-3.1.1.js', 'alper@mail.com', 'alper', 'ROLE_MVC', 'BF271240364AE5F388343B611C3DB30C', 'yilmaz');
INSERT INTO `logger` VALUES (217, '2021-10-27 02:50:50', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.js', 'alper@mail.com', 'alper', 'ROLE_MVC', 'BF271240364AE5F388343B611C3DB30C', 'yilmaz');
INSERT INTO `logger` VALUES (218, '2021-10-27 02:50:50', '0:0:0:0:0:0:0:1', '/css/ckeditor.css', 'alper@mail.com', 'alper', 'ROLE_MVC', 'BF271240364AE5F388343B611C3DB30C', 'yilmaz');
INSERT INTO `logger` VALUES (219, '2021-10-27 02:50:50', '0:0:0:0:0:0:0:1', '/js/script.js', 'alper@mail.com', 'alper', 'ROLE_MVC', 'BF271240364AE5F388343B611C3DB30C', 'yilmaz');
INSERT INTO `logger` VALUES (220, '2021-10-27 02:50:50', '0:0:0:0:0:0:0:1', '/sitejs/announce.js', 'alper@mail.com', 'alper', 'ROLE_MVC', 'BF271240364AE5F388343B611C3DB30C', 'yilmaz');
INSERT INTO `logger` VALUES (221, '2021-10-27 02:50:51', '0:0:0:0:0:0:0:1', '/announce/listed', 'alper@mail.com', 'alper', 'ROLE_MVC', 'BF271240364AE5F388343B611C3DB30C', 'yilmaz');
INSERT INTO `logger` VALUES (222, '2021-10-27 02:50:51', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/brand-icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', 'BF271240364AE5F388343B611C3DB30C', 'yilmaz');
INSERT INTO `logger` VALUES (223, '2021-10-27 02:50:51', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', 'BF271240364AE5F388343B611C3DB30C', 'yilmaz');
INSERT INTO `logger` VALUES (224, '2021-10-27 02:50:51', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/outline-icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', 'BF271240364AE5F388343B611C3DB30C', 'yilmaz');
INSERT INTO `logger` VALUES (225, '2021-10-27 02:51:44', '0:0:0:0:0:0:0:1', '/announce', 'alper@mail.com', 'alper', 'ROLE_MVC', 'BF271240364AE5F388343B611C3DB30C', 'yilmaz');
INSERT INTO `logger` VALUES (226, '2021-10-27 02:51:44', '0:0:0:0:0:0:0:1', '/js/jquery-3.1.1.js', 'alper@mail.com', 'alper', 'ROLE_MVC', 'BF271240364AE5F388343B611C3DB30C', 'yilmaz');
INSERT INTO `logger` VALUES (227, '2021-10-27 02:51:44', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.css', 'alper@mail.com', 'alper', 'ROLE_MVC', 'BF271240364AE5F388343B611C3DB30C', 'yilmaz');
INSERT INTO `logger` VALUES (228, '2021-10-27 02:51:44', '0:0:0:0:0:0:0:1', '/css/style.css', 'alper@mail.com', 'alper', 'ROLE_MVC', 'BF271240364AE5F388343B611C3DB30C', 'yilmaz');
INSERT INTO `logger` VALUES (229, '2021-10-27 02:51:44', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.js', 'alper@mail.com', 'alper', 'ROLE_MVC', 'BF271240364AE5F388343B611C3DB30C', 'yilmaz');
INSERT INTO `logger` VALUES (230, '2021-10-27 02:51:44', '0:0:0:0:0:0:0:1', '/css/all.min.css', 'alper@mail.com', 'alper', 'ROLE_MVC', 'BF271240364AE5F388343B611C3DB30C', 'yilmaz');
INSERT INTO `logger` VALUES (231, '2021-10-27 02:51:44', '0:0:0:0:0:0:0:1', '/css/ckeditor.css', 'alper@mail.com', 'alper', 'ROLE_MVC', 'BF271240364AE5F388343B611C3DB30C', 'yilmaz');
INSERT INTO `logger` VALUES (232, '2021-10-27 02:51:44', '0:0:0:0:0:0:0:1', '/js/script.js', 'alper@mail.com', 'alper', 'ROLE_MVC', 'BF271240364AE5F388343B611C3DB30C', 'yilmaz');
INSERT INTO `logger` VALUES (233, '2021-10-27 02:51:44', '0:0:0:0:0:0:0:1', '/sitejs/announce.js', 'alper@mail.com', 'alper', 'ROLE_MVC', 'BF271240364AE5F388343B611C3DB30C', 'yilmaz');
INSERT INTO `logger` VALUES (234, '2021-10-27 02:51:44', '0:0:0:0:0:0:0:1', '/announce/listed', 'alper@mail.com', 'alper', 'ROLE_MVC', 'BF271240364AE5F388343B611C3DB30C', 'yilmaz');
INSERT INTO `logger` VALUES (235, '2021-10-27 02:51:45', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', 'BF271240364AE5F388343B611C3DB30C', 'yilmaz');
INSERT INTO `logger` VALUES (236, '2021-10-27 02:51:45', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/outline-icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', 'BF271240364AE5F388343B611C3DB30C', 'yilmaz');
INSERT INTO `logger` VALUES (237, '2021-10-27 02:51:45', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/brand-icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', 'BF271240364AE5F388343B611C3DB30C', 'yilmaz');
INSERT INTO `logger` VALUES (238, '2021-10-27 02:52:49', '0:0:0:0:0:0:0:1', '/announce', 'alper@mail.com', 'alper', 'ROLE_MVC', 'BF271240364AE5F388343B611C3DB30C', 'yilmaz');
INSERT INTO `logger` VALUES (239, '2021-10-27 02:52:49', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.js', 'alper@mail.com', 'alper', 'ROLE_MVC', 'BF271240364AE5F388343B611C3DB30C', 'yilmaz');
INSERT INTO `logger` VALUES (240, '2021-10-27 02:52:49', '0:0:0:0:0:0:0:1', '/js/jquery-3.1.1.js', 'alper@mail.com', 'alper', 'ROLE_MVC', 'BF271240364AE5F388343B611C3DB30C', 'yilmaz');
INSERT INTO `logger` VALUES (241, '2021-10-27 02:52:49', '0:0:0:0:0:0:0:1', '/css/style.css', 'alper@mail.com', 'alper', 'ROLE_MVC', 'BF271240364AE5F388343B611C3DB30C', 'yilmaz');
INSERT INTO `logger` VALUES (242, '2021-10-27 02:52:49', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.css', 'alper@mail.com', 'alper', 'ROLE_MVC', 'BF271240364AE5F388343B611C3DB30C', 'yilmaz');
INSERT INTO `logger` VALUES (243, '2021-10-27 02:52:49', '0:0:0:0:0:0:0:1', '/css/all.min.css', 'alper@mail.com', 'alper', 'ROLE_MVC', 'BF271240364AE5F388343B611C3DB30C', 'yilmaz');
INSERT INTO `logger` VALUES (244, '2021-10-27 02:52:49', '0:0:0:0:0:0:0:1', '/css/ckeditor.css', 'alper@mail.com', 'alper', 'ROLE_MVC', 'BF271240364AE5F388343B611C3DB30C', 'yilmaz');
INSERT INTO `logger` VALUES (245, '2021-10-27 02:52:49', '0:0:0:0:0:0:0:1', '/sitejs/announce.js', 'alper@mail.com', 'alper', 'ROLE_MVC', 'BF271240364AE5F388343B611C3DB30C', 'yilmaz');
INSERT INTO `logger` VALUES (246, '2021-10-27 02:52:49', '0:0:0:0:0:0:0:1', '/js/script.js', 'alper@mail.com', 'alper', 'ROLE_MVC', 'BF271240364AE5F388343B611C3DB30C', 'yilmaz');
INSERT INTO `logger` VALUES (247, '2021-10-27 02:52:50', '0:0:0:0:0:0:0:1', '/announce/listed', 'alper@mail.com', 'alper', 'ROLE_MVC', 'BF271240364AE5F388343B611C3DB30C', 'yilmaz');
INSERT INTO `logger` VALUES (248, '2021-10-27 02:52:50', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/outline-icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', 'BF271240364AE5F388343B611C3DB30C', 'yilmaz');
INSERT INTO `logger` VALUES (249, '2021-10-27 02:52:50', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', 'BF271240364AE5F388343B611C3DB30C', 'yilmaz');
INSERT INTO `logger` VALUES (250, '2021-10-27 02:52:50', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/brand-icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', 'BF271240364AE5F388343B611C3DB30C', 'yilmaz');
INSERT INTO `logger` VALUES (251, '2021-10-27 02:52:51', '0:0:0:0:0:0:0:1', '/favicon.ico', 'alper@mail.com', 'alper', 'ROLE_MVC', 'BF271240364AE5F388343B611C3DB30C', 'yilmaz');
INSERT INTO `logger` VALUES (252, '2021-10-27 02:52:58', '0:0:0:0:0:0:0:1', '/announce', 'alper@mail.com', 'alper', 'ROLE_MVC', 'BF271240364AE5F388343B611C3DB30C', 'yilmaz');
INSERT INTO `logger` VALUES (253, '2021-10-27 02:52:58', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.js', 'alper@mail.com', 'alper', 'ROLE_MVC', 'BF271240364AE5F388343B611C3DB30C', 'yilmaz');
INSERT INTO `logger` VALUES (254, '2021-10-27 02:52:58', '0:0:0:0:0:0:0:1', '/js/jquery-3.1.1.js', 'alper@mail.com', 'alper', 'ROLE_MVC', 'BF271240364AE5F388343B611C3DB30C', 'yilmaz');
INSERT INTO `logger` VALUES (255, '2021-10-27 02:52:58', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.css', 'alper@mail.com', 'alper', 'ROLE_MVC', 'BF271240364AE5F388343B611C3DB30C', 'yilmaz');
INSERT INTO `logger` VALUES (256, '2021-10-27 02:52:58', '0:0:0:0:0:0:0:1', '/css/all.min.css', 'alper@mail.com', 'alper', 'ROLE_MVC', 'BF271240364AE5F388343B611C3DB30C', 'yilmaz');
INSERT INTO `logger` VALUES (257, '2021-10-27 02:52:58', '0:0:0:0:0:0:0:1', '/css/ckeditor.css', 'alper@mail.com', 'alper', 'ROLE_MVC', 'BF271240364AE5F388343B611C3DB30C', 'yilmaz');
INSERT INTO `logger` VALUES (258, '2021-10-27 02:52:58', '0:0:0:0:0:0:0:1', '/css/style.css', 'alper@mail.com', 'alper', 'ROLE_MVC', 'BF271240364AE5F388343B611C3DB30C', 'yilmaz');
INSERT INTO `logger` VALUES (259, '2021-10-27 02:52:58', '0:0:0:0:0:0:0:1', '/js/script.js', 'alper@mail.com', 'alper', 'ROLE_MVC', 'BF271240364AE5F388343B611C3DB30C', 'yilmaz');
INSERT INTO `logger` VALUES (260, '2021-10-27 02:52:58', '0:0:0:0:0:0:0:1', '/sitejs/announce.js', 'alper@mail.com', 'alper', 'ROLE_MVC', 'BF271240364AE5F388343B611C3DB30C', 'yilmaz');
INSERT INTO `logger` VALUES (261, '2021-10-27 02:52:58', '0:0:0:0:0:0:0:1', '/announce/listed', 'alper@mail.com', 'alper', 'ROLE_MVC', 'BF271240364AE5F388343B611C3DB30C', 'yilmaz');
INSERT INTO `logger` VALUES (262, '2021-10-27 02:52:58', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', 'BF271240364AE5F388343B611C3DB30C', 'yilmaz');
INSERT INTO `logger` VALUES (263, '2021-10-27 02:52:58', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/brand-icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', 'BF271240364AE5F388343B611C3DB30C', 'yilmaz');
INSERT INTO `logger` VALUES (264, '2021-10-27 02:52:58', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/outline-icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', 'BF271240364AE5F388343B611C3DB30C', 'yilmaz');
INSERT INTO `logger` VALUES (265, '2021-10-27 02:53:41', '0:0:0:0:0:0:0:1', '/announce', 'alper@mail.com', 'alper', 'ROLE_MVC', 'BF271240364AE5F388343B611C3DB30C', 'yilmaz');
INSERT INTO `logger` VALUES (266, '2021-10-27 02:53:41', '0:0:0:0:0:0:0:1', '/js/jquery-3.1.1.js', 'alper@mail.com', 'alper', 'ROLE_MVC', 'BF271240364AE5F388343B611C3DB30C', 'yilmaz');
INSERT INTO `logger` VALUES (267, '2021-10-27 02:53:41', '0:0:0:0:0:0:0:1', '/css/ckeditor.css', 'alper@mail.com', 'alper', 'ROLE_MVC', 'BF271240364AE5F388343B611C3DB30C', 'yilmaz');
INSERT INTO `logger` VALUES (268, '2021-10-27 02:53:41', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.js', 'alper@mail.com', 'alper', 'ROLE_MVC', 'BF271240364AE5F388343B611C3DB30C', 'yilmaz');
INSERT INTO `logger` VALUES (269, '2021-10-27 02:53:41', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.css', 'alper@mail.com', 'alper', 'ROLE_MVC', 'BF271240364AE5F388343B611C3DB30C', 'yilmaz');
INSERT INTO `logger` VALUES (270, '2021-10-27 02:53:41', '0:0:0:0:0:0:0:1', '/sitejs/announce.js', 'alper@mail.com', 'alper', 'ROLE_MVC', 'BF271240364AE5F388343B611C3DB30C', 'yilmaz');
INSERT INTO `logger` VALUES (271, '2021-10-27 02:53:41', '0:0:0:0:0:0:0:1', '/css/style.css', 'alper@mail.com', 'alper', 'ROLE_MVC', 'BF271240364AE5F388343B611C3DB30C', 'yilmaz');
INSERT INTO `logger` VALUES (272, '2021-10-27 02:53:41', '0:0:0:0:0:0:0:1', '/css/all.min.css', 'alper@mail.com', 'alper', 'ROLE_MVC', 'BF271240364AE5F388343B611C3DB30C', 'yilmaz');
INSERT INTO `logger` VALUES (273, '2021-10-27 02:53:41', '0:0:0:0:0:0:0:1', '/js/script.js', 'alper@mail.com', 'alper', 'ROLE_MVC', 'BF271240364AE5F388343B611C3DB30C', 'yilmaz');
INSERT INTO `logger` VALUES (274, '2021-10-27 02:53:42', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/outline-icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', 'BF271240364AE5F388343B611C3DB30C', 'yilmaz');
INSERT INTO `logger` VALUES (275, '2021-10-27 02:53:42', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', 'BF271240364AE5F388343B611C3DB30C', 'yilmaz');
INSERT INTO `logger` VALUES (276, '2021-10-27 02:53:42', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/brand-icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', 'BF271240364AE5F388343B611C3DB30C', 'yilmaz');
INSERT INTO `logger` VALUES (277, '2021-10-27 02:53:42', '0:0:0:0:0:0:0:1', '/announce/listed', 'alper@mail.com', 'alper', 'ROLE_MVC', 'BF271240364AE5F388343B611C3DB30C', 'yilmaz');
INSERT INTO `logger` VALUES (278, '2021-10-27 02:53:43', '0:0:0:0:0:0:0:1', '/favicon.ico', 'alper@mail.com', 'alper', 'ROLE_MVC', 'BF271240364AE5F388343B611C3DB30C', 'yilmaz');
INSERT INTO `logger` VALUES (279, '2021-10-27 02:53:47', '0:0:0:0:0:0:0:1', '/announce', 'alper@mail.com', 'alper', 'ROLE_MVC', 'BF271240364AE5F388343B611C3DB30C', 'yilmaz');
INSERT INTO `logger` VALUES (280, '2021-10-27 02:53:47', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.js', 'alper@mail.com', 'alper', 'ROLE_MVC', 'BF271240364AE5F388343B611C3DB30C', 'yilmaz');
INSERT INTO `logger` VALUES (281, '2021-10-27 02:53:47', '0:0:0:0:0:0:0:1', '/js/jquery-3.1.1.js', 'alper@mail.com', 'alper', 'ROLE_MVC', 'BF271240364AE5F388343B611C3DB30C', 'yilmaz');
INSERT INTO `logger` VALUES (282, '2021-10-27 02:53:47', '0:0:0:0:0:0:0:1', '/css/style.css', 'alper@mail.com', 'alper', 'ROLE_MVC', 'BF271240364AE5F388343B611C3DB30C', 'yilmaz');
INSERT INTO `logger` VALUES (283, '2021-10-27 02:53:47', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.css', 'alper@mail.com', 'alper', 'ROLE_MVC', 'BF271240364AE5F388343B611C3DB30C', 'yilmaz');
INSERT INTO `logger` VALUES (284, '2021-10-27 02:53:47', '0:0:0:0:0:0:0:1', '/css/all.min.css', 'alper@mail.com', 'alper', 'ROLE_MVC', 'BF271240364AE5F388343B611C3DB30C', 'yilmaz');
INSERT INTO `logger` VALUES (285, '2021-10-27 02:53:47', '0:0:0:0:0:0:0:1', '/css/ckeditor.css', 'alper@mail.com', 'alper', 'ROLE_MVC', 'BF271240364AE5F388343B611C3DB30C', 'yilmaz');
INSERT INTO `logger` VALUES (286, '2021-10-27 02:53:47', '0:0:0:0:0:0:0:1', '/js/script.js', 'alper@mail.com', 'alper', 'ROLE_MVC', 'BF271240364AE5F388343B611C3DB30C', 'yilmaz');
INSERT INTO `logger` VALUES (287, '2021-10-27 02:53:47', '0:0:0:0:0:0:0:1', '/sitejs/announce.js', 'alper@mail.com', 'alper', 'ROLE_MVC', 'BF271240364AE5F388343B611C3DB30C', 'yilmaz');
INSERT INTO `logger` VALUES (288, '2021-10-27 02:53:47', '0:0:0:0:0:0:0:1', '/announce/listed', 'alper@mail.com', 'alper', 'ROLE_MVC', 'BF271240364AE5F388343B611C3DB30C', 'yilmaz');
INSERT INTO `logger` VALUES (289, '2021-10-27 02:53:47', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/brand-icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', 'BF271240364AE5F388343B611C3DB30C', 'yilmaz');
INSERT INTO `logger` VALUES (290, '2021-10-27 02:53:47', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', 'BF271240364AE5F388343B611C3DB30C', 'yilmaz');
INSERT INTO `logger` VALUES (291, '2021-10-27 02:53:47', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/outline-icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', 'BF271240364AE5F388343B611C3DB30C', 'yilmaz');
INSERT INTO `logger` VALUES (292, '2021-10-27 02:53:49', '0:0:0:0:0:0:0:1', '/login', 'alper@mail.com', 'alper', 'ROLE_MVC', 'BF271240364AE5F388343B611C3DB30C', 'yilmaz');
INSERT INTO `logger` VALUES (293, '2021-10-27 02:53:49', '0:0:0:0:0:0:0:1', '/css/style.css', 'alper@mail.com', 'alper', 'ROLE_MVC', 'BF271240364AE5F388343B611C3DB30C', 'yilmaz');
INSERT INTO `logger` VALUES (294, '2021-10-27 02:53:49', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.js', 'alper@mail.com', 'alper', 'ROLE_MVC', 'BF271240364AE5F388343B611C3DB30C', 'yilmaz');
INSERT INTO `logger` VALUES (295, '2021-10-27 02:53:49', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.css', 'alper@mail.com', 'alper', 'ROLE_MVC', 'BF271240364AE5F388343B611C3DB30C', 'yilmaz');
INSERT INTO `logger` VALUES (296, '2021-10-27 02:53:49', '0:0:0:0:0:0:0:1', '/css/all.min.css', 'alper@mail.com', 'alper', 'ROLE_MVC', 'BF271240364AE5F388343B611C3DB30C', 'yilmaz');
INSERT INTO `logger` VALUES (297, '2021-10-27 02:53:49', '0:0:0:0:0:0:0:1', '/js/jquery-3.1.1.js', 'alper@mail.com', 'alper', 'ROLE_MVC', 'BF271240364AE5F388343B611C3DB30C', 'yilmaz');
INSERT INTO `logger` VALUES (298, '2021-10-27 02:53:49', '0:0:0:0:0:0:0:1', '/css/ckeditor.css', 'alper@mail.com', 'alper', 'ROLE_MVC', 'BF271240364AE5F388343B611C3DB30C', 'yilmaz');
INSERT INTO `logger` VALUES (299, '2021-10-27 02:53:49', '0:0:0:0:0:0:0:1', '/js/script.js', 'alper@mail.com', 'alper', 'ROLE_MVC', 'BF271240364AE5F388343B611C3DB30C', 'yilmaz');
INSERT INTO `logger` VALUES (300, '2021-10-27 02:53:53', '0:0:0:0:0:0:0:1', '/announce', 'alper@mail.com', 'alper', 'ROLE_MVC', 'C039BBE7D221974518C75042EFF2AC36', 'yilmaz');
INSERT INTO `logger` VALUES (301, '2021-10-27 02:53:53', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.css', 'alper@mail.com', 'alper', 'ROLE_MVC', 'C039BBE7D221974518C75042EFF2AC36', 'yilmaz');
INSERT INTO `logger` VALUES (302, '2021-10-27 02:53:53', '0:0:0:0:0:0:0:1', '/js/jquery-3.1.1.js', 'alper@mail.com', 'alper', 'ROLE_MVC', 'C039BBE7D221974518C75042EFF2AC36', 'yilmaz');
INSERT INTO `logger` VALUES (303, '2021-10-27 02:53:53', '0:0:0:0:0:0:0:1', '/css/all.min.css', 'alper@mail.com', 'alper', 'ROLE_MVC', 'C039BBE7D221974518C75042EFF2AC36', 'yilmaz');
INSERT INTO `logger` VALUES (304, '2021-10-27 02:53:53', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.js', 'alper@mail.com', 'alper', 'ROLE_MVC', 'C039BBE7D221974518C75042EFF2AC36', 'yilmaz');
INSERT INTO `logger` VALUES (305, '2021-10-27 02:53:53', '0:0:0:0:0:0:0:1', '/css/style.css', 'alper@mail.com', 'alper', 'ROLE_MVC', 'C039BBE7D221974518C75042EFF2AC36', 'yilmaz');
INSERT INTO `logger` VALUES (306, '2021-10-27 02:53:53', '0:0:0:0:0:0:0:1', '/css/ckeditor.css', 'alper@mail.com', 'alper', 'ROLE_MVC', 'C039BBE7D221974518C75042EFF2AC36', 'yilmaz');
INSERT INTO `logger` VALUES (307, '2021-10-27 02:53:53', '0:0:0:0:0:0:0:1', '/js/script.js', 'alper@mail.com', 'alper', 'ROLE_MVC', 'C039BBE7D221974518C75042EFF2AC36', 'yilmaz');
INSERT INTO `logger` VALUES (308, '2021-10-27 02:53:53', '0:0:0:0:0:0:0:1', '/sitejs/announce.js', 'alper@mail.com', 'alper', 'ROLE_MVC', 'C039BBE7D221974518C75042EFF2AC36', 'yilmaz');
INSERT INTO `logger` VALUES (309, '2021-10-27 02:53:53', '0:0:0:0:0:0:0:1', '/announce/listed', 'alper@mail.com', 'alper', 'ROLE_MVC', 'C039BBE7D221974518C75042EFF2AC36', 'yilmaz');
INSERT INTO `logger` VALUES (310, '2021-10-27 02:53:53', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/brand-icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', 'C039BBE7D221974518C75042EFF2AC36', 'yilmaz');
INSERT INTO `logger` VALUES (311, '2021-10-27 02:53:53', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/outline-icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', 'C039BBE7D221974518C75042EFF2AC36', 'yilmaz');
INSERT INTO `logger` VALUES (312, '2021-10-27 02:53:53', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', 'C039BBE7D221974518C75042EFF2AC36', 'yilmaz');
INSERT INTO `logger` VALUES (313, '2021-10-27 02:54:00', '0:0:0:0:0:0:0:1', '/gallery', 'alper@mail.com', 'alper', 'ROLE_MVC', 'C039BBE7D221974518C75042EFF2AC36', 'yilmaz');
INSERT INTO `logger` VALUES (314, '2021-10-27 02:54:00', '0:0:0:0:0:0:0:1', '/js/jquery-3.1.1.js', 'alper@mail.com', 'alper', 'ROLE_MVC', 'C039BBE7D221974518C75042EFF2AC36', 'yilmaz');
INSERT INTO `logger` VALUES (315, '2021-10-27 02:54:00', '0:0:0:0:0:0:0:1', '/css/style.css', 'alper@mail.com', 'alper', 'ROLE_MVC', 'C039BBE7D221974518C75042EFF2AC36', 'yilmaz');
INSERT INTO `logger` VALUES (316, '2021-10-27 02:54:00', '0:0:0:0:0:0:0:1', '/css/all.min.css', 'alper@mail.com', 'alper', 'ROLE_MVC', 'C039BBE7D221974518C75042EFF2AC36', 'yilmaz');
INSERT INTO `logger` VALUES (317, '2021-10-27 02:54:00', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.css', 'alper@mail.com', 'alper', 'ROLE_MVC', 'C039BBE7D221974518C75042EFF2AC36', 'yilmaz');
INSERT INTO `logger` VALUES (318, '2021-10-27 02:54:00', '0:0:0:0:0:0:0:1', '/css/ckeditor.css', 'alper@mail.com', 'alper', 'ROLE_MVC', 'C039BBE7D221974518C75042EFF2AC36', 'yilmaz');
INSERT INTO `logger` VALUES (319, '2021-10-27 02:54:00', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.js', 'alper@mail.com', 'alper', 'ROLE_MVC', 'C039BBE7D221974518C75042EFF2AC36', 'yilmaz');
INSERT INTO `logger` VALUES (320, '2021-10-27 02:54:00', '0:0:0:0:0:0:0:1', '/js/script.js', 'alper@mail.com', 'alper', 'ROLE_MVC', 'C039BBE7D221974518C75042EFF2AC36', 'yilmaz');
INSERT INTO `logger` VALUES (321, '2021-10-27 02:54:00', '0:0:0:0:0:0:0:1', '/sitejs/gallery.js', 'alper@mail.com', 'alper', 'ROLE_MVC', 'C039BBE7D221974518C75042EFF2AC36', 'yilmaz');
INSERT INTO `logger` VALUES (322, '2021-10-27 02:54:01', '0:0:0:0:0:0:0:1', '/gallery', 'alper@mail.com', 'alper', 'ROLE_MVC', 'C039BBE7D221974518C75042EFF2AC36', 'yilmaz');
INSERT INTO `logger` VALUES (323, '2021-10-27 02:54:01', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.js', 'alper@mail.com', 'alper', 'ROLE_MVC', 'C039BBE7D221974518C75042EFF2AC36', 'yilmaz');
INSERT INTO `logger` VALUES (324, '2021-10-27 02:54:01', '0:0:0:0:0:0:0:1', '/js/jquery-3.1.1.js', 'alper@mail.com', 'alper', 'ROLE_MVC', 'C039BBE7D221974518C75042EFF2AC36', 'yilmaz');
INSERT INTO `logger` VALUES (325, '2021-10-27 02:54:01', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.css', 'alper@mail.com', 'alper', 'ROLE_MVC', 'C039BBE7D221974518C75042EFF2AC36', 'yilmaz');
INSERT INTO `logger` VALUES (326, '2021-10-27 02:54:01', '0:0:0:0:0:0:0:1', '/css/style.css', 'alper@mail.com', 'alper', 'ROLE_MVC', 'C039BBE7D221974518C75042EFF2AC36', 'yilmaz');
INSERT INTO `logger` VALUES (327, '2021-10-27 02:54:01', '0:0:0:0:0:0:0:1', '/css/ckeditor.css', 'alper@mail.com', 'alper', 'ROLE_MVC', 'C039BBE7D221974518C75042EFF2AC36', 'yilmaz');
INSERT INTO `logger` VALUES (328, '2021-10-27 02:54:01', '0:0:0:0:0:0:0:1', '/js/script.js', 'alper@mail.com', 'alper', 'ROLE_MVC', 'C039BBE7D221974518C75042EFF2AC36', 'yilmaz');
INSERT INTO `logger` VALUES (329, '2021-10-27 02:54:02', '0:0:0:0:0:0:0:1', '/sitejs/gallery.js', 'alper@mail.com', 'alper', 'ROLE_MVC', 'C039BBE7D221974518C75042EFF2AC36', 'yilmaz');
INSERT INTO `logger` VALUES (330, '2021-10-27 02:54:02', '0:0:0:0:0:0:0:1', '/css/all.min.css', 'alper@mail.com', 'alper', 'ROLE_MVC', 'C039BBE7D221974518C75042EFF2AC36', 'yilmaz');
INSERT INTO `logger` VALUES (331, '2021-10-27 02:54:02', '0:0:0:0:0:0:0:1', '/gallery/listed', 'alper@mail.com', 'alper', 'ROLE_MVC', 'C039BBE7D221974518C75042EFF2AC36', 'yilmaz');
INSERT INTO `logger` VALUES (332, '2021-10-27 02:54:02', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', 'C039BBE7D221974518C75042EFF2AC36', 'yilmaz');
INSERT INTO `logger` VALUES (333, '2021-10-27 02:54:02', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/brand-icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', 'C039BBE7D221974518C75042EFF2AC36', 'yilmaz');
INSERT INTO `logger` VALUES (334, '2021-10-27 02:54:02', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/outline-icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', 'C039BBE7D221974518C75042EFF2AC36', 'yilmaz');
INSERT INTO `logger` VALUES (335, '2021-10-27 02:54:05', '0:0:0:0:0:0:0:1', '/gallery/detail/listed/sdfdsfsd', 'alper@mail.com', 'alper', 'ROLE_MVC', 'C039BBE7D221974518C75042EFF2AC36', 'yilmaz');
INSERT INTO `logger` VALUES (336, '2021-10-27 02:54:05', '0:0:0:0:0:0:0:1', '/uploads/gallery/cbe77ee6-a140-48d7-a3d3-31a6ad7c54cdy.png', 'alper@mail.com', 'alper', 'ROLE_MVC', 'C039BBE7D221974518C75042EFF2AC36', 'yilmaz');
INSERT INTO `logger` VALUES (337, '2021-10-27 02:54:07', '0:0:0:0:0:0:0:1', '/gallery/detail/listed/YeniGaleriKategori', 'alper@mail.com', 'alper', 'ROLE_MVC', 'C039BBE7D221974518C75042EFF2AC36', 'yilmaz');
INSERT INTO `logger` VALUES (338, '2021-10-27 02:54:07', '0:0:0:0:0:0:0:1', '/uploads/gallery/4bc45743-98f1-41c7-a0e6-68f592ce39c82.jpg', 'alper@mail.com', 'alper', 'ROLE_MVC', 'C039BBE7D221974518C75042EFF2AC36', 'yilmaz');
INSERT INTO `logger` VALUES (339, '2021-10-27 02:54:07', '0:0:0:0:0:0:0:1', '/uploads/gallery/faa4c404-f6f9-414e-a064-6e4f034291a13.jpg', 'alper@mail.com', 'alper', 'ROLE_MVC', 'C039BBE7D221974518C75042EFF2AC36', 'yilmaz');
INSERT INTO `logger` VALUES (340, '2021-10-27 02:54:07', '0:0:0:0:0:0:0:1', '/uploads/gallery/654fc9fd-43a9-4ffb-88c2-024ca0d38fb34.jpg', 'alper@mail.com', 'alper', 'ROLE_MVC', 'C039BBE7D221974518C75042EFF2AC36', 'yilmaz');
INSERT INTO `logger` VALUES (341, '2021-10-27 02:54:48', '0:0:0:0:0:0:0:1', '/product', 'alper@mail.com', 'alper', 'ROLE_MVC', 'C039BBE7D221974518C75042EFF2AC36', 'yilmaz');
INSERT INTO `logger` VALUES (342, '2021-10-27 02:54:48', '0:0:0:0:0:0:0:1', '/css/all.min.css', 'alper@mail.com', 'alper', 'ROLE_MVC', 'C039BBE7D221974518C75042EFF2AC36', 'yilmaz');
INSERT INTO `logger` VALUES (343, '2021-10-27 02:54:48', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.css', 'alper@mail.com', 'alper', 'ROLE_MVC', 'C039BBE7D221974518C75042EFF2AC36', 'yilmaz');
INSERT INTO `logger` VALUES (344, '2021-10-27 02:54:48', '0:0:0:0:0:0:0:1', '/js/jquery-3.1.1.js', 'alper@mail.com', 'alper', 'ROLE_MVC', 'C039BBE7D221974518C75042EFF2AC36', 'yilmaz');
INSERT INTO `logger` VALUES (345, '2021-10-27 02:54:48', '0:0:0:0:0:0:0:1', '/css/ckeditor.css', 'alper@mail.com', 'alper', 'ROLE_MVC', 'C039BBE7D221974518C75042EFF2AC36', 'yilmaz');
INSERT INTO `logger` VALUES (346, '2021-10-27 02:54:48', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.js', 'alper@mail.com', 'alper', 'ROLE_MVC', 'C039BBE7D221974518C75042EFF2AC36', 'yilmaz');
INSERT INTO `logger` VALUES (347, '2021-10-27 02:54:48', '0:0:0:0:0:0:0:1', '/css/style.css', 'alper@mail.com', 'alper', 'ROLE_MVC', 'C039BBE7D221974518C75042EFF2AC36', 'yilmaz');
INSERT INTO `logger` VALUES (348, '2021-10-27 02:54:48', '0:0:0:0:0:0:0:1', '/js/script.js', 'alper@mail.com', 'alper', 'ROLE_MVC', 'C039BBE7D221974518C75042EFF2AC36', 'yilmaz');
INSERT INTO `logger` VALUES (349, '2021-10-27 02:54:49', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/outline-icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', 'C039BBE7D221974518C75042EFF2AC36', 'yilmaz');
INSERT INTO `logger` VALUES (350, '2021-10-27 02:54:49', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', 'C039BBE7D221974518C75042EFF2AC36', 'yilmaz');
INSERT INTO `logger` VALUES (351, '2021-10-27 02:54:49', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/brand-icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', 'C039BBE7D221974518C75042EFF2AC36', 'yilmaz');
INSERT INTO `logger` VALUES (352, '2021-10-27 02:55:44', '0:0:0:0:0:0:0:1', '/productManager', 'alper@mail.com', 'alper', 'ROLE_MVC', 'C039BBE7D221974518C75042EFF2AC36', 'yilmaz');
INSERT INTO `logger` VALUES (353, '2021-10-27 02:55:44', '0:0:0:0:0:0:0:1', '/css/style.css', 'alper@mail.com', 'alper', 'ROLE_MVC', 'C039BBE7D221974518C75042EFF2AC36', 'yilmaz');
INSERT INTO `logger` VALUES (354, '2021-10-27 02:55:44', '0:0:0:0:0:0:0:1', '/js/jquery-3.1.1.js', 'alper@mail.com', 'alper', 'ROLE_MVC', 'C039BBE7D221974518C75042EFF2AC36', 'yilmaz');
INSERT INTO `logger` VALUES (355, '2021-10-27 02:55:44', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.js', 'alper@mail.com', 'alper', 'ROLE_MVC', 'C039BBE7D221974518C75042EFF2AC36', 'yilmaz');
INSERT INTO `logger` VALUES (356, '2021-10-27 02:55:44', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.css', 'alper@mail.com', 'alper', 'ROLE_MVC', 'C039BBE7D221974518C75042EFF2AC36', 'yilmaz');
INSERT INTO `logger` VALUES (357, '2021-10-27 02:55:44', '0:0:0:0:0:0:0:1', '/css/all.min.css', 'alper@mail.com', 'alper', 'ROLE_MVC', 'C039BBE7D221974518C75042EFF2AC36', 'yilmaz');
INSERT INTO `logger` VALUES (358, '2021-10-27 02:55:44', '0:0:0:0:0:0:0:1', '/css/ckeditor.css', 'alper@mail.com', 'alper', 'ROLE_MVC', 'C039BBE7D221974518C75042EFF2AC36', 'yilmaz');
INSERT INTO `logger` VALUES (359, '2021-10-27 02:55:44', '0:0:0:0:0:0:0:1', '/js/script.js', 'alper@mail.com', 'alper', 'ROLE_MVC', 'C039BBE7D221974518C75042EFF2AC36', 'yilmaz');
INSERT INTO `logger` VALUES (360, '2021-10-27 02:55:44', '0:0:0:0:0:0:0:1', '/sitejs/productManagement.js', 'alper@mail.com', 'alper', 'ROLE_MVC', 'C039BBE7D221974518C75042EFF2AC36', 'yilmaz');
INSERT INTO `logger` VALUES (361, '2021-10-27 02:55:45', '0:0:0:0:0:0:0:1', '/productManager/listed', 'alper@mail.com', 'alper', 'ROLE_MVC', 'C039BBE7D221974518C75042EFF2AC36', 'yilmaz');
INSERT INTO `logger` VALUES (362, '2021-10-27 02:55:45', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/outline-icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', 'C039BBE7D221974518C75042EFF2AC36', 'yilmaz');
INSERT INTO `logger` VALUES (363, '2021-10-27 02:55:45', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', 'C039BBE7D221974518C75042EFF2AC36', 'yilmaz');
INSERT INTO `logger` VALUES (364, '2021-10-27 02:55:45', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/brand-icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', 'C039BBE7D221974518C75042EFF2AC36', 'yilmaz');
INSERT INTO `logger` VALUES (365, '2021-10-27 02:55:50', '0:0:0:0:0:0:0:1', '/productManager/pagelisted/1/1', 'alper@mail.com', 'alper', 'ROLE_MVC', 'C039BBE7D221974518C75042EFF2AC36', 'yilmaz');
INSERT INTO `logger` VALUES (366, '2021-10-27 02:57:21', '0:0:0:0:0:0:0:1', '/category', 'alper@mail.com', 'alper', 'ROLE_MVC', 'C039BBE7D221974518C75042EFF2AC36', 'yilmaz');
INSERT INTO `logger` VALUES (367, '2021-10-27 02:57:21', '0:0:0:0:0:0:0:1', '/js/jquery-3.1.1.js', 'alper@mail.com', 'alper', 'ROLE_MVC', 'C039BBE7D221974518C75042EFF2AC36', 'yilmaz');
INSERT INTO `logger` VALUES (368, '2021-10-27 02:57:21', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.js', 'alper@mail.com', 'alper', 'ROLE_MVC', 'C039BBE7D221974518C75042EFF2AC36', 'yilmaz');
INSERT INTO `logger` VALUES (369, '2021-10-27 02:57:21', '0:0:0:0:0:0:0:1', '/css/all.min.css', 'alper@mail.com', 'alper', 'ROLE_MVC', 'C039BBE7D221974518C75042EFF2AC36', 'yilmaz');
INSERT INTO `logger` VALUES (370, '2021-10-27 02:57:21', '0:0:0:0:0:0:0:1', '/css/ckeditor.css', 'alper@mail.com', 'alper', 'ROLE_MVC', 'C039BBE7D221974518C75042EFF2AC36', 'yilmaz');
INSERT INTO `logger` VALUES (371, '2021-10-27 02:57:21', '0:0:0:0:0:0:0:1', '/css/style.css', 'alper@mail.com', 'alper', 'ROLE_MVC', 'C039BBE7D221974518C75042EFF2AC36', 'yilmaz');
INSERT INTO `logger` VALUES (372, '2021-10-27 02:57:21', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.css', 'alper@mail.com', 'alper', 'ROLE_MVC', 'C039BBE7D221974518C75042EFF2AC36', 'yilmaz');
INSERT INTO `logger` VALUES (373, '2021-10-27 02:57:21', '0:0:0:0:0:0:0:1', '/sitejs/category.js', 'alper@mail.com', 'alper', 'ROLE_MVC', 'C039BBE7D221974518C75042EFF2AC36', 'yilmaz');
INSERT INTO `logger` VALUES (374, '2021-10-27 02:57:21', '0:0:0:0:0:0:0:1', '/js/script.js', 'alper@mail.com', 'alper', 'ROLE_MVC', 'C039BBE7D221974518C75042EFF2AC36', 'yilmaz');
INSERT INTO `logger` VALUES (375, '2021-10-27 02:57:22', '0:0:0:0:0:0:0:1', '/category/listCat', 'alper@mail.com', 'alper', 'ROLE_MVC', 'C039BBE7D221974518C75042EFF2AC36', 'yilmaz');
INSERT INTO `logger` VALUES (376, '2021-10-27 02:57:22', '0:0:0:0:0:0:0:1', '/category/subCat', 'alper@mail.com', 'alper', 'ROLE_MVC', 'C039BBE7D221974518C75042EFF2AC36', 'yilmaz');
INSERT INTO `logger` VALUES (377, '2021-10-27 02:57:22', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/brand-icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', 'C039BBE7D221974518C75042EFF2AC36', 'yilmaz');
INSERT INTO `logger` VALUES (378, '2021-10-27 02:57:22', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', 'C039BBE7D221974518C75042EFF2AC36', 'yilmaz');
INSERT INTO `logger` VALUES (379, '2021-10-27 02:57:22', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/outline-icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', 'C039BBE7D221974518C75042EFF2AC36', 'yilmaz');
INSERT INTO `logger` VALUES (380, '2021-10-27 02:58:28', '0:0:0:0:0:0:0:1', '/announce', 'alper@mail.com', 'alper', 'ROLE_MVC', 'C039BBE7D221974518C75042EFF2AC36', 'yilmaz');
INSERT INTO `logger` VALUES (381, '2021-10-27 02:58:28', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.js', 'alper@mail.com', 'alper', 'ROLE_MVC', 'C039BBE7D221974518C75042EFF2AC36', 'yilmaz');
INSERT INTO `logger` VALUES (382, '2021-10-27 02:58:28', '0:0:0:0:0:0:0:1', '/css/style.css', 'alper@mail.com', 'alper', 'ROLE_MVC', 'C039BBE7D221974518C75042EFF2AC36', 'yilmaz');
INSERT INTO `logger` VALUES (383, '2021-10-27 02:58:28', '0:0:0:0:0:0:0:1', '/js/jquery-3.1.1.js', 'alper@mail.com', 'alper', 'ROLE_MVC', 'C039BBE7D221974518C75042EFF2AC36', 'yilmaz');
INSERT INTO `logger` VALUES (384, '2021-10-27 02:58:28', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.css', 'alper@mail.com', 'alper', 'ROLE_MVC', 'C039BBE7D221974518C75042EFF2AC36', 'yilmaz');
INSERT INTO `logger` VALUES (385, '2021-10-27 02:58:28', '0:0:0:0:0:0:0:1', '/css/ckeditor.css', 'alper@mail.com', 'alper', 'ROLE_MVC', 'C039BBE7D221974518C75042EFF2AC36', 'yilmaz');
INSERT INTO `logger` VALUES (386, '2021-10-27 02:58:28', '0:0:0:0:0:0:0:1', '/css/all.min.css', 'alper@mail.com', 'alper', 'ROLE_MVC', 'C039BBE7D221974518C75042EFF2AC36', 'yilmaz');
INSERT INTO `logger` VALUES (387, '2021-10-27 02:58:28', '0:0:0:0:0:0:0:1', '/sitejs/announce.js', 'alper@mail.com', 'alper', 'ROLE_MVC', 'C039BBE7D221974518C75042EFF2AC36', 'yilmaz');
INSERT INTO `logger` VALUES (388, '2021-10-27 02:58:28', '0:0:0:0:0:0:0:1', '/js/script.js', 'alper@mail.com', 'alper', 'ROLE_MVC', 'C039BBE7D221974518C75042EFF2AC36', 'yilmaz');
INSERT INTO `logger` VALUES (389, '2021-10-27 02:58:29', '0:0:0:0:0:0:0:1', '/announce/listed', 'alper@mail.com', 'alper', 'ROLE_MVC', 'C039BBE7D221974518C75042EFF2AC36', 'yilmaz');
INSERT INTO `logger` VALUES (390, '2021-10-27 02:58:29', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/outline-icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', 'C039BBE7D221974518C75042EFF2AC36', 'yilmaz');
INSERT INTO `logger` VALUES (391, '2021-10-27 02:58:29', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', 'C039BBE7D221974518C75042EFF2AC36', 'yilmaz');
INSERT INTO `logger` VALUES (392, '2021-10-27 02:58:29', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/brand-icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', 'C039BBE7D221974518C75042EFF2AC36', 'yilmaz');
INSERT INTO `logger` VALUES (393, '2021-10-27 06:46:09', '0:0:0:0:0:0:0:1', '/login', 'anonymousUser', NULL, NULL, '5D5A5E3C49A72937E994E090A699BA92', NULL);
INSERT INTO `logger` VALUES (394, '2021-10-27 06:46:10', '0:0:0:0:0:0:0:1', '/js/jquery-3.1.1.js', 'anonymousUser', NULL, NULL, '5D5A5E3C49A72937E994E090A699BA92', NULL);
INSERT INTO `logger` VALUES (395, '2021-10-27 06:46:10', '0:0:0:0:0:0:0:1', '/css/ckeditor.css', 'anonymousUser', NULL, NULL, '5D5A5E3C49A72937E994E090A699BA92', NULL);
INSERT INTO `logger` VALUES (396, '2021-10-27 06:46:10', '0:0:0:0:0:0:0:1', '/js/jquery.min.js', 'anonymousUser', NULL, NULL, '5D5A5E3C49A72937E994E090A699BA92', NULL);
INSERT INTO `logger` VALUES (397, '2021-10-27 06:46:10', '0:0:0:0:0:0:0:1', '/css/all.min.css', 'anonymousUser', NULL, NULL, '5D5A5E3C49A72937E994E090A699BA92', NULL);
INSERT INTO `logger` VALUES (398, '2021-10-27 06:46:10', '0:0:0:0:0:0:0:1', '/css/style.css', 'anonymousUser', NULL, NULL, '5D5A5E3C49A72937E994E090A699BA92', NULL);
INSERT INTO `logger` VALUES (399, '2021-10-27 06:46:10', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.css', 'anonymousUser', NULL, NULL, '5D5A5E3C49A72937E994E090A699BA92', NULL);
INSERT INTO `logger` VALUES (400, '2021-10-27 06:46:11', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.js', 'anonymousUser', NULL, NULL, '5D5A5E3C49A72937E994E090A699BA92', NULL);
INSERT INTO `logger` VALUES (401, '2021-10-27 06:46:11', '0:0:0:0:0:0:0:1', '/js/script.js', 'anonymousUser', NULL, NULL, '5D5A5E3C49A72937E994E090A699BA92', NULL);
INSERT INTO `logger` VALUES (402, '2021-10-27 06:46:11', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/outline-icons.woff2', 'anonymousUser', NULL, NULL, '5D5A5E3C49A72937E994E090A699BA92', NULL);
INSERT INTO `logger` VALUES (403, '2021-10-27 06:46:11', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/brand-icons.woff2', 'anonymousUser', NULL, NULL, '5D5A5E3C49A72937E994E090A699BA92', NULL);
INSERT INTO `logger` VALUES (404, '2021-10-27 06:46:11', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/icons.woff2', 'anonymousUser', NULL, NULL, '5D5A5E3C49A72937E994E090A699BA92', NULL);
INSERT INTO `logger` VALUES (405, '2021-10-27 06:46:12', '0:0:0:0:0:0:0:1', '/login', 'anonymousUser', NULL, NULL, '5D5A5E3C49A72937E994E090A699BA92', NULL);
INSERT INTO `logger` VALUES (406, '2021-10-27 06:46:21', '0:0:0:0:0:0:0:1', '/content', 'anonymousUser', NULL, NULL, '5D5A5E3C49A72937E994E090A699BA92', NULL);
INSERT INTO `logger` VALUES (407, '2021-10-27 06:46:21', '0:0:0:0:0:0:0:1', '/js/jquery-3.1.1.js', 'anonymousUser', NULL, NULL, '5D5A5E3C49A72937E994E090A699BA92', NULL);
INSERT INTO `logger` VALUES (408, '2021-10-27 06:46:21', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.css', 'anonymousUser', NULL, NULL, '5D5A5E3C49A72937E994E090A699BA92', NULL);
INSERT INTO `logger` VALUES (409, '2021-10-27 06:46:21', '0:0:0:0:0:0:0:1', '/css/all.min.css', 'anonymousUser', NULL, NULL, '5D5A5E3C49A72937E994E090A699BA92', NULL);
INSERT INTO `logger` VALUES (410, '2021-10-27 06:46:21', '0:0:0:0:0:0:0:1', '/css/ckeditor.css', 'anonymousUser', NULL, NULL, '5D5A5E3C49A72937E994E090A699BA92', NULL);
INSERT INTO `logger` VALUES (411, '2021-10-27 06:46:21', '0:0:0:0:0:0:0:1', '/js/jquery.min.js', 'anonymousUser', NULL, NULL, '5D5A5E3C49A72937E994E090A699BA92', NULL);
INSERT INTO `logger` VALUES (412, '2021-10-27 06:46:21', '0:0:0:0:0:0:0:1', '/css/style.css', 'anonymousUser', NULL, NULL, '5D5A5E3C49A72937E994E090A699BA92', NULL);
INSERT INTO `logger` VALUES (413, '2021-10-27 06:46:21', '0:0:0:0:0:0:0:1', '/js/script.js', 'anonymousUser', NULL, NULL, '5D5A5E3C49A72937E994E090A699BA92', NULL);
INSERT INTO `logger` VALUES (414, '2021-10-27 06:46:21', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.js', 'anonymousUser', NULL, NULL, '5D5A5E3C49A72937E994E090A699BA92', NULL);
INSERT INTO `logger` VALUES (415, '2021-10-27 06:46:22', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/icons.woff2', 'anonymousUser', NULL, NULL, '5D5A5E3C49A72937E994E090A699BA92', NULL);
INSERT INTO `logger` VALUES (416, '2021-10-27 06:46:22', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/brand-icons.woff2', 'anonymousUser', NULL, NULL, '5D5A5E3C49A72937E994E090A699BA92', NULL);
INSERT INTO `logger` VALUES (417, '2021-10-27 06:46:22', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/outline-icons.woff2', 'anonymousUser', NULL, NULL, '5D5A5E3C49A72937E994E090A699BA92', NULL);
INSERT INTO `logger` VALUES (418, '2021-10-27 06:46:23', '0:0:0:0:0:0:0:1', '/login', 'anonymousUser', NULL, NULL, '5D5A5E3C49A72937E994E090A699BA92', NULL);
INSERT INTO `logger` VALUES (419, '2021-10-27 06:46:24', '0:0:0:0:0:0:0:1', '/login', 'anonymousUser', NULL, NULL, '5D5A5E3C49A72937E994E090A699BA92', NULL);
INSERT INTO `logger` VALUES (420, '2021-10-27 06:46:24', '0:0:0:0:0:0:0:1', '/js/jquery-3.1.1.js', 'anonymousUser', NULL, NULL, '5D5A5E3C49A72937E994E090A699BA92', NULL);
INSERT INTO `logger` VALUES (421, '2021-10-27 06:46:24', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.css', 'anonymousUser', NULL, NULL, '5D5A5E3C49A72937E994E090A699BA92', NULL);
INSERT INTO `logger` VALUES (422, '2021-10-27 06:46:24', '0:0:0:0:0:0:0:1', '/css/style.css', 'anonymousUser', NULL, NULL, '5D5A5E3C49A72937E994E090A699BA92', NULL);
INSERT INTO `logger` VALUES (423, '2021-10-27 06:46:24', '0:0:0:0:0:0:0:1', '/css/ckeditor.css', 'anonymousUser', NULL, NULL, '5D5A5E3C49A72937E994E090A699BA92', NULL);
INSERT INTO `logger` VALUES (424, '2021-10-27 06:46:24', '0:0:0:0:0:0:0:1', '/css/all.min.css', 'anonymousUser', NULL, NULL, '5D5A5E3C49A72937E994E090A699BA92', NULL);
INSERT INTO `logger` VALUES (425, '2021-10-27 06:46:24', '0:0:0:0:0:0:0:1', '/js/jquery.min.js', 'anonymousUser', NULL, NULL, '5D5A5E3C49A72937E994E090A699BA92', NULL);
INSERT INTO `logger` VALUES (426, '2021-10-27 06:46:25', '0:0:0:0:0:0:0:1', '/js/script.js', 'anonymousUser', NULL, NULL, '5D5A5E3C49A72937E994E090A699BA92', NULL);
INSERT INTO `logger` VALUES (427, '2021-10-27 06:46:25', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.js', 'anonymousUser', NULL, NULL, '5D5A5E3C49A72937E994E090A699BA92', NULL);
INSERT INTO `logger` VALUES (428, '2021-10-27 06:46:25', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/outline-icons.woff2', 'anonymousUser', NULL, NULL, '5D5A5E3C49A72937E994E090A699BA92', NULL);
INSERT INTO `logger` VALUES (429, '2021-10-27 06:46:25', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/brand-icons.woff2', 'anonymousUser', NULL, NULL, '5D5A5E3C49A72937E994E090A699BA92', NULL);
INSERT INTO `logger` VALUES (430, '2021-10-27 06:46:25', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/icons.woff2', 'anonymousUser', NULL, NULL, '5D5A5E3C49A72937E994E090A699BA92', NULL);
INSERT INTO `logger` VALUES (431, '2021-10-27 06:46:25', '0:0:0:0:0:0:0:1', '/login', 'anonymousUser', NULL, NULL, '5D5A5E3C49A72937E994E090A699BA92', NULL);
INSERT INTO `logger` VALUES (432, '2021-10-27 06:46:26', '0:0:0:0:0:0:0:1', '/category', 'anonymousUser', NULL, NULL, '5D5A5E3C49A72937E994E090A699BA92', NULL);
INSERT INTO `logger` VALUES (433, '2021-10-27 06:46:26', '0:0:0:0:0:0:0:1', '/js/jquery-3.1.1.js', 'anonymousUser', NULL, NULL, '5D5A5E3C49A72937E994E090A699BA92', NULL);
INSERT INTO `logger` VALUES (434, '2021-10-27 06:46:26', '0:0:0:0:0:0:0:1', '/css/all.min.css', 'anonymousUser', NULL, NULL, '5D5A5E3C49A72937E994E090A699BA92', NULL);
INSERT INTO `logger` VALUES (435, '2021-10-27 06:46:26', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.css', 'anonymousUser', NULL, NULL, '5D5A5E3C49A72937E994E090A699BA92', NULL);
INSERT INTO `logger` VALUES (436, '2021-10-27 06:46:26', '0:0:0:0:0:0:0:1', '/css/style.css', 'anonymousUser', NULL, NULL, '5D5A5E3C49A72937E994E090A699BA92', NULL);
INSERT INTO `logger` VALUES (437, '2021-10-27 06:46:26', '0:0:0:0:0:0:0:1', '/css/ckeditor.css', 'anonymousUser', NULL, NULL, '5D5A5E3C49A72937E994E090A699BA92', NULL);
INSERT INTO `logger` VALUES (438, '2021-10-27 06:46:26', '0:0:0:0:0:0:0:1', '/sitejs/category.js', 'anonymousUser', NULL, NULL, '5D5A5E3C49A72937E994E090A699BA92', NULL);
INSERT INTO `logger` VALUES (439, '2021-10-27 06:46:26', '0:0:0:0:0:0:0:1', '/js/script.js', 'anonymousUser', NULL, NULL, '5D5A5E3C49A72937E994E090A699BA92', NULL);
INSERT INTO `logger` VALUES (440, '2021-10-27 06:46:26', '0:0:0:0:0:0:0:1', '/js/jquery.min.js', 'anonymousUser', NULL, NULL, '5D5A5E3C49A72937E994E090A699BA92', NULL);
INSERT INTO `logger` VALUES (441, '2021-10-27 06:46:26', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.js', 'anonymousUser', NULL, NULL, '5D5A5E3C49A72937E994E090A699BA92', NULL);
INSERT INTO `logger` VALUES (442, '2021-10-27 06:46:26', '0:0:0:0:0:0:0:1', '/category/subCat', 'anonymousUser', NULL, NULL, '5D5A5E3C49A72937E994E090A699BA92', NULL);
INSERT INTO `logger` VALUES (443, '2021-10-27 06:46:26', '0:0:0:0:0:0:0:1', '/category/listCat', 'anonymousUser', NULL, NULL, '5D5A5E3C49A72937E994E090A699BA92', NULL);
INSERT INTO `logger` VALUES (444, '2021-10-27 06:46:26', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/icons.woff2', 'anonymousUser', NULL, NULL, '5D5A5E3C49A72937E994E090A699BA92', NULL);
INSERT INTO `logger` VALUES (445, '2021-10-27 06:46:26', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/brand-icons.woff2', 'anonymousUser', NULL, NULL, '5D5A5E3C49A72937E994E090A699BA92', NULL);
INSERT INTO `logger` VALUES (446, '2021-10-27 06:46:26', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/outline-icons.woff2', 'anonymousUser', NULL, NULL, '5D5A5E3C49A72937E994E090A699BA92', NULL);
INSERT INTO `logger` VALUES (447, '2021-10-27 06:46:27', '0:0:0:0:0:0:0:1', '/login', 'anonymousUser', NULL, NULL, '5D5A5E3C49A72937E994E090A699BA92', NULL);
INSERT INTO `logger` VALUES (448, '2021-10-27 06:46:29', '0:0:0:0:0:0:0:1', '/login', 'anonymousUser', NULL, NULL, '5D5A5E3C49A72937E994E090A699BA92', NULL);
INSERT INTO `logger` VALUES (449, '2021-10-27 06:46:29', '0:0:0:0:0:0:0:1', '/js/jquery-3.1.1.js', 'anonymousUser', NULL, NULL, '5D5A5E3C49A72937E994E090A699BA92', NULL);
INSERT INTO `logger` VALUES (450, '2021-10-27 06:46:29', '0:0:0:0:0:0:0:1', '/css/style.css', 'anonymousUser', NULL, NULL, '5D5A5E3C49A72937E994E090A699BA92', NULL);
INSERT INTO `logger` VALUES (451, '2021-10-27 06:46:29', '0:0:0:0:0:0:0:1', '/css/all.min.css', 'anonymousUser', NULL, NULL, '5D5A5E3C49A72937E994E090A699BA92', NULL);
INSERT INTO `logger` VALUES (452, '2021-10-27 06:46:29', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.css', 'anonymousUser', NULL, NULL, '5D5A5E3C49A72937E994E090A699BA92', NULL);
INSERT INTO `logger` VALUES (453, '2021-10-27 06:46:29', '0:0:0:0:0:0:0:1', '/css/ckeditor.css', 'anonymousUser', NULL, NULL, '5D5A5E3C49A72937E994E090A699BA92', NULL);
INSERT INTO `logger` VALUES (454, '2021-10-27 06:46:29', '0:0:0:0:0:0:0:1', '/js/script.js', 'anonymousUser', NULL, NULL, '5D5A5E3C49A72937E994E090A699BA92', NULL);
INSERT INTO `logger` VALUES (455, '2021-10-27 06:46:29', '0:0:0:0:0:0:0:1', '/js/jquery.min.js', 'anonymousUser', NULL, NULL, '5D5A5E3C49A72937E994E090A699BA92', NULL);
INSERT INTO `logger` VALUES (456, '2021-10-27 06:46:29', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.js', 'anonymousUser', NULL, NULL, '5D5A5E3C49A72937E994E090A699BA92', NULL);
INSERT INTO `logger` VALUES (457, '2021-10-27 06:46:29', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/outline-icons.woff2', 'anonymousUser', NULL, NULL, '5D5A5E3C49A72937E994E090A699BA92', NULL);
INSERT INTO `logger` VALUES (458, '2021-10-27 06:46:29', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/brand-icons.woff2', 'anonymousUser', NULL, NULL, '5D5A5E3C49A72937E994E090A699BA92', NULL);
INSERT INTO `logger` VALUES (459, '2021-10-27 06:46:29', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/icons.woff2', 'anonymousUser', NULL, NULL, '5D5A5E3C49A72937E994E090A699BA92', NULL);
INSERT INTO `logger` VALUES (460, '2021-10-27 06:46:29', '0:0:0:0:0:0:0:1', '/login', 'anonymousUser', NULL, NULL, '5D5A5E3C49A72937E994E090A699BA92', NULL);
INSERT INTO `logger` VALUES (461, '2021-10-27 06:46:31', '0:0:0:0:0:0:0:1', '/content', 'anonymousUser', NULL, NULL, '5D5A5E3C49A72937E994E090A699BA92', NULL);
INSERT INTO `logger` VALUES (462, '2021-10-27 06:46:31', '0:0:0:0:0:0:0:1', '/css/style.css', 'anonymousUser', NULL, NULL, '5D5A5E3C49A72937E994E090A699BA92', NULL);
INSERT INTO `logger` VALUES (463, '2021-10-27 06:46:31', '0:0:0:0:0:0:0:1', '/css/all.min.css', 'anonymousUser', NULL, NULL, '5D5A5E3C49A72937E994E090A699BA92', NULL);
INSERT INTO `logger` VALUES (464, '2021-10-27 06:46:31', '0:0:0:0:0:0:0:1', '/css/ckeditor.css', 'anonymousUser', NULL, NULL, '5D5A5E3C49A72937E994E090A699BA92', NULL);
INSERT INTO `logger` VALUES (465, '2021-10-27 06:46:31', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.css', 'anonymousUser', NULL, NULL, '5D5A5E3C49A72937E994E090A699BA92', NULL);
INSERT INTO `logger` VALUES (466, '2021-10-27 06:46:31', '0:0:0:0:0:0:0:1', '/js/jquery-3.1.1.js', 'anonymousUser', NULL, NULL, '5D5A5E3C49A72937E994E090A699BA92', NULL);
INSERT INTO `logger` VALUES (467, '2021-10-27 06:46:31', '0:0:0:0:0:0:0:1', '/js/jquery.min.js', 'anonymousUser', NULL, NULL, '5D5A5E3C49A72937E994E090A699BA92', NULL);
INSERT INTO `logger` VALUES (468, '2021-10-27 06:46:31', '0:0:0:0:0:0:0:1', '/js/script.js', 'anonymousUser', NULL, NULL, '5D5A5E3C49A72937E994E090A699BA92', NULL);
INSERT INTO `logger` VALUES (469, '2021-10-27 06:46:31', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.js', 'anonymousUser', NULL, NULL, '5D5A5E3C49A72937E994E090A699BA92', NULL);
INSERT INTO `logger` VALUES (470, '2021-10-27 06:46:32', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/brand-icons.woff2', 'anonymousUser', NULL, NULL, '5D5A5E3C49A72937E994E090A699BA92', NULL);
INSERT INTO `logger` VALUES (471, '2021-10-27 06:46:32', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/outline-icons.woff2', 'anonymousUser', NULL, NULL, '5D5A5E3C49A72937E994E090A699BA92', NULL);
INSERT INTO `logger` VALUES (472, '2021-10-27 06:46:32', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/icons.woff2', 'anonymousUser', NULL, NULL, '5D5A5E3C49A72937E994E090A699BA92', NULL);
INSERT INTO `logger` VALUES (473, '2021-10-27 06:46:32', '0:0:0:0:0:0:0:1', '/login', 'anonymousUser', NULL, NULL, '5D5A5E3C49A72937E994E090A699BA92', NULL);
INSERT INTO `logger` VALUES (474, '2021-10-27 06:46:36', '0:0:0:0:0:0:0:1', '/productManager', 'anonymousUser', NULL, NULL, '5D5A5E3C49A72937E994E090A699BA92', NULL);
INSERT INTO `logger` VALUES (475, '2021-10-27 06:46:36', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.css', 'anonymousUser', NULL, NULL, '5D5A5E3C49A72937E994E090A699BA92', NULL);
INSERT INTO `logger` VALUES (476, '2021-10-27 06:46:36', '0:0:0:0:0:0:0:1', '/js/jquery-3.1.1.js', 'anonymousUser', NULL, NULL, '5D5A5E3C49A72937E994E090A699BA92', NULL);
INSERT INTO `logger` VALUES (477, '2021-10-27 06:46:36', '0:0:0:0:0:0:0:1', '/css/all.min.css', 'anonymousUser', NULL, NULL, '5D5A5E3C49A72937E994E090A699BA92', NULL);
INSERT INTO `logger` VALUES (478, '2021-10-27 06:46:36', '0:0:0:0:0:0:0:1', '/sitejs/productManagement.js', 'anonymousUser', NULL, NULL, '5D5A5E3C49A72937E994E090A699BA92', NULL);
INSERT INTO `logger` VALUES (479, '2021-10-27 06:46:36', '0:0:0:0:0:0:0:1', '/css/style.css', 'anonymousUser', NULL, NULL, '5D5A5E3C49A72937E994E090A699BA92', NULL);
INSERT INTO `logger` VALUES (480, '2021-10-27 06:46:36', '0:0:0:0:0:0:0:1', '/css/ckeditor.css', 'anonymousUser', NULL, NULL, '5D5A5E3C49A72937E994E090A699BA92', NULL);
INSERT INTO `logger` VALUES (481, '2021-10-27 06:46:36', '0:0:0:0:0:0:0:1', '/js/script.js', 'anonymousUser', NULL, NULL, '5D5A5E3C49A72937E994E090A699BA92', NULL);
INSERT INTO `logger` VALUES (482, '2021-10-27 06:46:36', '0:0:0:0:0:0:0:1', '/js/jquery.min.js', 'anonymousUser', NULL, NULL, '5D5A5E3C49A72937E994E090A699BA92', NULL);
INSERT INTO `logger` VALUES (483, '2021-10-27 06:46:36', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.js', 'anonymousUser', NULL, NULL, '5D5A5E3C49A72937E994E090A699BA92', NULL);
INSERT INTO `logger` VALUES (484, '2021-10-27 06:46:36', '0:0:0:0:0:0:0:1', '/productManager/listed', 'anonymousUser', NULL, NULL, '5D5A5E3C49A72937E994E090A699BA92', NULL);
INSERT INTO `logger` VALUES (485, '2021-10-27 06:46:36', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/outline-icons.woff2', 'anonymousUser', NULL, NULL, '5D5A5E3C49A72937E994E090A699BA92', NULL);
INSERT INTO `logger` VALUES (486, '2021-10-27 06:46:36', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/brand-icons.woff2', 'anonymousUser', NULL, NULL, '5D5A5E3C49A72937E994E090A699BA92', NULL);
INSERT INTO `logger` VALUES (487, '2021-10-27 06:46:36', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/icons.woff2', 'anonymousUser', NULL, NULL, '5D5A5E3C49A72937E994E090A699BA92', NULL);
INSERT INTO `logger` VALUES (488, '2021-10-27 06:46:36', '0:0:0:0:0:0:0:1', '/login', 'anonymousUser', NULL, NULL, '5D5A5E3C49A72937E994E090A699BA92', NULL);
INSERT INTO `logger` VALUES (489, '2021-10-27 06:46:37', '0:0:0:0:0:0:0:1', '/login', 'anonymousUser', NULL, NULL, '5D5A5E3C49A72937E994E090A699BA92', NULL);
INSERT INTO `logger` VALUES (490, '2021-10-27 06:46:37', '0:0:0:0:0:0:0:1', '/js/jquery-3.1.1.js', 'anonymousUser', NULL, NULL, '5D5A5E3C49A72937E994E090A699BA92', NULL);
INSERT INTO `logger` VALUES (491, '2021-10-27 06:46:37', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.css', 'anonymousUser', NULL, NULL, '5D5A5E3C49A72937E994E090A699BA92', NULL);
INSERT INTO `logger` VALUES (492, '2021-10-27 06:46:37', '0:0:0:0:0:0:0:1', '/js/jquery.min.js', 'anonymousUser', NULL, NULL, '5D5A5E3C49A72937E994E090A699BA92', NULL);
INSERT INTO `logger` VALUES (493, '2021-10-27 06:46:37', '0:0:0:0:0:0:0:1', '/css/style.css', 'anonymousUser', NULL, NULL, '5D5A5E3C49A72937E994E090A699BA92', NULL);
INSERT INTO `logger` VALUES (494, '2021-10-27 06:46:37', '0:0:0:0:0:0:0:1', '/css/all.min.css', 'anonymousUser', NULL, NULL, '5D5A5E3C49A72937E994E090A699BA92', NULL);
INSERT INTO `logger` VALUES (495, '2021-10-27 06:46:37', '0:0:0:0:0:0:0:1', '/css/ckeditor.css', 'anonymousUser', NULL, NULL, '5D5A5E3C49A72937E994E090A699BA92', NULL);
INSERT INTO `logger` VALUES (496, '2021-10-27 06:46:37', '0:0:0:0:0:0:0:1', '/js/script.js', 'anonymousUser', NULL, NULL, '5D5A5E3C49A72937E994E090A699BA92', NULL);
INSERT INTO `logger` VALUES (497, '2021-10-27 06:46:37', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.js', 'anonymousUser', NULL, NULL, '5D5A5E3C49A72937E994E090A699BA92', NULL);
INSERT INTO `logger` VALUES (498, '2021-10-27 06:46:37', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/brand-icons.woff2', 'anonymousUser', NULL, NULL, '5D5A5E3C49A72937E994E090A699BA92', NULL);
INSERT INTO `logger` VALUES (499, '2021-10-27 06:46:37', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/icons.woff2', 'anonymousUser', NULL, NULL, '5D5A5E3C49A72937E994E090A699BA92', NULL);
INSERT INTO `logger` VALUES (500, '2021-10-27 06:46:37', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/outline-icons.woff2', 'anonymousUser', NULL, NULL, '5D5A5E3C49A72937E994E090A699BA92', NULL);
INSERT INTO `logger` VALUES (501, '2021-10-27 06:46:38', '0:0:0:0:0:0:0:1', '/login', 'anonymousUser', NULL, NULL, '5D5A5E3C49A72937E994E090A699BA92', NULL);
INSERT INTO `logger` VALUES (502, '2021-10-27 06:47:44', '0:0:0:0:0:0:0:1', '/login', 'anonymousUser', NULL, NULL, '5D5A5E3C49A72937E994E090A699BA92', NULL);
INSERT INTO `logger` VALUES (503, '2021-10-27 06:47:44', '0:0:0:0:0:0:0:1', '/css/ckeditor.css', 'anonymousUser', NULL, NULL, '5D5A5E3C49A72937E994E090A699BA92', NULL);
INSERT INTO `logger` VALUES (504, '2021-10-27 06:47:44', '0:0:0:0:0:0:0:1', '/js/jquery-3.1.1.js', 'anonymousUser', NULL, NULL, '5D5A5E3C49A72937E994E090A699BA92', NULL);
INSERT INTO `logger` VALUES (505, '2021-10-27 06:47:44', '0:0:0:0:0:0:0:1', '/js/jquery.min.js', 'anonymousUser', NULL, NULL, '5D5A5E3C49A72937E994E090A699BA92', NULL);
INSERT INTO `logger` VALUES (506, '2021-10-27 06:47:44', '0:0:0:0:0:0:0:1', '/css/all.min.css', 'anonymousUser', NULL, NULL, '5D5A5E3C49A72937E994E090A699BA92', NULL);
INSERT INTO `logger` VALUES (507, '2021-10-27 06:47:44', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.css', 'anonymousUser', NULL, NULL, '5D5A5E3C49A72937E994E090A699BA92', NULL);
INSERT INTO `logger` VALUES (508, '2021-10-27 06:47:44', '0:0:0:0:0:0:0:1', '/css/style.css', 'anonymousUser', NULL, NULL, '5D5A5E3C49A72937E994E090A699BA92', NULL);
INSERT INTO `logger` VALUES (509, '2021-10-27 06:47:44', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.js', 'anonymousUser', NULL, NULL, '5D5A5E3C49A72937E994E090A699BA92', NULL);
INSERT INTO `logger` VALUES (510, '2021-10-27 06:47:44', '0:0:0:0:0:0:0:1', '/js/script.js', 'anonymousUser', NULL, NULL, '5D5A5E3C49A72937E994E090A699BA92', NULL);
INSERT INTO `logger` VALUES (511, '2021-10-27 06:47:44', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/icons.woff2', 'anonymousUser', NULL, NULL, '5D5A5E3C49A72937E994E090A699BA92', NULL);
INSERT INTO `logger` VALUES (512, '2021-10-27 06:47:44', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/brand-icons.woff2', 'anonymousUser', NULL, NULL, '5D5A5E3C49A72937E994E090A699BA92', NULL);
INSERT INTO `logger` VALUES (513, '2021-10-27 06:47:44', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/outline-icons.woff2', 'anonymousUser', NULL, NULL, '5D5A5E3C49A72937E994E090A699BA92', NULL);
INSERT INTO `logger` VALUES (514, '2021-10-27 06:47:45', '0:0:0:0:0:0:0:1', '/login', 'anonymousUser', NULL, NULL, '5D5A5E3C49A72937E994E090A699BA92', NULL);
INSERT INTO `logger` VALUES (515, '2021-10-27 06:47:51', '0:0:0:0:0:0:0:1', '/login', 'anonymousUser', NULL, NULL, '5D5A5E3C49A72937E994E090A699BA92', NULL);
INSERT INTO `logger` VALUES (516, '2021-10-27 06:47:51', '0:0:0:0:0:0:0:1', '/js/jquery-3.1.1.js', 'anonymousUser', NULL, NULL, '5D5A5E3C49A72937E994E090A699BA92', NULL);
INSERT INTO `logger` VALUES (517, '2021-10-27 06:47:51', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.css', 'anonymousUser', NULL, NULL, '5D5A5E3C49A72937E994E090A699BA92', NULL);
INSERT INTO `logger` VALUES (518, '2021-10-27 06:47:51', '0:0:0:0:0:0:0:1', '/css/style.css', 'anonymousUser', NULL, NULL, '5D5A5E3C49A72937E994E090A699BA92', NULL);
INSERT INTO `logger` VALUES (519, '2021-10-27 06:47:51', '0:0:0:0:0:0:0:1', '/css/all.min.css', 'anonymousUser', NULL, NULL, '5D5A5E3C49A72937E994E090A699BA92', NULL);
INSERT INTO `logger` VALUES (520, '2021-10-27 06:47:51', '0:0:0:0:0:0:0:1', '/js/jquery.min.js', 'anonymousUser', NULL, NULL, '5D5A5E3C49A72937E994E090A699BA92', NULL);
INSERT INTO `logger` VALUES (521, '2021-10-27 06:47:51', '0:0:0:0:0:0:0:1', '/css/ckeditor.css', 'anonymousUser', NULL, NULL, '5D5A5E3C49A72937E994E090A699BA92', NULL);
INSERT INTO `logger` VALUES (522, '2021-10-27 06:47:52', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.js', 'anonymousUser', NULL, NULL, '5D5A5E3C49A72937E994E090A699BA92', NULL);
INSERT INTO `logger` VALUES (523, '2021-10-27 06:47:52', '0:0:0:0:0:0:0:1', '/js/script.js', 'anonymousUser', NULL, NULL, '5D5A5E3C49A72937E994E090A699BA92', NULL);
INSERT INTO `logger` VALUES (524, '2021-10-27 06:47:52', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/brand-icons.woff2', 'anonymousUser', NULL, NULL, '5D5A5E3C49A72937E994E090A699BA92', NULL);
INSERT INTO `logger` VALUES (525, '2021-10-27 06:47:52', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/outline-icons.woff2', 'anonymousUser', NULL, NULL, '5D5A5E3C49A72937E994E090A699BA92', NULL);
INSERT INTO `logger` VALUES (526, '2021-10-27 06:47:52', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/icons.woff2', 'anonymousUser', NULL, NULL, '5D5A5E3C49A72937E994E090A699BA92', NULL);
INSERT INTO `logger` VALUES (527, '2021-10-27 06:47:52', '0:0:0:0:0:0:0:1', '/login', 'anonymousUser', NULL, NULL, '5D5A5E3C49A72937E994E090A699BA92', NULL);
INSERT INTO `logger` VALUES (528, '2021-10-27 06:48:29', '0:0:0:0:0:0:0:1', '/advertisement', 'alper@mail.com', 'alper', 'ROLE_MVC', 'B917F6FDEAFFD7A08AE3BE602E99E8DB', 'yilmaz');
INSERT INTO `logger` VALUES (529, '2021-10-27 06:48:30', '0:0:0:0:0:0:0:1', '/css/style.css', 'alper@mail.com', 'alper', 'ROLE_MVC', 'B917F6FDEAFFD7A08AE3BE602E99E8DB', 'yilmaz');
INSERT INTO `logger` VALUES (530, '2021-10-27 06:48:30', '0:0:0:0:0:0:0:1', '/css/ckeditor.css', 'alper@mail.com', 'alper', 'ROLE_MVC', 'B917F6FDEAFFD7A08AE3BE602E99E8DB', 'yilmaz');
INSERT INTO `logger` VALUES (531, '2021-10-27 06:48:30', '0:0:0:0:0:0:0:1', '/sitejs/advertisement.js', 'alper@mail.com', 'alper', 'ROLE_MVC', 'B917F6FDEAFFD7A08AE3BE602E99E8DB', 'yilmaz');
INSERT INTO `logger` VALUES (532, '2021-10-27 06:48:30', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.css', 'alper@mail.com', 'alper', 'ROLE_MVC', 'B917F6FDEAFFD7A08AE3BE602E99E8DB', 'yilmaz');
INSERT INTO `logger` VALUES (533, '2021-10-27 06:48:30', '0:0:0:0:0:0:0:1', '/js/jquery-3.1.1.js', 'alper@mail.com', 'alper', 'ROLE_MVC', 'B917F6FDEAFFD7A08AE3BE602E99E8DB', 'yilmaz');
INSERT INTO `logger` VALUES (534, '2021-10-27 06:48:30', '0:0:0:0:0:0:0:1', '/css/all.min.css', 'alper@mail.com', 'alper', 'ROLE_MVC', 'B917F6FDEAFFD7A08AE3BE602E99E8DB', 'yilmaz');
INSERT INTO `logger` VALUES (535, '2021-10-27 06:48:30', '0:0:0:0:0:0:0:1', '/js/jquery.min.js', 'alper@mail.com', 'alper', 'ROLE_MVC', 'B917F6FDEAFFD7A08AE3BE602E99E8DB', 'yilmaz');
INSERT INTO `logger` VALUES (536, '2021-10-27 06:48:30', '0:0:0:0:0:0:0:1', '/js/script.js', 'alper@mail.com', 'alper', 'ROLE_MVC', 'B917F6FDEAFFD7A08AE3BE602E99E8DB', 'yilmaz');
INSERT INTO `logger` VALUES (537, '2021-10-27 06:48:30', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.js', 'alper@mail.com', 'alper', 'ROLE_MVC', 'B917F6FDEAFFD7A08AE3BE602E99E8DB', 'yilmaz');
INSERT INTO `logger` VALUES (538, '2021-10-27 06:48:30', '0:0:0:0:0:0:0:1', '/advertisement/pagination/0/10', 'alper@mail.com', 'alper', 'ROLE_MVC', 'B917F6FDEAFFD7A08AE3BE602E99E8DB', 'yilmaz');
INSERT INTO `logger` VALUES (539, '2021-10-27 06:48:30', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/brand-icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', 'B917F6FDEAFFD7A08AE3BE602E99E8DB', 'yilmaz');
INSERT INTO `logger` VALUES (540, '2021-10-27 06:48:30', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/outline-icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', 'B917F6FDEAFFD7A08AE3BE602E99E8DB', 'yilmaz');
INSERT INTO `logger` VALUES (541, '2021-10-27 06:48:30', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', 'B917F6FDEAFFD7A08AE3BE602E99E8DB', 'yilmaz');
INSERT INTO `logger` VALUES (542, '2021-10-27 06:48:30', '0:0:0:0:0:0:0:1', '/favicon.ico', 'alper@mail.com', 'alper', 'ROLE_MVC', 'B917F6FDEAFFD7A08AE3BE602E99E8DB', 'yilmaz');
INSERT INTO `logger` VALUES (543, '2021-10-27 06:48:38', '0:0:0:0:0:0:0:1', '/orders', 'alper@mail.com', 'alper', 'ROLE_MVC', 'B917F6FDEAFFD7A08AE3BE602E99E8DB', 'yilmaz');
INSERT INTO `logger` VALUES (544, '2021-10-27 06:48:38', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.css', 'alper@mail.com', 'alper', 'ROLE_MVC', 'B917F6FDEAFFD7A08AE3BE602E99E8DB', 'yilmaz');
INSERT INTO `logger` VALUES (545, '2021-10-27 06:48:38', '0:0:0:0:0:0:0:1', '/css/style.css', 'alper@mail.com', 'alper', 'ROLE_MVC', 'B917F6FDEAFFD7A08AE3BE602E99E8DB', 'yilmaz');
INSERT INTO `logger` VALUES (546, '2021-10-27 06:48:38', '0:0:0:0:0:0:0:1', '/js/jquery-3.1.1.js', 'alper@mail.com', 'alper', 'ROLE_MVC', 'B917F6FDEAFFD7A08AE3BE602E99E8DB', 'yilmaz');
INSERT INTO `logger` VALUES (547, '2021-10-27 06:48:38', '0:0:0:0:0:0:0:1', '/js/jquery.min.js', 'alper@mail.com', 'alper', 'ROLE_MVC', 'B917F6FDEAFFD7A08AE3BE602E99E8DB', 'yilmaz');
INSERT INTO `logger` VALUES (548, '2021-10-27 06:48:38', '0:0:0:0:0:0:0:1', '/css/ckeditor.css', 'alper@mail.com', 'alper', 'ROLE_MVC', 'B917F6FDEAFFD7A08AE3BE602E99E8DB', 'yilmaz');
INSERT INTO `logger` VALUES (549, '2021-10-27 06:48:38', '0:0:0:0:0:0:0:1', '/css/all.min.css', 'alper@mail.com', 'alper', 'ROLE_MVC', 'B917F6FDEAFFD7A08AE3BE602E99E8DB', 'yilmaz');
INSERT INTO `logger` VALUES (550, '2021-10-27 06:48:38', '0:0:0:0:0:0:0:1', '/js/script.js', 'alper@mail.com', 'alper', 'ROLE_MVC', 'B917F6FDEAFFD7A08AE3BE602E99E8DB', 'yilmaz');
INSERT INTO `logger` VALUES (551, '2021-10-27 06:48:38', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.js', 'alper@mail.com', 'alper', 'ROLE_MVC', 'B917F6FDEAFFD7A08AE3BE602E99E8DB', 'yilmaz');
INSERT INTO `logger` VALUES (552, '2021-10-27 06:48:38', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/outline-icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', 'B917F6FDEAFFD7A08AE3BE602E99E8DB', 'yilmaz');
INSERT INTO `logger` VALUES (553, '2021-10-27 06:48:38', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', 'B917F6FDEAFFD7A08AE3BE602E99E8DB', 'yilmaz');
INSERT INTO `logger` VALUES (554, '2021-10-27 06:48:38', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/brand-icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', 'B917F6FDEAFFD7A08AE3BE602E99E8DB', 'yilmaz');
INSERT INTO `logger` VALUES (555, '2021-10-27 06:48:50', '0:0:0:0:0:0:0:1', '/announce', 'alper@mail.com', 'alper', 'ROLE_MVC', 'B917F6FDEAFFD7A08AE3BE602E99E8DB', 'yilmaz');
INSERT INTO `logger` VALUES (556, '2021-10-27 06:48:50', '0:0:0:0:0:0:0:1', '/js/jquery-3.1.1.js', 'alper@mail.com', 'alper', 'ROLE_MVC', 'B917F6FDEAFFD7A08AE3BE602E99E8DB', 'yilmaz');
INSERT INTO `logger` VALUES (557, '2021-10-27 06:48:50', '0:0:0:0:0:0:0:1', '/css/style.css', 'alper@mail.com', 'alper', 'ROLE_MVC', 'B917F6FDEAFFD7A08AE3BE602E99E8DB', 'yilmaz');
INSERT INTO `logger` VALUES (558, '2021-10-27 06:48:50', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.css', 'alper@mail.com', 'alper', 'ROLE_MVC', 'B917F6FDEAFFD7A08AE3BE602E99E8DB', 'yilmaz');
INSERT INTO `logger` VALUES (559, '2021-10-27 06:48:50', '0:0:0:0:0:0:0:1', '/sitejs/announce.js', 'alper@mail.com', 'alper', 'ROLE_MVC', 'B917F6FDEAFFD7A08AE3BE602E99E8DB', 'yilmaz');
INSERT INTO `logger` VALUES (560, '2021-10-27 06:48:50', '0:0:0:0:0:0:0:1', '/css/all.min.css', 'alper@mail.com', 'alper', 'ROLE_MVC', 'B917F6FDEAFFD7A08AE3BE602E99E8DB', 'yilmaz');
INSERT INTO `logger` VALUES (561, '2021-10-27 06:48:50', '0:0:0:0:0:0:0:1', '/css/ckeditor.css', 'alper@mail.com', 'alper', 'ROLE_MVC', 'B917F6FDEAFFD7A08AE3BE602E99E8DB', 'yilmaz');
INSERT INTO `logger` VALUES (562, '2021-10-27 06:48:50', '0:0:0:0:0:0:0:1', '/js/jquery.min.js', 'alper@mail.com', 'alper', 'ROLE_MVC', 'B917F6FDEAFFD7A08AE3BE602E99E8DB', 'yilmaz');
INSERT INTO `logger` VALUES (563, '2021-10-27 06:48:50', '0:0:0:0:0:0:0:1', '/js/script.js', 'alper@mail.com', 'alper', 'ROLE_MVC', 'B917F6FDEAFFD7A08AE3BE602E99E8DB', 'yilmaz');
INSERT INTO `logger` VALUES (564, '2021-10-27 06:48:50', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.js', 'alper@mail.com', 'alper', 'ROLE_MVC', 'B917F6FDEAFFD7A08AE3BE602E99E8DB', 'yilmaz');
INSERT INTO `logger` VALUES (565, '2021-10-27 06:48:50', '0:0:0:0:0:0:0:1', '/announce/listed', 'alper@mail.com', 'alper', 'ROLE_MVC', 'B917F6FDEAFFD7A08AE3BE602E99E8DB', 'yilmaz');
INSERT INTO `logger` VALUES (566, '2021-10-27 06:48:50', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', 'B917F6FDEAFFD7A08AE3BE602E99E8DB', 'yilmaz');
INSERT INTO `logger` VALUES (567, '2021-10-27 06:48:50', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/outline-icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', 'B917F6FDEAFFD7A08AE3BE602E99E8DB', 'yilmaz');
INSERT INTO `logger` VALUES (568, '2021-10-27 06:48:50', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/brand-icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', 'B917F6FDEAFFD7A08AE3BE602E99E8DB', 'yilmaz');
INSERT INTO `logger` VALUES (569, '2021-10-27 06:48:54', '0:0:0:0:0:0:0:1', '/survey', 'alper@mail.com', 'alper', 'ROLE_MVC', 'B917F6FDEAFFD7A08AE3BE602E99E8DB', 'yilmaz');
INSERT INTO `logger` VALUES (570, '2021-10-27 06:48:54', '0:0:0:0:0:0:0:1', '/css/style.css', 'alper@mail.com', 'alper', 'ROLE_MVC', 'B917F6FDEAFFD7A08AE3BE602E99E8DB', 'yilmaz');
INSERT INTO `logger` VALUES (571, '2021-10-27 06:48:54', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.css', 'alper@mail.com', 'alper', 'ROLE_MVC', 'B917F6FDEAFFD7A08AE3BE602E99E8DB', 'yilmaz');
INSERT INTO `logger` VALUES (572, '2021-10-27 06:48:54', '0:0:0:0:0:0:0:1', '/css/all.min.css', 'alper@mail.com', 'alper', 'ROLE_MVC', 'B917F6FDEAFFD7A08AE3BE602E99E8DB', 'yilmaz');
INSERT INTO `logger` VALUES (573, '2021-10-27 06:48:54', '0:0:0:0:0:0:0:1', '/css/ckeditor.css', 'alper@mail.com', 'alper', 'ROLE_MVC', 'B917F6FDEAFFD7A08AE3BE602E99E8DB', 'yilmaz');
INSERT INTO `logger` VALUES (574, '2021-10-27 06:48:54', '0:0:0:0:0:0:0:1', '/sitejs/survey.js', 'alper@mail.com', 'alper', 'ROLE_MVC', 'B917F6FDEAFFD7A08AE3BE602E99E8DB', 'yilmaz');
INSERT INTO `logger` VALUES (575, '2021-10-27 06:48:54', '0:0:0:0:0:0:0:1', '/js/jquery-3.1.1.js', 'alper@mail.com', 'alper', 'ROLE_MVC', 'B917F6FDEAFFD7A08AE3BE602E99E8DB', 'yilmaz');
INSERT INTO `logger` VALUES (576, '2021-10-27 06:48:54', '0:0:0:0:0:0:0:1', '/js/jquery.min.js', 'alper@mail.com', 'alper', 'ROLE_MVC', 'B917F6FDEAFFD7A08AE3BE602E99E8DB', 'yilmaz');
INSERT INTO `logger` VALUES (577, '2021-10-27 06:48:54', '0:0:0:0:0:0:0:1', '/js/script.js', 'alper@mail.com', 'alper', 'ROLE_MVC', 'B917F6FDEAFFD7A08AE3BE602E99E8DB', 'yilmaz');
INSERT INTO `logger` VALUES (578, '2021-10-27 06:48:54', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.js', 'alper@mail.com', 'alper', 'ROLE_MVC', 'B917F6FDEAFFD7A08AE3BE602E99E8DB', 'yilmaz');
INSERT INTO `logger` VALUES (579, '2021-10-27 06:48:55', '0:0:0:0:0:0:0:1', '/survey/pagination/0/10', 'alper@mail.com', 'alper', 'ROLE_MVC', 'B917F6FDEAFFD7A08AE3BE602E99E8DB', 'yilmaz');
INSERT INTO `logger` VALUES (580, '2021-10-27 06:48:55', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', 'B917F6FDEAFFD7A08AE3BE602E99E8DB', 'yilmaz');
INSERT INTO `logger` VALUES (581, '2021-10-27 06:48:55', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/brand-icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', 'B917F6FDEAFFD7A08AE3BE602E99E8DB', 'yilmaz');
INSERT INTO `logger` VALUES (582, '2021-10-27 06:48:55', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/outline-icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', 'B917F6FDEAFFD7A08AE3BE602E99E8DB', 'yilmaz');
INSERT INTO `logger` VALUES (583, '2021-10-27 06:48:59', '0:0:0:0:0:0:0:1', '/orders', 'alper@mail.com', 'alper', 'ROLE_MVC', 'B917F6FDEAFFD7A08AE3BE602E99E8DB', 'yilmaz');
INSERT INTO `logger` VALUES (584, '2021-10-27 06:48:59', '0:0:0:0:0:0:0:1', '/js/jquery-3.1.1.js', 'alper@mail.com', 'alper', 'ROLE_MVC', 'B917F6FDEAFFD7A08AE3BE602E99E8DB', 'yilmaz');
INSERT INTO `logger` VALUES (585, '2021-10-27 06:48:59', '0:0:0:0:0:0:0:1', '/css/style.css', 'alper@mail.com', 'alper', 'ROLE_MVC', 'B917F6FDEAFFD7A08AE3BE602E99E8DB', 'yilmaz');
INSERT INTO `logger` VALUES (586, '2021-10-27 06:48:59', '0:0:0:0:0:0:0:1', '/css/all.min.css', 'alper@mail.com', 'alper', 'ROLE_MVC', 'B917F6FDEAFFD7A08AE3BE602E99E8DB', 'yilmaz');
INSERT INTO `logger` VALUES (587, '2021-10-27 06:48:59', '0:0:0:0:0:0:0:1', '/css/ckeditor.css', 'alper@mail.com', 'alper', 'ROLE_MVC', 'B917F6FDEAFFD7A08AE3BE602E99E8DB', 'yilmaz');
INSERT INTO `logger` VALUES (588, '2021-10-27 06:48:59', '0:0:0:0:0:0:0:1', '/js/jquery.min.js', 'alper@mail.com', 'alper', 'ROLE_MVC', 'B917F6FDEAFFD7A08AE3BE602E99E8DB', 'yilmaz');
INSERT INTO `logger` VALUES (589, '2021-10-27 06:48:59', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.css', 'alper@mail.com', 'alper', 'ROLE_MVC', 'B917F6FDEAFFD7A08AE3BE602E99E8DB', 'yilmaz');
INSERT INTO `logger` VALUES (590, '2021-10-27 06:48:59', '0:0:0:0:0:0:0:1', '/js/script.js', 'alper@mail.com', 'alper', 'ROLE_MVC', 'B917F6FDEAFFD7A08AE3BE602E99E8DB', 'yilmaz');
INSERT INTO `logger` VALUES (591, '2021-10-27 06:48:59', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.js', 'alper@mail.com', 'alper', 'ROLE_MVC', 'B917F6FDEAFFD7A08AE3BE602E99E8DB', 'yilmaz');
INSERT INTO `logger` VALUES (592, '2021-10-27 06:49:00', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/outline-icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', 'B917F6FDEAFFD7A08AE3BE602E99E8DB', 'yilmaz');
INSERT INTO `logger` VALUES (593, '2021-10-27 06:49:00', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', 'B917F6FDEAFFD7A08AE3BE602E99E8DB', 'yilmaz');
INSERT INTO `logger` VALUES (594, '2021-10-27 06:49:00', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/brand-icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', 'B917F6FDEAFFD7A08AE3BE602E99E8DB', 'yilmaz');
INSERT INTO `logger` VALUES (595, '2021-10-27 06:49:03', '0:0:0:0:0:0:0:1', '/announce', 'alper@mail.com', 'alper', 'ROLE_MVC', 'B917F6FDEAFFD7A08AE3BE602E99E8DB', 'yilmaz');
INSERT INTO `logger` VALUES (596, '2021-10-27 06:49:03', '0:0:0:0:0:0:0:1', '/css/ckeditor.css', 'alper@mail.com', 'alper', 'ROLE_MVC', 'B917F6FDEAFFD7A08AE3BE602E99E8DB', 'yilmaz');
INSERT INTO `logger` VALUES (597, '2021-10-27 06:49:03', '0:0:0:0:0:0:0:1', '/css/all.min.css', 'alper@mail.com', 'alper', 'ROLE_MVC', 'B917F6FDEAFFD7A08AE3BE602E99E8DB', 'yilmaz');
INSERT INTO `logger` VALUES (598, '2021-10-27 06:49:03', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.css', 'alper@mail.com', 'alper', 'ROLE_MVC', 'B917F6FDEAFFD7A08AE3BE602E99E8DB', 'yilmaz');
INSERT INTO `logger` VALUES (599, '2021-10-27 06:49:03', '0:0:0:0:0:0:0:1', '/sitejs/announce.js', 'alper@mail.com', 'alper', 'ROLE_MVC', 'B917F6FDEAFFD7A08AE3BE602E99E8DB', 'yilmaz');
INSERT INTO `logger` VALUES (600, '2021-10-27 06:49:03', '0:0:0:0:0:0:0:1', '/js/jquery-3.1.1.js', 'alper@mail.com', 'alper', 'ROLE_MVC', 'B917F6FDEAFFD7A08AE3BE602E99E8DB', 'yilmaz');
INSERT INTO `logger` VALUES (601, '2021-10-27 06:49:03', '0:0:0:0:0:0:0:1', '/css/style.css', 'alper@mail.com', 'alper', 'ROLE_MVC', 'B917F6FDEAFFD7A08AE3BE602E99E8DB', 'yilmaz');
INSERT INTO `logger` VALUES (602, '2021-10-27 06:49:03', '0:0:0:0:0:0:0:1', '/js/jquery.min.js', 'alper@mail.com', 'alper', 'ROLE_MVC', 'B917F6FDEAFFD7A08AE3BE602E99E8DB', 'yilmaz');
INSERT INTO `logger` VALUES (603, '2021-10-27 06:49:03', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.js', 'alper@mail.com', 'alper', 'ROLE_MVC', 'B917F6FDEAFFD7A08AE3BE602E99E8DB', 'yilmaz');
INSERT INTO `logger` VALUES (604, '2021-10-27 06:49:03', '0:0:0:0:0:0:0:1', '/js/script.js', 'alper@mail.com', 'alper', 'ROLE_MVC', 'B917F6FDEAFFD7A08AE3BE602E99E8DB', 'yilmaz');
INSERT INTO `logger` VALUES (605, '2021-10-27 06:49:04', '0:0:0:0:0:0:0:1', '/announce/listed', 'alper@mail.com', 'alper', 'ROLE_MVC', 'B917F6FDEAFFD7A08AE3BE602E99E8DB', 'yilmaz');
INSERT INTO `logger` VALUES (606, '2021-10-27 06:49:04', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', 'B917F6FDEAFFD7A08AE3BE602E99E8DB', 'yilmaz');
INSERT INTO `logger` VALUES (607, '2021-10-27 06:49:04', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/outline-icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', 'B917F6FDEAFFD7A08AE3BE602E99E8DB', 'yilmaz');
INSERT INTO `logger` VALUES (608, '2021-10-27 06:49:04', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/brand-icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', 'B917F6FDEAFFD7A08AE3BE602E99E8DB', 'yilmaz');
INSERT INTO `logger` VALUES (609, '2021-10-27 06:49:05', '0:0:0:0:0:0:0:1', '/content', 'alper@mail.com', 'alper', 'ROLE_MVC', 'B917F6FDEAFFD7A08AE3BE602E99E8DB', 'yilmaz');
INSERT INTO `logger` VALUES (610, '2021-10-27 06:49:05', '0:0:0:0:0:0:0:1', '/js/jquery-3.1.1.js', 'alper@mail.com', 'alper', 'ROLE_MVC', 'B917F6FDEAFFD7A08AE3BE602E99E8DB', 'yilmaz');
INSERT INTO `logger` VALUES (611, '2021-10-27 06:49:05', '0:0:0:0:0:0:0:1', '/css/all.min.css', 'alper@mail.com', 'alper', 'ROLE_MVC', 'B917F6FDEAFFD7A08AE3BE602E99E8DB', 'yilmaz');
INSERT INTO `logger` VALUES (612, '2021-10-27 06:49:05', '0:0:0:0:0:0:0:1', '/css/style.css', 'alper@mail.com', 'alper', 'ROLE_MVC', 'B917F6FDEAFFD7A08AE3BE602E99E8DB', 'yilmaz');
INSERT INTO `logger` VALUES (613, '2021-10-27 06:49:05', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.css', 'alper@mail.com', 'alper', 'ROLE_MVC', 'B917F6FDEAFFD7A08AE3BE602E99E8DB', 'yilmaz');
INSERT INTO `logger` VALUES (614, '2021-10-27 06:49:05', '0:0:0:0:0:0:0:1', '/css/ckeditor.css', 'alper@mail.com', 'alper', 'ROLE_MVC', 'B917F6FDEAFFD7A08AE3BE602E99E8DB', 'yilmaz');
INSERT INTO `logger` VALUES (615, '2021-10-27 06:49:05', '0:0:0:0:0:0:0:1', '/js/jquery.min.js', 'alper@mail.com', 'alper', 'ROLE_MVC', 'B917F6FDEAFFD7A08AE3BE602E99E8DB', 'yilmaz');
INSERT INTO `logger` VALUES (616, '2021-10-27 06:49:06', '0:0:0:0:0:0:0:1', '/js/script.js', 'alper@mail.com', 'alper', 'ROLE_MVC', 'B917F6FDEAFFD7A08AE3BE602E99E8DB', 'yilmaz');
INSERT INTO `logger` VALUES (617, '2021-10-27 06:49:06', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.js', 'alper@mail.com', 'alper', 'ROLE_MVC', 'B917F6FDEAFFD7A08AE3BE602E99E8DB', 'yilmaz');
INSERT INTO `logger` VALUES (618, '2021-10-27 06:49:06', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/outline-icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', 'B917F6FDEAFFD7A08AE3BE602E99E8DB', 'yilmaz');
INSERT INTO `logger` VALUES (619, '2021-10-27 06:49:06', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', 'B917F6FDEAFFD7A08AE3BE602E99E8DB', 'yilmaz');
INSERT INTO `logger` VALUES (620, '2021-10-27 06:49:06', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/brand-icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', 'B917F6FDEAFFD7A08AE3BE602E99E8DB', 'yilmaz');
INSERT INTO `logger` VALUES (621, '2021-10-27 06:49:07', '0:0:0:0:0:0:0:1', '/gallery', 'alper@mail.com', 'alper', 'ROLE_MVC', 'B917F6FDEAFFD7A08AE3BE602E99E8DB', 'yilmaz');
INSERT INTO `logger` VALUES (622, '2021-10-27 06:49:08', '0:0:0:0:0:0:0:1', '/css/style.css', 'alper@mail.com', 'alper', 'ROLE_MVC', 'B917F6FDEAFFD7A08AE3BE602E99E8DB', 'yilmaz');
INSERT INTO `logger` VALUES (623, '2021-10-27 06:49:08', '0:0:0:0:0:0:0:1', '/js/jquery-3.1.1.js', 'alper@mail.com', 'alper', 'ROLE_MVC', 'B917F6FDEAFFD7A08AE3BE602E99E8DB', 'yilmaz');
INSERT INTO `logger` VALUES (624, '2021-10-27 06:49:08', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.css', 'alper@mail.com', 'alper', 'ROLE_MVC', 'B917F6FDEAFFD7A08AE3BE602E99E8DB', 'yilmaz');
INSERT INTO `logger` VALUES (625, '2021-10-27 06:49:08', '0:0:0:0:0:0:0:1', '/sitejs/gallery.js', 'alper@mail.com', 'alper', 'ROLE_MVC', 'B917F6FDEAFFD7A08AE3BE602E99E8DB', 'yilmaz');
INSERT INTO `logger` VALUES (626, '2021-10-27 06:49:08', '0:0:0:0:0:0:0:1', '/css/ckeditor.css', 'alper@mail.com', 'alper', 'ROLE_MVC', 'B917F6FDEAFFD7A08AE3BE602E99E8DB', 'yilmaz');
INSERT INTO `logger` VALUES (627, '2021-10-27 06:49:08', '0:0:0:0:0:0:0:1', '/css/all.min.css', 'alper@mail.com', 'alper', 'ROLE_MVC', 'B917F6FDEAFFD7A08AE3BE602E99E8DB', 'yilmaz');
INSERT INTO `logger` VALUES (628, '2021-10-27 06:49:08', '0:0:0:0:0:0:0:1', '/js/jquery.min.js', 'alper@mail.com', 'alper', 'ROLE_MVC', 'B917F6FDEAFFD7A08AE3BE602E99E8DB', 'yilmaz');
INSERT INTO `logger` VALUES (629, '2021-10-27 06:49:08', '0:0:0:0:0:0:0:1', '/js/script.js', 'alper@mail.com', 'alper', 'ROLE_MVC', 'B917F6FDEAFFD7A08AE3BE602E99E8DB', 'yilmaz');
INSERT INTO `logger` VALUES (630, '2021-10-27 06:49:08', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.js', 'alper@mail.com', 'alper', 'ROLE_MVC', 'B917F6FDEAFFD7A08AE3BE602E99E8DB', 'yilmaz');
INSERT INTO `logger` VALUES (631, '2021-10-27 06:49:08', '0:0:0:0:0:0:0:1', '/gallery/listed', 'alper@mail.com', 'alper', 'ROLE_MVC', 'B917F6FDEAFFD7A08AE3BE602E99E8DB', 'yilmaz');
INSERT INTO `logger` VALUES (632, '2021-10-27 06:49:08', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', 'B917F6FDEAFFD7A08AE3BE602E99E8DB', 'yilmaz');
INSERT INTO `logger` VALUES (633, '2021-10-27 06:49:08', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/brand-icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', 'B917F6FDEAFFD7A08AE3BE602E99E8DB', 'yilmaz');
INSERT INTO `logger` VALUES (634, '2021-10-27 06:49:08', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/outline-icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', 'B917F6FDEAFFD7A08AE3BE602E99E8DB', 'yilmaz');
INSERT INTO `logger` VALUES (635, '2021-10-27 06:49:12', '0:0:0:0:0:0:0:1', '/advertisement', 'alper@mail.com', 'alper', 'ROLE_MVC', 'B917F6FDEAFFD7A08AE3BE602E99E8DB', 'yilmaz');
INSERT INTO `logger` VALUES (636, '2021-10-27 06:49:12', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.css', 'alper@mail.com', 'alper', 'ROLE_MVC', 'B917F6FDEAFFD7A08AE3BE602E99E8DB', 'yilmaz');
INSERT INTO `logger` VALUES (637, '2021-10-27 06:49:12', '0:0:0:0:0:0:0:1', '/js/jquery-3.1.1.js', 'alper@mail.com', 'alper', 'ROLE_MVC', 'B917F6FDEAFFD7A08AE3BE602E99E8DB', 'yilmaz');
INSERT INTO `logger` VALUES (638, '2021-10-27 06:49:12', '0:0:0:0:0:0:0:1', '/css/ckeditor.css', 'alper@mail.com', 'alper', 'ROLE_MVC', 'B917F6FDEAFFD7A08AE3BE602E99E8DB', 'yilmaz');
INSERT INTO `logger` VALUES (639, '2021-10-27 06:49:12', '0:0:0:0:0:0:0:1', '/sitejs/advertisement.js', 'alper@mail.com', 'alper', 'ROLE_MVC', 'B917F6FDEAFFD7A08AE3BE602E99E8DB', 'yilmaz');
INSERT INTO `logger` VALUES (640, '2021-10-27 06:49:12', '0:0:0:0:0:0:0:1', '/css/all.min.css', 'alper@mail.com', 'alper', 'ROLE_MVC', 'B917F6FDEAFFD7A08AE3BE602E99E8DB', 'yilmaz');
INSERT INTO `logger` VALUES (641, '2021-10-27 06:49:12', '0:0:0:0:0:0:0:1', '/css/style.css', 'alper@mail.com', 'alper', 'ROLE_MVC', 'B917F6FDEAFFD7A08AE3BE602E99E8DB', 'yilmaz');
INSERT INTO `logger` VALUES (642, '2021-10-27 06:49:12', '0:0:0:0:0:0:0:1', '/js/jquery.min.js', 'alper@mail.com', 'alper', 'ROLE_MVC', 'B917F6FDEAFFD7A08AE3BE602E99E8DB', 'yilmaz');
INSERT INTO `logger` VALUES (643, '2021-10-27 06:49:12', '0:0:0:0:0:0:0:1', '/js/script.js', 'alper@mail.com', 'alper', 'ROLE_MVC', 'B917F6FDEAFFD7A08AE3BE602E99E8DB', 'yilmaz');
INSERT INTO `logger` VALUES (644, '2021-10-27 06:49:12', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.js', 'alper@mail.com', 'alper', 'ROLE_MVC', 'B917F6FDEAFFD7A08AE3BE602E99E8DB', 'yilmaz');
INSERT INTO `logger` VALUES (645, '2021-10-27 06:49:12', '0:0:0:0:0:0:0:1', '/advertisement/pagination/0/10', 'alper@mail.com', 'alper', 'ROLE_MVC', 'B917F6FDEAFFD7A08AE3BE602E99E8DB', 'yilmaz');
INSERT INTO `logger` VALUES (646, '2021-10-27 06:49:12', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/outline-icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', 'B917F6FDEAFFD7A08AE3BE602E99E8DB', 'yilmaz');
INSERT INTO `logger` VALUES (647, '2021-10-27 06:49:12', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', 'B917F6FDEAFFD7A08AE3BE602E99E8DB', 'yilmaz');
INSERT INTO `logger` VALUES (648, '2021-10-27 06:49:12', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/brand-icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', 'B917F6FDEAFFD7A08AE3BE602E99E8DB', 'yilmaz');
INSERT INTO `logger` VALUES (649, '2021-10-27 06:49:16', '0:0:0:0:0:0:0:1', '/productManager', 'alper@mail.com', 'alper', 'ROLE_MVC', 'B917F6FDEAFFD7A08AE3BE602E99E8DB', 'yilmaz');
INSERT INTO `logger` VALUES (650, '2021-10-27 06:49:16', '0:0:0:0:0:0:0:1', '/css/all.min.css', 'alper@mail.com', 'alper', 'ROLE_MVC', 'B917F6FDEAFFD7A08AE3BE602E99E8DB', 'yilmaz');
INSERT INTO `logger` VALUES (651, '2021-10-27 06:49:16', '0:0:0:0:0:0:0:1', '/sitejs/productManagement.js', 'alper@mail.com', 'alper', 'ROLE_MVC', 'B917F6FDEAFFD7A08AE3BE602E99E8DB', 'yilmaz');
INSERT INTO `logger` VALUES (652, '2021-10-27 06:49:16', '0:0:0:0:0:0:0:1', '/css/style.css', 'alper@mail.com', 'alper', 'ROLE_MVC', 'B917F6FDEAFFD7A08AE3BE602E99E8DB', 'yilmaz');
INSERT INTO `logger` VALUES (653, '2021-10-27 06:49:16', '0:0:0:0:0:0:0:1', '/css/ckeditor.css', 'alper@mail.com', 'alper', 'ROLE_MVC', 'B917F6FDEAFFD7A08AE3BE602E99E8DB', 'yilmaz');
INSERT INTO `logger` VALUES (654, '2021-10-27 06:49:16', '0:0:0:0:0:0:0:1', '/js/jquery-3.1.1.js', 'alper@mail.com', 'alper', 'ROLE_MVC', 'B917F6FDEAFFD7A08AE3BE602E99E8DB', 'yilmaz');
INSERT INTO `logger` VALUES (655, '2021-10-27 06:49:16', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.css', 'alper@mail.com', 'alper', 'ROLE_MVC', 'B917F6FDEAFFD7A08AE3BE602E99E8DB', 'yilmaz');
INSERT INTO `logger` VALUES (656, '2021-10-27 06:49:16', '0:0:0:0:0:0:0:1', '/js/jquery.min.js', 'alper@mail.com', 'alper', 'ROLE_MVC', 'B917F6FDEAFFD7A08AE3BE602E99E8DB', 'yilmaz');
INSERT INTO `logger` VALUES (657, '2021-10-27 06:49:16', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.js', 'alper@mail.com', 'alper', 'ROLE_MVC', 'B917F6FDEAFFD7A08AE3BE602E99E8DB', 'yilmaz');
INSERT INTO `logger` VALUES (658, '2021-10-27 06:49:16', '0:0:0:0:0:0:0:1', '/js/script.js', 'alper@mail.com', 'alper', 'ROLE_MVC', 'B917F6FDEAFFD7A08AE3BE602E99E8DB', 'yilmaz');
INSERT INTO `logger` VALUES (659, '2021-10-27 06:49:16', '0:0:0:0:0:0:0:1', '/productManager/listed', 'alper@mail.com', 'alper', 'ROLE_MVC', 'B917F6FDEAFFD7A08AE3BE602E99E8DB', 'yilmaz');
INSERT INTO `logger` VALUES (660, '2021-10-27 06:49:16', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/outline-icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', 'B917F6FDEAFFD7A08AE3BE602E99E8DB', 'yilmaz');
INSERT INTO `logger` VALUES (661, '2021-10-27 06:49:16', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/brand-icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', 'B917F6FDEAFFD7A08AE3BE602E99E8DB', 'yilmaz');
INSERT INTO `logger` VALUES (662, '2021-10-27 06:49:16', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', 'B917F6FDEAFFD7A08AE3BE602E99E8DB', 'yilmaz');
INSERT INTO `logger` VALUES (663, '2021-10-27 06:49:19', '0:0:0:0:0:0:0:1', '/product', 'alper@mail.com', 'alper', 'ROLE_MVC', 'B917F6FDEAFFD7A08AE3BE602E99E8DB', 'yilmaz');
INSERT INTO `logger` VALUES (664, '2021-10-27 06:49:19', '0:0:0:0:0:0:0:1', '/js/jquery-3.1.1.js', 'alper@mail.com', 'alper', 'ROLE_MVC', 'B917F6FDEAFFD7A08AE3BE602E99E8DB', 'yilmaz');
INSERT INTO `logger` VALUES (665, '2021-10-27 06:49:19', '0:0:0:0:0:0:0:1', '/css/style.css', 'alper@mail.com', 'alper', 'ROLE_MVC', 'B917F6FDEAFFD7A08AE3BE602E99E8DB', 'yilmaz');
INSERT INTO `logger` VALUES (666, '2021-10-27 06:49:19', '0:0:0:0:0:0:0:1', '/css/all.min.css', 'alper@mail.com', 'alper', 'ROLE_MVC', 'B917F6FDEAFFD7A08AE3BE602E99E8DB', 'yilmaz');
INSERT INTO `logger` VALUES (667, '2021-10-27 06:49:19', '0:0:0:0:0:0:0:1', '/js/jquery.min.js', 'alper@mail.com', 'alper', 'ROLE_MVC', 'B917F6FDEAFFD7A08AE3BE602E99E8DB', 'yilmaz');
INSERT INTO `logger` VALUES (668, '2021-10-27 06:49:19', '0:0:0:0:0:0:0:1', '/css/ckeditor.css', 'alper@mail.com', 'alper', 'ROLE_MVC', 'B917F6FDEAFFD7A08AE3BE602E99E8DB', 'yilmaz');
INSERT INTO `logger` VALUES (669, '2021-10-27 06:49:19', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.css', 'alper@mail.com', 'alper', 'ROLE_MVC', 'B917F6FDEAFFD7A08AE3BE602E99E8DB', 'yilmaz');
INSERT INTO `logger` VALUES (670, '2021-10-27 06:49:19', '0:0:0:0:0:0:0:1', '/js/script.js', 'alper@mail.com', 'alper', 'ROLE_MVC', 'B917F6FDEAFFD7A08AE3BE602E99E8DB', 'yilmaz');
INSERT INTO `logger` VALUES (671, '2021-10-27 06:49:19', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.js', 'alper@mail.com', 'alper', 'ROLE_MVC', 'B917F6FDEAFFD7A08AE3BE602E99E8DB', 'yilmaz');
INSERT INTO `logger` VALUES (672, '2021-10-27 06:49:19', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/outline-icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', 'B917F6FDEAFFD7A08AE3BE602E99E8DB', 'yilmaz');
INSERT INTO `logger` VALUES (673, '2021-10-27 06:49:19', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', 'B917F6FDEAFFD7A08AE3BE602E99E8DB', 'yilmaz');
INSERT INTO `logger` VALUES (674, '2021-10-27 06:49:19', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/brand-icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', 'B917F6FDEAFFD7A08AE3BE602E99E8DB', 'yilmaz');
INSERT INTO `logger` VALUES (675, '2021-10-27 06:51:07', '0:0:0:0:0:0:0:1', '/customer', 'alper@mail.com', 'alper', 'ROLE_MVC', 'B917F6FDEAFFD7A08AE3BE602E99E8DB', 'yilmaz');
INSERT INTO `logger` VALUES (676, '2021-10-27 06:51:08', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.css', 'alper@mail.com', 'alper', 'ROLE_MVC', 'B917F6FDEAFFD7A08AE3BE602E99E8DB', 'yilmaz');
INSERT INTO `logger` VALUES (677, '2021-10-27 06:51:08', '0:0:0:0:0:0:0:1', '/css/ckeditor.css', 'alper@mail.com', 'alper', 'ROLE_MVC', 'B917F6FDEAFFD7A08AE3BE602E99E8DB', 'yilmaz');
INSERT INTO `logger` VALUES (678, '2021-10-27 06:51:08', '0:0:0:0:0:0:0:1', '/js/jquery.min.js', 'alper@mail.com', 'alper', 'ROLE_MVC', 'B917F6FDEAFFD7A08AE3BE602E99E8DB', 'yilmaz');
INSERT INTO `logger` VALUES (679, '2021-10-27 06:51:08', '0:0:0:0:0:0:0:1', '/css/all.min.css', 'alper@mail.com', 'alper', 'ROLE_MVC', 'B917F6FDEAFFD7A08AE3BE602E99E8DB', 'yilmaz');
INSERT INTO `logger` VALUES (680, '2021-10-27 06:51:08', '0:0:0:0:0:0:0:1', '/css/style.css', 'alper@mail.com', 'alper', 'ROLE_MVC', 'B917F6FDEAFFD7A08AE3BE602E99E8DB', 'yilmaz');
INSERT INTO `logger` VALUES (681, '2021-10-27 06:51:08', '0:0:0:0:0:0:0:1', '/js/jquery-3.1.1.js', 'alper@mail.com', 'alper', 'ROLE_MVC', 'B917F6FDEAFFD7A08AE3BE602E99E8DB', 'yilmaz');
INSERT INTO `logger` VALUES (682, '2021-10-27 06:51:08', '0:0:0:0:0:0:0:1', '/js/script.js', 'alper@mail.com', 'alper', 'ROLE_MVC', 'B917F6FDEAFFD7A08AE3BE602E99E8DB', 'yilmaz');
INSERT INTO `logger` VALUES (683, '2021-10-27 06:51:08', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.js', 'alper@mail.com', 'alper', 'ROLE_MVC', 'B917F6FDEAFFD7A08AE3BE602E99E8DB', 'yilmaz');
INSERT INTO `logger` VALUES (684, '2021-10-27 06:51:08', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/brand-icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', 'B917F6FDEAFFD7A08AE3BE602E99E8DB', 'yilmaz');
INSERT INTO `logger` VALUES (685, '2021-10-27 06:51:08', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', 'B917F6FDEAFFD7A08AE3BE602E99E8DB', 'yilmaz');
INSERT INTO `logger` VALUES (686, '2021-10-27 06:51:08', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/outline-icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', 'B917F6FDEAFFD7A08AE3BE602E99E8DB', 'yilmaz');
INSERT INTO `logger` VALUES (687, '2021-10-27 06:51:14', '0:0:0:0:0:0:0:1', '/product', 'alper@mail.com', 'alper', 'ROLE_MVC', 'B917F6FDEAFFD7A08AE3BE602E99E8DB', 'yilmaz');
INSERT INTO `logger` VALUES (688, '2021-10-27 06:51:14', '0:0:0:0:0:0:0:1', '/js/jquery-3.1.1.js', 'alper@mail.com', 'alper', 'ROLE_MVC', 'B917F6FDEAFFD7A08AE3BE602E99E8DB', 'yilmaz');
INSERT INTO `logger` VALUES (689, '2021-10-27 06:51:14', '0:0:0:0:0:0:0:1', '/js/jquery.min.js', 'alper@mail.com', 'alper', 'ROLE_MVC', 'B917F6FDEAFFD7A08AE3BE602E99E8DB', 'yilmaz');
INSERT INTO `logger` VALUES (690, '2021-10-27 06:51:14', '0:0:0:0:0:0:0:1', '/css/all.min.css', 'alper@mail.com', 'alper', 'ROLE_MVC', 'B917F6FDEAFFD7A08AE3BE602E99E8DB', 'yilmaz');
INSERT INTO `logger` VALUES (691, '2021-10-27 06:51:14', '0:0:0:0:0:0:0:1', '/css/ckeditor.css', 'alper@mail.com', 'alper', 'ROLE_MVC', 'B917F6FDEAFFD7A08AE3BE602E99E8DB', 'yilmaz');
INSERT INTO `logger` VALUES (692, '2021-10-27 06:51:14', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.css', 'alper@mail.com', 'alper', 'ROLE_MVC', 'B917F6FDEAFFD7A08AE3BE602E99E8DB', 'yilmaz');
INSERT INTO `logger` VALUES (693, '2021-10-27 06:51:14', '0:0:0:0:0:0:0:1', '/css/style.css', 'alper@mail.com', 'alper', 'ROLE_MVC', 'B917F6FDEAFFD7A08AE3BE602E99E8DB', 'yilmaz');
INSERT INTO `logger` VALUES (694, '2021-10-27 06:51:14', '0:0:0:0:0:0:0:1', '/js/script.js', 'alper@mail.com', 'alper', 'ROLE_MVC', 'B917F6FDEAFFD7A08AE3BE602E99E8DB', 'yilmaz');
INSERT INTO `logger` VALUES (695, '2021-10-27 06:51:14', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.js', 'alper@mail.com', 'alper', 'ROLE_MVC', 'B917F6FDEAFFD7A08AE3BE602E99E8DB', 'yilmaz');
INSERT INTO `logger` VALUES (696, '2021-10-27 06:51:14', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', 'B917F6FDEAFFD7A08AE3BE602E99E8DB', 'yilmaz');
INSERT INTO `logger` VALUES (697, '2021-10-27 06:51:14', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/brand-icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', 'B917F6FDEAFFD7A08AE3BE602E99E8DB', 'yilmaz');
INSERT INTO `logger` VALUES (698, '2021-10-27 06:51:14', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/outline-icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', 'B917F6FDEAFFD7A08AE3BE602E99E8DB', 'yilmaz');
INSERT INTO `logger` VALUES (699, '2021-10-27 06:51:18', '0:0:0:0:0:0:0:1', '/productManager', 'alper@mail.com', 'alper', 'ROLE_MVC', 'B917F6FDEAFFD7A08AE3BE602E99E8DB', 'yilmaz');
INSERT INTO `logger` VALUES (700, '2021-10-27 06:51:19', '0:0:0:0:0:0:0:1', '/js/jquery-3.1.1.js', 'alper@mail.com', 'alper', 'ROLE_MVC', 'B917F6FDEAFFD7A08AE3BE602E99E8DB', 'yilmaz');
INSERT INTO `logger` VALUES (701, '2021-10-27 06:51:19', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.css', 'alper@mail.com', 'alper', 'ROLE_MVC', 'B917F6FDEAFFD7A08AE3BE602E99E8DB', 'yilmaz');
INSERT INTO `logger` VALUES (702, '2021-10-27 06:51:19', '0:0:0:0:0:0:0:1', '/css/style.css', 'alper@mail.com', 'alper', 'ROLE_MVC', 'B917F6FDEAFFD7A08AE3BE602E99E8DB', 'yilmaz');
INSERT INTO `logger` VALUES (703, '2021-10-27 06:51:19', '0:0:0:0:0:0:0:1', '/css/ckeditor.css', 'alper@mail.com', 'alper', 'ROLE_MVC', 'B917F6FDEAFFD7A08AE3BE602E99E8DB', 'yilmaz');
INSERT INTO `logger` VALUES (704, '2021-10-27 06:51:19', '0:0:0:0:0:0:0:1', '/css/all.min.css', 'alper@mail.com', 'alper', 'ROLE_MVC', 'B917F6FDEAFFD7A08AE3BE602E99E8DB', 'yilmaz');
INSERT INTO `logger` VALUES (705, '2021-10-27 06:51:19', '0:0:0:0:0:0:0:1', '/sitejs/productManagement.js', 'alper@mail.com', 'alper', 'ROLE_MVC', 'B917F6FDEAFFD7A08AE3BE602E99E8DB', 'yilmaz');
INSERT INTO `logger` VALUES (706, '2021-10-27 06:51:19', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.js', 'alper@mail.com', 'alper', 'ROLE_MVC', 'B917F6FDEAFFD7A08AE3BE602E99E8DB', 'yilmaz');
INSERT INTO `logger` VALUES (707, '2021-10-27 06:51:19', '0:0:0:0:0:0:0:1', '/js/script.js', 'alper@mail.com', 'alper', 'ROLE_MVC', 'B917F6FDEAFFD7A08AE3BE602E99E8DB', 'yilmaz');
INSERT INTO `logger` VALUES (708, '2021-10-27 06:51:19', '0:0:0:0:0:0:0:1', '/js/jquery.min.js', 'alper@mail.com', 'alper', 'ROLE_MVC', 'B917F6FDEAFFD7A08AE3BE602E99E8DB', 'yilmaz');
INSERT INTO `logger` VALUES (709, '2021-10-27 06:51:19', '0:0:0:0:0:0:0:1', '/productManager/listed', 'alper@mail.com', 'alper', 'ROLE_MVC', 'B917F6FDEAFFD7A08AE3BE602E99E8DB', 'yilmaz');
INSERT INTO `logger` VALUES (710, '2021-10-27 06:51:19', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/brand-icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', 'B917F6FDEAFFD7A08AE3BE602E99E8DB', 'yilmaz');
INSERT INTO `logger` VALUES (711, '2021-10-27 06:51:19', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/outline-icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', 'B917F6FDEAFFD7A08AE3BE602E99E8DB', 'yilmaz');
INSERT INTO `logger` VALUES (712, '2021-10-27 06:51:19', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', 'B917F6FDEAFFD7A08AE3BE602E99E8DB', 'yilmaz');
INSERT INTO `logger` VALUES (713, '2021-10-27 06:51:23', '0:0:0:0:0:0:0:1', '/productManager/pagelisted/0/5', 'alper@mail.com', 'alper', 'ROLE_MVC', 'B917F6FDEAFFD7A08AE3BE602E99E8DB', 'yilmaz');
INSERT INTO `logger` VALUES (714, '2021-10-27 06:51:24', '0:0:0:0:0:0:0:1', '/productManager/pagelisted/1/5', 'alper@mail.com', 'alper', 'ROLE_MVC', 'B917F6FDEAFFD7A08AE3BE602E99E8DB', 'yilmaz');
INSERT INTO `logger` VALUES (715, '2021-10-27 06:51:25', '0:0:0:0:0:0:0:1', '/uploads/product/8267c080-a458-49de-a4d2-c01c85a4f1455.jpg', 'alper@mail.com', 'alper', 'ROLE_MVC', 'B917F6FDEAFFD7A08AE3BE602E99E8DB', 'yilmaz');
INSERT INTO `logger` VALUES (716, '2021-10-27 06:51:25', '0:0:0:0:0:0:0:1', '/uploads/product/effa238b-69db-4d38-af7c-42846c2ecfef4.jpg', 'alper@mail.com', 'alper', 'ROLE_MVC', 'B917F6FDEAFFD7A08AE3BE602E99E8DB', 'yilmaz');
INSERT INTO `logger` VALUES (717, '2021-10-27 06:51:25', '0:0:0:0:0:0:0:1', '/uploads/product/ad5bcdf7-2abe-42b4-8de5-9914447f5f386.jpg', 'alper@mail.com', 'alper', 'ROLE_MVC', 'B917F6FDEAFFD7A08AE3BE602E99E8DB', 'yilmaz');
INSERT INTO `logger` VALUES (718, '2021-10-27 06:51:27', '0:0:0:0:0:0:0:1', '/uploads/product/9246eda7-7c62-4b42-bcb1-f0bff14db5317.jpg', 'alper@mail.com', 'alper', 'ROLE_MVC', 'B917F6FDEAFFD7A08AE3BE602E99E8DB', 'yilmaz');
INSERT INTO `logger` VALUES (719, '2021-10-27 06:51:31', '0:0:0:0:0:0:0:1', '/productManager/pagelisted/0/5', 'alper@mail.com', 'alper', 'ROLE_MVC', 'B917F6FDEAFFD7A08AE3BE602E99E8DB', 'yilmaz');
INSERT INTO `logger` VALUES (720, '2021-10-27 06:51:33', '0:0:0:0:0:0:0:1', '/productManager/pagelisted/1/5', 'alper@mail.com', 'alper', 'ROLE_MVC', 'B917F6FDEAFFD7A08AE3BE602E99E8DB', 'yilmaz');
INSERT INTO `logger` VALUES (721, '2021-10-27 06:51:39', '0:0:0:0:0:0:0:1', '/category', 'alper@mail.com', 'alper', 'ROLE_MVC', 'B917F6FDEAFFD7A08AE3BE602E99E8DB', 'yilmaz');
INSERT INTO `logger` VALUES (722, '2021-10-27 06:51:39', '0:0:0:0:0:0:0:1', '/css/ckeditor.css', 'alper@mail.com', 'alper', 'ROLE_MVC', 'B917F6FDEAFFD7A08AE3BE602E99E8DB', 'yilmaz');
INSERT INTO `logger` VALUES (723, '2021-10-27 06:51:39', '0:0:0:0:0:0:0:1', '/sitejs/category.js', 'alper@mail.com', 'alper', 'ROLE_MVC', 'B917F6FDEAFFD7A08AE3BE602E99E8DB', 'yilmaz');
INSERT INTO `logger` VALUES (724, '2021-10-27 06:51:39', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.css', 'alper@mail.com', 'alper', 'ROLE_MVC', 'B917F6FDEAFFD7A08AE3BE602E99E8DB', 'yilmaz');
INSERT INTO `logger` VALUES (725, '2021-10-27 06:51:39', '0:0:0:0:0:0:0:1', '/js/jquery-3.1.1.js', 'alper@mail.com', 'alper', 'ROLE_MVC', 'B917F6FDEAFFD7A08AE3BE602E99E8DB', 'yilmaz');
INSERT INTO `logger` VALUES (726, '2021-10-27 06:51:39', '0:0:0:0:0:0:0:1', '/css/style.css', 'alper@mail.com', 'alper', 'ROLE_MVC', 'B917F6FDEAFFD7A08AE3BE602E99E8DB', 'yilmaz');
INSERT INTO `logger` VALUES (727, '2021-10-27 06:51:39', '0:0:0:0:0:0:0:1', '/css/all.min.css', 'alper@mail.com', 'alper', 'ROLE_MVC', 'B917F6FDEAFFD7A08AE3BE602E99E8DB', 'yilmaz');
INSERT INTO `logger` VALUES (728, '2021-10-27 06:51:39', '0:0:0:0:0:0:0:1', '/js/jquery.min.js', 'alper@mail.com', 'alper', 'ROLE_MVC', 'B917F6FDEAFFD7A08AE3BE602E99E8DB', 'yilmaz');
INSERT INTO `logger` VALUES (729, '2021-10-27 06:51:39', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.js', 'alper@mail.com', 'alper', 'ROLE_MVC', 'B917F6FDEAFFD7A08AE3BE602E99E8DB', 'yilmaz');
INSERT INTO `logger` VALUES (730, '2021-10-27 06:51:39', '0:0:0:0:0:0:0:1', '/js/script.js', 'alper@mail.com', 'alper', 'ROLE_MVC', 'B917F6FDEAFFD7A08AE3BE602E99E8DB', 'yilmaz');
INSERT INTO `logger` VALUES (731, '2021-10-27 06:51:39', '0:0:0:0:0:0:0:1', '/category/listCat', 'alper@mail.com', 'alper', 'ROLE_MVC', 'B917F6FDEAFFD7A08AE3BE602E99E8DB', 'yilmaz');
INSERT INTO `logger` VALUES (732, '2021-10-27 06:51:39', '0:0:0:0:0:0:0:1', '/category/subCat', 'alper@mail.com', 'alper', 'ROLE_MVC', 'B917F6FDEAFFD7A08AE3BE602E99E8DB', 'yilmaz');
INSERT INTO `logger` VALUES (733, '2021-10-27 06:51:39', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/outline-icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', 'B917F6FDEAFFD7A08AE3BE602E99E8DB', 'yilmaz');
INSERT INTO `logger` VALUES (734, '2021-10-27 06:51:39', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', 'B917F6FDEAFFD7A08AE3BE602E99E8DB', 'yilmaz');
INSERT INTO `logger` VALUES (735, '2021-10-27 06:51:39', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/brand-icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', 'B917F6FDEAFFD7A08AE3BE602E99E8DB', 'yilmaz');
INSERT INTO `logger` VALUES (736, '2021-10-27 06:52:38', '0:0:0:0:0:0:0:1', '/category', 'alper@mail.com', 'alper', 'ROLE_MVC', 'B917F6FDEAFFD7A08AE3BE602E99E8DB', 'yilmaz');
INSERT INTO `logger` VALUES (737, '2021-10-27 06:52:38', '0:0:0:0:0:0:0:1', '/css/ckeditor.css', 'alper@mail.com', 'alper', 'ROLE_MVC', 'B917F6FDEAFFD7A08AE3BE602E99E8DB', 'yilmaz');
INSERT INTO `logger` VALUES (738, '2021-10-27 06:52:38', '0:0:0:0:0:0:0:1', '/js/jquery-3.1.1.js', 'alper@mail.com', 'alper', 'ROLE_MVC', 'B917F6FDEAFFD7A08AE3BE602E99E8DB', 'yilmaz');
INSERT INTO `logger` VALUES (739, '2021-10-27 06:52:38', '0:0:0:0:0:0:0:1', '/css/all.min.css', 'alper@mail.com', 'alper', 'ROLE_MVC', 'B917F6FDEAFFD7A08AE3BE602E99E8DB', 'yilmaz');
INSERT INTO `logger` VALUES (740, '2021-10-27 06:52:38', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.css', 'alper@mail.com', 'alper', 'ROLE_MVC', 'B917F6FDEAFFD7A08AE3BE602E99E8DB', 'yilmaz');
INSERT INTO `logger` VALUES (741, '2021-10-27 06:52:38', '0:0:0:0:0:0:0:1', '/css/style.css', 'alper@mail.com', 'alper', 'ROLE_MVC', 'B917F6FDEAFFD7A08AE3BE602E99E8DB', 'yilmaz');
INSERT INTO `logger` VALUES (742, '2021-10-27 06:52:38', '0:0:0:0:0:0:0:1', '/sitejs/category.js', 'alper@mail.com', 'alper', 'ROLE_MVC', 'B917F6FDEAFFD7A08AE3BE602E99E8DB', 'yilmaz');
INSERT INTO `logger` VALUES (743, '2021-10-27 06:52:38', '0:0:0:0:0:0:0:1', '/js/script.js', 'alper@mail.com', 'alper', 'ROLE_MVC', 'B917F6FDEAFFD7A08AE3BE602E99E8DB', 'yilmaz');
INSERT INTO `logger` VALUES (744, '2021-10-27 06:52:38', '0:0:0:0:0:0:0:1', '/js/jquery.min.js', 'alper@mail.com', 'alper', 'ROLE_MVC', 'B917F6FDEAFFD7A08AE3BE602E99E8DB', 'yilmaz');
INSERT INTO `logger` VALUES (745, '2021-10-27 06:52:38', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.js', 'alper@mail.com', 'alper', 'ROLE_MVC', 'B917F6FDEAFFD7A08AE3BE602E99E8DB', 'yilmaz');
INSERT INTO `logger` VALUES (746, '2021-10-27 06:52:38', '0:0:0:0:0:0:0:1', '/category/subCat', 'alper@mail.com', 'alper', 'ROLE_MVC', 'B917F6FDEAFFD7A08AE3BE602E99E8DB', 'yilmaz');
INSERT INTO `logger` VALUES (747, '2021-10-27 06:52:38', '0:0:0:0:0:0:0:1', '/category/listCat', 'alper@mail.com', 'alper', 'ROLE_MVC', 'B917F6FDEAFFD7A08AE3BE602E99E8DB', 'yilmaz');
INSERT INTO `logger` VALUES (748, '2021-10-27 06:52:39', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', 'B917F6FDEAFFD7A08AE3BE602E99E8DB', 'yilmaz');
INSERT INTO `logger` VALUES (749, '2021-10-27 06:52:39', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/outline-icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', 'B917F6FDEAFFD7A08AE3BE602E99E8DB', 'yilmaz');
INSERT INTO `logger` VALUES (750, '2021-10-27 06:52:39', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/brand-icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', 'B917F6FDEAFFD7A08AE3BE602E99E8DB', 'yilmaz');
INSERT INTO `logger` VALUES (751, '2021-10-27 06:52:40', '0:0:0:0:0:0:0:1', '/customer', 'alper@mail.com', 'alper', 'ROLE_MVC', 'B917F6FDEAFFD7A08AE3BE602E99E8DB', 'yilmaz');
INSERT INTO `logger` VALUES (752, '2021-10-27 06:52:40', '0:0:0:0:0:0:0:1', '/js/jquery-3.1.1.js', 'alper@mail.com', 'alper', 'ROLE_MVC', 'B917F6FDEAFFD7A08AE3BE602E99E8DB', 'yilmaz');
INSERT INTO `logger` VALUES (753, '2021-10-27 06:52:40', '0:0:0:0:0:0:0:1', '/css/ckeditor.css', 'alper@mail.com', 'alper', 'ROLE_MVC', 'B917F6FDEAFFD7A08AE3BE602E99E8DB', 'yilmaz');
INSERT INTO `logger` VALUES (754, '2021-10-27 06:52:40', '0:0:0:0:0:0:0:1', '/css/all.min.css', 'alper@mail.com', 'alper', 'ROLE_MVC', 'B917F6FDEAFFD7A08AE3BE602E99E8DB', 'yilmaz');
INSERT INTO `logger` VALUES (755, '2021-10-27 06:52:40', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.css', 'alper@mail.com', 'alper', 'ROLE_MVC', 'B917F6FDEAFFD7A08AE3BE602E99E8DB', 'yilmaz');
INSERT INTO `logger` VALUES (756, '2021-10-27 06:52:40', '0:0:0:0:0:0:0:1', '/css/style.css', 'alper@mail.com', 'alper', 'ROLE_MVC', 'B917F6FDEAFFD7A08AE3BE602E99E8DB', 'yilmaz');
INSERT INTO `logger` VALUES (757, '2021-10-27 06:52:40', '0:0:0:0:0:0:0:1', '/js/script.js', 'alper@mail.com', 'alper', 'ROLE_MVC', 'B917F6FDEAFFD7A08AE3BE602E99E8DB', 'yilmaz');
INSERT INTO `logger` VALUES (758, '2021-10-27 06:52:40', '0:0:0:0:0:0:0:1', '/js/jquery.min.js', 'alper@mail.com', 'alper', 'ROLE_MVC', 'B917F6FDEAFFD7A08AE3BE602E99E8DB', 'yilmaz');
INSERT INTO `logger` VALUES (759, '2021-10-27 06:52:41', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.js', 'alper@mail.com', 'alper', 'ROLE_MVC', 'B917F6FDEAFFD7A08AE3BE602E99E8DB', 'yilmaz');
INSERT INTO `logger` VALUES (760, '2021-10-27 06:52:41', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/outline-icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', 'B917F6FDEAFFD7A08AE3BE602E99E8DB', 'yilmaz');
INSERT INTO `logger` VALUES (761, '2021-10-27 06:52:41', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', 'B917F6FDEAFFD7A08AE3BE602E99E8DB', 'yilmaz');
INSERT INTO `logger` VALUES (762, '2021-10-27 06:52:41', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/brand-icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', 'B917F6FDEAFFD7A08AE3BE602E99E8DB', 'yilmaz');
INSERT INTO `logger` VALUES (763, '2021-10-27 06:54:37', '0:0:0:0:0:0:0:1', '/login', 'anonymousUser', NULL, NULL, '24A6098C4EA76C064BC1268B3BB972B1', NULL);
INSERT INTO `logger` VALUES (764, '2021-10-27 06:54:37', '0:0:0:0:0:0:0:1', '/js/jquery-3.1.1.js', 'anonymousUser', NULL, NULL, '24A6098C4EA76C064BC1268B3BB972B1', NULL);
INSERT INTO `logger` VALUES (765, '2021-10-27 06:54:37', '0:0:0:0:0:0:0:1', '/css/style.css', 'anonymousUser', NULL, NULL, '24A6098C4EA76C064BC1268B3BB972B1', NULL);
INSERT INTO `logger` VALUES (766, '2021-10-27 06:54:37', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.css', 'anonymousUser', NULL, NULL, '24A6098C4EA76C064BC1268B3BB972B1', NULL);
INSERT INTO `logger` VALUES (767, '2021-10-27 06:54:37', '0:0:0:0:0:0:0:1', '/js/jquery.min.js', 'anonymousUser', NULL, NULL, '24A6098C4EA76C064BC1268B3BB972B1', NULL);
INSERT INTO `logger` VALUES (768, '2021-10-27 06:54:37', '0:0:0:0:0:0:0:1', '/css/all.min.css', 'anonymousUser', NULL, NULL, '24A6098C4EA76C064BC1268B3BB972B1', NULL);
INSERT INTO `logger` VALUES (769, '2021-10-27 06:54:37', '0:0:0:0:0:0:0:1', '/css/ckeditor.css', 'anonymousUser', NULL, NULL, '24A6098C4EA76C064BC1268B3BB972B1', NULL);
INSERT INTO `logger` VALUES (770, '2021-10-27 06:54:38', '0:0:0:0:0:0:0:1', '/js/script.js', 'anonymousUser', NULL, NULL, '24A6098C4EA76C064BC1268B3BB972B1', NULL);
INSERT INTO `logger` VALUES (771, '2021-10-27 06:54:38', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.js', 'anonymousUser', NULL, NULL, '24A6098C4EA76C064BC1268B3BB972B1', NULL);
INSERT INTO `logger` VALUES (772, '2021-10-27 06:54:38', '0:0:0:0:0:0:0:1', '/login', 'anonymousUser', NULL, NULL, '7B0E9DCED71132B92DE1FEBC233F6081', NULL);
INSERT INTO `logger` VALUES (773, '2021-10-27 06:54:38', '0:0:0:0:0:0:0:1', '/css/style.css', 'anonymousUser', NULL, NULL, '7B0E9DCED71132B92DE1FEBC233F6081', NULL);
INSERT INTO `logger` VALUES (774, '2021-10-27 06:54:38', '0:0:0:0:0:0:0:1', '/js/jquery-3.1.1.js', 'anonymousUser', NULL, NULL, '7B0E9DCED71132B92DE1FEBC233F6081', NULL);
INSERT INTO `logger` VALUES (775, '2021-10-27 06:54:38', '0:0:0:0:0:0:0:1', '/css/ckeditor.css', 'anonymousUser', NULL, NULL, '7B0E9DCED71132B92DE1FEBC233F6081', NULL);
INSERT INTO `logger` VALUES (776, '2021-10-27 06:54:38', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.css', 'anonymousUser', NULL, NULL, '7B0E9DCED71132B92DE1FEBC233F6081', NULL);
INSERT INTO `logger` VALUES (777, '2021-10-27 06:54:38', '0:0:0:0:0:0:0:1', '/css/all.min.css', 'anonymousUser', NULL, NULL, '7B0E9DCED71132B92DE1FEBC233F6081', NULL);
INSERT INTO `logger` VALUES (778, '2021-10-27 06:54:38', '0:0:0:0:0:0:0:1', '/js/script.js', 'anonymousUser', NULL, NULL, '7B0E9DCED71132B92DE1FEBC233F6081', NULL);
INSERT INTO `logger` VALUES (779, '2021-10-27 06:54:38', '0:0:0:0:0:0:0:1', '/js/jquery.min.js', 'anonymousUser', NULL, NULL, '7B0E9DCED71132B92DE1FEBC233F6081', NULL);
INSERT INTO `logger` VALUES (780, '2021-10-27 06:54:38', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.js', 'anonymousUser', NULL, NULL, '7B0E9DCED71132B92DE1FEBC233F6081', NULL);
INSERT INTO `logger` VALUES (781, '2021-10-27 06:54:38', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/brand-icons.woff2', 'anonymousUser', NULL, NULL, '7B0E9DCED71132B92DE1FEBC233F6081', NULL);
INSERT INTO `logger` VALUES (782, '2021-10-27 06:54:38', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/outline-icons.woff2', 'anonymousUser', NULL, NULL, '7B0E9DCED71132B92DE1FEBC233F6081', NULL);
INSERT INTO `logger` VALUES (783, '2021-10-27 06:54:38', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/icons.woff2', 'anonymousUser', NULL, NULL, '7B0E9DCED71132B92DE1FEBC233F6081', NULL);
INSERT INTO `logger` VALUES (784, '2021-10-27 06:54:43', '0:0:0:0:0:0:0:1', '/announce', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (785, '2021-10-27 06:54:43', '0:0:0:0:0:0:0:1', '/css/all.min.css', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (786, '2021-10-27 06:54:43', '0:0:0:0:0:0:0:1', '/js/jquery-3.1.1.js', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (787, '2021-10-27 06:54:43', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.css', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (788, '2021-10-27 06:54:43', '0:0:0:0:0:0:0:1', '/sitejs/announce.js', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (789, '2021-10-27 06:54:43', '0:0:0:0:0:0:0:1', '/css/ckeditor.css', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (790, '2021-10-27 06:54:43', '0:0:0:0:0:0:0:1', '/css/style.css', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (791, '2021-10-27 06:54:43', '0:0:0:0:0:0:0:1', '/js/jquery.min.js', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (792, '2021-10-27 06:54:43', '0:0:0:0:0:0:0:1', '/js/script.js', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (793, '2021-10-27 06:54:43', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.js', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (794, '2021-10-27 06:54:43', '0:0:0:0:0:0:0:1', '/announce/listed', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (795, '2021-10-27 06:54:43', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/icons.woff2', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (796, '2021-10-27 06:54:43', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/brand-icons.woff2', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (797, '2021-10-27 06:54:43', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/outline-icons.woff2', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (798, '2021-10-27 06:54:46', '0:0:0:0:0:0:0:1', '/content', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (799, '2021-10-27 06:54:46', '0:0:0:0:0:0:0:1', '/js/jquery-3.1.1.js', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (800, '2021-10-27 06:54:46', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.css', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (801, '2021-10-27 06:54:46', '0:0:0:0:0:0:0:1', '/css/style.css', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (802, '2021-10-27 06:54:46', '0:0:0:0:0:0:0:1', '/css/ckeditor.css', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (803, '2021-10-27 06:54:46', '0:0:0:0:0:0:0:1', '/js/jquery.min.js', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (804, '2021-10-27 06:54:46', '0:0:0:0:0:0:0:1', '/css/all.min.css', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (805, '2021-10-27 06:54:46', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.js', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (806, '2021-10-27 06:54:46', '0:0:0:0:0:0:0:1', '/js/script.js', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (807, '2021-10-27 06:54:47', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/icons.woff2', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (808, '2021-10-27 06:54:47', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/outline-icons.woff2', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (809, '2021-10-27 06:54:47', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/brand-icons.woff2', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (810, '2021-10-27 06:54:51', '0:0:0:0:0:0:0:1', '/category', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (811, '2021-10-27 06:54:51', '0:0:0:0:0:0:0:1', '/css/all.min.css', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (812, '2021-10-27 06:54:51', '0:0:0:0:0:0:0:1', '/css/ckeditor.css', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (813, '2021-10-27 06:54:51', '0:0:0:0:0:0:0:1', '/sitejs/category.js', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (814, '2021-10-27 06:54:51', '0:0:0:0:0:0:0:1', '/js/jquery-3.1.1.js', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (815, '2021-10-27 06:54:51', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.css', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (816, '2021-10-27 06:54:51', '0:0:0:0:0:0:0:1', '/css/style.css', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (817, '2021-10-27 06:54:51', '0:0:0:0:0:0:0:1', '/js/jquery.min.js', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (818, '2021-10-27 06:54:51', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.js', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (819, '2021-10-27 06:54:51', '0:0:0:0:0:0:0:1', '/js/script.js', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (820, '2021-10-27 06:54:51', '0:0:0:0:0:0:0:1', '/category/listCat', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (821, '2021-10-27 06:54:51', '0:0:0:0:0:0:0:1', '/category/subCat', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (822, '2021-10-27 06:54:51', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/icons.woff2', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (823, '2021-10-27 06:54:51', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/brand-icons.woff2', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (824, '2021-10-27 06:54:51', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/outline-icons.woff2', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (825, '2021-10-27 06:54:53', '0:0:0:0:0:0:0:1', '/announce', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (826, '2021-10-27 06:54:53', '0:0:0:0:0:0:0:1', '/css/style.css', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (827, '2021-10-27 06:54:53', '0:0:0:0:0:0:0:1', '/css/ckeditor.css', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (828, '2021-10-27 06:54:53', '0:0:0:0:0:0:0:1', '/css/all.min.css', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (829, '2021-10-27 06:54:53', '0:0:0:0:0:0:0:1', '/sitejs/announce.js', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (830, '2021-10-27 06:54:53', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.css', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (831, '2021-10-27 06:54:53', '0:0:0:0:0:0:0:1', '/js/jquery-3.1.1.js', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (832, '2021-10-27 06:54:53', '0:0:0:0:0:0:0:1', '/js/jquery.min.js', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (833, '2021-10-27 06:54:53', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.js', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (834, '2021-10-27 06:54:53', '0:0:0:0:0:0:0:1', '/js/script.js', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (835, '2021-10-27 06:54:53', '0:0:0:0:0:0:0:1', '/announce/listed', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (836, '2021-10-27 06:54:53', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/outline-icons.woff2', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (837, '2021-10-27 06:54:53', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/icons.woff2', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (838, '2021-10-27 06:54:53', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/brand-icons.woff2', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (839, '2021-10-27 06:54:54', '0:0:0:0:0:0:0:1', '/gallery', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (840, '2021-10-27 06:54:54', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.css', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (841, '2021-10-27 06:54:54', '0:0:0:0:0:0:0:1', '/js/jquery-3.1.1.js', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (842, '2021-10-27 06:54:54', '0:0:0:0:0:0:0:1', '/css/all.min.css', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (843, '2021-10-27 06:54:54', '0:0:0:0:0:0:0:1', '/css/style.css', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (844, '2021-10-27 06:54:54', '0:0:0:0:0:0:0:1', '/css/ckeditor.css', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (845, '2021-10-27 06:54:54', '0:0:0:0:0:0:0:1', '/sitejs/gallery.js', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (846, '2021-10-27 06:54:54', '0:0:0:0:0:0:0:1', '/js/jquery.min.js', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (847, '2021-10-27 06:54:54', '0:0:0:0:0:0:0:1', '/js/script.js', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (848, '2021-10-27 06:54:54', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.js', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (849, '2021-10-27 06:54:54', '0:0:0:0:0:0:0:1', '/gallery/listed', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (850, '2021-10-27 06:54:55', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/icons.woff2', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (851, '2021-10-27 06:54:55', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/brand-icons.woff2', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (852, '2021-10-27 06:54:55', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/outline-icons.woff2', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (853, '2021-10-27 06:54:57', '0:0:0:0:0:0:0:1', '/survey', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (854, '2021-10-27 06:54:57', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.css', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (855, '2021-10-27 06:54:57', '0:0:0:0:0:0:0:1', '/css/all.min.css', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (856, '2021-10-27 06:54:57', '0:0:0:0:0:0:0:1', '/js/jquery-3.1.1.js', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (857, '2021-10-27 06:54:57', '0:0:0:0:0:0:0:1', '/sitejs/survey.js', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (858, '2021-10-27 06:54:57', '0:0:0:0:0:0:0:1', '/css/style.css', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (859, '2021-10-27 06:54:57', '0:0:0:0:0:0:0:1', '/css/ckeditor.css', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (860, '2021-10-27 06:54:57', '0:0:0:0:0:0:0:1', '/js/jquery.min.js', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (861, '2021-10-27 06:54:57', '0:0:0:0:0:0:0:1', '/js/script.js', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (862, '2021-10-27 06:54:57', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.js', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (863, '2021-10-27 06:54:58', '0:0:0:0:0:0:0:1', '/survey/pagination/0/10', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (864, '2021-10-27 06:54:58', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/brand-icons.woff2', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (865, '2021-10-27 06:54:58', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/outline-icons.woff2', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (866, '2021-10-27 06:54:58', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/icons.woff2', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (867, '2021-10-27 06:59:01', '0:0:0:0:0:0:0:1', '/productManager', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (868, '2021-10-27 06:59:01', '0:0:0:0:0:0:0:1', '/css/style.css', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (869, '2021-10-27 06:59:01', '0:0:0:0:0:0:0:1', '/css/all.min.css', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (870, '2021-10-27 06:59:01', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.css', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (871, '2021-10-27 06:59:01', '0:0:0:0:0:0:0:1', '/js/jquery-3.1.1.js', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (872, '2021-10-27 06:59:01', '0:0:0:0:0:0:0:1', '/css/ckeditor.css', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (873, '2021-10-27 06:59:01', '0:0:0:0:0:0:0:1', '/sitejs/productManagement.js', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (874, '2021-10-27 06:59:01', '0:0:0:0:0:0:0:1', '/js/jquery.min.js', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (875, '2021-10-27 06:59:01', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.js', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (876, '2021-10-27 06:59:01', '0:0:0:0:0:0:0:1', '/js/script.js', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (877, '2021-10-27 06:59:01', '0:0:0:0:0:0:0:1', '/productManager/listed', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (878, '2021-10-27 06:59:01', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/icons.woff2', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (879, '2021-10-27 06:59:01', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/brand-icons.woff2', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (880, '2021-10-27 06:59:01', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/outline-icons.woff2', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (881, '2021-10-27 07:01:10', '0:0:0:0:0:0:0:1', '/productManager/pagelisted/1/5', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (882, '2021-10-27 07:01:23', '0:0:0:0:0:0:0:1', '/productManager/pagelisted/0/5', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (883, '2021-10-27 07:01:30', '0:0:0:0:0:0:0:1', '/productManager/pagelisted/1/5', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (884, '2021-10-27 07:01:37', '0:0:0:0:0:0:0:1', '/productManager/pagelisted/0/5', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (885, '2021-10-27 07:01:39', '0:0:0:0:0:0:0:1', '/advertisement', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (886, '2021-10-27 07:01:39', '0:0:0:0:0:0:0:1', '/css/all.min.css', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (887, '2021-10-27 07:01:39', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.css', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (888, '2021-10-27 07:01:39', '0:0:0:0:0:0:0:1', '/js/jquery-3.1.1.js', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (889, '2021-10-27 07:01:39', '0:0:0:0:0:0:0:1', '/css/ckeditor.css', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (890, '2021-10-27 07:01:39', '0:0:0:0:0:0:0:1', '/css/style.css', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (891, '2021-10-27 07:01:39', '0:0:0:0:0:0:0:1', '/sitejs/advertisement.js', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (892, '2021-10-27 07:01:39', '0:0:0:0:0:0:0:1', '/js/script.js', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (893, '2021-10-27 07:01:39', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.js', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (894, '2021-10-27 07:01:39', '0:0:0:0:0:0:0:1', '/js/jquery.min.js', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (895, '2021-10-27 07:01:40', '0:0:0:0:0:0:0:1', '/advertisement/pagination/0/10', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (896, '2021-10-27 07:01:40', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/icons.woff2', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (897, '2021-10-27 07:01:40', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/outline-icons.woff2', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (898, '2021-10-27 07:01:40', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/brand-icons.woff2', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (899, '2021-10-27 07:01:41', '0:0:0:0:0:0:0:1', '/product', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (900, '2021-10-27 07:01:41', '0:0:0:0:0:0:0:1', '/js/jquery-3.1.1.js', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (901, '2021-10-27 07:01:41', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.css', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (902, '2021-10-27 07:01:41', '0:0:0:0:0:0:0:1', '/css/style.css', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (903, '2021-10-27 07:01:41', '0:0:0:0:0:0:0:1', '/js/jquery.min.js', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (904, '2021-10-27 07:01:41', '0:0:0:0:0:0:0:1', '/css/all.min.css', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (905, '2021-10-27 07:01:41', '0:0:0:0:0:0:0:1', '/css/ckeditor.css', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (906, '2021-10-27 07:01:41', '0:0:0:0:0:0:0:1', '/js/script.js', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (907, '2021-10-27 07:01:41', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.js', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (908, '2021-10-27 07:01:42', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/icons.woff2', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (909, '2021-10-27 07:01:42', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/outline-icons.woff2', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (910, '2021-10-27 07:01:42', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/brand-icons.woff2', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (911, '2021-10-27 07:01:43', '0:0:0:0:0:0:0:1', '/customer', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (912, '2021-10-27 07:01:43', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.css', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (913, '2021-10-27 07:01:43', '0:0:0:0:0:0:0:1', '/css/style.css', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (914, '2021-10-27 07:01:43', '0:0:0:0:0:0:0:1', '/css/all.min.css', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (915, '2021-10-27 07:01:43', '0:0:0:0:0:0:0:1', '/js/jquery-3.1.1.js', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (916, '2021-10-27 07:01:43', '0:0:0:0:0:0:0:1', '/js/jquery.min.js', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (917, '2021-10-27 07:01:43', '0:0:0:0:0:0:0:1', '/css/ckeditor.css', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (918, '2021-10-27 07:01:43', '0:0:0:0:0:0:0:1', '/js/script.js', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (919, '2021-10-27 07:01:43', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.js', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (920, '2021-10-27 07:01:43', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/icons.woff2', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (921, '2021-10-27 07:01:43', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/outline-icons.woff2', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (922, '2021-10-27 07:01:43', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/brand-icons.woff2', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (923, '2021-10-27 07:01:45', '0:0:0:0:0:0:0:1', '/announce', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (924, '2021-10-27 07:01:45', '0:0:0:0:0:0:0:1', '/js/jquery-3.1.1.js', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (925, '2021-10-27 07:01:45', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.css', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (926, '2021-10-27 07:01:45', '0:0:0:0:0:0:0:1', '/sitejs/announce.js', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (927, '2021-10-27 07:01:45', '0:0:0:0:0:0:0:1', '/css/style.css', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (928, '2021-10-27 07:01:45', '0:0:0:0:0:0:0:1', '/css/all.min.css', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (929, '2021-10-27 07:01:45', '0:0:0:0:0:0:0:1', '/css/ckeditor.css', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (930, '2021-10-27 07:01:45', '0:0:0:0:0:0:0:1', '/js/script.js', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (931, '2021-10-27 07:01:45', '0:0:0:0:0:0:0:1', '/js/jquery.min.js', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (932, '2021-10-27 07:01:45', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.js', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (933, '2021-10-27 07:01:45', '0:0:0:0:0:0:0:1', '/announce/listed', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (934, '2021-10-27 07:01:45', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/brand-icons.woff2', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (935, '2021-10-27 07:01:45', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/outline-icons.woff2', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (936, '2021-10-27 07:01:45', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/icons.woff2', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (937, '2021-10-27 07:01:47', '0:0:0:0:0:0:0:1', '/category', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (938, '2021-10-27 07:01:47', '0:0:0:0:0:0:0:1', '/js/jquery-3.1.1.js', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (939, '2021-10-27 07:01:47', '0:0:0:0:0:0:0:1', '/sitejs/category.js', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (940, '2021-10-27 07:01:47', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.css', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (941, '2021-10-27 07:01:47', '0:0:0:0:0:0:0:1', '/css/style.css', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (942, '2021-10-27 07:01:47', '0:0:0:0:0:0:0:1', '/css/all.min.css', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (943, '2021-10-27 07:01:47', '0:0:0:0:0:0:0:1', '/css/ckeditor.css', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (944, '2021-10-27 07:01:47', '0:0:0:0:0:0:0:1', '/js/script.js', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (945, '2021-10-27 07:01:47', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.js', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (946, '2021-10-27 07:01:47', '0:0:0:0:0:0:0:1', '/js/jquery.min.js', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (947, '2021-10-27 07:01:47', '0:0:0:0:0:0:0:1', '/category/subCat', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (948, '2021-10-27 07:01:47', '0:0:0:0:0:0:0:1', '/category/listCat', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (949, '2021-10-27 07:01:47', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/brand-icons.woff2', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (950, '2021-10-27 07:01:47', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/outline-icons.woff2', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (951, '2021-10-27 07:01:47', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/icons.woff2', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (952, '2021-10-27 07:01:49', '0:0:0:0:0:0:0:1', '/news', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (953, '2021-10-27 07:01:49', '0:0:0:0:0:0:0:1', '/js/jquery-3.1.1.js', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (954, '2021-10-27 07:01:49', '0:0:0:0:0:0:0:1', '/css/ckeditor.css', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (955, '2021-10-27 07:01:49', '0:0:0:0:0:0:0:1', '/css/style.css', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (956, '2021-10-27 07:01:49', '0:0:0:0:0:0:0:1', '/css/all.min.css', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (957, '2021-10-27 07:01:49', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.css', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (958, '2021-10-27 07:01:49', '0:0:0:0:0:0:0:1', '/js/jquery.min.js', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (959, '2021-10-27 07:01:49', '0:0:0:0:0:0:0:1', '/js/script.js', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (960, '2021-10-27 07:01:49', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.js', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (961, '2021-10-27 07:01:50', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/icons.woff2', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (962, '2021-10-27 07:01:50', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/outline-icons.woff2', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (963, '2021-10-27 07:01:50', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/brand-icons.woff2', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (964, '2021-10-27 07:01:52', '0:0:0:0:0:0:0:1', '/survey', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (965, '2021-10-27 07:01:52', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.css', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (966, '2021-10-27 07:01:52', '0:0:0:0:0:0:0:1', '/css/style.css', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (967, '2021-10-27 07:01:52', '0:0:0:0:0:0:0:1', '/css/ckeditor.css', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (968, '2021-10-27 07:01:52', '0:0:0:0:0:0:0:1', '/js/jquery-3.1.1.js', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (969, '2021-10-27 07:01:52', '0:0:0:0:0:0:0:1', '/sitejs/survey.js', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (970, '2021-10-27 07:01:52', '0:0:0:0:0:0:0:1', '/css/all.min.css', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (971, '2021-10-27 07:01:52', '0:0:0:0:0:0:0:1', '/js/jquery.min.js', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (972, '2021-10-27 07:01:52', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.js', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (973, '2021-10-27 07:01:52', '0:0:0:0:0:0:0:1', '/js/script.js', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (974, '2021-10-27 07:01:52', '0:0:0:0:0:0:0:1', '/survey/pagination/0/10', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (975, '2021-10-27 07:01:52', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/outline-icons.woff2', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (976, '2021-10-27 07:01:52', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/brand-icons.woff2', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (977, '2021-10-27 07:01:52', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/icons.woff2', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (978, '2021-10-27 07:01:53', '0:0:0:0:0:0:0:1', '/announce', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (979, '2021-10-27 07:01:53', '0:0:0:0:0:0:0:1', '/css/style.css', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (980, '2021-10-27 07:01:53', '0:0:0:0:0:0:0:1', '/js/jquery-3.1.1.js', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (981, '2021-10-27 07:01:53', '0:0:0:0:0:0:0:1', '/css/ckeditor.css', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (982, '2021-10-27 07:01:53', '0:0:0:0:0:0:0:1', '/sitejs/announce.js', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (983, '2021-10-27 07:01:53', '0:0:0:0:0:0:0:1', '/css/all.min.css', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (984, '2021-10-27 07:01:53', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.css', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (985, '2021-10-27 07:01:53', '0:0:0:0:0:0:0:1', '/js/jquery.min.js', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (986, '2021-10-27 07:01:53', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.js', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (987, '2021-10-27 07:01:53', '0:0:0:0:0:0:0:1', '/js/script.js', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (988, '2021-10-27 07:01:53', '0:0:0:0:0:0:0:1', '/announce/listed', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (989, '2021-10-27 07:01:53', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/brand-icons.woff2', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (990, '2021-10-27 07:01:53', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/outline-icons.woff2', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (991, '2021-10-27 07:01:53', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/icons.woff2', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (992, '2021-10-27 07:01:56', '0:0:0:0:0:0:0:1', '/announce', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (993, '2021-10-27 07:01:56', '0:0:0:0:0:0:0:1', '/js/jquery-3.1.1.js', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (994, '2021-10-27 07:01:56', '0:0:0:0:0:0:0:1', '/css/all.min.css', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (995, '2021-10-27 07:01:56', '0:0:0:0:0:0:0:1', '/css/style.css', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (996, '2021-10-27 07:01:56', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.css', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (997, '2021-10-27 07:01:56', '0:0:0:0:0:0:0:1', '/css/ckeditor.css', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (998, '2021-10-27 07:01:56', '0:0:0:0:0:0:0:1', '/sitejs/announce.js', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (999, '2021-10-27 07:01:56', '0:0:0:0:0:0:0:1', '/js/script.js', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1000, '2021-10-27 07:01:56', '0:0:0:0:0:0:0:1', '/js/jquery.min.js', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1001, '2021-10-27 07:01:56', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.js', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1002, '2021-10-27 07:01:57', '0:0:0:0:0:0:0:1', '/announce/listed', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1003, '2021-10-27 07:01:57', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/icons.woff2', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1004, '2021-10-27 07:01:57', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/brand-icons.woff2', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1005, '2021-10-27 07:01:57', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/outline-icons.woff2', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1006, '2021-10-27 07:01:58', '0:0:0:0:0:0:0:1', '/orders', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1007, '2021-10-27 07:01:58', '0:0:0:0:0:0:0:1', '/js/jquery-3.1.1.js', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1008, '2021-10-27 07:01:58', '0:0:0:0:0:0:0:1', '/css/style.css', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1009, '2021-10-27 07:01:58', '0:0:0:0:0:0:0:1', '/css/ckeditor.css', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1010, '2021-10-27 07:01:58', '0:0:0:0:0:0:0:1', '/js/jquery.min.js', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1011, '2021-10-27 07:01:58', '0:0:0:0:0:0:0:1', '/css/all.min.css', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1012, '2021-10-27 07:01:58', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.css', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1013, '2021-10-27 07:01:58', '0:0:0:0:0:0:0:1', '/js/script.js', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1014, '2021-10-27 07:01:58', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.js', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1015, '2021-10-27 07:01:58', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/brand-icons.woff2', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1016, '2021-10-27 07:01:58', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/icons.woff2', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1017, '2021-10-27 07:01:58', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/outline-icons.woff2', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1018, '2021-10-27 07:01:59', '0:0:0:0:0:0:0:1', '/content', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1019, '2021-10-27 07:01:59', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.css', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1020, '2021-10-27 07:01:59', '0:0:0:0:0:0:0:1', '/css/ckeditor.css', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1021, '2021-10-27 07:01:59', '0:0:0:0:0:0:0:1', '/css/style.css', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1022, '2021-10-27 07:01:59', '0:0:0:0:0:0:0:1', '/js/jquery-3.1.1.js', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1023, '2021-10-27 07:01:59', '0:0:0:0:0:0:0:1', '/js/jquery.min.js', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1024, '2021-10-27 07:01:59', '0:0:0:0:0:0:0:1', '/css/all.min.css', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1025, '2021-10-27 07:01:59', '0:0:0:0:0:0:0:1', '/js/script.js', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1026, '2021-10-27 07:01:59', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.js', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1027, '2021-10-27 07:02:00', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/icons.woff2', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1028, '2021-10-27 07:02:00', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/outline-icons.woff2', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1029, '2021-10-27 07:02:00', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/brand-icons.woff2', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1030, '2021-10-27 07:02:03', '0:0:0:0:0:0:0:1', '/survey', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1031, '2021-10-27 07:02:03', '0:0:0:0:0:0:0:1', '/js/jquery-3.1.1.js', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1032, '2021-10-27 07:02:03', '0:0:0:0:0:0:0:1', '/css/all.min.css', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1033, '2021-10-27 07:02:03', '0:0:0:0:0:0:0:1', '/css/style.css', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1034, '2021-10-27 07:02:03', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.css', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1035, '2021-10-27 07:02:03', '0:0:0:0:0:0:0:1', '/css/ckeditor.css', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1036, '2021-10-27 07:02:03', '0:0:0:0:0:0:0:1', '/sitejs/survey.js', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1037, '2021-10-27 07:02:03', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.js', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1038, '2021-10-27 07:02:03', '0:0:0:0:0:0:0:1', '/js/script.js', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1039, '2021-10-27 07:02:03', '0:0:0:0:0:0:0:1', '/js/jquery.min.js', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1040, '2021-10-27 07:02:03', '0:0:0:0:0:0:0:1', '/survey/pagination/0/10', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1041, '2021-10-27 07:02:03', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/icons.woff2', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1042, '2021-10-27 07:02:03', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/outline-icons.woff2', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1043, '2021-10-27 07:02:03', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/brand-icons.woff2', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1044, '2021-10-27 07:02:06', '0:0:0:0:0:0:0:1', '/announce', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1045, '2021-10-27 07:02:06', '0:0:0:0:0:0:0:1', '/js/jquery-3.1.1.js', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1046, '2021-10-27 07:02:06', '0:0:0:0:0:0:0:1', '/css/all.min.css', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1047, '2021-10-27 07:02:06', '0:0:0:0:0:0:0:1', '/css/style.css', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1048, '2021-10-27 07:02:06', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.css', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1049, '2021-10-27 07:02:06', '0:0:0:0:0:0:0:1', '/css/ckeditor.css', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1050, '2021-10-27 07:02:06', '0:0:0:0:0:0:0:1', '/sitejs/announce.js', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1051, '2021-10-27 07:02:06', '0:0:0:0:0:0:0:1', '/js/script.js', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1052, '2021-10-27 07:02:06', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.js', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1053, '2021-10-27 07:02:06', '0:0:0:0:0:0:0:1', '/js/jquery.min.js', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1054, '2021-10-27 07:02:07', '0:0:0:0:0:0:0:1', '/announce/listed', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1055, '2021-10-27 07:02:07', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/brand-icons.woff2', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1056, '2021-10-27 07:02:07', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/icons.woff2', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1057, '2021-10-27 07:02:07', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/outline-icons.woff2', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1058, '2021-10-27 07:02:09', '0:0:0:0:0:0:0:1', '/survey', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1059, '2021-10-27 07:02:09', '0:0:0:0:0:0:0:1', '/css/all.min.css', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1060, '2021-10-27 07:02:09', '0:0:0:0:0:0:0:1', '/js/jquery-3.1.1.js', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1061, '2021-10-27 07:02:09', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.css', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1062, '2021-10-27 07:02:09', '0:0:0:0:0:0:0:1', '/sitejs/survey.js', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1063, '2021-10-27 07:02:09', '0:0:0:0:0:0:0:1', '/css/ckeditor.css', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1064, '2021-10-27 07:02:09', '0:0:0:0:0:0:0:1', '/css/style.css', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1065, '2021-10-27 07:02:09', '0:0:0:0:0:0:0:1', '/js/jquery.min.js', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1066, '2021-10-27 07:02:09', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.js', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1067, '2021-10-27 07:02:09', '0:0:0:0:0:0:0:1', '/js/script.js', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1068, '2021-10-27 07:02:10', '0:0:0:0:0:0:0:1', '/survey/pagination/0/10', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1069, '2021-10-27 07:02:10', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/brand-icons.woff2', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1070, '2021-10-27 07:02:10', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/outline-icons.woff2', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1071, '2021-10-27 07:02:10', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/icons.woff2', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1072, '2021-10-27 07:02:15', '0:0:0:0:0:0:0:1', '/survey/add', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1073, '2021-10-27 07:02:15', '0:0:0:0:0:0:0:1', '/survey', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1074, '2021-10-27 07:02:16', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.css', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1075, '2021-10-27 07:02:16', '0:0:0:0:0:0:0:1', '/js/jquery-3.1.1.js', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1076, '2021-10-27 07:02:16', '0:0:0:0:0:0:0:1', '/css/style.css', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1077, '2021-10-27 07:02:16', '0:0:0:0:0:0:0:1', '/sitejs/survey.js', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1078, '2021-10-27 07:02:16', '0:0:0:0:0:0:0:1', '/css/ckeditor.css', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1079, '2021-10-27 07:02:16', '0:0:0:0:0:0:0:1', '/css/all.min.css', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1080, '2021-10-27 07:02:16', '0:0:0:0:0:0:0:1', '/js/script.js', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1081, '2021-10-27 07:02:16', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.js', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1082, '2021-10-27 07:02:16', '0:0:0:0:0:0:0:1', '/js/jquery.min.js', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1083, '2021-10-27 07:02:16', '0:0:0:0:0:0:0:1', '/survey/pagination/0/10', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1084, '2021-10-27 07:02:16', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/brand-icons.woff2', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1085, '2021-10-27 07:02:16', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/icons.woff2', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1086, '2021-10-27 07:02:16', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/outline-icons.woff2', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1087, '2021-10-27 07:02:25', '0:0:0:0:0:0:0:1', '/survey/optionadd', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1088, '2021-10-27 07:02:26', '0:0:0:0:0:0:0:1', '/survey', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1089, '2021-10-27 07:02:26', '0:0:0:0:0:0:0:1', '/css/style.css', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1090, '2021-10-27 07:02:26', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.css', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1091, '2021-10-27 07:02:26', '0:0:0:0:0:0:0:1', '/js/jquery-3.1.1.js', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1092, '2021-10-27 07:02:26', '0:0:0:0:0:0:0:1', '/css/all.min.css', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1093, '2021-10-27 07:02:26', '0:0:0:0:0:0:0:1', '/css/ckeditor.css', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1094, '2021-10-27 07:02:26', '0:0:0:0:0:0:0:1', '/sitejs/survey.js', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1095, '2021-10-27 07:02:26', '0:0:0:0:0:0:0:1', '/js/jquery.min.js', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1096, '2021-10-27 07:02:26', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.js', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1097, '2021-10-27 07:02:26', '0:0:0:0:0:0:0:1', '/js/script.js', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1098, '2021-10-27 07:02:26', '0:0:0:0:0:0:0:1', '/survey/pagination/0/10', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1099, '2021-10-27 07:02:26', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/icons.woff2', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1100, '2021-10-27 07:02:26', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/brand-icons.woff2', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1101, '2021-10-27 07:02:26', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/outline-icons.woff2', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1102, '2021-10-27 07:02:27', '0:0:0:0:0:0:0:1', '/survey/vote/1', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1103, '2021-10-27 07:02:34', '0:0:0:0:0:0:0:1', '/survey/pagination/1/10', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1104, '2021-10-27 07:02:35', '0:0:0:0:0:0:0:1', '/survey/pagination/2/10', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1105, '2021-10-27 07:02:35', '0:0:0:0:0:0:0:1', '/survey/pagination/0/10', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1106, '2021-10-27 07:03:13', '0:0:0:0:0:0:0:1', '/productManager', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1107, '2021-10-27 07:03:13', '0:0:0:0:0:0:0:1', '/js/jquery-3.1.1.js', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1108, '2021-10-27 07:03:13', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.css', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1109, '2021-10-27 07:03:13', '0:0:0:0:0:0:0:1', '/css/style.css', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1110, '2021-10-27 07:03:13', '0:0:0:0:0:0:0:1', '/css/all.min.css', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1111, '2021-10-27 07:03:13', '0:0:0:0:0:0:0:1', '/css/ckeditor.css', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1112, '2021-10-27 07:03:13', '0:0:0:0:0:0:0:1', '/sitejs/productManagement.js', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1113, '2021-10-27 07:03:13', '0:0:0:0:0:0:0:1', '/js/jquery.min.js', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1114, '2021-10-27 07:03:13', '0:0:0:0:0:0:0:1', '/js/script.js', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1115, '2021-10-27 07:03:13', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.js', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1116, '2021-10-27 07:03:14', '0:0:0:0:0:0:0:1', '/productManager/listed', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1117, '2021-10-27 07:03:14', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/brand-icons.woff2', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1118, '2021-10-27 07:03:14', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/outline-icons.woff2', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1119, '2021-10-27 07:03:14', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/icons.woff2', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1120, '2021-10-27 07:03:22', '0:0:0:0:0:0:0:1', '/announce', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1121, '2021-10-27 07:03:22', '0:0:0:0:0:0:0:1', '/css/all.min.css', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1122, '2021-10-27 07:03:22', '0:0:0:0:0:0:0:1', '/js/jquery-3.1.1.js', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1123, '2021-10-27 07:03:22', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.css', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1124, '2021-10-27 07:03:22', '0:0:0:0:0:0:0:1', '/sitejs/announce.js', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1125, '2021-10-27 07:03:22', '0:0:0:0:0:0:0:1', '/css/style.css', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1126, '2021-10-27 07:03:22', '0:0:0:0:0:0:0:1', '/css/ckeditor.css', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1127, '2021-10-27 07:03:22', '0:0:0:0:0:0:0:1', '/js/script.js', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1128, '2021-10-27 07:03:22', '0:0:0:0:0:0:0:1', '/js/jquery.min.js', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1129, '2021-10-27 07:03:22', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.js', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1130, '2021-10-27 07:03:22', '0:0:0:0:0:0:0:1', '/announce/listed', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1131, '2021-10-27 07:03:22', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/icons.woff2', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1132, '2021-10-27 07:03:22', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/brand-icons.woff2', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1133, '2021-10-27 07:03:22', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/outline-icons.woff2', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1134, '2021-10-27 07:03:24', '0:0:0:0:0:0:0:1', '/survey', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1135, '2021-10-27 07:03:24', '0:0:0:0:0:0:0:1', '/js/jquery-3.1.1.js', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1136, '2021-10-27 07:03:24', '0:0:0:0:0:0:0:1', '/css/style.css', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1137, '2021-10-27 07:03:24', '0:0:0:0:0:0:0:1', '/css/ckeditor.css', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1138, '2021-10-27 07:03:24', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.css', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1139, '2021-10-27 07:03:24', '0:0:0:0:0:0:0:1', '/sitejs/survey.js', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1140, '2021-10-27 07:03:24', '0:0:0:0:0:0:0:1', '/css/all.min.css', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1141, '2021-10-27 07:03:24', '0:0:0:0:0:0:0:1', '/js/script.js', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1142, '2021-10-27 07:03:24', '0:0:0:0:0:0:0:1', '/js/jquery.min.js', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1143, '2021-10-27 07:03:24', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.js', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1144, '2021-10-27 07:03:24', '0:0:0:0:0:0:0:1', '/survey/pagination/0/10', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1145, '2021-10-27 07:03:24', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/icons.woff2', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1146, '2021-10-27 07:03:24', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/outline-icons.woff2', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1147, '2021-10-27 07:03:24', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/brand-icons.woff2', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1148, '2021-10-27 07:03:29', '0:0:0:0:0:0:0:1', '/category', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1149, '2021-10-27 07:03:29', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.css', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1150, '2021-10-27 07:03:29', '0:0:0:0:0:0:0:1', '/css/style.css', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1151, '2021-10-27 07:03:29', '0:0:0:0:0:0:0:1', '/js/jquery-3.1.1.js', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1152, '2021-10-27 07:03:29', '0:0:0:0:0:0:0:1', '/sitejs/category.js', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1153, '2021-10-27 07:03:29', '0:0:0:0:0:0:0:1', '/css/ckeditor.css', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1154, '2021-10-27 07:03:29', '0:0:0:0:0:0:0:1', '/css/all.min.css', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1155, '2021-10-27 07:03:29', '0:0:0:0:0:0:0:1', '/js/jquery.min.js', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1156, '2021-10-27 07:03:29', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.js', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1157, '2021-10-27 07:03:29', '0:0:0:0:0:0:0:1', '/js/script.js', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1158, '2021-10-27 07:03:30', '0:0:0:0:0:0:0:1', '/category/listCat', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1159, '2021-10-27 07:03:30', '0:0:0:0:0:0:0:1', '/category/subCat', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1160, '2021-10-27 07:03:30', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/outline-icons.woff2', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1161, '2021-10-27 07:03:30', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/icons.woff2', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1162, '2021-10-27 07:03:30', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/brand-icons.woff2', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1163, '2021-10-27 07:03:31', '0:0:0:0:0:0:0:1', '/announce', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1164, '2021-10-27 07:03:32', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.css', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1165, '2021-10-27 07:03:32', '0:0:0:0:0:0:0:1', '/css/ckeditor.css', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1166, '2021-10-27 07:03:32', '0:0:0:0:0:0:0:1', '/css/style.css', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1167, '2021-10-27 07:03:32', '0:0:0:0:0:0:0:1', '/css/all.min.css', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1168, '2021-10-27 07:03:32', '0:0:0:0:0:0:0:1', '/js/jquery-3.1.1.js', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1169, '2021-10-27 07:03:32', '0:0:0:0:0:0:0:1', '/sitejs/announce.js', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1170, '2021-10-27 07:03:32', '0:0:0:0:0:0:0:1', '/js/jquery.min.js', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1171, '2021-10-27 07:03:32', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.js', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1172, '2021-10-27 07:03:32', '0:0:0:0:0:0:0:1', '/js/script.js', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1173, '2021-10-27 07:03:32', '0:0:0:0:0:0:0:1', '/announce/listed', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1174, '2021-10-27 07:03:32', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/icons.woff2', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1175, '2021-10-27 07:03:32', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/brand-icons.woff2', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1176, '2021-10-27 07:03:32', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/outline-icons.woff2', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1177, '2021-10-27 07:03:33', '0:0:0:0:0:0:0:1', '/gallery', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1178, '2021-10-27 07:03:33', '0:0:0:0:0:0:0:1', '/css/ckeditor.css', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1179, '2021-10-27 07:03:33', '0:0:0:0:0:0:0:1', '/css/style.css', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1180, '2021-10-27 07:03:33', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.css', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1181, '2021-10-27 07:03:33', '0:0:0:0:0:0:0:1', '/sitejs/gallery.js', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1182, '2021-10-27 07:03:33', '0:0:0:0:0:0:0:1', '/js/jquery-3.1.1.js', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1183, '2021-10-27 07:03:33', '0:0:0:0:0:0:0:1', '/css/all.min.css', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1184, '2021-10-27 07:03:33', '0:0:0:0:0:0:0:1', '/js/script.js', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1185, '2021-10-27 07:03:33', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.js', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1186, '2021-10-27 07:03:33', '0:0:0:0:0:0:0:1', '/js/jquery.min.js', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1187, '2021-10-27 07:03:33', '0:0:0:0:0:0:0:1', '/gallery/listed', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1188, '2021-10-27 07:03:33', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/icons.woff2', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1189, '2021-10-27 07:03:33', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/brand-icons.woff2', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1190, '2021-10-27 07:03:33', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/outline-icons.woff2', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1191, '2021-10-27 07:03:35', '0:0:0:0:0:0:0:1', '/content', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1192, '2021-10-27 07:03:35', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.css', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1193, '2021-10-27 07:03:35', '0:0:0:0:0:0:0:1', '/js/jquery-3.1.1.js', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1194, '2021-10-27 07:03:35', '0:0:0:0:0:0:0:1', '/css/style.css', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1195, '2021-10-27 07:03:35', '0:0:0:0:0:0:0:1', '/css/ckeditor.css', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1196, '2021-10-27 07:03:35', '0:0:0:0:0:0:0:1', '/css/all.min.css', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1197, '2021-10-27 07:03:35', '0:0:0:0:0:0:0:1', '/js/jquery.min.js', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1198, '2021-10-27 07:03:35', '0:0:0:0:0:0:0:1', '/js/script.js', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1199, '2021-10-27 07:03:35', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.js', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1200, '2021-10-27 07:03:36', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/outline-icons.woff2', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1201, '2021-10-27 07:03:36', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/icons.woff2', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1202, '2021-10-27 07:03:36', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/brand-icons.woff2', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1203, '2021-10-27 07:03:39', '0:0:0:0:0:0:0:1', '/advertisement', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1204, '2021-10-27 07:03:39', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.css', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1205, '2021-10-27 07:03:40', '0:0:0:0:0:0:0:1', '/css/ckeditor.css', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1206, '2021-10-27 07:03:39', '0:0:0:0:0:0:0:1', '/css/all.min.css', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1207, '2021-10-27 07:03:39', '0:0:0:0:0:0:0:1', '/js/jquery-3.1.1.js', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1208, '2021-10-27 07:03:40', '0:0:0:0:0:0:0:1', '/css/style.css', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1209, '2021-10-27 07:03:40', '0:0:0:0:0:0:0:1', '/sitejs/advertisement.js', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1210, '2021-10-27 07:03:40', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.js', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1211, '2021-10-27 07:03:40', '0:0:0:0:0:0:0:1', '/js/script.js', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1212, '2021-10-27 07:03:40', '0:0:0:0:0:0:0:1', '/js/jquery.min.js', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1213, '2021-10-27 07:03:40', '0:0:0:0:0:0:0:1', '/advertisement/pagination/0/10', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1214, '2021-10-27 07:03:40', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/brand-icons.woff2', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1215, '2021-10-27 07:03:40', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/icons.woff2', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1216, '2021-10-27 07:03:40', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/outline-icons.woff2', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1217, '2021-10-27 07:03:41', '0:0:0:0:0:0:0:1', '/productManager', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1218, '2021-10-27 07:03:41', '0:0:0:0:0:0:0:1', '/css/all.min.css', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1219, '2021-10-27 07:03:41', '0:0:0:0:0:0:0:1', '/css/ckeditor.css', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1220, '2021-10-27 07:03:41', '0:0:0:0:0:0:0:1', '/js/jquery-3.1.1.js', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1221, '2021-10-27 07:03:41', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.css', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1222, '2021-10-27 07:03:41', '0:0:0:0:0:0:0:1', '/css/style.css', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1223, '2021-10-27 07:03:41', '0:0:0:0:0:0:0:1', '/sitejs/productManagement.js', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1224, '2021-10-27 07:03:41', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.js', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1225, '2021-10-27 07:03:41', '0:0:0:0:0:0:0:1', '/js/jquery.min.js', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1226, '2021-10-27 07:03:41', '0:0:0:0:0:0:0:1', '/js/script.js', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1227, '2021-10-27 07:03:41', '0:0:0:0:0:0:0:1', '/productManager/listed', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1228, '2021-10-27 07:03:41', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/icons.woff2', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1229, '2021-10-27 07:03:41', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/brand-icons.woff2', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1230, '2021-10-27 07:03:41', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/outline-icons.woff2', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1231, '2021-10-27 07:03:43', '0:0:0:0:0:0:0:1', '/product', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1232, '2021-10-27 07:03:43', '0:0:0:0:0:0:0:1', '/css/all.min.css', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1233, '2021-10-27 07:03:43', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.css', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1234, '2021-10-27 07:03:43', '0:0:0:0:0:0:0:1', '/js/jquery-3.1.1.js', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1235, '2021-10-27 07:03:43', '0:0:0:0:0:0:0:1', '/css/style.css', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1236, '2021-10-27 07:03:43', '0:0:0:0:0:0:0:1', '/js/jquery.min.js', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1237, '2021-10-27 07:03:43', '0:0:0:0:0:0:0:1', '/css/ckeditor.css', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1238, '2021-10-27 07:03:43', '0:0:0:0:0:0:0:1', '/js/script.js', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1239, '2021-10-27 07:03:43', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.js', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1240, '2021-10-27 07:03:43', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/brand-icons.woff2', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1241, '2021-10-27 07:03:43', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/icons.woff2', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1242, '2021-10-27 07:03:43', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/outline-icons.woff2', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1243, '2021-10-27 07:03:45', '0:0:0:0:0:0:0:1', '/customer', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1244, '2021-10-27 07:03:45', '0:0:0:0:0:0:0:1', '/js/jquery-3.1.1.js', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1245, '2021-10-27 07:03:45', '0:0:0:0:0:0:0:1', '/css/style.css', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1246, '2021-10-27 07:03:45', '0:0:0:0:0:0:0:1', '/css/all.min.css', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1247, '2021-10-27 07:03:45', '0:0:0:0:0:0:0:1', '/css/ckeditor.css', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1248, '2021-10-27 07:03:45', '0:0:0:0:0:0:0:1', '/js/jquery.min.js', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1249, '2021-10-27 07:03:45', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.css', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1250, '2021-10-27 07:03:45', '0:0:0:0:0:0:0:1', '/js/script.js', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1251, '2021-10-27 07:03:45', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.js', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1252, '2021-10-27 07:03:46', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/brand-icons.woff2', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1253, '2021-10-27 07:03:46', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/outline-icons.woff2', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1254, '2021-10-27 07:03:46', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/icons.woff2', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1255, '2021-10-27 07:03:52', '0:0:0:0:0:0:0:1', '/main', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1256, '2021-10-27 07:03:52', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.css', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1257, '2021-10-27 07:03:52', '0:0:0:0:0:0:0:1', '/js/jquery-3.1.1.js', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1258, '2021-10-27 07:03:52', '0:0:0:0:0:0:0:1', '/js/jquery.min.js', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1259, '2021-10-27 07:03:52', '0:0:0:0:0:0:0:1', '/css/ckeditor.css', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1260, '2021-10-27 07:03:52', '0:0:0:0:0:0:0:1', '/css/all.min.css', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1261, '2021-10-27 07:03:52', '0:0:0:0:0:0:0:1', '/css/style.css', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1262, '2021-10-27 07:03:52', '0:0:0:0:0:0:0:1', '/js/script.js', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1263, '2021-10-27 07:03:52', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.js', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1264, '2021-10-27 07:03:52', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/brand-icons.woff2', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1265, '2021-10-27 07:03:52', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/outline-icons.woff2', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1266, '2021-10-27 07:03:52', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/icons.woff2', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1267, '2021-10-27 07:04:03', '0:0:0:0:0:0:0:1', '/customer', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1268, '2021-10-27 07:04:04', '0:0:0:0:0:0:0:1', '/js/jquery-3.1.1.js', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1269, '2021-10-27 07:04:04', '0:0:0:0:0:0:0:1', '/css/style.css', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1270, '2021-10-27 07:04:04', '0:0:0:0:0:0:0:1', '/css/all.min.css', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1271, '2021-10-27 07:04:04', '0:0:0:0:0:0:0:1', '/js/jquery.min.js', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1272, '2021-10-27 07:04:04', '0:0:0:0:0:0:0:1', '/css/ckeditor.css', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1273, '2021-10-27 07:04:04', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.css', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1274, '2021-10-27 07:04:04', '0:0:0:0:0:0:0:1', '/js/script.js', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1275, '2021-10-27 07:04:04', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.js', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1276, '2021-10-27 07:04:04', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/icons.woff2', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1277, '2021-10-27 07:04:04', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/brand-icons.woff2', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1278, '2021-10-27 07:04:04', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/outline-icons.woff2', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1279, '2021-10-27 07:04:06', '0:0:0:0:0:0:0:1', '/main', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1280, '2021-10-27 07:04:06', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.css', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1281, '2021-10-27 07:04:06', '0:0:0:0:0:0:0:1', '/css/ckeditor.css', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1282, '2021-10-27 07:04:06', '0:0:0:0:0:0:0:1', '/css/style.css', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1283, '2021-10-27 07:04:06', '0:0:0:0:0:0:0:1', '/js/jquery-3.1.1.js', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1284, '2021-10-27 07:04:06', '0:0:0:0:0:0:0:1', '/js/jquery.min.js', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1285, '2021-10-27 07:04:06', '0:0:0:0:0:0:0:1', '/css/all.min.css', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1286, '2021-10-27 07:04:06', '0:0:0:0:0:0:0:1', '/js/script.js', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1287, '2021-10-27 07:04:06', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.js', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1288, '2021-10-27 07:04:10', '0:0:0:0:0:0:0:1', '/orders', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1289, '2021-10-27 07:04:10', '0:0:0:0:0:0:0:1', '/css/style.css', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1290, '2021-10-27 07:04:10', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.css', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1291, '2021-10-27 07:04:10', '0:0:0:0:0:0:0:1', '/js/jquery-3.1.1.js', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1292, '2021-10-27 07:04:10', '0:0:0:0:0:0:0:1', '/css/ckeditor.css', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1293, '2021-10-27 07:04:10', '0:0:0:0:0:0:0:1', '/css/all.min.css', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1294, '2021-10-27 07:04:10', '0:0:0:0:0:0:0:1', '/js/jquery.min.js', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1295, '2021-10-27 07:04:10', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.js', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1296, '2021-10-27 07:04:10', '0:0:0:0:0:0:0:1', '/js/script.js', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1297, '2021-10-27 07:04:10', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/icons.woff2', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1298, '2021-10-27 07:04:10', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/brand-icons.woff2', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1299, '2021-10-27 07:04:10', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/outline-icons.woff2', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1300, '2021-10-27 07:04:11', '0:0:0:0:0:0:0:1', '/main', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1301, '2021-10-27 07:04:11', '0:0:0:0:0:0:0:1', '/js/jquery-3.1.1.js', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1302, '2021-10-27 07:04:11', '0:0:0:0:0:0:0:1', '/css/style.css', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1303, '2021-10-27 07:04:11', '0:0:0:0:0:0:0:1', '/css/ckeditor.css', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1304, '2021-10-27 07:04:11', '0:0:0:0:0:0:0:1', '/js/jquery.min.js', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1305, '2021-10-27 07:04:11', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.css', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1306, '2021-10-27 07:04:11', '0:0:0:0:0:0:0:1', '/css/all.min.css', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1307, '2021-10-27 07:04:11', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.js', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1308, '2021-10-27 07:04:11', '0:0:0:0:0:0:0:1', '/js/script.js', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1309, '2021-10-27 07:04:18', '0:0:0:0:0:0:0:1', '/product', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1310, '2021-10-27 07:04:18', '0:0:0:0:0:0:0:1', '/js/jquery-3.1.1.js', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1311, '2021-10-27 07:04:18', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.css', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1312, '2021-10-27 07:04:18', '0:0:0:0:0:0:0:1', '/css/style.css', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1313, '2021-10-27 07:04:18', '0:0:0:0:0:0:0:1', '/js/jquery.min.js', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1314, '2021-10-27 07:04:18', '0:0:0:0:0:0:0:1', '/css/all.min.css', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1315, '2021-10-27 07:04:18', '0:0:0:0:0:0:0:1', '/css/ckeditor.css', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1316, '2021-10-27 07:04:18', '0:0:0:0:0:0:0:1', '/js/script.js', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1317, '2021-10-27 07:04:18', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.js', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1318, '2021-10-27 07:04:18', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/icons.woff2', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1319, '2021-10-27 07:04:18', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/outline-icons.woff2', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1320, '2021-10-27 07:04:18', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/brand-icons.woff2', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1321, '2021-10-27 07:04:20', '0:0:0:0:0:0:0:1', '/main', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1322, '2021-10-27 07:04:20', '0:0:0:0:0:0:0:1', '/css/ckeditor.css', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1323, '2021-10-27 07:04:20', '0:0:0:0:0:0:0:1', '/js/jquery-3.1.1.js', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1324, '2021-10-27 07:04:20', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.css', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1325, '2021-10-27 07:04:20', '0:0:0:0:0:0:0:1', '/css/all.min.css', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1326, '2021-10-27 07:04:20', '0:0:0:0:0:0:0:1', '/js/jquery.min.js', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1327, '2021-10-27 07:04:20', '0:0:0:0:0:0:0:1', '/css/style.css', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1328, '2021-10-27 07:04:20', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.js', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1329, '2021-10-27 07:04:20', '0:0:0:0:0:0:0:1', '/js/script.js', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1330, '2021-10-27 07:04:22', '0:0:0:0:0:0:0:1', '/product', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1331, '2021-10-27 07:04:23', '0:0:0:0:0:0:0:1', '/css/all.min.css', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1332, '2021-10-27 07:04:23', '0:0:0:0:0:0:0:1', '/js/jquery-3.1.1.js', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1333, '2021-10-27 07:04:23', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.css', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1334, '2021-10-27 07:04:23', '0:0:0:0:0:0:0:1', '/css/style.css', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1335, '2021-10-27 07:04:23', '0:0:0:0:0:0:0:1', '/js/jquery.min.js', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1336, '2021-10-27 07:04:23', '0:0:0:0:0:0:0:1', '/css/ckeditor.css', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1337, '2021-10-27 07:04:23', '0:0:0:0:0:0:0:1', '/js/script.js', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1338, '2021-10-27 07:04:23', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.js', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1339, '2021-10-27 07:04:23', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/brand-icons.woff2', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1340, '2021-10-27 07:04:23', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/outline-icons.woff2', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1341, '2021-10-27 07:04:23', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/icons.woff2', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1342, '2021-10-27 07:04:25', '0:0:0:0:0:0:0:1', '/main', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1343, '2021-10-27 07:04:25', '0:0:0:0:0:0:0:1', '/css/style.css', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1344, '2021-10-27 07:04:25', '0:0:0:0:0:0:0:1', '/css/all.min.css', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1345, '2021-10-27 07:04:25', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.css', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1346, '2021-10-27 07:04:25', '0:0:0:0:0:0:0:1', '/js/jquery-3.1.1.js', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1347, '2021-10-27 07:04:25', '0:0:0:0:0:0:0:1', '/js/jquery.min.js', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1348, '2021-10-27 07:04:25', '0:0:0:0:0:0:0:1', '/css/ckeditor.css', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1349, '2021-10-27 07:04:25', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.js', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1350, '2021-10-27 07:04:25', '0:0:0:0:0:0:0:1', '/js/script.js', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1351, '2021-10-27 07:04:34', '0:0:0:0:0:0:0:1', '/announce', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1352, '2021-10-27 07:04:34', '0:0:0:0:0:0:0:1', '/css/style.css', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1353, '2021-10-27 07:04:34', '0:0:0:0:0:0:0:1', '/js/jquery-3.1.1.js', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1354, '2021-10-27 07:04:34', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.css', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1355, '2021-10-27 07:04:34', '0:0:0:0:0:0:0:1', '/css/all.min.css', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1356, '2021-10-27 07:04:34', '0:0:0:0:0:0:0:1', '/sitejs/announce.js', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1357, '2021-10-27 07:04:34', '0:0:0:0:0:0:0:1', '/css/ckeditor.css', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1358, '2021-10-27 07:04:34', '0:0:0:0:0:0:0:1', '/js/jquery.min.js', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1359, '2021-10-27 07:04:34', '0:0:0:0:0:0:0:1', '/js/script.js', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1360, '2021-10-27 07:04:34', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.js', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1361, '2021-10-27 07:04:35', '0:0:0:0:0:0:0:1', '/announce/listed', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1362, '2021-10-27 07:04:35', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/brand-icons.woff2', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1363, '2021-10-27 07:04:35', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/icons.woff2', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1364, '2021-10-27 07:04:35', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/outline-icons.woff2', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1365, '2021-10-27 07:04:37', '0:0:0:0:0:0:0:1', '/main', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1366, '2021-10-27 07:04:37', '0:0:0:0:0:0:0:1', '/js/jquery-3.1.1.js', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1367, '2021-10-27 07:04:37', '0:0:0:0:0:0:0:1', '/css/style.css', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1368, '2021-10-27 07:04:37', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.css', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1369, '2021-10-27 07:04:37', '0:0:0:0:0:0:0:1', '/js/jquery.min.js', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1370, '2021-10-27 07:04:37', '0:0:0:0:0:0:0:1', '/css/ckeditor.css', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1371, '2021-10-27 07:04:37', '0:0:0:0:0:0:0:1', '/css/all.min.css', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1372, '2021-10-27 07:04:37', '0:0:0:0:0:0:0:1', '/js/script.js', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1373, '2021-10-27 07:04:37', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.js', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1374, '2021-10-27 07:07:51', '0:0:0:0:0:0:0:1', '/main', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1375, '2021-10-27 07:07:51', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.css', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1376, '2021-10-27 07:07:51', '0:0:0:0:0:0:0:1', '/css/style.css', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1377, '2021-10-27 07:07:51', '0:0:0:0:0:0:0:1', '/css/all.min.css', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1378, '2021-10-27 07:07:51', '0:0:0:0:0:0:0:1', '/js/jquery-3.1.1.js', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1379, '2021-10-27 07:07:51', '0:0:0:0:0:0:0:1', '/css/ckeditor.css', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1380, '2021-10-27 07:07:51', '0:0:0:0:0:0:0:1', '/js/jquery.min.js', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1381, '2021-10-27 07:07:51', '0:0:0:0:0:0:0:1', '/js/script.js', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1382, '2021-10-27 07:07:51', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.js', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1383, '2021-10-27 07:07:52', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/outline-icons.woff2', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1384, '2021-10-27 07:07:52', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/brand-icons.woff2', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1385, '2021-10-27 07:07:52', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/icons.woff2', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1386, '2021-10-27 07:08:29', '0:0:0:0:0:0:0:1', '/main', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1387, '2021-10-27 07:08:29', '0:0:0:0:0:0:0:1', '/js/jquery-3.1.1.js', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1388, '2021-10-27 07:08:29', '0:0:0:0:0:0:0:1', '/css/style.css', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1389, '2021-10-27 07:08:29', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.css', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1390, '2021-10-27 07:08:29', '0:0:0:0:0:0:0:1', '/css/all.min.css', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1391, '2021-10-27 07:08:29', '0:0:0:0:0:0:0:1', '/css/ckeditor.css', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1392, '2021-10-27 07:08:29', '0:0:0:0:0:0:0:1', '/js/jquery.min.js', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1393, '2021-10-27 07:08:29', '0:0:0:0:0:0:0:1', '/js/script.js', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1394, '2021-10-27 07:08:29', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.js', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1395, '2021-10-27 07:08:29', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/outline-icons.woff2', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1396, '2021-10-27 07:08:29', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/icons.woff2', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1397, '2021-10-27 07:08:29', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/brand-icons.woff2', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1398, '2021-10-27 07:08:31', '0:0:0:0:0:0:0:1', '/customer', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1399, '2021-10-27 07:08:31', '0:0:0:0:0:0:0:1', '/js/jquery.min.js', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1400, '2021-10-27 07:08:31', '0:0:0:0:0:0:0:1', '/css/style.css', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1401, '2021-10-27 07:08:31', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.css', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1402, '2021-10-27 07:08:31', '0:0:0:0:0:0:0:1', '/js/jquery-3.1.1.js', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1403, '2021-10-27 07:08:31', '0:0:0:0:0:0:0:1', '/css/ckeditor.css', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1404, '2021-10-27 07:08:31', '0:0:0:0:0:0:0:1', '/css/all.min.css', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1405, '2021-10-27 07:08:31', '0:0:0:0:0:0:0:1', '/js/script.js', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1406, '2021-10-27 07:08:31', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.js', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1407, '2021-10-27 07:08:31', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/brand-icons.woff2', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1408, '2021-10-27 07:08:31', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/icons.woff2', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1409, '2021-10-27 07:08:31', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/outline-icons.woff2', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1410, '2021-10-27 07:08:32', '0:0:0:0:0:0:0:1', '/customerAdd', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1411, '2021-10-27 07:08:47', '0:0:0:0:0:0:0:1', '/customerAdd', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1412, '2021-10-27 07:08:48', '0:0:0:0:0:0:0:1', '/customer', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1413, '2021-10-27 07:08:49', '0:0:0:0:0:0:0:1', '/css/style.css', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1414, '2021-10-27 07:08:49', '0:0:0:0:0:0:0:1', '/js/jquery-3.1.1.js', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1415, '2021-10-27 07:08:49', '0:0:0:0:0:0:0:1', '/js/jquery.min.js', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1416, '2021-10-27 07:08:49', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.css', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1417, '2021-10-27 07:08:49', '0:0:0:0:0:0:0:1', '/css/ckeditor.css', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1418, '2021-10-27 07:08:49', '0:0:0:0:0:0:0:1', '/css/all.min.css', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1419, '2021-10-27 07:08:49', '0:0:0:0:0:0:0:1', '/js/script.js', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1420, '2021-10-27 07:08:49', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.js', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1421, '2021-10-27 07:08:49', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/outline-icons.woff2', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1422, '2021-10-27 07:08:49', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/icons.woff2', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1423, '2021-10-27 07:08:49', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/brand-icons.woff2', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1424, '2021-10-27 07:08:54', '0:0:0:0:0:0:0:1', '/customerAdd', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1425, '2021-10-27 07:09:05', '0:0:0:0:0:0:0:1', '/customer', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1426, '2021-10-27 07:09:05', '0:0:0:0:0:0:0:1', '/css/style.css', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1427, '2021-10-27 07:09:05', '0:0:0:0:0:0:0:1', '/js/jquery.min.js', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1428, '2021-10-27 07:09:05', '0:0:0:0:0:0:0:1', '/js/jquery-3.1.1.js', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1429, '2021-10-27 07:09:05', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.css', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1430, '2021-10-27 07:09:05', '0:0:0:0:0:0:0:1', '/css/all.min.css', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1431, '2021-10-27 07:09:05', '0:0:0:0:0:0:0:1', '/css/ckeditor.css', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1432, '2021-10-27 07:09:05', '0:0:0:0:0:0:0:1', '/js/script.js', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1433, '2021-10-27 07:09:05', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.js', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1434, '2021-10-27 07:09:06', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/icons.woff2', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1435, '2021-10-27 07:09:06', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/outline-icons.woff2', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1436, '2021-10-27 07:09:06', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/brand-icons.woff2', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1437, '2021-10-27 07:09:08', '0:0:0:0:0:0:0:1', '/main', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1438, '2021-10-27 07:09:08', '0:0:0:0:0:0:0:1', '/css/ckeditor.css', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1439, '2021-10-27 07:09:08', '0:0:0:0:0:0:0:1', '/css/style.css', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1440, '2021-10-27 07:09:08', '0:0:0:0:0:0:0:1', '/css/all.min.css', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1441, '2021-10-27 07:09:08', '0:0:0:0:0:0:0:1', '/js/jquery-3.1.1.js', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1442, '2021-10-27 07:09:08', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.css', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1443, '2021-10-27 07:09:08', '0:0:0:0:0:0:0:1', '/js/jquery.min.js', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1444, '2021-10-27 07:09:08', '0:0:0:0:0:0:0:1', '/js/script.js', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1445, '2021-10-27 07:09:08', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.js', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1446, '2021-10-27 07:09:09', '0:0:0:0:0:0:0:1', '/customer', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1447, '2021-10-27 07:09:10', '0:0:0:0:0:0:0:1', '/js/jquery-3.1.1.js', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1448, '2021-10-27 07:09:10', '0:0:0:0:0:0:0:1', '/css/style.css', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1449, '2021-10-27 07:09:10', '0:0:0:0:0:0:0:1', '/css/all.min.css', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1450, '2021-10-27 07:09:10', '0:0:0:0:0:0:0:1', '/css/ckeditor.css', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1451, '2021-10-27 07:09:10', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.css', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1452, '2021-10-27 07:09:10', '0:0:0:0:0:0:0:1', '/js/jquery.min.js', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1453, '2021-10-27 07:09:10', '0:0:0:0:0:0:0:1', '/js/script.js', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1454, '2021-10-27 07:09:10', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.js', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1455, '2021-10-27 07:09:12', '0:0:0:0:0:0:0:1', '/customerAdd', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1456, '2021-10-27 07:10:53', '0:0:0:0:0:0:0:1', '/customer', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1457, '2021-10-27 07:10:56', '0:0:0:0:0:0:0:1', '/customer', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1458, '2021-10-27 07:11:38', '0:0:0:0:0:0:0:1', '/customer', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1459, '2021-10-27 07:11:39', '0:0:0:0:0:0:0:1', '/main', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1460, '2021-10-27 07:11:39', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.css', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1461, '2021-10-27 07:11:39', '0:0:0:0:0:0:0:1', '/css/style.css', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1462, '2021-10-27 07:11:39', '0:0:0:0:0:0:0:1', '/js/jquery-3.1.1.js', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1463, '2021-10-27 07:11:39', '0:0:0:0:0:0:0:1', '/css/all.min.css', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1464, '2021-10-27 07:11:39', '0:0:0:0:0:0:0:1', '/js/jquery.min.js', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1465, '2021-10-27 07:11:39', '0:0:0:0:0:0:0:1', '/css/ckeditor.css', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1466, '2021-10-27 07:11:39', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.js', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1467, '2021-10-27 07:11:39', '0:0:0:0:0:0:0:1', '/js/script.js', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1468, '2021-10-27 07:11:39', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/icons.woff2', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1469, '2021-10-27 07:11:39', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/outline-icons.woff2', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1470, '2021-10-27 07:11:39', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/brand-icons.woff2', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1471, '2021-10-27 07:11:41', '0:0:0:0:0:0:0:1', '/customer', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1472, '2021-10-27 07:12:41', '0:0:0:0:0:0:0:1', '/customer', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1473, '2021-10-27 07:13:18', '0:0:0:0:0:0:0:1', '/customer', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1474, '2021-10-27 07:14:28', '0:0:0:0:0:0:0:1', '/customer', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1475, '2021-10-27 07:16:30', '127.0.0.1', '/customer', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1476, '2021-10-27 07:16:32', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.css', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1477, '2021-10-27 07:16:32', '0:0:0:0:0:0:0:1', '/css/all.min.css', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1478, '2021-10-27 07:16:32', '0:0:0:0:0:0:0:1', '/css/ckeditor.css', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1479, '2021-10-27 07:16:32', '0:0:0:0:0:0:0:1', '/js/jquery.min.js', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1480, '2021-10-27 07:16:32', '0:0:0:0:0:0:0:1', '/css/style.css', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1481, '2021-10-27 07:16:32', '127.0.0.1', '/js/jquery-3.1.1.js', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1482, '2021-10-27 07:16:32', '0:0:0:0:0:0:0:1', '/js/script.js', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1483, '2021-10-27 07:16:32', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.js', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1484, '2021-10-27 07:16:33', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/brand-icons.woff2', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1485, '2021-10-27 07:16:33', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/outline-icons.woff2', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1486, '2021-10-27 07:16:33', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/icons.woff2', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1487, '2021-10-27 07:19:57', '0:0:0:0:0:0:0:1', '/customerAdd', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1488, '2021-10-27 07:20:34', '0:0:0:0:0:0:0:1', '/customerAdd', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1489, '2021-10-27 07:20:45', '0:0:0:0:0:0:0:1', '/customerAdd', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1490, '2021-10-27 07:20:45', '0:0:0:0:0:0:0:1', '/js/jquery-3.1.1.js', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1491, '2021-10-27 07:20:45', '0:0:0:0:0:0:0:1', '/css/ckeditor.css', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1492, '2021-10-27 07:20:45', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.css', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1493, '2021-10-27 07:20:45', '0:0:0:0:0:0:0:1', '/css/all.min.css', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1494, '2021-10-27 07:20:45', '0:0:0:0:0:0:0:1', '/css/style.css', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1495, '2021-10-27 07:20:45', '0:0:0:0:0:0:0:1', '/js/jquery.min.js', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1496, '2021-10-27 07:20:45', '0:0:0:0:0:0:0:1', '/js/script.js', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1497, '2021-10-27 07:20:45', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.js', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1498, '2021-10-27 07:20:46', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/icons.woff2', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1499, '2021-10-27 07:20:46', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/brand-icons.woff2', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1500, '2021-10-27 07:20:46', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/outline-icons.woff2', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1501, '2021-10-27 07:20:47', '0:0:0:0:0:0:0:1', '/favicon.ico', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1502, '2021-10-27 07:21:11', '0:0:0:0:0:0:0:1', '/customerAdd', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1503, '2021-10-27 07:21:11', '0:0:0:0:0:0:0:1', '/css/style.css', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1504, '2021-10-27 07:21:11', '0:0:0:0:0:0:0:1', '/js/jquery-3.1.1.js', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1505, '2021-10-27 07:21:11', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.css', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1506, '2021-10-27 07:21:11', '0:0:0:0:0:0:0:1', '/css/ckeditor.css', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1507, '2021-10-27 07:21:11', '0:0:0:0:0:0:0:1', '/css/all.min.css', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1508, '2021-10-27 07:21:11', '0:0:0:0:0:0:0:1', '/js/jquery.min.js', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1509, '2021-10-27 07:21:11', '0:0:0:0:0:0:0:1', '/js/script.js', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1510, '2021-10-27 07:21:11', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.js', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1511, '2021-10-27 07:21:11', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/outline-icons.woff2', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1512, '2021-10-27 07:21:11', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/icons.woff2', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1513, '2021-10-27 07:21:11', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/brand-icons.woff2', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1514, '2021-10-27 07:22:09', '0:0:0:0:0:0:0:1', '/customerAdd/address/add', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1515, '2021-10-27 07:22:09', '0:0:0:0:0:0:0:1', '/customerAdd', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1516, '2021-10-27 07:22:09', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.css', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1517, '2021-10-27 07:22:09', '0:0:0:0:0:0:0:1', '/js/jquery.min.js', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1518, '2021-10-27 07:22:09', '0:0:0:0:0:0:0:1', '/css/ckeditor.css', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1519, '2021-10-27 07:22:09', '0:0:0:0:0:0:0:1', '/js/jquery-3.1.1.js', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1520, '2021-10-27 07:22:09', '0:0:0:0:0:0:0:1', '/css/all.min.css', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1521, '2021-10-27 07:22:09', '0:0:0:0:0:0:0:1', '/css/style.css', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1522, '2021-10-27 07:22:09', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.js', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1523, '2021-10-27 07:22:09', '0:0:0:0:0:0:0:1', '/js/script.js', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1524, '2021-10-27 07:22:09', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/outline-icons.woff2', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1525, '2021-10-27 07:22:09', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/icons.woff2', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1526, '2021-10-27 07:22:09', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/brand-icons.woff2', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1527, '2021-10-27 07:24:08', '0:0:0:0:0:0:0:1', '/customerAdd/add', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1528, '2021-10-27 07:24:09', '0:0:0:0:0:0:0:1', '/customerAdd', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1529, '2021-10-27 07:24:10', '0:0:0:0:0:0:0:1', '/css/style.css', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1530, '2021-10-27 07:24:10', '0:0:0:0:0:0:0:1', '/css/all.min.css', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1531, '2021-10-27 07:24:10', '0:0:0:0:0:0:0:1', '/js/jquery-3.1.1.js', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1532, '2021-10-27 07:24:10', '0:0:0:0:0:0:0:1', '/css/ckeditor.css', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1533, '2021-10-27 07:24:10', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.css', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1534, '2021-10-27 07:24:10', '0:0:0:0:0:0:0:1', '/js/jquery.min.js', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1535, '2021-10-27 07:24:10', '0:0:0:0:0:0:0:1', '/js/script.js', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1536, '2021-10-27 07:24:10', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.js', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1537, '2021-10-27 07:24:10', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/brand-icons.woff2', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1538, '2021-10-27 07:24:10', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/icons.woff2', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1539, '2021-10-27 07:24:10', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/outline-icons.woff2', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1540, '2021-10-27 07:24:14', '0:0:0:0:0:0:0:1', '/customerAdd', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1541, '2021-10-27 07:24:14', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.css', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1542, '2021-10-27 07:24:14', '0:0:0:0:0:0:0:1', '/js/jquery-3.1.1.js', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1543, '2021-10-27 07:24:14', '0:0:0:0:0:0:0:1', '/css/style.css', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1544, '2021-10-27 07:24:14', '0:0:0:0:0:0:0:1', '/js/jquery.min.js', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1545, '2021-10-27 07:24:14', '0:0:0:0:0:0:0:1', '/css/ckeditor.css', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1546, '2021-10-27 07:24:14', '0:0:0:0:0:0:0:1', '/css/all.min.css', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1547, '2021-10-27 07:24:14', '0:0:0:0:0:0:0:1', '/js/script.js', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1548, '2021-10-27 07:24:14', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.js', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1549, '2021-10-27 07:24:14', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/brand-icons.woff2', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1550, '2021-10-27 07:24:14', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/icons.woff2', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1551, '2021-10-27 07:24:14', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/outline-icons.woff2', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1552, '2021-10-27 07:32:27', '0:0:0:0:0:0:0:1', '/customerAdd/add', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1553, '2021-10-27 07:32:27', '0:0:0:0:0:0:0:1', '/customerAdd', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1554, '2021-10-27 07:32:27', '0:0:0:0:0:0:0:1', '/js/jquery-3.1.1.js', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1555, '2021-10-27 07:32:27', '0:0:0:0:0:0:0:1', '/css/ckeditor.css', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1556, '2021-10-27 07:32:27', '0:0:0:0:0:0:0:1', '/css/style.css', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1557, '2021-10-27 07:32:28', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.css', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1558, '2021-10-27 07:32:28', '0:0:0:0:0:0:0:1', '/css/all.min.css', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1559, '2021-10-27 07:32:28', '0:0:0:0:0:0:0:1', '/js/jquery.min.js', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1560, '2021-10-27 07:32:28', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.js', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1561, '2021-10-27 07:32:28', '0:0:0:0:0:0:0:1', '/js/script.js', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1562, '2021-10-27 07:32:28', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/outline-icons.woff2', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1563, '2021-10-27 07:32:28', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/brand-icons.woff2', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1564, '2021-10-27 07:32:28', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/icons.woff2', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1565, '2021-10-27 07:33:25', '0:0:0:0:0:0:0:1', '/announce', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1566, '2021-10-27 07:33:25', '0:0:0:0:0:0:0:1', '/css/style.css', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1567, '2021-10-27 07:33:25', '0:0:0:0:0:0:0:1', '/js/jquery-3.1.1.js', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1568, '2021-10-27 07:33:25', '0:0:0:0:0:0:0:1', '/css/all.min.css', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1569, '2021-10-27 07:33:25', '0:0:0:0:0:0:0:1', '/sitejs/announce.js', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1570, '2021-10-27 07:33:25', '0:0:0:0:0:0:0:1', '/css/ckeditor.css', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1571, '2021-10-27 07:33:25', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.css', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1572, '2021-10-27 07:33:25', '0:0:0:0:0:0:0:1', '/js/jquery.min.js', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1573, '2021-10-27 07:33:25', '0:0:0:0:0:0:0:1', '/js/script.js', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1574, '2021-10-27 07:33:25', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.js', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1575, '2021-10-27 07:33:25', '0:0:0:0:0:0:0:1', '/announce/listed', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1576, '2021-10-27 07:33:25', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/icons.woff2', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1577, '2021-10-27 07:33:25', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/brand-icons.woff2', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1578, '2021-10-27 07:33:25', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/outline-icons.woff2', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1579, '2021-10-27 07:33:28', '0:0:0:0:0:0:0:1', '/orders', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1580, '2021-10-27 07:33:28', '0:0:0:0:0:0:0:1', '/js/jquery-3.1.1.js', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1581, '2021-10-27 07:33:28', '0:0:0:0:0:0:0:1', '/css/style.css', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1582, '2021-10-27 07:33:28', '0:0:0:0:0:0:0:1', '/css/all.min.css', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1583, '2021-10-27 07:33:28', '0:0:0:0:0:0:0:1', '/js/jquery.min.js', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1584, '2021-10-27 07:33:28', '0:0:0:0:0:0:0:1', '/css/ckeditor.css', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1585, '2021-10-27 07:33:28', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.css', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1586, '2021-10-27 07:33:28', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.js', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1587, '2021-10-27 07:33:28', '0:0:0:0:0:0:0:1', '/js/script.js', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1588, '2021-10-27 07:33:28', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/brand-icons.woff2', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1589, '2021-10-27 07:33:28', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/outline-icons.woff2', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1590, '2021-10-27 07:33:28', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/icons.woff2', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1591, '2021-10-27 07:33:30', '0:0:0:0:0:0:0:1', '/announce', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1592, '2021-10-27 07:33:30', '0:0:0:0:0:0:0:1', '/css/ckeditor.css', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1593, '2021-10-27 07:33:30', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.css', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1594, '2021-10-27 07:33:30', '0:0:0:0:0:0:0:1', '/js/jquery-3.1.1.js', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1595, '2021-10-27 07:33:30', '0:0:0:0:0:0:0:1', '/css/all.min.css', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1596, '2021-10-27 07:33:30', '0:0:0:0:0:0:0:1', '/css/style.css', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1597, '2021-10-27 07:33:30', '0:0:0:0:0:0:0:1', '/sitejs/announce.js', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1598, '2021-10-27 07:33:30', '0:0:0:0:0:0:0:1', '/js/jquery.min.js', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1599, '2021-10-27 07:33:30', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.js', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1600, '2021-10-27 07:33:30', '0:0:0:0:0:0:0:1', '/js/script.js', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1601, '2021-10-27 07:33:31', '0:0:0:0:0:0:0:1', '/announce/listed', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1602, '2021-10-27 07:33:31', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/brand-icons.woff2', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1603, '2021-10-27 07:33:31', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/icons.woff2', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1604, '2021-10-27 07:33:31', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/outline-icons.woff2', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1605, '2021-10-27 07:33:48', '0:0:0:0:0:0:0:1', '/announce/add', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1606, '2021-10-27 07:33:48', '0:0:0:0:0:0:0:1', '/announce', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1607, '2021-10-27 07:33:48', '0:0:0:0:0:0:0:1', '/css/style.css', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1608, '2021-10-27 07:33:48', '0:0:0:0:0:0:0:1', '/js/jquery-3.1.1.js', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1609, '2021-10-27 07:33:48', '0:0:0:0:0:0:0:1', '/css/ckeditor.css', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1610, '2021-10-27 07:33:48', '0:0:0:0:0:0:0:1', '/css/all.min.css', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1611, '2021-10-27 07:33:48', '0:0:0:0:0:0:0:1', '/sitejs/announce.js', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1612, '2021-10-27 07:33:48', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.css', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1613, '2021-10-27 07:33:48', '0:0:0:0:0:0:0:1', '/js/jquery.min.js', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1614, '2021-10-27 07:33:48', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.js', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1615, '2021-10-27 07:33:48', '0:0:0:0:0:0:0:1', '/js/script.js', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1616, '2021-10-27 07:33:49', '0:0:0:0:0:0:0:1', '/announce/listed', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1617, '2021-10-27 07:33:49', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/outline-icons.woff2', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1618, '2021-10-27 07:33:49', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/brand-icons.woff2', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1619, '2021-10-27 07:33:49', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/icons.woff2', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1620, '2021-10-27 07:33:54', '0:0:0:0:0:0:0:1', '/announce/pagelisted/1/10', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1621, '2021-10-27 07:33:57', '0:0:0:0:0:0:0:1', '/announce/pagelisted/2/10', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1622, '2021-10-27 07:33:57', '0:0:0:0:0:0:0:1', '/announce/pagelisted/1/10', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1623, '2021-10-27 07:33:57', '0:0:0:0:0:0:0:1', '/announce/pagelisted/0/10', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1624, '2021-10-27 07:33:59', '0:0:0:0:0:0:0:1', '/announce', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1625, '2021-10-27 07:33:59', '0:0:0:0:0:0:0:1', '/js/jquery-3.1.1.js', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1626, '2021-10-27 07:33:59', '0:0:0:0:0:0:0:1', '/css/all.min.css', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1627, '2021-10-27 07:33:59', '0:0:0:0:0:0:0:1', '/css/style.css', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1628, '2021-10-27 07:33:59', '0:0:0:0:0:0:0:1', '/sitejs/announce.js', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1629, '2021-10-27 07:33:59', '0:0:0:0:0:0:0:1', '/css/ckeditor.css', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1630, '2021-10-27 07:33:59', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.css', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1631, '2021-10-27 07:33:59', '0:0:0:0:0:0:0:1', '/js/script.js', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1632, '2021-10-27 07:33:59', '0:0:0:0:0:0:0:1', '/js/jquery.min.js', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1633, '2021-10-27 07:33:59', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.js', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1634, '2021-10-27 07:33:59', '0:0:0:0:0:0:0:1', '/announce/listed', 'appmain@mail.com', 'appmain', 'ROLE_MVC', '38E4AF7FA0BE3F41ECFEB5572197219D', 'appmain');
INSERT INTO `logger` VALUES (1635, '2021-10-27 07:34:16', '0:0:0:0:0:0:0:1', '/login', 'anonymousUser', NULL, NULL, 'C402166E0974454319062A5C1CBE912D', NULL);
INSERT INTO `logger` VALUES (1636, '2021-10-27 07:34:16', '0:0:0:0:0:0:0:1', '/js/jquery.min.js', 'anonymousUser', NULL, NULL, 'C402166E0974454319062A5C1CBE912D', NULL);
INSERT INTO `logger` VALUES (1637, '2021-10-27 07:34:16', '0:0:0:0:0:0:0:1', '/css/all.min.css', 'anonymousUser', NULL, NULL, 'C402166E0974454319062A5C1CBE912D', NULL);
INSERT INTO `logger` VALUES (1638, '2021-10-27 07:34:16', '0:0:0:0:0:0:0:1', '/js/jquery-3.1.1.js', 'anonymousUser', NULL, NULL, 'C402166E0974454319062A5C1CBE912D', NULL);
INSERT INTO `logger` VALUES (1639, '2021-10-27 07:34:16', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.css', 'anonymousUser', NULL, NULL, 'C402166E0974454319062A5C1CBE912D', NULL);
INSERT INTO `logger` VALUES (1640, '2021-10-27 07:34:16', '0:0:0:0:0:0:0:1', '/css/ckeditor.css', 'anonymousUser', NULL, NULL, 'C402166E0974454319062A5C1CBE912D', NULL);
INSERT INTO `logger` VALUES (1641, '2021-10-27 07:34:16', '0:0:0:0:0:0:0:1', '/css/style.css', 'anonymousUser', NULL, NULL, 'C402166E0974454319062A5C1CBE912D', NULL);
INSERT INTO `logger` VALUES (1642, '2021-10-27 07:34:16', '0:0:0:0:0:0:0:1', '/js/script.js', 'anonymousUser', NULL, NULL, 'C402166E0974454319062A5C1CBE912D', NULL);
INSERT INTO `logger` VALUES (1643, '2021-10-27 07:34:16', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.js', 'anonymousUser', NULL, NULL, 'C402166E0974454319062A5C1CBE912D', NULL);
INSERT INTO `logger` VALUES (1644, '2021-10-27 07:34:17', '0:0:0:0:0:0:0:1', '/login', 'anonymousUser', NULL, NULL, '64AEE9C06046FFDA63F98C3D6B6D803A', NULL);
INSERT INTO `logger` VALUES (1645, '2021-10-27 07:34:17', '0:0:0:0:0:0:0:1', '/css/style.css', 'anonymousUser', NULL, NULL, '64AEE9C06046FFDA63F98C3D6B6D803A', NULL);
INSERT INTO `logger` VALUES (1646, '2021-10-27 07:34:17', '0:0:0:0:0:0:0:1', '/css/all.min.css', 'anonymousUser', NULL, NULL, '64AEE9C06046FFDA63F98C3D6B6D803A', NULL);
INSERT INTO `logger` VALUES (1647, '2021-10-27 07:34:17', '0:0:0:0:0:0:0:1', '/js/jquery-3.1.1.js', 'anonymousUser', NULL, NULL, '64AEE9C06046FFDA63F98C3D6B6D803A', NULL);
INSERT INTO `logger` VALUES (1648, '2021-10-27 07:34:17', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.css', 'anonymousUser', NULL, NULL, '64AEE9C06046FFDA63F98C3D6B6D803A', NULL);
INSERT INTO `logger` VALUES (1649, '2021-10-27 07:34:17', '0:0:0:0:0:0:0:1', '/js/jquery.min.js', 'anonymousUser', NULL, NULL, '64AEE9C06046FFDA63F98C3D6B6D803A', NULL);
INSERT INTO `logger` VALUES (1650, '2021-10-27 07:34:17', '0:0:0:0:0:0:0:1', '/css/ckeditor.css', 'anonymousUser', NULL, NULL, '64AEE9C06046FFDA63F98C3D6B6D803A', NULL);
INSERT INTO `logger` VALUES (1651, '2021-10-27 07:34:17', '0:0:0:0:0:0:0:1', '/js/script.js', 'anonymousUser', NULL, NULL, '64AEE9C06046FFDA63F98C3D6B6D803A', NULL);
INSERT INTO `logger` VALUES (1652, '2021-10-27 07:34:17', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.js', 'anonymousUser', NULL, NULL, '64AEE9C06046FFDA63F98C3D6B6D803A', NULL);
INSERT INTO `logger` VALUES (1653, '2021-10-27 07:34:17', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/outline-icons.woff2', 'anonymousUser', NULL, NULL, '64AEE9C06046FFDA63F98C3D6B6D803A', NULL);
INSERT INTO `logger` VALUES (1654, '2021-10-27 07:34:17', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/brand-icons.woff2', 'anonymousUser', NULL, NULL, '64AEE9C06046FFDA63F98C3D6B6D803A', NULL);
INSERT INTO `logger` VALUES (1655, '2021-10-27 07:34:17', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/icons.woff2', 'anonymousUser', NULL, NULL, '64AEE9C06046FFDA63F98C3D6B6D803A', NULL);
INSERT INTO `logger` VALUES (1656, '2021-10-27 07:34:22', '0:0:0:0:0:0:0:1', '/announce', 'alper@mail.com', 'alper', 'ROLE_MVC', '1676EAAF7DB60F33B1F43072387981F6', 'yilmaz');
INSERT INTO `logger` VALUES (1657, '2021-10-27 07:34:23', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.css', 'alper@mail.com', 'alper', 'ROLE_MVC', '1676EAAF7DB60F33B1F43072387981F6', 'yilmaz');
INSERT INTO `logger` VALUES (1658, '2021-10-27 07:34:23', '0:0:0:0:0:0:0:1', '/css/all.min.css', 'alper@mail.com', 'alper', 'ROLE_MVC', '1676EAAF7DB60F33B1F43072387981F6', 'yilmaz');
INSERT INTO `logger` VALUES (1659, '2021-10-27 07:34:23', '0:0:0:0:0:0:0:1', '/css/style.css', 'alper@mail.com', 'alper', 'ROLE_MVC', '1676EAAF7DB60F33B1F43072387981F6', 'yilmaz');
INSERT INTO `logger` VALUES (1660, '2021-10-27 07:34:23', '0:0:0:0:0:0:0:1', '/css/ckeditor.css', 'alper@mail.com', 'alper', 'ROLE_MVC', '1676EAAF7DB60F33B1F43072387981F6', 'yilmaz');
INSERT INTO `logger` VALUES (1661, '2021-10-27 07:34:23', '0:0:0:0:0:0:0:1', '/js/jquery-3.1.1.js', 'alper@mail.com', 'alper', 'ROLE_MVC', '1676EAAF7DB60F33B1F43072387981F6', 'yilmaz');
INSERT INTO `logger` VALUES (1662, '2021-10-27 07:34:23', '0:0:0:0:0:0:0:1', '/sitejs/announce.js', 'alper@mail.com', 'alper', 'ROLE_MVC', '1676EAAF7DB60F33B1F43072387981F6', 'yilmaz');
INSERT INTO `logger` VALUES (1663, '2021-10-27 07:34:23', '0:0:0:0:0:0:0:1', '/js/script.js', 'alper@mail.com', 'alper', 'ROLE_MVC', '1676EAAF7DB60F33B1F43072387981F6', 'yilmaz');
INSERT INTO `logger` VALUES (1664, '2021-10-27 07:34:23', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.js', 'alper@mail.com', 'alper', 'ROLE_MVC', '1676EAAF7DB60F33B1F43072387981F6', 'yilmaz');
INSERT INTO `logger` VALUES (1665, '2021-10-27 07:34:23', '0:0:0:0:0:0:0:1', '/js/jquery.min.js', 'alper@mail.com', 'alper', 'ROLE_MVC', '1676EAAF7DB60F33B1F43072387981F6', 'yilmaz');
INSERT INTO `logger` VALUES (1666, '2021-10-27 07:34:23', '0:0:0:0:0:0:0:1', '/announce/listed', 'alper@mail.com', 'alper', 'ROLE_MVC', '1676EAAF7DB60F33B1F43072387981F6', 'yilmaz');
INSERT INTO `logger` VALUES (1667, '2021-10-27 07:34:23', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/outline-icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', '1676EAAF7DB60F33B1F43072387981F6', 'yilmaz');
INSERT INTO `logger` VALUES (1668, '2021-10-27 07:34:23', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/brand-icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', '1676EAAF7DB60F33B1F43072387981F6', 'yilmaz');
INSERT INTO `logger` VALUES (1669, '2021-10-27 07:34:23', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', '1676EAAF7DB60F33B1F43072387981F6', 'yilmaz');
INSERT INTO `logger` VALUES (1670, '2021-10-27 07:34:42', '0:0:0:0:0:0:0:1', '/announce/addAnnounce', 'alper@mail.com', 'alper', 'ROLE_MVC', '1676EAAF7DB60F33B1F43072387981F6', 'yilmaz');
INSERT INTO `logger` VALUES (1671, '2021-10-27 07:34:43', '0:0:0:0:0:0:0:1', '/announce/listed', 'alper@mail.com', 'alper', 'ROLE_MVC', '1676EAAF7DB60F33B1F43072387981F6', 'yilmaz');
INSERT INTO `logger` VALUES (1672, '2021-10-27 07:34:54', '0:0:0:0:0:0:0:1', '/announce/addAnnounce', 'alper@mail.com', 'alper', 'ROLE_MVC', '1676EAAF7DB60F33B1F43072387981F6', 'yilmaz');
INSERT INTO `logger` VALUES (1673, '2021-10-27 07:34:55', '0:0:0:0:0:0:0:1', '/announce/listed', 'alper@mail.com', 'alper', 'ROLE_MVC', '1676EAAF7DB60F33B1F43072387981F6', 'yilmaz');
INSERT INTO `logger` VALUES (1674, '2021-10-27 07:35:04', '0:0:0:0:0:0:0:1', '/announce/addAnnounce', 'alper@mail.com', 'alper', 'ROLE_MVC', '1676EAAF7DB60F33B1F43072387981F6', 'yilmaz');
INSERT INTO `logger` VALUES (1675, '2021-10-27 07:35:07', '0:0:0:0:0:0:0:1', '/announce/listed', 'alper@mail.com', 'alper', 'ROLE_MVC', '1676EAAF7DB60F33B1F43072387981F6', 'yilmaz');
INSERT INTO `logger` VALUES (1676, '2021-10-27 07:35:11', '0:0:0:0:0:0:0:1', '/announce/addAnnounce', 'alper@mail.com', 'alper', 'ROLE_MVC', '1676EAAF7DB60F33B1F43072387981F6', 'yilmaz');
INSERT INTO `logger` VALUES (1677, '2021-10-27 07:35:12', '0:0:0:0:0:0:0:1', '/announce/listed', 'alper@mail.com', 'alper', 'ROLE_MVC', '1676EAAF7DB60F33B1F43072387981F6', 'yilmaz');
INSERT INTO `logger` VALUES (1678, '2021-10-27 07:35:15', '0:0:0:0:0:0:0:1', '/announce/delete/2', 'alper@mail.com', 'alper', 'ROLE_MVC', '1676EAAF7DB60F33B1F43072387981F6', 'yilmaz');
INSERT INTO `logger` VALUES (1679, '2021-10-27 07:35:15', '0:0:0:0:0:0:0:1', '/announce/listed', 'alper@mail.com', 'alper', 'ROLE_MVC', '1676EAAF7DB60F33B1F43072387981F6', 'yilmaz');
INSERT INTO `logger` VALUES (1680, '2021-10-27 07:35:17', '0:0:0:0:0:0:0:1', '/announce/delete/1', 'alper@mail.com', 'alper', 'ROLE_MVC', '1676EAAF7DB60F33B1F43072387981F6', 'yilmaz');
INSERT INTO `logger` VALUES (1681, '2021-10-27 07:35:17', '0:0:0:0:0:0:0:1', '/announce/listed', 'alper@mail.com', 'alper', 'ROLE_MVC', '1676EAAF7DB60F33B1F43072387981F6', 'yilmaz');
INSERT INTO `logger` VALUES (1682, '2021-10-27 07:35:23', '0:0:0:0:0:0:0:1', '/announce/addAnnounce', 'alper@mail.com', 'alper', 'ROLE_MVC', '1676EAAF7DB60F33B1F43072387981F6', 'yilmaz');
INSERT INTO `logger` VALUES (1683, '2021-10-27 07:35:25', '0:0:0:0:0:0:0:1', '/announce/listed', 'alper@mail.com', 'alper', 'ROLE_MVC', '1676EAAF7DB60F33B1F43072387981F6', 'yilmaz');
INSERT INTO `logger` VALUES (1684, '2021-10-27 07:35:27', '0:0:0:0:0:0:0:1', '/announce/addAnnounce', 'alper@mail.com', 'alper', 'ROLE_MVC', '1676EAAF7DB60F33B1F43072387981F6', 'yilmaz');
INSERT INTO `logger` VALUES (1685, '2021-10-27 07:35:28', '0:0:0:0:0:0:0:1', '/announce/listed', 'alper@mail.com', 'alper', 'ROLE_MVC', '1676EAAF7DB60F33B1F43072387981F6', 'yilmaz');
INSERT INTO `logger` VALUES (1686, '2021-10-27 07:35:33', '0:0:0:0:0:0:0:1', '/announce/addAnnounce', 'alper@mail.com', 'alper', 'ROLE_MVC', '1676EAAF7DB60F33B1F43072387981F6', 'yilmaz');
INSERT INTO `logger` VALUES (1687, '2021-10-27 07:35:34', '0:0:0:0:0:0:0:1', '/announce/listed', 'alper@mail.com', 'alper', 'ROLE_MVC', '1676EAAF7DB60F33B1F43072387981F6', 'yilmaz');
INSERT INTO `logger` VALUES (1688, '2021-10-27 07:35:38', '0:0:0:0:0:0:0:1', '/announce/addAnnounce', 'alper@mail.com', 'alper', 'ROLE_MVC', '1676EAAF7DB60F33B1F43072387981F6', 'yilmaz');
INSERT INTO `logger` VALUES (1689, '2021-10-27 07:35:39', '0:0:0:0:0:0:0:1', '/announce/listed', 'alper@mail.com', 'alper', 'ROLE_MVC', '1676EAAF7DB60F33B1F43072387981F6', 'yilmaz');
INSERT INTO `logger` VALUES (1690, '2021-10-27 08:16:49', '0:0:0:0:0:0:0:1', '/login', 'anonymousUser', NULL, NULL, 'E638DA695A62D453C27317EC76AD00D7', NULL);
INSERT INTO `logger` VALUES (1691, '2021-10-27 08:16:49', '0:0:0:0:0:0:0:1', '/js/jquery-3.1.1.js', 'anonymousUser', NULL, NULL, 'E638DA695A62D453C27317EC76AD00D7', NULL);
INSERT INTO `logger` VALUES (1692, '2021-10-27 08:16:49', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.css', 'anonymousUser', NULL, NULL, 'E638DA695A62D453C27317EC76AD00D7', NULL);
INSERT INTO `logger` VALUES (1693, '2021-10-27 08:16:49', '0:0:0:0:0:0:0:1', '/css/style.css', 'anonymousUser', NULL, NULL, 'E638DA695A62D453C27317EC76AD00D7', NULL);
INSERT INTO `logger` VALUES (1694, '2021-10-27 08:16:49', '0:0:0:0:0:0:0:1', '/css/all.min.css', 'anonymousUser', NULL, NULL, 'E638DA695A62D453C27317EC76AD00D7', NULL);
INSERT INTO `logger` VALUES (1695, '2021-10-27 08:16:49', '0:0:0:0:0:0:0:1', '/css/ckeditor.css', 'anonymousUser', NULL, NULL, 'E638DA695A62D453C27317EC76AD00D7', NULL);
INSERT INTO `logger` VALUES (1696, '2021-10-27 08:16:49', '0:0:0:0:0:0:0:1', '/js/jquery.min.js', 'anonymousUser', NULL, NULL, 'E638DA695A62D453C27317EC76AD00D7', NULL);
INSERT INTO `logger` VALUES (1697, '2021-10-27 08:16:49', '0:0:0:0:0:0:0:1', '/js/script.js', 'anonymousUser', NULL, NULL, 'E638DA695A62D453C27317EC76AD00D7', NULL);
INSERT INTO `logger` VALUES (1698, '2021-10-27 08:16:49', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.js', 'anonymousUser', NULL, NULL, 'E638DA695A62D453C27317EC76AD00D7', NULL);
INSERT INTO `logger` VALUES (1699, '2021-10-27 08:16:50', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/icons.woff2', 'anonymousUser', NULL, NULL, 'E638DA695A62D453C27317EC76AD00D7', NULL);
INSERT INTO `logger` VALUES (1700, '2021-10-27 08:16:50', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/brand-icons.woff2', 'anonymousUser', NULL, NULL, 'E638DA695A62D453C27317EC76AD00D7', NULL);
INSERT INTO `logger` VALUES (1701, '2021-10-27 08:16:50', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/outline-icons.woff2', 'anonymousUser', NULL, NULL, 'E638DA695A62D453C27317EC76AD00D7', NULL);
INSERT INTO `logger` VALUES (1702, '2021-10-27 08:16:55', '0:0:0:0:0:0:0:1', '/customer', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (1703, '2021-10-27 08:16:56', '0:0:0:0:0:0:0:1', '/css/style.css', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (1704, '2021-10-27 08:16:56', '0:0:0:0:0:0:0:1', '/js/jquery-3.1.1.js', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (1705, '2021-10-27 08:16:56', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.css', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (1706, '2021-10-27 08:16:56', '0:0:0:0:0:0:0:1', '/css/ckeditor.css', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (1707, '2021-10-27 08:16:56', '0:0:0:0:0:0:0:1', '/js/jquery.min.js', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (1708, '2021-10-27 08:16:56', '0:0:0:0:0:0:0:1', '/css/all.min.css', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (1709, '2021-10-27 08:16:56', '0:0:0:0:0:0:0:1', '/js/script.js', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (1710, '2021-10-27 08:16:56', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.js', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (1711, '2021-10-27 08:16:56', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/outline-icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (1712, '2021-10-27 08:16:56', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (1713, '2021-10-27 08:16:56', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/brand-icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (1714, '2021-10-27 08:17:00', '0:0:0:0:0:0:0:1', '/customerAdd', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (1715, '2021-10-27 08:17:00', '0:0:0:0:0:0:0:1', '/css/all.min.css', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (1716, '2021-10-27 08:17:00', '0:0:0:0:0:0:0:1', '/css/ckeditor.css', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (1717, '2021-10-27 08:17:00', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.css', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (1718, '2021-10-27 08:17:00', '0:0:0:0:0:0:0:1', '/css/style.css', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (1719, '2021-10-27 08:17:00', '0:0:0:0:0:0:0:1', '/js/jquery-3.1.1.js', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (1720, '2021-10-27 08:17:00', '0:0:0:0:0:0:0:1', '/js/jquery.min.js', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (1721, '2021-10-27 08:17:00', '0:0:0:0:0:0:0:1', '/js/script.js', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (1722, '2021-10-27 08:17:00', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.js', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (1723, '2021-10-27 08:17:00', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (1724, '2021-10-27 08:17:00', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/outline-icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (1725, '2021-10-27 08:17:00', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/brand-icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (1726, '2021-10-27 08:17:10', '0:0:0:0:0:0:0:1', '/customerAdd/add', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (1727, '2021-10-27 08:17:10', '0:0:0:0:0:0:0:1', '/customerAdd', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (1728, '2021-10-27 08:17:10', '0:0:0:0:0:0:0:1', '/js/jquery-3.1.1.js', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (1729, '2021-10-27 08:17:10', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.css', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (1730, '2021-10-27 08:17:10', '0:0:0:0:0:0:0:1', '/css/style.css', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (1731, '2021-10-27 08:17:10', '0:0:0:0:0:0:0:1', '/css/ckeditor.css', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (1732, '2021-10-27 08:17:10', '0:0:0:0:0:0:0:1', '/js/jquery.min.js', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (1733, '2021-10-27 08:17:10', '0:0:0:0:0:0:0:1', '/css/all.min.css', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (1734, '2021-10-27 08:17:10', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.js', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (1735, '2021-10-27 08:17:10', '0:0:0:0:0:0:0:1', '/js/script.js', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (1736, '2021-10-27 08:17:10', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (1737, '2021-10-27 08:17:10', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/brand-icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (1738, '2021-10-27 08:17:10', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/outline-icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (1739, '2021-10-27 08:17:14', '0:0:0:0:0:0:0:1', '/customerAdd', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (1740, '2021-10-27 08:17:14', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.css', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (1741, '2021-10-27 08:17:14', '0:0:0:0:0:0:0:1', '/js/jquery-3.1.1.js', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (1742, '2021-10-27 08:17:14', '0:0:0:0:0:0:0:1', '/js/jquery.min.js', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (1743, '2021-10-27 08:17:14', '0:0:0:0:0:0:0:1', '/css/style.css', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (1744, '2021-10-27 08:17:14', '0:0:0:0:0:0:0:1', '/css/ckeditor.css', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (1745, '2021-10-27 08:17:14', '0:0:0:0:0:0:0:1', '/css/all.min.css', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (1746, '2021-10-27 08:17:15', '0:0:0:0:0:0:0:1', '/js/script.js', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (1747, '2021-10-27 08:17:15', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.js', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (1748, '2021-10-27 08:17:15', '0:0:0:0:0:0:0:1', '/customer', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (1749, '2021-10-27 08:17:16', '0:0:0:0:0:0:0:1', '/css/all.min.css', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (1750, '2021-10-27 08:17:16', '0:0:0:0:0:0:0:1', '/css/ckeditor.css', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (1751, '2021-10-27 08:17:16', '0:0:0:0:0:0:0:1', '/css/style.css', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (1752, '2021-10-27 08:17:16', '0:0:0:0:0:0:0:1', '/js/jquery-3.1.1.js', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (1753, '2021-10-27 08:17:16', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.css', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (1754, '2021-10-27 08:17:16', '0:0:0:0:0:0:0:1', '/js/jquery.min.js', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (1755, '2021-10-27 08:17:16', '0:0:0:0:0:0:0:1', '/js/script.js', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (1756, '2021-10-27 08:17:16', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.js', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (1757, '2021-10-27 08:17:18', '0:0:0:0:0:0:0:1', '/customer', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (1758, '2021-10-27 08:17:18', '0:0:0:0:0:0:0:1', '/js/jquery-3.1.1.js', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (1759, '2021-10-27 08:17:18', '0:0:0:0:0:0:0:1', '/js/jquery.min.js', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (1760, '2021-10-27 08:17:18', '0:0:0:0:0:0:0:1', '/css/all.min.css', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (1761, '2021-10-27 08:17:18', '0:0:0:0:0:0:0:1', '/css/style.css', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (1762, '2021-10-27 08:17:18', '0:0:0:0:0:0:0:1', '/css/ckeditor.css', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (1763, '2021-10-27 08:17:18', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.css', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (1764, '2021-10-27 08:17:18', '0:0:0:0:0:0:0:1', '/js/script.js', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (1765, '2021-10-27 08:17:18', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.js', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (1766, '2021-10-27 08:17:19', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/outline-icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (1767, '2021-10-27 08:17:19', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (1768, '2021-10-27 08:17:19', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/brand-icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (1769, '2021-10-27 08:17:26', '0:0:0:0:0:0:0:1', '/orders', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (1770, '2021-10-27 08:17:26', '0:0:0:0:0:0:0:1', '/css/ckeditor.css', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (1771, '2021-10-27 08:17:26', '0:0:0:0:0:0:0:1', '/css/style.css', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (1772, '2021-10-27 08:17:26', '0:0:0:0:0:0:0:1', '/js/jquery.min.js', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (1773, '2021-10-27 08:17:26', '0:0:0:0:0:0:0:1', '/js/jquery-3.1.1.js', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (1774, '2021-10-27 08:17:26', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.css', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (1775, '2021-10-27 08:17:26', '0:0:0:0:0:0:0:1', '/css/all.min.css', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (1776, '2021-10-27 08:17:26', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.js', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (1777, '2021-10-27 08:17:26', '0:0:0:0:0:0:0:1', '/js/script.js', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (1778, '2021-10-27 08:17:26', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/outline-icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (1779, '2021-10-27 08:17:26', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (1780, '2021-10-27 08:17:26', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/brand-icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (1781, '2021-10-27 08:18:05', '0:0:0:0:0:0:0:1', '/orders', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (1782, '2021-10-27 08:18:41', '0:0:0:0:0:0:0:1', '/orders', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (1783, '2021-10-27 08:18:41', '0:0:0:0:0:0:0:1', '/css/style.css', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (1784, '2021-10-27 08:18:41', '0:0:0:0:0:0:0:1', '/css/all.min.css', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (1785, '2021-10-27 08:18:41', '0:0:0:0:0:0:0:1', '/js/jquery.min.js', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (1786, '2021-10-27 08:18:41', '0:0:0:0:0:0:0:1', '/js/jquery-3.1.1.js', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (1787, '2021-10-27 08:18:41', '0:0:0:0:0:0:0:1', '/css/ckeditor.css', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (1788, '2021-10-27 08:18:41', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.css', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (1789, '2021-10-27 08:18:41', '0:0:0:0:0:0:0:1', '/js/script.js', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (1790, '2021-10-27 08:18:41', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.js', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (1791, '2021-10-27 08:18:41', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/outline-icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (1792, '2021-10-27 08:18:41', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/brand-icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (1793, '2021-10-27 08:18:41', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (1794, '2021-10-27 08:18:45', '0:0:0:0:0:0:0:1', '/orders', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (1795, '2021-10-27 08:18:46', '0:0:0:0:0:0:0:1', '/css/style.css', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (1796, '2021-10-27 08:18:46', '0:0:0:0:0:0:0:1', '/js/jquery-3.1.1.js', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (1797, '2021-10-27 08:18:46', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.css', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (1798, '2021-10-27 08:18:46', '0:0:0:0:0:0:0:1', '/js/jquery.min.js', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (1799, '2021-10-27 08:18:46', '0:0:0:0:0:0:0:1', '/css/ckeditor.css', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (1800, '2021-10-27 08:18:46', '0:0:0:0:0:0:0:1', '/css/all.min.css', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (1801, '2021-10-27 08:18:46', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.js', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (1802, '2021-10-27 08:18:46', '0:0:0:0:0:0:0:1', '/js/script.js', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (1803, '2021-10-27 08:18:46', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/outline-icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (1804, '2021-10-27 08:18:46', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/brand-icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (1805, '2021-10-27 08:18:46', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (1806, '2021-10-27 08:18:59', '0:0:0:0:0:0:0:1', '/advertisement', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (1807, '2021-10-27 08:18:59', '0:0:0:0:0:0:0:1', '/css/style.css', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (1808, '2021-10-27 08:18:59', '0:0:0:0:0:0:0:1', '/js/jquery-3.1.1.js', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (1809, '2021-10-27 08:18:59', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.css', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (1810, '2021-10-27 08:18:59', '0:0:0:0:0:0:0:1', '/sitejs/advertisement.js', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (1811, '2021-10-27 08:18:59', '0:0:0:0:0:0:0:1', '/css/ckeditor.css', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (1812, '2021-10-27 08:18:59', '0:0:0:0:0:0:0:1', '/css/all.min.css', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (1813, '2021-10-27 08:18:59', '0:0:0:0:0:0:0:1', '/js/jquery.min.js', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (1814, '2021-10-27 08:18:59', '0:0:0:0:0:0:0:1', '/js/script.js', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (1815, '2021-10-27 08:18:59', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.js', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (1816, '2021-10-27 08:18:59', '0:0:0:0:0:0:0:1', '/advertisement/pagination/0/10', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (1817, '2021-10-27 08:18:59', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (1818, '2021-10-27 08:18:59', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/outline-icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (1819, '2021-10-27 08:18:59', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/brand-icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (1820, '2021-10-27 08:19:01', '0:0:0:0:0:0:0:1', '/advertisement/pagination/1/10', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (1821, '2021-10-27 08:19:02', '0:0:0:0:0:0:0:1', '/advertisement/pagination/2/10', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (1822, '2021-10-27 08:19:02', '0:0:0:0:0:0:0:1', '/advertisement/pagination/0/10', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (1823, '2021-10-27 08:19:20', '0:0:0:0:0:0:0:1', '/advertisement/add', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (1824, '2021-10-27 08:19:58', '0:0:0:0:0:0:0:1', '/advertisement', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (1825, '2021-10-27 08:19:58', '0:0:0:0:0:0:0:1', '/js/jquery-3.1.1.js', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (1826, '2021-10-27 08:19:58', '0:0:0:0:0:0:0:1', '/css/ckeditor.css', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (1827, '2021-10-27 08:19:58', '0:0:0:0:0:0:0:1', '/css/style.css', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (1828, '2021-10-27 08:19:58', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.css', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (1829, '2021-10-27 08:19:58', '0:0:0:0:0:0:0:1', '/sitejs/advertisement.js', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (1830, '2021-10-27 08:19:58', '0:0:0:0:0:0:0:1', '/css/all.min.css', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (1831, '2021-10-27 08:19:58', '0:0:0:0:0:0:0:1', '/js/script.js', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (1832, '2021-10-27 08:19:58', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.js', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (1833, '2021-10-27 08:19:58', '0:0:0:0:0:0:0:1', '/js/jquery.min.js', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (1834, '2021-10-27 08:19:58', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/brand-icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (1835, '2021-10-27 08:19:58', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (1836, '2021-10-27 08:19:58', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/outline-icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (1837, '2021-10-27 08:19:58', '0:0:0:0:0:0:0:1', '/advertisement/pagination/0/10', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (1838, '2021-10-27 08:20:14', '0:0:0:0:0:0:0:1', '/advertisement/add', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (1839, '2021-10-27 08:20:14', '0:0:0:0:0:0:0:1', '/advertisement', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (1840, '2021-10-27 08:20:14', '0:0:0:0:0:0:0:1', '/css/style.css', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (1841, '2021-10-27 08:20:14', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.css', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (1842, '2021-10-27 08:20:14', '0:0:0:0:0:0:0:1', '/css/all.min.css', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (1843, '2021-10-27 08:20:14', '0:0:0:0:0:0:0:1', '/js/jquery-3.1.1.js', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (1844, '2021-10-27 08:20:14', '0:0:0:0:0:0:0:1', '/sitejs/advertisement.js', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (1845, '2021-10-27 08:20:14', '0:0:0:0:0:0:0:1', '/css/ckeditor.css', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (1846, '2021-10-27 08:20:14', '0:0:0:0:0:0:0:1', '/js/script.js', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (1847, '2021-10-27 08:20:14', '0:0:0:0:0:0:0:1', '/js/jquery.min.js', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (1848, '2021-10-27 08:20:14', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.js', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (1849, '2021-10-27 08:20:14', '0:0:0:0:0:0:0:1', '/advertisement/pagination/0/10', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (1850, '2021-10-27 08:20:15', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/outline-icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (1851, '2021-10-27 08:20:15', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/brand-icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (1852, '2021-10-27 08:20:15', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (1853, '2021-10-27 08:20:16', '0:0:0:0:0:0:0:1', '/advertisement/pagination/1/10', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (1854, '2021-10-27 08:20:17', '0:0:0:0:0:0:0:1', '/advertisement/pagination/0/10', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (1855, '2021-10-27 08:20:30', '0:0:0:0:0:0:0:1', '/advertisement/update', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (1856, '2021-10-27 08:20:31', '0:0:0:0:0:0:0:1', '/advertisement/pagination/0/10', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (1857, '2021-10-27 08:20:40', '0:0:0:0:0:0:0:1', '/content', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (1858, '2021-10-27 08:20:41', '0:0:0:0:0:0:0:1', '/css/style.css', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (1859, '2021-10-27 08:20:41', '0:0:0:0:0:0:0:1', '/css/all.min.css', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (1860, '2021-10-27 08:20:41', '0:0:0:0:0:0:0:1', '/js/jquery.min.js', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (1861, '2021-10-27 08:20:41', '0:0:0:0:0:0:0:1', '/js/jquery-3.1.1.js', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (1862, '2021-10-27 08:20:41', '0:0:0:0:0:0:0:1', '/css/ckeditor.css', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (1863, '2021-10-27 08:20:41', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.css', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (1864, '2021-10-27 08:20:41', '0:0:0:0:0:0:0:1', '/js/script.js', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (1865, '2021-10-27 08:20:41', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.js', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (1866, '2021-10-27 08:20:41', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/outline-icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (1867, '2021-10-27 08:20:41', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (1868, '2021-10-27 08:20:41', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/brand-icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (1869, '2021-10-27 08:20:47', '0:0:0:0:0:0:0:1', '/content/add', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (1870, '2021-10-27 08:20:47', '0:0:0:0:0:0:0:1', '/content', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (1871, '2021-10-27 08:20:47', '0:0:0:0:0:0:0:1', '/css/ckeditor.css', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (1872, '2021-10-27 08:20:47', '0:0:0:0:0:0:0:1', '/js/jquery.min.js', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (1873, '2021-10-27 08:20:47', '0:0:0:0:0:0:0:1', '/css/all.min.css', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (1874, '2021-10-27 08:20:47', '0:0:0:0:0:0:0:1', '/js/jquery-3.1.1.js', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (1875, '2021-10-27 08:20:47', '0:0:0:0:0:0:0:1', '/css/style.css', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (1876, '2021-10-27 08:20:47', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.css', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (1877, '2021-10-27 08:20:47', '0:0:0:0:0:0:0:1', '/js/script.js', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (1878, '2021-10-27 08:20:47', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.js', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (1879, '2021-10-27 08:20:48', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (1880, '2021-10-27 08:20:48', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/brand-icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (1881, '2021-10-27 08:20:48', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/outline-icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (1882, '2021-10-27 08:20:51', '0:0:0:0:0:0:0:1', '/announce', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (1883, '2021-10-27 08:20:52', '0:0:0:0:0:0:0:1', '/js/jquery-3.1.1.js', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (1884, '2021-10-27 08:20:52', '0:0:0:0:0:0:0:1', '/css/ckeditor.css', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (1885, '2021-10-27 08:20:52', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.css', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (1886, '2021-10-27 08:20:52', '0:0:0:0:0:0:0:1', '/css/all.min.css', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (1887, '2021-10-27 08:20:52', '0:0:0:0:0:0:0:1', '/css/style.css', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (1888, '2021-10-27 08:20:52', '0:0:0:0:0:0:0:1', '/sitejs/announce.js', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (1889, '2021-10-27 08:20:52', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.js', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (1890, '2021-10-27 08:20:52', '0:0:0:0:0:0:0:1', '/js/script.js', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (1891, '2021-10-27 08:20:52', '0:0:0:0:0:0:0:1', '/js/jquery.min.js', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (1892, '2021-10-27 08:20:52', '0:0:0:0:0:0:0:1', '/announce/listed', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (1893, '2021-10-27 08:20:52', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (1894, '2021-10-27 08:20:52', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/brand-icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (1895, '2021-10-27 08:20:52', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/outline-icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (1896, '2021-10-27 08:20:55', '0:0:0:0:0:0:0:1', '/survey', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (1897, '2021-10-27 08:20:55', '0:0:0:0:0:0:0:1', '/css/ckeditor.css', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (1898, '2021-10-27 08:20:55', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.css', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (1899, '2021-10-27 08:20:55', '0:0:0:0:0:0:0:1', '/sitejs/survey.js', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (1900, '2021-10-27 08:20:55', '0:0:0:0:0:0:0:1', '/js/jquery-3.1.1.js', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (1901, '2021-10-27 08:20:55', '0:0:0:0:0:0:0:1', '/css/style.css', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (1902, '2021-10-27 08:20:55', '0:0:0:0:0:0:0:1', '/css/all.min.css', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (1903, '2021-10-27 08:20:55', '0:0:0:0:0:0:0:1', '/js/jquery.min.js', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (1904, '2021-10-27 08:20:55', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.js', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (1905, '2021-10-27 08:20:55', '0:0:0:0:0:0:0:1', '/js/script.js', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (1906, '2021-10-27 08:20:55', '0:0:0:0:0:0:0:1', '/survey/pagination/0/10', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (1907, '2021-10-27 08:20:55', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/brand-icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (1908, '2021-10-27 08:20:55', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (1909, '2021-10-27 08:20:55', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/outline-icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (1910, '2021-10-27 08:20:57', '0:0:0:0:0:0:0:1', '/announce', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (1911, '2021-10-27 08:20:57', '0:0:0:0:0:0:0:1', '/sitejs/announce.js', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (1912, '2021-10-27 08:20:57', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.css', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (1913, '2021-10-27 08:20:57', '0:0:0:0:0:0:0:1', '/css/all.min.css', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (1914, '2021-10-27 08:20:57', '0:0:0:0:0:0:0:1', '/css/style.css', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (1915, '2021-10-27 08:20:57', '0:0:0:0:0:0:0:1', '/js/jquery-3.1.1.js', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (1916, '2021-10-27 08:20:57', '0:0:0:0:0:0:0:1', '/css/ckeditor.css', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (1917, '2021-10-27 08:20:57', '0:0:0:0:0:0:0:1', '/js/jquery.min.js', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (1918, '2021-10-27 08:20:57', '0:0:0:0:0:0:0:1', '/js/script.js', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (1919, '2021-10-27 08:20:57', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.js', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (1920, '2021-10-27 08:20:58', '0:0:0:0:0:0:0:1', '/announce/listed', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (1921, '2021-10-27 08:20:58', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/outline-icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (1922, '2021-10-27 08:20:58', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (1923, '2021-10-27 08:20:58', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/brand-icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (1924, '2021-10-27 08:20:59', '0:0:0:0:0:0:0:1', '/orders', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (1925, '2021-10-27 08:20:59', '0:0:0:0:0:0:0:1', '/js/jquery-3.1.1.js', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (1926, '2021-10-27 08:20:59', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.css', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (1927, '2021-10-27 08:20:59', '0:0:0:0:0:0:0:1', '/css/ckeditor.css', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (1928, '2021-10-27 08:20:59', '0:0:0:0:0:0:0:1', '/css/style.css', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (1929, '2021-10-27 08:20:59', '0:0:0:0:0:0:0:1', '/js/jquery.min.js', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (1930, '2021-10-27 08:20:59', '0:0:0:0:0:0:0:1', '/css/all.min.css', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (1931, '2021-10-27 08:21:00', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.js', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (1932, '2021-10-27 08:21:00', '0:0:0:0:0:0:0:1', '/js/script.js', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (1933, '2021-10-27 08:21:00', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/outline-icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (1934, '2021-10-27 08:21:00', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (1935, '2021-10-27 08:21:00', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/brand-icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (1936, '2021-10-27 08:21:40', '0:0:0:0:0:0:0:1', '/customer', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (1937, '2021-10-27 08:21:40', '0:0:0:0:0:0:0:1', '/js/jquery-3.1.1.js', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (1938, '2021-10-27 08:21:40', '0:0:0:0:0:0:0:1', '/css/style.css', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (1939, '2021-10-27 08:21:40', '0:0:0:0:0:0:0:1', '/css/all.min.css', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (1940, '2021-10-27 08:21:40', '0:0:0:0:0:0:0:1', '/css/ckeditor.css', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (1941, '2021-10-27 08:21:40', '0:0:0:0:0:0:0:1', '/js/jquery.min.js', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (1942, '2021-10-27 08:21:40', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.css', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (1943, '2021-10-27 08:21:40', '0:0:0:0:0:0:0:1', '/js/script.js', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (1944, '2021-10-27 08:21:40', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.js', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (1945, '2021-10-27 08:21:41', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/outline-icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (1946, '2021-10-27 08:21:41', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/brand-icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (1947, '2021-10-27 08:21:41', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (1948, '2021-10-27 08:21:42', '0:0:0:0:0:0:0:1', '/customerAdd', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (1949, '2021-10-27 08:21:43', '0:0:0:0:0:0:0:1', '/css/style.css', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (1950, '2021-10-27 08:21:43', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.css', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (1951, '2021-10-27 08:21:43', '0:0:0:0:0:0:0:1', '/js/jquery-3.1.1.js', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (1952, '2021-10-27 08:21:43', '0:0:0:0:0:0:0:1', '/css/ckeditor.css', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (1953, '2021-10-27 08:21:43', '0:0:0:0:0:0:0:1', '/js/jquery.min.js', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (1954, '2021-10-27 08:21:43', '0:0:0:0:0:0:0:1', '/css/all.min.css', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (1955, '2021-10-27 08:21:43', '0:0:0:0:0:0:0:1', '/js/script.js', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (1956, '2021-10-27 08:21:43', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.js', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (1957, '2021-10-27 08:21:43', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/brand-icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (1958, '2021-10-27 08:21:43', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (1959, '2021-10-27 08:21:43', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/outline-icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (1960, '2021-10-27 08:21:44', '0:0:0:0:0:0:0:1', '/customer', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (1961, '2021-10-27 08:21:44', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.css', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (1962, '2021-10-27 08:21:44', '0:0:0:0:0:0:0:1', '/css/all.min.css', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (1963, '2021-10-27 08:21:44', '0:0:0:0:0:0:0:1', '/js/jquery.min.js', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (1964, '2021-10-27 08:21:44', '0:0:0:0:0:0:0:1', '/js/jquery-3.1.1.js', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (1965, '2021-10-27 08:21:44', '0:0:0:0:0:0:0:1', '/css/ckeditor.css', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (1966, '2021-10-27 08:21:44', '0:0:0:0:0:0:0:1', '/css/style.css', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (1967, '2021-10-27 08:21:44', '0:0:0:0:0:0:0:1', '/js/script.js', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (1968, '2021-10-27 08:21:44', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.js', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (1969, '2021-10-27 08:21:45', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (1970, '2021-10-27 08:21:45', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/brand-icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (1971, '2021-10-27 08:21:45', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/outline-icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (1972, '2021-10-27 08:24:08', '0:0:0:0:0:0:0:1', '/news', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (1973, '2021-10-27 08:24:09', '0:0:0:0:0:0:0:1', '/js/jquery-3.1.1.js', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (1974, '2021-10-27 08:24:09', '0:0:0:0:0:0:0:1', '/js/jquery.min.js', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (1975, '2021-10-27 08:24:09', '0:0:0:0:0:0:0:1', '/css/ckeditor.css', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (1976, '2021-10-27 08:24:09', '0:0:0:0:0:0:0:1', '/css/style.css', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (1977, '2021-10-27 08:24:09', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.css', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (1978, '2021-10-27 08:24:09', '0:0:0:0:0:0:0:1', '/css/all.min.css', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (1979, '2021-10-27 08:24:09', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.js', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (1980, '2021-10-27 08:24:09', '0:0:0:0:0:0:0:1', '/js/script.js', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (1981, '2021-10-27 08:24:09', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (1982, '2021-10-27 08:24:09', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/brand-icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (1983, '2021-10-27 08:24:09', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/outline-icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (1984, '2021-10-27 08:24:10', '0:0:0:0:0:0:0:1', '/newsAdd', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (1985, '2021-10-27 08:24:10', '0:0:0:0:0:0:0:1', '/css/all.min.css', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (1986, '2021-10-27 08:24:10', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.css', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (1987, '2021-10-27 08:24:10', '0:0:0:0:0:0:0:1', '/js/jquery-3.1.1.js', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (1988, '2021-10-27 08:24:10', '0:0:0:0:0:0:0:1', '/css/ckeditor.css', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (1989, '2021-10-27 08:24:10', '0:0:0:0:0:0:0:1', '/css/style.css', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (1990, '2021-10-27 08:24:10', '0:0:0:0:0:0:0:1', '/js/jquery.min.js', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (1991, '2021-10-27 08:24:10', '0:0:0:0:0:0:0:1', '/js/script.js', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (1992, '2021-10-27 08:24:10', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.js', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (1993, '2021-10-27 08:24:11', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (1994, '2021-10-27 08:24:11', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/brand-icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (1995, '2021-10-27 08:24:11', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/outline-icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (1996, '2021-10-27 08:24:16', '0:0:0:0:0:0:0:1', '/news', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (1997, '2021-10-27 08:24:16', '0:0:0:0:0:0:0:1', '/css/style.css', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (1998, '2021-10-27 08:24:16', '0:0:0:0:0:0:0:1', '/js/jquery-3.1.1.js', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (1999, '2021-10-27 08:24:16', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.css', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (2000, '2021-10-27 08:24:16', '0:0:0:0:0:0:0:1', '/css/all.min.css', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (2001, '2021-10-27 08:24:16', '0:0:0:0:0:0:0:1', '/css/ckeditor.css', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (2002, '2021-10-27 08:24:16', '0:0:0:0:0:0:0:1', '/js/jquery.min.js', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (2003, '2021-10-27 08:24:16', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.js', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (2004, '2021-10-27 08:24:16', '0:0:0:0:0:0:0:1', '/js/script.js', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (2005, '2021-10-27 08:24:17', '0:0:0:0:0:0:0:1', '/newsCategory', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (2006, '2021-10-27 08:24:17', '0:0:0:0:0:0:0:1', '/js/jquery.min.js', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (2007, '2021-10-27 08:24:17', '0:0:0:0:0:0:0:1', '/css/style.css', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (2008, '2021-10-27 08:24:17', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.css', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (2009, '2021-10-27 08:24:17', '0:0:0:0:0:0:0:1', '/js/jquery-3.1.1.js', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (2010, '2021-10-27 08:24:17', '0:0:0:0:0:0:0:1', '/css/ckeditor.css', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (2011, '2021-10-27 08:24:17', '0:0:0:0:0:0:0:1', '/css/all.min.css', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (2012, '2021-10-27 08:24:17', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.js', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (2013, '2021-10-27 08:24:17', '0:0:0:0:0:0:0:1', '/js/script.js', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (2014, '2021-10-27 08:24:18', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/outline-icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (2015, '2021-10-27 08:24:18', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/brand-icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (2016, '2021-10-27 08:24:18', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (2017, '2021-10-27 08:24:22', '0:0:0:0:0:0:0:1', '/newsCategory/add', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (2018, '2021-10-27 08:24:22', '0:0:0:0:0:0:0:1', '/newsCategory', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (2019, '2021-10-27 08:24:22', '0:0:0:0:0:0:0:1', '/css/style.css', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (2020, '2021-10-27 08:24:22', '0:0:0:0:0:0:0:1', '/css/ckeditor.css', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (2021, '2021-10-27 08:24:22', '0:0:0:0:0:0:0:1', '/css/all.min.css', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (2022, '2021-10-27 08:24:22', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.css', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (2023, '2021-10-27 08:24:22', '0:0:0:0:0:0:0:1', '/js/jquery-3.1.1.js', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (2024, '2021-10-27 08:24:22', '0:0:0:0:0:0:0:1', '/js/jquery.min.js', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (2025, '2021-10-27 08:24:22', '0:0:0:0:0:0:0:1', '/js/script.js', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (2026, '2021-10-27 08:24:22', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.js', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (2027, '2021-10-27 08:24:23', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/outline-icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (2028, '2021-10-27 08:24:23', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/brand-icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (2029, '2021-10-27 08:24:23', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (2030, '2021-10-27 08:24:26', '0:0:0:0:0:0:0:1', '/category', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (2031, '2021-10-27 08:24:26', '0:0:0:0:0:0:0:1', '/js/jquery-3.1.1.js', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (2032, '2021-10-27 08:24:26', '0:0:0:0:0:0:0:1', '/css/style.css', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (2033, '2021-10-27 08:24:26', '0:0:0:0:0:0:0:1', '/css/ckeditor.css', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (2034, '2021-10-27 08:24:26', '0:0:0:0:0:0:0:1', '/sitejs/category.js', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (2035, '2021-10-27 08:24:26', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.css', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (2036, '2021-10-27 08:24:26', '0:0:0:0:0:0:0:1', '/css/all.min.css', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (2037, '2021-10-27 08:24:26', '0:0:0:0:0:0:0:1', '/js/script.js', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (2038, '2021-10-27 08:24:26', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.js', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (2039, '2021-10-27 08:24:26', '0:0:0:0:0:0:0:1', '/js/jquery.min.js', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (2040, '2021-10-27 08:24:26', '0:0:0:0:0:0:0:1', '/category/listCat', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (2041, '2021-10-27 08:24:26', '0:0:0:0:0:0:0:1', '/category/subCat', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (2042, '2021-10-27 08:24:26', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (2043, '2021-10-27 08:24:26', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/outline-icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (2044, '2021-10-27 08:24:26', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/brand-icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (2045, '2021-10-27 08:24:27', '0:0:0:0:0:0:0:1', '/news', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (2046, '2021-10-27 08:24:27', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.css', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (2047, '2021-10-27 08:24:27', '0:0:0:0:0:0:0:1', '/css/style.css', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (2048, '2021-10-27 08:24:27', '0:0:0:0:0:0:0:1', '/css/all.min.css', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (2049, '2021-10-27 08:24:27', '0:0:0:0:0:0:0:1', '/js/jquery-3.1.1.js', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (2050, '2021-10-27 08:24:27', '0:0:0:0:0:0:0:1', '/css/ckeditor.css', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (2051, '2021-10-27 08:24:27', '0:0:0:0:0:0:0:1', '/js/jquery.min.js', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (2052, '2021-10-27 08:24:27', '0:0:0:0:0:0:0:1', '/js/script.js', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (2053, '2021-10-27 08:24:27', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.js', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (2054, '2021-10-27 08:24:27', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/outline-icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (2055, '2021-10-27 08:24:27', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/brand-icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (2056, '2021-10-27 08:24:27', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (2057, '2021-10-27 08:25:05', '0:0:0:0:0:0:0:1', '/newsCategory', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (2058, '2021-10-27 08:25:05', '0:0:0:0:0:0:0:1', '/css/style.css', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (2059, '2021-10-27 08:25:05', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.css', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (2060, '2021-10-27 08:25:05', '0:0:0:0:0:0:0:1', '/css/all.min.css', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (2061, '2021-10-27 08:25:05', '0:0:0:0:0:0:0:1', '/js/jquery-3.1.1.js', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (2062, '2021-10-27 08:25:05', '0:0:0:0:0:0:0:1', '/js/jquery.min.js', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (2063, '2021-10-27 08:25:05', '0:0:0:0:0:0:0:1', '/js/script.js', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (2064, '2021-10-27 08:25:05', '0:0:0:0:0:0:0:1', '/css/ckeditor.css', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (2065, '2021-10-27 08:25:05', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.js', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (2066, '2021-10-27 08:25:06', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/brand-icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (2067, '2021-10-27 08:25:06', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/outline-icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (2068, '2021-10-27 08:25:06', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (2069, '2021-10-27 08:25:07', '0:0:0:0:0:0:0:1', '/news', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (2070, '2021-10-27 08:25:07', '0:0:0:0:0:0:0:1', '/css/style.css', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (2071, '2021-10-27 08:25:07', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.css', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (2072, '2021-10-27 08:25:07', '0:0:0:0:0:0:0:1', '/js/jquery-3.1.1.js', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (2073, '2021-10-27 08:25:07', '0:0:0:0:0:0:0:1', '/js/jquery.min.js', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (2074, '2021-10-27 08:25:07', '0:0:0:0:0:0:0:1', '/css/ckeditor.css', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (2075, '2021-10-27 08:25:07', '0:0:0:0:0:0:0:1', '/css/all.min.css', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (2076, '2021-10-27 08:25:07', '0:0:0:0:0:0:0:1', '/js/script.js', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (2077, '2021-10-27 08:25:07', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.js', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (2078, '2021-10-27 08:25:08', '0:0:0:0:0:0:0:1', '/newsAdd', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (2079, '2021-10-27 08:25:08', '0:0:0:0:0:0:0:1', '/js/jquery-3.1.1.js', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (2080, '2021-10-27 08:25:08', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.css', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (2081, '2021-10-27 08:25:08', '0:0:0:0:0:0:0:1', '/css/all.min.css', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (2082, '2021-10-27 08:25:08', '0:0:0:0:0:0:0:1', '/css/ckeditor.css', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (2083, '2021-10-27 08:25:08', '0:0:0:0:0:0:0:1', '/css/style.css', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (2084, '2021-10-27 08:25:09', '0:0:0:0:0:0:0:1', '/js/jquery.min.js', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (2085, '2021-10-27 08:25:09', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.js', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (2086, '2021-10-27 08:25:09', '0:0:0:0:0:0:0:1', '/js/script.js', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (2087, '2021-10-27 08:25:09', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (2088, '2021-10-27 08:25:09', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/brand-icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (2089, '2021-10-27 08:25:09', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/outline-icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (2090, '2021-10-27 08:25:27', '0:0:0:0:0:0:0:1', '/newsAdd/add', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (2091, '2021-10-27 08:25:27', '0:0:0:0:0:0:0:1', '/news', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (2092, '2021-10-27 08:25:27', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.css', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (2093, '2021-10-27 08:25:27', '0:0:0:0:0:0:0:1', '/css/ckeditor.css', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (2094, '2021-10-27 08:25:27', '0:0:0:0:0:0:0:1', '/css/style.css', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (2095, '2021-10-27 08:25:27', '0:0:0:0:0:0:0:1', '/js/jquery-3.1.1.js', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (2096, '2021-10-27 08:25:27', '0:0:0:0:0:0:0:1', '/css/all.min.css', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (2097, '2021-10-27 08:25:27', '0:0:0:0:0:0:0:1', '/js/jquery.min.js', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (2098, '2021-10-27 08:25:27', '0:0:0:0:0:0:0:1', '/js/script.js', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (2099, '2021-10-27 08:25:27', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.js', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (2100, '2021-10-27 08:25:27', '0:0:0:0:0:0:0:1', '/uploads/bbe661ac-98f7-49c0-8fcc-9fa97952a7980.jpg', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (2101, '2021-10-27 08:25:27', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/brand-icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (2102, '2021-10-27 08:25:27', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (2103, '2021-10-27 08:25:27', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/outline-icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (2104, '2021-10-27 08:25:40', '0:0:0:0:0:0:0:1', '/css/ckeditor.css', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (2105, '2021-10-27 08:25:40', '0:0:0:0:0:0:0:1', '/css/style.css', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (2106, '2021-10-27 08:25:40', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.css', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (2107, '2021-10-27 08:25:40', '0:0:0:0:0:0:0:1', '/css/all.min.css', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (2108, '2021-10-27 08:25:41', '0:0:0:0:0:0:0:1', '/css/style.css.map', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (2109, '2021-10-27 08:26:00', '0:0:0:0:0:0:0:1', '/news', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (2110, '2021-10-27 08:26:01', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.css', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (2111, '2021-10-27 08:26:01', '0:0:0:0:0:0:0:1', '/css/style.css', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (2112, '2021-10-27 08:26:01', '0:0:0:0:0:0:0:1', '/js/jquery-3.1.1.js', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (2113, '2021-10-27 08:26:01', '0:0:0:0:0:0:0:1', '/css/all.min.css', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (2114, '2021-10-27 08:26:01', '0:0:0:0:0:0:0:1', '/css/ckeditor.css', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (2115, '2021-10-27 08:26:01', '0:0:0:0:0:0:0:1', '/js/jquery.min.js', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (2116, '2021-10-27 08:26:01', '0:0:0:0:0:0:0:1', '/js/script.js', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (2117, '2021-10-27 08:26:01', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.js', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (2118, '2021-10-27 08:26:01', '0:0:0:0:0:0:0:1', '/uploads/bbe661ac-98f7-49c0-8fcc-9fa97952a7980.jpg', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (2119, '2021-10-27 08:26:01', '0:0:0:0:0:0:0:1', '/css/style.css.map', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (2120, '2021-10-27 08:26:01', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/brand-icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (2121, '2021-10-27 08:26:01', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (2122, '2021-10-27 08:26:01', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/outline-icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (2123, '2021-10-27 08:26:03', '0:0:0:0:0:0:0:1', '/newsAdd/update/1', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (2124, '2021-10-27 08:26:03', '0:0:0:0:0:0:0:1', '/newsAdd', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (2125, '2021-10-27 08:26:03', '0:0:0:0:0:0:0:1', '/css/style.css', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (2126, '2021-10-27 08:26:03', '0:0:0:0:0:0:0:1', '/js/jquery-3.1.1.js', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (2127, '2021-10-27 08:26:03', '0:0:0:0:0:0:0:1', '/js/jquery.min.js', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (2128, '2021-10-27 08:26:03', '0:0:0:0:0:0:0:1', '/css/all.min.css', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (2129, '2021-10-27 08:26:03', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.css', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (2130, '2021-10-27 08:26:03', '0:0:0:0:0:0:0:1', '/css/ckeditor.css', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (2131, '2021-10-27 08:26:03', '0:0:0:0:0:0:0:1', '/js/script.js', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (2132, '2021-10-27 08:26:03', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.js', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (2133, '2021-10-27 08:26:04', '0:0:0:0:0:0:0:1', '/css/style.css.map', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (2134, '2021-10-27 08:26:04', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (2135, '2021-10-27 08:26:04', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/outline-icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (2136, '2021-10-27 08:26:04', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/brand-icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (2137, '2021-10-27 08:26:10', '0:0:0:0:0:0:0:1', '/newsAdd/add', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (2138, '2021-10-27 08:26:15', '0:0:0:0:0:0:0:1', '/newsAdd', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (2139, '2021-10-27 08:26:15', '0:0:0:0:0:0:0:1', '/js/jquery-3.1.1.js', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (2140, '2021-10-27 08:26:15', '0:0:0:0:0:0:0:1', '/css/style.css', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (2141, '2021-10-27 08:26:15', '0:0:0:0:0:0:0:1', '/css/ckeditor.css', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (2142, '2021-10-27 08:26:15', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.css', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (2143, '2021-10-27 08:26:15', '0:0:0:0:0:0:0:1', '/css/all.min.css', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (2144, '2021-10-27 08:26:15', '0:0:0:0:0:0:0:1', '/js/jquery.min.js', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (2145, '2021-10-27 08:26:15', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.js', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (2146, '2021-10-27 08:26:15', '0:0:0:0:0:0:0:1', '/js/script.js', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (2147, '2021-10-27 08:26:16', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (2148, '2021-10-27 08:26:16', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/outline-icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (2149, '2021-10-27 08:26:16', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/brand-icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (2150, '2021-10-27 08:26:16', '0:0:0:0:0:0:0:1', '/css/style.css.map', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (2151, '2021-10-27 08:26:30', '0:0:0:0:0:0:0:1', '/newsAdd/add', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (2152, '2021-10-27 08:26:32', '0:0:0:0:0:0:0:1', '/newsAdd', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (2153, '2021-10-27 08:26:32', '0:0:0:0:0:0:0:1', '/js/jquery-3.1.1.js', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (2154, '2021-10-27 08:26:32', '0:0:0:0:0:0:0:1', '/css/style.css', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (2155, '2021-10-27 08:26:32', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.css', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (2156, '2021-10-27 08:26:32', '0:0:0:0:0:0:0:1', '/css/ckeditor.css', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (2157, '2021-10-27 08:26:32', '0:0:0:0:0:0:0:1', '/js/jquery.min.js', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (2158, '2021-10-27 08:26:32', '0:0:0:0:0:0:0:1', '/css/all.min.css', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (2159, '2021-10-27 08:26:32', '0:0:0:0:0:0:0:1', '/js/script.js', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (2160, '2021-10-27 08:26:32', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.js', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (2161, '2021-10-27 08:33:26', '0:0:0:0:0:0:0:1', '/news', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (2162, '2021-10-27 08:33:26', '0:0:0:0:0:0:0:1', '/css/style.css', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (2163, '2021-10-27 08:33:26', '0:0:0:0:0:0:0:1', '/js/jquery-3.1.1.js', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (2164, '2021-10-27 08:33:26', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.css', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (2165, '2021-10-27 08:33:26', '0:0:0:0:0:0:0:1', '/css/all.min.css', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (2166, '2021-10-27 08:33:26', '0:0:0:0:0:0:0:1', '/css/ckeditor.css', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (2167, '2021-10-27 08:33:27', '0:0:0:0:0:0:0:1', '/js/jquery.min.js', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (2168, '2021-10-27 08:33:27', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.js', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (2169, '2021-10-27 08:33:27', '0:0:0:0:0:0:0:1', '/js/script.js', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (2170, '2021-10-27 08:33:27', '0:0:0:0:0:0:0:1', '/uploads/bbe661ac-98f7-49c0-8fcc-9fa97952a7980.jpg', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (2171, '2021-10-27 08:33:29', '0:0:0:0:0:0:0:1', '/newsAdd/update/1', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (2172, '2021-10-27 08:33:29', '0:0:0:0:0:0:0:1', '/newsAdd', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (2173, '2021-10-27 08:33:29', '0:0:0:0:0:0:0:1', '/js/jquery-3.1.1.js', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (2174, '2021-10-27 08:33:29', '0:0:0:0:0:0:0:1', '/css/style.css', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (2175, '2021-10-27 08:33:29', '0:0:0:0:0:0:0:1', '/css/all.min.css', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (2176, '2021-10-27 08:33:30', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.css', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (2177, '2021-10-27 08:33:30', '0:0:0:0:0:0:0:1', '/css/ckeditor.css', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (2178, '2021-10-27 08:33:30', '0:0:0:0:0:0:0:1', '/js/jquery.min.js', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (2179, '2021-10-27 08:33:30', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.js', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (2180, '2021-10-27 08:33:30', '0:0:0:0:0:0:0:1', '/js/script.js', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (2181, '2021-10-27 08:33:30', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/outline-icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (2182, '2021-10-27 08:33:30', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (2183, '2021-10-27 08:33:30', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/brand-icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (2184, '2021-10-27 08:33:43', '0:0:0:0:0:0:0:1', '/newsAdd/add', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (2185, '2021-10-27 08:33:43', '0:0:0:0:0:0:0:1', '/news', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (2186, '2021-10-27 08:33:44', '0:0:0:0:0:0:0:1', '/js/jquery-3.1.1.js', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (2187, '2021-10-27 08:33:44', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.css', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (2188, '2021-10-27 08:33:44', '0:0:0:0:0:0:0:1', '/css/ckeditor.css', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (2189, '2021-10-27 08:33:44', '0:0:0:0:0:0:0:1', '/css/style.css', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (2190, '2021-10-27 08:33:44', '0:0:0:0:0:0:0:1', '/css/all.min.css', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (2191, '2021-10-27 08:33:44', '0:0:0:0:0:0:0:1', '/js/jquery.min.js', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (2192, '2021-10-27 08:33:44', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.js', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (2193, '2021-10-27 08:33:44', '0:0:0:0:0:0:0:1', '/uploads/db8ec82c-7e4b-4b62-85f8-0da24f7e146e0.jpg', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (2194, '2021-10-27 08:33:44', '0:0:0:0:0:0:0:1', '/js/script.js', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (2195, '2021-10-27 08:33:44', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/brand-icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (2196, '2021-10-27 08:33:44', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/outline-icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (2197, '2021-10-27 08:33:44', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (2198, '2021-10-27 08:35:57', '0:0:0:0:0:0:0:1', '/customer', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (2199, '2021-10-27 08:35:58', '0:0:0:0:0:0:0:1', '/js/jquery-3.1.1.js', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (2200, '2021-10-27 08:35:58', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.css', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (2201, '2021-10-27 08:35:58', '0:0:0:0:0:0:0:1', '/css/style.css', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (2202, '2021-10-27 08:35:58', '0:0:0:0:0:0:0:1', '/css/all.min.css', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (2203, '2021-10-27 08:35:58', '0:0:0:0:0:0:0:1', '/js/jquery.min.js', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (2204, '2021-10-27 08:35:58', '0:0:0:0:0:0:0:1', '/css/ckeditor.css', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (2205, '2021-10-27 08:35:58', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.js', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (2206, '2021-10-27 08:35:58', '0:0:0:0:0:0:0:1', '/js/script.js', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (2207, '2021-10-27 08:35:58', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/brand-icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (2208, '2021-10-27 08:35:58', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/outline-icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (2209, '2021-10-27 08:35:58', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (2210, '2021-10-27 08:36:00', '0:0:0:0:0:0:0:1', '/customerAdd', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (2211, '2021-10-27 08:36:00', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.css', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (2212, '2021-10-27 08:36:00', '0:0:0:0:0:0:0:1', '/js/jquery-3.1.1.js', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (2213, '2021-10-27 08:36:00', '0:0:0:0:0:0:0:1', '/css/all.min.css', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (2214, '2021-10-27 08:36:00', '0:0:0:0:0:0:0:1', '/css/style.css', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (2215, '2021-10-27 08:36:00', '0:0:0:0:0:0:0:1', '/js/jquery.min.js', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (2216, '2021-10-27 08:36:00', '0:0:0:0:0:0:0:1', '/css/ckeditor.css', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (2217, '2021-10-27 08:36:00', '0:0:0:0:0:0:0:1', '/js/script.js', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (2218, '2021-10-27 08:36:00', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.js', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (2219, '2021-10-27 08:36:00', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/outline-icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (2220, '2021-10-27 08:36:00', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/brand-icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (2221, '2021-10-27 08:36:00', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (2222, '2021-10-27 08:36:14', '0:0:0:0:0:0:0:1', '/customerAdd/add', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (2223, '2021-10-27 08:36:14', '0:0:0:0:0:0:0:1', '/customerAdd', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (2224, '2021-10-27 08:36:14', '0:0:0:0:0:0:0:1', '/css/all.min.css', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (2225, '2021-10-27 08:36:14', '0:0:0:0:0:0:0:1', '/css/style.css', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (2226, '2021-10-27 08:36:14', '0:0:0:0:0:0:0:1', '/css/ckeditor.css', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (2227, '2021-10-27 08:36:14', '0:0:0:0:0:0:0:1', '/js/jquery-3.1.1.js', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (2228, '2021-10-27 08:36:14', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.css', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (2229, '2021-10-27 08:36:14', '0:0:0:0:0:0:0:1', '/js/jquery.min.js', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (2230, '2021-10-27 08:36:14', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.js', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (2231, '2021-10-27 08:36:14', '0:0:0:0:0:0:0:1', '/js/script.js', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (2232, '2021-10-27 08:36:14', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/outline-icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (2233, '2021-10-27 08:36:14', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (2234, '2021-10-27 08:36:14', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/brand-icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (2235, '2021-10-27 08:36:21', '0:0:0:0:0:0:0:1', '/customer', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (2236, '2021-10-27 08:36:21', '0:0:0:0:0:0:0:1', '/css/style.css', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (2237, '2021-10-27 08:36:21', '0:0:0:0:0:0:0:1', '/js/jquery-3.1.1.js', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (2238, '2021-10-27 08:36:21', '0:0:0:0:0:0:0:1', '/css/all.min.css', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (2239, '2021-10-27 08:36:21', '0:0:0:0:0:0:0:1', '/css/ckeditor.css', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (2240, '2021-10-27 08:36:21', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.css', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (2241, '2021-10-27 08:36:21', '0:0:0:0:0:0:0:1', '/js/jquery.min.js', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (2242, '2021-10-27 08:36:21', '0:0:0:0:0:0:0:1', '/js/script.js', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (2243, '2021-10-27 08:36:21', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.js', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (2244, '2021-10-27 08:36:22', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (2245, '2021-10-27 08:36:22', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/outline-icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (2246, '2021-10-27 08:36:22', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/brand-icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', '17D8828AE7652188064F3B4E2DCFEF9D', 'yilmaz');
INSERT INTO `logger` VALUES (2247, '2021-10-27 08:48:33', '0:0:0:0:0:0:0:1', '/login', 'anonymousUser', NULL, NULL, '518FD6A7F6F75373960B75191B2550B7', NULL);
INSERT INTO `logger` VALUES (2248, '2021-10-27 08:48:34', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.css', 'anonymousUser', NULL, NULL, '518FD6A7F6F75373960B75191B2550B7', NULL);
INSERT INTO `logger` VALUES (2249, '2021-10-27 08:48:34', '0:0:0:0:0:0:0:1', '/css/ckeditor.css', 'anonymousUser', NULL, NULL, '518FD6A7F6F75373960B75191B2550B7', NULL);
INSERT INTO `logger` VALUES (2250, '2021-10-27 08:48:34', '0:0:0:0:0:0:0:1', '/css/all.min.css', 'anonymousUser', NULL, NULL, '518FD6A7F6F75373960B75191B2550B7', NULL);
INSERT INTO `logger` VALUES (2251, '2021-10-27 08:48:34', '0:0:0:0:0:0:0:1', '/js/jquery-3.1.1.js', 'anonymousUser', NULL, NULL, '518FD6A7F6F75373960B75191B2550B7', NULL);
INSERT INTO `logger` VALUES (2252, '2021-10-27 08:48:34', '0:0:0:0:0:0:0:1', '/js/jquery.min.js', 'anonymousUser', NULL, NULL, '518FD6A7F6F75373960B75191B2550B7', NULL);
INSERT INTO `logger` VALUES (2253, '2021-10-27 08:48:34', '0:0:0:0:0:0:0:1', '/css/style.css', 'anonymousUser', NULL, NULL, '518FD6A7F6F75373960B75191B2550B7', NULL);
INSERT INTO `logger` VALUES (2254, '2021-10-27 08:48:34', '0:0:0:0:0:0:0:1', '/js/script.js', 'anonymousUser', NULL, NULL, '518FD6A7F6F75373960B75191B2550B7', NULL);
INSERT INTO `logger` VALUES (2255, '2021-10-27 08:48:34', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.js', 'anonymousUser', NULL, NULL, '518FD6A7F6F75373960B75191B2550B7', NULL);
INSERT INTO `logger` VALUES (2256, '2021-10-27 08:48:34', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/brand-icons.woff2', 'anonymousUser', NULL, NULL, '518FD6A7F6F75373960B75191B2550B7', NULL);
INSERT INTO `logger` VALUES (2257, '2021-10-27 08:48:34', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/icons.woff2', 'anonymousUser', NULL, NULL, '518FD6A7F6F75373960B75191B2550B7', NULL);
INSERT INTO `logger` VALUES (2258, '2021-10-27 08:48:34', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/outline-icons.woff2', 'anonymousUser', NULL, NULL, '518FD6A7F6F75373960B75191B2550B7', NULL);
INSERT INTO `logger` VALUES (2259, '2021-10-27 08:48:41', '0:0:0:0:0:0:0:1', '/survey', 'alper@mail.com', 'alper', 'ROLE_MVC', 'B2B0688875DDDD77254CDB8EBC8F27FC', 'yilmaz');
INSERT INTO `logger` VALUES (2260, '2021-10-27 08:48:41', '0:0:0:0:0:0:0:1', '/css/style.css', 'alper@mail.com', 'alper', 'ROLE_MVC', 'B2B0688875DDDD77254CDB8EBC8F27FC', 'yilmaz');
INSERT INTO `logger` VALUES (2261, '2021-10-27 08:48:41', '0:0:0:0:0:0:0:1', '/css/all.min.css', 'alper@mail.com', 'alper', 'ROLE_MVC', 'B2B0688875DDDD77254CDB8EBC8F27FC', 'yilmaz');
INSERT INTO `logger` VALUES (2262, '2021-10-27 08:48:41', '0:0:0:0:0:0:0:1', '/js/jquery-3.1.1.js', 'alper@mail.com', 'alper', 'ROLE_MVC', 'B2B0688875DDDD77254CDB8EBC8F27FC', 'yilmaz');
INSERT INTO `logger` VALUES (2263, '2021-10-27 08:48:41', '0:0:0:0:0:0:0:1', '/css/ckeditor.css', 'alper@mail.com', 'alper', 'ROLE_MVC', 'B2B0688875DDDD77254CDB8EBC8F27FC', 'yilmaz');
INSERT INTO `logger` VALUES (2264, '2021-10-27 08:48:41', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.css', 'alper@mail.com', 'alper', 'ROLE_MVC', 'B2B0688875DDDD77254CDB8EBC8F27FC', 'yilmaz');
INSERT INTO `logger` VALUES (2265, '2021-10-27 08:48:41', '0:0:0:0:0:0:0:1', '/sitejs/survey.js', 'alper@mail.com', 'alper', 'ROLE_MVC', 'B2B0688875DDDD77254CDB8EBC8F27FC', 'yilmaz');
INSERT INTO `logger` VALUES (2266, '2021-10-27 08:48:41', '0:0:0:0:0:0:0:1', '/js/jquery.min.js', 'alper@mail.com', 'alper', 'ROLE_MVC', 'B2B0688875DDDD77254CDB8EBC8F27FC', 'yilmaz');
INSERT INTO `logger` VALUES (2267, '2021-10-27 08:48:41', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.js', 'alper@mail.com', 'alper', 'ROLE_MVC', 'B2B0688875DDDD77254CDB8EBC8F27FC', 'yilmaz');
INSERT INTO `logger` VALUES (2268, '2021-10-27 08:48:41', '0:0:0:0:0:0:0:1', '/js/script.js', 'alper@mail.com', 'alper', 'ROLE_MVC', 'B2B0688875DDDD77254CDB8EBC8F27FC', 'yilmaz');
INSERT INTO `logger` VALUES (2269, '2021-10-27 08:48:41', '0:0:0:0:0:0:0:1', '/survey/pagination/0/10', 'alper@mail.com', 'alper', 'ROLE_MVC', 'B2B0688875DDDD77254CDB8EBC8F27FC', 'yilmaz');
INSERT INTO `logger` VALUES (2270, '2021-10-27 08:48:41', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/outline-icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', 'B2B0688875DDDD77254CDB8EBC8F27FC', 'yilmaz');
INSERT INTO `logger` VALUES (2271, '2021-10-27 08:48:41', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', 'B2B0688875DDDD77254CDB8EBC8F27FC', 'yilmaz');
INSERT INTO `logger` VALUES (2272, '2021-10-27 08:48:41', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/brand-icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', 'B2B0688875DDDD77254CDB8EBC8F27FC', 'yilmaz');
INSERT INTO `logger` VALUES (2273, '2021-10-27 09:36:41', '0:0:0:0:0:0:0:1', '/login', 'anonymousUser', NULL, NULL, '38044EBF6F1983D024D1F5585F4C098C', NULL);
INSERT INTO `logger` VALUES (2274, '2021-10-27 09:36:42', '0:0:0:0:0:0:0:1', '/js/jquery-3.1.1.js', 'anonymousUser', NULL, NULL, '38044EBF6F1983D024D1F5585F4C098C', NULL);
INSERT INTO `logger` VALUES (2275, '2021-10-27 09:36:42', '0:0:0:0:0:0:0:1', '/css/style.css', 'anonymousUser', NULL, NULL, '38044EBF6F1983D024D1F5585F4C098C', NULL);
INSERT INTO `logger` VALUES (2276, '2021-10-27 09:36:42', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.css', 'anonymousUser', NULL, NULL, '38044EBF6F1983D024D1F5585F4C098C', NULL);
INSERT INTO `logger` VALUES (2277, '2021-10-27 09:36:42', '0:0:0:0:0:0:0:1', '/css/ckeditor.css', 'anonymousUser', NULL, NULL, '38044EBF6F1983D024D1F5585F4C098C', NULL);
INSERT INTO `logger` VALUES (2278, '2021-10-27 09:36:42', '0:0:0:0:0:0:0:1', '/js/jquery.min.js', 'anonymousUser', NULL, NULL, '38044EBF6F1983D024D1F5585F4C098C', NULL);
INSERT INTO `logger` VALUES (2279, '2021-10-27 09:36:42', '0:0:0:0:0:0:0:1', '/css/all.min.css', 'anonymousUser', NULL, NULL, '38044EBF6F1983D024D1F5585F4C098C', NULL);
INSERT INTO `logger` VALUES (2280, '2021-10-27 09:36:43', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.js', 'anonymousUser', NULL, NULL, '38044EBF6F1983D024D1F5585F4C098C', NULL);
INSERT INTO `logger` VALUES (2281, '2021-10-27 09:36:43', '0:0:0:0:0:0:0:1', '/js/script.js', 'anonymousUser', NULL, NULL, '38044EBF6F1983D024D1F5585F4C098C', NULL);
INSERT INTO `logger` VALUES (2282, '2021-10-27 09:36:43', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/icons.woff2', 'anonymousUser', NULL, NULL, '38044EBF6F1983D024D1F5585F4C098C', NULL);
INSERT INTO `logger` VALUES (2283, '2021-10-27 09:36:43', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/brand-icons.woff2', 'anonymousUser', NULL, NULL, '38044EBF6F1983D024D1F5585F4C098C', NULL);
INSERT INTO `logger` VALUES (2284, '2021-10-27 09:36:43', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/outline-icons.woff2', 'anonymousUser', NULL, NULL, '38044EBF6F1983D024D1F5585F4C098C', NULL);
INSERT INTO `logger` VALUES (2285, '2021-10-27 09:52:56', '0:0:0:0:0:0:0:1', '/registers', 'anonymousUser', NULL, NULL, '38044EBF6F1983D024D1F5585F4C098C', NULL);
INSERT INTO `logger` VALUES (2286, '2021-10-27 09:52:57', '0:0:0:0:0:0:0:1', '/js/jquery-3.1.1.js', 'anonymousUser', NULL, NULL, '38044EBF6F1983D024D1F5585F4C098C', NULL);
INSERT INTO `logger` VALUES (2287, '2021-10-27 09:52:57', '0:0:0:0:0:0:0:1', '/css/all.min.css', 'anonymousUser', NULL, NULL, '38044EBF6F1983D024D1F5585F4C098C', NULL);
INSERT INTO `logger` VALUES (2288, '2021-10-27 09:52:57', '0:0:0:0:0:0:0:1', '/css/style.css', 'anonymousUser', NULL, NULL, '38044EBF6F1983D024D1F5585F4C098C', NULL);
INSERT INTO `logger` VALUES (2289, '2021-10-27 09:52:57', '0:0:0:0:0:0:0:1', '/js/jquery.min.js', 'anonymousUser', NULL, NULL, '38044EBF6F1983D024D1F5585F4C098C', NULL);
INSERT INTO `logger` VALUES (2290, '2021-10-27 09:52:57', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.css', 'anonymousUser', NULL, NULL, '38044EBF6F1983D024D1F5585F4C098C', NULL);
INSERT INTO `logger` VALUES (2291, '2021-10-27 09:52:57', '0:0:0:0:0:0:0:1', '/css/ckeditor.css', 'anonymousUser', NULL, NULL, '38044EBF6F1983D024D1F5585F4C098C', NULL);
INSERT INTO `logger` VALUES (2292, '2021-10-27 09:52:57', '0:0:0:0:0:0:0:1', '/js/script.js', 'anonymousUser', NULL, NULL, '38044EBF6F1983D024D1F5585F4C098C', NULL);
INSERT INTO `logger` VALUES (2293, '2021-10-27 09:52:57', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.js', 'anonymousUser', NULL, NULL, '38044EBF6F1983D024D1F5585F4C098C', NULL);
INSERT INTO `logger` VALUES (2294, '2021-10-27 09:52:57', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/outline-icons.woff2', 'anonymousUser', NULL, NULL, '38044EBF6F1983D024D1F5585F4C098C', NULL);
INSERT INTO `logger` VALUES (2295, '2021-10-27 09:52:57', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/icons.woff2', 'anonymousUser', NULL, NULL, '38044EBF6F1983D024D1F5585F4C098C', NULL);
INSERT INTO `logger` VALUES (2296, '2021-10-27 09:52:57', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/brand-icons.woff2', 'anonymousUser', NULL, NULL, '38044EBF6F1983D024D1F5585F4C098C', NULL);
INSERT INTO `logger` VALUES (2297, '2021-10-27 09:53:00', '0:0:0:0:0:0:0:1', '/registers/add', 'anonymousUser', NULL, NULL, '38044EBF6F1983D024D1F5585F4C098C', NULL);
INSERT INTO `logger` VALUES (2298, '2021-10-27 09:53:01', '0:0:0:0:0:0:0:1', '/css/ckeditor.css', 'anonymousUser', NULL, NULL, '38044EBF6F1983D024D1F5585F4C098C', NULL);
INSERT INTO `logger` VALUES (2299, '2021-10-27 09:53:01', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.css', 'anonymousUser', NULL, NULL, '38044EBF6F1983D024D1F5585F4C098C', NULL);
INSERT INTO `logger` VALUES (2300, '2021-10-27 09:53:01', '0:0:0:0:0:0:0:1', '/css/all.min.css', 'anonymousUser', NULL, NULL, '38044EBF6F1983D024D1F5585F4C098C', NULL);
INSERT INTO `logger` VALUES (2301, '2021-10-27 09:53:01', '0:0:0:0:0:0:0:1', '/css/style.css', 'anonymousUser', NULL, NULL, '38044EBF6F1983D024D1F5585F4C098C', NULL);
INSERT INTO `logger` VALUES (2302, '2021-10-27 09:53:01', '0:0:0:0:0:0:0:1', '/js/jquery-3.1.1.js', 'anonymousUser', NULL, NULL, '38044EBF6F1983D024D1F5585F4C098C', NULL);
INSERT INTO `logger` VALUES (2303, '2021-10-27 09:53:01', '0:0:0:0:0:0:0:1', '/js/jquery.min.js', 'anonymousUser', NULL, NULL, '38044EBF6F1983D024D1F5585F4C098C', NULL);
INSERT INTO `logger` VALUES (2304, '2021-10-27 09:53:01', '0:0:0:0:0:0:0:1', '/js/script.js', 'anonymousUser', NULL, NULL, '38044EBF6F1983D024D1F5585F4C098C', NULL);
INSERT INTO `logger` VALUES (2305, '2021-10-27 09:53:01', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.js', 'anonymousUser', NULL, NULL, '38044EBF6F1983D024D1F5585F4C098C', NULL);
INSERT INTO `logger` VALUES (2306, '2021-10-27 09:53:01', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/brand-icons.woff2', 'anonymousUser', NULL, NULL, '38044EBF6F1983D024D1F5585F4C098C', NULL);
INSERT INTO `logger` VALUES (2307, '2021-10-27 09:53:01', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/outline-icons.woff2', 'anonymousUser', NULL, NULL, '38044EBF6F1983D024D1F5585F4C098C', NULL);
INSERT INTO `logger` VALUES (2308, '2021-10-27 09:53:01', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/icons.woff2', 'anonymousUser', NULL, NULL, '38044EBF6F1983D024D1F5585F4C098C', NULL);
INSERT INTO `logger` VALUES (2309, '2021-10-27 09:53:06', '0:0:0:0:0:0:0:1', '/registers', 'anonymousUser', NULL, NULL, '38044EBF6F1983D024D1F5585F4C098C', NULL);
INSERT INTO `logger` VALUES (2310, '2021-10-27 09:53:06', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.css', 'anonymousUser', NULL, NULL, '38044EBF6F1983D024D1F5585F4C098C', NULL);
INSERT INTO `logger` VALUES (2311, '2021-10-27 09:53:06', '0:0:0:0:0:0:0:1', '/js/jquery-3.1.1.js', 'anonymousUser', NULL, NULL, '38044EBF6F1983D024D1F5585F4C098C', NULL);
INSERT INTO `logger` VALUES (2312, '2021-10-27 09:53:06', '0:0:0:0:0:0:0:1', '/css/ckeditor.css', 'anonymousUser', NULL, NULL, '38044EBF6F1983D024D1F5585F4C098C', NULL);
INSERT INTO `logger` VALUES (2313, '2021-10-27 09:53:06', '0:0:0:0:0:0:0:1', '/css/style.css', 'anonymousUser', NULL, NULL, '38044EBF6F1983D024D1F5585F4C098C', NULL);
INSERT INTO `logger` VALUES (2314, '2021-10-27 09:53:06', '0:0:0:0:0:0:0:1', '/css/all.min.css', 'anonymousUser', NULL, NULL, '38044EBF6F1983D024D1F5585F4C098C', NULL);
INSERT INTO `logger` VALUES (2315, '2021-10-27 09:53:06', '0:0:0:0:0:0:0:1', '/js/jquery.min.js', 'anonymousUser', NULL, NULL, '38044EBF6F1983D024D1F5585F4C098C', NULL);
INSERT INTO `logger` VALUES (2316, '2021-10-27 09:53:06', '0:0:0:0:0:0:0:1', '/js/script.js', 'anonymousUser', NULL, NULL, '38044EBF6F1983D024D1F5585F4C098C', NULL);
INSERT INTO `logger` VALUES (2317, '2021-10-27 09:53:06', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.js', 'anonymousUser', NULL, NULL, '38044EBF6F1983D024D1F5585F4C098C', NULL);
INSERT INTO `logger` VALUES (2318, '2021-10-27 09:53:57', '0:0:0:0:0:0:0:1', '/registers/add', 'anonymousUser', NULL, NULL, '38044EBF6F1983D024D1F5585F4C098C', NULL);
INSERT INTO `logger` VALUES (2319, '2021-10-27 09:54:00', '0:0:0:0:0:0:0:1', '/js/jquery-3.1.1.js', 'anonymousUser', NULL, NULL, '38044EBF6F1983D024D1F5585F4C098C', NULL);
INSERT INTO `logger` VALUES (2320, '2021-10-27 09:54:00', '0:0:0:0:0:0:0:1', '/css/all.min.css', 'anonymousUser', NULL, NULL, '38044EBF6F1983D024D1F5585F4C098C', NULL);
INSERT INTO `logger` VALUES (2321, '2021-10-27 09:54:00', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.css', 'anonymousUser', NULL, NULL, '38044EBF6F1983D024D1F5585F4C098C', NULL);
INSERT INTO `logger` VALUES (2322, '2021-10-27 09:54:00', '0:0:0:0:0:0:0:1', '/js/jquery.min.js', 'anonymousUser', NULL, NULL, '38044EBF6F1983D024D1F5585F4C098C', NULL);
INSERT INTO `logger` VALUES (2323, '2021-10-27 09:54:00', '0:0:0:0:0:0:0:1', '/css/style.css', 'anonymousUser', NULL, NULL, '38044EBF6F1983D024D1F5585F4C098C', NULL);
INSERT INTO `logger` VALUES (2324, '2021-10-27 09:54:00', '0:0:0:0:0:0:0:1', '/css/ckeditor.css', 'anonymousUser', NULL, NULL, '38044EBF6F1983D024D1F5585F4C098C', NULL);
INSERT INTO `logger` VALUES (2325, '2021-10-27 09:54:00', '0:0:0:0:0:0:0:1', '/js/script.js', 'anonymousUser', NULL, NULL, '38044EBF6F1983D024D1F5585F4C098C', NULL);
INSERT INTO `logger` VALUES (2326, '2021-10-27 09:54:00', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.js', 'anonymousUser', NULL, NULL, '38044EBF6F1983D024D1F5585F4C098C', NULL);
INSERT INTO `logger` VALUES (2327, '2021-10-27 09:54:01', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/brand-icons.woff2', 'anonymousUser', NULL, NULL, '38044EBF6F1983D024D1F5585F4C098C', NULL);
INSERT INTO `logger` VALUES (2328, '2021-10-27 09:54:01', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/icons.woff2', 'anonymousUser', NULL, NULL, '38044EBF6F1983D024D1F5585F4C098C', NULL);
INSERT INTO `logger` VALUES (2329, '2021-10-27 09:54:01', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/outline-icons.woff2', 'anonymousUser', NULL, NULL, '38044EBF6F1983D024D1F5585F4C098C', NULL);
INSERT INTO `logger` VALUES (2330, '2021-10-27 09:54:09', '0:0:0:0:0:0:0:1', '/login', 'anonymousUser', NULL, NULL, '31370CD9B4162E64D8B9980DB7087E62', NULL);
INSERT INTO `logger` VALUES (2331, '2021-10-27 09:54:09', '0:0:0:0:0:0:0:1', '/js/jquery-3.1.1.js', 'anonymousUser', NULL, NULL, '31370CD9B4162E64D8B9980DB7087E62', NULL);
INSERT INTO `logger` VALUES (2332, '2021-10-27 09:54:09', '0:0:0:0:0:0:0:1', '/css/style.css', 'anonymousUser', NULL, NULL, '31370CD9B4162E64D8B9980DB7087E62', NULL);
INSERT INTO `logger` VALUES (2333, '2021-10-27 09:54:09', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.css', 'anonymousUser', NULL, NULL, '31370CD9B4162E64D8B9980DB7087E62', NULL);
INSERT INTO `logger` VALUES (2334, '2021-10-27 09:54:09', '0:0:0:0:0:0:0:1', '/js/jquery.min.js', 'anonymousUser', NULL, NULL, '31370CD9B4162E64D8B9980DB7087E62', NULL);
INSERT INTO `logger` VALUES (2335, '2021-10-27 09:54:09', '0:0:0:0:0:0:0:1', '/css/all.min.css', 'anonymousUser', NULL, NULL, '31370CD9B4162E64D8B9980DB7087E62', NULL);
INSERT INTO `logger` VALUES (2336, '2021-10-27 09:54:09', '0:0:0:0:0:0:0:1', '/css/ckeditor.css', 'anonymousUser', NULL, NULL, '31370CD9B4162E64D8B9980DB7087E62', NULL);
INSERT INTO `logger` VALUES (2337, '2021-10-27 09:54:09', '0:0:0:0:0:0:0:1', '/js/script.js', 'anonymousUser', NULL, NULL, '31370CD9B4162E64D8B9980DB7087E62', NULL);
INSERT INTO `logger` VALUES (2338, '2021-10-27 09:54:09', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.js', 'anonymousUser', NULL, NULL, '31370CD9B4162E64D8B9980DB7087E62', NULL);
INSERT INTO `logger` VALUES (2339, '2021-10-27 09:54:10', '0:0:0:0:0:0:0:1', '/login', 'anonymousUser', NULL, NULL, '6C2B37035CE7084F6236A669AC6F309E', NULL);
INSERT INTO `logger` VALUES (2340, '2021-10-27 09:54:10', '0:0:0:0:0:0:0:1', '/css/style.css', 'anonymousUser', NULL, NULL, '6C2B37035CE7084F6236A669AC6F309E', NULL);
INSERT INTO `logger` VALUES (2341, '2021-10-27 09:54:10', '0:0:0:0:0:0:0:1', '/js/jquery-3.1.1.js', 'anonymousUser', NULL, NULL, '6C2B37035CE7084F6236A669AC6F309E', NULL);
INSERT INTO `logger` VALUES (2342, '2021-10-27 09:54:10', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.css', 'anonymousUser', NULL, NULL, '6C2B37035CE7084F6236A669AC6F309E', NULL);
INSERT INTO `logger` VALUES (2343, '2021-10-27 09:54:10', '0:0:0:0:0:0:0:1', '/css/all.min.css', 'anonymousUser', NULL, NULL, '6C2B37035CE7084F6236A669AC6F309E', NULL);
INSERT INTO `logger` VALUES (2344, '2021-10-27 09:54:10', '0:0:0:0:0:0:0:1', '/css/ckeditor.css', 'anonymousUser', NULL, NULL, '6C2B37035CE7084F6236A669AC6F309E', NULL);
INSERT INTO `logger` VALUES (2345, '2021-10-27 09:54:10', '0:0:0:0:0:0:0:1', '/js/jquery.min.js', 'anonymousUser', NULL, NULL, '6C2B37035CE7084F6236A669AC6F309E', NULL);
INSERT INTO `logger` VALUES (2346, '2021-10-27 09:54:10', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.js', 'anonymousUser', NULL, NULL, '6C2B37035CE7084F6236A669AC6F309E', NULL);
INSERT INTO `logger` VALUES (2347, '2021-10-27 09:54:10', '0:0:0:0:0:0:0:1', '/js/script.js', 'anonymousUser', NULL, NULL, '6C2B37035CE7084F6236A669AC6F309E', NULL);
INSERT INTO `logger` VALUES (2348, '2021-10-27 09:54:10', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/outline-icons.woff2', 'anonymousUser', NULL, NULL, '6C2B37035CE7084F6236A669AC6F309E', NULL);
INSERT INTO `logger` VALUES (2349, '2021-10-27 09:54:10', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/icons.woff2', 'anonymousUser', NULL, NULL, '6C2B37035CE7084F6236A669AC6F309E', NULL);
INSERT INTO `logger` VALUES (2350, '2021-10-27 09:54:10', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/brand-icons.woff2', 'anonymousUser', NULL, NULL, '6C2B37035CE7084F6236A669AC6F309E', NULL);
INSERT INTO `logger` VALUES (2351, '2021-10-27 09:54:17', '0:0:0:0:0:0:0:1', '/login', 'anonymousUser', NULL, NULL, '6C2B37035CE7084F6236A669AC6F309E', NULL);
INSERT INTO `logger` VALUES (2352, '2021-10-27 09:54:17', '0:0:0:0:0:0:0:1', '/js/jquery.min.js', 'anonymousUser', NULL, NULL, '6C2B37035CE7084F6236A669AC6F309E', NULL);
INSERT INTO `logger` VALUES (2353, '2021-10-27 09:54:17', '0:0:0:0:0:0:0:1', '/css/ckeditor.css', 'anonymousUser', NULL, NULL, '6C2B37035CE7084F6236A669AC6F309E', NULL);
INSERT INTO `logger` VALUES (2354, '2021-10-27 09:54:17', '0:0:0:0:0:0:0:1', '/css/all.min.css', 'anonymousUser', NULL, NULL, '6C2B37035CE7084F6236A669AC6F309E', NULL);
INSERT INTO `logger` VALUES (2355, '2021-10-27 09:54:17', '0:0:0:0:0:0:0:1', '/css/style.css', 'anonymousUser', NULL, NULL, '6C2B37035CE7084F6236A669AC6F309E', NULL);
INSERT INTO `logger` VALUES (2356, '2021-10-27 09:54:17', '0:0:0:0:0:0:0:1', '/js/jquery-3.1.1.js', 'anonymousUser', NULL, NULL, '6C2B37035CE7084F6236A669AC6F309E', NULL);
INSERT INTO `logger` VALUES (2357, '2021-10-27 09:54:17', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.css', 'anonymousUser', NULL, NULL, '6C2B37035CE7084F6236A669AC6F309E', NULL);
INSERT INTO `logger` VALUES (2358, '2021-10-27 09:54:17', '0:0:0:0:0:0:0:1', '/js/script.js', 'anonymousUser', NULL, NULL, '6C2B37035CE7084F6236A669AC6F309E', NULL);
INSERT INTO `logger` VALUES (2359, '2021-10-27 09:54:17', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.js', 'anonymousUser', NULL, NULL, '6C2B37035CE7084F6236A669AC6F309E', NULL);
INSERT INTO `logger` VALUES (2360, '2021-10-27 09:54:18', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/icons.woff2', 'anonymousUser', NULL, NULL, '6C2B37035CE7084F6236A669AC6F309E', NULL);
INSERT INTO `logger` VALUES (2361, '2021-10-27 09:54:18', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/outline-icons.woff2', 'anonymousUser', NULL, NULL, '6C2B37035CE7084F6236A669AC6F309E', NULL);
INSERT INTO `logger` VALUES (2362, '2021-10-27 09:54:18', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/brand-icons.woff2', 'anonymousUser', NULL, NULL, '6C2B37035CE7084F6236A669AC6F309E', NULL);
INSERT INTO `logger` VALUES (2363, '2021-10-27 09:54:27', '0:0:0:0:0:0:0:1', '/registers/add/cnfrm/adff594e-c784-484c-b0c9-8512acde8e7b', 'anonymousUser', NULL, NULL, '6C2B37035CE7084F6236A669AC6F309E', NULL);
INSERT INTO `logger` VALUES (2364, '2021-10-27 09:54:27', '0:0:0:0:0:0:0:1', '/login', 'anonymousUser', NULL, NULL, '6C2B37035CE7084F6236A669AC6F309E', NULL);
INSERT INTO `logger` VALUES (2365, '2021-10-27 09:54:27', '0:0:0:0:0:0:0:1', '/js/jquery-3.1.1.js', 'anonymousUser', NULL, NULL, '6C2B37035CE7084F6236A669AC6F309E', NULL);
INSERT INTO `logger` VALUES (2366, '2021-10-27 09:54:27', '0:0:0:0:0:0:0:1', '/css/style.css', 'anonymousUser', NULL, NULL, '6C2B37035CE7084F6236A669AC6F309E', NULL);
INSERT INTO `logger` VALUES (2367, '2021-10-27 09:54:27', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.css', 'anonymousUser', NULL, NULL, '6C2B37035CE7084F6236A669AC6F309E', NULL);
INSERT INTO `logger` VALUES (2368, '2021-10-27 09:54:27', '0:0:0:0:0:0:0:1', '/css/all.min.css', 'anonymousUser', NULL, NULL, '6C2B37035CE7084F6236A669AC6F309E', NULL);
INSERT INTO `logger` VALUES (2369, '2021-10-27 09:54:27', '0:0:0:0:0:0:0:1', '/css/ckeditor.css', 'anonymousUser', NULL, NULL, '6C2B37035CE7084F6236A669AC6F309E', NULL);
INSERT INTO `logger` VALUES (2370, '2021-10-27 09:54:27', '0:0:0:0:0:0:0:1', '/js/jquery.min.js', 'anonymousUser', NULL, NULL, '6C2B37035CE7084F6236A669AC6F309E', NULL);
INSERT INTO `logger` VALUES (2371, '2021-10-27 09:54:27', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.js', 'anonymousUser', NULL, NULL, '6C2B37035CE7084F6236A669AC6F309E', NULL);
INSERT INTO `logger` VALUES (2372, '2021-10-27 09:54:28', '0:0:0:0:0:0:0:1', '/js/script.js', 'anonymousUser', NULL, NULL, '6C2B37035CE7084F6236A669AC6F309E', NULL);
INSERT INTO `logger` VALUES (2373, '2021-10-27 09:54:28', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/icons.woff2', 'anonymousUser', NULL, NULL, '6C2B37035CE7084F6236A669AC6F309E', NULL);
INSERT INTO `logger` VALUES (2374, '2021-10-27 09:54:28', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/outline-icons.woff2', 'anonymousUser', NULL, NULL, '6C2B37035CE7084F6236A669AC6F309E', NULL);
INSERT INTO `logger` VALUES (2375, '2021-10-27 09:54:28', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/brand-icons.woff2', 'anonymousUser', NULL, NULL, '6C2B37035CE7084F6236A669AC6F309E', NULL);
INSERT INTO `logger` VALUES (2376, '2021-10-27 09:54:39', '0:0:0:0:0:0:0:1', '/announce', 'ferhat@mail.com', 'ferhat', 'ROLE_MVC', '0E9B76E0BF198E8FC1227E057EE9C7A1', 'ferhat');
INSERT INTO `logger` VALUES (2377, '2021-10-27 09:54:39', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.css', 'ferhat@mail.com', 'ferhat', 'ROLE_MVC', '0E9B76E0BF198E8FC1227E057EE9C7A1', 'ferhat');
INSERT INTO `logger` VALUES (2378, '2021-10-27 09:54:39', '0:0:0:0:0:0:0:1', '/css/style.css', 'ferhat@mail.com', 'ferhat', 'ROLE_MVC', '0E9B76E0BF198E8FC1227E057EE9C7A1', 'ferhat');
INSERT INTO `logger` VALUES (2379, '2021-10-27 09:54:39', '0:0:0:0:0:0:0:1', '/css/ckeditor.css', 'ferhat@mail.com', 'ferhat', 'ROLE_MVC', '0E9B76E0BF198E8FC1227E057EE9C7A1', 'ferhat');
INSERT INTO `logger` VALUES (2380, '2021-10-27 09:54:39', '0:0:0:0:0:0:0:1', '/sitejs/announce.js', 'ferhat@mail.com', 'ferhat', 'ROLE_MVC', '0E9B76E0BF198E8FC1227E057EE9C7A1', 'ferhat');
INSERT INTO `logger` VALUES (2381, '2021-10-27 09:54:39', '0:0:0:0:0:0:0:1', '/css/all.min.css', 'ferhat@mail.com', 'ferhat', 'ROLE_MVC', '0E9B76E0BF198E8FC1227E057EE9C7A1', 'ferhat');
INSERT INTO `logger` VALUES (2382, '2021-10-27 09:54:39', '0:0:0:0:0:0:0:1', '/js/jquery-3.1.1.js', 'ferhat@mail.com', 'ferhat', 'ROLE_MVC', '0E9B76E0BF198E8FC1227E057EE9C7A1', 'ferhat');
INSERT INTO `logger` VALUES (2383, '2021-10-27 09:54:39', '0:0:0:0:0:0:0:1', '/js/jquery.min.js', 'ferhat@mail.com', 'ferhat', 'ROLE_MVC', '0E9B76E0BF198E8FC1227E057EE9C7A1', 'ferhat');
INSERT INTO `logger` VALUES (2384, '2021-10-27 09:54:39', '0:0:0:0:0:0:0:1', '/js/script.js', 'ferhat@mail.com', 'ferhat', 'ROLE_MVC', '0E9B76E0BF198E8FC1227E057EE9C7A1', 'ferhat');
INSERT INTO `logger` VALUES (2385, '2021-10-27 09:54:39', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.js', 'ferhat@mail.com', 'ferhat', 'ROLE_MVC', '0E9B76E0BF198E8FC1227E057EE9C7A1', 'ferhat');
INSERT INTO `logger` VALUES (2386, '2021-10-27 09:54:40', '0:0:0:0:0:0:0:1', '/announce/listed', 'ferhat@mail.com', 'ferhat', 'ROLE_MVC', '0E9B76E0BF198E8FC1227E057EE9C7A1', 'ferhat');
INSERT INTO `logger` VALUES (2387, '2021-10-27 09:54:40', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/icons.woff2', 'ferhat@mail.com', 'ferhat', 'ROLE_MVC', '0E9B76E0BF198E8FC1227E057EE9C7A1', 'ferhat');
INSERT INTO `logger` VALUES (2388, '2021-10-27 09:54:40', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/brand-icons.woff2', 'ferhat@mail.com', 'ferhat', 'ROLE_MVC', '0E9B76E0BF198E8FC1227E057EE9C7A1', 'ferhat');
INSERT INTO `logger` VALUES (2389, '2021-10-27 09:54:40', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/outline-icons.woff2', 'ferhat@mail.com', 'ferhat', 'ROLE_MVC', '0E9B76E0BF198E8FC1227E057EE9C7A1', 'ferhat');
INSERT INTO `logger` VALUES (2390, '2021-10-27 09:54:47', '0:0:0:0:0:0:0:1', '/gallery', 'ferhat@mail.com', 'ferhat', 'ROLE_MVC', '0E9B76E0BF198E8FC1227E057EE9C7A1', 'ferhat');
INSERT INTO `logger` VALUES (2391, '2021-10-27 09:54:47', '0:0:0:0:0:0:0:1', '/css/all.min.css', 'ferhat@mail.com', 'ferhat', 'ROLE_MVC', '0E9B76E0BF198E8FC1227E057EE9C7A1', 'ferhat');
INSERT INTO `logger` VALUES (2392, '2021-10-27 09:54:47', '0:0:0:0:0:0:0:1', '/css/ckeditor.css', 'ferhat@mail.com', 'ferhat', 'ROLE_MVC', '0E9B76E0BF198E8FC1227E057EE9C7A1', 'ferhat');
INSERT INTO `logger` VALUES (2393, '2021-10-27 09:54:47', '0:0:0:0:0:0:0:1', '/sitejs/gallery.js', 'ferhat@mail.com', 'ferhat', 'ROLE_MVC', '0E9B76E0BF198E8FC1227E057EE9C7A1', 'ferhat');
INSERT INTO `logger` VALUES (2394, '2021-10-27 09:54:47', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.css', 'ferhat@mail.com', 'ferhat', 'ROLE_MVC', '0E9B76E0BF198E8FC1227E057EE9C7A1', 'ferhat');
INSERT INTO `logger` VALUES (2395, '2021-10-27 09:54:47', '0:0:0:0:0:0:0:1', '/js/jquery-3.1.1.js', 'ferhat@mail.com', 'ferhat', 'ROLE_MVC', '0E9B76E0BF198E8FC1227E057EE9C7A1', 'ferhat');
INSERT INTO `logger` VALUES (2396, '2021-10-27 09:54:47', '0:0:0:0:0:0:0:1', '/css/style.css', 'ferhat@mail.com', 'ferhat', 'ROLE_MVC', '0E9B76E0BF198E8FC1227E057EE9C7A1', 'ferhat');
INSERT INTO `logger` VALUES (2397, '2021-10-27 09:54:47', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.js', 'ferhat@mail.com', 'ferhat', 'ROLE_MVC', '0E9B76E0BF198E8FC1227E057EE9C7A1', 'ferhat');
INSERT INTO `logger` VALUES (2398, '2021-10-27 09:54:47', '0:0:0:0:0:0:0:1', '/js/jquery.min.js', 'ferhat@mail.com', 'ferhat', 'ROLE_MVC', '0E9B76E0BF198E8FC1227E057EE9C7A1', 'ferhat');
INSERT INTO `logger` VALUES (2399, '2021-10-27 09:54:47', '0:0:0:0:0:0:0:1', '/js/script.js', 'ferhat@mail.com', 'ferhat', 'ROLE_MVC', '0E9B76E0BF198E8FC1227E057EE9C7A1', 'ferhat');
INSERT INTO `logger` VALUES (2400, '2021-10-27 09:54:47', '0:0:0:0:0:0:0:1', '/gallery/listed', 'ferhat@mail.com', 'ferhat', 'ROLE_MVC', '0E9B76E0BF198E8FC1227E057EE9C7A1', 'ferhat');
INSERT INTO `logger` VALUES (2401, '2021-10-27 09:54:47', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/brand-icons.woff2', 'ferhat@mail.com', 'ferhat', 'ROLE_MVC', '0E9B76E0BF198E8FC1227E057EE9C7A1', 'ferhat');
INSERT INTO `logger` VALUES (2402, '2021-10-27 09:54:47', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/icons.woff2', 'ferhat@mail.com', 'ferhat', 'ROLE_MVC', '0E9B76E0BF198E8FC1227E057EE9C7A1', 'ferhat');
INSERT INTO `logger` VALUES (2403, '2021-10-27 09:54:47', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/outline-icons.woff2', 'ferhat@mail.com', 'ferhat', 'ROLE_MVC', '0E9B76E0BF198E8FC1227E057EE9C7A1', 'ferhat');
INSERT INTO `logger` VALUES (2404, '2021-10-27 09:54:53', '0:0:0:0:0:0:0:1', '/login', 'anonymousUser', NULL, NULL, '0F6D451A538A29F4D8EFAEBD45727028', NULL);
INSERT INTO `logger` VALUES (2405, '2021-10-27 09:54:53', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.css', 'anonymousUser', NULL, NULL, '0F6D451A538A29F4D8EFAEBD45727028', NULL);
INSERT INTO `logger` VALUES (2406, '2021-10-27 09:54:53', '0:0:0:0:0:0:0:1', '/css/style.css', 'anonymousUser', NULL, NULL, '0F6D451A538A29F4D8EFAEBD45727028', NULL);
INSERT INTO `logger` VALUES (2407, '2021-10-27 09:54:53', '0:0:0:0:0:0:0:1', '/css/ckeditor.css', 'anonymousUser', NULL, NULL, '0F6D451A538A29F4D8EFAEBD45727028', NULL);
INSERT INTO `logger` VALUES (2408, '2021-10-27 09:54:53', '0:0:0:0:0:0:0:1', '/js/jquery-3.1.1.js', 'anonymousUser', NULL, NULL, '0F6D451A538A29F4D8EFAEBD45727028', NULL);
INSERT INTO `logger` VALUES (2409, '2021-10-27 09:54:53', '0:0:0:0:0:0:0:1', '/css/all.min.css', 'anonymousUser', NULL, NULL, '0F6D451A538A29F4D8EFAEBD45727028', NULL);
INSERT INTO `logger` VALUES (2410, '2021-10-27 09:54:53', '0:0:0:0:0:0:0:1', '/js/jquery.min.js', 'anonymousUser', NULL, NULL, '0F6D451A538A29F4D8EFAEBD45727028', NULL);
INSERT INTO `logger` VALUES (2411, '2021-10-27 09:54:53', '0:0:0:0:0:0:0:1', '/js/script.js', 'anonymousUser', NULL, NULL, '0F6D451A538A29F4D8EFAEBD45727028', NULL);
INSERT INTO `logger` VALUES (2412, '2021-10-27 09:54:53', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.js', 'anonymousUser', NULL, NULL, '0F6D451A538A29F4D8EFAEBD45727028', NULL);
INSERT INTO `logger` VALUES (2413, '2021-10-27 09:54:54', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/brand-icons.woff2', 'anonymousUser', NULL, NULL, '0F6D451A538A29F4D8EFAEBD45727028', NULL);
INSERT INTO `logger` VALUES (2414, '2021-10-27 09:54:54', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/outline-icons.woff2', 'anonymousUser', NULL, NULL, '0F6D451A538A29F4D8EFAEBD45727028', NULL);
INSERT INTO `logger` VALUES (2415, '2021-10-27 09:54:54', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/icons.woff2', 'anonymousUser', NULL, NULL, '0F6D451A538A29F4D8EFAEBD45727028', NULL);
INSERT INTO `logger` VALUES (2416, '2021-10-27 09:55:07', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.css', 'anonymousUser', NULL, NULL, '0F6D451A538A29F4D8EFAEBD45727028', NULL);
INSERT INTO `logger` VALUES (2417, '2021-10-27 09:55:07', '0:0:0:0:0:0:0:1', '/css/style.css', 'anonymousUser', NULL, NULL, '0F6D451A538A29F4D8EFAEBD45727028', NULL);
INSERT INTO `logger` VALUES (2418, '2021-10-27 09:55:07', '0:0:0:0:0:0:0:1', '/css/ckeditor.css', 'anonymousUser', NULL, NULL, '0F6D451A538A29F4D8EFAEBD45727028', NULL);
INSERT INTO `logger` VALUES (2419, '2021-10-27 09:55:07', '0:0:0:0:0:0:0:1', '/css/all.min.css', 'anonymousUser', NULL, NULL, '0F6D451A538A29F4D8EFAEBD45727028', NULL);
INSERT INTO `logger` VALUES (2420, '2021-10-27 09:55:08', '0:0:0:0:0:0:0:1', '/css/style.css.map', 'anonymousUser', NULL, NULL, '0F6D451A538A29F4D8EFAEBD45727028', NULL);
INSERT INTO `logger` VALUES (2421, '2021-10-27 09:55:15', '0:0:0:0:0:0:0:1', '/announce', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2422, '2021-10-27 09:55:15', '0:0:0:0:0:0:0:1', '/css/style.css', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2423, '2021-10-27 09:55:15', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.css', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2424, '2021-10-27 09:55:15', '0:0:0:0:0:0:0:1', '/js/jquery-3.1.1.js', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2425, '2021-10-27 09:55:15', '0:0:0:0:0:0:0:1', '/sitejs/announce.js', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2426, '2021-10-27 09:55:15', '0:0:0:0:0:0:0:1', '/css/all.min.css', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2427, '2021-10-27 09:55:15', '0:0:0:0:0:0:0:1', '/css/ckeditor.css', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2428, '2021-10-27 09:55:15', '0:0:0:0:0:0:0:1', '/js/jquery.min.js', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2429, '2021-10-27 09:55:15', '0:0:0:0:0:0:0:1', '/js/script.js', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2430, '2021-10-27 09:55:15', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.js', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2431, '2021-10-27 09:55:16', '0:0:0:0:0:0:0:1', '/css/style.css.map', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2432, '2021-10-27 09:55:16', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2433, '2021-10-27 09:55:16', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/brand-icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2434, '2021-10-27 09:55:16', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/outline-icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2435, '2021-10-27 09:55:16', '0:0:0:0:0:0:0:1', '/announce/listed', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2436, '2021-10-27 09:55:42', '0:0:0:0:0:0:0:1', '/announce/addAnnounce', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2437, '2021-10-27 09:55:43', '0:0:0:0:0:0:0:1', '/announce/listed', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2438, '2021-10-27 09:55:48', '0:0:0:0:0:0:0:1', '/announce/delete/3', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2439, '2021-10-27 09:55:48', '0:0:0:0:0:0:0:1', '/announce/listed', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2440, '2021-10-27 09:55:52', '0:0:0:0:0:0:0:1', '/announce/pagelisted/1/10', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2441, '2021-10-27 09:56:42', '0:0:0:0:0:0:0:1', '/gallery', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2442, '2021-10-27 09:56:42', '0:0:0:0:0:0:0:1', '/sitejs/gallery.js', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2443, '2021-10-27 09:56:42', '0:0:0:0:0:0:0:1', '/css/all.min.css', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2444, '2021-10-27 09:56:42', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.css', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2445, '2021-10-27 09:56:42', '0:0:0:0:0:0:0:1', '/css/ckeditor.css', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2446, '2021-10-27 09:56:43', '0:0:0:0:0:0:0:1', '/js/jquery.min.js', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2447, '2021-10-27 09:56:43', '0:0:0:0:0:0:0:1', '/css/style.css', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2448, '2021-10-27 09:56:43', '0:0:0:0:0:0:0:1', '/js/jquery-3.1.1.js', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2449, '2021-10-27 09:56:43', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.js', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2450, '2021-10-27 09:56:43', '0:0:0:0:0:0:0:1', '/js/script.js', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2451, '2021-10-27 09:56:43', '0:0:0:0:0:0:0:1', '/gallery/listed', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2452, '2021-10-27 09:56:43', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2453, '2021-10-27 09:56:43', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/brand-icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2454, '2021-10-27 09:56:43', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/outline-icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2455, '2021-10-27 09:56:43', '0:0:0:0:0:0:0:1', '/css/style.css.map', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2456, '2021-10-27 09:56:47', '0:0:0:0:0:0:0:1', '/gallery/detail/listed/fdgdfg', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2457, '2021-10-27 09:56:47', '0:0:0:0:0:0:0:1', '/uploads/gallery/adddf787-0d11-4c03-b37d-8f0e5f05db0d1.png', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2458, '2021-10-27 09:56:47', '0:0:0:0:0:0:0:1', '/uploads/gallery/f565993c-fe6d-4b1a-996b-412629171db25.png', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2459, '2021-10-27 09:56:49', '0:0:0:0:0:0:0:1', '/gallery/detail/listed/YeniGaleriKategori', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2460, '2021-10-27 09:56:49', '0:0:0:0:0:0:0:1', '/uploads/gallery/4bc45743-98f1-41c7-a0e6-68f592ce39c82.jpg', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2461, '2021-10-27 09:56:49', '0:0:0:0:0:0:0:1', '/uploads/gallery/654fc9fd-43a9-4ffb-88c2-024ca0d38fb34.jpg', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2462, '2021-10-27 09:56:49', '0:0:0:0:0:0:0:1', '/uploads/gallery/faa4c404-f6f9-414e-a064-6e4f034291a13.jpg', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2463, '2021-10-27 09:57:11', '0:0:0:0:0:0:0:1', '/gallery/imageUpload', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2464, '2021-10-27 09:57:11', '0:0:0:0:0:0:0:1', '/gallery', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2465, '2021-10-27 09:57:11', '0:0:0:0:0:0:0:1', '/css/ckeditor.css', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2466, '2021-10-27 09:57:11', '0:0:0:0:0:0:0:1', '/css/style.css', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2467, '2021-10-27 09:57:11', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.css', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2468, '2021-10-27 09:57:11', '0:0:0:0:0:0:0:1', '/css/all.min.css', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2469, '2021-10-27 09:57:11', '0:0:0:0:0:0:0:1', '/js/jquery-3.1.1.js', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2470, '2021-10-27 09:57:11', '0:0:0:0:0:0:0:1', '/sitejs/gallery.js', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2471, '2021-10-27 09:57:11', '0:0:0:0:0:0:0:1', '/js/script.js', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2472, '2021-10-27 09:57:11', '0:0:0:0:0:0:0:1', '/js/jquery.min.js', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2473, '2021-10-27 09:57:11', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.js', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2474, '2021-10-27 09:57:12', '0:0:0:0:0:0:0:1', '/gallery/listed', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2475, '2021-10-27 09:57:12', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2476, '2021-10-27 09:57:12', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/brand-icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2477, '2021-10-27 09:57:12', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/outline-icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2478, '2021-10-27 09:57:12', '0:0:0:0:0:0:0:1', '/css/style.css.map', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2479, '2021-10-27 09:57:17', '0:0:0:0:0:0:0:1', '/gallery/detail/listed/YeniGaleriKategori', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2480, '2021-10-27 09:57:17', '0:0:0:0:0:0:0:1', '/uploads/gallery/654fc9fd-43a9-4ffb-88c2-024ca0d38fb34.jpg', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2481, '2021-10-27 09:57:17', '0:0:0:0:0:0:0:1', '/uploads/gallery/faa4c404-f6f9-414e-a064-6e4f034291a13.jpg', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2482, '2021-10-27 09:57:17', '0:0:0:0:0:0:0:1', '/uploads/gallery/4bc45743-98f1-41c7-a0e6-68f592ce39c82.jpg', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2483, '2021-10-27 09:57:23', '0:0:0:0:0:0:0:1', '/gallery/detail/listed/sdfdsfsd', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2484, '2021-10-27 09:57:23', '0:0:0:0:0:0:0:1', '/uploads/gallery/cbe77ee6-a140-48d7-a3d3-31a6ad7c54cdy.png', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2485, '2021-10-27 09:57:25', '0:0:0:0:0:0:0:1', '/gallery/detail/listed/YeniGaleriKategori', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2486, '2021-10-27 09:57:25', '0:0:0:0:0:0:0:1', '/uploads/gallery/4bc45743-98f1-41c7-a0e6-68f592ce39c82.jpg', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2487, '2021-10-27 09:57:25', '0:0:0:0:0:0:0:1', '/uploads/gallery/faa4c404-f6f9-414e-a064-6e4f034291a13.jpg', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2488, '2021-10-27 09:57:25', '0:0:0:0:0:0:0:1', '/uploads/gallery/654fc9fd-43a9-4ffb-88c2-024ca0d38fb34.jpg', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2489, '2021-10-27 09:57:27', '0:0:0:0:0:0:0:1', '/gallery/delete/20', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2490, '2021-10-27 09:57:27', '0:0:0:0:0:0:0:1', '/gallery', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2491, '2021-10-27 09:57:29', '0:0:0:0:0:0:0:1', '/js/jquery-3.1.1.js', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2492, '2021-10-27 09:57:29', '0:0:0:0:0:0:0:1', '/css/all.min.css', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2493, '2021-10-27 09:57:29', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.css', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2494, '2021-10-27 09:57:29', '0:0:0:0:0:0:0:1', '/css/style.css', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2495, '2021-10-27 09:57:29', '0:0:0:0:0:0:0:1', '/css/ckeditor.css', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2496, '2021-10-27 09:57:29', '0:0:0:0:0:0:0:1', '/sitejs/gallery.js', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2497, '2021-10-27 09:57:29', '0:0:0:0:0:0:0:1', '/js/script.js', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2498, '2021-10-27 09:57:29', '0:0:0:0:0:0:0:1', '/js/jquery.min.js', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2499, '2021-10-27 09:57:29', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.js', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2500, '2021-10-27 09:57:29', '0:0:0:0:0:0:0:1', '/css/style.css.map', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2501, '2021-10-27 09:57:29', '0:0:0:0:0:0:0:1', '/gallery/listed', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2502, '2021-10-27 09:57:30', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2503, '2021-10-27 09:57:30', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/outline-icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2504, '2021-10-27 09:57:30', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/brand-icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2505, '2021-10-27 09:57:42', '0:0:0:0:0:0:0:1', '/customer', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2506, '2021-10-27 09:57:42', '0:0:0:0:0:0:0:1', '/css/style.css', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2507, '2021-10-27 09:57:42', '0:0:0:0:0:0:0:1', '/js/jquery-3.1.1.js', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2508, '2021-10-27 09:57:42', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.css', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2509, '2021-10-27 09:57:42', '0:0:0:0:0:0:0:1', '/css/all.min.css', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2510, '2021-10-27 09:57:42', '0:0:0:0:0:0:0:1', '/js/jquery.min.js', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2511, '2021-10-27 09:57:42', '0:0:0:0:0:0:0:1', '/css/ckeditor.css', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2512, '2021-10-27 09:57:42', '0:0:0:0:0:0:0:1', '/js/script.js', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2513, '2021-10-27 09:57:42', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.js', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2514, '2021-10-27 09:57:43', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2515, '2021-10-27 09:57:43', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/outline-icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2516, '2021-10-27 09:57:43', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/brand-icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2517, '2021-10-27 09:57:43', '0:0:0:0:0:0:0:1', '/css/style.css.map', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2518, '2021-10-27 09:57:51', '0:0:0:0:0:0:0:1', '/customerAdd', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2519, '2021-10-27 09:57:57', '0:0:0:0:0:0:0:1', '/customer', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2520, '2021-10-27 09:57:58', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.css', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2521, '2021-10-27 09:57:58', '0:0:0:0:0:0:0:1', '/js/jquery-3.1.1.js', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2522, '2021-10-27 09:57:58', '0:0:0:0:0:0:0:1', '/css/style.css', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2523, '2021-10-27 09:57:58', '0:0:0:0:0:0:0:1', '/css/ckeditor.css', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2524, '2021-10-27 09:57:58', '0:0:0:0:0:0:0:1', '/css/all.min.css', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2525, '2021-10-27 09:57:58', '0:0:0:0:0:0:0:1', '/js/jquery.min.js', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2526, '2021-10-27 09:57:58', '0:0:0:0:0:0:0:1', '/js/script.js', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2527, '2021-10-27 09:57:58', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.js', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2528, '2021-10-27 09:57:58', '0:0:0:0:0:0:0:1', '/css/style.css.map', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2529, '2021-10-27 09:57:59', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2530, '2021-10-27 09:57:59', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/brand-icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2531, '2021-10-27 09:57:59', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/outline-icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2532, '2021-10-27 09:58:18', '0:0:0:0:0:0:0:1', '/product', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2533, '2021-10-27 09:58:19', '0:0:0:0:0:0:0:1', '/js/jquery-3.1.1.js', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2534, '2021-10-27 09:58:19', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.css', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2535, '2021-10-27 09:58:19', '0:0:0:0:0:0:0:1', '/css/style.css', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2536, '2021-10-27 09:58:19', '0:0:0:0:0:0:0:1', '/css/all.min.css', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2537, '2021-10-27 09:58:19', '0:0:0:0:0:0:0:1', '/css/ckeditor.css', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2538, '2021-10-27 09:58:19', '0:0:0:0:0:0:0:1', '/js/jquery.min.js', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2539, '2021-10-27 09:58:19', '0:0:0:0:0:0:0:1', '/js/script.js', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2540, '2021-10-27 09:58:19', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.js', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2541, '2021-10-27 09:58:19', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/outline-icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2542, '2021-10-27 09:58:19', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2543, '2021-10-27 09:58:19', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/brand-icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2544, '2021-10-27 09:58:19', '0:0:0:0:0:0:0:1', '/css/style.css.map', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2545, '2021-10-27 09:58:31', '0:0:0:0:0:0:0:1', '/product/add', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2546, '2021-10-27 09:58:31', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.css', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2547, '2021-10-27 09:58:31', '0:0:0:0:0:0:0:1', '/js/jquery.min.js', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2548, '2021-10-27 09:58:31', '0:0:0:0:0:0:0:1', '/css/ckeditor.css', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2549, '2021-10-27 09:58:31', '0:0:0:0:0:0:0:1', '/css/all.min.css', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2550, '2021-10-27 09:58:31', '0:0:0:0:0:0:0:1', '/js/jquery-3.1.1.js', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2551, '2021-10-27 09:58:31', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.js', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2552, '2021-10-27 09:58:31', '0:0:0:0:0:0:0:1', '/css/style.css', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2553, '2021-10-27 09:58:31', '0:0:0:0:0:0:0:1', '/js/script.js', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2554, '2021-10-27 09:58:32', '0:0:0:0:0:0:0:1', '/css/style.css.map', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2555, '2021-10-27 09:58:32', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2556, '2021-10-27 09:58:32', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/outline-icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2557, '2021-10-27 09:58:32', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/brand-icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2558, '2021-10-27 09:58:38', '0:0:0:0:0:0:0:1', '/product', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2559, '2021-10-27 09:58:38', '0:0:0:0:0:0:0:1', '/js/jquery.min.js', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2560, '2021-10-27 09:58:38', '0:0:0:0:0:0:0:1', '/css/all.min.css', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2561, '2021-10-27 09:58:38', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.css', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2562, '2021-10-27 09:58:38', '0:0:0:0:0:0:0:1', '/js/jquery-3.1.1.js', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2563, '2021-10-27 09:58:38', '0:0:0:0:0:0:0:1', '/css/ckeditor.css', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2564, '2021-10-27 09:58:38', '0:0:0:0:0:0:0:1', '/css/style.css', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2565, '2021-10-27 09:58:38', '0:0:0:0:0:0:0:1', '/js/script.js', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2566, '2021-10-27 09:58:38', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.js', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2567, '2021-10-27 09:58:39', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/brand-icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2568, '2021-10-27 09:58:39', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2569, '2021-10-27 09:58:39', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/outline-icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2570, '2021-10-27 09:58:39', '0:0:0:0:0:0:0:1', '/css/style.css.map', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2571, '2021-10-27 09:59:27', '0:0:0:0:0:0:0:1', '/product/add', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2572, '2021-10-27 09:59:30', '0:0:0:0:0:0:0:1', '/js/jquery-3.1.1.js', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2573, '2021-10-27 09:59:30', '0:0:0:0:0:0:0:1', '/css/style.css', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2574, '2021-10-27 09:59:30', '0:0:0:0:0:0:0:1', '/css/all.min.css', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2575, '2021-10-27 09:59:30', '0:0:0:0:0:0:0:1', '/js/jquery.min.js', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2576, '2021-10-27 09:59:30', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.css', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2577, '2021-10-27 09:59:30', '0:0:0:0:0:0:0:1', '/css/ckeditor.css', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2578, '2021-10-27 09:59:30', '0:0:0:0:0:0:0:1', '/js/script.js', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2579, '2021-10-27 09:59:30', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.js', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2580, '2021-10-27 09:59:31', '0:0:0:0:0:0:0:1', '/css/style.css.map', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2581, '2021-10-27 09:59:31', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2582, '2021-10-27 09:59:31', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/outline-icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2583, '2021-10-27 09:59:31', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/brand-icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2584, '2021-10-27 09:59:36', '0:0:0:0:0:0:0:1', '/productManager', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2585, '2021-10-27 09:59:36', '0:0:0:0:0:0:0:1', '/js/jquery-3.1.1.js', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2586, '2021-10-27 09:59:36', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.css', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2587, '2021-10-27 09:59:36', '0:0:0:0:0:0:0:1', '/css/style.css', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2588, '2021-10-27 09:59:36', '0:0:0:0:0:0:0:1', '/css/ckeditor.css', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2589, '2021-10-27 09:59:36', '0:0:0:0:0:0:0:1', '/css/all.min.css', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2590, '2021-10-27 09:59:36', '0:0:0:0:0:0:0:1', '/sitejs/productManagement.js', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2591, '2021-10-27 09:59:36', '0:0:0:0:0:0:0:1', '/js/script.js', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2592, '2021-10-27 09:59:36', '0:0:0:0:0:0:0:1', '/js/jquery.min.js', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2593, '2021-10-27 09:59:36', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.js', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2594, '2021-10-27 09:59:36', '0:0:0:0:0:0:0:1', '/productManager/listed', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2595, '2021-10-27 09:59:36', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2596, '2021-10-27 09:59:36', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/outline-icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2597, '2021-10-27 09:59:36', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/brand-icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2598, '2021-10-27 09:59:36', '0:0:0:0:0:0:0:1', '/css/style.css.map', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2599, '2021-10-27 09:59:39', '0:0:0:0:0:0:0:1', '/productManager/pagelisted/1/5', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2600, '2021-10-27 10:00:12', '0:0:0:0:0:0:0:1', '/productManager', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2601, '2021-10-27 10:00:12', '0:0:0:0:0:0:0:1', '/js/jquery-3.1.1.js', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2602, '2021-10-27 10:00:12', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.css', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2603, '2021-10-27 10:00:12', '0:0:0:0:0:0:0:1', '/css/style.css', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2604, '2021-10-27 10:00:12', '0:0:0:0:0:0:0:1', '/css/all.min.css', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2605, '2021-10-27 10:00:12', '0:0:0:0:0:0:0:1', '/sitejs/productManagement.js', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2606, '2021-10-27 10:00:12', '0:0:0:0:0:0:0:1', '/css/ckeditor.css', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2607, '2021-10-27 10:00:12', '0:0:0:0:0:0:0:1', '/js/jquery.min.js', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2608, '2021-10-27 10:00:12', '0:0:0:0:0:0:0:1', '/js/script.js', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2609, '2021-10-27 10:00:12', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.js', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2610, '2021-10-27 10:00:12', '0:0:0:0:0:0:0:1', '/productManager/listed', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2611, '2021-10-27 10:00:12', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2612, '2021-10-27 10:00:12', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/outline-icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2613, '2021-10-27 10:00:12', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/brand-icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2614, '2021-10-27 10:00:12', '0:0:0:0:0:0:0:1', '/css/style.css.map', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2615, '2021-10-27 10:00:15', '0:0:0:0:0:0:0:1', '/productManager/pagelisted/1/5', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2616, '2021-10-27 10:00:38', '0:0:0:0:0:0:0:1', '/productManager/pagelisted/0/5', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2617, '2021-10-27 10:00:48', '0:0:0:0:0:0:0:1', '/productManager/delete/3', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2618, '2021-10-27 10:00:48', '0:0:0:0:0:0:0:1', '/productManager', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2619, '2021-10-27 10:00:50', '0:0:0:0:0:0:0:1', '/js/jquery-3.1.1.js', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2620, '2021-10-27 10:00:50', '0:0:0:0:0:0:0:1', '/css/all.min.css', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2621, '2021-10-27 10:00:50', '0:0:0:0:0:0:0:1', '/sitejs/productManagement.js', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2622, '2021-10-27 10:00:50', '0:0:0:0:0:0:0:1', '/css/style.css', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2623, '2021-10-27 10:00:50', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.css', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2624, '2021-10-27 10:00:50', '0:0:0:0:0:0:0:1', '/css/ckeditor.css', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2625, '2021-10-27 10:00:50', '0:0:0:0:0:0:0:1', '/js/script.js', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2626, '2021-10-27 10:00:50', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.js', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2627, '2021-10-27 10:00:50', '0:0:0:0:0:0:0:1', '/js/jquery.min.js', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2628, '2021-10-27 10:00:50', '0:0:0:0:0:0:0:1', '/css/style.css.map', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2629, '2021-10-27 10:00:50', '0:0:0:0:0:0:0:1', '/productManager/listed', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2630, '2021-10-27 10:00:50', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2631, '2021-10-27 10:00:51', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/outline-icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2632, '2021-10-27 10:00:51', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/brand-icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2633, '2021-10-27 10:00:56', '0:0:0:0:0:0:0:1', '/productManager/delete/7', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2634, '2021-10-27 10:00:56', '0:0:0:0:0:0:0:1', '/productManager', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2635, '2021-10-27 10:00:57', '0:0:0:0:0:0:0:1', '/css/style.css', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2636, '2021-10-27 10:00:57', '0:0:0:0:0:0:0:1', '/css/all.min.css', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2637, '2021-10-27 10:00:57', '0:0:0:0:0:0:0:1', '/css/ckeditor.css', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2638, '2021-10-27 10:00:57', '0:0:0:0:0:0:0:1', '/js/jquery-3.1.1.js', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2639, '2021-10-27 10:00:57', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.css', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2640, '2021-10-27 10:00:57', '0:0:0:0:0:0:0:1', '/sitejs/productManagement.js', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2641, '2021-10-27 10:00:58', '0:0:0:0:0:0:0:1', '/js/script.js', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2642, '2021-10-27 10:00:58', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.js', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2643, '2021-10-27 10:00:58', '0:0:0:0:0:0:0:1', '/js/jquery.min.js', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2644, '2021-10-27 10:00:58', '0:0:0:0:0:0:0:1', '/css/style.css.map', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2645, '2021-10-27 10:00:58', '0:0:0:0:0:0:0:1', '/productManager/listed', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2646, '2021-10-27 10:00:58', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2647, '2021-10-27 10:00:58', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/brand-icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2648, '2021-10-27 10:00:58', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/outline-icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2649, '2021-10-27 10:01:09', '0:0:0:0:0:0:0:1', '/orders', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2650, '2021-10-27 10:01:09', '0:0:0:0:0:0:0:1', '/js/jquery-3.1.1.js', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2651, '2021-10-27 10:01:09', '0:0:0:0:0:0:0:1', '/css/all.min.css', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2652, '2021-10-27 10:01:09', '0:0:0:0:0:0:0:1', '/css/ckeditor.css', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2653, '2021-10-27 10:01:09', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.css', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2654, '2021-10-27 10:01:09', '0:0:0:0:0:0:0:1', '/css/style.css', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2655, '2021-10-27 10:01:09', '0:0:0:0:0:0:0:1', '/js/script.js', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2656, '2021-10-27 10:01:09', '0:0:0:0:0:0:0:1', '/js/jquery.min.js', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2657, '2021-10-27 10:01:09', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.js', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2658, '2021-10-27 10:01:09', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/brand-icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2659, '2021-10-27 10:01:09', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/outline-icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2660, '2021-10-27 10:01:09', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2661, '2021-10-27 10:01:10', '0:0:0:0:0:0:0:1', '/css/style.css.map', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2662, '2021-10-27 10:01:18', '0:0:0:0:0:0:0:1', '/advertisement', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2663, '2021-10-27 10:01:18', '0:0:0:0:0:0:0:1', '/css/style.css', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2664, '2021-10-27 10:01:18', '0:0:0:0:0:0:0:1', '/css/all.min.css', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2665, '2021-10-27 10:01:18', '0:0:0:0:0:0:0:1', '/js/jquery-3.1.1.js', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2666, '2021-10-27 10:01:18', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.css', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2667, '2021-10-27 10:01:18', '0:0:0:0:0:0:0:1', '/css/ckeditor.css', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2668, '2021-10-27 10:01:18', '0:0:0:0:0:0:0:1', '/sitejs/advertisement.js', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2669, '2021-10-27 10:01:18', '0:0:0:0:0:0:0:1', '/js/jquery.min.js', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2670, '2021-10-27 10:01:18', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.js', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2671, '2021-10-27 10:01:18', '0:0:0:0:0:0:0:1', '/js/script.js', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2672, '2021-10-27 10:01:18', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2673, '2021-10-27 10:01:18', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/outline-icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2674, '2021-10-27 10:01:18', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/brand-icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2675, '2021-10-27 10:01:18', '0:0:0:0:0:0:0:1', '/css/style.css.map', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2676, '2021-10-27 10:01:18', '0:0:0:0:0:0:0:1', '/advertisement/pagination/0/10', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2677, '2021-10-27 10:01:44', '0:0:0:0:0:0:0:1', '/advertisement/add', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2678, '2021-10-27 10:01:44', '0:0:0:0:0:0:0:1', '/advertisement', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2679, '2021-10-27 10:01:44', '0:0:0:0:0:0:0:1', '/js/jquery-3.1.1.js', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2680, '2021-10-27 10:01:44', '0:0:0:0:0:0:0:1', '/css/all.min.css', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2681, '2021-10-27 10:01:44', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.css', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2682, '2021-10-27 10:01:44', '0:0:0:0:0:0:0:1', '/css/style.css', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2683, '2021-10-27 10:01:44', '0:0:0:0:0:0:0:1', '/sitejs/advertisement.js', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2684, '2021-10-27 10:01:44', '0:0:0:0:0:0:0:1', '/css/ckeditor.css', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2685, '2021-10-27 10:01:44', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.js', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2686, '2021-10-27 10:01:44', '0:0:0:0:0:0:0:1', '/js/jquery.min.js', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2687, '2021-10-27 10:01:44', '0:0:0:0:0:0:0:1', '/js/script.js', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2688, '2021-10-27 10:01:44', '0:0:0:0:0:0:0:1', '/advertisement/pagination/0/10', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2689, '2021-10-27 10:01:45', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/outline-icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2690, '2021-10-27 10:01:45', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2691, '2021-10-27 10:01:45', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/brand-icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2692, '2021-10-27 10:02:02', '0:0:0:0:0:0:0:1', '/content', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2693, '2021-10-27 10:02:02', '0:0:0:0:0:0:0:1', '/js/jquery.min.js', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2694, '2021-10-27 10:02:02', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.css', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2695, '2021-10-27 10:02:02', '0:0:0:0:0:0:0:1', '/css/all.min.css', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2696, '2021-10-27 10:02:02', '0:0:0:0:0:0:0:1', '/css/style.css', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2697, '2021-10-27 10:02:02', '0:0:0:0:0:0:0:1', '/js/jquery-3.1.1.js', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2698, '2021-10-27 10:02:02', '0:0:0:0:0:0:0:1', '/css/ckeditor.css', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2699, '2021-10-27 10:02:02', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.js', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2700, '2021-10-27 10:02:02', '0:0:0:0:0:0:0:1', '/js/script.js', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2701, '2021-10-27 10:02:03', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/outline-icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2702, '2021-10-27 10:02:03', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/brand-icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2703, '2021-10-27 10:02:03', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2704, '2021-10-27 10:02:20', '0:0:0:0:0:0:0:1', '/content/add', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2705, '2021-10-27 10:02:20', '0:0:0:0:0:0:0:1', '/content', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2706, '2021-10-27 10:02:20', '0:0:0:0:0:0:0:1', '/css/style.css', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2707, '2021-10-27 10:02:20', '0:0:0:0:0:0:0:1', '/js/jquery.min.js', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2708, '2021-10-27 10:02:20', '0:0:0:0:0:0:0:1', '/js/jquery-3.1.1.js', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2709, '2021-10-27 10:02:20', '0:0:0:0:0:0:0:1', '/css/ckeditor.css', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2710, '2021-10-27 10:02:20', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.css', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2711, '2021-10-27 10:02:20', '0:0:0:0:0:0:0:1', '/css/all.min.css', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2712, '2021-10-27 10:02:20', '0:0:0:0:0:0:0:1', '/js/script.js', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2713, '2021-10-27 10:02:20', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.js', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2714, '2021-10-27 10:02:21', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/brand-icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2715, '2021-10-27 10:02:21', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/outline-icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2716, '2021-10-27 10:02:21', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2717, '2021-10-27 10:02:29', '0:0:0:0:0:0:0:1', '/content/filter/1', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2718, '2021-10-27 10:02:30', '0:0:0:0:0:0:0:1', '/js/jquery.min.js', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2719, '2021-10-27 10:02:30', '0:0:0:0:0:0:0:1', '/css/ckeditor.css', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2720, '2021-10-27 10:02:30', '0:0:0:0:0:0:0:1', '/css/all.min.css', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2721, '2021-10-27 10:02:30', '0:0:0:0:0:0:0:1', '/css/style.css', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2722, '2021-10-27 10:02:30', '0:0:0:0:0:0:0:1', '/js/jquery-3.1.1.js', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2723, '2021-10-27 10:02:30', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.css', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2724, '2021-10-27 10:02:30', '0:0:0:0:0:0:0:1', '/js/script.js', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2725, '2021-10-27 10:02:30', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.js', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2726, '2021-10-27 10:02:30', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/outline-icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2727, '2021-10-27 10:02:30', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/brand-icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2728, '2021-10-27 10:02:30', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2729, '2021-10-27 10:02:33', '0:0:0:0:0:0:0:1', '/content/filter/0', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2730, '2021-10-27 10:02:33', '0:0:0:0:0:0:0:1', '/css/ckeditor.css', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2731, '2021-10-27 10:02:33', '0:0:0:0:0:0:0:1', '/js/jquery.min.js', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2732, '2021-10-27 10:02:33', '0:0:0:0:0:0:0:1', '/css/style.css', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2733, '2021-10-27 10:02:33', '0:0:0:0:0:0:0:1', '/js/jquery-3.1.1.js', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2734, '2021-10-27 10:02:33', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.css', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2735, '2021-10-27 10:02:33', '0:0:0:0:0:0:0:1', '/css/all.min.css', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2736, '2021-10-27 10:02:34', '0:0:0:0:0:0:0:1', '/js/script.js', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2737, '2021-10-27 10:02:34', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.js', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2738, '2021-10-27 10:02:34', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/outline-icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2739, '2021-10-27 10:02:34', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/brand-icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2740, '2021-10-27 10:02:34', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2741, '2021-10-27 10:02:37', '0:0:0:0:0:0:0:1', '/content/filter/1', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2742, '2021-10-27 10:02:37', '0:0:0:0:0:0:0:1', '/css/style.css', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2743, '2021-10-27 10:02:37', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.css', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2744, '2021-10-27 10:02:37', '0:0:0:0:0:0:0:1', '/js/jquery-3.1.1.js', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2745, '2021-10-27 10:02:37', '0:0:0:0:0:0:0:1', '/css/all.min.css', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2746, '2021-10-27 10:02:37', '0:0:0:0:0:0:0:1', '/css/ckeditor.css', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2747, '2021-10-27 10:02:37', '0:0:0:0:0:0:0:1', '/js/jquery.min.js', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2748, '2021-10-27 10:02:37', '0:0:0:0:0:0:0:1', '/js/script.js', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2749, '2021-10-27 10:02:37', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.js', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2750, '2021-10-27 10:02:38', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2751, '2021-10-27 10:02:38', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/outline-icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2752, '2021-10-27 10:02:38', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/brand-icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2753, '2021-10-27 10:02:39', '0:0:0:0:0:0:0:1', '/content/update/2', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2754, '2021-10-27 10:02:40', '0:0:0:0:0:0:0:1', '/content', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2755, '2021-10-27 10:02:40', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.css', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2756, '2021-10-27 10:02:40', '0:0:0:0:0:0:0:1', '/css/ckeditor.css', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2757, '2021-10-27 10:02:40', '0:0:0:0:0:0:0:1', '/css/all.min.css', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2758, '2021-10-27 10:02:40', '0:0:0:0:0:0:0:1', '/css/style.css', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2759, '2021-10-27 10:02:40', '0:0:0:0:0:0:0:1', '/js/jquery.min.js', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2760, '2021-10-27 10:02:40', '0:0:0:0:0:0:0:1', '/js/jquery-3.1.1.js', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2761, '2021-10-27 10:02:40', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.js', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2762, '2021-10-27 10:02:40', '0:0:0:0:0:0:0:1', '/js/script.js', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2763, '2021-10-27 10:02:40', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/outline-icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2764, '2021-10-27 10:02:40', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2765, '2021-10-27 10:02:40', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/brand-icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2766, '2021-10-27 10:02:52', '0:0:0:0:0:0:0:1', '/content/add', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2767, '2021-10-27 10:02:52', '0:0:0:0:0:0:0:1', '/content', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2768, '2021-10-27 10:02:52', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.css', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2769, '2021-10-27 10:02:52', '0:0:0:0:0:0:0:1', '/js/jquery-3.1.1.js', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2770, '2021-10-27 10:02:52', '0:0:0:0:0:0:0:1', '/css/style.css', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2771, '2021-10-27 10:02:52', '0:0:0:0:0:0:0:1', '/js/jquery.min.js', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2772, '2021-10-27 10:02:52', '0:0:0:0:0:0:0:1', '/css/ckeditor.css', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2773, '2021-10-27 10:02:52', '0:0:0:0:0:0:0:1', '/css/all.min.css', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2774, '2021-10-27 10:02:52', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.js', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2775, '2021-10-27 10:02:52', '0:0:0:0:0:0:0:1', '/js/script.js', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2776, '2021-10-27 10:02:53', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/brand-icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2777, '2021-10-27 10:02:53', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/outline-icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2778, '2021-10-27 10:02:53', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2779, '2021-10-27 10:02:56', '0:0:0:0:0:0:0:1', '/content/delete/2', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2780, '2021-10-27 10:02:56', '0:0:0:0:0:0:0:1', '/content', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2781, '2021-10-27 10:02:56', '0:0:0:0:0:0:0:1', '/js/jquery.min.js', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2782, '2021-10-27 10:02:56', '0:0:0:0:0:0:0:1', '/css/ckeditor.css', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2783, '2021-10-27 10:02:56', '0:0:0:0:0:0:0:1', '/js/jquery-3.1.1.js', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2784, '2021-10-27 10:02:56', '0:0:0:0:0:0:0:1', '/css/all.min.css', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2785, '2021-10-27 10:02:56', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.css', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2786, '2021-10-27 10:02:56', '0:0:0:0:0:0:0:1', '/css/style.css', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2787, '2021-10-27 10:02:56', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.js', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2788, '2021-10-27 10:02:56', '0:0:0:0:0:0:0:1', '/js/script.js', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2789, '2021-10-27 10:02:57', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/brand-icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2790, '2021-10-27 10:02:57', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/outline-icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2791, '2021-10-27 10:02:57', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2792, '2021-10-27 10:03:01', '0:0:0:0:0:0:0:1', '/gallery', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2793, '2021-10-27 10:03:01', '0:0:0:0:0:0:0:1', '/css/style.css', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2794, '2021-10-27 10:03:01', '0:0:0:0:0:0:0:1', '/js/jquery-3.1.1.js', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2795, '2021-10-27 10:03:01', '0:0:0:0:0:0:0:1', '/css/ckeditor.css', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2796, '2021-10-27 10:03:01', '0:0:0:0:0:0:0:1', '/sitejs/gallery.js', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2797, '2021-10-27 10:03:01', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.css', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2798, '2021-10-27 10:03:01', '0:0:0:0:0:0:0:1', '/css/all.min.css', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2799, '2021-10-27 10:03:01', '0:0:0:0:0:0:0:1', '/js/jquery.min.js', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2800, '2021-10-27 10:03:01', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.js', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2801, '2021-10-27 10:03:01', '0:0:0:0:0:0:0:1', '/js/script.js', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2802, '2021-10-27 10:03:01', '0:0:0:0:0:0:0:1', '/gallery/listed', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2803, '2021-10-27 10:03:02', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/outline-icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2804, '2021-10-27 10:03:02', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2805, '2021-10-27 10:03:02', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/brand-icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2806, '2021-10-27 10:03:05', '0:0:0:0:0:0:0:1', '/announce', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2807, '2021-10-27 10:03:05', '0:0:0:0:0:0:0:1', '/css/all.min.css', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2808, '2021-10-27 10:03:05', '0:0:0:0:0:0:0:1', '/css/style.css', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2809, '2021-10-27 10:03:05', '0:0:0:0:0:0:0:1', '/js/jquery-3.1.1.js', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2810, '2021-10-27 10:03:05', '0:0:0:0:0:0:0:1', '/css/ckeditor.css', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2811, '2021-10-27 10:03:05', '0:0:0:0:0:0:0:1', '/sitejs/announce.js', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2812, '2021-10-27 10:03:05', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.css', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2813, '2021-10-27 10:03:05', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.js', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2814, '2021-10-27 10:03:05', '0:0:0:0:0:0:0:1', '/js/jquery.min.js', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2815, '2021-10-27 10:03:05', '0:0:0:0:0:0:0:1', '/js/script.js', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2816, '2021-10-27 10:03:05', '0:0:0:0:0:0:0:1', '/announce/listed', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2817, '2021-10-27 10:03:05', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/outline-icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2818, '2021-10-27 10:03:05', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2819, '2021-10-27 10:03:05', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/brand-icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2820, '2021-10-27 10:03:15', '0:0:0:0:0:0:0:1', '/announce/addAnnounce', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2821, '2021-10-27 10:03:16', '0:0:0:0:0:0:0:1', '/announce/listed', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2822, '2021-10-27 10:03:21', '0:0:0:0:0:0:0:1', '/category', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2823, '2021-10-27 10:03:21', '0:0:0:0:0:0:0:1', '/css/style.css', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2824, '2021-10-27 10:03:21', '0:0:0:0:0:0:0:1', '/css/all.min.css', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2825, '2021-10-27 10:03:21', '0:0:0:0:0:0:0:1', '/css/ckeditor.css', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2826, '2021-10-27 10:03:21', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.css', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2827, '2021-10-27 10:03:21', '0:0:0:0:0:0:0:1', '/js/jquery-3.1.1.js', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2828, '2021-10-27 10:03:21', '0:0:0:0:0:0:0:1', '/sitejs/category.js', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2829, '2021-10-27 10:03:21', '0:0:0:0:0:0:0:1', '/js/script.js', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2830, '2021-10-27 10:03:21', '0:0:0:0:0:0:0:1', '/js/jquery.min.js', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2831, '2021-10-27 10:03:21', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.js', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2832, '2021-10-27 10:03:21', '0:0:0:0:0:0:0:1', '/category/subCat', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2833, '2021-10-27 10:03:21', '0:0:0:0:0:0:0:1', '/category/listCat', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2834, '2021-10-27 10:03:21', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/brand-icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2835, '2021-10-27 10:03:21', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/outline-icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2836, '2021-10-27 10:03:21', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2837, '2021-10-27 10:03:31', '0:0:0:0:0:0:0:1', '/css/style.css', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2838, '2021-10-27 10:03:31', '0:0:0:0:0:0:0:1', '/css/all.min.css', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2839, '2021-10-27 10:03:31', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.css', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2840, '2021-10-27 10:03:31', '0:0:0:0:0:0:0:1', '/css/ckeditor.css', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2841, '2021-10-27 10:03:32', '0:0:0:0:0:0:0:1', '/css/style.css.map', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2842, '2021-10-27 10:03:53', '0:0:0:0:0:0:0:1', '/news', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2843, '2021-10-27 10:03:53', '0:0:0:0:0:0:0:1', '/css/style.css', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2844, '2021-10-27 10:03:53', '0:0:0:0:0:0:0:1', '/js/jquery-3.1.1.js', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2845, '2021-10-27 10:03:53', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.css', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2846, '2021-10-27 10:03:53', '0:0:0:0:0:0:0:1', '/css/all.min.css', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2847, '2021-10-27 10:03:53', '0:0:0:0:0:0:0:1', '/css/ckeditor.css', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2848, '2021-10-27 10:03:53', '0:0:0:0:0:0:0:1', '/js/jquery.min.js', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2849, '2021-10-27 10:03:53', '0:0:0:0:0:0:0:1', '/js/script.js', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2850, '2021-10-27 10:03:53', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.js', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2851, '2021-10-27 10:03:53', '0:0:0:0:0:0:0:1', '/uploads/db8ec82c-7e4b-4b62-85f8-0da24f7e146e0.jpg', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2852, '2021-10-27 10:03:54', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/brand-icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2853, '2021-10-27 10:03:54', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/outline-icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2854, '2021-10-27 10:03:54', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2855, '2021-10-27 10:03:57', '0:0:0:0:0:0:0:1', '/newsAdd', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2856, '2021-10-27 10:03:57', '0:0:0:0:0:0:0:1', '/css/style.css', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2857, '2021-10-27 10:03:57', '0:0:0:0:0:0:0:1', '/js/jquery-3.1.1.js', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2858, '2021-10-27 10:03:57', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.css', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2859, '2021-10-27 10:03:57', '0:0:0:0:0:0:0:1', '/css/all.min.css', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2860, '2021-10-27 10:03:57', '0:0:0:0:0:0:0:1', '/js/jquery.min.js', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2861, '2021-10-27 10:03:57', '0:0:0:0:0:0:0:1', '/css/ckeditor.css', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2862, '2021-10-27 10:03:57', '0:0:0:0:0:0:0:1', '/js/script.js', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2863, '2021-10-27 10:03:57', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.js', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2864, '2021-10-27 10:03:58', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2865, '2021-10-27 10:03:58', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/brand-icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2866, '2021-10-27 10:03:58', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/outline-icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2867, '2021-10-27 10:04:15', '0:0:0:0:0:0:0:1', '/newsAdd/add', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2868, '2021-10-27 10:04:15', '0:0:0:0:0:0:0:1', '/news', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2869, '2021-10-27 10:04:15', '0:0:0:0:0:0:0:1', '/js/jquery-3.1.1.js', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2870, '2021-10-27 10:04:15', '0:0:0:0:0:0:0:1', '/css/style.css', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2871, '2021-10-27 10:04:15', '0:0:0:0:0:0:0:1', '/css/ckeditor.css', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2872, '2021-10-27 10:04:15', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.css', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2873, '2021-10-27 10:04:15', '0:0:0:0:0:0:0:1', '/css/all.min.css', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2874, '2021-10-27 10:04:15', '0:0:0:0:0:0:0:1', '/js/jquery.min.js', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2875, '2021-10-27 10:04:15', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.js', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2876, '2021-10-27 10:04:15', '0:0:0:0:0:0:0:1', '/js/script.js', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2877, '2021-10-27 10:04:15', '0:0:0:0:0:0:0:1', '/uploads/db8ec82c-7e4b-4b62-85f8-0da24f7e146e0.jpg', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2878, '2021-10-27 10:04:15', '0:0:0:0:0:0:0:1', '/uploads/0abf7732-69d3-432b-9f48-70e29504d05b5.jpg', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2879, '2021-10-27 10:04:16', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/outline-icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2880, '2021-10-27 10:04:16', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2881, '2021-10-27 10:04:16', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/brand-icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2882, '2021-10-27 10:04:23', '0:0:0:0:0:0:0:1', '/newsCategory', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2883, '2021-10-27 10:04:23', '0:0:0:0:0:0:0:1', '/css/all.min.css', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2884, '2021-10-27 10:04:23', '0:0:0:0:0:0:0:1', '/js/jquery-3.1.1.js', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2885, '2021-10-27 10:04:23', '0:0:0:0:0:0:0:1', '/css/ckeditor.css', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2886, '2021-10-27 10:04:23', '0:0:0:0:0:0:0:1', '/css/style.css', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2887, '2021-10-27 10:04:23', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.css', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2888, '2021-10-27 10:04:23', '0:0:0:0:0:0:0:1', '/js/jquery.min.js', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2889, '2021-10-27 10:04:23', '0:0:0:0:0:0:0:1', '/js/script.js', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2890, '2021-10-27 10:04:23', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.js', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2891, '2021-10-27 10:04:24', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2892, '2021-10-27 10:04:24', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/brand-icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2893, '2021-10-27 10:04:24', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/outline-icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2894, '2021-10-27 10:04:28', '0:0:0:0:0:0:0:1', '/newsCategory/add', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2895, '2021-10-27 10:04:28', '0:0:0:0:0:0:0:1', '/newsCategory', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2896, '2021-10-27 10:04:28', '0:0:0:0:0:0:0:1', '/js/jquery-3.1.1.js', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2897, '2021-10-27 10:04:28', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.css', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2898, '2021-10-27 10:04:28', '0:0:0:0:0:0:0:1', '/css/style.css', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2899, '2021-10-27 10:04:28', '0:0:0:0:0:0:0:1', '/js/jquery.min.js', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2900, '2021-10-27 10:04:28', '0:0:0:0:0:0:0:1', '/css/all.min.css', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2901, '2021-10-27 10:04:28', '0:0:0:0:0:0:0:1', '/css/ckeditor.css', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2902, '2021-10-27 10:04:28', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.js', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2903, '2021-10-27 10:04:28', '0:0:0:0:0:0:0:1', '/js/script.js', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2904, '2021-10-27 10:04:29', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2905, '2021-10-27 10:04:29', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/outline-icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2906, '2021-10-27 10:04:29', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/brand-icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2907, '2021-10-27 10:04:31', '0:0:0:0:0:0:0:1', '/newsCategory/delete/2', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2908, '2021-10-27 10:04:31', '0:0:0:0:0:0:0:1', '/newsCategory', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2909, '2021-10-27 10:04:32', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.css', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2910, '2021-10-27 10:04:32', '0:0:0:0:0:0:0:1', '/css/style.css', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2911, '2021-10-27 10:04:32', '0:0:0:0:0:0:0:1', '/js/jquery-3.1.1.js', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2912, '2021-10-27 10:04:32', '0:0:0:0:0:0:0:1', '/css/ckeditor.css', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2913, '2021-10-27 10:04:32', '0:0:0:0:0:0:0:1', '/js/jquery.min.js', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2914, '2021-10-27 10:04:32', '0:0:0:0:0:0:0:1', '/css/all.min.css', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2915, '2021-10-27 10:04:32', '0:0:0:0:0:0:0:1', '/js/script.js', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2916, '2021-10-27 10:04:32', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.js', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2917, '2021-10-27 10:04:32', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2918, '2021-10-27 10:04:32', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/outline-icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2919, '2021-10-27 10:04:32', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/brand-icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2920, '2021-10-27 10:04:48', '0:0:0:0:0:0:0:1', '/announce', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2921, '2021-10-27 10:04:48', '0:0:0:0:0:0:0:1', '/js/jquery-3.1.1.js', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2922, '2021-10-27 10:04:48', '0:0:0:0:0:0:0:1', '/css/style.css', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2923, '2021-10-27 10:04:48', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.css', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2924, '2021-10-27 10:04:48', '0:0:0:0:0:0:0:1', '/sitejs/announce.js', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2925, '2021-10-27 10:04:48', '0:0:0:0:0:0:0:1', '/css/ckeditor.css', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2926, '2021-10-27 10:04:48', '0:0:0:0:0:0:0:1', '/css/all.min.css', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2927, '2021-10-27 10:04:48', '0:0:0:0:0:0:0:1', '/js/jquery.min.js', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2928, '2021-10-27 10:04:48', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.js', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2929, '2021-10-27 10:04:48', '0:0:0:0:0:0:0:1', '/js/script.js', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2930, '2021-10-27 10:04:49', '0:0:0:0:0:0:0:1', '/announce/listed', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2931, '2021-10-27 10:04:49', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2932, '2021-10-27 10:04:49', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/outline-icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2933, '2021-10-27 10:04:49', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/brand-icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2934, '2021-10-27 10:04:51', '0:0:0:0:0:0:0:1', '/announce', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2935, '2021-10-27 10:04:51', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.css', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2936, '2021-10-27 10:04:51', '0:0:0:0:0:0:0:1', '/css/style.css', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2937, '2021-10-27 10:04:51', '0:0:0:0:0:0:0:1', '/js/jquery-3.1.1.js', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2938, '2021-10-27 10:04:51', '0:0:0:0:0:0:0:1', '/sitejs/announce.js', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2939, '2021-10-27 10:04:51', '0:0:0:0:0:0:0:1', '/css/ckeditor.css', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2940, '2021-10-27 10:04:51', '0:0:0:0:0:0:0:1', '/css/all.min.css', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2941, '2021-10-27 10:04:51', '0:0:0:0:0:0:0:1', '/js/script.js', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2942, '2021-10-27 10:04:51', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.js', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2943, '2021-10-27 10:04:52', '0:0:0:0:0:0:0:1', '/js/jquery.min.js', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2944, '2021-10-27 10:04:52', '0:0:0:0:0:0:0:1', '/announce/listed', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2945, '2021-10-27 10:04:52', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/outline-icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2946, '2021-10-27 10:04:52', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/brand-icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2947, '2021-10-27 10:04:52', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2948, '2021-10-27 10:04:54', '0:0:0:0:0:0:0:1', '/vote', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2949, '2021-10-27 10:04:54', '0:0:0:0:0:0:0:1', '/css/all.min.css', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2950, '2021-10-27 10:04:54', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.css', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2951, '2021-10-27 10:04:54', '0:0:0:0:0:0:0:1', '/js/jquery-3.1.1.js', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2952, '2021-10-27 10:04:54', '0:0:0:0:0:0:0:1', '/sitejs/vote.js', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2953, '2021-10-27 10:04:54', '0:0:0:0:0:0:0:1', '/css/ckeditor.css', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2954, '2021-10-27 10:04:54', '0:0:0:0:0:0:0:1', '/css/style.css', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2955, '2021-10-27 10:04:54', '0:0:0:0:0:0:0:1', '/js/jquery.min.js', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2956, '2021-10-27 10:04:54', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.js', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2957, '2021-10-27 10:04:54', '0:0:0:0:0:0:0:1', '/js/script.js', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2958, '2021-10-27 10:04:55', '0:0:0:0:0:0:0:1', '/vote/pagination/0/10', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2959, '2021-10-27 10:04:55', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/outline-icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2960, '2021-10-27 10:04:55', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/brand-icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2961, '2021-10-27 10:04:55', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2962, '2021-10-27 10:05:22', '0:0:0:0:0:0:0:1', '/survey', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2963, '2021-10-27 10:05:22', '0:0:0:0:0:0:0:1', '/css/style.css', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2964, '2021-10-27 10:05:22', '0:0:0:0:0:0:0:1', '/js/jquery-3.1.1.js', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2965, '2021-10-27 10:05:22', '0:0:0:0:0:0:0:1', '/css/ckeditor.css', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2966, '2021-10-27 10:05:22', '0:0:0:0:0:0:0:1', '/css/all.min.css', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2967, '2021-10-27 10:05:22', '0:0:0:0:0:0:0:1', '/sitejs/survey.js', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2968, '2021-10-27 10:05:22', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.css', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2969, '2021-10-27 10:05:23', '0:0:0:0:0:0:0:1', '/js/script.js', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2970, '2021-10-27 10:05:23', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.js', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2971, '2021-10-27 10:05:23', '0:0:0:0:0:0:0:1', '/js/jquery.min.js', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2972, '2021-10-27 10:05:23', '0:0:0:0:0:0:0:1', '/survey/pagination/0/10', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2973, '2021-10-27 10:05:23', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2974, '2021-10-27 10:05:23', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/brand-icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2975, '2021-10-27 10:05:23', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/outline-icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2976, '2021-10-27 10:05:33', '0:0:0:0:0:0:0:1', '/survey/add', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2977, '2021-10-27 10:05:33', '0:0:0:0:0:0:0:1', '/survey', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2978, '2021-10-27 10:05:34', '0:0:0:0:0:0:0:1', '/css/style.css', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2979, '2021-10-27 10:05:34', '0:0:0:0:0:0:0:1', '/js/jquery-3.1.1.js', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2980, '2021-10-27 10:05:34', '0:0:0:0:0:0:0:1', '/sitejs/survey.js', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2981, '2021-10-27 10:05:34', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.css', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2982, '2021-10-27 10:05:34', '0:0:0:0:0:0:0:1', '/css/ckeditor.css', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2983, '2021-10-27 10:05:34', '0:0:0:0:0:0:0:1', '/css/all.min.css', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2984, '2021-10-27 10:05:34', '0:0:0:0:0:0:0:1', '/js/jquery.min.js', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2985, '2021-10-27 10:05:34', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.js', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2986, '2021-10-27 10:05:34', '0:0:0:0:0:0:0:1', '/js/script.js', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2987, '2021-10-27 10:05:34', '0:0:0:0:0:0:0:1', '/survey/pagination/0/10', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2988, '2021-10-27 10:05:34', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2989, '2021-10-27 10:05:34', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/outline-icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2990, '2021-10-27 10:05:34', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/brand-icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2991, '2021-10-27 10:05:46', '0:0:0:0:0:0:0:1', '/survey/optionadd', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2992, '2021-10-27 10:05:46', '0:0:0:0:0:0:0:1', '/survey', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2993, '2021-10-27 10:05:46', '0:0:0:0:0:0:0:1', '/js/jquery-3.1.1.js', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2994, '2021-10-27 10:05:46', '0:0:0:0:0:0:0:1', '/css/style.css', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2995, '2021-10-27 10:05:46', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.css', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2996, '2021-10-27 10:05:46', '0:0:0:0:0:0:0:1', '/css/all.min.css', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2997, '2021-10-27 10:05:46', '0:0:0:0:0:0:0:1', '/sitejs/survey.js', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2998, '2021-10-27 10:05:46', '0:0:0:0:0:0:0:1', '/css/ckeditor.css', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (2999, '2021-10-27 10:05:46', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.js', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (3000, '2021-10-27 10:05:46', '0:0:0:0:0:0:0:1', '/js/jquery.min.js', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (3001, '2021-10-27 10:05:46', '0:0:0:0:0:0:0:1', '/js/script.js', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (3002, '2021-10-27 10:05:46', '0:0:0:0:0:0:0:1', '/survey/pagination/0/10', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (3003, '2021-10-27 10:05:46', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (3004, '2021-10-27 10:05:46', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/brand-icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (3005, '2021-10-27 10:05:46', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/outline-icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (3006, '2021-10-27 10:05:49', '0:0:0:0:0:0:0:1', '/survey/vote/2', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (3007, '2021-10-27 10:05:52', '0:0:0:0:0:0:0:1', '/survey/vote/1', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (3008, '2021-10-27 10:05:54', '0:0:0:0:0:0:0:1', '/survey/vote/2', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (3009, '2021-10-27 10:05:56', '0:0:0:0:0:0:0:1', '/survey', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (3010, '2021-10-27 10:05:57', '0:0:0:0:0:0:0:1', '/js/jquery-3.1.1.js', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (3011, '2021-10-27 10:05:57', '0:0:0:0:0:0:0:1', '/css/style.css', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (3012, '2021-10-27 10:05:57', '0:0:0:0:0:0:0:1', '/sitejs/survey.js', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (3013, '2021-10-27 10:05:57', '0:0:0:0:0:0:0:1', '/css/all.min.css', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (3014, '2021-10-27 10:05:57', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.css', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (3015, '2021-10-27 10:05:57', '0:0:0:0:0:0:0:1', '/css/ckeditor.css', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (3016, '2021-10-27 10:05:57', '0:0:0:0:0:0:0:1', '/js/jquery.min.js', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (3017, '2021-10-27 10:05:57', '0:0:0:0:0:0:0:1', '/js/script.js', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (3018, '2021-10-27 10:05:57', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.js', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (3019, '2021-10-27 10:05:57', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (3020, '2021-10-27 10:05:57', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/brand-icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (3021, '2021-10-27 10:05:57', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/outline-icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (3022, '2021-10-27 10:05:57', '0:0:0:0:0:0:0:1', '/survey/pagination/0/10', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (3023, '2021-10-27 10:05:58', '0:0:0:0:0:0:0:1', '/favicon.ico', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (3024, '2021-10-27 10:05:58', '0:0:0:0:0:0:0:1', '/survey/vote/2', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (3025, '2021-10-27 10:06:04', '0:0:0:0:0:0:0:1', '/survey/vote/2', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (3026, '2021-10-27 10:06:06', '0:0:0:0:0:0:0:1', '/survey/vote/1', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (3027, '2021-10-27 10:06:18', '0:0:0:0:0:0:0:1', '/announce', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (3028, '2021-10-27 10:06:18', '0:0:0:0:0:0:0:1', '/sitejs/announce.js', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (3029, '2021-10-27 10:06:18', '0:0:0:0:0:0:0:1', '/css/all.min.css', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (3030, '2021-10-27 10:06:18', '0:0:0:0:0:0:0:1', '/js/jquery-3.1.1.js', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (3031, '2021-10-27 10:06:18', '0:0:0:0:0:0:0:1', '/css/ckeditor.css', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (3032, '2021-10-27 10:06:18', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.css', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (3033, '2021-10-27 10:06:18', '0:0:0:0:0:0:0:1', '/css/style.css', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (3034, '2021-10-27 10:06:18', '0:0:0:0:0:0:0:1', '/js/script.js', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (3035, '2021-10-27 10:06:18', '0:0:0:0:0:0:0:1', '/js/jquery.min.js', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (3036, '2021-10-27 10:06:18', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.js', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (3037, '2021-10-27 10:06:19', '0:0:0:0:0:0:0:1', '/announce/listed', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (3038, '2021-10-27 10:06:19', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/outline-icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (3039, '2021-10-27 10:06:19', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (3040, '2021-10-27 10:06:19', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/brand-icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (3041, '2021-10-27 10:06:21', '0:0:0:0:0:0:0:1', '/survey', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (3042, '2021-10-27 10:06:21', '0:0:0:0:0:0:0:1', '/sitejs/survey.js', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (3043, '2021-10-27 10:06:21', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.css', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (3044, '2021-10-27 10:06:21', '0:0:0:0:0:0:0:1', '/css/ckeditor.css', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (3045, '2021-10-27 10:06:21', '0:0:0:0:0:0:0:1', '/js/jquery-3.1.1.js', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (3046, '2021-10-27 10:06:21', '0:0:0:0:0:0:0:1', '/css/style.css', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (3047, '2021-10-27 10:06:21', '0:0:0:0:0:0:0:1', '/css/all.min.css', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (3048, '2021-10-27 10:06:21', '0:0:0:0:0:0:0:1', '/js/script.js', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (3049, '2021-10-27 10:06:21', '0:0:0:0:0:0:0:1', '/js/jquery.min.js', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (3050, '2021-10-27 10:06:21', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.js', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (3051, '2021-10-27 10:06:21', '0:0:0:0:0:0:0:1', '/survey/pagination/0/10', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (3052, '2021-10-27 10:06:21', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/outline-icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (3053, '2021-10-27 10:06:21', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/brand-icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (3054, '2021-10-27 10:06:21', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (3055, '2021-10-27 10:06:22', '0:0:0:0:0:0:0:1', '/content', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (3056, '2021-10-27 10:06:22', '0:0:0:0:0:0:0:1', '/css/style.css', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (3057, '2021-10-27 10:06:22', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.css', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (3058, '2021-10-27 10:06:22', '0:0:0:0:0:0:0:1', '/css/all.min.css', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (3059, '2021-10-27 10:06:22', '0:0:0:0:0:0:0:1', '/css/ckeditor.css', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (3060, '2021-10-27 10:06:22', '0:0:0:0:0:0:0:1', '/js/jquery-3.1.1.js', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (3061, '2021-10-27 10:06:22', '0:0:0:0:0:0:0:1', '/js/jquery.min.js', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (3062, '2021-10-27 10:06:22', '0:0:0:0:0:0:0:1', '/js/script.js', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (3063, '2021-10-27 10:06:22', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.js', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (3064, '2021-10-27 10:06:23', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/brand-icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (3065, '2021-10-27 10:06:23', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (3066, '2021-10-27 10:06:23', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/outline-icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (3067, '2021-10-27 10:06:33', '0:0:0:0:0:0:0:1', '/content/delete/1', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (3068, '2021-10-27 10:06:34', '0:0:0:0:0:0:0:1', '/content', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (3069, '2021-10-27 10:06:34', '0:0:0:0:0:0:0:1', '/css/style.css', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (3070, '2021-10-27 10:06:34', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.css', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (3071, '2021-10-27 10:06:34', '0:0:0:0:0:0:0:1', '/js/jquery-3.1.1.js', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (3072, '2021-10-27 10:06:34', '0:0:0:0:0:0:0:1', '/js/jquery.min.js', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (3073, '2021-10-27 10:06:34', '0:0:0:0:0:0:0:1', '/css/ckeditor.css', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (3074, '2021-10-27 10:06:34', '0:0:0:0:0:0:0:1', '/css/all.min.css', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (3075, '2021-10-27 10:06:34', '0:0:0:0:0:0:0:1', '/js/script.js', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (3076, '2021-10-27 10:06:34', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.js', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (3077, '2021-10-27 10:06:34', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/outline-icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (3078, '2021-10-27 10:06:34', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/brand-icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (3079, '2021-10-27 10:06:34', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (3080, '2021-10-27 10:06:52', '0:0:0:0:0:0:0:1', '/content/add', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (3081, '2021-10-27 10:06:52', '0:0:0:0:0:0:0:1', '/content', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (3082, '2021-10-27 10:06:53', '0:0:0:0:0:0:0:1', '/js/jquery-3.1.1.js', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (3083, '2021-10-27 10:06:53', '0:0:0:0:0:0:0:1', '/css/style.css', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (3084, '2021-10-27 10:06:53', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.css', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (3085, '2021-10-27 10:06:53', '0:0:0:0:0:0:0:1', '/css/ckeditor.css', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (3086, '2021-10-27 10:06:53', '0:0:0:0:0:0:0:1', '/css/all.min.css', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (3087, '2021-10-27 10:06:53', '0:0:0:0:0:0:0:1', '/js/jquery.min.js', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (3088, '2021-10-27 10:06:53', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.js', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (3089, '2021-10-27 10:06:53', '0:0:0:0:0:0:0:1', '/js/script.js', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (3090, '2021-10-27 10:06:53', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/outline-icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (3091, '2021-10-27 10:06:53', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/brand-icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (3092, '2021-10-27 10:06:53', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (3093, '2021-10-27 10:06:58', '0:0:0:0:0:0:0:1', '/content/update/3', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (3094, '2021-10-27 10:06:58', '0:0:0:0:0:0:0:1', '/content', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (3095, '2021-10-27 10:06:58', '0:0:0:0:0:0:0:1', '/css/style.css', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (3096, '2021-10-27 10:06:58', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.css', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (3097, '2021-10-27 10:06:58', '0:0:0:0:0:0:0:1', '/js/jquery-3.1.1.js', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (3098, '2021-10-27 10:06:58', '0:0:0:0:0:0:0:1', '/css/ckeditor.css', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (3099, '2021-10-27 10:06:58', '0:0:0:0:0:0:0:1', '/js/jquery.min.js', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (3100, '2021-10-27 10:06:58', '0:0:0:0:0:0:0:1', '/css/all.min.css', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (3101, '2021-10-27 10:06:58', '0:0:0:0:0:0:0:1', '/js/script.js', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (3102, '2021-10-27 10:06:58', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.js', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (3103, '2021-10-27 10:06:59', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/outline-icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (3104, '2021-10-27 10:06:59', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/brand-icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (3105, '2021-10-27 10:06:59', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (3106, '2021-10-27 10:07:03', '0:0:0:0:0:0:0:1', '/content/add', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (3107, '2021-10-27 10:07:03', '0:0:0:0:0:0:0:1', '/content', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (3108, '2021-10-27 10:07:03', '0:0:0:0:0:0:0:1', '/css/style.css', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (3109, '2021-10-27 10:07:03', '0:0:0:0:0:0:0:1', '/js/jquery-3.1.1.js', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (3110, '2021-10-27 10:07:03', '0:0:0:0:0:0:0:1', '/js/jquery.min.js', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (3111, '2021-10-27 10:07:03', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.css', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (3112, '2021-10-27 10:07:03', '0:0:0:0:0:0:0:1', '/css/ckeditor.css', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (3113, '2021-10-27 10:07:03', '0:0:0:0:0:0:0:1', '/css/all.min.css', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (3114, '2021-10-27 10:07:03', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.js', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (3115, '2021-10-27 10:07:03', '0:0:0:0:0:0:0:1', '/js/script.js', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (3116, '2021-10-27 10:07:04', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/outline-icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (3117, '2021-10-27 10:07:04', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (3118, '2021-10-27 10:07:04', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/brand-icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (3119, '2021-10-27 10:07:06', '0:0:0:0:0:0:0:1', '/content/delete/3', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (3120, '2021-10-27 10:07:06', '0:0:0:0:0:0:0:1', '/content', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (3121, '2021-10-27 10:07:06', '0:0:0:0:0:0:0:1', '/css/style.css', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (3122, '2021-10-27 10:07:06', '0:0:0:0:0:0:0:1', '/css/ckeditor.css', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (3123, '2021-10-27 10:07:06', '0:0:0:0:0:0:0:1', '/js/jquery-3.1.1.js', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (3124, '2021-10-27 10:07:06', '0:0:0:0:0:0:0:1', '/js/jquery.min.js', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (3125, '2021-10-27 10:07:06', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.css', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (3126, '2021-10-27 10:07:06', '0:0:0:0:0:0:0:1', '/css/all.min.css', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (3127, '2021-10-27 10:07:06', '0:0:0:0:0:0:0:1', '/js/script.js', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (3128, '2021-10-27 10:07:06', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.js', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (3129, '2021-10-27 10:07:07', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/brand-icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (3130, '2021-10-27 10:07:07', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (3131, '2021-10-27 10:07:07', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/outline-icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', '92633CC3E28094C7AA16DA67E9C9C140', 'yilmaz');
INSERT INTO `logger` VALUES (3132, '2021-10-27 12:29:48', '0:0:0:0:0:0:0:1', '/registers', 'anonymousUser', NULL, NULL, '61F0D684AC71CA9680279925BB7AF87C', NULL);
INSERT INTO `logger` VALUES (3133, '2021-10-27 12:29:50', '0:0:0:0:0:0:0:1', '/js/jquery-3.1.1.js', 'anonymousUser', NULL, NULL, '61F0D684AC71CA9680279925BB7AF87C', NULL);
INSERT INTO `logger` VALUES (3134, '2021-10-27 12:29:50', '0:0:0:0:0:0:0:1', '/js/jquery.min.js', 'anonymousUser', NULL, NULL, '61F0D684AC71CA9680279925BB7AF87C', NULL);
INSERT INTO `logger` VALUES (3135, '2021-10-27 12:29:50', '0:0:0:0:0:0:0:1', '/css/ckeditor.css', 'anonymousUser', NULL, NULL, '61F0D684AC71CA9680279925BB7AF87C', NULL);
INSERT INTO `logger` VALUES (3136, '2021-10-27 12:29:50', '0:0:0:0:0:0:0:1', '/css/style.css', 'anonymousUser', NULL, NULL, '61F0D684AC71CA9680279925BB7AF87C', NULL);
INSERT INTO `logger` VALUES (3137, '2021-10-27 12:29:50', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.css', 'anonymousUser', NULL, NULL, '61F0D684AC71CA9680279925BB7AF87C', NULL);
INSERT INTO `logger` VALUES (3138, '2021-10-27 12:29:50', '0:0:0:0:0:0:0:1', '/css/all.min.css', 'anonymousUser', NULL, NULL, '61F0D684AC71CA9680279925BB7AF87C', NULL);
INSERT INTO `logger` VALUES (3139, '2021-10-27 12:29:50', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.js', 'anonymousUser', NULL, NULL, '61F0D684AC71CA9680279925BB7AF87C', NULL);
INSERT INTO `logger` VALUES (3140, '2021-10-27 12:29:50', '0:0:0:0:0:0:0:1', '/js/script.js', 'anonymousUser', NULL, NULL, '61F0D684AC71CA9680279925BB7AF87C', NULL);
INSERT INTO `logger` VALUES (3141, '2021-10-27 12:29:51', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/outline-icons.woff2', 'anonymousUser', NULL, NULL, '61F0D684AC71CA9680279925BB7AF87C', NULL);
INSERT INTO `logger` VALUES (3142, '2021-10-27 12:29:51', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/brand-icons.woff2', 'anonymousUser', NULL, NULL, '61F0D684AC71CA9680279925BB7AF87C', NULL);
INSERT INTO `logger` VALUES (3143, '2021-10-27 12:29:51', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/icons.woff2', 'anonymousUser', NULL, NULL, '61F0D684AC71CA9680279925BB7AF87C', NULL);
INSERT INTO `logger` VALUES (3144, '2021-10-27 12:29:54', '0:0:0:0:0:0:0:1', '/registers/add', 'anonymousUser', NULL, NULL, '61F0D684AC71CA9680279925BB7AF87C', NULL);
INSERT INTO `logger` VALUES (3145, '2021-10-27 12:29:54', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.css', 'anonymousUser', NULL, NULL, '61F0D684AC71CA9680279925BB7AF87C', NULL);
INSERT INTO `logger` VALUES (3146, '2021-10-27 12:29:54', '0:0:0:0:0:0:0:1', '/css/style.css', 'anonymousUser', NULL, NULL, '61F0D684AC71CA9680279925BB7AF87C', NULL);
INSERT INTO `logger` VALUES (3147, '2021-10-27 12:29:54', '0:0:0:0:0:0:0:1', '/js/jquery-3.1.1.js', 'anonymousUser', NULL, NULL, '61F0D684AC71CA9680279925BB7AF87C', NULL);
INSERT INTO `logger` VALUES (3148, '2021-10-27 12:29:54', '0:0:0:0:0:0:0:1', '/css/all.min.css', 'anonymousUser', NULL, NULL, '61F0D684AC71CA9680279925BB7AF87C', NULL);
INSERT INTO `logger` VALUES (3149, '2021-10-27 12:29:54', '0:0:0:0:0:0:0:1', '/js/jquery.min.js', 'anonymousUser', NULL, NULL, '61F0D684AC71CA9680279925BB7AF87C', NULL);
INSERT INTO `logger` VALUES (3150, '2021-10-27 12:29:54', '0:0:0:0:0:0:0:1', '/css/ckeditor.css', 'anonymousUser', NULL, NULL, '61F0D684AC71CA9680279925BB7AF87C', NULL);
INSERT INTO `logger` VALUES (3151, '2021-10-27 12:29:54', '0:0:0:0:0:0:0:1', '/js/script.js', 'anonymousUser', NULL, NULL, '61F0D684AC71CA9680279925BB7AF87C', NULL);
INSERT INTO `logger` VALUES (3152, '2021-10-27 12:29:54', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.js', 'anonymousUser', NULL, NULL, '61F0D684AC71CA9680279925BB7AF87C', NULL);
INSERT INTO `logger` VALUES (3153, '2021-10-27 12:29:55', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/brand-icons.woff2', 'anonymousUser', NULL, NULL, '61F0D684AC71CA9680279925BB7AF87C', NULL);
INSERT INTO `logger` VALUES (3154, '2021-10-27 12:29:55', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/outline-icons.woff2', 'anonymousUser', NULL, NULL, '61F0D684AC71CA9680279925BB7AF87C', NULL);
INSERT INTO `logger` VALUES (3155, '2021-10-27 12:29:55', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/icons.woff2', 'anonymousUser', NULL, NULL, '61F0D684AC71CA9680279925BB7AF87C', NULL);
INSERT INTO `logger` VALUES (3156, '2021-10-27 12:31:10', '0:0:0:0:0:0:0:1', '/login', 'anonymousUser', NULL, NULL, '2857D6B39EC4EBD5F56B0EB6277585CA', NULL);
INSERT INTO `logger` VALUES (3157, '2021-10-27 12:31:10', '0:0:0:0:0:0:0:1', '/css/style.css', 'anonymousUser', NULL, NULL, '2857D6B39EC4EBD5F56B0EB6277585CA', NULL);
INSERT INTO `logger` VALUES (3158, '2021-10-27 12:31:10', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.css', 'anonymousUser', NULL, NULL, '2857D6B39EC4EBD5F56B0EB6277585CA', NULL);
INSERT INTO `logger` VALUES (3159, '2021-10-27 12:31:10', '0:0:0:0:0:0:0:1', '/js/jquery-3.1.1.js', 'anonymousUser', NULL, NULL, '2857D6B39EC4EBD5F56B0EB6277585CA', NULL);
INSERT INTO `logger` VALUES (3160, '2021-10-27 12:31:10', '0:0:0:0:0:0:0:1', '/css/ckeditor.css', 'anonymousUser', NULL, NULL, '2857D6B39EC4EBD5F56B0EB6277585CA', NULL);
INSERT INTO `logger` VALUES (3161, '2021-10-27 12:31:10', '0:0:0:0:0:0:0:1', '/css/all.min.css', 'anonymousUser', NULL, NULL, '2857D6B39EC4EBD5F56B0EB6277585CA', NULL);
INSERT INTO `logger` VALUES (3162, '2021-10-27 12:31:10', '0:0:0:0:0:0:0:1', '/js/jquery.min.js', 'anonymousUser', NULL, NULL, '2857D6B39EC4EBD5F56B0EB6277585CA', NULL);
INSERT INTO `logger` VALUES (3163, '2021-10-27 12:31:10', '0:0:0:0:0:0:0:1', '/js/script.js', 'anonymousUser', NULL, NULL, '2857D6B39EC4EBD5F56B0EB6277585CA', NULL);
INSERT INTO `logger` VALUES (3164, '2021-10-27 12:31:10', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.js', 'anonymousUser', NULL, NULL, '2857D6B39EC4EBD5F56B0EB6277585CA', NULL);
INSERT INTO `logger` VALUES (3165, '2021-10-27 12:31:11', '0:0:0:0:0:0:0:1', '/login', 'anonymousUser', NULL, NULL, '51BCD8F8E723948CEC7B0E18F271074E', NULL);
INSERT INTO `logger` VALUES (3166, '2021-10-27 12:31:11', '0:0:0:0:0:0:0:1', '/js/jquery-3.1.1.js', 'anonymousUser', NULL, NULL, '51BCD8F8E723948CEC7B0E18F271074E', NULL);
INSERT INTO `logger` VALUES (3167, '2021-10-27 12:31:11', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.css', 'anonymousUser', NULL, NULL, '51BCD8F8E723948CEC7B0E18F271074E', NULL);
INSERT INTO `logger` VALUES (3168, '2021-10-27 12:31:11', '0:0:0:0:0:0:0:1', '/css/ckeditor.css', 'anonymousUser', NULL, NULL, '51BCD8F8E723948CEC7B0E18F271074E', NULL);
INSERT INTO `logger` VALUES (3169, '2021-10-27 12:31:11', '0:0:0:0:0:0:0:1', '/css/all.min.css', 'anonymousUser', NULL, NULL, '51BCD8F8E723948CEC7B0E18F271074E', NULL);
INSERT INTO `logger` VALUES (3170, '2021-10-27 12:31:11', '0:0:0:0:0:0:0:1', '/js/jquery.min.js', 'anonymousUser', NULL, NULL, '51BCD8F8E723948CEC7B0E18F271074E', NULL);
INSERT INTO `logger` VALUES (3171, '2021-10-27 12:31:11', '0:0:0:0:0:0:0:1', '/css/style.css', 'anonymousUser', NULL, NULL, '51BCD8F8E723948CEC7B0E18F271074E', NULL);
INSERT INTO `logger` VALUES (3172, '2021-10-27 12:31:11', '0:0:0:0:0:0:0:1', '/js/script.js', 'anonymousUser', NULL, NULL, '51BCD8F8E723948CEC7B0E18F271074E', NULL);
INSERT INTO `logger` VALUES (3173, '2021-10-27 12:31:11', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.js', 'anonymousUser', NULL, NULL, '51BCD8F8E723948CEC7B0E18F271074E', NULL);
INSERT INTO `logger` VALUES (3174, '2021-10-27 12:31:12', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/icons.woff2', 'anonymousUser', NULL, NULL, '51BCD8F8E723948CEC7B0E18F271074E', NULL);
INSERT INTO `logger` VALUES (3175, '2021-10-27 12:31:12', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/brand-icons.woff2', 'anonymousUser', NULL, NULL, '51BCD8F8E723948CEC7B0E18F271074E', NULL);
INSERT INTO `logger` VALUES (3176, '2021-10-27 12:31:12', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/outline-icons.woff2', 'anonymousUser', NULL, NULL, '51BCD8F8E723948CEC7B0E18F271074E', NULL);
INSERT INTO `logger` VALUES (3177, '2021-10-27 12:32:06', '0:0:0:0:0:0:0:1', '/announce', 'alper@mail.com', 'alper', 'ROLE_MVC', 'F7A07C53B4718BF3A0B64AC5C263FFBE', 'yilmaz');
INSERT INTO `logger` VALUES (3178, '2021-10-27 12:32:06', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.css', 'alper@mail.com', 'alper', 'ROLE_MVC', 'F7A07C53B4718BF3A0B64AC5C263FFBE', 'yilmaz');
INSERT INTO `logger` VALUES (3179, '2021-10-27 12:32:06', '0:0:0:0:0:0:0:1', '/js/jquery-3.1.1.js', 'alper@mail.com', 'alper', 'ROLE_MVC', 'F7A07C53B4718BF3A0B64AC5C263FFBE', 'yilmaz');
INSERT INTO `logger` VALUES (3180, '2021-10-27 12:32:06', '0:0:0:0:0:0:0:1', '/css/all.min.css', 'alper@mail.com', 'alper', 'ROLE_MVC', 'F7A07C53B4718BF3A0B64AC5C263FFBE', 'yilmaz');
INSERT INTO `logger` VALUES (3181, '2021-10-27 12:32:06', '0:0:0:0:0:0:0:1', '/sitejs/announce.js', 'alper@mail.com', 'alper', 'ROLE_MVC', 'F7A07C53B4718BF3A0B64AC5C263FFBE', 'yilmaz');
INSERT INTO `logger` VALUES (3182, '2021-10-27 12:32:06', '0:0:0:0:0:0:0:1', '/css/ckeditor.css', 'alper@mail.com', 'alper', 'ROLE_MVC', 'F7A07C53B4718BF3A0B64AC5C263FFBE', 'yilmaz');
INSERT INTO `logger` VALUES (3183, '2021-10-27 12:32:06', '0:0:0:0:0:0:0:1', '/css/style.css', 'alper@mail.com', 'alper', 'ROLE_MVC', 'F7A07C53B4718BF3A0B64AC5C263FFBE', 'yilmaz');
INSERT INTO `logger` VALUES (3184, '2021-10-27 12:32:06', '0:0:0:0:0:0:0:1', '/js/jquery.min.js', 'alper@mail.com', 'alper', 'ROLE_MVC', 'F7A07C53B4718BF3A0B64AC5C263FFBE', 'yilmaz');
INSERT INTO `logger` VALUES (3185, '2021-10-27 12:32:06', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.js', 'alper@mail.com', 'alper', 'ROLE_MVC', 'F7A07C53B4718BF3A0B64AC5C263FFBE', 'yilmaz');
INSERT INTO `logger` VALUES (3186, '2021-10-27 12:32:06', '0:0:0:0:0:0:0:1', '/js/script.js', 'alper@mail.com', 'alper', 'ROLE_MVC', 'F7A07C53B4718BF3A0B64AC5C263FFBE', 'yilmaz');
INSERT INTO `logger` VALUES (3187, '2021-10-27 12:32:06', '0:0:0:0:0:0:0:1', '/announce/listed', 'alper@mail.com', 'alper', 'ROLE_MVC', 'F7A07C53B4718BF3A0B64AC5C263FFBE', 'yilmaz');
INSERT INTO `logger` VALUES (3188, '2021-10-27 12:32:06', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/outline-icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', 'F7A07C53B4718BF3A0B64AC5C263FFBE', 'yilmaz');
INSERT INTO `logger` VALUES (3189, '2021-10-27 12:32:06', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/brand-icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', 'F7A07C53B4718BF3A0B64AC5C263FFBE', 'yilmaz');
INSERT INTO `logger` VALUES (3190, '2021-10-27 12:32:06', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', 'F7A07C53B4718BF3A0B64AC5C263FFBE', 'yilmaz');
INSERT INTO `logger` VALUES (3191, '2021-10-27 12:32:13', '0:0:0:0:0:0:0:1', '/main', 'alper@mail.com', 'alper', 'ROLE_MVC', 'F7A07C53B4718BF3A0B64AC5C263FFBE', 'yilmaz');
INSERT INTO `logger` VALUES (3192, '2021-10-27 12:32:13', '0:0:0:0:0:0:0:1', '/js/jquery.min.js', 'alper@mail.com', 'alper', 'ROLE_MVC', 'F7A07C53B4718BF3A0B64AC5C263FFBE', 'yilmaz');
INSERT INTO `logger` VALUES (3193, '2021-10-27 12:32:13', '0:0:0:0:0:0:0:1', '/css/style.css', 'alper@mail.com', 'alper', 'ROLE_MVC', 'F7A07C53B4718BF3A0B64AC5C263FFBE', 'yilmaz');
INSERT INTO `logger` VALUES (3194, '2021-10-27 12:32:13', '0:0:0:0:0:0:0:1', '/js/jquery-3.1.1.js', 'alper@mail.com', 'alper', 'ROLE_MVC', 'F7A07C53B4718BF3A0B64AC5C263FFBE', 'yilmaz');
INSERT INTO `logger` VALUES (3195, '2021-10-27 12:32:13', '0:0:0:0:0:0:0:1', '/css/all.min.css', 'alper@mail.com', 'alper', 'ROLE_MVC', 'F7A07C53B4718BF3A0B64AC5C263FFBE', 'yilmaz');
INSERT INTO `logger` VALUES (3196, '2021-10-27 12:32:13', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.css', 'alper@mail.com', 'alper', 'ROLE_MVC', 'F7A07C53B4718BF3A0B64AC5C263FFBE', 'yilmaz');
INSERT INTO `logger` VALUES (3197, '2021-10-27 12:32:13', '0:0:0:0:0:0:0:1', '/css/ckeditor.css', 'alper@mail.com', 'alper', 'ROLE_MVC', 'F7A07C53B4718BF3A0B64AC5C263FFBE', 'yilmaz');
INSERT INTO `logger` VALUES (3198, '2021-10-27 12:32:13', '0:0:0:0:0:0:0:1', '/js/script.js', 'alper@mail.com', 'alper', 'ROLE_MVC', 'F7A07C53B4718BF3A0B64AC5C263FFBE', 'yilmaz');
INSERT INTO `logger` VALUES (3199, '2021-10-27 12:32:13', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.js', 'alper@mail.com', 'alper', 'ROLE_MVC', 'F7A07C53B4718BF3A0B64AC5C263FFBE', 'yilmaz');
INSERT INTO `logger` VALUES (3200, '2021-10-27 12:32:13', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', 'F7A07C53B4718BF3A0B64AC5C263FFBE', 'yilmaz');
INSERT INTO `logger` VALUES (3201, '2021-10-27 12:32:13', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/outline-icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', 'F7A07C53B4718BF3A0B64AC5C263FFBE', 'yilmaz');
INSERT INTO `logger` VALUES (3202, '2021-10-27 12:32:13', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/brand-icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', 'F7A07C53B4718BF3A0B64AC5C263FFBE', 'yilmaz');
INSERT INTO `logger` VALUES (3203, '2021-10-27 12:34:16', '0:0:0:0:0:0:0:1', '/customer', 'alper@mail.com', 'alper', 'ROLE_MVC', 'F7A07C53B4718BF3A0B64AC5C263FFBE', 'yilmaz');
INSERT INTO `logger` VALUES (3204, '2021-10-27 12:34:16', '0:0:0:0:0:0:0:1', '/js/jquery-3.1.1.js', 'alper@mail.com', 'alper', 'ROLE_MVC', 'F7A07C53B4718BF3A0B64AC5C263FFBE', 'yilmaz');
INSERT INTO `logger` VALUES (3205, '2021-10-27 12:34:16', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.css', 'alper@mail.com', 'alper', 'ROLE_MVC', 'F7A07C53B4718BF3A0B64AC5C263FFBE', 'yilmaz');
INSERT INTO `logger` VALUES (3206, '2021-10-27 12:34:16', '0:0:0:0:0:0:0:1', '/js/jquery.min.js', 'alper@mail.com', 'alper', 'ROLE_MVC', 'F7A07C53B4718BF3A0B64AC5C263FFBE', 'yilmaz');
INSERT INTO `logger` VALUES (3207, '2021-10-27 12:34:16', '0:0:0:0:0:0:0:1', '/css/all.min.css', 'alper@mail.com', 'alper', 'ROLE_MVC', 'F7A07C53B4718BF3A0B64AC5C263FFBE', 'yilmaz');
INSERT INTO `logger` VALUES (3208, '2021-10-27 12:34:16', '0:0:0:0:0:0:0:1', '/css/ckeditor.css', 'alper@mail.com', 'alper', 'ROLE_MVC', 'F7A07C53B4718BF3A0B64AC5C263FFBE', 'yilmaz');
INSERT INTO `logger` VALUES (3209, '2021-10-27 12:34:16', '0:0:0:0:0:0:0:1', '/css/style.css', 'alper@mail.com', 'alper', 'ROLE_MVC', 'F7A07C53B4718BF3A0B64AC5C263FFBE', 'yilmaz');
INSERT INTO `logger` VALUES (3210, '2021-10-27 12:34:16', '0:0:0:0:0:0:0:1', '/js/script.js', 'alper@mail.com', 'alper', 'ROLE_MVC', 'F7A07C53B4718BF3A0B64AC5C263FFBE', 'yilmaz');
INSERT INTO `logger` VALUES (3211, '2021-10-27 12:34:16', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.js', 'alper@mail.com', 'alper', 'ROLE_MVC', 'F7A07C53B4718BF3A0B64AC5C263FFBE', 'yilmaz');
INSERT INTO `logger` VALUES (3212, '2021-10-27 12:34:17', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/outline-icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', 'F7A07C53B4718BF3A0B64AC5C263FFBE', 'yilmaz');
INSERT INTO `logger` VALUES (3213, '2021-10-27 12:34:17', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', 'F7A07C53B4718BF3A0B64AC5C263FFBE', 'yilmaz');
INSERT INTO `logger` VALUES (3214, '2021-10-27 12:34:17', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/brand-icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', 'F7A07C53B4718BF3A0B64AC5C263FFBE', 'yilmaz');
INSERT INTO `logger` VALUES (3215, '2021-10-27 12:34:19', '0:0:0:0:0:0:0:1', '/product', 'alper@mail.com', 'alper', 'ROLE_MVC', 'F7A07C53B4718BF3A0B64AC5C263FFBE', 'yilmaz');
INSERT INTO `logger` VALUES (3216, '2021-10-27 12:34:19', '0:0:0:0:0:0:0:1', '/js/jquery-3.1.1.js', 'alper@mail.com', 'alper', 'ROLE_MVC', 'F7A07C53B4718BF3A0B64AC5C263FFBE', 'yilmaz');
INSERT INTO `logger` VALUES (3217, '2021-10-27 12:34:19', '0:0:0:0:0:0:0:1', '/css/all.min.css', 'alper@mail.com', 'alper', 'ROLE_MVC', 'F7A07C53B4718BF3A0B64AC5C263FFBE', 'yilmaz');
INSERT INTO `logger` VALUES (3218, '2021-10-27 12:34:19', '0:0:0:0:0:0:0:1', '/css/style.css', 'alper@mail.com', 'alper', 'ROLE_MVC', 'F7A07C53B4718BF3A0B64AC5C263FFBE', 'yilmaz');
INSERT INTO `logger` VALUES (3219, '2021-10-27 12:34:19', '0:0:0:0:0:0:0:1', '/css/ckeditor.css', 'alper@mail.com', 'alper', 'ROLE_MVC', 'F7A07C53B4718BF3A0B64AC5C263FFBE', 'yilmaz');
INSERT INTO `logger` VALUES (3220, '2021-10-27 12:34:19', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.css', 'alper@mail.com', 'alper', 'ROLE_MVC', 'F7A07C53B4718BF3A0B64AC5C263FFBE', 'yilmaz');
INSERT INTO `logger` VALUES (3221, '2021-10-27 12:34:19', '0:0:0:0:0:0:0:1', '/js/jquery.min.js', 'alper@mail.com', 'alper', 'ROLE_MVC', 'F7A07C53B4718BF3A0B64AC5C263FFBE', 'yilmaz');
INSERT INTO `logger` VALUES (3222, '2021-10-27 12:34:19', '0:0:0:0:0:0:0:1', '/js/script.js', 'alper@mail.com', 'alper', 'ROLE_MVC', 'F7A07C53B4718BF3A0B64AC5C263FFBE', 'yilmaz');
INSERT INTO `logger` VALUES (3223, '2021-10-27 12:34:19', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.js', 'alper@mail.com', 'alper', 'ROLE_MVC', 'F7A07C53B4718BF3A0B64AC5C263FFBE', 'yilmaz');
INSERT INTO `logger` VALUES (3224, '2021-10-27 12:34:20', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/outline-icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', 'F7A07C53B4718BF3A0B64AC5C263FFBE', 'yilmaz');
INSERT INTO `logger` VALUES (3225, '2021-10-27 12:34:20', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', 'F7A07C53B4718BF3A0B64AC5C263FFBE', 'yilmaz');
INSERT INTO `logger` VALUES (3226, '2021-10-27 12:34:20', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/brand-icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', 'F7A07C53B4718BF3A0B64AC5C263FFBE', 'yilmaz');
INSERT INTO `logger` VALUES (3227, '2021-10-27 12:37:00', '0:0:0:0:0:0:0:1', '/product', 'alper@mail.com', 'alper', 'ROLE_MVC', 'F7A07C53B4718BF3A0B64AC5C263FFBE', 'yilmaz');
INSERT INTO `logger` VALUES (3228, '2021-10-27 12:37:01', '0:0:0:0:0:0:0:1', '/css/all.min.css', 'alper@mail.com', 'alper', 'ROLE_MVC', 'F7A07C53B4718BF3A0B64AC5C263FFBE', 'yilmaz');
INSERT INTO `logger` VALUES (3229, '2021-10-27 12:37:01', '0:0:0:0:0:0:0:1', '/css/ckeditor.css', 'alper@mail.com', 'alper', 'ROLE_MVC', 'F7A07C53B4718BF3A0B64AC5C263FFBE', 'yilmaz');
INSERT INTO `logger` VALUES (3230, '2021-10-27 12:37:01', '0:0:0:0:0:0:0:1', '/js/jquery.min.js', 'alper@mail.com', 'alper', 'ROLE_MVC', 'F7A07C53B4718BF3A0B64AC5C263FFBE', 'yilmaz');
INSERT INTO `logger` VALUES (3231, '2021-10-27 12:37:01', '0:0:0:0:0:0:0:1', '/css/style.css', 'alper@mail.com', 'alper', 'ROLE_MVC', 'F7A07C53B4718BF3A0B64AC5C263FFBE', 'yilmaz');
INSERT INTO `logger` VALUES (3232, '2021-10-27 12:37:01', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.css', 'alper@mail.com', 'alper', 'ROLE_MVC', 'F7A07C53B4718BF3A0B64AC5C263FFBE', 'yilmaz');
INSERT INTO `logger` VALUES (3233, '2021-10-27 12:37:01', '0:0:0:0:0:0:0:1', '/js/jquery-3.1.1.js', 'alper@mail.com', 'alper', 'ROLE_MVC', 'F7A07C53B4718BF3A0B64AC5C263FFBE', 'yilmaz');
INSERT INTO `logger` VALUES (3234, '2021-10-27 12:37:01', '0:0:0:0:0:0:0:1', '/js/script.js', 'alper@mail.com', 'alper', 'ROLE_MVC', 'F7A07C53B4718BF3A0B64AC5C263FFBE', 'yilmaz');
INSERT INTO `logger` VALUES (3235, '2021-10-27 12:37:01', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.js', 'alper@mail.com', 'alper', 'ROLE_MVC', 'F7A07C53B4718BF3A0B64AC5C263FFBE', 'yilmaz');
INSERT INTO `logger` VALUES (3236, '2021-10-27 12:37:02', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/brand-icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', 'F7A07C53B4718BF3A0B64AC5C263FFBE', 'yilmaz');
INSERT INTO `logger` VALUES (3237, '2021-10-27 12:37:02', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/outline-icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', 'F7A07C53B4718BF3A0B64AC5C263FFBE', 'yilmaz');
INSERT INTO `logger` VALUES (3238, '2021-10-27 12:37:02', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', 'F7A07C53B4718BF3A0B64AC5C263FFBE', 'yilmaz');
INSERT INTO `logger` VALUES (3239, '2021-10-27 12:37:03', '0:0:0:0:0:0:0:1', '/favicon.ico', 'alper@mail.com', 'alper', 'ROLE_MVC', 'F7A07C53B4718BF3A0B64AC5C263FFBE', 'yilmaz');
INSERT INTO `logger` VALUES (3240, '2021-10-27 12:37:15', '0:0:0:0:0:0:0:1', '/product/add', 'alper@mail.com', 'alper', 'ROLE_MVC', 'F7A07C53B4718BF3A0B64AC5C263FFBE', 'yilmaz');
INSERT INTO `logger` VALUES (3241, '2021-10-27 12:37:16', '0:0:0:0:0:0:0:1', '/css/ckeditor.css', 'alper@mail.com', 'alper', 'ROLE_MVC', 'F7A07C53B4718BF3A0B64AC5C263FFBE', 'yilmaz');
INSERT INTO `logger` VALUES (3242, '2021-10-27 12:37:16', '0:0:0:0:0:0:0:1', '/css/style.css', 'alper@mail.com', 'alper', 'ROLE_MVC', 'F7A07C53B4718BF3A0B64AC5C263FFBE', 'yilmaz');
INSERT INTO `logger` VALUES (3243, '2021-10-27 12:37:16', '0:0:0:0:0:0:0:1', '/css/all.min.css', 'alper@mail.com', 'alper', 'ROLE_MVC', 'F7A07C53B4718BF3A0B64AC5C263FFBE', 'yilmaz');
INSERT INTO `logger` VALUES (3244, '2021-10-27 12:37:16', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.css', 'alper@mail.com', 'alper', 'ROLE_MVC', 'F7A07C53B4718BF3A0B64AC5C263FFBE', 'yilmaz');
INSERT INTO `logger` VALUES (3245, '2021-10-27 12:37:16', '0:0:0:0:0:0:0:1', '/js/jquery-3.1.1.js', 'alper@mail.com', 'alper', 'ROLE_MVC', 'F7A07C53B4718BF3A0B64AC5C263FFBE', 'yilmaz');
INSERT INTO `logger` VALUES (3246, '2021-10-27 12:37:16', '0:0:0:0:0:0:0:1', '/js/jquery.min.js', 'alper@mail.com', 'alper', 'ROLE_MVC', 'F7A07C53B4718BF3A0B64AC5C263FFBE', 'yilmaz');
INSERT INTO `logger` VALUES (3247, '2021-10-27 12:37:16', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.js', 'alper@mail.com', 'alper', 'ROLE_MVC', 'F7A07C53B4718BF3A0B64AC5C263FFBE', 'yilmaz');
INSERT INTO `logger` VALUES (3248, '2021-10-27 12:37:16', '0:0:0:0:0:0:0:1', '/js/script.js', 'alper@mail.com', 'alper', 'ROLE_MVC', 'F7A07C53B4718BF3A0B64AC5C263FFBE', 'yilmaz');
INSERT INTO `logger` VALUES (3249, '2021-10-27 12:37:16', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', 'F7A07C53B4718BF3A0B64AC5C263FFBE', 'yilmaz');
INSERT INTO `logger` VALUES (3250, '2021-10-27 12:37:16', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/brand-icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', 'F7A07C53B4718BF3A0B64AC5C263FFBE', 'yilmaz');
INSERT INTO `logger` VALUES (3251, '2021-10-27 12:37:16', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/outline-icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', 'F7A07C53B4718BF3A0B64AC5C263FFBE', 'yilmaz');
INSERT INTO `logger` VALUES (3252, '2021-10-27 12:37:48', '0:0:0:0:0:0:0:1', '/product', 'alper@mail.com', 'alper', 'ROLE_MVC', 'F7A07C53B4718BF3A0B64AC5C263FFBE', 'yilmaz');
INSERT INTO `logger` VALUES (3253, '2021-10-27 12:37:48', '0:0:0:0:0:0:0:1', '/js/jquery-3.1.1.js', 'alper@mail.com', 'alper', 'ROLE_MVC', 'F7A07C53B4718BF3A0B64AC5C263FFBE', 'yilmaz');
INSERT INTO `logger` VALUES (3254, '2021-10-27 12:37:48', '0:0:0:0:0:0:0:1', '/js/jquery.min.js', 'alper@mail.com', 'alper', 'ROLE_MVC', 'F7A07C53B4718BF3A0B64AC5C263FFBE', 'yilmaz');
INSERT INTO `logger` VALUES (3255, '2021-10-27 12:37:48', '0:0:0:0:0:0:0:1', '/css/all.min.css', 'alper@mail.com', 'alper', 'ROLE_MVC', 'F7A07C53B4718BF3A0B64AC5C263FFBE', 'yilmaz');
INSERT INTO `logger` VALUES (3256, '2021-10-27 12:37:48', '0:0:0:0:0:0:0:1', '/css/ckeditor.css', 'alper@mail.com', 'alper', 'ROLE_MVC', 'F7A07C53B4718BF3A0B64AC5C263FFBE', 'yilmaz');
INSERT INTO `logger` VALUES (3257, '2021-10-27 12:37:48', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.css', 'alper@mail.com', 'alper', 'ROLE_MVC', 'F7A07C53B4718BF3A0B64AC5C263FFBE', 'yilmaz');
INSERT INTO `logger` VALUES (3258, '2021-10-27 12:37:48', '0:0:0:0:0:0:0:1', '/css/style.css', 'alper@mail.com', 'alper', 'ROLE_MVC', 'F7A07C53B4718BF3A0B64AC5C263FFBE', 'yilmaz');
INSERT INTO `logger` VALUES (3259, '2021-10-27 12:37:48', '0:0:0:0:0:0:0:1', '/js/script.js', 'alper@mail.com', 'alper', 'ROLE_MVC', 'F7A07C53B4718BF3A0B64AC5C263FFBE', 'yilmaz');
INSERT INTO `logger` VALUES (3260, '2021-10-27 12:37:48', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.js', 'alper@mail.com', 'alper', 'ROLE_MVC', 'F7A07C53B4718BF3A0B64AC5C263FFBE', 'yilmaz');
INSERT INTO `logger` VALUES (3261, '2021-10-27 12:38:00', '0:0:0:0:0:0:0:1', '/product', 'alper@mail.com', 'alper', 'ROLE_MVC', 'F7A07C53B4718BF3A0B64AC5C263FFBE', 'yilmaz');
INSERT INTO `logger` VALUES (3262, '2021-10-27 12:38:00', '0:0:0:0:0:0:0:1', '/js/jquery.min.js', 'alper@mail.com', 'alper', 'ROLE_MVC', 'F7A07C53B4718BF3A0B64AC5C263FFBE', 'yilmaz');
INSERT INTO `logger` VALUES (3263, '2021-10-27 12:38:00', '0:0:0:0:0:0:0:1', '/css/ckeditor.css', 'alper@mail.com', 'alper', 'ROLE_MVC', 'F7A07C53B4718BF3A0B64AC5C263FFBE', 'yilmaz');
INSERT INTO `logger` VALUES (3264, '2021-10-27 12:38:00', '0:0:0:0:0:0:0:1', '/js/jquery-3.1.1.js', 'alper@mail.com', 'alper', 'ROLE_MVC', 'F7A07C53B4718BF3A0B64AC5C263FFBE', 'yilmaz');
INSERT INTO `logger` VALUES (3265, '2021-10-27 12:38:00', '0:0:0:0:0:0:0:1', '/css/all.min.css', 'alper@mail.com', 'alper', 'ROLE_MVC', 'F7A07C53B4718BF3A0B64AC5C263FFBE', 'yilmaz');
INSERT INTO `logger` VALUES (3266, '2021-10-27 12:38:00', '0:0:0:0:0:0:0:1', '/css/style.css', 'alper@mail.com', 'alper', 'ROLE_MVC', 'F7A07C53B4718BF3A0B64AC5C263FFBE', 'yilmaz');
INSERT INTO `logger` VALUES (3267, '2021-10-27 12:38:00', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.css', 'alper@mail.com', 'alper', 'ROLE_MVC', 'F7A07C53B4718BF3A0B64AC5C263FFBE', 'yilmaz');
INSERT INTO `logger` VALUES (3268, '2021-10-27 12:38:01', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.js', 'alper@mail.com', 'alper', 'ROLE_MVC', 'F7A07C53B4718BF3A0B64AC5C263FFBE', 'yilmaz');
INSERT INTO `logger` VALUES (3269, '2021-10-27 12:38:01', '0:0:0:0:0:0:0:1', '/js/script.js', 'alper@mail.com', 'alper', 'ROLE_MVC', 'F7A07C53B4718BF3A0B64AC5C263FFBE', 'yilmaz');
INSERT INTO `logger` VALUES (3270, '2021-10-27 12:38:01', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', 'F7A07C53B4718BF3A0B64AC5C263FFBE', 'yilmaz');
INSERT INTO `logger` VALUES (3271, '2021-10-27 12:38:01', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/outline-icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', 'F7A07C53B4718BF3A0B64AC5C263FFBE', 'yilmaz');
INSERT INTO `logger` VALUES (3272, '2021-10-27 12:38:01', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/brand-icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', 'F7A07C53B4718BF3A0B64AC5C263FFBE', 'yilmaz');
INSERT INTO `logger` VALUES (3273, '2021-10-27 12:38:02', '0:0:0:0:0:0:0:1', '/favicon.ico', 'alper@mail.com', 'alper', 'ROLE_MVC', 'F7A07C53B4718BF3A0B64AC5C263FFBE', 'yilmaz');
INSERT INTO `logger` VALUES (3274, '2021-10-27 12:38:03', '0:0:0:0:0:0:0:1', '/product', 'alper@mail.com', 'alper', 'ROLE_MVC', 'F7A07C53B4718BF3A0B64AC5C263FFBE', 'yilmaz');
INSERT INTO `logger` VALUES (3275, '2021-10-27 12:38:03', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.css', 'alper@mail.com', 'alper', 'ROLE_MVC', 'F7A07C53B4718BF3A0B64AC5C263FFBE', 'yilmaz');
INSERT INTO `logger` VALUES (3276, '2021-10-27 12:38:03', '0:0:0:0:0:0:0:1', '/css/style.css', 'alper@mail.com', 'alper', 'ROLE_MVC', 'F7A07C53B4718BF3A0B64AC5C263FFBE', 'yilmaz');
INSERT INTO `logger` VALUES (3277, '2021-10-27 12:38:03', '0:0:0:0:0:0:0:1', '/css/all.min.css', 'alper@mail.com', 'alper', 'ROLE_MVC', 'F7A07C53B4718BF3A0B64AC5C263FFBE', 'yilmaz');
INSERT INTO `logger` VALUES (3278, '2021-10-27 12:38:03', '0:0:0:0:0:0:0:1', '/css/ckeditor.css', 'alper@mail.com', 'alper', 'ROLE_MVC', 'F7A07C53B4718BF3A0B64AC5C263FFBE', 'yilmaz');
INSERT INTO `logger` VALUES (3279, '2021-10-27 12:38:03', '0:0:0:0:0:0:0:1', '/js/jquery.min.js', 'alper@mail.com', 'alper', 'ROLE_MVC', 'F7A07C53B4718BF3A0B64AC5C263FFBE', 'yilmaz');
INSERT INTO `logger` VALUES (3280, '2021-10-27 12:38:03', '0:0:0:0:0:0:0:1', '/js/jquery-3.1.1.js', 'alper@mail.com', 'alper', 'ROLE_MVC', 'F7A07C53B4718BF3A0B64AC5C263FFBE', 'yilmaz');
INSERT INTO `logger` VALUES (3281, '2021-10-27 12:38:03', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.js', 'alper@mail.com', 'alper', 'ROLE_MVC', 'F7A07C53B4718BF3A0B64AC5C263FFBE', 'yilmaz');
INSERT INTO `logger` VALUES (3282, '2021-10-27 12:38:03', '0:0:0:0:0:0:0:1', '/js/script.js', 'alper@mail.com', 'alper', 'ROLE_MVC', 'F7A07C53B4718BF3A0B64AC5C263FFBE', 'yilmaz');
INSERT INTO `logger` VALUES (3283, '2021-10-27 12:38:04', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', 'F7A07C53B4718BF3A0B64AC5C263FFBE', 'yilmaz');
INSERT INTO `logger` VALUES (3284, '2021-10-27 12:38:04', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/outline-icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', 'F7A07C53B4718BF3A0B64AC5C263FFBE', 'yilmaz');
INSERT INTO `logger` VALUES (3285, '2021-10-27 12:38:05', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/brand-icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', 'F7A07C53B4718BF3A0B64AC5C263FFBE', 'yilmaz');
INSERT INTO `logger` VALUES (3286, '2021-10-27 12:38:05', '0:0:0:0:0:0:0:1', '/favicon.ico', 'alper@mail.com', 'alper', 'ROLE_MVC', 'F7A07C53B4718BF3A0B64AC5C263FFBE', 'yilmaz');
INSERT INTO `logger` VALUES (3287, '2021-10-27 12:38:21', '0:0:0:0:0:0:0:1', '/productManager', 'alper@mail.com', 'alper', 'ROLE_MVC', 'F7A07C53B4718BF3A0B64AC5C263FFBE', 'yilmaz');
INSERT INTO `logger` VALUES (3288, '2021-10-27 12:38:21', '0:0:0:0:0:0:0:1', '/js/jquery-3.1.1.js', 'alper@mail.com', 'alper', 'ROLE_MVC', 'F7A07C53B4718BF3A0B64AC5C263FFBE', 'yilmaz');
INSERT INTO `logger` VALUES (3289, '2021-10-27 12:38:21', '0:0:0:0:0:0:0:1', '/css/ckeditor.css', 'alper@mail.com', 'alper', 'ROLE_MVC', 'F7A07C53B4718BF3A0B64AC5C263FFBE', 'yilmaz');
INSERT INTO `logger` VALUES (3290, '2021-10-27 12:38:21', '0:0:0:0:0:0:0:1', '/sitejs/productManagement.js', 'alper@mail.com', 'alper', 'ROLE_MVC', 'F7A07C53B4718BF3A0B64AC5C263FFBE', 'yilmaz');
INSERT INTO `logger` VALUES (3291, '2021-10-27 12:38:21', '0:0:0:0:0:0:0:1', '/css/style.css', 'alper@mail.com', 'alper', 'ROLE_MVC', 'F7A07C53B4718BF3A0B64AC5C263FFBE', 'yilmaz');
INSERT INTO `logger` VALUES (3292, '2021-10-27 12:38:21', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.css', 'alper@mail.com', 'alper', 'ROLE_MVC', 'F7A07C53B4718BF3A0B64AC5C263FFBE', 'yilmaz');
INSERT INTO `logger` VALUES (3293, '2021-10-27 12:38:21', '0:0:0:0:0:0:0:1', '/css/all.min.css', 'alper@mail.com', 'alper', 'ROLE_MVC', 'F7A07C53B4718BF3A0B64AC5C263FFBE', 'yilmaz');
INSERT INTO `logger` VALUES (3294, '2021-10-27 12:38:21', '0:0:0:0:0:0:0:1', '/js/script.js', 'alper@mail.com', 'alper', 'ROLE_MVC', 'F7A07C53B4718BF3A0B64AC5C263FFBE', 'yilmaz');
INSERT INTO `logger` VALUES (3295, '2021-10-27 12:38:21', '0:0:0:0:0:0:0:1', '/js/jquery.min.js', 'alper@mail.com', 'alper', 'ROLE_MVC', 'F7A07C53B4718BF3A0B64AC5C263FFBE', 'yilmaz');
INSERT INTO `logger` VALUES (3296, '2021-10-27 12:38:21', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.js', 'alper@mail.com', 'alper', 'ROLE_MVC', 'F7A07C53B4718BF3A0B64AC5C263FFBE', 'yilmaz');
INSERT INTO `logger` VALUES (3297, '2021-10-27 12:38:21', '0:0:0:0:0:0:0:1', '/productManager/listed', 'alper@mail.com', 'alper', 'ROLE_MVC', 'F7A07C53B4718BF3A0B64AC5C263FFBE', 'yilmaz');
INSERT INTO `logger` VALUES (3298, '2021-10-27 12:38:21', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/brand-icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', 'F7A07C53B4718BF3A0B64AC5C263FFBE', 'yilmaz');
INSERT INTO `logger` VALUES (3299, '2021-10-27 12:38:21', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', 'F7A07C53B4718BF3A0B64AC5C263FFBE', 'yilmaz');
INSERT INTO `logger` VALUES (3300, '2021-10-27 12:38:21', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/outline-icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', 'F7A07C53B4718BF3A0B64AC5C263FFBE', 'yilmaz');
INSERT INTO `logger` VALUES (3301, '2021-10-27 12:38:25', '0:0:0:0:0:0:0:1', '/uploads/product/8267c080-a458-49de-a4d2-c01c85a4f1455.jpg', 'alper@mail.com', 'alper', 'ROLE_MVC', 'F7A07C53B4718BF3A0B64AC5C263FFBE', 'yilmaz');
INSERT INTO `logger` VALUES (3302, '2021-10-27 12:38:25', '0:0:0:0:0:0:0:1', '/uploads/product/effa238b-69db-4d38-af7c-42846c2ecfef4.jpg', 'alper@mail.com', 'alper', 'ROLE_MVC', 'F7A07C53B4718BF3A0B64AC5C263FFBE', 'yilmaz');
INSERT INTO `logger` VALUES (3303, '2021-10-27 12:38:25', '0:0:0:0:0:0:0:1', '/uploads/product/ad5bcdf7-2abe-42b4-8de5-9914447f5f386.jpg', 'alper@mail.com', 'alper', 'ROLE_MVC', 'F7A07C53B4718BF3A0B64AC5C263FFBE', 'yilmaz');
INSERT INTO `logger` VALUES (3304, '2021-10-27 12:38:27', '0:0:0:0:0:0:0:1', '/productManager/pagelisted/1/5', 'alper@mail.com', 'alper', 'ROLE_MVC', 'F7A07C53B4718BF3A0B64AC5C263FFBE', 'yilmaz');
INSERT INTO `logger` VALUES (3305, '2021-10-27 12:38:28', '0:0:0:0:0:0:0:1', '/uploads/product/8a487d2c-18c1-4bc1-b3d6-98e187db57ab4.jpg', 'alper@mail.com', 'alper', 'ROLE_MVC', 'F7A07C53B4718BF3A0B64AC5C263FFBE', 'yilmaz');
INSERT INTO `logger` VALUES (3306, '2021-10-27 12:38:28', '0:0:0:0:0:0:0:1', '/uploads/product/36e04f26-c5ec-4738-a681-853c72ac4bc95.jpg', 'alper@mail.com', 'alper', 'ROLE_MVC', 'F7A07C53B4718BF3A0B64AC5C263FFBE', 'yilmaz');
INSERT INTO `logger` VALUES (3307, '2021-10-27 12:38:31', '0:0:0:0:0:0:0:1', '/productManager/pagelisted/0/5', 'alper@mail.com', 'alper', 'ROLE_MVC', 'F7A07C53B4718BF3A0B64AC5C263FFBE', 'yilmaz');
INSERT INTO `logger` VALUES (3308, '2021-10-27 12:38:53', '0:0:0:0:0:0:0:1', '/productManager/pagelisted/1/5', 'alper@mail.com', 'alper', 'ROLE_MVC', 'F7A07C53B4718BF3A0B64AC5C263FFBE', 'yilmaz');
INSERT INTO `logger` VALUES (3309, '2021-10-27 12:38:54', '0:0:0:0:0:0:0:1', '/uploads/product/36e04f26-c5ec-4738-a681-853c72ac4bc95.jpg', 'alper@mail.com', 'alper', 'ROLE_MVC', 'F7A07C53B4718BF3A0B64AC5C263FFBE', 'yilmaz');
INSERT INTO `logger` VALUES (3310, '2021-10-27 12:38:54', '0:0:0:0:0:0:0:1', '/uploads/product/8a487d2c-18c1-4bc1-b3d6-98e187db57ab4.jpg', 'alper@mail.com', 'alper', 'ROLE_MVC', 'F7A07C53B4718BF3A0B64AC5C263FFBE', 'yilmaz');
INSERT INTO `logger` VALUES (3311, '2021-10-27 12:39:17', '0:0:0:0:0:0:0:1', '/product', 'alper@mail.com', 'alper', 'ROLE_MVC', 'F7A07C53B4718BF3A0B64AC5C263FFBE', 'yilmaz');
INSERT INTO `logger` VALUES (3312, '2021-10-27 12:39:17', '0:0:0:0:0:0:0:1', '/css/style.css', 'alper@mail.com', 'alper', 'ROLE_MVC', 'F7A07C53B4718BF3A0B64AC5C263FFBE', 'yilmaz');
INSERT INTO `logger` VALUES (3313, '2021-10-27 12:39:18', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.css', 'alper@mail.com', 'alper', 'ROLE_MVC', 'F7A07C53B4718BF3A0B64AC5C263FFBE', 'yilmaz');
INSERT INTO `logger` VALUES (3314, '2021-10-27 12:39:18', '0:0:0:0:0:0:0:1', '/css/all.min.css', 'alper@mail.com', 'alper', 'ROLE_MVC', 'F7A07C53B4718BF3A0B64AC5C263FFBE', 'yilmaz');
INSERT INTO `logger` VALUES (3315, '2021-10-27 12:39:18', '0:0:0:0:0:0:0:1', '/css/ckeditor.css', 'alper@mail.com', 'alper', 'ROLE_MVC', 'F7A07C53B4718BF3A0B64AC5C263FFBE', 'yilmaz');
INSERT INTO `logger` VALUES (3316, '2021-10-27 12:39:18', '0:0:0:0:0:0:0:1', '/js/jquery-3.1.1.js', 'alper@mail.com', 'alper', 'ROLE_MVC', 'F7A07C53B4718BF3A0B64AC5C263FFBE', 'yilmaz');
INSERT INTO `logger` VALUES (3317, '2021-10-27 12:39:18', '0:0:0:0:0:0:0:1', '/js/jquery.min.js', 'alper@mail.com', 'alper', 'ROLE_MVC', 'F7A07C53B4718BF3A0B64AC5C263FFBE', 'yilmaz');
INSERT INTO `logger` VALUES (3318, '2021-10-27 12:39:18', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.js', 'alper@mail.com', 'alper', 'ROLE_MVC', 'F7A07C53B4718BF3A0B64AC5C263FFBE', 'yilmaz');
INSERT INTO `logger` VALUES (3319, '2021-10-27 12:39:18', '0:0:0:0:0:0:0:1', '/js/script.js', 'alper@mail.com', 'alper', 'ROLE_MVC', 'F7A07C53B4718BF3A0B64AC5C263FFBE', 'yilmaz');
INSERT INTO `logger` VALUES (3320, '2021-10-27 12:41:37', '0:0:0:0:0:0:0:1', '/product/add', 'alper@mail.com', 'alper', 'ROLE_MVC', 'F7A07C53B4718BF3A0B64AC5C263FFBE', 'yilmaz');
INSERT INTO `logger` VALUES (3321, '2021-10-27 12:41:38', '0:0:0:0:0:0:0:1', '/js/jquery.min.js', 'alper@mail.com', 'alper', 'ROLE_MVC', 'F7A07C53B4718BF3A0B64AC5C263FFBE', 'yilmaz');
INSERT INTO `logger` VALUES (3322, '2021-10-27 12:41:38', '0:0:0:0:0:0:0:1', '/css/style.css', 'alper@mail.com', 'alper', 'ROLE_MVC', 'F7A07C53B4718BF3A0B64AC5C263FFBE', 'yilmaz');
INSERT INTO `logger` VALUES (3323, '2021-10-27 12:41:38', '0:0:0:0:0:0:0:1', '/js/jquery-3.1.1.js', 'alper@mail.com', 'alper', 'ROLE_MVC', 'F7A07C53B4718BF3A0B64AC5C263FFBE', 'yilmaz');
INSERT INTO `logger` VALUES (3324, '2021-10-27 12:41:38', '0:0:0:0:0:0:0:1', '/css/all.min.css', 'alper@mail.com', 'alper', 'ROLE_MVC', 'F7A07C53B4718BF3A0B64AC5C263FFBE', 'yilmaz');
INSERT INTO `logger` VALUES (3325, '2021-10-27 12:41:38', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.css', 'alper@mail.com', 'alper', 'ROLE_MVC', 'F7A07C53B4718BF3A0B64AC5C263FFBE', 'yilmaz');
INSERT INTO `logger` VALUES (3326, '2021-10-27 12:41:38', '0:0:0:0:0:0:0:1', '/css/ckeditor.css', 'alper@mail.com', 'alper', 'ROLE_MVC', 'F7A07C53B4718BF3A0B64AC5C263FFBE', 'yilmaz');
INSERT INTO `logger` VALUES (3327, '2021-10-27 12:41:39', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.js', 'alper@mail.com', 'alper', 'ROLE_MVC', 'F7A07C53B4718BF3A0B64AC5C263FFBE', 'yilmaz');
INSERT INTO `logger` VALUES (3328, '2021-10-27 12:41:39', '0:0:0:0:0:0:0:1', '/js/script.js', 'alper@mail.com', 'alper', 'ROLE_MVC', 'F7A07C53B4718BF3A0B64AC5C263FFBE', 'yilmaz');
INSERT INTO `logger` VALUES (3329, '2021-10-27 12:41:39', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/outline-icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', 'F7A07C53B4718BF3A0B64AC5C263FFBE', 'yilmaz');
INSERT INTO `logger` VALUES (3330, '2021-10-27 12:41:39', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', 'F7A07C53B4718BF3A0B64AC5C263FFBE', 'yilmaz');
INSERT INTO `logger` VALUES (3331, '2021-10-27 12:41:39', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/brand-icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', 'F7A07C53B4718BF3A0B64AC5C263FFBE', 'yilmaz');
INSERT INTO `logger` VALUES (3332, '2021-10-27 12:41:42', '0:0:0:0:0:0:0:1', '/product', 'alper@mail.com', 'alper', 'ROLE_MVC', 'F7A07C53B4718BF3A0B64AC5C263FFBE', 'yilmaz');
INSERT INTO `logger` VALUES (3333, '2021-10-27 12:41:42', '0:0:0:0:0:0:0:1', '/css/ckeditor.css', 'alper@mail.com', 'alper', 'ROLE_MVC', 'F7A07C53B4718BF3A0B64AC5C263FFBE', 'yilmaz');
INSERT INTO `logger` VALUES (3334, '2021-10-27 12:41:42', '0:0:0:0:0:0:0:1', '/css/style.css', 'alper@mail.com', 'alper', 'ROLE_MVC', 'F7A07C53B4718BF3A0B64AC5C263FFBE', 'yilmaz');
INSERT INTO `logger` VALUES (3335, '2021-10-27 12:41:42', '0:0:0:0:0:0:0:1', '/js/jquery.min.js', 'alper@mail.com', 'alper', 'ROLE_MVC', 'F7A07C53B4718BF3A0B64AC5C263FFBE', 'yilmaz');
INSERT INTO `logger` VALUES (3336, '2021-10-27 12:41:42', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.css', 'alper@mail.com', 'alper', 'ROLE_MVC', 'F7A07C53B4718BF3A0B64AC5C263FFBE', 'yilmaz');
INSERT INTO `logger` VALUES (3337, '2021-10-27 12:41:42', '0:0:0:0:0:0:0:1', '/js/jquery-3.1.1.js', 'alper@mail.com', 'alper', 'ROLE_MVC', 'F7A07C53B4718BF3A0B64AC5C263FFBE', 'yilmaz');
INSERT INTO `logger` VALUES (3338, '2021-10-27 12:41:42', '0:0:0:0:0:0:0:1', '/css/all.min.css', 'alper@mail.com', 'alper', 'ROLE_MVC', 'F7A07C53B4718BF3A0B64AC5C263FFBE', 'yilmaz');
INSERT INTO `logger` VALUES (3339, '2021-10-27 12:41:42', '0:0:0:0:0:0:0:1', '/js/script.js', 'alper@mail.com', 'alper', 'ROLE_MVC', 'F7A07C53B4718BF3A0B64AC5C263FFBE', 'yilmaz');
INSERT INTO `logger` VALUES (3340, '2021-10-27 12:41:42', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.js', 'alper@mail.com', 'alper', 'ROLE_MVC', 'F7A07C53B4718BF3A0B64AC5C263FFBE', 'yilmaz');
INSERT INTO `logger` VALUES (3341, '2021-10-27 12:41:43', '0:0:0:0:0:0:0:1', '/customer', 'alper@mail.com', 'alper', 'ROLE_MVC', 'F7A07C53B4718BF3A0B64AC5C263FFBE', 'yilmaz');
INSERT INTO `logger` VALUES (3342, '2021-10-27 12:41:43', '0:0:0:0:0:0:0:1', '/js/jquery-3.1.1.js', 'alper@mail.com', 'alper', 'ROLE_MVC', 'F7A07C53B4718BF3A0B64AC5C263FFBE', 'yilmaz');
INSERT INTO `logger` VALUES (3343, '2021-10-27 12:41:43', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.css', 'alper@mail.com', 'alper', 'ROLE_MVC', 'F7A07C53B4718BF3A0B64AC5C263FFBE', 'yilmaz');
INSERT INTO `logger` VALUES (3344, '2021-10-27 12:41:43', '0:0:0:0:0:0:0:1', '/js/jquery.min.js', 'alper@mail.com', 'alper', 'ROLE_MVC', 'F7A07C53B4718BF3A0B64AC5C263FFBE', 'yilmaz');
INSERT INTO `logger` VALUES (3345, '2021-10-27 12:41:43', '0:0:0:0:0:0:0:1', '/css/style.css', 'alper@mail.com', 'alper', 'ROLE_MVC', 'F7A07C53B4718BF3A0B64AC5C263FFBE', 'yilmaz');
INSERT INTO `logger` VALUES (3346, '2021-10-27 12:41:43', '0:0:0:0:0:0:0:1', '/css/ckeditor.css', 'alper@mail.com', 'alper', 'ROLE_MVC', 'F7A07C53B4718BF3A0B64AC5C263FFBE', 'yilmaz');
INSERT INTO `logger` VALUES (3347, '2021-10-27 12:41:43', '0:0:0:0:0:0:0:1', '/css/all.min.css', 'alper@mail.com', 'alper', 'ROLE_MVC', 'F7A07C53B4718BF3A0B64AC5C263FFBE', 'yilmaz');
INSERT INTO `logger` VALUES (3348, '2021-10-27 12:41:43', '0:0:0:0:0:0:0:1', '/js/script.js', 'alper@mail.com', 'alper', 'ROLE_MVC', 'F7A07C53B4718BF3A0B64AC5C263FFBE', 'yilmaz');
INSERT INTO `logger` VALUES (3349, '2021-10-27 12:41:43', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.js', 'alper@mail.com', 'alper', 'ROLE_MVC', 'F7A07C53B4718BF3A0B64AC5C263FFBE', 'yilmaz');
INSERT INTO `logger` VALUES (3350, '2021-10-27 12:41:44', '0:0:0:0:0:0:0:1', '/main', 'alper@mail.com', 'alper', 'ROLE_MVC', 'F7A07C53B4718BF3A0B64AC5C263FFBE', 'yilmaz');
INSERT INTO `logger` VALUES (3351, '2021-10-27 12:41:44', '0:0:0:0:0:0:0:1', '/css/style.css', 'alper@mail.com', 'alper', 'ROLE_MVC', 'F7A07C53B4718BF3A0B64AC5C263FFBE', 'yilmaz');
INSERT INTO `logger` VALUES (3352, '2021-10-27 12:41:44', '0:0:0:0:0:0:0:1', '/js/jquery-3.1.1.js', 'alper@mail.com', 'alper', 'ROLE_MVC', 'F7A07C53B4718BF3A0B64AC5C263FFBE', 'yilmaz');
INSERT INTO `logger` VALUES (3353, '2021-10-27 12:41:44', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.css', 'alper@mail.com', 'alper', 'ROLE_MVC', 'F7A07C53B4718BF3A0B64AC5C263FFBE', 'yilmaz');
INSERT INTO `logger` VALUES (3354, '2021-10-27 12:41:44', '0:0:0:0:0:0:0:1', '/css/all.min.css', 'alper@mail.com', 'alper', 'ROLE_MVC', 'F7A07C53B4718BF3A0B64AC5C263FFBE', 'yilmaz');
INSERT INTO `logger` VALUES (3355, '2021-10-27 12:41:44', '0:0:0:0:0:0:0:1', '/css/ckeditor.css', 'alper@mail.com', 'alper', 'ROLE_MVC', 'F7A07C53B4718BF3A0B64AC5C263FFBE', 'yilmaz');
INSERT INTO `logger` VALUES (3356, '2021-10-27 12:41:44', '0:0:0:0:0:0:0:1', '/js/jquery.min.js', 'alper@mail.com', 'alper', 'ROLE_MVC', 'F7A07C53B4718BF3A0B64AC5C263FFBE', 'yilmaz');
INSERT INTO `logger` VALUES (3357, '2021-10-27 12:41:44', '0:0:0:0:0:0:0:1', '/js/script.js', 'alper@mail.com', 'alper', 'ROLE_MVC', 'F7A07C53B4718BF3A0B64AC5C263FFBE', 'yilmaz');
INSERT INTO `logger` VALUES (3358, '2021-10-27 12:41:44', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.js', 'alper@mail.com', 'alper', 'ROLE_MVC', 'F7A07C53B4718BF3A0B64AC5C263FFBE', 'yilmaz');
INSERT INTO `logger` VALUES (3359, '2021-10-27 12:41:48', '0:0:0:0:0:0:0:1', '/productManager', 'alper@mail.com', 'alper', 'ROLE_MVC', 'F7A07C53B4718BF3A0B64AC5C263FFBE', 'yilmaz');
INSERT INTO `logger` VALUES (3360, '2021-10-27 12:41:48', '0:0:0:0:0:0:0:1', '/js/jquery-3.1.1.js', 'alper@mail.com', 'alper', 'ROLE_MVC', 'F7A07C53B4718BF3A0B64AC5C263FFBE', 'yilmaz');
INSERT INTO `logger` VALUES (3361, '2021-10-27 12:41:48', '0:0:0:0:0:0:0:1', '/sitejs/productManagement.js', 'alper@mail.com', 'alper', 'ROLE_MVC', 'F7A07C53B4718BF3A0B64AC5C263FFBE', 'yilmaz');
INSERT INTO `logger` VALUES (3362, '2021-10-27 12:41:48', '0:0:0:0:0:0:0:1', '/css/ckeditor.css', 'alper@mail.com', 'alper', 'ROLE_MVC', 'F7A07C53B4718BF3A0B64AC5C263FFBE', 'yilmaz');
INSERT INTO `logger` VALUES (3363, '2021-10-27 12:41:48', '0:0:0:0:0:0:0:1', '/css/all.min.css', 'alper@mail.com', 'alper', 'ROLE_MVC', 'F7A07C53B4718BF3A0B64AC5C263FFBE', 'yilmaz');
INSERT INTO `logger` VALUES (3364, '2021-10-27 12:41:48', '0:0:0:0:0:0:0:1', '/css/style.css', 'alper@mail.com', 'alper', 'ROLE_MVC', 'F7A07C53B4718BF3A0B64AC5C263FFBE', 'yilmaz');
INSERT INTO `logger` VALUES (3365, '2021-10-27 12:41:48', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.css', 'alper@mail.com', 'alper', 'ROLE_MVC', 'F7A07C53B4718BF3A0B64AC5C263FFBE', 'yilmaz');
INSERT INTO `logger` VALUES (3366, '2021-10-27 12:41:48', '0:0:0:0:0:0:0:1', '/js/script.js', 'alper@mail.com', 'alper', 'ROLE_MVC', 'F7A07C53B4718BF3A0B64AC5C263FFBE', 'yilmaz');
INSERT INTO `logger` VALUES (3367, '2021-10-27 12:41:48', '0:0:0:0:0:0:0:1', '/js/jquery.min.js', 'alper@mail.com', 'alper', 'ROLE_MVC', 'F7A07C53B4718BF3A0B64AC5C263FFBE', 'yilmaz');
INSERT INTO `logger` VALUES (3368, '2021-10-27 12:41:48', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.js', 'alper@mail.com', 'alper', 'ROLE_MVC', 'F7A07C53B4718BF3A0B64AC5C263FFBE', 'yilmaz');
INSERT INTO `logger` VALUES (3369, '2021-10-27 12:41:49', '0:0:0:0:0:0:0:1', '/productManager/listed', 'alper@mail.com', 'alper', 'ROLE_MVC', 'F7A07C53B4718BF3A0B64AC5C263FFBE', 'yilmaz');
INSERT INTO `logger` VALUES (3370, '2021-10-27 12:41:49', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/outline-icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', 'F7A07C53B4718BF3A0B64AC5C263FFBE', 'yilmaz');
INSERT INTO `logger` VALUES (3371, '2021-10-27 12:41:49', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', 'F7A07C53B4718BF3A0B64AC5C263FFBE', 'yilmaz');
INSERT INTO `logger` VALUES (3372, '2021-10-27 12:41:49', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/brand-icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', 'F7A07C53B4718BF3A0B64AC5C263FFBE', 'yilmaz');
INSERT INTO `logger` VALUES (3373, '2021-10-27 12:41:51', '0:0:0:0:0:0:0:1', '/productManager/pagelisted/1/5', 'alper@mail.com', 'alper', 'ROLE_MVC', 'F7A07C53B4718BF3A0B64AC5C263FFBE', 'yilmaz');
INSERT INTO `logger` VALUES (3374, '2021-10-27 12:41:52', '0:0:0:0:0:0:0:1', '/uploads/product/bf6d84e3-7180-47d9-b9ed-ebbb10e422ebr.png', 'alper@mail.com', 'alper', 'ROLE_MVC', 'F7A07C53B4718BF3A0B64AC5C263FFBE', 'yilmaz');
INSERT INTO `logger` VALUES (3375, '2021-10-27 12:41:55', '0:0:0:0:0:0:0:1', '/uploads/product/36e04f26-c5ec-4738-a681-853c72ac4bc95.jpg', 'alper@mail.com', 'alper', 'ROLE_MVC', 'F7A07C53B4718BF3A0B64AC5C263FFBE', 'yilmaz');
INSERT INTO `logger` VALUES (3376, '2021-10-27 12:41:55', '0:0:0:0:0:0:0:1', '/uploads/product/8a487d2c-18c1-4bc1-b3d6-98e187db57ab4.jpg', 'alper@mail.com', 'alper', 'ROLE_MVC', 'F7A07C53B4718BF3A0B64AC5C263FFBE', 'yilmaz');
INSERT INTO `logger` VALUES (3377, '2021-10-27 12:42:38', '0:0:0:0:0:0:0:1', '/productManager', 'alper@mail.com', 'alper', 'ROLE_MVC', 'F7A07C53B4718BF3A0B64AC5C263FFBE', 'yilmaz');
INSERT INTO `logger` VALUES (3378, '2021-10-27 12:42:39', '0:0:0:0:0:0:0:1', '/js/jquery-3.1.1.js', 'alper@mail.com', 'alper', 'ROLE_MVC', 'F7A07C53B4718BF3A0B64AC5C263FFBE', 'yilmaz');
INSERT INTO `logger` VALUES (3379, '2021-10-27 12:42:39', '0:0:0:0:0:0:0:1', '/css/ckeditor.css', 'alper@mail.com', 'alper', 'ROLE_MVC', 'F7A07C53B4718BF3A0B64AC5C263FFBE', 'yilmaz');
INSERT INTO `logger` VALUES (3380, '2021-10-27 12:42:39', '0:0:0:0:0:0:0:1', '/sitejs/productManagement.js', 'alper@mail.com', 'alper', 'ROLE_MVC', 'F7A07C53B4718BF3A0B64AC5C263FFBE', 'yilmaz');
INSERT INTO `logger` VALUES (3381, '2021-10-27 12:42:39', '0:0:0:0:0:0:0:1', '/css/all.min.css', 'alper@mail.com', 'alper', 'ROLE_MVC', 'F7A07C53B4718BF3A0B64AC5C263FFBE', 'yilmaz');
INSERT INTO `logger` VALUES (3382, '2021-10-27 12:42:39', '127.0.0.1', '/Semantic-UI-CSS-master/semantic.css', 'alper@mail.com', 'alper', 'ROLE_MVC', 'F7A07C53B4718BF3A0B64AC5C263FFBE', 'yilmaz');
INSERT INTO `logger` VALUES (3383, '2021-10-27 12:42:39', '0:0:0:0:0:0:0:1', '/css/style.css', 'alper@mail.com', 'alper', 'ROLE_MVC', 'F7A07C53B4718BF3A0B64AC5C263FFBE', 'yilmaz');
INSERT INTO `logger` VALUES (3384, '2021-10-27 12:42:39', '0:0:0:0:0:0:0:1', '/js/jquery.min.js', 'alper@mail.com', 'alper', 'ROLE_MVC', 'F7A07C53B4718BF3A0B64AC5C263FFBE', 'yilmaz');
INSERT INTO `logger` VALUES (3385, '2021-10-27 12:42:39', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.js', 'alper@mail.com', 'alper', 'ROLE_MVC', 'F7A07C53B4718BF3A0B64AC5C263FFBE', 'yilmaz');
INSERT INTO `logger` VALUES (3386, '2021-10-27 12:42:39', '0:0:0:0:0:0:0:1', '/js/script.js', 'alper@mail.com', 'alper', 'ROLE_MVC', 'F7A07C53B4718BF3A0B64AC5C263FFBE', 'yilmaz');
INSERT INTO `logger` VALUES (3387, '2021-10-27 12:42:39', '127.0.0.1', '/productManager/listed', 'alper@mail.com', 'alper', 'ROLE_MVC', 'F7A07C53B4718BF3A0B64AC5C263FFBE', 'yilmaz');
INSERT INTO `logger` VALUES (3388, '2021-10-27 12:42:40', '127.0.0.1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', 'F7A07C53B4718BF3A0B64AC5C263FFBE', 'yilmaz');
INSERT INTO `logger` VALUES (3389, '2021-10-27 12:42:40', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/brand-icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', 'F7A07C53B4718BF3A0B64AC5C263FFBE', 'yilmaz');
INSERT INTO `logger` VALUES (3390, '2021-10-27 12:42:40', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/outline-icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', 'F7A07C53B4718BF3A0B64AC5C263FFBE', 'yilmaz');
INSERT INTO `logger` VALUES (3391, '2021-10-27 12:42:41', '0:0:0:0:0:0:0:1', '/productManager/pagelisted/1/5', 'alper@mail.com', 'alper', 'ROLE_MVC', 'F7A07C53B4718BF3A0B64AC5C263FFBE', 'yilmaz');
INSERT INTO `logger` VALUES (3392, '2021-10-27 12:42:42', '0:0:0:0:0:0:0:1', '/uploads/product/bf6d84e3-7180-47d9-b9ed-ebbb10e422ebr.png', 'alper@mail.com', 'alper', 'ROLE_MVC', 'F7A07C53B4718BF3A0B64AC5C263FFBE', 'yilmaz');
INSERT INTO `logger` VALUES (3393, '2021-10-27 12:42:44', '0:0:0:0:0:0:0:1', '/uploads/product/bf6d84e3-7180-47d9-b9ed-ebbb10e422ebr.png', 'alper@mail.com', 'alper', 'ROLE_MVC', 'F7A07C53B4718BF3A0B64AC5C263FFBE', 'yilmaz');
INSERT INTO `logger` VALUES (3394, '2021-10-27 12:43:06', '0:0:0:0:0:0:0:1', '/productManager/pagelisted/0/5', 'alper@mail.com', 'alper', 'ROLE_MVC', 'F7A07C53B4718BF3A0B64AC5C263FFBE', 'yilmaz');
INSERT INTO `logger` VALUES (3395, '2021-10-27 12:43:07', '0:0:0:0:0:0:0:1', '/productManager/pagelisted/1/1', 'alper@mail.com', 'alper', 'ROLE_MVC', 'F7A07C53B4718BF3A0B64AC5C263FFBE', 'yilmaz');
INSERT INTO `logger` VALUES (3396, '2021-10-27 12:43:36', '0:0:0:0:0:0:0:1', '/orders', 'alper@mail.com', 'alper', 'ROLE_MVC', 'F7A07C53B4718BF3A0B64AC5C263FFBE', 'yilmaz');
INSERT INTO `logger` VALUES (3397, '2021-10-27 12:43:37', '0:0:0:0:0:0:0:1', '/css/all.min.css', 'alper@mail.com', 'alper', 'ROLE_MVC', 'F7A07C53B4718BF3A0B64AC5C263FFBE', 'yilmaz');
INSERT INTO `logger` VALUES (3398, '2021-10-27 12:43:37', '0:0:0:0:0:0:0:1', '/js/jquery-3.1.1.js', 'alper@mail.com', 'alper', 'ROLE_MVC', 'F7A07C53B4718BF3A0B64AC5C263FFBE', 'yilmaz');
INSERT INTO `logger` VALUES (3399, '2021-10-27 12:43:37', '0:0:0:0:0:0:0:1', '/css/ckeditor.css', 'alper@mail.com', 'alper', 'ROLE_MVC', 'F7A07C53B4718BF3A0B64AC5C263FFBE', 'yilmaz');
INSERT INTO `logger` VALUES (3400, '2021-10-27 12:43:37', '0:0:0:0:0:0:0:1', '/js/jquery.min.js', 'alper@mail.com', 'alper', 'ROLE_MVC', 'F7A07C53B4718BF3A0B64AC5C263FFBE', 'yilmaz');
INSERT INTO `logger` VALUES (3401, '2021-10-27 12:43:37', '0:0:0:0:0:0:0:1', '/css/style.css', 'alper@mail.com', 'alper', 'ROLE_MVC', 'F7A07C53B4718BF3A0B64AC5C263FFBE', 'yilmaz');
INSERT INTO `logger` VALUES (3402, '2021-10-27 12:43:37', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.css', 'alper@mail.com', 'alper', 'ROLE_MVC', 'F7A07C53B4718BF3A0B64AC5C263FFBE', 'yilmaz');
INSERT INTO `logger` VALUES (3403, '2021-10-27 12:43:37', '0:0:0:0:0:0:0:1', '/js/script.js', 'alper@mail.com', 'alper', 'ROLE_MVC', 'F7A07C53B4718BF3A0B64AC5C263FFBE', 'yilmaz');
INSERT INTO `logger` VALUES (3404, '2021-10-27 12:43:37', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.js', 'alper@mail.com', 'alper', 'ROLE_MVC', 'F7A07C53B4718BF3A0B64AC5C263FFBE', 'yilmaz');
INSERT INTO `logger` VALUES (3405, '2021-10-27 12:43:37', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', 'F7A07C53B4718BF3A0B64AC5C263FFBE', 'yilmaz');
INSERT INTO `logger` VALUES (3406, '2021-10-27 12:43:37', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/outline-icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', 'F7A07C53B4718BF3A0B64AC5C263FFBE', 'yilmaz');
INSERT INTO `logger` VALUES (3407, '2021-10-27 12:43:37', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/brand-icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', 'F7A07C53B4718BF3A0B64AC5C263FFBE', 'yilmaz');
INSERT INTO `logger` VALUES (3408, '2021-10-27 12:44:15', '0:0:0:0:0:0:0:1', '/newsCategory/list/10/0', 'alper@mail.com', 'alper', 'ROLE_MVC', 'F7A07C53B4718BF3A0B64AC5C263FFBE', 'yilmaz');
INSERT INTO `logger` VALUES (3409, '2021-10-27 12:44:15', '0:0:0:0:0:0:0:1', '/js/jquery-3.1.1.js', 'alper@mail.com', 'alper', 'ROLE_MVC', 'F7A07C53B4718BF3A0B64AC5C263FFBE', 'yilmaz');
INSERT INTO `logger` VALUES (3410, '2021-10-27 12:44:15', '0:0:0:0:0:0:0:1', '/css/all.min.css', 'alper@mail.com', 'alper', 'ROLE_MVC', 'F7A07C53B4718BF3A0B64AC5C263FFBE', 'yilmaz');
INSERT INTO `logger` VALUES (3411, '2021-10-27 12:44:15', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.css', 'alper@mail.com', 'alper', 'ROLE_MVC', 'F7A07C53B4718BF3A0B64AC5C263FFBE', 'yilmaz');
INSERT INTO `logger` VALUES (3412, '2021-10-27 12:44:15', '0:0:0:0:0:0:0:1', '/js/jquery.min.js', 'alper@mail.com', 'alper', 'ROLE_MVC', 'F7A07C53B4718BF3A0B64AC5C263FFBE', 'yilmaz');
INSERT INTO `logger` VALUES (3413, '2021-10-27 12:44:15', '0:0:0:0:0:0:0:1', '/css/style.css', 'alper@mail.com', 'alper', 'ROLE_MVC', 'F7A07C53B4718BF3A0B64AC5C263FFBE', 'yilmaz');
INSERT INTO `logger` VALUES (3414, '2021-10-27 12:44:15', '0:0:0:0:0:0:0:1', '/css/ckeditor.css', 'alper@mail.com', 'alper', 'ROLE_MVC', 'F7A07C53B4718BF3A0B64AC5C263FFBE', 'yilmaz');
INSERT INTO `logger` VALUES (3415, '2021-10-27 12:44:15', '0:0:0:0:0:0:0:1', '/js/script.js', 'alper@mail.com', 'alper', 'ROLE_MVC', 'F7A07C53B4718BF3A0B64AC5C263FFBE', 'yilmaz');
INSERT INTO `logger` VALUES (3416, '2021-10-27 12:44:15', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.js', 'alper@mail.com', 'alper', 'ROLE_MVC', 'F7A07C53B4718BF3A0B64AC5C263FFBE', 'yilmaz');
INSERT INTO `logger` VALUES (3417, '2021-10-27 12:44:16', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/outline-icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', 'F7A07C53B4718BF3A0B64AC5C263FFBE', 'yilmaz');
INSERT INTO `logger` VALUES (3418, '2021-10-27 12:44:16', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', 'F7A07C53B4718BF3A0B64AC5C263FFBE', 'yilmaz');
INSERT INTO `logger` VALUES (3419, '2021-10-27 12:44:16', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/brand-icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', 'F7A07C53B4718BF3A0B64AC5C263FFBE', 'yilmaz');
INSERT INTO `logger` VALUES (3420, '2021-10-27 12:44:25', '0:0:0:0:0:0:0:1', '/orders', 'alper@mail.com', 'alper', 'ROLE_MVC', 'F7A07C53B4718BF3A0B64AC5C263FFBE', 'yilmaz');
INSERT INTO `logger` VALUES (3421, '2021-10-27 12:44:25', '0:0:0:0:0:0:0:1', '/css/style.css', 'alper@mail.com', 'alper', 'ROLE_MVC', 'F7A07C53B4718BF3A0B64AC5C263FFBE', 'yilmaz');
INSERT INTO `logger` VALUES (3422, '2021-10-27 12:44:25', '0:0:0:0:0:0:0:1', '/js/jquery-3.1.1.js', 'alper@mail.com', 'alper', 'ROLE_MVC', 'F7A07C53B4718BF3A0B64AC5C263FFBE', 'yilmaz');
INSERT INTO `logger` VALUES (3423, '2021-10-27 12:44:25', '0:0:0:0:0:0:0:1', '/js/jquery.min.js', 'alper@mail.com', 'alper', 'ROLE_MVC', 'F7A07C53B4718BF3A0B64AC5C263FFBE', 'yilmaz');
INSERT INTO `logger` VALUES (3424, '2021-10-27 12:44:25', '0:0:0:0:0:0:0:1', '/css/ckeditor.css', 'alper@mail.com', 'alper', 'ROLE_MVC', 'F7A07C53B4718BF3A0B64AC5C263FFBE', 'yilmaz');
INSERT INTO `logger` VALUES (3425, '2021-10-27 12:44:25', '0:0:0:0:0:0:0:1', '/css/all.min.css', 'alper@mail.com', 'alper', 'ROLE_MVC', 'F7A07C53B4718BF3A0B64AC5C263FFBE', 'yilmaz');
INSERT INTO `logger` VALUES (3426, '2021-10-27 12:44:25', '0:0:0:0:0:0:0:1', '/js/script.js', 'alper@mail.com', 'alper', 'ROLE_MVC', 'F7A07C53B4718BF3A0B64AC5C263FFBE', 'yilmaz');
INSERT INTO `logger` VALUES (3427, '2021-10-27 12:44:25', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.css', 'alper@mail.com', 'alper', 'ROLE_MVC', 'F7A07C53B4718BF3A0B64AC5C263FFBE', 'yilmaz');
INSERT INTO `logger` VALUES (3428, '2021-10-27 12:44:25', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.js', 'alper@mail.com', 'alper', 'ROLE_MVC', 'F7A07C53B4718BF3A0B64AC5C263FFBE', 'yilmaz');
INSERT INTO `logger` VALUES (3429, '2021-10-27 12:44:54', '0:0:0:0:0:0:0:1', '/orders', 'alper@mail.com', 'alper', 'ROLE_MVC', 'F7A07C53B4718BF3A0B64AC5C263FFBE', 'yilmaz');
INSERT INTO `logger` VALUES (3430, '2021-10-27 12:44:54', '0:0:0:0:0:0:0:1', '/css/style.css', 'alper@mail.com', 'alper', 'ROLE_MVC', 'F7A07C53B4718BF3A0B64AC5C263FFBE', 'yilmaz');
INSERT INTO `logger` VALUES (3431, '2021-10-27 12:44:54', '0:0:0:0:0:0:0:1', '/css/all.min.css', 'alper@mail.com', 'alper', 'ROLE_MVC', 'F7A07C53B4718BF3A0B64AC5C263FFBE', 'yilmaz');
INSERT INTO `logger` VALUES (3432, '2021-10-27 12:44:54', '0:0:0:0:0:0:0:1', '/js/jquery-3.1.1.js', 'alper@mail.com', 'alper', 'ROLE_MVC', 'F7A07C53B4718BF3A0B64AC5C263FFBE', 'yilmaz');
INSERT INTO `logger` VALUES (3433, '2021-10-27 12:44:54', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.css', 'alper@mail.com', 'alper', 'ROLE_MVC', 'F7A07C53B4718BF3A0B64AC5C263FFBE', 'yilmaz');
INSERT INTO `logger` VALUES (3434, '2021-10-27 12:44:54', '0:0:0:0:0:0:0:1', '/js/jquery.min.js', 'alper@mail.com', 'alper', 'ROLE_MVC', 'F7A07C53B4718BF3A0B64AC5C263FFBE', 'yilmaz');
INSERT INTO `logger` VALUES (3435, '2021-10-27 12:44:54', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.js', 'alper@mail.com', 'alper', 'ROLE_MVC', 'F7A07C53B4718BF3A0B64AC5C263FFBE', 'yilmaz');
INSERT INTO `logger` VALUES (3436, '2021-10-27 12:44:54', '0:0:0:0:0:0:0:1', '/css/ckeditor.css', 'alper@mail.com', 'alper', 'ROLE_MVC', 'F7A07C53B4718BF3A0B64AC5C263FFBE', 'yilmaz');
INSERT INTO `logger` VALUES (3437, '2021-10-27 12:44:55', '0:0:0:0:0:0:0:1', '/js/script.js', 'alper@mail.com', 'alper', 'ROLE_MVC', 'F7A07C53B4718BF3A0B64AC5C263FFBE', 'yilmaz');
INSERT INTO `logger` VALUES (3438, '2021-10-27 12:44:55', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', 'F7A07C53B4718BF3A0B64AC5C263FFBE', 'yilmaz');
INSERT INTO `logger` VALUES (3439, '2021-10-27 12:44:55', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/outline-icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', 'F7A07C53B4718BF3A0B64AC5C263FFBE', 'yilmaz');
INSERT INTO `logger` VALUES (3440, '2021-10-27 12:44:55', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/brand-icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', 'F7A07C53B4718BF3A0B64AC5C263FFBE', 'yilmaz');
INSERT INTO `logger` VALUES (3441, '2021-10-27 12:44:57', '0:0:0:0:0:0:0:1', '/productManager', 'alper@mail.com', 'alper', 'ROLE_MVC', 'F7A07C53B4718BF3A0B64AC5C263FFBE', 'yilmaz');
INSERT INTO `logger` VALUES (3442, '2021-10-27 12:44:57', '0:0:0:0:0:0:0:1', '/js/jquery-3.1.1.js', 'alper@mail.com', 'alper', 'ROLE_MVC', 'F7A07C53B4718BF3A0B64AC5C263FFBE', 'yilmaz');
INSERT INTO `logger` VALUES (3443, '2021-10-27 12:44:57', '0:0:0:0:0:0:0:1', '/css/style.css', 'alper@mail.com', 'alper', 'ROLE_MVC', 'F7A07C53B4718BF3A0B64AC5C263FFBE', 'yilmaz');
INSERT INTO `logger` VALUES (3444, '2021-10-27 12:44:57', '0:0:0:0:0:0:0:1', '/css/all.min.css', 'alper@mail.com', 'alper', 'ROLE_MVC', 'F7A07C53B4718BF3A0B64AC5C263FFBE', 'yilmaz');
INSERT INTO `logger` VALUES (3445, '2021-10-27 12:44:57', '0:0:0:0:0:0:0:1', '/sitejs/productManagement.js', 'alper@mail.com', 'alper', 'ROLE_MVC', 'F7A07C53B4718BF3A0B64AC5C263FFBE', 'yilmaz');
INSERT INTO `logger` VALUES (3446, '2021-10-27 12:44:57', '0:0:0:0:0:0:0:1', '/css/ckeditor.css', 'alper@mail.com', 'alper', 'ROLE_MVC', 'F7A07C53B4718BF3A0B64AC5C263FFBE', 'yilmaz');
INSERT INTO `logger` VALUES (3447, '2021-10-27 12:44:57', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.css', 'alper@mail.com', 'alper', 'ROLE_MVC', 'F7A07C53B4718BF3A0B64AC5C263FFBE', 'yilmaz');
INSERT INTO `logger` VALUES (3448, '2021-10-27 12:44:57', '0:0:0:0:0:0:0:1', '/js/jquery.min.js', 'alper@mail.com', 'alper', 'ROLE_MVC', 'F7A07C53B4718BF3A0B64AC5C263FFBE', 'yilmaz');
INSERT INTO `logger` VALUES (3449, '2021-10-27 12:44:57', '0:0:0:0:0:0:0:1', '/js/script.js', 'alper@mail.com', 'alper', 'ROLE_MVC', 'F7A07C53B4718BF3A0B64AC5C263FFBE', 'yilmaz');
INSERT INTO `logger` VALUES (3450, '2021-10-27 12:44:57', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.js', 'alper@mail.com', 'alper', 'ROLE_MVC', 'F7A07C53B4718BF3A0B64AC5C263FFBE', 'yilmaz');
INSERT INTO `logger` VALUES (3451, '2021-10-27 12:44:57', '0:0:0:0:0:0:0:1', '/productManager/listed', 'alper@mail.com', 'alper', 'ROLE_MVC', 'F7A07C53B4718BF3A0B64AC5C263FFBE', 'yilmaz');
INSERT INTO `logger` VALUES (3452, '2021-10-27 12:44:58', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/brand-icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', 'F7A07C53B4718BF3A0B64AC5C263FFBE', 'yilmaz');
INSERT INTO `logger` VALUES (3453, '2021-10-27 12:44:58', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', 'F7A07C53B4718BF3A0B64AC5C263FFBE', 'yilmaz');
INSERT INTO `logger` VALUES (3454, '2021-10-27 12:44:58', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/outline-icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', 'F7A07C53B4718BF3A0B64AC5C263FFBE', 'yilmaz');
INSERT INTO `logger` VALUES (3455, '2021-10-27 12:44:58', '0:0:0:0:0:0:0:1', '/orders', 'alper@mail.com', 'alper', 'ROLE_MVC', 'F7A07C53B4718BF3A0B64AC5C263FFBE', 'yilmaz');
INSERT INTO `logger` VALUES (3456, '2021-10-27 12:44:58', '0:0:0:0:0:0:0:1', '/css/all.min.css', 'alper@mail.com', 'alper', 'ROLE_MVC', 'F7A07C53B4718BF3A0B64AC5C263FFBE', 'yilmaz');
INSERT INTO `logger` VALUES (3457, '2021-10-27 12:44:58', '0:0:0:0:0:0:0:1', '/css/style.css', 'alper@mail.com', 'alper', 'ROLE_MVC', 'F7A07C53B4718BF3A0B64AC5C263FFBE', 'yilmaz');
INSERT INTO `logger` VALUES (3458, '2021-10-27 12:44:58', '0:0:0:0:0:0:0:1', '/js/jquery-3.1.1.js', 'alper@mail.com', 'alper', 'ROLE_MVC', 'F7A07C53B4718BF3A0B64AC5C263FFBE', 'yilmaz');
INSERT INTO `logger` VALUES (3459, '2021-10-27 12:44:58', '0:0:0:0:0:0:0:1', '/css/ckeditor.css', 'alper@mail.com', 'alper', 'ROLE_MVC', 'F7A07C53B4718BF3A0B64AC5C263FFBE', 'yilmaz');
INSERT INTO `logger` VALUES (3460, '2021-10-27 12:44:58', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.css', 'alper@mail.com', 'alper', 'ROLE_MVC', 'F7A07C53B4718BF3A0B64AC5C263FFBE', 'yilmaz');
INSERT INTO `logger` VALUES (3461, '2021-10-27 12:44:58', '0:0:0:0:0:0:0:1', '/js/jquery.min.js', 'alper@mail.com', 'alper', 'ROLE_MVC', 'F7A07C53B4718BF3A0B64AC5C263FFBE', 'yilmaz');
INSERT INTO `logger` VALUES (3462, '2021-10-27 12:44:58', '0:0:0:0:0:0:0:1', '/js/script.js', 'alper@mail.com', 'alper', 'ROLE_MVC', 'F7A07C53B4718BF3A0B64AC5C263FFBE', 'yilmaz');
INSERT INTO `logger` VALUES (3463, '2021-10-27 12:44:58', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.js', 'alper@mail.com', 'alper', 'ROLE_MVC', 'F7A07C53B4718BF3A0B64AC5C263FFBE', 'yilmaz');
INSERT INTO `logger` VALUES (3464, '2021-10-27 12:44:59', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/outline-icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', 'F7A07C53B4718BF3A0B64AC5C263FFBE', 'yilmaz');
INSERT INTO `logger` VALUES (3465, '2021-10-27 12:44:59', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/brand-icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', 'F7A07C53B4718BF3A0B64AC5C263FFBE', 'yilmaz');
INSERT INTO `logger` VALUES (3466, '2021-10-27 12:44:59', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', 'F7A07C53B4718BF3A0B64AC5C263FFBE', 'yilmaz');
INSERT INTO `logger` VALUES (3467, '2021-10-27 12:45:00', '0:0:0:0:0:0:0:1', '/advertisement', 'alper@mail.com', 'alper', 'ROLE_MVC', 'F7A07C53B4718BF3A0B64AC5C263FFBE', 'yilmaz');
INSERT INTO `logger` VALUES (3468, '2021-10-27 12:45:00', '0:0:0:0:0:0:0:1', '/js/jquery-3.1.1.js', 'alper@mail.com', 'alper', 'ROLE_MVC', 'F7A07C53B4718BF3A0B64AC5C263FFBE', 'yilmaz');
INSERT INTO `logger` VALUES (3469, '2021-10-27 12:45:00', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.css', 'alper@mail.com', 'alper', 'ROLE_MVC', 'F7A07C53B4718BF3A0B64AC5C263FFBE', 'yilmaz');
INSERT INTO `logger` VALUES (3470, '2021-10-27 12:45:00', '0:0:0:0:0:0:0:1', '/css/ckeditor.css', 'alper@mail.com', 'alper', 'ROLE_MVC', 'F7A07C53B4718BF3A0B64AC5C263FFBE', 'yilmaz');
INSERT INTO `logger` VALUES (3471, '2021-10-27 12:45:00', '0:0:0:0:0:0:0:1', '/css/style.css', 'alper@mail.com', 'alper', 'ROLE_MVC', 'F7A07C53B4718BF3A0B64AC5C263FFBE', 'yilmaz');
INSERT INTO `logger` VALUES (3472, '2021-10-27 12:45:00', '0:0:0:0:0:0:0:1', '/css/all.min.css', 'alper@mail.com', 'alper', 'ROLE_MVC', 'F7A07C53B4718BF3A0B64AC5C263FFBE', 'yilmaz');
INSERT INTO `logger` VALUES (3473, '2021-10-27 12:45:00', '0:0:0:0:0:0:0:1', '/sitejs/advertisement.js', 'alper@mail.com', 'alper', 'ROLE_MVC', 'F7A07C53B4718BF3A0B64AC5C263FFBE', 'yilmaz');
INSERT INTO `logger` VALUES (3474, '2021-10-27 12:45:00', '0:0:0:0:0:0:0:1', '/js/jquery.min.js', 'alper@mail.com', 'alper', 'ROLE_MVC', 'F7A07C53B4718BF3A0B64AC5C263FFBE', 'yilmaz');
INSERT INTO `logger` VALUES (3475, '2021-10-27 12:45:00', '0:0:0:0:0:0:0:1', '/js/script.js', 'alper@mail.com', 'alper', 'ROLE_MVC', 'F7A07C53B4718BF3A0B64AC5C263FFBE', 'yilmaz');
INSERT INTO `logger` VALUES (3476, '2021-10-27 12:45:00', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.js', 'alper@mail.com', 'alper', 'ROLE_MVC', 'F7A07C53B4718BF3A0B64AC5C263FFBE', 'yilmaz');
INSERT INTO `logger` VALUES (3477, '2021-10-27 12:45:01', '0:0:0:0:0:0:0:1', '/advertisement/pagination/0/10', 'alper@mail.com', 'alper', 'ROLE_MVC', 'F7A07C53B4718BF3A0B64AC5C263FFBE', 'yilmaz');
INSERT INTO `logger` VALUES (3478, '2021-10-27 12:45:01', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', 'F7A07C53B4718BF3A0B64AC5C263FFBE', 'yilmaz');
INSERT INTO `logger` VALUES (3479, '2021-10-27 12:45:01', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/brand-icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', 'F7A07C53B4718BF3A0B64AC5C263FFBE', 'yilmaz');
INSERT INTO `logger` VALUES (3480, '2021-10-27 12:45:01', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/outline-icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', 'F7A07C53B4718BF3A0B64AC5C263FFBE', 'yilmaz');
INSERT INTO `logger` VALUES (3481, '2021-10-27 12:50:40', '0:0:0:0:0:0:0:1', '/content', 'alper@mail.com', 'alper', 'ROLE_MVC', 'F7A07C53B4718BF3A0B64AC5C263FFBE', 'yilmaz');
INSERT INTO `logger` VALUES (3482, '2021-10-27 12:50:40', '0:0:0:0:0:0:0:1', '/css/ckeditor.css', 'alper@mail.com', 'alper', 'ROLE_MVC', 'F7A07C53B4718BF3A0B64AC5C263FFBE', 'yilmaz');
INSERT INTO `logger` VALUES (3483, '2021-10-27 12:50:40', '0:0:0:0:0:0:0:1', '/js/jquery.min.js', 'alper@mail.com', 'alper', 'ROLE_MVC', 'F7A07C53B4718BF3A0B64AC5C263FFBE', 'yilmaz');
INSERT INTO `logger` VALUES (3484, '2021-10-27 12:50:40', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.css', 'alper@mail.com', 'alper', 'ROLE_MVC', 'F7A07C53B4718BF3A0B64AC5C263FFBE', 'yilmaz');
INSERT INTO `logger` VALUES (3485, '2021-10-27 12:50:40', '0:0:0:0:0:0:0:1', '/css/all.min.css', 'alper@mail.com', 'alper', 'ROLE_MVC', 'F7A07C53B4718BF3A0B64AC5C263FFBE', 'yilmaz');
INSERT INTO `logger` VALUES (3486, '2021-10-27 12:50:40', '0:0:0:0:0:0:0:1', '/css/style.css', 'alper@mail.com', 'alper', 'ROLE_MVC', 'F7A07C53B4718BF3A0B64AC5C263FFBE', 'yilmaz');
INSERT INTO `logger` VALUES (3487, '2021-10-27 12:50:40', '0:0:0:0:0:0:0:1', '/js/jquery-3.1.1.js', 'alper@mail.com', 'alper', 'ROLE_MVC', 'F7A07C53B4718BF3A0B64AC5C263FFBE', 'yilmaz');
INSERT INTO `logger` VALUES (3488, '2021-10-27 12:50:40', '0:0:0:0:0:0:0:1', '/js/script.js', 'alper@mail.com', 'alper', 'ROLE_MVC', 'F7A07C53B4718BF3A0B64AC5C263FFBE', 'yilmaz');
INSERT INTO `logger` VALUES (3489, '2021-10-27 12:50:40', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.js', 'alper@mail.com', 'alper', 'ROLE_MVC', 'F7A07C53B4718BF3A0B64AC5C263FFBE', 'yilmaz');
INSERT INTO `logger` VALUES (3490, '2021-10-27 12:50:41', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', 'F7A07C53B4718BF3A0B64AC5C263FFBE', 'yilmaz');
INSERT INTO `logger` VALUES (3491, '2021-10-27 12:50:41', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/outline-icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', 'F7A07C53B4718BF3A0B64AC5C263FFBE', 'yilmaz');
INSERT INTO `logger` VALUES (3492, '2021-10-27 12:50:41', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/brand-icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', 'F7A07C53B4718BF3A0B64AC5C263FFBE', 'yilmaz');
INSERT INTO `logger` VALUES (3493, '2021-10-27 12:50:59', '0:0:0:0:0:0:0:1', '/content/add', 'alper@mail.com', 'alper', 'ROLE_MVC', 'F7A07C53B4718BF3A0B64AC5C263FFBE', 'yilmaz');
INSERT INTO `logger` VALUES (3494, '2021-10-27 12:50:59', '0:0:0:0:0:0:0:1', '/content', 'alper@mail.com', 'alper', 'ROLE_MVC', 'F7A07C53B4718BF3A0B64AC5C263FFBE', 'yilmaz');
INSERT INTO `logger` VALUES (3495, '2021-10-27 12:50:59', '0:0:0:0:0:0:0:1', '/css/all.min.css', 'alper@mail.com', 'alper', 'ROLE_MVC', 'F7A07C53B4718BF3A0B64AC5C263FFBE', 'yilmaz');
INSERT INTO `logger` VALUES (3496, '2021-10-27 12:50:59', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.css', 'alper@mail.com', 'alper', 'ROLE_MVC', 'F7A07C53B4718BF3A0B64AC5C263FFBE', 'yilmaz');
INSERT INTO `logger` VALUES (3497, '2021-10-27 12:50:59', '0:0:0:0:0:0:0:1', '/js/jquery-3.1.1.js', 'alper@mail.com', 'alper', 'ROLE_MVC', 'F7A07C53B4718BF3A0B64AC5C263FFBE', 'yilmaz');
INSERT INTO `logger` VALUES (3498, '2021-10-27 12:50:59', '0:0:0:0:0:0:0:1', '/js/jquery.min.js', 'alper@mail.com', 'alper', 'ROLE_MVC', 'F7A07C53B4718BF3A0B64AC5C263FFBE', 'yilmaz');
INSERT INTO `logger` VALUES (3499, '2021-10-27 12:50:59', '0:0:0:0:0:0:0:1', '/css/ckeditor.css', 'alper@mail.com', 'alper', 'ROLE_MVC', 'F7A07C53B4718BF3A0B64AC5C263FFBE', 'yilmaz');
INSERT INTO `logger` VALUES (3500, '2021-10-27 12:50:59', '0:0:0:0:0:0:0:1', '/css/style.css', 'alper@mail.com', 'alper', 'ROLE_MVC', 'F7A07C53B4718BF3A0B64AC5C263FFBE', 'yilmaz');
INSERT INTO `logger` VALUES (3501, '2021-10-27 12:50:59', '0:0:0:0:0:0:0:1', '/js/script.js', 'alper@mail.com', 'alper', 'ROLE_MVC', 'F7A07C53B4718BF3A0B64AC5C263FFBE', 'yilmaz');
INSERT INTO `logger` VALUES (3502, '2021-10-27 12:50:59', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.js', 'alper@mail.com', 'alper', 'ROLE_MVC', 'F7A07C53B4718BF3A0B64AC5C263FFBE', 'yilmaz');
INSERT INTO `logger` VALUES (3503, '2021-10-27 12:51:00', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', 'F7A07C53B4718BF3A0B64AC5C263FFBE', 'yilmaz');
INSERT INTO `logger` VALUES (3504, '2021-10-27 12:51:00', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/brand-icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', 'F7A07C53B4718BF3A0B64AC5C263FFBE', 'yilmaz');
INSERT INTO `logger` VALUES (3505, '2021-10-27 12:51:00', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/outline-icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', 'F7A07C53B4718BF3A0B64AC5C263FFBE', 'yilmaz');
INSERT INTO `logger` VALUES (3506, '2021-10-27 12:51:18', '0:0:0:0:0:0:0:1', '/content/add', 'alper@mail.com', 'alper', 'ROLE_MVC', 'F7A07C53B4718BF3A0B64AC5C263FFBE', 'yilmaz');
INSERT INTO `logger` VALUES (3507, '2021-10-27 12:51:18', '0:0:0:0:0:0:0:1', '/content', 'alper@mail.com', 'alper', 'ROLE_MVC', 'F7A07C53B4718BF3A0B64AC5C263FFBE', 'yilmaz');
INSERT INTO `logger` VALUES (3508, '2021-10-27 12:51:18', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.css', 'alper@mail.com', 'alper', 'ROLE_MVC', 'F7A07C53B4718BF3A0B64AC5C263FFBE', 'yilmaz');
INSERT INTO `logger` VALUES (3509, '2021-10-27 12:51:18', '0:0:0:0:0:0:0:1', '/js/jquery-3.1.1.js', 'alper@mail.com', 'alper', 'ROLE_MVC', 'F7A07C53B4718BF3A0B64AC5C263FFBE', 'yilmaz');
INSERT INTO `logger` VALUES (3510, '2021-10-27 12:51:18', '0:0:0:0:0:0:0:1', '/css/all.min.css', 'alper@mail.com', 'alper', 'ROLE_MVC', 'F7A07C53B4718BF3A0B64AC5C263FFBE', 'yilmaz');
INSERT INTO `logger` VALUES (3511, '2021-10-27 12:51:18', '0:0:0:0:0:0:0:1', '/css/style.css', 'alper@mail.com', 'alper', 'ROLE_MVC', 'F7A07C53B4718BF3A0B64AC5C263FFBE', 'yilmaz');
INSERT INTO `logger` VALUES (3512, '2021-10-27 12:51:18', '0:0:0:0:0:0:0:1', '/css/ckeditor.css', 'alper@mail.com', 'alper', 'ROLE_MVC', 'F7A07C53B4718BF3A0B64AC5C263FFBE', 'yilmaz');
INSERT INTO `logger` VALUES (3513, '2021-10-27 12:51:18', '0:0:0:0:0:0:0:1', '/js/jquery.min.js', 'alper@mail.com', 'alper', 'ROLE_MVC', 'F7A07C53B4718BF3A0B64AC5C263FFBE', 'yilmaz');
INSERT INTO `logger` VALUES (3514, '2021-10-27 12:51:18', '0:0:0:0:0:0:0:1', '/js/script.js', 'alper@mail.com', 'alper', 'ROLE_MVC', 'F7A07C53B4718BF3A0B64AC5C263FFBE', 'yilmaz');
INSERT INTO `logger` VALUES (3515, '2021-10-27 12:51:18', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.js', 'alper@mail.com', 'alper', 'ROLE_MVC', 'F7A07C53B4718BF3A0B64AC5C263FFBE', 'yilmaz');
INSERT INTO `logger` VALUES (3516, '2021-10-27 12:51:19', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/outline-icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', 'F7A07C53B4718BF3A0B64AC5C263FFBE', 'yilmaz');
INSERT INTO `logger` VALUES (3517, '2021-10-27 12:51:19', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', 'F7A07C53B4718BF3A0B64AC5C263FFBE', 'yilmaz');
INSERT INTO `logger` VALUES (3518, '2021-10-27 12:51:19', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/brand-icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', 'F7A07C53B4718BF3A0B64AC5C263FFBE', 'yilmaz');
INSERT INTO `logger` VALUES (3519, '2021-10-27 12:51:58', '0:0:0:0:0:0:0:1', '/content/update/4', 'alper@mail.com', 'alper', 'ROLE_MVC', 'F7A07C53B4718BF3A0B64AC5C263FFBE', 'yilmaz');
INSERT INTO `logger` VALUES (3520, '2021-10-27 12:51:58', '0:0:0:0:0:0:0:1', '/content', 'alper@mail.com', 'alper', 'ROLE_MVC', 'F7A07C53B4718BF3A0B64AC5C263FFBE', 'yilmaz');
INSERT INTO `logger` VALUES (3521, '2021-10-27 12:51:58', '0:0:0:0:0:0:0:1', '/css/all.min.css', 'alper@mail.com', 'alper', 'ROLE_MVC', 'F7A07C53B4718BF3A0B64AC5C263FFBE', 'yilmaz');
INSERT INTO `logger` VALUES (3522, '2021-10-27 12:51:58', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.css', 'alper@mail.com', 'alper', 'ROLE_MVC', 'F7A07C53B4718BF3A0B64AC5C263FFBE', 'yilmaz');
INSERT INTO `logger` VALUES (3523, '2021-10-27 12:51:58', '0:0:0:0:0:0:0:1', '/js/jquery-3.1.1.js', 'alper@mail.com', 'alper', 'ROLE_MVC', 'F7A07C53B4718BF3A0B64AC5C263FFBE', 'yilmaz');
INSERT INTO `logger` VALUES (3524, '2021-10-27 12:51:58', '0:0:0:0:0:0:0:1', '/css/style.css', 'alper@mail.com', 'alper', 'ROLE_MVC', 'F7A07C53B4718BF3A0B64AC5C263FFBE', 'yilmaz');
INSERT INTO `logger` VALUES (3525, '2021-10-27 12:51:58', '0:0:0:0:0:0:0:1', '/js/jquery.min.js', 'alper@mail.com', 'alper', 'ROLE_MVC', 'F7A07C53B4718BF3A0B64AC5C263FFBE', 'yilmaz');
INSERT INTO `logger` VALUES (3526, '2021-10-27 12:51:58', '0:0:0:0:0:0:0:1', '/css/ckeditor.css', 'alper@mail.com', 'alper', 'ROLE_MVC', 'F7A07C53B4718BF3A0B64AC5C263FFBE', 'yilmaz');
INSERT INTO `logger` VALUES (3527, '2021-10-27 12:51:58', '0:0:0:0:0:0:0:1', '/js/script.js', 'alper@mail.com', 'alper', 'ROLE_MVC', 'F7A07C53B4718BF3A0B64AC5C263FFBE', 'yilmaz');
INSERT INTO `logger` VALUES (3528, '2021-10-27 12:51:58', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.js', 'alper@mail.com', 'alper', 'ROLE_MVC', 'F7A07C53B4718BF3A0B64AC5C263FFBE', 'yilmaz');
INSERT INTO `logger` VALUES (3529, '2021-10-27 12:51:59', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/brand-icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', 'F7A07C53B4718BF3A0B64AC5C263FFBE', 'yilmaz');
INSERT INTO `logger` VALUES (3530, '2021-10-27 12:51:59', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', 'F7A07C53B4718BF3A0B64AC5C263FFBE', 'yilmaz');
INSERT INTO `logger` VALUES (3531, '2021-10-27 12:51:59', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/outline-icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', 'F7A07C53B4718BF3A0B64AC5C263FFBE', 'yilmaz');
INSERT INTO `logger` VALUES (3532, '2021-10-27 12:52:51', '0:0:0:0:0:0:0:1', '/gallery', 'alper@mail.com', 'alper', 'ROLE_MVC', 'F7A07C53B4718BF3A0B64AC5C263FFBE', 'yilmaz');
INSERT INTO `logger` VALUES (3533, '2021-10-27 12:52:51', '0:0:0:0:0:0:0:1', '/js/jquery-3.1.1.js', 'alper@mail.com', 'alper', 'ROLE_MVC', 'F7A07C53B4718BF3A0B64AC5C263FFBE', 'yilmaz');
INSERT INTO `logger` VALUES (3534, '2021-10-27 12:52:51', '0:0:0:0:0:0:0:1', '/css/style.css', 'alper@mail.com', 'alper', 'ROLE_MVC', 'F7A07C53B4718BF3A0B64AC5C263FFBE', 'yilmaz');
INSERT INTO `logger` VALUES (3535, '2021-10-27 12:52:51', '0:0:0:0:0:0:0:1', '/css/all.min.css', 'alper@mail.com', 'alper', 'ROLE_MVC', 'F7A07C53B4718BF3A0B64AC5C263FFBE', 'yilmaz');
INSERT INTO `logger` VALUES (3536, '2021-10-27 12:52:51', '0:0:0:0:0:0:0:1', '/sitejs/gallery.js', 'alper@mail.com', 'alper', 'ROLE_MVC', 'F7A07C53B4718BF3A0B64AC5C263FFBE', 'yilmaz');
INSERT INTO `logger` VALUES (3537, '2021-10-27 12:52:51', '0:0:0:0:0:0:0:1', '/css/ckeditor.css', 'alper@mail.com', 'alper', 'ROLE_MVC', 'F7A07C53B4718BF3A0B64AC5C263FFBE', 'yilmaz');
INSERT INTO `logger` VALUES (3538, '2021-10-27 12:52:51', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.css', 'alper@mail.com', 'alper', 'ROLE_MVC', 'F7A07C53B4718BF3A0B64AC5C263FFBE', 'yilmaz');
INSERT INTO `logger` VALUES (3539, '2021-10-27 12:52:51', '0:0:0:0:0:0:0:1', '/js/jquery.min.js', 'alper@mail.com', 'alper', 'ROLE_MVC', 'F7A07C53B4718BF3A0B64AC5C263FFBE', 'yilmaz');
INSERT INTO `logger` VALUES (3540, '2021-10-27 12:52:51', '0:0:0:0:0:0:0:1', '/js/script.js', 'alper@mail.com', 'alper', 'ROLE_MVC', 'F7A07C53B4718BF3A0B64AC5C263FFBE', 'yilmaz');
INSERT INTO `logger` VALUES (3541, '2021-10-27 12:52:51', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.js', 'alper@mail.com', 'alper', 'ROLE_MVC', 'F7A07C53B4718BF3A0B64AC5C263FFBE', 'yilmaz');
INSERT INTO `logger` VALUES (3542, '2021-10-27 12:52:51', '0:0:0:0:0:0:0:1', '/gallery/listed', 'alper@mail.com', 'alper', 'ROLE_MVC', 'F7A07C53B4718BF3A0B64AC5C263FFBE', 'yilmaz');
INSERT INTO `logger` VALUES (3543, '2021-10-27 12:52:51', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', 'F7A07C53B4718BF3A0B64AC5C263FFBE', 'yilmaz');
INSERT INTO `logger` VALUES (3544, '2021-10-27 12:52:51', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/brand-icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', 'F7A07C53B4718BF3A0B64AC5C263FFBE', 'yilmaz');
INSERT INTO `logger` VALUES (3545, '2021-10-27 12:52:51', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/outline-icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', 'F7A07C53B4718BF3A0B64AC5C263FFBE', 'yilmaz');
INSERT INTO `logger` VALUES (3546, '2021-10-27 12:52:52', '0:0:0:0:0:0:0:1', '/gallery/detail/listed/YeniGaleriKategori', 'alper@mail.com', 'alper', 'ROLE_MVC', 'F7A07C53B4718BF3A0B64AC5C263FFBE', 'yilmaz');
INSERT INTO `logger` VALUES (3547, '2021-10-27 12:52:52', '0:0:0:0:0:0:0:1', '/uploads/gallery/faa4c404-f6f9-414e-a064-6e4f034291a13.jpg', 'alper@mail.com', 'alper', 'ROLE_MVC', 'F7A07C53B4718BF3A0B64AC5C263FFBE', 'yilmaz');
INSERT INTO `logger` VALUES (3548, '2021-10-27 12:52:52', '0:0:0:0:0:0:0:1', '/uploads/gallery/4bc45743-98f1-41c7-a0e6-68f592ce39c82.jpg', 'alper@mail.com', 'alper', 'ROLE_MVC', 'F7A07C53B4718BF3A0B64AC5C263FFBE', 'yilmaz');
INSERT INTO `logger` VALUES (3549, '2021-10-27 12:52:55', '0:0:0:0:0:0:0:1', '/gallery/detail/listed/sdfdsfsd', 'alper@mail.com', 'alper', 'ROLE_MVC', 'F7A07C53B4718BF3A0B64AC5C263FFBE', 'yilmaz');
INSERT INTO `logger` VALUES (3550, '2021-10-27 12:52:55', '0:0:0:0:0:0:0:1', '/uploads/gallery/cbe77ee6-a140-48d7-a3d3-31a6ad7c54cdy.png', 'alper@mail.com', 'alper', 'ROLE_MVC', 'F7A07C53B4718BF3A0B64AC5C263FFBE', 'yilmaz');
INSERT INTO `logger` VALUES (3551, '2021-10-27 12:53:02', '0:0:0:0:0:0:0:1', '/gallery/imageUpload', 'alper@mail.com', 'alper', 'ROLE_MVC', 'F7A07C53B4718BF3A0B64AC5C263FFBE', 'yilmaz');
INSERT INTO `logger` VALUES (3552, '2021-10-27 12:53:04', '0:0:0:0:0:0:0:1', '/gallery', 'alper@mail.com', 'alper', 'ROLE_MVC', 'F7A07C53B4718BF3A0B64AC5C263FFBE', 'yilmaz');
INSERT INTO `logger` VALUES (3553, '2021-10-27 12:53:04', '0:0:0:0:0:0:0:1', '/js/jquery-3.1.1.js', 'alper@mail.com', 'alper', 'ROLE_MVC', 'F7A07C53B4718BF3A0B64AC5C263FFBE', 'yilmaz');
INSERT INTO `logger` VALUES (3554, '2021-10-27 12:53:04', '0:0:0:0:0:0:0:1', '/sitejs/gallery.js', 'alper@mail.com', 'alper', 'ROLE_MVC', 'F7A07C53B4718BF3A0B64AC5C263FFBE', 'yilmaz');
INSERT INTO `logger` VALUES (3555, '2021-10-27 12:53:04', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.css', 'alper@mail.com', 'alper', 'ROLE_MVC', 'F7A07C53B4718BF3A0B64AC5C263FFBE', 'yilmaz');
INSERT INTO `logger` VALUES (3556, '2021-10-27 12:53:04', '0:0:0:0:0:0:0:1', '/css/style.css', 'alper@mail.com', 'alper', 'ROLE_MVC', 'F7A07C53B4718BF3A0B64AC5C263FFBE', 'yilmaz');
INSERT INTO `logger` VALUES (3557, '2021-10-27 12:53:04', '0:0:0:0:0:0:0:1', '/css/ckeditor.css', 'alper@mail.com', 'alper', 'ROLE_MVC', 'F7A07C53B4718BF3A0B64AC5C263FFBE', 'yilmaz');
INSERT INTO `logger` VALUES (3558, '2021-10-27 12:53:04', '0:0:0:0:0:0:0:1', '/css/all.min.css', 'alper@mail.com', 'alper', 'ROLE_MVC', 'F7A07C53B4718BF3A0B64AC5C263FFBE', 'yilmaz');
INSERT INTO `logger` VALUES (3559, '2021-10-27 12:53:04', '0:0:0:0:0:0:0:1', '/js/jquery.min.js', 'alper@mail.com', 'alper', 'ROLE_MVC', 'F7A07C53B4718BF3A0B64AC5C263FFBE', 'yilmaz');
INSERT INTO `logger` VALUES (3560, '2021-10-27 12:53:04', '0:0:0:0:0:0:0:1', '/js/script.js', 'alper@mail.com', 'alper', 'ROLE_MVC', 'F7A07C53B4718BF3A0B64AC5C263FFBE', 'yilmaz');
INSERT INTO `logger` VALUES (3561, '2021-10-27 12:53:04', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.js', 'alper@mail.com', 'alper', 'ROLE_MVC', 'F7A07C53B4718BF3A0B64AC5C263FFBE', 'yilmaz');
INSERT INTO `logger` VALUES (3562, '2021-10-27 12:53:04', '0:0:0:0:0:0:0:1', '/gallery/listed', 'alper@mail.com', 'alper', 'ROLE_MVC', 'F7A07C53B4718BF3A0B64AC5C263FFBE', 'yilmaz');
INSERT INTO `logger` VALUES (3563, '2021-10-27 12:53:24', '0:0:0:0:0:0:0:1', '/gallery/imageUpload', 'alper@mail.com', 'alper', 'ROLE_MVC', 'F7A07C53B4718BF3A0B64AC5C263FFBE', 'yilmaz');
INSERT INTO `logger` VALUES (3564, '2021-10-27 12:53:24', '0:0:0:0:0:0:0:1', '/gallery', 'alper@mail.com', 'alper', 'ROLE_MVC', 'F7A07C53B4718BF3A0B64AC5C263FFBE', 'yilmaz');
INSERT INTO `logger` VALUES (3565, '2021-10-27 12:53:25', '0:0:0:0:0:0:0:1', '/css/style.css', 'alper@mail.com', 'alper', 'ROLE_MVC', 'F7A07C53B4718BF3A0B64AC5C263FFBE', 'yilmaz');
INSERT INTO `logger` VALUES (3566, '2021-10-27 12:53:25', '0:0:0:0:0:0:0:1', '/js/jquery-3.1.1.js', 'alper@mail.com', 'alper', 'ROLE_MVC', 'F7A07C53B4718BF3A0B64AC5C263FFBE', 'yilmaz');
INSERT INTO `logger` VALUES (3567, '2021-10-27 12:53:25', '0:0:0:0:0:0:0:1', '/css/ckeditor.css', 'alper@mail.com', 'alper', 'ROLE_MVC', 'F7A07C53B4718BF3A0B64AC5C263FFBE', 'yilmaz');
INSERT INTO `logger` VALUES (3568, '2021-10-27 12:53:25', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.css', 'alper@mail.com', 'alper', 'ROLE_MVC', 'F7A07C53B4718BF3A0B64AC5C263FFBE', 'yilmaz');
INSERT INTO `logger` VALUES (3569, '2021-10-27 12:53:25', '0:0:0:0:0:0:0:1', '/css/all.min.css', 'alper@mail.com', 'alper', 'ROLE_MVC', 'F7A07C53B4718BF3A0B64AC5C263FFBE', 'yilmaz');
INSERT INTO `logger` VALUES (3570, '2021-10-27 12:53:25', '0:0:0:0:0:0:0:1', '/sitejs/gallery.js', 'alper@mail.com', 'alper', 'ROLE_MVC', 'F7A07C53B4718BF3A0B64AC5C263FFBE', 'yilmaz');
INSERT INTO `logger` VALUES (3571, '2021-10-27 12:53:25', '0:0:0:0:0:0:0:1', '/js/script.js', 'alper@mail.com', 'alper', 'ROLE_MVC', 'F7A07C53B4718BF3A0B64AC5C263FFBE', 'yilmaz');
INSERT INTO `logger` VALUES (3572, '2021-10-27 12:53:25', '0:0:0:0:0:0:0:1', '/js/jquery.min.js', 'alper@mail.com', 'alper', 'ROLE_MVC', 'F7A07C53B4718BF3A0B64AC5C263FFBE', 'yilmaz');
INSERT INTO `logger` VALUES (3573, '2021-10-27 12:53:25', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.js', 'alper@mail.com', 'alper', 'ROLE_MVC', 'F7A07C53B4718BF3A0B64AC5C263FFBE', 'yilmaz');
INSERT INTO `logger` VALUES (3574, '2021-10-27 12:53:25', '0:0:0:0:0:0:0:1', '/gallery/listed', 'alper@mail.com', 'alper', 'ROLE_MVC', 'F7A07C53B4718BF3A0B64AC5C263FFBE', 'yilmaz');
INSERT INTO `logger` VALUES (3575, '2021-10-27 12:53:25', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/brand-icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', 'F7A07C53B4718BF3A0B64AC5C263FFBE', 'yilmaz');
INSERT INTO `logger` VALUES (3576, '2021-10-27 12:53:25', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', 'F7A07C53B4718BF3A0B64AC5C263FFBE', 'yilmaz');
INSERT INTO `logger` VALUES (3577, '2021-10-27 12:53:25', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/outline-icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', 'F7A07C53B4718BF3A0B64AC5C263FFBE', 'yilmaz');
INSERT INTO `logger` VALUES (3578, '2021-10-27 12:53:28', '0:0:0:0:0:0:0:1', '/gallery/detail/listed/YeniGaleriKategori', 'alper@mail.com', 'alper', 'ROLE_MVC', 'F7A07C53B4718BF3A0B64AC5C263FFBE', 'yilmaz');
INSERT INTO `logger` VALUES (3579, '2021-10-27 12:53:28', '0:0:0:0:0:0:0:1', '/uploads/gallery/4bc45743-98f1-41c7-a0e6-68f592ce39c82.jpg', 'alper@mail.com', 'alper', 'ROLE_MVC', 'F7A07C53B4718BF3A0B64AC5C263FFBE', 'yilmaz');
INSERT INTO `logger` VALUES (3580, '2021-10-27 12:53:28', '0:0:0:0:0:0:0:1', '/uploads/gallery/faa4c404-f6f9-414e-a064-6e4f034291a13.jpg', 'alper@mail.com', 'alper', 'ROLE_MVC', 'F7A07C53B4718BF3A0B64AC5C263FFBE', 'yilmaz');
INSERT INTO `logger` VALUES (3581, '2021-10-27 12:53:30', '0:0:0:0:0:0:0:1', '/gallery', 'alper@mail.com', 'alper', 'ROLE_MVC', 'F7A07C53B4718BF3A0B64AC5C263FFBE', 'yilmaz');
INSERT INTO `logger` VALUES (3582, '2021-10-27 12:53:30', '0:0:0:0:0:0:0:1', '/js/jquery-3.1.1.js', 'alper@mail.com', 'alper', 'ROLE_MVC', 'F7A07C53B4718BF3A0B64AC5C263FFBE', 'yilmaz');
INSERT INTO `logger` VALUES (3583, '2021-10-27 12:53:30', '0:0:0:0:0:0:0:1', '/css/style.css', 'alper@mail.com', 'alper', 'ROLE_MVC', 'F7A07C53B4718BF3A0B64AC5C263FFBE', 'yilmaz');
INSERT INTO `logger` VALUES (3584, '2021-10-27 12:53:30', '0:0:0:0:0:0:0:1', '/sitejs/gallery.js', 'alper@mail.com', 'alper', 'ROLE_MVC', 'F7A07C53B4718BF3A0B64AC5C263FFBE', 'yilmaz');
INSERT INTO `logger` VALUES (3585, '2021-10-27 12:53:30', '0:0:0:0:0:0:0:1', '/css/all.min.css', 'alper@mail.com', 'alper', 'ROLE_MVC', 'F7A07C53B4718BF3A0B64AC5C263FFBE', 'yilmaz');
INSERT INTO `logger` VALUES (3586, '2021-10-27 12:53:30', '0:0:0:0:0:0:0:1', '/css/ckeditor.css', 'alper@mail.com', 'alper', 'ROLE_MVC', 'F7A07C53B4718BF3A0B64AC5C263FFBE', 'yilmaz');
INSERT INTO `logger` VALUES (3587, '2021-10-27 12:53:30', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.css', 'alper@mail.com', 'alper', 'ROLE_MVC', 'F7A07C53B4718BF3A0B64AC5C263FFBE', 'yilmaz');
INSERT INTO `logger` VALUES (3588, '2021-10-27 12:53:30', '0:0:0:0:0:0:0:1', '/js/script.js', 'alper@mail.com', 'alper', 'ROLE_MVC', 'F7A07C53B4718BF3A0B64AC5C263FFBE', 'yilmaz');
INSERT INTO `logger` VALUES (3589, '2021-10-27 12:53:30', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.js', 'alper@mail.com', 'alper', 'ROLE_MVC', 'F7A07C53B4718BF3A0B64AC5C263FFBE', 'yilmaz');
INSERT INTO `logger` VALUES (3590, '2021-10-27 12:53:30', '0:0:0:0:0:0:0:1', '/js/jquery.min.js', 'alper@mail.com', 'alper', 'ROLE_MVC', 'F7A07C53B4718BF3A0B64AC5C263FFBE', 'yilmaz');
INSERT INTO `logger` VALUES (3591, '2021-10-27 12:53:30', '0:0:0:0:0:0:0:1', '/gallery/listed', 'alper@mail.com', 'alper', 'ROLE_MVC', 'F7A07C53B4718BF3A0B64AC5C263FFBE', 'yilmaz');
INSERT INTO `logger` VALUES (3592, '2021-10-27 12:53:30', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', 'F7A07C53B4718BF3A0B64AC5C263FFBE', 'yilmaz');
INSERT INTO `logger` VALUES (3593, '2021-10-27 12:53:30', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/brand-icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', 'F7A07C53B4718BF3A0B64AC5C263FFBE', 'yilmaz');
INSERT INTO `logger` VALUES (3594, '2021-10-27 12:53:30', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/outline-icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', 'F7A07C53B4718BF3A0B64AC5C263FFBE', 'yilmaz');
INSERT INTO `logger` VALUES (3595, '2021-10-27 12:53:33', '0:0:0:0:0:0:0:1', '/gallery/detail/listed/sdfdsfsd', 'alper@mail.com', 'alper', 'ROLE_MVC', 'F7A07C53B4718BF3A0B64AC5C263FFBE', 'yilmaz');
INSERT INTO `logger` VALUES (3596, '2021-10-27 12:53:33', '0:0:0:0:0:0:0:1', '/uploads/gallery/cbe77ee6-a140-48d7-a3d3-31a6ad7c54cdy.png', 'alper@mail.com', 'alper', 'ROLE_MVC', 'F7A07C53B4718BF3A0B64AC5C263FFBE', 'yilmaz');
INSERT INTO `logger` VALUES (3597, '2021-10-27 12:53:38', '0:0:0:0:0:0:0:1', '/login', 'anonymousUser', NULL, NULL, '69FD8FB733F6282AEC74A2C8672EEBFF', NULL);
INSERT INTO `logger` VALUES (3598, '2021-10-27 12:53:38', '0:0:0:0:0:0:0:1', '/js/jquery-3.1.1.js', 'anonymousUser', NULL, NULL, '69FD8FB733F6282AEC74A2C8672EEBFF', NULL);
INSERT INTO `logger` VALUES (3599, '2021-10-27 12:53:38', '0:0:0:0:0:0:0:1', '/css/style.css', 'anonymousUser', NULL, NULL, '69FD8FB733F6282AEC74A2C8672EEBFF', NULL);
INSERT INTO `logger` VALUES (3600, '2021-10-27 12:53:38', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.css', 'anonymousUser', NULL, NULL, '69FD8FB733F6282AEC74A2C8672EEBFF', NULL);
INSERT INTO `logger` VALUES (3601, '2021-10-27 12:53:38', '0:0:0:0:0:0:0:1', '/css/all.min.css', 'anonymousUser', NULL, NULL, '69FD8FB733F6282AEC74A2C8672EEBFF', NULL);
INSERT INTO `logger` VALUES (3602, '2021-10-27 12:53:38', '0:0:0:0:0:0:0:1', '/css/ckeditor.css', 'anonymousUser', NULL, NULL, '69FD8FB733F6282AEC74A2C8672EEBFF', NULL);
INSERT INTO `logger` VALUES (3603, '2021-10-27 12:53:38', '0:0:0:0:0:0:0:1', '/js/jquery.min.js', 'anonymousUser', NULL, NULL, '69FD8FB733F6282AEC74A2C8672EEBFF', NULL);
INSERT INTO `logger` VALUES (3604, '2021-10-27 12:53:38', '0:0:0:0:0:0:0:1', '/js/script.js', 'anonymousUser', NULL, NULL, '69FD8FB733F6282AEC74A2C8672EEBFF', NULL);
INSERT INTO `logger` VALUES (3605, '2021-10-27 12:53:38', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.js', 'anonymousUser', NULL, NULL, '69FD8FB733F6282AEC74A2C8672EEBFF', NULL);
INSERT INTO `logger` VALUES (3606, '2021-10-27 12:53:39', '0:0:0:0:0:0:0:1', '/login', 'anonymousUser', NULL, NULL, '4B0205517E2FB9DFE6BED7FCB52E3310', NULL);
INSERT INTO `logger` VALUES (3607, '2021-10-27 12:53:40', '0:0:0:0:0:0:0:1', '/js/jquery-3.1.1.js', 'anonymousUser', NULL, NULL, '4B0205517E2FB9DFE6BED7FCB52E3310', NULL);
INSERT INTO `logger` VALUES (3608, '2021-10-27 12:53:40', '0:0:0:0:0:0:0:1', '/css/style.css', 'anonymousUser', NULL, NULL, '4B0205517E2FB9DFE6BED7FCB52E3310', NULL);
INSERT INTO `logger` VALUES (3609, '2021-10-27 12:53:40', '0:0:0:0:0:0:0:1', '/js/jquery.min.js', 'anonymousUser', NULL, NULL, '4B0205517E2FB9DFE6BED7FCB52E3310', NULL);
INSERT INTO `logger` VALUES (3610, '2021-10-27 12:53:40', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.css', 'anonymousUser', NULL, NULL, '4B0205517E2FB9DFE6BED7FCB52E3310', NULL);
INSERT INTO `logger` VALUES (3611, '2021-10-27 12:53:40', '0:0:0:0:0:0:0:1', '/css/all.min.css', 'anonymousUser', NULL, NULL, '4B0205517E2FB9DFE6BED7FCB52E3310', NULL);
INSERT INTO `logger` VALUES (3612, '2021-10-27 12:53:40', '0:0:0:0:0:0:0:1', '/css/ckeditor.css', 'anonymousUser', NULL, NULL, '4B0205517E2FB9DFE6BED7FCB52E3310', NULL);
INSERT INTO `logger` VALUES (3613, '2021-10-27 12:53:40', '0:0:0:0:0:0:0:1', '/js/script.js', 'anonymousUser', NULL, NULL, '4B0205517E2FB9DFE6BED7FCB52E3310', NULL);
INSERT INTO `logger` VALUES (3614, '2021-10-27 12:53:40', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.js', 'anonymousUser', NULL, NULL, '4B0205517E2FB9DFE6BED7FCB52E3310', NULL);
INSERT INTO `logger` VALUES (3615, '2021-10-27 12:53:40', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/brand-icons.woff2', 'anonymousUser', NULL, NULL, '4B0205517E2FB9DFE6BED7FCB52E3310', NULL);
INSERT INTO `logger` VALUES (3616, '2021-10-27 12:53:40', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/outline-icons.woff2', 'anonymousUser', NULL, NULL, '4B0205517E2FB9DFE6BED7FCB52E3310', NULL);
INSERT INTO `logger` VALUES (3617, '2021-10-27 12:53:40', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/icons.woff2', 'anonymousUser', NULL, NULL, '4B0205517E2FB9DFE6BED7FCB52E3310', NULL);
INSERT INTO `logger` VALUES (3618, '2021-10-27 12:53:45', '0:0:0:0:0:0:0:1', '/announce', 'alper@mail.com', 'alper', 'ROLE_MVC', 'A57A134DEAABB5253C9AD68AC472A4D0', 'yilmaz');
INSERT INTO `logger` VALUES (3619, '2021-10-27 12:53:46', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.css', 'alper@mail.com', 'alper', 'ROLE_MVC', 'A57A134DEAABB5253C9AD68AC472A4D0', 'yilmaz');
INSERT INTO `logger` VALUES (3620, '2021-10-27 12:53:46', '0:0:0:0:0:0:0:1', '/js/jquery-3.1.1.js', 'alper@mail.com', 'alper', 'ROLE_MVC', 'A57A134DEAABB5253C9AD68AC472A4D0', 'yilmaz');
INSERT INTO `logger` VALUES (3621, '2021-10-27 12:53:46', '0:0:0:0:0:0:0:1', '/css/all.min.css', 'alper@mail.com', 'alper', 'ROLE_MVC', 'A57A134DEAABB5253C9AD68AC472A4D0', 'yilmaz');
INSERT INTO `logger` VALUES (3622, '2021-10-27 12:53:46', '0:0:0:0:0:0:0:1', '/css/ckeditor.css', 'alper@mail.com', 'alper', 'ROLE_MVC', 'A57A134DEAABB5253C9AD68AC472A4D0', 'yilmaz');
INSERT INTO `logger` VALUES (3623, '2021-10-27 12:53:46', '0:0:0:0:0:0:0:1', '/css/style.css', 'alper@mail.com', 'alper', 'ROLE_MVC', 'A57A134DEAABB5253C9AD68AC472A4D0', 'yilmaz');
INSERT INTO `logger` VALUES (3624, '2021-10-27 12:53:46', '0:0:0:0:0:0:0:1', '/sitejs/announce.js', 'alper@mail.com', 'alper', 'ROLE_MVC', 'A57A134DEAABB5253C9AD68AC472A4D0', 'yilmaz');
INSERT INTO `logger` VALUES (3625, '2021-10-27 12:53:46', '0:0:0:0:0:0:0:1', '/js/jquery.min.js', 'alper@mail.com', 'alper', 'ROLE_MVC', 'A57A134DEAABB5253C9AD68AC472A4D0', 'yilmaz');
INSERT INTO `logger` VALUES (3626, '2021-10-27 12:53:46', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.js', 'alper@mail.com', 'alper', 'ROLE_MVC', 'A57A134DEAABB5253C9AD68AC472A4D0', 'yilmaz');
INSERT INTO `logger` VALUES (3627, '2021-10-27 12:53:46', '0:0:0:0:0:0:0:1', '/js/script.js', 'alper@mail.com', 'alper', 'ROLE_MVC', 'A57A134DEAABB5253C9AD68AC472A4D0', 'yilmaz');
INSERT INTO `logger` VALUES (3628, '2021-10-27 12:53:46', '0:0:0:0:0:0:0:1', '/announce/listed', 'alper@mail.com', 'alper', 'ROLE_MVC', 'A57A134DEAABB5253C9AD68AC472A4D0', 'yilmaz');
INSERT INTO `logger` VALUES (3629, '2021-10-27 12:53:46', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', 'A57A134DEAABB5253C9AD68AC472A4D0', 'yilmaz');
INSERT INTO `logger` VALUES (3630, '2021-10-27 12:53:46', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/outline-icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', 'A57A134DEAABB5253C9AD68AC472A4D0', 'yilmaz');
INSERT INTO `logger` VALUES (3631, '2021-10-27 12:53:46', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/brand-icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', 'A57A134DEAABB5253C9AD68AC472A4D0', 'yilmaz');
INSERT INTO `logger` VALUES (3632, '2021-10-27 12:53:48', '0:0:0:0:0:0:0:1', '/announce/pagelisted/2/10', 'alper@mail.com', 'alper', 'ROLE_MVC', 'A57A134DEAABB5253C9AD68AC472A4D0', 'yilmaz');
INSERT INTO `logger` VALUES (3633, '2021-10-27 12:53:52', '0:0:0:0:0:0:0:1', '/announce/pagelisted/2/10', 'alper@mail.com', 'alper', 'ROLE_MVC', 'A57A134DEAABB5253C9AD68AC472A4D0', 'yilmaz');
INSERT INTO `logger` VALUES (3634, '2021-10-27 12:53:52', '0:0:0:0:0:0:0:1', '/announce/pagelisted/1/10', 'alper@mail.com', 'alper', 'ROLE_MVC', 'A57A134DEAABB5253C9AD68AC472A4D0', 'yilmaz');
INSERT INTO `logger` VALUES (3635, '2021-10-27 12:53:52', '0:0:0:0:0:0:0:1', '/announce/pagelisted/0/10', 'alper@mail.com', 'alper', 'ROLE_MVC', 'A57A134DEAABB5253C9AD68AC472A4D0', 'yilmaz');
INSERT INTO `logger` VALUES (3636, '2021-10-27 12:53:54', '0:0:0:0:0:0:0:1', '/gallery', 'alper@mail.com', 'alper', 'ROLE_MVC', 'A57A134DEAABB5253C9AD68AC472A4D0', 'yilmaz');
INSERT INTO `logger` VALUES (3637, '2021-10-27 12:53:54', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.css', 'alper@mail.com', 'alper', 'ROLE_MVC', 'A57A134DEAABB5253C9AD68AC472A4D0', 'yilmaz');
INSERT INTO `logger` VALUES (3638, '2021-10-27 12:53:54', '0:0:0:0:0:0:0:1', '/js/jquery-3.1.1.js', 'alper@mail.com', 'alper', 'ROLE_MVC', 'A57A134DEAABB5253C9AD68AC472A4D0', 'yilmaz');
INSERT INTO `logger` VALUES (3639, '2021-10-27 12:53:54', '0:0:0:0:0:0:0:1', '/css/all.min.css', 'alper@mail.com', 'alper', 'ROLE_MVC', 'A57A134DEAABB5253C9AD68AC472A4D0', 'yilmaz');
INSERT INTO `logger` VALUES (3640, '2021-10-27 12:53:54', '0:0:0:0:0:0:0:1', '/css/ckeditor.css', 'alper@mail.com', 'alper', 'ROLE_MVC', 'A57A134DEAABB5253C9AD68AC472A4D0', 'yilmaz');
INSERT INTO `logger` VALUES (3641, '2021-10-27 12:53:54', '0:0:0:0:0:0:0:1', '/sitejs/gallery.js', 'alper@mail.com', 'alper', 'ROLE_MVC', 'A57A134DEAABB5253C9AD68AC472A4D0', 'yilmaz');
INSERT INTO `logger` VALUES (3642, '2021-10-27 12:53:54', '0:0:0:0:0:0:0:1', '/css/style.css', 'alper@mail.com', 'alper', 'ROLE_MVC', 'A57A134DEAABB5253C9AD68AC472A4D0', 'yilmaz');
INSERT INTO `logger` VALUES (3643, '2021-10-27 12:53:54', '0:0:0:0:0:0:0:1', '/js/script.js', 'alper@mail.com', 'alper', 'ROLE_MVC', 'A57A134DEAABB5253C9AD68AC472A4D0', 'yilmaz');
INSERT INTO `logger` VALUES (3644, '2021-10-27 12:53:54', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.js', 'alper@mail.com', 'alper', 'ROLE_MVC', 'A57A134DEAABB5253C9AD68AC472A4D0', 'yilmaz');
INSERT INTO `logger` VALUES (3645, '2021-10-27 12:53:54', '0:0:0:0:0:0:0:1', '/js/jquery.min.js', 'alper@mail.com', 'alper', 'ROLE_MVC', 'A57A134DEAABB5253C9AD68AC472A4D0', 'yilmaz');
INSERT INTO `logger` VALUES (3646, '2021-10-27 12:53:54', '0:0:0:0:0:0:0:1', '/gallery/listed', 'alper@mail.com', 'alper', 'ROLE_MVC', 'A57A134DEAABB5253C9AD68AC472A4D0', 'yilmaz');
INSERT INTO `logger` VALUES (3647, '2021-10-27 12:53:54', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', 'A57A134DEAABB5253C9AD68AC472A4D0', 'yilmaz');
INSERT INTO `logger` VALUES (3648, '2021-10-27 12:53:54', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/outline-icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', 'A57A134DEAABB5253C9AD68AC472A4D0', 'yilmaz');
INSERT INTO `logger` VALUES (3649, '2021-10-27 12:53:55', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/brand-icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', 'A57A134DEAABB5253C9AD68AC472A4D0', 'yilmaz');
INSERT INTO `logger` VALUES (3650, '2021-10-27 12:53:57', '0:0:0:0:0:0:0:1', '/gallery/detail/listed/YeniGaleriKategori', 'alper@mail.com', 'alper', 'ROLE_MVC', 'A57A134DEAABB5253C9AD68AC472A4D0', 'yilmaz');
INSERT INTO `logger` VALUES (3651, '2021-10-27 12:53:57', '0:0:0:0:0:0:0:1', '/uploads/gallery/faa4c404-f6f9-414e-a064-6e4f034291a13.jpg', 'alper@mail.com', 'alper', 'ROLE_MVC', 'A57A134DEAABB5253C9AD68AC472A4D0', 'yilmaz');
INSERT INTO `logger` VALUES (3652, '2021-10-27 12:53:57', '0:0:0:0:0:0:0:1', '/uploads/gallery/4bc45743-98f1-41c7-a0e6-68f592ce39c82.jpg', 'alper@mail.com', 'alper', 'ROLE_MVC', 'A57A134DEAABB5253C9AD68AC472A4D0', 'yilmaz');
INSERT INTO `logger` VALUES (3653, '2021-10-27 12:54:13', '0:0:0:0:0:0:0:1', '/gallery/imageUpload', 'alper@mail.com', 'alper', 'ROLE_MVC', 'A57A134DEAABB5253C9AD68AC472A4D0', 'yilmaz');
INSERT INTO `logger` VALUES (3654, '2021-10-27 12:54:13', '0:0:0:0:0:0:0:1', '/gallery', 'alper@mail.com', 'alper', 'ROLE_MVC', 'A57A134DEAABB5253C9AD68AC472A4D0', 'yilmaz');
INSERT INTO `logger` VALUES (3655, '2021-10-27 12:54:13', '0:0:0:0:0:0:0:1', '/css/style.css', 'alper@mail.com', 'alper', 'ROLE_MVC', 'A57A134DEAABB5253C9AD68AC472A4D0', 'yilmaz');
INSERT INTO `logger` VALUES (3656, '2021-10-27 12:54:13', '0:0:0:0:0:0:0:1', '/js/jquery-3.1.1.js', 'alper@mail.com', 'alper', 'ROLE_MVC', 'A57A134DEAABB5253C9AD68AC472A4D0', 'yilmaz');
INSERT INTO `logger` VALUES (3657, '2021-10-27 12:54:13', '0:0:0:0:0:0:0:1', '/css/ckeditor.css', 'alper@mail.com', 'alper', 'ROLE_MVC', 'A57A134DEAABB5253C9AD68AC472A4D0', 'yilmaz');
INSERT INTO `logger` VALUES (3658, '2021-10-27 12:54:13', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.css', 'alper@mail.com', 'alper', 'ROLE_MVC', 'A57A134DEAABB5253C9AD68AC472A4D0', 'yilmaz');
INSERT INTO `logger` VALUES (3659, '2021-10-27 12:54:13', '0:0:0:0:0:0:0:1', '/sitejs/gallery.js', 'alper@mail.com', 'alper', 'ROLE_MVC', 'A57A134DEAABB5253C9AD68AC472A4D0', 'yilmaz');
INSERT INTO `logger` VALUES (3660, '2021-10-27 12:54:13', '0:0:0:0:0:0:0:1', '/css/all.min.css', 'alper@mail.com', 'alper', 'ROLE_MVC', 'A57A134DEAABB5253C9AD68AC472A4D0', 'yilmaz');
INSERT INTO `logger` VALUES (3661, '2021-10-27 12:54:13', '0:0:0:0:0:0:0:1', '/js/script.js', 'alper@mail.com', 'alper', 'ROLE_MVC', 'A57A134DEAABB5253C9AD68AC472A4D0', 'yilmaz');
INSERT INTO `logger` VALUES (3662, '2021-10-27 12:54:13', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.js', 'alper@mail.com', 'alper', 'ROLE_MVC', 'A57A134DEAABB5253C9AD68AC472A4D0', 'yilmaz');
INSERT INTO `logger` VALUES (3663, '2021-10-27 12:54:13', '0:0:0:0:0:0:0:1', '/js/jquery.min.js', 'alper@mail.com', 'alper', 'ROLE_MVC', 'A57A134DEAABB5253C9AD68AC472A4D0', 'yilmaz');
INSERT INTO `logger` VALUES (3664, '2021-10-27 12:54:13', '0:0:0:0:0:0:0:1', '/gallery/listed', 'alper@mail.com', 'alper', 'ROLE_MVC', 'A57A134DEAABB5253C9AD68AC472A4D0', 'yilmaz');
INSERT INTO `logger` VALUES (3665, '2021-10-27 12:54:13', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/brand-icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', 'A57A134DEAABB5253C9AD68AC472A4D0', 'yilmaz');
INSERT INTO `logger` VALUES (3666, '2021-10-27 12:54:13', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/outline-icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', 'A57A134DEAABB5253C9AD68AC472A4D0', 'yilmaz');
INSERT INTO `logger` VALUES (3667, '2021-10-27 12:54:13', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', 'A57A134DEAABB5253C9AD68AC472A4D0', 'yilmaz');
INSERT INTO `logger` VALUES (3668, '2021-10-27 12:54:17', '0:0:0:0:0:0:0:1', '/gallery/detail/listed/Kategori', 'alper@mail.com', 'alper', 'ROLE_MVC', 'A57A134DEAABB5253C9AD68AC472A4D0', 'yilmaz');
INSERT INTO `logger` VALUES (3669, '2021-10-27 12:54:17', '0:0:0:0:0:0:0:1', '/uploads/gallery/ca8f0c9b-6eeb-4c9e-8515-a3ab4ba5db573.jpg', 'alper@mail.com', 'alper', 'ROLE_MVC', 'A57A134DEAABB5253C9AD68AC472A4D0', 'yilmaz');
INSERT INTO `logger` VALUES (3670, '2021-10-27 12:54:17', '0:0:0:0:0:0:0:1', '/uploads/gallery/a9631732-c0cb-4a62-9aa5-29429eb5ba9c4.jpg', 'alper@mail.com', 'alper', 'ROLE_MVC', 'A57A134DEAABB5253C9AD68AC472A4D0', 'yilmaz');
INSERT INTO `logger` VALUES (3671, '2021-10-27 12:54:17', '0:0:0:0:0:0:0:1', '/uploads/gallery/2e59f9fe-93e9-4170-839f-8709f051fac9y.png', 'alper@mail.com', 'alper', 'ROLE_MVC', 'A57A134DEAABB5253C9AD68AC472A4D0', 'yilmaz');
INSERT INTO `logger` VALUES (3672, '2021-10-27 12:54:17', '0:0:0:0:0:0:0:1', '/uploads/gallery/3844b10b-bdf0-46a2-82aa-21d8f9e6cf3d).png', 'alper@mail.com', 'alper', 'ROLE_MVC', 'A57A134DEAABB5253C9AD68AC472A4D0', 'yilmaz');
INSERT INTO `logger` VALUES (3673, '2021-10-27 12:54:17', '0:0:0:0:0:0:0:1', '/uploads/gallery/9964a37b-bb5d-41b4-9076-8da566c38ab05.jpg', 'alper@mail.com', 'alper', 'ROLE_MVC', 'A57A134DEAABB5253C9AD68AC472A4D0', 'yilmaz');
INSERT INTO `logger` VALUES (3674, '2021-10-27 12:54:17', '0:0:0:0:0:0:0:1', '/uploads/gallery/da8893c0-0fd3-45d8-9f21-73f2f8315de9y.png', 'alper@mail.com', 'alper', 'ROLE_MVC', 'A57A134DEAABB5253C9AD68AC472A4D0', 'yilmaz');
INSERT INTO `logger` VALUES (3675, '2021-10-27 12:54:19', '0:0:0:0:0:0:0:1', '/gallery/delete/27', 'alper@mail.com', 'alper', 'ROLE_MVC', 'A57A134DEAABB5253C9AD68AC472A4D0', 'yilmaz');
INSERT INTO `logger` VALUES (3676, '2021-10-27 12:54:19', '0:0:0:0:0:0:0:1', '/gallery', 'alper@mail.com', 'alper', 'ROLE_MVC', 'A57A134DEAABB5253C9AD68AC472A4D0', 'yilmaz');
INSERT INTO `logger` VALUES (3677, '2021-10-27 12:54:21', '0:0:0:0:0:0:0:1', '/css/style.css', 'alper@mail.com', 'alper', 'ROLE_MVC', 'A57A134DEAABB5253C9AD68AC472A4D0', 'yilmaz');
INSERT INTO `logger` VALUES (3678, '2021-10-27 12:54:21', '0:0:0:0:0:0:0:1', '/css/ckeditor.css', 'alper@mail.com', 'alper', 'ROLE_MVC', 'A57A134DEAABB5253C9AD68AC472A4D0', 'yilmaz');
INSERT INTO `logger` VALUES (3679, '2021-10-27 12:54:21', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.css', 'alper@mail.com', 'alper', 'ROLE_MVC', 'A57A134DEAABB5253C9AD68AC472A4D0', 'yilmaz');
INSERT INTO `logger` VALUES (3680, '2021-10-27 12:54:21', '0:0:0:0:0:0:0:1', '/css/all.min.css', 'alper@mail.com', 'alper', 'ROLE_MVC', 'A57A134DEAABB5253C9AD68AC472A4D0', 'yilmaz');
INSERT INTO `logger` VALUES (3681, '2021-10-27 12:54:21', '0:0:0:0:0:0:0:1', '/sitejs/gallery.js', 'alper@mail.com', 'alper', 'ROLE_MVC', 'A57A134DEAABB5253C9AD68AC472A4D0', 'yilmaz');
INSERT INTO `logger` VALUES (3682, '2021-10-27 12:54:21', '0:0:0:0:0:0:0:1', '/js/jquery-3.1.1.js', 'alper@mail.com', 'alper', 'ROLE_MVC', 'A57A134DEAABB5253C9AD68AC472A4D0', 'yilmaz');
INSERT INTO `logger` VALUES (3683, '2021-10-27 12:54:21', '0:0:0:0:0:0:0:1', '/js/jquery.min.js', 'alper@mail.com', 'alper', 'ROLE_MVC', 'A57A134DEAABB5253C9AD68AC472A4D0', 'yilmaz');
INSERT INTO `logger` VALUES (3684, '2021-10-27 12:54:21', '0:0:0:0:0:0:0:1', '/js/script.js', 'alper@mail.com', 'alper', 'ROLE_MVC', 'A57A134DEAABB5253C9AD68AC472A4D0', 'yilmaz');
INSERT INTO `logger` VALUES (3685, '2021-10-27 12:54:21', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.js', 'alper@mail.com', 'alper', 'ROLE_MVC', 'A57A134DEAABB5253C9AD68AC472A4D0', 'yilmaz');
INSERT INTO `logger` VALUES (3686, '2021-10-27 12:54:21', '0:0:0:0:0:0:0:1', '/gallery/listed', 'alper@mail.com', 'alper', 'ROLE_MVC', 'A57A134DEAABB5253C9AD68AC472A4D0', 'yilmaz');
INSERT INTO `logger` VALUES (3687, '2021-10-27 12:54:21', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/outline-icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', 'A57A134DEAABB5253C9AD68AC472A4D0', 'yilmaz');
INSERT INTO `logger` VALUES (3688, '2021-10-27 12:54:21', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/brand-icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', 'A57A134DEAABB5253C9AD68AC472A4D0', 'yilmaz');
INSERT INTO `logger` VALUES (3689, '2021-10-27 12:54:21', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', 'A57A134DEAABB5253C9AD68AC472A4D0', 'yilmaz');
INSERT INTO `logger` VALUES (3690, '2021-10-27 12:54:22', '0:0:0:0:0:0:0:1', '/gallery/detail/listed/Kategori', 'alper@mail.com', 'alper', 'ROLE_MVC', 'A57A134DEAABB5253C9AD68AC472A4D0', 'yilmaz');
INSERT INTO `logger` VALUES (3691, '2021-10-27 12:54:22', '0:0:0:0:0:0:0:1', '/uploads/gallery/ca8f0c9b-6eeb-4c9e-8515-a3ab4ba5db573.jpg', 'alper@mail.com', 'alper', 'ROLE_MVC', 'A57A134DEAABB5253C9AD68AC472A4D0', 'yilmaz');
INSERT INTO `logger` VALUES (3692, '2021-10-27 12:54:22', '0:0:0:0:0:0:0:1', '/uploads/gallery/a9631732-c0cb-4a62-9aa5-29429eb5ba9c4.jpg', 'alper@mail.com', 'alper', 'ROLE_MVC', 'A57A134DEAABB5253C9AD68AC472A4D0', 'yilmaz');
INSERT INTO `logger` VALUES (3693, '2021-10-27 12:54:22', '0:0:0:0:0:0:0:1', '/uploads/gallery/9964a37b-bb5d-41b4-9076-8da566c38ab05.jpg', 'alper@mail.com', 'alper', 'ROLE_MVC', 'A57A134DEAABB5253C9AD68AC472A4D0', 'yilmaz');
INSERT INTO `logger` VALUES (3694, '2021-10-27 12:54:22', '0:0:0:0:0:0:0:1', '/uploads/gallery/da8893c0-0fd3-45d8-9f21-73f2f8315de9y.png', 'alper@mail.com', 'alper', 'ROLE_MVC', 'A57A134DEAABB5253C9AD68AC472A4D0', 'yilmaz');
INSERT INTO `logger` VALUES (3695, '2021-10-27 12:54:22', '0:0:0:0:0:0:0:1', '/uploads/gallery/3844b10b-bdf0-46a2-82aa-21d8f9e6cf3d).png', 'alper@mail.com', 'alper', 'ROLE_MVC', 'A57A134DEAABB5253C9AD68AC472A4D0', 'yilmaz');
INSERT INTO `logger` VALUES (3696, '2021-10-27 12:54:24', '0:0:0:0:0:0:0:1', '/gallery/delete/28', 'alper@mail.com', 'alper', 'ROLE_MVC', 'A57A134DEAABB5253C9AD68AC472A4D0', 'yilmaz');
INSERT INTO `logger` VALUES (3697, '2021-10-27 12:54:24', '0:0:0:0:0:0:0:1', '/gallery', 'alper@mail.com', 'alper', 'ROLE_MVC', 'A57A134DEAABB5253C9AD68AC472A4D0', 'yilmaz');
INSERT INTO `logger` VALUES (3698, '2021-10-27 12:54:26', '0:0:0:0:0:0:0:1', '/css/style.css', 'alper@mail.com', 'alper', 'ROLE_MVC', 'A57A134DEAABB5253C9AD68AC472A4D0', 'yilmaz');
INSERT INTO `logger` VALUES (3699, '2021-10-27 12:54:26', '0:0:0:0:0:0:0:1', '/js/jquery-3.1.1.js', 'alper@mail.com', 'alper', 'ROLE_MVC', 'A57A134DEAABB5253C9AD68AC472A4D0', 'yilmaz');
INSERT INTO `logger` VALUES (3700, '2021-10-27 12:54:26', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.css', 'alper@mail.com', 'alper', 'ROLE_MVC', 'A57A134DEAABB5253C9AD68AC472A4D0', 'yilmaz');
INSERT INTO `logger` VALUES (3701, '2021-10-27 12:54:26', '0:0:0:0:0:0:0:1', '/css/all.min.css', 'alper@mail.com', 'alper', 'ROLE_MVC', 'A57A134DEAABB5253C9AD68AC472A4D0', 'yilmaz');
INSERT INTO `logger` VALUES (3702, '2021-10-27 12:54:26', '0:0:0:0:0:0:0:1', '/css/ckeditor.css', 'alper@mail.com', 'alper', 'ROLE_MVC', 'A57A134DEAABB5253C9AD68AC472A4D0', 'yilmaz');
INSERT INTO `logger` VALUES (3703, '2021-10-27 12:54:26', '0:0:0:0:0:0:0:1', '/sitejs/gallery.js', 'alper@mail.com', 'alper', 'ROLE_MVC', 'A57A134DEAABB5253C9AD68AC472A4D0', 'yilmaz');
INSERT INTO `logger` VALUES (3704, '2021-10-27 12:54:26', '0:0:0:0:0:0:0:1', '/js/jquery.min.js', 'alper@mail.com', 'alper', 'ROLE_MVC', 'A57A134DEAABB5253C9AD68AC472A4D0', 'yilmaz');
INSERT INTO `logger` VALUES (3705, '2021-10-27 12:54:26', '0:0:0:0:0:0:0:1', '/js/script.js', 'alper@mail.com', 'alper', 'ROLE_MVC', 'A57A134DEAABB5253C9AD68AC472A4D0', 'yilmaz');
INSERT INTO `logger` VALUES (3706, '2021-10-27 12:54:26', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.js', 'alper@mail.com', 'alper', 'ROLE_MVC', 'A57A134DEAABB5253C9AD68AC472A4D0', 'yilmaz');
INSERT INTO `logger` VALUES (3707, '2021-10-27 12:54:26', '0:0:0:0:0:0:0:1', '/gallery/listed', 'alper@mail.com', 'alper', 'ROLE_MVC', 'A57A134DEAABB5253C9AD68AC472A4D0', 'yilmaz');
INSERT INTO `logger` VALUES (3708, '2021-10-27 12:54:26', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', 'A57A134DEAABB5253C9AD68AC472A4D0', 'yilmaz');
INSERT INTO `logger` VALUES (3709, '2021-10-27 12:54:26', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/outline-icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', 'A57A134DEAABB5253C9AD68AC472A4D0', 'yilmaz');
INSERT INTO `logger` VALUES (3710, '2021-10-27 12:54:26', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/brand-icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', 'A57A134DEAABB5253C9AD68AC472A4D0', 'yilmaz');
INSERT INTO `logger` VALUES (3711, '2021-10-27 12:54:28', '0:0:0:0:0:0:0:1', '/gallery/detail/listed/Kateg', 'alper@mail.com', 'alper', 'ROLE_MVC', 'A57A134DEAABB5253C9AD68AC472A4D0', 'yilmaz');
INSERT INTO `logger` VALUES (3712, '2021-10-27 12:54:28', '0:0:0:0:0:0:0:1', '/uploads/gallery/54498766-b7dc-45f9-8954-7c50c7827682).png', 'alper@mail.com', 'alper', 'ROLE_MVC', 'A57A134DEAABB5253C9AD68AC472A4D0', 'yilmaz');
INSERT INTO `logger` VALUES (3713, '2021-10-27 12:54:28', '0:0:0:0:0:0:0:1', '/uploads/gallery/7fcf27bf-7e6c-401d-a31b-747c7ecd5364y.png', 'alper@mail.com', 'alper', 'ROLE_MVC', 'A57A134DEAABB5253C9AD68AC472A4D0', 'yilmaz');
INSERT INTO `logger` VALUES (3714, '2021-10-27 12:54:28', '0:0:0:0:0:0:0:1', '/uploads/gallery/ee246357-4c22-4f3b-b8c5-e83e3238b5014.png', 'alper@mail.com', 'alper', 'ROLE_MVC', 'A57A134DEAABB5253C9AD68AC472A4D0', 'yilmaz');
INSERT INTO `logger` VALUES (3715, '2021-10-27 12:55:04', '0:0:0:0:0:0:0:1', '/gallery/detail/listed/Kateg', 'alper@mail.com', 'alper', 'ROLE_MVC', 'A57A134DEAABB5253C9AD68AC472A4D0', 'yilmaz');
INSERT INTO `logger` VALUES (3716, '2021-10-27 12:55:04', '0:0:0:0:0:0:0:1', '/uploads/gallery/54498766-b7dc-45f9-8954-7c50c7827682).png', 'alper@mail.com', 'alper', 'ROLE_MVC', 'A57A134DEAABB5253C9AD68AC472A4D0', 'yilmaz');
INSERT INTO `logger` VALUES (3717, '2021-10-27 12:55:04', '0:0:0:0:0:0:0:1', '/uploads/gallery/7fcf27bf-7e6c-401d-a31b-747c7ecd5364y.png', 'alper@mail.com', 'alper', 'ROLE_MVC', 'A57A134DEAABB5253C9AD68AC472A4D0', 'yilmaz');
INSERT INTO `logger` VALUES (3718, '2021-10-27 12:55:04', '0:0:0:0:0:0:0:1', '/uploads/gallery/ee246357-4c22-4f3b-b8c5-e83e3238b5014.png', 'alper@mail.com', 'alper', 'ROLE_MVC', 'A57A134DEAABB5253C9AD68AC472A4D0', 'yilmaz');
INSERT INTO `logger` VALUES (3719, '2021-10-27 12:55:45', '0:0:0:0:0:0:0:1', '/gallery/detail/listed/Kategori', 'alper@mail.com', 'alper', 'ROLE_MVC', 'A57A134DEAABB5253C9AD68AC472A4D0', 'yilmaz');
INSERT INTO `logger` VALUES (3720, '2021-10-27 12:55:45', '0:0:0:0:0:0:0:1', '/uploads/gallery/a9631732-c0cb-4a62-9aa5-29429eb5ba9c4.jpg', 'alper@mail.com', 'alper', 'ROLE_MVC', 'A57A134DEAABB5253C9AD68AC472A4D0', 'yilmaz');
INSERT INTO `logger` VALUES (3721, '2021-10-27 12:55:45', '0:0:0:0:0:0:0:1', '/uploads/gallery/ca8f0c9b-6eeb-4c9e-8515-a3ab4ba5db573.jpg', 'alper@mail.com', 'alper', 'ROLE_MVC', 'A57A134DEAABB5253C9AD68AC472A4D0', 'yilmaz');
INSERT INTO `logger` VALUES (3722, '2021-10-27 12:55:45', '0:0:0:0:0:0:0:1', '/uploads/gallery/9964a37b-bb5d-41b4-9076-8da566c38ab05.jpg', 'alper@mail.com', 'alper', 'ROLE_MVC', 'A57A134DEAABB5253C9AD68AC472A4D0', 'yilmaz');
INSERT INTO `logger` VALUES (3723, '2021-10-27 12:55:45', '0:0:0:0:0:0:0:1', '/uploads/gallery/da8893c0-0fd3-45d8-9f21-73f2f8315de9y.png', 'alper@mail.com', 'alper', 'ROLE_MVC', 'A57A134DEAABB5253C9AD68AC472A4D0', 'yilmaz');
INSERT INTO `logger` VALUES (3724, '2021-10-27 12:56:24', '0:0:0:0:0:0:0:1', '/gallery/detail/listed/YeniGaleriKategori', 'alper@mail.com', 'alper', 'ROLE_MVC', 'A57A134DEAABB5253C9AD68AC472A4D0', 'yilmaz');
INSERT INTO `logger` VALUES (3725, '2021-10-27 12:56:24', '0:0:0:0:0:0:0:1', '/uploads/gallery/4bc45743-98f1-41c7-a0e6-68f592ce39c82.jpg', 'alper@mail.com', 'alper', 'ROLE_MVC', 'A57A134DEAABB5253C9AD68AC472A4D0', 'yilmaz');
INSERT INTO `logger` VALUES (3726, '2021-10-27 12:56:24', '0:0:0:0:0:0:0:1', '/uploads/gallery/faa4c404-f6f9-414e-a064-6e4f034291a13.jpg', 'alper@mail.com', 'alper', 'ROLE_MVC', 'A57A134DEAABB5253C9AD68AC472A4D0', 'yilmaz');
INSERT INTO `logger` VALUES (3727, '2021-10-27 12:56:29', '0:0:0:0:0:0:0:1', '/announce', 'alper@mail.com', 'alper', 'ROLE_MVC', 'A57A134DEAABB5253C9AD68AC472A4D0', 'yilmaz');
INSERT INTO `logger` VALUES (3728, '2021-10-27 12:56:29', '0:0:0:0:0:0:0:1', '/css/ckeditor.css', 'alper@mail.com', 'alper', 'ROLE_MVC', 'A57A134DEAABB5253C9AD68AC472A4D0', 'yilmaz');
INSERT INTO `logger` VALUES (3729, '2021-10-27 12:56:29', '0:0:0:0:0:0:0:1', '/js/jquery-3.1.1.js', 'alper@mail.com', 'alper', 'ROLE_MVC', 'A57A134DEAABB5253C9AD68AC472A4D0', 'yilmaz');
INSERT INTO `logger` VALUES (3730, '2021-10-27 12:56:29', '0:0:0:0:0:0:0:1', '/sitejs/announce.js', 'alper@mail.com', 'alper', 'ROLE_MVC', 'A57A134DEAABB5253C9AD68AC472A4D0', 'yilmaz');
INSERT INTO `logger` VALUES (3731, '2021-10-27 12:56:29', '0:0:0:0:0:0:0:1', '/css/all.min.css', 'alper@mail.com', 'alper', 'ROLE_MVC', 'A57A134DEAABB5253C9AD68AC472A4D0', 'yilmaz');
INSERT INTO `logger` VALUES (3732, '2021-10-27 12:56:29', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.css', 'alper@mail.com', 'alper', 'ROLE_MVC', 'A57A134DEAABB5253C9AD68AC472A4D0', 'yilmaz');
INSERT INTO `logger` VALUES (3733, '2021-10-27 12:56:29', '0:0:0:0:0:0:0:1', '/css/style.css', 'alper@mail.com', 'alper', 'ROLE_MVC', 'A57A134DEAABB5253C9AD68AC472A4D0', 'yilmaz');
INSERT INTO `logger` VALUES (3734, '2021-10-27 12:56:29', '0:0:0:0:0:0:0:1', '/js/jquery.min.js', 'alper@mail.com', 'alper', 'ROLE_MVC', 'A57A134DEAABB5253C9AD68AC472A4D0', 'yilmaz');
INSERT INTO `logger` VALUES (3735, '2021-10-27 12:56:29', '0:0:0:0:0:0:0:1', '/js/script.js', 'alper@mail.com', 'alper', 'ROLE_MVC', 'A57A134DEAABB5253C9AD68AC472A4D0', 'yilmaz');
INSERT INTO `logger` VALUES (3736, '2021-10-27 12:56:29', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.js', 'alper@mail.com', 'alper', 'ROLE_MVC', 'A57A134DEAABB5253C9AD68AC472A4D0', 'yilmaz');
INSERT INTO `logger` VALUES (3737, '2021-10-27 12:56:29', '0:0:0:0:0:0:0:1', '/announce/listed', 'alper@mail.com', 'alper', 'ROLE_MVC', 'A57A134DEAABB5253C9AD68AC472A4D0', 'yilmaz');
INSERT INTO `logger` VALUES (3738, '2021-10-27 12:56:30', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/outline-icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', 'A57A134DEAABB5253C9AD68AC472A4D0', 'yilmaz');
INSERT INTO `logger` VALUES (3739, '2021-10-27 12:56:30', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/brand-icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', 'A57A134DEAABB5253C9AD68AC472A4D0', 'yilmaz');
INSERT INTO `logger` VALUES (3740, '2021-10-27 12:56:30', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', 'A57A134DEAABB5253C9AD68AC472A4D0', 'yilmaz');
INSERT INTO `logger` VALUES (3741, '2021-10-27 12:56:38', '0:0:0:0:0:0:0:1', '/announce/addAnnounce', 'alper@mail.com', 'alper', 'ROLE_MVC', 'A57A134DEAABB5253C9AD68AC472A4D0', 'yilmaz');
INSERT INTO `logger` VALUES (3742, '2021-10-27 12:56:40', '0:0:0:0:0:0:0:1', '/announce/listed', 'alper@mail.com', 'alper', 'ROLE_MVC', 'A57A134DEAABB5253C9AD68AC472A4D0', 'yilmaz');
INSERT INTO `logger` VALUES (3743, '2021-10-27 12:56:43', '0:0:0:0:0:0:0:1', '/announce/addAnnounce', 'alper@mail.com', 'alper', 'ROLE_MVC', 'A57A134DEAABB5253C9AD68AC472A4D0', 'yilmaz');
INSERT INTO `logger` VALUES (3744, '2021-10-27 12:56:44', '0:0:0:0:0:0:0:1', '/announce/listed', 'alper@mail.com', 'alper', 'ROLE_MVC', 'A57A134DEAABB5253C9AD68AC472A4D0', 'yilmaz');
INSERT INTO `logger` VALUES (3745, '2021-10-27 12:56:48', '0:0:0:0:0:0:0:1', '/announce/addAnnounce', 'alper@mail.com', 'alper', 'ROLE_MVC', 'A57A134DEAABB5253C9AD68AC472A4D0', 'yilmaz');
INSERT INTO `logger` VALUES (3746, '2021-10-27 12:56:49', '0:0:0:0:0:0:0:1', '/announce/listed', 'alper@mail.com', 'alper', 'ROLE_MVC', 'A57A134DEAABB5253C9AD68AC472A4D0', 'yilmaz');
INSERT INTO `logger` VALUES (3747, '2021-10-27 12:57:18', '0:0:0:0:0:0:0:1', '/announce/delete/8', 'alper@mail.com', 'alper', 'ROLE_MVC', 'A57A134DEAABB5253C9AD68AC472A4D0', 'yilmaz');
INSERT INTO `logger` VALUES (3748, '2021-10-27 12:57:18', '0:0:0:0:0:0:0:1', '/announce/listed', 'alper@mail.com', 'alper', 'ROLE_MVC', 'A57A134DEAABB5253C9AD68AC472A4D0', 'yilmaz');
INSERT INTO `logger` VALUES (3749, '2021-10-27 12:57:22', '0:0:0:0:0:0:0:1', '/announce/delete/7', 'alper@mail.com', 'alper', 'ROLE_MVC', 'A57A134DEAABB5253C9AD68AC472A4D0', 'yilmaz');
INSERT INTO `logger` VALUES (3750, '2021-10-27 12:57:22', '0:0:0:0:0:0:0:1', '/announce/listed', 'alper@mail.com', 'alper', 'ROLE_MVC', 'A57A134DEAABB5253C9AD68AC472A4D0', 'yilmaz');
INSERT INTO `logger` VALUES (3751, '2021-10-27 12:57:28', '0:0:0:0:0:0:0:1', '/announce/addAnnounce', 'alper@mail.com', 'alper', 'ROLE_MVC', 'A57A134DEAABB5253C9AD68AC472A4D0', 'yilmaz');
INSERT INTO `logger` VALUES (3752, '2021-10-27 12:57:30', '0:0:0:0:0:0:0:1', '/announce/listed', 'alper@mail.com', 'alper', 'ROLE_MVC', 'A57A134DEAABB5253C9AD68AC472A4D0', 'yilmaz');
INSERT INTO `logger` VALUES (3753, '2021-10-27 12:58:17', '0:0:0:0:0:0:0:1', '/category', 'alper@mail.com', 'alper', 'ROLE_MVC', 'A57A134DEAABB5253C9AD68AC472A4D0', 'yilmaz');
INSERT INTO `logger` VALUES (3754, '2021-10-27 12:58:17', '0:0:0:0:0:0:0:1', '/js/jquery-3.1.1.js', 'alper@mail.com', 'alper', 'ROLE_MVC', 'A57A134DEAABB5253C9AD68AC472A4D0', 'yilmaz');
INSERT INTO `logger` VALUES (3755, '2021-10-27 12:58:17', '0:0:0:0:0:0:0:1', '/css/style.css', 'alper@mail.com', 'alper', 'ROLE_MVC', 'A57A134DEAABB5253C9AD68AC472A4D0', 'yilmaz');
INSERT INTO `logger` VALUES (3756, '2021-10-27 12:58:17', '0:0:0:0:0:0:0:1', '/sitejs/category.js', 'alper@mail.com', 'alper', 'ROLE_MVC', 'A57A134DEAABB5253C9AD68AC472A4D0', 'yilmaz');
INSERT INTO `logger` VALUES (3757, '2021-10-27 12:58:17', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.css', 'alper@mail.com', 'alper', 'ROLE_MVC', 'A57A134DEAABB5253C9AD68AC472A4D0', 'yilmaz');
INSERT INTO `logger` VALUES (3758, '2021-10-27 12:58:17', '0:0:0:0:0:0:0:1', '/css/all.min.css', 'alper@mail.com', 'alper', 'ROLE_MVC', 'A57A134DEAABB5253C9AD68AC472A4D0', 'yilmaz');
INSERT INTO `logger` VALUES (3759, '2021-10-27 12:58:17', '0:0:0:0:0:0:0:1', '/js/jquery.min.js', 'alper@mail.com', 'alper', 'ROLE_MVC', 'A57A134DEAABB5253C9AD68AC472A4D0', 'yilmaz');
INSERT INTO `logger` VALUES (3760, '2021-10-27 12:58:17', '0:0:0:0:0:0:0:1', '/css/ckeditor.css', 'alper@mail.com', 'alper', 'ROLE_MVC', 'A57A134DEAABB5253C9AD68AC472A4D0', 'yilmaz');
INSERT INTO `logger` VALUES (3761, '2021-10-27 12:58:17', '0:0:0:0:0:0:0:1', '/js/script.js', 'alper@mail.com', 'alper', 'ROLE_MVC', 'A57A134DEAABB5253C9AD68AC472A4D0', 'yilmaz');
INSERT INTO `logger` VALUES (3762, '2021-10-27 12:58:17', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.js', 'alper@mail.com', 'alper', 'ROLE_MVC', 'A57A134DEAABB5253C9AD68AC472A4D0', 'yilmaz');
INSERT INTO `logger` VALUES (3763, '2021-10-27 12:58:18', '0:0:0:0:0:0:0:1', '/category/listCat', 'alper@mail.com', 'alper', 'ROLE_MVC', 'A57A134DEAABB5253C9AD68AC472A4D0', 'yilmaz');
INSERT INTO `logger` VALUES (3764, '2021-10-27 12:58:18', '0:0:0:0:0:0:0:1', '/category/subCat', 'alper@mail.com', 'alper', 'ROLE_MVC', 'A57A134DEAABB5253C9AD68AC472A4D0', 'yilmaz');
INSERT INTO `logger` VALUES (3765, '2021-10-27 12:58:18', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/outline-icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', 'A57A134DEAABB5253C9AD68AC472A4D0', 'yilmaz');
INSERT INTO `logger` VALUES (3766, '2021-10-27 12:58:18', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', 'A57A134DEAABB5253C9AD68AC472A4D0', 'yilmaz');
INSERT INTO `logger` VALUES (3767, '2021-10-27 12:58:18', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/brand-icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', 'A57A134DEAABB5253C9AD68AC472A4D0', 'yilmaz');
INSERT INTO `logger` VALUES (3768, '2021-10-27 12:58:21', '0:0:0:0:0:0:0:1', '/news', 'alper@mail.com', 'alper', 'ROLE_MVC', 'A57A134DEAABB5253C9AD68AC472A4D0', 'yilmaz');
INSERT INTO `logger` VALUES (3769, '2021-10-27 12:58:21', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.css', 'alper@mail.com', 'alper', 'ROLE_MVC', 'A57A134DEAABB5253C9AD68AC472A4D0', 'yilmaz');
INSERT INTO `logger` VALUES (3770, '2021-10-27 12:58:21', '0:0:0:0:0:0:0:1', '/css/ckeditor.css', 'alper@mail.com', 'alper', 'ROLE_MVC', 'A57A134DEAABB5253C9AD68AC472A4D0', 'yilmaz');
INSERT INTO `logger` VALUES (3771, '2021-10-27 12:58:21', '0:0:0:0:0:0:0:1', '/css/style.css', 'alper@mail.com', 'alper', 'ROLE_MVC', 'A57A134DEAABB5253C9AD68AC472A4D0', 'yilmaz');
INSERT INTO `logger` VALUES (3772, '2021-10-27 12:58:21', '0:0:0:0:0:0:0:1', '/css/all.min.css', 'alper@mail.com', 'alper', 'ROLE_MVC', 'A57A134DEAABB5253C9AD68AC472A4D0', 'yilmaz');
INSERT INTO `logger` VALUES (3773, '2021-10-27 12:58:21', '0:0:0:0:0:0:0:1', '/js/jquery-3.1.1.js', 'alper@mail.com', 'alper', 'ROLE_MVC', 'A57A134DEAABB5253C9AD68AC472A4D0', 'yilmaz');
INSERT INTO `logger` VALUES (3774, '2021-10-27 12:58:21', '0:0:0:0:0:0:0:1', '/js/jquery.min.js', 'alper@mail.com', 'alper', 'ROLE_MVC', 'A57A134DEAABB5253C9AD68AC472A4D0', 'yilmaz');
INSERT INTO `logger` VALUES (3775, '2021-10-27 12:58:21', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.js', 'alper@mail.com', 'alper', 'ROLE_MVC', 'A57A134DEAABB5253C9AD68AC472A4D0', 'yilmaz');
INSERT INTO `logger` VALUES (3776, '2021-10-27 12:58:21', '0:0:0:0:0:0:0:1', '/uploads/db8ec82c-7e4b-4b62-85f8-0da24f7e146e0.jpg', 'alper@mail.com', 'alper', 'ROLE_MVC', 'A57A134DEAABB5253C9AD68AC472A4D0', 'yilmaz');
INSERT INTO `logger` VALUES (3777, '2021-10-27 12:58:21', '0:0:0:0:0:0:0:1', '/js/script.js', 'alper@mail.com', 'alper', 'ROLE_MVC', 'A57A134DEAABB5253C9AD68AC472A4D0', 'yilmaz');
INSERT INTO `logger` VALUES (3778, '2021-10-27 12:58:21', '0:0:0:0:0:0:0:1', '/uploads/0abf7732-69d3-432b-9f48-70e29504d05b5.jpg', 'alper@mail.com', 'alper', 'ROLE_MVC', 'A57A134DEAABB5253C9AD68AC472A4D0', 'yilmaz');
INSERT INTO `logger` VALUES (3779, '2021-10-27 12:58:21', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/brand-icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', 'A57A134DEAABB5253C9AD68AC472A4D0', 'yilmaz');
INSERT INTO `logger` VALUES (3780, '2021-10-27 12:58:21', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/outline-icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', 'A57A134DEAABB5253C9AD68AC472A4D0', 'yilmaz');
INSERT INTO `logger` VALUES (3781, '2021-10-27 12:58:21', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', 'A57A134DEAABB5253C9AD68AC472A4D0', 'yilmaz');
INSERT INTO `logger` VALUES (3782, '2021-10-27 12:58:35', '0:0:0:0:0:0:0:1', '/newsAdd', 'alper@mail.com', 'alper', 'ROLE_MVC', 'A57A134DEAABB5253C9AD68AC472A4D0', 'yilmaz');
INSERT INTO `logger` VALUES (3783, '2021-10-27 12:58:36', '0:0:0:0:0:0:0:1', '/css/style.css', 'alper@mail.com', 'alper', 'ROLE_MVC', 'A57A134DEAABB5253C9AD68AC472A4D0', 'yilmaz');
INSERT INTO `logger` VALUES (3784, '2021-10-27 12:58:36', '0:0:0:0:0:0:0:1', '/css/all.min.css', 'alper@mail.com', 'alper', 'ROLE_MVC', 'A57A134DEAABB5253C9AD68AC472A4D0', 'yilmaz');
INSERT INTO `logger` VALUES (3785, '2021-10-27 12:58:36', '0:0:0:0:0:0:0:1', '/js/jquery-3.1.1.js', 'alper@mail.com', 'alper', 'ROLE_MVC', 'A57A134DEAABB5253C9AD68AC472A4D0', 'yilmaz');
INSERT INTO `logger` VALUES (3786, '2021-10-27 12:58:36', '0:0:0:0:0:0:0:1', '/css/ckeditor.css', 'alper@mail.com', 'alper', 'ROLE_MVC', 'A57A134DEAABB5253C9AD68AC472A4D0', 'yilmaz');
INSERT INTO `logger` VALUES (3787, '2021-10-27 12:58:36', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.css', 'alper@mail.com', 'alper', 'ROLE_MVC', 'A57A134DEAABB5253C9AD68AC472A4D0', 'yilmaz');
INSERT INTO `logger` VALUES (3788, '2021-10-27 12:58:36', '0:0:0:0:0:0:0:1', '/js/jquery.min.js', 'alper@mail.com', 'alper', 'ROLE_MVC', 'A57A134DEAABB5253C9AD68AC472A4D0', 'yilmaz');
INSERT INTO `logger` VALUES (3789, '2021-10-27 12:58:36', '0:0:0:0:0:0:0:1', '/js/script.js', 'alper@mail.com', 'alper', 'ROLE_MVC', 'A57A134DEAABB5253C9AD68AC472A4D0', 'yilmaz');
INSERT INTO `logger` VALUES (3790, '2021-10-27 12:58:36', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.js', 'alper@mail.com', 'alper', 'ROLE_MVC', 'A57A134DEAABB5253C9AD68AC472A4D0', 'yilmaz');
INSERT INTO `logger` VALUES (3791, '2021-10-27 12:58:36', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/outline-icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', 'A57A134DEAABB5253C9AD68AC472A4D0', 'yilmaz');
INSERT INTO `logger` VALUES (3792, '2021-10-27 12:58:36', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', 'A57A134DEAABB5253C9AD68AC472A4D0', 'yilmaz');
INSERT INTO `logger` VALUES (3793, '2021-10-27 12:58:36', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/brand-icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', 'A57A134DEAABB5253C9AD68AC472A4D0', 'yilmaz');
INSERT INTO `logger` VALUES (3794, '2021-10-27 12:59:03', '0:0:0:0:0:0:0:1', '/vote', 'alper@mail.com', 'alper', 'ROLE_MVC', 'A57A134DEAABB5253C9AD68AC472A4D0', 'yilmaz');
INSERT INTO `logger` VALUES (3795, '2021-10-27 12:59:03', '0:0:0:0:0:0:0:1', '/css/all.min.css', 'alper@mail.com', 'alper', 'ROLE_MVC', 'A57A134DEAABB5253C9AD68AC472A4D0', 'yilmaz');
INSERT INTO `logger` VALUES (3796, '2021-10-27 12:59:03', '0:0:0:0:0:0:0:1', '/js/jquery-3.1.1.js', 'alper@mail.com', 'alper', 'ROLE_MVC', 'A57A134DEAABB5253C9AD68AC472A4D0', 'yilmaz');
INSERT INTO `logger` VALUES (3797, '2021-10-27 12:59:03', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.css', 'alper@mail.com', 'alper', 'ROLE_MVC', 'A57A134DEAABB5253C9AD68AC472A4D0', 'yilmaz');
INSERT INTO `logger` VALUES (3798, '2021-10-27 12:59:03', '0:0:0:0:0:0:0:1', '/css/style.css', 'alper@mail.com', 'alper', 'ROLE_MVC', 'A57A134DEAABB5253C9AD68AC472A4D0', 'yilmaz');
INSERT INTO `logger` VALUES (3799, '2021-10-27 12:59:03', '0:0:0:0:0:0:0:1', '/sitejs/vote.js', 'alper@mail.com', 'alper', 'ROLE_MVC', 'A57A134DEAABB5253C9AD68AC472A4D0', 'yilmaz');
INSERT INTO `logger` VALUES (3800, '2021-10-27 12:59:03', '0:0:0:0:0:0:0:1', '/css/ckeditor.css', 'alper@mail.com', 'alper', 'ROLE_MVC', 'A57A134DEAABB5253C9AD68AC472A4D0', 'yilmaz');
INSERT INTO `logger` VALUES (3801, '2021-10-27 12:59:03', '0:0:0:0:0:0:0:1', '/js/script.js', 'alper@mail.com', 'alper', 'ROLE_MVC', 'A57A134DEAABB5253C9AD68AC472A4D0', 'yilmaz');
INSERT INTO `logger` VALUES (3802, '2021-10-27 12:59:03', '0:0:0:0:0:0:0:1', '/js/jquery.min.js', 'alper@mail.com', 'alper', 'ROLE_MVC', 'A57A134DEAABB5253C9AD68AC472A4D0', 'yilmaz');
INSERT INTO `logger` VALUES (3803, '2021-10-27 12:59:03', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.js', 'alper@mail.com', 'alper', 'ROLE_MVC', 'A57A134DEAABB5253C9AD68AC472A4D0', 'yilmaz');
INSERT INTO `logger` VALUES (3804, '2021-10-27 12:59:03', '0:0:0:0:0:0:0:1', '/vote/pagination/0/10', 'alper@mail.com', 'alper', 'ROLE_MVC', 'A57A134DEAABB5253C9AD68AC472A4D0', 'yilmaz');
INSERT INTO `logger` VALUES (3805, '2021-10-27 12:59:03', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/outline-icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', 'A57A134DEAABB5253C9AD68AC472A4D0', 'yilmaz');
INSERT INTO `logger` VALUES (3806, '2021-10-27 12:59:03', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', 'A57A134DEAABB5253C9AD68AC472A4D0', 'yilmaz');
INSERT INTO `logger` VALUES (3807, '2021-10-27 12:59:03', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/brand-icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', 'A57A134DEAABB5253C9AD68AC472A4D0', 'yilmaz');
INSERT INTO `logger` VALUES (3808, '2021-10-27 12:59:09', '0:0:0:0:0:0:0:1', '/survey', 'alper@mail.com', 'alper', 'ROLE_MVC', 'A57A134DEAABB5253C9AD68AC472A4D0', 'yilmaz');
INSERT INTO `logger` VALUES (3809, '2021-10-27 12:59:09', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.css', 'alper@mail.com', 'alper', 'ROLE_MVC', 'A57A134DEAABB5253C9AD68AC472A4D0', 'yilmaz');
INSERT INTO `logger` VALUES (3810, '2021-10-27 12:59:09', '0:0:0:0:0:0:0:1', '/js/jquery-3.1.1.js', 'alper@mail.com', 'alper', 'ROLE_MVC', 'A57A134DEAABB5253C9AD68AC472A4D0', 'yilmaz');
INSERT INTO `logger` VALUES (3811, '2021-10-27 12:59:09', '0:0:0:0:0:0:0:1', '/css/ckeditor.css', 'alper@mail.com', 'alper', 'ROLE_MVC', 'A57A134DEAABB5253C9AD68AC472A4D0', 'yilmaz');
INSERT INTO `logger` VALUES (3812, '2021-10-27 12:59:09', '0:0:0:0:0:0:0:1', '/css/all.min.css', 'alper@mail.com', 'alper', 'ROLE_MVC', 'A57A134DEAABB5253C9AD68AC472A4D0', 'yilmaz');
INSERT INTO `logger` VALUES (3813, '2021-10-27 12:59:09', '0:0:0:0:0:0:0:1', '/css/style.css', 'alper@mail.com', 'alper', 'ROLE_MVC', 'A57A134DEAABB5253C9AD68AC472A4D0', 'yilmaz');
INSERT INTO `logger` VALUES (3814, '2021-10-27 12:59:09', '0:0:0:0:0:0:0:1', '/sitejs/survey.js', 'alper@mail.com', 'alper', 'ROLE_MVC', 'A57A134DEAABB5253C9AD68AC472A4D0', 'yilmaz');
INSERT INTO `logger` VALUES (3815, '2021-10-27 12:59:09', '0:0:0:0:0:0:0:1', '/js/jquery.min.js', 'alper@mail.com', 'alper', 'ROLE_MVC', 'A57A134DEAABB5253C9AD68AC472A4D0', 'yilmaz');
INSERT INTO `logger` VALUES (3816, '2021-10-27 12:59:09', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.js', 'alper@mail.com', 'alper', 'ROLE_MVC', 'A57A134DEAABB5253C9AD68AC472A4D0', 'yilmaz');
INSERT INTO `logger` VALUES (3817, '2021-10-27 12:59:09', '0:0:0:0:0:0:0:1', '/js/script.js', 'alper@mail.com', 'alper', 'ROLE_MVC', 'A57A134DEAABB5253C9AD68AC472A4D0', 'yilmaz');
INSERT INTO `logger` VALUES (3818, '2021-10-27 12:59:10', '0:0:0:0:0:0:0:1', '/survey/pagination/0/10', 'alper@mail.com', 'alper', 'ROLE_MVC', 'A57A134DEAABB5253C9AD68AC472A4D0', 'yilmaz');
INSERT INTO `logger` VALUES (3819, '2021-10-27 12:59:10', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', 'A57A134DEAABB5253C9AD68AC472A4D0', 'yilmaz');
INSERT INTO `logger` VALUES (3820, '2021-10-27 12:59:10', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/brand-icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', 'A57A134DEAABB5253C9AD68AC472A4D0', 'yilmaz');
INSERT INTO `logger` VALUES (3821, '2021-10-27 12:59:10', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/outline-icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', 'A57A134DEAABB5253C9AD68AC472A4D0', 'yilmaz');
INSERT INTO `logger` VALUES (3822, '2021-10-27 13:00:48', '0:0:0:0:0:0:0:1', '/vote', 'alper@mail.com', 'alper', 'ROLE_MVC', 'A57A134DEAABB5253C9AD68AC472A4D0', 'yilmaz');
INSERT INTO `logger` VALUES (3823, '2021-10-27 13:00:48', '0:0:0:0:0:0:0:1', '/css/style.css', 'alper@mail.com', 'alper', 'ROLE_MVC', 'A57A134DEAABB5253C9AD68AC472A4D0', 'yilmaz');
INSERT INTO `logger` VALUES (3824, '2021-10-27 13:00:48', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.css', 'alper@mail.com', 'alper', 'ROLE_MVC', 'A57A134DEAABB5253C9AD68AC472A4D0', 'yilmaz');
INSERT INTO `logger` VALUES (3825, '2021-10-27 13:00:48', '0:0:0:0:0:0:0:1', '/js/jquery-3.1.1.js', 'alper@mail.com', 'alper', 'ROLE_MVC', 'A57A134DEAABB5253C9AD68AC472A4D0', 'yilmaz');
INSERT INTO `logger` VALUES (3826, '2021-10-27 13:00:48', '0:0:0:0:0:0:0:1', '/css/all.min.css', 'alper@mail.com', 'alper', 'ROLE_MVC', 'A57A134DEAABB5253C9AD68AC472A4D0', 'yilmaz');
INSERT INTO `logger` VALUES (3827, '2021-10-27 13:00:48', '0:0:0:0:0:0:0:1', '/sitejs/vote.js', 'alper@mail.com', 'alper', 'ROLE_MVC', 'A57A134DEAABB5253C9AD68AC472A4D0', 'yilmaz');
INSERT INTO `logger` VALUES (3828, '2021-10-27 13:00:48', '0:0:0:0:0:0:0:1', '/css/ckeditor.css', 'alper@mail.com', 'alper', 'ROLE_MVC', 'A57A134DEAABB5253C9AD68AC472A4D0', 'yilmaz');
INSERT INTO `logger` VALUES (3829, '2021-10-27 13:00:48', '0:0:0:0:0:0:0:1', '/js/jquery.min.js', 'alper@mail.com', 'alper', 'ROLE_MVC', 'A57A134DEAABB5253C9AD68AC472A4D0', 'yilmaz');
INSERT INTO `logger` VALUES (3830, '2021-10-27 13:00:48', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.js', 'alper@mail.com', 'alper', 'ROLE_MVC', 'A57A134DEAABB5253C9AD68AC472A4D0', 'yilmaz');
INSERT INTO `logger` VALUES (3831, '2021-10-27 13:00:48', '0:0:0:0:0:0:0:1', '/js/script.js', 'alper@mail.com', 'alper', 'ROLE_MVC', 'A57A134DEAABB5253C9AD68AC472A4D0', 'yilmaz');
INSERT INTO `logger` VALUES (3832, '2021-10-27 13:00:48', '0:0:0:0:0:0:0:1', '/vote/pagination/0/10', 'alper@mail.com', 'alper', 'ROLE_MVC', 'A57A134DEAABB5253C9AD68AC472A4D0', 'yilmaz');
INSERT INTO `logger` VALUES (3833, '2021-10-27 13:00:48', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', 'A57A134DEAABB5253C9AD68AC472A4D0', 'yilmaz');
INSERT INTO `logger` VALUES (3834, '2021-10-27 13:00:48', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/outline-icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', 'A57A134DEAABB5253C9AD68AC472A4D0', 'yilmaz');
INSERT INTO `logger` VALUES (3835, '2021-10-27 13:00:48', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/brand-icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', 'A57A134DEAABB5253C9AD68AC472A4D0', 'yilmaz');
INSERT INTO `logger` VALUES (3836, '2021-10-27 13:01:33', '0:0:0:0:0:0:0:1', '/vote', 'alper@mail.com', 'alper', 'ROLE_MVC', 'A57A134DEAABB5253C9AD68AC472A4D0', 'yilmaz');
INSERT INTO `logger` VALUES (3837, '2021-10-27 13:01:33', '0:0:0:0:0:0:0:1', '/css/style.css', 'alper@mail.com', 'alper', 'ROLE_MVC', 'A57A134DEAABB5253C9AD68AC472A4D0', 'yilmaz');
INSERT INTO `logger` VALUES (3838, '2021-10-27 13:01:33', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.css', 'alper@mail.com', 'alper', 'ROLE_MVC', 'A57A134DEAABB5253C9AD68AC472A4D0', 'yilmaz');
INSERT INTO `logger` VALUES (3839, '2021-10-27 13:01:33', '0:0:0:0:0:0:0:1', '/js/jquery-3.1.1.js', 'alper@mail.com', 'alper', 'ROLE_MVC', 'A57A134DEAABB5253C9AD68AC472A4D0', 'yilmaz');
INSERT INTO `logger` VALUES (3840, '2021-10-27 13:01:33', '0:0:0:0:0:0:0:1', '/css/all.min.css', 'alper@mail.com', 'alper', 'ROLE_MVC', 'A57A134DEAABB5253C9AD68AC472A4D0', 'yilmaz');
INSERT INTO `logger` VALUES (3841, '2021-10-27 13:01:33', '0:0:0:0:0:0:0:1', '/sitejs/vote.js', 'alper@mail.com', 'alper', 'ROLE_MVC', 'A57A134DEAABB5253C9AD68AC472A4D0', 'yilmaz');
INSERT INTO `logger` VALUES (3842, '2021-10-27 13:01:33', '0:0:0:0:0:0:0:1', '/css/ckeditor.css', 'alper@mail.com', 'alper', 'ROLE_MVC', 'A57A134DEAABB5253C9AD68AC472A4D0', 'yilmaz');
INSERT INTO `logger` VALUES (3843, '2021-10-27 13:01:33', '0:0:0:0:0:0:0:1', '/js/jquery.min.js', 'alper@mail.com', 'alper', 'ROLE_MVC', 'A57A134DEAABB5253C9AD68AC472A4D0', 'yilmaz');
INSERT INTO `logger` VALUES (3844, '2021-10-27 13:01:33', '0:0:0:0:0:0:0:1', '/js/script.js', 'alper@mail.com', 'alper', 'ROLE_MVC', 'A57A134DEAABB5253C9AD68AC472A4D0', 'yilmaz');
INSERT INTO `logger` VALUES (3845, '2021-10-27 13:01:33', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.js', 'alper@mail.com', 'alper', 'ROLE_MVC', 'A57A134DEAABB5253C9AD68AC472A4D0', 'yilmaz');
INSERT INTO `logger` VALUES (3846, '2021-10-27 13:01:34', '0:0:0:0:0:0:0:1', '/vote/pagination/0/10', 'alper@mail.com', 'alper', 'ROLE_MVC', 'A57A134DEAABB5253C9AD68AC472A4D0', 'yilmaz');
INSERT INTO `logger` VALUES (3847, '2021-10-27 13:01:34', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/brand-icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', 'A57A134DEAABB5253C9AD68AC472A4D0', 'yilmaz');
INSERT INTO `logger` VALUES (3848, '2021-10-27 13:01:34', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', 'A57A134DEAABB5253C9AD68AC472A4D0', 'yilmaz');
INSERT INTO `logger` VALUES (3849, '2021-10-27 13:01:34', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/outline-icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', 'A57A134DEAABB5253C9AD68AC472A4D0', 'yilmaz');
INSERT INTO `logger` VALUES (3850, '2021-10-27 13:02:07', '0:0:0:0:0:0:0:1', '/vote', 'alper@mail.com', 'alper', 'ROLE_MVC', 'A57A134DEAABB5253C9AD68AC472A4D0', 'yilmaz');
INSERT INTO `logger` VALUES (3851, '2021-10-27 13:02:08', '0:0:0:0:0:0:0:1', '/css/style.css', 'alper@mail.com', 'alper', 'ROLE_MVC', 'A57A134DEAABB5253C9AD68AC472A4D0', 'yilmaz');
INSERT INTO `logger` VALUES (3852, '2021-10-27 13:02:08', '0:0:0:0:0:0:0:1', '/js/jquery-3.1.1.js', 'alper@mail.com', 'alper', 'ROLE_MVC', 'A57A134DEAABB5253C9AD68AC472A4D0', 'yilmaz');
INSERT INTO `logger` VALUES (3853, '2021-10-27 13:02:08', '0:0:0:0:0:0:0:1', '/css/ckeditor.css', 'alper@mail.com', 'alper', 'ROLE_MVC', 'A57A134DEAABB5253C9AD68AC472A4D0', 'yilmaz');
INSERT INTO `logger` VALUES (3854, '2021-10-27 13:02:08', '0:0:0:0:0:0:0:1', '/css/all.min.css', 'alper@mail.com', 'alper', 'ROLE_MVC', 'A57A134DEAABB5253C9AD68AC472A4D0', 'yilmaz');
INSERT INTO `logger` VALUES (3855, '2021-10-27 13:02:08', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.css', 'alper@mail.com', 'alper', 'ROLE_MVC', 'A57A134DEAABB5253C9AD68AC472A4D0', 'yilmaz');
INSERT INTO `logger` VALUES (3856, '2021-10-27 13:02:08', '0:0:0:0:0:0:0:1', '/sitejs/vote.js', 'alper@mail.com', 'alper', 'ROLE_MVC', 'A57A134DEAABB5253C9AD68AC472A4D0', 'yilmaz');
INSERT INTO `logger` VALUES (3857, '2021-10-27 13:02:08', '0:0:0:0:0:0:0:1', '/js/jquery.min.js', 'alper@mail.com', 'alper', 'ROLE_MVC', 'A57A134DEAABB5253C9AD68AC472A4D0', 'yilmaz');
INSERT INTO `logger` VALUES (3858, '2021-10-27 13:02:08', '0:0:0:0:0:0:0:1', '/js/script.js', 'alper@mail.com', 'alper', 'ROLE_MVC', 'A57A134DEAABB5253C9AD68AC472A4D0', 'yilmaz');
INSERT INTO `logger` VALUES (3859, '2021-10-27 13:02:08', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/semantic.js', 'alper@mail.com', 'alper', 'ROLE_MVC', 'A57A134DEAABB5253C9AD68AC472A4D0', 'yilmaz');
INSERT INTO `logger` VALUES (3860, '2021-10-27 13:02:08', '0:0:0:0:0:0:0:1', '/vote/pagination/0/10', 'alper@mail.com', 'alper', 'ROLE_MVC', 'A57A134DEAABB5253C9AD68AC472A4D0', 'yilmaz');
INSERT INTO `logger` VALUES (3861, '2021-10-27 13:02:08', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/outline-icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', 'A57A134DEAABB5253C9AD68AC472A4D0', 'yilmaz');
INSERT INTO `logger` VALUES (3862, '2021-10-27 13:02:08', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/brand-icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', 'A57A134DEAABB5253C9AD68AC472A4D0', 'yilmaz');
INSERT INTO `logger` VALUES (3863, '2021-10-27 13:02:08', '0:0:0:0:0:0:0:1', '/Semantic-UI-CSS-master/themes/default/assets/fonts/icons.woff2', 'alper@mail.com', 'alper', 'ROLE_MVC', 'A57A134DEAABB5253C9AD68AC472A4D0', 'yilmaz');

-- ----------------------------
-- Table structure for news
-- ----------------------------
DROP TABLE IF EXISTS `news`;
CREATE TABLE `news`  (
  `news_id` int NOT NULL AUTO_INCREMENT,
  `news_image_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `news_long_comment` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `news_short_comment` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `news_status` bit(1) NULL DEFAULT NULL,
  `news_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `created_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `created_date` datetime NULL DEFAULT NULL,
  `last_modified_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `last_modified_date` datetime NULL DEFAULT NULL,
  `news_add_date` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`news_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of news
-- ----------------------------
INSERT INTO `news` VALUES (1, 'db8ec82c-7e4b-4b62-85f8-0da24f7e146e0.jpg', '<p>asdasdssas</p>', 'haber açıklama', b'1', 'haber başlıksss', NULL, NULL, 'alper@mail.com', '2021-10-27 08:33:43', '2021-10-27 08:33:43');
INSERT INTO `news` VALUES (2, '0abf7732-69d3-432b-9f48-70e29504d05b5.jpg', '<p>sdsd</p>', 'haber', b'1', 'Ferhat haber', 'alper@mail.com', '2021-10-27 10:04:15', 'alper@mail.com', '2021-10-27 10:04:15', '2021-10-27 10:04:15');

-- ----------------------------
-- Table structure for news_cat_table
-- ----------------------------
DROP TABLE IF EXISTS `news_cat_table`;
CREATE TABLE `news_cat_table`  (
  `news_id` int NOT NULL,
  `news_category_id` int NOT NULL,
  INDEX `FKhqfr23oyrybjxdjsw5iwg9ceq`(`news_category_id`) USING BTREE,
  INDEX `FK2n19ftulvlqildlopid830l90`(`news_id`) USING BTREE,
  CONSTRAINT `FK2n19ftulvlqildlopid830l90` FOREIGN KEY (`news_id`) REFERENCES `news` (`news_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FKhqfr23oyrybjxdjsw5iwg9ceq` FOREIGN KEY (`news_category_id`) REFERENCES `news_category` (`news_category_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of news_cat_table
-- ----------------------------
INSERT INTO `news_cat_table` VALUES (1, 1);
INSERT INTO `news_cat_table` VALUES (2, 1);

-- ----------------------------
-- Table structure for news_category
-- ----------------------------
DROP TABLE IF EXISTS `news_category`;
CREATE TABLE `news_category`  (
  `news_category_id` int NOT NULL AUTO_INCREMENT,
  `news_category_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`news_category_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of news_category
-- ----------------------------
INSERT INTO `news_category` VALUES (1, 'kategori');

-- ----------------------------
-- Table structure for news_comp_id
-- ----------------------------
DROP TABLE IF EXISTS `news_comp_id`;
CREATE TABLE `news_comp_id`  (
  `company_company_id` int NULL DEFAULT NULL,
  `news_id` int NOT NULL,
  PRIMARY KEY (`news_id`) USING BTREE,
  INDEX `FKljybi08w6px8wevhh5wxog1h8`(`company_company_id`) USING BTREE,
  CONSTRAINT `FK14kjbciyi8evbcyldglp590l6` FOREIGN KEY (`news_id`) REFERENCES `news` (`news_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FKljybi08w6px8wevhh5wxog1h8` FOREIGN KEY (`company_company_id`) REFERENCES `company` (`company_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of news_comp_id
-- ----------------------------
INSERT INTO `news_comp_id` VALUES (1, 1);
INSERT INTO `news_comp_id` VALUES (1, 2);

-- ----------------------------
-- Table structure for notice
-- ----------------------------
DROP TABLE IF EXISTS `notice`;
CREATE TABLE `notice`  (
  `notice_id` int NOT NULL AUTO_INCREMENT,
  `notice_comment` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `notice_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`notice_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of notice
-- ----------------------------

-- ----------------------------
-- Table structure for orders
-- ----------------------------
DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders`  (
  `orders_id` int NOT NULL AUTO_INCREMENT,
  `orders_amounth` int NULL DEFAULT NULL,
  `orders_cost` double NULL DEFAULT NULL,
  `orders_date` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `orders_status` int NULL DEFAULT NULL,
  `adress_id` int NULL DEFAULT NULL,
  PRIMARY KEY (`orders_id`) USING BTREE,
  INDEX `FKl6bd6xw7clps8juq55pjqcci4`(`adress_id`) USING BTREE,
  CONSTRAINT `FKl6bd6xw7clps8juq55pjqcci4` FOREIGN KEY (`adress_id`) REFERENCES `adress` (`adress_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of orders
-- ----------------------------
INSERT INTO `orders` VALUES (1, 22, 22, 's', 1, 22);

-- ----------------------------
-- Table structure for orders_comp_id
-- ----------------------------
DROP TABLE IF EXISTS `orders_comp_id`;
CREATE TABLE `orders_comp_id`  (
  `company_company_id` int NULL DEFAULT NULL,
  `orders_id` int NOT NULL,
  PRIMARY KEY (`orders_id`) USING BTREE,
  INDEX `FK8wbsd3j4rnyqirctby5erqyws`(`company_company_id`) USING BTREE,
  CONSTRAINT `FK8wbsd3j4rnyqirctby5erqyws` FOREIGN KEY (`company_company_id`) REFERENCES `company` (`company_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FKnpqxfyfalrv70w1ghxmibgb7k` FOREIGN KEY (`orders_id`) REFERENCES `orders` (`orders_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of orders_comp_id
-- ----------------------------
INSERT INTO `orders_comp_id` VALUES (1, 1);

-- ----------------------------
-- Table structure for orders_customrs_interlayer
-- ----------------------------
DROP TABLE IF EXISTS `orders_customrs_interlayer`;
CREATE TABLE `orders_customrs_interlayer`  (
  `ordrs_id` int NOT NULL,
  `cstmrs_id` int NOT NULL,
  INDEX `FKq2n1vasrgxv7ojjkbttgueq3w`(`cstmrs_id`) USING BTREE,
  INDEX `FK7xc5qj57utchmogq4thqf4sft`(`ordrs_id`) USING BTREE,
  CONSTRAINT `FK7xc5qj57utchmogq4thqf4sft` FOREIGN KEY (`ordrs_id`) REFERENCES `orders` (`orders_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FKq2n1vasrgxv7ojjkbttgueq3w` FOREIGN KEY (`cstmrs_id`) REFERENCES `customer` (`customer_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of orders_customrs_interlayer
-- ----------------------------

-- ----------------------------
-- Table structure for prduct_urder_interlayer
-- ----------------------------
DROP TABLE IF EXISTS `prduct_urder_interlayer`;
CREATE TABLE `prduct_urder_interlayer`  (
  `ordrs_id` int NOT NULL,
  `prdct_id` int NOT NULL,
  INDEX `FKc3htjalykt090y2yi99qc7twm`(`prdct_id`) USING BTREE,
  INDEX `FKpntcyb962i4knaymprv4y5jdj`(`ordrs_id`) USING BTREE,
  CONSTRAINT `FKc3htjalykt090y2yi99qc7twm` FOREIGN KEY (`prdct_id`) REFERENCES `product` (`product_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FKpntcyb962i4knaymprv4y5jdj` FOREIGN KEY (`ordrs_id`) REFERENCES `orders` (`orders_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of prduct_urder_interlayer
-- ----------------------------

-- ----------------------------
-- Table structure for product
-- ----------------------------
DROP TABLE IF EXISTS `product`;
CREATE TABLE `product`  (
  `product_id` int NOT NULL AUTO_INCREMENT,
  `product_address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `product_campaing_comment` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `product_campaing_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `product_campaing_status` int NULL DEFAULT NULL,
  `product_latitude` float NULL DEFAULT NULL,
  `product_long_comment` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `product_longitude` float NULL DEFAULT NULL,
  `product_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `product_price` double NULL DEFAULT NULL,
  `product_short_comment` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `product_type` int NULL DEFAULT NULL,
  `created_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `created_date` datetime NULL DEFAULT NULL,
  `last_modified_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `last_modified_date` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`product_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 15 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of product
-- ----------------------------
INSERT INTO `product` VALUES (1, '333', NULL, NULL, 1, 33, '333', 33, '333', 333, '333', 2, NULL, NULL, NULL, NULL);
INSERT INTO `product` VALUES (2, '333', NULL, NULL, 1, 33, '333', 33, '333', 333, '333', 2, NULL, NULL, NULL, NULL);
INSERT INTO `product` VALUES (4, '34555', '5555', '345', 1, 3455, 'sasddd', 5433, 'ashas4', 453, 'asdgggg', 1, NULL, NULL, NULL, NULL);
INSERT INTO `product` VALUES (5, '345', '56', '55', 2, 345, 'hdf', 534, 'pgfhk', 45, 'sdgf', 2, NULL, NULL, NULL, NULL);
INSERT INTO `product` VALUES (6, 'es', '32', '23', 1, 33, '', 33, 's42e', 4, '', 1, NULL, NULL, NULL, NULL);
INSERT INTO `product` VALUES (9, 'yeni ürün', '324', '243', 2, 324, 'asdas', 324, 'yeni ürün', 23, 'yeni ürün', 1, NULL, NULL, NULL, NULL);
INSERT INTO `product` VALUES (10, '4432', 'sss', 's', 1, 34, '34', 332, 'asdgt', 23, '', 1, NULL, NULL, NULL, NULL);
INSERT INTO `product` VALUES (11, 'ssde4', 'ss', 'ss', 1, 343, '34', 4, '324', 23, '', 1, NULL, NULL, NULL, NULL);
INSERT INTO `product` VALUES (12, 'Adres', 'kampanya yorum', 'kampanya', 2, 234, 'ürün yorumu', 324, 'DenemeÜrün', 2343, 'DenemeÜrün', 1, NULL, NULL, NULL, NULL);
INSERT INTO `product` VALUES (13, 'adres ürün', 'kampanya yorum ', 'Kampanya', 1, 33, 'yorumlar', 33, 'Ürünler', 33, 'ürünyorum', 1, 'alper@mail.com', '2021-10-27 09:59:28', 'alper@mail.com', '2021-10-27 09:59:28');
INSERT INTO `product` VALUES (14, '34324234', '234', '324', 2, 234, 'sdssd', 234, 'Ürürnsds', 33, 'sdsds', 2, 'alper@mail.com', '2021-10-27 12:41:37', 'alper@mail.com', '2021-10-27 12:41:37');

-- ----------------------------
-- Table structure for product_catgory_interlayer
-- ----------------------------
DROP TABLE IF EXISTS `product_catgory_interlayer`;
CREATE TABLE `product_catgory_interlayer`  (
  `prdct_id` int NOT NULL,
  `catgry_id` int NOT NULL,
  INDEX `FK8dv74g6rp6pwm9vfe5d3yxt17`(`catgry_id`) USING BTREE,
  INDEX `FK4pshi5ktpmigld3ghfu65jmqx`(`prdct_id`) USING BTREE,
  CONSTRAINT `FK4pshi5ktpmigld3ghfu65jmqx` FOREIGN KEY (`prdct_id`) REFERENCES `product` (`product_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FK8dv74g6rp6pwm9vfe5d3yxt17` FOREIGN KEY (`catgry_id`) REFERENCES `category` (`category_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of product_catgory_interlayer
-- ----------------------------
INSERT INTO `product_catgory_interlayer` VALUES (2, 2);
INSERT INTO `product_catgory_interlayer` VALUES (1, 2);
INSERT INTO `product_catgory_interlayer` VALUES (1, 3);
INSERT INTO `product_catgory_interlayer` VALUES (2, 3);
INSERT INTO `product_catgory_interlayer` VALUES (4, 2);
INSERT INTO `product_catgory_interlayer` VALUES (4, 4);
INSERT INTO `product_catgory_interlayer` VALUES (5, 2);
INSERT INTO `product_catgory_interlayer` VALUES (5, 4);
INSERT INTO `product_catgory_interlayer` VALUES (9, 1);
INSERT INTO `product_catgory_interlayer` VALUES (9, 2);
INSERT INTO `product_catgory_interlayer` VALUES (12, 1);
INSERT INTO `product_catgory_interlayer` VALUES (12, 2);
INSERT INTO `product_catgory_interlayer` VALUES (12, 3);
INSERT INTO `product_catgory_interlayer` VALUES (12, 4);
INSERT INTO `product_catgory_interlayer` VALUES (12, 5);
INSERT INTO `product_catgory_interlayer` VALUES (13, 2);
INSERT INTO `product_catgory_interlayer` VALUES (13, 3);
INSERT INTO `product_catgory_interlayer` VALUES (13, 4);
INSERT INTO `product_catgory_interlayer` VALUES (14, 2);
INSERT INTO `product_catgory_interlayer` VALUES (14, 3);

-- ----------------------------
-- Table structure for product_comp_id
-- ----------------------------
DROP TABLE IF EXISTS `product_comp_id`;
CREATE TABLE `product_comp_id`  (
  `company_company_id` int NULL DEFAULT NULL,
  `product_id` int NOT NULL,
  PRIMARY KEY (`product_id`) USING BTREE,
  INDEX `FKl643cc1t3ytqqu92xqba5n8ip`(`company_company_id`) USING BTREE,
  CONSTRAINT `FKbc3xo0tkk5sgny5p7dasi06np` FOREIGN KEY (`product_id`) REFERENCES `product` (`product_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FKl643cc1t3ytqqu92xqba5n8ip` FOREIGN KEY (`company_company_id`) REFERENCES `company` (`company_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of product_comp_id
-- ----------------------------
INSERT INTO `product_comp_id` VALUES (1, 1);
INSERT INTO `product_comp_id` VALUES (1, 2);
INSERT INTO `product_comp_id` VALUES (1, 4);
INSERT INTO `product_comp_id` VALUES (1, 5);
INSERT INTO `product_comp_id` VALUES (1, 6);
INSERT INTO `product_comp_id` VALUES (1, 9);
INSERT INTO `product_comp_id` VALUES (1, 10);
INSERT INTO `product_comp_id` VALUES (1, 11);
INSERT INTO `product_comp_id` VALUES (1, 12);
INSERT INTO `product_comp_id` VALUES (1, 13);
INSERT INTO `product_comp_id` VALUES (1, 14);

-- ----------------------------
-- Table structure for product_image
-- ----------------------------
DROP TABLE IF EXISTS `product_image`;
CREATE TABLE `product_image`  (
  `image_id` int NOT NULL AUTO_INCREMENT,
  `product_image_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`image_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 26 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of product_image
-- ----------------------------
INSERT INTO `product_image` VALUES (1, 'c1bc4107-e05d-4cd3-aaab-6e37ae5b578a5.jpg');
INSERT INTO `product_image` VALUES (2, 'a9a1e5a0-ba70-481c-af53-29b069e96d386.jpg');
INSERT INTO `product_image` VALUES (3, '9dc57043-5540-4b12-a266-35f59b965d577.jpg');
INSERT INTO `product_image` VALUES (4, '0ddc1212-6eb6-4eeb-8c56-f399a4d4cc922.jpg');
INSERT INTO `product_image` VALUES (5, '77dcc546-6c43-4da8-94d4-5e046efa075d9.jpg');
INSERT INTO `product_image` VALUES (6, 'ef6477ce-35d1-4938-b101-159ede45a38a0.jpg');
INSERT INTO `product_image` VALUES (7, 'aa9cfdb6-0434-46a6-bb7d-b877c13f11335.jpg');
INSERT INTO `product_image` VALUES (8, '22dc6e94-7137-4d35-9709-e588c7e283da5.jpg');
INSERT INTO `product_image` VALUES (9, 'b43e308a-17b0-4be5-93f4-1b93df2c3b3b6.jpg');
INSERT INTO `product_image` VALUES (10, '48a85156-746d-4608-b324-c02fbf6601c34.jpg');
INSERT INTO `product_image` VALUES (11, '1aa186e6-cb1d-4c0d-ae46-193826e24e1c5.jpg');
INSERT INTO `product_image` VALUES (12, 'c91b4750-8405-43a9-b3ac-58761f91a4626.jpg');
INSERT INTO `product_image` VALUES (13, 'b01e0740-dc4a-4dc2-bc8b-ad5ccfcd14245.jpg');
INSERT INTO `product_image` VALUES (14, '9246eda7-7c62-4b42-bcb1-f0bff14db5317.jpg');
INSERT INTO `product_image` VALUES (15, 'ec268887-87a3-4332-ba8f-fe675e7211133.jpg');
INSERT INTO `product_image` VALUES (16, 'd8d2432d-e907-47c0-88d9-64ed348fa32b4.jpg');
INSERT INTO `product_image` VALUES (17, 'effa238b-69db-4d38-af7c-42846c2ecfef4.jpg');
INSERT INTO `product_image` VALUES (18, '8267c080-a458-49de-a4d2-c01c85a4f1455.jpg');
INSERT INTO `product_image` VALUES (19, 'ad5bcdf7-2abe-42b4-8de5-9914447f5f386.jpg');
INSERT INTO `product_image` VALUES (20, 'd4196dbf-4671-45c0-bdac-7c638edabb2d4.jpg');
INSERT INTO `product_image` VALUES (21, '17ee416d-2070-4e24-94ee-db579f7920bf5.jpg');
INSERT INTO `product_image` VALUES (22, '8a487d2c-18c1-4bc1-b3d6-98e187db57ab4.jpg');
INSERT INTO `product_image` VALUES (23, '36e04f26-c5ec-4738-a681-853c72ac4bc95.jpg');
INSERT INTO `product_image` VALUES (24, '54f4b4ce-999f-4638-8468-f08aae0a8b5b5.jpg');
INSERT INTO `product_image` VALUES (25, 'bf6d84e3-7180-47d9-b9ed-ebbb10e422ebr.png');

-- ----------------------------
-- Table structure for product_imageurl_interlayer
-- ----------------------------
DROP TABLE IF EXISTS `product_imageurl_interlayer`;
CREATE TABLE `product_imageurl_interlayer`  (
  `prdct_id` int NOT NULL,
  `img_id` int NOT NULL,
  INDEX `FKpbvxv5nh5asjdls6d4i0yi0uw`(`img_id`) USING BTREE,
  INDEX `FKnq0dv9fe6h1mt94thqir2bsqp`(`prdct_id`) USING BTREE,
  CONSTRAINT `FKnq0dv9fe6h1mt94thqir2bsqp` FOREIGN KEY (`prdct_id`) REFERENCES `product` (`product_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FKpbvxv5nh5asjdls6d4i0yi0uw` FOREIGN KEY (`img_id`) REFERENCES `product_image` (`image_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of product_imageurl_interlayer
-- ----------------------------
INSERT INTO `product_imageurl_interlayer` VALUES (4, 1);
INSERT INTO `product_imageurl_interlayer` VALUES (4, 2);
INSERT INTO `product_imageurl_interlayer` VALUES (4, 3);
INSERT INTO `product_imageurl_interlayer` VALUES (5, 4);
INSERT INTO `product_imageurl_interlayer` VALUES (5, 5);
INSERT INTO `product_imageurl_interlayer` VALUES (5, 6);
INSERT INTO `product_imageurl_interlayer` VALUES (6, 7);
INSERT INTO `product_imageurl_interlayer` VALUES (9, 10);
INSERT INTO `product_imageurl_interlayer` VALUES (9, 11);
INSERT INTO `product_imageurl_interlayer` VALUES (9, 12);
INSERT INTO `product_imageurl_interlayer` VALUES (10, 13);
INSERT INTO `product_imageurl_interlayer` VALUES (11, 14);
INSERT INTO `product_imageurl_interlayer` VALUES (12, 17);
INSERT INTO `product_imageurl_interlayer` VALUES (12, 18);
INSERT INTO `product_imageurl_interlayer` VALUES (12, 19);
INSERT INTO `product_imageurl_interlayer` VALUES (13, 22);
INSERT INTO `product_imageurl_interlayer` VALUES (13, 23);
INSERT INTO `product_imageurl_interlayer` VALUES (14, 25);

-- ----------------------------
-- Table structure for product_sub_cat_interlayer
-- ----------------------------
DROP TABLE IF EXISTS `product_sub_cat_interlayer`;
CREATE TABLE `product_sub_cat_interlayer`  (
  `prdct_id` int NOT NULL,
  `sub_cat_id` int NOT NULL,
  INDEX `FKexabkeloehp9wn876g32fu4hq`(`sub_cat_id`) USING BTREE,
  INDEX `FK87bebbujeuly6epq2n1vaha84`(`prdct_id`) USING BTREE,
  CONSTRAINT `FK87bebbujeuly6epq2n1vaha84` FOREIGN KEY (`prdct_id`) REFERENCES `product` (`product_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FKexabkeloehp9wn876g32fu4hq` FOREIGN KEY (`sub_cat_id`) REFERENCES `sub_category` (`sub_category_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of product_sub_cat_interlayer
-- ----------------------------
INSERT INTO `product_sub_cat_interlayer` VALUES (1, 1);
INSERT INTO `product_sub_cat_interlayer` VALUES (2, 1);
INSERT INTO `product_sub_cat_interlayer` VALUES (1, 3);
INSERT INTO `product_sub_cat_interlayer` VALUES (2, 3);
INSERT INTO `product_sub_cat_interlayer` VALUES (4, 2);
INSERT INTO `product_sub_cat_interlayer` VALUES (4, 3);
INSERT INTO `product_sub_cat_interlayer` VALUES (5, 2);
INSERT INTO `product_sub_cat_interlayer` VALUES (5, 3);
INSERT INTO `product_sub_cat_interlayer` VALUES (9, 2);
INSERT INTO `product_sub_cat_interlayer` VALUES (9, 3);
INSERT INTO `product_sub_cat_interlayer` VALUES (12, 1);
INSERT INTO `product_sub_cat_interlayer` VALUES (12, 2);
INSERT INTO `product_sub_cat_interlayer` VALUES (12, 3);
INSERT INTO `product_sub_cat_interlayer` VALUES (13, 1);
INSERT INTO `product_sub_cat_interlayer` VALUES (13, 2);
INSERT INTO `product_sub_cat_interlayer` VALUES (13, 3);
INSERT INTO `product_sub_cat_interlayer` VALUES (14, 2);

-- ----------------------------
-- Table structure for role
-- ----------------------------
DROP TABLE IF EXISTS `role`;
CREATE TABLE `role`  (
  `id` bigint NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of role
-- ----------------------------
INSERT INTO `role` VALUES (1, 'ROLE_REST');
INSERT INTO `role` VALUES (2, 'ROLE_MVC');
INSERT INTO `role` VALUES (3, 'ROLE_CUSTOMER');

-- ----------------------------
-- Table structure for sub_category
-- ----------------------------
DROP TABLE IF EXISTS `sub_category`;
CREATE TABLE `sub_category`  (
  `sub_category_id` int NOT NULL AUTO_INCREMENT,
  `sub_category_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `created_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `created_date` datetime NULL DEFAULT NULL,
  `last_modified_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `last_modified_date` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`sub_category_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sub_category
-- ----------------------------
INSERT INTO `sub_category` VALUES (1, 'altkategori ', NULL, NULL, NULL, NULL);
INSERT INTO `sub_category` VALUES (2, 'alt kategori2', NULL, NULL, NULL, NULL);
INSERT INTO `sub_category` VALUES (3, 'alt3', NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for survey
-- ----------------------------
DROP TABLE IF EXISTS `survey`;
CREATE TABLE `survey`  (
  `survey_id` int NOT NULL AUTO_INCREMENT,
  `survey_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`survey_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of survey
-- ----------------------------
INSERT INTO `survey` VALUES (1, 'Deneme');
INSERT INTO `survey` VALUES (2, 'anket oluştur');

-- ----------------------------
-- Table structure for survey_comp_id
-- ----------------------------
DROP TABLE IF EXISTS `survey_comp_id`;
CREATE TABLE `survey_comp_id`  (
  `company_company_id` int NULL DEFAULT NULL,
  `survey_id` int NOT NULL,
  PRIMARY KEY (`survey_id`) USING BTREE,
  INDEX `FKf41x4dj2poamc8guk536sahly`(`company_company_id`) USING BTREE,
  CONSTRAINT `FKf41x4dj2poamc8guk536sahly` FOREIGN KEY (`company_company_id`) REFERENCES `company` (`company_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FKp5g8a6e5bxe0e8xtp99ddsfn7` FOREIGN KEY (`survey_id`) REFERENCES `survey` (`survey_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of survey_comp_id
-- ----------------------------
INSERT INTO `survey_comp_id` VALUES (1, 1);
INSERT INTO `survey_comp_id` VALUES (1, 2);

-- ----------------------------
-- Table structure for survey_options
-- ----------------------------
DROP TABLE IF EXISTS `survey_options`;
CREATE TABLE `survey_options`  (
  `options_id` int NOT NULL AUTO_INCREMENT,
  `survey_options_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`options_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of survey_options
-- ----------------------------
INSERT INTO `survey_options` VALUES (1, 'Seçenek1');
INSERT INTO `survey_options` VALUES (2, 'seçenek');

-- ----------------------------
-- Table structure for survey_options_id
-- ----------------------------
DROP TABLE IF EXISTS `survey_options_id`;
CREATE TABLE `survey_options_id`  (
  `survey_survey_id` int NOT NULL,
  `survey_options_options_id` int NOT NULL,
  `options_options_id` int NOT NULL,
  UNIQUE INDEX `UK_5e4g3uh9j6pj2a0pui9kncdsc`(`survey_options_options_id`) USING BTREE,
  INDEX `FKrbcpj7ffichl21kdlb1kqgrg9`(`survey_survey_id`) USING BTREE,
  INDEX `FKbc36g5jatpqojpcy2xndq7jip`(`options_options_id`) USING BTREE,
  CONSTRAINT `FKbc36g5jatpqojpcy2xndq7jip` FOREIGN KEY (`options_options_id`) REFERENCES `survey_options` (`options_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FKfgpjcnl3s0mm0d0d0ebl4vfb8` FOREIGN KEY (`survey_options_options_id`) REFERENCES `survey_options` (`options_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FKrbcpj7ffichl21kdlb1kqgrg9` FOREIGN KEY (`survey_survey_id`) REFERENCES `survey` (`survey_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of survey_options_id
-- ----------------------------

-- ----------------------------
-- Table structure for survey_vote
-- ----------------------------
DROP TABLE IF EXISTS `survey_vote`;
CREATE TABLE `survey_vote`  (
  `survey_vote_id` int NOT NULL AUTO_INCREMENT,
  `vote` int NULL DEFAULT NULL,
  `customer_customer_id` int NULL DEFAULT NULL,
  `survey_survey_id` int NULL DEFAULT NULL,
  PRIMARY KEY (`survey_vote_id`) USING BTREE,
  INDEX `FK1u25j1kuv6d2p8h9hsdpj1gie`(`customer_customer_id`) USING BTREE,
  INDEX `FKmxf5xfg1teuymi62mr58kah3t`(`survey_survey_id`) USING BTREE,
  CONSTRAINT `FK1u25j1kuv6d2p8h9hsdpj1gie` FOREIGN KEY (`customer_customer_id`) REFERENCES `customer` (`customer_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FKmxf5xfg1teuymi62mr58kah3t` FOREIGN KEY (`survey_survey_id`) REFERENCES `survey` (`survey_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of survey_vote
-- ----------------------------
INSERT INTO `survey_vote` VALUES (1, 3, 1, 1);

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` bigint NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `enabled` bit(1) NOT NULL,
  `first_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `last_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `token_expired` bit(1) NOT NULL,
  `company_company_id` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `FKkc36j0ivsculof5470bjks2xf`(`company_company_id`) USING BTREE,
  CONSTRAINT `FKkc36j0ivsculof5470bjks2xf` FOREIGN KEY (`company_company_id`) REFERENCES `company` (`company_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, 'alper@mail.com', b'1', 'alper', 'yilmaz', '$2a$10$/ran/ZlKRRX8DgQXguMmE.dp9Q9j4FiFsqvOEl5QBSGtihMKvrtvC', b'1', 1);
INSERT INTO `user` VALUES (2, NULL, b'0', 'alper', 'alper', NULL, b'0', NULL);
INSERT INTO `user` VALUES (4, 'alperyilmaz@mail.com', b'1', 'trert', 'aretrlpeertertr', '$2a$10$aLYagrcMfEMuBVsKRwz8Au0Knri6QCuiNk20dtlwCWUJZMjPQOL6S', b'1', 1);
INSERT INTO `user` VALUES (13, 'alper@mailmail.com', b'0', 'Alsss', 'yylmss', NULL, b'0', 2);
INSERT INTO `user` VALUES (14, 'foo@mail.com', b'1', 'Foo', 'fooooo', '$2a$10$vmcA27BJpqhfpATJV7rij.3OPsakyvEoRxSSlYfknxetjzioyU23W', b'1', 5);
INSERT INTO `user` VALUES (16, 'alperylmz@mail.com', b'1', 'alperewıor', 'asdasda', '$2a$10$gM7AHBuvdAakW6fQRXnmb.vzD69/Vi/pmZ3c7ztG42nMQgHZz0FV6', b'1', 6);
INSERT INTO `user` VALUES (18, 'app@mail.com', b'1', 'app', 'app', '123', b'1', 7);
INSERT INTO `user` VALUES (20, 'appmain@mail.com', b'1', 'appmain', 'appmain', '$2a$10$7t8WhgDPVQFL6RDymjWQ2eG2pGiREZAI3ko6tEbgAX8QRk6pFpMye', b'1', 8);
INSERT INTO `user` VALUES (23, 'ferhat@mail.com', b'1', 'ferhat', 'ferhat', '$2a$10$Yg72PlXEMRfFs/.kzK2JRuE8rVjPKV026n4YAsGqIkZiFXqUKE2WC', b'1', 9);

-- ----------------------------
-- Table structure for users_roles
-- ----------------------------
DROP TABLE IF EXISTS `users_roles`;
CREATE TABLE `users_roles`  (
  `user_id` bigint NOT NULL,
  `role_id` bigint NOT NULL,
  INDEX `FKt4v0rrweyk393bdgt107vdx0x`(`role_id`) USING BTREE,
  INDEX `FKgd3iendaoyh04b95ykqise6qh`(`user_id`) USING BTREE,
  CONSTRAINT `FKgd3iendaoyh04b95ykqise6qh` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FKt4v0rrweyk393bdgt107vdx0x` FOREIGN KEY (`role_id`) REFERENCES `role` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users_roles
-- ----------------------------
INSERT INTO `users_roles` VALUES (1, 2);
INSERT INTO `users_roles` VALUES (20, 2);
INSERT INTO `users_roles` VALUES (23, 2);

-- ----------------------------
-- Table structure for vote
-- ----------------------------
DROP TABLE IF EXISTS `vote`;
CREATE TABLE `vote`  (
  `vote_id` int NOT NULL AUTO_INCREMENT,
  `vote_point` int NULL DEFAULT NULL,
  `customer_customer_id` int NULL DEFAULT NULL,
  `product_product_id` int NULL DEFAULT NULL,
  PRIMARY KEY (`vote_id`) USING BTREE,
  INDEX `FK17bypuct4b39xft7dp7idvi7`(`customer_customer_id`) USING BTREE,
  INDEX `FK88xjbxi4xd2s3m6502ksekppt`(`product_product_id`) USING BTREE,
  CONSTRAINT `FK17bypuct4b39xft7dp7idvi7` FOREIGN KEY (`customer_customer_id`) REFERENCES `customer` (`customer_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FK88xjbxi4xd2s3m6502ksekppt` FOREIGN KEY (`product_product_id`) REFERENCES `product` (`product_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of vote
-- ----------------------------
INSERT INTO `vote` VALUES (1, 6, 1, 1);
INSERT INTO `vote` VALUES (2, 5, 1, 4);
INSERT INTO `vote` VALUES (3, 4, 1, 11);

-- ----------------------------
-- Table structure for vote_comp_id
-- ----------------------------
DROP TABLE IF EXISTS `vote_comp_id`;
CREATE TABLE `vote_comp_id`  (
  `company_company_id` int NULL DEFAULT NULL,
  `vote_id` int NOT NULL,
  PRIMARY KEY (`vote_id`) USING BTREE,
  INDEX `FKgsxc5tf0qh7gf40jposwqqeco`(`company_company_id`) USING BTREE,
  CONSTRAINT `FKgsxc5tf0qh7gf40jposwqqeco` FOREIGN KEY (`company_company_id`) REFERENCES `company` (`company_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FKs1dqvvllbey98lraoxw93k6eg` FOREIGN KEY (`vote_id`) REFERENCES `vote` (`vote_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of vote_comp_id
-- ----------------------------
INSERT INTO `vote_comp_id` VALUES (1, 1);
INSERT INTO `vote_comp_id` VALUES (1, 2);
INSERT INTO `vote_comp_id` VALUES (1, 3);

SET FOREIGN_KEY_CHECKS = 1;
