-- MySQL dump 10.13  Distrib 8.0.44, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: osdb
-- ------------------------------------------------------
-- Server version	8.0.44

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
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(150) COLLATE utf8mb4_et_0900_ai_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_et_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `group_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_et_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_permission` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_et_0900_ai_ci NOT NULL,
  `content_type_id` int NOT NULL,
  `codename` varchar(100) COLLATE utf8mb4_et_0900_ai_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_et_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',3,'add_permission'),(6,'Can change permission',3,'change_permission'),(7,'Can delete permission',3,'delete_permission'),(8,'Can view permission',3,'view_permission'),(9,'Can add group',2,'add_group'),(10,'Can change group',2,'change_group'),(11,'Can delete group',2,'delete_group'),(12,'Can view group',2,'view_group'),(13,'Can add user',4,'add_user'),(14,'Can change user',4,'change_user'),(15,'Can delete user',4,'delete_user'),(16,'Can view user',4,'view_user'),(17,'Can add content type',5,'add_contenttype'),(18,'Can change content type',5,'change_contenttype'),(19,'Can delete content type',5,'delete_contenttype'),(20,'Can view content type',5,'view_contenttype'),(21,'Can add session',6,'add_session'),(22,'Can change session',6,'change_session'),(23,'Can delete session',6,'delete_session'),(24,'Can view session',6,'view_session'),(25,'Can add category',7,'add_category'),(26,'Can change category',7,'change_category'),(27,'Can delete category',7,'delete_category'),(28,'Can view category',7,'view_category'),(29,'Can add member',8,'add_member'),(30,'Can change member',8,'change_member'),(31,'Can delete member',8,'delete_member'),(32,'Can view member',8,'view_member'),(33,'Can add order',9,'add_order'),(34,'Can change order',9,'change_order'),(35,'Can delete order',9,'delete_order'),(36,'Can view order',9,'view_order'),(37,'Can add product',10,'add_product'),(38,'Can change product',10,'change_product'),(39,'Can delete product',10,'delete_product'),(40,'Can view product',10,'view_product'),(41,'Can add shop',11,'add_shop'),(42,'Can change shop',11,'change_shop'),(43,'Can delete shop',11,'delete_shop'),(44,'Can view shop',11,'view_shop'),(45,'Can add user',12,'add_user'),(46,'Can change user',12,'change_user'),(47,'Can delete user',12,'delete_user'),(48,'Can view user',12,'view_user'),(49,'Can add order detail',13,'add_orderdetail'),(50,'Can change order detail',13,'change_orderdetail'),(51,'Can delete order detail',13,'delete_orderdetail'),(52,'Can view order detail',13,'view_orderdetail'),(53,'Can add orders',14,'add_orders'),(54,'Can change orders',14,'change_orders'),(55,'Can delete orders',14,'delete_orders'),(56,'Can view orders',14,'view_orders'),(57,'Can add payment',15,'add_payment'),(58,'Can change payment',15,'change_payment'),(59,'Can delete payment',15,'delete_payment'),(60,'Can view payment',15,'view_payment');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `password` varchar(128) COLLATE utf8mb4_et_0900_ai_ci NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) COLLATE utf8mb4_et_0900_ai_ci NOT NULL,
  `first_name` varchar(150) COLLATE utf8mb4_et_0900_ai_ci NOT NULL,
  `last_name` varchar(150) COLLATE utf8mb4_et_0900_ai_ci NOT NULL,
  `email` varchar(254) COLLATE utf8mb4_et_0900_ai_ci NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_et_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_groups` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `group_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_et_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_et_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `category` (
  `id` int unsigned NOT NULL AUTO_INCREMENT COMMENT '菜品分类id',
  `shop_id` int DEFAULT NULL COMMENT '店铺id',
  `name` varchar(50) DEFAULT NULL COMMENT '分类名称',
  `status` tinyint NOT NULL DEFAULT '1' COMMENT '状态：1正常 9删除',
  `create_at` datetime DEFAULT NULL COMMENT '添加时间',
  `update_at` datetime DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES (12,6,'锡纸饭',1,'2025-12-24 13:17:17','2025-12-24 13:17:17'),(13,6,'盖浇饭',1,'2025-12-24 13:17:34','2025-12-24 13:17:34'),(14,7,'炒饭',1,'2025-12-25 05:22:59','2025-12-25 05:22:59'),(15,7,'现卤鸭货',1,'2025-12-25 05:23:23','2025-12-25 05:23:23'),(16,7,'小料',1,'2025-12-25 05:23:34','2025-12-25 05:23:34'),(17,6,'炒米炒面',1,'2025-12-25 10:30:49','2025-12-25 10:30:49');
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_admin_log` (
  `id` int NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext COLLATE utf8mb4_et_0900_ai_ci,
  `object_repr` varchar(200) COLLATE utf8mb4_et_0900_ai_ci NOT NULL,
  `action_flag` smallint unsigned NOT NULL,
  `change_message` longtext COLLATE utf8mb4_et_0900_ai_ci NOT NULL,
  `content_type_id` int DEFAULT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `django_admin_log_chk_1` CHECK ((`action_flag` >= 0))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_et_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_content_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) COLLATE utf8mb4_et_0900_ai_ci NOT NULL,
  `model` varchar(100) COLLATE utf8mb4_et_0900_ai_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_et_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(2,'auth','group'),(3,'auth','permission'),(4,'auth','user'),(5,'contenttypes','contenttype'),(7,'myadmin','category'),(8,'myadmin','member'),(9,'myadmin','order'),(13,'myadmin','orderdetail'),(14,'myadmin','orders'),(15,'myadmin','payment'),(10,'myadmin','product'),(11,'myadmin','shop'),(12,'myadmin','user'),(6,'sessions','session');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_migrations` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2025-12-24 14:49:45.042765'),(2,'auth','0001_initial','2025-12-24 14:49:45.819617'),(3,'admin','0001_initial','2025-12-24 14:49:46.005646'),(4,'admin','0002_logentry_remove_auto_add','2025-12-24 14:49:46.011987'),(5,'admin','0003_logentry_add_action_flag_choices','2025-12-24 14:49:46.017675'),(6,'contenttypes','0002_remove_content_type_name','2025-12-24 14:49:46.171494'),(7,'auth','0002_alter_permission_name_max_length','2025-12-24 14:49:46.251259'),(8,'auth','0003_alter_user_email_max_length','2025-12-24 14:49:46.280336'),(9,'auth','0004_alter_user_username_opts','2025-12-24 14:49:46.287651'),(10,'auth','0005_alter_user_last_login_null','2025-12-24 14:49:46.369209'),(11,'auth','0006_require_contenttypes_0002','2025-12-24 14:49:46.372002'),(12,'auth','0007_alter_validators_add_error_messages','2025-12-24 14:49:46.379081'),(13,'auth','0008_alter_user_username_max_length','2025-12-24 14:49:46.464286'),(14,'auth','0009_alter_user_last_name_max_length','2025-12-24 14:49:46.538663'),(15,'auth','0010_alter_group_name_max_length','2025-12-24 14:49:46.554606'),(16,'auth','0011_update_proxy_permissions','2025-12-24 14:49:46.561721'),(17,'auth','0012_alter_user_first_name_max_length','2025-12-24 14:49:46.658105'),(18,'myadmin','0001_initial','2025-12-24 14:51:28.624880'),(19,'sessions','0001_initial','2025-12-24 14:51:28.630543'),(20,'myadmin','0002_orderdetail_orders_payment_delete_order_and_more','2025-12-25 03:13:07.167481');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('025hjcbidyjnxdss0zdxwtmg4h589srz','.eJzdk-uO2yAQhV8l8u9NxAwwBl6lWVkY8MZtYlu-dJWu8u4dNpdG3aiq1P5ay7IMPsyc82Heiu9pbJtj6GMqXGERTPFUTLt-aLumL9xb0cbC0VPR-UMWbBdKVmwXHUSzXSyVtF1KkSLPSFL8FUPgeUvxUobX8FvouU01tIGHUBJpgyjURhtLBLT5OrywqPZd91BlBVm8iHyMY5qms5VQy9xYl2wCkK2oRgcWDbu-y27B3K5sZ_bzwiuB_YzJz6nyM4tQoF4DrlGtABxaJxWLlyE-VEgH5JQqTlyEBS_9eNy305xJAV55Ad4BsxqB_aXa3MAMbWQfX85iFGdS1YX0tWx1rfQAnjRyowWVAPrC5Ve7FCE_M45Hrcc2sBDkRvwVEc5rnZJ_JvKuOD0zE5A3BvLOVEmR7VBU5e8Mnk-nbKqPS5ivIFFci3waNhxy7me_rw78Zx4Lxw1eU71Mabzx4io8vHj9sfPdy-S77L4N324JdIN8-lQSNvv10_Taj7Ha-WmXASSwEI2GWtbKelSmUckTNlQLUiDul0x-n80CSqXp7nDQh7hiLco1mhUY935_jHtW2JUwTpDTOh8OHw9t95_zRaUBgtQSrawb0LaJytSSUhNSIKJH-RSRwH_Md95OveJw6rKdPwGy_309:1vYk3K:B80sxsH_DDBKTDwV0Zh3LI2-dBFfh5LLAj3gFCIcWKo','2026-01-08 12:02:46.660748'),('06kw4bcbn1ov1bjnpcxekapkbjkx6o5w','.eJzdme1u6kgMhm-lmt9tZM-HZya3sl2hMJkUdluCCOxRzxH3fjxAppwCKVTdH01VRQHeJH5sjz2GX-K_uJo3r6GtoyiFN2jEvehm7XK-aFpR_hLzWpR0LxbVSxI8bih6eNyYAM3jxpOlx42FWPM7ijR_KkPg9z3Vh9vwNXwWWn7MZDkP_BItkXFSgi6M80RIxT_LJxZNq8XirMoDeXkQVXW9il23NyVMVXqwsWwESjZFNyawaDlrF8ladPkvmbOu1hu-EtmeVazWcVKtWSRBmgeUD1LfIZbSl0qzeLOszypUiVRqLbZ8ExY8tavX53m3Tp5C2fsL5ZHDvJHI9sWpy45Zzmu246-9WMLeU5ODp_vbTvo7nXGecqowQBbRHPzy9rhYYzomd5x79GoeWIiqgKs8wry-1GrYIzvF9v7AI2_kIaXBQAEOlCf5nsfGwJlm0LpBHryGx9yBKjWUBi7xHCl6HmVu5THOGV84AyjRFj_idCku5IOT03RulORjcP52IATOV47AZaCsyED0CSDvCy3JWBzk4VLARcAHG95IlC_89STmQxJWbP_m5YcqLzd1nC9Uc-ZTre2F5YZD9OoMvSStTSGl9KTTcot_rjdrOHjkkY8OnOciFLE-b8chtHBlrmLCBTOQq70ih9beCscl2PoCrUbn3WlsbSrtTtVhV1I4zo6L7lfApVjSh3lLf-StuxnOA7qCpAfggvkezpGNKVoBB4GuqpS9ucZ9BMSKDORvB0oNEbW1Dk4rC4eySSuxSglpm-Z_iBmXRrjYHo8UPaIebG4XEMkVXlmvTvORTDTcDJq0-djzvCMx15NgCcPB2isyyc11w3glqeAmAAroFEVqDgppb_owDQRIXo8lS6BhrJ0iYw126_NYGlyhUUmvTrG4Q3BsXND01eUwma5K-UHMdooMpz4BZ7nW83bDyhM2HSGR2JSDHkzaexoyPeeXlBCteb8xTLhT7DugzR3QHndA8LvthFX9ubck3_dBNRh4e7ZVWGML60Hz6Ylz-qceb2Ls9aVTcu8aLp07RS6dg5G9YL2DgrfMkvfPF6zv_XSz9aqEgS1lVmTr9Ses91ig47JI-qLvrfqk9YgfWc8Kzrltun1bb8K6H3ok9Dk4njlGyDzJjWeYEVw1ytFNNEJRpvr-Yw1nHubMG-ecIlRuWiMdVoRymXA8E4tQPlONeWwROje0McwuQueCMroBRujcpkc6xQidv-Ma8SjDtSUH8rtOJULlSH3X0UQonRG-53zCDOt2XT1PXtpFfBUlpJ-LXuaLTRdXeVLm-_DLg2k_Z9XiqasWydh5-Pdt_TcSdotklzZV1_1oV_VkVnUz_rjWBjEok0rHtEHjm1q7qaLYhBjYF8eXdNVzMhc1Ecij36DoBBgewD5Id4eu3P0P7Kao1P2kwp4eLd32NwYs79k:1vZ389:3iBfiTYxWbFPaGuUlLTKE6OzWM7zQyU5mklmDPLTtVk','2026-01-09 08:25:01.147449');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `member`
--

DROP TABLE IF EXISTS `member`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `member` (
  `id` int unsigned NOT NULL AUTO_INCREMENT COMMENT '会员表id',
  `nickname` varchar(50) DEFAULT NULL COMMENT '昵称',
  `avatar` varchar(255) DEFAULT NULL COMMENT '头像',
  `mobile` varchar(50) DEFAULT NULL COMMENT '电话',
  `status` tinyint unsigned NOT NULL DEFAULT '1' COMMENT '状态:1正常/2禁用/9删除',
  `create_at` datetime DEFAULT NULL COMMENT '添加时间',
  `update_at` datetime DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=123456797 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `member`
--

LOCK TABLES `member` WRITE;
/*!40000 ALTER TABLE `member` DISABLE KEYS */;
INSERT INTO `member` VALUES (123456790,'李四','1766646234.0877998.jpg','16666666666',1,'2025-12-24 11:59:25','2025-12-24 11:59:25'),(123456791,'王琪','1766659685.2437527.jpg','0000',1,'2025-12-25 10:48:05','2025-12-25 10:48:05'),(123456792,'华启帆','1766659767.053323.jpg','2222',1,'2025-12-25 10:49:27','2025-12-25 10:49:27'),(123456793,'辛仪冰','1766659795.452781.jpg','1111',1,'2025-12-25 10:49:55','2025-12-25 10:49:55'),(123456794,'姚重任','1766659844.4624076.jpg','4444',1,'2025-12-25 10:50:44','2025-12-25 10:50:44'),(123456795,'史君帅','1766659892.1468742.jpg','5555',1,'2025-12-25 10:51:32','2025-12-25 10:51:32'),(123456796,'钱宗耀','1766659917.351232.jpg','6666',1,'2025-12-25 10:51:57','2025-12-25 10:51:57');
/*!40000 ALTER TABLE `member` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_detail`
--

DROP TABLE IF EXISTS `order_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_detail` (
  `id` int unsigned NOT NULL AUTO_INCREMENT COMMENT '订单详情id',
  `order_id` int unsigned DEFAULT NULL COMMENT '订单id',
  `product_id` int unsigned DEFAULT NULL COMMENT '菜品id',
  `product_name` varchar(50) DEFAULT NULL COMMENT '菜品名称',
  `price` double(6,2) unsigned DEFAULT NULL COMMENT '单价',
  `quantity` int unsigned NOT NULL DEFAULT '1' COMMENT '数量',
  `status` tinyint unsigned NOT NULL DEFAULT '1' COMMENT '状态:1正常/9删除',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=76 DEFAULT CHARSET=utf8mb3 CHECKSUM=1 DELAY_KEY_WRITE=1 ROW_FORMAT=DYNAMIC COMMENT='订单详情信息表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_detail`
--

LOCK TABLES `order_detail` WRITE;
/*!40000 ALTER TABLE `order_detail` DISABLE KEYS */;
INSERT INTO `order_detail` VALUES (36,16,20,'黑鸦锡纸饭',13.00,1,1),(37,17,20,'黑鸦锡纸饭',13.00,7,1),(38,18,20,'黑鸦锡纸饭',13.00,3,1),(39,19,21,'青椒肉丝盖浇饭',10.00,1,1),(40,19,20,'黑鸦锡纸饭',13.00,1,1),(41,20,21,'青椒肉丝盖浇饭',10.00,5,1),(42,21,22,'经典锡纸饭',11.00,1,1),(43,22,22,'经典锡纸饭',11.00,2,1),(44,22,21,'青椒肉丝盖浇饭',10.00,3,1),(45,22,20,'黑鸦锡纸饭',13.00,6,1),(46,23,23,'鸭肠炒饭',14.00,1,1),(47,23,26,'鸭翅',6.00,1,1),(48,23,29,'烧饼',2.00,1,1),(49,24,28,'鸭脖',5.00,2,1),(50,25,23,'鸭肠炒饭',14.00,1,1),(51,25,24,'鸭板肠炒饭',13.00,1,1),(52,25,25,'蛋炒饭',11.00,1,1),(53,25,26,'鸭翅',6.00,1,1),(54,25,27,'鸭腿',6.00,1,1),(55,25,28,'鸭脖',5.00,1,1),(56,25,29,'烧饼',2.00,1,1),(57,26,25,'蛋炒饭',11.00,3,1),(58,27,28,'鸭脖',5.00,1,1),(59,27,27,'鸭腿',6.00,1,1),(60,27,24,'鸭板肠炒饭',13.00,1,1),(61,27,23,'鸭肠炒饭',14.00,1,1),(62,27,26,'鸭翅',6.00,1,1),(63,27,29,'烧饼',2.00,1,1),(64,27,25,'蛋炒饭',11.00,1,1),(65,28,22,'经典锡纸饭',11.00,2,1),(66,28,38,'虾仁盖浇饭',13.00,2,1),(67,28,39,'西红柿鸡蛋盖浇饭',10.00,1,1),(68,28,35,'锡纸花甲粉',11.00,2,1),(69,28,42,'土豆肉丝盖浇饭',10.00,2,1),(70,28,33,'炒面',7.00,2,1),(71,28,34,'炒米',7.00,2,1),(72,28,40,'日式盖饭',15.00,2,1),(73,29,20,'黑鸦锡纸饭',13.00,1,1),(74,29,22,'经典锡纸饭',11.00,1,1),(75,30,35,'锡纸花甲粉',11.00,8,1);
/*!40000 ALTER TABLE `order_detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `id` int unsigned NOT NULL AUTO_INCREMENT COMMENT '订单表id',
  `shop_id` int unsigned DEFAULT NULL COMMENT '店铺id号',
  `member_id` int unsigned DEFAULT NULL COMMENT '会员id',
  `user_id` int unsigned DEFAULT NULL COMMENT '操作员id',
  `money` double(8,2) DEFAULT NULL COMMENT '金额',
  `status` tinyint unsigned DEFAULT NULL COMMENT '订单状态:1过行中/2无效/3已完成',
  `payment_status` tinyint unsigned DEFAULT NULL COMMENT '支付状态:1未支付/2已支付/3已退款',
  `create_at` datetime DEFAULT NULL COMMENT '添加时间',
  `update_at` datetime DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (16,6,0,1,13.00,3,2,'2025-12-24 14:57:12','2025-12-24 14:57:12'),(17,6,0,16,91.00,3,2,'2025-12-25 01:11:12','2025-12-25 01:11:12'),(18,6,0,16,39.00,3,2,'2025-12-25 01:23:07','2025-12-25 01:23:07'),(19,6,0,16,23.00,2,2,'2025-12-25 01:34:27','2025-12-25 01:34:27'),(20,6,0,16,50.00,3,2,'2025-12-25 02:32:16','2025-12-25 02:32:16'),(21,6,0,15,11.00,2,2,'2025-12-25 05:19:54','2025-12-25 05:19:54'),(22,6,0,15,130.00,3,2,'2025-12-25 05:21:34','2025-12-25 05:21:34'),(23,7,0,15,22.00,2,2,'2025-12-25 05:27:42','2025-12-25 05:27:42'),(24,7,123456790,15,10.00,3,2,'2025-12-25 06:19:33','2025-12-25 06:19:33'),(25,7,123456790,1,57.00,1,2,'2025-12-25 07:06:51','2025-12-25 07:06:51'),(26,7,0,1,33.00,1,2,'2025-12-25 07:46:56','2025-12-25 07:46:56'),(27,7,123456791,16,57.00,3,2,'2025-12-25 10:52:43','2025-12-25 10:52:43'),(28,6,123456793,16,158.00,1,2,'2025-12-26 01:20:03','2025-12-26 01:20:03'),(29,6,0,1,24.00,1,2,'2025-12-26 01:48:28','2025-12-26 01:48:28'),(30,6,0,1,88.00,1,2,'2025-12-26 02:32:54','2025-12-26 02:32:54');
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payment`
--

DROP TABLE IF EXISTS `payment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payment` (
  `id` int unsigned NOT NULL AUTO_INCREMENT COMMENT '支付表id',
  `order_id` int unsigned DEFAULT NULL COMMENT '订单id',
  `member_id` int unsigned DEFAULT NULL COMMENT '会员id',
  `money` double(8,2) unsigned DEFAULT NULL COMMENT '支付金额',
  `type` tinyint unsigned DEFAULT NULL COMMENT '付款方式：1会员付款/2收银收款',
  `bank` tinyint unsigned DEFAULT NULL COMMENT '收款银行渠道:1微信/2余额/3现金/4支付宝',
  `status` tinyint unsigned DEFAULT NULL COMMENT '支付状态:1未支付/2已支付/3已退款',
  `create_at` datetime DEFAULT NULL COMMENT '添加时间',
  `update_at` datetime DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payment`
--

LOCK TABLES `payment` WRITE;
/*!40000 ALTER TABLE `payment` DISABLE KEYS */;
INSERT INTO `payment` VALUES (14,16,0,13.00,2,1,2,'2025-12-24 14:57:12','2025-12-24 14:57:12'),(15,17,0,91.00,2,1,2,'2025-12-25 01:11:12','2025-12-25 01:11:12'),(16,18,0,39.00,2,1,2,'2025-12-25 01:23:07','2025-12-25 01:23:07'),(17,19,0,23.00,2,1,2,'2025-12-25 01:34:27','2025-12-25 01:34:27'),(18,20,0,50.00,2,3,2,'2025-12-25 02:32:16','2025-12-25 02:32:16'),(19,21,0,11.00,2,1,2,'2025-12-25 05:19:54','2025-12-25 05:19:54'),(20,22,0,130.00,2,3,2,'2025-12-25 05:21:34','2025-12-25 05:21:34'),(21,23,0,22.00,2,1,2,'2025-12-25 05:27:42','2025-12-25 05:27:42'),(22,24,0,10.00,2,2,2,'2025-12-25 06:19:33','2025-12-25 06:19:33'),(23,25,0,57.00,2,2,2,'2025-12-25 07:06:51','2025-12-25 07:06:51'),(24,26,0,33.00,2,1,2,'2025-12-25 07:46:56','2025-12-25 07:46:56'),(25,27,0,57.00,2,2,2,'2025-12-25 10:52:43','2025-12-25 10:52:43'),(26,28,0,158.00,2,1,2,'2025-12-26 01:20:03','2025-12-26 01:20:03'),(27,29,0,24.00,2,2,2,'2025-12-26 01:48:28','2025-12-26 01:48:28'),(28,30,0,88.00,2,1,2,'2025-12-26 02:32:54','2025-12-26 02:32:54');
/*!40000 ALTER TABLE `payment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product` (
  `id` int unsigned NOT NULL AUTO_INCREMENT COMMENT '菜品id',
  `shop_id` int DEFAULT NULL COMMENT '店铺id',
  `category_id` int DEFAULT NULL COMMENT '菜品分类id',
  `cover_pic` varchar(50) DEFAULT NULL COMMENT '菜品图片',
  `name` varchar(50) DEFAULT NULL COMMENT '菜品名称',
  `price` double(6,2) DEFAULT NULL COMMENT '单价',
  `status` tinyint DEFAULT NULL COMMENT '状态：1:正常  2:停售  9:删除',
  `create_at` datetime DEFAULT NULL COMMENT '添加时间',
  `update_at` datetime DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (20,6,12,'1766582383.5067115.jpg','黑鸦锡纸饭',13.00,1,'2025-12-24 13:19:43','2025-12-24 13:19:43'),(21,6,13,'1766626445.2229645.jpeg','青椒肉丝盖浇饭',10.00,1,'2025-12-25 01:34:05','2025-12-25 01:34:05'),(22,6,12,'1766634050.0803962.jpg','经典锡纸饭',11.00,1,'2025-12-25 03:40:50','2025-12-25 03:40:50'),(23,7,14,'1766640242.9702344.jpg','鸭肠炒饭',14.00,1,'2025-12-25 05:24:02','2025-12-25 05:24:02'),(24,7,14,'1766640282.1885998.jpg','鸭板肠炒饭',13.00,1,'2025-12-25 05:24:42','2025-12-25 05:24:42'),(25,7,14,'1766640301.3615282.jpg','蛋炒饭',11.00,1,'2025-12-25 05:25:01','2025-12-25 05:25:01'),(26,7,15,'1766640328.7468822.jpg','鸭翅',6.00,1,'2025-12-25 05:25:28','2025-12-25 05:25:28'),(27,7,15,'1766640355.4444618.jpg','鸭腿',6.00,1,'2025-12-25 05:25:55','2025-12-25 05:25:55'),(28,7,15,'1766640377.3220522.jpg','鸭脖',5.00,1,'2025-12-25 05:26:17','2025-12-25 05:26:17'),(29,7,16,'1766640403.9550257.jpg','烧饼',2.00,9,'2025-12-25 05:26:43','2025-12-26 07:32:15'),(30,7,16,'1766640435.2146912.jpg','加一点鸭肠',4.00,9,'2025-12-25 05:27:15','2025-12-25 06:31:56'),(31,7,16,'1766658548.8589942.jpg','一小袋鸭肠',4.00,1,'2025-12-25 10:29:08','2025-12-25 10:29:08'),(32,6,17,'1766658757.7904658.webp','炒粉',7.00,1,'2025-12-25 10:32:37','2025-12-25 10:32:37'),(33,6,17,'1766658780.6712582.webp','炒面',7.00,1,'2025-12-25 10:33:00','2025-12-25 10:33:00'),(34,6,17,'1766658791.1837964.webp','炒米',7.00,1,'2025-12-25 10:33:11','2025-12-25 10:33:11'),(35,6,12,'1766658859.8501217.webp','锡纸花甲粉',11.00,1,'2025-12-25 10:34:19','2025-12-25 10:34:19'),(36,6,12,'1766658899.426571.webp','锡纸烤鱼',39.90,1,'2025-12-25 10:34:59','2025-12-25 10:34:59'),(37,6,13,'1766658979.1741898.webp','韭菜鸡蛋盖浇饭',10.00,1,'2025-12-25 10:36:19','2025-12-25 10:36:19'),(38,6,13,'1766659018.6290083.webp','虾仁盖浇饭',13.00,1,'2025-12-25 10:36:58','2025-12-25 10:36:58'),(39,6,13,'1766659204.1477807.webp','西红柿鸡蛋盖浇饭',10.00,1,'2025-12-25 10:40:04','2025-12-25 10:40:04'),(40,6,13,'1766659268.937938.webp','日式盖饭',15.00,1,'2025-12-25 10:41:08','2025-12-25 10:41:08'),(41,6,13,'1766659326.0120306.webp','手撕鸡盖浇饭',12.00,1,'2025-12-25 10:42:06','2025-12-25 10:42:06'),(42,6,13,'1766659408.4132936.webp','土豆肉丝盖浇饭',10.00,1,'2025-12-25 10:43:28','2025-12-25 10:43:28'),(43,6,13,'1766659475.251772.webp','不知道啥肉盖浇饭',13.00,1,'2025-12-25 10:44:35','2025-12-25 10:44:35'),(44,7,16,'1766734388.4712565.jpg','烧饼',2.00,1,'2025-12-26 07:33:08','2025-12-26 07:33:08');
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shop`
--

DROP TABLE IF EXISTS `shop`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `shop` (
  `id` int unsigned NOT NULL AUTO_INCREMENT COMMENT '店铺id',
  `name` varchar(255) NOT NULL COMMENT '店铺名称',
  `cover_pic` varchar(255) DEFAULT NULL COMMENT '封面图片',
  `banner_pic` varchar(255) DEFAULT NULL COMMENT '图标Logo',
  `address` varchar(255) DEFAULT NULL COMMENT '店铺地址',
  `phone` varchar(255) DEFAULT NULL COMMENT '联系电话',
  `status` tinyint NOT NULL DEFAULT '1' COMMENT '状态：1:正常 2:暂停 9:删除',
  `create_at` datetime DEFAULT NULL COMMENT '添加时间',
  `update_at` datetime DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shop`
--

LOCK TABLES `shop` WRITE;
/*!40000 ALTER TABLE `shop` DISABLE KEYS */;
INSERT INTO `shop` VALUES (6,'源小陶热卤拌饭','1766582204.5896616.jpg','1766582204.590692.jpg','河南焦作','18888888888',1,'2025-12-24 11:29:34','2025-12-24 13:16:44'),(7,'贵妃鸭货','1766640146.8070018.jpg','1766640146.8080993.jpg','河南焦作','19999999999',1,'2025-12-25 05:22:26','2025-12-25 05:22:26'),(8,'君帅女仆店','1766716581.3307943.webp','1766716581.332438.jpg','','',1,'2025-12-26 02:36:21','2025-12-26 02:36:21');
/*!40000 ALTER TABLE `shop` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `id` int unsigned NOT NULL AUTO_INCREMENT COMMENT '员工账号id',
  `username` varchar(50) DEFAULT NULL COMMENT '员工账号',
  `nickname` varchar(50) DEFAULT NULL COMMENT '昵称',
  `password_hash` varchar(100) DEFAULT NULL COMMENT '密码',
  `password_salt` varchar(50) DEFAULT NULL COMMENT '密码干扰值',
  `status` tinyint unsigned NOT NULL DEFAULT '1' COMMENT '状态:1正常/2禁用/9删除',
  `create_at` datetime DEFAULT NULL COMMENT '创建时间',
  `update_at` datetime DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb3 COMMENT='员工表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'zhangsan','张三','d4511c353293bf159fd48b36efcec666','146602',6,'2020-07-28 18:18:18','2025-12-25 06:49:43'),(15,'wangwu','王五','e6540427d2e5389bfe22229be8bcb4f5','364277',1,'2025-12-24 10:39:49','2025-12-26 08:46:16'),(16,'1234','账号1234密码123','40abe7abe6168519b0aa3dfc677cdcf0','174082',1,'2025-12-24 12:13:47','2025-12-26 07:45:44'),(21,'xiedy','','0e5a3df29a701b7b724f177dd9c52657','426020',1,'2025-12-26 02:34:06','2025-12-26 02:34:06');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-12-26 18:02:05
