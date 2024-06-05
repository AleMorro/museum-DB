/* Popolamento Utente (10) */
INSERT INTO Utente(Email,Nome,Genere,Nascita,Tipo) 
VALUES('ale@morrone.it','Alessandro','M','30-07-2000','Visitatore');
INSERT INTO Utente(Email,Nome,Genere,Nascita,Tipo) 
VALUES('luca@rossi.it','Luca','M','26-09-1996','Visitatore');
INSERT INTO Utente(Email,Nome,Genere,Nascita,Tipo) 
VALUES('giada@verdi.it','Giada','F','04-02-1980','Visitatore');
INSERT INTO Utente(Email,Nome,Genere,Nascita,Tipo) 
VALUES('carlo@gialli.it','Carlo','M','15-12-1995','Visitatore');
INSERT INTO Utente(Email,Nome,Genere,Nascita,Tipo) 
VALUES('roberta@tali.it','Roberta','F','22-08-1976','Visitatore');
INSERT INTO Utente(Email,Nome,Genere,Nascita,Tipo) 
VALUES('paolo@blu.it','Paolo','M','10-6-1991','Visitatore');
INSERT INTO Utente(Email,Nome,Genere,Nascita,Tipo) 
VALUES('rebecca@sardi.it','Rebecca','F','17-10-1965','Visitatore');
INSERT INTO Utente(Email,Nome,Genere,Nascita,Tipo) 
VALUES('stefano@torre.it','Stefano','M','19-11-1994','Visitatore');
INSERT INTO Utente(Email,Nome,Genere,Nascita,Tipo) 
VALUES('beppe@bergola.it','Beppe','M','06-03-1985','Dipendente');
INSERT INTO Utente(Email,Nome,Genere,Nascita,Tipo) 
VALUES('elena@rollo.it','Elena','F','18-01-1990','Dipendente');

/* Popolamento Artista (10) */
INSERT INTO Artista(NomeA,CognomeA,Nascita,Morte,Stile,Movimento) 
VALUES('Leonardo','Vinci','1452-04-15','1519-05-02','Rinascimento','High Renaissance');
INSERT INTO Artista(NomeA,CognomeA,Nascita,Morte,Stile,Movimento) 
VALUES('Michelangelo','Buonarroti','1475-03-06','1564-02-18','Rinascimento','High Renaissance');
INSERT INTO Artista(NomeA,CognomeA,Nascita,Morte,Stile,Movimento) 
VALUES('Raffaello','Sanzio','1483-04-06','1520-04-06','Rinascimento','High Renaissance');
INSERT INTO Artista(NomeA,CognomeA,Nascita,Morte,Stile,Movimento) 
VALUES('Sandro','Botticelli','1445-03-01','1510-05-17','Rinascimento','Early Renaissance');
INSERT INTO Artista(NomeA,CognomeA,Nascita,Morte,Stile,Movimento) 
VALUES('Tiziano','Vecellio','1488-08-27','1576-08-27','Rinascimento','High Renaissance');
INSERT INTO Artista(NomeA,CognomeA,Nascita,Morte,Stile,Movimento) 
VALUES('Caravaggio','Merisi','1571-09-29','1610-07-18','Barocco','Barocco'); 
INSERT INTO Artista(NomeA,CognomeA,Nascita,Morte,Stile,Movimento) 
VALUES('Gian Lorenzo','Bernini','1598-12-07','1680-11-28','Barocco','Barocco');
INSERT INTO Artista(NomeA,CognomeA,Nascita,Morte,Stile,Movimento) 
VALUES('Rembrandt','Harmenszoon van Rijn','1606-07-15','1669-10-04','Barocco Olandese','Barocco Olandese');
INSERT INTO Artista(NomeA,CognomeA,Nascita,Morte,Stile,Movimento) 
VALUES('Johannes Vermeer','Delft','1632-10-31','1675-12-15','Barocco Olandese','Barocco Olandese'); 
INSERT INTO Artista(NomeA,CognomeA,Nascita,Morte,Stile,Movimento)
VALUES('Diego Velázquez','Rodríguez','1599-06-06','1660-08-06','Barocco Spagnolo','Barocco Spagnolo');

