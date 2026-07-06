SELECT CONCAT('(',p1.x, '; ', p1.y, ')') AS p1,
       CONCAT('(',p2.x, '; ', p2.y, ')') AS p2,
       ROUND(SQRT(POW((p1.x - p2.x), 2) + POW((p1.y - p2.y), 2)), 1) AS distance
FROM Points p1, Points p2
WHERE p1.id != p2.id AND  p1.id < p2.id AND
      SQRT(POW((p1.x - p2.x), 2) + POW((p1.y - p2.y), 2)) > 5;