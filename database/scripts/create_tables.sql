
CREATE TABLE Types (
    TypeID INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    TypeName VARCHAR2(50) NOT NULL
);

CREATE TABLE Producers (
    ProducerID INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    ProducerName VARCHAR2(255) NOT NULL
);

CREATE TABLE StorageLocations (
    StorageLocationID INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    LocationName VARCHAR2(255) NOT NULL
);

CREATE TABLE Countries (
    CountryID INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    CountryName VARCHAR2(255) NOT NULL
);

CREATE TABLE Wines (
    WineID INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    WineName VARCHAR2(255) NOT NULL,
    ProducerID INT,
    CountryID INT,
    TypeID INT,
    VintageYear INT,
    GrapeVarietal VARCHAR2(255),
    AlcoholPercentage FLOAT,
    BottleSize VARCHAR2(50),
    DrinkWindowStart INT,
    DrinkWindowEnd INT,
    Price NUMBER(10,2),
    ReplacementCost NUMBER(10,2),
    FOREIGN KEY (ProducerID) REFERENCES Producers(ProducerID),
    FOREIGN KEY (CountryID) REFERENCES Countries(CountryID),
    FOREIGN KEY (TypeID) REFERENCES Types(TypeID)
);

CREATE TABLE Inventory (
    InventoryID INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    WineID INT,
    Quantity INT NOT NULL,
    PurchaseDate DATE,
    StorageLocationID INT,
    ConsumptionDate DATE,
    ConsumedQuantity INT,
    FOREIGN KEY (WineID) REFERENCES Wines(WineID),
    FOREIGN KEY (StorageLocationID) REFERENCES StorageLocations(StorageLocationID)
);

