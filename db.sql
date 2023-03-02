CREATE TABLE "users" (
  "id" serial PRIMARY KEY,
  "name" varchar NOT NULL,
  "email" varchar UNIQUE NOT NULL,
  "password" varchar NOT NULL,
  "age" int NOT NULL DEFAULT 18,
  "gender" char(1) DEFAULT 'M'
);

CREATE TABLE "courses" (
  "id" serial PRIMARY KEY,
  "user_id" int NOT NULL,
  "title" varchar NOT NULL,
  "level_id" int NOT NULL,
  "description" text NOT NULL,
  "teacher_id" int NOT NULL
);

CREATE TABLE "course_videos" (
  "id" serial PRIMARY KEY,
  "course_id" int NOT NULL,
  "title" varchar NOT NULL,
  "url" text UNIQUE NOT NULL
);

CREATE TABLE "categories" (
  "id" serial PRIMARY KEY,
  "name" varchar UNIQUE NOT NULL,
  "id_course" int NOT NULL
);

CREATE TABLE "teachers" (
  "id" serial PRIMARY KEY,
  "name" varchar
);

CREATE TABLE "levels" (
  "id" serial PRIMARY KEY,
  "name" varchar NOT NULL
);

ALTER TABLE "courses" ADD FOREIGN KEY ("user_id") REFERENCES "users" ("id");

ALTER TABLE "course_videos" ADD FOREIGN KEY ("course_id") REFERENCES "courses" ("id");

ALTER TABLE "categories" ADD FOREIGN KEY ("id_course") REFERENCES "courses" ("id");

ALTER TABLE "courses" ADD FOREIGN KEY ("teacher_id") REFERENCES "teachers" ("id");

ALTER TABLE "courses" ADD FOREIGN KEY ("level_id") REFERENCES "levels" ("id");