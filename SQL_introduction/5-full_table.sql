-- Print the full description of the table first_table

/* Connect to the specified database using the provided credentials */
USE `hbtn_0c_0`;

/* Query to get the full description of the first_table */
SELECT TABLE_NAME, CREATE_TABLE
FROM information_schema.TABLES
WHERE TABLE_SCHEMA = 'hbtn_0c_0' AND TABLE_NAME = 'first_table';