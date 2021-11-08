-- Клиенты с их отзывами
SELECT name, text FROM client join review r on client.id = r.client_id;

--Категории с их продуктами
SELECT category.name, p.name from category left join product p on category.id = p.categories_id;

--то же самое, right
SELECT category.name, p.name from category right join product p on category.id = p.categories_id;

-- Имя товара, кто их купил, и цена товара
SELECT  c.name name_client, p.name name_product, o.price from "order" o FULL JOIN client c on c.id = o.client_id full JOIN product p on p.id = o.product_id;

--Товар со всевозможными отзывами
select * from product cross join "order";

--Клиент с его заказами
SELECT * from client natural join "order";

--Получили все товары, цена которых ниже чем adidas
SELECT p.name, p.description
from product p, product x
where  p.price < x.price
and x.id = 3;

--товары у которых есть категория
SELECT p.name
from product p
    where exists (select 1 from category where category.id = p.categories_id);

--Товары у которых нет категории
SELECT p.name
from product p
where not exists (select 1 from category where category.id = p.categories_id);