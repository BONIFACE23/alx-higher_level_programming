import mysql.connector

# Replace these values with your MySQL server credentials
host = "localhost"
user = "your_username"
password = "your_password"
database_name = "hbtn_0c_0"

try:
    # Connect to the MySQL server
    connection = mysql.connector.connect(
        host=host,
        user=user,
        password=password
    )

    # Create a cursor object to interact with the database
    cursor = connection.cursor()

    # Drop the database if it exists
    cursor.execute(f"DROP DATABASE IF EXISTS {database_name}")

    print(f"Database '{database_name}' deleted successfully.")

except mysql.connector.Error as err:
    print("Error:", err)

finally:
    # Close the cursor and connection
    if cursor:
        cursor.close()
    if connection:
        connection.close()
