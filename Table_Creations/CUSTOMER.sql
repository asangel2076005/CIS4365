-- CUSTOMER

CREATE TABLE IF NOT EXISTS CUSTOMER (
	CUST_ID INT UNSIGNED,
    CUST_FNAME VARCHAR(255) NOT NULL,
    CUST_LNAME VARCHAR(255) NOT NULL,
    CUST_INITIAL CHAR(1),
    CUST_EMAIL VARCHAR(255),
    CUST_ADDRESS VARCHAR(255),
    CUST_PHONE_NUM VARCHAR(255),
    ZIP_CODE INT UNSIGNED,
    PRIMARY KEY (CUST_ID),
    FOREIGN KEY (ZIP_CODE) REFERENCES ZIP (ZIP_CODE) ON UPDATE CASCADE
);
