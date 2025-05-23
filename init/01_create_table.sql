USE mydb;
CREATE TABLE IF NOT EXISTS users (
  id INT AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(255) NOT NULL,
  flag BOOLEAN DEFAULT FALSE
);

CREATE TABLE IF NOT EXISTS colors (
  id INT AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(50) NOT NULL
);

ALTER TABLE users
  ADD COLUMN favorite_color INT,
  ADD FOREIGN KEY (favorite_color) REFERENCES colors(id);

INSERT INTO colors (
  name
) VALUES ( "blue" ), ( "red" ), ( "green" );

INSERT INTO users (
  name,
  flag,
  favorite_color
) VALUES ( "hans", TRUE, 2 ), ("susi", FALSE, 2), ("ben", FALSE, "1");
