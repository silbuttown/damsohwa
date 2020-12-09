
select *from TTadmin;
select *from TTinfo;

drop table TTadmin cascade constraint;
drop table TTinfo cascade constraint;
drop sequence tt_seq;
create sequence tt_seq;
create table TTadmin(
   EMP_NO number,
   DEPT_NAME varchar2(50) not null,
   EMP_NAME varchar2(50) not null,
   EMP_POSITION varchar2(50) not null,
   EMP_ID varchar2(50) not null,
   EMP_PASS varchar2(50) not null, 
   constraint ttadmin_pk primary key(EMP_NO,EMP_NAME)
   );   

   
   create table TTinfo(
   EMP_NO number,
   EMP_NAME varchar2(50),
   DEPT_NAME varchar2(50) not null,
   EMP_POSITION varchar2(50) default '사원',
   DAY_COFFEE number default 0,
   EMP_EXIST varchar2(50) default '부재중',
   MESSAGE varchar2(100) default null,
   DAY_STR number default 0,
   constraint ttinfo_pk primary key(EMP_NO,EMP_NAME),
   constraint ttinfo_fk foreign key(EMP_NO,EMP_NAME) references TTadmin(EMP_NO,EMP_NAME)   
);