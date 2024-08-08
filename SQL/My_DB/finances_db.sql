DROP DATABASE IF EXISTS finances;
CREATE DATABASE IF NOT EXISTS finances;
USE finances;
CREATE TABLE IF NOT EXISTS phones (
    id INT PRIMARY KEY AUTO_INCREMENT,
    title VARCHAR(30),
    factory VARCHAR(30),
    price INT
);
INSERT INTO phones (title, factory, price) VALUES
('iPhone 14', 'Apple', 999),
('iPhone 14', 'Apple', 999),
('iPhone 14', 'Apple', 999),
('Samsung Galaxy S23', 'Samsung', 799),
('Google Pixel 7', 'Google', 599),
('OnePlus 11', 'OnePlus', 699),
('Sony Xperia 1 IV', 'Sony', 1099),
('Xiaomi Mi 13', 'Xiaomi', 649),
('Huawei P50', 'Huawei', 699),
('Nokia XR20', 'Nokia', 549),
('Motorola Edge 40', 'Motorola', 799),
('Asus ROG Phone 6', 'Asus', 899),
('Oppo Find X5', 'Oppo', 899),
('Vivo X80', 'Vivo', 749),
('Realme GT 2 Pro', 'Realme', 749),
('Realme GT 2 Pro', 'Realme', 749),
('Realme GT 2 Pro', 'Realme', 749),
('ZTE Axon 40', 'ZTE', 799),
('Honor Magic4 Pro', 'Honor', 999),
('LG Velvet', 'LG', 599),
('HTC U23', 'HTC', 699),
('Fairphone 4', 'Fairphone', 579),
('BlackBerry Key2', 'BlackBerry', 649),
('Alcatel 3L', 'Alcatel', 199);