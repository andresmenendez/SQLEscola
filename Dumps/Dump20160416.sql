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
INSERT INTO `my_aspnet_membership` VALUES (1,'andres.s.menendez@gmail.com','','123456!','InxZh9Q62ATDgwbbkJq0Fw==',0,'teste','testado',1,'2016-04-16 09:51:32','2016-04-16 09:49:41','2016-01-12 20:06:10','2016-01-12 20:06:10',0,'2016-01-12 20:06:10',0,'2016-01-12 20:06:10',0,'2016-01-12 20:06:10'),(2,'admin@admin.com','','admin','Nm451CK3L8rZhbnboAFNKA==',0,'teste','testado',1,'2016-02-24 16:13:34','2016-02-24 16:13:34','2016-01-12 23:14:01','2016-01-12 23:14:01',0,'2016-01-12 23:14:01',0,'2016-01-12 23:14:01',0,'2016-01-12 23:14:01'),(3,'teste@teste.com','','123456!','MP/KMapoC5T6DAljkdladA==',0,'teste','testado',1,'2016-01-14 19:34:35','2016-01-14 19:34:15','2016-01-13 22:17:45','2016-01-13 22:17:45',0,'2016-01-13 22:17:45',0,'2016-01-13 22:17:45',0,'2016-01-13 22:17:45');
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
INSERT INTO `my_aspnet_users` VALUES (1,1,'andres',0,'2016-04-16 09:51:32'),(2,1,'admin',0,'2016-02-24 16:13:34'),(3,1,'teste',0,'2016-01-14 19:34:35');
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_arquivo`
--

LOCK TABLES `tb_arquivo` WRITE;
/*!40000 ALTER TABLE `tb_arquivo` DISABLE KEYS */;
INSERT INTO `tb_arquivo` VALUES (1,1,'Exercicio 05 - Programacao TSQL.pdf','pdf','%PDF-1.5\r\n%µµµµ\r\n1 0 obj\r\n<</Type/Catalog/Pages 2 0 R/Lang(pt-BR) /StructTreeRoot 17 0 R/MarkInfo<</Marked true>>>>\r\nendobj\r\n2 0 obj\r\n<</Type/Pages/Count 1/Kids[ 3 0 R] >>\r\nendobj\r\n3 0 obj\r\n<</Type/Page/Parent 2 0 R/Resources<</XObject<</Image5 5 0 R>>/Font<</F1 6 0 R/F2 8 0 R/F3 10 0 R/F4 12 0 R/F5 14 0 R>>/ProcSet[/PDF/Text/ImageB/ImageC/ImageI] >>/MediaBox[ 0 0 612 792] /Contents 4 0 R/Group<</Type/Group/S/Transparency/CS/DeviceRGB>>/Tabs/S/StructParents 0>>\r\nendobj\r\n4 0 obj\r\n<</Filter/FlateDecode/Length 3154>>\r\nstream\r\nxœ¥[Ín7¾Ğ;ôat™Vó·» €l±¥È³Ùƒ‘ÃD3RX#E\ZÙ¼Şö9²{XäàÓbï[U$ûŸd[A\"©‡õ±X¬*?rÚGÇû›«õå>ùòË£ãı~}ùÓv“¼?Zİİÿp´úûıöè|}}³[ïoîv_}•¼<y•ü|x D.“şSğ ’ªÊ«¤,DÎTry{xptz»¾Şªää.ùîğàå\nZ^³„ñ¼ÖÉêêğ€Q_h%KJ)ó2YAÇ\"¹Æ__$E^¼ª’Õåûô¯oO¿_^¼;=9>Y&ÙB§¯—\'Ë‹ãlÁtú-4”)µ—é»åÅ×/ÒS•é9ı^f?$«o–+cŠ\\\nsÕZq°d€?zÍÆòBLy\r¦–—’º¿OO2•.ÏÑ¾ãŒëôŸV`Ce>¿Y¾€i8óÅKP+ûj‡µXW|Â„ŒKè´`Eú.[Tà^Ãvìå2‡dF½ƒ-S´ò5~8kf=dúO|ü6úÌ—’å¼i>¯riÃêœk‹5ş7ã<½¿É x—ĞÀÓ;lxLèyùx¿ÍjÔ)!ÖÔJˆ2İl3ÁìÌ^fLYÈ•tô!˜÷Àèƒİ˜=–‹Zçb`¹o–²^ÃÚĞ¹Š9Ä@u-0ªah%óº’‰®XÎ,ô#ö\0ÖK3½+ˆ$Ííñ1[pe\Zü:ËLù¦¼ÛX‘Ğé­7¾ÑM¶é®	z|²¡ Ô ½›V9u¹ÆÏO0.³6˜d£ñ0Z%{}Ûxÿñl\'=·8†›‚··ñ¸O¨¼ï’É•Ì{ËØ9R—¹İ’å›WÉ‘§F¾¼Ûïïn}er\"^¢ÊY5•PR•¹.˜D¡e¢r¶B-àÉÃöğàoŸ\'»¹¨î¸î÷;úŸ&™ãôŞ¼:=IŠ£o×»ë$½ß/ÎWYg>äA¨ÌÕ¤•\n8±«Ÿùô5BmfSÑiäC#Ga.8èºc†>1ÔGNîªÄêåK3…S¹Ìuú«ÉÙ…€¡pÙÀ\"ø˜±Ú>ŞàãÛBùRYB:Ê¾î ¹rŞô‹÷¬úÔtLP‰ªt^Ï2J\Zm¢6Ì\n6=Ø5ŒJ–V­˜è\nU’ÉA×ëI)X¿Û+Odz-úX¨q°ıİdë˜Ä\ZË¥®±ÚA`¡`U¶áşÁ”Ç…^BJÀÖDŸnDHHØŸvHYö”n4#àƒiCEkêôûãG30}˜ÔUvJÛ8TÒsÌÌ³w+x<Cr§¶ËE†„	róí	rlwJ™aÍó#ôŞö»§ÁĞ‚ëî¸f†·è0Ìù\Zö% \"Æfš÷ Ç¿3Ù3Ö¸ikôDÇFRÕ¹péèb`£CûJ[¼´îµ6CÉıˆB7üíœM`H”ãÊ¶ò3ú[NxNl£~Aá¶G2Z±Ñ9¹£¢`ìpÙ8&İ¡MŸµ1h]ñ€q›dŸã6YØõ“yGGÂ–àÖÎ”_¿°~²vÀGß¼PÅb7èN“Ã±‡›	ŠZıº»:ïM;vÜ“FÅÒu_aw4ÆÙgÀ¢lû+˜û]›ôÄ°¨Œl\Z[8À`¬ë§¶‚tâ³µøé`(Yä¬î#8dğnYÙÑpà«L¸¬qëÈ.6\\Çÿ³ëV:Ó\'Š˜	îïÓ5¬kˆŞı™ˆ]R³EUä’÷gñbÖ¹Ã¹˜z¯gp—+ıôEÁ¡Ps”T½­Rú9–*ÀbŞ,((åÛå\r‡hÿ)lÓ>ã”sD°5!èS+<=¬„¬\\À.?\r=yôZMXÁ9TÛ¾/2N»‚L…¡ş,Ã&LLß”£ DÁYƒà•éuyGôNWæD\0€‡[|Ü’Š=-•5ÌàGª±ÓfÁ5‘†{Ì°;œÅ5>Dàñ‚ê;ÁY4øDjv˜\\8;7ş½A;~E,Y9ˆÉªn=ò°½Ï„µhc’»NÃ=;Äï\ZTjOé(}à0\0ƒs ‰Ré¼Ò	BZbˆ0híq ›fu{ƒ3«o  ”ºsX}¹~ÜºÃlÛbÚ]b´‡•-ÍãÓ‡L·yhÒ5ƒ•¼£ó IF”lo³Š(ÉÿÒ?³|šı*ÑÃ‹\'®J }ó=ç\"‹kAh3–ÖòŸYÑ:zVg¿£¹Æ£^ßÒcL¨à›ğó3ü<C¬p`‚ülä®O°bÂ]‚—Ø4Ó]BğœWn,^Tx*º‹uogtö»/ô °ç”Y—¸Î·˜~ÆIæ7%ê\ZŸ~»Œ{•Ê¦ªŞ»ÖG$¢ˆ¦è\'LeÂçJ”yYÏòyÏ—î$\\ä¥xZñ\\ÀII–Ş,B3Ox^®>oåtqBbúÕˆ]51%UÙpÍP±¯?×PÌ´ë\n¶eÙØjÁ%MV×åá\0b.X_-¥Æ©*Éñ¾ 3Õ¢ıÙ6nqØÆl„N«%J€¬q&“.\nËm­2r¬U²e­âºÀ›S¯ªÆ¦ĞÙ¤!\'\'ßmÊ-AÚ)ô@Î¦€‘Ûaı0—¸o¼¼^ó\"]+Ù®9åTfy\Z—›*kä¶ÊNZàäUM1 ³iN g`›‚ íz gS@ÏÈÈíñ@7ZıÈÆm,WÚï¶¸Üo#·Å{:”x¼ªYW•¿”ÌÀ:Ëæt¶Ù…ÒN¤rfµz¬YÏ@Bk£¸ARİ¬+ÜíZ&p»œ‡ô¿g’\rE”¹ôò1æÇÁÎÍAÉw³‰ß‡ÕUûÕ&r7 û?Ì™ÏL\Zï–T*à¡„á)	\Z*x`^ÚûL³ğ^®&ÌŠ“_3¢c!/Ê1ù\rvnÌ\\°ãa¸Àèú¶.¼ìöyÃÔ¹œ%ÎoÍh×…<¢Æü6Ø¹ÿ5µÌU	€‚‡½0[õ$ß”¢Î™3‡sjçTO°´ô™û–jz17@\\Ì=lCîñ¦ã“;êBòYìË§jÄ¾b6Á¹iŠ˜—×¬ö’¸÷Ørg‡§D<bZ€«,†«~¼ò\"]ä¹Îµ€İMßãÂ¸Ü’ÏâZÑ°Æ€Î¦XX#¸¦\\¡xÊrg‡§D<rq<¬>äpS÷¸(.·t„ä³xU«*Î«XgY,x\\SeQ<e¿3¥é?²$¹;ÂÒª­¤(º²Û®RwêE,o	‡ÈE!}»]9fQÁÎqÅ^êt6¥soXÏàPœ.~é[Ó²C¼¸ë„$ü×	%ÊK¼9¼8Çk¼ÑLâÄ‹Ftœ&èøjL¼‚æÒ—ıĞÒ»k-#ßXG^öÌQEQ‡Œó0\ZÍÑ ƒê1vö›*Y‰ï~¬Åä)ºNª)}Tí¹£ãA©œí«Ş‹2…«q|rUkp^¦Æ÷H3 ô„®šÆ„dÖ=Ckíp(¨§¯eúÌÍ´³°ò\0wójˆÉGì­(r]Ù=b$¥ß[~¨ÍUVÍ†ÃC·ewÎ‚X2ºp\Z•áµöÅÃÚYXy€Óy5Ää#·Ï·ó@:$\Z¡›¤KB—McÊ2ï>iÜZihçbå¦×Ñà£z!È(3ë\\ÑBÍØtlmåî¬iK\r¹ÿÖL”gß2Õ}Ç´·£°ßwò=QA?=º5»¤ïäoÍ7õ‹’hÜÆ¼8SÿN÷\\kYU›—k‡ÖF9±eH~çò§wr:Q1Ì¬g)§Æ^ú“Ã\"©euv¸–ù]$F¬.Ü9ÊêÆæ*›PUÿdá¡uÏŞĞºÙŞêyAzx¨K¬*qb×ú˜¨+œØÛ‰ÉªÜJ‹İÁyU\rÙ\\Ô¦’çÕô­Ï€Êù€M™ yˆÊù4ÄäC*\'JÑÄ‹zÀM^¤?ŒÉÚ›ƒ	¦Wâ$dSgß0âé÷,uòÄ).·ÔªêÔß–n9T,wb@gS4wbÀ¦x’<Ä}\Zbò!/œ‘;J?²ÑIïvøboßí0bß»Ä±<~Ë-«:u:\rÓjTEoCXgY4bÀfO yˆF¶\Z¼42\0ÒÈyĞhİÂïIûšN“\n¾×t`ê5·Ï´ÉÒĞNQj0.á&\\CŒ÷Fıç1D;¡¤zyÜX©ü;/©‘—{ŞÜü?ıÛ¦ÿ\r\nendstream\r\nendobj\r\n5 0 obj\r\n<</Type/XObject/Subtype/Image/Width 119/Height 166/ColorSpace[/Indexed/DeviceRGB 4 <0000000000FFFF0000FFFF00FFFFFF>] /BitsPerComponent 4/Interpolate false/Filter/FlateDecode/Length 1536>>\r\nstream\r\nxœíšYnã0†©X° è	ø ûŸiDR©ÅK1u1“(æÇŸ¢¨ÅMCøõ…¿Gg,‚W-?1\Z~\n\0ºUYãsÈ…EíÇú³GuÇ^ŞãRßOX\\”¬6Çc7v#Ùe\"…‡yÌ*÷ Íá’……XŸÃ¯²a¹Š9&9ºGF0†\0e|ÅiMuËÆ!YˆåDÓûØ]ñ“Ö!Àä‡1Z ËÖÒŠN÷	‹D°C´7q¤YI\ZñÆR»lY¶ˆ£K£”­Å \rº¡RmØ˜\Z+ÊÁ‘\ZÅ ¤„=d)«‚€µÒ—èC—ŠfŠ7\ZQvcA-Ü?ÎE¿ì|3ÌXé•°lŸÆ”>=öcÑ²-»Cb9L8»T6LÙC-ì~h–ÚpÆJ 42˜F…{(ïcÌd°yŞIÒ°ËNõ7X®åıàecÉy)å–ËG×ÓD—Ñ$¤ÁæŠÔ3²­ÉèxI!µ”\Zôiš\"3¹v	Œ‚ØSı²#°Ëd?«syŸ\Z©ÎÃ	Ëwç¬7ÆM® ú/ï½º1gá\']Ÿ¸j¼rƒÆH\Zğ™çª² Øu:a‹ùOÃêtÁŞ¸Ì•/¹úÚßèg\ZsÍí,Ï\'µÑ²lAlZŞÃ	‹UÊè†º)Ai#ø¼Š¹ö3×ı\0¼Ò\\ø¼âÏ§Ÿv„õLpbáõl.¼hP2KEø{öçUØÿ)‹nbñ‚­prù«o5¨æºÇ&6uÍXèÉ^|Æ„ï²Û@ø¶n/Ü&ê®{;Ïk/|›µ·„uypÖ•|?`Ûî³6htµ*ÖmÎ®Ÿfi¸©;Ú¯\n[Äı„mv”æÛ[ÑK]S9OuÍc˜¹.uµpœ»uÕC™=Ó5cˆôÄ°ÙË­—ºiOñ}¦®cfaÊSîŠåÒÈü•.oÀ‰]Í29ev?¾¡²öåk…Í]èÆQ„[cÙjtÃœU±AÆNMÙœR$WjlØßMİşŠõˆÏX3w1üRWN{X×ÔÅ¯uÃœE_ßkÆ–!â}¼Ÿ‚wt½ìãh»¼ê:^­ÒÒw	×º>å­[&¯Ùò>è4/Ÿ§¬Oü‘Ûºİa¥\nçpÆºîÈ …ıEÌ¡½ NÌsİ‹¶»YÇcî¸\"ó¯£¬ëY]l§ìéa4\\±úÖ`Q¡svò;[”íâBwÆŞÉÕ˜ÕÏFYN¹xÌòd†õ9›Ö€ôó%=~nïL.ÙX¨X—„éóş¸¿i÷O¬q›^È5Ê9;²nËÖ9:bÑi]mÆ¬ë’\n¥İ¿Ü“õkM…rÅÒ¢³±²\0İ`‘ÈÎ8rÍ¬ÏlpÚ[Ëòá£,Ï·Y°We×ÊbÙwš–Í‡â54,4Ë†ádÎ,(VÖÑ&Y­,M¦´ÇhÒ‡J¸\'Yd½Ö¬SûFbõî©B‡Z¡ÔYĞ<¢e³¯œg}vS(½¨ÖğÌšã×Z}*[T°y)ã„\r°Ú3å\ZÑ~²‚:qœÈòÉ´}|âşråZC¸à:œ3tÈ§XØ¾¿ÎzpÉc£×7ÓaeÖ¾cEôøJG}ªØF¸í5%óÜXG§ÏöÑ9×`4ÓySAá,§\ZNÂêÇ>C„6³ºÌ–ÕJ]ï¹@ÿÅ·ßwë„Cáy¤GøhúşÒO|añèé»Ñ¿\ZÑ—V;a‰ˆ·Éb{oÄn‰%œıPt7ûÊº­h„7{%[ÍÒøÊ9à¯X´n0»%–^BËŠ}ùD±;F,‡,(_Í›=|eqÇ:ü­l44ı¥{’/QkÖ‰(u&u›òÌ–éc²§FHÙ(û`èYß/›‡†¥X|a¹ÃÓWrE#±qö¸62+IitËB=£ªøreDı•”Ñ}µ/„v	lfSW^±(p~UÏA±vAÍ«;ÒĞ£×¶îBG=)-Ë±ä=aéNõ-«Ìé›É½°ô½¤µí¾ã;úÕ£a—ÃşQÁ€İõoëöúÇ¨1cµ4\r\Zã¦\r8køíXs–ıåÉ„}rı±ìûØ’äµû\r\nendstream\r\nendobj\r\n6 0 obj\r\n<</Type/Font/Subtype/TrueType/Name/F1/BaseFont/Times#20New#20Roman,Bold/Encoding/WinAnsiEncoding/FontDescriptor 7 0 R/FirstChar 32/LastChar 86/Widths 69 0 R>>\r\nendobj\r\n7 0 obj\r\n<</Type/FontDescriptor/FontName/Times#20New#20Roman,Bold/Flags 32/ItalicAngle 0/Ascent 891/Descent -216/CapHeight 677/AvgWidth 427/MaxWidth 2558/FontWeight 700/XHeight 250/Leading 42/StemV 42/FontBBox[ -558 -216 2000 677] >>\r\nendobj\r\n8 0 obj\r\n<</Type/Font/Subtype/TrueType/Name/F2/BaseFont/Times#20New#20Roman/Encoding/WinAnsiEncoding/FontDescriptor 9 0 R/FirstChar 32/LastChar 245/Widths 70 0 R>>\r\nendobj\r\n9 0 obj\r\n<</Type/FontDescriptor/FontName/Times#20New#20Roman/Flags 32/ItalicAngle 0/Ascent 891/Descent -216/CapHeight 693/AvgWidth 401/MaxWidth 2568/FontWeight 400/XHeight 250/Leading 42/StemV 40/FontBBox[ -568 -216 2000 693] >>\r\nendobj\r\n10 0 obj\r\n<</Type/Font/Subtype/TrueType/Name/F3/BaseFont/Arial/Encoding/WinAnsiEncoding/FontDescriptor 11 0 R/FirstChar 32/LastChar 32/Widths 71 0 R>>\r\nendobj\r\n11 0 obj\r\n<</Type/FontDescriptor/FontName/Arial/Flags 32/ItalicAngle 0/Ascent 905/Descent -210/CapHeight 728/AvgWidth 441/MaxWidth 2665/FontWeight 400/XHeight 250/Leading 33/StemV 44/FontBBox[ -665 -210 2000 728] >>\r\nendobj\r\n12 0 obj\r\n<</Type/Font/Subtype/TrueType/Name/F4/BaseFont/ABCDEE+Verdana,Bold/Encoding/WinAnsiEncoding/FontDescriptor 13 0 R/FirstChar 32/LastChar 237/Widths 72 0 R>>\r\nendobj\r\n13 0 obj\r\n<</Type/FontDescriptor/FontName/ABCDEE+Verdana,Bold/Flags 32/ItalicAngle 0/Ascent 1005/Descent -207/CapHeight 765/AvgWidth 568/MaxWidth 2257/FontWeight 700/XHeight 250/StemV 56/FontBBox[ -550 -207 1707 765] /FontFile2 73 0 R>>\r\nendobj\r\n14 0 obj\r\n<</Type/Font/Subtype/TrueType/Name/F5/BaseFont/ABCDEE+Verdana/Encoding/WinAnsiEncoding/FontDescriptor 15 0 R/FirstChar 32/LastChar 233/Widths 74 0 R>>\r\nendobj\r\n15 0 obj\r\n<</Type/FontDescriptor/FontName/ABCDEE+Verdana/Flags 32/ItalicAngle 0/Ascent 1005/Descent -207/CapHeight 765/AvgWidth 508/MaxWidth 2006/FontWeight 400/XHeight 250/StemV 50/FontBBox[ -560 -207 1447 765] /FontFile2 75 0 R>>\r\nendobj\r\n16 0 obj\r\n<</Title(şÿ\0F\0A\0C\0U\0L\0D\0A\0D\0E\0 \0D\0E\0 \0A\0D\0M\0I\0N\0I\0S\0T\0R\0A\0Ç\0Ã\0O\0 \0E\0 \0N\0E\0G\0Ó\0C\0I\0O\0S\0 \0D\0E\0 \0S\0E\0R\0G\0I\0P\0E\0  \0 \0F\0A\0N\0E\0S\0E)/Author(CEHOP )/Creator(şÿ\0M\0i\0c\0r\0o\0s\0o\0f\0t\0®\0 \0O\0f\0f\0i\0c\0e\0 \0W\0o\0r\0d\0 \02\00\00\07)/CreationDate(D:20150410084418-03\'00\') /ModDate(D:20150410084418-03\'00\') /Producer(şÿ\0M\0i\0c\0r\0o\0s\0o\0f\0t\0®\0 \0O\0f\0f\0i\0c\0e\0 \0W\0o\0r\0d\0 \02\00\00\07)>>\r\nendobj\r\n23 0 obj\r\n<</Type/ObjStm/N 51/First 386/Filter/FlateDecode/Length 872>>\r\nstream\r\nxœ•VÛjã0}_è?ÌØºÚ‚RØİ¶lé…ö¡ìƒ›hÓĞÄ.®íßïQ¤¤¡+Ë	´ÑÅs4sfF£áŒrâ’#®ˆåœ¸&¦ñ‚x.‰—ØW$‰\\ãŸ„†¤!ÉJœd!IRÀŠ‚TM\ZXaH—øVRÉ¨0‚dN¥T$9(ŠŒ’$Zw”Äˆ,ˆ1\0$ì`dˆq•“,‰	À0eBÁAc¤ÜX\ZØ\0»ƒµL™’p4ÓV8¯ÈaÎ+€S8§dÚ1f¥.	|˜2s\rp\ZÜs¢á\nœVµ$üqLHkŒ8âÂñÆ¾Ìi8LÂ~í<Î~U%”a¿`0\nû%|ÈÜpî\\ªèü<9áœÆÙ$eÓW›Mºv3ë®Vvİ>Rş‡²Ñ‚„“¹¸8ûv„á§CÄéy:DÅ b¹ûÑÌ?b0Õdv°›(!wÆIï¢¸|¥Vœ)£ŞĞ)ˆ‰BT€L/£ŒŠ>F¸Ó©Ä‹&ë2Ó§L¦³<šæÊdoŒ÷ÀÉkUÿİ‰g·(HŸ¹S62Û&ø,°q°®LÒŞ7)ÒtU¯²dÒ°èMRÖ›525Ñ;>¤¬?kÄ±ÔÇÒG&ø,°qoQŠ\'éFï½bIºJô*KgM´b)ëÍ\Z•Îšh­RÖ›5{àP y~l }d‚Ï×ôX Óof´\0)“¤«{Nf\r¾ĞCÊz³F\'³†GkÍ²ş¬1ÇRH™à³ÀÆugCñ´zZÙh­VşnŸÌ½Ef ›ŠV´L´eaÅÎuvÖÅ“pk)÷à÷‰Í?øzå»×¸oOTÏyInBP nÚZ;nš.7+{_½ºÖ6ªZ[o¿ºŞvÅÇ@ÔÑÙ}°ïİ­ı ¾ÆYuÓÙìÁı\\ÕóÏÅ¢OÍ»güËVsÛú¹Ãìæ7õjYÛÉså,tßkœPuË¦ë¶[ş­0Ù®~7íËSÓ¼d—Íl³†MÛ·gk;gd—İW³¶9Xÿ|ÆïÁúrY­šÅÁÆdµœÛY¯b‹¶Zg×ËÅ¦µëÃfı†>Ş5ı{ï8ß—~\rœñÍShkBo^ığ‡—2<Wá!	%>ßPCm\nU#Üçp©¾fÈÙ·¨D\r\r\nendstream\r\nendobj\r\n69 0 obj\r\n[ 250 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 722 0 0 722 667 611 778 0 389 0 0 667 0 722 0 611 0 722 556 0 722 722] \r\nendobj\r\n70 0 obj\r\n[ 250 0 0 0 0 0 0 0 0 0 0 0 250 0 250 0 500 500 0 0 0 500 0 0 0 0 278 0 0 0 0 0 0 722 667 667 722 611 556 0 0 333 0 0 0 889 722 722 556 0 667 556 611 0 722 0 0 0 0 0 0 0 0 0 0 444 0 444 500 444 333 500 0 278 0 0 278 778 500 500 500 0 333 389 278 500 500 0 500 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 722 0 0 0 667 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 444 444 444 0 0 0 444 0 444 0 0 0 278 0 0 0 0 0 500 0 500] \r\nendobj\r\n71 0 obj\r\n[ 278] \r\nendobj\r\n72 0 obj\r\n[ 342 0 0 0 711 1272 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 776 762 0 0 0 0 0 0 0 0 0 0 0 0 0 733 0 782 0 682 0 0 0 0 0 0 0 0 0 0 0 0 668 699 588 699 664 0 0 712 342 0 0 342 1058 712 687 699 699 497 593 456 712 0 0 0 0 597 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 668 0 0 0 0 0 0 0 0 0 0 0 342] \r\nendobj\r\n73 0 obj\r\n<</Filter/FlateDecode/Length 14645/Length1 49600>>\r\nstream\r\nxœì}	xSUÚÿ{î’Ü›íŞ›µmÚ&i’niIhË24”d“J‹¶@¥H²IeQ`À¢TÁ‚:\" îèŒƒ2ßh**‹ŠÌ|ÎŒ£2ŠŒË¨8.¸n¸B“ï=7‚cû7ó8şÇçÉ{{9Ë{îyÏ¹ïrnîy\Z \0`Cà ¶ºnÔÈÈ·{Â\0Û«+FV×Œ€lö€{\Z+sdíø:m¹iæ—b¾bdİÄªÃ¾÷²1m`ãØúº³Ø¿–Œ`_,Yôj»€¼„õÍçVkXüéŠù\0ÖU\0üëÓçOkËÙgÄ¶‹ä¹úÅ‹İçzf\\ºóŸÍl›5yÍQÀ”lÖ´Emà\0û;¯\'Ïš·læS¿›°jbJkËü¥–W\\ÖĞxwëŒi-¯-{\r^k\nò—µbRk\\‡ù˜÷µÎ_¼tw£Û2\0¦õóLŸ6ëĞ|ìoÊ«m›?mi›¦@³\0ùw!¿ûÂiógœ}t÷4€[±ıëm-.…ƒ(O.­o[8£íµ_:\0ğK¼&+[^{ï7ãÿüÆTiÈàÄa\"ı~^İ×ôó‰ëüøMİ×ï®G^ˆ¶ô‘	(SÖ_d¼[½R±×Òv\'”eÀbKB0GÂóa\0Ã­cÁZ¿‰/ÅKúcŸìV8Èò0zcyc¸;@\r{2Qzíqun7àAŠ5™‘FxRĞ“{İ@n§uÜtş\0)¡G$ìC=Ù\nxŠÛÛh†+u…p-ü„¤)ƒM\nìı¡üÚM§yùC±´¦*öÉ/†¼Dûçà\\~lç„üœÄ×BÃ©º°çhëÉ<¦·—ÀvZÎ_ªòo§mØo±ıc0•½XwÇwûàşõ‰ÊôCyQ¦ÖD®ıï&oÿ§ûø9Õ‹ÿß2$)IIJR’’”¤$%)I?áúvËæÊìNB¬Öü< ¤.}\\e1>\\ã‘_oĞÈ\Z@ÀZ\'j4¢SİñL§“ÖŞ:êKˆD¨×’”¤ÿbJLo	Z-ZÖ×B¢A‡¨SQzD`ŒvSËE”@B”UT@A4ƒ9z,`A´‚\rÑ¦¢ìˆpDC\n¤ ¦B\Zb\Z8*¦Czô[È€ÄLÈDtÑ­¢<ÑoĞ[d!zÁ‹è?¢²³¿†ÈAÌ…\\Ä<ÈCÌ‡\0b\0ñ+(€ÄB(DìıƒP„XÅÑ/ÑQ,ÄR(Eìı@Yô(S±Ê+ q Dƒ£Ç`0A¿@ü…ŠCa(b%TF?‡C¦bT!‡áˆÕPıj`â‰8RÅ³à,ÄQ0*ú)Œ†Ñˆc`,âX‡8NÅ³áìè\'0Æ#ÖÂ9ˆçÀÄ	ˆCÔ!ÖC=âD˜ˆx.œ‡x4DBƒŠĞˆ8	&!N†)ˆS )ú4©x>œ8¦\"6C3â4¸ ú!\\ ât˜Ø-ˆ3`âL˜ı\0fA+b«Š³a6â˜ƒ8æFß‡y0q¾ŠÂ…ˆ`b´Eßƒ‹`!âBÁ\"ÄÅ°q	,‰¾ÃÅˆ—ÀRÄ¥*.ƒeˆËayôø%üq¬D\\©â¥p)b;´Gß†U°\nñ2¸ñrX¸ZÅèˆ†+à\nÄ+áJÄ5°q­ŠWÁUÑ· :×Á:Äõp5âÕp\râ5ˆoÂµp-â¯àWˆ×ÁuˆàzÄëß€°qlBÜ›o€-ˆ[àÆèëp£Š7ÁÍˆ7«xÜ‚x+Üı\'Ü¦âí°q«ŠwÀˆwÂ¯£¯Á¯á7ˆ¿Qñ.ø-âoUÜÛ¢‡àn¸ñ·Ãï§âÿÀÿD_…ßÃ½ˆ÷Â}ˆ÷A1¬btE_ûá~Äğ\0âğ âƒğâCˆ/ÃNØ‰¸v#î†=ˆ{àaÄ‡ÿÀ#ˆÂ£ˆ{á1ÄÇ`â>øCô%øƒŠ„?\"ş/<ø8ü	ñOˆ/ÂŸáÏˆ¿ >O şD|Š¾\0OÁÓˆO«¸ö#ş\rA|>Ïªx\0 >Ï!„ƒˆ‡ç£xªø¼ˆø¢Š/ÁKˆÿ€—£áexñxñUÁ!Ä×àµèsğOxñuß€7ßTñ-x+z\0ÃÛˆoÃ;ˆïÀ»ˆïªø¼}Ş‡÷?€?Tñ#øñ‰>Gá(âÇğ	â\'ğ)â§ğâgˆƒÏásÄcpñøñKø\nñ+Äığ5|ø\r|ƒø-G<\'¢OÃ	èFì†bDÅ(D=.°ˆzX–ãA£ï#Ú¸4€M|½FÃk°@ÃÒ×+\Z$çU>ét’í­#Mo	R¯$)IÿÅ”ŞêŒ:j»\ZĞ\Zûà…¸45_áL+Ój5Z4o-µ]½‰×ğª¹ÇsÅÙ¯\"j{«H’¶›¤Ÿ#%¤·z“8Ó‚`êƒ+Şvu1ÛâëA+`ÀpI£åU†x[ŒkÁõÖ‘Ğ[E‚ÔkIJÒ1%¤·É€¶‹AR”úàÅÓi=\r½âÈvÅŞ*¤¤í&éçH	é­Q1¢íjĞv•>¸tºÓiÃ÷Ø®(\nÔ¼Ej»&I#hT3ŒçŠ³Ë¤í&)IßC	é­Él× 3÷Á¥û\"ËH—ÍzĞÅ×‹:A‡f§SmW‡¤4*C¢¶«ë­\"AJÚn’~”ŞJ‰Ú®zK\\†8Û5Ñe³áL+Ó¡íêzlWVmWÔªñq4®E¯\"öõew\"”´İ$ı)!½•­ríöµÀ·G¢Ëfcü\Z—E\Zšõªíê‘Q«ša¼…ÇÙeÒv“”¤ï¡„ôV±+ Ñ`4Øûà2Æ½@’¿Ïv\r:\Zš\rô¯Ù€$è•¡Ûíõ5®¡·ŠéÇzOœ¤$ı””Şšfj»z0:úà2Å½@Rè#¯éL+3õF,0RÛµ\rF£¨Ts£q-z±¯—Ì‰PÒv“ôs¤„ôÖ’b­VĞƒ)¥.)ÎvÍô‘W:ÓÊŒh»X`¢û3¬&#µ]Qmo»q-zİ‚Ñ×KæDèÇÚã‘¤$ı””ŞZS­Ôv\r`JíƒK{ùk¡¼ò™Vf4L\'m×fBÒb¶“¶›¤$õM	é­Íi‹Ù®äìƒK–O§­ßc»&É@C³Dm×.™$IgĞ©æãZô*b_D¡¤í&éçH	é­=İ‚ \ZANïƒK‰Û¸a£_W)gZ™$%,éŞ*‡,I’Ş¨“iE¼íÆµèuë£œˆì}Ğµ·2IIú))!½ud8¨íš@ÎèƒË·qÃN¿®2Ÿie’l’OÚnŠŒ¤7Ål7>:\'m7IIê›ÒÛW\nÚ®ÎŠ«.Kœí:è×U–3­LVL\n(ÔvSYQ&½\Zªãm7®E¯\"öµ13JÚn’~”Ş:³œ Šz,Y}pÙl§Óiô‘×gl¡4[djŞº§9Ã‚d”\rê>-9ét²×mË}mîJ„~¬}ÑIJÒOI	ém†?t:ƒ6\\¸NúÈë8óÿ¸X¬ŠÍÎF÷EºlV«Õ¤Us£qvÙë¶e[o	Òµ/:IIú))!½uç¹A¯7ZÀÑ×¿¤N{ù›I—Í©pÆ6,›İbG³sĞ}‘Y»İ.[$u¯G|³Ë^·>öµA$ú±öV&)I?%%¤·|Oíæ÷Á•÷ò×Eÿ[NÚ™VfwXhhN¡¶ëMq8²URÍ=>:ÇY{Òv“”¤ï¡„ôÖôƒÑ(Ù!-ØWFÜ$/]6gÀ[9RÓìÔ¼ÓŒ\0Æœ´Ô´4³]I£ñÑ9®E¯[Ó‘½ú±öV&)I?%%¤·ùòÁdRR!s@\\÷ét.\r½8ã•RzF*5ïL€© 3##Ã–jÉ¤ñgÿ½nŸÊLDö>èÇÚŸ•¤$ı””ŞöÜdÙâÏà>¸|ŞÓé€,ğÁ¯”\\n§<2€\\ìq»İ§ÍC+â7kÅµ{ëÈ“€è}Q¯$)IÿÅ$\'Â\\*E±f€/ÔWNöé4®­ısæá÷x3¼hv>@àËòzS3>ZGãì²××¸¾Ddïƒ~¬÷ÄIJÒOI‰ê-Óó»V`iŠà3\'Ñœş1Â0pê*OıJm_ï’}qoŠ\0Ja\0”Ç×W×ŒyÀ˜±\0ãkÏ™PW?ñÜóÔßNlŠçš}:¹¸·®îC\nHèg>—æÔ_-É7¦üôCŒƒZ˜\0õ0åZËa+<\0oÀRı½;Å3\rZaŞ™<Ñ·¾÷˜ıGtmtMô7?ìDBƒê+ÊËô/-).\nö+,äçåædû}Ş,Û•™‘îLKMqØmV‹Y‘%“Ñ ×‰‚VÃs,C €„S†7t¥jNÇÓXØ“O;3fıòg0˜Ï`r~§QúwòßÉgÊŸkx„wx5½pŒx\'–0±†öB,ã°§F5-s¼5³Ã©Ã[š›±EµWv‡G|ìE½v—^7Ü;|†®°\0ºtzLê1…¼m]dÄP¢&˜5ƒºŒ…as Ìøkè9\'Z×Œ	o5^	k,§kvE÷­¯lv2e‰¥HX3<¬UûuÏ‡¦…a»«`_çú]2\\Ğ0´x[¦MÁ™›†2vë¯i­§óXCÏæVw˜Ã‹«àÄwM«»ÓK§£¦µÑ[­¾·‹Åá\rk<ûœa3~Ö„•@x$rŒ\\~ØÉvÖ¤ÌvÓlgç\Zwxë9\rñµŠ)(pg/ˆ«™S…CI	ÄÆÔ3-ÍshŸs¦Q9kæ¸;×ÍPe]¯Ê ²Ö´â™öÿâêì¬iñÖ´Lk©Š]}x8T¯~@ı¤u€8uÕ=E=XÃ©5ÍÕØd™Ğ0œ\næVíŒİöS%Í=%XPs²ÒM%…»§»Ã0¡Á‹¬fT@çô\nUy<[Õnæı²×İù„I³÷ÈGg–Lë)Ñøå/€&GxG4wvğºGt6wNÛ]u×-{;»ÆŒél«iÆ^k°Õ®èuÎğˆõa¹¹•Â¹§\Z0bBC¥Ó£4ÌÖÌª*–^ÎşêùÀY†ú\'jbC£ç©¦ë1û¤Š„Š[÷¸gÚèÍ¨85=Ã{’ÕÎu»BpfÂ«Îiˆåİpó~x?šiÍ¾“5¶‰´fÕÉšSÍ›½ØËª›²……ìS’l·Ô´\n{Õ3bõaËğÖÉ4ÆRŒ“¥)]\0-}HØÀtn oÂ³Ş°ó\rûœC\Zİ²‚€Ş½:ï˜s&5¸k:OiA¬¤g¤TPÕ½ÓZ;{L‰*=º‚ª./Y{NWˆ¬­›Ô°[F_½¶¾á~†0Ã›«\Z»|X×°Û®U-eN•Òœ›æ`UÀûA­rî¬Rk9µ@ÍOßE@-N–˜¾‹‰•ÉjR!„Äú÷Şõ¹Ş}Gqáíµ¼`ËBÿ /nP\\ûñ|\ZÏ§ğ|Ï¿âù<ï¹ÙçºÏ›nv»n¼9×uó§ëÓ-6×¶-©®¶ä»6oñ»6a:´…lAvé3²qCªëú\r×u<.Ø@hGS6èå2é×#ÁGØàÃvË»	e~¸¿nÿš‘¿rúŠmÿ‚ÈÇÜÇ÷ÑÚ£Lğ£ÊÆÄ=ßö<³ãş\\×ı;WpGåæp[¸íïüÛ‡}®·ğ¦ìø#„v}\0Ïµ÷sÀóÙv·ë™vÅµÏÇğ¼vot/#=J¢’®ûWÛ}D¾Û}7³îª\"WçUA×Uí¥®µ)®5x^Ù1ÊuE‡âZİ1ÈÕ—Y°}ëöğöO¶s¡;ˆ<Å=%4…ı¯xy{Šë²öÑ®Uøy)ö¸ÏÚöæö¶vV–<.»-ß¥Õx\\©)ù.õ¸,æ|WA¡”0åæIÙ9&Ÿ_ÊòšÜ)Óer¦gSRÓŒ6»Ãh¶X’¬F“AÔé\r\Z­`ÀEWDYZ%1!Í*\rbW±Œ•0Ú“ğÑ¦B0ó<Qœƒ—4Hp±T®ÚR61õUaÁÏºªpi`Ì.&„KcÂbíä†.B®iÄÒ0³oO}˜[‹ZTşÒä†]$•V_¡†Lí\"«®¸újç©Tcc #Ü2¦®!Ü–Ñ.¡‰_e4B\0iÑâE‹z¡.‘öŞ2¡ªë}‹iá÷½Õ]¼¯ğŞjÒÓ4ş\Z˜Ä‹ÊÅşâKÔòÅÿÒÚİ„ÆJ÷Eğè·21Œ\'n:¨ßøDßPñĞÉt¤%úÅ_ÔõM$¾•—`ş¥ğ¹ÆµäJ²ŠÔ“KÈ|²„Ì&!24\"®ÆÜ¸WeºŞ\'n’JL„/Qˆ?É Âó!Ï1•óV‘Ağ9£Î¬Ãó1ø;†#!&Ø‹Ç,<¶Ãô×˜H&É!ÉYp¯N¿Ï¾	º`7ò<m^wà\"IäbÒI62Ff$3	ùRÈpr39Îù@K.aÌd»‡#\Zb#>ØOÃËl8úÙ\n¯³…ÌX\ncá éOBì]l>ëb0waO\rêO¼°øaİ©a8 gpÿ¡ı*yâG Èõí*ÓOXEï…§æ£¶ĞÖÙ!;Ë2Œöo<âcç§ò?^$MÁ¦Ãİ‡!Ø]¬,.\"¬‡%x=f~¿È~äæÈ<²‘?püUÎ÷mxÍmì_8ƒÆª^³,äÕhñ¢,g$¶™mc‘¸g@+khÛµœ6(†D;8RŠ\'T–ÍÒ>¼êÁ†¼9¤Oµ{3t¤WFnà‡hr!}D¼³<Ñ(Éåú™»¢¯‡:DS¹àFà³­k®?Ç,3W‘ó-®ıæ/v-î·¬X¦¾Éí‰Ær§Ûé»%Õ^˜ç—J‹€Õi¦¦“ô|;NB­èL·èx?/=5˜\ZLŸš:53¥¦÷çØõn\rÑ¸C:¹Üí.Z§±Tˆbá:°»:,…	?˜slRp€,-=l¢‡Ùu´R8px}CHj’jıó¥fÿb[^{©¶©±¸¨) øgå´ŠWÉöå(¥™Ä¡äô#ø7 ¿¯|@©x±ÀæÈ$d€‰Ø¬vÒ?;Ç6”ğC\"‡?¼·-òr]á”/6åæŠŠ¡DşôŞ)_,ùÈÜÚ7Ÿï\\5»šÜ1w@Õùä÷÷|&G6‘¤ñ•‰Ùn«è×oÍôM·¿ÿ.Wy=¯L‘vş=~`ÿ`ÿˆgĞ@ákq0ı¡k£oˆ·ñGA8!T;BçJ£ñ&Éj2I\"«E‹&•ó?ÙÎ–u=)j%)ğd[*IM-~Ò’ê5˜˜†ÆšV˜ƒ©ß^»=w¯Á¤‘åé{ñ1r/à„«S{D[:¹G‚Á&¨T•(Xûl*.ZÃ÷¬Yù8±j¼YÙú—•–ØıÄ#Æçq–¼Y\Zœ®Ò’²ø4—úÎ«o½ıÁk¯¿É\ZN‹|Î\ZØ+O–|S?º¾~4=ù+N¦8Ã7Ÿ|şÙWüÜ·A´†ozrdìÖ¶¶;îhk‹4÷$¨Õ¥ ·ÎD«Ó¢Ç¾74AÃˆ¢N`ÈeX êXîr×”k*´c4ÕÚÉšzí|ÍÚK5iu€ë!öú6TFĞ‰„Ã\'Ñå8,O–Ã˜*êD^<ÏÀ®è?CfÔHŞƒ\0’€Áe |°I)m\nTë XI?p¢bŠ\'ƒqüJXÉsM¤iÜ½oß>…}Xı@¥8Nd 	WÇhşâÑ3šÌÈ¢Yİ/ÍŠ¬d²ÉÀÎ¤0r?pb>cïş€Z)Ş+~Ò†Ïò¥0)4xŒµ©·ÍfZlm†6ãB¯`1l„L9“iÎ¼/“ÉÌÔf\\/°…×kí—š$Ië_	»d´kì/Ù]\";bHm	‚G*i²é¢#ÔY4áıÔšˆ}R‰õß†Y4ªÿıH€(x7Ë‡Ë™Y~×ycŞÙ}1SõÀ¶	ë¶nø]Äêæ¯¼È7dò*÷ùåU…·[Ÿ~çúÁC\nÉó¶WTUğRò×5Í»«ŸñyÆ?Ú,³‘?iÇ¨îçF³™ÈÕLjjıVG¯yGo€w‹K¹*£\\Î…ôz§> gA4è$½,¦ë\\úl¶€ê‚úÁºÁúñâ(İr}‡Ø©ß(Ş »Yo-Ó5êÚ™vÓÑaºÉ\\Î¯2ÈåÑ±b«äš¹6ã(C\nszàX­Èjõ\"Ï´ÃC&0áˆ£ûvŠØäríƒFùË#&…:£JªªRáZ¢‰4¡ÇÉÃ˜è!;Ğ^<š#—G>Š|…çf²—Œ\'g“½ìÛİË˜5\'œünó!j5½ßëpÄ2®=F†Rëä™ÒMİ ÕŠ)PLeå \rT9÷…ÑPàqyB&UÛ.>è–u— z¢xÕÛ{äÔ­\r¨r¨7—ÿÎm\\7bXã+¿ş8²ŠYzÍÿ™45²¨ºpÈÂ©U^Ğğ{Øã-\rk˜A!‹‹ïê¬œlNá#U)>w#Ä$Ö4 Ä&”xYh‚AN“ä_Èãä)òÄÔÚ´yòÌ´vY¯È—I.©Ô5ÜµÈÅºlÂõ•Êx¥]aÅª½ŞÆJÖ6i“¬Lw¥[%Éã¦ƒÌíVÔ—±A¡“\nijB¿S\\tO„Úiú¢â¬{•x]æH¿ŠœÖšuOY‘ŸëgÎ‹\"sº\"—3{ëê§ßx\r\'VÔ:dmdÙí\Zs¢ŒÉê~?YRrûÒ»­AMÄõ?Fõ6¡4Â]§aY˜LÚùÉíá8Q1·‹,L=¾²»¥£<ø1‘`dU$Ègq]ÇÇs]Ä3wnôMn\'·\Zı|Ì”Rø‚Ô”Qü¨ôF¾1}.?[š›~±a^[¡‘|êrì9!£T“ãİÛìö\")êî)	–)×•Ëäæj;R.F…DÏİDg­„*Ê(\'UÃšVl8/8U5säåeUï­õ*e¾R7gS<ì„QÛÊ\ZR¡ê²ùçfXX½õ¥g´ÜÛ·ll|²À3ËH)Q\"7ÿ\Z›I6À[`µZ\n:íCÍ)?ßôË[\n³EMÓÈJ…HRŞ£OvÓo0·G?à‡â\nG†¨ùjHMÆyÒL©oOÕX7›dœ[X» ¬†G\\\Z‡¾CØ©	=˜:¬Ju<2 ğ9Z:ÉCq@æXøÑ*êèø¡‘W^9ÿšÙFZë~ÑóïD®¹ºt^qÎˆâk×3ÃĞïÏÍ®ÀuÑËU\"û#n¾Ó•Ñı´Iw7Şñ¼;q—c^ò±•âàÔbgˆ­áÆ\ncÅ±©ÕÎ1®É®¹®nS¶½…uWô…è˜LtádÃ9„~¢H&²ì¸Á WúˆÚ¬}¾ŒÀ.ƒOöµûX_0øòšóHÚjÍÃ¹8:5¾4•ª‘8Ğ¤Æá@Ì§ğYÙêj…j8†İØj¥9o±¸¼T1æóë?ŸÔxÁìó\']µèõ¥¶Á¼†ıêæÛ7TÏ÷eõ·—NÜ9bÔ¨×6İzxÌÈª’ÜÈ~s‘Ã±óÖ;ïvÙ¬¶ÈşÜ Ş¡IÑ7¸£x‡,à†¡¡ÜÑºÑiÉ¬;GÉºQÍrƒI&™›y»be:`O–sµğ°‡S¾Ê#ô>QÑ›ò¨ây³å´ìèãDçF¶4İ9gÿ—ugUÿqÚŒËªIkdKv½÷šk^Z|á’±g‘!Äpí¡ñcêòÚñ,&G6uİz×&?ÊIïÔ	îJŒ‘épa¨ÎÇt¥Ìİpf?N7Ü4VÄOÖMtÎÖÌ›­ÍÅÌ2q±i±ÕJ>MO7¤n3Ë ÈB0]X$ğ‚Àm1ØEÑŞd3I:éÎP]«4[v­UÑÔY÷ºA‘é~Å¯LË8ñ„°û…/Í]şÒêÈ½‘-d\"É#fbÜÄÎik½R w¬ŸŒü³¸€ác•ÔD>Œœ˜xÑÂy— nGŸcÆù·£}x‰Íb¢´Ù8\"…MÙF‚SR”ÒœÂÈúãnGLÊ/©yPiT÷xtŒÙ1› FRF×k6ŞÙlR¬ãjŠgF©Z›»æ=´Ÿ)¬^ãög¹½\'£ESû÷ƒÔ¿oEHïy)yøÛ@#kÜ\ZVŒD¸[¡ƒ¿ˆLR+6‹mèOú¿Ê&œ!Œ€rú c¦ıè\"d7}+Q 6>Æ¬^9#d¦¯}:z.Ä7óm<½Jì\Z±öÈk§}-3Î\rãìlº-=7e›ı·Îö‡œBö¦4Yq¸Î$n²Ê’dÊìpmwF1v˜¶#3Hùy_”_›ß–ÏÅ\\6NùÈÀc=sçó.Š:}±»I§ÏÓ]mq•Ü±ÈfÁlU5 %—ÊÙ´}Ö‚íEó¾à¡G#›µfeôğÂsÙô‡™â	‹|>O åÄanúŠQ¦7On}y·Ÿ)®[ˆå.8y×qtß×¥ç®Û~Ø]G‘Ô›N-êŸ¥/xBfÛQö 3–Ğûè¦|ØõÃhŞ8O$¦õ*’²²§úÖPãvØ©}óÙ‘G#¯âñ(©!Y$›‹Ôx½>·{Rÿşçø=9YwãÀâF¦\rà¤Ÿßdhd_÷Ëes§_™›—•Ÿ³vÖ”5y9>ÕÊí‘~(ÎõM•¡@5S-U»\'H,3¤Ë2¡=]tlVdƒ”yƒÆ®wZQğ,“Sì0ìöÄ‚ÎWå© b¥¢Ò8rj²NÅ‘˜ğC\'ÖœõPkó•#è´a yîıÈÕmË0ø&äÒ@²îğè³kóü‘>º#ÉÓ‘~³#ÉS&aõ£‘îh¬ƒC9ÔsOvÏu·ÉËİZêCÍu¢Äy†¥S¬ºÑSrz”ï8Ñòu¢\rwÏşÛªzÙYFÒçE#-ŒnäˆÓ4»äÄÁÓ~TÕ<ö%n˜¡b\'1´\0u1ìÀçn“$é%ú}Ö •´ânËÉ…JXÙ(	R½ÿb,ìKnÇÌ¬qWÓ¹»$<ÚRdf\r‚`Mé–¹éwÍNßç˜Š±f9ÎQ\\’K‚£RF—eúeÎ%^­‹†T	Wİn„Á\nz´\\.ƒ­ÅG(\Zd=ÿ¶YKEµ`V«5mcíÜÕiÊjOšV]*ëD.•KÚJˆ6¨.é/>ğÆ‚l,Ò*höMj´\"VÎCµ¡ÔŞ£½1•Æ¿ı}5ğf÷<å:Tnyä‰È§›ö8G«¸æœ93‡Ôç^UqãF\\é.}w˜«vÿìó.)k)o]³–´Üû|EÉµ¦9<Á~y~E´I¹÷\\zç‹¥‘Ãå5E¹ù6½Mößóˆ~À.åN*ĞñN‘ômzF/µÛô:ÉétàXMô«}È2ˆ`”;tÂ-fi)®üè`éZ‚~íTŠOzAa“?¶äS¼JÕåQN®ËKÙ¥ƒ.?ÿ¹ı7’VrNä>F2¬NŸlÎÔIÊö¿1Æch¸‹,Üàõæ¥è°ß;¢oğ\"7ıÕĞPN“¦k™l™gi×.·h/JÊ&TmU±cn‹.åĞkQ—¨êR.æµzÖ(Wœ<¸t#[Z~»hÏ_É½Õ2®¦_[Òºbìø0¯tœx‘ßŸ•åaÓQ’zÔ×E(‰‡&²ZÁ)„ÁBÀeåÂÂfá×ÂáOÂóÂÛ‚(¬eX+Ã°éÌXf¸v3C»œY¢ÕjÙ4#Ü@€–X†~ÉæÖ²Z­>È&6¨\'¥Á ı*O]ã7ÑoHš.Z³òqg\0]ğÛˆ‡[tü\r¦¶û	öD÷nfÂ»Ì¢}«{}4\Z[ókÖ3ePjo‡«_Ğ=Ä@ÿ’Ü~şÀ\0ähE÷¶Wåx9pud5P\Z\rÃ\"ò6Ïrƒ5ëQÈœİÀE÷=D‹9VUu×mêˆ ]9âãR—èP½npdë—_iÖ[#ëÈU§\"0ÎX,K? #3Ê¸ÛÒ™l‹—Ñ¢Œ;È¯ÀÒ1z\r3C/h´TNùµş@÷7ÆQôwêÉòò¿w0ã˜§¿ï`kÔã6ö6NÁcp¯Ç^‡OÖÿü¿ö®¬‰ìÛO\nIh‘2\"* e)	EQi²vI€HHb\Z¢H‰HQÀ°!¢kÃ‚ÂŠŠ(öXÖ® –İµ÷¬òîLŒ€ÿÿ¾ïıßî{ß·Ü/3¿{Î¹çsË™3“e<Vr)ÕX¹Nõ§fRoÒœh‹hGµƒ´‹µt—ïÿË¤ÿvIü?VŠş)ÿ”Ê?åŸò—”]ÿù®·ş¤àÎÏí1¡NÀİ;ÇD7$ã˜9Aq8&CzP<µ\0NÃ1àµ8¦Bz´!:´Çú„@héHêId$DˆNôÄ1² ÚcXĞuˆSpL†L‰ã0Lt\nQc2Ô—ÈÃ0ĞiÄ%8&C&ÄùFß)Õ#nÅ1²\"æaı]±ÇˆN2Á1ĞCÚ‹c4ƒ”‹c “TŠc-€á˜ğ3S!e§mÈŒLÆ±>±ˆã˜EPöcXõj†cà;UÃº€nHuÇ1°™j‡a=Ô6ê4{¨¦º5	Çd¦Š0l€é™†cTZŞCj1ÁRÕ>\ZcöTâµg†û\0º1õ2É5õ†ûbòpŒÊÿ†áş¨<ÍÇ@¦‡èœÒX8sJ³Á°96§KpŒÎ©zî,1ù0£ò>¶Fç”&Ä12£©}tÀä3qŒÊÏC1Mcœi\ZãLÓ°Ÿ¦a¿†¼†¼Æøëáã¿\rf\"p¥b™8JûŠ¥±”#ˆE°·P‡	¢cä28Œ/ãK•|c$_Êãˆ8°@s`¹”ÃãÇq¤±°8\n–Çğ5EKÅ\n	JæŠã$‘€/sìdºw(ñyhEºƒ]‘á°M§-.ä€\nqä@}<ìË‘ÊùÒÉbÇI€2>èX%Éa–ğ¥q¹œÏƒg\'`öøMô\\)V‘HÅ<WDp|Œ€£Ñœ\"®PÁMåb˜\'I„ ˆZ	€\0HñErG¸£o±H˜\0Ûla~Ül´ÑWU¢á-ÂÄyQ4,åËäRjŞAóN]˜6Ğ‹œ‡Î‹T\0zå‰ãEB1G³S`3Gm)_\nwÅ +pTÈ%\n9Ìã+\\>*ÃJº8#—KÜœâããã:†ŞÌ™“<A\"–r$1	Nh2\'(âCRˆq xÁP0¨G\n’ƒzW®Rô~Üê¼nTL¼!+“2I5¤¤#à¸Ú¤™€ò`(@\\ĞBÉÀ+\nh€!_€¤;r\0E\0roH\n…Z4¸•ƒVhÎh¿JÌ6ÇnÖ	09µ_¨NàÇ³Š4´_”¨=[ÕÀ¦i.8Ç:Úƒ\0ëß±‡–îİ,ñ!¨wpd¸w0ä4 Ğp€lzĞdÛE“C§¦ lŒÔÖÇc£‡ú%Ç¤\'cVÃ˜¯	à¬ÀÆIí«zL¢°ŞåØè u	Ö.på˜ ÍÆÚvŒ4ÜU{ãm¥\Z	f1ôÂÅ4\n0¿â±¾¸àØs¿ê:*Ëş(°¹áa²bpäa|	à¨=@½çá}	p\r\\\\;¢ë¤«ß(_ˆ!ĞÊœÑùŸİÙSOV‰ºişócôU;Ó\rhRl•È1»¹«ºgßÕ½w·ËCcPOÔ¾È±ş:öª_í+Pâ1ÏÅØšïÙSõ8s¾S>6¯bü¨öJ &Á0f­ó†ß©•bûä_ÍP6r°œ@‰ÇŠ#6¢ß®zG|Ÿ9œ€yù(\Z\0µÃôıø&è1¾z@J •Pt“ƒõ$ÃvŒó®{Ì{|…>\0-§+?kÙ•\Z\0BĞ\"ªGn(î£¬õ\nIø—u³ŠlIAö û’]É,ò(²y<™İMCÄw£ûxÔ:ÔºsĞ,şv‰@lß\0Æ¿<Ô®€~ùÎ9Iš@„övõ7¨°ÿÀÒÂ¿YEB³t²Æ}úK`Îà*Brä\"Ğä•0Ô7,$FY\0û.Ñ7ÇÎv,pmè¹…FBç™\0…b®¢cGcL×²D=«køyš«AdRi	i))ÔˆPÔ\nX–Ø\'(@ÆH9˜9®\r××/\nêüm¢~3U¿)m»ô€ôú*±DÕo< !]D›¢5ŒN\"šjA‡¢3ŒB TnD¹$™€ØkPÌJ-RÌ O¬„€$Ã.|lã@2PCÙø¤GÊËæ;çEİ7NÜõãAüÜØ•!Q‘g!*R`	‰H uËzß	mŸ¶î|mGks`Š„1±¥&’u¬|Å’)šjÂ6\\[˜Áf»uIJˆ™Z¸Oé*c b‰òIF&_ùab±öVÈcÄR<±è§¸!,&øÎ@˜Súé3˜ êˆào\n’€PB1\"Ng!½Ñ\nÍHç,älrĞBG‰T#jŸ\'ñ:ÓùaƒjÃL5ù<>.ˆ¡™`¨¯7¢\"X!úH hA$¡è:D\0U%,¼6½Â½ÕyãVË`—±ñµm–Å§ıæ¾¼äÿèJöñØÀ°ÙïVİ+t²Á?Ò0¨J7 *YÑèW³}=ôäàaoJ~×dyÉÛºuöªıı~Z1ÎrU}…“Õñq‰â›},<²ÙìÆ\ZÛwQfû—¡›2Ö¶ÜËMVµL+IM[œ[şfşÆ¬Í¡‹û\rÍnD>@^ïNµx¥N.doqtşPé¸[gáìåó¢ÖÉôÓw¿9ñ>b˜Ã=o“é×ÿEõ¸Ğp“†¨		Ûwfœ‰±^š)ÒÚãrtuMX”×ªàºaIÃEic(—Š/K\'ŠÒ¡MµwÃÑÏ6¦¶\"©#0œæƒÉzˆ…–®–•DBRKQ*œº\ZI-L1˜zQòR -4!ÉxoPnûù\rÒ¿~½©zAG¡¥™½/øÀ}vwÒµÑˆ@h\'k!$pBÌQÜ—l\\gŞ „$Sw¿¾u\"xõ„ÑGs_!º(»ı&aºÆÖ!¡+bAÙ®¤qCŞ4\n–—N\Z*·ST¤.ÌŸ=>÷Ôäà$½4ñ-Ñ÷Ô¹ŒºOáuÇÖ×DŠ_qGo\r½(8³úªÙ~İõıõó¯ß²Øi»ğåóÍ²ËšØ¹^Es±â.gîôùîãkíå™5_îAÕÎo?&¶:j=µ-Xák3·Šµ¬™ªvzL}MŠwlÔÖêªê\\çsoH‰óß_nö¹»àË½{;¾|¸{U¿Br-ïAÈ>Vi¢Ã¯ÛÎº³İˆëSçÊú0»¬|J5ûú¬ì‰i¦Ãß{•¨ôJg.­°¯ÚğÓù²[ğ¾#HÿÅ°±¾İ¡°wŞÍ3y6‚Œ£’ûo·”5¤øH•tcæƒ31Â…X,ì¥¹´@œùw5\ZpØ Æ¸1™Î“2¼³Š¤.ú_±M[8`é’ƒBBÃ:ÄIßÿ·±§Éjó“n\r-Î\nÕ¾bîµgò(Ö[ÙrÕß\n¡ğ›f*ºgƒyuÍGŸœÂ+°LhyğìéHÉ/×AÓü·=Ÿñêò}ÁTSÙ“\n³r½íèŞd\'‹¢é¢Óe&lÿÄ–CeŠÌşO2\n‡T$QnºÂb§=¨rÕ¤eØãËgûN‰ø¦0\'#İöË»±ö¿-ıD¹°¾¾ /].éşÅ/z>.í×÷lÌõÓYøáúøS_)¥æñƒf¹œ0›¾7”4~LuËÄÌ\"JÊæÔÁ7R¯µñ©e¨¿êjøXCäé¯?e&Î81Šq­ÒMPò”iM{ÚrÅø`óõO6õÁcÏ\'$õ}Ï±çë.fÍÓ’À\\33/}âî¬ƒ§Ví‘çbÓgŞİõ`#SS°¸a>ˆl‚ôMéyÛF,É^ˆÂ.q+qIß¦s¥Â.·é’XJuÂnÈœ|ÃÁÂs$$ ÃBì‰¸#¬:BL·ÿî}?¦/ÕĞ$ï²¡°ècCZTf¤ÿúKo±ò†oÙşS>­Ö|ç]Šò¹HnÁ¾E­Ò‡_êİ~w—M€éçV}wõá’G6ÙÕç÷-xñ:ÒyJŠê©Áu)é‰ağ³Fıì£Cô8ŠÏ¢µÔÆ†aSLôÙå³>ßj\'o\'n¼Ñš»±ºæèœÆÌ‡ö¢ó¯ƒìÌŞX(¤ï>•qmİóuôÚ‡ë“]x”&P™ˆìÎ¯¬4µ8*^q{öæ£ãcw}î•÷`¯SÙüxvôhjÉ ‰»rìŸ¦•VG3t/\ZoœyGÆ”ºZ´Ÿ±=ipÖÜ|ÛÉ!lAhğ–gÇ(BGé€×oÅY¤¤ö•¸¾NÎ\Z¢Ï:}«£ÁİU!µĞà²Ş·ı,\'Í.í\Zƒş\\ÇW„8;»¡¡‡\rªC®!ˆãËäœ8ÉŸÍuî¸‰ÚvŸñ7×äLCÀˆğÚÖ2ãƒöÌjÃ°3‹~s,#Ïfßr^³ehÚÁcã/%k}z©8¼ôôÖ«»’¨yC£í«z¹ø@ı‹íŸ\r7éN¶²uº0êf$y€òç8^Ü¸ˆÛ¯›¬_t:ånr Ñ-ÿ}m1-Ò\"fLıÍZå4§…û“+#§Î1ã¶§$z¾¸JÄ—S§›v#İÍ^q–şÄ‚­¨ü²N(šßülÄ²Ââ¹ô™v!&³g1‹//\nf5-Æoi“SšAèŞ–ŸMs„/¯1útŞàúbú;•RæzjåüÒºY”gZåéÃ«>åOMóN›´8_TniP\'^ëÛ<çQòÜXu¼QlÀˆX÷qhÿ?²Š6~gÑ‡€ı‚F ?\nYxÀ¹l|ú²CkŸìğğö=uéßÙÀ˜HÖ³ĞÂ±ÛX_ÈûÛL¨[\ZÕC€ÊêÍ8–Zİ;w‡J gKür^Ê\"jFjk9´ïŸ¾Øì9{yÕÆHİ¦ì}.µíØr¶jÏ„Ä4AR,©ÔÊÿ¹°2.Ñj¿ÿ/iosz¦.q=ú4é±dºßú¼Ëu\r¹µ÷ØÕ\'>;»‹y5ãÀyî	×K&(›<VWÌ¼QYi‘ıní1ş¸Õ6CÖÎZÒËã´^@õ…‹ÜCÊgOjB?f›?Èzs‹Úb40›—Â¥Ş¬&ú:-ğÏ<ØN¼Éo×t‹$_Q¡%Ò«[wÇ†“ğºßÚŞYD³Œ”“Ìı¿:îU³-«éQ”[Î;«‚µuåñÜ¯IGïô¨í @åu¤G”|õ{Z_zÔ- 1Š²!š˜,F\rWWhI­ø+Ò£¡È`uÕBä+ ÎG‡ûÁ~áÁînŞ,¦ƒ+‹åíÀög3ƒ‘AjŸÌ¾õÉ!u\nçKÑíÿ6¼­LÕ}L&Ì¿¹òùšÏw2.µÑ—=Ùîfc¨üZ¦,´[1¦y[¤€øk~RĞâÛÉs_* ÛÕ¾Â6ñ¹¯†]JÌkÈï·nÃÉƒ-“\Z9÷‹µC”#ó/Èİu#ËíFİË·¦ÿ#¦ù\roÙšGÇ\r[6NûãÚÒ-¯\Z‚2t(éSZUßôœY‡§ÛÚ{^øésÑó¾µ¬œ‘^®‘Æ}âWz´Bå+îOw+ZÍµ0Nø@ødÛ°•9™ô¤ĞOñÖÔ\";	i¿õ«›N–Z?8™!õ-Ák\\‘F›´ïËãŒ±Ú®Ÿ†oK\n,MHfN¶¥ÿü¾Ù³xä3Ítêk@°Y™y„èñôVşÁ…ş½ZÏ¿KZ×~é›L©Çˆñ?É”ä2	—óÉ”:4É{Ößä”Ú¢ôbÇ÷/gF³}0å@=¤Jê7í¤õdÃê­c¯g|É9ÿ³Òr€Õ‡÷ÎUğ&˜ºíp+´Ö\rßb“½_wŸÜÈ¦ªBqÏNûşÒ»E#«œ\rSŸ4šß9È»ê¸äsÿÆÁ»®d<â×W-Şı¦ş¹P9ÿWñ—xÇŠµÙ«Ì4-éƒX7—&q–›ÛÚû£»ï¢¬MW5†Ø»xüîíMØéé¾¹6v@ƒOÎ‚ò·9ÓmïÎI^ŞGY9«Íxèv±!×Çf’û¥£V¬ËûÁÌ?2vÙù¼ H-èÜ\'d”_ğİş™5ï\r^5šŞµ±¨œğ&¾yÈƒjíTÃ;îı*ò\Z±\n‰’šñ7Ş²}s#ùõQWIê)ôê„O›6‰¡§ù\rôûµ¦Ë #šÜ> jt6$3ÀRŸ—úÊõ‘ş®OE]×ÿ^[¥¿}êj$J£‰cYbŸb÷çßİÚ0$ÅúO¼—w‰Ldš{_Gº„·æDéã»;ÚÚIÄ÷©1Ì›×§æoi¹^L/XbĞ°âìfŸ]Y¶3\"™ªìÀÆ•6ºŞA“^x7úÌÇÃy³Ò‚NzÌ›	G÷‰LãmÄ¤qKÅFA[Ó”uñòi×YÏÎéGÌ¬;9.~ô@E©îÎ[[ËC‹\\¶[\n,kÌ÷¼á¥Óî„çïf•í)\r±Ş˜HÍJu÷Ù+Ö`£ÁùÅ[w¶w¯Å²sìy/?©íÕºeYĞ|í¡WœÒs©UxÉ‚–ß]YÓo&{/÷{Lü!ºÆKeÑÔ›àA± °\n×ÿÁjÔ6 ¸pËmaßÅHŞ†)…§Ú*noèç˜;ÑrÂ˜\r*¢%¢\"ø:K†Š¨H´¿|9v½D~sá¦âË±d:b¢¹u¿>ø%€>;9ZŒ^àŠŠ ,pye0‡»8Oé¶Gíu;´ÎàÑ£±6_ñêıÜÍ„‡]âºD>;uõÌ“9Äñ¿˜åÎ5äyÔ÷àå^œ÷&ÑfWØ!éÛİ\\iÚ÷ny×™\r;e\'ºº)ùÓÖ¹&×nL›Îøùã®Êıî¥E¬ÓˆM¾Í×/Œ3ô´d•ö›gŸŞÔ^¾Ó\\¬øQ‹\r}]}­«wÛÄÔÓ.ıÀ\\¼H¯÷¯ÎŠ½mËMM¸‡†\rIù0©¬íub_·Ãåç_¨lŞ\nß{…çŸ|—Çv¾{xê\0bXB¿«ı«“\\Í£¦6l\\QÁh¥–±(ÌŸA{ «Û”Õ÷¢Ïº•¢?í‰4\ZñáÖ³¼¥Ao/gŞİ§„C—XQºÀ©.Æ¤ÌâŠƒñ¼uAåcôµU©¬+	»I4¯úyô_3¨ú(\r\nendstream\r\nendobj\r\n74 0 obj\r\n[ 352 0 0 0 0 1076 0 0 0 0 0 0 364 454 364 0 636 636 636 636 636 636 0 636 636 636 454 0 0 0 0 0 0 684 0 0 771 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 601 623 521 623 596 352 623 0 274 0 0 274 973 633 607 623 0 427 521 394 633 592 0 592 0 525 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 596] \r\nendobj\r\n75 0 obj\r\n<</Filter/FlateDecode/Length 18811/Length1 61144>>\r\nstream\r\nxœì}y|TÕİ÷ï®sg½3“Y’I&3“ÉB2I’IB 0—,0š #	‰@‘íZEp_ëR­Zk5„ˆ±R·º+ÚÚV«â†ÚG„Vj-Ìû;gfBxóX?}ß?^ïî÷{¶{î9¿ï9¿s\'É\0\0$:jg5LÑ¬üi-Àç87L©­›¹Ü~€7»1Wæ”M³4¦*¼Ş‰×c§Ìj­ş(ûÓ\\¼~¯¯›Ö2«~ÿ\r+Nè~À=Ö4+X²bæ	€ùÓ;f×No[õ·\rË\0LX^8´`Yg÷COç<°ëd\\°z•wÚÏ\'±\0;úñú¦s»Ï[vÏ+Ëš¶aqvßy+»Á	Z¼_F˜Ï[ºöÜ	7^¥¸z@É‹º–­¿¾›`Ãö®|iÑÂÎ®·.Z¸ëZŠùËa„œ\'mÄë{ğ:{Ñ²Uk^\Zíºë®®<áŠ¤.i2À‹˜ÎL]º|AgãÑö£\0O‡\04İË:×t‹%¶!Ïë½ sÙÂ[w­Åö¿t@;½{ùÊUÑ&XƒíSHz÷Š…İR÷Q_‰}ÈÒ×‚áeoÇÀ=óäª@:v\râ‹kóÉùùŸÿİÉË®Õ_+-ÂK-°–“ôƒ3…˜~¡şZZÓpì 1Ü£0ÈKš!³ñ®:¼/‹©,oavbª$Ü\"”b•9±3w\'¬aï“€Õ‹<\'ğ<ËßbTïÙ¤‡IÕÓgy½€ğ™˜9Ø/Hzæ!/0w4>\"$O\nŒoûZìàr?÷ ÜŸh t\\ßö3¸–û9ÜŒçr-8àrÁÁ8ğ|÷á1Çâi·à±¹Ÿ3s¾­Na\r¸a±\0û¶|Cy~ó¿çùwÀ¿‹øS°—Àb</åŸ†%Ø/µ$LÒÙx8‘Ãiƒ½‚ó¿\rKH9Ï-¡å/àò`\"¦íâ÷ÃZ÷~¨¢çDşcíÅöı§êú®¬ûÿõ=U¨P¡BÅÿÏàe˜ŒŒÑ&ô4cŒÌ€‚œâŞS	@Z¢Dv’ZŒF“Ñ˜a„>€>‹Şl„‹E¯,IòÔœÿé­©P¡âÛÀ\0C\0øZŠ‚Rt÷B:de”0²ÈF0FPä&ddd3eX­`‚HA¶ÙNÙd\'8£\'!R‘ÓÀ…ì‚tätÊ=np#gB&²¼È^Ê>ğEÿY…ì?r6ä ç@.r.ò×yÈ£`r>ä#@\09€üO(„Bä\"(B.†bä ŒF\rc¢_ÁÊ%P‚\\\n¥È!!—AyôPN¹*ÇÂXäJ¨Dã£Ça<T!WÁä	”\'ÂDä0„£_âNnò$ÊÕP\\5ÈµPı;ÔÁdäÉ0y\nåz¨Gn€†èß`*LEn„iÈÓ`:òtÊgÁYÑcĞMÈ3 ¹f\"ÏD>\n³`r´ ·B+òløò -ú´Qn‡vä90ùl˜‹<\"ÑÏqCø8yÌCî€äN˜ıo˜Oy,@î‚.ä…°ù\\8/úW8!/¢¼#/%ÈçÃùÑÏp¶yåàäå°¹º£ŸÂ…°yå•°y¬Bş1ü8ú	¬†ÕÈÁ\Zä5”×ÂZäu°.zÖÃzä\rğ_ÈÿEùb¸y#lŒ~›`òOà§È?…K/¡|)\\\Zı6ÃfäËà2ä-°y+åËáòè‡°\r¶!_W _	W!_Û‘·#\0;`òNØ‰|5\\|\r\\‹|-òûp\\‡|=\\|Ü€|#Ü„|Ü=7S¾nE¾•òmpòÏàöè{p;å;àNä;)ßw!ÿî¾wÃ=È÷PşÜ‹|/åûà¾è;p?üù—”€_!ÿŠòƒğ`ô/ğkxù!xùaèAî¡¼vEß†^èEŞ\r}È}ğò#°yò[ğ(<ŠÜ{‘÷Â>ä}ğòcÈ†ı°ùqxù7ğòp\0ù\0ü6ú\'ø-å\'áIä§àiä§áägÿÏÂ³È¿ƒß!?Ï!?/ ¿\0/Fß„á%ä—(¿/#¿¯\"¿\n¯Eÿ\0¯Q>‘_‡×‘ß€7ˆâAùMø#ò)ÿ	ş„ügx+ú¼o#¿\rAşåwàäwáİèëğB>Dù}ø\0ùÊÂ‡Ñƒğ|Œü1F>Ÿ BùSø4ú\Z|Ÿ!ÿşù¿)Ÿ##ÑWáøù(C>CşüùïÈ¯À—ğ%òq8üø\nù+ø\'ò?‘_†¯ákäÁ¿OÀIä“p*úœ‚äD¤…(2à<\nÜ~­^\'€Ó9\'p ¡ \'>)Ñÿ1h“,\"\'‡åµ^ä‘E’äiÍ1Q…\n§¡ÃMÏó§µËü0íÆµ§ù_´‹Qç\Zª]=)ŠÚÕˆX,‰5#5GÕ®\nßzƒ>®]C,\"©v¥a’M®]ñLí\n¨]Í÷Ğîˆ‰*T¨8\rƒÑ€ÚÄ¡·D»9%Ñ®.I-’$J/Å´KŠ\n\ZA\"ÚM¢Eé›Qß1Q…\n§a4\ZAÈ~7®]Tİ0íÆ×Mí0íê“ÔBóghÅ¬jW…Šÿ{0É&Ô®ˆ\Z•cD»Z\nrŠkW7L²Iµ«Õh%AKµk$EEIÔJ¨÷$ZQÉr*T$l–‰v5ñfŒiWGANñus¸v“}’¯ÕJZm\\»²VÓ.Š?™G”g2‡\\…\nI`¶˜É\'<¨ÑøÜˆ\Zñ›ÚÕ½ÊJ®]NÒéDùHHIQQ«Ñ}‹vG”§ª]*¾#,VjWƒ¬5+æ°ŸÀ‹;¸†a’5%©E§×êu¢j×¢×éA£ÕèQüÿ¶v“9ä*T¨HkŠ5®İ”X„FÒ$Õîdå$µèQ»ú¸v­¤(n€IÉ´;¢<UíªPñ‘bK!Ÿã¢Æl±\\1Á@ANqí‡IÖœ¤½AgĞkäã\\ÑJŠJ:h7É\";¢<\r#%ªP¡â4ljWB:bD»F\nrŠk×4L»I~U®3âÚM1¢vµ:ÉˆâO&Ôå9â¯´¨P¡â4ìN;Ñ.®ÎX„¤“†i7¾nš†-·Ö$µz£Qc¤Úµ‘¢Zı·jwDyªÚU¡â;Â‘ê\0IÒ¢FScD»&\nrŠkW¶Ü¦$©ÅhÒ›Œ’‰j×n2šP»ZŠ?Ù\";¢<“½S¡BE8ÓœD»ú¡_å&Ú•)È)®]ó°å6™vM&ƒÉ×®CFÙëZÅŸL»#Ê3Ù‹0*T$Aª+5®İøŸj\"¿xZ»qŸ×<L²¶$µ˜d£l’dª]\')ª3Æ´›d‘Uµ«BÅéîtĞéô¸>Æÿ„—Î 9Å×M\\tí‰Î$µ˜-&‹Yg!?¾¬qYÌ0˜ô3J>‰PÍ#5\'Ù‹0*T$Ûã&Ú5Ò_Å\'Ğõ`¥ §øºiz\r=´/>«lµè¬ôw2HQƒ¬·¢ø“­£#Ê3Ù‹0*T$7Ëz½5–‹0È°QS\\{aÙ,=I-)6‹-Eo£ÚõØRl`²m)èg\'j²ıò’9ä*T¨H_¶¢İø_$ÚµSS\\»ÎaÚÍHR‹Ín±Ûvª]¯İf\'Úµ£ø“iwDyÚGJT¡BÅiäŒÊ£QFŠE-FH¥ §¸öÒ†¶ÃC¾õp8Sœ£“ü•.Ûép‚9Ev:p¹N²È:¾u\ZÉr*T$AAQÈ²5V‹SdH§ §¸öÜä{âğ\'©%Íåp¥É.ò‘!?=ÍV‡%=\r%ŸD¨ißŒ:d¹\n*’ ¸¤Ìf«şµn‹İn\nrŠû°a’ÍKRK†;ÕnvSí¹3Ü`KµºQüÉÖÑå©~_…\nß%å%`µÚpC[‹°:­à¥ §øBYÃ$[¤–LË“iõ×Êòo¦ì.›72O¿Ï°¼#5Çû}ŸC…Š\ZÊÇ•CJŠÙq±[š\r²(È)îàæ“lq’Z¼YYŞ”,ªİ²,_83ìY(şd/¶¼#5\'ëû>‡\n?4Œ›8l6\':²cv—r(È)¾n\ZÚŒIR‹?;3ÛoË¦Ú›ãÏ†´LgŠ?Ù\"›l¿<„œïı *TüÀPS_©©.ÜĞÖÇ\"R3S!@ANqíáZJ”›¤–Qş‚Q©äG+¬“\nòÀíwŒBÉ\'ê¨‘šøŞ¢BÅÍàre¢¯Ú‹HÏJ‡Ñä÷aK‡\\j€p’ZŠ‚yÁ\"W|<koÁ›—,„Âd/¶Š¾u\Z£¿ïs¨PñCÃ¬öYàvûrÚc™¹™PFAN¹±ÈJ\0%Qbr’ZJBĞwˆ¼VNm.+	?à+ƒîuá7ó&ó¹‡Pö}ŸC…Š\Zæ.˜^ovÀ‚X„¯Àã(È)ş†\n×Ú)‰g%©¥¢rte…·’j·}ÜØJÈ=®Ê“­£#5gÜH‰*T¨8®¥]à÷çá†vi,\"»(\nrŠ;¸µ\0Ó%Z’ÔR514±Ê?‘|v›Ş0¡¼ğxŸl­\Z©9Ê÷}*~€`ãßmn„âé/<gX–ä9˜È‘/ ‹ÿIÙl›İáLWzFü,²‡}(<:É}kë&O©o˜\nÓ\0šf4Ïœ­³ÔÖgC$Iæî‘àª‘9ùÛÀÃıÈ¹àÅYÅ8ƒI8•M‡ó`16j5¬up\'ü\Zúà³hÈG`9¸SîE,_\'æ[\n+ÎÌıp„ğßŸ£[¾û7Î+öÖ–Šò’`qQanÇ–bµ\rÏz{¸œ:¿sÑ6oİ\"ï6mGmQaãÌ¶ºÚtŸ¯½¨Ğ‹ÑµŞ¦Ã[×3yõ¢Ômu$C5ĞÃæÔ‘cIrEüµ>ŸSRN§ôG\\9,É»¸Géì+¼»\nl»²ßó;†.WçÜ¶®ïµ°1‹ZÚH›ÈÑ±ÈÛÃciJéo\"I[Ôì¯ÅRIã1Z[Ó¶Åw ½ÇŠçºK g\næ˜²î£tn[]êb/¹Ü¶m‹·çÎæ¶á©>Âííí©gtÃdÿämÛ&û½“·ulëìnšï÷šıÛv56në®ëğöÀŒ¶ã÷]‘Ş3ùÊösÇ\"f>2yÉ3ÛÂé>Öâó‘ç½¢_ùxÑ³©¹-ví…ùé½ í=lI9H±·’”M‰”¡â~Ú×5m\\:‹7Îò76ÏióÖmëˆ7836vµ‹…ê]~fkó.…Ù:kNÛ^3ZáÖ–¶^–ak:ªÛwecZÛ^/\Z\neI,‰$^rvG/+Ñüé{€M4•§ôzA?4NJÄ1° ŸÅ™q,Æñ±8…ÆàÃ°5-mÃ[i;À^h‰P2{óKÊÍ½Ş^¥wFowï¦Ş;{{z_ë=Ô«;Ğ{¬—E[Sºq¦–{jy¶g6ÛÔ:¯•]ŞÂÜÑòpÛ<ËÉÏœåàgÍ´óSfò“*ø)\r%|=\re•|U¸„ŸÀOûøš°›¯Ïä\'á¡à.+áKJ»øÒ²_jáCe™ük¡C¡c!®?úÅî¾œúòşè¡İ}f?¿PŒ}Z¹¼ÏUÏ¯Ş}ÙnlÖ±İ»iJt·6»|·­¿|k\nß½´{\r+ßöŞí¬ò3GZ¹r›#½\\¹Ñ‰¡œéå—mNñÈ—Ê›åíòy§çRÏvÏàöM›7mİqõÎÍ;·ìÜ*+?ÕšËå¬r¡ÖP./c¼Ï1Şß1ág>ËzŸQaa>óÍóY¥óÎNV>›)²YøB[°Uò¶>ßfç=¶LŞç­á½¶*şyWïJŸÂ§»ªx—­„·c¾l®Õæâ-xtÛÅ6©¦\\6x@dŒO5zO6zt\Z=Z<„ışñF··ÑÃîkô0{\Z=ğh£ç©\'<(ğ<®ÌŞïóìÛëó<ºÇçyò©§Oø­qÿã¿1ìİ÷˜aÏ£ıóşMûYeï¦½¬¼\'¼§iÏÆ=¼¼\'ˆÁå|bÏ«{¢{$¶‚7Yœ»8–e€!0ıL”é±6BcKuO\nƒçYÕ»´%Æ®™Õ›¯ºÊİsZnÏ&w{¿„yP§=Ìöö©qV<ûÜeåª•+IĞÃÕõˆu‹:{DíJra\"&œ-Lu=2	ËşÚ\0Óc«[ÔcÃĞ7*Y™@`e<1v#Jğãd÷$mY…ˆ™¢M8&ä7ğîòËñÑO¢ï®ì\Zlç®£¿|p<€y^šì÷Ã“ô¼\Zzá\0¼xÆBğ¸î…—à-8:wÜ¿‚3òí¤±÷À/á!Ø\rûà)ŒÛ\nWcì/àÁaù–ÃØ·âºõ“ø©É§XkÁg``2+™íàÂ¯æÂJ¸.Ãv=ÇLÃ¸	7cÉÚw\rÆî…ç’,^`6.øKàØ…9~Kã\n0¶º0–ÄÅp!®Ÿ—Ã]p<†íZ‡-»\ZnIRßOXëƒUğ1–|¹}Ÿè>Ø,ÚÈ/lI¯ò‘Ø/vDßìŠş=„ùìqöçìÕğ0»ı–,½ô‹P9<ÙYô\0ğ¾üÎË”ÆŒöY|–$sØ$ÀIr†MäûYÆÄá½HéN%•CkÖ´\n’¬e Â¶•p¡?úNŸÙÌ¶bàó>Y¦}F#\rü©O¯%):­–m•À\nÁµ¡E |¤43šáü\\Š¿¬”å\\d¼ùÒKÂÁ“Ïó\'‚oàl|?wãEmI®bgE‘Ó0²VÑ²\\!)œ/Ô”F‚G°ºªÒ`U¬:òã—îÇC´\r<ÎÖ;®~(i„# ·jyP\n·)+´’¨Ó¦Š.¹,UrêRS®|)W—Ÿšëšl¬—•²ÙÆ6y‘)e­guÎÚÀê1|NskâXó4kY™3Ifoš’Æ¦¥iNÑ5k0€ƒq8FL¢lVÌ¬9£@&^QVY–âÃG#ÖÊÊX(ëÈ‘p8và³D›èÏÊ-•—–8r¿vø5Êõg‰v›£´¤|x˜[õxï}¿é}d»ûÔñ_pv3¹ ‘\'kï:·­íÜ®vşÚ¡PèĞ[o½wè­¿8Ä¾	Cï`ÓÿàÖ­¿şõ–-ƒÎx\0Û~íàv6ŒZâ LÉu1L€-ƒJ¶êÙVhg»ĞpŸÁû±Ülí”uábŒ”Á|¼$HGËøSØğàákbÜ²;ˆ\'~3;†Ó²‡±N¯bcªe\\öe¡	š„y0|Y!ÄŞ\0ì¬ÀWæã´;ÙnvÌ#¤ì\0Òç´=Ş=ìlF‚\"¦?ú©¢#ÖdÂË ÅÁE‹÷[J™ÏÅÜ,\\}Ÿß!E+ğÃ/•¬r¦R2Œ·O\reÖ1\rúZC£µ1µ6Ó`oĞ²¾N\'÷G¿Fƒ®nÅÀ©>ƒï!R}€)µWòˆİC*I‚ÛsäO›.‘¢é<)—Nõ“î±’BJ‰f¢Ñ@Ê‰7e›¿BÁ#2Âö“\'ˆ0fÖçe-f«ÏkeÊËËB¹y¹dØ5\"y§ƒ>¿ãäà×ƒÇÿy‚Ñ2†şËŸ––í_;ïœõÙYilßÚ®s6°Ÿ\r.¼œÙÀlc®bÖn<õHóÛ·Ütè¬égÕ4õ‹í·½>ë¬™gaÇ2Ã*áMTÊ>%ÍHÂDÙh&b¢Ì“1\Z«[Ñã8¥T’0Y\rœ‰«g$Ùâ±°ë‘Y6˜è³›ŒƒØjò²an9×ÍqœL\"Xú¢\'ıÁ9Hp¤/İ¤O¸LRŠÉÄÂ™F™ÔÀKR¤{©²$	–¢ˆJÂ¥Ab,±DÚŒÅWVR^Q^^QjññU§ŞbÊ_ïÌ).ãoeFßÄŞj·¥MŸtâI´¨»ğ™¯á>h@iáéğ°\'Zœİ’m/Œ5–™Âîpf¥§Q¨7Ö™šÜM™\ry\\„gkg[æ¥“É˜ç—¹„ëZæÛ—gv³«,]36fæàC}ÚGÚÎ+CBäÛÁŠ¤`ÆhY‘EY¡¥ğ!IÍLÖOMaYÏTFò°RÂ\n%ÒÕi$]ò9¤ÓÒit˜ƒt]\Z©Éá ·p8¼·gÉY,;úfŸù+ì)B´{°ç¬•´ÓpÒ!}9f4Án+\']VF\'¯J‰ÛEŒü÷ñWŸ2/~ãìÛo¾üìß/ÔM9²üc†ä-n<ÿ£œïàœ¾ö}oo\\u‰RıºÜ;·^[=qMÃâgZ°ïCõmÀ>\0(mz½téíÁ|}n0¿ªJ_f“\nNÕ×Ùj²j‚³™v¡]ß\Z\\¢?7¸¤j~upUÙú*Wh\\í8vü8ì{¦ÈRÄåOõhÇ°²ÑcdFËT­ÎŸè+?é«ÒW~_5À\n˜R…Hú¦\"³Ø‘Èé 9³IN‡+Î‡Îç¢¶g övgX{Â¬á–‰æÃóá@Àâ¬4cÿƒÁXGÆ&ğ°•ÎèÁÊÊ­Ãë5œ·óÊJ©H+†Ä‹ë^É0!Çº™H™”±;¼iôÄ©5/®İplºÜzøüğöÂâ¢Ò¢¢MSçL¾é‘âüÀü‰óŞœGzÙ½5õS¾hôöåÀOÏ;÷ğäšñşƒc§ä.i±8Óã¼wãºòf—ËV;ñ ü¨ÂÑ[ÏŞ°7Õ$•â|8­~7®ø:02!e±DU®¥ÌPf)KTñZÊe–²ÄÙk)3”YÊ¼ÑfÌ6†ŒµÆn£hH%½h0Ö£õDÖØÀdg”F¢ÓpœÖ5éXœ½=2«1àÌr¼zıÑ/ÉÆ{uZ£Ø$28Í¤è‰µ3:’…I¸Ùç”¼#‹1,rb.™`D–N¶©Ã&[j\r\"m–LL%4€Ër)T*#d]Æ!\rªJp±Æye‹y€?`\"Ã½bÆoñã,Ã”ZJ}†ßıÎ\nö`ÿ;ƒ`îŒ0wæêO­`ïè ëÖc¨€ÍØßğ¼Òê£}•EY\'¹¤€4A*³Lp4Jµ–9RKşidp»]\rd1Qr¸…äÌñMÍ3YYçÁÓ™¦Š:o–¤ÇÁÈò6¹7q¼RÉSºä)İ&Ò9n:qºm	‹·‹O\'#hó×­šî(”=…¬öÖ@ÌĞ-•1;§=s$<mçÁ@d€¬ìœl™o·r´l‹Ïî³$Œ›ß<­ºşw—¬ûà,ÓÌ¿,™²9TXT]?·íîñÜ¦I9¾µ{¦Íhcş¼è7“&7–f¿jUXÓ4}‰7×“j`£®âùüPÅCØ—èEó×c_ŠpÁ^àğÉ¨]öÇ8åTÊ©93:6›©g\ZÙ6v-ZŒ=âëN8V’%´}:`Yúi<q<pä­•Ä,•A:øG¶`ÈóÆOşúsŞd_>ÕÃäÿ~Ò$d=LüîuÑwùÛ„/!\rFAsÖ^ÈEc6¢æôÇÙ‰€?È\"w+	BöÒ¬P^¨´Ö>)«6¯®t†ıì´9és<-Yóí…óÆ´”¶TtHóMó­óÓ:üy«M«­ë/³ºEö—¹÷Ù\\‡.Èsî)f¶¬Ó¹#î\"#n6 ı¸¼Â¤¤@PgÌO¤æ“Ô<Òmù>päzãöğ³J¹ÒSÉzéàåIi¯ÏH\Zë$š2\ZKhJ	upJ|âcÍ_¡½ ”7æ£„áÉR\Z¼ğHÜ£±:+#5-mJf{áå…l~a	WÌ–ûëü³ı]ş›sE—×Ïåº-$¥v4´˜ÚlàÏÊF/¸¢,áìøÊ„ó%—ğƒÑÊœåå)ÔşòÄ¸gÌß6øÆG|ç%kV2¶?¼Çè.^wåuG~±éâ»šgæ\\Q½`š§yu°;2gÙ¾×<ÌÜñÛ(œxjÃóãEå¦÷zóŸª«zØ¦ó7®9·~q¾u\\Jõö•s—uäf¹É–p.½0ú!õ-³ îSBŸÆçóU9U²âi9Ó5Åmü<g$ufz7³>G¶¸K\Zlù\r6ÑWq™E{æÚ¥‹­] uQÿ2H=MsÌ¿Œ\rL!íşBÚı…>õ\']<Éáºa,ñ\"é0+¦ãJºà©€X+‰|m¬FäOk×ZS2é] šµjRr5Qßüö9g~±747[ç^2é“¶È=s¯olkg\nÿ´´¿®uîÊØàÒğÎûÊ•¢¥Õgİ9™á¸ê§Ÿì^±AoxBNg´Ÿš°ÿ’˜ÌššYƒ\'ï¹u¨(¯ïîykŠ<ö‚Qö|²#ƒÔ€û^²ÌQÌlVg’ŠDÈã¢·J\\ıªª¸³Œr)NÉ¥lÃQ§0î“w“—\0,ù-áœ/4¸Úı^1“ÅW*ÊŠ–,I_SML4¤×W“ĞT±NÃjµ:‰İ‚·³a\rZ·…gx› ˆÄ•\Z–é²Øè2İÖ)ºn§ÓêDY\'0¸…60¸òq‚²¡ªa,Á-“à&é„€P.LZ……ÂzA#téqşEW\rg!\'™ƒ\"UáÊJ²…&ÏÁe(ràÀØI:@×# “ÏÏù8œšRF8çk6\\ó<›ÉHO`îìZÃ¾=ƒ}ñöE/ö…	ÜğÅ^im°.fyGHâœ!´\Z²õQRèŞÇ:òp Ò-Nôƒ¡]Oƒşè_ézMí4‡xê°Ê#{‚ıhŞI­ÔI§§Mc\"UiÈæÔ†·bî¿F\"uáõ´.\r©”t&şÖGê$=t`–fÒ-RÂ$®\"	+ˆY¶èÇ-@	ÚŠÑ0¨ı\n½»®=÷äËƒ[™Uo1LûM¼ºnmÛ³ÛöíÛñ‡öåËÙO^Üsvx¬p0\\1oğé7>VW’wò’‚Ê)Ÿâú@úî+ì;³I9o¶ËÊuËÙn¹Ğ¡ÛÈvs…n¾U;[7GÏuq«¸ãÈëXN+²ÀòÔ½ççS7‰Ú¯ç©å\0oækù¡Ñk9;E§ç–î>ñåúeäå­‘ôkƒL::¤óçÑ2Ä¦\n:6ÔK­<•\rujaI6yL3Lœ ‘	ÔèP	tO!P/Ià©—–¢1ÿûÃö×Ä°}6ãÃºX:Ö®\nWY+ã/Œp™èñKx6ÒÁŞ.‰´£&È\0¯€È\nÜÛãZL<0†ñ	_=;8õàÂ½Œ	÷·›˜;u#·øÄ\0ÚıSÜ´úEè}¹ù5¥Ì+{!3î*¸É–¼š„:ŞŸ¦³ûù€•´¸råvSsæÜÂÅ¦÷ò¢õºu¶n÷úB+š0Ú¢XX‹Å+eôG_Pœ¤š¦&##5ìåÇL’t¸¦nÙWÒ{Yòè\ZÿÇ`Sô$¹ŒÚ›P›ğ„I@¡›:Ön=ˆtÄ­q=V,tÄ©ëØû\n\Z ûkrúÔLìZ-ÙRs¸ºL.ó”…Ë¸âX»ØÖbº$EŠ%R¤˜ÚF1u2‹ÓõÄòjÈıõÔ›ÖK¤Œ>ƒÜ[o a‘ÜXï 7ÑÓİ–^Gn¥§s-)…¼9tzè‡ì.V	à¢5–à¦•øbG¨\Z°ûˆ-`Ä)ˆ\0™ûÊÄ¸JÜƒòìŠ¤›+Î\"Æßš¯ÀıXZë¨àº™7¾¾lá¹Læ=E£º\'LİÓ©«xmáê‡•põc³?«mîZuÑ‚{.²L°:=ÏİºñgEE^É­´¤:Íy9OÈÙyÁâk–º™\nÁ–âìlíèœNÖš½hi;E¤€—©SòCl™<Ş>Ú[ËÖÉvÅû#ëyÖÒúƒI+:«-¼ÉTD^²%Ş©Ønìp—ı8]–l‰P¶ôá/ õÅá¸¢§`Šşç}t°Åì©ÆÓ‘ß™åÉ\ng±¦t­D·q±M^lH§\0-È÷‹4Œì2ôGß¥o1ğAl\n0ĞÌ2;cà+bÍIIiİöGî!w6lõüÓc1?Ã\Zè€£»XóT»\rYáÉˆZcNŸÆ{¶³©fÊçÎÛ^gèÙßÔ»üÙŸ¼ôÚ™÷×ÏXÙpÛ.¶âÊCÓššŠrC¢mà÷“f\r¾6xø¹W§ŒØ”ñ2Îé‹£Ÿp_òŞS¦Éş&?`²LìÔqL™iœ£,µiÒÕšš“RÛ™VÓbf¡i³Ò”b6ÛÂŞçs…9­ì§ó¹Ÿ¾ÌC¼ÿßMôÿ»ÊLÚíWùTPNê·ÅWG*gb$¨D´ºØx>ÕJt$¨à´ô=™öÿ´÷`Mek»»¥’ĞB@¤%D¤EéEAP¬(UˆRb*Šƒ  Šcù-c¯3ÃèØ±ÎØ{ïíèÌèØQá®µv£rş3÷ŞÿóÜç·¬|{íU¿ò®o}ko9@=K9u.&ö„ø§¿§ãíàr1Ëİèà	ƒgíêñ!‚ŒBeä‹!k‡VMHLÃışÌŞÑÓ,s[¿e;¶¬\nà`mç§ˆOH¸>á]»x‰N¸túèG±u€è}1Ğûh½Ş\')İÃ%2‡®ÒTI‡ifS-àˆpBÈwçS8Û±ÃLhe\n‡Ï>ìáô¸ØòhtQêU¿UéŠà,@€r‘Jb‘Ìô€øDÙá CÂ˜EÛ€!RÇa/0‰×¢³½=É…äÂFra£M6{{»Né{d£ÙhÑe£ºlnb#»õAZçÜ!è™äµŒ3è~B7WB¡\ra™0šŠnî½¡ğğÃŞ±1[rú7$77§Œ‰_²¡anÚªŠ¸^x.l¼Ù+%Íİ¿÷¶¨q‘\\?zèT<Dªáí¿QÙT&Æœp¦ÒÓƒòáÉ¨0^¸c4•ÌKvÈK³ÎË¶ÃëÈÇÃœ,\"¬).c¢ø\r—ËŠ²\0ØàŒ.g¤úv@$›õ-Q;èKò í$˜Ôè*!Ìp¶pvrr&è`¢ÃO8â$õ0ûâö\"$’‚IA„¤ B\\!!®‹P\r;ÕIM8L3˜Æ\Zšÿt\\Ãr;\0…Û;@kÀw)&„¶\"²Ö¯\'Töû#‘]‚fdj~—›\r=X¢ûCw÷yùWÛğÙsçm2\'ìÈe²A¾\'¼ºà~¸5°”º×/:ÏY±qÀš#ELGÀñg;0CĞ)	Rk	rÙV¡VÃ¨(kŒËd<6Á8>PxÄ$.bW@¯®ô:ŒV`\\¤€\\­À!ÆWò!|h2|)ì‹êğ°Í÷‡}ó¡Á Ç/‚íğa@EÂ‡mñ§Ø™*®B¡h3Ò€“(~Ø¦ˆj£€à\\6Ö0(ä*t\r¤O´lI‘™S¾Ge	¡ÛÔ\\]}pgTAgÆåˆiKŞw\'÷,q?tÁœ\rõµX7€ŠúêŠÉğZ¥_„edg…o7Y\'Ù2¥sßdÙ <‹1Ğf8^ÌnSÅPK….‘³µ—Ò‘è^„4z9©{•Öp,WIòü»[³,˜8ÓÙMdÀ ‘DF\'M$$2€“È\0NPÒŠ\'Á˜b„L™$Ÿ£’ÂI¥ |x}Uø ñú ÷A\"õ±#K#ñ‹‘=ˆ°\'1D%wØ›­b¤bt’\"Fu!\rÒ:¹qÉ5£{ÿÄ£7W(PjD&wæüqäïS¤\nù©t:İËkÓÍüçgáêêØwá\0\\qİ\Zœ31¬İÉ5Ê…\'-H_]­»§kµ³İ+\nö÷ö,;ã¬¯Î¤Ä§zzÉŞ_$r\\:>Ø¼?\nêÅzÃ\'2®ÁHŞB¶`ñ1é­Kx4ı^)„‹‚)Eé—\ZºnRá%\"‚eğÎŒG_úu	Õ¢	¦€µ”BH±Ğ:OQúr{ÁöC\0G-„ ™»šƒsfA—]é‹ô\"›BZ¢?sGfL!¹Q…³ñìjYÜ4ÄëÏĞô[7ƒ+Æ0 1œ4òC\0ÑvcŒ¶Ñ|³îÑ°xÏç7h´Q@ŒÇh¦ÿp`°$<Nxş¼ys3Cüó[w*ÅµA2\Z×ÿº#ôœÆœ&1§ß8\r£D¤áõK•!(”‹X‡¡”Àq6œú,½Ñ^òPõ[I5O	hÎàFÎà¨<nànD;œ‚•¡Ø·\"¢úÀÄÄ“Oø•G77ƒ)ƒÙïÀ0–-À$âîŒ¥¦A‚2¤‰ƒóÚÀ*š`™¨ßkƒú½6hİkÃ«Éò#¥eV\\¦`Ê@&~Ö3«Ÿ)SÑ37ÒÛÒÍÒ;F\Zã±­3k«;îîÔÉmÛÃË…êÄÀl¥îä\'óSú¥ù©ıÿ\\\n~HÓ!çıS€‹‘<â06€„‚Œ	F†\n9èeÓ²b\"\ZW’\nZÉñ;×Á¡¢B=„Šhhhh¯ƒÖ	;+Ò\08(\Z¸?Kï£°!gT°i@¼CÛ@´+á¸N4&	\Z“I‚Æ$Ac’ 1IĞ˜$ƒr:À;RNTØÁ`­-u0®Áf°	zWOJ>ìÛ!ÇI L‚€¬XnDm©Ö\ZraXŞ÷iàÏ‚oÒ„GE…·)Àşš>Âühİ7n­Á–Zhr¯Ö4ì£ÔšeÛÌ³¶Íìº$•¤h²çÂÍÍı×çi–zjšGl_OT%Ô{ùø¦FØF8¶UIu^>>)aïwSYU‰éÙ}³ûŞ:LÛ5Ø˜\r>XiIZÛXWX“»‡%Ågà<öÿî.‚–%Aï¥QTê¤>ö^i‹l\n-Ø(À…¹è½Vİfınâ6T éÈ%ÂP€.6ÊnÈ\nfŠÄÙbBğ‘oF{k´oFûilMÂ3( n#ûàg„+ªîÿ ƒ‡šàÁ )lhCÈk°ıÌëE~¯‰Ï¦ÂùÀ˜[OqîPšÖÔĞf‘ØnHrÏo¡ğšó¶ì&ªzNöèìmÔÕônâ5H‰‹Ùâ=”’0~ È*Ì&™#ˆ±J¶a[Dq(ë(ÒÌÜ`æq™ÄeNÅhq¢…ö<Ííí”z9¼7Ä;nÓF¬óf{ûUd®p»gØx·\Zo•9tàÃÎÂÎÉ.Ê®Ì¡EG„b \"$…œ:$%’ŒÈ‰¤ÈDî9ZLt’LŸ*#§Œ‰6Lèz¡Ø|½¤(~\nŸ´NÜÁöïÓ¨ñ½<`®.ôî#MŞô¢Fêî?|¬{€Û>~ˆ‹÷7oÁÚïæÏ]Gøëê~ÁÃq!¸\"t?ë^9wîÊÙ+—`DJ—O}$wæ}•î\n\"ÔZ!&­{H3E…¢/ØUf†hÃQÉäpÍ?:.ş,,EË­È‚ôÑ(½PNLé\rp0öˆî[æó¹tZ?KÑo#˜§LÃRæ5,ÕjĞ\"c|Jª)>Õa€ê¿P\rçÓU¯ø›òûMOlnNŞ9üèı_Îè½*9­<qñ\"¼áN¯¤Ş^:_Æ›Š¨¾ºSºGGÇ…¶Mv“œ×û¤8[\"ìŒÒ\nã	xRiÎ±\0¨mfÁà°aØTvC\\Æ¬”Vj+Âœ…ÉBŒd!F²oXˆ‘,Äb$KÂ10’ctô\\70’ù\'DQ)7ÈE™!…¸ˆ7tHªÁ²CÂ†š\0!}\néúÙòAjÌ:§vé·\"¹¹Y½n€Ü×—üÊŒÓ3âıïTÖêÉàHiû¯ä%jˆ×+û1	½5agïÁéì¦à„»õà¤¸\radÙd8gôQ”1Šm²¥ù\n«±Œj¡VZé¥õùoàÕI&{ÍÁ¿¶çb|±7åHNpÁ]”P‡]\\<\"é£İÀş0’ä8ó!ˆD@vx#Şy#®y#şz#Îz#@ñ¶F@%F‘	1:„#¤{³Ö-hÆ7Øß›åo@E>\\Œ¸°E¾=æ,f¡UJocÆåê¥’‹–(+½MëµÁ´^+=‘i5êcıCƒ«ƒ,a,¦gIôëƒP\0şC^€ï£	Ä\0PÆˆ	HĞ=\n-Òï¨\Zö‚ÁAèŞƒÈwù(Øh‹ÎéÁE^j»Vu*ÎlÀÕüªiÅ^5Á³Ç…vëÚ4\"ÿDŒYÂÉ¼ÂFŸÎC‚j|&ÆÇã=üæz.:5-³‡‹‹˜#æ{Î++‘»	NLíëêjc.6sLL‚ÙşÑÆX‚Ùc‡”}Ì†ƒä\nX‘<®ÃŞŞ6Šä¤vªîDğ±iØ<¡\0™ˆ\0	R€´^€Ä,@{¶@bÆfÁ\n†t…èX…Qô6e0–ÑLX(Â€Ú€‡˜ôZÆ²E§c\rGQŒv hUdÑçõôË6tì6ÆM„èÅš*¢-x¼|İÆêêf|’®Š-¶é™êŸocfÆm?F¤/Á»ëö,Ñ‘ıó|¼Üí9€;?‚•ºÀ¼—ÒŠË´ce‘ÃšÃö`˜ál+â£=Ê§ÕçUkÕe\':üñ™EèW?‹u«2)-íMñé(íCı‹ ×G.NÃ>ÙFßZ˜5ˆ…mXƒØPh`£&Ø\n¯€±\'Û~\ZSÿx¹ş\0jh!×{PÁz1~0ê×<ôÕ†_šûÌôÄ¦äæªä´K§‰m“úVúøz¥„‘= ÖF\0D¯rabûw`Ìö6€FpóFréMİk:E±õ›<2í\r	˜zPŞÌ.T(3Jd2½¡%£7#›Á`Jàó’ ½0O²+B&añd>–`c¢‚ÄIÁ&pƒpçÆ„˜cØpl,FaÓÙlœ$-É²‚¤Hôbn-\0DX\r³ @€¹gÑ/ÈÁWÀ,Ëğ|S*Ç©j]ø.]Ôq| TîİJ*ëıd²Î6Ìv˜-{¿ÃÛÛ‘~qàÆj.Z¦ptÏµÇ­H+–=Ç“ôd…caxD1ƒXaœ³,!c¨f+™ÓÓl Ş—ÈèË\ZÈéË-Ã³I#›UÆÆuµ 0v!c§JöxB\r¤.1ãš±$L—€ŠAáh“\ZKU0	&ƒ4Î$x8`—¢Ì‡\\\0‡˜`ğÓy<¾zªä\råQL‚Â)©T­9Ğ‘,|…#ËG!´Õ¿L˜EŸ\\Ã7Éÿõ¬rv…œ‚¬\nÄ©	ç¶ï\Z¾Y—öÃÃ¯ëñ&]áGÈtñ5mWA×YÀ¸øÆÁ\n·’ôÙÔHHY³»‘Áì$2–=˜ìÃÎfW“j¶‹EF2ÁÄÙ›$X,Šà4r¸QÜ¡Ü2n5—AL2ƒoıİ\r\0â ¡Ç¼uv†/½YãÎäİ÷c‰©mÉÂ6\r±t*¼¸şıáövú$9è¿>·Á¦·aw+¹8‹Äî¸O0ü•ÜNògæ4ŒÄÜ”6ñx&6…Qid6z!œÄé·ş1øá×HàÆş×&æ4İ—ø(ô›2Nú+›/Ü÷£+×â_á_®Äb2•S§£Àµ¹›UÄj4½ØVèÚøéÅ™ñ×.³_¸‹Ì•<;ŞYşH‹ñãáèÚ)*±TZñ¬[=¶eSokm{GÜ\\/Å/í\"ÿÒ•ö|üûúûúûúûúûúûúŸ¹0ôxHƒ°½ƒ	0·ö“ iÒí—A:ådZˆY´RA{6æÒ“ íJºaıÛ[A:\0äx‚20‚4ä<ÃbAÎ?@*%ã@­GX\"è+¤°µDÔN\"xÚ€¥ò°Ş(MGµÒQ­tó¤ƒ\0ò3P~_ÌBw¤DÓ~ër.c@ÉÒ´Ñ1ˆNhÒtB½Ââ@ƒ°x0‹Aàé}&!:ĞY¨ı,P¦¤ñ(Mh	Ò$D§\Zşó\'üß¡À_V‚c,pGÓ «õ4	rKô4eR†™c†ïÙ`šä³°0#ÍÁøØR=ÍÃS°&=ÍÇ:ãoà7¦P$èËœpE4Ğ\"ÑL”hÊOE4ÑCÍ-åez\ZÇøÄ9=M`|²DO“X>™¨§)“2LL×ÓL“|6ÊHs0²IOóˆùä=ÍÇú0smf2~.s¢ÍMòùf@´\0yÑ–€1ï\"ÚÊ¤¼5š#MÛ˜äÛ¡º¯mú¢ÛìdRÆÉ„vƒåY$¢ı-„4ÛdÌl“öÍMòÍõã_+UÈäriOU¦¬¼l˜V\Z]¦Q—ir´ª²Ri÷âbiºª°H[.M/(/ĞŒ*È÷Ï,Ğäç”æHUåÒ©V““_P’£!-&Õ˜4T¨)«PÃì¼²uN©ª Üßø°›¡‘ô‚ÂŠâ\r¼/=JƒıeR/c9ï9ZĞêhitF[ PV!-É©”V”€ÎÀ\0†••j¥9åRu¦D¥ÕäKs+Ñ0bû¦tO5èF­)Ë¯ÈÓJU¥ÒÑEª¼\"“ºàSUšW\\‘ªjË¤ùªru1è §4ÔRy TA©Ö_jè»¬´¸Rê¥ò–”äÂJš*5îpD¨x¾ª´Pª)(×jTyÃ&½ƒêÆ¶ÂĞ\0¼T mA	‡FzÍ/]Z\\–cÚ)s=ÒL·tÒ\n­ºB+Í/¥Ê+€eŠ\nŠÕŸL¨H«Uw=z´‰İş@TÚJuY¡&G]T\0»(Àzae˜@DVŒ•b•à.«ÄyXúb‚àçÃóL>KÁ¶)äå“_“?’»È=àgùù=¶“ğağ+C¥XOL…åreX9øêJ±hÔš\Z¥9 G¨RÌ<éÚ/Ÿé ¯+ÏÊÑ]ø,\0¥G4”ÌDwùh9 „\n•ƒ”µ™— ñ\0y°_ø¤äv<¢Bt_Æd(>KÀ=ìA…ú÷ï f·ÏFÇZZ*F½—ëç(Å‚A;2J1¯ÚóF_˜¤Õu4âlG‹Z€Æ(E3«Ÿˆ+ôÌhC½h/à½\ZÕ+Oµ¨|—‹ê\Z¸–±Àwº®Æä‰\Z,ô’‡ZT¡ñF}å´ã~é{X6ğ I\"•-i>z®FÜ©D£,EOa_*}yú¶\nP\nµâÓyÃçÅˆòµ¼Á\'”v®±§FUúYËGZÏG-‚<\rÒ	-\ZwQ‡;;İûçã\n3á\0œ	=-êÏ`\ZôõY•ˆwe€ûpæeHÃ;)ÍçœxZ€äZ¦OéYÑt¸S£TŠF;\nÍ¦ÀØ,YŒ¬â¿“Pâœ\Zh{\0¸F£Ëqôcíö×[U\0 +ÑÑÕ …Jk˜E9fŠHsTÆû;¡\n>B¬‚0	¡åHÉ©d*Š\0i((æ¹‘¬;(¡³.Eµ0ã¤¯mLß¨B—@^-Òßÿú«™èÛãÈ­00jâ‡a˜ğs»`xq¶Ô>CJŸ)f“Úıå ô]i¥Æz]ˆt\\ÏÑ¤nüÄ1¢¸,¯ã£Ô\nµƒë[# _¤¿è?= QäòKr*9\rÜØì-xä„KÑÃÉé¨­¾5}{¶Ã0ãä¶\"«µÈät®O¨ÿ“‡³ˆeµ¶É +Àq9WÆa2|ø$!a`²¦™§ğÚ§–eÈzË|MrV8Np\0.:¼RAm2…ú	/™³Ic”UB?nï™C*Z¶Í>xgM/å”es,«ÉeµT¶¬–LYF8A˜ù¯^Ok¼øØ^CíN`(j¹Ì›Iö¥¸–.ÑeêJ\rt}¤^yŞRyhhÈ\'N’¿ÜQæ@¶îĞ}’;ËœàsÒRüáyzY™VÚ½B[T¦Qi+e¶<Yˆ¬«ü”Ëmyr¸\r™àß@Y%âh„iIôÍ[Ê„ğ†miÖ/§¼8ZĞ@Æ‡™,KVzA~IYi¾a`fÿl`®2gz`ÓçùÒUa)tQÒ¢»ËjqÏ(@g`d-n|3¢Ç±m•ã/fmŠ\rı6è{ùÕ7îÁ‰£÷¾sZr(väÓ3q÷ÏOûyDJzîËÄÏ=/\'¸Eì9éº›°­ºâFì®ïfğÓ¸û´,ûçêt¦»ÛÛÜ§ìbWÏNrZpbS€ËÏI~UeW¬Ã¦…\nBoìò~9,ÌW´ë<Öl)Æ\'/z÷ÓÆ¼êÚ7ƒ—ÕLªkÜĞ²}ÎÊS]×¤ÕÙzNîuCÖŠE¼<ø&¢fwıãâĞoüƒZ7û¯7Ÿ;sÌ°EóËyõë[~y!İ‘*šwÌ÷Š\"ÖîÉÎ¤¹aiâ“ÃzW~×4ùpfäÒÚ´†RÆÁûÆ¹íJ± ×qŸ/K\'Å3Ï,9TO”Öc«öN¾•AÀ_ñ^YóVVó§Ì°³“;e.3c²ê2,’”Õ¬€¹8Uóµ¬fŞÁ Óê§*Í×Ş_XmìÙØ~l¹æß¯oµØ>ljxxƒğLdkŞ£[J™£%·S	>d`Ÿ²¡¬w:9\nSZÿüê/½¾îã¿2&ï™Œ[P0£zÓ!¡FŒ[÷ÃI-\'›{iWô÷Ôv®ØTß¶.eÎ¬çƒ£Å×Uø+ª^ÑN>ş:ãøş¥»2ËåÅ¬ÁÌ=üõ‡íÜ¥v¼9—®:6yúxMù÷3n†6FÌŞÜµälÃz×¶[.ª83véî`;ƒ^üYõF òg<ô;»Ç¯‘ÛºÎ¸ÍâÉ*:±kB÷Ã¾İ¹mgcĞÑRP5öÕÙÛ=nÓİ¹ó½®õÖŞ&õÅYwS·v]Qåw>âZ77„XZ3ÜuJëà¼î½”=­ï$Ià«°ùËjÍWºÉwÛòÕÇÖ]•nİ#³«“Zñ:7§¿ì~{ˆìî,/Õä}ê¼øfİÉ	=4£ø\0cÆŒÉÕcL¾q!ÂBkS;b\0œùZ5\09\0\Z€™à@¹p‚·²š‰ÿOÆÆCŠT—ê™š–n(Nş“âÿ{VÔŠ][ğöyİ„•í‡ÕÍ—Çw~ûvà†“=-v…]u>Á¸0¾*jË‚Qîİ®/K•şª9=ò·öb«7K\'mtŸ¼ËjKÖî)şÖÕe¬«ñÜH¾iº8›x²µ¯86±®u_]^İ2«E‹—.ŠË¹,ïw(AšaóçñşºÖ½’£[ãŠy÷»1N®q¸ÛğìÆwûÕii‰Ú~eÕâ•Xéw5\'t£šö&Íòµ¼ı û(Î¼¸PºY¾!rÄY%{âµlºì÷İÓN<9_%¸zoQİı)U3É¤ÒÑÒ„E\rº#±Ûî§P87÷äŠG³İÛNÿÈ?øz«›dÜ»ª‹ƒ{)| Ç×²šWcÏ+¾¢9Ì<wè•Ú¥Cùó»;È2Ú‰¯“´z`È¬	7:¹Rb™Í„Í>p¢\"da²Ğe!Ë‚ëõûÇ<Mñ\'ûGõÌ\rĞïºË¢3€âùƒ,Y‚a„8N…ËºÉº\ZîeD½ï?İ¢4&-i?1(„>ÙÙ—«d‰¢øî!áC*6ß[u&lğí¿p~Õã•¢åóŸˆ7Ík-i¼,“849çu›}i½Ä+y^—ñÊ>ÙÇs›¼W}3´úÀä5õæUkÿ1`üµ†£Ç0Ö¸Íİ«÷¶¯F‰o¶—æ€“8Â÷æYfyfuNËÅÜn»°^Œ€…ãÍ‹\n3ß=•5öÎå[cNN–®°[Şœılé÷éƒGYµÙa\\Ê«QÓ69®©i@úq{ÖÛ­šµ±…ëû…LpM¼{ÒÀê?ŠÆ<¸ùEö:ŞA¹c«æëÈÂS]Ÿt=j_~-ìJĞ­‰g¸3õ¦D—Ïº¾Õ»Â}”ÊıÅ…éÁ®?_sè³ O>‚áÜ©{1÷uÂk±NıÇ®øƒş3¾NY¨¼‹L.\n\nĞ\nnÿ¾NUIA¹6§DıW}ë!¥ïÖî‘4R|ødBdÆŞ·ë¬~òUì¥¦ø82ğJ¢|–×Ö™ù·Ò&ı´?ùL5ãõÓŠİS}{á•zØÏa÷·n{Z·ãÄ“ïÚD«¸\\¼N)¯dRö£¶”ä—$õ¹vãùÍ=K\'šp«:…™ójïv¦cQü‰+{G\r¿ÕÚœ9h¸C^û„ªğ\'(÷¡£µ¬¬ıƒ/×‡øVáÿáÊ©\Z¥[\\\\:öö£Èó–Œäíœ*ÎÍV,9;±—Ëà¢Ø©7&	Ò6¾Ù\"™^üÄ}¡åëc‚Kuü—µ£Ê»ü¯±+g316Ôn{=gĞ¤î“ú×Í)İàä›p¼lQôíá÷«=\ZGĞxS‹{¸u„8ìÿ?¼“£ßYXãĞ…ÁL€²ì~¯¨y;‚Ö%×Ïh^ôÇ÷aİ£–Ù+X”¹£ØKV€]H4ÖıcOè37ª€šÓS(ß_•¶SØ¸<‡…ó§©c§?-ï³+ŠÃğkßŞ;£ÎáqèÌm+3¹7§m\r³?óîûolû±·³}[õÅr…KÜãâÍ%U.ÛãÎMz1İb7ëË.û~ñ@»tÖÙã\'o4î½³§ó‰ªGG~P\\˜¼ãXŞ/]Îˆ÷Œºöõ&ûò%Î\r—7oõ™örÑş‚¤¯½<eivÈ²`LÂÎSM»¥nÈíSöàAh§»SZ®†Ö¼±t–?!IÍmùšˆ×ğS;q¥àMÒÍ«¤vö&F©ùñÅ×½rªÛ.:w%&Ï<0W±ıWåÁŒˆ]k§Ü¼?,dúK—¹‹oİ§w·‹š˜®­\0 ¾\05Ëà1VÈ{ÄşÏ¹GŸÄ¨®²E0€&¹<bT }+‡·²šMÿ÷ÈSæNß:–F«Ô0¢“+ÍèÕ­kpL _ ,8Ú/¸GtœÜ]æJÏÉáã9ùeÀII3\n40ü/áíå·qî^IM¡û¹›,“OÊ~Ú+êú¾¦ ˆõK—nE­,j/kŞËmÏÇ9æúÆ]I^Õ;hÛ¹âÇÃ6O\\!dûˆımø4b±V¬z˜ôØÓ÷IøèA«Î«$÷›$8½Şïõ”N¿ıá½ù÷SK˜¹ßhúì;x*jû\rıÅ¿®¾ôóşŠ]/ëîÔÜ÷ºlÿ¼å‡çµ+/^\"W,µô.âíº;[‡—ù/~k—xŒdg|iM´Lô•X;ò›§MŠ1/Û¤ºÌËíĞîº¾îÑ\Zõ.òØÕË\nÆŸ¯”[—\\ğ­/ŞvÌR1~úÁ/~°\rP¼¶³Ó†Ø¾¯›ŞúN,ô=éìÀå®¦îÔ@¸?¯õÏ§Óÿ¦º; ¨×Ÿó¿{c¡ÿGR‡ˆñã)iËÕy9ÿ#’¡%mÇ`ı‘ÿÇÜÛZñ¢F¾{uğªkÆ$§Ì–§ÖbOØt\"jä…úªÑN7ÚnÜUu÷Í‚³Ø„&«*ß–ÈÂÜ>-Oª=…³B¼2¹WÃŸÙñ®ã<­•ì¥{xrªörğVóEØ¹©ßÉ9°¥¡ûâÈ.×û¯ò\\Øíê.f–Õš)û\ZÃ§¶ä.x=ìñ…^×Ê9Íï\\ŠâRŞ+wùİ»Ñ{—¹‡ùCÍ2ëŸ‚Şx5:%å2–OyUÿ€7“}©ØÇÕÚ½	U}k£†b]£1G]Ø“ZÎ‰hûiÈËCBöçç,ëy>B}|ĞËš}çWÊ%»ò/Î=;6ªó ¸Nø	òMÔ\0ìø”Œy-µ Ö<Çe5“ÿƒ[¶6’B]ËjÂÕI/6)77£~?Üqå|™éSk€\ZÆŠ”¨úØˆ—cŞ·RÊ»ZLÍZ¾ßˆ>OÜeÃLª˜ËûË2—ùNèü×l–{Lpû‡LÒO‰ªÅ1Ï€‹g=üùdĞ¦«3¹uãèİÎKáÙgÙ	[»Lx~¨hÜÓ·³ºí‘TDTö|!¶Yr.|Ûs¹ÈuôŠ‡äšâ›×GÆ–l™kuá±ÎÍqA({şâå‹v*Ö%şî¸¯åû”ASrgôÌ¯¾9ôMjEFà­³æ›İÇ±vİ±Q¼5Ğ+}ÆîÒ#u¾é¶³Ï»Ç¿¶*~uÔNT¿5©Ç\\KsMaÓ²›KÖ?<tyàİÜíã†6õ™øâÁ²ç\Z—’a×†u˜RõÇ„[œ8dû»ñ[›ûİ¼xçÉ«’-óï~]ñh6£Í¦rğ£õG›²úªŸ\\Ü*YyÓnnfvS_İ´ü%Ëk	\'Y-aÿAJLy-a²Øÿvuüt‰üháféÕqY–Llª‹Ü_ôi|Â[ øC B.Qt‘üLÍK¿¹ÙË¢I`sSs?¥şç¸!	ŸàT‘¯NMqğ¸2ÖåY´|ÒíaE^’º¯NZÊ7ÿ:æJ—Ù#ft=”’¼Bq$i¦j¢0 ÷ñß–¤F~·ë$Ã,n¶Sİ”/_Ne¹@6½Z;kHìwóÂãöÕs¬¶ë¶®qÏá?î\r:÷líšµ»Ç+ÕºoGÿq£¾wÏıÜásº£¼_¢£¯½ß5ëô¥ˆÒøA?i®´>õMdZ·ÙÙã\\ù{|Öék=%‚±+“7&ÄÛ\\ºõ4Ñæ¨åÑóC3Z7-/;ğç6×1_ŠW¶)\Z¯_çTu½–t\'qÎËóZéæZ“}çOaÜJ¾ê³W5¼Ëê7¥±Ób3rÍ½&øíÌÄÕ-½®0oÆ°ÿwä\r\nendstream\r\nendobj\r\n76 0 obj\r\n<</Type/XRef/Size 76/W[ 1 4 2] /Root 1 0 R/Info 16 0 R/ID[<335B69ABBB47BA4CA1BD779C319A13D9><335B69ABBB47BA4CA1BD779C319A13D9>] /Filter/FlateDecode/Length 195>>\r\nstream\r\nxœ5Ñ9AÆñû¾3˜±1ö-ä(%t‰‹8ƒT.VnàBÉhïÏúW¯êõëªş”Òåû†>óJ}9ÁU0Bæ(”·B%¾`^„êY¨­…ºwÁº	öAhè-ı‚©æ°€%Ìà7²Òšg@\0‚‚0Ä \nˆCÆP€$!iÈAòP‡¡e¨‚	5è‚\r4¡mhAFĞúàÂ\0<Â¦ú»„ãlw$í‘Êî-ì_J}\0½³\r\nendstream\r\nendobj\r\nxref\r\n0 77\r\n0000000017 65535 f\r\n0000000017 00000 n\r\n0000000125 00000 n\r\n0000000181 00000 n\r\n0000000475 00000 n\r\n0000003704 00000 n\r\n0000005467 00000 n\r\n0000005644 00000 n\r\n0000005887 00000 n\r\n0000006060 00000 n\r\n0000006298 00000 n\r\n0000006458 00000 n\r\n0000006683 00000 n\r\n0000006858 00000 n\r\n0000007104 00000 n\r\n0000007274 00000 n\r\n0000007515 00000 n\r\n0000000018 65535 f\r\n0000000019 65535 f\r\n0000000020 65535 f\r\n0000000021 65535 f\r\n0000000022 65535 f\r\n0000000023 65535 f\r\n0000000024 65535 f\r\n0000000025 65535 f\r\n0000000026 65535 f\r\n0000000027 65535 f\r\n0000000028 65535 f\r\n0000000029 65535 f\r\n0000000030 65535 f\r\n0000000031 65535 f\r\n0000000032 65535 f\r\n0000000033 65535 f\r\n0000000034 65535 f\r\n0000000035 65535 f\r\n0000000036 65535 f\r\n0000000037 65535 f\r\n0000000038 65535 f\r\n0000000039 65535 f\r\n0000000040 65535 f\r\n0000000041 65535 f\r\n0000000042 65535 f\r\n0000000043 65535 f\r\n0000000044 65535 f\r\n0000000045 65535 f\r\n0000000046 65535 f\r\n0000000047 65535 f\r\n0000000048 65535 f\r\n0000000049 65535 f\r\n0000000050 65535 f\r\n0000000051 65535 f\r\n0000000052 65535 f\r\n0000000053 65535 f\r\n0000000054 65535 f\r\n0000000055 65535 f\r\n0000000056 65535 f\r\n0000000057 65535 f\r\n0000000058 65535 f\r\n0000000059 65535 f\r\n0000000060 65535 f\r\n0000000061 65535 f\r\n0000000062 65535 f\r\n0000000063 65535 f\r\n0000000064 65535 f\r\n0000000065 65535 f\r\n0000000066 65535 f\r\n0000000067 65535 f\r\n0000000068 65535 f\r\n0000000000 65535 f\r\n0000008858 00000 n\r\n0000009019 00000 n\r\n0000009570 00000 n\r\n0000009597 00000 n\r\n0000010090 00000 n\r\n0000024826 00000 n\r\n0000025330 00000 n\r\n0000044232 00000 n\r\ntrailer\r\n<</Size 77/Root 1 0 R/Info 16 0 R/ID[<335B69ABBB47BA4CA1BD779C319A13D9><335B69ABBB47BA4CA1BD779C319A13D9>] >>\r\nstartxref\r\n44628\r\n%%EOF\r\nxref\r\n0 0\r\ntrailer\r\n<</Size 77/Root 1 0 R/Info 16 0 R/ID[<335B69ABBB47BA4CA1BD779C319A13D9><335B69ABBB47BA4CA1BD779C319A13D9>] /Prev 44628/XRefStm 44232>>\r\nstartxref\r\n46325\r\n%%EOF'),(2,3,'Exercicio 07 - Programacao TSQL.pdf','pdf','%PDF-1.5\r\n%µµµµ\r\n1 0 obj\r\n<</Type/Catalog/Pages 2 0 R/Lang(pt-BR) /StructTreeRoot 17 0 R/MarkInfo<</Marked true>>>>\r\nendobj\r\n2 0 obj\r\n<</Type/Pages/Count 1/Kids[ 3 0 R] >>\r\nendobj\r\n3 0 obj\r\n<</Type/Page/Parent 2 0 R/Resources<</XObject<</Image5 5 0 R>>/Font<</F1 6 0 R/F2 8 0 R/F3 10 0 R/F4 12 0 R/F5 14 0 R>>/ProcSet[/PDF/Text/ImageB/ImageC/ImageI] >>/MediaBox[ 0 0 612 792] /Contents 4 0 R/Group<</Type/Group/S/Transparency/CS/DeviceRGB>>/Tabs/S/StructParents 0>>\r\nendobj\r\n4 0 obj\r\n<</Filter/FlateDecode/Length 2842>>\r\nstream\r\nxœ[İnİ6¾7àwĞÍRÓâŸ$E\'>)¼ˆ“4q»EQ¸>N6@âãÆÇÁî¾İb/ö9º½(zÑ«¾ÀÎI‰”DQ.Z¸:œápş8)MO>îß½¹¼Ú_|q|²ß_^ıız[|w|±»ışøâŸ·×Ç//ß¾»¹Ü¿Ûİ|ùeñøôIñÓá”L5ü£áA]Çº¢­%ãº¸úpxp|öáòíµ.NwÅ×‡/`ä)/¸`¦).Şpš#0±åE«k‹˜XoñÏW‡EÍêZt]qqõ]ùÍó³o7¯^ŸœnŠê¨)ŸnN7¯Nª#Ş”Ï` -i¼-_o^}U‰º<R[¾¤¿›êûââ¯‡›«Š_\\É†	,£¸X1â?~*\nÎY­FªKf@uÉY«húwåi¥ËÍKÔï¤Mù\nŸ.@‡Îş>ß<;ğ\"¡”hA¬ŠÅ\ZxÖ‰*¡`Ò¯Ë×ÕQÎ¸tkoÎI¢Y6šUXŞ¶D-Ÿâ½8C•ÿÅÇÿà`J}¥8f¥ú¢c\ZÒ†&\ZÇkü£¢¼}WAğ®`@”;¸+èysw{] ˜’8.i”‘Cªr{]Iî,{\\q\r,ó\ZHÈ\0ÙÄ\ZÜàRÁª(RD\"ÑYvÑ­Õ+%İ€ô‘})_HØ Hİ0s›emŒÄØ/³vŠ™NMÇw¬/1®A{eÍ{ñ&Ûîîª#¡í ¥.µ&Ÿ€É7[G’MùÛàoô®:RåM/z¼w£\"¹ÛA8My‹¿ïa]ît°HGëaÔJEáŞ{ÿî\nt\'9p9L\n\nŞŞ’Š¹f±Kf÷»ˆ6»wdÓ²FÎL+6çOŠãD%}¼ÛïwRÅt&^²c¼›K(¼Z*Ö´Q7ªĞLƒ®P1DññúğàoŸ7k¹Âu={jİ¯é_2²8~‰æ?9;-êyj\\hç<Â!äyÒ3t>–9¨\rªçEnª#SşÃ†ıHBNiÌ<È£ß+nÜã;|L¦0¬	Mî8D»oâU5S*æm“¼N*­ÃÄWbì«I–’ï¸P¯‘\'È“©\nQc¥&PéÒZ›–Io\'g“]\'g¦B•ãj4u%>Ãi¤æñÌ\'X‰|ı!è0î\'Ô-Ëû•4îù6(’¶¨aÙêÍ¾/On–-Mv®}¶„+ûû½-“¦¼?ÀW¨E Îïçë[ÏµE’}$LÇjıìßúTzÒ_ÀP(Ò>ß]#S¸6Uh`‘Òª4­í}?4îo~…Á_\" Ò6ĞË*ÚÏ½¥]òºÊo’;Ï2H·.ˆ¡ÒŸ(Œ¿FJˆ–»5-|	eÆÖ87naİë	ŞhªµÀîÑzg÷«ÜÚiÃ.I3Fàè÷ñ1N+3M*”?f´ŠâüÉŸDPšUÇÉ´ËAF¹¢Æ)†qé­¸óŠy®¶ü=9}¬Txf¸#}äâ×rÖùŠëî”‘‡E;XÏt	¶¡\'ºuqÃ“ âì´!¦„²^GÚ•?÷•Ä…\"èìLºßõñí°ŠhCOëEu\"çïÁŞÄ¡ÒİÈË©ˆ(€úÚÄ¼.eÇe—c°ÖMÂ×µÛ?ú„Ñsm9O´aÒïó¥Úç¦	aªa‰…-\"˜NÅ4ÊJb)œ´xgğ\Z¨9…€ÃQEµp³auœµÂÅšá½j®E8U wñ¹0mWh¡Yëí<Ásì’#,8PY°Â•¬-akV\rÑ2´EdùË.>ç=L-]4ã+½p«i•8Kâ{„¦#ìZ\rô\0Æ—Ü×ï ÖÌM»O‚aíŒ÷ ã:H8¨l7û©s°èŒs”h1\'×8\'4ºsF×¬Õßğ®…GÈÎšu‡E!ğ8‹*¼ù, Ã¶Ò–Nz‡AutŞ\Z<€F®:pèNJ@?HOnìÅ!b¨ÁĞuÅ×,Ê¤uíêKö1A92rÖğYëòtLpKw	>ZÊé$ºÃ\'Eõ:å½Nœ`NPÚeÆ~w}Ny¯JJB>ñ3äzí#\'ñ.™tS’Ó\'$o†$Ps^lñ­FÒ‹yz‡/P”jÕ$-ûlÓø¦*Ù£×)Ù£WŞÒç”÷ª¤$äè?ç#Û‹Lsöù|ˆGx©Ô€&\0^«DÅ7ÀÌLöÕw1!†àaeŒwFï›©ğÃá²‚sÌÎq×wî$ƒ\"…ÊM)ğ2UãÉ£¶O	à\\©Ş9¹BÇNµËÂ§[q@£´7y=ĞÌì´;¥©áv>QßÜ7à|—.ë¿¤ tå²Så’5Íz7EÖó’‚ïÛ2Ü¿(›Oïc_,5>\0`Nuè«@)%jJ”áL‰ ”dì3Ÿè ””£A	³‡«¡ )•ôÓ«‹¾‚D6Ã¾ÿJ—Ì„/ótWİ‰¾\nš²ñÍ1:òñÍ1:å}š’rô±Ÿ×Ä·—¹À\ZïŞ…@\nŒÎ:.¦\0µ8yŸdË”6üV¶S{ƒëÚƒì;.|ƒÒ”s(¥’(õ\'u”p˜Q1Qv½W<.§µ89P±¶!@‰€ZµhŸVz(²\\%àIAÌj±’Œ¾lÂZµ\0KtÌ\ZK_OIQcxÊêÔh6¡S‚¯Ox$/aSb~†<A&`bÍu)ÍéÃKúh.`RÒyº-ë–¾“òAÍ1zrAÍğyÕ‰¼H‰ùòÄÅù öÓœ£½:İ1Á¥A–\"U7õˆ\'/z¦whËø¢D€s[YĞùè^ËÒ[Å#ÎíÀòÕI\'AéOê+¹AÖ©¾yX²+E>íŞf\nK‹“ó°4R7Ä%¾€K«VMâÒZE¶·)`j$ãkp)Á××LêfY€€:Õv¢¯‚¥”¨	,åt’ß®À¥£WŞÒ—)%!GŸ`“‚‘UĞ”bôq—^ŞıAZL¯TØÔ°9F÷ÚÑSï¨©6\'•§;!ú*øË&OÑë”M£WŞÒ—0%!GŸ``6y¼Ä4c QwéØÛ¯<÷uÁ—•d\Z³+äèÓØe›oğƒ!}áQ©ò:•jÖvÏ(®Ø\\á´I(Ñ–EBjŸ^¬ñ œhêƒZp¢™‹-8üçŞwiØ/Ğ}\'ë[~Ä/ÁAßŒã°m£Ôëùu®~ƒé±UğIØƒCgnĞÓÉÆ÷|ú6ê»:l)è;+‚¶Å¡I$h\"ñ3¬ŠÁ×|²øÇû¡ièîsTÙqN~Ö^K2‚LzvRQ¯¹‰ß\'\Z~óYÊ5ØK=uNß×@] n&~ ûibÏÏàµ¸$jç”gCSô(‰N9]crE6-o¾Ğ^‰@;×æ8•\"¤@…7^ù ­M}ĞVŠf.n%Ùo%÷Ã7¥{ÙFMGRmÛ\\3©—Z8Ó&æµéOk¿·O À¿úö¸›íÎiL=rVë»Ş\"Â6§G~û“m³]wDAK|gÉì;‚ì@ 3ò]$%.@À\ZW ù\n4¿ÍPŠîÖôRIÍçÂÛŒ44î¼ïÛ ·öÆÁ>ôm:ñ–<™k”®++ìÀ¦î?ÚıA¯<ÅsG?mAnrT½?!ÃoAø6Pqu#fĞ-Ó®âÖ¤ Ã,hë¿‰º`ÖOãô=:$î#6îÛûMVpXmLªåB“èÄ¥BG”Uİ¼B-\rŞ×HÑ«Î9ø!È¤mÿ^Š\r\nendstream\r\nendobj\r\n5 0 obj\r\n<</Type/XObject/Subtype/Image/Width 119/Height 166/ColorSpace[/Indexed/DeviceRGB 4 <0000000000FFFF0000FFFF00FFFFFF>] /BitsPerComponent 4/Interpolate false/Filter/FlateDecode/Length 1536>>\r\nstream\r\nxœíšYnã0†©X° è	ø ûŸiDR©ÅK1u1“(æÇŸ¢¨ÅMCøõ…¿Gg,‚W-?1\Z~\n\0ºUYãsÈ…EíÇú³GuÇ^ŞãRßOX\\”¬6Çc7v#Ùe\"…‡yÌ*÷ Íá’……XŸÃ¯²a¹Š9&9ºGF0†\0e|ÅiMuËÆ!YˆåDÓûØ]ñ“Ö!Àä‡1Z ËÖÒŠN÷	‹D°C´7q¤YI\ZñÆR»lY¶ˆ£K£”­Å \rº¡RmØ˜\Z+ÊÁ‘\ZÅ ¤„=d)«‚€µÒ—èC—ŠfŠ7\ZQvcA-Ü?ÎE¿ì|3ÌXé•°lŸÆ”>=öcÑ²-»Cb9L8»T6LÙC-ì~h–ÚpÆJ 42˜F…{(ïcÌd°yŞIÒ°ËNõ7X®åıàecÉy)å–ËG×ÓD—Ñ$¤ÁæŠÔ3²­ÉèxI!µ”\Zôiš\"3¹v	Œ‚ØSı²#°Ëd?«syŸ\Z©ÎÃ	Ëwç¬7ÆM® ú/ï½º1gá\']Ÿ¸j¼rƒÆH\Zğ™çª² Øu:a‹ùOÃêtÁŞ¸Ì•/¹úÚßèg\ZsÍí,Ï\'µÑ²lAlZŞÃ	‹UÊè†º)Ai#ø¼Š¹ö3×ı\0¼Ò\\ø¼âÏ§Ÿv„õLpbáõl.¼hP2KEø{öçUØÿ)‹nbñ‚­prù«o5¨æºÇ&6uÍXèÉ^|Æ„ï²Û@ø¶n/Ü&ê®{;Ïk/|›µ·„uypÖ•|?`Ûî³6htµ*ÖmÎ®Ÿfi¸©;Ú¯\n[Äı„mv”æÛ[ÑK]S9OuÍc˜¹.uµpœ»uÕC™=Ó5cˆôÄ°ÙË­—ºiOñ}¦®cfaÊSîŠåÒÈü•.oÀ‰]Í29ev?¾¡²öåk…Í]èÆQ„[cÙjtÃœU±AÆNMÙœR$WjlØßMİşŠõˆÏX3w1üRWN{X×ÔÅ¯uÃœE_ßkÆ–!â}¼Ÿ‚wt½ìãh»¼ê:^­ÒÒw	×º>å­[&¯Ùò>è4/Ÿ§¬Oü‘Ûºİa¥\nçpÆºîÈ …ıEÌ¡½ NÌsİ‹¶»YÇcî¸\"ó¯£¬ëY]l§ìéa4\\±úÖ`Q¡svò;[”íâBwÆŞÉÕ˜ÕÏFYN¹xÌòd†õ9›Ö€ôó%=~nïL.ÙX¨X—„éóş¸¿i÷O¬q›^È5Ê9;²nËÖ9:bÑi]mÆ¬ë’\n¥İ¿Ü“õkM…rÅÒ¢³±²\0İ`‘ÈÎ8rÍ¬ÏlpÚ[Ëòá£,Ï·Y°We×ÊbÙwš–Í‡â54,4Ë†ádÎ,(VÖÑ&Y­,M¦´ÇhÒ‡J¸\'Yd½Ö¬SûFbõî©B‡Z¡ÔYĞ<¢e³¯œg}vS(½¨ÖğÌšã×Z}*[T°y)ã„\r°Ú3å\ZÑ~²‚:qœÈòÉ´}|âşråZC¸à:œ3tÈ§XØ¾¿ÎzpÉc£×7ÓaeÖ¾cEôøJG}ªØF¸í5%óÜXG§ÏöÑ9×`4ÓySAá,§\ZNÂêÇ>C„6³ºÌ–ÕJ]ï¹@ÿÅ·ßwë„Cáy¤GøhúşÒO|añèé»Ñ¿\ZÑ—V;a‰ˆ·Éb{oÄn‰%œıPt7ûÊº­h„7{%[ÍÒøÊ9à¯X´n0»%–^BËŠ}ùD±;F,‡,(_Í›=|eqÇ:ü­l44ı¥{’/QkÖ‰(u&u›òÌ–éc²§FHÙ(û`èYß/›‡†¥X|a¹ÃÓWrE#±qö¸62+IitËB=£ªøreDı•”Ñ}µ/„v	lfSW^±(p~UÏA±vAÍ«;ÒĞ£×¶îBG=)-Ë±ä=aéNõ-«Ìé›É½°ô½¤µí¾ã;úÕ£a—ÃşQÁ€İõoëöúÇ¨1cµ4\r\Zã¦\r8køíXs–ıåÉ„}rı±ìûØ’äµû\r\nendstream\r\nendobj\r\n6 0 obj\r\n<</Type/Font/Subtype/TrueType/Name/F1/BaseFont/Times#20New#20Roman,Bold/Encoding/WinAnsiEncoding/FontDescriptor 7 0 R/FirstChar 32/LastChar 86/Widths 68 0 R>>\r\nendobj\r\n7 0 obj\r\n<</Type/FontDescriptor/FontName/Times#20New#20Roman,Bold/Flags 32/ItalicAngle 0/Ascent 891/Descent -216/CapHeight 677/AvgWidth 427/MaxWidth 2558/FontWeight 700/XHeight 250/Leading 42/StemV 42/FontBBox[ -558 -216 2000 677] >>\r\nendobj\r\n8 0 obj\r\n<</Type/Font/Subtype/TrueType/Name/F2/BaseFont/Times#20New#20Roman/Encoding/WinAnsiEncoding/FontDescriptor 9 0 R/FirstChar 32/LastChar 243/Widths 69 0 R>>\r\nendobj\r\n9 0 obj\r\n<</Type/FontDescriptor/FontName/Times#20New#20Roman/Flags 32/ItalicAngle 0/Ascent 891/Descent -216/CapHeight 693/AvgWidth 401/MaxWidth 2568/FontWeight 400/XHeight 250/Leading 42/StemV 40/FontBBox[ -568 -216 2000 693] >>\r\nendobj\r\n10 0 obj\r\n<</Type/Font/Subtype/TrueType/Name/F3/BaseFont/Arial/Encoding/WinAnsiEncoding/FontDescriptor 11 0 R/FirstChar 32/LastChar 32/Widths 70 0 R>>\r\nendobj\r\n11 0 obj\r\n<</Type/FontDescriptor/FontName/Arial/Flags 32/ItalicAngle 0/Ascent 905/Descent -210/CapHeight 728/AvgWidth 441/MaxWidth 2665/FontWeight 400/XHeight 250/Leading 33/StemV 44/FontBBox[ -665 -210 2000 728] >>\r\nendobj\r\n12 0 obj\r\n<</Type/Font/Subtype/TrueType/Name/F4/BaseFont/ABCDEE+Verdana,Bold/Encoding/WinAnsiEncoding/FontDescriptor 13 0 R/FirstChar 32/LastChar 227/Widths 71 0 R>>\r\nendobj\r\n13 0 obj\r\n<</Type/FontDescriptor/FontName/ABCDEE+Verdana,Bold/Flags 32/ItalicAngle 0/Ascent 1005/Descent -207/CapHeight 765/AvgWidth 568/MaxWidth 2257/FontWeight 700/XHeight 250/StemV 56/FontBBox[ -550 -207 1707 765] /FontFile2 72 0 R>>\r\nendobj\r\n14 0 obj\r\n<</Type/Font/Subtype/TrueType/Name/F5/BaseFont/ABCDEE+Verdana/Encoding/WinAnsiEncoding/FontDescriptor 15 0 R/FirstChar 32/LastChar 116/Widths 73 0 R>>\r\nendobj\r\n15 0 obj\r\n<</Type/FontDescriptor/FontName/ABCDEE+Verdana/Flags 32/ItalicAngle 0/Ascent 1005/Descent -207/CapHeight 765/AvgWidth 508/MaxWidth 2006/FontWeight 400/XHeight 250/StemV 50/FontBBox[ -560 -207 1447 765] /FontFile2 74 0 R>>\r\nendobj\r\n16 0 obj\r\n<</Title(şÿ\0F\0A\0C\0U\0L\0D\0A\0D\0E\0 \0D\0E\0 \0A\0D\0M\0I\0N\0I\0S\0T\0R\0A\0Ç\0Ã\0O\0 \0E\0 \0N\0E\0G\0Ó\0C\0I\0O\0S\0 \0D\0E\0 \0S\0E\0R\0G\0I\0P\0E\0  \0 \0F\0A\0N\0E\0S\0E)/Author(CEHOP )/Creator(şÿ\0M\0i\0c\0r\0o\0s\0o\0f\0t\0®\0 \0O\0f\0f\0i\0c\0e\0 \0W\0o\0r\0d\0 \02\00\00\07)/CreationDate(D:20150410084439-03\'00\') /ModDate(D:20150410084439-03\'00\') /Producer(şÿ\0M\0i\0c\0r\0o\0s\0o\0f\0t\0®\0 \0O\0f\0f\0i\0c\0e\0 \0W\0o\0r\0d\0 \02\00\00\07)>>\r\nendobj\r\n23 0 obj\r\n<</Type/ObjStm/N 50/First 378/Filter/FlateDecode/Length 872>>\r\nstream\r\nxœVÛnÛ0}ĞàXÔÍPØÖ+zAØC±7ÑÒ I\\¸Ğşı¨HN³M–Ó¾D–ÄCò0IÀ€KP\\2\\*Üg¸¡sú,A Á@”„É²” 4( (Cw%haApĞ–dPjº³`Œ¶ ,Gli@2KŠ%ÙEFÇä†w@Ò9G:/iÕ¶€	-i-”¤‘<Gi‰+Ú5 HÖ,É8¹ˆ¥¡s²c4É“^KœH­6àY2	bÌ¹ÍÑ³¡  ±Ä\n8\'çÈ.(NZÑJÂZSüÈO]Òê/)\nÉÚkÚ#é+½S¤ß’N®0òçô´yaãbRŒŠéÛ³+&m³µ+·.®ïı‚b´\0áeÎÎN¾ÁCøÇ!\"	1ró­¿¥`2	+;ØUÒ;ë¯³.Ş$qf—¤¦R!r„ğ™\'#(ûÜ£w”±U~Æ–îµÕ\'ÏÕæ?h\'^\\ƒy‡`gkœ´µCD¾ôY¶9–6	1Y–’õÙ’˜³…ÉW6dŒ÷3G†ñè˜îbiø²ÙÇ3›9˜|çRæyö¦,³Æ’bÈXï“İƒ*\rjV¤á›Ki•Od¹P,ËSõ&ÊÖLš!c½…fjylPC°\"\rß‡Jğ´zX¹dÎóP@Lø{dPØûÄš¢ù&YƒTW¶z{O–µïÉ&§‡‰%›œ\Zné–Ÿ´$—¬!šçÉõf`œî-täÒÓI“Mò˜äÛÇ®.NÜ¬MÇ~—Ë<¤4eˆë°„j$XXâk\nw*Ü…LòÓén	ÏD-:HêØu£O>LçÆuİãzån«g?œzoGUã6»[?¦î^ı}dï9îoïÜk{íŞ k]—¤kS·®¸ó?›ùûfJ¢õkÃWÍ]¾=¦û¾Ú¬–7y¬¼‡şàë†4Tí²ŞÄ}Ó.Wô±Ûı¬›§‡º~*ÎëÙvM>íN^k½“mq[Íšú`ÿı‘~öçËjU/&«åÜÈ;$¶hªuq¹\\l¹Şm×/4’ûù}İÓşõo‘0ŒÅÉ(-qœˆ­=6İØckŠM#–óXZÿIPEö©!3©qòåK	]\r\nendstream\r\nendobj\r\n68 0 obj\r\n[ 250 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 722 0 0 722 667 611 778 0 389 0 0 667 0 722 0 611 0 722 556 0 722 722] \r\nendobj\r\n69 0 obj\r\n[ 250 0 0 0 0 0 0 0 0 0 0 0 250 0 250 0 500 500 500 500 0 0 0 500 0 0 278 0 0 0 0 0 0 722 667 667 722 611 556 0 0 333 0 0 611 889 722 722 556 0 667 556 611 722 722 0 0 0 0 0 0 0 0 500 0 444 500 444 500 444 333 500 0 278 0 0 278 778 500 500 500 500 333 389 278 500 500 0 500 0 444 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 722 0 722 0 0 0 667 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 444 444 444 0 0 0 444 0 444 0 0 0 278 0 0 0 0 0 500] \r\nendobj\r\n70 0 obj\r\n[ 278] \r\nendobj\r\n71 0 obj\r\n[ 342 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 776 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 699 664 0 0 0 342 0 0 0 1058 712 687 0 0 0 593 456 712 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 668] \r\nendobj\r\n72 0 obj\r\n<</Filter/FlateDecode/Length 12141/Length1 45548>>\r\nstream\r\nxœì}	|SÅöÿ™{oö½M7ºä¦iK÷¤-t¤¶ì•Ò¯Eª-MK]b›²‰¬°(>w\\Q|j**» Ï÷OEÅ}WŠ\nnˆ¶ùŸ™¤5B”çïÿÿ>9·ó½gæÌÌ9³œ™¹Iš\0€0ÊŠ+Æíûq§àF\'@Äâ±Å%c ‰ß\rpCæŠ[6¹B–§ñ»0?¶bÚèÃ	Ÿ$aü Æ×OšZ1î“¹fäU•\0ü®ÉÖìƒË o ¼fzqi¥ë«Å-\0:#€ä½º–Zçöm÷ç´ŞŒyºëæ¹Äéæ†€Ç1şuƒsvË¢’c	\0ÎdÌ¿wvm‡\"@ú\\XŸ~vóÂ†z{ßXô	êÔèhYğw[ã\0#–¯º·±¾Öñkî:¬k&æÏmÄC™òUŒ¯ÇxBc‹kAÃgŠÃ\0\\>€Bln««]öZ×ı\0«\0™³¥vSš\"]‚ù·c~±µ¶¥şüc;j®Dıª÷œm.Ïxí™JåÎözç;—:\0Ğ‰öğ\n }+‘=X=,®ğ\"İˆo!Z”h®øŞŸ¾ú©§NŞØ{­æ^ùµ˜Wx	ËÉU}å\0Ú|”_¬¹—ÕäOoÒ~da™‰À#êÁÓ°%É^Œà„µÜn€\\r£$«LôŞùMğ2/‘§’¼D8ávzì ^@{”V]Z!Š€wP\Z×WÏÈUäAÈmT&ÔIĞ–‘ûLB,ğùğ¬°6ÃŸDÒ\\ˆü=ùe×Áãÿ›ú%•0}€ß3$ePé/Ç>Úä—Ï‡-’­–üœÿ¶{á\"şnHCÙíÿ›öjcşß%‰›ÄşÙ6)HA\nRş§Äo#ÄhLMùí\\*?>+€\\G€fHOÁ£¯š(V©şŸÚù»éÔ³h‚t®B	½ê{¹ä ÷ôáó™QÉP*D5¨5 ñô‚´ˆ:Ğ!ê\ZÀ€!Ÿ B†Æ0Â# ÂsŸ\\\"£`â ˆFŒf1!bã Ñ\"¢ÈĞfÏñˆ° &@\"b\"$!&!~ƒa0b2$#¦@\nb*¤!¦!~é˜ˆ™‰h¢\r²<\'p9¢˜\rÙˆ9ƒ8† …\\Ï·Ë0òó!±\0\n‡ÁpÏq#GÀyˆç1	#¡Ğó\r>©BÅp4ŒF,‚\"Äb(ö|\r%0qŒEËpŒCã=_Á˜€8&!N‚RÄR†çÃù/a2LF,ƒ)ˆS ±ñ¨€\nÄ©0q\ZLCœAüTzáÅ*¨Bœ3/€™ˆ3¡Úó9T3¼.D¼.B¬\ZÄZ˜åùf1¬ƒ:D8ë¡±f{>…ÙĞˆØÈ°	šçÀÄ¹0×sš¡±…a+´\"¶A¢œOàbhGlgØˆ.p!vB§çc˜óçÃÄÂBÄE°Èó\\— .†K/e¸– .…¥ÿÀ2X†¸V ®€•ˆ+vA—ç0\\—!®‚Uˆ«a\râ\Z†—Ãå¡º×ÂZÄ+àJÄ+aâ:Äà*¸\nñ¯ğWÄ«ájÄkàZÄkß‡õ°ñ:¸ql@¼6\"n„<ïÁ\ro„›obx3ÜŒxÜêynexlBÜÄğv¸ñ¸ÓóÜ	w!ŞÅğn¸ñ†›a³çÜ÷!ŞÇpÜx?Ã¿Áß<áxñAxñ!p#ºö@çmxFÜ\n >\">\n!>†ølƒmˆÛaâØ‰¸v!îB|vÃnÄ=°ñqØ‹¸ö!îƒ\'<oÀŸ„\'ÿO!>ÿ@üâëğOø\'â¿à_ˆOÃÓˆÿ†gŸg=¯Á³ğâs÷Ã~ÄçáÄàEÏ«ğ\"Ãp\0ñ%x	ñexñxÕƒákğ:âëß€7ß„·</Ã[ğ6âÛpñ ÃCpñxÇó¼ï!¾Çğ}ø\0ñ†Â‡pşƒøøñ#øñc†ŸÀ\'áAü>CüŒáçğ9âQ8êyÁ1Ä/àKÄ/á+Ä¯àkÄ¯Ÿ‡oàÄãpñ[8x¾Cüq?|ß#ş\0? ş\'OÂOçà\'èEì…>Ä>†ğ }­ˆß­P(€çÉooò_áûIŠ€Ç  œ ‘HU0ñ¡³§)HAúSH©RRß=ÃLWü\nßO2üÃÀ|WE9‰T\"TQÀÄ?„Î¦ éO!•Z‚ œa¦ûû«2€÷b9İjÊIe’@ûsÀMû¡³§)HAúSH­V£ïŞ$&ßUÿ?è»A\nÒ9D\Z­}Wzßõßk½©€¢ ÎB}WK9©\\\ZĞyÎG}7Hç8iµZH¤gØı÷ZM\09:ŠrÀw•èé2¹4ĞÙú,zT@õA\nÒ¹C:½úî|Ê¯Õ££Pe¾«g¾«t³çQöA\nÒ9Dz½şwú®.€EE…ù.åä\nY@ç9{ôİ ãd1€T\Zx“ü™üÏÉú\0rt5uúVSˆ\Z=]®”ü°İÙó¨³÷Y¿ éO¡Ğê»gğ)ÿs²!€EC…ún(å*y çâ³èQÕ)Hç…\ZCA&“ŸÁwıÏÉ!äè(\Zê,ôåj£VC}Wè¹ø,zT@õA\nÒ¹CÆ0#õİ3ì‡z?>4€]RÛï»aZt¥:è»A\nÒJaáa¿Ówäè(:ê,ÔwÃuÌw•^Ó:‹P}‚tîPxD8ÈåŠ3ì‡şÏ¸aäè(:ê,ômâ=r*R¨¢³çQÕ)HçEDFPß=Ã~èÿŒ@.©ï÷İH½}Wôİ é¥È¨Hô]å|×ÿ7\"€\\[3æ»Q”SkU^>‹P}‚tîPtl4(*ıoçò?\'\n Ç}9”îÍô#±¡èé\Z½:ĞkZ_¤şc( ú éÜ¡XS,(•ê3ìRş{mt\09:Š‘:ıˆ‡)Ì 5h=ŸE\n¨>HA:wHŒA¥ÒœÁ§¢üø¸\0rt”pê,ômâø|\"Ö‡ê­Ï¢GT¤ ;d¶˜ÿßõ?\'›ÈÑ[©Ç2ßµD¢Ûèº€_¿è…®?†‚¾¤sœ\'‚F£;ƒOùu´%€÷åAto¦o5\r¦\\H¸!Ğsñ/6ğ?–ªRÎJMO­ÖpŸ2ûñÉä1èŞØG/ÒãĞÓÃ¢B­iÆ³DÕ)Hçefe‚^\Zè(?JğãÓÈñ-Ò³´C–YÄkt˜9@¾€î?†ªRÎÊš\rƒñ¿§2Ø·££X¨³Ğ—«‡&ÄãÙ8.\"!@¾³èQÕ)Hçq¾_›0O9‚OŠDúóOPƒ_Më\'úËhgúRgï±Œ‡÷IÊ¦”L›ş—Ê\0ù\0ZÎØ†ß$ş÷d~}€À	ô[¬õXâa”B-ÔC´A\'l‚¹ƒĞ_jóJ(iö~‰çÃS®:OwïÉßúeû°©ùy¹C‡ädgÙ¬™éi©)Éƒ“,ñfÑ=(*2\"<Ì\ZbĞë´\ZµJ©Ë¤ç¤wdQeO”,-Úl6Weøâƒ~wó‰ú¯ÍnùE¦èS\nÅœ=%7?ß\rF÷KQ1­¸Æ|ä†P71ºj!¡¥¨ÉW¨Ä1ÇRÒä*rÔÔ`‰b‹^tùÒê3…Õİ£RYŠê•éĞ£T!«Bó:{È˜‘„1Ü˜’a=È5éî47—XBÃ·}m\r2–b¬	%¡?K¶{ö]á/,ÖÏ…z9â–¹eL¯Øä¶×ºa­Ø“¾¯ûŠíz˜U“¦vXµ3±çjÑÆàK\Z§Ò~,¡¡¦QtX9ƒhLK\ZÅní’Æ\ZDK1–\n˜ÉŠ¢ÊÕæ}Ñî¼—¸\riî±˜cì¢ÃÑ|wId“H£İİ«E÷¦)•şR3ÅªªªH4¸»Ä‚be%sFcS\"­éŞ6ù:ÀQ3‡êœSKí,™#v¯­g¶^Ál`YK\Zq`jÏ”«»»Äa)qÔ:F{k/rÛ§²LQÉ\Zˆ]W\\åKòe@‰À$5ÅUfogO,¯,¢†Yj‹£½Ã>RãKÁ„’~¡H-¸Å:Ñ\rå•ÌšO¡>ºëòÙä1W,Uös)·$Qo»¿7©±ıü—)µ¾i¢ş[ ìË˜šîî1qLwMwívÏ²YQoéî™8±ÛYRƒZË*±ÔvÏÎµÑî1WT¹õ5dö=cÊ+£Í†ªşhYpJáÄR±æ`/àßxß\r{¦VšEì¨i•UÑØO•”ŸŠ¼÷N\'NÜ|c_·Ñ>ªÏè\"k6ÓÙ¹v»faÄ½lJ¥7.Â¬è‡ÁnMÃñ¨¡’}ı’°iT²¬_2P¼Æ‚Za‹S˜[4ğ§Ó‡‡–4s“ğß×{åîĞ¢J>š«òr\\4O9e\ZzúwD\ZòÉiİ8/ZÜú4·¤r_ôˆ*QoÀ€^…eâ”•bI÷À,ğ¦øZJçNuKmc·Ï•è¤Ç¥`t…¬™Òc\'k*fTîĞãj¼fjåÃáŠjFWõ$ ¬r‡ˆK+KåRiL¤1˜H\'àÃœœ‰¢wØ–1©ÀX¼n;–&ïO#P·ó¦éY\ZRØS?ù8ÁôñGŸİñšZŸk“¼~Á´ÃsÅğ†cxÃ}7%˜nÆpãM¢é†›’M7]mújc˜ióÆ(ÓõSM6&š®CŞ¾‘lÄìº¯Éúk¢L×^“fºú\Z³	®!TÑÌkTú\\İnÓnënŞº‹ÀıN‡6?JÄï—~Ïé¿¿³Ç/ı–è‹Ç9ñXÙ1Îúyáç“?çm¯:_å¶>œlzx«ÁdİZ¸µÆít;_‘üçp‚éCÖÃTÁÖ\'±!T‘çd^Zši:€áÅ¥¢é…¥Ó>{1\\õ¸çqN·‡xö‡&çCD¯x/·ör›©ûr«éò¥9¦5]‘¦ÕVu7]Öe0­ì\ZfêÂjÚ¶lÚâŞòåÁ~;ÑÏgÚgòß`+–Fš–/`Z†÷%¨ñReKk–:—òzÙ–j’IÍ¦¨ÈT“À›M¡!©¦ô]jš69E—4X›¨‹·hE³.Î¤‰ÕDF\rÒ„…GhBB\ZŞ Vk´j…R¥–Êäj<Ì¨ñ¤£Öë–é8»t™”³óËxN…0–‚ ÃG–B°Ç¶ad/¼\0G—›tÃä&¾@n‚|¹©,‡¸C&ÂÄ©£İ¡ï£İ9i·Ë¡Ü6Ñ­(» ²‡uU˜êæÖàğLukpMÅõÆ•ÛI_Æ¶ä¶“e—]yeô\0WU•ëvL¬¨t;c«ÜÙ”ùkl¤!u¸:::Ò~…zT»£|tÏnµî#–âO°Ãı©¥˜øŠú×,V:óşù¤u²t×iêX!\\&¤Fú!ÉúJ‹ıI¨ó¾mâyŸá¡~¾Ïáùö÷Ö~‹äğû¿Ú˜àÎğ[rÿEW‘Ud™Jæ“ÒIšˆÔ‘*Ä•kƒY¦»áIÑB,Ä@dp’$’XJPbüsÌsœå¼…áq2¾áXoÁZ{á8G¡háq¼fãµn§¿²DâÈ`R@ÆÁ1¬¾F}#ôÀÌó4–y>‚/‰œÌ óH7YÏi¸±ÜÌIŠÈå\\)wRH\0™Ï…ÙüNrœHII€ğ¼Å»=ŸMğŸÁm…xj™!vşn>•7q¸»QG7ı&oÆmRN\0\Z¬ûíge3Ì†D‚¹~\\&“ôËè£Ï\"´àl¡¥“ìá<Ïq²ç%pHx‰?4Yr‘„“LVjkõáŞÃ`íÍ¶fÙoæ	ÖÇµdöíÌ$7õ5“õ’\'\n	?Z‰ëÜÌÿKPK¬Î\\»E*ÃJy/èø\ZŞÉ#	/€L/k“-•	2«Â®àPÁÑP˜c\r)( :,ìÔ#>ÑƒAjìİÊ•Ò@­ÄÙ‡VËpÆ?h/—r\n…RÎ‘å˜ PòÂ\n‰Dš\'Í—M”Ë.N•µHgÉ–H/–)÷şZ§’(A© äI‰”—pMR(%H$l÷¼kQêó$fĞ©	¨Mj\"±Vrª­iiÕ!`-¤7´º  hj¥]Q\n¥’KáR‰P]EªWë{÷íÛÇP¾Å*JTãé»ÏLÌ*N\Z××1»÷Ù}—rIdgÚ¶m$£ïeÉŸZ¸ğŞOéóŞãØÊ×±•jxtğ¸ŒÖèó;‚J­JSñ P+u*½\"FiR%ñé‚UiU\rWWMVŒW.Ru)ºUë×+oRs•UÊ¥ÜR‰ ¤{JŒ6$O²L­Ïã(H8%¯°\n…BàfˆÄdA/Sğ2•BÂ-…Ç´ %nS`‘²G5úGÓª´+hO°nÉ²ájTMª«ÓÒRĞ«ÌgŸYAÌÒ×ûVô}Ş÷†\räq2™œOçÿÓ»[ıS´ä@o÷ëtÏÂ6a%èğéµÁ>V)IŠ/S%©Š™+iÒÍ™—ØâÌĞ¯L¦´ğÁv.oğ`Ëæ4½fsx¸ÍDl]ÖÙÖl¢K6%sÉÉ²®¨]Yh$N.´µ7;M=Zˆó8ÍR`=še«&CµD¦%aÆğˆ8’“Á¢–ø¤¡Crórò†I²ÄKeCnB(„Ì|ùø-é¹êÈ{qn[jìô¤¡íÅ›Şh­wäÛ6®¯z&İ\\@Èr’C}7‘ÄO¥aZÃ¨¡–t£14½;|dHdÄ?o¼äæŒŒ$…´zl¡èt){é°õ3<ïÇĞoBñùv¤=y‚rÂ ‹õ¼˜ŠÎ‹ØĞˆ¼^«\'q$á#×;ã£WÊw™õÇz›Vx”6@u\nm–%3`#Fb³Â#Ğÿ\r™˜$Å–b3…c}«ï˜³ÿDÅ¸â\'kë—“Æ¾IS-ëÖµ/Éjíœ4Œ ê«MX‘f&ïœŒçëµ=·Ü}]\"ÚY‰£ô“°\nÂ Zí	\\š2‡¡,âJ%¥Ê\"í$ıÉÊiÑMÒ¹Š\ZcM„‹[¨pi]F#ù*&Fµ9Dr½¼B^\'ïKära£:\\¡ï‚İqÖ8Cºt»bi{ª±]9x cWx´´ÌlòrØ<‘şwŠ1‘5L&üôÓÓò´¿62yÑ+ûìÛH¦‘BŒ}7òsœ«ää‹®+Ê­}ïf¥ná¤¤ï³¾Ÿ¦]ÜŞ<Ûµ	—–ßº•e7Kn©^*Jy)p:\"Ü]’[€è	GÊ5\n§‚ï_«Ñ6œíæ<º,† ŞFe_Y,Ôm\"êÉ[p~MXÉp¡}”ÎÇ„Å$Gn¿\'z[øcÑò¤ëé\r&NĞ*®3êu:m\\—iKéâš.íÀó.Rj\n¤ÚRËR©B5»ÕÇ{³õG¥ú¢ã²şAo’4ØÛÔóÂ¼£Ï0ÌO(ïÛ 	?z¨#™Ú[½evÛ[ós³ÛÓ·Ab˜P”1ùé0—UŞ‘`N‹üé°P·x|y]ÍoíïMä²*Ú1İäk$[ùv	\rap†	D¯‘_ª×ê4§j¤-²&’Ó«º4;\"¼£{Âg9]î«ÍÌ²¤¤³ss©Á’¾\rZƒ±´$«~8µ²¦§ù±ı\\Fñj11^´0“&–½ò2›“‡$I8\'UxÊ1ÛCÂ6*ôæ|¸n%ìNŒ^)İ•€úpBát¢ıD¼ó†!ÉÍ: [Jİ#\"œzˆ$©oOßA¼öO’È¨¾‹%Ag2%Ñ<8Ş,VdUqY8… …¸kG‘}ûzßJ[8·nUrJ|Lêà5³g®Nœ`öõÿ†0B Q;ÕÉèb;ŒpN§Ò)ğìd´\Z‰ZÖ¥ØÊzÉ@= °°7-ÛJG×rÚÀòoˆ\rñ¥óŠi÷ÌwOµ…ğj¹ÜÙ«êîn(¢¯$¸W–E8B6Xa×g[ÇGµv’…ª…Ñ>8½g7kqU†pÆJbù2Ü¤ì¸Ø›Í‰›cõ2jj(Fe2íf>Üœ¼ra¥yhºR¡ÍÈvfİ!­i8¨G­G½Î›Æ\0çlDA5[›ˆQ0Ç\'\r6ä„ûzÚÛıø7tH‚™.U6Ş‘À?aQßÓ}_m8>Á=vTşº)s\ZFLM¾<ÿ†õ¸Æ*—|<ÊT¶¿é/ósyKíëÖÇƒ¯æÇ“äĞŒAfkfJ¢A¦K¾oÉ¯çÄöÎ+±¥\'§†©Âô‰·a¿¤y>åHî‚h˜`OWJ¢%œNåTq*½F¶Y¥ÔEGG`[µôábu±D®Ñw)åm2ÚÌœÜEhc«s€n(…9x°b«½Û‡Á24‡\r”ÙĞ¿·äåğ†­¸ğ¥ıë×“F2¥ï!N§[sAHœRgØò<§9“lïñ¾öá•KJ¤õŞîy_¢À³{8î)Jé é¤ĞB›C—Ê…Ê¸0‰Bg¸NNØnàu1U—œzØQ¶İ±İÎëa¾íò³Ç`–(ú6:îéØùo2Ge--Ét!‹\'M~í\0÷vïËÓ.NLŒ7ó1wo––s¹ôUd¯?\r |Œƒ‘YQÖÄ´¡@H¬„õÒrˆ‚aöø.Ÿã¢¢ÏèôN=§×è5áÏğzE8/h¢Ü\0j·ÆŠóâ(;HÍÉ±² ãR)ZésG[¼³$OX¯¼z…ušÅ41*ËÌ¿-½éÛô„D{´-“–ßwgbXè`û°ë±„-ö\\ïƒÉw§¿úq\r|‘†ÿòú½¸înßõ’÷âGñ+ùWè%„·\n_H†ü×WÉ9x]¼‚Wğ\n^ÁëÿÇ÷Û1üùï¶fCÿÚŸ§²}<,õñ<X¡ÅÇ †ù>^‚|——\"³—Áğz …{}¼†L‚Ç|¼RñÈËxÔ¥åFøxâ¸tÆK0]ÉÍğñâ&0Ÿò@Ê¹|¼\0áœƒñ2L—sİ>^€Hnãé+]jî^/@<w\rãé?\\;¸G|<-éã±şaÏÃ…ü:uòwøx	ò»}¼ùÏ}¼æ\rÔ£€Ağñ\Zn£ úx-L•ng¼’¶]ãã±í25ãU˜\"æãÑfY*ãÕÔ6ÙLöÈ&1^‹ézÙ/€(ke¼Õ3ÓÇÓz¼ùCiÊnõñØ‡2oÌG|<µç.Æ‡aºQö’ Aö$ãÃYş>æÿˆñQ4¿Üèã1¿ÜÛÑtLåù>ÇTÌøX6¦İ>©wìL,¹§ùG3>©¼ÙÇ#÷¶1ƒå_ããiş”—ûõ³Ü¯Ÿå~öËıìWûåWûåWûõ¿Ú×ÿ÷‰Ù¶,›XÚT×ŞÖÑÖà‹ÚÚmíµ®¦¶ÖLqTs³XŞ4»ÑÕ!–×wÔ·Ï«wdN¯owÔ¶ÖŠMb­èj¯uÔ·Ô¶ÏÛ\ZDWc½_E³ÛÛ:4¹®­ÅYÛÚTß‘9 Ö_Éè¶ft :qh¦-GLÈ”âË”A3•Öº°úùbQm»«¾½ª­Sl©](vvÔ£V´¤¡­Õ%ÖvˆÎúö–&—«Ş!ÎZÈì)™6iJÛYÄÙŞæè¬s‰M­âüÆ¦ºF¿²xoj­kît`QW›èhêp6£‚ÚV–jÂu˜«¾Õ•)öënkm^(&7¥ˆõ-³h¡Ÿ«jíÏĞ\"–İÑÔ:[l¯ïpµ7ÕÑ®öÓÅê\ZÎHnB-®ú:.íM¨ÕÑ6¿µ¹­Ö_)Ú\\ëµ´¾]Äæ¶¡*ÄN—³Ó%:êç5ÕÕÓ<õÍÎS\ZÔèr9‡Y­óçÏÏléïúL3«k¡³mv{­³q¡•ªè°Ât¨‡vp@-´bá|ŒÏÆ”zpaüT©:‰ù#§I\Z0î8-u«ÇuJzØ D~\r¿‡Šß‹Ø÷aîlL§2J¡	ê°Dt`hÀ\ZD(B®œk1…~²§2Ù\'zšñ¡ÓfC#Ê:X¬ïTï<f[æiÖ5±|Şvµ³ÏÕã®R‹ü\\L£z©¤S[4›Å;Ñ¦şÜuxoÁ8ÕĞÄôg(9ì4KF£¤ãı’_ëDŠ5Ø ¹ä\05¥œRSÆ@M¥¬¼ÖÏg½GÛåb¹«˜Õ\"këB¼w²~ò¶ÕÛ\'\rL»‹õ;Y¹”ºXL›ÅÊö÷O	LƒI8Ş²í~\'³ØZêXM¬]ó™®:ÄÀz½qš·ÛÓÉÆÆÁò¶!:˜Ü‰ohë>]M¾\Zê|uÕ3¤óäÔvSy3ã’±T\nŞéøÏ\ZĞÈªÖÓjşïûèçÚ¬¦Ù˜ÖÎf‰‹Ù]70«·İ«ıt»†ûõ\0m‰·-.¦¯ß_hıŞ¶:0e>ky›ó[êíçÚ_ôi=×6z[åå;1æd(2kç±ÖÔÔCs63?ù­jd=çD/°â5Ÿ]™¬G9ë3}~fE~!kálÖF\'Ö°Sû[Ñ¿¾¾5\\ß&az#ró°š£ó´c™¦æ1.ÖºÓ×¼#ØÖ¹pk9‚’SåÓYÉSSÇ!6c‰†€Ò2_;qşxgÈÂßlÙiV	&a¤0\\(r…|Á.œ\'L\nN«aê¯®î©u$c§Kèvb{Oï‰IÌï›÷}¨ÓÓ	/ÿÊñôS›xbâñx?ÙÊ~\"|Ÿxåé)]ğ{. _q2wÒ\\ëjÅ²x®œ4uœáå“KEúß^ìÓ¿Àrù¸7.çW‚Ü	pÍmuÍ ehdõ_mxJÄÓ³7¦÷İ“èY\rşr¾›_Ë_1~€Qd\"\"‹ÉğW²Z\\¾Ú|õE4ÀÀ—G\\h[1CªH]5nÕw\Z\"ã6­ˆ˜ˆIc9B²T6…T’¦å¹A°ÕJ•iR\"y6UØ¦ØÒıRbîˆ[#Ø5\'PÛ\"ê™ã¤—ÍìW™`üÇğe_Š}`AÃÆÅşõ¯¥õëænZ’e[!ÔØVğ“6ñá8eæı†ƒe™·<»¯¿t,šâÌJ³¥Hùi‚*4¾¨Í¹°5Åäº1«  ï”CifVœ-Æ›9,àq5Ël3Q9\Zù³¼¼­Í%êt5¶µ7¹Úâ\"4¶<[~6RN–-{F„&+£C1i†m!ë+¬D\ZÊM«È\nµhDªüKmG#Ù\\¨FoÓÒDY¨¬¼ŞÑÒÖêè7Lùk†Ylf¯aƒüåz±¢iv+=	–²­ ñ6ÍÀ\0\"~Ñ¦+¹„À¶…—¾V½µ¤àŞ!Ëzë‡Ä¡ãçï;iºõ_%q`Ì\'¯\\ñ÷¹“Êg¿û{éã›­	#ë÷>oÙ¦\Z·miç¡’=[®Ò–ı#1íëMk,¦£~œuÃQ%w_;ÁtÃş­Öø¿OÈXÜöfXÜğ+\nô‡ö¤oA²=}ƒÇİóh3Y}óÉ×-]ñÃÌMË».[çşzûú;_È¿§ì²ˆÁ«Ï?d;çÿçç-|ÕÑæ‚Í™CN<’ùòÒYW/h¸yc‡fÕC_?õ¸crÈ•uÏ¦¿™]ul×„\rÃË*\"Ÿo˜²pË«Ÿ>ò¶ekZ%=CŸ¸$aOyÃy7œÿ\\Ú’œÖ®±Ò·¾8a×º\nîÚ·úİ\núÙrçòmË¿³…bwÆ&\nj›R*Ç©+‘ÈxŞ¶üšJ„å7Ú–_¿LÁ‹Î/šÚoµLYb|¸tçÙÛÛÏş|[¡ƒ\'`íˆkF¨ûü]»MGm%Ä#Hl<Şl±4A+„ÆçbŸŸÎúê­§Î¿qJqæÅu_ÚTT¬è\'ÁWù¹OgÄ%÷?¸dBÒ×Ïï>ßuGå`WjçÖU½÷OZ¿\0J<óYäÁ¦hïXü\rWôÏgV?÷}ÅsOŞ¶gzÛ—uÅ÷Ã±\rOßøjÌvÕmQšõ¯¿÷@Ê¥_½§ãoW½S°î¼svç·¼´æ!Kï»G^kR\\½fOßû°kÈ7ß-şA’)ù,eÃµ£ç&_¼-ÿª÷dšW7îß³lÔÜ†{wmÛµnÈ3_óúÅ‹¾}é½Ñï^Ò÷şûë;ñî«š­Î×®ùpòcùw,Îxå¼·‡¨fåq·-Ÿc¹üÄÌº«Ü3v¼^sÅ´®A9ßß¸i…ú‹ÖnMßvûİÏŞÿ–øØ^[Ôe¢Q“º»üø¨÷.´}xMrÓê\'œ|³ùşç—nŸ§Å5f®1³|kL-ya$[uş~$ÁuæOôjºàà\Z“÷ª7óp¨»6ÏŒ±…±—,c	\r‘ßf±d‹È24’,•PÉ¾\rÙgìk¯mx„D¥lY³¤ˆ,Eö¢\'ÙŠT–âÚ{z®ç¹®÷}Ÿ®÷ÏûüÎ9¿ß™sßŸó½ïs\r\n% pÀA²_L€ü?ù6–MÇ¡º.Toxàswš?éş—ì©\"W5İ®ì3#ñ \ru=Ê%‡U±¯İãÉâ¿S8@„A~2L©S ¦özlJÏ{,ïDÕòøÌC+šú¬‡}úZWg¼ê~jgÎë>UÊíØ›esXjét7ŸG¶½“{3ß3bûTx\n—xi 8ñb2^*ŞË³¼ëEwëV3cá…”Øğ0‰µE©ß£— *ş”„0Wš§Ö˜Õå×û+UFâ4·ø¿í×-4EtğÚá)‡ßòº!î>GúÜƒ©tA—I…Æ¤¾•zõdİA–ßz	:Àô³K~Gîø˜q…3”aì²¦Q¢1ÓË=\\Õcï;¦.rbÏ@zósö|b¬7­{êÜÑ„°ƒ×\"«›+ñˆÛÜ>Ö¨§2}Ğ&7v@y€­A?û½¡Ê€\"€ËÂdÉ‡É~JÓ­İ~HÓ]ìí6Ze>7Üe4TÇÛMm´?!U\0ìg€„IıiŞ¿9¡­Û73yüP›ôAĞçs²Ì¯±;«4ò+›ÕWDmåŠ<‹]8JyğŠÛÄZæ¹‚Kª‘¬Úµ¬u±w\"jáâŞ;û¤ÑwnŞDÎ,ˆ<ÍÖïF3Åa03Âã»ÏlåùÁ)~¤s—®øØ‡¡uh$g`%.§¦öÖicEäÑ	)§¶y}Iş8Ñ7ìZsx_‰älA;¬aâ|àäıÉ7c2“dKfr/ü–sâ£ã—oéÚ¶Î*\'Œ_—É÷ñÂ<\rò%gĞ°Z\'ëˆ«&‹Ü\ngzÀ•stØå††¯·H4‰ÀŸĞn¸Ú$³34Èi¤sØíÆ7/<ä(ªDâVõ;ßîİ§Ò\'ƒJŸĞôa;Íô¾$–ÏşHSĞÔçdöú5ZM…\Z@rr˜\rôà¨æ/Ğ:Æv¶îV.WëcœV¯µ¨ïwåiéÔŞChXÉçª–BÕpà´Ïî‘ÔA& ÊãmÆ\rCªu»i—^zÖEß½Ò[dçrÂ{ç‰ÉòŠ—¡Usy8.2‘¹¯:hå#Şp´qÜoühd~´ş|ğİ ÇzLÒ›†Lø©}ƒ\rDÿr1h™‰ùi~ëõ ?¥¹^¨˜>ÎËƒŞ²Ñb #åÙ\n›‚ãıˆkN>c3{Î¦dºÂJâyCevì±8¥=*Âfx}ùo¬ÃœØ9Î¥6¶şPØ\"™ènNöÉn?F7C[&[±”d¢b\ZšäT,(¥İîœ®1vz2P<Îş#oÈ`õıqş?Ôã§Ì‚¼ùg¶o@é<i ’R%—¯vöfúT¢šFó`û—\\(3|ˆ°™Æj€Ô¾WBQ?T’>;²ÑÏ°†=î‚=ã¢ûÒİ¸V…‘Vz½ÒˆÊ?‹‹¯È1a\Z)WäëZ-Èm­(1æsf°°§ÉÑšu(sô©Ôzò:–µ>\n}k:à…‹¥æù„îöÎ‘¸†\'õ’~3­E¨Şğª6ë;è.ázâ¨bZ)Ÿ{¦pÄ@Y‡qÌbz£íş4„xú±(VÅ»œ¶ŞÚ5÷ƒğÅÇMG/pã‘C8Ò2§pŒM5”²ÑñÕŠ¨^‡Ú.ï¢ñH,¥ubnÏFXùiÏoKgÆBøÃèš(¨ÊgªÍåÚ«‘£“\'0±‹\"”ôöb/c#…>·½×w¼¥*\n¨„Ïòˆ.IúãÖ¯“G\0Á£°T5$OE\n¹É(Ù&rÃH¥ÿ„<Ú	ˆ}4áN\Zv.…ó½M!M‚F\r‹’Fc±jÒ8-\n)ìø¸&şï×$MØX”ÁÖm£Ğş—xK&mRç1òL=÷a8¼kv–s*ƒà ®éæS$÷]5±ƒ<K\nĞ}èúÒô¨FÃaÕ¹ÀõÕ®.¿„Î¤mšª—ßŒX=‘àéâÒD•ßµ(qE‘˜ö—¯ï›ß~jlÁæì¹ÉÛË9u!ïû¢;i•kÁDÃ4K![ÃbÕYJH)İ¿ô!ÕL^\0¿µ;\0·RQF—špq{%+²­€ŠŸZbòwÖXKis‘;L]İ•È]ò¥O•t¡©”ıWÚhS¶ˆn½Şa:/c7â=6#‰!¦åk/ÂuÑ¥¥K²Wô²Ï¢KÀ2o¼SÊT™ÑRüVN}\"9¢¢8=”Tí¯ÅºÒ¶±ŞõRú)1ş¥äáîbmõ_QJŸgòø9¬¿Ót\r?£h®àıÓîˆ÷$ÆÍª:@ä€mM¢‡9j®¼³ï_‹m»AäyûîÉ½²*50/¦PCqYi—ÍEÄT2•{p\"*J=ŸH2>Æ?NUI©ã M±WÛÜ70TÔ‹ú°}D¬¨—>¥{çÙ«eµm–àéCşDŸgÎkáB‰é1iõGy³¸Ñ±ì\0«x	‰Û:ÿRĞœí\rÁKÉ+>WSç˜™útø:Õc}‹_KÇZJ<©‹\rŒç&–[åÚ™çÌa­0UˆRŒV¨hjO8Ä¯eb¶-Aß„to	PÕ4x¼=¢ö\rÛ«ŞÇx™Ñ‚×˜øx\r#‰c®ğ@I†£+¤ğ_˜²}—H~-ue‘š7N§OÛÆHƒdş¶F}ïW‹		¾}ÊM¥Æ—P$ÕÕ½I¯Ğ79YŠ–RıÑçŸ7T°ä™§\'¾ÂŒ4L²¤‚$ÿşíÖñ Ñ¿q—\'ô™ d0ÈÈşé·(›swjy_<.X]§¼!B\rö!›}r—û3a”(¶ÎÄÖËêE‘GLPä½‘d“š¾iõıÅ½-ïê…è7)z:Émè3ğÚØt´3§¾Ş•\"¥İËÃ¢;sÅøh{Ó~¯½ÂÙL…U++Å†·äóíkJRR)6aÃ„¤kØü’l¼h}$IAM…Õ-‡­­*ó}cF+;k¨û=œ÷Ë%rãuÚ!AÊXß„²#Q)Z„UBY~ÆZê\rªÅk¾€:Y«L†²ƒéà`,E/ıö!‘\\Ğ*ŸAJ0ã¿5H¸`–Ò¼ZúèÂ¶İqö] C2„ïë.Ñ!ÉfjÃ?î?‘ßÜôŸÜ1ËàùÖ™¾~ÁÔw~yB‹d¥¨\0€¥¯H”¬¼œÙ\\Qõ:æfÛä¤Ñåş¹W“°{ƒg&~àÓ†‹øÏ4÷¶L†è>äsåß¡tK£º›Õê\rÏIşş,ƒf`|2¤dĞÎ¿«YÒ©÷bRüôŠ+Oß€…%òÆ»¢²J…ìTì]\0‘„(˜Ÿã\ng¦u/“º|üîÅõâBg–ºÉe,££­¶zThÑu\ZÌÌşLÎóºÒjün^ë›ÓÄTèŞšæ¯ÎûmÅÔ·Í‘¯Ş(’špröuæ|g¶‰T¦ N˜wæ$–\"Wè³êá)IGÆ™˜F#·>PÏHvò½TbÂ¹çíĞLB´şëîÇåD!Ã¨ªÄl_™öS<ùğé-ê\\ŞúÅûXÉ$lÏ™k4ÊxoèßSÂ‚\r\nendstream\r\nendobj\r\n73 0 obj\r\n[ 352 0 0 0 0 1076 0 0 0 0 0 0 0 0 0 0 636 636 636 636 636 636 0 0 0 0 0 0 0 0 0 0 0 684 0 0 771 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 601 0 0 623 596 0 0 0 274 0 0 0 0 633 0 623 0 427 521 394] \r\nendobj\r\n74 0 obj\r\n<</Filter/FlateDecode/Length 14448/Length1 55068>>\r\nstream\r\nxœì}	xTÕù÷{×¹³/™™Lf’ÌL&	IÈJ 0—,@	&èHA‚¤€¬\"pÇ¥Š­­­Õ\ZB@@Tê\n**nmq)*®¥-RE’ù¿çÌLrm§_ÛïƒïyşÏs7÷7ï=÷œsï}Ïûó3K€\0\'­Õ3k\'j–ÿ¤\ZàÉí\0©k\'V×L€\\n?À½˜+sâôú™š2S¿Ç£&Îlª<ıi.æ7àñ-S\ZgNZ]_Q\0 ë\0à«Ÿ*\\6ãŠ\'˜Oñ|ë¬ê©Í+ş²v	€)@86oI[ç¡·¦¾°ñUÌsç¼•+|S~6Ø‚ç™m—t.XrÿËK\Z\0®]Àî[Ğ¶¼RA‹×¿ë³,X¼ú’Ş¢}ã¶â=¦ÚÑ¾dÕóŸÔ\0Øy€å/uÌok?úÃù»±.,¥˜`\"Õâ1)Ÿİ±dÅªåkŒcİ“\0$ß¥ó—]·Á2€]vò¼‹—Îk»è•ö§\0ÆüšÎ%m«:ÅîR,Ïû.k[2ÿ®«waşb\0íÔÎ¥ËWDëaŞßÕä|ç²ùRçW2ÀõCñ\ZgèZ0¾å““›æ˜+¾ş¸zy=ôĞ¡ç¿»¦ïfıÍêŸ“…°œ¤ïŸ`ÈÇó?ĞßLkR¢…¤pÂ8è1Á,tx]šÂ[™­xVîŠ°ÊœØ+·V±HÀêExåï1*ƒïB¢aRpêLŸ0¶‹™ı-ğ‚¤g~ëæ^rGÈ“#Åo‰}5¶s¹L€{~•¸Aén¸şCN¸Vp2N|½÷pŸŠûcÿiyZÇ*p\'d1ş»üâÿ>ÏşeèÏÂbşX¤<ÏÂ#ÿXF°ÀŞx~úÊ-‚½|.ã†`»ªP¡B…\nÿ+Á=Ê0éé#Lı\r&ê)¹\nÒrv’ZŒø‡;ôÒÒx˜gµ§V¡BE0`€o¤(H Eûq~¢CÖQÖƒÙ\0d#£}èä&d3˜‘-”­`E¶-zR Ùde\'8‘S!5ú¸À…œnd7x=”Ó!=z2 92‘½àCöQöƒ?ú-dAr\0ÈÙƒœ¹È¹ÈßÀ‚<†\"ƒaÈyD\"ÿò!¹\0\n‡ÃpäŒ@#£§a$åB(D.‚\"äb(F.Òè×PJ¹ÊGÁ(är(G\rc¢§`T WÀXä±”ÇÁ8ä0„£ÃÙÕxäñ”+¡¹\nª«¡:úW¨	È`\"òDÊ“`r-ÔFÿ“a2rLAS‘§RÓ¢\'¡ê‘§CrÌ@üÌ„™ÈĞˆÜMÈ³àä 9ú%4SnäÙ0ùB¸ù\"ˆD¿€å‹ábä90¹Z‘Û`nôÏ0—ò<˜‡ÜíÈóa>ò%° ú9,€äÊa!ò\"X„|)\\\ZıÃä%”/ƒË—ÂRäNèŒ~\n?€eÈË(/‡åÈ+`òåpyôX	+‘«WQ^\r«‘×ÀšèÇp\\¼~„ü#Ê?†#¯ƒuÑ`=¬G¾~‚ü¸\nù*ÊWÃÕÑã°6 _× o„.ä.Ê×ÂµÑalB¾®C¾n@¾6#oFş\0¶Àä­°ùF¸ù&¸ùfä÷á¸ùV¸ù6¸\rùvØ†¼\rîˆƒ;(ß	w!ßEùn¸ù§pOôOpå{a;òvÊ÷Á}È?ƒŸGßƒŸÃıÈ÷Sşüù—”€¢ïâ¬ü×È¿¦ü üù7”‚‡¢ïÀÃğ[äßÂ#È@7r7å°#ú6ô@òNèEî…]È»`7ònä£ğ(<Š¼ö\"ï…}Èûà1äÇÿûa?òãğ8òğ$ò“p\0ù\0ü.úøå§à)ä§áägàYäg‘ÏÁsÈÏÃóÈá ò!xùx1ú¼/!¿Dù0F~^A~^¾	¯R>G_ƒ×_‡×‘ß€7£¸S~~ü{Ê€? ÿF_‡£ğ6òÛğò;”ß…w‘ßƒ÷¢¯ÁŸàò1ÊïÃÈPş>ŒãğòGğ1òÇğ	ò\'”?…O£¯Âgğòçğgä?Sş¾@>\'¢¯À—ğ%òWpù$üù/ğWä¿\"¿ƒ¿!Ÿ‚SÈ_ÃiäÓğwä¿#†oàäoá[ä3ğòwp6úœ…>ä>èGî§…(2`?\nÜ~­^\'$°\Z€†B1Hô/m’¡BÄ?Ü‹ˆÀ‹üù”T¨PƒN¯çÿïjşïjHˆû®7ÕwU¨8ÏĞôqß5&&w\\ö?ò]Aõ]*Î/Fú® Ò•É$\nE.¥ïê’ÔBbj’Ÿ‹H h„ótÃ*T¨ 0\Z d¾ûò]­Âw•ïTøgßÏÓ\r«P¡‚Âd6¡ï’…&ó`¢–B‘K§pÙá»ÚßÕâ&JªïªPq^a¶˜‰ïjâ0ŒAG¡È¥ô]Åø<\02._W}W…Šÿ_°X- ŠÄw»ù\'ßÕ+–²’ù®”ÁW!v Q«I’M…\nçV›}Wƒ¯m0ñŸ>gP¸¬â“z ãò€ïêqÓ¨¾«BÅù…-Å÷İ”ÁÄd¾;à²Šyñ`R¾+©¾«BÅùEŠ=…¼‹“Uû`¢B‘Ë¨pYK’ZHLM|—Nr\r¸I:ÕwU¨8¯°;íè»ú®s0ÑH¡ÈeRøn²¯£ˆ¿CÜwx¨ÕII²©P¡âœÁ‘ê ¾‹“ÕÔÁÄd¾kIÈŠyñ`ø7Îâ¾k­^õ]*Î+œ.\'H’}×5˜h¢Pä2+†[Å¼x\0è·¦ß5áF¾â B…ŠóˆÔ´Tâ»zÅW¹ÑU)¹,Šá6™ï’/Š_§¾kÆCAõ]*Î+\\nWÜwİƒ‰É|wÀekZ óa…ïšAgT}W…Šó\nO†t:½ c0ÑJ¡È…ƒ®#!+æÅ°`Ü..[q3˜’}tR…\nçŞâ»FúUülŠ\\vÅ2´b^<\0ôsñu:ØÚp3˜UßU¡â¼Â—å½ŞˆrÖ`¢B‘Ë©˜{’Ô‚µÕÔwí¸™¬É>:©B…Šs¶â»Š_tP(r¥*|7=I-èçâëÔw¸©¾«BÅyFÎĞ0\ZÍğLtQ(r¥)¦ÃŠØz\08.§’ š~!7KJ²NªP¡âœ!¯ Ìf+¼ƒ‰\nE®ò¿â$©}ÛMfú9J¸ÁæT\rX…ŠóŠá…ÃÁb±9è¯u\'A¡ÈåU¸ì$µ`A|únnvW²_©P¡âœ¡°´l6;NhK}Š\\Y\n—ÍKRK&º7î±=ûĞÕîdo«P¡âœ¡tt)¤¤80à=˜˜E¡È•£pÙáIjñaÜc¾›…[jº#I6*Tœ3Œ7\ZìöTxÿÊ-‡B‘k¨b:<2I-Pg“ šúndCZf²p¨P¡âœ¡jR¸\\nœĞN\ZLR(ráX[œG%©};¬SÓInnw’l*T¨8g¨k¨·;ä†ÁÄŠ\\EŠ:œ¤”Cd`¦r7ßÌós¿*T¨ˆafËLÈÈğç’o=€\nE®r\09!OHRK!Ë$–¦ï	—àúÏÏıªP¡\"†‹æ]>_vÀ¼ÁÄÑŠ\\8ÖNLÈÓ’ÔR†î{ÌwG£«‘ìŸÂªP¡âœ¡}q;CpB»x0Q¦Päª˜š“ÔR0÷ØgÃ0‚ÅÉŞV¡BÅ¹}µG$Æ»ñD|eY’çûÀ“ùdŠ_¶I±;œ©ÊRf+Ş‘äºØ!L$dSÈAÌ„¦Yü??L2pÿwÅxXäc\'¬À\0Yƒ³ñx×S¡\ræÃB¸:alF¼I–ƒÏ˜8Û?»Œœ~ø/¶y*şMe¥…¡áù¹9^{ŠÍj4<›ïëærj5¶M¾šß¦@ukuA~İŒæšjßßRïÃäj_7Óê«é°²Ãµ©†dè¶»Ùœ\Z²/ê–¯kE!Pí÷ûñLÊà™=Ñ×+NùvËmİpoGşM×ï±ÀÜÖ ¡=ĞŞvQs7×†×Úx3ÍäÈŞÚáëæ±4%¦Äo‘œëhETc©¤é˜¬­jŞè?àé¶ákM·5Ø=sL\\sÜÃmªq-ô‘ÃM›6úº·74+Ïú	·´´¸¾§†		­›6Mø&ljİÔ¶\'º~nÀg	lÚQW·©³¦Õ×\rÓ›»Lßw§{Âõ-İ–Öf4>2y	3šÃ¿kñûÉó^·G†¹xĞ½¾¡9vìƒ¹CÁ–n¶•œ98ãh\"gÖ\'Îo\rP]W5s+®›¨k˜İì«ÙÔ\Z¿áxÊ¨ØÑ*w˜®†2Ó5svó^ÚYWcsË°U­•-;²ñ\\ó^\Z\nMeI*I$>r\0uª£‡•h~Ï^`==ËÓz<o4MJ¤10oK³$ÒXLãci2M#À‡a«\Z›•w;¹w€½Ğ= gö+,µôøzäé==ë{¶÷t÷¼Ús¬Gw çd‹¶&wîJu•z«ó,ï,¶¾iN»´‘¹·ñ‘F¶af*?c¦“Ÿ9ÃÁO®ÁO¨-ã\'Öò“p¯-)ç+Â…üØğX~\\ØÏW…3øÊğ~<î2îá’B¾°¨/*)æKŠùâ’LşÕâcÅ\'‹¹=Ñ/wöæL*İ=¶³×À×/ec¯Ö\\ÚëÄ¯ÜyÍN¼­“;wÒgäèNmvéNû$şÚ®¾sqç*Ö|÷ŸîaåŸ:ÓJå»RùöT”nKõ”^³!Åk¾Ú¼Á¼Ù¼Å¼Õ{µw³wKhóú\rë»¶Ü¸uÃÖ[»ÌòO´–Ró2ï2VşÖPj^Âø2¾ç™ğs_=Çú•Ÿea.s-sY¹m{k¾)°[ù|{´—óyö~˜İÁ{í™¼ßWÅûìü!w\rïöLä=î\nŞm/ä˜/o×fwóVÜ;íŒl_Uj6åyAdŒO×y\rOÕyuê¼ZÜ…ıu^şñ:/··ÎËî«ó2»ë¼ğh÷é§ò¼Ìó>.ÏÚï÷îÛë÷>ºÛï}êégŒOøqÿãOöî{Ì°ûÑ=ËşõûYyïú½¬ywxwıîu»yóîŠKQ|r÷+»£»%¶Œ7Yì»8–e€.0{˜(Óm«ƒºÆÊî_gVîĞëºÛgTn¸á†ŒîÛĞr»×g´ì‘0úi7³¹¥[ª›cï§,_±|y0	º¹šn±¦£­[T/\'&r`ÂŞÂTÓm&²9Pdºí5İv”ş©’å	—ÇOÆ.D	.OvMr/+ƒA1S´\'…#üZ>Â½K¾ ı$ú~ÿªşöşîú¥‚ÛàAt‘çàåÎ~?<E_WB€¿7\\	·À/á%8\n_\r¤mƒ{à7Ğı½|[iêığkø-ì„}ğ4¦uÁ˜úxH‘o)l„-pl‡×™ÄG0ŸfíLì>{„YÎl7äãˆv,‡Ã5x_™)˜6Ó¦cê2X7aê^8˜dğ\Z³ ‹pÜ9~GÓò0µGÇE4-†À\Z¸îƒà1¼¯5xg7ÂIê»’õ³~o?Â’/0·²Ïá=\0D;ù\"†p„h•Ä¾°} ¿=ú5üsÙSìÏØávÆ,p5äWF8|±?*²<=tøİÃ”Fğ[ıÖ$sY/ÀwäÖ“Àf™\0‡×\"¥Ûd‡Ö¬i$³–o0Ø&>ÈE„=Ñw{-¶	…/zÍf*œé5\Z©ğ‡^½>vJÖiµl“Yğ\n¬ŠP:Ş<ğ‰¢Pxä†p)’\"–s?˜şÖK/	G¾;Ä—	½½ñ¯¸#/ÚéäÊV9\rcÖÊZ–ËÒ…óùšĞ‰¢HèVWQªˆUG6^üî¢½ïq¶Šìä¾o~(i„ 3NÁ†@Ü-/ÓJ¢Nëİæ—”ªs¹RİÃ¤\\İ0W®{‚q’Y.™el6w˜RV{Wæ¬®Éç4„¸zå8oƒ–5s&)ØàK“ÓØ´´‘\r)ºzƒlb\r¦áyàdœÎ¡y“h¶ÈÖ’g&±PVEáÃGN„\"¶òò˜Š)$r\"½FğY\"Œ]då–—:s˜€VyÌç²D‡İYTXª”¹÷ìŞ÷DÏ®}ìÎ³§~ÁØ\rä€$y¬¥ı’ææKÚ[ø›¤âcGşéØÑwœ	¡î_Bé]Laö<ÔÕõğÃ7ö§Ælk£ïó[„¯P{øµœUÊ”ë‹\rclc\\Å™5L­¾ÚPg«sUg\ZµZÖ_ËéÌ{¢ß !T6¡p¶×` Â©İÄ„Ì~ÀˆÚ\r\n§ä!Ä^ÀENÁ=9æoë‘HQOÊy¨İyü\"’SH)ÑBìJ4râ¶lËi4¬¸G$ThøÄÈÆÂú}¬ÕbóûlLiiIqî\\¢.H4–ê$Jã·|×ÿMÿ©¿Ÿa´ŒáïıßÒÒ²«ç\\|EvVš3Û¿ºıâµìgıKû¯eÖ2›˜˜+ú×İÕğöÛM›:mZıä/7ßıÚÌi3¦áœq¢Vo¡…í“ÓŒô!L”ò(&Ê<ÑˆÑXÙ„#õY¹œHÂQ4p&n#™­^++°^3c6LôÙMFƒAl2ùØ0·”ëä8Î@œK“õDœ“èƒ#ºÌ :á2I)N$ÉYŒF™ÔÀ…]y¤µT^Š„ŠĞøú\nÃE!T;é÷—`ÿPRXZVZZVdõóg2¥ı/„·æ/áïbFlã>îrØÓ¦?óZõ}øÌ7\n\'q†Ğ\'7L÷¶zY­NÎaÍ¶FKLáŒpf¹·N˜d¬1ÕgÔgÖzçp>\"\\¨e“v±\'’>\'cNæ\"®]œoëXšÙÉ®°®s¯K_—™ƒõi/¹wŒY>•G‰ü·¬)”>Â,›E³L-J6àCÍÌ¬ŸœÂ²ŞÉŒäe¥„JDÕiä¼äw\ZˆÒœ¢4\'Oæ$ªK#59äN§ï,s–7‹EEßá·œFM¢êAÍÙÊ©ÒĞY‰.G@b\"¨¶R¢²êš\0‘p…ùóó7µ,|ıÂ›ï¸öÂ7æë&XúÃó†,¬»ôø<ÎdvoË¾·×­¸J®|-0úİÇ›n®·ªvá³¨ãĞûÖ¢ÇÂr³^/„ÜzGh˜>74¬¢B_b™Uš¬¯±WeU…f1-B‹¾)´HIhQÅ*ıÊĞŠ’+*ÜÅ£«G³cF£î™k[P0l²W;’5½FÖh´NÖê	]ˆ®Ò‰®ş2j€e<1¥2‘è¦,s¸3‘ÓIrf“œN?7<s4Aœ›ÚÚÛö°9ì\r³†;ÇY>X>­©åÔ_(Š)2Öñ…m´\'õ•—GˆÓ:1­a7¤¤ˆ:iÙ€óâxQ¨pä˜š‰+“2§“77¹ªîÅÕkON57}|ixsşğ‚¢‚‚õ“gOØ¶kø°àÜqsŞšC´¿ä—U“&?òÃkÙÃÁŸ,¸äÁğ„ª1#£&ç\rË_Ô0}a¦7õ—ëÖ”6¸İöêqGc†æèºpí^—I*Âşp*ZıN)u`dŠå…õr-e†2KY¢¯¥ÌPf)K<q{-e†2K™7ÚÙÆbcµ±Ó(\Z\\D‹ã$´ƒ¨Ñ\ZkÌ(ÒH² p\Z“Âºz«3›½fVcÀåT/¥÷Dÿ&›H6Ş§Ó\ZÅz‘aöDËzbíŒdaC6Cæ…$/Ã˜E¯91—t0\"K;[—¢³¥Ö ÒÛC‰®„\n8œÑN¥<BÆ3lÒP°¢¯9ìW6ZúøA&¢Œ&™€5€½Sd-ò[~ç»úÊØ#{ŞíŸ×÷$óóşóó¹Ig—±ÛûZÉjÌcèPßypHnòS]eQÖIn)(•J¬cuRµu¶Ô8l‘´F2dd¸kÉ`\"çp92É™ãŸœ#f²f5¦3Mu¾,I‘å«Ï`2HÀâ\"O™á$O™a\"ÊÉ g†=añvbñÒ‚v?ø2´@óÂ½ùæ|o>«½+3tkyÌÎ©fNCƒv\nFú\nCÄÊQÿÚÊÑ²­~‡ßš0n~Ã”ÊIÏ_µæƒi¦ï,š¸¡8¿ $T|ëEÍ?Ã­ïœí_½{ÊôfæOŒŸPW”ızqíĞÂàªú©‹|¹^—>Ò¿‚ç‡—ım×áĞÅ¨K\rZï²…8+ZeYKLìÚåŠ	ACºÇ•Dš,ÖhX­V\'±†±c\rZ·‘gx» ˆkÅå\Z–+ÖÉÄxt2Qß¬ëÔq:­Nä˜5ƒ¡¤AKædC9TÂlŒ•WŸÖºÌ€§tBP(¦\nMÂ|á\nA#´ëQŸØõb´”Zf©——“P’ŒV4«Èb/Òj_@ëp~.ÀøSF¸øõ›úÖŞtˆÍd¤µıßõŸaîíoœ]Å¾İ—ƒºÀÈ^èA]˜ Ş”å¶ZÛB¶ÃÈ;‹%.µX#­†„2r\ne #\"\rYöD?ˆbz‰— ğ9õ?\Z×ä‘VxÍŞWÆq‘O¥]B*Î‘í\Z©JC‚R\nGcÃ¹F\"uáñ—´.\r©”(…¿ô’:‰°›6ÌâL\Zò$Æ¥HâèD0H É+Ã!½OuÚ4ñnÔ\Z³7¡gÇÍ—|w¸¿‹Yq”aZ¶=øÊšÕÍÏmÚ·oË›-K—²Ÿ¼Ø¿ûÂğ(áH¸lNÿ3o=r²¦pÈwWå•Oü}’èî4êÎÀ¬—ÌÒ1£ØQB©n)ÛÊ-ZuëØNnĞ©Ó7igéfë¹vnw9¶¼å´\",O‡k~.íö¨Íğ2ypZğ¾šoä\Z½–cP):=\'°4š$İeÂ#Y²ˆa$zcíI[‡(m!:Ò\rözà¦•»hÓĞA\nV™Ì&¯iº‰$rCíUÚTÚë	<íuS4–ÿ¾Ù>O4Û—ñf3~¯Ù‚AEÓÅRp ÄiM¸ÂVŸ8U56÷ó‹x6Ò‚bO;ÏDZĞ\'H/ƒÈ2ÀÊÒ£2Œ_8ı\\ÿÜ•ıó÷2&ŒW×3)wövná™>´û§¹±hõØ›fğ« Š˜—÷B&uôÊ¦bWÉ ãi:G€ÚÈçS. ÜbjÈ¼(¡©5ciÁº5öÎŒ+òu¬4tì«le­VŸ”¾\'ú‚œJª©OgÒÓ]a?r¼¤ÃØ–v³§¥×²¡mhü‡Æ<)ëÉéjlÂ³ØÄÈF™i¬2ô Ò·ÅıñcÙJ[œYñ¶Í?¨@ãelrúÔLZ-‰(©9ÜXb.ñ–„K¸á±ûb›†Ó¸.‘\"Ã©m§ƒÆpX^¹¾z‰”Ñ§“kë\rTÉ…õNr=ô:r)=íkI)ä\rÅƒM?`4ZJÀZné‹‹…„’áõP‚Vb\'lhÄJ˜¾¯DŒ+8Y,+Í.K\Z,qV1>\"S ŒÇÒš††ÖÌ¸ıµ%ó/a2ï/ÈÚ9vòî6]Ù«óW>\"‡+›õYuCûŠÎ»ÿ‡Ö±¶TïÁ»Öı´ À\'eÈ®TËœ\'ÍÙCBÃoZÜŸÁ”	ö”Ô¶¦Ö¶©ä]•ÅhiU8O3YÎ©pHå«wW¦Oò5‹b§EkcX«à\Zoâ)³RĞYíJ³8IíRiÉìÁ³‡,9ŞŸ–Ô,$jšJ]ò¨%èâ†ñ¥Ü@íÁ›WP+¸	ÃşpÖÀ”Ü‡Ç¢˜‡Ò€Àã‘$rF¢M(éhHGƒœhôËArE‰^Q¢DËJ4Œ–h·CÊ#oğ\'m|EZ_¢áI‡Æ¶.ckÓVd±VÒÄ´M­Eœ5wp)€¯ÚßĞ½ààŸjªwµ5wÕíß?eÕÄ{º»n›~ÿå¦1ÅŒuó{Ó¦LÏÂ?e¯Ìr¿óÂó¯L$-¶(ú1ßÊ¯xQ’Ë#ø1ÆŠÌ*¾ÎX—9Û8İ¹ÈØšºÊ¸&ÓÄTx½æô±^O¦g4.Õë5a³Ö`ğSöÓùY\Z6Io\\ˆµh\ZSD…inğ\r™´	¶øÍ~¯?ìç¼±Ğ88ÇÂj†j’„°¯zl´l´l´l´lTë6‰äµQ­Ûh	K.`ÛàSh8¦àÂˆåTBÿE±x-H´¢ËşÄbAY‘õî#?ZThsÄıŠo={h\\iñ–YË>©›óÜ’şÏû2ÁS|ı(sóm·ï4°wŒ1âÂüÃCK™ÆÁØ˜Êşoş–wËÏz®F?‚îUÂÛd­‹¹`/pqó‡„ˆ±Á¦’,ª•­DÒğ„y>î±|Œ¢À)*	A“XsX|ˆ{-Ä„@JÉV\"iè\nÏÇóÀ^\\§š•õÆ2–AZ§e´7‘NVÎ§ÍØÊS»¯Š¤ëã©Åón†N(˜Öu	2ßK,!ÆW1âƒ-?ã+‰1›!İKªA!JÇO¡K\Zh¿ÈñX~LúÅ06áÀBÆ÷§%E=ÌUo¼aØ¿_p=}&‡™Å^œÉÍA{w2É)œÃé¸ÜÁYŒRe\no£ôßöFßĞ{ec‹]t”\"ã<.9+§Ò.‰§]\r +nıı½ñ^éÄĞ\rh¯tÀ ¦ ¦cÕ.¯«ÕÅZôÔôõÔ5ôÔ5ôTåzªF½DÇªx½Û˜Ğ6\nÇhÈjL¨ÙHzK=)h¤ñøóØ(i¤UIĞIj!Ânr/Æ®Ôòê?ŠN+ÔIO¡Nm°!´ÛrğsöÛ\\i×MıÕÔıû›÷ÏÛõ»vêÆÜ¼aSÆœ}‚¬­qô0é•öö·ó[±•È8Ò$ç²åB_[ë¨ôÍ²-°ıXZ›®3iÅÔJ+o2eQ«7|oÒF›Ğ¾\'èØ\r†ÂiÚNv]”ŒÇ¯&\ZìdÌ6IÄ@ÿšh¤/i3CÌHc‚<†6ÕÖØ\0bòhãkt¦[ *ÖÒv\"²Hed·!ÑB(|»¦f6$ÜÀh1\"ÄZÈ@½Ë³K*|E[ÈĞåOÖB±.NÙ@4 c\néäf£ÍcãbkYÖØBéÖi+w¶_pCíşıu-záı§6mi¸¿núòÚŸv³]ïO›Ü;´?_øöòpSÿ+ı_¼ppByßÆl÷q/ã–¡ÃÙàˆl£Åè3r­}¯Jg´	Ş“©“òhªe°ËöN;kĞPEj¨\"5T‘\Zª\rU¤†jAC©qkŠÔt,q­\'©%ú³’h³‰µ:Ú‰É.\nßR-j»R’Ú¹•,x æ*po¥¦ÍşÑ¬S¹eº¼úÒ~†ãnçoZFæçs[uÚ©cÏ~ÂG~1»NĞ F.‹~Äıcğ\"æ\Zù‘Õzlš\'W›—]¨­È®ÔNÉ¾Xˆ8gúg…\Z—\n‹­¾öĞüBû\Zau…oõĞÁML—qƒ{ãĞ[˜;=z0¹†ñ™Üú,&K&6œ••;.“×.›Æ¦\Z~§õ›HÈ:–¨cÕİ0ªµaT¿Ã¨f‡Ñw˜§„Ü.:ºèÔÉEûªq)ä2%|(.ˆDˆ9œ)ÑUšH—§\'5š<àwih_÷±Nñ”¬§¡=îc®õMÂµ¾‘‡P×ÚĞç”¬+4Nú`4¸Ö¸ië_SLÃæÁà9¾Œ/Å$ú¥ñ)b¥Ó¨Hâ—ÄZLIñÒ]á_É@ŒåÄ#¬Tâ~ß÷öÚW&èZ¶¯½>7wñĞ+Kn¾¢|ô¨‡/m?\\­›ôò¼›ƒy_¼jâD¦ògÆ^¯ªŸ>«2+Ë¥u™†Ü~YÍš¡²‘C%µõÓj§Á¥Ë¬L<f\\ôs¶O¸<ğ¼ÜhÜBPàôÍ8£^\'x<©aN[Ÿ±.ƒ5Áõ’ÑB›ĞB]ÄBÒB­ŞB›ÙÂ%Yhc[Ü:I#-ehïÉV:™õÑù«!>=˜¿ÆİD“NÜDCë K±p[“Jç´]éÊ~¿°pÀOB–Ó…ô½…P¸¨(¶ä•›•Xq(¶Ñå­Á°Ší+ùÑÈßô¬[·Ÿ¹º­ärN­ŞîÔéL¶=/²3îaÆ÷?yO?×</84ÇC~TÒßÚá²1ùI·\'ÙröÏ\\/¿X°ı‹mÙÄÒÜ4)ÿÙ&M\"›Ö¯=\ZÛtw$6ıbıbÃÜŞ4~dZ¡nê¦nê¦nêö¿oƒØ‡¥İÈ,¨œ\rD¿€&¨¾C?½4œ>ğißBH|¸š\rÅdåuq™ÃÔ%q™Wä°öqYT¤k`Ì€¬Ü—Ìx8.› ù–|Â›çÈ]²*([Ø\"*‹4½ŠÊ\Zš^Oe‰Ês¨Lb‹vvi\\fÀÄ¾—Y0qKâ2í\\m\\æypq?ŠË¢\"]+d-¤sÇe#»;—MĞ(¶QY§¸=¹7q•\rŠt‘Åg©l!÷&¾Iå”mâ‡T¶+ò;è3Æd§\"=–ıšÊz­XÿSİµ€Å´½ı=·.º(%•ÔVR‘Ú3İï’.Ò…J‡BÍ­\ZM3cfºº\'RG|¡9$:•BR8…J„\")ú»„$\nõ_{w1è|ÿó<ß÷ó|ÍÓÚû}×»ŞËZïúÍ»w³§Y\"2\Z\"çsPyqv¾\0;—GÏ%D|–Ñ/-Â—óÿLAÈdØEçsÜ !ìÀåó¸|ªÅåÀöl6ìÅ\n\n`/¦€É`2|™|•C…Y˜\nùT3ŒÊ…¹A°0„)¢(˜Ï\rç¡l:7ŒGå°˜ƒ‰NËq%^Ìàp6•Ò`61@Œ`İ	9=wªh„¨|!“¿Š‡Q£ápq9B˜*€yL~K(d2`Z4æ†ã\n7{ĞËÇŸË§aaÑCDÆ‚#‹Cg‡3ÀP!f°<60@å0À( )&Gh\0ÛærØÑ°.Kf†ÑĞA_UqÆ…\'õg°8Á0Ÿ)òYtt†E¬ƒáº¬0tYÀŠ†.Ÿ¬2¸‘6—*jøLõ”É‡A¸\\`\n´áB^¸f0#Xt&*Âdó¾(D(äY\Z\ZFFF\Z„O·X*Ca4Ì§òB¢\rQCÈâB|\0Tˆ\rq h@Ñ hœÄÄ>pÙ~¿ö{CBpä€K*à1û¿ª	5à÷,áát‚x ¼`ÈbAt Ç…à7Œ…!Lk©€ÃgÈ\0ôØılpô¼`(ô	0Š	L ZôÅ(æH°09ôLˆéd€ş0Ì¿PÀCí¢=!€;¹GÁ|\Z—¦ƒc Q,Ì¾Á$#-ğõ5hbcÖÇûc1Â	Ğƒ€†t\'Ñ§‡=î!ó5›+TÓ²\nóÆ\"‹ÇplVF# ÌŠ›”æaãÂ@¯ÓÁ\0<\Z6v|6Á›Š˜÷Ñ±|‘æX¡c\ZY˜ÿ‘˜-:h\'·;J£²t0áØJ00Y.hX?›hÌKÖ‹Úbi ébb-šßÇö³±3]0JÑÕ¦MXšÌ+Îšÿú}Õ>ú N0àñ±œb~Ó\'rxòØG­ÿè—•È ‘ŒÆ\"ÄìïTÿh¬À‰Ä\"çb>y¤£óLıfN™ØºrÇÚÑ¨FÏÃÅÃZó6‹†9¡•dc»â¿[¡læx ÛÑ¯&‰Ä^ØŒ~›İc»ÊœGcc1ò€†hÀB\0‰\"Š9¬	ºC(æ7ˆÅü“0T\"ªÉÄ¥Dg¢\rh-€4Ä†Î\ZŠdö@‚¢æ`£ ‰ºFÜ ¨I>)>*U-nddô©6ìkƒ• ±§İèG¤Eê0ôëü!SÇ¦\n9`,¨Ü|\\`HÉËÓF¿z{Êë›vbœ9\0‘ÉÇ©‹ŒÀMA•ÈæÒÙ,Ö*bzpcÚğh]4FÉç¢uD$¤¶¶Ò\0…‡¡!Ğ¥ƒ1JÂv`Z„cÚÆôÍ‚&şáæŒµHü?1ÉyÉ.ÉdpâøÜøKËÃ‘¥I1Ò|Y^•!T±)óÅpD\\¼GÌõF–#ú\"µ|õX5È\Z{y‚}†fº¦h~Ù¢/d¶ˆ2¢¢ËORËw®\rï«ÜUß]¨ä±05w÷µÜøid$ˆÄÜr	x?Å HşÁ²‘Õ\ZkÇGÏ®ğÈó=1Â\n¢”‚¦—ÍGKX—®“-,Ì¾+’ÈêˆÚ¨ğôIË\'òlDí\'((í÷âr…°}¸0„Ëg	£õ2ˆbN?Fd„â7C†L¤	`‚?$\Z›+ DL¿Â›¬€È£„„Â”Ÿ¨‚PL9DeŠ+ˆ{1a\\cÜ±)æ˜2{Ô1UÑ~öfsĞe™ƒ=ÓDd&‡#A„xÜTğ§àãq8¨2zSÛš2G‹_ŒOïj›,‰¬ı¤qğŠãú×-NÏï¤]uó¢õgã/»ß[Â6œcË¬iÖª”r©ÜŞéX}<CvYöü¾Üße´4ZìçÑ²o¨8Ùåª‘}½ÌPó²ë‚nûtu«49‹Îj½ş «8ÊÈ°Kái6.%çÓ¹Rú–øÁÕ¹q‰Ié%}gvÜ0/\\–4C\'Å£€lúëmâ.$¿b[50(785emgTPÎ^Lò©¾ßŞÁg=§í 7ê·SUz«\\³¬–y+7->^œrÕ×öPü²­Ò¯&7Î©ö\n²Éöhš¿Ùˆ“è,Örğ¦k2“®Myè\'€Ä/ˆBâ> \n`:gi¥‘)b uI$q‰ËG¹8bÜ>$nO¬œÿMŞkÿ ÖòÍŠ¥îé#yü¿?ßâ§B¡íÖÖ[å[lè/.D¦¢>*àp#DB\0dÊ%*›f5G@<ÿSoïÿæ±oùbƒ‚Åô7ˆÚ=•HÛ(YdëĞŒØXtr³ëÜ¾æóÂü•:ÂyáeÉ_ŠÜvGAî=\r/”°êdócŞáêRš>z7]:TíË}C_|l1Ô›uu_«Ú©C*2»ïŞW/ÖÛôúU¡àDF—EºÍŞuçÍÃnm=¥õåaOKrçÖêán¨Êøİ‡˜A¹i¤zY»…ê®¯4Ïx$.smMÈõêXûĞ _ª*«Òúr1Şßz´èáÆáîîÃ[eÊxm™=+ÌócÜ±é0–¢™áÅ­ÓJXMÏ(ñ«²¸˜¶\"QÕè½ÕŞÜxéü€íeú•yG\Z‹îÃ5ˆJ¬(3ï¼W¿ı£µÈãL]VÊEŞ¿Ş-j]Ä³`mc¨¸ÒıNİG$€3ÿà®€C@C0cbD“	‰Kø?ñMKºDwÏe^ãâ„?ÿØsd½P¹±#Çpè-]%¶ }ä*/A:ÏyŞĞ_I³ûÔj«û³¯“Z7ÅØÎĞ¶|ë	?åßvXÿl„­8x(±T;¥Zñôšf©uEIë“âtÎ\Z‹Ûvá{+VÈã’.&Ñ©*¹Š9å8ÑÍîÉ[ÿtÅöVúĞ´rx Vµ¡Â‰-óÜ’Ô\\¨öxë›Îã—x	ş-}}vgÚ(€8Çã®÷Z‹k]3õõØGHÆâØÁp9¹Ä6ôÖB‰„V²ùıBÚMÃŞ;Évª~GjC’§Æì$¸rV9À.9[‡¯9V>w#â¤hÍù/Õvi¹ù«lıÇŠ9ª?Å´­öh	îÃHÜûÉ±çë.nçßi”¦tÈîµÿÅ_Áa.¶|³¦¢»ldñX7fi•¥ØÉ·ıbT@ƒhƒX!¹f¹&ÉFc×t>û»ëG^(å\Z]u¼Aâ\0â2î!G´F,óq\ZÁ\'ëÿé)¦ÉÑ$ünCaè¨s/Y2ÍÙŞÌzmxù“|ÈTŞ¥Dåş½1¯\n¦åííU.Û3–~QU+M·wÚu÷”ªîÒ=¦›ú6ÑÎ÷|f\rØR—R˜,sì_«6ulmŒ\"Îi`|ôX^¹X7]UßGB—_§¡l£Òá*´¡öµÑ,«!’avğ¦§t;+éÛÅ7tG-¬yÕœç«ä|sè„×êÅ/3£Hwéá¡q_RœŠ‹WyÕl¬9¥r8³´OJ3\"×A^z!ÑoË‡ıÓ¢zº6ÉÔ“Õøûlƒo˜÷š7[ÌtXµ?L¸•s½{{—ê0C\"àÔ€ÁŠvKû]ë­ËÚ‹ú\0è“4Š>rë¤²=k!í\"ùG•‚ó¿Ç ¦Ö1E,È¦166C¡Çÿ@­ãÃ\nc\n„Ô0Ş_­u˜q>ººÈu½òÕf[ïÚ¡\"Åsú”ªi^W^Ù\Zµ/!gêVìd<ÒX–xîÒÒ–-¤¯Ã/l¿òKëI/(J\'èyEåë¤³×{™vXj•¦á…í¾Ä™§Ãa®>o»j%\\‰}¸Å\ro¶û}íA	_õçëíµ«\r7UhË}ı×©ÑGbc¬{[‰Úî‘Bñ5—VßK6Ó¿&û‡º…dLÄğ6gÃ£—¶{®—\r˜ç©L¤¼•à1_suˆãö.ÃD¹e¥ƒ§Uw°{µ÷+|l”»›$Û!0­ÿ¯\rùMb/I%ÉF•wû\'Ú\'®LÚÍ)ÑĞwiâæ8<Z÷|ËÜôĞQ¼‰Çé‚™3âHüÿ¨väÄ$Ç®,¦ãĞJîs»=g‹–&gœÏùã„•½CıMDeb€\"(­>\\K†ƒ«ÈşÛJè‡2j€Úí.O¾³¬J>=*“Mã9îx-ğ©¶“$-9³Ü;Ií•ÅÎÊ_©®´\n«™-ŸN½VùëòÙ3¹¬Í¡„|M§Wìò°Í3N·ßí˜zA|›éÅ›{xkeŞjjîL¯í®™w=æåµ“”Ö”³ôßL[”g×DtYí+›)88{ë½òòi>iı9—˜®ûtçæn›juEåRu£8ÁÒ³„¶²éé±˜õ8µï¾EÜ Âì4F,]Œ˜Õ·ï`¸Ñië¹|;sĞµë>A¸«ŒÄ‘n:ğ@—\ZãòvFüls¼ZÊ	±º,Ê™§ë½mª¥v=2ÛÑ¯™•ÓTé³Ü²¿¸Tk\0\0Ôq\0P™ãå)ÁÊ#‰®<úPŒ2GÌ(&\0šÈd£ŒFI2J\"qeGy¤ƒh’ê½£»ØÛvôö°47Yl´À1qX`²ÈÁ‰¬hÆ¤ömL¼Ñ `o&½üáí\rqAiV­j\\°ö¯sie\nK›‘sµÓÌ?Ç1Å3-2 N¬ßÓ_ùv£:Mß©}éáåÆ•·Ù¯ü¬Êòœmä%LBŸ]²NÃá)³^¸¾ÒÑïµô?|‡—½ô§D¹›§|Lõì½òßo£åû\\²ª¿aw¦»d¥ûé‘»—/…›U÷\'uÇ=×½7ómßÉ·ñmw	ù‡¦\'~²*ê® \\ÍÅ3Ş=Q»^Â{Ût|_‚NÄ’øõG_S¢êï²•<5™{hîN†#Z§’^òª	÷ïQHuó^Xq°U?™]Ù¨@Ù´£~óÉ†”ÏAU³JW|,Zœ¬·+ñ–_–h9õïøğ:íí3ÖãU!önÛĞ¹ßà›JiRÄøŸTJBNı_©”Æ5	\'ëoê?±ÚÉĞJÆ.2`§õ…#&‡;H¤D\rß¾×Ù…W$v–]·[ßš©ÑùbFiuÌãÁì¾).ÅŠU,ı>Û`šO_ïùL‹—Íí)[?:kmÔ™¾PâP™Ï¤B:º½ıxµîôVû¶¦VÖÙoy¿ZlbaéT·‹éÖÛûhÙƒ^µ¾SÓ-¡t4%ÏÒqrº-Ğü]/]úä[#v2.wú9ãAİt\rW\Z)/õ}œsÌN‰»+­2ÔC%YÇj]bVÄÛ@æ9bMv÷k<’6_Î­í¿òÒìƒšë~Ç†×ä_¢wñNYµšÑ–ukƒİ<\'oIëë„A»UPSª7•OÜk‡CâRşÁK¶o.$¿ŞêÊ«GßÆ–M’@–½ì~¥¤È²ˆhït€\Z‰dêlú£>ø/$›Oİ¾&ïÒÅPŸ^m$Hdˆ4y%â›«;ï¯ÿÉ&onìœ¿ğG&ø;d\"Æã ÃÎ™/.7—İßïÛØò°³¡n8C²_şÖÙ[.¦±o¯„l|=”iY£\Zn½Òè²ÒÁÛÖ•oÉÓ´\"ó_\n;•»¬w;¥Øújxz¶…ÄŞwøşw¡uU”¢%\'­Õ/öpóO¥e¬Ûû™×0èîmôğ–t¹öFñên%Êç÷~º^8×’²ZVù|z5oŸÒ*Oå÷\r*Ó’+\\e)Hóƒ‹s»ÚÂN½¸rÏï1íÌÆ€bŸ„w=¹×o§7qVuj©1Ä>lÕ$Œ|ªrö®8ÿSW[wïûRÕÓ{(Ÿæ¿ÜEú¢½úå©†ÙÅkVğzÛ*TºT²|‹W§1æÅã5xüÌ¯«$FÇK–Äßß¿E~óÆ->–¹keÑ\\”úzãlNôÈS±ûF2ÙŒbŠùıŠ{¼ºÊu§Ë)ÕKÆ=wK¾ì´Öå;|BSäç©jsÛ7h¾q \'>Ê°\nI×UMú¹Y\\ş4ªİtWh†ù·¥ù”k®;Y	ò†Ë›ô´=^ıDÕ{ŠÓ.¤ÔmıÛÅZZ	Åïe®5F~—nšÉÜ’uíˆŠeQzM·ü¿øß~s¬ğØ£\rì…¼á_Ò#ÿx\"É{òDûöÕÛÃ\r2¿98t|®Î¼y×†ãìßşåæ£¶Ë,wnìiÿ7Ô”y³Ã]UnCëtg¥»­k^/QjPh¸à=P–Ç­ûP©µM¹Àèe«úƒ’1æ®İKv÷÷ìiPÎšNX±7•ôpéıùµ¬u¦G9iŞÔÆ‘…&C;—éóx ×C:PjAÿú[¤\r\nendstream\r\nendobj\r\n75 0 obj\r\n<</Type/XRef/Size 75/W[ 1 4 2] /Root 1 0 R/Info 16 0 R/ID[<FB234C313D860340AF9B0C3F4E18FB8B><FB234C313D860340AF9B0C3F4E18FB8B>] /Filter/FlateDecode/Length 192>>\r\nstream\r\nxœ5Ñ·ÂP€ág›œM°MÎ9SP³À´ôÔ«P05wt”ı BßéNR!)¥ãı6t¶•úr€‹`<…øJÈ6á!än‚³Üà™ğò\'¡pŠ¡¤·è.åª	LacøµÌõ@ùü¯0Á‚\0øÁA¨AÂ‚(D HBlHA\Zòƒ,¸à€U(BÊP‚\nÔ¡mhA:Ğ‡ta\0CéÓÕùJÃZKX°°¹Û«RpÇ¦\r\nendstream\r\nendobj\r\nxref\r\n0 76\r\n0000000017 65535 f\r\n0000000017 00000 n\r\n0000000125 00000 n\r\n0000000181 00000 n\r\n0000000475 00000 n\r\n0000003392 00000 n\r\n0000005155 00000 n\r\n0000005332 00000 n\r\n0000005575 00000 n\r\n0000005748 00000 n\r\n0000005986 00000 n\r\n0000006146 00000 n\r\n0000006371 00000 n\r\n0000006546 00000 n\r\n0000006792 00000 n\r\n0000006962 00000 n\r\n0000007203 00000 n\r\n0000000018 65535 f\r\n0000000019 65535 f\r\n0000000020 65535 f\r\n0000000021 65535 f\r\n0000000022 65535 f\r\n0000000023 65535 f\r\n0000000024 65535 f\r\n0000000025 65535 f\r\n0000000026 65535 f\r\n0000000027 65535 f\r\n0000000028 65535 f\r\n0000000029 65535 f\r\n0000000030 65535 f\r\n0000000031 65535 f\r\n0000000032 65535 f\r\n0000000033 65535 f\r\n0000000034 65535 f\r\n0000000035 65535 f\r\n0000000036 65535 f\r\n0000000037 65535 f\r\n0000000038 65535 f\r\n0000000039 65535 f\r\n0000000040 65535 f\r\n0000000041 65535 f\r\n0000000042 65535 f\r\n0000000043 65535 f\r\n0000000044 65535 f\r\n0000000045 65535 f\r\n0000000046 65535 f\r\n0000000047 65535 f\r\n0000000048 65535 f\r\n0000000049 65535 f\r\n0000000050 65535 f\r\n0000000051 65535 f\r\n0000000052 65535 f\r\n0000000053 65535 f\r\n0000000054 65535 f\r\n0000000055 65535 f\r\n0000000056 65535 f\r\n0000000057 65535 f\r\n0000000058 65535 f\r\n0000000059 65535 f\r\n0000000060 65535 f\r\n0000000061 65535 f\r\n0000000062 65535 f\r\n0000000063 65535 f\r\n0000000064 65535 f\r\n0000000065 65535 f\r\n0000000066 65535 f\r\n0000000067 65535 f\r\n0000000000 65535 f\r\n0000008546 00000 n\r\n0000008707 00000 n\r\n0000009270 00000 n\r\n0000009297 00000 n\r\n0000009737 00000 n\r\n0000021969 00000 n\r\n0000022201 00000 n\r\n0000036740 00000 n\r\ntrailer\r\n<</Size 76/Root 1 0 R/Info 16 0 R/ID[<FB234C313D860340AF9B0C3F4E18FB8B><FB234C313D860340AF9B0C3F4E18FB8B>] >>\r\nstartxref\r\n37133\r\n%%EOF\r\nxref\r\n0 0\r\ntrailer\r\n<</Size 76/Root 1 0 R/Info 16 0 R/ID[<FB234C313D860340AF9B0C3F4E18FB8B><FB234C313D860340AF9B0C3F4E18FB8B>] /Prev 37133/XRefStm 36740>>\r\nstartxref\r\n38810\r\n%%EOF');
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_atividade`
--

LOCK TABLES `tb_atividade` WRITE;
/*!40000 ALTER TABLE `tb_atividade` DISABLE KEYS */;
INSERT INTO `tb_atividade` VALUES (1,2,'Atividade Inicial'),(2,4,'QuestÃµes Iniciais'),(3,4,'Atividade 10');
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
  `ScriptResolucao` text NOT NULL,
  `NomeProcedResolucao` varchar(120) NOT NULL,
  `CasosTeste` text NOT NULL,
  `Ordem` int(11) DEFAULT NULL,
  `Data_Criacao` datetime DEFAULT NULL,
  `Data_Alteracao` datetime DEFAULT NULL,
  `Status` varchar(1) NOT NULL,
  PRIMARY KEY (`Id_Questao`),
  KEY `fk_tb_questao_tb_tecnologia1_idx` (`Id_Tecnologia`),
  KEY `fk_tb_questao_tb_atividade1_idx` (`Id_Atividade`),
  CONSTRAINT `fk_tb_questao_tb_atividade1` FOREIGN KEY (`Id_Atividade`) REFERENCES `tb_atividade` (`Id_Atividade`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_questao`
