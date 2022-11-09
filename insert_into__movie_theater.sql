-- customer_type [later, I realized I can insert multiple values in one pass using multiple ()s]
INSERT INTO customer_type(
	customer_type
)VALUES(
	'child'
);

INSERT INTO customer_type(
	customer_type
)VALUES(
	'adult'
);

INSERT INTO customer_type(
	customer_type
)VALUES(
	'senior'
);

SELECT *
FROM customer_type;

-- movie genres [later, I realized I can insert multiple values in one pass using multiple ()s]
INSERT INTO movie_genres(
	"name"
)VALUES(
	'action'
);

INSERT INTO movie_genres(
	"name"
)VALUES(
	'comedy'
);

INSERT INTO movie_genres(
	"name"
)VALUES(
	'thriller'
);

INSERT INTO movie_genres(
	"name"
)VALUES(
	'romance'
);

INSERT INTO movie_genres(
	"name"
)VALUES(
	'other'
);

SELECT *
FROM movie_genres;

-- ticket types [later, I realized I can insert multiple values in one pass using multiple ()s]
INSERT INTO ticket_types(
	"type",
	price,
	reward_points
)VALUES(
	'regular',
	10.00,
	25
);

INSERT INTO ticket_types(
	"type",
	price,
	reward_points
)VALUES(
	'matinee',
	8.00,
	20
);

INSERT INTO ticket_types(
	"type",
	price,
	reward_points
)VALUES(
	'IMAX',
	12.00,
	30
);

SELECT *
FROM ticket_types;

-- customers [for some reason this was complaining that number of target columns didn't match
-- number of values to insert...finally succeeded when I commented out many columns/values]
INSERT INTO customers(
	first_name,
	last_name,
-- 	street_address1,
-- 	street_address2,
-- 	city,
-- 	state_,
-- 	zip_code,
-- 	telephone,
-- 	email,
-- 	separate_billing_address,
-- 	billing_info,
-- 	rewards_member,
-- 	reward_points,
	customer_type_id
)VALUES(
	'steve',
	'mcteague',
-- 	'123 venice ave',
-- 	'',
-- 	'venice'
-- 	'fl',
-- 	'34292',
-- 	'941-555-1212',
-- 	'steve@example.com'
-- 	'false',
-- 	'1234 5678 9101 1121 123 01/23',
-- 	'true',
-- 	25,
	2
);

SELECT *
FROM customers;

-- movies
INSERT INTO movies(
	title,
	duration,
	rating,
	release_date,
	movie_genre_id
)VALUES(
	'pulp fiction',
	'2 hours 34 minutes',
	'R',
	'1994-01-10',
	5
);

SELECT *
FROM movies;

-- tickets
INSERT INTO tickets(
	paid,
	ticket_type_id,
	movie_id,
	customer_id
)VALUES(
	'true',
	1,
	1,
	2
);

SELECT *
FROM tickets;





