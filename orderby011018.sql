//order by clause, small small queries
---select col1,col2 from table_name order by col1,col2 asc/desc
use vivek;
select * from customers order by cus_name desc

select top 3 * from customers
--mysql-->  select * from customers limit 3;

