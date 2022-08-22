/* Section 2: GENERAL CHALLENGE: https://tufts.udemy.com/course/the-complete-sql-bootcamp/learn/lecture/4681736#content*/
/* Challenge 1 */
SELECT COUNT(amount) FROM payment
WHERE amount > 5;

/* Challenge 2 */
SELECT COUNT(*) FROM actor
WHERE first_name LIKE 'P%';

/* Challenge 3 */
SELECT COUNT(DISTINCT district) FROM address;

/* Challenge 4 */
SELECT DISTINCT district FROM address
ORDER BY district ASC;

/* Challenge 5 */
SELECT COUNT(*) FROM film
WHERE rating = 'R'
AND replacement_cost BETWEEN 5 AND 15;

/* Challenge 6 */
SELECT COUNT(*) FROM film
WHERE title LIKE '%Truman%';