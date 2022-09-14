-- MySQL dump 10.13  Distrib 5.6.50, for Linux (x86_64)
--
-- Host: localhost    Database: wsho_fk08_cn
-- ------------------------------------------------------
-- Server version	5.6.50-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `swd_acategory`
--

DROP TABLE IF EXISTS `swd_acategory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `swd_acategory` (
  `cate_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cate_name` varchar(100) NOT NULL DEFAULT '',
  `parent_id` int(10) unsigned DEFAULT '0',
  `store_id` int(10) DEFAULT '0',
  `sort_order` tinyint(3) unsigned DEFAULT '255',
  `if_show` int(1) DEFAULT '1',
  PRIMARY KEY (`cate_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `swd_acategory`
--

LOCK TABLES `swd_acategory` WRITE;
/*!40000 ALTER TABLE `swd_acategory` DISABLE KEYS */;
/*!40000 ALTER TABLE `swd_acategory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `swd_address`
--

DROP TABLE IF EXISTS `swd_address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `swd_address` (
  `addr_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `userid` int(10) unsigned NOT NULL DEFAULT '0',
  `consignee` varchar(60) NOT NULL DEFAULT '',
  `region_id` int(10) unsigned NOT NULL DEFAULT '0',
  `region_name` varchar(255) NOT NULL DEFAULT '',
  `address` varchar(255) NOT NULL DEFAULT '',
  `zipcode` varchar(20) DEFAULT '',
  `phone_tel` varchar(60) DEFAULT '',
  `phone_mob` varchar(20) DEFAULT '',
  `defaddr` tinyint(3) DEFAULT '0',
  PRIMARY KEY (`addr_id`),
  KEY `userid` (`userid`),
  KEY `region_id` (`region_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `swd_address`
--

LOCK TABLES `swd_address` WRITE;
/*!40000 ALTER TABLE `swd_address` DISABLE KEYS */;
/*!40000 ALTER TABLE `swd_address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `swd_appbuylog`
--

DROP TABLE IF EXISTS `swd_appbuylog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `swd_appbuylog` (
  `bid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `orderId` varchar(20) NOT NULL,
  `appid` varchar(20) NOT NULL,
  `userid` int(10) unsigned NOT NULL DEFAULT '0',
  `period` int(11) DEFAULT '0',
  `amount` decimal(10,2) DEFAULT '0.00',
  `status` tinyint(3) DEFAULT '0',
  `add_time` int(11) DEFAULT NULL,
  `pay_time` int(11) DEFAULT NULL,
  `end_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`bid`),
  KEY `bid` (`bid`),
  KEY `orderId` (`orderId`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `swd_appbuylog`
--

LOCK TABLES `swd_appbuylog` WRITE;
/*!40000 ALTER TABLE `swd_appbuylog` DISABLE KEYS */;
/*!40000 ALTER TABLE `swd_appbuylog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `swd_appmarket`
--

DROP TABLE IF EXISTS `swd_appmarket`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `swd_appmarket` (
  `aid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `appid` varchar(20) NOT NULL,
  `title` varchar(100) DEFAULT '',
  `summary` varchar(255) DEFAULT NULL,
  `category` int(11) DEFAULT '0',
  `description` text,
  `logo` varchar(200) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT '0.00',
  `sales` int(11) DEFAULT '0',
  `views` int(11) DEFAULT '0',
  `status` tinyint(1) DEFAULT '0',
  `add_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`aid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `swd_appmarket`
--

LOCK TABLES `swd_appmarket` WRITE;
/*!40000 ALTER TABLE `swd_appmarket` DISABLE KEYS */;
/*!40000 ALTER TABLE `swd_appmarket` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `swd_apprenewal`
--

DROP TABLE IF EXISTS `swd_apprenewal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `swd_apprenewal` (
  `rid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `appid` varchar(20) NOT NULL,
  `userid` int(10) unsigned NOT NULL DEFAULT '0',
  `add_time` int(11) unsigned DEFAULT NULL,
  `expired` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`rid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `swd_apprenewal`
--

LOCK TABLES `swd_apprenewal` WRITE;
/*!40000 ALTER TABLE `swd_apprenewal` DISABLE KEYS */;
/*!40000 ALTER TABLE `swd_apprenewal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `swd_article`
--

DROP TABLE IF EXISTS `swd_article`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `swd_article` (
  `article_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) DEFAULT '',
  `cate_id` int(10) DEFAULT '0',
  `store_id` int(10) unsigned DEFAULT '0',
  `link` varchar(255) DEFAULT NULL,
  `description` text,
  `sort_order` tinyint(3) unsigned DEFAULT '255',
  `if_show` tinyint(3) unsigned DEFAULT '1',
  `add_time` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`article_id`),
  KEY `cate_id` (`cate_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `swd_article`
--

LOCK TABLES `swd_article` WRITE;
/*!40000 ALTER TABLE `swd_article` DISABLE KEYS */;
/*!40000 ALTER TABLE `swd_article` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `swd_bank`
--

DROP TABLE IF EXISTS `swd_bank`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `swd_bank` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `userid` int(10) unsigned NOT NULL DEFAULT '0',
  `bank` varchar(100) NOT NULL,
  `code` varchar(20) NOT NULL,
  `name` varchar(100) NOT NULL,
  `account` varchar(50) NOT NULL,
  `area` varchar(100) DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `swd_bank`
--

LOCK TABLES `swd_bank` WRITE;
/*!40000 ALTER TABLE `swd_bank` DISABLE KEYS */;
/*!40000 ALTER TABLE `swd_bank` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `swd_bind`
--

DROP TABLE IF EXISTS `swd_bind`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `swd_bind` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `unionid` varchar(255) NOT NULL,
  `openid` varchar(255) DEFAULT '',
  `userid` int(10) unsigned NOT NULL DEFAULT '0',
  `code` varchar(50) DEFAULT '',
  `token` varchar(255) DEFAULT '',
  `nickname` varchar(60) DEFAULT '',
  `enabled` int(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `swd_bind`
--

LOCK TABLES `swd_bind` WRITE;
/*!40000 ALTER TABLE `swd_bind` DISABLE KEYS */;
/*!40000 ALTER TABLE `swd_bind` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `swd_brand`
--

DROP TABLE IF EXISTS `swd_brand`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `swd_brand` (
  `brand_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `brand_name` varchar(100) DEFAULT '',
  `brand_logo` varchar(255) DEFAULT NULL,
  `brand_image` varchar(255) DEFAULT NULL,
  `cate_id` int(11) DEFAULT '0',
  `sort_order` tinyint(3) unsigned DEFAULT '255',
  `recommended` tinyint(3) unsigned DEFAULT '0',
  `store_id` int(10) unsigned DEFAULT '0',
  `if_show` tinyint(2) unsigned DEFAULT '1',
  `tag` varchar(100) DEFAULT '',
  `letter` varchar(10) DEFAULT '',
  `description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`brand_id`)
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `swd_brand`
--

LOCK TABLES `swd_brand` WRITE;
/*!40000 ALTER TABLE `swd_brand` DISABLE KEYS */;
INSERT INTO `swd_brand` VALUES (1,'fiyta','data/files/mall/brand/15.jpg','',0,255,1,0,1,'女装','F',''),(2,'珂兰钻石','data/files/mall/brand/16.jpg','',0,255,1,0,1,'女装','K',''),(3,'Zippo','data/files/mall/brand/17.png','',0,255,1,0,1,'女装','Z',''),(4,'kiplinq','data/files/mall/brand/18.png','',0,255,1,0,1,'女装','K',''),(5,'ochirly','data/files/mall/brand/19.jpg','',0,255,1,0,1,'女装','O',''),(6,'劲霸','data/files/mall/brand/20.png','',0,255,1,0,1,'女装','J',''),(7,'古今','data/files/mall/brand/21.jpg','',0,255,1,0,1,'女装','G',''),(8,'百丽','data/files/mall/brand/22.jpg','',0,255,1,0,1,'女装','B',''),(9,'杰克','data/files/mall/brand/23.jpg','',0,255,1,0,1,'男装','J',''),(10,'COACH','data/files/mall/brand/24.jpg','',0,255,1,0,1,'男装','C',''),(11,'海尔','data/files/mall/brand/25.jpg','',0,255,1,0,1,'','H',''),(12,'乐视','data/files/mall/brand/26.jpg','',0,255,1,0,1,'','L',''),(13,'康佳','data/files/mall/brand/27.jpg','',0,255,1,0,1,'','K',''),(14,'三星','data/files/mall/brand/28.jpg','',0,255,1,0,1,'','S',''),(15,'SONY','data/files/mall/brand/29.jpg','',0,255,1,0,1,'','S',''),(16,'东芝','data/files/mall/brand/30.jpg','',0,255,1,0,1,'','D',''),(17,'小米','data/files/mall/brand/31.jpg','data/files/mall/brand/17/brand_image.jpg',0,4,1,0,1,'','X','Xiaomi/小米 小米电视4A 43英寸 青春版高清wifi智能电视40 50'),(18,'飞利浦','data/files/mall/brand/32.jpg','data/files/mall/brand/18/brand_image.png',0,3,1,0,1,'','F',''),(19,'海信','data/files/mall/brand/33.jpg','data/files/mall/brand/19/brand_image.jpg',0,2,1,0,1,'','H','海信电视国际知名品牌'),(20,'美的','data/files/mall/brand/34.jpg','data/files/mall/brand/20/brand_image.jpg',0,1,1,0,1,'','M','美的全球知名家电品牌');
/*!40000 ALTER TABLE `swd_brand` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `swd_cart`
--

DROP TABLE IF EXISTS `swd_cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `swd_cart` (
  `rec_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `userid` int(10) unsigned NOT NULL DEFAULT '0',
  `store_id` int(10) unsigned NOT NULL DEFAULT '0',
  `goods_id` int(10) unsigned NOT NULL DEFAULT '0',
  `goods_name` varchar(255) DEFAULT '',
  `spec_id` int(10) unsigned DEFAULT '0',
  `specification` varchar(255) DEFAULT NULL,
  `price` decimal(10,2) unsigned DEFAULT '0.00',
  `quantity` int(10) unsigned DEFAULT '1',
  `goods_image` varchar(255) DEFAULT NULL,
  `selected` tinyint(1) unsigned DEFAULT '0',
  `product_id` varchar(32) DEFAULT '',
  `invalid` int(11) DEFAULT '0',
  PRIMARY KEY (`rec_id`),
  KEY `userid` (`userid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `swd_cart`
--

LOCK TABLES `swd_cart` WRITE;
/*!40000 ALTER TABLE `swd_cart` DISABLE KEYS */;
/*!40000 ALTER TABLE `swd_cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `swd_cashcard`
--

DROP TABLE IF EXISTS `swd_cashcard`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `swd_cashcard` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(30) DEFAULT NULL,
  `cardNo` varchar(30) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `money` decimal(10,2) DEFAULT NULL,
  `useId` int(11) unsigned DEFAULT '0',
  `printed` int(1) unsigned DEFAULT '0',
  `add_time` int(11) DEFAULT NULL,
  `active_time` int(11) DEFAULT NULL,
  `expire_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `swd_cashcard`
--

LOCK TABLES `swd_cashcard` WRITE;
/*!40000 ALTER TABLE `swd_cashcard` DISABLE KEYS */;
/*!40000 ALTER TABLE `swd_cashcard` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `swd_cate_pvs`
--

DROP TABLE IF EXISTS `swd_cate_pvs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `swd_cate_pvs` (
  `cate_id` int(11) NOT NULL,
  `pvs` text,
  PRIMARY KEY (`cate_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `swd_cate_pvs`
--

LOCK TABLES `swd_cate_pvs` WRITE;
/*!40000 ALTER TABLE `swd_cate_pvs` DISABLE KEYS */;
/*!40000 ALTER TABLE `swd_cate_pvs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `swd_category_goods`
--

DROP TABLE IF EXISTS `swd_category_goods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `swd_category_goods` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `cate_id` int(10) unsigned DEFAULT '0',
  `goods_id` int(10) unsigned DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `cate_id` (`cate_id`),
  KEY `goods_id` (`goods_id`)
) ENGINE=MyISAM AUTO_INCREMENT=32 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `swd_category_goods`
--

LOCK TABLES `swd_category_goods` WRITE;
/*!40000 ALTER TABLE `swd_category_goods` DISABLE KEYS */;
INSERT INTO `swd_category_goods` VALUES (1,2555,9),(2,2555,12),(3,2555,13),(4,2555,14),(5,2555,15),(6,2555,16),(7,2555,17),(8,2555,18),(9,2555,19),(10,2555,20),(11,2556,19),(12,2556,20),(13,2557,9),(14,2557,12),(15,2557,13),(16,2557,14),(17,2557,15),(18,2557,16),(19,2557,17),(20,2557,18),(21,2558,1),(22,2558,2),(23,2558,4),(24,2558,5),(25,2558,6),(26,2558,7),(27,2558,10),(28,2558,11),(29,2559,7),(30,2559,8),(31,2560,10);
/*!40000 ALTER TABLE `swd_category_goods` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `swd_category_store`
--

DROP TABLE IF EXISTS `swd_category_store`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `swd_category_store` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `cate_id` int(10) unsigned DEFAULT '0',
  `store_id` int(10) unsigned DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `cate_id` (`cate_id`),
  KEY `store_id` (`store_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `swd_category_store`
--

LOCK TABLES `swd_category_store` WRITE;
/*!40000 ALTER TABLE `swd_category_store` DISABLE KEYS */;
INSERT INTO `swd_category_store` VALUES (1,1,2);
/*!40000 ALTER TABLE `swd_category_store` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `swd_channel`
--

DROP TABLE IF EXISTS `swd_channel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `swd_channel` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `cid` varchar(20) DEFAULT '',
  `title` varchar(50) DEFAULT '',
  `style` int(11) DEFAULT '1',
  `cate_id` int(11) DEFAULT '0',
  `status` int(11) DEFAULT '1',
  `add_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `swd_channel`
--

LOCK TABLES `swd_channel` WRITE;
/*!40000 ALTER TABLE `swd_channel` DISABLE KEYS */;
INSERT INTO `swd_channel` VALUES (1,'154318705971','品牌女装',1,0,1,1617045952),(2,'154318852528','电器城',2,0,1,1617045962);
/*!40000 ALTER TABLE `swd_channel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `swd_cod`
--

DROP TABLE IF EXISTS `swd_cod`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `swd_cod` (
  `store_id` int(10) NOT NULL,
  `regions` text,
  `status` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `swd_cod`
--

LOCK TABLES `swd_cod` WRITE;
/*!40000 ALTER TABLE `swd_cod` DISABLE KEYS */;
/*!40000 ALTER TABLE `swd_cod` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `swd_collect`
--

DROP TABLE IF EXISTS `swd_collect`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `swd_collect` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `userid` int(10) unsigned NOT NULL DEFAULT '0',
  `type` varchar(10) DEFAULT 'goods',
  `item_id` int(10) unsigned DEFAULT '0',
  `keyword` varchar(60) DEFAULT NULL,
  `add_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `userid` (`userid`),
  KEY `item_id` (`item_id`),
  KEY `type` (`type`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `swd_collect`
--

LOCK TABLES `swd_collect` WRITE;
/*!40000 ALTER TABLE `swd_collect` DISABLE KEYS */;
/*!40000 ALTER TABLE `swd_collect` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `swd_coupon`
--

DROP TABLE IF EXISTS `swd_coupon`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `swd_coupon` (
  `coupon_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `store_id` int(10) unsigned DEFAULT '0',
  `coupon_name` varchar(100) DEFAULT '',
  `coupon_value` decimal(10,2) unsigned DEFAULT '0.00',
  `use_times` int(10) unsigned DEFAULT '0',
  `start_time` int(10) unsigned DEFAULT NULL,
  `end_time` int(10) unsigned DEFAULT NULL,
  `min_amount` decimal(10,2) unsigned DEFAULT '0.00',
  `available` int(11) DEFAULT '1',
  `image` varchar(255) DEFAULT NULL,
  `total` int(11) DEFAULT '0',
  `surplus` int(11) DEFAULT '0',
  `clickreceive` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`coupon_id`),
  KEY `store_id` (`store_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `swd_coupon`
--

LOCK TABLES `swd_coupon` WRITE;
/*!40000 ALTER TABLE `swd_coupon` DISABLE KEYS */;
INSERT INTO `swd_coupon` VALUES (1,2,'新春大促',10.00,1,1617004800,1640966399,100.00,1,NULL,1000,1000,1),(2,2,'年中大促',5.00,1,1617004800,1640966399,50.00,1,NULL,999,999,1),(3,2,'618活动',18.00,1,1617004800,1640966399,88.00,1,NULL,999,999,1);
/*!40000 ALTER TABLE `swd_coupon` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `swd_coupon_sn`
--

DROP TABLE IF EXISTS `swd_coupon_sn`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `swd_coupon_sn` (
  `userid` int(10) unsigned NOT NULL DEFAULT '0',
  `coupon_sn` varchar(20) NOT NULL DEFAULT '',
  `coupon_id` int(10) unsigned NOT NULL DEFAULT '0',
  `remain_times` int(10) unsigned DEFAULT '0',
  PRIMARY KEY (`coupon_sn`),
  KEY `coupon_id` (`coupon_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `swd_coupon_sn`
--

LOCK TABLES `swd_coupon_sn` WRITE;
/*!40000 ALTER TABLE `swd_coupon_sn` DISABLE KEYS */;
/*!40000 ALTER TABLE `swd_coupon_sn` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `swd_delivery_template`
--

DROP TABLE IF EXISTS `swd_delivery_template`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `swd_delivery_template` (
  `template_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT '',
  `store_id` int(10) DEFAULT '0',
  `types` text,
  `dests` text,
  `start_standards` text,
  `start_fees` text,
  `add_standards` text,
  `add_fees` text,
  `created` int(11) DEFAULT NULL,
  PRIMARY KEY (`template_id`),
  KEY `store_id` (`store_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `swd_delivery_template`
--

LOCK TABLES `swd_delivery_template` WRITE;
/*!40000 ALTER TABLE `swd_delivery_template` DISABLE KEYS */;
INSERT INTO `swd_delivery_template` VALUES (1,'默认运费',2,'express;ems;post','1;1;1','1;1;1','0;0;0','1;1;1','0;0;0',1542757210);
/*!40000 ALTER TABLE `swd_delivery_template` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `swd_deposit_account`
--

DROP TABLE IF EXISTS `swd_deposit_account`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `swd_deposit_account` (
  `account_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `userid` int(10) unsigned NOT NULL DEFAULT '0',
  `account` varchar(100) NOT NULL,
  `password` varchar(255) DEFAULT '',
  `money` decimal(10,2) DEFAULT '0.00',
  `frozen` decimal(10,2) DEFAULT '0.00',
  `nodrawal` decimal(10,2) DEFAULT '0.00',
  `real_name` varchar(30) DEFAULT NULL,
  `pay_status` varchar(3) DEFAULT 'off',
  `add_time` int(11) DEFAULT NULL,
  `last_update` int(11) DEFAULT NULL,
  PRIMARY KEY (`account_id`),
  KEY `userid` (`userid`),
  KEY `account` (`account`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `swd_deposit_account`
--

LOCK TABLES `swd_deposit_account` WRITE;
/*!40000 ALTER TABLE `swd_deposit_account` DISABLE KEYS */;
/*!40000 ALTER TABLE `swd_deposit_account` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `swd_deposit_recharge`
--

DROP TABLE IF EXISTS `swd_deposit_recharge`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `swd_deposit_recharge` (
  `recharge_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `orderId` varchar(30) NOT NULL,
  `userid` int(10) unsigned NOT NULL DEFAULT '0',
  `examine` varchar(100) DEFAULT '',
  `is_online` int(1) DEFAULT '1',
  PRIMARY KEY (`recharge_id`),
  KEY `orderId` (`orderId`),
  KEY `userid` (`userid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `swd_deposit_recharge`
--

LOCK TABLES `swd_deposit_recharge` WRITE;
/*!40000 ALTER TABLE `swd_deposit_recharge` DISABLE KEYS */;
/*!40000 ALTER TABLE `swd_deposit_recharge` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `swd_deposit_record`
--

DROP TABLE IF EXISTS `swd_deposit_record`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `swd_deposit_record` (
  `record_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `tradeNo` varchar(30) NOT NULL,
  `userid` int(10) unsigned NOT NULL DEFAULT '0',
  `amount` decimal(10,2) DEFAULT '0.00' COMMENT '收支金额',
  `balance` decimal(10,2) DEFAULT '0.00' COMMENT '账户余额',
  `flow` varchar(10) DEFAULT 'outlay' COMMENT '资金方向',
  `tradeType` varchar(20) DEFAULT 'PAY' COMMENT '收支类型',
  `name` varchar(100) DEFAULT '' COMMENT '名称',
  `remark` varchar(255) DEFAULT '' COMMENT '备注',
  PRIMARY KEY (`record_id`),
  KEY `tradeNo` (`tradeNo`),
  KEY `userid` (`userid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `swd_deposit_record`
--

LOCK TABLES `swd_deposit_record` WRITE;
/*!40000 ALTER TABLE `swd_deposit_record` DISABLE KEYS */;
/*!40000 ALTER TABLE `swd_deposit_record` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `swd_deposit_setting`
--

DROP TABLE IF EXISTS `swd_deposit_setting`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `swd_deposit_setting` (
  `setting_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `userid` int(10) unsigned NOT NULL DEFAULT '0',
  `trade_rate` decimal(10,3) DEFAULT '0.000' COMMENT '交易手续费',
  `transfer_rate` decimal(10,3) DEFAULT '0.000' COMMENT '转账手续费',
  `regive_rate` decimal(10,3) DEFAULT '0.000' COMMENT '充值赠送金额比率',
  `guider_rate` decimal(10,3) DEFAULT '0.000' COMMENT '团长返佣比率',
  PRIMARY KEY (`setting_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `swd_deposit_setting`
--

LOCK TABLES `swd_deposit_setting` WRITE;
/*!40000 ALTER TABLE `swd_deposit_setting` DISABLE KEYS */;
/*!40000 ALTER TABLE `swd_deposit_setting` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `swd_deposit_trade`
--

DROP TABLE IF EXISTS `swd_deposit_trade`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `swd_deposit_trade` (
  `trade_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `tradeNo` varchar(32) NOT NULL COMMENT '支付交易号',
  `outTradeNo` varchar(32) DEFAULT '' COMMENT '第三方支付接口的交易号',
  `payTradeNo` varchar(32) DEFAULT '' COMMENT '第三方支付接口的商户订单号',
  `bizOrderId` varchar(32) DEFAULT '' COMMENT '商户订单号',
  `bizIdentity` varchar(20) DEFAULT '' COMMENT '商户交易类型识别号',
  `buyer_id` int(11) NOT NULL COMMENT '交易买家',
  `seller_id` int(11) NOT NULL COMMENT '交易卖家',
  `amount` decimal(10,2) DEFAULT '0.00' COMMENT '交易金额',
  `status` varchar(30) DEFAULT '',
  `payment_code` varchar(20) DEFAULT NULL COMMENT '支付方式代号',
  `pay_alter` int(11) DEFAULT '0' COMMENT '支付方式变更标记',
  `tradeCat` varchar(20) DEFAULT NULL COMMENT '交易分类',
  `payType` varchar(20) DEFAULT NULL COMMENT '支付类型(担保即时)',
  `flow` varchar(10) DEFAULT 'outlay' COMMENT '资金流向',
  `payTerminal` varchar(10) DEFAULT '' COMMENT '支付终端',
  `title` varchar(100) NOT NULL DEFAULT '' COMMENT '交易标题',
  `buyer_remark` varchar(255) DEFAULT '' COMMENT '买家备注',
  `seller_remark` varchar(255) DEFAULT '' COMMENT '卖家备注',
  `add_time` int(11) DEFAULT NULL,
  `pay_time` int(11) DEFAULT NULL,
  `end_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`trade_id`),
  KEY `tradeNo` (`tradeNo`),
  KEY `bizOrderId` (`bizOrderId`),
  KEY `buyer_id` (`buyer_id`),
  KEY `seller_id` (`seller_id`),
  KEY `payTradeNo` (`payTradeNo`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `swd_deposit_trade`
--

LOCK TABLES `swd_deposit_trade` WRITE;
/*!40000 ALTER TABLE `swd_deposit_trade` DISABLE KEYS */;
/*!40000 ALTER TABLE `swd_deposit_trade` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `swd_deposit_withdraw`
--

DROP TABLE IF EXISTS `swd_deposit_withdraw`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `swd_deposit_withdraw` (
  `draw_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `orderId` varchar(30) NOT NULL,
  `userid` int(10) unsigned NOT NULL DEFAULT '0',
  `drawtype` varchar(20) NOT NULL DEFAULT 'bank',
  `account` varchar(50) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `bank` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`draw_id`),
  KEY `orderId` (`orderId`),
  KEY `userid` (`userid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `swd_deposit_withdraw`
--

LOCK TABLES `swd_deposit_withdraw` WRITE;
/*!40000 ALTER TABLE `swd_deposit_withdraw` DISABLE KEYS */;
/*!40000 ALTER TABLE `swd_deposit_withdraw` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `swd_distribute`
--

DROP TABLE IF EXISTS `swd_distribute`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `swd_distribute` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `userid` int(10) unsigned NOT NULL DEFAULT '0',
  `amount` decimal(10,2) DEFAULT '0.00',
  `layer1` decimal(10,2) DEFAULT '0.00',
  `layer2` decimal(10,2) DEFAULT '0.00',
  `layer3` decimal(10,2) DEFAULT '0.00',
  `goods` decimal(10,2) DEFAULT '0.00',
  `store` decimal(10,2) DEFAULT '0.00',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `swd_distribute`
--

LOCK TABLES `swd_distribute` WRITE;
/*!40000 ALTER TABLE `swd_distribute` DISABLE KEYS */;
/*!40000 ALTER TABLE `swd_distribute` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `swd_distribute_items`
--

DROP TABLE IF EXISTS `swd_distribute_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `swd_distribute_items` (
  `diid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `userid` int(10) unsigned NOT NULL DEFAULT '0',
  `item_id` int(11) NOT NULL,
  `type` varchar(20) DEFAULT '',
  `created` int(11) DEFAULT NULL,
  PRIMARY KEY (`diid`),
  KEY `userid` (`userid`),
  KEY `item_id` (`item_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `swd_distribute_items`
--

LOCK TABLES `swd_distribute_items` WRITE;
/*!40000 ALTER TABLE `swd_distribute_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `swd_distribute_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `swd_distribute_merchant`
--

DROP TABLE IF EXISTS `swd_distribute_merchant`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `swd_distribute_merchant` (
  `dmid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `userid` int(10) unsigned NOT NULL DEFAULT '0',
  `username` varchar(60) DEFAULT '',
  `parent_id` int(11) DEFAULT '0',
  `phone_mob` varchar(20) NOT NULL DEFAULT '',
  `name` varchar(100) NOT NULL DEFAULT '',
  `logo` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT '0',
  `created` int(11) DEFAULT NULL,
  PRIMARY KEY (`dmid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `swd_distribute_merchant`
--

LOCK TABLES `swd_distribute_merchant` WRITE;
/*!40000 ALTER TABLE `swd_distribute_merchant` DISABLE KEYS */;
/*!40000 ALTER TABLE `swd_distribute_merchant` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `swd_distribute_order`
--

DROP TABLE IF EXISTS `swd_distribute_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `swd_distribute_order` (
  `doid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `rec_id` int(11) NOT NULL,
  `userid` int(10) unsigned NOT NULL DEFAULT '0',
  `tradeNo` varchar(32) NOT NULL,
  `order_sn` varchar(20) DEFAULT '',
  `money` decimal(10,2) DEFAULT '0.00',
  `layer` int(11) DEFAULT '1',
  `ratio` decimal(10,2) DEFAULT '0.00',
  `type` varchar(20) DEFAULT '',
  `created` int(11) DEFAULT NULL,
  PRIMARY KEY (`doid`),
  KEY `rec_id` (`rec_id`),
  KEY `userid` (`userid`),
  KEY `order_sn` (`order_sn`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `swd_distribute_order`
--

LOCK TABLES `swd_distribute_order` WRITE;
/*!40000 ALTER TABLE `swd_distribute_order` DISABLE KEYS */;
/*!40000 ALTER TABLE `swd_distribute_order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `swd_distribute_setting`
--

DROP TABLE IF EXISTS `swd_distribute_setting`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `swd_distribute_setting` (
  `dsid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(20) DEFAULT '',
  `item_id` int(11) DEFAULT '0',
  `ratio1` decimal(10,2) DEFAULT '0.00',
  `ratio2` decimal(10,2) DEFAULT '0.00',
  `ratio3` decimal(10,2) DEFAULT '0.00',
  `enabled` int(1) DEFAULT '1',
  PRIMARY KEY (`dsid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `swd_distribute_setting`
--

LOCK TABLES `swd_distribute_setting` WRITE;
/*!40000 ALTER TABLE `swd_distribute_setting` DISABLE KEYS */;
/*!40000 ALTER TABLE `swd_distribute_setting` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `swd_flagstore`
--

DROP TABLE IF EXISTS `swd_flagstore`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `swd_flagstore` (
  `fid` int(255) unsigned NOT NULL AUTO_INCREMENT,
  `brand_id` int(10) DEFAULT '0',
  `keyword` varchar(20) DEFAULT '',
  `cate_id` int(11) DEFAULT '0',
  `store_id` int(10) DEFAULT '0',
  `status` tinyint(1) DEFAULT '0',
  `description` varchar(255) DEFAULT NULL,
  `sort_order` int(11) DEFAULT '255',
  PRIMARY KEY (`fid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `swd_flagstore`
--

LOCK TABLES `swd_flagstore` WRITE;
/*!40000 ALTER TABLE `swd_flagstore` DISABLE KEYS */;
/*!40000 ALTER TABLE `swd_flagstore` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `swd_friend`
--

DROP TABLE IF EXISTS `swd_friend`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `swd_friend` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `userid` int(10) unsigned NOT NULL DEFAULT '0',
  `friend_id` int(10) unsigned NOT NULL DEFAULT '0',
  `add_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `userid` (`userid`),
  KEY `friend_id` (`friend_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `swd_friend`
--

LOCK TABLES `swd_friend` WRITE;
/*!40000 ALTER TABLE `swd_friend` DISABLE KEYS */;
/*!40000 ALTER TABLE `swd_friend` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `swd_gcategory`
--

DROP TABLE IF EXISTS `swd_gcategory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `swd_gcategory` (
  `cate_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `store_id` int(10) unsigned DEFAULT '0',
  `cate_name` varchar(100) NOT NULL DEFAULT '',
  `parent_id` int(10) unsigned DEFAULT '0',
  `groupid` int(11) DEFAULT '0',
  `sort_order` tinyint(3) unsigned DEFAULT '255',
  `if_show` tinyint(3) unsigned DEFAULT '1',
  `image` varchar(255) DEFAULT NULL,
  `ad` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`cate_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2571 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `swd_gcategory`
--

LOCK TABLES `swd_gcategory` WRITE;
/*!40000 ALTER TABLE `swd_gcategory` DISABLE KEYS */;
INSERT INTO `swd_gcategory` VALUES (1,0,'童装童鞋',0,6,13,1,'',''),(2,0,'女装',0,3,5,1,'',''),(3,0,'男装',0,3,6,1,'',''),(4,0,'内衣',0,3,7,1,'',''),(5,0,'配饰',1,0,255,1,'',''),(6,0,'童装童鞋',1,0,255,1,'',''),(1712,0,'润肤',1710,0,255,1,'',''),(1711,0,'沐浴',1710,0,255,1,'',''),(1710,0,'身体护肤',134,0,255,1,'',''),(1709,0,'套装',1703,0,255,1,'',''),(1708,0,'假发',1703,0,255,1,'',''),(1707,0,'造型',1703,0,255,1,'',''),(1706,0,'染发',1703,0,255,1,'',''),(1705,0,'护发',1703,0,255,1,'',''),(1704,0,'洗发',1703,0,255,1,'',''),(1694,0,'洁面',1692,0,255,1,'',''),(1693,0,'卸妆',1692,0,255,1,'',''),(1692,0,'面部护肤',134,0,255,1,'',''),(21,0,'家用电器、五金',0,1,1,1,'',''),(22,0,'大家电',21,0,255,1,'',''),(1325,0,'养生壶/煎药壶',1313,0,255,1,'',''),(1324,0,'电饼铛',1313,0,255,1,'',''),(1323,0,'料理机',1313,0,255,1,'',''),(1322,0,'榨汁机',1313,0,255,1,'',''),(1321,0,'面包机',1313,0,255,1,'',''),(1320,0,'咖啡机',1313,0,255,1,'',''),(1319,0,'豆浆机',1313,0,255,1,'',''),(1318,0,'电压力锅',1313,0,255,1,'',''),(1317,0,'电磁炉',1313,0,255,1,'',''),(1316,0,'电烤箱',1313,0,255,1,'',''),(1315,0,'微波炉',1313,0,255,1,'',''),(1314,0,'电饭锅',1313,0,255,1,'',''),(1313,0,'厨房小电',21,0,255,1,'',''),(57,0,'手机',0,2,6,1,'',''),(58,0,'手机通讯',57,0,255,1,'',''),(60,0,'运营商',57,0,255,1,'',''),(61,0,'手机配件',57,0,255,1,'',''),(62,0,'摄影摄像',63,0,255,1,'',''),(63,0,'数码',0,2,3,1,'',''),(64,0,'影音娱乐',63,0,255,1,'',''),(65,0,'智能设备',63,0,255,1,'',''),(1231,0,'合约机',60,0,255,1,'',''),(2543,0,'儿童玩具',0,6,13,1,'',''),(1238,0,'对讲机',58,0,255,1,'',''),(1229,0,'手机',58,0,255,1,'',''),(73,0,'电脑办公',0,7,14,1,'',''),(1436,0,'路由器',1435,0,255,1,'',''),(1435,0,'网络产品',73,0,255,1,'',''),(1412,0,'组装电脑',1398,0,255,1,'',''),(1411,0,'装机配件',1398,0,255,1,'',''),(1410,0,'散热器',1398,0,255,1,'',''),(1409,0,'声卡/扩展卡',1398,0,255,1,'',''),(1408,0,'刻录机/光驱',1398,0,255,1,'',''),(1407,0,'显示器',1398,0,255,1,'',''),(1406,0,'电源',1398,0,255,1,'',''),(1404,0,'内存',1398,0,255,1,'',''),(1405,0,'机箱',1398,0,255,1,'',''),(1403,0,'SSD固态硬盘',1398,0,255,1,'',''),(1402,0,'硬盘',1398,0,255,1,'',''),(1401,0,'显卡',1398,0,255,1,'',''),(1400,0,'主板',1398,0,255,1,'',''),(1399,0,'CPU',1398,0,255,1,'',''),(1398,0,'电脑配件',73,0,255,1,'',''),(1397,0,'笔记本配件',1389,0,255,1,'',''),(1396,0,'服务器/工作站',1389,0,255,1,'',''),(1395,0,'一体机',1389,0,255,1,'',''),(1394,0,'台式机',1389,0,255,1,'',''),(134,0,'个护化妆',0,8,15,1,'',''),(1703,0,'洗发护发',134,0,255,1,'',''),(1702,0,'套装',1692,0,255,1,'',''),(1701,0,'剃须',1692,0,255,1,'',''),(1700,0,'面膜',1692,0,255,1,'',''),(1699,0,'防晒',1692,0,255,1,'',''),(1698,0,'眼霜',1692,0,255,1,'',''),(1697,0,'精华',1692,0,255,1,'',''),(1696,0,'乳液面霜',1692,0,255,1,'',''),(1695,0,'爽肤水',1692,0,255,1,'',''),(162,0,'箱包珠宝',0,5,12,1,'',''),(1769,0,'拖鞋/人字拖',1762,0,255,1,'',''),(1768,0,'凉鞋',1762,0,255,1,'',''),(1767,0,'妈妈鞋',1762,0,255,1,'',''),(1766,0,'鱼嘴鞋',1762,0,255,1,'',''),(1765,0,'帆布鞋',1762,0,255,1,'',''),(1764,0,'休闲鞋',1762,0,255,1,'',''),(1763,0,'单鞋',1762,0,255,1,'',''),(1762,0,'时尚女鞋',2541,0,255,1,'',''),(172,0,'家具家装',0,4,8,1,'',''),(1487,0,'家装建材',172,0,255,1,'',''),(1486,0,'茶具/咖啡具',1480,0,255,1,'',''),(1485,0,'餐具',1480,0,255,1,'',''),(1484,0,'水具酒具',1480,0,255,1,'',''),(1483,0,'厨房配件',1480,0,255,1,'',''),(1482,0,'刀剪菜板',1480,0,255,1,'',''),(1481,0,'烹饪锅具',1480,0,255,1,'',''),(1480,0,'厨具',172,0,255,1,'',''),(185,0,'运动户外、钟表',0,9,255,1,'',''),(1886,0,'运动套装',1882,0,255,1,'',''),(1885,0,'健身服',1882,0,255,1,'',''),(1884,0,'运动裤',1882,0,255,1,'',''),(1883,0,'T恤',1882,0,255,1,'',''),(1882,0,'运动服饰',185,0,255,1,'',''),(1993,0,'豪华车',1987,0,255,1,'',''),(1879,0,'乒羽网鞋',1870,0,255,1,'',''),(1878,0,'足球鞋',1870,0,255,1,'',''),(1877,0,'运动包',1870,0,255,1,'',''),(1876,0,'拖鞋',1870,0,255,1,'',''),(1875,0,'板鞋',1870,0,255,1,'',''),(1874,0,'帆布鞋',1870,0,255,1,'',''),(1873,0,'篮球鞋',1870,0,255,1,'',''),(1872,0,'休闲鞋',1870,0,255,1,'',''),(1871,0,'跑步鞋',1870,0,255,1,'',''),(1870,0,'运动鞋包',185,0,255,1,'',''),(206,0,'汽车、汽车用品',0,10,255,1,'',''),(2010,0,'天津一汽',2005,0,255,1,'',''),(2009,0,'红旗',2005,0,255,1,'',''),(2008,0,'一汽丰田',2005,0,255,1,'',''),(2007,0,'东风标致',2005,0,255,1,'',''),(2006,0,'宝马',2005,0,255,1,'',''),(2005,0,'汽车品牌',206,0,255,1,'',''),(2004,0,'40万以上',1997,0,255,1,'',''),(2003,0,'25-40万',1997,0,255,1,'',''),(2002,0,'15-25万',1997,0,255,1,'',''),(2001,0,'10-15万',1997,0,255,1,'',''),(2000,0,'8-10万',1997,0,255,1,'',''),(1987,0,'汽车车型',206,0,255,1,'',''),(221,0,'母婴用品、洗护',0,11,255,1,'',''),(2094,0,'特殊配方奶粉',2088,0,255,1,'',''),(2093,0,'孕妈奶粉',2088,0,255,1,'',''),(2092,0,'4段',2088,0,255,1,'',''),(2217,0,'鸡翅',2215,0,255,1,'',''),(2090,0,'2段',2088,0,255,1,'',''),(2089,0,'1段',2088,0,255,1,'',''),(2088,0,'奶粉',221,0,255,1,'',''),(230,0,'生鲜特产、烟酒饮料',0,12,255,1,'',''),(2213,0,'牛肉卷',2206,0,255,1,'',''),(2212,0,'牛腱',2206,0,255,1,'',''),(2211,0,'牛腩',2206,0,255,1,'',''),(2210,0,'牛排',2206,0,255,1,'',''),(2209,0,'羊肉',2206,0,255,1,'',''),(2208,0,'猪肉',2206,0,255,1,'',''),(2207,0,'牛肉',2206,0,255,1,'',''),(2206,0,'猪牛羊肉',230,0,255,1,'',''),(2205,0,'红虾',2194,0,255,1,'',''),(2204,0,'扇贝',2194,0,255,1,'',''),(2203,0,'鳕鱼',2194,0,255,1,'',''),(2202,0,'北极甜虾',2194,0,255,1,'',''),(2201,0,'三文鱼',2194,0,255,1,'',''),(2200,0,'海产干货',2194,0,255,1,'',''),(2199,0,'海参',2194,0,255,1,'',''),(2198,0,'贝类',2194,0,255,1,'',''),(2197,0,'蟹类',2194,0,255,1,'',''),(2196,0,'鱼类',2194,0,255,1,'',''),(2195,0,'虾类',2194,0,255,1,'',''),(2194,0,'海鲜水产',230,0,255,1,'',''),(2193,0,'葱姜蒜椒',2183,0,255,1,'',''),(2192,0,'鲜菌菇',2183,0,255,1,'',''),(2191,0,'根茎类',2183,0,255,1,'',''),(2187,0,'大樱桃',2183,0,255,1,'',''),(2186,0,'芒果',2183,0,255,1,'',''),(2185,0,'奇异果',2183,0,255,1,'',''),(2184,0,'苹果',2183,0,255,1,'',''),(2183,0,'水果蔬菜',230,0,255,1,'',''),(2190,0,'茄果瓜类',2183,0,255,1,'',''),(2189,0,'叶菜类',2183,0,255,1,'',''),(2188,0,'时令水果',2183,0,255,1,'',''),(272,0,'医药保健、计生、器械',0,13,255,1,'',''),(2289,0,'口腔用药',2282,0,255,1,'',''),(2288,0,'眼科用药',2282,0,255,1,'',''),(2287,0,'耳鼻喉用药',2282,0,255,1,'',''),(2286,0,'止痛镇痛',2282,0,255,1,'',''),(2285,0,'补气养血',2282,0,255,1,'',''),(2284,0,'补肾壮阳',2282,0,255,1,'',''),(2283,0,'感冒咳嗽',2282,0,255,1,'',''),(2282,0,'中西药品',272,0,255,1,'',''),(2570,0,'外卖配送',0,0,255,1,'',''),(1210,0,'图书音像、教育',0,14,255,1,'',''),(1212,0,'女装',2,0,255,1,'',''),(1213,0,'T恤',1212,0,255,1,'',''),(1219,0,'冰箱',22,0,255,1,'',''),(1217,0,'平板电视',22,0,255,1,'',''),(1218,0,'空调',22,0,255,1,'',''),(1220,0,'洗衣机',22,0,255,1,'',''),(1221,0,'家庭影院',22,0,255,1,'',''),(1222,0,'DVD',22,0,255,1,'',''),(1223,0,'迷你音响',22,0,255,1,'',''),(1224,0,'冷柜/冰吧',22,0,255,1,'',''),(1225,0,'酒柜',22,0,255,1,'',''),(1226,0,'家电配件',22,0,255,1,'',''),(1242,0,'办套餐',60,0,255,1,'',''),(1243,0,'选号码',60,0,255,1,'',''),(1232,0,'手机电池',61,0,255,1,'',''),(1248,0,'移动电源',61,0,255,1,'',''),(1249,0,'蓝牙耳机',61,0,255,1,'',''),(1250,0,'充电器',61,0,255,1,'',''),(1233,0,'数码相机',62,0,255,1,'',''),(1262,0,'单电/微单相机',62,0,255,1,'',''),(1263,0,'单反相机',62,0,255,1,'',''),(1264,0,'拍立得',62,0,255,1,'',''),(1234,0,'存储卡',2542,0,255,1,'',''),(1272,0,'读卡器',2542,0,255,1,'',''),(1273,0,'支架',2542,0,255,1,'',''),(1274,0,'滤镜',2542,0,255,1,'',''),(1275,0,'闪光灯/手柄',2542,0,255,1,'',''),(1235,0,'耳机/耳麦',64,0,255,1,'',''),(1282,0,'音箱/音响',64,0,255,1,'',''),(1283,0,'便携/无线音箱',64,0,255,1,'',''),(1236,0,'智能手环',65,0,255,1,'',''),(1288,0,'智能手表',65,0,255,1,'',''),(1289,0,'智能眼镜',65,0,255,1,'',''),(1290,0,'智能机器人',65,0,255,1,'',''),(1239,0,'以旧换新',58,0,255,1,'',''),(1240,0,'手机维修',58,0,255,1,'',''),(1244,0,'装宽带',60,0,255,1,'',''),(1245,0,'中国移动',58,0,255,1,'',''),(1246,0,'中国联通',60,0,255,1,'',''),(1247,0,'中国电信',60,0,255,1,'',''),(1251,0,'数据线',61,0,255,1,'',''),(1252,0,'手机耳机',61,0,255,1,'',''),(1253,0,'手机支架',61,0,255,1,'',''),(1254,0,'贴膜',61,0,255,1,'',''),(1255,0,'手机储存卡',61,0,255,1,'',''),(1256,0,'保护套',61,0,255,1,'',''),(1257,0,'车载配件',61,0,255,1,'',''),(1258,0,'苹果周边',61,0,255,1,'',''),(1259,0,'创意配件',61,0,255,1,'',''),(1260,0,'手机饰品',61,0,255,1,'',''),(1261,0,'拍照配件',61,0,255,1,'',''),(1265,0,'运动相机',62,0,255,1,'',''),(1266,0,'摄像机',62,0,255,1,'',''),(1267,0,'镜头',62,0,255,1,'',''),(1268,0,'户外器材',62,0,255,1,'',''),(1269,0,'影棚器材',62,0,255,1,'',''),(1270,0,'冲印服务',62,0,255,1,'',''),(1271,0,'数码相框',62,0,255,1,'',''),(1276,0,'相机包',2542,0,255,1,'',''),(1809,0,'商务公文包',1808,0,255,1,'',''),(1278,0,'相机清洁/贴膜',2542,0,255,1,'',''),(1279,0,'机身附件',2542,0,255,1,'',''),(1280,0,'镜头附件',2542,0,255,1,'',''),(1281,0,'电池/充电器',2542,0,255,1,'',''),(1284,0,'收音机',64,0,255,1,'',''),(1285,0,'麦克风',64,0,255,1,'',''),(1286,0,'MP3/MP4',64,0,255,1,'',''),(1287,0,'专业音频',64,0,255,1,'',''),(1291,0,'运动跟踪器',65,0,255,1,'',''),(1292,0,'健康监测',65,0,255,1,'',''),(1293,0,'智能配饰',65,0,255,1,'',''),(1294,0,'智能家居',65,0,255,1,'',''),(1295,0,'体感车',65,0,255,1,'',''),(1296,0,'无人机',65,0,255,1,'',''),(1297,0,'其他配件',65,0,255,1,'',''),(1304,0,'厨卫大电',21,0,255,1,'',''),(1305,0,'油烟机',1304,0,255,1,'',''),(1306,0,'燃气灶',1304,0,255,1,'',''),(1307,0,'烟灶套装',1304,0,255,1,'',''),(1308,0,'消毒柜',1304,0,255,1,'',''),(1309,0,'洗碗机',1304,0,255,1,'',''),(1310,0,'电热水器',1304,0,255,1,'',''),(1311,0,'燃气热水器',1304,0,255,1,'',''),(1312,0,'嵌入式厨电',1304,0,255,1,'',''),(1326,0,'酸奶机',1313,0,255,1,'',''),(1327,0,'煮蛋器',1313,0,255,1,'',''),(1328,0,'电水壶/热水瓶',1313,0,255,1,'',''),(1329,0,'电炖锅',1313,0,255,1,'',''),(1330,0,'多用途锅',1313,0,255,1,'',''),(1331,0,'电烧烤炉',1313,0,255,1,'',''),(1332,0,'电热饭盒',1313,0,255,1,'',''),(1333,0,'其他厨房电器',1313,0,255,1,'',''),(1334,0,'生活电器',21,0,255,1,'',''),(1335,0,'电风扇',1334,0,255,1,'',''),(1336,0,'冷风扇',1334,0,255,1,'',''),(1337,0,'吸尘器',1334,0,255,1,'',''),(1338,0,'净化器',1334,0,255,1,'',''),(1339,0,'扫地机器人',1334,0,255,1,'',''),(1340,0,'加湿器',1334,0,255,1,'',''),(1341,0,'挂烫机/烫斗',1334,0,255,1,'',''),(1342,0,'取暖电器',1334,0,255,1,'',''),(1343,0,'插座',1334,0,255,1,'',''),(1344,0,'电话机',1334,0,255,1,'',''),(1345,0,'净水器',1334,0,255,1,'',''),(1346,0,'饮水机',1334,0,255,1,'',''),(1347,0,'除湿机',1334,0,255,1,'',''),(1348,0,'干衣机',1334,0,255,1,'',''),(1349,0,'清洁机',1334,0,255,1,'',''),(1350,0,'收录/音机',1334,0,255,1,'',''),(1351,0,'其他生活电器',1334,0,255,1,'',''),(1352,0,'生活电器配件',1334,0,255,1,'',''),(1353,0,'个护健康',21,0,255,1,'',''),(1354,0,'剃须刀',1353,0,255,1,'',''),(1355,0,'口腔护理',1353,0,255,1,'',''),(1356,0,'电吹风',1353,0,255,1,'',''),(1357,0,'美容器',1353,0,255,1,'',''),(1358,0,'卷/直发器',1353,0,255,1,'',''),(1359,0,'理发器',1353,0,255,1,'',''),(1360,0,'剃/脱毛器',1353,0,255,1,'',''),(1361,0,'足浴盆',1353,0,255,1,'',''),(1362,0,'健康秤/厨房秤',1353,0,255,1,'',''),(1363,0,'按摩器',1353,0,255,1,'',''),(1364,0,'按摩椅',1353,0,255,1,'',''),(1365,0,'血压计',1353,0,255,1,'',''),(1366,0,'血糖仪',1353,0,255,1,'',''),(1367,0,'体温计',1353,0,255,1,'',''),(1368,0,'计步器/脂肪检测仪',1353,0,255,1,'',''),(1369,0,'其他健康电器',1353,0,255,1,'',''),(1370,0,'五金家装',21,0,255,1,'',''),(1371,0,'电动工具',1370,0,255,1,'',''),(1372,0,'手动工具',1370,0,255,1,'',''),(1373,0,'仪器仪表',1370,0,255,1,'',''),(1374,0,'浴霸/排气扇',1370,0,255,1,'',''),(1375,0,'灯具',1370,0,255,1,'',''),(1376,0,'LED灯',1370,0,255,1,'',''),(1377,0,'洁身器',1370,0,255,1,'',''),(1378,0,'水槽',1370,0,255,1,'',''),(1379,0,'龙头',1370,0,255,1,'',''),(1380,0,'沐浴花洒',1370,0,255,1,'',''),(1381,0,'厨卫五金',1370,0,255,1,'',''),(1382,0,'家具五金',1370,0,255,1,'',''),(1383,0,'门铃',1370,0,255,1,'',''),(1384,0,'电器开关',1370,0,255,1,'',''),(1385,0,'插座',1370,0,255,1,'',''),(1386,0,'电工电料',1370,0,255,1,'',''),(1387,0,'监控安防',1370,0,255,1,'',''),(1388,0,'电线/线缆',1370,0,255,1,'',''),(1389,0,'电脑整机',73,0,255,1,'',''),(1390,0,'笔记本',1389,0,255,1,'',''),(1391,0,'游戏本',1389,0,255,1,'',''),(1392,0,'平板电脑',1389,0,255,1,'',''),(1393,0,'平板电脑配件',1389,0,255,1,'',''),(1437,0,'网卡',1435,0,255,1,'',''),(1438,0,'交换机',1435,0,255,1,'',''),(1439,0,'网络储存',1435,0,255,1,'',''),(1440,0,'4G/3G上网',1435,0,255,1,'',''),(1441,0,'网络盒子',1435,0,255,1,'',''),(1442,0,'网络配件',1435,0,255,1,'',''),(1443,0,'办公设备',73,0,255,1,'',''),(1444,0,'投影机',1443,0,255,1,'',''),(1445,0,'投影配件',1443,0,255,1,'',''),(1446,0,'多功能一体机',1443,0,255,1,'',''),(1447,0,'打印机',1443,0,255,1,'',''),(1448,0,'传真设备',1443,0,255,1,'',''),(1449,0,'验钞/点钞机',1443,0,255,1,'',''),(1450,0,'扫描设备',1443,0,255,1,'',''),(1451,0,'复合机',1443,0,255,1,'',''),(1452,0,'碎纸机',1443,0,255,1,'',''),(1453,0,'考勤机',1443,0,255,1,'',''),(1455,0,'会议音频视频',1443,0,255,1,'',''),(1456,0,'保险柜',1443,0,255,1,'',''),(1457,0,'装订/封装机',1443,0,255,1,'',''),(1458,0,'安防监控',1443,0,255,1,'',''),(1459,0,'办公家具',1443,0,255,1,'',''),(1460,0,'白板',1443,0,255,1,'',''),(1461,0,'文具耗材',2546,0,255,1,'',''),(1462,0,'硒鼓/墨粉',1461,0,255,1,'',''),(1463,0,'墨盒',1461,0,255,1,'',''),(1464,0,'色带',1461,0,255,1,'',''),(1465,0,'纸类',1461,0,255,1,'',''),(1466,0,'办公文具',1461,0,255,1,'',''),(1467,0,'学生文具',1461,0,255,1,'',''),(1468,0,'文件管理',1461,0,255,1,'',''),(1469,0,'本册/便签',1461,0,255,1,'',''),(1470,0,'计算器',1461,0,255,1,'',''),(1471,0,'笔类',1443,0,255,1,'',''),(1472,0,'画具画材',1461,0,255,1,'',''),(1473,0,'财会用品',1461,0,255,1,'',''),(1474,0,'刻录盘片/附件',1461,0,255,1,'',''),(1488,0,'灯饰照明',1487,0,255,1,'',''),(1489,0,'厨房卫浴',1487,0,255,1,'',''),(1490,0,'五金工具',1487,0,255,1,'',''),(1491,0,'电工电料',1487,0,255,1,'',''),(1492,0,'墙地面材料',1487,0,255,1,'',''),(1493,0,'装饰材料',1487,0,255,1,'',''),(1494,0,'装修服务',1487,0,255,1,'',''),(1495,0,'吸顶灯',1487,0,255,1,'',''),(1496,0,'沐浴花洒',1487,0,255,1,'',''),(1497,0,'开关插座',1487,0,255,1,'',''),(1498,0,'油漆材料',1487,0,255,1,'',''),(1499,0,'龙头',1487,0,255,1,'',''),(1500,0,'家纺装饰',0,4,9,1,'',''),(1501,0,'床品套件',1513,0,255,1,'',''),(1502,0,'被子',1513,0,255,1,'',''),(1503,0,'枕芯',1513,0,255,1,'',''),(1504,0,'蚊帐',1513,0,255,1,'',''),(1505,0,'凉席',1513,0,255,1,'',''),(1506,0,'毛巾浴巾',1513,0,255,1,'',''),(1507,0,'床单被罩',1513,0,255,1,'',''),(1508,0,'床垫/床褥',1513,0,255,1,'',''),(1509,0,'毯子',1513,0,255,1,'',''),(1510,0,'抱枕靠垫',1513,0,255,1,'',''),(1511,0,'窗帘/窗纱',1513,0,255,1,'',''),(1512,0,'电热毯',1513,0,255,1,'',''),(1513,0,'布艺软饰',1513,0,255,1,'',''),(1514,0,'家具',172,0,255,1,'',''),(1515,0,'卧室家具',1514,0,255,1,'',''),(1516,0,'客厅家具',1514,0,255,1,'',''),(1517,0,'餐厅家具',1514,0,255,1,'',''),(1518,0,'书房家具',1514,0,255,1,'',''),(1519,0,'儿童家具',1514,0,255,1,'',''),(1520,0,'储物家具',1514,0,255,1,'',''),(1521,0,'阳台/户外',1514,0,255,1,'',''),(1522,0,'商业办公',1514,0,255,1,'',''),(1523,0,'床',1514,0,255,1,'',''),(1524,0,'床垫',1514,0,255,1,'',''),(1525,0,'沙发',1514,0,255,1,'',''),(1526,0,'电脑椅',1514,0,255,1,'',''),(1527,0,'衣柜',1514,0,255,1,'',''),(1528,0,'茶几',1514,0,255,1,'',''),(1529,0,'电视柜',1514,0,255,1,'',''),(1530,0,'餐桌',1514,0,255,1,'',''),(1531,0,'电脑桌',1514,0,255,1,'',''),(1534,0,'灯具',172,0,255,1,'',''),(1533,0,'鞋架/衣帽架',1514,0,255,1,'',''),(1535,0,'台灯',1534,0,255,1,'',''),(1536,0,'吸顶灯',1534,0,255,1,'',''),(1537,0,'筒灯射灯',1534,0,255,1,'',''),(1538,0,'LED灯',1534,0,255,1,'',''),(1539,0,'节能灯',1534,0,255,1,'',''),(1540,0,'落地灯',1534,0,255,1,'',''),(1541,0,'五金电器',1534,0,255,1,'',''),(1542,0,'应急灯/手电',1534,0,255,1,'',''),(1543,0,'装饰灯',1534,0,255,1,'',''),(1544,0,'吊灯',1534,0,255,1,'',''),(1545,0,'氛围照明',1534,0,255,1,'',''),(1546,0,'生活用品',172,0,255,1,'',''),(1547,0,'收纳用品',1546,0,255,1,'',''),(1548,0,'雨伞雨具',1546,0,255,1,'',''),(1549,0,'净化除味',1546,0,255,1,'',''),(1550,0,'浴室用品',1546,0,255,1,'',''),(1551,0,'洗晒/熨烫',1546,0,255,1,'',''),(1552,0,'缝纫/针织用品',1546,0,255,1,'',''),(1553,0,'清洁工具',1546,0,255,1,'',''),(1554,0,'家装软饰',172,0,255,1,'',''),(1555,0,'桌布/桌罩',1554,0,255,1,'',''),(1556,0,'地毯地垫',1554,0,255,1,'',''),(1557,0,'沙发垫套/椅垫',1554,0,255,1,'',''),(1558,0,'装饰字画',1554,0,255,1,'',''),(1559,0,'装饰摆件',1554,0,255,1,'',''),(1560,0,'手工/十字绣',1554,0,255,1,'',''),(1561,0,'相框/照片墙',1554,0,255,1,'',''),(1562,0,'墙贴/装饰贴',1554,0,255,1,'',''),(1563,0,'花瓶花艺',1554,0,255,1,'',''),(1564,0,'香薰蜡烛',1554,0,255,1,'',''),(1565,0,'节庆饰品',1554,0,255,1,'',''),(1566,0,'钟饰',1554,0,255,1,'',''),(1567,0,'帘艺隔断',1554,0,255,1,'',''),(1568,0,'创意家居',1554,0,255,1,'',''),(1569,0,'保暖防护',1554,0,255,1,'',''),(1570,0,'雪纺衫',1212,0,255,1,'',''),(1571,0,'衬衫',1212,0,255,1,'',''),(1572,0,'休闲裤',1212,0,255,1,'',''),(1573,0,'牛仔裤',1212,0,255,1,'',''),(1574,0,'针织衫',1212,0,255,1,'',''),(1575,0,'短外套',1212,0,255,1,'',''),(1576,0,'卫衣',1212,0,255,1,'',''),(1577,0,'小西装',1212,0,255,1,'',''),(1578,0,'风衣',1212,0,255,1,'',''),(1579,0,'毛呢大衣',1212,0,255,1,'',''),(1580,0,'半身裙',1212,0,255,1,'',''),(1581,0,'短裙',1212,0,255,1,'',''),(1582,0,'吊带/背心',1212,0,255,1,'',''),(1584,0,'打底衫',1212,0,255,1,'',''),(1585,0,'打底裤',1212,0,255,1,'',''),(1586,0,'正装裤',1212,0,255,1,'',''),(1587,0,'马甲',1212,0,255,1,'',''),(1588,0,'大码女装',1212,0,255,1,'',''),(1589,0,'中老年女装',1212,0,255,1,'',''),(1590,0,'真皮皮衣',1212,0,255,1,'',''),(1591,0,'皮草',1212,0,255,1,'',''),(1592,0,'羊毛衫',1212,0,255,1,'',''),(1593,0,'羊绒衫',1212,0,255,1,'',''),(1594,0,'棉服',1212,0,255,1,'',''),(1595,0,'羽绒服',1212,0,255,1,'',''),(1596,0,'仿皮皮衣',1212,0,255,1,'',''),(1597,0,'加绒裤',1212,0,255,1,'',''),(1598,0,'婚纱',1212,0,255,1,'',''),(1599,0,'旗袍/唐装',1212,0,255,1,'',''),(1600,0,'礼服',1212,0,255,1,'',''),(1601,0,'设计师/潮牌',1212,0,255,1,'',''),(1602,0,'男装',3,0,255,1,'',''),(1603,0,'T恤',1602,0,255,1,'',''),(1604,0,'牛仔裤',1602,0,255,1,'',''),(1605,0,'休闲裤',1602,0,255,1,'',''),(1606,0,'卫衣',1602,0,255,1,'',''),(1607,0,'针织衫',1602,0,255,1,'',''),(1608,0,'西服',1602,0,255,1,'',''),(1609,0,'西裤',1602,0,255,1,'',''),(1610,0,'POLO衫',1602,0,255,1,'',''),(1611,0,'羽绒服',1602,0,255,1,'',''),(1612,0,'西服套装',1602,0,255,1,'',''),(1613,0,'真皮皮衣',1602,0,255,1,'',''),(1614,0,'夹克',1602,0,255,1,'',''),(1615,0,'风衣',1602,0,255,1,'',''),(1616,0,'卫裤/运动裤',1602,0,255,1,'',''),(1617,0,'短裤',1602,0,255,1,'',''),(1618,0,'仿皮皮衣',1602,0,255,1,'',''),(1619,0,'棉服',1602,0,255,1,'',''),(1620,0,'马甲/背心',1602,0,255,1,'',''),(1621,0,'毛呢大衣',1602,0,255,1,'',''),(1622,0,'羊毛衫',1602,0,255,1,'',''),(1623,0,'羊绒衫',1602,0,255,1,'',''),(1624,0,'大码男装',1602,0,255,1,'',''),(1625,0,'中老年男装',1602,0,255,1,'',''),(1626,0,'工装',1602,0,255,1,'',''),(1627,0,'设计师/潮牌',1602,0,255,1,'',''),(1628,0,'唐装/中山装',1602,0,255,1,'',''),(1629,0,'加绒裤',1602,0,255,1,'',''),(1630,0,'文胸内衣',4,0,255,1,'',''),(1631,0,'内裤',1631,0,255,1,'',''),(1632,0,'男式内裤',1212,0,255,1,'',''),(1633,0,'女式内裤',1212,0,255,1,'',''),(1634,0,'塑身美体',1631,0,255,1,'',''),(1635,0,'文胸套装',1631,0,255,1,'',''),(1636,0,'情侣睡衣',1631,0,255,1,'',''),(1637,0,'吊带/背心',1631,0,255,1,'',''),(1638,0,'少女文胸',1631,0,255,1,'',''),(1639,0,'休闲棉袜',1640,0,255,1,'',''),(1640,0,'袜子',4,0,255,1,'',''),(1641,0,'连裤袜/丝袜',1640,0,255,1,'',''),(1642,0,'美腿袜',1640,0,255,1,'',''),(1643,0,'打底裤袜',1640,0,255,1,'',''),(1644,0,'抹胸',1630,0,255,1,'',''),(1645,0,'内衣配件',1630,0,255,1,'',''),(1646,0,'大码内衣',1630,0,255,1,'',''),(1647,0,'打底衫',1630,0,255,1,'',''),(1648,0,'泳衣',1630,0,255,1,'',''),(1649,0,'秋衣秋裤',1630,0,255,1,'',''),(1650,0,'保暖内衣',1630,0,255,1,'',''),(1651,0,'情趣内衣',1630,0,255,1,'',''),(1652,0,'太阳镜',5,0,255,1,'',''),(1653,0,'光学镜架/镜片',5,0,255,1,'',''),(1654,0,'男士腰带/礼盒',5,0,255,1,'',''),(1655,0,'防辐射眼镜',5,0,255,1,'',''),(1656,0,'老花镜',5,0,255,1,'',''),(1657,0,'女士丝巾/围巾/披肩',5,0,255,1,'',''),(1658,0,'男士丝巾/围巾',5,0,255,1,'',''),(1659,0,'棒球帽',5,0,255,1,'',''),(1660,0,'遮阳帽',5,0,255,1,'',''),(1661,0,'鸭舌帽',5,0,255,1,'',''),(1662,0,'贝雷帽',5,0,255,1,'',''),(1663,0,'礼帽',5,0,255,1,'',''),(1664,0,'毛线帽',5,0,255,1,'',''),(1665,0,'防晒手套',5,0,255,1,'',''),(1666,0,'真皮手套',5,0,255,1,'',''),(1667,0,'围巾/手套/帽子套装',5,0,255,1,'',''),(1668,0,'遮阳伞/雨伞',5,0,255,1,'',''),(1669,0,'女士腰带/礼盒',5,0,255,1,'',''),(1670,0,'口罩',5,0,255,1,'',''),(1671,0,'假领',5,0,255,1,'',''),(1672,0,'毛线/布面料',5,0,255,1,'',''),(1673,0,'领带/领结/领带夹',5,0,255,1,'',''),(1674,0,'耳罩/耳包',5,0,255,1,'',''),(1675,0,'袖扣',5,0,255,1,'',''),(1676,0,'钥匙扣',5,0,255,1,'',''),(1677,0,'套装',6,0,255,1,'',''),(1678,0,'上衣',6,0,255,1,'',''),(1679,0,'运动鞋',6,0,255,1,'',''),(1680,0,'裤子',6,0,255,1,'',''),(1681,0,'内衣',6,0,255,1,'',''),(1682,0,'皮鞋/帆布鞋',6,0,255,1,'',''),(1683,0,'亲子装',6,0,255,1,'',''),(1684,0,'羽绒服/棉服',6,0,255,1,'',''),(1685,0,'运动服',6,0,255,1,'',''),(1686,0,'靴子',6,0,255,1,'',''),(1687,0,'演出服',6,0,255,1,'',''),(1688,0,'裙子',6,0,255,1,'',''),(1689,0,'功能鞋',6,0,255,1,'',''),(1690,0,'凉鞋',6,0,255,1,'',''),(1691,0,'配饰',6,0,255,1,'',''),(1713,0,'精油',1710,0,255,1,'',''),(1714,0,'颈部',1710,0,255,1,'',''),(1715,0,'手足',1710,0,255,1,'',''),(1716,0,'纤体塑形',1710,0,255,1,'',''),(1717,0,'美胸',1710,0,255,1,'',''),(1718,0,'套装',1710,0,255,1,'',''),(1719,0,'口腔护理',134,0,255,1,'',''),(1720,0,'牙膏/牙粉',1719,0,255,1,'',''),(1721,0,'牙刷/牙线',1719,0,255,1,'',''),(1722,0,'漱口水',1719,0,255,1,'',''),(1723,0,'套装',1719,0,255,1,'',''),(1724,0,'女性护理',134,0,255,1,'',''),(1725,0,'卫生巾',1724,0,255,1,'',''),(1726,0,'卫生护垫',1724,0,255,1,'',''),(1727,0,'私密护理',1724,0,255,1,'',''),(1728,0,'脱毛膏',1724,0,255,1,'',''),(1729,0,'香水彩妆',134,0,255,1,'',''),(1730,0,'女士香水',1729,0,255,1,'',''),(1731,0,'男士香水',1729,0,255,1,'',''),(1732,0,'底妆',1729,0,255,1,'',''),(1733,0,'眉笔',1729,0,255,1,'',''),(1734,0,'睫毛膏',1729,0,255,1,'',''),(1735,0,'眼线',1729,0,255,1,'',''),(1736,0,'眼影',1729,0,255,1,'',''),(1737,0,'唇膏/彩',1729,0,255,1,'',''),(1738,0,'腮红',1729,0,255,1,'',''),(1739,0,'美甲',1729,0,255,1,'',''),(1740,0,'美妆工具',1729,0,255,1,'',''),(1741,0,'套装',1729,0,255,1,'',''),(1742,0,'清洁用品',2545,0,255,1,'',''),(1743,0,'纸品湿巾',1742,0,255,1,'',''),(1744,0,'衣物清洁',1742,0,255,1,'',''),(1745,0,'清洁工具',1742,0,255,1,'',''),(1746,0,'家庭清洁',1742,0,255,1,'',''),(1747,0,'一次性用品',1742,0,255,1,'',''),(1748,0,'驱虫用品',1742,0,255,1,'',''),(1749,0,'皮具护理',1742,0,255,1,'',''),(1750,0,'宠物生活',2545,0,255,1,'',''),(1751,0,'水族用品',1750,0,255,1,'',''),(1752,0,'宠物主粮',1750,0,255,1,'',''),(1753,0,'宠物零食',1750,0,255,1,'',''),(1754,0,'猫砂/尿布',1750,0,255,1,'',''),(1755,0,'洗护美容',1750,0,255,1,'',''),(1756,0,'家具日用',1742,0,255,1,'',''),(1757,0,'医疗保健',1750,0,255,1,'',''),(1758,0,'出行装备',1750,0,255,1,'',''),(1759,0,'宠物玩具',1750,0,255,1,'',''),(1760,0,'宠物牵引',1750,0,255,1,'',''),(1761,0,'宠物驱虫',1750,0,255,1,'',''),(1770,0,'布鞋/绣花鞋',1762,0,255,1,'',''),(1771,0,'坡跟鞋',1762,0,255,1,'',''),(1772,0,'松糕鞋',1762,0,255,1,'',''),(1773,0,'防水台',1762,0,255,1,'',''),(1774,0,'高跟鞋',1762,0,255,1,'',''),(1775,0,'裸靴',1762,0,255,1,'',''),(1776,0,'内增高',1762,0,255,1,'',''),(1777,0,'女靴',1762,0,255,1,'',''),(1778,0,'马丁靴',1762,0,255,1,'',''),(1779,0,'雪地靴',1762,0,255,1,'',''),(1780,0,'雨鞋/雨靴',1762,0,255,1,'',''),(1781,0,'靴配件',1762,0,255,1,'',''),(1782,0,'流行男鞋',2540,0,255,1,'',''),(1783,0,'休闲鞋',1782,0,255,1,'',''),(1784,0,'商务休闲鞋',1782,0,255,1,'',''),(1785,0,'正装鞋',1782,0,255,1,'',''),(1786,0,'帆布鞋',1782,0,255,1,'',''),(1787,0,'工装鞋',1782,0,255,1,'',''),(1788,0,'增高鞋',1782,0,255,1,'',''),(1789,0,'拖鞋/人字拖',1782,0,255,1,'',''),(1790,0,'凉鞋/沙滩鞋',1782,0,255,1,'',''),(1791,0,'雨鞋/雨靴',1782,0,255,1,'',''),(1792,0,'定制鞋',1782,0,255,1,'',''),(1793,0,'男靴',1782,0,255,1,'',''),(1794,0,'传统布鞋',1782,0,255,1,'',''),(1795,0,'功能鞋',1782,0,255,1,'',''),(1798,0,'潮流女包',162,0,255,1,'',''),(1797,0,'鞋配件',1782,0,255,1,'',''),(1799,0,'单肩包',1798,0,255,1,'',''),(1800,0,'手提包',1798,0,255,1,'',''),(1801,0,'斜挎包',1798,0,255,1,'',''),(1802,0,'双肩包',1798,0,255,1,'',''),(1803,0,'钱包',1798,0,255,1,'',''),(1804,0,'手拿包',1798,0,255,1,'',''),(1805,0,'卡包/零钱包',1798,0,255,1,'',''),(1806,0,'钥匙包',1798,0,255,1,'',''),(1808,0,'精品男包',162,0,255,1,'',''),(1810,0,'单肩/斜挎包',1808,0,255,1,'',''),(1811,0,'男士手包',1808,0,255,1,'',''),(1812,0,'双肩包',1808,0,255,1,'',''),(1813,0,'男士钱包',1808,0,255,1,'',''),(1814,0,'卡包名片夹',1808,0,255,1,'',''),(1815,0,'钥匙包',1808,0,255,1,'',''),(1816,0,'功能箱包',162,0,255,1,'',''),(1817,0,'拉杆箱',1816,0,255,1,'',''),(1818,0,'拉杆包',1816,0,255,1,'',''),(1819,0,'旅行包',1816,0,255,1,'',''),(1820,0,'电脑包',1816,0,255,1,'',''),(1821,0,'休闲运动包',1816,0,255,1,'',''),(1822,0,'相机包',1816,0,255,1,'',''),(1823,0,'腰包/胸包',1816,0,255,1,'',''),(1824,0,'登山包',1808,0,255,1,'',''),(1825,0,'旅行配件',1816,0,255,1,'',''),(1990,0,'紧凑型车',1987,0,255,1,'',''),(1828,0,'奢侈品',162,0,255,1,'',''),(1829,0,'箱包',1828,0,255,1,'',''),(1830,0,'钱包',1828,0,255,1,'',''),(1831,0,'服饰',1828,0,255,1,'',''),(1832,0,'腰带',1828,0,255,1,'',''),(1833,0,'鞋靴',1828,0,255,1,'',''),(1834,0,'太阳镜/眼镜框',1828,0,255,1,'',''),(1835,0,'饰品',1828,0,255,1,'',''),(1836,0,'配件',1828,0,255,1,'',''),(1992,0,'中大型车',1987,0,255,1,'',''),(1991,0,'中型车',1987,0,255,1,'',''),(1840,0,'礼品',162,0,255,1,'',''),(1841,0,'火机烟具',1840,0,255,1,'',''),(1842,0,'军刀军具',1840,0,255,1,'',''),(1843,0,'美妆礼品',1840,0,255,1,'',''),(1844,0,'工艺礼品',1840,0,255,1,'',''),(1845,0,'礼盒礼卷',1840,0,255,1,'',''),(1846,0,'礼品文具',1840,0,255,1,'',''),(1847,0,'收藏品',1840,0,255,1,'',''),(1848,0,'古董把玩',1840,0,255,1,'',''),(1849,0,'礼品定制',1840,0,255,1,'',''),(1850,0,'创意礼品',1840,0,255,1,'',''),(1851,0,'婚庆用品',1840,0,255,1,'',''),(1852,0,'鲜花绿植',1840,0,255,1,'',''),(1853,0,'京东卡',1840,0,255,1,'',''),(1854,0,'珠宝首饰',162,0,255,1,'',''),(1855,0,'黄金',1854,0,255,1,'',''),(1856,0,'K金',1854,0,255,1,'',''),(1857,0,'时尚饰品',1854,0,255,1,'',''),(1858,0,'钻石',1854,0,255,1,'',''),(1859,0,'翡翠玉石',1854,0,255,1,'',''),(1860,0,'银饰',1854,0,255,1,'',''),(1861,0,'水晶玛瑙',1854,0,255,1,'',''),(1862,0,'彩宝',1854,0,255,1,'',''),(1863,0,'铂金',1854,0,255,1,'',''),(1864,0,'木手串/把件',1854,0,255,1,'',''),(1865,0,'珍珠',1854,0,255,1,'',''),(1866,0,'金银投资',162,0,255,1,'',''),(1867,0,'投资金',1866,0,255,1,'',''),(1868,0,'投资银',1866,0,255,1,'',''),(1869,0,'投资收藏',1866,0,255,1,'',''),(1887,0,'运动背心',1882,0,255,1,'',''),(1888,0,'羽绒服',1882,0,255,1,'',''),(1889,0,'卫衣/套头衫',1882,0,255,1,'',''),(1890,0,'棉服',1882,0,255,1,'',''),(1891,0,'夹克/风衣',1882,0,255,1,'',''),(1892,0,'运动配饰',1882,0,255,1,'',''),(1893,0,'乒羽网服',1882,0,255,1,'',''),(1894,0,'毛衫/线衫',1882,0,255,1,'',''),(1895,0,'健身训练',185,0,255,1,'',''),(1896,0,'跑步机',1895,0,255,1,'',''),(1897,0,'健身车/动感单车',1895,0,255,1,'',''),(1898,0,'哑铃',1895,0,255,1,'',''),(1899,0,'仰卧板/收腹机',1895,0,255,1,'',''),(1900,0,'甩脂机',1895,0,255,1,'',''),(1901,0,'踏步机',1895,0,255,1,'',''),(1902,0,'运动护具',1895,0,255,1,'',''),(1903,0,'瑜伽舞蹈',1895,0,255,1,'',''),(1904,0,'武术搏击',1895,0,255,1,'',''),(1905,0,'综合训练器',1895,0,255,1,'',''),(1906,0,'其他大型器械',1895,0,255,1,'',''),(1907,0,'其他中小型器材',1895,0,255,1,'',''),(1908,0,'骑行运动',185,0,255,1,'',''),(1909,0,'山地车/公路车',1908,0,255,1,'',''),(1910,0,'折叠车',1908,0,255,1,'',''),(1911,0,'电动车',1908,0,255,1,'',''),(1912,0,'平衡车',1908,0,255,1,'',''),(1913,0,'其他整车',1908,0,255,1,'',''),(1914,0,'骑行装备',1908,0,255,1,'',''),(1915,0,'骑行服',1908,0,255,1,'',''),(1916,0,'体育用品',185,0,255,1,'',''),(1917,0,'乒乓球',1916,0,255,1,'',''),(1918,0,'羽毛球',1916,0,255,1,'',''),(1919,0,'篮球',1916,0,255,1,'',''),(1920,0,'足球',1916,0,255,1,'',''),(1921,0,'轮滑滑板',1916,0,255,1,'',''),(1922,0,'网球',1916,0,255,1,'',''),(1923,0,'高尔夫',1916,0,255,1,'',''),(1924,0,'台球',1916,0,255,1,'',''),(1925,0,'排球',1916,0,255,1,'',''),(1989,0,'小型车',1987,0,255,1,'',''),(1988,0,'微型车',1987,0,255,1,'',''),(1928,0,'户外鞋服',185,0,255,1,'',''),(1929,0,'户外风衣',1928,0,255,1,'',''),(1930,0,'徒步鞋',1928,0,255,1,'',''),(1931,0,'T恤',1928,0,255,1,'',''),(1932,0,'冲锋衣裤',1928,0,255,1,'',''),(1933,0,'速干衣裤',1928,0,255,1,'',''),(1934,0,'越野跑鞋',1928,0,255,1,'',''),(1935,0,'滑雪服',1928,0,255,1,'',''),(1936,0,'羽绒服/棉服',1928,0,255,1,'',''),(1937,0,'休闲衣裤',1928,0,255,1,'',''),(1938,0,'抓绒衣裤',1928,0,255,1,'',''),(1939,0,'溯溪鞋',1928,0,255,1,'',''),(1940,0,'沙滩/凉拖',1928,0,255,1,'',''),(1941,0,'休闲鞋',1928,0,255,1,'',''),(1942,0,'软壳衣裤',1928,0,255,1,'',''),(1999,0,'5-8万',1997,0,255,1,'',''),(1998,0,'5万以下',1997,0,255,1,'',''),(1997,0,'汽车价格',206,0,255,1,'',''),(1948,0,'户外装备',185,0,255,1,'',''),(1949,0,'帐篷/垫子',1948,0,255,1,'',''),(1950,0,'望远镜',1948,0,255,1,'',''),(1951,0,'野餐烧烤',1948,0,255,1,'',''),(1952,0,'便携桌椅床',1948,0,255,1,'',''),(1953,0,'背包',1948,0,255,1,'',''),(1954,0,'户外配饰',1948,0,255,1,'',''),(1955,0,'军迷用品',1948,0,255,1,'',''),(1956,0,'睡袋/吊床',1948,0,255,1,'',''),(1957,0,'救援装备',1948,0,255,1,'',''),(1958,0,'护外照明',1948,0,255,1,'',''),(1959,0,'旅游用品',1948,0,255,1,'',''),(1960,0,'户外工具',1948,0,255,1,'',''),(1961,0,'户外仪表',1948,0,255,1,'',''),(1962,0,'登山攀岩',1948,0,255,1,'',''),(1996,0,'跑车',1987,0,255,1,'',''),(1995,0,'SUV',1987,0,255,1,'',''),(1994,0,'MPV',1987,0,255,1,'',''),(1966,0,'垂钓用品',185,0,255,1,'',''),(1967,0,'鱼竿鱼线',1966,0,255,1,'',''),(1968,0,'浮漂鱼饵',1966,0,255,1,'',''),(1969,0,'钓鱼桌椅',1966,0,255,1,'',''),(1970,0,'钓鱼配件',1966,0,255,1,'',''),(1971,0,'钓箱鱼包',1966,0,255,1,'',''),(1972,0,'其它',1966,0,255,1,'',''),(1973,0,'游泳用品',185,0,255,1,'',''),(1974,0,'泳镜',1973,0,255,1,'',''),(1975,0,'男士泳衣',1973,0,255,1,'',''),(1976,0,'女士泳衣',1973,0,255,1,'',''),(1977,0,'比基尼',1973,0,255,1,'',''),(1978,0,'泳帽',1973,0,255,1,'',''),(1979,0,'游泳包防水包',1973,0,255,1,'',''),(1980,0,'其它',1973,0,255,1,'',''),(1981,0,'钟表',185,0,255,1,'',''),(1982,0,'男表',1981,0,255,1,'',''),(1983,0,'女表',1981,0,255,1,'',''),(1984,0,'儿童表',1981,0,255,1,'',''),(1985,0,'智能手表',1981,0,255,1,'',''),(1986,0,'座钟挂钟',1981,0,255,1,'',''),(2011,0,'陆风',2005,0,255,1,'',''),(2012,0,'上海大众',2005,0,255,1,'',''),(2013,0,'维修保养',206,0,255,1,'',''),(2014,0,'机油',2013,0,255,1,'',''),(2015,0,'添加剂',2013,0,255,1,'',''),(2016,0,'防冻液',2013,0,255,1,'',''),(2017,0,'滤清器',2013,0,255,1,'',''),(2018,0,'火花塞',2013,0,255,1,'',''),(2019,0,'雨刷',2013,0,255,1,'',''),(2020,0,'车灯',2013,0,255,1,'',''),(2021,0,'减震器',2013,0,255,1,'',''),(2022,0,'轮胎',2013,0,255,1,'',''),(2023,0,'轮毂',2013,0,255,1,'',''),(2024,0,'刹车片/盘',2013,0,255,1,'',''),(2025,0,'维修配件',2013,0,255,1,'',''),(2026,0,'车载电器',206,0,255,1,'',''),(2027,0,'行车记录仪',2026,0,255,1,'',''),(2028,0,'导航仪',2026,0,255,1,'',''),(2029,0,'电源',2026,0,255,1,'',''),(2030,0,'电器配件',2026,0,255,1,'',''),(2031,0,'净化器',2026,0,255,1,'',''),(2032,0,'车载影音',2026,0,255,1,'',''),(2033,0,'冰箱',2026,0,255,1,'',''),(2034,0,'安全预警仪',2026,0,255,1,'',''),(2035,0,'倒车雷达',2026,0,255,1,'',''),(2036,0,'蓝牙设备',2026,0,255,1,'',''),(2037,0,'美容清洗',206,0,255,1,'',''),(2038,0,'车蜡',2037,0,255,1,'',''),(2039,0,'镀晶镀膜',2037,0,255,1,'',''),(2040,0,'补漆笔',2037,0,255,1,'',''),(2041,0,'玻璃水',2037,0,255,1,'',''),(2042,0,'清洁剂',2037,0,255,1,'',''),(2043,0,'洗车机',2037,0,255,1,'',''),(2044,0,'洗车水枪',2037,0,255,1,'',''),(2045,0,'洗车配件',2037,0,255,1,'',''),(2047,0,'汽车装饰',206,0,255,1,'',''),(2048,0,'脚垫',2047,0,255,1,'',''),(2049,0,'座垫',2047,0,255,1,'',''),(2050,0,'座套',2047,0,255,1,'',''),(2051,0,'后备箱垫',2047,0,255,1,'',''),(2052,0,'方向盘套',2047,0,255,1,'',''),(2053,0,'头枕腰靠',2047,0,255,1,'',''),(2054,0,'香水',2047,0,255,1,'',''),(2055,0,'空气净化',2047,0,255,1,'',''),(2056,0,'功能小件',2047,0,255,1,'',''),(2057,0,'车衣',2047,0,255,1,'',''),(2058,0,'挂件摆件',2047,0,255,1,'',''),(2096,0,'营养辅食',221,0,255,1,'',''),(2060,0,'安全自驾',206,0,255,1,'',''),(2061,0,'安全座椅',2060,0,255,1,'',''),(2062,0,'胎压监测',2060,0,255,1,'',''),(2063,0,'充气泵',2060,0,255,1,'',''),(2064,0,'防盗设备',2060,0,255,1,'',''),(2065,0,'应急救援',2060,0,255,1,'',''),(2066,0,'保温箱',2060,0,255,1,'',''),(2067,0,'储物箱',2060,0,255,1,'',''),(2068,0,'自驾野营',2060,0,255,1,'',''),(2069,0,'摩托车装备',2060,0,255,1,'',''),(2070,0,'摩托车',2060,0,255,1,'',''),(2071,0,'赛事改装',206,0,255,1,'',''),(2072,0,'赛事服装',2071,0,255,1,'',''),(2073,0,'赛事用品',2071,0,255,1,'',''),(2074,0,'制动系统',2071,0,255,1,'',''),(2075,0,'悬挂系统',2071,0,255,1,'',''),(2076,0,'进气系统',2071,0,255,1,'',''),(2077,0,'排气系统',2071,0,255,1,'',''),(2078,0,'电子管理',2071,0,255,1,'',''),(2095,0,'有机奶粉',2088,0,255,1,'',''),(2080,0,'汽车服务',206,0,255,1,'',''),(2081,0,'清洗美容',2080,0,255,1,'',''),(2082,0,'功能升级',2080,0,255,1,'',''),(2083,0,'保养维修',2080,0,255,1,'',''),(2084,0,'驾驶培训',2080,0,255,1,'',''),(2085,0,'ETC',2080,0,255,1,'',''),(2086,0,'加油卡',2080,0,255,1,'',''),(2087,0,'油卡充值',2080,0,255,1,'',''),(2097,0,'米粉/菜粉',2096,0,255,1,'',''),(2098,0,'面条/粥',2096,0,255,1,'',''),(2099,0,'果泥/果汁',2096,0,255,1,'',''),(2100,0,'米益生菌/初乳',2096,0,255,1,'',''),(2101,0,'DHA',2096,0,255,1,'',''),(2102,0,'钙铁锌/维生素',2096,0,255,1,'',''),(2215,0,'禽类食品',230,0,255,1,'',''),(2214,0,'羊肉卷',2206,0,255,1,'',''),(2105,0,'尿裤湿巾',221,0,255,1,'',''),(2106,0,'NB',2105,0,255,1,'',''),(2107,0,'S',2105,0,255,1,'',''),(2108,0,'M',2105,0,255,1,'',''),(2109,0,'L',2105,0,255,1,'',''),(2110,0,'XL',2105,0,255,1,'',''),(2111,0,'XXL',2105,0,255,1,'',''),(2112,0,'拉拉裤',2105,0,255,1,'',''),(2113,0,'成人尿裤',2105,0,255,1,'',''),(2114,0,'婴儿湿巾',2105,0,255,1,'',''),(2115,0,'喂养用品',221,0,255,1,'',''),(2116,0,'奶瓶奶嘴',2115,0,255,1,'',''),(2117,0,'吸奶器',2115,0,255,1,'',''),(2118,0,'暖奶消毒',2115,0,255,1,'',''),(2119,0,'辅食料理机',2115,0,255,1,'',''),(2120,0,'牙胶安抚',2115,0,255,1,'',''),(2121,0,'食物储存',2115,0,255,1,'',''),(2122,0,'儿童餐具',2115,0,255,1,'',''),(2123,0,'水壶/水杯',2115,0,255,1,'',''),(2124,0,'围兜/防溅衣',2115,0,255,1,'',''),(2125,0,'洗护用品',221,0,255,1,'',''),(2126,0,'宝宝护肤',2125,0,255,1,'',''),(2127,0,'日常护理',2125,0,255,1,'',''),(2128,0,'洗发沐浴',2125,0,255,1,'',''),(2129,0,'洗澡用具',2125,0,255,1,'',''),(2130,0,'洗衣液/皂',2125,0,255,1,'',''),(2131,0,'理发器',2125,0,255,1,'',''),(2132,0,'婴儿口腔清洁',2125,0,255,1,'',''),(2133,0,'坐便器',2125,0,255,1,'',''),(2134,0,'驱蚊防晒',2125,0,255,1,'',''),(2135,0,'寝居服饰',221,0,255,1,'',''),(2136,0,'睡袋/抱被',2135,0,255,1,'',''),(2137,0,'家居床品',2135,0,255,1,'',''),(2138,0,'安全防护',2135,0,255,1,'',''),(2139,0,'爬行垫',2135,0,255,1,'',''),(2140,0,'婴儿内衣',2135,0,255,1,'',''),(2141,0,'婴儿礼盒',2135,0,255,1,'',''),(2142,0,'婴儿鞋帽袜',2135,0,255,1,'',''),(2216,0,'鸡肉',2215,0,255,1,'',''),(2144,0,'妈妈专区',221,0,255,1,'',''),(2145,0,'防辐射服',2144,0,255,1,'',''),(2146,0,'孕妈装',2144,0,255,1,'',''),(2147,0,'孕妇护肤',2144,0,255,1,'',''),(2148,0,'妈咪包/背婴带',2144,0,255,1,'',''),(2149,0,'待产护理',2144,0,255,1,'',''),(2150,0,'产后塑身',2144,0,255,1,'',''),(2151,0,'文胸/内裤',2144,0,255,1,'',''),(2152,0,'防溢乳垫',2144,0,255,1,'',''),(2153,0,'孕期营养',2144,0,255,1,'',''),(2154,0,'童车童床',2543,0,255,1,'',''),(2155,0,'安全座椅',2154,0,255,1,'',''),(2156,0,'婴儿推车',2154,0,255,1,'',''),(2157,0,'婴儿床',2154,0,255,1,'',''),(2158,0,'婴儿床垫',2154,0,255,1,'',''),(2159,0,'餐椅',2154,0,255,1,'',''),(2160,0,'学步车',2154,0,255,1,'',''),(2161,0,'三轮车',2154,0,255,1,'',''),(2162,0,'自行车',2154,0,255,1,'',''),(2163,0,'扭扭车',2154,0,255,1,'',''),(2164,0,'滑板车',2154,0,255,1,'',''),(2165,0,'电动车',2154,0,255,1,'',''),(2166,0,'玩具',2543,0,255,1,'',''),(2167,0,'适用年龄',2166,0,255,1,'',''),(2168,0,'遥控/电动',2166,0,255,1,'',''),(2169,0,'益智玩具',2166,0,255,1,'',''),(2170,0,'积木拼插',2166,0,255,1,'',''),(2171,0,'动漫玩具',2166,0,255,1,'',''),(2172,0,'毛绒布艺',2166,0,255,1,'',''),(2173,0,'模型玩具',2166,0,255,1,'',''),(2175,0,'乐器',2543,0,255,1,'',''),(2176,0,'钢琴',2175,0,255,1,'',''),(2177,0,'电子琴/电钢琴',2175,0,255,1,'',''),(2178,0,'吉他/尤克里里',2175,0,255,1,'',''),(2179,0,'打击乐器',2175,0,255,1,'',''),(2180,0,'西洋管弦',2175,0,255,1,'',''),(2181,0,'民族乐器',2175,0,255,1,'',''),(2182,0,'乐器配件',2175,0,255,1,'',''),(2218,0,'鸡蛋',2215,0,255,1,'',''),(2219,0,'咸鸭蛋',2215,0,255,1,'',''),(2220,0,'松花蛋',2215,0,255,1,'',''),(2221,0,'冷冻食饮',230,0,255,1,'',''),(2222,0,'水饺',2221,0,255,1,'',''),(2223,0,'面点',2221,0,255,1,'',''),(2224,0,'汤圆',2221,0,255,1,'',''),(2225,0,'火锅丸串',2221,0,255,1,'',''),(2226,0,'速冻半成品',2221,0,255,1,'',''),(2227,0,'奶酪/黄油',2221,0,255,1,'',''),(2228,0,'中外名酒',230,0,255,1,'',''),(2229,0,'白酒',2228,0,255,1,'',''),(2230,0,'葡萄酒',2228,0,255,1,'',''),(2231,0,'洋酒',2228,0,255,1,'',''),(2232,0,'啤酒',2228,0,255,1,'',''),(2233,0,'黄酒/养生酒',2228,0,255,1,'',''),(2234,0,'收藏酒/陈年老酒',2228,0,255,1,'',''),(2235,0,'进口食品',230,0,255,1,'',''),(2236,0,'牛奶',2235,0,255,1,'',''),(2237,0,'饼干蛋糕',2235,0,255,1,'',''),(2238,0,'糖果/巧克力',2235,0,255,1,'',''),(2239,0,'休闲零食',2235,0,255,1,'',''),(2240,0,'冲调饮品',2235,0,255,1,'',''),(2241,0,'粮油调味',2235,0,255,1,'',''),(2242,0,'休闲食品',230,0,255,1,'',''),(2243,0,'休闲零食',2242,0,255,1,'',''),(2244,0,'坚果炒货',2242,0,255,1,'',''),(2245,0,'肉干肉腩',2242,0,255,1,'',''),(2246,0,'蜜饯果干',2242,0,255,1,'',''),(2247,0,'糖果/巧克力',2242,0,255,1,'',''),(2248,0,'饼干蛋糕',2242,0,255,1,'',''),(2249,0,'无糖食品',2242,0,255,1,'',''),(2250,0,'地方特产',230,0,255,1,'',''),(2251,0,'新疆',2250,0,255,1,'',''),(2252,0,'四川',2250,0,255,1,'',''),(2253,0,'云南',2250,0,255,1,'',''),(2254,0,'湖南',2250,0,255,1,'',''),(2255,0,'内蒙',2250,0,255,1,'',''),(2256,0,'北京',2250,0,255,1,'',''),(2257,0,'山西',2250,0,255,1,'',''),(2258,0,'福建',2250,0,255,1,'',''),(2259,0,'东北',2250,0,255,1,'',''),(2260,0,'其他',2250,0,255,1,'',''),(2261,0,'茗茶',230,0,255,1,'',''),(2262,0,'铁观音',2261,0,255,1,'',''),(2263,0,'普洱',2261,0,255,1,'',''),(2264,0,'龙井',2261,0,255,1,'',''),(2265,0,'绿茶',2261,0,255,1,'',''),(2266,0,'红茶',2261,0,255,1,'',''),(2267,0,'乌龙茶',2261,0,255,1,'',''),(2268,0,'花草茶',2261,0,255,1,'',''),(2269,0,'花果茶',2261,0,255,1,'',''),(2270,0,'黑茶',2261,0,255,1,'',''),(2271,0,'白茶',2261,0,255,1,'',''),(2272,0,'养生茶',2261,0,255,1,'',''),(2273,0,'其他茶',2261,0,255,1,'',''),(2274,0,'饮料冲调',230,0,255,1,'',''),(2275,0,'牛奶乳品',2274,0,255,1,'',''),(2276,0,'饮料',2274,0,255,1,'',''),(2277,0,'饮用水',2274,0,255,1,'',''),(2278,0,'咖啡/奶茶',2274,0,255,1,'',''),(2279,0,'蜂蜜/柚子茶',2274,0,255,1,'',''),(2280,0,'冲饮谷物',2274,0,255,1,'',''),(2281,0,'成人奶粉',2274,0,255,1,'',''),(2290,0,'皮肤用药',2282,0,255,1,'',''),(2291,0,'肠胃消化',2282,0,255,1,'',''),(2292,0,'风湿骨外伤',2282,0,255,1,'',''),(2293,0,'男科/泌尿',2282,0,255,1,'',''),(2294,0,'妇科用药',2282,0,255,1,'',''),(2295,0,'儿科用药',2282,0,255,1,'',''),(2296,0,'心脑血管',2282,0,255,1,'',''),(2297,0,'肝胆用药',2282,0,255,1,'',''),(2298,0,'营养健康',272,0,255,1,'',''),(2299,0,'调节免疫',2298,0,255,1,'',''),(2300,0,'调节三高',2298,0,255,1,'',''),(2301,0,'缓解疲劳',2298,0,255,1,'',''),(2302,0,'美体塑身',2298,0,255,1,'',''),(2303,0,'美容美颜',2298,0,255,1,'',''),(2304,0,'肝肾养护',2298,0,255,1,'',''),(2305,0,'肠胃养护',2298,0,255,1,'',''),(2306,0,'明目益智',2298,0,255,1,'',''),(2307,0,'骨骼健康',2298,0,255,1,'',''),(2308,0,'改善睡眠',2298,0,255,1,'',''),(2309,0,'抗氧化',2298,0,255,1,'',''),(2310,0,'抗缺氧',2298,0,255,1,'',''),(2311,0,'营养成分',272,0,255,1,'',''),(2312,0,'维生素/矿物质',2311,0,255,1,'',''),(2313,0,'蛋白质',2311,0,255,1,'',''),(2314,0,'鱼油/磷脂',2311,0,255,1,'',''),(2315,0,'螺旋藻',2311,0,255,1,'',''),(2316,0,'番茄红素',2311,0,255,1,'',''),(2317,0,'叶酸',2311,0,255,1,'',''),(2318,0,'葡萄籽',2311,0,255,1,'',''),(2319,0,'左旋肉碱',2311,0,255,1,'',''),(2320,0,'辅酶Q10',2311,0,255,1,'',''),(2321,0,'益生菌',2311,0,255,1,'',''),(2322,0,'玛咖',2311,0,255,1,'',''),(2323,0,'膳食纤维',2311,0,255,1,'',''),(2324,0,'牛初乳',2311,0,255,1,'',''),(2325,0,'胶原蛋白',2311,0,255,1,'',''),(2326,0,'大豆异黄酮',2311,0,255,1,'',''),(2327,0,'芦荟提取',2311,0,255,1,'',''),(2328,0,'酵素',2311,0,255,1,'',''),(2329,0,'滋补养生',272,0,255,1,'',''),(2330,0,'阿胶',2329,0,255,1,'',''),(2331,0,'蜂蜜/蜂产品',2329,0,255,1,'',''),(2332,0,'枸杞',2329,0,255,1,'',''),(2333,0,'燕窝',2329,0,255,1,'',''),(2334,0,'海参',2329,0,255,1,'',''),(2335,0,'冬虫夏草',2329,0,255,1,'',''),(2336,0,'人参/西洋参',2329,0,255,1,'',''),(2337,0,'三七',2329,0,255,1,'',''),(2338,0,'鹿茸',2329,0,255,1,'',''),(2339,0,'雪蛤',2329,0,255,1,'',''),(2340,0,'青钱柳',2329,0,255,1,'',''),(2341,0,'石斛/枫斗',2329,0,255,1,'',''),(2342,0,'灵芝/孢子粉',2329,0,255,1,'',''),(2343,0,'当归',2329,0,255,1,'',''),(2344,0,'养生茶饮',2329,0,255,1,'',''),(2345,0,'药食同源',2329,0,255,1,'',''),(2346,0,'成人用品',272,0,255,1,'',''),(2347,0,'安全避孕',2346,0,255,1,'',''),(2348,0,'验孕测孕',2346,0,255,1,'',''),(2349,0,'人体润滑',2346,0,255,1,'',''),(2350,0,'男用延时',2346,0,255,1,'',''),(2351,0,'男用器具',2346,0,255,1,'',''),(2352,0,'女用器具',2346,0,255,1,'',''),(2353,0,'情趣内衣',2346,0,255,1,'',''),(2354,0,'保健器械',272,0,255,1,'',''),(2355,0,'血压计',2354,0,255,1,'',''),(2356,0,'血糖仪',2354,0,255,1,'',''),(2357,0,'血氧仪',2354,0,255,1,'',''),(2358,0,'体温计',2354,0,255,1,'',''),(2359,0,'体重秤',2354,0,255,1,'',''),(2360,0,'胎心仪',2354,0,255,1,'',''),(2361,0,'呼吸制氧',2354,0,255,1,'',''),(2362,0,'雾化器',2354,0,255,1,'',''),(2363,0,'助听器',2354,0,255,1,'',''),(2364,0,'轮椅',2354,0,255,1,'',''),(2365,0,'拐杖',2354,0,255,1,'',''),(2366,0,'中医保健',2354,0,255,1,'',''),(2367,0,'养生器械',2354,0,255,1,'',''),(2368,0,'理疗仪',2354,0,255,1,'',''),(2369,0,'家庭护理',2354,0,255,1,'',''),(2370,0,'智能健康',2354,0,255,1,'',''),(2371,0,'护理护具',272,0,255,1,'',''),(2372,0,'隐形眼镜',2371,0,255,1,'',''),(2373,0,'护理液',2371,0,255,1,'',''),(2374,0,'口罩',2371,0,255,1,'',''),(2375,0,'眼罩/耳塞',2371,0,255,1,'',''),(2376,0,'跌打损伤',2371,0,255,1,'',''),(2377,0,'暖贴',2371,0,255,1,'',''),(2378,0,'鼻喉护理',2371,0,255,1,'',''),(2379,0,'眼部保健',2371,0,255,1,'',''),(2380,0,'美体护理',2371,0,255,1,'',''),(2381,0,'音像',1210,0,255,1,'',''),(2382,0,'音乐',2381,0,255,1,'',''),(2384,0,'影视',2381,0,255,1,'',''),(2385,0,'教育音像',2381,0,255,1,'',''),(2386,0,'游戏',2381,0,255,1,'',''),(2387,0,'影视/动漫周边',2381,0,255,1,'',''),(2388,0,'少儿',1210,0,255,1,'',''),(2389,0,'0-2岁',2388,0,255,1,'',''),(2390,0,'3-6岁',2388,0,255,1,'',''),(2391,0,'7-10岁',2388,0,255,1,'',''),(2392,0,'11-14岁',2388,0,255,1,'',''),(2393,0,'儿童文学',2388,0,255,1,'',''),(2394,0,'绘本',2388,0,255,1,'',''),(2395,0,'科普',2388,0,255,1,'',''),(2396,0,'幼儿启蒙',2388,0,255,1,'',''),(2397,0,'手工游戏',2388,0,255,1,'',''),(2398,0,'智力开发',2388,0,255,1,'',''),(2399,0,'文艺',1210,0,255,1,'',''),(2400,0,'教育',1210,0,255,1,'',''),(2401,0,'教材',2400,0,255,1,'',''),(2402,0,'中小学教辅',2400,0,255,1,'',''),(2403,0,'考试',2400,0,255,1,'',''),(2404,0,'外语学习',2400,0,255,1,'',''),(2405,0,'字典词典',2400,0,255,1,'',''),(2406,0,'小说',2399,0,255,1,'',''),(2407,0,'文学',2399,0,255,1,'',''),(2408,0,'青春文学',2399,0,255,1,'',''),(2409,0,'传记',2399,0,255,1,'',''),(2410,0,'动漫',2399,0,255,1,'',''),(2411,0,'艺术',2399,0,255,1,'',''),(2412,0,'摄影',2399,0,255,1,'',''),(2413,0,'经管励志',1210,0,255,1,'',''),(2414,0,'管理',2413,0,255,1,'',''),(2415,0,'金融与投资',2413,0,255,1,'',''),(2416,0,'经济',2413,0,255,1,'',''),(2417,0,'励志与成功',2413,0,255,1,'',''),(2418,0,'人文社科',1210,0,255,1,'',''),(2419,0,'历史',2418,0,255,1,'',''),(2420,0,'心理学',2418,0,255,1,'',''),(2421,0,'政治/军事',2418,0,255,1,'',''),(2422,0,'国学/古籍',2418,0,255,1,'',''),(2423,0,'哲学/宗教',2418,0,255,1,'',''),(2424,0,'社会科学',2418,0,255,1,'',''),(2425,0,'法律',2418,0,255,1,'',''),(2426,0,'文化',2418,0,255,1,'',''),(2427,0,'生活',1210,0,255,1,'',''),(2428,0,'家教与育儿',2427,0,255,1,'',''),(2429,0,'孕产',2427,0,255,1,'',''),(2430,0,'健身保险',2427,0,255,1,'',''),(2431,0,'旅游/地图',2427,0,255,1,'',''),(2432,0,'美食',2427,0,255,1,'',''),(2433,0,'时尚美妆',2427,0,255,1,'',''),(2434,0,'家居',2427,0,255,1,'',''),(2435,0,'手工DIY',2427,0,255,1,'',''),(2436,0,'两性',2427,0,255,1,'',''),(2437,0,'体育',2427,0,255,1,'',''),(2438,0,'科技',1210,0,255,1,'',''),(2439,0,'计算机与互联网',2438,0,255,1,'',''),(2440,0,'科普',2438,0,255,1,'',''),(2441,0,'建筑',2438,0,255,1,'',''),(2442,0,'工业技术',2438,0,255,1,'',''),(2443,0,'电子/通讯',2438,0,255,1,'',''),(2444,0,'医学',2438,0,255,1,'',''),(2445,0,'科学与自然',2438,0,255,1,'',''),(2446,0,'农林',2438,0,255,1,'',''),(2447,0,'刊/原版',1210,0,255,1,'',''),(2448,0,'杂志/期刊',2447,0,255,1,'',''),(2449,0,'英文原版书',2447,0,255,1,'',''),(2450,0,'港台图书',2447,0,255,1,'',''),(2451,0,'电子书',1210,0,255,1,'',''),(2452,0,'畅读VIP',2451,0,255,1,'',''),(2453,0,'小说',2451,0,255,1,'',''),(2454,0,'励志与成功',2451,0,255,1,'',''),(2455,0,'经济金融',2451,0,255,1,'',''),(2456,0,'文学',2451,0,255,1,'',''),(2457,0,'社科',2451,0,255,1,'',''),(2458,0,'婚恋两性',2451,0,255,1,'',''),(2459,0,'外文原版',2451,0,255,1,'',''),(2460,0,'免费',2451,0,255,1,'',''),(2461,0,'数字音乐',1210,0,255,1,'',''),(2462,0,'通俗流行',2461,0,255,1,'',''),(2463,0,'古典音乐',2461,0,255,1,'',''),(2464,0,'摇滚说唱',2461,0,255,1,'',''),(2465,0,'爵士蓝调',2461,0,255,1,'',''),(2466,0,'乡村民谣',2461,0,255,1,'',''),(2540,0,'男鞋',0,5,11,1,'',''),(2541,0,'女鞋',0,8,10,1,'',''),(2542,0,'数码配件',63,0,255,1,'',''),(2545,0,'清洁用品',0,8,16,1,'',''),(2546,0,'办公耗材',0,7,14,1,'',''),(2547,0,'安装保养',0,16,255,1,'',''),(2548,0,'清洁服务',0,16,255,1,'',''),(2549,0,'安装服务',2547,0,255,1,'',''),(2550,0,'保养服务',2547,0,255,1,'',''),(2551,0,'清洁',2548,0,255,1,'',''),(2552,0,'护工服务',2548,0,255,1,'',''),(2553,0,'家纺',1500,0,255,1,'',''),(2554,0,'装饰',1500,0,255,1,'',''),(2555,2,'服装',0,0,255,1,'',''),(2556,2,'男装',2555,0,255,1,'',''),(2557,2,'女装',2555,0,255,1,'',''),(2558,2,'家电',0,0,255,1,'',''),(2559,2,'冰箱',2558,0,255,1,'',''),(2560,2,'洗衣机',2558,0,255,1,'','');
/*!40000 ALTER TABLE `swd_gcategory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `swd_goods`
--

DROP TABLE IF EXISTS `swd_goods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `swd_goods` (
  `goods_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `store_id` int(10) unsigned NOT NULL DEFAULT '0',
  `type` varchar(10) DEFAULT 'material',
  `goods_name` varchar(255) NOT NULL DEFAULT '',
  `description` text,
  `content` text,
  `cate_id` int(10) unsigned DEFAULT '0',
  `cate_name` varchar(255) DEFAULT '',
  `brand` varchar(100) DEFAULT '',
  `spec_qty` tinyint(4) unsigned DEFAULT '0',
  `spec_name_1` varchar(60) DEFAULT '',
  `spec_name_2` varchar(60) DEFAULT '',
  `if_show` tinyint(3) unsigned DEFAULT '1',
  `closed` tinyint(3) unsigned DEFAULT '0',
  `close_reason` varchar(255) DEFAULT NULL,
  `add_time` int(10) unsigned DEFAULT NULL,
  `last_update` int(10) unsigned DEFAULT NULL,
  `default_spec` int(11) unsigned DEFAULT '0',
  `default_image` varchar(255) DEFAULT NULL,
  `long_image` varchar(255) DEFAULT NULL,
  `video` varchar(255) DEFAULT NULL,
  `isnew` tinyint(4) unsigned DEFAULT '0',
  `recommended` tinyint(4) unsigned DEFAULT '0',
  `price` decimal(10,2) DEFAULT '0.00',
  `mkprice` decimal(10,2) DEFAULT '0.00',
  `tags` varchar(102) DEFAULT '',
  `dt_id` int(11) DEFAULT '0',
  PRIMARY KEY (`goods_id`),
  KEY `store_id` (`store_id`)
) ENGINE=MyISAM AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `swd_goods`
--

LOCK TABLES `swd_goods` WRITE;
/*!40000 ALTER TABLE `swd_goods` DISABLE KEYS */;
INSERT INTO `swd_goods` VALUES (1,2,'material','三星（SAMSUNG）UA55MUF30ZJXXZ 55英寸 4K超高清 智能网络 液晶平板电视 黑色','<p>\r\n	<img src=\"/data/files/store_2/goods/20181121160722364.png\" alt=\"201805071556341101.png\" /> \r\n</p>\r\n<p>\r\n	<img src=\"http://wsho.fk08.cn/data/files/store_2/goods/20181121160722486.png\" alt=\"201805071556342163.png\" /> \r\n</p>\r\n<p>\r\n	<img src=\"http://wsho.fk08.cn/data/files/store_2/goods/20181121160721880.png\" alt=\"201805071556336963.png\" /> \r\n</p>\r\n<p>\r\n	<br />\r\n</p>',NULL,1217,'家用电器、五金	大家电	平板电视','三星',0,'','',1,0,NULL,1542759050,1542761597,1,'data/files/store_2/goods/20181121161206467.jpg',NULL,NULL,0,1,2999.00,0.00,'',1),(2,2,'material','索尼（SONY）KD-55A8F 55英寸 OLED 4K HDR安卓7.0智能电视（黑色）','<p>\r\n	<img src=\"http://wsho.fk08.cn/data/files/store_2/goods/20181121162513368.png\" alt=\"201805071545044509.png\" /> \r\n</p>\r\n<p>\r\n	<img src=\"http://wsho.fk08.cn/data/files/store_2/goods/20181121162513582.png\" alt=\"201805071544409733.png\" /> \r\n</p>\r\n<p>\r\n	<img src=\"http://wsho.fk08.cn/data/files/store_2/goods/20181121162512458.png\" alt=\"201805071544407096.png\" /> \r\n</p>\r\n<p>\r\n	<br />\r\n</p>',NULL,1217,'家用电器、五金	大家电	平板电视','SONY',0,'','',1,0,NULL,1542759937,1542760043,2,'data/files/store_2/goods/20181121162709932.jpg',NULL,NULL,0,1,12999.00,0.00,'',1),(3,2,'material','康佳（KONKA）B55U 55英寸4K超高清31核金属边框HDR智能液晶平板电视','<p>\r\n	<img src=\"http://wsho.fk08.cn/data/files/store_2/goods/20181121163002627.png\" alt=\"201805071533192373.png\" />\r\n</p>\r\n<p>\r\n	<img src=\"http://wsho.fk08.cn/data/files/store_2/goods/20181121163002390.png\" alt=\"201805071533199844.png\" />\r\n</p>\r\n<p>\r\n	<img src=\"http://wsho.fk08.cn/data/files/store_2/goods/20181121163002368.png\" alt=\"201805071533192897.png\" />\r\n</p>\r\n<p>\r\n	<br />\r\n</p>',NULL,1217,'家用电器、五金	大家电	平板电视','康佳',0,'','',1,0,NULL,1542760267,1542760267,3,'data/files/store_2/goods/20181121163057182.jpg',NULL,NULL,0,1,2499.00,0.00,'',1),(4,2,'material','Gree/格力 KFR-35GW/(35592)Da-3 大1.5匹定频冷暖空调挂机品圆','<img src=\"http://wsho.fk08.cn/data/files/store_2/goods/20181121165050398.png\" alt=\"O1CN011cOiiwWSxiKHFqs_!!3079263591_01.png\" />',NULL,1218,'家用电器、五金	大家电	空调','',0,'','',1,0,NULL,1542760514,1542778120,4,'data/files/store_2/goods/20181121212828709.jpg',NULL,NULL,0,1,2699.00,0.00,'',1),(5,2,'material','AUX/奥克斯 KFR-35GW/NFI19+3大1.5匹冷暖定频壁挂式家用空调挂机','<img src=\"http://wsho.fk08.cn/data/files/store_2/goods/20181121165510485.jpg\" alt=\"O1CN01fLoyTY28Qc5NmejFc_!!1035757927.jpg\" />',NULL,1218,'家用电器、五金	大家电	空调','',0,'','',1,0,NULL,1542761718,1542778034,5,'data/files/store_2/goods/20181121212703151.jpg',NULL,NULL,0,1,2099.00,0.00,'',1),(6,2,'material','MIJIA/米家KFR-35GW-B1ZM-M3小米大1.5P变频冷暖静音挂机智能空调','<img src=\"http://wsho.fk08.cn/data/files/store_2/goods/20181121165719527.jpg\" alt=\"O1CN0129zFeIqiZbJH0sq_!!1714128138.jpg\" />',NULL,1218,'家用电器、五金	大家电	空调','小米',0,'','',1,0,NULL,1542761845,1542777946,6,'data/files/store_2/goods/20181121212543181.jpg',NULL,NULL,0,1,2049.00,0.00,'',1),(7,2,'material','Haier/海尔 BCD-206STPA 206升三门冷藏小型家用节能小冰箱软冷冻','<img src=\"http://wsho.fk08.cn/data/files/store_2/goods/20181121165944433.jpg\" alt=\"TB2WDmLaNb9F1JjSZFqXXbotVXa-470168984.jpg\" />',NULL,1219,'家用电器、五金	大家电	冰箱','海尔',0,'','',1,0,NULL,1542761989,1542779286,7,'data/files/store_2/goods/20181121212339738.jpg',NULL,NULL,0,1,1499.00,0.00,'',1),(8,2,'material','Midea/美的 BCD-213TM(E) 节能静音家用三开门小冰箱小型电冰箱','<img src=\"http://wsho.fk08.cn/data/files/store_2/goods/20181121170845820.jpg\" alt=\"TB2JkZtw1uSBuNjy1XcXXcYjFXa_!!2616970884.jpg\" />',NULL,1219,'家用电器、五金	大家电	冰箱','美的',0,'','',1,0,NULL,1542762532,1542782057,8,'data/files/store_2/goods/20181121212111597.jpg',NULL,NULL,0,1,1499.00,0.00,'',1),(12,2,'material','2018秋冬新款立领荷叶花边雪纺长袖加绒衬衫女装职业OL木耳白衬衣','<p>\r\n	<img src=\"http://wsho.fk08.cn/data/files/store_2/goods/20181121214303347.jpg\" alt=\"O1CN011py4J4wGjzEx042_!!2102385428.jpg\" width=\"790\" height=\"1482\" /> \r\n</p>\r\n<p>\r\n	<img src=\"http://wsho.fk08.cn/data/files/store_2/goods/20181121214606668.jpg\" alt=\"O1CN011py4J38gySOV4Pf_!!2102385428.jpg\" /> \r\n</p>',NULL,1570,'女装	女装	雪纺衫','',0,'','',1,0,NULL,1542778999,1542782123,12,'data/files/store_2/goods/20181121214200514.jpg',NULL,NULL,0,1,300.00,0.00,'',1),(10,2,'material','Haier/海尔 EG7012B29W 静音消毒洗 超薄机身 BLDC变频','',NULL,1220,'家用电器、五金	大家电	洗衣机','海尔',0,'','',1,0,NULL,1542778238,1542782080,10,'data/files/store_2/goods/20181121213021455.jpg',NULL,NULL,0,1,1699.00,0.00,'',1),(11,2,'material','Midea/美的DJ118抽油烟机侧吸式壁挂吸油烟机厨房家用特价大吸力','',NULL,1305,'家用电器、五金	厨卫大电	油烟机','美的',0,'','',1,0,NULL,1542778370,1542782101,11,'data/files/store_2/goods/20181121213244147.jpg',NULL,NULL,0,1,1399.00,0.00,'',1),(13,2,'material','2018秋冬新款韩版亮丝网纱加绒打底衫长袖女闪光丝蕾丝上衣雪纺衫','<img src=\"http://wsho.fk08.cn/data/files/store_2/goods/20181121215124255.jpg\" alt=\"O1CN011lqxh7vwnJYQlic_!!848414871.jpg\" />',NULL,1570,'女装	女装	雪纺衫','',0,'','',1,0,NULL,1542779523,1542782141,13,'data/files/store_2/goods/20181121215053864.jpg',NULL,NULL,0,1,1499.00,0.00,'',1),(14,2,'material','纯棉格子保暖衬衫 女长袖秋冬加绒加厚韩范修身打底大码女装衬衣','<img src=\"http://wsho.fk08.cn/data/files/store_2/goods/20181121215548819.jpg\" alt=\"TB2EXARXjnyQeBjSszbXXbCxVXa_!!864939067.jpg\" /><img src=\"http://wsho.fk08.cn/data/files/store_2/goods/20181121215548105.jpg\" alt=\"TB2Eh1faekJL1JjSZFmXXcw0XXa_!!864939067.jpg\" />',NULL,1571,'女装	女装	衬衫','',0,'','',1,0,NULL,1542779762,1542782158,14,'data/files/store_2/goods/20181121215535534.jpg',NULL,NULL,0,1,120.00,0.00,'',1),(15,2,'material','纯棉格子保暖衬衫 女长袖秋冬加绒加厚韩范修身打底大码女装衬衣','',NULL,1571,'女装	女装	衬衫','',0,'','',1,0,NULL,1542779924,1542782171,15,'data/files/store_2/goods/20181121215835874.jpg',NULL,NULL,0,1,139.00,0.00,'',1),(16,2,'material','2018秋冬小脚运动裤子女宽松韩版显瘦哈伦裤加绒加厚休闲学生长裤','',NULL,1572,'女装	女装	休闲裤','',0,'','',1,0,NULL,1542780046,1542782183,16,'data/files/store_2/goods/20181121220037806.jpg',NULL,NULL,0,1,200.00,0.00,'',1),(17,2,'material','七格格高腰半身裙2018新款时尚灯芯绒a字裙子韩版学生短裙女秋冬','',NULL,1581,'女装	女装	短裙','',0,'','',1,0,NULL,1542780205,1542782198,17,'data/files/store_2/goods/20181121220320276.jpg',NULL,NULL,0,1,200.00,0.00,'',1),(18,2,'material','短裙秋冬装女2018新款韩版百搭毛呢高腰修身显瘦包臀a字半身裙','',NULL,1581,'女装	女装	短裙','',0,'','',1,0,NULL,1542780335,1542782220,18,'data/files/store_2/goods/20181121220446153.jpg',NULL,NULL,0,1,80.00,0.00,'',1),(19,2,'material','G2000衬衫男长袖防皱商务男装 工作休闲正装衣服修身薄款白色衬衣','',NULL,1607,'男装	男装	针织衫','',0,'','',1,0,NULL,1542780490,1542782236,19,'data/files/store_2/goods/20181121220804979.jpg',NULL,NULL,0,1,200.00,0.00,'',1),(20,2,'material','G2000衬衫男长袖防皱商务男装 工作休闲正装衣服修身薄款白色衬衣','',NULL,1610,'男装	男装	POLO衫','',0,'','',1,0,NULL,1542780686,1542782251,20,'data/files/store_2/goods/20181121221014676.jpg',NULL,NULL,0,1,100.00,0.00,'',1),(21,2,'material','华为honor/荣耀 荣耀8X全面屏手机屏占比高达91%全网通4G智能学生青春官网全新正品官方旗舰店','<img src=\"http://wsho.fk08.cn/data/files/store_2/goods/20181121221648239.jpg\" alt=\"O1CN011PMo5IXY6Kga1Gi_!!1114511827.jpg\" />',NULL,1229,'手机	手机通讯	手机','',0,'','',1,0,NULL,1542781016,1542782267,21,'data/files/store_2/goods/20181121221617232.jpg',NULL,NULL,0,1,1499.00,0.00,'',1),(22,2,'material','华为荣耀 荣耀play旗舰店paly 10新荣耀piay手机新款plαy官方8x正品v10新品plya','<img src=\"http://wsho.fk08.cn/data/files/store_2/goods/20181121222039772.jpg\" alt=\"TB2TfCEhTCWBKNjSZFtXXaC3FXa_!!2215302589.jpg\" /><img src=\"http://wsho.fk08.cn/data/files/store_2/goods/20181121222039825.jpg\" alt=\"TB2mr3av49YBuNjy0FfXXXIsVXa_!!2215302589.jpg\" />',NULL,1229,'手机	手机通讯	手机','',0,'','',1,0,NULL,1542781249,1542782281,22,'data/files/store_2/goods/20181121221946571.jpg',NULL,NULL,0,1,1699.00,0.00,'',1),(23,2,'material','当天发货 vivo Z1手机正品 vivoz1 青春限量版 双十一vivox21 z1i x23 y97 x20 x9 voviz1手机官方旗舰店官','<img src=\"http://wsho.fk08.cn/data/files/store_2/goods/20181121222413488.jpg\" alt=\"TB2VI2bEf5TBuNjSspmXXaDRVXa_!!1864868535.jpg\" /><img src=\"http://wsho.fk08.cn/data/files/store_2/goods/20181121222429450.jpg\" alt=\"TB2vLuXEgmTBuNjy1XbXXaMrVXa_!!1864868535.jpg\" />',NULL,1229,'手机	手机通讯	手机','',0,'','',1,0,NULL,1542781475,1542782294,23,'data/files/store_2/goods/20181121222347420.jpg',NULL,NULL,0,1,1598.00,0.00,'',1),(24,2,'material','【22日下单减200低至2799】Xiaomi/小米 MIX2S 6+128G全面屏骁龙845智能小米官方旗舰正品降价','<img src=\"http://wsho.fk08.cn/data/files/store_2/goods/20181121222920216.jpg\" alt=\"O1CN011IOuZM74xb4umYd_!!2616970884.jpg\" />',NULL,1229,'手机	手机通讯	手机','小米',0,'','',1,0,NULL,1542781776,1542782306,24,'data/files/store_2/goods/20181121222733481.jpg',NULL,NULL,0,1,2999.00,0.00,'',1),(25,2,'material','【现货！领券减4G+64GG送手环】Xiaomi/小米 红米Note 4X 32G红米4x手机5色官方64G智能手机 5.5寸超长note4X','<img src=\"http://wsho.fk08.cn/data/files/store_2/goods/20181121224001510.jpg\" alt=\"TB2Wk2LfYBkpuFjy1zkXXbSpFXa_!!742644724.jpg\" />',NULL,1229,'手机	手机通讯	手机','小米',0,'','',1,0,NULL,1542782412,1542782689,25,'data/files/store_2/goods/20181121223950247.jpg',NULL,NULL,0,1,1169.00,0.00,'',1),(26,2,'material','【以旧换新 门店现货】Samsung/三星 Galaxy S9 SM-G9600曲屏手机','<img src=\"http://wsho.fk08.cn/data/files/store_2/goods/20181121224215347.jpg\" alt=\"TB2wSJQqDlYBeNjSszcXXbwhFXa_!!2146022675.jpg\" /><img src=\"http://wsho.fk08.cn/data/files/store_2/goods/20181121224203282.jpg\" alt=\"TB2VeVsqx9YBuNjy0FfXXXIsVXa_!!2146022675.jpg\" />',NULL,1239,'手机	手机通讯	以旧换新','三星',0,'','',1,0,NULL,1542782543,1542782543,26,'data/files/store_2/goods/20181121224125388.jpg',NULL,NULL,0,1,5499.00,0.00,'',1);
/*!40000 ALTER TABLE `swd_goods` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `swd_goods_image`
--

DROP TABLE IF EXISTS `swd_goods_image`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `swd_goods_image` (
  `image_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `goods_id` int(10) unsigned NOT NULL DEFAULT '0',
  `image_url` varchar(255) NOT NULL DEFAULT '',
  `thumbnail` varchar(255) DEFAULT '',
  `sort_order` tinyint(4) unsigned DEFAULT '0',
  `file_id` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`image_id`),
  KEY `goods_id` (`goods_id`)
) ENGINE=MyISAM AUTO_INCREMENT=60 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `swd_goods_image`
--

LOCK TABLES `swd_goods_image` WRITE;
/*!40000 ALTER TABLE `swd_goods_image` DISABLE KEYS */;
INSERT INTO `swd_goods_image` VALUES (1,1,'data/files/store_2/goods/20181121161206467.jpg','data/files/store_2/goods/20181121161206467.jpg',1,4),(2,1,'data/files/store_2/goods/20181121161206136.jpg','data/files/store_2/goods/20181121161206136.jpg',255,5),(3,1,'data/files/store_2/goods/20181121161206982.jpg','data/files/store_2/goods/20181121161206982.jpg',255,6),(4,1,'data/files/store_2/goods/20181121161207471.jpg','data/files/store_2/goods/20181121161207471.jpg',255,7),(5,1,'data/files/store_2/goods/20181121161207954.jpg','data/files/store_2/goods/20181121161207954.jpg',255,8),(6,2,'data/files/store_2/goods/20181121162707311.jpg','data/files/store_2/goods/20181121162707311.jpg',255,12),(7,2,'data/files/store_2/goods/20181121162707422.jpg','data/files/store_2/goods/20181121162707422.jpg',255,13),(8,2,'data/files/store_2/goods/20181121162708599.jpg','data/files/store_2/goods/20181121162708599.jpg',255,14),(9,2,'data/files/store_2/goods/20181121162708216.jpg','data/files/store_2/goods/20181121162708216.jpg',255,15),(10,2,'data/files/store_2/goods/20181121162709932.jpg','data/files/store_2/goods/20181121162709932.jpg',1,16),(11,3,'data/files/store_2/goods/20181121163057182.jpg','data/files/store_2/goods/20181121163057182.jpg',1,20),(12,3,'data/files/store_2/goods/20181121163103146.jpg','data/files/store_2/goods/20181121163103146.jpg',255,21),(13,3,'data/files/store_2/goods/20181121163103403.jpg','data/files/store_2/goods/20181121163103403.jpg',255,22),(14,3,'data/files/store_2/goods/20181121163104112.jpg','data/files/store_2/goods/20181121163104112.jpg',255,23),(15,3,'data/files/store_2/goods/20181121163104717.jpg','data/files/store_2/goods/20181121163104717.jpg',255,24),(36,10,'data/files/store_2/goods/20181121213021455.jpg','data/files/store_2/goods/20181121213021455.jpg',1,50),(35,4,'data/files/store_2/goods/20181121212828709.jpg','data/files/store_2/goods/20181121212828709.jpg',1,49),(34,5,'data/files/store_2/goods/20181121212707549.jpg','data/files/store_2/goods/20181121212707549.jpg',255,48),(33,5,'data/files/store_2/goods/20181121212703151.jpg','data/files/store_2/goods/20181121212703151.jpg',1,47),(37,11,'data/files/store_2/goods/20181121213244147.jpg','data/files/store_2/goods/20181121213244147.jpg',1,51),(39,12,'data/files/store_2/goods/20181121214203335.jpg','data/files/store_2/goods/20181121214203335.jpg',255,53),(32,6,'data/files/store_2/goods/20181121212543181.jpg','data/files/store_2/goods/20181121212543181.jpg',1,46),(40,13,'data/files/store_2/goods/20181121215053864.jpg','data/files/store_2/goods/20181121215053864.jpg',1,56),(41,13,'data/files/store_2/goods/20181121215057697.jpg','data/files/store_2/goods/20181121215057697.jpg',255,57),(31,7,'data/files/store_2/goods/20181121212339738.jpg','data/files/store_2/goods/20181121212339738.jpg',1,45),(30,8,'data/files/store_2/goods/20181121212114409.jpg','data/files/store_2/goods/20181121212114409.jpg',255,44),(29,8,'data/files/store_2/goods/20181121212111597.jpg','data/files/store_2/goods/20181121212111597.jpg',1,43),(38,12,'data/files/store_2/goods/20181121214200514.jpg','data/files/store_2/goods/20181121214200514.jpg',1,52),(42,14,'data/files/store_2/goods/20181121215535534.jpg','data/files/store_2/goods/20181121215535534.jpg',1,60),(43,14,'data/files/store_2/goods/20181121215535789.jpg','data/files/store_2/goods/20181121215535789.jpg',255,61),(44,15,'data/files/store_2/goods/20181121215835874.jpg','data/files/store_2/goods/20181121215835874.jpg',1,64),(45,16,'data/files/store_2/goods/20181121220037806.jpg','data/files/store_2/goods/20181121220037806.jpg',1,65),(46,17,'data/files/store_2/goods/20181121220320276.jpg','data/files/store_2/goods/20181121220320276.jpg',1,66),(47,17,'data/files/store_2/goods/20181121220321253.jpg','data/files/store_2/goods/20181121220321253.jpg',255,67),(48,18,'data/files/store_2/goods/20181121220446153.jpg','data/files/store_2/goods/20181121220446153.jpg',1,68),(49,18,'data/files/store_2/goods/20181121220529585.jpg','data/files/store_2/goods/20181121220529585.jpg',255,69),(50,19,'data/files/store_2/goods/20181121220804979.jpg','data/files/store_2/goods/20181121220804979.jpg',1,70),(51,20,'data/files/store_2/goods/20181121221014676.jpg','data/files/store_2/goods/20181121221014676.jpg',1,71),(52,21,'data/files/store_2/goods/20181121221617232.jpg','data/files/store_2/goods/20181121221617232.jpg',1,72),(53,22,'data/files/store_2/goods/20181121221946571.jpg','data/files/store_2/goods/20181121221946571.jpg',1,74),(54,23,'data/files/store_2/goods/20181121222346200.png','data/files/store_2/goods/20181121222346200.png',255,77),(55,23,'data/files/store_2/goods/20181121222347420.jpg','data/files/store_2/goods/20181121222347420.jpg',1,78),(56,24,'data/files/store_2/goods/20181121222733481.jpg','data/files/store_2/goods/20181121222733481.jpg',1,81),(57,24,'data/files/store_2/goods/20181121222915885.jpg','data/files/store_2/goods/20181121222915885.jpg',255,82),(58,25,'data/files/store_2/goods/20181121223950247.jpg','data/files/store_2/goods/20181121223950247.jpg',1,84),(59,26,'data/files/store_2/goods/20181121224125388.jpg','data/files/store_2/goods/20181121224125388.jpg',1,86);
/*!40000 ALTER TABLE `swd_goods_image` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `swd_goods_integral`
--

DROP TABLE IF EXISTS `swd_goods_integral`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `swd_goods_integral` (
  `goods_id` int(10) NOT NULL,
  `max_exchange` int(11) DEFAULT '0',
  PRIMARY KEY (`goods_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `swd_goods_integral`
--

LOCK TABLES `swd_goods_integral` WRITE;
/*!40000 ALTER TABLE `swd_goods_integral` DISABLE KEYS */;
INSERT INTO `swd_goods_integral` VALUES (1,80),(2,10),(3,10),(4,10),(5,10),(6,10),(7,10),(8,10),(10,10),(11,10),(12,10),(13,10),(14,10),(15,10),(16,10),(17,10),(18,10),(19,10),(21,10);
/*!40000 ALTER TABLE `swd_goods_integral` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `swd_goods_prop`
--

DROP TABLE IF EXISTS `swd_goods_prop`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `swd_goods_prop` (
  `pid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL DEFAULT '',
  `ptype` varchar(20) DEFAULT 'select',
  `is_color` int(1) DEFAULT '0',
  `status` int(1) DEFAULT '1',
  `sort_order` int(11) DEFAULT '255',
  PRIMARY KEY (`pid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `swd_goods_prop`
--

LOCK TABLES `swd_goods_prop` WRITE;
/*!40000 ALTER TABLE `swd_goods_prop` DISABLE KEYS */;
/*!40000 ALTER TABLE `swd_goods_prop` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `swd_goods_prop_value`
--

DROP TABLE IF EXISTS `swd_goods_prop_value`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `swd_goods_prop_value` (
  `vid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(11) DEFAULT '0',
  `pvalue` varchar(255) DEFAULT '',
  `color` varchar(255) DEFAULT '',
  `status` int(1) DEFAULT '1',
  `sort_order` int(11) DEFAULT '255',
  PRIMARY KEY (`vid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `swd_goods_prop_value`
--

LOCK TABLES `swd_goods_prop_value` WRITE;
/*!40000 ALTER TABLE `swd_goods_prop_value` DISABLE KEYS */;
/*!40000 ALTER TABLE `swd_goods_prop_value` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `swd_goods_pvs`
--

DROP TABLE IF EXISTS `swd_goods_pvs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `swd_goods_pvs` (
  `goods_id` int(10) NOT NULL,
  `pvs` text,
  PRIMARY KEY (`goods_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `swd_goods_pvs`
--

LOCK TABLES `swd_goods_pvs` WRITE;
/*!40000 ALTER TABLE `swd_goods_pvs` DISABLE KEYS */;
/*!40000 ALTER TABLE `swd_goods_pvs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `swd_goods_qa`
--

DROP TABLE IF EXISTS `swd_goods_qa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `swd_goods_qa` (
  `ques_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `question_content` varchar(255) DEFAULT '',
  `userid` int(10) unsigned NOT NULL DEFAULT '0',
  `store_id` int(10) unsigned DEFAULT '0',
  `email` varchar(60) DEFAULT '',
  `item_id` int(10) unsigned NOT NULL DEFAULT '0',
  `item_name` varchar(255) DEFAULT '',
  `reply_content` varchar(255) DEFAULT '',
  `time_post` int(10) unsigned DEFAULT NULL,
  `time_reply` int(10) unsigned DEFAULT NULL,
  `if_new` tinyint(3) unsigned DEFAULT '1',
  `type` varchar(10) DEFAULT 'goods',
  PRIMARY KEY (`ques_id`),
  KEY `userid` (`userid`),
  KEY `goods_id` (`item_id`),
  KEY `store_id` (`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `swd_goods_qa`
--

LOCK TABLES `swd_goods_qa` WRITE;
/*!40000 ALTER TABLE `swd_goods_qa` DISABLE KEYS */;
/*!40000 ALTER TABLE `swd_goods_qa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `swd_goods_spec`
--

DROP TABLE IF EXISTS `swd_goods_spec`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `swd_goods_spec` (
  `spec_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `goods_id` int(10) unsigned NOT NULL DEFAULT '0',
  `spec_1` varchar(60) DEFAULT '',
  `spec_2` varchar(60) DEFAULT '',
  `price` decimal(10,2) DEFAULT '0.00',
  `mkprice` decimal(10,2) DEFAULT '0.00',
  `stock` int(11) DEFAULT '0',
  `sku` varchar(60) DEFAULT '',
  `image` varchar(255) DEFAULT NULL,
  `sort_order` tinyint(3) unsigned DEFAULT '255',
  PRIMARY KEY (`spec_id`),
  KEY `goods_id` (`goods_id`)
) ENGINE=MyISAM AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `swd_goods_spec`
--

LOCK TABLES `swd_goods_spec` WRITE;
/*!40000 ALTER TABLE `swd_goods_spec` DISABLE KEYS */;
INSERT INTO `swd_goods_spec` VALUES (1,1,'','',2999.00,0.00,10000,'1000000000001','',1),(2,2,'','',12999.00,0.00,10000,'1000000000002','',1),(3,3,'','',2499.00,0.00,10000,'1000000000003','',1),(4,4,'','',2699.00,0.00,10000,'1000000000004','',1),(5,5,'','',2099.00,0.00,10000,'1000000000005','',1),(6,6,'','',2049.00,0.00,10000,'1000000000006','',1),(7,7,'','',1499.00,0.00,10000,'1000000000007','',1),(8,8,'','',1499.00,0.00,10000,'1000000000008','',1),(9,9,'','',120.00,0.00,10000,'1000000000008','',1),(10,10,'','',1699.00,0.00,10000,'1000000000009','',1),(11,11,'','',1399.00,0.00,10000,'1000000000010','',1),(12,12,'','',300.00,0.00,10000,'1000000000011','',1),(13,13,'','',1499.00,0.00,10000,'1000000000012','',1),(14,14,'','',120.00,0.00,10000,'1000000000013','',1),(15,15,'','',139.00,0.00,10000,'1000000000014','',1),(16,16,'','',200.00,0.00,10000,'1000000000015','',1),(17,17,'','',200.00,0.00,10000,'1000000000016','',1),(18,18,'','',80.00,0.00,10000,'1000000000017','',1),(19,19,'','',200.00,0.00,10000,'1000000000018','',1),(20,20,'','',100.00,0.00,10000,'1000000000019','',1),(21,21,'','',1499.00,0.00,10000,'1000000000020','',1),(22,22,'','',1699.00,0.00,10000,'1000000000021','',1),(23,23,'','',1598.00,0.00,10000,'1000000000022','',1),(24,24,'','',2999.00,0.00,10000,'1000000000023','',1),(25,25,'','',1169.00,0.00,10000,'1000000000024','',1),(26,26,'','',5499.00,0.00,10000,'1000000000025','',1);
/*!40000 ALTER TABLE `swd_goods_spec` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `swd_goods_statistics`
--

DROP TABLE IF EXISTS `swd_goods_statistics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `swd_goods_statistics` (
  `goods_id` int(10) unsigned NOT NULL DEFAULT '0',
  `views` int(10) unsigned DEFAULT '0',
  `collects` int(10) unsigned DEFAULT '0',
  `orders` int(10) unsigned DEFAULT '0',
  `sales` int(10) unsigned DEFAULT '0',
  `comments` int(11) unsigned DEFAULT '0',
  PRIMARY KEY (`goods_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `swd_goods_statistics`
--

LOCK TABLES `swd_goods_statistics` WRITE;
/*!40000 ALTER TABLE `swd_goods_statistics` DISABLE KEYS */;
INSERT INTO `swd_goods_statistics` VALUES (25,6,0,0,0,0);
/*!40000 ALTER TABLE `swd_goods_statistics` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `swd_guideshop`
--

DROP TABLE IF EXISTS `swd_guideshop`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `swd_guideshop` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `userid` int(10) unsigned NOT NULL DEFAULT '0',
  `owner` varchar(50) NOT NULL DEFAULT '',
  `phone_mob` varchar(20) NOT NULL DEFAULT '',
  `region_id` int(11) unsigned DEFAULT '0',
  `region_name` varchar(100) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `name` varchar(100) NOT NULL DEFAULT '',
  `banner` varchar(255) DEFAULT NULL,
  `longitude` varchar(20) DEFAULT '',
  `latitude` varchar(20) DEFAULT '',
  `created` int(11) DEFAULT NULL,
  `status` tinyint(3) unsigned DEFAULT '0',
  `remark` varchar(255) DEFAULT NULL,
  `inviter` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `swd_guideshop`
--

LOCK TABLES `swd_guideshop` WRITE;
/*!40000 ALTER TABLE `swd_guideshop` DISABLE KEYS */;
/*!40000 ALTER TABLE `swd_guideshop` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `swd_integral`
--

DROP TABLE IF EXISTS `swd_integral`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `swd_integral` (
  `userid` int(10) unsigned NOT NULL DEFAULT '0',
  `amount` decimal(10,2) DEFAULT '0.00',
  PRIMARY KEY (`userid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `swd_integral`
--

LOCK TABLES `swd_integral` WRITE;
/*!40000 ALTER TABLE `swd_integral` DISABLE KEYS */;
/*!40000 ALTER TABLE `swd_integral` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `swd_integral_log`
--

DROP TABLE IF EXISTS `swd_integral_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `swd_integral_log` (
  `log_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `userid` int(10) unsigned NOT NULL DEFAULT '0',
  `order_id` int(10) NOT NULL DEFAULT '0',
  `order_sn` varchar(20) DEFAULT '',
  `changes` decimal(25,2) DEFAULT '0.00',
  `balance` decimal(25,2) DEFAULT '0.00',
  `type` varchar(50) DEFAULT '',
  `state` varchar(50) DEFAULT '',
  `flag` varchar(255) DEFAULT '',
  `add_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`log_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `swd_integral_log`
--

LOCK TABLES `swd_integral_log` WRITE;
/*!40000 ALTER TABLE `swd_integral_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `swd_integral_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `swd_integral_setting`
--

DROP TABLE IF EXISTS `swd_integral_setting`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `swd_integral_setting` (
  `setting_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `rate` decimal(10,2) DEFAULT '0.00',
  `register` decimal(10,0) DEFAULT '0',
  `signin` decimal(10,0) DEFAULT '0',
  `openshop` decimal(10,0) DEFAULT '0',
  `buygoods` text,
  `enabled` int(11) DEFAULT '0',
  PRIMARY KEY (`setting_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `swd_integral_setting`
--

LOCK TABLES `swd_integral_setting` WRITE;
/*!40000 ALTER TABLE `swd_integral_setting` DISABLE KEYS */;
INSERT INTO `swd_integral_setting` VALUES (1,1.00,50,10,100,'a:2:{i:1;s:3:\"0.1\";i:2;s:3:\"0.2\";}',1);
/*!40000 ALTER TABLE `swd_integral_setting` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `swd_limitbuy`
--

DROP TABLE IF EXISTS `swd_limitbuy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `swd_limitbuy` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `goods_id` int(10) NOT NULL,
  `title` varchar(50) NOT NULL DEFAULT '',
  `summary` varchar(255) DEFAULT '',
  `start_time` int(11) DEFAULT NULL,
  `end_time` int(11) DEFAULT NULL,
  `store_id` int(10) DEFAULT '0',
  `rules` text,
  `image` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `swd_limitbuy`
--

LOCK TABLES `swd_limitbuy` WRITE;
/*!40000 ALTER TABLE `swd_limitbuy` DISABLE KEYS */;
INSERT INTO `swd_limitbuy` VALUES (1,26,'春节大促','',1617065980,1640966399,2,'a:1:{i:26;a:2:{s:5:\"price\";s:1:\"9\";s:8:\"pro_type\";s:8:\"discount\";}}',NULL),(2,25,'春节大促','',1617066017,1640966399,2,'a:1:{i:25;a:2:{s:5:\"price\";s:1:\"9\";s:8:\"pro_type\";s:8:\"discount\";}}',NULL),(3,15,'年中大促','',1617066289,1640966399,2,'a:1:{i:15;a:2:{s:5:\"price\";s:1:\"6\";s:8:\"pro_type\";s:8:\"discount\";}}',NULL),(4,14,'年中大促','',1617066326,1640966399,2,'a:1:{i:14;a:2:{s:5:\"price\";s:1:\"6\";s:8:\"pro_type\";s:8:\"discount\";}}',NULL),(5,12,'春节大促','',1617066422,1640966399,2,'a:1:{i:12;a:2:{s:5:\"price\";s:1:\"8\";s:8:\"pro_type\";s:8:\"discount\";}}',NULL),(6,17,'春节大促','',1617066451,1640966399,2,'a:1:{i:17;a:2:{s:5:\"price\";s:1:\"7\";s:8:\"pro_type\";s:8:\"discount\";}}',NULL),(7,18,'春节大促','',1617066481,1640966399,2,'a:1:{i:18;a:2:{s:5:\"price\";s:1:\"8\";s:8:\"pro_type\";s:8:\"discount\";}}',NULL),(8,20,'春节大促','',1617066504,1640966399,2,'a:1:{i:20;a:2:{s:5:\"price\";s:1:\"5\";s:8:\"pro_type\";s:8:\"discount\";}}',NULL);
/*!40000 ALTER TABLE `swd_limitbuy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `swd_meal`
--

DROP TABLE IF EXISTS `swd_meal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `swd_meal` (
  `meal_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `store_id` int(10) NOT NULL,
  `title` varchar(255) DEFAULT '',
  `price` decimal(10,2) DEFAULT '0.00',
  `keyword` varchar(255) DEFAULT '',
  `description` text,
  `status` int(1) DEFAULT '1',
  `created` int(11) DEFAULT NULL,
  PRIMARY KEY (`meal_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `swd_meal`
--

LOCK TABLES `swd_meal` WRITE;
/*!40000 ALTER TABLE `swd_meal` DISABLE KEYS */;
/*!40000 ALTER TABLE `swd_meal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `swd_meal_goods`
--

DROP TABLE IF EXISTS `swd_meal_goods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `swd_meal_goods` (
  `mg_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `meal_id` int(11) NOT NULL DEFAULT '0',
  `goods_id` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`mg_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `swd_meal_goods`
--

LOCK TABLES `swd_meal_goods` WRITE;
/*!40000 ALTER TABLE `swd_meal_goods` DISABLE KEYS */;
/*!40000 ALTER TABLE `swd_meal_goods` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `swd_message`
--

DROP TABLE IF EXISTS `swd_message`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `swd_message` (
  `msg_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `from_id` int(10) unsigned NOT NULL DEFAULT '0',
  `to_id` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(100) DEFAULT '',
  `content` text,
  `add_time` int(10) unsigned DEFAULT NULL,
  `last_update` int(10) unsigned DEFAULT NULL,
  `new` tinyint(3) unsigned DEFAULT '0',
  `parent_id` int(10) unsigned DEFAULT '0',
  `status` tinyint(3) unsigned DEFAULT '0',
  PRIMARY KEY (`msg_id`),
  KEY `from_id` (`from_id`),
  KEY `to_id` (`to_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `swd_message`
--

LOCK TABLES `swd_message` WRITE;
/*!40000 ALTER TABLE `swd_message` DISABLE KEYS */;
/*!40000 ALTER TABLE `swd_message` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `swd_msg`
--

DROP TABLE IF EXISTS `swd_msg`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `swd_msg` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `userid` int(10) unsigned NOT NULL DEFAULT '0',
  `num` int(10) unsigned DEFAULT '0',
  `functions` varchar(255) DEFAULT NULL,
  `state` tinyint(3) unsigned DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `swd_msg`
--

LOCK TABLES `swd_msg` WRITE;
/*!40000 ALTER TABLE `swd_msg` DISABLE KEYS */;
/*!40000 ALTER TABLE `swd_msg` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `swd_msg_log`
--

DROP TABLE IF EXISTS `swd_msg_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `swd_msg_log` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(20) NOT NULL,
  `userid` int(10) unsigned NOT NULL DEFAULT '0',
  `receiver` varchar(20) NOT NULL DEFAULT '',
  `verifycode` int(10) unsigned DEFAULT NULL,
  `codekey` varchar(32) NOT NULL DEFAULT '',
  `content` text,
  `quantity` int(10) DEFAULT '0',
  `type` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(3) DEFAULT '0',
  `message` varchar(100) DEFAULT NULL,
  `add_time` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `swd_msg_log`
--

LOCK TABLES `swd_msg_log` WRITE;
/*!40000 ALTER TABLE `swd_msg_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `swd_msg_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `swd_msg_template`
--

DROP TABLE IF EXISTS `swd_msg_template`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `swd_msg_template` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(30) NOT NULL,
  `scene` varchar(50) NOT NULL,
  `signName` varchar(50) NOT NULL,
  `templateId` varchar(40) NOT NULL,
  `content` varchar(255) NOT NULL DEFAULT '',
  `add_time` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `swd_msg_template`
--

LOCK TABLES `swd_msg_template` WRITE;
/*!40000 ALTER TABLE `swd_msg_template` DISABLE KEYS */;
/*!40000 ALTER TABLE `swd_msg_template` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `swd_navigation`
--

DROP TABLE IF EXISTS `swd_navigation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `swd_navigation` (
  `nav_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(10) DEFAULT 'middle',
  `title` varchar(60) NOT NULL DEFAULT '',
  `link` varchar(255) DEFAULT '',
  `sort_order` tinyint(3) unsigned DEFAULT '255',
  `if_show` int(1) DEFAULT '1',
  `open_new` tinyint(3) unsigned DEFAULT '0',
  `hot` tinyint(3) DEFAULT '0',
  PRIMARY KEY (`nav_id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `swd_navigation`
--

LOCK TABLES `swd_navigation` WRITE;
/*!40000 ALTER TABLE `swd_navigation` DISABLE KEYS */;
INSERT INTO `swd_navigation` VALUES (1,'middle','品牌女装','channel/index.html?id=154318705971',1,1,0,0),(2,'middle','手机数码','channel/index.html?id=154318852528',2,1,0,0),(3,'middle','领券中心','coupon/index.html',255,1,0,0),(4,'middle','家用电器','search/goods.html?cate_id=21',3,1,0,0),(5,'middle','店铺街','search/store.html',4,1,0,0),(6,'middle','积分商城','integral/index.html',255,1,0,0),(7,'middle','限时促销','limitbuy/index.html',255,1,0,0),(8,'middle','品牌专区','brand/index.html',255,1,0,0);
/*!40000 ALTER TABLE `swd_navigation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `swd_order`
--

DROP TABLE IF EXISTS `swd_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `swd_order` (
  `order_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `order_sn` varchar(20) NOT NULL DEFAULT '',
  `gtype` varchar(10) DEFAULT 'material',
  `otype` varchar(10) DEFAULT 'normal',
  `seller_id` int(10) unsigned NOT NULL DEFAULT '0',
  `seller_name` varchar(100) DEFAULT NULL,
  `buyer_id` int(10) unsigned NOT NULL DEFAULT '0',
  `buyer_name` varchar(100) DEFAULT NULL,
  `buyer_email` varchar(60) DEFAULT '',
  `status` tinyint(3) unsigned DEFAULT '0',
  `add_time` int(10) unsigned DEFAULT NULL,
  `payment_name` varchar(100) DEFAULT NULL,
  `payment_code` varchar(20) DEFAULT '',
  `out_trade_sn` varchar(20) DEFAULT '',
  `pay_time` int(10) unsigned DEFAULT NULL,
  `pay_message` varchar(255) DEFAULT '',
  `ship_time` int(10) unsigned DEFAULT NULL,
  `express_code` varchar(20) DEFAULT NULL,
  `express_no` varchar(50) DEFAULT NULL,
  `express_comkey` varchar(30) DEFAULT NULL,
  `express_company` varchar(50) DEFAULT NULL,
  `finished_time` int(10) unsigned DEFAULT NULL,
  `goods_amount` decimal(10,2) unsigned DEFAULT '0.00',
  `discount` decimal(10,2) unsigned DEFAULT '0.00',
  `order_amount` decimal(10,2) unsigned DEFAULT '0.00',
  `evaluation_status` tinyint(1) unsigned DEFAULT '0',
  `evaluation_time` int(10) unsigned DEFAULT NULL,
  `service_evaluation` decimal(10,2) DEFAULT '0.00',
  `shipped_evaluation` decimal(10,2) DEFAULT '0.00',
  `anonymous` tinyint(3) unsigned DEFAULT '0',
  `postscript` varchar(255) DEFAULT '',
  `pay_alter` tinyint(1) unsigned DEFAULT '0',
  `flag` int(1) DEFAULT '0',
  `memo` varchar(255) DEFAULT '',
  `adjust_amount` decimal(10,2) DEFAULT '0.00',
  `guider_id` int(10) unsigned DEFAULT '0',
  PRIMARY KEY (`order_id`),
  KEY `order_sn` (`order_sn`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `swd_order`
--

LOCK TABLES `swd_order` WRITE;
/*!40000 ALTER TABLE `swd_order` DISABLE KEYS */;
/*!40000 ALTER TABLE `swd_order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `swd_order_extm`
--

DROP TABLE IF EXISTS `swd_order_extm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `swd_order_extm` (
  `order_id` int(10) unsigned NOT NULL DEFAULT '0',
  `consignee` varchar(60) NOT NULL DEFAULT '',
  `region_id` int(10) unsigned NOT NULL DEFAULT '0',
  `region_name` varchar(255) NOT NULL DEFAULT '',
  `address` varchar(255) NOT NULL DEFAULT '',
  `zipcode` varchar(20) DEFAULT '',
  `phone_tel` varchar(60) DEFAULT '',
  `phone_mob` varchar(20) DEFAULT '',
  `shipping_name` varchar(100) DEFAULT NULL,
  `shipping_fee` decimal(10,2) DEFAULT '0.00',
  PRIMARY KEY (`order_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `swd_order_extm`
--

LOCK TABLES `swd_order_extm` WRITE;
/*!40000 ALTER TABLE `swd_order_extm` DISABLE KEYS */;
/*!40000 ALTER TABLE `swd_order_extm` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `swd_order_goods`
--

DROP TABLE IF EXISTS `swd_order_goods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `swd_order_goods` (
  `rec_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `order_id` int(10) unsigned NOT NULL DEFAULT '0',
  `goods_id` int(10) unsigned NOT NULL DEFAULT '0',
  `goods_name` varchar(255) DEFAULT '',
  `spec_id` int(10) unsigned DEFAULT '0',
  `specification` varchar(255) DEFAULT NULL,
  `price` decimal(10,2) unsigned DEFAULT '0.00',
  `quantity` int(10) unsigned DEFAULT '1',
  `goods_image` varchar(255) DEFAULT NULL,
  `evaluation` tinyint(1) unsigned DEFAULT '0',
  `comment` varchar(255) DEFAULT '',
  `images` text,
  `is_valid` tinyint(1) unsigned DEFAULT '1',
  `reply_comment` varchar(255) DEFAULT NULL,
  `reply_time` int(11) DEFAULT NULL,
  `inviteType` varchar(20) DEFAULT '',
  `inviteRatio` varchar(255) DEFAULT '',
  `inviteUid` int(11) DEFAULT '0',
  `status` varchar(50) DEFAULT '',
  PRIMARY KEY (`rec_id`),
  KEY `order_id` (`order_id`,`goods_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `swd_order_goods`
--

LOCK TABLES `swd_order_goods` WRITE;
/*!40000 ALTER TABLE `swd_order_goods` DISABLE KEYS */;
/*!40000 ALTER TABLE `swd_order_goods` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `swd_order_integral`
--

DROP TABLE IF EXISTS `swd_order_integral`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `swd_order_integral` (
  `order_id` int(11) NOT NULL,
  `buyer_id` int(11) NOT NULL,
  `frozen_integral` decimal(10,2) DEFAULT '0.00',
  PRIMARY KEY (`order_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `swd_order_integral`
--

LOCK TABLES `swd_order_integral` WRITE;
/*!40000 ALTER TABLE `swd_order_integral` DISABLE KEYS */;
/*!40000 ALTER TABLE `swd_order_integral` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `swd_order_log`
--

DROP TABLE IF EXISTS `swd_order_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `swd_order_log` (
  `log_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `order_id` int(10) unsigned NOT NULL DEFAULT '0',
  `operator` varchar(60) DEFAULT '',
  `order_status` varchar(60) DEFAULT '',
  `changed_status` varchar(60) DEFAULT '',
  `remark` varchar(255) DEFAULT NULL,
  `log_time` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`log_id`),
  KEY `order_id` (`order_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `swd_order_log`
--

LOCK TABLES `swd_order_log` WRITE;
/*!40000 ALTER TABLE `swd_order_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `swd_order_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `swd_partner`
--

DROP TABLE IF EXISTS `swd_partner`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `swd_partner` (
  `partner_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `store_id` int(10) unsigned DEFAULT '0',
  `title` varchar(100) DEFAULT '',
  `link` varchar(255) DEFAULT '',
  `logo` varchar(255) DEFAULT NULL,
  `sort_order` tinyint(3) unsigned DEFAULT '255',
  `if_show` tinyint(1) unsigned DEFAULT NULL,
  PRIMARY KEY (`partner_id`),
  KEY `store_id` (`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `swd_partner`
--

LOCK TABLES `swd_partner` WRITE;
/*!40000 ALTER TABLE `swd_partner` DISABLE KEYS */;
/*!40000 ALTER TABLE `swd_partner` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `swd_plugin`
--

DROP TABLE IF EXISTS `swd_plugin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `swd_plugin` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `instance` varchar(20) NOT NULL,
  `code` varchar(20) NOT NULL,
  `name` varchar(100) NOT NULL,
  `subname` varchar(50) NOT NULL,
  `desc` varchar(255) NOT NULL,
  `config` text NOT NULL,
  `enabled` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `swd_plugin`
--

LOCK TABLES `swd_plugin` WRITE;
/*!40000 ALTER TABLE `swd_plugin` DISABLE KEYS */;
INSERT INTO `swd_plugin` VALUES (1,'payment','deposit','预存款','','预存款是您在网站上的虚拟资金帐户','',1);
/*!40000 ALTER TABLE `swd_plugin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `swd_promotool_item`
--

DROP TABLE IF EXISTS `swd_promotool_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `swd_promotool_item` (
  `piid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `goods_id` int(10) NOT NULL,
  `appid` varchar(20) NOT NULL,
  `store_id` int(10) DEFAULT '0',
  `config` text,
  `status` int(1) DEFAULT '1',
  `add_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`piid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `swd_promotool_item`
--

LOCK TABLES `swd_promotool_item` WRITE;
/*!40000 ALTER TABLE `swd_promotool_item` DISABLE KEYS */;
/*!40000 ALTER TABLE `swd_promotool_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `swd_promotool_setting`
--

DROP TABLE IF EXISTS `swd_promotool_setting`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `swd_promotool_setting` (
  `psid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `appid` varchar(20) NOT NULL,
  `store_id` int(10) DEFAULT '0',
  `rules` text,
  `status` tinyint(1) DEFAULT '0',
  `add_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`psid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `swd_promotool_setting`
--

LOCK TABLES `swd_promotool_setting` WRITE;
/*!40000 ALTER TABLE `swd_promotool_setting` DISABLE KEYS */;
/*!40000 ALTER TABLE `swd_promotool_setting` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `swd_recommend`
--

DROP TABLE IF EXISTS `swd_recommend`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `swd_recommend` (
  `recom_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `recom_name` varchar(100) NOT NULL DEFAULT '',
  `store_id` int(10) unsigned DEFAULT '0',
  PRIMARY KEY (`recom_id`),
  KEY `store_id` (`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `swd_recommend`
--

LOCK TABLES `swd_recommend` WRITE;
/*!40000 ALTER TABLE `swd_recommend` DISABLE KEYS */;
/*!40000 ALTER TABLE `swd_recommend` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `swd_recommend_goods`
--

DROP TABLE IF EXISTS `swd_recommend_goods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `swd_recommend_goods` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `goods_id` int(10) unsigned NOT NULL DEFAULT '0',
  `recom_id` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `goods_id` (`goods_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `swd_recommend_goods`
--

LOCK TABLES `swd_recommend_goods` WRITE;
/*!40000 ALTER TABLE `swd_recommend_goods` DISABLE KEYS */;
/*!40000 ALTER TABLE `swd_recommend_goods` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `swd_refund`
--

DROP TABLE IF EXISTS `swd_refund`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `swd_refund` (
  `refund_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `tradeNo` varchar(30) NOT NULL,
  `refund_sn` varchar(30) NOT NULL,
  `title` varchar(255) DEFAULT '',
  `refund_reason` varchar(50) DEFAULT '',
  `refund_desc` varchar(255) DEFAULT '',
  `total_fee` decimal(10,2) DEFAULT '0.00',
  `goods_fee` decimal(10,2) DEFAULT '0.00',
  `shipping_fee` decimal(10,2) DEFAULT '0.00',
  `refund_total_fee` decimal(10,2) DEFAULT '0.00',
  `refund_goods_fee` decimal(10,2) DEFAULT '0.00',
  `refund_shipping_fee` decimal(10,2) DEFAULT '0.00',
  `buyer_id` int(10) NOT NULL,
  `seller_id` int(10) NOT NULL,
  `status` varchar(100) DEFAULT '',
  `shipped` int(11) DEFAULT '0',
  `intervene` int(1) DEFAULT '0',
  `created` int(11) DEFAULT NULL,
  `finished` int(11) DEFAULT NULL,
  PRIMARY KEY (`refund_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `swd_refund`
--

LOCK TABLES `swd_refund` WRITE;
/*!40000 ALTER TABLE `swd_refund` DISABLE KEYS */;
/*!40000 ALTER TABLE `swd_refund` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `swd_refund_message`
--

DROP TABLE IF EXISTS `swd_refund_message`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `swd_refund_message` (
  `rm_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `owner_id` int(11) NOT NULL,
  `owner_role` varchar(10) DEFAULT '',
  `refund_id` int(11) NOT NULL,
  `content` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `created` int(11) DEFAULT NULL,
  PRIMARY KEY (`rm_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `swd_refund_message`
--

LOCK TABLES `swd_refund_message` WRITE;
/*!40000 ALTER TABLE `swd_refund_message` DISABLE KEYS */;
/*!40000 ALTER TABLE `swd_refund_message` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `swd_region`
--

DROP TABLE IF EXISTS `swd_region`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `swd_region` (
  `region_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `region_name` varchar(100) NOT NULL DEFAULT '',
  `parent_id` int(10) unsigned DEFAULT '0',
  `sort_order` tinyint(3) unsigned DEFAULT '255',
  `if_show` int(1) DEFAULT '1',
  PRIMARY KEY (`region_id`),
  KEY `parent_id` (`parent_id`)
) ENGINE=MyISAM AUTO_INCREMENT=477 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `swd_region`
--

LOCK TABLES `swd_region` WRITE;
/*!40000 ALTER TABLE `swd_region` DISABLE KEYS */;
INSERT INTO `swd_region` VALUES (2,'北京',0,1,1),(3,'北京市',2,255,1),(4,'东城',3,255,1),(5,'西城',3,255,1),(6,'崇文',3,255,1),(7,'宣武',3,255,1),(8,'朝阳',3,255,1),(9,'海淀',3,255,1),(10,'丰台',3,255,1),(11,'石景山',3,255,1),(12,'门头沟',3,255,1),(13,'房山',3,255,1),(14,'通州',3,255,1),(15,'顺义',3,255,1),(16,'大兴',3,255,1),(17,'昌平',3,255,1),(18,'平谷',3,255,1),(19,'怀柔',3,255,1),(20,'延庆',3,255,1),(21,'密云',3,255,1),(22,'天津市',476,255,1),(23,'和平区',22,255,1),(24,'河东区',22,255,1),(25,'河西区',22,255,1),(26,'南开区',22,255,1),(27,'河北区',22,255,1),(28,'红桥区',22,255,1),(29,'塘沽区',22,255,1),(30,'汉沽区',22,255,1),(31,'大港区',22,255,1),(32,'西青区',22,255,1),(33,'东丽区',22,255,1),(34,'津南区',22,255,1),(35,'北辰区',22,255,1),(36,'武清区',22,255,1),(37,'宝坻区',22,255,1),(38,'静海县',22,255,1),(39,'宁河县',22,255,1),(40,'蓟县',22,255,1),(41,'上海市',474,255,1),(42,'浦东新区',41,255,1),(43,'徐汇区',41,255,1),(44,'长宁区',41,255,1),(45,'普陀区',41,255,1),(46,'闸北区',41,255,1),(47,'虹口区',41,255,1),(48,'杨浦区',41,255,1),(49,'黄浦区',41,255,1),(50,'卢湾区',41,255,1),(51,'静安区',41,255,1),(52,'宝山区',41,255,1),(53,'闵行区',41,255,1),(54,'嘉定区',41,255,1),(55,'金山区',41,255,1),(56,'松江区',41,255,1),(57,'青浦区',41,255,1),(58,'崇明县',41,255,1),(59,'奉贤区',41,255,1),(60,'南汇区',41,255,1),(61,'重庆市',475,255,1),(62,'渝中',61,255,1),(63,'大渡口',61,255,1),(64,'江北',61,255,1),(65,'沙坪坝',61,255,1),(66,'九龙坡',61,255,1),(67,'南岸',61,255,1),(68,'北碚',61,255,1),(69,'渝北',61,255,1),(70,'巴南',61,255,1),(71,'北部新区',61,255,1),(72,'经开区',61,255,1),(73,'万盛',61,255,1),(74,'双桥',61,255,1),(75,'綦江',61,255,1),(76,'潼南',61,255,1),(77,'铜梁',61,255,1),(78,'大足',61,255,1),(79,'荣昌',61,255,1),(80,'璧山',61,255,1),(81,'江津',61,255,1),(82,'合川',61,255,1),(83,'永川',61,255,1),(84,'南川',61,255,1),(85,'万州',61,255,1),(86,'涪陵',61,255,1),(87,'黔江',61,255,1),(88,'长寿',61,255,1),(89,'梁平',61,255,1),(90,'城口',61,255,1),(91,'丰都',61,255,1),(92,'垫江',61,255,1),(93,'武隆',61,255,1),(94,'忠县',61,255,1),(95,'开县',61,255,1),(96,'云阳',61,255,1),(97,'奉节',61,255,1),(98,'巫山',61,255,1),(99,'巫溪',61,255,1),(100,'石柱',61,255,1),(101,'秀山',61,255,1),(102,'酉阳',61,255,1),(103,'彭水',61,255,1),(104,'河北省',0,255,1),(105,'石家庄',104,255,1),(106,'衡水',104,255,1),(107,'唐山',104,255,1),(108,'秦皇岛',104,255,1),(109,'张家口',104,255,1),(110,'承德',104,255,1),(111,'邯郸',104,255,1),(112,'沧州',104,255,1),(113,'邢台',104,255,1),(114,'保定',104,255,1),(115,'廊坊',104,255,1),(116,'山西省',0,255,1),(117,'太原市',116,255,1),(118,'大同市',116,255,1),(119,'朔州市',116,255,1),(120,'忻州市',116,255,1),(121,'长治市',116,255,1),(122,'阳泉市',116,255,1),(123,'晋中市',116,255,1),(124,'吕梁市',116,255,1),(125,'晋城市',116,255,1),(126,'临汾市',116,255,1),(127,'运城市',116,255,1),(128,'辽宁省',0,255,1),(129,'沈阳',128,255,1),(130,'大连',128,255,1),(131,'鞍山',128,255,1),(132,'抚顺',128,255,1),(133,'本溪',128,255,1),(134,'丹东',128,255,1),(135,'锦州',128,255,1),(136,'营口',128,255,1),(137,'阜新',128,255,1),(138,'辽阳',128,255,1),(139,'铁岭',128,255,1),(140,'朝阳',128,255,1),(141,'盘锦',128,255,1),(142,'葫芦岛',128,255,1),(143,'吉林省',0,255,1),(144,'长春市',143,255,1),(145,'吉林市',143,255,1),(146,'四平市',143,255,1),(147,'辽源市',143,255,1),(148,'通化市',143,255,1),(149,'白山市',143,255,1),(150,'松原市',143,255,1),(151,'白城市',143,255,1),(152,'延边州',143,255,1),(153,'黑龙江省',0,255,1),(154,'哈尔滨',153,255,1),(155,'齐齐哈尔',153,255,1),(156,'牡丹江',153,255,1),(157,'佳木斯',153,255,1),(158,'大庆',153,255,1),(159,'鸡西',153,255,1),(160,'伊春',153,255,1),(161,'双鸭山',153,255,1),(162,'七台河',153,255,1),(163,'鹤岗',153,255,1),(164,'黑河',153,255,1),(165,'绥化',153,255,1),(166,'大兴安岭',153,255,1),(167,'内蒙古自治区',0,255,1),(168,'呼和浩特市',167,255,1),(169,'包头市',167,255,1),(170,'乌海市',167,255,1),(171,'赤峰市',167,255,1),(172,'通辽市',167,255,1),(173,'鄂尔多斯市',167,255,1),(174,'呼伦贝尔市',167,255,1),(175,'巴彦淖尔市',167,255,1),(176,'乌兰察布市',167,255,1),(177,'锡林郭勒盟',167,255,1),(178,'兴安盟',167,255,1),(179,'阿拉善盟',167,255,1),(180,'江苏省',0,255,1),(181,'南京',180,255,1),(182,'苏州',180,255,1),(183,'无锡',180,255,1),(184,'常州',180,255,1),(185,'扬州',180,255,1),(186,'南通',180,255,1),(187,'镇江',180,255,1),(188,'泰州',180,255,1),(189,'淮安',180,255,1),(190,'徐州',180,255,1),(191,'盐城',180,255,1),(192,'宿迁',180,255,1),(193,'连云港',180,255,1),(194,'浙江省',0,255,1),(195,'杭州',194,255,1),(196,'宁波',194,255,1),(197,'温州',194,255,1),(198,'嘉兴',194,255,1),(199,'湖州',194,255,1),(200,'绍兴',194,255,1),(201,'金华',194,255,1),(202,'衢州',194,255,1),(203,'舟山',194,255,1),(204,'台州',194,255,1),(205,'丽水',194,255,1),(206,'安徽省',0,255,1),(207,'淮北市',206,255,1),(208,'合肥市',206,255,1),(209,'六安市',206,255,1),(210,'亳州市',206,255,1),(211,'宿州市',206,255,1),(212,'阜阳市',206,255,1),(213,'蚌埠市',206,255,1),(214,'淮南市',206,255,1),(215,'滁州市',206,255,1),(216,'巢湖市',206,255,1),(217,'芜湖市',206,255,1),(218,'马鞍山',206,255,1),(219,'安庆市',206,255,1),(220,'池州市',206,255,1),(221,'铜陵市',206,255,1),(222,'宣城市',206,255,1),(223,'黄山市',206,255,1),(224,'福建省',0,255,1),(225,'福州市',224,255,1),(226,'厦门市',224,255,1),(227,'莆田市',224,255,1),(228,'三明市',224,255,1),(229,'泉州市',224,255,1),(230,'漳州市',224,255,1),(231,'南平市',224,255,1),(232,'龙岩市',224,255,1),(233,'宁德市',224,255,1),(234,'江西省',0,255,1),(235,'南昌市',234,255,1),(236,'景德镇市',234,255,1),(237,'萍乡市',234,255,1),(238,'九江市',234,255,1),(239,'新余市',234,255,1),(240,'鹰潭市',234,255,1),(241,'赣州市',234,255,1),(242,'吉安市',234,255,1),(243,'宜春市',234,255,1),(244,'抚州市',234,255,1),(245,'上饶市',234,255,1),(246,'山东省',0,255,1),(247,'济南',246,255,1),(248,'青岛',246,255,1),(249,'淄博',246,255,1),(250,'泰安',246,255,1),(251,'济宁',246,255,1),(252,'德州',246,255,1),(253,'日照',246,255,1),(254,'潍坊',246,255,1),(255,'枣庄',246,255,1),(256,'临沂',246,255,1),(257,'莱芜',246,255,1),(258,'滨州',246,255,1),(259,'聊城',246,255,1),(260,'菏泽',246,255,1),(261,'烟台',246,255,1),(262,'威海',246,255,1),(263,'东营',246,255,1),(264,'河南省',0,255,1),(265,'郑州市',264,255,1),(266,'洛阳市',264,255,1),(267,'开封市',264,255,1),(268,'平顶山市',264,255,1),(269,'南阳市',264,255,1),(270,'焦作市',264,255,1),(271,'信阳市',264,255,1),(272,'济源市',264,255,1),(273,'周口市',264,255,1),(274,'安阳市',264,255,1),(275,'驻马店市',264,255,1),(276,'新乡市',264,255,1),(277,'鹤壁市',264,255,1),(278,'商丘市',264,255,1),(279,'漯河市',264,255,1),(280,'许昌市',264,255,1),(281,'三门峡市',264,255,1),(282,'濮阳市',264,255,1),(283,'湖北省',0,255,1),(284,'武汉',283,255,1),(285,'宜昌',283,255,1),(286,'荆州',283,255,1),(287,'十堰',283,255,1),(288,'襄樊',283,255,1),(289,'黄石',283,255,1),(290,'黄冈',283,255,1),(291,'恩施',283,255,1),(292,'荆门',283,255,1),(293,'咸宁',283,255,1),(294,'孝感',283,255,1),(295,'鄂州',283,255,1),(296,'天门',283,255,1),(297,'仙桃',283,255,1),(298,'随州',283,255,1),(299,'潜江',283,255,1),(300,'神农架',283,255,1),(301,'湖南省',0,255,1),(302,'长沙市',301,255,1),(303,'株洲市',301,255,1),(304,'湘潭市',301,255,1),(305,'邵阳市',301,255,1),(306,'吉首市',301,255,1),(307,'岳阳市',301,255,1),(308,'娄底市',301,255,1),(309,'怀化市',301,255,1),(310,'永州市',301,255,1),(311,'郴州市',301,255,1),(312,'常德市',301,255,1),(313,'衡阳市',301,255,1),(314,'益阳市',301,255,1),(315,'张家界',301,255,1),(316,'湘西州',301,255,1),(317,'广东省',0,255,1),(318,'广州',317,255,1),(319,'深圳',317,255,1),(320,'珠海',317,255,1),(321,'汕头',317,255,1),(322,'佛山',317,255,1),(323,'东莞',317,255,1),(324,'中山',317,255,1),(325,'江门',317,255,1),(326,'惠州',317,255,1),(327,'肇庆',317,255,1),(328,'阳江',317,255,1),(329,'韶关',317,255,1),(330,'河源',317,255,1),(331,'梅州',317,255,1),(332,'清远',317,255,1),(333,'云浮',317,255,1),(334,'茂名',317,255,1),(335,'汕尾',317,255,1),(336,'揭阳',317,255,1),(337,'潮州',317,255,1),(338,'湛江',317,255,1),(339,'海南省',0,255,1),(340,'海口市',339,255,1),(341,'三亚市',339,255,1),(342,'广西壮族自治区',0,255,1),(343,'南宁',342,255,1),(344,'柳州',342,255,1),(345,'桂林',342,255,1),(346,'梧州',342,255,1),(347,'北海',342,255,1),(348,'防城港',342,255,1),(349,'钦州',342,255,1),(350,'贵港',342,255,1),(351,'玉林',342,255,1),(352,'百色',342,255,1),(353,'贺州',342,255,1),(354,'河池',342,255,1),(355,'来宾',342,255,1),(356,'崇左',342,255,1),(357,'四川省',0,255,1),(358,'成都',357,255,1),(359,'自贡',357,255,1),(360,'攀枝花',357,255,1),(361,'泸州',357,255,1),(362,'德阳',357,255,1),(363,'绵阳',357,255,1),(364,'广元',357,255,1),(365,'遂宁',357,255,1),(366,'内江',357,255,1),(367,'资阳',357,255,1),(368,'乐山',357,255,1),(369,'眉山',357,255,1),(370,'南充',357,255,1),(371,'宜宾',357,255,1),(372,'广安',357,255,1),(373,'达州',357,255,1),(374,'巴中',357,255,1),(375,'雅安',357,255,1),(376,'阿坝',357,255,1),(377,'甘孜',357,255,1),(378,'凉山',357,255,1),(379,'贵州省',0,255,1),(380,'贵阳市',379,255,1),(381,'遵义市',379,255,1),(382,'安顺市',379,255,1),(383,'六盘水市',379,255,1),(384,'毕节地区',379,255,1),(385,'铜仁地区',379,255,1),(386,'黔东南州',379,255,1),(387,'黔南州',379,255,1),(388,'黔西南州',379,255,1),(389,'云南省',0,255,1),(390,'昆明市',389,255,1),(391,'曲靖市',389,255,1),(392,'红河哈尼族彝族自治州',389,255,1),(393,'昭通市',389,255,1),(394,'玉溪市',389,255,1),(395,'德宏傣族景颇族自治州',389,255,1),(396,'丽江市',389,255,1),(397,'迪庆藏族自治州',389,255,1),(398,'文山壮族苗族自治州',389,255,1),(399,'思茅市',389,255,1),(400,'大理白族自治州',389,255,1),(401,'怒江傈僳族自治州',389,255,1),(402,'保山市',389,255,1),(403,'楚雄彝族自治州',389,255,1),(404,'西双版纳傣族自治州',389,255,1),(405,'临沧市',389,255,1),(406,'西藏自治区',0,255,1),(407,'拉萨',406,255,1),(408,'日喀则',406,255,1),(409,'林芝',406,255,1),(410,'山南',406,255,1),(411,'那曲',406,255,1),(412,'昌都',406,255,1),(413,'阿里',406,255,1),(414,'陕西省',0,255,1),(415,'西安市',414,255,1),(416,'铜川市',414,255,1),(417,'宝鸡市',414,255,1),(418,'咸阳市',414,255,1),(419,'渭南市',414,255,1),(420,'延安市',414,255,1),(421,'汉中市',414,255,1),(422,'榆林市',414,255,1),(423,'安康市',414,255,1),(424,'商洛市',414,255,1),(425,'甘肃省',0,255,1),(426,'兰州市',425,255,1),(427,'嘉峪关',425,255,1),(428,'金昌市',425,255,1),(429,'白银市',425,255,1),(430,'天水市',425,255,1),(431,'酒泉市',425,255,1),(432,'张掖市',425,255,1),(433,'武威市',425,255,1),(434,'定西市',425,255,1),(435,'陇南市',425,255,1),(436,'平凉市',425,255,1),(437,'庆阳市',425,255,1),(438,'临夏州',425,255,1),(439,'甘南州',425,255,1),(440,'青海省',0,255,1),(441,'西宁市',440,255,1),(442,'海东行署',440,255,1),(443,'海北藏族自治州',440,255,1),(444,'海南藏族自治州',440,255,1),(445,'海西州',440,255,1),(446,'黄南藏族自治州',440,255,1),(447,'玉树藏族自治州',440,255,1),(448,'果洛藏族自治州',440,255,1),(449,'宁夏回族自治区',0,255,1),(450,'银川市',449,255,1),(451,'石嘴山市',449,255,1),(452,'吴忠市',449,255,1),(453,'固原市',449,255,1),(454,'中卫市',449,255,1),(455,'新疆维吾尔自治区',0,255,1),(456,'伊犁哈萨克自治州',455,255,1),(457,'乌鲁木齐市',455,255,1),(458,'昌吉回族自治州',455,255,1),(459,'石河子市',455,255,1),(460,'克拉玛依市',455,255,1),(461,'阿勒泰地区',455,255,1),(462,'博尔塔拉蒙古自治州',455,255,1),(463,'塔城地区',455,255,1),(464,'和田地区',455,255,1),(465,'克孜勒苏克尔克孜自治州',455,255,1),(466,'喀什地区',455,255,1),(467,'阿克苏地区',455,255,1),(468,'巴音郭楞蒙古自治州',455,255,1),(469,'吐鲁番地区',455,255,1),(470,'哈密地区',455,255,1),(471,'五家渠市',455,255,1),(472,'阿拉尔市',455,255,1),(473,'图木舒克市',455,255,1),(474,'上海',0,3,1),(475,'重庆',0,4,1),(476,'天津',0,2,1);
/*!40000 ALTER TABLE `swd_region` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `swd_report`
--

DROP TABLE IF EXISTS `swd_report`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `swd_report` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `userid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '举报人ID',
  `store_id` int(10) DEFAULT NULL COMMENT '被举报店铺ID',
  `goods_id` int(10) DEFAULT NULL COMMENT '被举报商品ID',
  `content` varchar(255) DEFAULT NULL COMMENT '举报内容',
  `images` text,
  `add_time` int(10) DEFAULT NULL COMMENT '添加时间',
  `status` int(3) DEFAULT NULL COMMENT '状态',
  `examine` varchar(20) DEFAULT NULL COMMENT '审核员',
  `verify` varchar(255) DEFAULT NULL COMMENT '审核说明',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `swd_report`
--

LOCK TABLES `swd_report` WRITE;
/*!40000 ALTER TABLE `swd_report` DISABLE KEYS */;
/*!40000 ALTER TABLE `swd_report` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `swd_scategory`
--

DROP TABLE IF EXISTS `swd_scategory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `swd_scategory` (
  `cate_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cate_name` varchar(100) NOT NULL DEFAULT '',
  `parent_id` int(10) unsigned DEFAULT '0',
  `sort_order` tinyint(3) unsigned DEFAULT '255',
  `if_show` int(1) DEFAULT '1',
  PRIMARY KEY (`cate_id`),
  KEY `parent_id` (`parent_id`)
) ENGINE=MyISAM AUTO_INCREMENT=67 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `swd_scategory`
--

LOCK TABLES `swd_scategory` WRITE;
/*!40000 ALTER TABLE `swd_scategory` DISABLE KEYS */;
INSERT INTO `swd_scategory` VALUES (1,'服饰',0,255,1),(2,'女装/女士精品',1,255,1),(3,'男装',1,255,1),(4,'女鞋',1,255,1),(5,'流行男鞋',1,255,1),(6,'运动鞋',1,255,1),(7,'女士内衣/男士内衣/家居服',1,255,1),(8,'箱包皮具/热销女包/男包',1,255,1),(9,'运动服/运动包/颈环配件',1,255,1),(10,'服饰配件/皮带/帽子/围巾',1,255,1),(11,'手机/数码/办公/家电',0,255,1),(12,'手机',11,255,1),(13,'国货精品手机',11,255,1),(14,'笔记本电脑',11,255,1),(15,'电脑硬件/台式整机/网络设备',11,255,1),(16,'MP3/MP4/iPod/录音笔',11,255,1),(17,'数码相机/摄像机/图形冲印',11,255,1),(18,'3C数码配件市场',11,255,1),(19,'网络服务/电脑软件',11,255,1),(20,'闪存卡/U盘/移动存储',11,255,1),(21,'电玩/配件/游戏/攻略',11,255,1),(22,'办公设备/文具/耗材',11,255,1),(23,'影音电器',11,255,1),(24,'美容护肤/个人护理',0,255,1),(25,'美容护肤/美体/精油',24,255,1),(26,'彩妆/香水/美发/工具',24,255,1),(27,'个人护理/保健/按摩器材',24,255,1),(28,'家居/母婴/食品',0,255,1),(29,'居家日用/厨房餐饮/卫浴洗浴',28,255,1),(30,'时尚家饰/工艺品/十字绣',28,255,1),(31,'家具/家具定制/宜家代购',28,255,1),(32,'家纺/床品/地毯/布艺',28,255,1),(33,'装潢/灯具/五金/安防/卫浴',28,255,1),(34,'保健食品',28,255,1),(35,'食品/茶叶/零食/特产',28,255,1),(36,'奶粉/尿片/母婴用品',28,255,1),(37,'益智玩具/童车/童床/书包',28,255,1),(38,'童装/童鞋/孕妇装',28,255,1),(39,'宠物/宠物食品及用品',28,255,1),(40,'厨房电器',28,255,1),(41,'生活电器',28,255,1),(42,'文体/汽车',0,255,1),(43,'书籍/杂志/报纸',42,255,1),(44,'音乐/影视/明星/乐器',42,255,1),(45,'运动/瑜伽/健身/球迷用品',42,255,1),(46,'户外/登山/野营/涉水',42,255,1),(47,'汽车/配件/改装/摩托/自行车',42,255,1),(48,'珠宝/首饰',0,255,1),(49,'饰品/流行首饰/时尚饰品',48,255,1),(50,'珠宝/钻石/翡翠/黄金',48,255,1),(51,'品牌手表/流行手表',48,255,1),(52,'收藏/爱好',0,255,1),(53,'古董/邮币/字画/收藏',52,255,1),(54,'玩具/模型/娃娃/人偶',52,255,1),(55,'ZIPPO/瑞士军刀/眼镜',52,255,1),(56,'游戏/话费',0,255,1),(57,'腾讯QQ专区',56,255,1),(58,'网游装备/游戏币/帐号/代练',56,255,1),(59,'网络游戏点卡',56,255,1),(60,'移动/联通/小灵通充值中心',56,255,1),(61,'IP卡/网络电话/手机号码',56,255,1),(62,'生活服务',0,255,1),(63,'成人用品/避孕用品/情趣内衣',62,255,1),(64,'网店装修/物流快递/图片存储',62,255,1),(65,'鲜花速递/蛋糕配送/园艺花艺',62,255,1),(66,'演出/旅游/吃喝玩乐折扣券',62,255,1);
/*!40000 ALTER TABLE `swd_scategory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `swd_sgrade`
--

DROP TABLE IF EXISTS `swd_sgrade`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `swd_sgrade` (
  `grade_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `grade_name` varchar(60) NOT NULL DEFAULT '',
  `goods_limit` int(10) unsigned DEFAULT '0',
  `space_limit` int(10) unsigned DEFAULT '0',
  `charge` varchar(100) DEFAULT '',
  `need_confirm` tinyint(3) unsigned DEFAULT '0',
  `description` varchar(255) DEFAULT '',
  `skins` varchar(255) DEFAULT '',
  `wap_skins` varchar(255) DEFAULT '',
  `sort_order` tinyint(4) unsigned DEFAULT '255',
  PRIMARY KEY (`grade_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `swd_sgrade`
--

LOCK TABLES `swd_sgrade` WRITE;
/*!40000 ALTER TABLE `swd_sgrade` DISABLE KEYS */;
INSERT INTO `swd_sgrade` VALUES (1,'系统默认',100,20,'0',0,'测试用户请选择“默认等级”，可以立即开通','default|default','default|default',255),(2,'认证店铺',2000,200,'0',1,'申请时需要上传身份证和营业执照','default|default','default|default',255);
/*!40000 ALTER TABLE `swd_sgrade` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `swd_sgrade_integral`
--

DROP TABLE IF EXISTS `swd_sgrade_integral`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `swd_sgrade_integral` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `sgrade_id` int(10) NOT NULL DEFAULT '0',
  `buy_integral` decimal(10,2) DEFAULT '0.00',
  PRIMARY KEY (`id`),
  KEY `sgrade_id` (`sgrade_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `swd_sgrade_integral`
--

LOCK TABLES `swd_sgrade_integral` WRITE;
/*!40000 ALTER TABLE `swd_sgrade_integral` DISABLE KEYS */;
/*!40000 ALTER TABLE `swd_sgrade_integral` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `swd_store`
--

DROP TABLE IF EXISTS `swd_store`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `swd_store` (
  `store_id` int(10) unsigned NOT NULL DEFAULT '0',
  `store_name` varchar(100) NOT NULL DEFAULT '',
  `owner_name` varchar(60) DEFAULT '',
  `identity_card` varchar(60) DEFAULT '',
  `region_id` int(10) unsigned DEFAULT NULL,
  `region_name` varchar(100) DEFAULT NULL,
  `address` varchar(255) DEFAULT '',
  `zipcode` varchar(20) DEFAULT '',
  `tel` varchar(60) DEFAULT '',
  `sgrade` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `stype` varchar(20) NOT NULL DEFAULT 'personal',
  `joinway` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `apply_remark` varchar(255) DEFAULT '',
  `credit_value` decimal(10,2) unsigned DEFAULT '0.00',
  `praise_rate` decimal(10,2) unsigned DEFAULT '0.00',
  `domain` varchar(255) DEFAULT NULL,
  `state` tinyint(3) unsigned DEFAULT '0',
  `close_reason` varchar(255) DEFAULT '',
  `add_time` int(10) unsigned DEFAULT NULL,
  `end_time` int(10) unsigned DEFAULT '0',
  `certification` varchar(255) DEFAULT NULL,
  `sort_order` int(10) unsigned DEFAULT '255',
  `recommended` tinyint(4) DEFAULT '0',
  `theme` varchar(60) DEFAULT '',
  `store_banner` varchar(255) DEFAULT NULL,
  `store_logo` varchar(255) DEFAULT NULL,
  `description` text,
  `identity_front` varchar(255) DEFAULT '',
  `identity_back` varchar(255) DEFAULT '',
  `business_license` varchar(255) DEFAULT '',
  `im_qq` varchar(60) DEFAULT '',
  `swiper` text,
  `longitude` varchar(20) DEFAULT '',
  `latitude` varchar(20) DEFAULT '',
  `zoom` int(10) DEFAULT '15',
  PRIMARY KEY (`store_id`),
  KEY `store_name` (`store_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `swd_store`
--

LOCK TABLES `swd_store` WRITE;
/*!40000 ALTER TABLE `swd_store` DISABLE KEYS */;
INSERT INTO `swd_store` VALUES (2,'演示店铺','测试卖家','1234567890',343,'广西壮族自治区	南宁','民族大道110号','','18999999999',1,'personal',0,'',0.00,0.00,NULL,1,'',1542757210,1924934399,'',255,1,'default','','data/files/store_2/other/store_logo.png',NULL,'','','','','[{\"url\":\"data/files/store_2/swiper/swiper_1.jpg\",\"link\":\"https://www.shopwind.net\"},{\"url\":\"data/files/store_2/swiper/swiper_2.jpg\",\"link\":\"https://www.shopwind.net\"}]','','',15);
/*!40000 ALTER TABLE `swd_store` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `swd_teambuy`
--

DROP TABLE IF EXISTS `swd_teambuy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `swd_teambuy` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `goods_id` int(10) NOT NULL,
  `title` varchar(50) NOT NULL DEFAULT '',
  `status` tinyint(3) NOT NULL DEFAULT '1',
  `store_id` int(10) DEFAULT '0',
  `people` int(10) unsigned NOT NULL DEFAULT '2',
  `specs` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `swd_teambuy`
--

LOCK TABLES `swd_teambuy` WRITE;
/*!40000 ALTER TABLE `swd_teambuy` DISABLE KEYS */;
INSERT INTO `swd_teambuy` VALUES (1,24,'twopeople',1,2,2,'a:1:{i:24;a:2:{s:5:\"price\";s:1:\"8\";s:4:\"type\";s:8:\"discount\";}}'),(2,22,'twopeople',1,2,3,'a:1:{i:22;a:2:{s:5:\"price\";s:1:\"7\";s:4:\"type\";s:8:\"discount\";}}'),(3,12,'twopeople',1,2,2,'a:1:{i:12;a:2:{s:5:\"price\";s:3:\"8.9\";s:4:\"type\";s:8:\"discount\";}}'),(4,17,'twopeople',1,2,2,'a:1:{i:17;a:2:{s:5:\"price\";s:1:\"7\";s:4:\"type\";s:8:\"discount\";}}'),(5,13,'twopeople',1,2,2,'a:1:{i:13;a:2:{s:5:\"price\";s:3:\"8.4\";s:4:\"type\";s:8:\"discount\";}}'),(6,16,'twopeople',1,2,3,'a:1:{i:16;a:2:{s:5:\"price\";s:1:\"9\";s:4:\"type\";s:8:\"discount\";}}');
/*!40000 ALTER TABLE `swd_teambuy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `swd_teambuy_log`
--

DROP TABLE IF EXISTS `swd_teambuy_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `swd_teambuy_log` (
  `logid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `tbid` int(10) unsigned DEFAULT '0',
  `userid` int(10) unsigned NOT NULL DEFAULT '0',
  `order_id` int(10) unsigned NOT NULL DEFAULT '0',
  `goods_id` int(10) unsigned NOT NULL DEFAULT '0',
  `teamid` varchar(32) NOT NULL DEFAULT '',
  `leader` tinyint(3) unsigned DEFAULT '0',
  `people` int(10) unsigned NOT NULL DEFAULT '2',
  `status` tinyint(3) unsigned DEFAULT '0',
  `created` int(11) unsigned NOT NULL,
  `expired` int(11) unsigned NOT NULL,
  `pay_time` int(11) unsigned NOT NULL,
  PRIMARY KEY (`logid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `swd_teambuy_log`
--

LOCK TABLES `swd_teambuy_log` WRITE;
/*!40000 ALTER TABLE `swd_teambuy_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `swd_teambuy_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `swd_uploaded_file`
--

DROP TABLE IF EXISTS `swd_uploaded_file`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `swd_uploaded_file` (
  `file_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `store_id` int(10) unsigned DEFAULT '0',
  `file_type` varchar(60) DEFAULT '',
  `file_size` int(10) unsigned DEFAULT '0',
  `file_name` varchar(255) DEFAULT '',
  `file_path` varchar(255) NOT NULL DEFAULT '',
  `add_time` int(10) unsigned DEFAULT NULL,
  `belong` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `item_id` int(10) unsigned DEFAULT '0',
  `link_url` varchar(50) DEFAULT '',
  PRIMARY KEY (`file_id`),
  KEY `store_id` (`store_id`)
) ENGINE=MyISAM AUTO_INCREMENT=89 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `swd_uploaded_file`
--

LOCK TABLES `swd_uploaded_file` WRITE;
/*!40000 ALTER TABLE `swd_uploaded_file` DISABLE KEYS */;
INSERT INTO `swd_uploaded_file` VALUES (1,2,'png',201852,'201805071556336963.png','data/files/store_2/goods/20181121160721880.png',1542758841,2,1,''),(2,2,'png',643983,'201805071556341101.png','data/files/store_2/goods/20181121160722364.png',1542758842,2,1,''),(3,2,'png',781334,'201805071556342163.png','data/files/store_2/goods/20181121160722486.png',1542758842,2,1,''),(4,2,'jpg',28294,'201805071551342032.jpg','data/files/store_2/goods/20181121161206467.jpg',1542759126,2,1,''),(5,2,'jpg',29218,'small_201805071551333052.jpg','data/files/store_2/goods/20181121161206136.jpg',1542759126,2,1,''),(6,2,'jpg',7755,'small_201805071551342776.jpg','data/files/store_2/goods/20181121161206982.jpg',1542759127,2,1,''),(7,2,'jpg',11989,'small_201805071551345199.jpg','data/files/store_2/goods/20181121161207471.jpg',1542759127,2,1,''),(8,2,'jpg',30990,'small_201805071551345735.jpg','data/files/store_2/goods/20181121161207954.jpg',1542759127,2,1,''),(9,2,'png',787148,'201805071544407096.png','data/files/store_2/goods/20181121162512458.png',1542759912,2,2,''),(10,2,'png',625937,'201805071544409733.png','data/files/store_2/goods/20181121162513582.png',1542759913,2,2,''),(11,2,'png',628247,'201805071545044509.png','data/files/store_2/goods/20181121162513368.png',1542759913,2,2,''),(12,2,'jpg',48856,'small_201805071542162085.jpg','data/files/store_2/goods/20181121162707311.jpg',1542760027,2,2,''),(13,2,'jpg',13192,'small_201805071542161899.jpg','data/files/store_2/goods/20181121162707422.jpg',1542760027,2,2,''),(14,2,'jpg',19007,'small_201805071542165685.jpg','data/files/store_2/goods/20181121162708599.jpg',1542760028,2,2,''),(15,2,'jpg',42865,'small_201805071542166005.jpg','data/files/store_2/goods/20181121162708216.jpg',1542760028,2,2,''),(16,2,'jpg',39427,'small_201805071542168697.jpg','data/files/store_2/goods/20181121162709932.jpg',1542760029,2,2,''),(17,2,'png',494407,'201805071533192373.png','data/files/store_2/goods/20181121163002627.png',1542760202,2,3,''),(18,2,'png',116684,'201805071533199844.png','data/files/store_2/goods/20181121163002390.png',1542760202,2,3,''),(19,2,'png',683634,'201805071533192897.png','data/files/store_2/goods/20181121163002368.png',1542760202,2,3,''),(20,2,'jpg',35457,'small_201805071537362088.jpg','data/files/store_2/goods/20181121163057182.jpg',1542760257,2,3,''),(21,2,'jpg',5728,'small_201805071537367737.jpg','data/files/store_2/goods/20181121163103146.jpg',1542760263,2,3,''),(22,2,'jpg',11179,'small_201805071537361162.jpg','data/files/store_2/goods/20181121163103403.jpg',1542760263,2,3,''),(23,2,'jpg',21685,'small_201805071537363380.jpg','data/files/store_2/goods/20181121163104112.jpg',1542760264,2,3,''),(24,2,'jpg',10449,'small_201805071537362640.jpg','data/files/store_2/goods/20181121163104717.jpg',1542760264,2,3,''),(50,2,'jpg',75210,'TB1dS2qLFXXXXX6XVXXQD5z9pXX_040742.jpg','data/files/store_2/goods/20181121213021455.jpg',1542778221,2,10,''),(51,2,'jpg',72090,'TB1_iStpVYqK1RjSZLer5vXppXa_052822.jpg','data/files/store_2/goods/20181121213244147.jpg',1542778364,2,11,''),(49,2,'jpg',19703,'O1CN012FsHK7klIoPHfwT_!!0-item_pic.jpg','data/files/store_2/goods/20181121212828709.jpg',1542778108,2,4,''),(27,2,'png',819723,'O1CN011cOiiwWSxiKHFqs_!!3079263591_01.png','data/files/store_2/goods/20181121165050398.png',1542761450,2,4,''),(48,2,'jpg',61240,'TB2levNpAUmBKNjSZFOXXab2XXa_!!3308826354.jpg','data/files/store_2/goods/20181121212707549.jpg',1542778027,2,5,''),(30,2,'jpg',225133,'O1CN01fLoyTY28Qc5NmejFc_!!1035757927.jpg','data/files/store_2/goods/20181121165510485.jpg',1542761710,2,5,''),(47,2,'jpg',170448,'O1CN01RaBF5228Qc5habYEw_!!1035757927.jpg','data/files/store_2/goods/20181121212703151.jpg',1542778024,2,5,''),(55,2,'jpg',112742,'O1CN011py4J38gySOV4Pf_!!2102385428.jpg','data/files/store_2/goods/20181121214606668.jpg',1542779166,2,12,''),(53,2,'jpg',72513,'TB2rg4mdMDqK1RjSZSyXXaxEVXa_!!2102385428-0-item_pic.jpg','data/files/store_2/goods/20181121214203335.jpg',1542778923,2,12,''),(34,2,'jpg',189277,'O1CN0129zFeIqiZbJH0sq_!!1714128138.jpg','data/files/store_2/goods/20181121165719527.jpg',1542761839,2,6,''),(46,2,'jpg',29822,'O1CN0129zFeHnuYrsmGBS_!!1714128138.jpg','data/files/store_2/goods/20181121212543181.jpg',1542777943,2,6,''),(54,2,'jpg',236323,'O1CN011py4J4wGjzEx042_!!2102385428.jpg','data/files/store_2/goods/20181121214303347.jpg',1542778984,2,12,''),(56,2,'jpg',137561,'O1CN011lqxh8BIZbpaNnR_!!848414871.jpg','data/files/store_2/goods/20181121215053864.jpg',1542779453,2,13,''),(38,2,'jpg',84460,'TB2WDmLaNb9F1JjSZFqXXbotVXa-470168984.jpg','data/files/store_2/goods/20181121165944433.jpg',1542761984,2,7,''),(45,2,'jpg',59584,'TB244c5jnTI8KJjSsphXXcFppXa_!!470168984.jpg','data/files/store_2/goods/20181121212339738.jpg',1542777819,2,7,''),(44,2,'jpg',37211,'TB2aDfDciCYBuNkSnaVXXcMsVXa_!!2616970884.jpg','data/files/store_2/goods/20181121212114409.jpg',1542777674,2,8,''),(41,2,'jpg',171532,'TB2JkZtw1uSBuNjy1XcXXcYjFXa_!!2616970884.jpg','data/files/store_2/goods/20181121170845820.jpg',1542762526,2,8,''),(43,2,'jpg',263946,'O1CN012718RLqw5VnriWD_!!2114897736.jpg','data/files/store_2/goods/20181121212111597.jpg',1542777671,2,8,''),(52,2,'jpg',38705,'TB2RXpodRLoK1RjSZFuXXXn0XXa_!!2102385428.jpg_430x430q90.jpg','data/files/store_2/goods/20181121214200514.jpg',1542778920,2,12,''),(57,2,'jpg',35304,'O1CN011lqxh9HbYb077cj_!!848414871.jpg_430x430q90.jpg','data/files/store_2/goods/20181121215057697.jpg',1542779457,2,13,''),(58,2,'jpg',158908,'O1CN011lqxh7vwnJYQlic_!!848414871.jpg','data/files/store_2/goods/20181121215124255.jpg',1542779484,2,13,''),(60,2,'jpg',173024,'O1CN018IlXao2GqjbUbuxLs_!!0-item_pic.jpg','data/files/store_2/goods/20181121215535534.jpg',1542779735,2,14,''),(61,2,'jpg',80556,'TB2zpXCd7voK1RjSZPfXXXPKFXa_!!864939067.jpg_430x430q90.jpg','data/files/store_2/goods/20181121215535789.jpg',1542779735,2,14,''),(62,2,'jpg',231332,'TB2Eh1faekJL1JjSZFmXXcw0XXa_!!864939067.jpg','data/files/store_2/goods/20181121215548105.jpg',1542779748,2,14,''),(63,2,'jpg',255081,'TB2EXARXjnyQeBjSszbXXbCxVXa_!!864939067.jpg','data/files/store_2/goods/20181121215548819.jpg',1542779748,2,14,''),(64,2,'jpg',274275,'O1CN012Bg8LewTCjBslcj_!!0-item_pic.jpg','data/files/store_2/goods/20181121215835874.jpg',1542779916,2,15,''),(65,2,'jpg',92558,'TB12FyEk6nD8KJjSspbXXbbEXXa_!!0-item_pic.jpg','data/files/store_2/goods/20181121220037806.jpg',1542780037,2,16,''),(66,2,'jpg',426831,'O1CN011pyz6W0AdXcU2uz_!!0-item_pic.jpg','data/files/store_2/goods/20181121220320276.jpg',1542780200,2,17,''),(67,2,'jpg',49294,'O1CN011pyz6WW6EtOZB0W_!!394695430.jpg_430x430q90.jpg','data/files/store_2/goods/20181121220321253.jpg',1542780201,2,17,''),(68,2,'jpg',162097,'TB1k1clgf6H8KJjy0FjXXaXepXa_!!0-item_pic.jpg','data/files/store_2/goods/20181121220446153.jpg',1542780287,2,18,''),(69,2,'jpg',64762,'O1CN011lbOErJCjjO6lNT_!!2140044837.jpg_430x430q90.jpg','data/files/store_2/goods/20181121220529585.jpg',1542780329,2,18,''),(70,2,'jpg',118660,'O1CN01sU9kRs2EXNdavv9aW_!!0-item_pic.jpg','data/files/store_2/goods/20181121220804979.jpg',1542780484,2,19,''),(71,2,'jpg',138636,'TB24wxNrIj_B1NjSZFHXXaDWpXa_!!2928230926-0-item_pic.jpg','data/files/store_2/goods/20181121221014676.jpg',1542780614,2,20,''),(72,2,'jpg',106244,'TB1yOiOnYPpK1RjSZFFdb95PpXa_051835.jpg','data/files/store_2/goods/20181121221617232.jpg',1542780977,2,21,''),(73,2,'jpg',175597,'O1CN011PMo5IXY6Kga1Gi_!!1114511827.jpg','data/files/store_2/goods/20181121221648239.jpg',1542781008,2,21,''),(74,2,'jpg',132389,'TB1dcOyhScqBKNjSZFgEXN_kXXa_051152.jpg','data/files/store_2/goods/20181121221946571.jpg',1542781186,2,22,''),(75,2,'jpg',246064,'TB2TfCEhTCWBKNjSZFtXXaC3FXa_!!2215302589.jpg','data/files/store_2/goods/20181121222039772.jpg',1542781239,2,22,''),(76,2,'jpg',241193,'TB2mr3av49YBuNjy0FfXXXIsVXa_!!2215302589.jpg','data/files/store_2/goods/20181121222039825.jpg',1542781239,2,22,''),(77,2,'png',187756,'TB2aiFWk0cnBKNjSZR0XXcFqFXa_!!1864868535.png_430x430q90.jpg.png','data/files/store_2/goods/20181121222346200.png',1542781426,2,23,''),(78,2,'jpg',92368,'TB1G3dAtvuSBuNkHFqDf64fhVXa_111749.jpg','data/files/store_2/goods/20181121222347420.jpg',1542781427,2,23,''),(79,2,'jpg',210135,'TB2VI2bEf5TBuNjSspmXXaDRVXa_!!1864868535.jpg','data/files/store_2/goods/20181121222413488.jpg',1542781453,2,23,''),(80,2,'jpg',104905,'TB2vLuXEgmTBuNjy1XbXXaMrVXa_!!1864868535.jpg','data/files/store_2/goods/20181121222429450.jpg',1542781469,2,23,''),(81,2,'jpg',119636,'TB128X1bQZmBKNjSZPiTKJFNVXa_035141.jpg','data/files/store_2/goods/20181121222733481.jpg',1542781654,2,24,''),(82,2,'jpg',38916,'TB1ScuQnXmWBuNjSspd8fnugXXa_051912.jpg_430x430q90.jpg','data/files/store_2/goods/20181121222915885.jpg',1542781755,2,24,''),(84,2,'jpg',70172,'TB1MC6sRVXXXXckXVXX1xvh9FXX_044339.jpg','data/files/store_2/goods/20181121223950247.jpg',1542782390,2,25,''),(85,2,'jpg',119078,'TB2Wk2LfYBkpuFjy1zkXXbSpFXa_!!742644724.jpg','data/files/store_2/goods/20181121224001510.jpg',1542782401,2,25,''),(86,2,'jpg',188793,'O1CN01A6mOaC1VdBx0RcACx_!!2146022675.jpg','data/files/store_2/goods/20181121224125388.jpg',1542782485,2,26,''),(87,2,'jpg',188358,'TB2VeVsqx9YBuNjy0FfXXXIsVXa_!!2146022675.jpg','data/files/store_2/goods/20181121224203282.jpg',1542782523,2,26,''),(88,2,'jpg',123070,'TB2wSJQqDlYBeNjSszcXXbwhFXa_!!2146022675.jpg','data/files/store_2/goods/20181121224215347.jpg',1542782535,2,26,'');
/*!40000 ALTER TABLE `swd_uploaded_file` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `swd_user`
--

DROP TABLE IF EXISTS `swd_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `swd_user` (
  `userid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(60) NOT NULL DEFAULT '',
  `nickname` varchar(60) NOT NULL DEFAULT '',
  `email` varchar(60) DEFAULT '',
  `password` varchar(255) DEFAULT '',
  `password_reset_token` varchar(255) DEFAULT '',
  `real_name` varchar(60) DEFAULT NULL,
  `gender` tinyint(3) unsigned DEFAULT '0',
  `birthday` varchar(50) NOT NULL DEFAULT '',
  `phone_tel` varchar(60) NOT NULL DEFAULT '',
  `phone_mob` varchar(20) NOT NULL DEFAULT '',
  `im_qq` varchar(60) NOT NULL DEFAULT '',
  `create_time` int(10) unsigned DEFAULT NULL,
  `update_time` int(10) unsigned DEFAULT NULL,
  `last_login` int(10) unsigned DEFAULT NULL,
  `last_ip` varchar(15) DEFAULT NULL,
  `logins` int(10) unsigned DEFAULT '0',
  `ugrade` tinyint(3) unsigned DEFAULT '1',
  `portrait` varchar(255) DEFAULT NULL,
  `activation` varchar(60) DEFAULT NULL,
  `locked` int(1) DEFAULT '0',
  `imforbid` int(1) DEFAULT '0',
  `auth_key` varchar(255) DEFAULT '',
  PRIMARY KEY (`userid`),
  KEY `username` (`username`),
  KEY `phone_mob` (`phone_mob`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `swd_user`
--

LOCK TABLES `swd_user` WRITE;
/*!40000 ALTER TABLE `swd_user` DISABLE KEYS */;
INSERT INTO `swd_user` VALUES (1,'admin','','','$2y$13$Mzc2xf1QS8nQ4qpRsiXd9ucSToCckZ3MhZI2q/QGuMptrWq3YIP1O','',NULL,0,'','','','',1663061770,1663097075,1663097076,'222.219.100.27',2,1,NULL,NULL,0,0,''),(2,'seller','','','$2y$13$7TyGNuYT0gMdDXXWJFh8B.wlb/mVYkXq8Ln3rfqCZb2PJp3LVZJLS','',NULL,0,'','','','',1663061798,1663061798,NULL,NULL,0,1,NULL,NULL,0,0,'GBluG5H8L1Q6NxbgKkIy-q_ywP85SIsg'),(3,'buyer','','','$2y$13$bLMAD9fhL1/2Gu0kiL8oD.BXqgDqWyD3Hczrs8r1PdNxDgDcLuXM.','',NULL,0,'','','','',1663061798,1663098456,1663098457,'222.219.100.27',1,1,NULL,NULL,0,0,'UaHdY7-_2kjvA2zhtIXWB3TBND-kgR_K');
/*!40000 ALTER TABLE `swd_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `swd_user_enter`
--

DROP TABLE IF EXISTS `swd_user_enter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `swd_user_enter` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `userid` int(10) unsigned NOT NULL DEFAULT '0',
  `username` varchar(50) DEFAULT NULL,
  `scene` varchar(20) DEFAULT '',
  `ip` varchar(50) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `add_time` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `swd_user_enter`
--

LOCK TABLES `swd_user_enter` WRITE;
/*!40000 ALTER TABLE `swd_user_enter` DISABLE KEYS */;
INSERT INTO `swd_user_enter` VALUES (1,1,'admin','backend','222.219.100.27',NULL,1663061821),(2,1,'admin','backend','222.219.100.27',NULL,1663097076);
/*!40000 ALTER TABLE `swd_user_enter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `swd_user_priv`
--

DROP TABLE IF EXISTS `swd_user_priv`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `swd_user_priv` (
  `userid` int(10) unsigned NOT NULL DEFAULT '0',
  `store_id` int(10) unsigned NOT NULL DEFAULT '0',
  `privs` text,
  PRIMARY KEY (`userid`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `swd_user_priv`
--

LOCK TABLES `swd_user_priv` WRITE;
/*!40000 ALTER TABLE `swd_user_priv` DISABLE KEYS */;
INSERT INTO `swd_user_priv` VALUES (1,0,'all'),(2,2,'all');
/*!40000 ALTER TABLE `swd_user_priv` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `swd_user_token`
--

DROP TABLE IF EXISTS `swd_user_token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `swd_user_token` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `userid` int(10) unsigned NOT NULL DEFAULT '0',
  `token` varchar(100) NOT NULL DEFAULT '',
  `expire_time` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `swd_user_token`
--

LOCK TABLES `swd_user_token` WRITE;
/*!40000 ALTER TABLE `swd_user_token` DISABLE KEYS */;
/*!40000 ALTER TABLE `swd_user_token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `swd_webim`
--

DROP TABLE IF EXISTS `swd_webim`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `swd_webim` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `toid` int(11) NOT NULL,
  `fromid` int(11) NOT NULL,
  `groupid` varchar(255) NOT NULL,
  `store_id` int(10) DEFAULT NULL,
  `store_name` varchar(100) DEFAULT NULL,
  `content` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
  `unread` int(11) NOT NULL DEFAULT '0',
  `created` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `swd_webim`
--

LOCK TABLES `swd_webim` WRITE;
/*!40000 ALTER TABLE `swd_webim` DISABLE KEYS */;
/*!40000 ALTER TABLE `swd_webim` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `swd_weixin_menu`
--

DROP TABLE IF EXISTS `swd_weixin_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `swd_weixin_menu` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `userid` int(10) unsigned NOT NULL DEFAULT '0',
  `parent_id` int(10) DEFAULT '0',
  `name` varchar(255) DEFAULT NULL,
  `type` varchar(20) DEFAULT NULL,
  `add_time` int(10) DEFAULT NULL,
  `sort_order` tinyint(3) unsigned DEFAULT '255',
  `link` varchar(255) DEFAULT NULL,
  `reply_id` int(10) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `swd_weixin_menu`
--

LOCK TABLES `swd_weixin_menu` WRITE;
/*!40000 ALTER TABLE `swd_weixin_menu` DISABLE KEYS */;
/*!40000 ALTER TABLE `swd_weixin_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `swd_weixin_reply`
--

DROP TABLE IF EXISTS `swd_weixin_reply`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `swd_weixin_reply` (
  `reply_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `userid` int(10) unsigned NOT NULL DEFAULT '0',
  `type` tinyint(1) unsigned DEFAULT '0' COMMENT '回复类型0文字1图文',
  `action` varchar(20) DEFAULT NULL COMMENT '回复命令 关注、消息、关键字',
  `title` varchar(255) DEFAULT NULL,
  `link` varchar(50) DEFAULT NULL,
  `image` varchar(100) DEFAULT NULL,
  `rule_name` varchar(255) DEFAULT NULL,
  `keywords` varchar(255) DEFAULT NULL,
  `description` text,
  `add_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`reply_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `swd_weixin_reply`
--

LOCK TABLES `swd_weixin_reply` WRITE;
/*!40000 ALTER TABLE `swd_weixin_reply` DISABLE KEYS */;
/*!40000 ALTER TABLE `swd_weixin_reply` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `swd_weixin_setting`
--

DROP TABLE IF EXISTS `swd_weixin_setting`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `swd_weixin_setting` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `userid` int(10) unsigned NOT NULL DEFAULT '0',
  `code` varchar(30) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `token` varchar(255) DEFAULT '',
  `appid` varchar(255) DEFAULT NULL,
  `appsecret` varchar(255) DEFAULT NULL,
  `if_valid` tinyint(1) unsigned DEFAULT '0',
  `autologin` int(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `swd_weixin_setting`
--

LOCK TABLES `swd_weixin_setting` WRITE;
/*!40000 ALTER TABLE `swd_weixin_setting` DISABLE KEYS */;
/*!40000 ALTER TABLE `swd_weixin_setting` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `swd_wholesale`
--

DROP TABLE IF EXISTS `swd_wholesale`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `swd_wholesale` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `goods_id` int(10) unsigned NOT NULL DEFAULT '0',
  `store_id` int(10) unsigned DEFAULT '0',
  `price` decimal(10,2) unsigned DEFAULT '0.00',
  `quantity` int(10) unsigned DEFAULT '1',
  `status` int(1) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `swd_wholesale`
--

LOCK TABLES `swd_wholesale` WRITE;
/*!40000 ALTER TABLE `swd_wholesale` DISABLE KEYS */;
/*!40000 ALTER TABLE `swd_wholesale` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'wsho_fk08_cn'
--

--
-- Dumping routines for database 'wsho_fk08_cn'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-09-14 14:14:11
