CREATE OR REPLACE TRIGGER wine_insert_INSTEADOF_trigger
INSTEAD OF INSERT ON WINEDETAILS
FOR EACH ROW
DECLARE
    v_producer_id    Producers.ProducerID%TYPE;
    v_country_id     Countries.CountryID%TYPE;
    v_type_id        Types.TypeID%TYPE;
    v_wine_id        Wines.WineID%TYPE;
BEGIN
    -- 1. Handle Producer (get or create)
    BEGIN
        SELECT ProducerID INTO v_producer_id
        FROM Producers
        WHERE UPPER(ProducerName) = UPPER(:NEW.ProducerName);
    EXCEPTION
        WHEN NO_DATA_FOUND THEN
            INSERT INTO Producers (ProducerName)
            VALUES (:NEW.ProducerName)
            RETURNING ProducerID INTO v_producer_id;
    END;

    -- 2. Handle Country (get or create)
    BEGIN
        SELECT CountryID INTO v_country_id
        FROM Countries
        WHERE UPPER(CountryName) = UPPER(:NEW.CountryName);
    EXCEPTION
        WHEN NO_DATA_FOUND THEN
            INSERT INTO Countries (CountryName)
            VALUES (:NEW.CountryName)
            RETURNING CountryID INTO v_country_id;
    END;

    -- 3. Handle Type (get or create)
    BEGIN
        SELECT TypeID INTO v_type_id
        FROM Types
        WHERE UPPER(TypeName) = UPPER(:NEW.TypeName);
    EXCEPTION
        WHEN NO_DATA_FOUND THEN
            INSERT INTO Types (TypeName)
            VALUES (:NEW.TypeName)
            RETURNING TypeID INTO v_type_id;
    END;

    -- 4. Insert into Wines table (will fire your validation trigger)
    INSERT INTO Wines (
        WineName,
        ProducerID,
        CountryID,
        TypeID,
        GrapeVarietal,
        AlcoholPercentage,
        BottleSize,
        Price,
        ReplacementCost,
        DrinkWindowStart,
        DrinkWindowEnd,
        VintageYear
    ) VALUES (
        :NEW.WineName,
        v_producer_id,
        v_country_id,
        v_type_id,
        :NEW.GrapeVarietal,
        :NEW.AlcoholPercentage,
        :NEW.BottleSize,
        :NEW.Price,
        :NEW.ReplacementCost,
        :NEW.DrinkWindowStart,
        :NEW.DrinkWindowEnd,
        :NEW.VintageYear
    ) RETURNING WineID INTO v_wine_id;

EXCEPTION
    WHEN OTHERS THEN
        RAISE_APPLICATION_ERROR(-20001, 
            'Error adding wine: ' || SQLERRM || 
            ' (Producer:' || :NEW.ProducerName || 
            ', Country:' || :NEW.CountryName || ')');
END;
/