/* Popolamento Opera (10) */
INSERT INTO Opera(Cod,NomeArt,CognomeArt,Titolo_O,Descrizione,Anno,Tecniche,Materiale) 
VALUES(1,'Leonardo','Vinci','La Gioconda','Ritratto di una donna',1503,'Olio su tavola','Legno');
INSERT INTO Opera(Cod,NomeArt,CognomeArt,Titolo_O,Descrizione,Anno,Tecniche,Materiale) 
VALUES(2,'Michelangelo','Buonarroti','Creazione di Adamo','Affresco sulla volta della Cappella Sistina',1511,'Affresco','Intonaco');
INSERT INTO Opera(Cod,NomeArt,CognomeArt,Titolo_O,Descrizione,Anno,Tecniche,Materiale) 
VALUES(3,'Raffaello','Sanzio','Scuola di Atene','Affresco nella Stanza della Segnatura',1511,'Affresco','Intonaco');
INSERT INTO Opera(Cod,NomeArt,CognomeArt,Titolo_O,Descrizione,Anno,Tecniche,Materiale) 
VALUES(4,'Sandro','Botticelli','Nascita di Venere','Dipinto su tela',1486,'Tempera su tela','Tela');
INSERT INTO Opera(Cod,NomeArt,CognomeArt,Titolo_O,Descrizione,Anno,Tecniche,Materiale) 
VALUES(5,'Tiziano','Vecellio','Amor Sacro e Amor Profano','Dipinto su tela',1514,'Olio su tela','Tela');
INSERT INTO Opera(Cod,NomeArt,CognomeArt,Titolo_O,Descrizione,Anno,Tecniche,Materiale) 
VALUES(6,'Caravaggio','Merisi','Cena in Emmaus','Dipinto su tela',1601,'Olio su tela','Tela');
INSERT INTO Opera(Cod,NomeArt,CognomeArt,Titolo_O,Descrizione,Anno,Tecniche,Materiale) 
VALUES(7,'Gian Lorenzo','Bernini','Estasi di Santa Teresa','Scultura in marmo',1652,'Marmo','Marmo');
INSERT INTO Opera(Cod,NomeArt,CognomeArt,Titolo_O,Descrizione,Anno,Tecniche,Materiale) 
VALUES(8,'Rembrandt','Harmenszoon van Rijn','La ronda di notte','Dipinto su tela',1642,'Olio su tela','Tela');
INSERT INTO Opera(Cod,NomeArt,CognomeArt,Titolo_O,Descrizione,Anno,Tecniche,Materiale) 
VALUES(9,'Johannes Vermeer','Delft','Ragazza con orecchino','Dipinto su tela',1665,'Olio su tela','Tela');
INSERT INTO Opera(Cod,NomeArt,CognomeArt,Titolo_O,Descrizione,Anno,Tecniche,Materiale) 
VALUES(10,'Diego Velázquez','Rodríguez','Las Meninas','Dipinto su tela',1656,'Olio su tela','Tela');

/* Popolamento Storia (6) */
INSERT INTO Storia(ID_S,Utente_S,Titolo_S,Commento_S,Hashtag_S,Inizio,Fine,Durata)
VALUES(1,'carlo@gialli.it','La bellazza','Particolarmente interessante e molto gioioso','#sole','10:34:09','10:35:06','10:35:06'::TIME-'10:34:09'::TIME);
INSERT INTO Storia(ID_S,Utente_S,Titolo_S,Commento_S,Hashtag_S,Inizio,Fine,Durata)
VALUES(2,'ale@morrone.it','Il mare colpisce sempre','Senza fiato','#mare','17:10:00','17:11:25','17:11:25'::TIME-'17:10:00'::TIME);
INSERT INTO Storia(ID_S,Utente_S,Titolo_S,Commento_S,Hashtag_S,Inizio,Fine,Durata)
VALUES(3,'stefano@torre.it','La meravigliosa arte italiana','Pezzi importanti della storia','#cultura','16:25:10','16:27:30','16:27:30'::TIME-'16:25:10'::TIME);
INSERT INTO Storia(ID_S,Utente_S,Titolo_S,Commento_S,Hashtag_S,Inizio,Fine,Durata)
VALUES(4,'luca@rossi.it','Il palazzo del gusto','Opere particolarmente sensibili e tristi','#mondo','11:10:00','11:12:00','11:12:00'::TIME-'11:10:00'::TIME);
INSERT INTO Storia(ID_S,Utente_S,Titolo_S,Commento_S,Hashtag_S,Inizio,Fine,Durata)
VALUES(5,'rebecca@sardi.it','La natura incontaminata','La forza della natura rappresentata','#natura','11:50:15','11:51:45','11:51:45'::TIME-'11:50:15'::TIME);
INSERT INTO Storia(ID_S,Utente_S,Titolo_S,Commento_S,Hashtag_S,Inizio,Fine,Durata)
VALUES(6,'elena@rollo.it','La perfezione','Opere dalle forme particolarmente geometricge','#perfette','13:15:00','13:16:00','13:16:00'::TIME-'13:15:00'::TIME);

