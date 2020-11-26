#!/bin/bash

set -e

psql -v ON_ERROR_STOP=1 --username "$POSTGRES_USER" --dbname "$POSTGRES_DB" <<-EOSQL
    CREATE USER fuser_management WITH PASSWORD 'passwordofuserserver';
    CREATE DATABASE user_management;
    GRANT ALL PRIVILEGES ON DATABASE user_management TO fuser_management;

    CREATE USER fapi WITH PASSWORD 'passwordofapiserver';
    CREATE DATABASE flotte_api;
    GRANT ALL PRIVILEGES ON DATABASE flotte_api TO fapi;
EOSQL
