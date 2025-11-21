SELECT ism, familiya, email 
FROM foydalanuvchilar 
WHERE shahar = 'Toshkent';

-- --------------------------

SELECT * 
FROM foydalanuvchilar 
WHERE royhat_vaqt >= '2024-03-01'
  AND LAST_LOGIN LIKE '2024-11%';

-- --------------------------

SELECT shahar, COUNT(*) as foydalanuvchilar_soni
FROM foydalanuvchilar
GROUP BY shahar
ORDER BY foydalanuvchilar_soni DESC;

-- --------------------------

SELECT COUNT(*) as gmail_active_soni
FROM foydalanuvchilar
WHERE email LIKE '%@gmail.com'
  AND holati = 'active';

-- --------------------------

SELECT * 
FROM foydalanuvchilar
ORDER BY royhat_vaqt DESC
LIMIT 5;

-- --------------------------

SELECT ism, familiya, email, royhat_vaqt
FROM foydalanuvchilar
WHERE royhat_vaqt < '2024-07-01';
