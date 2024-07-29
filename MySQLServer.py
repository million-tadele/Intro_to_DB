import mysql.connector
from mysql.connector import errorcode

def create_database():
    try:
        # Connect to the MySQL server
        conn = mysql.connector.connect(
            host='localhost',   # Replace with your host
            user='root',        # Replace with your username
            password='password' # Replace with your password
        )
        
        cursor = conn.cursor()

        # Create database if it doesn't exist
        cursor.execute("CREATE DATABASE IF NOT EXISTS alx_book_store")

        print("Database 'alx_book_store' created successfully!")

    except mysql.connector.Error as err:
        if err.errno == errorcode.ER_ACCESS_DENIED_ERROR:
            print("Error: Incorrect username or password")
        elif err.errno == errorcode.ER_BAD_DB_ERROR:
            print("Error: Database does not exist")
        else:
            print(err)
    else:
        cursor.close()
        conn.close()

if __name__ == "__main__":
    create_database()