--

LOCK TABLES `tb_questao` WRITE;
/*!40000 ALTER TABLE `tb_questao` DISABLE KEYS */;
INSERT INTO `tb_questao` VALUES (1,1,2,'Criar um procedimento para calcular o IMPOSTO DE RENDA a ser pago em funÃ§Ã£o de uma determinada Renda. O procedimento deve apresentar como parÃ¢metro de entrada a Renda, e como parÃ¢metro de saÃ­da o imposto a ser pago. Considere as seguintes informaÃ§Ãµes para cÃ¡lculo do imposto',NULL,NULL,'create PROCEDURE SP_CALCULA_IMPOSTO (@RENDA numeric(17,2), @IMPOSTO NUMERIC(17,2) OUTPUT )\r\nas\r\nbegin\r\n   if @RENDA <= 1372.81\r\n       set @IMPOSTO = 0\r\n   else\r\n      if @RENDA <= 2743.25\r\n        set @IMPOSTO = (@RENDA * 0.15)  - 205.92\r\n      else\r\n        set @IMPOSTO = (@RENDA * 0.275) - 548.82\r\nend','SP_CALCULA_IMPOSTO','Declare @result numeric(17,2)\r\nexec SP_CALCULA_IMPOSTO 2500.50, @result output\r\nselect @result;\r\nDeclare @result numeric(17,2)\r\nexec SP_CALCULA_IMPOSTO 1500.00, @result output\r\nselect @result;',1,'2016-03-25 17:02:28','2016-04-05 22:32:25','V'),(2,1,2,'Criar um procedimento armazenado que, utilizando um cursor, percorra a tabela TB_FUNCIONARIO e atualize o campo de PENDENCIA.\r\n\r\nO campo de PENDENCIA deverÃ¡ conter:\r\na. O texto â€˜SEM PENDÃŠNCIAâ€™ quando todos os atributos de um funcionÃ¡rio apresentarem valores.\r\nb. Um texto â€˜EXISTE PENDÃŠNCIAâ€™ quando existirem atributos sem valores.','CREATE TABLE TB_FUNCIONARIO(\r\n      MATRICULA VARCHAR(10) NOT NULL,\r\n      NOME VARCHAR(20) NOT NULL,\r\n      TELEFONE VARCHAR(20),\r\n      ENDERECO VARCHAR(20),\r\n      SALARIO NUMERIC(17,2),\r\n      PENDENCIA VARCHAR(20)\r\n)','INSERT INTO [TESTE].[dbo].[TB_FUNCIONARIO]\r\n           ([MATRICULA],[NOME],[TELEFONE] ,[ENDERECO] ,[SALARIO],[PENDENCIA])\r\n     VALUES\r\n           (1,\'Joao\',NULL,\'Rua 15\',15000 ,NULL)\r\nINSERT INTO [TESTE].[dbo].[TB_FUNCIONARIO]\r\n           ([MATRICULA],[NOME],[TELEFONE] ,[ENDERECO] ,[SALARIO],[PENDENCIA])\r\n     VALUES\r\n           (2,\'Pedro\',\'987654321\',\'Rua 10\',23000 ,NULL)\r\nINSERT INTO [TESTE].[dbo].[TB_FUNCIONARIO]\r\n           ([MATRICULA],[NOME],[TELEFONE] ,[ENDERECO] ,[SALARIO],[PENDENCIA])\r\n     VALUES\r\n           (3,\'Saulo\',\'99991111\',\'Av. Nova\',NULL ,NULL)','CREATE PROCEDURE atualizaPendencia\r\nAS\r\nBEGIN\r\n      DECLARE\r\n            @MAT_FUNC VARCHAR(10),\r\n            @NM_FUNC VARCHAR(20),\r\n            @TEL_FUNC VARCHAR(20),\r\n	    @END_FUNC VARCHAR(20),\r\n            @SAL_FUNC MONEY\r\n           \r\n      DECLARE curFunc CURSOR FOR\r\n            SELECT\r\n                  MATRICULA,\r\n                  NOME,\r\n                  TELEFONE,\r\n                  ENDERECO,\r\n                  SALARIO\r\n            FROM TB_FUNCIONARIO\r\n     \r\n      OPEN curFunc;\r\n      FETCH NEXT FROM curFunc INTO @MAT_FUNC, @NM_FUNC, @TEL_FUNC, @END_FUNC, @SAL_FUNC;\r\n     \r\n      WHILE @@FETCH_STATUS = 0\r\n      BEGIN\r\n            IF((@MAT_FUNC IS NOT NULL AND @NM_FUNC IS NOT NULL AND @TEL_FUNC IS NOT NULL\r\n            AND @END_FUNC IS NOT NULL AND @SAL_FUNC IS NOT NULL) \r\n            OR \r\n            (@NM_FUNC <> \'\' AND @TEL_FUNC <> \'\'\r\n            AND @END_FUNC <> \'\' AND @SAL_FUNC <> 0))\r\n            BEGIN\r\n                  UPDATE TB_FUNCIONARIO SET PENDENCIA = \'SEM PENDÃŠNCIA\'\r\n                        WHERE\r\n                             MATRICULA = @MAT_FUNC\r\n                             AND NOME = @NM_FUNC\r\n            END  \r\n            ELSE \r\n            BEGIN\r\n                  UPDATE TB_FUNCIONARIO SET PENDENCIA = \'EXISTE PENDÃŠNCIA\'\r\n                        WHERE\r\n                             MATRICULA = @MAT_FUNC\r\n                             AND NOME = @NM_FUNC\r\n            END\r\n            FETCH NEXT FROM curFunc INTO @MAT_FUNC, @NM_FUNC, @TEL_FUNC, @END_FUNC, @SAL_FUNC;\r\n      END\r\n     \r\n      CLOSE curFunc;\r\n      DEALLOCATE curFunc;\r\nEND','atualizaPendencia','exec atualizaPendencia\r\nselect * from TB_FUNCIONARIO;',2,'2016-03-29 17:47:36','2016-04-05 21:35:44','V'),(3,1,2,'Criar um procedimento para calcular o aumento de SALÃRIO a ser dado em funÃ§Ã£o do tempo de serviÃ§o em uma determinada empresa. O procedimento deve apresentar como parÃ¢metros de entrada o Ano de AdmissÃ£o e o SalÃ¡rio Atual, e como parÃ¢metro de saÃ­da o SalÃ¡rio apÃ³s o Aumento:',NULL,NULL,'create procedure calcAumentosal(@anoadmissao int, @sal_func numeric(17,2), @sal_atualizado numeric(17,2) output)\r\nas\r\nbegin\r\n    if(@anoadmissao < 2000)\r\n      set @sal_atualizado = @sal_func + (@sal_func * 0.3);\r\n    else if (@anoadmissao >= 2000 and @anoadmissao <= 2004)\r\n      set @sal_atualizado = @sal_func + (@sal_func * 0.2);\r\n    else\r\n      set @sal_atualizado = @sal_func + (@sal_func * 0.1);\r\nend','calcAumentoSal','Declare @result numeric(17,2)\r\nexec calcAumentoSal 2002, 2500.50, @result output\r\nselect @result;',3,'2016-04-06 20:05:04','2016-04-08 16:37:38','V'),(6,1,3,'Criar um procedimento SP_CLASSIFICA_CLIENTE para classificar um Cliente como PARCEIRO ou ALVO. O procedimento deve receber como parÃ¢metros de entrada a data de inclusÃ£o do Cliente e a quantidade de produtos que um Cliente jÃ¡ comprou. O procedimento deve apresentar um parÃ¢metro de saÃ­da informando se o Cliente Ã© PARCEIRO ou ALVO. O cliente serÃ¡ classificado de acordo com a seguinte regra: \r\n\r\nSe a data de inclusÃ£o do Cliente Ã© maior ou igual a â€˜01/03/2010â€™ ou a Quantidade de Produtos jÃ¡ comprados pelo Cliente Ã© maior que 50\r\n      O Cliente Ã© PARCEIRO\r\nCaso ContrÃ¡rio o Cliente Ã© ALVO.',NULL,NULL,'CREATE PROCEDURE SP_CLASSIFICA_CLIENTE (@DT_INCLUSAO VARCHAR(10), @QTDE_COMPRAS INT, @INFO VARCHAR(8) OUTPUT )\r\nas\r\nbegin\r\n	DECLARE @DATA DATETIME\r\n	SET @DATA = CONVERT(datetime, @DT_INCLUSAO, 103)\r\n   if @DATA >= CONVERT(datetime, \'01/03/2010\', 103) OR @QTDE_COMPRAS > 50\r\n       set @INFO = \'PARCEIRO\'\r\n   else\r\n      set @INFO = \'ALVO\'\r\nend','SP_CLASSIFICA_CLIENTE ','DECLARE @INFO VARCHAR(8)\r\nEXEC SP_CLASSIFICA_CLIENTE \'09/04/2009\', 25, @INFO OUTPUT\r\nSELECT @INFO;\r\nDECLARE @INFO VARCHAR(8)\r\nEXEC SP_CLASSIFICA_CLIENTE \'09/03/2010\', 50, @INFO OUTPUT\r\nSELECT @INFO;\r\nDECLARE @INFO VARCHAR(8)\r\nEXEC SP_CLASSIFICA_CLIENTE \'09/04/2016\', 30, @INFO OUTPUT\r\nSELECT @INFO;\r\nDECLARE @INFO VARCHAR(8)\r\nEXEC SP_CLASSIFICA_CLIENTE \'27/02/2010\', 60, @INFO OUTPUT\r\nSELECT @INFO;\r\nDECLARE @INFO VARCHAR(8)\r\nEXEC SP_CLASSIFICA_CLIENTE \'01/03/2010\', 10, @INFO OUTPUT\r\nSELECT @INFO;',1,'2016-04-10 08:48:56','2016-04-10 08:52:24','V'),(7,1,3,'Criar um procedimento SP_COPIA_CLIENTE utilizando cursores para varrer a tabela TB_CLIENTE e, utilizando o procedimento desenvolvido da questÃ£o 1 e as informaÃ§Ãµes contidas na tabela TB_VENDAS, copiar as informaÃ§Ãµes de um cliente para a tabela TB_CLIENTE_ALVO ou para a tabela TB_CLIENTE_PARCEIRO de acordo com sua classificaÃ§Ã£o. A classificaÃ§Ã£o do Cliente deve ser dada necessariamente pelo procedimento da questÃ£o 1. ','CREATE TABLE TB_CLIENTE (\r\n  CD_CLIENTE INT NOT NULL PRIMARY KEY,\r\n  NM_CLIENTE VARCHAR(60) NOT NULL,\r\n  CPF INT NULL,\r\n  DT_INCLUSAO DATETIME NOT NULL\r\n)\r\n\r\n\r\nCREATE TABLE TB_VENDAS (\r\n   CD_VENDA INT NOT NULL IDENTITY(1,1) PRIMARY KEY,\r\n   DT_VENDA DATETIME NOT NULL,\r\n   CD_CLIENTE INT NOT NULL,\r\n   CD_PRODUTO INT NOT NULL,\r\n   QUANTIDADE INT NOT NULL,\r\n   VALOR_TOTAL NUMERIC(10,2) NOT NULL\r\n)\r\n\r\n\r\nCREATE TABLE TB_CLIENTE_ALVO (\r\n  CD_CLIENTE INT NOT NULL PRIMARY KEY,\r\n  NM_CLIENTE VARCHAR(60) NOT NULL,\r\n  CPF INT NULL,\r\n  DT_INCLUSAO DATETIME NOT NULL\r\n)\r\n\r\nCREATE TABLE TB_CLIENTE_PARCEIRO (\r\n  CD_CLIENTE INT NOT NULL PRIMARY KEY,\r\n  NM_CLIENTE VARCHAR(60) NOT NULL,\r\n  CPF INT NULL,\r\n  DT_INCLUSAO DATETIME NOT NULL\r\n)','SET DATEFORMAT dmy\r\nINSERT INTO [TESTE].[dbo].[TB_CLIENTE]\r\n           ([CD_CLIENTE],[NM_CLIENTE],[CPF] ,[DT_INCLUSAO])\r\n     VALUES\r\n           (1 ,\'JOÃƒO\',123456789,\'09/04/2016\')\r\nINSERT INTO [TESTE].[dbo].[TB_CLIENTE]\r\n           ([CD_CLIENTE],[NM_CLIENTE],[CPF] ,[DT_INCLUSAO])\r\n     VALUES\r\n           (2 ,\'MARIA\',NULL,\'01/03/2010\')\r\nINSERT INTO [TESTE].[dbo].[TB_CLIENTE]\r\n           ([CD_CLIENTE],[NM_CLIENTE],[CPF] ,[DT_INCLUSAO])\r\n     VALUES\r\n           (3 ,\'PEDRO\',NULL,\'27/02/2010\')\r\nINSERT INTO [TESTE].[dbo].[TB_CLIENTE]\r\n           ([CD_CLIENTE],[NM_CLIENTE],[CPF] ,[DT_INCLUSAO])\r\n     VALUES\r\n           (4 ,\'CARLA\',987654321,\'16/03/2009\')\r\n\r\n\r\nINSERT INTO [TESTE].[dbo].[TB_VENDAS]\r\n           ([DT_VENDA] ,[CD_CLIENTE] ,[CD_PRODUTO] ,[QUANTIDADE] ,[VALOR_TOTAL])\r\n     VALUES\r\n           (\'20/09/2000\',1,1,30,265.30)\r\nINSERT INTO [TESTE].[dbo].[TB_VENDAS]\r\n           ([DT_VENDA] ,[CD_CLIENTE] ,[CD_PRODUTO] ,[QUANTIDADE] ,[VALOR_TOTAL])\r\n     VALUES\r\n           (\'26/10/2004\',2,1,20,202.30)\r\nINSERT INTO [TESTE].[dbo].[TB_VENDAS]\r\n           ([DT_VENDA] ,[CD_CLIENTE] ,[CD_PRODUTO] ,[QUANTIDADE] ,[VALOR_TOTAL])\r\n     VALUES\r\n           (\'21/03/2003\',3,1,65,155.40)\r\nINSERT INTO [TESTE].[dbo].[TB_VENDAS]\r\n           ([DT_VENDA] ,[CD_CLIENTE] ,[CD_PRODUTO] ,[QUANTIDADE] ,[VALOR_TOTAL])\r\n     VALUES\r\n           (\'01/05/2003\',1,1,80,265.30)\r\nINSERT INTO [TESTE].[dbo].[TB_VENDAS]\r\n           ([DT_VENDA] ,[CD_CLIENTE] ,[CD_PRODUTO] ,[QUANTIDADE] ,[VALOR_TOTAL])\r\n     VALUES\r\n           (\'02/03/2010\',4,1,15,425.15)\r\nINSERT INTO [TESTE].[dbo].[TB_VENDAS]\r\n           ([DT_VENDA] ,[CD_CLIENTE] ,[CD_PRODUTO] ,[QUANTIDADE] ,[VALOR_TOTAL])\r\n     VALUES\r\n           (\'20/01/2010\',2,2,46,300)\r\nINSERT INTO [TESTE].[dbo].[TB_VENDAS]\r\n           ([DT_VENDA] ,[CD_CLIENTE] ,[CD_PRODUTO] ,[QUANTIDADE] ,[VALOR_TOTAL])\r\n     VALUES\r\n           (\'20/01/2010\',3,3,65,904.30)','CREATE PROCEDURE SP_COPIA_CLIENTE \r\nAS\r\nBEGIN\r\n      DECLARE\r\n            @CD_CLIENTE INT,\r\n            @NM_CLIENTE VARCHAR(60),\r\n            @CPF INT,\r\n			@DT_INCLUSAO DATETIME\r\n           \r\n      DECLARE curCLI CURSOR FOR\r\n            SELECT\r\n                  CD_CLIENTE,\r\n                  NM_CLIENTE,\r\n                  CPF,\r\n                  DT_INCLUSAO\r\n            FROM TB_CLIENTE\r\n     \r\n      OPEN curCLI;\r\n      FETCH NEXT FROM curCLI INTO @CD_CLIENTE, @NM_CLIENTE, @CPF, @DT_INCLUSAO;\r\n     \r\n      WHILE @@FETCH_STATUS = 0\r\n      BEGIN\r\n			DECLARE @DATA DATETIME\r\n			DECLARE @QTDE_COMPRAS INT\r\n			SET @QTDE_COMPRAS = (SELECT SUM(QUANTIDADE) FROM TB_VENDAS WHERE CD_CLIENTE = @CD_CLIENTE)\r\n			SET @DATA = CONVERT(datetime, @DT_INCLUSAO, 103)\r\n			   if @DATA >= CONVERT(datetime, \'01/03/2010\', 103) OR @QTDE_COMPRAS > 50\r\n				   INSERT INTO TB_CLIENTE_PARCEIRO\r\n				   ([CD_CLIENTE],[NM_CLIENTE] ,[CPF] ,[DT_INCLUSAO])\r\n				 VALUES\r\n				   (@CD_CLIENTE,@NM_CLIENTE,@CPF,@DT_INCLUSAO)\r\n			   else\r\n				  INSERT INTO TB_CLIENTE_ALVO\r\n				   ([CD_CLIENTE],[NM_CLIENTE] ,[CPF] ,[DT_INCLUSAO])\r\n				 VALUES\r\n				   (@CD_CLIENTE,@NM_CLIENTE,@CPF,@DT_INCLUSAO)\r\n            \r\n            FETCH NEXT FROM curCLI INTO @CD_CLIENTE, @NM_CLIENTE, @CPF, @DT_INCLUSAO;\r\n      END\r\n     \r\n      CLOSE curCLI;\r\n      DEALLOCATE curCLI;\r\nEND','SP_COPIA_CLIENTE ','EXEC dbo.SP_COPIA_CLIENTE\r\nSELECT * FROM dbo.TB_CLIENTE_ALVO;\r\nSELECT * FROM dbo.TB_CLIENTE_PARCEIRO;',2,'2016-04-10 09:05:34','2016-04-10 09:16:01','V');
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
  `NomeProcedResposta` varchar(120) NOT NULL,
  PRIMARY KEY (`Id_Resposta`),
  KEY `fk_tb_resposta_tb_usuario1_idx` (`Id_Usuario`),
  KEY `fk_tb_resposta_tb_questao1_idx` (`Id_Questao`),
  CONSTRAINT `fk_tb_resposta_tb_questao1` FOREIGN KEY (`Id_Questao`) REFERENCES `tb_questao` (`Id_Questao`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_tb_resposta_tb_usuario1` FOREIGN KEY (`Id_Usuario`) REFERENCES `tb_usuario` (`Id_Usuario`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_resposta`
--

LOCK TABLES `tb_resposta` WRITE;
/*!40000 ALTER TABLE `tb_resposta` DISABLE KEYS */;
INSERT INTO `tb_resposta` VALUES (1,'create PROCEDURE SP_CALCULA_IMPOSTO (@RENDA numeric(17,2), @IMPOSTO NUMERIC(17,2) OUTPUT )\r\nas\r\nbegin\r\n   if @RENDA <= 1372.81\r\n       set @IMPOSTO = 0\r\n   else\r\n      if @RENDA <= 2743.25\r\n        set @IMPOSTO = (@RENDA * 0.15)  - 205.92\r\n      else\r\n        set @IMPOSTO = (@RENDA * 0.275) - 548.82\r\nend',1,'2016-04-16 09:50:31',1,'SP_CALCULA_IMPOSTO');
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
  `Resultado` text NOT NULL,
  `Comentarios_Prof` text,
  `Id_Resposta` int(11) NOT NULL,
  PRIMARY KEY (`Id_Resultado`),
  KEY `fk_tb_resultado_tb_resposta1_idx` (`Id_Resposta`),
  CONSTRAINT `fk_tb_resultado_tb_resposta1` FOREIGN KEY (`Id_Resposta`) REFERENCES `tb_resposta` (`Id_Resposta`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_resultado`
--

LOCK TABLES `tb_resultado` WRITE;
/*!40000 ALTER TABLE `tb_resultado` DISABLE KEYS */;
INSERT INTO `tb_resultado` VALUES (1,'Caso de Teste 1\nDeclare @result numeric(17,2)\r\nexec SP_CALCULA_IMPOSTO 2500.50, @result output\r\nselect @result\n\nResultado Correto: \n169,16 \n\nCaso de Teste 2\n\r\nDeclare @result numeric(17,2)\r\nexec SP_CALCULA_IMPOSTO 1500.00, @result output\r\nselect @result\n\nResultado Correto: \n19,08 \n\n',NULL,1);
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
INSERT INTO `tb_turma` VALUES (2,'Turma do TCC',1),(3,'Turma',3),(4,'ProgramaÃ§Ã£o TSQL',1);
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

-- Dump completed on 2016-04-16  9:57:17
