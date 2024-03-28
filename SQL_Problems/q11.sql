/*
Budget vs Expense Analysis 
Query: Compare the actual expenses against the budget for each department for the current fiscal year. 
Entities Involved: EXPENSE, BUDGET, DEPARTMENT 
Angelo Angel
*/

SELECT DEPT_NAME, (ALLOCATED_AMT - SUM(EXPENSE_AMT)) AS "Difference between budget and actual expenses"
FROM EXPENSE E
JOIN DEPARTMENT D ON E.DEPT_ID = D.DEPT_ID
JOIN BUDGET B ON D.DEPT_ID = B.DEPT_ID
WHERE FISCAL_YEAR = 2024
GROUP BY DEPT_NAME
ORDER BY (ALLOCATED_AMT - SUM(EXPENSE_AMT)) DESC;

/*
Joined three tables based upon their linking attribute: DEPT_ID
In the ERD, the relationship goes from left to right starting with EXPENSE, to DEPARTMENT, to BUDGET
So it seemed logical to begin with EXPENSE first despite being the many side of DEPARTMENT.
Only chose entries tied to the year 2024
Used aggregate functions to determine the difference between the budget amt and the sum of all incurred expenses by each department
Also ordered the result by this aggregate functions and then grouped them by DEPT_NAME to avoid duplicates
*/