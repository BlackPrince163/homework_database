/* Удаление заказа по цене. */
with order_to_delete (id) as (
    select id, price
    from "order"
    where price = 500
)
delete from "order"
where id in (select id from order_to_delete);

/* Удаление товара меньше определенной цены */
with delete_product_price (id) as (
    select id, price
    from product
    where price < 100
)
delete from product
where id in (select id from delete_product_price)

