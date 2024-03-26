-- CATERING PRODUCT
-- MAYBELLINE
USE BAKERY;

CREATE TABLE IF NOT EXISTS CATERING_PRODUCT(
	CATER_CODE INT UNSIGNED,
    PROD_ID INT UNSIGNED,
	PRIMARY KEY(CATER_CODE),
    FOREIGN KEY (CATER_CODE) REFERENCES CATERING(CATER_CODE) ON DELETE CASCADE,
    FOREIGN KEY (PROD_ID) REFERENCES PRODUCT(PROD_ID) ON UPDATE CASCADE
);

SELECT * FROM CATERING_PRODUCT;