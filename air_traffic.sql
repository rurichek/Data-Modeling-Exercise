-- from the terminal run:
-- psql < air_traffic.sql

DROP DATABASE IF EXISTS air_traffic;

CREATE DATABASE air_traffic;

\c air_traffic

CREATE TABLE tickets
(
  id SERIAL PRIMARY KEY,
  first_name TEXT NOT NULL,
  last_name TEXT NOT NULL,
  seat TEXT NOT NULL,
  departure TIMESTAMP NOT NULL,
  arrival TIMESTAMP NOT NULL,
  airline TEXT NOT NULL,
  from_city TEXT NOT NULL,
  from_country TEXT NOT NULL,
  to_city TEXT NOT NULL,
  to_country TEXT NOT NULL
);

INSERT INTO tickets
  (seat, departure, arrival, airline_id, from_id, to_id)
VALUES
-- customer id is the same as passenger id
  ('customer_id', '33B', '2018-04-08 09:00:00', '2018-04-08 12:00:00', 'airline_id', 'from_id', 'to_id'),
  ('customer_id', '8A', '2018-12-19 12:45:00', '2018-12-19 16:15:00', 'airline_id', 'from_id', 'to_id'),
  ('customer_id', '12F', '2018-01-02 07:00:00', '2018-01-02 08:03:00', 'airline_id', 'from_id', 'to_id'),
  ('customer_id', '20A', '2018-04-15 16:50:00', '2018-04-15 21:00:00', 'airline_id', 'from_id', 'to_id'),
  ('customer_id', '23D', '2018-08-01 18:30:00', '2018-08-01 21:50:00', 'airline_id', 'from_id', 'to_id'),
  ('customer_id', '18C', '2018-10-31 01:15:00', '2018-10-31 12:55:00', 'airline_id', 'from_id', 'to_id'),
  ('customer_id', '9E', '2019-02-06 06:00:00', '2019-02-06 07:47:00', 'airline_id', 'from_id', 'to_id'),
  ('customer_id', '1A', '2018-12-22 14:42:00', '2018-12-22 15:56:00', 'airline_id', 'from_id', 'to_id'),
  ('customer_id', '32B', '2019-02-06 16:28:00', '2019-02-06 19:18:00', 'airline_id', 'from_id', 'to_id'),
  ('customer_id', '10D', '2019-01-20 19:30:00', '2019-01-20 22:45:00', 'airline_id', 'from_id', 'to_id');

CREATE TABLE books (
  id SERIAL PRIMARY KEY,
  first_namee TEXT,
  last_name TEXT
);

INSERT INTO passengers (first_name, last_name)
VALUES
  ('Jennifer', 'Finch'),
  ('Thadeus', 'Gahercoal'),
  ('Sonja', 'Pauley'),
  ('Waneta', 'Skeleton'),
  ('Berkie', 'Wycliff'),
  ('Alvin', 'Leathes'),
  ('Cory', 'Squibbes');

CREATE TABLE airline (
  id SERIAL PRIMARY KEY,
  name TEXT
);

INSERT INTO airline (name)
VALUES
 ('United'),
 ('British Airways'),
 ('Delta'),
 ('TUI Fly Belgium'),
 ('Air China'),
 ('American Airlines'),
 ('Avianca Brasil');

CREATE TABLE location (
  id SERIAL PRIMARY KEY,
  city TEXT,
  country TEXT
);

INSERT INTO location (city, country)
VALUES
 ('Washington DC', 'United States'),
 ('Tokyo', 'Japan'),
 ('Los Angeles' ),
 ('Seattle', 'United States'),
 ('Paris', 'France'),
 ('Dubai', 'UAE'),
 ('New York', 'United States');
 ('Cedar Rapids', 'United States');
 ('Charlotte', 'United States');
 ('Sao Paolo', 'Brazil');
 ('London', 'United Kingdom');
 ('Las Vegas', 'United States');
 ('Mexico City', 'Mexico');
 ('Casablanca', 'Morroco');
 ('Beijing', 'China');
 ('Chicago', 'United States');
 ('New Orleans', 'United States');
 ('Santiago', 'Chile');