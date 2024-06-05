/* Query per selezionare tutte le istanze */
Select * from Utente;
Select * from Artista;
Select * from Opera;
select * from Storia;
select * from Annotazione;
select * from Domanda;
select * from Op_Sto;
select * from Ranking;
select * from Raccomandazioni;
select * from Gruppo;
select * from Gr_Afferenza;

/* Tutti gli utenti che hanno fatto una storia */
select Utente.Email,Utente.Tipo,age(Utente.Nascita) AS eta
from Utente,Storia
where Utente.Email=Storia.Utente_S;

 
/*  Query1:
    Restituire l'elenco degli artisti (deceduti/viventi) che sono stati scelti nella creazione
    di storie. Ordinare il risultato in ordine crescente per numero di volte in cui,
    un artista, compare nelle storie (perchè selezionato in opere che compongono una storia).
    Riportare la durata (AVG(TimeStampFine-TimeStampInizio)) in minuti media delle storie. 
*/

/* Versione 1 - senza clausola where */
SELECT Artista.NomeA,Artista.CognomeA,COUNT(Artista.NomeA) AS num_selez,ROUND(AVG(EXTRACT(EPOCH
FROM Storia.Durata)/60),2) AS durata_media
FROM Opera o
JOIN Op_Sto os ON o.Cod = os.Op
JOIN Artista ON o.NomeArt=Artista.NomeA
JOIN Storia ON os.Sto=Storia.ID_S
GROUP BY Artista.NomeA, Artista.CognomeA
ORDER BY num_selez ASC;

/* Query2:
   Selezionare tutte le storie degli utenti di età compresa tra [35<=x<=50] 
   anni (estremi inclusi) che contengono almeno 2 opere d'arte (>=2).
   Ordinare le storie in ordine decrescente di durata della storia
   (durata =TimeStampFine - TimeStampInizio)
*/

SELECT s.*
FROM Storia s
JOIN Utente u ON s.Utente_S = u.Email
JOIN Op_Sto os ON s.ID_S = os.Sto
JOIN Opera o ON os.Op = o.Cod
WHERE age(u.Nascita) BETWEEN '35 years' AND '50 years'
GROUP BY s.ID_S
HAVING COUNT(DISTINCT o.Cod) >= 2
ORDER BY s.Durata DESC;

/* Query 3:
   Restituire CF, nome, cognome, età e data di nascita dell'utente che 
   ha creato il maggior numero di storie che NON HANNO ricevuto commenti 
   da altri utenti. Ordinare il risultato in ordine decrescente per numero 
   storie create
*/

SELECT u.Nome, u.Email, date_part('year',age(u.Nascita)) AS eta, u.Nascita,  COUNT(s.ID_S) AS num_storie
FROM Utente u
JOIN Storia s ON u.Email = s.Utente_S
LEFT JOIN Ranking r ON s.ID_S = r.Sto_R
WHERE r.Commento_R IS NULL
GROUP BY u.Nome, u.Email, u.Nascita
ORDER BY num_storie DESC
LIMIT 1;

/* Query 4:
   Restituire l’elenco delle opere che sono state maggiormente selezionate 
   dagli utenti nella creazione delle loro storie, che hanno età compresa [25<=x<=55] 
   (estremi inclusi). Ordinare il risultato in ordine decrescente per TitoloOpera
*/

SELECT o.Titolo_O, a.NomeA, a.CognomeA, 
       COUNT(os.Sto) AS num_selezioni
FROM Opera o
JOIN Op_Sto os ON o.Cod = os.Op
JOIN Storia s ON os.Sto = s.ID_S
JOIN Utente u ON s.Utente_S = u.Email
JOIN Artista a ON o.NomeArt = a.NomeA AND o.CognomeArt = a.CognomeA
WHERE date_part('year',age(u.Nascita)) BETWEEN 25 AND 55
GROUP BY o.Titolo_O, a.NomeA, a.CognomeA
ORDER BY o.Titolo_O DESC;

/* Query 5:
   Restituire l'elenco degli artisti (deceduti/viventi) che sono stati scelti nella 
   creazione di storie. Ordinare il risultato in ordine crescente per numero di volte in cui, 
   un artista, compare nelle storie (perchè selezionato in opere che compongono una storia). 
   Riportare la durata (AVG(TimeStampFine-TimeStampInizio)) in minuti media delle storie.
*/

SELECT a.NomeA, a.CognomeA, a.Morte,
       COUNT(os.Op) AS num_apparizioni,
       ROUND(AVG(EXTRACT(SECOND FROM s.Durata)), 2) AS avg_secondi
