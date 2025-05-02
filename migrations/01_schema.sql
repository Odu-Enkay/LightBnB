--DROP TABLE users IF EXISTs CASCADE;

CREATE TABLE users (
  id SERIAL PRIMARY KEY NOT NULL,
  name VARCHAR(255),
  email VARCHAR(255),
  password VARCHAR(255)
);

CREATE TABLE reservations(
  id SERIAL PRIMARY KEY NOT NULL,
  start_date DATE,
  end_date DATE,
  property_id INTEGER,
  guest_id INTEGER NOT NULL REFERENCES users(id) ON DELETE CASCADE,
);

CREATE TABLE property_reviews(
  id SERIAL PRIMARY KEY NOT NULL,
  guest_id INTEGER NOT NULL REFERENCES users(id) ON DELETE CASCADE,
  property_id INTEGER NOT NULL REFERENCES property(id) ON DELETE CASCADE,
  reservation_id   INTEGER,
  rating SMALLTT,
  message TETX;
);

CREATE TABLE properties(
  id SERIAL PRIMARY KEY NOT NULL;
  owner_id INTEGER NOT NULL REFERENCES users(id) ON DELETE CASCADE
)

