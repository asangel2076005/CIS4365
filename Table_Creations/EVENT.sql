-- EVENT TABLE
-- MAYBELLINE


CREATE TABLE IF NOT EXISTS EVENT(
	EVENT_CODE INT UNSIGNED,
    EVENT_NAME VARCHAR(255) NOT NULL,
    EVENT_DATE DATE NOT NULL,
    EVENT_TYPE VARCHAR(255) NOT NULL,
    EVENT_ADDRESS VARCHAR(255) NOT NULL,
    EXPENSE_ID INT UNSIGNED,
    ZIP_CODE INT UNSIGNED,
    PRIMARY KEY (EVENT_CODE),
    FOREIGN KEY (EXPENSE_ID) REFERENCES EXPENSE(EXPENSE_ID) ON UPDATE CASCADE,
    FOREIGN KEY (ZIP_CODE) REFERENCES ZIP(ZIP_CODE) ON UPDATE CASCADE
);

SELECT * FROM EVENT;