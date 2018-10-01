-- MySQL dump 10.13  Distrib 5.7.20, for Linux (x86_64)
--
-- Host: localhost    Database: sjzd
-- ------------------------------------------------------
-- Server version	5.7.20-0ubuntu0.16.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `accounts`
--

DROP TABLE IF EXISTS `accounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `accounts` (
  `id` int(11) NOT NULL,
  `balance` bigint(20) NOT NULL COMMENT '账户总余额, 包括冻结余额',
  `locked_amount` bigint(20) NOT NULL COMMENT '冻结金额',
  `total_recharge` bigint(20) NOT NULL COMMENT '总充值金额',
  `total_withdraw` bigint(20) NOT NULL COMMENT '总提现金额',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='用户资金帐户表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accounts`
--

LOCK TABLES `accounts` WRITE;
/*!40000 ALTER TABLE `accounts` DISABLE KEYS */;
INSERT INTO `accounts` VALUES (71,60345,0,0,0),(143,9143,350,0,0),(148,0,0,0,0),(149,0,0,0,0),(150,0,0,0,0),(332,200,0,0,0);
/*!40000 ALTER TABLE `accounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_group_permissions`
--

DROP TABLE IF EXISTS `admin_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin_group_permissions` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL COMMENT '用户群组id',
  `url_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_group_id_url_id` (`group_id`,`url_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_group_permissions`
--

LOCK TABLES `admin_group_permissions` WRITE;
/*!40000 ALTER TABLE `admin_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `admin_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_groups`
--

DROP TABLE IF EXISTS `admin_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) COLLATE utf8_unicode_ci NOT NULL COMMENT '组名称',
  `type` tinyint(4) NOT NULL DEFAULT '0' COMMENT '类型：0:普通组,1:超级用户组',
  `desc` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_groups`
--

LOCK TABLES `admin_groups` WRITE;
/*!40000 ALTER TABLE `admin_groups` DISABLE KEYS */;
INSERT INTO `admin_groups` VALUES (1,'超级管理员组',1,'超级管理员组'),(2,'所有URL权限查看组',0,'具备所有URL查看权限，但是在某些url处需要验证是否为超级用户已经群组管理员');
/*!40000 ALTER TABLE `admin_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_logs`
--

DROP TABLE IF EXISTS `admin_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin_logs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(64) COLLATE utf8_unicode_ci NOT NULL COMMENT '操作人',
  `ip` varchar(15) COLLATE utf8_unicode_ci NOT NULL COMMENT '操作IP',
  `remark` text COLLATE utf8_unicode_ci NOT NULL COMMENT '操作行为',
  `ctime` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`),
  KEY `idx_email` (`email`),
  KEY `idx_ctime` (`ctime`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_logs`
--

LOCK TABLES `admin_logs` WRITE;
/*!40000 ALTER TABLE `admin_logs` DISABLE KEYS */;
/*!40000 ALTER TABLE `admin_logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_urls`
--

DROP TABLE IF EXISTS `admin_urls`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin_urls` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `url` varchar(200) NOT NULL,
  `title` varchar(128) NOT NULL,
  `desc` text,
  PRIMARY KEY (`id`),
  UNIQUE KEY `url` (`url`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_urls`
--

LOCK TABLES `admin_urls` WRITE;
/*!40000 ALTER TABLE `admin_urls` DISABLE KEYS */;
INSERT INTO `admin_urls` VALUES (1,'admin','全部访问权限','所有权限（慎用！）'),(2,'admin/manager','管理员账号管理','管理员所有（慎用！）'),(3,'admin/account/profile','用户管理',''),(4,'admin/shijie/baseinfo','师姐信息管理',''),(5,'admin/shijie/course','课程管理',''),(6,'admin/shijie/educational','教育经历管理',''),(7,'admin/shijie/tag','标签管理',''),(8,'admin/shijie/apply','师姐申请管理',''),(9,'admin/order/order','订单管理',''),(10,'admin/order/comment','评论管理',''),(11,'admin/order/intention','点赞管理',''),(12,'admin/order/coupon','优惠券管理',''),(13,'admin/statis/index','统计概览',''),(14,'admin/imgupload','图片上传','全部权限（慎用！）'),(15,'admin/imgupload/adddir','上传图片-创建目录',''),(16,'admin/imgupload/create','上传图片-创建',''),(17,'admin/imgupload/index','上传图片-首页',''),(18,'admin/imgupload/upload','上传图片-上传',''),(19,'admin/manager/adminlog','管理员日志',''),(20,'admin/manager/adminlog/index','管理员日志首页',''),(21,'admin/manager/group','管理员群组管理',''),(22,'admin/manager/group/add_user','管理员群组管理-添加用户',''),(23,'admin/manager/group/batch_edit_user','管理员群组管理-批量用户',''),(24,'admin/manager/group/batch_update_permission','管理员群组管理-批量权限',''),(25,'admin/manager/group/create','管理员群组管理-创建',''),(26,'admin/manager/group/delete','管理员群组管理-删除群组',''),(27,'admin/manager/group/delete_user','管理员群组管理-删除用户',''),(28,'admin/manager/group/edit_user','管理员群组管理-编辑用户',''),(29,'admin/manager/group/index','管理员群组管理-首页',''),(30,'admin/manager/group/list_user','管理员群组管理-用户列表',''),(31,'admin/manager/group/manage_permission','管理员群组管理-权限管理',''),(32,'admin/manager/group/manage_user','管理员群组管理-用户管理',''),(33,'admin/manager/group/permission','管理员群组管理-权限列表',''),(34,'admin/manager/group/update','管理员群组管理-更新',''),(35,'admin/manager/index','管理员帐号管理-首页',''),(36,'admin/manager/index/create','管理员帐号管理-创建',''),(37,'admin/manager/index/edit','管理员帐号管理-编辑',''),(38,'admin/manager/index/index','管理员帐号管理-首页列表',''),(39,'admin/manager/index/lock','管理员帐号管理-封禁用户',''),(40,'admin/manager/index/save','管理员帐号管理-保存信息',''),(41,'admin/manager/index/unlock','管理员帐号管理-解封用户',''),(42,'admin/manager/permission','管理员帐号管理-权限查看',''),(43,'admin/manager/permission/index','管理员帐号管理-权限查看首页',''),(44,'admin/manager/permission/updateByAdminId','管理员帐号管理-更新权限',''),(45,'admin/manager/url','后台url管理-首页',''),(46,'admin/manager/url/batch_update_groups','后台url管理-批量群组更新',''),(47,'admin/manager/url/create','后台url管理-创建url',''),(48,'admin/manager/url/delete','后台url管理-删除url',''),(49,'admin/manager/url/index','后台url管理-首页',''),(50,'admin/manager/url/manage','后台url管理-单个url管理',''),(51,'admin/manager/url/update','后台url管理-url更新',''),(52,'admin/manager/url/updateByUrlId','后台url管理-按照用户更新',''),(53,'admin/manager/user','管理员帐号管理-用户管理',''),(54,'admin/manager/user/batch_update_groups','管理员帐号管理-批量更新群组',''),(55,'admin/manager/user/list_permission','管理员帐号管理-列出权限',''),(56,'admin/manager/user/manage_group','管理员帐号管理-群组管理','');
/*!40000 ALTER TABLE `admin_urls` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_users`
--

DROP TABLE IF EXISTS `admin_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL COMMENT '用户群组id',
  `email` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `role` tinyint(4) NOT NULL DEFAULT '0' COMMENT '角色：0:普通用户,1:管理员',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_email_group_id` (`email`,`group_id`)
) ENGINE=InnoDB AUTO_INCREMENT=91 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_users`
--

LOCK TABLES `admin_users` WRITE;
/*!40000 ALTER TABLE `admin_users` DISABLE KEYS */;
INSERT INTO `admin_users` VALUES (1,1,'majin@shijiezhidao.com',1),(89,1,'fanziqing@shijiezhidao.com',0),(90,1,'lirui@seniorknows.com',1);
/*!40000 ALTER TABLE `admin_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admins`
--

DROP TABLE IF EXISTS `admins`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admins` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `status` tinyint(4) DEFAULT '0' COMMENT '0: ok, 1: locked',
  `email` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(32) COLLATE utf8_unicode_ci NOT NULL COMMENT 'md5(md5(password)+salt)',
  `salt` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `reg_time` datetime NOT NULL,
  `reg_ip` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `login_time` datetime DEFAULT NULL,
  `login_expire` datetime DEFAULT NULL,
  `login_ip` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `login_token` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admins`
--

LOCK TABLES `admins` WRITE;
/*!40000 ALTER TABLE `admins` DISABLE KEYS */;
INSERT INTO `admins` VALUES (1,0,'majin@shijiezhidao.com','9a2846f0f9408f0f067429e40a97507e','90357391b8ef5f45be32972e4c7b0d95','2014-09-23 15:42:18','211.157.144.162','2017-11-04 02:25:17','2017-11-05 03:00:00','123.118.25.170','a2d5e5cbdb49f075d9477756c7c99244'),(11,0,'fanziqing@shijiezhidao.com','bc4433e85c2ac67b5b9fe9f8aa19c59d','08c7ebd495a42c9ec77b030dd0806e93','2015-07-26 22:14:07','172.16.150.1',NULL,NULL,NULL,NULL),(12,0,'lirui@seniorknows.com','ab6e0b5c8ffde2c23bcc434043311685','e318390d3a31a56974fbb41a66cd4699','2017-11-04 02:25:47','123.118.25.170','2017-11-04 02:26:56','2017-11-05 03:00:00','130.132.173.32','922f88d549080430c036c968d094352c');
/*!40000 ALTER TABLE `admins` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chat_sessions`
--

DROP TABLE IF EXISTS `chat_sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `chat_sessions` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `user_id` int(11) NOT NULL COMMENT '用户ID',
  `other_user_id` int(11) NOT NULL COMMENT '对方用户ID',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `update_time` datetime NOT NULL COMMENT '更新时间',
  `content` varchar(127) NOT NULL COMMENT '缩略消息',
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id_2` (`user_id`,`other_user_id`),
  KEY `user_id` (`user_id`),
  KEY `other_user_id` (`other_user_id`),
  KEY `create_time` (`create_time`),
  KEY `update_time` (`update_time`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='用户聊天session表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chat_sessions`
--

LOCK TABLES `chat_sessions` WRITE;
/*!40000 ALTER TABLE `chat_sessions` DISABLE KEYS */;
INSERT INTO `chat_sessions` VALUES (1,71,143,'2015-09-05 00:00:00','2015-09-26 11:09:38','测试'),(4,71,73,'2015-09-20 19:20:38','2015-09-20 19:20:49','您好啊，张翠经同学'),(5,143,332,'2015-09-23 15:56:03','2015-09-23 16:31:05','千万千万');
/*!40000 ALTER TABLE `chat_sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chats`
--

DROP TABLE IF EXISTS `chats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `chats` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `from_user_id` int(11) NOT NULL COMMENT '发送者',
  `to_user_id` int(11) NOT NULL COMMENT '接收者',
  `content` varchar(1024) NOT NULL COMMENT '内容',
  `create_time` datetime NOT NULL COMMENT '时间',
  `session_id` int(11) NOT NULL COMMENT '会话id',
  PRIMARY KEY (`id`),
  KEY `create_time` (`create_time`),
  KEY `session_id` (`session_id`),
  KEY `from_user_id` (`from_user_id`),
  KEY `to_user_id` (`to_user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=utf8 COMMENT='用户私信表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chats`
--

LOCK TABLES `chats` WRITE;
/*!40000 ALTER TABLE `chats` DISABLE KEYS */;
INSERT INTO `chats` VALUES (1,143,71,'你好你好你好你好1','2015-09-05 00:00:00',1),(2,143,71,'你好你好你好你好哈哈哈哈哈2','2015-09-05 01:00:00',1),(3,143,71,'你好你好你好你好哈哈哈哈哈啦啦啦啦','2015-09-05 01:00:01',1),(4,143,71,'你好你好你好你好哈哈哈哈哈啦啦啦啦','2015-09-05 01:00:02',1),(5,143,71,'你好你好你好你好5','2015-09-05 02:00:00',1),(6,143,71,'你好你好你好你好6','2015-09-05 03:00:00',1),(7,143,71,'你好你好你好你好7','2015-09-05 04:00:00',1),(8,143,71,'你好你好你好你好8','2015-09-05 05:00:00',1),(9,143,71,'你好你好你好你好9','2015-09-05 05:00:01',1),(10,143,71,'你好你好你好你好10','2015-09-05 06:00:00',1),(11,143,71,'你好你好你好你好11','2015-09-05 06:00:01',1),(12,71,143,'对方的回复1','2015-09-05 06:00:06',1),(13,71,143,'说点什么好呢','2015-09-05 18:57:07',1),(14,71,143,'我说，说点什么好呢','2015-09-05 18:57:53',1),(15,71,143,'我说说点什么好呢哈哈哈哈啊哈','2015-09-05 19:01:04',1),(16,71,143,'你知道我在说什么么？','2015-09-05 19:03:33',1),(17,71,143,'西方哪个国家我没去过？','2015-09-05 19:09:05',1),(18,71,143,'你们啊，naive','2015-09-05 19:10:45',1),(19,71,143,'说好的呢？','2015-09-05 19:12:13',1),(20,71,143,'我就是要说点什么好呢','2015-09-05 19:13:09',1),(21,71,143,'学弟，你还在么？','2015-09-05 19:13:45',1),(22,71,143,'学弟，你还在的吧？学姐话还没说完','2015-09-05 19:15:12',1),(23,71,143,'告诉我，你还有没有什么需求？','2015-09-05 19:16:45',1),(24,71,143,'告诉我点什么事情嘛','2015-09-05 19:18:04',1),(25,71,143,'你觉得呢？','2015-09-05 19:19:35',1),(26,71,143,'你觉得呢？','2015-09-05 19:22:45',1),(27,71,143,'告诉你呢','2015-09-05 19:23:09',1),(28,71,143,'你觉得呢？哈哈哈哈哈哈','2015-09-05 19:24:20',1),(29,71,143,'哼！哈哈哈哈哈哈','2015-09-05 19:29:00',1),(30,143,71,'学姐我来了！','2015-09-05 19:30:00',1),(31,143,71,'学姐我又一次的来了！','2015-09-05 19:32:00',1),(32,143,71,'学姐我又一次的来了哈哈哈哈哈！','2015-09-05 19:33:40',1),(34,143,71,'学姐呢？学姐呢','2015-09-05 19:52:09',1),(35,143,71,'学姐学姐，求出现！','2015-09-05 19:58:59',1),(37,71,73,'您好啊，张翠经同学','2015-09-20 19:20:49',4),(38,143,332,'1111111111111111111111','2015-09-23 15:56:13',5),(39,143,332,'2222222222222222','2015-09-23 15:56:21',5),(40,143,332,'2222222222222222','2015-09-23 15:56:24',5),(41,143,332,'2222222222222222','2015-09-23 15:56:26',5),(42,143,332,'2222222222222222','2015-09-23 15:56:29',5),(43,143,332,'2222222222222222','2015-09-23 15:56:31',5),(51,143,332,'12121','2015-09-23 16:07:08',5),(52,143,332,'12121212','2015-09-23 16:07:12',5),(53,143,332,'12121212','2015-09-23 16:07:15',5),(54,143,332,'12121212','2015-09-23 16:07:20',5),(56,143,332,'旺全','2015-09-23 16:13:26',5),(57,143,332,'请我','2015-09-23 16:14:10',5),(58,143,332,'我想知道你究竟在想些社，lallala','2015-09-23 16:14:27',5),(60,143,332,'说啊啊','2015-09-23 16:22:35',5),(61,143,332,'12121212','2015-09-23 16:29:14',5),(62,143,332,'千万千万','2015-09-23 16:31:05',5),(63,143,71,'测试','2015-09-26 11:09:38',1);
/*!40000 ALTER TABLE `chats` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `configs`
--

DROP TABLE IF EXISTS `configs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `configs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) NOT NULL,
  `content` longblob NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `configs`
--

LOCK TABLES `configs` WRITE;
/*!40000 ALTER TABLE `configs` DISABLE KEYS */;
INSERT INTO `configs` VALUES (1,'oneyuan_on','1'),(2,'oneyuan_link','http://mp.weixin.qq.com/s?__biz=MzAwODU0MjgzNw==&mid=208741421&idx=1&sn=4047f61975e7302754d43d8b46bb545b&scene=1&srcid=0926CtyjauaAZ8HwTeR6yaDD&key=2877d24f51fa5384096399abc42ca263907602b51c09f7035fb4b04f143542f59d648c414446131f3f6706aa1f5b2d16&ascene=0&uin=MTIwNzYz&devicetype=iMac+MacBookPro11%2C1+OSX+OSX+10.10.5+build(14F27)&version=11020201&pass_ticket=mcPxDNz1Aih8cGiwT280PilQildMa1B%2BqeiQb2TA85E%3D'),(3,'mbamarathon_link','https://www.baidu.com/'),(4,'oneyuan_head_pic','http://dev.admin.shijiezhidao.com/static.shijiezhidao/uploads/img/oneyuan.jpg'),(5,'mbamarathon_head_pic','http://dev.admin.shijiezhidao.com/static.shijiezhidao/uploads/img/oneyuan.jpg');
/*!40000 ALTER TABLE `configs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `demand_comments`
--

DROP TABLE IF EXISTS `demand_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `demand_comments` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `demand_id` int(11) NOT NULL COMMENT '需求ID',
  `user_id` int(11) NOT NULL COMMENT '评论人ID',
  `content` varchar(255) NOT NULL COMMENT '评论内容',
  `create_time` datetime NOT NULL COMMENT '评论时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='需求评论表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `demand_comments`
--

LOCK TABLES `demand_comments` WRITE;
/*!40000 ALTER TABLE `demand_comments` DISABLE KEYS */;
INSERT INTO `demand_comments` VALUES (1,1,71,'你们觉得这个需求很好么？','2015-08-30 16:06:08'),(2,1,71,'我也是来评论的，15字，15字。','2015-08-30 16:07:14'),(3,4,71,'我是来评论的','2015-09-13 20:02:09'),(4,3,71,'我已经自荐了，求通过','2015-09-13 20:15:21');
/*!40000 ALTER TABLE `demand_comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `demand_likes`
--

DROP TABLE IF EXISTS `demand_likes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `demand_likes` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `demand_id` int(11) NOT NULL COMMENT '需求ID',
  `user_id` int(11) NOT NULL COMMENT '用户ID',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `ip` varchar(15) NOT NULL COMMENT 'ip',
  PRIMARY KEY (`id`),
  KEY `demand_id` (`demand_id`,`user_id`,`create_time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='需求点赞表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `demand_likes`
--

LOCK TABLES `demand_likes` WRITE;
/*!40000 ALTER TABLE `demand_likes` DISABLE KEYS */;
/*!40000 ALTER TABLE `demand_likes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `demand_orders`
--

DROP TABLE IF EXISTS `demand_orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `demand_orders` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `demand_id` int(11) NOT NULL COMMENT '需求ID',
  `user_id` int(11) NOT NULL COMMENT '应征者ID',
  `inviter_id` int(11) NOT NULL COMMENT '推荐人ID',
  `status` int(11) NOT NULL COMMENT '状态0新建1入选2未入选',
  `create_time` datetime NOT NULL COMMENT '应征时间',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `content` varchar(255) NOT NULL COMMENT '推荐内容',
  PRIMARY KEY (`id`),
  KEY `demand_id` (`demand_id`),
  KEY `user_id` (`user_id`),
  KEY `inviter_id` (`inviter_id`),
  KEY `status` (`status`),
  KEY `create_time` (`create_time`),
  KEY `update_time` (`update_time`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='需求发布应征记录';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `demand_orders`
--

LOCK TABLES `demand_orders` WRITE;
/*!40000 ALTER TABLE `demand_orders` DISABLE KEYS */;
INSERT INTO `demand_orders` VALUES (2,1,71,0,0,'2015-08-30 15:40:48',NULL,''),(3,1,143,71,0,'2015-08-30 15:40:48',NULL,''),(4,3,71,0,1,'2015-09-13 20:13:08',NULL,'我可以解决这个问题');
/*!40000 ALTER TABLE `demand_orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `demand_views`
--

DROP TABLE IF EXISTS `demand_views`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `demand_views` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `demand_id` int(11) NOT NULL COMMENT '需求ID',
  `user_id` int(11) NOT NULL COMMENT '用户ID',
  `create_time` datetime NOT NULL COMMENT '时间',
  `ip` varchar(15) NOT NULL COMMENT 'ip',
  PRIMARY KEY (`id`),
  UNIQUE KEY `demand_id_2` (`demand_id`,`user_id`),
  KEY `user_id` (`user_id`),
  KEY `demand_id` (`demand_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COMMENT='用户访问记录';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `demand_views`
--

LOCK TABLES `demand_views` WRITE;
/*!40000 ALTER TABLE `demand_views` DISABLE KEYS */;
INSERT INTO `demand_views` VALUES (1,1,143,'2015-08-23 17:26:15','172.16.150.1'),(2,4,143,'2015-08-23 18:38:55','172.16.150.1'),(3,1,71,'2015-08-30 15:40:46','172.16.150.1'),(4,2,143,'2015-09-04 17:48:50','172.16.150.1'),(5,3,143,'2015-09-04 17:51:15','172.16.150.1'),(6,4,71,'2015-09-13 19:51:45','172.16.150.1'),(7,3,71,'2015-09-13 20:03:52','172.16.150.1'),(8,6,143,'2015-09-20 15:07:24','172.16.150.1'),(9,3,150,'2015-10-17 15:57:41','172.16.150.1');
/*!40000 ALTER TABLE `demand_views` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `demands`
--

DROP TABLE IF EXISTS `demands`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `demands` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cat` tinyint(4) NOT NULL DEFAULT '0' COMMENT '分类',
  `user_id` int(11) NOT NULL COMMENT '发布需求的用户id',
  `type` tinyint(4) NOT NULL COMMENT '需求类型',
  `status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '需求状态0新建1pending2成交订单3取消',
  `name` varchar(100) NOT NULL DEFAULT '' COMMENT '标题',
  `content` text NOT NULL COMMENT '需求内容',
  `order_id` int(11) NOT NULL DEFAULT '0' COMMENT '生成的订单的ID',
  `class_way` tinyint(1) NOT NULL COMMENT '授课方式1线上2线下3均可',
  `price` bigint(20) NOT NULL COMMENT '愿意出价',
  `location` varchar(32) DEFAULT NULL COMMENT '线下地点',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `comment_num` int(11) NOT NULL COMMENT '评论数量',
  `view_num` int(11) NOT NULL COMMENT '评论数量',
  `like_num` int(11) NOT NULL COMMENT '点赞数量',
  `publish_time` datetime DEFAULT NULL COMMENT '审核通过发布时间shen''he''ton',
  `expectation` varchar(512) NOT NULL DEFAULT '' COMMENT '预期效果',
  `valid_days` tinyint(4) NOT NULL COMMENT '有效时间',
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `type` (`type`),
  KEY `status` (`status`),
  KEY `order_id` (`order_id`),
  KEY `class_way` (`class_way`),
  KEY `create_time` (`create_time`),
  KEY `update_time` (`update_time`),
  KEY `publish_time` (`publish_time`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='需求表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `demands`
--

LOCK TABLES `demands` WRITE;
/*!40000 ALTER TABLE `demands` DISABLE KEYS */;
INSERT INTO `demands` VALUES (1,0,143,1,0,'','我想保研求解答',0,2,10000,'中科院','2015-08-23 16:16:58',NULL,0,2,0,NULL,'',0),(2,0,143,1,4,'','我想保研求解答',0,1,20000,'','2015-08-23 16:24:44','2015-10-17 15:57:05',0,1,0,'2015-10-17 15:57:05','',0),(3,0,143,1,1,'','我想保研求解答',0,1,20000,'','2015-08-23 16:25:28',NULL,0,3,0,NULL,'',0),(4,0,143,1,4,'','我要找女友',0,1,15800,'','2015-08-23 18:38:41','2015-10-17 15:56:49',0,2,0,'2015-10-17 15:56:49','',0),(5,0,143,1,3,'','我要找女朋友啊~~~~~~~~~',0,1,100000,'','2015-09-20 14:58:35','2015-10-17 15:00:47',0,0,0,NULL,'',0),(6,0,143,1,4,'','我对人生有很大的困惑',0,3,20000,'中科院的教室','2015-09-20 15:06:18','2015-10-17 14:50:44',0,1,0,'2015-10-17 14:50:44','',0);
/*!40000 ALTER TABLE `demands` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `event_mba_marathon_sjs`
--

DROP TABLE IF EXISTS `event_mba_marathon_sjs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `event_mba_marathon_sjs` (
  `id` int(11) NOT NULL,
  `sj_order` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `sj_order` (`sj_order`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='mba马拉松比赛活动页配置';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `event_mba_marathon_sjs`
--

LOCK TABLES `event_mba_marathon_sjs` WRITE;
/*!40000 ALTER TABLE `event_mba_marathon_sjs` DISABLE KEYS */;
INSERT INTO `event_mba_marathon_sjs` VALUES (445,0);
/*!40000 ALTER TABLE `event_mba_marathon_sjs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `event_oneyuan_coupons`
--

DROP TABLE IF EXISTS `event_oneyuan_coupons`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `event_oneyuan_coupons` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(20) NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `create_time` datetime NOT NULL,
  `valid_time` datetime NOT NULL,
  `use_time` datetime DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `code` (`code`),
  KEY `user_id` (`user_id`),
  KEY `status` (`status`)
) ENGINE=InnoDB AUTO_INCREMENT=201 DEFAULT CHARSET=utf8 COMMENT='1元优惠码';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `event_oneyuan_coupons`
--

LOCK TABLES `event_oneyuan_coupons` WRITE;
/*!40000 ALTER TABLE `event_oneyuan_coupons` DISABLE KEYS */;
INSERT INTO `event_oneyuan_coupons` VALUES (1,'7932AA',0,'2015-09-22 17:37:46','2015-10-30 00:00:00',NULL,0),(2,'7D4C86',0,'2015-09-22 17:37:46','2015-10-30 00:00:00',NULL,0),(3,'1437AD',0,'2015-09-22 17:37:46','2015-10-30 00:00:00',NULL,0),(4,'4241BF',0,'2015-09-22 17:37:46','2015-10-30 00:00:00',NULL,0),(5,'C5177D',0,'2015-09-22 17:37:46','2015-10-30 00:00:00',NULL,0),(6,'0293D3',0,'2015-09-22 17:37:46','2015-10-30 00:00:00',NULL,0),(7,'168005',0,'2015-09-22 17:37:46','2015-10-30 00:00:00',NULL,0),(8,'56723A',0,'2015-09-22 17:37:46','2015-10-30 00:00:00',NULL,0),(9,'675367',0,'2015-09-22 17:37:46','2015-10-30 00:00:00',NULL,0),(10,'09118D',0,'2015-09-22 17:37:46','2015-10-30 00:00:00',NULL,0),(11,'D9E013',0,'2015-09-22 17:37:46','2015-10-30 00:00:00',NULL,0),(12,'7BA2FB',0,'2015-09-22 17:37:46','2015-10-30 00:00:00',NULL,0),(13,'D80819',0,'2015-09-22 17:37:46','2015-10-30 00:00:00',NULL,0),(14,'9A7F42',0,'2015-09-22 17:37:46','2015-10-30 00:00:00',NULL,0),(15,'030EE2',0,'2015-09-22 17:37:46','2015-10-30 00:00:00',NULL,0),(16,'DA676B',0,'2015-09-22 17:37:46','2015-10-30 00:00:00',NULL,0),(17,'8C464E',0,'2015-09-22 17:37:46','2015-10-30 00:00:00',NULL,0),(18,'3F6414',0,'2015-09-22 17:37:46','2015-10-30 00:00:00',NULL,0),(19,'C29190',0,'2015-09-22 17:37:46','2015-10-30 00:00:00',NULL,0),(20,'3983DE',0,'2015-09-22 17:37:46','2015-10-30 00:00:00',NULL,0),(21,'B49CC4',0,'2015-09-22 17:37:46','2015-10-30 00:00:00',NULL,0),(22,'1270E2',0,'2015-09-22 17:37:46','2015-10-30 00:00:00',NULL,0),(23,'193F6D',0,'2015-09-22 17:37:46','2015-10-30 00:00:00',NULL,0),(24,'8B790B',0,'2015-09-22 17:37:46','2015-10-30 00:00:00',NULL,0),(25,'B31EB5',0,'2015-09-22 17:37:46','2015-10-30 00:00:00',NULL,0),(26,'F01CCB',0,'2015-09-22 17:37:46','2015-10-30 00:00:00',NULL,0),(27,'3DF14D',0,'2015-09-22 17:37:46','2015-10-30 00:00:00',NULL,0),(28,'F72E37',0,'2015-09-22 17:37:46','2015-10-30 00:00:00',NULL,0),(29,'114503',0,'2015-09-22 17:37:46','2015-10-30 00:00:00',NULL,0),(30,'B6A0B3',0,'2015-09-22 17:37:46','2015-10-30 00:00:00',NULL,0),(31,'4CB0E7',0,'2015-09-22 17:37:46','2015-10-30 00:00:00',NULL,0),(32,'99594D',0,'2015-09-22 17:37:46','2015-10-30 00:00:00',NULL,0),(33,'9158BE',0,'2015-09-22 17:37:46','2015-10-30 00:00:00',NULL,0),(34,'D1841B',0,'2015-09-22 17:37:46','2015-10-30 00:00:00',NULL,0),(35,'B69338',0,'2015-09-22 17:37:46','2015-10-30 00:00:00',NULL,0),(36,'7FC009',0,'2015-09-22 17:37:46','2015-10-30 00:00:00',NULL,0),(37,'9AB39C',0,'2015-09-22 17:37:46','2015-10-30 00:00:00',NULL,0),(38,'E65F51',0,'2015-09-22 17:37:46','2015-10-30 00:00:00',NULL,0),(39,'28020E',0,'2015-09-22 17:37:46','2015-10-30 00:00:00',NULL,0),(40,'4B8DA4',0,'2015-09-22 17:37:46','2015-10-30 00:00:00',NULL,0),(41,'C1EA3E',0,'2015-09-22 17:37:46','2015-10-30 00:00:00',NULL,0),(42,'857B17',0,'2015-09-22 17:37:46','2015-10-30 00:00:00',NULL,0),(43,'8954C0',0,'2015-09-22 17:37:46','2015-10-30 00:00:00',NULL,0),(44,'E0EE80',0,'2015-09-22 17:37:46','2015-10-30 00:00:00',NULL,0),(45,'2F25AC',0,'2015-09-22 17:37:46','2015-10-30 00:00:00',NULL,0),(46,'908D79',0,'2015-09-22 17:37:46','2015-10-30 00:00:00',NULL,0),(47,'580DA3',0,'2015-09-22 17:37:46','2015-10-30 00:00:00',NULL,0),(48,'A7F61A',0,'2015-09-22 17:37:46','2015-10-30 00:00:00',NULL,0),(49,'3E1460',0,'2015-09-22 17:37:46','2015-10-30 00:00:00',NULL,0),(50,'F79495',0,'2015-09-22 17:37:46','2015-10-30 00:00:00',NULL,0),(51,'1043AD',0,'2015-09-22 17:37:46','2015-10-30 00:00:00',NULL,0),(52,'AD54F8',0,'2015-09-22 17:37:46','2015-10-30 00:00:00',NULL,0),(53,'4F294E',0,'2015-09-22 17:37:46','2015-10-30 00:00:00',NULL,0),(54,'F6B640',0,'2015-09-22 17:37:46','2015-10-30 00:00:00',NULL,0),(55,'44E789',0,'2015-09-22 17:37:46','2015-10-30 00:00:00',NULL,0),(56,'439D8A',0,'2015-09-22 17:37:46','2015-10-30 00:00:00',NULL,0),(57,'2B341C',0,'2015-09-22 17:37:46','2015-10-30 00:00:00',NULL,0),(58,'C9229E',0,'2015-09-22 17:37:46','2015-10-30 00:00:00',NULL,0),(59,'536BDE',0,'2015-09-22 17:37:46','2015-10-30 00:00:00',NULL,0),(60,'7D3EB2',0,'2015-09-22 17:37:46','2015-10-30 00:00:00',NULL,0),(61,'21B035',0,'2015-09-22 17:37:46','2015-10-30 00:00:00',NULL,0),(62,'18FD07',0,'2015-09-22 17:37:46','2015-10-30 00:00:00',NULL,0),(63,'F658AA',0,'2015-09-22 17:37:46','2015-10-30 00:00:00',NULL,0),(64,'B9F432',0,'2015-09-22 17:37:46','2015-10-30 00:00:00',NULL,0),(65,'07DA12',0,'2015-09-22 17:37:46','2015-10-30 00:00:00',NULL,0),(66,'B93F1F',0,'2015-09-22 17:37:46','2015-10-30 00:00:00',NULL,0),(67,'3D633E',0,'2015-09-22 17:37:46','2015-10-30 00:00:00',NULL,0),(68,'A8EA09',0,'2015-09-22 17:37:46','2015-10-30 00:00:00',NULL,0),(69,'74CEDF',0,'2015-09-22 17:37:46','2015-10-30 00:00:00',NULL,0),(70,'2153D1',0,'2015-09-22 17:37:46','2015-10-30 00:00:00',NULL,0),(71,'2A98DD',0,'2015-09-22 17:37:46','2015-10-30 00:00:00',NULL,0),(72,'7C7D79',0,'2015-09-22 17:37:46','2015-10-30 00:00:00',NULL,0),(73,'B9EBE9',0,'2015-09-22 17:37:46','2015-10-30 00:00:00',NULL,0),(74,'7564CD',0,'2015-09-22 17:37:46','2015-10-30 00:00:00',NULL,0),(75,'23AC8A',0,'2015-09-22 17:37:46','2015-10-30 00:00:00',NULL,0),(76,'691D2A',0,'2015-09-22 17:37:46','2015-10-30 00:00:00',NULL,0),(77,'5F9FEA',0,'2015-09-22 17:37:46','2015-10-30 00:00:00',NULL,0),(78,'68EE19',0,'2015-09-22 17:37:46','2015-10-30 00:00:00',NULL,0),(79,'CE2408',0,'2015-09-22 17:37:46','2015-10-30 00:00:00',NULL,0),(80,'AA2396',0,'2015-09-22 17:37:46','2015-10-30 00:00:00',NULL,0),(81,'A0ABA2',0,'2015-09-22 17:37:46','2015-10-30 00:00:00',NULL,0),(82,'8D1613',0,'2015-09-22 17:37:46','2015-10-30 00:00:00',NULL,0),(83,'86238A',0,'2015-09-22 17:37:46','2015-10-30 00:00:00',NULL,0),(84,'C53584',0,'2015-09-22 17:37:46','2015-10-30 00:00:00',NULL,0),(85,'74E938',0,'2015-09-22 17:37:46','2015-10-30 00:00:00',NULL,0),(86,'FF0D45',0,'2015-09-22 17:37:46','2015-10-30 00:00:00',NULL,0),(87,'988D9A',0,'2015-09-22 17:37:46','2015-10-30 00:00:00',NULL,0),(88,'73E5CC',0,'2015-09-22 17:37:46','2015-10-30 00:00:00',NULL,0),(89,'3540F7',0,'2015-09-22 17:37:46','2015-10-30 00:00:00',NULL,0),(90,'752DED',0,'2015-09-22 17:37:46','2015-10-30 00:00:00',NULL,0),(91,'4EC16B',0,'2015-09-22 17:37:46','2015-10-30 00:00:00',NULL,0),(92,'452326',0,'2015-09-22 17:37:46','2015-10-30 00:00:00',NULL,0),(93,'0A765B',0,'2015-09-22 17:37:46','2015-10-30 00:00:00',NULL,0),(94,'EAB863',0,'2015-09-22 17:37:46','2015-10-30 00:00:00',NULL,0),(95,'7D7FE8',0,'2015-09-22 17:37:46','2015-10-30 00:00:00',NULL,0),(96,'0E3256',0,'2015-09-22 17:37:46','2015-10-30 00:00:00',NULL,0),(97,'CD0F7A',0,'2015-09-22 17:37:46','2015-10-30 00:00:00',NULL,0),(98,'47C10D',0,'2015-09-22 17:37:46','2015-10-30 00:00:00',NULL,0),(99,'9FBBB0',0,'2015-09-22 17:37:46','2015-10-30 00:00:00',NULL,0),(100,'2A0FA8',0,'2015-09-22 17:37:46','2015-10-30 00:00:00',NULL,0),(101,'B0C0C2',0,'2015-09-22 17:37:46','2015-10-30 00:00:00',NULL,0),(102,'184334',0,'2015-09-22 17:37:46','2015-10-30 00:00:00',NULL,0),(103,'EBA806',0,'2015-09-22 17:37:46','2015-10-30 00:00:00',NULL,0),(104,'692382',0,'2015-09-22 17:37:46','2015-10-30 00:00:00',NULL,0),(105,'C26DF1',0,'2015-09-22 17:37:46','2015-10-30 00:00:00',NULL,0),(106,'0D656C',0,'2015-09-22 17:37:46','2015-10-30 00:00:00',NULL,0),(107,'5EABA9',0,'2015-09-22 17:37:46','2015-10-30 00:00:00',NULL,0),(108,'AA95BA',0,'2015-09-22 17:37:46','2015-10-30 00:00:00',NULL,0),(109,'FEECD3',0,'2015-09-22 17:37:46','2015-10-30 00:00:00',NULL,0),(110,'EBEE91',0,'2015-09-22 17:37:46','2015-10-30 00:00:00',NULL,0),(111,'FC1E81',0,'2015-09-22 17:37:46','2015-10-30 00:00:00',NULL,0),(112,'C22162',0,'2015-09-22 17:37:46','2015-10-30 00:00:00',NULL,0),(113,'DA1C3A',0,'2015-09-22 17:37:46','2015-10-30 00:00:00',NULL,0),(114,'7B09A1',0,'2015-09-22 17:37:46','2015-10-30 00:00:00',NULL,0),(115,'055E52',0,'2015-09-22 17:37:46','2015-10-30 00:00:00',NULL,0),(116,'93811E',0,'2015-09-22 17:37:46','2015-10-30 00:00:00',NULL,0),(117,'1B10CD',0,'2015-09-22 17:37:46','2015-10-30 00:00:00',NULL,0),(118,'F8DDD0',0,'2015-09-22 17:37:46','2015-10-30 00:00:00',NULL,0),(119,'6D497D',0,'2015-09-22 17:37:46','2015-10-30 00:00:00',NULL,0),(120,'894230',0,'2015-09-22 17:37:46','2015-10-30 00:00:00',NULL,0),(121,'20C988',0,'2015-09-22 17:37:46','2015-10-30 00:00:00',NULL,0),(122,'1482A8',0,'2015-09-22 17:37:46','2015-10-30 00:00:00',NULL,0),(123,'76D1C8',0,'2015-09-22 17:37:46','2015-10-30 00:00:00',NULL,0),(124,'362181',0,'2015-09-22 17:37:46','2015-10-30 00:00:00',NULL,0),(125,'4F2AF5',0,'2015-09-22 17:37:46','2015-10-30 00:00:00',NULL,0),(126,'2C81EA',0,'2015-09-22 17:37:46','2015-10-30 00:00:00',NULL,0),(127,'9F9882',0,'2015-09-22 17:37:46','2015-10-30 00:00:00',NULL,0),(128,'B06A3F',0,'2015-09-22 17:37:46','2015-10-30 00:00:00',NULL,0),(129,'7F13D2',0,'2015-09-22 17:37:46','2015-10-30 00:00:00',NULL,0),(130,'F37127',0,'2015-09-22 17:37:46','2015-10-30 00:00:00',NULL,0),(131,'FD7565',0,'2015-09-22 17:37:46','2015-10-30 00:00:00',NULL,0),(132,'25258A',0,'2015-09-22 17:37:46','2015-10-30 00:00:00',NULL,0),(133,'4C9C4D',0,'2015-09-22 17:37:46','2015-10-30 00:00:00',NULL,0),(134,'1D2FCF',0,'2015-09-22 17:37:46','2015-10-30 00:00:00',NULL,0),(135,'0D1991',0,'2015-09-22 17:37:46','2015-10-30 00:00:00',NULL,0),(136,'C7E8C7',0,'2015-09-22 17:37:46','2015-10-30 00:00:00',NULL,0),(137,'04D4A0',0,'2015-09-22 17:37:46','2015-10-30 00:00:00',NULL,0),(138,'6B927C',0,'2015-09-22 17:37:46','2015-10-30 00:00:00',NULL,0),(139,'B06677',0,'2015-09-22 17:37:46','2015-10-30 00:00:00',NULL,0),(140,'89460E',0,'2015-09-22 17:37:46','2015-10-30 00:00:00',NULL,0),(141,'1FE276',0,'2015-09-22 17:37:46','2015-10-30 00:00:00',NULL,0),(142,'BD5EB2',0,'2015-09-22 17:37:46','2015-10-30 00:00:00',NULL,0),(143,'72614E',0,'2015-09-22 17:37:46','2015-10-30 00:00:00',NULL,0),(144,'D60769',0,'2015-09-22 17:37:46','2015-10-30 00:00:00',NULL,0),(145,'59AA11',0,'2015-09-22 17:37:46','2015-10-30 00:00:00',NULL,0),(146,'86FA56',0,'2015-09-22 17:37:46','2015-10-30 00:00:00',NULL,0),(147,'BAC8ED',0,'2015-09-22 17:37:46','2015-10-30 00:00:00',NULL,0),(148,'C04ACD',0,'2015-09-22 17:37:46','2015-10-30 00:00:00',NULL,0),(149,'170DCD',0,'2015-09-22 17:37:46','2015-10-30 00:00:00',NULL,0),(150,'0CC56E',0,'2015-09-22 17:37:46','2015-10-30 00:00:00',NULL,0),(151,'EAAA6D',0,'2015-09-22 17:37:46','2015-10-30 00:00:00',NULL,0),(152,'6E57B2',0,'2015-09-22 17:37:46','2015-10-30 00:00:00',NULL,0),(153,'D45F32',0,'2015-09-22 17:37:46','2015-10-30 00:00:00',NULL,0),(154,'70A974',0,'2015-09-22 17:37:46','2015-10-30 00:00:00',NULL,0),(155,'E75E71',0,'2015-09-22 17:37:46','2015-10-30 00:00:00',NULL,0),(156,'08F38A',0,'2015-09-22 17:37:46','2015-10-30 00:00:00',NULL,0),(157,'05E88B',0,'2015-09-22 17:37:46','2015-10-30 00:00:00',NULL,0),(158,'8D6E9B',0,'2015-09-22 17:37:46','2015-10-30 00:00:00',NULL,0),(159,'4F6AD8',0,'2015-09-22 17:37:46','2015-10-30 00:00:00',NULL,0),(160,'84B1BC',0,'2015-09-22 17:37:46','2015-10-30 00:00:00',NULL,0),(161,'5ADACA',0,'2015-09-22 17:37:46','2015-10-30 00:00:00',NULL,0),(162,'CC0A35',0,'2015-09-22 17:37:46','2015-10-30 00:00:00',NULL,0),(163,'34CB62',0,'2015-09-22 17:37:46','2015-10-30 00:00:00',NULL,0),(164,'2C08EE',0,'2015-09-22 17:37:46','2015-10-30 00:00:00',NULL,0),(165,'9BF1E4',0,'2015-09-22 17:37:46','2015-10-30 00:00:00',NULL,0),(166,'9F05AD',0,'2015-09-22 17:37:46','2015-10-30 00:00:00',NULL,0),(167,'54678A',0,'2015-09-22 17:37:46','2015-10-30 00:00:00',NULL,0),(168,'AE0D80',0,'2015-09-22 17:37:46','2015-10-30 00:00:00',NULL,0),(169,'BD07A8',0,'2015-09-22 17:37:46','2015-10-30 00:00:00',NULL,0),(170,'CEF9B4',0,'2015-09-22 17:37:46','2015-10-30 00:00:00',NULL,0),(171,'D8108D',0,'2015-09-22 17:37:46','2015-10-30 00:00:00',NULL,0),(172,'176B61',0,'2015-09-22 17:37:46','2015-10-30 00:00:00',NULL,0),(173,'9D7E33',0,'2015-09-22 17:37:46','2015-10-30 00:00:00',NULL,0),(174,'041CBD',0,'2015-09-22 17:37:46','2015-10-30 00:00:00',NULL,0),(175,'6585EA',0,'2015-09-22 17:37:46','2015-10-30 00:00:00',NULL,0),(176,'070F09',0,'2015-09-22 17:37:46','2015-10-30 00:00:00',NULL,0),(177,'A9DE54',0,'2015-09-22 17:37:46','2015-10-30 00:00:00',NULL,0),(178,'A6B665',0,'2015-09-22 17:37:46','2015-10-30 00:00:00',NULL,0),(179,'9EE63E',0,'2015-09-22 17:37:46','2015-10-30 00:00:00',NULL,0),(180,'0C0118',0,'2015-09-22 17:37:46','2015-10-30 00:00:00',NULL,0),(181,'DAEF18',0,'2015-09-22 17:37:46','2015-10-30 00:00:00',NULL,0),(182,'1B69AE',0,'2015-09-22 17:37:46','2015-10-30 00:00:00',NULL,0),(183,'D844DF',0,'2015-09-22 17:37:46','2015-10-30 00:00:00',NULL,0),(184,'95C8E6',0,'2015-09-22 17:37:46','2015-10-30 00:00:00',NULL,0),(185,'11E1BF',0,'2015-09-22 17:37:46','2015-10-30 00:00:00',NULL,0),(186,'B6767A',0,'2015-09-22 17:37:46','2015-10-30 00:00:00',NULL,0),(187,'95C145',0,'2015-09-22 17:37:46','2015-10-30 00:00:00',NULL,0),(188,'6170FC',0,'2015-09-22 17:37:46','2015-10-30 00:00:00',NULL,0),(189,'6519CB',0,'2015-09-22 17:37:46','2015-10-30 00:00:00',NULL,0),(190,'1D424B',0,'2015-09-22 17:37:46','2015-10-30 00:00:00',NULL,0),(191,'64756A',0,'2015-09-22 17:37:46','2015-10-30 00:00:00',NULL,0),(192,'B976C5',0,'2015-09-22 17:37:46','2015-10-30 00:00:00',NULL,0),(193,'31EC96',0,'2015-09-22 17:37:46','2015-10-30 00:00:00',NULL,0),(194,'43E163',0,'2015-09-22 17:37:46','2015-10-30 00:00:00',NULL,0),(195,'5C33E1',0,'2015-09-22 17:37:46','2015-10-30 00:00:00',NULL,0),(196,'CB3467',0,'2015-09-22 17:37:46','2015-10-30 00:00:00',NULL,0),(197,'206002',0,'2015-09-22 17:37:46','2015-10-30 00:00:00',NULL,0),(198,'8C4DDF',143,'2015-09-22 17:37:46','2015-10-30 00:00:00','2015-09-22 22:55:06',4),(199,'AB94AD',143,'2015-09-22 17:37:46','2015-10-30 00:00:00','2015-09-22 22:34:58',2),(200,'4B2421',71,'2015-09-22 17:37:46','2015-10-30 00:00:00','0000-00-00 00:00:00',1);
/*!40000 ALTER TABLE `event_oneyuan_coupons` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `event_oneyuan_sjs`
--

DROP TABLE IF EXISTS `event_oneyuan_sjs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `event_oneyuan_sjs` (
  `id` int(11) NOT NULL,
  `school` tinyint(4) NOT NULL,
  `sj_order` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='一元师姐活动师姐配置';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `event_oneyuan_sjs`
--

LOCK TABLES `event_oneyuan_sjs` WRITE;
/*!40000 ALTER TABLE `event_oneyuan_sjs` DISABLE KEYS */;
INSERT INTO `event_oneyuan_sjs` VALUES (267,1,5),(440,1,0),(442,1,0),(443,1,0),(445,1,0);
/*!40000 ALTER TABLE `event_oneyuan_sjs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `p_account`
--

DROP TABLE IF EXISTS `p_account`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `p_account` (
  `id` int(12) NOT NULL AUTO_INCREMENT COMMENT '个人账户id',
  `name` varchar(100) DEFAULT NULL COMMENT '用户名',
  `email` varchar(128) DEFAULT NULL COMMENT '邮箱',
  `wx_openid` varchar(90) NOT NULL COMMENT '个人微信openid',
  `phone` varchar(18) NOT NULL COMMENT '个人电话信息',
  `password` varchar(50) NOT NULL COMMENT '登陆密码md5',
  `ac_nick_name` varchar(40) NOT NULL COMMENT '昵称',
  `ac_username` varchar(40) NOT NULL,
  `ac_info` text NOT NULL,
  `ac_head_img` varchar(100) NOT NULL COMMENT '头像，可能来自于微信',
  `wx_headimgurl` varchar(300) NOT NULL,
  `account_type` varchar(2) NOT NULL COMMENT '账户类型：1普通，2师姐',
  `wx_sex` varchar(1) NOT NULL COMMENT '用户的性别，值为1时是男性，值为2时是女性，值为0时是未知',
  `wx_province` varchar(40) NOT NULL,
  `wx_city` varchar(20) NOT NULL,
  `wx_country` varchar(20) NOT NULL,
  `wx_privilege` varchar(40) NOT NULL,
  `salt` varchar(32) NOT NULL COMMENT 'salt',
  `reg_time` datetime NOT NULL COMMENT '注册时间',
  `reg_ip` varchar(32) NOT NULL COMMENT '注册ip',
  `login_time` datetime DEFAULT NULL COMMENT '最后登录时间',
  `login_expire` datetime DEFAULT NULL COMMENT '登录过期时间',
  `login_ip` varchar(32) DEFAULT NULL COMMENT '最后登录ip',
  `login_token` varchar(32) DEFAULT NULL COMMENT '登录token',
  `name_status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '用户名状态0补全了1未补全',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  UNIQUE KEY `email` (`email`),
  KEY `wx_openid` (`wx_openid`),
  KEY `name_status` (`name_status`)
) ENGINE=InnoDB AUTO_INCREMENT=513 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `p_account`
--

LOCK TABLES `p_account` WRITE;
/*!40000 ALTER TABLE `p_account` DISABLE KEYS */;
INSERT INTO `p_account` VALUES (71,NULL,NULL,'','15652967207','3c6fcccf800b9652d2ac85de6c108c86','陈默','陈默','陈默','sj_profile/71/14432719737157.png','','2','1','','海淀','北京','oyzEHs_WnJ7WZG_BetovHKqYhFms','','0000-00-00 00:00:00','',NULL,NULL,NULL,NULL,0),(72,NULL,NULL,'','','Chris_陈_majin','Chris_陈','','','','http://wx.qlogo.cn/mmopen/PkWh3L3OBbxS6gOMAlNBxFhs1XHTdp13qdRPyDQwibNI00FicTSrcHJ2PFMiaLXziagC7So4YvjrVKicP2gs4muOexd0YeFaIq94F/0','1','1','','海淀','北京','oyzEHs_vq_SLphuB2dyO3g-5YOdo','','0000-00-00 00:00:00','',NULL,NULL,NULL,NULL,0),(73,NULL,NULL,'oyzEHs44yBPNtv8INSSr5uA3MoB4','15652695427','','张翠景','','','S0052张翠景-1.jpg','','2','','','','','','','0000-00-00 00:00:00','',NULL,NULL,NULL,NULL,0),(74,NULL,NULL,'','13051571525','','荣益','','','S0053荣益-1.jpg','','2','','','','','','','0000-00-00 00:00:00','',NULL,NULL,NULL,NULL,0),(75,NULL,NULL,'oyzEHs7IgJET1nc5l25JZ1fz4fKg','18701486051','68b7df359395d18954bc4eaac6996a6d','乔楠楠','乔楠楠','中科院','S0054乔楠楠-1.jpg','','2','','','','','','','0000-00-00 00:00:00','',NULL,NULL,NULL,NULL,0),(76,NULL,NULL,'','15210588789','','牟翘楚','','','S0055牟翘楚-1.jpg','','2','','','','','','','0000-00-00 00:00:00','',NULL,NULL,NULL,NULL,0),(77,NULL,NULL,'','13121933896','','王翔宇','','','S0056王翔宇-1.jpg','','2','','','','','','','0000-00-00 00:00:00','',NULL,NULL,NULL,NULL,0),(78,NULL,NULL,'','18600836103','','赵砚彬','','','S0057赵砚彬-1.jpg','','2','','','','','','','0000-00-00 00:00:00','',NULL,NULL,NULL,NULL,0),(79,NULL,NULL,'oyzEHs3pnY4FLZAV-N1RmbVg9kI8','15120094069','5acfd67487d544edbacf145dd156055a','小坡','黄麟','','S0058黄麟-1.jpg','','2','','','','','','','0000-00-00 00:00:00','',NULL,NULL,NULL,NULL,0),(80,NULL,NULL,'','18801468842','','刘博文','','','S0059刘博文-1.jpg','','2','','','','','','','0000-00-00 00:00:00','',NULL,NULL,NULL,NULL,0),(81,NULL,NULL,'','18811364244','','缪笛','','','S0060缪笛-1.jpg','','2','','','','','','','0000-00-00 00:00:00','',NULL,NULL,NULL,NULL,0),(82,NULL,NULL,'','18810982536','','周云桥','','','S0061周云桥-1.jpg','','2','','','','','','','0000-00-00 00:00:00','',NULL,NULL,NULL,NULL,0),(83,NULL,NULL,'','15710033155','','赵思研','','','S0063赵思妍-1.JPG','','2','','','','','','','0000-00-00 00:00:00','',NULL,NULL,NULL,NULL,0),(84,NULL,NULL,'','18515940331','','王韬','','','S0064王韬-1.jpg','','2','','','','','','','0000-00-00 00:00:00','',NULL,NULL,NULL,NULL,0),(85,NULL,NULL,'','17701221079','','陈禹男','','','S0065陈禹男-1.jpg','','2','','','','','','','0000-00-00 00:00:00','',NULL,NULL,NULL,NULL,0),(86,NULL,NULL,'','18911655775','','蒋 垒','','','S0066蒋垒-1.jpg','','2','','','','','','','0000-00-00 00:00:00','',NULL,NULL,NULL,NULL,0),(88,NULL,NULL,'','18600640260','','许强辉','','','S0068许强辉-1.jpg','','2','','','','','','','0000-00-00 00:00:00','',NULL,NULL,NULL,NULL,0),(89,NULL,NULL,'','18311026678','','林兆','','','S0070林兆-1.jpg','','2','','','','','','','0000-00-00 00:00:00','',NULL,NULL,NULL,NULL,0),(90,NULL,NULL,'','15011341605','','邓思颖','','','S0071邓思颖-1.jpg','','2','','','','','','','0000-00-00 00:00:00','',NULL,NULL,NULL,NULL,0),(91,NULL,NULL,'','15652652604','','胡晓晖','','','S0072胡晓晖-1.jpg','','2','','','','','','','0000-00-00 00:00:00','',NULL,NULL,NULL,NULL,0),(92,NULL,NULL,'oyzEHszluU3PQPybAfa9yH0W2kAM','18612992045','f91f3a5ec9fd34b3fcfc04c4990b24b4','Catherine','王超逸','小菇凉','S0073王超逸-1.JPG','http://wx.qlogo.cn/mmopen/ajNVdqHZLLAuf8wRFnxOUYnZVfpTjF0MqqxdYj7l9Jt8zic5RhZyrwsgmMiamMjKjFiciajfnO63QLY40l8zS3WKCQ/0','1','2','','朝阳','北京','oyzEHszluU3PQPybAfa9yH0W2kAM','','0000-00-00 00:00:00','',NULL,NULL,NULL,NULL,0),(93,NULL,NULL,'','18800174876','','朱鹤','','','S0075朱鹤-1.JPG','','2','','','','','','','0000-00-00 00:00:00','',NULL,NULL,NULL,NULL,0),(94,NULL,NULL,'','15210837141','','吕梦菲','','','S0076吕梦菲-1.JPG','','2','','','','','','','0000-00-00 00:00:00','',NULL,NULL,NULL,NULL,0),(95,NULL,NULL,'','18810767376','','袁靓','','','S0077袁靓-1.jpg','','2','','','','','','','0000-00-00 00:00:00','',NULL,NULL,NULL,NULL,0),(96,NULL,NULL,'','15510175713','','李岳乔','','','S0078李岳乔-1.jpg','','2','','','','','','','0000-00-00 00:00:00','',NULL,NULL,NULL,NULL,0),(97,NULL,NULL,'','18180309669','','李智','','','李智-1.jpg','','2','','','','','','','0000-00-00 00:00:00','',NULL,NULL,NULL,NULL,0),(98,NULL,NULL,'','13810475540','','刘璐','','','刘璐-1.jpg','','2','','','','','','','0000-00-00 00:00:00','',NULL,NULL,NULL,NULL,0),(99,NULL,NULL,'','18801480728','','王逸非','','','王逸飞-1.jpg','','2','','','','','','','0000-00-00 00:00:00','',NULL,NULL,NULL,NULL,0),(100,NULL,NULL,'','18910690635','','张关华','','','张关华-1.jpg','','2','','','','','','','0000-00-00 00:00:00','',NULL,NULL,NULL,NULL,0),(101,NULL,NULL,'','13261766096','','叶雨阳','','','S0074叶雨阳-1.JPG','','2','','','','','','','0000-00-00 00:00:00','',NULL,NULL,NULL,NULL,0),(125,NULL,NULL,'oyzEHsz9CbFjEeFuBwc6krnkZtu8','13269387620','e10adc3949ba59abbe56e057f20f883e','funmore','','','S0074叶雨阳-1.JPG','http://wx.qlogo.cn/mmopen/zeQmib8m1m20pWP9Z4tsC5PEkwXy2icbr1Dnox86MuQ1bOuyobJ9VPrJHyFIyDqKqVp8CADGFNibJ1Xe9SNcRriaHc2CorM1UibJk/0','2','1','','海淀','北京','oyzEHsz9CbFjEeFuBwc6krnkZtu8','','0000-00-00 00:00:00','',NULL,NULL,NULL,NULL,0),(126,NULL,NULL,'oyzEHs_WnJ7WZG_BetovHKqYhFms','13810246377','3c6fcccf800b9652d2ac85de6c108c86','小东 ','','','S0074叶雨阳-1.JPG','http://wx.qlogo.cn/mmopen/yHWIiaDMMjQmNjveE3O9gvsRkoQrNJgib7vyD71LYH2OOYkJcf86gjT6icQPxsQJK0tNAG0ZIkQbXItgKUQeK6uj24kOhQwH6RH/0','2','1','','海淀','北京','oyzEHs_WnJ7WZG_BetovHKqYhFms','','0000-00-00 00:00:00','',NULL,NULL,NULL,NULL,0),(141,NULL,NULL,'oyzEHs0cURuS6Xy__plqhI2f1nrk','13426249695','415290769594460e2e485922904f345d','月宝','月','月 ','','http://wx.qlogo.cn/mmopen/PkWh3L3OBbxS6gOMAlNBxKAtqwWPbPkHJDn0Mrck6ictRoB7Kz1hBpMkZxonNPiaRxBGsrgOdAZ7b5gJb5MoSiak9AXYo2MFSKl/0','1','2','','昌平','北京','oyzEHs0cURuS6Xy__plqhI2f1nrk','','0000-00-00 00:00:00','',NULL,NULL,NULL,NULL,0),(142,NULL,NULL,'oyzEHszd6x3Vnl-ftIMZZq2fojx0','','','杨冰','','','71571250726725654.jpg','http://wx.qlogo.cn/mmopen/zsUXYY6y4cIkvFVcZtTLiaR1BeNRiahtJuZUweibicSXT4GxeZAAa2PssohDvDqpe9P5td8lJPicoZFfamicDRFTgOVQIEiauCBkDlR/0','2','2','','朝阳','北京','oyzEHszd6x3Vnl-ftIMZZq2fojx0','','0000-00-00 00:00:00','',NULL,NULL,NULL,NULL,0),(143,NULL,NULL,'oyzEHs44yBPNtv8INSSr5uA3MoB4','','','马劲','马劲','','img/headpic.png','http://wx.qlogo.cn/mmopen/yHWIiaDMMjQlDLaTVeANa4M8EkVsaOkwptzdBiaRml5wnAhFhSLzWgPHkheO8A5Mz7mib7XicORcw7wIyYIOeXibqQg/0','1','1','','海淀','北京','oyzEHs44yBPNtv8INSSr5uA3MoB4','','0000-00-00 00:00:00','',NULL,NULL,NULL,NULL,0),(144,NULL,NULL,'oyzEHs31sbT1IeqO8pCsC4gdR9Ss','','','快乐云','','','','http://wx.qlogo.cn/mmopen/yHWIiaDMMjQmNjveE3O9gvnx6raBaExjXuMichUGYmj3pKjg4fMJLz0pf968d6822Xq5ic4ib5ElsJzFOLGetIY4aYCaXvHEQRlk/0','1','1','','海淀','北京','oyzEHs31sbT1IeqO8pCsC4gdR9Ss','','0000-00-00 00:00:00','',NULL,NULL,NULL,NULL,0),(145,NULL,NULL,'oyzEHs_vq_SLphuB2dyO3g-5YOdo','','','Chris_陈','','','','http://wx.qlogo.cn/mmopen/PkWh3L3OBbxS6gOMAlNBxFhs1XHTdp13qdRPyDQwibNI00FicTSrcHJ2PFMiaLXziagC7So4YvjrVKicP2gs4muOexd0YeFaIq94F/0','1','1','','海淀','北京','oyzEHs_vq_SLphuB2dyO3g-5YOdo','','0000-00-00 00:00:00','',NULL,NULL,NULL,NULL,0),(147,NULL,NULL,'','18513604146','','于晓华','','','于晓华 - 副本.jpg','','2','','','','','','','0000-00-00 00:00:00','',NULL,NULL,NULL,NULL,0),(150,NULL,NULL,'','18612291973','a52ae7a0c85cf76837b287b12565f5fc','大马哥哥','马劲啦啦','我是马劲','sj_profile/49/14450665416961.jpeg','','2','','','','','','','0000-00-00 00:00:00','',NULL,NULL,NULL,NULL,0),(332,NULL,NULL,'','13426027009','','Jessica','','','000000.jpg','','2','','','','','','','0000-00-00 00:00:00','',NULL,NULL,NULL,NULL,0),(333,NULL,NULL,'','15600616335','','min','','','51_18_right now.jpg','','2','','','','','','','0000-00-00 00:00:00','',NULL,NULL,NULL,NULL,0),(334,NULL,NULL,'','15652796173','','安鹏莉','','','000000.jpg','','2','','','','','','','0000-00-00 00:00:00','',NULL,NULL,NULL,NULL,0),(335,NULL,NULL,'','18600464832','','安庭萱','','','265882449563360239.jpg','','2','','','','','','','0000-00-00 00:00:00','',NULL,NULL,NULL,NULL,0),(336,NULL,NULL,'','18211198764','','安心','','','000000.jpg','','2','','','','','','','0000-00-00 00:00:00','',NULL,NULL,NULL,NULL,0),(337,NULL,NULL,'','15810254285','','柏久麟','','','20_18_IMG_20150706_164817.jpg','','2','','','','','','','0000-00-00 00:00:00','',NULL,NULL,NULL,NULL,0),(338,NULL,NULL,'','15357599250','','曹树民','','','曹树民.jpg','','2','','','','','','','0000-00-00 00:00:00','',NULL,NULL,NULL,NULL,0),(339,NULL,NULL,'','13671001938','','曹颖','','','曹颖.jpg','','2','','','','','','','0000-00-00 00:00:00','',NULL,NULL,NULL,NULL,0),(340,NULL,NULL,'','13261527687','','曹勇','','','000001.jpg','','2','','','','','','','0000-00-00 00:00:00','',NULL,NULL,NULL,NULL,0),(341,NULL,NULL,'','13832340144','','常凡','','','常凡.jpg','','2','','','','','','','0000-00-00 00:00:00','',NULL,NULL,NULL,NULL,0),(342,NULL,NULL,'','15120055004','','陈尔默','','','840371219943398435.jpg','','2','','','','','','','0000-00-00 00:00:00','',NULL,NULL,NULL,NULL,0),(343,NULL,NULL,'','18201738994','','陈峰','','','陈峰.JPG','','2','','','','','','','0000-00-00 00:00:00','',NULL,NULL,NULL,NULL,0),(344,NULL,NULL,'','18038086550','','陈工','','','陈工4.jpg','','2','','','','','','','0000-00-00 00:00:00','',NULL,NULL,NULL,NULL,0),(345,NULL,NULL,'','13436974805','','陈金祥','','','109601605509603172.jpg','','2','','','','','','','0000-00-00 00:00:00','',NULL,NULL,NULL,NULL,0),(346,NULL,NULL,'','18801173530','','陈连连','','','37948966287322217.jpg','','2','','','','','','','0000-00-00 00:00:00','',NULL,NULL,NULL,NULL,0),(347,NULL,NULL,'','18635021183','','陈少龙','','','735034071130478207.jpg','','2','','','','','','','0000-00-00 00:00:00','',NULL,NULL,NULL,NULL,0),(348,NULL,NULL,'','13261051592','','陈天华','','','44999353191993970.jpg','','2','','','','','','','0000-00-00 00:00:00','',NULL,NULL,NULL,NULL,0),(349,NULL,NULL,'','18576213515','','陈祥红','','','陈祥红2.jpg','','2','','','','','','','0000-00-00 00:00:00','',NULL,NULL,NULL,NULL,0),(350,NULL,NULL,'','13698606859','','陈昭晶','','','陈昭晶1.JPG','','2','','','','','','','0000-00-00 00:00:00','',NULL,NULL,NULL,NULL,0),(351,NULL,NULL,'','13120335861','','程彦丽','','','14257743791862780.jpg','','2','','','','','','','0000-00-00 00:00:00','',NULL,NULL,NULL,NULL,0),(352,NULL,NULL,'','13261091918','','丛晟宇','','','871391030380357951.jpg','','2','','','','','','','0000-00-00 00:00:00','',NULL,NULL,NULL,NULL,0),(353,NULL,NULL,'','15120093198','','崔璨','','','崔璨1.JPG','','2','','','','','','','0000-00-00 00:00:00','',NULL,NULL,NULL,NULL,0),(354,NULL,NULL,'','13401154118','','戴飞','','','4_25_image.jpg','','2','','','','','','','0000-00-00 00:00:00','',NULL,NULL,NULL,NULL,0),(355,NULL,NULL,'','15652922075','','戴柠薇','','','戴柠薇 - 副本.jpg','','2','','','','','','','0000-00-00 00:00:00','',NULL,NULL,NULL,NULL,0),(356,NULL,NULL,'','18810915591','','邓颖惠','','','154157467157529361.jpg','','2','','','','','','','0000-00-00 00:00:00','',NULL,NULL,NULL,NULL,0),(357,NULL,NULL,'','13436818677','','邓玉嵩','','','邓玉嵩.JPG','','2','','','','','','','0000-00-00 00:00:00','',NULL,NULL,NULL,NULL,0),(358,NULL,NULL,'','17764597596','','丁淑婧','','','丁淑静2.jpg','','2','','','','','','','0000-00-00 00:00:00','',NULL,NULL,NULL,NULL,0),(359,NULL,NULL,'','18201519589','','丁岩岩','','','000000.jpg','','2','','','','','','','0000-00-00 00:00:00','',NULL,NULL,NULL,NULL,0),(360,NULL,NULL,'','15201422120','','丁驿晴','','','丁驿晴3.jpg','','2','','','','','','','0000-00-00 00:00:00','',NULL,NULL,NULL,NULL,0),(361,NULL,NULL,'','18810471205','','窦乐天','','','603886492285079612.jpg','','2','','','','','','','0000-00-00 00:00:00','',NULL,NULL,NULL,NULL,0),(362,NULL,NULL,'','18810900460','','杜丰宇','','','杜丰宇.jpg','','2','','','','','','','0000-00-00 00:00:00','',NULL,NULL,NULL,NULL,0),(363,NULL,NULL,'','15201463501','','范濮','','','12_25_image.jpg','','2','','','','','','','0000-00-00 00:00:00','',NULL,NULL,NULL,NULL,0),(364,NULL,NULL,'','17080055289','','冯晨翔','','','853670204493810099.jpg','','2','','','','','','','0000-00-00 00:00:00','',NULL,NULL,NULL,NULL,0),(365,NULL,NULL,'','16124011919','','冯帆','','','19_18_image.jpg','','2','','','','','','','0000-00-00 00:00:00','',NULL,NULL,NULL,NULL,0),(366,NULL,NULL,'','15313725591','','付丽银','','','14_18_IMG_3838.JPG','','2','','','','','','','0000-00-00 00:00:00','',NULL,NULL,NULL,NULL,0),(367,NULL,NULL,'','17801063027','','高江峰','','','3_25_viewphoto.jpg','','2','','','','','','','0000-00-00 00:00:00','',NULL,NULL,NULL,NULL,0),(368,NULL,NULL,'','15201442197','','顾金鑫','','','2_25_mmexport1438662581892.webp','','2','','','','','','','0000-00-00 00:00:00','',NULL,NULL,NULL,NULL,0),(369,NULL,NULL,'','18612503550','','管理','','','591195940188851224.jpg','','2','','','','','','','0000-00-00 00:00:00','',NULL,NULL,NULL,NULL,0),(370,NULL,NULL,'','15313583413','','郭佳','','','259540776500035868.jpg','','2','','','','','','','0000-00-00 00:00:00','',NULL,NULL,NULL,NULL,0),(371,NULL,NULL,'','15822660521','','国若家','','','9_18_IMG_20150623_194843.jpg','','2','','','','','','','0000-00-00 00:00:00','',NULL,NULL,NULL,NULL,0),(372,NULL,NULL,'','15120045760','','果鹏','','','40_18_large_iHYq_3e8700003e841263.jpg','','2','','','','','','','0000-00-00 00:00:00','',NULL,NULL,NULL,NULL,0),(373,NULL,NULL,'','18610260872','','韩德珩','','','10_18_image.jpg','','2','','','','','','','0000-00-00 00:00:00','',NULL,NULL,NULL,NULL,0),(374,NULL,NULL,'','18813086500','','韩湘云','','','韩湘云.jpg','','2','','','','','','','0000-00-00 00:00:00','',NULL,NULL,NULL,NULL,0),(375,NULL,NULL,'','13816613500','','韩逸畴','','','韩逸畴2.jpg','','2','','','','','','','0000-00-00 00:00:00','',NULL,NULL,NULL,NULL,0),(376,NULL,NULL,'','13020095416','','何经纬','','','15_18_IMG_20150807_162219_mh1439738634599.jpg','','2','','','','','','','0000-00-00 00:00:00','',NULL,NULL,NULL,NULL,0),(377,NULL,NULL,'','13810330277','','胡方卉','','','180928905103128421.jpg','','2','','','','','','','0000-00-00 00:00:00','',NULL,NULL,NULL,NULL,0),(378,NULL,NULL,'','15201441340','','胡松德','','','000001.jpg','','2','','','','','','','0000-00-00 00:00:00','',NULL,NULL,NULL,NULL,0),(379,NULL,NULL,'','15922792922','','扈艳','','','扈艳2.jpg','','2','','','','','','','0000-00-00 00:00:00','',NULL,NULL,NULL,NULL,0),(380,NULL,NULL,'','15711122335','','黄高平','','','黄高平2.JPG','','2','','','','','','','0000-00-00 00:00:00','',NULL,NULL,NULL,NULL,0),(381,NULL,NULL,'','15201569605','','黄祎','','','327850886099005427.jpg','','2','','','','','','','0000-00-00 00:00:00','',NULL,NULL,NULL,NULL,0),(382,NULL,NULL,'','13260065057','','贾静','','','44_18_mmexport1419173651136.jpg','','2','','','','','','','0000-00-00 00:00:00','',NULL,NULL,NULL,NULL,0),(383,NULL,NULL,'','18256915833','','姜明','','','52_18_image.jpg','','2','','','','','','','0000-00-00 00:00:00','',NULL,NULL,NULL,NULL,0),(384,NULL,NULL,'','18500424241','','姜威','','','25_18_2015-08-17 00.36.21.jpg','','2','','','','','','','0000-00-00 00:00:00','',NULL,NULL,NULL,NULL,0),(385,NULL,NULL,'','15117982753','','焦菁','','','42_18_image.jpg','','2','','','','','','','0000-00-00 00:00:00','',NULL,NULL,NULL,NULL,0),(386,NULL,NULL,'','13917787511','','金峻','','','000001.jpg','','2','','','','','','','0000-00-00 00:00:00','',NULL,NULL,NULL,NULL,0),(387,NULL,NULL,'','18901398052','','康永庆','','','13_18_image.jpg','','2','','','','','','','0000-00-00 00:00:00','',NULL,NULL,NULL,NULL,0),(388,NULL,NULL,'','18810547835','','黎琳','','','419682141951535627.jpg','','2','','','','','','','0000-00-00 00:00:00','',NULL,NULL,NULL,NULL,0),(389,NULL,NULL,'','15120077225','','李丹丹','','','李丹丹.JPG','','2','','','','','','','0000-00-00 00:00:00','',NULL,NULL,NULL,NULL,0),(390,NULL,NULL,'','13269361127','','李东洋','','','768719344941513477.jpg','','2','','','','','','','0000-00-00 00:00:00','',NULL,NULL,NULL,NULL,0),(391,NULL,NULL,'','18410079795','','李怀栋','','','187721589946490496.jpg','','2','','','','','','','0000-00-00 00:00:00','',NULL,NULL,NULL,NULL,0),(392,NULL,NULL,'','15810531583','','李慧','','','146644650662466972.jpg','','2','','','','','','','0000-00-00 00:00:00','',NULL,NULL,NULL,NULL,0),(393,NULL,NULL,'','18611056195','','李佳芮','','','李佳芮.jpg','','2','','','','','','','0000-00-00 00:00:00','',NULL,NULL,NULL,NULL,0),(394,NULL,NULL,'','15201441421','','李杰','','','706732607999778674.jpg','','2','','','','','','','0000-00-00 00:00:00','',NULL,NULL,NULL,NULL,0),(395,NULL,NULL,'','15801599163','','李进','','','李进2.jpg','','2','','','','','','','0000-00-00 00:00:00','',NULL,NULL,NULL,NULL,0),(396,NULL,NULL,'','15308357680','','李乐','','','41_18_IMG_20150824_113453.jpg','','2','','','','','','','0000-00-00 00:00:00','',NULL,NULL,NULL,NULL,0),(397,NULL,NULL,'','15650705432','','李琦','','','李琦.jpg','','2','','','','','','','0000-00-00 00:00:00','',NULL,NULL,NULL,NULL,0),(398,NULL,NULL,'','18618329183','','李若愚','','','24_18_image.jpg','','2','','','','','','','0000-00-00 00:00:00','',NULL,NULL,NULL,NULL,0),(399,NULL,NULL,'','13126761628','','李小玉','','','590994639929997442.jpg','','2','','','','','','','0000-00-00 00:00:00','',NULL,NULL,NULL,NULL,0),(400,NULL,NULL,'','18810650970','','李志军','','','000001.jpg','','2','','','','','','','0000-00-00 00:00:00','',NULL,NULL,NULL,NULL,0),(401,NULL,NULL,'','13051576379','','李致颖','','','6_18_QQ图片20150816125843.jpg','','2','','','','','','','0000-00-00 00:00:00','',NULL,NULL,NULL,NULL,0),(402,NULL,NULL,'','13249875653','','林瑾','','','53_18_-3c8c09651577e320.jpg','','2','','','','','','','0000-00-00 00:00:00','',NULL,NULL,NULL,NULL,0),(403,NULL,NULL,'','13051214278','','刘斌','','','765237560862769806.jpg','','2','','','','','','','0000-00-00 00:00:00','',NULL,NULL,NULL,NULL,0),(404,NULL,NULL,'','15010265796','','刘博雅','','','刘博雅.JPG','','2','','','','','','','0000-00-00 00:00:00','',NULL,NULL,NULL,NULL,0),(405,NULL,NULL,'','15959285136','','刘丹阳','','','723328885709188005.jpg','','2','','','','','','','0000-00-00 00:00:00','',NULL,NULL,NULL,NULL,0),(406,NULL,NULL,'','13835745205','','刘焕','','','38_18_IMG_20150508_154134.jpg','','2','','','','','','','0000-00-00 00:00:00','',NULL,NULL,NULL,NULL,0),(407,NULL,NULL,'','15281025747','','刘慧','','','23_18_P50425-174025.jpg','','2','','','','','','','0000-00-00 00:00:00','',NULL,NULL,NULL,NULL,0),(408,NULL,NULL,'','13681041621','','刘杰','','','000001.jpg','','2','','','','','','','0000-00-00 00:00:00','',NULL,NULL,NULL,NULL,0),(409,NULL,NULL,'','18503388849','','刘琪','','','202537929231626807.jpg','','2','','','','','','','0000-00-00 00:00:00','',NULL,NULL,NULL,NULL,0),(410,NULL,NULL,'','15966875136','','刘倩','','','894701397056533026.jpg','','2','','','','','','','0000-00-00 00:00:00','',NULL,NULL,NULL,NULL,0),(411,NULL,NULL,'','18810572814','','刘钦华','','','299771646035977741.jpg','','2','','','','','','','0000-00-00 00:00:00','',NULL,NULL,NULL,NULL,0),(412,NULL,NULL,'','18423530967','','刘芹','','','412872774274173955.jpg','','2','','','','','','','0000-00-00 00:00:00','',NULL,NULL,NULL,NULL,0),(413,NULL,NULL,'','15210833986','','刘欣萌','','','48_18_image.jpg','','2','','','','','','','0000-00-00 00:00:00','',NULL,NULL,NULL,NULL,0),(414,NULL,NULL,'','18610151028','','刘一然','','','11_18_image.jpg','','2','','','','','','','0000-00-00 00:00:00','',NULL,NULL,NULL,NULL,0),(415,NULL,NULL,'','18813198863','','刘雨晴','','','刘雨晴 - 副本.jpg','','2','','','','','','','0000-00-00 00:00:00','',NULL,NULL,NULL,NULL,0),(416,NULL,NULL,'','18813003133','','刘玉霞','','','刘玉霞2.jpg','','2','','','','','','','0000-00-00 00:00:00','',NULL,NULL,NULL,NULL,0),(417,NULL,NULL,'','13922990521','','刘正','','','000001.jpg','','2','','','','','','','0000-00-00 00:00:00','',NULL,NULL,NULL,NULL,0),(418,NULL,NULL,'','18689391158','','刘志昌','','','刘志昌.jpg','','2','','','','','','','0000-00-00 00:00:00','',NULL,NULL,NULL,NULL,0),(419,NULL,NULL,'','13681568236','','卢宇迪','','','000001.jpg','','2','','','','','','','0000-00-00 00:00:00','',NULL,NULL,NULL,NULL,0),(420,NULL,NULL,'','18599089610','','罗生辉','','','罗生辉 - 副本.jpg','','2','','','','','','','0000-00-00 00:00:00','',NULL,NULL,NULL,NULL,0),(421,NULL,NULL,'','13051001095','','马超','','','马超.jpg','','2','','','','','','','0000-00-00 00:00:00','',NULL,NULL,NULL,NULL,0),(422,NULL,NULL,'','15107141032','','马尚','','','马尚.jpg','','2','','','','','','','0000-00-00 00:00:00','',NULL,NULL,NULL,NULL,0),(423,NULL,NULL,'','18810554563','','马志远','','','7_18_image.jpg','','2','','','','','','','0000-00-00 00:00:00','',NULL,NULL,NULL,NULL,0),(424,NULL,NULL,'','18571584016','','梅晶','','','103976260558786747.jpg','','2','','','','','','','0000-00-00 00:00:00','',NULL,NULL,NULL,NULL,0),(425,NULL,NULL,'','15652969477','','宁清宇','','','719987731119603999.jpg','','2','','','','','','','0000-00-00 00:00:00','',NULL,NULL,NULL,NULL,0),(426,NULL,NULL,'','15201463409','','牛佳斌','','','8_25_IMG20141123221254.jpg','','2','','','','','','','0000-00-00 00:00:00','',NULL,NULL,NULL,NULL,0),(427,NULL,NULL,'','18611355066','','秦卫东','','','秦卫东.JPG','','2','','','','','','','0000-00-00 00:00:00','',NULL,NULL,NULL,NULL,0),(428,NULL,NULL,'','18608017481','','邱骏杰','','','000001.jpg','','2','','','','','','','0000-00-00 00:00:00','',NULL,NULL,NULL,NULL,0),(429,NULL,NULL,'','18514253054','','瞿金校','','','瞿金校.jpg','','2','','','','','','','0000-00-00 00:00:00','',NULL,NULL,NULL,NULL,0),(430,NULL,NULL,'','15120075924','','邵天骢','','','39_18_image.jpg','','2','','','','','','','0000-00-00 00:00:00','',NULL,NULL,NULL,NULL,0),(431,NULL,NULL,'','15652530443','','申校','','','申校.JPG','','2','','','','','','','0000-00-00 00:00:00','',NULL,NULL,NULL,NULL,0),(432,NULL,NULL,'','13269503178','','申一宁','','','225931505819844705.jpg','','2','','','','','','','0000-00-00 00:00:00','',NULL,NULL,NULL,NULL,0),(433,NULL,NULL,'','18810104944','','沈春华','','','43_18_IMG_20150820_191447.jpg','','2','','','','','','','0000-00-00 00:00:00','',NULL,NULL,NULL,NULL,0),(434,NULL,NULL,'','18810962072','','沈明仁','','','000001.jpg','','2','','','','','','','0000-00-00 00:00:00','',NULL,NULL,NULL,NULL,0),(435,NULL,NULL,'','13924619997','','石鑫','','','石鑫.jpg','','2','','','','','','','0000-00-00 00:00:00','',NULL,NULL,NULL,NULL,0),(436,NULL,NULL,'','15210831544','','宋佳慧','','','000000.jpg','','2','','','','','','','0000-00-00 00:00:00','',NULL,NULL,NULL,NULL,0),(437,NULL,NULL,'','13261718056','','宋军','','','宋军.JPG','','2','','','','','','','0000-00-00 00:00:00','',NULL,NULL,NULL,NULL,0),(438,NULL,NULL,'','13426202546','','宋磊','','','5_18_mmexport1434211134533.jpg','','2','','','','','','','0000-00-00 00:00:00','',NULL,NULL,NULL,NULL,0),(439,NULL,NULL,'','13094804058','','宋伟博','','','宋伟博.jpg','','2','','','','','','','0000-00-00 00:00:00','',NULL,NULL,NULL,NULL,0),(440,NULL,NULL,'','13770978502','','苏舒','','','苏舒 - 副本.jpg','','2','','','','','','','0000-00-00 00:00:00','',NULL,NULL,NULL,NULL,0),(441,NULL,NULL,'','15201317748','','孙开','','','000001.jpg','','2','','','','','','','0000-00-00 00:00:00','',NULL,NULL,NULL,NULL,0),(442,NULL,NULL,'','18612016264','','孙肖月','','','孙肖月.JPG','','2','','','','','','','0000-00-00 00:00:00','',NULL,NULL,NULL,NULL,0),(443,NULL,NULL,'','15210602542','','孙小甜','','','孙小甜.jpg','','2','','','','','','','0000-00-00 00:00:00','',NULL,NULL,NULL,NULL,0),(444,NULL,NULL,'','18811378434','','孙亚梅','','','000000.jpg','','2','','','','','','','0000-00-00 00:00:00','',NULL,NULL,NULL,NULL,0),(445,NULL,NULL,'','18813135876','','孙原','','','2_18_image.jpg','','2','','','','','','','0000-00-00 00:00:00','',NULL,NULL,NULL,NULL,0),(446,NULL,NULL,'','18500053132','','孙湛冬','','','孙湛冬2.jpg','','2','','','','','','','0000-00-00 00:00:00','',NULL,NULL,NULL,NULL,0),(447,NULL,NULL,'','13720081685','','汤嘉慧','','','000000.jpg','','2','','','','','','','0000-00-00 00:00:00','',NULL,NULL,NULL,NULL,0),(448,NULL,NULL,'','18811345560','','田雪姣','','','22_25_137819363484873390.jpg','','2','','','','','','','0000-00-00 00:00:00','',NULL,NULL,NULL,NULL,0),(449,NULL,NULL,'','15600624671','','田媛','','','田媛.jpg','','2','','','','','','','0000-00-00 00:00:00','',NULL,NULL,NULL,NULL,0),(450,NULL,NULL,'','15755300677','','汪彬彬','','','000000.jpg','','2','','','','','','','0000-00-00 00:00:00','',NULL,NULL,NULL,NULL,0),(451,NULL,NULL,'','13401169335','','王波','','','19_25_546078df69401b754772615d.jpg','','2','','','','','','','0000-00-00 00:00:00','',NULL,NULL,NULL,NULL,0),(452,NULL,NULL,'','18910971563','','王东','','','704753289031710195.jpg','','2','','','','','','','0000-00-00 00:00:00','',NULL,NULL,NULL,NULL,0),(453,NULL,NULL,'','13716723195','','王冠迪','','','000001.jpg','','2','','','','','','','0000-00-00 00:00:00','',NULL,NULL,NULL,NULL,0),(454,NULL,NULL,'','18611897400','','王可欣','','','659752861078241080.jpg','','2','','','','','','','0000-00-00 00:00:00','',NULL,NULL,NULL,NULL,0),(455,NULL,NULL,'','13269831551','','王林','','','王林.JPG','','2','','','','','','','0000-00-00 00:00:00','',NULL,NULL,NULL,NULL,0),(456,NULL,NULL,'','15600615812','','王玮','','','18_18_mmexport1433056933105.jpg','','2','','','','','','','0000-00-00 00:00:00','',NULL,NULL,NULL,NULL,0),(457,NULL,NULL,'','15563647400','','王文权','','','000001.jpg','','2','','','','','','','0000-00-00 00:00:00','',NULL,NULL,NULL,NULL,0),(458,NULL,NULL,'','18811349251','','王晓旭','','','000001.jpg','','2','','','','','','','0000-00-00 00:00:00','',NULL,NULL,NULL,NULL,0),(459,NULL,NULL,'','13581862045','','王亚洁','','','王亚洁1.JPG','','2','','','','','','','0000-00-00 00:00:00','',NULL,NULL,NULL,NULL,0),(460,NULL,NULL,'','15900229175','','王元天','','','王元天2.jpg','','2','','','','','','','0000-00-00 00:00:00','',NULL,NULL,NULL,NULL,0),(461,NULL,NULL,'','15210603018','','王增辉','','','18_25_image.jpg','','2','','','','','','','0000-00-00 00:00:00','',NULL,NULL,NULL,NULL,0),(462,NULL,NULL,'','13261538665','','韦鹏宇','','','韦鹏宇.JPG','','2','','','','','','','0000-00-00 00:00:00','',NULL,NULL,NULL,NULL,0),(463,NULL,NULL,'','18810572683','','魏宁','','','645816097556283248.jpg','','2','','','','','','','0000-00-00 00:00:00','',NULL,NULL,NULL,NULL,0),(464,NULL,NULL,'','13466595119','','魏陶然','','','魏陶然.jpg','','2','','','','','','','0000-00-00 00:00:00','',NULL,NULL,NULL,NULL,0),(465,NULL,NULL,'','18813114470','','温李懿贞','','','温李懿贞1.JPG','','2','','','','','','','0000-00-00 00:00:00','',NULL,NULL,NULL,NULL,0),(466,NULL,NULL,'','15256045717','','巫濛','','','巫濛.jpg','','2','','','','','','','0000-00-00 00:00:00','',NULL,NULL,NULL,NULL,0),(467,NULL,NULL,'','15201529529','','吴俊','','','吴俊.jpg','','2','','','','','','','0000-00-00 00:00:00','',NULL,NULL,NULL,NULL,0),(468,NULL,NULL,'','18612563297','','项波','','','项波2.jpg','','2','','','','','','','0000-00-00 00:00:00','',NULL,NULL,NULL,NULL,0),(469,NULL,NULL,'','18010282188','','小羊','','','21_18_image.jpg','','2','','','','','','','0000-00-00 00:00:00','',NULL,NULL,NULL,NULL,0),(470,NULL,NULL,'','15201441475','','谢乾阳','','','72379359998921976.jpg','','2','','','','','','','0000-00-00 00:00:00','',NULL,NULL,NULL,NULL,0),(471,NULL,NULL,'','18810666892','','宿丹','','','523480929378914462.jpg','','2','','','','','','','0000-00-00 00:00:00','',NULL,NULL,NULL,NULL,0),(472,NULL,NULL,'','18210511960','','徐炳田','','','徐炳田 - 副本.jpg','','2','','','','','','','0000-00-00 00:00:00','',NULL,NULL,NULL,NULL,0),(473,NULL,NULL,'','15201458535','','严朝雯','','','000000.jpg','','2','','','','','','','0000-00-00 00:00:00','',NULL,NULL,NULL,NULL,0),(474,NULL,NULL,'','17765707037','','严健标','','','26_18_image.jpg','','2','','','','','','','0000-00-00 00:00:00','',NULL,NULL,NULL,NULL,0),(475,NULL,NULL,'','15210806258','','阳孟谷','','','000000.jpg','','2','','','','','','','0000-00-00 00:00:00','',NULL,NULL,NULL,NULL,0),(476,NULL,NULL,'','15120071565','','杨帆','','','37_18_image.jpg','','2','','','','','','','0000-00-00 00:00:00','',NULL,NULL,NULL,NULL,0),(477,NULL,NULL,'','18510629143','','杨光','','','000001.jpg','','2','','','','','','','0000-00-00 00:00:00','',NULL,NULL,NULL,NULL,0),(478,NULL,NULL,'','18510482820','','杨光','','','59074283373559776.jpg','','2','','','','','','','0000-00-00 00:00:00','',NULL,NULL,NULL,NULL,0),(479,NULL,NULL,'','13170882690','','杨海华','','','27_18_20150719_090133.jpg','','2','','','','','','','0000-00-00 00:00:00','',NULL,NULL,NULL,NULL,0),(480,NULL,NULL,'','13121911810','','杨敏','','','4_18_mmexport1431308123401.jpg','','2','','','','','','','0000-00-00 00:00:00','',NULL,NULL,NULL,NULL,0),(481,NULL,NULL,'','15529625704','','杨腾','','','杨腾.JPG','','2','','','','','','','0000-00-00 00:00:00','',NULL,NULL,NULL,NULL,0),(482,NULL,NULL,'','15201261495','','杨英','','','13369305970850281.jpg','','2','','','','','','','0000-00-00 00:00:00','',NULL,NULL,NULL,NULL,0),(483,NULL,NULL,'','13161757525','','姚雪琴','','','000000.jpg','','2','','','','','','','0000-00-00 00:00:00','',NULL,NULL,NULL,NULL,0),(484,NULL,NULL,'','18811718652','','游涛','','','000001.jpg','','2','','','','','','','0000-00-00 00:00:00','',NULL,NULL,NULL,NULL,0),(485,NULL,NULL,'','13269203631','','于建浩','','','463845682107817875.jpg','','2','','','','','','','0000-00-00 00:00:00','',NULL,NULL,NULL,NULL,0),(486,NULL,NULL,'','15504767828','','于洋','','','000001.jpg','','2','','','','','','','0000-00-00 00:00:00','',NULL,NULL,NULL,NULL,0),(487,NULL,NULL,'','13522989572','','余胡','','','余胡.JPG','','2','','','','','','','0000-00-00 00:00:00','',NULL,NULL,NULL,NULL,0),(488,NULL,NULL,'','13661326141','','袁荣昌','','','袁荣昌.jpg','','2','','','','','','','0000-00-00 00:00:00','',NULL,NULL,NULL,NULL,0),(489,NULL,NULL,'','18600218881','','袁中一','','','袁中一2.jpg','','2','','','','','','','0000-00-00 00:00:00','',NULL,NULL,NULL,NULL,0),(490,NULL,NULL,'','18811348750','','翟颖','','','902411922040994095.jpg','','2','','','','','','','0000-00-00 00:00:00','',NULL,NULL,NULL,NULL,0),(491,NULL,NULL,'','15201441941','','张崇','','','10_25_image.jpg','','2','','','','','','','0000-00-00 00:00:00','',NULL,NULL,NULL,NULL,0),(492,NULL,NULL,'','13371760003','','张健','','','000001.jpg','','2','','','','','','','0000-00-00 00:00:00','',NULL,NULL,NULL,NULL,0),(493,NULL,NULL,'','14714604520','','张力','','','张力3.jpg','','2','','','','','','','0000-00-00 00:00:00','',NULL,NULL,NULL,NULL,0),(494,NULL,NULL,'','13488691281','','张丽','','','000000.jpg','','2','','','','','','','0000-00-00 00:00:00','',NULL,NULL,NULL,NULL,0),(495,NULL,NULL,'','15600608405','','张丽娜','','','张丽娜.JPG','','2','','','','','','','0000-00-00 00:00:00','',NULL,NULL,NULL,NULL,0),(496,NULL,NULL,'','13717799033','','张天尧','','','000001.jpg','','2','','','','','','','0000-00-00 00:00:00','',NULL,NULL,NULL,NULL,0),(497,NULL,NULL,'','18810510114','','张夏','','','张夏.jpg','','2','','','','','','','0000-00-00 00:00:00','',NULL,NULL,NULL,NULL,0),(498,NULL,NULL,'','18612351268','','张元青','','','769507640540142483.jpg','','2','','','','','','','0000-00-00 00:00:00','',NULL,NULL,NULL,NULL,0),(499,NULL,NULL,'','18811324643','','张云惠','','','张云惠2.jpg','','2','','','','','','','0000-00-00 00:00:00','',NULL,NULL,NULL,NULL,0),(500,NULL,NULL,'','13810936264','','张则瑾','','','768324495049097736.jpg','','2','','','','','','','0000-00-00 00:00:00','',NULL,NULL,NULL,NULL,0),(501,NULL,NULL,'','15901078929','','赵春月','','','000000.jpg','','2','','','','','','','0000-00-00 00:00:00','',NULL,NULL,NULL,NULL,0),(502,NULL,NULL,'','18612709650','','赵建东','','','25_25_image.jpg','','2','','','','','','','0000-00-00 00:00:00','',NULL,NULL,NULL,NULL,0),(503,NULL,NULL,'','13366101690','','赵可','','','166049152612542076.jpg','','2','','','','','','','0000-00-00 00:00:00','',NULL,NULL,NULL,NULL,0),(504,NULL,NULL,'','18311086105','','赵丽媛','','','28_18_image.jpg','','2','','','','','','','0000-00-00 00:00:00','',NULL,NULL,NULL,NULL,0),(505,NULL,NULL,'','15120075925','','赵雅洁','','','000000.jpg','','2','','','','','','','0000-00-00 00:00:00','',NULL,NULL,NULL,NULL,0),(506,NULL,NULL,'','13051606067','','郑轩','','','16_18_image.jpg','','2','','','','','','','0000-00-00 00:00:00','',NULL,NULL,NULL,NULL,0),(507,NULL,NULL,'','17169076520','','李政江','','','68252922203849567.jpg','','2','','','','','','','0000-00-00 00:00:00','',NULL,NULL,NULL,NULL,0),(508,NULL,NULL,'','18721061540','','周程','','','周程1.JPG','','2','','','','','','','0000-00-00 00:00:00','',NULL,NULL,NULL,NULL,0),(509,NULL,NULL,'','13167130125','','周庆飞','','','17_18_2d372cee8a7dd5808af5009688c90478.jpg','','2','','','','','','','0000-00-00 00:00:00','',NULL,NULL,NULL,NULL,0),(510,NULL,NULL,'','15210603020','','周勋','','','000001.jpg','','2','','','','','','','0000-00-00 00:00:00','',NULL,NULL,NULL,NULL,0),(511,NULL,NULL,'','18612538269','','周子涵','','','周子涵2.jpg','','2','','','','','','','0000-00-00 00:00:00','',NULL,NULL,NULL,NULL,0),(512,NULL,NULL,'','13401184969','','朱利帅','','','156927905785140802.jpg','','2','','','','','','','0000-00-00 00:00:00','',NULL,NULL,NULL,NULL,0);
/*!40000 ALTER TABLE `p_account` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `p_base_info`
--

DROP TABLE IF EXISTS `p_base_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `p_base_info` (
  `id` int(12) NOT NULL AUTO_INCREMENT COMMENT '个人基本信息ID',
  `account_id` int(12) NOT NULL COMMENT '账户id',
  `username` varchar(80) NOT NULL COMMENT '姓名',
  `screen_name` varchar(100) NOT NULL COMMENT '昵称',
  `sj_phone` varchar(20) NOT NULL COMMENT '成为师姐/兄时注册的手机号，此手机未必于账户注册时的手机号一致',
  `headpic_url` varchar(100) NOT NULL COMMENT '头像地址',
  `headpic_url_big` varchar(100) NOT NULL COMMENT '头像大图地址',
  `city` varchar(100) NOT NULL COMMENT '城市',
  `school` varchar(100) NOT NULL COMMENT '学校',
  `department` varchar(100) NOT NULL COMMENT '专业',
  `degree_type` tinyint(1) NOT NULL DEFAULT '1' COMMENT '理科1；工科2；文科3',
  `short_intro` varchar(100) NOT NULL COMMENT '个人一句话简介',
  `long_intro` text NOT NULL COMMENT '个人简介',
  `teaching_exp` text NOT NULL COMMENT '个人经历介绍——教学经历',
  `gender` tinyint(1) NOT NULL DEFAULT '0' COMMENT '性别：1男；2女;0未知',
  `status` varchar(2) NOT NULL COMMENT '审核状态：0刚申请；1是审核通过',
  `rcd_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '记录计入系统的时间',
  `order` int(11) NOT NULL DEFAULT '0' COMMENT '排序顺序',
  `original_head_pic` varchar(255) NOT NULL DEFAULT '' COMMENT '原始的头像',
  `head_pic_small` varchar(255) NOT NULL DEFAULT '' COMMENT 'pc上展示的小头像',
  `head_pic_thumb` varchar(255) NOT NULL DEFAULT '' COMMENT '最小的头像360x360质量较差',
  PRIMARY KEY (`id`),
  KEY `account_id` (`account_id`)
) ENGINE=InnoDB AUTO_INCREMENT=451 DEFAULT CHARSET=utf8 COMMENT='个人基本信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `p_base_info`
--

LOCK TABLES `p_base_info` WRITE;
/*!40000 ALTER TABLE `p_base_info` DISABLE KEYS */;
INSERT INTO `p_base_info` VALUES (48,71,'陈默','陈默','15652967207','sj_profile/71/14432719737157.png','0.45987700 14364564082473.jpg','北京','北大','城市与环境学院',2,'未来的规划师','保研经验分享，出国申请学校经验分享，啦啦啦','在校期间成绩排名专业第2，获得校级一等奖学金3次，二等奖学金1次，校级其他奖学金2次，学院奖学金1次，系奖学金1次，校级三好学生2次，优秀学生干部1次，本科优秀毕业生。大三暑假主动联系北大城环教授，来往邮件后获得电话面试机会，大四上学期9月前往北大参加学院组织的保研面试老师面试，随后被录取。哈哈哈',1,'1','2015-06-22 23:19:37',0,'','',''),(49,73,'张翠景','张翠景','15652695427','sj_profile/73/14432697301533.jpg','S0052张翠景-2.jpg','北京','中科院','生态学',1,'保研及签证DIY','需要了解保研流程，澳洲签证DIY，微生物分子生态专业讨论的朋友看这里，师姐很乐意为你效劳，耐心细致的我，一定会全面解答你的问题！','本科成绩排名专业第1，每年都获得优秀学生奖学金，优秀毕业生。大三暑假受到大学老师的推荐联系了现在的导师，之后经过邮件联系和来京交流沟通后获得资格，最后面试通过。研究方向为土壤微生物生态学，使用分子生态学的手段。',2,'1','2015-06-22 23:22:06',0,'','',''),(50,74,'荣益','荣益','13051571525','sj_profile/74/14432697303136.jpg','S0053荣益-2.jpg','北京','中科院','环境经济',3,'考研，少数民族骨干考研小能手','考研，少数民族骨干考研，免费与外国大学生CET同屋计划，能在这里找到答案','1、曾两次获得二等奖学金，校数学建模大赛三等奖，暑期调研院二等奖，中国银行业协会（花旗银行）小额信贷调研项目优秀志愿者 。2、考研报考了北大光华管理学院金融专业，由于准备时间不充分所以报考了少数民族骨干，后来调剂到中科院生态环境研究中心。',2,'1','2015-06-22 23:22:19',0,'','',''),(51,75,'乔楠楠','乔楠楠','18701486051','sj_profile/75/14432697305103.jpg','S0054乔楠楠-2.jpg','北京','中科院','声学所',2,'常年混迹各种活动组织','愿给师弟妹提供保研实验室的选择路线，介绍你们认识有意思的圈子、接触优秀的校友','\"1、研究生期间以第二作者身份发表EI一篇，获得中科院大学奖学金1次，获三好学生及优秀学生干部称号，获得美国大学生数学竞赛二等奖，新华都奖学金1次，校级二、三等奖学金若干次。2、大三快结束时突然觉得自己有希望保研，在保研or考研，保本校or外校，技术or非技术专业等方面挣扎了很长时间。保研至声学所的过程中，通宵整理了很多信息，努力求助外援，也得到了校内外很多人的帮助，总体来说觉得自己很幸运。经历了2年研究生生活之后，回头想想，发现自己本科毕业时设想的情况、在意的事物，与现在还是有很大区别。所以觉得，在保研之前，当自己有机会做选择时，多多了解一下实验室氛围、导师风格、研究方向及未来发展等各种因素，还是非常有必要的。\"',2,'1','2015-06-22 23:23:11',0,'','',''),(52,76,'牟翘楚','牟翘楚','15210588789','sj_profile/76/14432697306409.jpg','S0055牟翘楚-2.jpg','北京','清华','自动化',2,'','','1、获得校新生奖学金，单项奖学金2次。2、大二参加SRT项目，了解了生物信息学这一方向。大三暑假系内推研，面试通过。',2,'1','2015-06-22 23:23:33',0,'','',''),(53,77,'王翔宇','王翔宇','13121933896','sj_profile/77/14432697302931.jpg','S0056王翔宇-2.jpg','北京','北航','经管',3,'爱学术更爱自由','学业工作学术竞赛齐头并进，跨校保研选择准备规划井井有条，你一样有你的精彩！','成绩排名专业第2，获得国家奖学金1次，国家励志奖学金1次，大学生挑战杯创业大赛银奖，本科发表学术论文1篇（SSCI检索管理A类），会议论文1篇（EI），《吉林大学报》发稿30余篇。大三暑假全程参加了武汉大学夏令营，中科院夏令营；九月份参加北航保研，最终选择了北航经管管理科学与工程专业。研究领域知识管理，主要研究方向为虚拟社区中的知识传播，知识发现。',2,'1','2015-06-22 23:24:34',0,'','',''),(54,78,'赵砚彬','赵砚彬','18600836103','sj_profile/78/14432697309264.jpg','S0057赵砚彬-2.jpg','北京','中科院','信工所',2,'保研找工作课设终结者','保研，职业规划建议，计算机类课程设计辅导，游戏策划新手起步。','1、本科大一就主动联系学校的导师进行项目实践，较早的对科研和论文有所接触。多次参加学科竞赛，获得过全国大学生信息安全竞赛（国家级竞赛）一、二等奖，ACM省二等奖，发表学术论文3篇（两篇EI检索，一篇核心期刊），软件著作权两项，专利一项。目前拿到网易游戏的游戏设计师暑期实习OFFER。2、本科大一就主动联系学校的导师进行项目实践，较早的对科研和论文有所接触，大三暑假报名参加了信息工程研究所的保研夏令营，在夏令营学习时直接联系了目前的导师，主要原因是与我本科项目的领域对口。同时，在之后的面试中表现较好，被导师点名录取。',1,'1','2015-06-22 23:24:49',0,'','',''),(55,79,'黄麟','黄麟','15120094069','sj_profile/79/14432697307693.jpg','S0058黄麟-2.JPG','北京','财科所','会计学',3,'保研，财金','保研/ 实习/ 工作/ 公务员考试/ 吃喝玩乐/ 旅行','1、保研时综合成绩排名专业第1，获得梁希奖学金3次、学术优秀奖学金2次，2010年中国大学生“年度人物”入围奖，全国大学生创意创业竞赛一等奖，第一作者发表EI级别论文1篇。2、喜欢穷游，旅行脚步遍及大半个中国，曾经独自去过美国等许多国家旅游，具有丰富的出国和国内旅游经验',2,'1','2015-06-22 23:24:58',0,'','',''),(56,80,'刘博文','刘博文','18801468842','sj_profile/80/14432697307791.jpg','S0059刘博文-2.JPG','北京','中科院','半导体所',2,'保研托业能力者','助力工科保研，30天攻克托业，获得更多工作offer，我是你成功航母的护卫舰！','1、GPA排名专业第6，TOEIC成绩890，获得国家奖学金1次，富士施乐企业奖学金1次，校级三好学生、优秀团员各1次，本科毕业获优秀毕业生称号、毕业论文获评优秀毕业论文（以上为主要荣誉，其他次要者未列出）；研究生期间发表第一作者国际期刊论文1篇，国际重要会议论文1篇，实用新型发明专利1项；毕业求职季获得到正式offer共8份，包括爱立信、华为、中电集团第十四研究所等，主要为技术研发、项目管理相关岗位。2、大三暑假报名参加了中科院材料学院保研夏令营、华中科技大学机械学院保研夏令营，在夏令营学习时了解了中科院半导体所、中科院光电研究院、华中科技大学机械学院主要方向和内容，接触了解一些导师，因表现优异，随后均获录取',1,'1','2015-06-22 23:25:10',0,'','',''),(57,81,'缪笛','缪笛','18811364244','sj_profile/81/14432697309250.jpg','S0060缪笛-2.jpg','北京','清华','电子工程系',2,'性格随性洒脱','喜欢唱歌，旅游，户外，摄影，做公益活动，有相关兴趣或需求的朋友可以一起探讨','本科成绩专业第一，获得国家奖学金，平安励志奖学金，国家励志奖学金，获得学习特优生，优秀毕业生，校三好学生荣誉。',1,'1','2015-06-22 23:25:18',0,'','',''),(58,82,'周云桥','周云桥','18810982536','sj_profile/82/14432697308045.jpg','S0061周云桥-2.JPG','北京','中科院','环境工程',2,'考研速成小能手','可以为你提供从保研夏令营到考研面试的全程、全方位咨询与服务','在校成绩：成绩排名专业第2，获得国家奖学金2次，校长等奖学金1次，校一等奖学金1次。奖励与荣誉：江苏省三好学生，江苏省第三届大学生水文化创意设计大赛一等奖，校三好学生标兵（2次），校2014届优秀毕业生等。英语与计算机能力：大学生英语六级549分；通过全国计算机二级等级考试；获得软件开发工程师证书。科创情况：发表学术论文2篇；获得国家发明专利1项（法律状态：公开）、国家实用新型专利4项（法律状态：授权）；主持国家大学生创新性训练计划项目1项，参与国家大学生创新性训练计划项目1项',1,'1','2015-06-22 23:25:29',0,'','',''),(59,83,'赵思研','赵思研','15710033155','sj_profile/83/14432697305236.jpg','S0063赵思妍-2.JPG','北京','中科院','环境工程',2,'保研全知道','提供环境专业名校（清华、中科院、浙大、同济等）的保研经验，以及专利、论文的书写经验。','1、在校成绩：成绩排名专业第1，获得校一等奖学金2次，二等奖学金1次。奖励与荣誉：河南省三好学生，校优秀学生干部，校三好学生，校优秀共青团干部。连续三年获得全国大学生英语竞赛优秀奖；通过全国计算机等级考试（二级VB）。 科创情况：以第一作者发表学术论文3篇；国家实用新型专利2项；获得国家大学生创新性实验计划项目。2、大三暑假报名参加了浙江大学环境学院的保研夏令营，并在夏令营中取得录取资格。随后在保研期间参加了清华大学以及中科院生态中心的面试，最终被生态中心录取。',2,'1','2015-06-22 23:25:37',0,'','',''),(60,84,'王韬','王韬','18515940331','sj_profile/84/14432697303452.jpg','S0064王韬-2.JPG','北京','中科院','环境经济',3,'在考研的路上一路风雨一路彩虹','考研规划、临场发挥、导师选择、面试技巧等考研全程遇到的问题都可以来找我：）','获得荣誉：得校三好学生，优秀学生干部，艾普宽带公司优秀员工。大学经历：艾普宽带，优秀销售员工。大学期间成立“好帮手”家政服务社，成立“优选家”外卖店，成立“游戏之家”学生休闲工作室。加入“海洋计划”公益助学活动。',1,'1','2015-06-22 23:25:45',0,'','',''),(61,85,'陈禹男','陈禹男','17701221079','sj_profile/85/14432697302241.jpg','S0065陈禹男-2.JPG','北京','中科院','资环学院',2,'保研达人','心理咨询，野游','1、成绩排名专业第3，国家励志奖学金1次。2、大四暑假报名参加了生态环境研究中心的保研夏令营，在夏令营学习时接触了解了生态环境研究中心各实验室研究主要方向和内容，接触了解一些导师，因表现优异随后被录取。',1,'1','2015-06-22 23:25:53',0,'','',''),(62,86,'蒋 垒','蒋 垒','18911655775','sj_profile/86/14432697305698.jpg','S0066蒋垒-2.jpg','北京','中科院','地球化学+创业MBA',1,'学习、竞赛、创业多面手','学习课外时间安排，双学位学习，英语竞赛和数学建模国赛、美赛咨询，创新实验创业训练规划，实践创业交流，MBA学习，中科院读研简介','1、成绩GPA3.72，排名专业第一，北京市优秀毕业生，校优秀毕业生，获得国家奖学金1次，地球化学人才奖学金1次，希尔威矿业奖学金1次，校三好学生2次，五四优秀团员2次。美国大学生数学建模竞赛国际一等奖和二等奖各1次，全国大学生数学建模大赛国家二等奖和北京二等奖各1次，数学建模地区赛一二等奖若干次，全国大学生英语竞赛国家一等奖、二等奖、三等奖各1次，本科期间获得各类奖学金3万元左右，科研经费资助3万元左右。2、大三5月份联系了中科院3个地质类研究所，网申后获得3所院所的面试资格，其中北京的地质与地球物理研究所面试时间最早，通过面试后，就放弃了另外2个研究所的面试。',1,'1','2015-06-22 23:26:01',0,'','',''),(63,87,'丁雨賝','丁雨賝','13261773015','sj_profile/87/14432697307310.jpg','S0067丁雨賝-2.JPG','北京','北大','城市与环境学院',2,'学渣也能玩儿逆袭','成绩管理，保研咨询，联系套瓷，演讲培训，跟说话沾边的，都可以问我','1、成绩排名专业第1，获得国家奖学金2次，校级一等奖学金1次，“自强杯”?课外学术科技作品竞赛一等奖，发表第一作者论文3篇。2、大四刚开始参加了学院组织的保研面试，之前有熟悉的师兄师姐保送过来，所以提前对学院得到情况有所了解，在师兄师姐的帮助下，结合自己的研究方向，选择了现在的导师，并有所接触。面试时，因表现优异被录取。',2,'1','2015-06-22 23:26:09',0,'','',''),(64,88,'许强辉','许强辉','18600640260','sj_profile/88/14432697309989.jpg','S0068许强辉-2.jpg','北京','清华','热能工程系',2,'热爱科研','本科学业社团合理规划，保研面试笔试突出重围，也许有你想要的帮助','1、本科综合成绩排名专业第1，获得国家奖学金1次，国家励志奖学金1次，陕鼓奖学金1次，西安交通大学优秀团干部、优秀学生、优秀毕业生，；清华大学博士新生奖学金1次，新疆乌鲁木齐经济开发区奖学金1次，EI第一作者2篇，SCI第二作者2篇等。2、大四下参加了清华大学保研，根据要求准备了申请材料，简历筛选后参加面试，面试官为本系教授，约15人左右，面试过程时间15分钟，英文自我介绍+考官提问，提问包括基础知识+科研',1,'1','2015-06-22 23:26:18',0,'','',''),(65,89,'林兆','林兆','18311026678','sj_profile/89/14432697301840.jpg','S0070林兆-2.jpg','北京','中科院','微生物',2,'自我规划强','生物保研选择，生物就业咨询可以找我','1、曾获得国家励志奖学金，汪德耀奖学金等，发表第一作者论文1篇，众多知名外企国企实习经验。2、大三暑假报名参加了微生物所的保研夏令营，在夏令营学习时接触了解了微生物所各实验室研究主要方向和内容，接触了解一些导师，因表现优异随后被录取。',1,'1','2015-06-22 23:26:26',0,'','',''),(66,90,'邓思颖','邓思颖','15011341605','sj_profile/90/14432697308090.jpg','S0071邓思颖-2.jpg','北京','中科院','工业生物',2,'自信有规划','保研','1、成绩排名专业第2，华中科技大学三好学生标兵，华中地区高校招聘挑战赛一等奖，国家奖学金2次，校三好学生3次，校优秀毕业生1次、校优秀共青团干部1次，校优秀学生干部3次。2、大三暑假报名参加了微生物所的保研夏令营及清华北大NIBS的联合夏令营，在夏令营学习时接触了解了微生物所、清华大学生命学院、NIBS及北大各实验室研究主要方向和内容，接触了解一些导师，因个人兴趣在工业应用方向，后选择中科院微生物研究所。',2,'1','2015-06-22 23:26:34',0,'','',''),(67,91,'胡晓晖','胡晓晖','15652652604','sj_profile/91/14432697306931.jpg','S0072胡晓晖-2.jpg','北京','中科院','半导体所',2,'南开保研','保研也不代表你可以偷懒','成绩排名专业第3，获得国家励志奖学金1次，南开大学校一等奖学金2次，三好学生3次，优秀学生干部2次，优秀毕业生1次，全国电子设计竞赛天津市一等奖',2,'1','2015-06-22 23:26:42',0,'','',''),(68,92,'王超逸','王超逸','18612992045','sj_profile/92/14432697309714.jpg','S0073王超逸-2.JPG','北京','中科院','心理所',1,'德智体美全面发展','想拥有丰富的大学生活又能顺利保研吗？想在研究生的枯燥生活中依然多姿多彩吗，找我就对啦！','成绩排名专业第1，获得国家奖学金1次，国家励志奖学金1次，大学生创新性实验计划被评为国家级项目。大三暑假报名参加了中科院的保研夏令营，来北京之前提前联系了自己感兴趣的方向导师，在参加夏令营之余和导师见面，谈了谈自己的情况，得到保研名额之后基本就定下来了。',2,'1','2015-06-22 23:26:50',0,'','',''),(69,93,'朱鹤','朱鹤','18800174876','sj_profile/93/14432697305142.jpg','S0075朱鹤-2.JPG','北京','中科院','地理所',3,'全能小战士','保研指导，跨校跨专业保研，教你如何做简历如何联系老师','本科成绩排名专业第1，获得国家奖学金1次，北京市优秀毕业生1次，清华大学环境友好科技赛优胜奖1次，学习优秀奖学金/三好学生/社会工作奖学金各3次，挑战杯创业大赛三等奖2次等。力求保研转专业，参加过上海交通大学、复旦大学、中科院上海生命科学院的保研夏令营，分别拿到园林规划设计、环境管理和植物学（遗传方向）的保研录取通知书。后参加过清华大学化学工程和北京大学城市规划方向的保送选拔，最终选择避开实验的中科院地理所人文地理方向研究生。',2,'1','2015-06-22 23:26:58',0,'','',''),(70,94,'吕梦菲','吕梦菲','15210837141','sj_profile/94/14432697309073.jpg','S0076吕梦菲-2.JPG','北京','北大','电子系',2,'保研达人','保研选择，人生规划咨询','成绩排名专业前1%，获得国家奖学金2次，国际大学生数学建模大赛一等奖，北京市三好学生，北京邮电大学大学生创新项目三等奖，CCTV“希望之星”英语风采大赛短剧表演组北京市最佳舞台效果奖。大三暑假报名参加了北大信科院的保研夏令营，在夏令营学习时接触了解了信科各实验室研究主要方向和内容，接触了解一些导师，因表现优异随后被录取。',2,'1','2015-06-22 23:27:06',0,'','',''),(71,95,'袁靓','袁靓','18810767376','sj_profile/95/14432697305869.jpg','S0077袁靓-2.jpg','北京','中科院','地理所',1,'奖项大满贯','找妥妥的老师，拿大大的奖状，有多多的money。硕士生活从“早”开始。','获得奖励：（1） 2012-2013学年中国科学院大学三好学生。（2） 2013-2014学年中国科学院大学三好学生。（3） 2013-2014学年中国科学院大学优秀学生干部。（4） 2013-2014学年国家奖学金。（5） 2014-2015学年所长奖学金。（6） 2014-2015学年中国科学院大学优秀毕业生。（7） 2014-2015学年北京市优秀毕业生。（8） 2012年度地球科学学院“秋之魅影”摄影大赛二等奖。（9） 2013学年地理资源所书画摄影展中摄影类一、三等奖和优秀奖。（10）2012-2013学年“五月之花”中科院大学比赛中第一名。发表文章：共9篇，其中第一作者4篇。学习成绩：86.38社会活动：研一期间担任了中国科学院大学813班的文艺委员，研二期间担任了中国科学院地理科学与资源研究所研究生会文艺部干事和1311班副班长职务。研三期间担任了中国科学院地理科学与资源研究所研究生会副主席和青年志愿者协会副秘书长。',2,'1','2015-06-22 23:27:15',0,'','',''),(72,96,'李岳乔','李岳乔','15510175713','sj_profile/96/14432697301131.jpg','S0078李岳乔-2.jpg','北京','中科院','物理所',1,'保研大忽悠','面试技巧，泡妞心得，你都能在我这里找到答案','获得甲等奖学金1次，乙等1次，实用新型专利10项，全国性质学术科技比赛三等奖2次，华中地区创业比赛一等奖1次，湖北省创业比赛一等奖1次，主持人大赛三等奖1次，校内奖项若干。大三暑假报名参加了上海交大、大连化物所、长春光机所的保研夏令营，均以前几名的成绩通过面试。',2,'1','2015-06-22 23:27:24',0,'','',''),(73,97,'李智','李智','18180309669','sj_profile/97/14432697309856.jpg','李智-2.jpg','北京','北大','国际法学院',3,'保研热门','参加保研夏令营拿到OFFER，听我缓缓道来。','成绩排名专业第5，获得北京林业大学奖学金2次，三好学生和优秀学生干部各1次，“挑战杯”首都大学生创业计划竞赛铜奖，全国大学生英语竞赛三等奖，发表第一作者论文2篇，其中英文论文1篇。大三暑假报名参加了浙江大学经济管理学院和北京大学国际法学院的保研夏令营，在夏令营学习时接触了解了国际法学院的JD教学模式，因表现优异随后被录取。',2,'1','2015-06-22 23:27:35',0,'','',''),(74,98,'刘璐','刘璐','13810475540','sj_profile/98/14432697308421.jpg','刘璐-2.JPG','香港','香港大学','社会行政学',3,'雅思小能手，留学申请万事通','留学申请，实习实践，大学规划，你都能在这里找到答案','刘璐，CCTV传媒梦工坊副主席。本科就读于中央民族大学社会学专业，研究生同时被香港大学、北京大学、新加坡南洋理工大学黄金辉传播与信息学院录取，即将就读于香港大学。网易新闻资讯节目《网易早点》新闻评论节目新闻评论员；曾在中央电视台、经理人传媒有限公司 《经理人》杂志、北京大学光华管理学院校友事务中心实习；大二加入CCTV传媒梦工坊组委会并于同年邀请到俞敏洪老师担任梦工坊导师，主要负责对外媒体合作，参与编写了传媒梦工坊与中国传媒大学出版社合作编写的三本十二五规划高校教材《大学生职业生涯与发展规划》《大学生就业与创业指导》《大学生创业指导》。本科期间担任中央民族大学两大学生社团负责人，期间负责承办哈佛大学在北京主办的以“击败疟疾”为主题的全球大型公益快闪等公益活动。',2,'1','2015-06-22 23:27:42',0,'','',''),(75,99,'王逸非','王逸非','18801480728','sj_profile/99/14432697309519.jpg','王逸飞2.jpg','北京','中科院','物理所',1,'职业规划师','学渣，混学历，思路广，眼界宽，重逻辑。欢迎不想好好学习的同学来找我','大学只顾玩了，毕业无路可去，只好随便抓个研究生读着再说',1,'1','2015-06-22 23:27:49',0,'','',''),(76,100,'张关华','张关华','18910690635','sj_profile/100/14432697309541.jpg','张关华-2.jpg','北京','北大','法学院',3,'保研聊伴','身为处女座 O型，擅长在保研路上衡平完美主义与中庸之道，教你如何横扫北大清华人大三校保研offer','成绩排名始终位于班级前5％；曾荣获国家奖学金，甲等奖学金，陶德麟哲学奖学金；本科连续3年被评为武汉大学“三好学生”；连续2年参加金秋艺术节舞蹈大赛荣获二等奖。大三暑假准备保研申请，先后申请了中国人民大学哲学学院、北京大学法学院和清华大学法学院，随后分别参加了三所学校的保研笔试和面试，均被录取，最终选择了北京大学法学院攻读法律硕士研究生。',2,'1','2015-06-22 23:27:59',0,'','',''),(77,101,'叶雨阳','叶雨阳','13261766096','sj_profile/0/14432697308351.jpg','S0074叶雨阳-2.JPG','北京','清华','新闻与传播学院',3,'适应能力强','跨校保研；雅思备考；心态适应；语言学习','成绩排名专业第1，本科阶段连续三年获得武汉大学校级奖学金，今传媒2012年度最佳学子奖，互通国际传播奖学金，武汉大学优秀毕业生，新闻与传播学院2012年度优秀实习生，2013年度湖北省优秀本科毕业论文。大四开学时候开始申请外校保研，申请了北大清华人大和复旦，收到了清华人大和复旦的面试通知。9月底来北京参加了人大和清华的复试，在清华的面试成绩优异后被录取。',2,'1','2015-06-22 23:28:08',0,'','',''),(81,125,'测试账户','测试账户','13269387620','sj_profile/24/14432697308676.jpg','0.93307000 14373990357373.jpg','city','University','college',1,'test','test','test',1,'1','2015-07-17 14:16:04',0,'','',''),(83,147,'于晓华','于晓华','18513604146','sj_profile/46/14432697302430.jpg','于晓华 - 副本.jpg','北京','中科院地理科学与资源研究所','人文地理学',3,'考研小能手 考研心态调节','考研心态调节 笔试、面试小指导 考研整体规划','本科；山东师范大学 连续三年获得一等、二等奖学金 担任班级学习委员 研究生考研至地理科学与资源研究所  2015年帮助三名师妹考入地理所 对于考研整体规划、心态调节比较擅长',2,'1','2015-07-28 15:00:09',0,'','',''),(266,332,'Jessica','Jessica','13426027009','sj_profile/29/14432697308885.jpg','000000.jpg','北京市','清华大学','经管学院',2,'爱好美食摄影的技术创业商业模式研究者','爱好美食摄影的技术创业商业模式研究者','（显示在详情页面，包括自我介绍、所获奖项、实习实践经历等）',2,'1','2015-09-12 06:25:22',0,'','',''),(267,142,'杨冰','杨冰','','sj_profile/41/14432697301812.jpg','71571250726725654.jpg','北京','中国科学院大学','电工研究所',1,'（20个字以内，如“考研小能手”、“如何完成人生规划”等）','（显示在首页，50个字以内，如“考研心理，全年规划，你都能在我这里找到答案”）','（显示在详情页面，包括自我介绍、所获奖项、实习实践经历等）',1,'1','2015-09-12 06:25:57',0,'','',''),(268,333,'min','min','15600616335','sj_profile/30/14432697306533.jpg','51_18_right now.jpg','北京','中国科学院大学','电子学院',1,'','','',1,'1','2015-09-12 06:25:57',0,'','',''),(269,334,'安鹏莉','安鹏莉','15652796173','sj_profile/31/14432697305295.jpg','000000.jpg','北京','清华大学','精密仪器系',1,'考研小能手，出国申请','清华大学精密仪器系考研及推研咨询，工程光学考研备考，以及职业规划咨询。','清华大学优秀德育助理，清华大学职业生涯教练计划暨案例大赛铜奖，清华大学二等综合奖学金/三等综合奖学金，全国大学生数学建模竞赛山东省一等奖，中国石油大学教务处处长助理、青年志愿者协会主席助理等。',2,'1','2015-09-12 06:25:57',0,'','',''),(270,335,'安庭萱','安庭萱','18600464832','sj_profile/32/14432697303744.jpg','265882449563360239.jpg','北京','中国科学院大学','管理学院',3,'资深多领域跨界市场营销策划','o可与人分享的专业经验：10余年市场营销工作经验。从PPT方案策划到文案撰写、活动策划、市场调研等均有丰富履历，有一定线上线下推广（如网站建设、微博推广、流量引入等）经验。','o可与人分享的行业经验：在高端教育培训、百货零售、地产、快消品、奢侈品、汽车等多个行业均有涉猎。\r\no可与人分享的技能经验：有甲方及乙方工作经验、创业及团队管理经验，从市场营销专业领域到现场执行、团队管理、客户谈判及对企业家、媒体等资源整合能力各种技能的分享。',2,'1','2015-09-12 06:25:57',0,'','',''),(271,336,'安心','安心','18211198764','sj_profile/33/14432697305797.jpg','000000.jpg','北京','中科院心理研究所','临床心理治疗',2,'人生道路，携手同行','擅长考试心理辅导，恋爱婚姻家庭指导，学业 职业生涯规划，人际关系协调，情绪压力管理。心理咨询与心理督导','系统学习精神分析，家庭治疗，人本治疗，认知行为治疗，熟悉后现代高效焦点技术，合作对话技术，叙事疗法，ACT接纳承诺疗法，参与的主要课题，语境行为科学研究，儿童人格测评与分析。',2,'1','2015-09-12 06:25:57',0,'','',''),(272,337,'柏久麟','柏久麟','15810254285','sj_profile/34/14432697312988.jpg','20_18_IMG_20150706_164817.jpg','北京','中央民族大学','理学院',1,'','','本科就读于北京林业大学数学与应用数学专业，第一年考研失败，在家复习一年后成功考入中央民族大学概率论与数理统计专业，现从事电子商务数据分析工作',1,'1','2015-09-12 06:25:57',0,'','',''),(273,338,'曹树民','曹树民','15357599250','sj_profile/35/14432697321535.jpg','曹树民.jpg','上海','中科院上海生科院','植物遗传',2,'保研那些事，师兄都知道','保研专业选择，导师选择，材料准备，夏令营活动，推免面试，及到底要不要读研，是硕士，硕博还是直博，及个人情感问题咨询','华南农业大学基地班，成绩倒数，在校期间拿过各种奖项，参与过几项科研项目，假期有过各种兼职，实习，创过业，不过失败了，各种户外旅行经历等',1,'1','2015-09-12 06:25:57',0,'','',''),(274,339,'曹颖','曹颖','13671001938','sj_profile/36/14432697325048.jpg','曹颖.jpg','北京','中国人民大学','法学院民商法',3,'','','本科就读中国人民大学法学院，推免至民商法专业，两年法律援助经验，曾获挑战杯国赛二等奖。',2,'1','2015-09-12 06:25:57',0,'','',''),(275,340,'曹勇','曹勇','13261527687','sj_profile/37/14432697321034.jpg','000001.jpg','Beijing','中国科学院大学','材料',2,'（20个字以内，如“考研小能手”、“如何完成人生规划”等）','（显示在首页，50个字以内，如“考研心理，全年规划，你都能在我这里找到答案”）','（显示在详情页面，包括自我介绍、所获奖项、实习实践经历等）',1,'1','2015-09-12 06:25:57',0,'','',''),(276,341,'常凡','常凡','13832340144','sj_profile/38/14432697325772.jpg','常凡.jpg','石家庄','北京第二外国语学院','旅游管理',2,'助您成“公”——公务员','公务员、事业编、银行、军转干、机关遴选等考试笔试、面试辅导——因为一步步走来，我们比辅导班更懂你，更适合你。','当过村官，待过基层，考过选调，经过联考，现在某省委工作。指导志向相投的无数朋友“公”考成功，我不是一个人，我们是一批人，只是分享自己的经历，促进彼此共同进步。',2,'1','2015-09-12 06:25:57',0,'','',''),(277,342,'陈尔默','陈尔默','15120055004','sj_profile/39/14432697327500.jpg','840371219943398435.jpg','北京','中央财经大学','精算学',1,'','','*',1,'1','2015-09-12 06:25:57',0,'','',''),(278,343,'陈峰','陈峰','18201738994','sj_profile/40/14432697332276.jpg','陈峰.JPG','京都','京都大学','化学',2,'乐于分享','谋定而后动','（显示在详情页面，包括自我介绍、所获奖项、实习实践经历等',1,'1','2015-09-12 06:25:57',0,'','',''),(279,344,'陈工','陈工','18038086550','sj_profile/41/14432697331470.jpg','陈工4.jpg','北京','北京大学，中国科学院大学','GIS',1,'创业家','热情，理想，坚持，创新','本科两次篮球赛冠军，中科院电子学院篮球赛冠军，国科大冠军，国科大季军，中科院院长奖学金，',1,'1','2015-09-12 06:25:57',0,'','',''),(280,345,'陈金祥','陈金祥','13436974805','sj_profile/42/14432697334811.jpg','109601605509603172.jpg','北京','北京科技大学','土木与环境工程学院',1,'','','',1,'1','2015-09-12 06:25:57',0,'','',''),(281,346,'陈连连','陈连连','18801173530','sj_profile/43/14432697332266.jpg','37948966287322217.jpg','北京','北京航空航天大学','软件学院',1,'','','',2,'1','2015-09-12 06:25:57',0,'','',''),(282,347,'陈少龙','陈少龙','18635021183','sj_profile/44/14432697332310.jpg','735034071130478207.jpg','北京','北京科技大学','自动化',1,'','','',1,'1','2015-09-12 06:25:57',0,'','',''),(283,348,'陈天华','陈天华','13261051592','sj_profile/45/14432697332902.jpg','44999353191993970.jpg','北京','中科院大学','化学与化工学院',1,'考研小能手，健身爱好者，英语学习助手','考研复习和心理梳理，全年规划，你都能在我这里找到答案；健身减肥咨询，帮你更加自信；英语学习帮手，帮助你更好的学习英语。','（显示在详情页面，包括自我介绍、所获奖项、实习实践经历等）',2,'1','2015-09-12 06:25:57',0,'','',''),(284,349,'陈祥红','陈祥红','18576213515','sj_profile/46/14432697338197.jpg','陈祥红2.jpg','中山','中南大学','电气工程',1,'大学生活、考研、读研、求职、工作和爱情的典型案例','在如何过好大学生活，如何跨地区跨学校考研，如何度过研究生三年，如何面试和求职，如何寻找另一半等很多方面都能给你极有价值的借鉴','本人是湖南邵阳人，本科担任过班级和社团职务，创建过英语学习团队，广交学校各个院系同学，四个月准备考研，读研参与科研项目，实践教学和论文写作，广泛阅读政治、思想、心理、历史等方面的书籍。荣获过校级奖学金，优秀团员，研究生全额奖学金，国家励志奖学金等荣誉，爱好深度的内心交流和知识观点分享，喜欢篮球乒乓球运动，对于感情、面试和工作有自己独特的经历和看法，期待与你的交流。',1,'1','2015-09-12 06:25:57',0,'','',''),(285,350,'陈昭晶','陈昭晶','13698606859','sj_profile/47/14432697332025.jpg','陈昭晶1.JPG','山东济南','中国科学院生态环境研究中心','环境科学与工程',2,'“大学考试小能手”','大学考试，保研技巧，时间管理，你都能在我这里找到答案','大学四年一等奖学金，保研至中国科学院',2,'1','2015-09-12 06:25:57',0,'','',''),(286,351,'程彦丽','程彦丽','13120335861','sj_profile/48/14432697337044.jpg','14257743791862780.jpg','北京','北京邮电大学','数字媒体与设计艺术学院新闻传播系',1,'','','',2,'1','2015-09-12 06:25:57',0,'','',''),(287,352,'丛晟宇','丛晟宇','13261091918','sj_profile/49/14432697337270.jpg','871391030380357951.jpg','北京','中科院','中科院理化所',2,'有意思的人','（显示在首页，50个字以内，如“考研心理，全年规划，你都能在我这里找到答案”）','（显示在详情页面，包括自我介绍、所获奖项、实习实践经历等）',1,'1','2015-09-12 06:25:57',0,'','',''),(288,353,'崔璨','崔璨','15120093198','sj_profile/50/14432697336894.jpg','崔璨1.JPG','北京市','北京大学','教育学院',3,'（20个字以内，如“考研小能手”、“如何完成人生规划”等）如何在合适的时间做恰当的事、学生工作保研','（显示在首页，50个字以内，如“考研心理，全年规划，你都能在我这里找到答案”）大学期间在学生组织中表现出色的你，成绩名列前茅的你，关于保研的准备喝申请，欢迎来咨询！','（显示在详情页面，包括自我介绍、所获奖项、实习实践经历等）本科期间获得多次学习优秀奖学金、学术比赛奖项，在科技协会任副主席、班级组织委员，在西门子、新东方做过实习，学工保研至北京大学；读研期间，跟导师团队制作教师培训慕课，为课程助教，学员过十万',2,'1','2015-09-12 06:25:57',0,'','',''),(289,354,'戴飞','戴飞','13401154118','sj_profile/51/14432697337175.jpg','4_25_image.jpg','北京','北京科技大学','土木与环境工程学院',1,'','','2008.9～2012.6，本科，北京科技大学，采矿工程；2012.9～2015.1，硕士，北京科技大学，矿业工程。',1,'1','2015-09-12 06:25:57',0,'','',''),(290,355,'戴柠薇','戴柠薇','15652922075','sj_profile/52/14432697337127.jpg','戴柠薇 - 副本.jpg','北京','清华大学','计算机系',1,'保研offer收割机','计算机类保研规划与准备，笔经面经，找我准没错！','爱折腾的工科女！\r\n全国大学生数学建模一等奖，美国大学生数学建模二等奖，机器人大赛三等奖，国家奖学金。\r\n中国移动中国电信实习经历，中国人民大学大数据实验室实习并发表论文。\r\n（显示在详情页面，包括自我介绍、所获奖项、实习实践经历等）',2,'1','2015-09-12 06:25:57',0,'','',''),(291,356,'邓颖惠','邓颖惠','18810915591','sj_profile/53/14432697335316.jpg','154157467157529361.jpg','北京','清华','五道口金融学院直博',3,'','多个保研夏令营经验分享','（显示在详情页面，包括自我介绍、所获奖项、实习实践经历等）',2,'1','2015-09-12 06:25:57',0,'','',''),(292,357,'邓玉嵩','邓玉嵩','13436818677','sj_profile/54/14432697346694.jpg','邓玉嵩.JPG','北京','中国人民大学','金融学院',3,'创业小管家','孵化器合伙人，虫洞创业之家客户经理，想创业来找我咯！','前羽毛球国家二级运动员，毕业后考取公务员就职于通州区政府招商科，现辞职到创业大街创业，纯屌丝！',1,'1','2015-09-12 06:25:57',0,'','',''),(293,358,'丁淑婧','丁淑婧','17764597596','sj_profile/55/14432697346668.jpg','丁淑静2.jpg','杭州','浙江传媒xueyuan','双语播音',3,'在逐梦的同时享受过程','如果你对传媒类行业有着很大的喜爱和兴趣，对艺考方面有问题 学姐作为过来人 都可以为你解答呦','一等奖学金 三好学生 杭州电视台实习',2,'1','2015-09-12 06:25:57',0,'','',''),(294,359,'丁岩岩','丁岩岩','18201519589','sj_profile/56/14432697343667.jpg','000000.jpg','北京','中国科学院大学','生命科学学院',1,'','','',2,'1','2015-09-12 06:25:57',0,'','',''),(295,360,'丁驿晴','丁驿晴','15201422120','sj_profile/57/14432697345371.jpg','丁驿晴3.jpg','北京','中国科学院植物研究所','生命科学院',2,'知道如何让自己过的舒服','大学该做的事情，该经历的阶段，不止学业方面哦，以及非专业穿衣化妆技巧','三好学生，各类奖学金，社会实践优秀个人，全国植物生产类论坛大学生优秀论文，保送中科院植物所，中科院植物资源中心研究生会副主席',2,'1','2015-09-12 06:25:57',0,'','',''),(296,361,'窦乐天','窦乐天','18810471205','sj_profile/58/14432697348099.jpg','603886492285079612.jpg','北京','中国科学院大学','管理学院',2,'面试专家。面试通过率100%','擅长面试技巧，尤其是互联网行业和金融行业。曾在本科毕业后找工作面试过的公司100%给offer','曾经是一个迷恋网络游戏的小伙子，本科毕业后在互联网公司做产品经理，后转入互联网金融行业，现为金融行业高级产品经理。',1,'1','2015-09-12 06:25:57',0,'','',''),(297,362,'杜丰宇','杜丰宇','18810900460','sj_profile/59/14432697342553.jpg','杜丰宇.jpg','北京','北京大学','电子与通信工程',1,'如何安排大学生活，如何规划考研','如何让自己的大学生活丰富多彩却又不影响学习？如何合理安排考研复习时间，如何高效备考？','本人大学里参加过各种志愿活动，做过学生助理，好过学生干部，大学后期的考研阶段算刻苦学习了一回~',1,'1','2015-09-12 06:25:57',0,'','',''),(298,363,'范濮','范濮','15201463501','sj_profile/60/14432697346184.jpg','12_25_image.jpg','北京','北京科技大学','机械工程学院工业设计系',1,'工作保研，设计类擅长（20个字以内，如“考研小能手”、“如何完成人生规划”等）','聊天沟通，工作保研，尽可能帮助你！','大学期间在学院学生会工作并至院会副主席;\r\n大学结束后工作保研至本专业，了解一些相关事宜。',1,'1','2015-09-12 06:25:57',0,'','',''),(299,364,'冯晨翔','冯晨翔','17080055289','sj_profile/61/14432697344632.jpg','853670204493810099.jpg','北京','北京大学','营销',3,'ktv','喜欢和大家一起玩','德电实习',1,'1','2015-09-12 06:25:57',0,'','',''),(300,365,'冯帆','冯帆','16124011919','sj_profile/62/14432697346848.jpg','19_18_image.jpg','北京','University of Minnesota','Aerospace Engineering and Mechanics',1,'','','清华物理系，博士转力学，流体固体数学都略懂。',1,'1','2015-09-12 06:25:57',0,'','',''),(301,366,'付丽银','付丽银','15313725591','sj_profile/63/14432697348928.jpg','14_18_IMG_3838.JPG','北京','中科院外微电子研究所','集成电路工程',1,'','','付丽银  女  1991年出生  本科就读于兰州大学   保送中科院微电子研究所攻读集成电路工程专业硕士',2,'1','2015-09-12 06:25:57',0,'','',''),(302,367,'高江峰','高江峰','17801063027','sj_profile/64/14432697349430.jpg','3_25_viewphoto.jpg','北京','北京科技大学','自动化学院',1,'熟悉生产类国企状况','在国企呆了两年，历经千险…','国家电网平高集团…打杂…',1,'1','2015-09-12 06:25:57',0,'','',''),(303,368,'顾金鑫','顾金鑫','15201442197','2_25_mmexport1438662581892.webp','2_25_mmexport1438662581892.webp','北京','北京科技大学','自动化',1,'','','研究养老方向的数据挖掘，并在一家从事养老行业单位实习',1,'1','2015-09-12 06:25:58',0,'','',''),(304,369,'管理','管理','18612503550','sj_profile/66/14432697348837.jpg','591195940188851224.jpg','杭州','中国科学院心理研究所（已毕业）','计算网络心理学',2,'循序渐进个人规划','从入学选择导师、课程开始到发paper, 找实习，拿到工作offer圆满毕业，协助你规划在读期间各个阶段的主要任务','浙江大学心理系保送中国科学院心理研究所，就读期间发表第一作者国内核心期刊2篇，SCI英文期刊1篇；成功申请到微软亚洲研究院必应搜索部门和阿里巴巴淘宝部门实习岗；现就职于阿里巴巴集团数据研究院',1,'1','2015-09-12 06:25:58',0,'','',''),(305,370,'郭佳','郭佳','15313583413','sj_profile/67/14432697349464.jpg','259540776500035868.jpg','北京','中国科学院大学','工商管理',2,'文艺逗比','热情慷慨，与人为善。','',2,'1','2015-09-12 06:25:58',0,'','',''),(306,371,'国若家','国若家','15822660521','sj_profile/68/14432697344479.png','9_18_IMG_20150623_194843.jpg','北京','中国社会科学院研究生院','文物与博物馆',1,'','','',2,'1','2015-09-12 06:25:58',0,'','',''),(307,372,'果鹏','果鹏','15120045760','sj_profile/69/14432697348872.jpg','40_18_large_iHYq_3e8700003e841263.jpg','北京','华北电力大学','经济管理学院',1,'','','国网配电专责',1,'1','2015-09-12 06:25:58',0,'','',''),(308,373,'韩德珩','韩德珩','18610260872','sj_profile/70/14432697345236.jpg','10_18_image.jpg','北京','中科院','半导体所',1,'','','',1,'1','2015-09-12 06:25:58',0,'','',''),(309,374,'韩湘云','韩湘云','18813086500','sj_profile/71/14432697341979.jpg','韩湘云.jpg','北京','清华大学','经济管理学院-会计学博士',3,'经历不能复制，但经验赋予人生更多可能性','经历过各大高校夏令营的面试，也担任过面试助理。知道考验和保研的整个流程，以及前后的各项大大小小的规划。','本科南京大学，荣获瑞银投资报告比赛全国十强，毕马威管理案例分析大赛全国十强，参加德勤税务精英挑战赛。荣获江苏省三好学生，每年国家奖学金',2,'1','2015-09-12 06:25:58',0,'','',''),(310,375,'韩逸畴','韩逸畴','13816613500','sj_profile/72/14432697341148.jpg','韩逸畴2.jpg','上海','华东政法大学','国际法学院',3,'大学教师（国际法学）','法学研究、司法考试等。','清华大学法学院博士后研究人员。',1,'1','2015-09-12 06:25:58',0,'','',''),(311,376,'何经纬','何经纬','13020095416','sj_profile/73/14432697345706.jpg','15_18_IMG_20150807_162219_mh1439738634599.jpg','北京','北京林业大学','林学院',1,'','','曾任北京林业大学学生会副主席（北京市学生联合会执行主席候选人），辩论与演讲协会副会长，连续三年荣获优秀学生干部及学习优秀奖学金，获得国奖励志奖学金、海淀区“树人”奖学金等奖项。现任本校保研辅导员。',1,'1','2015-09-12 06:25:58',0,'','',''),(312,377,'胡方卉','胡方卉','13810330277','sj_profile/74/14432697345791.jpg','180928905103128421.jpg','北京','中国农业大学','农业经济管理',3,'考研&amp;公考小能手','那些年，我参加过的考研和公考，愿意和你说说～','显示在详情页面，包括自我介绍、所获奖项、实习实践经历等）',2,'1','2015-09-12 06:25:58',0,'','',''),(313,378,'胡松德','胡松德','15201441340','sj_profile/75/14432697342415.jpg','000001.jpg','北京','北京科技大学','计算机与通信工程',1,'','','没啥特殊背景。很普通',1,'1','2015-09-12 06:25:58',0,'','',''),(314,379,'扈艳','扈艳','15922792922','sj_profile/76/14432697347016.jpg','扈艳2.jpg','北京','中国人民大学','法学院',3,'从法门走向人生的无限可能。','学生工作的心得与困扰，学习保研的疑虑与思考，演讲辩论的经历与技巧，当然还有法律那些事，统统欢迎交流～','家底\r\n·山东济南人\r\n\r\n关于成绩\r\n·国家奖学金获得者\r\n·连续三年综合成绩实验班年级排名第一\r\n·连续七学期校一等综合奖学金获得者\r\n·春雨、锦上添花奖学金等社会奖学金获得者\r\n·本科期间科研项目省级两项，校级两项，发文一篇\r\n·山东大学卓越法律人才夏令营优秀营员\r\n·跨校保研至中国人民大学民商法专业\r\n\r\n关于团队\r\n·先后担任西南政法大学校级法学实验班班长、学生会主席、党支部书记\r\n·多次获得省级、校级优秀学生干部称号\r\n·多次获校级三好学生、优秀团干部、优秀实践活动组织者等称号\r\n·多次组织各级别学术、文艺学生活动\r\n·重庆市优秀毕业生\r\n\r\n关于法律\r\n·多次获国家级、校级辩论赛、模拟法庭竞赛前三名\r\n·多次作为学生代表在校各活动进行发言致词\r\n·先后在济南市中级人民法院、重庆市第一中级人民法院、重庆市高级人民法院实习\r\n·曾为西政法律诊所成员，多次进行义务法律咨询并代理案件\r\n',2,'1','2015-09-12 06:25:58',0,'','',''),(315,380,'黄高平','黄高平','15711122335','sj_profile/77/14432697347693.jpg','黄高平2.JPG','北京','刚毕业','',1,'北大清华学霸+创业企业公务员职业达人','横跨北大清华的学霸，升学、出国、职业资格考试，学术讨论，学业规划，技能储备等咨询；历经创业企业公务员三栖磨练的职业达人，人生规划咨询和职业境遇分享。','学习经历：\r\n本科：北京大学医学部，在校创业，自编自演首部DV《白衣飘飘的年代》。\r\n研究生：清华大学，入学成绩第一，北京市优秀毕业生，毕业论文获院优、校优，国优评选中。\r\n工作经历：\r\n大学期间开始创业，历经创业、企业、公务员等职业生态。',1,'1','2015-09-12 06:25:58',0,'','',''),(316,381,'黄祎','黄祎','15201569605','sj_profile/78/14432697359612.jpg','327850886099005427.jpg','北京','北京大学','法学院',3,'我没那么优秀 但是也许可以告诉你些我一路走来的经验教训','经济还是法律专业选择上的困惑  如何规划大学生活 如何保研北大法硕 参加演讲和朗诵比赛的技巧 我都可以支些招 ','本科就读于人大经济学院 研究生保研到北大法学院 北京市首届科普演讲比赛一等奖  中国人民大学五四文化节朗诵比赛二等奖  北京大学法学院新生奖学金获得者 ',2,'1','2015-09-12 06:25:58',0,'','',''),(317,382,'贾静','贾静','13260065057','sj_profile/79/14432697358041.jpg','44_18_mmexport1419173651136.jpg','北京','北京大学','医学部',1,'','','',2,'1','2015-09-12 06:25:58',0,'','',''),(318,383,'姜明','姜明','18256915833','sj_profile/80/14432697354738.jpg','52_18_image.jpg','北京','合肥工业大学','管理学院',1,'','','',1,'1','2015-09-12 06:25:58',0,'','',''),(319,384,'姜威','姜威','18500424241','sj_profile/81/14432697356883.jpg','25_18_2015-08-17 00.36.21.jpg','北京','中国科学院大学','公共政策与管理学院',1,'','','',1,'1','2015-09-12 06:25:58',0,'','',''),(320,385,'焦菁','焦菁','15117982753','sj_profile/82/14432697354936.jpg','42_18_image.jpg','北京','中国科学院大学','地球科学学院',1,'','','大气科学（本科）+空间物理学（博士）\r\n大学期间担任分团委宣传部长，大学生艺术团书画组组长，组织并参与过众多活动。\r\n研究生期间担任中科院研究生院青年志愿者协会副会长，定期带领团队去太阳村做义工。\r\n博士在读期间在国际会议上获得过优秀青年论文奖。\r\n2015届应届博士毕业，出生年月：1989.6.2。目前在中科院国家空间科学中心工作，近期因工作需要将要调去巴西空间研究院访问三个月。\r\n\r\n',2,'1','2015-09-12 06:25:58',0,'','',''),(321,386,'金峻','金峻','13917787511','sj_profile/83/14432697351913.jpg','000001.jpg','上海','北京大学','软件',2,'信息系统项目经理，工程师，导师','导师','1992-1997 交通大学',1,'1','2015-09-12 06:25:58',0,'','',''),(322,387,'康永庆','康永庆','18901398052','sj_profile/84/14432697354010.jpg','13_18_image.jpg','北京','北大国发院','MBA',1,'','','金融保险行业 财富管理领域 从10年多外企 转向中资企业 到现在筹划创业财富管理领域。一路以来 有害怕 有自卑 有迷茫 有意气风发 有桀骜不驯 到现在，更坦然 更积极 更知道把握当下 体验生命',1,'1','2015-09-12 06:25:58',0,'','',''),(323,388,'黎琳','黎琳','18810547835','sj_profile/85/14432697359252.jpg','419682141951535627.jpg','北京','北京科技大学','材料科学工程',1,'','','',1,'1','2015-09-12 06:25:58',0,'','',''),(324,389,'李丹丹','李丹丹','15120077225','sj_profile/86/14432697357608.jpg','李丹丹.JPG','北京','中科院','理化技术研究所',1,'珠宝鉴定师 &amp; 科院女博士','1，珠宝鉴定师，HRD钻石分级师，珠宝培训师，珠宝首饰相关问题均可。\r\n2，地大本科，科院女博士，保研，专业选择，人生规划问题均可。','学习经历：\r\n1，本科期间：珠宝鉴定专业4年，两年法学辅修，后保送直博中科院；国家奖学金，专业奖学金；国家级物理竞赛非专业组二等奖，国家级英语竞赛非专业组二等奖；创业大赛校级优秀奖；\r\n2，博士期间：班级党支书，研会外联负责人；优秀共产党员，三好学生，优秀学生干部。\r\n工作经历：\r\n1，11年至今，获得GCC珠宝鉴定师资格，HRD钻石分级师资格。\r\n2，周六日兼职于珠宝培训机构，林木，康纳，北航等；从事珠宝类相关翻译，展会工作；14年尝试合作创业，逸享品鉴。',2,'1','2015-09-12 06:25:58',0,'','',''),(325,390,'李东洋','李东洋','13269361127','sj_profile/87/14432697359679.jpg','768719344941513477.jpg','北京','','',1,'（20个字以内，如“考研小能手”、“如何完成人生规划”等）','（显示在首页，50个字以内，如“考研心理，全年规划，你都能在我这里找到答案”）','（显示在详情页面，包括自我介绍、所获奖项、实习实践经历等）',2,'1','2015-09-12 06:25:58',0,'','',''),(326,391,'李怀栋','李怀栋','18410079795','sj_profile/88/14432697352920.jpg','187721589946490496.jpg','北京','中央财经大学','商学院 企业管理',1,'','','考研经验分享，两次获国家励志奖学金',1,'1','2015-09-12 06:25:58',0,'','',''),(327,392,'李慧','李慧','15810531583','sj_profile/89/14432697352980.jpg','146644650662466972.jpg','北京','已毕业','已毕业',1,'上能科研论文挺住，下能创业社团不误','为了不浪费学生时代这饱满的青春，每一方面我都努力去尝试去体验不同的风景。数学建模连续五十几个小时不眠不休过;为一篇Paper持续努力过一两年;为创办学生社团的新项目和某公司一拨又一拨的HR不断地争取更多的资源;也为了完成创业项目绞尽脑汁不断失败不断尝试，终于获得成功;还为了环游世界的梦想天南海北的走过～ 生命如此短暂，唯有拼命学习拼命生活方不辜负！','曾获北美大学生数学建模二等奖\r\n本科发表SCI论文一篇\r\n2011年保送至中科院计算所\r\n研究生期间发表多篇SCI和EI论文\r\n中科院计算所研究生会副主席\r\n中科院计算所职业发展协会创始人之一，副会长\r\n2012～2013年阿里巴巴驻中科院校园大使\r\n在学期间有过两次创业经历\r\n国家奖学金获得者',2,'1','2015-09-12 06:25:58',0,'','',''),(328,393,'李佳芮','李佳芮','18611056195','sj_profile/90/14432697357778.jpg','李佳芮.jpg','北京','中科院','信号与信息处理',1,'少走点弯路吧~','带你快速适应实验室生活~','中科院博士在读',2,'1','2015-09-12 06:25:58',0,'','',''),(329,394,'李杰','李杰','15201441421','sj_profile/91/14432697354474.jpg','706732607999778674.jpg','北京','北京科技大学','控制科学与工程',1,'（20个字以内，如“考研小能手”、“如何完成人生规划”等）','（显示在首页，50个字以内，如“考研心理，全年规划，你都能在我这里找到答案”）','（显示在详情页面，包括自我介绍、所获奖项、实习实践经历等）',1,'1','2015-09-12 06:25:58',0,'','',''),(330,395,'李进','李进','15801599163','sj_profile/92/14432697358164.jpg','李进2.jpg','北京','清华大学','电子工程系',1,'保研经验分享，科研小达人，电子光电科研规划','保研经验，科研心得体会，本科转专业，工作规划，光电发展方向探讨','西安交大本科从临床医学转入电子系，12年保送到清华电子系直博，研究为光电子学，半导体器件。曾获国家奖学金，清华大学综合奖学金等荣誉',1,'1','2015-09-12 06:25:58',0,'','',''),(331,396,'李乐','李乐','15308357680','sj_profile/93/14432697352411.jpg','41_18_IMG_20150824_113453.jpg','北京','北京师范大学','系统科学学院',1,'','','本科中央民族大学专业信息与计算科学，保研至北京师范大学系统科学学院系统分析与集成专业，曾在团博百众科技有限公司实习。',2,'1','2015-09-12 06:25:58',0,'','',''),(332,397,'李琦','李琦','15650705432','sj_profile/94/14432697351323.jpg','李琦.jpg','','','',1,'完成从体制内向体制外自由生活的心态及知识跨越','态度决定一切，科学规划，愉快执行','2011年进入体制内公务员行列，2013年辞职跳出体制，并考取北京大学硕士，自以为过得比以前更加舒适。',1,'1','2015-09-12 06:25:58',0,'','',''),(333,398,'李若愚','李若愚','18618329183','sj_profile/95/14432697357093.jpg','24_18_image.jpg','北京','北京林业大学','环境科学系',1,'','','',1,'1','2015-09-12 06:25:58',0,'','',''),(334,399,'李小玉','李小玉','13126761628','sj_profile/96/14432697351842.jpg','590994639929997442.jpg','北京','北京师范大学','中国近代史',3,'保研，校外保研小能手！','如何联系导师？如何最大限度地利用身边资源获取备考学院的信息？如果做最充足的准备？你都能在我这里找到答案如何联系导师？','（显示在详情页面，包括自我介绍、所获奖项、实习实践经历等）',2,'1','2015-09-12 06:25:58',0,'','',''),(335,400,'李志军','李志军','18810650970','sj_profile/97/14432697359161.jpg','000001.jpg','北京','北京科技大学','机械工程学院',1,'','','',1,'1','2015-09-12 06:25:58',0,'','',''),(336,401,'李致颖','李致颖','13051576379','sj_profile/98/14432697356557.jpg','6_18_QQ图片20150816125843.jpg','北京','中国科学院','地理科学与资源研究所',1,'','','本科成绩TOP1而保研至中国科学院，专业为自然地理学。擅长英语，雅思7.5，托福113，其中写作满分，曾赴美国交流，参加过各大英语演讲比赛。欢迎师妹师弟咨询保研、学术、英语学习、出国相关的问题。',2,'1','2015-09-12 06:25:58',0,'','',''),(337,402,'林瑾','林瑾','13249875653','sj_profile/99/14432697355321.jpg','53_18_-3c8c09651577e320.jpg','北京','北京邮电大学','信息与通信工程学院',1,'','','13毕业，入TP，从事嵌入式软件开发',1,'1','2015-09-12 06:25:58',0,'','',''),(338,403,'刘斌','刘斌','13051214278','sj_profile/100/14432697358033.jpg','765237560862769806.jpg','北京','清华大学','计算机',1,'','','清华2015考研初复试总分第一',1,'1','2015-09-12 06:25:58',0,'','',''),(339,404,'刘博雅','刘博雅','15010265796','sj_profile/0/14432697351793.jpg','刘博雅.JPG','北京','已毕业','精算',2,'','如果想学习精算的话。。。可以给予一点小小的建议','澳洲精算师协会学生会员，SOA6门，澳精6门，中精再考ing',1,'1','2015-09-12 06:25:58',0,'','',''),(340,405,'刘丹阳','刘丹阳','15959285136','sj_profile/1/14432697356301.jpg','723328885709188005.jpg','北京','厦门大学','金融系',1,'','','',2,'1','2015-09-12 06:25:58',0,'','',''),(341,406,'刘焕','刘焕','13835745205','sj_profile/2/14432697358182.jpg','38_18_IMG_20150508_154134.jpg','北京','华北电力大学','电气与电子工程学院',1,'','','',2,'1','2015-09-12 06:25:58',0,'','',''),(342,407,'刘慧','刘慧','15281025747','sj_profile/3/14432697356500.jpg','23_18_P50425-174025.jpg','北京','西南财经大学','国际商学院',1,'','','本科学校长春理工大学因为不是211没有得到保研资格，后来以第一名的成绩考上财大国际商务的研究生',2,'1','2015-09-12 06:25:58',0,'','',''),(343,408,'刘杰','刘杰','13681041621','sj_profile/4/14432697352093.jpg','000001.jpg','北京','北京科技大学','自动化',1,'','','',1,'1','2015-09-12 06:25:58',0,'','',''),(344,409,'刘琪','刘琪','18503388849','sj_profile/5/14432697359597.jpg','202537929231626807.jpg','北京','中央民族大学','文学与新闻传播学院',1,'','','本科三年学习成绩及综合测评排名年级第一',2,'1','2015-09-12 06:25:58',0,'','',''),(345,410,'刘倩','刘倩','15966875136','sj_profile/6/14432697353517.jpg','894701397056533026.jpg','青岛','青岛农业大学','心理健康中心',2,'没有炫酷背景，造就炫酷人生！','心向恬淡，乐于分享。愿所学、所见、所闻、所思惠及他人。','本科就读于潍坊医学院，硕士就读于英国布里斯托大学，现供职于大学，同时攻读中科院心理所博士学位。一直追寻心理学。',2,'1','2015-09-12 06:25:58',0,'','',''),(346,411,'刘钦华','刘钦华','18810572814','sj_profile/7/14432697358786.jpg','299771646035977741.jpg','杭州','毕业','',3,'（20个字以内，如“考研小能手”、“如何完成人生规划”等）','（显示在首页，50个字以内，如“考研心理，全年规划，你都能在我这里找到答案”）','（显示在详情页面，包括自我介绍、所获奖项、实习实践经历等）',1,'1','2015-09-12 06:25:58',0,'','',''),(347,412,'刘芹','刘芹','18423530967','sj_profile/8/14432697359209.jpg','412872774274173955.jpg','重庆','中国科学院','电工研究所',1,'保研达人   学霸','保研和学习方面的问题，都可以提供咨询帮助','大学期间，各方面综合成绩排名前3%，获得保送至外校就读研究生资格。\r\n所获奖项：校优秀毕业生、优秀毕业设计、三好学生、优秀志愿者、优秀学生干部、三一优秀学子、学习之星、连续三年校一等奖学金及优秀学生。\r\n实践经历：锋行志愿者协会副主席、学生会女生部部长、党支部宣传委员、班级学习委员。',2,'1','2015-09-12 06:25:58',0,'','',''),(348,413,'刘欣萌','刘欣萌','15210833986','sj_profile/9/14432697351559.jpg','48_18_image.jpg','北京','北邮','信通院',1,'','','实验室项目偏向卫星通信方向',2,'1','2015-09-12 06:25:58',0,'','',''),(349,414,'刘一然','刘一然','18610151028','sj_profile/10/14432697363525.jpg','11_18_image.jpg','北京','中国人民大学','劳动人事学院劳动经济学',1,'','','本人本硕均毕业于中国人民大学劳动人事学院，考研成绩当年为本专业第一名，13年毕业后在一家信托公司人资部工作',2,'1','2015-09-12 06:25:58',0,'','',''),(350,415,'刘雨晴','刘雨晴','18813198863','sj_profile/11/14432697366092.jpg','刘雨晴 - 副本.jpg','北京','中国人民大学','可持续发展管理',3,'考研 雅思小能手','考研方法，雅思方法。方法比努力更重要，思维比知识更重要。','雅思(7.5);金融专业英语(A 级) ;BEC Higher(2);CET6(553) 社团优秀骨干;研究生一等奖学金(2 次)\r\nØ 国家励志奖学金(3 次)(Top 3);校级一等(1 次)(Top1)、二等(Top3)、三等奖学金;校级三好学生(2 次);\r\nØ 外研通杯全国新概念英语比赛天津赛区二等奖;全国大学生英语竞(C 类)优秀奖;英语读写及翻译能力强;',2,'1','2015-09-12 06:25:58',0,'','',''),(351,416,'刘玉霞','刘玉霞','18813003133','sj_profile/12/14432697365495.jpg','刘玉霞2.jpg','北京','清华大学','医学院生物医学工程系',1,'保研面试能手','保研过程曲折，经历丰富，可提供许多参考意见。','我是刘玉霞，现在是清华大学医学院生物医学工程系的一名直博生。本科毕业于西安交通大学大学生命学院的生物基地班专业（本硕连读），本科第四年放弃硕士连读机会，推免到清华大学读博士。',2,'1','2015-09-12 06:25:58',0,'','',''),(352,417,'刘正','刘正','13922990521','sj_profile/13/14432697364439.jpg','000001.jpg','东莞','中南大学','控制科学与工程',1,'择业，考证，职业规划','三级心理咨询师，软考设计师，数据库系统工程师','（显示在详情页面，包括自我介绍、所获奖项、实习实践经历等）',1,'1','2015-09-12 06:25:58',0,'','',''),(353,418,'刘志昌','刘志昌','18689391158','sj_profile/14/14432697369103.jpg','刘志昌.jpg','中山市','中南大学','信息院',1,'阅历不少','高考择校、考研、职业规划，我这消息多','懒得写',1,'1','2015-09-12 06:25:58',0,'','',''),(354,419,'卢宇迪','卢宇迪','13681568236','sj_profile/15/14432697364748.jpg','000001.jpg','北京','北京科技大学','材料学院',1,'','','',1,'1','2015-09-12 06:25:58',0,'','',''),(355,420,'罗生辉','罗生辉','18599089610','sj_profile/16/14432697362048.jpg','罗生辉 - 副本.jpg','北京','新疆财经大学（毕业）','新闻学',3,'互联网时代下的生涯规划咨询','互联网时代下的生涯规划咨询与培训；互联网创业探索者','太虚，就不写了。有媒体，广告，HR，销售方面的工作实践。',1,'1','2015-09-12 06:25:58',0,'','',''),(356,421,'马超','马超','13051001095','sj_profile/17/14432697368783.jpg','马超.jpg','北京','清华','法学院',3,'考研+考博，专业+敬业','丰富的考研与考博经历，有短时间内从学渣逆袭为学霸的经历，专业课、政治、英语都有自己独特的学习方法。善于把我考生心理，能根据不同水平学生进行针对性辅导。','2次中考，3次高考，1次考研，1次考博。读过中国低中高三档院校，本科是二本学渣，硕士是21学霸，博士在清华。从本科到博士，混过n个学生组织，有丰富的社工经验。硕士期间发表多篇论文，毕业论文获中国法学会一等奖，江苏省优秀硕士论文。博士期间努力创业。',1,'1','2015-09-12 06:25:58',0,'','',''),(357,422,'马尚','马尚','15107141032','sj_profile/18/14432697366669.jpg','马尚.jpg','武汉','中国科学院武汉岩土力学研究所','岩土工程',1,'“考研小能手”、“岩土行业职业规划”、“考博咨询”','“考研、考博复习资料，复习计划，岩土所导师选择，导师信息，你都能在我这里找到答案”','本科山东科技大学，考研进入中国科学院武汉岩土力学研究所，现在岩土所硕博连读，博一。本科期间，曾获国家奖学金一次。硕博连读期间，担任武汉岩土所研究生会主席，岩土所2015夏令营学生代表。',1,'1','2015-09-12 06:25:58',0,'','',''),(358,423,'马志远','马志远','18810554563','sj_profile/19/14432697364028.png','7_18_image.jpg','北京','北京大学','城市与环境学院',1,'','','北京林业大学梁希理科实验班，北大生态学直博，北京市优秀毕业生，参加多次马拉松，TNF100，大连100等超级越野跑。',1,'1','2015-09-12 06:25:58',0,'','',''),(359,424,'梅晶','梅晶','18571584016','sj_profile/20/14432697376562.jpg','103976260558786747.jpg','武汉','中科院','控制理论与控制工程',1,'考研达人    前去哪儿网产品经理     目前创业，有自己的公司','1、考研方法及技巧：事半功倍去考研\r\n2、产品经理入门：如何成为一个优秀的互联网产品经理\r\n3、过来人的创业忠告：什么时候才适合创业','中国科学院硕士\r\n前去哪儿网产品经理\r\n前正兴和产品总监\r\n楚商私董会成员\r\n目前和三个合伙人一起创业中',2,'1','2015-09-12 06:25:58',0,'','',''),(360,425,'宁清宇','宁清宇','15652969477','sj_profile/21/14432697371143.jpg','719987731119603999.jpg','','北京大学','法学院',3,'（20个字以内，如“考研小能手”、“如何完成人生规划”等）','（显示在首页，50个字以内，如“考研心理，全年规划，你都能在我这里找到答案”）','（显示在详情页面，包括自我介绍、所获奖项、实习实践经历等）',1,'1','2015-09-12 06:25:58',0,'','',''),(361,426,'牛佳斌','牛佳斌','15201463409','sj_profile/22/14432697372193.jpg','8_25_IMG20141123221254.jpg','北京','北京科技大学','机械工程学院',1,'','','成绩优异，工作能力突出',1,'1','2015-09-12 06:25:58',0,'','',''),(362,427,'秦卫东','秦卫东','18611355066','sj_profile/23/14432697377974.jpg','秦卫东.JPG','北京','中国科学院大学','经济与管理学院MBA',3,'文理兼修的健身达人','学业规划，职业发展，投资创业，健身廋身，请跟我来','先在国企，曾任团支部书记，获青年突击手称号。后来在外企和民营，获最佳效益奖。然后北京创业，上中国科学院大学MBA,任联合会主席评为三好学生和优秀学生干部。',1,'1','2015-09-12 06:25:58',0,'','',''),(363,428,'邱骏杰','邱骏杰','18608017481','sj_profile/24/14432697371467.jpg','000001.jpg','北京','北京科技大学','自动化',1,'','','',1,'1','2015-09-12 06:25:58',0,'','',''),(364,429,'瞿金校','瞿金校','18514253054','sj_profile/25/14432697378286.jpg','瞿金校.jpg','北京','北京林业大学','土木工程',1,'突击，鸡汤，撕逼小能手','','2014创青春创新创业大赛首都金奖，全国铜奖',1,'1','2015-09-12 06:25:58',0,'','',''),(365,430,'邵天骢','邵天骢','15120075924','sj_profile/26/14432697378816.jpg','39_18_image.jpg','北京','北京交通大学','电气工程学院',1,'','','2012年毕业于北京交通大学电气工程学院，以专业第一的成绩保送本校直接攻读博士学位。攻读博士研究生期间，曾任北京交通大学第二十四届研究生会主席，是团中央举办的“中国大学生骨干培养学校”第七期学员。目前，已发表专业论文6篇，申请发明专利3项。2015年，代表北京交通大学参加“IEEE 国际未来能源挑战赛”，作为主创人员率队获得“最佳控制设计奖”。',1,'1','2015-09-12 06:25:58',0,'','',''),(366,431,'申校','申校','15652530443','sj_profile/27/14432697379628.jpg','申校.JPG','College Station','Texas A&amp;M University','Water Science &amp; Hydrolic Management',2,'保研及出国留学申请达人','理想的现实主义者，曾在中科院保研、留学申请的混战中拼搏厮杀。如今沿着这条开辟的血路走向了美帝留学女博士的不归途。纵然苦累，内心总有不灭的热血和火种。希望尽自己所能帮助也会困惑的你。  ','爱环保公益、坚定环境事业的大龄留学女博士一枚，有过困惑、有过遗憾，但相信理想、从不后悔。\r\n2012年从大连海事大学毕业，保研到中科院生态中心，中科院三年生活锻炼了韧性和承压能力，在工作、论文、实习之余准备留学申请。2015年由美国德州农工大学全奖录取，继续自己在水资源和水文科学方面的工作和学习。接下来的美帝生活新鲜和压力并存，需要自己时刻保持积极好奇的心态，应对未来的挑战。',2,'1','2015-09-12 06:25:58',0,'','',''),(367,432,'申一宁','申一宁','13269503178','sj_profile/28/14432697374843.jpg','225931505819844705.jpg','北京','北京科技大学','外院',3,'擅长翻译实践','如何应用所学，怎样拓展实践经验，你都能在我这里找到答案。','实习实践经历包括央视外语频道、500强医疗器械公司Stryker等。',2,'1','2015-09-12 06:25:58',0,'','',''),(368,433,'沈春华','沈春华','18810104944','sj_profile/29/14432697374138.jpg','43_18_IMG_20150820_191447.jpg','北京','中央财经大学','外国语学院',1,'','','学弟学妹们加油！',1,'1','2015-09-12 06:25:58',0,'','',''),(369,434,'沈明仁','沈明仁','18810962072','sj_profile/30/14432697377661.jpg','000001.jpg','北京','中科院','物理所',2,'linux 红楼梦 历史 GRE','','（显示在详情页面，包括自我介绍、所获奖项、实习实践经历等）',1,'1','2015-09-12 06:25:58',0,'','',''),(370,435,'石鑫','石鑫','13924619997','sj_profile/31/14432697375637.jpg','石鑫.jpg','深圳','北京大学','软件与微电子学院',1,'（20个字以内，如“考研小能手”、“如何完成人生规划”等）','（显示在首页，50个字以内，如“考研心理，全年规划，你都能在我这里找到答案”）','（显示在详情页面，包括自我介绍、所获奖项、实习实践经历等）',1,'1','2015-09-12 06:25:58',0,'','',''),(371,436,'宋佳慧','宋佳慧','15210831544','sj_profile/32/14432697379440.jpg','000000.jpg','北京','中国科学院','电子与通信工程',1,'','','',2,'1','2015-09-12 06:25:58',0,'','',''),(372,437,'宋军','宋军','13261718056','sj_profile/33/14432697375843.jpg','宋军.JPG','北京','中国科学院大学','计算机科学与技术（信息安全）',1,'极客 热爱产品、技术','无论你热爱互联网产品、技术，亦或是互联网投资。咱们都可以唠唠。','全国大学生智能汽车竞赛 二等奖\r\n全国大学生电子设计竞赛  二等奖\r\n风险投资公司实习    投资助理\r\n无人机创业      创始人',1,'1','2015-09-12 06:25:58',0,'','',''),(373,438,'宋磊','宋磊','13426202546','sj_profile/34/14432697372137.jpg','5_18_mmexport1434211134533.jpg','北京','中科院声学所','国家网络新媒体工程技术研究中心',1,'','','',1,'1','2015-09-12 06:25:58',0,'','',''),(374,439,'宋伟博','宋伟博','13094804058','sj_profile/35/14432697371533.jpg','宋伟博.jpg','北京','北京大学','软件工程',1,'告诉你一些别人少走的路','世界上本没有路，我们行走是为了成就自己。喜欢孤独，喜欢冷笑话，看起来很热情但是相处一段时间感觉稍冷可是其实更了解了才知道还是热情。我是千层酥。','本科东北大学，学材料，物理，之后钢铁价格大跌，之前的铁饭碗都成了泥饭碗。遂怒刷Offer，凭借大学期间混的一些经历，最终委身某IT公司（TOP500）。一年后又发现新玩法，去北大学软件。现在路上。自从被迫学习了一些自己不喜欢的东西之后，变得极其傲娇，讨厌填鸭。自己学了很多不靠谱的东西，被别人视作入歧途。但是我们不是要和别人走一样的路，除非我有了和他一样的目的不是吗。',1,'1','2015-09-12 06:25:58',0,'','',''),(375,440,'苏舒','苏舒','13770978502','sj_profile/36/14432697375440.jpg','苏舒 - 副本.jpg','南京','','',3,'（20个字以内，如“考研小能手”、“如何完成人生规划”等）','没有太多的亮点和特色，希望和各位在校学生及已步入职场的，共同进步。','2014年硕士毕业于北大考古文博学院，目前在南京某事业单位供职。',2,'1','2015-09-12 06:25:58',0,'','',''),(376,441,'孙开','孙开','15201317748','sj_profile/37/14432697374654.jpg','000001.jpg','北京','北京大学','信息科学技术学院',1,'','','',1,'1','2015-09-12 06:25:58',0,'','',''),(377,442,'孙肖月','孙肖月','18612016264','sj_profile/38/14432697379320.jpg','孙肖月.JPG','北京','中科院','生物物理研究所（认知神经科学）',2,'“专业选择恐惧症看过来”，“如何完成人生规划”','保研、考研心理，全年规划，你都能在我这里找到答案；夏令营冲关斩将攻略；导师哪些事儿。身边多学霸、研霸。','本科兰州大学，后保送至中科院生物物理所。曾获囯家奖学金、励志奖学金，优秀学生，优秀毕业生。做过＂创新创业＂。参加过复旦，上海生科院、北大cls夏令营，了解深圳先进技术研究院。和君8届学员',2,'1','2015-09-12 06:25:58',0,'','',''),(378,443,'孙小甜','孙小甜','15210602542','sj_profile/39/14432697374650.jpg','孙小甜.jpg','北京','财科所已毕业','会计',3,'考研小能手。小百科','不光是考研，天文地理大象蚂蚁，师姐啥都知道点儿','考研第一。曾在德勤，招商证券投行部实习。现于中直机关工作。',2,'1','2015-09-12 06:25:58',0,'','',''),(379,444,'孙亚梅','孙亚梅','18811378434','sj_profile/40/14432697375213.jpg','000000.jpg','北京','中财','商学院',1,'','','',1,'1','2015-09-12 06:25:58',0,'','',''),(380,445,'孙原','孙原','18813135876','sj_profile/41/14432697372845.jpg','2_18_image.jpg','北京','中科院','生物物理所',1,'','','',2,'1','2015-09-12 06:25:58',0,'','',''),(381,446,'孙湛冬','孙湛冬','18500053132','sj_profile/42/14432697379743.jpg','孙湛冬2.jpg','北京','中国科学院大学','电工研究所',1,'不喜欢健身的男博士不是好摄影师。','工科男中的混搭范儿。从小学习五年美术，手法没了但品味还在。既有幸参与国家863攻坚，又曾担任校学生会副主席。定期上网扫荡好书，一有时间就翻几页。摄影爱好者，但水平很一般。','2007年被中国农业大学录取，择优进入电气工程试验班并三年后提前毕业，保送至中国科学院电工研究所继续深造，2012年所内转博。曾于2008参与北京市学联组织的“大骨班”培训，同年作为北京奥运会赛会志愿者提供志愿服务。自本科学习至今，多次获得三好学生、优秀学生干部等称号。',1,'1','2015-09-12 06:25:58',0,'','',''),(382,447,'汤嘉慧','汤嘉慧','13720081685','sj_profile/43/14432697379709.jpg','000000.jpg','北京','中国科学院大学','管理学院',1,'','','',2,'1','2015-09-12 06:25:58',0,'','',''),(383,448,'田雪姣','田雪姣','18811345560','sj_profile/44/14432697376284.jpg','22_25_137819363484873390.jpg','北京','北京科技大学','化学与生物工程学院',1,'','','北京科技大学硕士',2,'1','2015-09-12 06:25:58',0,'','',''),(384,449,'田媛','田媛','15600624671','sj_profile/45/14432697388847.jpg','田媛.jpg','北京','中国科学院大学','资源与环境学院 地图学与地理信息系统',2,'考研小能手','考研心理，全年规划，你都能在我这里找到答案','（显示在详情页面，包括自我介绍、所获奖项、实习实践经历等）',2,'1','2015-09-12 06:25:58',0,'','',''),(385,450,'汪彬彬','汪彬彬','15755300677','sj_profile/46/14432697384458.jpg','000000.jpg','北京','浙江工商大学','财务与会计学院',1,'','','',2,'1','2015-09-12 06:25:58',0,'','',''),(386,451,'王波','王波','13401169335','sj_profile/47/14432697387332.jpg','19_25_546078df69401b754772615d.jpg','北京','北京科技大学','土木与环境工程学院',1,'','','硕士研究生毕业。有过一些课内外经历',1,'1','2015-09-12 06:25:58',0,'','',''),(387,452,'王东','王东','18910971563','sj_profile/48/14432697387631.jpg','704753289031710195.jpg','北京','中华女子学院','艺术',3,'独立思考  自由表达 ～～始于自由校园文化','人生除了宗教之外的两大归宿，一曰自然，一曰书卷。            【性情中人，多于荐书】\r\n何谓健康？体壮是健，心悦为康【长于康】\r\n收集多部校园文化江湖秘籍    【精于共享】','被戏称为“女院史上第一位男部长”～～大学曾任中华女子学院校学生会外联（公关）部长 \r\n曾全职 国家图书馆～中国典籍博物馆  讲解员  \r\n逃离北上广～重返北上广～再次逃离北上广～再次重返北上广“男一号主演”',1,'1','2015-09-12 06:25:58',0,'','',''),(388,453,'王冠迪','王冠迪','13716723195','sj_profile/49/14432697381128.jpg','000001.jpg','北京','中国人民大学','劳动人事学院',1,'','','曾在国家电网，中粮，人保资产，中信银行人力资源实习工作，毕业拿到超过十个offer，包括各类央企总部，金融机构等。现在民生银行工作。',1,'1','2015-09-12 06:25:58',0,'','',''),(389,454,'王可欣','王可欣','18611897400','sj_profile/50/14432697381361.jpg','659752861078241080.jpg','北京','清华大学','新闻传播学',3,'本硕博跨艺术、理学、文学','学科多元的女博士','博士：清华大学新闻与传播学院 新闻传播学 文化产业与媒介经济\r\n硕士：中科院心理所 医学心理学\r\n本科：浙江传媒学院 英语播音主持专业',2,'1','2015-09-12 06:25:58',0,'','',''),(390,455,'王林','王林','13269831551','sj_profile/51/14432697384193.jpg','王林.JPG','卢森堡','','计算机',1,'科研达人','保研，导师选择，科研经验，论文撰写发表建议等。','中科院博士，马德里高等研究所实习经验，现任卢森堡SnT研究中心科研人员。',1,'1','2015-09-12 06:25:58',0,'','',''),(391,456,'王玮','王玮','15600615812','sj_profile/52/14432697381272.jpg','18_18_mmexport1433056933105.jpg','北京','中科院','理化所',1,'','','关键词“王玮”，“理化所”，“国科大14级雁栖湖校区青协会长”',1,'1','2015-09-12 06:25:58',0,'','',''),(392,457,'王文权','王文权','15563647400','sj_profile/53/14432697382554.jpg','000001.jpg','北京','昆明理工大学','管理与经济学院',1,'','','',1,'1','2015-09-12 06:25:58',0,'','',''),(393,458,'王晓旭','王晓旭','18811349251','sj_profile/54/14432697382167.jpg','000001.jpg','北京','北京科技大学','物理系',1,'','','',1,'1','2015-09-12 06:25:58',0,'','',''),(394,459,'王亚洁','王亚洁','13581862045','sj_profile/55/14432697381739.jpg','王亚洁1.JPG','北京','中国科学院大学','生态环境研究中心',2,'保研种子君，事业单位考试小能手。','保研的准备与全程过程，事业单位考试的心得，你在这里都可以找到。','本科就读于中国农业大学，之后以优异的成绩保送到中科院生态环境研究中心，毕业后参加湖北省事业单位考试，以笔试第一名的成绩被录用。',2,'1','2015-09-12 06:25:58',0,'','',''),(395,460,'王元天','王元天','15900229175','sj_profile/56/14432697389840.jpg','王元天2.jpg','天津','南京大学','世界史',3,'军师','（显示在首页，50个字以内，如“考研心理，全年规划，你都能在我这里找到答案”）','2005-2007北大地空学院\r\n2007-2010北大历史系\r\n2010-2012未来被大人社区团队成员\r\n2010-2012澳门大学历史系\r\n2011新浪高考志愿者\r\n2012-        南京大学历史系\r\n2014-        《博物》编辑',1,'1','2015-09-12 06:25:58',0,'','',''),(396,461,'王增辉','王增辉','15210603018','sj_profile/57/14432697389984.jpg','18_25_image.jpg','北京','北京科技大学','自动化',1,'','','地道的北京孩子，本科北京科技大学，工作保研，学校机关两年工作经验，追风果缘创业团队',1,'1','2015-09-12 06:25:58',0,'','',''),(397,462,'韦鹏宇','韦鹏宇','13261538665','sj_profile/58/14432697381367.jpg','韦鹏宇.JPG','无锡','中国科学院大学','计算机',1,'计算机考研规划','计算机专业考研，职业规划','跨专业跨学校跨地区考研，以及考研的最后阶段的心理',1,'1','2015-09-12 06:25:58',0,'','',''),(398,463,'魏宁','魏宁','18810572683','sj_profile/59/14432697384684.jpg','645816097556283248.jpg','北京','北京大学（已毕业）','软微学院文本翻译',3,'择业小助手、兼职小能手、','考研心理，全年规划，你都能在我这里找到答案','参与多次口译、笔译项目',2,'1','2015-09-12 06:25:58',0,'','',''),(399,464,'魏陶然','魏陶然','13466595119','sj_profile/60/14432697384123.jpg','魏陶然.jpg','北京','北京大学','城市与环境学院',2,'','设计类跨学校保研，全年规划，你都能在我这里找到答案','国家级奖学金获得者，北京市三好学生，北京市高等学校优秀毕业生\r\n',2,'1','2015-09-12 06:25:58',0,'','',''),(400,465,'温李懿贞','温李懿贞','18813114470','sj_profile/61/14432697388029.jpg','温李懿贞1.JPG','爱丁堡','爱丁堡大学','莫雷教育学院',3,'积极乐观的机灵鬼','学习与人生的困境，你可以通过我的视野，变得不再迷茫~','北京大学教育学硕士\r\n爱丁堡大学在读',2,'1','2015-09-12 06:25:58',0,'','',''),(401,466,'巫濛','巫濛','15256045717','巫濛.jpg','巫濛.jpg','北京','北京师范大学','经济与工商管理学院',3,'深知保研之路的艰辛，愿意将保研经验与更多保研人分享。','“三手准备攻克保研大战”\r\n“想踏上保研之路，你所应该抓住的五大关键”','来自普通211大学金融和会计双专业，目前已被保送研究生至北京师范大学经济与工商管理学院经济学系。\r\n本科阶段，在学习方面，连续三年获得省级奖学金以及一次校级文艺奖学金；此外获得多项比赛奖项和“三好学生”“优秀学生干部标兵”等荣誉称号。\r\n在科研方面，曾参加校级科研训练项目两项，分别有关于小微企业融资和金融实验教学改革；此外，自己作为项目负责人成功申请了国家级创新创业项目，并在项目结项评比中拿到优秀项目荣誉。\r\n在社会实践和实习方面，我曾连续两年组织大学生暑期社会实践，分别获得“优秀先进个人”和“优秀社会调研报告”等荣誉；也曾在工商银行芜湖市分行、科大讯飞和万科等单位有过实习经验，学习到了很多。',2,'1','2015-09-12 06:25:58',0,'','',''),(402,467,'吴俊','吴俊','15201529529','sj_profile/63/14432697389322.jpg','吴俊.jpg','北京','中国科学院大学','遥感与数字地球研究所',2,'浪迹天涯、笑傲江湖','科研水货告诉你如何混中国科研圈','武汉大学国家励志奖学金\r\n中国科学院大学三好学生\r\n荷兰屯特大学访问学者\r\n和君商学院学员',1,'1','2015-09-12 06:25:58',0,'','',''),(403,468,'项波','项波','18612563297','sj_profile/64/14432697383563.jpg','项波2.jpg','北京','中科院遥感与数字地球研究所','地图学与地理信息系统',2,'','（显示在首页，50个字以内，如“考研心理，全年规划，你都能在我这里找到答案”）','（显示在详情页面，包括自我介绍、所获奖项、实习实践经历等）',1,'1','2015-09-12 06:25:58',0,'','',''),(404,469,'小羊','小羊','18010282188','sj_profile/65/14432697383873.jpg','21_18_image.jpg','北京','中国农业大学','食品科学与营养工程学院',1,'','','',2,'1','2015-09-12 06:25:58',0,'','',''),(405,470,'谢乾阳','谢乾阳','15201441475','sj_profile/66/14432697381459.jpg','72379359998921976.jpg','北京','北京科技大学','自动化',1,'（20个字以内，如“考研小能手”、“如何完成人生规划”等）','（显示在首页，50个字以内，如“考研心理，全年规划，你都能在我这里找到答案”）','（显示在详情页面，包括自我介绍、所获奖项、实习实践经历等）',1,'1','2015-09-12 06:25:58',0,'','',''),(406,471,'宿丹','宿丹','18810666892','sj_profile/67/14432697384096.jpg','523480929378914462.jpg','北京','北京师范大学','社会学',3,'北师大土著师姐，带你玩转大学！','保研，考研，工作还想玩儿，怎么办？师姐知道！','十佳社长\r\n实习达人\r\n本校保研\r\n生活规划师\r\n',2,'1','2015-09-12 06:25:58',0,'','',''),(407,472,'徐炳田','徐炳田','18210511960','sj_profile/68/14432697388314.jpg','徐炳田 - 副本.jpg','北京','北京师范大学','文学院',3,'保研小能手，顺利保研，考研准备，选导师','保研过程中的种种问题。“潜规则”\r\n如何选专业方向，选导师\r\n怎么决定是保研考研，如何获得加分，考研准备，找工作准备等，过来人都有答案！','北京师范大学    文学学士   专业排名：7/146（前5%） 国家奖学金；  汉语言文学 （已保研，本校文学院） 京师一等奖学金（荣誉）；两年获得专业二等奖学金；2014年度国家奖学金，京师一等奖学金（荣誉），竞赛二等奖学金，北京师范大学“三好学生”“”优秀毕业生\r\n2014.11“2014创青春”全国高校大学生创业计划大赛银奖\r\n2014.5 “2014 创青春”首都高校大学生创业计划大赛铜奖\r\n2014.6第二十二届京师杯课外学术科技作品竞赛三等奖\r\n\r\n',2,'1','2015-09-12 06:25:58',0,'','',''),(408,473,'严朝雯','严朝雯','15201458535','sj_profile/69/14432697385114.jpg','000000.jpg','北京','北京科技大学','计通',1,'考研，考试，导师方面过来人','能帮尽量帮，能说全部说','考研，找导师，找实习',2,'1','2015-09-12 06:25:58',0,'','',''),(409,474,'严健标','严健标','17765707037','sj_profile/70/14432697383417.jpg','26_18_image.jpg','北京','中国科学院','地理科学与资源研究所',1,'','','闯北走南，拿过国奖，办过社团，发过文章，逛过梁山，做过银行，现是某央企总部一办事员～',1,'1','2015-09-12 06:25:58',0,'','',''),(410,475,'阳孟谷','阳孟谷','15210806258','sj_profile/71/14432697382964.jpg','000000.jpg','北京','北京邮电大学','自动化学院',1,'','','',2,'1','2015-09-12 06:25:58',0,'','',''),(411,476,'杨帆','杨帆','15120071565','sj_profile/72/14432697389328.jpg','37_18_image.jpg','北京','北京交通大学','电气工程学院',1,'','','北京交通大学本硕，以优异成绩保送读研，曾获得国家奖学金，北京市优秀毕业生等荣誉称号。热爱文艺，钢琴十级，校广播台主播。现工作于中国建设银行总行。',2,'1','2015-09-12 06:25:58',0,'','',''),(412,477,'杨光','杨光','18510629143','sj_profile/73/14432697385262.jpg','000001.jpg','北京','北京科技大学','计算机与通信工程',1,'','','',1,'1','2015-09-12 06:25:58',0,'','',''),(413,478,'杨光','杨光','18510482820','sj_profile/74/14432697382708.jpg','59074283373559776.jpg','北京','北邮','信通',1,'','','',1,'1','2015-09-12 06:25:58',0,'','',''),(414,479,'杨海华','杨海华','13170882690','sj_profile/75/14432697389038.jpg','27_18_20150719_090133.jpg','北京','中科院','计算机网络中心',1,'','','本科就读一所普通二本院校，但并不因此觉得本科学校不够好，相反我很感恩我的母校，学的是数学专业。大四下学期跨考清华CS,结果失败，其实我当年是有机会去清软的，但是自己放弃了，当时依然坚定自己的想法:不仅要读最好的学校，而且要念最好专业。考研失败后自己创业接近大半年，由于自己名校梦情节，在距离考研还有2个半月的情况下，咬咬牙再一次投入到考研中，这次报考的北大，结果却是总分过线，专业课单科差两分，遗憾未进入复试。最后选择调剂，调剂我只填了帝都的中科院。科院每个计算机专业的研究所我的填了，估计很多人会觉得出身二本怎么还敢去中科院调剂，但事实是面对2:1的复试比，面对竞争对手本科是985，分数也比我高许多的情况下，我以92.2的复试分成功调剂，并拿到学硕。',1,'1','2015-09-12 06:25:58',0,'','',''),(415,480,'杨敏','杨敏','13121911810','sj_profile/76/14432697381547.jpg','4_18_mmexport1431308123401.jpg','北京','中国地质大学(北京)','土地科学技术学院',1,'','','',2,'1','2015-09-12 06:25:58',0,'','',''),(416,481,'杨腾','杨腾','15529625704','sj_profile/77/14432697381555.jpg','杨腾.JPG','北京','北京邮电大学','信息与通信工程',1,'逆袭逆袭党！善于短期的魔鬼计划！','规划，规划，规划！！！\r\n执行力，执行力，执行力！！！\r\n心态，心态，心态！！！','学业碌碌无为！自己玩的开心就好！不误了大事就对了！',1,'1','2015-09-12 06:25:58',0,'','',''),(417,482,'杨英','杨英','15201261495','sj_profile/78/14432697383496.jpg','13369305970850281.jpg','北京','中央财经大学','政府管理学院',1,'','','',2,'1','2015-09-12 06:25:58',0,'','',''),(418,483,'姚雪琴','姚雪琴','13161757525','sj_profile/79/14432697387880.jpg','000000.jpg','北京','中央财经大学','国际贸易',1,'','','',2,'1','2015-09-12 06:25:58',0,'','',''),(419,484,'游涛','游涛','18811718652','sj_profile/80/14432697388187.jpg','000001.jpg','北京','中央财经大学','统计与数学学院',1,'','','',1,'1','2015-09-12 06:25:58',0,'','',''),(420,485,'于建浩','于建浩','13269203631','sj_profile/81/14432697383625.jpg','463845682107817875.jpg','北京','中国科学院国家空间科学中心','空间物理',2,'教你如何混科研圈假装优雅','混迹于中国科学院国家重点实验室，努力探寻对科研工作的兴趣一直未果。但6年的科研基础的培养，使我对科研生活有一定的了解。对科研圈中，非科研能力的能力的培养比较了解。热衷于各种学生活动，社会实践及创业工作。','自我介绍：本人本科就读于山东大学（威海）。大学期间，担任过山东大学（威海）国旗班旗手、协会会长、体委等职位。研究生就读于中国科学院大学。研究生期间，担任过空间中心研会主席、班长等。参与的智能硬件创业项目，目前已获得几百万天使投资。目前在国家重大科技基础项目子午工程办公室兼职秘书。',1,'1','2015-09-12 06:25:58',0,'','',''),(421,486,'于洋','于洋','15504767828','sj_profile/82/14432697388241.jpg','000001.jpg','北京','北京科技大学','测控技术与仪器',1,'考研小能手，减肥达人','（显示在首页，50个字以内，如“考研心理，全年规划，你都能在我这里找到答案”）','（显示在详情页面，包括自我介绍、所获奖项、实习实践经历等）',1,'1','2015-09-12 06:25:58',0,'','',''),(422,487,'余胡','余胡','13522989572','sj_profile/83/14432697382380.jpg','余胡.JPG','北京','和君商学院','社群金融',2,'跨界小能手，行业分析师，生涯规划师。','了解行业，洞察趋势，把握热点，职业定位，便于你从象牙塔出来后最短时间内找到自己的职场定位。','1.第八届全国高校社团优秀青年领袖。\r\n2.首届两岸四地青年优秀领袖。\r\n3.前微微拼车总裁助理兼首席分析师。（出行行业）\r\n4.现请他教战略分析师。（教育O2O行业）',1,'1','2015-09-12 06:25:58',0,'','',''),(423,488,'袁荣昌','袁荣昌','13661326141','sj_profile/84/14432697383897.jpg','袁荣昌.jpg','北京','北京大学','社会组织治理',2,'集模王创帝升仙之大成，激发潜能超乎你想象','数学建模、论文专利、创新创造创业创富，丰富的科研商业政治经验，深厚的高校企业政府资源，助你一箭飞升','涉猎广泛，广而不专，泛无所精，小果累累。五年内发表论文三十余篇，申请发明专利十余项，十年内负责或核心参与物联网、云计算、大数据、机器人、智能电网、商业智能、农业智能等各领域国际合作、国家、企业、高校各层次科研与咨询项目二十余项，累计发起和联合创办数学建模、教育咨询、虚拟现实、文化创意、智能科技、健康饮食、慈善公益、科技创新、农林生态、联谊交流等各类公司、社会组织、团队十余个，曾获数学建模、科技创新、商业创业各种国内外荣誉奖励十余项。',1,'1','2015-09-12 06:25:58',0,'','',''),(424,489,'袁中一','袁中一','18600218881','sj_profile/85/14432697389795.jpg','袁中一2.jpg','北京','中科院','金融工商管理',2,'以梦为马，永远随处可依。','一切的一切的前提，是我是一个乐观开朗、乐于助人的师姐。\r\n学海无涯、天外有天，我所能做的就是把我知道的都告诉你。\r\nWe might be friends,partners...Who knows?','本科国内财经院校金融科班出身，但该时期主要学习的是国际金融以及在国外行得通的但未必在国内行不行得通的东西；\r\n硕士则晋升到了中科院金融MBA，更深刻得认识了一些东西，结交了一群挚友；\r\n由于从小受美剧影响很深，倒是有一口流利的美式英语，而且喜欢说美式俚语，也在新东方误人子弟过，ps：不是烹饪；\r\n有几年的工作经验，混迹于传统金融业和创新金融领域，时刻感受到传统金融和创新金融的互相碰撞、相爱相杀，也算是了解一些金融圈的运转法则，更每天会发散思维得想很多ideas；\r\n本人还算小有点口才，所以主持、演讲倒也没在怕；\r\n都说热爱运动的女孩子运气不会太差，anyway，管他运气差不差我的确是蛮喜欢运动的，觉得挺帅气，羽毛球、游泳、高尔夫，都会点，也都玩得不怎么样。\r\n承蒙各位不弃，我倒是可以在这些方面和大家一起交流交流，互相学习！\r\n',2,'1','2015-09-12 06:25:58',0,'','',''),(425,490,'翟颖','翟颖','18811348750','sj_profile/86/14432697383548.jpg','902411922040994095.jpg','北京','北京科技大学','自动化学院',1,'','','',2,'1','2015-09-12 06:25:58',0,'','',''),(426,491,'张崇','张崇','15201441941','sj_profile/87/14432697384636.jpg','10_25_image.jpg','北京','北京科技大学','冶金工程研究院',1,'','','',2,'1','2015-09-12 06:25:58',0,'','',''),(427,492,'张健','张健','13371760003','sj_profile/88/14432697389636.jpg','000001.jpg','北京','中科院','力学所',1,'','','中山大学保送力学所研究生，中途有准备考研经历，',1,'1','2015-09-12 06:25:58',0,'','',''),(428,493,'张力','张力','14714604520','sj_profile/89/14432697383533.jpg','张力3.jpg','香港','香港大学','土木工程',1,'人生处处需学习','学习申请，高效工作，情绪管理，人生思考，健身塑形，个人提升，人际沟通','深圳出生，高中获得全国物理竞赛广东省赛区一等奖，保送进入上海交通大学工程力学系，自大二之后每年都获得奖学金。本科毕业后，于香港大学攻读博士学位。博士在读期间，利用闲暇时间与朋友合作创业经营生意，从事健康环保产品的市场营销。期间，积累了团队管理，人际沟通，情绪管理，时间管理，演讲技巧，健康养生，健身塑形等能力与经验。',1,'1','2015-09-12 06:25:58',0,'','',''),(429,494,'张丽','张丽','13488691281','sj_profile/90/14432697385004.jpg','000000.jpg','北京','北京大学','创业与创新投资管理',3,'如何完成你的人生职业规划','管理咨询 商业模式 风险投资  古琴 另类摇滚 DOTA菜鸟','参与73家中型企业实地调研访谈\r\n运营200+企业家社群组织\r\n研究传统商业与互联网商业模式演变\r\n主导商业生态系统网状价值链研究\r\n参与上市公司5年战略规划\r\n参与民营企业互联网转型二次创业战略布局与执行\r\n尝试个人创业\r\n转型投身风险投资行业 关注TMT 健康医疗 消费品 社交娱乐\r\n',2,'1','2015-09-12 06:25:58',0,'','',''),(430,495,'张丽娜','张丽娜','15600608405','sj_profile/91/14432697394320.jpg','张丽娜.JPG','北京','北京大学','城市与环境学院',2,'考研小能手、ps达人、城市规划人','考研心理，ps照片处理与设计，城市规划小知识来找我','四个月时间准备考研，ps照片处理与设计4年，吐司网烘焙师，城市规划专业学习7年，参与多个规划项目，设计院实习多次～',2,'1','2015-09-12 06:25:58',0,'','',''),(431,496,'张天尧','张天尧','13717799033','sj_profile/92/14432697396656.jpg','000001.jpg','北京','北京科技大学','自动化学院',1,'','','',1,'1','2015-09-12 06:25:58',0,'','',''),(432,497,'张夏','张夏','18810510114','sj_profile/93/14432697393033.jpg','张夏.jpg','北京市','北京大学','考古文博学院',2,'知识全面，熟悉本院保研、考研流程','保研、考研，人生规划，或许我能帮你找到答案','北京大学考古文博学院2011级本科生、2015级硕士生\r\n2011-2015 连续四年获得唐仲英德育奖学金\r\n2013.07 参加北京大学文物爱好者协会甘肃文化遗产调查暑期实践\r\n2013.07-08 参加西南少数民族村寨调查\r\n2014.07 在太原省艺术博物馆进行文物修复专业实习',1,'1','2015-09-12 06:25:58',0,'','',''),(433,498,'张元青','张元青','18612351268','sj_profile/94/14432697393642.jpg','769507640540142483.jpg','北京','北京科技大学','日语语言文学',3,'在无休止的迷惘和彷徨里始终奋力前行','擅长讲解日语语法，阅读理解有自己的一套方法，口语优秀。','日本留学一年，做过陪同翻译，考过笔译，还在朝更高目标努力。',2,'1','2015-09-12 06:25:58',0,'','',''),(434,499,'张云惠','张云惠','18811324643','sj_profile/95/14432697399220.jpg','张云惠2.jpg','北京','','',1,'（20个字以内，如“考研小能手”、“如何完成人生规划”等）','（显示在首页，50个字以内，如“考研心理，全年规划，你都能在我这里找到答案”）','（显示在详情页面，包括自我介绍、所获奖项、实习实践经历等）',2,'1','2015-09-12 06:25:58',0,'','',''),(435,500,'张则瑾','张则瑾','13810936264','sj_profile/96/14432697395906.jpg','768324495049097736.jpg','北京','北京大学','城市与环境',2,'（20个字以内，如“考研小能手”、“如何完成人生规划”等）如何完成人生规划','（显示在首页，50个字以内，如“考研心理，全年规划，你都能在我这里找到答案”）','（显示在详情页面，包括自我介绍、所获奖项、实习实践经历等）',2,'1','2015-09-12 06:25:58',0,'','',''),(436,501,'赵春月','赵春月','15901078929','sj_profile/97/14432697394102.jpg','000000.jpg','北京','北京大学','生命科学学院',2,'（20个字以内，如“考研小能手”、“如何完成人生规划”等）','（显示在首页，50个字以内，如“考研心理，全年规划，你都能在我这里找到答案”）','（显示在详情页面，包括自我介绍、所获奖项、实习实践经历等）',2,'1','2015-09-12 06:25:58',0,'','',''),(437,502,'赵建东','赵建东','18612709650','sj_profile/98/14432697393317.jpg','25_25_image.jpg','北京','北京科技大学','自动化',1,'','','',1,'1','2015-09-12 06:25:58',0,'','',''),(438,503,'赵可','赵可','13366101690','sj_profile/99/14432697394221.jpg','166049152612542076.jpg','北京','北大，已毕业','城市与环境学院，生态学',2,'考研➕考公务员健将','（显示在首页，50个字以内，如“考研心理，全年规划，你都能在我这里找到答案”）','本科中国农大，考研到北大，毕业后考入科技部工作',2,'1','2015-09-12 06:25:58',0,'','',''),(439,504,'赵丽媛','赵丽媛','18311086105','sj_profile/100/14432697398217.jpg','28_18_image.jpg','北京','中科院','遗传与发育生物学研究所',1,'','','吉林大学毕业，保送到中科院直接攻读博士学位，中科院大学生奖学金获得者',2,'1','2015-09-12 06:25:58',0,'','',''),(440,505,'赵雅洁','赵雅洁','15120075925','sj_profile/0/14432697395734.jpg','000000.jpg','北京','中国科学院大学','电影研究所',1,'','','',2,'1','2015-09-12 06:25:58',0,'','',''),(441,506,'郑轩','郑轩','13051606067','sj_profile/1/14432697396185.jpg','16_18_image.jpg','北京','中国科学院大学','电子学院',1,'','','',1,'1','2015-09-12 06:25:58',0,'','',''),(442,507,'李政江','李政江','17169076520','sj_profile/2/14432697397546.jpg','68252922203849567.jpg','布法罗','','工程学院',1,'（20个字以内，如“考研小能手”、“如何完成人生规划”等）','（显示在首页，50个字以内，如“考研心理，全年规划，你都能在我这里找到答案”）','保研 留学 就业',1,'1','2015-09-12 06:25:58',0,'','',''),(443,508,'周程','周程','18721061540','sj_profile/3/14432697399996.jpg','周程1.JPG','上海','已毕业','已毕业',1,'留学申请经验、环保工程师在职','环境工程、土木工程留学申请规划及定位；污水及污泥处理技术方案及工艺','2013年7月毕业，在国内某知名留学机构工作一年，主攻美国环境工程土木工程硕士；现在上海某环境工程公司从事工艺设计工作',1,'1','2015-09-12 06:25:58',0,'','',''),(444,509,'周庆飞','周庆飞','13167130125','sj_profile/4/14432697397894.jpg','17_18_2d372cee8a7dd5808af5009688c90478.jpg','北京','中国科学院大学','电子电气与通信工程学院',1,'','','考研英语一80分',1,'1','2015-09-12 06:25:58',0,'','',''),(445,510,'周勋','周勋','15210603020','sj_profile/5/14432697396584.jpg','000001.jpg','北京','北京科技大学','自动化',1,'','','',1,'1','2015-09-12 06:25:58',0,'','',''),(446,511,'周子涵','周子涵','18612538269','sj_profile/6/14432697391544.jpg','周子涵2.jpg','北京','清华','法学院',3,'不走寻常路','','本科期间担任校国旗班班长、院学生会主席，研究生期间担任校研会外联部副部长，多次参与大型会议志愿工作及重点课题研究，获得院设综合一等奖学金等',2,'1','2015-09-12 06:25:58',0,'','',''),(447,512,'朱利帅','朱利帅','13401184969','sj_profile/7/14432697398450.jpg','156927905785140802.jpg','北京','无','无',1,'','','',1,'1','2015-09-12 06:25:58',0,'','',''),(449,143,'马劲','马劲','','sj_profile/42/14432697399081.png','','','','',1,'签名签名','我是一个好人','哈哈哈哈哈哈哈哈\r\nhahahahhahahahah\r\n哈哈哈',0,'1','2015-09-22 03:56:59',0,'','',''),(450,150,'大马哥哥','马劲啦啦','18612291973','sj_profile/49/14450665416961.jpeg','','','','',1,'','','',0,'1','2015-09-22 06:03:29',1000,'','','');
/*!40000 ALTER TABLE `p_base_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `p_course`
--

DROP TABLE IF EXISTS `p_course`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `p_course` (
  `id` int(12) NOT NULL AUTO_INCREMENT COMMENT '课程id',
  `account_id` int(12) NOT NULL,
  `course_name` varchar(40) NOT NULL,
  `course_intro` varchar(280) NOT NULL,
  `fee` int(11) NOT NULL COMMENT '金额，单位：分',
  `online_fee` int(11) NOT NULL COMMENT '在线费用，单位分',
  `course_duration` int(11) NOT NULL COMMENT '课程时间，单位分钟',
  `course_duration_online` int(11) NOT NULL DEFAULT '0' COMMENT '线上时间',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '课程状态1正常2下架',
  PRIMARY KEY (`id`),
  KEY `account_id` (`account_id`),
  KEY `status` (`status`)
) ENGINE=InnoDB AUTO_INCREMENT=460 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `p_course`
--

LOCK TABLES `p_course` WRITE;
/*!40000 ALTER TABLE `p_course` DISABLE KEYS */;
INSERT INTO `p_course` VALUES (83,71,'北大保研相关咨询','能够分享自己保研北大时的相关经验，包括实验室和导师选择，介绍各实验室研究情况，进行保研面试技巧指导等等',12000,5000,120,0,1),(84,71,'出国申请流程和经验','介绍自己申请美国读博时候的流程和经验，特别是环境学科，分享自己关于出国读博的思考',12000,5000,120,0,1),(85,71,'环境化学方向实验室技能和经验','分享自己在环境化学方向总结的实验室技能和经验，指导实验方案设计和操作流程，',12000,5000,120,0,1),(86,73,'保研经验分享','帮助师弟师妹保研选择合适的学校和导师，提供面试技巧助其成功；需要进行微生物生态学研究的师弟师妹，为其提供入门知识和方向。',12000,5000,120,0,1),(87,73,'微生物生态研究方法','随着分子生物学技术的发展，其价格越来越低，应用范围越来越广，能解决的问题越来越多，很多领悟尝试用分子的手段从机理上探讨解释所观察到的现象。如果你的导师也想开展这方面的研究，而你的课题组并没有合适的师兄师姐能够帮助你，这里有你想要的答案！',12000,5000,120,0,1),(88,73,'澳洲签证DIY','澳洲签证办理流程事项一站通，省去中介机构的繁琐流程和昂贵费用',12000,5000,120,0,1),(89,74,'考研经验分享','可以和学弟学妹分享考研经历，以及提供少数民族骨干的报考咨询。',12000,5000,120,0,1),(90,75,'保研经验分享','\"能够分享自己在保研过程中经历的笔试、面试过程；能够在保学术型硕士or工程硕士、读不读博等问题上提供一些思考方向；能够通过自己的朋友圈子，帮助师弟师妹打听一些实验室及导师的研究方向等信息；能够与师弟师妹分享研究生的生活体验，讲讲故事、聊聊天~\"',12000,5000,120,0,1),(91,75,'学生活动策划经验分享','院会主席竟然是学霸？我们还有活路么？曾经通宵达旦完成老师布置的任务，曾经通宵达旦策划经验全所的学生活动，曾经通宵达旦静静思考人生旅途。你想静静么？不如我们一起静静吧',12000,5000,120,0,1),(92,76,'保研经验分享','能够分享保研的相关经验，包括实验室和导师选择，介绍各实验室研究情况，进行保研面试技巧指导等等',12000,5000,120,0,1),(93,76,'爵士舞蹈培训','学霸是怎么挤时间练就古典爵士女神的。是学霸，更是古典气质美女，不，实际我的内心很澎湃，因为我最爱爵士舞',12000,5000,120,0,1),(94,77,'保研经验分享','能够分享参加保研夏令营的相关经验，包括实验室和导师选择，介绍所在院系的实验室研究情况；为师弟师妹未来的发展方向提供建议，进行保研夏令营面试技巧指导；可分享论文写作，及如何撰写大学生创业计划书。',12000,5000,120,0,1),(95,77,'挑战杯创业大赛指导','挑战杯创业大赛申请书撰写指导，团队时间平衡和时间管理，项目路演技巧指导',12000,5000,120,0,1),(96,77,'管理方向学术研究','管理类学术写作切入点创新点，文献积累等',12000,5000,120,0,1),(97,78,'保研经验分享','分享保研的各种经验，包括如何加分，如何选择适合自己的学校、研究方向和导师，在本科各个时间段应该做的事情和一些建议。',12000,5000,120,0,1),(98,78,'职业规划','职业规划的一些建议，本科和研究生对各位同学未来职业的塑造性很大，各位学弟学妹不仅仅要学习和读研，更要学习一些校园之外的技能，只要在初入社会的时候有一项特技，一项爱好的技术，那么好工作或者创业都是水到渠成的，能够分享自己在职业规划这一块的思考和想法',12000,5000,120,0,1),(99,78,'游戏策划类经验分享','目前拿到网易游戏的游戏设计师暑期实习offer，可以分享自己对于游戏策划的经验，爱好游戏策划的你一定不要错过。',12000,5000,120,0,1),(100,79,'保研面试技巧','能够分享保研的相关经验，包括实验室和导师选择，介绍各实验室研究情况，进行保研面试技巧指导等等',12000,5000,120,0,1),(101,79,'找工作、公务员考试 ','帮助指导简历修改，笔试准备，面试技巧，分享准备公务员考试相关经验：申论练习方法，行测提高方法等',12000,5000,120,0,1),(102,79,'旅行达人经验分享','旅行脚步遍及大半个中国，国内自驾游行程超1万公里，并有东南亚、西欧、北美10几个国家的穷游经历，能够分享国内外自助、自驾旅行攻略',12000,5000,120,0,1),(103,80,'保研经验分享','\"分享参加保研夏令营的相关经验，针对性地介绍一些实验室与导师情况，必要时候可以引荐相关实验室的在读师兄师姐，帮助师弟师妹思考自己未来的发展方向，分享保研夏令营的面试技巧\"',12000,5000,120,0,1),(104,80,'托业考试高分技巧','以个人备考经历为基础，介绍托业考试技巧，帮助大家短期内获得更好的托业成绩',12000,5000,120,0,1),(105,80,'职业生涯规划','以个人毕业季找工作经历为基础，介绍毕业季找工作时的技巧，获得更多工作offer，帮助做好未来的职业道路规划',12000,5000,120,0,1),(106,81,'保研经验分享','能够分享保研的相关经验，包括实验室和导师选择，介绍各实验室研究情况，进行保研面试技巧指导等等',12000,5000,120,0,1),(107,82,'考研经验分享','考研相关经验，实验室和导师选择，介绍各实验室研究情况，帮助师弟师妹对自己未来的发展方向进行规划，进行考研面试技巧指导等等，考研历年真题及亲身考试经验分享',12000,5000,120,0,1),(108,83,'保研经验分享','能够分享保研的相关经验，包括实验室和导师选择，介绍各实验室研究情况，进行保研面试技巧指导等等',12000,5000,120,0,1),(109,83,'PPT制作和论文绘图技巧','分享PPT制作经验和技巧，指导用origin绘制出漂亮的论文插图',12000,5000,120,0,1),(110,84,'考研经验分享','考研相关经验，实验室和导师选择，介绍各实验室研究情况，帮助师弟师妹对自己未来的发展方向进行规划，进行考研面试技巧指导等等',12000,5000,120,0,1),(111,84,'考研心理建设','考研是一个痛并快乐的过程，只有在过程中始终坚定信念，才能一路彩虹。考研心理建设是帮助坚定信心，提高考研执行力的有利武器。',12000,5000,120,0,1),(112,85,'保研经验分享','能够分享保研的相关经验，包括实验室和导师选择，介绍各实验室研究情况，进行保研面试技巧指导等等',12000,5000,120,0,1),(113,86,'数学建模、英语竞赛辅导','数学建模美赛辅导：如何备战美赛，如何撰写建模论文，如何排版；英语竞赛辅导：如何备战大学生英语竞赛，尤其是短期突击；',12000,5000,120,0,1),(114,86,'创新创业项目规划','创新创业项目规划：创新实验项目的开展和结项报告撰写，创业训练商业计划书的写作和排版',12000,5000,120,0,1),(115,86,'双学位学习规划','双学位学习规划：如何安排主修学位和双学位的时间。',12000,5000,120,0,1),(116,87,'保研面试技巧指导','能够分享保研的相关经验，包括实验室和导师选择，介绍各实验室研究情况，进行保研面试技巧指导等等',12000,5000,120,0,1),(117,87,'演讲培训','对于如何清楚在人前表达自己的观点，逻辑清晰的阐述问题进行培训，最终可以很好的完成演讲，汇报等工作',12000,5000,120,0,1),(118,88,'保研经验分享','能够分享能源领域相关的研究、相关实验室和导师情况介绍，分享清华大学保研面试内容和相关技巧，帮助师弟师妹对自己未来的发展方向进行规划',12000,5000,120,0,1),(119,88,'摄影经验分享','交流人像摄影，聊聊光圈聊聊快门，扯扯构图扯扯用光，你是佳能我用尼康，实在不行我们互借单反吧',12000,5000,120,0,1),(120,89,'保研经验分享','能够分享保研的相关经验，包括实验室和导师选择，介绍各实验室研究情况，进行保研面试技巧指导等等',12000,5000,120,0,1),(121,89,'实习经验分享','分享在众多知名外企国企中的实习经验，帮助做好未来职业规划',12000,5000,120,0,1),(122,90,'保研经验分享','能够分享保研的相关经验，包括实验室和导师选择，介绍各实验室研究情况，进行保研面试技巧指导等等',12000,5000,120,0,1),(123,90,'就业相关咨询','帮助解决就业方面遇到的困难，协助做好职业规划，重点介绍外企的相关情况和工作行情',12000,5000,120,0,1),(124,91,'保研经验分享','能够分享保研的相关经验，包括实验室和导师选择，介绍各实验室研究情况，进行保研面试技巧指导等等',12000,5000,120,0,1),(125,92,'保研经验分享','能够分享参加保研夏令营的相关经验，进行保研夏令营面试技巧指导；联系导师，与老师套磁的策略；研究方向和导师选择，实验室研究情况；给师弟师妹对未来的发展方向和规划提出建议。',12000,5000,120,0,1),(126,92,'心理学','心理学专业可来咨询，对心理学感兴趣或者需要进行心理咨询的也可以来找我，帮助解决你的一些心理困扰',12000,5000,120,0,1),(127,93,'保研经验分享','指导跨专业跨学校保送相关技巧，保研夏令营相关经验分享，如何联系导师等。',12000,5000,120,0,1),(128,93,'简历制作，联系导师，美工技术指导','教你如何制作简历联系导师，品牌和产品logo设计，宣传推广方案设计，品牌形象建设，只有你想不到的，没有我做不到的',12000,5000,120,0,1),(129,94,'保研经验分享','能够分享参加保研夏令营的相关经验，包括实验室和导师选择，介绍各实验室研究情况，帮助师弟师妹对自己未来的发展方向进行规划，进行保研夏令营面试技巧指导等等',12000,5000,120,0,1),(130,94,'人生规划咨询','为自己以后的人生规划作出解答，帮助明确自身优势和潜力，找到适合自身发展的人生道路',12000,5000,120,0,1),(131,95,'保研经验分享和未来规划','包括实验室和导师选择，介绍各实验室研究情况，帮助师弟师妹对自己未来的发展方向进行规划，等等。无任何基础的邮件套磁和后续联系（包括邮件格式、老师专注的点），跨省市求学经验，导师选择问题（学校重要，还是老师重要；哪种老师会比较好），面试经验，研一以及研一前学习工作安排，学习和社会活动的“和谐性”，如何拿很多奖毕业。',12000,5000,120,0,1),(132,95,'邮件陶瓷经验和面试经验','叫你如何通过邮件套磁经验和面试经验，提升留学申请和工作申请面试通过率',12000,5000,120,0,1),(133,95,'出国留学（日本）经验','介绍日本高校情况和特色，分享出国留学（日本）经验，包括如何申请和选择学校，日本留学相关问题咨询',12000,5000,120,0,1),(134,96,'保研经验分享','能够分享参加保研夏令营的相关经验，包括实验室和导师选择，介绍各实验室研究情况，帮助师弟师妹对自己未来的发展方向进行规划，进行保研夏令营面试技巧指导等等',12000,5000,120,0,1),(135,96,'服装搭配、爵士舞、钢琴，','教你如何进行服装搭配，爵士舞、钢琴培训',12000,5000,120,0,1),(136,96,'基础主持技巧','介绍基础主持技巧，分享自己多年主持经验',12000,5000,120,0,1),(137,97,'保研经验分享','能够分享参加保研夏令营的相关经验，介绍JD教学情况和跨专业保研选择，帮助师弟师妹对自己未来的发展方向进行规划，进行保研夏令营面试技巧指导等等',12000,5000,120,0,1),(138,97,'英语提高','国外交流的经历，口语与写作的提升',12000,5000,120,0,1),(139,98,'保研和申请留学经验分享','能够分享雅思考试和留学申请的相关经验，包括PS、导师推荐信、CV等等，帮助师弟师妹对自己未来的发展方向进行规划，同时参加了北京大学的保研夏令营也获得了研究生录取资格，能够进行保研夏令营面试技巧指导等等',12000,5000,120,0,1),(140,98,'雅思经验 ','分享雅思高分经验，包括如何复习、备考，以及考前突击和考试准备',12000,5000,120,0,1),(141,98,'实习实践介绍与分享','分享自己在实习和实践方面的相关经验，包括如何规划自己的课余时间，以及如何去寻找适合自己的实践活动，提高自己的业余时间利用率和价值',12000,5000,120,0,1),(142,99,'考研经验分享','物理所老师评价，科研方向指导，中科院各所情况简介，考研选择和复习准备',12000,5000,120,0,1),(143,99,'职业生涯规划','社会需要什么样的人，什么样的工作和生活方式适合你，如何做选择取舍等等，怎么选择自己的未来职业，如何对行业做出选择',12000,5000,120,0,1),(144,100,'保研经验分享','分享保研准备所需材料、保研计划、笔试面试技巧；保研期间做心理咨询和疏导，疏散保研压力；保研成功后需注意事项，如何有效度过保研后的大学时光；总结自己的经验教训，分享应如何优化研究生学习生活。',12000,5000,120,0,1),(145,101,'保研经验分享','能够分享准备新闻传播学院保研的经验，以及申请、学习、适应不同风格的学校等方面的相关经验。',12000,5000,120,0,1),(146,101,'雅思备考','雅思备考经验及技巧',12000,5000,120,0,1),(147,102,'保研经验分享','\"能够分享自己在保研过程中经历的笔试、面试过程；能够在保学术型硕士or工程硕士、读不读博等问题上提供一些思考方向；能够通过自己的朋友圈子，帮助师弟师妹打听一些实验室及导师的研究方向等信息；能够与师弟师妹分享研究生的生活体验，讲讲故事、聊聊天~\n\"',12000,5000,120,0,1),(148,102,'学生活动策划经验分享','院会主席竟然是学霸？我们还有活路么？曾经通宵达旦完成老师布置的任务，曾经通宵达旦策划经验全所的学生活动，曾经通宵达旦静静思考人生旅途。你想静静么？不如我们一起静静吧',12000,5000,120,0,1),(149,120,'保研经验分享','能够分享准备新闻传播学院保研的经验，以及申请、学习、适应不同风格的学校等方面的相关经验。',12000,10000,120,0,1),(150,120,'雅思备考','雅思备考经验及技巧',12000,10000,120,0,1),(151,121,'保研经验分享','能够分享准备新闻传播学院保研的经验，以及申请、学习、适应不同风格的学校等方面的相关经验。',12000,10000,120,0,1),(152,121,'雅思备考','雅思备考经验及技巧',12000,10000,120,0,1),(153,122,'保研经验分享','能够分享准备新闻传播学院保研的经验，以及申请、学习、适应不同风格的学校等方面的相关经验。',12000,10000,120,0,1),(154,122,'雅思备考','雅思备考经验及技巧',12000,10000,120,0,1),(155,125,'保研经验分享','能够分享准备新闻传播学院保研的经验，以及申请、学习、适应不同风格的学校等方面的相关经验。',12000,10000,120,0,1),(156,125,'雅思备考','雅思备考经验及技巧',12000,10000,120,0,1),(157,126,'保研经验分享','能够分享准备新闻传播学院保研的经验，以及申请、学习、适应不同风格的学校等方面的相关经验。',12000,10000,120,0,1),(158,126,'雅思备考','雅思备考经验及技巧',12000,10000,120,0,1),(159,147,'考研经验分享','可帮助师弟师妹规划整个考研过程 每个时间点应该干什么 同时可对考研心态出现问题时进行适当开导 初试过后 可对复试怎样联系导师进行指导',12000,5000,60,0,1),(160,147,'考研心态调节','考研对心态的要求也特别严格 这对初试、复试等环节起着关键作用 作为一个过来人 我认为本课程可对考生心态进行随时调节 帮助其成功',12000,5000,60,0,1),(162,71,'华中科大保研指南啦啦啦啦','华中科技大学保研指南华中科技大学保研指南华中科技大学保研指南华中科技大学保研指南华中科技大学保研指南华中科技大学保研指南华中科技大学保研指南华中科技大学保研指南华中科技大学保研指南华中科技大学保研指南华中科技大学保研指南华中科技大学保研指南华中科技大学保研指南华中科技大学保研指南',10000,12000,120,60,1),(163,151,'如何在二十分钟内脱颖而出。一举成公。','关于企业的那些事儿',12000,5000,60,0,1),(164,153,'专业课考试范围及备考计划','考研英语备考咨询',12000,5000,60,0,1),(165,154,'文案功底、逻辑能力只是市场营销策划人员最最基础的要求。\r\n市场营销严格说来，应该','营销策划人员怎样撰写PPT？',12000,5000,60,0,1),(166,154,'撰写PPT是所有从事市场营销策划人员所必备的技能。不管你是在专业的咨询公司，还是','市场营销人员如何“混”在甲方？',12000,5000,60,0,1),(167,154,'如果你会撰写PPT方案了，并且写得不错了，那么，在市场营销策划公司、专业的咨询公','2003-09-01',12000,5000,60,0,1),(168,155,'基于正念的心理咨询技能培训，建立自己与自己，与父母，家人，同学，朋友，伴侣，老师','考试心理辅导，恋爱 失恋辅导，职业生涯规划，情绪管理，可个体咨询，可团体咨询，可讲座（可以提供哪些方面的咨询、辅导和课程讲解，如保研考研经验分享，职业生涯规划等）',12000,5000,60,0,1),(169,155,'心理辅导考试焦虑，情感受挫，前途迷茫，人际关系伤害，师生关系紧张，探究原生家庭成','人格测评与分析（可以提供哪些方面的咨询、辅导和课程讲解，如保研考研经验分享，职业生涯规划等）',12000,5000,60,0,1),(170,155,'了解自己人格特征，分析人格特征形成的因素，分析自己的防御机制，趋利避害，合理使用','1998-08-31',12000,5000,60,0,1),(171,157,'本人申请过中科院系统多个研究所夏令营及推免面试，基本都拿到了offer，就中科院','创业咨询交流',12000,5000,60,0,1),(172,157,'本科期间组过团队，开过公司，虽然失败了，但还算是有一些经验和教训，现正从事第二次','（可以提供哪些方面的咨询、辅导和课程讲解，如保研考研经验分享，职业生涯规划等）',12000,5000,60,0,1),(173,159,'考研复习','（可以提供哪些方面的咨询、辅导和课程讲解，如保研考研经验分享，职业生涯规划等）',12000,5000,60,0,1),(174,161,'1根据个人性格、专业、优势、劣势量身遴选职位。\r\n2提供中央、省、市、县考试消息','公务员笔试辅导',12000,5000,60,0,1),(175,161,'1分模块通讲\r\n2模块精讲\r\n3根据个人特点设计笔试模块答题顺序\r\n4笔试技巧类','公务员面试精英班',12000,5000,60,0,1),(176,161,'1面试流程\r\n2面试礼仪指导\r\n3面试题型详解\r\n4面试基本功能提升\r\n5面试综','2006-09-01',12000,5000,60,0,1),(177,163,'曾和朋友们出版《考研战胜攻略》1⃣️书 可做分享','化学类就职',12000,5000,60,0,1),(178,163,'高校 科研院所 外企 海外博后求职经验分享','职业生涯规划',12000,5000,60,0,1),(179,163,'适合你的才是最好的！你知道你想要什么吗？','2003-09-23',12000,5000,60,0,1),(180,164,'地理信息系统开发','北大博士地空学院第一名',12000,5000,60,0,1),(181,164,'考博经验','（可以提供哪些方面的咨询、辅导和课程讲解，如保研考研经验分享，职业生涯规划等）',12000,5000,60,0,1),(182,168,'化工考研各课程复习全程规划，心理疏导，初试后的准备。','健身减肥咨询',12000,5000,60,0,1),(183,168,'教你怎么和肉肉说再见。','英语学习',12000,5000,60,0,1),(184,168,'四六级考研以及英语考试学习。','2013-09-01',12000,5000,60,0,1),(185,169,'提供大学生活过程中包括学习，交友，恋爱，规划等各方面的心理调节与经验方法','考研辅导',12000,5000,60,0,1),(186,169,'考研英语政治数学的复习经验和技巧，考研心态建设，考研各个环节的经验指导等关于考研','面试与求职',12000,5000,60,0,1),(187,169,'以自我和周围同学的亲身经历为你提供关于如何写简历，如何准备招聘考试，如何回答面试','2007-09-01',12000,5000,60,0,1),(188,172,'帮你选择英国学校，教你如何申请','雅思口语',12000,5000,60,0,1),(189,172,'你还为每次口语5.5而不能申请英国学校烦恼吗？教你轻松过6','考研化学及化学夏令营',12000,5000,60,0,1),(190,172,'解答考研化学中你遇到的问题','2008-09-07',12000,5000,60,0,1),(191,173,'什么时候开始准备？\r\n如何申请保研？\r\n注意事项','学工保研经验分享',12000,5000,60,0,1),(192,175,'1. 介绍计算机top 10学校概况。\r\n2. 如何规划保研之路。\r\n3. 如何','职业生涯规划',12000,5000,60,0,1),(193,175,'1. 你未来打算过怎样的生活？\r\n2. 大学应该怎么过才能朝着目标不断前进？\r\n','（可以提供哪些方面的咨询、辅导和课程讲解，如保研考研经验分享，职业生涯规划等）',12000,5000,60,0,1),(194,177,'天使种子都做','（可以提供哪些方面的咨询、辅导和课程讲解，如保研考研经验分享，职业生涯规划等）',12000,5000,60,0,1),(195,180,'如何迅速提高GPA，怎么找导师，避免绕弯路','研究生该怎么打扮',12000,5000,60,0,1),(196,180,'研究生迅速收拾自己的技巧','（可以提供哪些方面的咨询、辅导和课程讲解，如保研考研经验分享，职业生涯规划等）',12000,5000,60,0,1),(197,188,'在很多学校发表期刊论文是顺利毕业的顺利条件。在课程中我会结合自己的实际经历，从论','实习和应届校园招聘申请辅导（互联网方向）',12000,5000,60,0,1),(198,189,'五道口一带特色','中关村',12000,5000,60,0,1),(199,189,'中关村一带特色','（可以提供哪些方面的咨询、辅导和课程讲解，如保研考研经验分享，职业生涯规划等）',12000,5000,60,0,1),(200,196,'包括数学、英语、政治、经济类专业课的备考方法和经验的分享','公务员考试分享',12000,5000,60,0,1),(201,196,'包括行测和申论的备考方法及经验分享','（可以提供哪些方面的咨询、辅导和课程讲解，如保研考研经验分享，职业生涯规划等）',12000,5000,60,0,1),(202,198,'·学生工作的初衷与动力\r\n·工作经历及方法\r\n·顾虑及困惑的化解\r\n·收获与感悟','法学学习及跨校保研经验分享',12000,5000,60,0,1),(203,198,'·法学学习的感悟与技巧\r\n·保研的时间规划与复习方法\r\n·困惑化解\r\n·如何做健','演讲与辩论经验分享',12000,5000,60,0,1),(204,198,'·经历分享\r\n·技巧总结\r\n·困扰解答\r\n·服务生活与灵魂','2011-09-01',12000,5000,60,0,1),(205,199,'规划从来不是车到山前必有路的自勉，而是立足自身特点、充分发挥家族资源，从学业到职','考试技能训练',12000,5000,60,0,1),(206,199,'所有竞技游戏都有技巧，考试也不例外。升学考试，托福、GRE等出国留学考试，职业医','学业、工作经验分享',12000,5000,60,0,1),(207,199,'每一段经历都应该反思，每一种境遇都值得回味，人生就是一段不断试错的旅程，有人亲历','1999-09-01',12000,5000,60,0,1),(208,208,'1，以HRD钻石分级师身份，针对目前处于婚嫁年龄同仁，提供钻石购买相关专业知识辅','女博士：如何应对多方压力，调整心态',12000,5000,60,0,1),(209,208,'从本科直接到博士，面临多重来自自身和周边环境压力：\r\n1，跨专业难度大，由宝石学','读博期间，我还能做什么',12000,5000,60,0,1),(210,208,'1，最经常被问到的问题，读博士有什么用。我也不知道。\r\n2，读博士，让我认识和了','2008-09-01',12000,5000,60,0,1),(211,211,'介绍本科或研究生期间学术科研的一些基本注意事项和方法','求职分享',12000,5000,60,0,1),(212,211,'可重点分享产品经理方向的求职故事','（可以提供哪些方面的咨询、辅导和课程讲解，如保研考研经验分享，职业生涯规划等）',12000,5000,60,0,1),(213,214,'关于工科方向本校直推硕士；跨校保研，包括直硕与直博的选择；读研时学校方向以及导师','光电子研究探讨及职业生涯规划',12000,5000,60,0,1),(214,214,'从事光电子研究方向的研究探讨，半导体光电子器件方向的经验分享，以及今后的职业生涯','（可以提供哪些方面的咨询、辅导和课程讲解，如保研考研经验分享，职业生涯规划等）',12000,5000,60,0,1),(215,216,'RT，一个跳出体制回头看公考的不同的视角。','如何',12000,5000,60,0,1),(216,216,'知名投行行研系统培训体系，独家整理相关心得及要点','（可以提供哪些方面的咨询、辅导和课程讲解，如保研考研经验分享，职业生涯规划等）',12000,5000,60,0,1),(217,218,'如何联系导师？如何最大限度地利用身边资源获取备考学院的信息？如果做最充足的准备？','（可以提供哪些方面的咨询、辅导和课程讲解，如保研考研经验分享，职业生涯规划等）',12000,5000,60,0,1),(218,229,'从以中国传统文化为代表的东方智慧中，获取更快乐更健康更幸福的力量。','英美留学指导',12000,5000,60,0,1),(219,229,'纯干货，结合个人留学经历，为乐于DIY留学的学弟学妹保驾护航！供职学校开课两年，','（可以提供哪些方面的咨询、辅导和课程讲解，如保研考研经验分享，职业生涯规划等）',12000,5000,60,0,1),(220,231,'如何选取高校夏令营、保研方向选择、如何联系导师、保研内容准备、保研程序、自身保研','专业课程辅导',12000,5000,60,0,1),(221,234,'听力 8.5怎么考','考研',12000,5000,60,0,1),(222,234,'找准目标，全力以赴。','（可以提供哪些方面的咨询、辅导和课程讲解，如保研考研经验分享，职业生涯规划等）',12000,5000,60,0,1),(223,235,'详细介绍材料准备，保研申请，面试技巧，导师确定等方面的信息。','本科数学类竞赛经验分享',12000,5000,60,0,1),(224,240,'帮助考生确定目标院校，规划考研全程复习，解决各种考生心理问题。','考研法学专业课辅导',12000,5000,60,0,1),(225,240,'帮助法学专业考生进行专业课复习，同时可提供必要的政治，英语辅导','考博法学专业辅导',12000,5000,60,0,1),(226,240,'提供考博法学专业辅导，或介绍各专业学力深厚的博士提供辅导。','2007-09-01',12000,5000,60,0,1),(227,241,'多年真题，习题集','政治',12000,5000,60,0,1),(228,241,'考研政治74分','岩土专业名校选择',12000,5000,60,0,1),(229,241,'熟悉岩土专业国内TOP10高校优势劣势','2008-09-06',12000,5000,60,0,1),(230,243,'创业需要什么？\r\n什么时候适合创业？\r\n怎样开始创业能少走弯路，更快成功？','（可以提供哪些方面的咨询、辅导和课程讲解，如保研考研经验分享，职业生涯规划等）',12000,5000,60,0,1),(231,246,'怎么把课程学习和学生活动搭配好，怎么评比三好学生和优秀学生干部等','职业生涯规划',12000,5000,60,0,1),(232,246,'社会职业前景展望，剖析自身补短板，如何把学习与就业相结合，事业长青的三大法宝。','创业与投资',12000,5000,60,0,1),(233,246,'哪种类型的人适合创业，创业者基本素质，创业中会遇到哪些问题，如何提高创业成功率，','1989-09-10',12000,5000,60,0,1),(234,248,'平常懒懒散散，如何在期末1周时间里甚至2天时间突击，高效复习，获得高分，走上人生','（可以提供哪些方面的咨询、辅导和课程讲解，如保研考研经验分享，职业生涯规划等）',12000,5000,60,0,1),(235,250,'分享保研经验心得，提早为保研做好学习、活动、夏令营、科研和心理等规划，从软件硬件','留学申请咨询',12000,5000,60,0,1),(236,250,'咨询分享留学DIY申请过程、流程以及经验，从英语备考、联系导师、文书写作、网申流','大学生活规划',12000,5000,60,0,1),(237,250,'学生生涯学习、活动和理想等各方面的权衡和规划，提供最真实中肯有效的经验建议，帮助','2008-09-01',12000,5000,60,0,1),(238,256,'可以提供vc 实习经验','创业',12000,5000,60,0,1),(239,256,'分享创业那些坑和有趣的事','信息技术学习',12000,5000,60,0,1),(240,256,'分享各种竞赛经历和学习过程','2009-09-01',12000,5000,60,0,1),(241,258,'曾经靠这个获得了许多一手心里话，并成为许多女汉字的男闺蜜。\r\n现在仍单身。','职业生涯规划',12000,5000,60,0,1),(242,258,'专业版，会酌情减少冷笑话含量，干货版。','（可以提供哪些方面的咨询、辅导和课程讲解，如保研考研经验分享，职业生涯规划等）',12000,5000,60,0,1),(243,260,'清华、北大、中科院、复旦保研过程注意事项，学校选择、专业选择、导师选择技巧。保研','研究生时间分配',12000,5000,60,0,1),(244,260,'如何把研究生活过的丰富多彩，如何做到科研、生活、恋爱、健身四不误。与导师，同学，','职业生涯规划',12000,5000,60,0,1),(245,260,'研究生博士生毕业去向，求职前期规划和准备。如何更改专业、换行 。','2010-08-26',12000,5000,60,0,1),(246,260,'清华、北大、中科院、复旦保研过程注意事项，学校选择、专业选择、导师选择技巧。保研','研究生时间分配',12000,5000,60,0,1),(247,260,'如何把研究生活过的丰富多彩，如何做到科研、生活、恋爱、健身四不误。与导师，同学，','职业生涯规划',12000,5000,60,0,1),(248,260,'研究生博士生毕业去向，求职前期规划和准备。如何更改专业、换行 。','2010-08-26',12000,5000,60,0,1),(249,264,'作为即将毕业的博士，已经在自己成长的道路上作出了几次“艰难的抉择”，也看到了选择','保研经验分享',12000,5000,60,0,1),(250,264,'保研的道路，从拿到名额那一刻起才刚刚开始。明对招生办老师的横眉冷对和故弄玄虚，学','学生活动的组织与开展',12000,5000,60,0,1),(251,264,'本人在中国科学院大学学生会期间，曾作为负责人主办过新生入学晚会、校园歌手大赛、跨','2010-09-01',12000,5000,60,0,1),(252,270,'自由文化与哲学心理学关联\r\n如何自由的体验学习大学校园文化\r\n大学校园文化梳理 ','至简健康生活体验',12000,5000,60,0,1),(253,270,'个人所谓的坏习惯的正面体验\r\n（如“不吃早餐的好处”的理论和实践成果体验，以科学','国学与西方脑科学',12000,5000,60,0,1),(254,270,'《易经》的另类学习 \r\n《环境与健康》\r\n《姓名学与人生》\r\n《脑科学与教育》\r','2009-09-01',12000,5000,60,0,1),(255,272,'遇到的各种医疗相关问题，包括但不限于眼睛，眼镜，视力矫正等等。背靠医疗资源，可专','职业生涯规划',12000,5000,60,0,1),(256,273,'帮你了解英语播音主持专业的学科设置、学习体验和就业方向；\r\n艺考指导','统考心理学',12000,5000,60,0,1),(257,273,'将个人跨考心理学的经历分享给你；有些科目的高分经验；有些科目的低分教训','新闻传播学',12000,5000,60,0,1),(258,273,'跨考清华新闻传播学；清华考博英语和专业课备考经验分享','2008-09-01',12000,5000,60,0,1),(259,274,'保研择校，导师选择，方向选择等','科研经验',12000,5000,60,0,1),(260,274,'科研要素，论文指导，职业规划等','（可以提供哪些方面的咨询、辅导和课程讲解，如保研考研经验分享，职业生涯规划等）',12000,5000,60,0,1),(261,278,'1、在大学前三年如何准备保研所需的条件。\r\n2、如何跨专业联系导师。\r\n3、如何','事业单位考试经验分享',12000,5000,60,0,1),(262,278,'1、如何报考\r\n2、如何复习准备笔试\r\n3、如何准备面试','职业生涯规划',12000,5000,60,0,1),(263,278,'主要针对女生，如何在个人问题，工作与生活中寻找平衡。','2008-09-01',12000,5000,60,0,1),(264,281,'根据自身情况帮你合理定位专业和学校','我的考研路程（一波三折，波澜壮阔啊）',12000,5000,60,0,1),(265,281,'整个考研过程中','数据结构',12000,5000,60,0,1),(266,281,'详细讲解数据结构和基本算法','2010-09-12',12000,5000,60,0,1),(267,284,'从研究生保送的材料准备到面试心理解压，我都可以帮你轻松应对~','（可以提供哪些方面的咨询、辅导和课程讲解，如保研考研经验分享，职业生涯规划等）',12000,5000,60,0,1),(268,285,'重点通过我自己在如何从211高校背景一步步做保研准备，进而努力申请985高校推免','保研之路细节详解',12000,5000,60,0,1),(269,285,'在做好硬性准备的前提下，与大家详细讲解在保研中所走的每一步，每一步应该如何抓主心','万变保研新政策下如何才能做到不离其宗',12000,5000,60,0,1),(270,285,'保研政策从我这一届发生了很大的变化，我也是过来人，深知大背景政策的改变会带来很多','2011-09-01',12000,5000,60,0,1),(271,286,'当你准备把科研当作一种事业时，讲述三年的科研管理工作经历心得','（可以提供哪些方面的咨询、辅导和课程讲解，如保研考研经验分享，职业生涯规划等）',12000,5000,60,0,1),(272,289,'北师大社会学院、社会发展与公共政策学院社会工作专业考研经验交流，专业课辅导。','考研公共课报不报辅导班？',12000,5000,60,0,1),(273,289,'北京考研公共课辅导班怎么挑？怎么权衡辅导班和自学？','大三，你在纠结什么？',12000,5000,60,0,1),(274,289,'帮你走出大三迷茫期，选择合适自己的道路？','2011-09-01',12000,5000,60,0,1),(275,290,'包括文学史，文学理论，文学热点，等等，是文学类考研的必考科目，专业课成绩优异，复','语言类科目',12000,5000,60,0,1),(276,290,'现代汉语，古代汉语，语言学的复习方法，课件资料，老师信息等等','民俗类课程',12000,5000,60,0,1),(277,290,'民俗学、民间文学、人类学复习方法，课间资料，老师信息','2011-07-08',12000,5000,60,0,1),(278,291,'北科通信考研专业课','计算机二级',12000,5000,60,0,1),(279,291,'考试经验','可见光通信',12000,5000,60,0,1),(280,291,'研究生科研方向','2010-08-21',12000,5000,60,0,1),(281,300,'就高数一，平时考试67十分怎么135+？\r\n学之有道！','通信原理（北邮）',12000,5000,60,0,1),(282,300,'跨校学新课，怎么130+？\r\n学之有道！','（可以提供哪些方面的咨询、辅导和课程讲解，如保研考研经验分享，职业生涯规划等）',12000,5000,60,0,1),(283,304,'科研不易，心态至上。对于科研，我想说网上所有黑博士的说辞，都！是！真！的！那么如','理科生的转型',12000,5000,60,0,1),(284,305,'可帮助师弟师妹规划整个考研过程 每个时间点应该干什么 同时可对考研心态出现问题时','考研心态调节',12000,5000,60,0,1),(285,305,'考研对心态的要求也特别严格 这对初试、复试等环节起着关键作用 作为一个过来人 我','（可以提供哪些方面的咨询、辅导和课程讲解，如保研考研经验分享，职业生涯规划等）',12000,5000,60,0,1),(286,307,'针对当下趋势性行业，全面剖析，寻找最适合你的朝阳行业。','生涯规划',12000,5000,60,0,1),(287,307,'在毕业的那一刻，未来的你将何去何从？来这儿，帮你找到答案。','跨界咨询',12000,5000,60,0,1),(288,307,'如果碰到自己不喜欢的专业，是否要学一行干一行呢？在这儿，我将以现身说法为你解答。','2009-07-23',12000,5000,60,0,1),(289,308,'一对一个性化咨询，主要针对保研、留学、就业等方面学生的背景、经验、技巧、能力、品','创新创造创业创富',12000,5000,60,0,1),(290,308,'一对一以及一对多结合方式的线上线下咨询类，为支持大学生创新创造创业创富，鼓励“大','数学建模与论文专利',12000,5000,60,0,1),(291,308,'课程培训+线上咨询+线下辅导。针对学员参加数学建模竞赛、问题提出解决、论文写作发','2006-09-01',12000,5000,60,0,1),(292,309,'本人根据自己学习的总结和在金融行业的工作收获，以及每天和形形色色的所谓金融精英打','如何学好英语？',12000,5000,60,0,1),(293,309,'多年的应试教育，国人都把英语作为一门学科来学，其实不然，那是一门语言。多年的英语','报考MBA分享',12000,5000,60,0,1),(294,309,'如果你既想提升学历又不影响工作，那么MBA对于你来讲是很好的选择。作为一个过来人','2006-09-01',12000,5000,60,0,1),(295,313,'“我好迷茫啊！！” \r\n学习，社团，学生会，恋爱，父母的压力，考研，出国？？？？','时间与情绪管理',12000,5000,60,0,1),(296,313,'“做超人压力好大啊！”\r\n恋爱，读书，社团，学生会，实习，申请，考研！！想都做好','如何保持精力充沛',12000,5000,60,0,1),(297,313,'“好累，感觉不能再爱了！”\r\n你无法估量一个健康精力充沛的身躯会对你的效率，心情','2008-09-01',12000,5000,60,0,1),(298,314,'面试经验，行研基础及实际操作案例','风险投资入门指南',12000,5000,60,0,1),(299,314,'基本知识积淀\r\n工作方向\r\n人脉积累','风险投资实操案例',12000,5000,60,0,1),(300,314,'如何选项目 \r\n看团队\r\n融资估值与投资对赌协议','2006-09-10',12000,5000,60,0,1),(301,315,'4个月时间准备考研，复习规划与心理调整咨询','Ps技巧',12000,5000,60,0,1),(302,315,'各种ps技巧咨询，各种！','城市规划专业咨询',12000,5000,60,0,1),(303,315,'城市规划学习7年，即将达到8年，专业咨询，专业选择，行业前景问题','2008-09-01',12000,5000,60,0,1),(304,318,'保送到北京科技大学日语语言文学专业经验分享，导师介绍等','保研考研面试指导',12000,5000,60,0,1),(305,318,'日语语法，日式地道表达，面试常问问题等','（可以提供哪些方面的咨询、辅导和课程讲解，如保研考研经验分享，职业生涯规划等）',12000,5000,60,0,1),(306,142,'公务员面试','如何在二十分钟内脱颖而出。一举成公。',12000,5000,60,0,1),(307,142,'关于企业的那些事儿','国企行政人力技术党群等不同部门的晋升途径的选择问题。',12000,5000,60,0,1),(308,334,'清华光学工程考研专业课咨询','专业课考试范围及备考计划',12000,5000,60,0,1),(309,335,'离开书本的市场营销实战是怎样的？','文案功底、逻辑能力只是市场营销策划人员最最基础的要求。\r\n市场营销严格说来，应该是一门涵盖社会学、商业、心理学等的综合学科。\r\n我个人希望能把自己曾经读的很多书、十多年的工作经验化繁为简地讲给想从事市场营销的朋友们。很多书都把简单的概念复杂化了。\r\n如果只是把一件事情很复杂的讲出来，证明讲的人自己还没弄明白。真正的懂得了，是至简至白的。',12000,5000,60,0,1),(310,335,'营销策划人员怎样撰写PPT？','撰写PPT是所有从事市场营销策划人员所必备的技能。不管你是在专业的咨询公司，还是在甲方，逻辑清晰、且富于故事性的PPT都是非常重要的必杀技。\r\nPPT撰写不难，难的是写好。好的PPT对前后逻辑要求非常高，表达不要重复、啰嗦，要有一条主线，同时用强大的故事性串起来，才有可读性和可看性。',12000,5000,60,0,1),(311,335,'市场营销人员如何“混”在甲方？','如果你会撰写PPT方案了，并且写得不错了，那么，在市场营销策划公司、专业的咨询公司能混得还不错，但是，甲方是更为复杂、综合性的。\r\n在咨询公司，你所涉及的虽然更为专业，但从市场营销来说，仅仅停留在“战略”层面，很难接触到“战术”层面的东西，更不要提执行层面了。\r\n但是刚毕业没多久在企业从事基层或者中层工作的朋友们，其实很难接触到战略层面，那些都是中高层以上思考和制订的事情。更多还是战术上和执行上的事务。',12000,5000,60,0,1),(312,336,'心理咨询实操训练研修课程之正念养育（可以提供哪些方面的咨询、辅导和课程讲解，如保','基于正念的心理咨询技能培训，建立自己与自己，与父母，家人，同学，朋友，伴侣，老师，领导之间的关系，处理好自己与自然，环境，学习，工作之间的关系，提高幸福生活指数',12000,5000,60,0,1),(313,336,'考试心理辅导，恋爱 失恋辅导，职业生涯规划，情绪管理，可个体咨询，可团体咨询，可','心理辅导考试焦虑，情感受挫，前途迷茫，人际关系伤害，师生关系紧张，探究原生家庭成长',12000,5000,60,0,1),(314,336,'人格测评与分析（可以提供哪些方面的咨询、辅导和课程讲解，如保研考研经验分享，职业','了解自己人格特征，分析人格特征形成的因素，分析自己的防御机制，趋利避害，合理使用自己的人格特质，清晰自己的思维，情感，行为的模式。',12000,5000,60,0,1),(315,338,'中科院系统生物方向保研各项事项咨询解答','本人申请过中科院系统多个研究所夏令营及推免面试，基本都拿到了offer，就中科院系统生物方向研究所具体情况都有了解，从材料准备到面试技巧都有一定经验',12000,5000,60,0,1),(316,338,'创业咨询交流','本科期间组过团队，开过公司，虽然失败了，但还算是有一些经验和教训，现正从事第二次创业，期待认识一些志同道合的人，一起交流分享',12000,5000,60,0,1),(317,340,'考研经验','考研复习',12000,5000,60,0,1),(318,341,'公务员职位选择','1根据个人性格、专业、优势、劣势量身遴选职位。\r\n2提供中央、省、市、县考试消息咨询',12000,5000,60,0,1),(319,341,'公务员笔试辅导','1分模块通讲\r\n2模块精讲\r\n3根据个人特点设计笔试模块答题顺序\r\n4笔试技巧类解题详解',12000,5000,60,0,1),(320,341,'公务员面试精英班','1面试流程\r\n2面试礼仪指导\r\n3面试题型详解\r\n4面试基本功能提升\r\n5面试综合能力提升\r\n6一对一个性辅导\r\n7面霸综合辅导\r\n8考试成功后，工作期间人际关系  综合材料  职业生涯后续交流',12000,5000,60,0,1),(321,343,'考研时间安排','曾和朋友们出版《考研战胜攻略》1⃣️书 可做分享',12000,5000,60,0,1),(322,343,'化学类就职','高校 科研院所 外企 海外博后求职经验分享',12000,5000,60,0,1),(323,343,'职业生涯规划','适合你的才是最好的！你知道你想要什么吗？',12000,5000,60,0,1),(324,344,'GIS','地理信息系统开发',12000,5000,60,0,1),(325,344,'北大博士地空学院第一名','考博经验',12000,5000,60,0,1),(326,348,'考研经验分享','化工考研各课程复习全程规划，心理疏导，初试后的准备。',12000,5000,60,0,1),(327,348,'健身减肥咨询','教你怎么和肉肉说再见。',12000,5000,60,0,1),(328,348,'英语学习','四六级考研以及英语考试学习。',12000,5000,60,0,1),(329,349,'大学心理调节','提供大学生活过程中包括学习，交友，恋爱，规划等各方面的心理调节与经验方法',12000,5000,60,0,1),(330,349,'考研辅导','考研英语政治数学的复习经验和技巧，考研心态建设，考研各个环节的经验指导等关于考研的一切',12000,5000,60,0,1),(331,349,'面试与求职','以自我和周围同学的亲身经历为你提供关于如何写简历，如何准备招聘考试，如何回答面试问题，如何选择工作等关于求职和工作各个方面的咨询和指导',12000,5000,60,0,1),(332,352,'英国留学择校与申请','帮你选择英国学校，教你如何申请',12000,5000,60,0,1),(333,352,'雅思口语','你还为每次口语5.5而不能申请英国学校烦恼吗？教你轻松过6',12000,5000,60,0,1),(334,352,'考研化学及化学夏令营','解答考研化学中你遇到的问题',12000,5000,60,0,1),(335,353,'保研申请准备','什么时候开始准备？\r\n如何申请保研？\r\n注意事项',12000,5000,60,0,1),(336,353,'学工保研经验分享','与普通保研的不同\r\n工作期间该如何规划\r\n如何保证工作与读书的完美过渡\r\n国家相关政策',12000,5000,60,0,1),(337,355,'保研经验分享','1. 介绍计算机top 10学校概况。\r\n2. 如何规划保研之路。\r\n3. 如何复习课程知识准备笔试面试。\r\n4. 清华北大中科院北航北邮笔经面经分享。',12000,5000,60,0,1),(338,355,'职业生涯规划','1. 你未来打算过怎样的生活？\r\n2. 大学应该怎么过才能朝着目标不断前进？\r\n3. 迷茫不可怕，可怕的是不去努力看清楚。',12000,5000,60,0,1),(339,357,'创业','天使种子都做',12000,5000,60,0,1),(340,360,'保研经验','如何迅速提高GPA，怎么找导师，避免绕弯路',12000,5000,60,0,1),(341,360,'研究生该怎么打扮','研究生迅速收拾自己的技巧',12000,5000,60,0,1),(342,361,'找工作全过程解决方案','解决毕业生找工作的全部问题，从个人定位开始、至简历编写、面试技巧分析、工资初步估计等进行定制化。',12000,5000,60,0,1),(343,364,'实习','咨询金融实习',12000,5000,60,0,1),(344,369,'中英文学术论文撰写和投稿（心理学，社会学方向）','在很多学校发表期刊论文是顺利毕业的顺利条件。在课程中我会结合自己的实际经历，从论文的撰写，选择目标期刊，投稿事项，修改论文等各个环节提供参考意见。',12000,5000,60,0,1),(345,369,'实习和应届校园招聘申请辅导（互联网方向）','找到满意的工作需要在就读期间未雨绸缪。课程结合我自己实际参加微软、阿里巴巴、网易游戏、百度等互联网公司的笔试面试环节经历，帮助你提前备战，提高通过率',12000,5000,60,0,1),(346,370,'五道口','五道口一带特色',12000,5000,60,0,1),(347,370,'中关村','中关村一带特色',12000,5000,60,0,1),(348,377,'考研经验分享','包括数学、英语、政治、经济类专业课的备考方法和经验的分享',12000,5000,60,0,1),(349,377,'公务员考试分享','包括行测和申论的备考方法及经验分享',12000,5000,60,0,1),(350,379,'大学生学生工作经验分享','·学生工作的初衷与动力\r\n·工作经历及方法\r\n·顾虑及困惑的化解\r\n·收获与感悟',12000,5000,60,0,1),(351,379,'法学学习及跨校保研经验分享','·法学学习的感悟与技巧\r\n·保研的时间规划与复习方法\r\n·困惑化解\r\n·如何做健全的法律人',12000,5000,60,0,1),(352,379,'演讲与辩论经验分享','·经历分享\r\n·技巧总结\r\n·困扰解答\r\n·服务生活与灵魂',12000,5000,60,0,1),(353,380,'学业、职业、人生规划','规划从来不是车到山前必有路的自勉，而是立足自身特点、充分发挥家族资源，从学业到职业到人生的终极设计。高手从不指望命运安排，侥幸成功只是外人的错觉罢了。',12000,5000,60,0,1),(354,380,'考试技能训练','所有竞技游戏都有技巧，考试也不例外。升学考试，托福、GRE等出国留学考试，职业医师、律考、注会等资格考试，在这里一网打尽。',12000,5000,60,0,1),(355,380,'学业、工作经验分享','每一段经历都应该反思，每一种境遇都值得回味，人生就是一段不断试错的旅程，有人亲历，有人旁观。听听不同经历和人生境遇，品品这是你想要的生活吗？',12000,5000,60,0,1),(356,389,'珠宝首饰购买及鉴定基础（钻石，手镯及珍珠等）','1，以HRD钻石分级师身份，针对目前处于婚嫁年龄同仁，提供钻石购买相关专业知识辅导，提供最高性价比建议。\r\n2，以珠宝鉴定师身份，针对目前送母亲大人或女友礼物时，涉及到黄金，K金，PT，珍珠，手镯等多品种，明确购买需求，提供专业建议。\r\n3，以珠宝培训师身份，充分结合现在市场及同仁需求，对上述课程内容进行系统全面整理介绍。',12000,5000,60,0,1),(357,389,'女博士：如何应对多方压力，调整心态','从本科直接到博士，面临多重来自自身和周边环境压力：\r\n1，跨专业难度大，由宝石学到材料学（涉及化学，生物等多学科交叉）。\r\n2，科研压力大（涉及文章数目，档次，毕业）。\r\n3，没有男朋友（尤其是家人催促）。\r\n4，读书资金压力大（本科同学均已自给自足）。\r\n     在重重问题和压力包围下，如何安定内心，调整心态，合理安排时间精力分配，完成个人成长。',12000,5000,60,0,1),(358,389,'读博期间，我还能做什么','1，最经常被问到的问题，读博士有什么用。我也不知道。\r\n2，读博士，让我认识和了解科研体系，经历正规科研思路培养。\r\n3，发现做科研不是自己真实的爱好，立马开发自己的其他潜能，培养自己社会中需要的能力。\r\n4，3-4年时间，尝试进入社会工作，接触活生生的社会；或者学一门外语；或者成为某个小众领域专家；或者培养文艺爱好。',12000,5000,60,0,1),(359,392,'学术科研分享','介绍本科或研究生期间学术科研的一些基本注意事项和方法',12000,5000,60,0,1),(360,392,'求职分享','可重点分享产品经理方向的求职故事',12000,5000,60,0,1),(361,395,'跨校保研，直博直硕','关于工科方向本校直推硕士；跨校保研，包括直硕与直博的选择；读研时学校方向以及导师的选择',12000,5000,60,0,1),(362,395,'光电子研究探讨及职业生涯规划','从事光电子研究方向的研究探讨，半导体光电子器件方向的经验分享，以及今后的职业生涯规划',12000,5000,60,0,1),(363,397,'公务员考试的特点及必要心理准备','RT，一个跳出体制回头看公考的不同的视角。',12000,5000,60,0,1),(364,397,'如何','知名投行行研系统培训体系，独家整理相关心得及要点',12000,5000,60,0,1),(365,399,'保研考研经验分享','如何联系导师？如何最大限度地利用身边资源获取备考学院的信息？如果做最充足的准备？你都能在我这里找到答案如何联系导师？',12000,5000,60,0,1),(366,410,'积极心理学','从以中国传统文化为代表的东方智慧中，获取更快乐更健康更幸福的力量。',12000,5000,60,0,1),(367,410,'英美留学指导','纯干货，结合个人留学经历，为乐于DIY留学的学弟学妹保驾护航！供职学校开课两年，好评如潮。适于自主性强，勇于面对现实的朋友，也适于没有生活目标，需强化规划能力的朋友。',12000,5000,60,0,1),(368,412,'保研经验分享','如何选取高校夏令营、保研方向选择、如何联系导师、保研内容准备、保研程序、自身保研经历。',12000,5000,60,0,1),(369,412,'专业课程辅导','电气工程专业相关课程辅导，讨论学习。',12000,5000,60,0,1),(370,415,'雅思','听力 8.5怎么考',12000,5000,60,0,1),(371,415,'考研','找准目标，全力以赴。',12000,5000,60,0,1),(372,416,'保研经历分享','详细介绍材料准备，保研申请，面试技巧，导师确定等方面的信息。',12000,5000,60,0,1),(373,416,'本科数学类竞赛经验分享','提供数学竞赛的备战经验。',12000,5000,60,0,1),(374,421,'考研规划辅导','帮助考生确定目标院校，规划考研全程复习，解决各种考生心理问题。',12000,5000,60,0,1),(375,421,'考研法学专业课辅导','帮助法学专业考生进行专业课复习，同时可提供必要的政治，英语辅导',12000,5000,60,0,1),(376,421,'考博法学专业辅导','提供考博法学专业辅导，或介绍各专业学力深厚的博士提供辅导。',12000,5000,60,0,1),(377,422,'材料力学','多年真题，习题集',12000,5000,60,0,1),(378,422,'政治','考研政治74分',12000,5000,60,0,1),(379,422,'岩土专业名校选择','熟悉岩土专业国内TOP10高校优势劣势',12000,5000,60,0,1),(380,424,'过来人给刚毕业想创业的你一点忠告','创业需要什么？\r\n什么时候适合创业？\r\n怎样开始创业能少走弯路，更快成功？',12000,5000,60,0,1),(381,427,'学业规划','怎么把课程学习和学生活动搭配好，怎么评比三好学生和优秀学生干部等',12000,5000,60,0,1),(382,427,'职业生涯规划','社会职业前景展望，剖析自身补短板，如何把学习与就业相结合，事业长青的三大法宝。',12000,5000,60,0,1),(383,427,'创业与投资','哪种类型的人适合创业，创业者基本素质，创业中会遇到哪些问题，如何提高创业成功率，投资的真谛，投资的误区，如何投资。',12000,5000,60,0,1),(384,429,'考试突击','平常懒懒散散，如何在期末1周时间里甚至2天时间突击，高效复习，获得高分，走上人生巅峰，赢取白富美。',12000,5000,60,0,1),(385,431,'保研规划咨询','分享保研经验心得，提早为保研做好学习、活动、夏令营、科研和心理等规划，从软件硬件两方便为保研和未来研究生生活做准备。',12000,5000,60,0,1),(386,431,'留学申请咨询','咨询分享留学DIY申请过程、流程以及经验，从英语备考、联系导师、文书写作、网申流程、面试等全方位提供经验建议，帮助你实现飞跃梦想。',12000,5000,60,0,1),(387,431,'大学生活规划','学生生涯学习、活动和理想等各方面的权衡和规划，提供最真实中肯有效的经验建议，帮助实现大学生活的充实和丰富多彩。同时作为你的倾听者，也是我们互相学习交流分享的过程。',12000,5000,60,0,1),(388,437,'vc 领域实习','可以提供vc 实习经验',12000,5000,60,0,1),(389,437,'创业','分享创业那些坑和有趣的事',12000,5000,60,0,1),(390,437,'信息技术学习','分享各种竞赛经历和学习过程',12000,5000,60,0,1),(391,439,'怎样的目标设定可以让你可以让你奋发向上','曾经靠这个获得了许多一手心里话，并成为许多女汉字的男闺蜜。\r\n现在仍单身。',12000,5000,60,0,1),(392,439,'职业生涯规划','专业版，会酌情减少冷笑话含量，干货版。',12000,5000,60,0,1),(393,442,'保研考研经验分享','清华、北大、中科院、复旦保研过程注意事项，学校选择、专业选择、导师选择技巧。保研考研面试准备。',12000,5000,60,0,1),(394,442,'研究生时间分配','如何把研究生活过的丰富多彩，如何做到科研、生活、恋爱、健身四不误。与导师，同学，师兄师姐相处技巧。',12000,5000,60,0,1),(395,442,'职业生涯规划','研究生博士生毕业去向，求职前期规划和准备。如何更改专业、换行 。',12000,5000,60,0,1),(396,442,'保研考研经验分享','清华、北大、中科院、复旦保研过程注意事项，学校选择、专业选择、导师选择技巧。保研考研面试准备。',12000,5000,60,0,1),(397,442,'研究生时间分配','如何把研究生活过的丰富多彩，如何做到科研、生活、恋爱、健身四不误。与导师，同学，师兄师姐相处技巧。',12000,5000,60,0,1),(398,442,'职业生涯规划','研究生博士生毕业去向，求职前期规划和准备。如何更改专业、换行 。',12000,5000,60,0,1),(399,446,'职业生涯规划','作为即将毕业的博士，已经在自己成长的道路上作出了几次“艰难的抉择”，也看到了选择背后的得失。在做好应对未来的各种准备的同时，有时更需要我们学会在适当的时候在自己身上“做减法”。我愿意做为一个略有体会的人，跟大家充分地交流。',12000,5000,60,0,1),(400,446,'保研经验分享','保研的道路，从拿到名额那一刻起才刚刚开始。明对招生办老师的横眉冷对和故弄玄虚，学生们总是处在信息严重不对等的劣势端。作为一个经理过这段苦旅的师兄，我愿意对学弟学妹们知无不言。',12000,5000,60,0,1),(401,446,'学生活动的组织与开展','本人在中国科学院大学学生会期间，曾作为负责人主办过新生入学晚会、校园歌手大赛、跨校单身联谊会、纪念建党90周年展览及知识竞赛等大型活动，直接受众超过5000人。在大型活动中，怎样hold住全场，怎么样做好plan B，也许你也想知道。',12000,5000,60,0,1),(402,452,'大学自由生活索引','自由文化与哲学心理学关联\r\n如何自由的体验学习大学校园文化\r\n大学校园文化梳理  校园文化平台关联',12000,5000,60,0,1),(403,452,'至简健康生活体验','个人所谓的坏习惯的正面体验\r\n（如“不吃早餐的好处”的理论和实践成果体验，以科学和自由的为前提，以科学方式做不吃早餐的健康生活规划）',12000,5000,60,0,1),(404,452,'国学与西方脑科学','《易经》的另类学习 \r\n《环境与健康》\r\n《姓名学与人生》\r\n《脑科学与教育》\r\n《脑电波的前世今生》',12000,5000,60,0,1),(405,142,'医学类基础知识普及或医疗相关问题咨询','遇到的各种医疗相关问题，包括但不限于眼睛，眼镜，视力矫正等等。背靠医疗资源，可专业解答而不忽悠。',12000,5000,60,0,1),(406,142,'职业生涯规划','跨专业的经验分享',12000,5000,60,0,1),(407,454,'艺术类（播音主持）考试培训','帮你了解英语播音主持专业的学科设置、学习体验和就业方向；\r\n艺考指导',12000,5000,60,0,1),(408,454,'统考心理学','将个人跨考心理学的经历分享给你；有些科目的高分经验；有些科目的低分教训',12000,5000,60,0,1),(409,454,'新闻传播学','跨考清华新闻传播学；清华考博英语和专业课备考经验分享',12000,5000,60,0,1),(410,455,'保研经验','保研择校，导师选择，方向选择等',12000,5000,60,0,1),(411,455,'科研经验','科研要素，论文指导，职业规划等',12000,5000,60,0,1),(412,459,'保研经验分享','1、在大学前三年如何准备保研所需的条件。\r\n2、如何跨专业联系导师。\r\n3、如何准备面试',12000,5000,60,0,1),(413,459,'事业单位考试经验分享','1、如何报考\r\n2、如何复习准备笔试\r\n3、如何准备面试',12000,5000,60,0,1),(414,459,'职业生涯规划','主要针对女生，如何在个人问题，工作与生活中寻找平衡。',12000,5000,60,0,1),(415,462,'考研专业选择和学校选择','根据自身情况帮你合理定位专业和学校',12000,5000,60,0,1),(416,462,'我的考研路程（一波三折，波澜壮阔啊）','整个考研过程中',12000,5000,60,0,1),(417,462,'数据结构','详细讲解数据结构和基本算法',12000,5000,60,0,1),(418,465,'保研经验分享','从研究生保送的材料准备到面试心理解压，我都可以帮你轻松应对~',12000,5000,60,0,1),(419,466,'如何做好保研之战的前期准备','重点通过我自己在如何从211高校背景一步步做保研准备，进而努力申请985高校推免生的过程中总结的“五大关键”准备与各位同学分享。',12000,5000,60,0,1),(420,466,'保研之路细节详解','在做好硬性准备的前提下，与大家详细讲解在保研中所走的每一步，每一步应该如何抓主心骨，达到事半功倍的效果。',12000,5000,60,0,1),(421,466,'万变保研新政策下如何才能做到不离其宗','保研政策从我这一届发生了很大的变化，我也是过来人，深知大背景政策的改变会带来很多各方面影响。因此保研人必须掌握保研政策的动态，并学会如何才能在万变中找到不离其宗的办法。',12000,5000,60,0,1),(422,467,'科研圈的那些事','当你准备把科研当作一种事业时，讲述三年的科研管理工作经历心得',12000,5000,60,0,1),(423,471,'社会工作考研指导','北师大社会学院、社会发展与公共政策学院社会工作专业考研经验交流，专业课辅导。',12000,5000,60,0,1),(424,471,'考研公共课报不报辅导班？','北京考研公共课辅导班怎么挑？怎么权衡辅导班和自学？',12000,5000,60,0,1),(425,471,'大三，你在纠结什么？','帮你走出大三迷茫期，选择合适自己的道路？',12000,5000,60,0,1),(426,472,'文学类课程','包括文学史，文学理论，文学热点，等等，是文学类考研的必考科目，专业课成绩优异，复习方法，课件资料，老师信息',12000,5000,60,0,1),(427,472,'语言类科目','现代汉语，古代汉语，语言学的复习方法，课件资料，老师信息等等',12000,5000,60,0,1),(428,472,'民俗类课程','民俗学、民间文学、人类学复习方法，课间资料，老师信息',12000,5000,60,0,1),(429,473,'通信原理','北科通信考研专业课',12000,5000,60,0,1),(430,473,'计算机二级','考试经验',12000,5000,60,0,1),(431,473,'可见光通信','研究生科研方向',12000,5000,60,0,1),(432,481,'高数','就高数一，平时考试67十分怎么135+？\r\n学之有道！',12000,5000,60,0,1),(433,481,'通信原理（北邮）','跨校学新课，怎么130+？\r\n学之有道！',12000,5000,60,0,1),(434,485,'科研心理辅导','科研不易，心态至上。对于科研，我想说网上所有黑博士的说辞，都！是！真！的！那么如何保持一颗良好的心态，优雅的混迹科研圈，就极为关键。从一个对科研怀有美好心愿的科研鲜肉到一位对科研有清醒认识明确定位的科学家的道路非常漫长，大家在路上遇到任何阻碍请与我分享。心态问题，我帮你疏导。实际问题，我告诉你，如何疏导。快来、快来、么么哒。',12000,5000,60,0,1),(435,147,'考研经验分享','可帮助师弟师妹规划整个考研过程 每个时间点应该干什么 同时可对考研心态出现问题时进行适当开导 初试过后 可对复试怎样联系导师进行指导',12000,5000,60,0,1),(436,147,'考研心态调节','考研对心态的要求也特别严格 这对初试、复试等环节起着关键作用 作为一个过来人 我认为本课程可对考生心态进行随时调节 帮助其成功',12000,5000,60,0,1),(437,487,'行业研究','针对当下趋势性行业，全面剖析，寻找最适合你的朝阳行业。',12000,5000,60,0,1),(438,487,'生涯规划','在毕业的那一刻，未来的你将何去何从？来这儿，帮你找到答案。',12000,5000,60,0,1),(439,487,'跨界咨询','如果碰到自己不喜欢的专业，是否要学一行干一行呢？在这儿，我将以现身说法为你解答。',12000,5000,60,0,1),(440,488,'一箭飞升','一对一个性化咨询，主要针对保研、留学、就业等方面学生的背景、经验、技巧、能力、品质提升，专门为你保研、留学、就业过程中所遇到的特定问题、瓶颈、困难提供目的精准的提升建议与可行的咨询方案，含论文、专利、竞赛获奖、项目经历、志愿经历、团队经历、国际顶级大学各类学习训练工作营、知名教授推荐信、国内知名大学实验室的科研、大企业的实习等。丰富的科研商业政治经验为你仙人指路，助你一箭飞升。\r\n咨询可以线上线下两种方式进行，首次咨询按每小时190元收取咨询费。咨询之后，假如你许可，我会长期关注你的前途和去路，以你为荣，在背后默默支持你，随时为你提供线上辅导支持增值服务',12000,5000,60,0,1),(441,488,'创新创造创业创富','一对一以及一对多结合方式的线上线下咨询类，为支持大学生创新创造创业创富，鼓励“大众创业，万众创新”，培养创客、工匠、企业家。\r\n借助一对一线上线下咨询快速精准地针对其在团队组建、项目选定、资金资源、场地选址、关系人脉、产品服务、科技创新、市场推广、运营管理、战略思路等方面的可能会遇到的问题、困难、陷阱、瓶颈进行经验指导，并给出有针对性的建议与切实可行的方案。\r\n借助一对多群聊咨询，为大家提供交流合作组队等提供平台，定期邀请成功创业者嘉宾做线上分享，互促互励，自助互助，渡人渡己，了解信任，抱团取暖。\r\n仅收取一次一对一咨询费18元，一对多线上咨询采用红包打',12000,5000,60,0,1),(442,488,'数学建模与论文专利','课程培训+线上咨询+线下辅导。针对学员参加数学建模竞赛、问题提出解决、论文写作发表、专利设计申请过程中遇到的知识、技巧、能力、经验等方面问题进行培训指导。\r\n课程培训30学时，包括问题选择与提出分析、文献检索、数学建模方法、数据分析处理、图形表达、论文写作、专利设计与申请、竞赛技巧等。\r\n线上咨询奉行导师终生负责原则，一日为师，终生为友，我将在数学建模与论文专利上对你负责一辈子，在这方面碰到任何问题，随时线上提供指导支持。\r\n线下辅导采用数学建模模拟比赛与定期讨论组的形式，按照不同领域专业项目分为不同讨论组，可进行合作组成团队，进行模拟比赛两次，进行汇报',12000,5000,60,0,1),(443,489,'金融行业规划','本人根据自己学习的总结和在金融行业的工作收获，以及每天和形形色色的所谓金融精英打交道的经验，可以帮助致力于从事金融行业的学弟学妹规划规划，不过知识能力有限，但肯定是尽我所能！',12000,5000,60,0,1),(444,489,'如何学好英语？','多年的应试教育，国人都把英语作为一门学科来学，其实不然，那是一门语言。多年的英语学习倒是有一些心得，大家一起探讨。',12000,5000,60,0,1),(445,489,'报考MBA分享','如果你既想提升学历又不影响工作，那么MBA对于你来讲是很好的选择。作为一个过来人，可以分享一些报考准备MBA的经验。',12000,5000,60,0,1),(446,493,'未来规划与能力积累','“我好迷茫啊！！” \r\n学习，社团，学生会，恋爱，父母的压力，考研，出国？？？？ 如何选择？\r\n\r\n面向对象: 肯努力确仍然找不准方向的学生。\r\n\r\n本课程中，导师将会倾听学员的困惑，解答学员疑问，从导师身边最实际的例子中帮助学员了解未来需要面对的挑战，任何一个选择所走下去的路的优势和劣势。',12000,5000,60,0,1),(447,493,'时间与情绪管理','“做超人压力好大啊！”\r\n恋爱，读书，社团，学生会，实习，申请，考研！！想都做好，但时间不够用，压力之下情绪也受影响，更影响工作的效率，恶性循环？\r\n\r\n面向对象: 已有目标并且希望在各方面有全面发展的学员\r\n\r\n本课程中导师会了解学员的困惑，并用自己的亲身经历和蜕变帮助学员提升个人的时间管理和情绪控制的能力。',12000,5000,60,0,1),(448,493,'如何保持精力充沛','“好累，感觉不能再爱了！”\r\n你无法估量一个健康精力充沛的身躯会对你的效率，心情，人际产生多大的影响。\r\n\r\n面向: 希望改善身体健康/终日觉得累/听课看书容易睡着/想增肌/想苗条/想更有异性缘的学员\r\n\r\n本课程中导师会介绍基础的营养知识，简单改善饮食结构就能获得精力充沛的状态。有健身塑形需求的学员，导师也会分享多年的健身塑形的经验和知识。有效提高学习效率，提升个人形象魅力。',12000,5000,60,0,1),(449,494,'管理咨询','面试经验，行研基础及实际操作案例',12000,5000,60,0,1),(450,494,'风险投资入门指南','基本知识积淀\r\n工作方向\r\n人脉积累',12000,5000,60,0,1),(451,494,'风险投资实操案例','如何选项目 \r\n看团队\r\n融资估值与投资对赌协议',12000,5000,60,0,1),(452,495,'短期考研咨询（不含数学）','4个月时间准备考研，复习规划与心理调整咨询',12000,5000,60,0,1),(453,495,'Ps技巧','各种ps技巧咨询，各种！',12000,5000,60,0,1),(454,495,'城市规划专业咨询','城市规划学习7年，即将达到8年，专业咨询，专业选择，行业前景问题',12000,5000,60,0,1),(455,498,'保研经验分享','保送到北京科技大学日语语言文学专业经验分享，导师介绍等',12000,5000,60,0,1),(456,498,'保研考研面试指导','日语语法，日式地道表达，面试常问问题等',12000,5000,60,0,1),(457,71,'华中科大保研指南一发','华中科技大学保研指南华中科技大学保研指南华中科技大学保研指南华中科技大学保研指南华中科技大学保研指南华中科技大学保研指南华中科技大学保研指南华中科技大学保研指南华中科技大学保研指南华中科技大学保研指南华中科技大学保研指南华中科技大学保研指南华中科技大学保研指南华中科技大学保研指南',10000,5000,120,60,1),(458,71,'华中科大保研指南一发','华中科技大学保研指南华中科技大学保研指南华中科技大学保研指南华中科技大学保研指南华中科技大学保研指南华中科技大学保研指南华中科技大学保研指南华中科技大学保研指南华中科技大学保研指南华中科技大学保研指南华中科技大学保研指南华中科技大学保研指南华中科技大学保研指南华中科技大学保研指南',10000,0,120,0,2),(459,505,'测试课程','我就是课程君',100,100,120,50,1);
/*!40000 ALTER TABLE `p_course` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `p_educational`
--

DROP TABLE IF EXISTS `p_educational`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `p_educational` (
  `id` int(12) NOT NULL AUTO_INCREMENT COMMENT '教育id',
  `t_from` date NOT NULL COMMENT '开始时间',
  `t_to` date NOT NULL COMMENT '结束时间',
  `school_name` varchar(30) NOT NULL COMMENT '学校名',
  `major_name` varchar(30) NOT NULL COMMENT '专业名',
  `type` varchar(4) NOT NULL COMMENT '类型：0本科；1硕士；2博士；3博士后',
  `account_id` int(11) NOT NULL COMMENT '账号id',
  PRIMARY KEY (`id`),
  KEY `account_id` (`account_id`),
  KEY `type` (`type`)
) ENGINE=InnoDB AUTO_INCREMENT=507 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `p_educational`
--

LOCK TABLES `p_educational` WRITE;
/*!40000 ALTER TABLE `p_educational` DISABLE KEYS */;
INSERT INTO `p_educational` VALUES (89,'2008-09-05','2012-06-25','美丽的厦门大学','','0',71),(90,'2012-09-01','2015-07-13','北京大学','','1',71),(91,'2008-09-01','2012-06-30','中山大学','生命科学学院','0',73),(92,'2012-09-01','2017-06-30','中国科学院生态环境研究中心','生态学','2',73),(93,'2009-09-02','2013-06-09','中央民族大学','金融学','0',74),(94,'2013-09-02','2016-09-02','中国科学院生态环境研究中心','环境经济与管理','1',74),(95,'2009-09-01','2013-06-08','北京邮电大学','信息与通信工程学院','0',75),(96,'2013-09-01','2016-06-08','中国科学院声学所','国家网络新媒体工程技术研究中心','1',75),(97,'0000-00-00','0000-00-00','清华大学','自动化系','0',76),(98,'0000-00-00','0000-00-00','清华大学','自动化系，清华信息国家实验室合成与系统生物学研究中心','1',76),(99,'2010-08-28','2014-06-30','吉林大学','管理学院','0',77),(100,'2014-09-10','2017-01-10','北京航空航天大学','经管学院','1',77),(101,'2009-09-01','2013-07-01','武汉大学','计算机学院信息安全专业','0',78),(102,'2013-09-10','2016-07-01','中国科学院信息工程研究所','信息安全国家重点实验室','1',78),(103,'2008-09-01','2012-07-01','北京林业大学','梁希班-会计学','0',79),(104,'2012-09-01','2015-07-01','财政部财政科学研究所','会计学','1',79),(105,'2008-09-01','2012-08-31','哈尔滨工业大学','航天学院 电子科学与技术','0',80),(106,'2012-09-01','2015-07-15','中国科学院半导体研究所','集成光电子学国家联合重点实验室','1',80),(107,'2008-09-05','2012-06-25','华中科技大学','光电信息工程','0',81),(108,'2012-08-21','2015-07-11','清华大学','电子工程系','1',81),(109,'2010-09-01','2014-06-30','南京信息工程大学','环境科学','0',82),(110,'2015-09-01','2017-06-30','中国科学院生态环境研究中心','环境工程','1',82),(111,'2010-09-01','2014-06-15','郑州大学','环境工程','0',83),(112,'2014-09-01','2016-06-10','中国科学院生态环境研究中心','环境工程','1',83),(113,'2008-09-08','2012-06-08','湖南农大','经济学院','0',84),(114,'2013-09-01','2017-06-08','中国科学院生态环境研究中心','环境经济','1',84),(115,'2010-09-01','2014-07-01','南开大学','环境科学','0',85),(116,'2014-09-01','2017-07-01','中国科学院生态环境研究中心','资环学院','1',85),(117,'2010-09-01','2014-07-01','中国地质大学（北京）','地质学+工商管理双学位','0',86),(118,'2014-09-01','2017-07-01','中国科学院地质与地球物理研究所+管理学院','地球化学+创业MBA','1',86),(119,'2009-09-08','2013-06-30','北京大学','资源与环境科学学院','0',87),(120,'2013-09-08','2016-06-30','北京大学','城市与环境学院','1',87),(121,'2008-08-08','2012-07-03','西安交通大学','能源动力系统及自动化','0',88),(122,'2012-07-03','2017-07-01','清华大学','热能工程系','2',88),(123,'2008-09-01','2012-06-30','厦门大学','生命科学学院','0',89),(124,'2012-09-01','2015-06-30','中国科学院微生物研究所','微生物','1',89),(125,'2007-09-01','2011-09-01','华中科技大学','生命科学与技术学院','0',90),(126,'2011-09-01','2014-07-01','中国科学院微生物研究所','工业生物研究室','1',90),(127,'2008-09-01','2012-06-30','南开大学','信息技术学院','0',91),(128,'2012-07-03','2017-07-01','中国科学院半导体研究所','微电子与固体电子学','2',91),(129,'2008-09-01','2012-06-30','吉林大学','应用心理学','0',92),(130,'2012-06-08','2015-06-07','中国科学院心理研究所','心理健康实验室','1',92),(131,'2008-09-01','2012-06-30','中国农业大学','设施农业科学与工程','0',93),(132,'2012-07-03','2017-07-01','中国科学院地理科学与资源研究所','旅游与社会文化地理研究室','2',93),(133,'2009-09-01','2013-07-01','北京邮电大学','通信工程','0',94),(134,'2013-09-01','2016-07-01','北京大学','信息科学技术学院电子系','1',94),(135,'2008-09-01','2012-06-17','华东师范大学','资源与环境科学学院','0',95),(136,'2012-09-08','2017-07-10','中科院地理科学与资源研究所','资源经济与能矿资源','2',95),(137,'2009-09-01','2013-06-25','武汉大学','物理科学与技术学院','0',96),(138,'2013-09-01','2018-09-01','中国科学院物理研究所','磁学国家重点实验室','2',96),(139,'2008-09-01','2012-06-30','北京林业大学','经济管理学院','0',97),(140,'2012-09-01','2016-06-30','北京大学国际法学院','跨国法律研究','1',97),(141,'2011-09-01','2015-07-01','中央民族大学','社会学','0',98),(142,'2015-09-01','2017-06-30','香港大学','社会行政学','1',98),(143,'2007-09-01','2011-09-01','复旦大学','半导体','0',99),(144,'2012-09-01','2017-07-01','中国科学院物理研究所','表面物理国家重点实验室','2',99),(145,'2009-09-01','2013-06-30','武汉大学','哲学学院','0',100),(146,'2013-09-01','2016-06-30','北京大学','法学院','1',100),(147,'2009-09-01','2013-06-26','武汉大学','新闻与传播学院','0',101),(148,'2013-08-27','2016-07-08','清华大学','新闻与传播学院','1',101),(149,'2009-09-01','2013-06-08','北京邮电大学','信息与通信工程学院','0',102),(150,'2013-09-01','2016-06-08','中国科学院声学所','国家网络新媒体工程技术研究中心','1',102),(151,'2009-09-01','2013-06-26','武汉大学','新闻与传播学院','0',120),(152,'2013-08-27','2016-07-08','清华大学','新闻与传播学院','1',120),(153,'2009-09-01','2013-06-26','武汉大学','新闻与传播学院','0',121),(154,'2013-08-27','2016-07-08','清华大学','新闻与传播学院','1',121),(155,'2009-09-01','2013-06-26','武汉大学','新闻与传播学院','0',122),(156,'2013-08-27','2016-07-08','清华大学','新闻与传播学院','1',122),(157,'2009-09-01','2013-06-26','武汉大学','新闻与传播学院','0',125),(158,'2013-08-27','2016-07-08','清华大学','新闻与传播学院','1',125),(159,'2009-09-01','2013-06-26','武汉大学','新闻与传播学院','0',126),(160,'2013-08-27','2016-07-08','清华大学','新闻与传播学院','1',126),(161,'2010-09-10','2014-06-24','山东师范大学','地理科学','0',147),(162,'2014-09-06','2017-07-20','地理科学与资源研究所','人文地理学','1',147),(164,'2010-07-01','0000-00-00','计算机科学与技术','本科','0',151),(165,'2015-07-01','0000-00-00','工商管理','硕士','0',151),(166,'2011-07-01','0000-00-00','光信息科学与技术/英语双学位','本科','0',153),(167,'2015-07-11','0000-00-00','仪器科学与技术','硕士','0',153),(168,'2006-07-01','0000-00-00','汉语言文学','本科','0',154),(169,'2017-03-01','0000-00-00','MBA工商管理硕士','硕士','0',154),(170,'2001-07-10','0000-00-00','教育学','本科','0',155),(171,'2018-09-10','0000-00-00','临床心理治疗','博士','0',155),(172,'2014-06-30','0000-00-00','生命科学','本科','0',157),(173,'2019-06-30','0000-00-00','植物遗传','博士','0',157),(174,'2015-07-03','0000-00-00','法学','本科','0',158),(175,'2017-07-01','0000-00-00','民商法','硕士','0',158),(176,'2010-06-24','0000-00-00','地理科学','本科','0',161),(177,'2016-06-24','0000-00-00','旅游管理','硕士','0',161),(178,'2007-07-23','0000-00-00','化学','本科','0',163),(179,'2012-07-21','0000-00-00','化学','博士','0',163),(180,'2012-06-30','0000-00-00','GIS与遥感','博士','0',164),(181,'2015-06-23','0000-00-00','GIS与遥感','博士','0',164),(182,'2016-06-30','0000-00-00','化学与化工学院','硕士','0',168),(183,'2011-06-24','0000-00-00','建筑电气','本科','0',169),(184,'2014-06-24','0000-00-00','电气工程','硕士','0',169),(185,'2012-07-01','0000-00-00','应用化学','本科','0',170),(186,'2015-07-01','0000-00-00','环境工程','硕士','0',170),(187,'2012-07-01','0000-00-00','化学','本科','0',172),(188,'2015-07-01','0000-00-00','有机化学','硕士','0',172),(189,'2012-07-01','0000-00-00','信息管理与信息系统','本科','0',173),(190,'2016-07-01','0000-00-00','高等教育管理','硕士','0',173),(191,'2015-07-02','0000-00-00','计算机科学与技术','本科','0',175),(192,'2018-07-01','0000-00-00','计算机科学与技术','硕士','0',175),(193,'2014-07-24','0000-00-00','会计学','本科','0',177),(194,'2014-07-28','0000-00-00','园艺','本科','0',180),(195,'2017-07-28','0000-00-00','生物信息','硕士','0',180),(196,'2016-07-28','0000-00-00','gong shang guan li','硕士','0',181),(197,'2013-06-30','0000-00-00','电子信息科学与技术','本科','0',182),(198,'2016-07-01','0000-00-00','电子与通信工程','硕士','0',182),(199,'2014-06-30','0000-00-00','工业设计','本科','0',183),(200,'2018-01-15','0000-00-00','设计艺术学','硕士','0',183),(201,'2012-06-28','0000-00-00','','本科','0',142),(202,'2015-07-28','0000-00-00','','硕士','0',142),(203,'2012-09-01','0000-00-00','电气工程及其自动化','本科','0',186),(204,'2017-01-26','0000-00-00','双控','硕士','0',186),(205,'2012-06-22','0000-00-00','工程心理学','本科','0',188),(206,'2015-07-03','0000-00-00','计算网络心理学','硕士','0',188),(207,'2016-07-01','0000-00-00','工商管理','硕士','0',189),(208,'2013-06-30','0000-00-00','会计学','本科','0',193),(209,'2018-06-30','0000-00-00','会计学','博士','0',193),(210,'2011-07-01','0000-00-00','农业经济管理','本科','0',196),(211,'2013-07-01','0000-00-00','农业经济管理','硕士','0',196),(212,'2015-06-30','0000-00-00','法学','本科','0',198),(213,'2017-06-30','0000-00-00','法学','硕士','0',198),(214,'2004-07-01','0000-00-00','预防医学','本科','0',199),(215,'2014-01-31','0000-00-00','公共管理','硕士','0',199),(216,'2012-06-15','0000-00-00','宝石及材料工艺学','本科','0',208),(217,'2011-06-30','0000-00-00','软件工程','本科','0',211),(218,'2014-06-30','0000-00-00','计算机应用技术','硕士','0',211),(219,'2014-06-30','0000-00-00','自动化专业','本科','0',213),(220,'2012-07-01','0000-00-00','电子科学与技术','本科','0',214),(221,'2017-07-01','0000-00-00','电子工程系','博士','0',214),(222,'2011-06-30','0000-00-00','过程装备与控制工程','本科','0',216),(223,'2016-06-15','0000-00-00','创业投资管理','硕士','0',216),(224,'2014-07-01','0000-00-00','历史学','本科','0',218),(225,'2016-07-01','0000-00-00','中国近代史','硕士','0',218),(226,'2012-06-30','0000-00-00','工商管理（全英）','本科','0',223),(227,'2014-12-18','0000-00-00','精算学','硕士','0',223),(228,'2008-07-06','0000-00-00','应用心理学','本科','0',229),(229,'2012-01-17','0000-00-00','教育心理学','硕士','0',229),(230,'2015-07-01','0000-00-00','电气工程','硕士','0',231),(231,'2013-06-17','0000-00-00','金融学','本科','0',234),(232,'2015-06-23','0000-00-00','可持续发展管理','硕士','0',234),(233,'2014-07-17','0000-00-00','生命科学与技术基地班（本硕连读）','本科','0',235),(234,'2011-06-30','0000-00-00','自动化','本科','0',236),(235,'2014-06-30','0000-00-00','控制科学与工程','硕士','0',236),(236,'2009-07-01','0000-00-00','自动化','本科','0',237),(237,'2014-07-01','0000-00-00','控制科学与工程','硕士','0',237),(238,'2013-06-10','0000-00-00','新闻学','本科','0',239),(239,'2011-06-30','0000-00-00','法学','本科','0',240),(240,'2014-06-30','0000-00-00','法学','硕士','0',240),(241,'2012-07-31','0000-00-00','土木工程（岩土）','本科','0',241),(242,'2017-07-31','0000-00-00','岩土工程','博士','0',241),(243,'2016-07-10','0000-00-00','工商管理','硕士','0',246),(244,'2016-07-12','0000-00-00','土木工程','本科','0',248),(245,'2012-07-01','0000-00-00','环境工程','本科','0',250),(246,'2015-07-01','0000-00-00','生态学','硕士','0',250),(247,'2013-06-30','0000-00-00','英语','本科','0',251),(248,'2015-06-30','0000-00-00','英语翻译','硕士','0',251),(249,'2013-06-28','0000-00-00','物理','本科','0',253),(250,'2016-05-28','0000-00-00','物理','硕士','0',253),(251,'2013-07-07','0000-00-00','电子信息工程','本科','0',256),(252,'2016-07-01','0000-00-00','信息安全','博士','0',256),(253,'2014-06-30','0000-00-00','材料物理','本科','0',258),(254,'2017-06-30','0000-00-00','软件工程','本科','0',258),(255,'2011-07-01','0000-00-00','西北大学','本科','0',142),(256,'2014-07-01','0000-00-00','考古学及博物馆学','硕士','0',142),(257,'2014-06-29','0000-00-00','生物学基地班','本科','0',260),(258,'2019-07-23','0000-00-00','认知神经科学','博士','0',260),(259,'2014-06-29','0000-00-00','生物学基地班','本科','0',260),(260,'2019-07-23','0000-00-00','认知神经科学','博士','0',260),(261,'2013-07-01','0000-00-00','会计学','本科','0',261),(262,'2015-07-01','0000-00-00','会计','硕士','0',261),(263,'2016-06-30','0000-00-00','电力电子与直线驱动','博士','0',264),(264,'2011-07-01','0000-00-00','主持与播音','本科','0',270),(265,'2009-07-01','0000-00-00','临床医学','本科','0',272),(266,'2015-07-20','0000-00-00','投资','硕士','0',272),(267,'2012-07-01','0000-00-00','英语播音与主持艺术','本科','0',273),(268,'2015-07-01','0000-00-00','医学心理学','硕士','0',273),(269,'2010-06-20','0000-00-00','计算机科学与技术','本科','0',274),(270,'2015-07-10','0000-00-00','计算机科学','博士','0',274),(271,'2012-07-01','0000-00-00','植物保护','本科','0',278),(272,'2015-07-01','0000-00-00','环境工程','硕士','0',278),(273,'2010-07-30','0000-00-00','历史学','本科','0',279),(274,'2012-05-01','0000-00-00','历史学','硕士','0',279),(275,'2014-07-12','0000-00-00','信息管理与信息系统','本科','0',281),(276,'2017-06-30','0000-00-00','计算机技术','硕士','0',281),(277,'2011-07-01','0000-00-00','英语语言文学','本科','0',142),(278,'2015-07-01','0000-00-00','文本翻译','硕士','0',142),(279,'2013-07-01','0000-00-00','城市规划','本科','0',283),(280,'2016-07-01','0000-00-00','城市与区域规划','硕士','0',283),(281,'2015-07-01','0000-00-00','教育技术','硕士','0',284),(282,'2015-07-01','0000-00-00','金融学','本科','0',285),(283,'2018-07-01','0000-00-00','劳动经济学','硕士','0',285),(284,'2013-09-01','0000-00-00','地图学与地理信息系统','本科','0',286),(285,'2016-07-01','0000-00-00','地图学与地理信息系统','硕士','0',286),(286,'2004-06-23','0000-00-00','计算机应用','硕士','0',142),(287,'2016-03-15','0000-00-00','地图学与地理信息系统','博士','0',142),(288,'2009-09-01','0000-00-00','','本科','0',142),(289,'2013-07-01','0000-00-00','','博士','0',142),(290,'2014-06-30','0000-00-00','自动化','本科','0',288),(291,'2017-01-01','0000-00-00','控制科学与工程','硕士','0',288),(292,'2015-06-30','0000-00-00','社会工作','本科','0',289),(293,'2017-06-30','0000-00-00','社会保障','硕士','0',289),(294,'2015-07-06','0000-00-00','汉语言文学','本科','0',290),(295,'2018-06-30','0000-00-00','民间文艺学','硕士','0',290),(296,'2014-08-21','0000-00-00','通信','本科','0',291),(297,'2017-01-16','0000-00-00','信息与通信工程','硕士','0',291),(298,'2015-07-01','0000-00-00','电气工程','博士','0',294),(299,'2015-07-10','0000-00-00','信息工程','本科','0',300),(300,'2018-07-25','0000-00-00','信息与通信工程','硕士','0',300),(301,'2013-07-01','0000-00-00','空间科学与技术','本科','0',304),(302,'2016-07-01','0000-00-00','空间物理','硕士','0',304),(303,'2014-06-24','0000-00-00','地理科学','本科','0',305),(304,'2017-07-20','0000-00-00','人文地理学','硕士','0',305),(305,'2013-06-23','0000-00-00','金融学','本科','0',307),(306,'2016-07-23','0000-00-00','社群金融','硕士','0',307),(307,'2009-07-01','0000-00-00','理科试验班','本科','0',308),(308,'2015-07-01','0000-00-00','社会组织治理','硕士','0',308),(309,'2010-07-01','0000-00-00','国际金融','本科','0',309),(310,'2016-07-01','0000-00-00','金融工商管理','硕士','0',309),(311,'2012-07-01','0000-00-00','工程力学','本科','0',313),(312,'2016-08-31','0000-00-00','土木工程','博士','2',313),(313,'2010-07-26','0000-00-00','金融学','本科','0',314),(314,'2014-07-26','0000-00-00','创业与创新投资管理','硕士','0',314),(315,'2013-07-01','0000-00-00','城市规划','本科','0',315),(316,'2016-07-15','0000-00-00','地理学（城市与区域规划）','硕士','0',315),(317,'2015-07-14','0000-00-00','文物保护','本科','0',317),(318,'2013-07-01','0000-00-00','日语','本科','0',318),(319,'2015-07-01','0000-00-00','日语语言文学','硕士','0',318),(320,'2012-07-28','0000-00-00','环境工程','本科','0',319),(321,'2015-07-28','0000-00-00','环境科学','硕士','0',319),(322,'2011-07-01','0000-00-00','生物技术','本科','0',320),(323,'2016-07-01','0000-00-00','生态学','博士','0',320),(324,'2011-07-01','0000-00-00','动物医学','本科','0',142),(325,'2011-06-28','0000-00-00','植物保护','本科','0',322),(326,'2014-06-28','0000-00-00','生态学','硕士','0',322),(327,'2013-06-15','0000-00-00','力学','硕士','0',326),(328,'2010-07-01','0000-00-00','环境工程','本科','0',327),(329,'2013-07-23','0000-00-00','生物工程','硕士','0',327),(330,'2011-07-30','0000-00-00','','本科','0',330),(331,'2015-07-30','0000-00-00','法律硕士','硕士','0',330),(332,'2006-09-01','2010-07-01','黑龙江大学','计算机科学与技术','0',142),(333,'2013-09-01','2015-07-01','中科院','工商管理','1',142),(334,'2007-09-01','2011-07-01','中国石油大学','光信息科学与技术/英语双学位','0',334),(335,'2012-08-21','2015-07-11','清华大学','仪器科学与技术','1',334),(336,'2003-09-01','2006-07-01','首都师范大学','汉语言文学','0',335),(337,'2014-03-01','2017-03-01','中国科学院大学','MBA工商管理硕士','1',335),(338,'1998-08-31','2001-07-10','东北师范大学','教育学','0',336),(339,'2013-08-31','2018-09-10','中国科学院心理研究所','临床心理治疗','2',336),(340,'2010-09-01','2014-06-30','华南农业大学','生命科学','0',338),(341,'2014-09-01','2019-06-30','中科院上海生科院','植物遗传','2',338),(342,'2011-09-09','2015-07-03','中国人民大学','法学','0',339),(343,'2015-09-09','2017-07-01','中国人民大学','民商法','1',339),(344,'2006-09-01','2010-06-24','石家庄学院','地理科学','0',341),(345,'2013-09-01','2016-06-24','北京第二外国语学院','旅游管理','1',341),(346,'2003-09-23','2007-07-23','哈工大','化学','0',343),(347,'2007-09-01','2012-07-21','北大','化学','2',343),(348,'2008-09-11','2012-06-30','武汉大学','GIS与遥感','2',344),(349,'2012-09-01','2015-06-23','中国科学院大学','GIS与遥感','2',344),(350,'2013-09-01','2016-06-30','中科院大学','化学与化工学院','1',348),(351,'2007-09-01','2011-06-24','湘潭大学','建筑电气','0',349),(352,'2011-09-02','2014-06-24','中南大学','电气工程','1',349),(353,'2008-09-01','2012-07-01','青岛大学','应用化学','0',350),(354,'2012-09-01','2015-07-01','中国科学院生态环境研究中心','环境工程','1',350),(355,'2008-09-07','2012-07-01','辽宁大学','化学','0',352),(356,'2012-09-02','2015-07-01','中科院理化技术研究所','有机化学','1',352),(357,'2008-09-01','2012-07-01','北京林业大学','信息管理与信息系统','0',353),(358,'2012-09-01','2016-07-01','北京大学','高等教育管理','1',353),(359,'2011-08-22','2015-07-02','北京邮电大学','计算机科学与技术','0',355),(360,'2015-08-25','2018-07-01','清华大学','计算机科学与技术','1',355),(361,'2014-09-10','0000-00-00','浙江传媒学院','双语播音主持','0',358),(362,'2010-06-28','2014-07-28','中国农业大学','园艺','0',360),(363,'2014-09-28','2017-07-28','中国科学院','生物信息','1',360),(364,'2014-09-01','2016-07-28','中国科学院大学','gong shang guan li','1',361),(365,'2009-09-09','2013-06-30','中山大学','电子信息科学与技术','0',362),(366,'2013-09-01','2016-07-01','北京大学','电子与通信工程','1',362),(367,'2010-09-11','2014-06-30','北京科技大学','工业设计','0',363),(368,'2015-09-11','2018-01-15','北京科技大学','设计艺术学','1',363),(369,'2013-09-19','2012-06-28','','','0',364),(370,'2013-09-28','2015-07-28','北京大学','','1',364),(371,'2008-08-29','2012-09-01','哈工大威海','电气工程及其自动化','0',367),(372,'2014-08-26','2017-01-26','北京科技大学','双控','1',367),(373,'2008-09-01','2012-06-22','浙江大学','工程心理学','0',369),(374,'2012-09-03','2015-07-03','中国科学院大学','计算网络心理学','1',369),(375,'2014-09-01','2016-07-01','中国科学院大学','工商管理','1',370),(376,'2009-09-01','2013-06-30','南京大学','会计学','0',374),(377,'2013-09-01','2018-06-30','清华大学','会计学','2',374),(378,'2007-09-02','2011-07-01','中国农业大学','农业经济管理','0',377),(379,'2011-09-01','2013-07-01','中国农业大学','农业经济管理','1',377),(380,'2011-09-01','2015-06-30','西南政法大学','法学','0',379),(381,'2015-09-09','2017-06-30','中国人民大学','法学','1',379),(382,'1999-09-01','2004-07-01','北京大学医学部','预防医学','0',380),(383,'2011-09-01','2014-01-31','清华大学','公共管理','1',380),(384,'2008-09-01','2012-06-15','中国地质大学（北京）','宝石及材料工艺学','0',389),(385,'2012-09-01','0000-00-00','中国科学院理化技术研究所','材料学','2',389),(386,'2007-09-01','2011-06-30','北京邮电大学','软件工程','0',392),(387,'2011-09-01','2014-06-30','中国科学院大学','计算机应用技术','1',392),(388,'2010-09-01','2014-06-30','北京科技大学','自动化专业','0',394),(389,'2008-09-01','2012-07-01','西安交通大学','电子科学与技术','0',395),(390,'2012-09-01','2017-07-01','清华大学','电子工程系','2',395),(391,'2007-09-01','2011-06-30','北京化工大学','过程装备与控制工程','0',397),(392,'2013-09-01','2016-06-15','北京大学','创业投资管理','1',397),(393,'2010-09-06','2014-07-01','陕西师范大学','历史学','0',399),(394,'2014-09-06','2016-07-01','北京师范大学','中国近代史','1',399),(395,'2008-09-08','2012-06-30','中国地质大学（武汉）','工商管理（全英）','0',404),(396,'2013-02-18','2014-12-18','澳洲国立大学','精算学','1',404),(397,'2004-09-01','2008-07-06','潍坊医学院','应用心理学','0',410),(398,'2010-09-01','2012-01-17','英国布里斯托大学','教育心理学','1',410),(399,'2012-09-01','2015-07-01','中国科学院','电气工程','1',412),(400,'2009-09-01','2013-06-17','天津外国语大学','金融学','0',415),(401,'2013-09-01','2015-06-23','中国人民大学','可持续发展管理','1',415),(402,'2010-08-14','2014-07-17','西安交通大学','生命科学与技术基地班（本硕连读）','0',416),(403,'2014-09-01','0000-00-00','','','0',416),(404,'2007-09-01','2011-06-30','中南大学','自动化','0',417),(405,'2011-09-01','2014-06-30','中南大学','控制科学与工程','1',417),(406,'2005-09-06','2009-07-01','西南石油大学','自动化','0',418),(407,'2011-09-01','2014-07-01','中南大学','控制科学与工程','1',418),(408,'2009-09-10','2013-06-10','新疆财经大学','新闻学','0',420),(409,'2007-09-01','2011-06-30','安徽财经大学','法学','0',421),(410,'2011-09-01','2014-06-30','苏州大学','法学','1',421),(411,'2008-09-06','2012-07-31','山东科技大学','土木工程（岩土）','0',422),(412,'2012-09-06','2017-07-31','中国科学院武汉岩土力学研究所','岩土工程','2',422),(413,'1989-09-10','0000-00-00','山东科技大学','供热通风与空调工程','0',427),(414,'2013-09-01','2016-07-10','中国科学院大学','工商管理','1',427),(415,'2015-07-27','2016-07-12','北京林业大学','土木工程','0',429),(416,'2008-09-01','2012-07-01','大连海事大学','环境工程','0',431),(417,'2012-09-01','2015-07-01','中科院生态环境研究中心','生态学','1',431),(418,'2009-09-01','2013-06-30','内蒙古大学','英语','0',432),(419,'2013-09-01','2015-06-30','北京科技大学','英语翻译','1',432),(420,'2009-09-01','2013-06-28','南京大学','物理','0',434),(421,'2013-09-01','2016-05-28','中国科学院','物理','1',434),(422,'2009-09-01','2013-07-07','沈阳航空航天大学','电子信息工程','0',437),(423,'2013-09-01','2016-07-01','中国科学院大学','信息安全','2',437),(424,'2010-08-28','2014-06-30','东北大学','材料物理','0',439),(425,'2015-09-01','2017-06-30','北京大学','软件工程','0',439),(426,'2007-09-01','2011-07-01','','西北大学','0',440),(427,'2011-09-01','2014-07-01','北京大学','考古学及博物馆学','1',440),(428,'2010-08-26','2014-06-29','兰州大学','生物学基地班','0',442),(429,'2014-09-01','2019-07-23','中科院','认知神经科学','2',442),(430,'2010-08-26','2014-06-29','兰州大学','生物学基地班','0',442),(431,'2014-09-01','2019-07-23','中科院','认知神经科学','2',442),(432,'2009-09-01','2013-07-01','中央财经大学','会计学','0',443),(433,'2013-09-01','2015-07-01','财政部财政科学研究所','会计','1',443),(434,'2010-09-01','2016-06-30','中国科学院大学','电力电子与直线驱动','2',446),(435,'2009-09-01','2011-07-01','中华女子学院','主持与播音','0',452),(436,'2015-07-24','0000-00-00','','','0',452),(437,'2004-09-06','2009-07-01','天津医科大学','临床医学','0',142),(438,'2012-09-06','2015-07-20','北京大学','投资','1',142),(439,'2008-09-01','2012-07-01','浙江传媒学院','英语播音与主持艺术','0',454),(440,'2012-09-01','2015-07-01','中国科学院心理研究所','医学心理学','1',454),(441,'2006-09-16','2010-06-20','北京理工大学','计算机科学与技术','0',455),(442,'2010-09-01','2015-07-10','中国科学院大学','计算机科学','2',455),(443,'2008-09-01','2012-07-01','中国农业大学','植物保护','0',459),(444,'2012-09-01','2015-07-01','中国科学院大学','环境工程','1',459),(445,'2005-08-30','2010-07-30','北京大学','历史学','0',460),(446,'2010-08-30','2012-05-01','澳门大学','历史学','1',460),(447,'2010-09-12','2014-07-12','沈阳理工大学','信息管理与信息系统','0',462),(448,'2014-09-01','2017-06-30','中国科学院大学','计算机技术','1',462),(449,'2007-09-01','2011-07-01','西北师范大学','英语语言文学','0',463),(450,'2011-09-01','2015-07-01','北京大学','文本翻译','1',463),(451,'2008-09-01','2013-07-01','北京工业大学','城市规划','0',464),(452,'2013-09-01','2016-07-01','北京大学','城市与区域规划','1',464),(453,'2013-09-01','2015-07-01','北京大学','教育技术','1',465),(454,'2011-09-01','2015-07-01','安徽大学','金融学','0',466),(455,'2015-09-01','2018-07-01','北京师范大学','劳动经济学','1',466),(456,'2009-09-01','2013-09-01','武汉大学','地图学与地理信息系统','0',467),(457,'2013-09-01','2016-07-01','中国科学院大学','地图学与地理信息系统','1',467),(458,'1997-09-01','2004-06-23','郑州大学','计算机应用','1',468),(459,'2010-09-01','2016-03-15','中科院遥感与数字地球研究所','地图学与地理信息系统','2',468),(460,'2005-09-01','2009-09-01','复旦大学','','0',142),(461,'2009-09-01','2013-07-01','北大国际法学院+北大本部+哥大','','2',142),(462,'2010-09-01','2014-06-30','北京科技大学','自动化','0',470),(463,'2014-09-01','2017-01-01','北京科技大学','控制科学与工程','1',470),(464,'2011-09-01','2015-06-30','北京师范大学','社会工作','0',471),(465,'2015-09-01','2017-06-30','北京师范大学','社会保障','1',471),(466,'2011-07-08','2015-07-06','北京师范大学','汉语言文学','0',472),(467,'2015-07-09','2018-06-30','北京师范大学','民间文艺学','1',472),(468,'2010-08-21','2014-08-21','北科','通信','0',473),(469,'2014-08-21','2017-01-16','北科','信息与通信工程','1',473),(470,'2011-08-24','2015-07-10','西安电子科技大学','信息工程','0',481),(471,'2015-09-10','2018-07-25','北京邮电大学','信息与通信工程','1',481),(472,'2009-09-01','2013-07-01','山东大学（威海）','空间科学与技术','0',485),(473,'2013-09-01','2016-07-01','中国科学院大学','空间物理','1',485),(474,'2010-09-10','2014-06-24','山东师范大学','地理科学','0',147),(475,'2014-09-06','2017-07-20','地理科学与资源研究所','人文地理学','1',147),(476,'2009-07-23','2013-06-23','重庆师范大学','金融学','0',487),(477,'2015-06-23','2016-07-23','和君商学院','社群金融','1',487),(478,'2006-09-01','2009-07-01','中国农业大学','理科试验班','0',488),(479,'2015-06-01','2015-07-01','北京大学','社会组织治理','1',488),(480,'2006-09-01','2010-07-01','东北财经大学','国际金融','0',489),(481,'2013-09-01','2016-07-01','中国科学院','金融工商管理','1',489),(482,'2008-09-01','2012-07-01','上海交通大学','工程力学','0',493),(483,'2012-09-01','2016-08-31','香港大学','土木工程','2',493),(484,'2006-09-10','2010-07-26','中华女子学院','金融学','0',494),(485,'2011-09-26','2014-07-26','北京大学','创业与创新投资管理','1',494),(486,'2008-09-01','2013-07-01','山东科技大学','城市规划','0',495),(487,'2013-09-01','2016-07-15','北京大学','地理学（城市与区域规划）','1',495),(488,'2011-09-03','2015-07-14','北京大学','文物保护','0',497),(489,'2015-09-05','0000-00-00','北京大学','文物与博物馆','1',497),(490,'2009-09-01','2013-07-01','云南大学','日语','0',498),(491,'2013-09-01','2015-07-01','北京科技大学','日语语言文学','1',498),(492,'2008-07-28','2012-07-28','济南大学','环境工程','0',499),(493,'2012-07-28','2015-07-28','北京大学','环境科学','1',499),(494,'2007-09-01','2011-07-01','中山大学','生物技术','0',500),(495,'2011-09-01','2016-07-01','北京大学','生态学','2',500),(496,'2006-09-01','2011-07-01','中国农业大学','动物医学','0',501),(497,'2011-09-01','0000-00-00','北京大学','生命科学','2',501),(498,'2007-09-01','2011-06-28','中国农业大学','植物保护','0',503),(499,'2011-09-01','2014-06-28','北京大学','生态学','1',503),(500,'2011-08-20','2013-06-15','中国农大','力学','1',507),(501,'2006-09-01','2010-07-01','四川大学','环境工程','0',508),(502,'2010-09-01','2013-07-23','中国科学院大学','生物工程','1',508),(503,'2007-09-01','2011-07-30','东北财经大学','','0',511),(504,'2012-09-01','2015-07-30','清华大学','法律硕士','1',511),(505,'2007-09-01','2011-07-01','华中科技大学','','0',143),(506,'2015-03-17','2018-07-01','','','2',143);
/*!40000 ALTER TABLE `p_educational` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `p_tags`
--

DROP TABLE IF EXISTS `p_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `p_tags` (
  `id` int(12) NOT NULL AUTO_INCREMENT COMMENT '标签id',
  `account_id` int(12) NOT NULL COMMENT '账户的id',
  `tag_type` tinyint(4) NOT NULL DEFAULT '2' COMMENT '标签种类2一般标签1特殊标签',
  `tag_content` varchar(40) NOT NULL COMMENT '标签内容',
  PRIMARY KEY (`id`),
  KEY `account_id` (`account_id`),
  KEY `tag_type` (`tag_type`)
) ENGINE=InnoDB AUTO_INCREMENT=626 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `p_tags`
--

LOCK TABLES `p_tags` WRITE;
/*!40000 ALTER TABLE `p_tags` DISABLE KEYS */;
INSERT INTO `p_tags` VALUES (163,71,2,'跨学校地区保研'),(164,71,2,'校一等奖学金获得者'),(165,71,2,'美国留学申请'),(166,73,2,'跨学校保研'),(167,73,2,'签证DIY'),(168,74,2,'跨学校考研'),(169,75,2,'美国大学生数学竞赛二等奖'),(170,75,2,'新华都奖学金'),(171,75,2,'matlab达人'),(172,75,2,'众筹咖啡合伙人'),(173,76,2,'本校保研'),(174,76,2,'清华新生奖学金'),(175,76,2,'GRE达人'),(176,77,2,'跨学校保研'),(177,77,2,'国家奖学金获得者'),(178,77,2,'大学生挑战杯创业大赛银奖'),(179,77,2,'优秀学生记者'),(180,78,2,'跨学校保研'),(181,78,2,'全国大学生信息安全竞赛一等奖'),(182,78,2,'ACM省二等奖'),(183,79,2,'跨学校保研'),(184,79,2,'梁希奖学金获得者'),(185,79,2,'入围中国大学生“年度人物”'),(186,79,2,'全国大学生创意创业竞赛一等奖'),(187,79,2,'金融'),(188,80,2,'跨学校保研'),(189,80,2,'国家奖学金获得者'),(190,80,2,'富士施乐企业奖学金获得者'),(191,80,2,'托业890'),(192,81,2,'跨学校保研'),(193,81,2,'国家奖学金获得者'),(194,81,2,'平安励志奖学金获得者'),(195,81,2,'华科学习特优生'),(196,82,2,'三跨考研'),(197,82,2,'国家奖学金获得者'),(198,82,2,'江苏省大学生水文化创意设计大赛一等奖'),(199,82,2,'江苏省三好学生'),(200,83,2,'跨学校保研'),(201,83,2,'河南省三好学生'),(202,83,2,'专利申请达人'),(203,84,2,'跨学校考研'),(204,84,2,'“海洋计划”公益助学活动'),(205,84,2,'创业积极分子'),(206,85,2,'跨学校保研'),(207,85,2,'国家励志奖学金获得者'),(208,86,2,'国家奖学金获得者'),(209,86,2,'美国大学生数学建模竞赛一等奖'),(210,86,2,'全国大学生英语竞赛一等奖'),(211,86,2,'“创青春”挑战杯创业大赛国奖'),(212,86,2,'创业MBA'),(213,87,2,'国家奖学金获得者'),(214,87,2,'课外学术科技作品竞赛一等奖'),(215,87,2,'论文写作达人'),(216,87,2,'奇葩说爱好者'),(217,88,2,'跨学校保研'),(218,88,2,'国家奖学金获得者'),(219,88,2,'清华博士新生奖学金获得者'),(220,88,2,'论文写作达人'),(221,88,2,'社团负责人'),(222,89,2,'跨学校保研'),(223,89,2,'国家励志奖学金获得者'),(224,89,2,'汪德耀奖学金获得者'),(225,89,2,'外企国企实习达人'),(226,90,2,'跨学校保研'),(227,90,2,'国家奖学金获得者'),(228,90,2,'华中地区高校招聘挑战赛一等奖'),(229,90,2,'华科优秀毕业生'),(230,91,2,'跨学校保研'),(231,91,2,'国家励志奖学金获得者'),(232,91,2,'全国电子设计竞赛天津市一等奖'),(233,92,2,'跨学校保研'),(234,92,2,'国家奖学金获得者'),(235,92,2,'国家励志奖学金获得者'),(236,92,2,'大学生创新性实验计划'),(237,93,2,'国家奖学金获得者'),(238,93,2,'北京市优秀毕业生'),(239,93,2,'清华大学环境友好科技赛优胜奖'),(240,93,2,'挑战杯创业大赛三等奖'),(241,94,2,'国家奖学金获得者'),(242,94,2,'国际大学生数学建模大赛一等奖'),(243,94,2,'北京市三好学生'),(244,94,2,'北邮大学生创新项目三等奖'),(245,94,2,'CCTV“希望之星”英语风采大赛最佳舞台效果奖'),(246,95,2,'跨学校保研'),(247,95,2,'国家奖学金获得者'),(248,95,2,'北京市优秀毕业生'),(249,95,2,'奖状大满贯'),(250,95,2,'日本小能手'),(251,96,2,'武大甲等奖学金获得者'),(252,96,2,'全国性学术科技比赛三等奖'),(253,96,2,'华中地区创业大赛一等奖'),(254,96,2,'湖北省创业比赛一等奖'),(255,96,2,'主持人大赛三等奖'),(256,96,2,'专利申请达人'),(257,97,2,'跨学校跨专业保研'),(258,97,2,'“挑战杯”首都大学生创业计划竞赛铜奖'),(259,97,2,'德国留学交流'),(260,98,2,'国家奖学金获得者'),(261,98,2,'CCTV传媒梦工坊副主席'),(262,98,2,'《网易早点》新闻评论员'),(263,98,2,'留学申请达人'),(264,99,2,'跨学校考研'),(265,99,2,'业余活动达人'),(266,100,2,'跨学校跨专业保研'),(267,100,2,'国家奖学金获得者'),(268,100,2,'外企offer'),(269,100,2,'金秋艺术节舞蹈大赛二等奖'),(270,101,2,'跨学校保研'),(271,101,2,'今传媒最佳学子奖'),(272,101,2,'互通国际传播奖学金'),(273,101,2,'湖北省优秀本科论文'),(274,102,2,'美国大学生数学竞赛二等奖'),(275,102,2,'新华都奖学金'),(276,102,2,'matlab达人'),(277,102,2,'众筹咖啡合伙人'),(278,120,2,'跨学校保研'),(279,120,2,'今传媒最佳学子奖'),(280,120,2,'互通国际传播奖学金'),(281,120,2,'湖北省优秀本科论文'),(282,121,2,'跨学校保研'),(283,121,2,'今传媒最佳学子奖'),(284,121,2,'互通国际传播奖学金'),(285,121,2,'湖北省优秀本科论文'),(286,122,2,'跨学校保研'),(287,122,2,'今传媒最佳学子奖'),(288,122,2,'互通国际传播奖学金'),(289,122,2,'湖北省优秀本科论文'),(290,125,2,'label1'),(291,125,2,'label2'),(292,125,2,'label3'),(293,125,2,'湖北省优秀本科论文'),(294,126,2,'跨学校保研'),(295,126,2,'今传媒最佳学子奖'),(296,126,2,'互通国际传播奖学金'),(297,126,2,'湖北省优秀本科论文'),(298,147,2,'（如跨学校保研，国家奖学金获得者，全国大学生数学竞赛一等奖，留学申请达人，演讲辩'),(300,151,2,'工艺工程师'),(301,153,2,'光学工程考研'),(302,153,2,'出国留学申请'),(303,154,2,'甲方乙方经验分享与创业心路'),(304,155,2,'心理咨询专家'),(305,155,2,'美食达人'),(306,155,2,'美食，旅游，登山，音乐戏剧欣赏，读书会'),(307,157,2,'创业失败者'),(308,157,2,'把妹那些事，师兄也知道'),(309,158,2,'法律援助'),(310,158,2,'挑战杯竞赛'),(311,161,2,'爱生活'),(312,163,2,'人无远虑 必有近忧'),(313,164,2,'男神'),(314,164,2,'资本家'),(315,164,2,'创业'),(316,169,2,'立志创业者'),(317,169,2,'享受生活者'),(318,169,2,'来自湖南的一头蛮牛'),(319,173,2,'跨专业保研'),(320,173,2,'学工保研'),(321,173,2,'慕课助教'),(322,175,2,'国家奖学金获得者'),(323,175,2,'全国大学生数学建模竞赛一等奖'),(324,180,2,'多面人生，多种尝试'),(325,188,2,'互联网公司offer'),(326,188,2,'本人获得国家心理咨询师三级考核证书，除了提供上述课程之外，在辅导的过程中也乐意就'),(327,189,2,'小商贩杀手'),(328,189,2,'乐观开朗，三观健康'),(329,193,2,'女博士'),(330,193,2,'人生导师'),(331,198,2,'学生工作爱好者'),(332,198,2,'辩论演讲法律人'),(333,198,2,'想做健全的法律人去体验人生的无限可能。期待交流，欢迎分享。'),(334,199,2,'三栖职业达人'),(335,200,2,'演讲朗诵爱好者'),(336,208,2,'科院女博士'),(337,208,2,'曾获国家奖学金'),(338,211,2,'国家奖学金获得者'),(339,211,2,'曾正经地科研过'),(340,211,2,'还超爱旅游和运动，乒乓球、羽毛球、游泳、跑步、登山…… 也时常探索一下厨艺，欢迎'),(341,214,2,'喜欢羽毛球'),(342,231,2,'美女学霸'),(343,231,2,'爱学习、爱生活、爱工作、乐分享、乐助人'),(344,234,2,'创业'),(345,235,2,'大学生数学竞赛赛区二等奖'),(346,235,2,'专业第一名，彭康奖学金获得者（本科硕班无国奖名额，该奖项是校级最高奖）'),(347,235,2,'多种志愿经历\r\n兼职经历\r\n'),(348,237,2,'经历多点~'),(349,240,2,'省优秀硕士论文'),(350,240,2,'国家奖学金'),(351,240,2,'爱读书，夜猫子'),(352,241,2,'国家奖学金获得者'),(353,241,2,'演讲高手'),(354,241,2,'研究生会主席，篮球队队长'),(355,243,2,'无需懂五线谱，一个月内教你三首钢琴曲'),(356,246,2,'优秀学生干部获得者'),(357,246,2,'职业发展规划者'),(358,246,2,'爱好健身，游泳，跑步， 登山，旅游等'),(359,248,2,'人称二逗'),(360,250,2,'留学申请'),(361,250,2,'大学及研究生规划'),(362,253,2,'GRE'),(363,253,2,'linux'),(364,258,2,'论学习的多样化表达'),(365,258,2,'冷笑话小能手'),(366,258,2,'譬如我对互联网的热爱是从盗号开始的。所以我们学习是为了应用。告诉你的都是最实用的'),(367,260,2,'国家奖学金'),(368,260,2,'励志奖学金'),(369,260,2,'周围有很多学霸。研霸，工作族，想知道什么，快告诉我'),(370,260,2,'国家奖学金'),(371,260,2,'励志奖学金'),(372,260,2,'周围有很多学霸。研霸，工作族，想知道什么，快告诉我'),(373,264,2,'跨学校保研'),(374,264,2,'电气工程男博士'),(375,264,2,'校园“非著名”主持人；健身房自虐狂；MUSE fan；和君商学院第八届学员'),(376,272,2,'跨专业'),(377,272,2,'靠谱的半个医生'),(378,273,2,'科研队伍里会主持的'),(379,273,2,'没想好'),(380,273,2,'会拉二胡'),(381,278,2,'事业单位考试小能手'),(382,278,2,'校一等奖学金'),(383,281,2,'算法设计'),(384,281,2,'考研心路历程'),(385,281,2,'无'),(386,282,2,'国家级奖学金获得者'),(387,283,2,'国家奖学金获得者'),(388,283,2,'志愿活动爱好者'),(389,284,2,'留学申请达人'),(390,285,2,'连续三年奖学金获得者'),(391,285,2,'国家级创新创业项目优秀结项'),(392,285,2,'爱分享，爱沟通，爱交流，爱生活。'),(393,289,2,'社会工作考研'),(394,289,2,'跨专业保研'),(395,290,2,'学霸，专业排名前5%'),(396,290,2,'创青春全国大学生创业竞赛银奖'),(397,290,2,'社会活动和实习达人'),(398,300,2,'走山看水！'),(399,300,2,'我很水，但我要逆袭，逆袭不了，这波并不亏！逆袭成功，哈哈哈！'),(400,304,2,'学生工作'),(401,304,2,'创业'),(402,304,2,'运动小能手'),(403,305,2,'性格好 有耐心 很认真'),(404,307,2,'青年领袖'),(405,307,2,'旅游达人'),(406,307,2,'身心灵修行者，禅修爱好者。'),(407,308,2,'创帝'),(408,308,2,'升仙'),(409,309,2,'英语达人'),(410,309,2,'主持演讲高手'),(411,313,2,'健身达人'),(412,313,2,'人生规划'),(413,313,2,'思考者型，理性分析型 combined witb 玩乐轻松型'),(414,315,2,'Ps达人'),(415,315,2,'城市规划人'),(416,315,2,'摄影前后期，手绘爱好者'),(417,317,2,'唐仲英德育奖学金获得者'),(418,317,2,'阅读达人'),(419,318,2,'留学学校信息全知道，带你体验真实的日本生活'),(420,318,2,'口语出色'),(421,319,2,'将赴剑桥大学攻读博士学位'),(422,322,2,'考公务员'),(423,327,2,'留学申请规划'),(424,327,2,'四川省优秀毕业生'),(425,330,2,'考研能手'),(426,330,2,'国旗卫士'),(427,332,2,'（如跨学校保研，国家奖学金获得者，全国大学生数学竞赛一等奖，留学申请达人，演讲辩'),(428,332,2,'（如跨学校保研，国家奖学金获得者，全国大学生数学竞赛一等奖，留学申请达人，演讲辩'),(429,142,2,'主持人，最佳辩手，面试达人'),(430,142,2,'工艺工程师'),(431,334,2,'全国大学生数学竞赛山东省一等奖'),(432,334,2,'光学工程考研'),(433,334,2,'出国留学申请'),(434,335,2,'10余年多领域跨界市场营销策划'),(435,335,2,'甲方乙方经验分享与创业心路'),(436,336,2,'解读心理能手'),(437,336,2,'心理咨询专家'),(438,336,2,'美食达人'),(439,338,2,'保研那些事，师兄都知道'),(440,338,2,'创业失败者'),(441,339,2,'民商法保研'),(442,339,2,'法律援助'),(443,339,2,'挑战杯竞赛'),(444,340,2,'国家奖学金获得者'),(445,142,2,'（如跨学校保研，国家奖学金获得者，全国大学生数学竞赛一等奖，留学申请达人，演讲辩'),(446,341,2,'平常人'),(447,341,2,'爱生活'),(448,343,2,'（如跨学校保研，国家奖学金获得者，全国大学生数学竞赛一等奖，留学申请达人，演讲辩'),(449,344,2,'篮球高手'),(450,344,2,'男神'),(451,344,2,'资本家'),(452,349,2,'跨学校跨地区考研者\r\n研究生全额奖学金获得者\r\n教师资格证获得者\r\n爱情心理达人'),(453,349,2,'立志创业者'),(454,349,2,'享受生活者'),(455,350,2,'跨学校保研'),(456,352,2,'英国留学申请达人，话剧表演'),(457,353,2,'跨学校保研'),(458,353,2,'跨专业保研'),(459,353,2,'学工保研'),(460,355,2,'跨学校保研，保研offer收割机'),(461,355,2,'国家奖学金获得者'),(462,355,2,'全国大学生数学建模竞赛一等奖'),(463,356,2,'（如跨学校保研，国家奖学金获得者，全国大学生数学竞赛一等奖，留学申请达人，演讲辩'),(464,357,2,'（如跨学校保研，国家奖学金获得者，全国大学生数学竞赛一等奖，留学申请达人，演讲辩'),(465,358,2,'（如跨学校保研，国家奖学金获得者，全国大学生数学竞赛一等奖，留学申请达人，演讲辩'),(466,360,2,'跨学校保研'),(467,361,2,'丰富工作经验，面试达人'),(468,362,2,'跨学校考研'),(469,364,2,'（如跨学校保研，国家奖学金获得者，全国大学生数学竞赛一等奖，留学申请达人，演讲辩'),(470,367,2,'有工作经历'),(471,369,2,'跨学校保研'),(472,369,2,'互联网公司offer'),(473,370,2,'见缝插针'),(474,370,2,'小商贩杀手'),(475,374,2,'跨校保研，国家奖学金，商业比赛达人，PPT小能手'),(476,374,2,'女博士'),(477,374,2,'人生导师'),(478,375,2,'（如跨学校保研，国家奖学金获得者，全国大学生数学竞赛一等奖，留学申请达人，演讲辩'),(479,377,2,'（如跨学校保研，国家奖学金获得者，全国大学生数学竞赛一等奖，留学申请达人，演讲辩'),(480,379,2,'跨校保研拿国奖'),(481,379,2,'学生工作爱好者'),(482,379,2,'辩论演讲法律人'),(483,380,2,'全能学霸'),(484,380,2,'三栖职业达人'),(485,381,2,'跨学校跨专业保研'),(486,386,2,'（如跨学校保研，国家奖学金获得者，全国大学生数学竞赛一等奖，留学申请达人，演讲辩'),(487,389,2,'珠宝鉴定师'),(488,389,2,'科院女博士'),(489,389,2,'曾获国家奖学金'),(490,390,2,'（如跨学校保研，国家奖学金获得者，全国大学生数学竞赛一等奖，留学申请达人，演讲辩'),(491,392,2,'跨学校保研'),(492,392,2,'国家奖学金获得者'),(493,392,2,'曾正经地科研过'),(494,393,2,'保研'),(495,394,2,'（如跨学校保研，国家奖学金获得者，全国大学生数学竞赛一等奖，留学申请达人，演讲辩'),(496,395,2,'跨学校保研，国家奖学金获得者，光电领域学术会议分享'),(497,397,2,'公考达人，演讲辩论高手，二级市场达人'),(498,399,2,'跨学校保研，国家奖学金获得者，全国挑战杯课外科研竞赛省奖获得者'),(499,404,2,'（如跨学校保研，国家奖学金获得者，全国大学生数学竞赛一等奖，留学申请达人，演讲辩'),(500,411,2,'（如跨学校保研，国家奖学金获得者，全国大学生数学竞赛一等奖，留学申请达人，演讲辩'),(501,412,2,'跨学校保研、校一等奖学金获得者、优秀毕业生'),(502,412,2,'美女学霸'),(503,415,2,'考研；雅思；CPA；'),(504,415,2,'创业'),(505,416,2,'跨学校保研'),(506,416,2,'大学生数学竞赛赛区二等奖'),(507,416,2,'专业第一名，彭康奖学金获得者（本科硕班无国奖名额，该奖项是校级最高奖）'),(508,417,2,'（如跨学校保研，国家奖学金获得者，全国大学生数学竞赛一等奖，留学申请达人，演讲辩'),(509,418,2,'----'),(510,420,2,'虚，就不写了'),(511,421,2,'中国法学会一等奖'),(512,421,2,'省优秀硕士论文'),(513,421,2,'国家奖学金'),(514,422,2,'跨学校保研'),(515,422,2,'国家奖学金获得者'),(516,422,2,'演讲高手'),(517,424,2,'（如跨学校保研，国家奖学金获得者，全国大学生数学竞赛一等奖，留学申请达人，演讲辩'),(518,425,2,'（如跨学校保研，国家奖学金获得者，全国大学生数学竞赛一等奖，留学申请达人，演讲辩'),(519,427,2,'创业中快乐生活'),(520,427,2,'优秀学生干部获得者'),(521,427,2,'职业发展规划者'),(522,429,2,'（如跨学校保研，国家奖学金获得者，全国大学生数学竞赛一等奖，留学申请达人，演讲辩'),(523,431,2,'跨校保研'),(524,431,2,'留学申请'),(525,431,2,'大学及研究生规划'),(526,432,2,'如跨学校保研'),(527,434,2,'跨学校保研'),(528,434,2,'GRE'),(529,434,2,'linux'),(530,435,2,'（如跨学校保研，国家奖学金获得者，全国大学生数学竞赛一等奖，留学申请达人，演讲辩'),(531,437,2,'创业 创客'),(532,439,2,'刷offer小助手'),(533,439,2,'论学习的多样化表达'),(534,439,2,'冷笑话小能手'),(535,440,2,'西北大学本科，后保研至北大。\r\n'),(536,442,2,'跨学校保研'),(537,442,2,'国家奖学金'),(538,442,2,'励志奖学金'),(539,442,2,'跨学校保研'),(540,442,2,'国家奖学金'),(541,442,2,'励志奖学金'),(542,443,2,'只是一枚学酥。'),(543,446,2,'中国科学院大学校学生会副主席'),(544,446,2,'跨学校保研'),(545,446,2,'电气工程男博士'),(546,449,2,'（如跨学校保研，国家奖学金获得者，全国大学生数学竞赛一等奖，留学申请达人，演讲辩'),(547,452,2,'（如跨学校保研，国家奖学金获得者，全国大学生数学竞赛一等奖，留学申请达人，演讲辩'),(548,142,2,'医疗问题解答小能手'),(549,142,2,'跨专业'),(550,454,2,'主持人里擅长科研的'),(551,454,2,'科研队伍里会主持的'),(552,454,2,'没想好'),(553,455,2,'跨学校保研，两次国家奖学金获得者，顶级期刊会议论文发表。'),(554,459,2,'跨学校保研'),(555,459,2,'事业单位考试小能手'),(556,459,2,'校一等奖学金'),(557,462,2,'三跨考研'),(558,462,2,'算法设计'),(559,462,2,'考研心路历程'),(560,464,2,'跨学校保研'),(561,464,2,'国家级奖学金获得者'),(562,464,2,'跨学校保研'),(563,464,2,'国家奖学金获得者'),(564,464,2,'志愿活动爱好者'),(565,465,2,'跨学校保研'),(566,465,2,'留学申请达人'),(567,466,2,'实现从211到985的保研跨越'),(568,466,2,'连续三年奖学金获得者'),(569,466,2,'国家级创新创业项目优秀结项'),(570,467,2,'科研圈那些事(论文、专利、软件著作权、书籍、标准、科研项目立项、国际合作、报奖)'),(571,468,2,'（如跨学校保研，国家奖学金获得者，全国大学生数学竞赛一等奖，留学申请达人，演讲辩'),(572,142,2,'（如跨学校保研，国家奖学金获得者，全国大学生数学竞赛一等奖，留学申请达人，演讲辩'),(573,470,2,'（如跨学校保研，国家奖学金获得者，全国大学生数学竞赛一等奖，留学申请达人，演讲辩'),(574,471,2,'北师大保研'),(575,471,2,'社会工作考研'),(576,471,2,'跨专业保研'),(577,472,2,'保研，国家奖学金获得者'),(578,472,2,'学霸，专业排名前5%'),(579,472,2,'创青春全国大学生创业竞赛银奖'),(580,473,2,'考研经验多'),(581,142,2,'（如跨学校保研，国家奖学金获得者，全国大学生数学竞赛一等奖，留学申请达人，演讲辩'),(582,481,2,'学渣逆袭党！'),(583,481,2,'走山看水！'),(584,485,2,'科研'),(585,485,2,'学生工作'),(586,485,2,'创业'),(587,147,2,'（如跨学校保研，国家奖学金获得者，全国大学生数学竞赛一等奖，留学申请达人，演讲辩'),(588,486,2,'（如跨学校保研，国家奖学金获得者，全国大学生数学竞赛一等奖，留学申请达人，演讲辩'),(589,487,2,'学生会主席'),(590,487,2,'青年领袖'),(591,487,2,'旅游达人'),(592,488,2,'模王'),(593,488,2,'创帝'),(594,488,2,'升仙'),(595,489,2,'金融精英'),(596,489,2,'英语达人'),(597,489,2,'主持演讲高手'),(598,493,2,'博士'),(599,493,2,'健身达人'),(600,493,2,'人生规划'),(601,494,2,'跨学校考研'),(602,495,2,'考研达人'),(603,495,2,'Ps达人'),(604,495,2,'城市规划人'),(605,497,2,'本院本专业保研'),(606,497,2,'唐仲英德育奖学金获得者'),(607,497,2,'阅读达人'),(608,498,2,'如跨学校保研，国家奖学金获得者'),(609,498,2,'留学学校信息全知道，带你体验真实的日本生活'),(610,498,2,'口语出色'),(611,499,2,'跨学校保研，国家奖学金获得者，留学申请达人'),(612,500,2,'（如跨学校保研，国家奖学金获得者，全国大学生数学竞赛一等奖，留学申请达人，演讲辩'),(613,501,2,'跨学校保研（如跨学校保研，国家奖学金获得者，全国大学生数学竞赛一等奖，留学申请达'),(614,503,2,'考研'),(615,503,2,'考公务员'),(616,507,2,'（如跨学校保研，国家奖学金获得者，全国大学生数学竞赛一等奖，留学申请达人，演讲辩'),(617,508,2,'环保工程师'),(618,508,2,'留学申请规划'),(619,508,2,'四川省优秀毕业生'),(620,511,2,'社工达人'),(621,511,2,'考研能手'),(622,511,2,'国旗卫士'),(623,143,2,'123'),(624,143,2,'456'),(625,143,2,'哈哈哈');
/*!40000 ALTER TABLE `p_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pc_homepage_sjs`
--

DROP TABLE IF EXISTS `pc_homepage_sjs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pc_homepage_sjs` (
  `id` int(11) NOT NULL,
  `order` int(11) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `order` (`order`),
  KEY `status` (`status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT=' 首页推荐师姐配置';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pc_homepage_sjs`
--

LOCK TABLES `pc_homepage_sjs` WRITE;
/*!40000 ALTER TABLE `pc_homepage_sjs` DISABLE KEYS */;
INSERT INTO `pc_homepage_sjs` VALUES (51,6,1),(266,1,1),(267,2,1),(288,3,1),(295,5,1),(299,4,1);
/*!40000 ALTER TABLE `pc_homepage_sjs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_app_sj`
--

DROP TABLE IF EXISTS `t_app_sj`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_app_sj` (
  `id` int(12) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL DEFAULT '0' COMMENT ' 用户ID',
  `ap_username` varchar(20) NOT NULL,
  `ap_gender` varchar(10) NOT NULL,
  `ap_school` varchar(60) NOT NULL,
  `ap_phone` varchar(20) NOT NULL,
  `ap_topic` varchar(60) NOT NULL,
  `ap_intro` text NOT NULL,
  `ap_openid` varchar(60) NOT NULL,
  `degree_pic` varchar(255) NOT NULL DEFAULT '' COMMENT '学生证或者学位证合影',
  `wechat` varchar(100) NOT NULL DEFAULT '' COMMENT '微信号',
  `student_num` varchar(50) NOT NULL COMMENT '学号',
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `user_id_2` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_app_sj`
--

LOCK TABLES `t_app_sj` WRITE;
/*!40000 ALTER TABLE `t_app_sj` DISABLE KEYS */;
INSERT INTO `t_app_sj` VALUES (14,0,'','','','','','','00','','',''),(15,0,'小洞','男','贝壳','13810246377','天风景区的','确是不是很','00','','',''),(16,0,'马羊','男','中科院计算所','15313751599','互联网思维','擅长组织','00','','',''),(17,0,'范子卿','男','ustb','13269387620','考研','非常厉害','00','','',''),(18,0,'马劲','男','华中科技大学','','','我知道的一切的一切','00','','',''),(19,0,'马劲','男','华中科技大学','18612291973','','','00','sj_app/14427301607054.jpeg','majin01',''),(20,0,'admin','男','华中科技大学','18612291973','','','00','sj_app/14428981009447.png','majin01',''),(21,150,'马劲','男','华中科技大学','18612291973','','','00','','majin01','U200713265'),(22,150,'马劲','男','华中科技大学','18612291973','','','00','','majin01','U200713265');
/*!40000 ALTER TABLE `t_app_sj` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_comment`
--

DROP TABLE IF EXISTS `t_comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_comment` (
  `id` int(12) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL COMMENT '订单id',
  `comment` tinyint(1) NOT NULL COMMENT '好评:1/中评:2/差评:3',
  `star_level` tinyint(1) NOT NULL COMMENT '星级',
  `content` text NOT NULL COMMENT '评价内容',
  `comment_crt_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `order_id` (`order_id`),
  KEY `comment` (`comment`),
  KEY `star_level` (`star_level`),
  KEY `comment_crt_time` (`comment_crt_time`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_comment`
--

LOCK TABLES `t_comment` WRITE;
/*!40000 ALTER TABLE `t_comment` DISABLE KEYS */;
INSERT INTO `t_comment` VALUES (20,212,2,4,'还不错','2015-06-23 00:05:23'),(21,214,1,4,'我们的','2015-06-24 02:03:48'),(22,215,1,5,'这样一来来','2015-06-24 02:04:04'),(23,216,1,5,'我们的生活方式的确','2015-06-24 02:04:54'),(24,225,1,5,'非常有才华的师兄，很有帮助','2015-06-26 17:34:18'),(25,248,1,5,'我们的生活方式','2015-06-29 23:57:15'),(26,249,2,5,'我们的生活方式和','2015-06-30 00:44:33'),(27,255,1,4,'还不错','2015-06-30 01:38:49'),(28,259,1,5,'很好','2015-07-03 18:53:37'),(30,271,1,5,'非常棒棒！','2015-07-12 13:26:57'),(31,297,1,5,'把','2015-07-16 16:32:18'),(34,313,2,5,'很好的师姐','2015-09-13 06:46:34'),(35,313,2,5,'很好的师姐','2015-09-13 06:51:39'),(36,312,2,4,'啦拉拉啦拉拉','2015-09-13 07:03:27'),(37,311,2,5,'我是来评价的','2015-09-13 07:04:38');
/*!40000 ALTER TABLE `t_comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_coupons`
--

DROP TABLE IF EXISTS `t_coupons`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_coupons` (
  `id` int(12) NOT NULL AUTO_INCREMENT,
  `coupon_code` varchar(80) NOT NULL COMMENT '优惠吗',
  `coupon_amount` int(11) NOT NULL COMMENT '兑换金额，单位：分',
  `coupon_binding` varchar(100) NOT NULL COMMENT '绑定条件（备用）',
  `coupon_crt_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_coupons`
--

LOCK TABLES `t_coupons` WRITE;
/*!40000 ALTER TABLE `t_coupons` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_coupons` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_intention`
--

DROP TABLE IF EXISTS `t_intention`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_intention` (
  `id` int(12) NOT NULL AUTO_INCREMENT COMMENT '想见id',
  `info_id` int(12) NOT NULL COMMENT '师姐id',
  `who_ac_id` int(12) NOT NULL COMMENT '谁想见',
  `hit_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '记录时间',
  PRIMARY KEY (`id`),
  KEY `info_id` (`info_id`),
  KEY `who_ac_id` (`who_ac_id`),
  KEY `hit_time` (`hit_time`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8 COMMENT='点赞、想约见';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_intention`
--

LOCK TABLES `t_intention` WRITE;
/*!40000 ALTER TABLE `t_intention` DISABLE KEYS */;
INSERT INTO `t_intention` VALUES (32,48,72,'2015-06-24 16:58:47'),(33,50,104,'2015-06-25 02:57:41'),(34,51,104,'2015-06-25 02:57:52'),(35,50,106,'2015-06-25 03:49:52'),(36,48,105,'2015-06-26 17:36:09'),(37,50,79,'2015-07-03 06:05:53'),(38,57,79,'2015-07-03 06:06:55'),(39,74,117,'2015-07-07 23:23:45'),(40,49,117,'2015-07-09 08:14:08'),(41,50,117,'2015-07-12 04:13:38'),(42,48,118,'2015-07-12 13:31:53'),(43,48,117,'2015-07-13 06:54:05'),(44,72,119,'2015-07-14 23:43:31'),(45,50,143,'2015-07-20 11:25:26'),(46,72,125,'2015-07-20 13:00:54'),(47,48,143,'2015-07-24 22:26:23'),(48,49,143,'2015-07-24 22:27:15'),(49,51,143,'2015-07-24 22:30:27'),(50,57,143,'2015-07-24 22:30:50'),(51,72,143,'2015-09-20 05:25:42');
/*!40000 ALTER TABLE `t_intention` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_mobile_swiper`
--

DROP TABLE IF EXISTS `t_mobile_swiper`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_mobile_swiper` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `swiper_name` varchar(40) DEFAULT NULL COMMENT '名称',
  `swiper_img` varchar(400) DEFAULT NULL COMMENT '图片名',
  `swiper_seq` int(5) DEFAULT NULL COMMENT '顺序',
  `swiper_src` varchar(400) DEFAULT NULL COMMENT '外部链接',
  `status` varchar(5) DEFAULT NULL,
  `swiper_desc` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_mobile_swiper`
--

LOCK TABLES `t_mobile_swiper` WRITE;
/*!40000 ALTER TABLE `t_mobile_swiper` DISABLE KEYS */;
INSERT INTO `t_mobile_swiper` VALUES (1,'一元约师姐','http://admin.shijiezhidao.com/static.shijiezhidao/uploads/img/acitivity-banner.png',1,'http://shijiezhidao.com/event/oneyuan','1','【一元约师姐】你约或者不约，师姐就在这里'),(2,'长按二维码关注','http://admin.shijiezhidao.com/static.shijiezhidao/uploads/img/acitivity-banner-2.png',2,'','1','长按指纹，关注“师姐知道”服务号');
/*!40000 ALTER TABLE `t_mobile_swiper` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_order`
--

DROP TABLE IF EXISTS `t_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_order` (
  `id` int(12) NOT NULL AUTO_INCREMENT COMMENT '订单id',
  `order_num` varchar(60) NOT NULL COMMENT '订单号',
  `course_id` int(12) NOT NULL COMMENT '课程ID',
  `sj_account_id` int(12) NOT NULL COMMENT '师姐account_id',
  `account_id` int(12) NOT NULL COMMENT '购买方的account_id',
  `payment_status` varchar(2) NOT NULL COMMENT '支付状态：00下单完成；02完成支付；03超时取消',
  `deal_with_status` varchar(2) NOT NULL COMMENT '处理状态：备用',
  `crt_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '订单创建时间',
  `payment_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '支付时间',
  `total_fee` int(11) NOT NULL COMMENT '金额，单位为“分”',
  `pay_price` int(11) NOT NULL COMMENT '实际支付',
  `comment_status` varchar(2) NOT NULL COMMENT '评论状态：00未见过，10已见过，01已经评论',
  `give_class_way` tinyint(1) NOT NULL COMMENT '上课方式：0为协商地点，1为网上授课',
  `type` tinyint(4) NOT NULL DEFAULT '1' COMMENT '类型1课程的2需求的',
  `demand_order_id` int(11) NOT NULL DEFAULT '0' COMMENT '如果是需求发布对应的订单id',
  `oneyuan_coupon_id` int(11) NOT NULL DEFAULT '0',
  `cancel_remark` varchar(255) NOT NULL DEFAULT '' COMMENT '取消订单的备注',
  `cancel_time` datetime DEFAULT NULL COMMENT '订单取消时间',
  `confirm_time` datetime DEFAULT NULL COMMENT '师姐确认时间',
  PRIMARY KEY (`id`),
  KEY `course_id` (`course_id`),
  KEY `sj_account_id` (`sj_account_id`),
  KEY `account_id` (`account_id`),
  KEY `order_num` (`order_num`),
  KEY `give_class_way` (`give_class_way`),
  KEY `payment_status` (`payment_status`),
  KEY `deal_with_status` (`deal_with_status`),
  KEY `crt_time` (`crt_time`),
  KEY `payment_time` (`payment_time`),
  KEY `comment_status` (`comment_status`),
  KEY `type` (`type`),
  KEY `demand_order_id` (`demand_order_id`)
) ENGINE=InnoDB AUTO_INCREMENT=328 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_order`
--

LOCK TABLES `t_order` WRITE;
/*!40000 ALTER TABLE `t_order` DISABLE KEYS */;
INSERT INTO `t_order` VALUES (212,'e1435044085433450',83,71,72,'02','00','2015-06-22 23:21:25','0000-00-00 00:00:00',10000,0,'01',0,1,0,0,'',NULL,NULL),(213,'e1435045532792822',86,73,72,'02','00','2015-06-22 23:45:32','0000-00-00 00:00:00',10000,0,'00',0,1,0,0,'',NULL,NULL),(214,'e1435140068387952',83,71,72,'02','00','2015-06-24 02:01:08','0000-00-00 00:00:00',10000,0,'01',0,1,0,0,'',NULL,NULL),(215,'e1435140092814777',83,71,72,'02','00','2015-06-24 02:01:32','0000-00-00 00:00:00',10000,0,'01',0,1,0,0,'',NULL,NULL),(216,'e1435140096666667',83,71,72,'02','00','2015-06-24 02:01:36','0000-00-00 00:00:00',10000,0,'01',0,1,0,0,'',NULL,NULL),(217,'e1435140103252179',83,71,72,'02','00','2015-06-24 02:01:43','0000-00-00 00:00:00',10000,0,'00',0,1,0,0,'',NULL,NULL),(218,'e1435140107091154',83,71,72,'02','00','2015-06-24 02:01:47','0000-00-00 00:00:00',10000,0,'00',0,1,0,0,'',NULL,NULL),(219,'e1435140113402274',83,71,72,'02','00','2015-06-24 02:01:53','0000-00-00 00:00:00',10000,0,'00',0,1,0,0,'',NULL,NULL),(220,'e1435229604029884',84,71,104,'00','00','2015-06-25 02:53:24','0000-00-00 00:00:00',10000,0,'00',1,1,0,0,'',NULL,NULL),(221,'e1435229625871335',84,71,104,'00','00','2015-06-25 02:53:45','0000-00-00 00:00:00',10000,0,'00',1,1,0,0,'',NULL,NULL),(222,'e1435229631087674',84,71,104,'00','00','2015-06-25 02:53:51','0000-00-00 00:00:00',10000,0,'00',1,1,0,0,'',NULL,NULL),(223,'e1435229637260879',84,71,104,'00','00','2015-06-25 02:53:57','0000-00-00 00:00:00',10000,0,'00',1,1,0,0,'',NULL,NULL),(224,'e1435229760383152',89,74,104,'00','00','2015-06-25 02:56:00','0000-00-00 00:00:00',10000,0,'00',0,1,0,0,'',NULL,NULL),(225,'e1435230755521971',83,71,105,'02','00','2015-06-25 03:12:35','0000-00-00 00:00:00',10000,0,'01',0,1,0,0,'',NULL,NULL),(226,'e1435230772711178',83,71,105,'00','00','2015-06-25 03:12:52','0000-00-00 00:00:00',10000,0,'00',0,1,0,0,'',NULL,NULL),(227,'e1435230778814897',83,71,105,'00','00','2015-06-25 03:12:58','0000-00-00 00:00:00',10000,0,'00',0,1,0,0,'',NULL,NULL),(228,'e1435230784873062',83,71,105,'00','00','2015-06-25 03:13:04','0000-00-00 00:00:00',10000,0,'00',0,1,0,0,'',NULL,NULL),(229,'e1435303683658881',117,87,107,'00','00','2015-06-25 23:28:03','0000-00-00 00:00:00',10000,0,'00',0,1,0,0,'',NULL,NULL),(230,'e1435303892848238',142,99,107,'00','00','2015-06-25 23:31:32','0000-00-00 00:00:00',10000,0,'00',0,1,0,0,'',NULL,NULL),(231,'e1435319311353635',100,79,72,'00','00','2015-06-26 03:48:31','0000-00-00 00:00:00',10000,0,'00',1,1,0,0,'',NULL,NULL),(232,'e1435319662933223',83,71,105,'00','00','2015-06-26 03:54:22','0000-00-00 00:00:00',10000,0,'00',0,1,0,0,'',NULL,NULL),(233,'e1435319665122169',83,71,105,'00','00','2015-06-26 03:54:25','0000-00-00 00:00:00',10000,0,'00',0,1,0,0,'',NULL,NULL),(234,'e1435319673312997',83,71,105,'00','00','2015-06-26 03:54:33','0000-00-00 00:00:00',10000,0,'00',0,1,0,0,'',NULL,NULL),(235,'e1435319690791938',83,71,105,'00','00','2015-06-26 03:54:50','0000-00-00 00:00:00',10000,0,'00',0,1,0,0,'',NULL,NULL),(236,'e1435319726604954',90,75,105,'00','00','2015-06-26 03:55:26','0000-00-00 00:00:00',10000,0,'00',0,1,0,0,'',NULL,NULL),(237,'e1435319745231816',90,75,105,'00','00','2015-06-26 03:55:45','0000-00-00 00:00:00',10000,0,'00',0,1,0,0,'',NULL,NULL),(238,'e1435321731243391',86,73,105,'00','00','2015-06-26 04:28:51','0000-00-00 00:00:00',10000,0,'00',1,1,0,0,'',NULL,NULL),(239,'e1435369273830393',83,71,105,'00','00','2015-06-26 17:41:13','0000-00-00 00:00:00',10000,0,'00',0,1,0,0,'',NULL,NULL),(240,'e1435369310492491',92,76,105,'00','00','2015-06-26 17:41:50','0000-00-00 00:00:00',10000,0,'00',0,1,0,0,'',NULL,NULL),(241,'e1435369414905906',119,88,105,'00','00','2015-06-26 17:43:34','0000-00-00 00:00:00',10000,0,'00',0,1,0,0,'',NULL,NULL),(242,'e1435369439029424',94,77,105,'00','00','2015-06-26 17:43:59','0000-00-00 00:00:00',10000,0,'00',0,1,0,0,'',NULL,NULL),(243,'e1435455403521837',83,71,72,'00','00','2015-06-27 17:36:43','0000-00-00 00:00:00',10000,0,'00',1,1,0,0,'',NULL,NULL),(244,'e1435489259495969',90,75,72,'00','00','2015-06-28 03:00:59','0000-00-00 00:00:00',10000,0,'00',0,1,0,0,'',NULL,NULL),(245,'e1435504150701336',97,78,105,'00','00','2015-06-28 07:09:10','0000-00-00 00:00:00',10000,0,'00',0,1,0,0,'',NULL,NULL),(246,'e1435504207142088',108,83,105,'00','00','2015-06-28 07:10:07','0000-00-00 00:00:00',10000,0,'00',0,1,0,0,'',NULL,NULL),(247,'e1435631376180829',89,74,72,'00','00','2015-06-29 18:29:36','0000-00-00 00:00:00',5000,0,'00',1,1,0,0,'',NULL,NULL),(248,'e1435650458481164',86,73,71,'02','00','2015-06-29 23:47:38','0000-00-00 00:00:00',12000,0,'01',0,1,0,0,'',NULL,NULL),(249,'e1435653831100681',89,74,109,'02','00','2015-06-30 00:43:51','0000-00-00 00:00:00',12000,0,'01',0,1,0,0,'',NULL,NULL),(250,'e1435655375944600',83,71,71,'00','00','2015-06-30 01:09:35','0000-00-00 00:00:00',5000,0,'00',1,1,0,0,'',NULL,NULL),(251,'e1435655407823303',83,71,71,'00','00','2015-06-30 01:10:07','0000-00-00 00:00:00',5000,0,'00',1,1,0,0,'',NULL,NULL),(252,'e1435655457492466',87,73,71,'00','00','2015-06-30 01:10:57','0000-00-00 00:00:00',5000,0,'00',1,1,0,0,'',NULL,NULL),(253,'e1435655527538994',86,73,110,'00','00','2015-06-30 01:12:07','0000-00-00 00:00:00',12000,0,'00',0,1,0,0,'',NULL,NULL),(254,'e1435655636788289',87,73,110,'00','00','2015-06-30 01:13:56','0000-00-00 00:00:00',12000,0,'00',0,1,0,0,'',NULL,NULL),(255,'e1435657091259384',86,73,111,'02','00','2015-06-30 01:38:11','0000-00-00 00:00:00',12000,0,'01',0,1,0,0,'',NULL,NULL),(256,'e1435659348480882',101,79,105,'00','00','2015-06-30 02:15:48','0000-00-00 00:00:00',5000,0,'00',1,1,0,0,'',NULL,NULL),(257,'e1435661114028500',84,71,111,'00','00','2015-06-30 02:45:14','0000-00-00 00:00:00',12000,0,'00',0,1,0,0,'',NULL,NULL),(258,'e1435932378059318',89,74,79,'00','00','2015-07-03 06:06:18','0000-00-00 00:00:00',5000,0,'00',1,1,0,0,'',NULL,NULL),(259,'e1435978042831084',83,71,115,'02','00','2015-07-03 18:47:22','0000-00-00 00:00:00',12000,0,'01',0,1,0,0,'',NULL,NULL),(260,'e1435978052015605',83,71,115,'00','00','2015-07-03 18:47:32','0000-00-00 00:00:00',12000,0,'00',0,1,0,0,'',NULL,NULL),(261,'e1435978058499734',83,71,115,'00','00','2015-07-03 18:47:38','0000-00-00 00:00:00',12000,0,'00',0,1,0,0,'',NULL,NULL),(262,'e1435988731371440',83,71,116,'00','00','2015-07-03 21:45:31','0000-00-00 00:00:00',12000,0,'00',0,1,0,0,'',NULL,NULL),(263,'e1435988738534544',83,71,116,'00','00','2015-07-03 21:45:38','0000-00-00 00:00:00',12000,0,'00',0,1,0,0,'',NULL,NULL),(264,'e1435988743782556',83,71,116,'00','00','2015-07-03 21:45:43','0000-00-00 00:00:00',12000,0,'00',0,1,0,0,'',NULL,NULL),(265,'e1436060537281682',134,96,107,'00','00','2015-07-04 17:42:17','0000-00-00 00:00:00',12000,0,'00',0,1,0,0,'',NULL,NULL),(266,'e1436168671717790',83,71,117,'00','00','2015-07-05 23:44:31','0000-00-00 00:00:00',12000,0,'00',0,1,0,0,'',NULL,NULL),(267,'e1436169880988172',83,71,117,'00','00','2015-07-06 00:04:40','0000-00-00 00:00:00',12000,0,'00',0,1,0,0,'',NULL,NULL),(268,'e1436169908511564',83,71,117,'00','00','2015-07-06 00:05:08','0000-00-00 00:00:00',12000,0,'00',0,1,0,0,'',NULL,NULL),(269,'e1436169912337868',83,71,117,'00','00','2015-07-06 00:05:12','0000-00-00 00:00:00',12000,0,'00',0,1,0,0,'',NULL,NULL),(270,'e1436237548378910',89,74,117,'03','00','2015-07-06 18:52:28','0000-00-00 00:00:00',12000,0,'00',0,1,0,0,'',NULL,NULL),(271,'e1436239674478870',86,73,118,'02','00','2015-07-06 19:27:54','0000-00-00 00:00:00',12000,0,'01',0,1,0,0,'',NULL,NULL),(272,'e1436262052467807',86,73,117,'02','00','2015-07-05 01:40:52','0000-00-00 00:00:00',12000,0,'00',0,1,0,0,'',NULL,NULL),(273,'e1436262468783179',94,77,117,'00','00','2015-07-07 01:47:48','0000-00-00 00:00:00',12000,0,'00',0,1,0,0,'',NULL,NULL),(274,'e1436277023462539',83,71,117,'00','00','2015-07-07 05:50:23','0000-00-00 00:00:00',12000,0,'00',0,1,0,0,'',NULL,NULL),(275,'e1436279221099964',84,71,117,'00','00','2015-07-07 06:27:01','0000-00-00 00:00:00',5000,0,'00',1,1,0,0,'',NULL,NULL),(276,'e1436313645588482',87,73,116,'00','00','2015-07-07 16:00:45','0000-00-00 00:00:00',12000,0,'00',0,1,0,0,'',NULL,NULL),(277,'e1436316299664120',83,71,116,'00','00','2015-07-07 16:44:59','0000-00-00 00:00:00',12000,0,'00',0,1,0,0,'',NULL,NULL),(278,'e1436316304036478',83,71,116,'02','00','2015-07-07 16:45:04','0000-00-00 00:00:00',5000,0,'01',1,1,0,0,'',NULL,NULL),(279,'e1436316697263676',83,71,116,'02','00','2015-07-07 16:51:37','0000-00-00 00:00:00',5000,0,'10',1,1,0,0,'',NULL,NULL),(280,'e1436316799269845',84,71,116,'00','00','2015-07-07 16:53:19','0000-00-00 00:00:00',5000,0,'00',1,1,0,0,'',NULL,NULL),(281,'e1436340239918799',140,98,117,'00','00','2015-07-07 23:23:59','0000-00-00 00:00:00',12000,0,'00',0,1,0,0,'',NULL,NULL),(282,'e1436355079892958',106,81,104,'00','00','2015-07-08 03:31:19','0000-00-00 00:00:00',12000,0,'00',0,1,0,0,'',NULL,NULL),(283,'e1436355218754419',83,71,116,'00','00','2015-07-08 03:33:38','0000-00-00 00:00:00',12000,0,'00',0,1,0,0,'',NULL,NULL),(284,'e1436355264121101',83,71,116,'00','00','2015-07-08 03:34:24','0000-00-00 00:00:00',12000,0,'00',0,1,0,0,'',NULL,NULL),(285,'e1436370522787989',139,98,117,'00','00','2015-07-08 15:48:42','0000-00-00 00:00:00',12000,0,'00',0,1,0,0,'',NULL,NULL),(286,'e1436429654731527',86,73,117,'00','00','2015-07-09 08:14:14','0000-00-00 00:00:00',12000,0,'00',0,1,0,0,'',NULL,NULL),(287,'e1436512397831578',86,73,116,'00','00','2015-07-10 07:13:17','0000-00-00 00:00:00',12000,0,'00',0,1,0,0,'',NULL,NULL),(288,'e1436530513916394',90,75,117,'00','00','2015-07-10 12:15:13','0000-00-00 00:00:00',12000,0,'00',0,1,0,0,'',NULL,NULL),(289,'e1436674428497154',89,74,117,'00','00','2015-07-12 04:13:48','0000-00-00 00:00:00',12000,0,'00',0,1,0,0,'',NULL,NULL),(290,'e1436768068613728',86,73,117,'00','00','2015-07-13 06:14:28','0000-00-00 00:00:00',12000,0,'00',0,1,0,0,'',NULL,NULL),(291,'e1436967187627171',92,76,104,'00','00','2015-07-15 13:33:07','0000-00-00 00:00:00',12000,0,'00',0,1,0,0,'',NULL,NULL),(292,'e1436968182517041',86,73,116,'00','00','2015-07-15 13:49:42','0000-00-00 00:00:00',12000,0,'00',0,1,0,0,'',NULL,NULL),(293,'e1437063472381103',151,121,121,'00','00','2015-07-16 16:17:52','0000-00-00 00:00:00',12000,0,'00',0,1,0,0,'',NULL,NULL),(294,'e1437063488947712',134,96,121,'00','00','2015-07-16 16:18:08','0000-00-00 00:00:00',12000,0,'00',0,1,0,0,'',NULL,NULL),(295,'e1437063508854136',83,71,121,'00','00','2015-07-16 16:18:28','0000-00-00 00:00:00',12000,0,'00',0,1,0,0,'',NULL,NULL),(296,'e1437063585513072',83,71,123,'00','00','2015-07-16 16:19:45','0000-00-00 00:00:00',12000,0,'00',0,1,0,0,'',NULL,NULL),(297,'e1437063609037385',151,121,123,'02','00','2015-07-16 16:20:09','0000-00-00 00:00:00',12000,0,'01',0,1,0,0,'',NULL,NULL),(298,'e1437063627744148',151,121,123,'00','00','2015-07-16 16:20:27','0000-00-00 00:00:00',12000,0,'00',0,1,0,0,'',NULL,NULL),(299,'e1437095791612252',83,71,104,'00','00','2015-07-17 01:16:31','0000-00-00 00:00:00',5000,0,'00',1,1,0,0,'',NULL,NULL),(300,'e1437137476987981',151,121,123,'02','00','2015-07-17 12:51:16','0000-00-00 00:00:00',12000,0,'00',0,1,0,0,'',NULL,NULL),(301,'e1437137824740209',83,71,121,'00','00','2015-07-17 12:57:04','0000-00-00 00:00:00',12000,0,'00',0,1,0,0,'',NULL,NULL),(302,'e1437137863950373',86,73,123,'00','00','2015-07-17 12:57:43','0000-00-00 00:00:00',12000,0,'00',0,1,0,0,'',NULL,NULL),(303,'e1437137881667439',83,71,123,'00','00','2015-07-17 12:58:01','0000-00-00 00:00:00',12000,0,'00',0,1,0,0,'',NULL,NULL),(304,'e1437137972842103',83,71,123,'00','00','2015-07-17 12:59:32','0000-00-00 00:00:00',12000,0,'00',0,1,0,0,'',NULL,NULL),(305,'e1437396940425402',83,71,125,'00','00','2015-07-20 12:55:40','0000-00-00 00:00:00',12000,0,'00',0,1,0,0,'',NULL,NULL),(306,'e1437396946498389',83,71,125,'00','00','2015-07-20 12:55:46','0000-00-00 00:00:00',12000,0,'00',0,1,0,0,'',NULL,NULL),(307,'e1437396965736598',83,71,125,'00','00','2015-07-20 12:56:05','0000-00-00 00:00:00',12000,0,'00',0,1,0,0,'',NULL,NULL),(308,'e1437397784914159',155,125,125,'02','00','2015-07-20 13:09:44','0000-00-00 00:00:00',12000,0,'00',0,1,0,0,'',NULL,NULL),(309,'e1437397955551317',155,125,125,'00','00','2015-07-20 13:12:35','0000-00-00 00:00:00',12000,0,'00',0,1,0,0,'',NULL,NULL),(310,'e1437774755926126',126,92,143,'00','00','2015-07-24 21:52:35','0000-00-00 00:00:00',12000,0,'00',0,1,0,0,'',NULL,NULL),(311,'e1437871161971279',84,71,143,'02','00','2015-07-26 00:39:21','2015-09-12 16:00:00',12000,0,'01',0,1,0,0,'',NULL,NULL),(312,'e1440835828885425',84,71,143,'04','00','2015-08-29 08:10:28','2015-09-12 16:00:00',12000,0,'01',0,1,0,0,'',NULL,'2015-10-07 19:45:19'),(313,'e1440835954414168',83,71,143,'03','00','2015-08-29 08:12:34','2015-09-12 16:00:00',12000,0,'01',0,1,0,0,'','2015-10-07 19:29:46',NULL),(314,'e1440836004905385',83,71,143,'03','00','2015-08-29 08:13:24','2015-09-12 16:00:00',12000,0,'00',0,1,0,0,'','2015-10-07 19:29:35',NULL),(315,'e1441631949288126',84,71,143,'00','00','2015-09-07 13:19:09','0000-00-00 00:00:00',5000,0,'00',1,1,0,0,'',NULL,NULL),(316,'e1441632004271547',84,71,143,'00','00','2015-09-07 13:20:04','0000-00-00 00:00:00',12000,0,'00',0,1,0,0,'',NULL,NULL),(317,'e1442726502184175',457,71,143,'00','00','2015-09-20 05:21:42','0000-00-00 00:00:00',10000,0,'00',0,1,0,0,'',NULL,NULL),(318,'e1442742211988785',3,71,143,'00','00','2015-09-20 09:43:31','0000-00-00 00:00:00',20000,0,'00',1,1,0,0,'',NULL,NULL),(319,'e1442742350221239',3,71,143,'00','00','2015-09-20 09:45:50','0000-00-00 00:00:00',20000,0,'00',1,2,0,0,'',NULL,NULL),(320,'e1442742698626917',3,71,143,'03','00','2015-09-20 09:51:38','2015-09-20 10:42:10',20000,0,'00',1,2,4,0,'','2015-10-07 19:22:12',NULL),(321,'e1442742951589251',3,71,143,'00','00','2015-09-20 09:55:51','0000-00-00 00:00:00',20000,0,'00',1,2,4,0,'',NULL,NULL),(322,'e1442932228265376',457,71,143,'00','00','2015-09-22 14:30:28','0000-00-00 00:00:00',10000,100,'00',0,1,0,0,'',NULL,NULL),(323,'e1442932498691257',457,71,143,'00','00','2015-09-22 14:34:58','0000-00-00 00:00:00',10000,100,'00',0,1,0,0,'',NULL,NULL),(324,'e1442932560334784',457,71,143,'00','00','2015-09-22 14:36:00','0000-00-00 00:00:00',10000,10000,'00',0,1,0,0,'',NULL,NULL),(325,'e1442933706482409',457,71,143,'00','00','2015-09-22 14:55:06','0000-00-00 00:00:00',10000,100,'00',0,1,0,198,'',NULL,NULL),(326,'e1443251723655816',406,142,143,'00','00','2015-09-26 07:15:23','0000-00-00 00:00:00',12000,12000,'00',0,1,0,0,'',NULL,NULL),(327,'e1443251779973717',308,334,143,'00','00','2015-09-26 07:16:19','0000-00-00 00:00:00',12000,12000,'00',0,1,0,0,'',NULL,NULL);
/*!40000 ALTER TABLE `t_order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trade_recharges`
--

DROP TABLE IF EXISTS `trade_recharges`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `trade_recharges` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `status` tinyint(4) NOT NULL COMMENT '状态0新建1pending2已支付3已取消',
  `user_id` int(11) NOT NULL COMMENT '用户ID',
  `trans_id` varchar(32) COLLATE utf8_unicode_ci NOT NULL COMMENT '充值交易号类型_id',
  `time` datetime NOT NULL COMMENT '充值订单创建时间',
  `pay_time` datetime DEFAULT NULL COMMENT '实际支付时间',
  `amount` bigint(20) NOT NULL COMMENT '充值金额',
  `ua_type` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'ua类型',
  `type` tinyint(4) NOT NULL DEFAULT '0' COMMENT '充值通道（待用）',
  `remark` varchar(255) CHARACTER SET utf8 NOT NULL COMMENT '备注',
  PRIMARY KEY (`id`),
  UNIQUE KEY `trans_id` (`trans_id`),
  KEY `status` (`status`),
  KEY `user_id` (`user_id`),
  KEY `time` (`time`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trade_recharges`
--

LOCK TABLES `trade_recharges` WRITE;
/*!40000 ALTER TABLE `trade_recharges` DISABLE KEYS */;
INSERT INTO `trade_recharges` VALUES (1,0,143,'e1440835828885425','0000-00-00 00:00:00',NULL,12000,1,0,'订单e1440835828885425对应充值订单'),(2,0,143,'e1440835954414168','0000-00-00 00:00:00',NULL,12000,1,0,'订单e1440835954414168对应充值订单'),(3,0,143,'e1440836004905385','0000-00-00 00:00:00',NULL,12000,1,0,'订单e1440836004905385对应充值订单'),(4,0,143,'recharge_4','2015-08-30 17:34:22',NULL,9995,1,1,''),(5,0,143,'recharge_5','2015-08-30 17:44:40',NULL,9995,1,1,''),(6,0,143,'recharge_6','2015-08-30 17:45:15',NULL,9995,1,1,''),(7,0,143,'recharge_7','2015-08-30 17:46:35',NULL,9995,1,1,''),(8,0,143,'recharge_8','2015-08-30 17:47:51',NULL,9995,1,1,''),(9,0,143,'recharge_9','2015-08-30 17:48:58',NULL,9995,1,1,''),(10,0,150,'recharge_10','2015-08-30 23:44:32',NULL,100,1,1,''),(11,0,150,'recharge_11','2015-08-30 23:44:57',NULL,100,1,1,''),(12,0,143,'order_e1441631949288126','2015-09-07 21:19:09',NULL,5000,1,0,'订单e1441631949288126对应充值订单'),(13,0,143,'order_e1441632004271547','2015-09-07 21:20:04',NULL,12000,1,0,'订单e1441632004271547对应充值订单'),(14,0,143,'order_e1442726502184175','2015-09-20 13:21:42',NULL,10000,1,0,'订单e1442726502184175对应充值订单'),(15,0,143,'order_e1442742211988785','2015-09-20 17:43:31',NULL,20000,1,0,'订单e1442742211988785对应充值订单'),(16,0,143,'order_e1442742350221239','2015-09-20 17:45:50',NULL,20000,1,0,'订单e1442742350221239对应充值订单'),(17,0,143,'order_e1442742698626917','2015-09-20 17:51:38',NULL,20000,1,0,'订单e1442742698626917对应充值订单'),(18,0,143,'order_e1442742951589251','2015-09-20 17:55:51',NULL,20000,1,0,'订单e1442742951589251对应充值订单'),(19,0,143,'order_e1442932228265376','2015-09-22 22:30:28',NULL,100,1,0,'订单e1442932228265376对应充值订单'),(20,0,143,'order_e1442932498691257','2015-09-22 22:34:58',NULL,100,1,0,'订单e1442932498691257对应充值订单'),(21,0,143,'order_e1442932560334784','2015-09-22 22:36:00',NULL,10000,1,0,'订单e1442932560334784对应充值订单'),(22,0,143,'order_e1442933706482409','2015-09-22 22:55:06',NULL,100,1,0,'订单e1442933706482409对应充值订单'),(23,0,143,'order_e1443251723655816','2015-09-26 15:15:23',NULL,12000,1,0,'订单e1443251723655816对应充值订单'),(24,0,143,'order_e1443251779973717','2015-09-26 15:16:19',NULL,12000,1,0,'订单e1443251779973717对应充值订单');
/*!40000 ALTER TABLE `trade_recharges` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trade_withdraws`
--

DROP TABLE IF EXISTS `trade_withdraws`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `trade_withdraws` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `status` tinyint(4) NOT NULL COMMENT '状态0新建2完成3取消4银行退回',
  `user_id` int(11) NOT NULL COMMENT '用户ID',
  `time` datetime NOT NULL COMMENT '提现订单创建时间',
  `pay_time` datetime DEFAULT NULL COMMENT '提现支付时间',
  `amount` bigint(20) NOT NULL COMMENT '提现金额',
  `ua_type` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'ua类型',
  `remark` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT '备注',
  PRIMARY KEY (`id`),
  KEY `status` (`status`),
  KEY `user_id` (`user_id`),
  KEY `time` (`time`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trade_withdraws`
--

LOCK TABLES `trade_withdraws` WRITE;
/*!40000 ALTER TABLE `trade_withdraws` DISABLE KEYS */;
INSERT INTO `trade_withdraws` VALUES (3,3,143,'2015-08-30 18:17:18','2015-09-24 15:40:48',9995,1,''),(4,2,143,'2015-08-30 18:23:02','2015-09-24 15:41:54',2000,1,''),(5,2,143,'2015-09-24 15:52:28','2015-09-24 16:01:39',1001,1,''),(6,2,143,'2015-09-24 16:08:34','2015-09-24 16:14:05',1001,1,'');
/*!40000 ALTER TABLE `trade_withdraws` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trades`
--

DROP TABLE IF EXISTS `trades`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `trades` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL COMMENT '用户ID',
  `type` tinyint(4) NOT NULL COMMENT '流水类型',
  `time` datetime NOT NULL COMMENT '交易时间',
  `amount` bigint(20) NOT NULL COMMENT '交易金额, 负数表示余额减少',
  `balance` bigint(20) NOT NULL COMMENT '交易后余额',
  `remark` text COLLATE utf8_unicode_ci NOT NULL COMMENT '备注，记录信息',
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `type` (`type`),
  KEY `time` (`time`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='交易流水';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trades`
--

LOCK TABLES `trades` WRITE;
/*!40000 ALTER TABLE `trades` DISABLE KEYS */;
INSERT INTO `trades` VALUES (1,143,3,'2015-09-05 19:52:09',-100,12345,'聊天计费, 聊天记录id: 34'),(2,143,3,'2015-09-05 19:58:59',-100,12345,'聊天计费, 聊天记录id: 35'),(3,71,4,'0000-00-00 00:00:00',12000,36345,'被约见酬劳, 订单ID: 313'),(4,71,4,'2015-09-13 15:03:27',12000,48345,'被约见酬劳, 订单ID: 312'),(5,71,4,'2015-09-13 15:04:38',12000,60345,'被约见酬劳, 订单ID: 311'),(6,143,2,'2015-09-20 18:42:10',-20000,12345,'用户下单课程, 订单号320'),(8,143,3,'2015-09-23 16:22:35',-100,13245,'聊天计费, 聊天记录id: 60'),(9,332,5,'2015-09-23 16:22:35',100,100,'聊天收入, 聊天记录id: 60'),(10,143,3,'2015-09-23 16:31:05',-100,13145,'聊天计费, 聊天记录id: 62'),(11,332,5,'2015-09-23 16:31:05',100,200,'聊天收入, 聊天记录id: 62'),(12,143,6,'2015-09-24 15:41:54',-2000,11145,'用户143 提现'),(13,143,6,'2015-09-24 16:01:39',-1001,10144,'用户143 提现'),(14,143,6,'2015-09-24 16:14:05',-1001,9143,'用户143 提现');
/*!40000 ALTER TABLE `trades` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wx_accounts`
--

DROP TABLE IF EXISTS `wx_accounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wx_accounts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0: 正常, 1: 禁用',
  `type` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0: 订阅号 1: 服务号',
  `wx_id` varchar(128) COLLATE utf8_unicode_ci NOT NULL COMMENT '原始id',
  `token` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `app_id` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `app_secret` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `desc` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '描述',
  `menu` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `wx_id` (`wx_id`),
  UNIQUE KEY `app_id` (`app_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wx_accounts`
--

LOCK TABLES `wx_accounts` WRITE;
/*!40000 ALTER TABLE `wx_accounts` DISABLE KEYS */;
INSERT INTO `wx_accounts` VALUES (1,0,1,'gh_3627d7f01b70','f7dfd08928bf5647de411553b627da71','wxe76ffe92eae4295b','63e12ffb344e432ba9df8d0771c1fb23','师姐知道服务号',NULL),(2,0,0,'gh_5a79a7f07044','f7dfd08928bf5647de411553b627da71','wxb33d16707a17097a','a99c4ac3e4cf0dc28c3c9fb4e6c4cfbf ','师姐知道订阅号',NULL);
/*!40000 ALTER TABLE `wx_accounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wx_channel_info`
--

DROP TABLE IF EXISTS `wx_channel_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wx_channel_info` (
  `id` int(11) NOT NULL COMMENT '渠道号',
  `status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0: 正常, 1: 禁用',
  `expire_type` tinyint(4) NOT NULL DEFAULT '0',
  `scene_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `qrcode_ticket` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `qrcode_url` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT '返回的url',
  `expire_seconds` int(11) DEFAULT '1800' COMMENT '过期时间 0表示不过期',
  `time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`),
  KEY `status` (`status`),
  KEY `expire_type` (`expire_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wx_channel_info`
--

LOCK TABLES `wx_channel_info` WRITE;
/*!40000 ALTER TABLE `wx_channel_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `wx_channel_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wx_connects`
--

DROP TABLE IF EXISTS `wx_connects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wx_connects` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `time` datetime NOT NULL,
  `user_id` int(11) NOT NULL,
  `wx_openid` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `prj_subscribe` int(1) DEFAULT '0',
  `wx_subscribe` int(1) DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`),
  UNIQUE KEY `wx_openid` (`wx_openid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wx_connects`
--

LOCK TABLES `wx_connects` WRITE;
/*!40000 ALTER TABLE `wx_connects` DISABLE KEYS */;
/*!40000 ALTER TABLE `wx_connects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wx_openids`
--

DROP TABLE IF EXISTS `wx_openids`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wx_openids` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `wx_id` varchar(128) COLLATE utf8_unicode_ci NOT NULL COMMENT '服务号微信id',
  `wx_openid` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT '微信openid',
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `source` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_wxid_openid` (`wx_id`,`wx_openid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wx_openids`
--

LOCK TABLES `wx_openids` WRITE;
/*!40000 ALTER TABLE `wx_openids` DISABLE KEYS */;
/*!40000 ALTER TABLE `wx_openids` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wx_reply_items`
--

DROP TABLE IF EXISTS `wx_reply_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wx_reply_items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(16) COLLATE utf8_unicode_ci NOT NULL COMMENT 'text, news, mixed',
  `status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0: 正常, 1: 禁用',
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wx_reply_items`
--

LOCK TABLES `wx_reply_items` WRITE;
/*!40000 ALTER TABLE `wx_reply_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `wx_reply_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wx_reply_keywords`
--

DROP TABLE IF EXISTS `wx_reply_keywords`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wx_reply_keywords` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(16) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'equal' COMMENT 'equal, include, regex, event, click',
  `keyword` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `item_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `item_id` (`item_id`),
  KEY `keyword` (`keyword`),
  KEY `type` (`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wx_reply_keywords`
--

LOCK TABLES `wx_reply_keywords` WRITE;
/*!40000 ALTER TABLE `wx_reply_keywords` DISABLE KEYS */;
/*!40000 ALTER TABLE `wx_reply_keywords` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-11-27 18:21:52
