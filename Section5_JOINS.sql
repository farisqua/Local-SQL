/* Section 5: JOIN Challenge */

 --Objective: What are the emails of the customers who live in California?
 --Notes: customer.email; address.district; commonality: address_id
 SELECT email, address.district 
 FROM customer
 INNER JOIN address
 ON customer.address_id = address.address_id
 WHERE address.district = 'California';
 
 --Objective: Get a list of all the movies "Nick Wahlberg" has been in
 --Notes: 
 SELECT title, actor.first_name, actor.last_name
 FROM film
 INNER JOIN film_actor
 ON film.film_id = film_actor.film_id
 INNER JOIN actor
 ON film_actor.actor_id = actor.actor_id
 WHERE actor.first_name = 'Nick'
 AND actor.last_name = 'Wahlberg';
 
 