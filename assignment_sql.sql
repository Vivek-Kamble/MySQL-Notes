use chetan 

create table student_details 
(
 stud_id int primary key,stud_name varchar(50),stud_age varchar (50),stud_gen varchar (10), stud_address varchar(50),
 stud_phone varchar(10), stud_mail varchar (50)); 

 select * from student_details 

 
insert into student_details (stud_id,stud_name,stud_age,stud_gen,stud_address,stud_phone,stud_mail) values (1,'chetan',18,'male','ANDHERI',7208385802,'chetan18@gmail.com' );
insert into student_details (stud_id,stud_name,stud_age,stud_gen,stud_address,stud_phone,stud_mail) values (2,'Vivek',18,'male','VIKROLI',9685469877,'vivek18@gmail.com' );
insert into student_details (stud_id,stud_name,stud_age,stud_gen,stud_address,stud_phone,stud_mail) values (3,'Ashish',19,'male','Airoli',9376543211,'ashtg14@gmail.com' );
insert into student_details (stud_id,stud_name,stud_age,stud_gen,stud_address,stud_phone,stud_mail) values (4,'prakash',17,'male','Parel',7208385802,'prakash17@gmail.com' );
insert into student_details (stud_id,stud_name,stud_age,stud_gen,stud_address,stud_phone,stud_mail) values (5,'subodh',20,'male','kamothe',7387299051,'subo32@gmail.com' );
insert into student_details (stud_id,stud_name,stud_age,stud_gen,stud_address,stud_phone,stud_mail) values (6,'jui',18,'female','juinagar',9665092565,'jui54@gmail.com' );
insert into student_details (stud_id,stud_name,stud_age,stud_gen,stud_address,stud_phone,stud_mail) values (7,'rutuja',18,'female','Roha',7298756233,'rutu@gmail.com' );
insert into student_details (stud_id,stud_name,stud_age,stud_gen,stud_address,stud_phone,stud_mail) values (8,'Amol',20,'male','uran',8889687455,'amol12@gmail.com' );
insert into student_details (stud_id,stud_name,stud_age,stud_gen,stud_address,stud_phone,stud_mail) values (9,'pratik',18,'male','pawai',7208385802,'ppratk3@gmail.com' );
insert into student_details (stud_id,stud_name,stud_age,stud_gen,stud_address,stud_phone,stud_mail) values (10,'jagrit',19,'male','thane',7208385802,'jagrit21@gmail.com' ); 

 create table marks_detail 
  

 ( Marks_id int primary key,stud_marks int, stud_total int, stud_grade varchar(10),stud_Result varchar(50),
    fk_stud_id int foreign key references student_details( stud_id));
 
 select * from student_details 

 select * from marks_detail 
  

 insert into marks_detail (Marks_id,stud_marks,stud_total,stud_grade,stud_Result) values (1,500,650,'A','SUCCESSFUL');
 insert into marks_detail (Marks_id,stud_marks,stud_total,stud_grade,stud_Result) values (2,400,650,'A','SUCCESSFUL');
 insert into marks_detail (Marks_id,stud_marks,stud_total,stud_grade,stud_Result) values (3,450,650,'B','SUCCESSFUL');
 insert into marks_detail (Marks_id,stud_marks,stud_total,stud_grade,stud_Result) values (4,300,650,'C','SUCCESSFUL');
 insert into marks_detail (Marks_id,stud_marks,stud_total,stud_grade,stud_Result) values (5,550,650,'A','SUCCESSFUL');
 insert into marks_detail (Marks_id,stud_marks,stud_total,stud_grade,stud_Result) values (6,560,650,'A','SUCCESSFUL');
 insert into marks_detail (Marks_id,stud_marks,stud_total,stud_grade,stud_Result) values (7,200,650,'F','UNSUCCESSFUL');
 insert into marks_detail (Marks_id,stud_marks,stud_total,stud_grade,stud_Result) values (8,390,650,'D','SUCCESSFUL');
 insert into marks_detail (Marks_id,stud_marks,stud_total,stud_grade,stud_Result) values (9,560,650,'A','SUCCESSFUL');
 insert into marks_detail (Marks_id,stud_marks,stud_total,stud_grade,stud_Result) values (10,200,650,'A','SUCCESSFUL'); 

 create table employee_details 
 ( emp_id int primary key, emp_name varchar(50),emp_gender varchar(50),emp_age int,emp_phono int,emp_mail varchar(50),emp_salary int);

 insert into employee_details (emp_id,emp_name,emp_gender,emp_phono,emp_mail,emp_salary) values (1,
 

