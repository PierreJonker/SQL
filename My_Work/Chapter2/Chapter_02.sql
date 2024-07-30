-- Chapter 2

SELECT * FROM teachers;

-- Want Spesific infomasion fomr the table
SELECT last_name, first_name, salary FROM teachers;

-- Distinct to retreif not dupilcates so that it is only 1
SELECT DISTINCT school
FROM teachers;
-- Get more than one more vaules 
SELECT DISTINCT school, salary
FROM teachers;

-- Sorting Data with ORDER BY
SELECT first_name, last_name, salary
FROM teachers
ORDER BY salary DESC;

SELECT last_name, school, hire_date
FROM teachers
ORDER BY school ASC, hire_date DESC;

-- Filtering Rows with WHERE
SELECT last_name, school, hire_date
FROM teachers
WHERE school = 'Myers Middle School';

-- =Janet 
SELECT first_name, last_name, school
FROM teachers
WHERE first_name = 'Janet';

--Not != to that 
SELECT school
FROM teachers
WHERE school != 'F.D. Roosevelt HS';

-- Get Data that is smaller than 
SELECT first_name, last_name, hire_date
FROM teachers
WHERE hire_date < '2000-01-01';

--Then we find teachers who earn $43,500 or more using the >= operator
SELECT first_name, last_name, salary
FROM teachers
WHERE salary >= 43500;

-- The next query uses the BETWEEN operator to find teachers who earn
-- between $40,000 and $65,000. Note that BETWEEN is inclusive, meaning the
-- result will include values matching the start and end ranges specified.
SELECT first_name, last_name, school, salary
FROM teachers
WHERE salary BETWEEN 40000 AND 65000;

-- Using LIKE and ILIKE with WHERE
-- LIKE 'b%'
-- LIKE '%ak%'
-- LIKE '_aker'
-- LIKE 'ba_er'

SELECT first_name
FROM teachers
WHERE first_name LIKE 'sam%';

SELECT first_name
FROM teachers
WHERE first_name ILIKE 'sam%';

-- Combining Operators with AND and OR
SELECT *
FROM teachers
WHERE school = 'Myers Middle School'
AND salary < 40000;

SELECT *
FROM teachers
v WHERE last_name = 'Cole'
OR last_name = 'Bush';

SELECT *
FROM teachers
WHERE school = 'F.D. Roosevelt HS'
AND (salary < 38000 OR salary > 40000);

-- Putting It All Together
SELECT first_name, last_name, school, hire_date, salary
FROM teachers
WHERE school LIKE '%Roos%'
ORDER BY hire_date DESC;

-- Self Try 

-- 1. The school district superintendent asks for a list of teachers in each
-- school. Write a query that lists the schools in alphabetical order along
-- with teachers ordered by last name A-Z.

-- Answer:

SELECT school, first_name, last_name
FROM teachers
ORDER BY school, last_name;

-- 2. Write a query that finds the one teacher whose first name starts
-- with the letter 'S' and who earns more than $40,000.

-- Answer:

SELECT first_name, last_name, school, salary
FROM teachers
WHERE first_name LIKE 'S%' -- remember that LIKE is case-sensitive!
      AND salary > 40000;

-- 3. Rank teachers hired since Jan. 1, 2010, ordered by highest paid to lowest.

-- Answer:

SELECT last_name, first_name, school, hire_date, salary
FROM teachers
WHERE hire_date >= '2010-01-01'
ORDER BY salary DESC;

