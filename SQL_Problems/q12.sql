/*
Waste Management Metrics 
Query: Find the top 5 ingredients that have the highest waste log entries in the past year. 
Entities Involved: INGREDIENT, WASTELOG, INVENTORY
Angelo Angel
*/

SELECT INGRED_NAME, SUM(WASTE_QTY) AS "Num of Wastes"
FROM INGREDIENT I
JOIN WASTE_LOG W ON I.INGRED_ID = W.INGRED_ID
GROUP BY INGRED_NAME
ORDER BY "Num of Wastes" DESC
LIMIT 5;

/*
Joined two tables: ingredient and waste_log through INGRED_ID
Used aggeragte sum function to find the sumn of all wastes and then them grouped by ingredient names
to ensure no repetition of the same names.
Then ordered them by waste quantity through descending (starting from highest to lowest) and limited the results by 5
*/