-- Looking at the data
SELECT * FROM startups
LIMIT 5;

-- Calculate total number of companies
SELECT COUNT(*) FROM startups;

-- Calculate total value of all companies
SELECT SUM(valuation) FROM startups;

-- Calculate max amount raised by a startup
SELECT MAX(raised) FROM startups;

-- Calculate max amount raised by a startup during 'Seed' stage
SELECT MAX(raised) FROM startups
WHERE stage = 'Seed';

-- Find year founded of oldest company in table
SELECT MIN(founded) FROM startups;

-- Get average valuation
SELECT AVG(valuation) FROM startups;

-- Get average valuation grouped by category
SELECT category, AVG(valuation) FROM startups
GROUP BY 1;

-- Get the rounded average valuation grouped by category
SELECT category, ROUND(AVG(valuation), 2) FROM startups
GROUP BY 1;

-- Get the rounded average valuation grouped by category and order by highest to lowest
SELECT category, ROUND(AVG(valuation), 2) FROM startups
GROUP BY 1
ORDER BY 2 DESC;

-- Get all total number of companies by category
SELECT category, COUNT(*) FROM startups
GROUP BY 1;

-- Get all categories that have more than 3 companies
SELECT category, COUNT(*) FROM startups
GROUP BY 1
HAVING COUNT(*) > 3;

-- Calculate average size of startup by location
SELECT location, AVG(employees) FROM startups
GROUP BY 1;

-- Find locations where average size is greater than 500
SELECT location, AVG(employees) FROM startups
GROUP BY 1
HAVING AVG(employees) > 500;