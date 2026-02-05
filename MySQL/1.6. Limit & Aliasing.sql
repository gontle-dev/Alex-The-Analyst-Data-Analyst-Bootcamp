-- Limit & Aliasing

SElECT *
FROM employee_demographics
ORDER BY age DESC
LIMIT 2, 1 # start at position 3 and start one row after it
;

-- Aliasing
SElECT gender, AVG(age) AS avg_age #'AS' names a column. Can without it though
FROM employee_demographics
GROUP BY gender
HAVING AVG(age) > 40
;