FROM Artista a
JOIN Opera o ON o.NomeArt = a.NomeA AND o.CognomeArt = a.CognomeA
JOIN Op_Sto os ON o.Cod = os.Op
JOIN Storia s ON os.Sto = s.ID_S
GROUP BY a.NomeA, a.CognomeA, a.Morte
ORDER BY num_apparizioni ASC;

/* Query 6:
   Per ogni utente che ha creato almeno 2 storie, si vuole conoscere la durata media delle 
   sue storie (AVG(TimeStampFine-TimeStampInizio)) in minuti, numero di like e numero totale 
   di commenti. Ordinare il risultato in ordine decrescente per età dell'utente.
*/

SELECT u.Email, u.Nome, u.Genere, u.Nascita,
       ROUND(AVG(EXTRACT(EPOCH FROM (s.Durata)) / 60), 2) AS durata_media_minuti,
       COUNT(r.Voto) AS numero_voti,
       COUNT(r.Commento_R) AS numero_commenti
FROM Utente u
JOIN Storia s ON u.Email = s.Utente_S
LEFT JOIN Ranking r ON s.ID_S = r.Sto_R
WHERE u.Email IN (
  SELECT u.Email
  FROM Utente u
  JOIN Storia s ON u.Email = s.Utente_S
  GROUP BY u.Email
  HAVING COUNT(s.ID_S) >= 2 /* AND date_part('year', age(u.Nascita)) BETWEEN 18 AND 25 */
)
GROUP BY u.Email, u.Nome, u.Genere, u.Nascita
ORDER BY u.Nascita DESC;

/* Query 7:
   Per ogni curatore che lavora all'interno del museo che ha creato almeno 4 storie, 
   si vuole conoscere l'età media degli utenti che hanno commentato le sue storie. 
   Restituire il risultato in ordine decrescente per durata media (AVG(TimeStampFine-TimeStampInizio)) 
   in minuti delle storie create da curatore museale.
*/
SELECT U.Nome, U.Email, EXTRACT(YEAR FROM AGE(U.Nascita)) AS EtaDipendente, 
       AVG(S.Durata) AS DurataMediaStorieDipendente, 
       StorieDipendente.NumStorie AS NumStorieCreateDipendente, 
       ROUND(AVG(EXTRACT(YEAR FROM AGE(U2.Nascita))), 2) AS EtaMediaUtenti
FROM Utente U
JOIN Storia S ON U.Email = S.Utente_S
JOIN (
  SELECT U.Email AS Dipendente, COUNT(*) AS NumStorie
  FROM Utente U
  JOIN Storia S ON U.Email = S.Utente_S
  WHERE U.Tipo = 'Dipendente'
  GROUP BY U.Email
  HAVING COUNT(*) >= 4
) StorieDipendente ON U.Email = StorieDipendente.Dipendente
JOIN Ranking R ON S.ID_S = R.Sto_R
JOIN Utente U2 ON R.Utente_R = U2.Email
WHERE U.Tipo = 'Dipendente'
GROUP BY U.Nome, U.Email, U.Nascita, StorieDipendente.NumStorie
ORDER BY DurataMediaStorieDipendente DESC;

/* Query 8:  
   Restituire le storie che sono state create da utenti di età compresa tra [25<=x<=40] 
   anni (estremi inclusi) CHE NON SONO curatori ma che hanno ricevuto commenti solo da curatori. 
   Ordinare il risultato in ordine decrescente per durata della storia (AVG(TimeStampFine-TimeStampInizio))
*/
SELECT S.ID_S, S.Titolo_S, AVG(S.Durata) AS DurataMediaStorie,
       COUNT(R.Sto_R) AS numeroTotaleCommenti,
       ROUND(AVG(EXTRACT(YEAR FROM AGE(U2.Nascita))),2) AS EtaMediaUtenti
FROM Storia S
JOIN Utente U ON S.Utente_S = U.Email
JOIN Ranking R ON S.ID_S = R.Sto_R
JOIN Utente U2 ON R.Utente_R = U2.Email
WHERE EXTRACT(YEAR FROM AGE(U.Nascita)) BETWEEN 25 AND 40
  AND U.Tipo = 'Visitatore'
  AND U2.Tipo = 'Dipendente'
GROUP BY S.ID_S, S.Titolo_S
ORDER BY DurataMediaStorie DESC;

/* Query 9:
   Restituire nome, cognome e età (in anni) dei curatori che hanno commentato almeno 4 storie di utenti 
   di età compresa tra [20<=x<=35] anni (estremi inclusi). Ordinare il risultato per numero decrescente 
   di commenti.
*/
SELECT U.Email, U.Nome, EXTRACT(YEAR FROM AGE(U.Nascita)) AS Eta,
	   COUNT(R.Sto_R) AS num_commenti
