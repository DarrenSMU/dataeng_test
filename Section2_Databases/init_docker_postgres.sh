#!/bin/bash

# this script is run when the docker container is built
# it imports the base database structure and create the database for the tests

DATABASE_NAME="db_name"
DB_DUMP_LOCATION="create.sql"

echo "*** CREATING DATABASE ***"

# create default database
psql -U postgres --single-line <<EOSQL
  CREATE DATABASE "$DATABASE_NAME";
  GRANT ALL PRIVILEGES ON DATABASE "$DATABASE_NAME" TO postgres;
EOSQL

# import sql_dump
psql -U postgres --single-line "$DATABASE_NAME" < "$DB_DUMP_LOCATION";


echo "*** DATABASE CREATED! ***"
