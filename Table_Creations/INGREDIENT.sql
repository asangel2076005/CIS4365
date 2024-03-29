-- INGREDIENT
-- Angelo Angel

CREATE TABLE IF NOT EXISTS INGREDIENT (
	INGRED_ID INT UNSIGNED,
    INGRED_NAME VARCHAR(255) NOT NULL,
    INGRED_QTY DECIMAL(5, 2) NOT NULL,
    INGRED_MEASURE VARCHAR(255),
    INVT_ID INT UNSIGNED,
    SUPP_ID INT UNSIGNED,
    PRIMARY KEY (INGRED_ID),
    FOREIGN KEY (INVT_ID) REFERENCES INVENTORY (INVT_ID) ON UPDATE CASCADE,
    FOREIGN KEY (SUPP_ID) REFERENCES SUPPLIER (SUPP_ID) ON UPDATE CASCADE
);

-- Enforces one-to-one relationship and ensures no duplicates of the foreign key exists
ALTER TABLE INGREDIENT
ADD UNIQUE (INVT_ID);

SELECT * FROM INGREDIENT;


