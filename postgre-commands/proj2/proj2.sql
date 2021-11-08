--Create a query that will retrieve only selected columns from the selected table
SELECT "link", "name" FROM lesson;

--Create a query that will select user/person or similar table based on the email
SELECT email, first_name, last_name FROM "user" WHERE email LIKE '%@gmail.com';

--Create at least one UPDATE, INSERT, DELETE, and ALTER TABLE query
UPDATE "comments" SET "text" = 'Once again, epic!' WHERE "id" = 5
INSERT INTO blocked_profiles (blocker_id, blocked_id, "timestamp") VALUES (37, 44, NOW());
DELETE FROM blocked_profiles WHERE blocker_id = 37 AND blocked_id = 44;
ALTER TABLE "subscription" ALTER COLUMN price_month TYPE INT;

--Create a series of queries that will separately use the following:
--WHERE
SELECT last_name FROM "user" WHERE first_name = 'Borzek';
--LIKE; NOT LIKE
SELECT first_name FROM "user" WHERE first_name LIKE 'S%';
SELECT DISTINCT first_name FROM "user" WHERE first_name NOT LIKE 'S%';
--SUBSTRING; TRIM
SELECT DISTINCT SUBSTRING("url" FOR 45) FROM "certificate";
SELECT DISTINCT TRIM(LEADING 'certificateHDpunjabinovirus100legit.com' FROM "url") FROM certificate;
--COUNT; SUM; MIN; MAX; AVG;
SELECT COUNT(DISTINCT "id") FROM "user";
SELECT SUM(s.price_year) AS income_from_yearly_subscriptions FROM "subscription" s RIGHT JOIN "user_subscription" u ON u.subscription_id = s.id WHERE  u.end - u.start >= INTERVAL '1' year;
SELECT MIN(course_rating) FROM user_course;
SELECT MAX(course_rating) FROM user_course;
SELECT AVG(course_rating) FROM user_course;
--GROUP BY; GROUP BY and HAVING; GROUP BY, HAVING, and WHERE;
SELECT user_id, AVG(course_rating) FROM user_course GROUP BY user_id;
SELECT user_id, AVG(course_rating) FROM user_course GROUP BY user_id HAVING AVG(course_rating) IS NOT NULL;
SELECT is_verified, COUNT(DISTINCT "id") FROM "user" WHERE first_name LIKE 'B%' GROUP BY "is_verified" HAVING "is_verified" = '1';
--UNION ALL / UNION
WITH rel_count_of_user_1(num) as
(SELECT COUNT(DISTINCT user2_id) FROM relationship WHERE user1_id = 1 
UNION SELECT COUNT(DISTINCT user1_id) FROM relationship WHERE user2_id = 1)
SELECT SUM(num) FROM rel_count_of_user_1;
--DISTINCT
SELECT DISTINCT first_name from "user";
--LEFT JOIN; RIGHT JOIN; FULL OUTER JOIN
SELECT u.first_name, ': ', c.text FROM "user" u RIGHT JOIN "comments" c ON u.id = c.user_id;
SELECT u.first_name, ': ', c.text FROM "user" u LEFT JOIN "comments" c ON u.id = c.user_id;
SELECT u.first_name, ': ', c.text FROM "user" u FULL OUTER JOIN "comments" c ON u.id = c.user_id; --same as left join, there are no comments without an user id

--Use in one query: LEFT JOIN, GROUP BY, HAVING, ORDER BY, AVG and DISTINCT
SELECT DISTINCT u.id, u.first_name, u.last_name, AVG(c.course_rating) AS AVG_couse_rating FROM "user_course" c LEFT JOIN "user" u ON u.id = c.user_id GROUP BY u.id HAVING AVG(c.course_rating) IS NOT NULL ORDER BY u.last_name;

--Create a query that will return the data from an arbitrary table for the last one and half days
SELECT * FROM certificate WHERE NOW() - "timestamp" < '36:0:0';

--Create a query that will return data from the last month (starting from the first day of the month)
SELECT * FROM certificate WHERE date_trunc('month', NOW()) = date_trunc('month', "timestamp");

--Write a select that will remove accents on a selected string (e.g.,  ́a will be converted to a)
INSERT INTO "user" (first_name, last_name, email, is_verified) VALUES ('Táňa', 'Čmeláčková', 'tanacm@gmail.com', '1');
CREATE EXTENSION UNACCENT;
SELECT id, UNACCENT(first_name), UNACCENT(last_name) FROM "user";

