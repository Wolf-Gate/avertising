# ************************************************************
# Sequel Pro SQL dump
# Version 4541
#
# http://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Host: 138.197.185.224 (MySQL 5.7.24-0ubuntu0.16.04.1)
# Datenbank: instagram
# Erstellt am: 2018-11-18 22:51:06 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Export von Tabelle general_caption
# ------------------------------------------------------------

DROP TABLE IF EXISTS `general_caption`;

CREATE TABLE `general_caption` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ids` text,
  `uid` int(11) DEFAULT NULL,
  `content` longtext,
  `status` int(1) DEFAULT '1',
  `changed` datetime DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;



# Export von Tabelle general_coupons
# ------------------------------------------------------------

DROP TABLE IF EXISTS `general_coupons`;

CREATE TABLE `general_coupons` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ids` text,
  `name` text,
  `code` text,
  `type` int(1) DEFAULT '1',
  `price` float DEFAULT NULL,
  `expiration_date` date DEFAULT NULL,
  `packages` text,
  `status` int(1) DEFAULT '1',
  `changed` datetime DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;



# Export von Tabelle general_custom_page
# ------------------------------------------------------------

DROP TABLE IF EXISTS `general_custom_page`;

CREATE TABLE `general_custom_page` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ids` text,
  `pid` int(1) DEFAULT '1',
  `position` int(1) DEFAULT '0',
  `name` text,
  `slug` text,
  `image` text,
  `description` longtext,
  `content` longtext,
  `status` int(1) DEFAULT '1',
  `changed` datetime DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

LOCK TABLES `general_custom_page` WRITE;
/*!40000 ALTER TABLE `general_custom_page` DISABLE KEYS */;

INSERT INTO `general_custom_page` (`id`, `ids`, `pid`, `position`, `name`, `slug`, `image`, `description`, `content`, `status`, `changed`, `created`)
VALUES
	(1,'a982f413201e198ae289e9e6e677d2c4',1,NULL,'Terms and Policies','terms_and_policies',NULL,NULL,'<h3>End-User License Agreement</h3><p>\r\nPlease read this agreement carefully before installing or using this product.\r\n</p><br><p>\r\nIf you agree to all of the terms of this End-User License Agreement, by checking the box or clicking the button to confirm your acceptance when you first install the web application, you are agreeing to all the terms of this agreement. Also, By downloading, installing, using, or copying this web application, you accept and agree to be bound by the terms of this End-User License Agreement, you are agreeing to all the terms of this agreement. If you do not agree to all of these terms, do not check the box or click the button and/or do not use, copy or install the web application, and uninstall the web application from all your server that you own or control. \r\n</p>\r\n<br>\r\n<p><strong>Note:</strong> With this script, We are using the official Social Media API (Facebook, Twitter etc, except Instagram) which is available on Developer Center. That is a reason why this script depends on Social Media API(Facebook, Instagram, Twitter etc). Therefore, We are not responsible if they made too many critical changes in their side. We  also don\'t guarantee that the compatibility of the script with Socia Media API will be forever. Although we always try to update the lastest version of script as soon as possible. <strong>We don\'t provide any refund for all problems which are originated from Social Media API (Facebook, Instagram, Twitter etc).</strong></p>\r\n\r\n\r\n<br><p>\r\nIf you do not accept the terms of this agreement and you purchased a product containing the web application from an authorized retailer, you may be eligible to return the product for a refund, subject to the terms and conditions of the applicable return policy.</p>',0,'2018-10-04 10:33:47','2018-08-16 08:22:16'),
	(2,'6c43cfbabe6165b66ef9fef4c210973c',1,NULL,'Privacy Policy','privacy_policy',NULL,NULL,'<h3>End-User License Agreement</h3><p>\r\nPlease read this agreement carefully before installing or using this product.\r\n</p><br><p>\r\nIf you agree to all of the terms of this End-User License Agreement, by checking the box or clicking the button to confirm your acceptance when you first install the web application, you are agreeing to all the terms of this agreement. Also, By downloading, installing, using, or copying this web application, you accept and agree to be bound by the terms of this End-User License Agreement, you are agreeing to all the terms of this agreement. If you do not agree to all of these terms, do not check the box or click the button and/or do not use, copy or install the web application, and uninstall the web application from all your server that you own or control. \r\n</p>\r\n<br>\r\n<p><strong>Note:</strong> With this script, We are using the official Social Media API (Facebook, Twitter etc, except Instagram) which is available on Developer Center. That is a reason why this script depends on Social Media API(Facebook, Instagram, Twitter etc). Therefore, We are not responsible if they made too many critical changes in their side. We  also don\'t guarantee that the compatibility of the script with Socia Media API will be forever. Although we always try to update the lastest version of script as soon as possible. <strong>We don\'t provide any refund for all problems which are originated from Social Media API (Facebook, Instagram, Twitter etc).</strong></p>\r\n\r\n\r\n<br><p>\r\nIf you do not accept the terms of this agreement and you purchased a product containing the web application from an authorized retailer, you may be eligible to return the product for a refund, subject to the terms and conditions of the applicable return policy.</p>',0,'2018-10-04 10:18:21','2018-10-04 10:13:48');

/*!40000 ALTER TABLE `general_custom_page` ENABLE KEYS */;
UNLOCK TABLES;


# Export von Tabelle general_file_manager
# ------------------------------------------------------------

DROP TABLE IF EXISTS `general_file_manager`;

CREATE TABLE `general_file_manager` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ids` text CHARACTER SET utf8mb4,
  `uid` int(11) DEFAULT NULL,
  `file_name` text CHARACTER SET utf8mb4,
  `image_type` text CHARACTER SET utf8mb4,
  `file_ext` text CHARACTER SET utf8mb4,
  `file_size` text CHARACTER SET utf8mb4,
  `is_image` text CHARACTER SET utf8mb4,
  `image_width` int(11) DEFAULT NULL,
  `image_height` int(11) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;



