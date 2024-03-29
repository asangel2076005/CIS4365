-- ROLE TABLE
-- MAYBELLINE


CREATE TABLE IF NOT EXISTS ROLE(
	ROLE_ID INT UNSIGNED, 
    ROLE_NAME VARCHAR(255) NOT NULL,
    ROLE_DESC VARCHAR(255) NOT NULL,
    SALARY_ID INT UNSIGNED,
    DEPT_ID INT UNSIGNED, 
    PRIMARY KEY(ROLE_ID),
    FOREIGN KEY(SALARY_ID) REFERENCES SALARY(SALARY_ID) ON UPDATE CASCADE,
    FOREIGN KEY (DEPT_ID) REFERENCES DEPARTMENT(DEPT_ID) ON UPDATE CASCADE
    
);


ALTER TABLE ROLE  -- ONE TO ONE RELATIONSHIP 
ADD UNIQUE(SALARY_ID);

