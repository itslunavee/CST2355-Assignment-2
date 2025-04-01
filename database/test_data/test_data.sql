-- 1. Insert StorageLocations (using PL/SQL for bulk insert)
BEGIN
  FOR i IN 1..400 LOOP
    INSERT INTO StorageLocations (LocationName) VALUES ('Location ' || i);
  END LOOP;
  COMMIT;
END;
/

-- 2. Insert Producers
INSERT INTO Producers (ProducerName) VALUES ('Marchesi Antinori');
INSERT INTO Producers (ProducerName) VALUES ('Gaja');
INSERT INTO Producers (ProducerName) VALUES ('Louis Latour');
INSERT INTO Producers (ProducerName) VALUES ('Château Margaux');
INSERT INTO Producers (ProducerName) VALUES ('Mission Hill');
INSERT INTO Producers (ProducerName) VALUES ('Inniskillin');
INSERT INTO Producers (ProducerName) VALUES ('Torres');
INSERT INTO Producers (ProducerName) VALUES ('Vega Sicilia');
INSERT INTO Producers (ProducerName) VALUES ('Concha y Toro');
INSERT INTO Producers (ProducerName) VALUES ('Santa Rita');
INSERT INTO Producers (ProducerName) VALUES ('Penfolds');
INSERT INTO Producers (ProducerName) VALUES ('Robert Mondavi');
COMMIT;

-- 3. Insert Countries
INSERT INTO Countries (CountryName) VALUES ('Italy');
INSERT INTO Countries (CountryName) VALUES ('France');
INSERT INTO Countries (CountryName) VALUES ('Canada');
INSERT INTO Countries (CountryName) VALUES ('Spain');
INSERT INTO Countries (CountryName) VALUES ('USA');
INSERT INTO Countries (CountryName) VALUES ('Chile');
COMMIT;

-- 4. Insert Types
INSERT INTO Types (TypeName) VALUES ('Cabernet Sauvignon');
INSERT INTO Types (TypeName) VALUES ('Chardonnay');
INSERT INTO Types (TypeName) VALUES ('Pinot Noir');
INSERT INTO Types (TypeName) VALUES ('Riesling');
INSERT INTO Types (TypeName) VALUES ('Sauvignon Blanc');
INSERT INTO Types (TypeName) VALUES ('Merlot');
INSERT INTO Types (TypeName) VALUES ('Syrah');
INSERT INTO Types (TypeName) VALUES ('Pinot Grigio');
INSERT INTO Types (TypeName) VALUES ('White Wine');
INSERT INTO Types (TypeName) VALUES ('Sparkling Wine');
INSERT INTO Types (TypeName) VALUES ('Red Wine');
INSERT INTO Types (TypeName) VALUES ('Rosé Wine');
INSERT INTO Types (TypeName) VALUES ('Dessert Wine');
INSERT INTO Types (TypeName) VALUES ('Zinfandel');
INSERT INTO Types (TypeName) VALUES ('Malbec');
INSERT INTO Types (TypeName) VALUES ('Gewürztraminer');
INSERT INTO Types (TypeName) VALUES ('Muscat');
INSERT INTO Types (TypeName) VALUES ('Champagne');
INSERT INTO Types (TypeName) VALUES ('Grenache');
INSERT INTO Types (TypeName) VALUES ('Nebbiolo');
INSERT INTO Types (TypeName) VALUES ('Sangiovese');
INSERT INTO Types (TypeName) VALUES ('Tempranillo');
INSERT INTO Types (TypeName) VALUES ('Albariño');
COMMIT;

-- 5. Insert Wines (sample subset - add more as needed)
INSERT INTO Wines (WineName, ProducerID, CountryID, TypeID, VintageYear, GrapeVarietal, AlcoholPercentage, BottleSize, DrinkWindowStart, DrinkWindowEnd, Price, ReplacementCost)
VALUES ('Antinori Tignanello', 1, 1, 1, 2015, 'Cabernet Sauvignon', 14.0, '750ml', 2022, 2040, 120.00, 130.00);

