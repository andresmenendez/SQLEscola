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
INSERT INTO `my_aspnet_membership` VALUES (1,'andres.s.menendez@gmail.com','','123456!','o7rnnNQyqOCCR12Uw0S+Wg==',0,'teste','testado',1,'2015-12-23 20:59:33','2015-12-23 20:59:33','2015-12-23 20:10:53','2015-12-23 20:10:53',0,'2015-12-23 20:10:53',0,'2015-12-23 20:10:53',0,'2015-12-23 20:10:53'),(2,'teste@teste.com','','123456!','9kiR+/1x3Q0q27UWr6BO/w==',0,'teste','testado',1,'2015-12-28 20:14:29','2015-12-28 20:14:29','2015-12-28 20:14:29','2015-12-28 20:14:29',0,'2015-12-28 20:14:29',0,'2015-12-28 20:14:29',0,'2015-12-28 20:14:29');
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `my_aspnet_roles`
--

LOCK TABLES `my_aspnet_roles` WRITE;
/*!40000 ALTER TABLE `my_aspnet_roles` DISABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `my_aspnet_users`
--

LOCK TABLES `my_aspnet_users` WRITE;
/*!40000 ALTER TABLE `my_aspnet_users` DISABLE KEYS */;
INSERT INTO `my_aspnet_users` VALUES (1,1,'andres',0,'2015-12-23 20:59:33'),(2,1,'teste',0,'2015-12-28 20:14:29');
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
/*!40000 ALTER TABLE `my_aspnet_usersinroles` ENABLE KEYS */;
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
  KEY `fk_tb_atividade_tb_turma1_idx` (`Id_Turma`),
  CONSTRAINT `fk_tb_atividade_tb_turma1` FOREIGN KEY (`Id_Turma`) REFERENCES `tb_turma` (`Id_Turma`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_atividade`
--

LOCK TABLES `tb_atividade` WRITE;
/*!40000 ALTER TABLE `tb_atividade` DISABLE KEYS */;
/*!40000 ALTER TABLE `tb_atividade` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_matricula`
--

DROP TABLE IF EXISTS `tb_matricula`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_matricula` (
  `Id_Usuario` int(11) NOT NULL,
  `Id_Turma` int(11) NOT NULL,
  PRIMARY KEY (`Id_Usuario`,`Id_Turma`),
  KEY `fk_tb_usuario_has_tb_turma_tb_turma1_idx` (`Id_Turma`),
  KEY `fk_tb_usuario_has_tb_turma_tb_usuario1_idx` (`Id_Usuario`),
  CONSTRAINT `fk_tb_usuario_has_tb_turma_tb_turma1` FOREIGN KEY (`Id_Turma`) REFERENCES `tb_turma` (`Id_Turma`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_tb_usuario_has_tb_turma_tb_usuario1` FOREIGN KEY (`Id_Usuario`) REFERENCES `tb_usuario` (`Id_Usuario`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_matricula`
--

LOCK TABLES `tb_matricula` WRITE;
/*!40000 ALTER TABLE `tb_matricula` DISABLE KEYS */;
/*!40000 ALTER TABLE `tb_matricula` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_perfil`
--

DROP TABLE IF EXISTS `tb_perfil`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_perfil` (
  `Id_Perfil` int(11) NOT NULL AUTO_INCREMENT,
  `Perfil` varchar(15) NOT NULL,
  PRIMARY KEY (`Id_Perfil`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_perfil`
--

LOCK TABLES `tb_perfil` WRITE;
/*!40000 ALTER TABLE `tb_perfil` DISABLE KEYS */;
/*!40000 ALTER TABLE `tb_perfil` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_perfil_usuario`
--

DROP TABLE IF EXISTS `tb_perfil_usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_perfil_usuario` (
  `Id_Usuario` int(11) NOT NULL,
  `Id_Perfil` int(11) NOT NULL,
  PRIMARY KEY (`Id_Usuario`,`Id_Perfil`),
  KEY `fk_tb_usuario_has_tb_perfil_tb_perfil1_idx` (`Id_Perfil`),
  KEY `fk_tb_usuario_has_tb_perfil_tb_usuario1_idx` (`Id_Usuario`),
  CONSTRAINT `fk_tb_usuario_has_tb_perfil_tb_perfil1` FOREIGN KEY (`Id_Perfil`) REFERENCES `tb_perfil` (`Id_Perfil`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_tb_usuario_has_tb_perfil_tb_usuario1` FOREIGN KEY (`Id_Usuario`) REFERENCES `tb_usuario` (`Id_Usuario`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_perfil_usuario`
--

LOCK TABLES `tb_perfil_usuario` WRITE;
/*!40000 ALTER TABLE `tb_perfil_usuario` DISABLE KEYS */;
/*!40000 ALTER TABLE `tb_perfil_usuario` ENABLE KEYS */;
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
  `ScriptCriacao` text NOT NULL,
  `ScriptPovoamento` text NOT NULL,
  `ScriptResolucao` text NOT NULL,
  `Ordem` int(11) NOT NULL,
  `Data_Criacao` datetime DEFAULT NULL,
  `Data_Alteracao` datetime DEFAULT NULL,
  PRIMARY KEY (`Id_Questao`),
  KEY `fk_tb_questao_tb_tecnologia1_idx` (`Id_Tecnologia`),
  KEY `fk_tb_questao_tb_atividade1_idx` (`Id_Atividade`),
  CONSTRAINT `fk_tb_questao_tb_atividade1` FOREIGN KEY (`Id_Atividade`) REFERENCES `tb_atividade` (`Id_Atividade`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_tb_questao_tb_tecnologia1` FOREIGN KEY (`Id_Tecnologia`) REFERENCES `tb_tecnologia` (`Id_Tecnologia`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_questao`
--

LOCK TABLES `tb_questao` WRITE;
/*!40000 ALTER TABLE `tb_questao` DISABLE KEYS */;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_tecnologia`
--

LOCK TABLES `tb_tecnologia` WRITE;
/*!40000 ALTER TABLE `tb_tecnologia` DISABLE KEYS */;
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
  PRIMARY KEY (`Id_Turma`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_turma`
--

LOCK TABLES `tb_turma` WRITE;
/*!40000 ALTER TABLE `tb_turma` DISABLE KEYS */;
/*!40000 ALTER TABLE `tb_turma` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_usuario`
--

DROP TABLE IF EXISTS `tb_usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_usuario` (
  `Id_Usuario` int(11) NOT NULL,
  `Nome` varchar(60) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Senha` varchar(45) DEFAULT NULL,
  `Foto` blob,
  `Perfil` char(1) DEFAULT NULL,
  PRIMARY KEY (`Id_Usuario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_usuario`
--

LOCK TABLES `tb_usuario` WRITE;
/*!40000 ALTER TABLE `tb_usuario` DISABLE KEYS */;
INSERT INTO `tb_usuario` VALUES (1,'Andres Menendez','andres.s.menendez@gmail.com',NULL,NULL,NULL),(2,'Teste Completo','teste@teste.com',NULL,NULL,NULL);
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

-- Dump completed on 2015-12-28 20:15:50
