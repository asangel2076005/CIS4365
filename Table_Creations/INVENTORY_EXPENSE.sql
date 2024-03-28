-- INVENTORY_EXPENSE
-- VICTOR CHAVEZ

CREATE TABLE IF NOT EXISTS INVENTORY_EXPENSE(
	EXPENSE_ID INT UNSIGNED,
    INVT_ID INT UNSIGNED, 
    DATE_INCURRED DATE NOT NULL,
    PRIMARY KEY (EXPENSE_ID,INVT_ID),
    FOREIGN KEY (EXPENSE_ID) REFERENCES EXPENSE (EXPENSE_ID) ON DELETE CASCADE,
    FOREIGN KEY (INVT_ID) REFERENCES INVENTORY (INVT_ID) ON DELETE CASCADE
    
    );
SELECT * FROM INVENTORY_EXPENSE
