-- Get a feel for the dataset
SELECT * FROM nomnom;

-- Select distinct neighborhoods
SELECT DISTINCT neighborhood FROM nomnom;

-- Select distinct cuisines
SELECT DISTINCT cuisine FROM nomnom;

-- Select all Chinese restaurants
SELECT * FROM nomnom
WHERE cuisine = 'Chinese';

-- Select all restaurants with a review of 4+
SELECT * FROM nomnom
WHERE review >= 4;

-- Select all Italian restaurants with '$$$' price
SELECT * FROM nomnom
WHERE cuisine = 'Italian'
  AND price = '$$$';

-- Find restaurant with 'meatball' in name
SELECT * FROM nomnom
WHERE name LIKE '%meatball%';

-- Find all restaurants in Midtown, Downtown or Chinatown
SELECT * FROM nomnom
WHERE neighborhood = 'Midtown'
  OR neighborhood = 'Downtown'
  OR neighborhood = 'Chinatown';

-- Find all restaurants withouth a health grade
SELECT * FROM nomnom
WHERE health IS NULL;

-- Select the top 10 restaurants
SELECT * FROM nomnom
ORDER BY review DESC
LIMIT 10;

-- Change rating system from numeric values to descriptive
SELECT name, neighborhood, cuisine, price, health, 
CASE
  WHEN review > 4.5 THEN 'Extraordinary'
  WHEN review > 4 THEN 'Excellent'
  WHEN review > 3 THEN 'Good'
  WHEN review > 2 THEN 'Fair'
  ELSE 'Poor'
END AS 'Desc. Rating'
FROM nomnom;