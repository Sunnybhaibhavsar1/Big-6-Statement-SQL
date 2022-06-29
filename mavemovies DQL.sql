use mavenmovies;

-- group by

select 
	rating ,
    count(film_id) as film_with_this_rating
from film
group by rating; 

select 
	rental_duration,
    count(film_id) as films_with_this_rental_duration
from film
group by rental_duration;


select 
	rental_duration,
    rating,
    count(film_id) as film_with_this_rental_duration
from film
group by 
	rental_duration,
    rating;
    
select 
	rental_duration,
    rating,
    replacement_cost,
    count(film_id) as film_with_this_rental_duration
from film
group by 
	rental_duration,
    rating,
    replacement_cost;
    
select 
	rating,
    count(film_id) as count_of_films,
    min(length) as shortest_film,
    max(length) as longest_film,
    avg(length) as average_length_of_film,
    avg(rental_duration) as average_rental_dutration
from film
group by rating;
	


select 
	replacement_cost,
    count(film_id) as count_of_films,
    
    min(rental_rate) as cheapest_rental,
    max(rental_rate) as most_expensive_rental,
    avg(rental_rate) as average_rental_rate
from film
group  by 
	replacement_cost;
  
  
-- having
    
select 
	customer_id,
    count(rental) as total_rental
from rental
group by 
	customer_id
having count(*) >=30;

select 
	customer_id,
    count(rental_id) as total_rental
from rental
group by 
	customer_id
having
	count(rental_id) < 15;
 
 
 -- order by
 
select 
	customer_id,
    rental_id,
    amount,
    payment_date
from payment
order by amount desc,customer_id;
    
select 
	customer_id,
    sum(amount) as total_payment_amount
from payment
group by 
	customer_id
order by  
	sum(amount) desc ;
    


select 
	title,
    length,
    rental_rate
from film
group by 
	title
order by length desc, rental_rate desc;

-- case 

select 
	length,
    case
		when length < 60 then 'under 1 hr'
        when length between 60 and 90 then '1 and 1.5 hr'
        when length > 90 then 'over 1.5 hr'
        else 'logic error..'
	end as bucket_length
from film;

select 
	length,
    case
		when length < 60 then 'under 1 hr'
        when length between 60 and 90 then '1 and 1.5 hr'
        when length > 120 then 'over 2 hr'
        else 'logic error..'
	end as bucket_length
from film;
    
 
 
SELECT DISTINCT
    title,
    CASE
        WHEN rental_duration <= 4 THEN 'rental too short'
        WHEN rental_rate >= 3.99 THEN 'too expensive'
        WHEN rating IN ('NC-17' , 'R') THEN 'too adult'
        WHEN length NOT BETWEEN 60 AND 90 THEN 'too short or too long'
        WHEN description LIKE '%Shark%' THEN 'nope_has_sharks'
        ELSE 'great_for_my_neice'
    END AS fit_for_recommendation,
    CASE
        WHEN description LIKE '%Shark%' THEN 'nope_has_sharks'
        WHEN length NOT BETWEEN 60 AND 90 THEN 'too short or too long'
        WHEN rating IN ('NC-17' , 'R') THEN 'too adult'
        WHEN rental_duration <= 4 THEN 'rental too short'
        WHEN rental_rate >= 3.99 THEN 'too expensive'
        ELSE 'great_for_my_neice'
    END AS recommendation_reorder
FROM
    filmselect 
	first_name,
    last_name,
    case
		when store_id = 1 and active = 1 then 'store 1 active'
        when store_id = 1 and active = 0 then 'store 1 not active'
        when store_id = 2 and active = 1 then 'store 2 active'
        when store_id = 2 and active = 0 then 'store 2 not active'
        else 'logic error'
	end as 'store_and_status'
from customer;


-- case and count

select 
	-- inventory_id,
    film_id,
    count( case when store_id = 1 then inventory_id else null end) as count_of_store1_inventory_id,
    count( case when store_id = 2 then inventory_id else null end) as count_of_store2_inventory_id
from inventory
group by 
	film_id
order by 
	film_id;

select distinct 
	store_id,
    count(case when active = 1 then customer_id else null end) as count_active ,
    count(case when active = 0 then customer_id else null end) as count_inactive
from customer
group by
	store_id
order by 
	store_id;;
	
    
