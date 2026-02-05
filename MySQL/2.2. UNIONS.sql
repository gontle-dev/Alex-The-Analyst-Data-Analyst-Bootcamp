-- Unions - permits combination of rows from seperate tables or the same table

SELECT first_name, last_name
FROM employee_demographics
UNION # names overlap, Ron Swanson is at the bottom because he isn't on the other table
SELECT first_name, last_name
FROM employee_salary
;


SELECT first_name, last_name
FROM employee_demographics
UNION ALL # all names show, causes duplicates
SELECT first_name, last_name
FROM employee_salary
;


SELECT first_name, last_name, 'Old Man' AS lable
FROM employee_demographics
WHERE age > 40 AND gender = 'Male'
UNION
SELECT first_name, last_name, 'Old Lady' AS lable
FROM employee_demographics
WHERE age > 40 AND gender = 'Female'
UNION
SELECT first_name, last_name, 'Highly Paid Employee' AS lable
FROM employee_salary
WHERE salary > 70000
ORDER BY first_name, last_name
;