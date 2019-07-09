use vivek;
create table owners
( CID int primary key,
 Name varchar(25),
Phone int,
Address varchar(20)
);
insert into owners(CID,Name,Phone,Address) values(1,'Sunil',84748,'nerul');
insert into owners(CID,Name,Phone,Address) values(2,'Nihar',847487,'Seawoods');
insert into owners(CID,Name,Phone,Address) values(3,'Amita',2845,'Juinagar');
insert into owners(CID,Name,Phone,Address) values(4,'Krunal',45466,'Panvel');
insert into owners(CID,Name,Phone,Address) values(5,'Vihang',45646,'Kharghar');

select * from owners;

create table cars
(CID int,
regno varchar(15) primary key,
model varchar(20) not null,
dop date,
price decimal(10,0),
foreign key(CID) references owners(CID)
);

insert into cars(CID,regno,model,dop,price) values(1,'MH 02 T 8788','Hyundai i10','2016/03/22',320000);
insert into cars(CID,regno,model,dop,price) values(2,'GJ 12 U 9494',' TAta nano','2017/10/09',180000);
insert into cars(CID,regno,model,dop,price) values(2,'MH 03 E 9842','FOrd Figo','2016/04/01',500000);
insert into cars(CID,regno,model,dop,price) values(1,'KR 04 J 5656','Mahindra Xylo','2017/04/09',1250000);
insert into cars(CID,regno,model,dop,price) values(2,'HR 02 T 5452','Volkswagen Polo','2013/03/06',800000);
insert into cars(CID,regno,model,dop,price) values(3,'GJ 02 T 4123','Toyota Innova','2018/03/02',1000000);
insert into cars(regno,model,dop,price) values('WB 02 T 5283','Honda City','2018/04/07',1200000);
insert into cars(regno,model,dop,price) values('DL 08 K 9154','Hyundai i20','2016/02/05',500000);
select * from cars;

insert into cars(CID,regno,model,dop,price) values(10,'DL 48 K 7844','Hyundai i20','05/Feb/2016',500000);/*parent key not found*/
drop table owners;
delete from owners where CID=1;
