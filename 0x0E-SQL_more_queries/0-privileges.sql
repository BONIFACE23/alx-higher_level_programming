-- Connect to the MySQL server
mysql -u root -p

-- Run the following SQL commands in the MySQL shell

-- List privileges for user_0d_1
SHOW GRANTS FOR 'user_0d_1'@'localhost';

-- List privileges for user_0d_2
SHOW GRANTS FOR 'user_0d_2'@'localhost';

-- Exit the MySQL shell
exit

