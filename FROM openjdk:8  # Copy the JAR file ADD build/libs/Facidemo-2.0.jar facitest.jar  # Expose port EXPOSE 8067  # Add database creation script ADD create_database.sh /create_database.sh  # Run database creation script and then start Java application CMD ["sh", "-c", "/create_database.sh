#!/bin/bash

# Wait for MySQL to be ready
while ! mysqladmin ping -h"Facimatesample" -u"logicfocus" -p"lf@2022" --silent; do
    sleep 1
done

# Create the database
mysql -h"Facimatesample" -u"logicfocus" -p"lf@2022" -e "CREATE DATABASE IF NOT EXISTS Facimatesample;"
