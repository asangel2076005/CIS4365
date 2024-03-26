-- PRODUCT_PACKAGING
-- Angelo Angel

CREATE TABLE IF NOT EXISTS PRODUCT_PACKAGING (
	PROD_PACK_ID INT UNSIGNED,
    PROD_ID INT UNSIGNED,
    PACK_ID INT UNSIGNED,
    PROD_QTY SMALLINT NOT NULL,
    DATE DATE NOT NULL,
    SUPP_ID INT UNSIGNED,
    PRIMARY KEY (PROD_PACK_ID),
    FOREIGN KEY (PROD_ID) REFERENCES PRODUCT (PROD_ID) ON UPDATE CASCADE,
    FOREIGN KEY (PACK_ID) REFERENCES PACKAGING (PACK_ID) ON UPDATE CASCADE,
    FOREIGN KEY (SUPP_ID) REFERENCES SUPPLIER (SUPP_ID) ON UPDATE CASCADE
);

SELECT * FROM PRODUCT_PACKAGING;

