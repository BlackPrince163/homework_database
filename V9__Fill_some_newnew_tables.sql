insert into category values (1, 'dress');
insert into category values (2, 'shoes');
insert into category values (3, 'food');
insert into category values (4, 'instruments');

insert into product
(id, name, description, categories_id, quantity, price)
values (1,
        'nike',
        'Nike is the most valuable sports brand in the world (according to Forbes). The company, founded on January 25, 1964 as Blue Ribbon Sports, is officially Nike.' ,
         2, 3, 800
         );

insert into product
(id, name, description, categories_id, quantity, price)
values (2,
        'bread',
        'Хлеб — хлебобулочное изделие, получаемое путём выпекания теста (состоящего как минимум из муки и воды), разрыхлённого дрожжами или закваской.' ,
         3, 20, 1
         );

insert into product
(id, name, description, categories_id, quantity, price)
values (3,
        'adidas',
        'Adidas is a multinational corporation, founded and headquartered in Herzogenaurach, Germany, which designs and manufactures footwear, apparel, and accessories. The Adidas group is made up of Reebok, TaylorMade, and Runtastic.' ,
        2, 10, 500
       );

insert into product
(id, name, description, categories_id, quantity, price)
values (4,
        'T-shirt PUMA',
        'Майка — предмет одежды. Относится к нательному белью и, в основном, носится под рубашкой. ... Иногда майки шьют не из цельной хлопчатобумажной ткани, а, например, из сетки с довольно крупными ячейками. ',
        1, 1, 300
       );

insert into client values (1, 'Niyaz', True);
insert into client values (2, 'Artur', False);
insert into client values (3, 'Ivan', False);
insert into client values (4, 'Dinis', False);

insert into "order"
(id, client_id, product_id, price, date_created)
values (1, 2, 3, 500, CURRENT_TIMESTAMP);

insert into "order"
(id, client_id, product_id, price, date_created)
values (2, 3, 4, 500, CURRENT_TIMESTAMP);

insert into "order"
(id, client_id, product_id, price, date_created)
values (3, 4, 1, 800, CURRENT_TIMESTAMP);

insert into review
(id, client_id, product_id, text)
values (1, 2, 3, 'Хорошие кроссы. Рекомендую!');

insert into review
(id, client_id, product_id, text)
values (2, 4, 1, 'Фигня кроссы. ---')