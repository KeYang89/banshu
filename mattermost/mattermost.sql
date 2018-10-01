-- MySQL dump 10.13  Distrib 5.5.58, for Linux (x86_64)
--
-- Host: seniorknows.c0rl9ufzyjni.us-east-2.rds.amazonaws.com    Database: mattermost
-- ------------------------------------------------------
-- Server version	5.6.37

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
-- Table structure for table `Audits`
--

DROP TABLE IF EXISTS `Audits`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Audits` (
  `Id` varchar(26) NOT NULL,
  `CreateAt` bigint(20) DEFAULT NULL,
  `UserId` varchar(26) DEFAULT NULL,
  `Action` text,
  `ExtraInfo` text,
  `IpAddress` varchar(64) DEFAULT NULL,
  `SessionId` varchar(26) DEFAULT NULL,
  PRIMARY KEY (`Id`),
  KEY `idx_audits_user_id` (`UserId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Audits`
--

LOCK TABLES `Audits` WRITE;
/*!40000 ALTER TABLE `Audits` DISABLE KEYS */;
INSERT INTO `Audits` VALUES ('1auh5i5nd3bx3er1gng7jz4ffh',1515007252393,'fywkunwa878cin74eo1ggigcww','/api/v4/users/logout','','130.132.173.164','8pfrmujyzbrbxmxrizxwyywjho'),('1m95n74e5pngmfei35tjwf9y6w',1515006444354,'fywkunwa878cin74eo1ggigcww','/api/v4/users/login','authenticated','130.132.173.164',''),('31mftagfab85pqmqgsssm7x4ge',1515012290831,'fywkunwa878cin74eo1ggigcww','/api/v4/config','updateConfig','207.243.125.253','xfnqaxdi5iyb5k33pcwxh9sf5e'),('48d8c4dxhfrspy9ru4h7e5rtew',1515012050354,'fywkunwa878cin74eo1ggigcww','/api/v4/config','updateConfig','207.243.125.253','xfnqaxdi5iyb5k33pcwxh9sf5e'),('5czbc7emrpno8py6ssb67a7dia',1515006444362,'fywkunwa878cin74eo1ggigcww','/api/v4/users/login','success','130.132.173.164',''),('5ixjpps1kfrzfjuwn6qwke7ypa',1515015149876,'fywkunwa878cin74eo1ggigcww','/api/v4/config','updateConfig','207.243.125.253','xfnqaxdi5iyb5k33pcwxh9sf5e'),('5swgtxiqotbr9rse4ezt6bfpfe',1515006430329,'','/api/v4/users/login','attempt - login_id=ruili','130.132.173.164',''),('61n6jd3p6ibqin5fobczajurhe',1515009681829,'fywkunwa878cin74eo1ggigcww','/api/v4/users/login','success','207.243.125.253',''),('6knbrjq1upy5una3358uxmqgir',1515006285119,'a1hgy6sapbnm7ng1pw3fqjyqge','/api/v4/users/login','success session_user=fywkunwa878cin74eo1ggigcww','130.132.173.164','zc8416w7hpdyjf9b9ipdyfqszr'),('73ditutppif6uydcphuhxuffwc',1514947229918,'fywkunwa878cin74eo1ggigcww','/api/v4/users/login','authenticated','130.132.173.164',''),('76wutgxw4fr38cbi7g5ndortha',1515006444251,'','/api/v4/users/login','attempt - login_id=ruili','130.132.173.164',''),('811zkckp3igrjjghjkewbgmk9o',1515009681716,'','/api/v4/users/login','attempt - login_id=ruili','207.243.125.253',''),('86ezkwq4sbr4dnckkbmwi39iec',1515008406566,'fywkunwa878cin74eo1ggigcww','/api/v4/users/login','success','130.132.173.164',''),('9tywns6ei7bxuko75s7oxf4w7e',1514947036557,'fywkunwa878cin74eo1ggigcww','/api/v4/users/login','attempt - login_id=','130.132.173.164',''),('a7sfwgei3tnsbxju1priboj5rc',1515009638901,'ppi7capgf7dw5x3tmj1od661do','/api/v4/users/logout','','207.243.125.253','9a64ymju4ig77grwbybe95p1eh'),('aq5mr7mpnirzm8eom67jho8cky',1515006430441,'fywkunwa878cin74eo1ggigcww','/api/v4/users/login','success','130.132.173.164',''),('b5979jhwq3nwtc5g5766gype1w',1515006431965,'fywkunwa878cin74eo1ggigcww','/api/v4/users/logout','','130.132.173.164','xggsab4eo3rt5g8hcnpttfbray'),('bgbubc51a7bfdftdosjig653gh',1515008986373,'','/api/v4/users/login','attempt - login_id=ruili','130.132.173.164',''),('dgh9czayfiy5mdgrdtx3osp7ya',1515009158298,'ihkarc6ehpbdxdrnix9q3bbnse','/api/v4/users/login','success','130.132.173.164',''),('dif7g9pz3fnfxb77t7mfwoz4xw',1514947229929,'fywkunwa878cin74eo1ggigcww','/api/v4/users/login','success','130.132.173.164',''),('dojq573sdf8f3j8a6f3r3xfybe',1515006285110,'a1hgy6sapbnm7ng1pw3fqjyqge','/api/v4/users/login','authenticated session_user=fywkunwa878cin74eo1ggigcww','130.132.173.164','zc8416w7hpdyjf9b9ipdyfqszr'),('du4kx849stgq3pij869b48wioo',1515008406455,'','/api/v4/users/login','attempt - login_id=ruili','130.132.173.164',''),('e767wca54tnimkhwp7g15aym1r',1515006217373,'fywkunwa878cin74eo1ggigcww','/api/v4/config','updateConfig','130.132.173.164','zc8416w7hpdyjf9b9ipdyfqszr'),('e7uifuan3inmmjp1yicgnfuhzh',1515006420910,'','/api/v4/users/logout','','130.132.173.164',''),('em84cfmyh78yjdww1aj7cs1sec',1515011694747,'fywkunwa878cin74eo1ggigcww','/api/v4/config','updateConfig','207.243.125.253','xfnqaxdi5iyb5k33pcwxh9sf5e'),('f8st56emb7fujqqrduhktku5cc',1515009197261,'ppi7capgf7dw5x3tmj1od661do','/api/v4/users/login','success','207.243.125.253',''),('ffox8b35mbrau8ahksfd9bc35e',1515006431979,'','/api/v4/users/logout','','130.132.173.164',''),('fts1797jy7r8txan5w4s93p8oc',1515008406557,'fywkunwa878cin74eo1ggigcww','/api/v4/users/login','authenticated','130.132.173.164',''),('go58cepxg7rw5x8mk56mo8zysw',1515009158288,'ihkarc6ehpbdxdrnix9q3bbnse','/api/v4/users/login','authenticated','130.132.173.164',''),('guod7zbaybbd5g3nuyqwkfd3ea',1515006420205,'','/api/v4/users/logout','','130.132.173.164',''),('gw3oogm463y8t8sdcko4opnxko',1515009197150,'ppi7capgf7dw5x3tmj1od661do','/api/v4/users/login','attempt - login_id=','207.243.125.253',''),('hw7a456fg7ykfkaodwhj6diezc',1515006420868,'','/api/v4/users/logout','','130.132.173.164',''),('hz1kr97783g9zdjuat6pt3nk9w',1515007252448,'','/api/v4/users/logout','','130.132.173.164',''),('ijro6wedz3rypfj3hbzw63asra',1515006431983,'','/api/v4/users/logout','','130.132.173.164',''),('itsxxpi1ibgf7ec1pt43dsqq6y',1515007254731,'','/api/v4/users/logout','','130.132.173.164',''),('iudc1hkibpb5dxqgymrfj331de',1515006152497,'fywkunwa878cin74eo1ggigcww','/api/v4/users/login','authenticated','130.132.173.164',''),('jpcdutnhipg9pnyai4fqd4z3ty',1515007253150,'','/api/v4/users/logout','','130.132.173.164',''),('ju5p1qx57frzxnncxjudgw5pmh',1515011639985,'fywkunwa878cin74eo1ggigcww','/api/v4/config','updateConfig','207.243.125.253','xfnqaxdi5iyb5k33pcwxh9sf5e'),('jwt1afdth3dui8q4k8ru9xmqzh',1515007254739,'','/api/v4/users/logout','','130.132.173.164',''),('k9zdjrch6jfidk5698uxw5rb7h',1515006430433,'fywkunwa878cin74eo1ggigcww','/api/v4/users/login','authenticated','130.132.173.164',''),('kanx6wgzdbbrirohj9n955yoqr',1515010638495,'fywkunwa878cin74eo1ggigcww','/api/v4/config','updateConfig','130.132.173.164','h8hrxih3ppdm9nadsgqgi6jtdw'),('kk5jb7sgufrc7nsoegycdqk88h',1515007253172,'','/api/v4/users/logout','','130.132.173.164',''),('kn4d3yed1frbdpmufjn3eu8f4w',1515006434241,'','/api/v4/users/logout','','130.132.173.164',''),('kpiddsh9zbyffjsd378mrnze9r',1514947036659,'fywkunwa878cin74eo1ggigcww','/api/v4/users/login','authenticated','130.132.173.164',''),('mnx9ptzouiyeupx1gdczxygw7a',1515011597562,'fywkunwa878cin74eo1ggigcww','/api/v4/config','updateConfig','207.243.125.253','xfnqaxdi5iyb5k33pcwxh9sf5e'),('moruadt1tfnobn79zffwxkct8c',1515006420895,'','/api/v4/users/logout','','130.132.173.164',''),('myoucczzrf8duc3dwnwn4xam9y',1515012544869,'fywkunwa878cin74eo1ggigcww','/api/v4/config','updateConfig','207.243.125.253','xfnqaxdi5iyb5k33pcwxh9sf5e'),('n1d9xnseupy9fk5hiw9gxg6y1h',1514947036668,'fywkunwa878cin74eo1ggigcww','/api/v4/users/login','success','130.132.173.164',''),('nazfb4m61tywmd5myz7ojpb56c',1515006284996,'a1hgy6sapbnm7ng1pw3fqjyqge','/api/v4/users/login','attempt - login_id= session_user=fywkunwa878cin74eo1ggigcww','130.132.173.164','zc8416w7hpdyjf9b9ipdyfqszr'),('octftcu8f3n88maj1h9aqdxxuo',1515007253165,'','/api/v4/users/logout','','130.132.173.164',''),('oinx1ew33jrq5djygu8kka9b5w',1515007254746,'','/api/v4/users/logout','','130.132.173.164',''),('paciy797pjfszgh1op4tj9p1sa',1515015100520,'fywkunwa878cin74eo1ggigcww','/api/v4/config','updateConfig','207.243.125.253','xfnqaxdi5iyb5k33pcwxh9sf5e'),('pwfqh9hcwtridkc3qbfedytrne',1515007253158,'','/api/v4/users/logout','','130.132.173.164',''),('qwn3r5pugtf99yratjqcwwi4fe',1515006431955,'fywkunwa878cin74eo1ggigcww','/api/v4/users/logout','','130.132.173.164','xggsab4eo3rt5g8hcnpttfbray'),('rneapeukrp8wzrsj5sffkq8opy',1515006420903,'','/api/v4/users/logout','','130.132.173.164',''),('s5tbhsykbpgztpqbntft1dhzoa',1515015171847,'fywkunwa878cin74eo1ggigcww','/api/v4/config','updateConfig','207.243.125.253','xfnqaxdi5iyb5k33pcwxh9sf5e'),('shgnnm85ifyjjnfuct5hqziogy',1515012781809,'fywkunwa878cin74eo1ggigcww','/api/v4/config','updateConfig','207.243.125.253','xfnqaxdi5iyb5k33pcwxh9sf5e'),('sq4xsz4ox7fzzqewacur698rae',1514947207963,'fywkunwa878cin74eo1ggigcww','/api/v4/config','updateConfig','130.132.173.164','c4g9sitt3pyfixpnm913758szo'),('ta6rcqxjetnyixsk1ag61djrjy',1515007254753,'','/api/v4/users/logout','','130.132.173.164',''),('tg9sbim8z7rjbrqfkfmjn5ishw',1515006152507,'fywkunwa878cin74eo1ggigcww','/api/v4/users/login','success','130.132.173.164',''),('u3axafpkmjbip881e5599wn7fc',1515008986489,'fywkunwa878cin74eo1ggigcww','/api/v4/users/login','success','130.132.173.164',''),('uc9pmrrb438jiy51gj7cmmx3nc',1515007253141,'','/api/v4/users/logout','','130.132.173.164',''),('uwctb4dkpirqxynhuugomy7a3o',1515010071046,'fywkunwa878cin74eo1ggigcww','/api/v4/users/me/patch','','207.243.125.253','xfnqaxdi5iyb5k33pcwxh9sf5e'),('wcz68ps87ifm8fysjeigp5acjc',1515009148891,'fywkunwa878cin74eo1ggigcww','/api/v4/config','updateConfig','130.132.173.164','h8hrxih3ppdm9nadsgqgi6jtdw'),('wd3y9qejw38xugzbp4jqh4pfto',1515008986480,'fywkunwa878cin74eo1ggigcww','/api/v4/users/login','authenticated','130.132.173.164',''),('xoo5u3mp1f848nhkiksibbr6ba',1515006431972,'','/api/v4/users/logout','','130.132.173.164',''),('xrcg39158b8ezgyod9stwg1uyh',1515007254757,'','/api/v4/users/logout','','130.132.173.164',''),('y13nuhxfotdfux5iwt6nxkubpc',1514947229815,'','/api/v4/users/login','attempt - login_id=ruili','130.132.173.164',''),('y95bxqcsdtyw8q8moueezk3tcw',1515006420132,'a1hgy6sapbnm7ng1pw3fqjyqge','/api/v4/users/logout','','130.132.173.164','kxdipthkktfqmqa1fakashx37y'),('ygc155qptpdaux1bu68rr8bbha',1515006420888,'','/api/v4/users/logout','','130.132.173.164',''),('yxscpmemipyjdq3hqmp5c7rzzo',1515009197251,'ppi7capgf7dw5x3tmj1od661do','/api/v4/users/login','authenticated','207.243.125.253',''),('yxxhfeqqmb8xted146a1y48coe',1515006152393,'','/api/v4/users/login','attempt - login_id=ruili','130.132.173.164',''),('z7x35e6urtne3pg6btso9gp8yc',1515009681819,'fywkunwa878cin74eo1ggigcww','/api/v4/users/login','authenticated','207.243.125.253',''),('zqyk4acqw7bctctnpomkzy7yih',1515009158186,'ihkarc6ehpbdxdrnix9q3bbnse','/api/v4/users/login','attempt - login_id=','130.132.173.164','');
/*!40000 ALTER TABLE `Audits` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ChannelMemberHistory`
--

