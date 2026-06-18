SELECT name, surname, status
FROM Clients
ORDER BY CASE
          WHEN `status` LIKE 'Gold' THEN 1
          WHEN `status` LIKE 'Silver' THEN 2
          WHEN `status` LIKE 'Bronze' THEN 3
          WHEN `status` LIKE 'Basic' THEN 4
      END ASC, name ASC;