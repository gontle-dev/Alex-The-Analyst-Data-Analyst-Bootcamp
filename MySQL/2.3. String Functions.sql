-- String Functions

SELECT length('skyfall');

SELECT first_name, length(first_name)
FROM employee_demographics
ORDER BY 2
;

SELECT upper('skyfall');
SELECT lower('SKYFALL');

SELECT first_name, upper(first_name)
FROM employee_demographics
;

SELECT TRIM('       sky     ') # gets rid of spaces before and after
;
SELECT RTRIM('       sky     ') # gets rid of spaces on the right
;
SELECT LTRIM('       sky     ') # gets rid of spaces on the left
;


SELECT first_name, left(first_name, 4) # number characters from the left hand side we want to select
FROM employee_demographics
;

SELECT first_name, 
LEFT(first_name, 4),
RIGHT(first_name, 4)
FROM employee_demographics;


SELECT first_name, 
LEFT(first_name, 4),
RIGHT(first_name, 4),
SUBSTRING(first_name, 3, 2), # start at 3rd position and go over  2 positions
birth_date,
SUBSTRING(birth_date, 6, 2)  AS birth_month #finding month of when everyone is born
FROM employee_demographics;


SELECT first_name, REPLACE(first_name, 'a', 'z')
FROM employee_demographics;

SELECT LOCATE('x', 'Alexander');

SELECT first_name, LOCATE('An', first_name)
FROM employee_demographics;

SELECT first_name, last_name,
CONCAT(first_name, '  ', last_name)
FROM employee_demographics;










