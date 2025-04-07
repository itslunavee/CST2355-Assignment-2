CREATE OR REPLACE PROCEDURE RecordWineConsumption (
    p_InventoryID IN NUMBER,
    p_Quantity IN NUMBER,
    p_ErrorMessage OUT VARCHAR2
) AS
BEGIN
    UPDATE Inventory
    SET 
        Quantity = Quantity - p_Quantity,
        ConsumedQuantity = NVL(ConsumedQuantity, 0) + p_Quantity,
        ConsumptionDate = SYSDATE
    WHERE InventoryID = p_InventoryID
      AND Quantity >= p_Quantity;
    
    IF SQL%ROWCOUNT = 0 THEN
        p_ErrorMessage := 'Consumption failed! Check available quantity.';
    ELSE
        p_ErrorMessage := 'Consumed ' || p_Quantity || ' bottles successfully.';
        COMMIT;
    END IF;
EXCEPTION
    WHEN OTHERS THEN
        ROLLBACK;
        p_ErrorMessage := 'Error: ' || SQLERRM;
        RAISE;
END;
/