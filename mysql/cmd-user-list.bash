#!/bin/bash
MYSQL_ROOT_PW=1234
database=mysql
cmd="USE ${database};select user from user;"
echo "${cmd}"
docker exec -it mysql bash -c "mysql -u root -p${MYSQL_ROOT_PW} -e \"${cmd}\""
