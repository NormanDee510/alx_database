-- List all databases on the MySQL server

/* Connect to the MySQL server using the provided credentials */
SELECT SCHEMA_NAME AS DatabaseName
FROM INFORMATION_SCHEMA.SCHEMATA
WHERE SCHEMA_NAME IN ('information_schema', 'mysql', 'performance_schema', 'sys')
UNION
SELECT '' AS DatabaseName;