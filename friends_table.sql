-- Create a friends table with id, name, and birthday columns
CREATE TABLE friends (
  id INTEGER,
  name TEXT,
  birthday DATE
);

-- Add a friend to the table
INSERT INTO friends (id, name, birthday)
VALUES (1, 'Ororo Munroe', '1940-05-30');

-- Confirm that friend was added
SELECT * FROM friends;

-- Add more friends to table
INSERT INTO friends (id, name, birthday)
VALUES (2, 'Thomas Campana', '2001-07-12');

INSERT INTO friends (id, name, birthday)
VALUES (3, 'John McJohn', '1927-03-23');

-- Update 'Ororo Munroe' to have 'Storm' as the first name
UPDATE friends
SET name = 'Storm Munroe'
WHERE id = 1;

-- Add an email column to table
ALTER TABLE friends
ADD COLUMN email TEXT;

-- Update all friends to have their emails included
UPDATE friends
SET email = 'storm@codecademy.com'
WHERE id = 1;

UPDATE friends
SET email = '20tcampa@codecademy.com'
WHERE id = 2;

UPDATE friends
SET email = 'McJohn@codecademy.com'
WHERE id = 3;

-- Remove Storm Munroe from the table
DELETE FROM friends
WHERE id = 1;

-- Check the table one last time
SELECT * FROM friends;