--Create a query for pagination in an application (use LIMIT and OFFSET)
SELECT * FROM "user" ORDER BY "id" LIMIT 5 OFFSET 0;
SELECT * FROM "user" ORDER BY "id" LIMIT 5 OFFSET 5;
SELECT * FROM "user" ORDER BY "id" LIMIT 5 OFFSET 10;
SELECT * FROM "user" ORDER BY "id" LIMIT 5 OFFSET 15;
SELECT * FROM "user" ORDER BY "id" LIMIT 5 OFFSET 20;
--etc. LIMIT would be set from other programming language and offset would be its multiples

--Create a query that will use subquery in FROM
SELECT first_name, last_name, abbreviation FROM (SELECT * FROM "user" INNER JOIN "nation" ON "user".nation_id  = "nation".id) AS sub;

--Create a query that will use subquery in WHERE condition
SELECT * FROM "user" WHERE "nation_id" = (SELECT "id" FROM "nation" WHERE "abbreviation" = 'CZ');

--Create a query that will use any aggregate function and GROUP BY with HAVING
SELECT n.abbreviation, COUNT(DISTINCT u."id") FROM "user" u INNER JOIN nation n ON u.nation_id = n.id GROUP BY n.abbreviation HAVING n.abbreviation LIKE 'CZ' OR n.abbreviation LIKE 'USA';

--Create a query that will join at least five tables
SELECT u.first_name, u.last_name, subs.title AS "subscription", c.name AS course_name, c.user_feedback FROM (("user_subscription" us LEFT JOIN "subscription" s ON us.subscription_id = s.id) AS subs FULL OUTER JOIN ("user" u LEFT JOIN (user_course uc INNER JOIN course co ON co.id = uc.course_id) AS c ON u.id = c.user_id) ON subs.user_id = u.id);

--Create a query that will join at least three tables and will use GROUP BY, HAVING, and WHERE
UPDATE "user" set "is_verified" = '1' WHERE "id" = 1; --in order to have any results
SELECT n.abbreviation AS country, COUNT(DISTINCT c.id) AS num_of_comments FROM (nation n RIGHT JOIN "user" u ON u.nation_id = n.id LEFT JOIN "comments" c ON c.user_id = u.id) WHERE u.is_verified = '1' GROUP BY n.abbreviation HAVING COUNT(DISTINCT c.id) > 0;

--Modify the database from the first project assignment to improve integrity constraints (e.g., reduce the size for varchar columns), set cascading
ALTER TABLE "subscription" ALTER COLUMN "description" TYPE VARCHAR(150);
--user_course
ALTER TABLE user_course DROP constraint user_course_user_id_fkey, ADD constraint user_course_user_id_fkey FOREIGN KEY (user_id) REFERENCES "user" ON DELETE CASCADE;
ALTER TABLE user_course DROP constraint user_course_course_id_fkey, ADD constraint user_course_course_id_fkey FOREIGN KEY (course_id) REFERENCES course ON DELETE CASCADE;
--relationship
ALTER TABLE "relationship" DROP CONSTRAINT relationship_user1_id_fkey, ADD CONSTRAINT relationship_user1_id_fkey FOREIGN KEY (user1_id) REFERENCES "user" ON DELETE CASCADE;
ALTER TABLE "relationship" DROP CONSTRAINT relationship_user2_id_fkey, ADD CONSTRAINT relationship_user2_id_fkey FOREIGN KEY (user2_id) REFERENCES "user" ON DELETE CASCADE;
--blocked_profiles
ALTER TABLE blocked_profiles DROP CONSTRAINT blocked_profiles_blocked_id_fkey, ADD CONSTRAINT blocked_profiles_blocked_id_fkey FOREIGN KEY (blocked_id) REFERENCES "user" ON DELETE CASCADE;
ALTER TABLE blocked_profiles DROP CONSTRAINT blocked_profiles_blocker_id_fkey, ADD CONSTRAINT blocked_profiles_blocker_id_fkey FOREIGN KEY (blocker_id) REFERENCES "user" ON DELETE CASCADE;
--user_contacts
ALTER TABLE user_contacts DROP CONSTRAINT user_contacts_user_id_fkey, ADD CONSTRAINT user_contacts_user_id_fkey FOREIGN KEY (user_id) REFERENCES "user" ON DELETE CASCADE;
--user_subscription
ALTER TABLE user_subscription DROP CONSTRAINT user_subscription_user_id_fkey, ADD CONSTRAINT user_subscription_user_id_fkey FOREIGN KEY (user_id) REFERENCES "user" ON DELETE CASCADE;
--completed_lessons
ALTER TABLE completed_lessons DROP CONSTRAINT completed_lessons_lesson_id_fkey, ADD CONSTRAINT completed_lessons_lesson_id_fkey FOREIGN KEY (lesson_id) REFERENCES lesson ON DELETE CASCADE;
ALTER TABLE completed_lessons DROP CONSTRAINT completed_lessons_user_id_fkey, ADD CONSTRAINT completed_lessons_user_id_fkey FOREIGN KEY (user_id) REFERENCES "user" ON DELETE CASCADE;
--comments
ALTER TABLE "comments" DROP CONSTRAINT comments_lesson_id_fkey, ADD CONSTRAINT comments_lesson_id_fkey FOREIGN KEY (lesson_id) REFERENCES lesson ON DELETE CASCADE;

