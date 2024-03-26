-- ALLERGY_INFO
-- MAYBELLINE

CREATE TABLE IF NOT EXISTS ALLERGY_INFO (
    ALLERGY_ID INT UNSIGNED,
    ALLERGY_NAME VARCHAR(255) NOT NULL,
    ALLERGY_DESC VARCHAR(255) NOT NULL,
    PRECAUTION TEXT,
    HANDLING_INST TEXT NOT NULL,
    PRIMARY KEY(ALLERGY_ID)
);

SELECT * FROM ALLERGY_INFO;