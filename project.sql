/*
Navicat MySQL Data Transfer

Source Server         : zxr
Source Server Version : 50508
Source Host           : localhost:3306
Source Database       : project

Target Server Type    : MYSQL
Target Server Version : 50508
File Encoding         : 65001

Date: 2020-08-14 12:56:33
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `goods`
-- ----------------------------
DROP TABLE IF EXISTS `goods`;
CREATE TABLE `goods` (
  `sid` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `url` varchar(999) DEFAULT NULL,
  `title` varchar(60) DEFAULT NULL,
  `prise` float(10,2) DEFAULT NULL,
  `sailnum` int(10) DEFAULT NULL,
  `red` varchar(5) DEFAULT NULL,
  `small` varchar(20) DEFAULT NULL,
  `urllist` varchar(999) DEFAULT NULL,
  PRIMARY KEY (`sid`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of goods
-- ----------------------------
INSERT INTO `goods` VALUES ('1', 'https://mall3.iqiyipic.com/mall/20181206/85/69/mall_5c0941f774d579560a1f8569_1x1.jpg', '入耳式蓝牙耳机', '49.90', '13138', '迷你无线', '自带充电仓', 'https://mall3.iqiyipic.com/mall/20181206/85/69/mall_5c0941f774d579560a1f8569_1x1.jpg,https://mall0.iqiyipic.com/mall/20181206/08/01/mall_5c0941f714d4557695fd0801_1x1.jpg,https://mall3.iqiyipic.com/mall/20181206/3f/55/mall_5c0941f7f6882e0d73ef3f55_1x1.jpg,https://mall9.iqiyipic.com/mall/20181206/c8/d9/mall_5c0941f7d2999d177be2c8d9_1x1.jpg,https://mall5.iqiyipic.com/mall/20181217/78/bc/mall_5c175f50ad8c1227bba778bc_1x1.jpg');
INSERT INTO `goods` VALUES ('2', 'https://mall8.iqiyipic.com/mall/20191010/ea/a1/mall_5d9ed107d2999d474daeeaa1_1x1.jpg', '防水运动手环', '29.90', '8035', '彩屏智能', '微信来电提醒', 'https://mall8.iqiyipic.com/mall/20191010/ea/a1/mall_5d9ed107d2999d474daeeaa1_1x1.jpg,https://mall6.iqiyipic.com/mall/20191010/43/dc/mall_5d9ed107f6882e3e8ddf43dc_1x1.jpg,https://mall1.iqiyipic.com/mall/20191010/e9/97/mall_5d9ed107d2999d474bf9e997_1x1.jpg,https://mall9.iqiyipic.com/mall/20190930/19/a1/mall_5d91a5d474d57972f5e519a1_1x1.jpg,https://mall7.iqiyipic.com/mall/20190930/7a/c8/mall_5d91a5d5f6882e3e906c7ac8_1x1.jpg');
INSERT INTO `goods` VALUES ('3', 'https://mall9.iqiyipic.com/mall/20190211/61/80/mall_5c613ee474d5795611fe6180_1x1.jpg', '20000毫安快充充电宝', '39.90', '11438', '大容量', '移动电源', 'https://mall9.iqiyipic.com/mall/20190211/61/80/mall_5c613ee474d5795611fe6180_1x1.jpg,https://mall9.iqiyipic.com/mall/20190211/80/84/mall_5c613ee4d2999d177b298084_1x1.jpg,https://mall7.iqiyipic.com/mall/20190211/a4/9c/mall_5c613ee4f6882e0d7774a49c_1x1.jpg,https://mall0.iqiyipic.com/mall/20190211/c6/68/mall_5c613ee474d579560f9ec668_1x1.jpg,https://mall2.iqiyipic.com/mall/20190211/22/14/mall_5c613ee4ad8c1227c03b2214_1x1.jpg');
INSERT INTO `goods` VALUES ('4', 'https://mall5.iqiyipic.com/mall/20180822/d0/75/mall_5b7d62ad74d57956114ad075_1x1.jpg', '手机唱歌神器', '39.00', '5042', '全民k歌', '无线蓝牙麦克风', 'https://mall5.iqiyipic.com/mall/20180822/d0/75/mall_5b7d62ad74d57956114ad075_1x1.jpg,https://mall1.iqiyipic.com/mall/20180822/7e/82/mall_5b7d62add2999d177a407e82_1x1.jpg,https://mall3.iqiyipic.com/mall/20180822/00/57/mall_5b7d62ad14d4557693220057_1x1.jpg,https://mall9.iqiyipic.com/mall/20180822/12/48/mall_5b7d62adf6882e0d77ba1248_1x1.jpg,https://mall6.iqiyipic.com/mall/20180822/63/61/mall_5b7d62adad8c1227be2b6361_1x1.jpg');
INSERT INTO `goods` VALUES ('5', 'https://mall3.iqiyipic.com/mall/20180416/6d/0a/mall_5ad4674314d4557a75bb6d0a_1x1.jpg', '颈椎按摩器颈部多功能家用靠垫', '79.00', '15690', '智能操作', '仿真人8D揉捏', 'https://mall3.iqiyipic.com/mall/20180416/6d/0a/mall_5ad4674314d4557a75bb6d0a_1x1.jpg,https://mall6.iqiyipic.com/mall/20180416/4d/87/mall_5ad4674374d5796d2c834d87_1x1.jpg,https://mall4.iqiyipic.com/mall/20180416/0a/1e/mall_5ad46743f6882e10cd1e0a1e_1x1.jpg,https://mall4.iqiyipic.com/mall/20180416/de/2e/mall_5ad4674314d4557a7805de2e_1x1.jpg');
INSERT INTO `goods` VALUES ('6', 'https://mall3.iqiyipic.com/mall/20200317/cc/dd/mall_5e707c1fb962f69bb44eccdd_1x1.jpg', '樊登读书VIP年卡', '365.00', '0', '樊登读书年', '释放双眼', 'https://mall3.iqiyipic.com/mall/20200317/cc/dd/mall_5e707c1fb962f69bb44eccdd_1x1.jpg,https://mall3.iqiyipic.com/mall/20200317/cc/dd/mall_5e707c1fb962f69bb44eccdd_1x1.jpg,https://mall3.iqiyipic.com/mall/20200310/1a/0b/mall_5e673b524e5042238a201a0b_1x1.jpg,https://mall9.iqiyipic.com/mall/20200310/56/9b/mall_5e673b524e5042138b34569b_1x1.jpg');
INSERT INTO `goods` VALUES ('7', 'https://mall0.iqiyipic.com/mall/20200223/da/5a/mall_5e51f54c1fc4115f911cda5a_1x1.jpg', '爱情公寓5同款T恤', '157.00', '82', '情侣装', '猪猪公寓', 'https://mall0.iqiyipic.com/mall/20200223/da/5a/mall_5e51f54c1fc4115f911cda5a_1x1.jpg,https://mall6.iqiyipic.com/mall/20200225/93/38/mall_5e553955c132fe6448f09338_1x1.jpg,https://mall5.iqiyipic.com/mall/20200225/0d/1d/mall_5e5539560adcdc2fa4c30d1d_1x1.jpg,https://mall3.iqiyipic.com/mall/20200225/b2/9e/mall_5e5539561fc411da6828b29e_1x1.jpg,https://mall0.iqiyipic.com/mall/20200225/09/64/mall_5e5539570adcdc84984e0964_1x1.jpg');
INSERT INTO `goods` VALUES ('8', 'http://mall6.iqiyipic.com/mall/20200506/0c/1f/mall_5f7f3bc62f494531a66d024f08ab0c1f_1x1.jpg', '爱奇艺电视果4k', '169.00', '1858', '4K新品', '人工智能投屏看电视', 'https://mall6.iqiyipic.com/mall/20200506/0c/1f/mall_5f7f3bc62f494531a66d024f08ab0c1f_1x1.jpg,https://mall0.iqiyipic.com/mall/20190315/89/ef/mall_5c8b5e87f6882e727a8689ef_1x1.jpg,https://mall2.iqiyipic.com/mall/20190318/62/3c/mall_5c8f6a8574d57902fc77623c_1x1.jpg,https://mall8.iqiyipic.com/mall/20190315/af/db/mall_5c8b5e87ad8c122c196dafdb_1x1.jpg');
INSERT INTO `goods` VALUES ('9', 'http://mall0.iqiyipic.com/mall/20200430/19/2a/mall_6b3c60489c3e48a684aabaeb9d35192a_1x1.jpg', '整箱装抽纸', '59.50', '6914', '本色竹浆', '60包3层', 'https://mall0.iqiyipic.com/mall/20200430/19/2a/mall_6b3c60489c3e48a684aabaeb9d35192a_1x1.jpg,https://mall5.iqiyipic.com/mall/20191112/fc/4a/mall_5dca59e0f6882e3e8d27fc4a_1x1.jpg,https://mall0.iqiyipic.com/mall/20191112/10/d6/mall_5dca59e1d2999d474f8210d6_1x1.jpg,https://mall5.iqiyipic.com/mall/20191112/0a/21/mall_5dca59e174d57972f9a40a21_1x1.jpg,https://mall5.iqiyipic.com/mall/20191112/a5/1f/mall_5dca59e1f6882e3e908ba51f_1x1.jpg');
INSERT INTO `goods` VALUES ('10', 'https://mall5.iqiyipic.com/mall/20200617/97/ce/mall_254e0fb66e934fa6ba4b2472fbd497ce_1x1.jpg', '5.0真无线蓝牙耳机', '59.00', '11100', '智能降噪', '可为手机充电', 'https://mall5.iqiyipic.com/mall/20200617/97/ce/mall_254e0fb66e934fa6ba4b2472fbd497ce_1x1.jpg,https://mall9.iqiyipic.com/mall/20191031/ae/aa/mall_5dbaa3cef6882e3e8b6caeaa_1x1.jpg,https://mall3.iqiyipic.com/mall/20191031/b0/6d/mall_5dbaa3ced2999d47517fb06d_1x1.jpg,https://mall7.iqiyipic.com/mall/20191031/81/97/mall_5dbaa3cef6882e3e8d188197_1x1.jpg,https://mall8.iqiyipic.com/mall/20191031/90/e1/mall_5dbaa3cf74d57972f69290e1_1x1.jpg');
INSERT INTO `goods` VALUES ('11', 'https://mall6.iqiyipic.com/mall/20190314/9a/98/mall_5c8a1371ad8c122c196b9a98_1x1.png', '航海王韩版连帽卫衣 2019秋款新品', '199.00', '5197', null, null, null);
INSERT INTO `goods` VALUES ('12', 'https://mall8.iqiyipic.com/mall/20171010/05/21/mall_59dc3b7714d45561954c0521_1x1.jpg', '大话西游圆领', '189.00', '602', null, null, null);
INSERT INTO `goods` VALUES ('13', 'https://mall3.iqiyipic.com/mall/20180910/d7/c5/mall_5b961a25f6882e0d78bdd7c5_1x1.jpg', '猩球崛起圆领', '179.00', '490', null, null, null);
INSERT INTO `goods` VALUES ('14', 'https://mall7.iqiyipic.com/mall/20181226/57/b3/mall_5c230dedad8c1227bfc557b3_1x1.jpg', '正版动漫套装 刀剑神域周边', '99.00', '580', null, null, null);
INSERT INTO `goods` VALUES ('15', 'https://mall1.iqiyipic.com/mall/20180224/99/b4/mall_5a91075614d4557a79f899b4_1x1.jpg', '大话西游连帽', '189.00', '396', null, null, null);
INSERT INTO `goods` VALUES ('16', 'https://mall0.iqiyipic.com/mall/20181003/c4/ba/mall_5bb430bd74d579560cd3c4ba_286_286.jpg', '好久不见 连帽卫衣', '105.00', '382', null, null, null);
INSERT INTO `goods` VALUES ('17', 'http://mall3.iqiyipic.com/mall/20191107/c5/64/mall_5dc43de5ad8c1259089cc564_286_286.jpg', '妖精的尾巴 连帽卫衣', '105.00', '365', null, null, null);
INSERT INTO `goods` VALUES ('18', 'http://mall6.iqiyipic.com/mall/20181009/ca/17/mall_5bbc1f45f6882e0d7278ca17_286_286.jpg', '这就是命圆领卫衣', '189.00', '336', null, null, null);
INSERT INTO `goods` VALUES ('19', 'https://mall3.iqiyipic.com/mall/20191014/9f/f8/mall_5da3e621d2999d474f489ff8_286_286.jpg', '漫威周边舒适卫衣', '99.00', '229', null, null, null);
INSERT INTO `goods` VALUES ('20', 'https://mall3.iqiyipic.com/mall/20181113/4c/16/mall_5bea80d6d2999d177a014c16_286_286.jpg', '正版连帽卫衣 魔法禁书目录周边', '199.00', '502', null, null, null);
INSERT INTO `goods` VALUES ('21', 'https://mall2.iqiyipic.com/mall/20180927/7f/77/mall_5bacf78a14d4557693767f77_286_286.jpg', '知识就是力量 连帽/圆领卫衣', '59.00', '279', null, null, null);
INSERT INTO `goods` VALUES ('22', 'http://mall5.iqiyipic.com/mall/20180909/24/ea/mall_5b94c1bb74d579560b9224ea_286_286.jpg', '请回答1988圆领卫衣', '189.00', '244', null, null, null);
INSERT INTO `goods` VALUES ('23', 'https://mall3.iqiyipic.com/mall/20170918/03/88/mall_59bf7759f6882e60a3dc0388_286_286.jpg', '生化危机圆领卫衣', '148.00', '228', null, null, null);
INSERT INTO `goods` VALUES ('24', 'http://mall3.iqiyipic.com/mall/20181115/ec/79/mall_5bed2ae274d5795611abec79_286_286.jpg', '长江7号可爱七仔亲子卫衣', '58.00', '245', null, null, null);
INSERT INTO `goods` VALUES ('25', 'https://mall8.iqiyipic.com/mall/20190910/60/98/mall_5d770ceed2999d474e266098_286_286.jpg', '风骚律师同款卫衣', '189.00', '195', null, null, null);
INSERT INTO `goods` VALUES ('26', 'http://mall1.iqiyipic.com/mall/20180302/cd/64/mall_5a99044a74d5796d2aafcd64_286_286.jpg', '我的体育老师周边连帽卫衣男春季新款外套', '189.00', '301', null, null, null);
INSERT INTO `goods` VALUES ('27', 'https://mall5.iqiyipic.com/mall/20180628/61/1a/mall_5b349840f6882e3f35c3611a_286_286.jpg', '食戟之灵韩版同款卫衣', '59.00', '182', null, null, null);
INSERT INTO `goods` VALUES ('28', 'https://mall6.iqiyipic.com/mall/20191107/96/70/mall_5dc3c4dbd2999d474ded9670_286_286.jpg', '包文婧张嘉倪同款卫衣 妻子的浪漫旅行周边', '99.90', '196', null, null, null);
INSERT INTO `goods` VALUES ('29', 'http://mall5.iqiyipic.com/mall/20190911/95/64/mall_5d785ca6ad8c12590b439564_286_286.jpg', 'X战警周边卫衣', '118.00', '141', null, null, null);
INSERT INTO `goods` VALUES ('30', 'https://mall0.iqiyipic.com/mall/20181017/0c/fc/mall_5bc73d7074d579560aeb0cfc_286_286.jpg', '狂暴巨兽 连帽卫衣', '59.00', '111', null, null, null);
INSERT INTO `goods` VALUES ('31', 'https://mall0.iqiyipic.com/mall/20180117/64/cc/mall_5a5f03a0d2999d07d1fc64cc_286_286.jpg', '迷彩连帽卫衣春季新款外套', '189.00', '167', null, null, null);
INSERT INTO `goods` VALUES ('32', 'https://mall7.iqiyipic.com/mall/20190404/39/db/mall_5ca56ebe74d57902f79139db_286_286.jpg', '画江湖之侠岚同款卫衣', '59.00', '111', null, null, null);
INSERT INTO `goods` VALUES ('33', 'http://mall1.iqiyipic.com/mall/20170914/ec/9b/mall_59b9f08d74d5792e7652ec9b_286_286.jpg', '废柴兄弟许之一睡眠不足印花圆领卫衣', '148.00', '118', null, null, null);
INSERT INTO `goods` VALUES ('34', 'http://mall6.iqiyipic.com/mall/20190911/db/42/mall_5d7855b4d2999d47514cdb42_286_286.jpg', '速度与激情同款卫衣', '118.00', '70', null, null, null);

-- ----------------------------
-- Table structure for `main`
-- ----------------------------
DROP TABLE IF EXISTS `main`;
CREATE TABLE `main` (
  `id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `img` varchar(999) DEFAULT NULL,
  `title` varchar(10) DEFAULT NULL,
  `describt` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of main
-- ----------------------------
INSERT INTO `main` VALUES ('1', 'http://pic1.iqiyipic.com/common/20200318/65db13da8912481a9f54355ff6b471e7.jpg', '鬓边不是海棠红', '官方周边低至19元起');
INSERT INTO `main` VALUES ('2', 'http://pic0.iqiyipic.com/common/20200514/e97798c056dc48ac8acd0819bcea75c7.jpg', '青春有你2', '练习生的美颜宝典 请查收');
INSERT INTO `main` VALUES ('3', 'http://pic2.iqiyipic.com/common/20200304/2685034a51004dfba7420f60cf16c085.jpg', '两世欢', '不负一生 相聚相逢');
INSERT INTO `main` VALUES ('4', 'http://pic2.iqiyipic.com/common/20200219/0a205987a2cc4def88da62409edab0bd.jpg', '大主宰', '正版周边热血来袭');
INSERT INTO `main` VALUES ('5', 'http://pic2.iqiyipic.com/common/20200116/d22008b87dd24ae4bbcba56e8e127930.jpg', '绝代双骄', '双骄争锋 正版来袭');
INSERT INTO `main` VALUES ('6', 'http://pic0.iqiyipic.com/common/20200107/1ab52935b9c945608f992c9c748333e4.jpg', '爱情公寓5', '明星同款 独家发售');
INSERT INTO `main` VALUES ('7', 'http://pic0.iqiyipic.com/common/20191211/64cf7cd2fb4f475189a3c03442902355.jpg', '剑王朝', '现女友福利大放送');
INSERT INTO `main` VALUES ('8', 'http://pic2.iqiyipic.com/common/20200228/10046f11435f4ab7839c98f8a259993c.jpg', '潮流合伙人', '敢潮 不赶潮');
INSERT INTO `main` VALUES ('9', 'http://pic3.iqiyipic.com/common/20191205/63f2dffa33a94e7aab222b4ebd3203d9.jpg', '潮流有货旗舰店', '合伙人 同期潮品');
INSERT INTO `main` VALUES ('10', 'http://pic2.iqiyipic.com/common/20191128/cc45d2b86fd942f59fb97ecbdb718367.jpg', '妻子的浪漫旅行', '正版周边 甜蜜起航');
INSERT INTO `main` VALUES ('11', 'http://pic3.iqiyipic.com/common/20191115/6a0782a775864a45a76b269c7c287f4f.jpg', '这样唱好美', '好美精品 低至6折');
INSERT INTO `main` VALUES ('12', 'http://pic3.iqiyipic.com/common/20191113/b7fb63fceb2141cfb9b2d5587a89641e.jpg', '热血同行', '正版周边 即刻拥有');
INSERT INTO `main` VALUES ('13', 'http://pic1.iqiyipic.com/common/20191112/6602315061674d2fb16f8695c4616fd0.jpg', 'BABAMA STO', '老夫子联名系列');
INSERT INTO `main` VALUES ('14', 'http://pic1.iqiyipic.com/common/20191022/72dbdcb1fa4743e6b537e472b9581962.jpg', '热血少年', '正版周边 火热开售');
INSERT INTO `main` VALUES ('15', 'http://pic2.iqiyipic.com/common/20191022/5242d037007d4de098ea01d80a6ae131.jpg', '初恋那件小事', '正版周边热卖中');
INSERT INTO `main` VALUES ('16', 'http://pic0.iqiyipic.com/common/20190909/362a38112bdb4734937a2f2c435c1289.jpg', '我在未来等你', '正品19元起 寄给未来的自己');
INSERT INTO `main` VALUES ('17', 'http://pic1.iqiyipic.com/common/20190802/cf2f7e79e1dc4477b6220dc099cba3d0.jpg', '做家务的男人', '同款周边首发5折起');
INSERT INTO `main` VALUES ('18', 'http://pic1.iqiyipic.com/common/20190731/d50a598dcd5f44b3b3cff1bc0e9dd378.jpg', '小欢喜正版周边', '热销商品低至19元');
INSERT INTO `main` VALUES ('19', 'http://pic2.iqiyipic.com/common/20190611/39c79dc977ba46ac84b19e476555f671.jpg', '名侦探柯南', '柯南官方正版周边');
INSERT INTO `main` VALUES ('20', 'http://pic3.iqiyipic.com/common/20190311/c0636ddcff28471596d483258aa45622.jpg', '惊奇队长正版周边', '4折起火爆开抢');
INSERT INTO `main` VALUES ('21', 'http://pic2.iqiyipic.com/common/20190218/29298f8462d44c9ca7b85a9be01c1ab8.jpg', '歌手', '正版周边闪耀发布');
INSERT INTO `main` VALUES ('22', 'http://pic2.iqiyipic.com/common/20181115/1ffd8f22bc6d4c19bc8864795769d243.jpg', '你和我的倾城时光', '正版周边同步热卖');
INSERT INTO `main` VALUES ('23', 'http://pic2.iqiyipic.com/common/20180815/ccce257cf37c4f55ad57665fbde47a8e.jpg', '豆瓣电影TOP50精', '回味人生 经典必读');

-- ----------------------------
-- Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `sid` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(20) DEFAULT NULL,
  `password` varchar(999) DEFAULT NULL,
  `telephone` varchar(11) DEFAULT NULL,
  PRIMARY KEY (`sid`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('6', '张三', 'ff168e4a812ed86d4bccdcaabee85d540d8cce77', '15666976910');
