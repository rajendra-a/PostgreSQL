CREATE TABLE persons (
    person_id SERIAL PRIMARY KEY,
    first_name VARCHAR(20) NOT NULL,
    last_name VARCHAR(20) NOT NULL
);


ALTER TABLE persons
ADD COLUMN age INT NOT NULL;
 
ALTER TABLE persons
ADD COLUMN age INT NOT NULL;
SELECT * FROM persons;

SELECT * FROM persons;

ALTER TABLE persons
ADD COLUMN nationality varchar(20) NOT NULL,
ADD COLUMN email varchar(20) UNIQUE;

ALTER TABLE persons
ADD COLUMN nationality varchar(20) NOT NULL,
ADD COLUMN email varchar(20) UNIQUE;

SELECT * FROM persons;


ALTER TABLE persons
RENAME TO users;
 
ALTER TABLE persons
RENAME TO users;
 
ALTER TABLE users
RENAME TO persons;
 
ALTER TABLE users
RENAME TO persons;
 
ALTER TABLE persons
RENAME COLUMN age TO persons_age;
 
ALTER TABLE persons
RENAME COLUMN age TO persons_age;
 
ALTER TABLE persons
RENAME COLUMN persons_age TO person_age;
 
ALTER TABLE persons
RENAME COLUMN persons_age TO person_age;
 
ALTER TABLE persons
DROP COLUMN person_age;
 
ALTER TABLE persons
DROP COLUMN person_age;
 
ALTER TABLE persons
ADD COLUMN age varchar(20);
 
ALTER TABLE persons
ADD COLUMN age varchar(20);
 
ALTER TABLE persons
ALTER COLUMN age TYPE INT
USING age::INT;
 
ALTER TABLE persons
ALTER COLUMN age TYPE INT
USING age::INT;
 
ALTER TABLE persons
ADD COLUMN is_enable VARCHAR(20);
 
ALTER TABLE persons
ADD COLUMN is_enable VARCHAR(20);
 
ALTER TABLE persons
ALTER COLUMN is_enable SET DEFAULT 'Y';
 
ALTER TABLE persons
ALTER COLUMN is_enable SET DEFAULT 'Y';
 
ALTER TABLE persons
ALTER COLUMN is_enable DROP DEFAULT;
 
ALTER TABLE persons
ALTER COLUMN is_enable DROP DEFAULT;
 
ALTER TABLE persons
ALTER COLUMN is_enable TYPE BOOLEAN
USING is_enable::BOOLEAN;
 
ALTER TABLE persons
ALTER COLUMN is_enable TYPE BOOLEAN
USING is_enable::BOOLEAN;
 
create TABLE web_links(
link_id SERIAL PRIMARY key,
link_url VARCHAR(255) NOT NULL,
link_target VARCHAR(20)
);
 
create TABLE web_links(
link_id SERIAL PRIMARY key,
link_url VARCHAR(255) NOT NULL,
link_target VARCHAR(20)
);
 
INSERT INTO web_links (link_url, link_target) values ('http://www.google.com', '_blank');
 
INSERT INTO web_links (link_url, link_target) values ('http://www.google.com', '_blank');
 
select * FROM web_links;
 
select * FROM web_links;
 
ALTER TABLE web_links
ALTER COLUMN link_url TYPE varchar(255)
using link_url::varchar(255);
 
 
INSERT INTO web_links (link_url, link_target) values ('http://www.google.com', '_blank');
 

 
 
ALTER TABLE web_links
ALTER COLUMN link_url SET NOT NULL;
 
ALTER TABLE web_links
ALTER COLUMN link_url DROP NOT NULL;
 

 

 
INSERT INTO web_links (link_url, link_target) values ('http://www.google.com', '_blank');

select * FROM web_links;
 

TRUNCATE web_links;



ALTER TABLE web_links
ADD CONSTRAINT unique_web_url UNIQUE(link_url);


 
ALTER TABLE web_links
ADD CONSTRAINT unique_web_url UNIQUE(link_url);

ALTER TABLE web_links
ADD CONSTRAINT unique_web_url UNIQUE(link_url);

INSERT INTO web_links (link_url, link_target) values ('http://www.google.com', '_blank');

INSERT INTO web_links (link_url, link_target) values ('http://www.google.com', '_blank');
 
ALTER TABLE web_links
ADD COLUMN is_enable varchar(2);

ALTER TABLE web_links
ADD COLUMN is_enable varchar(2);

alter Table web_links
add check (is_enable in ('Y', 'N'));

alter Table web_links
add check (is_enable in ('Y', 'N'));

INSERT INTO web_links (link_url, link_target, is_enable) values ('http://www.df.com', '_blank', 'Y');

INSERT INTO web_links (link_url, link_target, is_enable) values ('http://www.df.com', '_blank', 'Y');
 
select * from web_links;

select * from web_links;
