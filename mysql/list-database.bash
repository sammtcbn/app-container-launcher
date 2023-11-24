#!/bin/bash

#docker exec -it mysql bash -c 'mysql -u root -p1234 -e "SHOW DATABASES;"'

MYSQL_ROOT_PW=1234
CMD='SHOW DATABASES;'
docker exec -it mysql bash -c "mysql -u root -p${MYSQL_ROOT_PW} -e \"${CMD}\""
