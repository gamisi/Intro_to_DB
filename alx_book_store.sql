import mysql.connector

mydb = mysql.connector.connect(
  
    host="localhost",
    user="root",
    password="Qazwsx1234?",
    database=""
    
)

mycursor = mydb.cursor()


CREATE DATABASE IF NOT EXISTS alx_book_store;


CREATE TABLE IF NOT EXISTS Authors (
  author_id INT AUTO_INCREMENT PRIMARY KEY,
  author_name VARCHAR(255) NOT NULL
  );



mycursor.close()
mydb.close()
