-- List all databases on the MySQL server

/* Connect to the MySQL server using the provided credentials */
SELECT SCHEMA_NAME AS Database
FROM INFORMATION_SCHEMA.SCHEMATA;