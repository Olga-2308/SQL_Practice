SELECT name, surname, country,
  IF(
     IF(country LIKE 'USA', (rating + 10), rating) > 100, 100, 
     IF(country LIKE 'USA', (rating + 10), rating)
  ) AS rating       
FROM Directors
ORDER BY rating DESC, name ASC;