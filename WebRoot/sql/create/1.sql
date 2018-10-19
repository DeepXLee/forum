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

insert  into article(title,content,username,date,classify,software) values ('��10ƪ���Ӱ�','���飬���˻���Ϊ���ĸ߼��쵼�ɲ���������ʶ������Υ���������涨���񣬽����֮�����Σ�Υ���߶�����������֧�����ã�Υ����֯���ɣ������涨��������й��������֯��ѯʱ����ʵ˵�����⣻Υ��������ɣ����������������λ������֧��Ӧ���ɸ���֧���ķ��ã����Ե����г��۹���ס����ıȡ˽�������ݡ��й����������ɴ������������йع涨���������ί��ί�������鲢���й�������׼�������������˻������������֣������ο�Աȷ�����ݴ�����','Tom','2018-01-03','�����ʴ�','java'),
('��11ƪ���ӿ�ʼ','¬������Ϊ��Ա�쵼�ɲ�����������ɥʧ������Υ�����ļ��ɣ����ڵ���ʮ�˴���Բ������������֣����ʶ��ӡ�������ء����ݡ��й����������ɴ������������йع涨����ʡ��ί��ί�������鲢��ʡί��׼����������¬���ܿ�����������;��ʡ�������ʡ������׼�����������俪����ְ����;�ս���Υ������;�������ӷ������⡢�����������������˾��������������(�㶫ʡ��ί)','Tom','2017-10-09','�����ʴ�','java'),
('��12ƪ���Ӱ�','�����ί������ʾ��2016���Ѱ���77���йܸɲ�Υ�Ͱ����У����ڶ��͵�������̬����İ���57����ռ74%����2015������90%;����������̬����İ���20����ռ26%����2015�����56.5%����һ��һ��������ӳ�����ա�������̬��Ҫ�󣬰���������ֽṹ�Ա仯��\r\n1����11�£������ί���÷�ӳ�йܸɲ����������У�̸����ѯ1305���Σ���2015��ͬ������96.5%��ȫ���ͼ������̸����ѯ11.1����Σ���2015��ͬ������205.8%��\r\n�Ѽ���ͦ��ǰ�棬Ҳ��һЩ������ĸɲ����°�������2016���ϰ���ȫ������2.9�����ɲ�������ͼ�����ؽ������⣬��2015��ȫ���5���ࡣ\r\nִ�������ת��:��΢�Ž�����Υ��������Ϊ����ص�\r\n�Ӽͼ�����ع�����ʵ�ʿ�����ǰ��Ա�ɲ�Υ�����μ��ɵ����ν�Ϊͻ�����е��쵼�ɲ��������ҡ��������Υ�����������ˡ�;�е�����Υ�����μ��ɣ���ᵳӪ˽�����Ż�������ɡ�ıȡȨλ��������ı�;�еĲ�������֯���������š�СȦ�ӡ�����������ϵġ����ˡ������������������Ź��񡱣����ˮ������������ʿ��ı���ߣ��Կ���֯��顣','Jerry','2018-03-04','�����ʴ�','java'),
('��13ƪ���Ӱ�','������Ԫ�����ڣ������ֳ����봦���б���ֵ�أ��Ϸ���Ա���뿼���ֳ����ݹ۲죬���ڳ�����ַẽ����ߵĹ�·�������ж���ʩ��ͨ�棬�ڹ��С�������Ĺ������ڴ�д����ʾ�����Ź���ԤԼ�ιۡ���','Jerry','2018-04-05','�����ʴ�','java');

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

insert into critique(AId,content,username) value(31,"�����������˼","Tom") where Id=11;

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

insert into user(username,password,phoneNum,mail,sex) values("Tom","123","15900001111","6584605","��"),
("Emma","000","15900002222","6+416616","Ů"),
("Jerry","456","15900003333","10102","��");

/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
