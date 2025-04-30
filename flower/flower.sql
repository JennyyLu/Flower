/*
Navicat MySQL Data Transfer

Source Server         : Local Server
Source Server Version : 50649
Source Host           : localhost:3306
Source Database       : flower

Target Server Type    : MYSQL
Target Server Version : 50649
File Encoding         : 65001

Date: 2024-01-01 04:32:02
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `admin`
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `adminID` int(11) NOT NULL AUTO_INCREMENT,
  `adminName` varchar(50) DEFAULT NULL,
  `adminPassword` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`adminID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES ('1', 'admin1', 'adminadmin');
INSERT INTO `admin` VALUES ('2', 'luzhoutong', 'adminadmin');

-- ----------------------------
-- Table structure for `messages`
-- ----------------------------
DROP TABLE IF EXISTS `messages`;
CREATE TABLE `messages` (
  `contactID` int(11) NOT NULL AUTO_INCREMENT,
  `contactName` varchar(50) DEFAULT NULL,
  `contactEmail` varchar(50) DEFAULT NULL,
  `selectIssues` varchar(255) DEFAULT NULL,
  `issuesDetails` text,
  `contactDate` date DEFAULT NULL,
  `contactReply` text,
  `replyDate` date DEFAULT NULL,
  PRIMARY KEY (`contactID`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of messages
-- ----------------------------
INSERT INTO `messages` VALUES ('1', 'asdf', 'asdfa', 'Product Questions or Issues', 'we are', '2023-12-23', null, null);
INSERT INTO `messages` VALUES ('2', 'asdf', 'asdfa', 'Product Questions or Issues', 'we are', '2023-12-23', null, null);
INSERT INTO `messages` VALUES ('3', 'asdf', 'asdfa', 'Product Questions or Issues', 'we are', '2023-12-23', null, null);
INSERT INTO `messages` VALUES ('4', 'asdf', 'asdfa', 'Product Questions or Issues', 'the package', '2023-12-23', null, null);
INSERT INTO `messages` VALUES ('5', 'sdfr', 'sca', 'Website Feedback, Checkout or Promotions Issue', 'we are are are are are are are', '2023-12-23', null, null);
INSERT INTO `messages` VALUES ('6', 'asdfsd', 'ergetgqerg', 'Product Questions or Issues', 'asdfrsatgaergretgqer', '2023-12-27', null, null);
INSERT INTO `messages` VALUES ('7', 'srfgdf', 'dfgzdfgzdfg', 'Product Questions or Issues', 'setrysety', '2023-12-27', null, null);
INSERT INTO `messages` VALUES ('8', '1111', 'asdfa', 'Product Questions or Issues', '爱德发给发个公告', '2023-12-27', null, null);

-- ----------------------------
-- Table structure for `news`
-- ----------------------------
DROP TABLE IF EXISTS `news`;
CREATE TABLE `news` (
  `newsID` int(11) NOT NULL AUTO_INCREMENT,
  `newsTitle` varchar(255) DEFAULT NULL,
  `newsDate` date DEFAULT NULL,
  `newsSource` varchar(255) DEFAULT NULL,
  `newsContent` text,
  `newsAuthorID` int(11) DEFAULT NULL,
  `newsHit` int(11) DEFAULT NULL,
  PRIMARY KEY (`newsID`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of news
-- ----------------------------
INSERT INTO `news` VALUES ('5', 'aaaaabbbbbb', '2023-12-14', 'sadfsdfsadf', '<p>\r\n	asdfdasdffasdf</p>\r\n', '1', '10');
INSERT INTO `news` VALUES ('6', 'aaaaa', '2023-12-23', 'sdfsdf', '<p>\r\n	<img alt=\"\" src=\"/flower/uploads/images/cosmos-flower-1707295_1280.jpg\" style=\"width: 1280px; height: 791px;\" /></p>\r\n', '2', null);
INSERT INTO `news` VALUES ('7', 'Britain in Bloom: Brandon takes gold and wins Town category', '2023-12-23', 'By Shannon EustaceBBC News, Suffolk', '<p>\r\n	<img alt=\"\" src=\"/flower/uploads/images/news3.jpg\" style=\"width: 1280px; height: 926px;\" />Brandon took home a gold award and was also named winner of the Town category, being praised by judges for its &quot;efforts to reduce pollution&quot;.</p>\r\n<p>\r\n	Brandon&#39;s town flowers are managed by Brandon in Bloom, a community interest company run by local volunteers.</p>\r\n<p>\r\n	Newcastle-under-Lyme was the overall winner of the Britain in Bloom 2023 UK finals.</p>\r\n<p>\r\n	&nbsp;</p>\r\n<p>\r\n	Gary Brocklehurst, chairman of Brandon in Bloom, said the achievement was &quot;absolutely fantastic&quot;.</p>\r\n<p>\r\n	&quot;The traders are going to benefit from it, the local economy - it&#39;s just going to do so much,&quot; he said.</p>\r\n<p>\r\n	Judges commended the town&#39;s commitment to sustainability, with its 19 self-watering promenade planters, free-draining soil, and perennials to &quot;capture pollution&quot;.</p>\r\n<p>\r\n	&nbsp;</p>\r\n', '2', null);

-- ----------------------------
-- Table structure for `users`
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `userID` int(11) NOT NULL AUTO_INCREMENT,
  `userName` varchar(50) DEFAULT NULL,
  `userPassword` varchar(50) DEFAULT NULL,
  `userEmail` varchar(50) DEFAULT NULL,
  `userDate` datetime DEFAULT NULL,
  PRIMARY KEY (`userID`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('1', 'abc', '12341234', 'dsdf@126.com', '2021-09-23 00:00:00');
INSERT INTO `users` VALUES ('2', 'abc', '12341234', 'dsdf@126.com', '2021-09-23 00:00:00');
INSERT INTO `users` VALUES ('3', 'dgsdgra', '12341234', 'asddrggadfg@gmail.com', '2021-04-21 00:00:00');
INSERT INTO `users` VALUES ('4', 'deft ', '12341234', 'asdgeradfg@gmail.com', '2021-04-21 00:00:00');
INSERT INTO `users` VALUES ('5', 'deft ', '12341234', 'asddfgradfg@gmail.com', '2021-04-21 00:00:00');
INSERT INTO `users` VALUES ('6', 'ergwdf', '12341234', 'asdsefasrggawrwdfg@gmail.com', '2021-04-21 00:00:00');
INSERT INTO `users` VALUES ('7', '4rr', '12341234', 'asdgwdfg@gmail.com', '2021-04-21 00:00:00');
INSERT INTO `users` VALUES ('8', 'ergwdf', '12341234', 'asradfg@gmail.com', '2021-04-21 00:00:00');
INSERT INTO `users` VALUES ('9', 'ergwergwdf', '12341234', 'asradregg@gmail.com', '2021-04-21 00:00:00');
INSERT INTO `users` VALUES ('10', 'ergwergwdf', '12341234', 'asradregg@gmail.com', '2021-04-21 00:00:00');
INSERT INTO `users` VALUES ('11', '卢周桐', '12341234', 'assdfadfg@gmail.com', '2021-04-21 00:00:00');
INSERT INTO `users` VALUES ('12', 'abc', '112233', 'abcabcq@gmail.com', '2021-04-21 00:00:00');
INSERT INTO `users` VALUES ('13', 'ergwdf', '12341234', 'asddfgrafg@gmail.com', '2021-04-21 00:00:00');
INSERT INTO `users` VALUES ('14', '4rr', '12341234', 'abcabwwcq@gmail.com', '2021-04-21 00:00:00');
INSERT INTO `users` VALUES ('15', 'ergwdf', '12341234', 'asdsefarwdfg@gmail.com', '2021-04-21 00:00:00');
INSERT INTO `users` VALUES ('16', 'Nick', '12341234', 'asdflkj@gmail.com', '2021-04-21 00:00:00');
INSERT INTO `users` VALUES ('17', 'ergwdf', '12341234', 'asddfg@gmail.com', '2021-04-21 00:00:00');
INSERT INTO `users` VALUES ('18', 'ergwdf', '12341234', 'ab11cabcq@gmail.com', '2021-04-21 00:00:00');
INSERT INTO `users` VALUES ('19', 'ergwdf', '12341234', 'abcassbcq@gmail.com', '2021-04-21 00:00:00');
INSERT INTO `users` VALUES ('20', 'luzhoutokng', '1234512345', '123123@gmail.com', '2021-04-21 00:00:00');
INSERT INTO `users` VALUES ('21', '张永乐', '123456', 'abcabc11@gmail.com', '2021-04-21 00:00:00');
INSERT INTO `users` VALUES ('22', 'zhoutong', 'abcabc', 'abcabc@gmail.com', '2021-04-21 00:00:00');
