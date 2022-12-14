-- MySQL dump 10.13  Distrib 8.0.31, for Win64 (x86_64)
--
-- Host: localhost    Database: projeto_quiz
-- ------------------------------------------------------
-- Server version	8.0.31

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `alternativas`
--

DROP TABLE IF EXISTS `alternativas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `alternativas` (
  `id_alternativas` int NOT NULL AUTO_INCREMENT,
  `alternativa` varchar(200) DEFAULT NULL,
  `id_questao` int DEFAULT NULL,
  `correta` tinyint DEFAULT NULL,
  PRIMARY KEY (`id_alternativas`),
  KEY `id_questao_idx` (`id_questao`),
  CONSTRAINT `id_questao` FOREIGN KEY (`id_questao`) REFERENCES `questao` (`id_questao`)
) ENGINE=InnoDB AUTO_INCREMENT=166 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `alternativas`
--

LOCK TABLES `alternativas` WRITE;
/*!40000 ALTER TABLE `alternativas` DISABLE KEYS */;
INSERT INTO `alternativas` VALUES (1,'67',1,1),(2,'63',1,0),(3,'71',1,0),(4,'62',1,0),(5,'Rogéria Bolsonaro',2,1),(6,'Michelle Bolsonaro',2,0),(7,'Flávia Bolsonaro',2,0),(8,'Ketlyn Bolsonaro',2,0),(9,'57.797.847',3,1),(10,'57.797.857',3,0),(11,'57.797.867',3,0),(12,'57.797.848',3,0),(13,'Glicerio, São Paulo',4,1),(14,'Juritis, São Paulo',4,0),(15,'São Paulo, São Paulo',4,0),(16,'São José dos Pinhais, São Paulo',4,0),(17,'Novembro, 2007',5,1),(18,'Dezembro, 2007',5,0),(19,'Agosto, 2006',5,0),(20,'Outubro, 2007',5,0),(21,'4',6,1),(22,'2',6,0),(23,'8',6,0),(24,'6',6,0),(25,'1',7,1),(26,'2',7,0),(27,'3',7,0),(28,'4',7,0),(29,'PL',8,1),(30,'PT',8,0),(31,'PSOL',8,0),(32,'PSDB',8,0),(33,'5',9,1),(34,'4',9,0),(35,'6',9,0),(36,'3',9,0),(37,'Capitão',10,1),(38,'Solado',10,0),(39,'Cabo',10,0),(40,'General',10,0),(41,'Auxílio Brasil e Auxílio Emergencial',11,1),(42,'Auxílio Corote',11,0),(43,'Auxílio Moradia',11,0),(44,'Auxílio Escolar',11,0),(45,'Bic',12,1),(46,'Faber Castell',12,0),(47,'Montblanc',12,0),(48,'Stabilo',12,0),(49,'Brasil',13,0),(50,'Espanha',13,0),(51,'Uruguai',13,1),(52,'Argentina',13,0),(53,'Neymar',14,0),(54,'Pelé',14,1),(55,'Ronaldo Fenômeno',14,0),(56,'Ronaldinho Gaúcho',14,0),(57,'2018',15,0),(58,'2010',15,1),(59,'2014',15,0),(60,'1930',15,0),(61,'2 vezes',16,0),(62,'3 vezes',16,0),(63,'5 vezes',16,1),(64,'6 vezes',16,0),(65,'Técnico',17,0),(66,'Zagueiro',17,0),(67,'Goleiro',17,1),(68,'Atacante',17,0),(69,'3 vezes',18,0),(70,'1 vez',18,0),(71,'Nenhuma Vez',18,0),(72,'2 Vezes',18,1),(73,'2002',19,1),(74,'2018',19,0),(75,'2006',19,0),(76,'2010',19,0),(77,'Roberto Carlos',20,0),(78,'Ronaldinho Gaúcho',20,1),(79,'Cafu',20,0),(80,'Cristiano Ronaldo',20,0),(81,'Semifinal',21,0),(82,'Oitavas de finais',21,0),(83,'Quartas de finais',21,1),(84,'Final',21,0),(85,'16 de agosto de 2011',22,1),(86,'9 de maio de 2014',22,0),(87,'8 de junho de 2019',22,0),(88,'10 março de 2001',22,0),(89,'11',23,0),(90,'8',23,1),(91,'5',23,0),(92,'43',23,0),(93,'Steve e Alex',24,1),(94,'Leena e Fiona',24,0),(95,'Xerolaine e Xerox',24,0),(96,'Max e Alex',24,0),(97,'42',25,1),(98,'64',25,0),(99,'66',25,0),(100,'84',25,0),(101,'6 min',26,0),(102,'5 min',26,0),(103,'10 min',26,0),(104,'20 min',26,1),(105,'10 de junho de 2011',27,0),(106,'17 de maio de 2009',27,1),(107,'8 de agosto de 2011',27,0),(108,'7 de junho de 2022',27,0),(109,'Ilha de Cogumelo',28,1),(110,'Jungle',28,0),(111,'Bioma de Mambus',28,0),(112,'Deep Dark',28,0),(113,'Bedrock',29,1),(114,'Nederite',29,0),(115,'Terra',29,0),(116,'Obsidian',29,0),(117,'Zumbi',30,0),(118,'Creeper',30,0),(119,'Esqueleto',30,1),(120,'Enderman',30,0),(121,'Ovelha',31,1),(122,'Galinha',31,0),(123,'Vaca',31,0),(124,'Lobo',31,0),(125,'Felipe Neto',32,0),(126,'Vinicius13',32,0),(127,'Moon',32,0),(128,'Notch',32,1),(129,'Netherite',33,0),(130,'Ouro',33,0),(131,'Diamante',33,0),(132,'Esmeralda',33,1),(133,'Beta',34,0),(134,'Bedrock',34,0),(135,'Java',34,0),(136,'Alpha',34,1),(137,'Whiter',35,0),(138,'Creeper',35,1),(139,'Ender Dragon',35,0),(140,'Warden',35,0),(141,'2019',36,0),(142,'2017',36,0),(144,'2018',36,0),(145,'2011',36,1),(146,'Cavaleira eterna',37,0),(147,'Cavaleiro negro',37,0),(148,'Midas',37,0),(149,'Luxo',37,1),(150,'Temporada 10',38,1),(151,'Temporada 9',38,0),(152,'Temporada 8',38,0),(153,'Temporada 7',38,0),(154,'2017 e 2017',39,1),(155,'2017 e 2018',39,0),(156,'2016 e 2017',39,0),(157,'2015 e 2017',39,0),(158,'Foice',40,0),(159,'Varinha estelar',40,1),(160,'Golfereta',40,0),(161,'Nenhuma',40,0),(162,'Um novo começo',41,0),(163,'Ruptura',41,0),(164,'Invasão',41,0),(165,'Não Tinha',41,1);
/*!40000 ALTER TABLE `alternativas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `partidas`
--

