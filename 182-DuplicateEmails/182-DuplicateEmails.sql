-- Last updated: 7/21/2025, 12:40:33 AM
-- Write your PostgreSQL query statement below
SELECT
    email
FROM
    Person
GROUP BY
    email
HAVING COUNT(email) >= 2