/* Popolamento Annotazione (10) */
INSERT INTO Annotazione(Utente_A,Cod_Op,Hashtag_A,Emoji,Commento_A)
VALUES('carlo@gialli.it',2,'#stupendo','gioia','Opera molto accattivante');
INSERT INTO Annotazione(Utente_A,Cod_Op,Hashtag_A,Emoji,Commento_A)
VALUES('carlo@gialli.it',5,'#spaventoso','paura','Opera molto introspettiva e per certi versi paurosa');
INSERT INTO Annotazione(Utente_A,Cod_Op,Hashtag_A,Emoji,Commento_A)
VALUES('ale@morrone.it',2,'#meraviglia','fiducia','Opera che fa ben sperare');
INSERT INTO Annotazione(Utente_A,Cod_Op,Hashtag_A,Emoji,Commento_A)
VALUES('luca@rossi.it',2,'#sorprendente','sorpresa','Opera molto sorprendente');
INSERT INTO Annotazione(Utente_A,Cod_Op,Hashtag_A,Emoji,Commento_A)
VALUES('elena@rollo.it',3,'#disgustoso','disgusto','Suscita disgusto negli occhi di chi lo guarda');
INSERT INTO Annotazione(Utente_A,Cod_Op,Hashtag_A,Emoji,Commento_A)
VALUES('elena@rollo.it',4,'#rabbioso','rabbia','Opera fa sentire la rabbia dell artista');
INSERT INTO Annotazione(Utente_A,Cod_Op,Hashtag_A,Emoji,Commento_A)
VALUES('rebecca@sardi.it',7,'#triste','tristezza','Trasuda tristezza');
INSERT INTO Annotazione(Utente_A,Cod_Op,Hashtag_A,Emoji,Commento_A)
VALUES('stefano@torre.it',10,'#bello#chiaro','sorpresa','Opera accessa');
INSERT INTO Annotazione(Utente_A,Cod_Op,Hashtag_A,Emoji,Commento_A)
VALUES('paolo@blu.it',7,'#devastante','tristezza','Opera molto triste');
INSERT INTO Annotazione(Utente_A,Cod_Op,Hashtag_A,Emoji,Commento_A)
VALUES('paolo@blu.it',6,'#incredibile','sorpresa','Molto affascinante');

/* Popolamento Domanda (6) */
INSERT INTO Domanda(Annotazione,Mi_ricorda,Mi_fa_pensare_a,Mi_fa_sentire)
VALUES(1,'il mare','la luce','bene');
INSERT INTO Domanda(Annotazione,Mi_ricorda,Mi_fa_pensare_a,Mi_fa_sentire)
VALUES(2,'casa','il buio','male');
INSERT INTO Domanda(Annotazione,Mi_ricorda,Mi_fa_pensare_a,Mi_fa_sentire)
VALUES(5,'il vuoto','la nebbia','impaurita');
INSERT INTO Domanda(Annotazione,Mi_ricorda,Mi_fa_pensare_a,Mi_fa_sentire)
VALUES(7,'la tempesta','ombra','smarrita');
INSERT INTO Domanda(Annotazione,Mi_ricorda,Mi_fa_pensare_a,Mi_fa_sentire)
VALUES(8,'il sole','il bello','accolto');
INSERT INTO Domanda(Annotazione,Mi_ricorda,Mi_fa_pensare_a,Mi_fa_sentire)
VALUES(9,'le tenebre','la morte','spaventato');

