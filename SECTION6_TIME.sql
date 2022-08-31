/* Section 6 Challenge */

--During which months did payments occur?
--Formate your answer to return back the full month name.
SELECT TO_CHAR(payment_date, 'month') AS payment_months
FROM payment
GROUP BY TO_CHAR(payment_date, 'month');
--OR
SELECT DISTINCT(TO_CHAR(payment_date,'MONTH'))
FROM payment;

--How many payments occurred on a Monday?
SELECT COUNT(TO_CHAR(payment_date, 'day'))
FROM payment
WHERE TO_CHAR(payment_date, 'day') LIKE 'm%';
--OR (But my method is faster LOLOLOL)
SELECT COUNT(*)
FROM payment
WHERE EXTRACT(dow FROM payment_date) = 1;