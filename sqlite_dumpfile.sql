\encoding UTF8;


CREATE TABLE IF NOT EXISTS "schema_migrations" (
	"version"	varchar NOT NULL,
	PRIMARY KEY("version")
);
CREATE TABLE IF NOT EXISTS "ar_internal_metadata" (
	"key"	varchar NOT NULL,
	"value"	varchar,
	"created_at"	timestamp NOT NULL,
	"updated_at"	timestamp NOT NULL,
	PRIMARY KEY("key")
);
CREATE TABLE IF NOT EXISTS "homes" (
	"id"	SERIAL NOT NULL,
	"created_at"	timestamp NOT NULL,
	"updated_at"	timestamp NOT NULL,
	"title"	varchar,
	"content"	text,
	"imgSrc"	text,
	"kind"	varchar,
	PRIMARY KEY("id" )
);
CREATE TABLE IF NOT EXISTS "members" (
	"id"	SERIAL NOT NULL,
	"classification"	varchar,
	"status"	varchar,
	"name_jp"	varchar,
	"name_en"	varchar,
	"created_at"	timestamp NOT NULL,
	"updated_at"	timestamp NOT NULL,
	"graduateYear"	varchar,
	PRIMARY KEY("id" )
);
CREATE TABLE IF NOT EXISTS "links" (
	"id"	SERIAL NOT NULL,
	"className"	varchar,
	"title"	varchar,
	"created_at"	timestamp NOT NULL,
	"updated_at"	timestamp NOT NULL,
	"contents"	text,
	PRIMARY KEY("id" )
);
CREATE TABLE IF NOT EXISTS "researches" (
	"id"	SERIAL NOT NULL,
	"title"	varchar,
	"imgSrc"	text,
	"content"	text,
	"created_at"	timestamp NOT NULL,
	"updated_at"	timestamp NOT NULL,
	PRIMARY KEY("id" )
);
CREATE TABLE IF NOT EXISTS "accesses" (
	"id"	SERIAL NOT NULL,
	"className"	varchar,
	"title"	varchar,
	"address"	text,
	"created_at"	timestamp NOT NULL,
	"updated_at"	timestamp NOT NULL,
	PRIMARY KEY("id" )
);
INSERT INTO "schema_migrations" VALUES ('20210407070848');
INSERT INTO "schema_migrations" VALUES ('20210407070907');
INSERT INTO "schema_migrations" VALUES ('20210407070923');
INSERT INTO "schema_migrations" VALUES ('20210407070940');
INSERT INTO "schema_migrations" VALUES ('20210407070950');
INSERT INTO "schema_migrations" VALUES ('20210407074347');
INSERT INTO "schema_migrations" VALUES ('20210407074415');
INSERT INTO "schema_migrations" VALUES ('20210407074428');
INSERT INTO "schema_migrations" VALUES ('20210407074438');
INSERT INTO "schema_migrations" VALUES ('20210407074449');
INSERT INTO "ar_internal_metadata" VALUES ('environment','development','2021-04-07 08:27:14.306877','2021-04-07 08:27:14.306877');
INSERT INTO "homes" VALUES (1,'2021-03-28 13:43:21.473191','2021-03-31 03:01:20.454887','ICCCS 2019, Best presentation of the session','<p>Ryo Watanabe earned the best presentation award of the session at IEEE 4th International Conference on Computer and Communication Systems (ICCCS2019).</p>','/assets/icccs2019-watanabe.jpg','topTopic');
INSERT INTO "homes" VALUES (2,'2021-03-28 13:45:16.612905','2021-03-31 03:01:24.120774','ICCCN2018 / IoTPST2018','<p>One of the authors, Dr. Mikoshi, presents our paper at ICCCN2018 / IoTPST2018.</p>','/assets/iotpst2018.jpg','topTopic');
INSERT INTO "homes" VALUES (3,'2021-03-28 13:47:11.791742','2021-03-28 13:47:11.791742','Feb. 2019<p>We made a presentation at IEEE 4th International Conference on Computer and Communication Systems (ICCCS2019) .Ryo Watanabe earned the best presentation award of the session.</p>','Ryo Watanabe, and Toshifusa Sekizawa:<br>"Counter Example Analysis of Robot Action Design for Self-localization Based on Model Checking using Probability Removed Model,"<br>Proceedings of ICCCS 2019, Feb. 25, 2019. (Singapore)',NULL,'topic');
INSERT INTO "homes" VALUES (4,'2021-03-28 13:49:20.525486','2021-03-28 13:49:20.525486','Feb. 2019','卒業研究発表会にて，4年生の15名が発表を行ないました.',NULL,'topic');
INSERT INTO "homes" VALUES (5,'2021-03-28 13:50:19.720900','2021-03-28 13:50:19.720900','Jan. 2019<p><a href="http://www.topic.ad.jp/ipsj-tohoku/doku.php?id=announce:seminar_20190112">IPSJ 東北支部研究会 (会津大学)</a> にて，次の発表を行ないました．</p>','Ryo Watanabe, and Toshifusa Sekizawa:<br>"Counter Example Analysis of Robot Action Design for Self-localization Based on Model Checking using Probability Removed Model,"<br>Proceedings of ICCCS 2019, Feb. 25, 2019. (Singapore)',NULL,'topic');
INSERT INTO "members" VALUES (1,'master','current','渡辺　誠人','Masato Watanabe','2021-03-31 05:03:41.552039','2021-03-31 05:03:41.552039','');
INSERT INTO "members" VALUES (2,'bachelor','current','田苗　和也','Kazuya Tanae','2021-03-31 05:31:53.641919','2021-03-31 05:31:53.641919','');
INSERT INTO "members" VALUES (3,'bachelor','current','添田　和海','Kazumi Soeta','2021-03-31 05:33:49.304874','2021-03-31 05:33:49.304874','');
INSERT INTO "members" VALUES (4,'bachelor','current','遠竹　崇人','Syuto Totake','2021-03-31 05:35:02.077121','2021-03-31 05:35:02.077121','');
INSERT INTO "members" VALUES (5,'bachelor','current','土手　貴雅','Takamasa Dote','2021-03-31 05:36:15.015534','2021-03-31 05:36:15.015534','');
INSERT INTO "members" VALUES (6,'bachelor','current','永沼　観行','Miyuku Naganuma','2021-03-31 05:37:29.967637','2021-03-31 05:37:29.967637','');
INSERT INTO "members" VALUES (7,'bachelor','current','橋本　優貴','Yuki Hashimoto','2021-03-31 05:38:38.923681','2021-03-31 05:38:38.923681','');
INSERT INTO "members" VALUES (8,'bachelor','current','蓮沼　大希','Taiki Hasunuma','2021-03-31 05:39:46.205173','2021-03-31 05:39:46.205173','');
INSERT INTO "members" VALUES (9,'bachelor','current','星野　清滋','Seiji Hoshino','2021-03-31 05:40:40.686761','2021-03-31 05:40:40.686761','');
INSERT INTO "members" VALUES (10,'bachelor','current','村澤　匠','Takumi Murasawa','2021-03-31 05:41:43.845587','2021-03-31 05:41:43.845587','');
INSERT INTO "members" VALUES (11,'bachelor','current','山内　大誠','Taisei Yamauchi','2021-03-31 05:42:44.195229','2021-03-31 05:42:44.195229','');
INSERT INTO "members" VALUES (12,'bachelor','current','山口　勇毅','Yuki Yamaguchi','2021-03-31 05:43:29.805312','2021-03-31 05:43:29.805312','');
INSERT INTO "members" VALUES (13,'bachelor','current','吉田　遼佑','Ryousuke Yoshida','2021-03-31 05:44:37.677599','2021-03-31 05:44:37.677599','');
INSERT INTO "members" VALUES (24,'master','previous','柿沼　翔太','Shota Kakinuma','2021-03-31 06:02:24.244540','2021-03-31 06:02:24.244540','2019');
INSERT INTO "members" VALUES (25,'master','previous','矢吹　光','Hikaru Yabuki','2021-03-31 06:02:24.866515','2021-03-31 06:02:24.866515','2019');
INSERT INTO "members" VALUES (26,'master','previous','渡邉　亮','Ryo Watanabe','2021-03-31 06:02:25.445610','2021-03-31 06:02:25.445610','2019');
INSERT INTO "members" VALUES (27,'bachelor','previous','安藤　有輝','Naoki Ando','2021-03-31 06:06:47.407742','2021-03-31 06:06:47.407742','2019');
INSERT INTO "members" VALUES (28,'bachelor','previous','井上　直也','Naoya Inoue','2021-04-01 14:50:16.982391','2021-04-01 14:50:16.982391','2019');
INSERT INTO "members" VALUES (30,'bachelor','previous','浦山　公志','Masayuki Urayasu','2021-04-01 14:53:02.324932','2021-04-01 14:53:02.324932','2019');
INSERT INTO "members" VALUES (31,'bachelor','previous','川井　康広','Yasuhiro Kawai','2021-04-01 14:53:02.942496','2021-04-01 14:53:02.942496','2019');
INSERT INTO "members" VALUES (32,'bachelor','previous','河野　一輝','Kazuki Kawano','2021-04-01 14:53:03.536335','2021-04-01 14:53:03.536335','2019');
INSERT INTO "members" VALUES (33,'bachelor','previous','車川　国正','Kunitada Kurumagawa','2021-04-01 14:53:04.224782','2021-04-01 14:53:04.224782','2019');
INSERT INTO "members" VALUES (34,'bachelor','previous','鈴木　雅人','Masato Suzuki','2021-04-01 14:53:04.844854','2021-04-01 14:53:04.844854','2019');
INSERT INTO "members" VALUES (35,'bachelor','previous','仲野屋　昂志','Takayuki Nakanoya','2021-04-01 14:53:05.578560','2021-04-01 14:53:05.578560','2019');
INSERT INTO "members" VALUES (36,'bachelor','previous','根本　貴大','Takahiro Nemoto','2021-04-01 14:53:06.241052','2021-04-01 14:53:06.241052','2019');
INSERT INTO "members" VALUES (37,'bachelor','previous','葉貫　慶太','Keita Hanuki','2021-04-01 14:53:06.914654','2021-04-01 14:53:06.914654','2019');
INSERT INTO "members" VALUES (38,'bachelor','previous','平山　拓海','Takumi Hirayama','2021-04-01 14:53:07.546757','2021-04-01 14:53:07.546757','2019');
INSERT INTO "members" VALUES (39,'bachelor','previous','本島　匠','Takumi Motojima','2021-04-01 14:53:08.155716','2021-04-01 14:53:08.155716','2019');
INSERT INTO "members" VALUES (40,'bachelor','previous','ロンガサン　晶子','Akiko Rongasan','2021-04-01 14:53:08.848716','2021-04-01 14:53:08.848716','2019');
INSERT INTO "members" VALUES (41,'bachelor','previous','我妻　紘佑','Kousuke Agatsuma','2021-04-01 14:53:09.531451','2021-04-01 14:53:09.531451','2019');
INSERT INTO "members" VALUES (42,'bachelor','previous','渡邉　力斗','Rikito Watanabe','2021-04-01 14:53:10.174799','2021-04-01 14:53:10.174799','2019');
INSERT INTO "members" VALUES (43,'master','previous','小林　佳正','Yoshimasa Kobayashi','2021-04-01 14:53:10.873273','2021-04-01 14:53:10.873273','2018');
INSERT INTO "members" VALUES (44,'bachelor','previous','飯田　進二','Shinji Iida','2021-04-01 14:53:11.490504','2021-04-01 14:53:11.490504','2018');
INSERT INTO "members" VALUES (45,'bachelor','previous','五十嵐　諒太','Ryota Igarashi','2021-04-01 14:53:12.148647','2021-04-01 14:53:12.148647','2018');
INSERT INTO "members" VALUES (46,'bachelor','previous','石井　美乃里','Minori Ishii','2021-04-01 14:53:12.792156','2021-04-01 14:53:12.792156','2018');
INSERT INTO "members" VALUES (47,'bachelor','previous','工藤　大誠','Taisei Kudo','2021-04-01 14:53:13.381001','2021-04-01 14:53:13.381001','2018');
INSERT INTO "members" VALUES (48,'bachelor','previous','斎藤　優樹','Yuuki Saito','2021-04-01 14:53:14.003922','2021-04-01 14:53:14.003922','2018');
INSERT INTO "members" VALUES (49,'bachelor','previous','土子　諒太','Ryota Tsuchiko','2021-04-01 14:53:14.612181','2021-04-01 14:53:14.612181','2018');
INSERT INTO "members" VALUES (50,'bachelor','previous','福田　亘','Wataru Fukuda','2021-04-01 14:53:15.213731','2021-04-01 14:53:15.213731','2018');
INSERT INTO "members" VALUES (51,'bachelor','previous','福地　康平','Kouhei Fukuchi','2021-04-01 14:53:15.807461','2021-04-01 14:53:15.807461','2018');
INSERT INTO "members" VALUES (52,'bachelor','previous','星　杏子','Kyoko Hoshi','2021-04-01 14:53:16.434490','2021-04-01 14:53:16.434490','2018');
INSERT INTO "members" VALUES (53,'bachelor','previous','三浦　翔','Kakeru　Miura','2021-04-01 14:53:17.084961','2021-04-01 14:53:17.084961','2018');
INSERT INTO "members" VALUES (54,'bachelor','previous','伊藤　秀斗','Syuto Ito','2021-04-01 14:53:17.641403','2021-04-01 14:53:17.641403','2017');
INSERT INTO "members" VALUES (55,'bachelor','previous','大内　孝矩','Takanori Ouchi','2021-04-01 14:53:18.246456','2021-04-01 14:53:18.246456','2017');
INSERT INTO "members" VALUES (56,'bachelor','previous','柿沼　翔太','Shota　Kakinuma','2021-04-01 14:53:18.876505','2021-04-01 14:53:18.876505','2017');
INSERT INTO "members" VALUES (57,'bachelor','previous','河野　彰太','Shota　Kouno','2021-04-01 14:53:19.503743','2021-04-01 14:53:19.503743','2017');
INSERT INTO "members" VALUES (58,'bachelor','previous','斎藤　拓也','Takuya Saito','2021-04-01 14:53:20.116795','2021-04-01 14:53:20.116795','2017');
INSERT INTO "members" VALUES (59,'bachelor','previous','関　あすか','Asuka Seki','2021-04-01 14:53:20.716858','2021-04-01 14:53:20.716858','2017');
INSERT INTO "members" VALUES (60,'bachelor','previous','馬場　翔太','Shota Baba','2021-04-01 14:53:21.292842','2021-04-01 14:53:21.292842','2017');
INSERT INTO "members" VALUES (61,'bachelor','previous','深川　大輔','Daisuke Fukagawa','2021-04-01 14:53:22.042065','2021-04-01 15:09:53.093811','2017');
INSERT INTO "members" VALUES (62,'bachelor','previous','古木　雅人','Masato Furuki','2021-04-01 14:53:22.621842','2021-04-01 14:53:22.621842','2017');
INSERT INTO "members" VALUES (63,'bachelor','previous','矢吹　光','Hikaru Yabuki','2021-04-01 14:53:23.213106','2021-04-01 14:53:23.213106','2017');
INSERT INTO "members" VALUES (64,'bachelor','previous','渡辺　誠人','Masato Watanabe','2021-04-01 14:53:23.826021','2021-04-01 14:53:23.826021','2017');
INSERT INTO "members" VALUES (65,'bachelor','previous','渡邉　亮','Ryo Watanabe','2021-04-01 14:53:24.432351','2021-04-01 14:53:24.432351','2017');
INSERT INTO "members" VALUES (66,'bachelor','previous','泉　大輔','Daisuke Izumi','2021-04-01 14:53:25.072693','2021-04-01 14:53:25.072693','2016');
INSERT INTO "members" VALUES (67,'bachelor','previous','稲部　大貴','Daiki Inabe','2021-04-01 14:53:25.654808','2021-04-01 14:53:25.654808','2016');
INSERT INTO "members" VALUES (68,'bachelor','previous','久住　浩紀','Hironori Kusumi','2021-04-01 14:53:26.901511','2021-04-01 14:53:26.901511','2016');
INSERT INTO "members" VALUES (69,'bachelor','previous','香西　潤','Jyun Kouzai','2021-04-01 14:53:27.449775','2021-04-01 14:53:27.449775','2016');
INSERT INTO "members" VALUES (70,'bachelor','previous','国分　俊徳','Toshinori Kokubun','2021-04-01 14:53:28.067969','2021-04-01 14:53:28.067969','2016');
INSERT INTO "members" VALUES (71,'bachelor','previous','小林　佳正','Yoshimasa Kobayashi','2021-04-01 14:53:28.747832','2021-04-01 14:53:28.747832','2016');
INSERT INTO "members" VALUES (72,'bachelor','previous','澤田　雄輝','Yuuki Sawada','2021-04-01 14:53:29.348327','2021-04-01 14:53:29.348327','2016');
INSERT INTO "members" VALUES (73,'bachelor','previous','仲本　一輝','Kazuki Nakamoto','2021-04-01 14:53:29.986215','2021-04-01 14:53:29.986215','2016');
INSERT INTO "members" VALUES (74,'bachelor','previous','濱畑　智也','Tomoya Hamahata','2021-04-01 14:53:30.624367','2021-04-01 14:53:30.624367','2016');
INSERT INTO "members" VALUES (75,'bachelor','previous','松浦　光','Hikaru Matsuura','2021-04-01 14:53:31.228643','2021-04-01 14:53:31.228643','2016');
INSERT INTO "members" VALUES (76,'bachelor','previous','我妻　達也','Tatsuya Azuma','2021-04-01 14:53:31.849652','2021-04-01 14:53:31.849652','2015');
INSERT INTO "members" VALUES (77,'bachelor','previous','伊藤　和己','Kazuki Ito','2021-04-01 14:53:32.421507','2021-04-01 14:53:32.421507','2015');
INSERT INTO "members" VALUES (78,'bachelor','previous','遠藤　順己','Masaki Endo','2021-04-01 14:53:33.027552','2021-04-01 14:53:33.027552','2015');
INSERT INTO "members" VALUES (79,'bachelor','previous','大槻　文也','Fumiya Otsuki','2021-04-01 14:53:33.694844','2021-04-01 14:53:33.694844','2015');
INSERT INTO "members" VALUES (80,'bachelor','previous','佐藤　達也','Tatsuya Sato','2021-04-01 14:53:34.367313','2021-04-01 14:53:34.367313','2015');
INSERT INTO "members" VALUES (81,'bachelor','previous','佐藤　勇次','Yuji Sato','2021-04-01 14:53:34.961713','2021-04-01 14:53:34.961713','2015');
INSERT INTO "members" VALUES (82,'bachelor','previous','邉見　剛広','Takahiro Henmi','2021-04-01 14:53:35.568858','2021-04-01 14:53:35.568858','2015');
INSERT INTO "members" VALUES (83,'bachelor','previous','吉原　滉太','Kota　Yoshihara','2021-04-01 14:53:36.184259','2021-04-01 14:53:36.184259','2015');
INSERT INTO "members" VALUES (84,'bachelor','previous','渡邉　哲史','Satoshi Watanabe','2021-04-01 14:53:36.803359','2021-04-01 14:53:36.803359','2015');
INSERT INTO "members" VALUES (85,'bachelor','previous','内山　圭佑','Keisuke Uchiyama','2021-04-01 15:06:09.574630','2021-04-01 15:06:09.574630','2016');
INSERT INTO "links" VALUES (1,'link lab','研究室 (Labs)','2021-03-31 04:31:10.027526','2021-03-31 04:31:45.278262','---

- 高信頼システム系 <a href="http://www.cs.ce.nihon-u.ac.jp/~ueda/index.html">制御ソフトウェア研究室</a>

  (日本大学工学部情報工学科)

');
INSERT INTO "links" VALUES (2,'link univercity','大学 (University)','2021-03-31 04:34:45.343159','2021-03-31 04:34:45.343159','---

- <a href="http://www.cs.ce.nihon-u.ac.jp/">日本大学 工学部 情報工学科 (Department of Computer

  Science, College of Engineering, Nihon University)</a>

- <a href="http://www.ce.nihon-u.ac.jp/">日本大学 工学部 (College of Engineering, Nihon University)</a>

- <a href="https://www.nihon-u.ac.jp/">日本大学 (Nihon University)</a>

');
INSERT INTO "links" VALUES (3,'link institute','機関 (Institute)','2021-03-31 04:38:55.812868','2021-03-31 04:38:55.812868','---

- <a href="http://www.ieice.org/jpn/">電子情報通信学会 (IEICE)</a>

- <a href="https://www.ipsj.or.jp/">情報処理学会 (IPSJ)</a>

- <a href="http://www.jssst.or.jp/">日本ソフトウェア科学会 (JSSST)</a>

- <a href="https://www.ieee.org/">IEEE</a>

- <a href="https://www.acm.org/">ACM</a>

');
INSERT INTO "researches" VALUES (1,'自己位置推定と検証','/assets/self-localization01.jpg','<p>In robotics, self-localization often plays animportant role, using values obtained by observations of anexternal environment. A simple example is a robot running on amaze, where the robot doesn''t know its initial position. For sucha case, it is necessary to design movements, since estimation dependson arrangement of structures on a map. We fix movements of the robot. Wethen verify using a probabilistic model checker PRISM, to see whether the robot can determine its position for a given map.</p><ul><li>Ryo Watanabe, Kozo Okano, and Toshifusa Sekizawa:"Towards Verification of Robot Design for Self-localization,"Thirteenth Haifa Verification Conference (HVC 2017), LNCS, Vol. 10629, pp. 245-248, 2017.</li><li>Toshifusa Sekizawa, Taiju Mikoshi, Masataka Nagura, Ryo Watanabe, Qian Chen:"Probabilistic Position Estimation and Model Checking for Resource-ConstrainedIoT Devices,"Proceedings of 27th International Conference on Computer Communication and Networks (ICCCN 2018) pp. 1-7, 2018, IEEE.</li></ul>','2021-03-31 03:10:15.289360','2021-03-31 03:43:54.562547');
INSERT INTO "researches" VALUES (2,'自律移動ロボットの振舞い検証 (Behavior Verification of an Autonomous Robot)','/assets/underconstruction.jpg','','2021-03-31 03:19:15.151566','2021-03-31 03:41:19.746214');
INSERT INTO "accesses" VALUES (1,'ja','高信頼性システム研究室','<p>〒963-8642　福島県郡山市田村町徳定字中河原１<br />日本大学 工学部 情報工学科<br />61号館204号室</p><p>〒963-8642　福島県郡山市田村町徳定字中河原１<br />日本大学 工学部 情報工学科<br />61号館204号室</p>','2021-03-31 04:02:52.823209','2021-03-31 04:02:52.823209');
INSERT INTO "accesses" VALUES (2,'en','Dependble Systems Laboratory','<p>1 Nakagawara, Tokusada, Tamura,<br />Koriyama, Fukushima, 963-8642 Japan.<br />Department of Computer Science, College of Engineering, Nihon University<br />Building 61, Room 204</p>','2021-03-31 04:04:28.078350','2021-03-31 04:04:28.078350');
COMMIT;
