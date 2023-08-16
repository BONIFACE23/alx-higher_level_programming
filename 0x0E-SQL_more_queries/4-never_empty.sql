#!/bin/bash

# Check if the database name is provided as an argument
if [ $# -ne 1 ]; then
  echo "Usage: $0 <database_name>"
  exit 1
fi

# Database name provided as an argument
db_name="$1"

# SQL script content
sql_script="CREATE TABLE IF NOT EXISTS ${db_name}.id_not_null (
  id INT NOT NULL DEFAULT 1,
  name VARCHAR(256)
);"

# Run the SQL script using the mysql command
mysql -u root -p -e "$sql_script"