/* Popolamento Op-Sto (16) */
INSERT INTO Op_Sto(Sto,Op) VALUES(1,1);
INSERT INTO Op_Sto(Sto,Op) VALUES(1,2);
INSERT INTO Op_Sto(Sto,Op) VALUES(1,3);
INSERT INTO Op_Sto(Sto,Op) VALUES(2,2);
INSERT INTO Op_Sto(Sto,Op) VALUES(2,3);
INSERT INTO Op_Sto(Sto,Op) VALUES(2,4);
INSERT INTO Op_Sto(Sto,Op) VALUES(3,4);
INSERT INTO Op_Sto(Sto,Op) VALUES(3,5);
INSERT INTO Op_Sto(Sto,Op) VALUES(4,5);
INSERT INTO Op_Sto(Sto,Op) VALUES(4,8);
INSERT INTO Op_Sto(Sto,Op) VALUES(4,9);
INSERT INTO Op_Sto(Sto,Op) VALUES(5,1);
INSERT INTO Op_Sto(Sto,Op) VALUES(5,9);
INSERT INTO Op_Sto(Sto,Op) VALUES(6,3);
INSERT INTO Op_Sto(Sto,Op) VALUES(6,5);
INSERT INTO Op_Sto(Sto,Op) VALUES(6,4);

/* Popolamento Ranking (6) */
INSERT INTO Ranking(Utente_R,Sto_R,Voto,Commento_R)
VALUES('paolo@blu.it',1,6,'Non mi convince la scelta delle opere');
INSERT INTO Ranking(Utente_R,Sto_R,Voto,Commento_R)
VALUES('paolo@blu.it',4,8,'Storia molto coerente');
INSERT INTO Ranking(Utente_R,Sto_R,Voto,Commento_R)
VALUES('carlo@gialli.it',2,9,'Ottimo mix di opere');
INSERT INTO Ranking(Utente_R,Sto_R,Voto,Commento_R)
VALUES('beppe@bergola.it',5,7,'Ottima differenziazione delle opere');
INSERT INTO Ranking(Utente_R,Sto_R,Voto,Commento_R)
VALUES('beppe@bergola.it',2,10,'Particolarmente interessante');
INSERT INTO Ranking(Utente_R,Sto_R,Voto,Commento_R)
VALUES('ale@morrone.it',5,4,'Per niente interessante');

/* Popolamento Raccomandazioni (9) */
INSERT INTO Raccomandazioni(ID_S1,ID_S2,Relazione)
VALUES(1,3,'simile');
INSERT INTO Raccomandazioni(ID_S1,ID_S2,Relazione)
VALUES(1,2,'uguale');
INSERT INTO Raccomandazioni(ID_S1,ID_S2,Relazione)
VALUES(1,4,'opposta');
INSERT INTO Raccomandazioni(ID_S1,ID_S2,Relazione)
VALUES(2,6,'opposta');
INSERT INTO Raccomandazioni(ID_S1,ID_S2,Relazione)
VALUES(2,3,'uguale');
INSERT INTO Raccomandazioni(ID_S1,ID_S2,Relazione)
VALUES(3,4,'simile');
INSERT INTO Raccomandazioni(ID_S1,ID_S2,Relazione)
VALUES(3,5,'uguale');
INSERT INTO Raccomandazioni(ID_S1,ID_S2,Relazione)
VALUES(3,6,'opposta');
INSERT INTO Raccomandazioni(ID_S1,ID_S2,Relazione)
VALUES(6,1,'uguale');

/* Popolamento Gruppo (2) */
INSERT INTO Gruppo(Supervisore) VALUES('giada@verdi.it');
INSERT INTO Gruppo(Supervisore) VALUES('roberta@tali.it');

