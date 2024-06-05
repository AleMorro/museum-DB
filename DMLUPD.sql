/* Op1: inserisci opera */
INSERT INTO Opera(Cod,NomeArt,CognomeArt,Titolo_O,Descrizione,Anno,Tecniche,Materiale) 
VALUES(11,'Leonardo','Vinci','Ultima cena','Ultima cena di Cristo, prima del tradimento',1498,'Olio su tavola','Legno');

/* Op2: rimuovi opera */
DELETE 
FROM Opera 
WHERE Titolo_O = 'Ultima cena';

/* Op3: inserisci artista */
INSERT INTO Artista(NomeA,CognomeA,Nascita,Morte,Stile,Movimento) 
VALUES('Edvard','Munch','1863-12-12','1944-02-23','Espressionismo','Modern Art');

/* Op4: crea storia */
INSERT INTO Storia(Utente_S,Titolo_S,Commento_S,Hashtag_S,Inizio,Fine,Durata)
VALUES('ale@morrone.it','Stupenda','Rilevanza storica','#storia','10:37:09','10:39:06','10:39:06'::TIME-'10:37:09'::TIME);

/* Op5: visualizza storia */
SELECT s.*
FROM Storia s 
WHERE s.ID_S = 7;

/* Op6: elimina Storia */
DELETE
FROM Storia s 
WHERE s.ID_S = 7;

/* Op7: elimina commenti */
DELETE
FROM Annotazione a 
WHERE a.Utente_A = 'paolo@blu.it' AND a.Cod_Op = 6;

/* Op8: promozione utente a supervisore */
UPDATE Gruppo
SET Supervisore = 'ale@morrone.it'
WHERE Supervisore = 'giada@verdi.it';

/* Op9: crea gruppo */
INSERT INTO Gruppo(Supervisore) VALUES('carlo@gialli.it');

/* Op10: modifica emoji */
UPDATE Annotazione
SET Emoji = 'sorpresa'
WHERE Emoji = 'gioia' AND ID_A = 1;

/* Op11: votare storia */
INSERT INTO Ranking(Utente_R,Sto_R,Voto,Commento_R)
VALUES('giada@verdi.it',2,8,'Molto bella');

/* Op12: calcolare info statistiche */

/* Crea vista che associa a ogni utente il numero delle storie create
   e la durata media che esse hanno */
CREATE VIEW Dati_Utenti AS
SELECT u.Email, COUNT(s.Utente_S) AS num_sto,
       ROUND(AVG(EXTRACT(EPOCH FROM s.Durata)), 2) AS durata_media_sto
FROM Utente u 
JOIN Storia s ON u.Email = s.Utente_S
GROUP BY u.Email
ORDER BY num_sto ASC;

DROP VIEW Dati_Utenti;

/* Query per interrogare l'intera vista */
SELECT * FROM Dati_Utenti;

/* Op13: trovare storie più votate */

/* Crea vista che associa ad ogni storia il numero di volte in cui 
   è stata selezionata per una votazione */
CREATE VIEW Dati_Storie AS
SELECT s.ID_S, s.Titolo_S, COUNT(r.Sto_R) AS numero_voti
FROM Storia s 
JOIN Ranking r ON s.ID_S = r.Sto_R
GROUP BY s.ID_S
ORDER BY numero_voti;

DROP VIEW Dati_Storie;

/* Query per interrogare l'intera vista */
SELECT * FROM Dati_Storie
ORDER BY Dati_Storie.ID_S

/* Op14: nuovo utente */
INSERT INTO Utente(Email,Nome,Genere,Nascita,Tipo) 
VALUES('giorgio@vanni.it','Giorgio','M','19-07-1994','Fragile');

/* Op15: annotazione opere */
INSERT INTO Annotazione(Utente_A,Cod_Op,Hashtag_A,Emoji,Commento_A)
VALUES('ale@morrone.it',5,'#petaloso','petali','Fa bene alla natura');

/* Op16: visualizzare storico storie */
SELECT s.*
FROM Storia s
JOIN Utente u ON s.Utente_S = u.Email
WHERE u.Email = 'ale@morrone.it';

/* Op17: commento opera */
INSERT INTO Annotazione(Utente_A,Cod_Op,Hashtag_A,Emoji,Commento_A)
VALUES('ale@morrone.it',5,'#petaloso','petali','Fa bene alla natura');
INSERT INTO Domanda(Annotazione,Mi_ricorda,Mi_fa_pensare_a,Mi_fa_sentire)
VALUES(12,'il fiore','la luce','raggiante');

/* Op18: commento utenti fragili */
INSERT INTO Annotazione(Utente_A,Cod_Op,Hashtag_A,Emoji,Commento_A)
VALUES('giorgio@vanni.it',6,'#incredibile','fantasmagorico','Fa bene all anima');
