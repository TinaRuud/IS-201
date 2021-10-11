create table if not EXISTS Status
(
    Status_ID   integer UNIQUE auto_increment,
    /* date skrives på format dd.mm.åååå */
    Start_Dato  date NOT NULL,
    Slutt_Dato date NOT NULL,
    Tilgjengelig varchar(30),
    Utstyr_ID INTEGER NOT NULL,

    PRIMARY KEY (Status_ID),
    FOREIGN KEY (Utstyr_ID) references Utstyr(Utstyr_ID)

    );