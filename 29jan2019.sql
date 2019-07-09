/* write the names of customers, car model,price for each customer that has bought a car */
select owners.Name,cars.model,cars.price
from owners inner join cars
on owners.CID=cars.CID;

/*or*/

select owners.Name,cars.model,cars.price
from owners,cars
where owners.CID=cars.CID;

/*all owners including those who do not have cars*/
select owners.Name,cars.model,cars.price
from owners left join cars
on owners.CID=cars.CID;

/*left join=left outer join
inner join=join  */

/* all cars inlcuding those who do not have owners*/
select owners.Name,cars.model,cars.price
from owners right join cars
on owners.CID=cars.CID;

/* right join =right outer join  */

select owners.Name,cars.model
from owners cross join cars;

/*full join not in mysql*//* in sql sever and oracle*/
select owners.Name,cars.model,cars.price
from owners full join cars
on owners.CID=cars.CID;


select owners.Name,cars.model,cars.price
from owners natural join cars;
/*when both coloumns pk and fk have same names*/

/*those cars model price name whose owner have spent more than 1000000*/
select owners.Name,cars.model,cars.price
from owners inner join cars
on owners.CID=cars.CID
where price>1000000;

/*only those cars that have not been bought*/
select owners.Name,cars.model,cars.price
from owners right join cars
on owners.CID=cars.CID
where cars.CID is NULL;

/*those customer who do not have cars*/
select owners.Name,cars.model,cars.price
from owners left join cars
on owners.CID=cars.CID
where cars.model is NULL;

/* total amount spent by each customer*/
select owners.Name,sum(cars.price)
from owners inner join cars
on owners.CID=cars.CID
group by owners.Name;


/*cars above 450000 bought after the year 2016*/
select owners.Name,cars.model,cars.price
from owners inner join cars
on owners.CID=cars.CID
where price>450000 and dop>'31/Dec/2016';

/*those cars from west bengal that have not been bought*/
select owners.Name,cars.model,cars.price
from owners right join cars
on owners.CID=cars.CID
where cars.CID is NULL and cars.regno='WB**********';
