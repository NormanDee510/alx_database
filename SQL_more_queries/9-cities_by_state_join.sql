-- Use the specified database
USE hbtn_0d_usa;

-- List all cities with their state names
SELECT cities.id, cities.name, states.name AS state_name
FROM cities
JOIN states ON cities.state_id = states.id
ORDER BY cities.id ASC;
