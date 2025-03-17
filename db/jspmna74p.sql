-- MySQL dump 10.13  Distrib 5.7.31, for Linux (x86_64)
--
-- Host: localhost    Database: jspmna74p
-- ------------------------------------------------------
-- Server version	5.7.31

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
-- Table structure for table `chat`
--

DROP TABLE IF EXISTS `chat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `chat` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `adminid` bigint(20) DEFAULT NULL COMMENT '管理员id',
  `ask` longtext COMMENT '提问',
  `reply` longtext COMMENT '回复',
  `isreply` int(11) DEFAULT NULL COMMENT '是否回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1614147320704 DEFAULT CHARSET=utf8 COMMENT='在线咨询';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chat`
--

LOCK TABLES `chat` WRITE;
/*!40000 ALTER TABLE `chat` DISABLE KEYS */;
INSERT INTO `chat` VALUES (71,'2021-02-24 05:11:38',1,1,'提问1','回复1',1),(72,'2021-02-24 05:11:38',2,2,'提问2','回复2',2),(73,'2021-02-24 05:11:38',3,3,'提问3','回复3',3),(74,'2021-02-24 05:11:38',4,4,'提问4','回复4',4),(75,'2021-02-24 05:11:38',5,5,'提问5','回复5',5),(76,'2021-02-24 05:11:38',6,6,'提问6','回复6',6),(1614147320703,'2021-02-24 06:15:19',1614147039745,NULL,'‍在吗\r\n','在的\r\n',0);
/*!40000 ALTER TABLE `chat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `config`
--

DROP TABLE IF EXISTS `config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `config`
--

LOCK TABLES `config` WRITE;
/*!40000 ALTER TABLE `config` DISABLE KEYS */;
INSERT INTO `config` VALUES (1,'picture1','http://localhost:8080/jspmna74p/upload/1614147489165.png'),(2,'picture2','http://localhost:8080/jspmna74p/upload/picture2.jpg'),(3,'picture3','http://localhost:8080/jspmna74p/upload/picture3.jpg'),(6,'homepage',NULL);
/*!40000 ALTER TABLE `config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discussshiwuzhanshi`
--

DROP TABLE IF EXISTS `discussshiwuzhanshi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discussshiwuzhanshi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1614147216824 DEFAULT CHARSET=utf8 COMMENT='失物展示评论表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discussshiwuzhanshi`
--

LOCK TABLES `discussshiwuzhanshi` WRITE;
/*!40000 ALTER TABLE `discussshiwuzhanshi` DISABLE KEYS */;
INSERT INTO `discussshiwuzhanshi` VALUES (111,'2021-02-24 05:11:38',1,1,'评论内容1','回复内容1'),(112,'2021-02-24 05:11:38',2,2,'评论内容2','回复内容2'),(113,'2021-02-24 05:11:38',3,3,'评论内容3','回复内容3'),(114,'2021-02-24 05:11:38',4,4,'评论内容4','回复内容4'),(115,'2021-02-24 05:11:38',5,5,'评论内容5','回复内容5'),(116,'2021-02-24 05:11:38',6,6,'评论内容6','回复内容6'),(1614147216823,'2021-02-24 06:13:35',1614147124789,1614147039745,'测试',NULL);
/*!40000 ALTER TABLE `discussshiwuzhanshi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `forum`
--

DROP TABLE IF EXISTS `forum`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `forum` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) DEFAULT NULL COMMENT '帖子标题',
  `content` longtext NOT NULL COMMENT '帖子内容',
  `parentid` bigint(20) DEFAULT NULL COMMENT '父节点id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(200) DEFAULT NULL COMMENT '用户名',
  `isdone` varchar(200) DEFAULT NULL COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1614147297813 DEFAULT CHARSET=utf8 COMMENT='论坛交流';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `forum`
--

LOCK TABLES `forum` WRITE;
/*!40000 ALTER TABLE `forum` DISABLE KEYS */;
INSERT INTO `forum` VALUES (81,'2021-02-24 05:11:38','帖子标题1','帖子内容1',1,1,'用户名1','开放'),(82,'2021-02-24 05:11:38','帖子标题2','帖子内容2',2,2,'用户名2','开放'),(83,'2021-02-24 05:11:38','帖子标题3','帖子内容3',3,3,'用户名3','开放'),(84,'2021-02-24 05:11:38','帖子标题4','帖子内容4',4,4,'用户名4','开放'),(85,'2021-02-24 05:11:38','帖子标题5','帖子内容5',5,5,'用户名5','开放'),(86,'2021-02-24 05:11:38','帖子标题6','帖子内容6',6,6,'用户名6','开放'),(1614147285093,'2021-02-24 06:14:44','丢失一个xx物品','<p>丢失一个xx物品丢失一个xx物品丢失一个xx物品</p>',0,1614147039745,'002','开放'),(1614147297812,'2021-02-24 06:14:57',NULL,'更贴/回帖',1614147285093,1614147039745,'002',NULL);
/*!40000 ALTER TABLE `forum` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `news`
--

DROP TABLE IF EXISTS `news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `news` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) NOT NULL COMMENT '标题',
  `introduction` longtext COMMENT '简介',
  `picture` varchar(200) NOT NULL COMMENT '图片',
  `content` longtext NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1614147464940 DEFAULT CHARSET=utf8 COMMENT='小区公告';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news`
--

LOCK TABLES `news` WRITE;
/*!40000 ALTER TABLE `news` DISABLE KEYS */;
INSERT INTO `news` VALUES (101,'2021-02-24 05:11:38','标题1','简介1','http://localhost:8080/jspmna74p/upload/news_picture1.jpg','内容1'),(102,'2021-02-24 05:11:38','标题2','简介2','http://localhost:8080/jspmna74p/upload/news_picture2.jpg','内容2'),(103,'2021-02-24 05:11:38','标题3','简介3','http://localhost:8080/jspmna74p/upload/news_picture3.jpg','内容3'),(104,'2021-02-24 05:11:38','标题4','简介4','http://localhost:8080/jspmna74p/upload/news_picture4.jpg','内容4'),(105,'2021-02-24 05:11:38','标题5','简介5','http://localhost:8080/jspmna74p/upload/news_picture5.jpg','内容5'),(106,'2021-02-24 05:11:38','标题6','简介6','http://localhost:8080/jspmna74p/upload/news_picture6.jpg','内容6'),(1614147464939,'2021-02-24 06:17:44','公告测试1','测试测试测试','http://localhost:8080/jspmna74p/upload/1614147457542.jpeg','测试测试上次<img src=\"http://localhost:8080/jspmna74p/upload/1614147462631.jpg\" width=\"900\" height=\"560\" _src=\"http://localhost:8080/jspmna74p/upload/1614147462631.jpg\">\r\n');
/*!40000 ALTER TABLE `news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shiwurenling`
--

DROP TABLE IF EXISTS `shiwurenling`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shiwurenling` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `shiwubiaoti` varchar(200) DEFAULT NULL COMMENT '失物标题',
  `shiwumingcheng` varchar(200) DEFAULT NULL COMMENT '失物名称',
  `shiwuleixing` varchar(200) DEFAULT NULL COMMENT '失物类型',
  `shiwushuliang` varchar(200) DEFAULT NULL COMMENT '失物数量',
  `shizhuhao` varchar(200) DEFAULT NULL COMMENT '失主号',
  `shizhuming` varchar(200) DEFAULT NULL COMMENT '失主名',
  `lianxifangshi` varchar(200) DEFAULT NULL COMMENT '联系方式',
  `yishishijian` datetime DEFAULT NULL COMMENT '遗失时间',
  `yishididian` varchar(200) DEFAULT NULL COMMENT '遗失地点',
  `shiwuzhengming` longtext COMMENT '失物证明',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1614147259617 DEFAULT CHARSET=utf8 COMMENT='失物认领';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shiwurenling`
--

LOCK TABLES `shiwurenling` WRITE;
/*!40000 ALTER TABLE `shiwurenling` DISABLE KEYS */;
INSERT INTO `shiwurenling` VALUES (51,'2021-02-24 05:11:38','账号1','姓名1','失物标题1','失物名称1','失物类型1','失物数量1','失主号1','失主名1','联系方式1','2021-02-24 13:11:38','遗失地点1','失物证明1','是',''),(52,'2021-02-24 05:11:38','账号2','姓名2','失物标题2','失物名称2','失物类型2','失物数量2','失主号2','失主名2','联系方式2','2021-02-24 13:11:38','遗失地点2','失物证明2','是',''),(53,'2021-02-24 05:11:38','账号3','姓名3','失物标题3','失物名称3','失物类型3','失物数量3','失主号3','失主名3','联系方式3','2021-02-24 13:11:38','遗失地点3','失物证明3','是',''),(54,'2021-02-24 05:11:38','账号4','姓名4','失物标题4','失物名称4','失物类型4','失物数量4','失主号4','失主名4','联系方式4','2021-02-24 13:11:38','遗失地点4','失物证明4','是',''),(55,'2021-02-24 05:11:38','账号5','姓名5','失物标题5','失物名称5','失物类型5','失物数量5','失主号5','失主名5','联系方式5','2021-02-24 13:11:38','遗失地点5','失物证明5','是',''),(56,'2021-02-24 05:11:38','账号6','姓名6','失物标题6','失物名称6','失物类型6','失物数量6','失主号6','失主名6','联系方式6','2021-02-24 13:11:38','遗失地点6','失物证明6','是',''),(1614147259616,'2021-02-24 06:14:19','001','张三','捡到一部IPHONE11','IPHONE11','电子产品','1','002','李四','13800000000','2021-02-24 14:13:51','小区广场水池边','<p>请输入失物证明<img src=\"../../..//upload/1614147256273.jpg\" alt=\"\" width=\"494\" height=\"345\" /></p>','是','来拿吧');
/*!40000 ALTER TABLE `shiwurenling` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shiwuzhanshi`
--

DROP TABLE IF EXISTS `shiwuzhanshi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shiwuzhanshi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `shiwubiaoti` varchar(200) DEFAULT NULL COMMENT '失物标题',
  `shiwumingcheng` varchar(200) DEFAULT NULL COMMENT '失物名称',
  `shiwuleixing` varchar(200) DEFAULT NULL COMMENT '失物类型',
  `shiyishuliang` int(11) DEFAULT NULL COMMENT '拾遗数量',
  `shiwuzhaopian` varchar(200) DEFAULT NULL COMMENT '失物照片',
  `shiyishijian` datetime DEFAULT NULL COMMENT '拾遗时间',
  `shiyididian` varchar(200) DEFAULT NULL COMMENT '拾遗地点',
  `shiwuxiangqing` longtext COMMENT '失物详情',
  `thumbsupnum` int(11) DEFAULT '0' COMMENT '赞',
  `crazilynum` int(11) DEFAULT '0' COMMENT '踩',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  `clicknum` int(11) DEFAULT '0' COMMENT '点击次数',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1614147124790 DEFAULT CHARSET=utf8 COMMENT='失物展示';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shiwuzhanshi`
--

LOCK TABLES `shiwuzhanshi` WRITE;
/*!40000 ALTER TABLE `shiwuzhanshi` DISABLE KEYS */;
INSERT INTO `shiwuzhanshi` VALUES (41,'2021-02-24 05:11:38','账号1','姓名1','手机1','失物标题1','失物名称1','失物类型1',1,'http://localhost:8080/jspmna74p/upload/shiwuzhanshi_shiwuzhaopian1.jpg','2021-02-24 13:11:38','拾遗地点1','失物详情1',1,1,'2021-02-24 13:11:38',1),(42,'2021-02-24 05:11:38','账号2','姓名2','手机2','失物标题2','失物名称2','失物类型2',2,'http://localhost:8080/jspmna74p/upload/shiwuzhanshi_shiwuzhaopian2.jpg','2021-02-24 13:11:38','拾遗地点2','失物详情2',2,2,'2021-02-24 13:11:38',2),(43,'2021-02-24 05:11:38','账号3','姓名3','手机3','失物标题3','失物名称3','失物类型3',3,'http://localhost:8080/jspmna74p/upload/shiwuzhanshi_shiwuzhaopian3.jpg','2021-02-24 13:11:38','拾遗地点3','失物详情3',3,3,'2021-02-24 13:11:38',3),(44,'2021-02-24 05:11:38','账号4','姓名4','手机4','失物标题4','失物名称4','失物类型4',4,'http://localhost:8080/jspmna74p/upload/shiwuzhanshi_shiwuzhaopian4.jpg','2021-02-24 13:11:38','拾遗地点4','失物详情4',4,4,'2021-02-24 13:11:38',4),(45,'2021-02-24 05:11:38','账号5','姓名5','手机5','失物标题5','失物名称5','失物类型5',5,'http://localhost:8080/jspmna74p/upload/shiwuzhanshi_shiwuzhaopian5.jpg','2021-02-24 13:11:38','拾遗地点5','失物详情5',5,5,'2021-02-24 13:11:38',5),(46,'2021-02-24 05:11:38','账号6','姓名6','手机6','失物标题6','失物名称6','失物类型6',6,'http://localhost:8080/jspmna74p/upload/shiwuzhanshi_shiwuzhaopian6.jpg','2021-02-24 13:11:38','拾遗地点6','失物详情6',6,6,'2021-02-24 13:11:38',6),(1614147124789,'2021-02-24 06:12:04','001','张三','13800000000','捡到一部IPHONE11','IPHONE11','电子产品',1,'http://localhost:8080/jspmna74p/upload/1614147099751.png','2021-02-24 13:11:05','小区广场','编辑器可传文字/图片<img src=\"http://localhost:8080/jspmna74p/upload/1614147122968.jpg\" width=\"900\" height=\"560\" _src=\"http://localhost:8080/jspmna74p/upload/1614147122968.jpg\">\r\n',1,0,'2021-02-24 14:18:15',5);
/*!40000 ALTER TABLE `shiwuzhanshi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shizhu`
--

DROP TABLE IF EXISTS `shizhu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shizhu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shizhuhao` varchar(200) NOT NULL COMMENT '失主号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `shizhuming` varchar(200) NOT NULL COMMENT '失主名',
  `menpaihao` varchar(200) DEFAULT NULL COMMENT '门牌号',
  `lianxifangshi` varchar(200) DEFAULT NULL COMMENT '联系方式',
  `dianziyouxiang` varchar(200) DEFAULT NULL COMMENT '电子邮箱',
  `gerenzhaopian` varchar(200) DEFAULT NULL COMMENT '个人照片',
  PRIMARY KEY (`id`),
  UNIQUE KEY `shizhuhao` (`shizhuhao`)
) ENGINE=InnoDB AUTO_INCREMENT=1614147039746 DEFAULT CHARSET=utf8 COMMENT='失主';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shizhu`
--

LOCK TABLES `shizhu` WRITE;
/*!40000 ALTER TABLE `shizhu` DISABLE KEYS */;
INSERT INTO `shizhu` VALUES (21,'2021-02-24 05:11:38','失主1','123456','失主名1','门牌号1','13823888881','773890001@qq.com','http://localhost:8080/jspmna74p/upload/shizhu_gerenzhaopian1.jpg'),(22,'2021-02-24 05:11:38','失主2','123456','失主名2','门牌号2','13823888882','773890002@qq.com','http://localhost:8080/jspmna74p/upload/shizhu_gerenzhaopian2.jpg'),(23,'2021-02-24 05:11:38','失主3','123456','失主名3','门牌号3','13823888883','773890003@qq.com','http://localhost:8080/jspmna74p/upload/shizhu_gerenzhaopian3.jpg'),(24,'2021-02-24 05:11:38','失主4','123456','失主名4','门牌号4','13823888884','773890004@qq.com','http://localhost:8080/jspmna74p/upload/shizhu_gerenzhaopian4.jpg'),(25,'2021-02-24 05:11:38','失主5','123456','失主名5','门牌号5','13823888885','773890005@qq.com','http://localhost:8080/jspmna74p/upload/shizhu_gerenzhaopian5.jpg'),(26,'2021-02-24 05:11:38','失主6','123456','失主名6','门牌号6','13823888886','773890006@qq.com','http://localhost:8080/jspmna74p/upload/shizhu_gerenzhaopian6.jpg'),(1614147039745,'2021-02-24 06:10:39','002','001','李四','B栋308','13800000000','123@qq.com','http://localhost:8080/jspmna74p/upload/1614147192355.jpg');
/*!40000 ALTER TABLE `shizhu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `storeup`
--

DROP TABLE IF EXISTS `storeup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `storeup` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `refid` bigint(20) DEFAULT NULL COMMENT '收藏id',
  `tablename` varchar(200) DEFAULT NULL COMMENT '表名',
  `name` varchar(200) NOT NULL COMMENT '收藏名称',
  `picture` varchar(200) NOT NULL COMMENT '收藏图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1614147222585 DEFAULT CHARSET=utf8 COMMENT='收藏表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `storeup`
--

LOCK TABLES `storeup` WRITE;
/*!40000 ALTER TABLE `storeup` DISABLE KEYS */;
INSERT INTO `storeup` VALUES (1614147222584,'2021-02-24 06:13:41',1614147039745,1614147124789,'shiwuzhanshi','捡到一部IPHONE11','http://localhost:8080/jspmna74p/upload/1614147099751.png');
/*!40000 ALTER TABLE `storeup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `token`
--

DROP TABLE IF EXISTS `token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='token表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `token`
--

LOCK TABLES `token` WRITE;
/*!40000 ALTER TABLE `token` DISABLE KEYS */;
INSERT INTO `token` VALUES (1,1,'abo','users','管理员','csj10f174fi65yxi40i9uhpgdgqx1zyy','2021-02-24 06:06:59','2021-02-24 07:16:39'),(2,1614147012563,'001','yezhu','业主','vyhou323ckqrdx9befdjardia4r6btyp','2021-02-24 06:10:45','2021-02-24 07:10:45'),(3,1614147039745,'002','shizhu','失主','c9q7gej1dkowbylb1fipxrcekojwyor0','2021-02-24 06:13:02','2021-02-24 07:18:28');
/*!40000 ALTER TABLE `token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'abo','abo','管理员','2021-02-24 05:11:38');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wupinleixing`
--

DROP TABLE IF EXISTS `wupinleixing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wupinleixing` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `leixing` varchar(200) DEFAULT NULL COMMENT '类型',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1614146965728 DEFAULT CHARSET=utf8 COMMENT='物品类型';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wupinleixing`
--

LOCK TABLES `wupinleixing` WRITE;
/*!40000 ALTER TABLE `wupinleixing` DISABLE KEYS */;
INSERT INTO `wupinleixing` VALUES (1614146836137,'2021-02-24 06:07:15','证件'),(1614146856629,'2021-02-24 06:07:35','衣物'),(1614146867202,'2021-02-24 06:07:47','电子产品'),(1614146965727,'2021-02-24 06:09:25','其他');
/*!40000 ALTER TABLE `wupinleixing` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yezhu`
--

DROP TABLE IF EXISTS `yezhu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yezhu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhanghao` varchar(200) NOT NULL COMMENT '账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) NOT NULL COMMENT '姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `menpai` varchar(200) DEFAULT NULL COMMENT '门牌',
  `nianling` int(11) DEFAULT NULL COMMENT '年龄',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `zhaopian` varchar(200) DEFAULT NULL COMMENT '照片',
  PRIMARY KEY (`id`),
  UNIQUE KEY `zhanghao` (`zhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=1614147012564 DEFAULT CHARSET=utf8 COMMENT='业主';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yezhu`
--

LOCK TABLES `yezhu` WRITE;
/*!40000 ALTER TABLE `yezhu` DISABLE KEYS */;
INSERT INTO `yezhu` VALUES (11,'2021-02-24 05:11:38','业主1','123456','姓名1','男','门牌1',1,'13823888881','773890001@qq.com','http://localhost:8080/jspmna74p/upload/yezhu_zhaopian1.jpg'),(12,'2021-02-24 05:11:38','业主2','123456','姓名2','男','门牌2',2,'13823888882','773890002@qq.com','http://localhost:8080/jspmna74p/upload/yezhu_zhaopian2.jpg'),(13,'2021-02-24 05:11:38','业主3','123456','姓名3','男','门牌3',3,'13823888883','773890003@qq.com','http://localhost:8080/jspmna74p/upload/yezhu_zhaopian3.jpg'),(14,'2021-02-24 05:11:38','业主4','123456','姓名4','男','门牌4',4,'13823888884','773890004@qq.com','http://localhost:8080/jspmna74p/upload/yezhu_zhaopian4.jpg'),(15,'2021-02-24 05:11:38','业主5','123456','姓名5','男','门牌5',5,'13823888885','773890005@qq.com','http://localhost:8080/jspmna74p/upload/yezhu_zhaopian5.jpg'),(16,'2021-02-24 05:11:38','业主6','123456','姓名6','男','门牌6',6,'13823888886','773890006@qq.com','http://localhost:8080/jspmna74p/upload/yezhu_zhaopian6.jpg'),(1614147012563,'2021-02-24 06:10:12','001','001','张三','男','A栋208',23,'13800000000','123@qq.com','http://localhost:8080/jspmna74p/upload/1614147059030.jpeg');
/*!40000 ALTER TABLE `yezhu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zaixiantousu`
--

DROP TABLE IF EXISTS `zaixiantousu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zaixiantousu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `shiwubiaoti` varchar(200) DEFAULT NULL COMMENT '失物标题',
  `shiwumingcheng` varchar(200) DEFAULT NULL COMMENT '失物名称',
  `shiwuleixing` varchar(200) DEFAULT NULL COMMENT '失物类型',
  `shizhuhao` varchar(200) DEFAULT NULL COMMENT '失主号',
  `shizhuming` varchar(200) DEFAULT NULL COMMENT '失主名',
  `lianxifangshi` varchar(200) DEFAULT NULL COMMENT '联系方式',
  `tousubiaoti` varchar(200) DEFAULT NULL COMMENT '投诉标题',
  `tousushijian` datetime DEFAULT NULL COMMENT '投诉时间',
  `tousushuoming` longtext COMMENT '投诉说明',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1614147371246 DEFAULT CHARSET=utf8 COMMENT='在线投诉';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zaixiantousu`
--

LOCK TABLES `zaixiantousu` WRITE;
/*!40000 ALTER TABLE `zaixiantousu` DISABLE KEYS */;
INSERT INTO `zaixiantousu` VALUES (61,'2021-02-24 05:11:38','账号1','姓名1','失物标题1','失物名称1','失物类型1','失主号1','失主名1','联系方式1','投诉标题1','2021-02-24 13:11:38','投诉说明1','是',''),(62,'2021-02-24 05:11:38','账号2','姓名2','失物标题2','失物名称2','失物类型2','失主号2','失主名2','联系方式2','投诉标题2','2021-02-24 13:11:38','投诉说明2','是',''),(63,'2021-02-24 05:11:38','账号3','姓名3','失物标题3','失物名称3','失物类型3','失主号3','失主名3','联系方式3','投诉标题3','2021-02-24 13:11:38','投诉说明3','是',''),(64,'2021-02-24 05:11:38','账号4','姓名4','失物标题4','失物名称4','失物类型4','失主号4','失主名4','联系方式4','投诉标题4','2021-02-24 13:11:38','投诉说明4','是',''),(65,'2021-02-24 05:11:38','账号5','姓名5','失物标题5','失物名称5','失物类型5','失主号5','失主名5','联系方式5','投诉标题5','2021-02-24 13:11:38','投诉说明5','是',''),(66,'2021-02-24 05:11:38','账号6','姓名6','失物标题6','失物名称6','失物类型6','失主号6','失主名6','联系方式6','投诉标题6','2021-02-24 13:11:38','投诉说明6','是',''),(1614147371245,'2021-02-24 06:16:10','001','张三','捡到一部IPHONE11','IPHONE11','电子产品','002','李四','13800000000','冒名认领','2021-02-24 14:15:57','测试测试测试\r\n','是','收到');
/*!40000 ALTER TABLE `zaixiantousu` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-02-26 10:00:26
