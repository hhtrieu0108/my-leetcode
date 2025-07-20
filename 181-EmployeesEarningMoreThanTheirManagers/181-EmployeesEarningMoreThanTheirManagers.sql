-- Last updated: 7/21/2025, 12:40:35 AM
-- Write your PostgreSQL query statement below
SELECT 
    e2.name as Employee
FROM 
    Employee e1 INNER JOIN Employee e2 on e1.id = e2.managerId
WHERE
    e2.salary > e1.salary