INSERT INTO Wines (WineName, ProducerID, CountryID, TypeID, VintageYear, GrapeVarietal, AlcoholPercentage, BottleSize, DrinkWindowStart, DrinkWindowEnd, Price, ReplacementCost)
VALUES ('Château Margaux Grand Vin', 4, 2, 1, 2016, 'Cabernet Sauvignon', 14.5, '750ml', 2023, 2045, 600.00, 700.00);

INSERT INTO Wines (WineName, ProducerID, CountryID, TypeID, VintageYear, GrapeVarietal, AlcoholPercentage, BottleSize, DrinkWindowStart, DrinkWindowEnd, Price, ReplacementCost)
VALUES ('Mission Hill Oculus', 5, 3, 1, 2017, 'Cabernet Sauvignon', 13.2, '750ml', 2024, 2035, 75.00, 80.00);

INSERT INTO Wines (WineName, ProducerID, CountryID, TypeID, VintageYear, GrapeVarietal, AlcoholPercentage, BottleSize, DrinkWindowStart, DrinkWindowEnd, Price, ReplacementCost)
VALUES ('Gaja Barbaresco', 2, 1, 20, 2016, 'Nebbiolo', 14.0, '750ml', 2022, 2040, 250.00, 275.00);

INSERT INTO Wines (WineName, ProducerID, CountryID, TypeID, VintageYear, GrapeVarietal, AlcoholPercentage, BottleSize, DrinkWindowStart, DrinkWindowEnd, Price, ReplacementCost)
VALUES ('Louis Latour Corton-Charlemagne', 3, 2, 2, 2018, 'Chardonnay', 13.5, '750ml', 2021, 2035, 150.00, 165.00);

INSERT INTO Wines (WineName, ProducerID, CountryID, TypeID, VintageYear, GrapeVarietal, AlcoholPercentage, BottleSize, DrinkWindowStart, DrinkWindowEnd, Price, ReplacementCost)
VALUES ('Inniskillin Ice Wine', 6, 3, 13, 2019, 'Vidal', 10.5, '375ml', 2021, 2035, 80.00, 90.00);

INSERT INTO Wines (WineName, ProducerID, CountryID, TypeID, VintageYear, GrapeVarietal, AlcoholPercentage, BottleSize, DrinkWindowStart, DrinkWindowEnd, Price, ReplacementCost)
VALUES ('Torres Penedes', 7, 4, 5, 2020, 'Sauvignon Blanc', 12.5, '750ml', 2021, 2026, 18.00, 20.00);

INSERT INTO Wines (WineName, ProducerID, CountryID, TypeID, VintageYear, GrapeVarietal, AlcoholPercentage, BottleSize, DrinkWindowStart, DrinkWindowEnd, Price, ReplacementCost)
VALUES ('Vega Sicilia Unico', 8, 4, 22, 2012, 'Tempranillo', 14.0, '750ml', 2020, 2040, 350.00, 400.00);

INSERT INTO Wines (WineName, ProducerID, CountryID, TypeID, VintageYear, GrapeVarietal, AlcoholPercentage, BottleSize, DrinkWindowStart, DrinkWindowEnd, Price, ReplacementCost)
VALUES ('Concha y Toro Don Melchor', 9, 6, 1, 2017, 'Cabernet Sauvignon', 14.0, '750ml', 2023, 2037, 100.00, 110.00);

INSERT INTO Wines (WineName, ProducerID, CountryID, TypeID, VintageYear, GrapeVarietal, AlcoholPercentage, BottleSize, DrinkWindowStart, DrinkWindowEnd, Price, ReplacementCost)
VALUES ('Santa Rita Floresta', 10, 6, 6, 2018, 'Merlot', 13.5, '750ml', 2022, 2032, 45.00, 50.00);

INSERT INTO Wines (WineName, ProducerID, CountryID, TypeID, VintageYear, GrapeVarietal, AlcoholPercentage, BottleSize, DrinkWindowStart, DrinkWindowEnd, Price, ReplacementCost)
VALUES ('Penfolds Grange', 11, 5, 7, 2015, 'Shiraz', 14.5, '750ml', 2025, 2050, 850.00, 950.00);

