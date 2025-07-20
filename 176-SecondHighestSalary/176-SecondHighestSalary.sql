-- Last updated: 7/21/2025, 12:40:36 AM
-- Write your PostgreSQL query statement below
SELECT 
    CASE
        WHEN COUNT(id) >= 2 AND COUNT(DISTINCT(salary)) >= 2 THEN(
            SELECT DISTINCT(salary)
            FROM Employee
            ORDER BY salary desc
            LIMIT 1 OFFSET 1
        )
    ELSE NULL
    END AS "SecondHighestSalary"
FROM Employee
