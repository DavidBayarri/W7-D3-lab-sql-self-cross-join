use sakila;

-- Question 1: Get all pairs of actors that worked together.

SELECT *
FROM film_actor fa1
JOIN film_actor fa2 ON fa1.film_id = fa2.film_id;

-- Question 2: Get all pairs of customers that have rented the same film more than 3 times.

SELECT r.customer_id, r2.customer_id, r.rental_id, count(r.inventory_id)
FROM rental r
JOIN rental r2 ON r.inventory_id = r2.inventory_id
group by r.customer_id, r2.customer_id
having count(r.inventory_id) > 3 and r.customer_id <> r2.customer_id;

-- Question 3: Get all possible pairs of actors and films.

SELECT *
FROM actor
CROSS JOIN