INSERT INTO Wines (WineName, ProducerID, CountryID, TypeID, VintageYear, GrapeVarietal, AlcoholPercentage, BottleSize, DrinkWindowStart, DrinkWindowEnd, Price, ReplacementCost)
VALUES ('Robert Mondavi Reserve', 12, 5, 2, 2018, 'Chardonnay', 14.0, '750ml', 2022, 2030, 65.00, 75.00);

INSERT INTO Wines (WineName, ProducerID, CountryID, TypeID, VintageYear, GrapeVarietal, AlcoholPercentage, BottleSize, DrinkWindowStart, DrinkWindowEnd, Price, ReplacementCost)
VALUES ('Antinori Cervaro', 1, 1, 2, 2019, 'Chardonnay', 13.5, '750ml', 2023, 2032, 70.00, 80.00);

INSERT INTO Wines (WineName, ProducerID, CountryID, TypeID, VintageYear, GrapeVarietal, AlcoholPercentage, BottleSize, DrinkWindowStart, DrinkWindowEnd, Price, ReplacementCost)
VALUES ('Gaja Sperss', 2, 1, 20, 2015, 'Nebbiolo', 14.0, '750ml', 2023, 2040, 300.00, 330.00);

INSERT INTO Wines (WineName, ProducerID, CountryID, TypeID, VintageYear, GrapeVarietal, AlcoholPercentage, BottleSize, DrinkWindowStart, DrinkWindowEnd, Price, ReplacementCost)
VALUES ('Louis Latour Romanée-Saint-Vivant', 3, 2, 3, 2017, 'Pinot Noir', 13.0, '750ml', 2025, 2040, 500.00, 550.00);

INSERT INTO Wines (WineName, ProducerID, CountryID, TypeID, VintageYear, GrapeVarietal, AlcoholPercentage, BottleSize, DrinkWindowStart, DrinkWindowEnd, Price, ReplacementCost)
VALUES ('Château Margaux Pavillon Blanc', 4, 2, 5, 2020, 'Sauvignon Blanc', 13.0, '750ml', 2023, 2035, 200.00, 220.00);

INSERT INTO Wines (WineName, ProducerID, CountryID, TypeID, VintageYear, GrapeVarietal, AlcoholPercentage, BottleSize, DrinkWindowStart, DrinkWindowEnd, Price, ReplacementCost)
VALUES ('Mission Hill Reserve Riesling', 5, 3, 4, 2021, 'Riesling', 11.5, '750ml', 2022, 2030, 25.00, 28.00);

INSERT INTO Wines (WineName, ProducerID, CountryID, TypeID, VintageYear, GrapeVarietal, AlcoholPercentage, BottleSize, DrinkWindowStart, DrinkWindowEnd, Price, ReplacementCost)
VALUES ('Torres Gran Coronas', 7, 4, 6, 2018, 'Merlot', 14.0, '750ml', 2022, 2032, 30.00, 35.00);

INSERT INTO Wines (WineName, ProducerID, CountryID, TypeID, VintageYear, GrapeVarietal, AlcoholPercentage, BottleSize, DrinkWindowStart, DrinkWindowEnd, Price, ReplacementCost)
VALUES ('Vega Sicilia Valbuena', 8, 4, 22, 2017, 'Tempranillo', 14.0, '750ml', 2023, 2035, 120.00, 135.00);

INSERT INTO Wines (WineName, ProducerID, CountryID, TypeID, VintageYear, GrapeVarietal, AlcoholPercentage, BottleSize, DrinkWindowStart, DrinkWindowEnd, Price, ReplacementCost)
VALUES ('Concha y Toro Terrunyo', 9, 6, 8, 2020, 'Pinot Grigio', 13.0, '750ml', 2022, 2028, 22.00, 25.00);

INSERT INTO Wines (WineName, ProducerID, CountryID, TypeID, VintageYear, GrapeVarietal, AlcoholPercentage, BottleSize, DrinkWindowStart, DrinkWindowEnd, Price, ReplacementCost)
VALUES ('Santa Rita Medalla Real', 10, 6, 15, 2019, 'Malbec', 14.0, '750ml', 2023, 2032, 20.00, 23.00);