DROP TABLE IF EXISTS `partidas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `partidas` (
  `id_partida` int NOT NULL AUTO_INCREMENT,
  `corretas` int DEFAULT NULL,
  `questoes` json DEFAULT NULL,
  `contador` int DEFAULT NULL,
  PRIMARY KEY (`id_partida`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `partidas`
--

LOCK TABLES `partidas` WRITE;
/*!40000 ALTER TABLE `partidas` DISABLE KEYS */;
INSERT INTO `partidas` VALUES (1,0,'[37, 39, 40]',2);
/*!40000 ALTER TABLE `partidas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `questao`
--

DROP TABLE IF EXISTS `questao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `questao` (
  `id_questao` int NOT NULL,
  `questao` varchar(255) DEFAULT NULL,
  `id_tema` int DEFAULT NULL,
  `dificuldade` int DEFAULT NULL,
  PRIMARY KEY (`id_questao`),
  KEY `id_tema_idx` (`id_tema`),
  CONSTRAINT `id_tema` FOREIGN KEY (`id_tema`) REFERENCES `temas` (`id_tema`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `questao`
--

LOCK TABLES `questao` WRITE;
/*!40000 ALTER TABLE `questao` DISABLE KEYS */;
INSERT INTO `questao` VALUES (1,'Qual a idade de Bolsonaro?',1,1),(2,'Quem foi a primeira dama de Jair Messias Bolsonaro?',1,2),(3,'Quantos votos Bolsonaro teve em 2018?',1,3),(4,'Qual cidade teve a honra de Bolsonaro nascer?',1,3),(5,'Qual o Mês e ano do segundo casamento de Bolsonaro?',1,3),(6,'Quantos anos Bolsonaro ficou na presidência?',1,1),(7,'Quantos irmãos tem Bolsonaro?',1,2),(8,'Qual o partido do Bolsonaro?',1,1),(9,'Quantos filhos tem o Bolsonaro?',1,1),(10,'Qual a Patente do Bolsonaro em sua trajetória militar?',1,2),(11,'Quais Auxilios o Bolsonaro criou?',1,2),(12,'Qual a Marca favorita de caneta do Bolsonaro?',1,1),(13,'Qual foi o primeiro país a ganhar a copa do mundo?',2,3),(14,'Quem foi considerado por muitos o rei do futebol?',2,1),(15,'Em que ano foi utilizada a famosa bola \"Jabulani\" na copa do mundo?',2,2),(16,'Quantas vezes o Brasil foi campeã da copa do mundo?',2,1),(17,'Quem era Taffarel?',2,2),(18,'Quantas vezes a Argentina foi campeã da copa do mundo?',2,3),(19,'Em que ano o Brasil ganhou sua última copa do mundo?',2,3),(20,'Qual jogador de futebol foi considerado o \"BRUXO\"',2,2),(21,'Na copa de \"2022\" o Brasil perdeu nas:',2,1),(22,'Em que dia o Minecraft pocket edition estreou?',3,2),(23,'Quantos minérios existem no Minecraft 1.19?',3,3),(24,'Quais são os nomes dos personagens principais de Minecraft',3,1),(25,'Quantos corações o Warden tem?',3,2),(26,'Quanto tempo leva para acabar o dia e começar a noite no Minecraft?',3,1),(27,'Em que dia o Minecraft foi criado?',3,3),(28,'Qual é o bioma mais raro do jogo?',3,2),(29,'Qual é o nome do bloco indestrutível no Minecraft?',3,1),(30,'Qual é o mob que tem arco e flecha?',3,1),(31,'Quando se renomeia no Minecraft \"jeb_\" qual animal fica colorido?',3,2),(32,'Quem criou o MINECRAFT?',3,1),(33,'Qual é o minério mais raro do jogo?',3,1),(34,'Qual versão veio primeiro?',3,2),(35,'Qual é o MOB que explode no jogo e morre na mesma hora?',3,1),(36,'Quando o fortnite foi lançado?',4,1),(37,'Qual o nome da skin da categoria 100 do passe de batalha da temporada 8?',4,1),(38,'Em qual temporada os servidores do jogo ficaram inativos por dias?',4,1),(39,'Em que ano o modo battle royale e salve o mundo foi lançado?',4,1),(40,'Qual picareta bugou e deu mais dano do que uma picareta normal?',4,1),(41,'Qual passe de batalha foi lançado na temporada 1 do cápitulo 1?',4,1);
/*!40000 ALTER TABLE `questao` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `temas`
--

DROP TABLE IF EXISTS `temas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `temas` (
  `id_tema` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(45) NOT NULL,
  PRIMARY KEY (`id_tema`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `temas`
--

LOCK TABLES `temas` WRITE;
/*!40000 ALTER TABLE `temas` DISABLE KEYS */;
INSERT INTO `temas` VALUES (1,'Bolsonaro'),(2,'Copa do Mundo'),(3,'Minecraft'),(4,'Fortnite');
/*!40000 ALTER TABLE `temas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuarios` (
  `id_usuario` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) DEFAULT NULL,
  `pontuacao` int DEFAULT NULL,
  `total_questoes` int DEFAULT NULL,
  PRIMARY KEY (`id_usuario`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuarios`
--

LOCK TABLES `usuarios` WRITE;
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
INSERT INTO `usuarios` VALUES (1,'Thiago',3,3),(2,'Vinicius',1,3);
/*!40000 ALTER TABLE `usuarios` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-12-13 20:29:38
