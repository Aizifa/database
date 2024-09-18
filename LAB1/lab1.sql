CREATE DATABASE lab1;

-- new table "users"
CREATE TABLE users(
    id SERIAL,
    firstname VARCHAR(50),
    lastname VARCHAR(50)
);

-- new column
ALTER TABLE users
    ADD COLUMN isadmin INTEGER;

-- change datatype
ALTER TABLE users
    ALTER COLUMN isadmin SET DATA TYPE BOOLEAN;

-- default value to column "isadmin"
ALTER TABLE users
    ALTER COLUMN isadmin SET DEFAULT false;

-- add primary key constrait
ALTER TABLE users
    ADD CONSTRAINT pkey_id PRIMARY KEY (id);

-- new table "tasks"
CREATE TABLE tasks(
    id SERIAL,
    name varchar(50),
    user_id INTEGER
);

-- delete table then db too
DROP TABLE tasks;
DROP DATABASE lab1;
