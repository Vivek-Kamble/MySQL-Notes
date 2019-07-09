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
staff_name varchar(50),staff_gender varchar(10) ,staff_age int check(staff_age>=18),staff_mobile varchar(10),
staff_mail varchar(50));
select * from Staff_details
insert into Staff_details (
staff_name,staff_gender,staff_age,staff_mobile,
staff_mail) values('Ashish G.','Male',25,9823677148,'ashtg18@gmail.com')


create table marks_detail ( Marks_id int primary key,stud_marks int, stud_total int, stud_grade varchar(10),stud_Result varchar(50));
 
 select * from student_details 

 select * from marks_detail 
  
 insert into marks_detail (Marks_id,stud_marks,stud_total,stud_grade,stud_Result) values (1,500,650,'A','SUCCESSFUL');
 insert into marks_detail (Marks_id,stud_marks,stud_total,stud_grade,stud_Result) values (2,400,650,'A','SUCCESSFUL');
 insert into marks_detail (Marks_id,stud_marks,stud_total,stud_grade,stud_Result) values (3,450,650,'B','SUCCESSFUL');
 insert into marks_detail (Marks_id,stud_marks,stud_total,stud_grade,stud_Result) values (4,300,650,'C','SUCCESSFUL');
 insert into marks_detail (Marks_id,stud_marks,stud_total,stud_grade,stud_Result) values (5,550,650,'A','SUCCESSFUL');
 insert into marks_detail (Marks_id,stud_marks,stud_total,stud_grade,stud_Result) values (6,560,650,'A','SUCCESSFUL');
 
 create table student_details 
(
 fk_stud_id int foreign key references marks_detail(Marks_id),stud_name varchar(50),stud_age varchar (50),stud_gen varchar (10), stud_address varchar(50),
 stud_phone varchar(10), stud_mail varchar (50)); 

 select * from student_details 

 
insert into student_details (stud_name,stud_age,stud_gen,stud_address,stud_phone,stud_mail) values ('chetan',18,'male','ANDHERI',7208385802,'chetan18@gmail.com' );
insert into student_details (stud_name,stud_age,stud_gen,stud_address,stud_phone,stud_mail) values ('Vivek',18,'male','VIKROLI',9685469877,'vivek18@gmail.com' );
insert into student_details (stud_name,stud_age,stud_gen,stud_address,stud_phone,stud_mail) values ('Ashish',19,'male','Airoli',9376543211,'ashtg14@gmail.com' );
insert into student_details (stud_name,stud_age,stud_gen,stud_address,stud_phone,stud_mail) values ('prakash',17,'male','Parel',7208385802,'prakash17@gmail.com' );
insert into student_details (stud_name,stud_age,stud_gen,stud_address,stud_phone,stud_mail) values ('subodh',20,'male','kamothe',7387299051,'subo32@gmail.com' );
insert into student_details (stud_name,stud_age,stud_gen,stud_address,stud_phone,stud_mail) values ('jui',18,'female','juinagar',9665092565,'jui54@gmail.com' );

alter table student_details add fk_sta_id int foreign key references Salary_details(sal_id)