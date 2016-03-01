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
INSERT INTO `tb_arquivo` VALUES (1,6,'Exercicio 05 - Programacao TSQL.pdf','pdf','%PDF-1.5\r\n%����\r\n1 0 obj\r\n<</Type/Catalog/Pages 2 0 R/Lang(pt-BR) /StructTreeRoot 17 0 R/MarkInfo<</Marked true>>>>\r\nendobj\r\n2 0 obj\r\n<</Type/Pages/Count 1/Kids[ 3 0 R] >>\r\nendobj\r\n3 0 obj\r\n<</Type/Page/Parent 2 0 R/Resources<</XObject<</Image5 5 0 R>>/Font<</F1 6 0 R/F2 8 0 R/F3 10 0 R/F4 12 0 R/F5 14 0 R>>/ProcSet[/PDF/Text/ImageB/ImageC/ImageI] >>/MediaBox[ 0 0 612 792] /Contents 4 0 R/Group<</Type/Group/S/Transparency/CS/DeviceRGB>>/Tabs/S/StructParents 0>>\r\nendobj\r\n4 0 obj\r\n<</Filter/FlateDecode/Length 3154>>\r\nstream\r\nx��[�n7��;�at�V󷻍 �l���ȳك��D3RX#E\Zټ��9�{X���b�[U$��d[A\"����X�*?r�G������>��ˣ��~}��v��?Z���p������|}}�[�o�v_}��<y��|x D.��S𠒪ʫ�,D�Try{xptz��ު��.�����\nZ^���������Q_h��%KJ)�2YA�\"��__$E^��������oO�_^�;=9>Y&�B���\'ˋ�l�t�-4�)������/�S��9�^f?$�o�+c�\\\n�s�Zq�d�?z���BLy\r������OO2�.�Ѿ����V`Ce>�Y��i8��KP+�j��X�W|�K�`E�.[T�^�v��2�dF��-S��5~8kf�=d�O|�6�̗�弞i>�ri��k�5�7�<��� x����;lxL�y�x��j�)!��J��2�l3���^fLY��t�!�����ݘ=��Z�b`�o��^��й�9�@u-0�ah%󺒉�X�,�#�\0�K3�+�$���1[pe\Z��:�L����X����7��M���	z|���� ��V9u���O0.�6�d��0Z%{�}�x��l\'=�8������O���ɕ�{��9R��ݒ�Wɑ�F�����n}er\"^��Y5�PR���.�D�e�r�B-������o�\'������;��&����޼:=I��o׻�$��/�WYg>�A��դ�\n8�����5BmfS�i�C#Ga.8��c�>1�GN����K3�S��u���م��p��\"����>����B�RYB:ʾr������tLP��t^�2J�\Zm�6�\n6=�5�J��V���\nU��A��I)X��+Odz-�X�q���d�ď\Z˥���A`�`U�������^BJ��D�nDHH؟vHY��n4#��iCEk����G30}��UvJ�8T�s�̳w+x<Cr���E��	r��	�rlwJ�a��#������Ђ��f���0��\Z�% \"�f���ǿ3�3ָik�D�FRչp��b`�C�J�[���6C���B7��M`H��ʶ�3�[NxNl�~A�G2Z��9���`�p�8�&��M��1h]�q�d��6Y���yGG��Δ_��~�v��G߼P��b7��N�����	�Z���:�M;vܓF��u_aw4���g��l�+��]��İ��l\Z[��8�`�맶�t⳵��`(Y��#8d�nY��p�L��q��.6\\����V:�\'��	���5�k�����]R��EU��g�bֹ�ù�z�gp�+��E��Ps�T��R�9�*�b�,((���\r�h�)l�>�sD�5!�S+<=���\\�.?\r=y�ZMX�9T۾/2N��L���,�&LLߔ��D�Y����uyG�NW�D\0��[|ܒ�=-�5��G���f�5��{̰;��5>D���;�Y4�Djv�\\�8;7��A;~E,Y9�ɪn=�τ�hc��N��=;��\ZTjO�(}�0\0�s��R��	BZb�0h�q��fu{�3�o ����sX}�~ܺ�l�b�]b���-��ӇL�yh�5�����IF�lo��(���?�|��*�Ë\'�J��}�=�\"�kAh3���Y�:zVg���ƣ^��cL������3�<�C�p`��l�O�b�]���4�]B�Wn,^Tx*��uogt��/� ��Y��η�~�I�7%�\Z�~���{�ʦ�޻�G$����\'Le��J�yY��yϗ�$\\�x�Z�\\�II��,B3Ox^�>o�tqBb�Ո]51%U�p�P��?�P̴�\n�e��j�%MV���\0b.X_-�Ʃ*��3բ��6nq��l�N�%J��q&�.\n�m�2r�U�e����S��Ʀ�٤!\'\'ߎ��m�-A�)�@Φ�����a�0��o��^�\"]�+ٮ9�T�fy�\Z��*k��NZ��U�M1��iN�g`��� �z gS@�����@7Z���m,W�ﶸ�o#��{:�x��YW�����:��t�م�N�rf�z�Y�@�Bk��ARݞ��+��Z&p�����g�\rE����1�����A�w��߇�U��&r7��?̙�L\Z�T*ࡄ��)	\Z*x`^��L��^�&̊�_3�c�!/�1�\rvn�\\��a������.���y�Թ�%�o�h�ׅ<���6ع�5��U	����0[�$ߔ�Ι�3�sj�TO������jz17@\\�=lC����;�B�Y�˧jľb6��i����׬�����rg��D<bZ��,��~��\"]�ε�݁M��¸����ZѰƀΦXX#��\\�x�rg��D<rq<��>�pS��(.�t��xU�*ΫXgY,x\\SeQ<e�3��?�$��;Ҫ���(��ۮRw�E,o	��E!}�]9fQ��q�^�t6�soX��P�.~�[ӲC���$��	%�K��9�8�k��L�ċFt�&��jL����җ��һk-#�XG^��QEQ����0\Z�ѝ���1v��*Y��~����)�N�)}T��A���ދ2���q|rUkp^���H3 �􄮚Ƅd�=Ck�p(���e�������\0w�j��G�(r]�=b$��[~��UV͆�C�ew΂X2�p\Z�ខ�����YXy��y5��#����@:$\Z���K�B�Mc�2�>i�Zih�b�����z!�(3�\\�B��tlm��iK\r���L�g�2�}Ǵ����w��=QA?=�5����o�7���h�Ƽ8S�N�\\kYU��k��F9��eH~���w�r:Q1̬g)���^���\"��euv���]$F�.�9����*�PU�d�u��к���yAzx��K�*qb�����+��ۉ���J���yU\r�\\Ԧ�����π���M� y���4��C*\'J���z�M^�?��ڛ�	�W�$dSg�0���,u��).�Ԫ��ߖn9T,wb@gS4wb��x�<�}\Zb�!/��;�J?��I�v�bo��0b߻ı<~��-�:u:\r�jTEoCXgY4b�fO y�F�\Z�42\0��y�h���I��N�\n��t`�5�ϴ���NQj0.�&\\C��F��1D;��zy�X��;/���{���?�ۦ�\r\nendstream\r\nendobj\r\n5 0 obj\r\n<</Type/XObject/Subtype/Image/Width 119/Height 166/ColorSpace[/Indexed/DeviceRGB 4 <0000000000FFFF0000FFFF00FFFFFF>] /BitsPerComponent 4/Interpolate false/Filter/FlateDecode/Length 1536>>\r\nstream\r\nx��Yn�0��X�� �	����iDR��K1�u1�(�ǟ���MC����Gg,�W-?1\Z~\n\0�UY�s��E����Gu�^��R�OX\\��6�c7v#�e\"��y�*���ᒅ�X�ï�a��9&9�GF0�\0e|�iMu��!Y��D���]��!����1Z ��ҊN�	�D�C�7q�YI\Z��R�lY���K���� \r��Rmؘ\Z�+���\Z� ��=d)����җ��C��f�7\ZQvcA-�?�E��|3�X镰l�Ɣ>=�cѲ-�Cb9L8�T6L�C-�~h��p�J�42�F�{(�c�d�y�IҰ�N�7X����ec�y)��ːG��D��$����3����xI!��\Z�i�\"3��v	���S��#��d?�sy�\Z���	�w�7�M���/ｺ1g�\']��j�r��H\Z�窲�؏u:a��O���t�޸̕/������g\Zs��,�\'�ѲlAlZ��	�U���)Ai#�����3��\0��\\���Ϗ��v��Lpb��l.�hP2KE�{��U��)��nb�pr��o5���&6u�X��^|����@��n/�&��{;�k/|����uyp֕|?`�6ht�*�m���fi��;گ\n[���mv���[�K]S9Ou�c��.u�p��u�C�=�5c��İ�˭��iO�}��cfa�S�������.o��]�29e�v?�����k��]��Q�[c��jtÜU�A�NMٜR$Wjl��M������X3w1�RWN{X��ůuÜE_�kƖ!�}���wt���h����:^���w	׺>�[&���>�4/���O���ۺ�a�\n�pƺ�Ƞ��E̡��N�s����Y�c�\"���Y]l���a4\\���`Q�sv�;[���Bw���՘��F�YN�x��d��9�ր��%=~n�L.�X�X�������i�O�q�^�5��9;�n��9:b�i]mƬ��\n�ݿܓ�kM�r�Ң���\0�`�ȍ�8rͬ�lp�[���,ϷY�We��b��w��͇�54,4ˆ�d��,(V��&Y�,M���h҇J�\'Yd�֬S�Fb��B�Z��Y�<�e���g}vS�(����̚��Z}*[T�y�)�\r��3�\Z�~��:q���ɴ}|���r�ZC����:�3tȎ��Xؾ��zp�c��7�aeց�cE��JG}��F��5%��XG����9�`4��ySA�,�\ZN���>C�6��̖�J]��@�ŷ�w�C�y�G��h���O|a���ѿ\ZїV;a����b{o�n�%��Pt7��ʺ�h�7{%[�ҝ��9��X�n0�%�^Bˊ}�D��;F,�,(_͛=|eqǐ:��l44��{�/Qk։(u&u��̖�c��FH�(�`�Y�/����X|a���WrE#�q��62+Iit˞B=���reD����}�/�v	lfSW�^�(p~U�A�vAͫ;�У���BG=)-˱�=a�N�-���ɽ�������;��գa���Q����o�����1c�4\r\Z�\r8k��Xs����Ʉ}r��������\r\nendstream\r\nendobj\r\n6 0 obj\r\n<</Type/Font/Subtype/TrueType/Name/F1/BaseFont/Times#20New#20Roman,Bold/Encoding/WinAnsiEncoding/FontDescriptor 7 0 R/FirstChar 32/LastChar 86/Widths 69 0 R>>\r\nendobj\r\n7 0 obj\r\n<</Type/FontDescriptor/FontName/Times#20New#20Roman,Bold/Flags 32/ItalicAngle 0/Ascent 891/Descent -216/CapHeight 677/AvgWidth 427/MaxWidth 2558/FontWeight 700/XHeight 250/Leading 42/StemV 42/FontBBox[ -558 -216 2000 677] >>\r\nendobj\r\n8 0 obj\r\n<</Type/Font/Subtype/TrueType/Name/F2/BaseFont/Times#20New#20Roman/Encoding/WinAnsiEncoding/FontDescriptor 9 0 R/FirstChar 32/LastChar 245/Widths 70 0 R>>\r\nendobj\r\n9 0 obj\r\n<</Type/FontDescriptor/FontName/Times#20New#20Roman/Flags 32/ItalicAngle 0/Ascent 891/Descent -216/CapHeight 693/AvgWidth 401/MaxWidth 2568/FontWeight 400/XHeight 250/Leading 42/StemV 40/FontBBox[ -568 -216 2000 693] >>\r\nendobj\r\n10 0 obj\r\n<</Type/Font/Subtype/TrueType/Name/F3/BaseFont/Arial/Encoding/WinAnsiEncoding/FontDescriptor 11 0 R/FirstChar 32/LastChar 32/Widths 71 0 R>>\r\nendobj\r\n11 0 obj\r\n<</Type/FontDescriptor/FontName/Arial/Flags 32/ItalicAngle 0/Ascent 905/Descent -210/CapHeight 728/AvgWidth 441/MaxWidth 2665/FontWeight 400/XHeight 250/Leading 33/StemV 44/FontBBox[ -665 -210 2000 728] >>\r\nendobj\r\n12 0 obj\r\n<</Type/Font/Subtype/TrueType/Name/F4/BaseFont/ABCDEE+Verdana,Bold/Encoding/WinAnsiEncoding/FontDescriptor 13 0 R/FirstChar 32/LastChar 237/Widths 72 0 R>>\r\nendobj\r\n13 0 obj\r\n<</Type/FontDescriptor/FontName/ABCDEE+Verdana,Bold/Flags 32/ItalicAngle 0/Ascent 1005/Descent -207/CapHeight 765/AvgWidth 568/MaxWidth 2257/FontWeight 700/XHeight 250/StemV 56/FontBBox[ -550 -207 1707 765] /FontFile2 73 0 R>>\r\nendobj\r\n14 0 obj\r\n<</Type/Font/Subtype/TrueType/Name/F5/BaseFont/ABCDEE+Verdana/Encoding/WinAnsiEncoding/FontDescriptor 15 0 R/FirstChar 32/LastChar 233/Widths 74 0 R>>\r\nendobj\r\n15 0 obj\r\n<</Type/FontDescriptor/FontName/ABCDEE+Verdana/Flags 32/ItalicAngle 0/Ascent 1005/Descent -207/CapHeight 765/AvgWidth 508/MaxWidth 2006/FontWeight 400/XHeight 250/StemV 50/FontBBox[ -560 -207 1447 765] /FontFile2 75 0 R>>\r\nendobj\r\n16 0 obj\r\n<</Title(��\0F\0A\0C\0U\0L\0D\0A\0D\0E\0 \0D\0E\0 \0A\0D\0M\0I\0N\0I\0S\0T\0R\0A\0�\0�\0O\0 \0E\0 \0N\0E\0G\0�\0C\0I\0O\0S\0 \0D\0E\0 \0S\0E\0R\0G\0I\0P\0E\0  \0 \0F\0A\0N\0E\0S\0E)/Author(CEHOP )/Creator(��\0M\0i\0c\0r\0o\0s\0o\0f\0t\0�\0 \0O\0f\0f\0i\0c\0e\0 \0W\0o\0r\0d\0 \02\00\00\07)/CreationDate(D:20150410084418-03\'00\') /ModDate(D:20150410084418-03\'00\') /Producer(��\0M\0i\0c\0r\0o\0s\0o\0f\0t\0�\0 \0O\0f\0f\0i\0c\0e\0 \0W\0o\0r\0d\0 \02\00\00\07)>>\r\nendobj\r\n23 0 obj\r\n<</Type/ObjStm/N 51/First 386/Filter/FlateDecode/Length 872>>\r\nstream\r\nx��V�j�0}_�?�غڂR�ݶl酐��샛h���.����Q���+�	���s4sfF��r�#��圸&��x.���W$�\\㟄��!�J�d!IR���TM\ZXaH��VR�ɨ0�dN�T$9(���$�Zw���,�1\0$�`d�q��,�	�0eB�Ac��X\Z�\0����L��p4�V8��a�+�S8�d�1f�.	|��2�s\rp\Z�s��\n�V�$�qLHk�8���ƾ�i8L�~�<�~U%�a�`0\n�%|��p�\\���<9���$eӏW�M�v3�Vv��>R���т����8�v���C��y:D� b����?b0�dv��(!w�I|�V�)���)��BT�L/���>F�өċ&�2ӧL��<���do����kU�݉g�(H��S6�2�&�,�q���Lҍ�7)�tU��dҰ�MR֛52�5�;>��?kı����G&�,�qoQ��\'�F�bI�J�*KgM�b)��\Z�Κh�R֛5{�P y~l }d����X��of�\0)���{�Nf\r���C�z�F\'��Gk͐���1�RH����ugC�zZ�h�V�n���Ef���V�L�ea��uv�œpk)������?�z�׸oOT�yInBP�n�Z;n�.7+{_����6�Z[o���v��@���}��ݭ� ���Yu�����\\�����Oͻg��Vs������7�jY��s�,t�k�Pu˦�[��0ٮ~7��SӼd��l��M۝�gk;gd��W��9X�|����rY�����d���Y�b��Zg��Ŧ����f��>�5�{�8ߗ~\r���ShkBo^����2<W�!	%>�PCm\nU#��p��f�ٷ�D�\r\r\nendstream\r\nendobj\r\n69 0 obj\r\n[ 250 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 722 0 0 722 667 611 778 0 389 0 0 667 0 722 0 611 0 722 556 0 722 722] \r\nendobj\r\n70 0 obj\r\n[ 250 0 0 0 0 0 0 0 0 0 0 0 250 0 250 0 500 500 0 0 0 500 0 0 0 0 278 0 0 0 0 0 0 722 667 667 722 611 556 0 0 333 0 0 0 889 722 722 556 0 667 556 611 0 722 0 0 0 0 0 0 0 0 0 0 444 0 444 500 444 333 500 0 278 0 0 278 778 500 500 500 0 333 389 278 500 500 0 500 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 722 0 0 0 667 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 444 444 444 0 0 0 444 0 444 0 0 0 278 0 0 0 0 0 500 0 500] \r\nendobj\r\n71 0 obj\r\n[ 278] \r\nendobj\r\n72 0 obj\r\n[ 342 0 0 0 711 1272 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 776 762 0 0 0 0 0 0 0 0 0 0 0 0 0 733 0 782 0 682 0 0 0 0 0 0 0 0 0 0 0 0 668 699 588 699 664 0 0 712 342 0 0 342 1058 712 687 699 699 497 593 456 712 0 0 0 0 597 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 668 0 0 0 0 0 0 0 0 0 0 0 342] \r\nendobj\r\n73 0 obj\r\n<</Filter/FlateDecode/Length 14645/Length1 49600>>\r\nstream\r\nx��}	xSU��{�ܛ�ޛ�m�&i�niIh�24�d�J��@�H��IeQ`��T��:\" �范2�h**���|Ό�2��˨8.�n�B��=7�c�7�8����{{9�{�yϹ�rn�y\Z \0`C࠶�n��ȷ{�\0۫+FV׌�l��{\Z�+sd��:m�i�b�bd�Īþ��1�m`�����ؿ���`_,Y�j�������V�kX���\0�U\0����Ok��gĶ���ŋ��zf\\���l�5y�Q���lִEm�\0�;�\'Ϛ�l�S����jbJk����W\\���xw�i-�-�{\r^k\n�b�Rk\\�������_�tw��2\0���L�6��|�oʫm�?mi��@�\0�w!���i�g�}t�4�[���m-�.��(O.�o[8��_:\0�K�&+�[^{�7����Ti���a\"�~^�������M����G^����	(S�_d�[�R���v\'�e�bKB0G��a�\0íc�Z���/�K�c��V8��0z�cy�c�;@\r�{2�Qz�qun7�A�5��FxRГ{�@n�u�t�\0)�G$�C=�\nx���h�+u�p-���)�M\n�����M�y�C���*��/��D���\\~l������Bé���h��<����vZ�_��o�m�o��c0��Xw�w�������CyQ��D���&o����9Ջ��2$)IIJR����$%)I?��v����NB���< �.}\\e1>\\�_o��\Z@��Z�\'j4�S��L����:�K�D������bJLo	Z-Z��B�A��SQzD�`�vS�E�@B�UT@A4�9z,`A��\rѦ��pD�C\n� �B\Zb\Z8�*�Cz�[Ȁ�L�Dt�ѭ�<�o�[d!z���?������A̅\\�<�Ċ\0b\0�+(��B(D���P�X��/�Q,��R(E��@Y�(S��+�q D���`0A�@���Ca(b%TF?�C�bT!���P�j`��8Rų�,�Q0*�)��шc`,�X�8Nų���\'0�#��9����	�C�!�C=�D��x.��x4D�B���Ј8	&!N�)�S�)�4�x>��8�\"6C3�4� �!\\��t���-�3`�L��\0fA+b���a6���8�F߇y0q���`b�E߃�`!�B�\"�Űq	,���ň��Rĥ*.�e��ay��%�q�D\\��p)b;�G߆U�\n�2��rX��Z���+�\n�+�J�5�q��W�Uѷ�:��:��p5��p\r�5�oµp-��W���u��z��߀��qlB��o�-�[����p��7�͈7�x܂x+��\'ܦ��q��w��w¯�����7��Q�.�-�oU�ۢ��n����������D_��ý���}��A1�btE_���~��\0�� ���C�/�N؉�v#�=�{�ać���#��£�{�1��`�>�C�%����?\"�/<��8�	�O�/�ψ�� >O ��D|���\0O�ӈO���#�\r�A|��>Ϫx\0 >�!�����x�������/�K������ex�x�U�!����s�Ox�u߀7�T�-x+z\0�ۈo�;��������}އ�?�?T�#���>G�(���	�\'�)���g����s�cp���K�\n�+���5|��\r|��-G<\'�O�	�F�bD�(D=.���zX��A��#ڸ4�M|�F�k�@���+\Z$��U>��t��#Mo	R�$)I�Ŕ���:j�\Z�\Z����45_�L+�j5Z4o-�]�����s���\"j{�H������#%��z�8�ӂ`�+�vu1���A+`��pI��U�x[�k��֑�[E��kIJ�1%��ɀ��AR�����i=\r���v��*���&��H	�Q1��j�v�>�t��i��خ(\nԼEj�&I#hT3�犳ˤ�&)I�C	��l���3�����\"�H��z��׋:A�f�SmW��4*C����\"AJ�n�~����J�ڮzK\\�8�5�e��L+ӡ��zlWVmWԪ�q4�E�\"��ew\"���$�)!���r�������G��fc��\Z�E\Z�����Q��a����e�v����V�+��`�4���2ƽ@���v\r:\Z�\r��ـ$������5������zO��$����ޚfj�z0:��2Ž@R�#��L+3�F,0R۵\rF��Ts���q-z���̉P�v��s���֒b�VЃ)�.)�v���W:�ʌh�X`��3�&#�]Qmo�q-z݂��K�D���㑤$�����ZS��v\r`J�K�{�k����Vf4L\'m�fB�b������$�M	��i�ٮ��K�O���c�&�@C�Dm�.�$IgЩ���Z�*b_D���&��H	�=�� \ZAN�K�۸a�_W)gZ�$%,���*�,I�ި�iE��Ƶ�u룜��}Џ��2II�))!�ud8��@����q�N��2�ie�l�O�n���7�l7>:\'m7II���W\nڮ���.K��:��U�3�LVL\n(�vSYQ&�\Z��m7�E�\"��13J�n�~����:�� �z,Y}p�l��i���gl�4[dj���9Âd�\r�>-9��t��m�}m�J�~�}�IJ�OI	�m�?t:�6\\���N���8���X����F�E�lV�դUs���qv��e[o	ҏ�/:II�))!�u�A�7Z��׿�N�{��I�ͩp�6,��bG�s�}�Y��.[$u�G|���^�>��A$���V&)I?%%���|O���������E�[NڙVfwXhhN���Mq8�UR�=>:�Y{�v�������(�!-�WF�$/]6g�[9R��Լӌ\0Ɯ�Դ4�]I���9�E�[������V&)I?%%�����dRR!s@\\��t.\r�8�RzF*5�L�� 3##Öjɤ�g��n��LD�>��ڟ��$�������d����>�|����,����\\n�<2�\\�q����C+�7kŵ�{�ȓ��}Q�$)I��$\'�\\*E�f�/�WN��4����s���x3�hv>@���zS3>ZG���׸�Dd�~���IJ�OI��-��V`i��3\'ќ�1�0p�*O�J�m_�}qo��\0Ja\0���W׌y���\0�kϙPW?�����Nl��}:������C\nH�g>���_-�7���C��Z�\0�0�Z�a+<\0o�R���;�3\rZaޙ<ѷ����GtmtM�7?�DB��+���/-).\n�+,����d�}�,�ە���LKMq�mV�Y�%�Ѡ׉�V�s,C���S�7t�jN���XؓO;3f��g�0��`r~�Q�w���g�ʟkx�wx5�p�x\'�0����B,㰧�F5-s�5�é�[���E�Wv�G|�E�v�^7�;|���\0�tzL�1��m]d�P�&�5����as ��k�9\'Z׌	o5^	k,�kvE����lv2e��HX3<�U�u����a���`_��]2\\�0�x[�M����2v�i���XC��Vw�Ë���wM���K�����[�������\rk<��a3~ք�@x$r�\\~��v֤�v�lg�\Zwx�9\r�����)(pg�/���S�CI	���3-�sh�s�Q9k�;��Pe]�ʠ�ִ⍙�����i�ִLk��]}x8T�~@��u�8uՍ=E=Xé5�Ս��d���0�\n�V���S%�=%XPs��M%�����0����fT@��\nUy<�[՞n�������I���Gg�L�)���/�&GxG4wv��Gt6wN�]u��-{;�ƌ�l�i�^k�ծ�u�����a���¹�\Z0bBC�ӣ4��֞��*�^������Y���\'jbC�穁��1�����[���g��ͨ85=�{���u�Bpf«�i���p��~x?�i;�5���f�ɚS͛���������S�l�Դ\n{�3b�a����4�R���)]\0-}H��tn�o³ް�\r��C\Zݲ��޽:�s&5�k:OiA��g�TPս�Z;{L�*=���./Y{NW����԰[F_����~�0Û�\Z�|Xװۍ�U-eN�Ҝ��`U��A�r��Rk9�@�O�E@-N�������jR!��������}Gq����`��B� /nP\\��|\Zϧ�|Ͽ��<���ϛnv�n�9�u����-6׶-����6o�6a:��lAv�3�qC���\r�u<.�@hGS6��2��#�G���v˻	e~���n����r��m��������ڣL�ʏ��=��<���\\��;WpG��p[����ۇ}������#�v}\0ϵ�s���v��vŵ���vot/#=J�����W�}D��}7��\"W�UA�U��)�5x^�1�uE��Z�1�Ձ�Y�}����O�s�;�<�=%4���xy{���ѮU�y)��������vV�<.�-ߥ�x\\�)�.���,�|WA��0��I�9&�_���)�er�gSRӌ6��h�X���F�A��\r\Z�`�E�WDYZ%1!�*\rbW���0ځ��ѦB0�<Q���4Hp�T��R6��1�Ua�Ϻ�pi`�.&�Kc�b��.B�i��0�oO}�[�ZT����]$�V_��L�\"����j�Tcc #�2��!ܖ�.��_e4B\0i��E�z�.���2���}��i����]�����j��4�\Z�ċ�����K����ҝ�݄�J�E��21�\'n:���D�P���t�%��_��M$���`����Ƶ�J��ԓK�|���&!2�4\"����We��\'n�JL�/Q��?� �!�1��V��A�9�����1�;�#!&؋�,<���טH&�!�Yp�N�Ͼ	�`7�<�m^�w�\"�I�b�I62Ff$3	�R�pr3�9��@K.a�d��#\Zb#>�O��l8��\n����X\nc� �OB�]l>�b0waO\r�O���aݩa8�gp���*y��G ���*��OXE�棶���!;�2��o<�c���?^$M���݇!�]�,.\"��%x=f~�Ȟ~���<��?p�U��m�x�m�_8�ƪ^�,��h�,�g$��mc��g@+kh۵�6(�D;8R�\'T���>�����9�O��{3��t�WFn��hr!}D��<ю�(��������:DS��F೭k�?�,3W��-����/v-X������r���%�^��J���i����|;NB���L��x�?/=5�\ZL��:5�3������n\rѸC:���.Z��T�b�:��:,��	?�slRp�,-=l��فu�R8px}CHj�j��f�b[^{������) �g崊W���(��ġ��#�7���|@��x����$d��جv�?;�6��C\"�?��-�r]ᔏ/�6�把�D���)_�,����7��\\5���1w@�����|&G6�����n���o��M���.W�y=�L�v�=~`�`��g�@�kq0��k�o���GA8!T;B�J��&�j2I\"�E�&��?���u=)j%�)�d[*IM-~Ғ�5���ƚV����^�=w������{�1r/���S{D�[:�G��&�T�(X�l*.Z���Y�8�j�Y��������#��q��Y\Z��Ғ��4��Ϋo���k���\ZN�|�\Z�+O�|S?��~4=�+N�8�7�|��W�ܷA��ozrd�ֶ�;�hk�4�$�ե���D�ӢǾ74AÈ�N`�eX �X�r�הk*�c4��ɚz�|��K5iu��!��6TFЉ��\'��8,O�Ø*�D^<����?Cf�Hރ\0����e |�I)m\nT� XI?p�b�\'��q�JX�sM��i�ܽo�>�}X�@�8Nd�	W�h���3��ȢY�/͊�d�ɞ�Ν�0r�?pb>c���Z)�+~�҆��0)4x������fZlm�6�B�`1l�L9�iμ/����f\\/���k헚$I�_	�d�k�/�]\";bHm	�G*i��#�Y4��Ԛ�}R��߆Y4���H�(x7ˇ˙Y~�yc��}1S���	��n�]��毼�7d�*���U���[�~���C\n��WTU�R��5ͻ����y�?�,��?iǨ��F�����Ljj�VG�yGo�w�K�*�\\΅�z�>�gA4�$�,��\\�l����������(�r}�ة�(ޠ�Yo-�5�ڙv���a��\\ί2���ѱb��䚹6��(C\nsz�X��j�\"ϴ�C&0ሣ�v���r�F��#�&�:�J��R�Z��4���Ø�!;�^<�#�G>�|��f���\'g�����˘5\'���n�!j5���p�2�=F�R����MݠՊ)PLe� \rT9���P�qyB&U�.>薏u��z�x��{�ԭ\r�r�7���m\\7bX�+��8��Yz����45���p�©U^��{��-�\rk�A!���꬜lN�#U)>w#�$�4��&�xYh�AN��_���)���ڴy�̴vY�ȗI.��5ܵ�źl����x�]aŪ���J�6i��Lw�[%�㦃��Vԗ�A��\nijB�S\\tO��i����{�x]�H���֚uOY���g΋\"s�\"�3{���x\r\'V�:dmd���\Zs����~�?�YRr�һ��AM��?F�6�4�]�aY�L�����8Q�1��,�L=������<�1�`dU$�gq]��s]č3wn�Mn\'�\Z�|���R��ԔQ���F�1}.?[��~�a^[��|�r�9!�T���������\")��)	�)ו���j;R.F�D��Dg��*�(\'UÚV�l8/8U5s��eU��*e�R7gS<�Q��\ZR����fXX���g���۷ll|��3���H)Q\"7�\Z�I6�[`�Z\n:�C�)�?���[\n�EM��J�HRޣOv�o0�G?���\nG���jHM�y�L��oO�X7�d�[X����G\\\Z��C؝��	=�:�Ju<2��9Z:�Cq@�X��*�����W^9����FZ�~���D����t^qΈ�k�3����ͮ�u��U\"�#n�ӕ���Iw7���;q�c^������bg����\ncű���1�ɮ��nS���uW��Lt�d�9�~�H&��� W���ڬ}���.�O���X_0����H�j�ù8:5�4���8Ф��@̧�Y��j�j8���j�9o���T1���?��x���\']�������������7T��e���Nܝ9bԨ�6�zx�Ȫ���~s�Þ���;�v٬���� ޡI�7��x�,�����Ѻ�iɬ;GɺQ͐r�I&��y�be:`O�s���S��#�>Qћ��y�����D�F�4�9g��ugU�qڌ˪IkdKv���k^Z|ᒱg�!�p��c����,&G6u�z�&?�I��	�J���pa���t���pf?N7�4V��O�Mt�����͎��2q�i��J>MO7�n3� �B�0]X$���m1�E���d3I:��P]��4[�v�U��Y��A��~ůL˝8����/�]���Ƚ�-d\"�#fb����ik�R w��������c���D>���x��y��nG�c����}x��b���8\"�M�F�S�R�Ҝ����nGL�/�yPiT�xt��1��FRF�k6��lR��j�gF�Z���=��)�^��g��\'�ES���ԿoEH�y)y��@#k�\ZV�D�[����LR+6�m�O���&�!���r��c���\"d7}+Q 6>Ƭ^9#d��}:z.�7�m<�J�\Z���k�}-3�\r��l�-=7e���Ν���B��4Yq��$n�ʒd��pmw�F1v��#3H�y�_�_�ߖ��\\6N���c=s��.�:}��I���]mq�ܱ�f�lU5�%��ٴ}ւ�E��G#��fe���s�����	�|>O ��an��Q�7On}y��)�[��.8y�qt�ץ��~�]G�ԛN-����/xBf�Q��3�����|���h�8O$��*������P�vة}�ّG#���(�!Y$���x�>�{R����=9Yw���F�\r����dhd_�ˁes�_�������v֔5y9>���~(��M��@5S-U�\'H,3��2�=]tlVd��y�ƮwZQ�,�S�0��Ă�W� b���8rj�Nő��C\'֜�Pk�#�a y����m�0��&��@����k���>�#�ӑ�~�#�S&a����h���C9ԏ�sOv�u����Z�C�u��y��S���Srz��8��u�\rw�����z�YF��E#-�n�ӎ4�����~T�<�%n��b\'1�\0u1���n�$�%�}֠���n�ɅJX�(	R��b,�Kn�̬qWӹ�$<�Rdf\r�`M閹�w�N�����f9�Q\\�K��RF��e�e�%^���T�	W�n��\nz��\\.���G(\Zd=��YKE�`V�5mc���i�jO�V]*�D.�K�J�6�.��/>�Ƃl,�*h�Mj�\"V�C���ޣ�1�ƿ�}5�f�<�:Tny�ȧ����8G���93���^Uq�F\\�.}w��v���.)k)o]�����|Eɵ�9<�~y~E�I��\\z狥���5E��6�M�ߎ��~�.�N*��N���mzF/���:��t�XM��}Ȑ2�`�;t�-fi)���`�Z�~�T�OzAa�?��S�J��QN��K٥�.?���7�VrN�>F2��N�l��I���1�ch���,������;�o�\"7���P�N��k�l�gi�.�h/J�&TmU�cn�.��kQ���R.�z�(W�<�t#[Z~�h�_���2��_[Һb��0�t�x�ߟ��a�Q�z��E(��&�Z�)��B��e���f����O���ۂ(�eX+ð��Xf�v3C��Y��j�4#�@��X�~��ֲZ�>�&6��\'�� �*O]�7�oH�.Z��q�g\0]�ۈ�[t�\r���	�D�nf»��}�{}4\Z[�k�3eP�jo��_�=�@���~��\0�hE��W�x9pud5P\Z\r�\"�6�r�5�QȜ��E�=D�9VUuמmꎈ ]9��R���P�npd�_i�[#��U�\"0�X,K? #3ʸ�ҙl��Ѣ�;ȯ��1z\r3C/h�TN���@�7ƎQ�w����w0㘧��`k��6�6N�cp��^�O����������O\nIh�2\"* e)	EQi�v�I�HHb\Z�H�HQ��!�kÂ�(�X֮ �ݵ����L���������{߷�/3�{ι�s˙3�e<Vr)�X�N��fRoҜh�hG�����t���ˤ�vI�?V��)���?��]����������1��N��;�D�7$�9Aq8&CzP<��\0N�1�8�B�z�!:����@h��H�Id$D�N��1� �cX�u�SpL�L��0Lt\nQ�c2ԗ��0�i�%8&C&��F�)�#n�1�\"�a�]���N2�1�Cڋc4���c��T�c-���3S!e�mȌLƱ>���EP�cX��j�c�;Uú�nHu�1��j�a=�6�4{����5	�d��0l�陆cT�Z�Cj1��R�>\Zc�T��g��\0�1�2�ɐ5���b�p�������<��@�����X8sJ���96�Kp�Ωz�,1�0��>�F�&�12��}t��3q���C1Mc�i\Z�LӰ��a�������������\rf\"p�b�8J�����#�E���P�	�c�28�/�K�|�c$_��8�@s`�����q���8\n���5EK�\n	J��$��/s�d�w(�yhE��]��M��-.�\nq�@}<�ˑ����b�I�2>�X%�a���q��σg\'`��M�\\)V�H�<WDp|�����\"�P�M�b�\'�I����Z	�\0H�ErG��o�H�\0�la~�l��WU��-��yQ4,���Rj��A�N]�6Ћ��΋T\0z��EB1G�S`3Gm)_\nwŠ+pT�%\n9��+\\>*�J�8#�Kܝ�����:��̙�<A\"��r$1	Nh2\'(�CR�q x�P0�G\n��zW�R�~܍�nTL���!�+�2I5��#�������`(@\\�B��+\nh�!_���;r\0E\0�roH\n�Z4���Vh��h�J�6�n�	09�_�N�ǁ��4�_��=[����i.8ǁ:ڃ\0�߱����,�!�wpd�w0�4 �p�lz�d�E�C�� l����c���%Ǥ\'cVØ�	���I�zL������u	�.p�����v��4�U{�m�\Z	f1���4\n0�Ȿ���s��:*��(���a�bp�a|	�=@���}	p\r\\\\;�뤫�(_�!��������SOV��i��c�U;�\rhRl��1�����g�սw��CcPOԾȱ�:��_�+P�1��ؚ��S�8s�S>6�b���J��&��0f��ߩ�b��_�P6r��@�Ǌ#6�߮zG|�9��y��(\Z\0�����&�1�z@J��Pt���$�v��{�{|��>\0-��+?kٕ\Z\0�B�\"�Gn(���\nI���u��lIA� ��]�,�(�y<��MC�w��x�:Ժs�,�v�@l�\0ƿ<Ԯ�~��9I�@��v�7�����¿YEB�t��}�K`��*Br�\"�䕁0�7,$FY\0�.�7��v,pm蹝�FB�\0�b��cGcL��D�=�k�y��AdRi	i))ԈP�\nX��\'(@�H9�9�\r��/\n��m�~3U�)m����*�D�o< �!]D��5�N\"�jA��3�B TnD�$���kP�J-R� O���$�.|l�@2PC���Gʝ��;�E�7N���A����!Q�g!*R`	�H u�z�	m���|mGks`��1���&�u��|Œ)�j�6\\[��f�uIJ��Z�O��*c b��IF&_�ab��V�c�R�<�觏�!,&��@�S��3�����o\n���PB1\"Ng!��\n�H��,�lrЍBG�T#j�\'�:���a���j�L5�<>.���`��7�\"X!��H hA$��:D�\0U%,�6���y�V�`���m�ŧ�澼���J�������V��+t��?�0�J7�*Y��W�}=���aoJ~�dy�ۺu����~Z1�rU}����q��},<����\Z�wQf����2ֶ��MV�L+IM[�[�f���͡��\r�nD>@^�N�x�N.doqt�P�[g��������w�9�>b��=o����E����p���		�wf���^�)���rt�uMX�ת�aI�Eic(��/�K\'�ҡM�w���6��\"�#0���z������DBRKQ*���\ZI-L1�zQ�R -4!�xoPn��\rҿ~��zAG������/���}vw��ш@h\'k!$pB�Q�ܗl\\gޠ�$Sw��u\"x��юGs_!�(��&a���!�+bAٮ�qC�4\n��N\Z*�ST�.̟=>����$�4�-��Թ��O�u���D�_qGo\r�(8����~�����߲�i����Ͳ˚ع^Es��.g�����k��5_�A��o?&�:j=�-X�k3������vzL}M�wl����\\�soH���_n����˽{;�|�{U�Br-�A�>Vi����κ�݈�S���0���|J5����i���{���Jg.��������[�#H�Ű��ݡ�w��3�y6�����o��5��H�tc�3�1X,쥹��@��w5\Zp� Ƹ1����2����.�_�M[8`钃BB�:�I������j�n\r�-�\n���b�g�(�[�rՐ�\n��f*�g�yu�G���+�Lhy���H�/�A���=����}�TSٓ\n�r����d\'����e&l�ĖCe���O2\n��T$Qn��b�=�rդe���g�N���0\'#��˻���-�D���� /].���/z>.����l���Y�����S_)���f��0��7�4~Lu���\"J��ԝ�7R���e����j�XC��?e&�81�q��MP�i�M{�r��`��O6��c�\'$�}ϱ��.f�Ӓ��\\33/}��V��b�g���`#SS��a>�l��M�yۏF,�^��.q+qI�ߦs��.��XJu�nȜ|���s$$��B�쉸#��:BL���}?��/��$ﲡ��cCZTf���Ko���o��S>��|�]��Hn��E�҇_��~w�M���V�}w��G6�����-x�:�yJ���u)�a�F���C�8�Ϣ��ƆaSL���>�j\'o\'n�њ������̇������X(��>�qm���u�ڇ�]x�&�P������4�8*^q{���cw�}��`�S��xv�h�jɠ��r����VG3t/\Zo�yGƔ�Z���=ip��|��!lAh�g�(BG��o�Y������N�\Z��:}�����U!���޷�,\'͏.�\Z���\\�W��8;����\r�C�!����8ɟ�u�v��7��LC�����2���jÐ�3���~s,#�f�r^�eh��c�/%k}z�8���֫���yC��z��@���\r7�N��u�0�f$y���8^ܸ�ۍ����_t:�nr �-�}m1-�\"fL��Z�4����+#��1㶧$z��JĎ�S��v#��^q��Ă�����N(���lĲ����v!&�g1�//\nf5-�oi�S�A�ޖ�Ms�/�1�t���b�;�R�zj��ҺY�gZ��ë>�OM�N��8_TniP\'^��<�Q��Xu�Ql��X�qh�?��6~gч���F�?\nYx��l|��Ck�����=u�����HֳЁ±�X_���L�[\Z�C����8�Z�;w�J�gK�r^�\"jFjk9�����9{y��Hݦ�}.���r�jτ��4AR,������2.�j��/iosz�.q=�4�d�����u\r�������\'>;��y5��y�	�K&�(�<VW�̼QYi��n�1���6C��Z���^@�����C�gOjB?f�?�zs���b40��¥�ެ&�:-��<�N��o�t�$_Q�%ҫ[wǆ�����YD��������:�U�-��Q�[�;���u��ܯIG���� @�u�G�|�{Z_z�-�1��!��,F\rWWhI��+ң��`u�B�+���G���~���n�,��+�����g3��Aj�̾��!u\n�K���6��LՁ}L&̿�����w2.�ї=��fc��Z�,�[1�y[���k~R����s_*��վ�6񎹯�]J�k��n�Ƀ-�\Z9���C�#�/��u#��F�˷��#��\roٚG�\r[6N����-�\Z�2t(�SZU���Y����{^��s�󐾵���^���}�Wz�B�+�Ow+Z͵0N��@�d۰�9�����O���\";	i������N�Z�?8�!�-�k\\�F����㌱ڮ��oK\n,MHfN�����ٳx�3�t�k@�Y�y����V�����ZϿKZ�~�L�ǈ�?ɔ�2	��ɔ:4�{����ڞ��b��/gF��}0�@=�J�7��d��c�g|�9���r�Շ���U�&���p+���\r�b��_w��Ȧ�Bq�N��Ґ�E#��\rS�4��9Ȼ���s�����d<��W-�������P9�W�xǊ�٫��4-�X7�&q�������MW5�ػx���M��龹6v@�O΂�9�m��I^�GY9��x�v�!��f�����V������?2v����H-��\'d�_����5�\r^5�޵����&�yȃj�T�;��*�\Z�\n����7޲}s#��QWI�)��O�6����\r����ˠ#��> jt6$3�R���������OE]��^[��}�j$J��cYb�b�����0$��O��w�Ld�{_G����D���;��I���1̛���oi�^L/Xbа��f�]Y�3\"����ƕ6��A�^x7����y�҂Nz̛	G��L��mĤqK�FA�[Ӕu��i�Y���G̬;9.~�@E���[[�C��\\�[\n,k��������f��)\r�ޘH�Ju��+�`����[w�w�Ųs�y/?���պeY�|�W��s�Uxɞ���]Y�o&{/�{L�!��Ke�ԛ�A� �\n���j�6 �p�ma��Hކ)���*no��;�r\r*�%�\"�:K���H��|9v�D~s��˱d:b��u�>�%�>;9Z�^��� ,pye0��8O�G�u;���ѣ�6_����̈́�]��D>;u�̓9����5�y����^��&�fW�!���\\i��nyי\r;e\'��)��ֹ&�nL��������E�ӈM�͎�/�3��d���g���^��\\��Q�\r}]}��w��ԝ�.��\\�H���Ί��m�MM����\rI�0���ub_����_�l�\n�{��|��v�{x�\0bXB�����\\ͣ�6l\\Q�h���(̟A{��۔���Ϻ��?�4\Z��ֳ��Ao/g�ݧ�C�XQ���.Ƥ�⊃���uA�c��U��+	�I4���y�_3��(\r\nendstream\r\nendobj\r\n74 0 obj\r\n[ 352 0 0 0 0 1076 0 0 0 0 0 0 364 454 364 0 636 636 636 636 636 636 0 636 636 636 454 0 0 0 0 0 0 684 0 0 771 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 601 623 521 623 596 352 623 0 274 0 0 274 973 633 607 623 0 427 521 394 633 592 0 592 0 525 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 596] \r\nendobj\r\n75 0 obj\r\n<</Filter/FlateDecode/Length 18811/Length1 61144>>\r\nstream\r\nx��}y|T����sg�3�Y�I&3��B2I�IB 0�,�0� #	�@��ZEp_�R�Zk5���R��+��V���G�Vj-���;gfBx�X?}�?^����{�{�9��9�s\'�\0\0$:jg5LѬ�i-��87L�����~�7�1W�M�4�*�މ�c��j��(��\\�~����2�~�\r+N�~�=�4+X�b�	���;f�No[��\r�\0LX^8�`Yg�CO�<��d�\\�z�w��\'�\0;����s��[v�+˚�aqv�y�+��	Z�_F��[���	7^��z@���������`���|i��ή�.Z��Z���a��\'m��{�:{ѲUk^\Z����<��.i2����L]�|Ag����\0O�\04��:�t�%��!�뽠s��[w����t@;�{��U�&X��SHz����R�Q_�}Ȟ�ׂ�eo��=��@:v\r⁋k�����������_+-�K-����3��~��ZZ�p� 1ܣ0�K�!��:�/��,oavb�$�\"�b�9�3w\'�aՋ<\'�<��bT�٤�I��gy���9�/Hz�!/0w�4>\"$O\n�o�Z��r?� ܟh�t\\��3���9܌�r-8�r��8�|��1���i�����3s��Na\r�a�\0���|Cy~���w����S���b</埆%�/�$L��x8�Ïi�����\rKH9�-��/��`\"�����Z�~���D�c������������=U�P�B����e����&�4c�̀�����S	@Z�Dv�Z�F�јa�>�>��l��E�,I�Ԝ�魩P����\0C\0�Z��Rt�B:de�0��F0FP�&ddd3eX��`���HA���N�d\'8�\'!R�����t�t��=np#gB&���^�>�E�Y���?r6� �@.r.�אyȣ`r>�#@\09��O(�B�\"(B.�b� �F\rc�_��%P�\\\n��!!�Ay�PN�*���X�J�D��a<T!W��	�\'�D�0��_�Nn�$��P�\\5ȵP�;��d��0y\n�z�Gn����`*LEn�i��`:�t�g�Y�c�M�3��f\"�D>\n�`r� �B+�l��-��Qn�v�90�l��<\"��qC�8y�C��N��o�Oy,@�.䅰�\\8/�W8!/��#/�%������p�y���������y啰y�B�1�8�	�����\Z�5���Z�u�.z��z�\r�_��E�b�y#l�~�`�O��?�K�/�|)\\\Z�6�f���2�-�y+����臰\r�!_W _	W!_ۑ�#\0;`�N؉|5\\�|\r\\�|-��p\\�|=\\�|܀|#܄|�=7S�nE���mp�����{p;�;�N�;)�w!�w�=��P�܋|/����;p?�����_!����`�/�kx�!x�a�AvE߆^�E�\r}�}��#�y�[�(<��{���>�}��c�����qx�7��p\0�\0�6�\'�-�\'�I��i���g���³ȿ��!?�!?/ �\0/F߄�%�(�/#��\"�\n�E�\0�Q>�_�ב߀7���A�M�#�)�	���gx+��o#�\rA��w��w�����B>D�}�\0��у�|��1F>� B�S�4�\Z|�!����)�#�#�W���(C>C����ȯ���%�q8���\n�+�\'�?�_���k����O�I�p*����D��(2�<\n�~�^\'��9\'p�� \'>)��1h�,\"\'��^�E��i�1Q�\n���M����0�Ƶ��_��Q�\Z�]=)��ՈX,�5#5Gծ\n�z�>�]C,\"�v�a�M�]�L�\n�]���*T�8\r�р�ġ��D�9%Ѯ.I-�$J/ŴK�\n\ZA\"�M�E�Q�1Q�\n�a4\ZA�~7�]T�0���M�0���B�ghŬjW���{0�&Ԯ�\Z�cD�Z\nr�kW7L�I���h%AK�k$EEI�J��$ZQ��r*T$�l��v5�f�iWGAN�us�v�}���JZm\\��V�.�?�G�g2�\\�\nI`���\'<���܈\Z�����J�]�N��D�HH�IQQ��}�vG���]*�#,VjW���5�+氟��;��a�5%�E���u��jע��A���Q���v�9�*T�Hk�5�ݔX�F�$��d�$��Q���v��(n�Iɴ;�<U�P��bK!���l�\\1�@ANq��I֜��Ag�k��\\�J�J:��h7�\";�<\r#%�P��4ljWB�:bD�F\nr�k�4L�I~U�3��M1�v�:Ɉ�O&��9⯴�P��4�N;�.���X����i7�n��-��$��z�Qc�ڵ��Z��jwDy��U��;�\0IҢFScD�&\nr�kW�ܦ$��hқ���j�n2�P�Z�?�\";�<��S�BE8ӜD���_�&ڕ)�)�]��6�vM&��׮CF��ZşL�#�3ً0*T$A�+5����j\"�xZ�q��<L��$��d�l�d�]\')�3ƴ�d�U��B���t����>����Π9��M\\t��$��-&�Yg!?��qY�0��3J>�P�#5\'ً0*T$���&�5�_�\'��`� ���iz\r=�/>�l���w2HQ��������#�3ً0*T$�7�z�5��0��Q�S\\{�a�,=I-)6�-Eo����Rl`�m)�g\'j����9�*T�H_����_$ڵS�S\\��a��HR��n��v�]��f\'ڵ���iwDy�GJT�B�i���QF���E-FH� ���҆��C��p8S�����.��p�9Ev:p�N��:�u\Z�r*T$AAQȲ5V��SdH� �����{��\'�%��p��.�!?=�V�%=\r%�D�iߌ:�d�\n*�����f����n��n\nr����a��KRK�;՝nvS��3�`K��Q�����~_�\n�%�%`��pC[��:�� ��BY�$[���L�˓i�����o��.�72O�ϰ�#5��}�C��\Z�ǕCJ��q�[�\r�(�)����lq�Z�YYޔ,�ݲ,_83�Y(�d/��#5\'��>�\n?4��8l6\':�cv�r(�)�n�\Z��IR�?;3�o˦���φ�Lg�?�\"�l�<���� *T��PS_��.����\"R3S!@ANq��ZJ����Q��Q��G+��\n���w�B�\'ꨑ����B��͍�re����H�J����aK�\\j�p�Z��y�\"W�|<ko���,��d/���u\Z���s�P�Cì�Y�v�r�c���PFAN���J\0%Qbr�ZJB��w��VNm.+	�?�+��u�7�&�P�}�C��\Z�.�^ov��X����(�)��\n��)�g%���rte���j�}��J��=�ʓ��#5g�H�*T�8���]����vi,\"�(\nr�;��\0�%Z��R514��?�|v���0���x�l�\Z�9��}*~�`��mn����/<gX��9�ȑ/ ��I�l����LWzF�,��}(<:�}k�&O�o�\n�\0�f4Ϝ����gC$I�ઑ�9�����ȹ�ŐY��8��I8�M��`16j5��up\'�\Z��h�G`9�S��E,_\'�[\n+���p��ߟ�[��7�+�֖��`qQan�ǖb�\r�z{��:��s�6o�\"�6mGmQa�̶��t����Ћѵ���[�3y���mu$C�5���ԑcI�rE��>�SRN��G\\9,ɻ�G��+��\nl����;�.W�ܶ���1�Z�H��ѱ���ciJ�o\"I[ԁ��RI�1Z[Ӷ�w �Ǌ�K�g\n昲�tn[]�b/�ܶm������>����gt�d��m�&����ul��n������v56n���������]��3���s�\"f>2y��3���>���罢_��xѳ��-v��齠�=lI9�H����M����~��5m\\:�7��76�i��m�7836v����]~fk�.��:kN�^3Z�֖�^�ak:��wecZ�^/\Z\n�eI,�$^r�vG/+���{�M4���zA?4NJ�1����řq,��8���ð5-m�[�i;�^h�P2{�K�ͽ�^�wFow��;{{z_�=ԫ;�{��E[S�q��{jy�g6��:��]�����p�<��Ϝ��gʹ�Sf�*�)\r%|=\re�|U�����O��������\'��.+�KJ��Ҳ_j�Ce��k�C�c!�?�������}f?��P�}Z���Uϯ�}�nlֱݻi�Jt�6�|����|k\n߽�{\r+�����3GZ�r�#�\\�щ����mN�ȗʛ���y��R�vώ��M�7m�q���;���*+?՚����r��P./c��1��1�g�>�z�Q�aa>���Y���NV>�)�Y�B[�U��>�f�=�L��ὶ*�yW�J�§��x����c�l����-xt��6��\\6x@d�O5zO6zt\Z=Z<�����F�����k�0{\Z=�h��\'<�(�<���������<���y򩧍O��q��1����aϣ���M�Ye尿��\'��i��=��\'���|bϫ{�{$���7Y��8�e��!0�L��6BcKuO\n��Yջ�%�ƞ��՛����sZn�&w{��yP�=����qV<��e媕+I�����u�:{D�Jra\"&�-Lu=2	���\0�c�[�c��7*Y�@`e<1v#J��d�$mY����M8&�7������O����\Zl箣�|p<�y^���Ó��\Zz�\0�x�B���-8:w����3����/�!�\r��)��\nWc�/��a����������ɧXk�g``2+�������J�.�v=�Lø	7c��w\r���,^`6.�K�؅9~K�\n0��0���p!����]p<��Z�-�\ZnIR�OX�U�1�|���}��>�,��/lI���/vD���=���q�����0���,��P9<�Y�\0����˔ƌ�Y|�$s��$�Ir�M��YƏ��H�N%�Ckִ\n��e ���p�?�N��̶b��>Y��}F#\r��O��%):��m���\n����E |�43���\\�����\\d���K�����\'�o�l|?w��EmI�bgE��0�VѲ\\!�)�/���F�G����`U�:�����C�\r<�֐;��~(i�#��jyP\n�)+���Ӧ�.�,Ur�RS��|)W����l������6y�)e�gu����1|Ns�k�X��4kY�3I�fo��Ʀ��iN�5k0��q8FL�lV̬9�@&^QV�Y���G�#���X(�ȑp8v��D����-���8r�v�5��g�v����|x�[�x�}��}d����_pv3� �\'k�:���ܮv�ڡP��[o�w譿8ľ	C�`���֭����-��x\0�~��v6�Z�L�u1L�-�J���Vhg��p�����l�u�b���|�$HG��S����kb��;�\'~3;�Ӳ��N�bc�e\\�e�	��y0�|Y!��\0���W��;�nv�#��\0��=�=�lF�\"�?���#�d�ˠ���E��[J�Ϗ��,\\}��!E+��/��r�R2���O\re�1\r�ZC��1�6�`oв�N\'�G�F��n���>����!R�}�)�W��C*I��s�O�.���<)�N������BJ�f��@ʉ7e��B��#2���\'�0f��e-f��ke���B�y�d�5\"y��>����׃��y��2��˟���_;���Yi�l�ڮs6��\r.����lc�b�n<�H�۷�t��g��4���>묙ga�2�*�MT�>%�H�D�h&�b�̓1\Z�[��8�T��0Y\r���g$�Ɒ�Y6�賛���j�an9��q��L\"X���\'��9Hp�/ݤO�LR����F���KR�{��$	���J¥Ab,�Dڌ�WVR^Q^^Qj��U��b�_��).�oeF���j��M�t�I������>h@i����\'Z�ݒm/�5����pf��Q�7֙��M�\r�y\\��gkg[楝�ɘ瞗���Z�ۗgv��,]36f��C}�G��+CB�����`�hY�EY���!I�L�OMaY�TF�R�\n%��i$]�9���i�t��t]\Z��� �p8��g�Y�,;�f��+�)B�{�笕��p�!}9f4�n+\']VF\'��J��E�����W�2/~���o����/�M9��c��-n<��������}oo\\u�R���;��^[=qM��gZ���C�m�>�\0(mz�t���|}n0��J_f�\nN���j�j���v�]�\Z\\�?7��j�~upU��*Wh\\�8v�8�{��R��O�hǰ��cd�F�T�Ο�+?��W~_5�\n��R�H��\"�ؑ�� 9�IN��+���碶g��vgX{¬ᖉ����@��4c���XG�&����������5����J�H+�ċ�^�0!Ǻ�H���;�i�ĩ5�/��pl��z������Ң�MS�L��������ޜGzٽ5�S�h����O�;�������c��.i��8��w��f��V;�����[�ް7�$��|8�~7��:02!e�DU���Pf)KT�Z�e����k)3�Yʼ�f�6����n�hH%�h0֣�D����dg�F���p��5�X��=2�1��r��z��/��{uZ��$28��艵3:��I��甐�#�1,rb.�`D�N���&[j\r\"m�LL%4��r)�T*#d]�!\r�Jp��ye�y�?`\"ýb�o��,ÔZJ}���΁�\n�`�;��`��0w��O�`�� ��c��������}�EY\'���4A*�Lp4J��9RK�i�dp�]\rd1Qr�����M�3YY��ә��:o������6�7q�R�S��)�&�9n:q�m	���O\'#h�׭��(�=����@��-�1;�=s$<m��@d����l�o�r�l���$���<���w����,�̿,��9TXT]?����ܦ�I�9��{��hc���7�&7�f�jUX�4}�7דj`�����P�Cؗ�E��c_�p�^��ɨ]��8�Tʩ93:6��g\Z�6v-Z�=��N8V�%��}:`Y��i<q<p䭕�,�A:�G�`���O���s�d_>�Ý��~�$d=L��u�w�ۄ/!\rFAs�^�Ec6����ى�?�\"w+	B�ҬP^���>)�6��t���9�s<-Y���ƴ��TtH�M���:�y�M���/��E�����\\�.�s�)f���ӹ#�\"#n6�����¤�@Pg�O���<�m�>p�z���J��S�z���Ii��H\Z�$�2\ZKhJ	upJ|�c�_�����7棄��R\Z��Hܣ�:+#5-mJf{��l~a	W�������]��sE����-$�v4���l���F/��,����ʄ�%����ʜ��)���ĸg��6��G|�%kV2�?���.^w�uG~��⻚g�\\Q�`��yu�;2gپ�<����(�xj���E��z����zئ�7�9�~q�u\\J����s��u�f��ɖ�p.�0�!�-���SB����U9U���i9�5�m�<g$ufz7�>G��K\Zl�\r6�Wq�E{�ڥ��]�uQ�2H=Ms̿�\rL!��B���>�\']<��a,�\"�0�+��J�����X+�|m�F�Ok�ZS2�]���jRr5Q����9g~�747[�^2靓��=�s�olkg\n�����u��������ʕ���g�9�����^�AoxBNg����������̚�Y�\'�u�(���yk�<��Q�|�#��Ԁ�^��Q�lVg��D�㢷J\\�������r)Nɥl�Q�0�w��\0,��-��/4���^1��W*ʊ�,I_SML4��W��T�N�j�:�݂��a\rZ��gx� �ĕ\Z�����2ݎ�)�n���D�Y\'0��60��q����a,�-��&鄀P.LZ���zA#t�q�EW\rg!\'��\"U��J��&��e(r����I:@�# ����8��RF8�k6\\�<��HO�`���Zþ=��}��E/��	���^im�.fyGH�!��\Z��QR���:�p �-N�]O���_�zM�4�x��#{��h�I��I��Mc\"Ui��Ԇ��b�F\"u���.\r��t&��G�$�=t`�f�-R�$��\"	+�Y���-@	ڊ�0��\n���=��˃[�Uo1L�M��nm۳���������O^�svx�p0\\1o��7>VW�w��)���@��+�;�I9o��ˎ�u��n�С��vs�n��U;[7G�uq�����XN+���Խ��S7������\0o�k���k9;E����>����e�孑�k�L::����2Ħ\n:6�K�<�\ruja�I6yL3L� �	��P	tO!P/I੗��1�����İ}6���X:��\nWY+�/�p���Kx6Ҏ��.����&�\0���\n���ZL<0��	_=;8��½�	�����;u#���\0��S���E�}��5���+{!3�*�ɖ���:ޟ���������r�vSs���Ŧ����u�n��B+��0ڢXX��+e�G_P����&##5���L�t��n�W��{Y��\Z��`S�$����P���I@��:�n=�tĭq=V,tĩ����\n\Z��kr��L�Z-فRs��L.�˸�X���b��$E�%R���F1u2�����j���ԛ�K��>��[o�a��X� 7��ݖ^Gn��s-)��9tz��.V	�5�ক�bG�\Z���-`�)�\0���ĸJ܃�스�+�\"�ߚ���XZ�ນ7��l�L�=E��\'L�ө�xm�ꇕp�c�?�m�Zuт{.�L�:=�ݺ�gEE^ɭ��:�y9O��y��k���\n����l��N֚�hi;E����S�Cl�<�>�[��ɍv��#�y֍���I+:�-���TD�^�%ީ�n�p��8]�l�P���/���ōḢ�`����}t�Ł��ӑߙ��\ng��t�D�q�M^lH�\0-�����4��2�Gߥo1�Al\n0��2�;c�+b�IIi��G��!w6l����c1?�\Z耣�X�T�\rY�ɈZcN��{���f����^g���Ի�ُ���ڙ���X�p�.���CӚ��rC�m���f\r�6x��W��ؔ��2�鋣�p_���S���&?`�L���qL�i��,��i�՚��RۙV�bf�i�Ҕb6����s�9��󹟾�C���M����L��W��TPN��WG*gb$�D���x�>�Jt$���=�����`Mek�����B@�%D�E�EAP�(U�Rb*��� ��c�-c�3�������{������Q᮵v�r�3���������|{�U��o}ko9@=K9u.&���������r1����	��g���!��Be�!k�VMHL�������,s[�e;��\n��`m秈OH�>�]�x��N�t��G�u��}1��h��\')��%2���TI�ifS-��pB�w�S8۱�Lhe\n��>������htQ�U�U����,@�r�Jb�����D��CEۀ!R�a/0�ע���=Ʌ���Fra�M6{{�N�{d��h�e��lnb#���AZ��!���3�~B7WB�\ra�0����n���ޱ1[r�7$77���_��anڪ��^x.l��+%�������q�\\?z�T<D���Q�T&Ɯp��Ӄ��ɨ0^�c4��Kv�K��˶����Ý�,\"�).c��\r�ˊ�\0���.g��v@$��-Q;�K� �$���*!�p�pvr�r&��`��O8�$�0���\"$��IA�� B\\!!��P\r;�IM8L3��\Z���t\\�r;\0�۝�;�@k�w)&��\"�֯\'T��#�]�fdj~��\r=X��Cw�y��W���s�m2\'��e�A�\'���~�5����/:�Y�q��#ELG��g;0��C�)	Rk	r�V�Vè(k�ˏd<6��8>Px�$.bW@���:�V`\\��\\��!�W�!|h2|)싏�������}�� ǁ/���a@Em�ؙ*�B�h3���(~ئ�j����\\6�0(�*t\r�O�lI��S�Ge	����\\]}pgTAg���iK�w\'�,q?t��\r��X7������Z�_�edg�o7Y\'�2�s�d� <�1�f8^�nS�PK�.����ґ��^�4z9�{��p�,WI���[�,�8��Md� ��DF\'M�$$2���\0N�PҊ\'��b�L�$����I� |�x}�U� �� �A\"��#K#�=��\'1D%w؛�b�bt�\"Fu!\r�:�q�5��{���7W(PjD&w��q��S�\n��t:��k����g����w�\0\\q�\Z�31���5ʅ\'-H_]���k���+\n���,��;㬯Τħzz��_$r\\:�>ؼ?\n��z�\'2��Hޏ�B�`�1�Kx4�^)���)E�\Z�nR�%\"�e�ΌG_�u	բ	�����BH��:OQ�r{��C\0G-� ����sfA�]��\"�BZ�?sGfL!�Q����jY�4�����[7�+�0 1�4�C\0юvc���|��Ѱx��7h�Q@��h��p`�$<N�x��ys3C��[w*ŵA2\Z����#��ƍ�&�1��8\r�D���K�!(��X����q6��,��^�P�[I5O	h��F��<n�nD;����ط\"�����ēO���G77�)����0�-�$�����A�2������*�`���k���6h�kÁ���#�eV\\��`�@�&~�3��)S�37�����;F\Z㱭3k�;���Ɂm��˅���l���\'�S������\\\n~H�!���S���<�06����	F�\n9�eӲb\"\ZW�\nZ���;����B=��hhhh�����	;+�\08(\Z�?K��!gT��i@�C�@�+�N4&	\Z��I��$Ac��1IИ$�r:��;RNT��`�-u0��f�	zWOJ>��!�I�L����XnDm���\ZraX��i�ςo҄GE��)���>��h�7n���Zhr��4�Ԛe�̳��읺$��h�������i�zj�Gl_OT%�{���F�F8�UIu^>>)a�wSYU���}���:L�5ؘ\r>XiIZ�XWX���%�g�<���.��%A�QT�>��^i�l\n-�(����V�f�n�6T���%�P�.6�n�\nf����bB�oF{k�oF�ilM�3( n#���g�+��������� )lhC�k����E~��Ϧ����[Oq�P����f��nHr�o����&�zN���m���n�5H����=��0~� �*�&�#��J�a[Dq(�(���`��q��eN�hq���<���z9�7�;n�F��f{�Ud�p�g�x�\Zo�9t������.ʮ̎�EG�b�\"$��:$%��Ȟ���D�9ZLt�L�*#���6L�z��|��(~\n���N��������<`�.��#M���F��?|�{��>~���7o�����]G���~��q!�\"t?�^9w���+�`DJ�O}$w�}��\n\"�Z!�&�{H3E��/�Uf�h�Q��p�?:.�,,E��Ȃ��(�PNL�\rp0���[��tZ?K�o#��L�R�5,�j�\"c|J�)>�a�꿏P\r��U�����MOlnN�9���_��*9�<q�\"��N���^:_ƛ����S�GGǅ�Mv�����8[\"��\n�	xRiα\0�mf��a�TvC\\Ƭ�Vj+��B�d!F�oX��,�b$K�10�ct��\\70��\'DQ)7�E��!���7tH���C���\0!}\n����Aj�:�v�\"��Y�n��ח�ʌ�3���T����Hi���%j��+�1	��5ag��������स\rad�d8g�Q�1�m���\n���j�VZ���o��I&{�����b|�7�HNp�]�P�]\\<\"�����0��8�!�D@vx#�y#�y#�z#�z#@�F@%F�	1:�#�{��-h�7�����o@E>\\���E�=�,f�UJoc��ꥒ��(+��M���^+=�i5�c�C���,a,�gI���P\0�C^��	�\0Pƈ	H�=\n-��\Z���A��ރ�w�(�h����E^j�Vu*�l����i�^5��ǅv��4\"�D�Y�ɼ�F��C�j|&���=��z.:5-�����#�{�+�+��	NL���jc.6sLL�����X��c��}����\nX�<����6��v��D�i��<�\0��\0	R��^��,@{�@b�f�\n�t��X�Q�6e0��LX(ڀ���ZƲE�c\rGQ�v hUd�������6t�6�M���Ś�*�-x�|����f|���-���ocf�m?F�/����,ё��|���9�;?������Ҋ˴c�e�Ú��`��l+�=ʧ���Uk�e\':��E�W�?�u�2)-�M��(�C�� �G.N�>�F�Z�5��mX��Ph`�&�\n���\'�~\ZS�x��\0jh!�{P�z1~�0���<�Ն_����Ħ���K��m��V��z���=��F\0D�rab�w`��6�Fp�Fr�M�k:E���<�2�\r	�zP��.T(3�Jd2��%�7#��`J��� �0O�+B&a�d>�`c���I�&p�p����c�pl,Fa��l�$-����H�bn-\0DX\r� @��g�/��W�,���|S*ǩj]�.]�q| T��J*��d��6�v�-{���ۑ~q��j.Z�ptϵǭH+�=Ǔ�d�caxD1�Xa��,�!c�f+���l ޗ���\Z���-óI#�U��u� 0v!c�J�xB\r�.1㚱$L����A�h�\ZKU0	&�4�$x8`����\\\0��`��y<�z��\r�QL��)�T�9Б,|�#�G!�տL�E�\\�7����rv����\nĩ	����\Z�Y���ï��&]�G�t�5mWA�Y�����\n����ԍHHY�����$2�=����fW�j��EF2�����$X,��4r��Qܡ�2n5�AL2�o��\r\0�����uv�/�Y�����c��m��6\r�t*������v�$�9���>����aw+��8���O0���N�g�4��ܔ6�x&6�Qid6z!����1����H����&�4ݗ�(��2N�+�/���+��_�_��b2�S�������U�j4��V����ř��.�_��̕<;�Y�H������)*�TZ�[=�eSokm{G�\\/�/�\"�ҕ�|����������������0��xH����	0��� �i��A:�dZ�Y�RA{6�ғ �J�a��[A:\0�x�20�4�<�bA�?@*%�@�GX\"�+���D�N\"xڀ����(MG��Q�t����\0���3P~_�Bw�D�~�r.c@��Ҵ�1�Nh�t�B���@��x0�A��}�&!:�Y��,P���(Mh	�$D�\Z��\'��ߏ��_V�c,pG����4	rK�4eR���c���`�䳰0#����R=��S�&=��:�o�7�P$�˜pE4�\"�L��h�OE4�C�-�ez\Z���9=M`|�DO�X>���)�2LL���L�|6�Hs0�IO���=���0smf2~.s��M���f@�\0��yі�1�\"�ʤ�5�#Mۘ�ۡ��m�����dR�Ʉv��Y$��-�4�d�l���M����_+U��riOU����l�V\Z]�Q�ir���Ri��bi���H[.M/(/Ќ*���,����HU���V��_P��!-&��4T�)�P�켲uN������������\r�/=J��e�R/c9�9Z��hit�F[�PV!-ɩ�V����\0���j�9�Ru��D���Ks+�0b��tO5�F�)˯��JU���E��\"���SU�W\\��jˤ��ru1� �4�R�y�TA��_j軬��R�����J�*5�pD�x���P�)(�jTy��&���ƶ��\0�T�mA	�Fz�/]Z\\�c�)s=��L�t�\n��B+�/��+�e�\n�՟L�H�Uw=z�����@T�JuY�&G]T\0�(�zae�@DV��b��.��yX�b�����L>K��)��_�?���=�g��=���a�+C�XOL��reX9��J�hԚ\Z�9 G�R�<��/�� �+���]�,\0�G�4��Dw�h9��\n���������\0y�_���v<�Bt_�d(�>K�=�A����f��F�ZZ*F�����(łA;2�J1���F_��Տu4�lG�Z��(E3���+��hC�h/�\Z�+O���|����\Z����w����\Z�,���ZT��F}側�~�{X6�I\"�-i>z�FܩD�,EOa_*}y��\nP\n���y��ň����\'�v����FU�Y��GZ�G-�<\r�	-\Zw�Q�;�;����\n3�\0�	=-��`\Z��Y��we��p�eH�;�)�眏xZ��Z�O�Y�t�S�T�F;\nͦ��,Y��⿓P�\Zh{\0�F��q�c���[U\0�+��ՠ�J�k�E9f�HsT��;�\n>B���0	��Hɩd*��\0i((�����;(��.E�0���mLߨB�@^-���������ȭ00j�a��s�`xq���>CJ�)f����� �]i��z]�t\\�Ѥn��1��,���\n���[#�_���?=��Q��Kr*9\r���-x�K������5}{��0��\"����t�O������e��� +��q9W�a2|�$!a`��������e�z�|MrV8Np\0.:�R��Am�2��	/��Ic�UB?n�C*Z��>xg�M/�es�,��e�T���LYF8A���^Ok���^C�N`(j��̛I����.�e�J\rt}�^y�Ryhh�\'N���Q�@���}�;˜�s�R��yzY�VڽB[T�Qi+e��<Y������myr�\r���@Y%�h�iI�͐[ʄ��mi�/��8ZЍ@Ƈ�,KVzA~IYi�a`f�l`�2gz`����Ua)tQҢ��jq�(@g`d-n��|3�Ǳm��/fm�\r�6�{��7������sZr(v��3q��O�yDJz����=/\'�E�9麍�����F��f�����,����t�������bW�NrZpbS���I~UeW�æ�\nBo��~9,�W��<�l)�\'/z��Ƽ��7���L�k�в}��S]פ��zN�uC֊E�<�&�fw����o��Z7��7�;s̰E��y��[~y!ݑ*��w���\"���Τ�ai��zW~�4�pf��ڴ�RƏ��ƹ�J���q�/K\'�3�,9�TO��c��N��A�_�^Y�VV�����;e.3c���2,��լ��8U�f�����*���_Xm���~l��߯o��>ljxx��Ldkޣ[J��%��S	>d�`�����w:9\nSZ���/����2&[P0�z�!�F�[��I-\'�{iW���v��T߶.e��烣��U�+�^��N>�:�����2˞�Ŭ����=����ܥv�9��:6y��xM��3n�6F��ܵ�l�z׶[.�83v��`;�^�Y�F �g<��;����ۺθ���*:�kB�þݹmgc��RP5����=n��ݹ����&��YwS�v]Q�w>�Z77�XZ3�uJ�����=��$I૰��j�W���w�����]�n�#���Z�:7���~{���,/��}���f��	=4��\0c����cL�q!�BkS;b\0��Z5\09\0\Z���@�p�������O��C�T�Ꙛ�n(N����{V�Ԋ�][��y�݄����͗�w~�v���=-v�]u>��0�*j˂Q�ݮ/K���9=��b�7K\'mt���jK��)���e�����H�i�8�x����86��u_]^��2�E��.���,�w(A�a�����ֽ��[�y��1N�q�����w���ii��~e��X�w5\'�t���&�����(���P�Y�!r�Y%{��l�����N<9_%�zoQ��)U3ɤ��҄E\r�#���P87��G���N��?�z��dܻ���{�)|�Ǟײ�Wc�+��9�<w荕ڥC��;�2�����z`Ȭ	7:�Rb�̈́��>p�\"da��e!˂����<M�\'�G��\r����3����,Y�a�8N�˺ɺ\Z�eD��?ݐ�4&-i?1(�>�ٞ��d����!�C*6�[�u&l��p~�㕢��7�k-i�,�849�u��}i��+y^���>��s��W}3����5��Uk�1`�����0ָ�ݫ���F�o��怓8���YfyfuN���n��^����͋�\n3�=�5���[cNN���[ޜ�l���GY�ُa\\ʫQ�69��i@��q{�ۭ�������LpM��{���?��<��E�:�A�c�����S]�t=j_~-�JЭ�g��3��D�������}���Ņ���?_s���O�>����{1�u�k�N������3�NY���L.\n\n��\nn��NUIA�6�D�W}��!����4R|�dBd�޷�~�U�����82�J�|��֙����&��?�L5��ӊ�S}{��z��a��n{Z��ē��D��\\�N)�dR�����$��v���=K\'�p�:���j�v�cQ��+{G\r�՝ڜ9h�C^����\'(���������/ׇ�V���ʩ\Z�[\\\\:�������*��V,9;�����ة7&	�6��\"�^��}���c�Ku����ʻ���+�g316�n{=gФ����)���p�lQ�����=\ZG�xS�{��u�8��?����YX�Ѕ�L���~��y;��%��h^���aݣ���+X����KV�]H4��cO�37����S(�_��Sظ<���c�?-�+���k��;���q��m+3�7�m\r�?���o�l����}[��r�K����%U.���Mz1�b7��.�~�@��t���\'o4��GG~P\\���X�/]Έ������&��%�\r�7o���r������<eivȲ`L��SM��n��S��Ah��SZ��ּ�t��?!�I�m�����S;q��M�ͫ�v�&F����׽r���.:w%&�<0W��W����]k�ܼ?,d�K����oݧw�������\0��\05��1VȐ{��ϹG�Ĩ��E0�&�<bT }+����M���S�N�:�F��0��+���խkpL�_�,8�/�Gt��]�J����9�e�II3\n40�/���q�^IM�����,�O�~�+���� ��K��nE�,j/k��m��9���]I^�;h۹���6O\\!d����m�4b�V�z�����I��A�Ϋ$��$8�����N�����SK���h��;x*j��\r�ſ�������]/������l����+/^\"W,���.��;[���/~k�x�dg|iM�L��X;�M�1/ۤ�������\Z�.����\n����[�\\�/�v�R1~��/~�\rP���ӆؾ����N,��=���宦��@�?��ϧӞ���;��ן�{c��G�R����)i��y9�#���%m�`������Z�F��{u�k�$�̖��bO�t\"j����N7�n�Uu�͂�؄&��*ߖ���>-O�=��B��2�Wß���<���{xr��r�V�Eع�ߍ�9������.����\\���.f�՚�)�\Zç��.x=��^׎�9��\\��Rޞ+w�ݻ�{����C�2럂�x5:%�2�OyU��7�}����ڽ	U}k��b]�1�G]ؓZΉh�i��C�B���,�y>B}|�˚}�W�%��/�=;6��N�	�M�\0����y-� �<�e5���[��6�B]�j��I/6)77���~?�q�|��Sk�\ZƊ���؈�c޷RʻZL�Z�߈>O�e�L�����2��N��׏l�{Lp��L�O����1π�g=��dЦ�3���u����K��g�	[�Lx~�h�ӷ���TDT�|!�Yr.|�s��u����GƖl�ku���qA({���v*�%����ASrg����9�MjEF୳��ǱvݱQ�5�+}���#u�鶳ϻǝ���*~u�NT�5��\\KsMaӲ�K�?<ty�����6�������\Z���a׆u�R�Ǆ[�8d����[��ݼx�ɫ��-��~]�h6�ͦr��G������\\�*Yy�nnfvS_ݴ�%�k	\'Y-a�AJLy-a���vu�t��h�f��qY�Ll����_�i|[��C�B.Qt��L��K���ˢI`s�Ss?���!	��T��NMq�2��Y�|��aE�^���NZ�7�:�J��#ft=���Bq$i�j�0���ߖ�F~��$�,n�Sݔ/_Ne��@6�Z;kH��w�����s���붮q��?�\r:�l횵��+պoG�q���w����s���_�����5������A?i���>�MdZ����\\�{|��k=%��+�7&��\\���4�����C3Z7-/;��6�1_�W�)\Z�_�Tu��t\'q���Z��Z�}�Oa�J��W5���7���b3r���&�����-��0oư�w��\r\nendstream\r\nendobj\r\n76 0 obj\r\n<</Type/XRef/Size 76/W[ 1 4 2] /Root 1 0 R/Info 16 0 R/ID[<335B69ABBB47BA4CA1BD779C319A13D9><335B69ABBB47BA4CA1BD779C319A13D9>] /Filter/FlateDecode/Length 195>>\r\nstream\r\nx�5�9A����3���1�-�(%t��8�T.Vn�B�h���W����������>�J}9�U0�B�(��B%�`^��Y����w��	�Ah�-���氀%��7����g@\0��0� \n�C�P�$!i�A�P��e��	5�\r4�mhAF����\0<������lw$���-�_J}\0��\r\nendstream\r\nendobj\r\nxref\r\n0 77\r\n0000000017 65535 f\r\n0000000017 00000 n\r\n0000000125 00000 n\r\n0000000181 00000 n\r\n0000000475 00000 n\r\n0000003704 00000 n\r\n0000005467 00000 n\r\n0000005644 00000 n\r\n0000005887 00000 n\r\n0000006060 00000 n\r\n0000006298 00000 n\r\n0000006458 00000 n\r\n0000006683 00000 n\r\n0000006858 00000 n\r\n0000007104 00000 n\r\n0000007274 00000 n\r\n0000007515 00000 n\r\n0000000018 65535 f\r\n0000000019 65535 f\r\n0000000020 65535 f\r\n0000000021 65535 f\r\n0000000022 65535 f\r\n0000000023 65535 f\r\n0000000024 65535 f\r\n0000000025 65535 f\r\n0000000026 65535 f\r\n0000000027 65535 f\r\n0000000028 65535 f\r\n0000000029 65535 f\r\n0000000030 65535 f\r\n0000000031 65535 f\r\n0000000032 65535 f\r\n0000000033 65535 f\r\n0000000034 65535 f\r\n0000000035 65535 f\r\n0000000036 65535 f\r\n0000000037 65535 f\r\n0000000038 65535 f\r\n0000000039 65535 f\r\n0000000040 65535 f\r\n0000000041 65535 f\r\n0000000042 65535 f\r\n0000000043 65535 f\r\n0000000044 65535 f\r\n0000000045 65535 f\r\n0000000046 65535 f\r\n0000000047 65535 f\r\n0000000048 65535 f\r\n0000000049 65535 f\r\n0000000050 65535 f\r\n0000000051 65535 f\r\n0000000052 65535 f\r\n0000000053 65535 f\r\n0000000054 65535 f\r\n0000000055 65535 f\r\n0000000056 65535 f\r\n0000000057 65535 f\r\n0000000058 65535 f\r\n0000000059 65535 f\r\n0000000060 65535 f\r\n0000000061 65535 f\r\n0000000062 65535 f\r\n0000000063 65535 f\r\n0000000064 65535 f\r\n0000000065 65535 f\r\n0000000066 65535 f\r\n0000000067 65535 f\r\n0000000068 65535 f\r\n0000000000 65535 f\r\n0000008858 00000 n\r\n0000009019 00000 n\r\n0000009570 00000 n\r\n0000009597 00000 n\r\n0000010090 00000 n\r\n0000024826 00000 n\r\n0000025330 00000 n\r\n0000044232 00000 n\r\ntrailer\r\n<</Size 77/Root 1 0 R/Info 16 0 R/ID[<335B69ABBB47BA4CA1BD779C319A13D9><335B69ABBB47BA4CA1BD779C319A13D9>] >>\r\nstartxref\r\n44628\r\n%%EOF\r\nxref\r\n0 0\r\ntrailer\r\n<</Size 77/Root 1 0 R/Info 16 0 R/ID[<335B69ABBB47BA4CA1BD779C319A13D9><335B69ABBB47BA4CA1BD779C319A13D9>] /Prev 44628/XRefStm 44232>>\r\nstartxref\r\n46325\r\n%%EOF');
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
  `Status` varchar(1) NOT NULL COMMENT 'E - Solicitacao de matricula para professor enviada\nA - Aguardando aprovaç�',
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
INSERT INTO `tb_atividade` VALUES (1,2,'Atividade Inicial'),(2,4,'Questões Iniciais');
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
INSERT INTO `tb_questao` VALUES (3,1,1,'Questão Inovadora Inicial','TESTE\r\nTESTE','TESTE\r\nTESTE\r\n\r\nTESTE','TESTE\r\nTESTE\r\n\r\nTESTE\r\n\r\nTESTE',1,'2016-01-19 17:51:34','2016-03-01 17:30:10','C'),(4,1,2,'Criar um procedimento para calcular o IMPOSTO DE RENDA a ser pago em função de uma determinada Renda. O procedimento deve apresentar como parâmetro de entrada a Renda, e como parâmetro de saída o imposto a ser pago. Considere as seguintes informações para cálculo do imposto:\r\nRendimentos do Trabalho: 15% e 27,5% conforme tabela progressiva mensal abaixo reproduzida:\r\n\r\nBase de cálculo mensal em R$ //  Alíquota %  // Parcela a deduzir do imposto em R$\r\nAté 1.372,81                 //     -        //     -\r\nDe 1.372,82 até 2.743,25     //    15,0      //   205,92\r\nAcima de 2.743,25            //    27,5      //   548,82',NULL,NULL,NULL,1,'2016-02-24 16:26:09','2016-02-29 16:10:51','C'),(5,1,2,'TESTE COM ARQ',NULL,NULL,NULL,2,'2016-02-24 17:53:14','2016-02-29 16:14:41','C'),(6,1,2,'Teste Arquivo',NULL,NULL,NULL,3,'2016-02-27 08:51:49','2016-02-27 08:51:49','C'),(7,1,1,'TESTE DE ORDEM',NULL,NULL,NULL,3,'2016-03-01 17:29:45','2016-03-01 17:34:08','C'),(8,1,1,'Teste de ordem 3',NULL,NULL,NULL,0,'2016-03-01 17:32:12','2016-03-01 17:33:32','C');
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
  `Id_Usuario` int(11) NOT NULL COMMENT 'User com perfil de aluno que respondeu a questão',
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
  `Id_Restricoes` int(11) NOT NULL AUTO_INCREMENT COMMENT '  O objetivo é colocarmos aquelas restrições que já conversamos em relação\n   à execução das respostas.\n\n\n    Exemplo:\n\n   Tempo Máximo de Execução - Para identificar possíveis loops ou outros problemas.\n   Ou seja, se coloco um tempo máximo',
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
  `Id_Resultado` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Essa tabela irá conter os erros apontados pela ferramenta assim como comentários do instrutor/professor.',
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
INSERT INTO `tb_turma` VALUES (2,'Turma do TCC',1),(3,'Teste',3),(4,'Programação TSQL',1);
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
INSERT INTO `tb_usuario` VALUES (1,'Andrés Silva Menéndez','andres.s.menendez@gmail.com',NULL,'andres'),(2,'Administrador do Sistema','admin@admin.com',NULL,'admin'),(3,'Teste Completo','teste@teste.com',NULL,'teste');
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
