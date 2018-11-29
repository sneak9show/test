set names utf8;
set foreign_key_checks=0;

drop database if exists ecsite_ogawa_01;
create database if not exists ecsite_ogawa_01;

use ecsite_ogawa_01;

create table user_info_transaction(
id int primary key not null auto_increment,
user_id varchar(16) unique not null,
password varchar(16) not null,
user_name varchar(25) not null,
status tinyint not null default 0,
insert_date datetime,
update_date datetime
);

insert into user_info_transaction values
(1,"admin","admin","管理者01",1,now(),now());

drop table if exists item_info_transaction;

create table item_info_transaction(
	id int not null primary key auto_increment,
	item_name varchar(30),
	item_price int,
	item_stock int,
	insert_date datetime,
	updated_date datetime
);

insert into item_info_transaction values
(1,"jim-beam",)

drop table if exists user_buy_item_transaction;

create table user_buy_item_transaction(
	id int not null primary key auto_increment,
	item_transaction_id int,
	total_price int,
	total_count int,
	user_master_id varchar(16),
	pay varchar(30),
	insert_date datetime,
	delete_date datetime
);