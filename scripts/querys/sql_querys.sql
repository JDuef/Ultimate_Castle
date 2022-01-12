/* account erstellen */
INSERT INTO ACCOUNT(acc_id, welt_id, acc_username, acc_password, acc_email)
VALUES ([account id], [welt id], [Benutername], [Passwort], [E-Mail]);

INSERT INTO ACCOUNT(acc_id, welt_id, acc_username, acc_password, acc_email)
VALUES (21, 1, 'shaker', 'this is a test pw', 'shaker@web.de');

/* account allianz und koenigreich zuweisen */
UPDATE ACCOUNT
SET koe_id = [id eines Königreichs]
WHERE acc_id = [id des accounts];

UPDATE ACCOUNT
SET al_id = [id einer allianz]
WHERE acc_id = [id des accounts];

/* account loeschen */
DELETE FROM ACCOUNT
WHERE acc_id = [id des accounts];

DELETE FROM ACCOUNT
WHERE acc_id = 21;

/* auktion erstellen */
INSERT INTO AUKTION(auk_id, acc_id, item_id, auk_start_datum, auk_end_datum)
VALUES ([id des erstellenden Accounts], [id des items welches versteigert wird], [erstell datum], [ende der auktion datum]);

INSERT INTO AUKTION(auk_id, acc_id, item_id, auk_start_datum, auk_end_datum)
VALUES (6, 1, 1, TO_DATE('2022-01-12 13:34:26', 'yyyy/mm/dd hh24:mi:ss'), TO_DATE('2022-01-13 13:34:26', 'yyyy/mm/dd hh24:mi:ss'));

/* alle laufenden auktionen zurückgeben */
CREATE VIEW Laufende_Auktionen AS
SELECT *
FROM AUKTION
WHERE sysdate <= auk_end_datum;

/* alle abgelaufenden auktionen zurückgeben */
CREATE VIEW Abgelaufende_Auktionen AS
SELECT *
FROM AUKTION
WHERE sysdate >= auk_end_datum;

/* alle auktionen zurückgeben welche von einem bestimmten account erstellt wurden */
SELECT *
FROM AUKTION
WHERE acc_id = [id eines accounts]

SELECT *
FROM AUKTION
WHERE acc_id = 1;

/* gebot abgeben */
INSERT INTO GEBOT(gebot_id, auk_id, acc_id, gebot_wert)
VALUES(51, 1, 5, 3);

/* alle gebote für eine bestimmte auktion zurückgeben */
SELECT *
FROM GEBOT
WHERE auk_id = [id einer Auktion]

SELECT *
FROM GEBOT
WHERE auk_id = 1;

/* das höchste gebot für eine bestimmte auktion zurückgeben */
SELECT *
FROM GEBOT
WHERE auk_id = [id der Auktion] AND
gebot_wert = (SELECT MAX(gebot_wert) FROM GEBOT WHERE auk_id = [id der Auktion])

SELECT *
FROM GEBOT
WHERE auk_id = 1 AND
gebot_wert = (SELECT MAX(gebot_wert) FROM GEBOT WHERE auk_id = 1);

/* bestellung erstellen */
INSERT INTO BESTELLUNG(best_id, acc_id, best_datum, best_wert)
VALUES ([id der Bestellung], [id eines Accounts], [Datum], [Bestellwert]);

INSERT INTO bestellung_to_item(best_id, item_id, anzahl)
VALUES ([id der Bestellung], [id eines Items], [Anzahl des Items]);
/* WENN MEHRERE ITEMS DANN LETZTES INSERT WIEDERHOLEN*/

INSERT INTO BESTELLUNG(best_id, acc_id, best_datum, best_wert)
VALUES (21,1, sysdate, 42);

INSERT INTO bestellung_to_item(best_id, item_id, anzahl)
VALUES (21, 1, 3);

INSERT INTO bestellung_to_item(best_id, item_id, anzahl)
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
WHERE item_id = [id des items];

UPDATE ACCOUNT_TO_ITEM
SET ANZAHL = ANZAHL + 1
WHERE item_id = 11;

/* wenn der account noch kein item des typs besitzt */
INSERT INTO ITEM_TO_ACCOUNT(acc_id, item_id, anzahl)
VALUES ([id eines Accounts], [id eines Items], [anzahl]);

INSERT INTO ACCOUNT_TO_ITEM(acc_id, item_id, anzahl)
VALUES (1, 1, 3);

INSERT INTO ACCOUNT_TO_ITEM(acc_id, item_id, anzahl)
VALUES (1, 2, 1);

/* item von account löschen */
/* wenn der account mehr als ein item des typs besitzt */
UPDATE ACCOUNT_TO_ITEM
SET anzahl = anzhal - 1
WHERE item_id = [id des items];

UPDATE ACCOUNT_TO_ITEM
SET ANZAHL = ANZAHL - 1
WHERE item_id = 11;

/* wenn der account nur noch ein item des typs besitzt */
DELETE FROM ITEM_TO_ACCOUNT
WHERE item_id = [id des items] AND acc_id = [id des accounts];

DELETE FROM ACCOUNT_TO_ITEM
WHERE item_id = 2 AND acc_id = 1;