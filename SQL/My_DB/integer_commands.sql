-- Округлить число
SELECT ROUND(1233.34234);
SELECT ROUND(1233.34234, 2);
SELECT ROUND(1233.34234, -2);
-- Оставить в дробной части определенное количество символов
SELECT TRUNCATE(11234.32132, 2);
-- Модуль числа
SELECT ABS(-123);
-- Округление вверх
SELECT CEILING(123.234);
SELECT CEILING(123.95);
SELECT CEILING(-123.234);
SELECT CEILING(-123.95);
-- Округление вниз
SELECT FLOOR(123.234);
SELECT FLOOR(123.934);
SELECT FLOOR(-123.234);
SELECT FLOOR(-123.934);
-- Возвести в степень
SELECT POWER(5, 2);
SELECT POWER(5, 3);
-- Корень числа
SELECT SQRT(225);
-- Знак числа
SELECT SIGN(-55);
SELECT SIGN(7);
SELECT SIGN(0);
-- Случайно число от 0 до 1
SELECT RAND(), RAND(), ROUND(RAND(), 2);
SELECT RAND(1), RAND(2), RAND(2), RAND(100);

-- Передаем строки вместо чисел
-- Округлить число
SELECT ROUND('1233.34234');
SELECT ROUND('sdfsf1233.34234', 2); -- Выведет 0
SELECT ROUND('1233.34234', -2);
-- Оставить в дробной части определенное количество символов
SELECT TRUNCATE('11234.32132', 2);
-- Модуль числа
SELECT ABS('-123');
-- Округление вверх
SELECT CEILING('123.234');
SELECT CEILING('123.95');
SELECT CEILING('-123.234');
SELECT CEILING('-123.95');
-- Округление вниз
SELECT FLOOR('123.234');
SELECT FLOOR('123.934');
SELECT FLOOR('-123.234');
SELECT FLOOR('-123.934');
-- Возвести в степень
SELECT POWER('5', '2');
SELECT POWER('5', 3);
-- Корень числа
SELECT SQRT('225');
-- Знак числа
SELECT SIGN('-55');
SELECT SIGN('7');
SELECT SIGN('0');
-- Случайно число от 0 до 1
SELECT RAND(), RAND(), ROUND(RAND(), 2);
SELECT RAND('1'), RAND(2), RAND(2), RAND(100);
