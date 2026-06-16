SELECT username, DATEDIFF(subscription_end, subscription_start) + 1 AS days
FROM Users
WHERE DATEDIFF(subscription_end, subscription_start) + 1 >= 15
ORDER BY DATEDIFF(subscription_end, subscription_start) + 1 DESC, username ASC;