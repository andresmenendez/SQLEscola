CREATE DATABASE  IF NOT EXISTS `sqlescola` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `sqlescola`;
-- MySQL dump 10.13  Distrib 5.6.13, for Win32 (x86)
--
-- Host: localhost    Database: sqlescola
-- ------------------------------------------------------
-- Server version	5.5.21

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
-- Table structure for table `my_aspnet_applications`
--

DROP TABLE IF EXISTS `my_aspnet_applications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `my_aspnet_applications` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(256) DEFAULT NULL,
  `description` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `my_aspnet_applications`
--

LOCK TABLES `my_aspnet_applications` WRITE;
/*!40000 ALTER TABLE `my_aspnet_applications` DISABLE KEYS */;
INSERT INTO `my_aspnet_applications` VALUES (1,'/','MySQLMembership');
/*!40000 ALTER TABLE `my_aspnet_applications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `my_aspnet_membership`
--

DROP TABLE IF EXISTS `my_aspnet_membership`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `my_aspnet_membership` (
  `userId` int(11) NOT NULL DEFAULT '0',
  `Email` varchar(128) DEFAULT NULL,
  `Comment` varchar(255) DEFAULT NULL,
  `Password` varchar(128) NOT NULL,
  `PasswordKey` char(32) DEFAULT NULL,
  `PasswordFormat` tinyint(4) DEFAULT NULL,
  `PasswordQuestion` varchar(255) DEFAULT NULL,
  `PasswordAnswer` varchar(255) DEFAULT NULL,
  `IsApproved` tinyint(1) DEFAULT NULL,
  `LastActivityDate` datetime DEFAULT NULL,
  `LastLoginDate` datetime DEFAULT NULL,
  `LastPasswordChangedDate` datetime DEFAULT NULL,
  `CreationDate` datetime DEFAULT NULL,
  `IsLockedOut` tinyint(1) DEFAULT NULL,
  `LastLockedOutDate` datetime DEFAULT NULL,
  `FailedPasswordAttemptCount` int(10) unsigned DEFAULT NULL,
  `FailedPasswordAttemptWindowStart` datetime DEFAULT NULL,
  `FailedPasswordAnswerAttemptCount` int(10) unsigned DEFAULT NULL,
  `FailedPasswordAnswerAttemptWindowStart` datetime DEFAULT NULL,
  PRIMARY KEY (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='2';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `my_aspnet_membership`
--

LOCK TABLES `my_aspnet_membership` WRITE;
/*!40000 ALTER TABLE `my_aspnet_membership` DISABLE KEYS */;
INSERT INTO `my_aspnet_membership` VALUES (1,'andres.s.menendez@gmail.com','','123456!','InxZh9Q62ATDgwbbkJq0Fw==',0,'teste','testado',1,'2016-03-01 17:40:33','2016-03-01 17:40:29','2016-01-12 20:06:10','2016-01-12 20:06:10',0,'2016-01-12 20:06:10',0,'2016-01-12 20:06:10',0,'2016-01-12 20:06:10'),(2,'admin@admin.com','','admin','Nm451CK3L8rZhbnboAFNKA==',0,'teste','testado',1,'2016-02-24 16:13:34','2016-02-24 16:13:34','2016-01-12 23:14:01','2016-01-12 23:14:01',0,'2016-01-12 23:14:01',0,'2016-01-12 23:14:01',0,'2016-01-12 23:14:01'),(3,'teste@teste.com','','123456!','MP/KMapoC5T6DAljkdladA==',0,'teste','testado',1,'2016-01-14 19:34:35','2016-01-14 19:34:15','2016-01-13 22:17:45','2016-01-13 22:17:45',0,'2016-01-13 22:17:45',0,'2016-01-13 22:17:45',0,'2016-01-13 22:17:45');
/*!40000 ALTER TABLE `my_aspnet_membership` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `my_aspnet_profiles`
--

DROP TABLE IF EXISTS `my_aspnet_profiles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `my_aspnet_profiles` (
  `userId` int(11) NOT NULL,
  `valueindex` longtext,
  `stringdata` longtext,
  `binarydata` longblob,
  `lastUpdatedDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `my_aspnet_profiles`
--

LOCK TABLES `my_aspnet_profiles` WRITE;
/*!40000 ALTER TABLE `my_aspnet_profiles` DISABLE KEYS */;
/*!40000 ALTER TABLE `my_aspnet_profiles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `my_aspnet_roles`
--

DROP TABLE IF EXISTS `my_aspnet_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `my_aspnet_roles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `applicationId` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `my_aspnet_roles`
--

LOCK TABLES `my_aspnet_roles` WRITE;
/*!40000 ALTER TABLE `my_aspnet_roles` DISABLE KEYS */;
INSERT INTO `my_aspnet_roles` VALUES (1,1,'administrador'),(2,1,'usuario'),(3,1,'professor');
/*!40000 ALTER TABLE `my_aspnet_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `my_aspnet_schemaversion`
--

DROP TABLE IF EXISTS `my_aspnet_schemaversion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `my_aspnet_schemaversion` (
  `version` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `my_aspnet_schemaversion`
--

LOCK TABLES `my_aspnet_schemaversion` WRITE;
/*!40000 ALTER TABLE `my_aspnet_schemaversion` DISABLE KEYS */;
INSERT INTO `my_aspnet_schemaversion` VALUES (8);
/*!40000 ALTER TABLE `my_aspnet_schemaversion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `my_aspnet_sessioncleanup`
--

DROP TABLE IF EXISTS `my_aspnet_sessioncleanup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `my_aspnet_sessioncleanup` (
  `LastRun` datetime NOT NULL,
  `IntervalMinutes` int(11) NOT NULL,
  `ApplicationId` int(11) NOT NULL,
  PRIMARY KEY (`ApplicationId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `my_aspnet_sessioncleanup`
--

LOCK TABLES `my_aspnet_sessioncleanup` WRITE;
/*!40000 ALTER TABLE `my_aspnet_sessioncleanup` DISABLE KEYS */;
/*!40000 ALTER TABLE `my_aspnet_sessioncleanup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `my_aspnet_sessions`
--

DROP TABLE IF EXISTS `my_aspnet_sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `my_aspnet_sessions` (
  `SessionId` varchar(191) NOT NULL,
  `ApplicationId` int(11) NOT NULL,
  `Created` datetime NOT NULL,
  `Expires` datetime NOT NULL,
  `LockDate` datetime NOT NULL,
  `LockId` int(11) NOT NULL,
  `Timeout` int(11) NOT NULL,
  `Locked` tinyint(1) NOT NULL,
  `SessionItems` longblob,
  `Flags` int(11) NOT NULL,
  PRIMARY KEY (`SessionId`,`ApplicationId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `my_aspnet_sessions`
--

LOCK TABLES `my_aspnet_sessions` WRITE;
/*!40000 ALTER TABLE `my_aspnet_sessions` DISABLE KEYS */;
/*!40000 ALTER TABLE `my_aspnet_sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `my_aspnet_users`
--

DROP TABLE IF EXISTS `my_aspnet_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `my_aspnet_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `applicationId` int(11) NOT NULL,
  `name` varchar(256) NOT NULL,
  `isAnonymous` tinyint(1) NOT NULL DEFAULT '1',
  `lastActivityDate` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `my_aspnet_users`
--

LOCK TABLES `my_aspnet_users` WRITE;
/*!40000 ALTER TABLE `my_aspnet_users` DISABLE KEYS */;
INSERT INTO `my_aspnet_users` VALUES (1,1,'andres',0,'2016-03-01 17:40:33'),(2,1,'admin',0,'2016-02-24 16:13:34'),(3,1,'teste',0,'2016-01-14 19:34:35');
/*!40000 ALTER TABLE `my_aspnet_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `my_aspnet_usersinroles`
--

DROP TABLE IF EXISTS `my_aspnet_usersinroles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `my_aspnet_usersinroles` (
  `userId` int(11) NOT NULL DEFAULT '0',
  `roleId` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`userId`,`roleId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `my_aspnet_usersinroles`
--

LOCK TABLES `my_aspnet_usersinroles` WRITE;
/*!40000 ALTER TABLE `my_aspnet_usersinroles` DISABLE KEYS */;
INSERT INTO `my_aspnet_usersinroles` VALUES (1,2),(1,3),(2,1),(3,2);
/*!40000 ALTER TABLE `my_aspnet_usersinroles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_arquivo`
--

DROP TABLE IF EXISTS `tb_arquivo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_arquivo` (
  `Id_Arquivo` int(11) NOT NULL AUTO_INCREMENT,
  `Id_Questao` int(11) NOT NULL,
  `Nome` varchar(200) NOT NULL,
  `Tipo` varchar(4) NOT NULL,
  `Arquivo` blob NOT NULL,
  PRIMARY KEY (`Id_Arquivo`),
  KEY `fk_tb_arquivo_tb_questao_idx` (`Id_Questao`),
  CONSTRAINT `fk_tb_arquivo_tb_questao` FOREIGN KEY (`Id_Questao`) REFERENCES `tb_questao` (`Id_Questao`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_arquivo`
--

LOCK TABLES `tb_arquivo` WRITE;
/*!40000 ALTER TABLE `tb_arquivo` DISABLE KEYS */;
INSERT INTO `tb_arquivo` VALUES (1,6,'Exercicio 05 - Programacao TSQL.pdf','pdf','%PDF-1.5\r\n%µµµµ\r\n1 0 obj\r\n<</Type/Catalog/Pages 2 0 R/Lang(pt-BR) /StructTreeRoot 17 0 R/MarkInfo<</Marked true>>>>\r\nendobj\r\n2 0 obj\r\n<</Type/Pages/Count 1/Kids[ 3 0 R] >>\r\nendobj\r\n3 0 obj\r\n<</Type/Page/Parent 2 0 R/Resources<</XObject<</Image5 5 0 R>>/Font<</F1 6 0 R/F2 8 0 R/F3 10 0 R/F4 12 0 R/F5 14 0 R>>/ProcSet[/PDF/Text/ImageB/ImageC/ImageI] >>/MediaBox[ 0 0 612 792] /Contents 4 0 R/Group<</Type/Group/S/Transparency/CS/DeviceRGB>>/Tabs/S/StructParents 0>>\r\nendobj\r\n4 0 obj\r\n<</Filter/FlateDecode/Length 3154>>\r\nstream\r\nxœ¥[Ín7¾Ğ;ôat™Vó·» €l±¥È³Ùƒ‘ÃD3RX#E\ZÙ¼Şö9²{XäàÓbï[U$ûŸd[A\"©‡õ±X¬*?rÚGÇû›«õå>ùòË£ãı~}ùÓv“¼?Zİİÿp´úûıöè|}}³[ïoîv_}•¼<y•ü|x D.“şSğ ’ªÊ«¤,DÎTry{xptz»¾Şªää.ùîğàå\nZ^³„ñ¼ÖÉêêğ€Q_h%KJ)ó2YAÇ\"¹Æ__$E^¼ª’Õåûô¯oO¿_^¼;=9>Y&ÙB§¯—\'Ë‹ãlÁtú-4”)µ—é»åÅ×/ÒS•é9ı^f?$«o–+cŠ\\\nsÕZq°d€?zÍÆòBLy\r¦–—’º¿OO2•.ÏÑ¾ãŒëôŸV`Ce>¿Y¾€i8óÅKP+ûj‡µXW|Â„ŒKè´`Eú.[Tà^Ãvìå2‡dF½ƒ-S´ò5~8kf=dúO|ü6úÌ—’å¼i>¯riÃêœk‹5ş7ã<½¿É x—ĞÀÓ;lxLèyùx¿ÍjÔ)!ÖÔJˆ2İl3ÁìÌ^fLYÈ•tô!˜÷Àèƒİ˜=–‹Zçb`¹o–²^ÃÚĞ¹Š9Ä@u-0ªah%óº’‰®XÎ,ô#ö\0ÖK3½+ˆ$Ííñ1[pe\Zü:ËLù¦¼ÛX‘Ğé­7¾ÑM¶é®	z|²¡ Ô ½›V9u¹ÆÏO0.³6˜d£ñ0Z%{}Ûxÿñl\'=·8†›‚··ñ¸O¨¼ï’É•Ì{ËØ9R—¹İ’å›WÉ‘§F¾¼Ûïïn}er\"^¢ÊY5•PR•¹.˜D¡e¢r¶B-àÉÃöğàoŸ\'»¹¨î¸î÷;úŸ&™ãôŞ¼:=IŠ£o×»ë$½ß/ÎWYg>äA¨ÌÕ¤•\n8±«Ÿùô5BmfSÑiäC#Ga.8èºc†>1ÔGNîªÄêåK3…S¹Ìuú«ÉÙ…€¡pÙÀ\"ø˜±Ú>ŞàãÛBùRYB:Ê¾î ¹rŞô‹÷¬úÔtLP‰ªt^Ï2J\Zm¢6Ì\n6=Ø5ŒJ–V­˜è\nU’ÉA×ëI)X¿Û+Odz-úX¨q°ıİdë˜Ä\ZË¥®±ÚA`¡`U¶áşÁ”Ç…^BJÀÖDŸnDHHØŸvHYö”n4#àƒiCEkêôûãG30}˜ÔUvJÛ8TÒsÌÌ³w+x<Cr§¶ËE†„	róí	rlwJ™aÍó#ôŞö»§ÁĞ‚ëî¸f†·è0Ìù\Zö% \"Æfš÷ Ç¿3Ù3Ö¸ikôDÇFRÕ¹péèb`£CûJ[¼´îµ6CÉıˆB7üíœM`H”ãÊ¶ò3ú[NxNl£~Aá¶G2Z±Ñ9¹£¢`ìpÙ8&İ¡MŸµ1h]ñ€q›dŸã6YØõ“yGGÂ–àÖÎ”_¿°~²vÀGß¼PÅb7èN“Ã±‡›	ŠZıº»:ïM;vÜ“FÅÒu_aw4ÆÙgÀ¢lû+˜û]›ôÄ°¨Œl\Z[8À`¬ë§¶‚tâ³µøé`(Yä¬î#8dğnYÙÑpà«L¸¬qëÈ.6\\Çÿ³ëV:Ó\'Š˜	îïÓ5¬kˆŞı™ˆ]R³EUä’÷gñbÖ¹Ã¹˜z¯gp—+ıôEÁ¡Ps”T½­Rú9–*ÀbŞ,((åÛå\r‡hÿ)lÓ>ã”sD°5!èS+<=¬„¬\\À.?\r=yôZMXÁ9TÛ¾/2N»‚L…¡ş,Ã&LLß”£ DÁYƒà•éuyGôNWæD\0€‡[|Ü’Š=-•5ÌàGª±ÓfÁ5‘†{Ì°;œÅ5>Dàñ‚ê;ÁY4øDjv˜\\8;7ş½A;~E,Y9ˆÉªn=ò°½Ï„µhc’»NÃ=;Äï\ZTjOé(}à0\0ƒs ‰Ré¼Ò	BZbˆ0híq ›fu{ƒ3«o  ”ºsX}¹~ÜºÃlÛbÚ]b´‡•-ÍãÓ‡L·yhÒ5ƒ•¼£ó IF”lo³Š(ÉÿÒ?³|šı*ÑÃ‹\'®J }ó=ç\"‹kAh3–ÖòŸYÑ:zVg¿£¹Æ£^ßÒcL¨à›ğó3ü<C¬p`‚ülä®O°bÂ]‚—Ø4Ó]BğœWn,^Tx*º‹uogtö»/ô °ç”Y—¸Î·˜~ÆIæ7%ê\ZŸ~»Œ{•Ê¦ªŞ»ÖG$¢ˆ¦è\'LeÂçJ”yYÏòyÏ—î$\\ä¥xZñ\\ÀII–Ş,B3Ox^®>oåtqBbúÕˆ]51%UÙpÍP±¯?×PÌ´ë\n¶eÙØjÁ%MV×åá\0b.X_-¥Æ©*Éñ¾ 3Õ¢ıÙ6nqØÆl„N«%J€¬q&“.\nËm­2r¬U²e­âºÀ›S¯ªÆ¦ĞÙ¤!\'\'ßmÊ-AÚ)ô@Î¦€‘Ûaı0—¸o¼¼^ó\"]+Ù®9åTfy\Z—›*kä¶ÊNZàäUM1 ³iN g`›‚ íz gS@ÏÈÈíñ@7ZıÈÆm,WÚï¶¸Üo#·Å{:”x¼ªYW•¿”ÌÀ:Ëæt¶Ù…ÒN¤rfµz¬YÏ@Bk£¸ARİ¬+ÜíZ&p»œ‡ô¿g’\rE”¹ôò1æÇÁÎÍAÉw³‰ß‡ÕUûÕ&r7 û?Ì™ÏL\Zï–T*à¡„á)	\Z*x`^ÚûL³ğ^®&ÌŠ“_3¢c!/Ê1ù\rvnÌ\\°ãa¸Àèú¶.¼ìöyÃÔ¹œ%ÎoÍh×…<¢Æü6Ø¹ÿ5µÌU	€‚‡½0[õ$ß”¢Î™3‡sjçTO°´ô™û–jz17@\\Ì=lCîñ¦ã“;êBòYìË§jÄ¾b6Á¹iŠ˜—×¬ö’¸÷Ørg‡§D<bZ€«,†«~¼ò\"]ä¹Îµ€İMßãÂ¸Ü’ÏâZÑ°Æ€Î¦XX#¸¦\\¡xÊrg‡§D<rq<¬>äpS÷¸(.·t„ä³xU«*Î«XgY,x\\SeQ<e¿3¥é?²$¹;ÂÒª­¤(º²Û®RwêE,o	‡ÈE!}»]9fQÁÎqÅ^êt6¥soXÏàPœ.~é[Ó²C¼¸ë„$ü×	%ÊK¼9¼8Çk¼ÑLâÄ‹Ftœ&èøjL¼‚æÒ—ıĞÒ»k-#ßXG^öÌQEQ‡Œó0\ZÍÑ ƒê1vö›*Y‰ï~¬Åä)ºNª)}Tí¹£ãA©œí«Ş‹2…«q|rUkp^¦Æ÷H3 ô„®šÆ„dÖ=Ckíp(¨§¯eúÌÍ´³°ò\0wójˆÉGì­(r]Ù=b$¥ß[~¨ÍUVÍ†ÃC·ewÎ‚X2ºp\Z•áµöÅÃÚYXy€Óy5Ää#·Ï·ó@:$\Z¡›¤KB—McÊ2ï>iÜZihçbå¦×Ñà£z!È(3ë\\ÑBÍØtlmåî¬iK\r¹ÿÖL”gß2Õ}Ç´·£°ßwò=QA?=º5»¤ïäoÍ7õ‹’hÜÆ¼8SÿN÷\\kYU›—k‡ÖF9±eH~çò§wr:Q1Ì¬g)§Æ^ú“Ã\"©euv¸–ù]$F¬.Ü9ÊêÆæ*›PUÿdá¡uÏŞĞºÙŞêyAzx¨K¬*qb×ú˜¨+œØÛ‰ÉªÜJ‹İÁyU\rÙ\\Ô¦’çÕô­Ï€Êù€M™ yˆÊù4ÄäC*\'JÑÄ‹zÀM^¤?ŒÉÚ›ƒ	¦Wâ$dSgß0âé÷,uòÄ).·ÔªêÔß–n9T,wb@gS4wbÀ¦x’<Ä}\Zbò!/œ‘;J?²ÑIïvøboßí0bß»Ä±<~Ë-«:u:\rÓjTEoCXgY4bÀfO yˆF¶\Z¼42\0ÒÈyĞhİÂïIûšN“\n¾×t`ê5·Ï´ÉÒĞNQj0.á&\\CŒ÷Fıç1D;¡¤zyÜX©ü;/©‘—{ŞÜü?ıÛ¦ÿ\r\nendstream\r\nendobj\r\n5 0 obj\r\n<</Type/XObject/Subtype/Image/Width 119/Height 166/ColorSpace[/Indexed/DeviceRGB 4 <0000000000FFFF0000FFFF00FFFFFF>] /BitsPerComponent 4/Interpolate false/Filter/FlateDecode/Length 1536>>\r\nstream\r\nxœíšYnã0†©X° è	ø ûŸiDR©ÅK1u1“(æÇŸ¢¨ÅMCøõ…¿Gg,‚W-?1\Z~\n\0ºUYãsÈ…EíÇú³GuÇ^ŞãRßOX\\”¬6Çc7v#Ùe\"…‡yÌ*÷ Íá’……XŸÃ¯²a¹Š9&9ºGF0†\0e|ÅiMuËÆ!YˆåDÓûØ]ñ“Ö!Àä‡1Z ËÖÒŠN÷	‹D°C´7q¤YI\ZñÆR»lY¶ˆ£K£”­Å \rº¡RmØ˜\Z+ÊÁ‘\ZÅ ¤„=d)«‚€µÒ—èC—ŠfŠ7\ZQvcA-Ü?ÎE¿ì|3ÌXé•°lŸÆ”>=öcÑ²-»Cb9L8»T6LÙC-ì~h–ÚpÆJ 42˜F…{(ïcÌd°yŞIÒ°ËNõ7X®åıàecÉy)å–ËG×ÓD—Ñ$¤ÁæŠÔ3²­ÉèxI!µ”\Zôiš\"3¹v	Œ‚ØSı²#°Ëd?«syŸ\Z©ÎÃ	Ëwç¬7ÆM® ú/ï½º1gá\']Ÿ¸j¼rƒÆH\Zğ™çª² Øu:a‹ùOÃêtÁŞ¸Ì•/¹úÚßèg\ZsÍí,Ï\'µÑ²lAlZŞÃ	‹UÊè†º)Ai#ø¼Š¹ö3×ı\0¼Ò\\ø¼âÏ§Ÿv„õLpbáõl.¼hP2KEø{öçUØÿ)‹nbñ‚­prù«o5¨æºÇ&6uÍXèÉ^|Æ„ï²Û@ø¶n/Ü&ê®{;Ïk/|›µ·„uypÖ•|?`Ûî³6htµ*ÖmÎ®Ÿfi¸©;Ú¯\n[Äı„mv”æÛ[ÑK]S9OuÍc˜¹.uµpœ»uÕC™=Ó5cˆôÄ°ÙË­—ºiOñ}¦®cfaÊSîŠåÒÈü•.oÀ‰]Í29ev?¾¡²öåk…Í]èÆQ„[cÙjtÃœU±AÆNMÙœR$WjlØßMİşŠõˆÏX3w1üRWN{X×ÔÅ¯uÃœE_ßkÆ–!â}¼Ÿ‚wt½ìãh»¼ê:^­ÒÒw	×º>å­[&¯Ùò>è4/Ÿ§¬Oü‘Ûºİa¥\nçpÆºîÈ …ıEÌ¡½ NÌsİ‹¶»YÇcî¸\"ó¯£¬ëY]l§ìéa4\\±úÖ`Q¡svò;[”íâBwÆŞÉÕ˜ÕÏFYN¹xÌòd†õ9›Ö€ôó%=~nïL.ÙX¨X—„éóş¸¿i÷O¬q›^È5Ê9;²nËÖ9:bÑi]mÆ¬ë’\n¥İ¿Ü“õkM…rÅÒ¢³±²\0İ`‘ÈÎ8rÍ¬ÏlpÚ[Ëòá£,Ï·Y°We×ÊbÙwš–Í‡â54,4Ë†ádÎ,(VÖÑ&Y­,M¦´ÇhÒ‡J¸\'Yd½Ö¬SûFbõî©B‡Z¡ÔYĞ<¢e³¯œg}vS(½¨ÖğÌšã×Z}*[T°y)ã„\r°Ú3å\ZÑ~²‚:qœÈòÉ´}|âşråZC¸à:œ3tÈ§XØ¾¿ÎzpÉc£×7ÓaeÖ¾cEôøJG}ªØF¸í5%óÜXG§ÏöÑ9×`4ÓySAá,§\ZNÂêÇ>C„6³ºÌ–ÕJ]ï¹@ÿÅ·ßwë„Cáy¤GøhúşÒO|añèé»Ñ¿\ZÑ—V;a‰ˆ·Éb{oÄn‰%œıPt7ûÊº­h„7{%[ÍÒøÊ9à¯X´n0»%–^BËŠ}ùD±;F,‡,(_Í›=|eqÇ:ü­l44ı¥{’/QkÖ‰(u&u›òÌ–éc²§FHÙ(û`èYß/›‡†¥X|a¹ÃÓWrE#±qö¸62+IitËB=£ªøreDı•”Ñ}µ/„v	lfSW^±(p~UÏA±vAÍ«;ÒĞ£×¶îBG=)-Ë±ä=aéNõ-«Ìé›É½°ô½¤µí¾ã;úÕ£a—ÃşQÁ€İõoëöúÇ¨1cµ4\r\Zã¦\r8køíXs–ıåÉ„}rı±ìûØ’äµû\r\nendstream\r\nendobj\r\n6 0 obj\r\n<</Type/Font/Subtype/TrueType/Name/F1/BaseFont/Times#20New#20Roman,Bold/Encoding/WinAnsiEncoding/FontDescriptor 7 0 R/FirstChar 32/LastChar 86/Widths 69 0 R>>\r\nendobj\r\n7 0 obj\r\n<</Type/FontDescriptor/FontName/Times#20New#20Roman,Bold/Flags 32/ItalicAngle 0/Ascent 891/Descent -216/CapHeight 677/AvgWidth 427/MaxWidth 2558/FontWeight 700/XHeight 250/Leading 42/StemV 42/FontBBox[ -558 -216 2000 677] >>\r\nendobj\r\n8 0 obj\r\n<</Type/Font/Subtype/TrueType/Name/F2/BaseFont/Times#20New#20Roman/Encoding/WinAnsiEncoding/FontDescriptor 9 0 R/FirstChar 32/LastChar 245/Widths 70 0 R>>\r\nendobj\r\n9 0 obj\r\n<</Type/FontDescriptor/FontName/Times#20New#20Roman/Flags 32/ItalicAngle 0/Ascent 891/Descent -216/CapHeight 693/AvgWidth 401/MaxWidth 2568/FontWeight 400/XHeight 250/Leading 42/StemV 40/FontBBox[ -568 -216 2000 693] >>\r\nendobj\r\n10 0 obj\r\n<</Type/Font/Subtype/TrueType/Name/F3/BaseFont/Arial/Encoding/WinAnsiEncoding/FontDescriptor 11 0 R/FirstChar 32/LastChar 32/Widths 71 0 R>>\r\nendobj\r\n11 0 obj\r\n<</Type/FontDescriptor/FontName/Arial/Flags 32/ItalicAngle 0/Ascent 905/Descent -210/CapHeight 728/AvgWidth 441/MaxWidth 2665/FontWeight 400/XHeight 250/Leading 33/StemV 44/FontBBox[ -665 -210 2000 728] >>\r\nendobj\r\n12 0 obj\r\n<</Type/Font/Subtype/TrueType/Name/F4/BaseFont/ABCDEE+Verdana,Bold/Encoding/WinAnsiEncoding/FontDescriptor 13 0 R/FirstChar 32/LastChar 237/Widths 72 0 R>>\r\nendobj\r\n13 0 obj\r\n<</Type/FontDescriptor/FontName/ABCDEE+Verdana,Bold/Flags 32/ItalicAngle 0/Ascent 1005/Descent -207/CapHeight 765/AvgWidth 568/MaxWidth 2257/FontWeight 700/XHeight 250/StemV 56/FontBBox[ -550 -207 1707 765] /FontFile2 73 0 R>>\r\nendobj\r\n14 0 obj\r\n<</Type/Font/Subtype/TrueType/Name/F5/BaseFont/ABCDEE+Verdana/Encoding/WinAnsiEncoding/FontDescriptor 15 0 R/FirstChar 32/LastChar 233/Widths 74 0 R>>\r\nendobj\r\n15 0 obj\r\n<</Type/FontDescriptor/FontName/ABCDEE+Verdana/Flags 32/ItalicAngle 0/Ascent 1005/Descent -207/CapHeight 765/AvgWidth 508/MaxWidth 2006/FontWeight 400/XHeight 250/StemV 50/FontBBox[ -560 -207 1447 765] /FontFile2 75 0 R>>\r\nendobj\r\n16 0 obj\r\n<</Title(şÿ\0F\0A\0C\0U\0L\0D\0A\0D\0E\0 \0D\0E\0 \0A\0D\0M\0I\0N\0I\0S\0T\0R\0A\0Ç\0Ã\0O\0 \0E\0 \0N\0E\0G\0Ó\0C\0I\0O\0S\0 \0D\0E\0 \0S\0E\0R\0G\0I\0P\0E\0  \0 \0F\0A\0N\0E\0S\0E)/Author(CEHOP )/Creator(şÿ\0M\0i\0c\0r\0o\0s\0o\0f\0t\0®\0 \0O\0f\0f\0i\0c\0e\0 \0W\0o\0r\0d\0 \02\00\00\07)/CreationDate(D:20150410084418-03\'00\') /ModDate(D:20150410084418-03\'00\') /Producer(şÿ\0M\0i\0c\0r\0o\0s\0o\0f\0t\0®\0 \0O\0f\0f\0i\0c\0e\0 \0W\0o\0r\0d\0 \02\00\00\07)>>\r\nendobj\r\n23 0 obj\r\n<</Type/ObjStm/N 51/First 386/Filter/FlateDecode/Length 872>>\r\nstream\r\nxœ•VÛjã0}_è?ÌØºÚ‚RØİ¶lé…ö¡ìƒ›hÓĞÄ.®íßïQ¤¤¡+Ë	´ÑÅs4sfF£áŒrâ’#®ˆåœ¸&¦ñ‚x.‰—ØW$‰\\ãŸ„†¤!ÉJœd!IRÀŠ‚TM\ZXaH—øVRÉ¨0‚dN¥T$9(ŠŒ’$Zw”Äˆ,ˆ1\0$ì`dˆq•“,‰	À0eBÁAc¤ÜX\ZØ\0»ƒµL™’p4ÓV8¯ÈaÎ+€S8§dÚ1f¥.	|˜2s\rp\ZÜs¢á\nœVµ$üqLHkŒ8âÂñÆ¾Ìi8LÂ~í<Î~U%”a¿`0\nû%|ÈÜpî\\ªèü<9áœÆÙ$eÓW›Mºv3ë®Vvİ>Rş‡²Ñ‚„“¹¸8ûv„á§CÄéy:DÅ b¹ûÑÌ?b0Õdv°›(!wÆIï¢¸|¥Vœ)£ŞĞ)ˆ‰BT€L/£ŒŠ>F¸Ó©Ä‹&ë2Ó§L¦³<šæÊdoŒ÷ÀÉkUÿİ‰g·(HŸ¹S62Û&ø,°q°®LÒŞ7)ÒtU¯²dÒ°èMRÖ›525Ñ;>¤¬?kÄ±ÔÇÒG&ø,°qoQŠ\'éFï½bIºJô*KgM´b)ëÍ\Z•Îšh­RÖ›5{àP y~l }d‚Ï×ôX Óof´\0)“¤«{Nf\r¾ĞCÊz³F\'³†GkÍ²ş¬1ÇRH™à³ÀÆugCñ´zZÙh­VşnŸÌ½Ef ›ŠV´L´eaÅÎuvÖÅ“pk)÷à÷‰Í?øzå»×¸oOTÏyInBP nÚZ;nš.7+{_½ºÖ6ªZ[o¿ºŞvÅÇ@ÔÑÙ}°ïİ­ı ¾ÆYuÓÙìÁı\\ÕóÏÅ¢OÍ»güËVsÛú¹Ãìæ7õjYÛÉså,tßkœPuË¦ë¶[ş­0Ù®~7íËSÓ¼d—Íl³†MÛ·gk;gd—İW³¶9Xÿ|ÆïÁúrY­šÅÁÆdµœÛY¯b‹¶Zg×ËÅ¦µëÃfı†>Ş5ı{ï8ß—~\rœñÍShkBo^ığ‡—2<Wá!	%>ßPCm\nU#Üçp©¾fÈÙ·¨D\r\r\nendstream\r\nendobj\r\n69 0 obj\r\n[ 250 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 722 0 0 722 667 611 778 0 389 0 0 667 0 722 0 611 0 722 556 0 722 722] \r\nendobj\r\n70 0 obj\r\n[ 250 0 0 0 0 0 0 0 0 0 0 0 250 0 250 0 500 500 0 0 0 500 0 0 0 0 278 0 0 0 0 0 0 722 667 667 722 611 556 0 0 333 0 0 0 889 722 722 556 0 667 556 611 0 722 0 0 0 0 0 0 0 0 0 0 444 0 444 500 444 333 500 0 278 0 0 278 778 500 500 500 0 333 389 278 500 500 0 500 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 722 0 0 0 667 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 444 444 444 0 0 0 444 0 444 0 0 0 278 0 0 0 0 0 500 0 500] \r\nendobj\r\n71 0 obj\r\n[ 278] \r\nendobj\r\n72 0 obj\r\n[ 342 0 0 0 711 1272 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 776 762 0 0 0 0 0 0 0 0 0 0 0 0 0 733 0 782 0 682 0 0 0 0 0 0 0 0 0 0 0 0 668 699 588 699 664 0 0 712 342 0 0 342 1058 712 687 699 699 497 593 456 712 0 0 0 0 597 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 668 0 0 0 0 0 0 0 0 0 0 0 342] \r\nendobj\r\n73 0 obj\r\n<</Filter/FlateDecode/Length 14645/Length1 49600>>\r\nstream\r\nxœì}	xSUÚÿ{î’Ü›íŞ›µmÚ&i’niIhË24”d“J‹¶@¥H²IeQ`À¢TÁ‚:\" îèŒƒ2ßh**‹ŠÌ|ÎŒ£2ŠŒË¨8.¸n¸B“ï=7‚cû7ó8şÇçÉ{{9Ë{îyÏ¹ïrnîy\Z \0`Cà ¶ºnÔÈÈ·{Â\0Û«+FV×Œ€lö€{\Z+sdíø:m¹iæ—b¾bdİÄªÃ¾÷²1m`ãØúº³Ø¿–Œ`_,Yôj»€¼„õÍçVkXüéŠù\0ÖU\0üëÓçOkËÙgÄ¶‹ä¹úÅ‹İçzf\\ºóŸÍl›5yÍQÀ”lÖ´Emà\0û;¯\'Ïš·læS¿›°jbJkËü¥–W\\ÖĞxwëŒi-¯-{\r^k\nò—µbRk\\‡ù˜÷µÎ_¼tw£Û2\0¦õóLŸ6ëĞ|ìoÊ«m›?mi›¦@³\0ùw!¿ûÂiógœ}t÷4€[±ıëm-.…ƒ(O.­o[8£íµ_:\0ğK¼&+[^{ï7ãÿüÆTiÈàÄa\"ı~^İ×ôó‰ëüøMİ×ï®G^ˆ¶ô‘	(SÖ_d¼[½R±×Òv\'”eÀbKB0GÂóa\0Ã­cÁZ¿‰/ÅKúcŸìV8Èò0zcyc¸;@\r{2Qzíqun7àAŠ5™‘FxRĞ“{İ@n§uÜtş\0)¡G$ìC=Ù\nxŠÛÛh†+u…p-ü„¤)ƒM\nìı¡üÚM§yùC±´¦*öÉ/†¼Dûçà\\~lç„üœÄ×BÃ©º°çhëÉ<¦·—ÀvZÎ_ªòo§mØo±ıc0•½XwÇwûàşõ‰ÊôCyQ¦ÖD®ıï&oÿ§ûø9Õ‹ÿß2$)IIJR’’”¤$%)I?áúvËæÊìNB¬Öü< ¤.}\\e1>\\ã‘_oĞÈ\Z@ÀZ\'j4¢SİñL§“ÖŞ:êKˆD¨×’”¤ÿbJLo	Z-ZÖ×B¢A‡¨SQzD`ŒvSËE”@B”UT@A4ƒ9z,`A´‚\rÑ¦¢ìˆpDC\n¤ ¦B\Zb\Z8*¦Czô[È€ÄLÈDtÑ­¢<ÑoĞ[d!zÁ‹è?¢²³¿†ÈAÌ…\\Ä<ÈCÌ‡\0b\0ñ+(€ÄB(DìıƒP„XÅÑ/ÑQ,ÄR(Eìı@Yô(S±Ê+ q Dƒ£Ç`0A¿@ü…ŠCa(b%TF?‡C¦bT!‡áˆÕPıj`â‰8RÅ³à,ÄQ0*ú)Œ†Ñˆc`,âX‡8NÅ³áìè\'0Æ#ÖÂ9ˆçÀÄ	ˆCÔ!ÖC=âD˜ˆx.œ‡x4DBƒŠĞˆ8	&!N†)ˆS )ú4©x>œ8¦\"6C3â4¸ ú!\\ ât˜Ø-ˆ3`âL˜ı\0fA+b«Š³a6â˜ƒ8æFß‡y0q¾ŠÂ…ˆ`b´Eßƒ‹`!âBÁ\"ÄÅ°q	,‰¾ÃÅˆ—ÀRÄ¥*.ƒeˆËayôø%üq¬D\\©â¥p)b;´Gß†U°\nñ2¸ñrX¸ZÅèˆ†+à\nÄ+áJÄ5°q­ŠWÁUÑ· :×Á:Äõp5âÕp\râ5ˆoÂµp-â¯àWˆ×ÁuˆàzÄëß€°qlBÜ›o€-ˆ[àÆèëp£Š7ÁÍˆ7«xÜ‚x+Üı\'Ü¦âí°q«ŠwÀˆwÂ¯£¯Á¯á7ˆ¿Qñ.ø-âoUÜÛ¢‡àn¸ñ·Ãï§âÿÀÿD_…ßÃ½ˆ÷Â}ˆ÷A1¬btE_ûá~Äğ\0âğ âƒğâCˆ/ÃNØ‰¸v#î†=ˆ{àaÄ‡ÿÀ#ˆÂ£ˆ{á1ÄÇ`â>øCô%øƒŠ„?\"ş/<ø8ü	ñOˆ/ÂŸáÏˆ¿ >O şD|Š¾\0OÁÓˆO«¸ö#ş\rA|>Ïªx\0 >Ï!„ƒˆ‡ç£xªø¼ˆø¢Š/ÁKˆÿ€—£áexñxñUÁ!Ä×àµèsğOxñuß€7ßTñ-x+z\0ÃÛˆoÃ;ˆïÀ»ˆïªø¼}Ş‡÷?€?Tñ#øñ‰>Gá(âÇğ	â\'ğ)â§ğâgˆƒÏásÄcpñøñKø\nñ+Äığ5|ø\r|ƒø-G<\'¢OÃ	èFì†bDÅ(D=.°ˆzX–ãA£ï#Ú¸4€M|½FÃk°@ÃÒ×+\Z$çU>ét’í­#Mo	R¯$)IÿÅ”ŞêŒ:j»\ZĞ\Zûà…¸45_áL+Ój5Z4o-µ]½‰×ğª¹ÇsÅÙ¯\"j{«H’¶›¤Ÿ#%¤·z“8Ó‚`êƒ+Şvu1ÛâëA+`ÀpI£åU†x[ŒkÁõÖ‘Ğ[E‚ÔkIJÒ1%¤·É€¶‹AR”úàÅÓi=\r½âÈvÅŞ*¤¤í&éçH	é­Q1¢íjĞv•>¸tºÓiÃ÷Ø®(\nÔ¼Ej»&I#hT3ŒçŠ³Ë¤í&)IßC	é­Él× 3÷Á¥û\"ËH—ÍzĞÅ×‹:A‡f§SmW‡¤4*C¢¶«ë­\"AJÚn’~”ŞJ‰Ú®zK\\†8Û5Ñe³áL+Ó¡íêzlWVmWÔªñq4®E¯\"öõew\"”´İ$ı)!½•­ríöµÀ·G¢Ëfcü\Z—E\Zšõªíê‘Q«ša¼…ÇÙeÒv“”¤ï¡„ôV±+ Ñ`4Øûà2Æ½@’¿Ïv\r:\Zš\rô¯Ù€$è•¡Ûíõ5®¡·ŠéÇzOœ¤$ı””Şšfj»z0:úà2Å½@Rè#¯éL+3õF,0RÛµ\rF£¨Ts£q-z±¯—Ì‰PÒv“ôs¤„ôÖ’b­VĞƒ)¥.)ÎvÍô‘W:ÓÊŒh»X`¢û3¬&#µ]Qmo»q-zİ‚Ñ×KæDèÇÚã‘¤$ı””ŞZS­Ôv\r`JíƒK{ùk¡¼ò™Vf4L\'m×fBÒb¶“¶›¤$õM	é­Íi‹Ù®äìƒK–O§­ßc»&É@C³Dm×.™$IgĞ©æãZô*b_D¡¤í&éçH	é­=İ‚ \ZANïƒK‰Û¸a£_W)gZ™$%,éŞ*‡,I’Ş¨“iE¼íÆµèuë£œˆì}Ğµ·2IIú))!½ud8¨íš@ÎèƒË·qÃN¿®2Ÿie’l’OÚnŠŒ¤7Ål7>:\'m7IIê›ÒÛW\nÚ®ÎŠ«.Kœí:è×U–3­LVL\n(ÔvSYQ&½\Zªãm7®E¯\"öµ13JÚn’~”Ş:³œ Šz,Y}pÙl§Óiô‘×gl¡4[djŞº§9Ã‚d”\rê>-9ét²×mË}mîJ„~¬}ÑIJÒOI	ém†?t:ƒ6\\¸NúÈë8óÿ¸X¬ŠÍÎF÷EºlV«Õ¤Us£qvÙë¶e[o	Òµ/:IIú))!½uç¹A¯7ZÀÑ×¿¤N{ù›I—Í©pÆ6,›İbG³sĞ}‘Y»İ.[$u¯G|³Ë^·>öµA$ú±öV&)I?%%¤·|Oíæ÷Á•÷ò×Eÿ[NÚ™VfwXhhN¡¶ëMq8²URÍ=>:ÇY{Òv“”¤ï¡„ôÖôƒÑ(Ù!-ØWFÜ$/]6gÀ[9RÓìÔ¼ÓŒ\0Æœ´Ô´4³]I£ñÑ9®E¯[Ó‘½ú±öV&)I?%%¤·ùòÁdRR!s@\\÷ét.\r½8ã•RzF*5ïL€© 3##Ã–jÉ¤ñgÿ½nŸÊLDö>èÇÚŸ•¤$ı””ŞöÜdÙâÏà>¸|ŞÓé€,ğÁ¯”\\n§<2€\\ìq»İ§ÍC+â7kÅµ{ëÈ“€è}Q¯$)IÿÅ$\'Â\\*E±f€/ÔWNöé4®­ısæá÷x3¼hv>@àËòzS3>ZGãì²××¸¾Ddïƒ~¬÷ÄIJÒOI‰ê-Óó»V`iŠà3\'Ñœş1Â0pê*OıJm_ï’}qoŠ\0Ja\0”Ç×W×ŒyÀ˜±\0ãkÏ™PW?ñÜóÔßNlŠçš}:¹¸·®îC\nHèg>—æÔ_-É7¦üôCŒƒZ˜\0õ0åZËa+<\0oÀRı½;Å3\rZaŞ™<Ñ·¾÷˜ıGtmtMô7?ìDBƒê+ÊËô/-).\nö+,äçåædû}Ş,Û•™‘îLKMqØmV‹Y‘%“Ñ ×‰‚VÃs,C €„S†7t¥jNÇÓXØ“O;3fıòg0˜Ï`r~§QúwòßÉgÊŸkx„wx5½pŒx\'–0±†öB,ã°§F5-s¼5³Ã©Ã[š›±EµWv‡G|ìE½v—^7Ü;|†®°\0ºtzLê1…¼m]dÄP¢&˜5ƒºŒ…as Ìøkè9\'Z×Œ	o5^	k,§kvE÷­¯lv2e‰¥HX3<¬UûuÏ‡¦…a»«`_çú]2\\Ğ0´x[¦MÁ™›†2vë¯i­§óXCÏæVw˜Ã‹«àÄwM«»ÓK§£¦µÑ[­¾·‹Åá\rk<ûœa3~Ö„•@x$rŒ\\~ØÉvÖ¤ÌvÓlgç\Zwxë9\rñµŠ)(pg/ˆ«™S…CI	ÄÆÔ3-ÍshŸs¦Q9kæ¸;×ÍPe]¯Ê ²Ö´â™öÿâêì¬iñÖ´Lk©Š]}x8T¯~@ı¤u€8uÕ=E=XÃ©5ÍÕØd™Ğ0œ\næVíŒİöS%Í=%XPs²ÒM%…»§»Ã0¡Á‹¬fT@çô\nUy<[Õnæı²×İù„I³÷ÈGg–Lë)Ñøå/€&GxG4wvğºGt6wNÛ]u×-{;»ÆŒél«iÆ^k°Õ®èuÎğˆõa¹¹•Â¹§\Z0bBC¥Ó£4ÌÖÌª*–^ÎşêùÀY†ú\'jbC£ç©¦ë1û¤Š„Š[÷¸gÚèÍ¨85=Ã{’ÕÎu»BpfÂ«Îiˆåİpó~x?šiÍ¾“5¶‰´fÕÉšSÍ›½ØËª›²……ìS’l·Ô´\n{Õ3bõaËğÖÉ4ÆRŒ“¥)]\0-}HØÀtn oÂ³Ş°ó\rûœC\Zİ²‚€Ş½:ï˜s&5¸k:OiA¬¤g¤TPÕ½ÓZ;{L‰*=º‚ª./Y{NWˆ¬­›Ô°[F_½¶¾á~†0Ã›«\Z»|X×°Û®U-eN•Òœ›æ`UÀûA­rî¬Rk9µ@ÍOßE@-N–˜¾‹‰•ÉjR!„Äú÷Şõ¹Ş}Gqáíµ¼`ËBÿ /nP\\ûñ|\ZÏ§ğ|Ï¿âù<ï¹ÙçºÏ›nv»n¼9×uó§ëÓ-6×¶-©®¶ä»6oñ»6a:´…lAvé3²qCªëú\r×u<.Ø@hGS6èå2é×#ÁGØàÃvË»	e~¸¿nÿš‘¿rúŠmÿ‚ÈÇÜÇ÷ÑÚ£Lğ£ÊÆÄ=ßö<³ãş\\×ı;WpGåæp[¸íïüÛ‡}®·ğ¦ìø#„v}\0Ïµ÷sÀóÙv·ë™vÅµÏÇğ¼vot/#=J¢’®ûWÛ}D¾Û}7³îª\"WçUA×Uí¥®µ)®5x^Ù1ÊuE‡âZİ1ÈÕ—Y°}ëöğöO¶s¡;ˆ<Å=%4…ı¯xy{Šë²öÑ®Uøy)ö¸ÏÚöæö¶vV–<.»-ß¥Õx\\©)ù.õ¸,æ|WA¡”0åæIÙ9&Ÿ_ÊòšÜ)Óer¦gSRÓŒ6»Ãh¶X’¬F“AÔé\r\Z­`ÀEWDYZ%1!Í*\rbW±Œ•0Ú“ğÑ¦B0ó<Qœƒ—4Hp±T®ÚR61õUaÁÏºªpi`Ì.&„KcÂbíä†.B®iÄÒ0³oO}˜[‹ZTşÒä†]$•V_¡†Lí\"«®¸újç©Tcc #Ü2¦®!Ü–Ñ.¡‰_e4B\0iÑâE‹z¡.‘öŞ2¡ªë}‹iá÷½Õ]¼¯ğŞjÒÓ4ş\Z˜Ä‹ÊÅşâKÔòÅÿÒÚİ„ÆJ÷Eğè·21Œ\'n:¨ßøDßPñĞÉt¤%úÅ_ÔõM$¾•—`ş¥ğ¹ÆµäJ²ŠÔ“KÈ|²„Ì&!24\"®ÆÜ¸WeºŞ\'n’JL„/Qˆ?É Âó!Ï1•óV‘Ağ9£Î¬Ãó1ø;†#!&Ø‹Ç,<¶Ãô×˜H&É!ÉYp¯N¿Ï¾	º`7ò<m^wà\"IäbÒI62Ff$3	ùRÈpr39Îù@K.aÌd»‡#\Zb#>ØOÃËl8úÙ\n¯³…ÌX\ncá éOBì]l>ëb0waO\rêO¼°øaİ©a8 gpÿ¡ı*yâG Èõí*ÓOXEï…§æ£¶ĞÖÙ!;Ë2Œöo<âcç§ò?^$MÁ¦Ãİ‡!Ø]¬,.\"¬‡%x=f~¿È~äæÈ<²‘?püUÎ÷mxÍmì_8ƒÆª^³,äÕhñ¢,g$¶™mc‘¸g@+khÛµœ6(†D;8RŠ\'T–ÍÒ>¼êÁ†¼9¤Oµ{3t¤WFnà‡hr!}D¼³<Ñ(Éåú™»¢¯‡:DS¹àFà³­k®?Ç,3W‘ó-®ıæ/v-î·¬X¦¾Éí‰Ær§Ûé»%Õ^˜ç—J‹€Õi¦¦“ô|;NB­èL·èx?/=5˜\ZLŸš:53¥¦÷çØõn\rÑ¸C:¹Üí.Z§±Tˆbá:°»:,…	?˜slRp€,-=l¢‡Ùu´R8px}CHj’jıó¥fÿb[^{©¶©±¸¨) øgå´ŠWÉöå(¥™Ä¡äô#ø7 ¿¯|@©x±ÀæÈ$d€‰Ø¬vÒ?;Ç6”ğC\"‡?¼·-òr]á”/6åæŠŠ¡DşôŞ)_,ùÈÜÚ7Ÿï\\5»šÜ1w@Õùä÷÷|&G6‘¤ñ•‰Ùn«è×oÍôM·¿ÿ.Wy=¯L‘vş=~`ÿ`ÿˆgĞ@ákq0ı¡k£oˆ·ñGA8!T;BçJ£ñ&Éj2I\"«E‹&•ó?ÙÎ–u=)j%)ğd[*IM-~Ò’ê5˜˜†ÆšV˜ƒ©ß^»=w¯Á¤‘åé{ñ1r/à„«S{D[:¹G‚Á&¨T•(Xûl*.ZÃ÷¬Yù8±j¼YÙú—•–ØıÄ#Æçq–¼Y\Zœ®Ò’²ø4—úÎ«o½ıÁk¯¿É\ZN‹|Î\ZØ+O–|S?º¾~4=ù+N¦8Ã7Ÿ|şÙWüÜ·A´†ozrdìÖ¶¶;îhk‹4÷$¨Õ¥ ·ÎD«Ó¢Ç¾74AÃˆ¢N`ÈeX êXîr×”k*´c4ÕÚÉšzí|ÍÚK5iu€ë!öú6TFĞ‰„Ã\'Ñå8,O–Ã˜*êD^<ÏÀ®è?CfÔHŞƒ\0’€Áe |°I)m\nTë XI?p¢bŠ\'ƒqüJXÉsM¤iÜ½oß>…}Xı@¥8Nd 	WÇhşâÑ3šÌÈ¢Yİ/ÍŠ¬d²ÉÀÎ¤0r?pb>cïş€Z)Ş+~Ò†Ïò¥0)4xŒµ©·ÍfZlm†6ãB¯`1l„L9“iÎ¼/“ÉÌÔf\\/°…×kí—š$Ië_	»d´kì/Ù]\";bHm	‚G*i²é¢#ÔY4áıÔšˆ}R‰õß†Y4ªÿıH€(x7Ë‡Ë™Y~×ycŞÙ}1SõÀ¶	ë¶nø]Äêæ¯¼È7dò*÷ùåU…·[Ÿ~çúÁC\nÉó¶WTUğRò×5Í»«ŸñyÆ?Ú,³‘?iÇ¨îçF³™ÈÕLjjıVG¯yGo€w‹K¹*£\\Î…ôz§> gA4è$½,¦ë\\úl¶€ê‚úÁºÁúñâ(İr}‡Ø©ß(Ş »Yo-Ó5êÚ™vÓÑaºÉ\\Î¯2ÈåÑ±b«äš¹6ã(C\nszàX­Èjõ\"Ï´ÃC&0áˆ£ûvŠØäríƒFùË#&…:£JªªRáZ¢‰4¡ÇÉÃ˜è!;Ğ^<š#—G>Š|…çf²—Œ\'g“½ìÛİË˜5\'œünó!j5½ßëpÄ2®=F†Rëä™ÒMİ ÕŠ)PLeå \rT9÷…ÑPàqyB&UÛ.>è–u— z¢xÕÛ{äÔ­\r¨r¨7—ÿÎm\\7bXã+¿ş8²ŠYzÍÿ™45²¨ºpÈÂ©U^Ğğ{Øã-\rk˜A!‹‹ïê¬œlNá#U)>w#Ä$Ö4 Ä&”xYh‚AN“ä_Èãä)òÄÔÚ´yòÌ´vY¯È—I.©Ô5ÜµÈÅºlÂõ•Êx¥]aÅª½ŞÆJÖ6i“¬Lw¥[%Éã¦ƒÌíVÔ—±A¡“\nijB¿S\\tO„Úiú¢â¬{•x]æH¿ŠœÖšuOY‘ŸëgÎ‹\"sº\"—3{ëê§ßx\r\'VÔ:dmdÙí\Zs¢ŒÉê~?YRrûÒ»­AMÄõ?Fõ6¡4Â]§aY˜LÚùÉíá8Q1·‹,L=¾²»¥£<ø1‘`dU$Ègq]ÇÇs]Ä3wnôMn\'·\Zı|Ì”Rø‚Ô”Qü¨ôF¾1}.?[š›~±a^[¡‘|êrì9!£T“ãİÛìö\")êî)	–)×•Ëäæj;R.F…DÏİDg­„*Ê(\'UÃšVl8/8U5säåeUï­õ*e¾R7gS<ì„QÛÊ\ZR¡ê²ùçfXX½õ¥g´ÜÛ·ll|²À3ËH)Q\"7ÿ\Z›I6À[`µZ\n:íCÍ)?ßôË[\n³EMÓÈJ…HRŞ£OvÓo0·G?à‡â\nG†¨ùjHMÆyÒL©oOÕX7›dœ[X» ¬†G\\\Z‡¾CØ©	=˜:¬Ju<2 ğ9Z:ÉCq@æXøÑ*êèø¡‘W^9ÿšÙFZë~ÑóïD®¹ºt^qÎˆâk×3ÃĞïÏÍ®ÀuÑËU\"û#n¾Ó•Ñı´Iw7Şñ¼;q—c^ò±•âàÔbgˆ­áÆ\ncÅ±©ÕÎ1®É®¹®nS¶½…uWô…è˜LtádÃ9„~¢H&²ì¸Á WúˆÚ¬}¾ŒÀ.ƒOöµûX_0øòšóHÚjÍÃ¹8:5¾4•ª‘8Ğ¤Æá@Ì§ğYÙêj…j8†İØj¥9o±¸¼T1æóë?ŸÔxÁìó\']µèõ¥¶Á¼†ıêæÛ7TÏ÷eõ·—NÜ9bÔ¨×6İzxÌÈª’ÜÈ~s‘Ã±óÖ;ïvÙ¬¶ÈşÜ Ş¡IÑ7¸£x‡,à†¡¡ÜÑºÑiÉ¬;GÉºQÍrƒI&™›y»be:`O–sµğ°‡S¾Ê#ô>QÑ›ò¨ây³å´ìèãDçF¶4İ9gÿ—ugUÿqÚŒËªIkdKv½÷šk^Z|á’±g‘!Äpí¡ñcêòÚñ,&G6uİz×&?ÊIïÔ	îJŒ‘épa¨ÎÇt¥Ìİpf?N7Ü4VÄOÖMtÎÖÌ›­ÍÅÌ2q±i±ÕJ>MO7¤n3Ë ÈB0]X$ğ‚Àm1ØEÑŞd3I:éÎP]«4[v­UÑÔY÷ºA‘é~Å¯LË8ñ„°û…/Í]şÒêÈ½‘-d\"É#fbÜÄÎik½R w¬ŸŒü³¸€ác•ÔD>Œœ˜xÑÂy— nGŸcÆù·£}x‰Íb¢´Ù8\"…MÙF‚SR”ÒœÂÈúãnGLÊ/©yPiT÷xtŒÙ1› FRF×k6ŞÙlR¬ãjŠgF©Z›»æ=´Ÿ)¬^ãög¹½\'£ESû÷ƒÔ¿oEHïy)yøÛ@#kÜ\ZVŒD¸[¡ƒ¿ˆLR+6‹mèOú¿Ê&œ!Œ€rú c¦ıè\"d7}+Q 6>Æ¬^9#d¦¯}:z.Ä7óm<½Jì\Z±öÈk§}-3Î\rãìlº-=7e›ı·Îö‡œBö¦4Yq¸Î$n²Ê’dÊìpmwF1v˜¶#3Hùy_”_›ß–ÏÅ\\6NùÈÀc=sçó.Š:}±»I§ÏÓ]mq•Ü±ÈfÁlU5 %—ÊÙ´}Ö‚íEó¾à¡G#›µfeôğÂsÙô‡™â	‹|>O åÄanúŠQ¦7On}y·Ÿ)®[ˆå.8y×qtß×¥ç®Û~Ø]G‘Ô›N-êŸ¥/xBfÛQö 3–Ğûè¦|ØõÃhŞ8O$¦õ*’²²§úÖPãvØ©}óÙ‘G#¯âñ(©!Y$›‹Ôx½>·{Rÿşçø=9YwãÀâF¦\rà¤Ÿßdhd_÷Ëes§_™›—•Ÿ³vÖ”5y9>ÕÊí‘~(ÎõM•¡@5S-U»\'H,3¤Ë2¡=]tlVdƒ”yƒÆ®wZQğ,“Sì0ìöÄ‚ÎWå© b¥¢Ò8rj²NÅ‘˜ğC\'ÖœõPkó•#è´a yîıÈÕmË0ø&äÒ@²îğè³kóü‘>º#ÉÓ‘~³#ÉS&aõ£‘îh¬ƒC9ÔsOvÏu·ÉËİZêCÍu¢Äy†¥S¬ºÑSrz”ï8Ñòu¢\rwÏşÛªzÙYFÒçE#-ŒnäˆÓ4»äÄÁÓ~TÕ<ö%n˜¡b\'1´\0u1ìÀçn“$é%ú}Ö •´ânËÉ…JXÙ(	R½ÿb,ìKnÇÌ¬qWÓ¹»$<ÚRdf\r‚`Mé–¹éwÍNßç˜Š±f9ÎQ\\’K‚£RF—eúeÎ%^­‹†T	Wİn„Á\nz´\\.ƒ­ÅG(\Zd=ÿ¶YKEµ`V«5mcíÜÕiÊjOšV]*ëD.•KÚJˆ6¨.é/>ğÆ‚l,Ò*höMj´\"VÎCµ¡ÔŞ£½1•Æ¿ı}5ğf÷<å:Tnyä‰È§›ö8G«¸æœ93‡Ôç^UqãF\\é.}w˜«vÿìó.)k)o]³–´Üû|EÉµ¦9<Á~y~E´I¹÷\\zç‹¥‘Ãå5E¹ù6½Mößóˆ~À.åN*ĞñN‘ômzF/µÛô:ÉétàXMô«}È2ˆ`”;tÂ-fi)®üè`éZ‚~íTŠOzAa“?¶äS¼JÕåQN®ËKÙ¥ƒ.?ÿ¹ı7’VrNä>F2¬NŸlÎÔIÊö¿1Æch¸‹,Üàõæ¥è°ß;¢oğ\"7ıÕĞPN“¦k™l™gi×.·h/JÊ&TmU±cn‹.åĞkQ—¨êR.æµzÖ(Wœ<¸t#[Z~»hÏ_É½Õ2®¦_[Òºbìø0¯tœx‘ßŸ•åaÓQ’zÔ×E(‰‡&²ZÁ)„ÁBÀeåÂÂfá×ÂáOÂóÂÛ‚(¬eX+Ã°éÌXf¸v3C»œY¢ÕjÙ4#Ü@€–X†~ÉæÖ²Z­>È&6¨\'¥Á ı*O]ã7ÑoHš.Z³òqg\0]ğÛˆ‡[tü\r¦¶û	öD÷nfÂ»Ì¢}«{}4\Z[ókÖ3ePjo‡«_Ğ=Ä@ÿ’Ü~şÀ\0ähE÷¶Wåx9pud5P\Z\rÃ\"ò6Ïrƒ5ëQÈœİÀE÷=D‹9VUu×mêˆ ]9âãR—èP½npdë—_iÖ[#ëÈU§\"0ÎX,K? #3Ê¸ÛÒ™l‹—Ñ¢Œ;È¯ÀÒ1z\r3C/h´TNùµş@÷7ÆQôwêÉòò¿w0ã˜§¿ï`kÔã6ö6NÁcp¯Ç^‡OÖÿü¿ö®¬‰ìÛO\nIh‘2\"* e)	EQi²vI€HHb\Z¢H‰HQÀ°!¢kÃ‚ÂŠŠ(öXÖ® –İµ÷¬òîLŒ€ÿÿ¾ïıßî{ß·Ü/3¿{Î¹çsË™3“e<Vr)ÕX¹Nõ§fRoÒœh‹hGµƒ´‹µt—ïÿË¤ÿvIü?VŠş)ÿ”Ê?åŸò—”]ÿù®·ş¤àÎÏí1¡NÀİ;ÇD7$ã˜9Aq8&CzP<µ\0NÃ1àµ8¦Bz´!:´Çú„@héHêId$DˆNôÄ1² ÚcXĞuˆSpL†L‰ã0Lt\nQc2Ô—ÈÃ0ĞiÄ%8&C&ÄùFß)Õ#nÅ1²\"æaı]±ÇˆN2Á1ĞCÚ‹c4ƒ”‹c “TŠc-€á˜ğ3S!e§mÈŒLÆ±>±ˆã˜EPöcXõj†cà;UÃº€nHuÇ1°™j‡a=Ô6ê4{¨¦º5	Çd¦Š0l€é™†cTZŞCj1ÁRÕ>\ZcöTâµg†û\0º1õ2É5õ†ûbòpŒÊÿ†áş¨<ÍÇ@¦‡èœÒX8sJ³Á°96§KpŒÎ©zî,1ù0£ò>¶Fç”&Ä12£©}tÀä3qŒÊÏC1Mcœi\ZãLÓ°Ÿ¦a¿†¼†¼Æøëáã¿\rf\"p¥b™8JûŠ¥±”#ˆE°·P‡	¢cä28Œ/ãK•|c$_Êãˆ8°@s`¹”ÃãÇq¤±°8\n–Çğ5EKÅ\n	JæŠã$‘€/sìdºw(ñyhEºƒ]‘á°M§-.ä€\nqä@}<ìË‘ÊùÒÉbÇI€2>èX%Éa–ğ¥q¹œÏƒg\'`öøMô\\)V‘HÅ<WDp|Œ€£Ñœ\"®PÁMåb˜\'I„ ˆZ	€\0HñErG¸£o±H˜\0Ûla~Ül´ÑWU¢á-ÂÄyQ4,åËäRjŞAóN]˜6Ğ‹œ‡Î‹T\0zå‰ãEB1G³S`3Gm)_\nwÅ +pTÈ%\n9Ìã+\\>*ÃJº8#—KÜœâããã:†ŞÌ™“<A\"–r$1	Nh2\'(âCRˆq xÁP0¨G\n’ƒzW®Rô~Üê¼nTL¼!+“2I5¤¤#à¸Ú¤™€ò`(@\\ĞBÉÀ+\nh€!_€¤;r\0E\0roH\n…Z4¸•ƒVhÎh¿JÌ6ÇnÖ	09µ_¨NàÇ³Š4´_”¨=[ÕÀ¦i.8Ç:Úƒ\0ëß±‡–îİ,ñ!¨wpd¸w0ä4 Ğp€lzĞdÛE“C§¦ lŒÔÖÇc£‡ú%Ç¤\'cVÃ˜¯	à¬ÀÆIí«zL¢°ŞåØè u	Ö.på˜ ÍÆÚvŒ4ÜU{ãm¥\Z	f1ôÂÅ4\n0¿â±¾¸àØs¿ê:*Ëş(°¹áa²bpäa|	à¨=@½çá}	p\r\\\\;¢ë¤«ß(_ˆ!ĞÊœÑùŸİÙSOV‰ºişócôU;Ó\rhRl•È1»¹«ºgßÕ½w·ËCcPOÔ¾È±ş:öª_í+Pâ1ÏÅØšïÙSõ8s¾S>6¯bü¨öJ &Á0f­ó†ß©•bûä_ÍP6r°œ@‰ÇŠ#6¢ß®zG|Ÿ9œ€yù(\Z\0µÃôıø&è1¾z@J •Pt“ƒõ$ÃvŒó®{Ì{|…>\0-§+?kÙ•\Z\0BĞ\"ªGn(î£¬õ\nIø—u³ŠlIAö û’]É,ò(²y<™İMCÄw£ûxÔ:ÔºsĞ,şv‰@lß\0Æ¿<Ô®€~ùÎ9Iš@„övõ7¨°ÿÀÒÂ¿YEB³t²Æ}úK`Îà*Brä\"Ğä•0Ô7,$FY\0û.Ñ7ÇÎv,pmè¹…FBç™\0…b®¢cGcL×²D=«køyš«AdRi	i))ÔˆPÔ\nX–Ø\'(@ÆH9˜9®\r××/\nêüm¢~3U¿)m»ô€ôú*±DÕo< !]D›¢5ŒN\"šjA‡¢3ŒB TnD¹$™€ØkPÌJ-RÌ O¬„€$Ã.|lã@2PCÙø¤GÊËæ;çEİ7NÜõãAüÜØ•!Q‘g!*R`	‰H uËzß	mŸ¶î|mGks`Š„1±¥&’u¬|Å’)šjÂ6\\[˜Áf»uIJˆ™Z¸Oé*c b‰òIF&_ùab±öVÈcÄR<±è§¸!,&øÎ@˜Súé3˜ êˆào\n’€PB1\"Ng!½Ñ\nÍHç,älrĞBG‰T#jŸ\'ñ:ÓùaƒjÃL5ù<>.ˆ¡™`¨¯7¢\"X!úH hA$¡è:D\0U%,¼6½Â½ÕyãVË`—±ñµm–Å§ıæ¾¼äÿèJöñØÀ°ÙïVİ+t²Á?Ò0¨J7 *YÑèW³}=ôäàaoJ~×dyÉÛºuöªıı~Z1ÎrU}…“Õñq‰â›},<²ÙìÆ\ZÛwQfû—¡›2Ö¶ÜËMVµL+IM[œ[şfşÆ¬Í¡‹û\rÍnD>@^ïNµx¥N.doqtşPé¸[gáìåó¢ÖÉôÓw¿9ñ>b˜Ã=o“é×ÿEõ¸Ğp“†¨		Ûwfœ‰±^š)ÒÚãrtuMX”×ªàºaIÃEic(—Š/K\'ŠÒ¡MµwÃÑÏ6¦¶\"©#0œæƒÉzˆ…–®–•DBRKQ*œº\ZI-L1˜zQòR -4!ÉxoPnûù\rÒ¿~½©zAG¡¥™½/øÀ}vwÒµÑˆ@h\'k!$pBÌQÜ—l\\gŞ „$Sw¿¾u\"xõ„ÑGs_!º(»ı&aºÆÖ!¡+bAÙ®¤qCŞ4\n–—N\Z*·ST¤.ÌŸ=>÷Ôäà$½4ñ-Ñ÷Ô¹ŒºOáuÇÖ×DŠ_qGo\r½(8³úªÙ~İõıõó¯ß²Øi»ğåóÍ²ËšØ¹^Es±â.gîôùîãkíå™5_îAÕÎo?&¶:j=µ-Xák3·Šµ¬™ªvzL}MŠwlÔÖêªê\\çsoH‰óß_nö¹»àË½{;¾|¸{U¿Br-ïAÈ>Vi¢Ã¯ÛÎº³İˆëSçÊú0»¬|J5ûú¬ì‰i¦Ãß{•¨ôJg.­°¯ÚğÓù²[ğ¾#HÿÅ°±¾İ¡°wŞÍ3y6‚Œ£’ûo·”5¤øH•tcæƒ31Â…X,ì¥¹´@œùw5\ZpØ Æ¸1™Î“2¼³Š¤.ú_±M[8`é’ƒBBÃ:ÄIßÿ·±§Éjó“n\r-Î\nÕ¾bîµgò(Ö[ÙrÕß\n¡ğ›f*ºgƒyuÍGŸœÂ+°LhyğìéHÉ/×AÓü·=Ÿñêò}ÁTSÙ“\n³r½íèŞd\'‹¢é¢Óe&lÿÄ–CeŠÌşO2\n‡T$QnºÂb§=¨rÕ¤eØãËgûN‰ø¦0\'#İöË»±ö¿-ıD¹°¾¾ /].éşÅ/z>.í×÷lÌõÓYøáúøS_)¥æñƒf¹œ0›¾7”4~LuËÄÌ\"JÊæÔÁ7R¯µñ©e¨¿êjøXCäé¯?e&Î81Šq­ÒMPò”iM{ÚrÅø`óõO6õÁcÏ\'$õ}Ï±çë.fÍÓ’À\\33/}âî¬ƒ§Ví‘çbÓgŞİõ`#SS°¸a>ˆl‚ôMéyÛF,É^ˆÂ.q+qIß¦s¥Â.·é’XJuÂnÈœ|ÃÁÂs$$ ÃBì‰¸#¬:BL·ÿî}?¦/ÕĞ$ï²¡°ècCZTf¤ÿúKo±ò†oÙşS>­Ö|ç]Šò¹HnÁ¾E­Ò‡_êİ~w—M€éçV}wõá’G6ÙÕç÷-xñ:ÒyJŠê©Áu)é‰ağ³Fıì£Cô8ŠÏ¢µÔÆ†aSLôÙå³>ßj\'o\'n¼Ñš»±ºæèœÆÌ‡ö¢ó¯ƒìÌŞX(¤ï>•qmİóuôÚ‡ë“]x”&P™ˆìÎ¯¬4µ8*^q{öæ£ãcw}î•÷`¯SÙüxvôhjÉ ‰»rìŸ¦•VG3t/\ZoœyGÆ”ºZ´Ÿ±=ipÖÜ|ÛÉ!lAhğ–gÇ(BGé€×oÅY¤¤ö•¸¾NÎ\Z¢Ï:}«£ÁİU!µĞà²Ş·ı,\'Í.í\Zƒş\\ÇW„8;»¡¡‡\rªC®!ˆãËäœ8ÉŸÍuî¸‰ÚvŸñ7×äLCÀˆğÚÖ2ãƒöÌjÃ°3‹~s,#Ïfßr^³ehÚÁcã/%k}z©8¼ôôÖ«»’¨yC£í«z¹ø@ı‹íŸ\r7éN¶²uº0êf$y€òç8^Ü¸ˆÛ¯›¬_t:ånr Ñ-ÿ}m1-Ò\"fLıÍZå4§…û“+#§Î1ã¶§$z¾¸JÄ—S§›v#İÍ^q–şÄ‚­¨ü²N(šßülÄ²Ââ¹ô™v!&³g1‹//\nf5-Æoi“SšAèŞ–ŸMs„/¯1útŞàúbú;•RæzjåüÒºY”gZåéÃ«>åOMóN›´8_TniP\'^ëÛ<çQòÜXu¼QlÀˆX÷qhÿ?²Š6~gÑ‡€ı‚F ?\nYxÀ¹l|ú²CkŸìğğö=uéßÙÀ˜HÖ³ĞÂ±ÛX_ÈûÛL¨[\ZÕC€ÊêÍ8–Zİ;w‡J gKür^Ê\"jFjk9´ïŸ¾Øì9{yÕÆHİ¦ì}.µíØr¶jÏ„Ä4AR,©ÔÊÿ¹°2.Ñj¿ÿ/iosz¦.q=ú4é±dºßú¼Ëu\r¹µ÷ØÕ\'>;»‹y5ãÀyî	×K&(›<VWÌ¼QYi‘ıní1ş¸Õ6CÖÎZÒËã´^@õ…‹ÜCÊgOjB?f›?Èzs‹Úb40›—Â¥Ş¬&ú:-ğÏ<ØN¼Éo×t‹$_Q¡%Ò«[wÇ†“ğºßÚŞYD³Œ”“Ìı¿:îU³-«éQ”[Î;«‚µuåñÜ¯IGïô¨í @åu¤G”|õ{Z_zÔ- 1Š²!š˜,F\rWWhI­ø+Ò£¡È`uÕBä+ ÎG‡ûÁ~áÁînŞ,¦ƒ+‹åíÀög3ƒ‘AjŸÌ¾õÉ!u\nçKÑíÿ6¼­LÕ}L&Ì¿¹òùšÏw2.µÑ—=Ùîfc¨üZ¦,´[1¦y[¤€øk~RĞâÛÉs_* ÛÕ¾Â6ñ¹¯†]JÌkÈï·nÃÉƒ-“\Z9÷‹µC”#ó/Èİu#ËíFİË·¦ÿ#¦ù\roÙšGÇ\r[6NûãÚÒ-¯\Z‚2t(éSZUßôœY‡§ÛÚ{^øésÑó¾µ¬œ‘^®‘Æ}âWz´Bå+îOw+ZÍµ0Nø@ødÛ°•9™ô¤ĞOñÖÔ\";	i¿õ«›N–Z?8™!õ-Ák\\‘F›´ïËãŒ±Ú®Ÿ†oK\n,MHfN¶¥ÿü¾Ù³xä3Ítêk@°Y™y„èñôVşÁ…ş½ZÏ¿KZ×~é›L©Çˆñ?É”ä2	—óÉ”:4É{Ößä”Ú¢ôbÇ÷/gF³}0å@=¤Jê7í¤õdÃê­c¯g|É9ÿ³Òr€Õ‡÷ÎUğ&˜ºíp+´Ö\rßb“½_wŸÜÈ¦ªBqÏNûşÒ»E#«œ\rSŸ4šß9È»ê¸äsÿÆÁ»®d<â×W-Şı¦ş¹P9ÿWñ—xÇŠµÙ«Ì4-éƒX7—&q–›ÛÚû£»ï¢¬MW5†Ø»xüîíMØéé¾¹6v@ƒOÎ‚ò·9ÓmïÎI^ŞGY9«Íxèv±!×Çf’û¥£V¬ËûÁÌ?2vÙù¼ H-èÜ\'d”_ğİş™5ï\r^5šŞµ±¨œğ&¾yÈƒjíTÃ;îı*ò\Z±\n‰’šñ7Ş²}s#ùõQWIê)ôê„O›6‰¡§ù\rôûµ¦Ë #šÜ> jt6$3ÀRŸ—úÊõ‘ş®OE]×ÿ^[¥¿}êj$J£‰cYbŸb÷çßİÚ0$ÅúO¼—w‰Ldš{_Gº„·æDéã»;ÚÚIÄ÷©1Ì›×§æoi¹^L/XbĞ°âìfŸ]Y¶3\"™ªìÀÆ•6ºŞA“^x7úÌÇÃy³Ò‚NzÌ›	G÷‰LãmÄ¤qKÅFA[Ó”uñòi×YÏÎéGÌ¬;9.~ô@E©îÎ[[ËC‹\\¶[\n,kÌ÷¼á¥Óî„çïf•í)\r±Ş˜HÍJu÷Ù+Ö`£ÁùÅ[w¶w¯Å²sìy/?©íÕºeYĞ|í¡WœÒs©UxÉ‚–ß]YÓo&{/÷{Lü!ºÆKeÑÔ›àA± °\n×ÿÁjÔ6 ¸pËmaßÅHŞ†)…§Ú*noèç˜;ÑrÂ˜\r*¢%¢\"ø:K†Š¨H´¿|9v½D~sá¦âË±d:b¢¹u¿>ø%€>;9ZŒ^àŠŠ ,pye0‡»8Oé¶Gíu;´ÎàÑ£±6_ñêıÜÍ„‡]âºD>;uõÌ“9Äñ¿˜åÎ5äyÔ÷àå^œ÷&ÑfWØ!éÛİ\\iÚ÷ny×™\r;e\'ºº)ùÓÖ¹&×nL›Îøùã®Êıî¥E¬ÓˆM¾Í×/Œ3ô´d•ö›gŸŞÔ^¾Ó\\¬øQ‹\r}]}­«wÛÄÔÓ.ıÀ\\¼H¯÷¯ÎŠ½mËMM¸‡†\rIù0©¬íub_·Ãåç_¨lŞ\nß{…çŸ|—Çv¾{xê\0bXB¿«ı«“\\Í£¦6l\\QÁh¥–±(ÌŸA{ «Û”Õ÷¢Ïº•¢?í‰4\ZñáÖ³¼¥Ao/gŞİ§„C—XQºÀ©.Æ¤ÌâŠƒñ¼uAåcôµU©¬+	»I4¯úyô_3¨ú(\r\nendstream\r\nendobj\r\n74 0 obj\r\n[ 352 0 0 0 0 1076 0 0 0 0 0 0 364 454 364 0 636 636 636 636 636 636 0 636 636 636 454 0 0 0 0 0 0 684 0 0 771 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 601 623 521 623 596 352 623 0 274 0 0 274 973 633 607 623 0 427 521 394 633 592 0 592 0 525 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 596] \r\nendobj\r\n75 0 obj\r\n<</Filter/FlateDecode/Length 18811/Length1 61144>>\r\nstream\r\nxœì}y|TÕİ÷ï®sg½3“Y’I&3“ÉB2I’IB 0—,0š #	‰@‘íZEp_ëR­Zk5„ˆ±R·º+ÚÚV«â†ÚG„Vj-Ìû;gfBxóX?}ß?^ïî÷{¶{î9¿ï9¿s\'É\0\0$:jg5LÑ¬üi-Àç87L©­›¹Ü~€7»1Wæ”M³4¦*¼Ş‰×c§Ìj­ş(ûÓ\\¼~¯¯›Ö2«~ÿ\r+Nè~À=Ö4+X²bæ	€ùÓ;f×No[õ·\rË\0LX^8´`Yg÷COç<°ëd\\°z•wÚÏ\'±\0;úñú¦s»Ï[vÏ+Ëš¶aqvßy+»Á	Z¼_F˜Ï[ºöÜ	7^¥¸z@É‹º–­¿¾›`Ãö®|iÑÂÎ®·.Z¸ëZŠùËa„œ\'mÄë{ğ:{Ñ²Uk^\Zíºë®®<áŠ¤.i2À‹˜ÎL]º|AgãÑö£\0O‡\04İË:×t‹%¶!Ïë½ sÙÂ[w­Åö¿t@;½{ùÊUÑ&XƒíSHz÷Š…İR÷Q_‰}ÈÒ×‚áeoÇÀ=óäª@:v\râ‹kóÉùùŸÿİÉË®Õ_+-ÂK-°–“ôƒ3…˜~¡şZZÓpì 1Ü£0ÈKš!³ñ®:¼/‹©,oavbª$Ü\"”b•9±3w\'¬aï“€Õ‹<\'ğ<ËßbTïÙ¤‡IÕÓgy½€ğ™˜9Ø/Hzæ!/0w4>\"$O\nŒoûZìàr?÷ ÜŸh t\\ßö3¸–û9ÜŒçr-8àrÁÁ8ğ|÷á1Çâi·à±¹Ÿ3s¾­Na\r¸a±\0û¶|Cy~ó¿çùwÀ¿‹øS°—Àb</åŸ†%Ø/µ$LÒÙx8‘Ãiƒ½‚ó¿\rKH9Ï-¡å/àò`\"¦íâ÷ÃZ÷~¨¢çDşcíÅöı§êú®¬ûÿõ=U¨P¡BÅÿÏàe˜ŒŒÑ&ô4cŒÌ€‚œâŞS	@Z¢Dv’ZŒF“Ñ˜a„>€>‹Şl„‹E¯,IòÔœÿé­©P¡âÛÀ\0C\0øZŠ‚Rt÷B:de”0²ÈF0FPä&ddd3eX­`‚HA¶ÙNÙd\'8£\'!R‘ÓÀ…ì‚tätÊ=np#gB&²¼È^Ê>ğEÿY…ì?r6ä ç@.r.ò×yÈ£`r>ä#@\09€üO(„Bä\"(B.†bä ŒF\rc¢_ÁÊ%P‚\\\n¥È!!—AyôPN¹*ÇÂXäJ¨Dã£Ça<T!WÁä	”\'ÂDä0„£_âNnò$ÊÕP\\5ÈµPı;ÔÁdäÉ0y\nåz¨Gn€†èß`*LEn„iÈÓ`:òtÊgÁYÑcĞMÈ3 ¹f\"ÏD>\n³`r´ ·B+òløò -ú´Qn‡vä90ùl˜‹<\"ÑÏqCø8yÌCî€äN˜ıo˜Oy,@î‚.ä…°ù\\8/úW8!/¢¼#/%ÈçÃùÑÏp¶yåàäå°¹º£ŸÂ…°yå•°y¬Bş1ü8ú	¬†ÕÈÁ\Zä5”×ÂZäu°.zÖÃzä\rğ_ÈÿEùb¸y#lŒ~›`òOà§È?…K/¡|)\\\Zı6ÃfäËà2ä-°y+åËáòè‡°\r¶!_W _	W!_Û‘·#\0;`òNØ‰|5\\|\r\\‹|-òûp\\‡|=\\|Ü€|#Ü„|Ü=7S¾nE¾•òmpòÏàöè{p;å;àNä;)ßw!ÿî¾wÃ=È÷PşÜ‹|/åûà¾è;p?üù—”€_!ÿŠòƒğ`ô/ğkxù!xùaèAî¡¼vEß†^èEŞ\r}È}ğò#°yò[ğ(<ŠÜ{‘÷Â>ä}ğòcÈ†ı°ùqxù7ğòp\0ù\0ü6ú\'ø-å\'áIä§àiä§áägÿÏÂ³È¿ƒß!?Ï!?/ ¿\0/Fß„á%ä—(¿/#¿¯\"¿\n¯Eÿ\0¯Q>‘_‡×‘ß€7ˆâAùMø#ò)ÿ	ş„ügx+ú¼o#¿\rAşåwàäwáİèëğB>Dù}ø\0ùÊÂ‡Ñƒğ|Œü1F>Ÿ BùSø4ú\Z|Ÿ!ÿşù¿)Ÿ##ÑWáøù(C>CşüùïÈ¯À—ğ%òq8üø\nù+ø\'ò?‘_†¯ákäÁ¿OÀIä“p*úœ‚äD¤…(2à<\nÜ~­^\'€Ó9\'p ¡ \'>)Ñÿ1h“,\"\'‡åµ^ä‘E’äiÍ1Q…\n§¡ÃMÏó§µËü0íÆµ§ù_´‹Qç\Zª]=)ŠÚÕˆX,‰5#5GÕ®\nßzƒ>®]C,\"©v¥a’M®]ñLí\n¨]Í÷Ğîˆ‰*T¨8\rƒÑ€ÚÄ¡·D»9%Ñ®.I-’$J/Å´KŠ\n\ZA\"ÚM¢Eé›Qß1Q…\n§a4\ZAÈ~7®]Tİ0íÆ×Mí0íê“ÔBóghÅ¬jW…Šÿ{0É&Ô®ˆ\Z•cD»Z\nrŠkW7L²Iµ«Õh%AKµk$EEIÔJ¨÷$ZQÉr*T$l–‰v5ñfŒiWGANñus¸v“}’¯ÕJZm\\»²VÓ.Š?™G”g2‡\\…\nI`¶˜É\'<¨ÑøÜˆ\Zñ›ÚÕ½ÊJ®]NÒéDùHHIQQ«Ñ}‹vG”§ª]*¾#,VjWƒ¬5+æ°ŸÀ‹;¸†a’5%©E§×êu¢j×¢×éA£ÕèQüÿ¶v“9ä*T¨HkŠ5®İ”X„FÒ$Õîdå$µèQ»ú¸v­¤(n€IÉ´;¢<UíªPñ‘bK!Ÿã¢Æl±\\1Á@ANqí‡IÖœ¤½AgĞkäã\\ÑJŠJ:h7É\";¢<\r#%ªP¡â4ljWB:bD»F\nrŠk×4L»I~U®3âÚM1¢vµ:ÉˆâO&Ôå9â¯´¨P¡â4ìN;Ñ.®ÎX„¤“†i7¾nš†-·Ö$µz£Qc¤Úµ‘¢Zı·jwDyªÚU¡â;Â‘ê\0IÒ¢FScD»&\nrŠkW¶Ü¦$©ÅhÒ›Œ’‰j×n2šP»ZŠ?Ù\";¢<“½S¡BE8ÓœD»ú¡_å&Ú•)È)®]ó°å6™vM&ƒÉ×®CFÙëZÅŸL»#Ê3Ù‹0*T$Aª+5®İøŸj\"¿xZ»qŸ×<L²¶$µ˜d£l’dª]\')ª3Æ´›d‘Uµ«BÅéîtĞéô¸>Æÿ„—Î 9Å×M\\tí‰Î$µ˜-&‹Yg!?¾¬qYÌ0˜ô3J>‰PÍ#5\'Ù‹0*T$Ûã&Ú5Ò_Å\'Ğõ`¥ §øºiz\r=´/>«lµè¬ôw2HQƒ¬·¢ø“­£#Ê3Ù‹0*T$7Ëz½5–‹0È°QS\\{aÙ,=I-)6‹-Eo£ÚõØRl`²m)èg\'j²ıò’9ä*T¨H_¶¢İø_$ÚµSS\\»ÎaÚÍHR‹Ín±Ûvª]¯İf\'Úµ£ø“iwDyÚGJT¡BÅiäŒÊ£QFŠE-FH¥ §¸öÒ†¶ÃC¾õp8Sœ£“ü•.Ûép‚9Ev:p¹N²È:¾u\ZÉr*T$AAQÈ²5V‹SdH§ §¸öÜä{âğ\'©%Íåp¥É.ò‘!?=ÍV‡%=\r%ŸD¨ißŒ:d¹\n*’ ¸¤Ìf«şµn‹İn\nrŠû°a’ÍKRK†;ÕnvSí¹3Ü`KµºQüÉÖÑå©~_…\nß%å%`µÚpC[‹°:­à¥ §øBYÃ$[¤–LË“iõ×Êòo¦ì.›72O¿Ï°¼#5Çû}ŸC…Š\ZÊÇ•CJŠÙq±[š\r²(È)îàæ“lq’Z¼YYŞ”,ªİ²,_83ìY(şd/¶¼#5\'ëû>‡\n?4Œ›8l6\':²cv—r(È)¾n\ZÚŒIR‹?;3ÛoË¦Ú›ãÏ†´LgŠ?Ù\"›l¿<„œïı *TüÀPS_©©.ÜĞÖÇ\"R3S!@ANqíáZJ”›¤–Qş‚Q©äG+¬“\nòÀíwŒBÉ\'ê¨‘šøŞ¢BÅÍàre¢¯Ú‹HÏJ‡Ñä÷aK‡\\j€p’ZŠ‚yÁ\"W|<koÁ›—,„Âd/¶Š¾u\Z£¿ïs¨PñCÃ¬öYàvûrÚc™¹™PFAN¹±ÈJ\0%Qbr’ZJBĞwˆ¼VNm.+	?à+ƒîuá7ó&ó¹‡Pö}ŸC…Š\Zæ.˜^ovÀ‚X„¯Àã(È)ş†\n×Ú)‰g%©¥¢rte…·’j·}ÜØJÈ=®Ê“­£#5gÜH‰*T¨8®¥]à÷çá†vi,\"»(\nrŠ;¸µ\0Ó%Z’ÔR514±Ê?‘|v›Ş0¡¼ğxŸl­\Z©9Ê÷}*~€`ãßmn„âé/<gX–ä9˜È‘/ ‹ÿIÙl›İáLWzFü,²‡}(<:É}kë&O©o˜\nÓ\0šf4Ïœ­³ÔÖgC$Iæî‘àª‘9ùÛÀÃıÈ¹àÅYÅ8ƒI8•M‡ó`16j5¬up\'ü\Zúà³hÈG`9¸SîE,_\'æ[\n+ÎÌıp„ğßŸ£[¾û7Î+öÖ–Šò’`qQanÇ–bµ\rÏz{¸œ:¿sÑ6oİ\"ï6mGmQaãÌ¶ºÚtŸ¯½¨Ğ‹ÑµŞ¦Ã[×3yõ¢Ômu$C5ĞÃæÔ‘cIrEüµ>ŸSRN§ôG\\9,É»¸Géì+¼»\nl»²ßó;†.WçÜ¶®ïµ°1‹ZÚH›ÈÑ±ÈÛÃciJéo\"I[Ôì¯ÅRIã1Z[Ó¶Åw ½ÇŠçºK g\næ˜²î£tn[]êb/¹Ü¶m‹·çÎæ¶á©>Âííí©gtÃdÿämÛ&û½“·ulëìnšï÷šıÛv56në®ëğöÀŒ¶ã÷]‘Ş3ùÊösÇ\"f>2yÉ3ÛÂé>Öâó‘ç½¢_ùxÑ³©¹-ví…ùé½ í=lI9H±·’”M‰”¡â~Ú×5m\\:‹7Îò76ÏióÖmëˆ7836vµ‹…ê]~fkó.…Ù:kNÛ^3ZáÖ–¶^–ak:ªÛwecZÛ^/\Z\neI,‰$^rvG/+Ñüé{€M4•§ôzA?4NJÄ1° ŸÅ™q,Æñ±8…ÆàÃ°5-mÃ[i;À^h‰P2{óKÊÍ½Ş^¥wFowï¦Ş;{{z_ë=Ô«;Ğ{¬—E[Sºq¦–{jy¶g6ÛÔ:¯•]ŞÂÜÑòpÛ<ËÉÏœåàgÍ´óSfò“*ø)\r%|=\re•|U¸„ŸÀOûøš°›¯Ïä\'á¡à.+áKJ»øÒ²_jáCe™ük¡C¡c!®?úÅî¾œúòşè¡İ}f?¿PŒ}Z¹¼ÏUÏ¯Ş}ÙnlÖ±İ»iJt·6»|·­¿|k\nß½´{\r+ßöŞí¬ò3GZ¹r›#½\\¹Ñ‰¡œéå—mNñÈ—Ê›åíòy§çRÏvÏàöM›7mİqõÎÍ;·ìÜ*+?ÕšËå¬r¡ÖP./c¼Ï1Şß1ág>ËzŸQaa>óÍóY¥óÎNV>›)²YøB[°Uò¶>ßfç=¶LŞç­á½¶*şyWïJŸÂ§»ªx—­„·c¾l®Õæâ-xtÛÅ6©¦\\6x@dŒO5zO6zt\Z=Z<„ışñF··ÑÃîkô0{\Z=ğh£ç©\'<(ğ<®ÌŞïóìÛëó<ºÇçyò©§Oø­qÿã¿1ìİ÷˜aÏ£ıóşMûYeï¦½¬¼\'¼§iÏÆ=¼¼\'ˆÁå|bÏ«{¢{$¶‚7Yœ»8–e€!0ıL”é±6BcKuO\nƒçYÕ»´%Æ®™Õ›¯ºÊİsZnÏ&w{¿„yP§=Ìöö©qV<ûÜeåª•+IĞÃÕõˆu‹:{DíJra\"&œ-Lu=2	ËşÚ\0Óc«[ÔcÃĞ7*Y™@`e<1v#Jğãd÷$mY…ˆ™¢M8&ä7ğîòËñÑO¢ï®ì\Zlç®£¿|p<€y^šì÷Ã“ô¼\Zzá\0¼xÆBğ¸î…—à-8:wÜ¿‚3òí¤±÷À/á!Ø\rûà)ŒÛ\nWcì/àÁaù–ÃØ·âºõ“ø©É§XkÁg``2+™íàÂ¯æÂJ¸.Ãv=ÇLÃ¸	7cÉÚw\rÆî…ç’,^`6.øKàØ…9~Kã\n0¶º0–ÄÅp!®Ÿ—Ã]p<†íZ‡-»\ZnIRßOXëƒUğ1–|¹}Ÿè>Ø,ÚÈ/lI¯ò‘Ø/vDßìŠş=„ùìqöçìÕğ0»ı–,½ô‹P9<ÙYô\0ğ¾üÎË”ÆŒöY|–$sØ$ÀIr†MäûYÆÄá½HéN%•CkÖ´\n’¬e Â¶•p¡?úNŸÙÌ¶bàó>Y¦}F#\rü©O¯%):­–m•À\nÁµ¡E |¤43šáü\\Š¿¬”å\\d¼ùÒKÂÁ“Ïó\'‚oàl|?wãEmI®bgE‘Ó0²VÑ²\\!)œ/Ô”F‚G°ºªÒ`U¬:òã—îÇC´\r<ÎÖ;®~(i„# ·jyP\n·)+´’¨Ó¦Š.¹,UrêRS®|)W—Ÿšëšl¬—•²ÙÆ6y‘)e­guÎÚÀê1|NskâXó4kY™3Ifoš’Æ¦¥iNÑ5k0€ƒq8FL¢lVÌ¬9£@&^QVY–âÃG#ÖÊÊX(ëÈ‘p8và³D›èÏÊ-•—–8r¿vø5Êõg‰v›£´¤|x˜[õxï}¿é}d»ûÔñ_pv3¹ ‘\'kï:·­íÜ®vşÚ¡PèĞ[o½wè­¿8Ä¾	Cï`ÓÿàÖ­¿şõ–-ƒÎx\0Û~íàv6ŒZâ LÉu1L€-ƒJ¶êÙVhg»ĞpŸÁû±Ülí”uábŒ”Á|¼$HGËøSØğàákbÜ²;ˆ\'~3;†Ó²‡±N¯bcªe\\öe¡	š„y0|Y!ÄŞ\0ì¬ÀWæã´;ÙnvÌ#¤ì\0Òç´=Ş=ìlF‚\"¦?ú©¢#ÖdÂË ÅÁE‹÷[J™ÏÅÜ,\\}Ÿß!E+ğÃ/•¬r¦R2Œ·O\reÖ1\rúZC£µ1µ6Ó`oĞ²¾N\'÷G¿Fƒ®nÅÀ©>ƒï!R}€)µWòˆİC*I‚ÛsäO›.‘¢é<)—Nõ“î±’BJ‰f¢Ñ@Ê‰7e›¿BÁ#2Âö“\'ˆ0fÖçe-f«ÏkeÊËËB¹y¹dØ5\"y§ƒ>¿ãäà×ƒÇÿy‚Ñ2†şËŸ––í_;ïœõÙYilßÚ®s6°Ÿ\r.¼œÙÀlc®bÖn<õHóÛ·Ütè¬égÕ4õ‹í·½>ë¬™gaÇ2Ã*áMTÊ>%ÍHÂDÙh&b¢Ì“1\Z«[Ñã8¥T’0Y\rœ‰«g$Ùâ±°ë‘Y6˜è³›ŒƒØjò²an9×ÍqœL\"Xú¢\'ıÁ9Hp¤/İ¤O¸LRŠÉÄÂ™F™ÔÀKR¤{©²$	–¢ˆJÂ¥Ab,±DÚŒÅWVR^Q^^QjññU§ŞbÊ_ïÌ).ãoeFßÄŞj·¥MŸtâI´¨»ğ™¯á>h@iáéğ°\'Zœİ’m/Œ5–™Âîpf¥§Q¨7Ö™šÜM™\ry\\„gkg[æ¥“É˜ç—¹„ëZæÛ—gv³«,]36fæàC}ÚGÚÎ+CBäÛÁŠ¤`ÆhY‘EY¡¥ğ!IÍLÖOMaYÏTFò°RÂ\n%ÒÕi$]ò9¤ÓÒit˜ƒt]\Z©Éá ·p8¼·gÉY,;úfŸù+ì)B´{°ç¬•´ÓpÒ!}9f4Án+\']VF\'¯J‰ÛEŒü÷ñWŸ2/~ãìÛo¾üìß/ÔM9²üc†ä-n<ÿ£œïàœ¾ö}oo\\u‰RıºÜ;·^[=qMÃâgZ°ïCõmÀ>\0(mz½téíÁ|}n0¿ªJ_f“\nNÕ×Ùj²j‚³™v¡]ß\Z\\¢?7¸¤j~upUÙú*Wh\\í8vü8ì{¦ÈRÄåOõhÇ°²ÑcdFËT­ÎŸè+?é«ÒW~_5À\n˜R…Hú¦\"³Ø‘Èé 9³IN‡+Î‡Îç¢¶g övgX{Â¬á–‰æÃóá@Àâ¬4cÿƒÁXGÆ&ğ°•ÎèÁÊÊ­Ãë5œ·óÊJ©H+†Ä‹ë^É0!Çº™H™”±;¼iôÄ©5/®İplºÜzøüğöÂâ¢Ò¢¢MSçL¾é‘âüÀü‰óŞœGzÙ½5õS¾hôöåÀOÏ;÷ğäšñşƒc§ä.i±8Óã¼wãºòf—ËV;ñ ü¨ÂÑ[ÏŞ°7Õ$•â|8­~7®ø:02!e±DU®¥ÌPf)KTñZÊe–²ÄÙk)3”YÊ¼ÑfÌ6†ŒµÆn£hH%½h0Ö£õDÖØÀdg”F¢ÓpœÖ5éXœ½=2«1àÌr¼zıÑ/ÉÆ{uZ£Ø$28Í¤è‰µ3:’…I¸Ùç”¼#‹1,rb.™`D–N¶©Ã&[j\r\"m–LL%4€Ër)T*#d]Æ!\rªJp±Æye‹y€?`\"Ã½bÆoñã,Ã”ZJ}†ßıÎ\nö`ÿ;ƒ`îŒ0wæêO­`ïè ëÖc¨€ÍØßğ¼Òê£}•EY\'¹¤€4A*³Lp4Jµ–9RKşidp»]\rd1Qr¸…äÌñMÍ3YYçÁÓ™¦Š:o–¤ÇÁÈò6¹7q¼RÉSºä)İ&Ò9n:qºm	‹·‹O\'#hó×­šî(”=…¬öÖ@ÌĞ-•1;§=s$<mçÁ@d€¬ìœl™o·r´l‹Ïî³$Œ›ß<­ºşw—¬ûà,ÓÌ¿,™²9TXT]?·íîñÜ¦I9¾µ{¦Íhcş¼è7“&7–f¿jUXÓ4}‰7×“j`£®âùüPÅCØ—èEó×c_ŠpÁ^àğÉ¨]öÇ8åTÊ©93:6›©g\ZÙ6v-ZŒ=âëN8V’%´}:`Yúi<q<pä­•Ä,•A:øG¶`ÈóÆOşúsŞd_>ÕÃäÿ~Ò$d=LüîuÑwùÛ„/!\rFAsÖ^ÈEc6¢æôÇÙ‰€?È\"w+	BöÒ¬P^¨´Ö>)«6¯®t†ıì´9és<-Yóí…óÆ´”¶TtHóMó­óÓ:üy«M«­ë/³ºEö—¹÷Ù\\‡.Èsî)f¶¬Ó¹#î\"#n6 ı¸¼Â¤¤@PgÌO¤æ“Ô<Òmù>päzãöğ³J¹ÒSÉzéàåIi¯ÏH\Zë$š2\ZKhJ	upJ|âcÍ_¡½ ”7æ£„áÉR\Z¼ğHÜ£±:+#5-mJf{áå…l~a	WÌ–ûëü³ı]ş›sE—×Ïåº-$¥v4´˜ÚlàÏÊF/¸¢,áìøÊ„ó%—ğƒÑÊœåå)ÔşòÄ¸gÌß6øÆG|ç%kV2¶?¼Çè.^wåuG~±éâ»šgæ\\Q½`š§yu°;2gÙ¾×<ÌÜñÛ(œxjÃóãEå¦÷zóŸª«zØ¦ó7®9·~q¾u\\Jõö•s—uäf¹É–p.½0ú!õ-³ îSBŸÆçóU9U²âi9Ó5Åmü<g$ufz7³>G¶¸K\Zlù\r6ÑWq™E{æÚ¥‹­] uQÿ2H=MsÌ¿Œ\rL!íşBÚı…>õ\']<Éáºa,ñ\"é0+¦ãJºà©€X+‰|m¬FäOk×ZS2é] šµjRr5Qßüö9g~±747[ç^2é“¶È=s¯olkg\nÿ´´¿®uîÊØàÒğÎûÊ•¢¥Õgİ9™á¸ê§Ÿì^±AoxBNg´Ÿš°ÿ’˜ÌššYƒ\'ï¹u¨(¯ïîykŠ<ö‚Qö|²#ƒÔ€û^²ÌQÌlVg’ŠDÈã¢·J\\ıªª¸³Œr)NÉ¥lÃQ§0î“w“—\0,ù-áœ/4¸Úı^1“ÅW*ÊŠ–,I_SML4¤×W“ĞT±NÃjµ:‰İ‚·³a\rZ·…gx› ˆÄ•\Z–é²Øè2İÖ)ºn§ÓêDY\'0¸…60¸òq‚²¡ªa,Á-“à&é„€P.LZ……ÂzA#téqşEW\rg!\'™ƒ\"UáÊJ²…&ÏÁe(ràÀØI:@×# “ÏÏù8œšRF8çk6\\ó<›ÉHO`îìZÃ¾=ƒ}ñöE/ö…	ÜğÅ^im°.fyGHâœ!´\Z²õQRèŞÇ:òp Ò-Nôƒ¡]Oƒşè_ézMí4‡xê°Ê#{‚ıhŞI­ÔI§§Mc\"UiÈæÔ†·bî¿F\"uáõ´.\r©”t&şÖGê$=t`–fÒ-RÂ$®\"	+ˆY¶èÇ-@	ÚŠÑ0¨ı\n½»®=÷äËƒ[™Uo1LûM¼ºnmÛ³ÛöíÛñ‡öåËÙO^Üsvx¬p0\\1oğé7>VW’wò’‚Ê)Ÿâú@úî+ì;³I9o¶ËÊuËÙn¹Ğ¡ÛÈvs…n¾U;[7GÏuq«¸ãÈëXN+²ÀòÔ½ççS7‰Ú¯ç©å\0oækù¡Ñk9;E§ç–î>ñåúeäå­‘ôkƒL::¤óçÑ2Ä¦\n:6ÔK­<•\rujaI6yL3Lœ ‘	ÔèP	tO!P/Ià©—–¢1ÿûÃö×Ä°}6ãÃºX:Ö®\nWY+ã/Œp™èñKx6ÒÁŞ.‰´£&È\0¯€È\nÜÛãZL<0†ñ	_=;8õàÂ½Œ	÷·›˜;u#·øÄ\0ÚıSÜ´úEè}¹ù5¥Ì+{!3î*¸É–¼š„:ŞŸ¦³ûù€•´¸råvSsæÜÂÅ¦÷ò¢õºu¶n÷úB+š0Ú¢XX‹Å+eôG_Pœ¤š¦&##5ìåÇL’t¸¦nÙWÒ{Yòè\ZÿÇ`Sô$¹ŒÚ›P›ğ„I@¡›:Ön=ˆtÄ­q=V,tÄ©ëØû\n\Z ûkrúÔLìZ-ÙRs¸ºL.ó”…Ë¸âX»ØÖbº$EŠ%R¤˜ÚF1u2‹ÓõÄòjÈıõÔ›ÖK¤Œ>ƒÜ[o a‘ÜXï 7ÑÓİ–^Gn¥§s-)…¼9tzè‡ì.V	à¢5–à¦•øbG¨\Z°ûˆ-`Ä)ˆ\0™ûÊÄ¸JÜƒòìŠ¤›+Î\"Æßš¯ÀıXZë¨àº™7¾¾lá¹Læ=E£º\'LİÓ©«xmáê‡•põc³?«mîZuÑ‚{.²L°:=ÏİºñgEE^É­´¤:Íy9OÈÙyÁâk–º™\nÁ–âìlíèœNÖš½hi;E¤€—©SòCl™<Ş>Ú[ËÖÉvÅû#ëyÖÒúƒI+:«-¼ÉTD^²%Ş©Ønìp—ı8]–l‰P¶ôá/ õÅá¸¢§`Šşç}t°Åì©ÆÓ‘ß™åÉ\ng±¦t­D·q±M^lH§\0-È÷‹4Œì2ôGß¥o1ğAl\n0ĞÌ2;cà+bÍIIiİöGî!w6lõüÓc1?Ã\Zè€£»XóT»\rYáÉˆZcNŸÆ{¶³©fÊçÎÛ^gèÙßÔ»üÙŸ¼ôÚ™÷×ÏXÙpÛ.¶âÊCÓššŠrC¢mà÷“f\r¾6xø¹W§ŒØ”ñ2Îé‹£Ÿp_òŞS¦Éş&?`²LìÔqL™iœ£,µiÒÕšš“RÛ™VÓbf¡i³Ò”b6ÛÂŞçs…9­ì§ó¹Ÿ¾ÌC¼ÿßMôÿ»ÊLÚíWùTPNê·ÅWG*gb$¨D´ºØx>ÕJt$¨à´ô=™öÿ´÷`Mek»»¥’ĞB@¤%D¤EéEAP¬(UˆRb*Šƒ  Šcù-c¯3ÃèØ±ÎØ{ïíèÌèØQá®µv£rş3÷ŞÿóÜç·¬|{íU¿ò®o}ko9@=K9u.&ö„ø§¿§ãíàr1Ëİèà	ƒgíêñ!‚ŒBeä‹!k‡VMHLÃışÌŞÑÓ,s[¿e;¶¬\nà`mç§ˆOH¸>á]»x‰N¸túèG±u€è}1Ğûh½Ş\')İÃ%2‡®ÒTI‡ifS-àˆpBÈwçS8Û±ÃLhe\n‡Ï>ìáô¸ØòhtQêU¿UéŠà,@€r‘Jb‘Ìô€øDÙá CÂ˜EÛ€!RÇa/0‰×¢³½=É…äÂFra£M6{{»Né{d£ÙhÑe£ºlnb#»õAZçÜ!è™äµŒ3è~B7WB¡\ra™0šŠnî½¡ğğÃŞ±1[rú7$77§Œ‰_²¡anÚªŠ¸^x.l¼Ù+%Íİ¿÷¶¨q‘\\?zèT<Dªáí¿QÙT&Æœp¦ÒÓƒòáÉ¨0^¸c4•ÌKvÈK³ÎË¶ÃëÈÇÃœ,\"¬).c¢ø\r—ËŠ²\0ØàŒ.g¤úv@$›õ-Q;èKò í$˜Ôè*!Ìp¶pvrr&è`¢ÃO8â$õ0ûâö\"$’‚IA„¤ B\\!!®‹P\r;ÕIM8L3˜Æ\Zšÿt\\Ãr;\0…Û;@kÀw)&„¶\"²Ö¯\'Töû#‘]‚fdj~—›\r=X¢ûCw÷yùWÛğÙsçm2\'ìÈe²A¾\'¼ºà~¸5°”º×/:ÏY±qÀš#ELGÀñg;0CĞ)	Rk	rÙV¡VÃ¨(kŒËd<6Á8>PxÄ$.bW@¯®ô:ŒV`\\¤€\\­À!ÆWò!|h2|)ì‹êğ°Í÷‡}ó¡Á Ç/‚íğa@EÂ‡mñ§Ø™*®B¡h3Ò€“(~Ø¦ˆj£€à\\6Ö0(ä*t\r¤O´lI‘™S¾Ge	¡ÛÔ\\]}pgTAgÆåˆiKŞw\'÷,q?tÁœ\rõµX7€ŠúêŠÉğZ¥_„edg…o7Y\'Ù2¥sßdÙ <‹1Ğf8^ÌnSÅPK….‘³µ—Ò‘è^„4z9©{•Öp,WIòü»[³,˜8ÓÙMdÀ ‘DF\'M$$2€“È\0NPÒŠ\'Á˜b„L™$Ÿ£’ÂI¥ |x}Uø ñú ÷A\"õ±#K#ñ‹‘=ˆ°\'1D%wØ›­b¤bt’\"Fu!\rÒ:¹qÉ5£{ÿÄ£7W(PjD&wæüqäïS¤\nù©t:İËkÓÍüçgáêêØwá\0\\qİ\Zœ31¬İÉ5Ê…\'-H_]­»§kµ³İ+\nö÷ö,;ã¬¯Î¤Ä§zzÉŞ_$r\\:>Ø¼?\nêÅzÃ\'2®ÁHŞB¶`ñ1é­Kx4ı^)„‹‚)Eé—\ZºnRá%\"‚eğÎŒG_úu	Õ¢	¦€µ”BH±Ğ:OQúr{ÁöC\0G-„ ™»šƒsfA—]é‹ô\"›BZ¢?sGfL!¹Q…³ñìjYÜ4ÄëÏĞô[7ƒ+Æ0 1œ4òC\0ÑvcŒ¶Ñ|³îÑ°xÏç7h´Q@ŒÇh¦ÿp`°$<Nxş¼ys3Cüó[w*ÅµA2\Z×ÿº#ôœÆœ&1§ß8\r£D¤áõK•!(”‹X‡¡”Àq6œú,½Ñ^òPõ[I5O	hÎàFÎà¨<nànD;œ‚•¡Ø·\"¢úÀÄÄ“Oø•G77ƒ)ƒÙïÀ0–-À$âîŒ¥¦A‚2¤‰ƒóÚÀ*š`™¨ßkƒú½6hİkÃ«Éò#¥eV\\¦`Ê@&~Ö3«Ÿ)SÑ37ÒÛÒÍÒ;F\Zã±­3k«;îîÔÉmÛÃË…êÄÀl¥îä\'óSú¥ù©ıÿ\\\n~HÓ!çıS€‹‘<â06€„‚Œ	F†\n9èeÓ²b\"\ZW’\nZÉñ;×Á¡¢B=„Šhhhh¯ƒÖ	;+Ò\08(\Z¸?Kï£°!gT°i@¼CÛ@´+á¸N4&	\Z“I‚Æ$Ac’ 1IĞ˜$ƒr:À;RNTØÁ`­-u0®Áf°	zWOJ>ìÛ!ÇI L‚€¬XnDm©Ö\ZraXŞ÷iàÏ‚oÒ„GE…·)Àşš>Âühİ7n­Á–Zhr¯Ö4ì£ÔšeÛÌ³¶Íìº$•¤h²çÂÍÍı×çi–zjšGl_OT%Ô{ùø¦FØF8¶UIu^>>)aïwSYU‰éÙ}³ûŞ:LÛ5Ø˜\r>XiIZÛXWX“»‡%Ågà<öÿî.‚–%Aï¥QTê¤>ö^i‹l\n-Ø(À…¹è½Vİfınâ6T éÈ%ÂP€.6ÊnÈ\nfŠÄÙbBğ‘oF{k´oFûilMÂ3( n#ûàg„+ªîÿ ƒ‡šàÁ )lhCÈk°ıÌëE~¯‰Ï¦ÂùÀ˜[OqîPšÖÔĞf‘ØnHrÏo¡ğšó¶ì&ªzNöèìmÔÕônâ5H‰‹Ùâ=”’0~ È*Ì&™#ˆ±J¶a[Dq(ë(ÒÌÜ`æq™ÄeNÅhq¢…ö<Ííí”z9¼7Ä;nÓF¬óf{ûUd®p»gØx·\Zo•9tàÃÎÂÎÉ.Ê®Ì¡EG„b \"$…œ:$%’ŒÈ‰¤ÈDî9ZLt’LŸ*#§Œ‰6Lèz¡Ø|½¤(~\nŸ´NÜÁöïÓ¨ñ½<`®.ôî#MŞô¢Fêî?|¬{€Û>~ˆ‹÷7oÁÚïæÏ]Gøëê~ÁÃq!¸\"t?ë^9wîÊÙ+—`DJ—O}$wæ}•î\n\"ÔZ!&­{H3E…¢/ØUf†hÃQÉäpÍ?:.ş,,EË­È‚ôÑ(½PNLé\rp0öˆî[æó¹tZ?KÑo#˜§LÃRæ5,ÕjĞ\"c|Jª)>Õa€ê¿P\rçÓU¯ø›òûMOlnNŞ9üèı_Îè½*9­<qñ\"¼áN¯¤Ş^:_Æ›Š¨¾ºSºGGÇ…¶Mv“œ×û¤8[\"ìŒÒ\nã	xRiÎ±\0¨mfÁà°aØTvC\\Æ¬”Vj+Âœ…ÉBŒd!F²oXˆ‘,Äb$KÂ10’ctô\\70’ù\'DQ)7ÈE™!…¸ˆ7tHªÁ²CÂ†š\0!}\néúÙòAjÌ:§vé·\"¹¹Y½n€Ü×—üÊŒÓ3âıïTÖêÉàHiû¯ä%jˆ×+û1	½5agïÁéì¦à„»õà¤¸\radÙd8gôQ”1Šm²¥ù\n«±Œj¡VZé¥õùoàÕI&{ÍÁ¿¶çb|±7åHNpÁ]”P‡]\\<\"é£İÀş0’ä8ó!ˆD@vx#Şy#®y#şz#Îz#@ñ¶F@%F‘	1:„#¤{³Ö-hÆ7Øß›åo@E>\\Œ¸°E¾=æ,f¡UJocÆåê¥’‹–(+½MëµÁ´^+=‘i5êcıCƒ«ƒ,a,¦gIôëƒP\0şC^€ï£	Ä\0PÆˆ	HĞ=\n-Òï¨\Zö‚ÁAèŞƒÈwù(Øh‹ÎéÁE^j»Vu*ÎlÀÕüªiÅ^5Á³Ç…vëÚ4\"ÿDŒYÂÉ¼ÂFŸÎC‚j|&ÆÇã=üæz.:5-³‡‹‹˜#æ{Î++‘»	NLíëêjc.6sLL‚ÙşÑÆX‚Ùc‡”}Ì†ƒä\nX‘<®ÃŞŞ6Šä¤vªîDğ±iØ<¡\0™ˆ\0	R€´^€Ä,@{¶@bÆfÁ\n†t…èX…Qô6e0–ÑLX(Â€Ú€‡˜ôZÆ²E§c\rGQŒv hUdÑçõôË6tì6ÆM„èÅš*¢-x¼|İÆêêf|’®Š-¶é™êŸocfÆm?F¤/Á»ëö,Ñ‘ıó|¼Üí9€;?‚•ºÀ¼—ÒŠË´ce‘ÃšÃö`˜ál+â£=Ê§ÕçUkÕe\':üñ™EèW?‹u«2)-íMñé(íCı‹ ×G.NÃ>ÙFßZ˜5ˆ…mXƒØPh`£&Ø\n¯€±\'Û~\ZSÿx¹ş\0jh!×{PÁz1~0ê×<ôÕ†_šûÌôÄ¦äæªä´K§‰m“úVúøz¥„‘= ÖF\0D¯rabûw`Ìö6€FpóFréMİk:E±õ›<2í\r	˜zPŞÌ.T(3Jd2½¡%£7#›Á`Jàó’ ½0O²+B&añd>–`c¢‚ÄIÁ&pƒpçÆ„˜cØpl,FaÓÙlœ$-É²‚¤Hôbn-\0DX\r³ @€¹gÑ/ÈÁWÀ,Ëğ|S*Ç©j]ø.]Ôq| TîİJ*ëıd²Î6Ìv˜-{¿ÃÛÛ‘~qàÆj.Z¦ptÏµÇ­H+–=Ç“ôd…caxD1ƒXaœ³,!c¨f+™ÓÓl Ş—ÈèË\ZÈéË-Ã³I#›UÆÆuµ 0v!c§JöxB\r¤.1ãš±$L—€ŠAáh“\ZKU0	&ƒ4Î$x8`—¢Ì‡\\\0‡˜`ğÓy<¾zªä\råQL‚Â)©T­9Ğ‘,|…#ËG!´Õ¿L˜EŸ\\Ã7Éÿõ¬rv…œ‚¬\nÄ©	ç¶ï\Z¾Y—öÃÃ¯ëñ&]áGÈtñ5mWA×YÀ¸øÆÁ\n·’ôÙÔHHY³»‘Áì$2–=˜ìÃÎfW“j¶‹EF2ÁÄÙ›$X,Šà4r¸QÜ¡Ü2n5—AL2ƒoıİ\r\0â ¡Ç¼uv†/½YãÎäİ÷c‰©mÉÂ6\r±t*¼¸şıáövú$9è¿>·Á¦·aw+¹8‹Äî¸O0ü•ÜNògæ4ŒÄÜ”6ñx&6…Qid6z!œÄé·ş1øá×HàÆş×&æ4İ—ø(ô›2Nú+›/Ü÷£+×â_á_®Äb2•S§£Àµ¹›UÄj4½ØVèÚøéÅ™ñ×.³_¸‹Ì•<;ŞYşH‹ñãáèÚ)*±TZñ¬[=¶eSokm{GÜ\\/Å/í\"ÿÒ•ö|üûúûúûúûúûúûúŸ¹0ôxHƒ°½ƒ	0·ö“ iÒí—A:ådZˆY´RA{6æÒ“ íJºaıÛ[A:\0äx‚20‚4ä<ÃbAÎ?@*%ã@­GX\"è+¤°µDÔN\"xÚ€¥ò°Ş(MGµÒQ­tó¤ƒ\0ò3P~_ÌBw¤DÓ~ër.c@ÉÒ´Ñ1ˆNhÒtB½Ââ@ƒ°x0‹Aàé}&!:ĞY¨ı,P¦¤ñ(Mh	Ò$D§\Zşó\'üß¡À_V‚c,pGÓ «õ4	rKô4eR†™c†ïÙ`šä³°0#ÍÁøØR=ÍÃS°&=ÍÇ:ãoà7¦P$èËœpE4Ğ\"ÑL”hÊOE4ÑCÍ-åez\ZÇøÄ9=M`|²DO“X>™¨§)“2LL×ÓL“|6ÊHs0²IOóˆùä=ÍÇú0smf2~.s¢ÍMòùf@´\0yÑ–€1ï\"ÚÊ¤¼5š#MÛ˜äÛ¡º¯mú¢ÛìdRÆÉ„vƒåY$¢ı-„4ÛdÌl“öÍMòÍõã_+UÈäriOU¦¬¼l˜V\Z]¦Q—ir´ª²Ri÷âbiºª°H[.M/(/ĞŒ*È÷Ï,Ğäç”æHUåÒ©V““_P’£!-&Õ˜4T¨)«PÃì¼²uN©ª Üßø°›¡‘ô‚ÂŠâ\r¼/=JƒıeR/c9ï9ZĞêhitF[ PV!-É©”V”€ÎÀ\0†••j¥9åRu¦D¥ÕäKs+Ñ0bû¦tO5èF­)Ë¯ÈÓJU¥ÒÑEª¼\"“ºàSUšW\\‘ªjË¤ùªru1è §4ÔRy TA©Ö_jè»¬´¸Rê¥ò–”äÂJš*5îpD¨x¾ª´Pª)(×jTyÃ&½ƒêÆ¶ÂĞ\0¼T mA	‡FzÍ/]Z\\–cÚ)s=ÒL·tÒ\n­ºB+Í/¥Ê+€eŠ\nŠÕŸL¨H«Uw=z´‰İş@TÚJuY¡&G]T\0»(Àzae˜@DVŒ•b•à.«ÄyXúb‚àçÃóL>KÁ¶)äå“_“?’»È=àgùù=¶“ğağ+C¥XOL…åreX9øêJ±hÔš\Z¥9 G¨RÌ<éÚ/Ÿé ¯+ÏÊÑ]ø,\0¥G4”ÌDwùh9 „\n•ƒ”µ™— ñ\0y°_ø¤äv<¢Bt_Æd(>KÀ=ìA…ú÷ï f·ÏFÇZZ*F½—ëç(Å‚A;2J1¯ÚóF_˜¤Õu4âlG‹Z€Æ(E3«Ÿˆ+ôÌhC½h/à½\ZÕ+Oµ¨|—‹ê\Z¸–±Àwº®Æä‰\Z,ô’‡ZT¡ñF}å´ã~é{X6ğ I\"•-i>z®FÜ©D£,EOa_*}yú¶\nP\nµâÓyÃçÅˆòµ¼Á\'”v®±§FUúYËGZÏG-‚<\rÒ	-\ZwQ‡;;İûçã\n3á\0œ	=-êÏ`\ZôõY•ˆwe€ûpæeHÃ;)ÍçœxZ€äZ¦OéYÑt¸S£TŠF;\nÍ¦ÀØ,YŒ¬â¿“Pâœ\Zh{\0¸F£Ëqôcíö×[U\0 +ÑÑÕ …Jk˜E9fŠHsTÆû;¡\n>B¬‚0	¡åHÉ©d*Š\0i((æ¹‘¬;(¡³.Eµ0ã¤¯mLß¨B—@^-Òßÿú«™èÛãÈ­00jâ‡a˜ğs»`xq¶Ô>CJŸ)f“Úıå ô]i¥Æz]ˆt\\ÏÑ¤nüÄ1¢¸,¯ã£Ô\nµƒë[# _¤¿è?= QäòKr*9\rÜØì-xä„KÑÃÉé¨­¾5}{¶Ã0ãä¶\"«µÈät®O¨ÿ“‡³ˆeµ¶É +Àq9WÆa2|ø$!a`²¦™§ğÚ§–eÈzË|MrV8Np\0.:¼RAm2…ú	/™³Ic”UB?nï™C*Z¶Í>xgM/å”es,«ÉeµT¶¬–LYF8A˜ù¯^Ok¼øØ^CíN`(j¹Ì›Iö¥¸–.ÑeêJ\rt}¤^yŞRyhhÈ\'N’¿ÜQæ@¶îĞ}’;ËœàsÒRüáyzY™VÚ½B[T¦Qi+e¶<Yˆ¬«ü”Ëmyr¸\r™àß@Y%âh„iIôÍ[Ê„ğ†miÖ/§¼8ZĞ@Æ‡™,KVzA~IYi¾a`fÿl`®2gz`ÓçùÒUa)tQÒ¢»ËjqÏ(@g`d-n|3¢Ç±m•ã/fmŠ\rı6è{ùÕ7îÁ‰£÷¾sZr(väÓ3q÷ÏOûyDJzîËÄÏ=/\'¸Eì9éº›°­ºâFì®ïfğÓ¸û´,ûçêt¦»ÛÛÜ§ìbWÏNrZpbS€ËÏI~UeW¬Ã¦…\nBoìò~9,ÌW´ë<Öl)Æ\'/z÷ÓÆ¼êÚ7ƒ—ÕLªkÜĞ²}ÎÊS]×¤ÕÙzNîuCÖŠE¼<ø&¢fwıãâĞoüƒZ7û¯7Ÿ;sÌ°EóËyõë[~y!İ‘*šwÌ÷Š\"ÖîÉÎ¤¹aiâ“ÃzW~×4ùpfäÒÚ´†RÆÁûÆ¹íJ± ×qŸ/K\'Å3Ï,9TO”Öc«öN¾•AÀ_ñ^YóVVó§Ì°³“;e.3c²ê2,’”Õ¬€¹8Uóµ¬fŞÁ Óê§*Í×Ş_XmìÙØ~l¹æß¯oµØ>ljxxƒğLdkŞ£[J™£%·S	>d`Ÿ²¡¬w:9\nSZÿüê/½¾îã¿2&ï™Œ[P0£zÓ!¡FŒ[÷ÃI-\'›{iWô÷Ôv®ØTß¶.eÎ¬çƒ£Å×Uø+ª^ÑN>ş:ãøş¥»2ËåÅ¬ÁÌ=üõ‡íÜ¥v¼9—®:6yúxMù÷3n†6FÌŞÜµälÃz×¶[.ª83véî`;ƒ^üYõF òg<ô;»Ç¯‘ÛºÎ¸ÍâÉ*:±kB÷Ã¾İ¹mgcĞÑRP5öÕÙÛ=nÓİ¹ó½®õÖŞ&õÅYwS·v]Qåw>âZ77„XZ3ÜuJëà¼î½”=­ï$Ià«°ùËjÍWºÉwÛòÕÇÖ]•nİ#³«“Zñ:7§¿ì~{ˆìî,/Õä}ê¼øfİÉ	=4£ø\0cÆŒÉÕcL¾q!ÂBkS;b\0œùZ5\09\0\Z€™à@¹p‚·²š‰ÿOÆÆCŠT—ê™š–n(Nş“âÿ{VÔŠ][ğöyİ„•í‡ÕÍ—Çw~ûvà†“=-v…]u>Á¸0¾*jË‚Qîİ®/K•şª9=ò·öb«7K\'mtŸ¼ËjKÖî)şÖÕe¬«ñÜH¾iº8›x²µ¯86±®u_]^İ2«E‹—.ŠË¹,ïw(AšaóçñşºÖ½’£[ãŠy÷»1N®q¸ÛğìÆwûÕii‰Ú~eÕâ•Xéw5\'t£šö&Íòµ¼ı û(Î¼¸PºY¾!rÄY%{âµlºì÷İÓN<9_%¸zoQİı)U3É¤ÒÑÒ„E\rº#±Ûî§P87÷äŠG³İÛNÿÈ?øz«›dÜ»ª‹ƒ{)| Ç×²šWcÏ+¾¢9Ì<wè•Ú¥Cùó»;È2Ú‰¯“´z`È¬	7:¹Rb™Í„Í>p¢\"da²Ğe!Ë‚ëõûÇ<Mñ\'ûGõÌ\rĞïºË¢3€âùƒ,Y‚a„8N…ËºÉº\ZîeD½ï?İ¢4&-i?1(„>ÙÙ—«d‰¢øî!áC*6ß[u&lğí¿p~Õã•¢åóŸˆ7Ík-i¼,“849çu›}i½Ä+y^—ñÊ>ÙÇs›¼W}3´úÀä5õæUkÿ1`üµ†£Ç0Ö¸Íİ«÷¶¯F‰o¶—æ€“8Â÷æYfyfuNËÅÜn»°^Œ€…ãÍ‹\n3ß=•5öÎå[cNN–®°[Şœılé÷éƒGYµÙa\\Ê«QÓ69®©i@úq{ÖÛ­šµ±…ëû…LpM¼{ÒÀê?ŠÆ<¸ùEö:ŞA¹c«æëÈÂS]Ÿt=j_~-ìJĞ­‰g¸3õ¦D—Ïº¾Õ»Â}”ÊıÅ…éÁ®?_sè³ O>‚áÜ©{1÷uÂk±NıÇ®øƒş3¾NY¨¼‹L.\n\nĞ\nnÿ¾NUIA¹6§DıW}ë!¥ïÖî‘4R|ødBdÆŞ·ë¬~òUì¥¦ø82ğJ¢|–×Ö™ù·Ò&ı´?ùL5ãõÓŠİS}{á•zØÏa÷·n{Z·ãÄ“ïÚD«¸\\¼N)¯dRö£¶”ä—$õ¹vãùÍ=K\'šp«:…™ójïv¦cQü‰+{G\r¿ÕÚœ9h¸C^û„ªğ\'(÷¡£µ¬¬ıƒ/×‡øVáÿáÊ©\Z¥[\\\\:öö£Èó–Œäíœ*ÎÍV,9;±—Ëà¢Ø©7&	Ò6¾Ù\"™^üÄ}¡åëc‚Kuü—µ£Ê»ü¯±+g316Ôn{=gĞ¤î“ú×Í)İàä›p¼lQôíá÷«=\ZGĞxS‹{¸u„8ìÿ?¼“£ßYXãĞ…ÁL€²ì~¯¨y;‚Ö%×Ïh^ôÇ÷aİ£–Ù+X”¹£ØKV€]H4ÖıcOè37ª€šÓS(ß_•¶SØ¸<‡…ó§©c§?-ï³+ŠÃğkßŞ;£ÎáqèÌm+3¹7§m\r³?óîûolû±·³}[õÅr…KÜãâÍ%U.ÛãÎMz1İb7ëË.û~ñ@»tÖÙã\'o4î½³§ó‰ªGG~P\\˜¼ãXŞ/]Îˆ÷Œºöõ&ûò%Î\r—7oõ™örÑş‚¤¯½<eivÈ²`LÂÎSM»¥nÈíSöàAh§»SZ®†Ö¼±t–?!IÍmùšˆ×ğS;q¥àMÒÍ«¤vö&F©ùñÅ×½rªÛ.:w%&Ï<0W±ıWåÁŒˆ]k§Ü¼?,dúK—¹‹oİ§w·‹š˜®­\0 ¾\05Ëà1VÈ{ÄşÏ¹GŸÄ¨®²E0€&¹<bT }+‡·²šMÿ÷ÈSæNß:–F«Ô0¢“+ÍèÕ­kpL _ ,8Ú/¸GtœÜ]æJÏÉáã9ùeÀII3\n40ü/áíå·qî^IM¡û¹›,“OÊ~Ú+êú¾¦ ˆõK—nE­,j/kŞËmÏÇ9æúÆ]I^Õ;hÛ¹âÇÃ6O\\!dûˆımø4b±V¬z˜ôØÓ÷IøèA«Î«$÷›$8½Şïõ”N¿ıá½ù÷SK˜¹ßhúì;x*jû\rıÅ¿®¾ôóşŠ]/ëîÔÜ÷ºlÿ¼å‡çµ+/^\"W,µô.âíº;[‡—ù/~k—xŒdg|iM´Lô•X;ò›§MŠ1/Û¤ºÌËíĞîº¾îÑ\Zõ.òØÕË\nÆŸ¯”[—\\ğ­/ŞvÌR1~úÁ/~°\rP¼¶³Ó†Ø¾¯›ŞúN,ô=éìÀå®¦îÔ@¸?¯õÏ§Óÿ¦º; ¨×Ÿó¿{c¡ÿGR‡ˆñã)iËÕy9ÿ#’¡%mÇ`ı‘ÿÇÜÛZñ¢F¾{uğªkÆ$§Ì–§ÖbOØt\"jä…úªÑN7ÚnÜUu÷Í‚³Ø„&«*ß–ÈÂÜ>-Oª=…³B¼2¹WÃŸÙñ®ã<­•ì¥{xrªörğVóEØ¹©ßÉ9°¥¡ûâÈ.×û¯ò\\Øíê.f–Õš)û\ZÃ§¶ä.x=ìñ…^×Ê9Íï\\ŠâRŞ+wùİ»Ñ{—¹‡ùCÍ2ëŸ‚Şx5:%å2–OyUÿ€7“}©ØÇÕÚ½	U}k£†b]£1G]Ø“ZÎ‰hûiÈËCBöçç,ëy>B}|ĞËš}çWÊ%»ò/Î=;6ªó ¸Nø	òMÔ\0ìø”Œy-µ Ö<Çe5“ÿƒ[¶6’B]ËjÂÕI/6)77£~?Üqå|™éSk€\ZÆŠ”¨úØˆ—cŞ·RÊ»ZLÍZ¾ßˆ>OÜeÃLª˜ËûË2—ùNèü×l–{Lpû‡LÒO‰ªÅ1Ï€‹g=üùdĞ¦«3¹uãèİÎKáÙgÙ	[»Lx~¨hÜÓ·³ºí‘TDTö|!¶Yr.|Ûs¹ÈuôŠ‡äšâ›×GÆ–l™kuá±ÎÍqA({şâå‹v*Ö%şî¸¯åû”ASrgôÌ¯¾9ôMjEFà­³æ›İÇ±vİ±Q¼5Ğ+}ÆîÒ#u¾é¶³Ï»Ç¿¶*~uÔNT¿5©Ç\\KsMaÓ²›KÖ?<tyàİÜíã†6õ™øâÁ²ç\Z—’a×†u˜RõÇ„[œ8dû»ñ[›ûİ¼xçÉ«’-óï~]ñh6£Í¦rğ£õG›²úªŸ\\Ü*YyÓnnfvS_İ´ü%Ëk	\'Y-aÿAJLy-a²Øÿvuüt‰üháféÕqY–Llª‹Ü_ôi|Â[ øC B.Qt‘üLÍK¿¹ÙË¢I`sSs?¥şç¸!	ŸàT‘¯NMqğ¸2ÖåY´|ÒíaE^’º¯NZÊ7ÿ:æJ—Ù#ft=”’¼Bq$i¦j¢0 ÷ñß–¤F~·ë$Ã,n¶Sİ”/_Ne¹@6½Z;kHìwóÂãöÕs¬¶ë¶®qÏá?î\r:÷líšµ»Ç+ÕºoGÿq£¾wÏıÜásº£¼_¢£¯½ß5ëô¥ˆÒøA?i®´>õMdZ·ÙÙã\\ù{|Öék=%‚±+“7&ÄÛ\\ºõ4Ñæ¨åÑóC3Z7-/;ğç6×1_ŠW¶)\Z¯_çTu½–t\'qÎËóZéæZ“}çOaÜJ¾ê³W5¼Ëê7¥±Ób3rÍ½&øíÌÄÕ-½®0oÆ°ÿwä\r\nendstream\r\nendobj\r\n76 0 obj\r\n<</Type/XRef/Size 76/W[ 1 4 2] /Root 1 0 R/Info 16 0 R/ID[<335B69ABBB47BA4CA1BD779C319A13D9><335B69ABBB47BA4CA1BD779C319A13D9>] /Filter/FlateDecode/Length 195>>\r\nstream\r\nxœ5Ñ9AÆñû¾3˜±1ö-ä(%t‰‹8ƒT.VnàBÉhïÏúW¯êõëªş”Òåû†>óJ}9ÁU0Bæ(”·B%¾`^„êY¨­…ºwÁº	öAhè-ı‚©æ°€%Ìà7²Òšg@\0‚‚0Ä \nˆCÆP€$!iÈAòP‡¡e¨‚	5è‚\r4¡mhAFĞúàÂ\0<Â¦ú»„ãlw$í‘Êî-ì_J}\0½³\r\nendstream\r\nendobj\r\nxref\r\n0 77\r\n0000000017 65535 f\r\n0000000017 00000 n\r\n0000000125 00000 n\r\n0000000181 00000 n\r\n0000000475 00000 n\r\n0000003704 00000 n\r\n0000005467 00000 n\r\n0000005644 00000 n\r\n0000005887 00000 n\r\n0000006060 00000 n\r\n0000006298 00000 n\r\n0000006458 00000 n\r\n0000006683 00000 n\r\n0000006858 00000 n\r\n0000007104 00000 n\r\n0000007274 00000 n\r\n0000007515 00000 n\r\n0000000018 65535 f\r\n0000000019 65535 f\r\n0000000020 65535 f\r\n0000000021 65535 f\r\n0000000022 65535 f\r\n0000000023 65535 f\r\n0000000024 65535 f\r\n0000000025 65535 f\r\n0000000026 65535 f\r\n0000000027 65535 f\r\n0000000028 65535 f\r\n0000000029 65535 f\r\n0000000030 65535 f\r\n0000000031 65535 f\r\n0000000032 65535 f\r\n0000000033 65535 f\r\n0000000034 65535 f\r\n0000000035 65535 f\r\n0000000036 65535 f\r\n0000000037 65535 f\r\n0000000038 65535 f\r\n0000000039 65535 f\r\n0000000040 65535 f\r\n0000000041 65535 f\r\n0000000042 65535 f\r\n0000000043 65535 f\r\n0000000044 65535 f\r\n0000000045 65535 f\r\n0000000046 65535 f\r\n0000000047 65535 f\r\n0000000048 65535 f\r\n0000000049 65535 f\r\n0000000050 65535 f\r\n0000000051 65535 f\r\n0000000052 65535 f\r\n0000000053 65535 f\r\n0000000054 65535 f\r\n0000000055 65535 f\r\n0000000056 65535 f\r\n0000000057 65535 f\r\n0000000058 65535 f\r\n0000000059 65535 f\r\n0000000060 65535 f\r\n0000000061 65535 f\r\n0000000062 65535 f\r\n0000000063 65535 f\r\n0000000064 65535 f\r\n0000000065 65535 f\r\n0000000066 65535 f\r\n0000000067 65535 f\r\n0000000068 65535 f\r\n0000000000 65535 f\r\n0000008858 00000 n\r\n0000009019 00000 n\r\n0000009570 00000 n\r\n0000009597 00000 n\r\n0000010090 00000 n\r\n0000024826 00000 n\r\n0000025330 00000 n\r\n0000044232 00000 n\r\ntrailer\r\n<</Size 77/Root 1 0 R/Info 16 0 R/ID[<335B69ABBB47BA4CA1BD779C319A13D9><335B69ABBB47BA4CA1BD779C319A13D9>] >>\r\nstartxref\r\n44628\r\n%%EOF\r\nxref\r\n0 0\r\ntrailer\r\n<</Size 77/Root 1 0 R/Info 16 0 R/ID[<335B69ABBB47BA4CA1BD779C319A13D9><335B69ABBB47BA4CA1BD779C319A13D9>] /Prev 44628/XRefStm 44232>>\r\nstartxref\r\n46325\r\n%%EOF');
/*!40000 ALTER TABLE `tb_arquivo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_ativar_perfil`
--

DROP TABLE IF EXISTS `tb_ativar_perfil`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_ativar_perfil` (
  `Id_Ativar_Perfil` int(11) NOT NULL AUTO_INCREMENT,
  `Id_Usuario` int(11) NOT NULL,
  `Status` varchar(1) NOT NULL COMMENT 'E - Solicitacao de matricula para professor enviada\nA - Aguardando aprovaÃ§ï¿½',
  PRIMARY KEY (`Id_Ativar_Perfil`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_ativar_perfil`
--

LOCK TABLES `tb_ativar_perfil` WRITE;
/*!40000 ALTER TABLE `tb_ativar_perfil` DISABLE KEYS */;
INSERT INTO `tb_ativar_perfil` VALUES (3,1,'A');
/*!40000 ALTER TABLE `tb_ativar_perfil` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_atividade`
--

DROP TABLE IF EXISTS `tb_atividade`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_atividade` (
  `Id_Atividade` int(11) NOT NULL AUTO_INCREMENT,
  `Id_Turma` int(11) NOT NULL,
  `Nome_Atividade` varchar(120) NOT NULL,
  PRIMARY KEY (`Id_Atividade`),
  KEY `fk_tb_atividade_tb_turma1_idx` (`Id_Turma`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_atividade`
--

LOCK TABLES `tb_atividade` WRITE;
/*!40000 ALTER TABLE `tb_atividade` DISABLE KEYS */;
INSERT INTO `tb_atividade` VALUES (1,2,'Atividade Inicial'),(2,4,'QuestÃµes Iniciais');
/*!40000 ALTER TABLE `tb_atividade` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_matricula`
--

DROP TABLE IF EXISTS `tb_matricula`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_matricula` (
  `Id_Matricula` int(11) NOT NULL AUTO_INCREMENT,
  `Id_Usuario` int(11) NOT NULL,
  `Id_Turma` int(11) NOT NULL,
  PRIMARY KEY (`Id_Matricula`),
  KEY `fk_tb_matricula_tb_usuario1_idx` (`Id_Usuario`),
  KEY `fk_tb_matricula_tb_turma1_idx` (`Id_Turma`),
  CONSTRAINT `fk_tb_matricula_tb_turma1` FOREIGN KEY (`Id_Turma`) REFERENCES `tb_turma` (`Id_Turma`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_tb_matricula_tb_usuario1` FOREIGN KEY (`Id_Usuario`) REFERENCES `tb_usuario` (`Id_Usuario`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_matricula`
--

LOCK TABLES `tb_matricula` WRITE;
/*!40000 ALTER TABLE `tb_matricula` DISABLE KEYS */;
INSERT INTO `tb_matricula` VALUES (1,1,2),(2,3,2),(3,1,4);
/*!40000 ALTER TABLE `tb_matricula` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_questao`
--

DROP TABLE IF EXISTS `tb_questao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_questao` (
  `Id_Questao` int(11) NOT NULL AUTO_INCREMENT,
  `Id_Tecnologia` int(11) NOT NULL,
  `Id_Atividade` int(11) NOT NULL,
  `Descricao` text NOT NULL,
  `ScriptCriacao` text,
  `ScriptPovoamento` text,
  `ScriptResolucao` text,
  `Ordem` int(11) DEFAULT NULL,
  `Data_Criacao` datetime DEFAULT NULL,
  `Data_Alteracao` datetime DEFAULT NULL,
  `Status` varchar(1) NOT NULL,
  PRIMARY KEY (`Id_Questao`),
  KEY `fk_tb_questao_tb_tecnologia1_idx` (`Id_Tecnologia`),
  KEY `fk_tb_questao_tb_atividade1_idx` (`Id_Atividade`),
  CONSTRAINT `fk_tb_questao_tb_atividade1` FOREIGN KEY (`Id_Atividade`) REFERENCES `tb_atividade` (`Id_Atividade`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_questao`
--

LOCK TABLES `tb_questao` WRITE;
/*!40000 ALTER TABLE `tb_questao` DISABLE KEYS */;
INSERT INTO `tb_questao` VALUES (3,1,1,'QuestÃ£o Inovadora Inicial','TESTE\r\nTESTE','TESTE\r\nTESTE\r\n\r\nTESTE','TESTE\r\nTESTE\r\n\r\nTESTE\r\n\r\nTESTE',1,'2016-01-19 17:51:34','2016-03-01 17:30:10','C'),(4,1,2,'Criar um procedimento para calcular o IMPOSTO DE RENDA a ser pago em funÃ§Ã£o de uma determinada Renda. O procedimento deve apresentar como parÃ¢metro de entrada a Renda, e como parÃ¢metro de saÃ­da o imposto a ser pago. Considere as seguintes informaÃ§Ãµes para cÃ¡lculo do imposto:\r\nRendimentos do Trabalho: 15% e 27,5% conforme tabela progressiva mensal abaixo reproduzida:\r\n\r\nBase de cÃ¡lculo mensal em R$ //  AlÃ­quota %  // Parcela a deduzir do imposto em R$\r\nAtÃ© 1.372,81                 //     -        //     -\r\nDe 1.372,82 atÃ© 2.743,25     //    15,0      //   205,92\r\nAcima de 2.743,25            //    27,5      //   548,82',NULL,NULL,NULL,1,'2016-02-24 16:26:09','2016-02-29 16:10:51','C'),(5,1,2,'TESTE COM ARQ',NULL,NULL,NULL,2,'2016-02-24 17:53:14','2016-02-29 16:14:41','C'),(6,1,2,'Teste Arquivo',NULL,NULL,NULL,3,'2016-02-27 08:51:49','2016-02-27 08:51:49','C'),(7,1,1,'TESTE DE ORDEM',NULL,NULL,NULL,3,'2016-03-01 17:29:45','2016-03-01 17:34:08','C'),(8,1,1,'Teste de ordem 3',NULL,NULL,NULL,0,'2016-03-01 17:32:12','2016-03-01 17:33:32','C');
/*!40000 ALTER TABLE `tb_questao` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_questao_restricoes`
--

DROP TABLE IF EXISTS `tb_questao_restricoes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_questao_restricoes` (
  `Id_Questao` int(11) NOT NULL,
  `Id_Restricoes` int(11) NOT NULL,
  PRIMARY KEY (`Id_Questao`,`Id_Restricoes`),
  KEY `fk_tb_questao_has_tb_restricoes_tb_restricoes1_idx` (`Id_Restricoes`),
  KEY `fk_tb_questao_has_tb_restricoes_tb_questao1_idx` (`Id_Questao`),
  CONSTRAINT `fk_tb_questao_has_tb_restricoes_tb_questao1` FOREIGN KEY (`Id_Questao`) REFERENCES `tb_questao` (`Id_Questao`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_tb_questao_has_tb_restricoes_tb_restricoes1` FOREIGN KEY (`Id_Restricoes`) REFERENCES `tb_restricao` (`Id_Restricoes`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_questao_restricoes`
--

LOCK TABLES `tb_questao_restricoes` WRITE;
/*!40000 ALTER TABLE `tb_questao_restricoes` DISABLE KEYS */;
/*!40000 ALTER TABLE `tb_questao_restricoes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_resposta`
--

DROP TABLE IF EXISTS `tb_resposta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_resposta` (
  `Id_Resposta` int(11) NOT NULL AUTO_INCREMENT,
  `ScriptResposta` text NOT NULL,
  `Id_Usuario` int(11) NOT NULL COMMENT 'User com perfil de aluno que respondeu a questÃ£o',
  `Data_Resposta` datetime NOT NULL,
  `Id_Questao` int(11) NOT NULL,
  PRIMARY KEY (`Id_Resposta`),
  KEY `fk_tb_resposta_tb_usuario1_idx` (`Id_Usuario`),
  KEY `fk_tb_resposta_tb_questao1_idx` (`Id_Questao`),
  CONSTRAINT `fk_tb_resposta_tb_questao1` FOREIGN KEY (`Id_Questao`) REFERENCES `tb_questao` (`Id_Questao`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_tb_resposta_tb_usuario1` FOREIGN KEY (`Id_Usuario`) REFERENCES `tb_usuario` (`Id_Usuario`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_resposta`
--

LOCK TABLES `tb_resposta` WRITE;
/*!40000 ALTER TABLE `tb_resposta` DISABLE KEYS */;
/*!40000 ALTER TABLE `tb_resposta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_restricao`
--

DROP TABLE IF EXISTS `tb_restricao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_restricao` (
  `Id_Restricoes` int(11) NOT NULL AUTO_INCREMENT COMMENT '  O objetivo Ã© colocarmos aquelas restriÃ§Ãµes que jÃ¡ conversamos em relaÃ§Ã£o\n   Ã  execuÃ§Ã£o das respostas.\n\n\n    Exemplo:\n\n   Tempo MÃ¡ximo de ExecuÃ§Ã£o - Para identificar possÃ­veis loops ou outros problemas.\n   Ou seja, se coloco um tempo mÃ¡ximo',
  `Descricao` varchar(100) NOT NULL,
  `Valores` double NOT NULL,
  PRIMARY KEY (`Id_Restricoes`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_restricao`
--

LOCK TABLES `tb_restricao` WRITE;
/*!40000 ALTER TABLE `tb_restricao` DISABLE KEYS */;
/*!40000 ALTER TABLE `tb_restricao` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_resultado`
--

DROP TABLE IF EXISTS `tb_resultado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_resultado` (
  `Id_Resultado` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Essa tabela irÃ¡ conter os erros apontados pela ferramenta assim como comentÃ¡rios do instrutor/professor.',
  `Erros` text,
  `Comentarios_Prof` text,
  `Id_Resposta` int(11) NOT NULL,
  PRIMARY KEY (`Id_Resultado`),
  KEY `fk_tb_resultado_tb_resposta1_idx` (`Id_Resposta`),
  CONSTRAINT `fk_tb_resultado_tb_resposta1` FOREIGN KEY (`Id_Resposta`) REFERENCES `tb_resposta` (`Id_Resposta`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_resultado`
--

LOCK TABLES `tb_resultado` WRITE;
/*!40000 ALTER TABLE `tb_resultado` DISABLE KEYS */;
/*!40000 ALTER TABLE `tb_resultado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_tecnologia`
--

DROP TABLE IF EXISTS `tb_tecnologia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_tecnologia` (
  `Id_Tecnologia` int(11) NOT NULL AUTO_INCREMENT,
  `Descricao` varchar(100) NOT NULL,
  `Versao` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`Id_Tecnologia`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_tecnologia`
--

LOCK TABLES `tb_tecnologia` WRITE;
/*!40000 ALTER TABLE `tb_tecnologia` DISABLE KEYS */;
INSERT INTO `tb_tecnologia` VALUES (1,'SQL Server','1');
/*!40000 ALTER TABLE `tb_tecnologia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_turma`
--

DROP TABLE IF EXISTS `tb_turma`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_turma` (
  `Id_Turma` int(11) NOT NULL AUTO_INCREMENT,
  `Nome` varchar(100) NOT NULL,
  `Id_Usuario` int(11) NOT NULL,
  PRIMARY KEY (`Id_Turma`),
  KEY `fk_tb_turma_tb_usuario1_idx` (`Id_Usuario`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_turma`
--

LOCK TABLES `tb_turma` WRITE;
/*!40000 ALTER TABLE `tb_turma` DISABLE KEYS */;
INSERT INTO `tb_turma` VALUES (2,'Turma do TCC',1),(3,'Teste',3),(4,'ProgramaÃ§Ã£o TSQL',1);
/*!40000 ALTER TABLE `tb_turma` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_usuario`
--

DROP TABLE IF EXISTS `tb_usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_usuario` (
  `Id_Usuario` int(11) NOT NULL AUTO_INCREMENT,
  `Nome` varchar(60) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Foto` blob,
  `UserName` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`Id_Usuario`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_usuario`
--

LOCK TABLES `tb_usuario` WRITE;
/*!40000 ALTER TABLE `tb_usuario` DISABLE KEYS */;
INSERT INTO `tb_usuario` VALUES (1,'AndrÃ©s Silva MenÃ©ndez','andres.s.menendez@gmail.com',NULL,'andres'),(2,'Administrador do Sistema','admin@admin.com',NULL,'admin'),(3,'Teste Completo','teste@teste.com',NULL,'teste');
/*!40000 ALTER TABLE `tb_usuario` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-03-01 17:42:55
