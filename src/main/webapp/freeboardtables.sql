create table member(
id varchar(15) primary key,
nick varchar(20) unique not null,
pwd varchar(10) not null );

create table board(
b_no int(11) auto_increment primary key,
b_id varchar(15) not null,
b_title varchar(50) not null,
b_content varchar(1000) not null,
b_date date not null,
b_view int not null default 0,
fileName varchar(100) );

create table comment(
c_no int auto_increment primary key,
c_bno int(11) not null,
c_id varchar(15) not null,
c_comment varchar(100) not null,
c_date date not null );