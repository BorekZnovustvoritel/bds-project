--nation
INSERT INTO "nation" ("abbreviation", "flag_url", "name") VALUES ('CZ', 'placeholder', 'Czechia');
INSERT INTO "nation" ("abbreviation", "flag_url", "name") VALUES ('UK', 'placeholder', 'United Kingdom');
INSERT INTO "nation" ("abbreviation", "flag_url", "name") VALUES ('FR', 'placeholder', 'France');
INSERT INTO "nation" ("abbreviation", "flag_url", "name") VALUES ('PL', 'placeholder', 'Poland');
INSERT INTO "nation" ("abbreviation", "flag_url", "name") VALUES ('DE', 'placeholder', 'Germany');
INSERT INTO "nation" ("abbreviation", "flag_url", "name") VALUES ('USA', 'placeholder', 'United States');
--user
INSERT INTO "user" ("first_name", "last_name", "email", "picture_url", "is_verified", "nation_id") VALUES ('Borzek', 'Pepegowicz', 'pepege@momento.pl', 'https://thispersondoesnotexist.com/image', '1', (SELECT "id" FROM "nation" WHERE "nation"."abbreviation"='PL'));
--script
--subscription
INSERT INTO "subscription" ("price_month", "price_year", "title", "description") VALUES (0, 0, 'Default', 'NULL');
INSERT INTO "subscription" ("price_month", "price_year", "title", "description") VALUES (1, 10, 'Rookie', 'For cheapstakes only. Unlocks some lessons.');
INSERT INTO "subscription" ("price_month", "price_year", "title", "description") VALUES (2, 20, 'Advanced', 'Unlock more, learn more.');
INSERT INTO "subscription" ("price_month", "price_year", "title", "description") VALUES (3, 30, 'PRO', 'Learn all the knowledge in the world');
INSERT INTO "subscription" ("price_month", "price_year", "title", "description") VALUES (10, 100, 'Diamond', 'Jump freely between any content. All is yours. We all respect you. Thank you.');
--user_subscription
INSERT INTO "user_subscription" ("user_id", "subscription_id", "start", "end") VALUES (27, (SELECT "id" FROM "subscription" WHERE "title" = 'Advanced'), Now(), NOW()+ interval '1 month');
INSERT INTO "user_subscription" ("user_id", "subscription_id", "start", "end") VALUES (11, (SELECT "id" FROM "subscription" WHERE "title" = 'PRO'), Now(), NOW()+ interval '1 year');
INSERT INTO "user_subscription" ("user_id", "subscription_id", "start", "end") VALUES (3, (SELECT "id" FROM "subscription" WHERE "title" = 'Rookie'), Now(), NOW()+ interval '1 year');
INSERT INTO "user_subscription" ("user_id", "subscription_id", "start", "end") VALUES (44, (SELECT "id" FROM "subscription" WHERE "title" = 'Diamond'), Now(), NOW()+ interval '1 month');
INSERT INTO "user_subscription" ("user_id", "subscription_id", "start", "end") VALUES (5, (SELECT "id" FROM "subscription" WHERE "title" = 'Rookie'), Now(), NOW()+ interval '1 year');
--relationship_type
INSERT INTO "relationship_type" ("type", "icon_url") VALUES ('friends', 'placeholder');
INSERT INTO "relationship_type" ("type", "icon_url") VALUES ('colleagues', 'placeholder');
INSERT INTO "relationship_type" ("type", "icon_url") VALUES ('1 is student of 2', 'placeholder');
INSERT INTO "relationship_type" ("type", "icon_url") VALUES ('1 is follower of 2', 'placeholder');
INSERT INTO "relationship_type" ("type", "icon_url") VALUES ('1 is boss of 2', 'placeholder');
--relationship
INSERT INTO "relationship" ("user1_id", "user2_id", "relationship_type_id", "timestamp") VALUES (1, 2, (SELECT "id" FROM "relationship_type" WHERE "type" = 'friends'), NOW());
INSERT INTO "relationship" ("user1_id", "user2_id", "relationship_type_id", "timestamp") VALUES (3, 2, (SELECT "id" FROM "relationship_type" WHERE "type" = '1 is follower of 2'), NOW());
INSERT INTO "relationship" ("user1_id", "user2_id", "relationship_type_id", "timestamp") VALUES (7, 8, (SELECT "id" FROM "relationship_type" WHERE "type" = '1 is boss of 2'), NOW());
INSERT INTO "relationship" ("user1_id", "user2_id", "relationship_type_id", "timestamp") VALUES (7, 14, (SELECT "id" FROM "relationship_type" WHERE "type" = '1 is follower of 2'), NOW());
INSERT INTO "relationship" ("user1_id", "user2_id", "relationship_type_id", "timestamp") VALUES (1, 37, (SELECT "id" FROM "relationship_type" WHERE "type" = 'colleagues'), NOW());
--blocked_profiles
INSERT INTO "blocked_profiles" ("blocker_id", "blocked_id", "reason", "timestamp") VALUES (37, 11, 'Called me a dumbo.', NOW());
INSERT INTO "blocked_profiles" ("blocker_id", "blocked_id", "reason", "timestamp") VALUES (7, 1, 'I dont like him', NOW());
INSERT INTO "blocked_profiles" ("blocker_id", "blocked_id", "reason", "timestamp") VALUES (48, 49, 'He refused to buy me premium', NOW());
INSERT INTO "blocked_profiles" ("blocker_id", "blocked_id", "reason", "timestamp") VALUES (16, 17, NULL, NOW());
INSERT INTO "blocked_profiles" ("blocker_id", "blocked_id", "reason", "timestamp") VALUES (14, 11, 'Bruh' ,NOW());
--contact_type
INSERT INTO "contact_type" ("type", "icon_url") VALUES ('Miscelaneous', NULL);
INSERT INTO "contact_type" ("type", "icon_url") VALUES ('Google', 'placeholder');
INSERT INTO "contact_type" ("type", "icon_url") VALUES ('Facebook', 'placeholder');
INSERT INTO "contact_type" ("type", "icon_url") VALUES ('Twitter', 'placeholder');
INSERT INTO "contact_type" ("type", "icon_url") VALUES ('GitHub', 'placeholder');
--user_contacts
INSERT INTO "user_contacts" ("user_id", "contact_type_id", "address") VALUES (1, (SELECT "id" FROM "contact_type" WHERE "type" = 'Google'), 'mymail@gmail.com');
INSERT INTO "user_contacts" ("user_id", "contact_type_id", "address") VALUES (37, (SELECT "id" FROM "contact_type" WHERE "type" = 'Facebook'), 'fb.com/myacc');
INSERT INTO "user_contacts" ("user_id", "contact_type_id", "address") VALUES (14, (SELECT "id" FROM "contact_type" WHERE "type" = 'GitHub'), 'github.com/myacc2');
INSERT INTO "user_contacts" ("user_id", "contact_type_id", "address") VALUES (12, (SELECT "id" FROM "contact_type" WHERE "type" = 'Twitter'), 'twitter.com/@myAcc');
INSERT INTO "user_contacts" ("user_id", "contact_type_id", "address") VALUES (7, (SELECT "id" FROM "contact_type" WHERE "type" = 'Miscelaneous'), '+420132456789');
--course
INSERT INTO "course" ("name", "description", "requires_premium") VALUES ('Python', 'Python timee', (SELECT "id" FROM "subscription" WHERE "title" = 'Default'));
INSERT INTO "course" ("name", "description", "requires_premium") VALUES ('C', 'C timee', (SELECT "id" FROM "subscription" WHERE "title" = 'Default'));
INSERT INTO "course" ("name", "description", "requires_premium") VALUES ('C#', 'C# timee', (SELECT "id" FROM "subscription" WHERE "title" = 'Default'));
INSERT INTO "course" ("name", "description", "requires_premium") VALUES ('Ruby', 'Ruby - hoovno', (SELECT "id" FROM "subscription" WHERE "title" = 'Default'));
INSERT INTO "course" ("name", "description", "requires_premium") VALUES ('Git', 'Git timee', (SELECT "id" FROM "subscription" WHERE "title" = 'Default'));
--certificate
INSERT INTO "certificate" ("url", "timestamp") VALUES ('certicateHDpunjabinovirus100percentlegit.com/16', NOW());
INSERT INTO "certificate" ("url", "timestamp") VALUES ('certicateHDpunjabinovirus100percentlegit.com/786', NOW());
INSERT INTO "certificate" ("url", "timestamp") VALUES ('certicateHDpunjabinovirus100percentlegit.com/147', NOW());
INSERT INTO "certificate" ("url", "timestamp") VALUES ('certicateHDpunjabinovirus100percentlegit.com/143', NOW());
INSERT INTO "certificate" ("url", "timestamp") VALUES ('certicateHDpunjabinovirus100percentlegit.com/11', NOW());
--user_course
INSERT INTO "user_course" ("user_id", "course_id", "certificate_id", "course_rating", "user_feedback") VALUES (1, (SELECT "id" FROM course WHERE "name" = 'C'), (SELECT "id" FROM "certificate" WHERE "url" LIKE '%16'), NULL, NULL);
INSERT INTO "user_course" ("user_id", "course_id", "certificate_id", "course_rating", "user_feedback") VALUES (2, (SELECT "id" FROM course WHERE "name" = 'Python'), (SELECT "id" FROM "certificate" WHERE "url" LIKE '%786'), 9, 'Me likey.');
INSERT INTO "user_course" ("user_id", "course_id", "certificate_id", "course_rating", "user_feedback") VALUES (37, (SELECT "id" FROM course WHERE "name" = 'C#'), (SELECT "id" FROM "certificate" WHERE "url" LIKE '%147'), 8, 'Was oke.');
INSERT INTO "user_course" ("user_id", "course_id", "certificate_id", "course_rating", "user_feedback") VALUES (3, (SELECT "id" FROM course WHERE "name" = 'Ruby'), (SELECT "id" FROM "certificate" WHERE "url" LIKE '%143'), 1, 'Sucks.');
INSERT INTO "user_course" ("user_id", "course_id", "certificate_id", "course_rating", "user_feedback") VALUES (49, (SELECT "id" FROM course WHERE "name" = 'Git'), (SELECT "id" FROM "certificate" WHERE "url" LIKE '%11'), NULL, NULL);
--lesson
INSERT INTO "lesson" ("course_id", "name", "link", "requires_premium") VALUES (1, 'Baking pies', 'url.com/Python/lesson1', 1);
--script
--completed_lessons
INSERT INTO "completed_lessons" ("user_id", "lesson_id", "timestamp") VALUES (1, 17, NOW());
INSERT INTO "completed_lessons" ("user_id", "lesson_id", "timestamp") VALUES (1, 18, NOW());
INSERT INTO "completed_lessons" ("user_id", "lesson_id", "timestamp") VALUES (1, 19, NOW());
INSERT INTO "completed_lessons" ("user_id", "lesson_id", "timestamp") VALUES (1, 20, NOW());
INSERT INTO "completed_lessons" ("user_id", "lesson_id", "timestamp") VALUES (1, 21, NOW());
--comments
INSERT INTO "comments" ("user_id", "lesson_id", "text") VALUES (1, 17, 'Epic!');
INSERT INTO "comments" ("user_id", "lesson_id", "text") VALUES (1, 18, 'Very bad, thanks');
INSERT INTO "comments" ("user_id", "lesson_id", "text") VALUES (1, 19, 'Meh..');
INSERT INTO "comments" ("user_id", "lesson_id", "text") VALUES (1, 20, 'I completed this.');
INSERT INTO "comments" ("user_id", "lesson_id", "text") VALUES (1, 21, 'Pnce again, epic!');