# Export von Tabelle general_lang
# ------------------------------------------------------------

DROP TABLE IF EXISTS `general_lang`;

CREATE TABLE `general_lang` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ids` text NOT NULL,
  `code` text NOT NULL,
  `slug` text NOT NULL,
  `text` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;



# Export von Tabelle general_lang_list
# ------------------------------------------------------------

DROP TABLE IF EXISTS `general_lang_list`;

CREATE TABLE `general_lang_list` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ids` text,
  `name` text,
  `code` text,
  `icon` text,
  `is_default` int(1) DEFAULT '0',
  `status` int(1) DEFAULT NULL,
  `changed` datetime DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;



# Export von Tabelle general_options
# ------------------------------------------------------------

DROP TABLE IF EXISTS `general_options`;

CREATE TABLE `general_options` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` text,
  `value` longtext,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

LOCK TABLES `general_options` WRITE;
/*!40000 ALTER TABLE `general_options` DISABLE KEYS */;

INSERT INTO `general_options` (`id`, `name`, `value`)
VALUES
	(1,'enable_https','0'),
	(2,'website_title','Stackposts - Social Marketing Tool'),
	(3,'website_description','save time, do more, manage multiple social networks at one place'),
	(4,'website_keyword','social marketing tool, social planner, automation, social schedule'),
	(5,'website_favicon','http://instagram.patricpfoertner.com/assets/img/favicon.png'),
	(6,'website_logo_white','http://instagram.patricpfoertner.com/assets/img/logo-white.png'),
	(7,'website_logo_black','http://instagram.patricpfoertner.com/assets/img/logo-black.png'),
	(8,'singup_enable','1'),
	(9,'social_page_facebook',''),
	(10,'social_page_google',''),
	(11,'social_page_twitter',''),
	(12,'social_page_instagram',''),
	(13,'social_page_pinterest',''),
	(14,'embed_javascript','');

/*!40000 ALTER TABLE `general_options` ENABLE KEYS */;
UNLOCK TABLES;


# Export von Tabelle general_packages
# ------------------------------------------------------------

DROP TABLE IF EXISTS `general_packages`;

CREATE TABLE `general_packages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ids` text,
  `type` int(1) DEFAULT '1' COMMENT '1-TRIAL|2-CHARGE',
  `name` text,
  `description` text,
  `price_monthly` float DEFAULT NULL,
  `price_annually` float DEFAULT NULL,
  `number_accounts` int(11) DEFAULT '0',
  `is_default` int(1) DEFAULT '0',
  `trial_day` int(11) DEFAULT NULL,
  `permission` longtext,
  `sort` int(11) DEFAULT '1',
  `status` int(1) DEFAULT '1',
  `changed` datetime DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

LOCK TABLES `general_packages` WRITE;
/*!40000 ALTER TABLE `general_packages` DISABLE KEYS */;

INSERT INTO `general_packages` (`id`, `ids`, `type`, `name`, `description`, `price_monthly`, `price_annually`, `number_accounts`, `is_default`, `trial_day`, `permission`, `sort`, `status`, `changed`, `created`)
VALUES
	(1,'c761441297cac88f7cea247f260d1985',1,'Trial mode',NULL,0,0,0,0,3,'{\"0\":\"facebook_enable\",\"1\":\"facebook\\/post\",\"2\":\"instagram_enable\",\"3\":\"instagram\\/post\",\"4\":\"twitter_enable\",\"5\":\"twitter\\/post\",\"6\":\"google_drive\",\"7\":\"dropbox\",\"8\":\"photo_type\",\"9\":\"video_type\",\"max_storage_size\":100,\"max_file_size\":20}',0,1,'2018-06-11 19:21:26','2018-04-02 11:40:23'),
	(2,'d7394fc22455c18ee2eb177bacb0a082',2,'Basic','Pick great plan for you',30,25,1,0,NULL,'{\"0\":\"facebook_enable\",\"1\":\"facebook\\/post\",\"2\":\"instagram_enable\",\"3\":\"instagram\\/post\",\"4\":\"twitter_enable\",\"5\":\"twitter\\/post\",\"6\":\"google_drive\",\"7\":\"dropbox\",\"8\":\"photo_type\",\"9\":\"video_type\",\"max_storage_size\":250,\"max_file_size\":2}',60,1,'2018-07-26 09:29:34','2018-04-02 11:40:28'),
	(8,'2c327cb5ab20f86cc0ea9cae47515da1',2,'Standard','Pick great plan for you',60,50,2,0,NULL,'{\"0\":\"facebook_enable\",\"1\":\"facebook\\/post\",\"2\":\"instagram_enable\",\"3\":\"instagram\\/post\",\"4\":\"google_drive\",\"5\":\"dropbox\",\"6\":\"photo_type\",\"7\":\"video_type\",\"max_storage_size\":100,\"max_file_size\":5}',80,1,'2018-07-26 09:29:23','2018-06-09 19:58:16'),
	(9,'9088ff7e41e726e5e2bf7c1352c22340',2,'Premium','Pick great plan for you',90,80,5,0,NULL,'{\"0\":\"google_drive\",\"1\":\"dropbox\",\"2\":\"photo_type\",\"3\":\"video_type\",\"max_storage_size\":1000,\"max_file_size\":20}',100,1,'2018-07-26 09:30:54','2018-07-26 08:51:38');

/*!40000 ALTER TABLE `general_packages` ENABLE KEYS */;
UNLOCK TABLES;


# Export von Tabelle general_payment_history
# ------------------------------------------------------------

DROP TABLE IF EXISTS `general_payment_history`;

CREATE TABLE `general_payment_history` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ids` text,
  `uid` int(11) DEFAULT NULL,
  `package` int(11) DEFAULT NULL,
  `type` text,
  `transaction_id` text,
  `plan` int(1) DEFAULT NULL,
  `amount` float DEFAULT NULL,
  `status` int(1) DEFAULT '1',
  `created` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;



