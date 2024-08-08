USE tiktok;

SELECT * FROM users AS u
JOIN likes AS l
ON u.id = l.user_id
ORDER BY l.video_id
LIMIT 5;

SELECT l.video_id, u.username FROM users AS u
JOIN likes AS l
ON u.id = l.user_id
ORDER BY l.video_id
LIMIT 10;

SELECT u.username, duration 
FROM users AS u
JOIN likes AS l ON u.id = l.user_id AND u.id = 1
JOIN videos AS v ON v.id = l.video_id;

SELECT *
FROM users AS u
JOIN comments AS c ON u.id = c.author_id
AND u.id <= 3;

SELECT 
	u.username,
    c.text,
    v.duration,
    v.upload_date AS 'video upload date'
FROM comments AS c
JOIN users AS u ON
	u.id > 2 AND u.id = c.author_id
JOIN videos AS v ON
	v.id = c.video_id
ORDER BY username;

-- то же самое с WHERE и DESC
SELECT 
	u.username,
    c.text,
    v.duration,
    v.upload_date AS 'video upload date'
FROM comments AS c
JOIN users AS u ON
	u.id = c.author_id
JOIN videos AS v ON
	v.id = c.video_id
WHERE u.id > 2 
ORDER BY username, text DESC;

-- ASC
-- ASCending
-- DESC
-- DESCending

SELECT upload_date, duration
FROM videos AS v
JOIN users AS u ON u.id = v.owner_id
WHERE u.id = 5;

SELECT 
	u.username,
    c.text,
    v.duration,
    v.upload_date AS 'video upload date'
FROM comments AS c
JOIN users AS u ON
	u.id = c.author_id AND u.id > 2
RIGHT JOIN videos AS v ON
	v.id = c.video_id
ORDER BY username, text DESC;