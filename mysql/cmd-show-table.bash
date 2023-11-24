#!/bin/bash

#docker exec -it mysql bash -c 'mysql -u root -p1234 -e "USE information_schema;SHOW TABLES;"'
#docker exec -it mysql bash -c 'mysql -u root -p1234 -e "USE mysql;SHOW TABLES;"'
#docker exec -it mysql bash -c 'mysql -u root -p1234 -e "USE performance_schema;SHOW TABLES;"'
#docker exec -it mysql bash -c 'mysql -u root -p1234 -e "USE sys;SHOW TABLES;"'

MYSQL_ROOT_PW=1234

function show_database_table ()
{
    local database=$1
    local cmd="USE ${database};SHOW TABLES;"
    echo "${cmd}"
    docker exec -it mysql bash -c "mysql -u root -p${MYSQL_ROOT_PW} -e \"${cmd}\""
}

show_database_table information_schema
show_database_table mysql
show_database_table performance_schema
show_database_table sys
