/*
 Navicat Premium Data Transfer

 Source Server         : aly
 Source Server Type    : MySQL
 Source Server Version : 80032
 Source Host           : 8.130.17.136:3306
 Source Schema         : yii22022

 Target Server Type    : MySQL
 Target Server Version : 80032
 File Encoding         : 65001

 Date: 14/02/2023 18:35:45
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for article
-- ----------------------------
DROP TABLE IF EXISTS `article`;
CREATE TABLE `article` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `description` text,
  `content` text,
  `date` date DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `viewed` int DEFAULT NULL,
  `created_by` int DEFAULT NULL,
  `status` int DEFAULT NULL,
  `category_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id` (`id`) USING BTREE,
  KEY `fk-article-user_id` (`created_by`),
  FULLTEXT KEY `title` (`title`,`description`),
  CONSTRAINT `article_ibfk_1` FOREIGN KEY (`created_by`) REFERENCES `user` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of article
-- ----------------------------
BEGIN;
INSERT INTO `article` (`id`, `title`, `description`, `content`, `date`, `image`, `viewed`, `created_by`, `status`, `category_id`) VALUES (6, '环球同此凉热——中国留学生抗疫日记', '<p>随着疫情在全球范围内的持续蔓延，140万留学海外的中国学子备受牵挂。</p>\r\n\r\n<p>近日，第一批为意大利、韩国、日本、法国、德国、美国、英国、俄罗斯等20个国家中国留学生准备的50多万份&ldquo;健康包&rdquo;已经配发到位；与此同时，多支医疗队、工作组专程前往海外为境外中国留学生提供科学专业的疫情防控指导&hellip;&hellip;</p>\r\n\r\n<p>疫情面前，祖国没有忘记每一个身在海外的留学生。</p>\r\n', '<p><strong>出行计划被打乱 宅生活成为主题</strong></p>\r\n\r\n<p>我原本制定了春假去加州的旅行计划，但随着加州成为美国疫情的重灾区，不得不取消期待已久的春假旅行。身边很多人也被迫放弃了出行计划，在家中度过春假的一周。餐厅、酒吧等公共娱乐场所被迫关闭，美国民众的娱乐活动、宗教活动、婚礼也都改为线上举行。三四月是美国总统大选在各州初选的日子，但很多州取消了聚集的票亭投票，改为线上通过邮件进行投票。</p>\r\n\r\n<p>三月末到四月初是华盛顿的樱花节，每年此时，樱花沿华盛顿国家公园一路争相绽放。在宪法大道、潮汐湖和国家广场，人们参加樱花节大游行，和家人朋友共赏樱花，休闲野餐。然而，今年的樱花节是另一番景象。空荡的大道和公园，只有零星跑步的人，缺少了观众的樱花开了又谢。为了安全考虑，我和朋友们也取消了初春踏青赏花的计划。华盛顿初春的樱花，也许只能明年再见了。</p>\r\n\r\n<p><strong>屯物资&ldquo;打持久战&rdquo; 留学生&ldquo;苦中作乐&rdquo;</strong></p>\r\n\r\n<p>为了减少与人的接触，我们的生活必需品一般通过超市定购，之后送货上门。美国的超市正常营业，但是货物时有短缺。因定购及外送需求过多，有些超市只会定时开放，而非全天。我们的订单经常因缺货而被替换或取消。亚马逊已经雇佣超过平时两倍的外送员以满足激增的外送需求。但总体来说，食品能够满足日常生活需求。&ldquo;中国超市&rdquo;也有大量存货，还能买到很多家乡的美味。疫情期间，卫生用品依旧短缺。早在疫情在美国爆发前夕，N95口罩就严重缺货，出现过在一些平台被炒到天价的现象。其他卫生用品诸如厨纸、厕纸、洗手液、消毒湿巾、消毒喷雾等，都存在大量缺口，数量不能满足人们激增的需求，至今无法正常购买。我们在早些时候囤了米、面、蛋、奶、冷冻蔬菜、冷冻水果、矿泉水、维生素等食品和日常用品，为抗疫的持久战做好了充分的准备。</p>\r\n\r\n<p>宅在家的生活虽然单一，但是留学生也&ldquo;苦中作乐&rdquo;。很多同学利用宅在家的时间发展起了爱好，有的变身&ldquo;大厨&rdquo;，有的变身&ldquo;线上美妆博主&rdquo;或&ldquo;线上自习博主&rdquo;，有的变身&ldquo;游戏王&rdquo;......学校的中国留学生会举办了线上歌手大赛、厨艺大赛等活动，帮助大家调剂单调的生活。</p>\r\n\r\n<p><strong>学校线上授课 师生共渡难关</strong></p>\r\n\r\n<p>美国很多州的学校都进行了停课封校，改为线上教学。近日，部分学校甚至考虑将停课延续到2021学年。约翰斯霍普金斯大学自3月11日起改为在线授课，春季学期毕业典礼也改为线上举行。</p>\r\n\r\n<p>为了帮助自我隔离的学生及出现轻微症状的学生更好地兼顾学习与身体健康，学院将打分制由曾经的字母制改为单一的通过/不通过。学校关闭了图书馆、自习室和研讨室、教师办公室，包括国际学生处和学生事业发展中心在内的重要学生工作办公室全部改为线上办公。学校原定的学术讲座、主题论坛、参观游览等一系列活动被迫取消或改为线上进行。</p>\r\n\r\n<p>对于病情诊断，学校也为学生提供了相应的医疗资源。如果在校学生感到不适或出现症状，可以联系学校医院与福利中心进行预约和诊断，医保将报销检测费用。我们担心疫情会持续太久，学习和实习会受影响，留学签证或受限制。但是校长发了很暖心的邮件，感谢全体教师和学生在疫情中体现的毅力、团结和配合，并向大家通报学校医学团队对于疫情检测、试剂研发、免疫及特效药研究等工作的进展，为大家加油打气，鼓励我们继续坚持，共渡难关。</p>\r\n\r\n<p><strong>收到健康包 祖国是最坚强的后盾</strong></p>\r\n\r\n<p>这场与疫情的抗争中，我们不是孤军奋战。3月18日，中国驻美大使崔天凯与在美留学生代表谈心。崔大使回答了留学生代表关心的问题，就疫情期间留学生是否选择回国给出了建议。他表示，如果真的发现有哪一位同学新冠测出来是阳性，请马上跟使馆或总领馆联系，同时到当地医院去就医。崔大使给予留学生们信心，表示使馆会不遗余力保护留学生的生命安全和身体健康，并鼓励留学生们将来挑起祖国发展建设的重担。在抗疫期间，崔大使的谈话无疑为在美留学生们提供了一颗定心丸，之前对于疫情的茫然与恐惧都随之消解了大半。</p>\r\n\r\n<p>四月初，国家向海外留学人员调配50万份&ldquo;健康包&rdquo;。中国驻美大使馆及领馆通过各学校的中国留学生会，为在校留学生发放抗疫物资，与广大留学人员共克时艰。四月中旬，我和周边公寓的同学陆续收到了来自祖国的健康包，感受到来自祖国的温暖。不仅仅是美国，我在世界各地的留学生朋友也都收到了这份来自祖国的温暖。</p>\r\n\r\n<p>祖国是我们最坚强的后盾，也是我们最强大的底气。不论何时，我们都会记得，祖国与我们同在。我们期待着疫情早点过去，期待世界早日回归正轨。</p>\r\n', '2020-06-07', 'a686cd4e8f29b3c35d6bdbf75a364c5f.jpg', 11, 2, 1, 1);
INSERT INTO `article` (`id`, `title`, `description`, `content`, `date`, `image`, `viewed`, `created_by`, `status`, `category_id`) VALUES (7, '武汉环卫工高上元的抗疫日记——“我只是做了应该做的事”', '<p>戴着一顶棕色鸭舌帽，身穿橙色工作服，骑着一辆电动清洁三轮车。最近，在武汉市武昌区友谊大道，负责这里清洁的环卫工人高上元又回来了。两个多月前，他每天在武昌方舱医院的病区做保洁、消毒和垃圾清运。</p>\r\n\r\n<p>高上元今年53岁，是武汉市城管委二桥清洁队的环卫工人，在方舱医院的34天里，平时习惯写工作记录的他，用日记记录下了自己参与抗疫的点滴。</p>\r\n', '<p><strong>&ldquo;很荣幸成为一名方舱志愿者&rdquo;</strong></p>\r\n\r\n<p>2月6日上午，高上元在工作调度群看到通知：洪山体育馆方舱医院需要志愿者做保洁。&ldquo;收到！&rdquo;高上元第一时间报名。</p>\r\n\r\n<p>&ldquo;今天上午10点，接到队长的电话通知，下午5点在队里集合，前往方舱医院，很荣幸成为一名方舱志愿者，终于可以为抗击疫情做点自己力所能及的事情，心情有点小激动。&rdquo;</p>\r\n\r\n<p>在当天的日记里，高上元写了这么一段话。可是激动归激动，凌晨两点，高上元进入方舱医院后就有些惊讶：&ldquo;这里从2月5日开始收治患者，由于缺少保洁，地上很多垃圾。&rdquo;</p>\r\n\r\n<p>为了保证垃圾无害化处理更方便，不污染医院外场的环境，高上元在清扫时更加小心。到第二天上午7点，高上元和清洁队才完成两个病区的清洁。</p>\r\n\r\n<p>&ldquo;今天工作比前两天顺手了很多，但还是觉得好累。身上被防护服裹得严严实实，一动就出汗，呼出的气把防护镜也弄糊了，看不清前面的路，防护服里面的衣服也全部湿透了。&rdquo;</p>\r\n\r\n<p>2月8日，进入方舱医院第三天，高上元写了抗击疫情过程的艰辛。&ldquo;我们每天工作结束后，衣服可以拧出水，这一点都不夸张。&rdquo;高上元说，他有腰间盘突出、糖尿病、肩周炎等疾病，每天多次弯腰、抬手，身体有时也吃不消。</p>\r\n\r\n<p>熟悉了方舱医院的清洁环境，高上元也慢慢总结出一些工作技巧。他请医护人员在发药的时候，给每名需要的患者提供一个垃圾袋。&ldquo;患者将自己的生活垃圾打包好，我们直接去提，这样就能节省清扫的时间。患者很配合我们的工作，能得到患者的理解，我就觉得自己做的事情有价值。&rdquo;高上元说。</p>\r\n\r\n<p><strong>&ldquo;在一线奉献自己微薄的力量&rdquo;</strong></p>\r\n\r\n<p>在报名进入方舱医院前，高上元并没有告诉儿子，直到2月9日，他发自己在方舱医院里的朋友圈，才被儿子知晓。</p>\r\n\r\n<p>&ldquo;儿子今天给我打来电话，我没接。等我给他回过去的时候，这小子竟然在电话那头哭了起来。他怕我出事，埋怨我不该瞒着他偷偷来当志愿者，他说他也想来当志愿者，父子俩在一起有个照应。&rdquo;</p>\r\n\r\n<p>2月11日，高上元在日记写道，为了让儿子放心，他保证每天给儿子报平安。高上元说，那段时间，他每天会在晚上10点左右与儿子视频通话。&ldquo;2009年妻子因车祸去世之后，我就独自一人把10岁的儿子拉扯大，现在我们的感情很好。&rdquo;谈到现在已经工作的儿子，高上元倍感欣慰。</p>\r\n\r\n<p>在方舱医院的日子里，高上元每天牵挂着儿子，也经常会想起去世的妻子。每当想起她时，高上元就把思念写在日记里：</p>\r\n\r\n<p>&ldquo;此时此刻，我很想念老婆。&rdquo;</p>\r\n\r\n<p>&ldquo;老婆，今天你离开我和孩子整整11年了，在梦里总想看看你，你还好吗？孩子长得比我还高，也很乖，很听话，很懂事。我们有那么多的不舍，现在只能在回忆中想念你的模样，想念曾经我们美好的日子。&rdquo;</p>\r\n\r\n<p>&ldquo;今年武汉的疫情很严峻，我身体很好，现在在一线奉献自己微薄的力量。&rdquo;&hellip;&hellip;</p>\r\n\r\n<p><strong>&ldquo;这些奖励不是我一个人的&rdquo;</strong></p>\r\n\r\n<p>2月20日，在阿里巴巴天天正能量评选活动中，高上元获得&ldquo;战疫英雄奖&rdquo;，并得到奖励1万元。知道消息后，高上元在日记里写下：&ldquo;我只是做了应该做的事。&rdquo;</p>\r\n\r\n<p>谈起一些荣誉，高上元说，能作为清洁队员的代表领取荣誉，很受鼓舞，&ldquo;这些奖励不是我一个人的，是所有清洁队员共同努力的结果。&rdquo;</p>\r\n\r\n<p>其实，高上元一个月的工资也只有2000多元。妻子去世后，除了儿子，高上元还要照顾母亲。他就和单位请求，每天多上半个班，这样每个月能多拿些工资。</p>\r\n\r\n<p>从那时起，高上元每天清晨4点就开始上班，下午5点下班，每周休息一天。虽然辛苦，但是高上元很乐观：&ldquo;我已经习惯了，靠自己的双手踏实工作，我现在也挺满足的。&rdquo;</p>\r\n\r\n<p>3月14日，结束方舱医院的工作后，高上元在隔离宾馆收到了辽宁支援湖北医疗队队员王海旭医生的微信：&ldquo;在我看来，不管是医护人员，还是保洁等保障人员，只要在抗疫一线，我们都是战友，只是分工不同。&rdquo;</p>\r\n\r\n<p>&ldquo;我当时感到很意外。&rdquo;高上元说，这表明自己抗击疫情做的工作得到了大家的认可。回完消息后，高上元又开始写当天的日记：&ldquo;回想起与方舱医院里的医护人员们一起并肩作战的日子，都是那么有意义，很感谢这些支援我们武汉的医护人员，他们是真正的英雄。&rdquo;</p>\r\n', '2020-06-07', '1e9b603769abced9924c1c3d7dfaf316.jpg', 1, 2, 1, 1);
COMMIT;

-- ----------------------------
-- Table structure for article_tag
-- ----------------------------
DROP TABLE IF EXISTS `article_tag`;
CREATE TABLE `article_tag` (
  `id` int NOT NULL AUTO_INCREMENT,
  `article_id` int DEFAULT NULL,
  `tag_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `tag_article_article_id` (`article_id`),
  KEY `idx_tag_id` (`tag_id`),
  CONSTRAINT `article_tag_ibfk_1` FOREIGN KEY (`tag_id`) REFERENCES `tag` (`id`) ON DELETE CASCADE,
  CONSTRAINT `article_tag_ibfk_2` FOREIGN KEY (`article_id`) REFERENCES `article` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of article_tag
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for category
-- ----------------------------
DROP TABLE IF EXISTS `category`;
CREATE TABLE `category` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of category
-- ----------------------------
BEGIN;
INSERT INTO `category` (`id`, `title`) VALUES (1, '抗疫日记');
COMMIT;

-- ----------------------------
-- Table structure for comment
-- ----------------------------
DROP TABLE IF EXISTS `comment`;
CREATE TABLE `comment` (
  `id` int NOT NULL AUTO_INCREMENT,
  `text` varchar(255) DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  `article_id` int DEFAULT NULL,
  `status` int DEFAULT NULL,
  `date` date DEFAULT NULL,
  `video_id` varchar(16) DEFAULT 'null',
  `password` varchar(20) DEFAULT 'pass123',
  PRIMARY KEY (`id`),
  KEY `idx-post-user_id` (`user_id`),
  KEY `idx-article_id` (`article_id`),
  CONSTRAINT `comment_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of comment
-- ----------------------------
BEGIN;
INSERT INTO `comment` (`id`, `text`, `user_id`, `article_id`, `status`, `date`, `video_id`, `password`) VALUES (1, 'lol', 2, 2, 1, '2020-05-09', 'null', 'pass123');
INSERT INTO `comment` (`id`, `text`, `user_id`, `article_id`, `status`, `date`, `video_id`, `password`) VALUES (2, 'soom', 2, 2, 1, '2020-05-09', NULL, 'pass123');
INSERT INTO `comment` (`id`, `text`, `user_id`, `article_id`, `status`, `date`, `video_id`, `password`) VALUES (4, 'hello\r\n', 2, 2, 1, '2020-05-09', NULL, 'pass123');
INSERT INTO `comment` (`id`, `text`, `user_id`, `article_id`, `status`, `date`, `video_id`, `password`) VALUES (5, 'hello', 2, NULL, 1, '2020-05-09', NULL, 'pass123');
INSERT INTO `comment` (`id`, `text`, `user_id`, `article_id`, `status`, `date`, `video_id`, `password`) VALUES (6, 'a', 2, 2, 1, '2020-05-09', 'null', 'pass123');
INSERT INTO `comment` (`id`, `text`, `user_id`, `article_id`, `status`, `date`, `video_id`, `password`) VALUES (7, 'lala', 2, 2, 1, '2020-05-09', 'null', 'pass123');
INSERT INTO `comment` (`id`, `text`, `user_id`, `article_id`, `status`, `date`, `video_id`, `password`) VALUES (8, 'kk', 4, 2, 1, '2020-05-09', 'null', 'pass123');
INSERT INTO `comment` (`id`, `text`, `user_id`, `article_id`, `status`, `date`, `video_id`, `password`) VALUES (13, 'kk', 2, 0, 1, '2020-05-09', 'ECR47F1S', 'pass123');
INSERT INTO `comment` (`id`, `text`, `user_id`, `article_id`, `status`, `date`, `video_id`, `password`) VALUES (14, 'video', 2, 0, 1, '2020-05-09', 'ECR47F1S', 'pass123');
INSERT INTO `comment` (`id`, `text`, `user_id`, `article_id`, `status`, `date`, `video_id`, `password`) VALUES (15, 'videoagin', 2, NULL, 1, '2020-05-09', 'ECR47F1S', 'pass123');
INSERT INTO `comment` (`id`, `text`, `user_id`, `article_id`, `status`, `date`, `video_id`, `password`) VALUES (16, 'testing testing', 6, 3, 1, '2020-06-01', 'null', 'pass123');
INSERT INTO `comment` (`id`, `text`, `user_id`, `article_id`, `status`, `date`, `video_id`, `password`) VALUES (17, 'I\'ll be sure to be avoiding camels, bats, and pangolins and blow torch my steak and eggs in the morning.', 2, NULL, 1, '2020-06-07', 'PAnKGl9G', 'pass123');
INSERT INTO `comment` (`id`, `text`, `user_id`, `article_id`, `status`, `date`, `video_id`, `password`) VALUES (18, '加油', 2, 6, 1, '2020-06-07', 'null', 'pass123');
COMMIT;

-- ----------------------------
-- Table structure for contact_form
-- ----------------------------
DROP TABLE IF EXISTS `contact_form`;
CREATE TABLE `contact_form` (
  `id` int NOT NULL AUTO_INCREMENT,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `sex` tinyint(1) DEFAULT NULL,
  `wechatid` varchar(50) NOT NULL,
  `phone` varchar(50) DEFAULT NULL,
  `message` varchar(255) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of contact_form
-- ----------------------------
BEGIN;
INSERT INTO `contact_form` (`id`, `firstname`, `lastname`, `sex`, `wechatid`, `phone`, `message`) VALUES (12, 'Tony', 'Stark', 1, 'iamironman', '159876-546-64', 'I think your web page is pretty good.');
INSERT INTO `contact_form` (`id`, `firstname`, `lastname`, `sex`, `wechatid`, `phone`, `message`) VALUES (13, 'Tony', 'Stark', 1, 'iamironman', '159876-546-64', 'I think your web page is pretty good.');
INSERT INTO `contact_form` (`id`, `firstname`, `lastname`, `sex`, `wechatid`, `phone`, `message`) VALUES (14, 'Steve', 'Rogers', 1, 'america', '157952-32468', 'Good job!');
COMMIT;

-- ----------------------------
-- Table structure for country
-- ----------------------------
DROP TABLE IF EXISTS `country`;
CREATE TABLE `country` (
  `code` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  PRIMARY KEY (`code`),
  UNIQUE KEY `country_code_idx` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- ----------------------------
-- Records of country
-- ----------------------------
BEGIN;
INSERT INTO `country` (`code`, `name`) VALUES ('AD', 'Andorra');
INSERT INTO `country` (`code`, `name`) VALUES ('AE', 'United Arab Emirates');
INSERT INTO `country` (`code`, `name`) VALUES ('AF', 'Afghanistan');
INSERT INTO `country` (`code`, `name`) VALUES ('AG', 'Antigua and Barbuda');
INSERT INTO `country` (`code`, `name`) VALUES ('AI', 'Anguilla');
INSERT INTO `country` (`code`, `name`) VALUES ('AL', 'Albania');
INSERT INTO `country` (`code`, `name`) VALUES ('AM', 'Armenia');
INSERT INTO `country` (`code`, `name`) VALUES ('AO', 'Angola');
INSERT INTO `country` (`code`, `name`) VALUES ('AQ', 'Antarctica');
INSERT INTO `country` (`code`, `name`) VALUES ('AR', 'Argentina');
INSERT INTO `country` (`code`, `name`) VALUES ('AS', 'American Samoa');
INSERT INTO `country` (`code`, `name`) VALUES ('AT', 'Austria');
INSERT INTO `country` (`code`, `name`) VALUES ('AU', 'Australia');
INSERT INTO `country` (`code`, `name`) VALUES ('AW', 'Aruba');
INSERT INTO `country` (`code`, `name`) VALUES ('AX', 'Åland Islands');
INSERT INTO `country` (`code`, `name`) VALUES ('AZ', 'Azerbaijan');
INSERT INTO `country` (`code`, `name`) VALUES ('BA', 'Bosnia and Herzegovina');
INSERT INTO `country` (`code`, `name`) VALUES ('BB', 'Barbados');
INSERT INTO `country` (`code`, `name`) VALUES ('BD', 'Bangladesh');
INSERT INTO `country` (`code`, `name`) VALUES ('BE', 'Belgium');
INSERT INTO `country` (`code`, `name`) VALUES ('BF', 'Burkina Faso');
INSERT INTO `country` (`code`, `name`) VALUES ('BG', 'Bulgaria');
INSERT INTO `country` (`code`, `name`) VALUES ('BH', 'Bahrain');
INSERT INTO `country` (`code`, `name`) VALUES ('BI', 'Burundi');
INSERT INTO `country` (`code`, `name`) VALUES ('BJ', 'Benin');
INSERT INTO `country` (`code`, `name`) VALUES ('BL', 'Saint Barthélemy');
INSERT INTO `country` (`code`, `name`) VALUES ('BM', 'Bermuda');
INSERT INTO `country` (`code`, `name`) VALUES ('BN', 'Brunei Darussalam');
INSERT INTO `country` (`code`, `name`) VALUES ('BO', 'Bolivia (Plurinational State of)');
INSERT INTO `country` (`code`, `name`) VALUES ('BQ', 'Bonaire - Sint Eustatius and Saba');
INSERT INTO `country` (`code`, `name`) VALUES ('BR', 'Brazil');
INSERT INTO `country` (`code`, `name`) VALUES ('BS', 'Bahamas');
INSERT INTO `country` (`code`, `name`) VALUES ('BT', 'Bhutan');
INSERT INTO `country` (`code`, `name`) VALUES ('BV', 'Bouvet Island');
INSERT INTO `country` (`code`, `name`) VALUES ('BW', 'Botswana');
INSERT INTO `country` (`code`, `name`) VALUES ('BY', 'Belarus');
INSERT INTO `country` (`code`, `name`) VALUES ('BZ', 'Belize');
INSERT INTO `country` (`code`, `name`) VALUES ('CA', 'Canada');
INSERT INTO `country` (`code`, `name`) VALUES ('CC', 'Cocos (Keeling) Islands');
INSERT INTO `country` (`code`, `name`) VALUES ('CD', 'Democratic Republic of the Congo');
INSERT INTO `country` (`code`, `name`) VALUES ('CF', 'Central African Republic');
INSERT INTO `country` (`code`, `name`) VALUES ('CG', 'Congo');
INSERT INTO `country` (`code`, `name`) VALUES ('CH', 'Switzerland');
INSERT INTO `country` (`code`, `name`) VALUES ('CI', 'Côte d\'Ivoire');
INSERT INTO `country` (`code`, `name`) VALUES ('CK', 'Cook Islands');
INSERT INTO `country` (`code`, `name`) VALUES ('CL', 'Chile');
INSERT INTO `country` (`code`, `name`) VALUES ('CM', 'Cameroon');
INSERT INTO `country` (`code`, `name`) VALUES ('CN', 'China');
INSERT INTO `country` (`code`, `name`) VALUES ('CO', 'Colombia');
INSERT INTO `country` (`code`, `name`) VALUES ('CR', 'Costa Rica');
INSERT INTO `country` (`code`, `name`) VALUES ('CU', 'Cuba');
INSERT INTO `country` (`code`, `name`) VALUES ('CV', 'Cabo Verde');
INSERT INTO `country` (`code`, `name`) VALUES ('CW', 'Curaçao');
INSERT INTO `country` (`code`, `name`) VALUES ('CX', 'Christmas Island');
INSERT INTO `country` (`code`, `name`) VALUES ('CY', 'Cyprus');
INSERT INTO `country` (`code`, `name`) VALUES ('CZ', 'Czechia');
INSERT INTO `country` (`code`, `name`) VALUES ('DE', 'Germany');
INSERT INTO `country` (`code`, `name`) VALUES ('DJ', 'Djibouti');
INSERT INTO `country` (`code`, `name`) VALUES ('DK', 'Denmark');
INSERT INTO `country` (`code`, `name`) VALUES ('DM', 'Dominica');
INSERT INTO `country` (`code`, `name`) VALUES ('DO', 'Dominican Republic');
INSERT INTO `country` (`code`, `name`) VALUES ('DZ', 'Algeria');
INSERT INTO `country` (`code`, `name`) VALUES ('EC', 'Ecuador');
INSERT INTO `country` (`code`, `name`) VALUES ('EE', 'Estonia');
INSERT INTO `country` (`code`, `name`) VALUES ('EG', 'Egypt');
INSERT INTO `country` (`code`, `name`) VALUES ('EH', 'Western Sahara');
INSERT INTO `country` (`code`, `name`) VALUES ('ER', 'Eritrea');
INSERT INTO `country` (`code`, `name`) VALUES ('ES', 'Spain');
INSERT INTO `country` (`code`, `name`) VALUES ('ET', 'Ethiopia');
INSERT INTO `country` (`code`, `name`) VALUES ('FI', 'Finland');
INSERT INTO `country` (`code`, `name`) VALUES ('FJ', 'Fiji');
INSERT INTO `country` (`code`, `name`) VALUES ('FK', 'Falkland Islands (Malvinas)');
INSERT INTO `country` (`code`, `name`) VALUES ('FM', 'Micronesia (Federated States of)');
INSERT INTO `country` (`code`, `name`) VALUES ('FO', 'Faroe Islands');
INSERT INTO `country` (`code`, `name`) VALUES ('FR', 'France');
INSERT INTO `country` (`code`, `name`) VALUES ('GA', 'Gabon');
INSERT INTO `country` (`code`, `name`) VALUES ('GB', 'United Kingdom of Great Britain and Northern Ireland');
INSERT INTO `country` (`code`, `name`) VALUES ('GD', 'Grenada');
INSERT INTO `country` (`code`, `name`) VALUES ('GE', 'Georgia');
INSERT INTO `country` (`code`, `name`) VALUES ('GF', 'French Guiana');
INSERT INTO `country` (`code`, `name`) VALUES ('GG', 'Guernsey');
INSERT INTO `country` (`code`, `name`) VALUES ('GH', 'Ghana');
INSERT INTO `country` (`code`, `name`) VALUES ('GI', 'Gibraltar');
INSERT INTO `country` (`code`, `name`) VALUES ('GL', 'Greenland');
INSERT INTO `country` (`code`, `name`) VALUES ('GM', 'Gambia');
INSERT INTO `country` (`code`, `name`) VALUES ('GN', 'Guinea');
INSERT INTO `country` (`code`, `name`) VALUES ('GP', 'Guadeloupe');
INSERT INTO `country` (`code`, `name`) VALUES ('GQ', 'Equatorial Guinea');
INSERT INTO `country` (`code`, `name`) VALUES ('GR', 'Greece');
INSERT INTO `country` (`code`, `name`) VALUES ('GS', 'South Georgia and the South Sandwich Islands');
INSERT INTO `country` (`code`, `name`) VALUES ('GT', 'Guatemala');
INSERT INTO `country` (`code`, `name`) VALUES ('GU', 'Guam');
INSERT INTO `country` (`code`, `name`) VALUES ('GW', 'Guinea-Bissau');
INSERT INTO `country` (`code`, `name`) VALUES ('GY', 'Guyana');
INSERT INTO `country` (`code`, `name`) VALUES ('HK', 'China - Hong Kong Special Administrative Region');
INSERT INTO `country` (`code`, `name`) VALUES ('HM', 'Heard Island and McDonald Islands');
INSERT INTO `country` (`code`, `name`) VALUES ('HN', 'Honduras');
INSERT INTO `country` (`code`, `name`) VALUES ('HR', 'Croatia');
INSERT INTO `country` (`code`, `name`) VALUES ('HT', 'Haiti');
INSERT INTO `country` (`code`, `name`) VALUES ('HU', 'Hungary');
INSERT INTO `country` (`code`, `name`) VALUES ('ID', 'Indonesia');
INSERT INTO `country` (`code`, `name`) VALUES ('IE', 'Ireland');
INSERT INTO `country` (`code`, `name`) VALUES ('IL', 'Israel');
INSERT INTO `country` (`code`, `name`) VALUES ('IM', 'Isle of Man');
INSERT INTO `country` (`code`, `name`) VALUES ('IN', 'India');
INSERT INTO `country` (`code`, `name`) VALUES ('IO', 'British Indian Ocean Territory');
INSERT INTO `country` (`code`, `name`) VALUES ('IQ', 'Iraq');
INSERT INTO `country` (`code`, `name`) VALUES ('IR', 'Iran (Islamic Republic of)');
INSERT INTO `country` (`code`, `name`) VALUES ('IS', 'Iceland');
INSERT INTO `country` (`code`, `name`) VALUES ('IT', 'Italy');
INSERT INTO `country` (`code`, `name`) VALUES ('JE', 'Jersey');
INSERT INTO `country` (`code`, `name`) VALUES ('JM', 'Jamaica');
INSERT INTO `country` (`code`, `name`) VALUES ('JO', 'Jordan');
INSERT INTO `country` (`code`, `name`) VALUES ('JP', 'Japan');
INSERT INTO `country` (`code`, `name`) VALUES ('KE', 'Kenya');
INSERT INTO `country` (`code`, `name`) VALUES ('KG', 'Kyrgyzstan');
INSERT INTO `country` (`code`, `name`) VALUES ('KH', 'Cambodia');
INSERT INTO `country` (`code`, `name`) VALUES ('KI', 'Kiribati');
INSERT INTO `country` (`code`, `name`) VALUES ('KM', 'Comoros');
INSERT INTO `country` (`code`, `name`) VALUES ('KN', 'Saint Kitts and Nevis');
INSERT INTO `country` (`code`, `name`) VALUES ('KP', 'Democratic People\'s Republic of Korea');
INSERT INTO `country` (`code`, `name`) VALUES ('KR', 'Republic of Korea');
INSERT INTO `country` (`code`, `name`) VALUES ('KW', 'Kuwait');
INSERT INTO `country` (`code`, `name`) VALUES ('KY', 'Cayman Islands');
INSERT INTO `country` (`code`, `name`) VALUES ('KZ', 'Kazakhstan');
INSERT INTO `country` (`code`, `name`) VALUES ('LA', 'Lao People\'s Democratic Republic');
INSERT INTO `country` (`code`, `name`) VALUES ('LB', 'Lebanon');
INSERT INTO `country` (`code`, `name`) VALUES ('LC', 'Saint Lucia');
INSERT INTO `country` (`code`, `name`) VALUES ('LI', 'Liechtenstein');
INSERT INTO `country` (`code`, `name`) VALUES ('LK', 'Sri Lanka');
INSERT INTO `country` (`code`, `name`) VALUES ('LR', 'Liberia');
INSERT INTO `country` (`code`, `name`) VALUES ('LS', 'Lesotho');
INSERT INTO `country` (`code`, `name`) VALUES ('LT', 'Lithuania');
INSERT INTO `country` (`code`, `name`) VALUES ('LU', 'Luxembourg');
INSERT INTO `country` (`code`, `name`) VALUES ('LV', 'Latvia');
INSERT INTO `country` (`code`, `name`) VALUES ('LY', 'Libya');
INSERT INTO `country` (`code`, `name`) VALUES ('MA', 'Morocco');
INSERT INTO `country` (`code`, `name`) VALUES ('MC', 'Monaco');
INSERT INTO `country` (`code`, `name`) VALUES ('MD', 'Republic of Moldova');
INSERT INTO `country` (`code`, `name`) VALUES ('ME', 'Montenegro');
INSERT INTO `country` (`code`, `name`) VALUES ('MF', 'Saint Martin (French Part)');
INSERT INTO `country` (`code`, `name`) VALUES ('MG', 'Madagascar');
INSERT INTO `country` (`code`, `name`) VALUES ('MH', 'Marshall Islands');
INSERT INTO `country` (`code`, `name`) VALUES ('MK', 'The former Yugoslav Republic of Macedonia');
INSERT INTO `country` (`code`, `name`) VALUES ('ML', 'Mali');
INSERT INTO `country` (`code`, `name`) VALUES ('MM', 'Myanmar');
INSERT INTO `country` (`code`, `name`) VALUES ('MN', 'Mongolia');
INSERT INTO `country` (`code`, `name`) VALUES ('MO', 'China - Macao Special Administrative Region');
INSERT INTO `country` (`code`, `name`) VALUES ('MP', 'Northern Mariana Islands');
INSERT INTO `country` (`code`, `name`) VALUES ('MQ', 'Martinique');
INSERT INTO `country` (`code`, `name`) VALUES ('MR', 'Mauritania');
INSERT INTO `country` (`code`, `name`) VALUES ('MS', 'Montserrat');
INSERT INTO `country` (`code`, `name`) VALUES ('MT', 'Malta');
INSERT INTO `country` (`code`, `name`) VALUES ('MU', 'Mauritius');
INSERT INTO `country` (`code`, `name`) VALUES ('MV', 'Maldives');
INSERT INTO `country` (`code`, `name`) VALUES ('MW', 'Malawi');
INSERT INTO `country` (`code`, `name`) VALUES ('MX', 'Mexico');
INSERT INTO `country` (`code`, `name`) VALUES ('MY', 'Malaysia');
INSERT INTO `country` (`code`, `name`) VALUES ('MZ', 'Mozambique');
INSERT INTO `country` (`code`, `name`) VALUES ('NA', 'Namibia');
INSERT INTO `country` (`code`, `name`) VALUES ('NC', 'New Caledonia');
INSERT INTO `country` (`code`, `name`) VALUES ('NE', 'Niger');
INSERT INTO `country` (`code`, `name`) VALUES ('NF', 'Norfolk Island');
INSERT INTO `country` (`code`, `name`) VALUES ('NG', 'Nigeria');
INSERT INTO `country` (`code`, `name`) VALUES ('NI', 'Nicaragua');
INSERT INTO `country` (`code`, `name`) VALUES ('NL', 'Netherlands');
INSERT INTO `country` (`code`, `name`) VALUES ('NO', 'Norway');
INSERT INTO `country` (`code`, `name`) VALUES ('NP', 'Nepal');
INSERT INTO `country` (`code`, `name`) VALUES ('NR', 'Nauru');
INSERT INTO `country` (`code`, `name`) VALUES ('NU', 'Niue');
INSERT INTO `country` (`code`, `name`) VALUES ('NZ', 'New Zealand');
INSERT INTO `country` (`code`, `name`) VALUES ('OM', 'Oman');
INSERT INTO `country` (`code`, `name`) VALUES ('PA', 'Panama');
INSERT INTO `country` (`code`, `name`) VALUES ('PE', 'Peru');
INSERT INTO `country` (`code`, `name`) VALUES ('PF', 'French Polynesia');
INSERT INTO `country` (`code`, `name`) VALUES ('PG', 'Papua New Guinea');
INSERT INTO `country` (`code`, `name`) VALUES ('PH', 'Philippines');
INSERT INTO `country` (`code`, `name`) VALUES ('PK', 'Pakistan');
INSERT INTO `country` (`code`, `name`) VALUES ('PL', 'Poland');
INSERT INTO `country` (`code`, `name`) VALUES ('PM', 'Saint Pierre and Miquelon');
INSERT INTO `country` (`code`, `name`) VALUES ('PN', 'Pitcairn');
INSERT INTO `country` (`code`, `name`) VALUES ('PR', 'Puerto Rico');
INSERT INTO `country` (`code`, `name`) VALUES ('PS', 'State of Palestine');
INSERT INTO `country` (`code`, `name`) VALUES ('PT', 'Portugal');
INSERT INTO `country` (`code`, `name`) VALUES ('PW', 'Palau');
INSERT INTO `country` (`code`, `name`) VALUES ('PY', 'Paraguay');
INSERT INTO `country` (`code`, `name`) VALUES ('QA', 'Qatar');
INSERT INTO `country` (`code`, `name`) VALUES ('RE', 'Réunion');
INSERT INTO `country` (`code`, `name`) VALUES ('RO', 'Romania');
INSERT INTO `country` (`code`, `name`) VALUES ('RS', 'Serbia');
INSERT INTO `country` (`code`, `name`) VALUES ('RU', 'Russian Federation');
INSERT INTO `country` (`code`, `name`) VALUES ('RW', 'Rwanda');
INSERT INTO `country` (`code`, `name`) VALUES ('SA', 'Saudi Arabia');
INSERT INTO `country` (`code`, `name`) VALUES ('SB', 'Solomon Islands');
INSERT INTO `country` (`code`, `name`) VALUES ('SC', 'Seychelles');
INSERT INTO `country` (`code`, `name`) VALUES ('SD', 'Sudan');
INSERT INTO `country` (`code`, `name`) VALUES ('SE', 'Sweden');
INSERT INTO `country` (`code`, `name`) VALUES ('SG', 'Singapore');
INSERT INTO `country` (`code`, `name`) VALUES ('SH', 'Saint Helena');
INSERT INTO `country` (`code`, `name`) VALUES ('SI', 'Slovenia');
INSERT INTO `country` (`code`, `name`) VALUES ('SJ', 'Svalbard and Jan Mayen Islands');
INSERT INTO `country` (`code`, `name`) VALUES ('SK', 'Slovakia');
INSERT INTO `country` (`code`, `name`) VALUES ('SL', 'Sierra Leone');
INSERT INTO `country` (`code`, `name`) VALUES ('SM', 'San Marino');
INSERT INTO `country` (`code`, `name`) VALUES ('SN', 'Senegal');
INSERT INTO `country` (`code`, `name`) VALUES ('SO', 'Somalia');
INSERT INTO `country` (`code`, `name`) VALUES ('SR', 'Suriname');
INSERT INTO `country` (`code`, `name`) VALUES ('SS', 'South Sudan');
INSERT INTO `country` (`code`, `name`) VALUES ('ST', 'Sao Tome and Principe');
INSERT INTO `country` (`code`, `name`) VALUES ('SV', 'El Salvador');
INSERT INTO `country` (`code`, `name`) VALUES ('SX', 'Sint Maarten (Dutch part)');
INSERT INTO `country` (`code`, `name`) VALUES ('SY', 'Syrian Arab Republic');
INSERT INTO `country` (`code`, `name`) VALUES ('SZ', 'Swaziland');
INSERT INTO `country` (`code`, `name`) VALUES ('TC', 'Turks and Caicos Islands');
INSERT INTO `country` (`code`, `name`) VALUES ('TD', 'Chad');
INSERT INTO `country` (`code`, `name`) VALUES ('TF', 'French Southern Territories');
INSERT INTO `country` (`code`, `name`) VALUES ('TG', 'Togo');
INSERT INTO `country` (`code`, `name`) VALUES ('TH', 'Thailand');
INSERT INTO `country` (`code`, `name`) VALUES ('TJ', 'Tajikistan');
INSERT INTO `country` (`code`, `name`) VALUES ('TK', 'Tokelau');
INSERT INTO `country` (`code`, `name`) VALUES ('TL', 'Timor-Leste');
INSERT INTO `country` (`code`, `name`) VALUES ('TM', 'Turkmenistan');
INSERT INTO `country` (`code`, `name`) VALUES ('TN', 'Tunisia');
INSERT INTO `country` (`code`, `name`) VALUES ('TO', 'Tonga');
INSERT INTO `country` (`code`, `name`) VALUES ('TR', 'Turkey');
INSERT INTO `country` (`code`, `name`) VALUES ('TT', 'Trinidad and Tobago');
INSERT INTO `country` (`code`, `name`) VALUES ('TV', 'Tuvalu');
INSERT INTO `country` (`code`, `name`) VALUES ('TW', 'Taiwan');
INSERT INTO `country` (`code`, `name`) VALUES ('TZ', 'United Republic of Tanzania');
INSERT INTO `country` (`code`, `name`) VALUES ('UA', 'Ukraine');
INSERT INTO `country` (`code`, `name`) VALUES ('UG', 'Uganda');
INSERT INTO `country` (`code`, `name`) VALUES ('UM', 'United States Minor Outlying Islands');
INSERT INTO `country` (`code`, `name`) VALUES ('US', 'USA');
INSERT INTO `country` (`code`, `name`) VALUES ('UY', 'Uruguay');
INSERT INTO `country` (`code`, `name`) VALUES ('UZ', 'Uzbekistan');
INSERT INTO `country` (`code`, `name`) VALUES ('VA', 'Holy See');
INSERT INTO `country` (`code`, `name`) VALUES ('VC', 'Saint Vincent and the Grenadines');
INSERT INTO `country` (`code`, `name`) VALUES ('VE', 'Venezuela (Bolivarian Republic of)');
INSERT INTO `country` (`code`, `name`) VALUES ('VG', 'British Virgin Islands');
INSERT INTO `country` (`code`, `name`) VALUES ('VI', 'United States Virgin Islands');
INSERT INTO `country` (`code`, `name`) VALUES ('VN', 'Viet Nam');
INSERT INTO `country` (`code`, `name`) VALUES ('VU', 'Vanuatu');
INSERT INTO `country` (`code`, `name`) VALUES ('WF', 'Wallis and Futuna Islands');
INSERT INTO `country` (`code`, `name`) VALUES ('WS', 'Samoa');
INSERT INTO `country` (`code`, `name`) VALUES ('YE', 'Yemen');
INSERT INTO `country` (`code`, `name`) VALUES ('YT', 'Mayotte');
INSERT INTO `country` (`code`, `name`) VALUES ('ZA', 'South Africa');
INSERT INTO `country` (`code`, `name`) VALUES ('ZM', 'Zambia');
INSERT INTO `country` (`code`, `name`) VALUES ('ZW', 'Zimbabwe');
COMMIT;

-- ----------------------------
-- Table structure for migration
-- ----------------------------
DROP TABLE IF EXISTS `migration`;
CREATE TABLE `migration` (
  `version` varchar(180) NOT NULL,
  `apply_time` int DEFAULT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of migration
-- ----------------------------
BEGIN;
INSERT INTO `migration` (`version`, `apply_time`) VALUES ('m000000_000000_base', 1587561487);
INSERT INTO `migration` (`version`, `apply_time`) VALUES ('m130524_201442_init', 1587561498);
INSERT INTO `migration` (`version`, `apply_time`) VALUES ('m180628_144021_create_table_visitor', 1590677975);
INSERT INTO `migration` (`version`, `apply_time`) VALUES ('m180628_144042_create_table_visitor_log', 1590678493);
INSERT INTO `migration` (`version`, `apply_time`) VALUES ('m180628_144113_create_table_visitor_agent', 1590678728);
INSERT INTO `migration` (`version`, `apply_time`) VALUES ('m180628_144130_create_table_country', 1590678729);
INSERT INTO `migration` (`version`, `apply_time`) VALUES ('m180630_142222_create_table_visitor_service_error', 1590678729);
INSERT INTO `migration` (`version`, `apply_time`) VALUES ('m190124_110200_add_verification_token_column_to_user_table', 1587561499);
INSERT INTO `migration` (`version`, `apply_time`) VALUES ('m200424_120117_create_article_table', 1588648352);
INSERT INTO `migration` (`version`, `apply_time`) VALUES ('m200424_120247_create_category_table', 1588648352);
INSERT INTO `migration` (`version`, `apply_time`) VALUES ('m200424_120310_create_tag_table', 1588648352);
INSERT INTO `migration` (`version`, `apply_time`) VALUES ('m200424_120410_create_comment_table', 1588648353);
INSERT INTO `migration` (`version`, `apply_time`) VALUES ('m200424_120432_create_article_tag_table', 1588648354);
INSERT INTO `migration` (`version`, `apply_time`) VALUES ('m200502_141910_create_video_table', 1588648354);
INSERT INTO `migration` (`version`, `apply_time`) VALUES ('m200504_035720_create_video_view_table', 1588648355);
INSERT INTO `migration` (`version`, `apply_time`) VALUES ('m200504_041125_create_video_like_table', 1588648356);
INSERT INTO `migration` (`version`, `apply_time`) VALUES ('m200504_065820_create_subscriber_table', 1588648357);
INSERT INTO `migration` (`version`, `apply_time`) VALUES ('m200504_092524_create_fulltext_index_on_video', 1588648357);
INSERT INTO `migration` (`version`, `apply_time`) VALUES ('m200509_083851_add_date_to_comment', 1589013653);
INSERT INTO `migration` (`version`, `apply_time`) VALUES ('m200514_152015_covid_map', 1589470243);
COMMIT;

-- ----------------------------
-- Table structure for pcounter_save
-- ----------------------------
DROP TABLE IF EXISTS `pcounter_save`;
CREATE TABLE `pcounter_save` (
  `save_name` varchar(10) NOT NULL,
  `save_value` int unsigned NOT NULL,
  PRIMARY KEY (`save_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of pcounter_save
-- ----------------------------
BEGIN;
INSERT INTO `pcounter_save` (`save_name`, `save_value`) VALUES ('counter', 31);
INSERT INTO `pcounter_save` (`save_name`, `save_value`) VALUES ('day_time', 2459989);
INSERT INTO `pcounter_save` (`save_name`, `save_value`) VALUES ('max_count', 5);
INSERT INTO `pcounter_save` (`save_name`, `save_value`) VALUES ('max_time', 1591437600);
INSERT INTO `pcounter_save` (`save_name`, `save_value`) VALUES ('yesterday', 0);
COMMIT;

-- ----------------------------
-- Table structure for pcounter_users
-- ----------------------------
DROP TABLE IF EXISTS `pcounter_users`;
CREATE TABLE `pcounter_users` (
  `user_ip` varchar(32) NOT NULL,
  `user_time` int unsigned NOT NULL,
  PRIMARY KEY (`user_ip`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of pcounter_users
-- ----------------------------
BEGIN;
INSERT INTO `pcounter_users` (`user_ip`, `user_time`) VALUES ('::1', 1676293863);
INSERT INTO `pcounter_users` (`user_ip`, `user_time`) VALUES ('60.29.153.43', 1676298703);
COMMIT;

-- ----------------------------
-- Table structure for ru_blog
-- ----------------------------
DROP TABLE IF EXISTS `ru_blog`;
CREATE TABLE `ru_blog` (
  `id` int NOT NULL AUTO_INCREMENT,
  `pubDate` varchar(225) DEFAULT NULL,
  `title` varchar(225) DEFAULT NULL,
  `summary` varchar(2000) DEFAULT NULL,
  `infoSource` varchar(225) DEFAULT NULL,
  `sourceUrl` varchar(225) DEFAULT NULL,
  `image` mediumblob,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=451 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of ru_blog
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for subscriber
-- ----------------------------
DROP TABLE IF EXISTS `subscriber`;
CREATE TABLE `subscriber` (
  `id` int NOT NULL AUTO_INCREMENT,
  `channel_id` int DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  `created_at` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx-subscriber-channel_id` (`channel_id`),
  KEY `idx-subscriber-user_id` (`user_id`),
  CONSTRAINT `subscriber_ibfk_1` FOREIGN KEY (`channel_id`) REFERENCES `user` (`id`) ON DELETE CASCADE,
  CONSTRAINT `subscriber_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of subscriber
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for tag
-- ----------------------------
DROP TABLE IF EXISTS `tag`;
CREATE TABLE `tag` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of tag
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(32) NOT NULL,
  `auth_key` varchar(32) NOT NULL,
  `password_hash` varchar(256) NOT NULL,
  `password_reset_token` varchar(256) DEFAULT NULL,
  `email` varchar(256) NOT NULL,
  `status` int NOT NULL DEFAULT '10',
  `created_at` int NOT NULL,
  `updated_at` int NOT NULL,
  `verification_token` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb3;

-- ----------------------------
-- Records of user
-- ----------------------------
BEGIN;
INSERT INTO `user` (`id`, `username`, `auth_key`, `password_hash`, `password_reset_token`, `email`, `status`, `created_at`, `updated_at`, `verification_token`) VALUES (1, 'milkyship', 'ACPVpKwXicHQNh9-btnw1VxsPFZU8uFw', '$2y$13$COl3Z9FRP.1GUQvrcKcByuJ.DrcuOlLqxtF3U305yLOJ0GYDYy5Fm', NULL, '1214208054@qq.com', 10, 1588646532, 1588646532, 'YVTlSTPO-mDNeW7jaSDTWLpk2WAMwNfl_1588646532');
INSERT INTO `user` (`id`, `username`, `auth_key`, `password_hash`, `password_reset_token`, `email`, `status`, `created_at`, `updated_at`, `verification_token`) VALUES (2, '123', 'huC507kpuZUnIO99UeDzmadvi2o6-enk', '$2y$13$rBCFD0Nl3bXwZhtNjlac7.MfYzLNxbDjh3dGTTMXjdJxF7Xu8Y5ja', NULL, '13687978877jz@gmail.com', 10, 1588646558, 1588646558, 'W1DwwM517WqyZt0lZsmhGVS8vUdmR8Et_1588646558');
INSERT INTO `user` (`id`, `username`, `auth_key`, `password_hash`, `password_reset_token`, `email`, `status`, `created_at`, `updated_at`, `verification_token`) VALUES (3, 'test002', 'lhSwbukLwzuNkg6_ss7yN0twpflpidY4', '$2y$13$RhMfgU17e9H5PZouEQldHO5UnT1B5ng/uCdXiIm8C/v1CWPXL1lZi', 'oGYjaNQ4avq35C2ydL-WV2CCacK4t6PT_1590071409', '962417405@qq.com', 10, 1588646585, 1590071409, 'szfJtKXBz_9MzJIAlrsp4BoUsAYalloU_1588646585');
INSERT INTO `user` (`id`, `username`, `auth_key`, `password_hash`, `password_reset_token`, `email`, `status`, `created_at`, `updated_at`, `verification_token`) VALUES (4, '1234', 'TOAiE6uss3m6ZiFdWghEQPRokKMLEY4k', '$2y$13$/szuloUk02wCwlE.KM87se2Z/aigHeEWhJBeSfKCBe0I9.m5cyBzu', NULL, 'hello@hello.com', 10, 1588647114, 1588647150, 'oMQW1i_J6W6-eGC0Ge8g5vE6XA3v7g41_1588647114');
INSERT INTO `user` (`id`, `username`, `auth_key`, `password_hash`, `password_reset_token`, `email`, `status`, `created_at`, `updated_at`, `verification_token`) VALUES (5, 'lyx55', 'Ue7X9mCJE4-ys_BgYHwbph-Li88VCeKM', '$2y$13$oOumrGprMZhVY2.3/HnkJOM/6RVstuyW4u7eJEXbErPHf1br2wg0i', NULL, 'lyanxin55@gmail.com', 10, 1590071281, 1590071281, 'r8TqhFvBU_9fbsXK8EzSZmkkikxq1rfQ_1590071281');
INSERT INTO `user` (`id`, `username`, `auth_key`, `password_hash`, `password_reset_token`, `email`, `status`, `created_at`, `updated_at`, `verification_token`) VALUES (6, 'jarvis', '97_0kFrTcmddvKItaZ4uro9cKP_jAcHy', '$2y$13$QkoY.LTNV/nO5gy/w/qQ8.JpCfNSN65ajEuf3UvuD20VxEYs.32LW', NULL, '1013198002@qq.com', 10, 1590128798, 1590128798, 'J5PniCX-X8N1vCR8cG3uJcHu2S6Jx9nZ_1590128798');
INSERT INTO `user` (`id`, `username`, `auth_key`, `password_hash`, `password_reset_token`, `email`, `status`, `created_at`, `updated_at`, `verification_token`) VALUES (7, 'test111', 'fiUeC8xQZClAEtxE1khZ54bcL4gWKQiL', '$2y$13$weL7UeWH.Zm0L2r0PtyT1uHKzDthZKSiSMxBTLbwkEGwS6//Q1pHe', NULL, 'test111@test.com', 10, 1590474261, 1590474261, 'QXoKZ8Crcsz4C8VKOfzXBNBYk0_Kth4B_1590474261');
INSERT INTO `user` (`id`, `username`, `auth_key`, `password_hash`, `password_reset_token`, `email`, `status`, `created_at`, `updated_at`, `verification_token`) VALUES (8, 'debug', 'FrqD4ZQVQr0S7bSddLUL2wQUC2Oseyq_', '$2y$13$p3zr2muYjxfx8pv/LYjp1OK6KEs1cgnU9RW907byh4CAT0NEm/Bae', NULL, '54656dasd@qq.com', 10, 1590496256, 1590496256, '60JsdaTlT-Mopuv0glBdUpA0wH6v1XGo_1590496256');
INSERT INTO `user` (`id`, `username`, `auth_key`, `password_hash`, `password_reset_token`, `email`, `status`, `created_at`, `updated_at`, `verification_token`) VALUES (9, 'gugu', 'OnIuwKL0SBZXSlHCEJ59kxzE4S-bJkWl', '$2y$13$UXnGD67JjVNvpo2558CIGu2uYzCFM0AZuR3JYJI53RoisJuapoko2', NULL, '2878271548@qq.com', 10, 1590560759, 1590560759, 'vKmFbMtJsnJ1eYFJ7pGXlBuTPpxfyj3k_1590560759');
INSERT INTO `user` (`id`, `username`, `auth_key`, `password_hash`, `password_reset_token`, `email`, `status`, `created_at`, `updated_at`, `verification_token`) VALUES (10, 'test004', '5yJhvZ55NbCjERbd5ioYdXfnNhpdMF2p', '$2y$13$9KVjjuUPfifs81gGWFsF6eJpFRUChZYqReHcGioTCWjoyAvYBdl/C', NULL, 'test004@test.com', 10, 1591261917, 1591261917, 'G536EVUwPCA9fgL2ox_3RVHjQ1osKT0G_1591261917');
INSERT INTO `user` (`id`, `username`, `auth_key`, `password_hash`, `password_reset_token`, `email`, `status`, `created_at`, `updated_at`, `verification_token`) VALUES (11, 'test0001', 'DPvL41RjBq90JMscOHILN92pTkOxAiBU', '$2y$13$d51mrJlDOM1iXsM7kfORPumWOjbyREu61HFH//W9ZCg6gAKm0ypoW', NULL, 'test0001@test.com', 10, 1591261959, 1591261959, 'YBUVWNI2504MzOsoYDwxlFyV1z30KyxF_1591261959');
INSERT INTO `user` (`id`, `username`, `auth_key`, `password_hash`, `password_reset_token`, `email`, `status`, `created_at`, `updated_at`, `verification_token`) VALUES (12, 'test', '3Frnt0UfzoaNfXGG6brW4yhMlhANXU7O', '$2y$13$qntwEMGVCeLkJZlo.ayhK.s1Xg4kBHIXmN5i/s7PP3SA.b5RAw.lS', NULL, 'test@test.com', 10, 1591877342, 1591877342, 'eyXsVWd4HZLM98T5k1DnaxWyQKXS1JYh_1591877342');
INSERT INTO `user` (`id`, `username`, `auth_key`, `password_hash`, `password_reset_token`, `email`, `status`, `created_at`, `updated_at`, `verification_token`) VALUES (13, 'aakl', 'j8v9PKNNTOygXE7ITKTSP_ArmwpxlmNc', '$2y$13$mNXnhXAIpiyYNzwXCZvROuYsuHyEe9Hamtvik1zjcOnmXcgYAA122', NULL, '123@12.com', 9, 1591877676, 1591877676, 'W3lOogi7bzLIUubO6X4ZTOZHidSCSmc3_1591877676');
INSERT INTO `user` (`id`, `username`, `auth_key`, `password_hash`, `password_reset_token`, `email`, `status`, `created_at`, `updated_at`, `verification_token`) VALUES (15, 'abc', 'WIP7_RPvn7yeK_TT9ZeORGccxo0YKQiz', '$2y$13$0mUiQNEghNu.siUf7nK08elGJGWSXr29Vw9Nn4TeEVZNDtS0mWzOS', NULL, '13687978877@163.com', 9, 1591879817, 1591879817, 'ANMxCvoAPIT5i7B1Sa21VlTecWmVJLYd_1591879817');
INSERT INTO `user` (`id`, `username`, `auth_key`, `password_hash`, `password_reset_token`, `email`, `status`, `created_at`, `updated_at`, `verification_token`) VALUES (16, 'abab123', '2tKTUcrV3d-ESEAC7XnwmnSaVD_bXlfI', '$2y$13$GHs5NNB5Q8TkuoKt5h3IzepgDZPLzVS5w3dABBI6R.viQAKACQd5S', NULL, 'abab123@abab.com', 9, 1591880244, 1591880244, 'r4m0NFbPfFOEtEcDzCChiabm5bB6DEAi_1591880244');
INSERT INTO `user` (`id`, `username`, `auth_key`, `password_hash`, `password_reset_token`, `email`, `status`, `created_at`, `updated_at`, `verification_token`) VALUES (17, '561', 'tarW-cpvTS0jaV23cINQfOKvklmQxQIW', '$2y$13$elbQjzMHYPJiSokr62Q2vuf4ibNpUL5rC99wLVr03ZeN7cSn.bfgO', NULL, '22@12.com', 9, 1591880310, 1591880310, 'WajXlJsfeSxxrFdUZsPg18gqLyojSJtr_1591880310');
INSERT INTO `user` (`id`, `username`, `auth_key`, `password_hash`, `password_reset_token`, `email`, `status`, `created_at`, `updated_at`, `verification_token`) VALUES (18, '5678', 'q5f3X9-pPf-kHPg7IGb98BtJzqFmUgYt', '$2y$13$3tCRR1klXSdTB0vY1zmLO.z3Eyd842WcWmTiH9RxQgb51eEpSBH1K', NULL, '5566@12.com', 9, 1591880798, 1591880798, 'ikRtQcl8hKVhXhQLCDjwbWmrXdM9TwMd_1591880798');
INSERT INTO `user` (`id`, `username`, `auth_key`, `password_hash`, `password_reset_token`, `email`, `status`, `created_at`, `updated_at`, `verification_token`) VALUES (19, 'test007', 'lNNX4WkG1EECS7CzW3jdGpv6TnAVg_xC', '$2y$13$SVsD1L3UO/iywaXlskjZXOeB65BsSiy4HCKJZyB1O3286Yvf84RKa', NULL, 'test007@test.com', 10, 1591880968, 1591880968, 'UmzmYgz-DiXjCGRC9mqGEn_oR48x9kLd_1591880968');
INSERT INTO `user` (`id`, `username`, `auth_key`, `password_hash`, `password_reset_token`, `email`, `status`, `created_at`, `updated_at`, `verification_token`) VALUES (20, '5000', 'rdf2qNF50KTpTW4PK7SGdsobI4JmRKoN', '$2y$13$i87O/4JSE33KgXUxn7Xu9OGXCgtJzyO/hZcs3UM8M8sPLq.QWZ19G', NULL, 'a@ad.com', 10, 1591881447, 1591881447, 'Krd6AIQFRNl3FFD1CP66pzgTYzmdMuyu_1591881447');
INSERT INTO `user` (`id`, `username`, `auth_key`, `password_hash`, `password_reset_token`, `email`, `status`, `created_at`, `updated_at`, `verification_token`) VALUES (22, 'test009', 'AM6OWTFRSpnNsDj4PWGmnnaKaFWVrl2k', '$2y$13$apHY1Hecs.P31vV6lOfCnOH7BZa9OILeQVhHiFpieB1xsK138Ve4O', NULL, 'test009@test.com', 10, 1591881794, 1591881794, 'EMBEmhtPokALIASpY78KvsSfJy_MR9xI_1591881794');
INSERT INTO `user` (`id`, `username`, `auth_key`, `password_hash`, `password_reset_token`, `email`, `status`, `created_at`, `updated_at`, `verification_token`) VALUES (26, 'test10086', 'pU_u7G3Rgxvcmxal69DuF_IB48Rp2WEB', '$2y$13$572qE6TSa1JdBcZDkGcvWegA1jjLPFQ8u11YZ3Cf5Y7mjk6J1rKhi', NULL, '666@nankai.edu.cn', 10, 1591882489, 1591882489, 'Tdo4wtNhcgzdV5W0PZuW8Z1CJVn6kqiw_1591882489');
INSERT INTO `user` (`id`, `username`, `auth_key`, `password_hash`, `password_reset_token`, `email`, `status`, `created_at`, `updated_at`, `verification_token`) VALUES (27, 'test10000', 'gj-SvZiKceBGQxB7M0g0P8X65ZBbhc94', '$2y$13$A3G0V944FQOWHRFVCbPTnuJb/dD/ID0QMnlJRLA0Lwapt0mkl/ydm', NULL, 't1000@mail.nankai.edu.cn', 10, 1591885728, 1591885728, 'GXq4eWslOOaFdP6H4qqbuPo3GZywYASH_1591885728');
INSERT INTO `user` (`id`, `username`, `auth_key`, `password_hash`, `password_reset_token`, `email`, `status`, `created_at`, `updated_at`, `verification_token`) VALUES (28, '123456', 'Th5UkbGd7v2tjTjaurixBIerdXzeyCo8', '$2y$13$2tDTekfIV/eFok3ctrAOvefConfV.nPst9zDresvvK6Lr/RYM5PIC', NULL, '123456@123.com', 10, 1676253046, 1676253046, 'WaFd_ttnNH-EWFjgZTfVDI1y-cGTpCIe_1676253046');
COMMIT;

-- ----------------------------
-- Table structure for video
-- ----------------------------
DROP TABLE IF EXISTS `video`;
CREATE TABLE `video` (
  `video_id` varchar(16) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text,
  `tags` varchar(512) DEFAULT NULL,
  `status` int DEFAULT NULL,
  `has_thumbnail` tinyint(1) DEFAULT NULL,
  `video_name` varchar(255) DEFAULT NULL,
  `created_at` int DEFAULT NULL,
  `updated_at` int DEFAULT NULL,
  `created_by` int DEFAULT NULL,
  PRIMARY KEY (`video_id`),
  KEY `idx-video-created_by` (`created_by`),
  FULLTEXT KEY `title` (`title`,`description`,`tags`),
  CONSTRAINT `video_ibfk_1` FOREIGN KEY (`created_by`) REFERENCES `user` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of video
-- ----------------------------
BEGIN;
INSERT INTO `video` (`video_id`, `title`, `description`, `tags`, `status`, `has_thumbnail`, `video_name`, `created_at`, `updated_at`, `created_by`) VALUES ('PAnKGl9G', 'HOW DOES COVID-19 AFFECT THE BODY?', '', '新冠科普', 1, 1, 'videoplayback.mp4', 1591498420, 1591498555, 2);
COMMIT;

-- ----------------------------
-- Table structure for video_like
-- ----------------------------
DROP TABLE IF EXISTS `video_like`;
CREATE TABLE `video_like` (
  `id` int NOT NULL AUTO_INCREMENT,
  `video_id` varchar(16) NOT NULL,
  `user_id` int NOT NULL,
  `type` int DEFAULT NULL,
  `created_at` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx-video_like-video_id` (`video_id`),
  KEY `idx-video_like-user_id` (`user_id`),
  CONSTRAINT `video_like_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE,
  CONSTRAINT `video_like_ibfk_2` FOREIGN KEY (`video_id`) REFERENCES `video` (`video_id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of video_like
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for video_view
-- ----------------------------
DROP TABLE IF EXISTS `video_view`;
CREATE TABLE `video_view` (
  `id` int NOT NULL AUTO_INCREMENT,
  `video_id` varchar(16) NOT NULL,
  `user_id` int DEFAULT NULL,
  `created_at` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx-video_view-video_id` (`video_id`),
  KEY `idx-video_view-user_id` (`user_id`),
  CONSTRAINT `video_view_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE,
  CONSTRAINT `video_view_ibfk_2` FOREIGN KEY (`video_id`) REFERENCES `video` (`video_id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of video_view
-- ----------------------------
BEGIN;
INSERT INTO `video_view` (`id`, `video_id`, `user_id`, `created_at`) VALUES (90, 'PAnKGl9G', 2, 1591498574);
INSERT INTO `video_view` (`id`, `video_id`, `user_id`, `created_at`) VALUES (91, 'PAnKGl9G', 2, 1591498617);
INSERT INTO `video_view` (`id`, `video_id`, `user_id`, `created_at`) VALUES (92, 'PAnKGl9G', 2, 1591498634);
INSERT INTO `video_view` (`id`, `video_id`, `user_id`, `created_at`) VALUES (93, 'PAnKGl9G', 2, 1591498719);
INSERT INTO `video_view` (`id`, `video_id`, `user_id`, `created_at`) VALUES (94, 'PAnKGl9G', 2, 1591498738);
INSERT INTO `video_view` (`id`, `video_id`, `user_id`, `created_at`) VALUES (95, 'PAnKGl9G', NULL, 1591499455);
INSERT INTO `video_view` (`id`, `video_id`, `user_id`, `created_at`) VALUES (96, 'PAnKGl9G', 11, 1591499555);
INSERT INTO `video_view` (`id`, `video_id`, `user_id`, `created_at`) VALUES (97, 'PAnKGl9G', 11, 1591521725);
INSERT INTO `video_view` (`id`, `video_id`, `user_id`, `created_at`) VALUES (98, 'PAnKGl9G', 2, 1591585218);
INSERT INTO `video_view` (`id`, `video_id`, `user_id`, `created_at`) VALUES (99, 'PAnKGl9G', 2, 1591872749);
INSERT INTO `video_view` (`id`, `video_id`, `user_id`, `created_at`) VALUES (100, 'PAnKGl9G', NULL, 1592017355);
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
