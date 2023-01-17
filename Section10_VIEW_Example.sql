/* Example of VIEW */
DROP VIEW IF EXISTS customer_info;
CREATE VIEW customer_info AS
SELECT first_name, last_name, address FROM customer
INNER JOIN address
ON customer.address_id = address.address_id;

/* Fix view to include district*/
CREATE OR REPLACE VIEW customer_info AS 
SELECT first_name, last_name, address, district FROM customer
INNER JOIN address
ON customer.address_id = address.address_id;

/* Change view name */
/* ALTER VIEW IF EXISTS customer_info RENAME to c_info;

SELECT * FROM c_info;

/* Remove view and check if it exists */
/* DROP VIEW IF EXISTS c_info; */

/* TESTING VIEW
DROP VIEW IF EXISTS wallahi_im_done;
CREATE VIEW wallahi_im_done AS
SELECT 
	film_id AS wallahi,
	title AS im,
	rating AS done
FROM film;

SELECT * FROM wallahi_im_done;
*/