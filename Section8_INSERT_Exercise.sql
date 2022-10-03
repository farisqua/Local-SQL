/*
CREATE TABLE account(
	user_id SERIAL PRIMARY KEY,
	username VARCHAR(50) UNIQUE NOT NULL,
	password VARCHAR(50) NOT NULL,
	email VARCHAR(250) UNIQUE NOT NULL,
	created_on TIMESTAMP NOT NULL,
	last_login TIMESTAMP
);

CREATE TABLE job(
	job_id SERIAL PRIMARY KEY,
	job_name VARCHAR(200) UNIQUE NOT NULL
);

CREATE TABLE account_job(
	user_id INTEGER REFERENCES account(user_id),
	job_id INTEGER REFERENCES job(job_id),
	hire_date TIMESTAMP
);
*/

--Section 8: INSERT--
--INSERT INTO account(username,password,email,created_on)
--VALUES ('Jose','passsword','jose@mail.com',CURRENT_TIMESTAMP);

SELECT * FROM account;

--INSERT INTO job(job_name)
--VALUES ('Cumsum');

SELECT * FROM job;

--INSERT INTO job(job_name)
--VALUES ('Agglomerate');

SELECT * FROM job;

--INSERT INTO account_job(user_id, job_id, hire_date)
--VALUES (1,1,CURRENT_TIMESTAMP);

SELECT * FROM account_job;
