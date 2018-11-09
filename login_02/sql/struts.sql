set names utf8;
set foreign_key_checks=0;
drop database if exists logindb_02;
create database logindb_02;
use logindb_02;

create table user(
id int,
user_name varchar(255),
password varchar(255)
);

insert into user values
(1,"aaa","123"),
(2,"bbb","123"),
(3,"ccc","123"),
(4,"ddd","123");