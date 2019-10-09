-- --------------------------------------------------------
-- 主机:                           127.0.0.1
-- 服务器版本:                        5.6.21-log - MySQL Community Server (GPL)
-- 服务器操作系统:                      Win64
-- HeidiSQL 版本:                  9.5.0.5220
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- 导出  表 db.book 结构
CREATE TABLE IF NOT EXISTS `book` (
  `bid` int(11) NOT NULL AUTO_INCREMENT COMMENT '注释',
  `title` char(50) DEFAULT NULL COMMENT '书名',
  `uid` char(50) DEFAULT NULL,
  `imgsrc` varchar(500) DEFAULT NULL COMMENT '图片',
  `author` char(50) DEFAULT NULL COMMENT '作者',
  `press` char(50) DEFAULT NULL COMMENT '出版社',
  `pdata` char(50) DEFAULT NULL COMMENT '出版时间',
  `price` double DEFAULT NULL COMMENT '价格',
  `isbn` char(50) DEFAULT NULL COMMENT '书号',
  `series` char(50) DEFAULT NULL,
  `contentv` varchar(1000) DEFAULT NULL COMMENT '内容简介',
  `authorv` varchar(1000) DEFAULT NULL COMMENT '作者简介',
  `recommend` int(11) DEFAULT NULL COMMENT '推荐数',
  `hrnum` int(11) DEFAULT NULL COMMENT '读过',
  `status` int(11) DEFAULT NULL COMMENT '0上架，1下架',
  `addtime` varchar(50) DEFAULT NULL COMMENT '添加时间',
  `updatetime` datetime DEFAULT NULL COMMENT '修改时间',
  `deltime` datetime DEFAULT NULL COMMENT '删除时间',
  PRIMARY KEY (`bid`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8 COMMENT='图书信息';

-- 正在导出表  db.book 的数据：~25 rows (大约)
/*!40000 ALTER TABLE `book` DISABLE KEYS */;
INSERT INTO `book` (`bid`, `title`, `uid`, `imgsrc`, `author`, `press`, `pdata`, `price`, `isbn`, `series`, `contentv`, `authorv`, `recommend`, `hrnum`, `status`, `addtime`, `updatetime`, `deltime`) VALUES
	(2, '镖人1-5卷', NULL, 'http://localhost:8080/uploads/1567141706850_097125.png', '许先哲', '1', '1', 1, '1', NULL, '<p>马尔克斯百年经典套装电子书首次集结，一场小说阅读的饕餮盛宴！ 莫言、余华、阎连科、刘震云、格非……他们都曾被这些作品深深震撼！ 读过百年孤独，离马尔克斯还有1328公里。 感受“作家中的作家”加西亚·马尔克斯的孤独与爱、自由与荣光，读这套书就对了！ 《百年孤独》之后，还要读过这七部，才能说读过了马尔克斯。本套书收录马尔克斯《百年孤独》《霍乱时期的爱情》《一起连环绑架案的新闻》《一个海难幸存者的故事》《米格尔在智利的地下行动》《爱情和其他魔鬼》《族长的秋天》《我不是来演讲的》共8部代表作。百年孤独》创造了一种前所未见的叙事方式：一个家族七代人的故事，有如爱讲故事的外祖母娓娓道来，人物就在眼前，事情正在发生，但早已过去百年，早已成为传说……常常人鬼不分、古今轮回。 《霍乱时期的爱情》讲述了一段跨越半个多世纪的爱情史诗，穷尽了所有爱情的可能性：忠贞的、隐秘的、粗暴的、羞怯的、柏拉图式的、放荡的、转瞬即逝的、生死相依的……马尔克斯曾说：“这一部是我最好的作品，是我发自内心的创作。” 《一起连环绑架案的新闻》当《百年孤独》作者马尔克斯遇上大毒枭埃斯科瓦尔，（豆瓣9.2高分美剧《毒枭》主人公原型），一起比小说更魔幻、更离奇的真实事件！入选多国大学新闻专业必读书，马尔克斯饱含深情的非虚构典范之作。 《米格尔在智利的地下行动》马尔克斯非虚构杰作，读起来就像怀揣时钟和匕首的侦探剧。一九八五年，被严禁归国的导演米格尔·利廷，经乔装打扮潜入智利，秘密拍摄了长达三万二千二百多米的胶片，记录了他的祖国遭受十二年军事独裁统治的现状。这次地下行动的成果是一部四小时的电影《关于智利的全记录》。</p>', NULL, NULL, 10, 1, NULL, NULL, NULL),
	(3, '故事课1：说故事的人最有影响力', NULL, 'http://localhost:8080/uploads/1567147279830_970413.png', '许先哲', '6', '7', 5, '4', NULL, '<p>马尔克斯百年经典套装电子书首次集结，一场小说阅读的饕餮盛宴！ 莫言、余华、阎连科、刘震云、格非……他们都曾被这些作品深深震撼！ 读过百年孤独，离马尔克斯还有1328公里。 感受“作家中的作家”加西亚·马尔克斯的孤独与爱、自由与荣光，读这套书就对了！ 《百年孤独》之后，还要读过这七部，才能说读过了马尔克斯。本套书收录马尔克斯《百年孤独》《霍乱时期的爱情》《一起连环绑架案的新闻》《一个海难幸存者的故事》《米格尔在智利的地下行动》《爱情和其他魔鬼》《族长的秋天》《我不是来演讲的》共8部代表作。百年孤独》创造了一种前所未见的叙事方式：一个家族七代人的故事，有如爱讲故事的外祖母娓娓道来，人物就在眼前，事情正在发生，但早已过去百年，早已成为传说……常常人鬼不分、古今轮回。 《霍乱时期的爱情》讲述了一段跨越半个多世纪的爱情史诗，穷尽了所有爱情的可能性：忠贞的、隐秘的、粗暴的、羞怯的、柏拉图式的、放荡的、转瞬即逝的、生死相依的……马尔克斯曾说：“这一部是我最好的作品，是我发自内心的创作。” 《一起连环绑架案的新闻》当《百年孤独》作者马尔克斯遇上大毒枭埃斯科瓦尔，（豆瓣9.2高分美剧《毒枭》主人公原型），一起比小说更魔幻、更离奇的真实事件！入选多国大学新闻专业必读书，马尔克斯饱含深情的非虚构典范之作。 《米格尔在智利的地下行动》马尔克斯非虚构杰作，读起来就像怀揣时钟和匕首的侦探剧。一九八五年，被严禁归国的导演米格尔·利廷，经乔装打扮潜入智利，秘密拍摄了长达三万二千二百多米的胶片，记录了他的祖国遭受十二年军事独裁统治的现状。这次地下行动的成果是一部四小时的电影《关于智利的全记录》。</p>', '<p>1</p>', NULL, 9, 1, NULL, NULL, NULL),
	(4, '浊眼观影：浮华时代的众生心理相（上下册全）', NULL, 'http://localhost:8080/uploads/1567147503433_670601.png', '李孟潮', '6', '7', 5, '4', NULL, '<p>马尔克斯百年经典套装电子书首次集结，一场小说阅读的饕餮盛宴！ 莫言、余华、阎连科、刘震云、格非……他们都曾被这些作品深深震撼！ 读过百年孤独，离马尔克斯还有1328公里。 感受“作家中的作家”加西亚·马尔克斯的孤独与爱、自由与荣光，读这套书就对了！ 《百年孤独》之后，还要读过这七部，才能说读过了马尔克斯。本套书收录马尔克斯《百年孤独》《霍乱时期的爱情》《一起连环绑架案的新闻》《一个海难幸存者的故事》《米格尔在智利的地下行动》《爱情和其他魔鬼》《族长的秋天》《我不是来演讲的》共8部代表作。百年孤独》创造了一种前所未见的叙事方式：一个家族七代人的故事，有如爱讲故事的外祖母娓娓道来，人物就在眼前，事情正在发生，但早已过去百年，早已成为传说……常常人鬼不分、古今轮回。 《霍乱时期的爱情》讲述了一段跨越半个多世纪的爱情史诗，穷尽了所有爱情的可能性：忠贞的、隐秘的、粗暴的、羞怯的、柏拉图式的、放荡的、转瞬即逝的、生死相依的……马尔克斯曾说：“这一部是我最好的作品，是我发自内心的创作。” 《一起连环绑架案的新闻》当《百年孤独》作者马尔克斯遇上大毒枭埃斯科瓦尔，（豆瓣9.2高分美剧《毒枭》主人公原型），一起比小说更魔幻、更离奇的真实事件！入选多国大学新闻专业必读书，马尔克斯饱含深情的非虚构典范之作。 《米格尔在智利的地下行动》马尔克斯非虚构杰作，读起来就像怀揣时钟和匕首的侦探剧。一九八五年，被严禁归国的导演米格尔·利廷，经乔装打扮潜入智利，秘密拍摄了长达三万二千二百多米的胶片，记录了他的祖国遭受十二年军事独裁统治的现状。这次地下行动的成果是一部四小时的电影《关于智利的全记录》。</p>', '<p>7</p>', NULL, 8, 1, NULL, NULL, NULL),
	(5, '起点人', NULL, 'http://localhost:8080/uploads/1567158192964_026811.png', '李孟潮', '6', '6', 6, '6', NULL, '<p>马尔克斯百年经典套装电子书首次集结，一场小说阅读的饕餮盛宴！ 莫言、余华、阎连科、刘震云、格非……他们都曾被这些作品深深震撼！ 读过百年孤独，离马尔克斯还有1328公里。 感受“作家中的作家”加西亚·马尔克斯的孤独与爱、自由与荣光，读这套书就对了！ 《百年孤独》之后，还要读过这七部，才能说读过了马尔克斯。本套书收录马尔克斯《百年孤独》《霍乱时期的爱情》《一起连环绑架案的新闻》《一个海难幸存者的故事》《米格尔在智利的地下行动》《爱情和其他魔鬼》《族长的秋天》《我不是来演讲的》共8部代表作。百年孤独》创造了一种前所未见的叙事方式：一个家族七代人的故事，有如爱讲故事的外祖母娓娓道来，人物就在眼前，事情正在发生，但早已过去百年，早已成为传说……常常人鬼不分、古今轮回。 《霍乱时期的爱情》讲述了一段跨越半个多世纪的爱情史诗，穷尽了所有爱情的可能性：忠贞的、隐秘的、粗暴的、羞怯的、柏拉图式的、放荡的、转瞬即逝的、生死相依的……马尔克斯曾说：“这一部是我最好的作品，是我发自内心的创作。” 《一起连环绑架案的新闻》当《百年孤独》作者马尔克斯遇上大毒枭埃斯科瓦尔，（豆瓣9.2高分美剧《毒枭》主人公原型），一起比小说更魔幻、更离奇的真实事件！入选多国大学新闻专业必读书，马尔克斯饱含深情的非虚构典范之作。 《米格尔在智利的地下行动》马尔克斯非虚构杰作，读起来就像怀揣时钟和匕首的侦探剧。一九八五年，被严禁归国的导演米格尔·利廷，经乔装打扮潜入智利，秘密拍摄了长达三万二千二百多米的胶片，记录了他的祖国遭受十二年军事独裁统治的现状。这次地下行动的成果是一部四小时的电影《关于智利的全记录》。</p>', '<p>6</p>', NULL, 7, 1, NULL, NULL, NULL),
	(9, '浊眼观影：浮华时代的众生心理相（上下册全）', NULL, 'http://localhost:8080/uploads/1567147503433_670601.png', '李孟潮', '6', '7', 5, '4', NULL, '', '<p>7</p>', NULL, 6, 1, NULL, NULL, NULL),
	(10, '起点人', NULL, 'http://localhost:8080/uploads/1567158192964_026811.png', '李孟潮', '6', '6', 6, '6', NULL, '<p>6</p>', '<p>6</p>', NULL, 5, 1, NULL, NULL, NULL),
	(11, '镖人1-5卷', NULL, 'http://localhost:8080/uploads/1567141706850_097125.png', '许先哲', '1', '1', 1, '1', NULL, NULL, NULL, NULL, 4, 1, NULL, NULL, NULL),
	(12, '故事课1：说故事的人最有影响力', NULL, 'http://localhost:8080/uploads/1567147279830_970413.png', '许先哲', '6', '7', 5, '4', NULL, '<p>8</p>', '<p>1</p>', NULL, NULL, 1, NULL, NULL, NULL),
	(13, '故事课1：说故事的人最有影响力', NULL, 'http://localhost:8080/uploads/1567147279830_970413.png', '许先哲', '6', '7', 5, '4', NULL, '<p>8</p>', '<p>1</p>', NULL, NULL, 1, NULL, NULL, NULL),
	(14, '镖人1-5卷', NULL, 'http://localhost:8080/uploads/1567141706850_097125.png', '许先哲', '1', '1', 1, '1', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL),
	(15, '起点人', NULL, 'http://localhost:8080/uploads/1567158192964_026811.png', '李孟潮', '6', '6', 6, '6', NULL, '<p>6</p>', '<p>6</p>', NULL, NULL, 1, NULL, NULL, NULL),
	(16, '浊眼观影：浮华时代的众生心理相（上下册全）', NULL, 'http://localhost:8080/uploads/1567147503433_670601.png', '李孟潮', '6', '7', 5, '4', NULL, '', '<p>7</p>', NULL, NULL, 1, NULL, NULL, NULL),
	(17, '起点人', NULL, 'http://localhost:8080/uploads/1567158192964_026811.png', '李孟潮', '6', '6', 6, '6', NULL, '<p>6</p>', '<p>6</p>', NULL, NULL, 1, NULL, NULL, NULL),
	(18, '浊眼观影：浮华时代的众生心理相（上下册全）', NULL, 'http://localhost:8080/uploads/1567147503433_670601.png', '李孟潮', '6', '7', 5, '4', NULL, '', '<p>7</p>', NULL, NULL, 1, NULL, NULL, NULL),
	(19, '故事课1：说故事的人最有影响力', NULL, 'http://localhost:8080/uploads/1567147279830_970413.png', '许先哲', '6', '7', 5, '4', NULL, '<p>8</p>', '<p>1</p>', NULL, NULL, 1, NULL, NULL, NULL),
	(20, '镖人1-5卷', NULL, 'http://localhost:8080/uploads/1567141706850_097125.png', '许先哲', '1', '1', 1, '1', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL),
	(21, '起点人', NULL, 'http://localhost:8080/uploads/1567158192964_026811.png', '李孟潮', '6', '6', 6, '6', NULL, '<p>6</p>', '<p>6</p>', NULL, NULL, 1, NULL, NULL, NULL),
	(22, '浊眼观影：浮华时代的众生心理相（上下册全）', NULL, 'http://localhost:8080/uploads/1567147503433_670601.png', '李孟潮', '6', '7', 5, '4', NULL, '', '<p>7</p>', NULL, NULL, 1, NULL, NULL, NULL),
	(23, '故事课1：说故事的人最有影响力', NULL, 'http://localhost:8080/uploads/1567147279830_970413.png', '许先哲', '6', '7', 5, '4', NULL, '<p>8</p>', '<p>1</p>', NULL, NULL, 1, NULL, NULL, NULL),
	(24, '镖人1-5卷', NULL, 'http://localhost:8080/uploads/1567141706850_097125.png', '许先哲', '1', '1', 1, '1', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL),
	(37, '11111', NULL, 'http://localhost:8080/uploads/1567874922335_333681.png', '00', '00', '00', 0, '00', '00', '<p>99999</p>', '<p>9999</p>', NULL, NULL, 1, '2019-9-8 12:48:50 AM', NULL, NULL);
/*!40000 ALTER TABLE `book` ENABLE KEYS */;

-- 导出  表 db.cate 结构
CREATE TABLE IF NOT EXISTS `cate` (
  `cid` int(11) NOT NULL AUTO_INCREMENT,
  `name` char(50) NOT NULL,
  `fid` int(11) NOT NULL,
  PRIMARY KEY (`cid`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

-- 正在导出表  db.cate 的数据：~13 rows (大约)
/*!40000 ALTER TABLE `cate` DISABLE KEYS */;
INSERT INTO `cate` (`cid`, `name`, `fid`) VALUES
	(1, '1', 2),
	(2, '流行', 0),
	(3, '文化', 0),
	(4, '生活', 0),
	(5, '科技', 0),
	(6, '小说', 1),
	(7, '22', 2),
	(9, '1', 1),
	(10, '1', 1),
	(11, '2', 2),
	(12, '3', 2),
	(13, '44', 4),
	(14, '5', 2),
	(17, '1', 1);
/*!40000 ALTER TABLE `cate` ENABLE KEYS */;

-- 导出  表 db.comment 结构
CREATE TABLE IF NOT EXISTS `comment` (
  `cid` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `uid` int(11) DEFAULT NULL COMMENT '用户主键',
  `bid` int(11) DEFAULT NULL COMMENT '书籍主键',
  `content` varchar(200) DEFAULT NULL COMMENT '评论',
  `ctime` datetime DEFAULT NULL COMMENT '评论时间',
  `updatetime` datetime DEFAULT NULL COMMENT '修改时间',
  `deltime` datetime DEFAULT NULL COMMENT '删除时间',
  PRIMARY KEY (`cid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='评论';

-- 正在导出表  db.comment 的数据：~1 rows (大约)
/*!40000 ALTER TABLE `comment` DISABLE KEYS */;
INSERT INTO `comment` (`cid`, `uid`, `bid`, `content`, `ctime`, `updatetime`, `deltime`) VALUES
	(1, 1, 1, '123', NULL, NULL, NULL);
/*!40000 ALTER TABLE `comment` ENABLE KEYS */;

-- 导出  表 db.nread 结构
CREATE TABLE IF NOT EXISTS `nread` (
  `nid` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `bid` int(11) NOT NULL COMMENT '书籍主键',
  `ntime` datetime NOT NULL COMMENT '在读时间',
  PRIMARY KEY (`nid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='在读书籍';

-- 正在导出表  db.nread 的数据：~0 rows (大约)
/*!40000 ALTER TABLE `nread` DISABLE KEYS */;
/*!40000 ALTER TABLE `nread` ENABLE KEYS */;

-- 导出  表 db.purchase 结构
CREATE TABLE IF NOT EXISTS `purchase` (
  `pid` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `uid` int(11) NOT NULL COMMENT '用户主键',
  `bid` int(11) NOT NULL COMMENT '书籍主键',
  `buytime` datetime NOT NULL COMMENT '购买时间',
  `buynum` int(11) NOT NULL COMMENT '购买数量',
  PRIMARY KEY (`pid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='购买';

-- 正在导出表  db.purchase 的数据：~0 rows (大约)
/*!40000 ALTER TABLE `purchase` DISABLE KEYS */;
/*!40000 ALTER TABLE `purchase` ENABLE KEYS */;

-- 导出  表 db.sessions 结构
CREATE TABLE IF NOT EXISTS `sessions` (
  `session_id` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `expires` int(11) unsigned NOT NULL,
  `data` text CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  PRIMARY KEY (`session_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 正在导出表  db.sessions 的数据：~152 rows (大约)
/*!40000 ALTER TABLE `sessions` DISABLE KEYS */;
INSERT INTO `sessions` (`session_id`, `expires`, `data`) VALUES
	('-0e-S48f0AVIdRTeZxEuSlt4aHO2Skgy', 1567926055, '{"cookie":{"originalMaxAge":86400000,"expires":"2019-09-08T07:00:55.095Z","httpOnly":true,"path":"/"},"openid":"ohBGq5bnNZ5f56RzofdnGgi8SK2g","session_key":"zITKoft1K4uMJw5Yo0+dCQ=="}'),
	('-EKdIGVoj-swwRVRW7uuTCZZhKNXJpRc', 1567958393, '{"cookie":{"originalMaxAge":86400000,"expires":"2019-09-08T15:59:52.768Z","httpOnly":true,"path":"/"},"uid":19,"tel":"6"}'),
	('-Iul_GxES6tshELuL2CTVon3bYu95jni', 1567926157, '{"cookie":{"originalMaxAge":86400000,"expires":"2019-09-08T07:02:36.989Z","httpOnly":true,"path":"/"},"openid":"ohBGq5bnNZ5f56RzofdnGgi8SK2g","session_key":"iML4EghZCAqkNzrtt4FaGw=="}'),
	('-PW1MTKdrEjjHtLbMsLXeFwe1BOW1Ipb', 1567924566, '{"cookie":{"originalMaxAge":86400000,"expires":"2019-09-08T06:36:05.567Z","httpOnly":true,"path":"/"},"openid":"ohBGq5bnNZ5f56RzofdnGgi8SK2g","session_key":"8G9L3BJuHQUEetKVrxbnVg=="}'),
	('-hdULARgv8RQjw1lu9q6TVotTfj0z-Sx', 1567917906, '{"cookie":{"originalMaxAge":86400000,"expires":"2019-09-08T04:45:05.591Z","httpOnly":true,"path":"/"},"openid":"ohBGq5bnNZ5f56RzofdnGgi8SK2g","session_key":"AlRExK5sOJRpKMGNMAsNFQ=="}'),
	('-yJ9KosFz_bRCBmVhFBaRUuJpzdA0miG', 1567926225, '{"cookie":{"originalMaxAge":86400000,"expires":"2019-09-08T07:03:44.504Z","httpOnly":true,"path":"/"},"openid":"ohBGq5bnNZ5f56RzofdnGgi8SK2g","session_key":"gV2NYLa1XXZ1x1QcZhnusA=="}'),
	('0Kke1H4vIUT_4BPAI1i1tQgej2gucmBk', 1567928175, '{"cookie":{"originalMaxAge":86400000,"expires":"2019-09-08T07:36:14.598Z","httpOnly":true,"path":"/"},"openid":"ohBGq5bnNZ5f56RzofdnGgi8SK2g","session_key":"IE4W4b3SVG/7Onh4+6sxtw=="}'),
	('13p876mZNbb6xhzLVEnpFlu5CwKyfpNH', 1567941132, '{"cookie":{"originalMaxAge":86400000,"expires":"2019-09-08T11:12:12.453Z","httpOnly":true,"path":"/"},"openid":"ohBGq5bnNZ5f56RzofdnGgi8SK2g","session_key":"X/GteUoY7GkPAL3Nnu5mnQ=="}'),
	('2KNJ--ce5y65ahqDxAftXIMVB7PMqatB', 1567940865, '{"cookie":{"originalMaxAge":86400000,"expires":"2019-09-08T11:07:44.683Z","httpOnly":true,"path":"/"},"openid":"ohBGq5bnNZ5f56RzofdnGgi8SK2g","session_key":"v5SFUJvkAmV4HRJtKvDPiA=="}'),
	('2OK6mobJt35xdm83PKtq1sT_YoJuYMbN', 1567938702, '{"cookie":{"originalMaxAge":86400000,"expires":"2019-09-08T10:31:42.460Z","httpOnly":true,"path":"/"},"uid":14,"tel":"33"}'),
	('2v0MNB2tHUnx-dxavED4xGPmSeyOv49J', 1567940800, '{"cookie":{"originalMaxAge":86400000,"expires":"2019-09-08T11:06:40.157Z","httpOnly":true,"path":"/"},"openid":"ohBGq5bnNZ5f56RzofdnGgi8SK2g","session_key":"+mqW7UJBwKcd0JaMi4hnCA=="}'),
	('38X3gIJAXymnMmZhHIH1rPI9tP1I-5rO', 1567933846, '{"cookie":{"originalMaxAge":86400000,"expires":"2019-09-08T09:10:45.830Z","httpOnly":true,"path":"/"},"openid":"ohBGq5bnNZ5f56RzofdnGgi8SK2g","session_key":"3yMwXYn8Xa1OlXb2JQbuJQ=="}'),
	('3FzZZFHYUiJtjjlYvVNeikQu2SVz6dBg', 1567926837, '{"cookie":{"originalMaxAge":86400000,"expires":"2019-09-08T07:13:56.521Z","httpOnly":true,"path":"/"},"openid":"ohBGq5bnNZ5f56RzofdnGgi8SK2g","session_key":"2j7Jz+B+kytuVL3JEz33OQ=="}'),
	('3GD2iAJQX5MX5Y-dPW1UwglQF7q4nbmr', 1567933904, '{"cookie":{"originalMaxAge":86400000,"expires":"2019-09-08T09:11:44.312Z","httpOnly":true,"path":"/"},"openid":"ohBGq5bnNZ5f56RzofdnGgi8SK2g","session_key":"KNJ8Tn4RPk+yFmXzUGxb3w=="}'),
	('3GEj8myDC8zfn-MwyJu09GvpR556z6Ma', 1567941096, '{"cookie":{"originalMaxAge":86400000,"expires":"2019-09-08T11:11:36.419Z","httpOnly":true,"path":"/"},"openid":"ohBGq5bnNZ5f56RzofdnGgi8SK2g","session_key":"14p0q+tybB6h7KHZEOHAEg=="}'),
	('45Ze3xNT4lg1UHMSsHW1EWI2sx33CYOL', 1567920755, '{"cookie":{"originalMaxAge":86400000,"expires":"2019-09-08T05:32:35.200Z","httpOnly":true,"path":"/"},"openid":"ohBGq5bnNZ5f56RzofdnGgi8SK2g","session_key":"yrLKjB6u3qBNCNXcUo8Frg=="}'),
	('48YCcI3K9vOvBiqdA8BVklJ3coL0HBjU', 1567919224, '{"cookie":{"originalMaxAge":86400000,"expires":"2019-09-08T05:07:04.367Z","httpOnly":true,"path":"/"},"openid":"ohBGq5bnNZ5f56RzofdnGgi8SK2g","session_key":"a97qwlbxVgag0qUoiyP5xw=="}'),
	('4O2UnTH8xtY9HfsNFT6HNFBvOZUXXN94', 1567956458, '{"cookie":{"originalMaxAge":86400000,"expires":"2019-09-08T15:27:38.225Z","httpOnly":true,"path":"/"},"openid":"ohBGq5bnNZ5f56RzofdnGgi8SK2g","session_key":"o5iTdcehXxMC52kUHCYRMQ=="}'),
	('54Zy4HD-9EKlbIlOvha2owKgs0wotTLw', 1567959886, '{"cookie":{"originalMaxAge":86400000,"expires":"2019-09-08T16:24:45.711Z","httpOnly":true,"path":"/"},"openid":"ohBGq5bnNZ5f56RzofdnGgi8SK2g","session_key":"3pcherS87Y9aj+zYK1n+qQ=="}'),
	('6RIxX3MacSKhPK7VXnCcWa-GKOZ-sE57', 1567938510, '{"cookie":{"originalMaxAge":86400000,"expires":"2019-09-08T10:28:30.025Z","httpOnly":true,"path":"/"},"uid":14,"tel":"33"}'),
	('6Sdwq7geWvn47YAuXXsPpXbS9Y_UeNfs', 1567922369, '{"cookie":{"originalMaxAge":86400000,"expires":"2019-09-08T05:59:29.367Z","httpOnly":true,"path":"/"},"openid":"ohBGq5bnNZ5f56RzofdnGgi8SK2g","session_key":"mK5F5eU/dJ4HyRzcXC+eLQ=="}'),
	('7X_JgX3Z6rJk2itMXXko549rK837kPPt', 1567920294, '{"cookie":{"originalMaxAge":86400000,"expires":"2019-09-08T05:24:53.884Z","httpOnly":true,"path":"/"},"openid":"ohBGq5bnNZ5f56RzofdnGgi8SK2g","session_key":"PEeYFmbULUF/jjTadmQo3w=="}'),
	('7aAebTD6B2RPt3_uw_sqP6Pya7ByvuLG', 1567918805, '{"cookie":{"originalMaxAge":86400000,"expires":"2019-09-08T05:00:04.888Z","httpOnly":true,"path":"/"},"openid":"ohBGq5bnNZ5f56RzofdnGgi8SK2g","session_key":"MaFXnoPzGayGioRXmdEHDA=="}'),
	('7nu73rZL0iIj4YV7e9hEULsrSp25B8-3', 1567925258, '{"cookie":{"originalMaxAge":86400000,"expires":"2019-09-08T06:47:37.745Z","httpOnly":true,"path":"/"},"openid":"ohBGq5bnNZ5f56RzofdnGgi8SK2g","session_key":"Jq9ay6SFf0cKInZIYrb5sw=="}'),
	('8RDqTT3AxNBb3pwSqDWY4TXpDJhjnHrq', 1567940801, '{"cookie":{"originalMaxAge":86400000,"expires":"2019-09-08T11:06:40.723Z","httpOnly":true,"path":"/"},"openid":"ohBGq5bnNZ5f56RzofdnGgi8SK2g","session_key":"+mqW7UJBwKcd0JaMi4hnCA=="}'),
	('8tejzZAfJqSTA8PeipjlQxdoLEq8T3Op', 1567933853, '{"cookie":{"originalMaxAge":86399999,"expires":"2019-09-08T09:10:53.498Z","httpOnly":true,"path":"/"},"openid":"ohBGq5bnNZ5f56RzofdnGgi8SK2g","session_key":"3yMwXYn8Xa1OlXb2JQbuJQ=="}'),
	('98ro-7TzetM-tcoVdz7BO8WW6IDd39MJ', 1567930809, '{"cookie":{"originalMaxAge":86400000,"expires":"2019-09-08T08:20:09.284Z","httpOnly":true,"path":"/"},"uid":2,"tel":"2"}'),
	('9gJG2qqpSiEgQYliae8hm0HOskJwl8mI', 1567925311, '{"cookie":{"originalMaxAge":86400000,"expires":"2019-09-08T06:48:31.369Z","httpOnly":true,"path":"/"},"openid":"ohBGq5bnNZ5f56RzofdnGgi8SK2g","session_key":"c1bVyAav7g3/0SD4gvCOIQ=="}'),
	('AML5ceXl_BHcMSy7bd0pxjMol06DBCyj', 1567940323, '{"cookie":{"originalMaxAge":86400000,"expires":"2019-09-08T10:58:43.246Z","httpOnly":true,"path":"/"},"openid":"ohBGq5bnNZ5f56RzofdnGgi8SK2g","session_key":"+ok6t0vAUywJJZC+DkmsFw=="}'),
	('AiO6kLZeoozsBeXqSq-nmFN8txyBM6tH', 1567941298, '{"cookie":{"originalMaxAge":86400000,"expires":"2019-09-08T11:14:57.996Z","httpOnly":true,"path":"/"},"openid":"ohBGq5bnNZ5f56RzofdnGgi8SK2g","session_key":"RjZRQR/Q8zxL0T/gy8sIPg=="}'),
	('BLqgYl5nuzZgP4BGH8S_jbXrrCOnPuU4', 1567940710, '{"cookie":{"originalMaxAge":86400000,"expires":"2019-09-08T11:05:09.886Z","httpOnly":true,"path":"/"},"openid":"ohBGq5bnNZ5f56RzofdnGgi8SK2g","session_key":"nkifat5fdVruRF5j76Sy2A=="}'),
	('BNERABjJmCkqjWtW8FnbTKoEGIGIrsjP', 1567954341, '{"cookie":{"originalMaxAge":86400000,"expires":"2019-09-08T14:52:20.721Z","httpOnly":true,"path":"/"},"openid":"ohBGq5bnNZ5f56RzofdnGgi8SK2g","session_key":"Kif6OXNtFFVUixRPdoK4mQ=="}'),
	('C-2RxyeNFhTg_jUezDv1QkXXdHfCu6Bn', 1567945338, '{"cookie":{"originalMaxAge":86400000,"expires":"2019-09-08T12:22:17.982Z","httpOnly":true,"path":"/"},"uid":3,"tel":"3"}'),
	('C0oWGWqSp7ZVRcbiMAI5ibj2LRK2eHDL', 1567922470, '{"cookie":{"originalMaxAge":86400000,"expires":"2019-09-08T06:01:10.256Z","httpOnly":true,"path":"/"},"openid":"ohBGq5bnNZ5f56RzofdnGgi8SK2g","session_key":"OZMnf8bHLXYGDOJ+CpwK7w=="}'),
	('CMEu11bBLzy5bri0tEtCV_3LpC8-m8mJ', 1567926438, '{"cookie":{"originalMaxAge":86400000,"expires":"2019-09-08T07:07:17.989Z","httpOnly":true,"path":"/"},"openid":"ohBGq5bnNZ5f56RzofdnGgi8SK2g","session_key":"utLocO6qiWnVV/e2sF4AvQ=="}'),
	('CvNLug2PAfV-q6ImU9ofq7C-nj1IYjJl', 1567939005, '{"cookie":{"originalMaxAge":86400000,"expires":"2019-09-08T10:36:45.000Z","httpOnly":true,"path":"/"},"openid":"ohBGq5bnNZ5f56RzofdnGgi8SK2g","session_key":"YRrC+26V74kD/p8kyAI6yQ=="}'),
	('CyPFb1IZNzJItJdtlyepkyDC4l4F-DlU', 1567937539, '{"cookie":{"originalMaxAge":86400000,"expires":"2019-09-08T10:12:19.208Z","httpOnly":true,"path":"/"},"uid":13,"tel":"22"}'),
	('Cz4NnPqjVZogWOubagctG9UZjt0B7J9Z', 1567921583, '{"cookie":{"originalMaxAge":86400000,"expires":"2019-09-08T05:46:22.548Z","httpOnly":true,"path":"/"},"openid":"ohBGq5bnNZ5f56RzofdnGgi8SK2g","session_key":"FK692Jt6Oc8acJmepG5akg=="}'),
	('DCeh5yXYCkKoCPZguPGrvhPfzAMop0mG', 1567933902, '{"cookie":{"originalMaxAge":86400000,"expires":"2019-09-08T09:11:42.145Z","httpOnly":true,"path":"/"},"openid":"ohBGq5bnNZ5f56RzofdnGgi8SK2g","session_key":"KNJ8Tn4RPk+yFmXzUGxb3w=="}'),
	('E4L0CKrbPSEo4PWObFNrRu_6LVxz_b0T', 1567937061, '{"cookie":{"originalMaxAge":86400000,"expires":"2019-09-08T10:04:21.194Z","httpOnly":true,"path":"/"},"uid":12,"tel":"11"}'),
	('Em95D5e_55NcC8IcKCrKIBw79vrHgvWH', 1567927603, '{"cookie":{"originalMaxAge":86400000,"expires":"2019-09-08T07:26:43.370Z","httpOnly":true,"path":"/"},"openid":"ohBGq5bnNZ5f56RzofdnGgi8SK2g","session_key":"C5SydXtZeV01oEgLLRPtUg=="}'),
	('EvktGasQHfbzjDLYfUJ6O5neZEntutuD', 1567920409, '{"cookie":{"originalMaxAge":86400000,"expires":"2019-09-08T05:26:49.155Z","httpOnly":true,"path":"/"},"openid":"ohBGq5bnNZ5f56RzofdnGgi8SK2g","session_key":"O1IDMlBeCALymXmaItfJyg=="}'),
	('F0lfWmdHf8qhgWUx1MEogrV6AZyq4Ue3', 1567920501, '{"cookie":{"originalMaxAge":86400000,"expires":"2019-09-08T05:28:20.928Z","httpOnly":true,"path":"/"},"openid":"ohBGq5bnNZ5f56RzofdnGgi8SK2g","session_key":"USMMtTdMhGUag1X3whWBFg=="}'),
	('F6V9Zh39DxqwNse8tF-9YmpZCUoIxQM_', 1567929726, '{"cookie":{"originalMaxAge":86400000,"expires":"2019-09-08T08:02:06.473Z","httpOnly":true,"path":"/"},"openid":"ohBGq5bnNZ5f56RzofdnGgi8SK2g","session_key":"0Wjs+P4necUX3wsyaZyOpQ=="}'),
	('G7N1u4IsiVKBM_RFX9g3y7cWygzeXOJs', 1567939120, '{"cookie":{"originalMaxAge":86400000,"expires":"2019-09-08T10:38:40.423Z","httpOnly":true,"path":"/"},"openid":"ohBGq5bnNZ5f56RzofdnGgi8SK2g","session_key":"YkczcSmKEf2/r3E75V5gIw=="}'),
	('GA4102O4-cFfk1-DLWXKF8CUjsXGQdAj', 1567941675, '{"cookie":{"originalMaxAge":86400000,"expires":"2019-09-08T11:21:15.079Z","httpOnly":true,"path":"/"},"openid":"ohBGq5bnNZ5f56RzofdnGgi8SK2g","session_key":"9EqaKooCEva8TLtiYcErng=="}'),
	('GVi7jjguxmkd3ACpoQOmG6uJOWknRma4', 1567918802, '{"cookie":{"originalMaxAge":86400000,"expires":"2019-09-08T05:00:02.144Z","httpOnly":true,"path":"/"},"openid":"ohBGq5bnNZ5f56RzofdnGgi8SK2g","session_key":"MaFXnoPzGayGioRXmdEHDA=="}'),
	('GmKNXHdvBSrIMyyN3PTubYM8a6PURQtP', 1567918380, '{"cookie":{"originalMaxAge":86400000,"expires":"2019-09-08T04:52:59.541Z","httpOnly":true,"path":"/"},"openid":"ohBGq5bnNZ5f56RzofdnGgi8SK2g","session_key":"TwKvOqpwrN2grzA3TRHdFw=="}'),
	('GvqeiICWef0ml9kkJaBZcXo_31Q39O8D', 1567957418, '{"cookie":{"originalMaxAge":86400000,"expires":"2019-09-08T15:43:38.240Z","httpOnly":true,"path":"/"},"openid":"ohBGq5bnNZ5f56RzofdnGgi8SK2g","session_key":"Pb3QP4PVzvvfTlKTYcA79Q=="}'),
	('GyxyJftu6OroSRRsLisSKSh4-NGDv3VS', 1567929723, '{"cookie":{"originalMaxAge":86400000,"expires":"2019-09-08T08:02:03.309Z","httpOnly":true,"path":"/"},"openid":"ohBGq5bnNZ5f56RzofdnGgi8SK2g","session_key":"0Wjs+P4necUX3wsyaZyOpQ=="}'),
	('H85Y_yFn-ljGPnzNEWX49rYNP1Or4tk5', 1567918100, '{"cookie":{"originalMaxAge":86400000,"expires":"2019-09-08T04:48:19.674Z","httpOnly":true,"path":"/"},"openid":"ohBGq5bnNZ5f56RzofdnGgi8SK2g","session_key":"n3oCFUcn29f7089XoWneZQ=="}'),
	('Ib7K5AG-j2zbVqzDB5-zm1NfkFhGGk4Y', 1567918622, '{"cookie":{"originalMaxAge":86400000,"expires":"2019-09-08T04:57:02.014Z","httpOnly":true,"path":"/"},"openid":"ohBGq5bnNZ5f56RzofdnGgi8SK2g","session_key":"f6OPiZnnwZmdabXpcniXiA=="}'),
	('JFcXu3THYBccmvo2mFrd72qdenrCW_JQ', 1567918548, '{"cookie":{"originalMaxAge":86400000,"expires":"2019-09-08T04:55:48.004Z","httpOnly":true,"path":"/"},"openid":"ohBGq5bnNZ5f56RzofdnGgi8SK2g","session_key":"vkVPlu8IcgxrVe9A/+zzaQ=="}'),
	('K0hyWxrNkSPF5CoP4aznH3W5__5FZI2b', 1567919187, '{"cookie":{"originalMaxAge":86400000,"expires":"2019-09-08T05:06:26.998Z","httpOnly":true,"path":"/"},"openid":"ohBGq5bnNZ5f56RzofdnGgi8SK2g","session_key":"PkvxS/pm4wS9uu+BUHTOrA=="}'),
	('LkYzO0ONkz6Qrt7zrj27mOFfq8RRS5Lp', 1567941342, '{"cookie":{"originalMaxAge":86400000,"expires":"2019-09-08T11:15:41.740Z","httpOnly":true,"path":"/"},"openid":"ohBGq5bnNZ5f56RzofdnGgi8SK2g","session_key":"RjZRQR/Q8zxL0T/gy8sIPg=="}'),
	('Lspr6XzroBxd2LH0-f03YdVq2oZ2CvCo', 1567926054, '{"cookie":{"originalMaxAge":86400000,"expires":"2019-09-08T07:00:53.550Z","httpOnly":true,"path":"/"},"openid":"ohBGq5bnNZ5f56RzofdnGgi8SK2g","session_key":"zITKoft1K4uMJw5Yo0+dCQ=="}'),
	('MFE0pwsiCxFA-m39vU4825eNNctuidqI', 1567924608, '{"cookie":{"originalMaxAge":86400000,"expires":"2019-09-08T06:36:47.548Z","httpOnly":true,"path":"/"},"openid":"ohBGq5bnNZ5f56RzofdnGgi8SK2g","session_key":"I/arcGzIgmY8LW5iKGl+gw=="}'),
	('MVw5WOYhZjxn8sxSDOe5Vr_PlPqV0Eam', 1567921347, '{"cookie":{"originalMaxAge":86400000,"expires":"2019-09-08T05:42:27.117Z","httpOnly":true,"path":"/"},"openid":"ohBGq5bnNZ5f56RzofdnGgi8SK2g","session_key":"GVsFdC3IvewRfVTEWPSpmw=="}'),
	('Me49zxqRArDviFlXNLtlyxBDxT_wSksu', 1567941262, '{"cookie":{"originalMaxAge":86400000,"expires":"2019-09-08T11:14:21.781Z","httpOnly":true,"path":"/"},"openid":"ohBGq5bnNZ5f56RzofdnGgi8SK2g","session_key":"ekP4VHWSbIdpnVyOVVdMkA=="}'),
	('Me98j0J1wHueVmPJWTXoBTVd3RJ-EcDG', 1567927688, '{"cookie":{"originalMaxAge":86400000,"expires":"2019-09-08T07:28:08.451Z","httpOnly":true,"path":"/"},"openid":"ohBGq5bnNZ5f56RzofdnGgi8SK2g","session_key":"xh4k1nrHeElvibtGtFG5Ow=="}'),
	('MnJ6i0tE6K3uQorRXIj2KmZd1QNEn9uH', 1567941070, '{"cookie":{"originalMaxAge":86400000,"expires":"2019-09-08T11:11:09.902Z","httpOnly":true,"path":"/"},"openid":"ohBGq5bnNZ5f56RzofdnGgi8SK2g","session_key":"14p0q+tybB6h7KHZEOHAEg=="}'),
	('N1MWRqbK2atRFcDZqZZ6ZLtr75SU_9hf', 1567919552, '{"cookie":{"originalMaxAge":86400000,"expires":"2019-09-08T05:12:32.216Z","httpOnly":true,"path":"/"},"openid":"ohBGq5bnNZ5f56RzofdnGgi8SK2g","session_key":"Nrfz72/6Y8BLF6aKJLV1Cw=="}'),
	('Nr1qRR4iqVIdAo5JZFhkrXi-8sdqnFgd', 1567924675, '{"cookie":{"originalMaxAge":86400000,"expires":"2019-09-08T06:37:54.694Z","httpOnly":true,"path":"/"},"openid":"ohBGq5bnNZ5f56RzofdnGgi8SK2g","session_key":"lvMctm0+wDxAJQ4X6NY3bA=="}'),
	('O5HXq152DK5pneLeWYPtrxn_R2vgIXrY', 1567925193, '{"cookie":{"originalMaxAge":86400000,"expires":"2019-09-08T06:46:32.832Z","httpOnly":true,"path":"/"},"openid":"ohBGq5bnNZ5f56RzofdnGgi8SK2g","session_key":"HU3ClmdC9ee/m/4IW5sx4Q=="}'),
	('OIlcWbg3d4tsOJBYOpZasBcrhgNZEKTU', 1567918806, '{"cookie":{"originalMaxAge":86400000,"expires":"2019-09-08T05:00:06.099Z","httpOnly":true,"path":"/"},"openid":"ohBGq5bnNZ5f56RzofdnGgi8SK2g","session_key":"MaFXnoPzGayGioRXmdEHDA=="}'),
	('ORTJVZgVPri3ZhHkkwwZabEMoEs0s7wh', 1567920310, '{"cookie":{"originalMaxAge":86400000,"expires":"2019-09-08T05:25:10.390Z","httpOnly":true,"path":"/"},"openid":"ohBGq5bnNZ5f56RzofdnGgi8SK2g","session_key":"kB3qMf2GUPcS1fL2tDNErw=="}'),
	('OZrj32At9ZqpK6PJTkypm9-ccnPhCsBd', 1567925457, '{"cookie":{"originalMaxAge":86400000,"expires":"2019-09-08T06:50:57.137Z","httpOnly":true,"path":"/"},"openid":"ohBGq5bnNZ5f56RzofdnGgi8SK2g","session_key":"ENeKTWyrS229cfKoHffjLA=="}'),
	('PYXToarkwr9IM1UwHgL6i2LBtFzo152U', 1567941150, '{"cookie":{"originalMaxAge":86400000,"expires":"2019-09-08T11:12:30.410Z","httpOnly":true,"path":"/"},"openid":"ohBGq5bnNZ5f56RzofdnGgi8SK2g","session_key":"X/GteUoY7GkPAL3Nnu5mnQ=="}'),
	('PamdrPLCrZnIlHvNUpymDfX4ijFSnkWQ', 1567955734, '{"cookie":{"originalMaxAge":86400000,"expires":"2019-09-08T15:15:34.413Z","httpOnly":true,"path":"/"},"uid":1,"tel":"1"}'),
	('Pout1HP173f9howIbCEfNGhL9WuTuEBI', 1567918540, '{"cookie":{"originalMaxAge":86400000,"expires":"2019-09-08T04:55:39.945Z","httpOnly":true,"path":"/"},"openid":"ohBGq5bnNZ5f56RzofdnGgi8SK2g","session_key":"vkVPlu8IcgxrVe9A/+zzaQ=="}'),
	('QJZDC3EP8K_FWDbzPIjQRPSWLJm-VwS6', 1567929702, '{"cookie":{"originalMaxAge":86400000,"expires":"2019-09-08T08:01:41.716Z","httpOnly":true,"path":"/"},"openid":"ohBGq5bnNZ5f56RzofdnGgi8SK2g","session_key":"0Wjs+P4necUX3wsyaZyOpQ=="}'),
	('QOZ0qzAUv8uRArtgqiQq07dJ88uKFQwo', 1567940781, '{"cookie":{"originalMaxAge":86400000,"expires":"2019-09-08T11:06:21.177Z","httpOnly":true,"path":"/"},"openid":"ohBGq5bnNZ5f56RzofdnGgi8SK2g","session_key":"+mqW7UJBwKcd0JaMi4hnCA=="}'),
	('RxvNYPDtuMHBzT6I2GPpQftxsdVhxIuP', 1567929725, '{"cookie":{"originalMaxAge":86400000,"expires":"2019-09-08T08:02:05.284Z","httpOnly":true,"path":"/"},"openid":"ohBGq5bnNZ5f56RzofdnGgi8SK2g","session_key":"0Wjs+P4necUX3wsyaZyOpQ=="}'),
	('STTSHeUUb1UG_x6lsALRh93kTY8OfX_9', 1567926477, '{"cookie":{"originalMaxAge":86400000,"expires":"2019-09-08T07:07:56.838Z","httpOnly":true,"path":"/"},"openid":"ohBGq5bnNZ5f56RzofdnGgi8SK2g","session_key":"utLocO6qiWnVV/e2sF4AvQ=="}'),
	('SZ5LiNeDdtCZL0wfkq4cPWzZXV3-xKvY', 1567921658, '{"cookie":{"originalMaxAge":86400000,"expires":"2019-09-08T05:47:38.421Z","httpOnly":true,"path":"/"},"openid":"ohBGq5bnNZ5f56RzofdnGgi8SK2g","session_key":"FK692Jt6Oc8acJmepG5akg=="}'),
	('SjxfYhY_L-aFQdtZDISlvDqD696GvbVx', 1567938995, '{"cookie":{"originalMaxAge":86400000,"expires":"2019-09-08T10:36:34.910Z","httpOnly":true,"path":"/"},"openid":"ohBGq5bnNZ5f56RzofdnGgi8SK2g","session_key":"YRrC+26V74kD/p8kyAI6yQ=="}'),
	('TR89kLNvyVTZB1W1r9D6DpBXt02Rs9P-', 1567919183, '{"cookie":{"originalMaxAge":86400000,"expires":"2019-09-08T05:06:22.509Z","httpOnly":true,"path":"/"},"openid":"ohBGq5bnNZ5f56RzofdnGgi8SK2g","session_key":"PkvxS/pm4wS9uu+BUHTOrA=="}'),
	('TjdRKuILO41lHkoWTp2qokL8Q_SEjk_i', 1567926525, '{"cookie":{"originalMaxAge":86400000,"expires":"2019-09-08T07:08:44.810Z","httpOnly":true,"path":"/"},"openid":"ohBGq5bnNZ5f56RzofdnGgi8SK2g","session_key":"6qssJmM91yB5R5rvRmGRtw=="}'),
	('TzjjHtE_ssEi1M8N3EUohfOdPszJrzzG', 1567930334, '{"cookie":{"originalMaxAge":86400000,"expires":"2019-09-08T08:12:13.580Z","httpOnly":true,"path":"/"},"uid":1,"tel":"1"}'),
	('UwW5hXECJkH7WI4kKIJge22_WH4o708a', 1567922027, '{"cookie":{"originalMaxAge":86400000,"expires":"2019-09-08T05:53:47.081Z","httpOnly":true,"path":"/"},"openid":"ohBGq5bnNZ5f56RzofdnGgi8SK2g","session_key":"VG0OJMsLjNOXdoHfQ6QLeA=="}'),
	('V1x9S9Io_EYTW3ohsfexH_HgW8LQMjFz', 1567930940, '{"cookie":{"originalMaxAge":86400000,"expires":"2019-09-08T08:22:19.806Z","httpOnly":true,"path":"/"},"uid":2,"tel":"2"}'),
	('VhTMOnyaHIHXoPxcS7LipLtaPs9c8PfH', 1567947083, '{"cookie":{"originalMaxAge":86400000,"expires":"2019-09-08T12:51:22.596Z","httpOnly":true,"path":"/"},"openid":"ohBGq5bnNZ5f56RzofdnGgi8SK2g","session_key":"eCBukC2QnbppsZqeQR7z3Q=="}'),
	('VjUHn5kobzM0W1hY4gMib6_6bEVUlh49', 1567926405, '{"cookie":{"originalMaxAge":86400000,"expires":"2019-09-08T07:06:44.846Z","httpOnly":true,"path":"/"},"openid":"ohBGq5bnNZ5f56RzofdnGgi8SK2g","session_key":"utLocO6qiWnVV/e2sF4AvQ=="}'),
	('VqTui7Qfw1LLCr8lzOhPIuZBpWiWaWGY', 1567926930, '{"cookie":{"originalMaxAge":86400000,"expires":"2019-09-08T07:15:30.008Z","httpOnly":true,"path":"/"},"openid":"ohBGq5bnNZ5f56RzofdnGgi8SK2g","session_key":"/Dq6vWjC1NqHBPSMjDqnbA=="}'),
	('VqvWihs-i4kbGD-524oEM6IznFWeL0zR', 1567933910, '{"cookie":{"originalMaxAge":86400000,"expires":"2019-09-08T09:11:49.961Z","httpOnly":true,"path":"/"},"openid":"ohBGq5bnNZ5f56RzofdnGgi8SK2g","session_key":"KNJ8Tn4RPk+yFmXzUGxb3w=="}'),
	('WDZKPYhj-AH1LpKKIY9qVIPZphdrb0Yp', 1567942652, '{"cookie":{"originalMaxAge":86400000,"expires":"2019-09-08T11:37:31.774Z","httpOnly":true,"path":"/"},"openid":"ohBGq5bnNZ5f56RzofdnGgi8SK2g","session_key":"eT0hgQ/7Y3vi+MmHI3WWAw=="}'),
	('WHZwwm7fSrx565UwDhqPlrXI1BWJNKRy', 1567929269, '{"cookie":{"originalMaxAge":86400000,"expires":"2019-09-08T07:54:29.272Z","httpOnly":true,"path":"/"},"openid":"ohBGq5bnNZ5f56RzofdnGgi8SK2g","session_key":"HYmi8ezAhmaoGJP1/e099A=="}'),
	('WLaUeqkHhafH08sfbiGVUF6HL1rUV8CD', 1567940580, '{"cookie":{"originalMaxAge":86400000,"expires":"2019-09-08T11:03:00.356Z","httpOnly":true,"path":"/"},"openid":"ohBGq5bnNZ5f56RzofdnGgi8SK2g","session_key":"Gj31/P2ap53NJE7zmmsZ/A=="}'),
	('WXzgLKW3T-Z1egAj6PDDQuU8sHE-j6c8', 1567960723, '{"cookie":{"originalMaxAge":86400000,"expires":"2019-09-08T16:38:43.381Z","httpOnly":true,"path":"/"},"openid":"ohBGq5bnNZ5f56RzofdnGgi8SK2g","session_key":"V3wrSx+cwkKYdVNaJkHpOA=="}'),
	('WhHYLhA5Rb00BU0SbaTiPjaxzAYVCpQX', 1567941238, '{"cookie":{"originalMaxAge":86400000,"expires":"2019-09-08T11:13:57.970Z","httpOnly":true,"path":"/"},"openid":"ohBGq5bnNZ5f56RzofdnGgi8SK2g","session_key":"nhPIUO7S2QtLTK7FMAUUaQ=="}'),
	('X5gFj6Id8VDAhTcEt85nxIuhdtM168pJ', 1567951780, '{"cookie":{"originalMaxAge":86400000,"expires":"2019-09-08T14:09:39.809Z","httpOnly":true,"path":"/"},"openid":"ohBGq5bnNZ5f56RzofdnGgi8SK2g","session_key":"tNwygkqpOkcoyjlSAw1QTg=="}'),
	('XBIfBCN70hsqTOFg7l2ElysmcQ2ctldq', 1567941987, '{"cookie":{"originalMaxAge":86400000,"expires":"2019-09-08T11:26:27.225Z","httpOnly":true,"path":"/"},"openid":"ohBGq5bnNZ5f56RzofdnGgi8SK2g","session_key":"7bJxybw5HFhuzHPo5bxJNw=="}'),
	('YQ_uf7HLNSFI2IKG-f8tmJ-0eZ5ssMeW', 1567922350, '{"cookie":{"originalMaxAge":86400000,"expires":"2019-09-08T05:59:09.997Z","httpOnly":true,"path":"/"},"openid":"ohBGq5bnNZ5f56RzofdnGgi8SK2g","session_key":"dNfE0SDAbBM5VXJWqFdbow=="}'),
	('YafimU4zhPno9oveKC5r9H_TGGJi1seU', 1567925504, '{"cookie":{"originalMaxAge":86400000,"expires":"2019-09-08T06:51:43.818Z","httpOnly":true,"path":"/"},"openid":"ohBGq5bnNZ5f56RzofdnGgi8SK2g","session_key":"bW02arOmLEvPe4Zc5EiahA=="}'),
	('Z2aikTYPo-Vwoj05e0_leOD5t6ys5qBv', 1567924628, '{"cookie":{"originalMaxAge":86400000,"expires":"2019-09-08T06:37:08.219Z","httpOnly":true,"path":"/"},"openid":"ohBGq5bnNZ5f56RzofdnGgi8SK2g","session_key":"WcjP+/ePKEQNc8b6/FQ2NQ=="}'),
	('ZL0pHIS4-5KsC-Bd3FXDE0JywfaKK6OF', 1567918347, '{"cookie":{"originalMaxAge":86400000,"expires":"2019-09-08T04:52:27.028Z","httpOnly":true,"path":"/"},"openid":"ohBGq5bnNZ5f56RzofdnGgi8SK2g","session_key":"TwKvOqpwrN2grzA3TRHdFw=="}'),
	('ZUXEdYXmuU5ILFe5jJECM4sYQAUQ3yKb', 1567941026, '{"cookie":{"originalMaxAge":86400000,"expires":"2019-09-08T11:10:25.514Z","httpOnly":true,"path":"/"},"openid":"ohBGq5bnNZ5f56RzofdnGgi8SK2g","session_key":"o87b7rw6DrTFh6ydOAaZOA=="}'),
	('ZVZLYH-cJYcVvJnv9jjzj_hwg0qybc8E', 1567956263, '{"cookie":{"originalMaxAge":86400000,"expires":"2019-09-08T15:24:23.294Z","httpOnly":true,"path":"/"},"openid":"ohBGq5bnNZ5f56RzofdnGgi8SK2g","session_key":"LwvsH6KgI8nHpJYbieGzPQ=="}'),
	('Zu6CPeIPTvE6eO40X5tmmZ6dpkop8P7z', 1567960800, '{"cookie":{"originalMaxAge":86400000,"expires":"2019-09-08T16:40:00.487Z","httpOnly":true,"path":"/"},"uid":7,"tel":"8"}'),
	('ZxrCSGco0WarC_-kBIxzfPI4uqsMnDMy', 1567926617, '{"cookie":{"originalMaxAge":86400000,"expires":"2019-09-08T07:10:16.801Z","httpOnly":true,"path":"/"},"openid":"ohBGq5bnNZ5f56RzofdnGgi8SK2g","session_key":"bu4wrSolavMTP4gwE70OUg=="}'),
	('ZyCtdX_PS2q_h6UGuEcfXN4yxd8CClAj', 1567927664, '{"cookie":{"originalMaxAge":86400000,"expires":"2019-09-08T07:27:44.428Z","httpOnly":true,"path":"/"},"openid":"ohBGq5bnNZ5f56RzofdnGgi8SK2g","session_key":"8YQ6Klc07uHz1WaBuDHnGA=="}'),
	('Zzttlcn-aYC5prJ1pMONsuO8ynsLY2jG', 1567919946, '{"cookie":{"originalMaxAge":86400000,"expires":"2019-09-08T05:19:06.106Z","httpOnly":true,"path":"/"},"openid":"ohBGq5bnNZ5f56RzofdnGgi8SK2g","session_key":"uw6J2OF6/ScFxVHK+DGCrg=="}'),
	('Zzz6fnToSwEvOkCcdeS3XsH9XfdP_Z1j', 1567957492, '{"cookie":{"originalMaxAge":86400000,"expires":"2019-09-08T15:44:51.922Z","httpOnly":true,"path":"/"},"uid":2,"tel":"2"}'),
	('_2WDOBOpup9kmCwy5veTkkQhchNH6nve', 1567917755, '{"cookie":{"originalMaxAge":86400000,"expires":"2019-09-08T04:42:35.118Z","httpOnly":true,"path":"/"},"openid":"ohBGq5bnNZ5f56RzofdnGgi8SK2g","session_key":"sSFXh/LFUOgCvIp3HPpXFQ=="}'),
	('_YnCkHLn8AyQkaPK2QAT9AyLUsEEFuQB', 1567922102, '{"cookie":{"originalMaxAge":86400000,"expires":"2019-09-08T05:55:02.127Z","httpOnly":true,"path":"/"},"openid":"ohBGq5bnNZ5f56RzofdnGgi8SK2g","session_key":"vFtKDUnwbyVMHQ1FAL+M/A=="}'),
	('aVsR_pMDZFIMJCQ2XhWwDfuN4HNQljdO', 1567940814, '{"cookie":{"originalMaxAge":86400000,"expires":"2019-09-08T11:06:54.182Z","httpOnly":true,"path":"/"},"openid":"ohBGq5bnNZ5f56RzofdnGgi8SK2g","session_key":"+mqW7UJBwKcd0JaMi4hnCA=="}'),
	('bjalVKPUDKERE0oRRki_z09Ip1bsfrwb', 1567933907, '{"cookie":{"originalMaxAge":86400000,"expires":"2019-09-08T09:11:46.900Z","httpOnly":true,"path":"/"},"openid":"ohBGq5bnNZ5f56RzofdnGgi8SK2g","session_key":"KNJ8Tn4RPk+yFmXzUGxb3w=="}'),
	('cDN_cpQ_det8DVOUKrf_mrhr2nVZsLmu', 1567933903, '{"cookie":{"originalMaxAge":86400000,"expires":"2019-09-08T09:11:43.180Z","httpOnly":true,"path":"/"},"openid":"ohBGq5bnNZ5f56RzofdnGgi8SK2g","session_key":"KNJ8Tn4RPk+yFmXzUGxb3w=="}'),
	('cZCk2VMDRo6rUnJQZ4l42WCrHEXG8RWD', 1567933905, '{"cookie":{"originalMaxAge":86400000,"expires":"2019-09-08T09:11:45.478Z","httpOnly":true,"path":"/"},"openid":"ohBGq5bnNZ5f56RzofdnGgi8SK2g","session_key":"KNJ8Tn4RPk+yFmXzUGxb3w=="}'),
	('cmLlz973aqg8_exCoCGUs6Tda3TViIFA', 1567924162, '{"cookie":{"originalMaxAge":86400000,"expires":"2019-09-08T06:29:22.020Z","httpOnly":true,"path":"/"},"openid":"ohBGq5bnNZ5f56RzofdnGgi8SK2g","session_key":"/7IohWs/t47ldoxm04DZEQ=="}'),
	('djdErQmKmqYJ3b74zbdAMqaFBUdXjdnH', 1567920267, '{"cookie":{"originalMaxAge":86400000,"expires":"2019-09-08T05:24:27.470Z","httpOnly":true,"path":"/"},"openid":"ohBGq5bnNZ5f56RzofdnGgi8SK2g","session_key":"PEeYFmbULUF/jjTadmQo3w=="}'),
	('ePi4bvwwZRMv791Qz6nkSmKwEI8w4c-P', 1567921837, '{"cookie":{"originalMaxAge":86400000,"expires":"2019-09-08T05:50:36.512Z","httpOnly":true,"path":"/"},"openid":"ohBGq5bnNZ5f56RzofdnGgi8SK2g","session_key":"LSrHOOtOXYJGS/Hbs8XeWw=="}'),
	('eyCPMYJPD3KcA8dsZX6VRG8Lg68Zxdug', 1567960343, '{"cookie":{"originalMaxAge":86400000,"expires":"2019-09-08T16:32:23.396Z","httpOnly":true,"path":"/"},"openid":"ohBGq5bnNZ5f56RzofdnGgi8SK2g","session_key":"3b8DZorOwV6pjeyFglUq3A=="}'),
	('gCjcmqWAEiiedGfJKi7mjoOrHn6iev8p', 1567922072, '{"cookie":{"originalMaxAge":86400000,"expires":"2019-09-08T05:54:31.879Z","httpOnly":true,"path":"/"},"openid":"ohBGq5bnNZ5f56RzofdnGgi8SK2g","session_key":"u76hyIqqJFPfkLgkHH86AQ=="}'),
	('geVYkSAWJ6LDqrbIXPcZ5XlMnIGdzbtZ', 1567931055, '{"cookie":{"originalMaxAge":86400000,"expires":"2019-09-08T08:24:15.270Z","httpOnly":true,"path":"/"},"uid":3,"tel":"3"}'),
	('gwfEGzqrbyNUh6DFiOZyCBmLjFQQC2w9', 1567940104, '{"cookie":{"originalMaxAge":86400000,"expires":"2019-09-08T10:55:04.117Z","httpOnly":true,"path":"/"},"openid":"ohBGq5bnNZ5f56RzofdnGgi8SK2g","session_key":"512xquH3Uqgevxm+5duYig=="}'),
	('hXfSrYkvXqmZqoyolrSQCzH-diH266G7', 1567919913, '{"cookie":{"originalMaxAge":86400000,"expires":"2019-09-08T05:18:32.680Z","httpOnly":true,"path":"/"},"openid":"ohBGq5bnNZ5f56RzofdnGgi8SK2g","session_key":"DtMZwC9nAj/RVYve1evw2g=="}'),
	('hdClOBXhfoDUWJj39b_MrEz1ee_PDosn', 1567931182, '{"cookie":{"originalMaxAge":86400000,"expires":"2019-09-08T08:26:22.055Z","httpOnly":true,"path":"/"},"uid":4,"tel":"4"}'),
	('iNLPVF5L7xPzTkIqKMtw1eiR--ckX1f5', 1567933909, '{"cookie":{"originalMaxAge":86400000,"expires":"2019-09-08T09:11:48.967Z","httpOnly":true,"path":"/"},"openid":"ohBGq5bnNZ5f56RzofdnGgi8SK2g","session_key":"KNJ8Tn4RPk+yFmXzUGxb3w=="}'),
	('ilRuR66-WW0EVoRcM3igaLjo3OJecqOV', 1567921298, '{"cookie":{"originalMaxAge":86400000,"expires":"2019-09-08T05:41:37.966Z","httpOnly":true,"path":"/"},"openid":"ohBGq5bnNZ5f56RzofdnGgi8SK2g","session_key":"ndPK3Euxnwr7hsDoyuzKWg=="}'),
	('jKzYcom9DsZ8dXnMdcg9w7X2K7daGkAX', 1567924717, '{"cookie":{"originalMaxAge":86400000,"expires":"2019-09-08T06:38:36.580Z","httpOnly":true,"path":"/"},"openid":"ohBGq5bnNZ5f56RzofdnGgi8SK2g","session_key":"6q99ipMapSip3BgV+J4ENw=="}'),
	('jNEcSkQymzumdxp8Q6Qwh9jTJF9znoC4', 1567926299, '{"cookie":{"originalMaxAge":86399999,"expires":"2019-09-08T07:04:59.458Z","httpOnly":true,"path":"/"},"openid":"ohBGq5bnNZ5f56RzofdnGgi8SK2g","session_key":"gV2NYLa1XXZ1x1QcZhnusA=="}'),
	('jYYdFqiwVoCopm1951nncBbWSmxORr2z', 1567921922, '{"cookie":{"originalMaxAge":86400000,"expires":"2019-09-08T05:52:01.889Z","httpOnly":true,"path":"/"},"openid":"ohBGq5bnNZ5f56RzofdnGgi8SK2g","session_key":"VG0OJMsLjNOXdoHfQ6QLeA=="}'),
	('jrvztZ5O5IacSA24lYQzplLJhIpZwoAR', 1567926882, '{"cookie":{"originalMaxAge":86400000,"expires":"2019-09-08T07:14:41.536Z","httpOnly":true,"path":"/"},"openid":"ohBGq5bnNZ5f56RzofdnGgi8SK2g","session_key":"pSEB8GpGdsb0v4qMjdgGgQ=="}'),
	('jwak94sssihf7bM0CCUFVRt1bvQ0i8Xa', 1567929755, '{"cookie":{"originalMaxAge":86400000,"expires":"2019-09-08T08:02:34.884Z","httpOnly":true,"path":"/"},"openid":"ohBGq5bnNZ5f56RzofdnGgi8SK2g","session_key":"T7wFPf+NqY3Ir/ohM5zaxg=="}'),
	('jxFQzb1dQwtRGMRvcWkAFmmE3JqNnhI6', 1567919815, '{"cookie":{"originalMaxAge":86400000,"expires":"2019-09-08T05:16:55.424Z","httpOnly":true,"path":"/"},"openid":"ohBGq5bnNZ5f56RzofdnGgi8SK2g","session_key":"Ir55OD7evd7xCDvZp0akDg=="}'),
	('k41TIl6zcyZWAkLNqCsLqTXkkU4dqwku', 1567934046, '{"cookie":{"originalMaxAge":86400000,"expires":"2019-09-08T09:14:05.851Z","httpOnly":true,"path":"/"},"openid":"ohBGq5bnNZ5f56RzofdnGgi8SK2g","session_key":"wV/pHSSGMVUz7r5OlCGU1w=="}'),
	('ka0xtkAcC3DW3hp8ntltiBlj4Xrmsvj4', 1567951961, '{"cookie":{"originalMaxAge":86400000,"expires":"2019-09-08T14:12:41.297Z","httpOnly":true,"path":"/"},"openid":"ohBGq5bnNZ5f56RzofdnGgi8SK2g","session_key":"Gi3NLnlp3q1tagJT13oTaA=="}'),
	('ljRxAoE71ghQTbDXIx87ANftnVYk0XFs', 1567929694, '{"cookie":{"originalMaxAge":86400000,"expires":"2019-09-08T08:01:33.831Z","httpOnly":true,"path":"/"},"openid":"ohBGq5bnNZ5f56RzofdnGgi8SK2g","session_key":"wjDG5Aro2Ce+wNr0lrPV7w=="}'),
	('mbl7jHe8zsdoS5CQVRIjgAm9ouTYGHoX', 1567943348, '{"cookie":{"originalMaxAge":86400000,"expires":"2019-09-08T11:49:07.871Z","httpOnly":true,"path":"/"},"uid":16,"tel":"7"}'),
	('nLQBNYdGWCkDSAPRS2hLV4EjBtBBqU6Y', 1567941961, '{"cookie":{"originalMaxAge":86400000,"expires":"2019-09-08T11:26:01.223Z","httpOnly":true,"path":"/"},"openid":"ohBGq5bnNZ5f56RzofdnGgi8SK2g","session_key":"VaTNeaUgeorNqSgx57OBKQ=="}'),
	('occDIlkmxaMXwvt2Uxl-Aik0o1HAwpWr', 1567939302, '{"cookie":{"originalMaxAge":86400000,"expires":"2019-09-08T10:41:41.982Z","httpOnly":true,"path":"/"},"openid":"ohBGq5bnNZ5f56RzofdnGgi8SK2g","session_key":"xppuXj+tY/ZK6lqv7+lLhg=="}'),
	('onwyZemzV197hznGm7xwWYQztddswB5H', 1567947554, '{"cookie":{"originalMaxAge":86400000,"expires":"2019-09-08T12:59:14.353Z","httpOnly":true,"path":"/"},"openid":"ohBGq5bnNZ5f56RzofdnGgi8SK2g","session_key":"CpLLXHs2iep07gJWrCdLXQ=="}'),
	('p1wdtNGEGE3OfzfZI_KOuEx1Z5szYPbk', 1567939311, '{"cookie":{"originalMaxAge":86400000,"expires":"2019-09-08T10:41:50.738Z","httpOnly":true,"path":"/"},"openid":"ohBGq5bnNZ5f56RzofdnGgi8SK2g","session_key":"xppuXj+tY/ZK6lqv7+lLhg=="}'),
	('pJVj5-CYaDetJtKzBwgVoexzbp8YaoDs', 1567960688, '{"cookie":{"originalMaxAge":86400000,"expires":"2019-09-08T16:38:08.286Z","httpOnly":true,"path":"/"},"openid":"ohBGq5bnNZ5f56RzofdnGgi8SK2g","session_key":"vnnR64noxDwEZmn2dEWI/Q=="}'),
	('pKd_Zw-fqyh8BHhCH-wEszJTvFwThHuN', 1567925370, '{"cookie":{"originalMaxAge":86400000,"expires":"2019-09-08T06:49:29.672Z","httpOnly":true,"path":"/"},"openid":"ohBGq5bnNZ5f56RzofdnGgi8SK2g","session_key":"D64REbuHQjaZulDqXncWZw=="}'),
	('pa49GMcnyYG0_cqZOQyX6rBjN5JwBiCX', 1567933882, '{"cookie":{"originalMaxAge":86400000,"expires":"2019-09-08T09:11:21.727Z","httpOnly":true,"path":"/"},"openid":"ohBGq5bnNZ5f56RzofdnGgi8SK2g","session_key":"KNJ8Tn4RPk+yFmXzUGxb3w=="}'),
	('pm2KMRMX7jCYeEJKFm7u6F-OTtmILoBG', 1567926765, '{"cookie":{"originalMaxAge":86400000,"expires":"2019-09-08T07:12:44.917Z","httpOnly":true,"path":"/"},"openid":"ohBGq5bnNZ5f56RzofdnGgi8SK2g","session_key":"ctf2dWClEKqH4ljZQnsoaA=="}'),
	('pwYtehGqBxm5yVTiAlOujjom60Iy0sKx', 1567923383, '{"cookie":{"originalMaxAge":86400000,"expires":"2019-09-08T06:16:23.322Z","httpOnly":true,"path":"/"},"openid":"ohBGq5bnNZ5f56RzofdnGgi8SK2g","session_key":"KnSsBVpvFN7XRRj4jwEH0Q=="}'),
	('qMkpiK3VSDKwxMrjD-lAU2OgyJ7x8xZU', 1567958304, '{"cookie":{"originalMaxAge":86400000,"expires":"2019-09-08T15:58:23.593Z","httpOnly":true,"path":"/"},"openid":"ohBGq5bnNZ5f56RzofdnGgi8SK2g","session_key":"dtKRTzyZviOFzjPsM1UTTg=="}'),
	('qX-mDZb6jzRM26GpL5wJNsUiTlznF11Z', 1567925891, '{"cookie":{"originalMaxAge":86400000,"expires":"2019-09-08T06:58:11.321Z","httpOnly":true,"path":"/"},"openid":"ohBGq5bnNZ5f56RzofdnGgi8SK2g","session_key":"pD7uPzXourqofnO7b8ZwCQ=="}'),
	('qpnIAqh1ivOeEcoR5MuRKhfNHbopnatV', 1567960379, '{"cookie":{"originalMaxAge":86400000,"expires":"2019-09-08T16:32:59.323Z","httpOnly":true,"path":"/"},"openid":"ohBGq5bnNZ5f56RzofdnGgi8SK2g","session_key":"UHYs21vXWXts6MEUOQbIQw=="}'),
	('sJWO9x277W5Bt8IHlFWnAP4tCLsDfZF-', 1567926056, '{"cookie":{"originalMaxAge":86400000,"expires":"2019-09-08T07:00:56.140Z","httpOnly":true,"path":"/"},"openid":"ohBGq5bnNZ5f56RzofdnGgi8SK2g","session_key":"zITKoft1K4uMJw5Yo0+dCQ=="}'),
	('sJrfqREQ67UuddoXtWp4qHUai5ejG7Yl', 1567926714, '{"cookie":{"originalMaxAge":86400000,"expires":"2019-09-08T07:11:54.482Z","httpOnly":true,"path":"/"},"openid":"ohBGq5bnNZ5f56RzofdnGgi8SK2g","session_key":"rka/zuC5Viwhy3BKlw8avg=="}'),
	('sUFVzMveLxwQEQdNFzBeu9GxMJlkQ01o', 1567924586, '{"cookie":{"originalMaxAge":86400000,"expires":"2019-09-08T06:36:26.461Z","httpOnly":true,"path":"/"},"openid":"ohBGq5bnNZ5f56RzofdnGgi8SK2g","session_key":"8G9L3BJuHQUEetKVrxbnVg=="}'),
	('sYp37Do0CUlAGulySM7OmN2P97HDh73U', 1567929675, '{"cookie":{"originalMaxAge":86400000,"expires":"2019-09-08T08:01:15.037Z","httpOnly":true,"path":"/"},"openid":"ohBGq5bnNZ5f56RzofdnGgi8SK2g","session_key":"wjDG5Aro2Ce+wNr0lrPV7w=="}'),
	('sqJ0Kf8q-QgWo15Ftem7IGIxljRtb_yj', 1567921269, '{"cookie":{"originalMaxAge":86400000,"expires":"2019-09-08T05:41:09.199Z","httpOnly":true,"path":"/"},"openid":"ohBGq5bnNZ5f56RzofdnGgi8SK2g","session_key":"TxN2DLMR9LUQ/Y2Lsw+yuQ=="}'),
	('sr-ZVZ-VXG_Dg6zW--RuOb0iMG5vK_xQ', 1567940496, '{"cookie":{"originalMaxAge":86400000,"expires":"2019-09-08T11:01:35.702Z","httpOnly":true,"path":"/"},"openid":"ohBGq5bnNZ5f56RzofdnGgi8SK2g","session_key":"YKmx1Kh99Id48cHEw7IKTQ=="}'),
	('syJLXSqqISxshQqhk0KZFgpR6K94fW6a', 1567922310, '{"cookie":{"originalMaxAge":86400000,"expires":"2019-09-08T05:58:29.982Z","httpOnly":true,"path":"/"},"openid":"ohBGq5bnNZ5f56RzofdnGgi8SK2g","session_key":"bZ6jN0WkQ66RzdD5zt//nw=="}'),
	('t1MyjAflzAE7uQsva2P6yollUMb38u66', 1567924801, '{"cookie":{"originalMaxAge":86400000,"expires":"2019-09-08T06:40:00.717Z","httpOnly":true,"path":"/"},"openid":"ohBGq5bnNZ5f56RzofdnGgi8SK2g","session_key":"rEa0dPsb4VpI3fkOWkVTKw=="}'),
	('u-EZAfExZ-r-9ZMIzkYU3rSVxnaB2TIk', 1567920790, '{"cookie":{"originalMaxAge":86400000,"expires":"2019-09-08T05:33:09.917Z","httpOnly":true,"path":"/"},"openid":"ohBGq5bnNZ5f56RzofdnGgi8SK2g","session_key":"yrLKjB6u3qBNCNXcUo8Frg=="}'),
	('u4PdaoIs91EZuK9AtWLvcHOXkliNyz-T', 1567927654, '{"cookie":{"originalMaxAge":86399999,"expires":"2019-09-08T07:27:34.148Z","httpOnly":true,"path":"/"},"openid":"ohBGq5bnNZ5f56RzofdnGgi8SK2g","session_key":"8YQ6Klc07uHz1WaBuDHnGA=="}'),
	('uenaKA8Ymfmm-qGieba33sumhUcJuBjV', 1567958325, '{"cookie":{"originalMaxAge":86400000,"expires":"2019-09-08T15:58:44.660Z","httpOnly":true,"path":"/"},"openid":"ohBGq5bnNZ5f56RzofdnGgi8SK2g","session_key":"5O6jjkfrIpPBlvoJTxTWyQ=="}'),
	('uqkSQPI4Hw0IiHD7IfDVyDV_hz4OCyBU', 1567929167, '{"cookie":{"originalMaxAge":86400000,"expires":"2019-09-08T07:52:46.893Z","httpOnly":true,"path":"/"},"openid":"ohBGq5bnNZ5f56RzofdnGgi8SK2g","session_key":"HYmi8ezAhmaoGJP1/e099A=="}'),
	('v96u9CCc42Uv_tO2rgNWSFWGFoY0UHOT', 1567917728, '{"cookie":{"originalMaxAge":86400000,"expires":"2019-09-08T04:42:08.377Z","httpOnly":true,"path":"/"},"openid":"ohBGq5bnNZ5f56RzofdnGgi8SK2g","session_key":"sSFXh/LFUOgCvIp3HPpXFQ=="}'),
	('vD1pPugiTyvgO1lAohVrvTzTTy6x1gg9', 1567919145, '{"cookie":{"originalMaxAge":86400000,"expires":"2019-09-08T05:05:45.240Z","httpOnly":true,"path":"/"},"openid":"ohBGq5bnNZ5f56RzofdnGgi8SK2g","session_key":"PkvxS/pm4wS9uu+BUHTOrA=="}'),
	('vpSlfzAMygDa_qZLSVGDCgpfHEyvzXWO', 1567933901, '{"cookie":{"originalMaxAge":86400000,"expires":"2019-09-08T09:11:40.968Z","httpOnly":true,"path":"/"},"openid":"ohBGq5bnNZ5f56RzofdnGgi8SK2g","session_key":"KNJ8Tn4RPk+yFmXzUGxb3w=="}'),
	('wID5uyXXqzjFv5rmuvvRWcrM7_pb0Yd9', 1567921733, '{"cookie":{"originalMaxAge":86400000,"expires":"2019-09-08T05:48:53.054Z","httpOnly":true,"path":"/"},"openid":"ohBGq5bnNZ5f56RzofdnGgi8SK2g","session_key":"PoO/oQpXV1YBlBTSC0Tabw=="}'),
	('x0a8Kr-IiG9DxwWF9aUrTNWJDd8VNXOp', 1567918707, '{"cookie":{"originalMaxAge":86400000,"expires":"2019-09-08T04:58:26.803Z","httpOnly":true,"path":"/"},"openid":"ohBGq5bnNZ5f56RzofdnGgi8SK2g","session_key":"f6OPiZnnwZmdabXpcniXiA=="}'),
	('x84-69ocXIVXkZ02fKjJGBIhu8refjvA', 1567941894, '{"cookie":{"originalMaxAge":86400000,"expires":"2019-09-08T11:24:54.188Z","httpOnly":true,"path":"/"},"openid":"ohBGq5bnNZ5f56RzofdnGgi8SK2g","session_key":"UC28uiym5oYhT87IbLYl0w=="}'),
	('xQdYkqJsmWfdVnVLcFdmCg2NGiqeGkJ1', 1567921773, '{"cookie":{"originalMaxAge":86400000,"expires":"2019-09-08T05:49:33.490Z","httpOnly":true,"path":"/"},"openid":"ohBGq5bnNZ5f56RzofdnGgi8SK2g","session_key":"faxS802PHp/dIGWIKGg66g=="}'),
	('xzAy64QV67cS6k8Wq_BfkPtwGCx6euiN', 1567920301, '{"cookie":{"originalMaxAge":86400000,"expires":"2019-09-08T05:25:00.872Z","httpOnly":true,"path":"/"},"openid":"ohBGq5bnNZ5f56RzofdnGgi8SK2g","session_key":"PEeYFmbULUF/jjTadmQo3w=="}'),
	('y-AILwQg6BfEbjVzfhIKXL2Hx6Gbh7GR', 1567958299, '{"cookie":{"originalMaxAge":86400000,"expires":"2019-09-08T15:58:19.499Z","httpOnly":true,"path":"/"},"openid":"ohBGq5bnNZ5f56RzofdnGgi8SK2g","session_key":"dtKRTzyZviOFzjPsM1UTTg=="}'),
	('yFiebeZ6N9qqlFHvJBAvwxwbmrVyU1Wx', 1567933908, '{"cookie":{"originalMaxAge":86400000,"expires":"2019-09-08T09:11:47.978Z","httpOnly":true,"path":"/"},"openid":"ohBGq5bnNZ5f56RzofdnGgi8SK2g","session_key":"KNJ8Tn4RPk+yFmXzUGxb3w=="}'),
	('ywJ5G0SvtQuYvjy3N1aXK4W2LFT9_Czz', 1567917428, '{"cookie":{"originalMaxAge":86400000,"expires":"2019-09-08T04:37:07.773Z","httpOnly":true,"path":"/"},"openid":"ohBGq5bnNZ5f56RzofdnGgi8SK2g","session_key":"r1p/d8DIDoQQIywNRfDWrg=="}'),
	('zIsohwEAQ2yOKEdl8HKqDGnZMEZQ5qY8', 1567933955, '{"cookie":{"originalMaxAge":86400000,"expires":"2019-09-08T09:12:35.068Z","httpOnly":true,"path":"/"},"openid":"ohBGq5bnNZ5f56RzofdnGgi8SK2g","session_key":"C2nC2WvRtZ8sUnHt9+bMXQ=="}'),
	('zciwG0Oj85DbUkp76kZ2rJwtFqEpVpgG', 1567926047, '{"cookie":{"originalMaxAge":86400000,"expires":"2019-09-08T07:00:47.144Z","httpOnly":true,"path":"/"},"openid":"ohBGq5bnNZ5f56RzofdnGgi8SK2g","session_key":"zITKoft1K4uMJw5Yo0+dCQ=="}'),
	('znEmu4s4c8tsjvk1uf_vRd9sc9qewY0L', 1567941208, '{"cookie":{"originalMaxAge":86400000,"expires":"2019-09-08T11:13:27.931Z","httpOnly":true,"path":"/"},"openid":"ohBGq5bnNZ5f56RzofdnGgi8SK2g","session_key":"5D84ddYcbf0yEAaMb+PePA=="}');
/*!40000 ALTER TABLE `sessions` ENABLE KEYS */;

-- 导出  表 db.user 结构
CREATE TABLE IF NOT EXISTS `user` (
  `uid` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `tel` char(50) NOT NULL COMMENT '手机号',
  `passwd` char(50) NOT NULL COMMENT '密码',
  `username` char(50) NOT NULL COMMENT '用户名',
  `regtime` char(50) DEFAULT NULL COMMENT '注册时间',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 COMMENT='用户表';

-- 正在导出表  db.user 的数据：~16 rows (大约)
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` (`uid`, `tel`, `passwd`, `username`, `regtime`) VALUES
	(1, '1', '1', '1', '2019-08-31 09:18:24'),
	(2, '2', '2', '2', NULL),
	(3, '3', '3', '3', '2019-8-31 10:01:32 AM'),
	(4, '4', '4', '4', '2019-8-31 10:56:37 AM'),
	(5, '4', '4', '4', '2019-8-31 10:56:52 AM'),
	(6, '5', '5', '5', '2019-8-31 11:26:30 AM'),
	(7, '8', '8', '8', '2019-9-2 12:48:59 PM'),
	(8, '1', '1', '1', '2019-9-7 4:12:06 PM'),
	(9, '2', '2', '2', '2019-9-7 4:20:05 PM'),
	(10, '3', '3', '3', '2019-9-7 4:24:10 PM'),
	(11, '4', '4', '4', '2019-9-7 4:26:18 PM'),
	(12, '11', '11', '11', '2019-9-7 6:04:14 PM'),
	(13, '22', '22', '22', '2019-9-7 6:12:08 PM'),
	(14, '33', '33', '33', '2019-9-7 6:28:20 PM'),
	(15, '33', '33', '33', '2019-9-7 6:31:34 PM'),
	(16, '7', '7', '7', '2019-9-7 7:49:03 PM'),
	(17, '11', '1', '1', '2019-9-7 11:15:18 PM'),
	(18, '2', '2', '2', '2019-9-7 11:44:42 PM'),
	(19, '6', '6', '6', '2019-9-7 11:59:43 PM'),
	(20, '8', '8', '8', '2019-9-8 12:39:53 AM');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;

-- 导出  表 db.wrbook 结构
CREATE TABLE IF NOT EXISTS `wrbook` (
  `wid` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `bid` int(11) NOT NULL COMMENT '书籍主键',
  `wrtime` datetime NOT NULL COMMENT '想读时间',
  PRIMARY KEY (`wid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='想读书籍';

-- 正在导出表  db.wrbook 的数据：~0 rows (大约)
/*!40000 ALTER TABLE `wrbook` DISABLE KEYS */;
/*!40000 ALTER TABLE `wrbook` ENABLE KEYS */;

-- 导出  表 db.wxuser 结构
CREATE TABLE IF NOT EXISTS `wxuser` (
  `wid` int(11) NOT NULL AUTO_INCREMENT,
  `nick` varchar(500) NOT NULL,
  `avatar` varchar(500) NOT NULL,
  `openid` varchar(50) NOT NULL,
  PRIMARY KEY (`wid`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- 正在导出表  db.wxuser 的数据：~0 rows (大约)
/*!40000 ALTER TABLE `wxuser` DISABLE KEYS */;
INSERT INTO `wxuser` (`wid`, `nick`, `avatar`, `openid`) VALUES
	(1, '小屁孩', 'https://wx.qlogo.cn/mmopen/vi_32/1rF0TWumjIKfJW2mice55aq7hBuDFEHlVxoSG3P82cjaiaTW8au7XXmIAiaP7fQfFq8QlniaRKEcrgaB2sXCebtPeQ/132', 'ohBGq5bnNZ5f56RzofdnGgi8SK2g'),
	(2, '小屁孩', 'https://wx.qlogo.cn/mmopen/vi_32/1rF0TWumjIKfJW2mice55aq7hBuDFEHlVxoSG3P82cjaiaTW8au7XXmIAiaP7fQfFq8QlniaRKEcrgaB2sXCebtPeQ/132', 'ohBGq5bnNZ5f56RzofdnGgi8SK2g'),
	(3, '小屁孩', 'https://wx.qlogo.cn/mmopen/vi_32/1rF0TWumjIKfJW2mice55aq7hBuDFEHlVxoSG3P82cjaiaTW8au7XXmIAiaP7fQfFq8QlniaRKEcrgaB2sXCebtPeQ/132', 'ohBGq5bnNZ5f56RzofdnGgi8SK2g'),
	(4, '小屁孩', 'https://wx.qlogo.cn/mmopen/vi_32/1rF0TWumjIKfJW2mice55aq7hBuDFEHlVxoSG3P82cjaiaTW8au7XXmIAiaP7fQfFq8QlniaRKEcrgaB2sXCebtPeQ/132', 'ohBGq5bnNZ5f56RzofdnGgi8SK2g'),
	(5, '小屁孩', 'https://wx.qlogo.cn/mmopen/vi_32/1rF0TWumjIKfJW2mice55aq7hBuDFEHlVxoSG3P82cjaiaTW8au7XXmIAiaP7fQfFq8QlniaRKEcrgaB2sXCebtPeQ/132', 'ohBGq5bnNZ5f56RzofdnGgi8SK2g'),
	(6, '小屁孩', 'https://wx.qlogo.cn/mmopen/vi_32/1rF0TWumjIKfJW2mice55aq7hBuDFEHlVxoSG3P82cjaiaTW8au7XXmIAiaP7fQfFq8QlniaRKEcrgaB2sXCebtPeQ/132', 'ohBGq5bnNZ5f56RzofdnGgi8SK2g'),
	(7, '小屁孩', 'https://wx.qlogo.cn/mmopen/vi_32/1rF0TWumjIKfJW2mice55aq7hBuDFEHlVxoSG3P82cjaiaTW8au7XXmIAiaP7fQfFq8QlniaRKEcrgaB2sXCebtPeQ/132', 'ohBGq5bnNZ5f56RzofdnGgi8SK2g'),
	(8, '小屁孩', 'https://wx.qlogo.cn/mmopen/vi_32/1rF0TWumjIKfJW2mice55aq7hBuDFEHlVxoSG3P82cjaiaTW8au7XXmIAiaP7fQfFq8QlniaRKEcrgaB2sXCebtPeQ/132', 'ohBGq5bnNZ5f56RzofdnGgi8SK2g'),
	(9, '小屁孩', 'https://wx.qlogo.cn/mmopen/vi_32/1rF0TWumjIKfJW2mice55aq7hBuDFEHlVxoSG3P82cjaiaTW8au7XXmIAiaP7fQfFq8QlniaRKEcrgaB2sXCebtPeQ/132', 'ohBGq5bnNZ5f56RzofdnGgi8SK2g'),
	(10, '小屁孩', 'https://wx.qlogo.cn/mmopen/vi_32/1rF0TWumjIKfJW2mice55aq7hBuDFEHlVxoSG3P82cjaiaTW8au7XXmIAiaP7fQfFq8QlniaRKEcrgaB2sXCebtPeQ/132', 'ohBGq5bnNZ5f56RzofdnGgi8SK2g'),
	(11, '小屁孩', 'https://wx.qlogo.cn/mmopen/vi_32/1rF0TWumjIKfJW2mice55aq7hBuDFEHlVxoSG3P82cjaiaTW8au7XXmIAiaP7fQfFq8QlniaRKEcrgaB2sXCebtPeQ/132', 'ohBGq5bnNZ5f56RzofdnGgi8SK2g'),
	(12, '小屁孩', 'https://wx.qlogo.cn/mmopen/vi_32/1rF0TWumjIKfJW2mice55aq7hBuDFEHlVxoSG3P82cjaiaTW8au7XXmIAiaP7fQfFq8QlniaRKEcrgaB2sXCebtPeQ/132', 'ohBGq5bnNZ5f56RzofdnGgi8SK2g'),
	(13, '小屁孩', 'https://wx.qlogo.cn/mmopen/vi_32/1rF0TWumjIKfJW2mice55aq7hBuDFEHlVxoSG3P82cjaiaTW8au7XXmIAiaP7fQfFq8QlniaRKEcrgaB2sXCebtPeQ/132', 'ohBGq5bnNZ5f56RzofdnGgi8SK2g'),
	(14, '小屁孩', 'https://wx.qlogo.cn/mmopen/vi_32/1rF0TWumjIKfJW2mice55aq7hBuDFEHlVxoSG3P82cjaiaTW8au7XXmIAiaP7fQfFq8QlniaRKEcrgaB2sXCebtPeQ/132', 'ohBGq5bnNZ5f56RzofdnGgi8SK2g');
/*!40000 ALTER TABLE `wxuser` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
