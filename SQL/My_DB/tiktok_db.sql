-- Создаем базу данных и используем ее
DROP DATABASE IF EXISTS tiktok;
CREATE DATABASE IF NOT EXISTS tiktok;
USE tiktok;

-- Создаем таблицу users
CREATE TABLE IF NOT EXISTS users (
    id INT PRIMARY KEY AUTO_INCREMENT,
    username VARCHAR(50)
);

-- Создаем таблицу videos
CREATE TABLE IF NOT EXISTS videos (
    id INT PRIMARY KEY AUTO_INCREMENT,
    upload_date DATETIME,
    duration INT,
    owner_id INT,
    FOREIGN KEY (owner_id) REFERENCES users(id)
);

-- Создаем таблицу comments
CREATE TABLE IF NOT EXISTS comments (
    id INT PRIMARY KEY AUTO_INCREMENT,
    text VARCHAR(250),
    video_id INT,
    author_id INT,
    publication_date DATETIME,
    FOREIGN KEY (video_id) REFERENCES videos(id),
    FOREIGN KEY (author_id) REFERENCES users(id)
);

-- Создаем таблицу likes
CREATE TABLE IF NOT EXISTS likes (
    user_id INT,
    video_id INT,
    PRIMARY KEY (user_id, video_id),
    FOREIGN KEY (user_id) REFERENCES users(id),
    FOREIGN KEY (video_id) REFERENCES videos(id)
);

-- Вставляем данные в таблицу users
INSERT INTO users (username) VALUES
('user1'),
('user2'),
('user3'),
('user4'),
('user5'),
('user6'),
('user7'),
('user8'),
('user9'),
('user10');

-- Вставляем данные в таблицу videos
INSERT INTO videos (upload_date, duration, owner_id) VALUES
('2024-07-01 10:00:00', 30, 1),
('2024-07-01 12:00:00', 45, 1),
('2024-07-01 14:00:00', 50, 1),
('2024-07-02 11:30:00', 45, 2),
('2024-07-02 13:30:00', 60, 2),
('2024-07-03 12:45:00', 60, 3),
('2024-07-03 14:45:00', 70, 3),
('2024-07-04 14:20:00', 25, 4),
('2024-07-04 16:20:00', 35, 4),
('2024-07-05 15:55:00', 90, 5),
('2024-07-05 17:55:00', 80, 5),
('2024-07-06 16:40:00', 35, 6),
('2024-07-06 18:40:00', 55, 6),
('2024-07-07 17:15:00', 50, 7),
('2024-07-07 19:15:00', 60, 7),
('2024-07-08 18:30:00', 40, 8),
('2024-07-08 20:30:00', 50, 8),
('2024-07-09 19:00:00', 20, 9),
('2024-07-09 21:00:00', 25, 9),
('2024-07-10 20:20:00', 55, 10),
('2024-07-10 22:20:00', 65, 10);

-- Вставляем данные в таблицу comments
INSERT INTO comments (text, video_id, author_id, publication_date) VALUES
('Great video!', 1, 2, '2024-07-01 11:00:00'),
('Loved it!', 2, 3, '2024-07-02 12:00:00'),
('Amazing content!', 3, 4, '2024-07-03 13:00:00'),
('Very informative.', 4, 5, '2024-07-04 14:00:00'),
('Well done!', 5, 6, '2024-07-05 15:00:00'),
('Keep it up!', 6, 7, '2024-07-06 16:00:00'),
('Fantastic!', 7, 8, '2024-07-07 17:00:00'),
('Really enjoyed this.', 8, 9, '2024-07-08 18:00:00'),
('Nice work!', 9, 10, '2024-07-09 19:00:00'),
('Impressive!', 10, 1, '2024-07-10 20:00:00'),
('Awesome!', 11, 2, '2024-07-01 12:30:00'),
('Great content!', 12, 3, '2024-07-02 13:00:00'),
('Interesting video.', 13, 4, '2024-07-03 14:30:00'),
('Loved it a lot!', 14, 5, '2024-07-04 15:30:00'),
('Superb!', 15, 6, '2024-07-05 16:30:00'),
('Very good.', 16, 7, '2024-07-06 17:30:00'),
('Nice one!', 17, 8, '2024-07-07 18:30:00'),
('Liked it!', 18, 9, '2024-07-08 19:30:00'),
('Amazing!', 19, 10, '2024-07-09 20:30:00'),
('Excellent!', 20, 1, '2024-07-10 21:30:00');

-- Вставляем данные в таблицу likes
INSERT INTO likes (user_id, video_id) VALUES
(1, 1),
(2, 1),
(3, 2),
(4, 2),
(5, 3),
(6, 3),
(7, 4),
(8, 4),
(9, 5),
(10, 5),
(1, 6),
(2, 6),
(3, 7),
(4, 7),
(5, 8),
(6, 8),
(7, 9),
(8, 9),
(9, 10),
(10, 10),
(1, 11),
(2, 11),
(3, 12),
(4, 12),
(5, 13),
(6, 13),
(7, 14),
(8, 14),
(9, 15),
(10, 15),
(1, 16),
(2, 16),
(3, 17),
(4, 17),
(5, 18),
(6, 18),
(7, 19),
(8, 19),
(9, 20),
(10, 20);