-- Connect to the MySQL server
mysql -u root -p

-- Run the following SQL commands in the MySQL shell

-- Create the user user_0d_1 with all privileges and set the password
CREATE USER IF NOT EXISTS 'user_0d_1'@'localhost' IDENTIFIED BY 'user_0d_1_pwd';
GRANT ALL PRIVILEGES ON *.* TO 'user_0d_1'@'localhost' WITH GRANT OPTION;

-- Exit the MySQL shell
exit
