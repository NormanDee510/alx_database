/* List all databases on the MySQL server */
SELECT 'Database' AS DatabaseName
UNION
SELECT SCHEMA_NAME AS DatabaseName
FROM INFORMATION_SCHEMA.SCHEMATA;