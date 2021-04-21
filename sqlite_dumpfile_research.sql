\encoding UTF8;
BEGIN TRANSACTION;

INSERT INTO "researches" VALUES (1,'2021-03-31 03:10:15.289360','2021-03-31 03:43:54.562547','自己位置推定と検証','/assets/self-localization01.jpg','<p>In robotics, self-localization often plays animportant role, using values obtained by observations of anexternal environment. A simple example is a robot running on amaze, where the robot doesn''t know its initial position. For sucha case, it is necessary to design movements, since estimation dependson arrangement of structures on a map. We fix movements of the robot. Wethen verify using a probabilistic model checker PRISM, to see whether the robot can determine its position for a given map.</p><ul><li>Ryo Watanabe, Kozo Okano, and Toshifusa Sekizawa:"Towards Verification of Robot Design for Self-localization,"Thirteenth Haifa Verification Conference (HVC 2017), LNCS, Vol. 10629, pp. 245-248, 2017.</li><li>Toshifusa Sekizawa, Taiju Mikoshi, Masataka Nagura, Ryo Watanabe, Qian Chen:"Probabilistic Position Estimation and Model Checking for Resource-ConstrainedIoT Devices,"Proceedings of 27th International Conference on Computer Communication and Networks (ICCCN 2018) pp. 1-7, 2018, IEEE.</li></ul>');
INSERT INTO "researches" VALUES (2,'2021-03-31 03:19:15.151566','2021-03-31 03:41:19.746214','自律移動ロボットの振舞い検証 (Behavior Verification of an Autonomous Robot)','/assets/underconstruction.jpg','');

COMMIT;
