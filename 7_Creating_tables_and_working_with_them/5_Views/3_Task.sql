CREATE VIEW ActivePlayers AS
SELECT player_id, MAX(event_date) AS last_login
FROM Activity
WHERE event_date BETWEEN '2024-08-03' AND '2024-09-01'
GROUP BY player_id;