INSERT INTO Wines (WineName, ProducerID, CountryID, TypeID, VintageYear, GrapeVarietal, AlcoholPercentage, BottleSize, DrinkWindowStart, DrinkWindowEnd, Price, ReplacementCost)
VALUES ('Penfolds Yattarna', 11, 5, 2, 2018, 'Chardonnay', 13.0, '750ml', 2023, 2035, 150.00, 165.00);

INSERT INTO Wines (WineName, ProducerID, CountryID, TypeID, VintageYear, GrapeVarietal, AlcoholPercentage, BottleSize, DrinkWindowStart, DrinkWindowEnd, Price, ReplacementCost)
VALUES ('Robert Mondavi Fumé Blanc', 12, 5, 5, 2021, 'Sauvignon Blanc', 13.5, '750ml', 2022, 2027, 28.00, 32.00);

INSERT INTO Wines (WineName, ProducerID, CountryID, TypeID, VintageYear, GrapeVarietal, AlcoholPercentage, BottleSize, DrinkWindowStart, DrinkWindowEnd, Price, ReplacementCost)
VALUES ('Antinori Solaia', 1, 1, 1, 2016, 'Cabernet Sauvignon', 14.5, '750ml', 2024, 2045, 250.00, 275.00);

INSERT INTO Wines (WineName, ProducerID, CountryID, TypeID, VintageYear, GrapeVarietal, AlcoholPercentage, BottleSize, DrinkWindowStart, DrinkWindowEnd, Price, ReplacementCost)
VALUES ('Gaja Ca Marcanda', 2, 1, 6, 2018, 'Merlot', 14.0, '750ml', 2023, 2035, 90.00, 100.00);

INSERT INTO Wines (WineName, ProducerID, CountryID, TypeID, VintageYear, GrapeVarietal, AlcoholPercentage, BottleSize, DrinkWindowStart, DrinkWindowEnd, Price, ReplacementCost)
VALUES ('Dom Pérignon', 4, 2, 18, 2012, 'Chardonnay/Pinot Noir', 12.5, '750ml', 2022, 2040, 200.00, 220.00);

INSERT INTO Wines (WineName, ProducerID, CountryID, TypeID, VintageYear, GrapeVarietal, AlcoholPercentage, BottleSize, DrinkWindowStart, DrinkWindowEnd, Price, ReplacementCost)
VALUES ('Mission Hill Reserve Pinot Noir', 5, 3, 3, 2019, 'Pinot Noir', 13.0, '750ml', 2023, 2032, 40.00, 45.00);

INSERT INTO Wines (WineName, ProducerID, CountryID, TypeID, VintageYear, GrapeVarietal, AlcoholPercentage, BottleSize, DrinkWindowStart, DrinkWindowEnd, Price, ReplacementCost)
VALUES ('Torres Sangre de Toro', 7, 4, 19, 2020, 'Grenache', 13.5, '750ml', 2022, 2028, 12.00, 15.00);

INSERT INTO Wines (WineName, ProducerID, CountryID, TypeID, VintageYear, GrapeVarietal, AlcoholPercentage, BottleSize, DrinkWindowStart, DrinkWindowEnd, Price, ReplacementCost)
VALUES ('Concha y Toro Casillero del Diablo', 9, 6, 14, 2021, 'Zinfandel', 14.0, '750ml', 2023, 2028, 15.00, 18.00);

INSERT INTO Wines (WineName, ProducerID, CountryID, TypeID, VintageYear, GrapeVarietal, AlcoholPercentage, BottleSize, DrinkWindowStart, DrinkWindowEnd, Price, ReplacementCost)
VALUES ('Santa Rita Reserva', 10, 6, 21, 2020, 'Sangiovese', 13.5, '750ml', 2023, 2030, 18.00, 20.00);

INSERT INTO Wines (WineName, ProducerID, CountryID, TypeID, VintageYear, GrapeVarietal, AlcoholPercentage, BottleSize, DrinkWindowStart, DrinkWindowEnd, Price, ReplacementCost)
VALUES ('Penfolds RWT', 11, 5, 7, 2017, 'Shiraz', 14.5, '750ml', 2025, 2040, 120.00, 135.00);

