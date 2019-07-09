---Agregate functions-->sum,min,max,avg,count---

use vivek
select * from person

select sum(per_age) as [sum_of_ages] from person;
select sum(per_age) from person;

---group by
select * from person
alter table person add per_city varchar(50)
update person set per_city='panvel' where per_id=5

select per_des,per_city,sum(per_age) as vivek from person group by per_city,per_des 