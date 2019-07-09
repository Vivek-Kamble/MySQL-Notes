--unique constraint

use vivek

create table emp (
emp_id int primary key identity not null,
emp_name varchar(50),
emp_mail varchar(50) unique
)

select * from emp

set identity_insert emp on

--alter table employee add constraint uq_stud_mail unique(colom_name)

insert into emp values('vivek','vivek@gmail.com')
insert into emp values('rashmi','rash@gmail.com')

insert into emp(emp_id,emp_name,emp_mail) values(2,'vivek','vvek@gmail.com')





