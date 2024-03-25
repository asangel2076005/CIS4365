-- COMPANY_CARD
-- VICTOR CHAVEZ

CREATE TABLE IF NOT EXISTS COMPANY_CARD (
	COMP_CARD INT UNSIGNED,
    CARD_NUM VARCHAR(20),
    BALANCE DECIMAL(20,2) NOT NULL,
    COMP_CARD_MONTH SMALLINT NOT NULL,
    COMP_CARD_YEAR SMALLINT NOT NULL,
    CARD_ID INT UNSIGNED,
    PRIMARY KEY (COMP_CARD),
    FOREIGN KEY (CARD_ID) REFERENCES CARD_ISSUER (CARD_ID) ON UPDATE CASCADE
    
    );
SELECT * FROM COMPANY_CARD

