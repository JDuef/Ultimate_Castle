/*ADMINISTRATION*/
INSERT INTO ADMINISTRATION (AD_ID, AL_ID) 
VALUES (1, NULL);
INSERT INTO ADMINISTRATION (AD_ID, AL_ID) 
VALUES (2, NULL);
INSERT INTO ADMINISTRATION (AD_ID, AL_ID) 
VALUES (3, NULL);
INSERT INTO ADMINISTRATION (AD_ID, AL_ID) 
VALUES (4, NULL);

/*ALLIANZ*/
INSERT INTO ALLIANZ (AL_ID, AL_NAME, AL_BESCHREIBUNG, AL_DATE_OF_CREATION, AD_ID) 
VALUES (1, 'Technologie-Enthusiasten', 'Wir mögen Technik.', to_timestamp('2021-01-25 03:13:05', 'YYYY-MM-DD HH24:MI:SS'), 4);
INSERT INTO ALLIANZ (AL_ID, AL_NAME, AL_BESCHREIBUNG, AL_DATE_OF_CREATION, AD_ID) 
VALUES (2, 'The one and only', 'Die einzige Gilde, die diese Welt braucht', to_timestamp('2020-12-24 00:32:22', 'YYYY-MM-DD HH24:MI:SS'), 1);
INSERT INTO ALLIANZ (AL_ID, AL_NAME, AL_BESCHREIBUNG, AL_DATE_OF_CREATION, AD_ID) 
VALUES (3, 'XKCD Fanclub', 'For all the fellow science nerds.', to_timestamp('2021-02-28 03:36:42', 'YYYY-MM-DD HH24:MI:SS'), 2);
INSERT INTO ALLIANZ (AL_ID, AL_NAME, AL_BESCHREIBUNG, AL_DATE_OF_CREATION, AD_ID) 
VALUES (4, 'Definitely not cops', 'Have you heard new ways of making money online lately? Come join us.', to_timestamp('2021-10-17 21:55:08', 'YYYY-MM-DD HH24:MI:SS'), 3);

/*UPDATE ADMINISTRATION*/
UPDATE ADMINISTRATION
SET AL_ID = 2
WHERE AD_ID = 1;
UPDATE ADMINISTRATION
SET AL_ID = 3
WHERE AD_ID = 2;
UPDATE ADMINISTRATION
SET AL_ID = 4
WHERE AD_ID = 3;
UPDATE ADMINISTRATION
SET AL_ID = 1
WHERE AD_ID = 4;

/* ACCOUNT */
INSERT INTO ACCOUNT (ACC_ID, AL_ID, ACC_USERNAME, ACC_PASSWORD, ACC_EMAIL, ACC_LETZTER_LOGIN, ACC_PREMIUM, ACC_PAYMENT_TOKEN) 
VALUES (1, 1, 'tnorridge0', 'jHTm8SIcdOV', 'elongstaffe0@vkontakte.ru', to_timestamp('2021-07-08 16:34:26', 'YYYY-MM-DD HH24:MI:SS'), 0, '9f71a834ab6b19e5f95958604dfa8eb2e0547f64');
INSERT INTO ACCOUNT (ACC_ID, AL_ID, ACC_USERNAME, ACC_PASSWORD, ACC_EMAIL, ACC_LETZTER_LOGIN, ACC_PREMIUM, ACC_PAYMENT_TOKEN) 
VALUES (2, 3, 'ppolle1', 'BRZJrQwntT', 'ofew1@wikispaces.com', to_timestamp('2021-07-07 17:20:31', 'YYYY-MM-DD HH24:MI:SS'), 0, '68db480f187a19bfc6c47c9c19082af9bade668e');
INSERT INTO ACCOUNT (ACC_ID, AL_ID, ACC_USERNAME, ACC_PASSWORD, ACC_EMAIL, ACC_LETZTER_LOGIN, ACC_PREMIUM, ACC_PAYMENT_TOKEN) 
VALUES (3, 2, 'rdearness2', 'QMkF9Sv2Zvy', 'abrellin2@google.com', to_timestamp('2021-10-30 05:57:32', 'YYYY-MM-DD HH24:MI:SS'), 1, '578f3c74394bfa343e7075f7f5f8b13eccb66142');
INSERT INTO ACCOUNT (ACC_ID, AL_ID, ACC_USERNAME, ACC_PASSWORD, ACC_EMAIL, ACC_LETZTER_LOGIN, ACC_PREMIUM, ACC_PAYMENT_TOKEN) 
VALUES (4, 4, 'zpridham3', 'IktWLXp', 'ffrisby3@oracle.com', to_timestamp('2021-04-25 22:57:58', 'YYYY-MM-DD HH24:MI:SS'), 0, '2de8e578c6a674b61faa3872b02621dfdf552a30');
INSERT INTO ACCOUNT (ACC_ID, AL_ID, ACC_USERNAME, ACC_PASSWORD, ACC_EMAIL, ACC_LETZTER_LOGIN, ACC_PREMIUM, ACC_PAYMENT_TOKEN) 
VALUES (5, 3, 'mstrange4', 'azju63', 'spenniell4@liveinternet.ru', to_timestamp('2021-02-13 05:59:24', 'YYYY-MM-DD HH24:MI:SS'), 1, '885a4c71754ee4eace35e963194400f2c17a0a91');
INSERT INTO ACCOUNT (ACC_ID, AL_ID, ACC_USERNAME, ACC_PASSWORD, ACC_EMAIL, ACC_LETZTER_LOGIN, ACC_PREMIUM, ACC_PAYMENT_TOKEN) 
VALUES (6, 1, 'bkeuntje5', 'vvb38Ss5', 'ddemogeot5@jalbum.net', to_timestamp('2021-05-19 20:01:22', 'YYYY-MM-DD HH24:MI:SS'), 0, 'd447f2709ccf7af0956cfef42543004af35503cd');
INSERT INTO ACCOUNT (ACC_ID, AL_ID, ACC_USERNAME, ACC_PASSWORD, ACC_EMAIL, ACC_LETZTER_LOGIN, ACC_PREMIUM, ACC_PAYMENT_TOKEN) 
VALUES (7, 2, 'jbryers6', '5JGFOWQQzgn', 'dmoughtin6@naver.com', to_timestamp('2020-12-24 18:04:03', 'YYYY-MM-DD HH24:MI:SS'), 0, '703b9d5347fa4ac6b4a9976a0cadb3b9706398f9');
INSERT INTO ACCOUNT (ACC_ID, AL_ID, ACC_USERNAME, ACC_PASSWORD, ACC_EMAIL, ACC_LETZTER_LOGIN, ACC_PREMIUM, ACC_PAYMENT_TOKEN) 
VALUES (8, 3, 'bmusto7', 'R0CTvyvvRI', 'dhawtin7@behance.net', to_timestamp('2021-01-28 17:07:55', 'YYYY-MM-DD HH24:MI:SS'), 1, 'a1dbe0d7d0c7ad061bf5e17d80013f2d13913b1b');
INSERT INTO ACCOUNT (ACC_ID, AL_ID, ACC_USERNAME, ACC_PASSWORD, ACC_EMAIL, ACC_LETZTER_LOGIN, ACC_PREMIUM, ACC_PAYMENT_TOKEN) 
VALUES (9, 3, 'mhakonsson8', 'dBIwh3', 'jchristophersen8@fc2.com', to_timestamp('2021-01-02 03:00:28', 'YYYY-MM-DD HH24:MI:SS'), 0, '811312f6c93314334063d79761ce5385ff85cc41');
INSERT INTO ACCOUNT (ACC_ID, AL_ID, ACC_USERNAME, ACC_PASSWORD, ACC_EMAIL, ACC_LETZTER_LOGIN, ACC_PREMIUM, ACC_PAYMENT_TOKEN) 
VALUES (10, 2, 'adytham9', 'bXCU8Sxjfin', 'trhelton9@aboutads.info', to_timestamp('2021-10-10 02:52:35', 'YYYY-MM-DD HH24:MI:SS'), 0, '76ea580bba382edb247da39bdf82d2c50ae8254d');
INSERT INTO ACCOUNT (ACC_ID, AL_ID, ACC_USERNAME, ACC_PASSWORD, ACC_EMAIL, ACC_LETZTER_LOGIN, ACC_PREMIUM, ACC_PAYMENT_TOKEN) 
VALUES (11, 4, 'llezemorea', '8vKZcdaI', 'mhickina@exblog.jp', to_timestamp('2021-08-27 07:03:10', 'YYYY-MM-DD HH24:MI:SS'), 1, '8a1a140183826b36dde915b02ab847adf4a708e6');
INSERT INTO ACCOUNT (ACC_ID, AL_ID, ACC_USERNAME, ACC_PASSWORD, ACC_EMAIL, ACC_LETZTER_LOGIN, ACC_PREMIUM, ACC_PAYMENT_TOKEN) 
VALUES (12, 3, 'nkirkbrideb', '3CBy0reCOoXV', 'ehulkeb@addthis.com', to_timestamp('2021-10-30 06:57:32', 'YYYY-MM-DD HH24:MI:SS'), 1, 'ec6fb013898f6229a7a38ad3903e5af36996a3aa');
INSERT INTO ACCOUNT (ACC_ID, AL_ID, ACC_USERNAME, ACC_PASSWORD, ACC_EMAIL, ACC_LETZTER_LOGIN, ACC_PREMIUM, ACC_PAYMENT_TOKEN) 
VALUES (13, 2, 'sgrimwadc', 'Eg20sJOxbs', 'mcobelloc@amazonaws.com', to_timestamp('2021-07-13 14:17:06', 'YYYY-MM-DD HH24:MI:SS'), 1, '00eeb82ea0c7462d1bf06ee39efb531459c65cda');
INSERT INTO ACCOUNT (ACC_ID, AL_ID, ACC_USERNAME, ACC_PASSWORD, ACC_EMAIL, ACC_LETZTER_LOGIN, ACC_PREMIUM, ACC_PAYMENT_TOKEN) 
VALUES (14, 3, 'lthreshd', 'JVDJIVthCo9f', 'ebarberad@adobe.com', to_timestamp('2021-11-02 06:57:32', 'YYYY-MM-DD HH24:MI:SS'), 1, 'e7c8296655d58678fa4ce63ad468f07e44a5f5a1');
INSERT INTO ACCOUNT (ACC_ID, AL_ID, ACC_USERNAME, ACC_PASSWORD, ACC_EMAIL, ACC_LETZTER_LOGIN, ACC_PREMIUM, ACC_PAYMENT_TOKEN) 
VALUES (15, 4, 'pholmese', 'wuJWBF', 'jwoodere@list-manage.com', to_timestamp('2021-09-05 22:54:43', 'YYYY-MM-DD HH24:MI:SS'), 1, '4129658a6a43efca3eb5b036603ead7783bc59ce');
INSERT INTO ACCOUNT (ACC_ID, AL_ID, ACC_USERNAME, ACC_PASSWORD, ACC_EMAIL, ACC_LETZTER_LOGIN, ACC_PREMIUM, ACC_PAYMENT_TOKEN) 
VALUES (16, 3, 'areddyf', 'N58ME93g6BI', 'cshottonf@amazon.de', to_timestamp('2021-03-10 11:52:46', 'YYYY-MM-DD HH24:MI:SS'), 0, 'a16227ef49f64c0316436734b10fbd95847930ff');
INSERT INTO ACCOUNT (ACC_ID, AL_ID, ACC_USERNAME, ACC_PASSWORD, ACC_EMAIL, ACC_LETZTER_LOGIN, ACC_PREMIUM, ACC_PAYMENT_TOKEN) 
VALUES (17, 2, 'ipunchg', 'EZhi5f7VDaq', 'ebracknallg@technorati.com', to_timestamp('2021-01-18 11:45:41', 'YYYY-MM-DD HH24:MI:SS'), 1, 'ba7715050c110dd26276f1d723cf39f5562af20e');
INSERT INTO ACCOUNT (ACC_ID, AL_ID, ACC_USERNAME, ACC_PASSWORD, ACC_EMAIL, ACC_LETZTER_LOGIN, ACC_PREMIUM, ACC_PAYMENT_TOKEN) 
VALUES (18, 1, 'kcoulsenh', 'ZYco1Ys7S', 'zclaisseh@blog.com', to_timestamp('2021-07-11 02:27:01', 'YYYY-MM-DD HH24:MI:SS'), 1, 'a94c18844d114936172f09a3969662656cbf87b0');
INSERT INTO ACCOUNT (ACC_ID, AL_ID, ACC_USERNAME, ACC_PASSWORD, ACC_EMAIL, ACC_LETZTER_LOGIN, ACC_PREMIUM, ACC_PAYMENT_TOKEN) 
VALUES (19, 2, 'cjaimezi', 'o6ZZ0D', 'sbartkei@cnn.com', to_timestamp('2021-01-07 12:07:26', 'YYYY-MM-DD HH24:MI:SS'), 1, '75f5b2d1a38914bb59e405e6ca0eee8c205b4a94');
INSERT INTO ACCOUNT (ACC_ID, AL_ID, ACC_USERNAME, ACC_PASSWORD, ACC_EMAIL, ACC_LETZTER_LOGIN, ACC_PREMIUM, ACC_PAYMENT_TOKEN) 
VALUES (20, 2, 'ifullej', 'CpcKLE', 'kallcottj@booking.com', to_timestamp('2021-05-01 16:02:23', 'YYYY-MM-DD HH24:MI:SS'), 1, '126d1df38b226e39027ce0f2b9b5182bfcb3af10');

/*USER_TO_ADMIN*/
INSERT INTO USER_TO_ADMIN (ACC_ID, AD_ID) VALUES (2,2);
INSERT INTO USER_TO_ADMIN (ACC_ID, AD_ID) VALUES (1,4);
INSERT INTO USER_TO_ADMIN (ACC_ID, AD_ID) VALUES (3,1);
INSERT INTO USER_TO_ADMIN (ACC_ID, AD_ID) VALUES (7,1);
INSERT INTO USER_TO_ADMIN (ACC_ID, AD_ID) VALUES (11,3);

/*CHATROOM*/
INSERT INTO CHATROOM (CR_ID, CR_TOPIC, CR_DATE_OF_CREATION, AL_ID) 
VALUES (1, 'Tech-News', to_timestamp('2021-01-27 03:13:05', 'YYYY-MM-DD HH24:MI:SS'), 1);
INSERT INTO CHATROOM (CR_ID, CR_TOPIC, CR_DATE_OF_CREATION, AL_ID) 
VALUES (2, 'Kaffeerunde', to_timestamp('2021-01-27 04:00:05', 'YYYY-MM-DD HH24:MI:SS'), 1);
INSERT INTO CHATROOM (CR_ID, CR_TOPIC, CR_DATE_OF_CREATION, AL_ID) 
VALUES (3, 'strategy planning', to_timestamp('2021-03-02 03:36:42', 'YYYY-MM-DD HH24:MI:SS'), 3);

/*CHATROOM_NACHRICHT*/
INSERT INTO CHATROOM_NACHRICHT (CRN_ID, ACC_ID, CRN_DATE_OF_CREATION, CR_ID, CRN_INHALT) 
VALUES (1, 2, to_timestamp('2021-03-02 03:36:42', 'YYYY-MM-DD HH24:MI:SS'), 3, 'Hello everybody, this chatroom will be used for planning attacks on other alliances.');
INSERT INTO CHATROOM_NACHRICHT (CRN_ID, ACC_ID, CRN_DATE_OF_CREATION, CR_ID, CRN_INHALT) 
VALUES (2, 12, to_timestamp('2021-03-02 03:40:42', 'YYYY-MM-DD HH24:MI:SS'), 3, 'Wouldnâ€™t it be easier, to use a forum for that?');
INSERT INTO CHATROOM_NACHRICHT (CRN_ID, ACC_ID, CRN_DATE_OF_CREATION, CR_ID, CRN_INHALT) 
VALUES (3, 2, to_timestamp('2021-03-02 03:42:42', 'YYYY-MM-DD HH24:MI:SS'), 3, 'As of now, I think a simple chat room will be enough, because we wonâ€™t have multiple concurrent attacks going, I think');
INSERT INTO CHATROOM_NACHRICHT (CRN_ID, ACC_ID, CRN_DATE_OF_CREATION, CR_ID, CRN_INHALT) 
VALUES (4, 14, to_timestamp('2021-03-02 03:43:42', 'YYYY-MM-DD HH24:MI:SS'), 3, 'Yes, I think so too.');
INSERT INTO CHATROOM_NACHRICHT (CRN_ID, ACC_ID, CRN_DATE_OF_CREATION, CR_ID, CRN_INHALT) 
VALUES (5, 2, to_timestamp('2021-03-02 03:45:42', 'YYYY-MM-DD HH24:MI:SS'), 3, 'If a chatroom is not enough, we can migrate to a forum, but for now we will keep the discussion here.');
INSERT INTO CHATROOM_NACHRICHT (CRN_ID, ACC_ID, CRN_DATE_OF_CREATION, CR_ID, CRN_INHALT) 
VALUES (6, 12, to_timestamp('2021-03-02 03:51:42', 'YYYY-MM-DD HH24:MI:SS'), 3, 'ok.');
INSERT INTO CHATROOM_NACHRICHT (CRN_ID, ACC_ID, CRN_DATE_OF_CREATION, CR_ID, CRN_INHALT) 
VALUES (7, 5, to_timestamp('2021-03-02 03:53:42', 'YYYY-MM-DD HH24:MI:SS'), 3, 'I think, we should attack the definitely not cops alliance ');
INSERT INTO CHATROOM_NACHRICHT (CRN_ID, ACC_ID, CRN_DATE_OF_CREATION, CR_ID, CRN_INHALT) 
VALUES (8, 12, to_timestamp('2021-03-02 03:55:42', 'YYYY-MM-DD HH24:MI:SS'), 3, 'I donâ€™t think, this is a good idea. The only have some small castles, which are also really far away.');
INSERT INTO CHATROOM_NACHRICHT (CRN_ID, ACC_ID, CRN_DATE_OF_CREATION, CR_ID, CRN_INHALT) 
VALUES (9, 14, to_timestamp('2021-03-02 03:59:42', 'YYYY-MM-DD HH24:MI:SS'), 3, 'Yep, I donâ€™t think, they are a real threat right now.');
INSERT INTO CHATROOM_NACHRICHT (CRN_ID, ACC_ID, CRN_DATE_OF_CREATION, CR_ID, CRN_INHALT) 
VALUES (10, 1, to_timestamp('2021-01-27 04:20:05', 'YYYY-MM-DD HH24:MI:SS'), 2, 'Moin, das hier ist einfach ein entspannter Chatroom, in dem man Ã¼ber alles mÃ¶gliche reden kann.');
INSERT INTO CHATROOM_NACHRICHT (CRN_ID, ACC_ID, CRN_DATE_OF_CREATION, CR_ID, CRN_INHALT) 
VALUES (11, 6, to_timestamp('2021-01-27 04:21:05', 'YYYY-MM-DD HH24:MI:SS'), 2, 'Cool.');
INSERT INTO CHATROOM_NACHRICHT (CRN_ID, ACC_ID, CRN_DATE_OF_CREATION, CR_ID, CRN_INHALT) 
VALUES (12, 18, to_timestamp('2021-01-27 04:23:05', 'YYYY-MM-DD HH24:MI:SS'), 2, 'Was macht ihr so beruflich?');
INSERT INTO CHATROOM_NACHRICHT (CRN_ID, ACC_ID, CRN_DATE_OF_CREATION, CR_ID, CRN_INHALT) 
VALUES (13, 1, to_timestamp('2021-01-27 04:32:05', 'YYYY-MM-DD HH24:MI:SS'), 2, 'Bin Student.');
INSERT INTO CHATROOM_NACHRICHT (CRN_ID, ACC_ID, CRN_DATE_OF_CREATION, CR_ID, CRN_INHALT) 
VALUES (14, 6, to_timestamp('2021-01-27 04:34:05', 'YYYY-MM-DD HH24:MI:SS'), 2, 'Jo, ich auch.');
INSERT INTO CHATROOM_NACHRICHT (CRN_ID, ACC_ID, CRN_DATE_OF_CREATION, CR_ID, CRN_INHALT) 
VALUES (15, 18, to_timestamp('2021-01-27 04:42:05', 'YYYY-MM-DD HH24:MI:SS'), 2, 'Wow, ich auch!');
INSERT INTO CHATROOM_NACHRICHT (CRN_ID, ACC_ID, CRN_DATE_OF_CREATION, CR_ID, CRN_INHALT) 
VALUES (16, 18, to_timestamp('2021-01-27 04:45:05', 'YYYY-MM-DD HH24:MI:SS'), 2, 'Was studiert ihr denn so?');
INSERT INTO CHATROOM_NACHRICHT (CRN_ID, ACC_ID, CRN_DATE_OF_CREATION, CR_ID, CRN_INHALT) 
VALUES (17, 6, to_timestamp('2021-01-27 04:51:05', 'YYYY-MM-DD HH24:MI:SS'), 2, 'Soziale Arbeit.');
INSERT INTO CHATROOM_NACHRICHT (CRN_ID, ACC_ID, CRN_DATE_OF_CREATION, CR_ID, CRN_INHALT) 
VALUES (18, 18, to_timestamp('2021-01-27 04:52:05', 'YYYY-MM-DD HH24:MI:SS'), 2, 'Das ist ziemlich cool.');
INSERT INTO CHATROOM_NACHRICHT (CRN_ID, ACC_ID, CRN_DATE_OF_CREATION, CR_ID, CRN_INHALT) 
VALUES (19, 1, to_timestamp('2021-01-27 04:53:05', 'YYYY-MM-DD HH24:MI:SS'), 2, 'Ich studiere Physik.');
INSERT INTO CHATROOM_NACHRICHT (CRN_ID, ACC_ID, CRN_DATE_OF_CREATION, CR_ID, CRN_INHALT) 
VALUES (20, 18, to_timestamp('2021-01-27 04:56:05', 'YYYY-MM-DD HH24:MI:SS'), 2, 'Respekt.');