FROM Utente U
JOIN Ranking R ON U.Email = R.Utente_R
JOIN Storia S ON R.Sto_R = S.ID_S
JOIN Utente U2 ON S.Utente_S = U2.Email
WHERE U.Tipo = 'Dipendente'
  AND EXTRACT(YEAR FROM AGE(U2.Nascita)) BETWEEN 20 AND 35
GROUP BY U.Email, U.Nome, U.Nascita
HAVING COUNT(DISTINCT S.ID_S) >= 4
ORDER BY COUNT(R.Sto_R) DESC;

/* Query 10:
   Restituire nome, cognome e età (in anni) dei curatori che NON hanno commentato almeno 4 storie di 
   utenti di età compresa tra [20<=x<=35] anni (estremi inclusi). Ordinare il risultato per numero 
   decrescente di commenti.
*/
SELECT U.Email, U.Nome, EXTRACT(YEAR FROM AGE(U.Nascita)) AS Eta,
       COUNT(DISTINCT R.Sto_R) AS num_commenti
FROM Utente U
LEFT JOIN Ranking R ON U.Email = R.Utente_R
LEFT JOIN Storia S ON R.Sto_R = S.ID_S
WHERE U.Tipo = 'Dipendente'
   AND NOT EXISTS (
      SELECT 1
      FROM Storia S
      JOIN Utente U2 ON S.Utente_S = U2.Email
      JOIN Ranking R ON S.ID_S = R.Sto_R
      WHERE U2.Tipo != 'Dipendente'
         AND EXTRACT(YEAR FROM AGE(U2.Nascita)) BETWEEN 20 AND 35
         AND R.Utente_R = U.Email
      GROUP BY U2.Email
      HAVING COUNT(DISTINCT S.ID_S) >= 4
   )
GROUP BY U.Email, U.Nome, U.Nascita
ORDER BY num_commenti;

/* Query 11:
   Restituire nome, cognome e età (in anni) dei curatori che hanno commentato almeno 4 storie di utenti 
   fragili che hanno ricevuto almeno 10 like. Ordinare il risultato per numero decrescente di like.
*/
SELECT U.Nome, U.Email, EXTRACT(YEAR FROM AGE(U.Nascita)) AS Eta,
       COUNT(DISTINCT CASE WHEN U2.Tipo = 'Fragile' THEN S.ID_S END) AS NumeroStorieFragili,
       (SELECT COUNT(R2.Sto_R)
        FROM Ranking R2
        JOIN Storia S2 ON R2.Sto_R = S2.ID_S
        JOIN Utente U3 ON S2.Utente_S = U3.Email
        WHERE R2.Utente_R = U.Email) AS NumeroTotaleCommenti
FROM Utente U
JOIN Ranking R ON U.Email = R.Utente_R
JOIN Storia S ON R.Sto_R = S.ID_S
JOIN Utente U2 ON S.Utente_S = U2.Email
WHERE U.Tipo = 'Dipendente'
  AND U2.Tipo = 'Fragile'
GROUP BY U.Nome, U.Email, U.Nascita
HAVING COUNT(DISTINCT S.ID_S) >= 4 AND (SELECT COUNT(R2.Sto_R) /*ripetizione query in alto per NumeroTotaleCommenti */
                                       FROM Ranking R2
                                       JOIN Storia S2 ON R2.Sto_R = S2.ID_S
                                       JOIN Utente U3 ON S2.Utente_S = U3.Email
                                       WHERE R2.Utente_R = U.Email) >= 10
ORDER BY NumeroTotaleCommenti DESC;

/* Query 12:
   Restituire, per ogni utente, id, titolo della storia e numero delle opere contenute (nella storia) 
   di tutte le storie suggerite dal sistema che hanno emozioni opposte
*/

SELECT S.Utente_S, S.ID_S, S.Titolo_S, COUNT(Op_Sto.Op) AS Num_Opere_Contenute,
       S2.Titolo_S AS Titolo_Opposta
FROM Storia S
JOIN Raccomandazioni R ON S.ID_S = R.ID_S1
JOIN Storia S2 ON R.ID_S2 = S2.ID_S
JOIN Utente U1 ON S.Utente_S = U1.Email
JOIN Utente U2 ON S2.Utente_S = U2.Email
JOIN Op_Sto ON S.ID_S = Op_Sto.Sto
WHERE R.Relazione = 'opposta'
GROUP BY S.ID_S, S.Titolo_S, S2.Titolo_S;

/* INIZIO QUERY DIVERSE DA ESEMPI PROG */

