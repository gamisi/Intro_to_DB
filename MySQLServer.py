import mysql.connector
from mysql.connector import Error

try:

    mydb = mysql.connector.connect(

        host="localhost",
        user="root",
        password="Qazwsx1234?",
        database="alx_book_store"    
    )

    # Check if the connection was successful
    if mydb.is_connected():
        print("Successfully connected to the database")

except mysql.connector.Error as e:
    print(f"Error: {e}")


mycursor = mydb.cursor()

#CREATE DATABASE IF NOT EXIST
mycursor.execute("CREATE DATABASE IF NOT EXISTS alx_book_store")
print("Database 'alx_book_store' created successfully!")


mycursor.close()
mydb.close()

