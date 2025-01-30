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

CREATE TABLE IF NOT EXISTS Books(

  book_id INT AUTO_INCREMENT PRIMARY KEY,
  title VARCHAR(255) NOT NULL,
  author_id INT
  price FLOAT
  publication_date DATE

);

CREATE TABLE IF NOT EXISTS Customers(

  customer_id INT AUTO_INCREMENT PRIMARY KEY,
  customer_name VARCHAR(215) NOT NULL,
  email VARCHAR (215),
  price FLOAT,
  address TEXT

);
