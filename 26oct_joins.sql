---advance joins---
use vivek

select cat_name,gender
from category
inner join gender on category.fk_gen=gender.pk_gen_id
where gender.gender = 'Male'

select * from category
select * from formal
select * from indian
select * from orderlist
select * from western
select * from gender

select cat_name,gender,ind_name,ind_price,wes_name,wes_price,fr_name,fr_price
from category
right join gender on category.fk_gen=gender.pk_gen_id
right join indian on category.fk_ind=indian.pk_ind_id
right join western on  category.fk_wes=western.pk_wes_id
left join formal on category.fk_formal=formal.pk_fr_id
where formal.fr_price <999