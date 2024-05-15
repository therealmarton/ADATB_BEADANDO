CREATE TABLE Diak (
    DiakID INT PRIMARY KEY,
    Nev NVARCHAR(50),
    Cim NVARCHAR(100),
    Telefonszam NVARCHAR(50),
    Email NVARCHAR(50)
);
ALTER TABLE Diak
ADD CONSTRAINT DNevnemNull CHECK (Nev IS NOT NULL);

ALTER TABLE Diak
ADD CONSTRAINT DEmailEgyedi UNIQUE (Email);

CREATE TABLE Oktato (
    OktatoID INT PRIMARY KEY,
    Nev NVARCHAR(50),
  	Cim NVARCHAR(100),
    Auto NVARCHAR(50),
    Telefonszam NVARCHAR(50),
    Email NVARCHAR(50)
);
ALTER TABLE Oktato
ADD CONSTRAINT ONevnemNull CHECK (Nev IS NOT NULL);

ALTER TABLE Oktato
ADD CONSTRAINT OEmailEgyedi UNIQUE (Email);

CREATE TABLE Tanfolyam (
    TanfolyamID INT PRIMARY KEY,
    Tnev NVARCHAR(50),
    Ttipus NVARCHAR(20),
    Dij DECIMAL(10, 2),
  	Tdatumtol DATE,
  	Tdatumig DATE
);
ALTER TABLE Tanfolyam
ADD CONSTRAINT DijNemNegativ CHECK (Dij >= 0);

CREATE TABLE Foglalas (
    FoglalasID INT PRIMARY KEY,
    DiakID INT,
    OktatoID INT,
    TanfolyamID INT,
    FoglalasDatum DATE,
    FOREIGN KEY (DiakID) REFERENCES Diak(DiakID),
    FOREIGN KEY (OktatoID) REFERENCES Oktato(OktatoID),
    FOREIGN KEY (TanfolyamID) REFERENCES Tanfolyam(TanfolyamID)
);
CREATE TABLE Fizetes (
    FizetesID INT PRIMARY KEY,
    DiakID INT,
    Fosszeg DECIMAL(10, 2),
    Fdatum DATE,
    FOREIGN KEY (DiakID) REFERENCES Diak(DiakID)
);
ALTER TABLE Fizetes
ADD CONSTRAINT OsszegNemNegativ CHECK (Fosszeg >= 0);