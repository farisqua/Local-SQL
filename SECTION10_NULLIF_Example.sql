/* Both perform CAST */

SELECT CAST('7' AS INTEGER) AS Number;
SELECT '7'::INTEGER AS Number;

/* Example of counting character length of each row entry */
SELECT CHAR_LENGTH(CAST(inventory_id AS VARCHAR)) FROM rental;

/* NULL IF: Takes 2 inputs and returns NULL if both are equal 
	Otherwise, it returns the first argument */
SELECT NULLIF(1,1);
SELECT NULLIF(1,2);

DROP TABLE depts;
CREATE TABLE depts(
	first_name VARCHAR(50),
	department VARCHAR(50)
	);
INSERT INTO 
	depts(first_name, department)
VALUES
	('Vintage','A'),
	('Laur3n', 'A'),
	('Claurs', 'B');

SELECT * FROM depts;

SELECT (
	SUM(CASE WHEN department = 'A' THEN 1 ELSE 0 END)/
	SUM(CASE WHEN department = 'B' THEN 1 ELSE 0 END)
) AS dept_ratio FROM depts;

DELETE FROM depts WHERE department = 'B';

SELECT (
	SUM(CASE WHEN department = 'A' THEN 1 ELSE 0 END)/
	NULLIF(
	SUM(CASE WHEN department = 'B' THEN 1 ELSE 0 END),0)
) AS dept_ratio FROM depts;