/* Query 13:
   seleziona tutte le storie e i relativi ranking di un utente specifico,
   inclusi i dettagli
*/
SELECT S.*, R.*
FROM Storia s
JOIN Ranking r ON s.ID_S = r.Sto_R
JOIN Utente u ON u.Email = s.Utente_S
WHERE u.Email = 'ale@morrone.it';

/* Query 14:
   seleziona tutte le storie che hanno ottenuto un determinato voto
   nel ranking e includi i dettagli dell'utente che ha votato
*/
SELECT s.*, r.*, u.*
FROM Storia s
JOIN Ranking r ON s.ID_S = r.Sto_R
JOIN Utente u ON r.Utente_R = u.Email
WHERE r.Voto > 6; 

/* Query 15:
   trova l'artista che ha creato il maggior numero di opere
*/
SELECT o.NomeArt, o.CognomeArt, COUNT(*) AS Num_Opere
FROM Opera o 
GROUP BY o.NomeArt, o.CognomeArt
ORDER BY Num_Opere DESC
LIMIT 1;

/* Query 16:
   ottieni il numero totale di storie create da ogni curatore, inclusi
   quelli che non hanno creato alcuna storia
*/
SELECT u.Email, COUNT(s.ID_S) AS num_sto
FROM Utente u
JOIN Storia s ON u.Email = s.Utente_S
WHERE u.Tipo = 'Dipendente'
GROUP BY u.Email
ORDER BY num_sto DESC;

/* Query 17:
   trova opera con commento più lungo
*/
SELECT o.Titolo_O, MAX(LENGTH(a.Commento_A)) AS Lungh_Max_Commento
FROM Opera o
JOIN Annotazione a ON o.Cod = a.Cod_Op
GROUP BY O.Titolo_O;

/* Query 18:
   ottieni l'artista che ha il maggior numero di storie create, ma solo
   tra quelli  nati dopo il 1900
*/
SELECT a.NomeA, a.CognomeA, COUNT(os.Sto) AS num_sto
FROM Artista a
JOIN Opera o ON a.NomeA = o.NomeArt
JOIN Op_Sto os ON o.Cod = os.Op
WHERE date_part('year',a.Nascita) > 1500
GROUP BY a.NomeA, a.CognomeA
ORDER BY num_sto DESC;

/* Query 19:
   trova il curatore che ha creato il maggior numero di storie indicando
   quante
*/
SELECT s.Utente_S, COUNT(s.ID_S) as num_sto
FROM Storia s
JOIN Utente u ON s.Utente_S = u.Email
WHERE u.Tipo = 'Dipendente'
GROUP BY s.Utente_S
ORDER BY num_sto DESC
LIMIT 1;

/* Query 20:
   seleziona tutte le opere create da artisti dello stesso movimento
*/
SELECT o.Cod, o.Titolo_O, a.NomeA, a.CognomeA
FROM Opera o
JOIN Artista a ON o.NomeArt = a.NomeA
WHERE a.movimento = 'High Renaissance';


/* Query 21:
   seleziona tutte le storie che hanno commenti simili tra loro
*/
SELECT s.ID_S, s1.ID_S, s.Titolo_S, s1.Titolo_S
FROM Storia s, Storia s1
WHERE s.ID_S <> s1.ID_S
  AND s.Commento_S LIKE '%' || s1.Commento_S || '%';

/* Query 22:
   seleziona tutte le annotazioni che sono state fatte dagli stessi 
   utenti in diverse opere
*/
SELECT A1.ID_A, A1.Utente_A, A1.Cod_Op, A1.Hashtag_A
FROM Annotazione A1, Annotazione A2
WHERE A1.Utente_A = A2.Utente_A
  AND A1.Cod_Op <> A2.Cod_Op;

/* Query 23:
   trova gli utenti che hanno commentato le stesse opere di un determinato
   utente
*/
SELECT DISTINCT U1.Email, U2.Email, R1.Sto_R, R2.Sto_R
FROM Utente U1
JOIN Ranking R1 ON U1.Email = R1.Utente_R
JOIN Ranking R2 ON R1.Sto_R = R2.Sto_R AND R1.Utente_R <> R2.Utente_R
JOIN Utente U2 ON R2.Utente_R = U2.Email
WHERE U1.Email = 'ale@morrone.it';


/* Query 24:
   trova gli utenti che hanno commentato almeno una storia con lo stesso 
   hashtag di un determinato utente
*/
SELECT DISTINCT U1.Email, U2.Email
FROM Utente U1
JOIN Annotazione A1 ON U1.Email = A1.Utente_A
JOIN Annotazione A2 ON A1.Hashtag_A = A2.Hashtag_A AND A1.ID_A <> A2.ID_A
JOIN Utente U2 ON A2.Utente_A = U2.Email
WHERE U1.Email = 'ale@morrone.it';
