

CREATE TABLE Usuario(
    NomUsu VARCHAR (10),
    Pass   VARCHAR (9),
    PartidasGan int (10),
    Equipo ENUM {'S','N'},
    PRIMARY KEY (NomUsu);)

CREATE TABLE Digimons(
    NomDig VARCHAR (20),
    Tipo ENUM {''},
    Nivel INT (1),
    Ataque INT (3),
    Defensa INT (3),
    evolucion VARCHAR(20),
    PRIMARY KEY (NomDig)
    CONSTRAINT fk_dig_dig FOREIGN KEY (evolucion) REFERENCES Digimon (NomDig) ON DELETE CASCADE ON UPDATE CASCADE;)

