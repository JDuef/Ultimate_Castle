/* account erstellen */
/*
Anforderung:
Wenn sich ein Benutzer registriert soll dieser in Form eines neuen Datensatzes in die Account-Tabelle eingefügt werden.
*/
/* Statement: */

INSERT INTO ACCOUNT(acc_id, acc_username, acc_password, acc_email)
VALUES ([Account ID], [Benutername], [Passwort], [E-Mail]);

/* Beispielaufruf: */
INSERT INTO ACCOUNT(acc_id, acc_username, acc_password, acc_email)
VALUES (21, 'shaker', 'this is a test pw', 'shaker@web.de');

/* account allianz zuweisen */
UPDATE ACCOUNT
SET al_id = [Allianz ID]
WHERE acc_id = [Account ID];

/* account loeschen */
/* on delete cascade */
DELETE FROM ACCOUNT
WHERE acc_id = [Account ID];

DELETE FROM ACCOUNT
WHERE acc_id = 21;

/* auktion erstellen */
/*
Anforderung:
Wenn ein Spieler eine Auktion erstellt muss dies in der Auktion-Tabelle reflektiert werden.
*/
/* Statement: */
INSERT INTO AUKTION(auk_id, acc_id, item_id, auk_start_datum, auk_end_datum)
VALUES ([Account ID], [ID des Items welches versteigert wird], [erstell Datum], [End-Datum der Auktion]);
/* Beispielaufruf: */
INSERT INTO AUKTION(auk_id, acc_id, item_id, auk_start_datum, auk_end_datum)
VALUES (6, 1, 1, TO_DATE('2022-01-12 13:34:26', 'yyyy/mm/dd hh24:mi:ss'), TO_DATE('2022-01-13 13:34:26', 'yyyy/mm/dd hh24:mi:ss'));

/* alle laufenden auktionen zurückgeben */
/*
Anforderung:
Es soll ermöglicht werden alle laufenden Auktionen für zum Beispiel eine Übersicht in einem Auktionshaus-Fenster zurückzugeben.
*/
/* Statement: */
CREATE VIEW Laufende_Auktionen AS
SELECT *
FROM AUKTION
WHERE CURRENT_TIMESTAMP <= auk_end_datum;
/* Beispielaufruf: */
SELECT *
FROM Laufende_Auktionen;

/* alle abgelaufenden auktionen zurückgeben */
/*
Anforderung:
Es soll ermöglicht werden alle abgelaufenden Auktionen zurückzugeben um diese zu Verabeiten. Also das höchste gebot zu ermitteln und das Item zu transferieren.
*/
/* Statement: */
/* möchste gebot mit joinen*/
CREATE VIEW Abgelaufene_Auktionen AS
SELECT *
FROM AUKTION
WHERE CURRENT_TIMESTAMP >= auk_end_datum;
/* Beispielaufruf: */
SELECT *
FROM Abgelaufene_Auktionen;

/* alle auktionen + das maximale Gebot zurückgeben welche von einem bestimmten account erstellt wurden */
/*
Anforderung:
Alle auktionen sollen zurückgegeben werden welche von einem bestimmtem Account erstellt wurden um diese in einer "meine Auktionen" Übersicht anzuzeigen. 
*/
/* Statement: */
CREATE VIEW AuktionMitMaxGebot AS
SELECT a.auk_id, a.acc_id, a.item_id, a.auk_start_datum, a.auk_end_datum, g.max_gebot
FROM AUKTION a
LEFT OUTER JOIN (
    SELECT auk_id, max(gebot_wert) max_gebot
    FROM GEBOT
    GROUP BY auk_id) g ON g.auk_id = a.auk_id;

SELECT * 
FROM AUKTIONMITMAXGEBOT
WHERE acc_id = 1;

/* gebot abgeben */
/*
Anforderung:
Wenn ein Spieler ein Gebot auf eine Auktion abgibt muss dieses in die Gebot-Tabelle eingefügt werden.
*/
/* Statement: */
INSERT INTO GEBOT(gebot_id, auk_id, acc_id, gebot_wert)
VALUES([Gebot ID], [Auktion ID], [Account ID], [Gebot Wert]);
/* Beispielaufruf: */
INSERT INTO GEBOT(gebot_id, auk_id, acc_id, gebot_wert)
VALUES(51, 1, 5, 3);

