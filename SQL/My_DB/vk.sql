DROP DATABASE IF EXISTS vk;
CREATE DATABASE IF NOT EXISTS vk;
USE vk;
CREATE TABLE IF NOT EXISTS users (
	id INT PRIMARY KEY AUTO_INCREMENT,
    username VARCHAR(30),
    password_hash VARCHAR(300),
    last_seen DATETIME
);
CREATE TABLE IF NOT EXISTS chats (
	id INT PRIMARY KEY AUTO_INCREMENT,
    title VARCHAR(50),
    description VARCHAR(200),
    owner_id INT,
    FOREIGN KEY (owner_id) REFERENCES users(id)
);
CREATE TABLE IF NOT EXISTS users_to_chats (
	user_id INT,
    chat_id INT,
    PRIMARY KEY (user_id, chat_id),
    enter_datetime DATETIME,
    FOREIGN KEY (user_id) REFERENCES users(id),
    FOREIGN KEY (chat_id) REFERENCES chats(id)
);
INSERT INTO users (username, password_hash, last_seen) VALUES
('user1', 'hash1', '2024-07-01 10:00:00'),
('user2', 'hash2', '2024-07-02 11:30:00'),
('user3', 'hash3', '2024-07-03 12:45:00'),
('user4', 'hash4', '2024-07-04 14:20:00'),
('user5', 'hash5', '2024-07-05 15:55:00'),
('user6', 'hash6', '2024-07-06 16:40:00'),
('user7', 'hash7', '2024-07-07 17:15:00'),
('user8', 'hash8', '2024-07-08 18:30:00'),
('user9', 'hash9', '2024-07-09 19:00:00'),
('user10', 'hash10', '2024-07-10 20:20:00');

-- Вставляем данные в таблицу chats
INSERT INTO chats (title, description, owner_id) VALUES
('General Discussion', 'A place for general chat and discussion', 1),
('Anime Fans', 'Discuss the latest in anime and manga', 2),
('Tech Talk', 'Chat about the latest in tech and gadgets', 2),
('Gaming Hub', 'Connect with other gamers and discuss games', NULL),
('Movie Buffs', 'Talk about your favorite movies and upcoming releases', 5),
('Book Club', 'Discuss your favorite books and recent reads', 6),
('Music Lovers', 'Share and discover new music', 7),
('Fitness Freaks', 'Talk about fitness, workouts, and health', 8),
('Foodies', 'Share recipes and talk about food', 9),
('Travel Enthusiasts', 'Share travel experiences and tips', 10);

-- Вставляем данные в таблицу users_to_chats
INSERT INTO users_to_chats (user_id, chat_id, enter_datetime) VALUES
(1, 1, '2024-07-01 10:00:00'),
(2, 2, '2024-07-02 11:30:00'),
(3, 3, '2024-07-03 12:45:00'),
(3, 5, '2024-07-03 12:45:00'),
(4, 4, '2024-07-04 14:20:00'),
(4, 7, '2024-07-04 14:20:00'),
(4, 9, '2024-07-04 14:20:00'),
(5, 5, '2024-07-05 15:55:00'),
(5, 2, '2024-07-05 15:55:00'),
(6, 6, '2024-07-06 16:40:00'),
(7, 7, '2024-07-07 17:15:00'),
(8, 8, '2024-07-08 18:30:00'),
(9, 9, '2024-07-09 19:00:00'),
(10, 10, '2024-07-10 20:20:00');

SELECT * FROM users;
SELECT * FROM chats;
SELECT * FROM users_to_chats;

SELECT * FROM users, chats
WHERE users.username = 'user1';

SELECT * FROM chats, users
WHERE users.id = chats.owner_id;

SELECT 
    u.username,
    c.title,
    utc.user_id AS userid,
    utc.chat_id AS chatid
FROM 
    users AS u, 
    chats AS c, 
    users_to_chats AS utc
WHERE 
    u.id = utc.user_id 
    AND utc.chat_id = c.id;

SELECT 
    u.username,
    c.title,
    utc.user_id AS userid,
    utc.chat_id AS chatid,
    utc .*
FROM 
    users AS u, 
    chats AS c, 
    users_to_chats AS utc
WHERE 
    u.id = utc.user_id 
    AND utc.chat_id = c.id;
