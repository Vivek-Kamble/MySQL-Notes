// 12 oct default constraint

use vivek;

create table person(
per_id int primary key auto_increment,
per_name varchar(50),
per_sal int,
per_des varchar(50) default 'unemployed',
per_role varchar(50),
per_age int
)

select * from person

insert into person values(1,'vivek','student',50000,20)
insert into person values(2,'chetan','student',50000,20)
insert into person values(3,'ash','student',60000,23)
insert into person values(4,'pooja','student',80000,23)
insert into person values(5,'vvk','student',70000,21)

--select
select * from person;
select per_name from person;
select per_name from person where per_age=23;
select * from person where per_age in(23,21)
select * from person where per_age between 20 and 23	