/* alle gebote für eine bestimmte auktion zurückgeben */
/*
Anforderung:
Für eine Historie aller Gebote auf eine Auktion sollen alle Gebote zurückgegeben werden.
*/
/* Statement: */
SELECT *
FROM GEBOT
WHERE auk_id = [id einer Auktion]
/* Beispielaufruf: */
SELECT *
FROM GEBOT
WHERE auk_id = 1;

/* das höchste gebot für eine bestimmte auktion zurückgeben */
/*
Anforderung:
Das höchste gebot für eine bestimmte Auktion soll ermittelt werden um dieses in der GUI anzuzeigen oder zu ermitteln wer eine Auktion gewonnen hat nachdem diese abgelaufen ist.
*/
/* Statement: */
SELECT gebot_wert
FROM GEBOT
WHERE auk_id = [id der Auktion] AND
gebot_wert = (SELECT MAX(gebot_wert) FROM GEBOT WHERE auk_id = [id der Auktion])
/* Beispielaufruf: */
SELECT *
FROM GEBOT
WHERE auk_id = 1 AND
gebot_wert = (SELECT MAX(gebot_wert) FROM GEBOT WHERE auk_id = 1);

/* bestellung erstellen */
INSERT INTO BESTELLUNG(best_id, acc_id, best_datum, best_wert)
VALUES ([id der Bestellung], [id eines Accounts], [Datum], [Bestellwert]);

INSERT INTO bestellung_to_item(best_id, item_id, BEST_ITEM_ANZAHL)
VALUES ([id der Bestellung], [id eines Items], [Anzahl des Items]);
/* WENN MEHRERE ITEMS DANN LETZTES INSERT WIEDERHOLEN*/

INSERT INTO BESTELLUNG(best_id, acc_id, best_datum, best_wert)
VALUES (21,1, CURRENT_TIMESTAMP, 42);

INSERT INTO bestellung_to_item(best_id, item_id, BEST_ITEM_ANZAHL)
VALUES (21, 1, 3);

INSERT INTO bestellung_to_item(best_id, item_id, BEST_ITEM_ANZAHL)
VALUES (21, 2, 1);

/* alle items welche ein bestimmter account besitzt zurückgeben */
SELECT *
FROM ITEM
INNER JOIN ACCOUNT_TO_ITEM ON ITEM.item_id = ACCOUNT_TO_ITEM.item_id
WHERE acc_id = [id eines accounts];

SELECT *
FROM ITEM
INNER JOIN ACCOUNT_TO_ITEM ON ITEM.item_id = ACCOUNT_TO_ITEM.item_id
WHERE acc_id = 1;

/* item dem account hinzufügen */
/* wenn der account schon ein item des typs besitzt */
UPDATE ITEM_TO_ACCOUNT
SET ANZAHL = ANZAHL + 1
WHERE item_id = [id des items] AMD acc_id = [ID eines Accounts];

UPDATE ACCOUNT_TO_ITEM
SET ANZAHL = ANZAHL + 1
WHERE item_id = 11 AND acc_id = 1;

/* wenn der account noch kein item des typs besitzt */
INSERT INTO ITEM_TO_ACCOUNT(acc_id, item_id, anzahl)
VALUES ([id eines Accounts], [id eines Items], [anzahl]);

INSERT INTO ACCOUNT_TO_ITEM(acc_id, item_id, anzahl)
VALUES (1, 1, 3);

INSERT INTO ACCOUNT_TO_ITEM(acc_id, item_id, anzahl)
VALUES (1, 2, 1);

/* item von account löschen */
/* wenn der account mehr als ein item des typs besitzt */
UPDATE ITEM_TO_ACCOUNT
SET ANZAHL = ANZAHL - 1
WHERE item_id = [id des items] AMD acc_id = [ID eines Accounts];

UPDATE ACCOUNT_TO_ITEM
SET ANZAHL = ANZAHL - 1
WHERE item_id = 11 AND acc_id = 1;

/* wenn der account nur noch ein item des typs besitzt */
DELETE FROM ITEM_TO_ACCOUNT
WHERE item_id = [id des items] AND acc_id = [id des accounts];

DELETE FROM ACCOUNT_TO_ITEM
WHERE item_id = 2 AND acc_id = 1;


