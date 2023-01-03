CREATE SEQUENCE IF NOT EXISTS test_seq;

SELECT nextval('test_seq');

SELECT currval('test_seq');

SELECT setval('test_seq', 100);

SELECT setval('test_seq', 200, false);

CREATE SEQUENCE IF NOT EXISTS test_seq2 START WITH 100;

CREATE SEQUENCE IF NOT EXISTS test_seq3
INCREMENT 50
MINVALUE 400
MAXVALUE 6000
START WITH 500;

SELECT nextval('test_seq3');

DROP SEQUENCE test_seq3;

CREATE TABLE users (
    user_id SERIAL PRIMARY KEY,
    user_name VARCHAR(50)
);

INSERT INTO users (user_name) VALUES ('ANDAN2');

SELECT * FROM users;

CREATE TABLE users2 (
    user2_id SERIAL PRIMARY KEY,
    user2_name VARCHAR(50)
);
CREATE SEQUENCE user2_user2_id_seq START WITH 100 OWNED BY users2.user2_id;
ALTER TABLE users2 ALTER COLUMN user2_id SET DEFAULT nextval('users2_user2_id_seq');

INSERT INTO users2 (user2_name) VALUES ('ADAM');
