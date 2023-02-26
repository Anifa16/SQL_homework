---1. How many actors are there with the last name ‘Wahlberg’?

SELECT last_name
FROM actor
WHERE last_name = 'Wahlberg';

-- We have two octors with the lastname Wahlberge

--2. How many payments were made between $3.99 and $5.99?


SELECT amount
FROM payment
WHERE amount BETWEEN 3.99 AND 5.99;

--there was about 4794 payments were made under 3.99 and 5.99

--3. What film does the store have the most of? (search in inventory table)
SELECT film_id, COUNT(film_id)
FROM inventory
GROUP BY film_id
HAVING COUNT(film_id) = 8

--- the stores 72 film_id  with amount of 8 films on hand

SELECT film_id, COUNT(film_id)
FROM inventory
GROUP BY film_id
ORDER BY COUNT(film_id) DESC;

-- this will list all the inventory 

--4. How many customers have the last name ‘William’?
SELECT last_name
FROM customer
WHERE last_name = 'William';

-- have customer with the name william

--5. What store employee (get the id) sold the most rentals?
SELECT MAX(staff_id), COUNT(rental_id)
FROM rental
GROUP BY staff_id; 

--- 8040 and 8004 sold the  most rentals 

--6. How many different distinct names are there?

SELECT COUNT(DISTINCT name )
FROM category;

-- are 16 distint names in the category field


--7. What film has the most actors in it? (use film_actor table and get film_id)
SELECT film_id, COUNT(actor_id)
FROM film_actor
GROUP BY film_id
ORDER BY COUNT(actor_id) DESC;

---film_id  508 has the most actors 

--8. From store_id 1, how many customers have a last name ending with ‘es’? (use customer table)
SELECT COUNT(last_name), store_id
FROM customer
WHERE last_name LIKE '%es'
GROUP BY store_id;

-- 13 people have the last_name ending with 13

--9. How many payment amounts (4.99, 5.99, etc.) had a number of rentals above 250 for customers
--with ids between 380 and 430? (use group by and having > 250)

SELECT amount, customer_id, COUNT(amount)
FROM payment
WHERE customer_id BETWEEN 380 AND 430
GROUP BY amount, customer_id
HAVING COUNT(amount) > 250;

-- the have no rentals above 250

--10. Within the film table, how many rating categories are there? And what rating has the most
--movies total?
SELECT rating, COUNT(title)
FROM film
GROUP BY rating
ORDER BY COUNT(title) DESC;

-- there are 5 different type of rating and PG-13 has the most movies with 223