/* Popolamento Gr_Afferenza (8) */
INSERT INTO Gr_Afferenza(Utente_Gr,Gruppo) VALUES('beppe@bergola.it',1);
INSERT INTO Gr_Afferenza(Utente_Gr,Gruppo) VALUES('ale@morrone.it',1);
INSERT INTO Gr_Afferenza(Utente_Gr,Gruppo) VALUES('luca@rossi.it',1);
INSERT INTO Gr_Afferenza(Utente_Gr,Gruppo) VALUES('paolo@blu.it',1);
INSERT INTO Gr_Afferenza(Utente_Gr,Gruppo) VALUES('carlo@gialli.it',2);
INSERT INTO Gr_Afferenza(Utente_Gr,Gruppo) VALUES('rebecca@sardi.it',2);
INSERT INTO Gr_Afferenza(Utente_Gr,Gruppo) VALUES('stefano@torre.it',2);
INSERT INTO Gr_Afferenza(Utente_Gr,Gruppo) VALUES('elena@rollo.it',2);

/* Query 2
   Aggiunta di Storie fatte da utenti tra 35 e 50 anni per verifica query
*/
INSERT INTO Storia(ID_S,Utente_S,Titolo_S,Commento_S,Hashtag_S,Inizio,Fine,Durata)
VALUES(7,'giada@verdi.it','La Morte','Molto triste e opprimente','#death','12:08:10','12:09:00','12:09:00'::TIME-'12:08:10'::TIME);
INSERT INTO Op_Sto(Sto,Op) VALUES(7,3);
INSERT INTO Op_Sto(Sto,Op) VALUES(7,8);
INSERT INTO Op_Sto(Sto,Op) VALUES(7,10);

INSERT INTO Storia(ID_S,Utente_S,Titolo_S,Commento_S,Hashtag_S,Inizio,Fine,Durata)
VALUES(8,'roberta@tali.it','La Gioia','La gioia di vivere','#gioia','11:41:00','11:42:30','11:42:30'::TIME-'11:41:00'::TIME);
INSERT INTO Op_Sto(Sto,Op) VALUES(8,2);
INSERT INTO Op_Sto(Sto,Op) VALUES(8,6);
INSERT INTO Op_Sto(Sto,Op) VALUES(8,9);

INSERT INTO Storia(ID_S,Utente_S,Titolo_S,Commento_S,Hashtag_S,Inizio,Fine,Durata)
VALUES(9,'beppe@bergola.it','La felicità','La brezza della felicità cammina','#happiness','12:10:10','12:11:00','12:11:00'::TIME-'12:10:10'::TIME);
INSERT INTO Op_Sto(Sto,Op) VALUES(9,1);
INSERT INTO Op_Sto(Sto,Op) VALUES(9,5);
INSERT INTO Op_Sto(Sto,Op) VALUES(9,7);

/* Query 6
   Aggiunta di Storie ad utenti per verificare utenti con >= di 2 storie
*/
INSERT INTO Storia(ID_S,Utente_S,Titolo_S,Commento_S,Hashtag_S,Inizio,Fine,Durata)
VALUES(10,'ale@morrone.it','Il fiato della notte','Notturno','#darkness','18:11:12','18:12:25','18:12:25'::TIME-'18:11:12'::TIME);
INSERT INTO Op_Sto(Sto,Op) VALUES(10,3);
INSERT INTO Op_Sto(Sto,Op) VALUES(10,6);
INSERT INTO Op_Sto(Sto,Op) VALUES(10,10);

INSERT INTO Storia(ID_S,Utente_S,Titolo_S,Commento_S,Hashtag_S,Inizio,Fine,Durata)
VALUES(11,'giada@verdi.it','Orgoglio','Fiero e impavido','#greatness','13:08:10','13:09:00','13:09:00'::TIME-'13:08:10'::TIME);
INSERT INTO Op_Sto(Sto,Op) VALUES(11,5);
INSERT INTO Op_Sto(Sto,Op) VALUES(11,9);
INSERT INTO Op_Sto(Sto,Op) VALUES(11,2);

