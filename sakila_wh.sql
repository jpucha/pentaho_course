/*
 Navicat MySQL Data Transfer

 Source Server         : myconn
 Source Server Type    : MySQL
 Source Server Version : 50719
 Source Host           : localhost:3306
 Source Schema         : sakila_wh

 Target Server Type    : MySQL
 Target Server Version : 50719
 File Encoding         : 65001

 Date: 12/09/2018 16:37:04
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for dim_customer
-- ----------------------------
DROP TABLE IF EXISTS `dim_customer`;
CREATE TABLE `dim_customer`  (
  `customer_id` int(11) NULL DEFAULT NULL,
  `store_id` int(11) NULL DEFAULT NULL,
  `first_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `last_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `email` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `active` int(11) NULL DEFAULT NULL,
  `address_id` int(11) NULL DEFAULT NULL,
  `address` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `city_id` int(11) NULL DEFAULT NULL,
  `city` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `country_id` int(11) NULL DEFAULT NULL,
  `country` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `active_desc` varchar(3) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_date` datetime(0) NULL DEFAULT NULL,
  `last_update` datetime(0) NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for dim_customer_scd
-- ----------------------------
DROP TABLE IF EXISTS `dim_customer_scd`;
CREATE TABLE `dim_customer_scd`  (
  `customer_seq` int(11) NULL DEFAULT NULL,
  `customer_version` int(11) NULL DEFAULT NULL,
  `date_from` datetime(0) NULL DEFAULT NULL,
  `date_to` datetime(0) NULL DEFAULT NULL,
  `customer_id` int(11) NULL DEFAULT NULL,
  `store_id` int(11) NULL DEFAULT NULL,
  `first_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `last_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `email` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `active` int(11) NULL DEFAULT NULL,
  `address_id` int(11) NULL DEFAULT NULL,
  `address` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `city_id` int(11) NULL DEFAULT NULL,
  `city` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `country_id` int(11) NULL DEFAULT NULL,
  `country` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `active_desc` varchar(3) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_date` datetime(0) NULL DEFAULT NULL,
  `last_update` datetime(0) NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for dim_date
-- ----------------------------
DROP TABLE IF EXISTS `dim_date`;
CREATE TABLE `dim_date`  (
  `date_key` bigint(20) NOT NULL DEFAULT 0,
  `datein` date NULL DEFAULT NULL,
  `years` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `days` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `months` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`date_key`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for dim_film
-- ----------------------------
DROP TABLE IF EXISTS `dim_film`;
CREATE TABLE `dim_film`  (
  `film_id` int(11) NULL DEFAULT NULL,
  `title` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `description` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `release_year` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `language_id` int(11) NULL DEFAULT NULL,
  `lang_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `original_language_id` int(11) NULL DEFAULT NULL,
  `rental_duration` int(11) NULL DEFAULT NULL,
  `rental_rate` double NULL DEFAULT NULL,
  `length` int(11) NULL DEFAULT NULL,
  `length_desc` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `replacement_cost` double NULL DEFAULT NULL,
  `rating` varchar(5) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `category_id` int(11) NULL DEFAULT NULL,
  `category_desc` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `special_features` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `has trailers` varchar(3) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `has Commentaries` varchar(3) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `has behind the scenes` varchar(3) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `has deleted Scenes` varchar(3) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `last_update` datetime(0) NULL DEFAULT NULL,
  INDEX `film_index`(`film_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for dim_staff
-- ----------------------------
DROP TABLE IF EXISTS `dim_staff`;
CREATE TABLE `dim_staff`  (
  `staff_id` int(11) NULL DEFAULT NULL,
  `first_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `last_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `email` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `active` int(11) NULL DEFAULT NULL,
  `last_update` datetime(0) NULL DEFAULT NULL,
  `active_desc` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for dim_store
-- ----------------------------
DROP TABLE IF EXISTS `dim_store`;
CREATE TABLE `dim_store`  (
  `store_id` int(11) NULL DEFAULT NULL,
  `manager_staff_id` int(11) NULL DEFAULT NULL,
  `staff_first_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `staff_last_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `address_id` int(11) NULL DEFAULT NULL,
  `address` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `city_id` int(11) NULL DEFAULT NULL,
  `city` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `country_id` int(11) NULL DEFAULT NULL,
  `country` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `last_update` datetime(0) NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for dim_time
-- ----------------------------
DROP TABLE IF EXISTS `dim_time`;
CREATE TABLE `dim_time`  (
  `time_seq` int(11) NULL DEFAULT NULL,
  `time_desc` varchar(5) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `hours_id` int(2) NULL DEFAULT NULL,
  `minutes_id` int(2) NULL DEFAULT NULL,
  `hour_type` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for fact_flights
-- ----------------------------
DROP TABLE IF EXISTS `fact_flights`;
CREATE TABLE `fact_flights`  (
  `Years` tinytext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `Months` tinytext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `DayofMonth` tinytext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `DayOfWeek` tinytext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `DepTime` tinytext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `CRSDepTime` tinytext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `ArrTime` tinytext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `CRSArrTime` tinytext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `UniqueCarrier` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `FlightNum` tinytext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `valuename` int(11) NULL DEFAULT NULL,
  INDEX `idx_UniqueCarrier`(`UniqueCarrier`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for fact_rental
-- ----------------------------
DROP TABLE IF EXISTS `fact_rental`;
CREATE TABLE `fact_rental`  (
  `rental_id` int(11) NULL DEFAULT NULL,
  `customer_id` int(11) NULL DEFAULT NULL,
  `rental_date` datetime(0) NULL DEFAULT NULL,
  `date_key` int(10) NULL DEFAULT NULL,
  `time_seq` int(11) NULL DEFAULT NULL,
  `inventory_id` int(11) NULL DEFAULT NULL,
  `return_date` datetime(0) NULL DEFAULT NULL,
  `last_update` datetime(0) NULL DEFAULT NULL,
  `payment_id` int(11) NULL DEFAULT NULL,
  `amount` double NULL DEFAULT NULL,
  `payment_date` datetime(0) NULL DEFAULT NULL,
  `payment_last_update` datetime(0) NULL DEFAULT NULL,
  `film_id` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `store_id` int(11) NULL DEFAULT NULL,
  `staff_id_rental` int(11) NULL DEFAULT NULL,
  `staff_id_payment` int(11) NULL DEFAULT NULL,
  `rental_hours` double NULL DEFAULT NULL,
  `is_return` int(11) NULL DEFAULT NULL,
  INDEX `idx_fact_rental_lookup`(`rental_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

SET FOREIGN_KEY_CHECKS = 1;
