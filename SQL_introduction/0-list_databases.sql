-- List all databases on the MySQL server

/* Connect to the MySQL server using the provided credentials */
SELECT 'Database' AS DatabaseName
UNION
SELECT SCHEMA_NAME AS DatabaseName
FROM INFORMATION_SCHEMA.SCHEMATA
WHERE SCHEMA_NAME IN ('information_schema', 'mysql', 'performance_schema', 'sys');
