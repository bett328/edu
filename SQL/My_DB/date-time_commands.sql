-- Текущая дата и время
SELECT NOW();
SELECT SYSDATE();
SELECT CURRENT_TIMESTAMP();
SELECT NOW(), SYSDATE(), SLEEP(5), NOW(), SYSDATE();
-- Текущая дата
SELECT CURRENT_DATE();
SELECT CURDATE();
-- Текущее время
SELECT CURRENT_TIME();
SELECT CURTIME();
-- Дата по UTC
SELECT UTC_DATE();
-- Время по UTC
SELECT UTC_TIME();

DAYOFMONTH(DATE); -- день месяца в виде числа
DAYOFWEEK(DATE); -- день недели в виде числа, счет насчинается с воскресенья
DAYOFYEAR(DATE); -- номер дня в году
MONTH(DATE); -- месяц
YEAR(DATE); -- год
QUARTER(DATE); -- квартал
WEEK(DATE [, FIRST]); -- номер недели года (с доп. параметром, где 0 неделя - это первая)
LAST_DAY(DATE); -- последний день месяца в виде даты
DAYNAME(DATE); -- название дня недели
MONTHNAME(DATE); -- название месяца
HOUR(TIME); -- час
MINUTE(TIME); -- минута
SECOND(TIME); -- секунда

-- Добавить к дате
SELECT DATE_ADD('2024-07-03 12:45:00', INTERVAL 1 DAY);
SELECT DATE_ADD('2024-07-03 12:45:00', INTERVAL 3 MONTH);
SELECT DATE_ADD('2024-07-03 12:45:00', INTERVAL 4 HOUR);
-- Вычесть из даты
SELECT DATE_SUB('2024-07-03 12:45:00', INTERVAL 1 DAY);
SELECT DATE_SUB('2024-07-03 12:45:00', INTERVAL 3 MONTH);
SELECT DATE_SUB('2024-07-03 12:45:00', INTERVAL 4 HOUR);
-- Разница дат 
SELECT DATEDIFF('2024-07-03 12:45:00', '2024-07-04 12:45:00');
SELECT DATEDIFF('2024-09-03 12:45:00', '2024-07-04 12:45:00');
SELECT DATEDIFF('2024-07-03 12:45:00', '2024-07-03 12:35:00');
-- Форматирование
SELECT DATE_FORMAT(DATE, FORMAT);
SELECT TIME_FORMAT(DATE, FORMAT);
-- '%m': месяц в числовом формате 01...12
-- '%c':месяц в числовом формате 1...12
-- '%M': название месяца (January,..)
-- '%b': аббревиатура месяца (Jan, Dec)
-- '%d': день месяца в числовом формате 00..31
-- '%e': день месяца в числовом формате 0..31
-- '%D': номер дня с суфиксом (1st, 2nd, 3rd...)
-- '%y': год в виде двух чисел
-- '%Y': год в виде четырех чисел
-- '%W': название дня недели (Sunday...Saturday)
-- '%a': аббревиатура дня недели (Sun, Sat)
-- '%H': час в формате 00..23
-- '%k': час в формате 0..23
-- '%h': час в формате 01..12
-- '%l': час в формате 1..12
-- '%i': минуты в формате 00..59
-- '%r': время в 12-ти часовом формате (hh:mm:ss AM или hh:mm:ss PM)
-- '%T': время в 24-х часовом формате (hh:mm:ss AM или hh:mm:ss PM)
-- '%S': секунды в формате 00..59
-- '%p': AM или PM
SELECT DATE_FORMAT('2024-07-03 12:45:00', '%M');