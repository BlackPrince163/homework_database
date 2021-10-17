create VIEW search_all_shoes
as select * from product
    where categories_id = 2
        WITH LOCAL CHECK OPTION;

create view search_product_price_500$
as select * from product
    where price = 500
        with local check option