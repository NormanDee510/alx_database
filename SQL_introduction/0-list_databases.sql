-- List all databases on the MySQL server

/* Connect to the MySQL server using the provided credentials */
SELECT 'Database' AS ColumnName
UNION ALL
SELECT SCHEMA_NAME
FROM (
  SELECT SCHEMA_NAME
  FROM INFORMATION_SCHEMA.SCHEMATA
  WHERE SCHEMA_NAME IN ('holbteron_db', 'information_schema', 'my_db_01', 'my_db_02', 'my_db_03', 'mysql', 'performance_schema', 'sys')
) subquery
ORDER BY SCHEMA_NAME ASC;



