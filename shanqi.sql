/*
SQLyog Ultimate v12.09 (64 bit)
MySQL - 5.1.73 : Database - qq2250090225
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`qq2250090225` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `qq2250090225`;

/*Table structure for table `admin` */

DROP TABLE IF EXISTS `admin`;

CREATE TABLE `admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '用户id',
  `uname` varchar(225) NOT NULL COMMENT '用户名',
  `upwd` varchar(225) NOT NULL COMMENT '密码',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

/*Data for the table `admin` */

insert  into `admin`(`id`,`uname`,`upwd`) values (1,'administrator','chenantai');

/*Table structure for table `article` */

DROP TABLE IF EXISTS `article`;

CREATE TABLE `article` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL COMMENT '文章标题',
  `content` text NOT NULL COMMENT '文章内容',
  `adate` datetime NOT NULL COMMENT '文章创建日期',
  `tid` int(11) NOT NULL COMMENT '文章类型的id',
  `clinum` int(11) NOT NULL DEFAULT '0' COMMENT '文章的点击量',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=73 DEFAULT CHARSET=utf8;

/*Data for the table `article` */

insert  into `article`(`id`,`title`,`content`,`adate`,`tid`,`clinum`) values (71,'老人疝气老人疝气','<p>省省</p>','2019-06-15 17:26:39',4,13),(72,'11111','','2019-06-15 17:27:42',2,6),(70,'成人疝气成人疝气','<p>1</p>','2019-06-15 17:20:24',3,10),(69,'儿童疝气儿童疝气','<p>大神&nbsp;</p>','2019-06-15 17:20:05',1,9);

/*Table structure for table `order` */

DROP TABLE IF EXISTS `order`;

CREATE TABLE `order` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pname` varchar(255) NOT NULL DEFAULT '0' COMMENT '产品名',
  `prname` varchar(255) NOT NULL DEFAULT '0' COMMENT '价格名',
  `price` varchar(255) NOT NULL DEFAULT '0' COMMENT '价格',
  `realname` varchar(255) NOT NULL DEFAULT '0' COMMENT '姓名',
  `realid` varchar(255) NOT NULL DEFAULT '0' COMMENT '身份证号',
  `telephone` varchar(255) NOT NULL DEFAULT '0' COMMENT '手机',
  `province` varchar(255) NOT NULL DEFAULT '0' COMMENT '省直辖市',
  `city` varchar(255) NOT NULL DEFAULT '0' COMMENT '地级市',
  `county` varchar(255) NOT NULL DEFAULT '0' COMMENT '区县',
  `address` varchar(255) NOT NULL DEFAULT '0' COMMENT '地址',
  `remark` varchar(255) NOT NULL DEFAULT '0' COMMENT '备注',
  `remark2` varchar(255) NOT NULL DEFAULT '0' COMMENT '管理员备注',
  `crtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `ispay` tinyint(4) NOT NULL DEFAULT '0' COMMENT '确认付款',
  `issend` tinyint(4) NOT NULL DEFAULT '0' COMMENT '确认发货',
  `status` tinyint(4) NOT NULL DEFAULT '1' COMMENT '订单状态',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=56 DEFAULT CHARSET=utf8;

/*Data for the table `order` */

insert  into `order`(`id`,`pname`,`prname`,`price`,`realname`,`realid`,`telephone`,`province`,`city`,`county`,`address`,`remark`,`remark2`,`crtime`,`ispay`,`issend`,`status`) values (21,'善顶级','2323123','1600元','SAD','370829199611220311','13396412133','','','0','nullnullnull','SDA','0','2019-04-27 19:13:55',0,0,0),(22,'善顶级','2323123','1600元','陈安太','370829199611220311','13396412133','','','0','nullnullnull','0','0','2019-04-27 19:16:23',0,0,0),(23,'善顶级','一周期','1600元','陈安太','370829199611220311','13396412133','北京市','北京市市辖区','东城区','北京市北京市市辖区东城区','撒的','0','2019-04-27 19:55:02',0,0,0),(24,'善顶级','一周期','1600元','徐天浩','360427199211180027','18205485209','浙江省','杭州市','上城区','浙江省杭州市上城区为他而为','0','0','2019-04-27 19:56:48',0,0,0),(25,'善顶级','一周期','1600元','巩庆迎','370112198201088944','18663708097','山东省','济南市','历下区','北京市北京市市辖区东城区','0','0','2019-04-27 20:30:21',0,0,0),(26,'善顶级','2瓶','1600元','陈安太','370829199611220311','13396412133','北京市','北京市市辖区','东城区','北京市北京市市辖区东城区','北京市市辖区东城区','0','2019-04-28 18:02:38',0,0,0),(27,'善顶级','2瓶','1600元','陈安太','370829199612030311','13396412133','山东省','济南市','历下区','山东省济南市历下区三庆财富中心','0','0','2019-04-30 10:56:40',0,0,1),(28,'善顶级','2瓶','1600元','徐天浩','360427199211180027','18205485209','江西省','九江市','庐山区','江西省九江市庐山区星子','0','0','2019-04-30 10:58:26',0,0,1),(29,'善顶级','2瓶','1600元','李静','370923199306085026','17865137223','北京市','北京市市辖区','东城区','1112233154','0','0','2019-04-30 10:58:27',0,0,1),(30,'善顶级','2瓶','1600元','陈安太','370829199612030311','13396412133','天津市','天津市市辖区','和平区','天津市天津市市辖区和平区','0','0','2019-04-30 11:01:15',0,0,1),(31,'善顶级','4瓶','2600元','贺连生','152725196403072111','15894951998','内蒙古自治区','鄂尔多斯市','鄂托克旗','内蒙古自治区鄂尔多斯市鄂托克旗乌兰镇','0','0','2019-05-13 12:10:14',0,0,1),(32,'善顶级','2瓶','1600元','唐雪梅','511602196212082325','13538671836','广东省','东莞市','0','广东省东莞市大朗镇长塘旧围b206','0','0','2019-05-19 13:36:59',0,0,1),(33,'善顶级','6瓶','3400元','唐军元','123456789101112','17701072507','北京市','北京市市辖区','延庆区','北京市北京市市辖区延庆区小平塔4号','0','0','2019-05-20 21:51:57',0,0,1),(34,'善顶级','3瓶','2100元','李强','364851756091882986','18765346321','北京市','北京市市辖区','东城区','经济开发区兴业街2号','0','0','2019-05-21 20:02:22',0,0,1),(35,'善顶级','6瓶','3400元','黄子全','441621198304231419','13691977993','广东省','深圳市','南山区','关口二路嘉进隆汽车城A区通利华马自达综合部','0','0','2019-05-22 12:07:45',0,0,1),(36,'善顶级','3瓶','2100元','李文','123456789123456789','12312312312','北京市','北京市市辖区','东城区','123','0','0','2019-05-23 21:01:23',0,0,1),(37,'善顶级','2瓶','1600元','何女士','352201198503150066','15859234284','北京市','北京市市辖区','东城区','厦门市','0','0','2019-05-24 10:40:31',0,0,1),(38,'善顶级','2瓶','1600元','陈安太','370829199612030311','13396412133','北京市','北京市市辖区','东城区','北京市北京市市辖区东城区','三','0','2019-05-28 12:03:06',0,0,1),(39,'善顶级','6瓶','3400元','尹奎章','370703196208110814','13721975518','山东省','潍坊市','寒亭区','山东省潍坊市寒亭区通亭街3879号广电大厦1511室','节假日除外，周一至周无送货（送货带正规发票）。','0','2019-06-03 16:20:45',0,0,1),(40,'善顶级','4瓶','2600元','胡闹','370921199010103245','18211112222','北京市','北京市市辖区','东城区','地址是多少','0','0','2019-06-03 21:09:56',0,0,1),(41,'善顶级','3瓶','2100元','你好','411726197907154835','13100001111','北京市','北京市市辖区','东城区','地址545454','0','0','2019-06-04 09:55:35',0,0,1),(42,'善顶级','3瓶','2100元','哇','372922199812077677','15588512233','辽宁省','丹东市','宽甸满族自治县','辽宁省丹东市宽甸满族自治阿衰打死县','阿斯大三大四的','0','2019-06-14 10:13:27',0,0,1),(43,'善顶级','9瓶','4750元','哇','372922199812077677','15588512233','北京市','北京市市辖区','东城区','北京市北京市市辖区东城区','12r\'f','0','2019-06-14 10:20:35',0,0,1),(44,'善顶级','2瓶','1600元','陈溪风','370829199410120311','15615937210','吉林省','长春市','南关区','吉林省长春市南关区','测试','0','2019-06-14 13:47:02',0,0,1),(45,'善顶级','2瓶','1600元','陈安太','370829199103110311','18696412833','北京市','北京市市辖区','东城区','二环东路','0','0','2019-06-14 13:49:42',0,0,1),(46,'善顶级','2瓶','1600元','陈安太','370829199688880311','13396412133','江西省','宜春市','奉新县','江西省宜春市奉新县','0','0','2019-06-14 14:47:55',0,0,1),(47,'善顶级','2瓶','2瓶：¥1600元','陈思思','370829199411220388','13396412133','河南省','郑州市','中原区','河南省郑州市中原区','0','0','2019-06-14 21:54:49',0,0,1),(48,'善顶级','2瓶','1600元','徐天浩','360427199211180027','18205485209','河北省','秦皇岛市','北戴河区','河北省秦皇岛市北戴河区','0','0','2019-06-15 13:27:31',0,0,1),(49,'善顶级','2瓶','1600元','多的地','372925199302128555','17553018175','北京市','北京市市辖区','东城区','北京市北京市市辖区东城区','0','0','2019-06-15 13:28:56',0,0,1),(50,'善顶级','2瓶','1600元','陈安太','370829199112110311','13396412133','内蒙古自治区','鄂尔多斯市','杭锦旗','内蒙古自治区鄂尔多斯市东胜区','0','0','2019-06-15 13:29:16',0,0,1),(51,'善顶级','3瓶','2100元','李静','370923199306085026','17865137223','北京市','北京市市辖区','东城区','北京市北京市市辖区东城区','0','0','2019-06-15 13:29:30',0,0,1),(52,'善顶级','2瓶','1600元','陈安太','370829199111220311','13396412133','内蒙古自治区','鄂尔多斯市','东胜区','内蒙古自治区呼和浩特市新城区','0','0','2019-06-15 13:31:02',0,0,1),(53,'善顶级','4瓶','2600元','多的地','372925199302128555','17553018175','北京市','北京市市辖区','东城区','北京市北京市市辖区东城区','0','0','2019-06-15 13:31:25',0,0,1),(54,'善顶级','2瓶','1600元','秦男','371324198201319420','15168870705','河北省','石家庄市','长安区','刘家园','0','0','2019-06-15 13:32:21',0,0,1),(55,'善顶级','2瓶','1600元','陈安太','370829199111220311','13396412133','辽宁省','沈阳市','和平区','北京市北京市市辖区东城区','0','0','2019-06-15 13:33:35',0,0,1);

/*Table structure for table `price` */

DROP TABLE IF EXISTS `price`;

CREATE TABLE `price` (
  `prid` int(11) NOT NULL AUTO_INCREMENT,
  `fpid` int(11) NOT NULL COMMENT '父级id',
  `prname` varchar(255) NOT NULL DEFAULT '0' COMMENT '价格名',
  `price` int(11) NOT NULL DEFAULT '0' COMMENT '价格',
  `wximg` varchar(255) NOT NULL DEFAULT '0',
  `crtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`prid`)
) ENGINE=MyISAM AUTO_INCREMENT=33 DEFAULT CHARSET=utf8;

