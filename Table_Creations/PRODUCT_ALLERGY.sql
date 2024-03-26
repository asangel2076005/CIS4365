-- PRODUCT_ALLERGY
-- MAYBELLINE

CREATE TABLE IF NOT EXISTS PRODUCT_ALLERGY(
	PROD_ID INT UNSIGNED,
    ALLERGY_ID INT UNSIGNED,
    SEVERITY VARCHAR(20) NOT NULL,
    PRIMARY KEY(PROD_ID, ALLERGY_ID),
    FOREIGN KEY (PROD_ID) REFERENCES PRODUCT(PROD_ID) ON DELETE CASCADE,
    FOREIGN KEY (ALLERGY_ID) REFERENCES ALLERGY_INFO(ALLERGY_ID) ON DELETE CASCADE
);

SELECT * FROM PRODUCT_ALLERGY;