// foreign key
use vivek;
 create table customers(pk_cus_id int primary key not null,
 cus_name varchar(50),
 cus_addr varchar(50)
 )

 create table orders(
 pk_or_id int primary key,
 or_name varchar(50),
 fk_cus_id int foreign key references customers(pk_cus_id)
 )
	


 insert into customers(pk_cus_id,cus_name,cus_addr) values(1,'vivek','kamothe')
 insert into customers(pk_cus_id,cus_name,cus_addr) values(2,'chetan','kharghar')
 insert into customers(pk_cus_id,cus_name,cus_addr) values(3,'rash','panvel')
 insert into customers(pk_cus_id,cus_name,cus_addr) values(4,'ash','kalamboli')
 insert into customers(pk_cus_id,cus_name,cus_addr) values(5,'vvk','kamothe')

 truncate table orders

 insert into orders values (1,'table',5)
  insert into orders values (2,'chair',4)
   insert into orders values (3,'laptop',4)

 alter table customers add fk_pk_or_id int foreign key references orders(pk_or_id)

 
 select * from customers;
 select * from orders;

 update customers set fk_pk_or_id=2 where pk_cus_id=4