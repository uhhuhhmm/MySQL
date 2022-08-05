-- 데이터보기 
show databases;

-- 데이터 만들기 
create database company;

-- 데이터 조회 
use company;

-- 데이터 선택 
select database();

-- 테이블 만들기
-- int, double, varchar, data
create table products(
	id int auto_increment primary key,
    name varchar(50) not null,
    modelnumber varchar(15) not null,
    series varchar(30) not null
) default character set utf8 collate utf8_general_ci;

-- Insert
insert into products(name, modelnumber, series)
values('Eric Clapton Stratocaster', '01012341234', 'Artist');
insert into products(name, modelnumber, series)
values('Jeff Back Stratocaster', '0119600805', 'Artist');
insert into products(name, modelnumber, series)
values('American Deluxe Stratocaster', '011900', 'American Deluxe');
insert into products(name, modelnumber, series)
values('American Deluxe Tele', '011950', 'American Deluxe');
INSERT INTO products (name, modelnumber, series) VALUES
   ('Jim Adkins JA-90 Telecaster Thinline', '0262350538', 'Artist'),
   ('Vintage Hot Rod 57 Strat', '0100132809', 'Vintage Hot Rod'),
   ('American Vintage 57 Stratocaster Reissue', '0100102806', 'American Vintage'),
   ('American Standard Stratocaster', '0110400700', 'American Standard'),
   ('Road Worn Player Stratocaster HSS', '0131610309', 'Road Worn'),
   ('Road Worn Player Telecaster', '0131082306', 'Road Worn');

-- 조건절
select * from products where series='Artist';

select * from products where modelnumber like '010%';

-- limit 값을 제한해서 2개를 뛰어넘고 3번부터 2개 데이터 데이터 조회
select * from products limit 2, 2;

select * from products order by id asc limit 2;

-- table drop
drop table products;
drop database company;

select * from products;
-- =========================================================
