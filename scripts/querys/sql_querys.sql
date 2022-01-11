/* account erstellen */
INSERT INTO ACCOUNT(acc_username, acc_password, acc_email)
VALUES ([Benutername], [Passwort], [E-Mail]);

/* account welt und koenigreich zuweisen */
UPDATE ACCOUNT
SET welt_id = [id einer Welt], koe_id = [id eines Königreichs]
WHERE acc_id = [id des accounts];

/* account loeschen */
DELETE FROM ACCOUNT
WHERE acc_id = [id des accounts];

/* auktion erstellen */
INSERT INTO AUKTION(auk_id, acc_id, item_id, auk_start_datum, auk_end_datum)
VALUES ([id des erstellenden Accounts], [id des items welches versteigert wird], [erstell datum], [ende der auktion datum]);

/* alle laufenden auktionen zurückgeben */
CREATE VIEW Laufende_Auktionen AS
SELECT *
FROM AUKTION
WHERE auk_start_datum >= auk_end_datum

/* alle abgelaufenden auktionen zurückgeben */
CREATE VIEW Abgelaufende_Auktionen AS
SELECT *
FROM AUKTION
WHERE auk_start_datum <= auk_end_datum

/* alle auktionen zurückgeben welche von einem bestimmten account erstellt wurden */
SELECT *
FROM AUKTION
WHERE acc_id = [id eines accounts]

/* alle gebote für eine bestimmte auktion zurückgeben */
SELECT *
FROM GEBOT
WHERE auk_id = [id einer Auktion]

/* das höchste gebot für eine bestimmte auktion zurückgeben */
SELECT *
FROM GEBOT
WHERE auk_id = [id der Auktion] AND
gebot_wert = (SELECT MAX(gebot_wert) FROM GEBOT WHERE auk_id = [id der Auktion])


/* bestellung erstellen */
INSERT INTO BESTELLUNG(acc_id, best_datum, best_wert)
VALUES ([id eines Accounts], [Datum], [Bestellwert]);

INSERT INTO ITEM_TO_BESTELLUNG(best_id, item_id, anzahl)
VALUES ([id der Bestellung], [id eines Items], [Anzahl des Items]);
/* WENN MEHRERE ITEMS DANN LETZTES INSERT WIEDERHOLEN*/

/* alle items welche ein bestimmter account besitzt zurückgeben */
SELECT *
FROM ITEM
INNER JOIN ITEM_TO_ACCOUNT ON ITEM.item_id = ITEM_TO_ACCOUNT.item_id
WHERE acc_id = [id eines accounts];

/* item dem account hinzufügen */
/* wenn der account schon ein item des typs besitzt */
UPDATE ITEM_TO_ACCOUNT
SET anzahl = anzhal + 1
WHERE item_id = [id des items];

/* wenn der account noch kein item des typs besitzt */
INSERT INTO ITEM_TO_ACCOUNT(acc_id, item_id, anzahl)
VALUES ([id eines Accounts], [id eines Items], [anzahl]);

/* item von account löschen */
/* wenn der account mehr als ein item des typs besitzt */
UPDATE ITEM_TO_ACCOUNT
SET anzahl = anzhal - 1
WHERE item_id = [id des items];

/* wenn der account nur noch ein item des typs besitzt */
DELETE FROM ITEM_TO_ACCOUNT
WHERE item_id = [id des items];