/* SECTION 3: GROUP BY Challenge */

-- Objective: Give bonus to staff member handling most payments 
SELECT staff_id, COUNT(staff_id) FROM payment
GROUP BY staff_id;
-- Staff member 2 gets bonus (7304)

-- Objective: Return average replacement cost by rating
SELECT rating, ROUND(AVG(replacement_cost),2) FROM film
GROUP BY rating;

-- Objective: Reward top 5 customers with coupons
SELECT customer_id, SUM(amount) FROM payment
GROUP BY customer_id 
ORDER BY SUM(amount) DESC
LIMIT 5;