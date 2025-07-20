-- Last updated: 7/21/2025, 12:40:37 AM
-- Write your PostgreSQL query statement below
SELECT 
    p.firstName, p.lastName, a.city, a.state
FROM 
    Person p left join Address a on p.personId = a.personId