INSERT INTO Wines (WineName, ProducerID, CountryID, TypeID, VintageYear, GrapeVarietal, AlcoholPercentage, BottleSize, DrinkWindowStart, DrinkWindowEnd, Price, ReplacementCost)
VALUES ('Robert Mondavi Private Selection', 12, 5, 16, 2020, 'Gewürztraminer', 12.0, '750ml', 2022, 2027, 18.00, 20.00);
COMMIT;


-- 6. Insert Inventory (sample data)
INSERT INTO Inventory (WineID, Quantity, PurchaseDate, StorageLocationID, ConsumptionDate, ConsumedQuantity)
VALUES (1, 12, TO_DATE('2022-01-15', 'YYYY-MM-DD'), 1, NULL, 0);

INSERT INTO Inventory (WineID, Quantity, PurchaseDate, StorageLocationID, ConsumptionDate, ConsumedQuantity)
VALUES (2, 6, TO_DATE('2021-11-20', 'YYYY-MM-DD'), 5, NULL, 0);

INSERT INTO Inventory (WineID, Quantity, PurchaseDate, StorageLocationID, ConsumptionDate, ConsumedQuantity)
VALUES (3, 24, TO_DATE('2023-03-10', 'YYYY-MM-DD'), 12, NULL, 0);

INSERT INTO Inventory (WineID, Quantity, PurchaseDate, StorageLocationID, ConsumptionDate, ConsumedQuantity)
VALUES (4, 8, TO_DATE('2023-02-10', 'YYYY-MM-DD'), 15, NULL, 0);

INSERT INTO Inventory (WineID, Quantity, PurchaseDate, StorageLocationID, ConsumptionDate, ConsumedQuantity)
VALUES (5, 6, TO_DATE('2022-09-05', 'YYYY-MM-DD'), 22, NULL, 0);

INSERT INTO Inventory (WineID, Quantity, PurchaseDate, StorageLocationID, ConsumptionDate, ConsumedQuantity)
VALUES (6, 12, TO_DATE('2023-01-20', 'YYYY-MM-DD'), 8, NULL, 0);

INSERT INTO Inventory (WineID, Quantity, PurchaseDate, StorageLocationID, ConsumptionDate, ConsumedQuantity)
VALUES (7, 24, TO_DATE('2022-11-15', 'YYYY-MM-DD'), 35, NULL, 0);

INSERT INTO Inventory (WineID, Quantity, PurchaseDate, StorageLocationID, ConsumptionDate, ConsumedQuantity)
VALUES (8, 4, TO_DATE('2021-12-01', 'YYYY-MM-DD'), 42, NULL, 0);

INSERT INTO Inventory (WineID, Quantity, PurchaseDate, StorageLocationID, ConsumptionDate, ConsumedQuantity)
VALUES (9, 10, TO_DATE('2023-03-05', 'YYYY-MM-DD'), 19, NULL, 0);

INSERT INTO Inventory (WineID, Quantity, PurchaseDate, StorageLocationID, ConsumptionDate, ConsumedQuantity)
VALUES (10, 6, TO_DATE('2022-10-10', 'YYYY-MM-DD'), 27, NULL, 0);

INSERT INTO Inventory (WineID, Quantity, PurchaseDate, StorageLocationID, ConsumptionDate, ConsumedQuantity)
VALUES (11, 12, TO_DATE('2021-08-15', 'YYYY-MM-DD'), 33, NULL, 0);

INSERT INTO Inventory (WineID, Quantity, PurchaseDate, StorageLocationID, ConsumptionDate, ConsumedQuantity)
VALUES (12, 3, TO_DATE('2022-05-20', 'YYYY-MM-DD'), 48, NULL, 0);

INSERT INTO Inventory (WineID, Quantity, PurchaseDate, StorageLocationID, ConsumptionDate, ConsumedQuantity)
VALUES (13, 18, TO_DATE('2023-02-28', 'YYYY-MM-DD'), 56, NULL, 0);

