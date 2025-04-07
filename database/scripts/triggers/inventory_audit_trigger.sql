CREATE OR REPLACE TRIGGER tr_Inventory_Audit
AFTER UPDATE ON Inventory
FOR EACH ROW
BEGIN
    -- Check if Quantity or ConsumedQuantity changed
    IF (:OLD.Quantity != :NEW.Quantity OR 
        :OLD.ConsumedQuantity != :NEW.ConsumedQuantity) THEN
        
        -- Insert audit records only if changes occurred
        INSERT INTO InventoryAudit (
            InventoryID,
            OldQuantity,
            NewQuantity,
            OldConsumedQuantity,
            NewConsumedQuantity,
            ChangedBy,
            ChangeDate
        )
        VALUES (
            :NEW.InventoryID,
            :OLD.Quantity,
            :NEW.Quantity,
            :OLD.ConsumedQuantity,
            :NEW.ConsumedQuantity,
            USER,
            SYSTIMESTAMP
        );
    END IF;
END;
/
