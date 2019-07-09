create database assignment1
use assignment1;

create table stu_detail
(stu_id int primary key auto_increment,
Name varchar(50),
Age int check(Age>=18),
Gender varchar(10),
Address varchar(50)
)

create table course_details 
(
 c_id int primary key,c_name varchar(50),c_fees int,c_duration_in_months int,Number_of_lectures int); 
insert into course_details values(1,'Mathematics',12000,3,18);
insert into course_details values(2,'Science',15000,4,24);
insert into course_details values(3,'Software',20000,5,30);
insert into course_details values(4,'SQL',13000,4,24);
insert into course_details values(5,'C Programming',12000,3,18);
insert into course_details values(6,'Web Development',18000,4,30);

select * from course_details

create table Salary_details(
sal_id int primary key,Basic_pay int,Special_allowance int,DA int)
insert into Salary_details values(1,45000,12000,5000);
insert into Salary_details values(2,35000,10000,4000);
insert into Salary_details values(3,60000,15000,8000);
insert into Salary_details values(4,55000,13000,6000);
insert into Salary_details values(5,50000,15000,8000);
insert into Salary_details values(6,25000,19000,8000);
select * from Salary_details;

create table Staff_details(fk_staff_id int foreign key references Salary_details(sal_id),
staff_name varchar(50),staff_gender varchar(5) ,staff_age int check(Age>=18),staff_mobile int,
staff_mail varchar(50));



