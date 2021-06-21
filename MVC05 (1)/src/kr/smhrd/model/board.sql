create table tbl_user(
   idx int not null auto_increment,   -- 자동증가컬럼(1,2,3.....)
   title varchar(100) not null,
   contents varchar(4000) not null,
   writer varchar(50) not null,
   count int default 0,
   indate datetime not null default now(),
   primary key(idx)
);

create table tbl_user(
	user_id varchar(30) not null,
	user_name varchar(30) not null,
	password varchar(30) not null,
	primary key(user_id)

);

select * from table1;

select * from userTbl;

insert into tbl_user values('admin','관리자','admin');
insert into tbl_user values('bitcocom','홍길동','12345');
insert into tbl_user values('guest','사용자','12345');

