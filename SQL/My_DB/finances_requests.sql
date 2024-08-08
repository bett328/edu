USE finances;
SELECT COUNT(*) FROM phones;

SELECT FLOOR(AVG(price)) AS average_price FROM phones;
SELECT MAX(price) AS max_price, MIN(price) AS min_price FROM phones;

SELECT AVG(price), SUM(price) / COUNT(price) FROM phones;

SELECT COUNT(*), CONCAT(factory, ' ', title) FROM phones
GROUP BY factory, title;

SELECT factory, COUNT(*), ROUND(AVG(price), 2) FROM phones
GROUP BY factory;

SELECT factory, COUNT(*), ROUND(AVG(price), 2) FROM phones
GROUP BY factory
ORDER BY factory;

SELECT factory, COUNT(*), ROUND(AVG(price), 2) FROM phones
WHERE price > 800
GROUP BY factory
ORDER BY factory DESC;

SELECT factory, COUNT(*), ROUND(AVG(price), 2) FROM phones
GROUP BY factory
HAVING ROUND(AVG(price), 2) > 800;

SELECT factory, title FROM phones
WHERE price > 800
GROUP BY factory, title;

SELECT factory, COUNT(*), ROUND(AVG(price), 2) FROM phones
GROUP BY factory
HAVING ROUND(AVG(price), 2) > 800;

SELECT
	factory,
    COUNT(*) AS count,
    ROUND(AVG(price), 2) AS avg_price
FROM phones
GROUP BY factory
HAVING ROUND(AVG(price), 2) > 900;