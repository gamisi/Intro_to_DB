import mysql.connector

mydb = mysql.connector.connect(

    host="localhost",
    user="root",
    password="Qazwsx1234?",
    database="alx_book_store"    
)

mycursor = mydb.cursor()

#CREATE DATABASE IF NOT EXIST
mycursor.execute("CREATE DATABASE IF NOT EXISTS alx_book_store")
print("Database 'alx_book_store' created successfully!")


mycursor.close()
mydb.close()

