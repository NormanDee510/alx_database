-- Use the specified database
USE hbtn_0d_usa;

-- Find the state_id for California
SELECT id INTO @california_state_id
FROM states
WHERE name = 'California';

-- List all cities of California
SELECT cities.id, cities.name
FROM cities
WHERE state_id = @california_state_id
ORDER BY cities.id ASC;
