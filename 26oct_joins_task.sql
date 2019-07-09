---task table-salesman,customer,orde
use vivek
insert into sale(sale_name,sale_city,sale_commission) values('Vivek','Mumbai',2533)

create table sale(
sale_id int identity(3000,1) primary key,
sale_name varchar(50),
sale_city varchar(50),
sale_commission int)

select * from sale

create table customer(
cus_id int identity(2000,1) primary key,
cus_name varchar(50),
cus_city varchar(50),
cus_grade varchar(2),
fk_sale_id int foreign key references sale(sale_id) 
)
select * from customer

create table orde(
od_no int primary key,
od_amount int,
od_date date,
fk_cus int foreign key references customer(cus_id),
fk_sale int foreign key references sale(sale_id) 
)
----que 1
select sale.sale_name,sale.sale_city,customer.cus_name,customer.cus_city,orde.od_no,orde.od_date,orde.od_amount

from sale
right join customer on sale.sale_id=customer.fk_sale_id
right join orde on orde.fk_sale=sale.sale_id
where sale.sale_city <> customer.cus_city
 
----ques 2
alter table sale add earned_comm int

select orde.od_no,customer.cus_name,sale.sale_commission,sale.earned_comm
from orde
inner join customer on orde.fk_cus=customer.fk_sale_id
inner join sale on sale.sale_id=orde.fk_sale
where customer.cus_grade ='A'


