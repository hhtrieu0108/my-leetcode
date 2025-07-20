-- Last updated: 7/21/2025, 12:40:31 AM
-- Write your PostgreSQL query statement below
DELETE FROM Person
WHERE id NOT IN (
    SELECT MIN(id)
    FROM Person
    GROUP BY email
);
