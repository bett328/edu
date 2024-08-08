-- Соединить строки
SELECT concat('GAME', ' ', 'OF', ' ', 'THRONES');
-- Длина строки
SELECT LENGTH('TOOO MUCH LETTERS TO COUNT');
-- Убрать пустые символы в начале и конце, слева, справа
SELECT TRIM('           REMOVE ALL EMPTY SPACES         ');
SELECT LTRIM('           REMOVE ALL LEFT EMPTY SPACES         ');
SELECT RTRIM('           REMOVE ALL RIGHT EMPTY SPACES         ');
-- Вырезать из строки подстроку
SELECT SUBSTRING('SUBSTRACT PART OF THE STRING', 5); -- с 5 символа и до конца
SELECT SUBSTRING('SUBSTRACT PART OF THE STRING', 5, 7); -- с 5 символа до 7 символа с конца
-- Перевернуть строку
SELECT REVERSE('123456789');
-- Нижний регистр
SELECT LOWER('soME LETTers');
-- Верхний регистр
SELECT UPPER('soME LETTers');

USE vk;
SELECT CONCAT(id, ' ', username) AS id_username FROM users;

USE tiktok;
SELECT CONCAT(u.username, ': "', c.text, '"') AS username_comments
FROM users AS u
JOIN comments AS c ON
u.id = c.author_id;

SELECT REVERSE(CONCAT(u.username, ': "', c.text, '"')) AS username_comments
FROM users AS u
JOIN comments AS c ON
u.id = c.author_id
ORDER BY c.text;