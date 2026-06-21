SELECT
       SUM(WEEKDAY(submit_date) = 5 OR WEEKDAY(submit_date) = 6) AS weekend_count,
       SUM(WEEKDAY(submit_date) IN (0, 1, 2, 3, 4)) AS working_count
FROM Actions;