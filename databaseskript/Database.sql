DROP DATABASE if exists Webshop;

CREATE DATABASE Webshop;

use Webshop;

CREATE TABLE Kunder (
                        KundeID integer PRIMARY KEY NOT NULL ,
                        Fornavn varchar (30) NOT NULL ,
                        Etternavn varchar (30) NOT NULL ,
                        Passord varchar (60) NOT NULL ,
                        Epost varchar (40) NOT NULL ,
                        Telefonnummer integer (8) NOT NULL ,
                        Adresse varchar (40) NOT NULL ,
                        Postnummer integer (4) NOT NULL


);

INSERT INTO Kunder (KundeID, Fornavn, Etternavn, Passord, Epost, Telefonnummer, Adresse, Postnummer)
values (1,'Kristian','Larsen','Pompeii12','kristianlarsen@gmail.com',92830112,'Bramstadveien 28',3910);

INSERT INTO Kunder (KundeID, Fornavn, Etternavn, Passord, Epost, Telefonnummer, Adresse, Postnummer)
values (2,'Adam','Sin','Romerriket19','adamsin@gmail.com',92822112,'Hallaveien 18',4612);

INSERT INTO Kunder (KundeID, Fornavn, Etternavn, Passord, Epost, Telefonnummer, Adresse, Postnummer)
values (3,'Bjørn','Olsen','ZeusGuden281','bjornolsen@gmail.com',2819228,'Furuveien 28',5812);

UPDATE Kunder
SET adresse='Mehmetveien'
WHERE KundeID=1;

UPDATE Kunder
SET adresse='Abdulveien'
WHERE KundeID=2;

UPDATE Kunder
SET adresse='Omerveien'
WHERE KundeID=3;

DELETE FROM Kunder
where Fornavn = 'Adam';

INSERT INTO Kunder (KundeID, Fornavn, Etternavn, Passord, Epost, Telefonnummer, Adresse, Postnummer)
values (2, 'Mehmet', 'Eksi', 'Trolltunga9', 'mehmeteksi@gmail.com', 48573991, 'Slettheiveien 1', 4626);

INSERT INTO Kunder (KundeID, Fornavn, Etternavn, Passord, Epost, Telefonnummer, Adresse, Postnummer)
values (4, 'Abdul', 'Kasim', 'Preikestolen00', 'abdulkasim@gmail.com', 2847719, 'Slettheitoppen 20', 4626);

SELECT KundeID, Fornavn, Epost FROM Kunder;

CREATE TABLE Ordre (
                       OrderID integer PRIMARY KEY NOT NULL,
                       KundeID integer NOT NULL ,
                       OrdreDato date NOT NULL ,
                       Produkter varchar (50) ,
                       Status varchar (20) ,
                       FOREIGN KEY (KundeID) REFERENCES kunder(KundeID)
);

INSERT INTO Ordre (OrderID, KundeID, OrdreDato, Produkter, Status)
values (1, 2, '2021-05-11', 'Nesehårsfjerner', 'Varen er sendt');

INSERT INTO Ordre (OrderID, KundeID, OrdreDato, Produkter, Status)
values (2, 4, '2021-05-19', 'Trimmemaskin', 'Forventet på lager');

/*Denne koden vil ikke fungere
  fordi den prøver å slette en kunde som er bundet til en annen klasse med foreign key.
DELETE FROM Kunder
where Fornavn = 'Mehmet';
 */

/* Vis fornavn, produkter, status fra Ordre.
   Ordre joiner Kunder og gir forkortelse K for Kunder
   On = Join on
   Ordre.KundeID blir slått sammen med K.KundeID*. Nå har du 1 tabell selvom informasjon kommer fra 2 tabeller*/
SELECT Fornavn, Produkter, Status FROM Ordre INNER JOIN Kunder K on Ordre.KundeID = K.KundeID;
