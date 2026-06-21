SELECT bike_number, MAX(end_time) AS last_ride_end
FROM Rides
GROUP BY bike_number
HAVING MAX(end_time)
ORDER BY last_ride_end DESC;