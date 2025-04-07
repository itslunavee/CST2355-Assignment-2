CREATE TABLE InventoryAudit (
    AuditID NUMBER GENERATED ALWAYS AS IDENTITY START WITH 1 INCREMENT BY 1 PRIMARY KEY,
    InventoryID NUMBER NOT NULL,
    OldQuantity NUMBER NULL,
    NewQuantity NUMBER NULL,
    OldConsumedQuantity NUMBER NULL,
    NewConsumedQuantity NUMBER NULL,
    ChangedBy VARCHAR2(50) NOT NULL,
    ChangeDate TIMESTAMP DEFAULT SYSTIMESTAMP NOT NULL,
    CONSTRAINT fk_inventory FOREIGN KEY (InventoryID) REFERENCES Inventory(InventoryID)
);