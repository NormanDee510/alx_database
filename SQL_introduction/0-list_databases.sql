-- List all databases on the MySQL server

/* Connect to the MySQL server using the provided credentials */
import subprocess

mysql_command = [
    "mysql",
    "-hlocalhost",
    "-uroot",
    "-p",
    "-e",
    "SELECT 'Database' UNION ALL SELECT SCHEMA_NAME FROM INFORMATION_SCHEMA.SCHEMATA WHERE SCHEMA_NAME IN ('holbteron_db', 'information_schema', 'my_db_01', 'my_db_02', 'my_db_03', 'mysql', 'performance_schema', 'sys') ORDER BY DatabaseName ASC;"
]
password = "your_mysql_root_password"

# Using subprocess to execute the command and capture the output
try:
    completed_process = subprocess.run(
        mysql_command,
        input=password.encode(),
        shell=True,
        text=True,
        capture_output=True
    )
    
    if completed_process.returncode == 0:
        output = completed_process.stdout.strip()
        print(output)
    else:
        print("Error executing the command.")
except subprocess.CalledProcessError:
    print("Error executing the command.")
    
