-- SHIFT
-- VICTOR CHAVEZ

CREATE TABLE IF NOT EXISTS SHIFT (
	SHIFT_ID INT UNSIGNED,
    SHIFT_NAME VARCHAR (255),
    START_TIME TIME NOT NULL,
    BREAK_TIME_START TIME NOT NULL,
	  BREAK_TIME_END TIME NOT NULL,
    END_TIME TIME NOT NULL,
    DURATION SMALLINT NOT NULL,
    PRIMARY KEY (SHIFT_ID)
    
    );
    SELECT * FROM SHIFT
