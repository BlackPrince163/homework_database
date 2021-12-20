--Для доступа к тексту в отзывах
CREATE INDEX text_in_reviews on review USING hash(text);

--Для доступа к именам в категории
CREATE INDEX name_in_category on category USING hash(name)