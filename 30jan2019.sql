use vivek;

create table students(
sid int primary key,
name varchar(50),
phone int,
address varchar(20)
);
select * from students;

create table grade(
grad varchar(2) primary key,
salary int
);

create table courses(
courseno int primary key,
cname varchar(10),
lectures int,
faculty varchar(20),
grad varchar(2),
foreign key(grad) references grade(grad));

create table admission(
sid int,
courseno int,
fees decimal(8,2),
foreign key (sid) references students(sid),
foreign key (courseno) references courses(courseno));

