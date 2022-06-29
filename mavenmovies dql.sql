use mavenmovies;

-- select 
-- 		rental_id,
--         inventory_id
-- from rental;

-- select 
-- 	first_name,
--     last_name,
--     email
-- from customer;

-- select * from film;

-- select distinct
-- 	rating
-- from film;

-- select distinct
-- 	rental_duration
-- from film;

-- select 
-- 	customer_id,
--     rental_id,
--     amount,
--     payment_date
-- from payment
-- where customer_id between 1 and 100;

-- select 
-- 	customer_id,
--     rental_id,
--     amount,
--     payment_date
-- from payment
-- where amount = 0.99;


-- select 
-- 	customer_id,
--     rental_id,
--     amount,
--     payment_date
-- from payment
-- where amount = 0.99
-- 	and payment_date >='2006-01-01';


-- select 
-- 	customer_id,
--     rental_id,
--     amount,
--     payment_date
-- from payment
-- where amount > 5
-- 	and payment_date >='2006-01-01';

-- select 
-- 	customer_id,
--     rental_id,
--     amount,
--     payment_date
-- from payment
-- where customer_id = 5
-- 	or customer_id = 11
--     or customer_id = 29;
--     
    
-- select 
-- 	customer_id,
--     rental_id,
--     amount,
--     payment_date
-- from payment
-- where (customer_id = 42
-- 	or customer_id = 53
--     or customer_id = 60
--     or customer_id = 75) 
--     or amount >5;

-- select 
-- 	customer_id,
--     rental_id,
--     amount,
--     payment_date
-- from payment
-- where customer_id in (42,53,60,75)
--     or amount >5;

-- select 
-- 	title,
--     description
-- from film 
-- where description like '%Epic%';

-- select 
-- 	title,
--     description
-- from film 
-- where description like '%China';

-- select 
-- 	title,
--     description
-- from film 
-- where description like '_China';


-- select 
-- 	title,
--     description
-- from film 
-- where title = '_LADDIN CALENDAR';

-- select 
-- 	title,
--     description
-- from film 
-- where title like '_LADDIN CALENDAR';

-- select 
-- 	title,
--     special_features
-- from film 
-- where special_features like '%Behind the Scenes';

