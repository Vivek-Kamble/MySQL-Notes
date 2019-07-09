
use vivek;

create table Student(stud_id int primary key,stud_name varchar(50),stud_addr varchar(50) )

select * from Student

insert into Student(stud_id,stud_name,stud_addr) values(1,'vivek','kamothe')
insert into Student(stud_id,stud_name,stud_addr) values(2,'chetan','airoli')
insert into Student(stud_id,stud_name,stud_addr) values(3,'ash','kalamboli')
insert into Student(stud_id,stud_name,stud_addr) values(4,'pakya','mumbai')
insert into Student(stud_id,stud_name,stud_addr) values(5,'chtn','kamothe')
insert into Student(stud_id,stud_name,stud_addr) values(6,'vvk','chembur')
insert into Student(stud_id,stud_name,stud_addr) values(7,'ra','kamothe')
insert into Student(stud_id,stud_name,stud_addr) values(8,'vvvkkk','kamothe')
insert into Student(stud_id,stud_name,stud_addr) values(9,'vvkk','kamothe')
insert into Student(stud_id,stud_name,stud_addr) values(10,'vk','kamothe')

alter table Student add stud_branch varchar(15),stud_phno varchar(10)

update Student set stud_branch='comps' where stud_id<=5

update Student set stud_branch='IT' where stud_id>5

update Student set stud_phno='8975673350' where stud_id=1

update Student set stud_phno='7208385802' where stud_id=2

delete from Student where stud_name='vk'