/*CHATNACHRICHT*/
INSERT INTO CHATNACHRICHT (CN_ID, ACC_ID, ACC_ACC_ID, CN_INHALT, CN_DATE_OF_CREATION) 
VALUES (1, 1, 2, 'Hallo', to_timestamp('2021-07-07 16:34:26', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO CHATNACHRICHT (CN_ID, ACC_ID, ACC_ACC_ID, CN_INHALT, CN_DATE_OF_CREATION) 
VALUES (2, 2, 1, 'Kennen wir uns?', to_timestamp('2021-07-07 16:35:26', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO CHATNACHRICHT (CN_ID, ACC_ID, ACC_ACC_ID, CN_INHALT, CN_DATE_OF_CREATION) 
VALUES (3, 1, 2, 'Bisher nicht.', to_timestamp('2021-07-07 16:40:26', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO CHATNACHRICHT (CN_ID, ACC_ID, ACC_ACC_ID, CN_INHALT, CN_DATE_OF_CREATION) 
VALUES (4, 2, 1, 'Und das soll sich jetzt ändern?', to_timestamp('2021-07-07 16:44:26', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO CHATNACHRICHT (CN_ID, ACC_ID, ACC_ACC_ID, CN_INHALT, CN_DATE_OF_CREATION) 
VALUES (5, 1, 2, 'Hatte ich mir so vorgestellt.', to_timestamp('2021-07-07 16:45:26', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO CHATNACHRICHT (CN_ID, ACC_ID, ACC_ACC_ID, CN_INHALT, CN_DATE_OF_CREATION) 
VALUES (6, 2, 1, 'Interessant.', to_timestamp('2021-07-07 16:50:26', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO CHATNACHRICHT (CN_ID, ACC_ID, ACC_ACC_ID, CN_INHALT, CN_DATE_OF_CREATION) 
VALUES (7, 3, 12, 'Hi, wie war die Vorlesung?', to_timestamp('2021-10-28 16:57:32', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO CHATNACHRICHT (CN_ID, ACC_ID, ACC_ACC_ID, CN_INHALT, CN_DATE_OF_CREATION) 
VALUES (8, 12, 3, 'Joa, war ganz interessant.', to_timestamp('2021-10-28 16:58:32', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO CHATNACHRICHT (CN_ID, ACC_ID, ACC_ACC_ID, CN_INHALT, CN_DATE_OF_CREATION) 
VALUES (9, 3, 12, 'Hab ich was verpasst?', to_timestamp('2021-10-28 17:02:32', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO CHATNACHRICHT (CN_ID, ACC_ID, ACC_ACC_ID, CN_INHALT, CN_DATE_OF_CREATION) 
VALUES (10, 3, 12, 'Hat sie was zur Prüfungsvorbereitung gesagt.', to_timestamp('2021-10-28 17:04:32', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO CHATNACHRICHT (CN_ID, ACC_ID, ACC_ACC_ID, CN_INHALT, CN_DATE_OF_CREATION) 
VALUES (11, 12, 3, 'Ne.', to_timestamp('2021-10-28 17:06:32', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO CHATNACHRICHT (CN_ID, ACC_ID, ACC_ACC_ID, CN_INHALT, CN_DATE_OF_CREATION) 
VALUES (12, 3, 12, 'Okay, dann hab ich ja nochmal Glück gehabt.', to_timestamp('2021-10-28 17:08:32', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO CHATNACHRICHT (CN_ID, ACC_ID, ACC_ACC_ID, CN_INHALT, CN_DATE_OF_CREATION) 
VALUES (13, 12, 14, 'Hey, have you any experience with the boost packs from the ingame shop?', to_timestamp('2021-10-29 09:08:32', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO CHATNACHRICHT (CN_ID, ACC_ID, ACC_ACC_ID, CN_INHALT, CN_DATE_OF_CREATION) 
VALUES (14, 14, 12, 'No, not really.', to_timestamp('2021-10-29 09:10:32', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO CHATNACHRICHT (CN_ID, ACC_ID, ACC_ACC_ID, CN_INHALT, CN_DATE_OF_CREATION) 
VALUES (15, 14, 12, 'Why are you asking.', to_timestamp('2021-10-29 09:12:32', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO CHATNACHRICHT (CN_ID, ACC_ID, ACC_ACC_ID, CN_INHALT, CN_DATE_OF_CREATION) 
VALUES (16, 12, 14, 'Was thinking about purchasing a general booster, to boost the production in all of my castles..', to_timestamp('2021-10-29 09:14:32', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO CHATNACHRICHT (CN_ID, ACC_ID, ACC_ACC_ID, CN_INHALT, CN_DATE_OF_CREATION) 
VALUES (17, 14, 12, 'Wow, that sounds usefull.', to_timestamp('2021-10-29 09:16:32', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO CHATNACHRICHT (CN_ID, ACC_ID, ACC_ACC_ID, CN_INHALT, CN_DATE_OF_CREATION) 
VALUES (18, 12, 14, 'Yeah, thought so too.', to_timestamp('2021-10-29 09:17:32', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO CHATNACHRICHT (CN_ID, ACC_ID, ACC_ACC_ID, CN_INHALT, CN_DATE_OF_CREATION) 
VALUES (19, 14, 12, 'Could you keep me updated, if it is worth it?', to_timestamp('2021-10-29 09:19:32', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO CHATNACHRICHT (CN_ID, ACC_ID, ACC_ACC_ID, CN_INHALT, CN_DATE_OF_CREATION) 
VALUES (20, 12, 14, 'Will do.', to_timestamp('2021-10-29 09:21:32', 'YYYY-MM-DD HH24:MI:SS'));

/*FORUM*/
INSERT INTO FORUM (FO_ID, AL_ID, FO_DATE_OF_CREATION, FO_TOPIC) 
VALUES (1, 3, to_timestamp('2021-03-04 03:36:42', 'YYYY-MM-DD HH24:MI:SS'), 'understand xkcd');
INSERT INTO FORUM (FO_ID, AL_ID, FO_DATE_OF_CREATION, FO_TOPIC) 
VALUES (2, 3, to_timestamp('2021-04-28 03:37:42', 'YYYY-MM-DD HH24:MI:SS'), 'character analysis');
INSERT INTO FORUM (FO_ID, AL_ID, FO_DATE_OF_CREATION, FO_TOPIC) 
VALUES (3, 1, to_timestamp('2021-03-25 03:13:05', 'YYYY-MM-DD HH24:MI:SS'), 'Raketenwissenschaft');
INSERT INTO FORUM (FO_ID, AL_ID, FO_DATE_OF_CREATION, FO_TOPIC) 
VALUES (4, 1, to_timestamp('2021-03-25 03:13:05', 'YYYY-MM-DD HH24:MI:SS'), 'Allianz-Angriffsplanung');
INSERT INTO FORUM (FO_ID, AL_ID, FO_DATE_OF_CREATION, FO_TOPIC) 
VALUES (5, 2, to_timestamp('2021-12-11 17:02:24', 'YYYY-MM-DD HH24:MI:SS'), 'Allianz-Angriffsplanung');
INSERT INTO FORUM (FO_ID, AL_ID, FO_DATE_OF_CREATION, FO_TOPIC) 
VALUES (6, 4, to_timestamp('2021-12-14 17:02:24', 'YYYY-MM-DD HH24:MI:SS'), 'Ways to make easy money online');

/*EINTRAG*/
INSERT INTO EINTRAG (FO_ID, EI_ID, ACC_ID, EI_TITEL, EI_INALT, EI_DATE_OF_CREATION) 
VALUES (1, 1, 8, 'question about 208', 'What excatly is perl? Is this some kind of comic expression, like „BANG“?', to_timestamp('2021-03-04 03:36:42', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO EINTRAG (FO_ID, EI_ID, ACC_ID, EI_TITEL, EI_INALT, EI_DATE_OF_CREATION) 
VALUES (1, 2, 12, 'best xkcd about programming', 'What the title says, just curious to hear about your favorite xckd’s about programming', to_timestamp('2021-04-28 03:37:42', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO EINTRAG (FO_ID, EI_ID, ACC_ID, EI_TITEL, EI_INALT, EI_DATE_OF_CREATION) 
VALUES (2, 3, 14, 'So, is cueball Randall or not?', 'Some of the comics seem to have a really personal touch about them, so I’m wondering about what the title says.', to_timestamp('2021-03-25 03:13:05', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO EINTRAG (FO_ID, EI_ID, ACC_ID, EI_TITEL, EI_INALT, EI_DATE_OF_CREATION) 
VALUES (3, 4, 6, 'Warum Raketen?', 'Wir haben genug Probleme auf der Erde, warum wird so viel in Weltraumforschung investiert?', to_timestamp('2021-03-25 03:13:05', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO EINTRAG (FO_ID, EI_ID, ACC_ID, EI_TITEL, EI_INALT, EI_DATE_OF_CREATION) 
VALUES (3, 5, 18, 'Ist SpaceX oder Blue Origin revolutionärer?', 'Blue Origin hat ja ganz gute Ideen, aber SpaceX ist meiner Meinung nach einfach zehn Schritte weiter. Wie seht ihr das?', to_timestamp('2021-12-11 17:02:24', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO EINTRAG (FO_ID, EI_ID, ACC_ID, EI_TITEL, EI_INALT, EI_DATE_OF_CREATION) 
VALUES (5, 6, 7, 'Attack the xkcd alliance?', 'The xkcd-alliance holds some strategically important positions, maybe we should attack them.', to_timestamp('2021-12-14 17:02:24', 'YYYY-MM-DD HH24:MI:SS'));

/*KOMMENTAR*/
INSERT INTO KOMMENTAR (KO_ID, EI_ID, ACC_ID, KO_INHALT, KO_DATE_OF_CREATION) 
VALUES (1, 1, 5, 'It is a programming language.', to_timestamp('2021-03-04 03:38:42', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO KOMMENTAR (KO_ID, EI_ID, ACC_ID, KO_INHALT, KO_DATE_OF_CREATION) 
VALUES (2, 1, 8, 'Okay, but how does it relate to regular expressions (and by the way: what are regular expressions?) I don’t get it', to_timestamp('2021-03-04 03:39:42', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO KOMMENTAR (KO_ID, EI_ID, ACC_ID, KO_INHALT, KO_DATE_OF_CREATION) 
VALUES (3, 1, 12, 'Did you hear about GOOGLE? You can search stuff with it. Instead of asking stupid questions.', to_timestamp('2021-03-04 03:40:31', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO KOMMENTAR (KO_ID, EI_ID, ACC_ID, KO_INHALT, KO_DATE_OF_CREATION) 
VALUES (4, 1, 2, 'This forum is for asking questions, which is precisely what the poster did, so please be nice.', to_timestamp('2021-03-04 03:41:32', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO KOMMENTAR (KO_ID, EI_ID, ACC_ID, KO_INHALT, KO_DATE_OF_CREATION) 
VALUES (5, 1, 5, 'A regular expression is a kind of pattern, which you can use to search large texts without doing all the manual work. Perl is often regarded as being a very efficient programming language, if it comes to evaluating regular expressions.', to_timestamp('2021-03-04 03:43:32', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO KOMMENTAR (KO_ID, EI_ID, ACC_ID, KO_INHALT, KO_DATE_OF_CREATION) 
VALUES (6, 1, 8, 'Ah, okay, that sound really usefull, I should try to learn something about that. Thank you so much.', to_timestamp('2021-03-04 03:44:32', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO KOMMENTAR (KO_ID, EI_ID, ACC_ID, KO_INHALT, KO_DATE_OF_CREATION) 
VALUES (7, 1, 5, 'Believe me, it is :)', to_timestamp('2021-03-04 03:45:32', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO KOMMENTAR (KO_ID, EI_ID, ACC_ID, KO_INHALT, KO_DATE_OF_CREATION) 
VALUES (8, 2, 5, 'I like 208. The framing of knowing regular expressions beeing like a superpower is really funny to me.', to_timestamp('2021-04-28 03:38:42', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO KOMMENTAR (KO_ID, EI_ID, ACC_ID, KO_INHALT, KO_DATE_OF_CREATION) 
VALUES (9, 2, 14, 'I think 378 is also really funny. The absurdity of it mimics the holy wars beeing fought over what being a „real“ programmer means really perfectly.', to_timestamp('2021-04-28 03:42:42', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO KOMMENTAR (KO_ID, EI_ID, ACC_ID, KO_INHALT, KO_DATE_OF_CREATION) 
VALUES (10, 2, 12, 'Well everybody knows, that emacs is obviously the superior text editor…', to_timestamp('2021-04-28 03:43:42', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO KOMMENTAR (KO_ID, EI_ID, ACC_ID, KO_INHALT, KO_DATE_OF_CREATION) 
VALUES (11, 2, 5, 'Oh, please don’t get me started..', to_timestamp('2021-04-28 04:21:42', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO KOMMENTAR (KO_ID, EI_ID, ACC_ID, KO_INHALT, KO_DATE_OF_CREATION) 
VALUES (12, 2, 5, 'Do you honestly like the keybindings of emacs? What is wrong with you?', to_timestamp('2021-04-28 04:22:42', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO KOMMENTAR (KO_ID, EI_ID, ACC_ID, KO_INHALT, KO_DATE_OF_CREATION) 
VALUES (13, 2, 5, 'Are you some kind of masochist?', to_timestamp('2021-04-28 04:23:00', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO KOMMENTAR (KO_ID, EI_ID, ACC_ID, KO_INHALT, KO_DATE_OF_CREATION) 
VALUES (14, 2, 14, 'Case and point.', to_timestamp('2021-04-28 04:24:42', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO KOMMENTAR (KO_ID, EI_ID, ACC_ID, KO_INHALT, KO_DATE_OF_CREATION) 
VALUES (15, 2, 2, 'Okay, everybody calm down now.', to_timestamp('2021-04-28 04:26:42', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO KOMMENTAR (KO_ID, EI_ID, ACC_ID, KO_INHALT, KO_DATE_OF_CREATION) 
VALUES (16, 2, 16, 'Was pretty funny though..', to_timestamp('2021-04-28 04:28:42', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO KOMMENTAR (KO_ID, EI_ID, ACC_ID, KO_INHALT, KO_DATE_OF_CREATION) 
VALUES (17, 3, 12, 'Yeah, obviously.', to_timestamp('2021-03-25 03:14:05', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO KOMMENTAR (KO_ID, EI_ID, ACC_ID, KO_INHALT, KO_DATE_OF_CREATION) 
VALUES (18, 3, 14, 'Care to elaborate?', to_timestamp('2021-03-25 03:15:05', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO KOMMENTAR (KO_ID, EI_ID, ACC_ID, KO_INHALT, KO_DATE_OF_CREATION) 
VALUES (19, 3, 12, 'Cueball seems way to have way too much of a personality, to just be the generic everyman.', to_timestamp('2021-03-25 03:16:05', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO KOMMENTAR (KO_ID, EI_ID, ACC_ID, KO_INHALT, KO_DATE_OF_CREATION) 
VALUES (20, 3, 14, 'Hmm, yeah, he really seems to have quite a personality, but it changes too often to really refelct the values of randall.', to_timestamp('2021-03-25 03:17:05', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO KOMMENTAR (KO_ID, EI_ID, ACC_ID, KO_INHALT, KO_DATE_OF_CREATION) 
VALUES (21, 3, 14, 'I think, generally it leans into randall personal values but changes, according to the narrative needs of the comicstrip.', to_timestamp('2021-03-25 03:18:05', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO KOMMENTAR (KO_ID, EI_ID, ACC_ID, KO_INHALT, KO_DATE_OF_CREATION) 
VALUES (22, 3, 12, 'Not convinced.', to_timestamp('2021-03-25 03:19:05', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO KOMMENTAR (KO_ID, EI_ID, ACC_ID, KO_INHALT, KO_DATE_OF_CREATION) 
VALUES (23, 3, 14, 'Okay, you don’t need to be, but this is a discussion forum, it is for discussion.', to_timestamp('2021-03-25 04:13:05', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO KOMMENTAR (KO_ID, EI_ID, ACC_ID, KO_INHALT, KO_DATE_OF_CREATION) 
VALUES (24, 3, 5, 'Jeez, here we go again…', to_timestamp('2021-03-25 04:14:05', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO KOMMENTAR (KO_ID, EI_ID, ACC_ID, KO_INHALT, KO_DATE_OF_CREATION) 
VALUES (25, 3, 12, 'You shut up and play your little game of vim.', to_timestamp('2021-03-25 04:16:05', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO KOMMENTAR (KO_ID, EI_ID, ACC_ID, KO_INHALT, KO_DATE_OF_CREATION) 
VALUES (26, 6, 10, 'Sounds good, when shall we attack?', to_timestamp('2021-12-14 17:02:24', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO KOMMENTAR (KO_ID, EI_ID, ACC_ID, KO_INHALT, KO_DATE_OF_CREATION) 
VALUES (27, 6, 13, 'Well, I can do next tuesday', to_timestamp('2021-12-14 17:10:24', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO KOMMENTAR (KO_ID, EI_ID, ACC_ID, KO_INHALT, KO_DATE_OF_CREATION) 
VALUES (28, 6, 17, 'Next tuesday sounds good.', to_timestamp('2021-12-14 17:18:24', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO KOMMENTAR (KO_ID, EI_ID, ACC_ID, KO_INHALT, KO_DATE_OF_CREATION) 
VALUES (29, 6, 19, 'Yeah for me too.', to_timestamp('2021-12-14 17:23:24', 'YYYY-MM-DD HH24:MI:SS'));

/* ITEM */
INSERT INTO ITEM(item_id,item_name,item_beschreibung,item_preis,item_verkaufbar)
VALUES (1,'general booster (20 h)','boosted die produktion aller rohstoffe fuer 20 stunden',10,0);
INSERT INTO ITEM(item_id,item_name,item_beschreibung,item_preis,item_verkaufbar)
VALUES (2,'general booster (10 h)','boosted die produktion aller rohstoffe fuer 10 stunden',7,0);
INSERT INTO ITEM(item_id,item_name,item_beschreibung,item_preis,item_verkaufbar)
VALUES (3,'general booster (1 h)','boosted die produktion aller rohstoffe fuer 1 stunden',2,1);
INSERT INTO ITEM(item_id,item_name,item_beschreibung,item_preis,item_verkaufbar)
VALUES (4,'lehm booster (40 h)','boosted die lehm produktion fuer 40 stunden',9,0);
INSERT INTO ITEM(item_id,item_name,item_beschreibung,item_preis,item_verkaufbar)
VALUES (5,'lehm booster (20 h)','boosted die lehm produktion fuer 20 stunden',6,0);
INSERT INTO ITEM(item_id,item_name,item_beschreibung,item_preis,item_verkaufbar)
VALUES (6,'lehm booster (2 h)','boosted die lehm produktion fuer 2 stunden',1,1);
INSERT INTO ITEM(item_id,item_name,item_beschreibung,item_preis,item_verkaufbar)
VALUES (7,'eisen booster (40 h)','boosted die lehm produktion fuer 40 stunden',9,0);
INSERT INTO ITEM(item_id,item_name,item_beschreibung,item_preis,item_verkaufbar)
VALUES (8,'eisen booster (20 h)','boosted die lehm produktion fuer 20 stunden',6,0);
INSERT INTO ITEM(item_id,item_name,item_beschreibung,item_preis,item_verkaufbar)
VALUES (9,'eisen booster (2 h)','boosted die lehm produktion fuer 2 stunden',1,1);
INSERT INTO ITEM(item_id,item_name,item_beschreibung,item_preis,item_verkaufbar)
VALUES (10,'holz booster (40 h)','boosted die lehm produktion fuer 40 stunden',9,0);
INSERT INTO ITEM(item_id,item_name,item_beschreibung,item_preis,item_verkaufbar)
VALUES (11,'holz booster (20 h)','boosted die lehm produktion fuer 20 stunden',6,0);
INSERT INTO ITEM(item_id,item_name,item_beschreibung,item_preis,item_verkaufbar)
VALUES (12,'holz booster (2 h)','boosted die lehm produktion fuer 2 stunden',1,1);
INSERT INTO ITEM(item_id,item_name,item_beschreibung,item_preis,item_verkaufbar)
VALUES (13,'einheit produktion booster (10 h)','boosted die einheit produktion fuer 10 stunden',7,0);
INSERT INTO ITEM(item_id,item_name,item_beschreibung,item_preis,item_verkaufbar)
VALUES (14,'einheit produktion booster (5 h)','boosted die einheit produktion fuer 5 stunden',4,0);
INSERT INTO ITEM(item_id,item_name,item_beschreibung,item_preis,item_verkaufbar)
VALUES (15,'einheit produktion booster (1 h)','boosted die einheit produktion fuer 1 stunden',1,1);

/* ITEM_ATTRIBUT */
INSERT INTO ITEM_ATTRIBUT(ITAT_ID, ITAT_ATTRIBUTTYP, ITAT_VALUE)
VALUES(1, 'GENERAL_BOOSTER', 20);
INSERT INTO ITEM_ATTRIBUT(ITAT_ID, ITAT_ATTRIBUTTYP, ITAT_VALUE)
VALUES(2, 'GENERAL_BOOSTER', 10);
INSERT INTO ITEM_ATTRIBUT(ITAT_ID, ITAT_ATTRIBUTTYP, ITAT_VALUE)
VALUES(3, 'GENERAL_BOOSTER', 1);
INSERT INTO ITEM_ATTRIBUT(ITAT_ID, ITAT_ATTRIBUTTYP, ITAT_VALUE)
VALUES(4, 'LEHM_BOOSTER', 40);
INSERT INTO ITEM_ATTRIBUT(ITAT_ID, ITAT_ATTRIBUTTYP, ITAT_VALUE)
VALUES(5, 'LEHM_BOOSTER', 20);
INSERT INTO ITEM_ATTRIBUT(ITAT_ID, ITAT_ATTRIBUTTYP, ITAT_VALUE)
VALUES(6, 'LEHM_BOOSTER', 2);
INSERT INTO ITEM_ATTRIBUT(ITAT_ID, ITAT_ATTRIBUTTYP, ITAT_VALUE)
VALUES(7, 'EISEN_BOOSTER', 40);
INSERT INTO ITEM_ATTRIBUT(ITAT_ID, ITAT_ATTRIBUTTYP, ITAT_VALUE)
VALUES(8, 'EISEN_BOOSTER', 20);
INSERT INTO ITEM_ATTRIBUT(ITAT_ID, ITAT_ATTRIBUTTYP, ITAT_VALUE)
VALUES(9, 'EISEN_BOOSTER', 2);
INSERT INTO ITEM_ATTRIBUT(ITAT_ID, ITAT_ATTRIBUTTYP, ITAT_VALUE)
VALUES(10, 'HOLZ_BOOSTER', 40);
INSERT INTO ITEM_ATTRIBUT(ITAT_ID, ITAT_ATTRIBUTTYP, ITAT_VALUE)
VALUES(11, 'HOLZ_BOOSTER', 20);
INSERT INTO ITEM_ATTRIBUT(ITAT_ID, ITAT_ATTRIBUTTYP, ITAT_VALUE)
VALUES(12, 'HOLZ_BOOSTER', 2);
INSERT INTO ITEM_ATTRIBUT(ITAT_ID, ITAT_ATTRIBUTTYP, ITAT_VALUE)
VALUES(13, 'EINHEIT_PROD_BOOSTER', 10);
INSERT INTO ITEM_ATTRIBUT(ITAT_ID, ITAT_ATTRIBUTTYP, ITAT_VALUE)
VALUES(14, 'EINHEIT_PROD_BOOSTER', 5);
INSERT INTO ITEM_ATTRIBUT(ITAT_ID, ITAT_ATTRIBUTTYP, ITAT_VALUE)
VALUES(15, 'EINHEIT_PROD_BOOSTER', 1);

/* ATTRIBUT_TO_ITEM */
INSERT INTO ATTRIBUT_TO_ITEM(ITEM_ID, ITAT_ID)
VALUES(1,1);
INSERT INTO ATTRIBUT_TO_ITEM(ITEM_ID, ITAT_ID)
VALUES(2,2);
INSERT INTO ATTRIBUT_TO_ITEM(ITEM_ID, ITAT_ID)
VALUES(3,3);
INSERT INTO ATTRIBUT_TO_ITEM(ITEM_ID, ITAT_ID)
VALUES(4,4);
INSERT INTO ATTRIBUT_TO_ITEM(ITEM_ID, ITAT_ID)
VALUES(5,5);
INSERT INTO ATTRIBUT_TO_ITEM(ITEM_ID, ITAT_ID)
VALUES(6,6);
INSERT INTO ATTRIBUT_TO_ITEM(ITEM_ID, ITAT_ID)
VALUES(7,7);
INSERT INTO ATTRIBUT_TO_ITEM(ITEM_ID, ITAT_ID)
VALUES(8,8);
INSERT INTO ATTRIBUT_TO_ITEM(ITEM_ID, ITAT_ID)
VALUES(9,9);
INSERT INTO ATTRIBUT_TO_ITEM(ITEM_ID, ITAT_ID)
VALUES(10,10);
INSERT INTO ATTRIBUT_TO_ITEM(ITEM_ID, ITAT_ID)
VALUES(11,11);
INSERT INTO ATTRIBUT_TO_ITEM(ITEM_ID, ITAT_ID)
VALUES(12,12);
INSERT INTO ATTRIBUT_TO_ITEM(ITEM_ID, ITAT_ID)
VALUES(13,13);
INSERT INTO ATTRIBUT_TO_ITEM(ITEM_ID, ITAT_ID)
VALUES(14,14);
INSERT INTO ATTRIBUT_TO_ITEM(ITEM_ID, ITAT_ID)
VALUES(15,15);

/* ACCOUNT_TO_ITEM */
INSERT INTO ACCOUNT_TO_ITEM(acc_id,item_id,anzahl)
VALUES (1,11,28);
INSERT INTO ACCOUNT_TO_ITEM(acc_id,item_id,anzahl)
VALUES (1,12,5);
INSERT INTO ACCOUNT_TO_ITEM(acc_id,item_id,anzahl)
VALUES (2,4,16);
INSERT INTO ACCOUNT_TO_ITEM(acc_id,item_id,anzahl)
VALUES (2,6,13);
INSERT INTO ACCOUNT_TO_ITEM(acc_id,item_id,anzahl)
VALUES (2,1,27);
INSERT INTO ACCOUNT_TO_ITEM(acc_id,item_id,anzahl)
VALUES (3,13,21);
INSERT INTO ACCOUNT_TO_ITEM(acc_id,item_id,anzahl)
VALUES (3,3,24);
INSERT INTO ACCOUNT_TO_ITEM(acc_id,item_id,anzahl)
VALUES (8,13,7);
INSERT INTO ACCOUNT_TO_ITEM(acc_id,item_id,anzahl)
VALUES (8,5,9);
INSERT INTO ACCOUNT_TO_ITEM(acc_id,item_id,anzahl)
VALUES (12,4,8);
INSERT INTO ACCOUNT_TO_ITEM(acc_id,item_id,anzahl)
VALUES (12,14,30);
INSERT INTO ACCOUNT_TO_ITEM(acc_id,item_id,anzahl)
VALUES (17,2,12);
INSERT INTO ACCOUNT_TO_ITEM(acc_id,item_id,anzahl)
VALUES (17,7,23);
INSERT INTO ACCOUNT_TO_ITEM(acc_id,item_id,anzahl)
VALUES (18,15,6);

/* AUKTION */
INSERT INTO AUKTION(auk_id,acc_id,item_id,auk_start_datum,auk_end_datum)
VALUES (1,1,11,TO_TIMESTAMP('2021-08-03 05:33:32', 'yyyy/mm/dd hh24:mi:ss'),TO_TIMESTAMP('2020-12-24 19:49:45', 'yyyy/mm/dd hh24:mi:ss'));
INSERT INTO AUKTION(auk_id,acc_id,item_id,auk_start_datum,auk_end_datum)
VALUES (2,3,1,TO_TIMESTAMP('2021-08-03 05:33:32', 'yyyy/mm/dd hh24:mi:ss'),TO_TIMESTAMP('2020-12-24 19:49:45', 'yyyy/mm/dd hh24:mi:ss'));
INSERT INTO AUKTION(auk_id,acc_id,item_id,auk_start_datum,auk_end_datum)
VALUES (3,1,12,TO_TIMESTAMP('2021-08-03 05:33:32', 'yyyy/mm/dd hh24:mi:ss'),TO_TIMESTAMP('2020-12-24 19:49:45', 'yyyy/mm/dd hh24:mi:ss'));
INSERT INTO AUKTION(auk_id,acc_id,item_id,auk_start_datum,auk_end_datum)
VALUES (4,8,5,TO_TIMESTAMP('2021-08-03 05:33:32', 'yyyy/mm/dd hh24:mi:ss'),TO_TIMESTAMP('2020-12-24 19:49:45', 'yyyy/mm/dd hh24:mi:ss'));
INSERT INTO AUKTION(auk_id,acc_id,item_id,auk_start_datum,auk_end_datum)
VALUES (5,18,15,TO_TIMESTAMP('2021-08-03 05:33:32', 'yyyy/mm/dd hh24:mi:ss'),TO_TIMESTAMP('2020-12-24 19:49:45', 'yyyy/mm/dd hh24:mi:ss'));

/* GEBOT */
INSERT INTO GEBOT(gebot_id,acc_id,auk_id,gebot_wert)
VALUES (1,1,1,2);
INSERT INTO GEBOT(gebot_id,acc_id,auk_id,gebot_wert)
VALUES (2,2,1,4);
INSERT INTO GEBOT(gebot_id,acc_id,auk_id,gebot_wert)
VALUES (3,3,1,6);
INSERT INTO GEBOT(gebot_id,acc_id,auk_id,gebot_wert)
VALUES (4,4,1,8);
INSERT INTO GEBOT(gebot_id,acc_id,auk_id,gebot_wert)
VALUES (5,5,1,10);
INSERT INTO GEBOT(gebot_id,acc_id,auk_id,gebot_wert)
VALUES (6,6,1,12);
INSERT INTO GEBOT(gebot_id,acc_id,auk_id,gebot_wert)
VALUES (7,7,1,14);
INSERT INTO GEBOT(gebot_id,acc_id,auk_id,gebot_wert)
VALUES (8,8,1,16);
INSERT INTO GEBOT(gebot_id,acc_id,auk_id,gebot_wert)
VALUES (9,9,1,18);
INSERT INTO GEBOT(gebot_id,acc_id,auk_id,gebot_wert)
VALUES (10,2,2,3);
INSERT INTO GEBOT(gebot_id,acc_id,auk_id,gebot_wert)
VALUES (11,4,2,5);
INSERT INTO GEBOT(gebot_id,acc_id,auk_id,gebot_wert)
VALUES (12,6,2,7);
INSERT INTO GEBOT(gebot_id,acc_id,auk_id,gebot_wert)
VALUES (13,8,2,9);
INSERT INTO GEBOT(gebot_id,acc_id,auk_id,gebot_wert)
VALUES (14,10,2,11);
INSERT INTO GEBOT(gebot_id,acc_id,auk_id,gebot_wert)
VALUES (15,12,2,13);
INSERT INTO GEBOT(gebot_id,acc_id,auk_id,gebot_wert)
VALUES (16,14,2,15);
INSERT INTO GEBOT(gebot_id,acc_id,auk_id,gebot_wert)
VALUES (17,16,2,17);
INSERT INTO GEBOT(gebot_id,acc_id,auk_id,gebot_wert)
VALUES (18,18,2,19);
INSERT INTO GEBOT(gebot_id,acc_id,auk_id,gebot_wert)
VALUES (19,2,2,21);
INSERT INTO GEBOT(gebot_id,acc_id,auk_id,gebot_wert)
VALUES (20,4,2,23);
INSERT INTO GEBOT(gebot_id,acc_id,auk_id,gebot_wert)
VALUES (21,6,2,25);
INSERT INTO GEBOT(gebot_id,acc_id,auk_id,gebot_wert)
VALUES (22,8,2,27);
INSERT INTO GEBOT(gebot_id,acc_id,auk_id,gebot_wert)
VALUES (23,11,3,3);
INSERT INTO GEBOT(gebot_id,acc_id,auk_id,gebot_wert)
VALUES (24,14,3,6);
INSERT INTO GEBOT(gebot_id,acc_id,auk_id,gebot_wert)
VALUES (25,17,3,9);
INSERT INTO GEBOT(gebot_id,acc_id,auk_id,gebot_wert)
VALUES (26,3,3,12);
INSERT INTO GEBOT(gebot_id,acc_id,auk_id,gebot_wert)
VALUES (27,5,3,15);
INSERT INTO GEBOT(gebot_id,acc_id,auk_id,gebot_wert)
VALUES (28,7,3,18);
INSERT INTO GEBOT(gebot_id,acc_id,auk_id,gebot_wert)
VALUES (29,9,3,21);
INSERT INTO GEBOT(gebot_id,acc_id,auk_id,gebot_wert)
VALUES (30,11,3,24);
INSERT INTO GEBOT(gebot_id,acc_id,auk_id,gebot_wert)
VALUES (31,13,3,27);
INSERT INTO GEBOT(gebot_id,acc_id,auk_id,gebot_wert)
VALUES (32,1,4,4);
INSERT INTO GEBOT(gebot_id,acc_id,auk_id,gebot_wert)
VALUES (33,2,4,8);
INSERT INTO GEBOT(gebot_id,acc_id,auk_id,gebot_wert)
VALUES (34,3,4,12);
INSERT INTO GEBOT(gebot_id,acc_id,auk_id,gebot_wert)
VALUES (35,4,4,16);
INSERT INTO GEBOT(gebot_id,acc_id,auk_id,gebot_wert)
VALUES (36,5,4,20);
INSERT INTO GEBOT(gebot_id,acc_id,auk_id,gebot_wert)
VALUES (37,6,4,24);
INSERT INTO GEBOT(gebot_id,acc_id,auk_id,gebot_wert)
VALUES (38,7,4,28);
INSERT INTO GEBOT(gebot_id,acc_id,auk_id,gebot_wert)
VALUES (39,8,4,32);
INSERT INTO GEBOT(gebot_id,acc_id,auk_id,gebot_wert)
VALUES (40,9,4,36);
INSERT INTO GEBOT(gebot_id,acc_id,auk_id,gebot_wert)
VALUES (41,15,5,1);
INSERT INTO GEBOT(gebot_id,acc_id,auk_id,gebot_wert)
VALUES (42,13,5,3);
INSERT INTO GEBOT(gebot_id,acc_id,auk_id,gebot_wert)
VALUES (43,2,5,5);
INSERT INTO GEBOT(gebot_id,acc_id,auk_id,gebot_wert)
VALUES (44,16,5,7);
INSERT INTO GEBOT(gebot_id,acc_id,auk_id,gebot_wert)
VALUES (45,2,5,9);
INSERT INTO GEBOT(gebot_id,acc_id,auk_id,gebot_wert)
VALUES (46,3,5,11);
INSERT INTO GEBOT(gebot_id,acc_id,auk_id,gebot_wert)
VALUES (47,8,5,13);
INSERT INTO GEBOT(gebot_id,acc_id,auk_id,gebot_wert)
VALUES (48,9,5,15);
INSERT INTO GEBOT(gebot_id,acc_id,auk_id,gebot_wert)
VALUES (49,4,5,17);
INSERT INTO GEBOT(gebot_id,acc_id,auk_id,gebot_wert)
VALUES (50,2,5,19);

/* BESTELLUNG */
INSERT INTO BESTELLUNG(best_id,acc_id,best_datum,best_wert)
VALUES (1,20,TO_TIMESTAMP('2021-09-12 01:31:57', 'yyyy/mm/dd hh24:mi:ss'),26);
INSERT INTO BESTELLUNG(best_id,acc_id,best_datum,best_wert)
VALUES (2,19,TO_TIMESTAMP('2021-04-23 17:17:06', 'yyyy/mm/dd hh24:mi:ss'),9);
INSERT INTO BESTELLUNG(best_id,acc_id,best_datum,best_wert)
VALUES (3,18,TO_TIMESTAMP('2021-04-03 21:08:56', 'yyyy/mm/dd hh24:mi:ss'),39);
INSERT INTO BESTELLUNG(best_id,acc_id,best_datum,best_wert)
VALUES (4,17,TO_TIMESTAMP('2021-01-19 15:29:09', 'yyyy/mm/dd hh24:mi:ss'),35);
INSERT INTO BESTELLUNG(best_id,acc_id,best_datum,best_wert)
VALUES (5,16,TO_TIMESTAMP('2021-06-14 18:24:51', 'yyyy/mm/dd hh24:mi:ss'),15);
INSERT INTO BESTELLUNG(best_id,acc_id,best_datum,best_wert)
VALUES (6,15,TO_TIMESTAMP('2021-01-11 17:18:01', 'yyyy/mm/dd hh24:mi:ss'),32);
INSERT INTO BESTELLUNG(best_id,acc_id,best_datum,best_wert)
VALUES (7,13,TO_TIMESTAMP('2021-11-27 22:38:22', 'yyyy/mm/dd hh24:mi:ss'),37);
INSERT INTO BESTELLUNG(best_id,acc_id,best_datum,best_wert)
VALUES (8,13,TO_TIMESTAMP('2021-01-21 16:18:42', 'yyyy/mm/dd hh24:mi:ss'),42);
INSERT INTO BESTELLUNG(best_id,acc_id,best_datum,best_wert)
VALUES (9,12,TO_TIMESTAMP('2021-10-17 01:18:00', 'yyyy/mm/dd hh24:mi:ss'),21);
INSERT INTO BESTELLUNG(best_id,acc_id,best_datum,best_wert)
VALUES (10,11,TO_TIMESTAMP('2021-01-10 05:41:45', 'yyyy/mm/dd hh24:mi:ss'),2);
INSERT INTO BESTELLUNG(best_id,acc_id,best_datum,best_wert)
VALUES (11,10,TO_TIMESTAMP('2020-12-23 10:11:03', 'yyyy/mm/dd hh24:mi:ss'),29);
INSERT INTO BESTELLUNG(best_id,acc_id,best_datum,best_wert)
VALUES (12,9,TO_TIMESTAMP('2021-02-22 03:59:38', 'yyyy/mm/dd hh24:mi:ss'),13);
INSERT INTO BESTELLUNG(best_id,acc_id,best_datum,best_wert)
VALUES (13,8,TO_TIMESTAMP('2021-10-27 02:23:17', 'yyyy/mm/dd hh24:mi:ss'),31);
INSERT INTO BESTELLUNG(best_id,acc_id,best_datum,best_wert)
VALUES (14,7,TO_TIMESTAMP('2021-09-08 17:15:30', 'yyyy/mm/dd hh24:mi:ss'),49);
INSERT INTO BESTELLUNG(best_id,acc_id,best_datum,best_wert)
VALUES (15,6,TO_TIMESTAMP('2021-06-30 19:33:21', 'yyyy/mm/dd hh24:mi:ss'),23);
INSERT INTO BESTELLUNG(best_id,acc_id,best_datum,best_wert)
VALUES (16,5,TO_TIMESTAMP('2021-06-14 10:20:45', 'yyyy/mm/dd hh24:mi:ss'),49);
INSERT INTO BESTELLUNG(best_id,acc_id,best_datum,best_wert)
VALUES (17,4,TO_TIMESTAMP('2021-01-13 19:15:37', 'yyyy/mm/dd hh24:mi:ss'),17);
INSERT INTO BESTELLUNG(best_id,acc_id,best_datum,best_wert)
VALUES (18,3,TO_TIMESTAMP('2021-03-21 07:52:36', 'yyyy/mm/dd hh24:mi:ss'),4);
INSERT INTO BESTELLUNG(best_id,acc_id,best_datum,best_wert)
VALUES (19,2,TO_TIMESTAMP('2021-04-01 16:19:45', 'yyyy/mm/dd hh24:mi:ss'),25);
INSERT INTO BESTELLUNG(best_id,acc_id,best_datum,best_wert)
VALUES (20,1,TO_TIMESTAMP('2021-09-14 18:53:54', 'yyyy/mm/dd hh24:mi:ss'),8);

/* BESTELLUNG_TO_ITEM */
INSERT INTO BESTELLUNG_TO_ITEM(best_id,item_id,BEST_ITEM_ANZAHL)
VALUES (1,15,16);
INSERT INTO BESTELLUNG_TO_ITEM(best_id,item_id,BEST_ITEM_ANZAHL)
VALUES (2,15,28);
INSERT INTO BESTELLUNG_TO_ITEM(best_id,item_id,BEST_ITEM_ANZAHL)
VALUES (3,15,1);
INSERT INTO BESTELLUNG_TO_ITEM(best_id,item_id,BEST_ITEM_ANZAHL)
VALUES (4,7,7);
INSERT INTO BESTELLUNG_TO_ITEM(best_id,item_id,BEST_ITEM_ANZAHL)
VALUES (5,13,7);
INSERT INTO BESTELLUNG_TO_ITEM(best_id,item_id,BEST_ITEM_ANZAHL)
VALUES (6,13,13);
INSERT INTO BESTELLUNG_TO_ITEM(best_id,item_id,BEST_ITEM_ANZAHL)
VALUES (7,11,23);
INSERT INTO BESTELLUNG_TO_ITEM(best_id,item_id,BEST_ITEM_ANZAHL)
VALUES (8,12,26);
INSERT INTO BESTELLUNG_TO_ITEM(best_id,item_id,BEST_ITEM_ANZAHL)
VALUES (9,12,15);
INSERT INTO BESTELLUNG_TO_ITEM(best_id,item_id,BEST_ITEM_ANZAHL)
VALUES (10,7,15);
INSERT INTO BESTELLUNG_TO_ITEM(best_id,item_id,BEST_ITEM_ANZAHL)
VALUES (11,8,12);
INSERT INTO BESTELLUNG_TO_ITEM(best_id,item_id,BEST_ITEM_ANZAHL)
VALUES (12,8,10);
INSERT INTO BESTELLUNG_TO_ITEM(best_id,item_id,BEST_ITEM_ANZAHL)
VALUES (13,7,28);
INSERT INTO BESTELLUNG_TO_ITEM(best_id,item_id,BEST_ITEM_ANZAHL)
VALUES (14,8,7);
INSERT INTO BESTELLUNG_TO_ITEM(best_id,item_id,BEST_ITEM_ANZAHL)
VALUES (15,2,21);
INSERT INTO BESTELLUNG_TO_ITEM(best_id,item_id,BEST_ITEM_ANZAHL)
VALUES (16,4,18);
INSERT INTO BESTELLUNG_TO_ITEM(best_id,item_id,BEST_ITEM_ANZAHL)
VALUES (17,4,10);
INSERT INTO BESTELLUNG_TO_ITEM(best_id,item_id,BEST_ITEM_ANZAHL)
VALUES (18,5,3);
INSERT INTO BESTELLUNG_TO_ITEM(best_id,item_id,BEST_ITEM_ANZAHL)
VALUES (19,15,1);
INSERT INTO BESTELLUNG_TO_ITEM(best_id,item_id,BEST_ITEM_ANZAHL)
VALUES (20,15,1);

/* WELT */
Insert into WELT (WELT_ID,WELT_FELD_X,WELT_FELD_Y,WELT_NAME) values ('1','500','500','UltimateCasteOriginal');
Insert into WELT (WELT_ID,WELT_FELD_X,WELT_FELD_Y,WELT_NAME) values ('2','500','500','DieFestung');
Insert into WELT (WELT_ID,WELT_FELD_X,WELT_FELD_Y,WELT_NAME) values ('3','1000','1000','DieDritte');

/* KOENIGREICH */
Insert into KOENIGREICH (KOE_WAPPEN,KOE_RUHM,KOE_ID,WELT_ID,ACC_ID) values ('10','1795','1','1','1');
Insert into KOENIGREICH (KOE_WAPPEN,KOE_RUHM,KOE_ID,WELT_ID,ACC_ID) values ('4','2981','2','1','2');
Insert into KOENIGREICH (KOE_WAPPEN,KOE_RUHM,KOE_ID,WELT_ID,ACC_ID) values ('11','2101','3','1','3');
Insert into KOENIGREICH (KOE_WAPPEN,KOE_RUHM,KOE_ID,WELT_ID,ACC_ID) values ('10','770','4','1','4');
Insert into KOENIGREICH (KOE_WAPPEN,KOE_RUHM,KOE_ID,WELT_ID,ACC_ID) values ('13','374','5','1','5');
Insert into KOENIGREICH (KOE_WAPPEN,KOE_RUHM,KOE_ID,WELT_ID,ACC_ID) values ('5','2110','6','1','6');
Insert into KOENIGREICH (KOE_WAPPEN,KOE_RUHM,KOE_ID,WELT_ID,ACC_ID) values ('13','4220','7','1','7');
Insert into KOENIGREICH (KOE_WAPPEN,KOE_RUHM,KOE_ID,WELT_ID,ACC_ID) values ('13','2247','8','1','8');
Insert into KOENIGREICH (KOE_WAPPEN,KOE_RUHM,KOE_ID,WELT_ID,ACC_ID) values ('15','252','9','1','9');
Insert into KOENIGREICH (KOE_WAPPEN,KOE_RUHM,KOE_ID,WELT_ID,ACC_ID) values ('10','619','10','1','10');
Insert into KOENIGREICH (KOE_WAPPEN,KOE_RUHM,KOE_ID,WELT_ID,ACC_ID) values ('6','2300','11','1','11');
Insert into KOENIGREICH (KOE_WAPPEN,KOE_RUHM,KOE_ID,WELT_ID,ACC_ID) values ('7','4245','12','1','12');
Insert into KOENIGREICH (KOE_WAPPEN,KOE_RUHM,KOE_ID,WELT_ID,ACC_ID) values ('15','3555','13','1','13');
Insert into KOENIGREICH (KOE_WAPPEN,KOE_RUHM,KOE_ID,WELT_ID,ACC_ID) values ('4','1835','14','1','14');
Insert into KOENIGREICH (KOE_WAPPEN,KOE_RUHM,KOE_ID,WELT_ID,ACC_ID) values ('20','4783','15','1','15');
Insert into KOENIGREICH (KOE_WAPPEN,KOE_RUHM,KOE_ID,WELT_ID,ACC_ID) values ('17','486','16','1','16');
Insert into KOENIGREICH (KOE_WAPPEN,KOE_RUHM,KOE_ID,WELT_ID,ACC_ID) values ('7','1951','17','1','17');
Insert into KOENIGREICH (KOE_WAPPEN,KOE_RUHM,KOE_ID,WELT_ID,ACC_ID) values ('7','2355','18','1','18');
Insert into KOENIGREICH (KOE_WAPPEN,KOE_RUHM,KOE_ID,WELT_ID,ACC_ID) values ('10','4485','19','1','19');
Insert into KOENIGREICH (KOE_WAPPEN,KOE_RUHM,KOE_ID,WELT_ID,ACC_ID) values ('9','3439','20','1','20');
Insert into KOENIGREICH (KOE_WAPPEN,KOE_RUHM,KOE_ID,WELT_ID,ACC_ID) values ('10','2385','21','2','1');
Insert into KOENIGREICH (KOE_WAPPEN,KOE_RUHM,KOE_ID,WELT_ID,ACC_ID) values ('6','820','22','2','2');
Insert into KOENIGREICH (KOE_WAPPEN,KOE_RUHM,KOE_ID,WELT_ID,ACC_ID) values ('3','3516','23','2','3');
Insert into KOENIGREICH (KOE_WAPPEN,KOE_RUHM,KOE_ID,WELT_ID,ACC_ID) values ('4','1532','24','2','4');
Insert into KOENIGREICH (KOE_WAPPEN,KOE_RUHM,KOE_ID,WELT_ID,ACC_ID) values ('1','2154','25','2','5');
Insert into KOENIGREICH (KOE_WAPPEN,KOE_RUHM,KOE_ID,WELT_ID,ACC_ID) values ('5','3298','26','2','6');
Insert into KOENIGREICH (KOE_WAPPEN,KOE_RUHM,KOE_ID,WELT_ID,ACC_ID) values ('1','3854','27','2','7');
Insert into KOENIGREICH (KOE_WAPPEN,KOE_RUHM,KOE_ID,WELT_ID,ACC_ID) values ('19','4698','28','2','8');
Insert into KOENIGREICH (KOE_WAPPEN,KOE_RUHM,KOE_ID,WELT_ID,ACC_ID) values ('1','1129','29','2','9');
Insert into KOENIGREICH (KOE_WAPPEN,KOE_RUHM,KOE_ID,WELT_ID,ACC_ID) values ('9','2868','30','2','10');
Insert into KOENIGREICH (KOE_WAPPEN,KOE_RUHM,KOE_ID,WELT_ID,ACC_ID) values ('20','1585','31','2','11');
Insert into KOENIGREICH (KOE_WAPPEN,KOE_RUHM,KOE_ID,WELT_ID,ACC_ID) values ('12','2584','32','2','12');
Insert into KOENIGREICH (KOE_WAPPEN,KOE_RUHM,KOE_ID,WELT_ID,ACC_ID) values ('18','4593','33','3','1');
Insert into KOENIGREICH (KOE_WAPPEN,KOE_RUHM,KOE_ID,WELT_ID,ACC_ID) values ('13','4095','34','3','2');
Insert into KOENIGREICH (KOE_WAPPEN,KOE_RUHM,KOE_ID,WELT_ID,ACC_ID) values ('17','3256','35','3','3');

/* BURG */
INSERT INTO BURG (BU_ID, KOE_ID, BU_BURGNAME, BU_LEHM, BU_EISEN, BU_HOLZ, BU_POSITION_X, BU_POSITION_Y) 
VALUES (1, 1, 'Vozhj28', 1512, 613, 962, 282, 206);

INSERT INTO BURG (BU_ID, KOE_ID, BU_BURGNAME, BU_LEHM, BU_EISEN, BU_HOLZ, BU_POSITION_X, BU_POSITION_Y) 
VALUES (2, 2, 'Fciai44', 761, 761, 1522, 320, 99);

INSERT INTO BURG (BU_ID, KOE_ID, BU_BURGNAME, BU_LEHM, BU_EISEN, BU_HOLZ, BU_POSITION_X, BU_POSITION_Y) 
VALUES (3, 3, 'Qhwpz86', 1076, 40, 346, 79, 115);

INSERT INTO BURG (BU_ID, KOE_ID, BU_BURGNAME, BU_LEHM, BU_EISEN, BU_HOLZ, BU_POSITION_X, BU_POSITION_Y) 
VALUES (4, 4, 'Umzsm48', 1913, 931, 1427, 331, 66);

INSERT INTO BURG (BU_ID, KOE_ID, BU_BURGNAME, BU_LEHM, BU_EISEN, BU_HOLZ, BU_POSITION_X, BU_POSITION_Y) 
VALUES (5, 5, 'Ahiuo21', 1965, 1167, 1297, 468, 411);

INSERT INTO BURG (BU_ID, KOE_ID, BU_BURGNAME, BU_LEHM, BU_EISEN, BU_HOLZ, BU_POSITION_X, BU_POSITION_Y) 
VALUES (6, 6, 'Ivtcs22', 360, 1721, 357, 494, 477);

INSERT INTO BURG (BU_ID, KOE_ID, BU_BURGNAME, BU_LEHM, BU_EISEN, BU_HOLZ, BU_POSITION_X, BU_POSITION_Y) 
VALUES (7, 7, 'Ferqb57', 1278, 1309, 110, 163, 71);

INSERT INTO BURG (BU_ID, KOE_ID, BU_BURGNAME, BU_LEHM, BU_EISEN, BU_HOLZ, BU_POSITION_X, BU_POSITION_Y) 
VALUES (8, 8, 'Bbwwu39', 689, 1302, 593, 344, 452);

INSERT INTO BURG (BU_ID, KOE_ID, BU_BURGNAME, BU_LEHM, BU_EISEN, BU_HOLZ, BU_POSITION_X, BU_POSITION_Y) 
VALUES (9, 9, 'Cfmbe80', 1175, 350, 294, 264, 206);

INSERT INTO BURG (BU_ID, KOE_ID, BU_BURGNAME, BU_LEHM, BU_EISEN, BU_HOLZ, BU_POSITION_X, BU_POSITION_Y) 
VALUES (10, 10, 'Jumdr88', 123, 1238, 905, 276, 451);

INSERT INTO BURG (BU_ID, KOE_ID, BU_BURGNAME, BU_LEHM, BU_EISEN, BU_HOLZ, BU_POSITION_X, BU_POSITION_Y) 
VALUES (11, 11, 'Tpjfs53', 1691, 732, 1718, 156, 406);

INSERT INTO BURG (BU_ID, KOE_ID, BU_BURGNAME, BU_LEHM, BU_EISEN, BU_HOLZ, BU_POSITION_X, BU_POSITION_Y) 
VALUES (12, 12, 'Glfow87', 1511, 1131, 1580, 131, 109);

INSERT INTO BURG (BU_ID, KOE_ID, BU_BURGNAME, BU_LEHM, BU_EISEN, BU_HOLZ, BU_POSITION_X, BU_POSITION_Y) 
VALUES (13, 13, 'Rvfie76', 1573, 732, 1728, 379, 332);

INSERT INTO BURG (BU_ID, KOE_ID, BU_BURGNAME, BU_LEHM, BU_EISEN, BU_HOLZ, BU_POSITION_X, BU_POSITION_Y) 
VALUES (14, 14, 'Xqgjx68', 1468, 650, 273, 48, 491);

INSERT INTO BURG (BU_ID, KOE_ID, BU_BURGNAME, BU_LEHM, BU_EISEN, BU_HOLZ, BU_POSITION_X, BU_POSITION_Y) 
VALUES (15, 15, 'Qybyu02', 9, 50, 1569, 300, 298);

INSERT INTO BURG (BU_ID, KOE_ID, BU_BURGNAME, BU_LEHM, BU_EISEN, BU_HOLZ, BU_POSITION_X, BU_POSITION_Y) 
VALUES (16, 16, 'Bmhwl08', 1134, 135, 559, 433, 327);

INSERT INTO BURG (BU_ID, KOE_ID, BU_BURGNAME, BU_LEHM, BU_EISEN, BU_HOLZ, BU_POSITION_X, BU_POSITION_Y) 
VALUES (17, 17, 'Vcdkt77', 1168, 1187, 1605, 24, 446);

INSERT INTO BURG (BU_ID, KOE_ID, BU_BURGNAME, BU_LEHM, BU_EISEN, BU_HOLZ, BU_POSITION_X, BU_POSITION_Y) 
VALUES (18, 18, 'Ocsbv02', 458, 309, 1032, 476, 162);

INSERT INTO BURG (BU_ID, KOE_ID, BU_BURGNAME, BU_LEHM, BU_EISEN, BU_HOLZ, BU_POSITION_X, BU_POSITION_Y) 
VALUES (19, 19, 'Mlzys31', 1611, 1540, 1816, 213, 227);

INSERT INTO BURG (BU_ID, KOE_ID, BU_BURGNAME, BU_LEHM, BU_EISEN, BU_HOLZ, BU_POSITION_X, BU_POSITION_Y) 
VALUES (20, 20, 'Ixjuf26', 333, 751, 661, 50, 30);

INSERT INTO BURG (BU_ID, KOE_ID, BU_BURGNAME, BU_LEHM, BU_EISEN, BU_HOLZ, BU_POSITION_X, BU_POSITION_Y) 
VALUES (21, 21, 'Cdzyw92', 305, 59, 235, 69, 292);

INSERT INTO BURG (BU_ID, KOE_ID, BU_BURGNAME, BU_LEHM, BU_EISEN, BU_HOLZ, BU_POSITION_X, BU_POSITION_Y) 
VALUES (22, 22, 'Abbld74', 931, 830, 1375, 11, 358);

INSERT INTO BURG (BU_ID, KOE_ID, BU_BURGNAME, BU_LEHM, BU_EISEN, BU_HOLZ, BU_POSITION_X, BU_POSITION_Y) 
VALUES (23, 23, 'Dfaln11', 1111, 1872, 641, 312, 435);

INSERT INTO BURG (BU_ID, KOE_ID, BU_BURGNAME, BU_LEHM, BU_EISEN, BU_HOLZ, BU_POSITION_X, BU_POSITION_Y) 
VALUES (24, 24, 'Xrfrl25', 175, 1121, 29, 201, 464);

INSERT INTO BURG (BU_ID, KOE_ID, BU_BURGNAME, BU_LEHM, BU_EISEN, BU_HOLZ, BU_POSITION_X, BU_POSITION_Y) 
VALUES (25, 25, 'Eupns09', 790, 1739, 1199, 120, 226);

INSERT INTO BURG (BU_ID, KOE_ID, BU_BURGNAME, BU_LEHM, BU_EISEN, BU_HOLZ, BU_POSITION_X, BU_POSITION_Y) 
VALUES (26, 26, 'Gkaja89', 1044, 1360, 992, 436, 124);

INSERT INTO BURG (BU_ID, KOE_ID, BU_BURGNAME, BU_LEHM, BU_EISEN, BU_HOLZ, BU_POSITION_X, BU_POSITION_Y) 
VALUES (27, 27, 'Pkpcc08', 1053, 236, 264, 256, 196);

INSERT INTO BURG (BU_ID, KOE_ID, BU_BURGNAME, BU_LEHM, BU_EISEN, BU_HOLZ, BU_POSITION_X, BU_POSITION_Y) 
VALUES (28, 28, 'Rbnpe32', 1237, 313, 52, 388, 380);

INSERT INTO BURG (BU_ID, KOE_ID, BU_BURGNAME, BU_LEHM, BU_EISEN, BU_HOLZ, BU_POSITION_X, BU_POSITION_Y) 
VALUES (29, 29, 'Thsyb96', 365, 671, 1146, 307, 440);

INSERT INTO BURG (BU_ID, KOE_ID, BU_BURGNAME, BU_LEHM, BU_EISEN, BU_HOLZ, BU_POSITION_X, BU_POSITION_Y) 
VALUES (30, 30, 'Msupz89', 1778, 1698, 1137, 32, 150);

INSERT INTO BURG (BU_ID, KOE_ID, BU_BURGNAME, BU_LEHM, BU_EISEN, BU_HOLZ, BU_POSITION_X, BU_POSITION_Y) 
VALUES (31, 31, 'Cphhn86', 1652, 1211, 1208, 400, 464);

INSERT INTO BURG (BU_ID, KOE_ID, BU_BURGNAME, BU_LEHM, BU_EISEN, BU_HOLZ, BU_POSITION_X, BU_POSITION_Y) 
VALUES (32, 32, 'Foqdr67', 925, 1754, 1290, 304, 138);

INSERT INTO BURG (BU_ID, KOE_ID, BU_BURGNAME, BU_LEHM, BU_EISEN, BU_HOLZ, BU_POSITION_X, BU_POSITION_Y) 
VALUES (33, 33, 'Mhjcl18', 847, 1727, 1234, 2, 397);

INSERT INTO BURG (BU_ID, KOE_ID, BU_BURGNAME, BU_LEHM, BU_EISEN, BU_HOLZ, BU_POSITION_X, BU_POSITION_Y) 
VALUES (34, 34, 'Cgecn06', 1265, 34, 347, 249, 463);

INSERT INTO BURG (BU_ID, KOE_ID, BU_BURGNAME, BU_LEHM, BU_EISEN, BU_HOLZ, BU_POSITION_X, BU_POSITION_Y) 
VALUES (35, 35, 'Pdwnh06', 307, 1000, 205, 339, 321);

INSERT INTO BURG (BU_ID, KOE_ID, BU_BURGNAME, BU_LEHM, BU_EISEN, BU_HOLZ, BU_POSITION_X, BU_POSITION_Y) 
VALUES (36, 13, 'Vvsra48', 880, 1012, 502, 322, 187);

INSERT INTO BURG (BU_ID, KOE_ID, BU_BURGNAME, BU_LEHM, BU_EISEN, BU_HOLZ, BU_POSITION_X, BU_POSITION_Y) 
VALUES (37, 3, 'Bjqkz28', 1295, 310, 208, 305, 295);

INSERT INTO BURG (BU_ID, KOE_ID, BU_BURGNAME, BU_LEHM, BU_EISEN, BU_HOLZ, BU_POSITION_X, BU_POSITION_Y) 
VALUES (38, 21, 'Zvhej18', 1324, 863, 272, 467, 305);

INSERT INTO BURG (BU_ID, KOE_ID, BU_BURGNAME, BU_LEHM, BU_EISEN, BU_HOLZ, BU_POSITION_X, BU_POSITION_Y) 
VALUES (39, 23, 'Xprrr12', 1128, 726, 58, 130, 338);

INSERT INTO BURG (BU_ID, KOE_ID, BU_BURGNAME, BU_LEHM, BU_EISEN, BU_HOLZ, BU_POSITION_X, BU_POSITION_Y) 
VALUES (40, 35, 'Vvkjt95', 1251, 736, 321, 155, 408);

INSERT INTO BURG (BU_ID, KOE_ID, BU_BURGNAME, BU_LEHM, BU_EISEN, BU_HOLZ, BU_POSITION_X, BU_POSITION_Y) 
VALUES (41, 35, 'Xrpnh05', 367, 1378, 228, 341, 192);

INSERT INTO BURG (BU_ID, KOE_ID, BU_BURGNAME, BU_LEHM, BU_EISEN, BU_HOLZ, BU_POSITION_X, BU_POSITION_Y) 
VALUES (42, 12, 'Pbzzo95', 1280, 132, 1907, 162, 114);

INSERT INTO BURG (BU_ID, KOE_ID, BU_BURGNAME, BU_LEHM, BU_EISEN, BU_HOLZ, BU_POSITION_X, BU_POSITION_Y) 
VALUES (43, 15, 'Pymzh91', 1760, 1554, 240, 119, 124);

INSERT INTO BURG (BU_ID, KOE_ID, BU_BURGNAME, BU_LEHM, BU_EISEN, BU_HOLZ, BU_POSITION_X, BU_POSITION_Y) 
VALUES (44, 5, 'Fwdlk56', 1940, 1904, 292, 236, 454);

INSERT INTO BURG (BU_ID, KOE_ID, BU_BURGNAME, BU_LEHM, BU_EISEN, BU_HOLZ, BU_POSITION_X, BU_POSITION_Y) 
VALUES (45, 1, 'Vwgfg08', 24, 1571, 1573, 157, 453);

INSERT INTO BURG (BU_ID, KOE_ID, BU_BURGNAME, BU_LEHM, BU_EISEN, BU_HOLZ, BU_POSITION_X, BU_POSITION_Y) 
VALUES (46, 20, 'Shnbu91', 1383, 1082, 129, 117, 100);

INSERT INTO BURG (BU_ID, KOE_ID, BU_BURGNAME, BU_LEHM, BU_EISEN, BU_HOLZ, BU_POSITION_X, BU_POSITION_Y) 
VALUES (47, 20, 'Oowza68', 1112, 726, 1332, 380, 165);

INSERT INTO BURG (BU_ID, KOE_ID, BU_BURGNAME, BU_LEHM, BU_EISEN, BU_HOLZ, BU_POSITION_X, BU_POSITION_Y) 
VALUES (48, 2, 'Mkdna62', 331, 1203, 1004, 163, 233);

INSERT INTO BURG (BU_ID, KOE_ID, BU_BURGNAME, BU_LEHM, BU_EISEN, BU_HOLZ, BU_POSITION_X, BU_POSITION_Y) 
VALUES (49, 11, 'Msqjt36', 116, 873, 1732, 449, 7);

INSERT INTO BURG (BU_ID, KOE_ID, BU_BURGNAME, BU_LEHM, BU_EISEN, BU_HOLZ, BU_POSITION_X, BU_POSITION_Y) 
VALUES (50, 26, 'Pecuc66', 1081, 1285, 521, 227, 172);

INSERT INTO BURG (BU_ID, KOE_ID, BU_BURGNAME, BU_LEHM, BU_EISEN, BU_HOLZ, BU_POSITION_X, BU_POSITION_Y) 
VALUES (51, 22, 'Gxpvp56', 1621, 1985, 1253, 307, 298);

INSERT INTO BURG (BU_ID, KOE_ID, BU_BURGNAME, BU_LEHM, BU_EISEN, BU_HOLZ, BU_POSITION_X, BU_POSITION_Y) 
VALUES (52, 26, 'Cgnld79', 599, 1422, 631, 92, 227);

INSERT INTO BURG (BU_ID, KOE_ID, BU_BURGNAME, BU_LEHM, BU_EISEN, BU_HOLZ, BU_POSITION_X, BU_POSITION_Y) 
VALUES (53, 5, 'Cxpyj96', 1218, 1474, 198, 202, 485);

INSERT INTO BURG (BU_ID, KOE_ID, BU_BURGNAME, BU_LEHM, BU_EISEN, BU_HOLZ, BU_POSITION_X, BU_POSITION_Y) 
VALUES (54, 12, 'Vwaoh90', 10, 84, 1615, 207, 67);

INSERT INTO BURG (BU_ID, KOE_ID, BU_BURGNAME, BU_LEHM, BU_EISEN, BU_HOLZ, BU_POSITION_X, BU_POSITION_Y) 
VALUES (55, 10, 'Jttyo75', 912, 784, 1350, 286, 91);

INSERT INTO BURG (BU_ID, KOE_ID, BU_BURGNAME, BU_LEHM, BU_EISEN, BU_HOLZ, BU_POSITION_X, BU_POSITION_Y) 
VALUES (56, 34, 'Qzauc21', 1931, 790, 1615, 24, 176);

INSERT INTO BURG (BU_ID, KOE_ID, BU_BURGNAME, BU_LEHM, BU_EISEN, BU_HOLZ, BU_POSITION_X, BU_POSITION_Y) 
VALUES (57, 8, 'Elulu56', 1931, 147, 911, 77, 43);

INSERT INTO BURG (BU_ID, KOE_ID, BU_BURGNAME, BU_LEHM, BU_EISEN, BU_HOLZ, BU_POSITION_X, BU_POSITION_Y) 
VALUES (58, 26, 'Xogkn47', 1892, 1005, 1735, 249, 150);

INSERT INTO BURG (BU_ID, KOE_ID, BU_BURGNAME, BU_LEHM, BU_EISEN, BU_HOLZ, BU_POSITION_X, BU_POSITION_Y) 
VALUES (59, 22, 'Ffehj43', 1951, 1169, 1899, 198, 26);

INSERT INTO BURG (BU_ID, KOE_ID, BU_BURGNAME, BU_LEHM, BU_EISEN, BU_HOLZ, BU_POSITION_X, BU_POSITION_Y) 
VALUES (60, 24, 'Rxlau51', 1030, 792, 389, 152, 167);

INSERT INTO BURG (BU_ID, KOE_ID, BU_BURGNAME, BU_LEHM, BU_EISEN, BU_HOLZ, BU_POSITION_X, BU_POSITION_Y) 
VALUES (61, 22, 'Wwzxw79', 242, 1138, 1513, 242, 215);

INSERT INTO BURG (BU_ID, KOE_ID, BU_BURGNAME, BU_LEHM, BU_EISEN, BU_HOLZ, BU_POSITION_X, BU_POSITION_Y) 
VALUES (62, 5, 'Scegp47', 1345, 1403, 1422, 342, 50);

INSERT INTO BURG (BU_ID, KOE_ID, BU_BURGNAME, BU_LEHM, BU_EISEN, BU_HOLZ, BU_POSITION_X, BU_POSITION_Y) 
VALUES (63, 1, 'Fxiaj88', 1244, 1234, 1121, 142, 393);

INSERT INTO BURG (BU_ID, KOE_ID, BU_BURGNAME, BU_LEHM, BU_EISEN, BU_HOLZ, BU_POSITION_X, BU_POSITION_Y) 
VALUES (64, 13, 'Ueuuz88', 1117, 1279, 859, 385, 300);

INSERT INTO BURG (BU_ID, KOE_ID, BU_BURGNAME, BU_LEHM, BU_EISEN, BU_HOLZ, BU_POSITION_X, BU_POSITION_Y) 
VALUES (65, 35, 'Acxac68', 801, 1876, 1822, 60, 468);

INSERT INTO BURG (BU_ID, KOE_ID, BU_BURGNAME, BU_LEHM, BU_EISEN, BU_HOLZ, BU_POSITION_X, BU_POSITION_Y) 
VALUES (66, 8, 'Tlgll30', 913, 1061, 431, 55, 9);

INSERT INTO BURG (BU_ID, KOE_ID, BU_BURGNAME, BU_LEHM, BU_EISEN, BU_HOLZ, BU_POSITION_X, BU_POSITION_Y) 
VALUES (67, 10, 'Cbkjc70', 1150, 1215, 1994, 450, 268);

INSERT INTO BURG (BU_ID, KOE_ID, BU_BURGNAME, BU_LEHM, BU_EISEN, BU_HOLZ, BU_POSITION_X, BU_POSITION_Y) 
VALUES (68, 2, 'Huvpg74', 1003, 223, 1879, 429, 215);

INSERT INTO BURG (BU_ID, KOE_ID, BU_BURGNAME, BU_LEHM, BU_EISEN, BU_HOLZ, BU_POSITION_X, BU_POSITION_Y) 
VALUES (69, 22, 'Zolrm64', 358, 123, 1811, 71, 323);

INSERT INTO BURG (BU_ID, KOE_ID, BU_BURGNAME, BU_LEHM, BU_EISEN, BU_HOLZ, BU_POSITION_X, BU_POSITION_Y) 
VALUES (70, 35, 'Gdnax05', 937, 1995, 913, 294, 118);

/* GEBAEUDE */
Insert into GEBAEUDE (GEB_ID,GEB_TYP,GEB_LEVEL) values ('1','Holzfaeller','1');
Insert into GEBAEUDE (GEB_ID,GEB_TYP,GEB_LEVEL) values ('2','Lehmgrube','1');
Insert into GEBAEUDE (GEB_ID,GEB_TYP,GEB_LEVEL) values ('3','Eisenmine','1');
Insert into GEBAEUDE (GEB_ID,GEB_TYP,GEB_LEVEL) values ('4','Speicher','1');
Insert into GEBAEUDE (GEB_ID,GEB_TYP,GEB_LEVEL) values ('5','Kaserne','1');
Insert into GEBAEUDE (GEB_ID,GEB_TYP,GEB_LEVEL) values ('6','Rathaus','1');
Insert into GEBAEUDE (GEB_ID,GEB_TYP,GEB_LEVEL) values ('7','Holzfaeller','2');
Insert into GEBAEUDE (GEB_ID,GEB_TYP,GEB_LEVEL) values ('8','Lehmgrube','2');
Insert into GEBAEUDE (GEB_ID,GEB_TYP,GEB_LEVEL) values ('9','Eisenmine','2');
Insert into GEBAEUDE (GEB_ID,GEB_TYP,GEB_LEVEL) values ('10','Speicher','2');
Insert into GEBAEUDE (GEB_ID,GEB_TYP,GEB_LEVEL) values ('11','Kaserne','2');
Insert into GEBAEUDE (GEB_ID,GEB_TYP,GEB_LEVEL) values ('12','Rathaus','2');
Insert into GEBAEUDE (GEB_ID,GEB_TYP,GEB_LEVEL) values ('13','Holzfaeller','3');
Insert into GEBAEUDE (GEB_ID,GEB_TYP,GEB_LEVEL) values ('14','Lehmgrube','3');
Insert into GEBAEUDE (GEB_ID,GEB_TYP,GEB_LEVEL) values ('15','Eisenmine','3');
Insert into GEBAEUDE (GEB_ID,GEB_TYP,GEB_LEVEL) values ('16','Speicher','3');
Insert into GEBAEUDE (GEB_ID,GEB_TYP,GEB_LEVEL) values ('17','Kaserne','3');
Insert into GEBAEUDE (GEB_ID,GEB_TYP,GEB_LEVEL) values ('18','Rathaus','3');
Insert into GEBAEUDE (GEB_ID,GEB_TYP,GEB_LEVEL) values ('19','Holzfaeller','4');
Insert into GEBAEUDE (GEB_ID,GEB_TYP,GEB_LEVEL) values ('20','Lehmgrube','4');
Insert into GEBAEUDE (GEB_ID,GEB_TYP,GEB_LEVEL) values ('21','Eisenmine','4');
Insert into GEBAEUDE (GEB_ID,GEB_TYP,GEB_LEVEL) values ('22','Speicher','4');
Insert into GEBAEUDE (GEB_ID,GEB_TYP,GEB_LEVEL) values ('23','Kaserne','4');
Insert into GEBAEUDE (GEB_ID,GEB_TYP,GEB_LEVEL) values ('24','Rathaus','4');
Insert into GEBAEUDE (GEB_ID,GEB_TYP,GEB_LEVEL) values ('25','Holzfaeller','5');
Insert into GEBAEUDE (GEB_ID,GEB_TYP,GEB_LEVEL) values ('26','Lehmgrube','5');
Insert into GEBAEUDE (GEB_ID,GEB_TYP,GEB_LEVEL) values ('27','Eisenmine','5');
Insert into GEBAEUDE (GEB_ID,GEB_TYP,GEB_LEVEL) values ('28','Speicher','5');
Insert into GEBAEUDE (GEB_ID,GEB_TYP,GEB_LEVEL) values ('29','Kaserne','5');
Insert into GEBAEUDE (GEB_ID,GEB_TYP,GEB_LEVEL) values ('30','Rathaus','5');
Insert into GEBAEUDE (GEB_ID,GEB_TYP,GEB_LEVEL) values ('31','Holzfaeller','6');
Insert into GEBAEUDE (GEB_ID,GEB_TYP,GEB_LEVEL) values ('32','Lehmgrube','6');
Insert into GEBAEUDE (GEB_ID,GEB_TYP,GEB_LEVEL) values ('33','Eisenmine','6');
Insert into GEBAEUDE (GEB_ID,GEB_TYP,GEB_LEVEL) values ('34','Speicher','6');
Insert into GEBAEUDE (GEB_ID,GEB_TYP,GEB_LEVEL) values ('35','Kaserne','6');
Insert into GEBAEUDE (GEB_ID,GEB_TYP,GEB_LEVEL) values ('36','Rathaus','6');
Insert into GEBAEUDE (GEB_ID,GEB_TYP,GEB_LEVEL) values ('37','Holzfaeller','7');
Insert into GEBAEUDE (GEB_ID,GEB_TYP,GEB_LEVEL) values ('38','Lehmgrube','7');
Insert into GEBAEUDE (GEB_ID,GEB_TYP,GEB_LEVEL) values ('39','Eisenmine','7');
Insert into GEBAEUDE (GEB_ID,GEB_TYP,GEB_LEVEL) values ('40','Speicher','7');
Insert into GEBAEUDE (GEB_ID,GEB_TYP,GEB_LEVEL) values ('41','Kaserne','7');
Insert into GEBAEUDE (GEB_ID,GEB_TYP,GEB_LEVEL) values ('42','Rathaus','7');

/* GEBAEUDE_EIGENSCHAFT */
Insert into GEBAEUDE_EIGENSCHAFT (GE_ID,GE_EIGENSCHAFT,GE_WERT) values ('1','Produktionsrate','10');
Insert into GEBAEUDE_EIGENSCHAFT (GE_ID,GE_EIGENSCHAFT,GE_WERT) values ('2','Bauzeit','1');
Insert into GEBAEUDE_EIGENSCHAFT (GE_ID,GE_EIGENSCHAFT,GE_WERT) values ('3','Kosten','10');
Insert into GEBAEUDE_EIGENSCHAFT (GE_ID,GE_EIGENSCHAFT,GE_WERT) values ('4','Produktionsrate','20');
Insert into GEBAEUDE_EIGENSCHAFT (GE_ID,GE_EIGENSCHAFT,GE_WERT) values ('5','Bauzeit','3');
Insert into GEBAEUDE_EIGENSCHAFT (GE_ID,GE_EIGENSCHAFT,GE_WERT) values ('6','Kosten','30');
Insert into GEBAEUDE_EIGENSCHAFT (GE_ID,GE_EIGENSCHAFT,GE_WERT) values ('7','Produktionsrate','50');
Insert into GEBAEUDE_EIGENSCHAFT (GE_ID,GE_EIGENSCHAFT,GE_WERT) values ('8','Bauzeit','10');
Insert into GEBAEUDE_EIGENSCHAFT (GE_ID,GE_EIGENSCHAFT,GE_WERT) values ('9','Kosten','100');
Insert into GEBAEUDE_EIGENSCHAFT (GE_ID,GE_EIGENSCHAFT,GE_WERT) values ('10','Produktionsrate','100');
Insert into GEBAEUDE_EIGENSCHAFT (GE_ID,GE_EIGENSCHAFT,GE_WERT) values ('11','Bauzeit','20');
Insert into GEBAEUDE_EIGENSCHAFT (GE_ID,GE_EIGENSCHAFT,GE_WERT) values ('12','Kosten','300');
Insert into GEBAEUDE_EIGENSCHAFT (GE_ID,GE_EIGENSCHAFT,GE_WERT) values ('13','Produktionsrate','200');
Insert into GEBAEUDE_EIGENSCHAFT (GE_ID,GE_EIGENSCHAFT,GE_WERT) values ('14','Bauzeit','120');
Insert into GEBAEUDE_EIGENSCHAFT (GE_ID,GE_EIGENSCHAFT,GE_WERT) values ('15','Kosten','800');
Insert into GEBAEUDE_EIGENSCHAFT (GE_ID,GE_EIGENSCHAFT,GE_WERT) values ('16','Produktionsrate','500');
Insert into GEBAEUDE_EIGENSCHAFT (GE_ID,GE_EIGENSCHAFT,GE_WERT) values ('17','Bauzeit','300');
Insert into GEBAEUDE_EIGENSCHAFT (GE_ID,GE_EIGENSCHAFT,GE_WERT) values ('18','Kosten','1500');
Insert into GEBAEUDE_EIGENSCHAFT (GE_ID,GE_EIGENSCHAFT,GE_WERT) values ('19','Produktionsrate','1000');
Insert into GEBAEUDE_EIGENSCHAFT (GE_ID,GE_EIGENSCHAFT,GE_WERT) values ('20','Bauzeit','600');
Insert into GEBAEUDE_EIGENSCHAFT (GE_ID,GE_EIGENSCHAFT,GE_WERT) values ('21','Kosten','3000');
Insert into GEBAEUDE_EIGENSCHAFT (GE_ID,GE_EIGENSCHAFT,GE_WERT) values ('22','Produktionsrate','100');
Insert into GEBAEUDE_EIGENSCHAFT (GE_ID,GE_EIGENSCHAFT,GE_WERT) values ('23','Produktionsrate','200');
Insert into GEBAEUDE_EIGENSCHAFT (GE_ID,GE_EIGENSCHAFT,GE_WERT) values ('24','Produktionsrate','500');
Insert into GEBAEUDE_EIGENSCHAFT (GE_ID,GE_EIGENSCHAFT,GE_WERT) values ('25','Produktionsrate','1000');
Insert into GEBAEUDE_EIGENSCHAFT (GE_ID,GE_EIGENSCHAFT,GE_WERT) values ('26','Produktionsrate','2000');
Insert into GEBAEUDE_EIGENSCHAFT (GE_ID,GE_EIGENSCHAFT,GE_WERT) values ('27','Produktionsrate','4000');
Insert into GEBAEUDE_EIGENSCHAFT (GE_ID,GE_EIGENSCHAFT,GE_WERT) values ('28','Produktionsrate','10000');
Insert into GEBAEUDE_EIGENSCHAFT (GE_ID,GE_EIGENSCHAFT,GE_WERT) values ('29','Produktionsrate','7');
Insert into GEBAEUDE_EIGENSCHAFT (GE_ID,GE_EIGENSCHAFT,GE_WERT) values ('30','Produktionsrate','6');
Insert into GEBAEUDE_EIGENSCHAFT (GE_ID,GE_EIGENSCHAFT,GE_WERT) values ('31','Produktionsrate','5');
Insert into GEBAEUDE_EIGENSCHAFT (GE_ID,GE_EIGENSCHAFT,GE_WERT) values ('32','Produktionsrate','4');
Insert into GEBAEUDE_EIGENSCHAFT (GE_ID,GE_EIGENSCHAFT,GE_WERT) values ('33','Produktionsrate','3');
Insert into GEBAEUDE_EIGENSCHAFT (GE_ID,GE_EIGENSCHAFT,GE_WERT) values ('34','Produktionsrate','2');
Insert into GEBAEUDE_EIGENSCHAFT (GE_ID,GE_EIGENSCHAFT,GE_WERT) values ('35','Produktionsrate','1');
Insert into GEBAEUDE_EIGENSCHAFT (GE_ID,GE_EIGENSCHAFT,GE_WERT) values ('36','Produktionsrate','2');
Insert into GEBAEUDE_EIGENSCHAFT (GE_ID,GE_EIGENSCHAFT,GE_WERT) values ('37','Produktionsrate','4');
Insert into GEBAEUDE_EIGENSCHAFT (GE_ID,GE_EIGENSCHAFT,GE_WERT) values ('38','Produktionsrate','8');
Insert into GEBAEUDE_EIGENSCHAFT (GE_ID,GE_EIGENSCHAFT,GE_WERT) values ('39','Produktionsrate','16');
Insert into GEBAEUDE_EIGENSCHAFT (GE_ID,GE_EIGENSCHAFT,GE_WERT) values ('40','Produktionsrate','32');
Insert into GEBAEUDE_EIGENSCHAFT (GE_ID,GE_EIGENSCHAFT,GE_WERT) values ('41','Produktionsrate','64');
Insert into GEBAEUDE_EIGENSCHAFT (GE_ID,GE_EIGENSCHAFT,GE_WERT) values ('42','Produktionsrate','128');

/* BURG_TO_GEBAEUDE */
Insert into BURG_TO_GEBAEUDE (BU_ID,GEB_ID) values ('1','1');
Insert into BURG_TO_GEBAEUDE (BU_ID,GEB_ID) values ('2','1');
Insert into BURG_TO_GEBAEUDE (BU_ID,GEB_ID) values ('3','1');
Insert into BURG_TO_GEBAEUDE (BU_ID,GEB_ID) values ('4','1');
Insert into BURG_TO_GEBAEUDE (BU_ID,GEB_ID) values ('5','1');
Insert into BURG_TO_GEBAEUDE (BU_ID,GEB_ID) values ('6','1');
Insert into BURG_TO_GEBAEUDE (BU_ID,GEB_ID) values ('7','1');
Insert into BURG_TO_GEBAEUDE (BU_ID,GEB_ID) values ('8','1');
Insert into BURG_TO_GEBAEUDE (BU_ID,GEB_ID) values ('9','1');
Insert into BURG_TO_GEBAEUDE (BU_ID,GEB_ID) values ('10','1');
Insert into BURG_TO_GEBAEUDE (BU_ID,GEB_ID) values ('11','1');
Insert into BURG_TO_GEBAEUDE (BU_ID,GEB_ID) values ('12','1');
Insert into BURG_TO_GEBAEUDE (BU_ID,GEB_ID) values ('13','1');
Insert into BURG_TO_GEBAEUDE (BU_ID,GEB_ID) values ('14','1');
Insert into BURG_TO_GEBAEUDE (BU_ID,GEB_ID) values ('15','1');
Insert into BURG_TO_GEBAEUDE (BU_ID,GEB_ID) values ('16','1');
Insert into BURG_TO_GEBAEUDE (BU_ID,GEB_ID) values ('17','1');
Insert into BURG_TO_GEBAEUDE (BU_ID,GEB_ID) values ('18','1');
Insert into BURG_TO_GEBAEUDE (BU_ID,GEB_ID) values ('19','1');
Insert into BURG_TO_GEBAEUDE (BU_ID,GEB_ID) values ('20','1');
Insert into BURG_TO_GEBAEUDE (BU_ID,GEB_ID) values ('21','1');
Insert into BURG_TO_GEBAEUDE (BU_ID,GEB_ID) values ('22','1');
Insert into BURG_TO_GEBAEUDE (BU_ID,GEB_ID) values ('23','1');
Insert into BURG_TO_GEBAEUDE (BU_ID,GEB_ID) values ('24','1');
Insert into BURG_TO_GEBAEUDE (BU_ID,GEB_ID) values ('25','1');
Insert into BURG_TO_GEBAEUDE (BU_ID,GEB_ID) values ('26','1');
Insert into BURG_TO_GEBAEUDE (BU_ID,GEB_ID) values ('27','1');
Insert into BURG_TO_GEBAEUDE (BU_ID,GEB_ID) values ('28','1');
Insert into BURG_TO_GEBAEUDE (BU_ID,GEB_ID) values ('29','1');
Insert into BURG_TO_GEBAEUDE (BU_ID,GEB_ID) values ('30','1');
Insert into BURG_TO_GEBAEUDE (BU_ID,GEB_ID) values ('31','1');
Insert into BURG_TO_GEBAEUDE (BU_ID,GEB_ID) values ('32','1');
Insert into BURG_TO_GEBAEUDE (BU_ID,GEB_ID) values ('33','1');
Insert into BURG_TO_GEBAEUDE (BU_ID,GEB_ID) values ('34','1');
Insert into BURG_TO_GEBAEUDE (BU_ID,GEB_ID) values ('35','1');
Insert into BURG_TO_GEBAEUDE (BU_ID,GEB_ID) values ('36','1');
Insert into BURG_TO_GEBAEUDE (BU_ID,GEB_ID) values ('37','1');
Insert into BURG_TO_GEBAEUDE (BU_ID,GEB_ID) values ('38','1');
Insert into BURG_TO_GEBAEUDE (BU_ID,GEB_ID) values ('39','1');
Insert into BURG_TO_GEBAEUDE (BU_ID,GEB_ID) values ('40','1');
Insert into BURG_TO_GEBAEUDE (BU_ID,GEB_ID) values ('41','1');
Insert into BURG_TO_GEBAEUDE (BU_ID,GEB_ID) values ('42','1');
Insert into BURG_TO_GEBAEUDE (BU_ID,GEB_ID) values ('43','1');
Insert into BURG_TO_GEBAEUDE (BU_ID,GEB_ID) values ('44','1');
Insert into BURG_TO_GEBAEUDE (BU_ID,GEB_ID) values ('45','1');
Insert into BURG_TO_GEBAEUDE (BU_ID,GEB_ID) values ('46','1');
Insert into BURG_TO_GEBAEUDE (BU_ID,GEB_ID) values ('47','1');
Insert into BURG_TO_GEBAEUDE (BU_ID,GEB_ID) values ('48','1');
Insert into BURG_TO_GEBAEUDE (BU_ID,GEB_ID) values ('49','1');
Insert into BURG_TO_GEBAEUDE (BU_ID,GEB_ID) values ('50','1');
Insert into BURG_TO_GEBAEUDE (BU_ID,GEB_ID) values ('51','1');
Insert into BURG_TO_GEBAEUDE (BU_ID,GEB_ID) values ('52','1');
Insert into BURG_TO_GEBAEUDE (BU_ID,GEB_ID) values ('53','1');
Insert into BURG_TO_GEBAEUDE (BU_ID,GEB_ID) values ('54','1');
Insert into BURG_TO_GEBAEUDE (BU_ID,GEB_ID) values ('55','1');
Insert into BURG_TO_GEBAEUDE (BU_ID,GEB_ID) values ('56','1');
Insert into BURG_TO_GEBAEUDE (BU_ID,GEB_ID) values ('57','1');
Insert into BURG_TO_GEBAEUDE (BU_ID,GEB_ID) values ('58','1');
Insert into BURG_TO_GEBAEUDE (BU_ID,GEB_ID) values ('59','1');
Insert into BURG_TO_GEBAEUDE (BU_ID,GEB_ID) values ('60','1');
Insert into BURG_TO_GEBAEUDE (BU_ID,GEB_ID) values ('61','1');
Insert into BURG_TO_GEBAEUDE (BU_ID,GEB_ID) values ('62','1');
Insert into BURG_TO_GEBAEUDE (BU_ID,GEB_ID) values ('63','1');
Insert into BURG_TO_GEBAEUDE (BU_ID,GEB_ID) values ('64','1');
Insert into BURG_TO_GEBAEUDE (BU_ID,GEB_ID) values ('65','1');
Insert into BURG_TO_GEBAEUDE (BU_ID,GEB_ID) values ('66','1');
Insert into BURG_TO_GEBAEUDE (BU_ID,GEB_ID) values ('67','1');
Insert into BURG_TO_GEBAEUDE (BU_ID,GEB_ID) values ('68','1');
Insert into BURG_TO_GEBAEUDE (BU_ID,GEB_ID) values ('69','1');
Insert into BURG_TO_GEBAEUDE (BU_ID,GEB_ID) values ('70','1');
Insert into BURG_TO_GEBAEUDE (BU_ID,GEB_ID) values ('1','2');
Insert into BURG_TO_GEBAEUDE (BU_ID,GEB_ID) values ('2','2');
Insert into BURG_TO_GEBAEUDE (BU_ID,GEB_ID) values ('3','2');
Insert into BURG_TO_GEBAEUDE (BU_ID,GEB_ID) values ('4','2');
Insert into BURG_TO_GEBAEUDE (BU_ID,GEB_ID) values ('5','2');
Insert into BURG_TO_GEBAEUDE (BU_ID,GEB_ID) values ('6','2');
Insert into BURG_TO_GEBAEUDE (BU_ID,GEB_ID) values ('7','2');
Insert into BURG_TO_GEBAEUDE (BU_ID,GEB_ID) values ('8','2');
Insert into BURG_TO_GEBAEUDE (BU_ID,GEB_ID) values ('9','2');
Insert into BURG_TO_GEBAEUDE (BU_ID,GEB_ID) values ('10','2');
Insert into BURG_TO_GEBAEUDE (BU_ID,GEB_ID) values ('11','2');
Insert into BURG_TO_GEBAEUDE (BU_ID,GEB_ID) values ('12','2');
Insert into BURG_TO_GEBAEUDE (BU_ID,GEB_ID) values ('13','2');
Insert into BURG_TO_GEBAEUDE (BU_ID,GEB_ID) values ('14','2');
Insert into BURG_TO_GEBAEUDE (BU_ID,GEB_ID) values ('15','2');
Insert into BURG_TO_GEBAEUDE (BU_ID,GEB_ID) values ('16','2');
Insert into BURG_TO_GEBAEUDE (BU_ID,GEB_ID) values ('17','2');
Insert into BURG_TO_GEBAEUDE (BU_ID,GEB_ID) values ('18','2');
Insert into BURG_TO_GEBAEUDE (BU_ID,GEB_ID) values ('19','2');
Insert into BURG_TO_GEBAEUDE (BU_ID,GEB_ID) values ('20','2');
Insert into BURG_TO_GEBAEUDE (BU_ID,GEB_ID) values ('21','2');
Insert into BURG_TO_GEBAEUDE (BU_ID,GEB_ID) values ('22','2');
Insert into BURG_TO_GEBAEUDE (BU_ID,GEB_ID) values ('23','2');
Insert into BURG_TO_GEBAEUDE (BU_ID,GEB_ID) values ('24','2');
Insert into BURG_TO_GEBAEUDE (BU_ID,GEB_ID) values ('25','2');
Insert into BURG_TO_GEBAEUDE (BU_ID,GEB_ID) values ('26','2');
Insert into BURG_TO_GEBAEUDE (BU_ID,GEB_ID) values ('27','2');
Insert into BURG_TO_GEBAEUDE (BU_ID,GEB_ID) values ('28','2');
Insert into BURG_TO_GEBAEUDE (BU_ID,GEB_ID) values ('29','2');
Insert into BURG_TO_GEBAEUDE (BU_ID,GEB_ID) values ('30','2');
Insert into BURG_TO_GEBAEUDE (BU_ID,GEB_ID) values ('31','2');
Insert into BURG_TO_GEBAEUDE (BU_ID,GEB_ID) values ('32','2');
Insert into BURG_TO_GEBAEUDE (BU_ID,GEB_ID) values ('33','2');
Insert into BURG_TO_GEBAEUDE (BU_ID,GEB_ID) values ('34','2');
Insert into BURG_TO_GEBAEUDE (BU_ID,GEB_ID) values ('35','2');
Insert into BURG_TO_GEBAEUDE (BU_ID,GEB_ID) values ('36','2');
Insert into BURG_TO_GEBAEUDE (BU_ID,GEB_ID) values ('37','2');
Insert into BURG_TO_GEBAEUDE (BU_ID,GEB_ID) values ('38','2');
Insert into BURG_TO_GEBAEUDE (BU_ID,GEB_ID) values ('39','2');
Insert into BURG_TO_GEBAEUDE (BU_ID,GEB_ID) values ('40','2');
Insert into BURG_TO_GEBAEUDE (BU_ID,GEB_ID) values ('41','2');
Insert into BURG_TO_GEBAEUDE (BU_ID,GEB_ID) values ('42','2');
Insert into BURG_TO_GEBAEUDE (BU_ID,GEB_ID) values ('43','2');
Insert into BURG_TO_GEBAEUDE (BU_ID,GEB_ID) values ('44','2');
Insert into BURG_TO_GEBAEUDE (BU_ID,GEB_ID) values ('45','2');
Insert into BURG_TO_GEBAEUDE (BU_ID,GEB_ID) values ('46','2');
Insert into BURG_TO_GEBAEUDE (BU_ID,GEB_ID) values ('47','2');
Insert into BURG_TO_GEBAEUDE (BU_ID,GEB_ID) values ('48','2');
Insert into BURG_TO_GEBAEUDE (BU_ID,GEB_ID) values ('49','2');
Insert into BURG_TO_GEBAEUDE (BU_ID,GEB_ID) values ('50','2');
Insert into BURG_TO_GEBAEUDE (BU_ID,GEB_ID) values ('51','2');
Insert into BURG_TO_GEBAEUDE (BU_ID,GEB_ID) values ('52','2');
Insert into BURG_TO_GEBAEUDE (BU_ID,GEB_ID) values ('53','2');
Insert into BURG_TO_GEBAEUDE (BU_ID,GEB_ID) values ('54','2');
Insert into BURG_TO_GEBAEUDE (BU_ID,GEB_ID) values ('55','2');
Insert into BURG_TO_GEBAEUDE (BU_ID,GEB_ID) values ('56','2');
Insert into BURG_TO_GEBAEUDE (BU_ID,GEB_ID) values ('57','2');
Insert into BURG_TO_GEBAEUDE (BU_ID,GEB_ID) values ('58','2');
Insert into BURG_TO_GEBAEUDE (BU_ID,GEB_ID) values ('59','2');
Insert into BURG_TO_GEBAEUDE (BU_ID,GEB_ID) values ('60','2');
Insert into BURG_TO_GEBAEUDE (BU_ID,GEB_ID) values ('61','2');
Insert into BURG_TO_GEBAEUDE (BU_ID,GEB_ID) values ('62','2');
Insert into BURG_TO_GEBAEUDE (BU_ID,GEB_ID) values ('63','2');
Insert into BURG_TO_GEBAEUDE (BU_ID,GEB_ID) values ('64','2');
Insert into BURG_TO_GEBAEUDE (BU_ID,GEB_ID) values ('65','2');
Insert into BURG_TO_GEBAEUDE (BU_ID,GEB_ID) values ('66','2');
Insert into BURG_TO_GEBAEUDE (BU_ID,GEB_ID) values ('67','2');
Insert into BURG_TO_GEBAEUDE (BU_ID,GEB_ID) values ('68','2');
Insert into BURG_TO_GEBAEUDE (BU_ID,GEB_ID) values ('69','2');
Insert into BURG_TO_GEBAEUDE (BU_ID,GEB_ID) values ('70','2');
Insert into BURG_TO_GEBAEUDE (BU_ID,GEB_ID) values ('1','3');
Insert into BURG_TO_GEBAEUDE (BU_ID,GEB_ID) values ('2','3');
Insert into BURG_TO_GEBAEUDE (BU_ID,GEB_ID) values ('3','3');
Insert into BURG_TO_GEBAEUDE (BU_ID,GEB_ID) values ('4','3');
Insert into BURG_TO_GEBAEUDE (BU_ID,GEB_ID) values ('5','3');
Insert into BURG_TO_GEBAEUDE (BU_ID,GEB_ID) values ('6','3');
Insert into BURG_TO_GEBAEUDE (BU_ID,GEB_ID) values ('7','3');
Insert into BURG_TO_GEBAEUDE (BU_ID,GEB_ID) values ('8','3');
Insert into BURG_TO_GEBAEUDE (BU_ID,GEB_ID) values ('9','3');
Insert into BURG_TO_GEBAEUDE (BU_ID,GEB_ID) values ('10','3');
Insert into BURG_TO_GEBAEUDE (BU_ID,GEB_ID) values ('11','3');
Insert into BURG_TO_GEBAEUDE (BU_ID,GEB_ID) values ('12','3');
Insert into BURG_TO_GEBAEUDE (BU_ID,GEB_ID) values ('13','3');
Insert into BURG_TO_GEBAEUDE (BU_ID,GEB_ID) values ('14','3');
Insert into BURG_TO_GEBAEUDE (BU_ID,GEB_ID) values ('15','3');
Insert into BURG_TO_GEBAEUDE (BU_ID,GEB_ID) values ('16','3');
Insert into BURG_TO_GEBAEUDE (BU_ID,GEB_ID) values ('17','3');
Insert into BURG_TO_GEBAEUDE (BU_ID,GEB_ID) values ('18','3');
Insert into BURG_TO_GEBAEUDE (BU_ID,GEB_ID) values ('19','3');
Insert into BURG_TO_GEBAEUDE (BU_ID,GEB_ID) values ('20','3');
Insert into BURG_TO_GEBAEUDE (BU_ID,GEB_ID) values ('21','3');
Insert into BURG_TO_GEBAEUDE (BU_ID,GEB_ID) values ('22','3');
Insert into BURG_TO_GEBAEUDE (BU_ID,GEB_ID) values ('23','3');
Insert into BURG_TO_GEBAEUDE (BU_ID,GEB_ID) values ('24','3');
Insert into BURG_TO_GEBAEUDE (BU_ID,GEB_ID) values ('25','3');
Insert into BURG_TO_GEBAEUDE (BU_ID,GEB_ID) values ('26','3');
Insert into BURG_TO_GEBAEUDE (BU_ID,GEB_ID) values ('27','3');
Insert into BURG_TO_GEBAEUDE (BU_ID,GEB_ID) values ('28','3');
Insert into BURG_TO_GEBAEUDE (BU_ID,GEB_ID) values ('29','3');
Insert into BURG_TO_GEBAEUDE (BU_ID,GEB_ID) values ('30','3');
Insert into BURG_TO_GEBAEUDE (BU_ID,GEB_ID) values ('31','3');
Insert into BURG_TO_GEBAEUDE (BU_ID,GEB_ID) values ('32','3');
Insert into BURG_TO_GEBAEUDE (BU_ID,GEB_ID) values ('33','3');
Insert into BURG_TO_GEBAEUDE (BU_ID,GEB_ID) values ('34','3');
Insert into BURG_TO_GEBAEUDE (BU_ID,GEB_ID) values ('35','3');
Insert into BURG_TO_GEBAEUDE (BU_ID,GEB_ID) values ('36','3');
Insert into BURG_TO_GEBAEUDE (BU_ID,GEB_ID) values ('37','3');
Insert into BURG_TO_GEBAEUDE (BU_ID,GEB_ID) values ('38','3');
Insert into BURG_TO_GEBAEUDE (BU_ID,GEB_ID) values ('39','3');
Insert into BURG_TO_GEBAEUDE (BU_ID,GEB_ID) values ('40','3');
Insert into BURG_TO_GEBAEUDE (BU_ID,GEB_ID) values ('41','3');
Insert into BURG_TO_GEBAEUDE (BU_ID,GEB_ID) values ('42','3');
Insert into BURG_TO_GEBAEUDE (BU_ID,GEB_ID) values ('43','3');
Insert into BURG_TO_GEBAEUDE (BU_ID,GEB_ID) values ('44','3');
Insert into BURG_TO_GEBAEUDE (BU_ID,GEB_ID) values ('45','3');
Insert into BURG_TO_GEBAEUDE (BU_ID,GEB_ID) values ('46','3');
Insert into BURG_TO_GEBAEUDE (BU_ID,GEB_ID) values ('47','3');
Insert into BURG_TO_GEBAEUDE (BU_ID,GEB_ID) values ('48','3');
Insert into BURG_TO_GEBAEUDE (BU_ID,GEB_ID) values ('49','3');
Insert into BURG_TO_GEBAEUDE (BU_ID,GEB_ID) values ('50','3');
Insert into BURG_TO_GEBAEUDE (BU_ID,GEB_ID) values ('51','3');
Insert into BURG_TO_GEBAEUDE (BU_ID,GEB_ID) values ('52','3');
Insert into BURG_TO_GEBAEUDE (BU_ID,GEB_ID) values ('53','3');
Insert into BURG_TO_GEBAEUDE (BU_ID,GEB_ID) values ('54','3');
Insert into BURG_TO_GEBAEUDE (BU_ID,GEB_ID) values ('55','3');
Insert into BURG_TO_GEBAEUDE (BU_ID,GEB_ID) values ('56','3');
Insert into BURG_TO_GEBAEUDE (BU_ID,GEB_ID) values ('57','3');
Insert into BURG_TO_GEBAEUDE (BU_ID,GEB_ID) values ('58','3');
Insert into BURG_TO_GEBAEUDE (BU_ID,GEB_ID) values ('59','3');
Insert into BURG_TO_GEBAEUDE (BU_ID,GEB_ID) values ('60','3');
Insert into BURG_TO_GEBAEUDE (BU_ID,GEB_ID) values ('61','3');
Insert into BURG_TO_GEBAEUDE (BU_ID,GEB_ID) values ('62','3');
Insert into BURG_TO_GEBAEUDE (BU_ID,GEB_ID) values ('63','3');
Insert into BURG_TO_GEBAEUDE (BU_ID,GEB_ID) values ('64','3');
Insert into BURG_TO_GEBAEUDE (BU_ID,GEB_ID) values ('65','3');
Insert into BURG_TO_GEBAEUDE (BU_ID,GEB_ID) values ('66','3');
Insert into BURG_TO_GEBAEUDE (BU_ID,GEB_ID) values ('67','3');
Insert into BURG_TO_GEBAEUDE (BU_ID,GEB_ID) values ('68','3');
Insert into BURG_TO_GEBAEUDE (BU_ID,GEB_ID) values ('69','3');
Insert into BURG_TO_GEBAEUDE (BU_ID,GEB_ID) values ('70','3');
Insert into BURG_TO_GEBAEUDE (BU_ID,GEB_ID) values ('1','4');
Insert into BURG_TO_GEBAEUDE (BU_ID,GEB_ID) values ('2','4');
Insert into BURG_TO_GEBAEUDE (BU_ID,GEB_ID) values ('3','4');
Insert into BURG_TO_GEBAEUDE (BU_ID,GEB_ID) values ('4','4');
Insert into BURG_TO_GEBAEUDE (BU_ID,GEB_ID) values ('5','4');
Insert into BURG_TO_GEBAEUDE (BU_ID,GEB_ID) values ('6','4');
Insert into BURG_TO_GEBAEUDE (BU_ID,GEB_ID) values ('7','4');
Insert into BURG_TO_GEBAEUDE (BU_ID,GEB_ID) values ('8','4');
Insert into BURG_TO_GEBAEUDE (BU_ID,GEB_ID) values ('9','4');
Insert into BURG_TO_GEBAEUDE (BU_ID,GEB_ID) values ('10','4');
Insert into BURG_TO_GEBAEUDE (BU_ID,GEB_ID) values ('11','4');
Insert into BURG_TO_GEBAEUDE (BU_ID,GEB_ID) values ('12','4');
Insert into BURG_TO_GEBAEUDE (BU_ID,GEB_ID) values ('13','4');
Insert into BURG_TO_GEBAEUDE (BU_ID,GEB_ID) values ('14','4');
Insert into BURG_TO_GEBAEUDE (BU_ID,GEB_ID) values ('15','4');
Insert into BURG_TO_GEBAEUDE (BU_ID,GEB_ID) values ('16','4');
Insert into BURG_TO_GEBAEUDE (BU_ID,GEB_ID) values ('17','4');
Insert into BURG_TO_GEBAEUDE (BU_ID,GEB_ID) values ('18','4');
Insert into BURG_TO_GEBAEUDE (BU_ID,GEB_ID) values ('19','4');
Insert into BURG_TO_GEBAEUDE (BU_ID,GEB_ID) values ('20','4');
Insert into BURG_TO_GEBAEUDE (BU_ID,GEB_ID) values ('21','4');
Insert into BURG_TO_GEBAEUDE (BU_ID,GEB_ID) values ('22','4');
Insert into BURG_TO_GEBAEUDE (BU_ID,GEB_ID) values ('23','4');
Insert into BURG_TO_GEBAEUDE (BU_ID,GEB_ID) values ('24','4');
Insert into BURG_TO_GEBAEUDE (BU_ID,GEB_ID) values ('25','4');
Insert into BURG_TO_GEBAEUDE (BU_ID,GEB_ID) values ('26','4');
Insert into BURG_TO_GEBAEUDE (BU_ID,GEB_ID) values ('27','4');
Insert into BURG_TO_GEBAEUDE (BU_ID,GEB_ID) values ('28','4');
Insert into BURG_TO_GEBAEUDE (BU_ID,GEB_ID) values ('29','4');
Insert into BURG_TO_GEBAEUDE (BU_ID,GEB_ID) values ('30','4');
Insert into BURG_TO_GEBAEUDE (BU_ID,GEB_ID) values ('31','4');
Insert into BURG_TO_GEBAEUDE (BU_ID,GEB_ID) values ('32','4');
Insert into BURG_TO_GEBAEUDE (BU_ID,GEB_ID) values ('33','4');
Insert into BURG_TO_GEBAEUDE (BU_ID,GEB_ID) values ('34','4');
Insert into BURG_TO_GEBAEUDE (BU_ID,GEB_ID) values ('35','4');
Insert into BURG_TO_GEBAEUDE (BU_ID,GEB_ID) values ('36','4');
Insert into BURG_TO_GEBAEUDE (BU_ID,GEB_ID) values ('37','4');
Insert into BURG_TO_GEBAEUDE (BU_ID,GEB_ID) values ('38','4');
Insert into BURG_TO_GEBAEUDE (BU_ID,GEB_ID) values ('39','4');
Insert into BURG_TO_GEBAEUDE (BU_ID,GEB_ID) values ('40','4');
Insert into BURG_TO_GEBAEUDE (BU_ID,GEB_ID) values ('41','4');
Insert into BURG_TO_GEBAEUDE (BU_ID,GEB_ID) values ('42','4');
Insert into BURG_TO_GEBAEUDE (BU_ID,GEB_ID) values ('43','4');
Insert into BURG_TO_GEBAEUDE (BU_ID,GEB_ID) values ('44','4');
Insert into BURG_TO_GEBAEUDE (BU_ID,GEB_ID) values ('45','4');
Insert into BURG_TO_GEBAEUDE (BU_ID,GEB_ID) values ('46','4');
Insert into BURG_TO_GEBAEUDE (BU_ID,GEB_ID) values ('47','4');
Insert into BURG_TO_GEBAEUDE (BU_ID,GEB_ID) values ('48','4');
Insert into BURG_TO_GEBAEUDE (BU_ID,GEB_ID) values ('49','4');
Insert into BURG_TO_GEBAEUDE (BU_ID,GEB_ID) values ('50','4');
Insert into BURG_TO_GEBAEUDE (BU_ID,GEB_ID) values ('51','4');
Insert into BURG_TO_GEBAEUDE (BU_ID,GEB_ID) values ('52','4');
Insert into BURG_TO_GEBAEUDE (BU_ID,GEB_ID) values ('53','4');
Insert into BURG_TO_GEBAEUDE (BU_ID,GEB_ID) values ('54','4');
Insert into BURG_TO_GEBAEUDE (BU_ID,GEB_ID) values ('55','4');
Insert into BURG_TO_GEBAEUDE (BU_ID,GEB_ID) values ('56','4');
Insert into BURG_TO_GEBAEUDE (BU_ID,GEB_ID) values ('57','4');
Insert into BURG_TO_GEBAEUDE (BU_ID,GEB_ID) values ('58','4');
Insert into BURG_TO_GEBAEUDE (BU_ID,GEB_ID) values ('59','4');
Insert into BURG_TO_GEBAEUDE (BU_ID,GEB_ID) values ('60','4');
Insert into BURG_TO_GEBAEUDE (BU_ID,GEB_ID) values ('61','4');
Insert into BURG_TO_GEBAEUDE (BU_ID,GEB_ID) values ('62','4');
Insert into BURG_TO_GEBAEUDE (BU_ID,GEB_ID) values ('63','4');
Insert into BURG_TO_GEBAEUDE (BU_ID,GEB_ID) values ('64','4');
Insert into BURG_TO_GEBAEUDE (BU_ID,GEB_ID) values ('65','4');
Insert into BURG_TO_GEBAEUDE (BU_ID,GEB_ID) values ('66','4');
Insert into BURG_TO_GEBAEUDE (BU_ID,GEB_ID) values ('67','4');
Insert into BURG_TO_GEBAEUDE (BU_ID,GEB_ID) values ('68','4');
Insert into BURG_TO_GEBAEUDE (BU_ID,GEB_ID) values ('69','4');
Insert into BURG_TO_GEBAEUDE (BU_ID,GEB_ID) values ('70','4');
Insert into BURG_TO_GEBAEUDE (BU_ID,GEB_ID) values ('1','5');
Insert into BURG_TO_GEBAEUDE (BU_ID,GEB_ID) values ('2','5');
Insert into BURG_TO_GEBAEUDE (BU_ID,GEB_ID) values ('3','5');
Insert into BURG_TO_GEBAEUDE (BU_ID,GEB_ID) values ('4','5');
Insert into BURG_TO_GEBAEUDE (BU_ID,GEB_ID) values ('5','5');
Insert into BURG_TO_GEBAEUDE (BU_ID,GEB_ID) values ('6','5');
Insert into BURG_TO_GEBAEUDE (BU_ID,GEB_ID) values ('7','5');
Insert into BURG_TO_GEBAEUDE (BU_ID,GEB_ID) values ('8','5');
Insert into BURG_TO_GEBAEUDE (BU_ID,GEB_ID) values ('9','5');
Insert into BURG_TO_GEBAEUDE (BU_ID,GEB_ID) values ('10','5');
Insert into BURG_TO_GEBAEUDE (BU_ID,GEB_ID) values ('11','5');
Insert into BURG_TO_GEBAEUDE (BU_ID,GEB_ID) values ('12','5');
Insert into BURG_TO_GEBAEUDE (BU_ID,GEB_ID) values ('13','5');
Insert into BURG_TO_GEBAEUDE (BU_ID,GEB_ID) values ('14','5');
Insert into BURG_TO_GEBAEUDE (BU_ID,GEB_ID) values ('15','5');
Insert into BURG_TO_GEBAEUDE (BU_ID,GEB_ID) values ('16','5');
Insert into BURG_TO_GEBAEUDE (BU_ID,GEB_ID) values ('17','5');
Insert into BURG_TO_GEBAEUDE (BU_ID,GEB_ID) values ('18','5');
Insert into BURG_TO_GEBAEUDE (BU_ID,GEB_ID) values ('19','5');
Insert into BURG_TO_GEBAEUDE (BU_ID,GEB_ID) values ('20','5');
Insert into BURG_TO_GEBAEUDE (BU_ID,GEB_ID) values ('21','5');
Insert into BURG_TO_GEBAEUDE (BU_ID,GEB_ID) values ('22','5');
Insert into BURG_TO_GEBAEUDE (BU_ID,GEB_ID) values ('23','5');
Insert into BURG_TO_GEBAEUDE (BU_ID,GEB_ID) values ('24','5');
Insert into BURG_TO_GEBAEUDE (BU_ID,GEB_ID) values ('25','5');
Insert into BURG_TO_GEBAEUDE (BU_ID,GEB_ID) values ('26','5');
Insert into BURG_TO_GEBAEUDE (BU_ID,GEB_ID) values ('27','5');
Insert into BURG_TO_GEBAEUDE (BU_ID,GEB_ID) values ('28','5');
Insert into BURG_TO_GEBAEUDE (BU_ID,GEB_ID) values ('29','5');
Insert into BURG_TO_GEBAEUDE (BU_ID,GEB_ID) values ('30','5');
Insert into BURG_TO_GEBAEUDE (BU_ID,GEB_ID) values ('31','5');
Insert into BURG_TO_GEBAEUDE (BU_ID,GEB_ID) values ('32','5');
Insert into BURG_TO_GEBAEUDE (BU_ID,GEB_ID) values ('33','5');
Insert into BURG_TO_GEBAEUDE (BU_ID,GEB_ID) values ('34','5');
Insert into BURG_TO_GEBAEUDE (BU_ID,GEB_ID) values ('35','5');
Insert into BURG_TO_GEBAEUDE (BU_ID,GEB_ID) values ('36','5');
Insert into BURG_TO_GEBAEUDE (BU_ID,GEB_ID) values ('37','5');
Insert into BURG_TO_GEBAEUDE (BU_ID,GEB_ID) values ('38','5');
Insert into BURG_TO_GEBAEUDE (BU_ID,GEB_ID) values ('39','5');
Insert into BURG_TO_GEBAEUDE (BU_ID,GEB_ID) values ('40','5');
Insert into BURG_TO_GEBAEUDE (BU_ID,GEB_ID) values ('41','5');
Insert into BURG_TO_GEBAEUDE (BU_ID,GEB_ID) values ('42','5');
Insert into BURG_TO_GEBAEUDE (BU_ID,GEB_ID) values ('43','5');
Insert into BURG_TO_GEBAEUDE (BU_ID,GEB_ID) values ('44','5');
Insert into BURG_TO_GEBAEUDE (BU_ID,GEB_ID) values ('45','5');
Insert into BURG_TO_GEBAEUDE (BU_ID,GEB_ID) values ('46','5');
Insert into BURG_TO_GEBAEUDE (BU_ID,GEB_ID) values ('47','5');
Insert into BURG_TO_GEBAEUDE (BU_ID,GEB_ID) values ('48','5');
Insert into BURG_TO_GEBAEUDE (BU_ID,GEB_ID) values ('49','5');
Insert into BURG_TO_GEBAEUDE (BU_ID,GEB_ID) values ('50','5');
Insert into BURG_TO_GEBAEUDE (BU_ID,GEB_ID) values ('51','5');
Insert into BURG_TO_GEBAEUDE (BU_ID,GEB_ID) values ('52','5');
Insert into BURG_TO_GEBAEUDE (BU_ID,GEB_ID) values ('53','5');
Insert into BURG_TO_GEBAEUDE (BU_ID,GEB_ID) values ('54','5');
Insert into BURG_TO_GEBAEUDE (BU_ID,GEB_ID) values ('55','5');
Insert into BURG_TO_GEBAEUDE (BU_ID,GEB_ID) values ('56','5');
Insert into BURG_TO_GEBAEUDE (BU_ID,GEB_ID) values ('57','5');
Insert into BURG_TO_GEBAEUDE (BU_ID,GEB_ID) values ('58','5');
Insert into BURG_TO_GEBAEUDE (BU_ID,GEB_ID) values ('59','5');
Insert into BURG_TO_GEBAEUDE (BU_ID,GEB_ID) values ('60','5');
Insert into BURG_TO_GEBAEUDE (BU_ID,GEB_ID) values ('61','5');
Insert into BURG_TO_GEBAEUDE (BU_ID,GEB_ID) values ('62','5');
Insert into BURG_TO_GEBAEUDE (BU_ID,GEB_ID) values ('63','5');
Insert into BURG_TO_GEBAEUDE (BU_ID,GEB_ID) values ('64','5');
Insert into BURG_TO_GEBAEUDE (BU_ID,GEB_ID) values ('65','5');
Insert into BURG_TO_GEBAEUDE (BU_ID,GEB_ID) values ('66','5');
Insert into BURG_TO_GEBAEUDE (BU_ID,GEB_ID) values ('67','5');
Insert into BURG_TO_GEBAEUDE (BU_ID,GEB_ID) values ('68','5');
Insert into BURG_TO_GEBAEUDE (BU_ID,GEB_ID) values ('69','5');
Insert into BURG_TO_GEBAEUDE (BU_ID,GEB_ID) values ('70','5');
Insert into BURG_TO_GEBAEUDE (BU_ID,GEB_ID) values ('1','6');
Insert into BURG_TO_GEBAEUDE (BU_ID,GEB_ID) values ('2','6');
Insert into BURG_TO_GEBAEUDE (BU_ID,GEB_ID) values ('3','6');
Insert into BURG_TO_GEBAEUDE (BU_ID,GEB_ID) values ('4','6');
Insert into BURG_TO_GEBAEUDE (BU_ID,GEB_ID) values ('5','6');
Insert into BURG_TO_GEBAEUDE (BU_ID,GEB_ID) values ('6','6');
Insert into BURG_TO_GEBAEUDE (BU_ID,GEB_ID) values ('7','6');
Insert into BURG_TO_GEBAEUDE (BU_ID,GEB_ID) values ('8','6');
Insert into BURG_TO_GEBAEUDE (BU_ID,GEB_ID) values ('9','6');
Insert into BURG_TO_GEBAEUDE (BU_ID,GEB_ID) values ('10','6');
Insert into BURG_TO_GEBAEUDE (BU_ID,GEB_ID) values ('11','6');
Insert into BURG_TO_GEBAEUDE (BU_ID,GEB_ID) values ('12','6');
Insert into BURG_TO_GEBAEUDE (BU_ID,GEB_ID) values ('13','6');
Insert into BURG_TO_GEBAEUDE (BU_ID,GEB_ID) values ('14','6');
Insert into BURG_TO_GEBAEUDE (BU_ID,GEB_ID) values ('15','6');
Insert into BURG_TO_GEBAEUDE (BU_ID,GEB_ID) values ('16','6');
Insert into BURG_TO_GEBAEUDE (BU_ID,GEB_ID) values ('17','6');
Insert into BURG_TO_GEBAEUDE (BU_ID,GEB_ID) values ('18','6');
Insert into BURG_TO_GEBAEUDE (BU_ID,GEB_ID) values ('19','6');
Insert into BURG_TO_GEBAEUDE (BU_ID,GEB_ID) values ('20','6');
Insert into BURG_TO_GEBAEUDE (BU_ID,GEB_ID) values ('21','6');
Insert into BURG_TO_GEBAEUDE (BU_ID,GEB_ID) values ('22','6');
Insert into BURG_TO_GEBAEUDE (BU_ID,GEB_ID) values ('23','6');
Insert into BURG_TO_GEBAEUDE (BU_ID,GEB_ID) values ('24','6');
Insert into BURG_TO_GEBAEUDE (BU_ID,GEB_ID) values ('25','6');
Insert into BURG_TO_GEBAEUDE (BU_ID,GEB_ID) values ('26','6');
Insert into BURG_TO_GEBAEUDE (BU_ID,GEB_ID) values ('27','6');
Insert into BURG_TO_GEBAEUDE (BU_ID,GEB_ID) values ('28','6');
Insert into BURG_TO_GEBAEUDE (BU_ID,GEB_ID) values ('29','6');
Insert into BURG_TO_GEBAEUDE (BU_ID,GEB_ID) values ('30','6');
Insert into BURG_TO_GEBAEUDE (BU_ID,GEB_ID) values ('31','6');
Insert into BURG_TO_GEBAEUDE (BU_ID,GEB_ID) values ('32','6');
Insert into BURG_TO_GEBAEUDE (BU_ID,GEB_ID) values ('33','6');
Insert into BURG_TO_GEBAEUDE (BU_ID,GEB_ID) values ('34','6');
Insert into BURG_TO_GEBAEUDE (BU_ID,GEB_ID) values ('35','6');
Insert into BURG_TO_GEBAEUDE (BU_ID,GEB_ID) values ('36','6');
Insert into BURG_TO_GEBAEUDE (BU_ID,GEB_ID) values ('37','6');
Insert into BURG_TO_GEBAEUDE (BU_ID,GEB_ID) values ('38','6');
Insert into BURG_TO_GEBAEUDE (BU_ID,GEB_ID) values ('39','6');
Insert into BURG_TO_GEBAEUDE (BU_ID,GEB_ID) values ('40','6');
Insert into BURG_TO_GEBAEUDE (BU_ID,GEB_ID) values ('41','6');
Insert into BURG_TO_GEBAEUDE (BU_ID,GEB_ID) values ('42','6');
Insert into BURG_TO_GEBAEUDE (BU_ID,GEB_ID) values ('43','6');
Insert into BURG_TO_GEBAEUDE (BU_ID,GEB_ID) values ('44','6');
Insert into BURG_TO_GEBAEUDE (BU_ID,GEB_ID) values ('45','6');
Insert into BURG_TO_GEBAEUDE (BU_ID,GEB_ID) values ('46','6');
Insert into BURG_TO_GEBAEUDE (BU_ID,GEB_ID) values ('47','6');
Insert into BURG_TO_GEBAEUDE (BU_ID,GEB_ID) values ('48','6');
Insert into BURG_TO_GEBAEUDE (BU_ID,GEB_ID) values ('49','6');
Insert into BURG_TO_GEBAEUDE (BU_ID,GEB_ID) values ('50','6');
Insert into BURG_TO_GEBAEUDE (BU_ID,GEB_ID) values ('51','6');
Insert into BURG_TO_GEBAEUDE (BU_ID,GEB_ID) values ('52','6');
Insert into BURG_TO_GEBAEUDE (BU_ID,GEB_ID) values ('53','6');
Insert into BURG_TO_GEBAEUDE (BU_ID,GEB_ID) values ('54','6');
Insert into BURG_TO_GEBAEUDE (BU_ID,GEB_ID) values ('55','6');
Insert into BURG_TO_GEBAEUDE (BU_ID,GEB_ID) values ('56','6');
Insert into BURG_TO_GEBAEUDE (BU_ID,GEB_ID) values ('57','6');
Insert into BURG_TO_GEBAEUDE (BU_ID,GEB_ID) values ('58','6');
Insert into BURG_TO_GEBAEUDE (BU_ID,GEB_ID) values ('59','6');
Insert into BURG_TO_GEBAEUDE (BU_ID,GEB_ID) values ('60','6');
Insert into BURG_TO_GEBAEUDE (BU_ID,GEB_ID) values ('61','6');
Insert into BURG_TO_GEBAEUDE (BU_ID,GEB_ID) values ('62','6');
Insert into BURG_TO_GEBAEUDE (BU_ID,GEB_ID) values ('63','6');
Insert into BURG_TO_GEBAEUDE (BU_ID,GEB_ID) values ('64','6');
Insert into BURG_TO_GEBAEUDE (BU_ID,GEB_ID) values ('65','6');
Insert into BURG_TO_GEBAEUDE (BU_ID,GEB_ID) values ('66','6');
Insert into BURG_TO_GEBAEUDE (BU_ID,GEB_ID) values ('67','6');
Insert into BURG_TO_GEBAEUDE (BU_ID,GEB_ID) values ('68','6');
Insert into BURG_TO_GEBAEUDE (BU_ID,GEB_ID) values ('69','6');
Insert into BURG_TO_GEBAEUDE (BU_ID,GEB_ID) values ('70','6');

/* GEB_TO_GEBEIG */
Insert into GEB_TO_GEBEIG (GEB_ID,GE_ID) values ('1','1');
Insert into GEB_TO_GEBEIG (GEB_ID,GE_ID) values ('1','2');
Insert into GEB_TO_GEBEIG (GEB_ID,GE_ID) values ('1','3');
Insert into GEB_TO_GEBEIG (GEB_ID,GE_ID) values ('2','1');
Insert into GEB_TO_GEBEIG (GEB_ID,GE_ID) values ('2','2');
Insert into GEB_TO_GEBEIG (GEB_ID,GE_ID) values ('2','3');
Insert into GEB_TO_GEBEIG (GEB_ID,GE_ID) values ('3','1');
Insert into GEB_TO_GEBEIG (GEB_ID,GE_ID) values ('3','2');
Insert into GEB_TO_GEBEIG (GEB_ID,GE_ID) values ('3','3');
Insert into GEB_TO_GEBEIG (GEB_ID,GE_ID) values ('4','2');
Insert into GEB_TO_GEBEIG (GEB_ID,GE_ID) values ('4','3');
Insert into GEB_TO_GEBEIG (GEB_ID,GE_ID) values ('4','22');
Insert into GEB_TO_GEBEIG (GEB_ID,GE_ID) values ('5','2');
Insert into GEB_TO_GEBEIG (GEB_ID,GE_ID) values ('5','3');
Insert into GEB_TO_GEBEIG (GEB_ID,GE_ID) values ('5','36');
Insert into GEB_TO_GEBEIG (GEB_ID,GE_ID) values ('6','1');
Insert into GEB_TO_GEBEIG (GEB_ID,GE_ID) values ('6','2');
Insert into GEB_TO_GEBEIG (GEB_ID,GE_ID) values ('6','29');
Insert into GEB_TO_GEBEIG (GEB_ID,GE_ID) values ('7','4');
Insert into GEB_TO_GEBEIG (GEB_ID,GE_ID) values ('7','5');
Insert into GEB_TO_GEBEIG (GEB_ID,GE_ID) values ('7','6');
Insert into GEB_TO_GEBEIG (GEB_ID,GE_ID) values ('8','4');
Insert into GEB_TO_GEBEIG (GEB_ID,GE_ID) values ('8','5');
Insert into GEB_TO_GEBEIG (GEB_ID,GE_ID) values ('8','6');
Insert into GEB_TO_GEBEIG (GEB_ID,GE_ID) values ('9','4');
Insert into GEB_TO_GEBEIG (GEB_ID,GE_ID) values ('9','5');
Insert into GEB_TO_GEBEIG (GEB_ID,GE_ID) values ('9','6');
Insert into GEB_TO_GEBEIG (GEB_ID,GE_ID) values ('10','4');
Insert into GEB_TO_GEBEIG (GEB_ID,GE_ID) values ('10','5');
Insert into GEB_TO_GEBEIG (GEB_ID,GE_ID) values ('10','23');
Insert into GEB_TO_GEBEIG (GEB_ID,GE_ID) values ('11','4');
Insert into GEB_TO_GEBEIG (GEB_ID,GE_ID) values ('11','5');
Insert into GEB_TO_GEBEIG (GEB_ID,GE_ID) values ('11','37');
Insert into GEB_TO_GEBEIG (GEB_ID,GE_ID) values ('12','4');
Insert into GEB_TO_GEBEIG (GEB_ID,GE_ID) values ('12','5');
Insert into GEB_TO_GEBEIG (GEB_ID,GE_ID) values ('12','30');
Insert into GEB_TO_GEBEIG (GEB_ID,GE_ID) values ('13','7');
Insert into GEB_TO_GEBEIG (GEB_ID,GE_ID) values ('13','8');
Insert into GEB_TO_GEBEIG (GEB_ID,GE_ID) values ('13','9');
Insert into GEB_TO_GEBEIG (GEB_ID,GE_ID) values ('14','7');
Insert into GEB_TO_GEBEIG (GEB_ID,GE_ID) values ('14','8');
Insert into GEB_TO_GEBEIG (GEB_ID,GE_ID) values ('14','9');
Insert into GEB_TO_GEBEIG (GEB_ID,GE_ID) values ('15','7');
Insert into GEB_TO_GEBEIG (GEB_ID,GE_ID) values ('15','8');
Insert into GEB_TO_GEBEIG (GEB_ID,GE_ID) values ('15','9');
Insert into GEB_TO_GEBEIG (GEB_ID,GE_ID) values ('16','7');
Insert into GEB_TO_GEBEIG (GEB_ID,GE_ID) values ('16','8');
Insert into GEB_TO_GEBEIG (GEB_ID,GE_ID) values ('16','24');
Insert into GEB_TO_GEBEIG (GEB_ID,GE_ID) values ('17','7');
Insert into GEB_TO_GEBEIG (GEB_ID,GE_ID) values ('17','8');
Insert into GEB_TO_GEBEIG (GEB_ID,GE_ID) values ('17','38');
Insert into GEB_TO_GEBEIG (GEB_ID,GE_ID) values ('18','7');
Insert into GEB_TO_GEBEIG (GEB_ID,GE_ID) values ('18','8');
Insert into GEB_TO_GEBEIG (GEB_ID,GE_ID) values ('18','31');
Insert into GEB_TO_GEBEIG (GEB_ID,GE_ID) values ('19','10');
Insert into GEB_TO_GEBEIG (GEB_ID,GE_ID) values ('19','11');
Insert into GEB_TO_GEBEIG (GEB_ID,GE_ID) values ('19','12');
Insert into GEB_TO_GEBEIG (GEB_ID,GE_ID) values ('20','10');
Insert into GEB_TO_GEBEIG (GEB_ID,GE_ID) values ('20','11');
Insert into GEB_TO_GEBEIG (GEB_ID,GE_ID) values ('20','12');
Insert into GEB_TO_GEBEIG (GEB_ID,GE_ID) values ('21','10');
Insert into GEB_TO_GEBEIG (GEB_ID,GE_ID) values ('21','11');
Insert into GEB_TO_GEBEIG (GEB_ID,GE_ID) values ('21','12');
Insert into GEB_TO_GEBEIG (GEB_ID,GE_ID) values ('22','10');
Insert into GEB_TO_GEBEIG (GEB_ID,GE_ID) values ('22','11');
Insert into GEB_TO_GEBEIG (GEB_ID,GE_ID) values ('22','25');
Insert into GEB_TO_GEBEIG (GEB_ID,GE_ID) values ('23','10');
Insert into GEB_TO_GEBEIG (GEB_ID,GE_ID) values ('23','11');
Insert into GEB_TO_GEBEIG (GEB_ID,GE_ID) values ('23','39');
Insert into GEB_TO_GEBEIG (GEB_ID,GE_ID) values ('24','10');
Insert into GEB_TO_GEBEIG (GEB_ID,GE_ID) values ('24','11');
Insert into GEB_TO_GEBEIG (GEB_ID,GE_ID) values ('24','32');
Insert into GEB_TO_GEBEIG (GEB_ID,GE_ID) values ('25','13');
Insert into GEB_TO_GEBEIG (GEB_ID,GE_ID) values ('25','14');
Insert into GEB_TO_GEBEIG (GEB_ID,GE_ID) values ('25','15');
Insert into GEB_TO_GEBEIG (GEB_ID,GE_ID) values ('26','13');
Insert into GEB_TO_GEBEIG (GEB_ID,GE_ID) values ('26','14');
Insert into GEB_TO_GEBEIG (GEB_ID,GE_ID) values ('26','15');
Insert into GEB_TO_GEBEIG (GEB_ID,GE_ID) values ('27','13');
Insert into GEB_TO_GEBEIG (GEB_ID,GE_ID) values ('27','14');
Insert into GEB_TO_GEBEIG (GEB_ID,GE_ID) values ('27','15');
Insert into GEB_TO_GEBEIG (GEB_ID,GE_ID) values ('28','13');
Insert into GEB_TO_GEBEIG (GEB_ID,GE_ID) values ('28','14');
Insert into GEB_TO_GEBEIG (GEB_ID,GE_ID) values ('28','26');
Insert into GEB_TO_GEBEIG (GEB_ID,GE_ID) values ('29','13');
Insert into GEB_TO_GEBEIG (GEB_ID,GE_ID) values ('29','14');
Insert into GEB_TO_GEBEIG (GEB_ID,GE_ID) values ('29','40');
Insert into GEB_TO_GEBEIG (GEB_ID,GE_ID) values ('30','13');
Insert into GEB_TO_GEBEIG (GEB_ID,GE_ID) values ('30','14');
Insert into GEB_TO_GEBEIG (GEB_ID,GE_ID) values ('30','33');
Insert into GEB_TO_GEBEIG (GEB_ID,GE_ID) values ('31','16');
Insert into GEB_TO_GEBEIG (GEB_ID,GE_ID) values ('31','17');
Insert into GEB_TO_GEBEIG (GEB_ID,GE_ID) values ('31','18');
Insert into GEB_TO_GEBEIG (GEB_ID,GE_ID) values ('32','16');
Insert into GEB_TO_GEBEIG (GEB_ID,GE_ID) values ('32','17');
Insert into GEB_TO_GEBEIG (GEB_ID,GE_ID) values ('32','18');
Insert into GEB_TO_GEBEIG (GEB_ID,GE_ID) values ('33','16');
Insert into GEB_TO_GEBEIG (GEB_ID,GE_ID) values ('33','17');
Insert into GEB_TO_GEBEIG (GEB_ID,GE_ID) values ('33','18');
Insert into GEB_TO_GEBEIG (GEB_ID,GE_ID) values ('34','16');
Insert into GEB_TO_GEBEIG (GEB_ID,GE_ID) values ('34','17');
Insert into GEB_TO_GEBEIG (GEB_ID,GE_ID) values ('34','27');
Insert into GEB_TO_GEBEIG (GEB_ID,GE_ID) values ('35','16');
Insert into GEB_TO_GEBEIG (GEB_ID,GE_ID) values ('35','17');
Insert into GEB_TO_GEBEIG (GEB_ID,GE_ID) values ('35','41');
Insert into GEB_TO_GEBEIG (GEB_ID,GE_ID) values ('36','16');
Insert into GEB_TO_GEBEIG (GEB_ID,GE_ID) values ('36','17');
Insert into GEB_TO_GEBEIG (GEB_ID,GE_ID) values ('36','34');
Insert into GEB_TO_GEBEIG (GEB_ID,GE_ID) values ('37','19');
Insert into GEB_TO_GEBEIG (GEB_ID,GE_ID) values ('37','20');
Insert into GEB_TO_GEBEIG (GEB_ID,GE_ID) values ('37','21');
Insert into GEB_TO_GEBEIG (GEB_ID,GE_ID) values ('38','19');
Insert into GEB_TO_GEBEIG (GEB_ID,GE_ID) values ('38','20');
Insert into GEB_TO_GEBEIG (GEB_ID,GE_ID) values ('38','21');
Insert into GEB_TO_GEBEIG (GEB_ID,GE_ID) values ('39','19');
Insert into GEB_TO_GEBEIG (GEB_ID,GE_ID) values ('39','20');
Insert into GEB_TO_GEBEIG (GEB_ID,GE_ID) values ('39','21');
Insert into GEB_TO_GEBEIG (GEB_ID,GE_ID) values ('40','19');
Insert into GEB_TO_GEBEIG (GEB_ID,GE_ID) values ('40','20');
Insert into GEB_TO_GEBEIG (GEB_ID,GE_ID) values ('40','28');
Insert into GEB_TO_GEBEIG (GEB_ID,GE_ID) values ('41','19');
Insert into GEB_TO_GEBEIG (GEB_ID,GE_ID) values ('41','20');
Insert into GEB_TO_GEBEIG (GEB_ID,GE_ID) values ('41','42');
Insert into GEB_TO_GEBEIG (GEB_ID,GE_ID) values ('42','19');
Insert into GEB_TO_GEBEIG (GEB_ID,GE_ID) values ('42','20');
Insert into GEB_TO_GEBEIG (GEB_ID,GE_ID) values ('42','35');

/* EINHEIT */
insert into EINHEIT
values (1, 1, 1, 'Leichter Bogenschuetze', 'Bogenschuetze', 'Holz', 120);
insert into EINHEIT
values (2, 2, 7, 'Leichter Axtkaempfer', 'Axtkaempfer', 'Eisen', 100);
insert into EINHEIT
values (3, 3, 13, 'leichter Schwerterkaempfer', 'Schwertkaempfer', 'Eisen', 150);
insert into EINHEIT
values (4, 4, 19, 'Neuling des Speeres', 'Speertraeger', 'Holz', 100);
insert into EINHEIT
values (5, 5, 25, 'Meister der Schwertkunst', 'Schwertkaempfer', 'Eisen', 450);
insert into EINHEIT
values (6, 6, 31, 'Berittener Kaempfer', 'Reiter', 'Eisen', 600);
insert into EINHEIT
values (7, 7, 37, 'Schwerer Speerkaempfer', 'Speertraeger','Holz', 500);
insert into EINHEIT
values (8, 8, 42, 'Schwerer Reiter', 'Reiter', 'Eisen', 1000);
insert into EINHEIT
values (9, 9, 19, 'Großmeister des Schwertes', 'Schwertkaempfer', 'Eisen', 1100);
insert into EINHEIT
values (10, 10, 12, 'Gimli', 'Axtkaempfer', 'Eisen', 15000);

/* EINHEIT_GRUPPE */
insert into EINHEIT_GRUPPE
values (1, 83);
insert into EINHEIT_GRUPPE
values (2, 253);
insert into EINHEIT_GRUPPE
values (3, 27);
insert into EINHEIT_GRUPPE
values (4, 246);
insert into EINHEIT_GRUPPE
values (5, 202);
insert into EINHEIT_GRUPPE
values (6, 70);
insert into EINHEIT_GRUPPE
values (7, 113);
insert into EINHEIT_GRUPPE
values (8, 188);
insert into EINHEIT_GRUPPE
values (9, 296);
insert into EINHEIT_GRUPPE
values (10, 261);

/* GRUPPE */
insert into GRUPPE
values (1, 1);
insert into GRUPPE
values (2, 2);
insert into GRUPPE
values (3, 3);
insert into GRUPPE
values (4, 4);
insert into GRUPPE
values (5, 5);
insert into GRUPPE
values (6, 6);
insert into GRUPPE
values (7, 7);
insert into GRUPPE
values (8, 8);
insert into GRUPPE
values (9, 9);
insert into GRUPPE
values (10, 10);

/* ANGRIFF */
insert into ANGRIFF 
values (1, 1, 1, 1, '4.01.2022 12:33', 'Gewonnen');
insert into ANGRIFF 
values (2, 2, 2, 2, '19.12.2021 13:09', 'Verloren');
insert into ANGRIFF 
values (3, 3, 3, 3, '24.12.2021 19:13', 'Verloren');
insert into ANGRIFF
values (4, 4, 4, 4, '01.01.2022 00:01', 'Gewonnen');
insert into ANGRIFF
values (5, 5, 5, 5, '10.12.2021 10:10', 'Geplant');
insert into ANGRIFF 
values (6, 6, 6, 6, '09.01.2022 23:12', 'Gewonnen');
insert into ANGRIFF 
values (7, 7, 7, 7, '15.01.2022 14:53', 'Verloren');
insert into ANGRIFF 
values (8, 8, 8, 8, '01.11.2021 09:30', 'Gewonnen');
insert into ANGRIFF 
values (9, 9, 9, 9, '04.01.2022 21:22', 'Gewonnen');
insert into ANGRIFF 
values (10, 10, 10, 10, '18.09.2021 18:09', 'Gewonnen');

/* EINHEIT_ATTRIBUT */
insert into EINHEIT_ATTRIBUT
values(1, 1, 5);
insert into EINHEIT_ATTRIBUT
values(2, 2, 1);
insert into EINHEIT_ATTRIBUT
values(3, 3, 1);
insert into EINHEIT_ATTRIBUT
values(4, 4, 6);
insert into EINHEIT_ATTRIBUT
values(5, 5, 10);
insert into EINHEIT_ATTRIBUT
values(6, 6, 1);
insert into EINHEIT_ATTRIBUT
values(7, 7, 5);
insert into EINHEIT_ATTRIBUT
values(8, 8, 1);
insert into EINHEIT_ATTRIBUT
values(9, 9, 1);
insert into EINHEIT_ATTRIBUT
values(10, 10, 5);

/* ATTRIBUTE */ 
insert into ATTRIBUTE
values (1, 1, 'Angriff', 'Bogenschaden');
insert into ATTRIBUTE
values (2, 2, 'Angriff', 'Axtschaden');
insert into ATTRIBUTE
values (3, 3, 'Angriff', 'Schwertschaden');
insert into ATTRIBUTE
values (4, 4, 'Angriff', 'Speerschaden');
insert into ATTRIBUTE
values (5, 5, 'Verteidigung', 'Verteidigungswert');
insert into ATTRIBUTE
values (6, 6, 'Bewegungsgeschwindigkeit', 'Bewegungsgeschwindigkeit');


/* 
   Eisen = 1 
   Lehm = 2 
   Holz = 3
*/   
/* KRIEGSBEUTE */
insert into KRIEGSBEUTE
values (478, 1, 212, 3);
insert into KRIEGSBEUTE
values (561, 2, 154, 1);
insert into KRIEGSBEUTE
values (702, 3, 787, 2);
insert into KRIEGSBEUTE
values (203, 4, 272, 3);
insert into KRIEGSBEUTE
values (604, 5, 365, 1);
insert into KRIEGSBEUTE
values (547, 6, 952, 1);
insert into KRIEGSBEUTE
values (947, 7, 669, 1);
insert into KRIEGSBEUTE
values (809, 8, 454, 2);
insert into KRIEGSBEUTE
values (204, 9, 216, 1);
insert into KRIEGSBEUTE
values (369, 10, 770, 2);
