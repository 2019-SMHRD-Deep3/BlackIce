drop table BI_member;
create table BI_member(
    yourname varchar2(20),
	email varchar2(20),
	pw varchar2(20),
	tel varchar2(20)
)
insert into BI_member values('admin', 'admin@naver.com', '1q2w3e4r', '010-0000-1111');
select * from BI_member