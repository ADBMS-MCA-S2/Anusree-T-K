create database p;
use p;
create table studdetails1(id int primary key not null,name varchar(20),Totalmark int,category varchar(20));
call proc_grade1(4,"Anju",1500);
call proc_grade1(5,"Anju",990);
call proc_grade1(6,"Appu",825);
call proc_grade1(7,"Anjali",900);
select * from studdetails1;


CREATE DEFINER=`root`@`localhost` PROCEDURE `proc_grade1`(id int,name varchar(20),Totalmark int)
BEGIN
if(Totalmark>=990 and Totalmark<=1500)
then
insert into studdetails1 values(id,name,Totalmark,"distinction");
elseif(Totalmark>=900 and Totalmark<=989)
then
insert into studdetails1 values(id,name,Totalmark,"first class");
 elseif(Totalmark>825 and Totalmark<=800)
then
insert into studdetails1 values(id,name,Totalmark,"second class");
else
insert into studdetails1 values(id,name,Totalmark,"failed");
END IF;
END
