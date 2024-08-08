-- show databases;
-- use my_shop;
-- show tables;

drop database if exists test;
create database if not exists test;
use test;
create table if not exists users
(
id int,
username varchar(30),
email varchar(40),
password_hash varchar(200),
age tinyint,
index (username, email)
);

insert into users values
(0, 'user 1', 'user1@mail.ru', '123', 34),
(1, 'user 2', 'user2@mail.ru', '321', 38);

insert into users(username, email) values
('user 3', 'user3@mail.ru'),
('user 4', 'user4@mail.ru'),
('user5', 'user5@mail.ru');

update  users set id = 0;
update users set username = 'user 5' where username = 'user5';

delete from users where username = 'user 4';
select * from users;