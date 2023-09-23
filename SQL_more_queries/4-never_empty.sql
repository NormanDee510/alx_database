-- Check if the table id_not_null exists in the specified database
USE your_database_name; -- Replace your_database_name with the actual database name

-- Create the id_not_null table if it doesn't exist
CREATE TABLE IF NOT EXISTS id_not_null (
    id INT DEFAULT 1,
    name VARCHAR(256)
);
