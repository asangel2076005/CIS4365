-- PACKAGING
-- VICTOR CHAVEZ

CREATE TABLE IF NOT EXISTS PACKAGING (
	PACK_ID INT UNSIGNED,
    PACK_TYPE VARCHAR(25) NOT NULL,
    PACK_MATERIAL VARCHAR(255) NOT NULL,
    PRIMARY KEY (PACK_ID)
    );

SELECT * FROM PACKAGING
