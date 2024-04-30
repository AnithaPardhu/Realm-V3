-- MySQL dump 10.13  Distrib 8.0.32, for Win64 (x86_64)
--
-- Host: localhost    Database: version3
-- ------------------------------------------------------
-- Server version	8.0.32

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
-- Table structure for table `genres`
--

DROP TABLE IF EXISTS `genres`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `genres` (
  `id` int NOT NULL AUTO_INCREMENT,
  `genre` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `genres`
--

LOCK TABLES `genres` WRITE;
/*!40000 ALTER TABLE `genres` DISABLE KEYS */;
INSERT INTO `genres` VALUES (1,'Crime'),(2,'Thriller'),(3,'Romantic'),(4,'Horror'),(5,'Drama'),(6,'Romantic Comedy'),(7,'Science Fiction'),(8,'Action');
/*!40000 ALTER TABLE `genres` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `movies_restrict`
--

DROP TABLE IF EXISTS `movies_restrict`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `movies_restrict` (
  `id` int NOT NULL AUTO_INCREMENT,
  `profileId` int DEFAULT NULL,
  `profileName` varchar(255) DEFAULT NULL,
  `movieTitle` varchar(255) DEFAULT NULL,
  `userId` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movies_restrict`
--

LOCK TABLES `movies_restrict` WRITE;
/*!40000 ALTER TABLE `movies_restrict` DISABLE KEYS */;
INSERT INTO `movies_restrict` VALUES (1,37,'Vijay Saradhi Mallavalli','Virupaksha',2),(2,37,'Vijay Saradhi Mallavalli','HIT',2),(3,25,'Sky','Aquaman and the Lost Kingdom',20),(4,25,'Sky','Sita Ramam',20),(9,37,'Vijay Saradhi Mallavalli','Ninnu Kori',2),(10,43,'test','Sita Ramam',20),(11,44,'Angel','Virupaksha',21),(12,44,'Angel','Ee Nagaraniki Emaindi',21),(13,51,'Ansio','Kushi',24),(14,53,'Sweety','Virupaksha',15),(15,53,'Sweety','HanuMan',15);
/*!40000 ALTER TABLE `movies_restrict` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `newprofiles`
--

DROP TABLE IF EXISTS `newprofiles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `newprofiles` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `isChildProfile` tinyint(1) NOT NULL,
  `pin` varchar(4) DEFAULT NULL,
  `userId` int NOT NULL,
  `profilePhotoPath` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=70 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `newprofiles`
--

LOCK TABLES `newprofiles` WRITE;
/*!40000 ALTER TABLE `newprofiles` DISABLE KEYS */;
INSERT INTO `newprofiles` VALUES (1,'dinesh kumar',0,NULL,1,NULL),(2,'vijay',0,NULL,2,NULL),(3,'geeta',0,NULL,3,NULL),(4,'yogee',0,NULL,4,NULL),(5,'Yashwanth',0,NULL,5,NULL),(6,'sumanth',0,NULL,6,NULL),(7,'karun',0,NULL,7,NULL),(8,'nikhil',0,NULL,8,NULL),(9,'vasuk',0,NULL,9,NULL),(10,'nikhil',0,'0402',8,NULL),(11,'shivani',0,NULL,10,NULL),(12,'sandeep',0,NULL,11,NULL),(13,'Karthik',0,NULL,12,NULL),(14,'Sandeep Kumar',0,NULL,13,NULL),(15,'Naveen',0,NULL,14,NULL),(16,'Sneha',0,NULL,15,NULL),(17,'Srija',0,NULL,16,NULL),(18,'DIbya kanti Dhir',0,'null',17,NULL),(19,'Mahesh',0,NULL,18,NULL),(20,'mamatha',0,NULL,19,NULL),(21,'Akash ',0,NULL,20,NULL),(22,'rinku',0,'222',2,NULL),(23,'Madhav',0,NULL,21,NULL),(25,'Sky',0,'1234',20,'uploads\\guard.gif'),(26,'deepthi',0,NULL,22,NULL),(27,'kiran10',0,NULL,23,NULL),(28,'Deepthi',0,NULL,24,NULL),(29,'chandrasekhar',0,NULL,25,NULL),(30,'har vee',1,'9090',23,NULL),(31,'kiran hell',0,'9090',23,NULL),(32,'p',1,'1',2,NULL),(35,'bmkreddy3020@gmail.com',0,NULL,26,NULL),(36,'Defenders',0,NULL,27,NULL),(37,'Vijay Saradhi Mallavalli',0,'11',2,NULL),(38,'mahesh',0,NULL,28,NULL),(39,'s',0,NULL,29,NULL),(40,'s1',1,'',29,NULL),(41,'Dibya',0,'',17,'uploads\\ap.jpg'),(42,'Mahi',1,'1234',28,'uploads\\messi.jpg'),(43,'test',0,'',20,NULL),(44,'Angel',1,'1996',21,NULL),(45,'Test',0,NULL,30,NULL),(46,'Harsha',0,'null',31,'uploads\\20240128_065459.jpg'),(47,'hseher',0,'',31,'uploads\\20240128_064818.jpg'),(48,'OG',0,'1234',7,'uploads\\download_image_1705917860209.png'),(49,'OG',0,'1234',7,'uploads\\download_image_1705917860209.png'),(50,'Karun Narayan',0,'1234',7,'uploads\\download_image_1705917749264.png'),(51,'Ansio',1,'1234',24,NULL),(52,'Ansio',1,'1234',24,NULL),(53,'Sweety',1,'1234',15,NULL),(54,'Ghost',0,'1111',27,NULL),(55,'Ravi',0,'',27,NULL),(56,'Raj',1,'2454',28,NULL),(57,'usa',0,NULL,32,NULL),(59,'Anitha',0,NULL,33,NULL),(60,'harish',0,NULL,34,NULL),(61,'anitha111',0,NULL,35,NULL),(62,'Ravi',0,NULL,36,NULL),(63,'kooo',0,NULL,37,NULL),(64,'tttttttt',0,'',37,NULL),(65,'asdf',0,NULL,38,NULL),(66,'Defenders',0,'',38,NULL),(67,'fdggzf',0,'1234',38,NULL),(68,'ro',0,'',39,NULL),(69,'asdfg',0,NULL,40,NULL);
/*!40000 ALTER TABLE `newprofiles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `otp_storage`
--

DROP TABLE IF EXISTS `otp_storage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `otp_storage` (
  `id` int NOT NULL AUTO_INCREMENT,
  `email` varchar(255) NOT NULL,
  `otp` varchar(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `otp_storage`
--

LOCK TABLES `otp_storage` WRITE;
/*!40000 ALTER TABLE `otp_storage` DISABLE KEYS */;
INSERT INTO `otp_storage` VALUES (18,'bmkreddy3020@gmail.com','6412'),(19,'bmkreddy3020@gmail.com','9548'),(20,'bmkreddy3020@gmail.com','8772'),(21,'bmkreddy3020@gmail.com','7156'),(22,'bmkreddy3020@gmail.com','3604');
/*!40000 ALTER TABLE `otp_storage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `uploads`
--

DROP TABLE IF EXISTS `uploads`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `uploads` (
  `id` int NOT NULL AUTO_INCREMENT,
  `video_path` varchar(255) NOT NULL,
  `image_path` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text,
  `scheduled_time` datetime DEFAULT NULL,
  `upload_time` datetime DEFAULT CURRENT_TIMESTAMP,
  `genre_id` int DEFAULT NULL,
  `categories` varchar(255) DEFAULT NULL,
  `age_rating` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `uploads`
--

LOCK TABLES `uploads` WRITE;
/*!40000 ALTER TABLE `uploads` DISABLE KEYS */;
INSERT INTO `uploads` VALUES (2,'uploads\\Virupaksha Official Trailer.mp4','uploads\\VIRUPAKSHA.jfif','Virupaksha','Mysterious deaths occur in a village due to an unknown person\'s occult practices. The whole town is afraid, and the problems continue as they search for the one responsible.','2023-12-22 11:33:00','2023-12-20 11:32:53',8,'Movies','13+'),(3,'uploads\\Kushi Video Songs 4K - Cheliya Cheliya Full Video.webm','uploads\\KUSHI.jpg','Kushi','While playing matchmaker to a pair of their friends, two young university students begin developing feelings for each other.','2023-12-13 12:36:00','2023-12-20 11:35:53',3,'Movies','13+'),(5,'uploads\\kalki.mp4','uploads\\PROJECTK2 (1).jpg','Kalki 2898 AD','A modern-day avatar of Vishnu, a Hindu god, who is believed to have descended to earth to protect the world from evil forces.','2023-12-06 12:39:00','2023-12-20 11:40:10',7,'Movies','13+'),(6,'uploads\\HanuMan - Official Trailer.mp4','uploads\\hanuman.jpg','HanuMan','An imaginary place called Anjanadri where the protagonist gets the powers of Hanuman and fights for Anjanadri.','2023-12-21 11:59:00','2023-12-20 11:59:57',7,'Movies','13+'),(7,'uploads\\Hi Nanna_ Samayama Lyrical Video Song _ Nani_Mrunal Thakur _ Shouryuv _ Hesham Abdul Wahab(4K_HD).webm','uploads\\hinanna.jpg','Hi Nanna','A single father begins to narrate the story of the missing mother to his child and nothing remains the same.','2023-12-20 13:00:00','2023-12-20 12:02:43',5,'Movies','13+'),(8,'uploads\\Pelli Choopulu Movie Trailer _ Vijay Devarakonda _ Ritu Varma _ Nandu _ Telugu Filmnagar(1080P_HD).mp4','uploads\\PELLI_CHOOPULU.jpg','Pelli Choopulu','A wannabe businesswoman and a happy-go-lucky guy meet each other during an arranged marriage blind date but eventually team up to start a food truck on their own.','2023-12-22 14:04:00','2023-12-20 12:04:53',6,'Movies','13+'),(9,'uploads\\AWE.mp4','uploads\\awe.jpg','Awe!','Unusual (multiple) people tend to meet at a Restaurant and their life-changing moments take place in order to know about a single person.\r\n\r\n','2023-12-07 14:07:00','2023-12-20 12:07:40',2,'Movies','13+'),(10,'uploads\\hit1.mp4','uploads\\Hit.jpg','HIT','An officer of the \'Homicide Intervention Team\' who frequently suffers from having his panic attacks does everything in his power to rescue a woman who went missing.','2023-12-21 13:10:00','2023-12-20 12:10:28',2,'Movies','13+'),(12,'uploads\\UTURN1.mp4','uploads\\UTURN.jpg','U Turn','Motorists who take an illegal U-turn on a flyover die mysteriously. Radhika, who is interning to be a journalist, is investigating it. However, she becomes the prime suspect by a twist of fate. What happens next?','2023-12-13 13:14:00','2023-12-20 12:15:00',2,'Movies','13+'),(13,'uploads\\SWEET AS PIE Official Trailer (2022) Romance Comedy Movie HD(1080P_HD).mp4','uploads\\SWEETASPIE.jfif','Sweet as Pie','Tamara visits her family\'s apple orchard in hopes of taking a break from life. She begins to fall for her childhood best friend and now the farm manager, Will, and together they go to great lengths to keep the orchard alive.','2023-12-22 13:18:00','2023-12-20 12:19:28',6,'Movies','13+'),(15,'uploads\\-- THE GOLDEN COMPASS (2007) _ Full Movie Trailer _ Full HD _ 1080p(1080P_HD).mp4','uploads\\TGC.webp','The Golden Compass','In a parallel universe, young Lyra Belacqua journeys to the far North to save her best friend and other kidnapped children from terrible experiments by a mysterious organization.','2023-12-20 13:25:00','2023-12-20 12:24:44',1,'Movies','13+'),(18,'uploads\\CHIRUN~1.MP4','uploads\\karthikeya.jpg','Karthikeya','Karthikeya, who loves to solve mysteries, goes to Subramanyapuram to investigate where the villagers are frightened by a deadly snake in the temple.','2023-12-21 12:39:00','2023-12-20 12:39:36',4,'Movies','13+'),(19,'uploads\\Ninnukori----_nameisnani _i_nivethathomas _shivanirvana621_Do follow and support _naniaddictz__nameisnani _naturalstarnani _ninnukori(MP4).mp4','uploads\\ninnukori.jpg','Ninnu Kori','Two lovers, Pallavi and Uma get separated by circumstances, but reconnect years later, when Pallavi is happily married to someone else.','2023-12-20 12:45:00','2023-12-20 12:43:19',6,'Movies','13+'),(20,'uploads\\Demonte_Colony_2_(Telugu)_-_Trailer___Arulnithi__Priya_Bhavani_Shankar___Ajay_R_Gnanamuthu___Sam_CS(720P_HD)[1].mp4','uploads\\dmonty.jpg','Demonte Colony 2','Demonte Colony 2 (Vengeance of the Unholy): Directed by R. Ajay Gnanamuthu. With Priya Bhavani Shankar, Arulnithi, Vettai Muthukumar, Sarjano Khalid.','2023-12-22 13:54:00','2023-12-20 12:56:42',4,'Movies','18+'),(21,'uploads\\Nene_Naa_-__Official_Trailer___Telugu___Regina_Cassandra___Akshara_Gowda___Sam_CS___Caarthick_Raju(720P_HD)[1].mp4','uploads\\nenena.jpg','Nene Naa','Divya is a talented archaeologist, and the Nalgonda police department seeks her help to proceed with a murder case that occurred in a dense forest under suspicious circumstances. A shocking truth is uncovered during the investigation.','2023-12-20 14:57:00','2023-12-20 12:59:42',1,'Movies','13+'),(22,'uploads\\Jhoom Jhoom Lyrical Video _ SPY _ Nikhil Siddharth _ Garry BH _ Charantej Uppalapati(4K_HD).webm','uploads\\spy.jpg','Spy','After receiving the news of the death of his elder brother Subash, who worked for R&AW, Jay sets out on a mission to find out what happened leading him into a bigger conspiracy of a possible nuclear attack threat to the country.','2023-12-12 13:02:00','2023-12-20 13:02:29',2,'Movies','13+'),(23,'uploads\\Kushi First Look TEASER.mp4','uploads\\kushi2.jpg','Kushi','Raised in an atheist household, a young man falls in love with the daughter of his father\'s arch-rival, a devout Hindu leader.','2023-12-13 13:09:00','2023-12-20 13:09:24',3,'Movies','13+'),(24,'uploads\\www.2MovieRulz.ac - Jersey (2019) 1080p Telugu Proper WEB-DL - AVC - UNTOUCHED - AAC - 2.4GB - ESub.mp4','uploads\\jersey.jpg','Jersey','A cricketer who quits cricket decides to revive his career at the age of 36 for his sons dream and prove his ability.','2023-12-20 15:12:00','2023-12-20 13:13:57',5,'Movies','13+'),(28,'uploads\\Rakshasudu_2_Trailer_Telugu__Bellamkonda_Srinivas___Anupama___Christopher(720P_HD)[1].mp4','uploads\\RAKSHASHUDU.jpg','Rakshasudu 2','Directed by Ramesh Varma. With Sai Srinivas Bellamkonda.','2023-12-06 16:49:00','2023-12-20 14:50:23',1,'Movies','13+'),(30,'uploads\\RRR_Trailer_(Telugu)_-_NTR__Ram_Charan__Ajay_Devgn__Alia_Bhatt___SS_Rajamouli___25th_March_2022(720P_HD)[1].mp4','uploads\\rrr.jpg','RRR','A fictitious story about two legendary revolutionaries and their journey away from home before they started fighting for their country in the 1920s','2023-12-14 16:11:00','2023-12-20 15:12:37',8,'Movies','13+'),(31,'uploads\\Waltair_Veerayya_-_Boss_Party_Video___Megastar_Chiranjeevi__Urvashi_Rautela___DSP__Bobby_Kolli(720P_HD)[1].mp4','uploads\\wv.jpg','Waltair Veerayya','A fisherman who engages in smuggling accepts a request from a disheveled police officer in order to use it to his personal advantage','2023-12-21 17:13:00','2023-12-20 15:14:38',8,'Movies','13+'),(32,'uploads\\arundhati_movie_trailer(720P_HD)[1].mp4','uploads\\arundhati.jpg','Arundhati','A brave queen battles an evil mystic. Three generations later, he comes back to haunt the queen\'s descendants.','2023-12-21 15:17:00','2023-12-20 15:17:15',4,'Movies','13+'),(43,'uploads\\salaar.mkv','uploads\\salaar2.jpg','Salaar','The fate of a violently contested kingdom hangs on the fraught bond between two friends-turned-foes in this saga of power, bloodshed and betrayal.','2024-02-07 23:04:00','2024-02-06 21:15:39',8,'Movies','13+'),(44,'uploads\\Animal.mkv','uploads\\Animal.jpg','Animal','The hardened son of a powerful industrialist returns home after years abroad and vows to take bloody revenge on those threatening his father\'s life.','2024-02-06 22:27:00','2024-02-06 21:27:37',1,'Movies','13+'),(45,'uploads\\Radheshyam.mkv','uploads\\radheshyam.jpg','Radhe Shyam','Love blooms between a doctor with an uncertain future and a renowned palmist who thought he would never find love. His beliefs are challenged.','2024-02-09 13:37:00','2024-02-07 11:39:22',5,'Movies','13+'),(46,'uploads\\Godavari.mkv','uploads\\download.jpg','Godavari','While on a cruise on the river Godavari, a romance ensues between a heartbroken idealist Ram and an independent woman, Sita','2024-01-31 12:40:00','2024-02-07 11:46:14',3,'Movies','13+'),(47,'uploads\\Mangalavaram.mkv','uploads\\managalavaram.jpg','Mangalavaaram','Fear engulfs a village as murders pile up mysteriously. Shailu, a young woman is the heart of the story and the enigmatic tale unravels with a suspenseful cinematic journey.','2024-02-07 11:58:00','2024-02-07 11:59:52',4,'Movies','13+'),(48,'uploads\\Ee Nagaraniki Emaindi.mkv','uploads\\e nagaraniki emaindhi.jpg','Ee Nagaraniki Emaindi','The story is based on four childhood friends who go on a trip to Goa. Each have their own dream careers, and collaborate to make a short film.','2024-02-07 14:01:00','2024-02-07 12:04:18',5,'Movies','13+'),(49,'uploads\\Mad.mkv','uploads\\mad.jpg','Mad','Set in an engineering college and revolves around the antics of the students there, primarily the boys, who get a kick out of torturing the hostel warden.\r\n\r\n','2024-02-09 12:09:00','2024-02-07 12:11:16',6,'Movies','13+'),(50,'uploads\\Aquaman and the Lost Kingdom.mkv','uploads\\aqua.jpg','Aquaman and the Lost Kingdom','Black Manta seeks revenge on Aquaman for his father\'s death. Wielding the Black Trident\'s power, he becomes a formidable foe. To defend Atlantis, Aquaman forges an alliance with his imprisoned brother. They must protect the kingdom.','2024-02-06 12:21:00','2024-02-07 12:23:51',7,'Movies','13+'),(51,'uploads\\www.5MovieRulz.tc - Sita Ramam (2022) 1080p Telugu HQ HDRip - HEVC - (DD+5.1 - 192Kbps & AAC) - 1.6GB - ESub.mkv','uploads\\SITARAMAM.jpg','Sita Ramam','An orphan soldier, Lieutenant Ram\'s life changes, after he gets a letter from a girl named Sita. He meets her and love blossoms between them.','2024-02-08 14:30:00','2024-02-07 12:32:30',3,'Movies','13+');
/*!40000 ALTER TABLE `uploads` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `mobile` varchar(15) NOT NULL,
  `deviceCount` int DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'dinesh kumar','$2a$10$q..52iLbhuj0Ha4UqhdFducLNuzYoZaOMEUeZqxlHKHXS01RPMIBS','dinesho@brightcomgroup.com','8885588682',0),(2,'vijay','$2a$10$dVvbxuLlbirjYLQpG1vUceb.odnR1IJzPfJlxNp53pOYaxxOCisoa','vijaymallavali999@gmail.com','8297322418',0),(3,'geeta','$2a$10$DvYNNy0ZedbvgLPqG.5uNO6eR1g6QTtiELrbD6IbVyVN4waUKiBEe','geetanjalib@brightcomgroup.com','8093778016',0),(4,'yogee','$2a$10$KDhCWgXVV9lpf3V4ej374etodBaLOEEL5s2X5sa/HuGqiPnjcwiqO','yogeeshwarm@brightcomgroup.com','9848816739',0),(5,'Yashwanth','$2a$10$bAWeAFmdpaNldJXoRhF/ZObMJtC8J4qXL87TNSE40F4ETCIJhvfui','yashwanthp@brightcomgroup.com','9731672430',0),(6,'sumanth','$2a$10$eKeQEjiAioe7FVjdhrGVQOvyJYxcjgRO4hJDQAiCPoE3HB0UrztW.','sumantht@brightcomgroup.com','9502423401',0),(7,'karun','$2a$10$3her12S2ujKXMY8gwJcyd.eQYcW/RMv9azWT3/UzLTs/WGMaA0FVy','karunt@dyomo.com','9490089123',0),(8,'nikhil','$2a$10$h2BMs/yx.KPFyvef.9wVUeo9JoSO/ugmxXcuD0SgIqAg.6/HPR31u','nikhilb@koderoom.com','8790590620',0),(9,'vasuk','$2a$10$NCOQJrlrJbpQVo02s5YXqOZlN1.9OvDP7lUiQ3lVP1EmY.DUqy2/u','krishnamraju@brightcomgroup.com','9573937555',0),(10,'shivani','$2a$10$Di..x5B6ep7sUc3z.DAf6u//RIi35NUx9Z/ymg/4TRRxeGawWHeu.','shivanil@gmail.com','9876543210',0),(11,'sandeep','$2a$10$0X2ZQnOsbN56.BIZqkDy7OipyAvC74FlVpCGxQO0i7ICz0VH2INaG','sandeepkmr1143@gmail.com','8977774741',0),(12,'Karthik','$2a$10$ZJkmvfi8cWFdPiQrc3.GS.9pM0PEZAkvz5xFknj2PeVM0/jKoByy.','karthikd@brightcomgroup.com','9849649659',0),(13,'Sandeep Kumar','$2a$10$DPi970cW.gVwtbZNF7cMUOBXAav0vmUl8FoJVlBlCvCBTYnt5ssY6','ksandeep@brightcomgroup.com','8790979720',0),(14,'Naveen','$2a$10$K/VfDERuPTi6lUFy5VQNbOZBV0.lGSpA/MDxpDQaaOJKO5A6I7TdS','naveenreddy.r12@gmail.com','9866035775',0),(15,'Sneha','$2a$10$1ksHiMcJSg.UcuI11vyj4euj2cySfYe9foF1FO7GnV2OCvgby0Gi6','ksr@gmail.com','9876123401',0),(16,'Srija','$2a$10$1adgGgZ3MlejwrXLygVVzOCvgneVQabKls9pKmVPZEVcSizHclrAW','rajithas@brightcomgroup.com','9012345678',0),(17,'DIbya kanti Dhir','$2a$10$i5YuDN5nKRpDm/c.93u8iO/YRI54nNYk.xtDSH8vzX6BVxlOonop.','dibyakantid@brightcomgroup.com','9856234512',0),(18,'Mahesh','$2a$10$REjSjdUypQAoYWzQCwf5aeswfgzFCaSqghXOSDxNZG5or9sQRmI8G','maheshs@gmail.com','9666196509',0),(19,'mamatha','$2a$10$tmse7qLVTxPYFFFBydv97.i3kUHoLyH0CMkb9OPufqFobiyy/HX3i','mamatham@brightcomgroup.com','9182718699',0),(20,'Akash ','$2a$10$Fk0V.8Sa0kd8lkuSRDW9SOMesEGCznUceZpfaaV8jRC1.85DJdDl6','akashd@brightcomgroup.com','7387591037',0),(21,'Madhav','$2a$10$AIO.S7xAYNn2oPbXtAohp.R8nqxNXMwywrjrcjhaH0NZkP1uwcMmW','madhavas@brightcomgroup.com','7981872118',0),(22,'deepthi','$2a$10$hvKnnXpSLpPgcD.fYhxFheH2AZm.8Ss0IpHiiZAIUg7Hpi.Exc3ES','deepthim@brightcomgroup.com','9502516396',0),(23,'kiran10','$2a$10$5n.SGijkOJ5kW7uzWIK3E.Kx4QVIUXqe0gAn446c/BDIwIxO/jddS','bmkreddy3020@gmail.com','9490330553',0),(24,'Deepthi','$2a$10$vS9mamC3HHEWfABKUGi3kuw/zKdtc39j6umRh7HnDS1ITcUoujXwi','deepthis@brightcomgroup.com','9502516398',0),(25,'chandrasekhar','$2a$10$gm3y.SBvyz4BrGh7wiNS9OdAkP8EzhRv5shqVklmR/yk7ziVELgDC','cs964172@gmail.com','8309081761',0),(26,'bmkreddy3020@gmail.com','$2a$10$JsughJYGq4CF6AOBzo0HRe7MaQl90y4wvYjwAb2JFzcno8sMfuJiC','bmkreddy302@gmail.co','2342342342',0),(27,'Defenders','$2a$10$LkYSMwmWPqZB9Wvp87LBGekXelR/OSK25YTZ2PH5DAAgTkrG2HbTS','defenders@gmail.com','9878675623',0),(28,'mahesh','$2a$10$5ZBVOzQqfesn5IbUhaI.Zeu5oacvJI7CNmxTxTSDGTXfzXhxkU2ri','maheshs@brightcomgroup.com','9676196509',0),(29,'s','$2a$10$5d32aZCDWEspUStl3.GoPO0JHvrIHZ/maVKNaGZ3rhp2b1dI41NIu','ksrikar@brightcomgroup.com','6302744571',0),(30,'Test','$2a$10$uXTXinM58M4rfpiJ/LiEjOsPhICIyQ6UkCWXoMc9k1Cfupdw02CRm','sample@gmail.com','7121213122',0),(31,'Harsha','$2a$10$/emaz7gbvPbjWp2QOyfLP.xdG0RK8pEpsjUV/4sOnyuAwMHYQcNs2','8179022012.harvad@gmail.com','8790194091',0),(32,'usa','$2a$10$8wrzPp86os6YTusBD8bdIOq0CFuIDd2zor478i6CafRV3DzwAlcKG','usa@gmail.com','9666196508',0),(33,'Anitha','$2a$10$xQzdC3e8XNmnYFs9DDqDKunvQ/a8os7Lrzd5IewGJrZ0ao/STiAem','anitha2000@gmail.com','7981927966',3),(34,'harish','$2a$10$fTrT.ASuwl5k6FmRqs6SjeJaVNBzh3yr8Xrv7DDzoHn/ujMfgWUWu','harishch@brightcomgroup.com','9347566005',0),(35,'anitha111','$2a$10$UWqiwBZ5CZPkNZK0mCi2B.Vo8iq4g7m9tMqOaTvujx14cl.kkUm7y','vankayalapatianitha6@gmail.com','7981927666',1),(36,'Ravi','$2a$10$f.IsEhjTLW5chxPOq2KdMOv/Bqiz2RYbaSI.Wh234aEww9N.d1WWS','ravi96@gmail.com','9912386963',2),(37,'kooo','$2a$10$6DycYnU3iuNip0R0lJ3s6O8Q4q99KswyCj7Znfw5RMyfSn5U11wTC','koti@gmail.com','9878677665',3),(38,'asdf','$2a$10$yXNKWW.unJ.mpdeOE8p0BOHUUyYo/BHClpU7TMJUp/UPvZ3VFoGRa','anithav@brightcomgroup.com','9878677994',3),(39,'ro','$2a$10$ifIMQeDKVZfjl1eS5.CqHuVonPL7Q8Rm4WTGpuW8Rmwhk9N7BzzN2','roh@gmail.com','6302744576',0),(40,'asdfg','$2a$10$ZlWtVfTozLLrC8PSZp1kS.o2spANIU45cZXiDDU1kS5j1ti7fqMn.','vankayalapatianitha@gmail.com','9878677688',1);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `watchlist`
--

DROP TABLE IF EXISTS `watchlist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `watchlist` (
  `id` int NOT NULL AUTO_INCREMENT,
  `userId` int NOT NULL,
  `movieId` varchar(50) NOT NULL,
  `title` varchar(100) NOT NULL,
  `profileId` int DEFAULT NULL,
  `profileName` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=195 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `watchlist`
--

LOCK TABLES `watchlist` WRITE;
/*!40000 ALTER TABLE `watchlist` DISABLE KEYS */;
INSERT INTO `watchlist` VALUES (8,15,'46','Godavari',16,NULL),(9,4,'51','Sita Ramam',4,NULL),(12,17,'44','Animal',18,NULL),(13,23,'30','RRR',27,NULL),(14,23,'31','Waltair Veerayya',27,NULL),(15,23,'43','Salaar',27,NULL),(16,23,'44','Animal',27,NULL),(18,23,'49','Mad',27,NULL),(20,23,'6','HanuMan',27,NULL),(23,23,'47','Mangalavaaram',27,NULL),(25,23,'8','Pelli Choopulu',27,NULL),(26,23,'46','Godavari',27,NULL),(27,23,'21','Nene Naa',27,NULL),(28,23,'15','The Golden Compass',27,NULL),(29,23,'51','Sita Ramam',27,NULL),(35,18,'46','Godavari',19,NULL),(38,6,'15','The Golden Compass',6,NULL),(39,21,'51','Sita Ramam',23,NULL),(41,28,'15','The Golden Compass',38,NULL),(66,12,'20','Demonte Colony 2',13,NULL),(68,2,'21','Nene Naa',37,NULL),(71,28,'24','Jersey',38,NULL),(72,28,'3','Kushi',38,NULL),(92,21,'15','The Golden Compass',23,NULL),(93,28,'51','Sita Ramam',38,NULL),(94,24,'19','Ninnu Kori',28,NULL),(98,29,'32','Arundhati',40,NULL),(102,24,'47','Mangalavaaram',28,NULL),(104,32,'15','The Golden Compass',57,NULL),(105,32,'21','Nene Naa',57,NULL),(106,32,'22','Spy',57,NULL),(107,32,'51','Sita Ramam',57,NULL),(108,33,'6','HanuMan',59,NULL),(109,33,'3','Kushi',59,NULL),(110,33,'12','U Turn',59,NULL),(111,33,'22','Spy',59,NULL),(112,33,'47','Mangalavaaram',59,NULL),(113,33,'15','The Golden Compass',59,NULL),(114,33,'32','Arundhati',59,NULL),(151,37,'45','Radhe Shyam',63,NULL),(153,37,'6','HanuMan',63,NULL),(154,37,'31','Waltair Veerayya',63,NULL),(155,37,'5','Kalki 2898 AD',63,NULL),(164,37,'23','Kushi',63,NULL),(169,37,'20','Demonte Colony 2',63,NULL),(170,37,'30','RRR',63,NULL),(175,37,'10','HIT',63,NULL),(176,37,'15','The Golden Compass',63,NULL),(178,37,'46','Godavari',63,NULL),(179,38,'13','Sweet as Pie',65,NULL),(182,39,'12','U Turn',68,NULL),(184,39,'9','Awe!',68,NULL),(185,40,'6','HanuMan',69,NULL),(186,40,'5','Kalki 2898 AD',69,NULL),(188,40,'50','Aquaman and the Lost Kingdom',69,NULL),(190,40,'28','Rakshasudu 2',69,NULL),(191,40,'44','Animal',69,NULL),(192,40,'9','Awe!',69,NULL),(194,40,'15','The Golden Compass',69,NULL);
/*!40000 ALTER TABLE `watchlist` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-02-22 11:25:06