/* AUKTION NACH ITEM ODER ATTRIBUT SUCHEN , MIN MAX WERT */
CREATE VIEW AuktionSuche AS
SELECT a.auk_id, a.item_id, i.item_name, a.auk_start_datum, a.auk_end_datum, g.max_gebot
FROM AUKTION a
INNER JOIN (
    SELECT auk_id, max(gebot_wert) max_gebot
    FROM GEBOT
    GROUP BY auk_id) g ON g.auk_id = a.auk_id
INNER JOIN ITEM i ON i.item_id = a.item_id
WHERE a.auk_end_datum > CURRENT_TIMESTAMP;

SELECT *
FROM AuktionSuche
WHERE item_name LIKE ('%[Suchbegriff]%')
AND max_gebot < [Limit];

SELECT *
FROM AuktionSuche
WHERE item_name LIKE ('%booster%')
AND max_gebot < 25;

/* soziales */

/* Alle geschriebenen Nachrichten (Chatroom-Nachrichten & Forenkommentare) eines Nutzers anzeigen*/
CREATE OR REPLACE VIEW nachrichtenuebersicht AS
SELECT acc_id, content, date_of_creation, nachrichtentyp FROM 
    (SELECT acc_id, ko_inhalt AS content, ko_date_of_creation AS date_of_creation, 'Kommentar' AS NACHRICHTENTYP
        FROM KOMMENTAR
    UNION ALL   
    SELECT acc_id, cn_inhalt AS content, cn_date_of_creation AS date_of_creation, 'Chatnachricht' AS NACHRICHTENTYP
        FROM CHATNACHRICHT)
        ;

/* Beispielaufruf: */

SELECT * FROM nachrichtenuebersicht
WHERE acc_id=12
ORDER BY date_of_creation;

/* Alle Kommentare eines Foreneintrages zeitlich geordnet mit Nutzernamen des Absenders anzeigen */

CREATE OR REPLACE VIEW kommentarverlauf AS
SELECT ACCOUNT.acc_username AS username, KOMMENTAR.ko_inhalt as content, 
KOMMENTAR.ko_date_of_creation as date_of_creation, KOMMENTAR.ei_id as eintrag_id
FROM KOMMENTAR
INNER JOIN ACCOUNT 
ON account.acc_id=kommentar.acc_id;

/* Beispielaufruf */

SELECT username, content, date_of_creation 
FROM kommentarverlauf
WHERE eintrag_id=2
ORDER BY date_of_creation;

/* Alle chatraum nachrichten zeitlich geordnet mit Nutzernamen des Absenders anzeigen */

CREATE OR REPLACE VIEW chatraumverlauf AS
SELECT ACCOUNT.acc_username AS username, CHATROOM_NACHRICHT.crn_inhalt as content, CHATROOM_NACHRICHT.CRN_DATE_OF_CREATION as date_of_creation, CHATROOM_NACHRICHT.cr_id as chatroom_id
FROM CHATROOM_NACHRICHT
INNER JOIN ACCOUNT 
ON account.acc_id=CHATROOM_NACHRICHT.acc_id;

/* Beispielaufruf */

SELECT username, content, date_of_creation 
FROM chatraumverlauf
WHERE chatroom_id=2
ORDER BY date_of_creation;

/* Foreneintraege, deren letzter Kommentar aelter als angegebene Zeit ist */
CREATE OR REPLACE VIEW letzterkommentar AS 
SELECT eintrag_id, MAX(date_of_creation) AS DATE_LATEST_COMMENT
FROM kommentarverlauf group by eintrag_id;

SELECT EINTRAG_ID, date_latest_comment, (select extract(day from ((SELECT SYSDATE from dual) - date_latest_comment)) from dual) AS AGE_IN_DAYS
FROM letzterkommentar 
WHERE (select extract(day from ((SELECT SYSDATE from dual) - date_latest_comment)) from dual) > 60;

/* Chatverlauf mit user anzeigen */
SELECT a.ACC_USERNAME, cn.cn_inhalt, cn.cn_date_of_creation 
FROM CHATNACHRICHT cn 
INNER JOIN ACCOUNT a ON cn.ACC_ID=a.ACC_ID
WHERE (cn.ACC_ID=1 AND cn.ACC_ACC_ID=2) OR (cn.ACC_ACC_ID=1 AND cn.ACC_ID=2)
ORDER BY cn.CN_DATE_OF_CREATION;

/* Burgen und Gebäude*/

/* Alle Burgen in einem Königreich */
SELECT BU_BURGNAME, BU_LEHM, BU_EISEN, bu_holz FROM BURG
WHERE koe_id = 3;

