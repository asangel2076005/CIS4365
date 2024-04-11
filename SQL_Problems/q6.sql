-- SQL QUERY #6
-- Barry McCoy, Angelo Angel

-- Promotion Effectiveness
-- Query: Calculate the increase in sales for products that were part of a promotion in the last month.
--   (Pick the products involved in any promotion that were bought last month.
--    Then calculate the total amount paid for each product.
--    Meaning that a product can be in at least two promotions but still want the total sales for each product)
-- Entities: PRODUCT, PROMOTION, SALES_REPORT

USE BAKERY;

SELECT OL.PROD_ID, SUM(PAY_AMOUNT) AS TOTAL_SALES
FROM ORDER_LINE OL
JOIN PLACED_ORDER PO ON OL.ORDER_ID = PO.ORDER_ID
JOIN PAYMENT PA ON OL.ORDER_ID = PA.ORDER_ID
WHERE (OL.PROD_ID IN (
						SELECT DISTINCT(PP.PROD_ID) 
						FROM PRODUCT_PROMOTION PP 
						JOIN PRODUCT P ON PP.PROD_ID = P.PROD_ID
					)
        )
	AND (MONTH(PAY_DATE) = 3)
GROUP BY OL.PROD_ID;

-- Select the Product ID to identify each product involved in a promotion to calculate total sales.
-- We join the PLACED_ORDER, ORDER_LINE, and PAYMENT tables.
-- We use Distinct product IDs from the PRODUCT_PROMOTION table to ensure that we're considering only products which are from a promotion.
-- We filter to include the data only in March, for PAY_DATE = 3.
-- Group the results by Product ID which displays the data separately. 




