CREATE OR REPLACE VIEW WineDetails AS
SELECT 
    w.WineID,
    w.WineName,
    p.ProducerName,
    c.CountryName,
    t.TypeName,
    w.VintageYear,
    w.GrapeVarietal,
    w.AlcoholPercentage,
    w.BottleSize,
    w.DrinkWindowStart,
    w.DrinkWindowEnd,
    w.Price,
    w.ReplacementCost
FROM 
    Wines w
    JOIN Producers p ON w.ProducerID = p.ProducerID
    JOIN Countries c ON w.CountryID = c.CountryID
    JOIN Types t ON w.TypeID = t.TypeID;
