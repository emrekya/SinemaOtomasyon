/*
 Navicat Premium Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 100128
 Source Host           : localhost:3306
 Source Schema         : sinemadb

 Target Server Type    : MySQL
 Target Server Version : 100128
 File Encoding         : 65001

 Date: 23/01/2018 15:50:19
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for actor
-- ----------------------------
DROP TABLE IF EXISTS `actor`;
CREATE TABLE `actor`  (
  `id_actor` int(11) NOT NULL AUTO_INCREMENT,
  `actor_isim` varchar(100) CHARACTER SET utf8 COLLATE utf8_turkish_ci NULL DEFAULT NULL,
  `actor_soyisim` varchar(100) CHARACTER SET utf8 COLLATE utf8_turkish_ci NULL DEFAULT NULL,
  `actor_cinsiyet` enum('erkek','kadın') CHARACTER SET utf8 COLLATE utf8_turkish_ci NULL DEFAULT NULL,
  `actor_dogum_tarih` date NULL DEFAULT NULL,
  PRIMARY KEY (`id_actor`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_turkish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of actor
-- ----------------------------
INSERT INTO `actor` VALUES (2, 'cubneyt', 'sdadsada', 'kadın', '2018-01-03');
INSERT INTO `actor` VALUES (4, 'memeh', 'nedet', 'kadın', '2018-01-10');

-- ----------------------------
-- Table structure for film
-- ----------------------------
DROP TABLE IF EXISTS `film`;
CREATE TABLE `film`  (
  `id_film` int(11) NOT NULL AUTO_INCREMENT,
  `film_isim` varchar(255) CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL,
  `film_tur` set('gerilim','korku','macera','dram','komedi','romantik') CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL DEFAULT '',
  `film_mensei` enum('yerli','yabanci') CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL,
  `film_resim_url` varchar(255) CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL,
  `film_aciklama` text CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL,
  `film_cikis_tarih` date NOT NULL,
  `film_sure` int(11) NOT NULL,
  `film_dil` varchar(255) CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL,
  PRIMARY KEY (`id_film`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_turkish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of film
-- ----------------------------
INSERT INTO `film` VALUES (3, 'asdasdsa', 'korku', 'yabanci', 'sadsadsadsa.jpg', 'sadsadsadsadsad', '0000-00-00', 0, '');
INSERT INTO `film` VALUES (4, 'hhhhh', 'korku,komedi', 'yerli', 'hhhhhh.jpg', 'hhhhhh', '0000-00-00', 0, '');
INSERT INTO `film` VALUES (5, 'kıs', 'macera', 'yerli', 'kkkk.jpg', 'saddsadsadsad', '0000-00-00', 0, '');

-- ----------------------------
-- Table structure for film_actor
-- ----------------------------
DROP TABLE IF EXISTS `film_actor`;
CREATE TABLE `film_actor`  (
  `id_actor` int(11) NOT NULL,
  `id_film` int(11) NOT NULL,
  INDEX `id_actor`(`id_actor`) USING BTREE,
  INDEX `id_film`(`id_film`) USING BTREE,
  CONSTRAINT `id_actor` FOREIGN KEY (`id_actor`) REFERENCES `actor` (`id_actor`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `id_film` FOREIGN KEY (`id_film`) REFERENCES `film` (`id_film`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_turkish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of film_actor
-- ----------------------------
INSERT INTO `film_actor` VALUES (4, 5);

-- ----------------------------
-- Table structure for film_salon
-- ----------------------------
DROP TABLE IF EXISTS `film_salon`;
CREATE TABLE `film_salon`  (
  `id_film` int(11) NOT NULL,
  `id_salon` int(11) NOT NULL,
  INDEX `id_salon`(`id_salon`) USING BTREE,
  INDEX `id_filmi`(`id_film`) USING BTREE,
  CONSTRAINT `id_salon` FOREIGN KEY (`id_salon`) REFERENCES `salon` (`id_salon`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `id_filmi` FOREIGN KEY (`id_film`) REFERENCES `film` (`id_film`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_turkish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for salon
-- ----------------------------
DROP TABLE IF EXISTS `salon`;
CREATE TABLE `salon`  (
  `id_salon` int(11) NOT NULL AUTO_INCREMENT,
  `salon_isim` varchar(20) CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL,
  `salon_seans` enum('11','13','16','19','22') CHARACTER SET utf8 COLLATE utf8_turkish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id_salon`) USING BTREE,
  UNIQUE INDEX `salon_seans`(`salon_isim`, `salon_seans`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8 COLLATE = utf8_turkish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of salon
-- ----------------------------
INSERT INTO `salon` VALUES (1, '1', '13');
INSERT INTO `salon` VALUES (2, '1', '16');
INSERT INTO `salon` VALUES (7, '1', '19');
INSERT INTO `salon` VALUES (4, '1', '22');
INSERT INTO `salon` VALUES (11, '2', '11');
INSERT INTO `salon` VALUES (9, '2', '13');
INSERT INTO `salon` VALUES (5, '2', '19');

SET FOREIGN_KEY_CHECKS = 1;
