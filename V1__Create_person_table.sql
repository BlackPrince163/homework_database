CREATE TABLE chapter (
    id serial primary key,
    name varchar(100)
);

CREATE TABLE "user" (
    id serial primary key,
    name varchar(100)
);

CREATE TABLE sellers (
    id serial primary key,
    user_name varchar(255)
);

CREATE TABLE "order" (
    id serial primary key,
    id_goods serial not null
);

CREATE TABLE goods (
    id serial primary key,
    name varchar (255),
    quantity integer,
    size_order integer
);

CREATE TABLE custom_products (
    id serial primary key,
    id_user bigint references "user"(id)
);

CREATE TABLE test_reviews(
    id serial primary key,
    id_user bigint references "user"(id),
    text_review varchar
)
