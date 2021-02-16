show databases;
use joen_chema;

create table members(
	id char(10) not null,
	pass varchar(10) not null,
	name varchar(15) not null,
	phone varchar(20),
	address varchar(50)
);
show tables;
desc members;

insert into members values('2018001','1234','김진호','010111-1111','영등포'),('2018002','2345','신승근','010-222-2222','구로구'),
('2018003','3456','신용희','010-333-3333','강서구'),('2018004','4567','박용순','010-444-4444','부천시'),('2018005','5678','박상길','010-555-5555','강동구'),
('2018006','6789','서인욱','010-666-6666','마포구'),('2018007','7899','왕태수','010-777-7777','시흥시'),('2018008','8899','임택균','010-888-8888','광주시');

select * from members;
select *from members where id='2018008';

update members set address= '서울시' where id='2018008';
delete from members where pass='null';

-----
show tables;
create table bookinfo(
	code varchar(10),
	title varchar(50) not null,
	writer varchar(20) not null,
	price varchar(8) not null,
	primary key (code)
);

insert into bookinfo values('10001','뇌를 자극하는 Java프로그래밍','김윤명',27000);
insert into bookinfo values('10002','좋은 사진을 만드는 노출','정승익',20000);
insert into bookinfo values('10003','예제로 배우는 엑셀2007','김대식',19000);
insert into bookinfo values('10004','지금 당장 경제공부 시작하라','최진기',18500);
insert into bookinfo values('10005','introduction to Algorithm','토마스 코멘외 3명',20000);
insert into bookinfo values('10010','경제공부 시작하라','최진기',20500);
select *from bookinfo;

-------
create table userinfo(
	name varchar(10) not null,
	id varchar(8) not null,
	password varchar(8) not null,
	primary key(id)
);
show tables;
drop table userinfo
