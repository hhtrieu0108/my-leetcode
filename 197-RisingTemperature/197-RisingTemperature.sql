-- Last updated: 7/21/2025, 12:40:25 AM
-- Write your PostgreSQL query statement below

-- Solution 1
-- SELECT 
--     id
-- FROM (
--     SELECT
--         id,
--         recordDate,
--         temperature,
--         LAG(temperature) OVER(ORDER BY recordDate) as previous_temperature,
--         LAG(recordDate) OVER(ORDER BY recordDate) as previous_date
--     FROM
--         Weather
--     )
-- WHERE 
--     (recordDate - previous_date = 1) AND
--     (temperature - previous_temperature) > 0

-- Solution 2
SELECT 
    w1.id
FROM 
    Weather w1 JOIN Weather w2
ON 
    w1.recordDate = w2.recordDate + INTERVAL '1 day'
WHERE 
    w1.temperature > w2.temperature;