# Export von Tabelle general_proxies
# ------------------------------------------------------------

DROP TABLE IF EXISTS `general_proxies`;

CREATE TABLE `general_proxies` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ids` text,
  `address` text,
  `location` text,
  `status` int(1) DEFAULT NULL,
  `changed` datetime DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;



# Export von Tabelle general_purchase
# ------------------------------------------------------------

DROP TABLE IF EXISTS `general_purchase`;

CREATE TABLE `general_purchase` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ids` text,
  `pid` text,
  `purchase_code` text,
  `version` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

LOCK TABLES `general_purchase` WRITE;
/*!40000 ALTER TABLE `general_purchase` DISABLE KEYS */;

INSERT INTO `general_purchase` (`id`, `ids`, `pid`, `purchase_code`, `version`)
VALUES
	(1,'2eb1c5949c33bf1b9f01dfbb62d93695','20292050','79051f43-7872-4644-842c-e8dd98815541','3.0');

/*!40000 ALTER TABLE `general_purchase` ENABLE KEYS */;
UNLOCK TABLES;


# Export von Tabelle general_sessions
# ------------------------------------------------------------

DROP TABLE IF EXISTS `general_sessions`;

CREATE TABLE `general_sessions` (
  `id` varchar(128) NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `timestamp` int(10) unsigned NOT NULL DEFAULT '0',
  `data` blob NOT NULL,
  KEY `ci_sessions_timestamp` (`timestamp`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

LOCK TABLES `general_sessions` WRITE;
/*!40000 ALTER TABLE `general_sessions` DISABLE KEYS */;

INSERT INTO `general_sessions` (`id`, `ip_address`, `timestamp`, `data`)
VALUES
	('789264a719b0bbb56ec8d0b6062cd40b06b3284a','90.154.132.220',1541932450,X'5F5F63695F6C6173745F726567656E65726174657C693A313534313835353830323B6C616E675F64656661756C747C733A343A226E756C6C223B'),
	('34be92f66f4e9c968b3fadf1471e671eae7f0dee','217.160.152.5',1541876522,X'5F5F63695F6C6173745F726567656E65726174657C693A313534313837363532323B6C616E675F64656661756C747C733A343A226E756C6C223B'),
	('e2ebcae980d52f03a4644ec143233d65b54ca5b9','217.160.152.5',1541876523,X'5F5F63695F6C6173745F726567656E65726174657C693A313534313837363532333B6C616E675F64656661756C747C733A343A226E756C6C223B'),
	('191e39ff5d74e119a3d9bdcc692e1c5b6427db02','217.160.152.35',1541931996,X'5F5F63695F6C6173745F726567656E65726174657C693A313534313933313939363B6C616E675F64656661756C747C733A343A226E756C6C223B'),
	('0b6fb4a42a904bc79a4a6ed8e704a0d5acfdb159','217.160.152.35',1541931996,X'5F5F63695F6C6173745F726567656E65726174657C693A313534313933313939363B6C616E675F64656661756C747C733A343A226E756C6C223B');

/*!40000 ALTER TABLE `general_sessions` ENABLE KEYS */;
UNLOCK TABLES;


# Export von Tabelle general_users
# ------------------------------------------------------------

DROP TABLE IF EXISTS `general_users`;

CREATE TABLE `general_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ids` text,
  `admin` int(1) DEFAULT NULL,
  `login_type` text,
  `fullname` text,
  `email` text,
  `password` text,
  `package` int(11) DEFAULT NULL,
  `expiration_date` date DEFAULT NULL,
  `timezone` text,
  `permission` text,
  `settings` longtext,
  `activation_key` text,
  `reset_key` text,
  `history_ip` text,
  `status` int(1) DEFAULT NULL,
  `changed` datetime DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

LOCK TABLES `general_users` WRITE;
/*!40000 ALTER TABLE `general_users` DISABLE KEYS */;

INSERT INTO `general_users` (`id`, `ids`, `admin`, `login_type`, `fullname`, `email`, `password`, `package`, `expiration_date`, `timezone`, `permission`, `settings`, `activation_key`, `reset_key`, `history_ip`, `status`, `changed`, `created`)
VALUES
	(1,'c761441297cac88f7cea247f260d1985',1,'direct','Patric Pförtner','maggieandpatric@icloud.com','949281b9d9c6c97fb61f4e64e5482fa2',2,'2025-01-01','Europe/Sofia',NULL,NULL,'1','b04e3f63724775f74a561648907b70de',NULL,1,'2018-07-26 16:28:40','2018-07-26 13:39:32');

/*!40000 ALTER TABLE `general_users` ENABLE KEYS */;
UNLOCK TABLES;


# Export von Tabelle instagram_accounts
# ------------------------------------------------------------

DROP TABLE IF EXISTS `instagram_accounts`;

CREATE TABLE `instagram_accounts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ids` text CHARACTER SET utf8,
  `uid` text,
  `pid` text,
  `avatar` text,
  `username` text,
  `password` text,
  `proxy` text,
  `default_proxy` int(11) DEFAULT '0',
  `status` int(1) DEFAULT '1',
  `changed` datetime DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;



# Export von Tabelle instagram_activities
# ------------------------------------------------------------

DROP TABLE IF EXISTS `instagram_activities`;

CREATE TABLE `instagram_activities` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ids` text,
  `uid` int(11) DEFAULT NULL,
  `pid` int(11) DEFAULT '0',
  `account` int(11) DEFAULT NULL,
  `action` longtext,
  `time` datetime DEFAULT NULL,
  `data` longtext,
  `settings` longtext,
  `status` int(1) DEFAULT NULL,
  `changed` datetime DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;



# Export von Tabelle instagram_activities_log
# ------------------------------------------------------------

DROP TABLE IF EXISTS `instagram_activities_log`;

CREATE TABLE `instagram_activities_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ids` text,
  `uid` int(11) DEFAULT NULL,
  `pid` int(11) DEFAULT NULL,
  `action` text,
  `data` longtext,
  `created` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;



# Export von Tabelle instagram_posts
# ------------------------------------------------------------

DROP TABLE IF EXISTS `instagram_posts`;

CREATE TABLE `instagram_posts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ids` text,
  `uid` int(11) DEFAULT NULL,
  `account` int(11) DEFAULT NULL,
  `type` text,
  `data` longtext,
  `time_post` datetime DEFAULT NULL,
  `delay` int(11) DEFAULT NULL,
  `time_delete` int(11) DEFAULT NULL,
  `result` text,
  `status` int(1) DEFAULT NULL,
  `changed` datetime DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;



# Export von Tabelle instagram_sessions
# ------------------------------------------------------------

DROP TABLE IF EXISTS `instagram_sessions`;

CREATE TABLE `instagram_sessions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `settings` mediumblob,
  `cookies` mediumblob,
  `last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;




/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
