--check constraint--

create table Student(
s_id int primary key not null,
s_name varchar(20),
s_age int
)

select * from Student
alter table Student add constraint ck_s_age check(s_age>18 and s_age<30)

insert into Student values (2,'vivek',19,111.0)

alter table Student add percentage float


alter table Student add constraint CK_stud_per check(perc>0.0 and perc<100.0)

alter table Student add perc float

alter table Student add constraint ck_s_gen check(s_gen='male' or s_gen='female' or s_gen='unknown')

insert into Student values (3,'vivek',19,111.0,'male')


delete from Student where s_id=2

insert into Student values (4,'vivek',19,'male',60.1)
