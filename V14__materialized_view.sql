CREATE MATERIALIZED VIEW check_all_client_review AS
SELECT * FROM review WHERE client_id = 4;

CREATE MATERIALIZED VIEW search_review AS
SELECT * FROM review WHERE text ILIKE '%Фигня%';

INSERT INTO review(id,client_id, product_id, text) VALUES (3, 4, 4, 'continue');

SELECT * FROM check_all_client_review;
SELECT * FROM search_review;

REFRESH MATERIALIZED VIEW check_all_client_review;
REFRESH MATERIALIZED VIEW search_review;

SELECT * FROM check_all_client_review;
SELECT * FROM search_review;