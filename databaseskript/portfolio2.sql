
create database if not exists MytestDB;
use MytestDB;
create table if not EXISTS Forslag



(
    ID                 integer NOT NULL UNIQUE auto_increment,
    Forslag_Utstyr     varchar(30) NOT NULL,
    Forslag_Kommentar  varchar(60) NOT NULL,
    Forslag_ID         integer(20) NOT NULL,
    Ansatt_ID          integer(30) NOT NULL,
    PRIMARY KEY (Forslag_ID),
    FOREIGN KEY (Ansatt_ID) REFERENCES Ansatt (Ansatt_ID)


);

INSERT INTO Forslag (Forslag_ID, Forslag_Utstyr, Forslag_Kommentar, Ansatt_ID)
VALUES ('6969', 'Borremaskin', 'Den er veldig fin', '1234'  );

create database if not exists MytestDB;
use MytestDB;
create table if not EXISTS Rapport


(
    ID                 integer NOT NULL UNIQUE auto_increment,
    Rapport_Tittel     varchar(30) NOT NULL,
    Rapport_Kommentar  varchar(60) NOT NULL,
    Rapport_ID         integer(20) NOT NULL,
    Utstyr_ID          integer(30) NOT NULL,
    Ansatt_ID          integer(20) NOT NULL,
    PRIMARY KEY (Rapport_ID),
    FOREIGN KEY (Ansatt_ID) REFERENCES Ansatt (Ansatt_ID) ,
    FOREIGN KEY (Utstyr_ID) REFERENCES Utstyr (Utstyr_ID)

);

INSERT INTO Rapport (Rapport_Tittel, Rapport_Kommentar, Rapport_ID, Utstyr_ID, Ansatt_ID)
VALUES ('Funker ikke', 'Utstyret funker ikke som den skal', '666555', '2345', '99887766');