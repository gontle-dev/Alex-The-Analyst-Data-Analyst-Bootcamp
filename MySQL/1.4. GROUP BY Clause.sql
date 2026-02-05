-- GROUP BY

SELECT *
FROM employee_demographics;


SELECT gender, AVG(age)
FROM employee_demographics
GROUP BY gender
;


SELECT occupation, salary
FROM employee_salary
GROUP BY occupation, salary
;

SELECT gender, AVG(age), MAX(age), MIN(age), COUNT(age)
FROM employee_demographics
GROUP BY gender
;

-- ORDER BY
SELECT *
FROM employee_demographics
ORDER BY gender, age
;

SELECT *
FROM employee_demographics
ORDER BY 5, 4  # position of column by number. Not recommended!
;