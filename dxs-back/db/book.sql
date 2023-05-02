-- MySQL dump 10.13  Distrib 8.0.31, for Win64 (x86_64)
--
-- Host: localhost    Database: dxs
-- ------------------------------------------------------
-- Server version	8.0.31

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `answer_collection`
--

DROP TABLE IF EXISTS `answer_collection`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `answer_collection` (
                                     `answer_collection_id` int NOT NULL AUTO_INCREMENT COMMENT '答卷收集ID',
                                     `questionnaire_title` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL COMMENT '问卷标题',
                                     `submit_attachments` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL COMMENT '提交附件',
                                     `teacher_account` int DEFAULT '0' COMMENT '教师账户',
                                     `teacher_name` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL COMMENT '教师姓名',
                                     `student_name` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL COMMENT '学生姓名',
                                     `student_account` int DEFAULT '0' COMMENT '学生账号',
                                     `submission_time` date DEFAULT NULL COMMENT '提交时间',
                                     `recommend` int NOT NULL DEFAULT '0' COMMENT '智能推荐',
                                     `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
                                     `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
                                     PRIMARY KEY (`answer_collection_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COMMENT='答卷收集';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `answer_collection`
--

LOCK TABLES `answer_collection` WRITE;
/*!40000 ALTER TABLE `answer_collection` DISABLE KEYS */;
/*!40000 ALTER TABLE `answer_collection` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `appointment_record`
--

DROP TABLE IF EXISTS `appointment_record`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `appointment_record` (
                                      `appointment_record_id` int NOT NULL AUTO_INCREMENT COMMENT '预约记录ID',
                                      `teacher_job_number` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL COMMENT '教师工号',
                                      `teacher_name` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL COMMENT '教师姓名',
                                      `teacher_account` int DEFAULT '0' COMMENT '教师账户',
                                      `time_of_appointment` datetime DEFAULT NULL COMMENT '预约时间',
                                      `student_name` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL COMMENT '学生姓名',
                                      `student_account` int DEFAULT '0' COMMENT '学生账户',
                                      `submission_time` datetime DEFAULT NULL COMMENT '提交时间',
                                      `reservation_status` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL COMMENT '预约状态',
                                      `consultation_content` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci COMMENT '咨询内容',
                                      `reply_content` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci COMMENT '回复内容',
                                      `recommend` int NOT NULL DEFAULT '0' COMMENT '智能推荐',
                                      `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
                                      `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
                                      PRIMARY KEY (`appointment_record_id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb3 COMMENT='预约记录';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `appointment_record`
--

LOCK TABLES `appointment_record` WRITE;
/*!40000 ALTER TABLE `appointment_record` DISABLE KEYS */;
INSERT INTO `appointment_record` VALUES (3,'94','吴翔',0,'2022-12-31 00:00:00','admin',1,NULL,'1','心理交流',NULL,0,'2022-12-28 14:12:26','2022-12-28 13:13:11'),(5,'1','asd',0,'2022-12-30 02:00:00','ahjda',123,NULL,'1','aizib',NULL,0,'2022-12-29 19:42:45','2022-12-31 05:52:32'),(9,'94','吴翔',0,'2022-12-21 20:00:00','admin',1,NULL,'0','心理交流',NULL,0,'2022-12-28 15:51:47','2022-12-29 11:43:15'),(10,'97','胡少锴',0,'2022-12-30 09:00:00','admin',1,NULL,'1','抑郁症疏导',NULL,0,'2022-12-28 15:52:21','2022-12-28 13:13:32'),(11,'94','吴翔',0,'2022-12-31 07:00:00','川师第一深情、',9,NULL,NULL,'心理交流',NULL,0,'2022-12-28 15:52:53','2022-12-28 13:13:18'),(12,'96','李菊红',0,'2023-01-01 09:00:00','川师第一深情、',9,NULL,NULL,'心理交流',NULL,0,'2022-12-28 15:53:07','2022-12-28 13:13:18'),(13,'96','李菊红',0,'2022-12-30 00:00:00','admin',1,NULL,'1','抑郁症疏导',NULL,0,'2022-12-28 20:57:32','2022-12-28 13:13:39'),(14,'97','胡少锴',0,'2023-01-05 06:00:00','川师第一深情、',9,NULL,'1','日常的倾诉',NULL,0,'2022-12-28 23:56:08','2022-12-28 15:56:08'),(15,'94','吴翔',0,'2022-12-30 02:00:00','hx11111',98,NULL,'1','123',NULL,0,'2022-12-29 19:36:12','2022-12-29 11:36:12');
/*!40000 ALTER TABLE `appointment_record` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `biz_book`
--

DROP TABLE IF EXISTS `biz_book`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `biz_book` (
                            `id` int NOT NULL AUTO_INCREMENT COMMENT 'ID',
                            `book_name` varchar(100) DEFAULT NULL COMMENT '书名',
                            `author` varchar(45) DEFAULT NULL COMMENT '作者',
                            `publish` varchar(100) DEFAULT NULL COMMENT '出版社',
                            `publish_time` varchar(100) DEFAULT NULL COMMENT '出版日期',
                            `price` double DEFAULT NULL COMMENT '价格',
                            `book_type` varchar(100) DEFAULT NULL COMMENT '书籍分类',
                            `upload_time` varchar(100) DEFAULT NULL COMMENT '上架时间',
                            `create_time` varchar(100) DEFAULT NULL COMMENT '记录创建时间',
                            `update_time` varchar(100) DEFAULT NULL COMMENT '记录修改时间',
                            PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `biz_book`
--

LOCK TABLES `biz_book` WRITE;
/*!40000 ALTER TABLE `biz_book` DISABLE KEYS */;
INSERT INTO `biz_book` VALUES (5,'渣男养成史','抑郁症测评','100','1',20,'抑郁症测评','11','11','11'),(6,'测试','测试','100','1',20,'1','11','11','11');
/*!40000 ALTER TABLE `biz_book` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `biz_brrow`
--

DROP TABLE IF EXISTS `biz_brrow`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `biz_brrow` (
                             `id` int NOT NULL AUTO_INCREMENT,
                             `user_id` bigint DEFAULT NULL,
                             `book_id` int DEFAULT NULL,
                             `brrow_time` varchar(100) DEFAULT NULL,
                             `ret_time` varchar(100) DEFAULT NULL,
                             `real_time` varchar(100) DEFAULT NULL,
                             `is_over` int DEFAULT NULL,
                             `is_del` int DEFAULT NULL COMMENT '是否删除',
                             PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `biz_brrow`
--

LOCK TABLES `biz_brrow` WRITE;
/*!40000 ALTER TABLE `biz_brrow` DISABLE KEYS */;
INSERT INTO `biz_brrow` VALUES (13,1,5,'2022-12-3','2022/12/7','',70,1),(14,1,6,'2022-12-3','2022/12/7','',60,1);
/*!40000 ALTER TABLE `biz_brrow` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comment`
--

DROP TABLE IF EXISTS `comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `comment` (
                           `comment_id` int unsigned NOT NULL AUTO_INCREMENT COMMENT '评论ID：',
                           `user_id` int unsigned NOT NULL DEFAULT '0' COMMENT '评论人ID：',
                           `reply_to_id` int unsigned NOT NULL DEFAULT '0' COMMENT '回复评论ID：空为0',
                           `content` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci COMMENT '内容：',
                           `nickname` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL COMMENT '昵称：',
                           `avatar` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL COMMENT '头像地址：[0,255]',
                           `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间：',
                           `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间：',
                           `source_table` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL COMMENT '来源表：',
                           `source_field` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL COMMENT '来源字段：',
                           `source_id` int unsigned NOT NULL DEFAULT '0' COMMENT '来源ID：',
                           PRIMARY KEY (`comment_id`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb3 COMMENT='评论：';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comment`
--

LOCK TABLES `comment` WRITE;
/*!40000 ALTER TABLE `comment` DISABLE KEYS */;
INSERT INTO `comment` VALUES (1,1,0,'感谢感谢','admin','rnapxb47a.hn-bkt.clouddn.com/upload/20221225/7ec13b9da0d9452fa668e962acf97770.png','2022-12-29 03:56:08','2022-12-29 05:33:25',NULL,NULL,0),(2,9,1,'+1','川师第一深情、','rnapxb47a.hn-bkt.clouddn.com/upload/20221226/661608f8403f43d7ab224d8438af109b.jpg','2022-12-29 03:58:09','2022-12-29 06:34:52',NULL,'admin',1),(3,94,1,'不用谢','吴翔','rnapxb47a.hn-bkt.clouddn.com/upload/20221225/b741df3902dc4303859ba0e142ac52c9.png','2022-12-29 06:41:09','2022-12-29 06:41:09',NULL,'admin',1),(6,1,1,'谢谢老师','admin','rnapxb47a.hn-bkt.clouddn.com/upload/20221225/7ec13b9da0d9452fa668e962acf97770.png','2022-12-29 09:56:23','2022-12-29 10:14:14',NULL,'吴翔',94),(8,9,0,'今天是开心的一天，希望天天开心','川师第一深情、','rnapxb47a.hn-bkt.clouddn.com/upload/20221226/661608f8403f43d7ab224d8438af109b.jpg','2022-12-29 11:13:24','2022-12-29 11:13:24',NULL,NULL,0),(9,9,8,'大家呢？','川师第一深情、','rnapxb47a.hn-bkt.clouddn.com/upload/20221226/661608f8403f43d7ab224d8438af109b.jpg','2022-12-29 11:14:15','2022-12-29 11:14:15',NULL,'川师第一深情、',9),(11,1,8,'我也很开心','admin','rnapxb47a.hn-bkt.clouddn.com/upload/20221225/7ec13b9da0d9452fa668e962acf97770.png','2022-12-29 11:26:43','2022-12-29 11:26:43',NULL,'川师第一深情、',9),(12,98,1,'hello\n','hx11111','rnapxb47a.hn-bkt.clouddn.com/upload/20221229/736b967b265e4de6afc4f8c0cdad94c4.jpg','2022-12-29 11:36:38','2022-12-29 11:36:38',NULL,'admin',1),(13,98,1,'11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111','hx11111','rnapxb47a.hn-bkt.clouddn.com/upload/20221229/736b967b265e4de6afc4f8c0cdad94c4.jpg','2022-12-29 11:37:06','2022-12-29 11:37:06',NULL,'admin',1);
/*!40000 ALTER TABLE `comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `doctor`
--

DROP TABLE IF EXISTS `doctor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `doctor` (
                          `doctor_id` int NOT NULL AUTO_INCREMENT COMMENT '教师ID',
                          `doctor_account` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '教师账户',
                          `doctor_job_number` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL COMMENT '教师工号',
                          `doctor_name` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL COMMENT '教师姓名',
                          `gender` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL COMMENT '性别',
                          `age` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL COMMENT '年龄',
                          `examine_state` varchar(16) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '已通过' COMMENT '审核状态',
                          `recommend` int NOT NULL DEFAULT '0' COMMENT '智能推荐',
                          `user_id` int NOT NULL DEFAULT '0' COMMENT '用户ID',
                          `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
                          `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
                          PRIMARY KEY (`doctor_id`),
                          UNIQUE KEY `teacher_account` (`doctor_account`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3 COMMENT='教师';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `doctor`
--

LOCK TABLES `doctor` WRITE;
/*!40000 ALTER TABLE `doctor` DISABLE KEYS */;
/*!40000 ALTER TABLE `doctor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exam`
--

DROP TABLE IF EXISTS `exam`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `exam` (
                        `exam_id` mediumint unsigned NOT NULL AUTO_INCREMENT COMMENT '考试id',
                        `name` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '' COMMENT '考试名称：[2,32]',
                        `duration` int DEFAULT NULL COMMENT '答题数量',
                        `score` double(8,2) DEFAULT NULL COMMENT '总分',
                        `status` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '状态：启用、禁用',
                        `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间：',
                        `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间：',
                        PRIMARY KEY (`exam_id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=latin1 COMMENT='考试';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exam`
--

LOCK TABLES `exam` WRITE;
/*!40000 ALTER TABLE `exam` DISABLE KEYS */;
INSERT INTO `exam` VALUES (1,'抑郁症测试',20,100.00,'1','2022-12-07 15:29:36','2022-12-14 14:01:24'),(2,'HCL-32轻躁狂症自评表',20,100.00,'1','2022-12-07 15:29:36','2022-12-19 06:38:24'),(3,'焦虑症测试题',20,100.00,'1','2022-12-07 15:29:36','2022-12-19 06:38:24'),(4,'PSTRI（心理压力）压力测试',20,100.00,'1','2022-12-07 15:29:36','2022-12-19 06:38:24'),(36,'测试功能111',1,1.00,'0','2022-12-19 10:04:17','2022-12-19 10:04:17');
/*!40000 ALTER TABLE `exam` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exam_question`
--

DROP TABLE IF EXISTS `exam_question`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `exam_question` (
                                 `exam_question_id` mediumint unsigned NOT NULL AUTO_INCREMENT,
                                 `type` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '类型',
                                 `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '题目',
                                 `question_item` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '选项',
                                 `answer` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '参考答案',
                                 `score` double(8,2) DEFAULT NULL COMMENT '总分',
                                 `question_order` int DEFAULT NULL COMMENT '排序',
                                 `exam_id` mediumint DEFAULT NULL COMMENT '所属试卷',
                                 `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间：',
                                 `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间：',
                                 PRIMARY KEY (`exam_question_id`)
) ENGINE=InnoDB AUTO_INCREMENT=81 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exam_question`
--

LOCK TABLES `exam_question` WRITE;
/*!40000 ALTER TABLE `exam_question` DISABLE KEYS */;
INSERT INTO `exam_question` VALUES (1,'单选题','1、你是否一直感到伤心或悲哀？','A. 从来没有           B.最近没有              C.有一点                D.总是   ',NULL,5.00,1,1,'2022-12-08 01:38:10','2022-12-19 15:25:23'),(2,'单选题','2、是不是总在怀念着以往的美好感伤现在的悲伤？','A. 从来没有           B.最近没有              C.有一点                D.总是   ',NULL,5.00,2,1,'2022-12-08 01:38:10','2022-12-19 15:25:23'),(3,'单选题','3、你是否感到前景渺茫？','A. 从来没有           B.最近没有              C.有一点                D.总是   ',NULL,5.00,3,1,'2022-12-08 01:38:10','2022-12-19 15:25:23'),(4,'单选题','4、是否总觉得困难太多，怕自己克服不了？','A. 从来没有           B.最近没有              C.有一点                D.总是   ',NULL,5.00,4,1,'2022-12-08 01:38:10','2022-12-19 15:25:23'),(5,'单选题','5、你是否觉得自己没有价值或自以为是一个失败者？','A. 从来没有           B.最近没有              C.有一点                D.总是   ',NULL,5.00,5,1,'2022-12-08 01:38:10','2022-12-19 15:25:23'),(6,'单选题','6、这段时间总在贬低自己抬高他人？','A. 从来没有           B.最近没有              C.有一点                D.总是   ',NULL,5.00,6,1,'2022-12-08 01:38:10','2022-12-19 15:25:23'),(7,'单选题','7、你是否觉得力不从心或自叹不如别人？','A. 从来没有           B.最近没有              C.有一点                D.总是   ',NULL,5.00,7,1,'2022-12-08 01:38:10','2022-12-19 15:25:23'),(8,'单选题','8、是否觉得自己总在关键的时候差人一等？','A. 从来没有           B.最近没有              C.有一点                D.总是   ',NULL,5.00,8,1,'2022-12-08 01:38:10','2022-12-19 15:25:23'),(9,'单选题','9、你是否对任何事都自责？','A. 从来没有           B.最近没有              C.有一点                D.总是   ',NULL,5.00,9,1,'2022-12-08 01:38:10','2022-12-19 15:25:23'),(10,'单选题','10、这段时间是否觉得自己做了很多对不起朋友的事？','A. 从来没有           B.最近没有              C.有一点                D.总是   ',NULL,5.00,10,1,'2022-12-08 01:38:10','2022-12-19 15:25:23'),(11,'单选题','11、你是否在做决定时犹豫不决？','A. 从来没有           B.最近没有              C.有一点                D.总是   ',NULL,5.00,11,1,'2022-12-08 01:38:10','2022-12-19 15:25:23'),(12,'单选题','12、是否总在关键的时候止步不前？','A. 从来没有           B.最近没有              C.有一点                D.总是   ',NULL,5.00,12,1,'2022-12-08 01:38:10','2022-12-19 15:25:23'),(13,'单选题','13、这段时间你是否一直处在愤怒和不满状态？','A. 从来没有           B.最近没有              C.有一点                D.总是   ',NULL,5.00,13,1,'2022-12-08 01:38:10','2022-12-19 15:25:23'),(14,'单选题','14、你是否常常有患得患失的感觉？','A. 从来没有           B.最近没有              C.有一点                D.总是   ',NULL,5.00,14,1,'2022-12-08 01:38:10','2022-12-19 15:25:24'),(15,'单选题','15、你对事业、家庭、爱好或朋友是否丧失了兴趣？','A. 从来没有           B.最近没有              C.有一点                D.总是   ',NULL,5.00,15,1,'2022-12-08 01:38:10','2022-12-19 15:25:24'),(16,'单选题','16、你常常觉得很无聊？','A. 从来没有           B.最近没有              C.有一点                D.总是   ',NULL,5.00,16,1,'2022-12-08 01:38:10','2022-12-19 15:25:24'),(17,'单选题','17、你是否感到一蹶不振，做事情毫无动力？','A. 从来没有           B.最近没有              C.有一点                D.总是   ',NULL,5.00,17,1,'2022-12-08 01:38:10','2022-12-19 15:25:24'),(18,'单选题','18、你觉得任何的事物都不能引起你想动的欲望？','A. 从来没有           B.最近没有              C.有一点                D.总是   ',NULL,5.00,18,1,'2022-12-08 01:38:10','2022-12-19 15:25:24'),(19,'单选题','19、你是否意味自己已衰老或是去魅力？','A. 从来没有           B.最近没有              C.有一点                D.总是   ',NULL,5.00,19,1,'2022-12-08 01:38:10','2022-12-19 15:25:24'),(20,'单选题','20、你觉得自己总是比不过他人，没有独特的特点？','A. 从来没有           B.最近没有              C.有一点                D.总是   ',NULL,5.00,20,1,'2022-12-08 01:38:10','2022-12-19 15:25:20'),(21,'单选题','1、我需要睡眠的时间比平时少','   A.总是                  B.有一点              C.最近没有          D.从来没有',NULL,5.00,1,2,'2022-12-08 01:38:10','2022-12-19 15:24:25'),(22,'单选题','2、我感觉精力充沛或活动增多','   A.总是                  B.有一点              C.最近没有          D.从来没有',NULL,5.00,2,2,'2022-12-08 01:38:10','2022-12-19 15:24:25'),(23,'单选题','3、我更加自信','   A.总是                  B.有一点              C.最近没有          D.从来没有',NULL,5.00,3,2,'2022-12-08 01:38:10','2022-12-19 15:24:25'),(24,'单选题','4、我更加喜欢我的工作','   A.总是                  B.有一点              C.最近没有          D.从来没有',NULL,5.00,4,2,'2022-12-08 01:38:10','2022-12-19 15:24:25'),(25,'单选题','5、我更加喜欢交往(打更多电话、外出更加频繁)','   A.总是                  B.有一点              C.最近没有          D.从来没有',NULL,5.00,5,2,'2022-12-08 01:38:10','2022-12-19 15:24:25'),(26,'单选题','6、我喜欢旅行并且确实旅行了很多','   A.总是                  B.有一点              C.最近没有          D.从来没有',NULL,5.00,6,2,'2022-12-08 01:38:10','2022-12-19 15:24:25'),(27,'单选题','7、当时喜欢开快车或驾驶中更加不顾风险','   A.总是                  B.有一点              C.最近没有          D.从来没有',NULL,5.00,7,2,'2022-12-08 01:38:10','2022-12-19 15:24:25'),(28,'单选题','8、我会花比较多的钱或很多的钱','   A.总是                  B.有一点              C.最近没有          D.从来没有',NULL,5.00,8,2,'2022-12-08 01:38:10','2022-12-19 15:24:25'),(29,'单选题','9、在我的日常生活中更加冒险','   A.总是                  B.有一点              C.最近没有          D.从来没有',NULL,5.00,9,2,'2022-12-08 01:38:10','2022-12-19 15:24:25'),(30,'单选题','10、我的活动量会增多（如花较多时间体育运动）','   A.总是                  B.有一点              C.最近没有          D.从来没有',NULL,5.00,10,2,'2022-12-08 01:38:10','2022-12-19 15:24:25'),(31,'单选题','11、我有比较多活动的计划，或有许多计划活动','   A.总是                  B.有一点              C.最近没有          D.从来没有',NULL,5.00,11,2,'2022-12-08 01:38:10','2022-12-19 15:24:25'),(32,'单选题','12、我有很多的想法，我更加才思敏捷','   A.总是                  B.有一点              C.最近没有          D.从来没有',NULL,5.00,12,2,'2022-12-08 01:38:10','2022-12-19 15:24:25'),(33,'单选题','13、我不再害羞，不再前怕狼后怕虎','   A.总是                  B.有一点              C.最近没有          D.从来没有',NULL,5.00,13,2,'2022-12-08 01:38:10','2022-12-19 15:24:25'),(34,'单选题','14、我穿的衣服更加鲜艳，打扮更加时髦','   A.总是                  B.有一点              C.最近没有          D.从来没有',NULL,5.00,14,2,'2022-12-08 01:38:10','2022-12-19 15:24:25'),(35,'单选题','15、我希望接触更多人，或的确结识了更多的人','   A.总是                  B.有一点              C.最近没有          D.从来没有',NULL,5.00,15,2,'2022-12-08 01:38:10','2022-12-19 15:24:25'),(36,'单选题','16、我对性更加感兴趣，或性欲明显增加','   A.总是                  B.有一点              C.最近没有          D.从来没有',NULL,5.00,16,2,'2022-12-08 01:38:10','2022-12-19 15:24:25'),(37,'单选题','17、我更喜欢找异性聊天，或性行为比过去多','   A.总是                  B.有一点              C.最近没有          D.从来没有',NULL,5.00,17,2,'2022-12-08 01:38:10','2022-12-19 15:24:25'),(38,'单选题','18、我更加健谈','   A.总是                  B.有一点              C.最近没有          D.从来没有',NULL,5.00,18,2,'2022-12-08 01:38:10','2022-12-19 15:24:25'),(39,'单选题','19、我思维更加敏捷','   A.总是                  B.有一点              C.最近没有          D.从来没有',NULL,5.00,19,2,'2022-12-08 01:38:10','2022-12-19 15:24:25'),(40,'单选题','20、当我讲话时，我更喜欢讲笑话或开更多玩笑','   A.总是                  B.有一点              C.最近没有          D.从来没有',NULL,5.00,20,2,'2022-12-08 01:38:10','2022-12-19 15:24:19'),(41,'单选题','1、觉得比平常容易紧张和着急','   A.很少                    B.有时                   C.经常                   D.总是   ',NULL,5.00,1,3,'2022-12-08 01:38:10','2022-12-19 15:21:51'),(42,'单选题','2、无缘无故地感到害怕','   A.很少                    B.有时                   C.经常                   D.总是   ',NULL,5.00,2,3,'2022-12-08 01:38:10','2022-12-19 15:21:55'),(43,'单选题','3、容易心里烦乱或觉得惊恐','   A.很少                    B.有时                   C.经常                   D.总是   ',NULL,5.00,3,3,'2022-12-08 01:38:10','2022-12-19 15:21:55'),(44,'单选题','4、觉得可能要发疯','   A.很少                    B.有时                   C.经常                   D.总是   ',NULL,5.00,4,3,'2022-12-08 01:38:10','2022-12-19 15:21:55'),(45,'单选题','5、觉得一切都很好,也不会发生什么不幸','   A.很少                    B.有时                   C.经常                   D.总是   ',NULL,5.00,5,3,'2022-12-08 01:38:10','2022-12-19 15:21:55'),(46,'单选题','6、手脚发抖打颤','   A.很少                    B.有时                   C.经常                   D.总是   ',NULL,5.00,6,3,'2022-12-08 01:38:10','2022-12-19 15:21:55'),(47,'单选题','7、因为头痛、头颈痛和背痛而苦恼','   A.很少                    B.有时                   C.经常                   D.总是   ',NULL,5.00,7,3,'2022-12-08 01:38:10','2022-12-19 15:21:55'),(48,'单选题','8、感觉容易衰弱和疲乏','   A.很少                    B.有时                   C.经常                   D.总是   ',NULL,5.00,8,3,'2022-12-08 01:38:10','2022-12-19 15:21:55'),(49,'单选题','9、觉得心平气和,并且容易安静地坐着','   A.很少                    B.有时                   C.经常                   D.总是   ',NULL,5.00,9,3,'2022-12-08 01:38:10','2022-12-19 15:21:55'),(50,'单选题','10、觉得心跳得很快','   A.很少                    B.有时                   C.经常                   D.总是   ',NULL,5.00,10,3,'2022-12-08 01:38:10','2022-12-19 15:21:55'),(51,'单选题','11、因为一阵阵头晕而苦恼','   A.很少                    B.有时                   C.经常                   D.总是   ',NULL,5.00,11,3,'2022-12-08 01:38:10','2022-12-19 15:21:55'),(52,'单选题','12、有晕倒发作,或觉得要晕倒似的','   A.很少                    B.有时                   C.经常                   D.总是   ',NULL,5.00,12,3,'2022-12-08 01:38:10','2022-12-19 15:21:55'),(53,'单选题','13、吸气呼气都感到很容易','   A.很少                    B.有时                   C.经常                   D.总是   ',NULL,5.00,13,3,'2022-12-08 01:38:10','2022-12-19 15:21:55'),(54,'单选题','14、手脚麻木和刺痛','   A.很少                    B.有时                   C.经常                   D.总是   ',NULL,5.00,14,3,'2022-12-08 01:38:10','2022-12-19 15:21:55'),(55,'单选题','15、因为胃痛和消化不良而苦恼','   A.很少                    B.有时                   C.经常                   D.总是   ',NULL,5.00,15,3,'2022-12-08 01:38:10','2022-12-19 15:21:55'),(56,'单选题','16、常常要小便','   A.很少                    B.有时                   C.经常                   D.总是   ',NULL,5.00,16,3,'2022-12-08 01:38:10','2022-12-19 15:21:55'),(57,'单选题','17、手常常是干燥温暖的','   A.很少                    B.有时                   C.经常                   D.总是   ',NULL,5.00,17,3,'2022-12-08 01:38:10','2022-12-19 15:21:55'),(58,'单选题','18、脸红发热','   A.很少                    B.有时                   C.经常                   D.总是   ',NULL,5.00,18,3,'2022-12-08 01:38:10','2022-12-19 15:21:55'),(59,'单选题','19、容易入睡并且睡得很好','   A.很少                    B.有时                   C.经常                   D.总是   ',NULL,5.00,19,3,'2022-12-08 01:38:10','2022-12-19 15:21:55'),(60,'单选题','20、做噩梦','   A.很少                    B.有时                   C.经常                   D.总是   ',NULL,5.00,20,3,'2022-12-08 01:38:10','2022-12-19 15:21:55'),(61,'单选题','1. 我受背痛之苦','   A.很少                    B.有时                   C.经常                   D.总是   ',NULL,5.00,1,4,'2022-12-08 01:38:10','2022-12-19 15:21:55'),(62,'单选题','2. 我的睡眠不足且睡不安稳','   A.很少                    B.有时                   C.经常                   D.总是   ',NULL,5.00,2,4,'2022-12-08 01:38:10','2022-12-19 15:21:55'),(63,'单选题','3. 我头痛','   A.很少                    B.有时                   C.经常                   D.总是   ',NULL,5.00,3,4,'2022-12-08 01:38:10','2022-12-19 15:21:55'),(64,'单选题','4. 我颚部疼痛','   A.很少                    B.有时                   C.经常                   D.总是   ',NULL,5.00,4,4,'2022-12-08 01:38:10','2022-12-19 15:21:55'),(65,'单选题','5. 若需要等待，我会不安','   A.很少                    B.有时                   C.经常                   D.总是   ',NULL,5.00,5,4,'2022-12-08 01:38:10','2022-12-19 15:21:55'),(66,'单选题','6. 我的后颈感到疼痛','   A.很少                    B.有时                   C.经常                   D.总是   ',NULL,5.00,6,4,'2022-12-08 01:38:10','2022-12-19 15:21:55'),(67,'单选题','7. 我比多数人更神经紧张','   A.很少                    B.有时                   C.经常                   D.总是   ',NULL,5.00,7,4,'2022-12-08 01:38:10','2022-12-19 15:21:55'),(68,'单选题','8. 我很难入睡','   A.很少                    B.有时                   C.经常                   D.总是   ',NULL,5.00,8,4,'2022-12-08 01:38:10','2022-12-19 15:21:55'),(69,'单选题','9. 我的头感到紧或痛','   A.很少                    B.有时                   C.经常                   D.总是   ',NULL,5.00,9,4,'2022-12-08 01:38:10','2022-12-19 15:21:55'),(70,'单选题','10. 我的胃有毛病','   A.很少                    B.有时                   C.经常                   D.总是   ',NULL,5.00,10,4,'2022-12-08 01:38:10','2022-12-19 15:21:55'),(71,'单选题','11. 我对自己没有信心','   A.很少                    B.有时                   C.经常                   D.总是   ',NULL,5.00,11,4,'2022-12-08 01:38:10','2022-12-19 15:21:55'),(72,'单选题','12. 我会自言自语','   A.很少                    B.有时                   C.经常                   D.总是   ',NULL,5.00,12,4,'2022-12-08 01:38:10','2022-12-19 15:21:55'),(73,'单选题','13. 我忧虑财务问题','   A.很少                    B.有时                   C.经常                   D.总是   ',NULL,5.00,13,4,'2022-12-08 01:38:10','2022-12-19 15:21:55'),(74,'单选题','14. 与人见面时，我会胆怯','   A.很少                    B.有时                   C.经常                   D.总是   ',NULL,5.00,14,4,'2022-12-08 01:38:10','2022-12-19 15:21:55'),(75,'单选题','15. 我怕发生可怕的事','   A.很少                    B.有时                   C.经常                   D.总是   ',NULL,5.00,15,4,'2022-12-08 01:38:10','2022-12-19 15:21:55'),(76,'单选题','16. 白天我觉得很累','   A.很少                    B.有时                   C.经常                   D.总是   ',NULL,5.00,16,4,'2022-12-08 01:38:10','2022-12-19 15:21:55'),(77,'单选题','17. 下午感到喉咙痛，但并非由于染上感冒','   A.很少                    B.有时                   C.经常                   D.总是   ',NULL,5.00,17,4,'2022-12-08 01:38:10','2022-12-19 15:21:55'),(78,'单选题','18. 我心情不安，无法静坐','   A.很少                    B.有时                   C.经常                   D.总是   ',NULL,5.00,18,4,'2022-12-08 01:38:10','2022-12-19 15:21:55'),(79,'单选题','19. 我感到非常口干','   A.很少                    B.有时                   C.经常                   D.总是   ',NULL,5.00,19,4,'2022-12-08 01:38:10','2022-12-19 15:21:55'),(80,'单选题','20. 我的心脏有毛病','   A.很少                    B.有时                   C.经常                   D.总是   ',NULL,5.00,20,4,'2022-12-08 01:38:10','2022-12-19 15:21:55');
/*!40000 ALTER TABLE `exam_question` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lecture`
--

DROP TABLE IF EXISTS `lecture`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lecture` (
                           `lecture_id` int NOT NULL AUTO_INCREMENT COMMENT '讲座ID',
                           `lecture_doctorname` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL COMMENT '讲座名',
                           `lecture_name` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL COMMENT '讲座老师',
                           `start_time` datetime DEFAULT NULL COMMENT '讲座时间',
                           `end_time` datetime DEFAULT NULL,
                           PRIMARY KEY (`lecture_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3 COMMENT='讲座';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lecture`
--

LOCK TABLES `lecture` WRITE;
/*!40000 ALTER TABLE `lecture` DISABLE KEYS */;
INSERT INTO `lecture` VALUES (1,'14天重启亲密关系，让你的安全感坚不可摧','周丽瑗','2022-12-28 12:00:00','2022-12-28 12:40:00'),(5,'21天情绪训练营：疏通情绪管道，告别易怒、冲动、不理智','李还胜','2022-12-31 15:00:00','2022-12-31 16:00:00');
/*!40000 ALTER TABLE `lecture` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lecture_record`
--

DROP TABLE IF EXISTS `lecture_record`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lecture_record` (
                                  `record_id` int NOT NULL AUTO_INCREMENT COMMENT '预约id',
                                  `lecture_name` varchar(255) NOT NULL COMMENT '讲座名',
                                  `lecture_doctorname` varchar(255) NOT NULL COMMENT '讲师',
                                  `start_time` datetime NOT NULL COMMENT '开始时间',
                                  `end_time` datetime NOT NULL COMMENT '结束时间',
                                  `status` varchar(255) DEFAULT NULL COMMENT '状态，显示是否超过预约的时间',
                                  `record_username` varchar(100) NOT NULL COMMENT '预约人',
                                  `user_id` varchar(100) NOT NULL COMMENT '预约人id',
                                  PRIMARY KEY (`record_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lecture_record`
--

LOCK TABLES `lecture_record` WRITE;
/*!40000 ALTER TABLE `lecture_record` DISABLE KEYS */;
INSERT INTO `lecture_record` VALUES (3,'14天重启亲密关系，让你的安全感坚不可摧','周丽瑗','2022-12-28 12:00:00','2022-12-28 12:40:00','1','admin','1'),(4,'14天重启亲密关系，让你的安全感坚不可摧','周丽瑗','2022-12-28 12:00:00','2022-12-28 12:40:00','1','川师第一深情、','9'),(6,'21天情绪训练营：疏通情绪管道，告别易怒、冲动、不理智','李还胜','2022-12-31 15:00:00','2022-12-31 16:00:00','1','admin','1'),(7,'21天情绪训练营：疏通情绪管道，告别易怒、冲动、不理智','李还胜','2022-12-31 15:00:00','2022-12-31 16:00:00','1','川师第一深情、','9'),(8,'14天重启亲密关系，让你的安全感坚不可摧','周丽瑗','2022-12-28 12:00:00','2022-12-28 12:40:00','1','hx11111','98');
/*!40000 ALTER TABLE `lecture_record` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notice`
--

DROP TABLE IF EXISTS `notice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `notice` (
                          `notice_id` mediumint unsigned NOT NULL AUTO_INCREMENT COMMENT '公告id：',
                          `title` varchar(125) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '' COMMENT '标题：',
                          `content` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci COMMENT '正文：',
                          `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间：',
                          `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间：',
                          PRIMARY KEY (`notice_id`)
) ENGINE=MyISAM AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb3 COMMENT='公告：';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notice`
--

LOCK TABLES `notice` WRITE;
/*!40000 ALTER TABLE `notice` DISABLE KEYS */;
INSERT INTO `notice` VALUES (16,'内向者的生存法则：被动社交+主动选择','在心理咨询室里，当来访者谈及他们的内向性格时，更多的感受是厌恶。他们会讨厌自己不合群，不懂社交。\n\n\n\n还有一次，一位母亲和我谈论她的孩子时说：“他就是太内向了，这样不好”。\n\n\n\n这时，孩子就坐在她身旁。听到这位母亲的话，我的心被刺痛了，因为从这位母亲的话里，我感受到了她对孩子内向性格的不接纳。\n\n\n\n但是，当一个人的内向性格不被他人和自己接纳时，他就会变得外向吗？\n\n\n\n事实是并不会。\n\n\n\n有一位来访者，他非常不接纳自己的内向性格，因此，他很想改变自己，甚至他还为了让自己变得外向而做了一些傻事，听他讲述自己的经历时我全身的汗毛都竖起来了。\n\n\n\n我的头脑里呈现出一幅画面：一个人正在用力地拿着剪刀修剪自己，浑身是血。\n\n\n\n结果是什么呢？\n\n\n\n他受到了伤害，内心变得更加羞耻和封闭。\n\n\n\n其实，我也是一个内向性格的人。\n\n\n\n内向者的典型特点是不爱说话，不擅社交。\n\n\n\n无论是性格内向还是外向，终有一天，我们还是要走向更大的世界，还是要与人社交的。因此，内向者，常常会感受到自己与这个世界的格格不入。\n\n\n\n如今，我步入社会也有11年了，渐渐地，我发现自己已经摸索出来一项内向者的生存法则，希望下面的三项法则可以帮到因为内向而痛苦的人。\n\n\n\n内向者的生存法则一：\n接受自己本来的样子\n\n\n性格内向，确实会给人带来一些困扰。一个人独处的时候还好，到了人群中，我们就开始黯然失色。\n\n\n\n内向者的主要困扰是在人际关系中，\n\n\n\n比如：\n\n\n\n见人会感觉尴尬、脸红、不知所措；\n\n想说的话表达不出来，或者心口不一；\n\n因为恐惧而回避社交。\n\n\n\n但是，性格这件事在大概率上是不会发生变化的，也就是说，无论一个人怎么修改自己，性格内向的人也不会变得外向，我们也无法把自己变成别人，我们唯一能做的事就是接受自己本来的样子。\n\n\n\n尽管在人际场合中，我也会觉得不适，但是我对自己的内向性格还是能接受的。这一点，还要感谢我的父亲。在我小的时候，他常常夸我性格内向、文静。他的夸赞，让我对自己的性格内向多了几分接纳和认同。\n\n\n\n在上大学的时候，我看中了一门生意，也问工作人员要到了老板的电话，但是不敢打，我就让男朋友打。\n\n\n\n工作后，不喜欢用打电话的沟通方式，我就用文字与人沟通。（真的要感谢互联网的发达，让我总是可以用自己喜欢的方式与人互动）。\n\n\n\n当我接受自己之后，事情开始变得不一样。虽然，我的性格依然内向，但是我的自信心和安全感提升了很多。\n\n\n\n现在的我，无论是文字、语音、视频、面对面与人沟通，都不再困难。\n\n\n\n说到这里，就不得不提及内向者的第二生存法则：被动社交\n\n\n\n内向者的生存法则二：\n被动社交\n\n\n因为性格内向，我很少主动与人接触，大多数时候，我都是被动社交的。学生时代，也是如此。做不了那个在人际中会来事的人，我就做那个等人来找我的人。\n\n\n\n而心理学、心理咨询的工作简直就是为我量身定制的。\n\n\n\n拿心理咨询的这份工作来举例，我们不会主动联系来访者说你来找我咨询吧，我们的工作开始于来访者的主动预约。\n\n\n\n因为在从事心理方面的工作，也常常会有人主动与我连接。\n\n\n\n后来，我逐渐意识到一个真相，那就是作为一个性格内向的人，我们不是不善交际，而是我们还没有找到适合自己的方式和途径。\n\n\n\n被动社交的诀窍，不完全是等。\n\n而是遇。\n\n\n\n做好自己要做的，想做的，在人生前行的道路上，我们就会遇见与自己同频的人。\n\n\n\n当遇到同频的人时，内向者也可以滔滔不绝，知无不言言无不尽。这一点，在心理咨询工作中，我常常能够感受到。比如，说自己性格内向，不会说话，不会表达的来访者，在心理咨询当中表达的却是非常清晰自然。\n\n\n\n你有没有发现，在一些场合里，你可以一言不发，但在另一些场合里，你却可以表达自如。\n\n\n\n对我而言，我的被动社交不仅仅是得益于心理学的专业，也得益于文字表达。内向性格的人，内心世界是极为丰富的，相对于说，内向者更擅长文字表达。\n\n\n\n也正因为如此，来到我身边的人，多半是认可我的，他们提前通过文字/视频而了解我，找到我。\n\n\n\n做好被动社交的关键是，用自己擅长的方式与这个世界相处，用自己擅长的方式去表达，吸引同频的人来到你身边。\n\n\n\n内向者的生存法则三：\n主动选择\n\n\n来主动找我们的人，我们都要与之互动吗？\n\n\n\n也不是的。\n\n\n\n我的号里就删除过几个人。\n\n\n\n他们的行为触怒到了我，比如，关系明明不是很熟，却每天问我各种问题，甚至夜里对我发起催命连环Call。\n\n\n\n在人际关系中，有一个非常重要的原则，对内向性格者尤为如此，那就是主动选择，也就是筛选。\n\n\n\n这个世界上的人那么多，并不是所有人都适合与你交往或共事。\n\n\n\n就像一位朋友说的：“也许我可以不用强迫自己去跟大部分人搞好关系，只要选择和自己合得来的人深入交往即可”。\n\n\n\n内向性格者，可以被动社交，但一定要主动选择和谁交往，不和谁交往。\n\n\n\n远离那些一接近你就剥削你，侵犯你，贬损你，以及让你情绪糟糕的人。因为他们对你有着不切实际的期待，他们只会向你要，而不懂得尊重和给予。\n\n\n\n要在关系中保持良好的自我感觉以及足够的自信，懂得主动选择非常关键 。\n\n\n\n我们可以内向，但是不能没有原则。\n\n\n\n内向者，对于情绪和环境都是有着极高的敏感度的，哪些人和你同频，哪些人适合交往，你的感觉会带给你答案，\n\n\n\n信任你的感觉，它会给予你最精准的指引。\n\n\n\n用适合你的方式，与适合你的人交往，你会更坦然，更自信。','2022-12-18 12:56:17','2022-12-18 14:33:37'),(17,'异性之间，有纯洁的友谊吗？这个心理学答案很有说服力','01\n心理意义上，\n不存在纯洁的男人和女人\n\n\n心理学家荣格认为，每个生理男人都有女性的一面，叫阿尼玛；每个生理女性都有男性的一面，叫阿尼姆斯。\n\n\n\n这和我们日常生活中的直观感受相符，即男人有女人的一面，女人也有男人的一面。\n\n\n\n从心理意义上来说，不存在纯洁的男人和女人。大家都是男人和女人的结合体。\n\n\n\n爱情本来就是心理意义上的存在。只能从心理意义上探讨，所以，男人与男人、男人与女人、女人与女人，不同的生理性别的组合，都存在爱情。\n\n\n\n就像小品《纯闺蜜》中，马丽和艾伦认识多年，经常在一起，如果没有喜爱，怎么能“愿意”在一起呢？\n\n\n\n只是，他们之间的“爱情”比例比较低而已。所以马丽说，男闺蜜艾伦是自己生命里的一块小拼图，而男朋友沈腾是自己生命的全部。\n\n\n\n异性之间，有纯洁的友谊吗？这个心理学答案很有说服力\n\n\n\n02\n没有纯洁的友谊，\n只是比例不同而已\n\n\n前面说了，每个人在心理上没有绝对的性别，任何两个产生交互的个体，都有着爱情、友情和亲情，只是比例不同而已。\n\n\n\n我们常说，夫妻之间的感情会变成友情和亲情；父母和孩子之间的关系也可以是朋友的关系，这就说明了恋人之间没有纯洁的爱情，亲人之间也没有纯洁的亲情，异性之间也没有纯洁的友谊。\n\n\n\n另外，纯洁一词，我们该怎么理解呢？\n\n\n\n纯洁，这种不可量化的存在，无法讨论。杂质、混合几乎是一种必然的存在，就像我们说的一个人单纯得只有善良，只有善良没有邪恶的人，存在吗？不存在。\n\n\n\n从这个角度来说，亲情、友情和爱情，这三种人际交互的基本情感，必然同时存在于任何两个产生互动的个体之间。\n\n\n\n混合不同搭配，产生不同的效果。\n\n\n\n像小品中艾伦，相对于马丽而言，就是友情多一些；沈腾相对于马丽来说，就是爱情多一些。\n\n\n\n异性之间，有纯洁的友谊吗？这个心理学答案很有说服力\n\n\n\n03\n纯洁只是一种\n理想化的不可实现的状态\n\n\n有人可能会有疑问，既然异性之间没有纯洁的友谊，那么恋人之间究竟有没有忠诚、专一呢？\n\n\n\n答案很遗憾，在我看来，没有。\n\n\n\n也就是说，真爱不是唯一的。因为人可以控制自己的行为，但无法控制自己的感情不产生冲动，所以精神上的移情别恋是种必然不可控、不受意志力支配的行为。\n\n\n\n这么说，并不是给现实生活中的不忠者开脱责任，而是想说精神上不可控，但这并不代表行为上可以任意为之。\n\n\n\n从心理学角度来说，强调忠诚，就是对感情不稳定性的一种确信而产生的外在补偿。\n\n\n\n因为恋人之间原始安全感匮乏，他们无法确定自己是否值得一直被爱，也不相信自己和对方，所以需要婚姻、忠诚、专一、誓言等外在形式固定一下感情。\n\n\n\n异性之间，有纯洁的友谊吗？这个心理学答案很有说服力\n\n\n\n写在最后\n\n\n人与人之间只要有连接，就会有感情。只要有感情，就会有爱情。\n\n\n\n就像小品中的马丽，虽然嘴上说她和艾伦认识那么多年，真的没什么，但并不代表他们之间没有感情，只是马丽对艾伦的感情，还没有达到能和她谈恋爱的级别。\n\n\n\n那么，接下来的问题便是，我们该如何面对感情呢？\n\n\n\n首先，问问自己，自己对别人的感情到达什么程度能被自己识别？再到达什么程度自己能接受？\n\n这是我们选择伴侣的过程。\n\n\n\n其次，看看伴侣对别人的感情到达什么程度自己能接受？\n\n\n\n就像小品中的沈腾，作为男朋友，女朋友和男闺蜜的感情到达什么程度自己能接受，自己不能接受，进而选择要不要在一起。\n\n\n\n再次，在行为上选择性地节制。\n\n\n\n也就是说，无论是自己和异性朋友之间，还是伴侣和异性朋友之间，需要根据接受度来调整自己的行为。\n\n\n\n这是“度”的问题，不是“有没有”的问题。而这个“度”，就是我们自己说的算了。\n\n\n\n当然，我们也不要太较真，强迫或追求绝对的安全和纯洁，因为这样会把关系弄得很紧张。\n\n\n\n','2022-12-18 13:43:13','2022-12-18 13:47:16'),(18,'心理学研究揭示：有这种特质的人，最可能成为人生赢家','在心理学界，有一个著名的研究。\n\n\n\n你可能听过它，因为它几乎影响着全人类的幸福。\n\n\n\n那时是1938年，大部分心理研究聚焦于人为什么会生病，为什么会失败……\n\n\n\n哈佛大学Arlie Bock和团体一反常态，他们想研究人为什么会幸福，为什么会成功，为什么会成为人生赢家。\n\n\n\n为了寻找答案，他们追踪了268名哈佛本科生的一生，记录他们的人生境遇。\n\n\n\n长达76年的追踪后，他们的确发现一个关键性因素，当人们拥有这个因素时，会更幸福、更成功。\n\n\n\n这个因素究竟是什么呢？\n\n\n\n它不是名利，不是知识，而是——关系。\n\n\n\n是的，幸福的秘诀，是拥有良好的关系。\n\n\n\n听上去很简单，对吗？但其实很难真正做到，甚至很难被人真正理解。\n\n\n\n你拥有良好的关系吗？你会为了得到幸福，去努力建构良好的关系吗？\n\n\n\n我想不是每个人都能毫不犹豫地回答“是”。\n\n\n\n作为一名心理咨询师，我深刻地发现，幸福感缺失的人，很多是因为关系不和谐，可能是家庭关系、夫妻关系、也可能是和自己的关系。\n\n\n\n在咨询过程中，我所做的事情是不断地让人们理解这一点，并且让他们去连接自己对于关系的渴望。因为这种渴望里，藏着无限的潜能和智慧。\n\n\n\n忽视和压抑对关系的渴望，可能会让我们痛苦、抑郁、远离幸福。\n\n\n\n今天，我想以几个让我印象深刻的真实故事来聊聊，如何理解自己对于关系的渴望，并如何追随它获得幸福。\n\n\n01\n“原来我是用生病的方式，\n去获得关系啊”\n\n八年前，有一位55岁的女性阿玲在医院被诊断为中度抑郁症，她在服药的同时，找我做心理咨询。\n\n\n\n阿玲刚刚退休，一个人独自生活。\n\n\n\n阿玲的丈夫为了得到更好的报酬，去了外地工作；女儿刚参加完高考，去了外地读大学，家里突然只剩下她一个人。\n\n\n\n阿玲从小有很多的兄弟姐妹，习惯了热闹的生活。一个人呆着，反而不习惯了。\n\n\n\n在咨询中，她告诉我，平常一个人在家，什么都不做，不看电视、不串门、不走亲戚，只是一个人发呆，慢慢开始发现自己有了失眠、呼吸急促、胸闷等症状，她怀疑身体出了问题，便去各大医院求诊，但是医院查不出有任何器质性病变。\n\n\n\n阿玲又去了外省更大的医院，继续做了更系统的检查，但还是显示身体很健康，医生建议她去看心理科。所以阿玲去了当地的精神卫生医院，被诊断为中度抑郁症。\n\n\n\n奇妙的是，当她被诊断为中度抑郁症以后，生活发生了一些变化。\n\n\n\n丈夫开始重视她、关心她；女儿也经常打电话和探望她，亲戚朋友闻讯也赶来宽慰她。\n\n\n我便问她：“如果抑郁症给你带来什么好处的话，会是什么？”\n\n\n\n她想了很久，觉得这个问题很奇怪、很荒诞，不觉得抑郁症有什么好处。\n\n\n\n于是我接着问她：“如果有一天，你的抑郁症突然好了，你的生活会发生什么变化吗？”\n\n\n\n阿玲思索了很久，“那我当然开心了，这样我就可以回家，不用住在医院里了。”\n\n\n“然后呢？”我接着问她。\n\n\n\n“然后，我可以回到家里……那我又变成了一个人”，她突然沉默了很久。\n\n\n\n原来，抑郁症在阿玲的身上是有意义的，它像是一个朋友，在无意识中帮助阿玲有更多的人际获益。\n\n\n\n阿玲在当下没有能力自主地去发展人际交往能力的现状下，她的潜意识发展出了一种症状，来帮助她实现对关系的渴望。\n\n\n\n在我的职业生涯中，这是我第一次深切地发现，人对关系的渴望，竟然如此强烈。\n\n\n\n我没想到，这个发现，在当时也影响了我的人生。\n\n\n\n图片\n\n\n02\n“母亲打麻将，\n也是寻求关系啊”\n\n\n一直以来，我是一个比较喜欢独处，不喜喧哗的人。\n\n\n\n接触到阿玲这个个案的时候，我刚去异地工作，父亲平常在县城工作，周末才回家。妹妹刚刚出嫁，所以平常周一到周五基本上是我母亲一个人在家。\n\n\n\n曾经过春节时，我往往都会与母亲有分歧。因为母亲退休在家，总喜欢约很多人来家里打麻将，弄得家里吵闹和杂乱。所以每年春节回家，于我而言都是一件特别焦虑的事情。\n\n\n\n但在那一年，阿玲的案例让我明白，母亲是靠打麻将来获得人际关系，排解孤独。\n\n\n\n因为我常年在外工作，妹妹已经出嫁，爸爸在县城工作，打麻将是她喜欢的生活方式，相比较于环境卫生，人际交往很明显要排在更重要的位置上。\n\n\n\n所以，与阿玲结束咨询以后，我拨通了母亲的电话，我告诉她：“我再也不干预你在家打麻将了”。\n\n\n\n母亲听完也感到很欣慰。\n\n\n\n但是我内心还是感到很愧疚，因为我没有设身处地去理解她的感受和需求。\n\n\n\n当年春节，为了表达对母亲的愧疚，我特意买了很多工作地的特产回去探望。\n\n\n\n当我回到老家，推开我家客厅门的一刹那，我的内疚感顿时就烟消云散了。\n\n\n\n因为客厅里又多了第二张麻将桌。\n\n\n\n当然看到这一幕，我也很坦然，毕竟我更看重母亲的快乐和幸福。\n\n\n\n这两年，新冠疫情发生以来，母亲也积极响应国家号召，实行社交隔离政策，找到了新的娱乐方式——网上麻将。\n\n\n\n这些让我深深地理解开篇提到的研究——那些享受家庭欢乐的人，生活更健康；那些郊外朋友聚餐的人，生活更美满；那些秉烛夜谈的人，生活更幸福。\n\n\n\n关系对一个人成长是非常重要的，当然我并不是提倡大家觥筹交错，无效社交；我比较鼓励每一个人按照自己的兴趣和个性，找寻自己去连接他人和世界的方式。\n\n\n\n我深深地相信，一个人成长的最好方式，是向这个世界呈现真实的自己。\n\n\n图片\n\n\n但是，我也深知，对于有些人而言，建立和谐的关系，是一件非常有挑战性的事情。\n\n\n那些在早年遭遇关系创伤的人，长大后往往会重复童年的关系模式。\n\n\n\n03\n如果对生活中的关系很失望，\n还有一种关系你可以尝试\n\n\n六年前，一个大学女生珍，因为在宿舍里经常被攻击，来到我的咨询室。\n\n\n\n珍成长在一个离异家庭，她有两个姐姐。父母特别希望有一个男孩，当年超生生下她，发现是女孩，便很失望。\n\n\n\n后来父母分开了，珍与姐姐父亲生活在一起。\n\n\n\n珍为了证明自己的能力，非常懂事和勤奋，在家里承担很多家务，在学校也很刻苦，一直是学校前三名，是大家眼中的三好学生。\n\n\n\n在和珍咨询的过程中，我经常会有一种“被照顾”的感觉。多次体验到这种“被照顾”的感受以后，我把我的感受告诉了珍。\n\n\n\n“我经常有一种被你照顾的感觉，我会感觉到你把我放在比你高很多的位置上。”\n\n\n\n这也促发了珍的思考，她从小觉得自己是不被接纳的，因为自己的性别，也因为父母的离异，所以她拼命地做家务和努力学习，来取悦父亲和家人，来证明自己是值得被爱的。\n\n\n\n在学校也是，她从来不敢发脾气，一直取悦和讨好同学。\n\n\n\n上大学以后，因为要住集体宿舍，珍发现当她长时间去取悦舍友时，如打扫卫生和经常帮她们带饭等等，舍友并没有给她预期的回应。\n\n\n\n珍一方面很累，另一方面觉得跟舍友关系比较遥远，在学校里感到很孤独。\n\n\n\n有时候，受到舍友的言语攻击，珍只能默默消化，暴饮暴食。过度进食又会长胖并产生内疚和后悔，让珍陷入到一种恶性循环当中。\n\n\n\n这么多年，珍觉得好像她的人生一直在重复，生活在一种不被接纳的环境之中，让她很难真实地表达她自己。\n\n\n唯独在咨询室里，在与咨询师的关系中，她感觉安全和被信任。\n\n\n\n我们每周见一次，珍在咨询室里越来越多、越来越自在地表达她的想法和感受。\n\n\n\n虽然，我也还是会在某些瞬间感受到她的取悦。我还是持续不断地倾听她、关注她、欣赏她。\n\n\n\n珍告诉我，在咨询室里她感受到了被看到和被接纳；与咨询师的关系，也让她意识到她是有价值的，是值得爱的，她渐渐地能够认同自己。\n\n\n\n几个月以后，我们结束了访谈。\n\n\n\n后来有一次，珍的状态不是很好，她问我是否可以在咨询室空段的时候，自己去咨询室的椅子坐一会，那样可以让她感受到一种陪伴和力量。\n\n\n\n我答应了她的请求。\n\n\n\n不久，我听说珍考上了外省的研究生。\n\n\n\n我很欣慰地体验到，当一段关系具有安全和涵容的特质时，这段关系的空间也具有治愈力。\n\n\n\n建立良好的关系，是我们每个人持续一生的课题，也是我们为了幸福必须学会的能力。\n\n\n\n没有人能跳过，也没有人能不学自通。\n\n\n\n如果，过往的经历让你对关系失望，甚至畏惧关系；如果现在生活中，很多关系对你造成了负面的影响甚至伤害……记住，并不是所有关系都是这样。\n\n\n\n你还可以试试心理咨询，先在咨询关系里看到自己。\n\n\n\n心理咨询并不总是一件轻松的事情，因为当一个人要面临自己真实的课题时，有时会伴随恐惧、害怕和焦虑，所以它需要一个人具有很大的勇气，甚至是决心。\n\n\n\n但是好在，在咨询室里，咨询关系是一段善意、安全、舒适而又富有滋养性的关系。\n\n\n\n如果你准备好了，你可以尝试敲一下门，也许这段关系，会带给你积极的改变。','2022-12-18 14:44:06','2022-12-18 14:44:06'),(19,'“我害怕女儿变成另一个我”：如何阻止代际伤害传递？','开篇，先和你做个小互动——\n\n\n\n请回忆一次你经历过的家庭矛盾，试图回忆起矛盾的细节。\n\n\n\n然后，请回答：为什么产生这次矛盾？\n\n\n\n我猜测大部分的答案可能都是：因为父母/伴侣/孩子或者自己有问题……\n\n\n\n很多人会习惯性认为家庭出现矛盾，要么是对方出了问题，要么是自己出了问题（前者往往更多）。\n\n\n\n在咨询室里，我也总是遇到这样的情景——\n\n\n\n妻子来抱怨丈夫的毛病，希望咨询师能改掉丈夫的毛病；\n\n\n\n母亲抱怨孩子不听话，希望咨询师解决孩子不听话的问题……他们认为只要对方改变了，家庭就和谐了。\n\n\n\n真是这样吗？\n\n\n\n其实每一个家庭都是一个系统，家庭矛盾，不是某个人有问题，而是这个家庭系统出现不平衡。\n\n\n\n因此想要解决家庭矛盾，方向不是改变其中任何一个人，而要用一个整合的思路去看。\n\n\n\n系统家庭治疗，就是这样一种疗法。它认为家庭中存在的问题是整个家庭系统相互作用产生的。\n\n\n\n因此系统家庭治疗不太关注个体怎么了，个体为什么会这样？它更多关注的是这个家庭发生了什么，为什么会这样？\n\n\n\n它不需要在个体身上大动干戈，只是从系统角度做一些小的干预，来打破原来的问题循环，让家庭达到新的平衡。\n\n\n\n因此，系统家庭治疗，作为一种短程咨询，在解决家庭矛盾上往往非常高效。\n\n\n\n说到这里，可能会有人想问如果对方不愿意来咨询，系统家庭治疗还会有效果吗？\n\n\n\n比如很多小孩有心理问题却不愿意接受咨询，父母毫无办法；夫妻伴侣关系中一方非常痛苦，另一方认为自己没问题，也不愿意咨询，关系陷入僵局。\n\n\n\n系统家庭治疗主要是针对家庭系统，成员一起参加效果自然更好，但如果家庭成员实在不能参加或不愿意参加，一个人也是可能做系统家庭治疗的。\n\n\n\n今天我征得来访者的同意，想以一位妈妈单独做系统家庭治疗的故事来聊聊，如何高效解决家庭矛盾。\n\n\n01\n“我害怕女儿成为下一个我”\n\n\n这位妈妈叫林洁（化名），一开始，林洁因为个人问题找我做咨询。\n\n\n\n咨询初期，我们主要是探讨她的成长经历。\n\n\n\n林洁的父母从小就对她很严苛。爸爸在学习上管教很严，林洁考年级第一不会被赞扬，考得不好就会被罚跪；\n\n\n\n妈妈在生活中管得更严，林洁必须大事小事都听妈妈的，否则妈妈就会生气。\n\n\n\n咨询了一段时间后，林洁意识到成长经历对自己的性格和生活造成了很多不好的影响。\n\n\n\n同时，她也很焦虑和害怕，她觉得自己教育女儿的方式越来越像父母，很担心9岁的女儿长大后像自己一样。\n\n\n\n林洁说她最怕女儿对自己说“妈妈你不要生气”。\n\n\n\n每天女儿要说30-50遍，让她非常崩溃。\n\n\n\n因为她自己是一个讨好型的人，看到女儿的样子，很担心女儿长大后也变成讨好型人格。\n\n\n\n她反复跟女儿解释自己没生气，但是没什么用。导致她对待女儿也越来越没耐心，有时真的会生气。\n\n\n\n这些都让她觉得自己做母亲很失败，充满内疚、自责和委屈……提到这些时，她忍不住流泪。\n\n\n\n\n\n为了解决与女儿之间的问题，林洁把原来的心理动力学的个人成长咨询改成系统家庭咨询。\n\n\n\n因为女儿不愿意参加咨询，再加上林洁也不强求孩子参加，所以我们的咨询是在系统家庭的设置下对林洁一个人的咨询。\n\n\n\n02\n如何才能让妈妈不那么焦虑？\n\n\n在咨询中，我针对林洁与女儿的互动问了很多问题。\n\n\n\n她开始明白，原来她与女儿之间的矛盾，并不是女儿或者自己有问题，而可以从母女关系的互动角度去看待。\n\n\n\n咨询快结束时，我布置了一个作业，让林洁和女儿在这一周里玩一个游戏——林洁要假装一次生气，来让女儿猜哪一次是假装的，如果女儿猜对了，妈妈就送女儿一个礼物。\n\n\n\n在下次咨询中，林洁告诉我，通过游戏后，女儿没那么害怕自己生气了，自己焦虑少了一些。但女儿说“妈妈不要生气”的次数并没有明显减少，自己还是很担心。\n\n\n\n于是我问她：你现在听到女儿说“妈妈不要生气”时，你的感受跟以前有什么不一样吗？\n\n\n\n林洁：你这样问我才想到，现在觉得女儿好像没以前那么害怕我生气了，更像是一个口头禅，有时候感觉是她在通过这句话控制我一样。\n\n\n\n咨询师：如果女儿没那么害怕你生气，反而通过说这句话控制你，你觉得女儿内心比以前更有力量呢，还是力量更弱小呢？\n\n\n\n林洁：感觉更有力量了。\n\n\n\n咨询师：你很希望女儿内心更有力量，是更有利于她成长还是不利于她成长呢？\n\n\n\n林洁：更有利于吧，这样想我反而没那么担心了。\n\n\n\n从咨询中可以看到，林洁比女儿更焦虑。但这些焦虑却没有一个安放位置，导致她对女儿的行为特别敏感，会越来越焦虑。\n\n\n\n在这样的情况下，自然很难发现孩子的成长和变化。\n\n\n\n于是林洁还是会按原来的方式对待孩子，导致孩子也会退回到原来的样子，她们无形中就又在重复原来的关系模式。\n\n\n\n我用这个小游戏做的干预，目的正是让林洁放下过度的焦虑，从而看到孩子的变化。\n\n\n\n\n\n\n\n03\n孩子可以生气，\n妈妈同样有权利生气\n\n又过了两周，林洁告诉我，女儿好像知道她对这句话很敏感，于是说得越来越多。\n\n\n\n只要林洁不顺着女儿的意，女儿就会说“妈妈你别生气”，把自己要说的话全部都堵回去。\n\n\n\n有一次林洁忍不住打了女儿，事后非常自责，再一次陷入崩溃，觉得自己做什么都没用，又回到老样子。\n\n\n\n我对她说：听起来在与女儿的关系中，你女儿好像是更有力量那一方，你在关系中渐渐失去了生气的权利了。建议你跟女儿沟通时维持好自己的边界，你是有权利生气的。\n\n\n\n林洁回答：听你这么说心里舒服多了。自己被女儿的事绑住了无法生气，也无法不生气觉得憋得很难受。\n\n\n\n咨询后，林洁在听到女儿说“妈妈你不要生气时”，她回答：“妈妈有权利生气。”\n\n\n\n女儿愣了一下说：“我也有权利说你不要生气。”\n\n\n\n说完母女都笑了。\n\n\n\n这样简单的沟通调整，就能看到女儿和妈妈边界都越来越清晰。\n\n\n\n其实，孩子很多时候比我们想象中更有力量，孩子可以通过特别的行为引发我们的情结，看似我们在孩子面前很强势，背后是软性的控制。\n\n\n04\n为什么妈妈\n会这么在意孩子的话？\n\n渐渐林洁对孩子说这句话没那么敏感了，但孩子每天这么说，林洁还是有些不舒服。\n\n\n\n我猜想，这可能和林洁的童年有关系：你很不想听到女儿说妈妈不要生气了，一听到内心就会有情结波动，也许你是通过这样的方式在怀念你的爸爸，因为小时候你们的关系也是这样的。\n\n\n\n林洁忍不住点头。\n\n\n\n为了解决林洁对这句话的深层根源，我又布置了一个小作业：\n\n\n\n我希望你回去告诉女儿，当她说妈妈不要生气时，会让你怀念你的父亲，因为小时候你也会担心父亲生气。\n\n\n\n所以孩子每说一次，就是在提醒你一次你是想爸爸了。\n\n\n\n你们可以做一个表格来记录，达到多少次，可以一起出去吃饭奖励一下或者用其它方式庆祝。\n\n\n\n林洁回去跟女儿进行了这个游戏，有了很好的效果，女儿说这个话的频率明显少了很多。\n\n\n\n把个人行为放到关系中，通过系统家庭治疗的方式会更有效果去理解和改变。\n\n\n\n\n\n\n05\n重新定义生气的表达方式\n\n\n下次咨询中，林洁告诉我，女儿说“妈妈不要生气”的次数减少了很多，但偶尔还是会顺口就说，自己也分不清楚她是真的担心还只是口头禅。\n\n\n\n于是我告诉林洁：你可以跟女儿约定一下，当她真正生气时可以做一个动作，比如把手举起来表达真的生气了。\n\n\n\n林洁回去跟女儿商量，她们约定握紧拳头来表达她真的生气了。\n\n\n\n没想到，效果很快就出现了，女儿说这句话的次数越来越少，林洁也不再为此焦虑和不会舒服而，母女关系变得亲近和融洽。\n\n\n\n当我们通过一个动作把无法判断的内心情况，变成了相互可以观察的外在行为，这样就会大大减少焦虑情结和沟通偏差。\n\n\n\n原来让妈妈非常焦虑和担心的问题，通过与女儿新的互动后渐渐不再被认为是问题。\n\n\n\n隔了一段时间后林洁告诉我，感觉女儿似乎长大了很多，有时候还会主动理解和安慰自己，她很感动和也很欣慰。\n\n\n\n她开始相信，自己不是一个失败的母亲，而女儿也不会成长为另一个讨好型的自己。\n\n\n\n06\n为什么能快速解决家庭问题？\n\n\n为林洁所做的系统家庭治疗，总共不到10次，却让母女关系进入一个全新的和谐温暖的阶段，这也让林洁感到意外。\n\n\n\n为什么会有这样的效果？\n\n\n\n女儿说“妈妈不要生气”这句话，不仅是女儿个人的行为，需要看到背后女儿与妈妈的互动维持了女儿的行为。\n\n\n\n就像在咨询中，经常遇到家长抱怨孩子做作业慢，家长越催孩子反而更慢。也许不是家长的原因让孩子做作业慢，但是家长不断催促的行为却维持了孩子行为的长期存在。\n\n\n\n在林洁的故事中，系统家庭治疗重新定义了女儿的问题。\n\n\n\n原来林洁担心，女儿有问题才会不停说“妈妈你不要生气”，从系统家庭治疗来看，是女儿说这句话引起了妈妈强烈的情绪反应，让问题长期持续存在。\n\n\n\n通过咨询干预，不管是妈妈假装生气，还是把这句话与提醒林洁想念姥爷联系起来，都是在赋予原来的问题新的解释和意义。\n\n\n\n林洁并没有成长为完美妈妈，女儿也没有变成完美女儿，但在新的互动中林洁和女儿渐渐不再焦虑，原来的问题也随之消失。\n\n\n\n亲密关系中其实也是这样，经常有妻子或者老公抱怨伴侣不理解自己，日子没办法过下去。似乎只有对方变成一个都能理解自己的人后，婚姻问题才能解决。\n\n\n\n但是通过系统家庭治疗从新的角度去理解问题，进行适当咨询干预，就可以让问题不再影响关系或者让问题消失。\n\n\n\n我们不需要等到自己或对方变成完美的妻子/丈夫，才能幸福；\n\n\n\n我们做现在的自己，就可以拥有幸福美好的关系。\n\n\n\n如果你的家庭或关系也出现了问题，你要做的也许不是想方设法改变对方，也不是耗费力气改变自己，而只是去咨询中，换个视角，换个方式。\n\n\n\n这并不难，也不需要积年累月。\n\n\n\n也许很快，你就能看到关系已经发生奇妙变化。\n\n','2022-12-18 14:44:41','2022-12-18 14:44:41'),(20,'这个世界没有奇迹。你无法逃避你所遇到的痛苦','《也许你该找个人聊聊》是2019年美国众多媒体推荐的心理自助书。刚上市一个月，就冲上美国亚马逊图书总版TOP100和《纽约时报》畅销榜；出版两年就在全球授权40多个语言版本，总销量超过70万册。\n\n\n\n\n\n \n\n作者洛莉·戈特利布是美国资深心理治疗师、作家。曾经在NBC（全美广播公司）工作，人到中年却转行到心理领域，重新寻求发展。\n\n \n\n《也许你该找个人聊聊》以回忆录的形式，讲述了洛莉心理咨询室4位来访者的故事以及单亲妈妈洛莉面临的健康、财务以及亲密关系等人生难题。\n\n \n\n在书中，洛莉既是帮助他人解决问题的心理咨询师，也是亲身求助心理咨询的来访者。\n\n \n\n洛莉用自己和4位来访者的故事告诉我们，不要心存幻想。这个世界没有奇迹。你无法逃避你所遇到的痛苦。\n\n\n\n\n\n \n\n01\n一味地逃避痛苦，\n反倒让痛苦的情绪复制更多遍\n \n\n约翰是位40多岁、事业成功的好莱坞制片人。但周围的人让他心烦，他不知道如何“应付这些愚蠢的人”，也无法和结婚多年的妻子和谐共处。\n\n \n\n他来到洛莉的咨询室，却经常用接听电话或吃外卖掩饰自己真实的情绪。\n\n \n\n经过多次的接触，洛莉帮助约翰找到他一直以来逃避的情感。\n\n \n\n原来约翰在拍摄自己人生的第一部电视剧的时候，为了确保收视率，他不得不全身心投入到工作中，每天不是在忙于工作，就是在忙于接听工作的电话。\n\n \n\n而妻子玛戈独自在家照顾2个年幼的孩子，同时还要兼顾自己的事业。不同的处境和工作节奏，让他们之间的交流日益减少、感情日渐疏远。\n\n \n\n在一次举家出游的途中，约翰答应了玛戈不会在旅途中接听任何工作电话的要求，但在电话响起的那一刻，约翰还是控制不住自己。\n\n \n\n当他伸出右手准备去拿放在仪表盘上的手机时，一辆越野车朝他们的车撞了过来。他们年仅6岁的儿子盖比当场被夺走了生命。\n\n \n\n尽管警方提供的信息显示，是越野车司机酒驾造成的悲剧，但约翰还是陷入深深地自责中无法自拔。\n\n \n\n他愤怒、悲伤且绝望，但从来不和任何人诉说，宁可每天晚上躲在电脑后面，反复地观看盖比生前的视频。\n\n\n\n\n\n \n\n在和洛莉一次又一次的交谈中，约翰终于卸下了伪装嚎啕大哭。\n\n \n\n他明白了，比起逃避，他更应该敞开心扉和妻子或其他值得信赖的人，分享自己正常的情绪。即使是大哭一场，或是绝望坐一会儿，也好过压抑自己。\n\n \n\n人生在世，面对无法言说的痛苦，不同的人会选用不同的方式保护自己。\n\n \n\n有些人会强颜欢笑；有些人则把唾弃的自我从心里剥离，再塑造一个带有自恋特质的假象，把不想要的那部分自我隐藏在假象的背后。\n\n \n\n就像自以为是的约翰。他之所以觉得身边都是些愚蠢的人，是因为他执着于塑造自己与众不同的特殊形象。而这个特殊形象，是支撑他活在这世界上的唯一真理，也是掩盖他内心痛苦的盾牌。\n\n \n\n弗洛伊德曾经说过：\n\n \n\n“未被表达的情绪永远都不会消失。它们只是被活埋了，有朝一日会以更丑恶的方式爆发出来。”\n\n \n\n如果一味地逃避痛苦，你可能反倒让痛苦的情绪复制更多遍，直到掉进它的陷阱里。\n\n \n\n与其这样，不如卸下伪装直面它。\n\n \n\n当痛苦终于被言说，我们才能获得最基本的勇气，去看、去感知、去信任。交谈能让我们接纳自己和自己内心的痛苦，等做好准备，它会转变成更积极的行为。\n\n \n\n\n\n \n\n02\n活在当下，\n别和自己的过去较劲\n \n\n麦家说，爱人是一种像体力一样的能力，有些人天生在这方面肌肉萎缩。\n\n \n\n瑞塔是一位身体健康、容颜漂亮的69岁老太太。她有4个子女，但子女都和她没有来往。没有亲人、没有朋友，她孤独且抑郁。\n\n \n\n瑞塔表示如果在70岁生日之前，生活没有任何改善的话，就了断自己的生命。\n\n \n\n瑞塔的童年是孤独的，父母和她的关系十分冷淡。\n\n \n\n20岁那年，她遇见了自己心仪的对象。为了逃离沉闷的原生家庭，她放弃自己的学业，匆匆地结婚了。\n\n \n\n但随着孩子的出生，成熟迷人的丈夫开始酗酒。清醒时，他是幽默风趣的律师；醉酒时，则对瑞塔和几个孩子拳脚相向。\n\n \n\n如果说第一次婚姻选择一个酒鬼当丈夫，是瑞塔犯下的第一个的错误，那面对醉酒丈夫对孩子们大打出手，她却躲在房间里，是她犯下第二个错误。\n\n \n\n尽管后来她带着孩子们离开了酒鬼丈夫，但孩子们坚决不原谅瑞塔。\n\n \n\n之后的瑞塔又经历了2次婚姻，但均以失败告终。\n\n \n\n新邻居“亲人家庭”其乐融融的家庭氛围让瑞塔既羡慕又嫉妒。她每天透过门上的猫眼观察邻居家的一切，甚至为了偷窥还悄悄扩大了猫眼。\n\n \n\n随着“亲人家庭”和瑞塔的熟络，瑞塔的生活中有了各种好的转变，但她还是无法全身心享受其中。\n\n \n\n因为快乐对她来说是陌生的，她早已习惯了从一个有缺陷的角度去看世界。\n\n\n\n\n\n \n\n即便在遇到异常合拍的麦伦后，她也不敢敞开心扉拥抱爱情。尽管她也渴望与麦伦建立亲密关系，可又害怕麦伦知道她真正的样子。\n\n \n\n为了不让自己再次受伤，她宁愿从未靠近。\n\n \n\n在洛莉的开解下，瑞塔开始慢慢走进人群，也不再抗拒他人走进她的生活。\n\n \n\n她花了很长时间起草了一封信。信写给麦伦，也写给她的孩子们。\n\n \n\n在信中，她向麦伦坦承自己过往的一切；向孩子们讲述自己的痛苦和脆弱，以及对他们的爱。\n\n \n\n瑞塔的信件得到了回应，并收获了美好的爱情；而子女也和她重新打开了沟通的大门。\n\n \n\n在知乎上有人提问：“人生痛苦的根源是什么？”\n\n \n\n有个高赞回答说，人生中大多数的痛苦不是别人给你造成的，而是自己和自己过不去。\n\n \n\n深以为然。\n\n \n\n我们无法改变过去和过去留在我们身上的痕迹。\n\n \n\n如果总沉溺于往事的悲伤，且不说能否得到幸福，就算活下去都会困难重重。\n\n \n\n不如给自己一些时间，和过去握手言欢，然后好好活在当下，让生活重新回到正轨。\n\n\n\n\n\n \n\n03\n接纳无法改变的厄运，\n活出生命的意义\n \n\n“至少我的癌症没有复发。”这是癌症患者朱莉的口头禅。\n\n \n\n朱莉是33岁的大学教授，刚刚拿到大学的终身教职，和交往多年的男友才步入婚姻的殿堂。度完蜜月回来的时候，朱莉发现自己怀孕了，但在做第一次产检的同时，她被医生宣告得了乳腺癌。\n\n \n\n深受打击的朱莉同时挨过治疗和妊娠期，虽然病情得到了控制，但也流产了。在一次本该证明她痊愈的检查中，医生又在她的体内发现了另一种会夺走她生命的罕见癌症。\n\n \n\n之后的一年里，朱莉先后经历了肿瘤的消失、癌症的复发和医生的失望宣判，甚至还再次怀上了带给她希望的新生命。\n\n \n\n但命运似乎总在和她开玩笑，一次次地给她希望，又一次次地让她绝望。\n\n\n\n\n\n\n\n陷入恐慌和绝望中的朱莉在朋友的鼓励和洛利的帮助下，意识到“生活就是不确定性的代名词”。她学会了悦纳自己和珍惜活着时所拥有的一切。\n\n \n\n在生命剩下的时光里，她决定让自己做一些更立竿见影、看得到实际效果的事情：到超市当收银员，帮顾客打包商品、给售空的货架补充货物；为自己写讣告；和丈夫一起策划自己的葬礼；写一本关于她和丈夫的书……\n\n\n\n日常中的每一件琐碎小事，都让朱莉很快乐。\n\n \n\n《跳出头脑，融入生活》中有句话是这么说的：\n\n \n\n“人生就是选择。我们在这里选择的不是要不要痛苦，而是要不要拥有有价值、有意义的人生。”\n\n\n\n人无法支配自己的命运，但可以支配自己对命运的态度。\n\n\n\n对于降落在自己身上不可避免的遭遇，你是选择逃避，还是选择接纳？\n\n \n\n逃避，意味着你无法开始真正有效的行动，也意味着你选择了挣扎和僵化的生活。\n\n \n\n而接纳，意味着你有能力去开创新的生活，也意味着你不会轻易被打倒，即使面对无法改变的厄运，也能活出生命的意义。\n\n\n\n\n\n \n\n04\n写在最后\n \n《蛤蟆先生去看心理医生》中，有一段话让我印象深刻：\n\n\n\n“如果你要更好地理解自己，就需要跟自己的情绪做联结，并理解这些情绪。如果你否认它们，不论是用无视还是压抑的方式，结果都像是做了截肢，就如身体的重要部位被切掉一样，你在某种程度上成了一个残缺的人。”\n\n \n\n当深陷情绪困境的时候，你不要一个人扛着，找个人聊聊吧。这个人，可以是值得信赖的亲人或朋友，也可以是专业的心理咨询师。\n\n \n\n你会发现，所有的困境都会有出路。\n\n \n\n这也是《也许你该找个人聊聊》所要提醒我们的。','2022-12-18 14:45:34','2022-12-18 14:45:34'),(21,'家庭治疗的创意：生病是有用的，家庭可以不改变......','一位反复腹痛的10岁男孩，在儿童医院消化科治疗了将近1年，没有任何效果。转介至儿童精神科，建议进行家庭治疗。 \n\n\n\n这个家庭的父母是一对中年夫妻，40多岁，事业有成。儿子进入小学后，妻子辞去工作，做起了全职妈妈。此后，这个家庭的冲突便源源不断。 \n\n\n\n妻子除了做家务，接送孩子，每天晚上辅导功课到很晚，周末还有辅导班。孩子累，妈妈也很幸苦。丈夫负责工作赚钱，经常加班和出差，也不容易。 \n\n\n\n辛苦的妻子希望丈夫能抽空多辅导孩子功课，共同把儿子的学业弄上去。而丈夫认为孩子应该顺其天性，不用过分关注学业。他也不同意孩子周末去辅导班。 \n\n\n\n夫妻二人在孩子的教育上发生了不可调和的分歧，互不认同对方的观念。妻子带着怨气依旧忙碌不停，对孩子越来越没有耐心，辅导功课的时间越来越晚。丈夫回到家里看着痛苦的孩子，感到很无助。这几年，夫妻间除了针对孩子的问题互相指责和埋怨，几乎没有其他沟通。 \n\n\n\n1年前，丈夫借口上班近，住到了另外一套房子里，夫妻开始分居。也是从那个时候开始，他们的儿子出现了反复腹痛、无法上学的问题。 \n\n\n\n孩子生病后，这个家庭发生了“理想性”的改变，孩子的学业暂停，丈夫搬回家中住，夫妻二人齐心协力为孩子治病。夫妻俩放下了或者说隐藏了指责和埋怨，从教育上的分歧，转向了给儿子治病的统一。 \n\n\n\n目前，这个家庭除了儿子的问题，看起来很是和谐。 家庭关系因为孩子的腹痛，发生了改变，孩子为了想要的家庭关系，需要继续生病。他们被“疾病”双重控制了，谁都不敢或不想改变，动弹不得，症状被维持了下来。 \n\n\n\n家庭借助孩子在表达家庭生病了，需要修理和解决的是病理性的家庭关系，而不是孩子的症状。家庭关系改善，孩子的问题就不再是问题了。 \n\n\n\n从关注个体的病理性症状，并致力于纠正它，到将症状放在家庭关系的背景中理解，建构症状的功能和意义，激活家庭的沉默资源，甚至需要将症状保留，这是家庭治疗对疾病“创意性”的理解。\n\n\n\n01\n症状是有功能和意义的 \n\n\n家庭治疗之母，体验式家庭治疗创始人萨提亚认为：每个家庭和个体都拥有积极发展的潜能，症状只不过是一种解决问题的方式。\n\n\n著名心理学家海利则认为，症状是一种控制关系的策略，用于其他健康或者常规方式无效时。人是关系性的生物，行为呈现的是对人际关系的反馈和期待。 \n\n\n\n因此，当一个人出现症状时，家庭治疗师会将其置于家庭关系背景中，建构症状背后的积极期待和在沟通层面发挥的意义。 \n\n\n\n上面案例中，腹痛男孩的症状“迫使”家庭发生了改变，症状是孩子对母亲过分关注的反馈，也是对一个失意母亲的保护和安慰，用问题将家庭变得更具有凝聚力。同时，他也在用腹痛表达被理解和关注的渴望，以及对低分化父母的不满。 \n\n\n\n一般而言，学龄前期和学龄期儿童的主要负面情绪是恐惧，如果出现被家庭定义为症状的问题，大到拒学、伤人、打架、自伤，小到学习下降、抠指甲、不听话、挑食、哭泣、尿床等，这些问题的基本心理需求是“请你们来关注我”，关系层面的诉求是“请你们放下冲突来关注我”。 \n\n\n\n青春期孩子症状的基本心理需求是“权力控制”，一种在被理解基础上的尊重性关注：“我要说了算”。关系层面的诉求是“请你们放下冲突尊重我”。\n\n\n他们会用特别激烈的方式来寻求独立，拒学、自伤、沉迷游戏、抑郁、打架等，症状越严重，家庭关系的冲突程度越高。 \n\n\n\n家庭治疗的第一个创意就是将个体的问题放在家庭情境中去理解，看到症状和问题背后的期待、诉求、功能和意义。 每个\n\n\n\n症状背后都有带着期待的家庭故事！\n\n\n\n02\n允许家庭不改变 \n\n\n家庭是一个动态平衡的系统，基本特征是倾向维持稳定。结构式家庭治疗创始人米妞琴认为，每个家庭都对要改变自己的治疗师都充满了“敌意”。 \n\n\n\n人本主义心理治疗中有一个概念“翻正反射”，当你想纠正来访者的异常行为时，往往会遭到他的反抗，这个反抗是发生在治疗互动中，而不是来访者有意为之。 \n\n\n\n在家庭中，个体的行为变化，可能遭到其他家庭成员的阻拦。萨提亚的第一个家庭治疗个案就是在来访者明显好转后，其母亲却把萨提亚痛骂了一顿后带来的领悟：改变不能只发生在个体，需要发生在家庭中。 \n\n\n\n症状在系统层面具有功能和意义，当家庭关系尚未改变时，症状不会那么快消失。症状如果持续在一个家庭中存在，很大程度上是家庭中有一个特别想改变他人的家庭成员。 \n\n\n\n例如，摔坏沉迷网络的儿子手机的父亲，指责厌学孩子不努力的母亲，逼着挑食孩子吃饭的父母，用暴力惩罚调皮孩子的父亲。这些家庭都很努力地在要求孩子改变，但是越努力，症状越明显。 \n\n\n\n因此，家庭治疗强调“中立”，治疗师不主动改变家庭，尊重家庭的自组织，尊重症状和问题存在的意义，治疗的过程是传递信息，拓展家庭对问题的理解，共同建构可以达到的目标。 \n\n\n\n不仅如此，家庭治疗师有时候还会和家庭一起努力不改变，甚至布置一些让症状加重的作业，这叫“悖论干预”。 例如，让患有抽动症的家庭，把抽动当作一个调皮鬼，每天晚上用半个小时时间，父母和孩子一起比赛，看谁抽动地快。并给第一名奖励！ \n\n\n\n要求因为孩子爱发脾气而烦恼的父母，在每天晚上固定的时间段内，充满爱和期待地允许和鼓励孩子发火。 \n\n\n\n对抱怨青春期孩子幼稚、无行为能力的父母，邀请他们将孩子看为小宝宝，对小宝宝惯着、宠着。孩子不必再为得到父母的关注而争斗，退行就会无趣。 \n\n\n\n对本文开头提到的腹痛男孩，可以给家长布置一个作业，接下来一段时间，你们在家里要努力让孩子再腹痛一次。当他们思考如何才能让孩子症状加重时，维持症状的关系就可能会被预防性打破。 \n\n\n\n家庭治疗的第二个创意是尊重家庭系统的自组织特性，将改变的动机置回家庭自身，放下改变的执念，变化就可能发生。 \n\n\n\n否则，医生和治疗师就可能成为疾病慢性化的“帮凶”！\n\n\n\n03\n用创意进行自我家庭治疗 \n\n\n了解了家庭治疗理解问题的创意之处，我们可以利用这些创意进行日常的家庭心理健康自助。 \n\n\n\n如果您的家庭中某个成员出现了所谓的“问题”、“症状”或“疾病”时，可以尝试以下步骤，进行自我家庭治疗。 \n\n\n\n第一步：情境化症状，建立意义性理解 \n\n\n\n拓展对症状的关系性理解，看到症状背后的诉求和意义，症状反而会增强家庭的凝聚力，以下问题可以尝试： \n\n\n\n我认为的问题是什么？\n\n我的压力和痛苦有哪些？\n\n谁能理解和支持我？\n\n这些问题与我们家庭有什么关联吗？\n\n他或我（具有症状的人）需要这些问题，可能是为了什么？\n\n我们家需要这些问题，可能是为了什么？ \n\n\n\n家庭成员可以一起分享对这些问题的理解。答案没有对错，当家人分享时，尝试倾听为主，不做解释和建议。 \n\n\n\n如果只有你一个人愿意尝试，先从自己开始也可以。 \n\n\n\n第二步：如果不改变，结局会怎样 \n\n\n\n放下改变家庭成员的执念，有时候我们要改变的可能不是有“症状”的家庭成员，而是借着这些症状迫使他人改变。可以问自己以下一些问题： \n\n\n\n如果症状一直持续，他（具有症状的人）会怎么样？\n\n如果症状一直持续，我们家会怎样？\n\n如果症状好不了了，我们家可能需要解决的其他问题是什么？\n\n这些症状，有没有可能会带来一些好处？对自己和家人。\n\n\n\n这些问题可能会让您有些忧心忡忡，但是会带给您看待问题的不同视角和体验。要告诉自己和家人，这些只是假设性的问题，以促使我们思考。 \n\n\n\n第三步：我们想要去哪里 \n\n\n\n进行过上面两轮的讨论或思考，我们要决定家庭的目标，究竟去向哪里，以下问题可以进行思考： \n\n\n\n如果我们家的问题解决了，家庭会是怎样的状态？\n\n我对家庭成员和家的期待是什么？\n\n我估计我们家大概在多长时间内可能会达到这个状态？\n\n我对我们家实现这些状态有信心吗？\n\n我们家实现这些状态有哪些资源和优势？ \n\n\n\n上述问题尽量描述和表达地细致一些，越直观越形象越好。答案没有对错，允许每个人有不同的期待和看法，鼓励和欣赏家庭成员的观点。 \n\n\n\n第四步：前行，我可以做些什么 \n\n\n\n改变从自身做起是最可靠的，因为我们左右不了任何人，哪怕他们是我的爱人、孩子和父母。家庭讨论了目标并确认以后，如果想改变，你可以问问自己以下几个问题： \n\n\n\n我和家人的共同目标和使命是什么？\n\n我自己有哪些资源和优势？\n\n我可以做一些什么，能够让家庭接近或达到目标？\n\n我可以做一些什么，能够让我自己接近或达到目标？ \n\n\n\n如果可以，可以和家人一起讨论这些问题，只做自己的“承诺”，并践行，不要求别人怎么做。以欣赏和鼓励的态度，反馈家人的表态。 \n\n\n\n第五步：我们的进步在哪里 \n\n\n\n如果家人开始尝试理解症状或者已经发生改变，需要给予进步以鼓励和肯定，可以尝试询问自己以下问题： \n\n\n\n我的努力和进步有哪些？\n\n我的家人做了哪些努力和改变？\n\n我们家现在和以前有哪些不同吗？\n\n我们的目标实现了多少？\n\n有哪些遗憾和期待吗？\n\n我们的目标需要调整吗？ \n\n\n\n和家人一起分享这段时间内的努力、改变、进步，当然也允许表达一些失望和遗憾，可以共同协商调整目标，或者自我决定调整改变的进程。\n\n\n\n如果您想尝试，可以邀请家人一起来进行自我家庭治疗。如果家人尚未做好准备，您也可以一个人尝试。 \n\n\n\n您或许不用了解这些步骤背后的理论，真诚而接纳地回答并思考这些问题，就会达到一定的效果。 \n\n\n\n建议，每3-7天进行一个步骤，在这期间，反复思考这些问题，有了不同的理解，再进入下一个阶段。已经完成的步骤可以反复进行，如果觉得没有效果，可返回上一步骤重新进行。 \n\n\n\n需要提醒的是，如果家人出现病理性的问题，例如持续的破坏性的情绪和行为、自我伤害、精神病性症状、消极自杀观念等，需要及时进行医学评估和干预。 \n\n\n\n如果上述的自助式方式对您无效，建议寻求家庭治疗师的专业帮助。','2022-12-18 14:45:59','2022-12-18 14:45:59'),(22,'“结婚十年后我确诊了抑郁症”：人到中年如何拯救余生','这是壹心理「来访者的故事」栏目第50期。\n\n\n\n今天的来访者，叫嫣然。\n\n\n\n她的半生中，经历过很多困境：原生家庭、婆媳关系，和丈夫结婚十年后出现婚姻危机，也曾确诊过抑郁症。\n\n\n\n但最终，她靠着自己顽强的生命力，努力自救，敢于与不良的关系做切割，更敢于面对内心的创伤，重新修补亲密关系。\n\n\n\n今天，她想分享这条艰难的路上，与她一同前进的两位咨询师。\n\n\n\n以下，是她的自述：\n\n\n\n01\n第一个咨询师\n疗愈了我的原生家庭\n\n\n第一次找心理咨询师时，我和公婆的关系正处在水深火热之中。 \n\n\n\n孩子六岁了，一直是公婆从老家过来帮忙带。因为教育理念不同，生活方式也有很大差异，矛盾层出不穷。\n\n\n\n我曾经建议过大家分开住，但他们不同意。并且扬言说，分开就是我们不孝顺，会让人笑话，他们脸上没面子。\n\n\n\n那一刻，我强烈感觉到了他们的道德绑架。\n\n\n\n每次公婆用孝顺去绑架我、控制我时，我都能想起我的父母。\n\n\n\n从小到大，我都是母亲眼里最听话懂事的孩子，就像一头大象，被母亲用链子拴着，不会跑。而父亲老实懦弱，在家在外都仿佛一个隐形人，从来不扛事儿。\n\n\n\n我感觉自己身处崩溃和抑郁的边缘：\n\n\n\n为什么自己刚刚走出一个深渊，又掉进了另一个相同的深渊？\n\n\n\n我必须拯救自己。\n\n\n\n于是我给自己找了一个咨询师，开始探索我的原生家庭，疗愈父母带给我的伤害。\n\n\n\n这个咨询师给我的感觉，像极了我理想中妈妈的形象，温暖、治愈。我们的咨询方式也更多是谈心、聊天。\n\n\n\n在她那里，我感觉到了前所未有的安全，慢慢地展现出自己脆弱的、不敢示人的一面。\n\n\n\n在咨询中，我一次次哭诉、发泄，把多年积压的委屈和不满讲给咨询师听。\n\n\n\n咨询师会用意象对话的方式，帮助我释放积压多年的负面情绪。\n\n\n\n记得有一次，咨询师让我闭上眼睛，跟母亲对话。\n\n\n\n那一刻，我所有的委屈涌上心头。哭着喊：\n\n\n\n“为什么不允许我复读考大学？为什么要把你婚姻的不幸推到我身上？为什么要把我当成家里的顶梁柱？我只是个孩子呀……”\n\n\n\n在咨询室里，我第一次直面了内心的真实想法。\n\n\n\n我想起了从小到大，我一直是母亲最强有力的支撑：我听她的话，帮她分忧。\n\n\n\n高考落榜时，母亲拒绝了我的复读要求，让我辍学打工。我是懂事的孩子，把遗憾放心里，默默去赚钱。打工十几年赚的所有钱，都交给了家里。\n\n\n\n我那么委屈，那么愤怒，但同时又有一份跨越不去的愧疚。\n\n\n\n那就是，我母亲已经去世了，而且是死于自杀。\n\n\n\n我对母亲唯一一次的逆反，是选择留在了打工的城市，进修了山东师范大学的专科和本科毕业证，并找到了一个大学毕业的老公。\n\n\n\n而母亲一直希望我回到她身边，找个倒插门女婿，照顾她一辈子，我没同意。\n\n\n\n许多年里，我一直觉得母亲是因为我“没有回老家、没有早点结婚”才生气自杀的。这份愧疚像一条咬人的蛇，一直盘踞在我的心口。\n\n\n\n直到有一天，我也确诊了抑郁症。\n\n\n那一刻我瞬间明白了，抑郁症真的是一种病，而不是普通的心情不好。\n\n\n图片\n\n\n记得2021年清明节，我和妹妹回家上坟，我悄悄告诉她，我确诊了轻度抑郁症。妹妹听了半天没说话，然后轻轻说：\n“我已经确诊好久了，轻度抑郁+双向情感障碍。”\n\n\n那一刻，我们含泪抱在了一起，不约而同想起了我们的母亲，那个在重病晚期选择自己结束生命的母亲。\n\n\n\n是的，我的母亲，应该也是一个抑郁症患者。虽然那时没人知道，也没有确诊过。\n\n\n\n正因为自己病了，我才开始去试着理解母亲，理解她多年疾病缠身儿女又不在身边的无奈；理解她一辈子对婚姻不满意却又无力改变的痛苦；理解她生命最后对二个女儿的不舍……\n\n\n\n母亲这辈子是不幸的，但不是我的错。\n\n\n\n如果她在天有灵，一定是希望我放下愧疚，做一个幸福的孩子。\n\n\n\n02\n第二个咨询师\n挽救了我的婚姻\n\n\n第二次找咨询师，是因为我的婚姻出现了严重的危机。\n\n\n\n原生家庭的伤疤疗愈一部分以后，我决定离开公婆，一家三口搬走。\n\n\n\n我知道，公婆对老公的绑架和伤害，并不比我少，我们必须分开住。\n\n\n\n结婚第十年，我们正式搬家了。\n\n\n\n我本以为，一家三口单独在一起，一定会幸福，没想到我和老公积压多年的矛盾，就在这一刻爆发了。\n\n\n\n搬家以后，我们频繁吵架，甚至闹到了派出所。紧接着，女儿出了车祸，小腿粉碎性骨折。\n\n\n\n我知道，孩子的伤都是我和老公的矛盾造成的。\n\n\n\n为了挽救我的婚姻，挽救我的孩子，我再次选择了心理咨询。\n\n\n\n这次，我选择的是一名擅长处理亲密关系的咨询师。\n\n\n\n她的咨询方式，和上一个咨询师完全不同。\n\n\n\n话很少，但只要开口，就直击痛点，一针见血。\n\n\n\n不得不说，这是一个超级治愈的过程。\n\n\n\n每次见面，她仿佛带着一把手术刀来见我，哪个地方有肿瘤，便一刀扎下去，过程很痛，但是过后很舒畅。\n\n\n\n比如有一次，我做了一个梦，梦到父母用50万块把我卖给了一个大导演。我以为，父母是为了圆我的演艺梦。到了以后才发现，是卖给别人做妾。\n\n\n\n当我和咨询师分享梦境时，她说：\n\n\n\n“在你的心里，是不是一种被动忍耐的感觉？之前是父母把你卖了，现在是自己把自己卖了，为了孩子去忍耐一段你不满意的婚姻。如果你觉得委屈，你完全可以不用忍。”\n\n\n\n她说完的那瞬间，我的喉咙堵得难受，脑子里劈里啪啦的，但心头那一团的乱麻，忽然被捋清了。\n\n\n\n是的，过去我被“卖”过，但是现在我要自己做主，再也不想为别人活。\n\n\n\n咨询师的分析和拷问，让我放下了包袱，看清了自己内心深处的真实想法。\n\n\n\n我和老公结婚十年了，有八年是两地分居的。这八年里我们的心思都没有放在家里，都在外面游荡，所以才会矛盾重重，争吵不断。\n\n\n\n一次咨询中，咨询师帮我探索我过去十年的心理历程。\n\n\n\n“刚结婚时你的心思在哪里？”“在我妈那里，因为我妈去世不久，我不配幸福……”\n\n\n\n“后来你的心思在哪里？”“在爸那里，因为我爸病了，我爸需要照顾，我爸需要一套房子，我要赚钱帮他买房……”\n\n\n\n咨询师一次次的灵魂拷问，让我发现，原来婚姻的主动权，其实一直在我自己手里。\n\n\n\n是我一直沉浸在原生家庭里的痛苦里无法自拔，是我不懂沟通，不尊重老公的感受，才把婚姻弄成了现在这个样子。\n\n\n\n在咨询师的鼓励下，我打开心扉，开始跟老公畅聊过去，回忆我们恋爱时的美好时光，解释这些年遗留的一些积怨和误会。\n\n\n\n老公看到我变了，内心也开始柔软起来，甚至主动跟我聊起了他童年时的创伤。\n\n\n我确诊抑郁症后，老公也开始反思自己，试着去理解我，我也因为心理咨询，逐渐懂得去看见他的不容易。\n\n\n我们的关系，从一开始带着面具相处，慢慢走向真实。\n\n\n图片\n\n03\n愿那些曾经的伤痛\n都能成为我们的铠甲\n\n2021年下半年，我决定辞职。\n\n\n在这之前，我工作体面，收入也不低。\n\n\n但辞职时我并没有犹豫，因为我发现自己的内心已经足够强大了，可以去做一些自己想做的事情了。\n\n\n我注册了自己的公司，开始一边学习心理学，一边在抖音做情感主播，传播心理学。\n\n\n\n我是一个从深渊里走出来的人，我比任何人都能理解，那些仍然陷在里面的人，内心有多么无助，多么绝望。\n\n\n\n我走出来了，我希望能尽自己最大的能力，拉她们一把。\n\n\n\n老公非常支持我创业，在我没有收入的这半年里，他一个人扛着家里所有的收入，从来没有责怪我、催促我。\n\n\n\n结婚十年了，我终于学会了经营自己的婚姻，说起来有点可笑，又有点可悲。\n\n\n\n虽然这份觉察有点晚，但并不迟，一切刚刚好。\n\n\n\n我今天收获的所有一切，有自己的领悟，但更离不开心理咨询师的引导。每周一次的咨询，已经成了我的日常。\n\n\n就在上周，我刚刚报名了国际NLP心理执行师的课程。\n\n\n未来的大半年，我会一边进修，一边做一些自己的课程。关乎女性成长，关乎心灵疗愈。\n\n\n\n如果你问我，为什么要学习心理学？\n\n\n我会告诉你：我想给自己治病，也想给自己的家人治病，如果有能力，还想帮助更多的人。\n\n\n因为这个世界上，内心有伤痛的人，实在是太多太多了……\n\n\n愿那些曾经的伤痛，都能慢慢成为我们的铠甲，还有武器。\n\n\n\n- The End -\n\n\n\n身体受了伤，我们会去消毒、上药、包扎、谨慎护理。而心灵，应该受到同样的对待，因为伤口更为隐秘，放任不管，它更难愈合。\n\n\n\n如果你也有尚未处理好的创伤，那么，相比于熬着，主动寻求专业帮助，可能是更好的办法。','2022-12-18 14:46:42','2022-12-18 14:46:42'),(23,'苟住！让焦虑生活变得平和的6个tips','先说一个最近觉得很不错的心态改造的方式：我看《及格家宣言》，其中提到人与黑猩猩的差别，也只有4%罢了。就算是我跟迪丽热巴的差别，也不会比4%更多了。\n\n\n哈哈，这就是朋友推荐的，精神胜利法。\n\n\n日子怎么过？但也没什么章法和心得。只能说探索出来一些还算实用的工具。\n\n\n\n1.记录碎片，沉淀文档：\n\n\n尝试用flomo记录碎片化日常，让散落在手机便签，锤子便签以及各种聊天框里的重要信息进入同一个轨道，不再任由信息四处收集不做整理。\n\n\n还有就是用Xmind画每一个业务图，哪怕是下切的维度不一样，也会因为开始做和开始跟别人讨论这件事，而看到了优化的空间。\n\n\n在不需要快速往前冲的日子里，把思考和梳理作为需要提炼的技能，把结构化的表达变成一个小目标。\n\n\n\n2.观察别人体验生活的方式，有选择地复制和临摹\n\n\n最近给自己的一个命题是：不要想太多，不要总是在思考，要去感受和体验。enjoy里的en本来就有进入的意思，如果一直在评论自我和自我的生活，就没有办法深入其中。\n\n\n我最近有一个小习惯就是把即刻里自己喜欢的即友的动态收藏起来，看看他们都在用哪些具体的切角体验生活，是咖啡？还是相机？抑或是酒。每个人的介质都不一样。\n\n\n观察本身就是好奇心。\n\n\n临摹别人的生活也是一个大创意。\n\n\n\n3.把我无能为力的事情分开，不再为难自己\n\n\n最近大环境肉眼可见的不好，上海疫情持续升级，无症状感染人数4位数增加，朋友每天要抢菜，甚至是从冰箱的冷冻区拿了一年前的鱼尾肉来炖着吃，他说这种肉之前在家里都是直接丢掉的没什么营养的部位，彼一时彼一时。\n\n\n接受我不能决定的事情并不是失败，是为了让自己拿得起放得下。有些风险，不是自己努力了就不存在的。有时候因为主观世界里地想象太过于美好，而忽略了客观的现实。\n\n\n看起来糟糕的时候，也知道命运和大时代占了很多比重，不全然跟自己的能力挂钩。\n\n\n也学会在前途一片光明的时候，思考这条路的下一步。\n\n\n用这样的练习去做好我与外界的课题分离，也越来越有对于自我生活的掌控感。\n\n\n\n4.学习专注\n\n\n其中一个很硬核的指标就是屏幕使用时间，我记得本周屏幕使用时间最少的时候只有4小时不到。\n\n\n尽可能争取让自己的时间化零为整。\n\n\n在挑水的时候想着挑水，在砍柴的时候想着砍柴。\n\n\n\n5.建立自己的幸福银行\n\n\n感谢某个播客提到的缓解emo的方式是建立自己的幸福银行。\n\n\n回归flomo之后我就开始建立自己的tag，其中有一个就是幸福银行，里面会记录自己每天感受到快乐或者是幸福的小事，比如说今天感受到了风，去龙坞眺望了茶山，比如今天有了一场高质量的date，今天去跳舞了，从集体视频里看自己好像跳得还不错。\n\n\n用这样的小确幸方式来缓解自己的无意义感。据说记录让自己幸福的小事，也会增加血清素的分泌哦。\n\n\n\n6.体察自己的感受\n\n\n《情绪勒索》里提到一件事，叫做练习自己对于情绪的感受。\n\n\n人无法完全掌控自己的情绪，但我们也要承认“每时每刻都会有不同的感受”。如果难过想哭的时候，可以先去承认我很委屈我想哭，但我也要知道我要用其他事情来完成哭之后的动作。控制情绪不是捂住嘴巴，是为了不让哭占了上风，无法进行下面的事情，过分的沉溺，会让自己不停地被反噬。\n\n\n不批判自己，尽可能地接纳自己，并且尝试把自己从依赖性依恋模式转变到安全性依恋模式。','2022-12-18 14:47:07','2022-12-18 14:47:07');
/*!40000 ALTER TABLE `notice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qrtz_blob_triggers`
--

DROP TABLE IF EXISTS `qrtz_blob_triggers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qrtz_blob_triggers` (
                                      `SCHED_NAME` varchar(120) NOT NULL,
                                      `TRIGGER_NAME` varchar(200) NOT NULL,
                                      `TRIGGER_GROUP` varchar(200) NOT NULL,
                                      `BLOB_DATA` blob,
                                      PRIMARY KEY (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`),
                                      KEY `SCHED_NAME` (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`),
                                      CONSTRAINT `qrtz_blob_triggers_ibfk_1` FOREIGN KEY (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`) REFERENCES `qrtz_triggers` (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qrtz_blob_triggers`
--

LOCK TABLES `qrtz_blob_triggers` WRITE;
/*!40000 ALTER TABLE `qrtz_blob_triggers` DISABLE KEYS */;
/*!40000 ALTER TABLE `qrtz_blob_triggers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qrtz_calendars`
--

DROP TABLE IF EXISTS `qrtz_calendars`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qrtz_calendars` (
                                  `SCHED_NAME` varchar(120) NOT NULL,
                                  `CALENDAR_NAME` varchar(200) NOT NULL,
                                  `CALENDAR` blob NOT NULL,
                                  PRIMARY KEY (`SCHED_NAME`,`CALENDAR_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qrtz_calendars`
--

LOCK TABLES `qrtz_calendars` WRITE;
/*!40000 ALTER TABLE `qrtz_calendars` DISABLE KEYS */;
/*!40000 ALTER TABLE `qrtz_calendars` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qrtz_cron_triggers`
--

DROP TABLE IF EXISTS `qrtz_cron_triggers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qrtz_cron_triggers` (
                                      `SCHED_NAME` varchar(120) NOT NULL,
                                      `TRIGGER_NAME` varchar(200) NOT NULL,
                                      `TRIGGER_GROUP` varchar(200) NOT NULL,
                                      `CRON_EXPRESSION` varchar(120) NOT NULL,
                                      `TIME_ZONE_ID` varchar(80) DEFAULT NULL,
                                      PRIMARY KEY (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`),
                                      CONSTRAINT `qrtz_cron_triggers_ibfk_1` FOREIGN KEY (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`) REFERENCES `qrtz_triggers` (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qrtz_cron_triggers`
--

LOCK TABLES `qrtz_cron_triggers` WRITE;
/*!40000 ALTER TABLE `qrtz_cron_triggers` DISABLE KEYS */;
INSERT INTO `qrtz_cron_triggers` VALUES ('RenrenScheduler','TASK_1','DEFAULT','0 0/30 * * * ?','GMT+08:00');
/*!40000 ALTER TABLE `qrtz_cron_triggers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qrtz_fired_triggers`
--

DROP TABLE IF EXISTS `qrtz_fired_triggers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qrtz_fired_triggers` (
                                       `SCHED_NAME` varchar(120) NOT NULL,
                                       `ENTRY_ID` varchar(95) NOT NULL,
                                       `TRIGGER_NAME` varchar(200) NOT NULL,
                                       `TRIGGER_GROUP` varchar(200) NOT NULL,
                                       `INSTANCE_NAME` varchar(200) NOT NULL,
                                       `FIRED_TIME` bigint NOT NULL,
                                       `SCHED_TIME` bigint NOT NULL,
                                       `PRIORITY` int NOT NULL,
                                       `STATE` varchar(16) NOT NULL,
                                       `JOB_NAME` varchar(200) DEFAULT NULL,
                                       `JOB_GROUP` varchar(200) DEFAULT NULL,
                                       `IS_NONCONCURRENT` varchar(1) DEFAULT NULL,
                                       `REQUESTS_RECOVERY` varchar(1) DEFAULT NULL,
                                       PRIMARY KEY (`SCHED_NAME`,`ENTRY_ID`),
                                       KEY `IDX_QRTZ_FT_TRIG_INST_NAME` (`SCHED_NAME`,`INSTANCE_NAME`),
                                       KEY `IDX_QRTZ_FT_INST_JOB_REQ_RCVRY` (`SCHED_NAME`,`INSTANCE_NAME`,`REQUESTS_RECOVERY`),
                                       KEY `IDX_QRTZ_FT_J_G` (`SCHED_NAME`,`JOB_NAME`,`JOB_GROUP`),
                                       KEY `IDX_QRTZ_FT_JG` (`SCHED_NAME`,`JOB_GROUP`),
                                       KEY `IDX_QRTZ_FT_T_G` (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`),
                                       KEY `IDX_QRTZ_FT_TG` (`SCHED_NAME`,`TRIGGER_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qrtz_fired_triggers`
--

LOCK TABLES `qrtz_fired_triggers` WRITE;
/*!40000 ALTER TABLE `qrtz_fired_triggers` DISABLE KEYS */;
/*!40000 ALTER TABLE `qrtz_fired_triggers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qrtz_job_details`
--

DROP TABLE IF EXISTS `qrtz_job_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qrtz_job_details` (
                                    `SCHED_NAME` varchar(120) NOT NULL,
                                    `JOB_NAME` varchar(200) NOT NULL,
                                    `JOB_GROUP` varchar(200) NOT NULL,
                                    `DESCRIPTION` varchar(250) DEFAULT NULL,
                                    `JOB_CLASS_NAME` varchar(250) NOT NULL,
                                    `IS_DURABLE` varchar(1) NOT NULL,
                                    `IS_NONCONCURRENT` varchar(1) NOT NULL,
                                    `IS_UPDATE_DATA` varchar(1) NOT NULL,
                                    `REQUESTS_RECOVERY` varchar(1) NOT NULL,
                                    `JOB_DATA` blob,
                                    PRIMARY KEY (`SCHED_NAME`,`JOB_NAME`,`JOB_GROUP`),
                                    KEY `IDX_QRTZ_J_REQ_RECOVERY` (`SCHED_NAME`,`REQUESTS_RECOVERY`),
                                    KEY `IDX_QRTZ_J_GRP` (`SCHED_NAME`,`JOB_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qrtz_job_details`
--

LOCK TABLES `qrtz_job_details` WRITE;
/*!40000 ALTER TABLE `qrtz_job_details` DISABLE KEYS */;
INSERT INTO `qrtz_job_details` VALUES ('RenrenScheduler','TASK_1','DEFAULT',NULL,'io.renren.modules.job.utils.ScheduleJob','0','0','0','0',_binary '�\�\0sr\0org.quartz.JobDataMap���迩�\�\0\0xr\0&org.quartz.utils.StringKeyDirtyFlagMap�\�\��\�](\0Z\0allowsTransientDataxr\0org.quartz.utils.DirtyFlagMap\�.�(v\n\�\0Z\0dirtyL\0mapt\0Ljava/util/Map;xpsr\0java.util.HashMap\��\�`\�\0F\0\nloadFactorI\0	thresholdxp?@\0\0\0\0\0w\0\0\0\0\0\0t\0\rJOB_PARAM_KEYsr\0.io.renren.modules.job.entity.ScheduleJobEntity\0\0\0\0\0\0\0\0L\0beanNamet\0Ljava/lang/String;L\0\ncreateTimet\0Ljava/util/Date;L\0cronExpressionq\0~\0	L\0jobIdt\0Ljava/lang/Long;L\0paramsq\0~\0	L\0remarkq\0~\0	L\0statust\0Ljava/lang/Integer;xpt\0testTasksr\0java.util.Datehj�KYt\0\0xpw\0\0t\�\�Mxt\00 0/30 * * * ?sr\0java.lang.Long;�\�̏#\�\0J\0valuexr\0java.lang.Number����\��\0\0xp\0\0\0\0\0\0\0t\0renrent\0参数测试sr\0java.lang.Integer⠤\���8\0I\0valuexq\0~\0\0\0\0\0x\0');
/*!40000 ALTER TABLE `qrtz_job_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qrtz_locks`
--

DROP TABLE IF EXISTS `qrtz_locks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qrtz_locks` (
                              `SCHED_NAME` varchar(120) NOT NULL,
                              `LOCK_NAME` varchar(40) NOT NULL,
                              PRIMARY KEY (`SCHED_NAME`,`LOCK_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qrtz_locks`
--

LOCK TABLES `qrtz_locks` WRITE;
/*!40000 ALTER TABLE `qrtz_locks` DISABLE KEYS */;
INSERT INTO `qrtz_locks` VALUES ('RenrenScheduler','STATE_ACCESS'),('RenrenScheduler','TRIGGER_ACCESS');
/*!40000 ALTER TABLE `qrtz_locks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qrtz_paused_trigger_grps`
--

DROP TABLE IF EXISTS `qrtz_paused_trigger_grps`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qrtz_paused_trigger_grps` (
                                            `SCHED_NAME` varchar(120) NOT NULL,
                                            `TRIGGER_GROUP` varchar(200) NOT NULL,
                                            PRIMARY KEY (`SCHED_NAME`,`TRIGGER_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qrtz_paused_trigger_grps`
--

LOCK TABLES `qrtz_paused_trigger_grps` WRITE;
/*!40000 ALTER TABLE `qrtz_paused_trigger_grps` DISABLE KEYS */;
/*!40000 ALTER TABLE `qrtz_paused_trigger_grps` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qrtz_scheduler_state`
--

DROP TABLE IF EXISTS `qrtz_scheduler_state`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qrtz_scheduler_state` (
                                        `SCHED_NAME` varchar(120) NOT NULL,
                                        `INSTANCE_NAME` varchar(200) NOT NULL,
                                        `LAST_CHECKIN_TIME` bigint NOT NULL,
                                        `CHECKIN_INTERVAL` bigint NOT NULL,
                                        PRIMARY KEY (`SCHED_NAME`,`INSTANCE_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qrtz_scheduler_state`
--

LOCK TABLES `qrtz_scheduler_state` WRITE;
/*!40000 ALTER TABLE `qrtz_scheduler_state` DISABLE KEYS */;
INSERT INTO `qrtz_scheduler_state` VALUES ('RenrenScheduler','MSI1672467417156',1672467538743,15000);
/*!40000 ALTER TABLE `qrtz_scheduler_state` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qrtz_simple_triggers`
--

DROP TABLE IF EXISTS `qrtz_simple_triggers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qrtz_simple_triggers` (
                                        `SCHED_NAME` varchar(120) NOT NULL,
                                        `TRIGGER_NAME` varchar(200) NOT NULL,
                                        `TRIGGER_GROUP` varchar(200) NOT NULL,
                                        `REPEAT_COUNT` bigint NOT NULL,
                                        `REPEAT_INTERVAL` bigint NOT NULL,
                                        `TIMES_TRIGGERED` bigint NOT NULL,
                                        PRIMARY KEY (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`),
                                        CONSTRAINT `qrtz_simple_triggers_ibfk_1` FOREIGN KEY (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`) REFERENCES `qrtz_triggers` (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qrtz_simple_triggers`
--

LOCK TABLES `qrtz_simple_triggers` WRITE;
/*!40000 ALTER TABLE `qrtz_simple_triggers` DISABLE KEYS */;
/*!40000 ALTER TABLE `qrtz_simple_triggers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qrtz_simprop_triggers`
--

DROP TABLE IF EXISTS `qrtz_simprop_triggers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qrtz_simprop_triggers` (
                                         `SCHED_NAME` varchar(120) NOT NULL,
                                         `TRIGGER_NAME` varchar(200) NOT NULL,
                                         `TRIGGER_GROUP` varchar(200) NOT NULL,
                                         `STR_PROP_1` varchar(512) DEFAULT NULL,
                                         `STR_PROP_2` varchar(512) DEFAULT NULL,
                                         `STR_PROP_3` varchar(512) DEFAULT NULL,
                                         `INT_PROP_1` int DEFAULT NULL,
                                         `INT_PROP_2` int DEFAULT NULL,
                                         `LONG_PROP_1` bigint DEFAULT NULL,
                                         `LONG_PROP_2` bigint DEFAULT NULL,
                                         `DEC_PROP_1` decimal(13,4) DEFAULT NULL,
                                         `DEC_PROP_2` decimal(13,4) DEFAULT NULL,
                                         `BOOL_PROP_1` varchar(1) DEFAULT NULL,
                                         `BOOL_PROP_2` varchar(1) DEFAULT NULL,
                                         PRIMARY KEY (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`),
                                         CONSTRAINT `qrtz_simprop_triggers_ibfk_1` FOREIGN KEY (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`) REFERENCES `qrtz_triggers` (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qrtz_simprop_triggers`
--

LOCK TABLES `qrtz_simprop_triggers` WRITE;
/*!40000 ALTER TABLE `qrtz_simprop_triggers` DISABLE KEYS */;
/*!40000 ALTER TABLE `qrtz_simprop_triggers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qrtz_triggers`
--

DROP TABLE IF EXISTS `qrtz_triggers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qrtz_triggers` (
                                 `SCHED_NAME` varchar(120) NOT NULL,
                                 `TRIGGER_NAME` varchar(200) NOT NULL,
                                 `TRIGGER_GROUP` varchar(200) NOT NULL,
                                 `JOB_NAME` varchar(200) NOT NULL,
                                 `JOB_GROUP` varchar(200) NOT NULL,
                                 `DESCRIPTION` varchar(250) DEFAULT NULL,
                                 `NEXT_FIRE_TIME` bigint DEFAULT NULL,
                                 `PREV_FIRE_TIME` bigint DEFAULT NULL,
                                 `PRIORITY` int DEFAULT NULL,
                                 `TRIGGER_STATE` varchar(16) NOT NULL,
                                 `TRIGGER_TYPE` varchar(8) NOT NULL,
                                 `START_TIME` bigint NOT NULL,
                                 `END_TIME` bigint DEFAULT NULL,
                                 `CALENDAR_NAME` varchar(200) DEFAULT NULL,
                                 `MISFIRE_INSTR` smallint DEFAULT NULL,
                                 `JOB_DATA` blob,
                                 PRIMARY KEY (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`),
                                 KEY `IDX_QRTZ_T_J` (`SCHED_NAME`,`JOB_NAME`,`JOB_GROUP`),
                                 KEY `IDX_QRTZ_T_JG` (`SCHED_NAME`,`JOB_GROUP`),
                                 KEY `IDX_QRTZ_T_C` (`SCHED_NAME`,`CALENDAR_NAME`),
                                 KEY `IDX_QRTZ_T_G` (`SCHED_NAME`,`TRIGGER_GROUP`),
                                 KEY `IDX_QRTZ_T_STATE` (`SCHED_NAME`,`TRIGGER_STATE`),
                                 KEY `IDX_QRTZ_T_N_STATE` (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`,`TRIGGER_STATE`),
                                 KEY `IDX_QRTZ_T_N_G_STATE` (`SCHED_NAME`,`TRIGGER_GROUP`,`TRIGGER_STATE`),
                                 KEY `IDX_QRTZ_T_NEXT_FIRE_TIME` (`SCHED_NAME`,`NEXT_FIRE_TIME`),
                                 KEY `IDX_QRTZ_T_NFT_ST` (`SCHED_NAME`,`TRIGGER_STATE`,`NEXT_FIRE_TIME`),
                                 KEY `IDX_QRTZ_T_NFT_MISFIRE` (`SCHED_NAME`,`MISFIRE_INSTR`,`NEXT_FIRE_TIME`),
                                 KEY `IDX_QRTZ_T_NFT_ST_MISFIRE` (`SCHED_NAME`,`MISFIRE_INSTR`,`NEXT_FIRE_TIME`,`TRIGGER_STATE`),
                                 KEY `IDX_QRTZ_T_NFT_ST_MISFIRE_GRP` (`SCHED_NAME`,`MISFIRE_INSTR`,`NEXT_FIRE_TIME`,`TRIGGER_GROUP`,`TRIGGER_STATE`),
                                 CONSTRAINT `qrtz_triggers_ibfk_1` FOREIGN KEY (`SCHED_NAME`, `JOB_NAME`, `JOB_GROUP`) REFERENCES `qrtz_job_details` (`SCHED_NAME`, `JOB_NAME`, `JOB_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qrtz_triggers`
--

LOCK TABLES `qrtz_triggers` WRITE;
/*!40000 ALTER TABLE `qrtz_triggers` DISABLE KEYS */;
INSERT INTO `qrtz_triggers` VALUES ('RenrenScheduler','TASK_1','DEFAULT','TASK_1','DEFAULT',NULL,1670068800000,-1,5,'WAITING','CRON',1670067797000,0,NULL,2,_binary '�\�\0sr\0org.quartz.JobDataMap���迩�\�\0\0xr\0&org.quartz.utils.StringKeyDirtyFlagMap�\�\��\�](\0Z\0allowsTransientDataxr\0org.quartz.utils.DirtyFlagMap\�.�(v\n\�\0Z\0dirtyL\0mapt\0Ljava/util/Map;xpsr\0java.util.HashMap\��\�`\�\0F\0\nloadFactorI\0	thresholdxp?@\0\0\0\0\0w\0\0\0\0\0\0t\0\rJOB_PARAM_KEYsr\0.io.renren.modules.job.entity.ScheduleJobEntity\0\0\0\0\0\0\0\0L\0beanNamet\0Ljava/lang/String;L\0\ncreateTimet\0Ljava/util/Date;L\0cronExpressionq\0~\0	L\0jobIdt\0Ljava/lang/Long;L\0paramsq\0~\0	L\0remarkq\0~\0	L\0statust\0Ljava/lang/Integer;xpt\0testTasksr\0java.util.Datehj�KYt\0\0xpw\0\0t\�\�Mxt\00 0/30 * * * ?sr\0java.lang.Long;�\�̏#\�\0J\0valuexr\0java.lang.Number����\��\0\0xp\0\0\0\0\0\0\0t\0renrent\0参数测试sr\0java.lang.Integer⠤\���8\0I\0valuexq\0~\0\0\0\0\0x\0');
/*!40000 ALTER TABLE `qrtz_triggers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reservation_center`
--

DROP TABLE IF EXISTS `reservation_center`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reservation_center` (
                                      `reservation_center_id` int NOT NULL AUTO_INCREMENT COMMENT '预约中心ID',
                                      `teacher_job_number` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL COMMENT '教师工号',
                                      `teacher_name` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL COMMENT '教师姓名',
                                      `teacher_account` int DEFAULT '0' COMMENT '教师账户',
                                      `teacher_head` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL COMMENT '教师头像',
                                      `relevant_certificates` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL COMMENT '相关证书',
                                      `areas_of_expertise` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci COMMENT '擅长领域',
                                      `hits` int NOT NULL DEFAULT '0' COMMENT '点击数',
                                      `praise_len` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '地址',
                                      `recommend` int NOT NULL DEFAULT '0' COMMENT '智能推荐',
                                      `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
                                      `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
                                      PRIMARY KEY (`reservation_center_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3 COMMENT='预约中心';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reservation_center`
--

LOCK TABLES `reservation_center` WRITE;
/*!40000 ALTER TABLE `reservation_center` DISABLE KEYS */;
INSERT INTO `reservation_center` VALUES (1,'94','吴翔',0,'rnapxb47a.hn-bkt.clouddn.com/upload/20221225/b741df3902dc4303859ba0e142ac52c9.png','简介：中山大学心理学硕士，心理套娃发明人','擅长:婚姻家庭，个人成长，亲子教育',1,'四川省龙泉驿区第一人民医院门诊部201',1,'2022-12-22 21:05:00','2022-12-29 12:57:00'),(2,'95','秦艳鸿',0,'rnapxb47a.hn-bkt.clouddn.com/upload/20221225/05169dabe3504c54b9b10a37536ae212.jpeg','简介：二级心理咨询师/中英班/精神分析取向','擅长:情绪管理，情绪管理，人际关系',1,'四川省龙泉驿区第一人民医院门诊部201',1,'2022-12-22 21:05:00','2022-12-29 12:57:05'),(3,'96','李菊红',0,'rnapxb47a.hn-bkt.clouddn.com/upload/20221225/01f05880c8cf42cea829c8b0aa0f79e0.jpg','简介：国家二级心理咨询师　壹心理专栏作者','擅长:个人成长，情绪管理，人际关系',1,'四川省龙泉驿区四川师范大学成龙医院心理部',1,'2022-12-22 21:05:00','2022-12-29 13:02:50'),(4,'97','胡少锴',0,'rnapxb47a.hn-bkt.clouddn.com/upload/20221225/92e775354ca742e6a6e21e4f632b250f.jpg','简介：国家心理咨询师/心理动力取向咨询师','擅长:个人成长，情绪管理，人际关系',1,'四川省龙泉驿区四川师范大学成龙医院心理部',1,'2022-12-22 21:05:00','2022-12-29 13:02:50'),(6,'111','测试用例',0,'rnapxb47a.hn-bkt.clouddn.com/upload/20221225/7ec13b9da0d9452fa668e962acf97770.png','111','111',0,'重庆市合川区合川医院',0,'2022-12-26 13:32:00','2022-12-29 13:03:22');
/*!40000 ALTER TABLE `reservation_center` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schedule_job`
--

DROP TABLE IF EXISTS `schedule_job`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `schedule_job` (
                                `job_id` bigint NOT NULL AUTO_INCREMENT COMMENT '任务id',
                                `bean_name` varchar(200) DEFAULT NULL COMMENT 'spring bean名称',
                                `params` varchar(2000) DEFAULT NULL COMMENT '参数',
                                `cron_expression` varchar(100) DEFAULT NULL COMMENT 'cron表达式',
                                `status` tinyint DEFAULT NULL COMMENT '任务状态  0：正常  1：暂停',
                                `remark` varchar(255) DEFAULT NULL COMMENT '备注',
                                `create_time` datetime DEFAULT NULL COMMENT '创建时间',
                                PRIMARY KEY (`job_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='定时任务';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schedule_job`
--

LOCK TABLES `schedule_job` WRITE;
/*!40000 ALTER TABLE `schedule_job` DISABLE KEYS */;
INSERT INTO `schedule_job` VALUES (1,'testTask','renren','0 0/30 * * * ?',0,'参数测试','2020-10-05 06:59:22');
/*!40000 ALTER TABLE `schedule_job` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schedule_job_log`
--

DROP TABLE IF EXISTS `schedule_job_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `schedule_job_log` (
                                    `log_id` bigint NOT NULL AUTO_INCREMENT COMMENT '任务日志id',
                                    `job_id` bigint NOT NULL COMMENT '任务id',
                                    `bean_name` varchar(200) DEFAULT NULL COMMENT 'spring bean名称',
                                    `params` varchar(2000) DEFAULT NULL COMMENT '参数',
                                    `status` tinyint NOT NULL COMMENT '任务状态    0：成功    1：失败',
                                    `error` varchar(2000) DEFAULT NULL COMMENT '失败信息',
                                    `times` int NOT NULL COMMENT '耗时(单位：毫秒)',
                                    `create_time` datetime DEFAULT NULL COMMENT '创建时间',
                                    PRIMARY KEY (`log_id`),
                                    KEY `job_id` (`job_id`)
) ENGINE=InnoDB AUTO_INCREMENT=361 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='定时任务日志';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schedule_job_log`
--

LOCK TABLES `schedule_job_log` WRITE;
/*!40000 ALTER TABLE `schedule_job_log` DISABLE KEYS */;
INSERT INTO `schedule_job_log` VALUES (1,1,'testTask','renren',0,NULL,2,'2020-10-05 15:30:00'),(2,1,'testTask','renren',0,NULL,0,'2020-10-05 16:00:00'),(3,1,'testTask','renren',0,NULL,3,'2020-10-05 18:00:00'),(4,1,'testTask','renren',0,NULL,1,'2020-10-05 18:30:00'),(5,1,'testTask','renren',0,NULL,5,'2020-10-05 19:30:00'),(6,1,'testTask','renren',0,NULL,4,'2020-10-05 20:00:00'),(7,1,'testTask','renren',0,NULL,3,'2020-10-05 20:30:00'),(8,1,'testTask','renren',0,NULL,4,'2020-10-05 21:00:00'),(9,1,'testTask','renren',0,NULL,1,'2020-10-05 21:30:00'),(10,1,'testTask','renren',0,NULL,4,'2020-10-05 22:30:00'),(11,1,'testTask','renren',0,NULL,1,'2020-10-06 10:30:00'),(12,1,'testTask','renren',0,NULL,2,'2020-10-06 11:00:00'),(13,1,'testTask','renren',0,NULL,6,'2020-10-06 11:30:00'),(14,1,'testTask','renren',0,NULL,4,'2020-10-06 12:00:00'),(15,1,'testTask','renren',0,NULL,3,'2020-10-06 12:30:00'),(16,1,'testTask','renren',0,NULL,2,'2020-10-06 13:30:00'),(17,1,'testTask','renren',0,NULL,2,'2020-10-06 14:00:00'),(18,1,'testTask','renren',0,NULL,3,'2020-10-06 20:30:00'),(19,1,'testTask','renren',0,NULL,2,'2020-10-06 21:00:00'),(20,1,'testTask','renren',0,NULL,5,'2020-10-06 21:30:00'),(21,1,'testTask','renren',0,NULL,5,'2020-10-06 22:00:00'),(22,1,'testTask','renren',0,NULL,2,'2020-10-07 18:00:00'),(23,1,'testTask','renren',0,NULL,2,'2020-10-07 18:30:00'),(24,1,'testTask','renren',0,NULL,2,'2020-10-07 19:00:00'),(25,1,'testTask','renren',0,NULL,3,'2020-10-07 19:30:00'),(26,1,'testTask','renren',0,NULL,2,'2020-10-07 20:00:00'),(27,1,'testTask','renren',0,NULL,5,'2020-10-07 20:30:00'),(28,1,'testTask','renren',0,NULL,1,'2020-10-07 21:00:00'),(29,1,'testTask','renren',0,NULL,4,'2020-10-07 21:30:00'),(30,1,'testTask','renren',0,NULL,3,'2020-10-07 22:30:00'),(31,1,'testTask','renren',0,NULL,2,'2020-10-08 04:30:00'),(32,1,'testTask','renren',0,NULL,4,'2020-10-08 18:30:00'),(33,1,'testTask','renren',0,NULL,0,'2022-11-30 22:30:00'),(34,1,'testTask','renren',0,NULL,1,'2022-11-30 23:00:00'),(35,1,'testTask','renren',0,NULL,0,'2022-11-30 23:08:17'),(36,1,'testTask','renren',0,NULL,0,'2022-11-30 23:08:32'),(37,1,'testTask','renren',0,NULL,0,'2022-11-30 23:11:33'),(38,1,'testTask','renren',0,NULL,0,'2022-11-30 23:11:38'),(39,1,'testTask','renren',0,NULL,0,'2022-12-03 20:00:00'),(40,1,'testTask','renren',0,NULL,2,'2022-12-03 20:30:00'),(41,1,'testTask','renren',0,NULL,1,'2022-12-03 21:00:00'),(42,1,'testTask','renren',0,NULL,0,'2022-12-03 21:30:00'),(43,1,'testTask','renren',0,NULL,1,'2022-12-03 22:00:00'),(44,1,'testTask','renren',0,NULL,0,'2022-12-03 22:30:00'),(45,1,'testTask','renren',0,NULL,0,'2022-12-03 23:00:00'),(46,1,'testTask','renren',0,NULL,0,'2022-12-04 14:00:00'),(47,1,'testTask','renren',0,NULL,0,'2022-12-04 14:30:00'),(48,1,'testTask','renren',0,NULL,2,'2022-12-04 15:00:00'),(49,1,'testTask','renren',0,NULL,1,'2022-12-04 15:30:00'),(50,1,'testTask','renren',0,NULL,1,'2022-12-04 16:00:00'),(51,1,'testTask','renren',0,NULL,0,'2022-12-04 16:30:00'),(52,1,'testTask','renren',0,NULL,0,'2022-12-04 17:00:00'),(53,1,'testTask','renren',0,NULL,1,'2022-12-04 17:30:00'),(54,1,'testTask','renren',0,NULL,0,'2022-12-04 18:00:00'),(55,1,'testTask','renren',0,NULL,1,'2022-12-04 18:30:00'),(56,1,'testTask','renren',0,NULL,1,'2022-12-04 19:00:00'),(57,1,'testTask','renren',0,NULL,0,'2022-12-04 19:30:00'),(58,1,'testTask','renren',0,NULL,0,'2022-12-04 20:00:00'),(59,1,'testTask','renren',0,NULL,1,'2022-12-04 20:30:00'),(60,1,'testTask','renren',0,NULL,0,'2022-12-04 21:00:00'),(61,1,'testTask','renren',0,NULL,0,'2022-12-04 21:30:00'),(62,1,'testTask','renren',0,NULL,1,'2022-12-04 22:00:00'),(63,1,'testTask','renren',0,NULL,0,'2022-12-04 22:30:00'),(64,1,'testTask','renren',0,NULL,0,'2022-12-04 23:00:00'),(65,1,'testTask','renren',0,NULL,1,'2022-12-05 14:00:00'),(66,1,'testTask','renren',0,NULL,0,'2022-12-05 14:30:00'),(67,1,'testTask','renren',0,NULL,0,'2022-12-05 15:00:00'),(68,1,'testTask','renren',0,NULL,0,'2022-12-05 15:30:00'),(69,1,'testTask','renren',0,NULL,0,'2022-12-05 16:00:00'),(70,1,'testTask','renren',0,NULL,1,'2022-12-05 16:30:00'),(71,1,'testTask','renren',0,NULL,0,'2022-12-05 17:00:00'),(72,1,'testTask','renren',0,NULL,0,'2022-12-05 17:30:00'),(73,1,'testTask','renren',0,NULL,1,'2022-12-05 18:00:00'),(74,1,'testTask','renren',0,NULL,0,'2022-12-05 18:30:00'),(75,1,'testTask','renren',0,NULL,1,'2022-12-05 19:00:00'),(76,1,'testTask','renren',0,NULL,0,'2022-12-05 19:30:00'),(77,1,'testTask','renren',0,NULL,0,'2022-12-05 20:00:00'),(78,1,'testTask','renren',0,NULL,0,'2022-12-05 20:30:00'),(79,1,'testTask','renren',0,NULL,1,'2022-12-05 21:00:00'),(80,1,'testTask','renren',0,NULL,1,'2022-12-05 21:30:00'),(81,1,'testTask','renren',0,NULL,1,'2022-12-05 22:00:00'),(82,1,'testTask','renren',0,NULL,0,'2022-12-05 22:30:00'),(83,1,'testTask','renren',0,NULL,0,'2022-12-05 23:00:00'),(84,1,'testTask','renren',0,NULL,1,'2022-12-05 23:30:00'),(85,1,'testTask','renren',0,NULL,1,'2022-12-06 14:30:00'),(86,1,'testTask','renren',0,NULL,0,'2022-12-06 15:00:00'),(87,1,'testTask','renren',0,NULL,1,'2022-12-06 15:30:00'),(88,1,'testTask','renren',0,NULL,1,'2022-12-06 16:00:00'),(89,1,'testTask','renren',0,NULL,1,'2022-12-06 16:30:00'),(90,1,'testTask','renren',0,NULL,0,'2022-12-06 17:00:00'),(91,1,'testTask','renren',0,NULL,1,'2022-12-06 17:30:00'),(92,1,'testTask','renren',0,NULL,1,'2022-12-06 18:00:00'),(93,1,'testTask','renren',0,NULL,1,'2022-12-06 18:30:00'),(94,1,'testTask','renren',0,NULL,0,'2022-12-06 19:00:00'),(95,1,'testTask','renren',0,NULL,1,'2022-12-06 19:30:00'),(96,1,'testTask','renren',0,NULL,1,'2022-12-06 20:00:00'),(97,1,'testTask','renren',0,NULL,0,'2022-12-06 20:30:00'),(98,1,'testTask','renren',0,NULL,0,'2022-12-06 21:00:00'),(99,1,'testTask','renren',0,NULL,1,'2022-12-06 21:30:00'),(100,1,'testTask','renren',0,NULL,1,'2022-12-06 22:00:00'),(101,1,'testTask','renren',0,NULL,1,'2022-12-06 22:30:00'),(102,1,'testTask','renren',0,NULL,0,'2022-12-06 23:00:00'),(103,1,'testTask','renren',0,NULL,0,'2022-12-07 23:30:00'),(104,1,'testTask','renren',0,NULL,5,'2022-12-08 00:00:00'),(105,1,'testTask','renren',0,NULL,0,'2022-12-08 08:30:00'),(106,1,'testTask','renren',0,NULL,0,'2022-12-08 09:00:00'),(107,1,'testTask','renren',0,NULL,0,'2022-12-08 09:30:00'),(108,1,'testTask','renren',0,NULL,1,'2022-12-08 10:00:00'),(109,1,'testTask','renren',0,NULL,1,'2022-12-08 10:30:00'),(110,1,'testTask','renren',0,NULL,0,'2022-12-08 11:00:00'),(111,1,'testTask','renren',0,NULL,0,'2022-12-08 11:30:00'),(112,1,'testTask','renren',0,NULL,1,'2022-12-08 12:00:00'),(113,1,'testTask','renren',0,NULL,1,'2022-12-08 12:30:00'),(114,1,'testTask','renren',0,NULL,0,'2022-12-08 13:00:00'),(115,1,'testTask','renren',0,NULL,1,'2022-12-08 13:30:00'),(116,1,'testTask','renren',0,NULL,0,'2022-12-08 14:00:00'),(117,1,'testTask','renren',0,NULL,1,'2022-12-08 14:30:00'),(118,1,'testTask','renren',0,NULL,0,'2022-12-08 15:00:00'),(119,1,'testTask','renren',0,NULL,0,'2022-12-08 15:30:00'),(120,1,'testTask','renren',0,NULL,1,'2022-12-08 16:00:00'),(121,1,'testTask','renren',0,NULL,1,'2022-12-08 16:30:00'),(122,1,'testTask','renren',0,NULL,0,'2022-12-08 17:00:00'),(123,1,'testTask','renren',0,NULL,1,'2022-12-08 17:30:00'),(124,1,'testTask','renren',0,NULL,0,'2022-12-08 18:00:00'),(125,1,'testTask','renren',0,NULL,0,'2022-12-08 18:30:00'),(126,1,'testTask','renren',0,NULL,1,'2022-12-08 19:00:00'),(127,1,'testTask','renren',0,NULL,1,'2022-12-08 19:30:00'),(128,1,'testTask','renren',0,NULL,1,'2022-12-08 20:00:00'),(129,1,'testTask','renren',0,NULL,0,'2022-12-08 20:30:00'),(130,1,'testTask','renren',0,NULL,1,'2022-12-08 21:00:00'),(131,1,'testTask','renren',0,NULL,0,'2022-12-08 21:30:00'),(132,1,'testTask','renren',0,NULL,0,'2022-12-08 22:00:00'),(133,1,'testTask','renren',0,NULL,0,'2022-12-08 22:30:00'),(134,1,'testTask','renren',0,NULL,0,'2022-12-08 23:00:00'),(135,1,'testTask','renren',0,NULL,0,'2022-12-09 16:00:00'),(136,1,'testTask','renren',0,NULL,0,'2022-12-09 16:30:00'),(137,1,'testTask','renren',0,NULL,0,'2022-12-09 17:00:00'),(138,1,'testTask','renren',0,NULL,0,'2022-12-09 17:30:00'),(139,1,'testTask','renren',0,NULL,0,'2022-12-09 18:00:00'),(140,1,'testTask','renren',0,NULL,0,'2022-12-09 18:30:00'),(141,1,'testTask','renren',0,NULL,1,'2022-12-09 21:30:00'),(142,1,'testTask','renren',0,NULL,1,'2022-12-09 22:00:00'),(143,1,'testTask','renren',0,NULL,1,'2022-12-09 22:30:00'),(144,1,'testTask','renren',0,NULL,0,'2022-12-09 23:00:00'),(145,1,'testTask','renren',0,NULL,0,'2022-12-09 23:30:00'),(146,1,'testTask','renren',0,NULL,0,'2022-12-10 14:30:00'),(147,1,'testTask','renren',0,NULL,1,'2022-12-10 15:00:00'),(148,1,'testTask','renren',0,NULL,0,'2022-12-10 15:30:00'),(149,1,'testTask','renren',0,NULL,0,'2022-12-10 16:00:00'),(150,1,'testTask','renren',0,NULL,1,'2022-12-10 16:30:00'),(151,1,'testTask','renren',0,NULL,0,'2022-12-10 17:00:00'),(152,1,'testTask','renren',0,NULL,1,'2022-12-10 17:30:00'),(153,1,'testTask','renren',0,NULL,0,'2022-12-10 18:00:00'),(154,1,'testTask','renren',0,NULL,0,'2022-12-10 18:30:00'),(155,1,'testTask','renren',0,NULL,1,'2022-12-10 19:00:00'),(156,1,'testTask','renren',0,NULL,0,'2022-12-10 19:30:00'),(157,1,'testTask','renren',0,NULL,0,'2022-12-10 20:00:00'),(158,1,'testTask','renren',0,NULL,0,'2022-12-10 20:30:00'),(159,1,'testTask','renren',0,NULL,1,'2022-12-10 21:00:00'),(160,1,'testTask','renren',0,NULL,1,'2022-12-10 21:30:00'),(161,1,'testTask','renren',0,NULL,0,'2022-12-11 20:30:00'),(162,1,'testTask','renren',0,NULL,2,'2022-12-11 21:00:00'),(163,1,'testTask','renren',0,NULL,1,'2022-12-11 21:30:00'),(164,1,'testTask','renren',0,NULL,2,'2022-12-11 22:00:00'),(165,1,'testTask','renren',0,NULL,1,'2022-12-11 22:30:00'),(166,1,'testTask','renren',0,NULL,0,'2022-12-11 23:00:00'),(167,1,'testTask','renren',0,NULL,1,'2022-12-13 15:00:00'),(168,1,'testTask','renren',0,NULL,0,'2022-12-13 15:30:00'),(169,1,'testTask','renren',0,NULL,1,'2022-12-13 16:00:00'),(170,1,'testTask','renren',0,NULL,1,'2022-12-13 16:30:00'),(171,1,'testTask','renren',0,NULL,0,'2022-12-13 23:30:00'),(172,1,'testTask','renren',0,NULL,1,'2022-12-14 13:30:00'),(173,1,'testTask','renren',0,NULL,0,'2022-12-14 14:00:00'),(174,1,'testTask','renren',0,NULL,0,'2022-12-14 14:30:00'),(175,1,'testTask','renren',0,NULL,1,'2022-12-14 15:00:00'),(176,1,'testTask','renren',0,NULL,1,'2022-12-14 15:30:00'),(177,1,'testTask','renren',0,NULL,2,'2022-12-14 16:00:00'),(178,1,'testTask','renren',0,NULL,0,'2022-12-14 16:30:00'),(179,1,'testTask','renren',0,NULL,0,'2022-12-14 17:00:00'),(180,1,'testTask','renren',0,NULL,0,'2022-12-14 17:30:00'),(181,1,'testTask','renren',0,NULL,0,'2022-12-14 18:00:00'),(182,1,'testTask','renren',0,NULL,1,'2022-12-14 18:30:00'),(183,1,'testTask','renren',0,NULL,1,'2022-12-14 19:00:00'),(184,1,'testTask','renren',0,NULL,0,'2022-12-14 19:30:00'),(185,1,'testTask','renren',0,NULL,1,'2022-12-14 20:00:00'),(186,1,'testTask','renren',0,NULL,1,'2022-12-14 20:30:00'),(187,1,'testTask','renren',0,NULL,0,'2022-12-14 21:00:00'),(188,1,'testTask','renren',0,NULL,2,'2022-12-14 21:30:00'),(189,1,'testTask','renren',0,NULL,1,'2022-12-14 22:00:00'),(190,1,'testTask','renren',0,NULL,0,'2022-12-14 22:30:00'),(191,1,'testTask','renren',0,NULL,0,'2022-12-14 23:00:00'),(192,1,'testTask','renren',0,NULL,0,'2022-12-14 23:30:00'),(193,1,'testTask','renren',0,NULL,6,'2022-12-15 00:00:00'),(194,1,'testTask','renren',0,NULL,0,'2022-12-15 00:30:00'),(195,1,'testTask','renren',0,NULL,1,'2022-12-15 01:00:00'),(196,1,'testTask','renren',0,NULL,0,'2022-12-15 01:30:00'),(197,1,'testTask','renren',0,NULL,0,'2022-12-15 02:00:00'),(198,1,'testTask','renren',0,NULL,1,'2022-12-15 02:30:00'),(199,1,'testTask','renren',0,NULL,0,'2022-12-15 03:00:00'),(200,1,'testTask','renren',0,NULL,0,'2022-12-15 03:30:00'),(201,1,'testTask','renren',0,NULL,0,'2022-12-15 04:00:00'),(202,1,'testTask','renren',0,NULL,1,'2022-12-15 04:30:00'),(203,1,'testTask','renren',0,NULL,1,'2022-12-15 05:00:00'),(204,1,'testTask','renren',0,NULL,0,'2022-12-15 05:30:00'),(205,1,'testTask','renren',0,NULL,0,'2022-12-15 06:00:00'),(206,1,'testTask','renren',0,NULL,1,'2022-12-15 06:30:00'),(207,1,'testTask','renren',0,NULL,0,'2022-12-15 07:00:00'),(208,1,'testTask','renren',0,NULL,0,'2022-12-15 07:30:00'),(209,1,'testTask','renren',0,NULL,0,'2022-12-15 08:00:00'),(210,1,'testTask','renren',0,NULL,0,'2022-12-15 08:30:00'),(211,1,'testTask','renren',0,NULL,0,'2022-12-15 09:00:00'),(212,1,'testTask','renren',0,NULL,0,'2022-12-15 09:30:00'),(213,1,'testTask','renren',0,NULL,1,'2022-12-15 10:00:00'),(214,1,'testTask','renren',0,NULL,1,'2022-12-15 10:30:00'),(215,1,'testTask','renren',0,NULL,0,'2022-12-15 11:00:00'),(216,1,'testTask','renren',0,NULL,0,'2022-12-15 11:30:00'),(217,1,'testTask','renren',0,NULL,1,'2022-12-15 17:30:00'),(218,1,'testTask','renren',0,NULL,2,'2022-12-15 18:00:00'),(219,1,'testTask','renren',0,NULL,0,'2022-12-15 18:30:00'),(220,1,'testTask','renren',0,NULL,1,'2022-12-15 19:00:00'),(221,1,'testTask','renren',0,NULL,1,'2022-12-15 20:07:53'),(222,1,'testTask','renren',0,NULL,1,'2022-12-15 20:30:00'),(223,1,'testTask','renren',0,NULL,1,'2022-12-15 21:00:00'),(224,1,'testTask','renren',0,NULL,0,'2022-12-15 21:30:00'),(225,1,'testTask','renren',0,NULL,1,'2022-12-15 22:00:00'),(226,1,'testTask','renren',0,NULL,0,'2022-12-15 23:00:00'),(227,1,'testTask','renren',0,NULL,0,'2022-12-17 13:00:00'),(228,1,'testTask','renren',0,NULL,0,'2022-12-17 13:30:00'),(229,1,'testTask','renren',0,NULL,0,'2022-12-17 14:00:00'),(230,1,'testTask','renren',0,NULL,0,'2022-12-17 14:30:00'),(231,1,'testTask','renren',0,NULL,1,'2022-12-17 15:00:00'),(232,1,'testTask','renren',0,NULL,0,'2022-12-17 15:30:00'),(233,1,'testTask','renren',0,NULL,0,'2022-12-17 16:00:00'),(234,1,'testTask','renren',0,NULL,1,'2022-12-18 15:30:00'),(235,1,'testTask','renren',0,NULL,2,'2022-12-18 16:00:00'),(236,1,'testTask','renren',0,NULL,0,'2022-12-18 16:30:00'),(237,1,'testTask','renren',0,NULL,0,'2022-12-18 20:30:00'),(238,1,'testTask','renren',0,NULL,0,'2022-12-18 21:00:00'),(239,1,'testTask','renren',0,NULL,0,'2022-12-18 21:30:00'),(240,1,'testTask','renren',0,NULL,0,'2022-12-18 22:00:00'),(241,1,'testTask','renren',0,NULL,0,'2022-12-18 22:30:00'),(242,1,'testTask','renren',0,NULL,0,'2022-12-18 23:00:00'),(243,1,'testTask','renren',0,NULL,0,'2022-12-18 23:30:00'),(244,1,'testTask','renren',0,NULL,6,'2022-12-19 00:00:00'),(245,1,'testTask','renren',0,NULL,0,'2022-12-19 00:30:00'),(246,1,'testTask','renren',0,NULL,0,'2022-12-19 01:00:00'),(247,1,'testTask','renren',0,NULL,1,'2022-12-19 13:30:00'),(248,1,'testTask','renren',0,NULL,1,'2022-12-19 14:00:00'),(249,1,'testTask','renren',0,NULL,0,'2022-12-19 14:30:00'),(250,1,'testTask','renren',0,NULL,0,'2022-12-19 15:00:00'),(251,1,'testTask','renren',0,NULL,1,'2022-12-19 15:30:00'),(252,1,'testTask','renren',0,NULL,1,'2022-12-19 16:00:00'),(253,1,'testTask','renren',0,NULL,0,'2022-12-19 16:30:00'),(254,1,'testTask','renren',0,NULL,0,'2022-12-19 17:00:00'),(255,1,'testTask','renren',0,NULL,0,'2022-12-19 17:30:00'),(256,1,'testTask','renren',0,NULL,1,'2022-12-19 18:00:00'),(257,1,'testTask','renren',0,NULL,0,'2022-12-19 18:30:00'),(258,1,'testTask','renren',0,NULL,0,'2022-12-19 21:00:00'),(259,1,'testTask','renren',0,NULL,1,'2022-12-19 23:00:00'),(260,1,'testTask','renren',0,NULL,0,'2022-12-19 23:30:00'),(261,1,'testTask','renren',0,NULL,2,'2022-12-20 20:00:00'),(262,1,'testTask','renren',0,NULL,1,'2022-12-20 20:30:00'),(263,1,'testTask','renren',0,NULL,1,'2022-12-20 21:00:00'),(264,1,'testTask','renren',0,NULL,0,'2022-12-20 21:30:00'),(265,1,'testTask','renren',0,NULL,1,'2022-12-21 15:00:00'),(266,1,'testTask','renren',0,NULL,0,'2022-12-21 21:00:00'),(267,1,'testTask','renren',0,NULL,1,'2022-12-21 21:30:00'),(268,1,'testTask','renren',0,NULL,1,'2022-12-22 20:00:00'),(269,1,'testTask','renren',0,NULL,1,'2022-12-22 21:00:00'),(270,1,'testTask','renren',0,NULL,0,'2022-12-22 21:30:00'),(271,1,'testTask','renren',0,NULL,0,'2022-12-22 23:00:00'),(272,1,'testTask','renren',0,NULL,0,'2022-12-22 23:30:00'),(273,1,'testTask','renren',0,NULL,9,'2022-12-23 00:00:00'),(274,1,'testTask','renren',0,NULL,0,'2022-12-25 18:30:00'),(275,1,'testTask','renren',0,NULL,1,'2022-12-25 19:00:00'),(276,1,'testTask','renren',0,NULL,1,'2022-12-25 19:30:00'),(277,1,'testTask','renren',0,NULL,2,'2022-12-25 20:00:00'),(278,1,'testTask','renren',0,NULL,0,'2022-12-25 20:30:00'),(279,1,'testTask','renren',0,NULL,0,'2022-12-25 21:30:00'),(280,1,'testTask','renren',0,NULL,1,'2022-12-25 22:00:00'),(281,1,'testTask','renren',0,NULL,1,'2022-12-25 22:30:00'),(282,1,'testTask','renren',0,NULL,0,'2022-12-25 23:00:00'),(283,1,'testTask','renren',0,NULL,0,'2022-12-25 23:30:00'),(284,1,'testTask','renren',0,NULL,6,'2022-12-26 00:00:00'),(285,1,'testTask','renren',0,NULL,0,'2022-12-26 00:30:00'),(286,1,'testTask','renren',0,NULL,0,'2022-12-26 01:00:00'),(287,1,'testTask','renren',0,NULL,0,'2022-12-26 01:30:00'),(288,1,'testTask','renren',0,NULL,1,'2022-12-26 12:30:00'),(289,1,'testTask','renren',0,NULL,1,'2022-12-26 13:00:00'),(290,1,'testTask','renren',0,NULL,1,'2022-12-26 13:30:00'),(291,1,'testTask','renren',0,NULL,1,'2022-12-26 14:00:00'),(292,1,'testTask','renren',0,NULL,0,'2022-12-26 16:30:00'),(293,1,'testTask','renren',0,NULL,0,'2022-12-26 17:00:00'),(294,1,'testTask','renren',0,NULL,0,'2022-12-26 17:30:00'),(295,1,'testTask','renren',0,NULL,0,'2022-12-27 14:00:00'),(296,1,'testTask','renren',0,NULL,1,'2022-12-27 14:30:00'),(297,1,'testTask','renren',0,NULL,0,'2022-12-27 15:00:00'),(298,1,'testTask','renren',0,NULL,1,'2022-12-27 16:00:00'),(299,1,'testTask','renren',0,NULL,0,'2022-12-27 16:30:00'),(300,1,'testTask','renren',0,NULL,2,'2022-12-27 18:00:00'),(301,1,'testTask','renren',0,NULL,1,'2022-12-27 18:30:00'),(302,1,'testTask','renren',0,NULL,0,'2022-12-28 12:30:00'),(303,1,'testTask','renren',0,NULL,1,'2022-12-28 13:00:00'),(304,1,'testTask','renren',0,NULL,0,'2022-12-28 13:30:00'),(305,1,'testTask','renren',0,NULL,0,'2022-12-28 14:00:00'),(306,1,'testTask','renren',0,NULL,1,'2022-12-28 14:30:00'),(307,1,'testTask','renren',0,NULL,1,'2022-12-28 15:00:00'),(308,1,'testTask','renren',0,NULL,1,'2022-12-28 15:30:00'),(309,1,'testTask','renren',0,NULL,0,'2022-12-28 16:00:00'),(310,1,'testTask','renren',0,NULL,1,'2022-12-28 16:30:00'),(311,1,'testTask','renren',0,NULL,0,'2022-12-28 17:00:00'),(312,1,'testTask','renren',0,NULL,0,'2022-12-28 19:00:00'),(313,1,'testTask','renren',0,NULL,0,'2022-12-28 19:30:00'),(314,1,'testTask','renren',0,NULL,1,'2022-12-28 20:00:00'),(315,1,'testTask','renren',0,NULL,0,'2022-12-28 20:30:00'),(316,1,'testTask','renren',0,NULL,0,'2022-12-28 21:00:00'),(317,1,'testTask','renren',0,NULL,1,'2022-12-28 21:30:00'),(318,1,'testTask','renren',0,NULL,0,'2022-12-28 22:00:00'),(319,1,'testTask','renren',0,NULL,0,'2022-12-28 22:30:00'),(320,1,'testTask','renren',0,NULL,1,'2022-12-28 23:00:00'),(321,1,'testTask','renren',0,NULL,0,'2022-12-28 23:30:00'),(322,1,'testTask','renren',0,NULL,14,'2022-12-29 00:00:00'),(323,1,'testTask','renren',0,NULL,1,'2022-12-29 11:30:00'),(324,1,'testTask','renren',0,NULL,0,'2022-12-29 12:00:00'),(325,1,'testTask','renren',0,NULL,1,'2022-12-29 13:00:00'),(326,1,'testTask','renren',0,NULL,0,'2022-12-29 13:30:00'),(327,1,'testTask','renren',0,NULL,0,'2022-12-29 14:00:00'),(328,1,'testTask','renren',0,NULL,2,'2022-12-29 14:30:00'),(329,1,'testTask','renren',0,NULL,0,'2022-12-29 15:00:00'),(330,1,'testTask','renren',0,NULL,0,'2022-12-29 15:30:00'),(331,1,'testTask','renren',0,NULL,0,'2022-12-29 16:00:00'),(332,1,'testTask','renren',0,NULL,0,'2022-12-29 16:30:00'),(333,1,'testTask','renren',0,NULL,1,'2022-12-29 17:00:00'),(334,1,'testTask','renren',0,NULL,7,'2022-12-29 17:30:00'),(335,1,'testTask','renren',0,NULL,1,'2022-12-29 18:00:00'),(336,1,'testTask','renren',0,NULL,1,'2022-12-29 18:30:00'),(337,1,'testTask','renren',0,NULL,2,'2022-12-29 19:00:00'),(338,1,'testTask','renren',0,NULL,0,'2022-12-29 19:30:00'),(339,1,'testTask','renren',0,NULL,1,'2022-12-29 20:00:00'),(340,1,'testTask','renren',0,NULL,0,'2022-12-29 20:30:00'),(341,1,'testTask','renren',0,NULL,0,'2022-12-30 12:30:00'),(342,1,'testTask','renren',0,NULL,0,'2022-12-30 13:00:00'),(343,1,'testTask','renren',0,NULL,1,'2022-12-30 14:30:00'),(344,1,'testTask','renren',0,NULL,0,'2022-12-30 15:00:00'),(345,1,'testTask','renren',0,NULL,1,'2022-12-30 15:30:00'),(346,1,'testTask','renren',0,NULL,0,'2022-12-30 16:00:00'),(347,1,'testTask','renren',0,NULL,0,'2022-12-30 16:30:00'),(348,1,'testTask','renren',0,NULL,1,'2022-12-30 17:00:00'),(349,1,'testTask','renren',0,NULL,1,'2022-12-30 17:30:00'),(350,1,'testTask','renren',0,NULL,0,'2022-12-30 18:00:00'),(351,1,'testTask','renren',0,NULL,1,'2022-12-30 18:30:00'),(352,1,'testTask','renren',0,NULL,1,'2022-12-30 19:00:00'),(353,1,'testTask','renren',0,NULL,1,'2022-12-30 19:30:00'),(354,1,'testTask','renren',0,NULL,1,'2022-12-30 20:00:00'),(355,1,'testTask','renren',0,NULL,0,'2022-12-30 20:30:00'),(356,1,'testTask','renren',0,NULL,2,'2022-12-30 21:00:00'),(357,1,'testTask','renren',0,NULL,0,'2022-12-30 21:30:00'),(358,1,'testTask','renren',0,NULL,0,'2022-12-30 22:00:00'),(359,1,'testTask','renren',0,NULL,1,'2022-12-30 22:30:00'),(360,1,'testTask','renren',0,NULL,0,'2022-12-30 23:00:00');
/*!40000 ALTER TABLE `schedule_job_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `slides`
--

DROP TABLE IF EXISTS `slides`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `slides` (
                          `slides_id` int unsigned NOT NULL AUTO_INCREMENT COMMENT '轮播图ID：',
                          `title` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL COMMENT '标题：',
                          `content` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL COMMENT '内容：',
                          `url` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL COMMENT '链接：',
                          `img` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL COMMENT '轮播图：',
                          `hits` int unsigned NOT NULL DEFAULT '0' COMMENT '点击量：',
                          `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间：',
                          `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间：',
                          PRIMARY KEY (`slides_id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb3 COMMENT='轮播图：';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `slides`
--

LOCK TABLES `slides` WRITE;
/*!40000 ALTER TABLE `slides` DISABLE KEYS */;
INSERT INTO `slides` VALUES (1,'情绪','你的情绪，值得被倾听','rnapxb47a.hn-bkt.clouddn.com/upload/20221225/b61d478d902a4dabae3a3621b0ec4517.jpg','1',0,'2022-12-14 15:15:26','2022-12-25 15:47:21'),(2,'心理咨询','半价心理咨询','rnapxb47a.hn-bkt.clouddn.com/upload/20221225/bdcebb0d29f64b08a6f17e4a2d0dbb8d.jpg','1',0,'2022-12-14 15:15:26','2022-12-25 15:44:28'),(3,'测试','抑郁症测试','rnapxb47a.hn-bkt.clouddn.com/upload/20221225/47007d314f284c3394baac38f6dba5e5.png','1',1,'2022-12-14 15:15:26','2022-12-25 15:44:28'),(4,'1111测试用例','1111','rnapxb47a.hn-bkt.clouddn.com/upload/20221223/2221aabaf68d44bc94fcd1f9589d40f5.jpg','1',0,'2022-12-14 16:34:49','2022-12-29 11:46:34'),(5,'倾听','心理疏导倾听','rnapxb47a.hn-bkt.clouddn.com/upload/20221225/c05e82a59c57490893ba753160469e5c.jpg','1',0,'2022-12-17 08:03:30','2022-12-25 15:44:28'),(6,'心理咨询师','咨询师培训','rnapxb47a.hn-bkt.clouddn.com/upload/20221225/ba83fd448f774c1b8b5b2858a9aee4d8.png','1',0,'2022-12-17 08:04:02','2022-12-25 15:47:07'),(7,'倾听陪伴','1V1倾听','rnapxb47a.hn-bkt.clouddn.com/upload/20221225/39915a90fe3f4a3598bdff6c9ecb2c0d.jpg','1',0,'2022-12-17 08:05:17','2022-12-25 15:44:28');
/*!40000 ALTER TABLE `slides` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_captcha`
--

DROP TABLE IF EXISTS `sys_captcha`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_captcha` (
                               `uuid` char(36) NOT NULL COMMENT 'uuid',
                               `code` varchar(6) NOT NULL COMMENT '验证码',
                               `expire_time` datetime DEFAULT NULL COMMENT '过期时间',
                               PRIMARY KEY (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='系统验证码';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_captcha`
--

LOCK TABLES `sys_captcha` WRITE;
/*!40000 ALTER TABLE `sys_captcha` DISABLE KEYS */;
INSERT INTO `sys_captcha` VALUES ('00fd94e8-d2ce-4f05-8549-5f3bdfcc130b','apwd3','2022-12-01 08:30:31'),('040d0987-5cec-4e8b-8075-40e0b35da733','2p5af','2022-12-19 00:07:11'),('06da3a3d-11a7-4de3-8d8e-616321a51676','4mae2','2022-12-01 00:34:27'),('0a189e80-7426-4a3b-87fe-ef92fa9b6ed7','c73np','2022-12-30 12:54:31'),('0b18af05-a3fd-4dd7-8291-f169cf205fd7','72nbn','2022-12-30 12:54:44'),('0bd0090d-453f-4b86-8966-2469425791d3','wgd3e','2022-12-26 17:27:20'),('0dd33ec0-e5cf-40e5-8cb1-32b6c7f63efd','yeypg','2022-12-25 21:38:41'),('0fca0aa9-460d-45b9-8acf-4b2cec5c234c','nwnng','2022-12-18 16:03:47'),('10532019-185e-449c-81d2-ae370111fe37','4ny82','2022-12-26 01:26:17'),('12e09754-5f94-4c83-8eae-cacc5a820fd8','y3w53','2022-12-30 22:02:48'),('13ccd623-46fc-42e1-82fa-c63779cfec62','cb6d6','2022-12-01 09:13:57'),('1c4aae06-93ca-4214-8dac-7371139fd416','a43aa','2022-12-30 12:55:14'),('1ed564a2-36d5-474c-866f-6d175d05b0ed','4eb3d','2022-12-01 22:53:28'),('1f1e3f1e-494a-4ca7-8c93-be16ffb6cbbb','pn635','2022-12-01 08:39:31'),('20aa20d4-87bd-4305-8a1a-7a2332b2f042','gnf8n','2022-12-26 01:37:39'),('20ff87b9-3933-48e2-8827-ddb26540fc85','fxdb2','2022-12-04 20:04:23'),('23839653-5d44-4c29-8c3c-119d7a57a9e5','5333m','2022-12-01 00:18:11'),('2578a7c2-4b13-49bb-86d1-cc8439727578','n47xm','2022-12-25 21:59:22'),('2587222e-69ec-48cc-8260-f00ffc29016a','c2fae','2022-12-01 08:24:59'),('25fc81cc-952e-4f46-8e48-da15f4b7d10e','mxx73','2022-12-01 08:42:30'),('281021db-3b56-4f42-877c-73671fc98752','bb64e','2022-12-25 22:27:01'),('35e6fb78-df2a-461a-864b-f17a42e12c02','cx57e','2022-12-17 16:15:34'),('4652e658-008b-407e-84c5-0f9bee21bb19','mgm4d','2022-12-01 08:42:33'),('52193873-bf7f-46e4-8dfe-6ae3d68e15a2','ab2n3','2022-12-01 23:18:43'),('62742b27-42b3-456b-84e4-7d7c0779c2ee','md358','2022-12-01 00:34:32'),('66f0a3a6-9372-4b66-86a8-e95aa955fcd7','nwgde','2022-12-19 00:10:10'),('6730c681-3057-4df4-8a28-db2efe18a518','mcn4e','2022-12-18 15:39:45'),('7154e395-d3af-40ef-8155-306718d128e3','8n5ya','2022-12-03 20:34:46'),('75c6dad4-2e9a-4e8b-8fe8-f31a9f1ebc83','cpegc','2022-12-01 08:42:39'),('7dbc5bff-a49e-4bb7-8a93-fc7e3d0df946','8y2g8','2022-12-01 08:39:41'),('87a878cb-706f-4404-8cac-d6e13f10b668','x63xw','2022-12-18 16:04:34'),('87f938dd-98ec-498e-8399-1259cbe6b638','be3ge','2022-12-06 17:04:18'),('883165fb-4872-4e72-839e-0cc2f914d06e','3px8n','2022-12-30 12:38:34'),('8ad4fe97-b886-4f10-8707-cbd771c87111','pb6c5','2022-12-01 00:36:05'),('8ae2bc88-db49-4f47-8e18-20aaba5877d3','cgbnp','2022-12-01 00:36:00'),('8afb1573-f72f-45bf-80a9-dc1d53f873c6','3geep','2022-12-06 16:04:28'),('8b1e5405-46f3-44cf-84d7-ad4376cd066c','y46pa','2022-12-01 09:14:17'),('8f82cf6c-e36f-4940-8269-d6676884e7a2','e37g4','2022-12-15 01:04:50'),('9418c7b6-c8c4-42d5-87d3-d3ee4a6dbf95','44ygn','2022-12-26 12:25:06'),('94df1ec9-ad2c-42f5-866e-eec8a1ea1551','mf7mn','2022-12-04 20:02:29'),('96c70d4d-337b-484e-8c21-af7f3df5f639','23a35','2022-12-25 22:35:08'),('97e53dc6-1b8d-44a9-8650-ebb61066c11e','5ym7g','2022-12-25 20:04:19'),('9ca89079-586b-4277-8910-5b90e9ce12c9','2ye3f','2022-12-01 08:42:15'),('a0f02d09-9d8d-4a6d-8b71-86d21d55492c','p7dcd','2020-10-06 10:05:31'),('a4bab134-63be-4ae7-8f29-a738c4f828a4','7wd2b','2022-12-30 12:52:39'),('a517547b-27cb-4051-8690-8498435c954c','aacep','2022-12-01 00:36:02'),('ae85795a-a6fd-4630-8e0c-870900b239d1','4nnxe','2022-12-19 00:07:09'),('afa37063-c737-445f-8e0c-3e6df5be479c','cy73a','2022-12-30 12:56:48'),('b23ecddd-1525-4833-84f2-2190ec79ca9f','a4486','2022-12-25 20:12:25'),('b2ddb744-c84c-4e73-86c9-c9a81f03de28','a3xwn','2022-12-29 19:33:37'),('b9adfef4-b793-4a85-857c-38b275c1b026','4fn83','2022-12-01 08:29:58'),('c1132728-c532-4a8b-8d8c-0450ae032f2f','2b738','2022-12-17 13:58:31'),('c2f55eed-3fae-472a-8d4f-ba75df2f31a4','dn36a','2022-12-30 12:53:28'),('c4cd4331-2221-4c43-8ed4-be49d248eb0f','e8mmn','2022-12-31 14:22:06'),('c8243639-c1b2-4aa6-8e2d-23b929611e8d','4m5we','2022-12-04 20:02:20'),('cc6a1bfb-fff8-4139-8eb0-beacb7433313','753mn','2022-12-30 22:02:51'),('cd0f1a46-1125-4400-860c-ef1676fd0525','nep3y','2022-12-01 08:17:50'),('ceaf468b-d40f-4190-8f63-a54ad3d46618','ad4m4','2022-12-01 00:33:00'),('cf3fb561-34fb-456b-88fb-75f19c7749d3','pxna4','2022-12-01 00:32:38'),('d04af1dd-8238-4981-8ee9-00274af80a12','xne3c','2022-12-18 15:32:22'),('d2b6bab4-ce72-4a2e-88de-435442c291c1','255dg','2022-12-01 00:26:20'),('ed08e890-882b-4e8e-89c8-fd3cc7e9a4af','a66nb','2022-12-29 19:35:57'),('ed29a85f-37d1-43d3-830f-be22fc9a288d','26p7g','2022-12-13 14:42:45'),('efde571e-0b5e-4e06-8516-18bec27f19ff','fnny7','2022-12-01 00:24:53'),('f243fe03-09a1-44b0-830d-53e9d11e1ebf','4xng8','2022-12-30 22:02:32'),('f2e3c25c-eb5d-43fe-8163-c1daf69bfab1','n4agm','2022-12-01 08:17:38'),('f41d9590-ccdc-4eb2-8627-a33279240a3b','edf34','2022-12-01 09:14:04'),('f69be589-ab55-458f-8e78-13cdd0a76b48','efyyw','2022-12-30 12:55:05'),('fd9a4584-24e7-48f2-80a8-c5ae99e7a628','ny3p6','2022-12-01 00:32:42'),('fef9b3e3-3e55-4b82-88f8-309d4782243b','w34p8','2022-12-22 22:54:17');
/*!40000 ALTER TABLE `sys_captcha` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_config`
--

DROP TABLE IF EXISTS `sys_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_config` (
                              `id` bigint NOT NULL AUTO_INCREMENT,
                              `param_key` varchar(50) DEFAULT NULL COMMENT 'key',
                              `param_value` varchar(2000) DEFAULT NULL COMMENT 'value',
                              `status` tinyint DEFAULT '1' COMMENT '状态   0：隐藏   1：显示',
                              `remark` varchar(500) DEFAULT NULL COMMENT '备注',
                              PRIMARY KEY (`id`),
                              UNIQUE KEY `param_key` (`param_key`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='系统配置信息表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_config`
--

LOCK TABLES `sys_config` WRITE;
/*!40000 ALTER TABLE `sys_config` DISABLE KEYS */;
INSERT INTO `sys_config` VALUES (1,'CLOUD_STORAGE_CONFIG_KEY','{\"type\":1,\"qiniuDomain\":\"rnapxb47a.hn-bkt.clouddn.com\",\"qiniuPrefix\":\"upload\",\"qiniuAccessKey\":\"amrPQqh3K_8luUMjxswvQNHHdbsDfhdMTrnuMDjx\",\"qiniuSecretKey\":\"W-8BUpniqre79qNZQ6uj6nN2L7scI72kmpJug-OJ\",\"qiniuBucketName\":\"dxs-xinli\",\"aliyunDomain\":\"\",\"aliyunPrefix\":\"\",\"aliyunEndPoint\":\"\",\"aliyunAccessKeyId\":\"\",\"aliyunAccessKeySecret\":\"\",\"aliyunBucketName\":\"\",\"qcloudDomain\":\"\",\"qcloudPrefix\":\"\",\"qcloudSecretId\":\"\",\"qcloudSecretKey\":\"\",\"qcloudBucketName\":\"\"}',0,'云存储配置信息');
/*!40000 ALTER TABLE `sys_config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_log`
--

DROP TABLE IF EXISTS `sys_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_log` (
                           `id` bigint NOT NULL AUTO_INCREMENT,
                           `username` varchar(50) DEFAULT NULL COMMENT '用户名',
                           `operation` varchar(50) DEFAULT NULL COMMENT '用户操作',
                           `method` varchar(200) DEFAULT NULL COMMENT '请求方法',
                           `params` varchar(5000) DEFAULT NULL COMMENT '请求参数',
                           `time` bigint NOT NULL COMMENT '执行时长(毫秒)',
                           `ip` varchar(64) DEFAULT NULL COMMENT 'IP地址',
                           `create_date` datetime DEFAULT NULL COMMENT '创建时间',
                           PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=308 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='系统日志';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_log`
--

LOCK TABLES `sys_log` WRITE;
/*!40000 ALTER TABLE `sys_log` DISABLE KEYS */;
INSERT INTO `sys_log` VALUES (1,'admin','删除菜单','io.renren.modules.sys.controller.SysMenuController.delete()','[30]',0,'0:0:0:0:0:0:0:1','2022-10-05 15:46:45'),(2,'admin','保存角色','io.renren.modules.sys.controller.SysRoleController.save()','[{\"roleId\":1,\"roleName\":\"普通用户\",\"remark\":\"普通权限\",\"createUserId\":1,\"menuIdList\":[-666666],\"createTime\":\"Oct 5, 2020 3:48:22 PM\"}]',298,'0:0:0:0:0:0:0:1','2022-10-05 15:48:23'),(3,'admin','保存角色','io.renren.modules.sys.controller.SysRoleController.save()','[{\"roleId\":2,\"roleName\":\"管理员\",\"remark\":\"超级管理员\",\"createUserId\":1,\"menuIdList\":[1,2,15,16,17,18,3,19,20,21,22,4,23,24,25,26,5,6,7,8,9,10,11,12,13,14,27,29,30,-666666],\"createTime\":\"Oct 5, 2020 3:48:48 PM\"}]',399,'0:0:0:0:0:0:0:1','2022-10-05 15:48:49'),(4,'admin','修改用户','io.renren.modules.sys.controller.SysUserController.update()','[{\"userId\":1,\"username\":\"admin\",\"password\":\"9ec9750e709431dad22365cabc5c625482e574c74adaebba7dd02f1129e4ce1d\",\"salt\":\"YzcmCZNvbXocrsz9dm8e\",\"email\":\"admin@163.com\",\"mobile\":\"13612345678\",\"status\":1,\"roleIdList\":[2],\"createUserId\":1}]',81,'0:0:0:0:0:0:0:1','2022-10-05 15:49:28'),(5,'admin','保存菜单','io.renren.modules.sys.controller.SysMenuController.save()','[{\"menuId\":31,\"parentId\":0,\"name\":\"图书管理\",\"url\":\"\",\"perms\":\"\",\"type\":0,\"icon\":\"zonghe\",\"orderNum\":0}]',54,'0:0:0:0:0:0:0:1','2022-10-05 15:59:26'),(6,'admin','修改菜单','io.renren.modules.sys.controller.SysMenuController.update()','[{\"menuId\":31,\"parentId\":0,\"name\":\"图书管理\",\"url\":\"\",\"perms\":\"\",\"type\":0,\"icon\":\"zonghe\",\"orderNum\":1}]',20,'0:0:0:0:0:0:0:1','2022-10-05 16:00:07'),(7,'admin','修改菜单','io.renren.modules.sys.controller.SysMenuController.update()','[{\"menuId\":1,\"parentId\":0,\"name\":\"系统管理\",\"type\":0,\"icon\":\"system\",\"orderNum\":5}]',12,'0:0:0:0:0:0:0:1','2022-10-05 16:00:22'),(8,'admin','保存菜单','io.renren.modules.sys.controller.SysMenuController.save()','[{\"menuId\":32,\"parentId\":31,\"name\":\"图书上架\",\"url\":\"/book/add\",\"perms\":\"\",\"type\":1,\"icon\":\"bianji\",\"orderNum\":2}]',10,'0:0:0:0:0:0:0:1','2022-10-05 16:03:08'),(9,'admin','保存菜单','io.renren.modules.sys.controller.SysMenuController.save()','[{\"menuId\":33,\"parentId\":31,\"name\":\"图书列表\",\"url\":\"/book/list\",\"perms\":\"\",\"type\":1,\"icon\":\"menu\",\"orderNum\":0}]',15,'0:0:0:0:0:0:0:1','2022-10-05 16:05:43'),(10,'admin','修改菜单','io.renren.modules.sys.controller.SysMenuController.update()','[{\"menuId\":34,\"parentId\":31,\"name\":\"1\",\"url\":\"book/bizbook\",\"type\":1,\"icon\":\"config\",\"orderNum\":6}]',34,'0:0:0:0:0:0:0:1','2022-10-05 20:22:29'),(11,'admin','修改菜单','io.renren.modules.sys.controller.SysMenuController.update()','[{\"menuId\":39,\"parentId\":0,\"name\":\"借阅管理\",\"url\":\"book/bizbrrow\",\"type\":1,\"icon\":\"config\",\"orderNum\":6}]',14,'0:0:0:0:0:0:0:1','2022-10-05 20:24:38'),(12,'admin','修改菜单','io.renren.modules.sys.controller.SysMenuController.update()','[{\"menuId\":33,\"parentId\":31,\"name\":\"图书列表\",\"url\":\"/book/bizbook\",\"perms\":\"\",\"type\":1,\"icon\":\"menu\",\"orderNum\":0}]',30,'0:0:0:0:0:0:0:1','2022-10-05 21:00:49'),(13,'admin','删除菜单','io.renren.modules.sys.controller.SysMenuController.delete()','[39]',8,'0:0:0:0:0:0:0:1','2022-10-05 21:01:19'),(14,'admin','删除菜单','io.renren.modules.sys.controller.SysMenuController.delete()','[40]',138,'0:0:0:0:0:0:0:1','2022-10-05 21:01:31'),(15,'admin','删除菜单','io.renren.modules.sys.controller.SysMenuController.delete()','[43]',33,'0:0:0:0:0:0:0:1','2022-10-05 21:01:40'),(16,'admin','删除菜单','io.renren.modules.sys.controller.SysMenuController.delete()','[42]',32,'0:0:0:0:0:0:0:1','2022-10-05 21:01:49'),(17,'admin','删除菜单','io.renren.modules.sys.controller.SysMenuController.delete()','[41]',38,'0:0:0:0:0:0:0:1','2022-10-05 21:01:57'),(18,'admin','删除菜单','io.renren.modules.sys.controller.SysMenuController.delete()','[39]',31,'0:0:0:0:0:0:0:1','2022-10-05 21:02:03'),(19,'admin','删除菜单','io.renren.modules.sys.controller.SysMenuController.delete()','[34]',7,'0:0:0:0:0:0:0:1','2022-10-05 21:02:15'),(20,'admin','删除菜单','io.renren.modules.sys.controller.SysMenuController.delete()','[35]',37,'0:0:0:0:0:0:0:1','2022-10-05 21:02:22'),(21,'admin','删除菜单','io.renren.modules.sys.controller.SysMenuController.delete()','[36]',33,'0:0:0:0:0:0:0:1','2022-10-05 21:02:35'),(22,'admin','删除菜单','io.renren.modules.sys.controller.SysMenuController.delete()','[37]',26,'0:0:0:0:0:0:0:1','2022-10-05 21:02:45'),(23,'admin','删除菜单','io.renren.modules.sys.controller.SysMenuController.delete()','[38]',29,'0:0:0:0:0:0:0:1','2022-10-05 21:02:53'),(24,'admin','删除菜单','io.renren.modules.sys.controller.SysMenuController.delete()','[34]',38,'0:0:0:0:0:0:0:1','2022-10-05 21:03:00'),(25,'admin','修改菜单','io.renren.modules.sys.controller.SysMenuController.update()','[{\"menuId\":33,\"parentId\":31,\"name\":\"图书列表\",\"url\":\"book/bizbook\",\"perms\":\"\",\"type\":1,\"icon\":\"menu\",\"orderNum\":0}]',19,'0:0:0:0:0:0:0:1','2022-10-05 21:03:28'),(26,'admin','删除菜单','io.renren.modules.sys.controller.SysMenuController.delete()','[32]',40,'0:0:0:0:0:0:0:1','2022-10-05 21:06:24'),(27,'admin','修改菜单','io.renren.modules.sys.controller.SysMenuController.update()','[{\"menuId\":33,\"parentId\":31,\"name\":\"书籍管理\",\"url\":\"book/bizbook\",\"perms\":\"\",\"type\":1,\"icon\":\"menu\",\"orderNum\":0}]',17,'0:0:0:0:0:0:0:1','2022-10-05 21:07:02'),(28,'admin','保存菜单','io.renren.modules.sys.controller.SysMenuController.save()','[{\"menuId\":44,\"parentId\":33,\"name\":\"添加\",\"url\":\"\",\"perms\":\"\",\"type\":2,\"icon\":\"\",\"orderNum\":0}]',23,'0:0:0:0:0:0:0:1','2022-10-05 21:07:55'),(29,'admin','修改菜单','io.renren.modules.sys.controller.SysMenuController.update()','[{\"menuId\":44,\"parentId\":33,\"name\":\"添加\",\"url\":\"\",\"perms\":\"book:bizbook:list\",\"type\":2,\"icon\":\"\",\"orderNum\":0}]',15,'0:0:0:0:0:0:0:1','2022-10-05 21:09:29'),(30,'admin','修改菜单','io.renren.modules.sys.controller.SysMenuController.update()','[{\"menuId\":46,\"parentId\":33,\"name\":\"查看\",\"perms\":\"book:bizbook:list,book:bizbook:info\",\"type\":2,\"orderNum\":6}]',18,'0:0:0:0:0:0:0:1','2022-10-05 21:14:55'),(31,'admin','修改菜单','io.renren.modules.sys.controller.SysMenuController.update()','[{\"menuId\":45,\"parentId\":0,\"name\":\"书籍管理\",\"url\":\"book/bizbook\",\"type\":1,\"icon\":\"config\",\"orderNum\":6}]',15,'0:0:0:0:0:0:0:1','2022-10-05 21:15:55'),(32,'admin','删除菜单','io.renren.modules.sys.controller.SysMenuController.delete()','[49]',25,'0:0:0:0:0:0:0:1','2022-10-05 21:17:31'),(33,'admin','删除菜单','io.renren.modules.sys.controller.SysMenuController.delete()','[48]',34,'0:0:0:0:0:0:0:1','2022-10-05 21:17:39'),(34,'admin','删除菜单','io.renren.modules.sys.controller.SysMenuController.delete()','[47]',27,'0:0:0:0:0:0:0:1','2022-10-05 21:17:47'),(35,'admin','删除菜单','io.renren.modules.sys.controller.SysMenuController.delete()','[45]',30,'0:0:0:0:0:0:0:1','2022-10-05 21:17:59'),(36,'admin','保存菜单','io.renren.modules.sys.controller.SysMenuController.save()','[{\"menuId\":50,\"parentId\":33,\"name\":\"修改\",\"url\":\"\",\"perms\":\"book:bizbook:update\",\"type\":2,\"icon\":\"\",\"orderNum\":0}]',25,'0:0:0:0:0:0:0:1','2022-10-05 21:18:42'),(37,'admin','保存菜单','io.renren.modules.sys.controller.SysMenuController.save()','[{\"menuId\":51,\"parentId\":33,\"name\":\"删除\",\"url\":\"\",\"perms\":\"book:bizbook:delete\",\"type\":2,\"icon\":\"\",\"orderNum\":0}]',10,'0:0:0:0:0:0:0:1','2022-10-05 21:19:25'),(38,'admin','修改菜单','io.renren.modules.sys.controller.SysMenuController.update()','[{\"menuId\":44,\"parentId\":33,\"name\":\"添加\",\"url\":\"\",\"perms\":\"book:bizbook:add\",\"type\":2,\"icon\":\"\",\"orderNum\":0}]',16,'0:0:0:0:0:0:0:1','2022-10-05 21:20:36'),(39,'admin','修改菜单','io.renren.modules.sys.controller.SysMenuController.update()','[{\"menuId\":51,\"parentId\":33,\"name\":\"删除\",\"url\":\"\",\"perms\":\"book:bizbook:delete\",\"type\":2,\"icon\":\"\",\"orderNum\":0}]',14,'0:0:0:0:0:0:0:1','2022-10-05 21:20:56'),(40,'admin','删除菜单','io.renren.modules.sys.controller.SysMenuController.delete()','[51]',25,'0:0:0:0:0:0:0:1','2022-10-05 21:21:05'),(41,'admin','删除菜单','io.renren.modules.sys.controller.SysMenuController.delete()','[50]',24,'0:0:0:0:0:0:0:1','2022-10-05 21:21:15'),(42,'admin','删除菜单','io.renren.modules.sys.controller.SysMenuController.delete()','[46]',18,'0:0:0:0:0:0:0:1','2022-10-05 21:21:24'),(43,'admin','删除菜单','io.renren.modules.sys.controller.SysMenuController.delete()','[44]',24,'0:0:0:0:0:0:0:1','2022-10-05 21:21:35'),(44,'admin','删除菜单','io.renren.modules.sys.controller.SysMenuController.delete()','[33]',31,'0:0:0:0:0:0:0:1','2022-10-05 21:21:44'),(45,'admin','修改菜单','io.renren.modules.sys.controller.SysMenuController.update()','[{\"menuId\":52,\"parentId\":31,\"name\":\"书籍管理\",\"url\":\"book/bizbook\",\"type\":1,\"icon\":\"config\",\"orderNum\":6}]',16,'0:0:0:0:0:0:0:1','2022-10-05 21:22:58'),(46,'admin','保存菜单','io.renren.modules.sys.controller.SysMenuController.save()','[{\"menuId\":57,\"parentId\":0,\"name\":\"借阅管理\",\"url\":\"\",\"perms\":\"\",\"type\":0,\"icon\":\"job\",\"orderNum\":0}]',11,'0:0:0:0:0:0:0:1','2022-10-05 21:24:25'),(47,'admin','修改菜单','io.renren.modules.sys.controller.SysMenuController.update()','[{\"menuId\":57,\"parentId\":0,\"name\":\"借阅管理\",\"url\":\"\",\"perms\":\"\",\"type\":0,\"icon\":\"job\",\"orderNum\":2}]',13,'0:0:0:0:0:0:0:1','2022-10-05 21:24:55'),(48,'admin','保存菜单','io.renren.modules.sys.controller.SysMenuController.save()','[{\"menuId\":58,\"parentId\":57,\"name\":\"借阅管理\",\"url\":\"brrow/bizbrrow\",\"perms\":\"\",\"type\":1,\"icon\":\"bianji\",\"orderNum\":0}]',13,'0:0:0:0:0:0:0:1','2022-10-05 21:26:44'),(49,'admin','删除菜单','io.renren.modules.sys.controller.SysMenuController.delete()','[58]',91,'0:0:0:0:0:0:0:1','2022-10-05 21:27:56'),(50,'admin','修改菜单','io.renren.modules.sys.controller.SysMenuController.update()','[{\"menuId\":59,\"parentId\":57,\"name\":\"借阅管理\",\"url\":\"book/bizbrrow\",\"type\":1,\"icon\":\"config\",\"orderNum\":6}]',29,'0:0:0:0:0:0:0:1','2022-10-05 21:28:20'),(51,'admin','修改菜单','io.renren.modules.sys.controller.SysMenuController.update()','[{\"menuId\":59,\"parentId\":57,\"name\":\"借阅管理\",\"url\":\"brrow/bizbrrow\",\"type\":1,\"icon\":\"config\",\"orderNum\":6}]',17,'0:0:0:0:0:0:0:1','2022-10-05 21:29:51'),(52,'admin','保存菜单','io.renren.modules.sys.controller.SysMenuController.save()','[{\"menuId\":64,\"parentId\":57,\"name\":\"图书借阅\",\"url\":\"brrow/book-brrow\",\"perms\":\"\",\"type\":1,\"icon\":\"mudedi\",\"orderNum\":0}]',19,'0:0:0:0:0:0:0:1','2022-10-06 10:51:08'),(53,'admin','修改角色','io.renren.modules.sys.controller.SysRoleController.update()','[{\"roleId\":1,\"roleName\":\"普通用户\",\"remark\":\"普通权限\",\"createUserId\":1,\"menuIdList\":[3,19,20,21,22,64,-666666,1,57]}]',341,'0:0:0:0:0:0:0:1','2022-10-07 19:05:38'),(54,'admin','保存用户','io.renren.modules.sys.controller.SysUserController.save()','[{\"userId\":2,\"username\":\"normal\",\"password\":\"a6beab8a75829d05a7788b5bfed1c99d6f14c6256bf3ddbae7170d86ce949932\",\"salt\":\"ufbKxFHbCEtWoAP1a4pc\",\"email\":\"normal@163.com\",\"mobile\":\"17679082788\",\"status\":1,\"roleIdList\":[1],\"createUserId\":1,\"createTime\":\"Oct 7, 2020 7:06:41 PM\"}]',105,'0:0:0:0:0:0:0:1','2022-10-07 19:06:42'),(55,'admin','保存菜单','io.renren.modules.sys.controller.SysMenuController.save()','[{\"menuId\":65,\"parentId\":57,\"name\":\"归还图书\",\"url\":\"brrow/book-return\",\"perms\":\"\",\"type\":1,\"icon\":\"tubiao\",\"orderNum\":3}]',23,'0:0:0:0:0:0:0:1','2022-10-07 21:08:26'),(56,'admin','保存菜单','io.renren.modules.sys.controller.SysMenuController.save()','[{\"menuId\":66,\"parentId\":0,\"name\":\"个人信息\",\"url\":\"\",\"perms\":\"\",\"type\":0,\"icon\":\"admin\",\"orderNum\":3}]',7,'0:0:0:0:0:0:0:1','2022-11-30 22:29:02'),(57,'admin','保存菜单','io.renren.modules.sys.controller.SysMenuController.save()','[{\"menuId\":67,\"parentId\":66,\"name\":\"我的信息\",\"url\":\"/homepage/homepage\",\"perms\":\"\",\"type\":1,\"icon\":\"admin\",\"orderNum\":0}]',13,'0:0:0:0:0:0:0:1','2022-11-30 22:29:47'),(58,'admin','保存菜单','io.renren.modules.sys.controller.SysMenuController.save()','[{\"menuId\":68,\"parentId\":66,\"name\":\"我的测评结果\",\"url\":\"/homepage/partivipating\",\"perms\":\"\",\"type\":1,\"icon\":\"editor\",\"orderNum\":1}]',8,'0:0:0:0:0:0:0:1','2022-11-30 22:31:35'),(59,'admin','保存菜单','io.renren.modules.sys.controller.SysMenuController.save()','[{\"menuId\":69,\"parentId\":0,\"name\":\"相关问题\",\"url\":\"/homepage/problem\",\"perms\":\"\",\"type\":1,\"icon\":\"sousuo\",\"orderNum\":6}]',4,'0:0:0:0:0:0:0:1','2022-11-30 22:32:25'),(60,'admin','删除菜单','io.renren.modules.sys.controller.SysMenuController.delete()','[31]',0,'0:0:0:0:0:0:0:1','2022-11-30 22:33:50'),(61,'admin','删除菜单','io.renren.modules.sys.controller.SysMenuController.delete()','[31]',0,'0:0:0:0:0:0:0:1','2022-11-30 22:34:01'),(62,'admin','删除菜单','io.renren.modules.sys.controller.SysMenuController.delete()','[52]',1,'0:0:0:0:0:0:0:1','2022-11-30 22:34:06'),(63,'admin','删除菜单','io.renren.modules.sys.controller.SysMenuController.delete()','[57]',1,'0:0:0:0:0:0:0:1','2022-11-30 22:34:16'),(64,'admin','删除菜单','io.renren.modules.sys.controller.SysMenuController.delete()','[64]',19,'0:0:0:0:0:0:0:1','2022-11-30 22:34:19'),(65,'admin','删除菜单','io.renren.modules.sys.controller.SysMenuController.delete()','[65]',15,'0:0:0:0:0:0:0:1','2022-11-30 22:34:29'),(66,'admin','删除菜单','io.renren.modules.sys.controller.SysMenuController.delete()','[63]',15,'0:0:0:0:0:0:0:1','2022-11-30 22:34:42'),(67,'admin','删除菜单','io.renren.modules.sys.controller.SysMenuController.delete()','[62]',20,'0:0:0:0:0:0:0:1','2022-11-30 22:34:50'),(68,'admin','删除菜单','io.renren.modules.sys.controller.SysMenuController.delete()','[60]',14,'0:0:0:0:0:0:0:1','2022-11-30 22:35:01'),(69,'admin','删除菜单','io.renren.modules.sys.controller.SysMenuController.delete()','[59]',2,'0:0:0:0:0:0:0:1','2022-11-30 22:35:07'),(70,'admin','删除菜单','io.renren.modules.sys.controller.SysMenuController.delete()','[59]',1,'0:0:0:0:0:0:0:1','2022-11-30 22:35:11'),(71,'admin','删除菜单','io.renren.modules.sys.controller.SysMenuController.delete()','[61]',15,'0:0:0:0:0:0:0:1','2022-11-30 22:35:15'),(72,'admin','删除菜单','io.renren.modules.sys.controller.SysMenuController.delete()','[59]',15,'0:0:0:0:0:0:0:1','2022-11-30 22:35:22'),(73,'admin','删除菜单','io.renren.modules.sys.controller.SysMenuController.delete()','[57]',16,'0:0:0:0:0:0:0:1','2022-11-30 22:35:26'),(74,'admin','删除菜单','io.renren.modules.sys.controller.SysMenuController.delete()','[52]',0,'0:0:0:0:0:0:0:1','2022-11-30 22:35:33'),(75,'admin','删除菜单','io.renren.modules.sys.controller.SysMenuController.delete()','[56]',15,'0:0:0:0:0:0:0:1','2022-11-30 22:35:42'),(76,'admin','删除菜单','io.renren.modules.sys.controller.SysMenuController.delete()','[55]',14,'0:0:0:0:0:0:0:1','2022-11-30 22:35:48'),(77,'admin','删除菜单','io.renren.modules.sys.controller.SysMenuController.delete()','[54]',20,'0:0:0:0:0:0:0:1','2022-11-30 22:36:02'),(78,'admin','删除菜单','io.renren.modules.sys.controller.SysMenuController.delete()','[53]',16,'0:0:0:0:0:0:0:1','2022-11-30 22:36:11'),(79,'admin','删除菜单','io.renren.modules.sys.controller.SysMenuController.delete()','[52]',15,'0:0:0:0:0:0:0:1','2022-11-30 22:36:16'),(80,'admin','删除菜单','io.renren.modules.sys.controller.SysMenuController.delete()','[31]',0,'0:0:0:0:0:0:0:1','2022-11-30 22:36:20'),(81,'admin','修改菜单','io.renren.modules.sys.controller.SysMenuController.update()','[{\"menuId\":31,\"parentId\":0,\"name\":\"心理疏导\",\"url\":\"\",\"perms\":\"\",\"type\":0,\"icon\":\"zonghe\",\"orderNum\":1}]',13,'0:0:0:0:0:0:0:1','2022-11-30 22:37:07'),(82,'admin','保存菜单','io.renren.modules.sys.controller.SysMenuController.save()','[{\"menuId\":70,\"parentId\":66,\"name\":\"我的预约信息\",\"url\":\"/homepage\",\"perms\":\"partivipating\",\"type\":1,\"icon\":\"oss\",\"orderNum\":2}]',13,'0:0:0:0:0:0:0:1','2022-11-30 22:38:51'),(83,'admin','修改菜单','io.renren.modules.sys.controller.SysMenuController.update()','[{\"menuId\":70,\"parentId\":66,\"name\":\"我的预约信息\",\"url\":\"/homepage/partivipating\",\"perms\":\"\",\"type\":1,\"icon\":\"oss\",\"orderNum\":2}]',8,'0:0:0:0:0:0:0:1','2022-11-30 22:39:29'),(84,'admin','修改菜单','io.renren.modules.sys.controller.SysMenuController.update()','[{\"menuId\":70,\"parentId\":66,\"name\":\"我的预约信息\",\"url\":\"/homepage/appointment\",\"perms\":\"\",\"type\":1,\"icon\":\"oss\",\"orderNum\":2}]',13,'0:0:0:0:0:0:0:1','2022-11-30 22:40:37'),(85,'admin','保存菜单','io.renren.modules.sys.controller.SysMenuController.save()','[{\"menuId\":71,\"parentId\":1,\"name\":\"日志\",\"url\":\"/job/schedule\",\"perms\":\"\",\"type\":1,\"icon\":\"config\",\"orderNum\":4}]',14,'0:0:0:0:0:0:0:1','2022-11-30 22:55:05'),(86,'admin','立即执行任务','io.renren.modules.job.controller.ScheduleJobController.run()','[[1]]',18,'0:0:0:0:0:0:0:1','2022-11-30 23:08:09'),(87,'admin','立即执行任务','io.renren.modules.job.controller.ScheduleJobController.run()','[[1]]',8,'0:0:0:0:0:0:0:1','2022-11-30 23:08:19'),(88,'admin','修改菜单','io.renren.modules.sys.controller.SysMenuController.update()','[{\"menuId\":7,\"parentId\":2,\"name\":\"查看\",\"perms\":\"sys:schedule:list,sys:schedule:info\",\"type\":2,\"orderNum\":0}]',13,'0:0:0:0:0:0:0:1','2022-11-30 23:10:27'),(89,'admin','修改菜单','io.renren.modules.sys.controller.SysMenuController.update()','[{\"menuId\":14,\"parentId\":71,\"name\":\"日志列表\",\"perms\":\"sys:schedule:log\",\"type\":2,\"orderNum\":0}]',14,'0:0:0:0:0:0:0:1','2022-11-30 23:10:36'),(90,'admin','修改菜单','io.renren.modules.sys.controller.SysMenuController.update()','[{\"menuId\":13,\"parentId\":71,\"name\":\"立即执行\",\"perms\":\"sys:schedule:run\",\"type\":2,\"orderNum\":0}]',14,'0:0:0:0:0:0:0:1','2022-11-30 23:10:52'),(91,'admin','修改菜单','io.renren.modules.sys.controller.SysMenuController.update()','[{\"menuId\":13,\"parentId\":71,\"name\":\"立即执行\",\"perms\":\"sys:schedule:run\",\"type\":2,\"orderNum\":0}]',2,'0:0:0:0:0:0:0:1','2022-11-30 23:10:54'),(92,'admin','修改菜单','io.renren.modules.sys.controller.SysMenuController.update()','[{\"menuId\":12,\"parentId\":71,\"name\":\"恢复\",\"perms\":\"sys:schedule:resume\",\"type\":2,\"orderNum\":0}]',10,'0:0:0:0:0:0:0:1','2022-11-30 23:11:09'),(93,'admin','修改菜单','io.renren.modules.sys.controller.SysMenuController.update()','[{\"menuId\":11,\"parentId\":71,\"name\":\"暂停\",\"perms\":\"sys:schedule:pause\",\"type\":2,\"orderNum\":0}]',13,'0:0:0:0:0:0:0:1','2022-11-30 23:11:18'),(94,'admin','立即执行任务','io.renren.modules.job.controller.ScheduleJobController.run()','[[1]]',16,'0:0:0:0:0:0:0:1','2022-11-30 23:11:30'),(95,'admin','立即执行任务','io.renren.modules.job.controller.ScheduleJobController.run()','[[1]]',7,'0:0:0:0:0:0:0:1','2022-11-30 23:11:36'),(96,'admin','删除定时任务','io.renren.modules.job.controller.ScheduleJobController.delete()','[[1]]',21,'0:0:0:0:0:0:0:1','2022-11-30 23:11:41'),(97,'admin','修改菜单','io.renren.modules.sys.controller.SysMenuController.update()','[{\"menuId\":7,\"parentId\":2,\"name\":\"查看\",\"perms\":\"sys:schedule:list,sys:schedule:info\",\"type\":2,\"orderNum\":0}]',4,'0:0:0:0:0:0:0:1','2022-11-30 23:15:53'),(98,'admin','修改菜单','io.renren.modules.sys.controller.SysMenuController.update()','[{\"menuId\":7,\"parentId\":71,\"name\":\"查看\",\"perms\":\"sys:schedule:list,sys:schedule:info\",\"type\":2,\"orderNum\":0}]',13,'0:0:0:0:0:0:0:1','2022-11-30 23:16:03'),(99,'admin','修改菜单','io.renren.modules.sys.controller.SysMenuController.update()','[{\"menuId\":8,\"parentId\":71,\"name\":\"新增\",\"perms\":\"sys:schedule:save\",\"type\":2,\"orderNum\":0}]',26,'0:0:0:0:0:0:0:1','2022-11-30 23:16:28'),(100,'admin','修改菜单','io.renren.modules.sys.controller.SysMenuController.update()','[{\"menuId\":9,\"parentId\":71,\"name\":\"修改\",\"perms\":\"sys:schedule:update\",\"type\":2,\"orderNum\":0}]',12,'0:0:0:0:0:0:0:1','2022-11-30 23:16:34'),(101,'admin','修改菜单','io.renren.modules.sys.controller.SysMenuController.update()','[{\"menuId\":10,\"parentId\":71,\"name\":\"删除\",\"perms\":\"sys:schedule:delete\",\"type\":2,\"orderNum\":0}]',13,'0:0:0:0:0:0:0:1','2022-11-30 23:16:43'),(102,'admin','修改菜单','io.renren.modules.sys.controller.SysMenuController.update()','[{\"menuId\":2,\"parentId\":1,\"name\":\"用户列表\",\"url\":\"sys/user\",\"type\":1,\"icon\":\"admin\",\"orderNum\":1}]',17,'0:0:0:0:0:0:0:1','2022-11-30 23:35:15'),(103,'admin','保存菜单','io.renren.modules.sys.controller.SysMenuController.save()','[{\"menuId\":72,\"parentId\":1,\"name\":\"用户日志\",\"url\":\"/sys/log\",\"perms\":\"\",\"type\":1,\"icon\":\"config\",\"orderNum\":3}]',12,'0:0:0:0:0:0:0:1','2022-11-30 23:45:48'),(104,'admin','修改菜单','io.renren.modules.sys.controller.SysMenuController.update()','[{\"menuId\":71,\"parentId\":1,\"name\":\"定时任务日志\",\"url\":\"/job/schedule\",\"perms\":\"\",\"type\":1,\"icon\":\"config\",\"orderNum\":4}]',5,'0:0:0:0:0:0:0:1','2022-11-30 23:47:30'),(105,'admin','修改菜单','io.renren.modules.sys.controller.SysMenuController.update()','[{\"menuId\":72,\"parentId\":1,\"name\":\"系统日志\",\"url\":\"/sys/log\",\"perms\":\"\",\"type\":1,\"icon\":\"config\",\"orderNum\":4}]',14,'0:0:0:0:0:0:0:1','2022-11-30 23:48:05'),(106,'admin','保存菜单','io.renren.modules.sys.controller.SysMenuController.save()','[{\"menuId\":73,\"parentId\":72,\"name\":\"查看\",\"perms\":\"sys:log:list,sys:log:info\",\"type\":2,\"orderNum\":0}]',13,'0:0:0:0:0:0:0:1','2022-11-30 23:51:53'),(107,'admin','修改菜单','io.renren.modules.sys.controller.SysMenuController.update()','[{\"menuId\":67,\"parentId\":0,\"name\":\"我的信息\",\"url\":\"/homepage/homepage\",\"perms\":\"\",\"type\":1,\"icon\":\"admin\",\"orderNum\":0}]',5,'0:0:0:0:0:0:0:1','2022-11-30 23:56:12'),(108,'admin','删除菜单','io.renren.modules.sys.controller.SysMenuController.delete()','[68]',9,'0:0:0:0:0:0:0:1','2022-11-30 23:56:19'),(109,'admin','删除菜单','io.renren.modules.sys.controller.SysMenuController.delete()','[70]',14,'0:0:0:0:0:0:0:1','2022-11-30 23:56:24'),(110,'admin','删除菜单','io.renren.modules.sys.controller.SysMenuController.delete()','[66]',15,'0:0:0:0:0:0:0:1','2022-11-30 23:56:29'),(111,'admin','修改菜单','io.renren.modules.sys.controller.SysMenuController.update()','[{\"menuId\":67,\"parentId\":0,\"name\":\"我的信息\",\"url\":\"/homepage/homepage\",\"perms\":\"\",\"type\":1,\"icon\":\"admin\",\"orderNum\":3}]',13,'0:0:0:0:0:0:0:1','2022-11-30 23:56:34'),(112,'admin','修改菜单','io.renren.modules.sys.controller.SysMenuController.update()','[{\"menuId\":52,\"parentId\":31,\"name\":\"心理医生\",\"url\":\"book/bizbook\",\"type\":1,\"icon\":\"config\",\"orderNum\":6}]',14,'0:0:0:0:0:0:0:1','2022-12-01 09:21:11'),(113,'admin','修改菜单','io.renren.modules.sys.controller.SysMenuController.update()','[{\"menuId\":57,\"parentId\":0,\"name\":\"心理测评\",\"url\":\"\",\"perms\":\"\",\"type\":0,\"icon\":\"job\",\"orderNum\":2}]',12,'0:0:0:0:0:0:0:1','2022-12-01 09:21:27'),(114,'admin','修改菜单','io.renren.modules.sys.controller.SysMenuController.update()','[{\"menuId\":59,\"parentId\":57,\"name\":\"心理医生预约\",\"url\":\"brrow/bizbrrow\",\"type\":1,\"icon\":\"config\",\"orderNum\":6}]',13,'0:0:0:0:0:0:0:1','2022-12-01 09:21:51'),(115,'admin','修改菜单','io.renren.modules.sys.controller.SysMenuController.update()','[{\"menuId\":64,\"parentId\":57,\"name\":\"心理测评\",\"url\":\"brrow/book-brrow\",\"perms\":\"\",\"type\":1,\"icon\":\"mudedi\",\"orderNum\":0}]',11,'0:0:0:0:0:0:0:1','2022-12-01 09:22:01'),(116,'admin','修改菜单','io.renren.modules.sys.controller.SysMenuController.update()','[{\"menuId\":65,\"parentId\":57,\"name\":\"我的测评\",\"url\":\"brrow/book-return\",\"perms\":\"\",\"type\":1,\"icon\":\"tubiao\",\"orderNum\":3}]',13,'0:0:0:0:0:0:0:1','2022-12-01 09:22:12'),(117,'admin','修改菜单','io.renren.modules.sys.controller.SysMenuController.update()','[{\"menuId\":52,\"parentId\":31,\"name\":\"心理医生\",\"url\":\"/licy-views/Doctor\",\"type\":1,\"icon\":\"config\",\"orderNum\":6}]',13,'0:0:0:0:0:0:0:1','2022-12-01 09:39:57'),(118,'admin','修改菜单','io.renren.modules.sys.controller.SysMenuController.update()','[{\"menuId\":64,\"parentId\":57,\"name\":\"心理测评\",\"url\":\"/licy-views/Test\",\"perms\":\"\",\"type\":1,\"icon\":\"mudedi\",\"orderNum\":0}]',6,'0:0:0:0:0:0:0:1','2022-12-01 09:41:09'),(119,'admin','修改菜单','io.renren.modules.sys.controller.SysMenuController.update()','[{\"menuId\":59,\"parentId\":31,\"name\":\"心理医生预约\",\"url\":\"brrow/bizbrrow\",\"type\":1,\"icon\":\"config\",\"orderNum\":6}]',5,'0:0:0:0:0:0:0:1','2022-12-01 09:42:57'),(120,'admin','保存菜单','io.renren.modules.sys.controller.SysMenuController.save()','[{\"menuId\":74,\"parentId\":31,\"name\":\"心理讲座\",\"url\":\"/licy-views/Chair\",\"perms\":\"\",\"type\":1,\"icon\":\"tixing\",\"orderNum\":0}]',13,'0:0:0:0:0:0:0:1','2022-12-01 09:44:13'),(121,'admin','修改菜单','io.renren.modules.sys.controller.SysMenuController.update()','[{\"menuId\":52,\"parentId\":31,\"name\":\"心理医生\",\"url\":\"/licy-views/Doctor\",\"type\":1,\"icon\":\"geren\",\"orderNum\":6}]',13,'0:0:0:0:0:0:0:1','2022-12-01 09:44:36'),(122,'admin','修改菜单','io.renren.modules.sys.controller.SysMenuController.update()','[{\"menuId\":59,\"parentId\":31,\"name\":\"心理医生预约\",\"url\":\"brrow/bizbrrow\",\"type\":1,\"icon\":\"zhedie\",\"orderNum\":6}]',5,'0:0:0:0:0:0:0:1','2022-12-01 09:45:02'),(123,'admin','保存菜单','io.renren.modules.sys.controller.SysMenuController.save()','[{\"menuId\":75,\"parentId\":31,\"name\":\"心理知识\",\"url\":\"/licy-views/Knowledge\",\"perms\":\"\",\"type\":1,\"icon\":\"log\",\"orderNum\":0}]',13,'0:0:0:0:0:0:0:1','2022-12-01 09:46:43'),(124,'admin','保存菜单','io.renren.modules.sys.controller.SysMenuController.save()','[{\"menuId\":76,\"parentId\":0,\"name\":\"心事圈\",\"url\":\"\",\"perms\":\"\",\"type\":0,\"icon\":\"xiangqu\",\"orderNum\":3}]',4,'0:0:0:0:0:0:0:1','2022-12-01 09:47:53'),(125,'admin','修改菜单','io.renren.modules.sys.controller.SysMenuController.update()','[{\"menuId\":67,\"parentId\":0,\"name\":\"我的信息\",\"url\":\"/homepage/homepage\",\"perms\":\"\",\"type\":1,\"icon\":\"admin\",\"orderNum\":4}]',13,'0:0:0:0:0:0:0:1','2022-12-01 09:47:59'),(126,'admin','保存菜单','io.renren.modules.sys.controller.SysMenuController.save()','[{\"menuId\":77,\"parentId\":76,\"name\":\"心事圈\",\"url\":\"/licy-views/Message\",\"perms\":\"\",\"type\":1,\"icon\":\"xiangqufill\",\"orderNum\":0}]',5,'0:0:0:0:0:0:0:1','2022-12-01 09:48:43'),(127,'admin','保存菜单','io.renren.modules.sys.controller.SysMenuController.save()','[{\"menuId\":78,\"parentId\":76,\"name\":\"我的心事\",\"url\":\"/licy-views/Mine\",\"perms\":\"\",\"type\":1,\"icon\":\"shoucang\",\"orderNum\":0}]',4,'0:0:0:0:0:0:0:1','2022-12-01 09:49:29'),(128,'admin','删除菜单','io.renren.modules.sys.controller.SysMenuController.delete()','[78]',9,'0:0:0:0:0:0:0:1','2022-12-01 09:51:23'),(129,'admin','修改菜单','io.renren.modules.sys.controller.SysMenuController.update()','[{\"menuId\":77,\"parentId\":0,\"name\":\"心事圈\",\"url\":\"/licy-views/Message\",\"perms\":\"\",\"type\":1,\"icon\":\"xiangqufill\",\"orderNum\":0}]',4,'0:0:0:0:0:0:0:1','2022-12-01 09:51:33'),(130,'admin','删除菜单','io.renren.modules.sys.controller.SysMenuController.delete()','[76]',14,'0:0:0:0:0:0:0:1','2022-12-01 09:51:39'),(131,'admin','修改菜单','io.renren.modules.sys.controller.SysMenuController.update()','[{\"menuId\":77,\"parentId\":0,\"name\":\"心事圈\",\"url\":\"/licy-views/Message\",\"perms\":\"\",\"type\":1,\"icon\":\"xiangqufill\",\"orderNum\":3}]',11,'0:0:0:0:0:0:0:1','2022-12-01 09:51:49'),(132,'admin','保存菜单','io.renren.modules.sys.controller.SysMenuController.save()','[{\"menuId\":79,\"parentId\":67,\"name\":\"查找\",\"url\":\"\",\"perms\":\"user\",\"type\":2,\"icon\":\"\",\"orderNum\":0}]',16,'0:0:0:0:0:0:0:1','2022-12-01 10:46:28'),(133,'admin','修改菜单','io.renren.modules.sys.controller.SysMenuController.update()','[{\"menuId\":79,\"parentId\":67,\"name\":\"查找\",\"url\":\"\",\"perms\":\"user:user:list\",\"type\":2,\"icon\":\"\",\"orderNum\":0}]',13,'0:0:0:0:0:0:0:1','2022-12-01 10:46:56'),(134,'admin','修改菜单','io.renren.modules.sys.controller.SysMenuController.update()','[{\"menuId\":79,\"parentId\":67,\"name\":\"查找\",\"url\":\"\",\"perms\":\"user:user:list,user:user:info\",\"type\":2,\"icon\":\"\",\"orderNum\":0}]',6,'0:0:0:0:0:0:0:1','2022-12-01 10:47:23'),(135,'admin','修改菜单','io.renren.modules.sys.controller.SysMenuController.update()','[{\"menuId\":79,\"parentId\":67,\"name\":\"查找\",\"url\":\"\",\"perms\":\"sys:user:list,sys:user:info\",\"type\":2,\"icon\":\"\",\"orderNum\":0}]',5,'0:0:0:0:0:0:0:1','2022-12-01 10:48:10'),(136,'admin','修改菜单','io.renren.modules.sys.controller.SysMenuController.update()','[{\"menuId\":79,\"parentId\":67,\"name\":\"查找\",\"url\":\"\",\"perms\":\"sys:user:list,sys:user:info\",\"type\":2,\"icon\":\"\",\"orderNum\":0}]',3,'0:0:0:0:0:0:0:1','2022-12-01 10:59:37'),(137,'admin','保存菜单','io.renren.modules.sys.controller.SysMenuController.save()','[{\"menuId\":80,\"parentId\":0,\"name\":\"oss\",\"url\":\"/oss/oss\",\"perms\":\"\",\"type\":1,\"icon\":\"shouye\",\"orderNum\":0}]',17,'0:0:0:0:0:0:0:1','2022-12-01 22:22:21'),(138,'admin','保存菜单','io.renren.modules.sys.controller.SysMenuController.save()','[{\"menuId\":81,\"parentId\":80,\"name\":\"查找\",\"url\":\"\",\"perms\":\"sys:oss:list\",\"type\":2,\"icon\":\"\",\"orderNum\":0}]',13,'0:0:0:0:0:0:0:1','2022-12-01 22:32:45'),(139,'admin','保存菜单','io.renren.modules.sys.controller.SysMenuController.save()','[{\"menuId\":82,\"parentId\":0,\"name\":\"心理疏导管理\",\"url\":\"\",\"perms\":\"\",\"type\":0,\"icon\":\"shezhi\",\"orderNum\":5}]',11,'0:0:0:0:0:0:0:1','2022-12-03 19:47:54'),(140,'admin','修改菜单','io.renren.modules.sys.controller.SysMenuController.update()','[{\"menuId\":1,\"parentId\":0,\"name\":\"系统管理\",\"type\":0,\"icon\":\"system\",\"orderNum\":7}]',9,'0:0:0:0:0:0:0:1','2022-12-03 19:48:04'),(141,'admin','修改菜单','io.renren.modules.sys.controller.SysMenuController.update()','[{\"menuId\":69,\"parentId\":0,\"name\":\"相关问题\",\"url\":\"/homepage/problem\",\"perms\":\"\",\"type\":1,\"icon\":\"sousuo\",\"orderNum\":8}]',13,'0:0:0:0:0:0:0:1','2022-12-03 19:48:11'),(142,'admin','保存菜单','io.renren.modules.sys.controller.SysMenuController.save()','[{\"menuId\":83,\"parentId\":0,\"name\":\"心理测评管理\",\"type\":0,\"icon\":\"system\",\"orderNum\":6}]',13,'0:0:0:0:0:0:0:1','2022-12-03 19:48:36'),(143,'admin','保存菜单','io.renren.modules.sys.controller.SysMenuController.save()','[{\"menuId\":84,\"parentId\":82,\"name\":\"预约管理\",\"url\":\"/brrow/bizbrrow\",\"perms\":\"\",\"type\":1,\"icon\":\"zhedie\",\"orderNum\":0}]',13,'0:0:0:0:0:0:0:1','2022-12-03 20:10:16'),(144,'admin','删除菜单','io.renren.modules.sys.controller.SysMenuController.delete()','[83]',20,'0:0:0:0:0:0:0:1','2022-12-03 20:13:17'),(145,'admin','修改菜单','io.renren.modules.sys.controller.SysMenuController.update()','[{\"menuId\":82,\"parentId\":0,\"name\":\"心理管理\",\"url\":\"\",\"perms\":\"\",\"type\":0,\"icon\":\"shezhi\",\"orderNum\":5}]',12,'0:0:0:0:0:0:0:1','2022-12-03 20:13:23'),(146,'admin','修改菜单','io.renren.modules.sys.controller.SysMenuController.update()','[{\"menuId\":80,\"parentId\":0,\"name\":\"oss\",\"url\":\"/oss/oss\",\"perms\":\"\",\"type\":1,\"icon\":\"shouye\",\"orderNum\":6}]',13,'0:0:0:0:0:0:0:1','2022-12-03 20:13:41'),(147,'admin','保存菜单','io.renren.modules.sys.controller.SysMenuController.save()','[{\"menuId\":85,\"parentId\":0,\"name\":\"测评管理\",\"url\":\"//\",\"perms\":\"\",\"type\":1,\"icon\":\"zhedie\",\"orderNum\":1}]',12,'0:0:0:0:0:0:0:1','2022-12-03 20:37:19'),(148,'admin','修改菜单','io.renren.modules.sys.controller.SysMenuController.update()','[{\"menuId\":85,\"parentId\":82,\"name\":\"测评管理\",\"url\":\"//\",\"perms\":\"\",\"type\":1,\"icon\":\"zhedie\",\"orderNum\":1}]',14,'0:0:0:0:0:0:0:1','2022-12-03 20:37:29'),(149,'admin','删除菜单','io.renren.modules.sys.controller.SysMenuController.delete()','[53]',15,'0:0:0:0:0:0:0:1','2022-12-03 20:38:37'),(150,'admin','删除菜单','io.renren.modules.sys.controller.SysMenuController.delete()','[54]',7,'0:0:0:0:0:0:0:1','2022-12-03 20:38:48'),(151,'admin','删除菜单','io.renren.modules.sys.controller.SysMenuController.delete()','[59]',14,'0:0:0:0:0:0:0:1','2022-12-03 20:40:34'),(152,'admin','修改菜单','io.renren.modules.sys.controller.SysMenuController.update()','[{\"menuId\":84,\"parentId\":82,\"name\":\"预约管理\",\"url\":\"//\",\"perms\":\"\",\"type\":1,\"icon\":\"zhedie\",\"orderNum\":0}]',5,'0:0:0:0:0:0:0:1','2022-12-03 20:41:05'),(153,'admin','修改菜单','io.renren.modules.sys.controller.SysMenuController.update()','[{\"menuId\":85,\"parentId\":82,\"name\":\"测评管理\",\"url\":\"/brrow/bizbrrow\",\"perms\":\"\",\"type\":1,\"icon\":\"zhedie\",\"orderNum\":1}]',4,'0:0:0:0:0:0:0:1','2022-12-03 20:41:13'),(154,'admin','修改菜单','io.renren.modules.sys.controller.SysMenuController.update()','[{\"menuId\":60,\"parentId\":85,\"name\":\"查看\",\"perms\":\"book:bizbrrow:list,book:bizbrrow:info\",\"type\":2,\"orderNum\":6}]',15,'0:0:0:0:0:0:0:1','2022-12-03 20:46:09'),(155,'admin','修改菜单','io.renren.modules.sys.controller.SysMenuController.update()','[{\"menuId\":61,\"parentId\":85,\"name\":\"新增\",\"perms\":\"book:bizbrrow:save\",\"type\":2,\"orderNum\":6}]',13,'0:0:0:0:0:0:0:1','2022-12-03 20:46:21'),(156,'admin','修改菜单','io.renren.modules.sys.controller.SysMenuController.update()','[{\"menuId\":62,\"parentId\":85,\"name\":\"修改\",\"perms\":\"book:bizbrrow:update\",\"type\":2,\"orderNum\":6}]',20,'0:0:0:0:0:0:0:1','2022-12-03 20:46:27'),(157,'admin','修改菜单','io.renren.modules.sys.controller.SysMenuController.update()','[{\"menuId\":63,\"parentId\":85,\"name\":\"删除\",\"perms\":\"book:bizbrrow:delete\",\"type\":2,\"orderNum\":6}]',8,'0:0:0:0:0:0:0:1','2022-12-03 20:46:36'),(158,'admin','修改菜单','io.renren.modules.sys.controller.SysMenuController.update()','[{\"menuId\":85,\"parentId\":82,\"name\":\"测评管理\",\"url\":\"/brrow/bizbrrow\",\"perms\":\"\",\"type\":0,\"icon\":\"zhedie\",\"orderNum\":1}]',5,'0:0:0:0:0:0:0:1','2022-12-03 20:48:58'),(159,'admin','保存菜单','io.renren.modules.sys.controller.SysMenuController.save()','[{\"menuId\":86,\"parentId\":82,\"name\":\"测评问卷管理\",\"url\":\"/brrow/bizbrrow\",\"perms\":\"\",\"type\":1,\"icon\":\"config\",\"orderNum\":1}]',13,'0:0:0:0:0:0:0:1','2022-12-03 20:49:37'),(160,'admin','修改菜单','io.renren.modules.sys.controller.SysMenuController.update()','[{\"menuId\":86,\"parentId\":85,\"name\":\"测评问卷管理\",\"url\":\"/brrow/bizbrrow\",\"perms\":\"\",\"type\":1,\"icon\":\"config\",\"orderNum\":1}]',13,'0:0:0:0:0:0:0:1','2022-12-03 20:49:49'),(161,'admin','修改菜单','io.renren.modules.sys.controller.SysMenuController.update()','[{\"menuId\":85,\"parentId\":82,\"name\":\"测评管理\",\"url\":\"\",\"perms\":\"\",\"type\":0,\"icon\":\"zhedie\",\"orderNum\":1}]',13,'0:0:0:0:0:0:0:1','2022-12-03 20:52:44'),(162,'admin','修改菜单','io.renren.modules.sys.controller.SysMenuController.update()','[{\"menuId\":86,\"parentId\":85,\"name\":\"测评问卷管理\",\"url\":\"book/bizbook\",\"perms\":\"\",\"type\":1,\"icon\":\"config\",\"orderNum\":1}]',14,'0:0:0:0:0:0:0:1','2022-12-03 20:53:23'),(163,'admin','保存菜单','io.renren.modules.sys.controller.SysMenuController.save()','[{\"menuId\":87,\"parentId\":85,\"name\":\"用户测评管理\",\"url\":\"brrow/bizbrrow\",\"perms\":\"\",\"type\":1,\"icon\":\"zhedie\",\"orderNum\":0}]',13,'0:0:0:0:0:0:0:1','2022-12-03 20:54:26'),(164,'admin','修改菜单','io.renren.modules.sys.controller.SysMenuController.update()','[{\"menuId\":86,\"parentId\":85,\"name\":\"测评问卷管理\",\"url\":\"book/bizbook\",\"perms\":\"\",\"type\":1,\"icon\":\"config\",\"orderNum\":0}]',14,'0:0:0:0:0:0:0:1','2022-12-03 20:56:33'),(165,'admin','修改菜单','io.renren.modules.sys.controller.SysMenuController.update()','[{\"menuId\":87,\"parentId\":85,\"name\":\"用户测评管理\",\"url\":\"brrow/bizbrrow\",\"perms\":\"\",\"type\":1,\"icon\":\"zhedie\",\"orderNum\":1}]',8,'0:0:0:0:0:0:0:1','2022-12-03 20:56:42'),(166,'admin','修改菜单','io.renren.modules.sys.controller.SysMenuController.update()','[{\"menuId\":85,\"parentId\":82,\"name\":\"测评管理\",\"url\":\"\",\"perms\":\"\",\"type\":0,\"icon\":\"tubiao\",\"orderNum\":1}]',5,'0:0:0:0:0:0:0:1','2022-12-03 20:57:01'),(167,'admin','修改菜单','io.renren.modules.sys.controller.SysMenuController.update()','[{\"menuId\":85,\"parentId\":82,\"name\":\"测评管理\",\"url\":\"\",\"perms\":\"\",\"type\":0,\"icon\":\"zhedie\",\"orderNum\":1}]',5,'0:0:0:0:0:0:0:1','2022-12-03 20:57:31'),(168,'admin','修改菜单','io.renren.modules.sys.controller.SysMenuController.update()','[{\"menuId\":87,\"parentId\":85,\"name\":\"用户测评管理\",\"url\":\"brrow/bizbrrow\",\"perms\":\"\",\"type\":1,\"icon\":\"tubiao\",\"orderNum\":1}]',5,'0:0:0:0:0:0:0:1','2022-12-03 20:57:47'),(169,'admin','保存菜单','io.renren.modules.sys.controller.SysMenuController.save()','[{\"menuId\":88,\"parentId\":57,\"name\":\"xxx\",\"url\":\"borrow/book-brrow\",\"perms\":\"\",\"type\":1,\"icon\":\"\",\"orderNum\":3}]',6,'0:0:0:0:0:0:0:1','2022-12-03 21:26:18'),(170,'admin','修改菜单','io.renren.modules.sys.controller.SysMenuController.update()','[{\"menuId\":88,\"parentId\":57,\"name\":\"xxx\",\"url\":\"brrow/book-brrow\",\"perms\":\"\",\"type\":1,\"icon\":\"\",\"orderNum\":3}]',13,'0:0:0:0:0:0:0:1','2022-12-03 21:27:03'),(171,'admin','保存菜单','io.renren.modules.sys.controller.SysMenuController.save()','[{\"menuId\":89,\"parentId\":0,\"name\":\"轮播图管理\",\"url\":\"\",\"perms\":\"\",\"type\":0,\"icon\":\"shezhi\",\"orderNum\":6}]',11,'0:0:0:0:0:0:0:1','2022-12-14 23:44:57'),(172,'admin','修改菜单','io.renren.modules.sys.controller.SysMenuController.update()','[{\"menuId\":80,\"parentId\":0,\"name\":\"oss\",\"url\":\"/oss/oss\",\"perms\":\"\",\"type\":1,\"icon\":\"shouye\",\"orderNum\":7}]',8,'0:0:0:0:0:0:0:1','2022-12-14 23:45:13'),(173,'admin','修改菜单','io.renren.modules.sys.controller.SysMenuController.update()','[{\"menuId\":89,\"parentId\":0,\"name\":\"轮播图管理\",\"url\":\"/slides/slides\",\"perms\":\"\",\"type\":1,\"icon\":\"shezhi\",\"orderNum\":6}]',4,'0:0:0:0:0:0:0:1','2022-12-14 23:46:07'),(174,'RZ','修改密码','io.renren.modules.sys.controller.SysUserController.password()','[{\"password\":\"admin\",\"newPassword\":\"202630\"}]',8,'0:0:0:0:0:0:0:1','2022-12-17 15:28:10'),(175,'admin','删除用户','io.renren.modules.sys.controller.SysUserController.delete()','[[5]]',11,'0:0:0:0:0:0:0:1','2022-12-17 15:33:39'),(176,'admin','修改菜单','io.renren.modules.sys.controller.SysMenuController.update()','[{\"menuId\":82,\"parentId\":0,\"name\":\"前端管理\",\"url\":\"\",\"perms\":\"\",\"type\":0,\"icon\":\"shezhi\",\"orderNum\":5}]',6,'0:0:0:0:0:0:0:1','2022-12-17 16:06:56'),(177,'admin','修改菜单','io.renren.modules.sys.controller.SysMenuController.update()','[{\"menuId\":89,\"parentId\":82,\"name\":\"轮播图管理\",\"url\":\"/slides/slides\",\"perms\":\"\",\"type\":1,\"icon\":\"shezhi\",\"orderNum\":6}]',5,'0:0:0:0:0:0:0:1','2022-12-17 16:07:04'),(178,'admin','修改菜单','io.renren.modules.sys.controller.SysMenuController.update()','[{\"menuId\":85,\"parentId\":82,\"name\":\"测评管理\",\"url\":\"\",\"perms\":\"\",\"type\":0,\"icon\":\"zhedie\",\"orderNum\":1}]',2,'0:0:0:0:0:0:0:1','2022-12-17 16:07:24'),(179,'admin','修改菜单','io.renren.modules.sys.controller.SysMenuController.update()','[{\"menuId\":84,\"parentId\":82,\"name\":\"预约管理\",\"url\":\"//\",\"perms\":\"\",\"type\":1,\"icon\":\"tixing\",\"orderNum\":0}]',5,'0:0:0:0:0:0:0:1','2022-12-17 16:07:31'),(180,'admin','修改菜单','io.renren.modules.sys.controller.SysMenuController.update()','[{\"menuId\":89,\"parentId\":82,\"name\":\"轮播图管理\",\"url\":\"/slides/slides\",\"perms\":\"\",\"type\":1,\"icon\":\"daohang\",\"orderNum\":6}]',6,'0:0:0:0:0:0:0:1','2022-12-17 16:17:18'),(181,'admin','保存菜单','io.renren.modules.sys.controller.SysMenuController.save()','[{\"menuId\":90,\"parentId\":0,\"name\":\"1\",\"url\":\"11\",\"perms\":\"11\",\"type\":1,\"icon\":\"system\",\"orderNum\":0}]',6,'0:0:0:0:0:0:0:1','2022-12-18 15:38:56'),(182,'admin','删除菜单','io.renren.modules.sys.controller.SysMenuController.delete()','[90]',23,'0:0:0:0:0:0:0:1','2022-12-18 15:39:13'),(183,'admin','保存菜单','io.renren.modules.sys.controller.SysMenuController.save()','[{\"menuId\":91,\"parentId\":82,\"name\":\"公告管理\",\"url\":\"/notice/notice\",\"perms\":\"\",\"type\":1,\"icon\":\"duanxin\",\"orderNum\":3}]',10,'0:0:0:0:0:0:0:1','2022-12-18 20:47:41'),(184,'admin','修改菜单','io.renren.modules.sys.controller.SysMenuController.update()','[{\"menuId\":89,\"parentId\":82,\"name\":\"轮播图管理\",\"url\":\"/slides/slides\",\"perms\":\"\",\"type\":1,\"icon\":\"daohang\",\"orderNum\":2}]',7,'0:0:0:0:0:0:0:1','2022-12-18 20:47:56'),(185,'admin','修改菜单','io.renren.modules.sys.controller.SysMenuController.update()','[{\"menuId\":82,\"parentId\":0,\"name\":\"前台管理\",\"url\":\"\",\"perms\":\"\",\"type\":0,\"icon\":\"shezhi\",\"orderNum\":5}]',10,'0:0:0:0:0:0:0:1','2022-12-19 00:12:49'),(186,'admin','修改菜单','io.renren.modules.sys.controller.SysMenuController.update()','[{\"menuId\":84,\"parentId\":82,\"name\":\"预约管理\",\"url\":\"//\",\"perms\":\"\",\"type\":0,\"icon\":\"tixing\",\"orderNum\":0}]',8,'0:0:0:0:0:0:0:1','2022-12-25 19:24:14'),(187,'admin','修改菜单','io.renren.modules.sys.controller.SysMenuController.update()','[{\"menuId\":84,\"parentId\":82,\"name\":\"预约管理\",\"url\":\"\",\"perms\":\"\",\"type\":0,\"icon\":\"tixing\",\"orderNum\":0}]',5,'0:0:0:0:0:0:0:1','2022-12-25 19:24:26'),(188,'admin','保存菜单','io.renren.modules.sys.controller.SysMenuController.save()','[{\"menuId\":92,\"parentId\":82,\"name\":\"心理医生管理\",\"url\":\"/doctor/doctor\",\"perms\":\"\",\"type\":1,\"icon\":\"geren\",\"orderNum\":0}]',8,'0:0:0:0:0:0:0:1','2022-12-25 19:42:06'),(189,'admin','保存用户','io.renren.modules.sys.controller.SysUserController.save()','[{\"userId\":9,\"username\":\"川师第一深情、\",\"password\":\"f4c743c148aa18c8b423b3afb8534a62a5986614397748b99a193d021fee0d9f\",\"salt\":\"bJDydBKzKx1UQn00E5Vp\",\"email\":\"58276034@qq.com\",\"mobile\":\"18981632470\",\"roleIdList\":[1],\"createUserId\":1,\"createTime\":\"Dec 25, 2022 8:08:07 PM\",\"name\":\"任真\",\"shenfenzheng\":\"513128200206300019\",\"head\":\"http://rnapxb47a.hn-bkt.clouddn.com/upload/20221225/7ec13b9da0d9452fa668e962acf97770.png\"}]',40,'0:0:0:0:0:0:0:1','2022-12-25 20:08:08'),(190,'admin','修改用户','io.renren.modules.sys.controller.SysUserController.update()','[{\"email\":\"admin@163.com\",\"mobile\":\"13612345678\",\"createUserId\":1,\"jianjie\":\"无\",\"bingshi\":\"无\"}]',6,'0:0:0:0:0:0:0:1','2022-12-25 20:36:06'),(191,'admin','修改用户','io.renren.modules.sys.controller.SysUserController.update()','[{\"email\":\"admin@163.com\",\"mobile\":\"13612345678\",\"createUserId\":1,\"jianjie\":\"1\",\"bingshi\":\"11\"}]',2,'0:0:0:0:0:0:0:1','2022-12-25 20:36:43'),(192,'admin','修改用户','io.renren.modules.sys.controller.SysUserController.update()','[{\"email\":\"admin@163.com\",\"mobile\":\"13612345678\",\"createUserId\":1,\"jianjie\":\"1\",\"bingshi\":\"11\"}]',4,'0:0:0:0:0:0:0:1','2022-12-25 20:36:45'),(193,'admin','修改用户','io.renren.modules.sys.controller.SysUserController.update()','[{\"email\":\"admin@163.com\",\"mobile\":\"13612345678\",\"createUserId\":1,\"jianjie\":\"无\",\"bingshi\":\"无\"}]',3,'0:0:0:0:0:0:0:1','2022-12-25 20:38:40'),(194,'admin','修改用户','io.renren.modules.sys.controller.SysUserController.update()','[{\"email\":\"admin@163.com\",\"mobile\":\"13612345678\",\"createUserId\":1,\"jianjie\":\"无\",\"bingshi\":\"无\"}]',4,'0:0:0:0:0:0:0:1','2022-12-25 20:41:02'),(195,'admin','修改用户','io.renren.modules.sys.controller.SysUserController.update()','[{\"email\":\"admin@163.com\",\"mobile\":\"13612345678\",\"createUserId\":1}]',2,'0:0:0:0:0:0:0:1','2022-12-25 20:45:19'),(196,'admin','修改用户','io.renren.modules.sys.controller.SysUserController.update()','[{\"username\":\"川师第一深情\",\"salt\":\"bJDydBKzKx1UQn00E5Vp\",\"email\":\"58276034@qq.com\",\"mobile\":\"18981632470\",\"status\":1,\"roleIdList\":[1],\"createUserId\":1}]',9,'0:0:0:0:0:0:0:1','2022-12-25 20:49:06'),(197,'admin','修改用户','io.renren.modules.sys.controller.SysUserController.update()','[{\"username\":\"川师第一深情\",\"salt\":\"bJDydBKzKx1UQn00E5Vp\",\"email\":\"58276034@qq.com\",\"mobile\":\"18981632470\",\"status\":1,\"roleIdList\":[1],\"createUserId\":1}]',9,'0:0:0:0:0:0:0:1','2022-12-25 20:49:42'),(198,'admin','修改用户','io.renren.modules.sys.controller.SysUserController.update()','[{\"username\":\"川师第一深情\",\"salt\":\"bJDydBKzKx1UQn00E5Vp\",\"email\":\"58276034@qq.com\",\"mobile\":\"18981632470\",\"status\":1,\"roleIdList\":[1],\"createUserId\":1}]',43,'0:0:0:0:0:0:0:1','2022-12-25 20:50:33'),(199,'admin','修改用户','io.renren.modules.sys.controller.SysUserController.update()','[{\"username\":\"川师第一深情\",\"salt\":\"bJDydBKzKx1UQn00E5Vp\",\"email\":\"58276034@qq.com\",\"mobile\":\"18981632470\",\"status\":1,\"roleIdList\":[1],\"createUserId\":1}]',9,'0:0:0:0:0:0:0:1','2022-12-25 20:51:58'),(200,'admin','修改用户','io.renren.modules.sys.controller.SysUserController.update()','[{\"email\":\"admin@163.com\",\"mobile\":\"13612345678\",\"createUserId\":1}]',8,'0:0:0:0:0:0:0:1','2022-12-25 20:53:59'),(201,'admin','修改用户','io.renren.modules.sys.controller.SysUserController.update()','[{\"email\":\"admin@163.com\",\"mobile\":\"13612345679\",\"createUserId\":1}]',3,'0:0:0:0:0:0:0:1','2022-12-25 20:55:05'),(202,'admin','修改用户','io.renren.modules.sys.controller.SysUserController.update()','[{\"email\":\"admin@163.com\",\"mobile\":\"13612345677\",\"createUserId\":1}]',40,'0:0:0:0:0:0:0:1','2022-12-25 20:56:13'),(203,'admin','修改用户','io.renren.modules.sys.controller.SysUserController.update()','[{\"email\":\"admin@163.com\",\"mobile\":\"13612345677\",\"createUserId\":1}]',39,'0:0:0:0:0:0:0:1','2022-12-25 20:57:34'),(204,'admin','修改用户','io.renren.modules.sys.controller.SysUserController.update()','[{\"email\":\"admin@163.com\",\"mobile\":\"13612345677\"}]',35,'0:0:0:0:0:0:0:1','2022-12-25 20:59:53'),(205,'admin','修改用户','io.renren.modules.sys.controller.SysUserController.update()','[{\"email\":\"admin@163.com\",\"mobile\":\"13612345677\",\"createUserId\":1}]',40,'0:0:0:0:0:0:0:1','2022-12-25 21:02:09'),(206,'admin','修改用户','io.renren.modules.sys.controller.SysUserController.update()','[{\"email\":\"admin@163.com\",\"mobile\":\"13612345678\",\"createUserId\":1}]',10,'0:0:0:0:0:0:0:1','2022-12-25 21:02:16'),(207,'admin','修改用户','io.renren.modules.sys.controller.SysUserController.update()','[{\"username\":\"admin\",\"email\":\"admin@163.com\",\"mobile\":\"13612345677\",\"createUserId\":1}]',5,'0:0:0:0:0:0:0:1','2022-12-25 21:05:22'),(208,'admin','修改用户','io.renren.modules.sys.controller.SysUserController.update()','[{\"username\":\"admin\",\"email\":\"admin@163.com\",\"mobile\":\"13612345677\",\"createUserId\":1}]',4,'0:0:0:0:0:0:0:1','2022-12-25 21:06:24'),(209,'admin','修改用户','io.renren.modules.sys.controller.SysUserController.update()','[{\"username\":\"admin\",\"email\":\"admin@163.com\",\"mobile\":\"13612345677\",\"createUserId\":1}]',3,'0:0:0:0:0:0:0:1','2022-12-25 21:08:47'),(210,'admin','修改菜单','io.renren.modules.sys.controller.SysMenuController.update()','[{\"menuId\":80,\"parentId\":1,\"name\":\"上传图片管理\",\"url\":\"/oss/oss\",\"perms\":\"\",\"type\":1,\"icon\":\"shouye\",\"orderNum\":7}]',8,'0:0:0:0:0:0:0:1','2022-12-25 21:11:36'),(211,'admin','修改用户','io.renren.modules.sys.controller.SysUserController.update()','[{\"username\":\"admin1\",\"salt\":\"YzcmCZNvbXocrsz9dm8e\",\"email\":\"admin@163.com\",\"mobile\":\"13612345678\",\"status\":1,\"roleIdList\":[2],\"createUserId\":1}]',13,'0:0:0:0:0:0:0:1','2022-12-25 21:13:24'),(212,'admin','修改用户','io.renren.modules.sys.controller.SysUserController.update()','[{\"userId\":1,\"username\":\"admin\",\"email\":\"admin@163.com\",\"mobile\":\"13612345677\",\"createUserId\":1}]',13,'0:0:0:0:0:0:0:1','2022-12-25 21:16:50'),(213,'admin','修改用户','io.renren.modules.sys.controller.SysUserController.update()','[{\"userId\":1,\"username\":\"admin\",\"email\":\"admin@163.com\",\"mobile\":\"13612345677\",\"createUserId\":1}]',6,'0:0:0:0:0:0:0:1','2022-12-25 21:16:55'),(214,'admin','修改用户','io.renren.modules.sys.controller.SysUserController.update()','[{\"userId\":1,\"username\":\"admin1\",\"salt\":\"YzcmCZNvbXocrsz9dm8e\",\"email\":\"admin@163.com\",\"mobile\":\"13612345677\",\"status\":1,\"roleIdList\":[],\"createUserId\":1}]',8,'0:0:0:0:0:0:0:1','2022-12-25 21:17:33'),(215,'admin1','修改用户','io.renren.modules.sys.controller.SysUserController.update()','[{\"userId\":1,\"username\":\"admin\",\"salt\":\"YzcmCZNvbXocrsz9dm8e\",\"email\":\"admin@163.com\",\"mobile\":\"13612345677\",\"status\":1,\"roleIdList\":[2],\"createUserId\":1}]',7,'0:0:0:0:0:0:0:1','2022-12-25 21:17:50'),(216,'admin','修改角色','io.renren.modules.sys.controller.SysRoleController.update()','[{\"roleId\":2,\"roleName\":\"管理员\",\"remark\":\"超级管理员\",\"createUserId\":1,\"menuIdList\":[1,2,15,16,17,18,3,19,20,21,22,4,23,24,25,26,71,7,8,9,10,11,12,13,14,72,73,80,81,31,52,74,75,57,64,65,67,79,69,77,82,84,85,86,53,54,55,56,87,89,60,61,62,63,91,92,-666666]}]',136,'0:0:0:0:0:0:0:1','2022-12-25 21:21:10'),(217,'admin','修改角色','io.renren.modules.sys.controller.SysRoleController.update()','[{\"roleId\":1,\"roleName\":\"普通用户\",\"remark\":\"普通权限\",\"createUserId\":1,\"menuIdList\":[31,52,74,75,57,64,65,67,79,-666666]}]',23,'0:0:0:0:0:0:0:1','2022-12-25 21:21:58'),(218,'admin','修改菜单','io.renren.modules.sys.controller.SysMenuController.update()','[{\"menuId\":17,\"parentId\":2,\"name\":\"修改\",\"perms\":\"sys:user:update,sys:role:select\",\"type\":2,\"orderNum\":0}]',4,'0:0:0:0:0:0:0:1','2022-12-25 21:24:40'),(219,'admin','保存菜单','io.renren.modules.sys.controller.SysMenuController.save()','[{\"menuId\":93,\"parentId\":67,\"name\":\"修改\",\"perms\":\"\",\"type\":2,\"orderNum\":0}]',6,'0:0:0:0:0:0:0:1','2022-12-25 21:25:08'),(220,'admin','修改菜单','io.renren.modules.sys.controller.SysMenuController.update()','[{\"menuId\":93,\"parentId\":67,\"name\":\"修改\",\"perms\":\"sys:user:update,sys:role:select\",\"type\":2,\"orderNum\":0}]',8,'0:0:0:0:0:0:0:1','2022-12-25 21:27:21'),(221,'川师第一深情、','修改用户','io.renren.modules.sys.controller.SysUserController.update()','[{\"userId\":9,\"username\":\"川师第一深情\",\"email\":\"58276034@qq.com\",\"mobile\":\"18981632470\",\"createUserId\":9}]',43,'0:0:0:0:0:0:0:1','2022-12-25 21:30:54'),(222,'admin','修改用户','io.renren.modules.sys.controller.SysUserController.update()','[{\"userId\":9,\"username\":\"川师第一深情、\",\"salt\":\"bJDydBKzKx1UQn00E5Vp\",\"email\":\"58276034@qq.com\",\"mobile\":\"18981632470\",\"status\":1,\"roleIdList\":[],\"createUserId\":1}]',13,'0:0:0:0:0:0:0:1','2022-12-25 21:32:58'),(223,'admin','修改用户','io.renren.modules.sys.controller.SysUserController.update()','[{\"userId\":9,\"username\":\"川师第一深情、\",\"salt\":\"bJDydBKzKx1UQn00E5Vp\",\"email\":\"58276034@qq.com\",\"mobile\":\"18981632470\",\"status\":1,\"roleIdList\":[1],\"createUserId\":1}]',11,'0:0:0:0:0:0:0:1','2022-12-25 21:33:05'),(224,'川师第一深情、','修改用户','io.renren.modules.sys.controller.SysUserController.update()','[{\"userId\":9,\"username\":\"川师第一深情、\",\"email\":\"58276034@qq.com\",\"mobile\":\"11111111111\",\"createUserId\":9}]',6,'0:0:0:0:0:0:0:1','2022-12-25 21:34:19'),(225,'admin','修改用户','io.renren.modules.sys.controller.SysUserController.update()','[{\"userId\":9,\"username\":\"川师第一深情、\",\"salt\":\"bJDydBKzKx1UQn00E5Vp\",\"email\":\"58276034@qq.com\",\"mobile\":\"11111111111\",\"status\":1,\"roleIdList\":[1],\"createUserId\":1}]',10,'0:0:0:0:0:0:0:1','2022-12-25 21:36:27'),(226,'admin','修改用户','io.renren.modules.sys.controller.SysUserController.update()','[{\"userId\":1,\"username\":\"admin\",\"email\":\"admin@163.com\",\"mobile\":\"13612345678\",\"createUserId\":1}]',7,'0:0:0:0:0:0:0:1','2022-12-25 21:42:35'),(227,'admin','修改用户','io.renren.modules.sys.controller.SysUserController.update()','[{\"userId\":1,\"username\":\"admin\",\"salt\":\"YzcmCZNvbXocrsz9dm8e\",\"email\":\"admin@163.com\",\"mobile\":\"13612345678\",\"status\":1,\"roleIdList\":[2],\"createUserId\":1}]',6,'0:0:0:0:0:0:0:1','2022-12-25 21:42:44'),(228,'admin','修改用户','io.renren.modules.sys.controller.SysUserController.update()','[{\"userId\":1,\"username\":\"admin\",\"email\":\"admin@163.com\",\"mobile\":\"13612345678\",\"roleIdList\":[2],\"createUserId\":1}]',7,'0:0:0:0:0:0:0:1','2022-12-25 21:45:45'),(229,'admin','修改用户','io.renren.modules.sys.controller.SysUserController.update()','[{\"userId\":1,\"username\":\"admin\",\"email\":\"admin@163.com\",\"mobile\":\"13612345678\",\"createUserId\":1}]',7,'0:0:0:0:0:0:0:1','2022-12-25 21:51:40'),(230,'admin','修改用户','io.renren.modules.sys.controller.SysUserController.update()','[{\"userId\":1,\"username\":\"admin\",\"salt\":\"YzcmCZNvbXocrsz9dm8e\",\"email\":\"admin@163.com\",\"mobile\":\"13612345678\",\"status\":1,\"roleIdList\":[2],\"createUserId\":1}]',7,'0:0:0:0:0:0:0:1','2022-12-25 21:51:51'),(231,'admin','修改用户','io.renren.modules.sys.controller.SysUserController.update()','[{\"userId\":1,\"username\":\"admin\",\"email\":\"admin@163.com\",\"mobile\":\"13612345678\",\"roleIdList\":[2],\"createUserId\":1}]',10,'0:0:0:0:0:0:0:1','2022-12-25 21:52:05'),(232,'川师第一深情、','修改用户','io.renren.modules.sys.controller.SysUserController.update()','[{\"userId\":9,\"username\":\"川师第一深情、\",\"email\":\"58276034@qq.com\",\"mobile\":\"11111111111\",\"roleIdList\":[1],\"createUserId\":9}]',51,'0:0:0:0:0:0:0:1','2022-12-25 21:54:06'),(233,'川师第一深情、','修改用户','io.renren.modules.sys.controller.SysUserController.update()','[{\"userId\":9,\"username\":\"川师第一深情、\",\"email\":\"58276034@qq.com\",\"mobile\":\"18981632470\",\"roleIdList\":[1],\"createUserId\":9}]',10,'0:0:0:0:0:0:0:1','2022-12-25 21:54:12'),(234,'admin','保存用户','io.renren.modules.sys.controller.SysUserController.save()','[{\"userId\":91,\"username\":\"111\",\"password\":\"542855367bd997bddbed33442d2abda0a9382f47a502c6d7851239bec97e1541\",\"salt\":\"bUYEh2M5qeZuWLOKwzDs\",\"email\":\"58276034@qq.com\",\"mobile\":\"18981632470\",\"status\":1,\"roleIdList\":[1],\"createUserId\":1,\"createTime\":\"Dec 25, 2022 10:13:22 PM\",\"name\":\"输入姓名\",\"shenfenzheng\":\"输入身份证\",\"head\":\"rnapxb47a.hn-bkt.clouddn.com/upload/20221225/7ec13b9da0d9452fa668e962acf97770.png\"}]',22,'0:0:0:0:0:0:0:1','2022-12-25 22:13:22'),(235,'admin','删除用户','io.renren.modules.sys.controller.SysUserController.delete()','[[91]]',11,'0:0:0:0:0:0:0:1','2022-12-25 22:13:27'),(236,'admin','修改用户','io.renren.modules.sys.controller.SysUserController.update()','[{\"userId\":93,\"username\":\"222\",\"salt\":\"cgwyAfyejV616tT5iuiV\",\"email\":\"58276034@qq.com\",\"mobile\":\"11111111111\",\"status\":1,\"roleIdList\":[1],\"name\":\"输入姓名\",\"shenfenzheng\":\"输入身份证\",\"head\":\"rnapxb47a.hn-bkt.clouddn.com/upload/20221225/7ec13b9da0d9452fa668e962acf97770.png\"}]',44,'0:0:0:0:0:0:0:1','2022-12-25 22:29:32'),(237,'admin','修改用户','io.renren.modules.sys.controller.SysUserController.update()','[{\"userId\":92,\"username\":\"111\",\"salt\":\"aPzqPpLGaZxUGgWMPW7i\",\"email\":\"58276034@qq.com\",\"mobile\":\"11111111111\",\"status\":1,\"roleIdList\":[1],\"name\":\"输入姓名\",\"shenfenzheng\":\"输入身份证\",\"head\":\"rnapxb47a.hn-bkt.clouddn.com/upload/20221225/7ec13b9da0d9452fa668e962acf97770.png\"}]',17,'0:0:0:0:0:0:0:1','2022-12-25 22:29:43'),(238,'admin','删除用户','io.renren.modules.sys.controller.SysUserController.delete()','[[92]]',11,'0:0:0:0:0:0:0:1','2022-12-25 22:29:46'),(239,'admin','删除用户','io.renren.modules.sys.controller.SysUserController.delete()','[[93]]',7,'0:0:0:0:0:0:0:1','2022-12-25 22:29:49'),(240,'admin','修改菜单','io.renren.modules.sys.controller.SysMenuController.update()','[{\"menuId\":81,\"parentId\":80,\"name\":\"查找\",\"url\":\"\",\"perms\":\"sys:oss:all\",\"type\":2,\"icon\":\"\",\"orderNum\":0}]',4,'0:0:0:0:0:0:0:1','2022-12-25 22:33:27'),(241,'admin','保存菜单','io.renren.modules.sys.controller.SysMenuController.save()','[{\"menuId\":94,\"parentId\":67,\"name\":\"上传\",\"url\":\"\",\"perms\":\"sys:oss:all\",\"type\":2,\"icon\":\"\",\"orderNum\":0}]',6,'0:0:0:0:0:0:0:1','2022-12-25 22:33:59'),(242,'admin','修改角色','io.renren.modules.sys.controller.SysRoleController.update()','[{\"roleId\":1,\"roleName\":\"普通用户\",\"remark\":\"普通权限\",\"createUserId\":1,\"menuIdList\":[31,52,74,75,57,64,65,67,79,93,94,-666666]}]',39,'0:0:0:0:0:0:0:1','2022-12-25 22:35:13'),(243,'admin','修改用户','io.renren.modules.sys.controller.SysUserController.update()','[{\"head\":\"rnapxb47a.hn-bkt.clouddn.com/upload/20221225/05169dabe3504c54b9b10a37536ae212.jpeg\"}]',6,'0:0:0:0:0:0:0:1','2022-12-25 22:35:36'),(244,'admin','修改用户','io.renren.modules.sys.controller.SysUserController.update()','[{\"head\":\"rnapxb47a.hn-bkt.clouddn.com/upload/20221225/6f0f9dcbc67a41d49701102eb42f6750.jpeg\"}]',5,'0:0:0:0:0:0:0:1','2022-12-25 22:36:42'),(245,'admin','修改用户','io.renren.modules.sys.controller.SysUserController.update()','[{\"userId\":1,\"head\":\"rnapxb47a.hn-bkt.clouddn.com/upload/20221225/9a40dbc6e9f444cbb306b3059b958605.jpg\"}]',11,'0:0:0:0:0:0:0:1','2022-12-25 22:43:05'),(246,'admin','修改用户','io.renren.modules.sys.controller.SysUserController.update()','[{\"userId\":1,\"head\":\"rnapxb47a.hn-bkt.clouddn.com/upload/20221225/675d6f13be1445a79b17a4063080107c.png\"}]',8,'0:0:0:0:0:0:0:1','2022-12-25 22:46:08'),(247,'222','修改用户','io.renren.modules.sys.controller.SysUserController.update()','[{\"userId\":95,\"head\":\"rnapxb47a.hn-bkt.clouddn.com/upload/20221225/2fb2abbf391346238e54ff29f7933c34.jpg\"}]',8,'0:0:0:0:0:0:0:1','2022-12-25 22:46:34'),(248,'admin','修改用户','io.renren.modules.sys.controller.SysUserController.update()','[{\"userId\":95,\"username\":\"222\",\"salt\":\"9zseLmnmbWkN4ZCSZISy\",\"email\":\"11@qq.com\",\"mobile\":\"11111111111\",\"status\":1,\"roleIdList\":[1],\"name\":\"输入姓名\",\"shenfenzheng\":\"输入身份证\",\"head\":\"rnapxb47a.hn-bkt.clouddn.com/upload/20221225/7ec13b9da0d9452fa668e962acf97770.png\"}]',8,'0:0:0:0:0:0:0:1','2022-12-25 22:47:12'),(249,'222','修改用户','io.renren.modules.sys.controller.SysUserController.update()','[{\"userId\":95,\"username\":\"222\",\"email\":\"11@qq.com\",\"mobile\":\"12222222222\",\"roleIdList\":[1]}]',13,'0:0:0:0:0:0:0:1','2022-12-25 22:47:59'),(250,'222','修改用户','io.renren.modules.sys.controller.SysUserController.update()','[{\"userId\":95,\"roleIdList\":[1],\"head\":\"rnapxb47a.hn-bkt.clouddn.com/upload/20221225/92e775354ca742e6a6e21e4f632b250f.jpg\"}]',17,'0:0:0:0:0:0:0:1','2022-12-25 22:55:57'),(251,'admin','修改角色','io.renren.modules.sys.controller.SysRoleController.update()','[{\"roleId\":1,\"roleName\":\"普通用户\",\"remark\":\"普通权限\",\"createUserId\":1,\"menuIdList\":[31,52,74,75,57,64,65,67,79,93,94,69,77,-666666]}]',20,'0:0:0:0:0:0:0:1','2022-12-25 22:57:29'),(252,'admin','修改用户','io.renren.modules.sys.controller.SysUserController.update()','[{\"userId\":1,\"username\":\"admin\",\"email\":\"admin@163.com\",\"mobile\":\"13612345678\",\"roleIdList\":[],\"jianjie\":\"管理员\",\"bingshi\":\"管理员\"}]',8,'0:0:0:0:0:0:0:1','2022-12-25 23:20:40'),(253,'admin','修改用户','io.renren.modules.sys.controller.SysUserController.update()','[{\"userId\":1,\"username\":\"admin\",\"salt\":\"YzcmCZNvbXocrsz9dm8e\",\"email\":\"admin@163.com\",\"mobile\":\"13612345678\",\"status\":1,\"roleIdList\":[],\"name\":\"输入姓名\",\"shenfenzheng\":\"输入身份证\",\"head\":\"rnapxb47a.hn-bkt.clouddn.com/upload/20221225/7ec13b9da0d9452fa668e962acf97770.png\"}]',10,'0:0:0:0:0:0:0:1','2022-12-25 23:56:08'),(254,'admin','修改用户','io.renren.modules.sys.controller.SysUserController.update()','[{\"userId\":1,\"username\":\"admin\",\"salt\":\"YzcmCZNvbXocrsz9dm8e\",\"email\":\"admin@163.com\",\"mobile\":\"13612345678\",\"status\":1,\"roleIdList\":[2],\"name\":\"输入姓名\",\"shenfenzheng\":\"输入身份证\",\"head\":\"rnapxb47a.hn-bkt.clouddn.com/upload/20221225/7ec13b9da0d9452fa668e962acf97770.png\"}]',8,'0:0:0:0:0:0:0:1','2022-12-25 23:56:13'),(255,'admin','修改用户','io.renren.modules.sys.controller.SysUserController.update()','[{\"userId\":2,\"username\":\"normal\",\"salt\":\"ufbKxFHbCEtWoAP1a4pc\",\"email\":\"normal@163.com\",\"mobile\":\"17679082788\",\"status\":1,\"roleIdList\":[1],\"name\":\"输入姓名\",\"shenfenzheng\":\"输入身份证\",\"head\":\"rnapxb47a.hn-bkt.clouddn.com/upload/20221225/7ec13b9da0d9452fa668e962acf97770.png\"}]',14,'0:0:0:0:0:0:0:1','2022-12-25 23:56:17'),(256,'admin','修改用户','io.renren.modules.sys.controller.SysUserController.update()','[{\"userId\":9,\"username\":\"川师第一深情、\",\"salt\":\"bJDydBKzKx1UQn00E5Vp\",\"email\":\"58276034@qq.com\",\"mobile\":\"18981632470\",\"status\":1,\"roleIdList\":[1],\"name\":\"输入姓名\",\"shenfenzheng\":\"输入身份证\",\"head\":\"rnapxb47a.hn-bkt.clouddn.com/upload/20221225/7ec13b9da0d9452fa668e962acf97770.png\"}]',7,'0:0:0:0:0:0:0:1','2022-12-25 23:56:20'),(257,'admin','修改用户','io.renren.modules.sys.controller.SysUserController.update()','[{\"userId\":94,\"username\":\"111\",\"salt\":\"63apZzPp0qxoGJC1Cgwc\",\"email\":\"11@qq.com\",\"mobile\":\"11111111111\",\"status\":1,\"roleIdList\":[1],\"name\":\"输入姓名\",\"shenfenzheng\":\"输入身份证\",\"head\":\"rnapxb47a.hn-bkt.clouddn.com/upload/20221225/7ec13b9da0d9452fa668e962acf97770.png\"}]',9,'0:0:0:0:0:0:0:1','2022-12-25 23:56:24'),(258,'admin','修改用户','io.renren.modules.sys.controller.SysUserController.update()','[{\"userId\":95,\"username\":\"222\",\"salt\":\"9zseLmnmbWkN4ZCSZISy\",\"email\":\"11@qq.com\",\"mobile\":\"12222222222\",\"status\":1,\"roleIdList\":[1],\"name\":\"输入姓名\",\"shenfenzheng\":\"输入身份证\",\"head\":\"rnapxb47a.hn-bkt.clouddn.com/upload/20221225/7ec13b9da0d9452fa668e962acf97770.png\"}]',7,'0:0:0:0:0:0:0:1','2022-12-25 23:56:27'),(259,'admin','修改用户','io.renren.modules.sys.controller.SysUserController.update()','[{\"userId\":1,\"username\":\"admin\",\"salt\":\"YzcmCZNvbXocrsz9dm8e\",\"email\":\"admin@163.com\",\"mobile\":\"1120984c4d94bcbdaeac7c2ae3c694ee229a9e38f2cea074a348273ec9aa975e\",\"status\":1,\"roleIdList\":[2],\"name\":\"输入姓名\",\"shenfenzheng\":\"489daa19802401e269a2bbacc38fa241a392f0d6a0a16998444d1e6a5183bbad\",\"head\":\"rnapxb47a.hn-bkt.clouddn.com/upload/20221225/7ec13b9da0d9452fa668e962acf97770.png\"}]',60,'0:0:0:0:0:0:0:1','2022-12-25 23:59:02'),(260,'admin','修改用户','io.renren.modules.sys.controller.SysUserController.update()','[{\"userId\":1,\"username\":\"admin\",\"salt\":\"YzcmCZNvbXocrsz9dm8e\",\"email\":\"admin@163.com\",\"mobile\":\"15328683336\",\"status\":1,\"roleIdList\":[2],\"name\":\"输入姓名\",\"shenfenzheng\":\"输入身份证\",\"head\":\"rnapxb47a.hn-bkt.clouddn.com/upload/20221225/7ec13b9da0d9452fa668e962acf97770.png\"}]',39,'0:0:0:0:0:0:0:1','2022-12-26 00:03:22'),(261,'admin','修改用户','io.renren.modules.sys.controller.SysUserController.update()','[{\"userId\":1,\"username\":\"admin\",\"email\":\"admin@163.com\",\"mobile\":\"15328683336\",\"roleIdList\":[2],\"jianjie\":\"管理员\",\"bingshi\":\"管理员\"}]',8,'0:0:0:0:0:0:0:1','2022-12-26 00:06:28'),(262,'admin','修改用户','io.renren.modules.sys.controller.SysUserController.update()','[{\"userId\":1,\"username\":\"admin\",\"salt\":\"YzcmCZNvbXocrsz9dm8e\",\"email\":\"admin@163.com\",\"mobile\":\"15328683336\",\"status\":1,\"roleIdList\":[2],\"name\":\"输入姓名\",\"shenfenzheng\":\"输入身份证\",\"head\":\"rnapxb47a.hn-bkt.clouddn.com/upload/20221225/7ec13b9da0d9452fa668e962acf97770.png\"}]',16,'0:0:0:0:0:0:0:1','2022-12-26 00:07:02'),(263,'川师第一深情、','修改用户','io.renren.modules.sys.controller.SysUserController.update()','[{\"userId\":9,\"roleIdList\":[1],\"head\":\"rnapxb47a.hn-bkt.clouddn.com/upload/20221226/661608f8403f43d7ab224d8438af109b.jpg\"}]',13,'0:0:0:0:0:0:0:1','2022-12-26 00:35:05'),(264,'admin','修改菜单','io.renren.modules.sys.controller.SysMenuController.update()','[{\"menuId\":75,\"parentId\":31,\"name\":\"心理知识\",\"url\":\"/notice/notice-use\",\"perms\":\"\",\"type\":1,\"icon\":\"log\",\"orderNum\":0}]',6,'0:0:0:0:0:0:0:1','2022-12-26 00:49:06'),(265,'admin','修改用户','io.renren.modules.sys.controller.SysUserController.update()','[{\"userId\":94,\"username\":\"吴翔\",\"salt\":\"63apZzPp0qxoGJC1Cgwc\",\"email\":\"11@qq.com\",\"mobile\":\"11111111111\",\"status\":1,\"roleIdList\":[1],\"name\":\"吴翔\",\"shenfenzheng\":\"513128200001010019\",\"head\":\"rnapxb47a.hn-bkt.clouddn.com/upload/20221225/b741df3902dc4303859ba0e142ac52c9.png\"}]',10,'0:0:0:0:0:0:0:1','2022-12-26 12:26:56'),(266,'admin','修改用户','io.renren.modules.sys.controller.SysUserController.update()','[{\"userId\":95,\"username\":\"秦艳鸿\",\"salt\":\"9zseLmnmbWkN4ZCSZISy\",\"email\":\"22@qq.com\",\"mobile\":\"12222222222\",\"status\":1,\"roleIdList\":[1],\"name\":\"秦艳鸿\",\"shenfenzheng\":\"513128200206300019\",\"head\":\"rnapxb47a.hn-bkt.clouddn.com/upload/20221225/05169dabe3504c54b9b10a37536ae212.jpeg\"}]',7,'0:0:0:0:0:0:0:1','2022-12-26 12:27:51'),(267,'admin','修改用户','io.renren.modules.sys.controller.SysUserController.update()','[{\"userId\":96,\"username\":\"李菊红\",\"salt\":\"zf6jlMqkDd9sFfJ2AXAD\",\"email\":\"333@qq.com\",\"mobile\":\"13333333333\",\"status\":1,\"roleIdList\":[1],\"name\":\"李菊红\",\"shenfenzheng\":\"513128200206300019\",\"head\":\"rnapxb47a.hn-bkt.clouddn.com/upload/20221225/01f05880c8cf42cea829c8b0aa0f79e0.jpg\"}]',8,'0:0:0:0:0:0:0:1','2022-12-26 12:28:34'),(268,'admin','修改菜单','io.renren.modules.sys.controller.SysMenuController.update()','[{\"menuId\":89,\"parentId\":82,\"name\":\"轮播图管理\",\"url\":\"/slides/slides\",\"perms\":\"\",\"type\":1,\"icon\":\"daohang\",\"orderNum\":3}]',6,'0:0:0:0:0:0:0:1','2022-12-26 12:53:17'),(269,'admin','修改菜单','io.renren.modules.sys.controller.SysMenuController.update()','[{\"menuId\":91,\"parentId\":82,\"name\":\"公告管理\",\"url\":\"/notice/notice\",\"perms\":\"\",\"type\":1,\"icon\":\"duanxin\",\"orderNum\":4}]',5,'0:0:0:0:0:0:0:1','2022-12-26 12:53:26'),(270,'admin','修改菜单','io.renren.modules.sys.controller.SysMenuController.update()','[{\"menuId\":92,\"parentId\":82,\"name\":\"心理医生管理\",\"url\":\"/doctor/doctor\",\"perms\":\"\",\"type\":1,\"icon\":\"geren\",\"orderNum\":2}]',6,'0:0:0:0:0:0:0:1','2022-12-26 12:53:39'),(271,'admin','修改菜单','io.renren.modules.sys.controller.SysMenuController.update()','[{\"menuId\":91,\"parentId\":82,\"name\":\"心理知识管理\",\"url\":\"/notice/notice\",\"perms\":\"\",\"type\":1,\"icon\":\"duanxin\",\"orderNum\":4}]',8,'0:0:0:0:0:0:0:1','2022-12-26 16:25:14'),(272,'admin','修改用户','io.renren.modules.sys.controller.SysUserController.update()','[{\"userId\":1,\"username\":\"admin\",\"salt\":\"YzcmCZNvbXocrsz9dm8e\",\"email\":\"admin@163.com\",\"mobile\":\"15328683336\",\"status\":1,\"roleIdList\":[2],\"name\":\"管理员\",\"shenfenzheng\":\"4sDGBwMFJ0mXYJvwogNsBLZkK1daI5pbQJeCUES8leg\\u003d\",\"head\":\"rnapxb47a.hn-bkt.clouddn.com/upload/20221225/7ec13b9da0d9452fa668e962acf97770.png\"}]',14,'0:0:0:0:0:0:0:1','2022-12-26 16:41:05'),(273,'admin','修改用户','io.renren.modules.sys.controller.SysUserController.update()','[{\"userId\":9,\"username\":\"川师第一深情、\",\"salt\":\"bJDydBKzKx1UQn00E5Vp\",\"email\":\"58276034@qq.com\",\"mobile\":\"18981632470\",\"status\":1,\"roleIdList\":[1],\"name\":\"任真\",\"shenfenzheng\":\"4sDGBwMFJ0mXYJvwogNsBLZkK1daI5pbQJeCUES8leg\\u003d\",\"head\":\"rnapxb47a.hn-bkt.clouddn.com/upload/20221226/661608f8403f43d7ab224d8438af109b.jpg\"}]',11,'0:0:0:0:0:0:0:1','2022-12-26 16:42:51'),(274,'admin','修改用户','io.renren.modules.sys.controller.SysUserController.update()','[{\"userId\":2,\"username\":\"normal\",\"salt\":\"ufbKxFHbCEtWoAP1a4pc\",\"email\":\"normal@163.com\",\"mobile\":\"17679082788\",\"status\":1,\"roleIdList\":[1],\"name\":\"normal\",\"shenfenzheng\":\"DCE6fN4amCnePXlsAdpG5cPAQNkT9to+qyr7bw5Ddgo\\u003d\",\"head\":\"rnapxb47a.hn-bkt.clouddn.com/upload/20221225/7ec13b9da0d9452fa668e962acf97770.png\"}]',14,'0:0:0:0:0:0:0:1','2022-12-26 16:43:47'),(275,'admin','修改用户','io.renren.modules.sys.controller.SysUserController.update()','[{\"userId\":94,\"username\":\"吴翔\",\"salt\":\"63apZzPp0qxoGJC1Cgwc\",\"email\":\"11@qq.com\",\"mobile\":\"11111111111\",\"status\":1,\"roleIdList\":[1],\"name\":\"吴翔\",\"shenfenzheng\":\"DCE6fN4amCnePXlsAdpG5cPAQNkT9to+qyr7bw5Ddgo\\u003d\",\"head\":\"rnapxb47a.hn-bkt.clouddn.com/upload/20221225/b741df3902dc4303859ba0e142ac52c9.png\"}]',15,'0:0:0:0:0:0:0:1','2022-12-26 16:44:00'),(276,'admin','修改用户','io.renren.modules.sys.controller.SysUserController.update()','[{\"userId\":95,\"username\":\"秦艳鸿\",\"salt\":\"9zseLmnmbWkN4ZCSZISy\",\"email\":\"22@qq.com\",\"mobile\":\"12222222222\",\"status\":1,\"roleIdList\":[1],\"name\":\"秦艳鸿\",\"shenfenzheng\":\"DCE6fN4amCnePXlsAdpG5cPAQNkT9to+qyr7bw5Ddgo\\u003d\",\"head\":\"rnapxb47a.hn-bkt.clouddn.com/upload/20221225/05169dabe3504c54b9b10a37536ae212.jpeg\"}]',10,'0:0:0:0:0:0:0:1','2022-12-26 16:44:06'),(277,'admin','修改用户','io.renren.modules.sys.controller.SysUserController.update()','[{\"userId\":97,\"username\":\"胡少锴\",\"salt\":\"2k9iG15rpS8Ox6vNqzFy\",\"email\":\"444@qq.com\",\"mobile\":\"14444444444\",\"status\":1,\"roleIdList\":[1],\"name\":\"胡少锴\",\"shenfenzheng\":\"DCE6fN4amCnePXlsAdpG5cPAQNkT9to+qyr7bw5Ddgo\\u003d\",\"head\":\"rnapxb47a.hn-bkt.clouddn.com/upload/20221225/92e775354ca742e6a6e21e4f632b250f.jpg\"}]',13,'0:0:0:0:0:0:0:1','2022-12-26 16:44:11'),(278,'admin','修改用户','io.renren.modules.sys.controller.SysUserController.update()','[{\"userId\":96,\"username\":\"李菊红\",\"salt\":\"zf6jlMqkDd9sFfJ2AXAD\",\"email\":\"333@qq.com\",\"mobile\":\"13333333333\",\"status\":1,\"roleIdList\":[1],\"name\":\"李菊红\",\"shenfenzheng\":\"DCE6fN4amCnePXlsAdpG5cPAQNkT9to+qyr7bw5Ddgo\\u003d\",\"head\":\"rnapxb47a.hn-bkt.clouddn.com/upload/20221225/01f05880c8cf42cea829c8b0aa0f79e0.jpg\"}]',11,'0:0:0:0:0:0:0:1','2022-12-26 16:44:20'),(279,'admin','保存菜单','io.renren.modules.sys.controller.SysMenuController.save()','[{\"menuId\":95,\"parentId\":84,\"name\":\"心理医生预约\",\"url\":\"/doctor/doctor-record\",\"perms\":\"\",\"type\":1,\"icon\":\"log\",\"orderNum\":0}]',13,'0:0:0:0:0:0:0:1','2022-12-26 16:52:44'),(280,'admin','修改菜单','io.renren.modules.sys.controller.SysMenuController.update()','[{\"menuId\":82,\"parentId\":0,\"name\":\"前台管理\",\"url\":\"\",\"perms\":\"\",\"type\":0,\"icon\":\"shezhi\",\"orderNum\":6}]',4,'0:0:0:0:0:0:0:1','2022-12-28 16:03:18'),(281,'admin','修改菜单','io.renren.modules.sys.controller.SysMenuController.update()','[{\"menuId\":67,\"parentId\":0,\"name\":\"我的信息\",\"url\":\"/homepage/homepage\",\"perms\":\"\",\"type\":1,\"icon\":\"admin\",\"orderNum\":5}]',4,'0:0:0:0:0:0:0:1','2022-12-28 16:03:36'),(282,'admin','修改菜单','io.renren.modules.sys.controller.SysMenuController.update()','[{\"menuId\":77,\"parentId\":0,\"name\":\"心事圈\",\"url\":\"/licy-views/Message\",\"perms\":\"\",\"type\":1,\"icon\":\"xiangqufill\",\"orderNum\":4}]',4,'0:0:0:0:0:0:0:1','2022-12-28 16:03:48'),(283,'admin','保存菜单','io.renren.modules.sys.controller.SysMenuController.save()','[{\"menuId\":96,\"parentId\":0,\"name\":\"我的预约\",\"url\":\"\",\"perms\":\"\",\"type\":0,\"icon\":\"job\",\"orderNum\":3}]',4,'0:0:0:0:0:0:0:1','2022-12-28 16:04:20'),(284,'admin','修改菜单','io.renren.modules.sys.controller.SysMenuController.update()','[{\"menuId\":57,\"parentId\":0,\"name\":\"心理测评\",\"url\":\"\",\"perms\":\"\",\"type\":0,\"icon\":\"bianji\",\"orderNum\":2}]',4,'0:0:0:0:0:0:0:1','2022-12-28 16:04:35'),(285,'admin','保存菜单','io.renren.modules.sys.controller.SysMenuController.save()','[{\"menuId\":97,\"parentId\":96,\"name\":\"心理医生预约\",\"url\":\"/doctor/doctor-mine\",\"perms\":\"\",\"type\":1,\"icon\":\"geren\",\"orderNum\":0}]',4,'0:0:0:0:0:0:0:1','2022-12-28 16:05:31'),(286,'admin','修改角色','io.renren.modules.sys.controller.SysRoleController.update()','[{\"roleId\":1,\"roleName\":\"普通用户\",\"remark\":\"普通权限\",\"createUserId\":1,\"menuIdList\":[31,52,74,75,57,64,65,67,79,93,94,69,77,96,97,-666666]}]',29,'0:0:0:0:0:0:0:1','2022-12-28 16:10:10'),(287,'admin','修改用户','io.renren.modules.sys.controller.SysUserController.update()','[{\"userId\":9,\"username\":\"川师第一深情、\",\"salt\":\"bJDydBKzKx1UQn00E5Vp\",\"email\":\"58276034@qq.com\",\"mobile\":\"18981632470\",\"status\":0,\"roleIdList\":[1],\"name\":\"任真\",\"shenfenzheng\":\"4sDGBwMFJ0mXYJvwogNsBLZkK1daI5pbQJeCUES8leg\\u003d\",\"head\":\"rnapxb47a.hn-bkt.clouddn.com/upload/20221226/661608f8403f43d7ab224d8438af109b.jpg\"}]',10,'0:0:0:0:0:0:0:1','2022-12-28 19:08:56'),(288,'admin','修改用户','io.renren.modules.sys.controller.SysUserController.update()','[{\"userId\":9,\"username\":\"川师第一深情、\",\"salt\":\"bJDydBKzKx1UQn00E5Vp\",\"email\":\"58276034@qq.com\",\"mobile\":\"18981632470\",\"status\":1,\"roleIdList\":[1],\"name\":\"任真\",\"shenfenzheng\":\"4sDGBwMFJ0mXYJvwogNsBLZkK1daI5pbQJeCUES8leg\\u003d\",\"head\":\"rnapxb47a.hn-bkt.clouddn.com/upload/20221226/661608f8403f43d7ab224d8438af109b.jpg\"}]',9,'0:0:0:0:0:0:0:1','2022-12-28 19:09:33'),(289,'admin','保存菜单','io.renren.modules.sys.controller.SysMenuController.save()','[{\"menuId\":98,\"parentId\":82,\"name\":\"心理讲座管理\",\"url\":\"/lecture/lecture\",\"perms\":\"\",\"type\":1,\"icon\":\"bianji\",\"orderNum\":0}]',5,'0:0:0:0:0:0:0:1','2022-12-28 19:24:58'),(290,'admin','修改菜单','io.renren.modules.sys.controller.SysMenuController.update()','[{\"menuId\":98,\"parentId\":82,\"name\":\"心理讲座管理\",\"url\":\"/lecture/lecture\",\"perms\":\"\",\"type\":1,\"icon\":\"bianji\",\"orderNum\":2}]',5,'0:0:0:0:0:0:0:1','2022-12-28 19:25:44'),(291,'admin','修改菜单','io.renren.modules.sys.controller.SysMenuController.update()','[{\"menuId\":52,\"parentId\":31,\"name\":\"心理医生\",\"url\":\"/doctor/doctor-user\",\"type\":1,\"icon\":\"geren\",\"orderNum\":6}]',10,'0:0:0:0:0:0:0:1','2022-12-28 21:26:05'),(292,'admin','修改菜单','io.renren.modules.sys.controller.SysMenuController.update()','[{\"menuId\":52,\"parentId\":31,\"name\":\"心理医生\",\"url\":\"/doctor/doctor-use\",\"type\":1,\"icon\":\"geren\",\"orderNum\":6}]',6,'0:0:0:0:0:0:0:1','2022-12-28 21:27:15'),(293,'admin','保存菜单','io.renren.modules.sys.controller.SysMenuController.save()','[{\"menuId\":99,\"parentId\":84,\"name\":\"心理讲座预约\",\"url\":\"/lecture/lecture-record\",\"perms\":\"\",\"type\":1,\"icon\":\"pinglun\",\"orderNum\":1}]',9,'0:0:0:0:0:0:0:1','2022-12-28 22:10:49'),(294,'admin','保存菜单','io.renren.modules.sys.controller.SysMenuController.save()','[{\"menuId\":100,\"parentId\":96,\"name\":\"心理讲座预约\",\"url\":\"/lecture/lecture-mine\",\"perms\":\"\",\"type\":1,\"icon\":\"pinglun\",\"orderNum\":1}]',6,'0:0:0:0:0:0:0:1','2022-12-28 22:53:53'),(295,'admin','修改菜单','io.renren.modules.sys.controller.SysMenuController.update()','[{\"menuId\":74,\"parentId\":31,\"name\":\"心理讲座\",\"url\":\"/lecture/lecture-use\",\"perms\":\"\",\"type\":1,\"icon\":\"tixing\",\"orderNum\":0}]',8,'0:0:0:0:0:0:0:1','2022-12-28 23:07:26'),(296,'admin','修改角色','io.renren.modules.sys.controller.SysRoleController.update()','[{\"roleId\":1,\"roleName\":\"普通用户\",\"remark\":\"普通权限\",\"createUserId\":1,\"menuIdList\":[31,52,74,75,57,64,65,67,79,93,94,69,77,96,97,100,-666666]}]',66,'0:0:0:0:0:0:0:1','2022-12-28 23:58:35'),(297,'川师第一深情、','修改用户','io.renren.modules.sys.controller.SysUserController.update()','[{\"userId\":9,\"username\":\"川师第一深情\",\"email\":\"58276034@qq.com\",\"mobile\":\"18981632470\",\"roleIdList\":[1]}]',17,'0:0:0:0:0:0:0:1','2022-12-28 23:59:17'),(298,'川师第一深情','修改用户','io.renren.modules.sys.controller.SysUserController.update()','[{\"userId\":9,\"username\":\"川师第一深情、\",\"email\":\"58276034@qq.com\",\"mobile\":\"18981632470\",\"roleIdList\":[1]}]',25,'0:0:0:0:0:0:0:1','2022-12-28 23:59:30'),(299,'admin','修改菜单','io.renren.modules.sys.controller.SysMenuController.update()','[{\"menuId\":77,\"parentId\":0,\"name\":\"心事圈\",\"url\":\"/comment/comment\",\"perms\":\"\",\"type\":1,\"icon\":\"xiangqufill\",\"orderNum\":4}]',4,'0:0:0:0:0:0:0:1','2022-12-29 12:53:16'),(300,'admin','修改角色','io.renren.modules.sys.controller.SysRoleController.update()','[{\"roleId\":1,\"roleName\":\"普通用户\",\"remark\":\"普通权限\",\"createUserId\":1,\"menuIdList\":[31,52,74,75,57,64,65,67,79,93,94,69,77,96,97,100,-666666]}]',47,'0:0:0:0:0:0:0:1','2022-12-29 19:11:55'),(301,'admin','修改角色','io.renren.modules.sys.controller.SysRoleController.update()','[{\"roleId\":2,\"roleName\":\"管理员\",\"remark\":\"超级管理员\",\"createUserId\":1,\"menuIdList\":[1,2,15,16,17,18,3,19,20,21,22,4,23,24,25,26,71,7,8,9,10,11,12,13,14,72,73,80,81,31,52,74,75,57,64,65,67,79,93,94,69,77,82,84,95,99,85,86,53,54,55,56,87,89,60,61,62,63,91,92,98,96,97,100,-666666]}]',127,'0:0:0:0:0:0:0:1','2022-12-29 19:12:05'),(302,'admin','修改菜单','io.renren.modules.sys.controller.SysMenuController.update()','[{\"menuId\":77,\"parentId\":0,\"name\":\"心事圈\",\"url\":\"/comment/comment-use\",\"perms\":\"\",\"type\":1,\"icon\":\"xiangqufill\",\"orderNum\":4}]',5,'0:0:0:0:0:0:0:1','2022-12-29 19:15:45'),(303,'admin','保存菜单','io.renren.modules.sys.controller.SysMenuController.save()','[{\"menuId\":101,\"parentId\":82,\"name\":\"心事圈管理\",\"url\":\"/comment/comment-com\",\"perms\":\"\",\"type\":1,\"icon\":\"pinglun\",\"orderNum\":3}]',5,'0:0:0:0:0:0:0:1','2022-12-29 19:23:18'),(304,'admin','修改菜单','io.renren.modules.sys.controller.SysMenuController.update()','[{\"menuId\":101,\"parentId\":82,\"name\":\"心事圈管理\",\"url\":\"/comment/comment\",\"perms\":\"\",\"type\":1,\"icon\":\"pinglun\",\"orderNum\":3}]',7,'0:0:0:0:0:0:0:1','2022-12-29 19:24:06'),(305,'hx11111','修改用户','io.renren.modules.sys.controller.SysUserController.update()','[{\"userId\":98,\"roleIdList\":[1],\"head\":\"rnapxb47a.hn-bkt.clouddn.com/upload/20221229/736b967b265e4de6afc4f8c0cdad94c4.jpg\"}]',8,'0:0:0:0:0:0:0:1','2022-12-29 19:31:45'),(306,'hx11111','修改用户','io.renren.modules.sys.controller.SysUserController.update()','[{\"userId\":98,\"username\":\"hx11111\",\"email\":\"15523802450@qq.com\",\"mobile\":\"15523802450\",\"roleIdList\":[1],\"bingshi\":\"荨麻疹\"}]',13,'0:0:0:0:0:0:0:1','2022-12-29 19:38:42'),(307,'admin','删除菜单','io.renren.modules.sys.controller.SysMenuController.delete()','[71]',7,'0:0:0:0:0:0:0:1','2022-12-29 20:45:48');
/*!40000 ALTER TABLE `sys_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_menu`
--

DROP TABLE IF EXISTS `sys_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_menu` (
                            `menu_id` bigint NOT NULL AUTO_INCREMENT,
                            `parent_id` bigint DEFAULT NULL COMMENT '父菜单ID，一级菜单为0',
                            `name` varchar(50) DEFAULT NULL COMMENT '菜单名称',
                            `url` varchar(200) DEFAULT NULL COMMENT '菜单URL',
                            `perms` varchar(500) DEFAULT NULL COMMENT '授权(多个用逗号分隔，如：user:list,user:create)',
                            `type` int DEFAULT NULL COMMENT '类型   0：目录   1：菜单   2：按钮',
                            `icon` varchar(50) DEFAULT NULL COMMENT '菜单图标',
                            `order_num` int DEFAULT NULL COMMENT '排序',
                            PRIMARY KEY (`menu_id`)
) ENGINE=InnoDB AUTO_INCREMENT=102 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='菜单管理';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_menu`
--

LOCK TABLES `sys_menu` WRITE;
/*!40000 ALTER TABLE `sys_menu` DISABLE KEYS */;
INSERT INTO `sys_menu` VALUES (1,0,'系统管理',NULL,NULL,0,'system',7),(2,1,'用户列表','sys/user',NULL,1,'admin',1),(3,1,'角色管理','sys/role',NULL,1,'role',2),(4,1,'菜单管理','sys/menu',NULL,1,'menu',3),(15,2,'查看',NULL,'sys:user:list,sys:user:info',2,NULL,0),(16,2,'新增',NULL,'sys:user:save,sys:role:select',2,NULL,0),(17,2,'修改',NULL,'sys:user:update,sys:role:select',2,NULL,0),(18,2,'删除',NULL,'sys:user:delete',2,NULL,0),(19,3,'查看',NULL,'sys:role:list,sys:role:info',2,NULL,0),(20,3,'新增',NULL,'sys:role:save,sys:menu:list',2,NULL,0),(21,3,'修改',NULL,'sys:role:update,sys:menu:list',2,NULL,0),(22,3,'删除',NULL,'sys:role:delete',2,NULL,0),(23,4,'查看',NULL,'sys:menu:list,sys:menu:info',2,NULL,0),(24,4,'新增',NULL,'sys:menu:save,sys:menu:select',2,NULL,0),(25,4,'修改',NULL,'sys:menu:update,sys:menu:select',2,NULL,0),(26,4,'删除',NULL,'sys:menu:delete',2,NULL,0),(31,0,'心理疏导','','',0,'zonghe',1),(52,31,'心理医生','/doctor/doctor-use',NULL,1,'geren',6),(53,86,'查看',NULL,'eva:eva:list,eva:eva:info',2,NULL,6),(54,86,'新增',NULL,'eva:eva:save',2,NULL,6),(55,86,'修改',NULL,'eva:eva:update',2,NULL,6),(56,86,'删除',NULL,'eva:eva:delete',2,NULL,6),(57,0,'心理测评','','',0,'bianji',2),(60,89,'查看',NULL,'sli:sli:list,sli:sli:info',2,NULL,6),(61,89,'新增',NULL,'sli:sli:save',2,NULL,6),(62,89,'修改',NULL,'sli:sli:update',2,NULL,6),(63,89,'删除',NULL,'sli:sli:delete',2,NULL,6),(64,57,'心理测评','evaluation/eva-use','',1,'mudedi',0),(65,57,'我的测评','evaluation/eva-mine','',1,'tubiao',3),(67,0,'我的信息','/homepage/homepage','',1,'admin',5),(69,0,'相关问题','/homepage/problem','',1,'sousuo',8),(72,1,'系统日志','/sys/log','',1,'config',4),(73,72,'查看',NULL,'sys:log:list,sys:log:info',2,NULL,0),(74,31,'心理讲座','/lecture/lecture-use','',1,'tixing',0),(75,31,'心理知识','/notice/notice-use','',1,'log',0),(77,0,'心事圈','/comment/comment-use','',1,'xiangqufill',4),(79,67,'查找','','sys:user:list,sys:user:info',2,'',0),(80,1,'上传图片管理','/oss/oss','',1,'shouye',7),(81,80,'查找','','sys:oss:all',2,'',0),(82,0,'前台管理','','',0,'shezhi',6),(84,82,'预约管理','','',0,'tixing',0),(85,82,'测评管理','','',0,'zhedie',1),(86,85,'测评问卷管理','evaluation/evaluation','',1,'config',0),(87,85,'用户测评管理','evaluation/UE','',1,'tubiao',1),(89,82,'轮播图管理','/slides/slides','',1,'daohang',3),(91,82,'心理知识管理','/notice/notice','',1,'duanxin',4),(92,82,'心理医生管理','/doctor/doctor','',1,'geren',2),(93,67,'修改',NULL,'sys:user:update,sys:role:select',2,NULL,0),(94,67,'上传','','sys:oss:all',2,'',0),(95,84,'心理医生预约','/doctor/doctor-record','',1,'log',0),(96,0,'我的预约','','',0,'job',3),(97,96,'心理医生预约','/doctor/doctor-mine','',1,'geren',0),(98,82,'心理讲座管理','/lecture/lecture','',1,'bianji',2),(99,84,'心理讲座预约','/lecture/lecture-record','',1,'pinglun',1),(100,96,'心理讲座预约','/lecture/lecture-mine','',1,'pinglun',1),(101,82,'心事圈管理','/comment/comment','',1,'pinglun',3);
/*!40000 ALTER TABLE `sys_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_oss`
--

DROP TABLE IF EXISTS `sys_oss`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_oss` (
                           `id` bigint NOT NULL AUTO_INCREMENT,
                           `url` varchar(200) DEFAULT NULL COMMENT 'URL地址',
                           `create_date` datetime DEFAULT NULL COMMENT '创建时间',
                           PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='文件上传';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_oss`
--

LOCK TABLES `sys_oss` WRITE;
/*!40000 ALTER TABLE `sys_oss` DISABLE KEYS */;
INSERT INTO `sys_oss` VALUES (6,'rnapxb47a.hn-bkt.clouddn.com/upload/20221223/2221aabaf68d44bc94fcd1f9589d40f5.jpg','2022-12-23 00:06:54'),(7,'rnapxb47a.hn-bkt.clouddn.com/upload/20221223/c49b7458ff7c4b13bf5454a2ecc5a31f.jpg','2022-12-23 00:08:28'),(8,'rnapxb47a.hn-bkt.clouddn.com/upload/20221225/7ec13b9da0d9452fa668e962acf97770.png','2022-12-25 20:06:48'),(9,'rnapxb47a.hn-bkt.clouddn.com/upload/20221225/05169dabe3504c54b9b10a37536ae212.jpeg','2022-12-25 22:35:36'),(11,'rnapxb47a.hn-bkt.clouddn.com/upload/20221225/9a40dbc6e9f444cbb306b3059b958605.jpg','2022-12-25 22:43:05'),(12,'rnapxb47a.hn-bkt.clouddn.com/upload/20221225/675d6f13be1445a79b17a4063080107c.png','2022-12-25 22:46:08'),(13,'rnapxb47a.hn-bkt.clouddn.com/upload/20221225/2fb2abbf391346238e54ff29f7933c34.jpg','2022-12-25 22:46:34'),(14,'rnapxb47a.hn-bkt.clouddn.com/upload/20221225/92e775354ca742e6a6e21e4f632b250f.jpg','2022-12-25 22:55:57'),(15,'rnapxb47a.hn-bkt.clouddn.com/upload/20221225/01f05880c8cf42cea829c8b0aa0f79e0.jpg','2022-12-25 23:40:58'),(16,'rnapxb47a.hn-bkt.clouddn.com/upload/20221225/b741df3902dc4303859ba0e142ac52c9.png','2022-12-25 23:41:04'),(17,'rnapxb47a.hn-bkt.clouddn.com/upload/20221225/c05e82a59c57490893ba753160469e5c.jpg','2022-12-25 23:42:47'),(18,'rnapxb47a.hn-bkt.clouddn.com/upload/20221225/ba83fd448f774c1b8b5b2858a9aee4d8.png','2022-12-25 23:42:52'),(19,'rnapxb47a.hn-bkt.clouddn.com/upload/20221225/39915a90fe3f4a3598bdff6c9ecb2c0d.jpg','2022-12-25 23:42:57'),(20,'rnapxb47a.hn-bkt.clouddn.com/upload/20221225/b61d478d902a4dabae3a3621b0ec4517.jpg','2022-12-25 23:43:03'),(21,'rnapxb47a.hn-bkt.clouddn.com/upload/20221225/bdcebb0d29f64b08a6f17e4a2d0dbb8d.jpg','2022-12-25 23:43:08'),(22,'rnapxb47a.hn-bkt.clouddn.com/upload/20221225/47007d314f284c3394baac38f6dba5e5.png','2022-12-25 23:43:12'),(23,'rnapxb47a.hn-bkt.clouddn.com/upload/20221226/661608f8403f43d7ab224d8438af109b.jpg','2022-12-26 00:35:05'),(24,'rnapxb47a.hn-bkt.clouddn.com/upload/20221229/736b967b265e4de6afc4f8c0cdad94c4.jpg','2022-12-29 19:31:45');
/*!40000 ALTER TABLE `sys_oss` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_role`
--

DROP TABLE IF EXISTS `sys_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_role` (
                            `role_id` bigint NOT NULL AUTO_INCREMENT,
                            `role_name` varchar(100) DEFAULT NULL COMMENT '角色名称',
                            `remark` varchar(100) DEFAULT NULL COMMENT '备注',
                            `create_user_id` bigint DEFAULT NULL COMMENT '创建者ID',
                            `create_time` datetime DEFAULT NULL COMMENT '创建时间',
                            PRIMARY KEY (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='角色';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_role`
--

LOCK TABLES `sys_role` WRITE;
/*!40000 ALTER TABLE `sys_role` DISABLE KEYS */;
INSERT INTO `sys_role` VALUES (1,'普通用户','普通权限',1,'2020-10-05 15:48:23'),(2,'管理员','超级管理员',1,'2020-10-05 15:48:49');
/*!40000 ALTER TABLE `sys_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_role_menu`
--

DROP TABLE IF EXISTS `sys_role_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_role_menu` (
                                 `id` bigint NOT NULL AUTO_INCREMENT,
                                 `role_id` bigint DEFAULT NULL COMMENT '角色ID',
                                 `menu_id` bigint DEFAULT NULL COMMENT '菜单ID',
                                 PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=249 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='角色与菜单对应关系';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_role_menu`
--

LOCK TABLES `sys_role_menu` WRITE;
/*!40000 ALTER TABLE `sys_role_menu` DISABLE KEYS */;
INSERT INTO `sys_role_menu` VALUES (167,1,31),(168,1,52),(169,1,74),(170,1,75),(171,1,57),(172,1,64),(173,1,65),(174,1,67),(175,1,79),(176,1,93),(177,1,94),(178,1,69),(179,1,77),(180,1,96),(181,1,97),(182,1,100),(183,1,-666666),(184,2,1),(185,2,2),(186,2,15),(187,2,16),(188,2,17),(189,2,18),(190,2,3),(191,2,19),(192,2,20),(193,2,21),(194,2,22),(195,2,4),(196,2,23),(197,2,24),(198,2,25),(199,2,26),(200,2,71),(201,2,7),(202,2,8),(203,2,9),(204,2,10),(205,2,11),(206,2,12),(207,2,13),(208,2,14),(209,2,72),(210,2,73),(211,2,80),(212,2,81),(213,2,31),(214,2,52),(215,2,74),(216,2,75),(217,2,57),(218,2,64),(219,2,65),(220,2,67),(221,2,79),(222,2,93),(223,2,94),(224,2,69),(225,2,77),(226,2,82),(227,2,84),(228,2,95),(229,2,99),(230,2,85),(231,2,86),(232,2,53),(233,2,54),(234,2,55),(235,2,56),(236,2,87),(237,2,89),(238,2,60),(239,2,61),(240,2,62),(241,2,63),(242,2,91),(243,2,92),(244,2,98),(245,2,96),(246,2,97),(247,2,100),(248,2,-666666);
/*!40000 ALTER TABLE `sys_role_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_user`
--

DROP TABLE IF EXISTS `sys_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_user` (
                            `user_id` bigint NOT NULL AUTO_INCREMENT,
                            `username` varchar(50) NOT NULL COMMENT '用户名',
                            `password` varchar(100) DEFAULT NULL COMMENT '密码',
                            `salt` varchar(20) DEFAULT NULL COMMENT '盐',
                            `email` varchar(100) DEFAULT NULL COMMENT '邮箱',
                            `mobile` varchar(100) DEFAULT NULL COMMENT '手机号',
                            `status` tinyint DEFAULT NULL COMMENT '状态  0：禁用   1：正常',
                            `create_time` datetime DEFAULT NULL COMMENT '创建时间',
                            `name` varchar(100) NOT NULL,
                            `shenfenzheng` varchar(100) NOT NULL,
                            `jianjie` varchar(100) DEFAULT NULL,
                            `bingshi` varchar(100) DEFAULT NULL,
                            `head` varchar(100) NOT NULL,
                            PRIMARY KEY (`user_id`),
                            UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=99 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='系统用户';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_user`
--

LOCK TABLES `sys_user` WRITE;
/*!40000 ALTER TABLE `sys_user` DISABLE KEYS */;
INSERT INTO `sys_user` VALUES (1,'admin','9ec9750e709431dad22365cabc5c625482e574c74adaebba7dd02f1129e4ce1d','YzcmCZNvbXocrsz9dm8e','admin@163.com','15328683336',1,'2016-11-11 11:11:11','管理员','4sDGBwMFJ0mXYJvwogNsBLZkK1daI5pbQJeCUES8leg=','管理员','管理员','rnapxb47a.hn-bkt.clouddn.com/upload/20221225/7ec13b9da0d9452fa668e962acf97770.png'),(2,'normal','0c575fe8e48e500eef2b17803da3031d43bad6799287dcb4b9e50c90a00f77d0','ufbKxFHbCEtWoAP1a4pc','normal@163.com','17679082788',1,'2020-10-07 19:06:42','normal','DCE6fN4amCnePXlsAdpG5cPAQNkT9to+qyr7bw5Ddgo=',NULL,NULL,'rnapxb47a.hn-bkt.clouddn.com/upload/20221225/7ec13b9da0d9452fa668e962acf97770.png'),(9,'川师第一深情、','f4c743c148aa18c8b423b3afb8534a62a5986614397748b99a193d021fee0d9f','bJDydBKzKx1UQn00E5Vp','58276034@qq.com','18981632470',1,'2022-12-25 20:08:08','任真','4sDGBwMFJ0mXYJvwogNsBLZkK1daI5pbQJeCUES8leg=',NULL,NULL,'rnapxb47a.hn-bkt.clouddn.com/upload/20221226/661608f8403f43d7ab224d8438af109b.jpg'),(94,'吴翔','09c910e657ec39f2b9127c0b6b8d9d21984ed00292cb84a25c3f7d161c0d6c2a','63apZzPp0qxoGJC1Cgwc','11@qq.com','11111111111',1,'2022-12-25 22:30:00','吴翔','DCE6fN4amCnePXlsAdpG5cPAQNkT9to+qyr7bw5Ddgo=',NULL,NULL,'rnapxb47a.hn-bkt.clouddn.com/upload/20221225/b741df3902dc4303859ba0e142ac52c9.png'),(95,'秦艳鸿','b1d18130e9b685d2995f729c99a933838132490fa51db7a4c82971cc9849edcf','9zseLmnmbWkN4ZCSZISy','22@qq.com','12222222222',1,'2022-12-25 22:30:36','秦艳鸿','DCE6fN4amCnePXlsAdpG5cPAQNkT9to+qyr7bw5Ddgo=',NULL,NULL,'rnapxb47a.hn-bkt.clouddn.com/upload/20221225/05169dabe3504c54b9b10a37536ae212.jpeg'),(96,'李菊红','9ad5c68b94dd45c3d3b424e04809df4f539f4ddd9ab23b8a5d153d8e76dac8ff','zf6jlMqkDd9sFfJ2AXAD','333@qq.com','13333333333',1,'2022-12-26 12:20:43','李菊红','DCE6fN4amCnePXlsAdpG5cPAQNkT9to+qyr7bw5Ddgo=',NULL,NULL,'rnapxb47a.hn-bkt.clouddn.com/upload/20221225/01f05880c8cf42cea829c8b0aa0f79e0.jpg'),(97,'胡少锴','78f0b9189f0a0ebb3402b77083919955d8e6dff2b5f53ed6a17fd003866fb48d','2k9iG15rpS8Ox6vNqzFy','444@qq.com','14444444444',1,'2022-12-26 12:30:21','胡少锴','DCE6fN4amCnePXlsAdpG5cPAQNkT9to+qyr7bw5Ddgo=',NULL,NULL,'rnapxb47a.hn-bkt.clouddn.com/upload/20221225/92e775354ca742e6a6e21e4f632b250f.jpg'),(98,'hx11111','55aa1662774d89fba244c61142d41dd640cbd42293a1cd5cb0490024b7e97854','SlHE2SE6zTc36RAeq9an','15523802450@qq.com','15523802450',1,'2022-12-29 19:30:37','胡璇','CPozVuwl0qVO4PRh4mtZvCjv8ni2gi41CFOakTGStRo=',NULL,'荨麻疹','rnapxb47a.hn-bkt.clouddn.com/upload/20221229/736b967b265e4de6afc4f8c0cdad94c4.jpg');
/*!40000 ALTER TABLE `sys_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_user_role`
--

DROP TABLE IF EXISTS `sys_user_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_user_role` (
                                 `id` bigint NOT NULL AUTO_INCREMENT,
                                 `user_id` bigint DEFAULT NULL COMMENT '用户ID',
                                 `role_id` bigint DEFAULT NULL COMMENT '角色ID',
                                 PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='用户与角色对应关系';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_user_role`
--

LOCK TABLES `sys_user_role` WRITE;
/*!40000 ALTER TABLE `sys_user_role` DISABLE KEYS */;
INSERT INTO `sys_user_role` VALUES (19,91,1),(20,93,1),(21,92,1),(42,1,2),(44,2,1),(45,94,1),(46,95,1),(47,97,1),(48,96,1),(52,9,1),(55,98,1);
/*!40000 ALTER TABLE `sys_user_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_user_token`
--

DROP TABLE IF EXISTS `sys_user_token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_user_token` (
                                  `user_id` bigint NOT NULL,
                                  `token` varchar(100) NOT NULL COMMENT 'token',
                                  `expire_time` datetime DEFAULT NULL COMMENT '过期时间',
                                  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
                                  PRIMARY KEY (`user_id`),
                                  UNIQUE KEY `token` (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='系统用户Token';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_user_token`
--

LOCK TABLES `sys_user_token` WRITE;
/*!40000 ALTER TABLE `sys_user_token` DISABLE KEYS */;
INSERT INTO `sys_user_token` VALUES (1,'24c84e4b5b618938ada09aa30471c6f1','2022-12-31 09:31:41','2022-12-30 21:31:41'),(2,'4f8e5c68b8c0f89b4a1a376bfe9e4d35','2020-10-08 07:07:05','2020-10-07 19:07:05'),(5,'4f9ddf784e6834f96169326175d27391','2022-12-18 03:29:57','2022-12-17 15:29:57'),(9,'428dc067f744dbc63433a8d5911e51f3','2022-12-30 07:12:37','2022-12-29 19:12:37'),(92,'dd9c4bf68c7bf36d77bae461a2a6b391','2022-12-26 10:24:04','2022-12-25 22:24:04'),(95,'278ebe6f252d78620f612432a4bb3c3c','2022-12-26 10:47:38','2022-12-25 22:47:38'),(98,'ee220b617ae359f4e24bde9c46fbce57','2022-12-30 09:04:47','2022-12-29 21:04:47');
/*!40000 ALTER TABLE `sys_user_token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_user`
--

DROP TABLE IF EXISTS `tb_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_user` (
                           `user_id` bigint NOT NULL AUTO_INCREMENT,
                           `username` varchar(50) NOT NULL COMMENT '用户名',
                           `mobile` varchar(20) NOT NULL COMMENT '手机号',
                           `password` varchar(64) DEFAULT NULL COMMENT '密码',
                           `create_time` datetime DEFAULT NULL COMMENT '创建时间',
                           PRIMARY KEY (`user_id`),
                           UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='用户';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_user`
--

LOCK TABLES `tb_user` WRITE;
/*!40000 ALTER TABLE `tb_user` DISABLE KEYS */;
INSERT INTO `tb_user` VALUES (1,'mark','13612345678','8c6976e5b5410415bde908bd4dee15dfb167a9c873fc4bb8a81f6f2ab448a918','2017-03-23 22:37:41');
/*!40000 ALTER TABLE `tb_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_answer`
--

DROP TABLE IF EXISTS `user_answer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_answer` (
                               `user_answer_id` mediumint unsigned NOT NULL AUTO_INCREMENT,
                               `user_id` mediumint NOT NULL COMMENT '用户ID：[0,8388607]用户获取其他与用户相关的数据',
                               `exam_id` mediumint NOT NULL DEFAULT '0' COMMENT '考试id',
                               `score` double(8,2) DEFAULT '0.00' COMMENT '分数',
                               `answers` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '答案',
                               `score_detail` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '考试名',
                               `objective_score` double(8,2) DEFAULT '0.00' COMMENT '客观题得分',
                               `subjective_score` double(8,2) DEFAULT '0.00' COMMENT '主观题得分',
                               `score_state` tinyint DEFAULT '0' COMMENT '评分状态',
                               `nickname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '提交人',
                               `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间：',
                               `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间：',
                               PRIMARY KEY (`user_answer_id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_answer`
--

LOCK TABLES `user_answer` WRITE;
/*!40000 ALTER TABLE `user_answer` DISABLE KEYS */;
INSERT INTO `user_answer` VALUES (27,1,1,41.00,'\n    在本次的 抑郁症测试 中，您获得的分数是 41 分，总共完成题目数量为 20 道\n\n    根据您的回答，给出如下评价：\n        你可能有轻度的心理困惑，可尝试进行自我心理调整来解决困扰，不会对你的心理健康产生影响，偶尔参加感兴趣的心理讲座，更好的调节自己的情绪。\n\n    本次 抑郁症测试 只能用于参考，不能作为医疗标准。\n\n    请继续保持您愉快的心情，生活也会变得更加灿烂，积极面对一切！','抑郁症测试',0.00,0.00,1,'admin','2022-12-19 09:58:37','2022-12-19 09:58:37'),(28,1,4,9.00,'\n    在本次的 PSTRI（心理压力）压力测试 中，您获得的分数是 9 分，总共完成题目数量为 20 道\n\n    根据您的回答，给出如下评价：\n\n        您患有明显严重的病症，并且情绪比较敏感，对自己、他人和人际关系有明显的影响，内心里的痛苦严重影响到自己的身体健康，逃避生活，恐惧工作，建议及时就医，进行准确的治疗。\n\n    本次 PSTRI（心理压力）压力测试 只能用于参考，不能作为医疗标准。\n\n    请不用担心，你只是存在一些焦虑情绪，生活中要调整好心态，积极面对一切！','PSTRI（心理压力）压力测试',0.00,0.00,1,'admin','2022-12-19 09:59:37','2022-12-19 09:59:37'),(29,1,3,22.00,'\n    在本次的 焦虑症测试题 中，您获得的分数是 22 分，总共完成题目数量为 8 道\n\n    根据您的回答，给出如下评价：\n        你可能有轻度的心理困惑，可尝试进行自我心理调整来解决困扰，不会对你的心理健康产生影响，偶尔参加感兴趣的心理讲座，更好的调节自己的情绪。\n\n    本次 焦虑症测试题 只能用于参考，不能作为医疗标准。\n\n    请继续保持您愉快的心情，生活也会变得更加灿烂，积极面对一切！','焦虑症测试题',0.00,0.00,1,'admin','2022-12-19 10:00:03','2022-12-19 10:00:03'),(30,1,2,42.00,'\n    在本次的 HCL-32轻躁狂症自评表 中，您获得的分数是 42 分，总共完成题目数量为 12 道\n\n    根据您的回答，给出如下评价：\n\n        恭喜您，您很健康，请保持你健康的心情\n\n    本次 HCL-32轻躁狂症自评表 只能用于参考，不能作为医疗标准。\n\n    请继续保持您愉快的心情，生活也会变得更加灿烂，积极面对一切！','HCL-32轻躁狂症自评表',0.00,0.00,1,'admin','2022-12-19 10:00:58','2022-12-19 10:00:58'),(31,2,1,40.00,'\n    在本次的 抑郁症测试 中，您获得的分数是 40 分，总共完成题目数量为 20 道\n\n    根据您的回答，给出如下评价：\n        你可能有轻度的心理困惑，可尝试进行自我心理调整来解决困扰，不会对你的心理健康产生影响，偶尔参加感兴趣的心理讲座，更好的调节自己的情绪。\n\n    本次 抑郁症测试 只能用于参考，不能作为医疗标准。\n\n    请继续保持您愉快的心情，生活也会变得更加灿烂，积极面对一切！','抑郁症测试',0.00,0.00,1,'normal','2022-12-19 10:02:10','2022-12-19 10:02:54'),(32,1,1,17.00,'\n    在本次的 抑郁症测试 中，您获得的分数是 17 分，总共完成题目数量为 5 道\n\n    根据您的回答，给出如下评价：\n\n        恭喜您，您很健康，请保持你健康的心情\n\n    本次 抑郁症测试 只能用于参考，不能作为医疗标准。\n\n    请继续保持您愉快的心情，生活也会变得更加灿烂，积极面对一切！','抑郁症测试',0.00,0.00,1,'admin','2022-12-20 13:27:02','2022-12-20 13:27:02'),(33,9,1,4.00,'\n    在本次的 抑郁症测试 中，您获得的分数是 4 分，总共完成题目数量为 1 道\n\n    根据您的回答，给出如下评价：\n\n        恭喜您，您很健康，请保持你健康的心情\n\n    本次 抑郁症测试 只能用于参考，不能作为医疗标准。\n\n    请继续保持您愉快的心情，生活也会变得更加灿烂，积极面对一切！','抑郁症测试',0.00,0.00,1,'川师第一深情、','2022-12-25 13:23:46','2022-12-25 13:23:46'),(34,95,1,9.00,'\n    在本次的 抑郁症测试 中，您获得的分数是 9 分，总共完成题目数量为 3 道\n\n    根据您的回答，给出如下评价：\n        你可能有轻度的心理困惑，可尝试进行自我心理调整来解决困扰，不会对你的心理健康产生影响，偶尔参加感兴趣的心理讲座，更好的调节自己的情绪。\n\n    本次 抑郁症测试 只能用于参考，不能作为医疗标准。\n\n    请继续保持您愉快的心情，生活也会变得更加灿烂，积极面对一切！','抑郁症测试',0.00,0.00,1,'222','2022-12-25 14:56:24','2022-12-25 14:56:24'),(35,9,4,42.00,'\n    在本次的 PSTRI（心理压力）压力测试 中，您获得的分数是 42 分，总共完成题目数量为 20 道\n\n    根据您的回答，给出如下评价：\n        你可能有轻度的心理困惑，可尝试进行自我心理调整来解决困扰，不会对你的心理健康产生影响，偶尔参加感兴趣的心理讲座，更好的调节自己的情绪。\n\n    本次 PSTRI（心理压力）压力测试 只能用于参考，不能作为医疗标准。\n\n    请继续保持您愉快的心情，生活也会变得更加灿烂，积极面对一切！','PSTRI（心理压力）压力测试',0.00,0.00,1,'川师第一深情、','2022-12-28 15:56:31','2022-12-28 15:56:31'),(36,98,1,28.00,'\n    在本次的 抑郁症测试 中，您获得的分数是 28 分，总共完成题目数量为 7 道\n\n    根据您的回答，给出如下评价：\n\n        恭喜您，您很健康，请保持你健康的心情\n\n    本次 抑郁症测试 只能用于参考，不能作为医疗标准。\n\n    请继续保持您愉快的心情，生活也会变得更加灿烂，积极面对一切！','抑郁症测试',0.00,0.00,1,'hx11111','2022-12-29 11:34:43','2022-12-29 11:34:43');
/*!40000 ALTER TABLE `user_answer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'dxs'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-12-31 20:40:16
