CREATE TABLE "users" (
  "id" SERIAL PRIMARY KEY,
  "name" varchar NOT NULL,
  "email" varchar NOT NULL,
  "password" varchar NOT NULL,
  "age" int
);

CREATE TABLE "posts" (
  "id" SERIAL PRIMARY KEY,
  "title" varchar,
  "description" varchar,
  "author" varchar NOT NULL,
  "content" varchar NOT NULL
);

CREATE TABLE "rel_user_post" (
  "id" SERIAL PRIMARY KEY,
  "user_id" int,
  "post_id" int
);

CREATE TABLE "tags" (
  "id" SERIAL PRIMARY KEY,
  "name" varchar NOT NULL
);

CREATE TABLE "comments" (
  "id" SERIAL PRIMARY KEY,
  "comment" varchar NOT NULL
);

ALTER TABLE "rel_user_post" ADD FOREIGN KEY ("post_id") REFERENCES "users" ("id");

ALTER TABLE "rel_user_post" ADD FOREIGN KEY ("user_id") REFERENCES "posts" ("id");

ALTER TABLE "comments" ADD FOREIGN KEY ("id") REFERENCES "posts" ("id");

ALTER TABLE "posts" ADD FOREIGN KEY ("id") REFERENCES "tags" ("id");

insert into users (name, email, password, age) values ('javier', 'javgmail.com', '1456', 15);

insert into users (name, email, password, age) values ('juan', 'juan@gmail.com', 'asqw', 25);

update users set email = 'juan@gmail.com' where id = 2;

insert into tags (name) values ('deportes');

insert into tags (name) values ('tecnologia');

insert into posts (title, description, author, content) values ('node', 'express', 'alejandro', 'lo mejor');

