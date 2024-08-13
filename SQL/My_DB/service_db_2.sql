DROP DATABASE IF EXISTS service;
CREATE DATABASE IF NOT EXISTS service;
USE service;
CREATE TABLE IF NOT EXISTS users 
(
	id INT PRIMARY KEY AUTO_INCREMENT,
    email VARCHAR(50) NOT NULL,
    phone VARCHAR(15) NOT NULL,
    password_hash VARCHAR(30) NOT NULL,
    registration_date DATETIME NOT NULL DEFAULT NOW()
);
CREATE TABLE IF NOT EXISTS orders 
(
	id INT PRIMARY KEY AUTO_INCREMENT,
    order_datetime DATETIME NOT NULL DEFAULT NOW(),
    total INT UNSIGNED NOT NULL,
    user_id INT,
    CONSTRAINT orders_users_fk
    FOREIGN KEY (user_id) REFERENCES users(id)
    ON DELETE CASCADE ON UPDATE CASCADE -- каскадное удаление и обновление данных в связанных таблицах
);

INSERT INTO users(email, phone, password_hash, registration_date) VALUES
('user1@example.com', '123-456-7890', 'hash1', '2024-01-01 10:00:00'),
('user2@example.com', '123-456-7891', 'hash2', '2024-02-01 11:30:00'),
('user3@example.com', '123-456-7892', 'hash3', '2024-03-01 12:45:00');

INSERT INTO orders(order_datetime, total, user_id) VALUES
('2024-01-15 10:30:00', 150.00, 1),
('2024-02-20 12:45:00', 200.50, 2),
('2024-03-10 14:00:00', 300.75, 2);

SELECT * FROM users;
SELECT * FROM orders;

DELETE FROM users WHERE id = 4;
UPDATE users SET id = 4 WHERE id = 2;