SELECT extra AS report_reason, 
       COUNT(DISTINCT post_id) AS report_count
FROM Actions
WHERE action_date = '2023-07-05' AND action = 'report'
GROUP BY extra;