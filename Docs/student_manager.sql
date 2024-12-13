
-- create database student_manager

CREATE DATABASE IF NOT EXISTS student_manager;
USE student_manager;

-- create table student

DROP TABLE IF EXISTS `student`;
CREATE TABLE `student` (
  `id` varchar(50) NOT NULL,
  `password` varchar(50) DEFAULT '0',
  `name` varchar(50) NOT NULL,
  `sex` varchar(50) NOT NULL,
  `school_date` varchar(50) NOT NULL,
  `major` varchar(50) NOT NULL,
  `email` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
);
INSERT INTO `student` 
VALUES ('20162430634','0','周华强','男','2016-9','计算机科学与技术',NULL),
       ('20162430635','0','王俊凯','男','2016-9','计算机科学与技术',NULL),
       ('20162430636','0','张宇苍','男','2016-9','软件工程',NULL),
       ('20162430637','0','三松','男','2016-9','计算机科学与技术',NULL),
       ('20162430638','0','王贺龙','男','2016-9','软件工程',NULL),
       ('20162430639','0','张勃','男','2016-9','计算机科学与技术',NULL),
       ('20162430640','0','张红展','男','2016-9','软件工程',NULL),
       ('20162430641','0','赵旺奇','女','2016-9','软件工程',NULL),
       ('20162430642','0','王配','男','2016-9','计算机科学与技术',NULL),
       ('20162430643','0','大伟','男','2016-9','软件工程',NULL),
       ('20162430644','0','谢强','男','2016-09','软件工程',NULL),
       ('20162430645','0','韦清兵','男','2016-09','软件工程卓越班',NULL),
       ('20162430646','0','崔仓豪','男','2018-12','计算机科学与技术',NULL);

-- create table score

DROP TABLE IF EXISTS `score`;
CREATE TABLE `score` (
  `id` varchar(50) NOT NULL,
  `datebase` varchar(50) DEFAULT '',
  `android` varchar(50) DEFAULT '',
  `jsp` varchar(50) DEFAULT '',
  PRIMARY KEY (`id`)
);
INSERT INTO `score` 
VALUES ('20162430634','90','59','90'),
       ('20162430635','59','84','90'),
       ('20162430636','93','97','90'),
       ('20162430637','70','90','90'),
       ('20162430638','90','50','50'),
       ('20162430639','90','90','92'),
       ('20162430640','90','90','90'),
       ('20162430641','40','90','90'),
       ('20162430642','90','90','90'),
       ('20162430643','90','90','90'),
       ('20162430644','85','94','90'),
       ('20162430645','75','67','76'),
       ('20162430646','89','78','87');

-- create table teacher

DROP TABLE IF EXISTS `teacher`;
CREATE TABLE `teacher` (
  `id` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `name` varchar(50) DEFAULT '',
  `sex` varchar(50) DEFAULT '',
  `email` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
);
INSERT INTO `teacher` VALUES ('zzu','zzu','zzu','男',NULL);