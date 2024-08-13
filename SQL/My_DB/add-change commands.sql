USE service;

ALTER TABLE users
RENAME TO users1;
ALTER TABLE users1
RENAME TO users;

SHOW TABLES;
DESCRIBE USERS;

-- Добавить стобец в начало
ALTER TABLE users
ADD birthdate DATE NOT NULL FIRST;

-- Добавить стобец после phone
ALTER TABLE users
ADD age TINYINT AFTER phone,
ADD bio TINYTEXT NOT NULL;

-- Изменить описание столбца (теперь может быть пустым)
ALTER TABLE users
MODIFY birthdate DATE NULL;

-- Удалить столбец
ALTER TABLE users
DROP COLUMN birthdate;

-- Изменить типа данных столбца
ALTER TABLE users
MODIFY age TINYINT UNSIGNED,
MODIFY bio VARCHAR(140) NULL;

-- Изменить название столбца
ALTER TABLE users
CHANGE phone phone_number VARCHAR(15) NOT NULL;