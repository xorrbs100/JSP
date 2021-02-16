use memberDB;
show tables;
desc Member;
select * from Member;
use memberDB;
insert into Member (아이디,비밀번호,이름,전화번호,이메일) values ("admin", "1234", "임택균", "111-1111-1111", "email");

select * from Member;