/* Alle Koenigreiche von Account */
SELECT * FROM koenigreich 
WHERE acc_id = 2;

/* Alle Koenigreiche von Account mit Anzahl an Burgen pro Königreich */
DROP VIEW alleKoenigreiche;

CREATE VIEW alleKoenigreiche AS
SELECT acc_id, koe_wappen, koe_ruhm, welt_id, (
    SELECT COUNT(*) FROM BURG
    WHERE burg.koe_id = koenigreich.koe_id) AS Anzahl_Burgen 
FROM koenigreich;    

SELECT * FROM alleKoenigreiche
WHERE acc_id = 10;

/* zeige alle Gebäude in einer Burg */
DROP VIEW GebaeudeInBurg;

CREATE VIEW GebaeudeInBurg AS
SELECT brg.bu_id, brg.bu_burgname, gb.geb_typ, gb.geb_level FROM burg_to_gebaeude 
INNER JOIN gebaeude gb ON burg_to_gebaeude.geb_id = gb.geb_id 
INNER JOIN burg brg on burg_to_gebaeude.bu_id=brg.bu_id;

SELECT * 
FROM GebaeudeInBurg
WHERE bu_id = [burgId];

SELECT * 
FROM GebaeudeInBurg
WHERE bu_id = 3;

/* wie teuer und wie lange dauert das nächste upgraden? */
DROP VIEW naechstesGebUpgrade;

CREATE VIEW naechstesGebUpgrade AS
SELECT gb.geb_typ, gb.geb_level, ge.ge_eigenschaft, ge.ge_wert FROM geb_to_gebeig
INNER JOIN gebaeude gb ON geb_to_gebeig.geb_id = gb.geb_id
INNER JOIN gebaeude_eigenschaft ge ON geb_to_gebeig.ge_id = ge.ge_id;

SELECT *
FROM naechstesGebUpgrade
WHERE geb_level = [gebLvl] AND geb_typ = [geb_typ];

SELECT *
FROM naechstesGebUpgrade
WHERE geb_level = 4 AND geb_typ = 'Eisenmine';

SELECT *
FROM naechstesGebUpgrade
WHERE geb_level = 4 AND geb_typ = 'Eisenmine';

SELECT *
FROM naechstesGebUpgrade
WHERE geb_level = 4 AND geb_typ = 'Eisenmine' AND ge_eigenschaft = 'Kosten';

/* Alle Spieleracc auf einer Welt */
SELECT koenigreich.koe_wappen, koenigreich.koe_ruhm, koenigreich.welt_id, acc.acc_username FROM koenigreich
INNER JOIN account acc ON acc.acc_id = koenigreich.acc_id
WHERE koenigreich.welt_id = 3;

/* Alle Burgen eines Spielers */ 
SELECT acc.acc_username, kr.koe_wappen, burg.bu_burgname, burg.bu_position_x, burg.bu_position_y FROM BURG
INNER JOIN koenigreich kr ON kr.koe_id = burg.koe_id
INNER JOIN account acc ON acc.acc_id = kr.acc_id
WHERE acc.acc_username = 'tnorridge0';

/* Alle Königreiche sortiert nach Ruhm auf einer Welt */
SELECT * FROM koenigreich
WHERE welt_id = [weltId]
ORDER BY koe_ruhm DESC; 

SELECT * FROM koenigreich
WHERE welt_id = 2
ORDER BY koe_ruhm DESC;

/* Beginnen auf einer Welt (Erstellen Königreich, Erstellen einer Burg) */
Insert into KOENIGREICH (KOE_WAPPEN,KOE_RUHM,KOE_ID,WELT_ID,ACC_ID) 
values ('1','0','36','3','4');

/* Hinzufügen einer neuen Burg*/
INSERT INTO BURG (BU_ID, KOE_ID, BU_BURGNAME, BU_LEHM, BU_EISEN, BU_HOLZ, BU_POSITION_X, BU_POSITION_Y) 
VALUES (71, 36, 'asda212', 0, 0, 0, 1, 1);

/* Verknüpfen von Rathaus lvl1*/
Insert into burg_to_gebaeude (bu_id, geb_id)
Values (71, 6);

/* Updaten von Königreichsid von Burg (Übernahme) */
UPDATE burg 
SET koe_id = 4
WHERE bu_id = 20;

