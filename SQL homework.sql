SELECT * FROM sakila.actor;
select first_name, last_name FROM actor;
Select concat(first_name,' ', last_name) as 'Actor Name'FROM Actor;
select actor_id, first_name, last_name from actor where first_name = 'joe';
select first_name, last_name from actor where last_name like '%GEN%';
select first_name, last_name from actor where last_name like '%LI%' order by 2,1;
select country_id, country from country where country in ('Afghanistan', 'Bangladesh', 'China');
alter table actor add column middle_name VARCHAR(15) after first_name;
alter table actor modify middle_name blob;
alter table actor drop middle_name;
select last_name,count(last_name) as 'count' from actor group by last_name;
select last_name,count(last_name) as 'count' from actor group by last_name having count(last_name) > 2;
select * from actor where last_name like 'WILLIAMS' AND first_name like'GROUCHO'; 
update actor set first_name = 'HARPO' where last_name like 'WILLIAMS' and actor_id = 172;
select * from actor where last_name like 'WILLIAMS';
update actor set first_name = 'GROUCHO' where first_name = 'HARPO' and actor_id = 172; 
show create table address;
select b.address_id,b.first_name,b.last_name,a.address,a.district,a.postal_code
from address a left join staff b on
a.address_id = b.address_id;



