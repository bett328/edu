USE autosdb;
SELECT * FROM autos;
SELECT 
	make, 
    model, 
    cylinder_layout 
FROM autos
WHERE cylinder_layout != 'Inline-4';

SELECT 
	make, 
    model, 
    year_from, 
    year_to, 
    transmission 
FROM autos
WHERE year_from > 2012;

SELECT 
	make, 
    model, 
    year_from, 
    year_to, 
    transmission 
FROM autos
WHERE transmission = 'Automatic';

SELECT 
	make, 
    model, 
    year_from, 
    year_to, 
    transmission 
FROM autos
WHERE transmission = 'Automatic'
OR transmission = 'CVT';

SELECT 
	make, 
    model, 
    year_from, 
    year_to, 
    transmission 
FROM autos
WHERE transmission IN ('Automatic', 'CVT');

SELECT * FROM autos
WHERE transmission != 'Manual'
AND boost_type = 'Turbocharged'
AND series = 'Sport';

SELECT 
	make AS factory, 
    model, 
    boost_type AS boost, 
    drive_wheels AS 'Ведущие колеса', 
    year_from 
FROM autos
WHERE transmission != 'Manual'
AND boost_type = 'Turbocharged'
AND series = 'Sport';

-- IN WHERE CAN USE (>, <, =, !=, >=, <=), (IN, BETWEEN), (AND, OR, NOT)
SELECT 
	make AS factory, 
    model, 
    boost_type AS boost, 
    drive_wheels AS 'Ведущие колеса', 
    year_from 
FROM autos
WHERE generation IN ('X760', 'XF50', 'Y51');

SELECT 
	make AS factory, 
    model, 
    boost_type AS boost, 
    drive_wheels AS 'Ведущие колеса', 
    year_from 
FROM autos
WHERE year_from BETWEEN 2012 AND 2017;

SELECT 
	make AS factory, 
    model, 
    boost_type AS boost, 
    drive_wheels AS 'Ведущие колеса', 
    year_from 
FROM autos
WHERE generation IN ('X760', 'XF50', 'Y51') AND
year_from BETWEEN 2012 AND 2017;

SELECT 
	make AS factory, 
    model, 
    boost_type AS boost, 
    drive_wheels AS 'Ведущие колеса', 
    year_from 
FROM autos
WHERE make = 'Toyota' 
OR make = 'Audi';

SELECT 
	make AS factory, 
    model, 
    boost_type AS boost, 
    drive_wheels AS 'Ведущие колеса', 
    year_from 
FROM autos
WHERE make = 'Toyota' 
OR make = 'Audi';

SELECT 
	make AS factory, 
    model, 
    boost_type AS boost, 
    drive_wheels AS 'Ведущие колеса', 
    year_from 
FROM autos
WHERE make IN ('Toyota', 'Audi');

SELECT 
	make AS factory, 
    model, 
    boost_type AS boost, 
    drive_wheels AS 'Ведущие колеса', 
    year_from 
FROM autos
WHERE NOT make IN ('Toyota', 'Audi');

-- LIKE позволяет искать по символам в начале (символы%), в середине (%символы%), в конце (%символы) или один символ (_символ%), 
-- (\_символ% - если запись должна содержать нижнее подчеркивание, а потом символ)
SELECT * FROM autos
WHERE make LIKE 'Vo%';

SELECT * FROM autos
WHERE year_from LIKE '%01%';

SELECT * FROM autos
WHERE year_from LIKE '__2%';

SELECT * FROM autos LIMIT 47;

-- Сортировка по модели
SELECT * FROM autos
ORDER BY model;

-- Сортировка по производителю и году конца выпуска
SELECT * FROM autos
ORDER BY make, model;

-- Сортировка по производителю и модели
SELECT * FROM autos
ORDER BY make, year_to;

SELECT make, model, cylinder_layout
FROM autos
WHERE cylinder_layout IN ('V6', 'V8')
ORDER BY make, model
LIMIT 10;

