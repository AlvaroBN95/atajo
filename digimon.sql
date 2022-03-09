CREATE DATABASE Digimon
CHARACTER SET latin1
COLLATE latin1_spanish_ci;

USE Digimon;

CREATE TABLE Usuario(
    NombreUsu VARCHAR (20),
    Pass VARCHAR (20) NOT NULL,
    PJugadas INT (6) NOT NULL,
    PartidasGan INT (6) NOT NULL,
    CantTokens INT (4) NOT NULL,
    PRIMARY KEY (NomUsu)
);

CREATE TABLE Digimon(
    NomDigimon VARCHAR (20),
    Defensa INT (4) NOT NULL,
    Ataque INT (4) NOT NULL,
    Tipo ENUM ('Vacuna','Virus','Animal','Planta','Elemental') NOT NULL,
    Nivel ENUM ('1','2','3') NOT NULL,
    NomEvoluviona VARCHAR (20),
    PRIMARY KEY (NomDigimon),
    CONSTRAINT fk_dig_dig FOREIGN KEY (NomEvoluviona) REFERENCES Digimon (NomDigimon) ON DELETE SET NULL ON UPDATE CASCADE
);

CREATE TABLE Tiene(
    NombreUsu VARCHAR (20),
    NomDigimon VARCHAR (20),
    Equipo ENUM ('Si','No') NOT NULL,
    PRIMARY KEY (NombreUsu, NomDigimon),
    CONSTRAINT fk_tiene_usuario FOREIGN KEY (NombreUsu) REFERENCES Usuario (NombreUsu) ON DELETE NO ACTION ON UPDATE CASCADE,
    CONSTRAINT fk_tiene_digimon FOREIGN KEY (NomDigimon) REFERENCES Digimon (NomDigimon) ON DELETE NO ACTION ON UPDATE CASCADE
);