INSERT INTO Inventory (WineID, Quantity, PurchaseDate, StorageLocationID, ConsumptionDate, ConsumedQuantity)
VALUES (14, 24, TO_DATE('2022-07-10', 'YYYY-MM-DD'), 62, NULL, 0);

INSERT INTO Inventory (WineID, Quantity, PurchaseDate, StorageLocationID, ConsumptionDate, ConsumedQuantity)
VALUES (15, 12, TO_DATE('2021-11-05', 'YYYY-MM-DD'), 71, NULL, 0);

INSERT INTO Inventory (WineID, Quantity, PurchaseDate, StorageLocationID, ConsumptionDate, ConsumedQuantity)
VALUES (16, 6, TO_DATE('2023-01-15', 'YYYY-MM-DD'), 84, NULL, 0);

INSERT INTO Inventory (WineID, Quantity, PurchaseDate, StorageLocationID, ConsumptionDate, ConsumedQuantity)
VALUES (17, 36, TO_DATE('2022-12-20', 'YYYY-MM-DD'), 93, NULL, 0);

INSERT INTO Inventory (WineID, Quantity, PurchaseDate, StorageLocationID, ConsumptionDate, ConsumedQuantity)
VALUES (18, 24, TO_DATE('2023-03-01', 'YYYY-MM-DD'), 107, NULL, 0);

INSERT INTO Inventory (WineID, Quantity, PurchaseDate, StorageLocationID, ConsumptionDate, ConsumedQuantity)
VALUES (19, 12, TO_DATE('2022-08-15', 'YYYY-MM-DD'), 112, NULL, 0);

INSERT INTO Inventory (WineID, Quantity, PurchaseDate, StorageLocationID, ConsumptionDate, ConsumedQuantity)
VALUES (20, 18, TO_DATE('2023-02-05', 'YYYY-MM-DD'), 125, NULL, 0);

INSERT INTO Inventory (WineID, Quantity, PurchaseDate, StorageLocationID, ConsumptionDate, ConsumedQuantity)
VALUES (21, 6, TO_DATE('2021-10-10', 'YYYY-MM-DD'), 132, NULL, 0);

INSERT INTO Inventory (WineID, Quantity, PurchaseDate, StorageLocationID, ConsumptionDate, ConsumedQuantity)
VALUES (22, 12, TO_DATE('2022-06-20', 'YYYY-MM-DD'), 144, NULL, 0);

INSERT INTO Inventory (WineID, Quantity, PurchaseDate, StorageLocationID, ConsumptionDate, ConsumedQuantity)
VALUES (23, 24, TO_DATE('2023-01-10', 'YYYY-MM-DD'), 156, NULL, 0);

INSERT INTO Inventory (WineID, Quantity, PurchaseDate, StorageLocationID, ConsumptionDate, ConsumedQuantity)
VALUES (24, 12, TO_DATE('2022-09-15', 'YYYY-MM-DD'), 168, NULL, 0);

INSERT INTO Inventory (WineID, Quantity, PurchaseDate, StorageLocationID, ConsumptionDate, ConsumedQuantity)
VALUES (25, 6, TO_DATE('2021-12-20', 'YYYY-MM-DD'), 175, NULL, 0);

INSERT INTO Inventory (WineID, Quantity, PurchaseDate, StorageLocationID, ConsumptionDate, ConsumedQuantity)
VALUES (26, 18, TO_DATE('2023-03-15', 'YYYY-MM-DD'), 182, NULL, 0);

INSERT INTO Inventory (WineID, Quantity, PurchaseDate, StorageLocationID, ConsumptionDate, ConsumedQuantity)
VALUES (27, 12, TO_DATE('2022-10-05', 'YYYY-MM-DD'), 195, NULL, 0);

INSERT INTO Inventory (WineID, Quantity, PurchaseDate, StorageLocationID, ConsumptionDate, ConsumedQuantity)
VALUES (28, 24, TO_DATE('2023-02-20', 'YYYY-MM-DD'), 203, NULL, 0);
COMMIT;