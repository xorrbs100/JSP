show databases;
use joen_chema;
desc 학사;
select *from 학사;
insert into 학사(이름,취득점수) values ('김기동',1000);

create table member(
	id varchar(20) not null,
	pass varchar(20) not null,
	name varchar(20) not null,
	phone varchar(20) not null,
	email varchar(50) null,
	reg_date datetime,
	primary key (id)
	);
drop table member;

desc member;
insert into member(id,pass,name,phone,email) values('vip001','1111','임택균','010-1111-2222','1234@naver.com');
insert into member values('vip002','2222','홍길동','010-1112-2222','hong@naver.com','2020-12-16 03:56:02'),
('vip003','3333','김길동','010-1113-2222','kim@naver.com','2020-12-16 03:59:12'),
('vip004','4444','박길동','010-1114-2222','park@naver.com','2020-12-17 12:23:55'),
('vip005','5555','이길동','010-1115-2222','Lee@naver.com','2020-12-18 15:32:33');
insert into member(id,pass,name,phone,email) values('vip006','6666','신길동','010-1111-3333','');
insert into member(id,pass,name,phone,email) values('vip007','7777','정길동','010-1111-9999','');
select *from member;


