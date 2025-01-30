import mysql.connector

mydb = mysql.connector.connect(
  
    host="localhost",
    user="root",
    password="Qazwsx1234?",
    database=""
    
)

mycursor = mydb.cursor()

#CREATE DATABASE IF NOT EXIST
mycursor.execute("CREATE DATABASE IF NOT EXISTS your_database_")
print('Database created successfully')

mycursor.execute("""
CREATE TABLE IF NOT EXISTS Authors (
  author_id INT AUTO_INCREMENT PRIMARY KEY,
  author_name VARCHAR(255) NOT NULL
  )
""")

print("Authors table created successfully")

mycursor.close()
mydb.close()
