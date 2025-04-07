CREATE OR REPLACE TRIGGER tr_Wines_Validate_BeforeInsert
BEFORE INSERT ON Wines
FOR EACH ROW
DECLARE
    v_start_year NUMBER;
    v_end_year NUMBER;
BEGIN
    -- Validate VintageYear ≤ current year
    IF :NEW.VintageYear > EXTRACT(YEAR FROM SYSDATE) THEN
        RAISE_APPLICATION_ERROR(-20001, 'VintageYear cannot be in the future.');
    END IF;
    
    -- Validate Drink Window
      IF (:NEW.DrinkWindowStart IS NOT NULL AND :NEW.DrinkWindowEnd IS NOT NULL) AND
       (:NEW.DrinkWindowEnd <= :NEW.DrinkWindowStart) THEN
        RAISE_APPLICATION_ERROR(-20002, 'DrinkWindowEnd must be after DrinkWindowStart');
    END IF;
    
    -- Validate AlcoholPercentage between 0-100
    IF :NEW.AlcoholPercentage < 0 OR :NEW.AlcoholPercentage > 100 THEN
        RAISE_APPLICATION_ERROR(-20003, 'AlcoholPercentage must be between 0 and 100.');
    END IF;
END;
/
