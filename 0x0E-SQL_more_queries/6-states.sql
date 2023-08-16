#!/bin/bash

# Check if the database name is provided as an argument
if [ $# -ne 1 ]; then
  echo "Usage: $0 <database_name>"
  exit 1
fi

# Database name provided as an argument
db_name="$1"

# SQL script content
sql_script="CREATE DATABASE IF NOT EXISTS ${db_name};
USE ${db_name};
CREATE TABLE IF NOT EXISTS states (
  id INT NOT NULL AUTO_INCREMENT,
  name VARCHAR(256) NOT NULL,
  PRIMARY KEY (id),
  UNIQUE (id)
);"

# Run the SQL script using the mysql command
mysql -u root -p -e "$sql_script"
