CREATE OR REPLACE PROCEDURE AddWineInventory (
    p_WineID IN NUMBER,
    p_Quantity IN NUMBER,
    p_StorageLocationID IN NUMBER,
    p_ErrorMessage OUT VARCHAR2
)
AS
    v_CurrentStock NUMBER := 0;
    v_MaxCapacity NUMBER;
    v_NewStock NUMBER;
    v_ErrorMsg VARCHAR2(4000);  -- Added variable for error message
BEGIN
    -- Validate StorageLocationID exists
    BEGIN
        SELECT 1 INTO v_CurrentStock 
        FROM StorageLocations 
        WHERE StorageLocationID = p_StorageLocationID;
    EXCEPTION
        WHEN NO_DATA_FOUND THEN
            p_ErrorMessage := 'Invalid StorageLocationID: ' || p_StorageLocationID;
            RETURN;
    END;

    -- Calculate current stock and capacity
    BEGIN
        SELECT 
            NVL(SUM(i.Quantity), 0),
            s.MaxCapacity
        INTO 
            v_CurrentStock,
            v_MaxCapacity
        FROM 
            Inventory i
            RIGHT JOIN StorageLocations s ON i.StorageLocationID = s.StorageLocationID
        WHERE 
            s.StorageLocationID = p_StorageLocationID
        GROUP BY 
            s.MaxCapacity;
    EXCEPTION
        WHEN NO_DATA_FOUND THEN
            v_CurrentStock := 0;
    END;

    -- Validate capacity
    v_NewStock := v_CurrentStock + p_Quantity;
    
    IF v_NewStock > v_MaxCapacity THEN
        p_ErrorMessage := 'Cannot add ' || p_Quantity || 
                         ' bottles. Storage location ' || p_StorageLocationID || 
                         ' has ' || v_CurrentStock || '/' || v_MaxCapacity || ' bottles.';
        RETURN;
    END IF;

    -- Insert valid inventory
    INSERT INTO Inventory (
        WineID, 
        Quantity, 
        StorageLocationID, 
        PurchaseDate
    )
    VALUES (
        p_WineID,
        p_Quantity,
        p_StorageLocationID,
        SYSDATE
    );

    -- Return success message
    p_ErrorMessage := 'Success! Added ' || p_Quantity || 
                     ' bottles. Current stock: ' || v_NewStock || '/' || v_MaxCapacity;

EXCEPTION
    WHEN OTHERS THEN
        -- Handle errors
        v_ErrorMsg := SQLERRM;  -- Store error in variable first
        p_ErrorMessage := v_ErrorMsg;
        
        -- Insert using variable
        INSERT INTO ErrorLog (ErrorMessage, ErrorTime)
        VALUES (v_ErrorMsg, SYSDATE);
        
        RAISE;
END;
/