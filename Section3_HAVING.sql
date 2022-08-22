/* Section 3 HAVING Challenge */

-- Objective: Assign plat status to customers with 40 or more transactions
SELECT customer_id, COUNT(customer_id) FROM payment
GROUP BY customer_id
HAVING COUNT(customer_id) >= 40
ORDER BY COUNT(customer_id) DESC;

/* Objective: Determine customer ids of customers who spent more than 100 
on transations with staff_id member 2 */
SELECT customer_id, SUM(amount) FROM payment
WHERE staff_id = 2
GROUP BY customer_id
HAVING SUM(amount) > 100
ORDER BY SUM(amount) DESC;