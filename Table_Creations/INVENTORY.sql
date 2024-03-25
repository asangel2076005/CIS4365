-- INVENTORY
-- VICTOR CHAVEZ

CREATE TABLE IF NOT EXISTS INVENTORY (
	INVT_ID INT UNSIGNED,
    INVT_TYPE VARCHAR (20),
    INVT_QTY SMALLINT NOT NULL,
    INVT_MEASURE VARCHAR(20) NOT NULL,
    INVT_EXP_DATE DATE NOT NULL,
    INVT_MIN_STOCK SMALLINT NOT NULL,
    INVT_MAX_STOCK SMALLINT NOT NULL,
    INVT_STATUS VARCHAR(20) NOT NULL,
    PRIMARY KEY (INVT_ID)
    
    );
    SELECT * FROM INVENTORY