CREATE USER
  maria
WITH
  PASSWORD 'secure123'
CREATE DATABASE
  college_db
WITH
  OWNER maria
CREATE TABLE
  students (
    id serial PRIMARY KEY,
    name varchar(80),
    age smallint,
    hobby varchar(80)
  )
INSERT INTO
  students (name, age, hobby)
VALUES
  ('Timur', 25, 'chess'),
  ('Diana', 34, 'painting'),
  ('Maria', 22, 'dance')
SELECT
  name,
  hobby
FROM
  students
SELECT
  name
FROM
  students
WHERE
  age < 30
DELETE FROM
  students
DELETE FROM
  students
WHERE
  age = 50
  OR hobby = 'chess'
DELETE FROM
  students
WHERE
  hobby = 'dance'
  AND age > 25
SELECT
  name
FROM
  students
ORDER BY
  age DESC
INSERT INTO
  students (name, age, hobby)
VALUES
  ('Sergey', 50, 'guitar')
UPDATE
  students
SET
  age = 23
WHERE
  name = 'Maria'
DELETE FROM
  students
WHERE
  hobby = 'painting'
SELECT DISTINCT
  hobby
FROM
  students
SELECT
  COUNT(*)
FROM
  students
