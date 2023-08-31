-- List all databases on the MySQL server

/* Connect to the MySQL server using the provided credentials */
import subprocess


mysql_command = [
    "mysql",
    "-hlocalhost",
    "-uroot",
    "-p",
    "<",
    "0-list_databases.sql"
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
        databases = output.split('\n')[1:]
        print("Databases:")
        for db in databases:
            print(db)
    else:
        print("Error executing the command.")
except subprocess.CalledProcessError:
    print("Error executing the command.")
