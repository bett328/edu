DROP DATABASE IF EXISTS shop;
CREATE DATABASE IF NOT EXISTS shop;
USE shop;
CREATE TABLE IF NOT EXISTS users 
(
	id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NULL,
    email VARCHAR(50) NOT NULL,
    phone VARCHAR(15) NOT NULL,
    password_hash VARCHAR(30) NOT NULL,
    registration_date DATETIME NOT NULL DEFAULT NOW(),
    authorizationa_type VARCHAR(10),
    user_address VARCHAR(100)
);
CREATE TABLE IF NOT EXISTS shops 
(
	id INT PRIMARY KEY AUTO_INCREMENT,
    shop_title VARCHAR(50) NOT NULL,
    schedule VARCHAR(50) NOT NULL,
    shop_address VARCHAR(100) NOT NULL
);
CREATE TABLE IF NOT EXISTS factories 
(
	id INT PRIMARY KEY AUTO_INCREMENT,
    factory_title VARCHAR(100) NOT NULL,
    address VARCHAR(100) NOT NULL,
    registration_date DATETIME NOT NULL DEFAULT NOW(),
    phone VARCHAR(15) NOT NULL,
    status VARCHAR(20) NOT NULL
);
CREATE TABLE IF NOT EXISTS products 
(
	id INT PRIMARY KEY AUTO_INCREMENT,
    product_title VARCHAR(100) NOT NULL,
    price INT UNSIGNED NOT NULL,
    discount TINYINT UNSIGNED NOT NULL DEFAULT 0,
    rating INT DEFAULT 0,
    expiration_date DATETIME NOT NULL,
    factory_id INT,
    CONSTRAINT factory_product_fk
    FOREIGN KEY (factory_id) REFERENCES factories(id)
    ON UPDATE CASCADE
);
CREATE TABLE IF NOT EXISTS basket 
(
	user_id INT,
    product_id INT,
    PRIMARY KEY(user_id, product_id)
);
CREATE TABLE IF NOT EXISTS orders 
(
	id INT PRIMARY KEY AUTO_INCREMENT,
    order_datetime DATETIME NOT NULL DEFAULT NOW(),
    total INT UNSIGNED NOT NULL,
    discount TINYINT UNSIGNED NOT NULL,
    user_id INT,
    CONSTRAINT orders_users_fk
    FOREIGN KEY (user_id) REFERENCES users(id)
    ON UPDATE CASCADE
);
CREATE TABLE IF NOT EXISTS products_orders 
(
	product_id INT,
    order_id INT,
    PRIMARY KEY(product_id, order_id)
);
CREATE TABLE IF NOT EXISTS products_shops 
(
	shop_id  INT,
    product_id INT,
    PRIMARY KEY(shop_id, product_id)
);
CREATE TABLE IF NOT EXISTS favorite_products 
(
	user_id INT,
    product_id INT,
    PRIMARY KEY(user_id, product_id)
);
CREATE TABLE IF NOT EXISTS  favorite_shops 
(
	user_id INT,
    shop_id INT,
    PRIMARY KEY(user_id, shop_id)
);