/*Data for the table `price` */

insert  into `price`(`prid`,`fpid`,`prname`,`price`,`wximg`,`crtime`) values (28,12,'2瓶',1600,'/Uploads/erweima/2019/04/30/5cc7b8d0b7982.png','2019-04-30 10:54:08'),(29,12,'3瓶',2100,'/Uploads/erweima/2019/04/30/5cc7b8db29dbf.png','2019-04-30 10:54:19'),(30,12,'4瓶',2600,'/Uploads/erweima/2019/04/30/5cc7b8eab6a5f.png','2019-04-30 10:54:34'),(31,12,'6瓶',3400,'/Uploads/erweima/2019/04/30/5cc7b8fe0034d.png','2019-04-30 10:54:54'),(32,12,'9瓶',4750,'/Uploads/erweima/2019/04/30/5cc7b908b3244.png','2019-04-30 10:55:04');

/*Table structure for table `product` */

DROP TABLE IF EXISTS `product`;

CREATE TABLE `product` (
  `pid` int(11) NOT NULL AUTO_INCREMENT,
  `premark` varchar(255) NOT NULL DEFAULT '0' COMMENT '产品代码',
  `pname` varchar(255) NOT NULL DEFAULT '0' COMMENT '产品名字',
  `crtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`pid`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

/*Data for the table `product` */

insert  into `product`(`pid`,`premark`,`pname`,`crtime`) values (12,'sdj01','善顶级','2019-04-27 19:07:22');

/*Table structure for table `type` */

DROP TABLE IF EXISTS `type`;

CREATE TABLE `type` (
  `tid` int(11) NOT NULL,
  `tname` varchar(255) NOT NULL COMMENT '文章类型名称',
  UNIQUE KEY `tid` (`tid`),
  UNIQUE KEY `tname` (`tname`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `type` */

insert  into `type`(`tid`,`tname`) values (5,'恢复案例'),(4,'老年疝气'),(2,'最新文章'),(1,'儿童疝气'),(3,'成人疝气');

/*Table structure for table `user` */

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL DEFAULT '0',
  `password` varchar(255) NOT NULL DEFAULT '0',
  `status` int(11) NOT NULL DEFAULT '1' COMMENT '用户状态',
  `crtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`uid`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

/*Data for the table `user` */

insert  into `user`(`uid`,`username`,`password`,`status`,`crtime`) values (1,'admin','leai123456',1,'2017-11-02 10:23:25');

/*Table structure for table `usermeta` */

DROP TABLE IF EXISTS `usermeta`;

CREATE TABLE `usermeta` (
  `umeta_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`umeta_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `usermeta` */

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
