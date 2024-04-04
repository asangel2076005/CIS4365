-- SQL Query #4
-- Eman, Krupa, Maybelline


-- Supplier Expense Report 
-- Query: Generate a report showing the total expenses for each supplier in the last quarter. 
-- Entities: SUPPLIER, INVOICE, EXPENSE

USE BAKERY;

SELECT 
SUPPLIER.SUPP_ID,
    SUPPLIER.SUPP_COMPANY,
    SUM(EXPENSE.EXPENSE_AMT) AS total_expenses
FROM 
    SUPPLIER 
JOIN 
    INVOICE ON SUPPLIER.SUPP_ID = INVOICE.SUPP_ID
JOIN 
    EXPENSE ON INVOICE.EXPENSE_ID = EXPENSE.EXPENSE_ID
WHERE 
    EXPENSE.EXPENSE_DATE >= DATE_SUB(CURDATE(), INTERVAL 3 MONTH)
GROUP BY 
    SUPPLIER.SUPP_ID, SUPPLIER.SUPP_COMPANY;

