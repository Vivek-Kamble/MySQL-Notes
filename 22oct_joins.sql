---join (inner,outer,left,right,cross)---
use vivek
select * from employee
select * from dep
select * from customers
select * from orders

select cus_name,cus_addr,or_name
from customers
inner join orders on orders.fk_cus_id=customers.pk_cus_id

