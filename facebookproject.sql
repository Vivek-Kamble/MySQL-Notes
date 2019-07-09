use facebook1
select * from f_user;

select * from friend;

alter table friend 
add fk_userid2 int foreign key references f_user(userid);


 