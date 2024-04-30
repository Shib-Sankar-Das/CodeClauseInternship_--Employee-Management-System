CREATE DATABASE  IF NOT EXISTS `employee_database` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `employee_database`;
-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: employee_database
-- ------------------------------------------------------
-- Server version	8.0.35

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
-- Table structure for table `allowance`
--

DROP TABLE IF EXISTS `allowance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `allowance` (
  `id` int NOT NULL AUTO_INCREMENT,
  `overtime` varchar(45) DEFAULT NULL,
  `medical` varchar(45) DEFAULT NULL,
  `bonus` varchar(45) DEFAULT NULL,
  `other` varchar(45) DEFAULT NULL,
  `emp_id` varchar(45) DEFAULT NULL,
  `salary` varchar(45) DEFAULT NULL,
  `rate` varchar(45) DEFAULT NULL,
  `total_allowance` varchar(45) DEFAULT NULL,
  `firstname` varchar(45) DEFAULT NULL,
  `surname` varchar(45) DEFAULT NULL,
  `created_by` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `allowance`
--

LOCK TABLES `allowance` WRITE;
/*!40000 ALTER TABLE `allowance` DISABLE KEYS */;
INSERT INTO `allowance` VALUES (1,'7.5','0','0','0','3','17280','86.4','648.0','Happy','Singh','0'),(2,'15.0','0','0','0','2','22800','114.0','1710.0','Jhon','Clerk','1');
/*!40000 ALTER TABLE `allowance` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `audit`
--

DROP TABLE IF EXISTS `audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `audit` (
  `audit_id` int NOT NULL AUTO_INCREMENT,
  `emp_id` int DEFAULT NULL,
  `date` varchar(45) DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`audit_id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `audit`
--

LOCK TABLES `audit` WRITE;
/*!40000 ALTER TABLE `audit` DISABLE KEYS */;
INSERT INTO `audit` VALUES (1,1,'02:50:59 / Apr 29, 2024','Logged in'),(2,1,'02:57:06 / Apr 29, 2024','Logged in'),(3,1,'02:57:09 / Apr 29, 2024','Logged out'),(4,1,'03:17:31 / Apr 29, 2024','Logged in'),(5,1,'03:17:50 / Apr 29, 2024','Logged out'),(6,1,'20:20:36 / Apr 29, 2024','Logged in'),(7,2,'04:59:25 / Apr 30, 2024','Logged in'),(8,1,'05:03:36 / Apr 30, 2024','Logged in'),(9,1,'05:10:47 / Apr 30, 2024','Logged in'),(10,1,'06:57:00 / Apr 30, 2024','Logged in'),(11,1,'07:02:25 / Apr 30, 2024','Logged in'),(12,1,'07:03:57 / Apr 30, 2024','Logged in'),(13,1,'16:28:00 / Apr 30, 2024','Logged in'),(14,1,'16:32:11 / Apr 30, 2024','Logged in'),(15,1,'16:34:36 / Apr 30, 2024','Logged in'),(16,1,'16:39:39 / Apr 30, 2024','Logged in'),(17,1,'16:40:57 / Apr 30, 2024','Logged in'),(18,1,'16:45:18 / Apr 30, 2024','Logged in'),(19,1,'16:48:10 / Apr 30, 2024','Logged in'),(20,1,'16:51:03 / Apr 30, 2024','Logged in'),(21,1,'16:58:22 / Apr 30, 2024','Logged in'),(22,1,'17:09:59 / Apr 30, 2024','Logged in'),(23,1,'17:11:54 / Apr 30, 2024','Logged out'),(24,1,'17:12:28 / Apr 30, 2024','Logged in'),(25,1,'17:14:20 / Apr 30, 2024','Logged out'),(26,1,'17:15:18 / Apr 30, 2024','Logged in'),(27,1,'17:18:28 / Apr 30, 2024','Logged out'),(28,1,'17:18:49 / Apr 30, 2024','Logged in'),(29,1,'17:20:40 / Apr 30, 2024','Logged out'),(30,1,'17:24:41 / Apr 30, 2024','Logged in'),(31,1,'17:28:12 / Apr 30, 2024','Logged out');
/*!40000 ALTER TABLE `audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `deductions`
--

DROP TABLE IF EXISTS `deductions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `deductions` (
  `id` int NOT NULL AUTO_INCREMENT,
  `firstname` varchar(45) DEFAULT NULL,
  `surname` varchar(45) DEFAULT NULL,
  `salary` varchar(45) DEFAULT NULL,
  `deduction_amount` varchar(45) DEFAULT NULL,
  `deduction_reason` varchar(100) DEFAULT NULL,
  `emp_id` varchar(45) DEFAULT NULL,
  `made_by` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `deductions`
--

LOCK TABLES `deductions` WRITE;
/*!40000 ALTER TABLE `deductions` DISABLE KEYS */;
INSERT INTO `deductions` VALUES (1,'Happy','Singh','17280','280','Whatever','3','0'),(2,'Jhon','Clerk','22800','1140','Late','2','1');
/*!40000 ALTER TABLE `deductions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `staff_information`
--

DROP TABLE IF EXISTS `staff_information`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `staff_information` (
  `id` int NOT NULL AUTO_INCREMENT,
  `first_name` varchar(45) DEFAULT NULL,
  `surname` varchar(45) DEFAULT NULL,
  `Dob` varchar(50) DEFAULT NULL,
  `Email` varchar(45) DEFAULT NULL,
  `Telephone` varchar(45) DEFAULT NULL,
  `Address` varchar(200) DEFAULT NULL,
  `Department` varchar(50) DEFAULT NULL,
  `Image` blob,
  `Gender` char(45) DEFAULT NULL,
  `Salary` varchar(45) DEFAULT NULL,
  `Address2` varchar(200) DEFAULT NULL,
  `Apartment` varchar(100) DEFAULT NULL,
  `Post_code` varchar(45) DEFAULT NULL,
  `Designation` varchar(45) DEFAULT NULL,
  `Status` varchar(45) DEFAULT NULL,
  `Date_hired` varchar(45) DEFAULT NULL,
  `job_title` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `staff_information`
--

LOCK TABLES `staff_information` WRITE;
/*!40000 ALTER TABLE `staff_information` DISABLE KEYS */;
INSERT INTO `staff_information` VALUES (1,'Shib Sankar','Das','21/07/2003','shibsankardas@gmail.com','9986745640','ABC Lane','Sales',_binary '‰PNG\r\n\Z\n\0\0\0\rIHDR\0\0\0Ž\0\0\0Ž\0\0\0\Ð#À:\0\0\0PLTEÿÿÿ$!$ýüüþþþÿÿþ\Z  ½~jþÿÿ­ta™±\Ö»|i“¨É–®Ô¸{hûûû\'%\'¢»ážµÚ’ªÑ²Ö¤¿\ã·ydÀ‚m¦½á½l*\'*˜¬Í¢µÕ°wcªÁ\â›hWšº\à´xd†[O¥Å“«Í¢l[Ìˆtªs``Q¨Á\ækZ°\Ða@:¡¸Üž·Þ”i]Ž§\Î.+-¡iX£¸Ù‹cYÇˆuˆ¢Æ´ua¦n\\Œ¤Ê·~k¢»Þ­\Åå™µÛ…`Vž½\äÁƒp´zg¢p_ ²Ñ“dT\ÂkÅƒn•³\ÙÎ‹w±\Ø302ˆŸÀ†£Ë¦q`ka²s_Å†r©p]–fW¥¼Ü©\Å\éÒŽ|¤´Ï®r^‘­\Ô857 È¸Øžn_™²Ñ•¯\ÐR:7ËŒ{e[€XM¦kXN3-Y?;9,, \Z&\'>‹ª\Ò[92‹^Rš®\ÒhJD|THgD<wSLªÀ\ß !6œµ\Ó}_YŒ­\ØK75É…qƒžÃ°€snG>˜i[ýÿÿ™cR¯\ÌÂ†r©ufùø÷°\È\ê)C0.™l`oME¨º×£±\Ê/tMC7&$†hb¼‚q‘´\Ý/$$¥¸Ñ–¸\ßÐ“„°vf†¨\Ò@=>²|mƒUG£uimRN_GF­o[ÿþúž¼Þ¼zdŽ[K\'¸va¢Á\è¬wl¹„w›si¬½\ÚtYV|ZRòôöÁŠ‡XHICF–`N£\ÎD*\' fS£}umˆ®€–º ¾{NCeac©Ä˜·Ö—|xÉ”‰XUV\×\à\ê\ë\é\è\ï\î\î0/D;<SPMPC444”rlº´´\æ\â\á¼\ÉÚœ”™‹pl®Žˆ\Ü\Ü\Üy±Ö¥™°\Ä\â\ÆEE16N\Ú\Ô\Ó\å\ëò€|°Á\Ó\Ê\Ôá´¢Ÿ™ ¸wsu\ÅÁÀ­«­|caWk‹l€¡\Î\Í\Í\Õ\ÇÃ¡¥bz\",G\ãJI+¡ic‹‰ŒÕ›:JdN]{ ˆŠÉ —´OTu”¿u6:f39Î‚…»lvŠCD´98\×TQ×¸±¤Y^•MP¤=Cº`jkñ\É\0\0 \0IDATx\ÚÄ˜\ÍK#\é\ÆSU©\ÜTn$‚\ÖJ\é	‚¡š\nJ\ÄEP±gQ`û±‘!\Ýv4Ä…x\ÑFZI\ÌÂŒ6¥ýFÑ¡M\ÄÞ˜…Á@ô*Bp!nÔ…ô\ÊY\Ì0Ï©x\ïýn9s¬$\Æ\Ä\äW\Ïy\Îy\Ï[&\Óÿ³\Ùl1\éwwX,3Ì‹50‹\åO/ü\r0P÷\å\êù\å\Í\í\íýCù¿j#HÿAþG\Óh25^œ\ß\ßT4­T¬J—‹‹ôZu\Þðü@8ñ§\Ó\Íb0¥B¥T\ÐTE12°Š÷\ç\ç?^\ß]ü@”\â±X\ZMÕ»;H£¨jAeYIQ$–$‘XU+TŠ¥Ç»\0=7\ÎC4w%U”D–DY\Õ4M‘VVY”$IµxY}Vój67V«Õ’hå¬ŒUH+Ëª¬?AYIVJ\×\Ï\ÇSK\Ò\â\Þ\Þ\Þâž©z}]xŽ³‚\Æj\åuu\'(…Š,°¤+«•ª©ñ\Ùl¼W\Þ3/\î•\Ë\'\'\'\ç÷†wpV\Þ\Êq€o…mDM•H¡v§(Å½\çÐ‡\ìb.ŸPý¢\ÓTO®o5+\ãpð	ye$	–f($	ù»]|–¦hi<)/6ž\Ü\Ý_þ¼¼½}T9ÁQ\Çqœ\Ãa\Å\r©\âHV”Q\ÐõaQQT\Øû\Ñdþ\ç3ð”OÊ¦û\Çb±TÁ­À2<”$’†`¬5»hp\ËP®\0‡. ÿ4\Þ>¨ì‹‹‡ûR\rO•XA\n…xˆC)\"&‡\ÎeEn…\ZKþF\Ñ1¬RP\å\Ã\íc6U«?‹šVPUEFA2`\äZ®ôd‘@œz\È2ºŽ(\â\rV\ÝÜ²\Æ\Þ\ZŽcY¼»,T\nX\r¨µ\è\å	‡rE4z\Â8bEA¯õ§b—4M~0˜\Çbº¸E\ç\×\nš¢w<\ä\Ñqž´©«\åm¯*ô.kM¥h6¶ºÌ¦{	­dAÿJ\çŸ\\C\ê\Ô\å¹\\N¯1žÁðdp\Ô~E¾7\Ô\ÍS¹¤À(YBp)/\ãõþWWKU]ŽB\Êa\0D\Ú\'ˆª\\2²ù`ªx„ »\Z^?\é¨ðU–`	…B9Ž\àx¨g}\n0³’\ny\Ì¦\ê¤û‚HDQ¡~­¡P\"^\Ý\Ò#‘H\è÷g\étú\ìl+W\ÇÁ0¸)[<Õ»¤*¥²qò˜MçŠ¾±ŠLi\0\ËdpR„\Ãô8\Ñ‡\Ã\á`z+\"n‘²\Å‡aDUQÎ“\ÇlºWp²\Ômqê«“3\í©E>Ÿ\ß\È{<±ñ|\Þ\ãÁ³x8x–\ËA´mJýƒ¤\Éb\å\Â@yŠ\ÔaQ$È€À„’x,\ïòx<óN¯\×=lv{¼÷z\Ì\ä7Ž\âÁ­&0\×y°tHš¢*7F\áXL{EŽ>X\ïl\\n4 \Ìwµ\r\"}ƒ¾–Áo£ß¾½ÿD™ðYB–z\íGdUUR´kƒx‡G\Óc`‰\áÁ¹£\rÐ¸\ÝmvûhK‹¯©©1\èó\r‚@™ü\Ü!\n\Õxx«Š¨h7cx\Ðun8Œ¡\"Ë°J\Æc™§»«\Í\Þ\Ò\Ú\ÔPO\Ñ\Ô\Ð\àk\Ú\ÞÞ®A £ð\ÙV\ÙZº\àk–\ÕJwÆ¸\ÙbZ,b¥d$´7!‘žX\Þ\È\Ì\Ï{»†íƒ¾¦úz[ssó!mnú¶!R†„\Å·r9ðÀË¢ŒV.j—\á˜M·«C`y”ú\êLô(\0\Ç\×Zo³Ùš{ˆ¦¡»¡~{p»i\Û\ç#À³>#†fyID+ª´¯0›.¡Kf–&\'–cÐ¸‡\ÛZHˆ\Óó¢žx\Z6}¾¦\ÍMJ\Ø{/ñ\ÄH ð°¬H8¢X2¦\Ø\ÑwhH\Ç8#O¢GÈ•\×\rqZ\È86]ž¦&˜\Z\êŽ’ŸÁ“ß˜¢Ks\ÌÓ¸!Ñœj1ç––\'N¥\ä\×\ÔQ>ó4\ÃöV\Ð4Pº \Åv+hj@	k?<Ãª¡ªP©´g€<(ôvR¼c\Þ\ÌW2²·‹p B\Ï\Êøt4 ®.¤k~\Ýúh.\Î9\Ý@XÚ˜\Ã0{š$Yži_võ\ÏCœ6½\Ìd£ª\"j>TXhŒ\Ã\ïÑ¢½\Îy\é3³\Ê\È\"l‡mªbŽ&`¨dyr&óô;	\Ç^Ãolº\È<\Ôz\È;5â‰Œ§f&±¢cnQ¹3\çDcñy’\"g\Ã3\âu€\ÆnGÜ´½~ýº™\ê@›6*k•Þ¥\ãxýžüò\Ääª¢\ÐÀ†µ\Ë UdxŒ\rR:wA\àP²z¡Jó\ÐP\Ï\ÐÇž\è‡`{m\Û\Ün±cQu:#ý‘£pzU’h4„º\ç©Ô•1t…\à\ç\"ý\Î.w\×@[Koo·\íEOgg\ç[=:;‡>\rý\ë—_^\Û\ê[[\ìöa\ä\n<‘X{:m2©#\â*t}ôEO.\çû_º_º\ÛZºº»_|ü¸ÿvmm\í÷µãµµ\ã·køy\Û\Ùü¢¾·µ\åÓ§.h3\Ò\ïA3\é›.$K©\Z„\Ã1ú&‚Ë™ù—/Ÿº++„s|uuõ;ŽcŠ\ÎÎ••\î\îõ…¾‘ˆ+ò.‰Œ\Ï%·ô¡™‡•\rR\çS\Í\ë‰ÀQ–{·4¶³3»»ž\ã?þ¸º\Âqu\Züiö·¥7þ\ìTª}¢=\Û\Ñq-·x,¥8DÅ«O\è¤•º5÷ŒŒŒuD£_¾ùò}ú\×ÿ6;»|¬\ã\ï\ïŽù¿G§µ(\Ì¢\Ó~ÿx8AW]ž*eƒ­k™6¹³8f\Ò7\ÓÁ\Ãd2y:yš<=MN¤^\Í\î\êy\Ú\ß]_š\nžNÊ“¼!œ	¾û]©3?\Z4¿[L\'ry:R‡‡¯3É™\Ó\É4¶4‰\Ãö\ì\È\Ø\îþþ\îBÿRj\â››t2ýžÍ¦Rq\ì6¦ý±\Ã”¥«ª—Fm\'\Ì\ëD.¸\á\ê˜\n·GS\Ùl\Öÿ\ëôô—h }Œû]K;³\ë‘q\ì#‚\íS¯>\Ï\Î\Î\îô½q\ÅR\Ñl‡?Ã©`5ð\ÒA	s)jDüs©\ì¸\ë\Ã\ç²?ûù7*>;ò\Ì\î\ì¸=±¹¹Xè••\îÞ¶¾\ïÆ§¦ß¼‹n9PW2«\Z¶¹±TDÁ\ÊmE\ßu¸R±\ÈH\ßp\ËJ7$XX\ØY\ßù°\Ëž\Ý\ßmsfò#m\ë\ëNÌ‹}cý®ñŽ7\Ù4§o(J]7@_.P\'KL½zç¹<#}Ng\ìó’Ç•q¯¯÷eœë»»½îƒƒO‘Xl<7ŽŽ<<ÀYzó\'­fôšÆž\Åq[D[3‚Í“b@DaTaˆŒD|g0!,hTY\Ð15\Å\èƒ$\ÄIˆ¡5v$£iIZ\ÌÙ´!õ!\Ü>\ÜZX…û\Ða7°y\nv·\í\å\îùM\îþ;ù‰a>9\çü\Îùžóû­.?z\0Mšbc\'ê§‡PE_jd&“?Ê¿­\Ôw\n\Åv6[¬T\\aqs3ûý†\Å3\Í^\ä\Ü\Ù\×\ï–^¿H\í‹;x72(,C\×8õ\ào*\Å\Ìó\Óôôò£\ç‘Z\Ün‡*Ë¦\ÎwÿônzZ8\Ù)ÕšøYdªqq§ó•òh¼ôxrù]öcê qñ\\M*\ï‚œ|ü­35ý\àQJ\â\ãqkhÅ:1\î>|vò}4°\ÇøÙ¢Q8\ã\Ùô8+õ\Þ\èû\Õ\Ç×«#\éü\ãs÷Jˆ j’°´<99õ\ÅN(@¼OÎ\Ä8c]q?=/J£Bª\é\ÕnØ¸\ZtÀy³ø\Þs\æ\ê\ÔH©7(\Ù]õbq%ñ\\¤–\'§+7±T«þù\ç\é\Ç\Ë\íK„D>\á|\ä\â!½´:\ãNxq1©™ƒ\Z\Z2N«Óºñlžm†¸\Ë\Zö1R\ï\à\á\Ô\Ã\ÝOŠM\ä4OTŸ–ž=+·X\Æi	³,\îñø}\Î*TÑ†\ß½ƒQ7«cóyœ8\Þ9^o\Ý ñn%ˆ°\Ï\ç\Î\É\î\Ônj¬˜u4j\íø—\Ý]¡Å„12²ž¡\r\æ\Æ\é\åiC\Ý\ç\à\èg’‹Ø›—1\Z\n½\ßO‹ Á,°œa©wµûlõ¼¯\Ð\éŸV\ê½\\\Ø]’Æ‰\Ñ t\Ì&£Hn\ç\ÖfA®C\Ïu8¾—‡\à4£>hBZUg\0‰&V[­\ÞðE¶r>R©\'´J\àl@I¯H«¿ô¶jA0[Q¯¼‚Q¯\Ã1kK&\r ’gÀ\Æ\Ù9¤—u:øm2™\Í\æf§\Ú\êõWKõUi&´\nœ–llh&>p›\Ù\Õ>\Ã\0ŽyA8\Ö\Ðr\Ì\Ï{õXÌ¦›s¬\Í\Zc\Æ6‡>\Å<·\ï¢&3-\"œl\éè½Œ³ñÿ\ãLh4ª\Ñ\âNj 1U\Ú˜ùyZó°¼´/¦[K$`&¤\çµ;RùŽ\à8«%«\á\ë•\"\ÖQi5_E\î`\ÐbªMs0:?OG(ð\Ó´ø\Þ\Ä\í¯·	‡I´úük2+¼\àÞ \Ùp‡³ÃŠ_\ÕŠÄŽŒó½\ÃeÁ:\"\í7E½ž–\ØK¤\ÓÁ¤ß›N\Ü~ÿ5‘˜\Ûòû\Ä\èü¦s8 3,„òj‘`¿\ÃF\×*•ÿ^u¥‰u\Ú;Ž„Ìƒp.z\ïü\ÜZboomö0\ê\Õ%½i„Þ’C\ÇLc\ÎVOx\î\ÆkJŽrU×\Î\ê•Ä†-4l,/À¤^\Ôc]\ê{ó³(r\Åj#\á\Å\Z\Ðl\Ý\Åù\\Ô¤\ÓÓ–ª\Ô+?w=\ï\Z\Õ\ç\Óõ\Õö \Æ`°µL\È[w8·i}b«”»\r3\á\Ê\ÇÜs\Þ\î\É8s° õ\ÐXUê·—rG£m¥\\%[\'\ÝIk,t\Ã(˜!V\Óið\Ð\í–Áô¯\×O3G\ï­\ÅÜ¾¸‰\ï\í%37k†þ\Ø\ÉHý\ì‹\Ü[eqÆº\æÁ*\nH\Ë:\Ú\äiä«½Ó—‹\Öj\Ã\ë;\Ë\ÇÞ†\ç\í~3\rQ%\ÛÒ¡q³Rÿ`i\ål¤Ü™\Í\Æ+\Í()vŸj(­\×E½\n\çÓ°±\Ò\â\Ñ\æŒ\áør}ý¸\ß<:·¢s‚2Ž¶•ôEÿ$GQ_TŠ_k_i\Çb3P\"$\î´Xz<\Í\áEK{¡Ç¥^o$Qõ}\Ö\Õ\r2\äZ¡·aN† g‡Œ•‹\ä	j\Ìt¨À0Ba³\éuP¶¢¨pÁ–6©J·X\Z	…b®N\Øf\ï\Â\Ñ!p>2t»5\éZÁ?\È;†\'#‘\Ï8`TÇ \\I\Õ|\Ñ]t—${½˜JÕ©­›¢¡˜No\Ä\Â8AFC{\í)–v´Z4ì·ª-À!Ù°™xLÁh4\Ø\ä3nw±[[\Çü­L\É\í.´LÓ†…zƒ\r\ã\0Ž°eý³¢8¾´\èu)\Âqz 5£\éä¬©\Ñ`¨RÁ]¢j-hŠo(;ô\ÅÙƒŽ\rhªj¡\ç\"ƒve½\ÚûYAgiUýRõ‡»ŽC\æ±\Ðht«÷wøL»\0m8G’d«\Æqö®\Úq3¼8Cƒq@Ç‚ƒ‡\ãA¤w­\èM0­jL2Ü¨\áHª¦l\"“/µ%{&¯Ô©\ÞpR%\ÃÕŸf\ÝuB´¡È‚¯†ý\í\í\Ï?#Õ¤\àYú\ÆöõøZû%Br<Ža6\ÂU;8\ÊMe\Ü\Å\âEþ¬\ß.*\î\\e\Ç\ÝÎºóh\Ò\Ë\È\Æ¾¨\Ñ\Þ\Ô*y“pbC\Öqc$k,\ãoqò+§+”~ûñû\ï\ß`ý\à\Ê]÷Sw»³‡¡… \ØZ\rp>\Éw@_i”¼Æ£Õ¨\ÕOT\×2‹£©{8¿R\Ù)\ä\Ü]AúöŸ»u\Ú\áº\ív	öZ€õ\á\Ï×u l@ýoh´*e—Võ¡/\ãÀ\ã\Ä÷\í™\0IqTž\ë\Þ^ž^^žvn ªk<·‘\á\Ù\Z\ßE‘ü³|¥N£ü\'H\ÎY“y|><\ä\Ê3\Í&(ˆ››\Îñññ·Nµz\Óbp\èôXWˆ‡ŒŒ3\Ö\Ê\×\r7Ž<³Hž \0\Ç!§\Ä1ƒ\Î03#b7d>Ÿ±\Ç\áC<–Åª5\'9N\Æ^«ž\Üñ(Ž31±Ý§Hž\ç\ãVhy	«ó›u¶¤\ç\Ì^\É\år\îú>ô\ä\"Ð„‰Pˆ¢(\Ù8ýw—1\ï\ãŠ.ô\ê\Ì|<\nÅ‰8\åÌ“|ÿh\n…bý\Â)Àƒ=²\ÇQ‚0¾‹œ{ÁQ«>Á	@\ãr…B„Ó‰/\ê;\Ô3*Ž\Ï’‹°§BÀ0†Ÿÿ\ç«û¸>øJõ©\Ìqœ+ŸÏ»Bx,K.,,ˆM_Hùý´%†ã„•\çeÀ	B[£Ö¨\ï‹G«R÷!*¨¼Ýž\èˆö%Ðœžûý\Íf\Ã4k{ùp«•§\0òÕ“ûÄ\è¹\àAöŒ=\Äó˜Z‹\Øf]\êµ:4¸5\ÎQ¦|%\\}’q\Ô÷\ä,„#\Ñ\Þ\Í\ØÑ€¤<M‹^¯_\ÈZ\Ü\n	\É\ÊQe´®\á¶ùµZ}Owßµ\Ð\âœ…r \Û\í®\ì‡Xt(\ê#\Éÿ\Òn¶1m]gwV\×N1ò¸¶6÷š‚_P‘‡Ã…KÆƒ\àZ6%&<[˜„§&q†\Ü\Ô1¢±(BŒ‚A\\$Pˆ¥\")vb\"‘¶c\êL”¥\È\ÓR6Ðª)D¦\íÓ¶\ç˜\äC¥IË–ø\è~³t\ïOÿ\çžóœs—C~\é›mi\Ë @¨œ\Î\à™™\'\Çy\ÒhÎ \Ó(w;?v:ggñ±ŸJ²\Å\'ûúœ}\ã\í\Í\ã\ã\íù}ŽòŽý\å³3hŒ\Í\Ì8\ï#N\"q\î\î|\Í93\ÖwòØ‡u\â¾üöö\Îü\æf_ww[ssþXŸc,>:\Ç³\å¿{CIH°\è\Îmqù,ú\Ü\Ì\Øx§£¥¥¯tw[­V\ßòòrûøó?Š÷\'\Z‡F¹-®\ê8\Ù\×	D\íq\ã\Ý\Ë\ËVŸupðÜ~j}\Ûj²\æ\æööñSq\à0vp(‰Á¡q(÷Ä”O{÷²«\Õz\á\Ât=Zu~aµ./Oþ@‡L\ÖñÞ\ç8´©C¥|Ý’-k@<>„r\îøñ\Ýoß…n`\ßz\ë\'¬»\æx³F•\ì½;ž\Þ\â\Äw€-yx\ë\Ä7ûÀÀ¾8N¼»ô\Ço\0Ð®]\ç¬mmˆ¦}Ù±\Ä\ãü¹%;·¦\Ý-:ú:\Û}ƒƒˆg÷\î7P#þ›\Ç\Ï\rú\Ú\Úò\Ï\\®\ËË…:cÿ\'a—ˆ\ã´Bò+¬’Áž\Æ\Ñ\Ù\ìvBvü\Ü+jø<sù,T…†¼ªòož\ã$J\Z\ågv	\ìüöd£2CvÍ‘¢\Í\çó]¿>ø\ÛÁÁ\ëm\Í\'ò\Ï\\;[˜,jlœÍ¹8N\Âx¨”?9?lm„_r^U]]v]‡x\0¶W\'\Ú\ÚÚ®£†\ØüSgÀÅ…{ÔµW\Î\Êý\0‚IL¸\èZ€òGgv®¡X$%—œ…\"5·P&¾|s` •j`\à¤X\Úd%#ñ­ð\\ Qò\Ð\é*=ú×™ºÜš‹jvFVrI¸:¹öT¨[§\ãòÍ›—Qol^2[”\Õx%÷\Ã*\Çg±õx´z!A£DB·d­ñ*9%\ËPRR“uv\ìjtaTRjf\ß(VQq£!7»*ÿV¸Ž³##8J¿de¶ðJ£š\Ä\ç«[[\r\ê\Ò\Ò!ÁÐ\0*SuVVm#djQq±¨±¦õ\Æ\Í\Ç\áPx‰Š\ÔID\ê¡3\èsaý\Ñ5C2:ã§¨\r%\Éj\Ô\å\Ôs¸¨§B”!ªMáŠ“³’kr¯\Ý\nË‰P\"…ž\×\Ï\í/Bn}øûA‚”	A\èQC-`0NFq­HQ4ƒ\ìqŒK:ˆ\Öó\Üóšyž\0e]G¸±ðÝ³µ\ìR ¾Ÿ‘\Â\çW S\Â\Ãñ\Þ\Üˆ“p®\Î:c•$!‘\Ä\î\Óz{RƒQ\ésý:“^\Ï\r?\Ê±‡†ø\Ôx\ÊG‡¨¨­‚\ÏG8“@³§±ð“M¡”$t’P¤··7U\î\ë!\Â\ä\å­ü*\ã\êUf³S=\èz\â\ç\0\ÄOB­ž\ê¬\â\ÚŸlòô\nÒ­#%kQNo\"JTZ€\Ó\08&Àq\í‹}^\Ê\ï\ét\Ê\\tôÝ£\ïõ\Ä\Å\É`—²\'\rw7+$F’!	¯{^\à¼6yè°›²Ó¹Mó&½\Ë\æ\Z	?ý\0\ì[‘”„Žt‹ŽEÁ‚©…\Â\Çn¼\ãq¹8fSH,\Ô¥\Ò8¯«*¤£á­$%\ZIt&\Óü¼\Í\åriU\Ó+—*zWó§ºº¨¨fz\Ê\ä$»´thÒ¸$Ë‚I1L\"Ñ…ckK\Ô\0ŠX€¾s2üJ\Ç(\è¨\\	n\é$Hœy—k\ÔV:5½y\ïÿ\ê\0<Ä¯@ t’})c\â\âS¿’¥PpY@#\ÅÀ\Ì!{\ïF\é\ã\Õ\Ò3=~r\ÅYò\ëH[êŒºF\Ë¤«¦>úú\ÞÕ¡j\ä\è\nt•/HšPÍ¥fª\Ù.µ(XR©DŠ…$¡ ¹\Ì%D9/^öJþ¥S8_,­Yl\Ú\Õ½\Û\rÁ\Zuis\ÒSS<x\à_¹ZZ`ÁÔu’&.ML~+P¥\ÉÓ˜\n.ð`\ÃV7xR£\ËeY[2`#Ký¿}\éÑ¥ˆ\ß\ÜdÇ¥ÁU‚p#qlÚ²}*Uzz\æ;!`C==yz\âM\ì§\áôTeO\Ù$\å*¸Š¶µK\0\ÇekòG–zÿ·¿\Ï\Ó\ãf¡S<dŠ\'\Zi\èb²ŒR/¦ƒ`\È\É&[YÙ¾\Õ\Ô\Þúô\Ó{3c÷J:C‚$ö„z…™9­¬dtuY\\XpL²µŠ‡¸F\Ðt\Ô\Ò\å_[Ÿ£Pšg\çc/³ \ÅÒƒf\å\Ü\Ò\Znù”iÁ%˜Ý½°ð\Å\nx´\ZÔ©ß«Re¦ôBÀª«¥I)\ìK+\Þ¥²€\É\å1™qyp—7‚xc\Z6›q\Ñü±ß¿¥¢®——œHŒø\Ä\ËÌ­û-\Ú³‚TX¥=40ó.­Æ˜3•8Sªt\Õ\é\È\éðÊ¯¯\Â+ý`ó€júH\ê“Å´XX,®\Â\"Å¤Á \Æ\ìv.Ë¦H³\Íf¹?…÷ƒ©/;_„x-š\ás“\ÑD¸\Òþl!\è&Á;¦Q×°M›£”úz\è\àzl{•\Åb±ppk\Ãÿ\à´Rx„\É‹\ärIKpU¢“‡19Ž1M&.oR*\Í\r‘¨‡B£\è/a_*š×‘&\ã°V«±\à™6“	“I€Á$\ÈÊ’µ\ÃeSS©\é\ëÁ?\Â\í‡\Û[\ÏÀ\Zóó\ßnµ1=-\0=\n¹’`ò~	\îÅ¥\îg„E\'Vv-šÁDKtñ\ß&6\0Ï­l\Ñ\Â(“J-©{&“´‹Gº1”b\Ýz›V­J•óiúÁw\ê?Z}¸MŒŒ2•¨·ºµ°õÝ“\Ê#Bˆp™€´°\ê\Å\ì\Â\Ì\ë•\ã\Ä3S·hÆ…\æ\ÅEóbW\Ü\Õt\Ú\\’Pa\ÎP=z\Ü2\Z£K`™ûH½OK“b8©·)l\Z\×pN„kªþô·\ç·\É\àÂ£§ÿ\×÷0¿yò\ÝûOðT;‰pŒF±²\È+¼^o¿œ4\éYsú¾\Êÿ¢F³¸\Ø&B™ˆ7\ì.Ê˜´¥HƒE3¢\Ñ0YñxLBOò”J»]X	<Bo\Óµ\Ã#9*•ª>ô\Õù/¾ÿ\Ëóoûþö\ïÿ\ã÷ÿ\ìþrü³\ÙbGòY ŽÇ½\r\r\Þp¥”T\Ø%ö½eü\rM	 d]`\"*J\ç‡þ¥Æ—‚µ&˜\Ä\Ã\Ã\ZV—Ãˆ¦4^*œÌƒ€\ãð\Þ3]ý £y4\ÅqË± \n\Éˆ±\â¤Fh%tF.Taw2\Æ!Ms·\Ø\àF6‡\á\Ü8nŒ>†1)\Ò\r[$\Ã%\Å@r·\Å6!6\ÇW8\Å8)20“M`†{_ön¹/\ØÁ±žÞŸ\ß\ïwZi@\ÅaT(‡Qó²\Ó9\ï÷û\În\×\é|û\Í\çõ\ã\Í\Í\ãý§¿Ý…!¡§\ÄP\Õcƒ\Â\ÎÁ\" \íO«yšA«R*ô‹A‹hö\Õ\Ëÿ_&Áþ\ê_D¥nGm\Í0h•\æ)\Î\Äb°9s`\0O\Ï0zª…óeTSjò»\Û\Î\Åù9\Èù\ïù\Ýþøùñ\æ\áÇ»\íµ\Åó”\r?«±\äH†´h@¦]—„a‘\à\Å8H\ê,Y%\É€^¾ü\Õ\Õ_ƒ’%¨Ep!\Ï\Ø*‚©ñ\Å2€S\"sDK“\ã{\ÕQ‡°»½u\Î/p\Îû³þ\Ó¤o\ÖŸŽ™\ëc\ï1L{t\ç²hö‚`\ÑœÀhI\å\n-†K% ¯Ç18}+9sˆ«ó¤±6T\ZøJ¶µ”\ç8­\0Ê¤\ÇYLeT-õ¨„3eO\ç)­:*…Q¨\èô\Ý\í\Ýv\Ö\ïl€g\Óù\å\0\Ñ\í§/\Ï/µ\Ñö\Ò\Ìx8§\çž\ÌòŽ´X´¦Gø1ê•”]\Î9£u€C\0\r\Î|EI¦$÷¿%¾\Æ\Âœ­”4Õ´TŠMÎ®¨\å^:p\â\ÏG›\â\Ñuc´*ú¦µ¹\ë\Ýn{|rw\ã~\Îÿ‡gö\ìþ\'•ý\Ûc±\ÇkÇ™v‹s¤)ðH\Òt*U\ê.š+Î‚ 9\0Iƒ³³3š½}C\Üü—7?½…r¦¥ªjHS)µ«š¦•%ÉµX¶TiØ¶\ïº\è:C+º^\åù\í\îýñ\ÇË“\ËÝ¬Cðl€‡ z¹Î¯«ýFõú„w.O¸²cb\ßúe´‚\0‘P\ëõ¬\ÎY§µ jœ)\å+«\Õ*ù\é\ÍÞ›·‹dµ*¢,-kõ2/\ÅZ\Õ2¦¢š®\ïLŸÌ¸¬(°>¨±5’õ:ýþ\îºññ\ãÇ“ú5ü\Ò\ßm@\Ï9a¯n·¡\nReŽOz\×<\Ï\Ç2+µ\ÕÊ™¶‚q0•$Àa\Øb^s\áo\Ä¦: 	\ç›+%Y\ì-+\Å?Ë²rP®ª¼\ÄK)Ð”\Z•LôC\Ë\Ç\à*Q‚\0n([\ÓJ˜=½´L¿\ÛV\ì\Æ\ËFã¤¾ý\ç§OŸþôj³!\ï\\\Ð\ÑrÙ¶±®*\ï.M¾™eŸ \Æ\ÎtL¤\Õ+´UDó\ä¢\ÕA~´8x]6x\Ä/„=7ñ³4-•Ç¦–)À¸¡|{”9\"k	\å\Êb“\å˜€¡¡mÔ«\rœe·Q}ýú\ß?yXøþ\Õù“sú»º²\\Rh\Ê\íR{Dq\Ïs¼+¢\È\nn\"Icš$½žqJ4¯	Ó€V««£@%s›\é\ìYYF§ƒž\Ó\Õ40Êšm\Ä\\eŸk«XKL.Ë²‡\nƒ\ÝÃ¿ð|šaÄµqº Œ\àyxX¯\×\ß?\'ºÍ¶V÷‡a¨aYQk™I\Â[–\Ë\êÀsX\ã¤ñ\éu¬®9²?/„£\éOK>\0\0¼IDATX¥s9n©\ã@r‹E\ì•\èYKS½ä”µ,–©Q\Õ\å\nË¥\Z*\ç\éºÀ1˜÷¸\0\Ëó½,k·Q!°’(®|zú÷û/kr\îf§†Ë¥…Qaš&~c\'v\0§yxx¨;M\àð9;*ù‘¡\ÒGy<¥\Ç$sGG\Ó\é^™6Œ48´ˆ=ÁqBX°n»\Ñh£d5,T†¢°À°¬¹”´\Êgü\Õ\ïÑ§×³ï¾¹ÿñþ\á\á¾ûž\Z.#“Ã°pM\Ó5\Å8hš‡µÃ¦\ãúeõ¤B9V\rôä†ª\åùò\Õ<ö2\Í\0–,\ÍTM\Ê\ã\Ø=/\Ù/\É\Ê\\Ñ­\å¾m\éM]gývHÂŠ;FV0¢IvC?Œ\"‹\ãË¯w·ýÍ³7\ë\Ù\ÖFXŽiŒ\ëŠ\Ó8vLA÷¼	\èi\ê²SVUbI<,ŠB@\ÌO¼šŽ	šœ°“1\\Oƒy4:¹’‰Od\Ù™ñ|.\n\ÝF#\Ôe\ÏkºVú%H\ÃQL¯§ag0˜\Ìa\Ô\âªTv×¿¸xñxóy³\ëœø]ª\Çð¦…‘\å\â\áˆ1¦¾q8\0$;ô\ë\n’\î8\Þa1bmdxb.K-É‰sÈµWJ\\†\âT\Æ\ËW‹(Ÿ4Ù\n\Ýo\ì—\\G·|t.Û‡#\à\n´r\Ë\Â\ÜR”Š¢hl:›Wn_\\tú—~\Äh\ï8¬ëº±¾\Å\'8M\ÔY}r QV4\ç(”BñuUb9—ˆyFvCÓù\áF\ÔWª¸šû®\Þ\Ýo¬¼¦>™ˆ\á°\Ûí†¬kbZ\roù>Gð(¬ø\ê®ó\êóú\æ\Ë\ÅEö\Î\rK%Šs9\ÇaMb\Å\"¢9™LPjò$Geª\ÐNžBQ\èy½Ž9)¢_Kqž\Çùž\ë¹\Ê\Ê\å8\×˜<Y{\ß\Ò\ÃHirt\ÜÔ¤\ÉB–n\Û\Ç\í&\Ü\Ó$±^—›—ýo?¬oŸ_lú³÷¦mcÅ™–÷˜IVr,ŠÀ7+µ\æ$\ÆXV\Óü\Ê\Ók…\àiõÁDÀµAŒw\É{¬¼*ü\Õ\nû:\'¬Šþ~©\é\Ãf\Ín\Ø\î±š4ýv·\Ñö‘Ã”8“µ,z\Ô\à\Ñ\\¾z?ûý\Íú\æ\çsR4\îht\Ò\ÄbÉŠ{2+º\ÜS\Æ —PC£Llm{žP(²T§=sÛ‘L—t\'\Ä‹\áWuøW†\Ã\Õ!|\Ì\ÈM\r»\Ë\Æ2´0~`|«\ã\×5cd/¾:\íüõq½þð×¬¿9)1œ\Ë¨Èº1Ë¢ˆ.\î;&r‘´ÿbU\Ó\Ñ\Ó\'§\ëÿ™C\ä\"\Ç2 OI\0\"<8G¹a—\0\0\0\0IEND®B`‚','Male','25000','XYZ Road','123','452789','Sales Manager','Active','2/8/2018','Sales Manager'),(2,'Jhon','Clerk','5/7/1995','jhonclark@gmail.com','9685321478','Gorge street','Sales',_binary '‰PNG\r\n\Z\n\0\0\0\rIHDR\0\0\0Ž\0\0\0Ž\0\0\0\Ð#À:\0\0^PLTEÿÿÿ!\Æ\Ç\Ä\Å\ÅÁ\Ú\Ú\Ú\Ä\Ä\ÂÁÁ¿\Å\Å\Ä\Ù\Ù\Ù\Ë\Ë\É\Â\ÂÀ\Ø\ØØ¿¿¼\Ì\Ì\Ê\ÃÃ¿%..5\É\Ê\Æ\Ö\Ö\Ö\Þ\Þ\Þ\×\×\Ö\Î\Î\Ì\Ó\Ó\Ó\Ô\Õ\ÔÀÀ¿\×\×\×\Ý\Ý\Ý\Ë\Ë\Ç&+B\Î\Î\Î(-D\Ï\Ï\Î\Û\Û\Û\Ò\Ò\Ñ\Ç\Ç\Æ\"\'=\È\È\ÄÁÁ½\Ò\Ó\Ò,,2\É\ÉÆ½¾º#)@*.F\á\á\á\Ê\Ê\Èºº·\å\æ\æ	\r\Ð\Ð\Î\r\r**0&*@þÿÿ\Z)\n(\'/¼¼¹\Ð\Ð\Ð\à\à\àý\Ý\Îû\Ø\Ë/$úþþ(018!ý\â\Ñ#9\è\è\è\ä\ä\ä\â\â\âöÔ¾öûýû\Þ\Êü\â\×&%+\Í\Í\Íø\Ó\Æø\Û\Ð.óÎ¸5*\"ÏœˆÉ•‚è»¨\Í\Í\Ë\ïÈºû\Þ\Ô\Þ\ä\î{O<<2*â´¥3\Ù\Ù\×\"€XBD90(,A\ã\éôÕ¦‘aMº‹yõ\Ö\Êä´œ°}h··´ø\Ú\Ä\Ö\Ü\çð¿¨µ…qÜ­—\ïÅ°Ö¨›\êñûä¼°žœ™‰\\GÝ¥”›lW×Žó\ÌÀ­ª§ì¹¡Ã{}{|\"!(ð÷ýôÇ´/J@8qTFŽë¿¯§}m¥v_‹†ò\ÒÁÜ±¢ä¬›oI9¼}nøÈ»\ìÃ¶ý\æ\Ú\"]RIO/%A\'SH?û\Ï\ÃxphŠiZÇ…yNOW^:-ê±¥Ì£’`TÄš‹«Š|ô¾²§j\\¶²­¸”†’sf²·¿\äÅ¹eF7ld[AAI^[[\í\é\éÓ±¢žwkññòþ\ê\à\é\Ì\Âfgn|_R £¨\Ì\ÒÝŒLE\Ù\ÈÅ¸jd´œ\Ä\Ë\Õ78C»Á\Ì\î\á\ÞèŸžØ‡„×»³\í\Ú\Õp­‹u\0\0 \0IDATxÚ”—\Ýk\ÛhÆ…„cb\\ƒ/\n_\Z\ì\×0»7\Â¡\Ü¢\éº3Œ\\A?f¦¥*e=5¬oë”°vŒ\n\Ùa²8%1¡…’¹\é\ÝüYûœ÷C’3²{\âÊ±\êX??\ç9Rš\Íj³ºYŠÄ¯\Ùl9¹ÿ!Ê¿úña\ìƒqQŠºˆ¾%\É!	ªŸ‰€4öÀA[#aœOðd\Ë	\"Š€ú1²&ÿ\Æ±d?©Œ„8\æ´u()Ð’@\Ùø\ã«¥Y\Z]\Ã\É&\Þ\Ì8>Ÿ#M81Kj\Æu*¯©#™O2_ý>R\è£ }\ÊUù·ˆ#1$T\Ä&žsÇŠ³¶\æ°D\âP\Ê8\Îz”E‚8P.A¢}>r×žµ\ØK\å\\d¤BA0\Åö! i\à\nôž2?Fu°&‰–¢\ÏOiÿGp;i\×Ž]\ä\ZO\"]J!Šò\ÆF$…lÉ’N§5:jšŠ`U\ã/X\è8§kü\äu¹’@º”\ài&\Ý\Ã\ÕÁ\Ò;\Äû\nü	¯2ˆ(I\éèºº®\éüª\ì?ÁBž_\'‚°©\È\à\"\n\ÙO\êƒeƒ]\\b\Ó=2‰ƒ	Ž8„>1Š8­\Ó\Ùt’ùM¥S))Q¦,¾uRŸz\Â\Ì\ÊF\"2À¿!R&\rG©\èù¼^a¡SZœ«¨ZN×‹\Å<­0¤„Di)„4® x\n‰|}‡+’¿§Q*M—\Í\çq)òyv]ž#œ\Ñõò²šÓ²9€‚I-uµ$ó\ÊS,yR¹T.º@’gHa¢$h\âHeÒ QÁÁ¢ˆ`\\¤“a0K-X…Ó¥ºœƒ`4¡\ÉCµ„P\ÓD”bL™ÿ’B \È@	?+™Oâ°¯ô{š\ns\Ñ\èÁ\ålN¦\ã\Åjµ\Z.l\Ëu{\Õf=[\Ôs\ZÁ”˜XqÒ„\êÌ©h1¼C\'¦—\Âi¤©$hJzža0ALq°ðý\Ål6ö<\×÷\Ã4†i†5›~]ö\'ƒ¦®—t&P”&\Ä\åÁ¿f5ag…R%ax¬MI—\Âpq˜WsHLY--w1vm\ÛY®\ç\Z&ñþ0,—\ÓI\Ë3§ED±@BšP,]‚GY\ËP\äi‚I\Ã\Æ“g?4ý™µ\'Ah»¶aô(lË³mÇ²Á\ã\àœ·‚‰‚pZUUú6I™:#ÀCDMú\áùj*±0©„‰8\r‰SŒ­k\å\å\Äò<.H£\ç8\Ôñ]Ë±<×²\í\Åj,‡aP\ÎO¥\ápy¢4ð\â*4ãª$\n))Nš‰“\ÈUž;(7]Æ†e,\ËrÇ†uü±#}¿x–\çû³\Ë`\ZËºFÝ¨BŠ\Ó\ç\êTùF\Ñ¦\Ä0Ö‘ù+‚a©Z“}¥~N=\\·\ç’¶\Ñ0\Ë÷Ç‹ñx¼ð=\×\ëÑ‹\Ëõ\ê$^R?%ðo‰õ¦²\æ1X…Ã‡µ\âz\äó\ÚÔŸ\r/)\ê96\Ôi4R\ê¸c8\Úq©\ÒpÂŸ-fC8Z£3yJI7\ËvHP¨YhPó\ZN”)\ØF¯\Ô6\ã`4º^\Û\îj\åÚ°LÏ²l\Çh4L‡|+#y®i[¶gQ&¡P8r¢uª*\ë‰\Ü@\é‡äŽ¸ž¬Œ,*\à\Ôj›7xhS:62\Ó U°-\ÚM\Ã\ìõ0\Ç1¨¸¨\ÒQp@ƒ…h\Ô²\rštº:\Å\ÛOF.œˆ· De\Å\r\\œ/n\Æ8\Å\ZòV\ÑûC\Ïq \ÌÈƒMÐ…]b0x2\"¢\Þc³×–\áú\Ó ²uŒµl_-E~¦‰·\Ù\r‰\'VGD:\Z\r\Å5ƒp†4õz(l\Ï\"\çÏ†\çõÀÓƒ4P©\Ã1\Í¨M{N§“\éj¶šL~\ÕOTî±›O•\í¤8*QSf#BhSÂ€.n\ËTWúp¼°\\†m\ZP\Ät\äe\Ô\ëÐšG#r²\Õ#&\Ût¨\ÂÆ°ôbös|O\á\åÍ®(a\0bO\Êõ\Ù)Ä©c\ßP²ˆg\êmº]\rykG\à\Ï\Ù\ãøP	œ&\ëI˜jˆé ™\Ó\å\ÄKT—\Üû²b\Â”k\ã“\Û8\ÙXðlVPWƒ1¾<2Áf•ù1ù|~qppttuputqq2‘	\å¾B]\êI3$-Xª¬?«‚GNv©O——´²\äM¡*0@º\Ý.\ç©Uj5ù2´LVJx½\Ññüqqtppuõö\å\Ù\é\é\Ù\ÙÇ§ˆ«‹91\Þ\æPÓ†B\át\0y\âñ§‹\ê=\í?J4±X»¤\í\Ãiº¦Vbi\Æð,?Aœž5¿¸zó\à\Íû÷§gù\å\Ýùù\Óóˆs\ÄÏ§o.,2µ‰†\nôd«ªjºh=ÌŸ‘ûj!©³131\át%\Îfºš­—\ÕÀ3¨¢\Í\ÂŸ\Ü{þò1@þöú¯Oúð\è\Ñ\î\îö\íÛ·;ˆý\Ãów§#–Qj\Ø\àÁÈ˜,sº¨t~¡Ä´H¬\Ï\Êúö§‹%R\ÅlS«¦\Óih‰i\Þ\Â4\Ï^=~q\çþ“\×ÿ¼{÷\î\Î\î\×\Û<ˆfÿððõû9+/6_½ñjû\Ø}d\ã‰#\Þ\Åbž¥´,p\ê¿‡—ù¦¶œ†«™œ[·\è\áÌ@s\ç\ËûOþò\Ã\Þ\ßw\ív8\Ê6ƒ\é\ì·ß½9F\Å\Ûh—øñi=\ê\çd¡\'‰\â\æ#pd¯a3œ\ã\à–aó÷1ª\Õ*º\Ö„X&À\Zc~ô\àù\ãŒ\ænû°µ\Õ±\Ï\Å\Ùo·?œ]ŒzÀ=‹&¿\Öù-¿\Ë`­™¦E¢9³\êR„g\ßpò5YVdeTVE/‡#t>†s|ñ\ì\Õw ùöGˆ\Ónwv;[\Û[<SD\ÓNûð··sL},\Ú5\ÖúË\Î÷7¾A\'\n,S\à8i4w	¨\Ó0\Ôz°°\\‡hnõN¾yþ\ê\á\Ðüøý^û°½\ß\Ù\êl \Ð\Þ\áþogWØŸ¿‚2\r\\/h\ÑJY‰ús\"]Ž„K—\áqUn²r}\Û$\Zó˜Œó\â\Ë\'Bœv«\Õ\ÚB0¶¶:”+Pžÿüvf“—I\"¬“¾¾™\ØqI$\Ù£QA8’B\ì\"<_µ\îM·[\ëOW‡Yytr\ïÁw_\Ü\Î÷?üc¯½\Ój1 mR8\Â\ÙC±¿? ñO\Ú\Ø6¦h\ë\Ó\Ú-	_7R©T\âÆ”p8\r³¼ªò{™b4¸Ÿ»\Ý\âr\å˜\r\ç\â\ÙóÎŽ\Ä\á\ÑiuZH\Ö\Þ\Þ\ÓwßŒ-\ê\áÈ¹ôµZ´\ÆÉŒ‰õ\'Q\ì%¢Q\Ù\ÂVª`\"\ÔÄ¤’ ¹y£:p‘¬Foþ\r\á\Ü8ÿ\Ú\Ù\Ë\á´Ø£³EN&œ³·‚\Öiú­’\Äa@rK\Å\Û(Ã‰•a0£H\ÏrŽ\ç\æÍ¥Õ¸…xò\ìÁ«\ïR\Ó\á\ê<\Ú\å\ê0‘:\"[\í6\Ôy¿ò-\ê\ÍXƒ¬@–\Ü|T‘3ƒô\áTŠ&\ÍÅ©\nz¿4N—hº_ðŽ\Ù;>z q¾ý÷`Œž¬Vk¿Õ¡\Zc<o|š¸\ìV,(\Þ\è\ÆknQ\ìÞ•R\âf\Í\r¥T’÷\Ñ¦\Æÿ¢»†”A|1¡­o4¿÷\à9ph@\Î\á£ý]\âùšñ\à\Ñ\Ùf½¹ýÓ»³—W>­\Ð\ØEÿ¿l˜\íOZi\Z\ÆIë¤ºŒ“\Ô „™KLÇ¸_\È&~œ4k8Í¦~1!‚‡!H¨&¼¹\r ¡AlBË Ž(°°N´™8±\ÛMµ_\Ú\Ýÿj¯ûy\ÎAœÝ§‚­Pýy\Ý\×ýö¼}xw^Qq>X—1Šþ‰p\ÔË«‡€±ý@MJwTe&\èŒo,\ã7E¬@“ŒRM–VÝ¢\0»\à²\Ûý\ÜÊ¬Î½xá«œ\ß`óÁ\Üü\ì\Ùþ\Æ=­’ò\ÖC?‹o\Ì™j±ùF7==\Ý_\íš‘\Ð\î“Ì°óø=š\â\Â\Åñúv2¹IEY^E¨üÀp	.¿\ß\áðû\çX¶m=sv|‚µù\Ù\Äjñ\è\Û\Ñq¯:#h\Z\Ùø\ÍÈ´¶ R\ËøFg³©\æU\ßÂ”ô2ûª\ìX§¼oŸ\Ã:\Åu\àD\É;ñº\'p\\~\Ã\ÅŽcNkó\åÊ»\â/C„™_\Þc÷\Þ{mW¢Kš\É\Û\Í\èƒØ€£\Í,8ø™š2n`\Z?`8››	ý³\\]\âì ¹\Òx\ns<O	\çý_l*\Ìp¿5Ù/\Ç:n§\Ó\ë¤gY\æ›	ej\nSF“\éþ\"\Ò|\é˜\ã´SÁ\Õ\\.ƒ6øð=‡\Ë1\Ç…\Ûwù\ë	6C…¯¦\Ç\Ôñ\Þâ‡\èö“\áŽ è¨Ÿœ¼o\"T3gŠŽ\Ñ\ë\á“\×”X¼\Úé ¼›ó\åb8‚†ƒˆ¹>\Äü,\Ó\Ë\îU÷ù»\âòS,‹/G)4}\îâ–‡éˆ„©C\Ï\ìÍ¤3Ž\Õj´	Á\Ð\ã·\'¯w–P“É¨\'\æƒ`,—]\Ð\ÈïŠ_^¶\ÏNwc(@•»\à^=+>]ü\é§ý¿{yr\Ú\ÇË‹\Û,Á8\Î$\ÔqZð–q‹s°ir\ÏBRE;†÷\'²Y‹oE\Ó¹\ä+\ïr±2¨\Ò[\Çå“§\ívp\×W.—\Ý\î\Ò\ê\ç\â\á\â\â\Âó£Çšñà£\ãe8¶‘[÷@e\Âh\àhý¤ŸT\Ç4€sôœp–À\Î\Å\ÉN`=Ú®È¾\ÒnN\Üõù\Ò+‘H_9•¤v*½\Z·,Ÿ±·.,¼òª\é\É%\â9	‡GË¦F\ëÃ™°\0\É9J.§,ó\ÞjsG“\á-\á,\í\0i-²`\Ð\Ø\Ëòn\Ì\å+%$[8ƒý&S	VÒ¾œ»\ìK\ÎV\Ó÷\ß\Íð@Z\ÎðryFT3\ëÀ §·Ÿ\ã¬øq\ï\à„þõ”pŠh\é[Ñ³\Óö\éF\æppWp”\åT8¥÷®ò.V’\Ï\í.\Èr»¸\\ÄŠZü\ÑzGm¥TqFl\Ö\ä\Ý\áL°—y\ZòH\ÝQfŒó·‹È¬\â\Ò\Ò\Çõ¨”®d2ÿ>‹D’)Ÿ\Ë+\ÇF\ÏÚ™\\N¦\î\á.¬R°–‹\'\'ûSƒ<•‡\Z\ÒôCg’\áÐ‹-\Õ\Õ…P9C1›\Ùó\È\Ô\Ì\Ê[¿oEW\Öp\Îqµç–š7õ\âòoû\ëÍ”,\'\n\åù\Âj8\×?}º¹6j<g\ÜBù£\Ýa\ÍeO\äeŽ\ãtZ\Ô\êCý›Be4õq\Ì*~bŸ\ãÀ\Ì\ÅÃ…¾z\×[,múPqÊžZ¯÷ù\ç7‡Gg½e3´{5‘—ÏŠ\Ë\Ç[µ¯_¯F«uÆªQ°,·\Ã8\Ö$Ç™Tq’w@c?F\ê1˜õ¦£×˜#K““\ã£7o\Þ\Þ\ß\êEµ„ÿjO*\Íf\åòóÆµ/˜\Í\æ\'-^Ÿ¶¾|ñ\àŒ÷\ï#hz\Ò\Æ\Ã!û\r‡5p•†\Ë\Âd2\Ð1þ¼L£\éZ`gn,®\Ï\Óps­%8\ì/Ü­\ì\×j\æ\Ã\\9_Lô•Ew!‘W£;\'¿–º\Ý.\áUy¨ú›)¹Xþ\Ð\â4©K,F\ã\Õ\nŽª\Æ3\ÆpôÖ—û¥\Îúöz^Îœg./W:µ–h\ZóÁf­öU© \í1k\Ì	ó\îD¾šŠ^œô\nõný\ÚtGˆ\Ì<ª¥³mz\0g8”\è£}\Z\rG³\r\Ó\Æ\Z\Û\Ø?(®õ¶£\Ñl¡\Ùl¶}J8uAhˆ\Ây:+IJ)\Æ\æÂ‰+\nÔ¹iÕ»9+\áLi<8‡\Ûµ\Îf\ë÷¬‰\ÙY^wFG¼@\ã\ÕO3Ž™%ƒ\Ñ\ëõ¡ý\å%L\Ê5M\Ùt:Ý®õjÕº\Û\ÍÜ•+VÎ•]D\ã\æ\ç\ë‰<\á¬}\í6ºðý¨[û@Ty\Ôl¡qË¦õP\àP8¹Ó¯\Å@!\ècf4\Ã\Ãzó½÷‡\è\è+µf“h*™ \êFiø\r\à\\\í¡:ö€co\Ô\Ý|UI%‹+ÙºPú€ou˜<ZzY\Øqj7Z”\\¬\î\Ì^g&\î÷)\ÆÁT	\á1<\Ò^#^\Í#IÙ”\\*¥6Wz7_DG£Ñ°Ï‘,4ðI š|\\	o·[\r¡tm¢|Pyúõ\ÐBvv2\Ô|g™5Ë¢eá“¨†vŽv¡?\ï3œfV©\ÆK%9\\ƒw¾ˆP§ñ\Â\îÀœ\á A,$‰n>,m\'\ånC\Ì\\±„¸küT\æ ^{)½°\ÇLBŽ\Ãß¢FÊŒ\Ø\à°\nÍ¼ý¨\á\È%9˜­õ:µ*Ô©\×\ëHwQ`ò\Ø\ÅF½[(\ä\Ã\áhº[\åŒÉ€þ \ã€@³ôµ_85\Ùl:FÃ·ó?8šy\Çü\ãñ\Z\áHJµ%«¦\nÔ+8Ø\áh?—§^(t\ã©p;#”«\Õk³aŒˆ \É\ÊmµR¸M&\Ô”w0¦\Î\ìp\Æô\ÃCCC\Ã<X°3\á0\r¿[Št˜:­V«\ê\éuzÍ–x%\Ô::U½!\ìÀ\é&\â)\ZB®pŽ\":f #3Ð”Q\Ý¬j`œj& \Î\Ê\ÃhTq8«<\Ð\É\ÒX9š`K\Ù\ìP°\êB®\ÛÀSM€‡ö?\à (\Ç+iZ}®\r¼²\r‹+\Ñ\Zkðjÿu‡ ™j3¼\02m´Xq^Aù\è32p\âÁVJªu\"Ÿ O©%yZõz®¥\Èõ]°4 N>ŸO¥\ÊvÌª…J;ƒ8\\!µ:G	‡òn\\\Õ)\Åoq¸><ZÀ	…m\Ð}JS\n+Á¸\"5#;¿zžJºó\éF\éŠb5\Û*P\Üê <©Ë˜]DÑ¹cb‹€u0d}\n\Ö,o$Z7©8ZJÑ³A\ãúf\ÒmÈ£Ä«YO³³sp°FÁS²_\Ð+|\Ùl¼T(°H\åÑ³\Ò1÷\Z¶!\ç\àIMw\ãÿÑˆ\å\æg·x\ß7$Žy \ËÕŠc#+\ÉC7Š´‰™\ë\Ó\ÉI¤\ç\É\äD‰%Ê’\'”\åxUN<\Õ\Î\ìf+-öGu\Ñ@Ø¬\\&D]Ü©\ëZUœ~¤nqì«¡GÀ\á<YˆS«\Ýô:hVñ\ÑE€|A\É#)Š’b8a\éò\Ú\È\Ía<-ilÀG\\¤	\Ô\Ç1r\Ûè‰ƒ\'ù@aQŽ!†\'°¶EŸØŒ6£\Éd\Ò\Ìst‡\ár‰9Ÿ¬`}§P%ñð\éw\ÃC\è0\í\è\Í<UM@&•‡\Õb\ÂaŠõip†q+k4T…øùþ¯šM±\Òx¤\è\é4ûŸ´\Ò,Ž\Ó,I™5\Ù12«Ó»®¡Ž3cvÕ¸²*\ÊÎºc,H-­!À\â`\È\Ä ^¡R^|At€šXE­df²h}m]le\ëK«Vk\ç¿\Úsž\ç¹4\ÙSî½ô^?|\Ï÷9\çy\î\ÅÃ‡x~\Ã6S®\î–°[Á\ì\ë¹\Ùù„¨³ñ\'\áJgl|\Â\Ø`\Z1g\Ú$\Å,HGø£\n…”\\†Êƒ€\"\Î7}°\Ê\ê{\é	…\âÀ³\á7O`5^Â»\Ý0\Éx4\ë\Óé¦¦|\ç_\nr!’²b\Æ:sQ^¶rIk\âGFq˜‰\èµX(þx\Ô;†\ëb—\Ç3ž~y9¸º\Zøm#°µØž\Ãr¸k\È`Àqn\Üþ»p»ýŠ00DuJòqþApÄµ¶*<I”\æ&Tñ\ãâŒ»\\ž8\êôcý\Ôsp0€\Ç\Ñf\Ðu¯×´]\"\Í\ã‘\ÒòQ€–\ÎÉ“\ÇHÀ\É\Ñ\"4\nwk	|`\Ã{zñi\ìô\Î\æ\ÙÙ«¯_M¬¯¯ŸšB\ÃPÇo\êI\0‚\ÛwóO¾£è ’¼\ÞÁô‘\äVšhY‚#\ä‰ú\ZHò$¸o¦û\\#?5ð\Åt\ê\à\ì\ì\ì“\ßÿb\ëŸ\Ý>³®«\Ë`08Ž5~£X8\\C&\\“\r’¢\ë}£8‡iC^\ni^Ž×ƒûbg½\ã˜s„\Æ{{ßž.,,_}\ÜZ\\\\ý¸õý\Ò;tº\ÙYŸ\á‰\×h4yÖ¾\àòNÍ¹Z(³7òHr™\Êw®LH\0(ðš„œ\ì&\ç{\ÇúB6›ifp–¯®®>®nm­\Æb`=º¾‰™}P<\ïø¤•Ê¯\ã\äˆHÆ®	8d\åKpHŽ\îHe²k\Âpr\Zx,NA\é\é›1yM°Dûž^]-_0¦:–––:t>³3fFq\âF\ÇöûÛ“\n\îI­!Eyž\ã|u\Ä\ÂÀŠ¡ \0C£srº·\n³\É\äš\èxy\êr-ð&ÿ\Ðt\àmAŸ\Ó	R\åñzù\í\ÖýQ¹B.\"‰\ê 6t“_š\ïJ\Ø\êØŒ”\rwFi’\Ë[!5ŠyR˜yðŒ\Ç7\ãü†d°\ãÁƒ.n\È\à‹ù@¿\ép:7v^GÛ¿“sôJH–?—bòˆ8bo+\'VBÁ\á¨.¢•\á]\ç\×G\Ø)f<.—kÆ³0–\î:\ÈsYƒÁ\çôšøø\Z´v\ê\ÇÇ‘ý;TŽ!Ie9 \"¡_Þ‘\å*8U²€mŽ’Ôheo\ÈA;	<½}3@\ã.\á·=Ÿ€õ¹ûÐ‡\âðq£\rb\Î\Ôû;\íúhG Q®²\Ýh_ÅˆCª°4×ª°OaI\'\Z²\Ñ\Ï\Ú? vŠ\É4\ÄÁ\îCC0¬\Ì\Þ5 qš}>_b\æRûA¯\Ze<\Ü5?S\"QŠ“+¸\ìÿRuM\çÿ‹’_÷@|\êgô\Ï\Ùb–	|\Zð}W×¬e\Ä\ë™mB\Ó\Â Ÿ\ÕdôIýd\r)ôO0\ØVp\'—/ÀÉ«¸\Ìh”p„?®¥¾ \àC]´\ç?óóøÄ˜‡i\áœyd\Ò581;¸;·v¶¶Á\ÇCH&\n}’d÷#úzU>›/°”\ÈdBõÁUª„Ž\ÚM\Ê8Á!y¡\0ø†~€\ÐL&õÿ\Þ\Û\ÛÙ²ùÍ±\ç\Ð\Ñw\ßllon\Æ=&§yh¦œ¦×’\á}}KOµjT!qòºu‡˜­o\'&ö\Z\rbh\nÃ\êk3\á½óÀ­_ó\Û\æ@¡¹7o\Ö\Î667].£\r\æ\ï‹:Ã“\àn³¤p’\rõ=û“slp]kª,_\Ì\Íª\ryšœu¡Ž„¶N£iýý~½ºvÿ\Ùô//ð—D;Xuük€5(\Îm–‰	nq*ñ&\Û,±®\èU‘dOC}\å(–u\îF÷*\È\ï¦Å€CG \'Œ@\Äaœþ`\á‡3Iü•\Ê\áhøg\ä9:J\í\Ä7··1G;)`‹‡¼f‹\î\Ñ\Ð\Ð\â\ÖOþK‰¤Ùº\ÒR‰<==úð\ãby«<W\n…\Ö.c<\àeÀÁ\ZŽ\ÞQˆ\ã].Âˆi\íW\Ï2\r\ägµ\Õ\á\ã\èô/?\ïõN§ŽR©À\Ø8zL\Þ\Òt=šú)ð¶pÜ™–\ÂJ}$	Ñ£Z	?„/Ë¾x^w\'Å™\â°\Ú+ŽB\È£a¦Á<i¸W‡u-‹úhzò\Ìv`Q‘BD‰\Çfx‡h»`•þ$1r¿¹qT…*UK\"™¼Wa\ÏFß•sŠ\Ó2bŠC›µØ½9A$¡<š»\ÑLþÌŠ\á4Œ^\\¼:z1ž\Ô8ªišq…Nó”n¨»£{1–ð¿I\Ûy¦²°xô--‘\ä={USEE\ÕJ4ý­œ“^obwŠ˜w\èL†u¤c\Ú0k\ê¾\n·+k\ÕJµRP§\áøü\ä|t¾÷\Ý\ØÀúúø8Œ¯¸j¬@}†Ù®ºm9¿Aª$’¶t{!\â¨ZT*}$b/³C45}X	§®wU\Â#¡S+9—SG\Þ*š\í+}u¨W\Ò\ÄQ\'\'O\Ü\î\ÏÞ­¿„˜™Á‡\Ç!B351øý\à\ì\Ôj\àm\â4·‚:•*|<MÀbgD‡\Ç,\Â\î%•\äp8qvCUGqÀ¾=J!šZUú\Äjµ>^	]Ôµ°\àñ\à\Ó, ‰ù,³°T·˜\Ñ8(Nóý(ÁÁ(„vyš(R“$\"³E:©Ç›d¬\î\ä²Å‘î€®e>WV+•\Õ¸\Ë\á´_¸û‡‡\Ýñ—\Ë\Ë<lxc\×\ë4C×´L\Ì\Î-+!\Ñöô°°qpSE\"÷6š4;Hô\ê šõ\rR›\Z¦\æ/\á\ÂjÕ\"²6sŽ8\Ù\ßyL&“\Ñ8\Æ` \â<÷MY|\æ\Ä\Ü\ë\æfŠÓ8\àžJ\ØN…i*…À7UUöŠ\á/¡\ÒPž’‡º‡\Ñ\Ôi:oGW’D“F Žš\á¨3\çV\ëùÅ‰»¸øý\'\ÐLÁ \à`\Äb«\Û%…!e§½y0 ü\è\Ë\ìDž¦¿–\Ú\ËÊªP¡ŠL8­\à\Ð>\Ä;\âL˜£\Ó\Ð\Z )8\Þ\×\×SY\Z\ËœZ6\Î\Õ\Õ\ê•÷\äqúü\ìvKG`0$¼‰„m\Õl›\Û\Íg³mT‚L!\à´3}Q€§´©´¢…nC!By$Üµ‰9\ÐhëŠ£™–# )/\ÇŠ£q­\é\ãtú\Â-·Z\Ýn\Í[[\"\0H*a¹\Ì÷[­O	\Î9ª\Ã\äQN\ZS…8e(\ì\ìM™\èCN!+(’ˆ øj\í\Ô\ÊoG?4*/¿8¸Cq”µôW•\Õ\êp?À\\\\\àðrrA¿m7{Ÿk·;‹\ã<ý¡]\ä©l\â„°@]UY\ÙÊ³t‘B\ÆÔ¡\ë„Nù—Ñ•Á,\0óù­[€‚\ë\äK­¬W÷_\\œŸœœ¸û	\Ïo–\äh\Î\ï€\å\Öe[[ö>\âœ\Èî“²Ch(P‹^_QZ†z”\nD£\Ô…\è!õY!h9pLcu#\Ëhò9\Ä-\Z\åJuµRM¢º¾!=|‚¾9qy¬—ƒ³oGFlsþ``\ZU[\Û\ÓaÀù_\æóÚ¶\Æq½§vaÐa\Ì\Ð|(\êÀÆ’¬!£ƒ³\"fZ\Ý\â\Z\æ‹s0”À¨›KŽ/t»_c‡A™Ghh),\r´ÿÕ¾\Ïó¼¯,;®\Ü&m|ð‡\ï÷ûüx_òö\ë,ÎŽ%:ø\â’:ƒ\æ„1&ò­‚…ÐˆJœ{wN®††…R\ÊNlC‚¢\Í<m¿szwRf4:<<\\=zühú\Z@¿?ý\åoŽ0\á€\ç2\Î\çZ\âAv 9S§\Ü\ìm=\èE]cÖƒ7=[H”\Ò0 Á£ü\ï;\Z\çûNpúùX\àŒnøbpz\0}~~\Í8‡\ç\í=\î‚$·\ÆYº“*N\Ã|›\è(?8\ï). 4(\0£T»t|ƒ3øl1›\Í\æ>Ò¯ð|œ¿sn73\æ9\ÊGg5“c\ÌQVgÒ¨\ÓkrKHp~ø\æŸ8\ÊE1\ry•\È7\Õ€\Ã<\í`}™/ð\äš\ç#ý\Ê\ÕtŠ<?{öaE£3*]¾½¨•MK‹\Ì\\\0\0jIDAT\Æ %œm§At[\'§…S\Ò(M#\Ña‰\àø\"O{x\Úû.\Îò<\Ë4\ÏÍ”/)~\Åq\â\ç7°\ïò{‡\ï¯7p\Ò\ÔTV½±®ñò{½n\ÉV<·.k»#@	?„\ÓAz¨°†ƒ\ëoñ‰\ê†>™~tŸpž¿zEiþwe\Åx˜õðD‡;\ÌJS*pu{š\ÇÁtC4Ÿ]\ØcX´8EQ$!\ã°:\å\àú=u¸,\Ö<‡«û÷\ïO\çpþü wzóED \Ò!pHŠ’,\ÌCzžE\Çð\ïDŒ£X[\çFi£\n¼|Ÿ\Ä)q\Îi“Á§\Æù‚\"{øh4\Î¾\Ó\Ë½9w9\ÉLSÅ©\ïí™‚—?{ôo¯iqükiJŠ{-ÿƒ\Å)l*,¤8m\àœs<2\ËØµzôð\áo\Ï`\Ö\Ó?Þ­r=Î³ü\èL‡Å¡uB\Íf½a\â\Âpu–\ÆkzŒ\Ó:\'TR\ÞJ‡XhJœ@\ã\ËÁ\Õ\åf‘Y¥<!\ÎÁs”ú\Ówz–³<\ïiž»ºR©§h\Ç\ÈHwR¡ñšŒƒ¥C›\Õz\é\Øc;t*±±…f\ãqAIfŒŠ\á\é`ž\Ë\È3>‡:´\\dq‰“ýw\í\Öx”Æƒõq<1‹Ý‚$¾\âep´\æŽ\Z\'»plÁ	\ÛÃ€\Zö\åŽÁ!³,c\×\êñC\àüŠy^\Â\È1\Â5MY«Ó¥\èx\ÔwŽ\×l‘\ÇnY|•t\å\ØE\á£óTaxf%Œ\Óñ§#8)á€‡q\â\r\ï\èh…¾ó\ê\Ù\ë\rš8?v\Ý^™Ð¸‘DY&§·N8L\ä5û}\Âùñ\ÞYˆˆø\á-[\ãøÁÁ¶Š‰\å‡*]o\çÄ³?…WóxCœ\Å<\"³t\ä§\ËÝ®\ÎfI~=Íƒ‡pp~ù\á\ÂW\Å8\Ü\Ä)+k<Nü`ˆ\á@Aí„„‰uHfð\Ñ\ÍÁÁM^…\á½=u5KC\Ù\Ùu¤\ëxb@˜©_Xt˜úò:“¾³iˆeÛ‡6C	\áœkŸL=\çùlÔšn\ÓX\Ù\ÑY$1f«XŸ	{¤\ç%‡\Ý\êku‹N½ß¦ŽJ\Æ%}URõ	«£¶p¾\Ê\è“\rR\ç‡#”\Ô&Ž),Ž¡Pzš™^Õ«>\Ä	-¨öŸ,C\à(_Orar\Öf)cŽ€À\é\Ý\Éò\Í\È\Æñ\ìrK\Zúñy\Ï-\ç\'\á\à\Õ\ä\È\è±À\Ñ\é–\Ù\é\'\Ê\Íþñ0T6\â(3\'Œ:‚R’‡:\Ê\ÃÁ\Å\Ý,\ÛÀÁÿòÌº…³8vK6+\Ü	o¡º\Ì\á¹<\ã¾*gõ\"\Ñ\ß1#4±Í°08x\Ç÷iF´¶pòmŸ$:³yjp¸\Ì#{¢œ\ÕamºeY1\ã¼J\Ë\×\Øzc\'j;\Ñ^\Ëô\ìrg±…Uc»\\ç‘›J”÷\Ø-\î\Î\à\é’[}z\ì¤/\êC\ÊrG­qŠqR\âtÚ»p,\àÜ¦‰1@#9 G\"N4ˆh¢3M&—¸$<MˆS\Î\É2 œ\Ð\×+;GgD¼\â¶\Ü	\'\ÞT#Ï­\â\äTX=Så¼¹Ë‚!\r\áñ$9…B\ÜGi}\ç†\Ç7;»>\í‘:E1¶\è¡\å3Î–Y¶gq\Þ\Óó\\\æ­;i\ÕA†˜\\%\'\'±û¬N\ë‹3\ÆQ\í0t*^\ÙZ¥qh\ë\Ü\Æ\ÙMœ7˜Xkœ”p¢º„Æ£cz—»\'ê $Œ\ÓÚ¿{óž\ÂVƒCŸ	²SVV\á”\ê\Î?—[®\ìH¢3{‘\Ö\Ög,\î;Qª3LõºdF†D[\Ì8hÊ«\ãÀGŒ“„qTG)\Ã\ë\ÉC8W—›Ÿ»+9ø1–¾hb¾@ð!Ë«O&^9Ê™fœ :}\ê\Ê\Îøò\ÄN\ÚtS–U©N¨qØ¬\á2g›¦|\Â+ºo7]‡G(\ÝVJQÑ”ðØ¥~³«\Å!¯¸\ï<Y2ŽJ|	QK\ÆIgX\âœn\âÀ”O\àüw™{¦š¾­t\åˆNKiW\Z`Ÿ§\'‰C^N\ëJn–Ç¯\à(³-w‚R\ãlôÀ\Å,¶>QXQy\æ3\Å\Õlh˜z\×T”\Ð¶Cµœ»=¹\ér6q\ìagXÁy¹ù±³xgœ½©¹½*N&¨XEWr2\Ä5N‘8\ä•m\í¯žmÁ±\Ã5Ž#@|\Ô2\êO\0œ›“i±;É³y$\×^fs¯!\ÌMÓ‡gTM‚–‰€sB+p{\Ç\ØU5k\Î\î\ÂZŒ®ÜžœgR\×\Ìô´\Ë0ü…w.­N‘(D\Åõ?©\\\à\ÌK\êT\0\0\0\0IEND®B`‚','Male','22800','Sofia street','54','4789631','Sales Team Leader','Active','5/9/2020','Sales Team Leader'),(3,'Happy','Singh','10/10/2000','happy123@gmail.com','1234568901','G.T. Road','Sales',_binary '‰PNG\r\n\Z\n\0\0\0\rIHDR\0\0\0Ž\0\0\0Ž\0\0\0\Ð#À:\0\0•PLTE\0	ÿû´	\0\n		þýº\nþû®	ÿü¶ÿø­þ\å—ÿþ¾þ\ç›\"ÿÿ\Âþð¥Ìªuÿû²Ä¡nþ\í¡þö«ÂŸlÈ¦r,Ê¨tþêžº–g½™i\äš,þó¨&\nÀœjµ”e\â•)Ï­xÉ§w\Âmþù±6Þ%ÛŠ?\Ær¶d\Ñ}Õ±z\à–6ª\\\åœ8×…Æ£rúÙ.\ZC![0Æ¤oþ\à–²^Û¶}8 »g½kÿÿ\É\Êv¤X\n\èŸ2T	â½€\îÌˆõÓŒ\èÅ„ýÝ’y;†C@l3\Ëyd3Ü1ŒGW\'\ê¤=\ï¬@“KÒ€\ë¥8—P	N%×Š.s8B*Ô…\'®bN.L\Zb)j>^<R7¯P\n¯ŽVpGó³FqU,“rA¦OŽb)\Ë\'ðÞ•»[·p\"¬‚?bK\'õë£€Sb5¢„QŸp-Ô±lÞ¶eÀ’D¢=\ç\Çv\æ×‘/\ÔÅÎ£[Û¤Ið\Í0\0\0 \0IDATx\Út˜O\ÛXÅ½\Î3±_\Ì#lŸ\ÚL\Ãz\Z„Ë¬Jvig4ªö¹ûM\Õ\éh\ÚH•Š°\ÆSl%Š!%¤ V\íÿ½\ç:¶ã´»—„¤Å¿œ{\î\Ç\Ã\ØD\ÜypÿþÝv»\Ýl®¯¯\ïQ4\é)=i\íµ²¨-ZµZmcc½½\ÞZÇ{×—ø?·o\î®_ÜŒG±/}\åûR˜‚»¸óõ\ä¯——\î¥\Ã\é(\Ô\á$\íü\å—\î=\ß\Ú\Þ\îd±[†A4„C<\ÍbW\Ê8\Ù#Þ©†€ð\Â\ÝÍ‹7··7/\ì\\^_\\Œ\çq¨•”Àñ…¾”’˜”R:~|ÓŸ„\Ý0ô•\Ö*\îþ“pf8»Ouryr|\î<ÀCw­2HDkýòS<ž\æó«ùõ\í¯ÿ¸~Ó¿J\è\Â\Ò’\Ô\á&‰$¥¯\ÃHûj2B\å+•\ÄI ¤ŠûœLŸ\ÝÎŠ:›¹:;y¶*‘\ádz8\Èpv¶\æ„2\Ð`0\ZC£›A@brH#s…@¢<M¹óuJA4ˆ\ÓUxaø|\Óù_8óT\äi.y2¥³½…8™:—ýù\Íx~u>J‡ñyt~>º¾9×¸²#H¤‰s—ŸòÆ™))cGû\Â\ÓQœL¦q‰S\ÒôWp\Ú\íRž\ÅCfj\âÙ«\æ\n·O£\Ñ$ŒÏ’$\ìj\â\Ñ8	5¥ˆ›p±äŒ¹€ d1f;–I\Þ¦„Bˆh0º7KÿRQ§³¢NfžLv.KVW\Ù-iUoc|\ÔÁ|œ\â¤+‘€£„K4‚¬lÙ–\ÅM\ÆM\Û!f9¶\í¸\Âa d.ö>Ï¬œ\Ë\ÓYÁ\Ù,’•—:ñ\ä•^\ælQb‹\\¥‰T\Ð<A•hˆo,²\ÂL˜#\Â\Ë&®n\Û(\ê¶Å˜…\Û\áB*\ÊôUÇ³{Ï¿!u¶ÿŸ:\Ë\ÎS\n\ÔÊ²EV®\ÕZ%M\ëz…q¤~53•d°.²Á8³˜„RAK0†p,`ø@6³,—Z‘Ž\Ã\É7\ß\Îf.p\î…³P¥ùUa5\Z—7I˜(—Y\Ü79s\\\ãÒ½\Ã “\'#\ßv\0\à eŽmBF½n\×\ëu¯0\ËE\Ðig«À\Ù-\í\\±rµñ,ô)s…L\Õ6\nuZ\èwÈ‘pKd¥\îHn\Ã.~¢)\áÊ¯;P‚T\Énu?ƒjY²\Z÷f8…<Jß©¨\Ó\\:f½\è:\ËQ+\ß\Ç#x…2e™&2Q7SÐµ\Í(òÁc2¥4‚\Ð;6³-x\ÌT>\\°-ÓŸ\ìn4+\ê\ÜÉ»rŽÓ¤‰m\Ú\Í\'¯«=\ÂÙ»r¤\éÂº\ÚÔºe2\\\ÂF§vY¾$9€iPz s-4\Ú7-Fo¡öý\áv\î\å¥{¢YU‡Ê¿\Ë\Ü\í•}§\Ö\îÇ‘\äYAÿ…Íœº\Ãq‹63]\0 …0p,\×\â ³`tÁ·D(¹…”	Á1k\ÓlJ<\'÷N\Ñ›\Õ(†E\Ñ/§‰6]\0‰.Q¸\n\Ñf²þ\"|lè…¼\Ô‡r\è›ZóI2\Z¶N<ÁÐ£\Ì\ãK•nWx¾T\'—\ç+ b\ëX\ìÿ…\Ê5³\Ò6}a\É0\n\ÑfP.–¥$U7œ!I’º-”Ð‘/x\Ê3\rcm‡a$e”(´\'Œ77œ•4‹|-­œg+\ÏW»“ñ\äö\Ùh\\Œ¯”iõ_.\Íii\éú(_\à ,iÁ5h\Ë\\DZ‹5y4kBE‰Ÿ\",&cÜ•\Ã\Ùng»âž¢\ÐË™œL¡ì±“\ê\ì­o\ÔnobÉ¥°h@\ÂÏ”0*i48\Ôªi\êŒ\n$¢\ÄS|M]\Å\Ï<­\Èô­°ihµ\Ø\Ï\Ü0…g\Ê%¬SÅ¹»tO)P{\ê\Üý<\×p¥\É\\\ÌEû¸0	h\Ðÿ\ëœÛŒ¡\ß	\ZYdm=¥\Ï\rÿ\ê|˜\ÌŽ¦q‚ù¦#\é\æþ°ß©äª³¥{Ú¹ƒ–_¥•\Ño‘+ø˜3”\ÊÅ§«¶‹Ù 1\Ïm\Î\à\\L,\äÊ²\åi,„¶+H$Œ?‘\í»{Ö°D‡(	ž¤»\Û |„ò\äúN»P§¹¬sL\Ïñ|ˆ2\È‡}´O]­Fù^K\ãß¦…,\Ë2\áWKk›aÜŽbò\0s?\è*\ÚI\â\É0”BMû\ÕÞ“«³”‡&E\ÎS©ªZ+\ÛI\ë\ÑM‚]\ÐE\ë\ÐÊ¢\á`\á\êB\Ó\ÞE^¢ÉŽ\'KÓ¶\"‰¹\ZD£8\Ä\ãQD\Þ	\ã\Ñ0\ZN\'ñp&³\ê56_¬\Ô\ÖNEš¢?“,µ\Í\Î\ç›«%<\ã¢õ`‘@ÿ\rš,\ì$¼`¿\ëyx‚†gq´=\Û!Þ’:ºJB¨#¢\0I<‹ƒp0¦£t6L\ËÁ\Õ)¼S\Ìô//–ÁlZ\å{c\ãþ\ç›\ë\rŒ–Q\Æ\Ñd\ë\ÈU\àI¯{rxö\á\0uaRü\ÐÔ™88Ÿiµf`ý\è\ÒQBøŠG \Ù\íOažeó:/–g›rA-\n©UYS»;V‚\n\ÐGú¨-Ÿ;\ØEõ\É\É\é\é\é\Û×¯\ßöþ\Ø\ßºm\Ë\éTq\é\íŸJ±V\ç²Û¥=]¬¨WPg\Ú\ß\Ý\Þ.›óªw\Îi\æ;r+[ºh;®!O­ö›!¨F1\0\Ð\í}Z€utø¶wrüúÕ«\×\ï O\ï¤w\ê!¡Xu°\Òxòô¾k6žxø¾òž\Åa7Ng³~:\ëlW&E\á\êò^Á\Ù\ÈcA\ÓXo=i\ã\Óo5u\×ó\å>ª¥wtxröþÇ—/_þž·gg=˜ha F:zºkb¾r:\â¸\áu£(F“´“\Î[OFd¼\Ø\\]1š\ÅÀ¬QŽ\Z9MÁ\ÓNq\Ì\ÌN.h{XD\ÑEp´ÏŽ\ß\Îðüûø\èø\ì\ÃI\ÐÅŒÅ¡†€P\Åd†\ÅðQÀ	¢iÿ\êüj\Ö\ß\Ú\Êy:Qµ²\nœ\\˜Z©M©N\ãbHgK¬^H\Î§Àñ\"¿{œc\à<yrpð\ä\å«W¯\Þ÷ö=:\éP):xa¯ \ÚJ€pL¤9\Í\Ã\"_¥wJ\ë”\Òd{q•q‹#„O§IxYHjtÝž\Î;\àüô\èñ£Gzÿî¤—9šô\Ð\ä5ªF\ÚpG8)Ž¯\ép8ªuR\ç_+\Çb2NY\ØN£\Z?„\n£Ó¥OI3j8\è\ç,S\ç\à\à\ÑãŸ¿ú·§¿Á\ÔûBú\Þ\âXjfš\"\ÓÀI†ƒx\ÚöIŠ}Š¾³ü£õ\à¢\Ï4Va\ZO~Ê‰¹tÀ#W\îŸö‚·À9<Ê’õÓ£Ÿûþ\ï\ß}÷ô·\ß_\èQ_\ìfLTÂ£?kx¦iÚŸÎ¶–4KœòO*”«…6_‘PüùJX\Çu]\ÚOMñ_6\Íý/‰m\r\ãž0w¥iyI-d»%rð(‡2f` \îr-13\Ó\n\ÝÚ¶¿{?\ïZ3VK%ùE¾Ÿ\ç½=\ïšl¥R&(&”dR‰ûTqòkv‹\Åµ\ÖrI”¼\Ó\é´\á˜ø¡ø\áÕ¶³wü¥\ÝþØž7\Zâµ¤OôE-uXu\ëŸ?\È2:9yù>P9N®fj\Æ\È+IEI$s‚†³æ°›c1³%/»•Š\Ô\Ì\à”\ÐùAo\0\ÍóÀ—û_\Ñw8Ž–\ÊKC±¢\'ˆ£g/}¾\Î3\É\Î\ái¥é¤‰u‡,\Ïði[)““J\"‘\È	H\ÐDIs¬P(\Ä\ÌeYÈ4¡ˆIj¬ t‚X\ï>\íAö_*\Î5uú…uoÕ ±\ng\ào\é\ÍD¯\"‰M¬\Ùô“3Ó”D|ž‚X…¨¬¢²†ó¶P0›«²,»Pi5_­˜HŠ)\Ziˆ\ØÎ§\Ó\Ó\ãö“¿VŒj°T þR\ÌS\ç®\áWšIM›™\Ën³Q\ì¾\æsx\Ü\Ö¦$\Ò\ärÀ	\Ç\å\Ñq\Þ~øð\á\í\ÛB,\æõú\Ó\åjP\nF-*Í¶ÿõ\ã\Ò\Æ\Æ\Æ\Ê<\Ã1þF¾¯2|²\n ý\ÂÞ¬þ8’2\Ídi|˜9š\ÛwLLJª@œ\\±\Èc¥§ŽŠC@8\Ùl\Ö\ïM—\åœ\ÓD¥þ|ç‹±÷ô\éŸóó*Ž*\Ï\Ð\Ô\à\rÊœG\åÀ\×\0‰S=’š\r©‰ÕnI\îL;KR8+«•\á®\ã€\Ç\ï÷–;9u\Â\éi\Û\ÇÞ‹g³g \ØÎ”~¡r—©C=ÃpHŸ\Îu\æúþ]\É4J&2|w(ƒ\ÈcÊœbœ—¹5úñ\à‡\ãIi\Óò\ç\ãö\Ê\ì\ì\Â\ÂÿxV8N¥\Â\â833ú7\'\Åo\Ê÷	M§m™9wôV„\n4«¸ÀZ2©\ã¡\Ü)\ÈóA‹\Ã1M\ïž\ï_]µ\Û+g~PRgª¯Ž–;D‡\á±:\ì~G#\'›Œ&ˆ\ÄQq´	¡\â\ÄtF£KF*›Lõº­\Þ\î=C\"#›¹<F\ãk†ü£±\ÜO\åŸ3gr²÷wÍ‘¯I\Ô\Ê\Ø\Ü\ÉS\ä1ŽRø8\×Õ‰\Åúµ\Å\Å!uºÉ€\É\æ¶\ê§\ÇWÏž\ÎþI4z´–€D;ºf\ÜùŒ˜\àu®iT{8\ÏU\Ó±\álÀa‚¦D4\è9IÂ¡XQî ²,–Æ£WŠ½[)a\\\Ñs\Î{„³ ñ0ün¡l‹\à<ýö\Ç\æû9\éîš«\ß\Ñ\í™;\'\Zª*X-‰›ª+&ŽCS‡\ÅK\n½Ú­`¨÷>÷z½g\àa¥¥ñ\è8\×n\ã0%®Miô°vd‰4¤Ž\Í	\Zˆ#&ES²\ÔL\Æk\î`dŽ\ÃiQ\ãx;µJ0P:=>>õ\ê\Å­ù\\^YZÑ¶Ð©Ÿ\Ãõ\ë4q\Û2\rð\ØlŒF\"\Z	4˜\êf–\Û%Ëœ\Æbf<þ,p²ô\Åh€#•©OWWWoÞ¼zÁ£5¿¡\æòO8Z¸¨\Ö\'&~Eš<³†ª\Å\á8‘\ÅÁ‰“LŠ8)¼UjVY«lX\è\Û\ÏiP\çAg©õ\í\ì\ì\êõ\èó8ó*ufJ\å\Í\Í\Í\Í\ëOmÈ2\Ï>\Ê\\\î}\Î\\¹F©C4© Ÿ\ÅŒ ó•”Ðƒâ¾ˆ¬—y¶@P\Ä\Åh\Ò(,1`Ë´\Î_Ÿõ^¿fò¨¹¬…\Ëœ\ímF4ð˜„ü mÁ\æ”\É5\Õ\èY\Ä\åöI qR¤R©V%‰¹)\ÖwŠ\Øm2©J\Â\'#X~Ê˜,Yùc”\Æ\ÞtºSK9ÁOg\ëo¶8Î¬Ž\Ã`\Ê\Û\ìB\Z\Ï=\î¹{\×þÅ¹¨Y\ÃÖ¸SUª\Â`(ŽaŽ…\ÏWr\Í@©”Š»\Ö\ì^\á-õ¿³=~3\"•N—;J\ée©uu±¹…CÙ£\áõ9ª\âloö]†º÷q\"¾“{6v]y{\r4%†#‰\è6nkX(RÀ\Ðz|n¡+šI\Ôd‡%\Ë[ j\n™cáˆÀ»ö\Ö\Öý\Íõu.\Ï`#4’÷\Ú^§£ó\è\áb\Þ`\Ø\Ó\Ëv\Ôi VT\åª°+\â\Ë%É€\"	AH4ÁS<öX\r\Ê!\n\Ã\é¦\ï\Û[\ë\ÛS\à\Ñp\Ôh±phh\n\×T\ß0k\Ë\Ö£\â8†\Ù^¬\åN\'\ìr…b±\å4½¬·\âBB\ÊdšJC: ‰C8^\ÌN¹˜	|½¿ˆ‘tsû:¯tR([š<|ò\ìQ\×t5f,‡N~\ä;MG¤\ÌÁP\0Oc«as¾;>†>bSJ¸a2bYV^YJfž:­`û\äÁƒ‡§6·×·\Ô\Ò\Z\à\Ñ`X$+®ú²¥=‡0¨\ë:\êý\ä\\h\ØTœVRÅ‰FBE%‡]Büvñ¡»+(I”—\Õ\ã \"7\ÇüjÏ:Ý½“\ÕG\0\çþ6‹/­®Ž*Ž\Ãx\Øe\n\í\\~‘1j8¹l\'\Ãh‚pBaŒ(8s_ü ttt\éT­»ˆ¨ø¬ù´\Ùl¶\Ø\Óe©\\e¹Ó˜[½G<Zòh8Ü„\Ñ\Ë\Ð:“‡Gkj`\å÷:ý\Ê`\â²ýy\çýik£ªŽ\Ç}Bd“ig‡Ü¹¤\âsU½~o^]\âñx­‹\Óé­Ž\"¹<¿\ËeJµ²´\\\ÖL\Ø\ëƒ\êR\Ì©=y?~óvý”²†á¤¨°\'Ÿ÷\ÈQ+úR4Š\'rnO\Z3ÁJkq£D\Íþõ\Û	þ\ä\á8<—U¡z0wô\r‡\ç[¶\æ\Ø\ÍN\\M^\î\ÓC¨w§ÁT‹p\ày{ò\àa‡\íS²\ËwWr\áµB\Ì.\×r\ë—Œˆ(¯\Ç@\Ñ\ê\ãpuôA1o\ä8\Ô\ïkâ¨†¹\Ï2sò\ß\Ï\Ãô\Ü\êFk/\Øjµ€S\ÏP\îø\ÂtA°Vu8v¼¬­\å\å\ÐÁA1w`µgU«;Þ°½¤vTó	B±7ùœŸryžf–Þ•ySž›˜\Ð6?2Ë£ÿ\ì/\Ó#ß‘‘\å½VŠ\ádhFF\Æ`†W\ív{™¾\×dk<!—\Ã\ïÍ‡\ÝñŒ­8\ÝKn\ä\Î\áuœuMml±/ubñ‘Nil\è³L®^>ýº3vó\ÖôÀ\å%pö§6\Ø^eO§d±;ò®°{w÷\à -{½y\äIfö®Ž%%\î\êüX\Õq\\O#/-ý^Y»¬\änPþ?sòO{gù\Æ“fd\äV\0Ò€\âpu8@xcŒLUõš…\n\í†\Âù´?‡R\áH­[\î&\Äx§|Anw\0g]\ÖÂ‚¾O\0‡o¡ú\åà½»œ†X¾~~~\ã\æ\í±aNóÇ­;uÄŠ\á\Ô)•ø¿0¿\"H[\Ð\çkÑ°8¡#k>½*‡w¬ô£šP\ëxg¸:j¡\ë8z¥³€\r±¥oQ¾F\ÚÐ†‡.ó|\ÅDÿY\á\Ö\Ó\æö8Ç¡\ÌA•ú •\Ý.y\Í\ØZùh„pŽ\Â\Ö<u\á22)ŒZsu:\Õô\Ç3£<Xƒ…\Îp64šù¡E~jk(´Y½|²¿3>6FÏ¤\Ùó˜‘‘ÿ€fxº”\n2œ3\Ê	T:¢u¿\×lw¬y\"š:\ä¶\Ò\àCªËr:\í½ û?¾s½\r^\ÃAwz¨N3÷ør\å\Ë\Îò\Ø\Í\é6§4\Î4Ž\Ùuw)C£\é\\s!I™\äDT ¢$c¥LsE1£ T\Ó\ÐNBP\'6Is6—\É\ß}\ß\ïó¼» 5\Ã$3\Éøñûü~\Þw=+f;!Ç™|\ÚV	ù\Ù3Í‚\ÛÏ¨N^ä±P³\ç\æ\çs©\Õüj¿Ÿ%\Î\"a«\Õ\í¶w‘ —ž B3{-\Î][P\ç¶\Ãt|þñÁú.ü81Fšp M\Èñ¬hAp¨S[§\Öd‡!8˜À3W\Ï#\çú«©.YŸ.¶)\Ì\"j\è§ói\Îm_j\Íúö\æ\Î(/\Ów¾»­\Ï77OL\Åbâ‡$4\ï™DÒ˜`vž\Ñm:Ûœj\ZûR\Óex@l=l\r\Ð5\'Cœ\Å%®tƒ\çý——q~öq\î]J<ÀùömýŸ¿½|ñú° ;ú¸¬\"\Ç\r…	#\âXñ4[\á.J9yŽ\á°Y¿n\0Áó§( ‚#\Ó\ÞžpÄ†±Œ+ß¼\â;Ap…þõòõó\çÏ¹œÕ³[óÀw,0Ñ‹‰GŽN­‹Edd\ÏF•8\â\Ë)Ý¾-\Ý˜\Ù\îf0Pœ%\â\È\âbq	q5­i\çZþV$\Ð\×B–\ÍmÔˆYT\Å>¬(pÇŽ&ˆ³·w°S\Ûß¯u:\r­TªŽ<\È\æ¦w\\ D\äû§õ¶hó\é©†’U\ç\ÖÎ¥\ÐúGˆ;,^ª\á\Å\Ò\à‘Uqx{8¼:`G\é…±W­R<˜Ae[š\Ùl\ÍKRNU·ùr~žL=}ê«³û~VEA\Z¼5òºòÝ•Çº:@ S!ðüG\î$-\Zµ-\ä@\à ýxvœ\ë`´¦E¨S\Æô€!´Áý$œ‡SùÃ¹VjÐ¬n7\Ù\Ì\âžú8tžO\'HòÆ•g¯‰¬»Ab^	A‰q—`®§RY\Ì\Ë\áp\ÈO”\'	…Dº¸ðhk¿Ò¬Ñ™uµ-9T¬zªq|TÍ§\ÚKWø%®ói¦¥f\Í\ÎÞ¹b,ƒóxE\åy1\Ûu\róžG\ßd®\ç\Ç¹‘d¢ ‡\nÕ¦\àt:\\ü‹µ–\ç»\Ë-´„;Ç•lùF\â[\\\çý\ì\ÆôÆ¤ªs\ã\Z\rõ\ÚJp,‘\Ã58Žaó@\ã‰ï„€eÇ“	\áI§‹Û&\æ\Î\í\í\í-Yz¥P	Zu´ðxð‡^¯W\êR|ý¨P\Ô15\ë\Î\ß]™‰pE8©\'WnÖ¹r!\Éõi¤\Ï18SIÿ\Ì%½\Ç#\à\ì(7‚™!z\Óú°\Õ\Â<\Õm·5÷\éLó“¡‘¼sy’ø\áû \Ò!\Ï\n]\Ùñb¼¿\åJñ£CŸ)\\ÙŠzQŸ&QHw¶x¼·³-\Æ\Êf¹f\ê‚jnq\éþî®Ÿ‹1\ï\íþ5¹Až\r©Y7\ßùy¤yV¨ˆBrg\Âõ^IR}$\Øi?deü¤ä…„ž”%¶¹fÚ¡±\Ðaq÷_g\ë)Z\Z—4\Æ7„e\Ã\Ï\Êw\ÆŒÀ—4Â±x¥Orôþ˜£\âØ¶¸2q¦Šôxófn(¥=EWÁB…>\ë4\Óið›8@#Í†Šc\\9\èwžü{$\Ïc…Q\ßyh.G¼9ÀA\ë‡‘\Ñ\ëtª\éôˆyy‹£\Ífj=;øŸ‹‹‹\Ó!\Ú.ö^#m\Íô¨95Cú¸µÔ•‘wX›|yôþ£x2¬\Å\"œh“L³v¤<ˆ®c‰j£Mýqpõ¡Q[ôÁÇ§ó\ry¦\rÏ¨W¾y-ÎŠ\à ‚|yW\ì&\Îc\É\r?\âðl†­z¥cŽ5‘œ\Ùapð+¡?Î’\ç¢ß¿ Bƒþ)LF¤O\'†\ÆD\Ö\Èyn\Ý\Zt\Í<\ê;¬M‘˜Ÿ“\Í}L?ù€.,8‰ƒm\Ìòþ^Àst\\E±\Èg¥]ô“ÉœöÁtq\Ñ²\ïjÿ\ÅacŒ\èr\ï~9´L\ê	Å¤¯/X[\Ê\ã0†\Ãn<½‡^´œ\Ïo\é¹/žÍ‚úô\09E&„­0ie» yuø\âûÙKæº®w•	\âHŸ—³Dñd\ØRH\ÕPœ©âŽœ;ô\Ê\Ç>\Ð^§¡#ø•\Í\çtÀœ–ó\Ý\Ýö»µ\È\Ô\á\Û1¨\ÎW-S&\ëbê°¹aó\çŠ\Ï82nRQ\Ç\à$ö\ÄVù^¶vdxð‰Òž\ç¡\ZF0ð\rD¡R½Ë¼\Ü~µ‹Å“\É\×¿sŸ =_u \ÏXb<G\îò2À™”y$GNa§*8\Ùlo\'8G6l\è‘#—N›Ü§¬—2C\Ì\í\îð\Z©ú\Ü\Ã\ß\Îy\Ès¹=¥:G#‹qn‹Žc®88Ž“\îl\Ño“m\î‰<\Ê\Ó\ÑY‚«ÿV\Ë-df3g¿O\é…]ð\Þ|˜ôšœ”P\Z°F¡\à°RzF\ÈðÈž@qª5NU½\Üd\ë h\Ô).\ìÕ‚É¯»Ì®g¾\Û\í‡g¿\Ä\Ù\è\"ÁF\â‘\Ø\Ôë³<uI„7¯Fºò‡m\à„|‡LZe/\Í\Ã`ñ”¨\ÆñH\Ð‘}\Z\å^6Uou\Ûóm\î\ça¨\î»\Ã(`blÀ%n\ãð\è\É\r\ã=g”xLË³²rWÍºX+À	ŽdÁ	o\r\â4Y\ÙžrmG.œ‹pŸrò\ÐyeÎ»µ¨e\ZpN|q\"ù\âã \ÔÿŽmf|T&Z\Ë	œ™­\å¨:\è•\×jM\ÜœR–½òñd!\Ú{¥ü¥\Ûæš =|\ÅËž\Ñ\Ø%œXüùƒsqž\ëpÔ—Wfô‚&®Žò¨\'‡\Ý\"\ÅÁGc§W®TöÕ\ãcMTÀS¯©P{ø;\'¶h$\ÊYD&63½¾=ÿœ:b-\ÐÌ˜È’—<\\µ“\äd\å\áNSp\ÊFu\â@«¾z½J}F	D\Ãa÷\ì\×8G\êXDf6 uÌŽ^žL~<b,Ë“)\Ïs<c(G\ï\ïy\Âb¬â¾œ\Ü\'•I•J½¼ðdS„‘T¦rggg¯Ö¢ü\ÖF‘&\Zñ™\noÀócÁZ÷T[F\Ûq}\Z\íxdý28\\V@)U­Eµ²LÁ\Ýa\æ¯m=;Œ¸ø\î©¨1”\àˆ^ž£ªKt\'pe\éµÜ‘8ZCEž	\Åù%ŸW=zŠ³Nyšý“ðð\Ùq½wœF«\ä\Új{Ï¦±¬\Øø\Ø‰¯½=÷q®k,\ï\Øš\ÛE\ÕUœ°³€Œ\\Æ“\'\ÉÐ™y\êØ¨”0@ Y†h«{	\Ê\ê\n—Uô\0K\Íÿ‰\Å\ã‡¾CÕºl¬¯MTu\"œ0mY¦`=²\Ú\ÑZY\ÍS ƒ“!yšø;\ï:¬gr½½„üh½£QKq,[\í‰›W§žÿ9û\å\ìuið\Þ\Çò&\\)[cÆ’R\ZVœ	\'YÉ’_=\Ò\0mˆEÆ£‰Þ±¨\Ã9	I‡\"\ÉfÄ·™.Ž\â\Éf?“wL ST\îE-g<\çLø•]Œ5U)­Š­X¡2tž,ýE\Ãz\å–s\ë\Û	Bˆ\Ã77t?#òX|] \"7U“‡ÿü\ê²\ïÖš™¹+½2\nz(¬o}˜ô§A¨Eö7Kb®Õ¬¸ûã¬¤\ÄTª\Ä\í\àr.UM\ÈÿwG«<©¢QQ‡W<a³d²ðòv£v\Ð\ÔÐ™{R&ð\ãp|AôhWª’(¢\\²ÿha`ðqDô\ë\à\á5À\0gskJql\'¢E|ñÉ‘ýØ‡«8\ä\ÔP\ØiÇ\ë+:š\r\rq¤fM¸¿sp˜¼£qS¡²Ð¸N\áaM®!8®\ã\É\âU\']©\Ù6£\Ýö\ä\ÚÃ¯¿\Ò˜\ß,ûUBœ\'\ä²\ru\'DòLƒ…F\ÖB‡‘¬\Ì\ç¸S\ç!\Óxi³^¯Úœù\åV¹ ùÁ\É\Ø\áXô\'6¾\×÷ö6û/.OG\êˆ3‹\ïð­7ø\rq¼ñrî‡–úrôQk>—Y\Z@\à7¯\Æ\ä¸4\åY\r€rg\rK/\Æ@\çöŒ\Þ\ÃâŽ¢ÁW•ˆ\Ã\Ø:™õû/3¥›¢¥®Ì—\ï¸\ãr<D\×ò©8š]«p6·œC;ŒF”\Ë=\â[\æ]W\îáˆ³\×\n\ã¢>ü¿Ž³ÿi\ê\n\ãø\å\îž{Ï¹»¹s\ÚA2£,ÁnP´]\Ûý\Ð\ÉHm@–˜\áDM4L˜,”\Øh\Äøf!1‹÷ž\ï÷9§·\í\Ø\"¶Ÿ>\ï/\ç5‹\â€wDV8\Ç÷*œ©Ú+Â”Bô\ÍEN‹c¯¨±—§¬—£‡\Í\Þl¯ˆ\Ò{\nûÅˆriy	@­§§‰\Æ,	9\ÔL‡ú‚8\Òx;*\ã™\É„‹ a\n•\Î\×Â·4^ˆs÷\ß.7Ÿ¢F\'Gš Áœö1º{¤	ñ#CQÀpqr8Ö€ÿ…\0\0^IDATn¶\ËqûóÚ‹c*Kmg±q\ÒA‹%¯)ò\Úò\Öt\Æ#\Íúµòðd¹\Õ\í’¶›Y\n8\Íf\ï\ím«\å›sT¤“$\Äa’Š\ÊHÖª\×Ë³—¦Ã²<”n‹DQl\Ó\ÈùD‘†²‡*\ÝËˆÐ‡\'\Íg¤¸`2K8R¥\Âi>Ø«\ã5‡£FøŒõú©ß¿¹4«,\ÅùY¤—¤õd©\r\âQ›T\é(FNµ£rÀ\\h38+¤3X7ò’ð_EMÄ¡L\Â(_\'\Õ1÷ÇŸþg8\Ð3\îørif}C¡\Ï\Â]¦s\Z¥\Å=}F\Ý\rJ\âá¥»4\í>\ïH•—d‹2Nx:\ÌSpp‡º\ÐýG:\Þv \âˆ|2\àh\Ïr0\Òz?Š\é\àOfJ1gOA-ñ¨¢*«½›#\"GbŠ\Æ\ÔK,pI‘PWx•V\äEšY\åi4‚gq?\"ªM	Ÿ\ÆiýE(	IüV’ã¨¹´\ì\r˜( ¡›oß²\Ôof‰\Ã8\èq­\âFlgª\rõ\Új¨tŒŸ¯;¥™µUû†LqRÌº1\Ì\\\è{iŒB\á<ø½„v/š©\×rŸE}3‘G+²D¤sÕ\ãxZ/h‹\â‰t;b\Ö\Ó\ÌU\Í1=,\ÓiöÀ\ÉOU8cZ\æn¤\Ù\Úû1\Ñÿ`„»z\ÐG\ë§8l§\Ê\èj\ÊVC¼£8žvr†±;R¬¼úþ	\ÄÁ¼ \Î\Õdj\r_·\Z@3Œ\Ëkµ€£\â(ø˜,¬W”U…_ò8>.G\ØE°MGLF{c¿°\ÄI.‹‡Œ7\äY\âg“±÷\èV	MA¹Vž^w»{9\Õá°¦w\Äyùfb£lg!\à8K§\ë¡0Œ›À½d¨wŸ-7\ÕX‚Ñ´pµ_\Ï\Å\Ò\"ø‚¸¹X²â¸‚EM\ÂÁNÁ§\Z,qh:\×\"]ó\á…X,„\Å\é«I\ÇA:ƒ¶¬¤õf¥.¹H\Ó{þ\×uG~]hB\ä3j\Ëx\'ƒ(\Ã¨eŠø\ì—Y˜Žòp œ\Øp?Mu)†\Òpv*2DVž6=‡O”Nokw\r1ñ\Ò\ÅB“L\â0A@‰¢+Q¨<Ñ«¯/ÀY\\h,À\Ñs®cE±È•œ—\Z \ÇœD¬\'+ÿô¢™€imnŸ®1¿I€*˜1Ý®¨k\é¤\Ï\é\ÞY¨\ÊWW¾½@Y^:,ªÑ¦£’\Ð]M\Ïy£§Ž…\ÛÔ·@\×Æ‡^½\Î\Î(Î´\Äv¥†\Þ\n‡\ã#\èŠ\ÂI±Žñ]…\ãÃ ð4\È10,\Çnº†„ù(\æ\îøk2Dwx2–‹—Mkó\É\é1¶pœ¿\àfZ•œ’ƒ>†\É!‡Ô¿\çAF:z•ƒtXP	Â\Ó\Ü\ëxï¿Ÿ¤GZCXRý-1‚ž\ä³×¹ÿzy_\ÊRé®‹R_\natE‡.ÃŠ°úÏ‡}Ÿ_ig\Åã ”‰Ñ‰„\á-£W7\ZŸQ,›D~3³ñV/\è\È\Ù\Ü\Û\åZV»\Ï\ÈòF\íwŒƒ>‘]^´9¾M¤PYQe¡\Ì\Ç-\î\"\ÌL+ž°‡£f\Ö\îIm4\ê›|\å |ôü\×ngÿh-#N–˜-\'\Ñ@loü†3HYcœÙ”\å\ì\ès\ä&	tJ\\O¸x\èr’j\Î\Ï\ß&\ë’ôX¦\Ê\Õ~²{s†ˆ±Cª\ÒñºÒ·Oqj9\îòSqvE7ZÕ†MqT:¼YY\ß\Ô\"\Òf‚\ë›M\ã˜xxþùóY¯·\Ù`u{ü\ìnüvt€q8ž\ÌXV\ìA=ÇŽ*	òÅ”\ç¯^ ­Fp0À\ËE»\ÈXˆõ\\k\rté®¨¿>wlLm»\Û\r@½\î\êö\î°Ì¼\é0\ÛZš2–\Âx`†‚“1ZHP[CS<}\Â	\âY™À|$þ°ÿcJ…ƒjY|¢<\è\'\Ò+=\ÚÔ‹‡_7vŽ\ØA\ÌÁ0¤b’@ˆ¦“õ\n‡r6´\Ë!\Ýñ\'žÿš\Z4|\Üae3TiÙ¸‹Mù 8°Ó„ªsf\ë¢Uòlvžï¯—–Ã…9‰V‚\ã|4|v)\ÄAA\ÑQœÍ—\éÚ¥³-^	\å\Û \ÅI\"jZ¦ˆý•‹\0yL³;8›;{G}\ë7”@ª\Ó\àð·¾.#v@UYWÿ\á\æ\Ì\É85&p8¸Ë“ÂŸÃ\'·Šq\ÄotEj\ÖWÛ«›Àiw:û\Ã\Ø\ãDHz©)Œ?\äX8‡°\Z!=\àûƒ¾\âYƒùÉ¡ÁŠ\ï$TY\r\\«(¸H\ÂcSñ\Ö\ãD‡õ½=h\ÓvV;ƒ\íÓ¾õ›+8B“\àiy\ä&‹¨\Ë7\â‰((Iò\ï\ß\\þò‹\ÉYnh‹=N÷fˆU@¥q¡8\æj\ß\ãp‰\áön\í¹\Òlt[;\Ã\\‡Bb:…DÝ˜Ç¶x4	5\Îø¤‹Õˆ&²}ùÁ\ï\Æ]útLr¾9VÎ·Œ(ô\Ð\Åwk¾\éòÚ¢·!l—p­Õ\Ð\ì\Ý•&EÎ³ša\âðÝš\\8[\ÂÀŠ!xñ\êï—¦pª¸cr\î\äü\È^MgŒ3m<\Ì\Ò\Î­¶\Ûw„\æ\É£\à1l\Ë\ßI¬=¤6\0A:N‰3ðø\ã\Ío.\ÏHQ\'\àü±m”$…\×\0\0\0\0IEND®B`‚','Male','22000','Harison Road','14','700014','Sales Associate','Active','10/8/2022','Sales Associate');
/*!40000 ALTER TABLE `staff_information` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  `division` varchar(45) NOT NULL,
  `emp_id` varchar(70) NOT NULL,
  PRIMARY KEY (`id`,`username`,`password`,`division`,`emp_id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'Admin','Password','Admin','1'),(2,'Jhon','123456','Admin','2'),(3,'Happy','10102000','Sales','3');
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

-- Dump completed on 2024-04-30 17:48:13
