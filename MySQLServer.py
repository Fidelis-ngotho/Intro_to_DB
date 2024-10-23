import mysql.connector
from mysql.connector import Error

def create_database():
    connection = None  # Initialize connection variable
    try:
        # Establishing connection to MySQL server
        print("Attempting to connect to the MySQL server...")
        connection = mysql.connector.connect(
            host='localhost',  # Adjust based on your configuration
            user='root',       # Your MySQL username
            password='fidel2022'  # Your MySQL password
        )

        if connection.is_connected():
            print("Successfully connected to MySQL server!")
            # Creating a cursor object
            cursor = connection.cursor()

            # Creating the database (if not exists)
            cursor.execute("CREATE DATABASE IF NOT EXISTS alx_book_store")

            # Print success message
            print("Database 'alx_book_store' created successfully!")

    except mysql.connector. Error as err:
        # Print error message if there's an issue
        print(f"Error: '{err}'")

    finally:
        # Close the cursor and connection properly
        if connection is not None and connection.is_connected():
            cursor.close()
            connection.close()
            print("MySQL connection is closed.")

if __name__ == "__main__":
    create_database()
