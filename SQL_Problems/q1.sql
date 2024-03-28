-- SQL QUERY #1
-- Eman, Krupa, Maybelline


USE BAKERY;

SELECT CUST_FNAME, CUST_LNAME
FROM CUSTOMER JOIN (SELECT CUST_ID     
						FROM PLACED_ORDER
						GROUP BY CUST_ID
						HAVING COUNT(*) > 5) AS MoreThanFiveOrders ON CUSTOMER.CUST_ID = MoreThanFiveOrders.CUST_ID
						LEFT JOIN LOYALTY_PROGRAM ON CUSTOMER.CUST_ID = LOYALTY_PROGRAM.CUST_ID 
						WHERE LOYALTY_PROGRAM.CUST_ID IS NULL;

