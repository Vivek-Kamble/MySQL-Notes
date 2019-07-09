--tablename--> cus,ord,cat,men,women,elec
  
  create database dbdesign
 use dbdesign
 create table cus(
 pk_cus_id int primary key not null,
 cus_name varchar(50),
 cus_addr varchar(50),
 cus_gen varchar(5),
 fk_pk_or_id int foreign key references ord(pk_or_id)
 )


 create table ord(
 pk_or_id int primary key,
 or_name varchar(50),
 category varchar(15),
 )

alter table ord add fk_cus_id int foreign key references cus(pk_cus_id)

alter table cus add  cus_gen varchar(10)

alter table ord add  or_amount float

select * from cus
select * from ord
select * from men
select * from cat
select * from women
select * from elec


delete from cus

insert into cus(pk_cus_id,cus_name,cus_addr,cus_gen) values(1,'vivek','kamothe','Male')
insert into cus(pk_cus_id,cus_name,cus_addr,cus_gen) values(2,'chetan','andheri','Male')
insert into cus (pk_cus_id,cus_name,cus_addr,cus_gen) values(3,'tanvi','mulund','Female')
insert into cus(pk_cus_id,cus_name,cus_addr,cus_gen) values(4,'ashish','kamothe','Male')
insert into cus(pk_cus_id,cus_name,cus_addr,cus_gen) values(5,'prakash','kalamboli','Male')
insert into cus(pk_cus_id,cus_name,cus_addr,cus_gen) values(6,'rashmi','panvel','Female')
insert into cus(pk_cus_id,cus_name,cus_addr,cus_gen) values(7,'srushti','kamothe','Female')
insert into cus(pk_cus_id,cus_name,cus_addr,cus_gen) values(8,'subodh','alibaug','Male')
insert into cus(pk_cus_id,cus_name,cus_addr,cus_gen) values(9,'monika','airoli','Female')
insert into cus(pk_cus_id,cus_name,cus_addr,cus_gen) values(10,'chintu','ahmedabad','Male')
insert into cus(pk_cus_id,cus_name,cus_addr,cus_gen) values(11,'ankita','thane','Female')
insert into cus(pk_cus_id,cus_name,cus_addr,cus_gen) values(12,'deeksha','panvel','Female')
insert into cus(pk_cus_id,cus_name,cus_addr,cus_gen) values(13,'shivani','kamothe','Female')
insert into cus(pk_cus_id,cus_name,cus_addr,cus_gen) values(14,'sayali','kamothe','Female')
insert into cus(pk_cus_id,cus_name,cus_addr,cus_gen) values(15,'nobita','kamothe','Male')
insert into cus(pk_cus_id,cus_name,cus_addr,cus_gen) values(16,'sinchan','kamothe','Male')
insert into cus(pk_cus_id,cus_name,cus_addr,cus_gen) values(17,'novita','kamothe','Female')
insert into cus(pk_cus_id,cus_name,cus_addr,cus_gen) values(18,'vvk','kamothe','Male')
insert into cus(pk_cus_id,cus_name,cus_addr,cus_gen) values(19,'vvek','kamothe','Male')
insert into cus(pk_cus_id,cus_name,cus_addr,cus_gen) values(20,'apeksha','kamothe','Female')

insert into ord(pk_or_id,or_name,category,or_amount) values(1,'smartphone','electronics',16999.00)
insert into ord(pk_or_id,or_name,category,or_amount) values(2,'jeans','men',1999.00)
insert into ord(pk_or_id,or_name,category,or_amount) values(3,'jeans','women',2999.00)

create table cat(
 pk_cat_id int primary key,
 cat_name varchar(50),
 category varchar(15),
 fk_men_id int foreign key references men(pk_men_id),
 fk_women_id int foreign key references women(pk_women_id),
 fk_elec_id int foreign key references elec(pk_elec_id)
 )

 create table men(
 pk_men_id int primary key,
 clothing varchar(50),
 footwear varchar(15),
 )

 create table women(
 pk_women_id int primary key,
 clothing varchar(50),
 footwear varchar(15),
 acces varchar(15),
 )

 create table elec(
 pk_elec_id int primary key,
 elec_acces varchar(15),
 )


















 
