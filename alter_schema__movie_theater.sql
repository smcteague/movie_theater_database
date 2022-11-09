ALTER TABLE concessions
ALTER COLUMN customer_id
SET NOT NULL;

ALTER TABLE customers
ALTER COLUMN customer_type_id
SET NOT NULL;

ALTER TABLE movies
ALTER COLUMN movie_genre_id
SET NOT NULL;

ALTER TABLE tickets
ALTER COLUMN ticket_type_id SET NOT NULL,
ALTER COLUMN movie_id SET NOT NULL,
ALTER COLUMN customer_id SET NOT NULL;

ALTER TABLE customers
RENAME COLUMN "state" TO state_;

