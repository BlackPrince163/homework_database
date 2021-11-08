create table category (
    id serial primary key,
    name varchar(100) NOT NULL,
    CONSTRAINT name_length CHECK (char_length(name) > 1),
    CONSTRAINT unique_fields UNIQUE (name)
);



create table product (
    id serial primary key,
    name varchar(100) NOT NULL,
    description text
    categories_id int,
    quantity int,
    price float,
    foreign key (categories_id) references category (id)
    CONSTRAINT name_length CHECK (char_length(name) > 1),
 );

create table client (
    id serial primary key,
    name varchar(20)  NOT NULL,
    is_super_user bool
    CONSTRAINT unique_fields UNIQUE (name)
);

create table "order" (
  id serial primary key,
  client_id int  NOT NULL,
  product_id int NOT NULL,
  price int ,
  date_created date,
  foreign key (product_id) references product(id),
  foreign key (client_id) references client(id)
  CONSTRAINT text_length CHECK (char_length(text) > 10)
);

create table review (
    id serial primary key,
    client_id int NOT NULL,
    product_id int NOT NULL,
    text text NOT NULL,
    foreign key (client_id) references client(id),
    foreign key (product_id) references product(id)
    CONSTRAINT text_length CHECK (char_length(text) > 5)
);