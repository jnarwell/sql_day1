SELECT count(*)
FROM actor a
WHERE last_name = 'Wahlberg';

--Answer = 2

SELECT count(*)
FROM payment p 
WHERE amount >= 3.99 and amount <= 5.99;

--Answer = 5607

SELECT title
FROM film f
WHERE film_id IN(
	SELECT film_id
	FROM inventory i 
	GROUP BY film_id
	HAVING count(*) = 7 
);

--Answer = see list

SELECT count(*)
FROM customer c
WHERE first_name = 'Willie';

--Answer = 2

SELECT staff_id, count(*) AS rental_count
FROM rental
GROUP BY staff_id;

#Answer = staff_id 1

SELECT district
FROM address
GROUP BY district
HAVING count(*) = 1;

--Answer = 273

SELECT *
FROM film
WHERE film_id = 508;

SELECT film_id, count(*)
FROM film_actor fa
GROUP BY film_id
ORDER BY count(*) DESC

--Answer = Lambs Cincinatti

SELECT count(*)
FROM customer
WHERE store_id = 1 AND last_name LIKE '%es';

--Answer = 13

SELECT amount, count(*)
FROM payment p
WHERE customer_id BETWEEN 380 AND 430
GROUP BY amount
HAVING count(*) > 250
ORDER BY amount;

--3 have more than 250

SELECT rating, count(*)
FROM film
GROUP BY rating
ORDER BY count(*);

--Answer = 5 categories w/ PG-13 having most