DROP TABLE IF EXISTS `ChannelMemberHistory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ChannelMemberHistory` (
  `ChannelId` varchar(26) NOT NULL,
  `UserId` varchar(26) NOT NULL,
  `Email` varchar(255) DEFAULT NULL,
  `JoinTime` bigint(20) NOT NULL,
  `LeaveTime` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`ChannelId`,`UserId`,`JoinTime`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ChannelMemberHistory`
--

LOCK TABLES `ChannelMemberHistory` WRITE;
/*!40000 ALTER TABLE `ChannelMemberHistory` DISABLE KEYS */;
INSERT INTO `ChannelMemberHistory` VALUES ('6i833mnqpirzbp5c77yw1zmxta','a1hgy6sapbnm7ng1pw3fqjyqge','',1515006311020,NULL),('khe3hs3txjnddy9f7ofmoo8ywr','ppi7capgf7dw5x3tmj1od661do','',1515009246263,NULL),('noefo81x37ruujpasdactfmcdc','ppi7capgf7dw5x3tmj1od661do','',1515009246297,NULL),('t7j9oa8xxfnbibydpcsebghmmr','fywkunwa878cin74eo1ggigcww','',1514947149278,NULL),('u5nfcnyaxfgbtyk98gqwwzariy','fywkunwa878cin74eo1ggigcww','',1514947149246,NULL),('wtsjyrqbxpfk7jt1uq6xpe8b6o','a1hgy6sapbnm7ng1pw3fqjyqge','',1515006311054,NULL);
/*!40000 ALTER TABLE `ChannelMemberHistory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ChannelMembers`
--

DROP TABLE IF EXISTS `ChannelMembers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ChannelMembers` (
  `ChannelId` varchar(26) NOT NULL,
  `UserId` varchar(26) NOT NULL,
  `Roles` varchar(64) DEFAULT NULL,
  `LastViewedAt` bigint(20) DEFAULT NULL,
  `MsgCount` bigint(20) DEFAULT NULL,
  `MentionCount` bigint(20) DEFAULT NULL,
  `NotifyProps` text,
  `LastUpdateAt` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`ChannelId`,`UserId`),
  KEY `idx_channelmembers_channel_id` (`ChannelId`),
  KEY `idx_channelmembers_user_id` (`UserId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ChannelMembers`
--

LOCK TABLES `ChannelMembers` WRITE;
/*!40000 ALTER TABLE `ChannelMembers` DISABLE KEYS */;
INSERT INTO `ChannelMembers` VALUES ('6i833mnqpirzbp5c77yw1zmxta','a1hgy6sapbnm7ng1pw3fqjyqge','channel_user channel_admin',1515006347065,2,0,'{\"desktop\":\"default\",\"email\":\"default\",\"mark_unread\":\"all\",\"push\":\"default\"}',1515006347065),('7ukcgyjrcffy5gma4kmfb41njo','fywkunwa878cin74eo1ggigcww','channel_user',0,0,0,'{\"desktop\":\"default\",\"email\":\"default\",\"mark_unread\":\"all\",\"push\":\"default\"}',0),('khe3hs3txjnddy9f7ofmoo8ywr','ppi7capgf7dw5x3tmj1od661do','channel_user channel_admin',1515009246270,0,0,'{\"desktop\":\"default\",\"email\":\"default\",\"mark_unread\":\"all\",\"push\":\"default\"}',1515009246270),('noefo81x37ruujpasdactfmcdc','ppi7capgf7dw5x3tmj1od661do','channel_user channel_admin',0,0,0,'{\"desktop\":\"default\",\"email\":\"default\",\"mark_unread\":\"all\",\"push\":\"default\"}',1515009246288),('ordcdn8q7bbw3n6meofqco1yna','a1hgy6sapbnm7ng1pw3fqjyqge','channel_user',1515006410604,2,4,'{\"desktop\":\"default\",\"email\":\"default\",\"mark_unread\":\"all\",\"push\":\"default\"}',1515006507444),('ordcdn8q7bbw3n6meofqco1yna','fywkunwa878cin74eo1ggigcww','channel_user',1515006507436,6,0,'{\"desktop\":\"default\",\"email\":\"default\",\"mark_unread\":\"all\",\"push\":\"default\"}',1515006507436),('t7j9oa8xxfnbibydpcsebghmmr','fywkunwa878cin74eo1ggigcww','channel_user channel_admin',1514947149283,0,0,'{\"desktop\":\"default\",\"email\":\"default\",\"mark_unread\":\"all\",\"push\":\"default\"}',1514947149283),('u5nfcnyaxfgbtyk98gqwwzariy','fywkunwa878cin74eo1ggigcww','channel_user channel_admin',1515016458734,6,0,'{\"desktop\":\"default\",\"email\":\"default\",\"mark_unread\":\"all\",\"push\":\"default\"}',1515016458734),('wtsjyrqbxpfk7jt1uq6xpe8b6o','a1hgy6sapbnm7ng1pw3fqjyqge','channel_user channel_admin',0,0,0,'{\"desktop\":\"default\",\"email\":\"default\",\"mark_unread\":\"all\",\"push\":\"default\"}',1515006311044);
/*!40000 ALTER TABLE `ChannelMembers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Channels`
--

DROP TABLE IF EXISTS `Channels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Channels` (
  `Id` varchar(26) NOT NULL,
  `CreateAt` bigint(20) DEFAULT NULL,
  `UpdateAt` bigint(20) DEFAULT NULL,
  `DeleteAt` bigint(20) DEFAULT NULL,
  `TeamId` varchar(26) DEFAULT NULL,
  `Type` varchar(1) DEFAULT NULL,
  `DisplayName` varchar(64) DEFAULT NULL,
  `Name` varchar(64) DEFAULT NULL,
  `Header` text,
  `Purpose` varchar(250) DEFAULT NULL,
  `LastPostAt` bigint(20) DEFAULT NULL,
  `TotalMsgCount` bigint(20) DEFAULT NULL,
  `ExtraUpdateAt` bigint(20) DEFAULT NULL,
  `CreatorId` varchar(26) DEFAULT NULL,
  PRIMARY KEY (`Id`),
  UNIQUE KEY `Name` (`Name`,`TeamId`),
  UNIQUE KEY `Name_2` (`Name`,`TeamId`),
  KEY `idx_channels_team_id` (`TeamId`),
  KEY `idx_channels_name` (`Name`),
  KEY `idx_channels_update_at` (`UpdateAt`),
  KEY `idx_channels_create_at` (`CreateAt`),
  KEY `idx_channels_delete_at` (`DeleteAt`),
  FULLTEXT KEY `idx_channels_txt` (`Name`,`DisplayName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Channels`
--

LOCK TABLES `Channels` WRITE;
/*!40000 ALTER TABLE `Channels` DISABLE KEYS */;
INSERT INTO `Channels` VALUES ('6i833mnqpirzbp5c77yw1zmxta',1515006310981,1515006310981,0,'fthsr5nj37na8bih4n7bwm139r','O','Town Square','town-square','','',1515006347065,2,1515006311017,''),('7ukcgyjrcffy5gma4kmfb41njo',1515008990983,1515008990983,0,'','D','','fywkunwa878cin74eo1ggigcww__fywkunwa878cin74eo1ggigcww','','',0,0,1515008990983,''),('khe3hs3txjnddy9f7ofmoo8ywr',1515009246221,1515009246221,0,'durfxcqzctn8fmi163ei3r4hde','O','Town Square','town-square','','',1515009246270,0,1515009246260,''),('noefo81x37ruujpasdactfmcdc',1515009246228,1515009246228,0,'durfxcqzctn8fmi163ei3r4hde','O','Off-Topic','off-topic','','',1515009246303,0,1515009246293,''),('ordcdn8q7bbw3n6meofqco1yna',1515006403646,1515006403646,0,'','D','','a1hgy6sapbnm7ng1pw3fqjyqge__fywkunwa878cin74eo1ggigcww','','',1515006507436,6,1515006403646,''),('t7j9oa8xxfnbibydpcsebghmmr',1514947149213,1514947149213,0,'5y11y919dird3jizxyb6ptwhoe','O','Off-Topic','off-topic','','',1514947149283,0,1514947149274,''),('u5nfcnyaxfgbtyk98gqwwzariy',1514947149206,1514947149206,0,'5y11y919dird3jizxyb6ptwhoe','O','Town Square','town-square','','',1515016458734,6,1514947149242,''),('wtsjyrqbxpfk7jt1uq6xpe8b6o',1515006310988,1515006310988,0,'fthsr5nj37na8bih4n7bwm139r','O','Off-Topic','off-topic','','',1515006311060,0,1515006311051,'');
/*!40000 ALTER TABLE `Channels` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ClusterDiscovery`
--

DROP TABLE IF EXISTS `ClusterDiscovery`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ClusterDiscovery` (
  `Id` varchar(26) NOT NULL,
  `Type` varchar(64) DEFAULT NULL,
  `ClusterName` varchar(64) DEFAULT NULL,
  `Hostname` text,
  `GossipPort` int(11) DEFAULT NULL,
  `Port` int(11) DEFAULT NULL,
  `CreateAt` bigint(20) DEFAULT NULL,
  `LastPingAt` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ClusterDiscovery`
--

LOCK TABLES `ClusterDiscovery` WRITE;
/*!40000 ALTER TABLE `ClusterDiscovery` DISABLE KEYS */;
/*!40000 ALTER TABLE `ClusterDiscovery` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CommandWebhooks`
--

DROP TABLE IF EXISTS `CommandWebhooks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CommandWebhooks` (
  `Id` varchar(26) NOT NULL,
  `CreateAt` bigint(20) DEFAULT NULL,
  `CommandId` varchar(26) DEFAULT NULL,
  `UserId` varchar(26) DEFAULT NULL,
  `ChannelId` varchar(26) DEFAULT NULL,
  `RootId` varchar(26) DEFAULT NULL,
  `ParentId` varchar(26) DEFAULT NULL,
  `UseCount` int(11) DEFAULT NULL,
  PRIMARY KEY (`Id`),
  KEY `idx_command_webhook_create_at` (`CreateAt`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CommandWebhooks`
--

LOCK TABLES `CommandWebhooks` WRITE;
/*!40000 ALTER TABLE `CommandWebhooks` DISABLE KEYS */;
/*!40000 ALTER TABLE `CommandWebhooks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Commands`
--

DROP TABLE IF EXISTS `Commands`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Commands` (
  `Id` varchar(26) NOT NULL,
  `Token` varchar(26) DEFAULT NULL,
  `CreateAt` bigint(20) DEFAULT NULL,
  `UpdateAt` bigint(20) DEFAULT NULL,
  `DeleteAt` bigint(20) DEFAULT NULL,
  `CreatorId` varchar(26) DEFAULT NULL,
  `TeamId` varchar(26) DEFAULT NULL,
  `Trigger` varchar(128) DEFAULT NULL,
  `Method` varchar(1) DEFAULT NULL,
  `Username` varchar(64) DEFAULT NULL,
  `IconURL` text,
  `AutoComplete` tinyint(1) DEFAULT NULL,
  `AutoCompleteDesc` text,
  `AutoCompleteHint` text,
  `DisplayName` varchar(64) DEFAULT NULL,
  `Description` varchar(128) DEFAULT NULL,
  `URL` text,
  PRIMARY KEY (`Id`),
  KEY `idx_command_team_id` (`TeamId`),
  KEY `idx_command_update_at` (`UpdateAt`),
  KEY `idx_command_create_at` (`CreateAt`),
  KEY `idx_command_delete_at` (`DeleteAt`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Commands`
--

LOCK TABLES `Commands` WRITE;
/*!40000 ALTER TABLE `Commands` DISABLE KEYS */;
/*!40000 ALTER TABLE `Commands` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Compliances`
--

DROP TABLE IF EXISTS `Compliances`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Compliances` (
  `Id` varchar(26) NOT NULL,
  `CreateAt` bigint(20) DEFAULT NULL,
  `UserId` varchar(26) DEFAULT NULL,
  `Status` varchar(64) DEFAULT NULL,
  `Count` int(11) DEFAULT NULL,
  `Desc` text,
  `Type` varchar(64) DEFAULT NULL,
  `StartAt` bigint(20) DEFAULT NULL,
  `EndAt` bigint(20) DEFAULT NULL,
  `Keywords` text,
  `Emails` text,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Compliances`
--

LOCK TABLES `Compliances` WRITE;
/*!40000 ALTER TABLE `Compliances` DISABLE KEYS */;
/*!40000 ALTER TABLE `Compliances` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Emoji`
--

DROP TABLE IF EXISTS `Emoji`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Emoji` (
  `Id` varchar(26) NOT NULL,
  `CreateAt` bigint(20) DEFAULT NULL,
  `UpdateAt` bigint(20) DEFAULT NULL,
  `DeleteAt` bigint(20) DEFAULT NULL,
  `CreatorId` varchar(26) DEFAULT NULL,
  `Name` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`Id`),
  UNIQUE KEY `Name` (`Name`,`DeleteAt`),
  UNIQUE KEY `Name_2` (`Name`,`DeleteAt`),
  KEY `idx_emoji_update_at` (`UpdateAt`),
  KEY `idx_emoji_create_at` (`CreateAt`),
  KEY `idx_emoji_delete_at` (`DeleteAt`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Emoji`
--

LOCK TABLES `Emoji` WRITE;
/*!40000 ALTER TABLE `Emoji` DISABLE KEYS */;
/*!40000 ALTER TABLE `Emoji` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `FileInfo`
--

DROP TABLE IF EXISTS `FileInfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FileInfo` (
  `Id` varchar(26) NOT NULL,
  `CreatorId` varchar(26) DEFAULT NULL,
  `PostId` varchar(26) DEFAULT NULL,
  `CreateAt` bigint(20) DEFAULT NULL,
  `UpdateAt` bigint(20) DEFAULT NULL,
  `DeleteAt` bigint(20) DEFAULT NULL,
  `Path` text,
  `ThumbnailPath` text,
  `PreviewPath` text,
  `Name` text,
  `Extension` varchar(64) DEFAULT NULL,
  `Size` bigint(20) DEFAULT NULL,
  `MimeType` text,
  `Width` int(11) DEFAULT NULL,
  `Height` int(11) DEFAULT NULL,
  `HasPreviewImage` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`Id`),
  KEY `idx_fileinfo_update_at` (`UpdateAt`),
  KEY `idx_fileinfo_create_at` (`CreateAt`),
  KEY `idx_fileinfo_delete_at` (`DeleteAt`),
  KEY `idx_fileinfo_postid_at` (`PostId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FileInfo`
--

LOCK TABLES `FileInfo` WRITE;
/*!40000 ALTER TABLE `FileInfo` DISABLE KEYS */;
INSERT INTO `FileInfo` VALUES ('bwk7cyh7dtfoijjxmbt71jkyoc','fywkunwa878cin74eo1ggigcww','e1q5ek3tmjdfpqguiazh7c886h',1515016455987,1515016455987,0,'20180103/teams/noteam/channels/u5nfcnyaxfgbtyk98gqwwzariy/users/fywkunwa878cin74eo1ggigcww/bwk7cyh7dtfoijjxmbt71jkyoc/MumbleAutomaticCertificateBackup.p12','','','MumbleAutomaticCertificateBackup.p12','p12',2377,'',0,0,0),('i1h8az9zibfijdewoqgy85n7ne','fywkunwa878cin74eo1ggigcww','h1g8tepjt3fqfd88wqajpx93ar',1515008494425,1515008494425,0,'20180103/teams/noteam/channels/u5nfcnyaxfgbtyk98gqwwzariy/users/fywkunwa878cin74eo1ggigcww/i1h8az9zibfijdewoqgy85n7ne/IMG_1186.JPG','20180103/teams/noteam/channels/u5nfcnyaxfgbtyk98gqwwzariy/users/fywkunwa878cin74eo1ggigcww/i1h8az9zibfijdewoqgy85n7ne/IMG_1186_thumb.jpg','20180103/teams/noteam/channels/u5nfcnyaxfgbtyk98gqwwzariy/users/fywkunwa878cin74eo1ggigcww/i1h8az9zibfijdewoqgy85n7ne/IMG_1186_preview.jpg','IMG_1186.JPG','jpg',275059,'image/jpeg',1078,1622,1),('j3enx7cz8ir1zcmojqz7i4fyse','fywkunwa878cin74eo1ggigcww','',1515008482976,1515008482976,0,'20180103/teams/noteam/channels/u5nfcnyaxfgbtyk98gqwwzariy/users/fywkunwa878cin74eo1ggigcww/j3enx7cz8ir1zcmojqz7i4fyse/IMG_1186.JPG','20180103/teams/noteam/channels/u5nfcnyaxfgbtyk98gqwwzariy/users/fywkunwa878cin74eo1ggigcww/j3enx7cz8ir1zcmojqz7i4fyse/IMG_1186_thumb.jpg','20180103/teams/noteam/channels/u5nfcnyaxfgbtyk98gqwwzariy/users/fywkunwa878cin74eo1ggigcww/j3enx7cz8ir1zcmojqz7i4fyse/IMG_1186_preview.jpg','IMG_1186.JPG','jpg',275059,'image/jpeg',1078,1622,1);
/*!40000 ALTER TABLE `FileInfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `IncomingWebhooks`
--

DROP TABLE IF EXISTS `IncomingWebhooks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `IncomingWebhooks` (
  `Id` varchar(26) NOT NULL,
  `CreateAt` bigint(20) DEFAULT NULL,
  `UpdateAt` bigint(20) DEFAULT NULL,
  `DeleteAt` bigint(20) DEFAULT NULL,
  `UserId` varchar(26) DEFAULT NULL,
  `ChannelId` varchar(26) DEFAULT NULL,
  `TeamId` varchar(26) DEFAULT NULL,
  `DisplayName` varchar(64) DEFAULT NULL,
  `Description` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`Id`),
  KEY `idx_incoming_webhook_user_id` (`UserId`),
  KEY `idx_incoming_webhook_team_id` (`TeamId`),
  KEY `idx_incoming_webhook_update_at` (`UpdateAt`),
  KEY `idx_incoming_webhook_create_at` (`CreateAt`),
  KEY `idx_incoming_webhook_delete_at` (`DeleteAt`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IncomingWebhooks`
--

LOCK TABLES `IncomingWebhooks` WRITE;
/*!40000 ALTER TABLE `IncomingWebhooks` DISABLE KEYS */;
/*!40000 ALTER TABLE `IncomingWebhooks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Jobs`
--

DROP TABLE IF EXISTS `Jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Jobs` (
  `Id` varchar(26) NOT NULL,
  `Type` varchar(32) DEFAULT NULL,
  `Priority` bigint(20) DEFAULT NULL,
  `CreateAt` bigint(20) DEFAULT NULL,
  `StartAt` bigint(20) DEFAULT NULL,
  `LastActivityAt` bigint(20) DEFAULT NULL,
  `Status` varchar(32) DEFAULT NULL,
  `Progress` bigint(20) DEFAULT NULL,
  `Data` text,
  PRIMARY KEY (`Id`),
  KEY `idx_jobs_type` (`Type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Jobs`
--

LOCK TABLES `Jobs` WRITE;
/*!40000 ALTER TABLE `Jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `Jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Licenses`
--

DROP TABLE IF EXISTS `Licenses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Licenses` (
  `Id` varchar(26) NOT NULL,
  `CreateAt` bigint(20) DEFAULT NULL,
  `Bytes` text,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Licenses`
--

LOCK TABLES `Licenses` WRITE;
/*!40000 ALTER TABLE `Licenses` DISABLE KEYS */;
/*!40000 ALTER TABLE `Licenses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `OAuthAccessData`
--

DROP TABLE IF EXISTS `OAuthAccessData`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `OAuthAccessData` (
  `ClientId` varchar(26) DEFAULT NULL,
  `UserId` varchar(26) DEFAULT NULL,
  `Token` varchar(26) NOT NULL,
  `RefreshToken` varchar(26) DEFAULT NULL,
  `RedirectUri` text,
  `ExpiresAt` bigint(20) DEFAULT NULL,
  `Scope` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`Token`),
  UNIQUE KEY `ClientId` (`ClientId`,`UserId`),
  UNIQUE KEY `ClientId_2` (`ClientId`,`UserId`),
  KEY `idx_oauthaccessdata_client_id` (`ClientId`),
  KEY `idx_oauthaccessdata_user_id` (`UserId`),
  KEY `idx_oauthaccessdata_refresh_token` (`RefreshToken`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `OAuthAccessData`
--

LOCK TABLES `OAuthAccessData` WRITE;
/*!40000 ALTER TABLE `OAuthAccessData` DISABLE KEYS */;
/*!40000 ALTER TABLE `OAuthAccessData` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `OAuthApps`
--

DROP TABLE IF EXISTS `OAuthApps`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `OAuthApps` (
  `Id` varchar(26) NOT NULL,
  `CreatorId` varchar(26) DEFAULT NULL,
  `CreateAt` bigint(20) DEFAULT NULL,
  `UpdateAt` bigint(20) DEFAULT NULL,
  `ClientSecret` varchar(128) DEFAULT NULL,
  `Name` varchar(64) DEFAULT NULL,
  `Description` text,
  `IconURL` text,
  `CallbackUrls` text,
  `Homepage` text,
  `IsTrusted` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`Id`),
  KEY `idx_oauthapps_creator_id` (`CreatorId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `OAuthApps`
--

LOCK TABLES `OAuthApps` WRITE;
/*!40000 ALTER TABLE `OAuthApps` DISABLE KEYS */;
/*!40000 ALTER TABLE `OAuthApps` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `OAuthAuthData`
--

DROP TABLE IF EXISTS `OAuthAuthData`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `OAuthAuthData` (
  `ClientId` varchar(26) DEFAULT NULL,
  `UserId` varchar(26) DEFAULT NULL,
  `Code` varchar(128) NOT NULL,
  `ExpiresIn` int(11) DEFAULT NULL,
  `CreateAt` bigint(20) DEFAULT NULL,
  `RedirectUri` text,
  `State` varchar(128) DEFAULT NULL,
  `Scope` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`Code`),
  KEY `idx_oauthauthdata_client_id` (`Code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `OAuthAuthData`
--

LOCK TABLES `OAuthAuthData` WRITE;
/*!40000 ALTER TABLE `OAuthAuthData` DISABLE KEYS */;
/*!40000 ALTER TABLE `OAuthAuthData` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `OutgoingWebhooks`
--

DROP TABLE IF EXISTS `OutgoingWebhooks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `OutgoingWebhooks` (
  `Id` varchar(26) NOT NULL,
  `Token` varchar(26) DEFAULT NULL,
  `CreateAt` bigint(20) DEFAULT NULL,
  `UpdateAt` bigint(20) DEFAULT NULL,
  `DeleteAt` bigint(20) DEFAULT NULL,
  `CreatorId` varchar(26) DEFAULT NULL,
  `ChannelId` varchar(26) DEFAULT NULL,
  `TeamId` varchar(26) DEFAULT NULL,
  `TriggerWords` text,
  `TriggerWhen` int(11) DEFAULT NULL,
  `CallbackURLs` text,
  `DisplayName` varchar(64) DEFAULT NULL,
  `Description` varchar(128) DEFAULT NULL,
  `ContentType` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`Id`),
  KEY `idx_outgoing_webhook_team_id` (`TeamId`),
  KEY `idx_outgoing_webhook_update_at` (`UpdateAt`),
  KEY `idx_outgoing_webhook_create_at` (`CreateAt`),
  KEY `idx_outgoing_webhook_delete_at` (`DeleteAt`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `OutgoingWebhooks`
--

LOCK TABLES `OutgoingWebhooks` WRITE;
/*!40000 ALTER TABLE `OutgoingWebhooks` DISABLE KEYS */;
/*!40000 ALTER TABLE `OutgoingWebhooks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PluginKeyValueStore`
--

DROP TABLE IF EXISTS `PluginKeyValueStore`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PluginKeyValueStore` (
  `PluginId` varchar(190) NOT NULL,
  `PKey` varchar(50) NOT NULL,
  `PValue` mediumblob,
  PRIMARY KEY (`PluginId`,`PKey`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PluginKeyValueStore`
--

LOCK TABLES `PluginKeyValueStore` WRITE;
/*!40000 ALTER TABLE `PluginKeyValueStore` DISABLE KEYS */;
/*!40000 ALTER TABLE `PluginKeyValueStore` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Posts`
--

DROP TABLE IF EXISTS `Posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Posts` (
  `Id` varchar(26) NOT NULL,
  `CreateAt` bigint(20) DEFAULT NULL,
  `UpdateAt` bigint(20) DEFAULT NULL,
  `EditAt` bigint(20) DEFAULT NULL,
  `DeleteAt` bigint(20) DEFAULT NULL,
  `IsPinned` tinyint(1) DEFAULT NULL,
  `UserId` varchar(26) DEFAULT NULL,
  `ChannelId` varchar(26) DEFAULT NULL,
  `RootId` varchar(26) DEFAULT NULL,
  `ParentId` varchar(26) DEFAULT NULL,
  `OriginalId` varchar(26) DEFAULT NULL,
  `Message` text,
  `Type` varchar(26) DEFAULT NULL,
  `Props` text,
  `Hashtags` text,
  `Filenames` text,
  `FileIds` varchar(150) DEFAULT NULL,
  `HasReactions` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`Id`),
  KEY `idx_posts_update_at` (`UpdateAt`),
  KEY `idx_posts_create_at` (`CreateAt`),
  KEY `idx_posts_delete_at` (`DeleteAt`),
  KEY `idx_posts_channel_id` (`ChannelId`),
  KEY `idx_posts_root_id` (`RootId`),
  KEY `idx_posts_user_id` (`UserId`),
  KEY `idx_posts_is_pinned` (`IsPinned`),
  KEY `idx_posts_channel_id_update_at` (`ChannelId`,`UpdateAt`),
  KEY `idx_posts_channel_id_delete_at_create_at` (`ChannelId`,`DeleteAt`,`CreateAt`),
  FULLTEXT KEY `idx_posts_message_txt` (`Message`),
  FULLTEXT KEY `idx_posts_hashtags_txt` (`Hashtags`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Posts`
--

LOCK TABLES `Posts` WRITE;
/*!40000 ALTER TABLE `Posts` DISABLE KEYS */;
INSERT INTO `Posts` VALUES ('1ea5e6py7pdabpdcucnzjbzh4o',1515006505124,1515006505124,0,0,0,'fywkunwa878cin74eo1ggigcww','ordcdn8q7bbw3n6meofqco1yna','','','','什么鬼','','{}','','[]','[]',0),('1h8jt1fwjb8a7eigcamyqutbge',1515006311026,1515006311026,0,0,0,'a1hgy6sapbnm7ng1pw3fqjyqge','6i833mnqpirzbp5c77yw1zmxta','','','','test has joined the channel.','system_join_channel','{\"username\":\"test\"}','','[]','[]',0),('31d5uzg74tg3igkzpqd87bmg6r',1515009246303,1515009246303,0,0,0,'ppi7capgf7dw5x3tmj1od661do','noefo81x37ruujpasdactfmcdc','','','','yangkecoy has joined the channel.','system_join_channel','{\"username\":\"yangkecoy\"}','','[]','[]',0),('6fbw4bxp9p8f3fzbb8fsob6mow',1515006460877,1515006460877,0,0,0,'fywkunwa878cin74eo1ggigcww','ordcdn8q7bbw3n6meofqco1yna','','','','OK','','{}','','[]','[]',0),('79qp6ceuj7gyfyc9bsbirpbbrh',1515006463855,1515006463855,0,0,0,'fywkunwa878cin74eo1ggigcww','ordcdn8q7bbw3n6meofqco1yna','','','','let\'s talk','','{}','','[]','[]',0),('7kjicufxa7f8fbu654uttuc7ao',1515006342375,1515006342375,0,0,0,'a1hgy6sapbnm7ng1pw3fqjyqge','6i833mnqpirzbp5c77yw1zmxta','','','','hello','','{}','','[]','[]',0),('aig8bb4qrbr1dx8njesu53toxy',1515006410604,1515006410604,0,0,0,'a1hgy6sapbnm7ng1pw3fqjyqge','ordcdn8q7bbw3n6meofqco1yna','','','','can you join me?','','{}','','[]','[]',0),('aj1uaoggebgn3qgyjnswro4ebr',1515006407158,1515006407158,0,0,0,'a1hgy6sapbnm7ng1pw3fqjyqge','ordcdn8q7bbw3n6meofqco1yna','','','','hi','','{}','','[]','[]',0),('c7njrt3ksp8gzm34h9hybrf3so',1515006347065,1515006347065,0,0,0,'a1hgy6sapbnm7ng1pw3fqjyqge','6i833mnqpirzbp5c77yw1zmxta','','','','anyone there?','','{}','','[]','[]',0),('dxu8tg1wotr7ip781hzoed5tre',1515016436927,1515016436927,0,0,0,'fywkunwa878cin74eo1ggigcww','u5nfcnyaxfgbtyk98gqwwzariy','','','','@here ','','{}','','[]','[]',0),('e1q5ek3tmjdfpqguiazh7c886h',1515016458734,1515016458734,0,0,0,'fywkunwa878cin74eo1ggigcww','u5nfcnyaxfgbtyk98gqwwzariy','','','','go','','{}','','[]','[\"bwk7cyh7dtfoijjxmbt71jkyoc\"]',0),('gimonw448jysfcs1fu7docp9ir',1515010080279,1515010080279,0,0,0,'fywkunwa878cin74eo1ggigcww','u5nfcnyaxfgbtyk98gqwwzariy','','','','test it','','{}','','[]','[]',0),('h1g8tepjt3fqfd88wqajpx93ar',1515008500649,1515014989188,0,1515014989188,0,'fywkunwa878cin74eo1ggigcww','u5nfcnyaxfgbtyk98gqwwzariy','','','','got it?','','{}','','[]','[\"i1h8az9zibfijdewoqgy85n7ne\"]',0),('jissnugsajfwxqrgs4ram548ar',1515006507436,1515006507436,0,0,0,'fywkunwa878cin74eo1ggigcww','ordcdn8q7bbw3n6meofqco1yna','','','','good','','{}','','[]','[]',0),('knuwynfx4fntuph1jxy1j37kxw',1514947149283,1514947149283,0,0,0,'fywkunwa878cin74eo1ggigcww','t7j9oa8xxfnbibydpcsebghmmr','','','','ruili has joined the channel.','system_join_channel','{\"username\":\"ruili\"}','','[]','[]',0),('rhcywngm9fdj5g4tmznx7q9cah',1515006311060,1515006311060,0,0,0,'a1hgy6sapbnm7ng1pw3fqjyqge','wtsjyrqbxpfk7jt1uq6xpe8b6o','','','','test has joined the channel.','system_join_channel','{\"username\":\"test\"}','','[]','[]',0),('rythc6c55jgntqa67z697an4cc',1515016440750,1515016440750,0,0,0,'fywkunwa878cin74eo1ggigcww','u5nfcnyaxfgbtyk98gqwwzariy','','','','@all ','','{}','','[]','[]',0),('wm87j3i4hffjtyhx8c3js8g7uo',1514947149251,1514947149251,0,0,0,'fywkunwa878cin74eo1ggigcww','u5nfcnyaxfgbtyk98gqwwzariy','','','','ruili has joined the channel.','system_join_channel','{\"username\":\"ruili\"}','','[]','[]',0),('xjnqfw4kobd75j5gyhswkp7qrh',1515016430111,1515016430111,0,0,0,'fywkunwa878cin74eo1ggigcww','u5nfcnyaxfgbtyk98gqwwzariy','','','','hi','','{}','','[]','[]',0),('xmxwkgbcdjgpzjnhshgwoeiurh',1515009246270,1515009246270,0,0,0,'ppi7capgf7dw5x3tmj1od661do','khe3hs3txjnddy9f7ofmoo8ywr','','','','yangkecoy has joined the channel.','system_join_channel','{\"username\":\"yangkecoy\"}','','[]','[]',0);
/*!40000 ALTER TABLE `Posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Preferences`
--

DROP TABLE IF EXISTS `Preferences`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Preferences` (
  `UserId` varchar(26) NOT NULL,
  `Category` varchar(32) NOT NULL,
  `Name` varchar(32) NOT NULL,
  `Value` text,
  PRIMARY KEY (`UserId`,`Category`,`Name`),
  KEY `idx_preferences_user_id` (`UserId`),
  KEY `idx_preferences_category` (`Category`),
  KEY `idx_preferences_name` (`Name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Preferences`
--

LOCK TABLES `Preferences` WRITE;
/*!40000 ALTER TABLE `Preferences` DISABLE KEYS */;
INSERT INTO `Preferences` VALUES ('a1hgy6sapbnm7ng1pw3fqjyqge','channel_approximate_view_time','','1515006310085'),('a1hgy6sapbnm7ng1pw3fqjyqge','channel_approximate_view_time','6i833mnqpirzbp5c77yw1zmxta','1515006312688'),('a1hgy6sapbnm7ng1pw3fqjyqge','channel_approximate_view_time','ordcdn8q7bbw3n6meofqco1yna','1515006405136'),('a1hgy6sapbnm7ng1pw3fqjyqge','channel_open_time','ordcdn8q7bbw3n6meofqco1yna','1515006404851'),('a1hgy6sapbnm7ng1pw3fqjyqge','direct_channel_show','fywkunwa878cin74eo1ggigcww','true'),('a1hgy6sapbnm7ng1pw3fqjyqge','tutorial_step','a1hgy6sapbnm7ng1pw3fqjyqge','999'),('fywkunwa878cin74eo1ggigcww','channel_approximate_view_time','','1515017038751'),('fywkunwa878cin74eo1ggigcww','channel_approximate_view_time','7ukcgyjrcffy5gma4kmfb41njo','1515008992339'),('fywkunwa878cin74eo1ggigcww','channel_approximate_view_time','ordcdn8q7bbw3n6meofqco1yna','1515006448837'),('fywkunwa878cin74eo1ggigcww','channel_approximate_view_time','t7j9oa8xxfnbibydpcsebghmmr','1515016474853'),('fywkunwa878cin74eo1ggigcww','channel_approximate_view_time','u5nfcnyaxfgbtyk98gqwwzariy','1515016967824'),('fywkunwa878cin74eo1ggigcww','channel_open_time','7ukcgyjrcffy5gma4kmfb41njo','1515008992174'),('fywkunwa878cin74eo1ggigcww','direct_channel_show','a1hgy6sapbnm7ng1pw3fqjyqge','true'),('fywkunwa878cin74eo1ggigcww','direct_channel_show','fywkunwa878cin74eo1ggigcww','true'),('fywkunwa878cin74eo1ggigcww','theme','','{\"awayIndicator\":\"#ffbc42\",\"buttonBg\":\"#51daad\",\"buttonColor\":\"#ffffff\",\"centerChannelBg\":\"#ffffff\",\"centerChannelColor\":\"#3d3c40\",\"codeTheme\":\"github\",\"dndIndicator\":\"#f74343\",\"errorTextColor\":\"#fd5960\",\"linkColor\":\"#33c4b6\",\"mentionBj\":\"#ffffff\",\"mentionColor\":\"#fa7a00\",\"mentionHighlightBg\":\"#ffe577\",\"mentionHighlightLink\":\"#166de0\",\"newMessageSeparator\":\"#ff8800\",\"onlineIndicator\":\"#06d6a0\",\"sidebarBg\":\"#2ca696\",\"sidebarHeaderBg\":\"#33c4b6\",\"sidebarHeaderTextColor\":\"#ffffff\",\"sidebarText\":\"#ffffff\",\"sidebarTextActiveBorder\":\"#579eff\",\"sidebarTextActiveColor\":\"#ffffff\",\"sidebarTextHoverBg\":\"#21796d\",\"sidebarUnreadText\":\"#ffffff\",\"type\":\"custom\"}'),('fywkunwa878cin74eo1ggigcww','tutorial_step','fywkunwa878cin74eo1ggigcww','999'),('ihkarc6ehpbdxdrnix9q3bbnse','channel_approximate_view_time','','1515009186348'),('ihkarc6ehpbdxdrnix9q3bbnse','tutorial_step','ihkarc6ehpbdxdrnix9q3bbnse','0'),('ppi7capgf7dw5x3tmj1od661do','channel_approximate_view_time','','1515009279455'),('ppi7capgf7dw5x3tmj1od661do','channel_approximate_view_time','khe3hs3txjnddy9f7ofmoo8ywr','1515009247801'),('ppi7capgf7dw5x3tmj1od661do','tutorial_step','ppi7capgf7dw5x3tmj1od661do','999');
/*!40000 ALTER TABLE `Preferences` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Reactions`
--

DROP TABLE IF EXISTS `Reactions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Reactions` (
  `UserId` varchar(26) NOT NULL,
  `PostId` varchar(26) NOT NULL,
  `EmojiName` varchar(64) NOT NULL,
  `CreateAt` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`UserId`,`PostId`,`EmojiName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Reactions`
--

LOCK TABLES `Reactions` WRITE;
/*!40000 ALTER TABLE `Reactions` DISABLE KEYS */;
/*!40000 ALTER TABLE `Reactions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Sessions`
--

DROP TABLE IF EXISTS `Sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Sessions` (
  `Id` varchar(26) NOT NULL,
  `Token` varchar(26) DEFAULT NULL,
  `CreateAt` bigint(20) DEFAULT NULL,
  `ExpiresAt` bigint(20) DEFAULT NULL,
  `LastActivityAt` bigint(20) DEFAULT NULL,
  `UserId` varchar(26) DEFAULT NULL,
  `DeviceId` text,
  `Roles` varchar(64) DEFAULT NULL,
  `IsOAuth` tinyint(1) DEFAULT NULL,
  `Props` text,
  PRIMARY KEY (`Id`),
  KEY `idx_sessions_user_id` (`UserId`),
  KEY `idx_sessions_token` (`Token`),
  KEY `idx_sessions_expires_at` (`ExpiresAt`),
  KEY `idx_sessions_create_at` (`CreateAt`),
  KEY `idx_sessions_last_activity_at` (`LastActivityAt`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Sessions`
--

LOCK TABLES `Sessions` WRITE;
/*!40000 ALTER TABLE `Sessions` DISABLE KEYS */;
INSERT INTO `Sessions` VALUES ('c4g9sitt3pyfixpnm913758szo','axt5w481zjb888dwgijuhx5gje',1514947036662,1517539036662,1514947036662,'fywkunwa878cin74eo1ggigcww','','system_admin system_user',0,'{\"browser\":\"Edge/15.15063\",\"os\":\"Windows 10\",\"platform\":\"Windows\"}'),('e8s3rpneafn43eu7ejhcwtxi1r','eupy1yoo6fgftqyphj3ynucekh',1514947229922,1517539229922,1514947229922,'fywkunwa878cin74eo1ggigcww','','system_admin system_user',0,'{\"browser\":\"Edge/15.15063\",\"os\":\"Windows 10\",\"platform\":\"Windows\"}'),('h8hrxih3ppdm9nadsgqgi6jtdw','tksdm4jxs3y6ujgb4ndzo8bt4a',1515008986483,1517600986483,1515010789084,'fywkunwa878cin74eo1ggigcww','','system_admin system_user',0,'{\"browser\":\"Chrome/63.0.3239.84\",\"os\":\"Windows 10\",\"platform\":\"Windows\"}'),('jm8ay3ktnffijcckimd8taaxdc','ekfepz16pjr8zqzna7rm66rmjc',1515008406561,1517600406561,1515017142570,'fywkunwa878cin74eo1ggigcww','','system_admin system_user',0,'{\"browser\":\"Edge/15.15063\",\"os\":\"Windows 10\",\"platform\":\"Windows\"}'),('uhku1mzkqty47bjqbabof59h3e','ac9pewooi7by7boeys54e3tkoc',1515009158292,1517601158292,1515009158292,'ihkarc6ehpbdxdrnix9q3bbnse','','system_user',0,'{\"browser\":\"Chrome/63.0.3239.84\",\"os\":\"Windows 10\",\"platform\":\"Windows\"}'),('xfnqaxdi5iyb5k33pcwxh9sf5e','di19jd6e9pddbjo6yuc6pajtto',1515009681823,1517601681823,1515017801835,'fywkunwa878cin74eo1ggigcww','','system_admin system_user',0,'{\"browser\":\"Chrome/63.0.3239.84\",\"os\":\"Windows 7\",\"platform\":\"Windows\"}'),('zc8416w7hpdyjf9b9ipdyfqszr','phnwd8teg7y8bprpjqidhz6iuh',1515006152499,1517598152499,1515006152499,'fywkunwa878cin74eo1ggigcww','','system_admin system_user',0,'{\"browser\":\"Edge/15.15063\",\"os\":\"Windows 10\",\"platform\":\"Windows\"}');
/*!40000 ALTER TABLE `Sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Status`
--

DROP TABLE IF EXISTS `Status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Status` (
  `UserId` varchar(26) NOT NULL,
  `Status` varchar(32) DEFAULT NULL,
  `Manual` tinyint(1) DEFAULT NULL,
  `LastActivityAt` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`UserId`),
  KEY `idx_status_user_id` (`UserId`),
  KEY `idx_status_status` (`Status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Status`
--

LOCK TABLES `Status` WRITE;
/*!40000 ALTER TABLE `Status` DISABLE KEYS */;
INSERT INTO `Status` VALUES ('a1hgy6sapbnm7ng1pw3fqjyqge','offline',0,1515006420240),('fywkunwa878cin74eo1ggigcww','away',0,1515017825122),('ihkarc6ehpbdxdrnix9q3bbnse','offline',0,1515009185191),('ppi7capgf7dw5x3tmj1od661do','offline',0,1515009638976);
/*!40000 ALTER TABLE `Status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Systems`
--

DROP TABLE IF EXISTS `Systems`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Systems` (
  `Name` varchar(64) NOT NULL,
  `Value` text,
  PRIMARY KEY (`Name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Systems`
--

LOCK TABLES `Systems` WRITE;
/*!40000 ALTER TABLE `Systems` DISABLE KEYS */;
INSERT INTO `Systems` VALUES ('DiagnosticId','h7we6siqcfr6zqs96iiupcdghy'),('LastSecurityTime','1514944445037'),('Version','4.5.0');
/*!40000 ALTER TABLE `Systems` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `TeamMembers`
--

DROP TABLE IF EXISTS `TeamMembers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `TeamMembers` (
  `TeamId` varchar(26) NOT NULL,
  `UserId` varchar(26) NOT NULL,
  `Roles` varchar(64) DEFAULT NULL,
  `DeleteAt` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`TeamId`,`UserId`),
  KEY `idx_teammembers_team_id` (`TeamId`),
  KEY `idx_teammembers_user_id` (`UserId`),
  KEY `idx_teammembers_delete_at` (`DeleteAt`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TeamMembers`
--

LOCK TABLES `TeamMembers` WRITE;
/*!40000 ALTER TABLE `TeamMembers` DISABLE KEYS */;
INSERT INTO `TeamMembers` VALUES ('5y11y919dird3jizxyb6ptwhoe','fywkunwa878cin74eo1ggigcww','team_user team_admin',0),('durfxcqzctn8fmi163ei3r4hde','ppi7capgf7dw5x3tmj1od661do','team_user team_admin',0),('fthsr5nj37na8bih4n7bwm139r','a1hgy6sapbnm7ng1pw3fqjyqge','team_user team_admin',0);
/*!40000 ALTER TABLE `TeamMembers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Teams`
--

DROP TABLE IF EXISTS `Teams`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Teams` (
  `Id` varchar(26) NOT NULL,
  `CreateAt` bigint(20) DEFAULT NULL,
  `UpdateAt` bigint(20) DEFAULT NULL,
  `DeleteAt` bigint(20) DEFAULT NULL,
  `DisplayName` varchar(64) DEFAULT NULL,
  `Name` varchar(64) DEFAULT NULL,
  `Description` varchar(255) DEFAULT NULL,
  `Email` varchar(128) DEFAULT NULL,
  `Type` varchar(255) DEFAULT NULL,
  `CompanyName` varchar(64) DEFAULT NULL,
  `AllowedDomains` text,
  `InviteId` varchar(32) DEFAULT NULL,
  `AllowOpenInvite` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`Id`),
  UNIQUE KEY `Name` (`Name`),
  KEY `idx_teams_name` (`Name`),
  KEY `idx_teams_invite_id` (`InviteId`),
  KEY `idx_teams_update_at` (`UpdateAt`),
  KEY `idx_teams_create_at` (`CreateAt`),
  KEY `idx_teams_delete_at` (`DeleteAt`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Teams`
--

LOCK TABLES `Teams` WRITE;
/*!40000 ALTER TABLE `Teams` DISABLE KEYS */;
INSERT INTO `Teams` VALUES ('5y11y919dird3jizxyb6ptwhoe',1514947149201,1514947149201,0,'Admin','test','','rui.lee92@gmail.com','O','','','8x511wtmmirztnd9nx5aeje48a',0),('durfxcqzctn8fmi163ei3r4hde',1515009246216,1515009246216,0,'Inter_testing','inter-testing','','yangkecoy@gmail.com','O','','','ncrhj55qfff45pf88u9y45bcsy',0),('fthsr5nj37na8bih4n7bwm139r',1515006310976,1515006310976,0,'test','test2','','rui.li@yale.edu','O','','','mc5nux8tjpyx5moo49q15y6kpc',0);
/*!40000 ALTER TABLE `Teams` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Tokens`
--

DROP TABLE IF EXISTS `Tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Tokens` (
  `Token` varchar(64) NOT NULL,
  `CreateAt` bigint(20) DEFAULT NULL,
  `Type` varchar(64) DEFAULT NULL,
  `Extra` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`Token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Tokens`
--

LOCK TABLES `Tokens` WRITE;
/*!40000 ALTER TABLE `Tokens` DISABLE KEYS */;
INSERT INTO `Tokens` VALUES ('b1cxm7nue684hxuoz9msxexbgkf95ckyty546yik9duaekz5bsa3qoacc4xu388p',1515009197076,'verify_email','ppi7capgf7dw5x3tmj1od661do'),('durci3fgq6pbgic9ghp15nssxscz5fog1pgrx3ttr6c8br67zgi9aofxts8ckzox',1515009158137,'verify_email','ihkarc6ehpbdxdrnix9q3bbnse'),('pbjyyaemtzb1hctuigrmm8xt3bo5tspp1qjifkcc9e37kg9bt7sp9n3x41b1gw5c',1514947036521,'verify_email','fywkunwa878cin74eo1ggigcww'),('zn4gcrrzsqwqyreik4qbeud7inzfuhnr6ibyem3r5am9kw43f66wqj663mkyencq',1515006284958,'verify_email','a1hgy6sapbnm7ng1pw3fqjyqge');
/*!40000 ALTER TABLE `Tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UserAccessTokens`
--

DROP TABLE IF EXISTS `UserAccessTokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `UserAccessTokens` (
  `Id` varchar(26) NOT NULL,
  `Token` varchar(26) DEFAULT NULL,
  `UserId` varchar(26) DEFAULT NULL,
  `Description` text,
  `IsActive` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`Id`),
  UNIQUE KEY `Token` (`Token`),
  KEY `idx_user_access_tokens_token` (`Token`),
  KEY `idx_user_access_tokens_user_id` (`UserId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UserAccessTokens`
--

LOCK TABLES `UserAccessTokens` WRITE;
/*!40000 ALTER TABLE `UserAccessTokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `UserAccessTokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Users`
--

DROP TABLE IF EXISTS `Users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Users` (
  `Id` varchar(26) NOT NULL,
  `CreateAt` bigint(20) DEFAULT NULL,
  `UpdateAt` bigint(20) DEFAULT NULL,
  `DeleteAt` bigint(20) DEFAULT NULL,
  `Username` varchar(64) DEFAULT NULL,
  `Password` varchar(128) DEFAULT NULL,
  `AuthData` varchar(128) DEFAULT NULL,
  `AuthService` varchar(32) DEFAULT NULL,
  `Email` varchar(128) DEFAULT NULL,
  `EmailVerified` tinyint(1) DEFAULT NULL,
  `Nickname` varchar(64) DEFAULT NULL,
  `FirstName` varchar(64) DEFAULT NULL,
  `LastName` varchar(64) DEFAULT NULL,
  `Position` varchar(64) DEFAULT NULL,
  `Roles` text,
  `AllowMarketing` tinyint(1) DEFAULT NULL,
  `Props` text,
  `NotifyProps` text,
  `LastPasswordUpdate` bigint(20) DEFAULT NULL,
  `LastPictureUpdate` bigint(20) DEFAULT NULL,
  `FailedAttempts` int(11) DEFAULT NULL,
  `Locale` varchar(5) DEFAULT NULL,
  `MfaActive` tinyint(1) DEFAULT NULL,
  `MfaSecret` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`Id`),
  UNIQUE KEY `Username` (`Username`),
  UNIQUE KEY `AuthData` (`AuthData`),
  UNIQUE KEY `Email` (`Email`),
  KEY `idx_users_email` (`Email`),
  KEY `idx_users_update_at` (`UpdateAt`),
  KEY `idx_users_create_at` (`CreateAt`),
  KEY `idx_users_delete_at` (`DeleteAt`),
  FULLTEXT KEY `idx_users_all_txt` (`Username`,`FirstName`,`LastName`,`Nickname`,`Email`),
  FULLTEXT KEY `idx_users_all_no_full_name_txt` (`Username`,`Nickname`,`Email`),
  FULLTEXT KEY `idx_users_names_txt` (`Username`,`FirstName`,`LastName`,`Nickname`),
  FULLTEXT KEY `idx_users_names_no_full_name_txt` (`Username`,`Nickname`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Users`
--

LOCK TABLES `Users` WRITE;
/*!40000 ALTER TABLE `Users` DISABLE KEYS */;
INSERT INTO `Users` VALUES ('a1hgy6sapbnm7ng1pw3fqjyqge',1515006284855,1515006311004,0,'test','$2a$10$bSrhdJRJwLOvWGsBUZEWOuzFIAcx0M.URU3OwnulG9OTpIGDBHnE6',NULL,'','rui.li@yale.edu',0,'','','','','system_user',1,'{}','{\"channel\":\"true\",\"desktop\":\"all\",\"desktop_sound\":\"true\",\"email\":\"true\",\"first_name\":\"false\",\"mention_keys\":\"test,@test\",\"push\":\"mention\"}',1515006284855,0,0,'en',0,''),('fywkunwa878cin74eo1ggigcww',1514947036418,1515010071039,0,'ruili','$2a$10$nhS3bullxfu57k867q4OT..B3cquRi5f0qWnsRJHkUF29IIU7shIi',NULL,'','rui.lee92@gmail.com',0,'','','','','system_admin system_user',1,'{}','{\"channel\":\"true\",\"desktop\":\"all\",\"desktop_sound\":\"true\",\"email\":\"true\",\"first_name\":\"false\",\"mention_keys\":\"ruili,@ruili\",\"push\":\"mention\"}',1514947036418,0,0,'zh-CN',0,''),('ihkarc6ehpbdxdrnix9q3bbnse',1515009158035,1515009158035,0,'delete','$2a$10$r6sxJeyf1QNvtQPR94rOc.BXT53W0//glYxqiIeaVVOhrfg2LtlWK',NULL,'','lr1@163.com',0,'','','','','system_user',1,'{}','{\"channel\":\"true\",\"desktop\":\"all\",\"desktop_sound\":\"true\",\"email\":\"true\",\"first_name\":\"false\",\"mention_keys\":\"delete,@delete\",\"push\":\"mention\"}',1515009158035,0,0,'en',0,''),('ppi7capgf7dw5x3tmj1od661do',1515009196972,1515009246244,0,'yangkecoy','$2a$10$D33v4fDoyJMcVSpYtwifzub7TSiRZ5mk6ysBe.u3/MnxIejxxOSeS',NULL,'','yangkecoy@gmail.com',0,'','','','','system_user',1,'{}','{\"channel\":\"true\",\"desktop\":\"all\",\"desktop_sound\":\"true\",\"email\":\"true\",\"first_name\":\"false\",\"mention_keys\":\"yangkecoy,@yangkecoy\",\"push\":\"mention\"}',1515009196972,0,0,'en',0,'');
/*!40000 ALTER TABLE `Users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-01-03 22:27:47