/* Query 7:
   aggiunta di 4 storie associate a 2 dipendenti, e aggiunta dei relativi
   commenti di altri utenti
*/
INSERT INTO Storia(ID_S,Utente_S,Titolo_S,Commento_S,Hashtag_S,Inizio,Fine,Durata)
VALUES(12,'beppe@bergola.it','La distruzione','Opere distruttive','#distruzione','14:15:00','14:16:00','14:16:00'::TIME-'14:15:00'::TIME);
INSERT INTO Storia(ID_S,Utente_S,Titolo_S,Commento_S,Hashtag_S,Inizio,Fine,Durata)
VALUES(13,'beppe@bergola.it','La merendera','Molto invitanti e speciali','#special','13:18:00','13:20:00','13:20:00'::TIME-'13:18:00'::TIME);
INSERT INTO Storia(ID_S,Utente_S,Titolo_S,Commento_S,Hashtag_S,Inizio,Fine,Durata)
VALUES(14,'beppe@bergola.it','Il notturno','Ricordano la notte','#darkness','17:17:00','17:18:00','17:18:00'::TIME-'17:17:00'::TIME);
INSERT INTO Storia(ID_S,Utente_S,Titolo_S,Commento_S,Hashtag_S,Inizio,Fine,Durata)
VALUES(15,'beppe@bergola.it','L''eresia','Opere prive di morale','#shame','13:22:00','13:24:00','13:24:00'::TIME-'13:22:00'::TIME);

INSERT INTO Ranking(Utente_R,Sto_R,Voto,Commento_R)
VALUES('paolo@blu.it',12,6,'Non mi convince la scelta delle opere');
INSERT INTO Ranking(Utente_R,Sto_R,Voto,Commento_R)
VALUES('paolo@blu.it',13,8,'Storia molto coerente');
INSERT INTO Ranking(Utente_R,Sto_R,Voto,Commento_R)
VALUES('carlo@gialli.it',12,9,'Ottimo mix di opere');


INSERT INTO Storia(ID_S,Utente_S,Titolo_S,Commento_S,Hashtag_S,Inizio,Fine,Durata)
VALUES(16,'elena@rollo.it','L armistizio','Opere che tramano la guerra','#war','14:29:00','14:29:45','14:29:45'::TIME-'14:29:00'::TIME);
INSERT INTO Storia(ID_S,Utente_S,Titolo_S,Commento_S,Hashtag_S,Inizio,Fine,Durata)
VALUES(17,'elena@rollo.it','L ascesa','Opere ascendenti','#ascesa','13:15:00','13:16:00','13:16:00'::TIME-'13:15:00'::TIME);
INSERT INTO Storia(ID_S,Utente_S,Titolo_S,Commento_S,Hashtag_S,Inizio,Fine,Durata)
VALUES(18,'elena@rollo.it','La mamma','Opere materne','#mother','16:18:00','16:20:00','16:20:00'::TIME-'16:18:00'::TIME);

INSERT INTO Ranking(Utente_R,Sto_R,Voto,Commento_R)
VALUES('beppe@bergola.it',16,7,'Ottima differenziazione delle opere');
INSERT INTO Ranking(Utente_R,Sto_R,Voto,Commento_R)
VALUES('beppe@bergola.it',17,10,'Particolarmente interessante');
INSERT INTO Ranking(Utente_R,Sto_R,Voto,Commento_R)
VALUES('ale@morrone.it',17,4,'Per niente interessante');

/* Query8:
   Aggiunta storia a visitatori tra 25 e 40 anni e commenti da parte di dipendenti
*/
INSERT INTO Storia(ID_S,Utente_S,Titolo_S,Commento_S,Hashtag_S,Inizio,Fine,Durata)
VALUES(19,'stefano@torre.it','L armistizio','Opere che tramano la guerra','#war','14:29:00','14:29:45','14:29:45'::TIME-'14:29:00'::TIME);

INSERT INTO Ranking(Utente_R,Sto_R,Voto,Commento_R)
VALUES('beppe@bergola.it',3,7,'Ottima differenziazione delle opere');
INSERT INTO Ranking(Utente_R,Sto_R,Voto,Commento_R)
VALUES('elena@rollo.it',3,10,'Particolarmente interessante');
INSERT INTO Ranking(Utente_R,Sto_R,Voto,Commento_R)
VALUES('beppe@bergola.it',19,7,'Ottima differenziazione delle opere');
INSERT INTO Ranking(Utente_R,Sto_R,Voto,Commento_R)
VALUES('elena@rollo.it',19,10,'Particolarmente interessante');

