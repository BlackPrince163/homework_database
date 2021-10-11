CREATE VIEW search_all_positive_reviews
AS SELECT * FROM reviews
   WHERE text_review LIKE '%хороший%'
        WITH LOCAL CHECK OPTION;

INSERT INTO search_all_positive_reviews(id_user, text_review) VALUES (3, 'хороший');