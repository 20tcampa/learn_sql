 -- Finding the most popular news stories
 SELECT title, score FROM hacker_news
 ORDER BY score DESC
 LIMIT 5;

 -- Find total score of all stories
 SELECT SUM(score) FROM hacker_news;

 -- Find all users that have a combined sore greater than 200
 SELECT user, SUM(score) FROM hacker_news
 GROUP BY 1
 HAVING SUM(score) > 200;

 -- Calculate the % influence of these users
 SELECT ((309+304+282+517) / 6366.0) * 100;

-- Find how many times each user has posted a Rick Roll
SELECT user, COUNT(title) FROM hacker_news
WHERE url LIKE '%watch?v=dQw4w9WgXcQ%'
GROUP BY 1;

-- Calculate which sites feed Hacker News the most
SELECT CASE
  WHEN url LIKE '%github.com%' THEN 'GitHub'
  WHEN url LIKE '%medium.com%' THEN 'Medium'
  WHEN url LIKE '%nytimes.com%' THEN 'New York Times'
  ELSE 'Other'
END AS 'Source', COUNT(*)
FROM hacker_news
GROUP BY 1;

-- Finding out which time of day is best to post for highest scores
SELECT timestamp FROM hacker_news
LIMIT 10;

SELECT timestamp, strftime('%H', timestamp) FROM hacker_news
GROUP BY 1
LIMIT 20;

SELECT strftime('%H', timestamp) AS 'Hour', 
  ROUND(AVG(score), 0) AS 'Average Score', 
  COUNT(*) AS 'Count of Stories'
FROM hacker_news
WHERE timestamp IS NOT NULL
GROUP BY 1
ORDER BY 2 DESC;