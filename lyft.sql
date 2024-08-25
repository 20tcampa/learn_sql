-- Looking at all the tables
SELECT * FROM trips;
SELECT * FROM riders;
SELECT * FROM cars;

-- Cross joining riders and cars 
SELECT * FROM riders
CROSS JOIN cars;

-- Joining trips and riders to create a Trip Log
SELECT * FROM trips
LEFT JOIN riders
  ON trips.rider_id = riders.id;

-- Joining trips and cars 
SELECT * FROM trips
INNER JOIN cars
  ON trips.car_id = cars.id;

-- Combining the riders data with riders2
SELECT * FROM riders
UNION
SELECT * FROM riders2;

-- Calculating average cost of a trip
SELECT ROUND(AVG(cost), 2) FROM trips;

-- Finding users that have used Lyft less than 500 times
SELECT * FROM riders
WHERE total_trips < 500
UNION
SELECT * FROM riders2
WHERE total_trips < 500;

-- Calculate number of active cars
SELECT COUNT(*) FROM cars
WHERE status = 'active';

-- Finding the 2 cars with the highest trips completed
SELECT * FROM cars
ORDER BY trips_completed DESC
LIMIT 2;