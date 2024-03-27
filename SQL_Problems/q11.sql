/*
Budget vs Expense Analysis 
Query: Compare the actual expenses against the budget for each department for the current fiscal year. 
Entities Involved: EXPENSE, BUDGET, DEPARTMENT 
*/

SELECT *
FROM EXPENSE E
JOIN DEPARTMENT D ON E.DEPT_ID = D.DEPT_ID
JOIN BUDGET B ON D.DEPT_ID = B.DEPT_ID
ORDER BY DEPT_NAME;

SELECT SUM(EXPENSE_AMT)
FROM EXPENSE E
JOIN DEPARTMENT D ON E.DEPT_ID = D.DEPT_ID
JOIN BUDGET B ON D.DEPT_ID = B.DEPT_ID
WHERE DEPT_NAME = "Bakery";