DELETE FROM Purchases
WHERE id IN (SELECT id FROM (SELECT p.id
                             FROM Purchases p
                             JOIN Users u ON p.user_id = u.id
                             WHERE u.user = 'Matt Damon'
                             ORDER BY p.id DESC
                             LIMIT 2) as sub);