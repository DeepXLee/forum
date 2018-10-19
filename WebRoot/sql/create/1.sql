# MySQL-Front 5.0  (Build 1.0)

/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE */;
/*!40101 SET SQL_MODE='STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES */;
/*!40103 SET SQL_NOTES='ON' */;


# Host: localhost    Database: bfblog
# ------------------------------------------------------
# Server version 5.0.67-community-nt

#
# Table structure for table article
#

#CREATE DATABASE bfblog;

DROP TABLE IF EXISTS `article`;
CREATE TABLE `article` (
  `Id` int(11) NOT NULL auto_increment,
  `title` varchar(50) default NULL,
  `content` text,
  `username` varchar(50) default NULL,
  `date` datetime default NULL,
  `classify` varchar(50) default NULL,
  `software` varchar(50) default NULL,
  `hasread` int(11) default '0',
  PRIMARY KEY  (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;

insert  into article(title,content,username,date,classify,software) values ('第10篇帖子啊','经查，夏兴华身为党的高级领导干部，纪律意识淡薄，违反中央八项规定精神，借出差之机旅游，违规打高尔夫球并由他人支付费用；违反组织纪律，不按规定报告个人有关事项，在组织函询时不如实说明问题；违反廉洁纪律，收受礼金，由下属单位和他人支付应当由个人支付的费用，明显低于市场价购买住房，谋取私利。依据《中国共产党纪律处分条例》的有关规定，经中央纪委常委会议审议并报中共中央批准，决定给予夏兴华开除党籍处分，按主任科员确定退休待遇。','Tom','2018-01-03','技术问答','java'),
('第11篇帖子开始','卢淳杰身为党员领导干部，理想信念丧失，严重违反党的纪律，且在党的十八大后仍不收敛、不收手，性质恶劣、情节严重。依据《中国共产党纪律处分条例》等有关规定，经省纪委常委会议审议并报省委批准，决定给予卢淳杰开除党籍处分;经省监察厅报省政府批准，决定给予其开除公职处分;收缴其违纪所得;将其涉嫌犯罪问题、线索及所涉款物移送司法机关依法处理。(广东省纪委)','Tom','2017-10-09','技术问答','java'),
('第12篇帖子啊','中央纪委数据显示，2016年已办结的77件中管干部违纪案件中，按第二和第三种形态处理的案件57件，占74%，比2015年增长90%;按第四种形态处理的案件20件，占26%，比2015年减少56.5%。“一升一降”，反映出按照“四种形态”要求，案件处理出现结构性变化。\r\n1月至11月，中央纪委处置反映中管干部问题线索中，谈话函询1305件次，比2015年同期增长96.5%。全国纪检监察机关谈话函询11.1万件次，比2015年同期增长205.8%。\r\n把纪律挺在前面，也让一些有问题的干部放下包袱。仅2016年上半年全国就有2.9万名干部主动向纪检监察机关交代问题，是2015年全年的5倍多。\r\n执纪理念不断转变:防微杜渐，把违反纪律作为审查重点\r\n从纪检监察机关工作的实际看，当前党员干部违反政治纪律的情形较为突出。有的领导干部理想信念动摇、阳奉阴违，做“两面人”;有的严重违反政治纪律，搞结党营私、团团伙伙、拉帮结派、谋取权位等政治阴谋活动;有的不相信组织，反而相信“小圈子”，相信社会上的“能人”，甚至“不信马列信鬼神”，请风水先生、江湖术士出谋划策，对抗组织审查。','Jerry','2018-03-04','技术问答','java'),
('第13篇帖子啊','尽管是元旦假期，考古现场出入处均有保安值守，严防人员进入考古现场。据观察，江口沉银遗址岷江岸边的公路边张贴有多张施工通告，在挂有“江口崖墓”的入口处写有提示“考古工地预约参观”。','Jerry','2018-04-05','技术问答','java');

#
# Table structure for table bloginfo
#

DROP TABLE IF EXISTS `bloginfo`;
CREATE TABLE `bloginfo` (
  `username` varchar(20) NOT NULL default '',
  `blogtitle` varchar(50) default NULL,
  `idiograph` varchar(50) default NULL,
  PRIMARY KEY  (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Table structure for table critique
#

DROP TABLE IF EXISTS `critique`;
CREATE TABLE `critique` (
  `Id` int(11) NOT NULL auto_increment,
  `AId` int(11) default NULL,
  `content` text,
  `username` varchar(50) default NULL,
  PRIMARY KEY  (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;

insert into critique(AId,content,username) value(31,"这个文章有意思","Tom") where Id=11;

#
# Table structure for table dianjiliang
#

DROP TABLE IF EXISTS `dianjiliang`;
CREATE TABLE `dianjiliang` (
  `Id` int(11) NOT NULL auto_increment,
  `AId` int(11) default NULL,
  `ip` varchar(255) default NULL,
  `time` date default NULL,
  PRIMARY KEY  (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8;

#
# Table structure for table user
#

DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `username` varchar(20) NOT NULL,
  `password` varchar(20) default NULL,
  `phoneNum` varchar(20) default NULL,
  `mail` varchar(50) default NULL,
  `sex` varchar(3) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

insert into user(username,password,phoneNum,mail,sex) values("Tom","123","15900001111","6584605","男"),
("Emma","000","15900002222","6+416616","女"),
("Jerry","456","15900003333","10102","男");

/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
