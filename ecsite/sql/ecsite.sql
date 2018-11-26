set names utf8;
set foreign_key_checks=0;
drop database if exists ecsite_ogawa_2;
create database if not exists ecsite_ogawa_2;
use ecsite_ogawa_2;

drop table if exists login_user_transaction;

create table login_user_transaction(
 id int not null primary key auto_increment,
 login_id varchar(16) unique,
 login_pass varchar(16),
 user_name varchar(50),
 admin_flg varchar(1),
 insert_date datetime,
 update_date datetime
);

drop table if exists item_info_transaction;

create table item_info_transaction(
	id int not null primary key auto_increment,
	item_name varchar(30),
	item_price int,
	item_stock int,
	insert_date datetime,
	updated_date datetime
);

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

drop table if exists cart_info;

create table cart_info(
	id int not null primary key auto_increment,
	user_id varchar(16) not null,
	item_id int not null,
	item_count int not null,
	price int not null,
	regist_date datetime not null,
	update_date datetime
);


INSERT INTO item_info_transaction(item_name,item_price,item_stock) VALUES("ノートBook",100,50),
("机",10000,30),("椅子",7000,50),("マフラー",10000,10),("眼鏡",30000,5);

INSERT INTO login_user_transaction(id,login_id,login_pass,user_name,admin_flg) VALUES(1,"admin","admin","admin","1");
