-- Create these tables first since they don't have any foreign keys
CREATE TABLE "ticket_types" (
  "ticket_type_id" SERIAL,
  "type" VARCHAR(10),
  "price" NUMERIC(5,2),
  "reward_points" INTEGER,
  PRIMARY KEY ("ticket_type_id")
);

CREATE TABLE "movie_genres" (
  "movie_genre_id" SERIAL,
  "name" VARCHAR(50),
  PRIMARY KEY ("movie_genre_id")
);

CREATE TABLE "customer_type" (
  "customer_type_id" SERIAL,
  "customer_type" VARCHAR(10),
  PRIMARY KEY ("customer_type_id")
);

-- Create these tables in order next based on their foreign key dependencies
CREATE TABLE "movies" (
  "movie_id" SERIAL,
  "title" VARCHAR(100),
  "duration" INTERVAL,
  "rating" VARCHAR(10),
  "release_date" DATE,
  "movie_genre_id" INTEGER,
  PRIMARY KEY ("movie_id"),
  FOREIGN KEY ("movie_genre_id") REFERENCES "movie_genres"("movie_genre_id")
);

CREATE TABLE "customers" (
  "customer_id" SERIAL,
  "first_name" VARCHAR(50),
  "last_name" VARCHAR(50),
  "street_address1" VARCHAR(100),
  "street_address2" VARCHAR(100),
  "city" VARCHAR(50),
  "state" VARCHAR(2),
  "zip_code" VARCHAR(5),
  "telephone" VARCHAR(12),
  "email" VARCHAR(75),
  "separate_billing_address" BOOLEAN,
  "billing_info" VARCHAR(100),
  "rewards_member" BOOLEAN,
  "reward_points" INTEGER,
  "most_recent_transaction_date" DATE,
  "customer_type_id" INTEGER,
  PRIMARY KEY ("customer_id"),
  FOREIGN KEY ("customer_type_id") REFERENCES "customer_type"("customer_type_id")
);

CREATE TABLE "concessions" (
  "concession_id" SERIAL,
  "type" VARCHAR(100),
  "price" NUMERIC(5,2),
  "customer_id" INTEGER,
  PRIMARY KEY ("concession_id"),
  FOREIGN KEY ("customer_id") REFERENCES "customers"("customer_id")
);

CREATE TABLE "tickets" (
  "ticket_id" SERIAL,
  "paid" BOOLEAN,
  "ticket_type_id" INTEGER,
  "movie_id" INTEGER,
  "customer_id" INTEGER,
  PRIMARY KEY ("ticket_id"),
  FOREIGN KEY ("movie_id") REFERENCES "movies"("movie_id"),
  FOREIGN KEY ("customer_id") REFERENCES "customers"("customer_id"),
  FOREIGN KEY ("ticket_type_id") REFERENCES "ticket_types"("ticket_type_id")
);



