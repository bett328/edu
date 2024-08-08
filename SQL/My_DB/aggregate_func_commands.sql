-- AVG: среднее значение 
-- SUM: сумма значений 
-- MIN: наименьшее значение 
-- MAX: наибольшее значение 
-- COUNT: количество значений

USE vk;
SELECT COUNT(*) FROM users;
SELECT COUNT(*) FROM chats;
SELECT COUNT(*) FROM users_to_chats;

SELECT COUNT(*) FROM users AS u
JOIN users_to_chats AS utc
ON u.id = 3 AND utc.user_id = u.id;

