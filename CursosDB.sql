CREATE TABLE "roles" (
  "id" uuid PRIMARY KEY,
  "name" varchar NOT NULL
);

CREATE TABLE "users" (
  "id" uuid PRIMARY KEY,
  "name" varchar UNIQUE NOT NULL,
  "email" varchar NOT NULL,
  "password" varchar NOT NULL,
  "age" integer NOT NULL,
  "role_id" uuid NOT NULL
);

CREATE TABLE "categories" (
  "id" uuid PRIMARY KEY,
  "name" varchar NOT NULL
);

CREATE TABLE "courses" (
  "id" uuid PRIMARY KEY,
  "title" varchar NOT NULL,
  "description" varchar NOT NULL,
  "level" varchar NOT NULL,
  "teacher" varchar NOT NULL,
  "category_id" uuid NOT NULL
);

CREATE TABLE "course_video" (
  "id" uuid PRIMARY KEY,
  "title" varchar NOT NULL,
  "url" varchar NOT NULL,
  "course_id" uuid NOT NULL
);

ALTER TABLE "users" ADD FOREIGN KEY ("role_id") REFERENCES "roles" ("id");

ALTER TABLE "courses" ADD FOREIGN KEY ("category_id") REFERENCES "categories" ("id");

ALTER TABLE "course_video" ADD FOREIGN KEY ("course_id") REFERENCES "courses" ("id");


insert into roles (
	id,
	name
) values (
	'a3626b36-4464-4f80-a103-c97ad7f9a2a2',
	'Admin'
), (
	'c6f47a3b-d112-4274-941a-bcc6e7579885',
	'Student'
)

insert into users (
	id,
	name,
	email,
	password,
	age, 
	role_id
) values (
	'15469a70-aad1-4b8d-aec6-725ae809a4e6',
	'Christian',
	'christian@gmail.com',
	'root123',
	20,
	'a3626b36-4464-4f80-a103-c97ad7f9a2a2'
), (
	'fa977344-1932-4f04-8dcb-db97e87a1d1f',
	'Carlos',
	'carlos@gmail.com',
	'pass123',
	18,
	'c6f47a3b-d112-4274-941a-bcc6e7579885'
)

insert into categories (
	id,
	name
) values (
	'1c4bab5b-cd7d-41d3-96f8-ead489fd4ac9',
	'Design'
), (
	'b3b2f9df-cb06-47a5-964a-20aabe9f2d2b',
	'Programming'
)

insert into courses (
	id,
	title,
	description,
	level,
	teacher,
	category_id
) values (
	'667699ff-bb0c-4863-8c9e-771a2b933a55',
	'Adobe Ilustrator',
	'With this course you will be able to manage one of the best and most used tools for design!',
	'Begginers',
	'Dan Scott',
	'1c4bab5b-cd7d-41d3-96f8-ead489fd4ac9'
), (
	'c962bd06-f7b2-477b-91a8-98d6cfce9c9f',
	'Typescript',
	'Learn on of the most useful programming languages for web development. A stricted superset of javascript!',
	'Advanced',
	'The Net Ninja',
	'b3b2f9df-cb06-47a5-964a-20aabe9f2d2b'
)

insert into course_video (
	id,
	title,
	url,
	course_id
) values (
	'345b905f-8800-4073-930b-5086fa16fb90',
	'Adobe Ilustrator for Beginners, free course',
	'https://www.youtube.com/watch?v=Ib8UBwu3yGA',
	'667699ff-bb0c-4863-8c9e-771a2b933a55'
), (
	'dc34896b-f9a6-4025-bb75-160ccad08c45',
	'Typescript Tutorial',
	'https://www.youtube.com/watch?v=2pZmKW9-I_k&t=5s',
	'c962bd06-f7b2-477b-91a8-98d6cfce9c9f'
)










