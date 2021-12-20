-- Продукты с ценами меньше или равно 500, группированные по имени
SELECT name
FROM product
WHERE price <= 500
group by name;

--Клиент сколько раз оставил отзыв
SELECT client_id, count(*)
FROM review
group by client_id;

--В продукте сколько категории
SELECT c.name, cc
FROM category AS c
join (SELECT categories_id, count(categories_id) as cc
      FROM product
      group by categories_id) as p
on p.categories_id = c.id;