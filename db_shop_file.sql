-- MariaDB dump 10.19-11.3.2-MariaDB, for osx10.19 (arm64)
--
-- Host: localhost    Database: db_shop
-- ------------------------------------------------------
-- Server version	8.2.0

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
-- Table structure for table `carts`
--

DROP TABLE IF EXISTS `carts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `carts` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` varchar(255) DEFAULT NULL,
  `prod_id` varchar(255) DEFAULT NULL,
  `prod_qty` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `carts`
--

LOCK TABLES `carts` WRITE;
/*!40000 ALTER TABLE `carts` DISABLE KEYS */;
/*!40000 ALTER TABLE `carts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categories` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `description` longtext,
  `status` tinyint DEFAULT '0',
  `popular` tinyint DEFAULT '0',
  `image` varchar(255) DEFAULT NULL,
  `meta_title` varchar(255) DEFAULT NULL,
  `meta_description` varchar(255) DEFAULT NULL,
  `meta_keyword` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES
(1,'Beauty Products','beauty-products','Category for beauty and skincare items',1,1,'beauty.jpg','Beauty Products Category','Discover our range of beauty products','beauty, skincare','2024-05-05 22:45:00','2024-05-05 22:45:00');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contacts`
--

DROP TABLE IF EXISTS `contacts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contacts` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `message` text,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contacts`
--

LOCK TABLES `contacts` WRITE;
/*!40000 ALTER TABLE `contacts` DISABLE KEYS */;
INSERT INTO `contacts` VALUES
(1,'John','john@example.com','Feedback','Great website!','2024-05-05 22:43:55','2024-05-05 22:43:55'),
(2,'Jane','jane@example.com','Inquiry','Interested in your products.','2024-05-05 22:43:55','2024-05-05 22:43:55');
/*!40000 ALTER TABLE `contacts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_items`
--

DROP TABLE IF EXISTS `order_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `order_items` (
  `id` int NOT NULL AUTO_INCREMENT,
  `order_id` varchar(255) DEFAULT NULL,
  `prod_id` varchar(255) DEFAULT NULL,
  `qty` varchar(255) DEFAULT NULL,
  `price` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_items`
--

LOCK TABLES `order_items` WRITE;
/*!40000 ALTER TABLE `order_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `order_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orders` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` varchar(255) DEFAULT NULL,
  `lname` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phoneno` varchar(255) DEFAULT NULL,
  `address1` varchar(255) DEFAULT NULL,
  `address2` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `pincode` varchar(255) DEFAULT NULL,
  `total_price` varchar(255) DEFAULT NULL,
  `status` tinyint DEFAULT '0',
  `message` varchar(255) DEFAULT NULL,
  `tracking_no` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES
(1,'1','Doe','johndoe@example.com','1234567890','123 Main St','Apt 101','New York','NY','USA','10001','1200',1,'Order placed successfully','TRACK123456','2024-05-05 22:43:38','2024-05-05 22:43:38'),
(2,'2','Smith','janesmith@example.com','9876543210','456 Elm St','','Los Angeles','CA','USA','90001','55',1,NULL,'TRACK987654','2024-05-05 22:43:38','2024-05-05 22:43:38');
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password`
--

DROP TABLE IF EXISTS `password`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `password` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password`
--

LOCK TABLES `password` WRITE;
/*!40000 ALTER TABLE `password` DISABLE KEYS */;
/*!40000 ALTER TABLE `password` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `personal_access_tokens` (
  `id` int NOT NULL AUTO_INCREMENT,
  `tokenable_id` int DEFAULT NULL,
  `tokenable_type` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `token` varchar(64) DEFAULT NULL,
  `abilities` text,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `token` (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personal_access_tokens`
--

LOCK TABLES `personal_access_tokens` WRITE;
/*!40000 ALTER TABLE `personal_access_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `personal_access_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `products` (
  `id` int NOT NULL AUTO_INCREMENT,
  `cate_id` bigint DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `small_description` mediumtext,
  `description` longtext,
  `original_price` varchar(255) DEFAULT NULL,
  `selling_price` varchar(255) DEFAULT NULL,
  `qty` varchar(255) DEFAULT NULL,
  `tax` varchar(255) DEFAULT NULL,
  `status` tinyint DEFAULT '0',
  `trending` tinyint DEFAULT '0',
  `meta_title` mediumtext,
  `meta_keyword` mediumtext,
  `meta_description` mediumtext,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `image_url` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES
(1,1,'Facial Cleanser','facial-cleanser','Gentle cleanser for all skin types','gel nettoyant pour les peaux sensibles','25','20','50','5',1,1,'Facial Cleanser','facial cleanser, skincare','Gentle cleanser for daily use','2024-05-05 22:46:31','2024-05-13 02:55:44','https://m.media-amazon.com/images/I/51p9kUSoX2L.jpg'),
(2,1,'Moisturizing Cream','moisturizing-cream','Hydrating cream for dry skin','créme hydratante pour tout types de peau','35','30','30','7',1,1,'Moisturizing Cream','moisturizer, skincare','Deep hydration for soft skin','2024-05-05 22:46:31','2024-05-05 22:46:31',NULL),
(3,1,'Fond de teint liquide','fond-de-teint-liquide','Formule hydratante pour une peau éclatante','Un fond de teint liquide qui donne un teint parfait et naturel.','25.99','19.99','100','5%',1,1,'Fond de teint liquide - Maquillage Beauté','fond de teint, maquillage, beauté','Découvrez notre fond de teint liquide pour une peau éclatante.','2024-05-13 02:49:14','2024-05-13 02:49:14',NULL),
(4,2,'Collier en argent','collier-en-argent','Design élégant pour toutes les occasions','Un collier en argent sterling 925 pour sublimer votre tenue.','49.99','39.99','50','TVA incluse',1,1,'Collier en argent sterling - Bijoux','collier argent, bijoux, argent sterling','Trouvez le collier parfait en argent pour votre collection de bijoux.','2024-05-13 02:49:14','2024-05-13 02:49:14',NULL),
(5,3,'Crème hydratante anti-âge','creme-hydratante-anti-age','Formule avancée pour une peau jeune et éclatante','Une crème hydratante riche en ingrédients anti-âge pour revitaliser votre peau.','39.99','29.99','75','10%',1,0,'Crème hydratante anti-âge - Soins de la peau','creme anti-age, soins peau, hydratant anti-âge','Obtenez une peau jeune avec notre crème hydratante anti-âge.','2024-05-13 02:49:14','2024-05-13 02:49:14',NULL),
(6,1,'Collier en or','collier-en-or','Collier en or 18 carats','Un magnifique collier en or 18 carats pour toutes les occasions.','150','120','20','10%',1,1,'Collier en or','bijoux, or, collier','Collier en or 18 carats','2024-05-16 18:35:42','2024-05-16 18:35:42','https://www.bijouxbaume.com/upload/image/collier-caplain-or-jaune-retro-p-image-120177-grande.jpg'),
(7,1,'Bracelet en argent','bracelet-en-argent','Bracelet en argent sterling','Un bracelet en argent sterling avec des détails élégants.','80','60','50','8%',1,0,'Bracelet en argent','bijoux, argent, bracelet','Bracelet en argent sterling','2024-05-16 18:35:42','2024-05-16 18:35:42','https://www.edora-bijouterie.fr/49348-large_default/bracelet-gourmette-identite-argent-925-1000-argente-13.jpg'),
(8,1,'Boucles d\'oreilles en diamant','boucles-oreilles-diamant','Boucles d\'oreilles en diamant','Des boucles d\'oreilles en diamant pour une touche d\'élégance.','200','180','30','12%',1,1,'Boucles d\'oreilles en diamant','bijoux, diamant, boucles d\'oreilles','Boucles d\'oreilles en diamant','2024-05-16 18:35:42','2024-05-16 18:35:42','https://www.bijouxbaume.com/upload/image/boucles-d-oreilles-diamants-puces-p-image-69053-grande.png'),
(9,2,'Crème de jour','creme-de-jour','Crème hydratante de jour','Une crème hydratante pour une peau éclatante toute la journée.','35','30','40','10%',1,1,'Crème de jour','crèmes, hydratant, jour','Crème hydratante de jour','2024-05-16 18:35:42','2024-05-16 18:35:42','https://dz.jumia.is/unsafe/fit-in/500x500/filters:fill(white)/product/56/5535/1.jpg?4285'),
(10,2,'Crème de nuit','creme-de-nuit','Crème nourrissante de nuit','Une crème nourrissante pour revitaliser votre peau pendant la nuit.','40','35','35','10%',1,1,'Crème de nuit','crèmes, nourrissant, nuit','Crème nourrissante de nuit','2024-05-16 18:35:42','2024-05-16 18:35:42','https://ezine-algerie.com/wp-content/uploads/2020/09/creme-de-nuit-50ml-liftactiv-supreme-vichy.jpg'),
(11,2,'Crème solaire','creme-solaire','Crème solaire SPF 50','Une crème solaire pour protéger votre peau des rayons UV.','25','20','50','10%',1,1,'Crème solaire','crèmes, solaire, SPF','Crème solaire SPF 50','2024-05-16 18:35:42','2024-05-16 18:35:42','https://www.eau-thermale-avene.dz/sites/files-dz/styles/380x460/public/images/product/image/eau_thermale_avene-suncare-brand-website-cream-50-very-high-protection-50ml-skin-protect-ocean-respect-packshot-_44106.png?itok=4AQnf33c'),
(12,3,'Fond de teint liquide','fond-de-teint-liquide','Formule hydratante pour une peau éclatante','Un fond de teint liquide qui donne un teint parfait et naturel.','25.99','19.99','100','5%',1,1,'Fond de teint liquide','fond de teint, maquillage, beauté','Découvrez notre fond de teint liquide pour une peau éclatante.','2024-05-16 18:35:43','2024-05-16 18:35:43','https://dz.jumia.is/unsafe/fit-in/500x500/filters:fill(white)/product/87/4942/1.jpg?3625'),
(13,3,'Rouge à lèvres','rouge-a-levres','Rouge à lèvres longue tenue','Un rouge à lèvres avec une couleur intense et une longue tenue.','15.99','12.99','80','5%',1,1,'Rouge à lèvres','maquillage, lèvres, beauté','Rouge à lèvres longue tenue pour des lèvres parfaites.','2024-05-16 18:35:43','2024-05-16 18:35:43','https://beautytouch-shop.com/9152-home_default/sephora-collection-rouge-matte.jpg'),
(14,3,'Mascara volumisant','mascara-volumisant','Mascara pour des cils volumineux','Un mascara qui donne du volume et de la longueur à vos cils.','20.99','17.99','60','5%',1,1,'Mascara volumisant','maquillage, yeux, mascara','Mascara volumisant pour des cils parfaits.','2024-05-16 18:35:43','2024-05-16 18:35:43','https://assets.afcdn.com/story/20220217/2161248_w2121h2121c1cx1061cy707cxt0cyt0cxb2121cyb1414.jpg');
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `role_as` tinyint DEFAULT '0',
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES
(1,'milia','milia@example.com',NULL,'milia',1,NULL,'2024-05-05 22:43:10','2024-05-05 22:43:10'),
(2,'root','root@example.com',NULL,'root',0,NULL,'2024-05-05 22:43:10','2024-05-05 22:43:10'),
(3,'milia','milia@gmail.com',NULL,'$2y$10$c90Qj8FE7IBLFxRY4kp1o.cr2RAgNblzGZJtq4YoWFQm3EBaqHUrO',0,NULL,'2024-05-10 09:31:54','2024-05-10 09:31:54'),
(4,'miliaa','milial1@gmail.com',NULL,'$2y$10$SSSgQ./3Azc.UZI77SEZXOgBw5JlQUSfqspO68hj04VvOV.878SQa',0,NULL,'2024-05-10 09:32:51','2024-05-10 09:32:51'),
(5,'admin','admin@example.com',NULL,'admin',0,NULL,'2024-05-13 03:15:34','2024-05-13 03:15:34'),
(6,'mil','ilyanagolmi@gmail.com',NULL,'$2y$10$x7l8YB.9h/3Dk9mrSuCxlev0ZrxDbPnON33XO23ccbqVO3qsNwVGi',0,NULL,'2024-05-16 17:40:28','2024-05-16 17:40:28');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-05-16 19:48:24
