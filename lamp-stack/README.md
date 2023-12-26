execute
```
./run.bash
```

Then execute below cmd to browse web
```
curl http://127.0.0.1:8000/
```

Open http://localhost:8080/ on the browser to access the PHPMyAdmin.

Then run SQL command in PHPMyAdmin to create database table and fill in some records.
```
drop table if exists `users`;
create table `users` (
    id int not null auto_increment,
    username text not null,
    password text not null,
    primary key (id)
);
insert into `users` (username, password) values
    ("admin","password"),
    ("Alice","this is my password"),
    ("Job","12345678");
```

Then run command to query
```
curl http://localhost:8000/query.php
```


refer to https://www.section.io/engineering-education/dockerized-php-apache-and-mysql-container-development-environment/