/* Query 9:
   aggiunta ranking da parte di un dipendente a un visitatore tra 20 e 35 anni
   così da avere 4 storie votate per il dipendente
*/
INSERT INTO Ranking(Utente_R,Sto_R,Voto,Commento_R)
VALUES('beppe@bergola.it',4,10,'Particolarmente emozionante');

/* Query 11:
   aggiunta di utenti 'fragili', aggiunta di loro storie e commenti da parte di
   dipendenti
*/
INSERT INTO Utente(Email,Nome,Genere,Nascita,Tipo) 
VALUES('giorgio@vanni.it','Giorgio','M','18-07-1994','Fragile');
INSERT INTO Utente(Email,Nome,Genere,Nascita,Tipo) 
VALUES('mattia@vanni.it','Mattia','M','25-08-1992','Fragile');
INSERT INTO Utente(Email,Nome,Genere,Nascita,Tipo) 
VALUES('luca@vanni.it','Luca','M','22-09-1998 ','Fragile');
INSERT INTO Utente(Email,Nome,Genere,Nascita,Tipo) 
VALUES('matteo@vanni.it','Matteo','M','30-09-1998 ','Fragile');


INSERT INTO Storia(ID_S,Utente_S,Titolo_S,Commento_S,Hashtag_S,Inizio,Fine,Durata)
VALUES(20,'giorgio@vanni.it','Lo Vesuvio','Il calore di napoli','#naples','14:32:00','14:33:45','14:33:45'::TIME-'14:32:00'::TIME);
INSERT INTO Storia(ID_S,Utente_S,Titolo_S,Commento_S,Hashtag_S,Inizio,Fine,Durata)
VALUES(21,'mattia@vanni.it','Lo Vesuvio','Il calore di napoli','#naples','14:32:00','14:33:45','14:33:45'::TIME-'14:32:00'::TIME);
INSERT INTO Storia(ID_S,Utente_S,Titolo_S,Commento_S,Hashtag_S,Inizio,Fine,Durata)
VALUES(22,'luca@vanni.it','Lo Vesuvio','Il calore di napoli','#naples','14:32:00','14:33:45','14:33:45'::TIME-'14:32:00'::TIME);
INSERT INTO Storia(ID_S,Utente_S,Titolo_S,Commento_S,Hashtag_S,Inizio,Fine,Durata)
VALUES(23,'matteo@vanni.it','Lo Vesuvio','Il calore di napoli','#naples','14:32:00','14:33:45','14:33:45'::TIME-'14:32:00'::TIME);

INSERT INTO Ranking(Utente_R,Sto_R,Voto,Commento_R)
VALUES('beppe@bergola.it',20,7,'Ottima differenziazione delle opere');
INSERT INTO Ranking(Utente_R,Sto_R,Voto,Commento_R)
VALUES('beppe@bergola.it',21,7,'Ottima differenziazione delle opere');
INSERT INTO Ranking(Utente_R,Sto_R,Voto,Commento_R)
VALUES('beppe@bergola.it',22,7,'Ottima differenziazione delle opere');
INSERT INTO Ranking(Utente_R,Sto_R,Voto,Commento_R)
VALUES('beppe@bergola.it',23,7,'Ottima differenziazione delle opere');

INSERT INTO Ranking(Utente_R,Sto_R,Voto,Commento_R)
VALUES('elena@rollo.it',20,10,'Particolarmente interessante');
INSERT INTO Ranking(Utente_R,Sto_R,Voto,Commento_R)
VALUES('elena@rollo.it',21,10,'Particolarmente interessante');
INSERT INTO Ranking(Utente_R,Sto_R,Voto,Commento_R)
VALUES('elena@rollo.it',22,10,'Particolarmente interessante');
INSERT INTO Ranking(Utente_R,Sto_R,Voto,Commento_R)
VALUES('elena@rollo.it',23,10,'Particolarmente interessante');

