create database management;

use management;

create table customer(
	id int primary key auto_increment,
    image varchar(1000),
    name varchar(50),
    birthday varchar(50),
    gender varchar(50),
    job varchar(50)
)default character set utf8 collate utf8_general_ci;

drop table customer;

insert into customer
values(1, 'http://placeimg.com/64/64/1', '둘리', '830422', '남자', '공룡');

insert into customer
values(2, 'http://placeimg.com/64/64/2', '희동이', '810422', '남자', '아기');

insert into customer
values(3, 'http://placeimg.com/64/64/3', '도우너', '830422', '남자', '외계인');

insert into customer
values(4, 'http://placeimg.com/64/64/4', '마이콜', '830422', '남자', '흑인');

alter table customer add createdDate datetime;
alter table customer add isDeleted int;

-- drop
alter table customer drop createdDate;
alter table customer drop isDeleted;

select * from customer;

commit;