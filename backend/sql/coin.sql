-- MySQL dump 10.13  Distrib 5.7.19, for macos10.12 (x86_64)
--
-- Host: 127.0.0.1    Database: Coin
-- ------------------------------------------------------
-- Server version	5.7.19-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT = @@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS = @@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION = @@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE = @@TIME_ZONE */;
/*!40103 SET TIME_ZONE = '+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS = @@UNIQUE_CHECKS, UNIQUE_CHECKS = 0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS = @@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS = 0 */;
/*!40101 SET @OLD_SQL_MODE = @@SQL_MODE, SQL_MODE = 'NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES = @@SQL_NOTES, SQL_NOTES = 0 */;

drop database IF EXISTS `Coin`;
create DATABASE Coin;
USE Coin;

--
-- Table structure for table `File`
--

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;
drop table IF EXISTS `File`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
create TABLE `File`
(
    `id`       int(11) NOT NULL AUTO_INCREMENT,
    `fileName` varchar(255) DEFAULT NULL,
    `fileType` varchar(255) DEFAULT NULL,
    `zoom`     double       DEFAULT NULL,
    `pointX`   double       DEFAULT NULL,
    `pointY`   double       DEFAULT NULL,
    `zoom2`    double       DEFAULT NULL,
    `pointX2`  double       DEFAULT NULL,
    `pointY2`  double       DEFAULT NULL,
    PRIMARY KEY (`id`)
) ENGINE = InnoDB
  AUTO_INCREMENT = 1
  DEFAULT CHARSET = utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `File`
--

begin;
/*!40000 ALTER TABLE `File` ENABLE KEYS */;
INSERT INTO File
VALUES (1, 'sample1', 'json', 1, 0, 0, 1, 0, 0);
INSERT INTO File
VALUES (2, 'sample2', 'json', 1, 0, 0, 1, 0, 0);
INSERT INTO File
VALUES (3, 'sample3', 'json', 1, 0, 0, 1, 0, 0);
/*!40000 ALTER TABLE `File` ENABLE KEYS */;
COMMIT;

--
-- Table structure for table `Account`
--

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;
DROP TABLE IF EXISTS `Account`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
create TABLE `Account`
(
    `id`          int(11)      NOT NULL AUTO_INCREMENT,
    `userName`    varchar(255) NOT NULL,
    `password`    varchar(255) NOT NULL,
    `email`       varchar(255) NOT NULL,
    `avatar`      varchar(255) DEFAULT NULL,
    `accountType` varchar(255) NOT NULL,
    PRIMARY KEY (`id`)
) ENGINE = InnoDB
  AUTO_INCREMENT = 1
  DEFAULT CHARSET = utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Account`
--

BEGIN;
/*!40000 ALTER TABLE `Account` ENABLE KEYS */;
INSERT INTO Account
VALUES (1, 'admin', '123456', '123@qq.com', '', 'admin');
INSERT INTO Account
VALUES (2, 'user1', '123456', '181250001@smail.nju.edu.cn', '', 'user');
INSERT INTO Account
VALUES (3, 'user2', '123456', '181250002@smail.nju.edu.cn', '', 'user');
INSERT INTO Account
VALUES (4, 'user3', '123456', '181250003@smail.nju.edu.cn', '', 'user');
INSERT INTO Account
VALUES (5, 'user4', '123456', '181250004@smail.nju.edu.cn', '', 'user');
INSERT INTO Account
VALUES (6, 'user5', '123456', '181250005@smail.nju.edu.cn', '', 'user');
INSERT INTO Account
VALUES (7, 'user6', '123456', '181250006@smail.nju.edu.cn', '', 'user');
INSERT INTO Account
VALUES (8, 'user7', '123456', '181250007@smail.nju.edu.cn', '', 'user');
INSERT INTO Account
VALUES (9, 'user8', '123456', '181250008@smail.nju.edu.cn', '', 'user');
INSERT INTO Account
VALUES (10, 'user9', '123456', '181250009@smail.nju.edu.cn', '', 'user');
INSERT INTO Account
VALUES (11, 'user10', '123456', '181250010@smail.nju.edu.cn', '', 'user');
INSERT INTO Account
VALUES (12, 'user11', '123456', '181250011@smail.nju.edu.cn', '', 'user');
INSERT INTO Account
VALUES (13, 'user12', '123456', '181250012@smail.nju.edu.cn', '', 'user');
INSERT INTO Account
VALUES (14, 'user13', '123456', '181250013@smail.nju.edu.cn', '', 'user');
INSERT INTO Account
VALUES (15, 'user14', '123456', '181250014@smail.nju.edu.cn', '', 'user');
INSERT INTO Account
VALUES (16, 'user15', '123456', '181250015@smail.nju.edu.cn', '', 'user');
INSERT INTO Account
VALUES (17, 'user16', '123456', '181250016@smail.nju.edu.cn', '', 'user');
INSERT INTO Account
VALUES (18, 'user17', '123456', '181250017@smail.nju.edu.cn', '', 'user');
INSERT INTO Account
VALUES (19, 'user18', '123456', '181250018@smail.nju.edu.cn', '', 'user');
INSERT INTO Account
VALUES (20, 'user19', '123456', '181250019@smail.nju.edu.cn', '', 'user');
INSERT INTO Account
VALUES (21, 'user20', '123456', '181250020@smail.nju.edu.cn', '', 'user');
INSERT INTO Account
VALUES (22, 'user21', '123456', '181250021@smail.nju.edu.cn', '', 'user');
INSERT INTO Account
VALUES (23, 'user22', '123456', '181250022@smail.nju.edu.cn', '', 'user');
INSERT INTO Account
VALUES (24, 'user23', '123456', '181250023@smail.nju.edu.cn', '', 'user');
INSERT INTO Account
VALUES (25, 'user24', '123456', '181250024@smail.nju.edu.cn', '', 'user');
INSERT INTO Account
VALUES (26, 'user25', '123456', '181250025@smail.nju.edu.cn', '', 'user');
INSERT INTO Account
VALUES (27, 'user26', '123456', '181250026@smail.nju.edu.cn', '', 'user');
INSERT INTO Account
VALUES (28, 'user27', '123456', '181250027@smail.nju.edu.cn', '', 'user');
INSERT INTO Account
VALUES (29, 'user28', '123456', '181250028@smail.nju.edu.cn', '', 'user');
INSERT INTO Account
VALUES (30, 'user29', '123456', '181250029@smail.nju.edu.cn', '', 'user');
INSERT INTO Account
VALUES (31, 'user30', '123456', '181250030@smail.nju.edu.cn', '', 'user');
INSERT INTO Account
VALUES (32, 'user31', '123456', '181250031@smail.nju.edu.cn', '', 'user');
INSERT INTO Account
VALUES (33, 'user32', '123456', '181250032@smail.nju.edu.cn', '', 'user');
INSERT INTO Account
VALUES (34, 'user33', '123456', '181250033@smail.nju.edu.cn', '', 'user');
INSERT INTO Account
VALUES (35, 'user34', '123456', '181250034@smail.nju.edu.cn', '', 'user');
INSERT INTO Account
VALUES (36, 'user35', '123456', '181250035@smail.nju.edu.cn', '', 'user');
INSERT INTO Account
VALUES (37, 'user36', '123456', '181250036@smail.nju.edu.cn', '', 'user');
INSERT INTO Account
VALUES (38, 'user37', '123456', '181250037@smail.nju.edu.cn', '', 'user');
INSERT INTO Account
VALUES (39, 'user38', '123456', '181250038@smail.nju.edu.cn', '', 'user');
INSERT INTO Account
VALUES (40, 'user39', '123456', '181250039@smail.nju.edu.cn', '', 'user');
INSERT INTO Account
VALUES (41, 'user40', '123456', '181250040@smail.nju.edu.cn', '', 'user');
INSERT INTO Account
VALUES (42, 'user41', '123456', '181250041@smail.nju.edu.cn', '', 'user');
INSERT INTO Account
VALUES (43, 'user42', '123456', '181250042@smail.nju.edu.cn', '', 'user');
INSERT INTO Account
VALUES (44, 'user43', '123456', '181250043@smail.nju.edu.cn', '', 'user');
INSERT INTO Account
VALUES (45, 'user44', '123456', '181250044@smail.nju.edu.cn', '', 'user');
INSERT INTO Account
VALUES (46, 'user45', '123456', '181250045@smail.nju.edu.cn', '', 'user');
INSERT INTO Account
VALUES (47, 'user46', '123456', '181250046@smail.nju.edu.cn', '', 'user');
INSERT INTO Account
VALUES (48, 'user47', '123456', '181250047@smail.nju.edu.cn', '', 'user');
INSERT INTO Account
VALUES (49, 'user48', '123456', '181250048@smail.nju.edu.cn', '', 'user');
INSERT INTO Account
VALUES (50, 'user49', '123456', '181250049@smail.nju.edu.cn', '', 'user');
/*!40000 ALTER TABLE `Account` ENABLE KEYS */;
COMMIT;

--
-- Table structure for table `Commodity`
--

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;
DROP TABLE IF EXISTS `Commodity`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
create TABLE `Commodity`
(
    `id`          int(11)      NOT NULL AUTO_INCREMENT,
    `brand`       varchar(255) DEFAULT NULL,
    `name`        varchar(255) NOT NULL,
    `commodityType`        varchar(255) DEFAULT NULL,
    `color`       varchar(255) DEFAULT NULL,
    `colorScheme` varchar(255) DEFAULT NULL,
    `shade`       varchar(255) DEFAULT NULL,
    `originPlace` varchar(255) DEFAULT NULL,
    `effect`      varchar(255) DEFAULT NULL,
    `price`       double       DEFAULT NULL,
    `collectNum`  int(11)      NOT NULL,
    `image`       varchar(255) DEFAULT NULL,
    `sqlId`       varchar(255) NOT NULL,
    PRIMARY KEY (`id`)
) ENGINE = InnoDB
  AUTO_INCREMENT = 1
  DEFAULT CHARSET = utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Commodity`
--

BEGIN;
/*!40000 ALTER TABLE `Commodity` ENABLE KEYS */;
INSERT INTO Commodity
VALUES (1, 'colorkey', 'tokidoki唇釉', '唇釉', '#853222', '草莓', 'B628 戏梦伊甸园', '中国', '丝绒', 69.00, 2, '//img10.360buyimg.com/n1/jfs/t1/125357/5/11893/96919/5f55b3a5E7061ed96/0abac3c0faecaf4d.jpg', 'colorkeytokidoki唇釉B628');
INSERT INTO Commodity
VALUES (2, 'colorkey', 'tokidoki唇釉', '唇釉', '#73160E', '铁锈', 'R688 梦境奇遇', '中国', '丝绒', 69.00, 1, '//img12.360buyimg.com/n1/jfs/t1/144471/34/7746/88845/5f55b3ceEe4f15dde/b9bf5d2773fdc247.jpg', 'colorkeytokidoki唇釉R688');
INSERT INTO Commodity
VALUES (3, 'colorkey', 'tokidoki唇釉', '唇釉', '#80231A', '铁锈', 'B630 午后狂想', '中国', '丝绒', 69.00, 3, '//img10.360buyimg.com/n1/jfs/t1/127821/37/11925/98233/5f55b3b5Ec7006945/a415fb8ebfde30b1.jpg', 'colorkeytokidoki唇釉B630');
INSERT INTO Commodity
VALUES (4, 'colorkey', 'tokidoki唇釉', '唇釉', '#981627', '正红', 'R626 花火狂欢', '中国', '丝绒', 69.00, 4, '//img11.360buyimg.com/n1/jfs/t1/115188/16/17247/96453/5f55b38cE687cc8bf/457e5447fe5271d7.jpg', 'colorkeytokidoki唇釉R626');
INSERT INTO Commodity
VALUES (5, 'colorkey', '丝绒唇釉', '唇釉', '#90071C', '血浆', 'R602 人间樱桃', '中国', '丝绒', 69.00, 5, '//img11.360buyimg.com/n1/jfs/t1/125519/38/2003/300797/5ec1f34cE5726285e/ca9857cfed9d3791.jpg', 'colorkey丝绒唇釉R602');
INSERT INTO Commodity
VALUES (6, 'colorkey', '丝绒唇釉', '唇釉', '#B54040', '番茄', '613D 细闪红樱', '中国', '丝绒', 69.00, 1, '//img13.360buyimg.com/n1/jfs/t1/123923/29/2012/286506/5ec1f5a6E603154f4/a6a23cfc5edf2c36.jpg', 'colorkey丝绒唇釉613D');
INSERT INTO Commodity
VALUES (7, 'colorkey', '丝绒唇釉', '唇釉', '#AB3D52', '豆沙', 'R617 桑葚梅子', '中国', '丝绒', 69.00, 3, '//img11.360buyimg.com/n1/jfs/t1/124888/35/2045/288660/5ec1f62cEaa83628a/9441a16e9690103c.jpg', 'colorkey丝绒唇釉R617');
INSERT INTO Commodity
VALUES (8, 'colorkey', '丝绒唇釉', '唇釉', '#923844', '豆沙', 'P615 樱花豆沙', '中国', '丝绒', 69.00, 1, '//img13.360buyimg.com/n1/jfs/t1/119002/17/7283/272900/5ec1f60cE4a4caad4/21c25bf05c5bbbeb.jpg', 'colorkey丝绒唇釉P615');
INSERT INTO Commodity
VALUES (9, 'colorkey', '丝绒唇釉', '唇釉', '#A23D35', '复古', 'B620 乌龙奶咖', '中国', '丝绒', 69.00, 0, '//img11.360buyimg.com/n1/jfs/t1/128664/9/7736/72226/5f193803E002cc7ca/2015aabef5782249.jpg', 'colorkey丝绒唇釉B620');
INSERT INTO Commodity
VALUES (10, 'colorkey', '丝绒唇釉', '唇釉', '#781A28', '铁锈', 'R618 浓雾樱桃', '中国', '丝绒', 69.00, 0, '//img10.360buyimg.com/n1/jfs/t1/119221/19/13100/77230/5f1937d2E66c9bbe8/02943a41272ed877.jpg', 'colorkey丝绒唇釉R618');
INSERT INTO Commodity
VALUES (11, 'colorkey', '丝绒唇釉', '唇釉', '#913736', '红棕', 'B619 午夜南瓜', '中国', '丝绒', 69.00, 0, '//img11.360buyimg.com/n1/jfs/t1/112229/6/12241/141883/5f0bd89fE110d868a/65573b19f223fb8e.jpg', 'colorkey丝绒唇釉B619');
INSERT INTO Commodity
VALUES (12, 'colorkey', '丝绒唇釉', '唇釉', '#9D252E', '复古', 'R625 红桃蜜茶', '中国', '丝绒', 69.00, 2, '//img13.360buyimg.com/n1/jfs/t1/147304/17/2830/111030/5f0d471dE4a27f919/99bf6963f2e3d590.jpg', 'colorkey丝绒唇釉R625');
INSERT INTO Commodity
VALUES (13, 'colorkey', '丝绒唇釉', '唇釉', '#A73A35', '复古', 'B605 肉桂蜜桃', '中国', '丝绒', 69.00, 0, '//img11.360buyimg.com/n1/jfs/t1/117507/26/7216/291126/5ec1f409E72f5107a/20b16a75fa2fa562.jpg', 'colorkey丝绒唇釉B605');
INSERT INTO Commodity
VALUES (14, 'colorkey', '丝绒唇釉', '唇釉', '#9C4454', '豆沙', 'B606 烟粉豆沙', '中国', '丝绒', 69.00, 0, '//img13.360buyimg.com/n1/jfs/t1/126603/39/2018/273411/5ec1f453Ec66779bd/fcef91d06ed8113a.jpg', 'colorkey丝绒唇釉B606');
INSERT INTO Commodity
VALUES (15, 'colorkey', '丝绒唇釉', '唇釉', '#7B1D2D', '铁锈', 'R601 酒渍杨梅', '中国', '丝绒', 69.00, 2, '//img14.360buyimg.com/n1/jfs/t1/116748/6/7235/292301/5ec1f232E2cb7c3e1/50ee080591cb7466.jpg', 'colorkey丝绒唇釉R601');
INSERT INTO Commodity
VALUES (16, 'colorkey', '丝绒唇釉', '唇釉', '#842C2A', '草莓', 'R608 焦糖红棕', '中国', '丝绒', 69.00, 2, '//img12.360buyimg.com/n1/jfs/t1/108832/20/18356/295571/5ec1f4b6Ebf94a0dc/52d1e7d9020cf1ad.jpg', 'colorkey丝绒唇釉R608');
INSERT INTO Commodity
VALUES (17, 'colorkey', '丝绒唇釉', '唇釉', '#A61A1D', '正红', 'R609 冰糖红柿', '中国', '丝绒', 69.00, 0, '//img13.360buyimg.com/n1/jfs/t1/119582/33/5847/300270/5ec1f4f2E6dfb0847/6bf79a9cd9137414.jpg', 'colorkey丝绒唇釉R609');
INSERT INTO Commodity
VALUES (18, 'colorkey', '丝绒唇釉', '唇釉', '#9C2318', '正红', 'O611 枫糖姜橘', '中国', '丝绒', 69.00, 2, '//img14.360buyimg.com/n1/jfs/t1/114430/1/7104/302581/5ec1f547E0e35451b/1addb9614cd5f4a2.jpg', 'colorkey丝绒唇釉O611');
INSERT INTO Commodity
VALUES (19, 'colorkey', '丝绒唇釉', '唇釉', '#A53239', '复古', 'R614 伯爵红茶', '中国', '丝绒', 69.00, 0, '//img11.360buyimg.com/n1/jfs/t1/126393/2/1975/296126/5ec1f5c4E70ade9d0/5aea5998310e7db4.jpg', 'colorkey丝绒唇釉R614');
INSERT INTO Commodity
VALUES (20, 'colorkey', '丝绒唇釉', '唇釉', '#8D0E21', '草莓', 'R666 珂拉琪红', '中国', '丝绒', 69.00, 3, '//img11.360buyimg.com/n1/jfs/t1/120306/40/1975/296606/5ec1f673E8c034edc/bfd70fb50bee8156.jpg', 'colorkey丝绒唇釉R666');
INSERT INTO Commodity
VALUES (21, 'colorkey', '丝绒唇釉', '唇釉', '#911223', '草莓', '666D 星碎山楂', '中国', '丝绒', 69.00, 1, '//img10.360buyimg.com/n1/jfs/t1/140321/33/3666/73801/5f193826Ee0d6f6c0/d4c91618bc8de0ca.jpg', 'colorkey丝绒唇釉666D');
INSERT INTO Commodity
VALUES (22, 'colorkey', '丝绒唇釉', '唇釉', '#862931', '草莓', 'R621 漫雾红莓', '中国', '丝绒', 69.00, 4, '//img13.360buyimg.com/n1/jfs/t1/119693/10/11720/72321/5f193867Ed39fe846/c418e064950c9058.jpg', 'colorkey丝绒唇釉R621');
INSERT INTO Commodity
VALUES (23, 'colorkey', '丝绒唇釉', '唇釉', '#892027', '草莓', 'R622 烟熏玫瑰', '中国', '丝绒', 69.00, 1, '//img10.360buyimg.com/n1/jfs/t1/119378/9/11610/73406/5f1938e0E22e5a091/4f4b4865399e1b74.jpg', 'colorkey丝绒唇釉R622');
INSERT INTO Commodity
VALUES (24, 'colorkey', '丝绒唇釉', '唇釉', '#A62927', '复古', '611D 糖光橘子', '中国', '丝绒', 69.00, 2, '//img12.360buyimg.com/n1/jfs/t1/148024/8/3550/71723/5f193904Ed6358353/a5f2559cea19b6cf.jpg', 'colorkey丝绒唇釉611D');
INSERT INTO Commodity
VALUES (25, 'colorkey', '丝绒唇釉', '唇釉', '#790C12', '血浆', 'MQ277 微醺酒红', '中国', '丝绒', 69.00, 2, '//img13.360buyimg.com/n1/jfs/t1/182759/1/5308/116307/60a7557aEf8ee9ed6/0ae725632b4b0ffd.jpg', 'colorkey丝绒唇釉MQ277');
INSERT INTO Commodity
VALUES (26, 'colorkey', '丝绒唇釉', '唇釉', '#86251C', '草莓', 'MQ297 复古棕红', '中国', '丝绒', 69.00, 2, '//img12.360buyimg.com/n1/jfs/t1/63678/6/16877/116307/60a75546Ede92e9e4/2daf8dd4e9c9b531.jpg', 'colorkey丝绒唇釉MQ297');
INSERT INTO Commodity
VALUES (27, 'colorkey', '丝绒唇釉', '唇釉', '#6B0F12', '血浆', 'MQ287 蔓越花茶', '中国', '丝绒', 69.00, 1, '//img12.360buyimg.com/n1/jfs/t1/181378/11/5225/116307/60a755b4Ebe299e10/a46c3b6509a38d51.jpg', 'colorkey丝绒唇釉MQ287');
INSERT INTO Commodity
VALUES (28, 'colorkey', '丝绒唇釉', '唇釉', '#893028', '草莓', 'MQ267 摩卡茶棕', '中国', '丝绒', 69.00, 2, '//img11.360buyimg.com/n1/jfs/t1/196048/22/4200/116307/60a75598E3ebc9962/1b558c28c6cc3410.jpg', 'colorkey丝绒唇釉MQ267');
INSERT INTO Commodity
VALUES (29, 'colorkey', '丝绒唇釉', '唇釉', '#87141B', '铁锈', 'R888 招财红梨', '中国', '丝绒', 69.00, 4, '//img13.360buyimg.com/n1/jfs/t1/140456/20/17104/144234/6059b5caE7abba310/b3413275c138d515.jpg', 'colorkey丝绒唇釉R888');
INSERT INTO Commodity
VALUES (30, 'colorkey', '丝绒唇釉新年版', '唇釉', '#7B1216', '铁锈', 'R663 大吉大栗', '中国', '丝绒', 69.00, 1, '//img11.360buyimg.com/n1/jfs/t1/183143/15/5190/112258/60a75c17Eae1160a8/807cc75a5a476111.jpg', 'colorkey丝绒唇釉新年版R663');
INSERT INTO Commodity
VALUES (31, 'colorkey', '丝绒唇釉新年版', '唇釉', '#8A100D', '血浆', 'R666 珂拉琪红新年版', '中国', '丝绒', 69.00, 3, '//img11.360buyimg.com/n1/jfs/t1/174370/5/10731/112258/60a75be6Ee2817c55/06356f56d2e5f048.jpg', 'colorkey丝绒唇釉新年版R666');
INSERT INTO Commodity
VALUES (32, 'colorkey', '丝绒唇釉新年版', '唇釉', '#9D2227', '正红', 'R662 红运赤茶', '中国', '丝绒', 69.00, 3, '//img14.360buyimg.com/n1/jfs/t1/185857/12/5171/112258/60a75c34Eda6416a0/cb04ba0ab88d4bfe.jpg', 'colorkey丝绒唇釉新年版R662');
INSERT INTO Commodity
VALUES (33, 'colorkey', '哆啦A梦口红', '口红', '#A02831', '复古', 'V03 蜜桃乌龙', '中国', '哑光/雾面', 79.00, 0, '//img11.360buyimg.com/n1/jfs/t1/147533/1/19370/80223/60a7962dEd8a59741/35581e43326b25b8.jpg', 'colorkey哆啦A梦口红V03');
INSERT INTO Commodity
VALUES (34, 'colorkey', '哆啦A梦口红', '口红', '#800730', '梅子', 'V01 酒酿野莓', '中国', '哑光/雾面', 79.00, 1, '//img12.360buyimg.com/n1/jfs/t1/185161/20/5302/80223/60a795e4E1aa3a981/c2cf7a3e272e5a63.jpg', 'colorkey哆啦A梦口红V01');
INSERT INTO Commodity
VALUES (35, 'colorkey', '哆啦A梦口红', '口红', '#B40F13', '砖红', 'V02 山楂甜茶', '中国', '哑光/雾面', 79.00, 1, '//img10.360buyimg.com/n1/jfs/t1/172372/16/10699/80223/60a7960dE92b3ae65/8ccaf5fdaeb77b02.jpg', 'colorkey哆啦A梦口红V02');
INSERT INTO Commodity
VALUES (36, 'colorkey', '哆啦A梦口红', '口红', '#810908', '血浆', 'V06 焦糖红栗', '中国', '哑光/雾面', 79.00, 0, '//img10.360buyimg.com/n1/jfs/t1/173137/24/10871/80223/60a79671E72651747/024a8debac89ec9c.jpg', 'colorkey哆啦A梦口红V06');
INSERT INTO Commodity
VALUES (37, 'colorkey', '哆啦A梦口红', '口红', '#9E0D0A', '砖红', 'V04 暖棕红茶', '中国', '哑光/雾面', 79.00, 2, '//img12.360buyimg.com/n1/jfs/t1/172605/26/10549/80223/60a79653Ec9bdd566/63aa91978498f0c7.jpg', 'colorkey哆啦A梦口红V04');
INSERT INTO Commodity
VALUES (38, 'colorkey', '哆啦A梦口红', '口红', '#8F0D0D', '血浆', 'V07 山茶红棕', '中国', '哑光/雾面', 79.00, 1, '//img14.360buyimg.com/n1/jfs/t1/180038/6/5357/80223/60a796fbEa7d066d3/ab55cad7ccea253a.jpg', 'colorkey哆啦A梦口红V07');
INSERT INTO Commodity
VALUES (39, 'colorkey', '哆啦A梦唇釉', '唇釉', '#A32B2D', '复古', 'O677 枫叶冰茶', '中国', '丝绒', 69.00, 0, '//img11.360buyimg.com/n1/jfs/t1/189108/36/4364/94748/60a751b6Ed35fdb31/184e809b0ce46a2e.jpg', 'colorkey哆啦A梦唇釉O677');
INSERT INTO Commodity
VALUES (40, 'colorkey', '哆啦A梦唇釉', '唇釉', '#973333', '复古', 'R608 焦糖红棕', '中国', '丝绒', 69.00, 1, '//img14.360buyimg.com/n1/jfs/t1/193509/26/4184/92846/60a74fc1E17027425/05d9b80e3f6ba84e.jpg', 'colorkey哆啦A梦唇釉R608');
INSERT INTO Commodity
VALUES (41, 'colorkey', '哆啦A梦唇釉', '唇釉', '#941C28', '草莓', 'R671 法甜红梨', '中国', '丝绒', 69.00, 3, '//img13.360buyimg.com/n1/jfs/t1/178436/1/5291/94748/60a750efE7cded3dc/f3b8122eea4252d9.jpg', 'colorkey哆啦A梦唇釉R671');
INSERT INTO Commodity
VALUES (42, 'colorkey', '哆啦A梦唇釉', '唇釉', '#B5211F', '番茄', 'B722 茶透山楂', '中国', '丝绒', 69.00, 2, '//img10.360buyimg.com/n1/jfs/t1/189927/4/4351/92846/60a7507dE8566373b/8ed50996c1debe52.jpg', 'colorkey哆啦A梦唇釉B722');
INSERT INTO Commodity
VALUES (43, 'colorkey', '哆啦A梦唇釉', '唇釉', '#A12C32', '复古', 'R688 枫叶红梨', '中国', '丝绒', 69.00, 0, '//img14.360buyimg.com/n1/jfs/t1/176655/32/10764/94748/60a75253Efc83a000/3489c11ab21a9cce.jpg', 'colorkey哆啦A梦唇釉R688');
INSERT INTO Commodity
VALUES (44, 'colorkey', '哆啦A梦唇釉', '唇釉', '#8D383D', '红棕', 'R633 碎钻野莓', '中国', '丝绒', 69.00, 1, '//img11.360buyimg.com/n1/jfs/t1/180209/6/5368/94748/60a75202Ee6ee5ba2/310fa6b4f6e81f03.jpg', 'colorkey哆啦A梦唇釉R633');
INSERT INTO Commodity
VALUES (45, 'colorkey', '哆啦A梦唇釉', '唇釉', '#8F301E', '草莓', 'B655 杏仁奶咖', '中国', '丝绒', 69.00, 2, '//img11.360buyimg.com/n1/jfs/t1/182773/14/5209/94748/60a75189Ef437d715/6ce9955ebcc468d5.jpg', 'colorkey哆啦A梦唇釉B655');
INSERT INTO Commodity
VALUES (46, 'colorkey', '哆啦A梦唇釉', '唇釉', '#972B21', '正红', 'B605 肉桂蜜桃', '中国', '丝绒', 69.00, 0, '//img12.360buyimg.com/n1/jfs/t1/182916/12/5276/94748/60a75134E53adf8a2/eacb04e221e9a1b9.jpg', 'colorkey哆啦A梦唇釉B605');
INSERT INTO Commodity
VALUES (47, 'colorkey', '哆啦A梦唇釉', '唇釉', '#8F2E25', '草莓', 'B630 茶透琥珀', '中国', '丝绒', 69.00, 4, '//img14.360buyimg.com/n1/jfs/t1/180308/29/5179/94748/60a75161Ecfa7ac9a/56c8354a2c83849a.jpg', 'colorkey哆啦A梦唇釉B630');
INSERT INTO Commodity
VALUES (48, 'colorkey', '哆啦A梦唇釉', '唇釉', '#8F2F30', '正红', 'R644 赤茶红棕', '中国', '丝绒', 69.00, 0, '//img11.360buyimg.com/n1/jfs/t1/187488/1/4308/94748/60a75233E49c08395/d33097ae98157856.jpg', 'colorkey哆啦A梦唇釉R644');
INSERT INTO Commodity
VALUES (49, 'colorkey', '哆啦A梦唇釉', '唇釉', '#85250D', '铁锈', 'B674 赤陶红茶', '中国', '丝绒', 69.00, 0, '//img10.360buyimg.com/n1/jfs/t1/186055/16/5213/92846/60a7500bE7eebf0ea/234e455ccab64a58.jpg', 'colorkey哆啦A梦唇釉B674');
INSERT INTO Commodity
VALUES (50, 'colorkey', '哆啦A梦唇釉', '唇釉', '#811B28', '铁锈', 'R672 蜜桃春茶', '中国', '丝绒', 69.00, 0, '//img10.360buyimg.com/n1/jfs/t1/172727/39/10952/94748/60a7510dE632fd7d6/daa80fc6af8d4d25.jpg', 'colorkey哆啦A梦唇釉R672');
INSERT INTO Commodity
VALUES (51, 'colorkey', '哆啦A梦唇釉', '唇釉', '#B72C41', '番茄', 'R670 红荔菓子', '中国', '丝绒', 69.00, 1, '//img13.360buyimg.com/n1/jfs/t1/179507/20/5263/94748/60a750c4E23f50e27/b426ea2ce9f6b224.jpg', 'colorkey哆啦A梦唇釉R670');
INSERT INTO Commodity
VALUES (52, 'colorkey', '哆啦A梦唇釉', '唇釉', '#80221A', '铁锈', 'B675 甜榛伯爵', '中国', '丝绒', 69.00, 0, '//img12.360buyimg.com/n1/jfs/t1/185060/13/5140/92846/60a75036E2ae0eecf/9b0d72d630848836.jpg', 'colorkey哆啦A梦唇釉B675');
INSERT INTO Commodity
VALUES (53, 'colorkey', '哆啦A梦唇釉', '唇釉', '#9C2E1F', '正红', 'B721 暖棕茶咖', '中国', '丝绒', 69.00, 0, '//img12.360buyimg.com/n1/jfs/t1/185670/16/5320/92846/60a7505cEb83c70ca/80dd027d82bba47c.jpg', 'colorkey哆啦A梦唇釉B721');
INSERT INTO Commodity
VALUES (54, 'colorkey', '哆啦A梦唇釉', '唇釉', '#B41A3C', '复古', 'R720 红莓冰茶', '中国', '丝绒', 69.00, 2, '//img12.360buyimg.com/n1/jfs/t1/176025/26/10678/92846/60a7509eE19b59ba5/db460427a07e7650.jpg', 'colorkey哆啦A梦唇釉R720');
INSERT INTO Commodity
VALUES (55, 'colorkey', '哆啦A梦唇釉', '唇釉', '#8C1F25', '草莓', 'R673 玫瑰乌龙', '中国', '丝绒', 69.00, 1, '//img14.360buyimg.com/n1/jfs/t1/183986/14/5186/92846/60a74fe4Eaaecb997/3e5b51dc8451d7f2.jpg', 'colorkey哆啦A梦唇釉R673');
INSERT INTO Commodity
VALUES (56, 'colorkey', '哑光唇釉', '唇釉', '#8A171E', '草莓', 'R110 半糖醋栗', '中国', '哑光/雾面', 69.00, 0, '//img11.360buyimg.com/n1/jfs/t1/194489/13/4302/108206/60a758cdE729ad525/568511fa707115ac.jpg', 'colorkey哑光唇釉R110');
INSERT INTO Commodity
VALUES (57, 'colorkey', '哑光唇釉', '唇釉', '#821324', '铁锈', 'R111 血浆莓红', '中国', '哑光/雾面', 69.00, 0, '//img11.360buyimg.com/n1/jfs/t1/177006/4/5301/108206/60a7561cE6a77bd01/d53fabf36ae670c4.jpg', 'colorkey哑光唇釉R111');
INSERT INTO Commodity
VALUES (58, 'colorkey', '哑光唇釉', '唇釉', '#A02214', '砖红', 'R108 焦糖红栗', '中国', '哑光/雾面', 69.00, 1, '//img10.360buyimg.com/n1/jfs/t1/190404/22/4292/108206/60a755e4E735c6682/08b5e3b9f0954908.jpg', 'colorkey哑光唇釉R108');
INSERT INTO Commodity
VALUES (59, 'colorkey', '哑光唇釉', '唇釉', '#8D222C', '草莓', 'P119 烟熏野莓', '中国', '哑光/雾面', 69.00, 2, '//img10.360buyimg.com/n1/jfs/t1/191374/33/4384/108206/60a75a96E8f9e5261/b547d61f7bb42249.jpg', 'colorkey哑光唇釉P119');
INSERT INTO Commodity
VALUES (60, 'colorkey', '哑光唇釉', '唇釉', '#A12018', '正红', 'B118 枫叶砖红', '中国', '哑光/雾面', 69.00, 1, '//img14.360buyimg.com/n1/jfs/t1/175558/3/10857/108206/60a75a38Ee8561a9f/27b5a25aef36395e.jpg', 'colorkey哑光唇釉B118');
INSERT INTO Commodity
VALUES (61, 'colorkey', '哑光唇釉', '唇釉', '#A1313F', '复古', 'B113 微醺蔷薇', '中国', '哑光/雾面', 69.00, 0, '//img11.360buyimg.com/n1/jfs/t1/182193/12/5153/108206/60a75660Ef3167e05/94dcc10e0e7066f8.jpg', 'colorkey哑光唇釉B113');
INSERT INTO Commodity
VALUES (62, 'colorkey', '哑光唇釉', '唇釉', '#B11A07', '砖红', 'O116 蜜糖红橘', '中国', '哑光/雾面', 69.00, 1, '//img14.360buyimg.com/n1/jfs/t1/175912/6/10641/108206/60a759beEe9537100/fd73fcd6c74906dd.jpg', 'colorkey哑光唇釉O116');
INSERT INTO Commodity
VALUES (63, 'colorkey', '哑光唇釉', '唇釉', '#852530', '草莓', 'P112 豆蔻奶咖', '中国', '哑光/雾面', 69.00, 1, '//img11.360buyimg.com/n1/jfs/t1/175928/35/10767/108206/60a758b1E4218bf51/b4c82340f4c5e0f6.jpg', 'colorkey哑光唇釉P112');
INSERT INTO Commodity
VALUES (64, 'colorkey', '哑光唇釉', '唇釉', '#AA0A2C', '复古', 'R115 樱桃慕斯', '中国', '哑光/雾面', 69.00, 1, '//img13.360buyimg.com/n1/jfs/t1/179077/36/5236/108206/60a75680E1f010a83/b25421aa8a7ef759.jpg', 'colorkey哑光唇釉R115');
INSERT INTO Commodity
VALUES (65, 'colorkey', '哑光唇釉', '唇釉', '#A5321F', '复古', 'O109 赤橙落日', '中国', '哑光/雾面', 69.00, 1, '//img10.360buyimg.com/n1/jfs/t1/186030/34/5256/108206/60a7586aEa7d8bf45/d5a7b901ea921b7a.jpg', 'colorkey哑光唇釉O109');
INSERT INTO Commodity
VALUES (66, 'colorkey', '哑光唇釉', '唇釉', '#A71933', '复古', 'R114 爆浆梅子', '中国', '哑光/雾面', 69.00, 1, '//img12.360buyimg.com/n1/jfs/t1/146347/5/18902/108206/60a75641E1b8c0832/3f089d2e942fd979.jpg', 'colorkey哑光唇釉R114');
INSERT INTO Commodity
VALUES (67, 'colorkey', '哑光唇釉', '唇釉', '#901D1E', '草莓', 'R120 焦糖烤栗', '中国', '哑光/雾面', 69.00, 1, '//img13.360buyimg.com/n1/jfs/t1/176099/13/10755/108206/60a7588cE168be087/d7beb4e6e9df60cf.jpg', 'colorkey哑光唇釉R120');
INSERT INTO Commodity
VALUES (68, 'colorkey', '哑光唇釉', '唇釉', '#A8211D', '复古', 'R117 摩卡红棕', '中国', '哑光/雾面', 69.00, 0, '//img11.360buyimg.com/n1/jfs/t1/190980/11/4261/108206/60a759deEb5cb1fbe/2c9d63c819fc2689.jpg', 'colorkey哑光唇釉R117');
INSERT INTO Commodity
VALUES (69, 'colorkey', '小黑镜唇釉', '唇釉', '#B4102B', '复古', 'R802 甜心玫瑰', '中国', '润泽/镜面', 69.00, 1, '//img12.360buyimg.com/n1/jfs/t1/185609/8/5162/88923/60a7598dEc200063e/7ed8d9cb574c9bc0.jpg', 'colorkey小黑镜唇釉R802');
INSERT INTO Commodity
VALUES (70, 'colorkey', '小黑镜唇釉', '唇釉', '#831021', '铁锈', 'P701 熟透山楂', '中国', '润泽/镜面', 69.00, 3, '//img13.360buyimg.com/n1/jfs/t1/196290/10/4205/89719/60a7561aEbcef791e/007d1ad57828530e.jpg', 'colorkey小黑镜唇釉P701');
INSERT INTO Commodity
VALUES (71, 'colorkey', '小黑镜唇釉', '唇釉', '#6A1211', '血浆', 'R702 微醺枣泥', '中国', '润泽/镜面', 69.00, 1, '//img10.360buyimg.com/n1/jfs/t1/176374/39/10783/89719/60a75889E2230ade8/a184cca535f7aca9.jpg', 'colorkey小黑镜唇釉R702');
INSERT INTO Commodity
VALUES (72, 'colorkey', '小黑镜唇釉', '唇釉', '#8E0A17', '血浆', 'R703 酸甜草莓', '中国', '润泽/镜面', 69.00, 1, '//img12.360buyimg.com/n1/jfs/t1/172914/30/10954/89719/60a758a6Ef8198a7d/43ada61b14f3e6bc.jpg', 'colorkey小黑镜唇釉R703');
INSERT INTO Commodity
VALUES (73, 'colorkey', '小黑镜唇釉', '唇釉', '#7D061C', '血浆', 'R704 晶透苹果', '中国', '润泽/镜面', 69.00, 1, '//img14.360buyimg.com/n1/jfs/t1/191982/11/4369/89719/60a758c8E46d8ce42/0fdfe8d27851ad26.jpg', 'colorkey小黑镜唇釉R704');
INSERT INTO Commodity
VALUES (74, 'colorkey', '小黑镜唇釉', '唇釉', '#671311', '血浆', 'B709 栗子糖棕', '中国', '润泽/镜面', 69.00, 1, '//img11.360buyimg.com/n1/jfs/t1/186698/23/4396/89719/60a75574E23918d0a/c8fbdbdfbd66473b.jpg', 'colorkey小黑镜唇釉B709');
INSERT INTO Commodity
VALUES (75, 'colorkey', '小黑镜唇釉', '唇釉', '#8E0A17', '血浆', 'R715 焦糖红栗', '中国', '润泽/镜面', 69.00, 2, '//img11.360buyimg.com/n1/jfs/t1/189951/28/4374/89719/60a7591fE810f9c8c/de49fb1d9bbcf291.jpg', 'colorkey小黑镜唇釉R715');
INSERT INTO Commodity
VALUES (76, 'colorkey', '小黑镜唇釉', '唇釉', '#911B27', '草莓', 'R718 王炸浆果', '中国', '润泽/镜面', 69.00, 2, '//img14.360buyimg.com/n1/jfs/t1/185194/22/5321/89719/60a75948Ee73f20c9/fad38b06b58e270b.jpg', 'colorkey小黑镜唇釉R718');
INSERT INTO Commodity
VALUES (77, 'colorkey', '小黑镜唇釉', '唇釉', '#AD2330', '复古', 'R803 殷红辣椒', '中国', '润泽/镜面', 69.00, 2, '//img10.360buyimg.com/n1/jfs/t1/185364/30/5231/88923/60a759b6Eb1c3303e/67de3fc9c6047122.jpg', 'colorkey小黑镜唇釉R803');
INSERT INTO Commodity
VALUES (78, 'colorkey', '小黑镜唇釉', '唇釉', '#7E2924', '铁锈', 'B705 焦糖奶茶', '中国', '润泽/镜面', 69.00, 2, '//img12.360buyimg.com/n1/jfs/t1/174430/21/10721/89719/60a754d3Ef6f19986/0fda9724642185a6.jpg', 'colorkey小黑镜唇釉B705');
INSERT INTO Commodity
VALUES (79, 'colorkey', '小黑镜唇釉', '唇釉', '#950D3D', '梅子', 'R706 可人西柚', '中国', '润泽/镜面', 69.00, 0, '//img14.360buyimg.com/n1/jfs/t1/174732/16/10762/89719/60a758e4E94d761d1/dc606303b1993224.jpg', 'colorkey小黑镜唇釉R706');
INSERT INTO Commodity
VALUES (80, 'colorkey', '小黑镜唇釉', '唇釉', '#45011A', '血浆', 'P707 浆果摩卡', '中国', '润泽/镜面', 69.00, 1, '//img11.360buyimg.com/n1/jfs/t1/43831/26/16588/89719/60a757fdEc85b2478/7c72e17bd6eb61c4.jpg', 'colorkey小黑镜唇釉P707');
INSERT INTO Commodity
VALUES (81, 'colorkey', '小黑镜唇釉', '唇釉', '#65221A', '铁锈', 'B708 蜜桃赤茶', '中国', '润泽/镜面', 69.00, 1, '//img10.360buyimg.com/n1/jfs/t1/148902/39/15773/89719/60a75527Eff7b9061/5973810a69af8fe6.jpg', 'colorkey小黑镜唇釉B708');
INSERT INTO Commodity
VALUES (82, 'colorkey', '小黑镜唇釉', '唇釉', '#711611', '铁锈', 'B711 赤焰茶橘', '中国', '润泽/镜面', 69.00, 2, '//img12.360buyimg.com/n1/jfs/t1/184164/1/5174/89719/60a755abEbecaac3b/791a7eb96f2e2e85.jpg', 'colorkey小黑镜唇釉B711');
INSERT INTO Commodity
VALUES (83, 'colorkey', '小黑镜唇釉', '唇釉', '#A4302E', '复古', 'B804 晶透番茄', '中国', '润泽/镜面', 69.00, 1, '//img14.360buyimg.com/n1/jfs/t1/188059/8/4311/88923/60a755c9E98ecad7c/9d0cd066940dc53b.jpg', 'colorkey小黑镜唇釉B804');
INSERT INTO Commodity
VALUES (84, 'colorkey', '小黑镜唇釉', '唇釉', '#922041', '梅子', 'P710 蜜桃珊瑚', '中国', '润泽/镜面', 69.00, 2, '//img14.360buyimg.com/n1/jfs/t1/146376/32/19191/89719/60a7582fE3ccada62/599cf49000baae42.jpg', 'colorkey小黑镜唇釉P710');
INSERT INTO Commodity
VALUES (85, 'colorkey', '小黑镜唇釉', '唇釉', '#760D2C', '梅子', 'P712 半熟樱桃', '中国', '润泽/镜面', 69.00, 2, '//img10.360buyimg.com/n1/jfs/t1/189459/24/4318/89719/60a7584cE6fa10a38/30c5d4090781f023.jpg', 'colorkey小黑镜唇釉P712');
INSERT INTO Commodity
VALUES (86, 'colorkey', '小黑镜唇釉', '唇釉', '#7D061C', '血浆', 'O716 奶茶蜜桔', '中国', '润泽/镜面', 69.00, 2, '//img10.360buyimg.com/n1/jfs/t1/193621/35/4320/88923/60a755ecE4c20a9f7/2cb1a4ecdb1f7005.jpg', 'colorkey小黑镜唇釉O716');
INSERT INTO Commodity
VALUES (87, 'colorkey', '小黑镜唇釉', '唇釉', '#831021', '铁锈', 'P713 桃桃奶冻', '中国', '润泽/镜面', 69.00, 1, '//img10.360buyimg.com/n1/jfs/t1/174156/24/10757/89719/60a7586bEbd8b0925/ed34e20b3bdd3195.jpg', 'colorkey小黑镜唇釉P713');
INSERT INTO Commodity
VALUES (88, 'colorkey', '小黑镜唇釉', '唇釉', '#6A1211', '血浆', 'R714 玫瑰甜酒', '中国', '润泽/镜面', 69.00, 0, '//img14.360buyimg.com/n1/jfs/t1/183715/27/5188/89719/60a75902E3f790e70/573189f28c175f66.jpg', 'colorkey小黑镜唇釉R714');
INSERT INTO Commodity
VALUES (89, 'colorkey', '小黑镜唇釉', '唇釉', '#A9121B', '砖红', 'R777 繁星蜜宇', '中国', '润泽/镜面', 69.00, 2, '//img10.360buyimg.com/n1/jfs/t1/175662/6/10658/89719/60a75963Eb6f982ab/d6ae0698796646ec.jpg', 'colorkey小黑镜唇釉R777');
INSERT INTO Commodity
VALUES (90, 'colorkey', '烙印唇釉', '唇釉', '#BE444F', '豆沙', 'R504 枣泥红番', '中国', '丝绒', 69.00, 1, '//img13.360buyimg.com/n1/jfs/t1/180609/12/5155/83837/60a7541dEf9b1bd2c/137af2b7bd9edafc.jpg', 'colorkey烙印唇釉R504');
INSERT INTO Commodity
VALUES (91, 'colorkey', '烙印唇釉', '唇釉', '#AA4147', '豆沙', 'R508 甜茶红榴', '中国', '丝绒', 69.00, 1, '//img12.360buyimg.com/n1/jfs/t1/190919/15/4186/83837/60a75478E756ef18a/2de0f766a2f27e7a.jpg', 'colorkey烙印唇釉R508');
INSERT INTO Commodity
VALUES (92, 'colorkey', '烙印唇釉', '唇釉', '#B34246', '豆沙', 'R506 微醺莓酒', '中国', '丝绒', 69.00, 2, '//img12.360buyimg.com/n1/jfs/t1/181141/22/5238/83837/60a75451E2753ad3d/0949458c264c1381.jpg', 'colorkey烙印唇釉R506');
INSERT INTO Commodity
VALUES (93, 'colorkey', '烙印唇釉', '唇釉', '#CD4F36', '珊瑚红', 'B501 茶茶姜橘', '中国', '丝绒', 69.00, 0, '//img14.360buyimg.com/n1/jfs/t1/178995/6/5263/83837/60a75272E88de69f1/cecfe29c1a2d22eb.jpg', 'colorkey烙印唇釉B501');
INSERT INTO Commodity
VALUES (94, 'colorkey', '烙印唇釉', '唇釉', '#BB3B3A', '番茄', 'B502 红栗慕斯', '中国', '丝绒', 69.00, 1, '//img11.360buyimg.com/n1/jfs/t1/174350/13/10832/83837/60a75291E6fba0139/8615979718e32d91.jpg', 'colorkey烙印唇釉B502');
INSERT INTO Commodity
VALUES (95, 'colorkey', '烙印唇釉', '唇釉', '#C0513D', '豆沙', 'B509 南瓜栗棕', '中国', '丝绒', 69.00, 2, '//img13.360buyimg.com/n1/jfs/t1/179452/20/5316/83837/60a75345Ec0316000/f3538f2926715d07.jpg', 'colorkey烙印唇釉B509');
INSERT INTO Commodity
VALUES (96, 'colorkey', '烙印唇釉', '唇釉', '#B4514B', '豆沙', 'B507 茶透松果', '中国', '丝绒', 69.00, 3, '//img13.360buyimg.com/n1/jfs/t1/183508/1/5198/83837/60a75320E55b905dc/9487b9cdc9aae769.jpg', 'colorkey烙印唇釉B507');
INSERT INTO Commodity
VALUES (97, 'colorkey', '烙印唇釉', '唇釉', '#B9515A', '豆沙', 'R503 甜野莓菓', '中国', '丝绒', 69.00, 0, '//img14.360buyimg.com/n1/jfs/t1/189033/34/4285/83837/60a753c2E3575b779/f2f8465894734717.jpg', 'colorkey烙印唇釉R503');
INSERT INTO Commodity
VALUES (98, 'colorkey', '烙印唇釉', '唇釉', '#8C4943', '豆沙', 'B505 脏脏茶咖', '中国', '丝绒', 69.00, 2, '//img14.360buyimg.com/n1/jfs/t1/173450/20/10845/83837/60a752b4E93e1a0af/a0af3446f290160b.jpg', 'colorkey烙印唇釉B505');
INSERT INTO Commodity
VALUES (99, 'colorkey', '黑丝缎唇釉', '唇釉', '#8B210B', '铁锈', 'R908 烤茶栗棕', '中国', '自然/裸妆', 79.00, 0, '//img12.360buyimg.com/n1/jfs/t1/195698/40/4146/103660/60a63df9E6aa5e437/32ad4a4985ac0df8.jpg', 'colorkey黑丝缎唇釉R908');
INSERT INTO Commodity
VALUES (100, 'colorkey', '黑丝缎唇釉', '唇釉', '#830606', '血浆', 'R901 海盐山楂', '中国', '自然/裸妆', 79.00, 2, '//img14.360buyimg.com/n1/jfs/t1/184289/16/5095/103660/60a639d8E3b25add8/e6fadfbc14f9bb10.jpg', 'colorkey黑丝缎唇釉R901');
INSERT INTO Commodity
VALUES (101, 'colorkey', '黑丝缎唇釉', '唇釉', '#9B5647', '豆沙', 'B905 雪顶冰咖', '中国', '自然/裸妆', 79.00, 2, '//img14.360buyimg.com/n1/jfs/t1/191072/2/4217/103660/60a63cdeE10eee1d1/8e444286d3cf5c5c.jpg', 'colorkey黑丝缎唇釉B905');
INSERT INTO Commodity
VALUES (102, 'colorkey', '黑丝缎唇釉', '唇釉', '#C53119', '番茄', 'R902 冰冻茶橘', '中国', '自然/裸妆', 79.00, 3, '//img11.360buyimg.com/n1/jfs/t1/182289/1/5126/103660/60a63a42Ed76d7ddc/1e27e557e83f13e4.jpg', 'colorkey黑丝缎唇釉R902');
INSERT INTO Commodity
VALUES (103, 'colorkey', '黑丝缎唇釉', '唇釉', '#C13A31', '番茄', 'R906 星钻甜莓', '中国', '自然/裸妆', 79.00, 2, '//img14.360buyimg.com/n1/jfs/t1/194243/8/4127/103660/60a63d3bEa3c54e39/1122a5fa12ae9f20.jpg', 'colorkey黑丝缎唇釉R906');
INSERT INTO Commodity
VALUES (104, 'MAC', 'mini子弹头', '口红', '#AA1B2D', '复古', '迷你707 Ruby Woo 复古哑光红', '加拿大', '哑光/雾面', 109.00, 1, '//img12.360buyimg.com/n5/s450x450_jfs/t1/185358/7/4184/353986/609f5a00E4d2ad063/f822023a88523a53.jpg', 'MACmini子弹头迷你707');
INSERT INTO Commodity
VALUES (105, 'MAC', 'mini子弹头', '口红', '#B52A32', '番茄', '迷你612 Russian Red 俄罗斯红', '加拿大', '哑光/雾面', 99.00, 1, '//img13.360buyimg.com/n5/s450x450_jfs/t1/186151/33/4192/352051/609f58c4Ed34ff9af/5e2403512c54b90d.jpg', 'MACmini子弹头迷你612');
INSERT INTO Commodity
VALUES (106, 'MAC', 'mini子弹头', '口红', '#961F1B', '草莓', '迷你602 Chili 秀智色/小辣椒色', '加拿大', '哑光/雾面', 99.00, 1, '//img11.360buyimg.com/n5/s450x450_jfs/t1/192192/21/3233/349532/609f5895Ed598216e/38429f9c9df419a1.jpg', 'MACmini子弹头迷你602');
INSERT INTO Commodity
VALUES (107, 'MAC', '柔雾液体唇釉', '唇釉', '#D66867', '西柚', '988 A LITTLE TAMED', '韩国', '哑光/雾面', 210.00, 2, '//img13.360buyimg.com/n5/s450x450_jfs/t1/186893/12/4144/76119/60a62340E57d2f047/a588eb46559f9be6.jpg', 'MAC柔雾液体唇釉988');
INSERT INTO Commodity
VALUES (108, 'MAC', '柔雾液体唇釉', '唇釉', '#DD685F', '西柚', '989 MULL IT OVER 白桃奶盖色', '韩国', '哑光/雾面', 178.00, 0, '//img13.360buyimg.com/n5/s450x450_jfs/t1/186030/23/4976/340790/60a622abE3f60c235/d5a7b901ea921b7a.jpg', 'MAC柔雾液体唇釉989');
INSERT INTO Commodity
VALUES (109, 'MAC', '柔雾液体唇釉', '唇釉', '#9C3024', '复古', '991 DEVOTED TO CHILLI 攻心小辣椒', '韩国', '哑光/雾面', 199.00, 1, '//img13.360buyimg.com/n5/s450x450_jfs/t1/192329/9/3260/349813/609f599fE8b172a89/9b878f710252268c.jpg', 'MAC柔雾液体唇釉991');
INSERT INTO Commodity
VALUES (110, 'MAC', '柔雾液体唇釉', '唇釉', '#BC4531', '番茄', '998 SORRY NOT SORRY 清甜南瓜色', '韩国', '哑光/雾面', 189.00, 2, '//img10.360buyimg.com/n5/s450x450_jfs/t1/186599/15/4191/348817/60a622f5E2d564af4/9f1dc6c79a3c4e53.jpg', 'MAC柔雾液体唇釉998');
INSERT INTO Commodity
VALUES (111, 'MAC', '柔雾液体唇釉', '唇釉', '#6C121C', '血浆', '994 王炸浆果', '韩国', '哑光/雾面', 189.00, 2, '//img14.360buyimg.com/n5/s450x450_jfs/t1/183014/30/4245/75689/609f5ac2E8ecc37bd/7ea0815ad8c0140a.jpg', 'MAC柔雾液体唇釉994');
INSERT INTO Commodity
VALUES (112, 'MAC', '柔雾液体唇釉', '唇釉', '#C52128', '番茄', '987 MAC SMASH', '韩国', '哑光/雾面', 210.00, 2, '//img10.360buyimg.com/n5/s450x450_jfs/t1/192458/36/4129/75186/60a6231aE140e6821/b8ebdd2237d6b1f0.jpg', 'MAC柔雾液体唇釉987');
INSERT INTO Commodity
VALUES (113, 'MAC', '渐变子弹头', '口红', '#9B2C3A', '复古', '408 BATED BREATH 暖玫瑰棕色', '美国', '其它', 156.00, 1, '//img13.360buyimg.com/n5/s450x450_jfs/t1/190608/28/4138/366850/60a621c1Efa06c9f5/8f408a4b4d656797.jpg', 'MAC渐变子弹头408');
INSERT INTO Commodity
VALUES (114, 'MAC', '渐变子弹头', '口红', '#8D080F', '血浆', '423 浓郁血浆色', '美国', '其它', 156.00, 0, '//img12.360buyimg.com/n5/s450x450_jfs/t1/185649/20/4715/141622/60a37e89Edb8145b4/34d112fe72d115c4.jpg', 'MAC渐变子弹头423');
INSERT INTO Commodity
VALUES (115, 'MAC', '糖果玻璃唇釉', '唇釉', '#E63744', '珊瑚红', '108 VARNISHLY RED 樱桃红色', '韩国', '润泽/镜面', 178.00, 1, '//img10.360buyimg.com/n5/s450x450_jfs/t1/171606/6/10671/364097/60a6220bE150c4fcd/7949fd2e78dc5fd7.jpg', 'MAC糖果玻璃唇釉108');
INSERT INTO Commodity
VALUES (116, 'MAC', '糖果玻璃唇釉', '唇釉', '#8F070C', '血浆', '106 NO INTERRUPTION 车厘子色', '韩国', '润泽/镜面', 178.00, 0, '//img10.360buyimg.com/n5/s450x450_jfs/t1/183304/25/4181/365095/609f45d7E045ae225/e6f40544bdc10544.jpg', 'MAC糖果玻璃唇釉106');
INSERT INTO Commodity
VALUES (117, 'MAC', '糖果玻璃唇釉', '唇釉', '#EA5F64', '西柚', '116 TATTOO MY HEART 斩男色', '韩国', '润泽/镜面', 178.00, 2, '//img13.360buyimg.com/n5/s450x450_jfs/t1/182849/36/4201/361841/609f4d4fEb93f368d/89d0c9f93786bc48.jpg', 'MAC糖果玻璃唇釉116');
INSERT INTO Commodity
VALUES (118, 'MAC', '糖果玻璃唇釉', '唇釉', '#FB815A', '珊瑚橘', '113 CAN\'T STOP WON\'T STOP 黁橘色', '韩国', '哑光/雾面', 178.00, 1, '//img14.360buyimg.com/n5/s450x450_jfs/t1/175721/34/9706/364128/609f4e83E335993f3/c61c582debdd6159.jpg', 'MAC糖果玻璃唇釉113');
INSERT INTO Commodity
VALUES (119, 'MAC', '经典子弹头', '口红', '#942609', '草莓', '646 MARRAKESH 脏橘色', '加拿大', '哑光/雾面', 139.00, 2, '//img14.360buyimg.com/n5/s450x450_jfs/t1/139382/16/18633/357937/60a618e9E7f10e406/5bd286503c003391.jpg', 'MAC经典子弹头646');
INSERT INTO Commodity
VALUES (120, 'MAC', '经典子弹头', '口红', '#D32751', '珊瑚红', '706 Relentlessly Red 粉调珊瑚红', '加拿大', '哑光/雾面', 156.00, 2, '//img11.360buyimg.com/n5/s450x450_jfs/t1/172104/32/9859/365431/609f4e07E644fe41c/c300cfef15c1ce12.jpg', 'MAC经典子弹头706');
INSERT INTO Commodity
VALUES (121, 'MAC', '经典子弹头', '口红', '#681128', '梅子', '207 Dare You 宝石红', '加拿大', '其它', 156.00, 1, '//img12.360buyimg.com/n5/s450x450_jfs/t1/180766/21/5135/359763/60a62095Eb14714fa/326aadd3f8f1bd35.jpg', 'MAC经典子弹头207');
INSERT INTO Commodity
VALUES (122, 'MAC', '经典子弹头', '口红', '#F88089', '西柚', '120 Vegas Volt 珊瑚色', '加拿大', '润泽/镜面', 156.00, 1, '//img11.360buyimg.com/n5/s450x450_jfs/t1/110194/7/16122/361489/60a6219aEf162dea2/ebbc91665935c05c.jpg', 'MAC经典子弹头120');
INSERT INTO Commodity
VALUES (123, 'MAC', '经典子弹头', '口红', '#C35E64', '西柚', '824 Twig 浅棕粉色', '加拿大', '丝绒', 156.00, 2, '//img13.360buyimg.com/n5/s450x450_jfs/t1/175289/16/10693/361236/60a62230E43f18bb6/a023e222a2e8d296.jpg', 'MAC经典子弹头824');
INSERT INTO Commodity
VALUES (124, 'MAC', '经典子弹头', '口红', '#A1021D', '砖红', '502 Cockney 草莓红', '加拿大', '润泽/镜面', 156.00, 0, '//img13.360buyimg.com/n5/s450x450_jfs/t1/176474/10/10530/361991/60a619bbE407ac174/cee871698846dfe6.jpg', 'MAC经典子弹头502');
INSERT INTO Commodity
VALUES (125, 'MAC', '经典子弹头', '口红', '#DD3326', '橘红', '232 Dozen Carnations 一打康乃馨', '加拿大', '润泽/镜面', 156.00, 2, '//img12.360buyimg.com/n5/s450x450_jfs/t1/194571/32/4125/366692/60a621e3Ee860be84/30c091f549d96422.jpg', 'MAC经典子弹头232');
INSERT INTO Commodity
VALUES (126, 'MAC', '经典子弹头', '口红', '#A14041', '豆沙', '309 Fresh Moroccan 人鱼红棕色', '加拿大', '润泽/镜面', 156.00, 0, '//img12.360buyimg.com/n5/s450x450_jfs/t1/179352/1/4258/366584/609f4f30Eb6e4b46a/31a1b307addc1a5b.jpg', 'MAC经典子弹头309');
INSERT INTO Commodity
VALUES (127, 'MAC', '经典子弹头', '口红', '#CE5459', '珊瑚红', '520 See Sheer 水润西柚色', '加拿大', '润泽/镜面', 156.00, 0, '//img11.360buyimg.com/n5/s450x450_jfs/t1/183825/19/5066/363092/60a61b3aEb214f90f/80e084cc7e508391.jpg', 'MAC经典子弹头520');
INSERT INTO Commodity
VALUES (128, 'MAC', '经典子弹头', '口红', '#A30616', '砖红', '612 Russian Red 俄罗斯红', '加拿大', '哑光/雾面', 139.00, 3, '//img13.360buyimg.com/n5/s450x450_jfs/t1/196683/8/4064/357770/60a61996Ed2b5cf6a/4dcc3c6a1a4c5133.jpg', 'MAC经典子弹头612');
INSERT INTO Commodity
VALUES (129, 'MAC', '经典子弹头', '口红', '#B75555', '豆沙', '813 Mocha 摩卡奶茶色', '加拿大', '润泽/镜面', 156.00, 0, '//img10.360buyimg.com/n5/s450x450_jfs/t1/196654/8/4087/362915/60a61c1dEb5006e15/9f547b040845a0d5.jpg', 'MAC经典子弹头813');
INSERT INTO Commodity
VALUES (130, 'MAC', '经典子弹头', '口红', '#BE0701', '砖红', '510 Lady Bug 番茄红', '加拿大', '润泽/镜面', 156.00, 2, '//img12.360buyimg.com/n5/s450x450_jfs/t1/172484/2/10698/362284/60a619e4E7492ed31/8c6cb66c619fae90.jpg', 'MAC经典子弹头510');
INSERT INTO Commodity
VALUES (131, 'MAC', '经典子弹头', '口红', '#9D0639', '梅子', '603 Diva 姨妈色', '加拿大', '哑光/雾面', 156.00, 2, '//img14.360buyimg.com/n5/s450x450_jfs/t1/191384/16/4219/362203/60a61cbdEd0dca241/8bc8989531c290a0.jpg', 'MAC经典子弹头603');
INSERT INTO Commodity
VALUES (132, 'MAC', '经典子弹头', '口红', '#72041B', '血浆', '707 Ruby Woo 复古哑光红', '加拿大', '哑光/雾面', 139.00, 0, '//img13.360buyimg.com/n5/s450x450_jfs/t1/185124/35/5035/365475/60a618bfE01861a26/7c482e4cdc576e5e.jpg', 'MAC经典子弹头707');
INSERT INTO Commodity
VALUES (133, 'MAC', '经典子弹头', '口红', '#E5422B', '橘红', '115 Morange 奶油亮橘', '加拿大', '润泽/镜面', 156.00, 2, '//img14.360buyimg.com/n5/s450x450_jfs/t1/175563/24/10707/362918/60a6214fE02e215df/8ae4380ac3a1f50b.jpg', 'MAC经典子弹头115');
INSERT INTO Commodity
VALUES (134, 'MAC', '经典子弹头', '口红', '#D61428', '橘红', '#Red Mac Red 明亮蓝红色', '加拿大', '润泽/镜面', 156.00, 1, '//img14.360buyimg.com/n5/s450x450_jfs/t1/184459/20/4124/367029/609f5910E476a25c7/488f420cfaa0657a.jpg', 'MAC经典子弹头#Red');
INSERT INTO Commodity
VALUES (135, 'MAC', '经典子弹头', '口红', '#DB1E1E', '橘红', '607 Lady Danger 亮珊瑚橘', '中国', '哑光/雾面', 156.00, 0, '//img13.360buyimg.com/n5/s450x450_jfs/t1/182590/10/5058/362831/60a62108E52ff3e40/cef647bea24bae53.jpg', 'MAC经典子弹头607');
INSERT INTO Commodity
VALUES (136, 'MAC', '经典子弹头', '口红', '#D31D00', '橘红', '702 Dangerous 哑光橙红', '加拿大', '哑光/雾面', 156.00, 2, '//img10.360buyimg.com/n5/s450x450_jfs/t1/160640/26/20878/363164/60a6200eE1bc4d201/e21d02c612b25faf.jpg', 'MAC经典子弹头702');
INSERT INTO Commodity
VALUES (137, 'MAC', '经典子弹头', '口红', '#A93329', '复古', '602 Chili 秀智色/小辣椒色', '加拿大', '哑光/雾面', 139.00, 2, '//img14.360buyimg.com/n5/s450x450_jfs/t1/194804/37/4333/150466/60a79b0bE3ccd3e71/94e62a166520759e.jpg', 'MAC经典子弹头602');
INSERT INTO Commodity
VALUES (138, 'MAC', '经典子弹头', '口红', '#8A1538', '梅子', '630 D For Danger 哑光浆果色', '加拿大', '哑光/雾面', 156.00, 0, '//img13.360buyimg.com/n5/s450x450_jfs/t1/186054/26/5006/362915/60a62057E695d27a7/195c8a9435224588.jpg', 'MAC经典子弹头630');
INSERT INTO Commodity
VALUES (139, 'MAC', '经典子弹头', '口红', '#D76A7D', '西柚', '102 Brick o La 豆沙红', '加拿大', '润泽/镜面', 156.00, 0, '//img10.360buyimg.com/n5/s450x450_jfs/t1/189949/14/3416/361635/60a61a84E7c28af50/a914cb98b71b9efe.jpg', 'MAC经典子弹头102');
INSERT INTO Commodity
VALUES (140, 'MAC', '经典子弹头', '口红', '#DE203A', '橘红', '640 Red Rock 蓝调正红色', '美国', '哑光/雾面', 156.00, 1, '//img12.360buyimg.com/n5/s450x450_jfs/t1/192193/34/3293/366099/609f5194Ec53684da/c4682f5f58a2f9a1.jpg', 'MAC经典子弹头640');
INSERT INTO Commodity
VALUES (141, 'MAC', '经典子弹头', '口红', '#D41A2F', '橘红', '233 Sweet Sakura 樱花红', '加拿大', '润泽/镜面', 156.00, 1, '//img11.360buyimg.com/n5/s450x450_jfs/t1/180946/1/4084/365709/609f4ef6E0221b119/f49ea51126e32bd7.jpg', 'MAC经典子弹头233');
INSERT INTO Commodity
VALUES (142, 'MAC', '经典子弹头', '口红', '#D72D5E', '珊瑚红', '701 All Fired Up 亮紫红色', '加拿大', '哑光/雾面', 156.00, 2, '//img13.360buyimg.com/n5/s450x450_jfs/t1/181413/23/4255/367146/609f5143E989d2c28/9b26eaafcb96c0db.jpg', 'MAC经典子弹头701');
INSERT INTO Commodity
VALUES (143, 'MAC', '经典子弹头', '口红', '#832123', '铁锈', '108 Dubonnet 牛血红', '加拿大', '润泽/镜面', 139.00, 1, '//img10.360buyimg.com/n5/s450x450_jfs/t1/191380/19/4167/361686/60a6196fE7675618c/8be7305ef3ef0825.jpg', 'MAC经典子弹头108');
INSERT INTO Commodity
VALUES (144, 'MAC', '经典子弹头', '口红', '#D84B1D', '橘红', 'cb96 闪亮星泽人鱼姬限量版', '加拿大', '哑光/雾面', 156.00, 0, '//img11.360buyimg.com/n5/s450x450_jfs/t1/182679/37/5141/363327/60a6212dEeb0cf8a7/0262ebffb9718c90.jpg', 'MAC经典子弹头cb96');
INSERT INTO Commodity
VALUES (145, 'MAC', '经典子弹头', '口红', '#DD6A63', '西柚', '703 runway hit 西柚色', '加拿大', '哑光/雾面', 156.00, 1, '//img10.360buyimg.com/n5/s450x450_jfs/t1/195486/39/3208/367084/609f4e45E43ab0f21/9d4f1060860d9a1a.jpg', 'MAC经典子弹头703');
INSERT INTO Commodity
VALUES (146, 'MAC', '经典子弹头', '口红', '#752425', '铁锈', '522 Spice it up 红棕色', '加拿大', '润泽/镜面', 156.00, 0, '//img11.360buyimg.com/n5/s450x450_jfs/t1/173291/4/10659/364562/60a61e00Ee5e4c2f1/ce4bd5a0d4dbc430.jpg', 'MAC经典子弹头522');
INSERT INTO Commodity
VALUES (147, 'MAC', '限定尤雾弹', '口红', '#D73127', '橘红', '308 Mandarin O 少女西柚色', '意大利', '哑光/雾面', 156.00, 0, '//img13.360buyimg.com/n5/s450x450_jfs/t1/149250/11/19150/363073/60a62032E0366057e/b31e4b2a35cd7c01.jpg', 'MAC限定尤雾弹308');
INSERT INTO Commodity
VALUES (148, 'MAC', '限定尤雾弹', '口红', '#DD2B31', '橘红', '316 devoted to chili 柔雾小辣椒', '意大利', '哑光/雾面', 139.00, 1, '//img11.360buyimg.com/n5/s450x450_jfs/t1/189847/36/4146/363125/60a62407E4c7007d6/0eca35b4168ac044.jpg', 'MAC限定尤雾弹316');
INSERT INTO Commodity
VALUES (149, 'MAC', '限定尤雾弹', '口红', '#C3554E', '豆沙', '314 mull it over 蜜桃奶茶色', '意大利', '哑光/雾面', 139.00, 2, '//img13.360buyimg.com/n5/s450x450_jfs/t1/192365/14/4053/364583/60a61943Eb370126f/e384916b62cf14d5.jpg', 'MAC限定尤雾弹314');
INSERT INTO Commodity
VALUES (150, 'MAC', '限定尤雾弹', '口红', '#D7263A', '橘红', '315 lasting passion 复古鲜玫瑰', '意大利', '哑光/雾面', 156.00, 1, '//img12.360buyimg.com/n5/s450x450_jfs/t1/174053/9/10764/363721/60a61f7eEb20bc975/b13e7d41d244a0cd.jpg', 'MAC限定尤雾弹315');
INSERT INTO Commodity
VALUES (151, 'MAC', '限定尤雾弹', '口红', '#C83241', '番茄', '923 Stay Curious 糖渍樱花色', '意大利', '哑光/雾面', 156.00, 0, '//img14.360buyimg.com/n5/s450x450_jfs/t1/194151/26/4022/363940/60a61fe9E06305023/eeff092b632dbc97.jpg', 'MAC限定尤雾弹923');
INSERT INTO Commodity
VALUES (152, 'MAC', '限定尤雾弹', '口红', '#91334D', '豆沙', '305 Burning Love 梅子浆果色', '意大利', '哑光/雾面', 156.00, 1, '//img12.360buyimg.com/n5/s450x450_jfs/t1/176785/7/10598/362392/60a620caEf2fee28a/6c27da2d4e4145bf.jpg', 'MAC限定尤雾弹305');
INSERT INTO Commodity
VALUES (153, 'MAC', '限定尤雾弹', '口红', '#B40E46', '复古', '306 复古红莓色', '意大利', '哑光/雾面', 156.00, 0, '//img13.360buyimg.com/n5/s450x450_jfs/t1/176442/21/9776/367872/609f5105Edb1581ff/ac68f858b43893cb.jpg', 'MAC限定尤雾弹306');
INSERT INTO Commodity
VALUES (154, 'MAC', '限定尤雾弹', '口红', '#D73929', '橘红', '303 STYLE SHOCKED 胡萝卜汁色', '欧美', '哑光/雾面', 169.00, 3, '//img11.360buyimg.com/n5/s450x450_jfs/t1/181363/17/4189/367591/609f4d0fE41f84270/ba5f8ac2f5ffc498.jpg', 'MAC限定尤雾弹303');
INSERT INTO Commodity
VALUES (155, 'MAC', '限定尤雾弹', '口红', '#623C33', '红棕', '927 低糖黑巧色', '加拿大', '哑光/雾面', 156.00, 2, '//img13.360buyimg.com/n5/s450x450_jfs/t1/191902/34/3236/96610/609f5b1cE3f9efc37/948194e411528aa1.jpg', 'MAC限定尤雾弹927');
INSERT INTO Commodity
VALUES (156, 'NARS', '唇膏口红', '口红', '#7F2A23', '铁锈', '9497 MONA 红咖色', '美国', '其它', 320.00, 2, '//img10.360buyimg.com/n1/jfs/t1/112716/7/14977/27226/5f36473fEb905b917/2fcbdf59bf27204c.jpg', 'NARS唇膏口红9497');
INSERT INTO Commodity
VALUES (157, 'NARS', '唇膏口红', '唇膏', '#9E3539', '复古', '975 IMMORTAL RED 永生红', '加拿大', '哑光/雾面', 240.00, 1, '//img13.360buyimg.com/n1/jfs/t1/125305/26/9590/22588/5f3648c5E8ba248e7/f5d3ef1e25aa6ae5.jpg', 'NARS唇膏口红975');
INSERT INTO Commodity
VALUES (158, 'NARS', '空气柔雾唇霜', '唇霜', '#C52233', '番茄', '049 糖霜车厘子', '加拿大', '哑光/雾面', 249.00, 2, '//img11.360buyimg.com/n1/jfs/t1/161144/1/7484/26551/60336c29E6840f17f/6b0607bd426a5e3a.jpg', 'NARS空气柔雾唇霜049');
INSERT INTO Commodity
VALUES (159, 'NARS', '空气柔雾唇霜', '唇霜', '#F4706D', '西柚', '039 奶盖蜜桃色', '加拿大', '哑光/雾面', 260.00, 2, '//img10.360buyimg.com/n1/jfs/t1/154440/32/18775/18007/60336d4aE9e6d2944/3c629ac68be3ccc3.jpg', 'NARS空气柔雾唇霜039');
INSERT INTO Commodity
VALUES (160, 'NARS', '空气柔雾唇霜', '唇霜', '#C54A3B', '番茄', '041 小橘钉', '加拿大', '哑光/雾面', 249.00, 0, '//img14.360buyimg.com/n1/jfs/t1/164449/37/7457/17672/60335401Ea6a49565/a073f2dd595fa0b9.jpg', 'NARS空气柔雾唇霜041');
INSERT INTO Commodity
VALUES (161, 'YSL', '圆管', '口红', '#9D1B25', '正红', '83 复古红', '法国', '润泽/镜面', 335.00, 3, '//img14.360buyimg.com/n1/jfs/t1/182581/19/5164/317095/60a667f6E9b13527d/7595eac891a54e29.jpg', 'YSL圆管83');
INSERT INTO Commodity
VALUES (162, 'YSL', '圆管', '口红', '#A4262A', '复古', '80 番茄红', '法国', '润泽/镜面', 335.00, 2, '//img12.360buyimg.com/n1/jfs/t1/172121/1/10855/331392/60a66829E9b452976/714f3273230c6030.jpg', 'YSL圆管80');
INSERT INTO Commodity
VALUES (163, 'YSL', '圆管', '口红', '#FE4559', '珊瑚红', '12 斩男色', '法国', '润泽/镜面', 335.00, 4, '//img11.360buyimg.com/n1/jfs/t1/181731/6/5207/336966/60a746e0E2321055c/73e3f92afff7001d.jpg', 'YSL圆管12');
INSERT INTO Commodity
VALUES (164, 'YSL', '天鹅绒唇釉', '唇釉', '#A41912', '砖红', '212 焦糖朋克', '法国', '丝绒', 335.00, 1, '//img13.360buyimg.com/n1/jfs/t1/183213/30/5169/326655/60a6685bEfce70b00/da6b7726404c13a2.jpg', 'YSL天鹅绒唇釉212');
INSERT INTO Commodity
VALUES (165, 'YSL', '天鹅绒唇釉', '唇釉', '#C46366', '西柚', '216 豆沙波普', '法国', '丝绒', 335.00, 1, '//img12.360buyimg.com/n1/jfs/t1/121832/33/15555/303561/60a66b9eEf87e9da7/1b2f2c9a51cdd3b1.jpg', 'YSL天鹅绒唇釉216');
INSERT INTO Commodity
VALUES (166, 'YSL', '天鹅绒唇釉', '唇釉', '#AF251B', '番茄', '211 日落变奏', '法国', '丝绒', 335.00, 1, '//img10.360buyimg.com/n1/jfs/t1/172127/19/9888/320588/60a66bbaEa80f3bc8/d64a5bf4e8e642dc.jpg', 'YSL天鹅绒唇釉211');
INSERT INTO Commodity
VALUES (167, 'YSL', '方管', '口红', '#BE3226', '番茄', 'N83 番茄色', '法国', '润泽/镜面', 335.00, 1, '//img14.360buyimg.com/n1/jfs/t1/176407/7/10658/318454/60a66aeaE3bb491c3/9a1b7e1f9996a07a.jpg', 'YSL方管N83');
INSERT INTO Commodity
VALUES (168, 'YSL', '方管', '口红', '#B82323', '番茄', 'N°1 正红色', '欧美', '润泽/镜面', 335.00, 1, '//img10.360buyimg.com/n1/jfs/t1/194969/1/4164/288080/60a747eeE8556f8b3/ebaa1440dedb2635.jpg', 'YSL方管N°1');
INSERT INTO Commodity
VALUES (169, 'YSL', '方管', '口红', '#9B211C', '正红', '1966 暖棕红', '法国', '其它', 335.00, 0, '//img10.360buyimg.com/n1/jfs/t1/182015/30/5075/330656/60a66c51Ede016b43/9f9d90805db75061.jpg', 'YSL方管1966');
INSERT INTO Commodity
VALUES (170, 'YSL', '方管', '口红', '#E5002B', '橘红', 'N1 正红色', '法国', '润泽/镜面', 335.00, 2, '//img14.360buyimg.com/n1/jfs/t1/191337/37/4168/326285/60a66679E1e89dec1/68c2e20f51559eb8.jpg', 'YSL方管N1');
INSERT INTO Commodity
VALUES (171, 'YSL', '方管', '口红', '#C63D21', '番茄', 'N13 正橘色', '法国', '润泽/镜面', 335.00, 2, '//img10.360buyimg.com/n1/jfs/t1/180529/31/5061/305587/60a666b1E0356134f/0c4c67b163bd38b8.jpg', 'YSL方管N13');
INSERT INTO Commodity
VALUES (172, 'YSL', '细管', '口红', '#D6374A', '珊瑚红', 'N01 呛口辣椒', '法国', '哑光/雾面', 350.00, 3, '//img11.360buyimg.com/n1/jfs/t1/194895/24/4096/294907/60a666ccE5145deea/2224c5d4c4df2453.jpg', 'YSL细管N01');
INSERT INTO Commodity
VALUES (173, 'YSL', '细管', '口红', '#9D0A1C', '砖红', 'N21 复古正红', '法国', '哑光/雾面', 350.00, 1, '//img10.360buyimg.com/n1/jfs/t1/183593/19/4351/293510/60a666f9Edfe77ea9/53f57cddbe5a3572.jpg', 'YSL细管N21');
INSERT INTO Commodity
VALUES (174, 'YSL', '细管', '口红', '#9A1C29', '正红', 'N09 棕调酒红', '法国', '哑光/雾面', 350.00, 2, '//img10.360buyimg.com/n1/jfs/t1/186765/12/4355/293104/60a7473aEf3107a7e/28127fe5ccd80d07.jpg', 'YSL细管N09');
INSERT INTO Commodity
VALUES (175, 'YSL', '细管', '口红', '#CF6469', '西柚', 'N11 肉桂杏粉', '法国', '哑光/雾面', 350.00, 1, '//img12.360buyimg.com/n1/jfs/t1/44647/33/15685/297199/60a667abE524be25f/1202c8af05d38fbe.jpg', 'YSL细管N11');
INSERT INTO Commodity
VALUES (176, 'YSL', '细管', '口红', '#AC4759', '豆沙', 'N12 干枯玫瑰', '法国', '哑光/雾面', 350.00, 1, '//img14.360buyimg.com/n1/jfs/t1/174011/1/10695/294380/60a74782E95acde55/578c6ad138935cfe.jpg', 'YSL细管N12');
INSERT INTO Commodity
VALUES (177, 'YSL', '细管', '口红', '#D43338', '橘红', 'N10 元气蜜橘', '法国', '哑光/雾面', 335.00, 2, '//img13.360buyimg.com/n1/jfs/t1/181388/33/5253/290685/60a667deEece48d75/ffc4d9aa8bb10aee.jpg', 'YSL细管N10');
INSERT INTO Commodity
VALUES (178, 'YSL', '细管', '口红', '#A54A51', '豆沙', 'N23 橙红番茄', '法国', '哑光/雾面', 350.00, 1, '//img14.360buyimg.com/n1/jfs/t1/176560/28/10655/295447/60a6680fE6bcccf4f/8a0ff297f0502f9c.jpg', 'YSL细管N23');
INSERT INTO Commodity
VALUES (179, 'YSL', '细管', '口红', '#AF2423', '番茄', 'N28 高阶胡萝卜', '法国', '哑光/雾面', 350.00, 1, '//img14.360buyimg.com/n1/jfs/t1/181863/13/5121/295333/60a66841E5f60f89d/d6e4debb50dfb72b.jpg', 'YSL细管N28');
INSERT INTO Commodity
VALUES (180, 'YSL', '细管', '口红', '#B95B5B', '豆沙', 'N207 透茶香槟', '法国', '哑光/雾面', 350.00, 2, '//img13.360buyimg.com/n1/jfs/t1/190922/3/4294/290016/60a6688eEb6e89bb5/90fd6ddb55997036.jpg', 'YSL细管N207');
INSERT INTO Commodity
VALUES (181, 'YSL', '细管', '口红', '#993616', '正红', 'N214 琥珀南瓜棕', '法国', '哑光/雾面', 350.00, 1, '//img10.360buyimg.com/n1/jfs/t1/180402/15/5118/288651/60a668c7Eb30cb23e/4ff4539224390fb4.jpg', 'YSL细管N214');
INSERT INTO Commodity
VALUES (182, 'YSL', '细管', '口红', '#A23F3A', '复古', 'N30 枣泥红棕', '法国', '哑光/雾面', 350.00, 1, '//img11.360buyimg.com/n1/jfs/t1/183102/25/5173/295116/60a66980E1718c8bc/ecda834feaa81c03.jpg', 'YSL细管N30');
INSERT INTO Commodity
VALUES (183, 'YSL', '细管', '口红', '#B3484E', '豆沙', 'N203 粉晶蜜桃', '法国', '哑光/雾面', 350.00, 2, '//img13.360buyimg.com/n1/jfs/t1/183316/29/5220/290100/60a71d0dE5ce88130/6ffac998c8ac18b3.jpg', 'YSL细管N203');
INSERT INTO Commodity
VALUES (184, 'YSL', '细管', '口红', '#912928', '草莓', 'N204 粉晶厘子', '法国', '哑光/雾面', 350.00, 0, '//img10.360buyimg.com/n1/jfs/t1/180175/5/5131/289851/60a669e2E0faae628/2c4bc7acf5b07c1f.jpg', 'YSL细管N204');
INSERT INTO Commodity
VALUES (185, 'YSL', '细管', '口红', '#B63B3D', '番茄', '107 薄纱酒渍红', '法国', '哑光/雾面', 350.00, 0, '//img10.360buyimg.com/n1/jfs/t1/192000/27/4344/293977/60a7479eE953c4c5a/f701d42bdbd2d76c.jpg', 'YSL细管107');
INSERT INTO Commodity
VALUES (186, 'YSL', '细管', '口红', '#BC302B', '番茄', '416 番茄红', '法国', '哑光/雾面', 350.00, 1, '//img11.360buyimg.com/n1/jfs/t1/175372/36/10749/358952/60a75f0fE53ac2ceb/c6dab8ed9ccb03db.jpg', 'YSL细管416');
INSERT INTO Commodity
VALUES (187, 'YSL', '细管', '口红', '#9B2232', '正红', 'N202 粉晶红栗', '法国', '哑光/雾面', 350.00, 2, '//img11.360buyimg.com/n1/jfs/t1/186942/31/4220/290057/60a66befEaf16fb52/88c06025cbdf5419.jpg', 'YSL细管N202');
INSERT INTO Commodity
VALUES (188, 'YSL', '细管', '口红', '#B93F28', '番茄', 'N213 琥珀茶棕', '法国', '哑光/雾面', 350.00, 2, '//img11.360buyimg.com/n1/jfs/t1/182354/11/5166/290775/60a66c07E0efcef11/d5e49c5539234d53.jpg', 'YSL细管N213');
INSERT INTO Commodity
VALUES (189, 'YSL', '细管', '口红', '#982220', '正红', '1966 红棕色', '法国', '哑光/雾面', 350.00, 1, '//img11.360buyimg.com/n1/jfs/t1/194722/13/4194/310494/60a66c8eE5bcbca5f/bc8dee8c1dab550e.jpg', 'YSL细管1966');
INSERT INTO Commodity
VALUES (190, 'YSL', '黑管唇釉', '唇釉', '#D34329', '番茄', '416 番茄红', '法国', '润泽/镜面', 335.00, 2, '//img12.360buyimg.com/n1/jfs/t1/173792/35/10730/299224/60a66726E69237800/150eae72f6e221f3.jpg', 'YSL黑管唇釉416');
INSERT INTO Commodity
VALUES (191, '兰蔻', '菁纯丝绒雾面哑光唇膏', '口红', '#BB2622', '番茄', '196 胡萝卜色', '法国', '哑光/雾面', 285.00, 1, '//img11.360buyimg.com/n1/jfs/t1/188821/16/4688/126866/60aa6114E54f48fdd/3703775b4fcfd3a3.jpg', '兰蔻菁纯丝绒雾面哑光唇膏196');
INSERT INTO Commodity
VALUES (192, '兰蔻', '菁纯柔雾哑光唇膏', '口红', '#941722', '草莓', '888 小野莓', '法国', '哑光/雾面', 285.00, 1, '//img10.360buyimg.com/n1/jfs/t1/127103/6/19040/130387/60aa60dcE7f3b1e37/b5106abf3f288e98.jpg', '兰蔻菁纯柔雾哑光唇膏888');
INSERT INTO Commodity
VALUES (193, '兰蔻', '菁纯柔雾哑光唇膏', '口红', '#A8464A', '豆沙', '278 肉桂奶茶色', '法国', '哑光/雾面', 285.00, 2, '//img14.360buyimg.com/n1/jfs/t1/186997/28/4685/131562/60aa6098E21babb55/f7779e4c739300da.jpg', '兰蔻菁纯柔雾哑光唇膏278');
INSERT INTO Commodity
VALUES (194, '兰蔻', '菁纯柔雾哑光唇膏', '口红', '#B13220', '番茄', '274 奶茶色', '法国', '哑光/雾面', 285.00, 6, '//img12.360buyimg.com/n1/jfs/t1/175083/37/11337/130952/60aa5f3bE8ee3b29f/de584e9b2eb48193.jpg', '兰蔻菁纯柔雾哑光唇膏274');
INSERT INTO Commodity
VALUES (195, '兰蔻', '菁纯柔雾哑光唇膏', '口红', '#BD3C1F', '番茄', '169 南瓜色', '法国', '哑光/雾面', 285.00, 1, '//img12.360buyimg.com/n1/jfs/t1/184754/6/5569/131508/60aa5fccE27825d69/15fd0312235c1ef9.jpg', '兰蔻菁纯柔雾哑光唇膏169');
INSERT INTO Commodity
VALUES (196, '兰蔻', '菁纯柔雾哑光唇膏', '口红', '#B7352B', '番茄', '196 半哑光', '法国', '哑光/雾面', 285.00, 1, '//img14.360buyimg.com/n1/jfs/t1/172277/22/11157/132935/60aa5ed0E3098cb8b/2555001b172348b3.jpg', '兰蔻菁纯柔雾哑光唇膏196');
INSERT INTO Commodity
VALUES (197, '兰蔻', '菁纯柔雾染唇液', '染唇液', '#AF2631', '复古', '481 浆果葡萄', '法国', '哑光/雾面', 300.00, 1, '//img12.360buyimg.com/n1/jfs/t1/181672/34/5591/131631/60aa6518E0de6591e/c00175ae02111663.jpg', '兰蔻菁纯柔雾染唇液481');
INSERT INTO Commodity
VALUES (198, '兰蔻', '菁纯柔雾染唇液', '染唇液', '#C24C4C', '豆沙', '274 雾茶乌龙', '法国', '哑光/雾面', 300.00, 1, '//img14.360buyimg.com/n1/jfs/t1/192764/7/4580/131921/60aa64baE32697961/4031e14d9a457baf.jpg', '兰蔻菁纯柔雾染唇液274');
INSERT INTO Commodity
VALUES (199, '兰蔻', '菁纯柔雾染唇液', '染唇液', '#AD1201', '砖红', '196 橘气苏打', '法国', '哑光/雾面', 300.00, 0, '//img12.360buyimg.com/n1/jfs/t1/173739/5/11076/132022/60aa642aE7635e5fc/e5d318b5b6f629a1.jpg', '兰蔻菁纯柔雾染唇液196');
INSERT INTO Commodity
VALUES (200, '兰蔻', '菁纯柔雾染唇液', '染唇液', '#B34140', '豆沙', '288 橘咖小奶猫', '法国', '哑光/雾面', 300.00, 3, '//img14.360buyimg.com/n1/jfs/t1/192901/16/4635/133202/60aa62e3E10fb0811/427ca8fcdf7c0020.jpg', '兰蔻菁纯柔雾染唇液288');
INSERT INTO Commodity
VALUES (201, '兰蔻', '菁纯柔雾染唇液', '染唇液', '#B90F34', '番茄', '888 莓果小野猫', '法国', '哑光/雾面', 300.00, 0, '//img11.360buyimg.com/n1/jfs/t1/178750/18/5528/132935/60aa6189E468785f7/c9948a90f0549bd7.jpg', '兰蔻菁纯柔雾染唇液888');
INSERT INTO Commodity
VALUES (202, '卡姿兰', '幻境水光唇釉', '唇釉', '#B63332', '番茄', 'S03 漂浮萤火虫', '中国', '润泽/镜面', 99.00, 1, '//img10.360buyimg.com/n1/jfs/t1/135626/4/7226/104853/5f3a3372Eb0ed5379/669c0c543e6a735f.jpg', '卡姿兰幻境水光唇釉S03');
INSERT INTO Commodity
VALUES (203, '卡姿兰', '幻境水光唇釉', '唇釉', '#C8595F', '西柚', 'S04 温柔白皇后', '中国', '润泽/镜面', 99.00, 4, '//img10.360buyimg.com/n1/jfs/t1/114230/23/15148/106572/5f3a3494E91dd67ec/9872e823b6631b5e.jpg', '卡姿兰幻境水光唇釉S04');
INSERT INTO Commodity
VALUES (204, '卡姿兰', '水吻唇膏', '口红', '#CC0922', '橘红', '11 小辣椒', '中国', '润泽/镜面', 109.00, 3, '//img10.360buyimg.com/n1/jfs/t1/159801/37/8081/93399/6034f8c8Ec9e4aaaa/33de72ea7ccf18f3.jpg', '卡姿兰水吻唇膏11');
INSERT INTO Commodity
VALUES (205, '卡姿兰', '水吻唇膏', '口红', '#AE4E3E', '豆沙', '17 冰奶茶', '中国', '润泽/镜面', 109.00, 1, '//img10.360buyimg.com/n1/jfs/t1/150964/9/19899/93399/6034f911E39c23298/05524b2e57e6e460.jpg', '卡姿兰水吻唇膏17');
INSERT INTO Commodity
VALUES (206, '卡姿兰', '水吻唇膏', '口红', '#B80F10', '砖红', '10 辣条红', '中国', '润泽/镜面', 109.00, 1, '//img14.360buyimg.com/n1/jfs/t1/170129/26/7589/93399/6034f8f6E16e0ce78/bb79456c75ab3328.jpg', '卡姿兰水吻唇膏10');
INSERT INTO Commodity
VALUES (207, '卡姿兰', '水吻唇膏', '口红', '#F77A6E', '西柚', '09 小南瓜', '中国', '润泽/镜面', 109.00, 1, '//img14.360buyimg.com/n1/jfs/t1/166228/33/7371/93399/6034f8e0E4cb7820a/25d65082c498291c.jpg', '卡姿兰水吻唇膏09');
INSERT INTO Commodity
VALUES (208, '卡姿兰', '水吻唇膏', '口红', '#C63E29', '番茄', '24 胡萝卜', '中国', '润泽/镜面', 109.00, 2, '//img10.360buyimg.com/n1/jfs/t1/163051/14/7651/93399/6034f92eEa56f385a/7b182887751d695c.jpg', '卡姿兰水吻唇膏24');
INSERT INTO Commodity
VALUES (209, '卡姿兰', '水吻唇膏', '口红', '#BE574C', '豆沙', '#17 冰奶茶', '中国', '润泽/镜面', 109.00, 1, '//img11.360buyimg.com/n1/jfs/t1/180085/20/3303/42876/6098c4f0Ef16102c6/a7072973c04699c7.jpg', '卡姿兰水吻唇膏#17');
INSERT INTO Commodity
VALUES (210, '卡姿兰', '甜吻唇釉', '唇釉', '#C25A57', '豆沙', 'AM12 蜜桃柚子', '中国', '丝绒', 79.90, 2, '//img13.360buyimg.com/n1/jfs/t1/182415/21/4199/95460/609f455aE87923072/7e92b3886f060d0f.jpg', '卡姿兰甜吻唇釉AM12');
INSERT INTO Commodity
VALUES (211, '卡姿兰', '甜吻唇釉', '唇釉', '#B25752', '豆沙', 'AM11 樱花裸粉', '中国', '丝绒', 79.90, 1, '//img10.360buyimg.com/n1/jfs/t1/178514/13/5128/122188/60a64820Edd3eaa7a/d24f6043ab2fe3ed.jpg', '卡姿兰甜吻唇釉AM11');
INSERT INTO Commodity
VALUES (212, '卡姿兰', '甜吻唇釉', '唇釉', '#C14C3B', '番茄', 'AM17 烂番茄色', '中国', '哑光/雾面', 79.90, 0, '//img11.360buyimg.com/n1/jfs/t1/181060/6/5148/123203/60a646e9Ef6eb1e17/8f7e11f4fc884da8.jpg', '卡姿兰甜吻唇釉AM17');
INSERT INTO Commodity
VALUES (213, '卡姿兰', '甜吻唇釉', '唇釉', '#A6393F', '复古', 'AM19 蔷薇花茶', '中国', '哑光/雾面', 79.90, 1, '//img13.360buyimg.com/n1/jfs/t1/172808/34/10724/125744/60a64719Ecb0eec44/642d0e628604e2c3.jpg', '卡姿兰甜吻唇釉AM19');
INSERT INTO Commodity
VALUES (214, '卡姿兰', '甜吻唇釉', '唇釉', '#C95550', '珊瑚红', 'AM16 暖甜柿红', '中国', '丝绒', 79.90, 0, '//img11.360buyimg.com/n1/jfs/t1/181549/5/5179/122483/60a64854E24430ad8/5df36686efec3a63.jpg', '卡姿兰甜吻唇釉AM16');
INSERT INTO Commodity
VALUES (215, '卡姿兰', '甜吻唇釉', '唇釉', '#9A1830', '正红', 'AM22 复古女王', '中国', '丝绒', 79.90, 1, '//img13.360buyimg.com/n1/jfs/t1/176115/21/9720/97548/609f4530Ea7bd548f/fb3a240c4ba431d5.jpg', '卡姿兰甜吻唇釉AM22');
INSERT INTO Commodity
VALUES (216, '卡姿兰', '甜吻唇釉', '唇釉', '#952033', '正红', 'AM20 法式野树莓', '中国', '其它', 79.90, 1, '//img10.360buyimg.com/n1/jfs/t1/195658/7/3525/62954/60a1c9c1E28fd303e/9559395664adab71.jpg', '卡姿兰甜吻唇釉AM20');
INSERT INTO Commodity
VALUES (217, '卡姿兰', '甜吻唇釉', '唇釉', '#B63631', '番茄', 'AM18 胡萝卜泥', '中国', '哑光/雾面', 79.90, 2, '//img13.360buyimg.com/n1/jfs/t1/173069/6/10721/121978/60a647daE0dc9affa/b0ca2c8b6aec886c.jpg', '卡姿兰甜吻唇釉AM18');
INSERT INTO Commodity
VALUES (218, '卡姿兰', '甜吻唇釉', '唇釉', '#A1453A', '豆沙', 'AM14 港风铁绣红', '中国', '丝绒', 79.90, 1, '//img12.360buyimg.com/n1/jfs/t1/174869/9/9737/97177/609f4504E36b47438/a3c724f2ae435bc8.jpg', '卡姿兰甜吻唇釉AM14');
INSERT INTO Commodity
VALUES (219, '卡姿兰', '甜吻唇釉', '唇釉', '#9D2A2F', '复古', 'AM15 复古红栗', '中国', '丝绒', 79.90, 0, '//img14.360buyimg.com/n1/jfs/t1/191224/10/3219/95805/609f44eaE11544297/08d647be70d74786.jpg', '卡姿兰甜吻唇釉AM15');
INSERT INTO Commodity
VALUES (220, '卡姿兰', '甜吻唇釉', '唇釉', '#93433A', '豆沙', 'AM21 熔岩巧克力', '中国', '哑光/雾面', 79.90, 3, '//img12.360buyimg.com/n1/jfs/t1/195004/18/3219/93390/609f44abEdd63a926/aad2a79fb76662e8.jpg', '卡姿兰甜吻唇釉AM21');
INSERT INTO Commodity
VALUES (221, '卡姿兰', '盈彩唇膏', '口红', '#98252D', '正红', '09 姨妈色', '中国', '润泽/镜面', 72.00, 0, '//img13.360buyimg.com/n1/jfs/t1/178300/31/3069/77804/6096737bE46b9212f/d17950067260d111.jpg', '卡姿兰盈彩唇膏09');
INSERT INTO Commodity
VALUES (222, '卡姿兰', '盈彩唇膏', '口红', '#D40D30', '橘红', '07 正红色', '中国', '润泽/镜面', 72.00, 2, '//img12.360buyimg.com/n1/jfs/t1/174689/10/8448/80047/6096736fE04a7e580/75f318ad402babf0.jpg', '卡姿兰盈彩唇膏07');
INSERT INTO Commodity
VALUES (223, '卡姿兰', '盈彩唇膏', '口红', '#E43E3E', '珊瑚红', '08 显白色', '中国', '润泽/镜面', 72.00, 2, '//img13.360buyimg.com/n1/jfs/t1/180010/26/1521/82470/608aa524Efac20374/2c831f16deb96a28.jpg', '卡姿兰盈彩唇膏08');
INSERT INTO Commodity
VALUES (224, '卡姿兰', '盈彩唇膏', '口红', '#B04035', '番茄', '04 枫叶红', '中国', '润泽/镜面', 72.00, 1, '//img10.360buyimg.com/n1/jfs/t1/191814/27/1970/77168/60967355E704e0382/44392cddfb869930.jpg', '卡姿兰盈彩唇膏04');
INSERT INTO Commodity
VALUES (225, '卡姿兰', '盈彩唇膏', '口红', '#BC4848', '豆沙', '01 豆沙色', '中国', '润泽/镜面', 72.00, 1, '//img12.360buyimg.com/n1/jfs/t1/184930/12/4987/59680/60a6452aEef7d5224/a2bb48197c8eb873.jpg', '卡姿兰盈彩唇膏01');
INSERT INTO Commodity
VALUES (226, '卡姿兰', '盈彩唇膏', '口红', '#E6316B', '珊瑚红', '03 玫红色', '中国', '润泽/镜面', 72.00, 0, '//img12.360buyimg.com/n1/jfs/t1/186070/35/2963/77766/60967344E0f68f8d9/db517c301d5c0f37.jpg', '卡姿兰盈彩唇膏03');
INSERT INTO Commodity
VALUES (227, '卡姿兰', '盈彩唇膏', '口红', '#F76352', '珊瑚红', '02 三文鱼', '中国', '润泽/镜面', 72.00, 0, '//img11.360buyimg.com/n1/jfs/t1/174441/23/8386/75531/60967336E3f7ec1db/6bf658470b1c91f3.jpg', '卡姿兰盈彩唇膏02');
INSERT INTO Commodity
VALUES (228, '卡姿兰', '盈彩唇膏', '口红', '#DD3122', '橘红', '10 血橙色', '中国', '润泽/镜面', 72.00, 0, '//img10.360buyimg.com/n1/jfs/t1/194038/27/1897/77622/60967389Eafe4bf2a/f6cbac21100e871c.jpg', '卡姿兰盈彩唇膏10');
INSERT INTO Commodity
VALUES (229, '卡姿兰', '盈彩唇膏', '口红', '#F26127', '珊瑚红', '05 橘子色', '中国', '润泽/镜面', 72.00, 1, '//img12.360buyimg.com/n1/jfs/t1/175752/34/8527/76575/60967364Eff1ae109/3d068bc8f5f83d08.jpg', '卡姿兰盈彩唇膏05');
INSERT INTO Commodity
VALUES (230, '卡姿兰', '细管焰吻', '口红', '#CF6456', '西柚', 'M42 裸系樱花色', '中国', '哑光/雾面', 109.00, 2, '//img14.360buyimg.com/n1/jfs/t1/177246/23/5851/103259/60abcc50E39a563de/9271d8734438f319.jpg', '卡姿兰细管焰吻M42');
INSERT INTO Commodity
VALUES (231, '卡姿兰', '细管焰吻', '口红', '#A6594C', '豆沙', 'M35 经典陶棕色', '中国', '哑光/雾面', 109.00, 0, '//img13.360buyimg.com/n1/jfs/t1/185554/6/5707/118692/60abcca4Efe0469fd/67042d5b112e2307.jpg', '卡姿兰细管焰吻M35');
INSERT INTO Commodity
VALUES (232, '卡姿兰', '细管焰吻', '口红', '#D0736B', '西柚', 'M31 奶桃西柚色', '中国', '哑光/雾面', 109.00, 1, '//img12.360buyimg.com/n1/jfs/t1/191948/15/4852/118692/60abcc87E26c78202/942a927fc1d04ecf.jpg', '卡姿兰细管焰吻M31');
INSERT INTO Commodity
VALUES (233, '卡姿兰', '细管焰吻', '口红', '#D03D45', '珊瑚红', 'S58 港式枫红色', '中国', '哑光/雾面', 109.00, 1, '//img12.360buyimg.com/n1/jfs/t1/181560/40/5809/103259/60abcc38Ed126db21/4d2cd1d66c7785de.jpg', '卡姿兰细管焰吻S58');
INSERT INTO Commodity
VALUES (234, '卡姿兰', '细管焰吻', '口红', '#DB665F', '西柚', 'AM42 秋叶正红色', '中国', '哑光/雾面', 109.00, 1, '//img14.360buyimg.com/n1/jfs/t1/186550/33/4816/118692/60abccbfE7e84903f/78b6599ced45f5d3.jpg', '卡姿兰细管焰吻AM42');
INSERT INTO Commodity
VALUES (235, '卡姿兰', '细管焰吻', '口红', '#9D4B4A', '豆沙', 'S54 经典牛血色', '中国', '哑光/雾面', 109.00, 3, '//img14.360buyimg.com/n1/jfs/t1/173555/4/11193/103259/60abcc18Eac2454c8/dea88d57c472af9f.jpg', '卡姿兰细管焰吻S54');
INSERT INTO Commodity
VALUES (236, '卡姿兰', '细管焰吻', '口红', '#B14D4B', '豆沙', 'AM43 暖调酒红色', '中国', '哑光/雾面', 109.00, 1, '//img14.360buyimg.com/n1/jfs/t1/174152/35/11368/118692/60abccd7Eeb9f4d60/db3f514766c7753c.jpg', '卡姿兰细管焰吻AM43');
INSERT INTO Commodity
VALUES (237, '卡姿兰', '细管焰吻', '口红', '#C95A5C', '西柚', 'M52 番茄橘红色', '中国', '哑光/雾面', 109.00, 2, '//img12.360buyimg.com/n1/jfs/t1/172652/4/11484/103259/60abcc6bE117ab637/c552eaf6fabea2e7.jpg', '卡姿兰细管焰吻M52');
INSERT INTO Commodity
VALUES (238, '卡姿兰', '金致胶原轻雾感唇膏', '口红', '#A71411', '砖红', '8 中国正红', '中国', '润泽/镜面', 59.00, 2, '//img12.360buyimg.com/n1/jfs/t1/100805/9/17261/143982/5e87386bEe19a8d1f/82da7d7f580dc185.jpg', '卡姿兰金致胶原轻雾感唇膏8');
INSERT INTO Commodity
VALUES (239, '卡姿兰', '金致胶原轻雾感唇膏', '口红', '#DE5856', '珊瑚红', '16 炽烈', '中国', '哑光/雾面', 89.00, 0, '//img14.360buyimg.com/n1/jfs/t1/60168/16/6148/92743/5d4392f2Ea7df1fb7/09381c904fbf80aa.jpg', '卡姿兰金致胶原轻雾感唇膏16');
INSERT INTO Commodity
VALUES (240, '卡姿兰', '金致胶原轻雾感唇膏', '口红', '#B32D29', '番茄', '17 辛辣', '中国', '哑光/雾面', 89.00, 0, '//img11.360buyimg.com/n1/jfs/t1/97568/33/17565/173699/5e873834Eaa3f6371/0b4c802ce2e0509e.jpg', '卡姿兰金致胶原轻雾感唇膏17');
INSERT INTO Commodity
VALUES (241, '卡姿兰', '金致胶原轻雾感唇膏', '口红', '#C77571', '西柚', '20 真我', '中国', '哑光/雾面', 89.00, 3, '//img11.360buyimg.com/n1/jfs/t1/116472/1/114/169958/5e8737a7Ec31dd22e/a5de9575d7932e6a.jpg', '卡姿兰金致胶原轻雾感唇膏20');
INSERT INTO Commodity
VALUES (242, '卡姿兰', '金致胶原轻雾感唇膏', '口红', '#FD3976', '珊瑚红', '1 东京樱粉', '中国', '润泽/镜面', 59.00, 3, '//img13.360buyimg.com/n1/jfs/t1/83653/21/5249/140348/5d36d306Ef10ccab5/e59b7660c898743f.jpg', '卡姿兰金致胶原轻雾感唇膏1');
INSERT INTO Commodity
VALUES (243, '卡姿兰', '金致胶原轻雾感唇膏', '口红', '#98343E', '复古', '13 暧昧', '中国', '哑光/雾面', 89.00, 3, '//img10.360buyimg.com/n1/jfs/t1/102907/22/17327/170948/5e8737f3E762d1b3c/e329a6dbf8423073.jpg', '卡姿兰金致胶原轻雾感唇膏13');
INSERT INTO Commodity
VALUES (244, '卡姿兰', '金致胶原轻雾感唇膏', '口红', '#A12835', '复古', '18 嫉妒', '中国', '哑光/雾面', 89.00, 2, '//img14.360buyimg.com/n1/jfs/t1/107950/24/11171/173936/5e87381cEeacc8c11/99a7757436fbc638.jpg', '卡姿兰金致胶原轻雾感唇膏18');
INSERT INTO Commodity
VALUES (245, '卡姿兰', '金致胶原轻雾感唇膏', '口红', '#B33C3E', '番茄', '19 欲望', '中国', '哑光/雾面', 89.00, 1, '//img11.360buyimg.com/n1/jfs/t1/95429/35/17519/169375/5e873802E8dde5c42/605f628f8cce6981.jpg', '卡姿兰金致胶原轻雾感唇膏19');
INSERT INTO Commodity
VALUES (246, '卡姿兰', '雾吻唇膏', '口红', '#D06962', '西柚', 'M03 铁锈辣椒', '中国', '哑光/雾面', 89.00, 1, '//img13.360buyimg.com/n1/jfs/t1/145170/29/19743/118040/60a7b7c5Ecb67efd8/1becb81b54af91bd.jpg', '卡姿兰雾吻唇膏M03');
INSERT INTO Commodity
VALUES (247, '卡姿兰', '雾吻唇膏', '口红', '#CF5B60', '西柚', 'M13 莓莓浆果', '中国', '哑光/雾面', 89.00, 1, '//img12.360buyimg.com/n1/jfs/t1/171655/8/10805/118040/60a7b84cE80c970c3/91e9195ea9eb0df5.jpg', '卡姿兰雾吻唇膏M13');
INSERT INTO Commodity
VALUES (248, '卡姿兰', '雾吻唇膏', '口红', '#C05C62', '豆沙', 'M14 多肉粉荔', '中国', '哑光/雾面', 89.00, 2, '//img13.360buyimg.com/n1/jfs/t1/189391/8/2016/57849/60966fb1E2233a508/16dab2487e0c5c19.jpg', '卡姿兰雾吻唇膏M14');
INSERT INTO Commodity
VALUES (249, '卡姿兰', '雾吻唇膏', '口红', '#D16252', '珊瑚橘', 'M05 奶油萝卜', '中国', '哑光/雾面', 119.00, 2, '//img14.360buyimg.com/n1/jfs/t1/173941/2/10768/46537/60a74614E7d0be3d5/c8628cc35f91902e.jpg', '卡姿兰雾吻唇膏M05');
INSERT INTO Commodity
VALUES (250, '卡姿兰', '雾吻唇膏', '口红', '#C04756', '豆沙', 'M01 樱桃果酱', '中国', '哑光/雾面', 89.00, 0, '//img14.360buyimg.com/n1/jfs/t1/172119/25/10842/118040/60a7b6f2E132baba2/ea58ba5a99daef09.jpg', '卡姿兰雾吻唇膏M01');
INSERT INTO Commodity
VALUES (251, '卡姿兰', '雾吻唇膏', '口红', '#CF4149', '珊瑚红', 'M02 糖渍山楂', '中国', '哑光/雾面', 89.00, 2, '//img11.360buyimg.com/n1/jfs/t1/174423/5/10947/118040/60a7b7b1Ecd6bcd5e/23c476abb863926a.jpg', '卡姿兰雾吻唇膏M02');
INSERT INTO Commodity
VALUES (252, '卡姿兰', '雾吻唇膏', '口红', '#C76560', '西柚', 'M04 枫叶慕斯', '中国', '哑光/雾面', 89.00, 0, '//img13.360buyimg.com/n1/jfs/t1/191632/34/4436/118040/60a7b7e6Efd615857/f09a0d5d7d85fe00.jpg', '卡姿兰雾吻唇膏M04');
INSERT INTO Commodity
VALUES (253, '卡姿兰', '雾吻唇膏', '口红', '#B16A5B', '豆沙', 'M07 焦糖拿铁', '中国', '哑光/雾面', 89.00, 0, '//img14.360buyimg.com/n1/jfs/t1/186077/18/5186/118040/60a7b815Ef571615a/9b2dc826f1aac152.jpg', '卡姿兰雾吻唇膏M07');
INSERT INTO Commodity
VALUES (254, '卡姿兰', '雾吻唇膏', '口红', '#AF655F', '豆沙', 'M12 黑糖可可', '中国', '哑光/雾面', 89.00, 2, '//img12.360buyimg.com/n1/jfs/t1/176317/22/10668/118040/60a7b834E299ccb4c/38f2c8af08f6c59c.jpg', '卡姿兰雾吻唇膏M12');
INSERT INTO Commodity
VALUES (255, '卡姿兰', '霓幻变色唇膏', '口红', '#EC6B7D', '西柚', '01 樱花粉', '中国', '润泽/镜面', 89.00, 5, '//img12.360buyimg.com/n1/jfs/t1/181041/9/1578/78213/608aa46aEabc7b806/abc8014c72e5ffa2.jpg', '卡姿兰霓幻变色唇膏01');
INSERT INTO Commodity
VALUES (256, '娇兰', '臻彩宝石唇膏', '口红', '#E10A27', '橘红', 'N°214 砖红色', '法国', '哑光/雾面', 280.00, 2, '//img12.360buyimg.com/n1/jfs/t1/176080/35/10623/380114/60a6868fE9695b616/5a22c117cb6e189a.jpg', '娇兰臻彩宝石唇膏N°214');
INSERT INTO Commodity
VALUES (257, '娇兰', '臻彩宝石唇膏', '口红', '#CB1C15', '橘红', 'N°28 橘红色', '法国', '哑光/雾面', 280.00, 2, '//img10.360buyimg.com/n1/jfs/t1/189199/11/4247/380209/60a685a0E0a3d76ec/0314a3ab5af6ef15.jpg', '娇兰臻彩宝石唇膏N°28');
INSERT INTO Commodity
VALUES (258, '娇兰', '臻彩宝石唇膏', '口红', '#AC6056', '豆沙', 'N°03 烟熏玫瑰色', '法国', '哑光/雾面', 280.00, 1, '//img10.360buyimg.com/n1/jfs/t1/190161/24/4230/380420/60a68477Ed23dabf8/61c49714f8dee16b.jpg', '娇兰臻彩宝石唇膏N°03');
INSERT INTO Commodity
VALUES (259, '娇兰', '臻彩宝石唇膏', '口红', '#CB282D', '番茄', 'N°24 木玫瑰色', '法国', '哑光/雾面', 280.00, 3, '//img12.360buyimg.com/n1/jfs/t1/186950/26/4248/379823/60a684daE8a5cd0a0/dbb31cbe64e0d17c.jpg', '娇兰臻彩宝石唇膏N°24');
INSERT INTO Commodity
VALUES (260, '娇兰', '臻彩宝石唇膏', '口红', '#C93B31', '番茄', 'N°45 朱红色', '法国', '哑光/雾面', 280.00, 1, '//img10.360buyimg.com/n1/jfs/t1/177813/37/5196/379043/60a68654E9896965d/bb3e3be86ec9bbf9.jpg', '娇兰臻彩宝石唇膏N°45');
INSERT INTO Commodity
VALUES (261, '娇兰', '臻彩宝石唇膏', '口红', '#C1484F', '豆沙', 'N°62 俏粉色', '法国', '哑光/雾面', 280.00, 2, '//img11.360buyimg.com/n1/jfs/t1/180708/23/5149/380379/60a685d5Ed3d6c9ba/bbe3579bd6d03972.jpg', '娇兰臻彩宝石唇膏N°62');
INSERT INTO Commodity
VALUES (262, '娇兰', '臻彩宝石唇膏', '口红', '#D63A29', '橘红', 'N°235 冰糖柿子色', '法国', '其它', 290.00, 3, '//img13.360buyimg.com/n1/jfs/t1/190952/4/4212/382123/60a686e0E38d923f6/480f5c569f281569.jpg', '娇兰臻彩宝石唇膏N°235');
INSERT INTO Commodity
VALUES (263, '娇兰', '臻彩宝石唇膏', '口红', '#A6413D', '豆沙', 'N°30 复古南瓜色', '法国', '哑光/雾面', 284.00, 5, '//img14.360buyimg.com/n1/jfs/t1/187997/2/4585/379497/60a93103Eafa626e9/dc151eb062c6dbfc.jpg', '娇兰臻彩宝石唇膏N°30');
INSERT INTO Commodity
VALUES (264, '娇兰', '臻彩宝石唇膏', '口红', '#962527', '正红', 'N°26 干枫叶色', '法国', '哑光/雾面', 284.00, 0, '//img13.360buyimg.com/n1/jfs/t1/110755/29/17710/452411/60a930c7Efbf52236/cb9e867f0ad511a5.jpg', '娇兰臻彩宝石唇膏N°26');
INSERT INTO Commodity
VALUES (265, '娇兰', '臻彩宝石唇膏', '口红', '#CA1A1E', '橘红', 'N°27 哑光色', '法国', '哑光/雾面', 284.00, 2, '//img12.360buyimg.com/n1/jfs/t1/193492/39/4422/451940/60a930e1E8296b3f7/4411b4976f7d71c5.jpg', '娇兰臻彩宝石唇膏N°27');
INSERT INTO Commodity
VALUES (266, '娇兰', '臻彩宝石唇膏', '口红', '#C5131F', '橘红', 'N°25 正红色', '法国', '哑光/雾面', 280.00, 1, '//img10.360buyimg.com/n1/jfs/t1/183520/39/5128/380211/60a68512Ed6297bc3/21631df4d7d622c6.jpg', '娇兰臻彩宝石唇膏N°25');
INSERT INTO Commodity
VALUES (267, '完美日记', '丝绒唇釉', '唇釉', '#7E2C26', '铁锈', 'V05 锈棕法兰绒', '中国', '丝绒', 59.90, 0, '//img11.360buyimg.com/n1/jfs/t1/181173/8/5185/348907/60a61b31E3677b25f/e53df428977240bc.jpg', '完美日记丝绒唇釉V05');
INSERT INTO Commodity
VALUES (268, '完美日记', '丝绒唇釉', '唇釉', '#A31B33', '复古', 'V06 梅渍天鹅绒', '中国', '丝绒', 59.90, 0, '//img13.360buyimg.com/n1/jfs/t1/181173/8/5185/348907/60a61b31E3677b25f/e53df428977240bc.jpg', '完美日记丝绒唇釉V06');
INSERT INTO Commodity
VALUES (269, '完美日记', '丝绒唇釉', '唇釉', '#8B242B', '草莓', 'V08 桃金天鹅绒', '中国', '丝绒', 59.90, 1, '//img10.360buyimg.com/n1/jfs/t1/181173/8/5185/348907/60a61b31E3677b25f/e53df428977240bc.jpg', '完美日记丝绒唇釉V08');
INSERT INTO Commodity
VALUES (270, '完美日记', '丝绒唇釉', '唇釉', '#DA594A', '珊瑚红', 'V10 甜桃舞步', '中国', '丝绒', 59.90, 1, '//img11.360buyimg.com/n1/jfs/t1/181129/15/4962/349473/60a6113eE0897aa3c/2ecb23ea8d7b2a5c.jpg', '完美日记丝绒唇釉V10');
INSERT INTO Commodity
VALUES (271, '完美日记', '丝绒唇釉', '唇釉', '#D16468', '西柚', 'V11 红粉佳人', '中国', '丝绒', 59.90, 0, '//img13.360buyimg.com/n1/jfs/t1/181129/15/4962/349473/60a6113eE0897aa3c/2ecb23ea8d7b2a5c.jpg', '完美日记丝绒唇釉V11');
INSERT INTO Commodity
VALUES (272, '完美日记', '丝绒唇釉', '唇釉', '#C94635', '番茄', 'V13 棕情欢愉', '中国', '丝绒', 59.90, 1, '//img13.360buyimg.com/n1/jfs/t1/181129/15/4962/349473/60a6113eE0897aa3c/2ecb23ea8d7b2a5c.jpg', '完美日记丝绒唇釉V13');
INSERT INTO Commodity
VALUES (273, '完美日记', '丝绒唇釉', '唇釉', '#99473E', '豆沙', 'V18 暗影深咖', '中国', '丝绒', 69.90, 2, '//img10.360buyimg.com/n1/jfs/t1/191332/1/4151/343424/60a61244E00d70063/a0069df672f4a2fd.jpg', '完美日记丝绒唇釉V18');
INSERT INTO Commodity
VALUES (274, '完美日记', '丝绒唇釉', '唇釉', '#971F27', '正红', 'V21 花野红罂', '中国', '丝绒', 69.90, 2, '//img13.360buyimg.com/n1/jfs/t1/186856/30/4243/355147/60a612e2Ecb3c31b4/b3859c18ad7ba8f1.jpg', '完美日记丝绒唇釉V21');
INSERT INTO Commodity
VALUES (275, '完美日记', '丝绒唇釉', '唇釉', '#A82535', '复古', 'V04 勃艮第帷幕', '中国', '丝绒', 59.90, 1, '//img10.360buyimg.com/n1/jfs/t1/181173/8/5185/348907/60a61b31E3677b25f/e53df428977240bc.jpg', '完美日记丝绒唇釉V04');
INSERT INTO Commodity
VALUES (276, '完美日记', '丝绒唇釉', '唇釉', '#972C2A', '正红', 'V01 红梨天鹅绒', '中国', '丝绒', 59.90, 0, '//img14.360buyimg.com/n1/jfs/t1/181173/8/5185/348907/60a61b31E3677b25f/e53df428977240bc.jpg', '完美日记丝绒唇釉V01');
INSERT INTO Commodity
VALUES (277, '完美日记', '丝绒唇釉', '唇釉', '#B52834', '番茄', 'V03 正红燕尾服', '中国', '丝绒', 59.90, 0, '//img11.360buyimg.com/n1/jfs/t1/181173/8/5185/348907/60a61b31E3677b25f/e53df428977240bc.jpg', '完美日记丝绒唇釉V03');
INSERT INTO Commodity
VALUES (278, '完美日记', '丝绒唇釉', '唇釉', '#AC3A2E', '复古', 'V07 甜柿天鹅绒', '中国', '丝绒', 59.90, 2, '//img13.360buyimg.com/n1/jfs/t1/181173/8/5185/348907/60a61b31E3677b25f/e53df428977240bc.jpg', '完美日记丝绒唇釉V07');
INSERT INTO Commodity
VALUES (279, '完美日记', '丝绒唇釉', '唇釉', '#981521', '草莓', 'V02 夜玫瑰战袍', '中国', '丝绒', 59.90, 2, '//img13.360buyimg.com/n1/jfs/t1/181173/8/5185/348907/60a61b31E3677b25f/e53df428977240bc.jpg', '完美日记丝绒唇釉V02');
INSERT INTO Commodity
VALUES (280, '完美日记', '丝绒唇釉', '唇釉', '#C84333', '番茄', 'V09 好运锦鲤', '中国', '丝绒', 59.90, 2, '//img13.360buyimg.com/n1/jfs/t1/181173/8/5185/348907/60a61b31E3677b25f/e53df428977240bc.jpg', '完美日记丝绒唇釉V09');
INSERT INTO Commodity
VALUES (281, '完美日记', '丝绒唇釉', '唇釉', '#A64137', '复古', 'V16 暗生情愫', '中国', '丝绒', 59.90, 2, '//img11.360buyimg.com/n1/jfs/t1/181129/15/4962/349473/60a6113eE0897aa3c/2ecb23ea8d7b2a5c.jpg', '完美日记丝绒唇釉V16');
INSERT INTO Commodity
VALUES (282, '完美日记', '丝绒唇釉', '唇釉', '#C24540', '番茄', 'V14 绯色耳语', '中国', '丝绒', 59.90, 2, '//img10.360buyimg.com/n1/jfs/t1/181129/15/4962/349473/60a6113eE0897aa3c/2ecb23ea8d7b2a5c.jpg', '完美日记丝绒唇釉V14');
INSERT INTO Commodity
VALUES (283, '完美日记', '丝绒唇釉', '唇釉', '#D43C3D', '珊瑚红', 'V15 杯边红吻', '中国', '丝绒', 59.90, 0, '//img13.360buyimg.com/n1/jfs/t1/181129/15/4962/349473/60a6113eE0897aa3c/2ecb23ea8d7b2a5c.jpg', '完美日记丝绒唇釉V15');
INSERT INTO Commodity
VALUES (284, '完美日记', '丝绒唇釉', '唇釉', '#B42F40', '复古', 'V12 玫瑰之夜', '中国', '丝绒', 59.90, 1, '//img12.360buyimg.com/n1/jfs/t1/181129/15/4962/349473/60a6113eE0897aa3c/2ecb23ea8d7b2a5c.jpg', '完美日记丝绒唇釉V12');
INSERT INTO Commodity
VALUES (285, '完美日记', '丝绒唇釉', '唇釉', '#992E33', '复古', 'V17 血色帷幕', '中国', '丝绒', 69.90, 2, '//img12.360buyimg.com/n1/jfs/t1/191332/1/4151/343424/60a61244E00d70063/a0069df672f4a2fd.jpg', '完美日记丝绒唇釉V17');
INSERT INTO Commodity
VALUES (286, '完美日记', '丝绒唇釉', '唇釉', '#A73E46', '豆沙', 'V20 池边粉漪', '中国', '丝绒', 69.90, 1, '//img14.360buyimg.com/n1/jfs/t1/185630/14/5028/351412/60a612cbE4efa7222/762b8e61eb1344af.jpg', '完美日记丝绒唇釉V20');
INSERT INTO Commodity
VALUES (287, '完美日记', '丝绒唇釉莫奈限定版', '唇釉', '#BF2E25', '番茄', 'V07 甜柿天鹅绒', '中国', '丝绒', 69.90, 4, '//img14.360buyimg.com/n1/jfs/t1/176375/17/10518/359091/60a612b0Eb20d56b2/078de0aa3be794c2.jpg', '完美日记丝绒唇釉莫奈限定版V07');
INSERT INTO Commodity
VALUES (288, '完美日记', '反重力唇釉', '唇釉', '#D21010', '橘红', 'G05 炽焰掠影', '中国', '哑光/雾面', 59.90, 2, '//img12.360buyimg.com/n1/jfs/t1/38272/20/15910/127581/60a61631Ed6e10020/a2fb9bf462fe86cf.jpg', '完美日记反重力唇釉G05');
INSERT INTO Commodity
VALUES (289, '完美日记', '反重力唇釉', '唇釉', '#E34F50', '珊瑚红', 'G02 洛丽觉醒', '中国', '哑光/雾面', 59.90, 1, '//img13.360buyimg.com/n1/jfs/t1/177011/2/5077/126346/60a615d6E3cc4714e/cf1deaadab50b504.jpg', '完美日记反重力唇釉G02');
INSERT INTO Commodity
VALUES (290, '完美日记', '反重力唇釉', '唇釉', '#BA3E3B', '番茄', 'G03 玫瑰星云', '中国', '哑光/雾面', 59.90, 1, '//img10.360buyimg.com/n1/jfs/t1/176100/29/10549/124684/60a61608E27688565/ed2a70d63f96a7fa.jpg', '完美日记反重力唇釉G03');
INSERT INTO Commodity
VALUES (291, '完美日记', '反重力唇釉', '唇釉', '#E7473E', '珊瑚红', 'G01 时空恋人', '中国', '哑光/雾面', 59.90, 1, '//img12.360buyimg.com/n1/jfs/t1/191915/37/4136/126694/60a6159eEc2271991/71b188fff31674dc.jpg', '完美日记反重力唇釉G01');
INSERT INTO Commodity
VALUES (292, '完美日记', '反重力唇釉', '唇釉', '#CB291E', '橘红', 'G08 烈焰星球', '中国', '哑光/雾面', 59.90, 1, '//img14.360buyimg.com/n1/jfs/t1/90641/40/19143/127542/60a61668E9b57d4b0/03a25bfd6b2096c2.jpg', '完美日记反重力唇釉G08');
INSERT INTO Commodity
VALUES (293, '完美日记', '反重力唇釉', '唇釉', '#9D2B34', '复古', 'G09 超感熔岩', '中国', '哑光/雾面', 59.90, 0, '//img10.360buyimg.com/n1/jfs/t1/188179/24/4141/121417/60a6169dE9322e6a7/64a4d1a4e9b34a75.jpg', '完美日记反重力唇釉G09');
INSERT INTO Commodity
VALUES (294, '完美日记', '反重力唇釉', '唇釉', '#AC4D49', '豆沙', 'G12 木星上行', '中国', '哑光/雾面', 59.90, 1, '//img11.360buyimg.com/n1/jfs/t1/174847/12/10451/124305/60a616e1E5949f588/842dcb66fd3c9f9b.jpg', '完美日记反重力唇釉G12');
INSERT INTO Commodity
VALUES (295, '完美日记', '名片唇釉', '唇釉', '#DC4637', '珊瑚红', '008 Long time no see 柿子色', '中国', '其它', 69.90, 1, '//img11.360buyimg.com/n1/jfs/t1/184680/21/5470/151906/60a8b27dEe20c1d12/eade12f213ac0fff.jpg', '完美日记名片唇釉008');
INSERT INTO Commodity
VALUES (296, '完美日记', '名片唇釉', '唇釉', '#E06465', '西柚', '002 Nice to meet you 无花果粉', '中国', '其它', 69.90, 2, '//img13.360buyimg.com/n1/jfs/t1/169479/8/10913/294771/60a67e15E505d5d03/548d25d1bd7f4b08.jpg', '完美日记名片唇釉002');
INSERT INTO Commodity
VALUES (297, '完美日记', '名片唇釉', '唇釉', '#C35F53', '豆沙', '006 Huge me 土棕色', '中国', '其它', 69.90, 2, '//img11.360buyimg.com/n1/jfs/t1/182826/33/5345/151906/60a8b245Eab9acf53/e38f52f11801ab99.jpg', '完美日记名片唇釉006');
INSERT INTO Commodity
VALUES (298, '完美日记', '名片唇釉', '唇釉', '#B03432', '番茄', '003 Don\'t judge me 红棕色', '中国', '其它', 69.90, 1, '//img10.360buyimg.com/n1/jfs/t1/172260/10/10866/151906/60a8b1eaEea7162e3/ff6fb12818db01fb.jpg', '完美日记名片唇釉003');
INSERT INTO Commodity
VALUES (299, '完美日记', '名片唇釉', '唇釉', '#E09686', '西柚', '001 Trust me 深裸色', '中国', '其它', 69.90, 1, '//img11.360buyimg.com/n1/jfs/t1/195244/15/4436/156059/60a8b1cbE684ecc2e/6a0f3d2a62d4a532.jpg', '完美日记名片唇釉001');
INSERT INTO Commodity
VALUES (300, '完美日记', '名片唇釉', '唇釉', '#CF7278', '西柚', '005 Leave me alone 灰紫色', '中国', '其它', 69.90, 1, '//img10.360buyimg.com/n1/jfs/t1/183522/22/5415/156059/60a8b22aE3eb4e230/c755c454297ee95c.jpg', '完美日记名片唇釉005');
INSERT INTO Commodity
VALUES (301, '完美日记', '名片唇釉', '唇釉', '#D13235', '橘红', '007 Call me 草莓红', '中国', '其它', 69.90, 0, '//img12.360buyimg.com/n1/jfs/t1/196735/7/4254/156082/60a8b259Ea875f212/94b67a252efd93f4.jpg', '完美日记名片唇釉007');
INSERT INTO Commodity
VALUES (302, '完美日记', '名片唇釉', '唇釉', '#A7142D', '复古', '004 Look at me 浆果色', '中国', '其它', 69.90, 1, '//img10.360buyimg.com/n1/jfs/t1/172260/10/10866/151906/60a8b1eaEea7162e3/ff6fb12818db01fb.jpg', '完美日记名片唇釉004');
INSERT INTO Commodity
VALUES (303, '完美日记', '哑光唇釉', '唇釉', '#DE3C3D', '珊瑚红', '908 国王游戏', '中国', '哑光/雾面', 39.90, 1, '//img10.360buyimg.com/n1/jfs/t1/186231/21/5014/328770/60a60bddEf5d5c228/870136baec185adc.jpg', '完美日记哑光唇釉908');
INSERT INTO Commodity
VALUES (304, '完美日记', '哑光唇釉', '唇釉', '#DB706A', '西柚', '901 致爱丽丝', '中国', '哑光/雾面', 39.90, 1, '//img12.360buyimg.com/n1/jfs/t1/186231/21/5014/328770/60a60bddEf5d5c228/870136baec185adc.jpg', '完美日记哑光唇釉901');
INSERT INTO Commodity
VALUES (305, '完美日记', '哑光唇釉', '唇釉', '#961E20', '草莓', '909 小圆舞曲', '中国', '哑光/雾面', 39.90, 2, '//img14.360buyimg.com/n1/jfs/t1/186231/21/5014/328770/60a60bddEf5d5c228/870136baec185adc.jpg', '完美日记哑光唇釉909');
INSERT INTO Commodity
VALUES (306, '完美日记', '哑光唇釉', '唇釉', '#AE4F5C', '豆沙', '910 歌与夜莺', '中国', '哑光/雾面', 39.90, 1, '//img11.360buyimg.com/n1/jfs/t1/186231/21/5014/328770/60a60bddEf5d5c228/870136baec185adc.jpg', '完美日记哑光唇釉910');
INSERT INTO Commodity
VALUES (307, '完美日记', '哑光唇釉', '唇釉', '#C05644', '豆沙', '904 伯爵夫人', '中国', '哑光/雾面', 39.90, 2, '//img13.360buyimg.com/n1/jfs/t1/186231/21/5014/328770/60a60bddEf5d5c228/870136baec185adc.jpg', '完美日记哑光唇釉904');
INSERT INTO Commodity
VALUES (308, '完美日记', '哑光唇釉', '唇釉', '#AD5B45', '豆沙', '906 异乡旅人', '中国', '哑光/雾面', 39.90, 0, '//img12.360buyimg.com/n1/jfs/t1/186231/21/5014/328770/60a60bddEf5d5c228/870136baec185adc.jpg', '完美日记哑光唇釉906');
INSERT INTO Commodity
VALUES (309, '完美日记', '哑光唇釉', '唇釉', '#DC857B', '西柚', '905 野兽派对', '中国', '哑光/雾面', 39.90, 1, '//img10.360buyimg.com/n1/jfs/t1/186231/21/5014/328770/60a60bddEf5d5c228/870136baec185adc.jpg', '完美日记哑光唇釉905');
INSERT INTO Commodity
VALUES (310, '完美日记', '哑光唇釉', '唇釉', '#D85344', '珊瑚红', '907 枫叶诗人', '中国', '哑光/雾面', 39.90, 1, '//img13.360buyimg.com/n1/jfs/t1/186231/21/5014/328770/60a60bddEf5d5c228/870136baec185adc.jpg', '完美日记哑光唇釉907');
INSERT INTO Commodity
VALUES (311, '完美日记', '哑光唇釉', '唇釉', '#AF5140', '豆沙', '922 秋日私语', '中国', '哑光/雾面', 39.90, 1, '//img12.360buyimg.com/n1/jfs/t1/186231/21/5014/328770/60a60bddEf5d5c228/870136baec185adc.jpg', '完美日记哑光唇釉922');
INSERT INTO Commodity
VALUES (312, '完美日记', '哑光唇釉', '唇釉', '#B83C51', '豆沙', '927 蔷薇印记', '中国', '哑光/雾面', 39.90, 1, '//img11.360buyimg.com/n1/jfs/t1/186231/21/5014/328770/60a60bddEf5d5c228/870136baec185adc.jpg', '完美日记哑光唇釉927');
INSERT INTO Commodity
VALUES (313, '完美日记', '哑光唇釉', '唇釉', '#C36250', '豆沙', '936 伯爵红茶', '中国', '哑光/雾面', 39.90, 1, '//img13.360buyimg.com/n1/jfs/t1/186231/21/5014/328770/60a60bddEf5d5c228/870136baec185adc.jpg', '完美日记哑光唇釉936');
INSERT INTO Commodity
VALUES (314, '完美日记', '哑光唇釉', '唇釉', '#933438', '复古', '939 爆浆车厘', '中国', '哑光/雾面', 39.90, 2, '//img14.360buyimg.com/n1/jfs/t1/186231/21/5014/328770/60a60bddEf5d5c228/870136baec185adc.jpg', '完美日记哑光唇釉939');
INSERT INTO Commodity
VALUES (315, '完美日记', '哑光唇釉', '唇釉', '#A04240', '豆沙', '934 危情可可', '中国', '哑光/雾面', 39.90, 1, '//img10.360buyimg.com/n1/jfs/t1/186231/21/5014/328770/60a60bddEf5d5c228/870136baec185adc.jpg', '完美日记哑光唇釉934');
INSERT INTO Commodity
VALUES (316, '完美日记', '哑光唇釉', '唇釉', '#884237', '红棕', '942 土棕枣红', '中国', '哑光/雾面', 39.90, 1, '//img13.360buyimg.com/n1/jfs/t1/188570/34/4198/333563/60a60e50E2b988453/4e760f1a242f51f5.jpg', '完美日记哑光唇釉942');
INSERT INTO Commodity
VALUES (317, '完美日记', '哑光唇釉', '唇釉', '#BD4747', '豆沙', '938 日落大道', '中国', '哑光/雾面', 39.90, 0, '//img11.360buyimg.com/n1/jfs/t1/186231/21/5014/328770/60a60bddEf5d5c228/870136baec185adc.jpg', '完美日记哑光唇釉938');
INSERT INTO Commodity
VALUES (318, '完美日记', '哑光唇釉', '唇釉', '#CC7271', '西柚', '940 烟粉豆沙', '中国', '哑光/雾面', 39.90, 0, '//img10.360buyimg.com/n1/jfs/t1/186231/21/5014/328770/60a60bddEf5d5c228/870136baec185adc.jpg', '完美日记哑光唇釉940');
INSERT INTO Commodity
VALUES (319, '完美日记', '哑光唇釉', '唇釉', '#8C3C31', '红棕', '941 焦糖炼瓦', '中国', '哑光/雾面', 39.90, 3, '//img10.360buyimg.com/n1/jfs/t1/188570/34/4198/333563/60a60e50E2b988453/4e760f1a242f51f5.jpg', '完美日记哑光唇釉941');
INSERT INTO Commodity
VALUES (320, '完美日记', '小粉钻', '口红', '#A84E51', '豆沙', '12 浓郁豆沙色', '中国', '丝绒', 99.90, 0, '//img11.360buyimg.com/n1/jfs/t1/195726/39/3292/222773/60a00378E4d0aabe7/90198ee9a12440e1.jpg', '完美日记小粉钻12');
INSERT INTO Commodity
VALUES (321, '完美日记', '小粉钻', '口红', '#AA5A5B', '豆沙', '11 肉桂奶茶色', '中国', '丝绒', 99.90, 0, '//img14.360buyimg.com/n1/jfs/t1/184824/1/4259/222949/60a00307Ec4b2f4dd/df76667910b49a4c.jpg', '完美日记小粉钻11');
INSERT INTO Commodity
VALUES (322, '完美日记', '小粉钻', '口红', '#C34649', '豆沙', 'A04 橘调砖红色', '中国', '丝绒', 99.90, 0, '//img13.360buyimg.com/n1/jfs/t1/175606/27/9850/224057/60a003bbE3286eabe/690ecb4fa5bd17b5.jpg', '完美日记小粉钻A04');
INSERT INTO Commodity
VALUES (323, '完美日记', '小粉钻', '口红', '#CA5D4F', '珊瑚橘', 'C02 活力胡萝卜色', '中国', '丝绒', 99.90, 0, '//img13.360buyimg.com/n1/jfs/t1/182062/17/4215/223882/60a00353E2163cf9a/eee6ad63f8f06e21.jpg', '完美日记小粉钻C02');
INSERT INTO Commodity
VALUES (324, '完美日记', '小粉钻', '口红', '#802A2B', '草莓', '14 巧克力红棕', '中国', '丝绒', 99.90, 0, '//img13.360buyimg.com/n1/jfs/t1/189765/40/3388/223065/60a00390E575844f5/f1b519bc010d34e2.jpg', '完美日记小粉钻14');
INSERT INTO Commodity
VALUES (325, '完美日记', '小粉钻', '口红', '#D34648', '珊瑚红', 'C03 苹果红色', '中国', '丝绒', 99.90, 0, '//img13.360buyimg.com/n1/jfs/t1/175950/20/9974/224079/60a003a7E701c496b/38d64448782f35c9.jpg', '完美日记小粉钻C03');
INSERT INTO Commodity
VALUES (326, '完美日记', '小粉钻', '口红', '#C36F64', '西柚', 'C01 温柔奶茶色', '中国', '丝绒', 99.90, 0, '//img10.360buyimg.com/n1/jfs/t1/180898/1/4320/223820/60a00332Ee8498f79/ab85e30b2d5ad964.jpg', '完美日记小粉钻C01');
INSERT INTO Commodity
VALUES (327, '完美日记', '小细跟', '口红', '#AE3337', '复古', 'L08 红舞鞋', '中国', '丝绒', 89.90, 2, '//img10.360buyimg.com/n1/jfs/t1/190761/19/4182/351333/60a6265cE54fb6a1b/eb0f02b7d387ef5e.jpg', '完美日记小细跟L08');
INSERT INTO Commodity
VALUES (328, '完美日记', '小细跟', '口红', '#BA4745', '豆沙', 'L04 赤茶红棕', '中国', '丝绒', 89.90, 1, '//img14.360buyimg.com/n1/jfs/t1/190761/19/4182/351333/60a6265cE54fb6a1b/eb0f02b7d387ef5e.jpg', '完美日记小细跟L04');
INSERT INTO Commodity
VALUES (329, '完美日记', '小细跟', '口红', '#BF555D', '豆沙', 'L07 铆钉酷紫', '中国', '丝绒', 89.90, 1, '//img10.360buyimg.com/n1/jfs/t1/190761/19/4182/351333/60a6265cE54fb6a1b/eb0f02b7d387ef5e.jpg', '完美日记小细跟L07');
INSERT INTO Commodity
VALUES (330, '完美日记', '小细跟', '口红', '#B73939', '番茄', 'L06 玛丽珍红', '中国', '丝绒', 89.90, 1, '//img13.360buyimg.com/n1/jfs/t1/190761/19/4182/351333/60a6265cE54fb6a1b/eb0f02b7d387ef5e.jpg', '完美日记小细跟L06');
INSERT INTO Commodity
VALUES (331, '完美日记', '小细跟', '口红', '#A63F36', '复古', 'L03 枫叶切尔西', '中国', '丝绒', 89.90, 1, '//img14.360buyimg.com/n1/jfs/t1/190761/19/4182/351333/60a6265cE54fb6a1b/eb0f02b7d387ef5e.jpg', '完美日记小细跟L03');
INSERT INTO Commodity
VALUES (332, '完美日记', '小细跟', '口红', '#E66775', '西柚', 'L02 玫瑰小羊皮', '中国', '丝绒', 89.90, 1, '//img13.360buyimg.com/n1/jfs/t1/190761/19/4182/351333/60a6265cE54fb6a1b/eb0f02b7d387ef5e.jpg', '完美日记小细跟L02');
INSERT INTO Commodity
VALUES (333, '完美日记', '小细跟', '口红', '#D9655B', '西柚', 'L09 暖光血橙', '中国', '丝绒', 89.90, 1, '//img13.360buyimg.com/n1/jfs/t1/192005/17/4141/356084/60a627a1Efdc39e6b/2b81e41304c572b5.jpg', '完美日记小细跟L09');
INSERT INTO Commodity
VALUES (334, '完美日记', '小细跟', '口红', '#C47070', '西柚', 'L13 糖霜蜜桃', '中国', '丝绒', 89.90, 0, '//img13.360buyimg.com/n1/jfs/t1/192005/17/4141/356084/60a627a1Efdc39e6b/2b81e41304c572b5.jpg', '完美日记小细跟L13');
INSERT INTO Commodity
VALUES (335, '完美日记', '小细跟', '口红', '#9C4435', '复古', 'L12 珍珠奶橘', '中国', '丝绒', 89.90, 0, '//img10.360buyimg.com/n1/jfs/t1/192005/17/4141/356084/60a627a1Efdc39e6b/2b81e41304c572b5.jpg', '完美日记小细跟L12');
INSERT INTO Commodity
VALUES (336, '完美日记', '小细跟', '口红', '#CA5A4F', '珊瑚红', 'L01 芭蕾裸粉', '中国', '丝绒', 89.90, 0, '//img10.360buyimg.com/n1/jfs/t1/190761/19/4182/351333/60a6265cE54fb6a1b/eb0f02b7d387ef5e.jpg', '完美日记小细跟L01');
INSERT INTO Commodity
VALUES (337, '完美日记', '小细跟', '口红', '#C05A4E', '豆沙', 'L05 落日罗马靴', '中国', '丝绒', 89.90, 1, '//img13.360buyimg.com/n1/jfs/t1/190761/19/4182/351333/60a6265cE54fb6a1b/eb0f02b7d387ef5e.jpg', '完美日记小细跟L05');
INSERT INTO Commodity
VALUES (338, '完美日记', '小细跟', '口红', '#B2534F', '豆沙', 'L11 肉桂奶茶', '中国', '丝绒', 89.90, 3, '//img13.360buyimg.com/n1/jfs/t1/192005/17/4141/356084/60a627a1Efdc39e6b/2b81e41304c572b5.jpg', '完美日记小细跟L11');
INSERT INTO Commodity
VALUES (339, '完美日记', '小细跟', '口红', '#A52144', '复古', 'L10 梅紫火龙果', '中国', '丝绒', 89.90, 0, '//img10.360buyimg.com/n1/jfs/t1/192005/17/4141/356084/60a627a1Efdc39e6b/2b81e41304c572b5.jpg', '完美日记小细跟L10');
INSERT INTO Commodity
VALUES (340, '完美日记', '小酒管', '唇釉', '#C16961', '西柚', 'H12 茶色波特酒', '中国', '润泽/镜面', 59.90, 2, '//img11.360buyimg.com/n1/jfs/t1/173875/36/10730/322505/60a62c3aEa290911a/f33db4433a995ab1.jpg', '完美日记小酒管H12');
INSERT INTO Commodity
VALUES (341, '完美日记', '小酒管', '唇釉', '#B43B2E', '番茄', 'H11 猩红伏特加', '中国', '润泽/镜面', 59.90, 0, '//img13.360buyimg.com/n1/jfs/t1/187169/27/4402/352931/60a771efE6623a472/5f9edc45fe7689e0.jpg', '完美日记小酒管H11');
INSERT INTO Commodity
VALUES (342, '完美日记', '小酒管', '唇釉', '#A6383E', '复古', 'H13 肉桂红酒', '中国', '润泽/镜面', 59.90, 2, '//img10.360buyimg.com/n1/jfs/t1/171832/9/10647/321433/60a62c57Eedd8875b/f33a7eb23ba2030b.jpg', '完美日记小酒管H13');
INSERT INTO Commodity
VALUES (343, '完美日记', '小酒管', '唇釉', '#A81B30', '复古', 'H08 樱桃白兰地', '中国', '润泽/镜面', 59.90, 0, '//img11.360buyimg.com/n1/jfs/t1/183079/4/5165/322442/60a62bdbE41e69b84/ec4aebfd5149b078.jpg', '完美日记小酒管H08');
INSERT INTO Commodity
VALUES (344, '完美日记', '小酒管', '唇釉', '#C75452', '珊瑚红', 'H01 粉柚龙舌兰', '中国', '润泽/镜面', 59.90, 3, '//img12.360buyimg.com/n1/jfs/t1/191089/15/4180/257356/60a62b7bE1c5b60eb/f6df70218bd5c938.jpg', '完美日记小酒管H01');
INSERT INTO Commodity
VALUES (345, '完美日记', '小酒管', '唇釉', '#C33F2E', '番茄', 'H05 波本威士忌', '中国', '润泽/镜面', 59.90, 1, '//img14.360buyimg.com/n1/jfs/t1/194671/27/4182/325315/60a62bbfEf17bef67/20930e36393e9d5a.jpg', '完美日记小酒管H05');
INSERT INTO Commodity
VALUES (346, '完美日记', '小酒管', '唇釉', '#C82529', '番茄', 'H09 草莓冰酒', '中国', '润泽/镜面', 59.90, 1, '//img13.360buyimg.com/n1/jfs/t1/185580/21/5037/326728/60a62bf7E4fc9d91e/855ca85000ebec67.jpg', '完美日记小酒管H09');
INSERT INTO Commodity
VALUES (347, '完美日记', '小酒管', '唇釉', '#9F343A', '复古', 'H14 焦糖', '中国', '润泽/镜面', 59.90, 2, '//img13.360buyimg.com/n1/jfs/t1/186699/5/4206/319737/60a62c73E132ab490/6ef14753a74bfce2.jpg', '完美日记小酒管H14');
INSERT INTO Commodity
VALUES (348, '完美日记', '小酒管', '唇釉', '#AC3539', '复古', 'H10 玫瑰起泡酒', '中国', '润泽/镜面', 59.90, 0, '//img14.360buyimg.com/n1/jfs/t1/187679/38/4224/323719/60a62caeEd50cb592/a37ea2a9582e29ff.jpg', '完美日记小酒管H10');
INSERT INTO Commodity
VALUES (349, '完美日记', '小酒管', '唇釉', '#893A38', '红棕', 'H15 咖啡利口酒', '中国', '润泽/镜面', 59.90, 1, '//img11.360buyimg.com/n1/jfs/t1/190605/40/4229/321319/60a62cd7E33b47197/28e35920f12a9ea5.jpg', '完美日记小酒管H15');
INSERT INTO Commodity
VALUES (350, '完美日记', '小酒管', '唇釉', '#AB2A24', '复古', 'H18 橘闪精酿', '中国', '润泽/镜面', 59.90, 2, '//img10.360buyimg.com/n1/jfs/t1/25035/19/13635/322955/60a62cf5Ef21f62e1/a4fc98a92404c048.jpg', '完美日记小酒管H18');
INSERT INTO Commodity
VALUES (351, '完美日记', '小酒管', '唇釉', '#B15445', '豆沙', 'H21 百利甜联名-奶茶色', '中国', '润泽/镜面', 59.90, 1, '//img14.360buyimg.com/n1/jfs/t1/176710/19/10633/318766/60a62d33E1616281d/b96333777739344d.jpg', '完美日记小酒管H21');
INSERT INTO Commodity
VALUES (352, '完美日记', '小酒管', '唇釉', '#AF3C46', '豆沙', 'H22 百利甜联名-野莓红', '中国', '润泽/镜面', 59.90, 0, '//img11.360buyimg.com/n1/jfs/t1/194794/40/3294/320659/60a62d57Edaf6ac3f/538b3b749a043045.jpg', '完美日记小酒管H22');
INSERT INTO Commodity
VALUES (353, '完美日记', '小金钻', '口红', '#D6444B', '珊瑚红', 'S02 龙焰公主', '中国', '润泽/镜面', 99.90, 1, '//img14.360buyimg.com/n1/jfs/t1/175085/29/10669/160982/60a617e4E76558610/72e27b9000b91974.jpg', '完美日记小金钻S02');
INSERT INTO Commodity
VALUES (354, '完美日记', '小金钻', '口红', '#CC3A4D', '珊瑚红', 'A05 玫瑰骑士', '中国', '哑光/雾面', 99.90, 3, '//img13.360buyimg.com/n1/jfs/t1/193207/13/4069/159535/60a61915Ee9e982d7/e2b37a5d0ae5de24.jpg', '完美日记小金钻A05');
INSERT INTO Commodity
VALUES (355, '完美日记', '小金钻', '唇膏', '#C23744', '番茄', 'F02 路易十四', '中国', '润泽/镜面', 99.90, 3, '//img12.360buyimg.com/n1/jfs/t1/188418/23/4143/163613/60a6193bE925e759d/a2c48a793f0ec735.jpg', '完美日记小金钻F02');
INSERT INTO Commodity
VALUES (356, '完美日记', '小金钻', '口红', '#D42A33', '橘红', 'S04 夏日精灵', '中国', '润泽/镜面', 99.90, 2, '//img14.360buyimg.com/n1/jfs/t1/180668/36/5121/161153/60a6180cEe51f0164/de8ad9e59cf1d6ba.jpg', '完美日记小金钻S04');
INSERT INTO Commodity
VALUES (357, '完美日记', '小金钻', '唇膏', '#B6394D', '豆沙', 'S05 午夜猎手', '中国', '润泽/镜面', 99.90, 2, '//img11.360buyimg.com/n1/jfs/t1/148372/9/18562/160319/60a61837Efc360cb8/23572ae1b0b0341e.jpg', '完美日记小金钻S05');
INSERT INTO Commodity
VALUES (358, '完美日记', '小金钻', '唇膏', '#D54E5F', '珊瑚红', 'A01 茜茜少女', '中国', '哑光/雾面', 99.90, 0, '//img13.360buyimg.com/n1/jfs/t1/171899/21/10630/160383/60a61884E9e3127f9/88a9ed77e0190ae1.jpg', '完美日记小金钻A01');
INSERT INTO Commodity
VALUES (359, '完美日记', '小金钻', '口红', '#CD3F41', '番茄', 'A02 假日派对', '中国', '哑光/雾面', 99.90, 2, '//img10.360buyimg.com/n1/jfs/t1/191410/33/4187/159739/60a618a4E97437392/526c99333ff55771.jpg', '完美日记小金钻A02');
INSERT INTO Commodity
VALUES (360, '完美日记', '小金钻', '口红', '#C82B32', '番茄', 'A03 红唇掠影', '中国', '哑光/雾面', 99.90, 1, '//img12.360buyimg.com/n1/jfs/t1/189153/19/4168/159153/60a618cdE410030a7/2e4e12dd4a065d6b.jpg', '完美日记小金钻A03');
INSERT INTO Commodity
VALUES (361, '完美日记', '小金钻', '唇膏', '#B46560', '豆沙', 'C10 焦糖色', '中国', '润泽/镜面', 99.90, 4, '//img11.360buyimg.com/n1/jfs/t1/191329/36/4216/153719/60a619fdE2ed12ea2/54181b12ca564dd1.jpg', '完美日记小金钻C10');
INSERT INTO Commodity
VALUES (362, '完美日记', '小金钻', '口红', '#CA5249', '珊瑚红', 'C02 情书少女', '中国', '润泽/镜面', 99.90, 1, '//img10.360buyimg.com/n1/jfs/t1/191907/1/4207/158999/60a61981E40e4be14/02f49eab48d300b9.jpg', '完美日记小金钻C02');
INSERT INTO Commodity
VALUES (363, '完美日记', '小金钻', '唇膏', '#AB4B4A', '豆沙', 'C01 格兰特夫人', '中国', '润泽/镜面', 99.90, 0, '//img13.360buyimg.com/n1/jfs/t1/188708/10/4166/159089/60a6195fEc1a3d6c4/351d780bc8c04934.jpg', '完美日记小金钻C01');
INSERT INTO Commodity
VALUES (364, '完美日记', '小金钻', '唇膏', '#AF0F20', '砖红', 'C03 玛丽亚夫人', '中国', '润泽/镜面', 99.90, 0, '//img10.360buyimg.com/n1/jfs/t1/175743/31/10663/158724/60a619afEf89ded8e/52c4253a7496b92e.jpg', '完美日记小金钻C03');
INSERT INTO Commodity
VALUES (365, '完美日记', '小金钻', '口红', '#C14045', '番茄', 'C04 维多利亚女王', '中国', '润泽/镜面', 99.90, 2, '//img12.360buyimg.com/n1/jfs/t1/179622/13/4979/158150/60a619d4E875f5dfd/405418df67ce40ca.jpg', '完美日记小金钻C04');
INSERT INTO Commodity
VALUES (366, '完美日记', '小黑钻', '口红', '#A83729', '复古', '207 暮色迷失', '中国', '润泽/镜面', 59.90, 1, '//img11.360buyimg.com/n1/jfs/t1/177102/22/5082/333285/60a608c6E497f5395/7646e3d06d6def40.jpg', '完美日记小黑钻207');
INSERT INTO Commodity
VALUES (367, '完美日记', '小黑钻', '口红', '#BE2238', '番茄', '209 盛宴之夜', '中国', '润泽/镜面', 59.90, 0, '//img13.360buyimg.com/n1/jfs/t1/177102/22/5082/333285/60a608c6E497f5395/7646e3d06d6def40.jpg', '完美日记小黑钻209');
INSERT INTO Commodity
VALUES (368, '完美日记', '小黑钻', '口红', '#AE2428', '复古', '208 佳人绝色', '中国', '润泽/镜面', 59.90, 2, '//img10.360buyimg.com/n1/jfs/t1/177102/22/5082/333285/60a608c6E497f5395/7646e3d06d6def40.jpg', '完美日记小黑钻208');
INSERT INTO Commodity
VALUES (369, '完美日记', '小黑钻', '口红', '#CB515E', '西柚', '202 不期而遇', '中国', '润泽/镜面', 59.90, 2, '//img10.360buyimg.com/n1/jfs/t1/177102/22/5082/333285/60a608c6E497f5395/7646e3d06d6def40.jpg', '完美日记小黑钻202');
INSERT INTO Commodity
VALUES (370, '完美日记', '小黑钻', '口红', '#C65449', '豆沙', '206 沙漠玫瑰', '中国', '润泽/镜面', 59.90, 0, '//img12.360buyimg.com/n1/jfs/t1/177102/22/5082/333285/60a608c6E497f5395/7646e3d06d6def40.jpg', '完美日记小黑钻206');
INSERT INTO Commodity
VALUES (371, '完美日记', '小黑钻', '口红', '#CD574D', '珊瑚红', '203 春日呢喃', '中国', '润泽/镜面', 59.90, 1, '//img13.360buyimg.com/n1/jfs/t1/184652/40/5304/333285/60a8832dE7687353c/0bb518f8596d3f9b.jpg', '完美日记小黑钻203');
INSERT INTO Commodity
VALUES (372, '完美日记', '小黑钻', '口红', '#AD333D', '复古', '104 酒心可可', '中国', '润泽/镜面', 59.90, 0, '//img14.360buyimg.com/n1/jfs/t1/177102/22/5082/333285/60a608c6E497f5395/7646e3d06d6def40.jpg', '完美日记小黑钻104');
INSERT INTO Commodity
VALUES (373, '完美日记', '小黑钻', '口红', '#BC4B3C', '豆沙', '102 枫糖梦境', '中国', '润泽/镜面', 59.90, 3, '//img13.360buyimg.com/n1/jfs/t1/177102/22/5082/333285/60a608c6E497f5395/7646e3d06d6def40.jpg', '完美日记小黑钻102');
INSERT INTO Commodity
VALUES (374, '完美日记', '小黑钻', '口红', '#C16058', '豆沙', '101 玫香赤茶', '中国', '润泽/镜面', 59.90, 1, '//img11.360buyimg.com/n1/jfs/t1/177102/22/5082/333285/60a608c6E497f5395/7646e3d06d6def40.jpg', '完美日记小黑钻101');
INSERT INTO Commodity
VALUES (375, '完美日记', '小黑钻', '唇膏', '#943134', '正红', '107 玫瑰摩卡', '中国', '哑光/雾面', 59.90, 0, '//img11.360buyimg.com/n1/jfs/t1/177102/22/5082/333285/60a608c6E497f5395/7646e3d06d6def40.jpg', '完美日记小黑钻107');
INSERT INTO Commodity
VALUES (376, '完美日记', '小黑钻', '口红', '#C15A5E', '豆沙', '001 豆沙往事', '中国', '润泽/镜面', 59.90, 0, '//img14.360buyimg.com/n1/jfs/t1/177102/22/5082/333285/60a608c6E497f5395/7646e3d06d6def40.jpg', '完美日记小黑钻001');
INSERT INTO Commodity
VALUES (377, '完美日记', '小黑钻', '口红', '#AE5347', '豆沙', '105 桃情蜜意', '中国', '润泽/镜面', 59.90, 1, '//img11.360buyimg.com/n1/jfs/t1/177102/22/5082/333285/60a608c6E497f5395/7646e3d06d6def40.jpg', '完美日记小黑钻105');
INSERT INTO Commodity
VALUES (378, '完美日记', '小黑钻', '口红', '#832428', '草莓', '403 假面舞会', '中国', '润泽/镜面', 59.90, 0, '//img12.360buyimg.com/n1/jfs/t1/177102/22/5082/333285/60a608c6E497f5395/7646e3d06d6def40.jpg', '完美日记小黑钻403');
INSERT INTO Commodity
VALUES (379, '完美日记', '小黑钻', '口红', '#B63F35', '番茄', '217 枫叶小径', '中国', '润泽/镜面', 59.90, 1, '//img14.360buyimg.com/n1/jfs/t1/177102/22/5082/333285/60a608c6E497f5395/7646e3d06d6def40.jpg', '完美日记小黑钻217');
INSERT INTO Commodity
VALUES (380, '完美日记', '小黑钻', '口红', '#B14B55', '豆沙', '002 巴黎探戈', '中国', '润泽/镜面', 59.90, 2, '//img13.360buyimg.com/n1/jfs/t1/177102/22/5082/333285/60a608c6E497f5395/7646e3d06d6def40.jpg', '完美日记小黑钻002');
INSERT INTO Commodity
VALUES (381, '完美日记', '小黑钻', '口红', '#C83944', '番茄', '003 莎翁情史', '中国', '润泽/镜面', 59.90, 0, '//img14.360buyimg.com/n1/jfs/t1/177102/22/5082/333285/60a608c6E497f5395/7646e3d06d6def40.jpg', '完美日记小黑钻003');
INSERT INTO Commodity
VALUES (382, '完美日记', '小黑钻', '唇膏', '#A03B33', '复古', '116 猪肝红', '中国', '丝绒', 59.90, 2, '//img11.360buyimg.com/n1/jfs/t1/177102/22/5082/333285/60a608c6E497f5395/7646e3d06d6def40.jpg', '完美日记小黑钻116');
INSERT INTO Commodity
VALUES (383, '完美日记', '小黑钻', '口红', '#C6515B', '西柚', '008 红茶朗姆', '中国', '润泽/镜面', 59.90, 1, '//img14.360buyimg.com/n1/jfs/t1/177102/22/5082/333285/60a608c6E497f5395/7646e3d06d6def40.jpg', '完美日记小黑钻008');
INSERT INTO Commodity
VALUES (384, '完美日记', '小黑钻', '口红', '#BA3C32', '番茄', '117 柿香甜茶', '中国', '润泽/镜面', 59.90, 2, '//img12.360buyimg.com/n1/jfs/t1/177102/22/5082/333285/60a608c6E497f5395/7646e3d06d6def40.jpg', '完美日记小黑钻117');
INSERT INTO Commodity
VALUES (385, '完美日记', '小黑钻', '口红', '#A72C2C', '复古', '226 深栗棕红', '中国', '其它', 59.90, 1, '//img11.360buyimg.com/n1/jfs/t1/177102/22/5082/333285/60a608c6E497f5395/7646e3d06d6def40.jpg', '完美日记小黑钻226');
INSERT INTO Commodity
VALUES (386, '植村秀', '无色限柔雾唇膏', '口红', '#971E0D', '砖红', 'OR590 水光糖番茄', '日本', '润泽/镜面', 260.00, 0, '//img14.360buyimg.com/n1/jfs/t1/173696/8/10762/225518/60a66087E2e4a5441/c77c7def0ae302b5.jpg', '植村秀无色限柔雾唇膏OR590');
INSERT INTO Commodity
VALUES (387, '植村秀', '无色限柔雾唇膏', '口红', '#A73E3B', '复古', 'LSBR784 赤红棕', '日本', '润泽/镜面', 260.00, 2, '//img11.360buyimg.com/n1/jfs/t1/178672/33/5194/225132/60a65f60E493e23a6/765f4eb869ed5a1f.jpg', '植村秀无色限柔雾唇膏LSBR784');
INSERT INTO Commodity
VALUES (388, '植村秀', '无色限柔雾唇膏', '口红', '#A60004', '砖红', 'MRD163 哑光纯红', '日本', '其它', 260.00, 1, '//img14.360buyimg.com/n1/jfs/t1/185750/16/5016/233673/60a65b7eE8d0f8050/8a947fdc45d38f43.jpg', '植村秀无色限柔雾唇膏MRD163');
INSERT INTO Commodity
VALUES (389, '植村秀', '无色限柔雾唇膏', '口红', '#B3403D', '番茄', 'BR795 浓郁红棕', '日本', '润泽/镜面', 260.00, 0, '//img14.360buyimg.com/n1/jfs/t1/183979/10/5122/227111/60a65bb1Eb37412e0/396bceb56c2537f7.jpg', '植村秀无色限柔雾唇膏BR795');
INSERT INTO Commodity
VALUES (390, '植村秀', '无色限柔雾唇膏', '口红', '#932A26', '正红', 'MBR785 赤茶棕', '日本', '哑光/雾面', 260.00, 2, '//img11.360buyimg.com/n1/jfs/t1/196300/13/4067/234716/60a65dbcE5724facf/c9cdcb90dbcd1285.jpg', '植村秀无色限柔雾唇膏MBR785');
INSERT INTO Commodity
VALUES (391, '植村秀', '无色限柔雾唇膏', '口红', '#EB3D36', '珊瑚红', 'METMRD163 锦鲤红', '日本', '哑光/雾面', 260.00, 0, '//img10.360buyimg.com/n1/jfs/t1/172810/36/10692/239417/60a65e80E82b7ea45/bd654e83d27db3c9.jpg', '植村秀无色限柔雾唇膏METMRD163');
INSERT INTO Commodity
VALUES (392, '植村秀', '无色限柔雾唇膏', '口红', '#8D161F', '草莓', 'AMRD174 酒红栗', '日本', '哑光/雾面', 260.00, 1, '//img14.360buyimg.com/n1/jfs/t1/186940/3/4198/224293/60a65ed0Eef890bda/430bbf3d4115c93c.jpg', '植村秀无色限柔雾唇膏AMRD174');
INSERT INTO Commodity
VALUES (393, '植村秀', '无色限柔雾唇膏', '口红', '#B43C21', '番茄', 'AMBR784 野红栗', '日本', '哑光/雾面', 260.00, 1, '//img11.360buyimg.com/n1/jfs/t1/181200/15/5193/225770/60a65d9fEc4e70144/58ee320e1e4b0143.jpg', '植村秀无色限柔雾唇膏AMBR784');
INSERT INTO Commodity
VALUES (394, '欧莱雅', '小钢笔柔雾版', '唇釉', '#B3444B', '豆沙', '121 冰镇水蜜桃色', '中国', '润泽/镜面', 135.00, 1, '//img12.360buyimg.com/n1/jfs/t1/194841/19/4418/227860/60a91d9aE4728a341/84013eef9f246953.jpg', '欧莱雅小钢笔柔雾版121');
INSERT INTO Commodity
VALUES (395, '欧莱雅', '小钢笔柔雾版', '唇釉', '#C42D3E', '番茄', '113 蓝调番茄色', '中国', '润泽/镜面', 135.00, 1, '//img13.360buyimg.com/n1/jfs/t1/180357/35/5532/230714/60a91dccEfd91eb60/fd668d63b315714c.jpg', '欧莱雅小钢笔柔雾版113');
INSERT INTO Commodity
VALUES (396, '欧莱雅', '小钢笔柔雾版', '唇釉', '#BD4930', '番茄', '112 清新胡萝卜色', '中国', '润泽/镜面', 135.00, 1, '//img10.360buyimg.com/n1/jfs/t1/177016/16/5375/229482/60a91debEaf9dc32f/d77dfc86f0dc8acd.jpg', '欧莱雅小钢笔柔雾版112');
INSERT INTO Commodity
VALUES (397, '欧莱雅', '小钢笔柔雾版', '唇釉', '#963331', '复古', '129 红棕豆沙色', '中国', '哑光/雾面', 135.00, 1, '//img11.360buyimg.com/n1/jfs/t1/185325/1/5447/228232/60a91e0dEf67b244d/b58dfaae39a2234f.jpg', '欧莱雅小钢笔柔雾版129');
INSERT INTO Commodity
VALUES (398, '欧莱雅', '小钢笔柔雾版', '唇釉', '#B0361E', '番茄', '130 复古脏南瓜色', '中国', '哑光/雾面', 135.00, 2, '//img13.360buyimg.com/n1/jfs/t1/175905/29/11012/229477/60a91e32E64e353b2/7f41642197004c92.jpg', '欧莱雅小钢笔柔雾版130');
INSERT INTO Commodity
VALUES (399, '欧莱雅', '小钢笔水光版', '唇釉', '#9E4F4A', '豆沙', '129 心动杏色', '中国', '润泽/镜面', 135.00, 0, '//img14.360buyimg.com/n1/jfs/t1/174848/33/11049/227769/60a91e5fE6f5d6d3e/f0a23cff800a610c.jpg', '欧莱雅小钢笔水光版129');
INSERT INTO Commodity
VALUES (400, '欧莱雅', '小钢笔柔雾版', '唇釉', '#961714', '草莓', '138 朱砂橙', '中国', '哑光/雾面', 135.00, 1, '//img10.360buyimg.com/n1/jfs/t1/111454/7/17492/98636/5f5a334cE8d88df19/44c0480e1158a95d.jpg', '欧莱雅小钢笔柔雾版138');
INSERT INTO Commodity
VALUES (401, '欧莱雅', '小钢笔柔雾版', '唇釉', '#E52941', '橘红', '134 丝绒红', '中国', '哑光/雾面', 135.00, 1, '//img14.360buyimg.com/n1/jfs/t1/150226/11/8084/96116/5f5a3379E5f2974f3/2e680eccbb0b7087.jpg', '欧莱雅小钢笔柔雾版134');
INSERT INTO Commodity
VALUES (402, '欧莱雅', '小钢笔柔雾版', '唇釉', '#A53946', '豆沙', '145 蔷薇枯了', '中国', '哑光/雾面', 135.00, 0, '//img14.360buyimg.com/n1/jfs/t1/181401/27/5460/228532/60a91e80E6730789c/650eab7b3ed1f055.jpg', '欧莱雅小钢笔柔雾版145');
INSERT INTO Commodity
VALUES (403, '欧莱雅', '小钢笔水光版', '唇釉', '#940024', '血浆', '312 樱桃色', '中国', '润泽/镜面', 135.00, 0, '//img11.360buyimg.com/n1/jfs/t1/192738/31/4466/228487/60a91eafEbd8aafbd/c7bac230aad52a09.jpg', '欧莱雅小钢笔水光版312');
INSERT INTO Commodity
VALUES (404, '欧莱雅', '小钢笔水光版', '唇釉', '#A73D53', '豆沙', '302 温柔奶茶色', '中国', '润泽/镜面', 135.00, 1, '//img13.360buyimg.com/n1/jfs/t1/188170/3/4548/228363/60a91ed6Ef211af7d/9ab9a2d3d3a78bfe.jpg', '欧莱雅小钢笔水光版302');
INSERT INTO Commodity
VALUES (405, '欧莱雅', '小钢笔水光版', '唇釉', '#A61001', '砖红', '310 法式湿吻', '中国', '润泽/镜面', 135.00, 3, '//img10.360buyimg.com/n1/jfs/t1/189821/22/4501/229351/60a91f03Efbdf8fb8/e6c8a4066487c712.jpg', '欧莱雅小钢笔水光版310');
INSERT INTO Commodity
VALUES (406, '欧莱雅', '小钢笔水光版', '唇釉', '#7D042D', '梅子', '314 滴水玫瑰色', '中国', '润泽/镜面', 135.00, 1, '//img12.360buyimg.com/n1/jfs/t1/195488/19/4454/227392/60a91f3aE61af5fdf/9da26c411b649e7f.jpg', '欧莱雅小钢笔水光版314');
INSERT INTO Commodity
VALUES (407, '欧莱雅', '小钢笔柔雾版', '唇釉', '#A03225', '复古', '144 枫叶落了', '中国', '哑光/雾面', 135.00, 1, '//img13.360buyimg.com/n1/jfs/t1/172043/10/10994/229982/60a91f5dE4198e2d4/431a24e35633fad5.jpg', '欧莱雅小钢笔柔雾版144');
INSERT INTO Commodity
VALUES (408, '欧莱雅', '小钢笔柔纱版', '唇釉', '#9D3439', '复古', '227 红酒渍', '中国', '哑光/雾面', 135.00, 2, '//img11.360buyimg.com/n1/jfs/t1/172818/31/10927/215109/60a91f84Ea01a2afa/a8c3c1b15003c852.jpg', '欧莱雅小钢笔柔纱版227');
INSERT INTO Commodity
VALUES (409, '欧莱雅', '小钢笔柔纱版', '唇釉', '#982B21', '正红', '221 诱入橘', '中国', '哑光/雾面', 135.00, 0, '//img13.360buyimg.com/n1/jfs/t1/184639/17/5462/215049/60a91fa7Eb9381d81/ca22333091b3069f.jpg', '欧莱雅小钢笔柔纱版221');
INSERT INTO Commodity
VALUES (410, '欧莱雅', '小钢笔柔纱版', '唇釉', '#882B26', '草莓', '222 迷情棕', '中国', '哑光/雾面', 135.00, 0, '//img11.360buyimg.com/n1/jfs/t1/188564/11/4617/214804/60a91fccEaddefa37/aed9f5e93a311b7c.jpg', '欧莱雅小钢笔柔纱版222');
INSERT INTO Commodity
VALUES (411, '欧莱雅', '小钢笔柔纱版', '唇釉', '#9C3E36', '复古', '223 欲出桃', '中国', '哑光/雾面', 135.00, 0, '//img13.360buyimg.com/n1/jfs/t1/185182/11/5472/214898/60a91fefE52f382d2/bf8031162b996adc.jpg', '欧莱雅小钢笔柔纱版223');
INSERT INTO Commodity
VALUES (412, '欧莱雅', '小钢笔柔纱版', '唇釉', '#B33445', '复古', '226 涩野莓', '中国', '哑光/雾面', 135.00, 2, '//img10.360buyimg.com/n1/jfs/t1/191461/38/3827/215075/60a9201bE91661a0e/071ab714a12a5636.jpg', '欧莱雅小钢笔柔纱版226');
INSERT INTO Commodity
VALUES (413, '欧莱雅', '小钢笔柔纱版', '唇釉', '#C35B5F', '西柚', '224 烟裸粉', '中国', '哑光/雾面', 135.00, 0, '//img11.360buyimg.com/n1/jfs/t1/187022/29/4500/215126/60a9203aE351a3227/8c9cd36f65aeccb7.jpg', '欧莱雅小钢笔柔纱版224');
INSERT INTO Commodity
VALUES (414, '欧莱雅', '小妖金', '口红', '#9A192D', '正红', 'M601 鎏金摩卡色', '中国', '润泽/镜面', 135.00, 2, '//img14.360buyimg.com/n1/jfs/t1/123104/7/8093/163128/5f1e76d0E51a291bc/18636993ff71a55a.jpg', '欧莱雅小妖金M601');
INSERT INTO Commodity
VALUES (415, '欧莱雅', '小妖金', '口红', '#E38F75', '西柚', 'G101 百搭鎏金色', '中国', '润泽/镜面', 135.00, 1, '//img11.360buyimg.com/n1/jfs/t1/191991/11/4500/226831/60a9206dEbbf548a5/bdf40670dc41bc11.jpg', '欧莱雅小妖金G101');
INSERT INTO Commodity
VALUES (416, '欧莱雅', '小妖金', '口红', '#D3585D', '西柚', '164 蜜桃珊瑚色', '中国', '润泽/镜面', 135.00, 0, '//img13.360buyimg.com/n1/jfs/t1/172869/19/11007/225422/60a9208eE69f7be31/db9e0e711a944521.jpg', '欧莱雅小妖金164');
INSERT INTO Commodity
VALUES (417, '欧莱雅', '小妖金', '口红', '#9C2B2D', '复古', 'R601 鎏金正红色', '中国', '润泽/镜面', 135.00, 0, '//img11.360buyimg.com/n1/jfs/t1/194604/39/4444/226647/60a920adE756eecbe/748871879c8de744.jpg', '欧莱雅小妖金R601');
INSERT INTO Commodity
VALUES (418, '欧莱雅', '小妖金', '口红', '#D1171C', '橘红', 'RC301 糖心柿红色', '中国', '润泽/镜面', 135.00, 2, '//img13.360buyimg.com/n1/jfs/t1/195526/3/4509/225802/60a920cbE087918c3/6ac0181cba1501dc.jpg', '欧莱雅小妖金RC301');
INSERT INTO Commodity
VALUES (419, '欧莱雅', '小妖金', '口红', '#B85260', '豆沙', 'RB402 气质暖豆沙色', '中国', '润泽/镜面', 135.00, 2, '//img13.360buyimg.com/n1/jfs/t1/187367/1/4406/225946/60a920f0Ee165b40d/4c50f602690ccdc3.jpg', '欧莱雅小妖金RB402');
INSERT INTO Commodity
VALUES (420, '欧莱雅', '小妖金', '口红', '#A93623', '复古', '635 微醺血橙色', '中国', '润泽/镜面', 135.00, 1, '//img10.360buyimg.com/n1/jfs/t1/192779/12/4403/225946/60a9211fE36015c0e/30291c38d450e480.jpg', '欧莱雅小妖金635');
INSERT INTO Commodity
VALUES (421, '欧莱雅', '小妖金', '口红', '#AD1718', '砖红', '120 嗜爱绯红色', '中国', '润泽/镜面', 135.00, 2, '//img11.360buyimg.com/n1/jfs/t1/171720/25/11014/225837/60a92145E527cc1a8/9aae88e0013ca870.jpg', '欧莱雅小妖金120');
INSERT INTO Commodity
VALUES (422, '欧莱雅', '小妖金', '口红', '#C02C10', '番茄', '619 枫叶南瓜色', '中国', '润泽/镜面', 135.00, 1, '//img12.360buyimg.com/n1/jfs/t1/180313/11/5675/225643/60a92166E3609439d/1b21a4a57d483170.jpg', '欧莱雅小妖金619');
INSERT INTO Commodity
VALUES (423, '欧莱雅', '小妖金', '口红', '#A93E44', '豆沙', '161 轻吻豆沙色', '中国', '润泽/镜面', 135.00, 1, '//img14.360buyimg.com/n1/jfs/t1/190614/12/4546/225063/60a9218aEb877cb74/1048a04bfbdea371.jpg', '欧莱雅小妖金161');
INSERT INTO Commodity
VALUES (424, '欧莱雅', '小妖金', '口红', '#AA3B42', '豆沙', '160 枫叶红棕色', '中国', '润泽/镜面', 135.00, 1, '//img11.360buyimg.com/n1/jfs/t1/130523/4/5594/157337/5f1e7879Eebad1fff/93377b7ac686ef9c.jpg', '欧莱雅小妖金160');
INSERT INTO Commodity
VALUES (425, '欧莱雅', '小妖金', '口红', '#C8322E', '番茄', 'RB301 金闪红棕色', '中国', '润泽/镜面', 135.00, 3, '//img11.360buyimg.com/n1/jfs/t1/188462/4/4483/225560/60a921afE1aae330a/0b94b8c0381f71d7.jpg', '欧莱雅小妖金RB301');
INSERT INTO Commodity
VALUES (426, '欧莱雅', '小妖金', '口红', '#F95850', '珊瑚红', 'C411 元气西柚色', '中国', '润泽/镜面', 135.00, 2, '//img14.360buyimg.com/n1/jfs/t1/180463/25/5531/226211/60a921d6Ef99504e7/fcf079fcbf07d513.jpg', '欧莱雅小妖金C411');
INSERT INTO Commodity
VALUES (427, '欧莱雅', '新黑管', '口红', '#7D372D', '红棕', '312 红运加橙', '中国', '哑光/雾面', 135.00, 2, '//img10.360buyimg.com/n1/jfs/t1/188058/18/4693/216948/60a91c7bE3810c5bc/efa480fa99da2fff.jpg', '欧莱雅新黑管312');
INSERT INTO Commodity
VALUES (428, '欧莱雅', '新黑管', '口红', '#994336', '豆沙', '294 复古红棕', '中国', '哑光/雾面', 135.00, 2, '//img12.360buyimg.com/n1/jfs/t1/187724/20/4583/217409/60a91cafEe6697ac2/babb4e35060dc1cb.jpg', '欧莱雅新黑管294');
INSERT INTO Commodity
VALUES (429, '欧莱雅', '新黑管', '口红', '#792024', '铁锈', '666 开挂红', '中国', '哑光/雾面', 135.00, 1, '//img13.360buyimg.com/n1/jfs/t1/175220/40/10944/218887/60a91cccEbb98ecc7/9b5693dfb3a8f09d.jpg', '欧莱雅新黑管666');
INSERT INTO Commodity
VALUES (430, '欧莱雅', '新黑管', '口红', '#954440', '豆沙', '315 就酱紫红', '中国', '哑光/雾面', 135.00, 2, '//img13.360buyimg.com/n1/jfs/t1/172913/5/11030/216680/60a91cedE3df9165a/ac2e04c5760c023a.jpg', '欧莱雅新黑管315');
INSERT INTO Commodity
VALUES (431, '欧莱雅', '新黑管', '口红', '#9A2D30', '复古', '215 番茄红', '中国', '哑光/雾面', 135.00, 2, '//img11.360buyimg.com/n1/jfs/t1/174278/34/11094/218426/60a91d0bE180c0044/591a17e4062898c1.jpg', '欧莱雅新黑管215');
INSERT INTO Commodity
VALUES (432, '欧莱雅', '新黑管', '口红', '#B03235', '复古', '239 辣椒红', '中国', '哑光/雾面', 135.00, 0, '//img10.360buyimg.com/n1/jfs/t1/146646/15/19214/217430/60a91d34Ed4d00189/2688d040705c835b.jpg', '欧莱雅新黑管239');
INSERT INTO Commodity
VALUES (433, '欧莱雅', '新黑管', '口红', '#914A48', '豆沙', '233 豆沙色', '中国', '哑光/雾面', 135.00, 0, '//img12.360buyimg.com/n1/jfs/t1/109368/1/17122/217524/60a91d5cEceaa706a/a7e56f3bd560253c.jpg', '欧莱雅新黑管233');
INSERT INTO Commodity
VALUES (434, '纪梵希', '小粉皮', '唇膏', '#76192F', '梅子', '304 暗夜玫瑰', '法国', '润泽/镜面', 308.00, 1, '//img12.360buyimg.com/n1/jfs/t1/81852/23/10715/142496/5d8198c2E207d9a0a/179b0f9f513d83bc.jpg', '纪梵希小粉皮304');
INSERT INTO Commodity
VALUES (435, '纪梵希', '小粉皮', '唇膏', '#FDA5AB', '西柚', '01 润唇膏', '法国', '润泽/镜面', 308.00, 0, '//img13.360buyimg.com/n1/jfs/t17227/154/2393104609/99762/552dc3ff/5aefee32Ne95fa468.jpg', '纪梵希小粉皮01');
INSERT INTO Commodity
VALUES (436, '纪梵希', '小羊皮', '口红', '#9A1727', '正红', 'N334 车厘子红', '法国', '哑光/雾面', 360.00, 1, '//img13.360buyimg.com/n1/jfs/t1/190380/8/4685/386593/60ab068fE9708b5ac/a7576dde9fb45115.jpg', '纪梵希小羊皮N334');
INSERT INTO Commodity
VALUES (437, '纪梵希', '小羊皮', '口红', '#E83D1F', '橘红', 'N316 元气橘', '法国', '自然/裸妆', 360.00, 1, '//img14.360buyimg.com/n1/jfs/t1/190317/33/4740/385145/60ab06b3Ef916ae5c/bbed4a07db6662c4.jpg', '纪梵希小羊皮N316');
INSERT INTO Commodity
VALUES (438, '纪梵希', '小羊皮', '口红', '#942127', '正红', 'N37 蓝调正红', '法国', '哑光/雾面', 360.00, 1, '//img13.360buyimg.com/n1/jfs/t1/167796/10/2907/71708/60050641E75e1eac1/a4ca10de872a8e9b.jpg', '纪梵希小羊皮N37');
INSERT INTO Commodity
VALUES (439, '纪梵希', '小羊皮', '口红', '#D63C4A', '珊瑚红', 'N306 番茄红', '法国', '哑光/雾面', 360.00, 2, '//img14.360buyimg.com/n1/jfs/t1/193809/24/4726/417825/60ab38bdEa745e038/c287546c0e74ce54.jpg', '纪梵希小羊皮N306');
INSERT INTO Commodity
VALUES (440, '纪梵希', '小羊皮', '口红', '#EB7068', '西柚', 'N304 西柚红', '法国', '自然/裸妆', 360.00, 1, '//img13.360buyimg.com/n1/jfs/t1/135938/19/19076/390970/60ab05beE46194207/b29f9ef1f8521cfa.jpg', '纪梵希小羊皮N304');
INSERT INTO Commodity
VALUES (441, '纪梵希', '小羊皮', '口红', '#CE1B27', '橘红', 'N333 女神红', '法国', '自然/裸妆', 360.00, 1, '//img11.360buyimg.com/n1/jfs/t1/196550/35/4608/391600/60ab0673Eb9be262b/3efb0a2f3efbf8ea.jpg', '纪梵希小羊皮N333');
INSERT INTO Commodity
VALUES (442, '纪梵希', '小羊皮', '口红', '#C63F46', '番茄', 'N307 石榴红', '法国', '自然/裸妆', 360.00, 1, '//img11.360buyimg.com/n1/jfs/t1/186496/19/4682/417335/60ab38d7E6f2d4da2/af9e6a3cf4a4581d.jpg', '纪梵希小羊皮N307');
INSERT INTO Commodity
VALUES (443, '纪梵希', '红丝绒', '口红', '#DA4940', '珊瑚红', 'N33 暖茶橘', '法国', '丝绒', 360.00, 2, '//img12.360buyimg.com/n1/jfs/t1/185153/3/5540/385468/60ab0713E0ea8fb00/e2ba8f83b2a1057f.jpg', '纪梵希红丝绒N33');
INSERT INTO Commodity
VALUES (444, '纪梵希', '红丝绒', '口红', '#732A3D', '红棕', 'N38 烟熏石榴', '法国', '丝绒', 360.00, 2, '//img10.360buyimg.com/n1/jfs/t1/139883/23/19765/65359/5fe31e66Ec2b9ce9b/c1d707d1cfb5b045.jpg', '纪梵希红丝绒N38');
INSERT INTO Commodity
VALUES (445, '纪梵希', '红丝绒', '口红', '#A51228', '正红', 'N36 禁忌番茄红', '法国', '丝绒', 360.00, 1, '//img13.360buyimg.com/n1/jfs/t1/191332/6/4686/389004/60ab06f9E81bc8d0b/a0069df672f4a2fd.jpg', '纪梵希红丝绒N36');
INSERT INTO Commodity
VALUES (446, '纪梵希', '红丝绒', '口红', '#9C3A2F', '复古', 'N35 枫叶砖红', '法国', '丝绒', 360.00, 0, '//img11.360buyimg.com/n1/jfs/t1/177446/16/5701/386565/60ab0746E6e20f0a1/90578c944ef0c226.jpg', '纪梵希红丝绒N35');
INSERT INTO Commodity
VALUES (447, '纪梵希', '红丝绒', '口红', '#9B274A', '复古', 'N42 冷艳梅果', '法国', '丝绒', 360.00, 0, '//img14.360buyimg.com/n1/jfs/t1/171834/3/11249/389503/60ab075fEeab578e0/28c618eefa81e7b9.jpg', '纪梵希红丝绒N42');
INSERT INTO Commodity
VALUES (448, '纪梵希', '红丝绒', '口红', '#80191D', '铁锈', 'N37 朱砂砖红', '法国', '丝绒', 360.00, 0, '//img10.360buyimg.com/n1/jfs/t1/179152/11/5752/385775/60ab06ddE60468b8e/e5275318e3a129c4.jpg', '纪梵希红丝绒N37');
INSERT INTO Commodity
VALUES (449, '纪梵希', '红丝绒', '口红', '#B9496F', '豆沙', 'N26 莓红粉绒', '法国', '丝绒', 360.00, 2, '//img14.360buyimg.com/n1/jfs/t1/141112/30/19632/65879/5fe31de1E1d9c7a84/a5b8b5c8aca1e5a4.jpg', '纪梵希红丝绒N26');
INSERT INTO Commodity
VALUES (450, '纪梵希', '红丝绒', '口红', '#AE4350', '豆沙', 'N27 酒渍玫瑰', '法国', '丝绒', 360.00, 2, '//img10.360buyimg.com/n1/jfs/t1/179718/3/5656/386975/60ab072dE61fbb9c0/0a0a41600678ad8c.jpg', '纪梵希红丝绒N27');
INSERT INTO Commodity
VALUES (451, '纪梵希', '红丝绒', '口红', '#8C5656', '豆沙', 'N11 灰调裸色', '法国', '丝绒', 360.00, 0, '//img13.360buyimg.com/n1/jfs/t1/150299/25/19559/64983/5fe31b44Ec49622f8/2a780c493991cd7d.jpg', '纪梵希红丝绒N11');
INSERT INTO Commodity
VALUES (452, '美宝莲', '宝蓓爱炫彩护唇膏', '唇膏', '#E0495A', '珊瑚红', '01# 无敌红芭比', '中国', '自然/裸妆', 27.90, 1, '//img10.360buyimg.com/n1/jfs/t1/119233/25/13676/69071/5f2112d5E84a1b9e9/83352f43337d701b.jpg', '美宝莲宝蓓爱炫彩护唇膏01#');
INSERT INTO Commodity
VALUES (453, '美宝莲', '宝蓓爱炫彩护唇膏', '唇膏', '#E8796C', '西柚', '07# 瑚光珊色控', '中国', '自然/裸妆', 27.90, 1, '//img10.360buyimg.com/n1/jfs/t1/135107/20/5531/69075/5f211378Ee344c920/44d410dd8f9fa00c.jpg', '美宝莲宝蓓爱炫彩护唇膏07#');
INSERT INTO Commodity
VALUES (454, '美宝莲', '宝蓓爱炫彩护唇膏', '唇膏', '#ED808E', '西柚', '05# 恋粉洛丽塔', '中国', '自然/裸妆', 27.90, 2, '//img12.360buyimg.com/n1/jfs/t1/140997/3/4104/68799/5f211386E8e62ca78/fc6a38c5e7907575.jpg', '美宝莲宝蓓爱炫彩护唇膏05#');
INSERT INTO Commodity
VALUES (455, '美宝莲', '接吻棒', '唇釉', '#BF5C57', '豆沙', '210 奶茶粉', '中国', '哑光/雾面', 89.00, 0, '//img14.360buyimg.com/n1/jfs/t1/187742/33/4881/136430/60ab5b3aEf55509f0/1db27dc4a18d1586.jpg', '美宝莲接吻棒210');
INSERT INTO Commodity
VALUES (456, '美宝莲', '接吻棒', '唇釉', '#B41D22', '番茄', '118 熟番茄色', '中国', '哑光/雾面', 89.00, 1, '//img13.360buyimg.com/n1/jfs/t1/176281/38/11271/145668/60ab5b87Ef4ddd79e/b8ec2ef199890de0.jpg', '美宝莲接吻棒118');
INSERT INTO Commodity
VALUES (457, '美宝莲', '接吻棒', '唇釉', '#831616', '铁锈', '117 复古砖红', '中国', '哑光/雾面', 89.00, 1, '//img14.360buyimg.com/n1/jfs/t1/181190/13/5744/138821/60ab5ba9Eb5cb505b/d6aff1aef44b998b.jpg', '美宝莲接吻棒117');
INSERT INTO Commodity
VALUES (458, '美宝莲', '接吻棒', '唇釉', '#C34B56', '豆沙', '285 豆蔻红梅', '中国', '哑光/雾面', 89.00, 2, '//img12.360buyimg.com/n1/jfs/t1/192822/6/4743/144535/60ab5c7aE2842251f/92d87486cc3932f8.jpg', '美宝莲接吻棒285');
INSERT INTO Commodity
VALUES (459, '美宝莲', '接吻棒', '唇釉', '#D25A65', '西柚', '170 烟粉色', '中国', '哑光/雾面', 89.00, 1, '//img10.360buyimg.com/n1/jfs/t1/186167/4/5637/149340/60ab5c1dE44eafd10/1771ca0e6fb389a1.jpg', '美宝莲接吻棒170');
INSERT INTO Commodity
VALUES (460, '美宝莲', '接吻棒漫威版', '唇釉', '#8F303E', '红棕', '80 梅子豆沙', '中国', '哑光/雾面', 89.00, 1, '//img12.360buyimg.com/n1/jfs/t1/179089/29/5780/140632/60ab5cafE43b912f7/27a6fb95c0d1c177.jpg', '美宝莲接吻棒漫威版80');
INSERT INTO Commodity
VALUES (461, '美宝莲', '接吻棒漫威版', '唇釉', '#BE5B56', '豆沙', '210 奶茶粉', '中国', '哑光/雾面', 89.00, 0, '//img12.360buyimg.com/n1/jfs/t1/128291/6/19424/137201/60ab5cfaEc18850f9/245d9707bc15c91b.jpg', '美宝莲接吻棒漫威版210');
INSERT INTO Commodity
VALUES (462, '美宝莲', '接吻棒漫威版', '唇釉', '#9C4A58', '豆沙', '15 香芋玫瑰', '中国', '哑光/雾面', 89.00, 2, '//img14.360buyimg.com/n1/jfs/t1/35516/40/15576/139574/60ab5d17Ea689de48/3c1ec9a1a5b0a98d.jpg', '美宝莲接吻棒漫威版15');
INSERT INTO Commodity
VALUES (463, '美宝莲', '接吻棒漫威版', '唇釉', '#821515', '铁锈', '117 复古砖红', '中国', '哑光/雾面', 89.00, 1, '//img11.360buyimg.com/n1/jfs/t1/174498/2/11212/138819/60ab5d3aE4f4b5d47/3718457f574b2ab4.jpg', '美宝莲接吻棒漫威版117');
INSERT INTO Commodity
VALUES (464, '美宝莲', '接吻棒', '唇釉', '#C51410', '橘红', '315 丝绒血橙色', '中国', '哑光/雾面', 89.00, 1, '//img13.360buyimg.com/n1/jfs/t1/194347/13/4645/148026/60ab5d5aE573d118a/36b04eb8a25cbf0b.jpg', '美宝莲接吻棒315');
INSERT INTO Commodity
VALUES (465, '美宝莲', '羽绒唇釉', '唇釉', '#A32510', '砖红', '09 枫糖茶红', '中国', '哑光/雾面', 109.00, 1, '//img13.360buyimg.com/n1/jfs/t1/176118/40/11120/137111/60ab6113Ebf6404e8/413736e79a3cc7ba.jpg', '美宝莲羽绒唇釉09');
INSERT INTO Commodity
VALUES (466, '美宝莲', '羽绒唇釉', '唇釉', '#AA3E2B', '复古', '06 枕边雾橘', '中国', '哑光/雾面', 109.00, 1, '//img10.360buyimg.com/n1/jfs/t1/173043/40/10514/137049/60ab6134E54603d43/a12919abd1b55edc.jpg', '美宝莲羽绒唇釉06');
INSERT INTO Commodity
VALUES (467, '美宝莲', '羽绒唇釉', '唇釉', '#9B4531', '复古', '12 叛桃杏棕', '中国', '哑光/雾面', 119.00, 1, '//img10.360buyimg.com/n1/jfs/t1/172361/11/11228/135983/60ab6159Ed76a0c10/7af82f483d27f53f.jpg', '美宝莲羽绒唇釉12');
INSERT INTO Commodity
VALUES (468, '美宝莲', '羽绒唇釉', '唇釉', '#7D0808', '血浆', '08 纵绒正红', '中国', '哑光/雾面', 109.00, 3, '//img10.360buyimg.com/n1/jfs/t1/184791/25/5573/136235/60ab617fE4e0888e5/5be4ce101e59661b.jpg', '美宝莲羽绒唇釉08');
INSERT INTO Commodity
VALUES (469, '美宝莲', '羽绒唇釉', '唇釉', '#601417', '血浆', '02 乱弹锈红', '中国', '哑光/雾面', 109.00, 0, '//img10.360buyimg.com/n1/jfs/t1/187535/32/4818/135466/60ab61a1Edb07c3ea/798a3c75e5f590e8.jpg', '美宝莲羽绒唇釉02');
INSERT INTO Commodity
VALUES (470, '美宝莲', '羽绒唇釉', '唇釉', '#B1041C', '砖红', '01 甜拽猩红', '中国', '哑光/雾面', 109.00, 0, '//img12.360buyimg.com/n1/jfs/t1/173367/35/11180/137064/60ab61c2E0f4513e4/160da859f142ca25.jpg', '美宝莲羽绒唇釉01');
INSERT INTO Commodity
VALUES (471, '美宝莲', '羽绒唇釉', '唇釉', '#9B3536', '复古', '07 木质蔷薇', '中国', '哑光/雾面', 109.00, 1, '//img12.360buyimg.com/n1/jfs/t1/185923/9/5630/135884/60ab61e4Ebfff265a/074d3cea58270973.jpg', '美宝莲羽绒唇釉07');
INSERT INTO Commodity
VALUES (472, '美宝莲', '羽绒唇釉', '唇釉', '#99261A', '正红', '10 犯规棕栗', '中国', '哑光/雾面', 109.00, 0, '//img14.360buyimg.com/n1/jfs/t1/180804/6/5661/136366/60ab6206Edcb3700e/fdcd39d6b30cff0d.jpg', '美宝莲羽绒唇釉10');
INSERT INTO Commodity
VALUES (473, '美宝莲', '羽绒唇釉', '唇釉', '#C3554D', '豆沙', '13 叛桃乌龙', '中国', '哑光/雾面', 119.00, 2, '//img11.360buyimg.com/n1/jfs/t1/178783/35/5732/135532/60ab6276E6b2f04cd/28a28d048831f419.jpg', '美宝莲羽绒唇釉13');
INSERT INTO Commodity
VALUES (474, '美宝莲', '羽绒唇釉', '唇釉', '#A92B34', '复古', '11 叛桃玫瑰', '中国', '哑光/雾面', 119.00, 2, '//img12.360buyimg.com/n1/jfs/t1/188486/33/4824/135656/60ab62c1E1c751a7e/c3bab1015038f235.jpg', '美宝莲羽绒唇釉11');
INSERT INTO Commodity
VALUES (475, '美宝莲', '马里奥赛车限定版羽绒唇釉', '唇釉', '#A54546', '豆沙', '10 犯规棕栗', '中国', '哑光/雾面', 99.00, 1, '//img12.360buyimg.com/n1/jfs/t1/190289/30/4734/289575/60ab0941E18bb30c3/a12330f1b31972f4.jpg', '美宝莲马里奥赛车限定版羽绒唇釉10');
INSERT INTO Commodity
VALUES (476, '美宝莲', '马里奥赛车限定版羽绒唇釉', '唇釉', '#8D1F22', '草莓', '02 乱弹锈红', '中国', '哑光/雾面', 99.00, 1, '//img10.360buyimg.com/n1/jfs/t1/181556/27/5678/292195/60ab08f3E43b12c63/ef7ca1e17eec017d.jpg', '美宝莲马里奥赛车限定版羽绒唇釉02');
INSERT INTO Commodity
VALUES (477, '美宝莲', '马里奥赛车限定版羽绒唇釉', '唇釉', '#8B2E26', '草莓', '06 枕边雾橘', '中国', '哑光/雾面', 99.00, 1, '//img10.360buyimg.com/n1/jfs/t1/109463/15/15373/292293/60ab0912E662b8a3c/00201aa270e37c98.jpg', '美宝莲马里奥赛车限定版羽绒唇釉06');
INSERT INTO Commodity
VALUES (478, '美宝莲', '轻雾唇釉', '唇釉', '#C04A56', '豆沙', '08 烟粉玫瑰', '中国', '哑光/雾面', 89.00, 1, '//img14.360buyimg.com/n1/jfs/t1/178988/2/5767/141090/60ab5dc2E12e53053/82823848cab125b7.jpg', '美宝莲轻雾唇釉08');
INSERT INTO Commodity
VALUES (479, '美宝莲', '轻雾唇釉', '唇釉', '#B95758', '豆沙', '06 肉桂奶茶', '中国', '哑光/雾面', 89.00, 4, '//img10.360buyimg.com/n1/jfs/t1/188549/10/3974/141079/60ab5de0E20e33d5a/b021d7ddeccac069.jpg', '美宝莲轻雾唇釉06');
INSERT INTO Commodity
VALUES (480, '美宝莲', '轻雾唇釉', '唇釉', '#A5121D', '砖红', '02 红酒车厘子', '中国', '哑光/雾面', 89.00, 0, '//img10.360buyimg.com/n1/jfs/t1/196798/29/4634/142873/60ab5e0bE3d8714b3/0913053dc31fb062.jpg', '美宝莲轻雾唇釉02');
INSERT INTO Commodity
VALUES (481, '美宝莲', '轻雾唇釉', '唇釉', '#D02B27', '橘红', '01 糖霜山楂', '中国', '哑光/雾面', 89.00, 0, '//img10.360buyimg.com/n1/jfs/t1/184387/17/5728/142893/60ab5e2bE61c1ef3d/51d0c39d2a731f35.jpg', '美宝莲轻雾唇釉01');
INSERT INTO Commodity
VALUES (482, '美宝莲', '轻雾唇釉', '唇釉', '#D3584B', '珊瑚红', 'NU02 蜜桃豆沙', '中国', '哑光/雾面', 89.00, 0, '//img11.360buyimg.com/n1/jfs/t1/174955/17/11232/142330/60ab5e6eE5d905c90/b8a311c2f0b35709.jpg', '美宝莲轻雾唇釉NU02');
INSERT INTO Commodity
VALUES (483, '美宝莲', '轻雾唇釉', '唇釉', '#9E2E18', '正红', '12 柿子橘', '中国', '哑光/雾面', 89.00, 1, '//img14.360buyimg.com/n1/jfs/t1/144410/21/20555/142567/60ab5e8fEe783ba5d/b08bde6d04b33f6c.jpg', '美宝莲轻雾唇釉12');
INSERT INTO Commodity
VALUES (484, '美宝莲', '轻雾唇釉', '唇釉', '#903020', '草莓', '17 焦糖红棕', '中国', '哑光/雾面', 89.00, 0, '//img11.360buyimg.com/n1/jfs/t1/186355/6/4706/142117/60ab5eb1Ee7cd3730/01daaeec4ee6e798.jpg', '美宝莲轻雾唇釉17');
INSERT INTO Commodity
VALUES (485, '美宝莲', '黑魔方', '口红', '#D71812', '橘红', '233 鲜番茄', '中国', '润泽/镜面', 109.00, 1, '//img13.360buyimg.com/n1/jfs/t1/180394/22/5735/144387/60ab58bcE68af25cf/bca60e02eeba4877.jpg', '美宝莲黑魔方233');
INSERT INTO Commodity
VALUES (486, '美宝莲', '黑魔方', '口红', '#A6383F', '复古', '503 肉桂豆沙', '中国', '哑光/雾面', 109.00, 2, '//img14.360buyimg.com/n1/jfs/t1/178928/18/5749/141854/60ab58dfE22c6412a/af9c7cc36d376804.jpg', '美宝莲黑魔方503');
INSERT INTO Commodity
VALUES (487, '美宝莲', '黑魔方', '口红', '#A64446', '豆沙', '888 玫瑰深豆沙色', '中国', '润泽/镜面', 109.00, 0, '//img13.360buyimg.com/n1/jfs/t1/178813/39/5644/142691/60ab5934E2a0566d8/faba05669ffcd722.jpg', '美宝莲黑魔方888');
INSERT INTO Commodity
VALUES (488, '美宝莲', '黑魔方', '口红', '#B31310', '砖红', '604 朱砂橘', '中国', '丝绒', 109.00, 1, '//img11.360buyimg.com/n1/jfs/t1/191790/22/4726/138875/60ab5956E79520882/9e0c0e262f86531e.jpg', '美宝莲黑魔方604');
INSERT INTO Commodity
VALUES (489, '美宝莲', '黑魔方', '口红', '#B93932', '番茄', '500 干枫叶', '中国', '丝绒', 109.00, 0, '//img14.360buyimg.com/n1/jfs/t1/185758/7/5682/138511/60ab5979E12a1c556/f73e8f75658686c2.jpg', '美宝莲黑魔方500');
INSERT INTO Commodity
VALUES (490, '美宝莲', '黑魔方', '口红', '#C91112', '橘红', '609 罂粟红', '中国', '哑光/雾面', 109.00, 1, '//img10.360buyimg.com/n1/jfs/t1/109194/29/17361/141310/60ab599eEe8116065/265a1dee1a116cff.jpg', '美宝莲黑魔方609');
INSERT INTO Commodity
VALUES (491, '美宝莲', '黑魔方', '口红', '#B0422E', '番茄', '818 糖味落日', '中国', '哑光/雾面', 109.00, 3, '//img12.360buyimg.com/n1/jfs/t1/176357/26/11323/136693/60ab5a3dE2e658507/f5c45d8fd2261285.jpg', '美宝莲黑魔方818');
INSERT INTO Commodity
VALUES (492, '美宝莲', '黑魔方', '口红', '#BA5653', '豆沙', '816 奶雾蜜糖', '中国', '哑光/雾面', 109.00, 1, '//img12.360buyimg.com/n1/jfs/t1/146979/29/19491/136649/60ab5a60Ed94dc1f7/02d7a7b729abe8dc.jpg', '美宝莲黑魔方816');
INSERT INTO Commodity
VALUES (493, '花西子', '同心锁', '口红', '#8F1B38', '梅子', 'M130 醉梅锁', '中国', '哑光/雾面', 219.00, 1, '//img10.360buyimg.com/n1/jfs/t1/156443/24/17221/239182/605699c8Ef72e9099/913f8771def1301f.jpg', '花西子同心锁M130');
INSERT INTO Commodity
VALUES (494, '花西子', '同心锁', '口红', '#AC1E1A', '砖红', 'M210 丹霞锁', '中国', '哑光/雾面', 219.00, 1, '//img11.360buyimg.com/n1/jfs/t1/160977/31/13774/239034/605699d3E353c106b/35b1a9fddfa4fc0e.jpg', '花西子同心锁M210');
INSERT INTO Commodity
VALUES (495, '花西子', '同心锁', '口红', '#931B2C', '草莓', 'M131 绛仙锁', '中国', '哑光/雾面', 219.00, 1, '//img13.360buyimg.com/n1/jfs/t1/166304/9/18324/239165/6076623eE2566880a/fa1b2a065ae9f46f.jpg', '花西子同心锁M131');
INSERT INTO Commodity
VALUES (496, '花西子', '同心锁', '口红', '#AC3541', '复古', 'M413 檀心锁', '中国', '哑光/雾面', 219.00, 1, '//img14.360buyimg.com/n1/jfs/t1/162681/29/18822/239257/607664dbE6efe0344/8ecc97f810bafe9d.jpg', '花西子同心锁M413');
INSERT INTO Commodity
VALUES (497, '花西子', '同心锁', '口红', '#7A1F28', '铁锈', 'M506 胭脂锁', '中国', '哑光/雾面', 219.00, 3, '//img10.360buyimg.com/n1/jfs/t1/173043/1/3949/239253/607660d0Eeb8cbcf4/a12919abd1b55edc.jpg', '花西子同心锁M506');
INSERT INTO Commodity
VALUES (498, '花西子', '同心锁', '口红', '#AE282B', '复古', 'M211 朱砂锁', '中国', '哑光/雾面', 219.00, 1, '//img13.360buyimg.com/n1/jfs/t1/150820/23/21334/239229/6035f2ddE84feff75/7c5587c23e692c32.jpg', '花西子同心锁M211');
INSERT INTO Commodity
VALUES (499, '花西子', '花露沁养冰淇淋', '口红', '#9B362A', '复古', 'M209 点朱砂', '中国', '哑光/雾面', 139.00, 1, '//img12.360buyimg.com/n1/jfs/t1/167210/27/7958/172307/602f6961E4d80f760/ff8b62cd43af660e.jpg', '花西子花露沁养冰淇淋M209');
INSERT INTO Commodity
VALUES (500, '花西子', '花露沁养冰淇淋', '口红', '#85302C', '草莓', 'M412 暖香檀', '中国', '哑光/雾面', 139.00, 1, '//img13.360buyimg.com/n1/jfs/t1/152193/23/18209/172045/602f6968Ef08ab93e/71c30f666c942505.jpg', '花西子花露沁养冰淇淋M412');
INSERT INTO Commodity
VALUES (501, '花西子', '花露沁养冰淇淋', '口红', '#C63A4A', '番茄', 'M128 映蔷薇', '中国', '哑光/雾面', 139.00, 1, '//img14.360buyimg.com/n1/jfs/t1/167663/9/7183/172498/602f6970E36af4b40/a4f6ea7b1df9056f.jpg', '花西子花露沁养冰淇淋M128');
INSERT INTO Commodity
VALUES (502, '花西子', '花露沁养冰淇淋', '口红', '#961E2E', '正红', 'M129 醉心梅', '中国', '哑光/雾面', 139.00, 2, '//img10.360buyimg.com/n1/jfs/t1/161580/1/6926/172373/602f6977E8db00e37/356eafb99c647068.jpg', '花西子花露沁养冰淇淋M129');
INSERT INTO Commodity
VALUES (503, '花西子', '花露玲珑陶瓷', '口红', '#9A4237', '豆沙', 'M414 郎窑红', '中国', '哑光/雾面', 199.00, 1, '//img11.360buyimg.com/n1/jfs/t1/173005/5/3968/129443/6076adb4Eda31c358/512e83402aaa8924.jpg', '花西子花露玲珑陶瓷M414');
INSERT INTO Commodity
VALUES (504, '花西子', '花露玲珑陶瓷', '口红', '#CA4D43', '珊瑚红', 'M212 柿红锦', '中国', '哑光/雾面', 199.00, 1, '//img12.360buyimg.com/n1/jfs/t1/170737/10/18768/130574/6076adbdEfd87c785/6e8bc79b357d9747.jpg', '花西子花露玲珑陶瓷M212');
INSERT INTO Commodity
VALUES (505, '花西子', '花露玲珑陶瓷', '口红', '#BD4245', '豆沙', 'M302 芸豆红', '中国', '哑光/雾面', 199.00, 2, '//img12.360buyimg.com/n1/jfs/t1/174399/3/4142/130330/6076adc8E7f937539/903e24cdd82f8516.jpg', '花西子花露玲珑陶瓷M302');
INSERT INTO Commodity
VALUES (506, '花西子', '花露玲珑陶瓷', '口红', '#B12D2C', '番茄', 'M132 美人霁', '中国', '哑光/雾面', 199.00, 1, '//img13.360buyimg.com/n1/jfs/t1/159647/10/18979/130095/6076add0Eb9c094ce/9109125d4d5cc896.jpg', '花西子花露玲珑陶瓷M132');
INSERT INTO Commodity
VALUES (507, '花西子', '花露玲珑陶瓷', '口红', '#BD3E53', '豆沙', 'M303 桃红釉', '中国', '哑光/雾面', 199.00, 3, '//img12.360buyimg.com/n1/jfs/t1/167659/37/18259/133960/6076ad5eE49466fef/df4c96603c081d9b.jpg', '花西子花露玲珑陶瓷M303');
INSERT INTO Commodity
VALUES (508, '花西子', '花露玲珑陶瓷', '口红', '#B23C3C', '番茄', 'M136 抹红英', '中国', '哑光/雾面', 199.00, 2, '//img13.360buyimg.com/n1/jfs/t1/171049/24/18385/134294/6076ad72Eb45e4fb2/3fcdeea9ec1a89a5.jpg', '花西子花露玲珑陶瓷M136');
INSERT INTO Commodity
VALUES (509, '花西子', '花露玲珑陶瓷', '口红', '#B3352E', '番茄', 'M217 醉红釉', '中国', '哑光/雾面', 199.00, 1, '//img14.360buyimg.com/n1/jfs/t1/168491/32/18483/134708/6076ad7bEda1412ea/83ab3273e5d0c1f4.jpg', '花西子花露玲珑陶瓷M217');
INSERT INTO Commodity
VALUES (510, '花西子', '花露玲珑陶瓷', '口红', '#D05058', '珊瑚红', 'M304 桃花片', '中国', '哑光/雾面', 199.00, 1, '//img10.360buyimg.com/n1/jfs/t1/172772/9/4049/134085/6076ad85Ea5b75b6c/33041d77fa6eef49.jpg', '花西子花露玲珑陶瓷M304');
INSERT INTO Commodity
VALUES (511, '花西子', '雕花', '口红', '#963330', '复古', 'M507 棕檀绣', '中国', '自然/裸妆', 129.00, 0, '//img10.360buyimg.com/n1/jfs/t1/180377/6/1392/183822/608937a9E6ca69a79/20dfdead16584ff1.jpg', '花西子雕花M507');
INSERT INTO Commodity
VALUES (512, '花西子', '雕花', '口红', '#AF3324', '番茄', 'M214 秋砂绣', '中国', '自然/裸妆', 129.00, 1, '//img13.360buyimg.com/n1/jfs/t1/175258/24/6940/182878/608937b1E984089d0/4aec532103e6f7e2.jpg', '花西子雕花M214');
INSERT INTO Commodity
VALUES (513, '花西子', '雕花', '口红', '#7A1217', '铁锈', 'M115 御宫绣', '中国', '自然/裸妆', 129.00, 1, '//img10.360buyimg.com/n1/jfs/t1/154944/6/19577/207499/6035feb6Ec25c51e2/9b165a611389f09c.jpg', '花西子雕花M115');
INSERT INTO Commodity
VALUES (514, '花西子', '雕花', '口红', '#A9121D', '砖红', 'M123 伯牙绣', '中国', '自然/裸妆', 129.00, 1, '//img11.360buyimg.com/n1/jfs/t1/167200/3/18686/183816/60780387E0e874a07/6237eaee73d9a67f.jpg', '花西子雕花M123');
INSERT INTO Commodity
VALUES (515, '花西子', '雕花', '口红', '#AC274E', '复古', 'M505 紫云绣', '中国', '自然/裸妆', 129.00, 0, '//img12.360buyimg.com/n1/jfs/t1/166978/37/8014/209132/6035febfE790d1236/804a8820944ad52f.jpg', '花西子雕花M505');
INSERT INTO Commodity
VALUES (516, '花西子', '雕花', '口红', '#A31217', '砖红', 'M116 彤心绣', '中国', '自然/裸妆', 129.00, 1, '//img14.360buyimg.com/n1/jfs/t1/171489/40/7796/179257/6035fec8E0d5adfe5/580fab395862c318.jpg', '花西子雕花M116');
INSERT INTO Commodity
VALUES (517, '花西子', '雕花', '口红', '#970D20', '草莓', 'M117 红鸾绣', '中国', '自然/裸妆', 129.00, 1, '//img10.360buyimg.com/n1/jfs/t1/185162/32/1449/194929/608a588cEd8967fd8/01242860f16c1d89.jpg', '花西子雕花M117');
INSERT INTO Commodity
VALUES (518, '花西子', '雕花', '口红', '#AD2A20', '番茄', 'M119 湘妃绣', '中国', '自然/裸妆', 129.00, 0, '//img12.360buyimg.com/n1/jfs/t1/170327/25/7771/181218/6035fed2E29579095/be67abeda67f1555.jpg', '花西子雕花M119');
INSERT INTO Commodity
VALUES (519, '花西子', '雕花', '口红', '#B32A36', '番茄', 'M409 杜鹃·兰心', '中国', '哑光/雾面', 129.00, 0, '//img13.360buyimg.com/n1/jfs/t1/166524/22/7873/177676/603748efEe145d183/c79266a3c4f96912.jpg', '花西子雕花M409');
INSERT INTO Commodity
VALUES (520, '花西子', '雕花', '口红', '#9C0F27', '正红', 'M126 杜鹃·惊鸿', '中国', '自然/裸妆', 129.00, 0, '//img10.360buyimg.com/n1/jfs/t1/165835/10/7280/185356/6035feddE73821ce5/79adc0ed310d13d1.jpg', '花西子雕花M126');
INSERT INTO Commodity
VALUES (521, '花西子', '雕花', '口红', '#971E1C', '草莓', 'M122 绛仙绣', '中国', '自然/裸妆', 129.00, 0, '//img11.360buyimg.com/n1/jfs/t1/168633/6/7681/182055/6035fee8E3dc0f4fd/a9eb8d527e2e4b43.jpg', '花西子雕花M122');
INSERT INTO Commodity
VALUES (522, '花西子', '雕花', '口红', '#B43639', '番茄', 'M408 子期绣', '中国', '自然/裸妆', 129.00, 1, '//img10.360buyimg.com/n1/jfs/t1/182355/27/1326/159021/6088cb49E79b2132a/00c62f9935f29b3a.jpg', '花西子雕花M408');
INSERT INTO Commodity
VALUES (523, '花西子', '鲜花口红', '口红', '#BC2728', '番茄', 'M201 媚花奴', '中国', '自然/裸妆', 89.00, 2, '//img14.360buyimg.com/n1/jfs/t1/162012/29/7661/150987/6035f741Ec42b3791/dd13972e46680ff6.jpg', '花西子鲜花口红M201');
INSERT INTO Commodity
VALUES (524, '花西子', '鲜花口红', '口红', '#A12327', '复古', 'M103 小红春', '中国', '自然/裸妆', 89.00, 3, '//img10.360buyimg.com/n1/jfs/t1/153954/10/19528/130894/6035f762E2bb72850/8bbf0fe6113dae91.jpg', '花西子鲜花口红M103');
INSERT INTO Commodity
VALUES (525, '花西子', '鲜花口红', '口红', '#B71139', '复古', 'M101 天宫巧', '中国', '自然/裸妆', 89.00, 2, '//img12.360buyimg.com/n1/jfs/t1/162863/2/7352/130213/6035f79cE1345018f/6d358e5b6ac6cf1c.jpg', '花西子鲜花口红M101');
INSERT INTO Commodity
VALUES (526, '花西子', '鲜花口红', '口红', '#AF1C24', '复古', 'M102 大红春', '中国', '自然/裸妆', 89.00, 0, '//img13.360buyimg.com/n1/jfs/t1/171478/1/7654/130739/6035f7acEbbba6055/ed0e1e518f7fe30f.jpg', '花西子鲜花口红M102');
INSERT INTO Commodity
VALUES (527, '花西子', '鲜花唇釉', '唇釉', '#60222F', '梅子', 'M402 紫檀衣', '中国', '其它', 109.00, 2, '//img12.360buyimg.com/n1/jfs/t1/162493/18/12053/144785/604acd9cE42f58969/88593b73951b4a19.jpg', '花西子鲜花唇釉M402');
INSERT INTO Commodity
VALUES (528, '花西子', '鲜花唇釉', '唇釉', '#5D0916', '血浆', 'M101 帝女红', '中国', '其它', 109.00, 0, '//img12.360buyimg.com/n1/jfs/t1/166266/26/11892/144075/604acda3E62b180fd/63916c940ff12b7f.jpg', '花西子鲜花唇釉M101');
INSERT INTO Commodity
VALUES (529, '雅诗兰黛', '倾慕唇膏', '口红', '#A43B3D', '复古', '557# 焦糖烤栗', '欧美', '哑光/雾面', 230.00, 0, '//img11.360buyimg.com/n1/jfs/t1/195774/18/4464/224608/60a9d429Ead985e57/d2ad2bf6b0a7d26f.jpg', '雅诗兰黛倾慕唇膏557#');
INSERT INTO Commodity
VALUES (530, '雅诗兰黛', '绝色魅惑唇膏', '口红', '#A0192B', '正红', '314# 酒渍杨梅色', '比利时', '哑光/雾面', 330.00, 2, '//img10.360buyimg.com/n1/jfs/t1/176051/15/11118/236715/60a9d3a7Ef638a5f6/01ef920876cf80da.jpg', '雅诗兰黛绝色魅惑唇膏314#');
INSERT INTO Commodity
VALUES (531, '雅诗兰黛', '倾慕唇膏', '口红', '#C1414E', '豆沙', '420# 豆沙色', '欧美', '哑光/雾面', 230.00, 2, '//img12.360buyimg.com/n1/jfs/t1/176166/3/11021/245129/60a9d405E2211e2a1/590b02418852977a.jpg', '雅诗兰黛倾慕唇膏420#');
INSERT INTO Commodity
VALUES (532, '雅诗兰黛', '倾慕唇膏', '口红', '#BB443C', '番茄', '333# 干枫叶色', '欧美', '丝绒', 280.00, 1, '//img10.360buyimg.com/n1/jfs/t1/183357/36/5688/228973/60ab0183E6d2e435f/aed7b921d86846e6.jpg', '雅诗兰黛倾慕唇膏333#');
INSERT INTO Commodity
VALUES (533, '露华浓', '丽采神奇女侠限量', '口红', '#CA3839', '番茄', '002 女侠红', '美国', '哑光/雾面', 39.90, 0, '//img12.360buyimg.com/n1/jfs/t1/179537/9/2547/524795/60939b7dE0a985609/139bbba5bf0ab072.png', '露华浓丽采神奇女侠限量002');
INSERT INTO Commodity
VALUES (534, '露华浓', '丽采神奇女侠限量', '口红', '#A45A5B', '豆沙', '003 陶土棕', '美国', '哑光/雾面', 39.90, 0, '//img13.360buyimg.com/n1/jfs/t1/187435/37/1696/103290/60939b8dE9afd422b/9249e970b1abc201.jpg', '露华浓丽采神奇女侠限量003');
INSERT INTO Commodity
VALUES (535, '露华浓', '丽采经典口红', '口红', '#9F4D49', '豆沙', '225 棕调豆沙', '美国', '润泽/镜面', 69.00, 3, '//img12.360buyimg.com/n1/jfs/t1/185135/35/5315/105889/60a774d4Ecf14111c/1ad9199373a7ecd6.jpg', '露华浓丽采经典口红225');
INSERT INTO Commodity
VALUES (536, '露华浓', '丽采经典口红', '口红', '#BE1B22', '番茄', '006 橘调枫红', '美国', '润泽/镜面', 69.00, 2, '//img13.360buyimg.com/n1/jfs/t1/161484/24/20097/97874/607eaadeE7be7af30/b1898548ca5073d6.jpg', '露华浓丽采经典口红006');
INSERT INTO Commodity
VALUES (537, '露华浓', '丽采经典口红', '口红', '#8F231C', '草莓', '325 橘调棕红', '美国', '润泽/镜面', 69.00, 4, '//img14.360buyimg.com/n1/jfs/t1/189735/11/4326/108260/60a774e6E33fe1a4c/0b860c40322144d1.jpg', '露华浓丽采经典口红325');
INSERT INTO Commodity
VALUES (538, '露华浓', '丽采经典口红', '口红', '#AC323B', '复古', '525 枫叶豆沙', '美国', '润泽/镜面', 69.00, 1, '//img10.360buyimg.com/n1/jfs/t1/160124/33/21096/107597/608019b3Ec0b0e1ac/635f4a0aa9bbb287.jpg', '露华浓丽采经典口红525');
INSERT INTO Commodity
VALUES (539, '露华浓', '哑光丽采口红', '口红', '#901A27', '草莓', '051 棕调正红', '美国', '哑光/雾面', 69.00, 5, '//img11.360buyimg.com/n1/jfs/t1/183767/7/62/102301/607eacebE19093d34/a8e4a5fe3c8e5690.jpg', '露华浓哑光丽采口红051');
INSERT INTO Commodity
VALUES (540, '露华浓', '丽采经典口红', '口红', '#AF1C32', '复古', '745 惹火野莓', '美国', '润泽/镜面', 69.00, 3, '//img12.360buyimg.com/n1/jfs/t1/157991/18/20634/102757/60801977Eaa19dcbc/ab357462363f10d0.jpg', '露华浓丽采经典口红745');
INSERT INTO Commodity
VALUES (541, '露华浓', '丽采经典口红', '口红', '#A52326', '复古', '782 宝石草莓红', '美国', '闪光/珠光', 69.00, 1, '//img13.360buyimg.com/n1/jfs/t1/182638/35/86/113782/607eae09Eae921670/0db61a74b8774c7b.jpg', '露华浓丽采经典口红782');
INSERT INTO Commodity
VALUES (542, '露华浓', '丽采经典口红', '口红', '#C31B38', '番茄', '028 樱桃熟了', '美国', '润泽/镜面', 69.00, 1, '//img14.360buyimg.com/n1/jfs/t1/177089/1/115/104703/607eae7bEbdd39834/deaa8cfe6fe03ef5.jpg', '露华浓丽采经典口红028');
INSERT INTO Commodity
VALUES (543, '露华浓', '丽采经典口红', '口红', '#B01424', '复古', '730 玫调正红', '美国', '润泽/镜面', 69.00, 1, '//img10.360buyimg.com/n1/jfs/t1/161993/11/19899/99296/607eaf36E39a412cf/fe828231cbb7766b.jpg', '露华浓丽采经典口红730');
INSERT INTO Commodity
VALUES (544, '露华浓', '丽采经典口红', '口红', '#A54548', '豆沙', '445 玫瑰豆沙', '美国', '润泽/镜面', 69.00, 3, '//img11.360buyimg.com/n1/jfs/t1/158704/25/20834/103219/607eb02bE555e7679/6d03fa30a7a76c81.jpg', '露华浓丽采经典口红445');
INSERT INTO Commodity
VALUES (545, '露华浓', '丽采经典口红', '口红', '#E83330', '橘红', '677 橘子汽水', '美国', '润泽/镜面', 69.00, 1, '//img12.360buyimg.com/n1/jfs/t1/172568/28/5716/100912/607eb076E7e39bd02/b0a659cb72955f32.jpg', '露华浓丽采经典口红677');
INSERT INTO Commodity
VALUES (546, '露华浓', '丽采经典口红', '口红', '#9B4149', '豆沙', '510 浓郁浆果', '美国', '润泽/镜面', 69.00, 1, '//img13.360buyimg.com/n1/jfs/t1/193395/17/4014/100570/60a52abdE081e2f76/ed529e241cceb0f0.jpg', '露华浓丽采经典口红510');
INSERT INTO Commodity
VALUES (547, '露华浓', '丽采经典口红', '口红', '#C61A32', '番茄', '740 当红不让', '美国', '润泽/镜面', 69.00, 3, '//img14.360buyimg.com/n1/jfs/t1/182191/26/83/100751/607eb116E8db00480/5b2b1cc25191f58d.jpg', '露华浓丽采经典口红740');
INSERT INTO Commodity
VALUES (548, '露华浓', '丽采经典口红', '口红', '#D26C6C', '西柚', '415 午后蔷薇', '美国', '润泽/镜面', 69.00, 3, '//img10.360buyimg.com/n1/jfs/t1/185825/6/89/105098/607ee12fE00a3e97a/a463c59b4e549152.jpg', '露华浓丽采经典口红415');
INSERT INTO Commodity
VALUES (549, '露华浓', '丽采经典哑光黑管', '口红', '#9C2C3B', '复古', '008 棕调正红', '美国', '哑光/雾面', 69.00, 0, '//img11.360buyimg.com/n1/jfs/t1/185718/30/90/105640/607ee189E6d570bc5/d479bdc5a4c22fe1.jpg', '露华浓丽采经典哑光黑管008');
INSERT INTO Commodity
VALUES (550, '露华浓', '哑光丽采口红', '口红', '#9B0C35', '正红', '052 紫调樱桃', '美国', '哑光/雾面', 69.00, 2, '//img12.360buyimg.com/n1/jfs/t1/161442/20/18890/100418/607ee214E83729cc8/0f9fdd241422afe2.jpg', '露华浓哑光丽采口红052');
INSERT INTO Commodity
VALUES (551, '露华浓', '丽采经典哑光黑管', '口红', '#B41F34', '复古', '017 蓝调樱桃', '美国', '哑光/雾面', 69.00, 0, '//img13.360buyimg.com/n1/jfs/t1/170956/19/20269/102362/607ee268E545e8907/6ccf0a63c2620a5d.jpg', '露华浓丽采经典哑光黑管017');
INSERT INTO Commodity
VALUES (552, '露华浓', '丽采经典哑光黑管', '口红', '#A72632', '复古', '026 陶土砖红', '美国', '哑光/雾面', 69.00, 1, '//img14.360buyimg.com/n1/jfs/t1/184267/37/85/105609/607ee2daE1cf93e71/01ac275160623d86.jpg', '露华浓丽采经典哑光黑管026');
INSERT INTO Commodity
VALUES (553, '露华浓', '丽采经典哑光黑管', '口红', '#E83B3C', '珊瑚红', '007 冰晶血橙', '美国', '哑光/雾面', 69.00, 1, '//img10.360buyimg.com/n1/jfs/t1/182572/2/119/98356/607ee346Eaf08af08/9cb878c5c86c3850.jpg', '露华浓丽采经典哑光黑管007');
INSERT INTO Commodity
VALUES (554, '露华浓', '丽采经典哑光黑管', '口红', '#D61001', '橘红', '053 元气血橙', '美国', '哑光/雾面', 69.00, 1, '//img11.360buyimg.com/n1/jfs/t1/184635/37/101/105180/607ee3b9E9fcd3a3b/97b7e36104bfae3c.jpg', '露华浓丽采经典哑光黑管053');
INSERT INTO Commodity
VALUES (555, '露华浓', '丽采经典口红', '口红', '#CD2E46', '番茄', '435 西柚柔粉', '美国', '润泽/镜面', 39.90, 2, '//img11.360buyimg.com/n1/jfs/t1/179280/30/338/107383/6080da39E2482a802/8a0017e7bb899156.jpg', '露华浓丽采经典口红435');
INSERT INTO Commodity
VALUES (556, '露华浓', '丽采经典口红', '口红', '#922C41', '红棕', '460 嫣红木槿', '美国', '闪光/珠光', 39.90, 0, '//img12.360buyimg.com/n1/jfs/t1/167806/36/20064/113946/6080da42Efe102845/5770adb9a0796bc3.jpg', '露华浓丽采经典口红460');
INSERT INTO Commodity
VALUES (557, '露华浓', '丽采经典口红', '口红', '#A26952', '豆沙', '756 赤裸危情', '美国', '润泽/镜面', 39.90, 1, '//img13.360buyimg.com/n1/jfs/t1/183167/1/881/91375/6084dc3dE3be2f998/9a8b724de06d7e66.jpg', '露华浓丽采经典口红756');
INSERT INTO Commodity
VALUES (558, '露华浓', '丽采经典口红', '口红', '#A3322B', '复古', '761 橘调砖红', '美国', '润泽/镜面', 39.90, 2, '//img14.360buyimg.com/n1/jfs/t1/165613/2/20621/94820/6084dc31E651fa39f/38651e6a81daaec6.jpg', '露华浓丽采经典口红761');
INSERT INTO Commodity
VALUES (559, '露华浓', '丽采经典口红', '口红', '#AF5C5F', '豆沙', '762 晨露蔷薇', '美国', '润泽/镜面', 39.90, 0, '//img10.360buyimg.com/n1/jfs/t1/169604/4/20819/90558/6084db74Ed6c7fe2a/441041854a20b49d.jpg', '露华浓丽采经典口红762');
INSERT INTO Commodity
VALUES (560, '露华浓', '丽采经典口红', '口红', '#822552', '梅子', '771 多汁桑葚', '美国', '润泽/镜面', 39.90, 1, '//img11.360buyimg.com/n1/jfs/t1/178156/10/909/94075/6084db82E163bb16f/4bd7c7a6508ec34f.jpg', '露华浓丽采经典口红771');
INSERT INTO Commodity
VALUES (561, '露华浓', '丽采经典口红', '口红', '#E8394C', '珊瑚红', '773 半熟杏子', '美国', '润泽/镜面', 39.90, 1, '//img12.360buyimg.com/n1/jfs/t1/183927/37/808/89794/6084db8eE00da3884/209c15789273578f.jpg', '露华浓丽采经典口红773');
INSERT INTO Commodity
VALUES (562, '露华浓', '丽采经典口红', '口红', '#D93D42', '珊瑚红', '774 雪中梅', '美国', '润泽/镜面', 39.90, 0, '//img13.360buyimg.com/n1/jfs/t1/165541/29/20651/90302/6084db99Ee529019a/3724b42b612f0e15.jpg', '露华浓丽采经典口红774');
INSERT INTO Commodity
VALUES (563, '露华浓', '丽采经典口红', '口红', '#BA1E37', '番茄', '775 梅调正红', '美国', '润泽/镜面', 39.90, 4, '//img14.360buyimg.com/n1/jfs/t1/184622/14/817/91342/6084dbb5E3d5e6499/e393574add8e1d69.jpg', '露华浓丽采经典口红775');
INSERT INTO Commodity
VALUES (564, '露华浓', '丽采经典口红', '口红', '#6C202A', '铁锈', '777 午夜车厘', '美国', '润泽/镜面', 39.90, 0, '//img10.360buyimg.com/n1/jfs/t1/180347/9/835/94282/6084dbc0E2561ae52/dd2b9945fafa30f3.jpg', '露华浓丽采经典口红777');
INSERT INTO Commodity
VALUES (565, '露华浓', '丽采经典口红', '口红', '#DA4533', '珊瑚红', '005 日暮浅橘', '美国', '哑光/雾面', 39.90, 0, '//img11.360buyimg.com/n1/jfs/t1/163031/29/20656/86713/6084dbcdE1f193ebf/81292e6c88456683.jpg', '露华浓丽采经典口红005');
INSERT INTO Commodity
VALUES (566, '露华浓', '丽采经典口红', '口红', '#AE5E62', '豆沙', '616 桃你欢心', '美国', '润泽/镜面', 39.90, 1, '//img13.360buyimg.com/n1/jfs/t1/165636/27/20471/90198/6084dbecE67ecc02b/d064bb3b99c6d730.jpg', '露华浓丽采经典口红616');
INSERT INTO Commodity
VALUES (567, '露华浓', '丽采经典口红', '口红', '#984B51', '豆沙', '641 辛辣肉桂', '美国', '闪光/珠光', 39.90, 0, '//img14.360buyimg.com/n1/jfs/t1/166951/28/20912/91701/6084dc02E71c250c6/5adfa30a5f488d37.jpg', '露华浓丽采经典口红641');
INSERT INTO Commodity
VALUES (568, '露华浓', '丽采经典口红', '口红', '#CF242B', '橘红', '654 惊情嫣红', '美国', '润泽/镜面', 39.90, 2, '//img10.360buyimg.com/n1/jfs/t1/180917/18/887/91821/6084dc16Ed2f89c09/5ca7e212b9effffd.jpg', '露华浓丽采经典口红654');
INSERT INTO Commodity
VALUES (569, '露华浓', '丽采雾面哑光口红', '口红', '#EA3232', '橘红', '024 丝绒血橙色', '美国', '哑光/雾面', 69.00, 1, '//img11.360buyimg.com/n1/jfs/t1/164820/17/20117/126839/6080d9acE1ba5f1e8/ac5f970d7f881698.jpg', '露华浓丽采雾面哑光口红024');
INSERT INTO Commodity
VALUES (570, '露华浓', '丽采雾面哑光口红', '口红', '#A0514D', '豆沙', '225 橘棕肉桂色', '美国', '哑光/雾面', 69.00, 3, '//img12.360buyimg.com/n1/jfs/t1/158709/3/21189/65393/6080dc56E39d5fe41/1d7de5ce262b680d.jpg', '露华浓丽采雾面哑光口红225');
INSERT INTO Commodity
VALUES (571, '露华浓', '丽采雾面哑光口红', '口红', '#BD1429', '番茄', '730 玫调正红色', '美国', '哑光/雾面', 69.00, 4, '//img13.360buyimg.com/n1/jfs/t1/158323/16/20829/62738/6080dc57Ee4883fae/4f6d349cedd47a64.jpg', '露华浓丽采雾面哑光口红730');
INSERT INTO Commodity
VALUES (572, '露华浓', '丽采雾面哑光口红', '口红', '#8E333C', '红棕', '525 枫叶豆沙色', '美国', '哑光/雾面', 69.00, 1, '//img14.360buyimg.com/n1/jfs/t1/181685/34/355/65204/6080dc56E1426a481/c4eaeb799961b162.jpg', '露华浓丽采雾面哑光口红525');
INSERT INTO Commodity
VALUES (573, '露华浓', '丽采雾面哑光口红', '口红', '#AC2223', '复古', '006 橘调正红', '美国', '哑光/雾面', 69.00, 1, '//img10.360buyimg.com/n1/jfs/t1/179722/25/311/93271/6080d893E98832c5d/e5be4905ddc5257d.jpg', '露华浓丽采雾面哑光口红006');
INSERT INTO Commodity
VALUES (574, '露华浓', '丽采雾面哑光口红', '口红', '#86433E', '红棕', '325 橘调红棕', '美国', '哑光/雾面', 69.00, 1, '//img11.360buyimg.com/n1/jfs/t1/164868/15/20239/95344/6080d933Ed489f251/d4f6d81b8390bf6f.jpg', '露华浓丽采雾面哑光口红325');
INSERT INTO Commodity
VALUES (575, '露华浓', '丽采雾面哑光口红', '口红', '#900212', '血浆', '745 蓝调梅子', '美国', '哑光/雾面', 69.00, 0, '//img12.360buyimg.com/n1/jfs/t1/164247/1/20070/111357/6080d893E4bb16a7d/6496820e5c230904.jpg', '露华浓丽采雾面哑光口红745');
INSERT INTO Commodity
VALUES (576, '露华浓', '升级丽采唇膏', '口红', '#C1725F', '西柚', '#001 奶茶裸橘', '其它', '哑光/雾面', 69.00, 1, '//img10.360buyimg.com/n1/jfs/t1/168244/37/20527/94461/6084dcf3E7d698110/1db6188d90b20c87.jpg', '露华浓升级丽采唇膏#001');
INSERT INTO Commodity
VALUES (577, '露华浓', '升级丽采唇膏', '口红', '#7C4E46', '红棕', '#002 辛辣可可', '其它', '哑光/雾面', 69.00, 3, '//img11.360buyimg.com/n1/jfs/t1/161634/17/20881/90891/6084dd06E3365223b/7f598ab2487769e3.jpg', '露华浓升级丽采唇膏#002');
INSERT INTO Commodity
VALUES (578, '露华浓', '升级丽采唇膏', '口红', '#B7746B', '西柚', '#003 日暮浅咖', '其它', '哑光/雾面', 69.00, 1, '//img12.360buyimg.com/n1/jfs/t1/171187/27/20844/93082/6084dd11E059181fa/804f6194c96a81f9.jpg', '露华浓升级丽采唇膏#003');
INSERT INTO Commodity
VALUES (579, '露华浓', '升级丽采唇膏', '口红', '#A95D64', '豆沙', '#004 桃桃拿铁', '其它', '哑光/雾面', 69.00, 0, '//img13.360buyimg.com/n1/jfs/t1/178169/5/853/94148/6084dd1bE59ddd0f0/97a5315a77d20c5c.jpg', '露华浓升级丽采唇膏#004');
INSERT INTO Commodity
VALUES (580, '露华浓', '升级丽采唇膏', '口红', '#CA2964', '珊瑚红', '#005 爆炸甜心', '其它', '哑光/雾面', 69.00, 0, '//img14.360buyimg.com/n1/jfs/t1/163153/1/20505/95449/6084dd27E5ecbf7fc/c39ed82ead833362.jpg', '露华浓升级丽采唇膏#005');
INSERT INTO Commodity
VALUES (581, '露华浓', '升级丽采唇膏', '口红', '#A3265E', '豆沙', '#006 以紫传情', '其它', '哑光/雾面', 69.00, 2, '//img10.360buyimg.com/n1/jfs/t1/172367/19/6404/94331/6084dd35E59238dba/beaf421031aebbed.jpg', '露华浓升级丽采唇膏#006');
INSERT INTO Commodity
VALUES (582, '露华浓', '升级丽采唇膏', '口红', '#722C58', '红棕', '#009 亲吻呢喃', '其它', '哑光/雾面', 69.00, 1, '//img11.360buyimg.com/n1/jfs/t1/167972/24/20747/92528/6084dd3eE0aeebcc7/bf2073fd30da3d06.jpg', '露华浓升级丽采唇膏#009');
INSERT INTO Commodity
VALUES (583, '露华浓', '升级丽采唇膏', '口红', '#D47062', '西柚', '#011 曲奇奶咖', '其它', '哑光/雾面', 69.00, 2, '//img12.360buyimg.com/n1/jfs/t1/179155/34/871/97290/6084dd4aE62082df7/cf5b4594c97d7eb4.jpg', '露华浓升级丽采唇膏#011');
INSERT INTO Commodity
VALUES (584, '露华浓', '升级丽采唇膏', '口红', '#9A4441', '豆沙', '#014 无人区玫瑰', '其它', '哑光/雾面', 69.00, 1, '//img13.360buyimg.com/n1/jfs/t1/169070/21/20960/96135/6084dd58E2b849506/4e1afd709febe1e1.jpg', '露华浓升级丽采唇膏#014');
INSERT INTO Commodity
VALUES (585, '露华浓', '升级丽采唇膏', '口红', '#CE6168', '西柚', '#015 灰雾粉调', '其它', '哑光/雾面', 69.00, 2, '//img14.360buyimg.com/n1/jfs/t1/164794/26/21023/93663/6084dd65E86397944/01d807c133117ec4.jpg', '露华浓升级丽采唇膏#015');
INSERT INTO Commodity
VALUES (586, '露华浓', '升级丽采唇膏', '口红', '#CD6E7A', '西柚', '#016 诱粉甜心', '其它', '哑光/雾面', 69.00, 1, '//img10.360buyimg.com/n1/jfs/t1/184743/38/820/93980/6084dd72E00a31455/5c0c5a0b4543a441.jpg', '露华浓升级丽采唇膏#016');
INSERT INTO Commodity
VALUES (587, '露华浓', '升级丽采唇膏', '口红', '#82253B', '梅子', '#021 烟紫草莓', '其它', '哑光/雾面', 69.00, 2, '//img11.360buyimg.com/n1/jfs/t1/173351/40/6371/91243/6084dd7cEd560f72d/cde032ff2919a5ed.jpg', '露华浓升级丽采唇膏#021');
INSERT INTO Commodity
VALUES (588, '露华浓', '升级丽采唇膏', '口红', '#70232F', '梅子', '#022 棕咖', '其它', '哑光/雾面', 69.00, 1, '//img12.360buyimg.com/n1/jfs/t1/164518/14/20745/91166/6084dd88E8284ad6e/049534dde4b57a96.jpg', '露华浓升级丽采唇膏#022');
INSERT INTO Commodity
VALUES (589, '露华浓', '升级丽采唇膏', '口红', '#BC1A44', '番茄', '#023 血渍樱桃', '其它', '哑光/雾面', 69.00, 1, '//img13.360buyimg.com/n1/jfs/t1/182774/25/807/97604/6084dd95Ee475aa85/351f12e9d7606644.jpg', '露华浓升级丽采唇膏#023');
INSERT INTO Commodity
VALUES (590, '露华浓', '升级丽采唇膏', '口红', '#D6213A', '橘红', '#024 丝绒血橙', '其它', '哑光/雾面', 69.00, 2, '//img14.360buyimg.com/n1/jfs/t1/184882/35/855/95977/6084dda1E8557140d/b146e61b0bc1e9f0.jpg', '露华浓升级丽采唇膏#024');
INSERT INTO Commodity
VALUES (591, '露华浓', '升级丽采唇膏', '口红', '#971742', '梅子', '#025 雾感柔粉', '其它', '哑光/雾面', 69.00, 1, '//img10.360buyimg.com/n1/jfs/t1/186165/14/840/94366/6084ddb4Ecf65d161/eeb8a471de8d136a.jpg', '露华浓升级丽采唇膏#025');
INSERT INTO Commodity
VALUES (592, '露华浓', '升级丽采唇膏', '口红', '#AA576A', '豆沙', '#048 紫调豆沙', '其它', '哑光/雾面', 69.00, 1, '//img11.360buyimg.com/n1/jfs/t1/179969/1/832/100393/6084de4bE6dae5d12/0a29f93caa5c0a15.jpg', '露华浓升级丽采唇膏#048');
INSERT INTO Commodity
VALUES (593, '露华浓', '升级丽采唇膏', '口红', '#6A2A2C', '红棕', '#057 牛血红', '其它', '哑光/雾面', 69.00, 2, '//img12.360buyimg.com/n1/jfs/t1/174964/9/6407/79796/6084dddbEb2b84a89/37bd7c7237e5a531.jpg', '露华浓升级丽采唇膏#057');
INSERT INTO Commodity
VALUES (594, '露华浓', '升级丽采唇膏', '口红', '#63192D', '梅子', '#058 暗夜樱桃', '其它', '哑光/雾面', 69.00, 1, '//img13.360buyimg.com/n1/jfs/t1/173117/28/6401/85032/6084ddecEe87e7486/36ececd03608c69a.jpg', '露华浓升级丽采唇膏#058');
INSERT INTO Commodity
VALUES (595, '露华浓', '哑光雾感唇釉', '唇釉', '#DB1D5B', '珊瑚红', '605 冷调莓紫', '美国', '哑光/雾面', 109.00, 0, '//img14.360buyimg.com/n1/jfs/t1/164533/34/20422/170992/608021dbE2cba3bcd/0efe9f734c5caca2.jpg', '露华浓哑光雾感唇釉605');
INSERT INTO Commodity
VALUES (596, '露华浓', '哑光雾感唇釉', '唇釉', '#BA0C2C', '番茄', '635 复古红莓', '美国', '哑光/雾面', 109.00, 4, '//img10.360buyimg.com/n1/jfs/t1/164535/28/19982/178872/608021fbEbeee7740/569490aa81d69fd4.jpg', '露华浓哑光雾感唇釉635');
INSERT INTO Commodity
VALUES (597, '露华浓', '哑光雾感唇釉', '唇釉', '#C85268', '西柚', '600 雾粉豆沙', '美国', '哑光/雾面', 109.00, 1, '//img11.360buyimg.com/n1/jfs/t1/162370/9/20034/179014/60802230Ee2a0d4bf/72bf1e0698d36ead.jpg', '露华浓哑光雾感唇釉600');
INSERT INTO Commodity
VALUES (598, '露华浓', '哑光雾感唇釉', '唇釉', '#E12434', '橘红', '625 番茄橘红', '美国', '哑光/雾面', 109.00, 1, '//img13.360buyimg.com/n1/jfs/t1/162215/32/20087/183077/6080227dE95a82e62/ba5878c7feba6a19.jpg', '露华浓哑光雾感唇釉625');
INSERT INTO Commodity
VALUES (599, '露华浓', '哑光雾感唇釉', '唇釉', '#FF547E', '西柚', '615 玫瑰柔粉', '美国', '哑光/雾面', 109.00, 1, '//img14.360buyimg.com/n1/jfs/t1/172056/6/5841/159160/6080229aE061ccf2b/21b51323cd56985f.jpg', '露华浓哑光雾感唇釉615');
INSERT INTO Commodity
VALUES (600, '露华浓', '哑光雾感唇釉', '唇釉', '#E2154E', '橘红', '660 石榴红', '美国', '哑光/雾面', 109.00, 1, '//img10.360buyimg.com/n1/jfs/t1/163776/13/19599/185688/608022b6Eed7e00c0/cf602c6e760bbdd0.jpg', '露华浓哑光雾感唇釉660');
INSERT INTO Commodity
VALUES (601, '露华浓', '哑光雾感唇釉', '唇釉', '#F29287', '西柚', '690 金粉裸米', '美国', '哑光/雾面', 109.00, 0, '//img12.360buyimg.com/n1/jfs/t1/180082/10/305/191178/6080245dEfc5fcd9d/efeba1a2c621d52e.jpg', '露华浓哑光雾感唇釉690');
INSERT INTO Commodity
VALUES (602, '露华浓', '哑光雾感唇釉', '唇釉', '#9C6364', '豆沙', '705 蜜月红棕', '美国', '哑光/雾面', 109.00, 1, '//img13.360buyimg.com/n1/jfs/t1/158881/16/20881/192408/6080247eEe706ae0d/ae6b3cbb669f3310.jpg', '露华浓哑光雾感唇釉705');
INSERT INTO Commodity
VALUES (603, '露华浓', '哑光雾感唇釉', '唇釉', '#DF493A', '珊瑚红', '700 星降落日', '美国', '哑光/雾面', 109.00, 1, '//img14.360buyimg.com/n1/jfs/t1/170703/28/20277/165346/608024dcEb00fea1c/e9867bec1c5f6119.jpg', '露华浓哑光雾感唇釉700');
INSERT INTO Commodity
VALUES (604, '露华浓', '哑光雾感唇釉', '唇釉', '#D88D9B', '西柚', '680 樱花人鱼姬', '美国', '哑光/雾面', 109.00, 1, '//img10.360buyimg.com/n1/jfs/t1/175587/27/5819/169943/608024fcE2c06d762/21cd3bd4bfd69dc0.jpg', '露华浓哑光雾感唇釉680');
INSERT INTO Commodity
VALUES (605, '露华浓', '持妆镜面唇釉', '唇釉', '#DD1F07', '橘红', '#018 酱辣椒色', '欧美', '润泽/镜面', 149.00, 1, '//img14.360buyimg.com/n1/jfs/t1/172915/19/10457/119669/60a5c0e8E6badffd6/7c94da5b20e24ee3.jpg', '露华浓持妆镜面唇釉#018');
INSERT INTO Commodity
VALUES (606, '露华浓', '持妆镜面唇釉', '唇釉', '#C31B12', '番茄', '#019 血浆正红色', '欧美', '润泽/镜面', 149.00, 1, '//img10.360buyimg.com/n1/jfs/t1/180194/13/5045/119891/60a5c0f1E493bd3f9/9d6b0bee975a59bd.jpg', '露华浓持妆镜面唇釉#019');
INSERT INTO Commodity
VALUES (607, '露华浓', '持妆镜面唇釉', '唇釉', '#964237', '豆沙', '#006 绵绵豆沙色', '欧美', '润泽/镜面', 149.00, 1, '//img11.360buyimg.com/n1/jfs/t1/188763/29/4163/119254/60a5c105E4c045b84/0a8f8263cc09cdc6.jpg', '露华浓持妆镜面唇釉#006');
INSERT INTO Commodity
VALUES (608, '露华浓', '持妆镜面唇釉', '唇釉', '#8F3731', '正红', '#003 咖啡朗姆色', '欧美', '润泽/镜面', 149.00, 0, '//img12.360buyimg.com/n1/jfs/t1/175334/2/10602/119643/60a5c10eEc32327ce/a154cd9a72813281.jpg', '露华浓持妆镜面唇釉#003');
INSERT INTO Commodity
VALUES (609, '露华浓', '持妆镜面唇釉', '唇釉', '#B75070', '豆沙', '#008 微醺柔紫色', '欧美', '润泽/镜面', 149.00, 3, '//img13.360buyimg.com/n1/jfs/t1/189253/37/4101/118203/60a5c116E75ac2c96/ac6a0b23f830d544.jpg', '露华浓持妆镜面唇釉#008');
INSERT INTO Commodity
VALUES (610, '露华浓', '持妆镜面唇釉', '唇釉', '#B55A6B', '豆沙', '#009 雾粉蜜桃色', '欧美', '润泽/镜面', 149.00, 0, '//img14.360buyimg.com/n1/jfs/t1/177860/29/5013/119566/60a5c11eE77378c42/21b617e3106d3da7.jpg', '露华浓持妆镜面唇釉#009');
INSERT INTO Commodity
VALUES (611, '露华浓', '持妆镜面唇釉', '唇釉', '#AE3E47', '豆沙', '#013 焦糖南瓜色', '欧美', '润泽/镜面', 149.00, 3, '//img10.360buyimg.com/n1/jfs/t1/36149/27/15675/119526/60a5c126E23c5ec64/11d2ebc3e2591cf8.jpg', '露华浓持妆镜面唇釉#013');
INSERT INTO Commodity
VALUES (612, '露华浓', '持妆镜面唇釉', '唇釉', '#CA1D35', '橘红', '#015 橘红色', '欧美', '润泽/镜面', 149.00, 0, '//img11.360buyimg.com/n1/jfs/t1/185940/2/4979/119238/60a5c12cE6b74a44e/fd2ed4673866b369.jpg', '露华浓持妆镜面唇釉#015');
INSERT INTO Commodity
VALUES (613, '露华浓', '持妆镜面唇釉', '唇釉', '#9D1420', '正红', '#020 车厘子红', '欧美', '润泽/镜面', 149.00, 1, '//img12.360buyimg.com/n1/jfs/t1/187893/23/4102/119049/60a5c135E76a62a9c/0e48bf7be6eba008.jpg', '露华浓持妆镜面唇釉#020');
INSERT INTO Commodity
VALUES (614, '露华浓', '艳彩滋润唇膏笔', '唇笔', '#F34D88', '西柚', '#025 甜心樱桃色', '欧美', '润泽/镜面', 89.00, 1, '//img14.360buyimg.com/n1/jfs/t1/170888/32/20163/165060/60801490E556ba3df/a976c90e2a03ff7c.jpg', '露华浓艳彩滋润唇膏笔#025');
INSERT INTO Commodity
VALUES (615, '露华浓', '艳彩滋润唇膏笔', '唇笔', '#902638', '正红', '#045 浪漫棕红色', '欧美', '润泽/镜面', 89.00, 3, '//img11.360buyimg.com/n1/jfs/t1/184619/20/254/166486/60801572Eea13e4e5/bcc9f90def68bc37.jpg', '露华浓艳彩滋润唇膏笔#045');
INSERT INTO Commodity
VALUES (616, '露华浓', '艳彩滋润唇膏笔', '唇笔', '#9C2B23', '正红', '#055 挚爱浆果红', '欧美', '润泽/镜面', 89.00, 3, '//img12.360buyimg.com/n1/jfs/t1/177614/35/289/165131/608015d1Ebce3ad1f/bbb25d006a799bbb.jpg', '露华浓艳彩滋润唇膏笔#055');
INSERT INTO Commodity
VALUES (617, '露华浓', '雾彩气垫唇笔', '唇笔', '#B1544E', '豆沙', '#210 蜜桃乌龙色', '欧美', '哑光/雾面', 109.00, 1, '//img13.360buyimg.com/n1/jfs/t1/182177/9/263/167805/60801cd7Ed70db1b7/c35f06714b587a8d.jpg', '露华浓雾彩气垫唇笔#210');
INSERT INTO Commodity
VALUES (618, '露华浓', '雾彩气垫唇笔', '唇笔', '#B93055', '豆沙', '#220 野蔷薇色', '欧美', '哑光/雾面', 109.00, 2, '//img14.360buyimg.com/n1/jfs/t1/181975/31/288/169443/60801cd8E861b7421/251f9ad488fa9ba4.jpg', '露华浓雾彩气垫唇笔#220');
INSERT INTO Commodity
VALUES (619, '露华浓', '雾彩气垫唇笔', '唇笔', '#B6194A', '复古', '#240 浆果梅紫色', '欧美', '哑光/雾面', 109.00, 0, '//img10.360buyimg.com/n1/jfs/t1/168613/31/20087/200603/60801cd9E0d773b0b/82a2d7343676fc07.jpg', '露华浓雾彩气垫唇笔#240');
INSERT INTO Commodity
VALUES (620, '露华浓', '雾彩气垫唇笔', '唇笔', '#A8331D', '番茄', '#250 红姜梨色', '欧美', '哑光/雾面', 109.00, 0, '//img11.360buyimg.com/n1/jfs/t1/163895/25/19790/190480/60801cdaE83ba4240/e796bf116f99aa45.jpg', '露华浓雾彩气垫唇笔#250');
INSERT INTO Commodity
VALUES (621, '露华浓', '雾彩气垫唇笔', '唇笔', '#B51C20', '番茄', '#260 珊瑚血橙色', '欧美', '哑光/雾面', 109.00, 0, '//img12.360buyimg.com/n1/jfs/t1/173986/19/5878/194919/60801cdbEc4736238/c2144f6e074556d2.jpg', '露华浓雾彩气垫唇笔#260');
INSERT INTO Commodity
VALUES (622, '露华浓', '雾彩气垫唇笔', '唇笔', '#9B1A41', '复古', '#230 玫瑰紫藤色', '欧美', '哑光/雾面', 109.00, 1, '//img13.360buyimg.com/n1/jfs/t1/185766/36/221/191600/60801cd9Ec9b41924/96f9c99a454deebc.jpg', '露华浓雾彩气垫唇笔#230');
INSERT INTO Commodity
VALUES (623, '露华浓', '雾彩气垫唇笔', '唇笔', '#671E20', '铁锈', '#270 勃艮第酒红色', '欧美', '哑光/雾面', 109.00, 3, '//img14.360buyimg.com/n1/jfs/t1/165007/7/20154/193293/60801cdcEbcd05b7a/0d1274a2feb22d6e.jpg', '露华浓雾彩气垫唇笔#270');
INSERT INTO Commodity
VALUES (624, '露华浓', '雾彩气垫唇笔', '唇笔', '#9A423D', '豆沙', '#200 玫瑰茶棕色', '欧美', '哑光/雾面', 109.00, 0, '//img10.360buyimg.com/n1/jfs/t1/184850/7/232/180940/60801cd6Ecc01ddaf/027ce9efe8a0fe1b.jpg', '露华浓雾彩气垫唇笔#200');
INSERT INTO Commodity
VALUES (625, '露华浓', '雾彩气垫唇笔', '唇笔', '#66352D', '红棕', '#280 黑巧棕色', '欧美', '哑光/雾面', 109.00, 2, '//img11.360buyimg.com/n1/jfs/t1/171511/10/20224/199598/60801cddE027f5291/5ecce375d7a6dfe4.jpg', '露华浓雾彩气垫唇笔#280');
/*!40000 ALTER TABLE `Commodity` ENABLE KEYS */;
COMMIT;

--
-- Table structure for table `Comment`
--

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;
DROP TABLE IF EXISTS `Comment`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Comment`
(
    `id`           int(11)      NOT NULL AUTO_INCREMENT,
    `commodity_id` int(11)      NOT NULL,
    `keyword`      varchar(255) NOT NULL,
    `count`        int(11)      NOT NULL,
    PRIMARY KEY (`id`)
) ENGINE = InnoDB
  AUTO_INCREMENT = 1
  DEFAULT CHARSET = utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Comment`
--

BEGIN;
/*!40000 ALTER TABLE `Comment` ENABLE KEYS */;
INSERT INTO Comment
VALUES (1, 1, '可爱', 4);
INSERT INTO Comment
VALUES (2, 1, '丝绒', 2);
INSERT INTO Comment
VALUES (3, 1, '雾面', 2);
INSERT INTO Comment
VALUES (4, 1, '不沾杯', 2);
INSERT INTO Comment
VALUES (5, 1, '显白', 2);
INSERT INTO Comment
VALUES (6, 1, '满分', 1);
INSERT INTO Comment
VALUES (7, 1, '高级', 1);
INSERT INTO Comment
VALUES (8, 2, '轻薄', 4);
INSERT INTO Comment
VALUES (9, 2, '显白', 4);
INSERT INTO Comment
VALUES (10, 2, '可爱', 3);
INSERT INTO Comment
VALUES (11, 2, '丝绒', 2);
INSERT INTO Comment
VALUES (12, 2, '日常', 2);
INSERT INTO Comment
VALUES (13, 2, '细闪', 1);
INSERT INTO Comment
VALUES (14, 2, '太可了', 1);
INSERT INTO Comment
VALUES (15, 3, '显白', 6);
INSERT INTO Comment
VALUES (16, 3, '精致', 2);
INSERT INTO Comment
VALUES (17, 3, '可爱', 2);
INSERT INTO Comment
VALUES (18, 3, '不错', 2);
INSERT INTO Comment
VALUES (19, 3, '轻薄', 2);
INSERT INTO Comment
VALUES (20, 3, '给力', 2);
INSERT INTO Comment
VALUES (21, 3, '自然', 1);
INSERT INTO Comment
VALUES (22, 4, '很好', 7);
INSERT INTO Comment
VALUES (23, 4, '可爱', 4);
INSERT INTO Comment
VALUES (24, 4, '显白', 3);
INSERT INTO Comment
VALUES (25, 4, '细闪', 3);
INSERT INTO Comment
VALUES (26, 4, '不错', 3);
INSERT INTO Comment
VALUES (27, 4, '轻薄', 2);
INSERT INTO Comment
VALUES (28, 4, '好闻', 2);
INSERT INTO Comment
VALUES (29, 5, '轻薄', 5);
INSERT INTO Comment
VALUES (30, 5, '不错', 4);
INSERT INTO Comment
VALUES (31, 5, '有质感', 3);
INSERT INTO Comment
VALUES (32, 5, '推荐', 3);
INSERT INTO Comment
VALUES (33, 5, '给力', 2);
INSERT INTO Comment
VALUES (34, 5, '持久', 2);
INSERT INTO Comment
VALUES (35, 5, '很好', 2);
INSERT INTO Comment
VALUES (36, 6, '带闪', 2);
INSERT INTO Comment
VALUES (37, 6, '好用', 2);
INSERT INTO Comment
VALUES (38, 6, '哑光', 2);
INSERT INTO Comment
VALUES (39, 6, '划算', 2);
INSERT INTO Comment
VALUES (40, 6, '不会拔干', 1);
INSERT INTO Comment
VALUES (41, 6, '无限回购', 1);
INSERT INTO Comment
VALUES (42, 6, '不干', 1);
INSERT INTO Comment
VALUES (43, 7, '持久', 6);
INSERT INTO Comment
VALUES (44, 7, '不错', 4);
INSERT INTO Comment
VALUES (45, 7, '轻薄', 3);
INSERT INTO Comment
VALUES (46, 7, '显白', 3);
INSERT INTO Comment
VALUES (47, 7, '丝绒', 3);
INSERT INTO Comment
VALUES (48, 7, '很好', 2);
INSERT INTO Comment
VALUES (49, 7, '有质感', 2);
INSERT INTO Comment
VALUES (50, 8, '很好', 5);
INSERT INTO Comment
VALUES (51, 8, '持久', 4);
INSERT INTO Comment
VALUES (52, 8, '雾面', 3);
INSERT INTO Comment
VALUES (53, 8, '滋润', 3);
INSERT INTO Comment
VALUES (54, 8, '显白', 3);
INSERT INTO Comment
VALUES (55, 8, '不拔干', 3);
INSERT INTO Comment
VALUES (56, 8, '丝滑', 2);
INSERT INTO Comment
VALUES (57, 9, '好闻', 3);
INSERT INTO Comment
VALUES (58, 9, '很好', 3);
INSERT INTO Comment
VALUES (59, 9, '不干', 2);
INSERT INTO Comment
VALUES (60, 9, '丝绒', 2);
INSERT INTO Comment
VALUES (61, 9, '不沾杯', 2);
INSERT INTO Comment
VALUES (62, 9, '细闪', 2);
INSERT INTO Comment
VALUES (63, 9, '高级', 2);
INSERT INTO Comment
VALUES (64, 10, '好闻', 5);
INSERT INTO Comment
VALUES (65, 10, '显白', 4);
INSERT INTO Comment
VALUES (66, 10, '不拔干', 3);
INSERT INTO Comment
VALUES (67, 10, '顺滑', 2);
INSERT INTO Comment
VALUES (68, 10, '划算', 2);
INSERT INTO Comment
VALUES (69, 10, '丝绒', 1);
INSERT INTO Comment
VALUES (70, 10, '不沾杯', 1);
INSERT INTO Comment
VALUES (71, 11, '好用', 4);
INSERT INTO Comment
VALUES (72, 11, '满意', 3);
INSERT INTO Comment
VALUES (73, 11, '日常', 3);
INSERT INTO Comment
VALUES (74, 11, '很美', 2);
INSERT INTO Comment
VALUES (75, 11, '推荐', 2);
INSERT INTO Comment
VALUES (76, 11, '丝绒', 2);
INSERT INTO Comment
VALUES (77, 11, '太可了', 1);
INSERT INTO Comment
VALUES (78, 12, '丝绒', 4);
INSERT INTO Comment
VALUES (79, 12, '不错', 3);
INSERT INTO Comment
VALUES (80, 12, '显白', 3);
INSERT INTO Comment
VALUES (81, 12, '哑光', 2);
INSERT INTO Comment
VALUES (82, 12, '不沾杯', 2);
INSERT INTO Comment
VALUES (83, 12, '划算', 2);
INSERT INTO Comment
VALUES (84, 12, '滋润', 2);
INSERT INTO Comment
VALUES (85, 13, '丝绒', 4);
INSERT INTO Comment
VALUES (86, 13, '哑光', 4);
INSERT INTO Comment
VALUES (87, 13, '好闻', 4);
INSERT INTO Comment
VALUES (88, 13, '不错', 4);
INSERT INTO Comment
VALUES (89, 13, '很好', 3);
INSERT INTO Comment
VALUES (90, 13, '轻薄', 3);
INSERT INTO Comment
VALUES (91, 13, '高级', 2);
INSERT INTO Comment
VALUES (92, 14, '哑光', 4);
INSERT INTO Comment
VALUES (93, 14, '轻薄', 3);
INSERT INTO Comment
VALUES (94, 14, '好闻', 3);
INSERT INTO Comment
VALUES (95, 14, '丝绒', 3);
INSERT INTO Comment
VALUES (96, 14, '日常', 3);
INSERT INTO Comment
VALUES (97, 14, '显白', 3);
INSERT INTO Comment
VALUES (98, 14, '保湿', 2);
INSERT INTO Comment
VALUES (99, 15, '不错', 6);
INSERT INTO Comment
VALUES (100, 15, '持久', 3);
INSERT INTO Comment
VALUES (101, 15, '梅子色', 3);
INSERT INTO Comment
VALUES (102, 15, '雾面', 3);
INSERT INTO Comment
VALUES (103, 15, '轻薄', 3);
INSERT INTO Comment
VALUES (104, 15, '很好', 3);
INSERT INTO Comment
VALUES (105, 15, '镜面', 2);
INSERT INTO Comment
VALUES (106, 16, '哑光', 3);
INSERT INTO Comment
VALUES (107, 16, '滋润', 2);
INSERT INTO Comment
VALUES (108, 16, '推荐', 2);
INSERT INTO Comment
VALUES (109, 16, '持久', 2);
INSERT INTO Comment
VALUES (110, 16, '少女', 1);
INSERT INTO Comment
VALUES (111, 16, '保湿', 1);
INSERT INTO Comment
VALUES (112, 16, '轻薄', 1);
INSERT INTO Comment
VALUES (113, 17, '哑光', 6);
INSERT INTO Comment
VALUES (114, 17, '持久', 6);
INSERT INTO Comment
VALUES (115, 17, '雾面', 3);
INSERT INTO Comment
VALUES (116, 17, '轻薄', 3);
INSERT INTO Comment
VALUES (117, 17, '丝滑', 3);
INSERT INTO Comment
VALUES (118, 17, '甜甜的', 3);
INSERT INTO Comment
VALUES (119, 17, '丝绒', 2);
INSERT INTO Comment
VALUES (120, 18, '轻薄', 6);
INSERT INTO Comment
VALUES (121, 18, '很好', 6);
INSERT INTO Comment
VALUES (122, 18, '持久', 4);
INSERT INTO Comment
VALUES (123, 18, '滋润', 4);
INSERT INTO Comment
VALUES (124, 18, '高级', 4);
INSERT INTO Comment
VALUES (125, 18, '不错', 3);
INSERT INTO Comment
VALUES (126, 18, '显白', 3);
INSERT INTO Comment
VALUES (127, 19, '很好', 5);
INSERT INTO Comment
VALUES (128, 19, '显白', 3);
INSERT INTO Comment
VALUES (129, 19, '气场', 2);
INSERT INTO Comment
VALUES (130, 19, '不错', 2);
INSERT INTO Comment
VALUES (131, 19, '丝绒', 2);
INSERT INTO Comment
VALUES (132, 19, '不拔干', 2);
INSERT INTO Comment
VALUES (133, 19, '温柔', 2);
INSERT INTO Comment
VALUES (134, 20, '不错', 3);
INSERT INTO Comment
VALUES (135, 20, '显白', 3);
INSERT INTO Comment
VALUES (136, 20, '哑光', 3);
INSERT INTO Comment
VALUES (137, 20, '轻薄', 2);
INSERT INTO Comment
VALUES (138, 20, '提气色', 2);
INSERT INTO Comment
VALUES (139, 20, '一般', 2);
INSERT INTO Comment
VALUES (140, 20, '不干', 1);
INSERT INTO Comment
VALUES (141, 21, '好用', 3);
INSERT INTO Comment
VALUES (142, 21, '不错', 3);
INSERT INTO Comment
VALUES (143, 21, '雾面', 3);
INSERT INTO Comment
VALUES (144, 21, '滋润', 2);
INSERT INTO Comment
VALUES (145, 21, '轻薄', 2);
INSERT INTO Comment
VALUES (146, 21, '持久', 2);
INSERT INTO Comment
VALUES (147, 21, '润唇膏', 2);
INSERT INTO Comment
VALUES (148, 22, '持久', 4);
INSERT INTO Comment
VALUES (149, 22, '哑光', 3);
INSERT INTO Comment
VALUES (150, 22, '值得', 3);
INSERT INTO Comment
VALUES (151, 22, '小巧', 3);
INSERT INTO Comment
VALUES (152, 22, '满分', 3);
INSERT INTO Comment
VALUES (153, 22, '满意', 3);
INSERT INTO Comment
VALUES (154, 22, '轻薄', 2);
INSERT INTO Comment
VALUES (155, 23, '轻薄', 4);
INSERT INTO Comment
VALUES (156, 23, '好闻', 3);
INSERT INTO Comment
VALUES (157, 23, '很好', 2);
INSERT INTO Comment
VALUES (158, 23, '持久', 2);
INSERT INTO Comment
VALUES (159, 23, '不拔干', 2);
INSERT INTO Comment
VALUES (160, 23, '满意', 2);
INSERT INTO Comment
VALUES (161, 23, '不错', 2);
INSERT INTO Comment
VALUES (162, 24, '细闪', 4);
INSERT INTO Comment
VALUES (163, 24, '持久', 4);
INSERT INTO Comment
VALUES (164, 24, '滋润', 4);
INSERT INTO Comment
VALUES (165, 24, '轻薄', 3);
INSERT INTO Comment
VALUES (166, 24, '漂亮', 3);
INSERT INTO Comment
VALUES (167, 24, '显白', 3);
INSERT INTO Comment
VALUES (168, 24, '满意', 2);
INSERT INTO Comment
VALUES (169, 25, '推荐', 3);
INSERT INTO Comment
VALUES (170, 25, '国货', 2);
INSERT INTO Comment
VALUES (171, 25, '很好', 2);
INSERT INTO Comment
VALUES (172, 25, '滋润', 2);
INSERT INTO Comment
VALUES (173, 25, '漂亮', 2);
INSERT INTO Comment
VALUES (174, 25, '轻薄', 2);
INSERT INTO Comment
VALUES (175, 25, '镜面', 2);
INSERT INTO Comment
VALUES (176, 26, '丝滑', 4);
INSERT INTO Comment
VALUES (177, 26, '哑光', 3);
INSERT INTO Comment
VALUES (178, 26, '高级', 3);
INSERT INTO Comment
VALUES (179, 26, '很好', 2);
INSERT INTO Comment
VALUES (180, 26, '不干', 1);
INSERT INTO Comment
VALUES (181, 26, '饱和度高', 1);
INSERT INTO Comment
VALUES (182, 26, '手感很好', 1);
INSERT INTO Comment
VALUES (183, 27, '很好', 3);
INSERT INTO Comment
VALUES (184, 27, '满意', 2);
INSERT INTO Comment
VALUES (185, 27, '不错', 2);
INSERT INTO Comment
VALUES (186, 27, '颜值很高', 1);
INSERT INTO Comment
VALUES (187, 27, '奶油', 1);
INSERT INTO Comment
VALUES (188, 27, '持久', 1);
INSERT INTO Comment
VALUES (189, 27, '雾面', 1);
INSERT INTO Comment
VALUES (190, 28, '很好', 2);
INSERT INTO Comment
VALUES (191, 28, '满意', 2);
INSERT INTO Comment
VALUES (192, 28, '不干', 2);
INSERT INTO Comment
VALUES (193, 28, '好用', 1);
INSERT INTO Comment
VALUES (194, 28, '不易掉色', 1);
INSERT INTO Comment
VALUES (195, 28, '润滑', 1);
INSERT INTO Comment
VALUES (196, 28, '持久', 1);
INSERT INTO Comment
VALUES (197, 29, '满意', 2);
INSERT INTO Comment
VALUES (198, 29, '很好', 2);
INSERT INTO Comment
VALUES (199, 29, '划算', 2);
INSERT INTO Comment
VALUES (200, 29, '丝绒', 1);
INSERT INTO Comment
VALUES (201, 29, '持久', 1);
INSERT INTO Comment
VALUES (202, 29, '丝滑', 1);
INSERT INTO Comment
VALUES (203, 29, '高档', 1);
INSERT INTO Comment
VALUES (204, 30, '不错', 3);
INSERT INTO Comment
VALUES (205, 30, '丝绒', 2);
INSERT INTO Comment
VALUES (206, 30, '很好', 2);
INSERT INTO Comment
VALUES (207, 30, '满意', 2);
INSERT INTO Comment
VALUES (208, 30, '新年版', 1);
INSERT INTO Comment
VALUES (209, 30, '红色', 1);
INSERT INTO Comment
VALUES (210, 30, '不易沾杯', 1);
INSERT INTO Comment
VALUES (211, 31, '持久', 3);
INSERT INTO Comment
VALUES (212, 31, '推荐', 2);
INSERT INTO Comment
VALUES (213, 31, '不错', 2);
INSERT INTO Comment
VALUES (214, 31, '显白', 2);
INSERT INTO Comment
VALUES (215, 31, '颜色很正', 1);
INSERT INTO Comment
VALUES (216, 31, '滋润', 1);
INSERT INTO Comment
VALUES (217, 31, '好闻', 1);
INSERT INTO Comment
VALUES (218, 32, '不错', 2);
INSERT INTO Comment
VALUES (219, 32, '红色', 2);
INSERT INTO Comment
VALUES (220, 32, '不会拔干', 1);
INSERT INTO Comment
VALUES (221, 32, '顺滑', 1);
INSERT INTO Comment
VALUES (222, 32, '丝绒', 1);
INSERT INTO Comment
VALUES (223, 32, '绝美', 1);
INSERT INTO Comment
VALUES (224, 32, '显白', 1);
INSERT INTO Comment
VALUES (225, 33, '可爱', 12);
INSERT INTO Comment
VALUES (226, 33, '很好', 7);
INSERT INTO Comment
VALUES (227, 33, '送闺蜜', 1);
INSERT INTO Comment
VALUES (228, 33, '不错', 1);
INSERT INTO Comment
VALUES (229, 34, '丝滑', 2);
INSERT INTO Comment
VALUES (230, 34, '不拔干', 2);
INSERT INTO Comment
VALUES (231, 34, '显白', 2);
INSERT INTO Comment
VALUES (232, 34, '迷你', 1);
INSERT INTO Comment
VALUES (233, 34, '不粘腻', 1);
INSERT INTO Comment
VALUES (234, 34, '自然', 1);
INSERT INTO Comment
VALUES (235, 34, '气质', 1);
INSERT INTO Comment
VALUES (236, 35, '可爱', 2);
INSERT INTO Comment
VALUES (237, 35, '好闻', 2);
INSERT INTO Comment
VALUES (238, 35, '显白', 2);
INSERT INTO Comment
VALUES (239, 35, '很好', 1);
INSERT INTO Comment
VALUES (240, 35, '持久', 1);
INSERT INTO Comment
VALUES (241, 35, '不拔干', 1);
INSERT INTO Comment
VALUES (242, 35, '丝滑', 1);
INSERT INTO Comment
VALUES (243, 36, '不错', 1);
INSERT INTO Comment
VALUES (244, 36, '满意', 1);
INSERT INTO Comment
VALUES (245, 37, '很好', 5);
INSERT INTO Comment
VALUES (246, 37, '满意', 1);
INSERT INTO Comment
VALUES (247, 37, '不错', 1);
INSERT INTO Comment
VALUES (248, 37, '给力', 1);
INSERT INTO Comment
VALUES (249, 37, '可爱', 1);
INSERT INTO Comment
VALUES (250, 37, '显白', 1);
INSERT INTO Comment
VALUES (251, 38, '不错', 6);
INSERT INTO Comment
VALUES (252, 38, '可爱', 1);
INSERT INTO Comment
VALUES (253, 38, '巧克力味', 1);
INSERT INTO Comment
VALUES (254, 38, '丝滑', 1);
INSERT INTO Comment
VALUES (255, 38, '不易沾杯', 1);
INSERT INTO Comment
VALUES (256, 38, '不易掉色', 1);
INSERT INTO Comment
VALUES (257, 38, '显白', 1);
INSERT INTO Comment
VALUES (258, 39, '不错', 4);
INSERT INTO Comment
VALUES (259, 39, '满意', 3);
INSERT INTO Comment
VALUES (260, 39, '滋润', 3);
INSERT INTO Comment
VALUES (261, 39, '很好', 3);
INSERT INTO Comment
VALUES (262, 39, '持久', 2);
INSERT INTO Comment
VALUES (263, 39, '可爱', 2);
INSERT INTO Comment
VALUES (264, 39, '丝滑', 2);
INSERT INTO Comment
VALUES (265, 40, '丝滑', 3);
INSERT INTO Comment
VALUES (266, 40, '丝绒', 3);
INSERT INTO Comment
VALUES (267, 40, '高级', 2);
INSERT INTO Comment
VALUES (268, 40, '很好', 2);
INSERT INTO Comment
VALUES (269, 40, '绝美', 1);
INSERT INTO Comment
VALUES (270, 40, '漂亮', 1);
INSERT INTO Comment
VALUES (271, 40, '温柔', 1);
INSERT INTO Comment
VALUES (272, 41, '好用', 2);
INSERT INTO Comment
VALUES (273, 41, '不干', 2);
INSERT INTO Comment
VALUES (274, 41, '漂亮', 2);
INSERT INTO Comment
VALUES (275, 41, '值得', 1);
INSERT INTO Comment
VALUES (276, 41, '颜色正', 1);
INSERT INTO Comment
VALUES (277, 41, '可爱', 1);
INSERT INTO Comment
VALUES (278, 41, '轻薄', 1);
INSERT INTO Comment
VALUES (279, 42, '不错', 3);
INSERT INTO Comment
VALUES (280, 42, '限定版', 2);
INSERT INTO Comment
VALUES (281, 42, '甜甜的', 2);
INSERT INTO Comment
VALUES (282, 42, '空气感', 1);
INSERT INTO Comment
VALUES (283, 42, '精致', 1);
INSERT INTO Comment
VALUES (284, 42, '春夏', 1);
INSERT INTO Comment
VALUES (285, 42, '润唇膏', 1);
INSERT INTO Comment
VALUES (286, 43, '很好', 4);
INSERT INTO Comment
VALUES (287, 43, '满分', 3);
INSERT INTO Comment
VALUES (288, 43, '好用', 2);
INSERT INTO Comment
VALUES (289, 43, '不错', 2);
INSERT INTO Comment
VALUES (290, 43, '便宜', 1);
INSERT INTO Comment
VALUES (291, 43, '可爱', 1);
INSERT INTO Comment
VALUES (292, 43, '枫叶红', 1);
INSERT INTO Comment
VALUES (293, 44, '可爱', 4);
INSERT INTO Comment
VALUES (294, 44, '很好', 4);
INSERT INTO Comment
VALUES (295, 44, '不错', 3);
INSERT INTO Comment
VALUES (296, 44, '持久', 3);
INSERT INTO Comment
VALUES (297, 44, '满意', 3);
INSERT INTO Comment
VALUES (298, 44, '细闪', 2);
INSERT INTO Comment
VALUES (299, 44, '带闪', 2);
INSERT INTO Comment
VALUES (300, 45, '可爱', 5);
INSERT INTO Comment
VALUES (301, 45, '不错', 3);
INSERT INTO Comment
VALUES (302, 45, '轻薄', 2);
INSERT INTO Comment
VALUES (303, 45, '很好', 2);
INSERT INTO Comment
VALUES (304, 45, '不沾杯', 2);
INSERT INTO Comment
VALUES (305, 45, '细闪', 1);
INSERT INTO Comment
VALUES (306, 45, '满意', 1);
INSERT INTO Comment
VALUES (307, 46, '不错', 3);
INSERT INTO Comment
VALUES (308, 46, '日常', 2);
INSERT INTO Comment
VALUES (309, 46, '很好', 2);
INSERT INTO Comment
VALUES (310, 46, '丝滑', 2);
INSERT INTO Comment
VALUES (311, 46, '可爱', 2);
INSERT INTO Comment
VALUES (312, 46, '满意', 2);
INSERT INTO Comment
VALUES (313, 46, '划算', 2);
INSERT INTO Comment
VALUES (314, 47, '很好', 4);
INSERT INTO Comment
VALUES (315, 47, '不错', 3);
INSERT INTO Comment
VALUES (316, 47, '雾面', 2);
INSERT INTO Comment
VALUES (317, 47, '满意', 2);
INSERT INTO Comment
VALUES (318, 47, '漂亮', 1);
INSERT INTO Comment
VALUES (319, 47, '滋润', 1);
INSERT INTO Comment
VALUES (320, 47, '哑光', 1);
INSERT INTO Comment
VALUES (321, 48, '不错', 2);
INSERT INTO Comment
VALUES (322, 48, '赞', 1);
INSERT INTO Comment
VALUES (323, 48, '上档次', 1);
INSERT INTO Comment
VALUES (324, 48, '雾面', 1);
INSERT INTO Comment
VALUES (325, 48, '精致', 1);
INSERT INTO Comment
VALUES (326, 48, '漂亮', 1);
INSERT INTO Comment
VALUES (327, 48, '好用', 1);
INSERT INTO Comment
VALUES (328, 49, '橘调', 2);
INSERT INTO Comment
VALUES (329, 49, '显白', 2);
INSERT INTO Comment
VALUES (330, 49, '雾面', 1);
INSERT INTO Comment
VALUES (331, 49, '哑光', 1);
INSERT INTO Comment
VALUES (332, 49, '润唇膏', 1);
INSERT INTO Comment
VALUES (333, 49, '漂亮', 1);
INSERT INTO Comment
VALUES (334, 49, '丝滑', 1);
INSERT INTO Comment
VALUES (335, 50, '显白', 2);
INSERT INTO Comment
VALUES (336, 50, '不错', 2);
INSERT INTO Comment
VALUES (337, 50, '高级', 1);
INSERT INTO Comment
VALUES (338, 50, '颜值很高', 1);
INSERT INTO Comment
VALUES (339, 50, '轻薄', 1);
INSERT INTO Comment
VALUES (340, 50, '丝绒', 1);
INSERT INTO Comment
VALUES (341, 50, '不挑皮', 1);
INSERT INTO Comment
VALUES (342, 51, '满意', 2);
INSERT INTO Comment
VALUES (343, 51, '颜值很高', 1);
INSERT INTO Comment
VALUES (344, 51, '给力', 1);
INSERT INTO Comment
VALUES (345, 51, '丝滑', 1);
INSERT INTO Comment
VALUES (346, 51, '丝绒', 1);
INSERT INTO Comment
VALUES (347, 51, '很好', 1);
INSERT INTO Comment
VALUES (348, 51, '百搭', 1);
INSERT INTO Comment
VALUES (349, 52, '显白', 1);
INSERT INTO Comment
VALUES (350, 52, '不错', 1);
INSERT INTO Comment
VALUES (351, 52, '颜值很高', 1);
INSERT INTO Comment
VALUES (352, 52, '不难闻', 1);
INSERT INTO Comment
VALUES (353, 52, '好闻', 1);
INSERT INTO Comment
VALUES (354, 52, '便宜', 1);
INSERT INTO Comment
VALUES (355, 52, '很好', 1);
INSERT INTO Comment
VALUES (356, 53, '很好', 5);
INSERT INTO Comment
VALUES (357, 53, '不错', 5);
INSERT INTO Comment
VALUES (358, 53, '镜面', 4);
INSERT INTO Comment
VALUES (359, 53, '甜甜的', 2);
INSERT INTO Comment
VALUES (360, 53, '可爱', 2);
INSERT INTO Comment
VALUES (361, 53, '好用', 2);
INSERT INTO Comment
VALUES (362, 53, '持久', 2);
INSERT INTO Comment
VALUES (363, 54, '不错', 3);
INSERT INTO Comment
VALUES (364, 54, '便宜', 2);
INSERT INTO Comment
VALUES (365, 54, '值得', 2);
INSERT INTO Comment
VALUES (366, 54, '很好', 2);
INSERT INTO Comment
VALUES (367, 54, '满意', 2);
INSERT INTO Comment
VALUES (368, 54, '新款', 1);
INSERT INTO Comment
VALUES (369, 54, '水光', 1);
INSERT INTO Comment
VALUES (370, 55, '值得', 3);
INSERT INTO Comment
VALUES (371, 55, '可爱', 2);
INSERT INTO Comment
VALUES (372, 55, '不错', 1);
INSERT INTO Comment
VALUES (373, 55, '显白', 1);
INSERT INTO Comment
VALUES (374, 55, '巧克力味', 1);
INSERT INTO Comment
VALUES (375, 55, '限定', 1);
INSERT INTO Comment
VALUES (376, 55, '温柔', 1);
INSERT INTO Comment
VALUES (377, 56, '不错', 3);
INSERT INTO Comment
VALUES (378, 56, '轻薄', 2);
INSERT INTO Comment
VALUES (379, 56, '精致', 2);
INSERT INTO Comment
VALUES (380, 56, '哑光', 2);
INSERT INTO Comment
VALUES (381, 56, '好用', 2);
INSERT INTO Comment
VALUES (382, 56, '不易掉色', 1);
INSERT INTO Comment
VALUES (383, 56, '好闻', 1);
INSERT INTO Comment
VALUES (384, 57, '很好', 3);
INSERT INTO Comment
VALUES (385, 57, '滋润', 3);
INSERT INTO Comment
VALUES (386, 57, '丝绒', 2);
INSERT INTO Comment
VALUES (387, 57, '不错', 2);
INSERT INTO Comment
VALUES (388, 57, '轻薄', 2);
INSERT INTO Comment
VALUES (389, 57, '推荐', 1);
INSERT INTO Comment
VALUES (390, 57, '雾面', 1);
INSERT INTO Comment
VALUES (391, 58, '持久', 3);
INSERT INTO Comment
VALUES (392, 58, '推荐', 3);
INSERT INTO Comment
VALUES (393, 58, '值得', 3);
INSERT INTO Comment
VALUES (394, 58, '不干', 2);
INSERT INTO Comment
VALUES (395, 58, '保湿', 2);
INSERT INTO Comment
VALUES (396, 58, '雾面', 2);
INSERT INTO Comment
VALUES (397, 58, '好用', 2);
INSERT INTO Comment
VALUES (398, 59, '划算', 1);
INSERT INTO Comment
VALUES (399, 59, '不错', 1);
INSERT INTO Comment
VALUES (400, 59, '温柔', 1);
INSERT INTO Comment
VALUES (401, 60, '很好', 3);
INSERT INTO Comment
VALUES (402, 60, '一般', 2);
INSERT INTO Comment
VALUES (403, 60, '哑光', 2);
INSERT INTO Comment
VALUES (404, 60, '高级', 2);
INSERT INTO Comment
VALUES (405, 60, '滋润', 1);
INSERT INTO Comment
VALUES (406, 60, '砖红', 1);
INSERT INTO Comment
VALUES (407, 60, '枫叶', 1);
INSERT INTO Comment
VALUES (408, 61, '很好', 5);
INSERT INTO Comment
VALUES (409, 61, '雾面', 4);
INSERT INTO Comment
VALUES (410, 61, '哑光', 4);
INSERT INTO Comment
VALUES (411, 61, '温柔', 4);
INSERT INTO Comment
VALUES (412, 61, '不拔干', 2);
INSERT INTO Comment
VALUES (413, 61, '持久', 2);
INSERT INTO Comment
VALUES (414, 61, '便宜', 2);
INSERT INTO Comment
VALUES (415, 62, '显白', 4);
INSERT INTO Comment
VALUES (416, 62, '哑光', 3);
INSERT INTO Comment
VALUES (417, 62, '橘色', 2);
INSERT INTO Comment
VALUES (418, 62, '持久', 2);
INSERT INTO Comment
VALUES (419, 62, '丝绒', 2);
INSERT INTO Comment
VALUES (420, 62, '不拔干', 2);
INSERT INTO Comment
VALUES (421, 62, '饱和度高', 2);
INSERT INTO Comment
VALUES (422, 63, '很好', 6);
INSERT INTO Comment
VALUES (423, 63, '不错', 3);
INSERT INTO Comment
VALUES (424, 63, '精致', 2);
INSERT INTO Comment
VALUES (425, 63, '推荐', 2);
INSERT INTO Comment
VALUES (426, 63, '值得', 2);
INSERT INTO Comment
VALUES (427, 63, '滋润', 2);
INSERT INTO Comment
VALUES (428, 63, '不拔干', 2);
INSERT INTO Comment
VALUES (429, 64, '元气', 2);
INSERT INTO Comment
VALUES (430, 64, '哑光', 2);
INSERT INTO Comment
VALUES (431, 64, '不错', 2);
INSERT INTO Comment
VALUES (432, 64, '漂亮', 2);
INSERT INTO Comment
VALUES (433, 64, '不沾杯', 2);
INSERT INTO Comment
VALUES (434, 64, '划算', 2);
INSERT INTO Comment
VALUES (435, 64, '持久', 2);
INSERT INTO Comment
VALUES (436, 65, '很好', 4);
INSERT INTO Comment
VALUES (437, 65, '给力', 3);
INSERT INTO Comment
VALUES (438, 65, '满意', 2);
INSERT INTO Comment
VALUES (439, 65, '不错', 2);
INSERT INTO Comment
VALUES (440, 65, '好用', 1);
INSERT INTO Comment
VALUES (441, 65, '饱满', 1);
INSERT INTO Comment
VALUES (442, 65, '滋润', 1);
INSERT INTO Comment
VALUES (443, 66, '不错', 3);
INSERT INTO Comment
VALUES (444, 66, '丝绒', 2);
INSERT INTO Comment
VALUES (445, 66, '轻薄', 2);
INSERT INTO Comment
VALUES (446, 66, '显白', 2);
INSERT INTO Comment
VALUES (447, 66, '梅子色', 2);
INSERT INTO Comment
VALUES (448, 66, '国货', 1);
INSERT INTO Comment
VALUES (449, 66, '很好', 1);
INSERT INTO Comment
VALUES (450, 67, '满意', 2);
INSERT INTO Comment
VALUES (451, 67, '便宜', 2);
INSERT INTO Comment
VALUES (452, 67, '不错', 2);
INSERT INTO Comment
VALUES (453, 67, '哑光', 1);
INSERT INTO Comment
VALUES (454, 67, '别的', 1);
INSERT INTO Comment
VALUES (455, 67, '很好', 1);
INSERT INTO Comment
VALUES (456, 67, '大品牌', 1);
INSERT INTO Comment
VALUES (457, 68, '颜色正', 1);
INSERT INTO Comment
VALUES (458, 68, '持妆', 1);
INSERT INTO Comment
VALUES (459, 69, '值得', 4);
INSERT INTO Comment
VALUES (460, 69, '有气场', 2);
INSERT INTO Comment
VALUES (461, 69, '不错', 2);
INSERT INTO Comment
VALUES (462, 69, '很好', 2);
INSERT INTO Comment
VALUES (463, 69, '自然', 2);
INSERT INTO Comment
VALUES (464, 69, '粉', 1);
INSERT INTO Comment
VALUES (465, 69, '橘调', 1);
INSERT INTO Comment
VALUES (466, 70, '不错', 5);
INSERT INTO Comment
VALUES (467, 70, '有质感', 2);
INSERT INTO Comment
VALUES (468, 70, '保湿', 2);
INSERT INTO Comment
VALUES (469, 70, '持久', 2);
INSERT INTO Comment
VALUES (470, 70, '轻薄', 2);
INSERT INTO Comment
VALUES (471, 70, '好闻', 2);
INSERT INTO Comment
VALUES (472, 70, '国产', 2);
INSERT INTO Comment
VALUES (473, 71, '显白', 3);
INSERT INTO Comment
VALUES (474, 71, '很好', 3);
INSERT INTO Comment
VALUES (475, 71, '有质感', 2);
INSERT INTO Comment
VALUES (476, 71, '好闻', 2);
INSERT INTO Comment
VALUES (477, 71, '滋润', 2);
INSERT INTO Comment
VALUES (478, 71, '推荐', 2);
INSERT INTO Comment
VALUES (479, 71, '不拔干', 2);
INSERT INTO Comment
VALUES (480, 72, '很好', 4);
INSERT INTO Comment
VALUES (481, 72, '平价', 2);
INSERT INTO Comment
VALUES (482, 72, '国货', 2);
INSERT INTO Comment
VALUES (483, 72, '滋润', 2);
INSERT INTO Comment
VALUES (484, 72, '新款', 2);
INSERT INTO Comment
VALUES (485, 72, '持久', 2);
INSERT INTO Comment
VALUES (486, 72, '推荐', 2);
INSERT INTO Comment
VALUES (487, 73, '镜面', 5);
INSERT INTO Comment
VALUES (488, 73, '推荐', 5);
INSERT INTO Comment
VALUES (489, 73, '甜甜的', 3);
INSERT INTO Comment
VALUES (490, 73, '持久', 3);
INSERT INTO Comment
VALUES (491, 73, '春夏', 3);
INSERT INTO Comment
VALUES (492, 73, '丝滑', 3);
INSERT INTO Comment
VALUES (493, 73, '饱满', 3);
INSERT INTO Comment
VALUES (494, 74, '镜面', 4);
INSERT INTO Comment
VALUES (495, 74, '很好', 4);
INSERT INTO Comment
VALUES (496, 74, '好闻', 3);
INSERT INTO Comment
VALUES (497, 74, '高级', 3);
INSERT INTO Comment
VALUES (498, 74, '不干', 2);
INSERT INTO Comment
VALUES (499, 74, '绝美', 2);
INSERT INTO Comment
VALUES (500, 74, '满意', 2);
INSERT INTO Comment
VALUES (501, 75, '很好', 2);
INSERT INTO Comment
VALUES (502, 75, '珠光', 2);
INSERT INTO Comment
VALUES (503, 75, '高级', 2);
INSERT INTO Comment
VALUES (504, 75, '滋润', 2);
INSERT INTO Comment
VALUES (505, 75, '学生', 2);
INSERT INTO Comment
VALUES (506, 75, '奶油', 2);
INSERT INTO Comment
VALUES (507, 75, '有气场', 2);
INSERT INTO Comment
VALUES (508, 76, '不错', 4);
INSERT INTO Comment
VALUES (509, 76, '满意', 3);
INSERT INTO Comment
VALUES (510, 76, '显白', 2);
INSERT INTO Comment
VALUES (511, 76, '给力', 2);
INSERT INTO Comment
VALUES (512, 76, '很好', 2);
INSERT INTO Comment
VALUES (513, 76, '雾面', 1);
INSERT INTO Comment
VALUES (514, 76, '梅子色', 1);
INSERT INTO Comment
VALUES (515, 77, '滋润', 2);
INSERT INTO Comment
VALUES (516, 77, '推荐', 2);
INSERT INTO Comment
VALUES (517, 77, '很好', 2);
INSERT INTO Comment
VALUES (518, 77, '好闻', 2);
INSERT INTO Comment
VALUES (519, 77, '漂亮', 1);
INSERT INTO Comment
VALUES (520, 77, '新款', 1);
INSERT INTO Comment
VALUES (521, 77, '不沾杯', 1);
INSERT INTO Comment
VALUES (522, 78, '不错', 5);
INSERT INTO Comment
VALUES (523, 78, '轻薄', 3);
INSERT INTO Comment
VALUES (524, 78, '镜面', 3);
INSERT INTO Comment
VALUES (525, 78, '滋润', 2);
INSERT INTO Comment
VALUES (526, 78, '显气色', 2);
INSERT INTO Comment
VALUES (527, 78, '不油腻', 2);
INSERT INTO Comment
VALUES (528, 78, '持久', 1);
INSERT INTO Comment
VALUES (529, 79, '很好', 6);
INSERT INTO Comment
VALUES (530, 79, '轻薄', 3);
INSERT INTO Comment
VALUES (531, 79, '滋润', 3);
INSERT INTO Comment
VALUES (532, 79, '好闻', 2);
INSERT INTO Comment
VALUES (533, 79, '持久', 2);
INSERT INTO Comment
VALUES (534, 79, '不错', 2);
INSERT INTO Comment
VALUES (535, 79, '优秀', 1);
INSERT INTO Comment
VALUES (536, 80, '好闻', 3);
INSERT INTO Comment
VALUES (537, 80, '高级', 2);
INSERT INTO Comment
VALUES (538, 80, '滋润', 2);
INSERT INTO Comment
VALUES (539, 80, '漂亮', 2);
INSERT INTO Comment
VALUES (540, 80, '不错', 2);
INSERT INTO Comment
VALUES (541, 80, '满意', 2);
INSERT INTO Comment
VALUES (542, 80, '橘色', 1);
INSERT INTO Comment
VALUES (543, 81, '轻薄', 4);
INSERT INTO Comment
VALUES (544, 81, '镜面', 3);
INSERT INTO Comment
VALUES (545, 81, '很好', 3);
INSERT INTO Comment
VALUES (546, 81, '保湿', 2);
INSERT INTO Comment
VALUES (547, 81, '持久', 2);
INSERT INTO Comment
VALUES (548, 81, '推荐', 2);
INSERT INTO Comment
VALUES (549, 81, '橘色', 2);
INSERT INTO Comment
VALUES (550, 82, '很好', 8);
INSERT INTO Comment
VALUES (551, 82, '推荐', 2);
INSERT INTO Comment
VALUES (552, 82, '显白', 2);
INSERT INTO Comment
VALUES (553, 82, '细闪', 2);
INSERT INTO Comment
VALUES (554, 82, '滋润', 2);
INSERT INTO Comment
VALUES (555, 82, '颜色很正', 2);
INSERT INTO Comment
VALUES (556, 82, '持久', 2);
INSERT INTO Comment
VALUES (557, 83, '滋润', 4);
INSERT INTO Comment
VALUES (558, 83, '很好', 4);
INSERT INTO Comment
VALUES (559, 83, '显白', 3);
INSERT INTO Comment
VALUES (560, 83, '划算', 2);
INSERT INTO Comment
VALUES (561, 83, '镜光', 2);
INSERT INTO Comment
VALUES (562, 83, '奶油', 1);
INSERT INTO Comment
VALUES (563, 83, '不干', 1);
INSERT INTO Comment
VALUES (564, 84, '国货', 3);
INSERT INTO Comment
VALUES (565, 84, '温柔', 2);
INSERT INTO Comment
VALUES (566, 84, '日常', 2);
INSERT INTO Comment
VALUES (567, 84, '保湿', 2);
INSERT INTO Comment
VALUES (568, 84, '满意', 2);
INSERT INTO Comment
VALUES (569, 84, '推荐', 2);
INSERT INTO Comment
VALUES (570, 84, '百搭', 2);
INSERT INTO Comment
VALUES (571, 85, '不错', 4);
INSERT INTO Comment
VALUES (572, 85, '轻薄', 4);
INSERT INTO Comment
VALUES (573, 85, '满意', 2);
INSERT INTO Comment
VALUES (574, 85, '镜面', 2);
INSERT INTO Comment
VALUES (575, 85, '水润', 2);
INSERT INTO Comment
VALUES (576, 85, '滋润', 1);
INSERT INTO Comment
VALUES (577, 85, '不易脱色', 1);
INSERT INTO Comment
VALUES (578, 86, '镜面', 3);
INSERT INTO Comment
VALUES (579, 86, '显白', 2);
INSERT INTO Comment
VALUES (580, 86, '奶茶', 2);
INSERT INTO Comment
VALUES (581, 86, '橘色', 2);
INSERT INTO Comment
VALUES (582, 86, '满意', 2);
INSERT INTO Comment
VALUES (583, 86, '不干', 2);
INSERT INTO Comment
VALUES (584, 86, '持久', 2);
INSERT INTO Comment
VALUES (585, 87, '很好', 4);
INSERT INTO Comment
VALUES (586, 87, '推荐', 4);
INSERT INTO Comment
VALUES (587, 87, '细闪', 3);
INSERT INTO Comment
VALUES (588, 87, '轻薄', 3);
INSERT INTO Comment
VALUES (589, 87, '不错', 3);
INSERT INTO Comment
VALUES (590, 87, '国货', 3);
INSERT INTO Comment
VALUES (591, 87, '镜面', 2);
INSERT INTO Comment
VALUES (592, 88, '很好', 7);
INSERT INTO Comment
VALUES (593, 88, '细闪', 4);
INSERT INTO Comment
VALUES (594, 88, '显白', 3);
INSERT INTO Comment
VALUES (595, 88, '不拔干', 2);
INSERT INTO Comment
VALUES (596, 88, '保湿', 2);
INSERT INTO Comment
VALUES (597, 88, '滋润', 2);
INSERT INTO Comment
VALUES (598, 88, '好闻', 2);
INSERT INTO Comment
VALUES (599, 89, '镜面', 1);
INSERT INTO Comment
VALUES (600, 89, '不错', 1);
INSERT INTO Comment
VALUES (601, 89, '滋润', 1);
INSERT INTO Comment
VALUES (602, 89, '划算', 1);
INSERT INTO Comment
VALUES (603, 89, '很好', 1);
INSERT INTO Comment
VALUES (604, 89, '持久', 1);
INSERT INTO Comment
VALUES (605, 89, '很美', 1);
INSERT INTO Comment
VALUES (606, 94, '轻薄', 1);
INSERT INTO Comment
VALUES (607, 95, '显白', 1);
INSERT INTO Comment
VALUES (608, 95, '不易掉色', 1);
INSERT INTO Comment
VALUES (609, 95, '哑光', 1);
INSERT INTO Comment
VALUES (610, 156, '秋冬', 1);
INSERT INTO Comment
VALUES (611, 156, '气质', 1);
INSERT INTO Comment
VALUES (612, 157, '滋润', 2);
INSERT INTO Comment
VALUES (613, 157, '哑光', 1);
INSERT INTO Comment
VALUES (614, 157, '精致', 1);
INSERT INTO Comment
VALUES (615, 157, '值得', 1);
INSERT INTO Comment
VALUES (616, 157, '提气色', 1);
INSERT INTO Comment
VALUES (617, 157, '气质', 1);
INSERT INTO Comment
VALUES (618, 157, '日常', 1);
INSERT INTO Comment
VALUES (619, 158, '显白', 2);
INSERT INTO Comment
VALUES (620, 158, '丝绒', 2);
INSERT INTO Comment
VALUES (621, 158, '持久', 2);
INSERT INTO Comment
VALUES (622, 158, '血浆色', 2);
INSERT INTO Comment
VALUES (623, 158, '不拔干', 2);
INSERT INTO Comment
VALUES (624, 158, '有气场', 1);
INSERT INTO Comment
VALUES (625, 158, '轻薄', 1);
INSERT INTO Comment
VALUES (626, 159, '温柔', 1);
INSERT INTO Comment
VALUES (627, 159, '滋润', 1);
INSERT INTO Comment
VALUES (628, 159, '持久', 1);
INSERT INTO Comment
VALUES (629, 159, '粉', 1);
INSERT INTO Comment
VALUES (630, 159, '豆沙色', 1);
INSERT INTO Comment
VALUES (631, 159, '推荐', 1);
INSERT INTO Comment
VALUES (632, 159, '很好', 1);
INSERT INTO Comment
VALUES (633, 160, '持久', 5);
INSERT INTO Comment
VALUES (634, 160, '滋润', 3);
INSERT INTO Comment
VALUES (635, 160, '显白', 3);
INSERT INTO Comment
VALUES (636, 160, '有气场', 2);
INSERT INTO Comment
VALUES (637, 160, '很好', 2);
INSERT INTO Comment
VALUES (638, 160, '正红色', 2);
INSERT INTO Comment
VALUES (639, 160, '不干', 2);
INSERT INTO Comment
VALUES (640, 161, '滋润', 7);
INSERT INTO Comment
VALUES (641, 161, '很好', 5);
INSERT INTO Comment
VALUES (642, 161, '持久', 3);
INSERT INTO Comment
VALUES (643, 161, '复古', 3);
INSERT INTO Comment
VALUES (644, 161, '推荐', 2);
INSERT INTO Comment
VALUES (645, 161, '满意', 2);
INSERT INTO Comment
VALUES (646, 161, '日常', 2);
INSERT INTO Comment
VALUES (647, 162, '滋润', 10);
INSERT INTO Comment
VALUES (648, 162, '不错', 4);
INSERT INTO Comment
VALUES (649, 162, '推荐', 3);
INSERT INTO Comment
VALUES (650, 162, '水润', 3);
INSERT INTO Comment
VALUES (651, 162, '百搭', 2);
INSERT INTO Comment
VALUES (652, 162, '满意', 2);
INSERT INTO Comment
VALUES (653, 162, '持久', 2);
INSERT INTO Comment
VALUES (654, 163, '滋润', 6);
INSERT INTO Comment
VALUES (655, 163, '很好', 4);
INSERT INTO Comment
VALUES (656, 163, '不错', 4);
INSERT INTO Comment
VALUES (657, 163, '满意', 3);
INSERT INTO Comment
VALUES (658, 163, '一般', 2);
INSERT INTO Comment
VALUES (659, 163, '红色', 2);
INSERT INTO Comment
VALUES (660, 163, '推荐', 2);
INSERT INTO Comment
VALUES (661, 164, '不错', 4);
INSERT INTO Comment
VALUES (662, 164, '轻薄', 3);
INSERT INTO Comment
VALUES (663, 164, '精致', 3);
INSERT INTO Comment
VALUES (664, 164, '丝绒', 2);
INSERT INTO Comment
VALUES (665, 164, '高级', 2);
INSERT INTO Comment
VALUES (666, 164, '滋润', 2);
INSERT INTO Comment
VALUES (667, 164, '饱满', 2);
INSERT INTO Comment
VALUES (668, 165, '滋润', 4);
INSERT INTO Comment
VALUES (669, 165, '自然', 3);
INSERT INTO Comment
VALUES (670, 165, '不错', 2);
INSERT INTO Comment
VALUES (671, 165, '豆沙色', 2);
INSERT INTO Comment
VALUES (672, 165, '日常', 2);
INSERT INTO Comment
VALUES (673, 165, '满意', 1);
INSERT INTO Comment
VALUES (674, 165, '便宜', 1);
INSERT INTO Comment
VALUES (675, 166, '送老婆', 1);
INSERT INTO Comment
VALUES (676, 167, '滋润', 4);
INSERT INTO Comment
VALUES (677, 167, '漂亮', 3);
INSERT INTO Comment
VALUES (678, 167, '大气', 2);
INSERT INTO Comment
VALUES (679, 167, '显白', 2);
INSERT INTO Comment
VALUES (680, 167, '一般', 2);
INSERT INTO Comment
VALUES (681, 167, '方管', 2);
INSERT INTO Comment
VALUES (682, 167, '番茄', 2);
INSERT INTO Comment
VALUES (683, 168, '正红色', 3);
INSERT INTO Comment
VALUES (684, 168, '滋润', 3);
INSERT INTO Comment
VALUES (685, 168, '很好', 3);
INSERT INTO Comment
VALUES (686, 168, '显肤色', 2);
INSERT INTO Comment
VALUES (687, 168, '不错', 2);
INSERT INTO Comment
VALUES (688, 168, '颜色正', 1);
INSERT INTO Comment
VALUES (689, 168, '靓丽', 1);
INSERT INTO Comment
VALUES (690, 169, '滋润', 6);
INSERT INTO Comment
VALUES (691, 169, '红棕色', 3);
INSERT INTO Comment
VALUES (692, 169, '不干', 2);
INSERT INTO Comment
VALUES (693, 169, '很好', 2);
INSERT INTO Comment
VALUES (694, 169, '高级', 2);
INSERT INTO Comment
VALUES (695, 169, '红色', 1);
INSERT INTO Comment
VALUES (696, 169, '便宜', 1);
INSERT INTO Comment
VALUES (697, 170, '很好', 6);
INSERT INTO Comment
VALUES (698, 170, '不错', 4);
INSERT INTO Comment
VALUES (699, 170, '正红色', 4);
INSERT INTO Comment
VALUES (700, 170, '颜色很正', 3);
INSERT INTO Comment
VALUES (701, 170, '显白', 3);
INSERT INTO Comment
VALUES (702, 170, '滋润', 3);
INSERT INTO Comment
VALUES (703, 170, '不干', 3);
INSERT INTO Comment
VALUES (704, 171, '橘色', 7);
INSERT INTO Comment
VALUES (705, 171, '显白', 5);
INSERT INTO Comment
VALUES (706, 171, '不干', 3);
INSERT INTO Comment
VALUES (707, 171, '不错', 3);
INSERT INTO Comment
VALUES (708, 171, '持久', 2);
INSERT INTO Comment
VALUES (709, 171, '很好', 2);
INSERT INTO Comment
VALUES (710, 171, '大品牌', 1);
INSERT INTO Comment
VALUES (711, 172, '很好', 11);
INSERT INTO Comment
VALUES (712, 172, '不错', 3);
INSERT INTO Comment
VALUES (713, 172, '好闻', 3);
INSERT INTO Comment
VALUES (714, 172, '自然', 3);
INSERT INTO Comment
VALUES (715, 172, '滋润', 2);
INSERT INTO Comment
VALUES (716, 172, '红色', 2);
INSERT INTO Comment
VALUES (717, 172, '哑光', 2);
INSERT INTO Comment
VALUES (718, 173, '滋润', 5);
INSERT INTO Comment
VALUES (719, 173, '显白', 3);
INSERT INTO Comment
VALUES (720, 173, '好闻', 3);
INSERT INTO Comment
VALUES (721, 173, '复古', 2);
INSERT INTO Comment
VALUES (722, 173, '有气场', 2);
INSERT INTO Comment
VALUES (723, 173, '绝美', 2);
INSERT INTO Comment
VALUES (724, 173, '不掉色', 2);
INSERT INTO Comment
VALUES (725, 174, '满意', 4);
INSERT INTO Comment
VALUES (726, 174, '很好', 4);
INSERT INTO Comment
VALUES (727, 174, '滋润', 4);
INSERT INTO Comment
VALUES (728, 174, '显白', 3);
INSERT INTO Comment
VALUES (729, 174, '推荐', 2);
INSERT INTO Comment
VALUES (730, 174, '有质感', 2);
INSERT INTO Comment
VALUES (731, 174, '高级', 2);
INSERT INTO Comment
VALUES (732, 175, '不错', 4);
INSERT INTO Comment
VALUES (733, 175, '滋润', 4);
INSERT INTO Comment
VALUES (734, 175, '持久', 3);
INSERT INTO Comment
VALUES (735, 175, '自然', 3);
INSERT INTO Comment
VALUES (736, 175, '很好', 3);
INSERT INTO Comment
VALUES (737, 175, '日常', 2);
INSERT INTO Comment
VALUES (738, 175, '满意', 2);
INSERT INTO Comment
VALUES (739, 176, '持久', 4);
INSERT INTO Comment
VALUES (740, 176, '滋润', 4);
INSERT INTO Comment
VALUES (741, 176, '日常', 3);
INSERT INTO Comment
VALUES (742, 176, '显白', 3);
INSERT INTO Comment
VALUES (743, 176, '干枯玫瑰', 3);
INSERT INTO Comment
VALUES (744, 176, '颜色很正', 2);
INSERT INTO Comment
VALUES (745, 176, '好用', 2);
INSERT INTO Comment
VALUES (746, 177, '不错', 6);
INSERT INTO Comment
VALUES (747, 177, '持久', 4);
INSERT INTO Comment
VALUES (748, 177, '滋润', 3);
INSERT INTO Comment
VALUES (749, 177, '橘色', 2);
INSERT INTO Comment
VALUES (750, 177, '显白', 2);
INSERT INTO Comment
VALUES (751, 177, '高级', 2);
INSERT INTO Comment
VALUES (752, 177, '哑光', 2);
INSERT INTO Comment
VALUES (753, 178, '滋润', 5);
INSERT INTO Comment
VALUES (754, 178, '可爱', 3);
INSERT INTO Comment
VALUES (755, 178, '番茄', 3);
INSERT INTO Comment
VALUES (756, 178, '润唇膏', 3);
INSERT INTO Comment
VALUES (757, 178, '复古红', 2);
INSERT INTO Comment
VALUES (758, 178, '甜美', 2);
INSERT INTO Comment
VALUES (759, 178, '持久', 2);
INSERT INTO Comment
VALUES (760, 179, '胡萝卜色', 4);
INSERT INTO Comment
VALUES (761, 179, '精致', 3);
INSERT INTO Comment
VALUES (762, 179, '很好', 3);
INSERT INTO Comment
VALUES (763, 179, '显白', 2);
INSERT INTO Comment
VALUES (764, 179, '满意', 2);
INSERT INTO Comment
VALUES (765, 179, '持久', 2);
INSERT INTO Comment
VALUES (766, 179, '靓丽', 1);
INSERT INTO Comment
VALUES (767, 180, '好用', 4);
INSERT INTO Comment
VALUES (768, 180, '精致', 4);
INSERT INTO Comment
VALUES (769, 180, '好闻', 4);
INSERT INTO Comment
VALUES (770, 180, '满意', 3);
INSERT INTO Comment
VALUES (771, 180, '值得', 2);
INSERT INTO Comment
VALUES (772, 180, '日常', 2);
INSERT INTO Comment
VALUES (773, 180, '推荐', 1);
INSERT INTO Comment
VALUES (774, 181, '很好', 6);
INSERT INTO Comment
VALUES (775, 181, '细闪', 4);
INSERT INTO Comment
VALUES (776, 181, '滋润', 3);
INSERT INTO Comment
VALUES (777, 181, '漂亮', 2);
INSERT INTO Comment
VALUES (778, 181, '精致', 2);
INSERT INTO Comment
VALUES (779, 181, '顺滑', 2);
INSERT INTO Comment
VALUES (780, 181, '不干', 2);
INSERT INTO Comment
VALUES (781, 182, '不错', 4);
INSERT INTO Comment
VALUES (782, 182, '便宜', 3);
INSERT INTO Comment
VALUES (783, 182, '很好', 2);
INSERT INTO Comment
VALUES (784, 182, '推荐', 1);
INSERT INTO Comment
VALUES (785, 182, '红棕', 1);
INSERT INTO Comment
VALUES (786, 182, '好用', 1);
INSERT INTO Comment
VALUES (787, 182, '不干', 1);
INSERT INTO Comment
VALUES (788, 183, '很好', 3);
INSERT INTO Comment
VALUES (789, 183, '值得', 2);
INSERT INTO Comment
VALUES (790, 183, '不错', 2);
INSERT INTO Comment
VALUES (791, 183, '别的', 1);
INSERT INTO Comment
VALUES (792, 183, '润滑', 1);
INSERT INTO Comment
VALUES (793, 183, '不干', 1);
INSERT INTO Comment
VALUES (794, 183, '好用', 1);
INSERT INTO Comment
VALUES (795, 184, '不错', 3);
INSERT INTO Comment
VALUES (796, 184, '不拔干', 2);
INSERT INTO Comment
VALUES (797, 184, '很好', 2);
INSERT INTO Comment
VALUES (798, 184, '值得', 1);
INSERT INTO Comment
VALUES (799, 184, '滋润', 1);
INSERT INTO Comment
VALUES (800, 184, '显白', 1);
INSERT INTO Comment
VALUES (801, 184, '满意', 1);
INSERT INTO Comment
VALUES (802, 185, '滋润', 10);
INSERT INTO Comment
VALUES (803, 185, '显白', 8);
INSERT INTO Comment
VALUES (804, 185, '很好', 5);
INSERT INTO Comment
VALUES (805, 185, '浓郁', 3);
INSERT INTO Comment
VALUES (806, 185, '顺滑', 3);
INSERT INTO Comment
VALUES (807, 185, '日常', 3);
INSERT INTO Comment
VALUES (808, 185, '高级', 2);
INSERT INTO Comment
VALUES (809, 186, '大品牌', 1);
INSERT INTO Comment
VALUES (810, 187, '很美', 3);
INSERT INTO Comment
VALUES (811, 187, '细闪', 3);
INSERT INTO Comment
VALUES (812, 187, '哑光', 3);
INSERT INTO Comment
VALUES (813, 187, '不干', 3);
INSERT INTO Comment
VALUES (814, 187, '精致', 2);
INSERT INTO Comment
VALUES (815, 187, '显白', 2);
INSERT INTO Comment
VALUES (816, 187, '满意', 1);
INSERT INTO Comment
VALUES (817, 188, '很好', 3);
INSERT INTO Comment
VALUES (818, 188, '颜色很正', 2);
INSERT INTO Comment
VALUES (819, 188, '好用', 2);
INSERT INTO Comment
VALUES (820, 188, '高级', 2);
INSERT INTO Comment
VALUES (821, 188, '不错', 2);
INSERT INTO Comment
VALUES (822, 188, '清新', 1);
INSERT INTO Comment
VALUES (823, 188, '上档次', 1);
INSERT INTO Comment
VALUES (824, 189, '很好', 4);
INSERT INTO Comment
VALUES (825, 189, '值得', 3);
INSERT INTO Comment
VALUES (826, 189, '推荐', 1);
INSERT INTO Comment
VALUES (827, 189, '颜色很正', 1);
INSERT INTO Comment
VALUES (828, 190, '持久', 8);
INSERT INTO Comment
VALUES (829, 190, '很好', 6);
INSERT INTO Comment
VALUES (830, 190, '不错', 4);
INSERT INTO Comment
VALUES (831, 190, '好闻', 3);
INSERT INTO Comment
VALUES (832, 190, '滋润', 2);
INSERT INTO Comment
VALUES (833, 190, '满意', 2);
INSERT INTO Comment
VALUES (834, 190, '精致', 1);
INSERT INTO Comment
VALUES (835, 191, '显白', 9);
INSERT INTO Comment
VALUES (836, 191, '高级', 4);
INSERT INTO Comment
VALUES (837, 191, '胡萝卜色', 3);
INSERT INTO Comment
VALUES (838, 191, '气质', 3);
INSERT INTO Comment
VALUES (839, 191, '上档次', 2);
INSERT INTO Comment
VALUES (840, 191, '很好', 2);
INSERT INTO Comment
VALUES (841, 191, '红色', 2);
INSERT INTO Comment
VALUES (842, 192, '很好', 6);
INSERT INTO Comment
VALUES (843, 192, '滋润', 3);
INSERT INTO Comment
VALUES (844, 192, '漂亮', 2);
INSERT INTO Comment
VALUES (845, 192, '很特别', 2);
INSERT INTO Comment
VALUES (846, 192, '不拔干', 2);
INSERT INTO Comment
VALUES (847, 192, '显白', 2);
INSERT INTO Comment
VALUES (848, 192, '秋冬', 2);
INSERT INTO Comment
VALUES (849, 193, '不错', 4);
INSERT INTO Comment
VALUES (850, 193, '滋润', 4);
INSERT INTO Comment
VALUES (851, 193, '温柔', 4);
INSERT INTO Comment
VALUES (852, 193, '不干', 2);
INSERT INTO Comment
VALUES (853, 193, '很好', 2);
INSERT INTO Comment
VALUES (854, 193, '精致', 2);
INSERT INTO Comment
VALUES (855, 193, '哑光', 1);
INSERT INTO Comment
VALUES (856, 194, '自然', 5);
INSERT INTO Comment
VALUES (857, 194, '温柔', 3);
INSERT INTO Comment
VALUES (858, 194, '不拔干', 2);
INSERT INTO Comment
VALUES (859, 194, '日常', 2);
INSERT INTO Comment
VALUES (860, 194, '滋润', 2);
INSERT INTO Comment
VALUES (861, 194, '不干', 2);
INSERT INTO Comment
VALUES (862, 194, '不错', 1);
INSERT INTO Comment
VALUES (863, 195, '滋润', 4);
INSERT INTO Comment
VALUES (864, 195, '不错', 3);
INSERT INTO Comment
VALUES (865, 195, '显白', 2);
INSERT INTO Comment
VALUES (866, 195, '日常', 2);
INSERT INTO Comment
VALUES (867, 195, '百搭', 2);
INSERT INTO Comment
VALUES (868, 195, '满意', 2);
INSERT INTO Comment
VALUES (869, 195, '持久', 2);
INSERT INTO Comment
VALUES (870, 196, '很好', 4);
INSERT INTO Comment
VALUES (871, 196, '滋润', 3);
INSERT INTO Comment
VALUES (872, 196, '气质', 2);
INSERT INTO Comment
VALUES (873, 196, '日常', 2);
INSERT INTO Comment
VALUES (874, 196, '持久', 2);
INSERT INTO Comment
VALUES (875, 196, '显白', 2);
INSERT INTO Comment
VALUES (876, 196, '颜色很正', 1);
INSERT INTO Comment
VALUES (877, 197, '不错', 5);
INSERT INTO Comment
VALUES (878, 197, '推荐', 1);
INSERT INTO Comment
VALUES (879, 197, '持久', 1);
INSERT INTO Comment
VALUES (880, 197, '轻薄', 1);
INSERT INTO Comment
VALUES (881, 197, '很好', 1);
INSERT INTO Comment
VALUES (882, 197, '满意', 1);
INSERT INTO Comment
VALUES (883, 197, '好用', 1);
INSERT INTO Comment
VALUES (884, 198, '哑光', 6);
INSERT INTO Comment
VALUES (885, 198, '经典', 6);
INSERT INTO Comment
VALUES (886, 198, '高级', 3);
INSERT INTO Comment
VALUES (887, 198, '好闻', 3);
INSERT INTO Comment
VALUES (888, 198, '显白', 2);
INSERT INTO Comment
VALUES (889, 198, '雾面', 2);
INSERT INTO Comment
VALUES (890, 198, '不干', 2);
INSERT INTO Comment
VALUES (891, 199, '值得', 3);
INSERT INTO Comment
VALUES (892, 199, '推荐', 3);
INSERT INTO Comment
VALUES (893, 199, '红色', 3);
INSERT INTO Comment
VALUES (894, 199, '很好', 2);
INSERT INTO Comment
VALUES (895, 199, '滋润', 1);
INSERT INTO Comment
VALUES (896, 199, '温柔', 1);
INSERT INTO Comment
VALUES (897, 199, '给力', 1);
INSERT INTO Comment
VALUES (898, 200, '很好', 3);
INSERT INTO Comment
VALUES (899, 200, '水润', 2);
INSERT INTO Comment
VALUES (900, 200, '大品牌', 2);
INSERT INTO Comment
VALUES (901, 200, '保湿', 1);
INSERT INTO Comment
VALUES (902, 200, '不易掉色', 1);
INSERT INTO Comment
VALUES (903, 200, '推荐', 1);
INSERT INTO Comment
VALUES (904, 200, '显白', 1);
INSERT INTO Comment
VALUES (905, 201, '不拔干', 3);
INSERT INTO Comment
VALUES (906, 201, '给力', 1);
INSERT INTO Comment
VALUES (907, 201, '绝美', 1);
INSERT INTO Comment
VALUES (908, 201, '满意', 1);
INSERT INTO Comment
VALUES (909, 201, '闪光', 1);
INSERT INTO Comment
VALUES (910, 201, '不粘腻', 1);
INSERT INTO Comment
VALUES (911, 201, '送闺蜜', 1);
INSERT INTO Comment
VALUES (912, 204, '很好', 7);
INSERT INTO Comment
VALUES (913, 204, '小辣椒', 5);
INSERT INTO Comment
VALUES (914, 204, '精致', 3);
INSERT INTO Comment
VALUES (915, 204, '滋润', 3);
INSERT INTO Comment
VALUES (916, 204, '显白', 3);
INSERT INTO Comment
VALUES (917, 204, '红色', 2);
INSERT INTO Comment
VALUES (918, 204, '不错', 2);
INSERT INTO Comment
VALUES (919, 205, '很好', 4);
INSERT INTO Comment
VALUES (920, 205, '滋润', 4);
INSERT INTO Comment
VALUES (921, 205, '温柔', 3);
INSERT INTO Comment
VALUES (922, 205, '大气', 2);
INSERT INTO Comment
VALUES (923, 205, '推荐', 2);
INSERT INTO Comment
VALUES (924, 205, '显白', 2);
INSERT INTO Comment
VALUES (925, 205, '不干', 2);
INSERT INTO Comment
VALUES (926, 206, '滋润', 4);
INSERT INTO Comment
VALUES (927, 206, '漂亮', 2);
INSERT INTO Comment
VALUES (928, 206, '大气', 2);
INSERT INTO Comment
VALUES (929, 206, '显白', 2);
INSERT INTO Comment
VALUES (930, 206, '不错', 2);
INSERT INTO Comment
VALUES (931, 206, '国货', 1);
INSERT INTO Comment
VALUES (932, 206, '不干', 1);
INSERT INTO Comment
VALUES (933, 207, '很好', 4);
INSERT INTO Comment
VALUES (934, 207, '持久', 3);
INSERT INTO Comment
VALUES (935, 207, '滋润', 3);
INSERT INTO Comment
VALUES (936, 207, '不错', 3);
INSERT INTO Comment
VALUES (937, 207, '橘色', 2);
INSERT INTO Comment
VALUES (938, 207, '美', 2);
INSERT INTO Comment
VALUES (939, 207, '红色', 1);
INSERT INTO Comment
VALUES (940, 208, '不错', 4);
INSERT INTO Comment
VALUES (941, 208, '显白', 4);
INSERT INTO Comment
VALUES (942, 208, '滋润', 3);
INSERT INTO Comment
VALUES (943, 208, '胡萝卜色', 2);
INSERT INTO Comment
VALUES (944, 208, '很好', 2);
INSERT INTO Comment
VALUES (945, 208, '满意', 2);
INSERT INTO Comment
VALUES (946, 208, '持久', 1);
INSERT INTO Comment
VALUES (947, 210, '很好', 3);
INSERT INTO Comment
VALUES (948, 210, '满意', 2);
INSERT INTO Comment
VALUES (949, 210, '高级', 1);
INSERT INTO Comment
VALUES (950, 210, '不拔干', 1);
INSERT INTO Comment
VALUES (951, 210, '显白', 1);
INSERT INTO Comment
VALUES (952, 210, '甜甜的', 1);
INSERT INTO Comment
VALUES (953, 210, '可爱', 1);
INSERT INTO Comment
VALUES (954, 211, '很好', 3);
INSERT INTO Comment
VALUES (955, 211, '不错', 2);
INSERT INTO Comment
VALUES (956, 211, '漂亮', 2);
INSERT INTO Comment
VALUES (957, 211, '好用', 1);
INSERT INTO Comment
VALUES (958, 211, '丝绒', 1);
INSERT INTO Comment
VALUES (959, 211, '温柔', 1);
INSERT INTO Comment
VALUES (960, 211, '大品牌', 1);
INSERT INTO Comment
VALUES (961, 212, '不错', 4);
INSERT INTO Comment
VALUES (962, 212, '很好', 3);
INSERT INTO Comment
VALUES (963, 212, '番茄', 2);
INSERT INTO Comment
VALUES (964, 212, '高级', 2);
INSERT INTO Comment
VALUES (965, 212, '不挑皮', 2);
INSERT INTO Comment
VALUES (966, 212, '显白', 2);
INSERT INTO Comment
VALUES (967, 212, '新款', 1);
INSERT INTO Comment
VALUES (968, 213, '丝绒', 9);
INSERT INTO Comment
VALUES (969, 213, '很好', 5);
INSERT INTO Comment
VALUES (970, 213, '不拔干', 4);
INSERT INTO Comment
VALUES (971, 213, '有质感', 3);
INSERT INTO Comment
VALUES (972, 213, '雾面', 3);
INSERT INTO Comment
VALUES (973, 213, '豆沙色', 3);
INSERT INTO Comment
VALUES (974, 213, '轻薄', 2);
INSERT INTO Comment
VALUES (975, 214, '不错', 5);
INSERT INTO Comment
VALUES (976, 214, '很好', 2);
INSERT INTO Comment
VALUES (977, 214, '滋润', 2);
INSERT INTO Comment
VALUES (978, 214, '不干', 2);
INSERT INTO Comment
VALUES (979, 214, '显白', 1);
INSERT INTO Comment
VALUES (980, 214, '不拔干', 1);
INSERT INTO Comment
VALUES (981, 214, '丝绒', 1);
INSERT INTO Comment
VALUES (982, 215, '显白', 3);
INSERT INTO Comment
VALUES (983, 215, '颜色很正', 2);
INSERT INTO Comment
VALUES (984, 215, '丝绒', 2);
INSERT INTO Comment
VALUES (985, 215, '不掉色', 1);
INSERT INTO Comment
VALUES (986, 215, '好用', 1);
INSERT INTO Comment
VALUES (987, 215, '平价', 1);
INSERT INTO Comment
VALUES (988, 215, '雾感', 1);
INSERT INTO Comment
VALUES (989, 216, '顺滑', 1);
INSERT INTO Comment
VALUES (990, 216, '很美', 1);
INSERT INTO Comment
VALUES (991, 216, '不错', 1);
INSERT INTO Comment
VALUES (992, 216, '好用', 1);
INSERT INTO Comment
VALUES (993, 216, '不挑肤色', 1);
INSERT INTO Comment
VALUES (994, 216, '便宜', 1);
INSERT INTO Comment
VALUES (995, 216, '绝美', 1);
INSERT INTO Comment
VALUES (996, 217, '哑光', 3);
INSERT INTO Comment
VALUES (997, 217, '显白', 2);
INSERT INTO Comment
VALUES (998, 217, '丝滑', 2);
INSERT INTO Comment
VALUES (999, 217, '丝绒', 2);
INSERT INTO Comment
VALUES (1000, 217, '秋冬', 1);
INSERT INTO Comment
VALUES (1001, 217, '雾面', 1);
INSERT INTO Comment
VALUES (1002, 217, '高级', 1);
INSERT INTO Comment
VALUES (1003, 218, 'mini', 2);
INSERT INTO Comment
VALUES (1004, 218, '气质', 1);
INSERT INTO Comment
VALUES (1005, 218, '枫叶红', 1);
INSERT INTO Comment
VALUES (1006, 218, '茶色', 1);
INSERT INTO Comment
VALUES (1007, 218, '橘调', 1);
INSERT INTO Comment
VALUES (1008, 218, '不挑皮', 1);
INSERT INTO Comment
VALUES (1009, 218, '值得', 1);
INSERT INTO Comment
VALUES (1010, 219, '雾面', 2);
INSERT INTO Comment
VALUES (1011, 219, '很好', 2);
INSERT INTO Comment
VALUES (1012, 219, '显肤色', 1);
INSERT INTO Comment
VALUES (1013, 219, '值得', 1);
INSERT INTO Comment
VALUES (1014, 219, '哑光', 1);
INSERT INTO Comment
VALUES (1015, 219, '不干', 1);
INSERT INTO Comment
VALUES (1016, 219, '不挑肤色', 1);
INSERT INTO Comment
VALUES (1017, 220, '好闻', 3);
INSERT INTO Comment
VALUES (1018, 220, '百搭', 1);
INSERT INTO Comment
VALUES (1019, 220, '有质感', 1);
INSERT INTO Comment
VALUES (1020, 220, '显白', 1);
INSERT INTO Comment
VALUES (1021, 220, '值得', 1);
INSERT INTO Comment
VALUES (1022, 220, '顺滑', 1);
INSERT INTO Comment
VALUES (1023, 220, '不错', 1);
INSERT INTO Comment
VALUES (1024, 221, '滋润', 4);
INSERT INTO Comment
VALUES (1025, 221, '颜色很正', 4);
INSERT INTO Comment
VALUES (1026, 221, '持久', 3);
INSERT INTO Comment
VALUES (1027, 221, '不错', 3);
INSERT INTO Comment
VALUES (1028, 221, '很好', 3);
INSERT INTO Comment
VALUES (1029, 221, '漂亮', 1);
INSERT INTO Comment
VALUES (1030, 221, '不油腻', 1);
INSERT INTO Comment
VALUES (1031, 222, '颜色很正', 3);
INSERT INTO Comment
VALUES (1032, 222, '满意', 2);
INSERT INTO Comment
VALUES (1033, 222, '很好', 2);
INSERT INTO Comment
VALUES (1034, 222, '持久', 2);
INSERT INTO Comment
VALUES (1035, 222, '有质感', 2);
INSERT INTO Comment
VALUES (1036, 222, '水润', 1);
INSERT INTO Comment
VALUES (1037, 222, '漂亮', 1);
INSERT INTO Comment
VALUES (1038, 223, '显白', 5);
INSERT INTO Comment
VALUES (1039, 223, '颜色很正', 5);
INSERT INTO Comment
VALUES (1040, 223, '滋润', 4);
INSERT INTO Comment
VALUES (1041, 223, '很好', 4);
INSERT INTO Comment
VALUES (1042, 223, '不错', 3);
INSERT INTO Comment
VALUES (1043, 223, '值得', 3);
INSERT INTO Comment
VALUES (1044, 223, '美', 2);
INSERT INTO Comment
VALUES (1045, 224, '滋润', 7);
INSERT INTO Comment
VALUES (1046, 224, '很好', 6);
INSERT INTO Comment
VALUES (1047, 224, '不错', 5);
INSERT INTO Comment
VALUES (1048, 224, '枫叶红', 5);
INSERT INTO Comment
VALUES (1049, 224, '持久', 4);
INSERT INTO Comment
VALUES (1050, 224, '满意', 4);
INSERT INTO Comment
VALUES (1051, 224, '自然', 3);
INSERT INTO Comment
VALUES (1052, 225, '豆沙色', 4);
INSERT INTO Comment
VALUES (1053, 225, '滋润', 4);
INSERT INTO Comment
VALUES (1054, 225, '很好', 4);
INSERT INTO Comment
VALUES (1055, 225, '满意', 3);
INSERT INTO Comment
VALUES (1056, 225, '显白', 3);
INSERT INTO Comment
VALUES (1057, 225, '持久', 2);
INSERT INTO Comment
VALUES (1058, 225, '可爱', 2);
INSERT INTO Comment
VALUES (1059, 226, '很好', 6);
INSERT INTO Comment
VALUES (1060, 226, '滋润', 4);
INSERT INTO Comment
VALUES (1061, 226, '不错', 4);
INSERT INTO Comment
VALUES (1062, 226, '别的', 3);
INSERT INTO Comment
VALUES (1063, 226, '颜色很正', 2);
INSERT INTO Comment
VALUES (1064, 226, '不拔干', 2);
INSERT INTO Comment
VALUES (1065, 226, '玫红色', 2);
INSERT INTO Comment
VALUES (1066, 227, '划算', 4);
INSERT INTO Comment
VALUES (1067, 227, '不错', 3);
INSERT INTO Comment
VALUES (1068, 227, '很好', 3);
INSERT INTO Comment
VALUES (1069, 227, '日常', 2);
INSERT INTO Comment
VALUES (1070, 227, '滋润', 2);
INSERT INTO Comment
VALUES (1071, 227, '水润', 2);
INSERT INTO Comment
VALUES (1072, 227, '好用', 2);
INSERT INTO Comment
VALUES (1073, 228, '滋润', 5);
INSERT INTO Comment
VALUES (1074, 228, '很好', 4);
INSERT INTO Comment
VALUES (1075, 228, '显白', 4);
INSERT INTO Comment
VALUES (1076, 228, '不错', 4);
INSERT INTO Comment
VALUES (1077, 228, '满意', 3);
INSERT INTO Comment
VALUES (1078, 228, '持久', 2);
INSERT INTO Comment
VALUES (1079, 228, '不拔干', 2);
INSERT INTO Comment
VALUES (1080, 229, '很好', 6);
INSERT INTO Comment
VALUES (1081, 229, '滋润', 6);
INSERT INTO Comment
VALUES (1082, 229, '保湿', 3);
INSERT INTO Comment
VALUES (1083, 229, '便宜', 2);
INSERT INTO Comment
VALUES (1084, 229, '显白', 2);
INSERT INTO Comment
VALUES (1085, 229, '不沾杯', 2);
INSERT INTO Comment
VALUES (1086, 229, '不错', 2);
INSERT INTO Comment
VALUES (1087, 230, '不错', 3);
INSERT INTO Comment
VALUES (1088, 230, '小巧', 1);
INSERT INTO Comment
VALUES (1089, 232, '精致', 1);
INSERT INTO Comment
VALUES (1090, 233, '颜色很正', 1);
INSERT INTO Comment
VALUES (1091, 233, '赞', 1);
INSERT INTO Comment
VALUES (1092, 233, '国货', 1);
INSERT INTO Comment
VALUES (1093, 233, '小巧', 1);
INSERT INTO Comment
VALUES (1094, 233, '精致', 1);
INSERT INTO Comment
VALUES (1095, 233, '不掉色', 1);
INSERT INTO Comment
VALUES (1096, 233, '不易掉色', 1);
INSERT INTO Comment
VALUES (1097, 234, '显白', 1);
INSERT INTO Comment
VALUES (1098, 234, '一般', 1);
INSERT INTO Comment
VALUES (1099, 234, '很好', 1);
INSERT INTO Comment
VALUES (1100, 234, '细管', 1);
INSERT INTO Comment
VALUES (1101, 235, '小巧', 1);
INSERT INTO Comment
VALUES (1102, 235, '不错', 1);
INSERT INTO Comment
VALUES (1103, 235, '滋润', 1);
INSERT INTO Comment
VALUES (1104, 236, '精致', 1);
INSERT INTO Comment
VALUES (1105, 236, '国货', 1);
INSERT INTO Comment
VALUES (1106, 236, '不错', 1);
INSERT INTO Comment
VALUES (1107, 237, '不易脱色', 1);
INSERT INTO Comment
VALUES (1108, 237, '不错', 1);
INSERT INTO Comment
VALUES (1109, 237, '一般', 1);
INSERT INTO Comment
VALUES (1110, 238, '很好', 5);
INSERT INTO Comment
VALUES (1111, 238, '精致', 3);
INSERT INTO Comment
VALUES (1112, 238, '正红色', 2);
INSERT INTO Comment
VALUES (1113, 238, '不错', 2);
INSERT INTO Comment
VALUES (1114, 238, '滋润', 2);
INSERT INTO Comment
VALUES (1115, 238, '划算', 2);
INSERT INTO Comment
VALUES (1116, 238, '一般', 2);
INSERT INTO Comment
VALUES (1117, 239, '滋润', 8);
INSERT INTO Comment
VALUES (1118, 239, '满意', 4);
INSERT INTO Comment
VALUES (1119, 239, '不错', 3);
INSERT INTO Comment
VALUES (1120, 239, '显白', 3);
INSERT INTO Comment
VALUES (1121, 239, '颜色很正', 2);
INSERT INTO Comment
VALUES (1122, 239, '自然', 2);
INSERT INTO Comment
VALUES (1123, 239, '推荐', 1);
INSERT INTO Comment
VALUES (1124, 240, '不干', 4);
INSERT INTO Comment
VALUES (1125, 240, '不错', 4);
INSERT INTO Comment
VALUES (1126, 240, '满意', 2);
INSERT INTO Comment
VALUES (1127, 240, '值得', 2);
INSERT INTO Comment
VALUES (1128, 240, '滋润', 2);
INSERT INTO Comment
VALUES (1129, 240, '很好', 2);
INSERT INTO Comment
VALUES (1130, 240, '有质感', 1);
INSERT INTO Comment
VALUES (1131, 241, '很好', 5);
INSERT INTO Comment
VALUES (1132, 241, '滋润', 3);
INSERT INTO Comment
VALUES (1133, 241, '不错', 3);
INSERT INTO Comment
VALUES (1134, 241, '满意', 3);
INSERT INTO Comment
VALUES (1135, 241, '自然', 3);
INSERT INTO Comment
VALUES (1136, 241, '润唇膏', 1);
INSERT INTO Comment
VALUES (1137, 241, '不干', 1);
INSERT INTO Comment
VALUES (1138, 242, '满意', 6);
INSERT INTO Comment
VALUES (1139, 242, '水润', 5);
INSERT INTO Comment
VALUES (1140, 242, '滋润', 5);
INSERT INTO Comment
VALUES (1141, 242, '不错', 3);
INSERT INTO Comment
VALUES (1142, 242, '少女粉', 2);
INSERT INTO Comment
VALUES (1143, 242, '显白', 2);
INSERT INTO Comment
VALUES (1144, 242, '粉', 2);
INSERT INTO Comment
VALUES (1145, 243, '不错', 6);
INSERT INTO Comment
VALUES (1146, 243, '很好', 5);
INSERT INTO Comment
VALUES (1147, 243, '滋润', 3);
INSERT INTO Comment
VALUES (1148, 243, '值得', 3);
INSERT INTO Comment
VALUES (1149, 243, '推荐', 3);
INSERT INTO Comment
VALUES (1150, 243, '日常', 2);
INSERT INTO Comment
VALUES (1151, 243, '自然', 2);
INSERT INTO Comment
VALUES (1152, 244, '滋润', 5);
INSERT INTO Comment
VALUES (1153, 244, '很好', 5);
INSERT INTO Comment
VALUES (1154, 244, '粉色', 4);
INSERT INTO Comment
VALUES (1155, 244, '不错', 3);
INSERT INTO Comment
VALUES (1156, 244, '显白', 3);
INSERT INTO Comment
VALUES (1157, 244, '满意', 2);
INSERT INTO Comment
VALUES (1158, 244, '不干', 1);
INSERT INTO Comment
VALUES (1159, 245, '很好', 6);
INSERT INTO Comment
VALUES (1160, 245, '显白', 3);
INSERT INTO Comment
VALUES (1161, 245, '赞', 3);
INSERT INTO Comment
VALUES (1162, 245, '持久', 3);
INSERT INTO Comment
VALUES (1163, 245, '值得', 2);
INSERT INTO Comment
VALUES (1164, 245, '不错', 2);
INSERT INTO Comment
VALUES (1165, 245, '颜色很正', 2);
INSERT INTO Comment
VALUES (1166, 246, '滋润', 3);
INSERT INTO Comment
VALUES (1167, 246, '自然', 2);
INSERT INTO Comment
VALUES (1168, 246, '显白', 2);
INSERT INTO Comment
VALUES (1169, 246, '赞', 2);
INSERT INTO Comment
VALUES (1170, 246, '漂亮', 2);
INSERT INTO Comment
VALUES (1171, 246, '持久', 2);
INSERT INTO Comment
VALUES (1172, 246, '哑光', 2);
INSERT INTO Comment
VALUES (1173, 247, '不错', 4);
INSERT INTO Comment
VALUES (1174, 247, '气质', 3);
INSERT INTO Comment
VALUES (1175, 247, '雾面', 3);
INSERT INTO Comment
VALUES (1176, 247, '持久', 3);
INSERT INTO Comment
VALUES (1177, 247, '满意', 3);
INSERT INTO Comment
VALUES (1178, 247, '很好', 3);
INSERT INTO Comment
VALUES (1179, 247, '显白', 2);
INSERT INTO Comment
VALUES (1180, 248, '满意', 1);
INSERT INTO Comment
VALUES (1181, 250, '显白', 5);
INSERT INTO Comment
VALUES (1182, 250, '持久', 3);
INSERT INTO Comment
VALUES (1183, 250, '不错', 3);
INSERT INTO Comment
VALUES (1184, 250, '不干', 2);
INSERT INTO Comment
VALUES (1185, 250, '很好', 2);
INSERT INTO Comment
VALUES (1186, 250, '划算', 2);
INSERT INTO Comment
VALUES (1187, 250, '顺滑', 2);
INSERT INTO Comment
VALUES (1188, 251, '滋润', 6);
INSERT INTO Comment
VALUES (1189, 251, '不错', 5);
INSERT INTO Comment
VALUES (1190, 251, '雾面', 4);
INSERT INTO Comment
VALUES (1191, 251, '有质感', 3);
INSERT INTO Comment
VALUES (1192, 251, '自然', 3);
INSERT INTO Comment
VALUES (1193, 251, '满意', 2);
INSERT INTO Comment
VALUES (1194, 251, '润唇膏', 2);
INSERT INTO Comment
VALUES (1195, 252, '很好', 3);
INSERT INTO Comment
VALUES (1196, 252, '高级', 3);
INSERT INTO Comment
VALUES (1197, 252, '显白', 3);
INSERT INTO Comment
VALUES (1198, 252, '不沾杯', 2);
INSERT INTO Comment
VALUES (1199, 252, '赞', 2);
INSERT INTO Comment
VALUES (1200, 252, '满意', 2);
INSERT INTO Comment
VALUES (1201, 252, '给力', 2);
INSERT INTO Comment
VALUES (1202, 253, '很好', 5);
INSERT INTO Comment
VALUES (1203, 253, '满意', 2);
INSERT INTO Comment
VALUES (1204, 253, '高级', 1);
INSERT INTO Comment
VALUES (1205, 253, '百搭', 1);
INSERT INTO Comment
VALUES (1206, 253, '日常', 1);
INSERT INTO Comment
VALUES (1207, 253, '显白', 1);
INSERT INTO Comment
VALUES (1208, 253, '值得', 1);
INSERT INTO Comment
VALUES (1209, 254, '秋冬', 2);
INSERT INTO Comment
VALUES (1210, 254, '滋润', 2);
INSERT INTO Comment
VALUES (1211, 254, '满意', 1);
INSERT INTO Comment
VALUES (1212, 254, '好用', 1);
INSERT INTO Comment
VALUES (1213, 254, '显白', 1);
INSERT INTO Comment
VALUES (1214, 254, '给力', 1);
INSERT INTO Comment
VALUES (1215, 254, '不干', 1);
INSERT INTO Comment
VALUES (1216, 255, '滋润', 6);
INSERT INTO Comment
VALUES (1217, 255, '持久', 4);
INSERT INTO Comment
VALUES (1218, 255, '润滑', 3);
INSERT INTO Comment
VALUES (1219, 255, '变色', 2);
INSERT INTO Comment
VALUES (1220, 255, '精致', 2);
INSERT INTO Comment
VALUES (1221, 255, '不错', 2);
INSERT INTO Comment
VALUES (1222, 255, '水润', 2);
INSERT INTO Comment
VALUES (1223, 256, '滋润', 8);
INSERT INTO Comment
VALUES (1224, 256, '很好', 3);
INSERT INTO Comment
VALUES (1225, 256, '持久', 2);
INSERT INTO Comment
VALUES (1226, 256, '显白', 2);
INSERT INTO Comment
VALUES (1227, 256, '漂亮', 2);
INSERT INTO Comment
VALUES (1228, 256, '满意', 2);
INSERT INTO Comment
VALUES (1229, 256, '推荐', 2);
INSERT INTO Comment
VALUES (1230, 257, '不错', 4);
INSERT INTO Comment
VALUES (1231, 257, '滋润', 3);
INSERT INTO Comment
VALUES (1232, 257, '漂亮', 2);
INSERT INTO Comment
VALUES (1233, 257, '显肤色', 2);
INSERT INTO Comment
VALUES (1234, 257, '持久', 2);
INSERT INTO Comment
VALUES (1235, 257, '自然', 2);
INSERT INTO Comment
VALUES (1236, 257, '小巧', 1);
INSERT INTO Comment
VALUES (1237, 258, '很好', 7);
INSERT INTO Comment
VALUES (1238, 258, '滋润', 6);
INSERT INTO Comment
VALUES (1239, 258, '日常', 4);
INSERT INTO Comment
VALUES (1240, 258, '满意', 4);
INSERT INTO Comment
VALUES (1241, 258, '不沾杯', 2);
INSERT INTO Comment
VALUES (1242, 258, '气质', 2);
INSERT INTO Comment
VALUES (1243, 258, '值得', 2);
INSERT INTO Comment
VALUES (1244, 259, '哑光', 4);
INSERT INTO Comment
VALUES (1245, 259, '高级', 3);
INSERT INTO Comment
VALUES (1246, 259, '很好', 2);
INSERT INTO Comment
VALUES (1247, 259, '雾面', 2);
INSERT INTO Comment
VALUES (1248, 259, '不拔干', 2);
INSERT INTO Comment
VALUES (1249, 259, '滋润', 2);
INSERT INTO Comment
VALUES (1250, 259, '持久', 2);
INSERT INTO Comment
VALUES (1251, 260, '不错', 6);
INSERT INTO Comment
VALUES (1252, 260, '很好', 4);
INSERT INTO Comment
VALUES (1253, 260, '滋润', 4);
INSERT INTO Comment
VALUES (1254, 260, '值得', 4);
INSERT INTO Comment
VALUES (1255, 260, '持久', 2);
INSERT INTO Comment
VALUES (1256, 260, '温柔', 2);
INSERT INTO Comment
VALUES (1257, 260, '提气色', 2);
INSERT INTO Comment
VALUES (1258, 261, '滋润', 4);
INSERT INTO Comment
VALUES (1259, 261, '持久', 3);
INSERT INTO Comment
VALUES (1260, 261, '顺滑', 2);
INSERT INTO Comment
VALUES (1261, 261, '很好', 2);
INSERT INTO Comment
VALUES (1262, 261, '不错', 2);
INSERT INTO Comment
VALUES (1263, 261, '颜色很正', 2);
INSERT INTO Comment
VALUES (1264, 261, '粉', 1);
INSERT INTO Comment
VALUES (1265, 262, '显白', 1);
INSERT INTO Comment
VALUES (1266, 262, '有质感', 1);
INSERT INTO Comment
VALUES (1267, 262, '很好', 1);
INSERT INTO Comment
VALUES (1268, 263, '优雅', 1);
INSERT INTO Comment
VALUES (1269, 263, '元气', 1);
INSERT INTO Comment
VALUES (1270, 264, '很好', 3);
INSERT INTO Comment
VALUES (1271, 264, '推荐', 2);
INSERT INTO Comment
VALUES (1272, 264, '值得', 1);
INSERT INTO Comment
VALUES (1273, 264, '很美', 1);
INSERT INTO Comment
VALUES (1274, 264, '百搭', 1);
INSERT INTO Comment
VALUES (1275, 264, '有质感', 1);
INSERT INTO Comment
VALUES (1276, 264, '枫叶红', 1);
INSERT INTO Comment
VALUES (1277, 265, '正红色', 1);
INSERT INTO Comment
VALUES (1278, 265, '气场', 1);
INSERT INTO Comment
VALUES (1279, 265, '滋润', 1);
INSERT INTO Comment
VALUES (1280, 265, '很好', 1);
INSERT INTO Comment
VALUES (1281, 266, '滋润', 6);
INSERT INTO Comment
VALUES (1282, 266, '正红色', 3);
INSERT INTO Comment
VALUES (1283, 266, '气场', 2);
INSERT INTO Comment
VALUES (1284, 266, '很好', 2);
INSERT INTO Comment
VALUES (1285, 266, '红色', 2);
INSERT INTO Comment
VALUES (1286, 266, '日常', 2);
INSERT INTO Comment
VALUES (1287, 266, '显白', 2);
INSERT INTO Comment
VALUES (1288, 267, '丝绒', 4);
INSERT INTO Comment
VALUES (1289, 267, '不干', 3);
INSERT INTO Comment
VALUES (1290, 267, '顺滑', 2);
INSERT INTO Comment
VALUES (1291, 267, '便宜', 2);
INSERT INTO Comment
VALUES (1292, 267, '推荐', 2);
INSERT INTO Comment
VALUES (1293, 267, '细闪', 2);
INSERT INTO Comment
VALUES (1294, 267, '满意', 2);
INSERT INTO Comment
VALUES (1295, 268, '显白', 3);
INSERT INTO Comment
VALUES (1296, 268, '丝绒', 3);
INSERT INTO Comment
VALUES (1297, 268, '哑光', 2);
INSERT INTO Comment
VALUES (1298, 268, '天鹅绒', 2);
INSERT INTO Comment
VALUES (1299, 268, '气质', 2);
INSERT INTO Comment
VALUES (1300, 268, '划算', 2);
INSERT INTO Comment
VALUES (1301, 268, '高级', 2);
INSERT INTO Comment
VALUES (1302, 269, '很好', 5);
INSERT INTO Comment
VALUES (1303, 269, '不错', 4);
INSERT INTO Comment
VALUES (1304, 269, '细闪', 3);
INSERT INTO Comment
VALUES (1305, 269, '持久', 3);
INSERT INTO Comment
VALUES (1306, 269, '高级', 3);
INSERT INTO Comment
VALUES (1307, 269, '好闻', 2);
INSERT INTO Comment
VALUES (1308, 269, '温柔', 2);
INSERT INTO Comment
VALUES (1309, 270, '好用', 4);
INSERT INTO Comment
VALUES (1310, 270, '丝绒', 4);
INSERT INTO Comment
VALUES (1311, 270, '轻薄', 4);
INSERT INTO Comment
VALUES (1312, 270, '显白', 3);
INSERT INTO Comment
VALUES (1313, 270, '便宜', 3);
INSERT INTO Comment
VALUES (1314, 270, '很好', 3);
INSERT INTO Comment
VALUES (1315, 270, '红色', 2);
INSERT INTO Comment
VALUES (1316, 271, '很好', 5);
INSERT INTO Comment
VALUES (1317, 271, '滋润', 3);
INSERT INTO Comment
VALUES (1318, 271, '温柔', 2);
INSERT INTO Comment
VALUES (1319, 271, '不拔干', 2);
INSERT INTO Comment
VALUES (1320, 271, '高级', 2);
INSERT INTO Comment
VALUES (1321, 271, '好闻', 2);
INSERT INTO Comment
VALUES (1322, 271, '不错', 2);
INSERT INTO Comment
VALUES (1323, 272, '很好', 4);
INSERT INTO Comment
VALUES (1324, 272, '漂亮', 4);
INSERT INTO Comment
VALUES (1325, 272, '显气色', 2);
INSERT INTO Comment
VALUES (1326, 272, '轻薄', 1);
INSERT INTO Comment
VALUES (1327, 272, '清香', 1);
INSERT INTO Comment
VALUES (1328, 272, '显肤色', 1);
INSERT INTO Comment
VALUES (1329, 272, '便宜', 1);
INSERT INTO Comment
VALUES (1330, 273, '丝绒', 3);
INSERT INTO Comment
VALUES (1331, 273, '巧克力味', 2);
INSERT INTO Comment
VALUES (1332, 273, '不错', 2);
INSERT INTO Comment
VALUES (1333, 273, '粉', 2);
INSERT INTO Comment
VALUES (1334, 273, '推荐', 2);
INSERT INTO Comment
VALUES (1335, 273, '精致', 2);
INSERT INTO Comment
VALUES (1336, 273, '哑光', 2);
INSERT INTO Comment
VALUES (1337, 274, '很好', 7);
INSERT INTO Comment
VALUES (1338, 274, '丝绒', 3);
INSERT INTO Comment
VALUES (1339, 274, '显白', 3);
INSERT INTO Comment
VALUES (1340, 274, '国货', 2);
INSERT INTO Comment
VALUES (1341, 274, '自然', 2);
INSERT INTO Comment
VALUES (1342, 274, '持妆', 2);
INSERT INTO Comment
VALUES (1343, 274, '不拔干', 2);
INSERT INTO Comment
VALUES (1344, 275, '很好', 4);
INSERT INTO Comment
VALUES (1345, 275, '显白', 4);
INSERT INTO Comment
VALUES (1346, 275, '丝绒', 3);
INSERT INTO Comment
VALUES (1347, 275, '不拔干', 2);
INSERT INTO Comment
VALUES (1348, 275, '持久', 2);
INSERT INTO Comment
VALUES (1349, 275, '便宜', 2);
INSERT INTO Comment
VALUES (1350, 275, '不干', 2);
INSERT INTO Comment
VALUES (1351, 276, '不拔干', 4);
INSERT INTO Comment
VALUES (1352, 276, '国货', 4);
INSERT INTO Comment
VALUES (1353, 276, '不错', 4);
INSERT INTO Comment
VALUES (1354, 276, '显白', 3);
INSERT INTO Comment
VALUES (1355, 276, '滋润', 3);
INSERT INTO Comment
VALUES (1356, 276, '丝绒', 3);
INSERT INTO Comment
VALUES (1357, 276, '气场', 2);
INSERT INTO Comment
VALUES (1358, 277, '显白', 4);
INSERT INTO Comment
VALUES (1359, 277, '高级', 4);
INSERT INTO Comment
VALUES (1360, 277, '不错', 4);
INSERT INTO Comment
VALUES (1361, 277, '很好', 2);
INSERT INTO Comment
VALUES (1362, 277, '雾面', 2);
INSERT INTO Comment
VALUES (1363, 277, '带闪', 2);
INSERT INTO Comment
VALUES (1364, 277, '天鹅绒', 2);
INSERT INTO Comment
VALUES (1365, 278, '显白', 5);
INSERT INTO Comment
VALUES (1366, 278, '持久', 4);
INSERT INTO Comment
VALUES (1367, 278, '不拔干', 3);
INSERT INTO Comment
VALUES (1368, 278, '保湿', 3);
INSERT INTO Comment
VALUES (1369, 278, '一般', 3);
INSERT INTO Comment
VALUES (1370, 278, '巧克力味', 3);
INSERT INTO Comment
VALUES (1371, 278, '很好', 3);
INSERT INTO Comment
VALUES (1372, 279, '便宜', 4);
INSERT INTO Comment
VALUES (1373, 279, '显白', 3);
INSERT INTO Comment
VALUES (1374, 279, '精致', 2);
INSERT INTO Comment
VALUES (1375, 279, '漂亮', 2);
INSERT INTO Comment
VALUES (1376, 279, '保湿', 2);
INSERT INTO Comment
VALUES (1377, 279, '持久', 2);
INSERT INTO Comment
VALUES (1378, 279, '推荐', 2);
INSERT INTO Comment
VALUES (1379, 280, '高级', 3);
INSERT INTO Comment
VALUES (1380, 280, '细闪', 3);
INSERT INTO Comment
VALUES (1381, 280, '值得', 2);
INSERT INTO Comment
VALUES (1382, 280, '丝绒', 2);
INSERT INTO Comment
VALUES (1383, 280, '持久', 2);
INSERT INTO Comment
VALUES (1384, 280, '显白', 2);
INSERT INTO Comment
VALUES (1385, 280, '赞', 2);
INSERT INTO Comment
VALUES (1386, 281, '很好', 5);
INSERT INTO Comment
VALUES (1387, 281, '显白', 4);
INSERT INTO Comment
VALUES (1388, 281, '日常', 3);
INSERT INTO Comment
VALUES (1389, 281, '好用', 2);
INSERT INTO Comment
VALUES (1390, 281, '巧克力味', 2);
INSERT INTO Comment
VALUES (1391, 281, '细闪', 2);
INSERT INTO Comment
VALUES (1392, 281, '巧克力色', 2);
INSERT INTO Comment
VALUES (1393, 282, '很好', 5);
INSERT INTO Comment
VALUES (1394, 282, '漂亮', 3);
INSERT INTO Comment
VALUES (1395, 282, '不错', 2);
INSERT INTO Comment
VALUES (1396, 282, '轻薄', 2);
INSERT INTO Comment
VALUES (1397, 282, '好闻', 2);
INSERT INTO Comment
VALUES (1398, 282, '精致', 2);
INSERT INTO Comment
VALUES (1399, 282, '润唇膏', 2);
INSERT INTO Comment
VALUES (1400, 283, '很好', 5);
INSERT INTO Comment
VALUES (1401, 283, '雾面', 4);
INSERT INTO Comment
VALUES (1402, 283, '轻薄', 4);
INSERT INTO Comment
VALUES (1403, 283, '巧克力味', 3);
INSERT INTO Comment
VALUES (1404, 283, '不拔干', 3);
INSERT INTO Comment
VALUES (1405, 283, '好闻', 3);
INSERT INTO Comment
VALUES (1406, 283, '丝滑', 2);
INSERT INTO Comment
VALUES (1407, 284, '满意', 4);
INSERT INTO Comment
VALUES (1408, 284, '便宜', 3);
INSERT INTO Comment
VALUES (1409, 284, '很好', 3);
INSERT INTO Comment
VALUES (1410, 284, '持久', 3);
INSERT INTO Comment
VALUES (1411, 284, '细闪', 3);
INSERT INTO Comment
VALUES (1412, 284, '好用', 2);
INSERT INTO Comment
VALUES (1413, 284, '精致', 2);
INSERT INTO Comment
VALUES (1414, 285, '丝绒', 3);
INSERT INTO Comment
VALUES (1415, 285, '复古', 2);
INSERT INTO Comment
VALUES (1416, 285, '好闻', 2);
INSERT INTO Comment
VALUES (1417, 285, '滋润', 2);
INSERT INTO Comment
VALUES (1418, 285, '不错', 2);
INSERT INTO Comment
VALUES (1419, 285, '满意', 2);
INSERT INTO Comment
VALUES (1420, 285, '显白', 2);
INSERT INTO Comment
VALUES (1421, 286, '很好', 3);
INSERT INTO Comment
VALUES (1422, 286, '温柔', 3);
INSERT INTO Comment
VALUES (1423, 286, '显白', 3);
INSERT INTO Comment
VALUES (1424, 286, '高级', 2);
INSERT INTO Comment
VALUES (1425, 286, '不错', 2);
INSERT INTO Comment
VALUES (1426, 286, '丝绒', 2);
INSERT INTO Comment
VALUES (1427, 286, '国货', 2);
INSERT INTO Comment
VALUES (1428, 287, '不拔干', 3);
INSERT INTO Comment
VALUES (1429, 287, '显白', 3);
INSERT INTO Comment
VALUES (1430, 287, '不错', 2);
INSERT INTO Comment
VALUES (1431, 287, '春夏', 2);
INSERT INTO Comment
VALUES (1432, 287, '限量版', 2);
INSERT INTO Comment
VALUES (1433, 287, '不干', 2);
INSERT INTO Comment
VALUES (1434, 287, '高级', 1);
INSERT INTO Comment
VALUES (1435, 288, '很好', 4);
INSERT INTO Comment
VALUES (1436, 288, '显白', 3);
INSERT INTO Comment
VALUES (1437, 288, '有质感', 3);
INSERT INTO Comment
VALUES (1438, 288, '划算', 2);
INSERT INTO Comment
VALUES (1439, 288, '持久', 2);
INSERT INTO Comment
VALUES (1440, 288, '不沾杯', 2);
INSERT INTO Comment
VALUES (1441, 288, '甜甜的', 2);
INSERT INTO Comment
VALUES (1442, 289, '不拔干', 3);
INSERT INTO Comment
VALUES (1443, 289, '持久', 3);
INSERT INTO Comment
VALUES (1444, 289, '不错', 3);
INSERT INTO Comment
VALUES (1445, 289, '雾面', 3);
INSERT INTO Comment
VALUES (1446, 289, '高级', 3);
INSERT INTO Comment
VALUES (1447, 289, '保湿', 2);
INSERT INTO Comment
VALUES (1448, 289, '不掉色', 2);
INSERT INTO Comment
VALUES (1449, 290, '推荐', 6);
INSERT INTO Comment
VALUES (1450, 290, '很好', 6);
INSERT INTO Comment
VALUES (1451, 290, '轻薄', 5);
INSERT INTO Comment
VALUES (1452, 290, '漂亮', 3);
INSERT INTO Comment
VALUES (1453, 290, '雾面', 3);
INSERT INTO Comment
VALUES (1454, 290, '有质感', 3);
INSERT INTO Comment
VALUES (1455, 290, '保湿', 3);
INSERT INTO Comment
VALUES (1456, 291, '哑光', 5);
INSERT INTO Comment
VALUES (1457, 291, '显白', 4);
INSERT INTO Comment
VALUES (1458, 291, '很好', 4);
INSERT INTO Comment
VALUES (1459, 291, '有质感', 3);
INSERT INTO Comment
VALUES (1460, 291, '划算', 2);
INSERT INTO Comment
VALUES (1461, 291, '日常', 2);
INSERT INTO Comment
VALUES (1462, 291, '自然', 2);
INSERT INTO Comment
VALUES (1463, 292, '推荐', 6);
INSERT INTO Comment
VALUES (1464, 292, '持久', 4);
INSERT INTO Comment
VALUES (1465, 292, '显白', 4);
INSERT INTO Comment
VALUES (1466, 292, '好闻', 3);
INSERT INTO Comment
VALUES (1467, 292, '有质感', 3);
INSERT INTO Comment
VALUES (1468, 292, '雾面', 2);
INSERT INTO Comment
VALUES (1469, 292, '不拔干', 2);
INSERT INTO Comment
VALUES (1470, 293, '很好', 5);
INSERT INTO Comment
VALUES (1471, 293, '持久', 4);
INSERT INTO Comment
VALUES (1472, 293, '轻薄', 3);
INSERT INTO Comment
VALUES (1473, 293, '显白', 3);
INSERT INTO Comment
VALUES (1474, 293, '不错', 3);
INSERT INTO Comment
VALUES (1475, 293, '好用', 2);
INSERT INTO Comment
VALUES (1476, 293, '推荐', 2);
INSERT INTO Comment
VALUES (1477, 294, '轻薄', 6);
INSERT INTO Comment
VALUES (1478, 294, '日常', 4);
INSERT INTO Comment
VALUES (1479, 294, '不错', 4);
INSERT INTO Comment
VALUES (1480, 294, '温柔', 2);
INSERT INTO Comment
VALUES (1481, 294, '很好', 2);
INSERT INTO Comment
VALUES (1482, 294, '自然', 2);
INSERT INTO Comment
VALUES (1483, 294, '不干', 2);
INSERT INTO Comment
VALUES (1484, 295, '满意', 7);
INSERT INTO Comment
VALUES (1485, 295, '很好', 3);
INSERT INTO Comment
VALUES (1486, 295, '值得', 3);
INSERT INTO Comment
VALUES (1487, 295, '不错', 2);
INSERT INTO Comment
VALUES (1488, 295, '不干', 2);
INSERT INTO Comment
VALUES (1489, 295, '便宜', 1);
INSERT INTO Comment
VALUES (1490, 295, '雾面', 1);
INSERT INTO Comment
VALUES (1491, 296, '自然', 4);
INSERT INTO Comment
VALUES (1492, 296, '很好', 4);
INSERT INTO Comment
VALUES (1493, 296, '轻薄', 3);
INSERT INTO Comment
VALUES (1494, 296, '粉', 2);
INSERT INTO Comment
VALUES (1495, 296, '优秀', 1);
INSERT INTO Comment
VALUES (1496, 296, '有特色', 1);
INSERT INTO Comment
VALUES (1497, 296, '性价比高', 1);
INSERT INTO Comment
VALUES (1498, 297, '不错', 3);
INSERT INTO Comment
VALUES (1499, 297, '土棕色', 2);
INSERT INTO Comment
VALUES (1500, 297, '不拔干', 2);
INSERT INTO Comment
VALUES (1501, 297, '滋润', 1);
INSERT INTO Comment
VALUES (1502, 297, '轻薄', 1);
INSERT INTO Comment
VALUES (1503, 297, '红棕色', 1);
INSERT INTO Comment
VALUES (1504, 297, '满意', 1);
INSERT INTO Comment
VALUES (1505, 298, '滋润', 4);
INSERT INTO Comment
VALUES (1506, 298, '很好', 3);
INSERT INTO Comment
VALUES (1507, 298, '粉', 2);
INSERT INTO Comment
VALUES (1508, 298, '水润', 2);
INSERT INTO Comment
VALUES (1509, 298, '满意', 2);
INSERT INTO Comment
VALUES (1510, 298, '不拔干', 2);
INSERT INTO Comment
VALUES (1511, 298, '不错', 2);
INSERT INTO Comment
VALUES (1512, 299, '很好', 4);
INSERT INTO Comment
VALUES (1513, 299, '满意', 3);
INSERT INTO Comment
VALUES (1514, 299, '不干', 2);
INSERT INTO Comment
VALUES (1515, 299, '裸粉', 1);
INSERT INTO Comment
VALUES (1516, 299, '摩卡色', 1);
INSERT INTO Comment
VALUES (1517, 299, '气质', 1);
INSERT INTO Comment
VALUES (1518, 299, '慕斯', 1);
INSERT INTO Comment
VALUES (1519, 300, '丝绒', 2);
INSERT INTO Comment
VALUES (1520, 300, '国货', 2);
INSERT INTO Comment
VALUES (1521, 300, '灰紫色', 1);
INSERT INTO Comment
VALUES (1522, 300, '自然', 1);
INSERT INTO Comment
VALUES (1523, 300, '漂亮', 1);
INSERT INTO Comment
VALUES (1524, 300, '有质感', 1);
INSERT INTO Comment
VALUES (1525, 300, '精致', 1);
INSERT INTO Comment
VALUES (1526, 301, '满意', 3);
INSERT INTO Comment
VALUES (1527, 301, '不错', 2);
INSERT INTO Comment
VALUES (1528, 301, '很好', 2);
INSERT INTO Comment
VALUES (1529, 301, '自然', 2);
INSERT INTO Comment
VALUES (1530, 301, '显白', 2);
INSERT INTO Comment
VALUES (1531, 301, '温柔', 2);
INSERT INTO Comment
VALUES (1532, 301, '轻薄', 1);
INSERT INTO Comment
VALUES (1533, 302, '精致', 6);
INSERT INTO Comment
VALUES (1534, 302, '推荐', 5);
INSERT INTO Comment
VALUES (1535, 302, '不错', 5);
INSERT INTO Comment
VALUES (1536, 302, '很好', 4);
INSERT INTO Comment
VALUES (1537, 302, '不干', 3);
INSERT INTO Comment
VALUES (1538, 302, '小巧', 3);
INSERT INTO Comment
VALUES (1539, 302, '满意', 3);
INSERT INTO Comment
VALUES (1540, 303, '很好', 5);
INSERT INTO Comment
VALUES (1541, 303, '哑光', 2);
INSERT INTO Comment
VALUES (1542, 303, '不沾杯', 2);
INSERT INTO Comment
VALUES (1543, 303, '磨砂壳', 1);
INSERT INTO Comment
VALUES (1544, 303, '滋润', 1);
INSERT INTO Comment
VALUES (1545, 303, '顺滑', 1);
INSERT INTO Comment
VALUES (1546, 303, '赞', 1);
INSERT INTO Comment
VALUES (1547, 304, '持久', 5);
INSERT INTO Comment
VALUES (1548, 304, '很好', 5);
INSERT INTO Comment
VALUES (1549, 304, '不错', 3);
INSERT INTO Comment
VALUES (1550, 304, '漂亮', 3);
INSERT INTO Comment
VALUES (1551, 304, '划算', 2);
INSERT INTO Comment
VALUES (1552, 304, '显白', 2);
INSERT INTO Comment
VALUES (1553, 304, '不干', 2);
INSERT INTO Comment
VALUES (1554, 305, '不错', 6);
INSERT INTO Comment
VALUES (1555, 305, '显白', 5);
INSERT INTO Comment
VALUES (1556, 305, '雾面', 4);
INSERT INTO Comment
VALUES (1557, 305, '持妆', 3);
INSERT INTO Comment
VALUES (1558, 305, '有质感', 3);
INSERT INTO Comment
VALUES (1559, 305, '容易涂匀', 2);
INSERT INTO Comment
VALUES (1560, 305, '轻薄', 2);
INSERT INTO Comment
VALUES (1561, 306, '哑光', 3);
INSERT INTO Comment
VALUES (1562, 306, '很好', 3);
INSERT INTO Comment
VALUES (1563, 306, '温柔', 3);
INSERT INTO Comment
VALUES (1564, 306, '甜甜的', 2);
INSERT INTO Comment
VALUES (1565, 306, '轻薄', 2);
INSERT INTO Comment
VALUES (1566, 306, '持久', 2);
INSERT INTO Comment
VALUES (1567, 306, '豆沙色', 2);
INSERT INTO Comment
VALUES (1568, 307, '很好', 5);
INSERT INTO Comment
VALUES (1569, 307, '持久', 5);
INSERT INTO Comment
VALUES (1570, 307, '好用', 3);
INSERT INTO Comment
VALUES (1571, 307, '划算', 2);
INSERT INTO Comment
VALUES (1572, 307, '哑光', 2);
INSERT INTO Comment
VALUES (1573, 307, '不沾杯', 2);
INSERT INTO Comment
VALUES (1574, 307, '轻薄', 2);
INSERT INTO Comment
VALUES (1575, 308, '哑光', 4);
INSERT INTO Comment
VALUES (1576, 308, '很好', 2);
INSERT INTO Comment
VALUES (1577, 308, '有气场', 2);
INSERT INTO Comment
VALUES (1578, 308, '好用', 2);
INSERT INTO Comment
VALUES (1579, 308, '日常', 2);
INSERT INTO Comment
VALUES (1580, 308, '南瓜色', 2);
INSERT INTO Comment
VALUES (1581, 308, '推荐', 2);
INSERT INTO Comment
VALUES (1582, 309, '哑光', 5);
INSERT INTO Comment
VALUES (1583, 309, '不错', 4);
INSERT INTO Comment
VALUES (1584, 309, '持久', 4);
INSERT INTO Comment
VALUES (1585, 309, '很好', 4);
INSERT INTO Comment
VALUES (1586, 309, '推荐', 3);
INSERT INTO Comment
VALUES (1587, 309, '显白', 3);
INSERT INTO Comment
VALUES (1588, 309, '高级', 2);
INSERT INTO Comment
VALUES (1589, 310, '显白', 6);
INSERT INTO Comment
VALUES (1590, 310, '哑光', 4);
INSERT INTO Comment
VALUES (1591, 310, '不错', 4);
INSERT INTO Comment
VALUES (1592, 310, '保湿', 3);
INSERT INTO Comment
VALUES (1593, 310, '好闻', 3);
INSERT INTO Comment
VALUES (1594, 310, '不掉色', 2);
INSERT INTO Comment
VALUES (1595, 310, '滋润', 2);
INSERT INTO Comment
VALUES (1596, 311, '不错', 8);
INSERT INTO Comment
VALUES (1597, 311, '很好', 5);
INSERT INTO Comment
VALUES (1598, 311, '持久', 4);
INSERT INTO Comment
VALUES (1599, 311, '推荐', 4);
INSERT INTO Comment
VALUES (1600, 311, '哑光', 3);
INSERT INTO Comment
VALUES (1601, 311, '不沾杯', 3);
INSERT INTO Comment
VALUES (1602, 311, '轻薄', 3);
INSERT INTO Comment
VALUES (1603, 312, '不错', 6);
INSERT INTO Comment
VALUES (1604, 312, '很好', 5);
INSERT INTO Comment
VALUES (1605, 312, '哑光', 5);
INSERT INTO Comment
VALUES (1606, 312, '持久', 5);
INSERT INTO Comment
VALUES (1607, 312, '显白', 4);
INSERT INTO Comment
VALUES (1608, 312, '一般', 3);
INSERT INTO Comment
VALUES (1609, 312, '高级', 2);
INSERT INTO Comment
VALUES (1610, 313, '不错', 6);
INSERT INTO Comment
VALUES (1611, 313, '哑光', 4);
INSERT INTO Comment
VALUES (1612, 313, '很好', 3);
INSERT INTO Comment
VALUES (1613, 313, '推荐', 3);
INSERT INTO Comment
VALUES (1614, 313, '有质感', 2);
INSERT INTO Comment
VALUES (1615, 313, '轻薄', 2);
INSERT INTO Comment
VALUES (1616, 313, '满意', 2);
INSERT INTO Comment
VALUES (1617, 314, '不错', 5);
INSERT INTO Comment
VALUES (1618, 314, '哑光', 4);
INSERT INTO Comment
VALUES (1619, 314, '很好', 3);
INSERT INTO Comment
VALUES (1620, 314, '显白', 3);
INSERT INTO Comment
VALUES (1621, 314, '不沾杯', 2);
INSERT INTO Comment
VALUES (1622, 314, '持妆', 2);
INSERT INTO Comment
VALUES (1623, 314, '好闻', 2);
INSERT INTO Comment
VALUES (1624, 315, '很好', 7);
INSERT INTO Comment
VALUES (1625, 315, '不拔干', 7);
INSERT INTO Comment
VALUES (1626, 315, '显白', 4);
INSERT INTO Comment
VALUES (1627, 315, '好闻', 4);
INSERT INTO Comment
VALUES (1628, 315, '国货', 3);
INSERT INTO Comment
VALUES (1629, 315, '不错', 3);
INSERT INTO Comment
VALUES (1630, 315, '保湿', 3);
INSERT INTO Comment
VALUES (1631, 316, '哑光', 2);
INSERT INTO Comment
VALUES (1632, 316, '好闻', 1);
INSERT INTO Comment
VALUES (1633, 316, '有质感', 1);
INSERT INTO Comment
VALUES (1634, 316, '给力', 1);
INSERT INTO Comment
VALUES (1635, 316, '精致', 1);
INSERT INTO Comment
VALUES (1636, 316, '很好', 1);
INSERT INTO Comment
VALUES (1637, 316, '吃土色', 1);
INSERT INTO Comment
VALUES (1638, 317, '显白', 5);
INSERT INTO Comment
VALUES (1639, 317, '值得', 4);
INSERT INTO Comment
VALUES (1640, 317, '很好', 3);
INSERT INTO Comment
VALUES (1641, 317, '唇彩', 3);
INSERT INTO Comment
VALUES (1642, 317, '高级', 2);
INSERT INTO Comment
VALUES (1643, 317, '满意', 2);
INSERT INTO Comment
VALUES (1644, 317, '上档次', 2);
INSERT INTO Comment
VALUES (1645, 318, '显白', 3);
INSERT INTO Comment
VALUES (1646, 318, '满意', 2);
INSERT INTO Comment
VALUES (1647, 318, '滋润', 2);
INSERT INTO Comment
VALUES (1648, 318, '持久', 2);
INSERT INTO Comment
VALUES (1649, 318, '学生', 1);
INSERT INTO Comment
VALUES (1650, 318, '推荐', 1);
INSERT INTO Comment
VALUES (1651, 318, '好用', 1);
INSERT INTO Comment
VALUES (1652, 319, '哑光', 2);
INSERT INTO Comment
VALUES (1653, 319, '不错', 2);
INSERT INTO Comment
VALUES (1654, 319, '很好', 2);
INSERT INTO Comment
VALUES (1655, 319, '丝滑', 1);
INSERT INTO Comment
VALUES (1656, 319, '高级', 1);
INSERT INTO Comment
VALUES (1657, 319, '持久', 1);
INSERT INTO Comment
VALUES (1658, 319, '粉', 1);
INSERT INTO Comment
VALUES (1659, 320, '滋润', 5);
INSERT INTO Comment
VALUES (1660, 320, '很好', 4);
INSERT INTO Comment
VALUES (1661, 320, '持久', 3);
INSERT INTO Comment
VALUES (1662, 320, '润唇膏', 3);
INSERT INTO Comment
VALUES (1663, 320, '不错', 3);
INSERT INTO Comment
VALUES (1664, 320, '日常', 2);
INSERT INTO Comment
VALUES (1665, 320, '豆沙色', 2);
INSERT INTO Comment
VALUES (1666, 321, '很好', 3);
INSERT INTO Comment
VALUES (1667, 321, '肉桂奶茶色', 2);
INSERT INTO Comment
VALUES (1668, 321, '滋润', 2);
INSERT INTO Comment
VALUES (1669, 321, '持久', 2);
INSERT INTO Comment
VALUES (1670, 321, '不干', 2);
INSERT INTO Comment
VALUES (1671, 321, '巧克力色', 1);
INSERT INTO Comment
VALUES (1672, 321, '水润', 1);
INSERT INTO Comment
VALUES (1673, 322, '显白', 5);
INSERT INTO Comment
VALUES (1674, 322, '不错', 4);
INSERT INTO Comment
VALUES (1675, 322, '很好', 4);
INSERT INTO Comment
VALUES (1676, 322, '满意', 2);
INSERT INTO Comment
VALUES (1677, 322, '漂亮', 2);
INSERT INTO Comment
VALUES (1678, 322, '有质感', 2);
INSERT INTO Comment
VALUES (1679, 322, '推荐', 2);
INSERT INTO Comment
VALUES (1680, 323, '推荐', 5);
INSERT INTO Comment
VALUES (1681, 323, '不错', 3);
INSERT INTO Comment
VALUES (1682, 323, '滋润', 3);
INSERT INTO Comment
VALUES (1683, 323, '漂亮', 2);
INSERT INTO Comment
VALUES (1684, 323, '好闻', 2);
INSERT INTO Comment
VALUES (1685, 323, '优秀', 2);
INSERT INTO Comment
VALUES (1686, 323, '很好', 2);
INSERT INTO Comment
VALUES (1687, 324, '很好', 6);
INSERT INTO Comment
VALUES (1688, 324, '滋润', 5);
INSERT INTO Comment
VALUES (1689, 324, '不错', 3);
INSERT INTO Comment
VALUES (1690, 324, '推荐', 3);
INSERT INTO Comment
VALUES (1691, 324, '牛血色', 2);
INSERT INTO Comment
VALUES (1692, 324, '满意', 2);
INSERT INTO Comment
VALUES (1693, 324, '显白', 2);
INSERT INTO Comment
VALUES (1694, 325, '显白', 5);
INSERT INTO Comment
VALUES (1695, 325, '滋润', 4);
INSERT INTO Comment
VALUES (1696, 325, '日常', 3);
INSERT INTO Comment
VALUES (1697, 325, '满意', 2);
INSERT INTO Comment
VALUES (1698, 325, '很好', 2);
INSERT INTO Comment
VALUES (1699, 325, '国货', 2);
INSERT INTO Comment
VALUES (1700, 325, '不干', 2);
INSERT INTO Comment
VALUES (1701, 326, '粉', 3);
INSERT INTO Comment
VALUES (1702, 326, '很好', 3);
INSERT INTO Comment
VALUES (1703, 326, '自然', 3);
INSERT INTO Comment
VALUES (1704, 326, '水润', 2);
INSERT INTO Comment
VALUES (1705, 326, '日常', 2);
INSERT INTO Comment
VALUES (1706, 326, '裸色', 2);
INSERT INTO Comment
VALUES (1707, 326, '滋润', 2);
INSERT INTO Comment
VALUES (1708, 327, '高级', 2);
INSERT INTO Comment
VALUES (1709, 327, '不干', 2);
INSERT INTO Comment
VALUES (1710, 327, '满意', 2);
INSERT INTO Comment
VALUES (1711, 327, '不错', 2);
INSERT INTO Comment
VALUES (1712, 327, '漂亮', 1);
INSERT INTO Comment
VALUES (1713, 327, '丝滑', 1);
INSERT INTO Comment
VALUES (1714, 327, '不拔干', 1);
INSERT INTO Comment
VALUES (1715, 328, '不拔干', 4);
INSERT INTO Comment
VALUES (1716, 328, '滋润', 4);
INSERT INTO Comment
VALUES (1717, 328, '美', 3);
INSERT INTO Comment
VALUES (1718, 328, '漂亮', 3);
INSERT INTO Comment
VALUES (1719, 328, '不错', 3);
INSERT INTO Comment
VALUES (1720, 328, '哑光', 3);
INSERT INTO Comment
VALUES (1721, 328, '推荐', 2);
INSERT INTO Comment
VALUES (1722, 329, '不拔干', 5);
INSERT INTO Comment
VALUES (1723, 329, '很好', 4);
INSERT INTO Comment
VALUES (1724, 329, '不错', 4);
INSERT INTO Comment
VALUES (1725, 329, '高级', 3);
INSERT INTO Comment
VALUES (1726, 329, '滋润', 3);
INSERT INTO Comment
VALUES (1727, 329, '哑光', 3);
INSERT INTO Comment
VALUES (1728, 329, '不挑肤色', 2);
INSERT INTO Comment
VALUES (1729, 330, '正红色', 3);
INSERT INTO Comment
VALUES (1730, 330, '滋润', 2);
INSERT INTO Comment
VALUES (1731, 330, '精致', 2);
INSERT INTO Comment
VALUES (1732, 330, '优雅', 2);
INSERT INTO Comment
VALUES (1733, 330, '显白', 2);
INSERT INTO Comment
VALUES (1734, 330, '美', 2);
INSERT INTO Comment
VALUES (1735, 330, '日常', 2);
INSERT INTO Comment
VALUES (1736, 331, '很好', 8);
INSERT INTO Comment
VALUES (1737, 331, '不错', 3);
INSERT INTO Comment
VALUES (1738, 331, '高级', 2);
INSERT INTO Comment
VALUES (1739, 331, '滋润', 2);
INSERT INTO Comment
VALUES (1740, 331, '显白', 2);
INSERT INTO Comment
VALUES (1741, 331, '秋冬', 2);
INSERT INTO Comment
VALUES (1742, 331, '不干', 2);
INSERT INTO Comment
VALUES (1743, 332, '很好', 3);
INSERT INTO Comment
VALUES (1744, 332, '细管', 3);
INSERT INTO Comment
VALUES (1745, 332, '满意', 3);
INSERT INTO Comment
VALUES (1746, 332, '高级', 2);
INSERT INTO Comment
VALUES (1747, 332, '温柔', 2);
INSERT INTO Comment
VALUES (1748, 332, '美', 2);
INSERT INTO Comment
VALUES (1749, 332, '不错', 1);
INSERT INTO Comment
VALUES (1750, 333, '高级', 6);
INSERT INTO Comment
VALUES (1751, 333, '很好', 3);
INSERT INTO Comment
VALUES (1752, 333, '显气色', 3);
INSERT INTO Comment
VALUES (1753, 333, '橘色', 2);
INSERT INTO Comment
VALUES (1754, 333, '滋润', 2);
INSERT INTO Comment
VALUES (1755, 333, '不错', 2);
INSERT INTO Comment
VALUES (1756, 333, '哑光', 2);
INSERT INTO Comment
VALUES (1757, 334, '滋润', 3);
INSERT INTO Comment
VALUES (1758, 334, '显白', 3);
INSERT INTO Comment
VALUES (1759, 334, '丝滑', 2);
INSERT INTO Comment
VALUES (1760, 334, '高级', 2);
INSERT INTO Comment
VALUES (1761, 334, '很好', 2);
INSERT INTO Comment
VALUES (1762, 334, '春夏', 2);
INSERT INTO Comment
VALUES (1763, 334, '持久', 2);
INSERT INTO Comment
VALUES (1764, 335, '高级', 4);
INSERT INTO Comment
VALUES (1765, 335, '精致', 3);
INSERT INTO Comment
VALUES (1766, 335, '有质感', 2);
INSERT INTO Comment
VALUES (1767, 335, '不拔干', 2);
INSERT INTO Comment
VALUES (1768, 335, '丝滑', 2);
INSERT INTO Comment
VALUES (1769, 335, '显白', 2);
INSERT INTO Comment
VALUES (1770, 335, '很好', 2);
INSERT INTO Comment
VALUES (1771, 336, '不错', 5);
INSERT INTO Comment
VALUES (1772, 336, '满意', 4);
INSERT INTO Comment
VALUES (1773, 336, '滋润', 3);
INSERT INTO Comment
VALUES (1774, 336, '丝绒', 2);
INSERT INTO Comment
VALUES (1775, 336, '日常', 2);
INSERT INTO Comment
VALUES (1776, 336, '不拔干', 2);
INSERT INTO Comment
VALUES (1777, 336, '不会拔干', 2);
INSERT INTO Comment
VALUES (1778, 337, '很好', 6);
INSERT INTO Comment
VALUES (1779, 337, '不错', 5);
INSERT INTO Comment
VALUES (1780, 337, '高级', 3);
INSERT INTO Comment
VALUES (1781, 337, '推荐', 1);
INSERT INTO Comment
VALUES (1782, 337, '秋冬', 1);
INSERT INTO Comment
VALUES (1783, 337, '巧克力味', 1);
INSERT INTO Comment
VALUES (1784, 337, '值得', 1);
INSERT INTO Comment
VALUES (1785, 338, '精致', 5);
INSERT INTO Comment
VALUES (1786, 338, '高级', 4);
INSERT INTO Comment
VALUES (1787, 338, '满分', 3);
INSERT INTO Comment
VALUES (1788, 338, '温柔', 2);
INSERT INTO Comment
VALUES (1789, 338, '绝美', 2);
INSERT INTO Comment
VALUES (1790, 338, '推荐', 2);
INSERT INTO Comment
VALUES (1791, 338, '滋润', 2);
INSERT INTO Comment
VALUES (1792, 339, '高级', 4);
INSERT INTO Comment
VALUES (1793, 339, '精致', 3);
INSERT INTO Comment
VALUES (1794, 339, '显白', 3);
INSERT INTO Comment
VALUES (1795, 339, '便宜', 2);
INSERT INTO Comment
VALUES (1796, 339, '推荐', 2);
INSERT INTO Comment
VALUES (1797, 339, '不拔干', 2);
INSERT INTO Comment
VALUES (1798, 339, '颜色正', 2);
INSERT INTO Comment
VALUES (1799, 340, '很好', 6);
INSERT INTO Comment
VALUES (1800, 340, '水光', 4);
INSERT INTO Comment
VALUES (1801, 340, '日常', 3);
INSERT INTO Comment
VALUES (1802, 340, '不错', 3);
INSERT INTO Comment
VALUES (1803, 340, '保湿', 2);
INSERT INTO Comment
VALUES (1804, 340, '裸色', 2);
INSERT INTO Comment
VALUES (1805, 340, '镜面', 2);
INSERT INTO Comment
VALUES (1806, 341, '日常', 7);
INSERT INTO Comment
VALUES (1807, 341, '很好', 6);
INSERT INTO Comment
VALUES (1808, 341, '橘调', 4);
INSERT INTO Comment
VALUES (1809, 341, '持久', 4);
INSERT INTO Comment
VALUES (1810, 341, '水光', 3);
INSERT INTO Comment
VALUES (1811, 341, '满意', 3);
INSERT INTO Comment
VALUES (1812, 341, '可爱', 3);
INSERT INTO Comment
VALUES (1813, 342, '轻薄', 4);
INSERT INTO Comment
VALUES (1814, 342, '日常', 4);
INSERT INTO Comment
VALUES (1815, 342, '很好', 4);
INSERT INTO Comment
VALUES (1816, 342, '不粘腻', 3);
INSERT INTO Comment
VALUES (1817, 342, '划算', 3);
INSERT INTO Comment
VALUES (1818, 342, '显白', 3);
INSERT INTO Comment
VALUES (1819, 342, '持久', 2);
INSERT INTO Comment
VALUES (1820, 343, '日常', 5);
INSERT INTO Comment
VALUES (1821, 343, '不错', 4);
INSERT INTO Comment
VALUES (1822, 343, '推荐', 3);
INSERT INTO Comment
VALUES (1823, 343, '高级', 2);
INSERT INTO Comment
VALUES (1824, 343, '很好', 2);
INSERT INTO Comment
VALUES (1825, 343, '持久', 2);
INSERT INTO Comment
VALUES (1826, 343, '满意', 2);
INSERT INTO Comment
VALUES (1827, 344, '轻薄', 4);
INSERT INTO Comment
VALUES (1828, 344, '很好', 4);
INSERT INTO Comment
VALUES (1829, 344, '滋润', 4);
INSERT INTO Comment
VALUES (1830, 344, '水润', 3);
INSERT INTO Comment
VALUES (1831, 344, '自然', 2);
INSERT INTO Comment
VALUES (1832, 344, '不错', 2);
INSERT INTO Comment
VALUES (1833, 344, '润唇膏', 2);
INSERT INTO Comment
VALUES (1834, 345, '很好', 5);
INSERT INTO Comment
VALUES (1835, 345, '不错', 5);
INSERT INTO Comment
VALUES (1836, 345, '轻薄', 4);
INSERT INTO Comment
VALUES (1837, 345, '细闪', 4);
INSERT INTO Comment
VALUES (1838, 345, '持久', 4);
INSERT INTO Comment
VALUES (1839, 345, '不干', 3);
INSERT INTO Comment
VALUES (1840, 345, '有质感', 2);
INSERT INTO Comment
VALUES (1841, 346, '很好', 3);
INSERT INTO Comment
VALUES (1842, 346, '显白', 3);
INSERT INTO Comment
VALUES (1843, 346, '轻薄', 2);
INSERT INTO Comment
VALUES (1844, 346, '细闪', 2);
INSERT INTO Comment
VALUES (1845, 346, '水润', 2);
INSERT INTO Comment
VALUES (1846, 346, '推荐', 2);
INSERT INTO Comment
VALUES (1847, 346, '满意', 2);
INSERT INTO Comment
VALUES (1848, 347, '细闪', 8);
INSERT INTO Comment
VALUES (1849, 347, '水润', 2);
INSERT INTO Comment
VALUES (1850, 347, '日常', 2);
INSERT INTO Comment
VALUES (1851, 347, '水光', 2);
INSERT INTO Comment
VALUES (1852, 347, '不错', 2);
INSERT INTO Comment
VALUES (1853, 347, '渐变', 1);
INSERT INTO Comment
VALUES (1854, 347, '高级', 1);
INSERT INTO Comment
VALUES (1855, 348, '持久', 4);
INSERT INTO Comment
VALUES (1856, 348, '很好', 4);
INSERT INTO Comment
VALUES (1857, 348, '好闻', 3);
INSERT INTO Comment
VALUES (1858, 348, '满意', 3);
INSERT INTO Comment
VALUES (1859, 348, '值得', 2);
INSERT INTO Comment
VALUES (1860, 348, '不错', 2);
INSERT INTO Comment
VALUES (1861, 348, '日常', 1);
INSERT INTO Comment
VALUES (1862, 349, '咖啡', 3);
INSERT INTO Comment
VALUES (1863, 349, '猩红', 2);
INSERT INTO Comment
VALUES (1864, 349, '镜面', 2);
INSERT INTO Comment
VALUES (1865, 349, '很好', 2);
INSERT INTO Comment
VALUES (1866, 349, '气质', 2);
INSERT INTO Comment
VALUES (1867, 349, '划算', 2);
INSERT INTO Comment
VALUES (1868, 349, '国货', 2);
INSERT INTO Comment
VALUES (1869, 350, '满意', 4);
INSERT INTO Comment
VALUES (1870, 350, '显白', 3);
INSERT INTO Comment
VALUES (1871, 350, '镜面', 2);
INSERT INTO Comment
VALUES (1872, 350, '很好', 2);
INSERT INTO Comment
VALUES (1873, 350, '猩红', 2);
INSERT INTO Comment
VALUES (1874, 350, '性价比高', 1);
INSERT INTO Comment
VALUES (1875, 350, '便宜', 1);
INSERT INTO Comment
VALUES (1876, 351, '滋润', 4);
INSERT INTO Comment
VALUES (1877, 351, '高级', 3);
INSERT INTO Comment
VALUES (1878, 351, '不错', 3);
INSERT INTO Comment
VALUES (1879, 351, '显白', 2);
INSERT INTO Comment
VALUES (1880, 351, '温柔', 2);
INSERT INTO Comment
VALUES (1881, 351, '日常', 2);
INSERT INTO Comment
VALUES (1882, 351, '推荐', 2);
INSERT INTO Comment
VALUES (1883, 352, '不干', 3);
INSERT INTO Comment
VALUES (1884, 352, '很好', 3);
INSERT INTO Comment
VALUES (1885, 352, '保湿', 2);
INSERT INTO Comment
VALUES (1886, 352, '不错', 2);
INSERT INTO Comment
VALUES (1887, 352, '显白', 2);
INSERT INTO Comment
VALUES (1888, 352, '满意', 1);
INSERT INTO Comment
VALUES (1889, 352, '不沾杯', 1);
INSERT INTO Comment
VALUES (1890, 353, '滋润', 10);
INSERT INTO Comment
VALUES (1891, 353, '很好', 3);
INSERT INTO Comment
VALUES (1892, 353, '丝滑', 3);
INSERT INTO Comment
VALUES (1893, 353, '持久', 3);
INSERT INTO Comment
VALUES (1894, 353, '大气', 3);
INSERT INTO Comment
VALUES (1895, 353, '上档次', 3);
INSERT INTO Comment
VALUES (1896, 353, '推荐', 2);
INSERT INTO Comment
VALUES (1897, 354, '不错', 4);
INSERT INTO Comment
VALUES (1898, 354, '滋润', 3);
INSERT INTO Comment
VALUES (1899, 354, '显白', 3);
INSERT INTO Comment
VALUES (1900, 354, '持久', 3);
INSERT INTO Comment
VALUES (1901, 354, '上档次', 2);
INSERT INTO Comment
VALUES (1902, 354, '好闻', 2);
INSERT INTO Comment
VALUES (1903, 354, '百搭', 2);
INSERT INTO Comment
VALUES (1904, 355, '滋润', 5);
INSERT INTO Comment
VALUES (1905, 355, '高级', 2);
INSERT INTO Comment
VALUES (1906, 355, '巧克力味', 2);
INSERT INTO Comment
VALUES (1907, 355, '漂亮', 2);
INSERT INTO Comment
VALUES (1908, 355, '上档次', 2);
INSERT INTO Comment
VALUES (1909, 355, '补水', 2);
INSERT INTO Comment
VALUES (1910, 355, '保湿', 2);
INSERT INTO Comment
VALUES (1911, 356, '很好', 10);
INSERT INTO Comment
VALUES (1912, 356, '不错', 4);
INSERT INTO Comment
VALUES (1913, 356, '推荐', 3);
INSERT INTO Comment
VALUES (1914, 356, '满意', 2);
INSERT INTO Comment
VALUES (1915, 356, '划算', 2);
INSERT INTO Comment
VALUES (1916, 356, '橘色', 2);
INSERT INTO Comment
VALUES (1917, 356, '显白', 2);
INSERT INTO Comment
VALUES (1918, 357, '滋润', 10);
INSERT INTO Comment
VALUES (1919, 357, '持久', 4);
INSERT INTO Comment
VALUES (1920, 357, '推荐', 3);
INSERT INTO Comment
VALUES (1921, 357, '豆沙色', 3);
INSERT INTO Comment
VALUES (1922, 357, '不错', 3);
INSERT INTO Comment
VALUES (1923, 357, '靓丽', 3);
INSERT INTO Comment
VALUES (1924, 357, '有质感', 2);
INSERT INTO Comment
VALUES (1925, 358, '滋润', 5);
INSERT INTO Comment
VALUES (1926, 358, '不错', 5);
INSERT INTO Comment
VALUES (1927, 358, '很好', 4);
INSERT INTO Comment
VALUES (1928, 358, '漂亮', 3);
INSERT INTO Comment
VALUES (1929, 358, '国货', 3);
INSERT INTO Comment
VALUES (1930, 358, '有质感', 3);
INSERT INTO Comment
VALUES (1931, 358, '自然', 3);
INSERT INTO Comment
VALUES (1932, 359, '显白', 5);
INSERT INTO Comment
VALUES (1933, 359, '不错', 5);
INSERT INTO Comment
VALUES (1934, 359, '滋润', 4);
INSERT INTO Comment
VALUES (1935, 359, '很好', 4);
INSERT INTO Comment
VALUES (1936, 359, '持久', 3);
INSERT INTO Comment
VALUES (1937, 359, '润唇膏', 2);
INSERT INTO Comment
VALUES (1938, 359, '划算', 2);
INSERT INTO Comment
VALUES (1939, 360, '很好', 7);
INSERT INTO Comment
VALUES (1940, 360, '显白', 5);
INSERT INTO Comment
VALUES (1941, 360, '有质感', 5);
INSERT INTO Comment
VALUES (1942, 360, '不错', 4);
INSERT INTO Comment
VALUES (1943, 360, '不拔干', 4);
INSERT INTO Comment
VALUES (1944, 360, '持久', 4);
INSERT INTO Comment
VALUES (1945, 360, '滋润', 4);
INSERT INTO Comment
VALUES (1946, 361, '巧克力味', 3);
INSERT INTO Comment
VALUES (1947, 361, '日常', 3);
INSERT INTO Comment
VALUES (1948, 361, '气质', 3);
INSERT INTO Comment
VALUES (1949, 361, '有质感', 3);
INSERT INTO Comment
VALUES (1950, 361, '哑光', 2);
INSERT INTO Comment
VALUES (1951, 361, '焦糖色', 2);
INSERT INTO Comment
VALUES (1952, 361, '颜色很正', 2);
INSERT INTO Comment
VALUES (1953, 362, '显白', 5);
INSERT INTO Comment
VALUES (1954, 362, '有质感', 4);
INSERT INTO Comment
VALUES (1955, 362, '满意', 4);
INSERT INTO Comment
VALUES (1956, 362, '胡萝卜色', 4);
INSERT INTO Comment
VALUES (1957, 362, '哑光', 3);
INSERT INTO Comment
VALUES (1958, 362, '持久', 3);
INSERT INTO Comment
VALUES (1959, 362, '很好', 2);
INSERT INTO Comment
VALUES (1960, 363, '持久', 4);
INSERT INTO Comment
VALUES (1961, 363, '有质感', 3);
INSERT INTO Comment
VALUES (1962, 363, '不沾杯', 3);
INSERT INTO Comment
VALUES (1963, 363, '牛血色', 2);
INSERT INTO Comment
VALUES (1964, 363, '滋润', 2);
INSERT INTO Comment
VALUES (1965, 363, '巧克力味', 2);
INSERT INTO Comment
VALUES (1966, 363, '顺滑', 2);
INSERT INTO Comment
VALUES (1967, 364, '持久', 4);
INSERT INTO Comment
VALUES (1968, 364, '丝绒', 2);
INSERT INTO Comment
VALUES (1969, 364, '雾面', 2);
INSERT INTO Comment
VALUES (1970, 364, '好闻', 2);
INSERT INTO Comment
VALUES (1971, 364, '有质感', 2);
INSERT INTO Comment
VALUES (1972, 364, '哑光', 2);
INSERT INTO Comment
VALUES (1973, 364, '苹果红', 2);
INSERT INTO Comment
VALUES (1974, 365, '有质感', 4);
INSERT INTO Comment
VALUES (1975, 365, '显白', 4);
INSERT INTO Comment
VALUES (1976, 365, '滋润', 4);
INSERT INTO Comment
VALUES (1977, 365, '气质', 3);
INSERT INTO Comment
VALUES (1978, 365, '不错', 3);
INSERT INTO Comment
VALUES (1979, 365, '推荐', 3);
INSERT INTO Comment
VALUES (1980, 365, '便宜', 1);
INSERT INTO Comment
VALUES (1981, 366, '滋润', 6);
INSERT INTO Comment
VALUES (1982, 366, '很好', 5);
INSERT INTO Comment
VALUES (1983, 366, '显白', 4);
INSERT INTO Comment
VALUES (1984, 366, '持久', 4);
INSERT INTO Comment
VALUES (1985, 366, '不错', 4);
INSERT INTO Comment
VALUES (1986, 366, '高级', 3);
INSERT INTO Comment
VALUES (1987, 366, '满意', 2);
INSERT INTO Comment
VALUES (1988, 367, '不错', 6);
INSERT INTO Comment
VALUES (1989, 367, '滋润', 4);
INSERT INTO Comment
VALUES (1990, 367, '值得', 2);
INSERT INTO Comment
VALUES (1991, 367, '有质感', 2);
INSERT INTO Comment
VALUES (1992, 367, '很好', 2);
INSERT INTO Comment
VALUES (1993, 367, '大气', 1);
INSERT INTO Comment
VALUES (1994, 367, '漂亮', 1);
INSERT INTO Comment
VALUES (1995, 368, '滋润', 5);
INSERT INTO Comment
VALUES (1996, 368, '显白', 4);
INSERT INTO Comment
VALUES (1997, 368, '很好', 3);
INSERT INTO Comment
VALUES (1998, 368, '有质感', 3);
INSERT INTO Comment
VALUES (1999, 368, '推荐', 3);
INSERT INTO Comment
VALUES (2000, 368, '不干', 3);
INSERT INTO Comment
VALUES (2001, 368, '持久', 1);
INSERT INTO Comment
VALUES (2002, 369, '满意', 3);
INSERT INTO Comment
VALUES (2003, 369, '很好', 3);
INSERT INTO Comment
VALUES (2004, 369, '滋润', 3);
INSERT INTO Comment
VALUES (2005, 369, '好用', 2);
INSERT INTO Comment
VALUES (2006, 369, '有质感', 2);
INSERT INTO Comment
VALUES (2007, 369, '不错', 2);
INSERT INTO Comment
VALUES (2008, 369, '国货', 1);
INSERT INTO Comment
VALUES (2009, 370, '滋润', 6);
INSERT INTO Comment
VALUES (2010, 370, '很好', 4);
INSERT INTO Comment
VALUES (2011, 370, '不干', 3);
INSERT INTO Comment
VALUES (2012, 370, '温柔', 3);
INSERT INTO Comment
VALUES (2013, 370, '不错', 3);
INSERT INTO Comment
VALUES (2014, 370, '日常', 3);
INSERT INTO Comment
VALUES (2015, 370, '高级', 2);
INSERT INTO Comment
VALUES (2016, 371, '有质感', 5);
INSERT INTO Comment
VALUES (2017, 371, '日常', 4);
INSERT INTO Comment
VALUES (2018, 371, '划算', 3);
INSERT INTO Comment
VALUES (2019, 371, '滋润', 2);
INSERT INTO Comment
VALUES (2020, 371, '上档次', 2);
INSERT INTO Comment
VALUES (2021, 371, '水润', 2);
INSERT INTO Comment
VALUES (2022, 371, '不粘腻', 1);
INSERT INTO Comment
VALUES (2023, 372, '很好', 4);
INSERT INTO Comment
VALUES (2024, 372, '哑光', 3);
INSERT INTO Comment
VALUES (2025, 372, '润唇膏', 3);
INSERT INTO Comment
VALUES (2026, 372, '显白', 3);
INSERT INTO Comment
VALUES (2027, 372, '不挑肤色', 3);
INSERT INTO Comment
VALUES (2028, 372, '不干', 3);
INSERT INTO Comment
VALUES (2029, 372, '高级', 2);
INSERT INTO Comment
VALUES (2030, 373, '滋润', 8);
INSERT INTO Comment
VALUES (2031, 373, '不错', 7);
INSERT INTO Comment
VALUES (2032, 373, '持久', 4);
INSERT INTO Comment
VALUES (2033, 373, '显白', 4);
INSERT INTO Comment
VALUES (2034, 373, '好用', 3);
INSERT INTO Comment
VALUES (2035, 373, '很好', 3);
INSERT INTO Comment
VALUES (2036, 373, '哑光', 3);
INSERT INTO Comment
VALUES (2037, 374, '一般', 4);
INSERT INTO Comment
VALUES (2038, 374, '很好', 3);
INSERT INTO Comment
VALUES (2039, 374, '日常', 2);
INSERT INTO Comment
VALUES (2040, 374, '滋润', 2);
INSERT INTO Comment
VALUES (2041, 374, '不错', 2);
INSERT INTO Comment
VALUES (2042, 374, '平价', 2);
INSERT INTO Comment
VALUES (2043, 374, '值得', 2);
INSERT INTO Comment
VALUES (2044, 375, '很好', 4);
INSERT INTO Comment
VALUES (2045, 375, '滋润', 3);
INSERT INTO Comment
VALUES (2046, 375, '润唇膏', 3);
INSERT INTO Comment
VALUES (2047, 375, '显白', 2);
INSERT INTO Comment
VALUES (2048, 375, '国产', 2);
INSERT INTO Comment
VALUES (2049, 375, '值得', 2);
INSERT INTO Comment
VALUES (2050, 375, '不拔干', 2);
INSERT INTO Comment
VALUES (2051, 376, '豆沙色', 3);
INSERT INTO Comment
VALUES (2052, 376, '有质感', 3);
INSERT INTO Comment
VALUES (2053, 376, '哑光', 3);
INSERT INTO Comment
VALUES (2054, 376, '自然', 3);
INSERT INTO Comment
VALUES (2055, 376, '持久', 2);
INSERT INTO Comment
VALUES (2056, 376, '推荐', 2);
INSERT INTO Comment
VALUES (2057, 376, '日常', 2);
INSERT INTO Comment
VALUES (2058, 377, '不错', 4);
INSERT INTO Comment
VALUES (2059, 377, '持久', 3);
INSERT INTO Comment
VALUES (2060, 377, '给力', 2);
INSERT INTO Comment
VALUES (2061, 377, '值得', 2);
INSERT INTO Comment
VALUES (2062, 377, '经典', 2);
INSERT INTO Comment
VALUES (2063, 377, '性价比高', 2);
INSERT INTO Comment
VALUES (2064, 377, '很好', 2);
INSERT INTO Comment
VALUES (2065, 378, '不错', 5);
INSERT INTO Comment
VALUES (2066, 378, '显白', 3);
INSERT INTO Comment
VALUES (2067, 378, '高级', 3);
INSERT INTO Comment
VALUES (2068, 378, '满意', 2);
INSERT INTO Comment
VALUES (2069, 378, '有质感', 2);
INSERT INTO Comment
VALUES (2070, 378, '细闪', 2);
INSERT INTO Comment
VALUES (2071, 378, '值得', 1);
INSERT INTO Comment
VALUES (2072, 379, '丝滑', 3);
INSERT INTO Comment
VALUES (2073, 379, '哑光', 3);
INSERT INTO Comment
VALUES (2074, 379, '自然', 3);
INSERT INTO Comment
VALUES (2075, 379, '满意', 3);
INSERT INTO Comment
VALUES (2076, 379, '很好', 2);
INSERT INTO Comment
VALUES (2077, 379, '有质感', 2);
INSERT INTO Comment
VALUES (2078, 379, '大气', 2);
INSERT INTO Comment
VALUES (2079, 380, '有质感', 5);
INSERT INTO Comment
VALUES (2080, 380, '哑光', 4);
INSERT INTO Comment
VALUES (2081, 380, '国货', 4);
INSERT INTO Comment
VALUES (2082, 380, '高级', 3);
INSERT INTO Comment
VALUES (2083, 380, '给力', 3);
INSERT INTO Comment
VALUES (2084, 380, '雾面', 3);
INSERT INTO Comment
VALUES (2085, 380, '持久', 2);
INSERT INTO Comment
VALUES (2086, 381, '很好', 4);
INSERT INTO Comment
VALUES (2087, 381, '好用', 4);
INSERT INTO Comment
VALUES (2088, 381, '平价', 3);
INSERT INTO Comment
VALUES (2089, 381, '漂亮', 3);
INSERT INTO Comment
VALUES (2090, 381, '持久', 3);
INSERT INTO Comment
VALUES (2091, 381, '滋润', 3);
INSERT INTO Comment
VALUES (2092, 381, '百搭', 3);
INSERT INTO Comment
VALUES (2093, 382, '滋润', 5);
INSERT INTO Comment
VALUES (2094, 382, '很好', 3);
INSERT INTO Comment
VALUES (2095, 382, '哑光', 3);
INSERT INTO Comment
VALUES (2096, 382, '不干', 3);
INSERT INTO Comment
VALUES (2097, 382, '持久', 3);
INSERT INTO Comment
VALUES (2098, 382, '自然', 2);
INSERT INTO Comment
VALUES (2099, 382, '值得', 2);
INSERT INTO Comment
VALUES (2100, 383, '哑光', 9);
INSERT INTO Comment
VALUES (2101, 383, '高级', 4);
INSERT INTO Comment
VALUES (2102, 383, '显白', 3);
INSERT INTO Comment
VALUES (2103, 383, '滋润', 3);
INSERT INTO Comment
VALUES (2104, 383, '不拔干', 3);
INSERT INTO Comment
VALUES (2105, 383, '满意', 3);
INSERT INTO Comment
VALUES (2106, 383, '不错', 3);
INSERT INTO Comment
VALUES (2107, 384, '国货', 4);
INSERT INTO Comment
VALUES (2108, 384, '滋润', 4);
INSERT INTO Comment
VALUES (2109, 384, '哑光', 4);
INSERT INTO Comment
VALUES (2110, 384, '不拔干', 3);
INSERT INTO Comment
VALUES (2111, 384, '有质感', 3);
INSERT INTO Comment
VALUES (2112, 384, '漂亮', 2);
INSERT INTO Comment
VALUES (2113, 384, '大气', 2);
INSERT INTO Comment
VALUES (2114, 385, '滋润', 4);
INSERT INTO Comment
VALUES (2115, 385, '不错', 3);
INSERT INTO Comment
VALUES (2116, 385, '显白', 3);
INSERT INTO Comment
VALUES (2117, 385, '很好', 3);
INSERT INTO Comment
VALUES (2118, 385, '推荐', 2);
INSERT INTO Comment
VALUES (2119, 385, '有质感', 2);
INSERT INTO Comment
VALUES (2120, 385, '平价', 1);
INSERT INTO Comment
VALUES (2121, 386, '番茄', 3);
INSERT INTO Comment
VALUES (2122, 386, '水润', 3);
INSERT INTO Comment
VALUES (2123, 386, '不拔干', 2);
INSERT INTO Comment
VALUES (2124, 386, '哑光', 2);
INSERT INTO Comment
VALUES (2125, 386, '滋润', 2);
INSERT INTO Comment
VALUES (2126, 386, '推荐', 1);
INSERT INTO Comment
VALUES (2127, 386, '气质', 1);
INSERT INTO Comment
VALUES (2128, 387, '滋润', 11);
INSERT INTO Comment
VALUES (2129, 387, '日常', 4);
INSERT INTO Comment
VALUES (2130, 387, '不错', 4);
INSERT INTO Comment
VALUES (2131, 387, '秋冬', 2);
INSERT INTO Comment
VALUES (2132, 387, '显白', 2);
INSERT INTO Comment
VALUES (2133, 387, '持久', 2);
INSERT INTO Comment
VALUES (2134, 387, '划算', 2);
INSERT INTO Comment
VALUES (2135, 388, '显白', 8);
INSERT INTO Comment
VALUES (2136, 388, '持久', 7);
INSERT INTO Comment
VALUES (2137, 388, '很好', 3);
INSERT INTO Comment
VALUES (2138, 388, '大气', 3);
INSERT INTO Comment
VALUES (2139, 388, '哑光', 3);
INSERT INTO Comment
VALUES (2140, 388, '顺滑', 3);
INSERT INTO Comment
VALUES (2141, 388, '俄罗斯红', 3);
INSERT INTO Comment
VALUES (2142, 389, '秋冬', 2);
INSERT INTO Comment
VALUES (2143, 389, '日常', 2);
INSERT INTO Comment
VALUES (2144, 389, '不错', 2);
INSERT INTO Comment
VALUES (2145, 389, '哑光', 2);
INSERT INTO Comment
VALUES (2146, 389, '值得', 1);
INSERT INTO Comment
VALUES (2147, 389, '春夏', 1);
INSERT INTO Comment
VALUES (2148, 389, '滋润', 1);
INSERT INTO Comment
VALUES (2149, 390, '很好', 3);
INSERT INTO Comment
VALUES (2150, 390, '持久', 3);
INSERT INTO Comment
VALUES (2151, 390, '滋润', 2);
INSERT INTO Comment
VALUES (2152, 390, '不干', 2);
INSERT INTO Comment
VALUES (2153, 390, '推荐', 1);
INSERT INTO Comment
VALUES (2154, 390, '红色', 1);
INSERT INTO Comment
VALUES (2155, 390, '漂亮', 1);
INSERT INTO Comment
VALUES (2156, 391, '不错', 2);
INSERT INTO Comment
VALUES (2157, 391, '性价比高', 1);
INSERT INTO Comment
VALUES (2158, 391, '红色', 1);
INSERT INTO Comment
VALUES (2159, 391, '满意', 1);
INSERT INTO Comment
VALUES (2160, 391, '显气色', 1);
INSERT INTO Comment
VALUES (2161, 391, '限定色', 1);
INSERT INTO Comment
VALUES (2162, 391, '锦鲤红', 1);
INSERT INTO Comment
VALUES (2163, 392, '很好', 2);
INSERT INTO Comment
VALUES (2164, 392, '不错', 1);
INSERT INTO Comment
VALUES (2165, 392, '推荐', 1);
INSERT INTO Comment
VALUES (2166, 392, '上档次', 1);
INSERT INTO Comment
VALUES (2167, 392, '满意', 1);
INSERT INTO Comment
VALUES (2168, 392, '红色', 1);
INSERT INTO Comment
VALUES (2169, 392, '好用', 1);
INSERT INTO Comment
VALUES (2170, 393, '推荐', 2);
INSERT INTO Comment
VALUES (2171, 393, '很好', 2);
INSERT INTO Comment
VALUES (2172, 393, '不错', 2);
INSERT INTO Comment
VALUES (2173, 393, '不干', 2);
INSERT INTO Comment
VALUES (2174, 393, '顺滑', 2);
INSERT INTO Comment
VALUES (2175, 393, '别的', 2);
INSERT INTO Comment
VALUES (2176, 393, '哑光', 1);
INSERT INTO Comment
VALUES (2177, 394, '水润', 4);
INSERT INTO Comment
VALUES (2178, 394, '轻薄', 3);
INSERT INTO Comment
VALUES (2179, 394, '可爱', 2);
INSERT INTO Comment
VALUES (2180, 394, '哑光', 2);
INSERT INTO Comment
VALUES (2181, 394, '滋润', 2);
INSERT INTO Comment
VALUES (2182, 394, '持久', 2);
INSERT INTO Comment
VALUES (2183, 394, '小巧', 2);
INSERT INTO Comment
VALUES (2184, 395, '不错', 8);
INSERT INTO Comment
VALUES (2185, 395, '推荐', 6);
INSERT INTO Comment
VALUES (2186, 395, '值得', 4);
INSERT INTO Comment
VALUES (2187, 395, '很好', 3);
INSERT INTO Comment
VALUES (2188, 395, '不掉色', 3);
INSERT INTO Comment
VALUES (2189, 395, '自然', 3);
INSERT INTO Comment
VALUES (2190, 395, '显白', 3);
INSERT INTO Comment
VALUES (2191, 396, '很好', 4);
INSERT INTO Comment
VALUES (2192, 396, '胡萝卜色', 3);
INSERT INTO Comment
VALUES (2193, 396, '持久', 2);
INSERT INTO Comment
VALUES (2194, 396, '不错', 2);
INSERT INTO Comment
VALUES (2195, 396, '满意', 2);
INSERT INTO Comment
VALUES (2196, 396, '推荐', 2);
INSERT INTO Comment
VALUES (2197, 396, '精致', 1);
INSERT INTO Comment
VALUES (2198, 398, '哑光', 5);
INSERT INTO Comment
VALUES (2199, 398, '滋润', 4);
INSERT INTO Comment
VALUES (2200, 398, '秋冬', 3);
INSERT INTO Comment
VALUES (2201, 398, '好闻', 3);
INSERT INTO Comment
VALUES (2202, 398, '脏橘色', 3);
INSERT INTO Comment
VALUES (2203, 398, '很好', 3);
INSERT INTO Comment
VALUES (2204, 398, '不拔干', 2);
INSERT INTO Comment
VALUES (2205, 399, '推荐', 4);
INSERT INTO Comment
VALUES (2206, 399, '持久', 3);
INSERT INTO Comment
VALUES (2207, 399, '好闻', 3);
INSERT INTO Comment
VALUES (2208, 399, '轻薄', 2);
INSERT INTO Comment
VALUES (2209, 399, '水润', 2);
INSERT INTO Comment
VALUES (2210, 399, '不错', 2);
INSERT INTO Comment
VALUES (2211, 399, '温柔', 2);
INSERT INTO Comment
VALUES (2212, 400, '显白', 5);
INSERT INTO Comment
VALUES (2213, 400, '橘色', 3);
INSERT INTO Comment
VALUES (2214, 400, '值得', 3);
INSERT INTO Comment
VALUES (2215, 400, '可爱', 3);
INSERT INTO Comment
VALUES (2216, 400, '轻薄', 3);
INSERT INTO Comment
VALUES (2217, 400, '丝绒', 2);
INSERT INTO Comment
VALUES (2218, 400, '哑光', 2);
INSERT INTO Comment
VALUES (2219, 401, '持久', 6);
INSERT INTO Comment
VALUES (2220, 401, '显白', 6);
INSERT INTO Comment
VALUES (2221, 401, '推荐', 4);
INSERT INTO Comment
VALUES (2222, 401, '不错', 3);
INSERT INTO Comment
VALUES (2223, 401, '有质感', 3);
INSERT INTO Comment
VALUES (2224, 401, '哑光', 3);
INSERT INTO Comment
VALUES (2225, 401, '不拔干', 2);
INSERT INTO Comment
VALUES (2226, 402, '显白', 1);
INSERT INTO Comment
VALUES (2227, 402, '别的', 1);
INSERT INTO Comment
VALUES (2228, 403, '不错', 4);
INSERT INTO Comment
VALUES (2229, 403, '好闻', 4);
INSERT INTO Comment
VALUES (2230, 403, '保湿', 4);
INSERT INTO Comment
VALUES (2231, 403, '滋润', 4);
INSERT INTO Comment
VALUES (2232, 403, '持久', 2);
INSERT INTO Comment
VALUES (2233, 403, '漂亮', 2);
INSERT INTO Comment
VALUES (2234, 403, '樱桃色', 2);
INSERT INTO Comment
VALUES (2235, 404, '很好', 5);
INSERT INTO Comment
VALUES (2236, 404, '持久', 4);
INSERT INTO Comment
VALUES (2237, 404, '漂亮', 3);
INSERT INTO Comment
VALUES (2238, 404, '滋润', 3);
INSERT INTO Comment
VALUES (2239, 404, '水润', 2);
INSERT INTO Comment
VALUES (2240, 404, '颜色很正', 2);
INSERT INTO Comment
VALUES (2241, 404, '满意', 2);
INSERT INTO Comment
VALUES (2242, 405, '持久', 6);
INSERT INTO Comment
VALUES (2243, 405, '轻薄', 4);
INSERT INTO Comment
VALUES (2244, 405, '不错', 3);
INSERT INTO Comment
VALUES (2245, 405, '红色', 3);
INSERT INTO Comment
VALUES (2246, 405, '精致', 2);
INSERT INTO Comment
VALUES (2247, 405, '好闻', 2);
INSERT INTO Comment
VALUES (2248, 405, '很好', 2);
INSERT INTO Comment
VALUES (2249, 406, '水润', 4);
INSERT INTO Comment
VALUES (2250, 406, '显白', 3);
INSERT INTO Comment
VALUES (2251, 406, '滋润', 2);
INSERT INTO Comment
VALUES (2252, 406, '不错', 2);
INSERT INTO Comment
VALUES (2253, 406, '颜色很正', 2);
INSERT INTO Comment
VALUES (2254, 406, '不油腻', 1);
INSERT INTO Comment
VALUES (2255, 406, '不干', 1);
INSERT INTO Comment
VALUES (2256, 407, '不错', 2);
INSERT INTO Comment
VALUES (2257, 407, '南瓜色', 2);
INSERT INTO Comment
VALUES (2258, 407, '枫叶', 2);
INSERT INTO Comment
VALUES (2259, 407, '红色', 2);
INSERT INTO Comment
VALUES (2260, 407, '唇彩', 1);
INSERT INTO Comment
VALUES (2261, 407, '高级', 1);
INSERT INTO Comment
VALUES (2262, 407, '雾面', 1);
INSERT INTO Comment
VALUES (2263, 408, '滋润', 3);
INSERT INTO Comment
VALUES (2264, 408, '好用', 3);
INSERT INTO Comment
VALUES (2265, 408, '新款', 2);
INSERT INTO Comment
VALUES (2266, 408, '不错', 2);
INSERT INTO Comment
VALUES (2267, 408, '清香', 1);
INSERT INTO Comment
VALUES (2268, 408, '好闻', 1);
INSERT INTO Comment
VALUES (2269, 408, '红色', 1);
INSERT INTO Comment
VALUES (2270, 409, '日常', 1);
INSERT INTO Comment
VALUES (2271, 409, '显肤色', 1);
INSERT INTO Comment
VALUES (2272, 409, '元气', 1);
INSERT INTO Comment
VALUES (2273, 409, '很好', 1);
INSERT INTO Comment
VALUES (2274, 409, '橘色', 1);
INSERT INTO Comment
VALUES (2275, 409, '轻薄', 1);
INSERT INTO Comment
VALUES (2276, 409, '哑光', 1);
INSERT INTO Comment
VALUES (2277, 410, '不错', 3);
INSERT INTO Comment
VALUES (2278, 410, '少女', 1);
INSERT INTO Comment
VALUES (2279, 410, '便宜', 1);
INSERT INTO Comment
VALUES (2280, 410, '推荐', 1);
INSERT INTO Comment
VALUES (2281, 410, '满意', 1);
INSERT INTO Comment
VALUES (2282, 411, '很好', 4);
INSERT INTO Comment
VALUES (2283, 411, '颜色很正', 2);
INSERT INTO Comment
VALUES (2284, 411, '自然', 2);
INSERT INTO Comment
VALUES (2285, 411, '满意', 1);
INSERT INTO Comment
VALUES (2286, 411, '百搭', 1);
INSERT INTO Comment
VALUES (2287, 411, '赞', 1);
INSERT INTO Comment
VALUES (2288, 411, '滋润', 1);
INSERT INTO Comment
VALUES (2289, 412, '给力', 2);
INSERT INTO Comment
VALUES (2290, 412, '不错', 2);
INSERT INTO Comment
VALUES (2291, 412, '很好', 2);
INSERT INTO Comment
VALUES (2292, 412, '梅子色', 1);
INSERT INTO Comment
VALUES (2293, 412, '大气', 1);
INSERT INTO Comment
VALUES (2294, 412, '上档次', 1);
INSERT INTO Comment
VALUES (2295, 412, '性价比高', 1);
INSERT INTO Comment
VALUES (2296, 413, '滋润', 4);
INSERT INTO Comment
VALUES (2297, 413, '持久', 3);
INSERT INTO Comment
VALUES (2298, 413, '不错', 2);
INSERT INTO Comment
VALUES (2299, 413, '百搭', 1);
INSERT INTO Comment
VALUES (2300, 413, '雾面', 1);
INSERT INTO Comment
VALUES (2301, 413, '高档', 1);
INSERT INTO Comment
VALUES (2302, 413, '便宜', 1);
INSERT INTO Comment
VALUES (2303, 414, '不错', 4);
INSERT INTO Comment
VALUES (2304, 414, '滋润', 3);
INSERT INTO Comment
VALUES (2305, 414, '持久', 3);
INSERT INTO Comment
VALUES (2306, 414, '精致', 2);
INSERT INTO Comment
VALUES (2307, 414, '不拔干', 2);
INSERT INTO Comment
VALUES (2308, 414, '细闪', 2);
INSERT INTO Comment
VALUES (2309, 414, '浓郁', 1);
INSERT INTO Comment
VALUES (2310, 415, '很好', 5);
INSERT INTO Comment
VALUES (2311, 415, '漂亮', 4);
INSERT INTO Comment
VALUES (2312, 415, '靓丽', 2);
INSERT INTO Comment
VALUES (2313, 415, '值得', 2);
INSERT INTO Comment
VALUES (2314, 415, '车厘子色', 1);
INSERT INTO Comment
VALUES (2315, 415, '美', 1);
INSERT INTO Comment
VALUES (2316, 415, '大气', 1);
INSERT INTO Comment
VALUES (2317, 416, '滋润', 4);
INSERT INTO Comment
VALUES (2318, 416, '珊瑚色', 3);
INSERT INTO Comment
VALUES (2319, 416, '满意', 3);
INSERT INTO Comment
VALUES (2320, 416, '不错', 2);
INSERT INTO Comment
VALUES (2321, 416, '自然', 2);
INSERT INTO Comment
VALUES (2322, 416, '很好', 2);
INSERT INTO Comment
VALUES (2323, 416, '温柔', 2);
INSERT INTO Comment
VALUES (2324, 417, '不错', 7);
INSERT INTO Comment
VALUES (2325, 417, '很好', 5);
INSERT INTO Comment
VALUES (2326, 417, '满意', 5);
INSERT INTO Comment
VALUES (2327, 417, '漂亮', 3);
INSERT INTO Comment
VALUES (2328, 417, '显白', 2);
INSERT INTO Comment
VALUES (2329, 417, '滋润', 2);
INSERT INTO Comment
VALUES (2330, 417, '值得', 2);
INSERT INTO Comment
VALUES (2331, 418, '滋润', 11);
INSERT INTO Comment
VALUES (2332, 418, '美', 3);
INSERT INTO Comment
VALUES (2333, 418, '保湿', 2);
INSERT INTO Comment
VALUES (2334, 418, '漂亮', 2);
INSERT INTO Comment
VALUES (2335, 418, '有质感', 2);
INSERT INTO Comment
VALUES (2336, 418, '不错', 2);
INSERT INTO Comment
VALUES (2337, 418, '颜值很高', 1);
INSERT INTO Comment
VALUES (2338, 419, '滋润', 5);
INSERT INTO Comment
VALUES (2339, 419, '不错', 5);
INSERT INTO Comment
VALUES (2340, 419, '颜色很正', 2);
INSERT INTO Comment
VALUES (2341, 419, '不干', 2);
INSERT INTO Comment
VALUES (2342, 419, '推荐', 2);
INSERT INTO Comment
VALUES (2343, 419, '很好', 2);
INSERT INTO Comment
VALUES (2344, 419, '清新', 1);
INSERT INTO Comment
VALUES (2345, 420, '滋润', 9);
INSERT INTO Comment
VALUES (2346, 420, '显白', 6);
INSERT INTO Comment
VALUES (2347, 420, '持久', 3);
INSERT INTO Comment
VALUES (2348, 420, '不错', 3);
INSERT INTO Comment
VALUES (2349, 420, '血橙色', 2);
INSERT INTO Comment
VALUES (2350, 420, '橘色', 2);
INSERT INTO Comment
VALUES (2351, 420, '高级', 2);
INSERT INTO Comment
VALUES (2352, 421, '滋润', 3);
INSERT INTO Comment
VALUES (2353, 421, '满意', 2);
INSERT INTO Comment
VALUES (2354, 421, '显白', 2);
INSERT INTO Comment
VALUES (2355, 421, '持久', 2);
INSERT INTO Comment
VALUES (2356, 421, '气质', 1);
INSERT INTO Comment
VALUES (2357, 421, '平替', 1);
INSERT INTO Comment
VALUES (2358, 421, '春夏', 1);
INSERT INTO Comment
VALUES (2359, 422, '滋润', 6);
INSERT INTO Comment
VALUES (2360, 422, '显白', 4);
INSERT INTO Comment
VALUES (2361, 422, '满意', 4);
INSERT INTO Comment
VALUES (2362, 422, '橘色', 4);
INSERT INTO Comment
VALUES (2363, 422, '水润', 2);
INSERT INTO Comment
VALUES (2364, 422, '值得', 2);
INSERT INTO Comment
VALUES (2365, 422, '精致', 2);
INSERT INTO Comment
VALUES (2366, 423, '自然', 4);
INSERT INTO Comment
VALUES (2367, 423, '很好', 4);
INSERT INTO Comment
VALUES (2368, 423, '满意', 3);
INSERT INTO Comment
VALUES (2369, 423, '不错', 3);
INSERT INTO Comment
VALUES (2370, 423, '滋润', 2);
INSERT INTO Comment
VALUES (2371, 423, '不拔干', 2);
INSERT INTO Comment
VALUES (2372, 423, '气质', 1);
INSERT INTO Comment
VALUES (2373, 424, '滋润', 5);
INSERT INTO Comment
VALUES (2374, 424, '很好', 3);
INSERT INTO Comment
VALUES (2375, 424, '满意', 3);
INSERT INTO Comment
VALUES (2376, 424, '不错', 3);
INSERT INTO Comment
VALUES (2377, 424, '显白', 3);
INSERT INTO Comment
VALUES (2378, 424, '枫叶红', 3);
INSERT INTO Comment
VALUES (2379, 424, '百搭', 2);
INSERT INTO Comment
VALUES (2380, 425, '很好', 5);
INSERT INTO Comment
VALUES (2381, 425, '滋润', 5);
INSERT INTO Comment
VALUES (2382, 425, '很美', 2);
INSERT INTO Comment
VALUES (2383, 425, '红色', 2);
INSERT INTO Comment
VALUES (2384, 425, '大气', 2);
INSERT INTO Comment
VALUES (2385, 425, '有质感', 2);
INSERT INTO Comment
VALUES (2386, 425, '红棕色', 2);
INSERT INTO Comment
VALUES (2387, 426, '滋润', 5);
INSERT INTO Comment
VALUES (2388, 426, '便宜', 2);
INSERT INTO Comment
VALUES (2389, 426, '不错', 2);
INSERT INTO Comment
VALUES (2390, 426, '顺滑', 1);
INSERT INTO Comment
VALUES (2391, 426, '润唇膏', 1);
INSERT INTO Comment
VALUES (2392, 426, '精致', 1);
INSERT INTO Comment
VALUES (2393, 426, '满意', 1);
INSERT INTO Comment
VALUES (2394, 427, '很好', 4);
INSERT INTO Comment
VALUES (2395, 427, '不错', 3);
INSERT INTO Comment
VALUES (2396, 427, '奶茶色', 1);
INSERT INTO Comment
VALUES (2397, 427, '显肤色', 1);
INSERT INTO Comment
VALUES (2398, 427, '推荐', 1);
INSERT INTO Comment
VALUES (2399, 427, '优秀', 1);
INSERT INTO Comment
VALUES (2400, 427, '红色', 1);
INSERT INTO Comment
VALUES (2401, 428, '很好', 8);
INSERT INTO Comment
VALUES (2402, 428, '满意', 3);
INSERT INTO Comment
VALUES (2403, 428, '不错', 2);
INSERT INTO Comment
VALUES (2404, 428, '滋润', 2);
INSERT INTO Comment
VALUES (2405, 428, '红棕色', 1);
INSERT INTO Comment
VALUES (2406, 428, '奶茶色', 1);
INSERT INTO Comment
VALUES (2407, 428, '有质感', 1);
INSERT INTO Comment
VALUES (2408, 429, '高级', 5);
INSERT INTO Comment
VALUES (2409, 429, '滋润', 4);
INSERT INTO Comment
VALUES (2410, 429, '很好', 4);
INSERT INTO Comment
VALUES (2411, 429, '显白', 3);
INSERT INTO Comment
VALUES (2412, 429, '大气', 3);
INSERT INTO Comment
VALUES (2413, 429, '正红色', 2);
INSERT INTO Comment
VALUES (2414, 429, '有质感', 2);
INSERT INTO Comment
VALUES (2415, 430, '漂亮', 2);
INSERT INTO Comment
VALUES (2416, 430, '很好', 2);
INSERT INTO Comment
VALUES (2417, 430, '精致', 1);
INSERT INTO Comment
VALUES (2418, 430, '车厘子色', 1);
INSERT INTO Comment
VALUES (2419, 430, '雾面', 1);
INSERT INTO Comment
VALUES (2420, 430, '高级', 1);
INSERT INTO Comment
VALUES (2421, 430, '有质感', 1);
INSERT INTO Comment
VALUES (2422, 431, '很特别', 3);
INSERT INTO Comment
VALUES (2423, 431, '温柔', 3);
INSERT INTO Comment
VALUES (2424, 431, '精致', 1);
INSERT INTO Comment
VALUES (2425, 431, '顺滑', 1);
INSERT INTO Comment
VALUES (2426, 431, '带金闪', 1);
INSERT INTO Comment
VALUES (2427, 431, '显白', 1);
INSERT INTO Comment
VALUES (2428, 431, '不错', 1);
INSERT INTO Comment
VALUES (2429, 432, '很好', 6);
INSERT INTO Comment
VALUES (2430, 432, '赞', 3);
INSERT INTO Comment
VALUES (2431, 432, '漂亮', 2);
INSERT INTO Comment
VALUES (2432, 432, '不错', 2);
INSERT INTO Comment
VALUES (2433, 432, '饱满', 1);
INSERT INTO Comment
VALUES (2434, 432, '哑光', 1);
INSERT INTO Comment
VALUES (2435, 432, '不干', 1);
INSERT INTO Comment
VALUES (2436, 433, '豆沙色', 5);
INSERT INTO Comment
VALUES (2437, 433, '滋润', 3);
INSERT INTO Comment
VALUES (2438, 433, '很好', 3);
INSERT INTO Comment
VALUES (2439, 433, '温柔', 3);
INSERT INTO Comment
VALUES (2440, 433, '值得', 2);
INSERT INTO Comment
VALUES (2441, 433, '哑光', 2);
INSERT INTO Comment
VALUES (2442, 433, '百搭', 2);
INSERT INTO Comment
VALUES (2443, 443, '很好', 5);
INSERT INTO Comment
VALUES (2444, 443, '红色', 3);
INSERT INTO Comment
VALUES (2445, 443, '持久', 3);
INSERT INTO Comment
VALUES (2446, 443, '不错', 3);
INSERT INTO Comment
VALUES (2447, 443, '不干', 2);
INSERT INTO Comment
VALUES (2448, 443, '大气', 2);
INSERT INTO Comment
VALUES (2449, 443, '显白', 2);
INSERT INTO Comment
VALUES (2450, 436, '推荐', 5);
INSERT INTO Comment
VALUES (2451, 436, '滋润', 4);
INSERT INTO Comment
VALUES (2452, 436, '不干', 3);
INSERT INTO Comment
VALUES (2453, 436, '显白', 3);
INSERT INTO Comment
VALUES (2454, 436, '车厘子色', 2);
INSERT INTO Comment
VALUES (2455, 436, '颜色很正', 2);
INSERT INTO Comment
VALUES (2456, 436, '值得', 2);
INSERT INTO Comment
VALUES (2457, 437, '滋润', 6);
INSERT INTO Comment
VALUES (2458, 437, '显白', 2);
INSERT INTO Comment
VALUES (2459, 437, '持久', 2);
INSERT INTO Comment
VALUES (2460, 437, '不错', 2);
INSERT INTO Comment
VALUES (2461, 437, '推荐', 2);
INSERT INTO Comment
VALUES (2462, 437, '润唇膏', 1);
INSERT INTO Comment
VALUES (2463, 437, '活力', 1);
INSERT INTO Comment
VALUES (2464, 434, '很好', 3);
INSERT INTO Comment
VALUES (2465, 434, '不错', 2);
INSERT INTO Comment
VALUES (2466, 434, '滋润', 2);
INSERT INTO Comment
VALUES (2467, 434, '推荐', 1);
INSERT INTO Comment
VALUES (2468, 434, '很美', 1);
INSERT INTO Comment
VALUES (2469, 434, '值得', 1);
INSERT INTO Comment
VALUES (2470, 434, '持久', 1);
INSERT INTO Comment
VALUES (2471, 444, '不错', 4);
INSERT INTO Comment
VALUES (2472, 444, '不干', 1);
INSERT INTO Comment
VALUES (2473, 444, '滋润', 1);
INSERT INTO Comment
VALUES (2474, 445, '显白', 5);
INSERT INTO Comment
VALUES (2475, 445, '滋润', 4);
INSERT INTO Comment
VALUES (2476, 445, '很好', 3);
INSERT INTO Comment
VALUES (2477, 445, '不错', 3);
INSERT INTO Comment
VALUES (2478, 445, '高级', 2);
INSERT INTO Comment
VALUES (2479, 445, '满意', 2);
INSERT INTO Comment
VALUES (2480, 445, '不干', 2);
INSERT INTO Comment
VALUES (2481, 446, '丝绒', 7);
INSERT INTO Comment
VALUES (2482, 446, '滋润', 5);
INSERT INTO Comment
VALUES (2483, 446, '不拔干', 4);
INSERT INTO Comment
VALUES (2484, 446, '显白', 4);
INSERT INTO Comment
VALUES (2485, 446, '满意', 3);
INSERT INTO Comment
VALUES (2486, 446, '显气色', 3);
INSERT INTO Comment
VALUES (2487, 446, '红色', 2);
INSERT INTO Comment
VALUES (2488, 447, '很好', 4);
INSERT INTO Comment
VALUES (2489, 447, '不错', 3);
INSERT INTO Comment
VALUES (2490, 447, '丝绒', 2);
INSERT INTO Comment
VALUES (2491, 447, '滋润', 2);
INSERT INTO Comment
VALUES (2492, 447, '颜色很正', 2);
INSERT INTO Comment
VALUES (2493, 447, '有气场', 2);
INSERT INTO Comment
VALUES (2494, 447, '经典', 1);
INSERT INTO Comment
VALUES (2495, 438, '颜色很正', 3);
INSERT INTO Comment
VALUES (2496, 438, '不错', 3);
INSERT INTO Comment
VALUES (2497, 438, '满意', 2);
INSERT INTO Comment
VALUES (2498, 438, '很好', 2);
INSERT INTO Comment
VALUES (2499, 438, '值得', 2);
INSERT INTO Comment
VALUES (2500, 438, '蓝调正红', 1);
INSERT INTO Comment
VALUES (2501, 438, '优雅', 1);
INSERT INTO Comment
VALUES (2502, 440, '滋润', 4);
INSERT INTO Comment
VALUES (2503, 440, '持久', 3);
INSERT INTO Comment
VALUES (2504, 440, '润滑', 3);
INSERT INTO Comment
VALUES (2505, 440, '橘色', 2);
INSERT INTO Comment
VALUES (2506, 440, '少女', 2);
INSERT INTO Comment
VALUES (2507, 440, '很好', 2);
INSERT INTO Comment
VALUES (2508, 440, '西柚色', 2);
INSERT INTO Comment
VALUES (2509, 448, '丝绒', 17);
INSERT INTO Comment
VALUES (2510, 448, '高级', 5);
INSERT INTO Comment
VALUES (2511, 448, '气场', 4);
INSERT INTO Comment
VALUES (2512, 448, '很好', 3);
INSERT INTO Comment
VALUES (2513, 448, '有质感', 3);
INSERT INTO Comment
VALUES (2514, 448, '哑光', 3);
INSERT INTO Comment
VALUES (2515, 448, '显白', 3);
INSERT INTO Comment
VALUES (2516, 441, '很好', 4);
INSERT INTO Comment
VALUES (2517, 441, '哑光', 3);
INSERT INTO Comment
VALUES (2518, 441, '滋润', 3);
INSERT INTO Comment
VALUES (2519, 441, '有质感', 3);
INSERT INTO Comment
VALUES (2520, 441, '大气', 3);
INSERT INTO Comment
VALUES (2521, 441, '显白', 2);
INSERT INTO Comment
VALUES (2522, 441, '温柔', 2);
INSERT INTO Comment
VALUES (2523, 449, '滋润', 2);
INSERT INTO Comment
VALUES (2524, 449, '不错', 1);
INSERT INTO Comment
VALUES (2525, 449, '保湿', 1);
INSERT INTO Comment
VALUES (2526, 449, '好闻', 1);
INSERT INTO Comment
VALUES (2527, 449, '值得', 1);
INSERT INTO Comment
VALUES (2528, 449, '很好', 1);
INSERT INTO Comment
VALUES (2529, 450, '丝绒', 4);
INSERT INTO Comment
VALUES (2530, 450, '持久', 3);
INSERT INTO Comment
VALUES (2531, 450, '日常', 2);
INSERT INTO Comment
VALUES (2532, 450, '温柔', 2);
INSERT INTO Comment
VALUES (2533, 450, '不干', 2);
INSERT INTO Comment
VALUES (2534, 450, '优雅', 1);
INSERT INTO Comment
VALUES (2535, 450, '红色', 1);
INSERT INTO Comment
VALUES (2536, 451, '满意', 1);
INSERT INTO Comment
VALUES (2537, 451, '持久', 1);
INSERT INTO Comment
VALUES (2538, 435, '粉色', 7);
INSERT INTO Comment
VALUES (2539, 435, '滋润', 5);
INSERT INTO Comment
VALUES (2540, 435, '不错', 3);
INSERT INTO Comment
VALUES (2541, 435, '很好', 2);
INSERT INTO Comment
VALUES (2542, 435, '有质感', 2);
INSERT INTO Comment
VALUES (2543, 435, '润唇膏', 2);
INSERT INTO Comment
VALUES (2544, 435, '自然', 1);
INSERT INTO Comment
VALUES (2545, 452, '满意', 4);
INSERT INTO Comment
VALUES (2546, 452, '自然', 3);
INSERT INTO Comment
VALUES (2547, 452, '润唇膏', 2);
INSERT INTO Comment
VALUES (2548, 452, '水润', 2);
INSERT INTO Comment
VALUES (2549, 452, '很好', 2);
INSERT INTO Comment
VALUES (2550, 452, '一般', 2);
INSERT INTO Comment
VALUES (2551, 452, '滋润', 1);
INSERT INTO Comment
VALUES (2552, 453, '润唇膏', 6);
INSERT INTO Comment
VALUES (2553, 453, '润滑', 4);
INSERT INTO Comment
VALUES (2554, 453, '滋润', 4);
INSERT INTO Comment
VALUES (2555, 453, '自然', 3);
INSERT INTO Comment
VALUES (2556, 453, '推荐', 2);
INSERT INTO Comment
VALUES (2557, 453, '很好', 2);
INSERT INTO Comment
VALUES (2558, 453, '保湿', 2);
INSERT INTO Comment
VALUES (2559, 454, '很好', 6);
INSERT INTO Comment
VALUES (2560, 454, '滋润', 4);
INSERT INTO Comment
VALUES (2561, 454, '护唇膏', 2);
INSERT INTO Comment
VALUES (2562, 454, '粉色', 2);
INSERT INTO Comment
VALUES (2563, 454, '日常', 2);
INSERT INTO Comment
VALUES (2564, 454, '赞', 2);
INSERT INTO Comment
VALUES (2565, 454, '满意', 2);
INSERT INTO Comment
VALUES (2566, 455, '持久', 6);
INSERT INTO Comment
VALUES (2567, 455, '很好', 5);
INSERT INTO Comment
VALUES (2568, 455, '不掉色', 3);
INSERT INTO Comment
VALUES (2569, 455, '给力', 3);
INSERT INTO Comment
VALUES (2570, 455, '满意', 2);
INSERT INTO Comment
VALUES (2571, 455, '便宜', 2);
INSERT INTO Comment
VALUES (2572, 455, '日常', 2);
INSERT INTO Comment
VALUES (2573, 456, '不沾杯', 4);
INSERT INTO Comment
VALUES (2574, 456, '不掉色', 4);
INSERT INTO Comment
VALUES (2575, 456, '接吻棒', 4);
INSERT INTO Comment
VALUES (2576, 456, '持久', 3);
INSERT INTO Comment
VALUES (2577, 456, '好闻', 3);
INSERT INTO Comment
VALUES (2578, 456, '显白', 2);
INSERT INTO Comment
VALUES (2579, 456, '满意', 2);
INSERT INTO Comment
VALUES (2580, 457, '很好', 6);
INSERT INTO Comment
VALUES (2581, 457, '显白', 5);
INSERT INTO Comment
VALUES (2582, 457, '持久', 4);
INSERT INTO Comment
VALUES (2583, 457, '不沾杯', 3);
INSERT INTO Comment
VALUES (2584, 457, '滋润', 3);
INSERT INTO Comment
VALUES (2585, 457, '不干', 3);
INSERT INTO Comment
VALUES (2586, 457, '哑光', 2);
INSERT INTO Comment
VALUES (2587, 458, '很好', 4);
INSERT INTO Comment
VALUES (2588, 458, '不错', 3);
INSERT INTO Comment
VALUES (2589, 458, '不掉色', 3);
INSERT INTO Comment
VALUES (2590, 458, '日常', 2);
INSERT INTO Comment
VALUES (2591, 458, '推荐', 2);
INSERT INTO Comment
VALUES (2592, 458, '好用', 2);
INSERT INTO Comment
VALUES (2593, 458, '满意', 2);
INSERT INTO Comment
VALUES (2594, 459, '很好', 8);
INSERT INTO Comment
VALUES (2595, 459, '持久', 4);
INSERT INTO Comment
VALUES (2596, 459, '不错', 4);
INSERT INTO Comment
VALUES (2597, 459, '值得', 4);
INSERT INTO Comment
VALUES (2598, 459, '不沾杯', 2);
INSERT INTO Comment
VALUES (2599, 459, '不掉色', 2);
INSERT INTO Comment
VALUES (2600, 459, '推荐', 2);
INSERT INTO Comment
VALUES (2601, 460, '很好', 8);
INSERT INTO Comment
VALUES (2602, 460, '持久', 3);
INSERT INTO Comment
VALUES (2603, 460, '滋润', 2);
INSERT INTO Comment
VALUES (2604, 460, '持妆', 1);
INSERT INTO Comment
VALUES (2605, 460, '很有特色', 1);
INSERT INTO Comment
VALUES (2606, 460, '好用', 1);
INSERT INTO Comment
VALUES (2607, 460, '赞', 1);
INSERT INTO Comment
VALUES (2608, 461, '很好', 5);
INSERT INTO Comment
VALUES (2609, 461, '满意', 3);
INSERT INTO Comment
VALUES (2610, 461, '不错', 3);
INSERT INTO Comment
VALUES (2611, 461, '赞', 2);
INSERT INTO Comment
VALUES (2612, 461, '不掉色', 2);
INSERT INTO Comment
VALUES (2613, 461, '大品牌', 1);
INSERT INTO Comment
VALUES (2614, 461, '值得', 1);
INSERT INTO Comment
VALUES (2615, 462, '很好', 4);
INSERT INTO Comment
VALUES (2616, 462, '不错', 3);
INSERT INTO Comment
VALUES (2617, 462, '满意', 3);
INSERT INTO Comment
VALUES (2618, 462, '不掉色', 2);
INSERT INTO Comment
VALUES (2619, 462, '高级', 1);
INSERT INTO Comment
VALUES (2620, 462, '接吻棒', 1);
INSERT INTO Comment
VALUES (2621, 462, '哑光', 1);
INSERT INTO Comment
VALUES (2622, 463, '好闻', 2);
INSERT INTO Comment
VALUES (2623, 463, '持久', 2);
INSERT INTO Comment
VALUES (2624, 463, '满意', 2);
INSERT INTO Comment
VALUES (2625, 463, '赞', 2);
INSERT INTO Comment
VALUES (2626, 463, '很好', 2);
INSERT INTO Comment
VALUES (2627, 463, '不错', 2);
INSERT INTO Comment
VALUES (2628, 463, '保湿', 1);
INSERT INTO Comment
VALUES (2629, 464, '不沾杯', 5);
INSERT INTO Comment
VALUES (2630, 464, '很好', 5);
INSERT INTO Comment
VALUES (2631, 464, '不错', 5);
INSERT INTO Comment
VALUES (2632, 464, '持久', 3);
INSERT INTO Comment
VALUES (2633, 464, '显白', 3);
INSERT INTO Comment
VALUES (2634, 464, '接吻棒', 2);
INSERT INTO Comment
VALUES (2635, 464, '满意', 2);
INSERT INTO Comment
VALUES (2636, 465, '不错', 4);
INSERT INTO Comment
VALUES (2637, 465, '很好', 4);
INSERT INTO Comment
VALUES (2638, 465, '持久', 1);
INSERT INTO Comment
VALUES (2639, 465, '不挑皮', 1);
INSERT INTO Comment
VALUES (2640, 465, '高档', 1);
INSERT INTO Comment
VALUES (2641, 465, '持久滋润', 1);
INSERT INTO Comment
VALUES (2642, 465, '轻薄', 1);
INSERT INTO Comment
VALUES (2643, 466, '很好', 3);
INSERT INTO Comment
VALUES (2644, 466, '推荐', 3);
INSERT INTO Comment
VALUES (2645, 466, '丝滑', 2);
INSERT INTO Comment
VALUES (2646, 466, '不错', 2);
INSERT INTO Comment
VALUES (2647, 466, '奶油', 1);
INSERT INTO Comment
VALUES (2648, 466, '慕斯', 1);
INSERT INTO Comment
VALUES (2649, 466, '棕调', 1);
INSERT INTO Comment
VALUES (2650, 468, '很好', 5);
INSERT INTO Comment
VALUES (2651, 468, '不拔干', 3);
INSERT INTO Comment
VALUES (2652, 468, '好用', 2);
INSERT INTO Comment
VALUES (2653, 468, '推荐', 2);
INSERT INTO Comment
VALUES (2654, 468, '不错', 2);
INSERT INTO Comment
VALUES (2655, 468, '绝美', 1);
INSERT INTO Comment
VALUES (2656, 468, '有质感', 1);
INSERT INTO Comment
VALUES (2657, 469, '显白', 3);
INSERT INTO Comment
VALUES (2658, 469, '滋润', 2);
INSERT INTO Comment
VALUES (2659, 469, '绝美', 1);
INSERT INTO Comment
VALUES (2660, 469, '很美', 1);
INSERT INTO Comment
VALUES (2661, 469, '甜甜的', 1);
INSERT INTO Comment
VALUES (2662, 469, '高档', 1);
INSERT INTO Comment
VALUES (2663, 469, '很好', 1);
INSERT INTO Comment
VALUES (2664, 470, '值得', 1);
INSERT INTO Comment
VALUES (2665, 471, '温柔', 4);
INSERT INTO Comment
VALUES (2666, 471, '日常', 3);
INSERT INTO Comment
VALUES (2667, 471, '很好', 3);
INSERT INTO Comment
VALUES (2668, 471, '滋润', 1);
INSERT INTO Comment
VALUES (2669, 471, '自然', 1);
INSERT INTO Comment
VALUES (2670, 471, '浮雕', 1);
INSERT INTO Comment
VALUES (2671, 471, '有质感', 1);
INSERT INTO Comment
VALUES (2672, 472, '迷你', 1);
INSERT INTO Comment
VALUES (2673, 472, '滋润', 1);
INSERT INTO Comment
VALUES (2674, 472, '砖红色', 1);
INSERT INTO Comment
VALUES (2675, 472, '黑魔方', 1);
INSERT INTO Comment
VALUES (2676, 472, '枫叶红', 1);
INSERT INTO Comment
VALUES (2677, 472, '不错', 1);
INSERT INTO Comment
VALUES (2678, 472, '满意', 1);
INSERT INTO Comment
VALUES (2679, 474, '好用', 1);
INSERT INTO Comment
VALUES (2680, 478, '很好', 4);
INSERT INTO Comment
VALUES (2681, 478, '轻薄', 3);
INSERT INTO Comment
VALUES (2682, 478, '日常', 3);
INSERT INTO Comment
VALUES (2683, 478, '持久', 3);
INSERT INTO Comment
VALUES (2684, 478, '很美', 3);
INSERT INTO Comment
VALUES (2685, 478, '粉色', 3);
INSERT INTO Comment
VALUES (2686, 478, '不错', 3);
INSERT INTO Comment
VALUES (2687, 479, '很好', 7);
INSERT INTO Comment
VALUES (2688, 479, '持久', 2);
INSERT INTO Comment
VALUES (2689, 479, '不沾杯', 2);
INSERT INTO Comment
VALUES (2690, 479, '柔和', 1);
INSERT INTO Comment
VALUES (2691, 479, '日常', 1);
INSERT INTO Comment
VALUES (2692, 479, '柔润', 1);
INSERT INTO Comment
VALUES (2693, 479, '好闻', 1);
INSERT INTO Comment
VALUES (2694, 480, '不错', 5);
INSERT INTO Comment
VALUES (2695, 480, '很好', 4);
INSERT INTO Comment
VALUES (2696, 480, '哑光', 3);
INSERT INTO Comment
VALUES (2697, 480, '显白', 3);
INSERT INTO Comment
VALUES (2698, 480, '持久', 2);
INSERT INTO Comment
VALUES (2699, 480, '好闻', 2);
INSERT INTO Comment
VALUES (2700, 480, '满意', 2);
INSERT INTO Comment
VALUES (2701, 481, '很好', 5);
INSERT INTO Comment
VALUES (2702, 481, '持久', 4);
INSERT INTO Comment
VALUES (2703, 481, '好用', 3);
INSERT INTO Comment
VALUES (2704, 481, '不错', 3);
INSERT INTO Comment
VALUES (2705, 481, '显白', 3);
INSERT INTO Comment
VALUES (2706, 481, '接吻棒', 3);
INSERT INTO Comment
VALUES (2707, 481, '滋润', 3);
INSERT INTO Comment
VALUES (2708, 482, '显白', 4);
INSERT INTO Comment
VALUES (2709, 482, '持久', 4);
INSERT INTO Comment
VALUES (2710, 482, '满意', 3);
INSERT INTO Comment
VALUES (2711, 482, '好用', 3);
INSERT INTO Comment
VALUES (2712, 482, '给力', 3);
INSERT INTO Comment
VALUES (2713, 482, '很好', 2);
INSERT INTO Comment
VALUES (2714, 482, '划算', 2);
INSERT INTO Comment
VALUES (2715, 483, '很好', 3);
INSERT INTO Comment
VALUES (2716, 483, '橘色', 2);
INSERT INTO Comment
VALUES (2717, 483, '满意', 2);
INSERT INTO Comment
VALUES (2718, 483, '显白', 2);
INSERT INTO Comment
VALUES (2719, 483, '不错', 2);
INSERT INTO Comment
VALUES (2720, 483, '好闻', 1);
INSERT INTO Comment
VALUES (2721, 483, '一般', 1);
INSERT INTO Comment
VALUES (2722, 484, '显白', 3);
INSERT INTO Comment
VALUES (2723, 484, '不错', 2);
INSERT INTO Comment
VALUES (2724, 484, '不沾杯', 2);
INSERT INTO Comment
VALUES (2725, 484, '值得', 2);
INSERT INTO Comment
VALUES (2726, 484, '很好', 2);
INSERT INTO Comment
VALUES (2727, 484, '很美', 1);
INSERT INTO Comment
VALUES (2728, 484, '红色', 1);
INSERT INTO Comment
VALUES (2729, 485, '很好', 5);
INSERT INTO Comment
VALUES (2730, 485, '滋润', 4);
INSERT INTO Comment
VALUES (2731, 485, '不错', 3);
INSERT INTO Comment
VALUES (2732, 485, '红色', 2);
INSERT INTO Comment
VALUES (2733, 485, '划算', 2);
INSERT INTO Comment
VALUES (2734, 485, '番茄红', 2);
INSERT INTO Comment
VALUES (2735, 485, '罂粟红', 1);
INSERT INTO Comment
VALUES (2736, 486, '不错', 5);
INSERT INTO Comment
VALUES (2737, 486, '哑光', 4);
INSERT INTO Comment
VALUES (2738, 486, '自然', 3);
INSERT INTO Comment
VALUES (2739, 486, '豆沙色', 3);
INSERT INTO Comment
VALUES (2740, 486, '很好', 3);
INSERT INTO Comment
VALUES (2741, 486, '显白', 3);
INSERT INTO Comment
VALUES (2742, 486, '满意', 2);
INSERT INTO Comment
VALUES (2743, 487, '持久', 5);
INSERT INTO Comment
VALUES (2744, 487, '滋润', 4);
INSERT INTO Comment
VALUES (2745, 487, '很好', 2);
INSERT INTO Comment
VALUES (2746, 487, '柔和', 1);
INSERT INTO Comment
VALUES (2747, 487, '不掉色', 1);
INSERT INTO Comment
VALUES (2748, 487, '不错', 1);
INSERT INTO Comment
VALUES (2749, 487, '手感很好', 1);
INSERT INTO Comment
VALUES (2750, 488, '显白', 6);
INSERT INTO Comment
VALUES (2751, 488, '滋润', 5);
INSERT INTO Comment
VALUES (2752, 488, '丝滑', 4);
INSERT INTO Comment
VALUES (2753, 488, '日常', 4);
INSERT INTO Comment
VALUES (2754, 488, '持久', 3);
INSERT INTO Comment
VALUES (2755, 488, '哑光', 3);
INSERT INTO Comment
VALUES (2756, 488, '自然', 2);
INSERT INTO Comment
VALUES (2757, 489, '显白', 5);
INSERT INTO Comment
VALUES (2758, 489, '持久', 3);
INSERT INTO Comment
VALUES (2759, 489, '滋润', 3);
INSERT INTO Comment
VALUES (2760, 489, '哑光', 3);
INSERT INTO Comment
VALUES (2761, 489, '不拔干', 3);
INSERT INTO Comment
VALUES (2762, 489, '推荐', 2);
INSERT INTO Comment
VALUES (2763, 489, '李佳琦推荐', 2);
INSERT INTO Comment
VALUES (2764, 490, '滋润', 4);
INSERT INTO Comment
VALUES (2765, 490, '不错', 4);
INSERT INTO Comment
VALUES (2766, 490, '红色', 3);
INSERT INTO Comment
VALUES (2767, 490, '哑光', 3);
INSERT INTO Comment
VALUES (2768, 490, '很好', 2);
INSERT INTO Comment
VALUES (2769, 490, '显气色', 2);
INSERT INTO Comment
VALUES (2770, 490, '满意', 2);
INSERT INTO Comment
VALUES (2771, 491, '值得', 4);
INSERT INTO Comment
VALUES (2772, 491, '满意', 4);
INSERT INTO Comment
VALUES (2773, 491, '显白', 3);
INSERT INTO Comment
VALUES (2774, 491, '哑光', 3);
INSERT INTO Comment
VALUES (2775, 491, '赞', 3);
INSERT INTO Comment
VALUES (2776, 491, '持久', 2);
INSERT INTO Comment
VALUES (2777, 491, '很好', 2);
INSERT INTO Comment
VALUES (2778, 492, '很好', 5);
INSERT INTO Comment
VALUES (2779, 492, '自然', 3);
INSERT INTO Comment
VALUES (2780, 492, '滋润', 3);
INSERT INTO Comment
VALUES (2781, 492, '值得', 2);
INSERT INTO Comment
VALUES (2782, 492, '大品牌', 2);
INSERT INTO Comment
VALUES (2783, 492, '大气', 1);
INSERT INTO Comment
VALUES (2784, 492, '红色', 1);
INSERT INTO Comment
VALUES (2785, 493, '秋冬', 3);
INSERT INTO Comment
VALUES (2786, 493, '同心锁', 2);
INSERT INTO Comment
VALUES (2787, 493, '漂亮', 2);
INSERT INTO Comment
VALUES (2788, 493, '颜色很正', 2);
INSERT INTO Comment
VALUES (2789, 493, '很好', 2);
INSERT INTO Comment
VALUES (2790, 493, '国产', 2);
INSERT INTO Comment
VALUES (2791, 493, '国风', 2);
INSERT INTO Comment
VALUES (2792, 494, '大气', 3);
INSERT INTO Comment
VALUES (2793, 494, '很好', 3);
INSERT INTO Comment
VALUES (2794, 494, '给力', 3);
INSERT INTO Comment
VALUES (2795, 494, '同心锁', 2);
INSERT INTO Comment
VALUES (2796, 494, '上档次', 2);
INSERT INTO Comment
VALUES (2797, 494, '颜色很正', 2);
INSERT INTO Comment
VALUES (2798, 494, '漂亮', 2);
INSERT INTO Comment
VALUES (2799, 495, '不错', 4);
INSERT INTO Comment
VALUES (2800, 495, '精致', 4);
INSERT INTO Comment
VALUES (2801, 495, '同心锁', 3);
INSERT INTO Comment
VALUES (2802, 495, '漂亮', 2);
INSERT INTO Comment
VALUES (2803, 495, '很好', 2);
INSERT INTO Comment
VALUES (2804, 495, '雕花', 2);
INSERT INTO Comment
VALUES (2805, 495, '浮雕', 2);
INSERT INTO Comment
VALUES (2806, 496, '同心锁', 3);
INSERT INTO Comment
VALUES (2807, 496, '很好', 3);
INSERT INTO Comment
VALUES (2808, 496, '推荐', 2);
INSERT INTO Comment
VALUES (2809, 496, '漂亮', 2);
INSERT INTO Comment
VALUES (2810, 496, '雕花', 2);
INSERT INTO Comment
VALUES (2811, 496, '值得', 2);
INSERT INTO Comment
VALUES (2812, 496, '美', 2);
INSERT INTO Comment
VALUES (2813, 497, '很好', 4);
INSERT INTO Comment
VALUES (2814, 497, '不错', 4);
INSERT INTO Comment
VALUES (2815, 497, '精致', 2);
INSERT INTO Comment
VALUES (2816, 497, '满意', 2);
INSERT INTO Comment
VALUES (2817, 497, '赞', 1);
INSERT INTO Comment
VALUES (2818, 497, '颜色很正', 1);
INSERT INTO Comment
VALUES (2819, 497, '很美', 1);
INSERT INTO Comment
VALUES (2820, 498, '精致', 6);
INSERT INTO Comment
VALUES (2821, 498, '漂亮', 3);
INSERT INTO Comment
VALUES (2822, 498, '很好', 3);
INSERT INTO Comment
VALUES (2823, 498, '同心锁', 2);
INSERT INTO Comment
VALUES (2824, 498, '显白', 2);
INSERT INTO Comment
VALUES (2825, 498, '绝美', 2);
INSERT INTO Comment
VALUES (2826, 498, '红色', 1);
INSERT INTO Comment
VALUES (2827, 499, '滋润', 5);
INSERT INTO Comment
VALUES (2828, 499, '很好', 4);
INSERT INTO Comment
VALUES (2829, 499, '好用', 2);
INSERT INTO Comment
VALUES (2830, 499, '朱红色', 1);
INSERT INTO Comment
VALUES (2831, 499, '不错', 1);
INSERT INTO Comment
VALUES (2832, 499, '百搭', 1);
INSERT INTO Comment
VALUES (2833, 499, '丝滑', 1);
INSERT INTO Comment
VALUES (2834, 500, '很好', 3);
INSERT INTO Comment
VALUES (2835, 500, '滋润', 1);
INSERT INTO Comment
VALUES (2836, 500, '润滑', 1);
INSERT INTO Comment
VALUES (2837, 500, '给力', 1);
INSERT INTO Comment
VALUES (2838, 500, '不干', 1);
INSERT INTO Comment
VALUES (2839, 500, '满意', 1);
INSERT INTO Comment
VALUES (2840, 501, '滋润', 2);
INSERT INTO Comment
VALUES (2841, 501, '很好', 2);
INSERT INTO Comment
VALUES (2842, 501, '不错', 1);
INSERT INTO Comment
VALUES (2843, 501, '值得', 1);
INSERT INTO Comment
VALUES (2844, 501, '送闺蜜', 1);
INSERT INTO Comment
VALUES (2845, 501, '赞', 1);
INSERT INTO Comment
VALUES (2846, 502, '滋润', 4);
INSERT INTO Comment
VALUES (2847, 502, '不错', 3);
INSERT INTO Comment
VALUES (2848, 502, '显白', 2);
INSERT INTO Comment
VALUES (2849, 502, '很好', 2);
INSERT INTO Comment
VALUES (2850, 502, '哑光', 1);
INSERT INTO Comment
VALUES (2851, 502, '日常', 1);
INSERT INTO Comment
VALUES (2852, 502, '秋冬', 1);
INSERT INTO Comment
VALUES (2853, 503, '漂亮', 4);
INSERT INTO Comment
VALUES (2854, 503, '满意', 3);
INSERT INTO Comment
VALUES (2855, 503, '滋润', 2);
INSERT INTO Comment
VALUES (2856, 503, '不错', 2);
INSERT INTO Comment
VALUES (2857, 503, '精致', 1);
INSERT INTO Comment
VALUES (2858, 503, '不易掉色', 1);
INSERT INTO Comment
VALUES (2859, 503, '大气', 1);
INSERT INTO Comment
VALUES (2860, 504, '满意', 4);
INSERT INTO Comment
VALUES (2861, 504, '国货', 3);
INSERT INTO Comment
VALUES (2862, 504, '不错', 2);
INSERT INTO Comment
VALUES (2863, 504, '不拔干', 2);
INSERT INTO Comment
VALUES (2864, 504, '绝美', 1);
INSERT INTO Comment
VALUES (2865, 504, '颜色很正', 1);
INSERT INTO Comment
VALUES (2866, 504, '好用', 1);
INSERT INTO Comment
VALUES (2867, 505, '很好', 3);
INSERT INTO Comment
VALUES (2868, 505, '红色', 2);
INSERT INTO Comment
VALUES (2869, 505, '浮雕', 2);
INSERT INTO Comment
VALUES (2870, 505, '值得', 2);
INSERT INTO Comment
VALUES (2871, 505, '颜色很正', 1);
INSERT INTO Comment
VALUES (2872, 505, '手感很好', 1);
INSERT INTO Comment
VALUES (2873, 505, '很特别', 1);
INSERT INTO Comment
VALUES (2874, 506, '雕花', 3);
INSERT INTO Comment
VALUES (2875, 506, '精致', 2);
INSERT INTO Comment
VALUES (2876, 506, '满意', 2);
INSERT INTO Comment
VALUES (2877, 506, '自然', 1);
INSERT INTO Comment
VALUES (2878, 506, '高级', 1);
INSERT INTO Comment
VALUES (2879, 506, '漂亮', 1);
INSERT INTO Comment
VALUES (2880, 506, '很好', 1);
INSERT INTO Comment
VALUES (2881, 507, '很好', 2);
INSERT INTO Comment
VALUES (2882, 507, '有质感', 1);
INSERT INTO Comment
VALUES (2883, 507, '自然', 1);
INSERT INTO Comment
VALUES (2884, 507, '不错', 1);
INSERT INTO Comment
VALUES (2885, 507, '雕花', 1);
INSERT INTO Comment
VALUES (2886, 508, '很好', 1);
INSERT INTO Comment
VALUES (2887, 508, '精致', 1);
INSERT INTO Comment
VALUES (2888, 508, '不错', 1);
INSERT INTO Comment
VALUES (2889, 509, '不错', 3);
INSERT INTO Comment
VALUES (2890, 509, '颜色很正', 1);
INSERT INTO Comment
VALUES (2891, 509, '满意', 1);
INSERT INTO Comment
VALUES (2892, 509, '雕花', 1);
INSERT INTO Comment
VALUES (2893, 509, '精致', 1);
INSERT INTO Comment
VALUES (2894, 509, '漂亮', 1);
INSERT INTO Comment
VALUES (2895, 509, '国风', 1);
INSERT INTO Comment
VALUES (2896, 510, '不错', 2);
INSERT INTO Comment
VALUES (2897, 510, '满意', 2);
INSERT INTO Comment
VALUES (2898, 510, '很好', 2);
INSERT INTO Comment
VALUES (2899, 510, '性价比高', 1);
INSERT INTO Comment
VALUES (2900, 510, '国货', 1);
INSERT INTO Comment
VALUES (2901, 511, '满意', 1);
INSERT INTO Comment
VALUES (2902, 511, '很好', 1);
INSERT INTO Comment
VALUES (2903, 511, '漂亮', 1);
INSERT INTO Comment
VALUES (2904, 511, '好用', 1);
INSERT INTO Comment
VALUES (2905, 511, '送礼', 1);
INSERT INTO Comment
VALUES (2906, 511, '精致', 1);
INSERT INTO Comment
VALUES (2907, 512, '很好', 2);
INSERT INTO Comment
VALUES (2908, 512, '雕花', 1);
INSERT INTO Comment
VALUES (2909, 512, '精致', 1);
INSERT INTO Comment
VALUES (2910, 512, '南瓜色', 1);
INSERT INTO Comment
VALUES (2911, 512, '半哑光', 1);
INSERT INTO Comment
VALUES (2912, 512, '不会拔干', 1);
INSERT INTO Comment
VALUES (2913, 512, '上档次', 1);
INSERT INTO Comment
VALUES (2914, 513, '推荐', 5);
INSERT INTO Comment
VALUES (2915, 513, '雕花', 4);
INSERT INTO Comment
VALUES (2916, 513, '满意', 4);
INSERT INTO Comment
VALUES (2917, 513, '滋润', 3);
INSERT INTO Comment
VALUES (2918, 513, '显气色', 2);
INSERT INTO Comment
VALUES (2919, 513, '精致', 2);
INSERT INTO Comment
VALUES (2920, 513, '显白', 1);
INSERT INTO Comment
VALUES (2921, 514, '很好', 5);
INSERT INTO Comment
VALUES (2922, 514, '持久', 3);
INSERT INTO Comment
VALUES (2923, 514, '有质感', 2);
INSERT INTO Comment
VALUES (2924, 514, '不沾杯', 2);
INSERT INTO Comment
VALUES (2925, 514, '滋润', 2);
INSERT INTO Comment
VALUES (2926, 514, '雕花', 2);
INSERT INTO Comment
VALUES (2927, 514, '颜色很正', 2);
INSERT INTO Comment
VALUES (2928, 515, '很好', 4);
INSERT INTO Comment
VALUES (2929, 515, '值得', 3);
INSERT INTO Comment
VALUES (2930, 515, '满意', 3);
INSERT INTO Comment
VALUES (2931, 515, '不错', 3);
INSERT INTO Comment
VALUES (2932, 515, '滋润', 3);
INSERT INTO Comment
VALUES (2933, 515, '雕花', 2);
INSERT INTO Comment
VALUES (2934, 515, '好用', 1);
INSERT INTO Comment
VALUES (2935, 516, '很好', 6);
INSERT INTO Comment
VALUES (2936, 516, '滋润', 5);
INSERT INTO Comment
VALUES (2937, 516, '雕花', 4);
INSERT INTO Comment
VALUES (2938, 516, '精致', 4);
INSERT INTO Comment
VALUES (2939, 516, '不错', 3);
INSERT INTO Comment
VALUES (2940, 516, '自然', 3);
INSERT INTO Comment
VALUES (2941, 516, '不拔干', 2);
INSERT INTO Comment
VALUES (2942, 517, '精致', 7);
INSERT INTO Comment
VALUES (2943, 517, '雕花', 6);
INSERT INTO Comment
VALUES (2944, 517, '推荐', 4);
INSERT INTO Comment
VALUES (2945, 517, '不拔干', 3);
INSERT INTO Comment
VALUES (2946, 517, '滋润', 3);
INSERT INTO Comment
VALUES (2947, 517, '美', 3);
INSERT INTO Comment
VALUES (2948, 517, '颜色很正', 2);
INSERT INTO Comment
VALUES (2949, 518, '滋润', 5);
INSERT INTO Comment
VALUES (2950, 518, '显白', 3);
INSERT INTO Comment
VALUES (2951, 518, '精致', 3);
INSERT INTO Comment
VALUES (2952, 518, '持久', 2);
INSERT INTO Comment
VALUES (2953, 518, '很好', 2);
INSERT INTO Comment
VALUES (2954, 518, '浮雕', 2);
INSERT INTO Comment
VALUES (2955, 518, '漂亮', 2);
INSERT INTO Comment
VALUES (2956, 519, '精致', 4);
INSERT INTO Comment
VALUES (2957, 519, '滋润', 3);
INSERT INTO Comment
VALUES (2958, 519, '雕花', 3);
INSERT INTO Comment
VALUES (2959, 519, '自然', 3);
INSERT INTO Comment
VALUES (2960, 519, '不错', 3);
INSERT INTO Comment
VALUES (2961, 519, '手感很好', 2);
INSERT INTO Comment
VALUES (2962, 519, '很好', 2);
INSERT INTO Comment
VALUES (2963, 520, '滋润', 2);
INSERT INTO Comment
VALUES (2964, 520, '推荐', 2);
INSERT INTO Comment
VALUES (2965, 520, '上档次', 1);
INSERT INTO Comment
VALUES (2966, 520, '国产', 1);
INSERT INTO Comment
VALUES (2967, 520, '不拔干', 1);
INSERT INTO Comment
VALUES (2968, 520, '雕花', 1);
INSERT INTO Comment
VALUES (2969, 520, '同心锁', 1);
INSERT INTO Comment
VALUES (2970, 521, '滋润', 6);
INSERT INTO Comment
VALUES (2971, 521, '很好', 4);
INSERT INTO Comment
VALUES (2972, 521, '显白', 4);
INSERT INTO Comment
VALUES (2973, 521, '雕花', 3);
INSERT INTO Comment
VALUES (2974, 521, '不拔干', 2);
INSERT INTO Comment
VALUES (2975, 521, '好用', 2);
INSERT INTO Comment
VALUES (2976, 521, '丝滑', 1);
INSERT INTO Comment
VALUES (2977, 522, '精致', 3);
INSERT INTO Comment
VALUES (2978, 522, '滋润', 3);
INSERT INTO Comment
VALUES (2979, 522, '不干', 2);
INSERT INTO Comment
VALUES (2980, 522, '持久', 2);
INSERT INTO Comment
VALUES (2981, 522, '高级', 2);
INSERT INTO Comment
VALUES (2982, 522, '水润', 1);
INSERT INTO Comment
VALUES (2983, 522, '温柔', 1);
INSERT INTO Comment
VALUES (2984, 523, '不错', 5);
INSERT INTO Comment
VALUES (2985, 523, '饱满', 2);
INSERT INTO Comment
VALUES (2986, 523, '哑光', 2);
INSERT INTO Comment
VALUES (2987, 523, '国货', 2);
INSERT INTO Comment
VALUES (2988, 523, '推荐', 2);
INSERT INTO Comment
VALUES (2989, 523, '满意', 2);
INSERT INTO Comment
VALUES (2990, 523, '持久', 2);
INSERT INTO Comment
VALUES (2991, 524, '很好', 4);
INSERT INTO Comment
VALUES (2992, 524, '好用', 3);
INSERT INTO Comment
VALUES (2993, 524, '一般', 2);
INSERT INTO Comment
VALUES (2994, 524, '滋润', 2);
INSERT INTO Comment
VALUES (2995, 524, '哑光', 2);
INSERT INTO Comment
VALUES (2996, 524, '气质', 2);
INSERT INTO Comment
VALUES (2997, 524, '国货', 1);
INSERT INTO Comment
VALUES (2998, 525, '很好', 4);
INSERT INTO Comment
VALUES (2999, 525, '不错', 2);
INSERT INTO Comment
VALUES (3000, 525, '滋润', 2);
INSERT INTO Comment
VALUES (3001, 525, '雕花', 1);
INSERT INTO Comment
VALUES (3002, 525, '复古红', 1);
INSERT INTO Comment
VALUES (3003, 525, '很美', 1);
INSERT INTO Comment
VALUES (3004, 525, '颜色很正', 1);
INSERT INTO Comment
VALUES (3005, 526, '哑光', 5);
INSERT INTO Comment
VALUES (3006, 526, '大气', 4);
INSERT INTO Comment
VALUES (3007, 526, '正红色', 2);
INSERT INTO Comment
VALUES (3008, 526, '不干', 2);
INSERT INTO Comment
VALUES (3009, 526, '上档次', 2);
INSERT INTO Comment
VALUES (3010, 526, '持久', 2);
INSERT INTO Comment
VALUES (3011, 526, '颜值很高', 1);
INSERT INTO Comment
VALUES (3012, 527, '值得', 2);
INSERT INTO Comment
VALUES (3013, 527, '丝绒', 2);
INSERT INTO Comment
VALUES (3014, 527, '梅子色', 2);
INSERT INTO Comment
VALUES (3015, 527, '精致', 1);
INSERT INTO Comment
VALUES (3016, 527, '国货', 1);
INSERT INTO Comment
VALUES (3017, 527, '推荐', 1);
INSERT INTO Comment
VALUES (3018, 527, '不掉色', 1);
INSERT INTO Comment
VALUES (3019, 528, '很好', 5);
INSERT INTO Comment
VALUES (3020, 528, '好用', 2);
INSERT INTO Comment
VALUES (3021, 528, '轻薄', 1);
INSERT INTO Comment
VALUES (3022, 528, '不错', 1);
INSERT INTO Comment
VALUES (3023, 528, '好闻', 1);
INSERT INTO Comment
VALUES (3024, 528, '颜色很正', 1);
INSERT INTO Comment
VALUES (3025, 528, '气质', 1);
INSERT INTO Comment
VALUES (3026, 529, '哑光', 6);
INSERT INTO Comment
VALUES (3027, 529, '滋润', 4);
INSERT INTO Comment
VALUES (3028, 529, '显白', 4);
INSERT INTO Comment
VALUES (3029, 529, '高级', 3);
INSERT INTO Comment
VALUES (3030, 529, '焦糖', 2);
INSERT INTO Comment
VALUES (3031, 529, '精致', 2);
INSERT INTO Comment
VALUES (3032, 529, '百搭', 2);
INSERT INTO Comment
VALUES (3033, 530, '滋润', 8);
INSERT INTO Comment
VALUES (3034, 530, '显白', 6);
INSERT INTO Comment
VALUES (3035, 530, '哑光', 5);
INSERT INTO Comment
VALUES (3036, 530, '高级', 4);
INSERT INTO Comment
VALUES (3037, 530, '有质感', 4);
INSERT INTO Comment
VALUES (3038, 530, '持久', 4);
INSERT INTO Comment
VALUES (3039, 530, '很好', 4);
INSERT INTO Comment
VALUES (3040, 531, '豆沙色', 5);
INSERT INTO Comment
VALUES (3041, 531, '滋润', 5);
INSERT INTO Comment
VALUES (3042, 531, '有质感', 3);
INSERT INTO Comment
VALUES (3043, 531, '上档次', 3);
INSERT INTO Comment
VALUES (3044, 531, '自然', 3);
INSERT INTO Comment
VALUES (3045, 531, '不错', 3);
INSERT INTO Comment
VALUES (3046, 531, '很好', 3);
INSERT INTO Comment
VALUES (3047, 532, '哑光', 7);
INSERT INTO Comment
VALUES (3048, 532, '日常', 6);
INSERT INTO Comment
VALUES (3049, 532, '滋润', 5);
INSERT INTO Comment
VALUES (3050, 532, '秋冬', 4);
INSERT INTO Comment
VALUES (3051, 532, '不拔干', 3);
INSERT INTO Comment
VALUES (3052, 532, '自然', 3);
INSERT INTO Comment
VALUES (3053, 532, '枫叶红', 3);
INSERT INTO Comment
VALUES (3054, 534, '性价比高', 1);
INSERT INTO Comment
VALUES (3055, 534, '不干', 1);
INSERT INTO Comment
VALUES (3056, 535, '豆沙色', 7);
INSERT INTO Comment
VALUES (3057, 535, '温柔', 6);
INSERT INTO Comment
VALUES (3058, 535, '棕调', 5);
INSERT INTO Comment
VALUES (3059, 535, '日常', 5);
INSERT INTO Comment
VALUES (3060, 535, '经典', 4);
INSERT INTO Comment
VALUES (3061, 535, '豆沙', 4);
INSERT INTO Comment
VALUES (3062, 535, '百搭', 4);
INSERT INTO Comment
VALUES (3063, 537, '滋润', 7);
INSERT INTO Comment
VALUES (3064, 537, '橘调', 6);
INSERT INTO Comment
VALUES (3065, 537, '棕红', 5);
INSERT INTO Comment
VALUES (3066, 537, '黑管', 3);
INSERT INTO Comment
VALUES (3067, 537, '气质', 3);
INSERT INTO Comment
VALUES (3068, 537, '日常', 3);
INSERT INTO Comment
VALUES (3069, 537, '很好', 3);
INSERT INTO Comment
VALUES (3070, 539, '哑光', 1);
INSERT INTO Comment
VALUES (3071, 539, '水润', 1);
INSERT INTO Comment
VALUES (3072, 539, '番茄红', 1);
INSERT INTO Comment
VALUES (3073, 539, '秋冬', 1);
INSERT INTO Comment
VALUES (3074, 539, '气场', 1);
INSERT INTO Comment
VALUES (3075, 539, '推荐', 1);
INSERT INTO Comment
VALUES (3076, 549, '棕调', 9);
INSERT INTO Comment
VALUES (3077, 549, '哑光', 8);
INSERT INTO Comment
VALUES (3078, 549, '滋润', 4);
INSERT INTO Comment
VALUES (3079, 549, '黑管', 3);
INSERT INTO Comment
VALUES (3080, 549, '显白', 2);
INSERT INTO Comment
VALUES (3081, 549, '高级', 2);
INSERT INTO Comment
VALUES (3082, 549, '推荐', 2);
INSERT INTO Comment
VALUES (3083, 552, '哑光', 9);
INSERT INTO Comment
VALUES (3084, 552, '黑管', 7);
INSERT INTO Comment
VALUES (3085, 552, '高级', 5);
INSERT INTO Comment
VALUES (3086, 552, '显白', 5);
INSERT INTO Comment
VALUES (3087, 552, '砖红色', 3);
INSERT INTO Comment
VALUES (3088, 552, '复古', 2);
INSERT INTO Comment
VALUES (3089, 552, '橘红色', 2);
INSERT INTO Comment
VALUES (3090, 559, '粉色', 1);
INSERT INTO Comment
VALUES (3091, 570, '好用', 1);
INSERT INTO Comment
VALUES (3092, 605, '持久', 4);
INSERT INTO Comment
VALUES (3093, 605, '不拔干', 3);
INSERT INTO Comment
VALUES (3094, 605, '高级', 2);
INSERT INTO Comment
VALUES (3095, 605, '辣椒色', 2);
INSERT INTO Comment
VALUES (3096, 605, '日常', 2);
INSERT INTO Comment
VALUES (3097, 605, '不错', 2);
INSERT INTO Comment
VALUES (3098, 605, '有质感', 2);
INSERT INTO Comment
VALUES (3099, 606, '浓郁', 3);
INSERT INTO Comment
VALUES (3100, 606, '很好', 2);
INSERT INTO Comment
VALUES (3101, 606, '有气场', 2);
INSERT INTO Comment
VALUES (3102, 606, '玫红色', 2);
INSERT INTO Comment
VALUES (3103, 606, '显白', 2);
INSERT INTO Comment
VALUES (3104, 606, '持久', 2);
INSERT INTO Comment
VALUES (3105, 606, '镜面', 2);
INSERT INTO Comment
VALUES (3106, 616, '很好', 1);
INSERT INTO Comment
VALUES (3107, 616, '推荐', 1);
/*!40000 ALTER TABLE `Comment` ENABLE KEYS */;
COMMIT;

--
-- Table structure for table `Entity`
--

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;
DROP TABLE IF EXISTS `Entity`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Entity`
(
    `id`          int(11) NOT NULL AUTO_INCREMENT,
    `userId`      int(11)      DEFAULT NULL,
    `entityColor` varchar(255) DEFAULT NULL,
    `entityShape` varchar(255) DEFAULT NULL,
    `fontType`    int(11)      DEFAULT NULL,
    `fontSize`    int(11)      DEFAULT NULL,
    `x`           double       DEFAULT NULL,
    `y`           double       DEFAULT NULL,
    `x2`          double       DEFAULT NULL,
    `y2`          double       DEFAULT NULL,
    `visible`     boolean      DEFAULT TRUE,
    `nameVisible` boolean      DEFAULT TRUE,
    `entitySize`  int(11)      DEFAULT NULL,
    PRIMARY KEY (`id`)
) ENGINE = InnoDB
  AUTO_INCREMENT = 1
  DEFAULT CHARSET = utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Entity`
--

BEGIN;
/*!40000 ALTER TABLE `Entity` ENABLE KEYS */;
/*!40000 ALTER TABLE `Entity` ENABLE KEYS */;
COMMIT;

--
-- Table structure for table `Collect`
--

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;
DROP TABLE IF EXISTS `Collect`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Collect`
(
    `id`          int(11) NOT NULL AUTO_INCREMENT,
    `userId`      int(11) NOT NULL,
    `commodityId` int(11) NOT NULL,
    `val`         varchar(50) NOT NULL,
    `entityColor` varchar(255) DEFAULT NULL,
    `entityShape` varchar(255) DEFAULT NULL,
    `fontType`    int(11)      DEFAULT NULL,
    `fontSize`    int(11)      DEFAULT NULL,
    `x`           double       DEFAULT NULL,
    `y`           double       DEFAULT NULL,
    `x2`          double       DEFAULT NULL,
    `y2`          double       DEFAULT NULL,
    `visible`     boolean      DEFAULT TRUE,
    `nameVisible` boolean      DEFAULT TRUE,
    `entitySize`  int(11)      DEFAULT NULL,
    `userComment` varchar(255) DEFAULT NULL,
    PRIMARY KEY (`id`)
) ENGINE = InnoDB
  AUTO_INCREMENT = 1
  DEFAULT CHARSET = utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Collect`
--

BEGIN;
/*!40000 ALTER TABLE `Collect` ENABLE KEYS */;
INSERT INTO Collect
VALUES (1, 2, 544, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (2, 2, 426, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (3, 2, 203, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (4, 2, 304, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (5, 2, 178, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (6, 2, 531, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (7, 2, 243, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (8, 2, 86, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (9, 2, 186, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (10, 2, 92, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (11, 3, 161, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (12, 3, 289, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (13, 3, 387, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (14, 3, 419, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (15, 3, 485, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (16, 3, 294, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (17, 3, 5, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (18, 3, 170, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (19, 3, 75, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (20, 3, 491, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (21, 3, 523, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (22, 3, 462, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (23, 3, 459, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (24, 3, 437, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (25, 3, 181, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (26, 3, 21, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (27, 3, 150, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (28, 3, 249, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (29, 3, 347, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (30, 3, 220, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (31, 4, 128, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (32, 4, 259, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (33, 4, 390, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (34, 4, 7, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (35, 4, 265, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (36, 4, 287, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (37, 4, 427, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (38, 4, 428, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (39, 4, 47, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (40, 4, 309, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (41, 4, 315, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (42, 4, 583, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (43, 4, 204, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (44, 4, 205, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (45, 4, 462, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (46, 4, 338, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (47, 4, 84, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (48, 4, 596, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (49, 4, 340, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (50, 4, 218, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (51, 4, 609, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (52, 4, 104, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (53, 4, 237, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (54, 4, 118, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (55, 4, 503, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (56, 4, 382, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (57, 5, 281, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (58, 6, 32, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (59, 6, 449, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (60, 6, 162, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (61, 6, 4, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (62, 6, 90, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (63, 6, 70, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (64, 6, 40, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (65, 6, 361, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (66, 6, 297, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (67, 6, 303, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (68, 6, 563, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (69, 6, 468, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (70, 6, 154, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (71, 6, 571, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (72, 6, 31, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (73, 6, 319, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (74, 7, 161, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (75, 7, 450, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (76, 7, 516, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (77, 7, 4, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (78, 7, 548, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (79, 7, 585, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (80, 7, 73, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (81, 7, 428, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (82, 7, 557, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (83, 7, 12, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (84, 7, 524, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (85, 7, 623, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (86, 7, 369, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (87, 7, 310, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (88, 7, 29, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (89, 8, 96, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (90, 8, 64, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (91, 8, 295, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (92, 8, 359, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (93, 8, 369, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (94, 8, 530, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (95, 8, 571, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (96, 9, 194, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (97, 9, 133, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (98, 9, 200, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (99, 9, 41, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (100, 9, 537, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (101, 9, 569, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (102, 9, 337, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (103, 9, 284, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (104, 9, 281, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (105, 9, 60, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (106, 9, 125, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (107, 10, 544, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (108, 10, 577, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (109, 10, 165, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (110, 10, 262, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (111, 10, 7, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (112, 10, 616, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (113, 10, 457, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (114, 10, 490, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (115, 10, 263, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (116, 10, 170, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (117, 10, 175, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (118, 10, 80, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (119, 10, 209, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (120, 10, 342, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (121, 10, 247, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (122, 10, 604, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (123, 10, 285, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (124, 10, 478, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (125, 10, 319, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (126, 11, 418, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (127, 11, 420, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (128, 11, 101, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (129, 11, 42, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (130, 11, 554, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (131, 11, 112, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (132, 11, 434, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (133, 11, 371, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (134, 11, 467, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (135, 11, 405, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (136, 11, 344, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (137, 11, 377, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (138, 11, 570, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (139, 11, 379, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (140, 12, 2, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (141, 12, 514, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (142, 12, 548, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (143, 12, 488, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (144, 12, 479, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (145, 12, 427, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (146, 12, 458, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (147, 12, 535, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (148, 12, 537, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (149, 12, 255, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (150, 13, 257, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (151, 13, 419, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (152, 13, 4, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (153, 13, 525, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (154, 13, 142, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (155, 13, 188, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (156, 13, 220, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (157, 14, 130, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (158, 14, 261, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (159, 14, 390, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (160, 14, 137, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (161, 14, 523, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (162, 14, 16, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (163, 14, 272, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (164, 14, 280, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (165, 14, 541, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (166, 14, 414, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (167, 14, 31, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (168, 14, 553, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (169, 14, 426, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (170, 14, 190, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (171, 14, 598, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (172, 14, 220, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (173, 14, 606, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (174, 14, 222, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (175, 14, 611, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (176, 14, 230, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (177, 14, 105, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (178, 14, 235, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (179, 14, 119, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (180, 14, 121, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (181, 14, 123, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (182, 14, 508, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (183, 15, 576, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (184, 15, 41, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (185, 15, 496, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (186, 15, 16, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (187, 15, 305, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (188, 15, 20, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (189, 15, 215, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (190, 15, 314, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (191, 15, 444, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (192, 16, 385, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (193, 17, 5, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (194, 17, 522, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (195, 17, 25, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (196, 17, 41, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (197, 17, 172, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (198, 17, 45, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (199, 17, 177, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (200, 17, 194, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (201, 17, 70, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (202, 17, 458, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (203, 17, 75, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (204, 17, 460, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (205, 17, 588, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (206, 17, 471, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (207, 17, 493, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (208, 17, 368, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (209, 17, 117, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (210, 17, 504, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (211, 17, 123, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (212, 17, 380, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (213, 17, 383, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (214, 19, 258, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (215, 19, 136, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (216, 19, 394, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (217, 19, 524, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (218, 19, 275, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (219, 19, 536, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (220, 19, 537, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (221, 19, 287, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (222, 19, 292, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (223, 19, 421, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (224, 19, 296, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (225, 19, 436, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (226, 19, 183, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (227, 19, 572, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (228, 19, 70, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (229, 19, 583, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (230, 19, 85, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (231, 19, 351, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (232, 19, 609, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (233, 19, 98, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (234, 19, 615, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (235, 19, 232, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (236, 19, 506, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (237, 19, 507, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (238, 19, 510, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (239, 20, 130, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (240, 20, 3, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (241, 20, 137, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (242, 20, 269, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (243, 20, 15, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (244, 20, 154, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (245, 20, 540, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (246, 20, 158, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (247, 20, 162, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (248, 20, 37, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (249, 20, 166, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (250, 20, 422, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (251, 20, 558, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (252, 20, 430, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (253, 20, 54, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (254, 20, 438, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (255, 20, 319, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (256, 20, 66, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (257, 20, 203, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (258, 20, 81, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (259, 20, 593, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (260, 20, 474, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (261, 20, 347, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (262, 20, 475, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (263, 20, 602, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (264, 20, 225, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (265, 20, 100, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (266, 20, 498, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (267, 20, 374, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (268, 21, 140, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (269, 21, 398, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (270, 21, 273, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (271, 21, 530, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (272, 21, 23, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (273, 21, 279, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (274, 21, 414, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (275, 21, 32, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (276, 21, 418, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (277, 21, 298, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (278, 21, 307, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (279, 21, 182, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (280, 21, 72, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (281, 21, 206, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (282, 21, 213, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (283, 21, 346, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (284, 21, 349, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (285, 21, 611, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (286, 21, 357, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (287, 21, 614, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (288, 21, 615, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (289, 21, 617, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (290, 21, 622, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (291, 21, 110, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (292, 21, 246, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (293, 22, 477, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (294, 22, 259, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (295, 22, 387, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (296, 22, 453, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (297, 22, 69, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (298, 22, 392, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (299, 22, 76, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (300, 22, 15, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (301, 22, 51, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (302, 22, 404, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (303, 22, 405, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (304, 22, 278, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (305, 22, 476, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (306, 22, 509, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (307, 22, 223, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (308, 23, 131, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (309, 23, 12, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (310, 23, 270, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (311, 23, 539, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (312, 23, 540, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (313, 23, 157, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (314, 23, 29, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (315, 23, 164, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (316, 23, 550, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (317, 23, 305, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (318, 23, 568, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (319, 23, 192, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (320, 23, 584, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (321, 23, 331, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (322, 23, 208, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (323, 23, 210, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (324, 23, 87, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (325, 23, 474, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (326, 23, 355, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (327, 23, 615, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (328, 23, 112, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (329, 23, 241, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (330, 23, 368, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (331, 23, 497, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (332, 24, 512, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (333, 24, 18, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (334, 24, 148, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (335, 24, 20, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (336, 24, 408, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (337, 24, 152, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (338, 24, 540, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (339, 24, 28, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (340, 24, 30, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (341, 24, 55, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (342, 24, 316, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (343, 24, 587, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (344, 24, 463, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (345, 24, 340, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (346, 24, 85, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (347, 24, 596, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (348, 24, 344, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (349, 24, 345, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (350, 24, 361, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (351, 24, 495, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (352, 24, 373, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (353, 24, 248, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (354, 24, 505, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (355, 24, 255, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (356, 25, 128, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (357, 25, 486, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (358, 25, 359, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (359, 25, 265, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (360, 25, 171, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (361, 25, 300, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (362, 25, 430, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (363, 25, 431, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (364, 25, 591, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (365, 25, 625, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (366, 25, 243, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (367, 25, 117, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (368, 25, 439, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (369, 25, 26, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (370, 25, 188, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (371, 25, 255, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (372, 26, 548, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (373, 26, 261, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (374, 26, 425, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (375, 26, 561, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (376, 26, 468, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (377, 26, 373, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (378, 26, 342, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (379, 26, 278, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (380, 26, 24, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (381, 26, 26, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (382, 26, 251, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (383, 26, 415, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (384, 27, 67, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (385, 27, 517, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (386, 27, 327, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (387, 27, 456, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (388, 27, 589, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (389, 27, 373, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (390, 28, 256, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (391, 28, 546, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (392, 28, 244, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (393, 28, 597, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (394, 28, 502, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (395, 28, 600, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (396, 29, 229, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (397, 29, 262, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (398, 30, 439, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (399, 31, 1, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (400, 31, 547, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (401, 31, 202, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (402, 31, 187, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (403, 31, 119, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (404, 31, 91, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (405, 31, 285, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (406, 31, 95, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (407, 32, 3, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (408, 32, 5, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (409, 32, 279, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (410, 32, 29, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (411, 32, 286, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (412, 32, 545, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (413, 32, 163, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (414, 32, 172, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (415, 32, 173, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (416, 32, 180, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (417, 32, 441, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (418, 32, 191, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (419, 32, 577, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (420, 32, 193, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (421, 32, 203, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (422, 32, 204, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (423, 32, 78, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (424, 32, 82, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (425, 32, 83, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (426, 32, 107, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (427, 32, 237, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (428, 32, 110, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (429, 32, 113, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (430, 32, 497, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (431, 32, 249, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (432, 32, 507, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (433, 33, 163, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (434, 33, 581, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (435, 33, 550, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (436, 33, 296, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (437, 33, 200, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (438, 33, 235, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (439, 33, 111, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (440, 33, 560, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (441, 33, 241, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (442, 33, 207, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (443, 33, 22, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (444, 33, 440, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (445, 33, 445, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (446, 33, 479, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (447, 34, 288, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (448, 34, 1, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (449, 34, 578, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (450, 34, 3, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (451, 34, 103, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (452, 34, 168, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (453, 34, 329, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (454, 34, 361, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (455, 34, 618, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (456, 34, 327, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (457, 34, 333, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (458, 34, 425, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (459, 34, 555, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (460, 34, 273, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (461, 34, 338, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (462, 34, 563, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (463, 34, 179, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (464, 34, 539, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (465, 34, 155, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (466, 34, 63, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (467, 35, 65, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (468, 35, 194, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (469, 35, 355, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (470, 35, 611, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (471, 35, 106, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (472, 35, 203, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (473, 35, 238, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (474, 35, 156, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (475, 35, 242, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (476, 35, 531, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (477, 35, 22, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (478, 35, 502, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (479, 35, 120, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (480, 35, 505, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (481, 35, 443, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (482, 35, 380, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (483, 35, 254, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (484, 36, 384, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (485, 36, 288, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (486, 36, 547, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (487, 36, 196, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (488, 36, 454, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (489, 36, 423, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (490, 36, 77, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (491, 36, 47, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (492, 36, 594, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (493, 36, 149, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (494, 36, 86, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (495, 36, 125, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (496, 36, 216, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (497, 36, 605, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (498, 36, 190, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (499, 36, 255, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (500, 37, 133, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (501, 37, 266, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (502, 37, 525, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (503, 37, 400, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (504, 37, 149, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (505, 37, 37, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (506, 37, 172, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (507, 37, 44, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (508, 37, 558, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (509, 37, 47, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (510, 37, 431, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (511, 37, 177, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (512, 37, 312, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (513, 37, 450, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (514, 37, 204, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (515, 37, 78, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (516, 37, 465, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (517, 37, 466, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (518, 37, 211, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (519, 37, 222, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (520, 37, 607, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (521, 37, 102, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (522, 37, 492, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (523, 37, 109, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (524, 37, 625, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (525, 37, 500, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (526, 37, 255, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (527, 38, 513, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (528, 38, 524, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (529, 38, 535, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (530, 38, 282, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (531, 38, 171, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (532, 38, 299, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (533, 38, 442, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (534, 38, 574, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (535, 38, 194, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (536, 38, 210, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (537, 38, 82, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (538, 38, 338, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (539, 38, 95, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (540, 38, 96, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (541, 38, 355, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (542, 38, 100, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (543, 38, 486, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (544, 38, 616, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (545, 38, 365, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (546, 38, 499, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (547, 38, 244, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (548, 39, 193, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (549, 39, 161, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (550, 39, 350, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (551, 39, 74, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (552, 39, 587, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (553, 39, 332, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (554, 39, 623, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (555, 39, 176, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (556, 39, 563, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (557, 39, 405, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (558, 39, 571, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (559, 39, 254, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (560, 40, 128, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (561, 40, 257, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (562, 40, 131, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (563, 40, 262, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (564, 40, 263, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (565, 40, 20, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (566, 40, 24, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (567, 40, 25, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (568, 40, 29, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (569, 40, 568, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (570, 40, 570, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (571, 40, 58, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (572, 40, 444, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (573, 40, 452, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (574, 40, 582, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (575, 40, 71, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (576, 40, 198, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (577, 40, 77, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (578, 40, 592, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (579, 40, 217, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (580, 40, 223, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (581, 40, 224, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (582, 40, 98, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (583, 40, 365, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (584, 40, 366, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (585, 40, 623, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (586, 40, 122, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (587, 41, 449, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (588, 41, 194, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (589, 41, 547, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (590, 41, 4, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (591, 41, 613, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (592, 41, 483, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (593, 41, 103, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (594, 41, 616, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (595, 41, 361, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (596, 41, 590, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (597, 41, 142, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (598, 41, 527, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (599, 41, 54, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (600, 41, 311, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (601, 41, 536, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (602, 41, 251, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (603, 41, 189, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (604, 41, 543, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (605, 42, 260, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (606, 42, 5, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (607, 42, 134, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (608, 42, 6, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (609, 42, 263, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (610, 42, 395, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (611, 42, 397, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (612, 42, 527, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (613, 42, 412, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (614, 42, 156, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (615, 42, 163, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (616, 42, 421, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (617, 42, 167, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (618, 42, 59, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (619, 42, 571, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (620, 42, 573, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (621, 42, 62, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (622, 42, 454, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (623, 42, 599, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (624, 42, 473, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (625, 42, 603, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (626, 42, 230, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (627, 42, 242, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (628, 42, 120, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (629, 43, 256, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (630, 43, 354, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (631, 43, 35, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (632, 43, 328, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (633, 43, 235, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (634, 43, 45, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (635, 43, 47, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (636, 43, 208, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (637, 43, 241, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (638, 43, 242, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (639, 43, 243, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (640, 43, 180, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (641, 43, 443, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (642, 43, 248, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (643, 43, 314, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (644, 43, 539, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (645, 43, 479, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (646, 44, 353, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (647, 44, 609, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (648, 44, 291, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (649, 44, 356, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (650, 44, 197, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (651, 44, 38, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (652, 44, 158, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (653, 44, 330, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (654, 44, 76, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (655, 44, 590, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (656, 44, 274, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (657, 44, 22, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (658, 44, 344, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (659, 44, 473, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (660, 44, 59, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (661, 44, 350, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (662, 45, 5, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (663, 45, 234, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (664, 45, 593, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (665, 45, 115, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (666, 45, 89, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (667, 45, 282, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (668, 45, 31, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (669, 46, 259, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (670, 46, 143, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (671, 46, 18, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (672, 46, 406, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (673, 46, 535, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (674, 46, 408, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (675, 46, 537, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (676, 46, 22, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (677, 46, 542, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (678, 46, 159, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (679, 46, 32, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (680, 46, 163, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (681, 46, 563, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (682, 46, 464, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (683, 46, 84, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (684, 46, 217, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (685, 46, 354, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (686, 46, 102, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (687, 46, 360, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (688, 46, 491, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (689, 46, 238, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (690, 46, 497, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (691, 47, 136, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (692, 47, 8, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (693, 47, 393, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (694, 47, 396, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (695, 47, 145, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (696, 47, 274, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (697, 47, 407, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (698, 47, 155, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (699, 47, 28, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (700, 47, 159, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (701, 47, 424, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (702, 47, 306, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (703, 47, 307, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (704, 47, 566, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (705, 47, 313, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (706, 47, 187, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (707, 47, 96, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (708, 47, 233, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (709, 47, 362, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (710, 47, 107, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (711, 47, 111, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (712, 47, 501, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (713, 47, 507, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (714, 47, 382, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (715, 48, 384, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (716, 48, 263, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (717, 48, 7, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (718, 48, 141, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (719, 48, 532, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (720, 48, 280, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (721, 48, 154, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (722, 48, 539, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (723, 48, 34, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (724, 48, 183, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (725, 48, 577, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (726, 48, 200, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (727, 48, 585, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (728, 48, 468, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (729, 48, 596, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (730, 48, 94, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (731, 48, 354, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (732, 48, 357, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (733, 48, 101, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (734, 48, 491, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (735, 48, 494, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (736, 49, 194, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (737, 49, 195, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (738, 49, 290, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (739, 49, 581, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (740, 49, 263, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (741, 49, 425, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (742, 49, 42, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (743, 49, 586, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (744, 49, 618, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (745, 49, 508, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (746, 49, 398, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (747, 49, 174, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (748, 49, 302, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (749, 49, 538, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (750, 49, 539, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (751, 49, 412, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (752, 49, 287, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (753, 50, 544, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (754, 50, 388, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (755, 50, 356, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (756, 50, 287, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (757, 50, 102, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (758, 50, 552, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (759, 50, 297, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (760, 50, 555, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (761, 50, 236, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (762, 50, 429, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (763, 50, 174, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (764, 50, 401, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (765, 50, 596, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (766, 50, 245, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (767, 50, 89, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (768, 50, 570, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (769, 50, 27, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (770, 50, 92, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);
INSERT INTO Collect
VALUES (771, 50, 479, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE, TRUE, NULL, NULL);

/*!40000 ALTER TABLE `Collect` ENABLE KEYS */;
COMMIT;

--
-- Table structure for table `SearchHistory`
--

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;
DROP TABLE IF EXISTS `SearchHistory`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SearchHistory`
(
    `id`      int(11) NOT NULL AUTO_INCREMENT,
    `userId`  int(11) NOT NULL,
    `content` varchar(255) DEFAULT NULL,
    PRIMARY KEY (`id`)
) ENGINE = InnoDB
  AUTO_INCREMENT = 1
  DEFAULT CHARSET = utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SearchHistory`
--


BEGIN;
/*!40000 ALTER TABLE `SearchHistory` ENABLE KEYS */;
/*!40000 ALTER TABLE `SearchHistory` ENABLE KEYS */;
COMMIT;

--
-- Table structure for table `Fuzz`
--

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;
DROP TABLE IF EXISTS `Fuzz`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Fuzz`
(
    `id` int(11) NOT NULL AUTO_INCREMENT,
    `fuzzyWord1` varchar(255) NOT NULL,
    `fuzzyWord2` varchar(255) NOT NULL,
    `sqlId` varchar(255) NOT NULL,
    PRIMARY KEY (`id`)
) ENGINE = InnoDB
  AUTO_INCREMENT = 1
  DEFAULT CHARSET = utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Fuzz`
--

BEGIN;
/*!40000 ALTER TABLE `Fuzz` ENABLE KEYS */;
INSERT INTO Fuzz
VALUES (1, 'colorkeytokidoki唇釉B628', 'colorkeytokidoki唇釉戏梦伊甸园', 'colorkeytokidoki唇釉B628');
INSERT INTO Fuzz
VALUES (2, 'colorkeytokidoki唇釉R688', 'colorkeytokidoki唇釉梦境奇遇', 'colorkeytokidoki唇釉R688');
INSERT INTO Fuzz
VALUES (3, 'colorkeytokidoki唇釉B630', 'colorkeytokidoki唇釉午后狂想', 'colorkeytokidoki唇釉B630');
INSERT INTO Fuzz
VALUES (4, 'colorkeytokidoki唇釉R626', 'colorkeytokidoki唇釉花火狂欢', 'colorkeytokidoki唇釉R626');
INSERT INTO Fuzz
VALUES (5, 'colorkey丝绒唇釉R602', 'colorkey丝绒唇釉人间樱桃', 'colorkey丝绒唇釉R602');
INSERT INTO Fuzz
VALUES (6, 'colorkey丝绒唇釉613D', 'colorkey丝绒唇釉细闪红樱', 'colorkey丝绒唇釉613D');
INSERT INTO Fuzz
VALUES (7, 'colorkey丝绒唇釉R617', 'colorkey丝绒唇釉桑葚梅子', 'colorkey丝绒唇釉R617');
INSERT INTO Fuzz
VALUES (8, 'colorkey丝绒唇釉P615', 'colorkey丝绒唇釉樱花豆沙', 'colorkey丝绒唇釉P615');
INSERT INTO Fuzz
VALUES (9, 'colorkey丝绒唇釉B620', 'colorkey丝绒唇釉乌龙奶咖', 'colorkey丝绒唇釉B620');
INSERT INTO Fuzz
VALUES (10, 'colorkey丝绒唇釉R618', 'colorkey丝绒唇釉浓雾樱桃', 'colorkey丝绒唇釉R618');
INSERT INTO Fuzz
VALUES (11, 'colorkey丝绒唇釉B619', 'colorkey丝绒唇釉午夜南瓜', 'colorkey丝绒唇釉B619');
INSERT INTO Fuzz
VALUES (12, 'colorkey丝绒唇釉R625', 'colorkey丝绒唇釉红桃蜜茶', 'colorkey丝绒唇釉R625');
INSERT INTO Fuzz
VALUES (13, 'colorkey丝绒唇釉B605', 'colorkey丝绒唇釉肉桂蜜桃', 'colorkey丝绒唇釉B605');
INSERT INTO Fuzz
VALUES (14, 'colorkey丝绒唇釉B606', 'colorkey丝绒唇釉烟粉豆沙', 'colorkey丝绒唇釉B606');
INSERT INTO Fuzz
VALUES (15, 'colorkey丝绒唇釉R601', 'colorkey丝绒唇釉酒渍杨梅', 'colorkey丝绒唇釉R601');
INSERT INTO Fuzz
VALUES (16, 'colorkey丝绒唇釉R608', 'colorkey丝绒唇釉焦糖红棕', 'colorkey丝绒唇釉R608');
INSERT INTO Fuzz
VALUES (17, 'colorkey丝绒唇釉R609', 'colorkey丝绒唇釉冰糖红柿', 'colorkey丝绒唇釉R609');
INSERT INTO Fuzz
VALUES (18, 'colorkey丝绒唇釉O611', 'colorkey丝绒唇釉枫糖姜橘', 'colorkey丝绒唇釉O611');
INSERT INTO Fuzz
VALUES (19, 'colorkey丝绒唇釉R614', 'colorkey丝绒唇釉伯爵红茶', 'colorkey丝绒唇釉R614');
INSERT INTO Fuzz
VALUES (20, 'colorkey丝绒唇釉R666', 'colorkey丝绒唇釉珂拉琪红', 'colorkey丝绒唇釉R666');
INSERT INTO Fuzz
VALUES (21, 'colorkey丝绒唇釉666D', 'colorkey丝绒唇釉星碎山楂', 'colorkey丝绒唇釉666D');
INSERT INTO Fuzz
VALUES (22, 'colorkey丝绒唇釉R621', 'colorkey丝绒唇釉漫雾红莓', 'colorkey丝绒唇釉R621');
INSERT INTO Fuzz
VALUES (23, 'colorkey丝绒唇釉R622', 'colorkey丝绒唇釉烟熏玫瑰', 'colorkey丝绒唇釉R622');
INSERT INTO Fuzz
VALUES (24, 'colorkey丝绒唇釉611D', 'colorkey丝绒唇釉糖光橘子', 'colorkey丝绒唇釉611D');
INSERT INTO Fuzz
VALUES (25, 'colorkey丝绒唇釉MQ277', 'colorkey丝绒唇釉微醺酒红', 'colorkey丝绒唇釉MQ277');
INSERT INTO Fuzz
VALUES (26, 'colorkey丝绒唇釉MQ297', 'colorkey丝绒唇釉复古棕红', 'colorkey丝绒唇釉MQ297');
INSERT INTO Fuzz
VALUES (27, 'colorkey丝绒唇釉MQ287', 'colorkey丝绒唇釉蔓越花茶', 'colorkey丝绒唇釉MQ287');
INSERT INTO Fuzz
VALUES (28, 'colorkey丝绒唇釉MQ267', 'colorkey丝绒唇釉摩卡茶棕', 'colorkey丝绒唇釉MQ267');
INSERT INTO Fuzz
VALUES (29, 'colorkey丝绒唇釉R888', 'colorkey丝绒唇釉招财红梨', 'colorkey丝绒唇釉R888');
INSERT INTO Fuzz
VALUES (30, 'colorkey丝绒唇釉新年版R663', 'colorkey丝绒唇釉新年版大吉大栗', 'colorkey丝绒唇釉新年版R663');
INSERT INTO Fuzz
VALUES (31, 'colorkey丝绒唇釉新年版R666', 'colorkey丝绒唇釉新年版珂拉琪红新年版', 'colorkey丝绒唇釉新年版R666');
INSERT INTO Fuzz
VALUES (32, 'colorkey丝绒唇釉新年版R662', 'colorkey丝绒唇釉新年版红运赤茶', 'colorkey丝绒唇釉新年版R662');
INSERT INTO Fuzz
VALUES (33, 'colorkey哆啦A梦口红V03', 'colorkey哆啦A梦口红蜜桃乌龙', 'colorkey哆啦A梦口红V03');
INSERT INTO Fuzz
VALUES (34, 'colorkey哆啦A梦口红V01', 'colorkey哆啦A梦口红酒酿野莓', 'colorkey哆啦A梦口红V01');
INSERT INTO Fuzz
VALUES (35, 'colorkey哆啦A梦口红V02', 'colorkey哆啦A梦口红山楂甜茶', 'colorkey哆啦A梦口红V02');
INSERT INTO Fuzz
VALUES (36, 'colorkey哆啦A梦口红V06', 'colorkey哆啦A梦口红焦糖红栗', 'colorkey哆啦A梦口红V06');
INSERT INTO Fuzz
VALUES (37, 'colorkey哆啦A梦口红V04', 'colorkey哆啦A梦口红暖棕红茶', 'colorkey哆啦A梦口红V04');
INSERT INTO Fuzz
VALUES (38, 'colorkey哆啦A梦口红V07', 'colorkey哆啦A梦口红山茶红棕', 'colorkey哆啦A梦口红V07');
INSERT INTO Fuzz
VALUES (39, 'colorkey哆啦A梦唇釉O677', 'colorkey哆啦A梦唇釉枫叶冰茶', 'colorkey哆啦A梦唇釉O677');
INSERT INTO Fuzz
VALUES (40, 'colorkey哆啦A梦唇釉R608', 'colorkey哆啦A梦唇釉焦糖红棕', 'colorkey哆啦A梦唇釉R608');
INSERT INTO Fuzz
VALUES (41, 'colorkey哆啦A梦唇釉R671', 'colorkey哆啦A梦唇釉法甜红梨', 'colorkey哆啦A梦唇釉R671');
INSERT INTO Fuzz
VALUES (42, 'colorkey哆啦A梦唇釉B722', 'colorkey哆啦A梦唇釉茶透山楂', 'colorkey哆啦A梦唇釉B722');
INSERT INTO Fuzz
VALUES (43, 'colorkey哆啦A梦唇釉R688', 'colorkey哆啦A梦唇釉枫叶红梨', 'colorkey哆啦A梦唇釉R688');
INSERT INTO Fuzz
VALUES (44, 'colorkey哆啦A梦唇釉R633', 'colorkey哆啦A梦唇釉碎钻野莓', 'colorkey哆啦A梦唇釉R633');
INSERT INTO Fuzz
VALUES (45, 'colorkey哆啦A梦唇釉B655', 'colorkey哆啦A梦唇釉杏仁奶咖', 'colorkey哆啦A梦唇釉B655');
INSERT INTO Fuzz
VALUES (46, 'colorkey哆啦A梦唇釉B605', 'colorkey哆啦A梦唇釉肉桂蜜桃', 'colorkey哆啦A梦唇釉B605');
INSERT INTO Fuzz
VALUES (47, 'colorkey哆啦A梦唇釉B630', 'colorkey哆啦A梦唇釉茶透琥珀', 'colorkey哆啦A梦唇釉B630');
INSERT INTO Fuzz
VALUES (48, 'colorkey哆啦A梦唇釉R644', 'colorkey哆啦A梦唇釉赤茶红棕', 'colorkey哆啦A梦唇釉R644');
INSERT INTO Fuzz
VALUES (49, 'colorkey哆啦A梦唇釉B674', 'colorkey哆啦A梦唇釉赤陶红茶', 'colorkey哆啦A梦唇釉B674');
INSERT INTO Fuzz
VALUES (50, 'colorkey哆啦A梦唇釉R672', 'colorkey哆啦A梦唇釉蜜桃春茶', 'colorkey哆啦A梦唇釉R672');
INSERT INTO Fuzz
VALUES (51, 'colorkey哆啦A梦唇釉R670', 'colorkey哆啦A梦唇釉红荔菓子', 'colorkey哆啦A梦唇釉R670');
INSERT INTO Fuzz
VALUES (52, 'colorkey哆啦A梦唇釉B675', 'colorkey哆啦A梦唇釉甜榛伯爵', 'colorkey哆啦A梦唇釉B675');
INSERT INTO Fuzz
VALUES (53, 'colorkey哆啦A梦唇釉B721', 'colorkey哆啦A梦唇釉暖棕茶咖', 'colorkey哆啦A梦唇釉B721');
INSERT INTO Fuzz
VALUES (54, 'colorkey哆啦A梦唇釉R720', 'colorkey哆啦A梦唇釉红莓冰茶', 'colorkey哆啦A梦唇釉R720');
INSERT INTO Fuzz
VALUES (55, 'colorkey哆啦A梦唇釉R673', 'colorkey哆啦A梦唇釉玫瑰乌龙', 'colorkey哆啦A梦唇釉R673');
INSERT INTO Fuzz
VALUES (56, 'colorkey哑光唇釉R110', 'colorkey哑光唇釉半糖醋栗', 'colorkey哑光唇釉R110');
INSERT INTO Fuzz
VALUES (57, 'colorkey哑光唇釉R111', 'colorkey哑光唇釉血浆莓红', 'colorkey哑光唇釉R111');
INSERT INTO Fuzz
VALUES (58, 'colorkey哑光唇釉R108', 'colorkey哑光唇釉焦糖红栗', 'colorkey哑光唇釉R108');
INSERT INTO Fuzz
VALUES (59, 'colorkey哑光唇釉P119', 'colorkey哑光唇釉烟熏野莓', 'colorkey哑光唇釉P119');
INSERT INTO Fuzz
VALUES (60, 'colorkey哑光唇釉B118', 'colorkey哑光唇釉枫叶砖红', 'colorkey哑光唇釉B118');
INSERT INTO Fuzz
VALUES (61, 'colorkey哑光唇釉B113', 'colorkey哑光唇釉微醺蔷薇', 'colorkey哑光唇釉B113');
INSERT INTO Fuzz
VALUES (62, 'colorkey哑光唇釉O116', 'colorkey哑光唇釉蜜糖红橘', 'colorkey哑光唇釉O116');
INSERT INTO Fuzz
VALUES (63, 'colorkey哑光唇釉P112', 'colorkey哑光唇釉豆蔻奶咖', 'colorkey哑光唇釉P112');
INSERT INTO Fuzz
VALUES (64, 'colorkey哑光唇釉R115', 'colorkey哑光唇釉樱桃慕斯', 'colorkey哑光唇釉R115');
INSERT INTO Fuzz
VALUES (65, 'colorkey哑光唇釉O109', 'colorkey哑光唇釉赤橙落日', 'colorkey哑光唇釉O109');
INSERT INTO Fuzz
VALUES (66, 'colorkey哑光唇釉R114', 'colorkey哑光唇釉爆浆梅子', 'colorkey哑光唇釉R114');
INSERT INTO Fuzz
VALUES (67, 'colorkey哑光唇釉R120', 'colorkey哑光唇釉焦糖烤栗', 'colorkey哑光唇釉R120');
INSERT INTO Fuzz
VALUES (68, 'colorkey哑光唇釉R117', 'colorkey哑光唇釉摩卡红棕', 'colorkey哑光唇釉R117');
INSERT INTO Fuzz
VALUES (69, 'colorkey小黑镜唇釉R802', 'colorkey小黑镜唇釉甜心玫瑰', 'colorkey小黑镜唇釉R802');
INSERT INTO Fuzz
VALUES (70, 'colorkey小黑镜唇釉P701', 'colorkey小黑镜唇釉熟透山楂', 'colorkey小黑镜唇釉P701');
INSERT INTO Fuzz
VALUES (71, 'colorkey小黑镜唇釉R702', 'colorkey小黑镜唇釉微醺枣泥', 'colorkey小黑镜唇釉R702');
INSERT INTO Fuzz
VALUES (72, 'colorkey小黑镜唇釉R703', 'colorkey小黑镜唇釉酸甜草莓', 'colorkey小黑镜唇釉R703');
INSERT INTO Fuzz
VALUES (73, 'colorkey小黑镜唇釉R704', 'colorkey小黑镜唇釉晶透苹果', 'colorkey小黑镜唇釉R704');
INSERT INTO Fuzz
VALUES (74, 'colorkey小黑镜唇釉B709', 'colorkey小黑镜唇釉栗子糖棕', 'colorkey小黑镜唇釉B709');
INSERT INTO Fuzz
VALUES (75, 'colorkey小黑镜唇釉R715', 'colorkey小黑镜唇釉焦糖红栗', 'colorkey小黑镜唇釉R715');
INSERT INTO Fuzz
VALUES (76, 'colorkey小黑镜唇釉R718', 'colorkey小黑镜唇釉王炸浆果', 'colorkey小黑镜唇釉R718');
INSERT INTO Fuzz
VALUES (77, 'colorkey小黑镜唇釉R803', 'colorkey小黑镜唇釉殷红辣椒', 'colorkey小黑镜唇釉R803');
INSERT INTO Fuzz
VALUES (78, 'colorkey小黑镜唇釉B705', 'colorkey小黑镜唇釉焦糖奶茶', 'colorkey小黑镜唇釉B705');
INSERT INTO Fuzz
VALUES (79, 'colorkey小黑镜唇釉R706', 'colorkey小黑镜唇釉可人西柚', 'colorkey小黑镜唇釉R706');
INSERT INTO Fuzz
VALUES (80, 'colorkey小黑镜唇釉P707', 'colorkey小黑镜唇釉浆果摩卡', 'colorkey小黑镜唇釉P707');
INSERT INTO Fuzz
VALUES (81, 'colorkey小黑镜唇釉B708', 'colorkey小黑镜唇釉蜜桃赤茶', 'colorkey小黑镜唇釉B708');
INSERT INTO Fuzz
VALUES (82, 'colorkey小黑镜唇釉B711', 'colorkey小黑镜唇釉赤焰茶橘', 'colorkey小黑镜唇釉B711');
INSERT INTO Fuzz
VALUES (83, 'colorkey小黑镜唇釉B804', 'colorkey小黑镜唇釉晶透番茄', 'colorkey小黑镜唇釉B804');
INSERT INTO Fuzz
VALUES (84, 'colorkey小黑镜唇釉P710', 'colorkey小黑镜唇釉蜜桃珊瑚', 'colorkey小黑镜唇釉P710');
INSERT INTO Fuzz
VALUES (85, 'colorkey小黑镜唇釉P712', 'colorkey小黑镜唇釉半熟樱桃', 'colorkey小黑镜唇釉P712');
INSERT INTO Fuzz
VALUES (86, 'colorkey小黑镜唇釉O716', 'colorkey小黑镜唇釉奶茶蜜桔', 'colorkey小黑镜唇釉O716');
INSERT INTO Fuzz
VALUES (87, 'colorkey小黑镜唇釉P713', 'colorkey小黑镜唇釉桃桃奶冻', 'colorkey小黑镜唇釉P713');
INSERT INTO Fuzz
VALUES (88, 'colorkey小黑镜唇釉R714', 'colorkey小黑镜唇釉玫瑰甜酒', 'colorkey小黑镜唇釉R714');
INSERT INTO Fuzz
VALUES (89, 'colorkey小黑镜唇釉R777', 'colorkey小黑镜唇釉繁星蜜宇', 'colorkey小黑镜唇釉R777');
INSERT INTO Fuzz
VALUES (90, 'colorkey烙印唇釉R504', 'colorkey烙印唇釉枣泥红番', 'colorkey烙印唇釉R504');
INSERT INTO Fuzz
VALUES (91, 'colorkey烙印唇釉R508', 'colorkey烙印唇釉甜茶红榴', 'colorkey烙印唇釉R508');
INSERT INTO Fuzz
VALUES (92, 'colorkey烙印唇釉R506', 'colorkey烙印唇釉微醺莓酒', 'colorkey烙印唇釉R506');
INSERT INTO Fuzz
VALUES (93, 'colorkey烙印唇釉B501', 'colorkey烙印唇釉茶茶姜橘', 'colorkey烙印唇釉B501');
INSERT INTO Fuzz
VALUES (94, 'colorkey烙印唇釉B502', 'colorkey烙印唇釉红栗慕斯', 'colorkey烙印唇釉B502');
INSERT INTO Fuzz
VALUES (95, 'colorkey烙印唇釉B509', 'colorkey烙印唇釉南瓜栗棕', 'colorkey烙印唇釉B509');
INSERT INTO Fuzz
VALUES (96, 'colorkey烙印唇釉B507', 'colorkey烙印唇釉茶透松果', 'colorkey烙印唇釉B507');
INSERT INTO Fuzz
VALUES (97, 'colorkey烙印唇釉R503', 'colorkey烙印唇釉甜野莓菓', 'colorkey烙印唇釉R503');
INSERT INTO Fuzz
VALUES (98, 'colorkey烙印唇釉B505', 'colorkey烙印唇釉脏脏茶咖', 'colorkey烙印唇釉B505');
INSERT INTO Fuzz
VALUES (99, 'colorkey黑丝缎唇釉R908', 'colorkey黑丝缎唇釉烤茶栗棕', 'colorkey黑丝缎唇釉R908');
INSERT INTO Fuzz
VALUES (100, 'colorkey黑丝缎唇釉R901', 'colorkey黑丝缎唇釉海盐山楂', 'colorkey黑丝缎唇釉R901');
INSERT INTO Fuzz
VALUES (101, 'colorkey黑丝缎唇釉B905', 'colorkey黑丝缎唇釉雪顶冰咖', 'colorkey黑丝缎唇釉B905');
INSERT INTO Fuzz
VALUES (102, 'colorkey黑丝缎唇釉R902', 'colorkey黑丝缎唇釉冰冻茶橘', 'colorkey黑丝缎唇釉R902');
INSERT INTO Fuzz
VALUES (103, 'colorkey黑丝缎唇釉R906', 'colorkey黑丝缎唇釉星钻甜莓', 'colorkey黑丝缎唇釉R906');
INSERT INTO Fuzz
VALUES (104, 'MACmini子弹头Ruby Woo', 'MACmini子弹头复古哑光红', 'MACmini子弹头迷你707');
INSERT INTO Fuzz
VALUES (105, 'MACmini子弹头Russian Red', 'MACmini子弹头俄罗斯红', 'MACmini子弹头迷你612');
INSERT INTO Fuzz
VALUES (106, 'MACmini子弹头Chili', 'MACmini子弹头秀智色/小辣椒色', 'MACmini子弹头迷你602');
INSERT INTO Fuzz
VALUES (107, 'MAC柔雾液体唇釉A LITTLE', 'MAC柔雾液体唇釉TAMED', 'MAC柔雾液体唇釉988');
INSERT INTO Fuzz
VALUES (108, 'MAC柔雾液体唇釉MULL IT OVER', 'MAC柔雾液体唇釉白桃奶盖色', 'MAC柔雾液体唇釉989');
INSERT INTO Fuzz
VALUES (109, 'MAC柔雾液体唇釉DEVOTED TO CHILLI', 'MAC柔雾液体唇釉攻心小辣椒', 'MAC柔雾液体唇釉991');
INSERT INTO Fuzz
VALUES (110, 'MAC柔雾液体唇釉SORRY NOT SORRY', 'MAC柔雾液体唇釉清甜南瓜色', 'MAC柔雾液体唇釉998');
INSERT INTO Fuzz
VALUES (111, 'MAC柔雾液体唇釉994', 'MAC柔雾液体唇釉王炸浆果', 'MAC柔雾液体唇釉994');
INSERT INTO Fuzz
VALUES (112, 'MAC柔雾液体唇釉MAC', 'MAC柔雾液体唇釉SMASH', 'MAC柔雾液体唇釉987');
INSERT INTO Fuzz
VALUES (113, 'MAC渐变子弹头BATED BREATH', 'MAC渐变子弹头暖玫瑰棕色', 'MAC渐变子弹头408');
INSERT INTO Fuzz
VALUES (114, 'MAC渐变子弹头423', 'MAC渐变子弹头浓郁血浆色', 'MAC渐变子弹头423');
INSERT INTO Fuzz
VALUES (115, 'MAC糖果玻璃唇釉VARNISHLY RED', 'MAC糖果玻璃唇釉樱桃红色', 'MAC糖果玻璃唇釉108');
INSERT INTO Fuzz
VALUES (116, 'MAC糖果玻璃唇釉NO INTERRUPTION', 'MAC糖果玻璃唇釉车厘子色', 'MAC糖果玻璃唇釉106');
INSERT INTO Fuzz
VALUES (117, 'MAC糖果玻璃唇釉TATTOO MY HEART', 'MAC糖果玻璃唇釉斩男色', 'MAC糖果玻璃唇釉116');
INSERT INTO Fuzz
VALUES (118, 'MAC糖果玻璃唇釉CAN\'T STOP WON\'T STOP', 'MAC糖果玻璃唇釉黁橘色', 'MAC糖果玻璃唇釉113');
INSERT INTO Fuzz
VALUES (119, 'MAC经典子弹头MARRAKESH', 'MAC经典子弹头脏橘色', 'MAC经典子弹头646');
INSERT INTO Fuzz
VALUES (120, 'MAC经典子弹头Relentlessly Red', 'MAC经典子弹头粉调珊瑚红', 'MAC经典子弹头706');
INSERT INTO Fuzz
VALUES (121, 'MAC经典子弹头Dare You', 'MAC经典子弹头宝石红', 'MAC经典子弹头207');
INSERT INTO Fuzz
VALUES (122, 'MAC经典子弹头Vegas Volt', 'MAC经典子弹头珊瑚色', 'MAC经典子弹头120');
INSERT INTO Fuzz
VALUES (123, 'MAC经典子弹头Twig', 'MAC经典子弹头浅棕粉色', 'MAC经典子弹头824');
INSERT INTO Fuzz
VALUES (124, 'MAC经典子弹头Cockney', 'MAC经典子弹头草莓红', 'MAC经典子弹头502');
INSERT INTO Fuzz
VALUES (125, 'MAC经典子弹头Dozen Carnations', 'MAC经典子弹头一打康乃馨', 'MAC经典子弹头232');
INSERT INTO Fuzz
VALUES (126, 'MAC经典子弹头Fresh Moroccan', 'MAC经典子弹头人鱼红棕色', 'MAC经典子弹头309');
INSERT INTO Fuzz
VALUES (127, 'MAC经典子弹头See Sheer', 'MAC经典子弹头水润西柚色', 'MAC经典子弹头520');
INSERT INTO Fuzz
VALUES (128, 'MAC经典子弹头Russian Red', 'MAC经典子弹头俄罗斯红', 'MAC经典子弹头612');
INSERT INTO Fuzz
VALUES (129, 'MAC经典子弹头Mocha', 'MAC经典子弹头摩卡奶茶色', 'MAC经典子弹头813');
INSERT INTO Fuzz
VALUES (130, 'MAC经典子弹头Lady Bug', 'MAC经典子弹头番茄红', 'MAC经典子弹头510');
INSERT INTO Fuzz
VALUES (131, 'MAC经典子弹头Diva', 'MAC经典子弹头姨妈色', 'MAC经典子弹头603');
INSERT INTO Fuzz
VALUES (132, 'MAC经典子弹头Ruby Woo', 'MAC经典子弹头复古哑光红', 'MAC经典子弹头707');
INSERT INTO Fuzz
VALUES (133, 'MAC经典子弹头Morange', 'MAC经典子弹头奶油亮橘', 'MAC经典子弹头115');
INSERT INTO Fuzz
VALUES (134, 'MAC经典子弹头Mac Red', 'MAC经典子弹头明亮蓝红色', 'MAC经典子弹头#Red');
INSERT INTO Fuzz
VALUES (135, 'MAC经典子弹头Lady Danger', 'MAC经典子弹头亮珊瑚橘', 'MAC经典子弹头607');
INSERT INTO Fuzz
VALUES (136, 'MAC经典子弹头Dangerous', 'MAC经典子弹头哑光橙红', 'MAC经典子弹头702');
INSERT INTO Fuzz
VALUES (137, 'MAC经典子弹头Chili', 'MAC经典子弹头秀智色/小辣椒色', 'MAC经典子弹头602');
INSERT INTO Fuzz
VALUES (138, 'MAC经典子弹头D For Danger', 'MAC经典子弹头哑光浆果色', 'MAC经典子弹头630');
INSERT INTO Fuzz
VALUES (139, 'MAC经典子弹头Brick o La', 'MAC经典子弹头豆沙红', 'MAC经典子弹头102');
INSERT INTO Fuzz
VALUES (140, 'MAC经典子弹头Red Rock', 'MAC经典子弹头蓝调正红色', 'MAC经典子弹头640');
INSERT INTO Fuzz
VALUES (141, 'MAC经典子弹头Sweet Sakura', 'MAC经典子弹头樱花红', 'MAC经典子弹头233');
INSERT INTO Fuzz
VALUES (142, 'MAC经典子弹头All Fired Up', 'MAC经典子弹头亮紫红色', 'MAC经典子弹头701');
INSERT INTO Fuzz
VALUES (143, 'MAC经典子弹头Dubonnet', 'MAC经典子弹头牛血红', 'MAC经典子弹头108');
INSERT INTO Fuzz
VALUES (144, 'MAC经典子弹头cb96', 'MAC经典子弹头闪亮星泽人鱼姬限量版', 'MAC经典子弹头cb96');
INSERT INTO Fuzz
VALUES (145, 'MAC经典子弹头runway hit', 'MAC经典子弹头西柚色', 'MAC经典子弹头703');
INSERT INTO Fuzz
VALUES (146, 'MAC经典子弹头Spice it up', 'MAC经典子弹头红棕色', 'MAC经典子弹头522');
INSERT INTO Fuzz
VALUES (147, 'MAC限定尤雾弹Mandarin O', 'MAC限定尤雾弹少女西柚色', 'MAC限定尤雾弹308');
INSERT INTO Fuzz
VALUES (148, 'MAC限定尤雾弹devoted to chili', 'MAC限定尤雾弹柔雾小辣椒', 'MAC限定尤雾弹316');
INSERT INTO Fuzz
VALUES (149, 'MAC限定尤雾弹mull it over', 'MAC限定尤雾弹蜜桃奶茶色', 'MAC限定尤雾弹314');
INSERT INTO Fuzz
VALUES (150, 'MAC限定尤雾弹lasting passion', 'MAC限定尤雾弹复古鲜玫瑰', 'MAC限定尤雾弹315');
INSERT INTO Fuzz
VALUES (151, 'MAC限定尤雾弹Stay Curious', 'MAC限定尤雾弹糖渍樱花色', 'MAC限定尤雾弹923');
INSERT INTO Fuzz
VALUES (152, 'MAC限定尤雾弹Burning Love', 'MAC限定尤雾弹梅子浆果色', 'MAC限定尤雾弹305');
INSERT INTO Fuzz
VALUES (153, 'MAC限定尤雾弹306', 'MAC限定尤雾弹复古红莓色', 'MAC限定尤雾弹306');
INSERT INTO Fuzz
VALUES (154, 'MAC限定尤雾弹STYLE SHOCKED', 'MAC限定尤雾弹胡萝卜汁色', 'MAC限定尤雾弹303');
INSERT INTO Fuzz
VALUES (155, 'MAC限定尤雾弹927', 'MAC限定尤雾弹低糖黑巧色', 'MAC限定尤雾弹927');
INSERT INTO Fuzz
VALUES (156, 'NARS唇膏口红MONA', 'NARS唇膏口红红咖色', 'NARS唇膏口红9497');
INSERT INTO Fuzz
VALUES (157, 'NARS唇膏口红IMMORTAL RED', 'NARS唇膏口红永生红', 'NARS唇膏口红975');
INSERT INTO Fuzz
VALUES (158, 'NARS空气柔雾唇霜049', 'NARS空气柔雾唇霜糖霜车厘子', 'NARS空气柔雾唇霜049');
INSERT INTO Fuzz
VALUES (159, 'NARS空气柔雾唇霜039', 'NARS空气柔雾唇霜奶盖蜜桃色', 'NARS空气柔雾唇霜039');
INSERT INTO Fuzz
VALUES (160, 'NARS空气柔雾唇霜041', 'NARS空气柔雾唇霜小橘钉', 'NARS空气柔雾唇霜041');
INSERT INTO Fuzz
VALUES (161, 'YSL圆管83', 'YSL圆管复古红', 'YSL圆管83');
INSERT INTO Fuzz
VALUES (162, 'YSL圆管80', 'YSL圆管番茄红', 'YSL圆管80');
INSERT INTO Fuzz
VALUES (163, 'YSL圆管12', 'YSL圆管斩男色', 'YSL圆管12');
INSERT INTO Fuzz
VALUES (164, 'YSL天鹅绒唇釉212', 'YSL天鹅绒唇釉焦糖朋克', 'YSL天鹅绒唇釉212');
INSERT INTO Fuzz
VALUES (165, 'YSL天鹅绒唇釉216', 'YSL天鹅绒唇釉豆沙波普', 'YSL天鹅绒唇釉216');
INSERT INTO Fuzz
VALUES (166, 'YSL天鹅绒唇釉211', 'YSL天鹅绒唇釉日落变奏', 'YSL天鹅绒唇釉211');
INSERT INTO Fuzz
VALUES (167, 'YSL方管N83', 'YSL方管番茄色', 'YSL方管N83');
INSERT INTO Fuzz
VALUES (168, 'YSL方管N°1', 'YSL方管正红色', 'YSL方管N°1');
INSERT INTO Fuzz
VALUES (169, 'YSL方管1966', 'YSL方管暖棕红', 'YSL方管1966');
INSERT INTO Fuzz
VALUES (170, 'YSL方管N1', 'YSL方管正红色', 'YSL方管N1');
INSERT INTO Fuzz
VALUES (171, 'YSL方管N13', 'YSL方管正橘色', 'YSL方管N13');
INSERT INTO Fuzz
VALUES (172, 'YSL细管N01', 'YSL细管呛口辣椒', 'YSL细管N01');
INSERT INTO Fuzz
VALUES (173, 'YSL细管N21', 'YSL细管复古正红', 'YSL细管N21');
INSERT INTO Fuzz
VALUES (174, 'YSL细管N09', 'YSL细管棕调酒红', 'YSL细管N09');
INSERT INTO Fuzz
VALUES (175, 'YSL细管N11', 'YSL细管肉桂杏粉', 'YSL细管N11');
INSERT INTO Fuzz
VALUES (176, 'YSL细管N12', 'YSL细管干枯玫瑰', 'YSL细管N12');
INSERT INTO Fuzz
VALUES (177, 'YSL细管N10', 'YSL细管元气蜜橘', 'YSL细管N10');
INSERT INTO Fuzz
VALUES (178, 'YSL细管N23', 'YSL细管橙红番茄', 'YSL细管N23');
INSERT INTO Fuzz
VALUES (179, 'YSL细管N28', 'YSL细管高阶胡萝卜', 'YSL细管N28');
INSERT INTO Fuzz
VALUES (180, 'YSL细管N207', 'YSL细管透茶香槟', 'YSL细管N207');
INSERT INTO Fuzz
VALUES (181, 'YSL细管N214', 'YSL细管琥珀南瓜棕', 'YSL细管N214');
INSERT INTO Fuzz
VALUES (182, 'YSL细管N30', 'YSL细管枣泥红棕', 'YSL细管N30');
INSERT INTO Fuzz
VALUES (183, 'YSL细管N203', 'YSL细管粉晶蜜桃', 'YSL细管N203');
INSERT INTO Fuzz
VALUES (184, 'YSL细管N204', 'YSL细管粉晶厘子', 'YSL细管N204');
INSERT INTO Fuzz
VALUES (185, 'YSL细管107', 'YSL细管薄纱酒渍红', 'YSL细管107');
INSERT INTO Fuzz
VALUES (186, 'YSL细管416', 'YSL细管番茄红', 'YSL细管416');
INSERT INTO Fuzz
VALUES (187, 'YSL细管N202', 'YSL细管粉晶红栗', 'YSL细管N202');
INSERT INTO Fuzz
VALUES (188, 'YSL细管N213', 'YSL细管琥珀茶棕', 'YSL细管N213');
INSERT INTO Fuzz
VALUES (189, 'YSL细管1966', 'YSL细管红棕色', 'YSL细管1966');
INSERT INTO Fuzz
VALUES (190, 'YSL黑管唇釉416', 'YSL黑管唇釉番茄红', 'YSL黑管唇釉416');
INSERT INTO Fuzz
VALUES (191, '兰蔻菁纯丝绒雾面哑光唇膏196', '兰蔻菁纯丝绒雾面哑光唇膏胡萝卜色', '兰蔻菁纯丝绒雾面哑光唇膏196');
INSERT INTO Fuzz
VALUES (192, '兰蔻菁纯柔雾哑光唇膏888', '兰蔻菁纯柔雾哑光唇膏小野莓', '兰蔻菁纯柔雾哑光唇膏888');
INSERT INTO Fuzz
VALUES (193, '兰蔻菁纯柔雾哑光唇膏278', '兰蔻菁纯柔雾哑光唇膏肉桂奶茶色', '兰蔻菁纯柔雾哑光唇膏278');
INSERT INTO Fuzz
VALUES (194, '兰蔻菁纯柔雾哑光唇膏274', '兰蔻菁纯柔雾哑光唇膏奶茶色', '兰蔻菁纯柔雾哑光唇膏274');
INSERT INTO Fuzz
VALUES (195, '兰蔻菁纯柔雾哑光唇膏169', '兰蔻菁纯柔雾哑光唇膏南瓜色', '兰蔻菁纯柔雾哑光唇膏169');
INSERT INTO Fuzz
VALUES (196, '兰蔻菁纯柔雾哑光唇膏196', '兰蔻菁纯柔雾哑光唇膏半哑光', '兰蔻菁纯柔雾哑光唇膏196');
INSERT INTO Fuzz
VALUES (197, '兰蔻菁纯柔雾染唇液481', '兰蔻菁纯柔雾染唇液浆果葡萄', '兰蔻菁纯柔雾染唇液481');
INSERT INTO Fuzz
VALUES (198, '兰蔻菁纯柔雾染唇液274', '兰蔻菁纯柔雾染唇液雾茶乌龙', '兰蔻菁纯柔雾染唇液274');
INSERT INTO Fuzz
VALUES (199, '兰蔻菁纯柔雾染唇液196', '兰蔻菁纯柔雾染唇液橘气苏打', '兰蔻菁纯柔雾染唇液196');
INSERT INTO Fuzz
VALUES (200, '兰蔻菁纯柔雾染唇液288', '兰蔻菁纯柔雾染唇液橘咖小奶猫', '兰蔻菁纯柔雾染唇液288');
INSERT INTO Fuzz
VALUES (201, '兰蔻菁纯柔雾染唇液888', '兰蔻菁纯柔雾染唇液莓果小野猫', '兰蔻菁纯柔雾染唇液888');
INSERT INTO Fuzz
VALUES (202, '卡姿兰幻境水光唇釉S03', '卡姿兰幻境水光唇釉漂浮萤火虫', '卡姿兰幻境水光唇釉S03');
INSERT INTO Fuzz
VALUES (203, '卡姿兰幻境水光唇釉S04', '卡姿兰幻境水光唇釉温柔白皇后', '卡姿兰幻境水光唇釉S04');
INSERT INTO Fuzz
VALUES (204, '卡姿兰水吻唇膏11', '卡姿兰水吻唇膏小辣椒', '卡姿兰水吻唇膏11');
INSERT INTO Fuzz
VALUES (205, '卡姿兰水吻唇膏17', '卡姿兰水吻唇膏冰奶茶', '卡姿兰水吻唇膏17');
INSERT INTO Fuzz
VALUES (206, '卡姿兰水吻唇膏10', '卡姿兰水吻唇膏辣条红', '卡姿兰水吻唇膏10');
INSERT INTO Fuzz
VALUES (207, '卡姿兰水吻唇膏09', '卡姿兰水吻唇膏小南瓜', '卡姿兰水吻唇膏09');
INSERT INTO Fuzz
VALUES (208, '卡姿兰水吻唇膏24', '卡姿兰水吻唇膏胡萝卜', '卡姿兰水吻唇膏24');
INSERT INTO Fuzz
VALUES (209, '卡姿兰水吻唇膏#17', '卡姿兰水吻唇膏冰奶茶', '卡姿兰水吻唇膏#17');
INSERT INTO Fuzz
VALUES (210, '卡姿兰甜吻唇釉AM12', '卡姿兰甜吻唇釉蜜桃柚子', '卡姿兰甜吻唇釉AM12');
INSERT INTO Fuzz
VALUES (211, '卡姿兰甜吻唇釉AM11', '卡姿兰甜吻唇釉樱花裸粉', '卡姿兰甜吻唇釉AM11');
INSERT INTO Fuzz
VALUES (212, '卡姿兰甜吻唇釉AM17', '卡姿兰甜吻唇釉烂番茄色', '卡姿兰甜吻唇釉AM17');
INSERT INTO Fuzz
VALUES (213, '卡姿兰甜吻唇釉AM19', '卡姿兰甜吻唇釉蔷薇花茶', '卡姿兰甜吻唇釉AM19');
INSERT INTO Fuzz
VALUES (214, '卡姿兰甜吻唇釉AM16', '卡姿兰甜吻唇釉暖甜柿红', '卡姿兰甜吻唇釉AM16');
INSERT INTO Fuzz
VALUES (215, '卡姿兰甜吻唇釉AM22', '卡姿兰甜吻唇釉复古女王', '卡姿兰甜吻唇釉AM22');
INSERT INTO Fuzz
VALUES (216, '卡姿兰甜吻唇釉AM20', '卡姿兰甜吻唇釉法式野树莓', '卡姿兰甜吻唇釉AM20');
INSERT INTO Fuzz
VALUES (217, '卡姿兰甜吻唇釉AM18', '卡姿兰甜吻唇釉胡萝卜泥', '卡姿兰甜吻唇釉AM18');
INSERT INTO Fuzz
VALUES (218, '卡姿兰甜吻唇釉AM14', '卡姿兰甜吻唇釉港风铁绣红', '卡姿兰甜吻唇釉AM14');
INSERT INTO Fuzz
VALUES (219, '卡姿兰甜吻唇釉AM15', '卡姿兰甜吻唇釉复古红栗', '卡姿兰甜吻唇釉AM15');
INSERT INTO Fuzz
VALUES (220, '卡姿兰甜吻唇釉AM21', '卡姿兰甜吻唇釉熔岩巧克力', '卡姿兰甜吻唇釉AM21');
INSERT INTO Fuzz
VALUES (221, '卡姿兰盈彩唇膏09', '卡姿兰盈彩唇膏姨妈色', '卡姿兰盈彩唇膏09');
INSERT INTO Fuzz
VALUES (222, '卡姿兰盈彩唇膏07', '卡姿兰盈彩唇膏正红色', '卡姿兰盈彩唇膏07');
INSERT INTO Fuzz
VALUES (223, '卡姿兰盈彩唇膏08', '卡姿兰盈彩唇膏显白色', '卡姿兰盈彩唇膏08');
INSERT INTO Fuzz
VALUES (224, '卡姿兰盈彩唇膏04', '卡姿兰盈彩唇膏枫叶红', '卡姿兰盈彩唇膏04');
INSERT INTO Fuzz
VALUES (225, '卡姿兰盈彩唇膏01', '卡姿兰盈彩唇膏豆沙色', '卡姿兰盈彩唇膏01');
INSERT INTO Fuzz
VALUES (226, '卡姿兰盈彩唇膏03', '卡姿兰盈彩唇膏玫红色', '卡姿兰盈彩唇膏03');
INSERT INTO Fuzz
VALUES (227, '卡姿兰盈彩唇膏02', '卡姿兰盈彩唇膏三文鱼', '卡姿兰盈彩唇膏02');
INSERT INTO Fuzz
VALUES (228, '卡姿兰盈彩唇膏10', '卡姿兰盈彩唇膏血橙色', '卡姿兰盈彩唇膏10');
INSERT INTO Fuzz
VALUES (229, '卡姿兰盈彩唇膏05', '卡姿兰盈彩唇膏橘子色', '卡姿兰盈彩唇膏05');
INSERT INTO Fuzz
VALUES (230, '卡姿兰细管焰吻M42', '卡姿兰细管焰吻裸系樱花色', '卡姿兰细管焰吻M42');
INSERT INTO Fuzz
VALUES (231, '卡姿兰细管焰吻M35', '卡姿兰细管焰吻经典陶棕色', '卡姿兰细管焰吻M35');
INSERT INTO Fuzz
VALUES (232, '卡姿兰细管焰吻M31', '卡姿兰细管焰吻奶桃西柚色', '卡姿兰细管焰吻M31');
INSERT INTO Fuzz
VALUES (233, '卡姿兰细管焰吻S58', '卡姿兰细管焰吻港式枫红色', '卡姿兰细管焰吻S58');
INSERT INTO Fuzz
VALUES (234, '卡姿兰细管焰吻AM42', '卡姿兰细管焰吻秋叶正红色', '卡姿兰细管焰吻AM42');
INSERT INTO Fuzz
VALUES (235, '卡姿兰细管焰吻S54', '卡姿兰细管焰吻经典牛血色', '卡姿兰细管焰吻S54');
INSERT INTO Fuzz
VALUES (236, '卡姿兰细管焰吻AM43', '卡姿兰细管焰吻暖调酒红色', '卡姿兰细管焰吻AM43');
INSERT INTO Fuzz
VALUES (237, '卡姿兰细管焰吻M52', '卡姿兰细管焰吻番茄橘红色', '卡姿兰细管焰吻M52');
INSERT INTO Fuzz
VALUES (238, '卡姿兰金致胶原轻雾感唇膏8', '卡姿兰金致胶原轻雾感唇膏中国正红', '卡姿兰金致胶原轻雾感唇膏8');
INSERT INTO Fuzz
VALUES (239, '卡姿兰金致胶原轻雾感唇膏16', '卡姿兰金致胶原轻雾感唇膏炽烈', '卡姿兰金致胶原轻雾感唇膏16');
INSERT INTO Fuzz
VALUES (240, '卡姿兰金致胶原轻雾感唇膏17', '卡姿兰金致胶原轻雾感唇膏辛辣', '卡姿兰金致胶原轻雾感唇膏17');
INSERT INTO Fuzz
VALUES (241, '卡姿兰金致胶原轻雾感唇膏20', '卡姿兰金致胶原轻雾感唇膏真我', '卡姿兰金致胶原轻雾感唇膏20');
INSERT INTO Fuzz
VALUES (242, '卡姿兰金致胶原轻雾感唇膏1', '卡姿兰金致胶原轻雾感唇膏东京樱粉', '卡姿兰金致胶原轻雾感唇膏1');
INSERT INTO Fuzz
VALUES (243, '卡姿兰金致胶原轻雾感唇膏13', '卡姿兰金致胶原轻雾感唇膏暧昧', '卡姿兰金致胶原轻雾感唇膏13');
INSERT INTO Fuzz
VALUES (244, '卡姿兰金致胶原轻雾感唇膏18', '卡姿兰金致胶原轻雾感唇膏嫉妒', '卡姿兰金致胶原轻雾感唇膏18');
INSERT INTO Fuzz
VALUES (245, '卡姿兰金致胶原轻雾感唇膏19', '卡姿兰金致胶原轻雾感唇膏欲望', '卡姿兰金致胶原轻雾感唇膏19');
INSERT INTO Fuzz
VALUES (246, '卡姿兰雾吻唇膏M03', '卡姿兰雾吻唇膏铁锈辣椒', '卡姿兰雾吻唇膏M03');
INSERT INTO Fuzz
VALUES (247, '卡姿兰雾吻唇膏M13', '卡姿兰雾吻唇膏莓莓浆果', '卡姿兰雾吻唇膏M13');
INSERT INTO Fuzz
VALUES (248, '卡姿兰雾吻唇膏M14', '卡姿兰雾吻唇膏多肉粉荔', '卡姿兰雾吻唇膏M14');
INSERT INTO Fuzz
VALUES (249, '卡姿兰雾吻唇膏M05', '卡姿兰雾吻唇膏奶油萝卜', '卡姿兰雾吻唇膏M05');
INSERT INTO Fuzz
VALUES (250, '卡姿兰雾吻唇膏M01', '卡姿兰雾吻唇膏樱桃果酱', '卡姿兰雾吻唇膏M01');
INSERT INTO Fuzz
VALUES (251, '卡姿兰雾吻唇膏M02', '卡姿兰雾吻唇膏糖渍山楂', '卡姿兰雾吻唇膏M02');
INSERT INTO Fuzz
VALUES (252, '卡姿兰雾吻唇膏M04', '卡姿兰雾吻唇膏枫叶慕斯', '卡姿兰雾吻唇膏M04');
INSERT INTO Fuzz
VALUES (253, '卡姿兰雾吻唇膏M07', '卡姿兰雾吻唇膏焦糖拿铁', '卡姿兰雾吻唇膏M07');
INSERT INTO Fuzz
VALUES (254, '卡姿兰雾吻唇膏M12', '卡姿兰雾吻唇膏黑糖可可', '卡姿兰雾吻唇膏M12');
INSERT INTO Fuzz
VALUES (255, '卡姿兰霓幻变色唇膏01', '卡姿兰霓幻变色唇膏樱花粉', '卡姿兰霓幻变色唇膏01');
INSERT INTO Fuzz
VALUES (256, '娇兰臻彩宝石唇膏N°214', '娇兰臻彩宝石唇膏砖红色', '娇兰臻彩宝石唇膏N°214');
INSERT INTO Fuzz
VALUES (257, '娇兰臻彩宝石唇膏N°28', '娇兰臻彩宝石唇膏橘红色', '娇兰臻彩宝石唇膏N°28');
INSERT INTO Fuzz
VALUES (258, '娇兰臻彩宝石唇膏N°03', '娇兰臻彩宝石唇膏烟熏玫瑰色', '娇兰臻彩宝石唇膏N°03');
INSERT INTO Fuzz
VALUES (259, '娇兰臻彩宝石唇膏N°24', '娇兰臻彩宝石唇膏木玫瑰色', '娇兰臻彩宝石唇膏N°24');
INSERT INTO Fuzz
VALUES (260, '娇兰臻彩宝石唇膏N°45', '娇兰臻彩宝石唇膏朱红色', '娇兰臻彩宝石唇膏N°45');
INSERT INTO Fuzz
VALUES (261, '娇兰臻彩宝石唇膏N°62', '娇兰臻彩宝石唇膏俏粉色', '娇兰臻彩宝石唇膏N°62');
INSERT INTO Fuzz
VALUES (262, '娇兰臻彩宝石唇膏N°235', '娇兰臻彩宝石唇膏冰糖柿子色', '娇兰臻彩宝石唇膏N°235');
INSERT INTO Fuzz
VALUES (263, '娇兰臻彩宝石唇膏N°30', '娇兰臻彩宝石唇膏复古南瓜色', '娇兰臻彩宝石唇膏N°30');
INSERT INTO Fuzz
VALUES (264, '娇兰臻彩宝石唇膏N°26', '娇兰臻彩宝石唇膏干枫叶色', '娇兰臻彩宝石唇膏N°26');
INSERT INTO Fuzz
VALUES (265, '娇兰臻彩宝石唇膏N°27', '娇兰臻彩宝石唇膏哑光色', '娇兰臻彩宝石唇膏N°27');
INSERT INTO Fuzz
VALUES (266, '娇兰臻彩宝石唇膏N°25', '娇兰臻彩宝石唇膏正红色', '娇兰臻彩宝石唇膏N°25');
INSERT INTO Fuzz
VALUES (267, '完美日记丝绒唇釉V05', '完美日记丝绒唇釉锈棕法兰绒', '完美日记丝绒唇釉V05');
INSERT INTO Fuzz
VALUES (268, '完美日记丝绒唇釉V06', '完美日记丝绒唇釉梅渍天鹅绒', '完美日记丝绒唇釉V06');
INSERT INTO Fuzz
VALUES (269, '完美日记丝绒唇釉V08', '完美日记丝绒唇釉桃金天鹅绒', '完美日记丝绒唇釉V08');
INSERT INTO Fuzz
VALUES (270, '完美日记丝绒唇釉V10', '完美日记丝绒唇釉甜桃舞步', '完美日记丝绒唇釉V10');
INSERT INTO Fuzz
VALUES (271, '完美日记丝绒唇釉V11', '完美日记丝绒唇釉红粉佳人', '完美日记丝绒唇釉V11');
INSERT INTO Fuzz
VALUES (272, '完美日记丝绒唇釉V13', '完美日记丝绒唇釉棕情欢愉', '完美日记丝绒唇釉V13');
INSERT INTO Fuzz
VALUES (273, '完美日记丝绒唇釉V18', '完美日记丝绒唇釉暗影深咖', '完美日记丝绒唇釉V18');
INSERT INTO Fuzz
VALUES (274, '完美日记丝绒唇釉V21', '完美日记丝绒唇釉花野红罂', '完美日记丝绒唇釉V21');
INSERT INTO Fuzz
VALUES (275, '完美日记丝绒唇釉V04', '完美日记丝绒唇釉勃艮第帷幕', '完美日记丝绒唇釉V04');
INSERT INTO Fuzz
VALUES (276, '完美日记丝绒唇釉V01', '完美日记丝绒唇釉红梨天鹅绒', '完美日记丝绒唇釉V01');
INSERT INTO Fuzz
VALUES (277, '完美日记丝绒唇釉V03', '完美日记丝绒唇釉正红燕尾服', '完美日记丝绒唇釉V03');
INSERT INTO Fuzz
VALUES (278, '完美日记丝绒唇釉V07', '完美日记丝绒唇釉甜柿天鹅绒', '完美日记丝绒唇釉V07');
INSERT INTO Fuzz
VALUES (279, '完美日记丝绒唇釉V02', '完美日记丝绒唇釉夜玫瑰战袍', '完美日记丝绒唇釉V02');
INSERT INTO Fuzz
VALUES (280, '完美日记丝绒唇釉V09', '完美日记丝绒唇釉好运锦鲤', '完美日记丝绒唇釉V09');
INSERT INTO Fuzz
VALUES (281, '完美日记丝绒唇釉V16', '完美日记丝绒唇釉暗生情愫', '完美日记丝绒唇釉V16');
INSERT INTO Fuzz
VALUES (282, '完美日记丝绒唇釉V14', '完美日记丝绒唇釉绯色耳语', '完美日记丝绒唇釉V14');
INSERT INTO Fuzz
VALUES (283, '完美日记丝绒唇釉V15', '完美日记丝绒唇釉杯边红吻', '完美日记丝绒唇釉V15');
INSERT INTO Fuzz
VALUES (284, '完美日记丝绒唇釉V12', '完美日记丝绒唇釉玫瑰之夜', '完美日记丝绒唇釉V12');
INSERT INTO Fuzz
VALUES (285, '完美日记丝绒唇釉V17', '完美日记丝绒唇釉血色帷幕', '完美日记丝绒唇釉V17');
INSERT INTO Fuzz
VALUES (286, '完美日记丝绒唇釉V20', '完美日记丝绒唇釉池边粉漪', '完美日记丝绒唇釉V20');
INSERT INTO Fuzz
VALUES (287, '完美日记丝绒唇釉莫奈限定版V07', '完美日记丝绒唇釉莫奈限定版甜柿天鹅绒', '完美日记丝绒唇釉莫奈限定版V07');
INSERT INTO Fuzz
VALUES (288, '完美日记反重力唇釉G05', '完美日记反重力唇釉炽焰掠影', '完美日记反重力唇釉G05');
INSERT INTO Fuzz
VALUES (289, '完美日记反重力唇釉G02', '完美日记反重力唇釉洛丽觉醒', '完美日记反重力唇釉G02');
INSERT INTO Fuzz
VALUES (290, '完美日记反重力唇釉G03', '完美日记反重力唇釉玫瑰星云', '完美日记反重力唇釉G03');
INSERT INTO Fuzz
VALUES (291, '完美日记反重力唇釉G01', '完美日记反重力唇釉时空恋人', '完美日记反重力唇釉G01');
INSERT INTO Fuzz
VALUES (292, '完美日记反重力唇釉G08', '完美日记反重力唇釉烈焰星球', '完美日记反重力唇釉G08');
INSERT INTO Fuzz
VALUES (293, '完美日记反重力唇釉G09', '完美日记反重力唇釉超感熔岩', '完美日记反重力唇釉G09');
INSERT INTO Fuzz
VALUES (294, '完美日记反重力唇釉G12', '完美日记反重力唇釉木星上行', '完美日记反重力唇釉G12');
INSERT INTO Fuzz
VALUES (295, '完美日记名片唇釉Long time no see', '完美日记名片唇釉柿子色', '完美日记名片唇釉008');
INSERT INTO Fuzz
VALUES (296, '完美日记名片唇釉Nice to meet you', '完美日记名片唇釉无花果粉', '完美日记名片唇釉002');
INSERT INTO Fuzz
VALUES (297, '完美日记名片唇釉Huge me', '完美日记名片唇釉土棕色', '完美日记名片唇釉006');
INSERT INTO Fuzz
VALUES (298, '完美日记名片唇釉Don\'t judge me', '完美日记名片唇釉红棕色', '完美日记名片唇釉003');
INSERT INTO Fuzz
VALUES (299, '完美日记名片唇釉Trust me', '完美日记名片唇釉深裸色', '完美日记名片唇釉001');
INSERT INTO Fuzz
VALUES (300, '完美日记名片唇釉Leave me alone', '完美日记名片唇釉灰紫色', '完美日记名片唇釉005');
INSERT INTO Fuzz
VALUES (301, '完美日记名片唇釉Call me', '完美日记名片唇釉草莓红', '完美日记名片唇釉007');
INSERT INTO Fuzz
VALUES (302, '完美日记名片唇釉Look at me', '完美日记名片唇釉浆果色', '完美日记名片唇釉004');
INSERT INTO Fuzz
VALUES (303, '完美日记哑光唇釉908', '完美日记哑光唇釉国王游戏', '完美日记哑光唇釉908');
INSERT INTO Fuzz
VALUES (304, '完美日记哑光唇釉901', '完美日记哑光唇釉致爱丽丝', '完美日记哑光唇釉901');
INSERT INTO Fuzz
VALUES (305, '完美日记哑光唇釉909', '完美日记哑光唇釉小圆舞曲', '完美日记哑光唇釉909');
INSERT INTO Fuzz
VALUES (306, '完美日记哑光唇釉910', '完美日记哑光唇釉歌与夜莺', '完美日记哑光唇釉910');
INSERT INTO Fuzz
VALUES (307, '完美日记哑光唇釉904', '完美日记哑光唇釉伯爵夫人', '完美日记哑光唇釉904');
INSERT INTO Fuzz
VALUES (308, '完美日记哑光唇釉906', '完美日记哑光唇釉异乡旅人', '完美日记哑光唇釉906');
INSERT INTO Fuzz
VALUES (309, '完美日记哑光唇釉905', '完美日记哑光唇釉野兽派对', '完美日记哑光唇釉905');
INSERT INTO Fuzz
VALUES (310, '完美日记哑光唇釉907', '完美日记哑光唇釉枫叶诗人', '完美日记哑光唇釉907');
INSERT INTO Fuzz
VALUES (311, '完美日记哑光唇釉922', '完美日记哑光唇釉秋日私语', '完美日记哑光唇釉922');
INSERT INTO Fuzz
VALUES (312, '完美日记哑光唇釉927', '完美日记哑光唇釉蔷薇印记', '完美日记哑光唇釉927');
INSERT INTO Fuzz
VALUES (313, '完美日记哑光唇釉936', '完美日记哑光唇釉伯爵红茶', '完美日记哑光唇釉936');
INSERT INTO Fuzz
VALUES (314, '完美日记哑光唇釉939', '完美日记哑光唇釉爆浆车厘', '完美日记哑光唇釉939');
INSERT INTO Fuzz
VALUES (315, '完美日记哑光唇釉934', '完美日记哑光唇釉危情可可', '完美日记哑光唇釉934');
INSERT INTO Fuzz
VALUES (316, '完美日记哑光唇釉942', '完美日记哑光唇釉土棕枣红', '完美日记哑光唇釉942');
INSERT INTO Fuzz
VALUES (317, '完美日记哑光唇釉938', '完美日记哑光唇釉日落大道', '完美日记哑光唇釉938');
INSERT INTO Fuzz
VALUES (318, '完美日记哑光唇釉940', '完美日记哑光唇釉烟粉豆沙', '完美日记哑光唇釉940');
INSERT INTO Fuzz
VALUES (319, '完美日记哑光唇釉941', '完美日记哑光唇釉焦糖炼瓦', '完美日记哑光唇釉941');
INSERT INTO Fuzz
VALUES (320, '完美日记小粉钻12', '完美日记小粉钻浓郁豆沙色', '完美日记小粉钻12');
INSERT INTO Fuzz
VALUES (321, '完美日记小粉钻11', '完美日记小粉钻肉桂奶茶色', '完美日记小粉钻11');
INSERT INTO Fuzz
VALUES (322, '完美日记小粉钻A04', '完美日记小粉钻橘调砖红色', '完美日记小粉钻A04');
INSERT INTO Fuzz
VALUES (323, '完美日记小粉钻C02', '完美日记小粉钻活力胡萝卜色', '完美日记小粉钻C02');
INSERT INTO Fuzz
VALUES (324, '完美日记小粉钻14', '完美日记小粉钻巧克力红棕', '完美日记小粉钻14');
INSERT INTO Fuzz
VALUES (325, '完美日记小粉钻C03', '完美日记小粉钻苹果红色', '完美日记小粉钻C03');
INSERT INTO Fuzz
VALUES (326, '完美日记小粉钻C01', '完美日记小粉钻温柔奶茶色', '完美日记小粉钻C01');
INSERT INTO Fuzz
VALUES (327, '完美日记小细跟L08', '完美日记小细跟红舞鞋', '完美日记小细跟L08');
INSERT INTO Fuzz
VALUES (328, '完美日记小细跟L04', '完美日记小细跟赤茶红棕', '完美日记小细跟L04');
INSERT INTO Fuzz
VALUES (329, '完美日记小细跟L07', '完美日记小细跟铆钉酷紫', '完美日记小细跟L07');
INSERT INTO Fuzz
VALUES (330, '完美日记小细跟L06', '完美日记小细跟玛丽珍红', '完美日记小细跟L06');
INSERT INTO Fuzz
VALUES (331, '完美日记小细跟L03', '完美日记小细跟枫叶切尔西', '完美日记小细跟L03');
INSERT INTO Fuzz
VALUES (332, '完美日记小细跟L02', '完美日记小细跟玫瑰小羊皮', '完美日记小细跟L02');
INSERT INTO Fuzz
VALUES (333, '完美日记小细跟L09', '完美日记小细跟暖光血橙', '完美日记小细跟L09');
INSERT INTO Fuzz
VALUES (334, '完美日记小细跟L13', '完美日记小细跟糖霜蜜桃', '完美日记小细跟L13');
INSERT INTO Fuzz
VALUES (335, '完美日记小细跟L12', '完美日记小细跟珍珠奶橘', '完美日记小细跟L12');
INSERT INTO Fuzz
VALUES (336, '完美日记小细跟L01', '完美日记小细跟芭蕾裸粉', '完美日记小细跟L01');
INSERT INTO Fuzz
VALUES (337, '完美日记小细跟L05', '完美日记小细跟落日罗马靴', '完美日记小细跟L05');
INSERT INTO Fuzz
VALUES (338, '完美日记小细跟L11', '完美日记小细跟肉桂奶茶', '完美日记小细跟L11');
INSERT INTO Fuzz
VALUES (339, '完美日记小细跟L10', '完美日记小细跟梅紫火龙果', '完美日记小细跟L10');
INSERT INTO Fuzz
VALUES (340, '完美日记小酒管H12', '完美日记小酒管茶色波特酒', '完美日记小酒管H12');
INSERT INTO Fuzz
VALUES (341, '完美日记小酒管H11', '完美日记小酒管猩红伏特加', '完美日记小酒管H11');
INSERT INTO Fuzz
VALUES (342, '完美日记小酒管H13', '完美日记小酒管肉桂红酒', '完美日记小酒管H13');
INSERT INTO Fuzz
VALUES (343, '完美日记小酒管H08', '完美日记小酒管樱桃白兰地', '完美日记小酒管H08');
INSERT INTO Fuzz
VALUES (344, '完美日记小酒管H01', '完美日记小酒管粉柚龙舌兰', '完美日记小酒管H01');
INSERT INTO Fuzz
VALUES (345, '完美日记小酒管H05', '完美日记小酒管波本威士忌', '完美日记小酒管H05');
INSERT INTO Fuzz
VALUES (346, '完美日记小酒管H09', '完美日记小酒管草莓冰酒', '完美日记小酒管H09');
INSERT INTO Fuzz
VALUES (347, '完美日记小酒管H14', '完美日记小酒管焦糖', '完美日记小酒管H14');
INSERT INTO Fuzz
VALUES (348, '完美日记小酒管H10', '完美日记小酒管玫瑰起泡酒', '完美日记小酒管H10');
INSERT INTO Fuzz
VALUES (349, '完美日记小酒管H15', '完美日记小酒管咖啡利口酒', '完美日记小酒管H15');
INSERT INTO Fuzz
VALUES (350, '完美日记小酒管H18', '完美日记小酒管橘闪精酿', '完美日记小酒管H18');
INSERT INTO Fuzz
VALUES (351, '完美日记小酒管H21', '完美日记小酒管百利甜联名-奶茶色', '完美日记小酒管H21');
INSERT INTO Fuzz
VALUES (352, '完美日记小酒管H22', '完美日记小酒管百利甜联名-野莓红', '完美日记小酒管H22');
INSERT INTO Fuzz
VALUES (353, '完美日记小金钻S02', '完美日记小金钻龙焰公主', '完美日记小金钻S02');
INSERT INTO Fuzz
VALUES (354, '完美日记小金钻A05', '完美日记小金钻玫瑰骑士', '完美日记小金钻A05');
INSERT INTO Fuzz
VALUES (355, '完美日记小金钻F02', '完美日记小金钻路易十四', '完美日记小金钻F02');
INSERT INTO Fuzz
VALUES (356, '完美日记小金钻S04', '完美日记小金钻夏日精灵', '完美日记小金钻S04');
INSERT INTO Fuzz
VALUES (357, '完美日记小金钻S05', '完美日记小金钻午夜猎手', '完美日记小金钻S05');
INSERT INTO Fuzz
VALUES (358, '完美日记小金钻A01', '完美日记小金钻茜茜少女', '完美日记小金钻A01');
INSERT INTO Fuzz
VALUES (359, '完美日记小金钻A02', '完美日记小金钻假日派对', '完美日记小金钻A02');
INSERT INTO Fuzz
VALUES (360, '完美日记小金钻A03', '完美日记小金钻红唇掠影', '完美日记小金钻A03');
INSERT INTO Fuzz
VALUES (361, '完美日记小金钻C10', '完美日记小金钻焦糖色', '完美日记小金钻C10');
INSERT INTO Fuzz
VALUES (362, '完美日记小金钻C02', '完美日记小金钻情书少女', '完美日记小金钻C02');
INSERT INTO Fuzz
VALUES (363, '完美日记小金钻C01', '完美日记小金钻格兰特夫人', '完美日记小金钻C01');
INSERT INTO Fuzz
VALUES (364, '完美日记小金钻C03', '完美日记小金钻玛丽亚夫人', '完美日记小金钻C03');
INSERT INTO Fuzz
VALUES (365, '完美日记小金钻C04', '完美日记小金钻维多利亚女王', '完美日记小金钻C04');
INSERT INTO Fuzz
VALUES (366, '完美日记小黑钻207', '完美日记小黑钻暮色迷失', '完美日记小黑钻207');
INSERT INTO Fuzz
VALUES (367, '完美日记小黑钻209', '完美日记小黑钻盛宴之夜', '完美日记小黑钻209');
INSERT INTO Fuzz
VALUES (368, '完美日记小黑钻208', '完美日记小黑钻佳人绝色', '完美日记小黑钻208');
INSERT INTO Fuzz
VALUES (369, '完美日记小黑钻202', '完美日记小黑钻不期而遇', '完美日记小黑钻202');
INSERT INTO Fuzz
VALUES (370, '完美日记小黑钻206', '完美日记小黑钻沙漠玫瑰', '完美日记小黑钻206');
INSERT INTO Fuzz
VALUES (371, '完美日记小黑钻203', '完美日记小黑钻春日呢喃', '完美日记小黑钻203');
INSERT INTO Fuzz
VALUES (372, '完美日记小黑钻104', '完美日记小黑钻酒心可可', '完美日记小黑钻104');
INSERT INTO Fuzz
VALUES (373, '完美日记小黑钻102', '完美日记小黑钻枫糖梦境', '完美日记小黑钻102');
INSERT INTO Fuzz
VALUES (374, '完美日记小黑钻101', '完美日记小黑钻玫香赤茶', '完美日记小黑钻101');
INSERT INTO Fuzz
VALUES (375, '完美日记小黑钻107', '完美日记小黑钻玫瑰摩卡', '完美日记小黑钻107');
INSERT INTO Fuzz
VALUES (376, '完美日记小黑钻001', '完美日记小黑钻豆沙往事', '完美日记小黑钻001');
INSERT INTO Fuzz
VALUES (377, '完美日记小黑钻105', '完美日记小黑钻桃情蜜意', '完美日记小黑钻105');
INSERT INTO Fuzz
VALUES (378, '完美日记小黑钻403', '完美日记小黑钻假面舞会', '完美日记小黑钻403');
INSERT INTO Fuzz
VALUES (379, '完美日记小黑钻217', '完美日记小黑钻枫叶小径', '完美日记小黑钻217');
INSERT INTO Fuzz
VALUES (380, '完美日记小黑钻002', '完美日记小黑钻巴黎探戈', '完美日记小黑钻002');
INSERT INTO Fuzz
VALUES (381, '完美日记小黑钻003', '完美日记小黑钻莎翁情史', '完美日记小黑钻003');
INSERT INTO Fuzz
VALUES (382, '完美日记小黑钻116', '完美日记小黑钻猪肝红', '完美日记小黑钻116');
INSERT INTO Fuzz
VALUES (383, '完美日记小黑钻008', '完美日记小黑钻红茶朗姆', '完美日记小黑钻008');
INSERT INTO Fuzz
VALUES (384, '完美日记小黑钻117', '完美日记小黑钻柿香甜茶', '完美日记小黑钻117');
INSERT INTO Fuzz
VALUES (385, '完美日记小黑钻226', '完美日记小黑钻深栗棕红', '完美日记小黑钻226');
INSERT INTO Fuzz
VALUES (386, '植村秀无色限柔雾唇膏OR590', '植村秀无色限柔雾唇膏水光糖番茄', '植村秀无色限柔雾唇膏OR590');
INSERT INTO Fuzz
VALUES (387, '植村秀无色限柔雾唇膏LSBR784', '植村秀无色限柔雾唇膏赤红棕', '植村秀无色限柔雾唇膏LSBR784');
INSERT INTO Fuzz
VALUES (388, '植村秀无色限柔雾唇膏MRD163', '植村秀无色限柔雾唇膏哑光纯红', '植村秀无色限柔雾唇膏MRD163');
INSERT INTO Fuzz
VALUES (389, '植村秀无色限柔雾唇膏BR795', '植村秀无色限柔雾唇膏浓郁红棕', '植村秀无色限柔雾唇膏BR795');
INSERT INTO Fuzz
VALUES (390, '植村秀无色限柔雾唇膏MBR785', '植村秀无色限柔雾唇膏赤茶棕', '植村秀无色限柔雾唇膏MBR785');
INSERT INTO Fuzz
VALUES (391, '植村秀无色限柔雾唇膏METMRD163', '植村秀无色限柔雾唇膏锦鲤红', '植村秀无色限柔雾唇膏METMRD163');
INSERT INTO Fuzz
VALUES (392, '植村秀无色限柔雾唇膏AMRD174', '植村秀无色限柔雾唇膏酒红栗', '植村秀无色限柔雾唇膏AMRD174');
INSERT INTO Fuzz
VALUES (393, '植村秀无色限柔雾唇膏AMBR784', '植村秀无色限柔雾唇膏野红栗', '植村秀无色限柔雾唇膏AMBR784');
INSERT INTO Fuzz
VALUES (394, '欧莱雅小钢笔柔雾版121', '欧莱雅小钢笔柔雾版冰镇水蜜桃色', '欧莱雅小钢笔柔雾版121');
INSERT INTO Fuzz
VALUES (395, '欧莱雅小钢笔柔雾版113', '欧莱雅小钢笔柔雾版蓝调番茄色', '欧莱雅小钢笔柔雾版113');
INSERT INTO Fuzz
VALUES (396, '欧莱雅小钢笔柔雾版112', '欧莱雅小钢笔柔雾版清新胡萝卜色', '欧莱雅小钢笔柔雾版112');
INSERT INTO Fuzz
VALUES (397, '欧莱雅小钢笔柔雾版129', '欧莱雅小钢笔柔雾版红棕豆沙色', '欧莱雅小钢笔柔雾版129');
INSERT INTO Fuzz
VALUES (398, '欧莱雅小钢笔柔雾版130', '欧莱雅小钢笔柔雾版复古脏南瓜色', '欧莱雅小钢笔柔雾版130');
INSERT INTO Fuzz
VALUES (399, '欧莱雅小钢笔水光版129', '欧莱雅小钢笔水光版心动杏色', '欧莱雅小钢笔水光版129');
INSERT INTO Fuzz
VALUES (400, '欧莱雅小钢笔柔雾版138', '欧莱雅小钢笔柔雾版朱砂橙', '欧莱雅小钢笔柔雾版138');
INSERT INTO Fuzz
VALUES (401, '欧莱雅小钢笔柔雾版134', '欧莱雅小钢笔柔雾版丝绒红', '欧莱雅小钢笔柔雾版134');
INSERT INTO Fuzz
VALUES (402, '欧莱雅小钢笔柔雾版145', '欧莱雅小钢笔柔雾版蔷薇枯了', '欧莱雅小钢笔柔雾版145');
INSERT INTO Fuzz
VALUES (403, '欧莱雅小钢笔水光版312', '欧莱雅小钢笔水光版樱桃色', '欧莱雅小钢笔水光版312');
INSERT INTO Fuzz
VALUES (404, '欧莱雅小钢笔水光版302', '欧莱雅小钢笔水光版温柔奶茶色', '欧莱雅小钢笔水光版302');
INSERT INTO Fuzz
VALUES (405, '欧莱雅小钢笔水光版310', '欧莱雅小钢笔水光版法式湿吻', '欧莱雅小钢笔水光版310');
INSERT INTO Fuzz
VALUES (406, '欧莱雅小钢笔水光版314', '欧莱雅小钢笔水光版滴水玫瑰色', '欧莱雅小钢笔水光版314');
INSERT INTO Fuzz
VALUES (407, '欧莱雅小钢笔柔雾版144', '欧莱雅小钢笔柔雾版枫叶落了', '欧莱雅小钢笔柔雾版144');
INSERT INTO Fuzz
VALUES (408, '欧莱雅小钢笔柔纱版227', '欧莱雅小钢笔柔纱版红酒渍', '欧莱雅小钢笔柔纱版227');
INSERT INTO Fuzz
VALUES (409, '欧莱雅小钢笔柔纱版221', '欧莱雅小钢笔柔纱版诱入橘', '欧莱雅小钢笔柔纱版221');
INSERT INTO Fuzz
VALUES (410, '欧莱雅小钢笔柔纱版222', '欧莱雅小钢笔柔纱版迷情棕', '欧莱雅小钢笔柔纱版222');
INSERT INTO Fuzz
VALUES (411, '欧莱雅小钢笔柔纱版223', '欧莱雅小钢笔柔纱版欲出桃', '欧莱雅小钢笔柔纱版223');
INSERT INTO Fuzz
VALUES (412, '欧莱雅小钢笔柔纱版226', '欧莱雅小钢笔柔纱版涩野莓', '欧莱雅小钢笔柔纱版226');
INSERT INTO Fuzz
VALUES (413, '欧莱雅小钢笔柔纱版224', '欧莱雅小钢笔柔纱版烟裸粉', '欧莱雅小钢笔柔纱版224');
INSERT INTO Fuzz
VALUES (414, '欧莱雅小妖金M601', '欧莱雅小妖金鎏金摩卡色', '欧莱雅小妖金M601');
INSERT INTO Fuzz
VALUES (415, '欧莱雅小妖金G101', '欧莱雅小妖金百搭鎏金色', '欧莱雅小妖金G101');
INSERT INTO Fuzz
VALUES (416, '欧莱雅小妖金164', '欧莱雅小妖金蜜桃珊瑚色', '欧莱雅小妖金164');
INSERT INTO Fuzz
VALUES (417, '欧莱雅小妖金R601', '欧莱雅小妖金鎏金正红色', '欧莱雅小妖金R601');
INSERT INTO Fuzz
VALUES (418, '欧莱雅小妖金RC301', '欧莱雅小妖金糖心柿红色', '欧莱雅小妖金RC301');
INSERT INTO Fuzz
VALUES (419, '欧莱雅小妖金RB402', '欧莱雅小妖金气质暖豆沙色', '欧莱雅小妖金RB402');
INSERT INTO Fuzz
VALUES (420, '欧莱雅小妖金635', '欧莱雅小妖金微醺血橙色', '欧莱雅小妖金635');
INSERT INTO Fuzz
VALUES (421, '欧莱雅小妖金120', '欧莱雅小妖金嗜爱绯红色', '欧莱雅小妖金120');
INSERT INTO Fuzz
VALUES (422, '欧莱雅小妖金619', '欧莱雅小妖金枫叶南瓜色', '欧莱雅小妖金619');
INSERT INTO Fuzz
VALUES (423, '欧莱雅小妖金161', '欧莱雅小妖金轻吻豆沙色', '欧莱雅小妖金161');
INSERT INTO Fuzz
VALUES (424, '欧莱雅小妖金160', '欧莱雅小妖金枫叶红棕色', '欧莱雅小妖金160');
INSERT INTO Fuzz
VALUES (425, '欧莱雅小妖金RB301', '欧莱雅小妖金金闪红棕色', '欧莱雅小妖金RB301');
INSERT INTO Fuzz
VALUES (426, '欧莱雅小妖金C411', '欧莱雅小妖金元气西柚色', '欧莱雅小妖金C411');
INSERT INTO Fuzz
VALUES (427, '欧莱雅新黑管312', '欧莱雅新黑管红运加橙', '欧莱雅新黑管312');
INSERT INTO Fuzz
VALUES (428, '欧莱雅新黑管294', '欧莱雅新黑管复古红棕', '欧莱雅新黑管294');
INSERT INTO Fuzz
VALUES (429, '欧莱雅新黑管666', '欧莱雅新黑管开挂红', '欧莱雅新黑管666');
INSERT INTO Fuzz
VALUES (430, '欧莱雅新黑管315', '欧莱雅新黑管就酱紫红', '欧莱雅新黑管315');
INSERT INTO Fuzz
VALUES (431, '欧莱雅新黑管215', '欧莱雅新黑管番茄红', '欧莱雅新黑管215');
INSERT INTO Fuzz
VALUES (432, '欧莱雅新黑管239', '欧莱雅新黑管辣椒红', '欧莱雅新黑管239');
INSERT INTO Fuzz
VALUES (433, '欧莱雅新黑管233', '欧莱雅新黑管豆沙色', '欧莱雅新黑管233');
INSERT INTO Fuzz
VALUES (434, '纪梵希小粉皮304', '纪梵希小粉皮暗夜玫瑰', '纪梵希小粉皮304');
INSERT INTO Fuzz
VALUES (435, '纪梵希小粉皮01', '纪梵希小粉皮润唇膏', '纪梵希小粉皮01');
INSERT INTO Fuzz
VALUES (436, '纪梵希小羊皮N334', '纪梵希小羊皮车厘子红', '纪梵希小羊皮N334');
INSERT INTO Fuzz
VALUES (437, '纪梵希小羊皮N316', '纪梵希小羊皮元气橘', '纪梵希小羊皮N316');
INSERT INTO Fuzz
VALUES (438, '纪梵希小羊皮N37', '纪梵希小羊皮蓝调正红', '纪梵希小羊皮N37');
INSERT INTO Fuzz
VALUES (439, '纪梵希小羊皮N306', '纪梵希小羊皮番茄红', '纪梵希小羊皮N306');
INSERT INTO Fuzz
VALUES (440, '纪梵希小羊皮N304', '纪梵希小羊皮西柚红', '纪梵希小羊皮N304');
INSERT INTO Fuzz
VALUES (441, '纪梵希小羊皮N333', '纪梵希小羊皮女神红', '纪梵希小羊皮N333');
INSERT INTO Fuzz
VALUES (442, '纪梵希小羊皮N307', '纪梵希小羊皮石榴红', '纪梵希小羊皮N307');
INSERT INTO Fuzz
VALUES (443, '纪梵希红丝绒N33', '纪梵希红丝绒暖茶橘', '纪梵希红丝绒N33');
INSERT INTO Fuzz
VALUES (444, '纪梵希红丝绒N38', '纪梵希红丝绒烟熏石榴', '纪梵希红丝绒N38');
INSERT INTO Fuzz
VALUES (445, '纪梵希红丝绒N36', '纪梵希红丝绒禁忌番茄红', '纪梵希红丝绒N36');
INSERT INTO Fuzz
VALUES (446, '纪梵希红丝绒N35', '纪梵希红丝绒枫叶砖红', '纪梵希红丝绒N35');
INSERT INTO Fuzz
VALUES (447, '纪梵希红丝绒N42', '纪梵希红丝绒冷艳梅果', '纪梵希红丝绒N42');
INSERT INTO Fuzz
VALUES (448, '纪梵希红丝绒N37', '纪梵希红丝绒朱砂砖红', '纪梵希红丝绒N37');
INSERT INTO Fuzz
VALUES (449, '纪梵希红丝绒N26', '纪梵希红丝绒莓红粉绒', '纪梵希红丝绒N26');
INSERT INTO Fuzz
VALUES (450, '纪梵希红丝绒N27', '纪梵希红丝绒酒渍玫瑰', '纪梵希红丝绒N27');
INSERT INTO Fuzz
VALUES (451, '纪梵希红丝绒N11', '纪梵希红丝绒灰调裸色', '纪梵希红丝绒N11');
INSERT INTO Fuzz
VALUES (452, '美宝莲宝蓓爱炫彩护唇膏01#', '美宝莲宝蓓爱炫彩护唇膏无敌红芭比', '美宝莲宝蓓爱炫彩护唇膏01#');
INSERT INTO Fuzz
VALUES (453, '美宝莲宝蓓爱炫彩护唇膏07#', '美宝莲宝蓓爱炫彩护唇膏瑚光珊色控', '美宝莲宝蓓爱炫彩护唇膏07#');
INSERT INTO Fuzz
VALUES (454, '美宝莲宝蓓爱炫彩护唇膏05#', '美宝莲宝蓓爱炫彩护唇膏恋粉洛丽塔', '美宝莲宝蓓爱炫彩护唇膏05#');
INSERT INTO Fuzz
VALUES (455, '美宝莲接吻棒210', '美宝莲接吻棒奶茶粉', '美宝莲接吻棒210');
INSERT INTO Fuzz
VALUES (456, '美宝莲接吻棒118', '美宝莲接吻棒熟番茄色', '美宝莲接吻棒118');
INSERT INTO Fuzz
VALUES (457, '美宝莲接吻棒117', '美宝莲接吻棒复古砖红', '美宝莲接吻棒117');
INSERT INTO Fuzz
VALUES (458, '美宝莲接吻棒285', '美宝莲接吻棒豆蔻红梅', '美宝莲接吻棒285');
INSERT INTO Fuzz
VALUES (459, '美宝莲接吻棒170', '美宝莲接吻棒烟粉色', '美宝莲接吻棒170');
INSERT INTO Fuzz
VALUES (460, '美宝莲接吻棒漫威版80', '美宝莲接吻棒漫威版梅子豆沙', '美宝莲接吻棒漫威版80');
INSERT INTO Fuzz
VALUES (461, '美宝莲接吻棒漫威版210', '美宝莲接吻棒漫威版奶茶粉', '美宝莲接吻棒漫威版210');
INSERT INTO Fuzz
VALUES (462, '美宝莲接吻棒漫威版15', '美宝莲接吻棒漫威版香芋玫瑰', '美宝莲接吻棒漫威版15');
INSERT INTO Fuzz
VALUES (463, '美宝莲接吻棒漫威版117', '美宝莲接吻棒漫威版复古砖红', '美宝莲接吻棒漫威版117');
INSERT INTO Fuzz
VALUES (464, '美宝莲接吻棒315', '美宝莲接吻棒丝绒血橙色', '美宝莲接吻棒315');
INSERT INTO Fuzz
VALUES (465, '美宝莲羽绒唇釉09', '美宝莲羽绒唇釉枫糖茶红', '美宝莲羽绒唇釉09');
INSERT INTO Fuzz
VALUES (466, '美宝莲羽绒唇釉06', '美宝莲羽绒唇釉枕边雾橘', '美宝莲羽绒唇釉06');
INSERT INTO Fuzz
VALUES (467, '美宝莲羽绒唇釉12', '美宝莲羽绒唇釉叛桃杏棕', '美宝莲羽绒唇釉12');
INSERT INTO Fuzz
VALUES (468, '美宝莲羽绒唇釉08', '美宝莲羽绒唇釉纵绒正红', '美宝莲羽绒唇釉08');
INSERT INTO Fuzz
VALUES (469, '美宝莲羽绒唇釉02', '美宝莲羽绒唇釉乱弹锈红', '美宝莲羽绒唇釉02');
INSERT INTO Fuzz
VALUES (470, '美宝莲羽绒唇釉01', '美宝莲羽绒唇釉甜拽猩红', '美宝莲羽绒唇釉01');
INSERT INTO Fuzz
VALUES (471, '美宝莲羽绒唇釉07', '美宝莲羽绒唇釉木质蔷薇', '美宝莲羽绒唇釉07');
INSERT INTO Fuzz
VALUES (472, '美宝莲羽绒唇釉10', '美宝莲羽绒唇釉犯规棕栗', '美宝莲羽绒唇釉10');
INSERT INTO Fuzz
VALUES (473, '美宝莲羽绒唇釉13', '美宝莲羽绒唇釉叛桃乌龙', '美宝莲羽绒唇釉13');
INSERT INTO Fuzz
VALUES (474, '美宝莲羽绒唇釉11', '美宝莲羽绒唇釉叛桃玫瑰', '美宝莲羽绒唇釉11');
INSERT INTO Fuzz
VALUES (475, '美宝莲马里奥赛车限定版羽绒唇釉10', '美宝莲马里奥赛车限定版羽绒唇釉犯规棕栗', '美宝莲马里奥赛车限定版羽绒唇釉10');
INSERT INTO Fuzz
VALUES (476, '美宝莲马里奥赛车限定版羽绒唇釉02', '美宝莲马里奥赛车限定版羽绒唇釉乱弹锈红', '美宝莲马里奥赛车限定版羽绒唇釉02');
INSERT INTO Fuzz
VALUES (477, '美宝莲马里奥赛车限定版羽绒唇釉06', '美宝莲马里奥赛车限定版羽绒唇釉枕边雾橘', '美宝莲马里奥赛车限定版羽绒唇釉06');
INSERT INTO Fuzz
VALUES (478, '美宝莲轻雾唇釉08', '美宝莲轻雾唇釉烟粉玫瑰', '美宝莲轻雾唇釉08');
INSERT INTO Fuzz
VALUES (479, '美宝莲轻雾唇釉06', '美宝莲轻雾唇釉肉桂奶茶', '美宝莲轻雾唇釉06');
INSERT INTO Fuzz
VALUES (480, '美宝莲轻雾唇釉02', '美宝莲轻雾唇釉红酒车厘子', '美宝莲轻雾唇釉02');
INSERT INTO Fuzz
VALUES (481, '美宝莲轻雾唇釉01', '美宝莲轻雾唇釉糖霜山楂', '美宝莲轻雾唇釉01');
INSERT INTO Fuzz
VALUES (482, '美宝莲轻雾唇釉NU02', '美宝莲轻雾唇釉蜜桃豆沙', '美宝莲轻雾唇釉NU02');
INSERT INTO Fuzz
VALUES (483, '美宝莲轻雾唇釉12', '美宝莲轻雾唇釉柿子橘', '美宝莲轻雾唇釉12');
INSERT INTO Fuzz
VALUES (484, '美宝莲轻雾唇釉17', '美宝莲轻雾唇釉焦糖红棕', '美宝莲轻雾唇釉17');
INSERT INTO Fuzz
VALUES (485, '美宝莲黑魔方233', '美宝莲黑魔方鲜番茄', '美宝莲黑魔方233');
INSERT INTO Fuzz
VALUES (486, '美宝莲黑魔方503', '美宝莲黑魔方肉桂豆沙', '美宝莲黑魔方503');
INSERT INTO Fuzz
VALUES (487, '美宝莲黑魔方888', '美宝莲黑魔方玫瑰深豆沙色', '美宝莲黑魔方888');
INSERT INTO Fuzz
VALUES (488, '美宝莲黑魔方604', '美宝莲黑魔方朱砂橘', '美宝莲黑魔方604');
INSERT INTO Fuzz
VALUES (489, '美宝莲黑魔方500', '美宝莲黑魔方干枫叶', '美宝莲黑魔方500');
INSERT INTO Fuzz
VALUES (490, '美宝莲黑魔方609', '美宝莲黑魔方罂粟红', '美宝莲黑魔方609');
INSERT INTO Fuzz
VALUES (491, '美宝莲黑魔方818', '美宝莲黑魔方糖味落日', '美宝莲黑魔方818');
INSERT INTO Fuzz
VALUES (492, '美宝莲黑魔方816', '美宝莲黑魔方奶雾蜜糖', '美宝莲黑魔方816');
INSERT INTO Fuzz
VALUES (493, '花西子同心锁M130', '花西子同心锁醉梅锁', '花西子同心锁M130');
INSERT INTO Fuzz
VALUES (494, '花西子同心锁M210', '花西子同心锁丹霞锁', '花西子同心锁M210');
INSERT INTO Fuzz
VALUES (495, '花西子同心锁M131', '花西子同心锁绛仙锁', '花西子同心锁M131');
INSERT INTO Fuzz
VALUES (496, '花西子同心锁M413', '花西子同心锁檀心锁', '花西子同心锁M413');
INSERT INTO Fuzz
VALUES (497, '花西子同心锁M506', '花西子同心锁胭脂锁', '花西子同心锁M506');
INSERT INTO Fuzz
VALUES (498, '花西子同心锁M211', '花西子同心锁朱砂锁', '花西子同心锁M211');
INSERT INTO Fuzz
VALUES (499, '花西子花露沁养冰淇淋M209', '花西子花露沁养冰淇淋点朱砂', '花西子花露沁养冰淇淋M209');
INSERT INTO Fuzz
VALUES (500, '花西子花露沁养冰淇淋M412', '花西子花露沁养冰淇淋暖香檀', '花西子花露沁养冰淇淋M412');
INSERT INTO Fuzz
VALUES (501, '花西子花露沁养冰淇淋M128', '花西子花露沁养冰淇淋映蔷薇', '花西子花露沁养冰淇淋M128');
INSERT INTO Fuzz
VALUES (502, '花西子花露沁养冰淇淋M129', '花西子花露沁养冰淇淋醉心梅', '花西子花露沁养冰淇淋M129');
INSERT INTO Fuzz
VALUES (503, '花西子花露玲珑陶瓷M414', '花西子花露玲珑陶瓷郎窑红', '花西子花露玲珑陶瓷M414');
INSERT INTO Fuzz
VALUES (504, '花西子花露玲珑陶瓷M212', '花西子花露玲珑陶瓷柿红锦', '花西子花露玲珑陶瓷M212');
INSERT INTO Fuzz
VALUES (505, '花西子花露玲珑陶瓷M302', '花西子花露玲珑陶瓷芸豆红', '花西子花露玲珑陶瓷M302');
INSERT INTO Fuzz
VALUES (506, '花西子花露玲珑陶瓷M132', '花西子花露玲珑陶瓷美人霁', '花西子花露玲珑陶瓷M132');
INSERT INTO Fuzz
VALUES (507, '花西子花露玲珑陶瓷M303', '花西子花露玲珑陶瓷桃红釉', '花西子花露玲珑陶瓷M303');
INSERT INTO Fuzz
VALUES (508, '花西子花露玲珑陶瓷M136', '花西子花露玲珑陶瓷抹红英', '花西子花露玲珑陶瓷M136');
INSERT INTO Fuzz
VALUES (509, '花西子花露玲珑陶瓷M217', '花西子花露玲珑陶瓷醉红釉', '花西子花露玲珑陶瓷M217');
INSERT INTO Fuzz
VALUES (510, '花西子花露玲珑陶瓷M304', '花西子花露玲珑陶瓷桃花片', '花西子花露玲珑陶瓷M304');
INSERT INTO Fuzz
VALUES (511, '花西子雕花M507', '花西子雕花棕檀绣', '花西子雕花M507');
INSERT INTO Fuzz
VALUES (512, '花西子雕花M214', '花西子雕花秋砂绣', '花西子雕花M214');
INSERT INTO Fuzz
VALUES (513, '花西子雕花M115', '花西子雕花御宫绣', '花西子雕花M115');
INSERT INTO Fuzz
VALUES (514, '花西子雕花M123', '花西子雕花伯牙绣', '花西子雕花M123');
INSERT INTO Fuzz
VALUES (515, '花西子雕花M505', '花西子雕花紫云绣', '花西子雕花M505');
INSERT INTO Fuzz
VALUES (516, '花西子雕花M116', '花西子雕花彤心绣', '花西子雕花M116');
INSERT INTO Fuzz
VALUES (517, '花西子雕花M117', '花西子雕花红鸾绣', '花西子雕花M117');
INSERT INTO Fuzz
VALUES (518, '花西子雕花M119', '花西子雕花湘妃绣', '花西子雕花M119');
INSERT INTO Fuzz
VALUES (519, '花西子雕花M409', '花西子雕花杜鹃·兰心', '花西子雕花M409');
INSERT INTO Fuzz
VALUES (520, '花西子雕花M126', '花西子雕花杜鹃·惊鸿', '花西子雕花M126');
INSERT INTO Fuzz
VALUES (521, '花西子雕花M122', '花西子雕花绛仙绣', '花西子雕花M122');
INSERT INTO Fuzz
VALUES (522, '花西子雕花M408', '花西子雕花子期绣', '花西子雕花M408');
INSERT INTO Fuzz
VALUES (523, '花西子鲜花口红M201', '花西子鲜花口红媚花奴', '花西子鲜花口红M201');
INSERT INTO Fuzz
VALUES (524, '花西子鲜花口红M103', '花西子鲜花口红小红春', '花西子鲜花口红M103');
INSERT INTO Fuzz
VALUES (525, '花西子鲜花口红M101', '花西子鲜花口红天宫巧', '花西子鲜花口红M101');
INSERT INTO Fuzz
VALUES (526, '花西子鲜花口红M102', '花西子鲜花口红大红春', '花西子鲜花口红M102');
INSERT INTO Fuzz
VALUES (527, '花西子鲜花唇釉M402', '花西子鲜花唇釉紫檀衣', '花西子鲜花唇釉M402');
INSERT INTO Fuzz
VALUES (528, '花西子鲜花唇釉M101', '花西子鲜花唇釉帝女红', '花西子鲜花唇釉M101');
INSERT INTO Fuzz
VALUES (529, '雅诗兰黛倾慕唇膏557#', '雅诗兰黛倾慕唇膏焦糖烤栗', '雅诗兰黛倾慕唇膏557#');
INSERT INTO Fuzz
VALUES (530, '雅诗兰黛绝色魅惑唇膏314#', '雅诗兰黛绝色魅惑唇膏酒渍杨梅色', '雅诗兰黛绝色魅惑唇膏314#');
INSERT INTO Fuzz
VALUES (531, '雅诗兰黛倾慕唇膏420#', '雅诗兰黛倾慕唇膏豆沙色', '雅诗兰黛倾慕唇膏420#');
INSERT INTO Fuzz
VALUES (532, '雅诗兰黛倾慕唇膏333#', '雅诗兰黛倾慕唇膏干枫叶色', '雅诗兰黛倾慕唇膏333#');
INSERT INTO Fuzz
VALUES (533, '露华浓丽采神奇女侠限量002', '露华浓丽采神奇女侠限量女侠红', '露华浓丽采神奇女侠限量002');
INSERT INTO Fuzz
VALUES (534, '露华浓丽采神奇女侠限量003', '露华浓丽采神奇女侠限量陶土棕', '露华浓丽采神奇女侠限量003');
INSERT INTO Fuzz
VALUES (535, '露华浓丽采经典口红225', '露华浓丽采经典口红棕调豆沙', '露华浓丽采经典口红225');
INSERT INTO Fuzz
VALUES (536, '露华浓丽采经典口红006', '露华浓丽采经典口红橘调枫红', '露华浓丽采经典口红006');
INSERT INTO Fuzz
VALUES (537, '露华浓丽采经典口红325', '露华浓丽采经典口红橘调棕红', '露华浓丽采经典口红325');
INSERT INTO Fuzz
VALUES (538, '露华浓丽采经典口红525', '露华浓丽采经典口红枫叶豆沙', '露华浓丽采经典口红525');
INSERT INTO Fuzz
VALUES (539, '露华浓哑光丽采口红051', '露华浓哑光丽采口红棕调正红', '露华浓哑光丽采口红051');
INSERT INTO Fuzz
VALUES (540, '露华浓丽采经典口红745', '露华浓丽采经典口红惹火野莓', '露华浓丽采经典口红745');
INSERT INTO Fuzz
VALUES (541, '露华浓丽采经典口红782', '露华浓丽采经典口红宝石草莓红', '露华浓丽采经典口红782');
INSERT INTO Fuzz
VALUES (542, '露华浓丽采经典口红028', '露华浓丽采经典口红樱桃熟了', '露华浓丽采经典口红028');
INSERT INTO Fuzz
VALUES (543, '露华浓丽采经典口红730', '露华浓丽采经典口红玫调正红', '露华浓丽采经典口红730');
INSERT INTO Fuzz
VALUES (544, '露华浓丽采经典口红445', '露华浓丽采经典口红玫瑰豆沙', '露华浓丽采经典口红445');
INSERT INTO Fuzz
VALUES (545, '露华浓丽采经典口红677', '露华浓丽采经典口红橘子汽水', '露华浓丽采经典口红677');
INSERT INTO Fuzz
VALUES (546, '露华浓丽采经典口红510', '露华浓丽采经典口红浓郁浆果', '露华浓丽采经典口红510');
INSERT INTO Fuzz
VALUES (547, '露华浓丽采经典口红740', '露华浓丽采经典口红当红不让', '露华浓丽采经典口红740');
INSERT INTO Fuzz
VALUES (548, '露华浓丽采经典口红415', '露华浓丽采经典口红午后蔷薇', '露华浓丽采经典口红415');
INSERT INTO Fuzz
VALUES (549, '露华浓丽采经典哑光黑管008', '露华浓丽采经典哑光黑管棕调正红', '露华浓丽采经典哑光黑管008');
INSERT INTO Fuzz
VALUES (550, '露华浓哑光丽采口红052', '露华浓哑光丽采口红紫调樱桃', '露华浓哑光丽采口红052');
INSERT INTO Fuzz
VALUES (551, '露华浓丽采经典哑光黑管017', '露华浓丽采经典哑光黑管蓝调樱桃', '露华浓丽采经典哑光黑管017');
INSERT INTO Fuzz
VALUES (552, '露华浓丽采经典哑光黑管026', '露华浓丽采经典哑光黑管陶土砖红', '露华浓丽采经典哑光黑管026');
INSERT INTO Fuzz
VALUES (553, '露华浓丽采经典哑光黑管007', '露华浓丽采经典哑光黑管冰晶血橙', '露华浓丽采经典哑光黑管007');
INSERT INTO Fuzz
VALUES (554, '露华浓丽采经典哑光黑管053', '露华浓丽采经典哑光黑管元气血橙', '露华浓丽采经典哑光黑管053');
INSERT INTO Fuzz
VALUES (555, '露华浓丽采经典口红435', '露华浓丽采经典口红西柚柔粉', '露华浓丽采经典口红435');
INSERT INTO Fuzz
VALUES (556, '露华浓丽采经典口红460', '露华浓丽采经典口红嫣红木槿', '露华浓丽采经典口红460');
INSERT INTO Fuzz
VALUES (557, '露华浓丽采经典口红756', '露华浓丽采经典口红赤裸危情', '露华浓丽采经典口红756');
INSERT INTO Fuzz
VALUES (558, '露华浓丽采经典口红761', '露华浓丽采经典口红橘调砖红', '露华浓丽采经典口红761');
INSERT INTO Fuzz
VALUES (559, '露华浓丽采经典口红762', '露华浓丽采经典口红晨露蔷薇', '露华浓丽采经典口红762');
INSERT INTO Fuzz
VALUES (560, '露华浓丽采经典口红771', '露华浓丽采经典口红多汁桑葚', '露华浓丽采经典口红771');
INSERT INTO Fuzz
VALUES (561, '露华浓丽采经典口红773', '露华浓丽采经典口红半熟杏子', '露华浓丽采经典口红773');
INSERT INTO Fuzz
VALUES (562, '露华浓丽采经典口红774', '露华浓丽采经典口红雪中梅', '露华浓丽采经典口红774');
INSERT INTO Fuzz
VALUES (563, '露华浓丽采经典口红775', '露华浓丽采经典口红梅调正红', '露华浓丽采经典口红775');
INSERT INTO Fuzz
VALUES (564, '露华浓丽采经典口红777', '露华浓丽采经典口红午夜车厘', '露华浓丽采经典口红777');
INSERT INTO Fuzz
VALUES (565, '露华浓丽采经典口红005', '露华浓丽采经典口红日暮浅橘', '露华浓丽采经典口红005');
INSERT INTO Fuzz
VALUES (566, '露华浓丽采经典口红616', '露华浓丽采经典口红桃你欢心', '露华浓丽采经典口红616');
INSERT INTO Fuzz
VALUES (567, '露华浓丽采经典口红641', '露华浓丽采经典口红辛辣肉桂', '露华浓丽采经典口红641');
INSERT INTO Fuzz
VALUES (568, '露华浓丽采经典口红654', '露华浓丽采经典口红惊情嫣红', '露华浓丽采经典口红654');
INSERT INTO Fuzz
VALUES (569, '露华浓丽采雾面哑光口红024', '露华浓丽采雾面哑光口红丝绒血橙色', '露华浓丽采雾面哑光口红024');
INSERT INTO Fuzz
VALUES (570, '露华浓丽采雾面哑光口红225', '露华浓丽采雾面哑光口红橘棕肉桂色', '露华浓丽采雾面哑光口红225');
INSERT INTO Fuzz
VALUES (571, '露华浓丽采雾面哑光口红730', '露华浓丽采雾面哑光口红玫调正红色', '露华浓丽采雾面哑光口红730');
INSERT INTO Fuzz
VALUES (572, '露华浓丽采雾面哑光口红525', '露华浓丽采雾面哑光口红枫叶豆沙色', '露华浓丽采雾面哑光口红525');
INSERT INTO Fuzz
VALUES (573, '露华浓丽采雾面哑光口红006', '露华浓丽采雾面哑光口红橘调正红', '露华浓丽采雾面哑光口红006');
INSERT INTO Fuzz
VALUES (574, '露华浓丽采雾面哑光口红325', '露华浓丽采雾面哑光口红橘调红棕', '露华浓丽采雾面哑光口红325');
INSERT INTO Fuzz
VALUES (575, '露华浓丽采雾面哑光口红745', '露华浓丽采雾面哑光口红蓝调梅子', '露华浓丽采雾面哑光口红745');
INSERT INTO Fuzz
VALUES (576, '露华浓升级丽采唇膏#001', '露华浓升级丽采唇膏奶茶裸橘', '露华浓升级丽采唇膏#001');
INSERT INTO Fuzz
VALUES (577, '露华浓升级丽采唇膏#002', '露华浓升级丽采唇膏辛辣可可', '露华浓升级丽采唇膏#002');
INSERT INTO Fuzz
VALUES (578, '露华浓升级丽采唇膏#003', '露华浓升级丽采唇膏日暮浅咖', '露华浓升级丽采唇膏#003');
INSERT INTO Fuzz
VALUES (579, '露华浓升级丽采唇膏#004', '露华浓升级丽采唇膏桃桃拿铁', '露华浓升级丽采唇膏#004');
INSERT INTO Fuzz
VALUES (580, '露华浓升级丽采唇膏#005', '露华浓升级丽采唇膏爆炸甜心', '露华浓升级丽采唇膏#005');
INSERT INTO Fuzz
VALUES (581, '露华浓升级丽采唇膏#006', '露华浓升级丽采唇膏以紫传情', '露华浓升级丽采唇膏#006');
INSERT INTO Fuzz
VALUES (582, '露华浓升级丽采唇膏#009', '露华浓升级丽采唇膏亲吻呢喃', '露华浓升级丽采唇膏#009');
INSERT INTO Fuzz
VALUES (583, '露华浓升级丽采唇膏#011', '露华浓升级丽采唇膏曲奇奶咖', '露华浓升级丽采唇膏#011');
INSERT INTO Fuzz
VALUES (584, '露华浓升级丽采唇膏#014', '露华浓升级丽采唇膏无人区玫瑰', '露华浓升级丽采唇膏#014');
INSERT INTO Fuzz
VALUES (585, '露华浓升级丽采唇膏#015', '露华浓升级丽采唇膏灰雾粉调', '露华浓升级丽采唇膏#015');
INSERT INTO Fuzz
VALUES (586, '露华浓升级丽采唇膏#016', '露华浓升级丽采唇膏诱粉甜心', '露华浓升级丽采唇膏#016');
INSERT INTO Fuzz
VALUES (587, '露华浓升级丽采唇膏#021', '露华浓升级丽采唇膏烟紫草莓', '露华浓升级丽采唇膏#021');
INSERT INTO Fuzz
VALUES (588, '露华浓升级丽采唇膏#022', '露华浓升级丽采唇膏棕咖', '露华浓升级丽采唇膏#022');
INSERT INTO Fuzz
VALUES (589, '露华浓升级丽采唇膏#023', '露华浓升级丽采唇膏血渍樱桃', '露华浓升级丽采唇膏#023');
INSERT INTO Fuzz
VALUES (590, '露华浓升级丽采唇膏#024', '露华浓升级丽采唇膏丝绒血橙', '露华浓升级丽采唇膏#024');
INSERT INTO Fuzz
VALUES (591, '露华浓升级丽采唇膏#025', '露华浓升级丽采唇膏雾感柔粉', '露华浓升级丽采唇膏#025');
INSERT INTO Fuzz
VALUES (592, '露华浓升级丽采唇膏#048', '露华浓升级丽采唇膏紫调豆沙', '露华浓升级丽采唇膏#048');
INSERT INTO Fuzz
VALUES (593, '露华浓升级丽采唇膏#057', '露华浓升级丽采唇膏牛血红', '露华浓升级丽采唇膏#057');
INSERT INTO Fuzz
VALUES (594, '露华浓升级丽采唇膏#058', '露华浓升级丽采唇膏暗夜樱桃', '露华浓升级丽采唇膏#058');
INSERT INTO Fuzz
VALUES (595, '露华浓哑光雾感唇釉605', '露华浓哑光雾感唇釉冷调莓紫', '露华浓哑光雾感唇釉605');
INSERT INTO Fuzz
VALUES (596, '露华浓哑光雾感唇釉635', '露华浓哑光雾感唇釉复古红莓', '露华浓哑光雾感唇釉635');
INSERT INTO Fuzz
VALUES (597, '露华浓哑光雾感唇釉600', '露华浓哑光雾感唇釉雾粉豆沙', '露华浓哑光雾感唇釉600');
INSERT INTO Fuzz
VALUES (598, '露华浓哑光雾感唇釉625', '露华浓哑光雾感唇釉番茄橘红', '露华浓哑光雾感唇釉625');
INSERT INTO Fuzz
VALUES (599, '露华浓哑光雾感唇釉615', '露华浓哑光雾感唇釉玫瑰柔粉', '露华浓哑光雾感唇釉615');
INSERT INTO Fuzz
VALUES (600, '露华浓哑光雾感唇釉660', '露华浓哑光雾感唇釉石榴红', '露华浓哑光雾感唇釉660');
INSERT INTO Fuzz
VALUES (601, '露华浓哑光雾感唇釉690', '露华浓哑光雾感唇釉金粉裸米', '露华浓哑光雾感唇釉690');
INSERT INTO Fuzz
VALUES (602, '露华浓哑光雾感唇釉705', '露华浓哑光雾感唇釉蜜月红棕', '露华浓哑光雾感唇釉705');
INSERT INTO Fuzz
VALUES (603, '露华浓哑光雾感唇釉700', '露华浓哑光雾感唇釉星降落日', '露华浓哑光雾感唇釉700');
INSERT INTO Fuzz
VALUES (604, '露华浓哑光雾感唇釉680', '露华浓哑光雾感唇釉樱花人鱼姬', '露华浓哑光雾感唇釉680');
INSERT INTO Fuzz
VALUES (605, '露华浓持妆镜面唇釉#018', '露华浓持妆镜面唇釉酱辣椒色', '露华浓持妆镜面唇釉#018');
INSERT INTO Fuzz
VALUES (606, '露华浓持妆镜面唇釉#019', '露华浓持妆镜面唇釉血浆正红色', '露华浓持妆镜面唇釉#019');
INSERT INTO Fuzz
VALUES (607, '露华浓持妆镜面唇釉#006', '露华浓持妆镜面唇釉绵绵豆沙色', '露华浓持妆镜面唇釉#006');
INSERT INTO Fuzz
VALUES (608, '露华浓持妆镜面唇釉#003', '露华浓持妆镜面唇釉咖啡朗姆色', '露华浓持妆镜面唇釉#003');
INSERT INTO Fuzz
VALUES (609, '露华浓持妆镜面唇釉#008', '露华浓持妆镜面唇釉微醺柔紫色', '露华浓持妆镜面唇釉#008');
INSERT INTO Fuzz
VALUES (610, '露华浓持妆镜面唇釉#009', '露华浓持妆镜面唇釉雾粉蜜桃色', '露华浓持妆镜面唇釉#009');
INSERT INTO Fuzz
VALUES (611, '露华浓持妆镜面唇釉#013', '露华浓持妆镜面唇釉焦糖南瓜色', '露华浓持妆镜面唇釉#013');
INSERT INTO Fuzz
VALUES (612, '露华浓持妆镜面唇釉#015', '露华浓持妆镜面唇釉橘红色', '露华浓持妆镜面唇釉#015');
INSERT INTO Fuzz
VALUES (613, '露华浓持妆镜面唇釉#020', '露华浓持妆镜面唇釉车厘子红', '露华浓持妆镜面唇釉#020');
INSERT INTO Fuzz
VALUES (614, '露华浓艳彩滋润唇膏笔#025', '露华浓艳彩滋润唇膏笔甜心樱桃色', '露华浓艳彩滋润唇膏笔#025');
INSERT INTO Fuzz
VALUES (615, '露华浓艳彩滋润唇膏笔#045', '露华浓艳彩滋润唇膏笔浪漫棕红色', '露华浓艳彩滋润唇膏笔#045');
INSERT INTO Fuzz
VALUES (616, '露华浓艳彩滋润唇膏笔#055', '露华浓艳彩滋润唇膏笔挚爱浆果红', '露华浓艳彩滋润唇膏笔#055');
INSERT INTO Fuzz
VALUES (617, '露华浓雾彩气垫唇笔#210', '露华浓雾彩气垫唇笔蜜桃乌龙色', '露华浓雾彩气垫唇笔#210');
INSERT INTO Fuzz
VALUES (618, '露华浓雾彩气垫唇笔#220', '露华浓雾彩气垫唇笔野蔷薇色', '露华浓雾彩气垫唇笔#220');
INSERT INTO Fuzz
VALUES (619, '露华浓雾彩气垫唇笔#240', '露华浓雾彩气垫唇笔浆果梅紫色', '露华浓雾彩气垫唇笔#240');
INSERT INTO Fuzz
VALUES (620, '露华浓雾彩气垫唇笔#250', '露华浓雾彩气垫唇笔红姜梨色', '露华浓雾彩气垫唇笔#250');
INSERT INTO Fuzz
VALUES (621, '露华浓雾彩气垫唇笔#260', '露华浓雾彩气垫唇笔珊瑚血橙色', '露华浓雾彩气垫唇笔#260');
INSERT INTO Fuzz
VALUES (622, '露华浓雾彩气垫唇笔#230', '露华浓雾彩气垫唇笔玫瑰紫藤色', '露华浓雾彩气垫唇笔#230');
INSERT INTO Fuzz
VALUES (623, '露华浓雾彩气垫唇笔#270', '露华浓雾彩气垫唇笔勃艮第酒红色', '露华浓雾彩气垫唇笔#270');
INSERT INTO Fuzz
VALUES (624, '露华浓雾彩气垫唇笔#200', '露华浓雾彩气垫唇笔玫瑰茶棕色', '露华浓雾彩气垫唇笔#200');
INSERT INTO Fuzz
VALUES (625, '露华浓雾彩气垫唇笔#280', '露华浓雾彩气垫唇笔黑巧棕色', '露华浓雾彩气垫唇笔#280');
/*!40000 ALTER TABLE `Fuzz` ENABLE KEYS */;
COMMIT;



