---join
use vivek

select * from customers
select * from orders

---left
select cus_name,cus_addr,or_name
from customers
left join orders on orders.fk_cus_id=customers.pk_cus_id

---right
select cus_name,cus_addr,or_name
from customers
right join orders on orders.fk_cus_id=customers.pk_cus_id

---cross
select cus_name,cus_addr,or_name
from customers
cross join orders