INSERT INTO Ranking(Utente_R,Sto_R,Voto,Commento_R)
VALUES('paolo@blu.it',20,6,'Non mi convince la scelta delle opere');
INSERT INTO Ranking(Utente_R,Sto_R,Voto,Commento_R)
VALUES('matteo@vanni.it',20,8,'Storia molto coerente');
INSERT INTO Ranking(Utente_R,Sto_R,Voto,Commento_R)
VALUES('carlo@gialli.it',20,9,'Ottimo mix di opere');
INSERT INTO Ranking(Utente_R,Sto_R,Voto,Commento_R)
VALUES('ale@morrone.it',20,4,'Per niente interessante');
INSERT INTO Ranking(Utente_R,Sto_R,Voto,Commento_R)
VALUES('giada@verdi.it',20,6,'Non mi convince la scelta delle opere');
INSERT INTO Ranking(Utente_R,Sto_R,Voto,Commento_R)
VALUES('rebecca@sardi.it',20,8,'Storia molto coerente');
INSERT INTO Ranking(Utente_R,Sto_R,Voto,Commento_R)
VALUES('stefano@torre.it',20,9,'Ottimo mix di opere');

INSERT INTO Storia(ID_S,Utente_S,Titolo_S,Commento_S,Hashtag_S,Inizio,Fine,Durata)
VALUES(33,'luca@vanni.it','Lo Vesuvio','Il calore di napoli','#naples','14:32:00','14:33:45','14:33:45'::TIME-'14:32:00'::TIME);
INSERT INTO Storia(ID_S,Utente_S,Titolo_S,Commento_S,Hashtag_S,Inizio,Fine,Durata)
VALUES(25,'luca@vanni.it','Lo Vesuvio','Il calore di napoli','#naples','14:32:00','14:33:45','14:33:45'::TIME-'14:32:00'::TIME);
INSERT INTO Storia(ID_S,Utente_S,Titolo_S,Commento_S,Hashtag_S,Inizio,Fine,Durata)
VALUES(26,'luca@vanni.it','Lo Vesuvio','Il calore di napoli','#naples','14:32:00','14:33:45','14:33:45'::TIME-'14:32:00'::TIME);
INSERT INTO Storia(ID_S,Utente_S,Titolo_S,Commento_S,Hashtag_S,Inizio,Fine,Durata)
VALUES(27,'luca@vanni.it','Lo Vesuvio','Il calore di napoli','#naples','14:32:00','14:33:45','14:33:45'::TIME-'14:32:00'::TIME);
INSERT INTO Storia(ID_S,Utente_S,Titolo_S,Commento_S,Hashtag_S,Inizio,Fine,Durata)
VALUES(28,'luca@vanni.it','Lo Vesuvio','Il calore di napoli','#naples','14:32:00','14:33:45','14:33:45'::TIME-'14:32:00'::TIME);
INSERT INTO Storia(ID_S,Utente_S,Titolo_S,Commento_S,Hashtag_S,Inizio,Fine,Durata)
VALUES(29,'luca@vanni.it','Lo Vesuvio','Il calore di napoli','#naples','14:32:00','14:33:45','14:33:45'::TIME-'14:32:00'::TIME);
INSERT INTO Storia(ID_S,Utente_S,Titolo_S,Commento_S,Hashtag_S,Inizio,Fine,Durata)
VALUES(30,'luca@vanni.it','Lo Vesuvio','Il calore di napoli','#naples','14:32:00','14:33:45','14:33:45'::TIME-'14:32:00'::TIME);
INSERT INTO Storia(ID_S,Utente_S,Titolo_S,Commento_S,Hashtag_S,Inizio,Fine,Durata)
VALUES(31,'luca@vanni.it','Lo Vesuvio','Il calore di napoli','#naples','14:32:00','14:33:45','14:33:45'::TIME-'14:32:00'::TIME);
INSERT INTO Storia(ID_S,Utente_S,Titolo_S,Commento_S,Hashtag_S,Inizio,Fine,Durata)
VALUES(32,'luca@vanni.it','Lo Vesuvio','Il calore di napoli','#naples','14:32:00','14:33:45','14:33:45'::TIME-'14:32:00'::TIME);
/*Query 24:
  aggiunta di un annotazione con la stessa emoji di un'altra
*/
INSERT INTO Annotazione(Utente_A,Cod_Op,Hashtag_A,Emoji,Commento_A)
VALUES('ale@morrone.it',2,'#stupendo','gioia','Opera molto molto');
