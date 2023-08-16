-- Display the number of records with id = 89 in the table first_table

/* Connect to the specified database using the provided credentials */
USE `hbtn_0c_0`;

/* Count the number of records with id = 89 in first_table */
SELECT COUNT(*) FROM first_table WHERE id = 89;