--Create database indexes (create it only on columns where it can make a sense – explain in the provided document why it make sense on a certain column(s))
EXPLAIN SELECT * FROM "course" WHERE "name" LIKE 'Doing%';
CREATE INDEX c_idx ON "course" ("name");
EXPLAIN SELECT * FROM lesson WHERE "name" = 'baking pies';
CREATE INDEX idx ON lesson ("name");

--Create arbitrary database procedure (consider some complex case)
CREATE PROCEDURE subs_warn()
LANGUAGE plpgsql AS $$
DECLARE us_id integer;
BEGIN
for us_id in (SELECT u."id" FROM 
			  "user" u RIGHT JOIN "user_subscription" s
			 ON u.id = s.user_id WHERE s.end - NOW() < INTERVAL '7' day
			 AND s.end - NOW() > INTERVAL '0:0:0')
			 LOOP
			 RAISE NOTICE 'Subscription of user with id % is about to expire in less than a week.', us_id;
			 END LOOP;
END;
$$;

--Create arbitrary database trigger
CREATE FUNCTION say_hooray() RETURNS trigger AS $tr$
BEGIN
RAISE NOTICE 'Hooray, new friendship on the platform!';
RETURN NEW;
END;
$tr$ LANGUAGE plpgsql ;
CREATE TRIGGER friendship AFTER INSERT ON relationship
EXECUTE PROCEDURE say_hooray();
INSERT INTO relationship (user1_id, user2_id, relationship_type_id, "timestamp") VALUES (37, 44, 1, NOW());

--Create arbitrary database view (consider some complex case)
CREATE VIEW most_used_platforms AS
(SELECT t.type, COUNT(DISTINCT u.user_id) AS num_of_users FROM user_contacts u LEFT JOIN contact_type t ON u.contact_type_id = t.id GROUP BY t.type);

--Create database materialized view (consider some complicated SQL query with several joins, aggregate function, GROUP BY with HAVING and complex WHERE condition).
CREATE MATERIALIZED VIEW users_per_free_lesson AS
(SELECT c.name AS course_name, COUNT(DISTINCT u.user_id) AS num_of_users, COUNT(DISTINCT l.id) AS num_of_lessons
FROM user_course u INNER JOIN course c ON u.course_id = c.id RIGHT JOIN lesson l ON l.course_id = c.id
WHERE l.requires_premium IS NULL OR l.requires_premium = (SELECT "id" FROM "subscription" WHERE "title" = 'Default')
GROUP BY c.name, c.requires_premium HAVING c.requires_premium IS NULL OR c.requires_premium = (SELECT "id" FROM "subscription" WHERE "title" ='Default'));

--Create two roles teacher and student in your database. Assign for teacher privileges to
--SELECT, INSERT, UPDATE, and DELETE everything in arbitrary table. Furthermore, set
--for teacher the possibility to view only certain fields (e.g., without salary from ”person“ or
--your ”user“ object). For student assign a possibility to select only certain tables.
CREATE ROLE teacher NOSUPERUSER;
REVOKE ALL ON ALL TABLES IN SCHEMA public FROM teacher;
GRANT SELECT, INSERT, UPDATE, DELETE ON "lesson" TO teacher;
CREATE VIEW teachers_view_on_user AS
(SELECT "id", first_name, last_name, email FROM "user");
GRANT SELECT ON teachers_view_on_user TO teacher;
CREATE ROLE student NOSUPERUSER;
REVOKE ALL ON ALL TABLES IN SCHEMA public FROM student;
GRANT SELECT ON lesson, course TO student;
