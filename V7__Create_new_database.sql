create table category (
    id serial primary key,
    name varchar(100)
);



create table product (
    id serial primary key,
    name varchar(100),
    description text,
    categories_id int,
    quantity int,
    price float,
    foreign key (categories_id) references category (id)

 );

create table client (
    id serial primary key,
    name varchar(20),
    is_super_user bool
);

create table "order" (
  id serial primary key,
  client_id int,
  product_id int,
  price int,
  date_created date,
  foreign key (product_id) references product(id),
  foreign key (client_id) references client(id)
);

create table review (
    id serial primary key,
    client_id int,
    product_id int,
    text text,
    foreign key (client_id) references client(id),
    foreign key (product_id) references product(id)
);