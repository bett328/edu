USE vk;
SELECT * FROM users
JOIN users_to_chats;

SELECT * FROM users AS u
JOIN users_to_chats AS utc
ON u.id = utc.user_id;

-- то же самое
SELECT * FROM users AS u, users_to_chats AS utc
WHERE u.id = utc.user_id;

SELECT u.username, utc.chat_id AS chat
FROM users AS u 
JOIN users_to_chats AS utc
ON u.id = utc.user_id;

SELECT u.username, utc.chat_id AS chat
FROM users AS u 
JOIN users_to_chats AS utc
ON u.id = utc.user_id
WHERE u.id > 5;

SELECT u.username,
utc.chat_id AS 'chat-id',
c.title AS chat
FROM users AS u
JOIN users_to_chats AS utc ON u.id = utc.user_id
JOIN chats AS c ON c.id = utc.chat_id
ORDER BY u.username;

SELECT u.username,
utc.chat_id AS 'chat-id',
c.title AS chat
FROM users AS u
JOIN users_to_chats AS utc ON u.id = utc.user_id
JOIN chats AS c ON c.id = utc.chat_id
ORDER BY c.description;

SELECT u.username,
utc.chat_id AS 'chat-id',
c.title AS chat
FROM users AS u
JOIN users_to_chats AS utc ON u.id = utc.user_id
JOIN chats AS c ON c.id = utc.chat_id
ORDER BY c.description;

SELECT u.username, c.title AS chat
FROM users AS u
LEFT JOIN chats AS c
ON u.id = c.owner_id
WHERE u.id <= 5;

SELECT u.username, c.title AS chat
FROM users AS U
RIGHT JOIN chats AS c
ON u.id = c.owner_id;
