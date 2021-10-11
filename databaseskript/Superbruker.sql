create table if not EXISTS Superbruker
(
    Ansatt_ID INTEGER NOT NULL,

    FOREIGN KEY (Ansatt_ID) references Ansatt(Ansatt_ID)
    );