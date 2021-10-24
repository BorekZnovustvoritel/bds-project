INSERT INTO "nation" ("abbreviation", "flag_url", "name") VALUES ('CZ', 'placeholder', 'Czechia');

INSERT INTO "nation" ("abbreviation", "flag_url", "name") VALUES ('UK', 'placeholder', 'United Kingdom');

INSERT INTO "nation" ("abbreviation", "flag_url", "name") VALUES ('FR', 'placeholder', 'France');

INSERT INTO "nation" ("abbreviation", "flag_url", "name") VALUES ('PL', 'placeholder', 'Poland');

INSERT INTO "nation" ("abbreviation", "flag_url", "name") VALUES ('DE', 'placeholder', 'Germany');

INSERT INTO "nation" ("abbreviation", "flag_url", "name") VALUES ('USA', 'placeholder', 'United States');
INSERT INTO "user" ("first_name", "last_name", "email", "picture_url", "is_verified", "nation_id") VALUES ('Karel', 'Wankler', 'Wankler.Karel@gmail.com', 'https://thispersondoesnotexist.com/image', '0', (SELECT "id" FROM "nation" WHERE "nation"."abbreviation"='PL'));
INSERT INTO "user" ("first_name", "last_name", "email", "picture_url", "is_verified", "nation_id") VALUES ('Freddie', 'Znowustworzujoncy', 'Znowustworzujoncy.Freddie@gmail.com', 'https://thispersondoesnotexist.com/image', '1', (SELECT "id" FROM "nation" WHERE "nation"."abbreviation"='UK'));
INSERT INTO "user" ("first_name", "last_name", "email", "picture_url", "is_verified", "nation_id") VALUES ('Freddie', 'Wankler', 'Wankler.Freddie@gmail.com', 'https://thispersondoesnotexist.com/image', '1', (SELECT "id" FROM "nation" WHERE "nation"."abbreviation"='PL'));
INSERT INTO "user" ("first_name", "last_name", "email", "picture_url", "is_verified", "nation_id") VALUES ('Alex', 'BDSmorelikeBDSM', 'BDSmorelikeBDSM.Alex@gmail.com', 'https://thispersondoesnotexist.com/image', '1', (SELECT "id" FROM "nation" WHERE "nation"."abbreviation"='FR'));
INSERT INTO "user" ("first_name", "last_name", "email", "picture_url", "is_verified", "nation_id") VALUES ('Karel', 'Tightanus', 'Tightanus.Karel@gmail.com', 'https://thispersondoesnotexist.com/image', '1', (SELECT "id" FROM "nation" WHERE "nation"."abbreviation"='CZ'));
INSERT INTO "user" ("first_name", "last_name", "email", "picture_url", "is_verified", "nation_id") VALUES ('Jean', 'Dicktit', 'Dicktit.Jean@gmail.com', 'https://thispersondoesnotexist.com/image', '1', (SELECT "id" FROM "nation" WHERE "nation"."abbreviation"='CZ'));
INSERT INTO "user" ("first_name", "last_name", "email", "picture_url", "is_verified", "nation_id") VALUES ('Ben', 'Dover', 'Dover.Ben@gmail.com', 'https://thispersondoesnotexist.com/image', '0', (SELECT "id" FROM "nation" WHERE "nation"."abbreviation"='USA'));
INSERT INTO "user" ("first_name", "last_name", "email", "picture_url", "is_verified", "nation_id") VALUES ('Freddie', 'Wankler', 'Wankler.Freddie@gmail.com', 'https://thispersondoesnotexist.com/image', '0', (SELECT "id" FROM "nation" WHERE "nation"."abbreviation"='PL'));
INSERT INTO "user" ("first_name", "last_name", "email", "picture_url", "is_verified", "nation_id") VALUES ('Bruh', 'Znowustworzujoncy', 'Znowustworzujoncy.Bruh@gmail.com', 'https://thispersondoesnotexist.com/image', '1', (SELECT "id" FROM "nation" WHERE "nation"."abbreviation"='FR'));
INSERT INTO "user" ("first_name", "last_name", "email", "picture_url", "is_verified", "nation_id") VALUES ('Thomas', 'Bezos', 'Bezos.Thomas@gmail.com', 'https://thispersondoesnotexist.com/image', '0', (SELECT "id" FROM "nation" WHERE "nation"."abbreviation"='USA'));
INSERT INTO "user" ("first_name", "last_name", "email", "picture_url", "is_verified", "nation_id") VALUES ('Waluigi', 'Mercumry', 'Mercumry.Waluigi@gmail.com', 'https://thispersondoesnotexist.com/image', '1', (SELECT "id" FROM "nation" WHERE "nation"."abbreviation"='CZ'));
INSERT INTO "user" ("first_name", "last_name", "email", "picture_url", "is_verified", "nation_id") VALUES ('Marge', 'Drilldorzek', 'Drilldorzek.Marge@gmail.com', 'https://thispersondoesnotexist.com/image', '1', (SELECT "id" FROM "nation" WHERE "nation"."abbreviation"='FR'));
INSERT INTO "user" ("first_name", "last_name", "email", "picture_url", "is_verified", "nation_id") VALUES ('Steve', 'Minecraft', 'Minecraft.Steve@gmail.com', 'https://thispersondoesnotexist.com/image', '1', (SELECT "id" FROM "nation" WHERE "nation"."abbreviation"='DE'));
INSERT INTO "user" ("first_name", "last_name", "email", "picture_url", "is_verified", "nation_id") VALUES ('Borzek', 'BDSmorelikeBDSM', 'BDSmorelikeBDSM.Borzek@gmail.com', 'https://thispersondoesnotexist.com/image', '1', (SELECT "id" FROM "nation" WHERE "nation"."abbreviation"='DE'));
INSERT INTO "user" ("first_name", "last_name", "email", "picture_url", "is_verified", "nation_id") VALUES ('Leopoldius', 'Minecraft', 'Minecraft.Leopoldius@gmail.com', 'https://thispersondoesnotexist.com/image', '1', (SELECT "id" FROM "nation" WHERE "nation"."abbreviation"='DE'));
INSERT INTO "user" ("first_name", "last_name", "email", "picture_url", "is_verified", "nation_id") VALUES ('Steve', 'Musk', 'Musk.Steve@gmail.com', 'https://thispersondoesnotexist.com/image', '1', (SELECT "id" FROM "nation" WHERE "nation"."abbreviation"='USA'));
INSERT INTO "user" ("first_name", "last_name", "email", "picture_url", "is_verified", "nation_id") VALUES ('Bob', 'Wankler', 'Wankler.Bob@gmail.com', 'https://thispersondoesnotexist.com/image', '1', (SELECT "id" FROM "nation" WHERE "nation"."abbreviation"='FR'));
INSERT INTO "user" ("first_name", "last_name", "email", "picture_url", "is_verified", "nation_id") VALUES ('Shrek', 'Musk', 'Musk.Shrek@gmail.com', 'https://thispersondoesnotexist.com/image', '0', (SELECT "id" FROM "nation" WHERE "nation"."abbreviation"='CZ'));
INSERT INTO "user" ("first_name", "last_name", "email", "picture_url", "is_verified", "nation_id") VALUES ('Thomas', 'Wankler', 'Wankler.Thomas@gmail.com', 'https://thispersondoesnotexist.com/image', '0', (SELECT "id" FROM "nation" WHERE "nation"."abbreviation"='USA'));
INSERT INTO "user" ("first_name", "last_name", "email", "picture_url", "is_verified", "nation_id") VALUES ('Bob', 'Wankler', 'Wankler.Bob@gmail.com', 'https://thispersondoesnotexist.com/image', '0', (SELECT "id" FROM "nation" WHERE "nation"."abbreviation"='PL'));
INSERT INTO "user" ("first_name", "last_name", "email", "picture_url", "is_verified", "nation_id") VALUES ('Mathias', 'Traumterberk', 'Traumterberk.Mathias@gmail.com', 'https://thispersondoesnotexist.com/image', '0', (SELECT "id" FROM "nation" WHERE "nation"."abbreviation"='PL'));
INSERT INTO "user" ("first_name", "last_name", "email", "picture_url", "is_verified", "nation_id") VALUES ('Adolf', 'BDSmorelikeBDSM', 'BDSmorelikeBDSM.Adolf@gmail.com', 'https://thispersondoesnotexist.com/image', '1', (SELECT "id" FROM "nation" WHERE "nation"."abbreviation"='USA'));
INSERT INTO "user" ("first_name", "last_name", "email", "picture_url", "is_verified", "nation_id") VALUES ('Rob', 'Mercumry', 'Mercumry.Rob@gmail.com', 'https://thispersondoesnotexist.com/image', '1', (SELECT "id" FROM "nation" WHERE "nation"."abbreviation"='FR'));
INSERT INTO "user" ("first_name", "last_name", "email", "picture_url", "is_verified", "nation_id") VALUES ('Steve', 'Znowustworzujoncy', 'Znowustworzujoncy.Steve@gmail.com', 'https://thispersondoesnotexist.com/image', '1', (SELECT "id" FROM "nation" WHERE "nation"."abbreviation"='DE'));
INSERT INTO "user" ("first_name", "last_name", "email", "picture_url", "is_verified", "nation_id") VALUES ('Leopoldius', 'BDSmorelikeBDSM', 'BDSmorelikeBDSM.Leopoldius@gmail.com', 'https://thispersondoesnotexist.com/image', '1', (SELECT "id" FROM "nation" WHERE "nation"."abbreviation"='CZ'));
INSERT INTO "user" ("first_name", "last_name", "email", "picture_url", "is_verified", "nation_id") VALUES ('Mathias', 'Minecraft', 'Minecraft.Mathias@gmail.com', 'https://thispersondoesnotexist.com/image', '1', (SELECT "id" FROM "nation" WHERE "nation"."abbreviation"='PL'));
INSERT INTO "user" ("first_name", "last_name", "email", "picture_url", "is_verified", "nation_id") VALUES ('Thomas', 'ILOVESQL', 'ILOVESQL.Thomas@gmail.com', 'https://thispersondoesnotexist.com/image', '0', (SELECT "id" FROM "nation" WHERE "nation"."abbreviation"='CZ'));
INSERT INTO "user" ("first_name", "last_name", "email", "picture_url", "is_verified", "nation_id") VALUES ('Adolf', 'Znowustworzujoncy', 'Znowustworzujoncy.Adolf@gmail.com', 'https://thispersondoesnotexist.com/image', '1', (SELECT "id" FROM "nation" WHERE "nation"."abbreviation"='CZ'));
INSERT INTO "user" ("first_name", "last_name", "email", "picture_url", "is_verified", "nation_id") VALUES ('Bob', 'Wankler', 'Wankler.Bob@gmail.com', 'https://thispersondoesnotexist.com/image', '0', (SELECT "id" FROM "nation" WHERE "nation"."abbreviation"='FR'));
INSERT INTO "user" ("first_name", "last_name", "email", "picture_url", "is_verified", "nation_id") VALUES ('Borzek', 'Minecraft', 'Minecraft.Borzek@gmail.com', 'https://thispersondoesnotexist.com/image', '1', (SELECT "id" FROM "nation" WHERE "nation"."abbreviation"='PL'));
INSERT INTO "user" ("first_name", "last_name", "email", "picture_url", "is_verified", "nation_id") VALUES ('Marge', 'Dover', 'Dover.Marge@gmail.com', 'https://thispersondoesnotexist.com/image', '0', (SELECT "id" FROM "nation" WHERE "nation"."abbreviation"='PL'));
INSERT INTO "user" ("first_name", "last_name", "email", "picture_url", "is_verified", "nation_id") VALUES ('Steve', 'Musk', 'Musk.Steve@gmail.com', 'https://thispersondoesnotexist.com/image', '0', (SELECT "id" FROM "nation" WHERE "nation"."abbreviation"='DE'));
INSERT INTO "user" ("first_name", "last_name", "email", "picture_url", "is_verified", "nation_id") VALUES ('Thomas', 'Minecraft', 'Minecraft.Thomas@gmail.com', 'https://thispersondoesnotexist.com/image', '0', (SELECT "id" FROM "nation" WHERE "nation"."abbreviation"='UK'));
INSERT INTO "user" ("first_name", "last_name", "email", "picture_url", "is_verified", "nation_id") VALUES ('Bruh', 'Znowustworzujoncy', 'Znowustworzujoncy.Bruh@gmail.com', 'https://thispersondoesnotexist.com/image', '0', (SELECT "id" FROM "nation" WHERE "nation"."abbreviation"='UK'));
INSERT INTO "user" ("first_name", "last_name", "email", "picture_url", "is_verified", "nation_id") VALUES ('Marge', 'Musk', 'Musk.Marge@gmail.com', 'https://thispersondoesnotexist.com/image', '0', (SELECT "id" FROM "nation" WHERE "nation"."abbreviation"='DE'));
INSERT INTO "user" ("first_name", "last_name", "email", "picture_url", "is_verified", "nation_id") VALUES ('Freddie', 'Tightanus', 'Tightanus.Freddie@gmail.com', 'https://thispersondoesnotexist.com/image', '1', (SELECT "id" FROM "nation" WHERE "nation"."abbreviation"='CZ'));
INSERT INTO "user" ("first_name", "last_name", "email", "picture_url", "is_verified", "nation_id") VALUES ('Bob', 'Bezos', 'Bezos.Bob@gmail.com', 'https://thispersondoesnotexist.com/image', '0', (SELECT "id" FROM "nation" WHERE "nation"."abbreviation"='PL'));
INSERT INTO "user" ("first_name", "last_name", "email", "picture_url", "is_verified", "nation_id") VALUES ('Borzek', 'Znowustworzujoncy', 'Znowustworzujoncy.Borzek@gmail.com', 'https://thispersondoesnotexist.com/image', '0', (SELECT "id" FROM "nation" WHERE "nation"."abbreviation"='UK'));
INSERT INTO "user" ("first_name", "last_name", "email", "picture_url", "is_verified", "nation_id") VALUES ('Borzek', 'ILOVESQL', 'ILOVESQL.Borzek@gmail.com', 'https://thispersondoesnotexist.com/image', '0', (SELECT "id" FROM "nation" WHERE "nation"."abbreviation"='PL'));
INSERT INTO "user" ("first_name", "last_name", "email", "picture_url", "is_verified", "nation_id") VALUES ('Xi', 'Tightanus', 'Tightanus.Xi@gmail.com', 'https://thispersondoesnotexist.com/image', '0', (SELECT "id" FROM "nation" WHERE "nation"."abbreviation"='USA'));
INSERT INTO "user" ("first_name", "last_name", "email", "picture_url", "is_verified", "nation_id") VALUES ('Bruh', 'Drilldorzek', 'Drilldorzek.Bruh@gmail.com', 'https://thispersondoesnotexist.com/image', '0', (SELECT "id" FROM "nation" WHERE "nation"."abbreviation"='FR'));
INSERT INTO "user" ("first_name", "last_name", "email", "picture_url", "is_verified", "nation_id") VALUES ('Adolf', 'Wankler', 'Wankler.Adolf@gmail.com', 'https://thispersondoesnotexist.com/image', '1', (SELECT "id" FROM "nation" WHERE "nation"."abbreviation"='FR'));
INSERT INTO "user" ("first_name", "last_name", "email", "picture_url", "is_verified", "nation_id") VALUES ('Alex', 'Minecraft', 'Minecraft.Alex@gmail.com', 'https://thispersondoesnotexist.com/image', '0', (SELECT "id" FROM "nation" WHERE "nation"."abbreviation"='CZ'));
INSERT INTO "user" ("first_name", "last_name", "email", "picture_url", "is_verified", "nation_id") VALUES ('Bruh', 'Wankler', 'Wankler.Bruh@gmail.com', 'https://thispersondoesnotexist.com/image', '0', (SELECT "id" FROM "nation" WHERE "nation"."abbreviation"='CZ'));
INSERT INTO "user" ("first_name", "last_name", "email", "picture_url", "is_verified", "nation_id") VALUES ('Thomas', 'Traumterberk', 'Traumterberk.Thomas@gmail.com', 'https://thispersondoesnotexist.com/image', '0', (SELECT "id" FROM "nation" WHERE "nation"."abbreviation"='FR'));
INSERT INTO "user" ("first_name", "last_name", "email", "picture_url", "is_verified", "nation_id") VALUES ('Mathias', 'BDSmorelikeBDSM', 'BDSmorelikeBDSM.Mathias@gmail.com', 'https://thispersondoesnotexist.com/image', '1', (SELECT "id" FROM "nation" WHERE "nation"."abbreviation"='CZ'));
INSERT INTO "user" ("first_name", "last_name", "email", "picture_url", "is_verified", "nation_id") VALUES ('Freddie', 'Bezos', 'Bezos.Freddie@gmail.com', 'https://thispersondoesnotexist.com/image', '1', (SELECT "id" FROM "nation" WHERE "nation"."abbreviation"='FR'));
INSERT INTO "user" ("first_name", "last_name", "email", "picture_url", "is_verified", "nation_id") VALUES ('Borzek', 'Dover', 'Dover.Borzek@gmail.com', 'https://thispersondoesnotexist.com/image', '0', (SELECT "id" FROM "nation" WHERE "nation"."abbreviation"='PL'));
INSERT INTO "user" ("first_name", "last_name", "email", "picture_url", "is_verified", "nation_id") VALUES ('Adolf', 'Traumterberk', 'Traumterberk.Adolf@gmail.com', 'https://thispersondoesnotexist.com/image', '1', (SELECT "id" FROM "nation" WHERE "nation"."abbreviation"='FR'));
INSERT INTO "user" ("first_name", "last_name", "email", "picture_url", "is_verified", "nation_id") VALUES ('Freddie', 'BDSmorelikeBDSM', 'BDSmorelikeBDSM.Freddie@gmail.com', 'https://thispersondoesnotexist.com/image', '1', (SELECT "id" FROM "nation" WHERE "nation"."abbreviation"='FR'));
INSERT INTO "subscription" ("price_month", "price_year", "title", "description") VALUES (0, 0, 'Default', 'NULL');

INSERT INTO "subscription" ("price_month", "price_year", "title", "description") VALUES (1, 10, 'Rookie', 'For cheapstakes only. Unlocks some lessons.');

INSERT INTO "subscription" ("price_month", "price_year", "title", "description") VALUES (2, 20, 'Advanced', 'Unlock more, learn more.');

INSERT INTO "subscription" ("price_month", "price_year", "title", "description") VALUES (3, 30, 'PRO', 'Learn all the knowledge in the world');

INSERT INTO "subscription" ("price_month", "price_year", "title", "description") VALUES (10, 100, 'Diamond', 'Jump freely between any content. All is yours. We all respect you. Thank you.');

INSERT INTO "user_subscription" ("user_id", "subscription_id", "start", "end") VALUES (27, (SELECT "id" FROM "subscription" WHERE "title" = 'Advanced'), Now(), NOW()+ interval '1 month');

INSERT INTO "user_subscription" ("user_id", "subscription_id", "start", "end") VALUES (11, (SELECT "id" FROM "subscription" WHERE "title" = 'PRO'), Now(), NOW()+ interval '1 year');

INSERT INTO "user_subscription" ("user_id", "subscription_id", "start", "end") VALUES (3, (SELECT "id" FROM "subscription" WHERE "title" = 'Rookie'), Now(), NOW()+ interval '1 year');

INSERT INTO "user_subscription" ("user_id", "subscription_id", "start", "end") VALUES (44, (SELECT "id" FROM "subscription" WHERE "title" = 'Diamond'), Now(), NOW()+ interval '1 month');

INSERT INTO "user_subscription" ("user_id", "subscription_id", "start", "end") VALUES (5, (SELECT "id" FROM "subscription" WHERE "title" = 'Rookie'), Now(), NOW()+ interval '1 year');

INSERT INTO "relationship_type" ("type", "icon_url") VALUES ('friends', 'placeholder');

INSERT INTO "relationship_type" ("type", "icon_url") VALUES ('colleagues', 'placeholder');

INSERT INTO "relationship_type" ("type", "icon_url") VALUES ('1 is student of 2', 'placeholder');

INSERT INTO "relationship_type" ("type", "icon_url") VALUES ('1 is follower of 2', 'placeholder');

INSERT INTO "relationship_type" ("type", "icon_url") VALUES ('1 is boss of 2', 'placeholder');

INSERT INTO "relationship" ("user1_id", "user2_id", "relationship_type_id", "timestamp") VALUES (1, 2, (SELECT "id" FROM "relationship_type" WHERE "type" = 'friends'), NOW());

INSERT INTO "relationship" ("user1_id", "user2_id", "relationship_type_id", "timestamp") VALUES (3, 2, (SELECT "id" FROM "relationship_type" WHERE "type" = '1 is follower of 2'), NOW());

INSERT INTO "relationship" ("user1_id", "user2_id", "relationship_type_id", "timestamp") VALUES (7, 8, (SELECT "id" FROM "relationship_type" WHERE "type" = '1 is boss of 2'), NOW());

INSERT INTO "relationship" ("user1_id", "user2_id", "relationship_type_id", "timestamp") VALUES (7, 14, (SELECT "id" FROM "relationship_type" WHERE "type" = '1 is follower of 2'), NOW());

INSERT INTO "relationship" ("user1_id", "user2_id", "relationship_type_id", "timestamp") VALUES (1, 37, (SELECT "id" FROM "relationship_type" WHERE "type" = 'colleagues'), NOW());

INSERT INTO "blocked_profiles" ("blocker_id", "blocked_id", "reason", "timestamp") VALUES (37, 11, 'Called me a dumbo.', NOW());

INSERT INTO "blocked_profiles" ("blocker_id", "blocked_id", "reason", "timestamp") VALUES (7, 1, 'I dont like him', NOW());

INSERT INTO "blocked_profiles" ("blocker_id", "blocked_id", "reason", "timestamp") VALUES (48, 49, 'He refused to buy me premium', NOW());

INSERT INTO "blocked_profiles" ("blocker_id", "blocked_id", "reason", "timestamp") VALUES (16, 17, NULL, NOW());

INSERT INTO "blocked_profiles" ("blocker_id", "blocked_id", "reason", "timestamp") VALUES (14, 11, 'Bruh' ,NOW());

INSERT INTO "contact_type" ("type", "icon_url") VALUES ('Miscelaneous', NULL);

INSERT INTO "contact_type" ("type", "icon_url") VALUES ('Google', 'placeholder');

INSERT INTO "contact_type" ("type", "icon_url") VALUES ('Facebook', 'placeholder');

INSERT INTO "contact_type" ("type", "icon_url") VALUES ('Twitter', 'placeholder');

INSERT INTO "contact_type" ("type", "icon_url") VALUES ('GitHub', 'placeholder');

INSERT INTO "user_contacts" ("user_id", "contact_type_id", "address") VALUES (1, (SELECT "id" FROM "contact_type" WHERE "type" = 'Google'), 'mymail@gmail.com');

INSERT INTO "user_contacts" ("user_id", "contact_type_id", "address") VALUES (37, (SELECT "id" FROM "contact_type" WHERE "type" = 'Facebook'), 'fb.com/myacc');

INSERT INTO "user_contacts" ("user_id", "contact_type_id", "address") VALUES (14, (SELECT "id" FROM "contact_type" WHERE "type" = 'GitHub'), 'github.com/myacc2');

INSERT INTO "user_contacts" ("user_id", "contact_type_id", "address") VALUES (12, (SELECT "id" FROM "contact_type" WHERE "type" = 'Twitter'), 'twitter.com/@myAcc');

INSERT INTO "user_contacts" ("user_id", "contact_type_id", "address") VALUES (7, (SELECT "id" FROM "contact_type" WHERE "type" = 'Miscelaneous'), '+420132456789');

INSERT INTO "course" ("name", "description", "requires_premium") VALUES ('Python', 'Python timee', (SELECT "id" FROM "subscription" WHERE "title" = 'Default'));

INSERT INTO "course" ("name", "description", "requires_premium") VALUES ('C', 'C timee', (SELECT "id" FROM "subscription" WHERE "title" = 'Default'));

INSERT INTO "course" ("name", "description", "requires_premium") VALUES ('C#', 'C# timee', (SELECT "id" FROM "subscription" WHERE "title" = 'Default'));

INSERT INTO "course" ("name", "description", "requires_premium") VALUES ('Ruby', 'Ruby - hoovno', (SELECT "id" FROM "subscription" WHERE "title" = 'Default'));

INSERT INTO "course" ("name", "description", "requires_premium") VALUES ('Git', 'Git timee', (SELECT "id" FROM "subscription" WHERE "title" = 'Default'));

INSERT INTO "certificate" ("url", "timestamp") VALUES ('certicateHDpunjabinovirus100percentlegit.com/16', NOW());

INSERT INTO "certificate" ("url", "timestamp") VALUES ('certicateHDpunjabinovirus100percentlegit.com/786', NOW());

INSERT INTO "certificate" ("url", "timestamp") VALUES ('certicateHDpunjabinovirus100percentlegit.com/147', NOW());

INSERT INTO "certificate" ("url", "timestamp") VALUES ('certicateHDpunjabinovirus100percentlegit.com/143', NOW());

INSERT INTO "certificate" ("url", "timestamp") VALUES ('certicateHDpunjabinovirus100percentlegit.com/11', NOW());

INSERT INTO "user_course" ("user_id", "course_id", "certificate_id", "course_rating", "user_feedback") VALUES (1, (SELECT "id" FROM course WHERE "name" = 'C'), (SELECT "id" FROM "certificate" WHERE "url" LIKE '%16'), NULL, NULL);

INSERT INTO "user_course" ("user_id", "course_id", "certificate_id", "course_rating", "user_feedback") VALUES (2, (SELECT "id" FROM course WHERE "name" = 'Python'), (SELECT "id" FROM "certificate" WHERE "url" LIKE '%786'), 9, 'Me likey.');

INSERT INTO "user_course" ("user_id", "course_id", "certificate_id", "course_rating", "user_feedback") VALUES (37, (SELECT "id" FROM course WHERE "name" = 'C#'), (SELECT "id" FROM "certificate" WHERE "url" LIKE '%147'), 8, 'Was oke.');

INSERT INTO "user_course" ("user_id", "course_id", "certificate_id", "course_rating", "user_feedback") VALUES (3, (SELECT "id" FROM course WHERE "name" = 'Ruby'), (SELECT "id" FROM "certificate" WHERE "url" LIKE '%143'), 1, 'Sucks.');

INSERT INTO "user_course" ("user_id", "course_id", "certificate_id", "course_rating", "user_feedback") VALUES (49, (SELECT "id" FROM course WHERE "name" = 'Git'), (SELECT "id" FROM "certificate" WHERE "url" LIKE '%11'), NULL, NULL);
INSERT INTO "lesson" ("course_id", "name", "link", "requires_premium") VALUES ((SELECT "id" FROM "course" WHERE "name" = 'Python'), 'hacking', 'url.com/Python/lesson1', (SELECT "id" FROM "subscription" WHERE "title" = 'Default'));
INSERT INTO "lesson" ("course_id", "name", "link", "requires_premium") VALUES ((SELECT "id" FROM "course" WHERE "name" = 'Git'), 'doing some stuff', 'url.com/Git/lesson2', (SELECT "id" FROM "subscription" WHERE "title" = 'Diamond'));
INSERT INTO "lesson" ("course_id", "name", "link", "requires_premium") VALUES ((SELECT "id" FROM "course" WHERE "name" = 'Ruby'), 'getting high', 'url.com/Ruby/lesson3', (SELECT "id" FROM "subscription" WHERE "title" = 'Advanced'));
INSERT INTO "lesson" ("course_id", "name", "link", "requires_premium") VALUES ((SELECT "id" FROM "course" WHERE "name" = 'Git'), 'sleeping', 'url.com/Git/lesson4', (SELECT "id" FROM "subscription" WHERE "title" = 'Default'));
INSERT INTO "lesson" ("course_id", "name", "link", "requires_premium") VALUES ((SELECT "id" FROM "course" WHERE "name" = 'C'), 'objects', 'url.com/C/lesson5', (SELECT "id" FROM "subscription" WHERE "title" = 'Default'));
INSERT INTO "lesson" ("course_id", "name", "link", "requires_premium") VALUES ((SELECT "id" FROM "course" WHERE "name" = 'Python'), 'sleeping again', 'url.com/Python/lesson6', (SELECT "id" FROM "subscription" WHERE "title" = 'Default'));
INSERT INTO "lesson" ("course_id", "name", "link", "requires_premium") VALUES ((SELECT "id" FROM "course" WHERE "name" = 'Python'), 'baking pies', 'url.com/Python/lesson7', (SELECT "id" FROM "subscription" WHERE "title" = 'Default'));
INSERT INTO "lesson" ("course_id", "name", "link", "requires_premium") VALUES ((SELECT "id" FROM "course" WHERE "name" = 'C'), 'sleeping again', 'url.com/C/lesson8', (SELECT "id" FROM "subscription" WHERE "title" = 'Default'));
INSERT INTO "lesson" ("course_id", "name", "link", "requires_premium") VALUES ((SELECT "id" FROM "course" WHERE "name" = 'Git'), 'idk, doing something', 'url.com/Git/lesson9', (SELECT "id" FROM "subscription" WHERE "title" = 'Default'));
INSERT INTO "lesson" ("course_id", "name", "link", "requires_premium") VALUES ((SELECT "id" FROM "course" WHERE "name" = 'C'), 'hacking', 'url.com/C/lesson10', (SELECT "id" FROM "subscription" WHERE "title" = 'Diamond'));
INSERT INTO "lesson" ("course_id", "name", "link", "requires_premium") VALUES ((SELECT "id" FROM "course" WHERE "name" = 'Git'), 'baking pies', 'url.com/Git/lesson11', (SELECT "id" FROM "subscription" WHERE "title" = 'PRO'));
INSERT INTO "lesson" ("course_id", "name", "link", "requires_premium") VALUES ((SELECT "id" FROM "course" WHERE "name" = 'C#'), 'shredding', 'url.com/C#/lesson12', (SELECT "id" FROM "subscription" WHERE "title" = 'Diamond'));
INSERT INTO "lesson" ("course_id", "name", "link", "requires_premium") VALUES ((SELECT "id" FROM "course" WHERE "name" = 'C'), 'objects', 'url.com/C/lesson13', (SELECT "id" FROM "subscription" WHERE "title" = 'Default'));
INSERT INTO "lesson" ("course_id", "name", "link", "requires_premium") VALUES ((SELECT "id" FROM "course" WHERE "name" = 'C'), 'connecting to sql', 'url.com/C/lesson14', (SELECT "id" FROM "subscription" WHERE "title" = 'Default'));
INSERT INTO "lesson" ("course_id", "name", "link", "requires_premium") VALUES ((SELECT "id" FROM "course" WHERE "name" = 'Ruby'), 'shredding', 'url.com/Ruby/lesson15', (SELECT "id" FROM "subscription" WHERE "title" = 'PRO'));
INSERT INTO "lesson" ("course_id", "name", "link", "requires_premium") VALUES ((SELECT "id" FROM "course" WHERE "name" = 'Ruby'), 'regex', 'url.com/Ruby/lesson16', (SELECT "id" FROM "subscription" WHERE "title" = 'Default'));
INSERT INTO "lesson" ("course_id", "name", "link", "requires_premium") VALUES ((SELECT "id" FROM "course" WHERE "name" = 'C#'), 'baking pies', 'url.com/C#/lesson17', (SELECT "id" FROM "subscription" WHERE "title" = 'Rookie'));
INSERT INTO "lesson" ("course_id", "name", "link", "requires_premium") VALUES ((SELECT "id" FROM "course" WHERE "name" = 'Python'), 'making funny stuff', 'url.com/Python/lesson18', (SELECT "id" FROM "subscription" WHERE "title" = 'Default'));
INSERT INTO "lesson" ("course_id", "name", "link", "requires_premium") VALUES ((SELECT "id" FROM "course" WHERE "name" = 'C#'), 'objects', 'url.com/C#/lesson19', (SELECT "id" FROM "subscription" WHERE "title" = 'Default'));
INSERT INTO "lesson" ("course_id", "name", "link", "requires_premium") VALUES ((SELECT "id" FROM "course" WHERE "name" = 'C#'), 'why is Python superior', 'url.com/C#/lesson20', (SELECT "id" FROM "subscription" WHERE "title" = 'Default'));
INSERT INTO "lesson" ("course_id", "name", "link", "requires_premium") VALUES ((SELECT "id" FROM "course" WHERE "name" = 'Python'), 'doing nothing', 'url.com/Python/lesson21', (SELECT "id" FROM "subscription" WHERE "title" = 'Default'));
INSERT INTO "lesson" ("course_id", "name", "link", "requires_premium") VALUES ((SELECT "id" FROM "course" WHERE "name" = 'Ruby'), 'sleeping again', 'url.com/Ruby/lesson22', (SELECT "id" FROM "subscription" WHERE "title" = 'PRO'));
INSERT INTO "lesson" ("course_id", "name", "link", "requires_premium") VALUES ((SELECT "id" FROM "course" WHERE "name" = 'Ruby'), 'sleeping', 'url.com/Ruby/lesson23', (SELECT "id" FROM "subscription" WHERE "title" = 'Default'));
INSERT INTO "lesson" ("course_id", "name", "link", "requires_premium") VALUES ((SELECT "id" FROM "course" WHERE "name" = 'Python'), 'getting high', 'url.com/Python/lesson24', (SELECT "id" FROM "subscription" WHERE "title" = 'Default'));
INSERT INTO "lesson" ("course_id", "name", "link", "requires_premium") VALUES ((SELECT "id" FROM "course" WHERE "name" = 'Python'), 'shredding', 'url.com/Python/lesson25', (SELECT "id" FROM "subscription" WHERE "title" = 'Default'));
INSERT INTO "lesson" ("course_id", "name", "link", "requires_premium") VALUES ((SELECT "id" FROM "course" WHERE "name" = 'C'), 'objects', 'url.com/C/lesson26', (SELECT "id" FROM "subscription" WHERE "title" = 'Default'));
INSERT INTO "lesson" ("course_id", "name", "link", "requires_premium") VALUES ((SELECT "id" FROM "course" WHERE "name" = 'Python'), 'regex', 'url.com/Python/lesson27', (SELECT "id" FROM "subscription" WHERE "title" = 'PRO'));
INSERT INTO "lesson" ("course_id", "name", "link", "requires_premium") VALUES ((SELECT "id" FROM "course" WHERE "name" = 'C'), 'regex', 'url.com/C/lesson28', (SELECT "id" FROM "subscription" WHERE "title" = 'Default'));
INSERT INTO "lesson" ("course_id", "name", "link", "requires_premium") VALUES ((SELECT "id" FROM "course" WHERE "name" = 'Python'), 'baking pies', 'url.com/Python/lesson29', (SELECT "id" FROM "subscription" WHERE "title" = 'Default'));
INSERT INTO "lesson" ("course_id", "name", "link", "requires_premium") VALUES ((SELECT "id" FROM "course" WHERE "name" = 'C#'), 'regex', 'url.com/C#/lesson30', (SELECT "id" FROM "subscription" WHERE "title" = 'Diamond'));
INSERT INTO "lesson" ("course_id", "name", "link", "requires_premium") VALUES ((SELECT "id" FROM "course" WHERE "name" = 'Git'), 'baking pies', 'url.com/Git/lesson31', (SELECT "id" FROM "subscription" WHERE "title" = 'Rookie'));
INSERT INTO "lesson" ("course_id", "name", "link", "requires_premium") VALUES ((SELECT "id" FROM "course" WHERE "name" = 'C#'), 'getting high', 'url.com/C#/lesson32', (SELECT "id" FROM "subscription" WHERE "title" = 'Default'));
INSERT INTO "lesson" ("course_id", "name", "link", "requires_premium") VALUES ((SELECT "id" FROM "course" WHERE "name" = 'C#'), 'objects', 'url.com/C#/lesson33', (SELECT "id" FROM "subscription" WHERE "title" = 'PRO'));
INSERT INTO "lesson" ("course_id", "name", "link", "requires_premium") VALUES ((SELECT "id" FROM "course" WHERE "name" = 'Git'), 'idk, doing something', 'url.com/Git/lesson34', (SELECT "id" FROM "subscription" WHERE "title" = 'Default'));
INSERT INTO "lesson" ("course_id", "name", "link", "requires_premium") VALUES ((SELECT "id" FROM "course" WHERE "name" = 'C'), 'why is Python superior', 'url.com/C/lesson35', (SELECT "id" FROM "subscription" WHERE "title" = 'Default'));
INSERT INTO "lesson" ("course_id", "name", "link", "requires_premium") VALUES ((SELECT "id" FROM "course" WHERE "name" = 'C#'), 'sleeping again', 'url.com/C#/lesson36', (SELECT "id" FROM "subscription" WHERE "title" = 'PRO'));
INSERT INTO "lesson" ("course_id", "name", "link", "requires_premium") VALUES ((SELECT "id" FROM "course" WHERE "name" = 'Ruby'), 'connecting to sql', 'url.com/Ruby/lesson37', (SELECT "id" FROM "subscription" WHERE "title" = 'Default'));
INSERT INTO "lesson" ("course_id", "name", "link", "requires_premium") VALUES ((SELECT "id" FROM "course" WHERE "name" = 'C'), 'baking pies', 'url.com/C/lesson38', (SELECT "id" FROM "subscription" WHERE "title" = 'Default'));
INSERT INTO "lesson" ("course_id", "name", "link", "requires_premium") VALUES ((SELECT "id" FROM "course" WHERE "name" = 'Git'), 'making funny stuff', 'url.com/Git/lesson39', (SELECT "id" FROM "subscription" WHERE "title" = 'Default'));
INSERT INTO "lesson" ("course_id", "name", "link", "requires_premium") VALUES ((SELECT "id" FROM "course" WHERE "name" = 'Git'), 'objects', 'url.com/Git/lesson40', (SELECT "id" FROM "subscription" WHERE "title" = 'Default'));
INSERT INTO "lesson" ("course_id", "name", "link", "requires_premium") VALUES ((SELECT "id" FROM "course" WHERE "name" = 'Ruby'), 'baking pies', 'url.com/Ruby/lesson41', (SELECT "id" FROM "subscription" WHERE "title" = 'Diamond'));
INSERT INTO "lesson" ("course_id", "name", "link", "requires_premium") VALUES ((SELECT "id" FROM "course" WHERE "name" = 'Python'), 'regex', 'url.com/Python/lesson42', (SELECT "id" FROM "subscription" WHERE "title" = 'PRO'));
INSERT INTO "lesson" ("course_id", "name", "link", "requires_premium") VALUES ((SELECT "id" FROM "course" WHERE "name" = 'Ruby'), 'doing some stuff', 'url.com/Ruby/lesson43', (SELECT "id" FROM "subscription" WHERE "title" = 'Advanced'));
INSERT INTO "lesson" ("course_id", "name", "link", "requires_premium") VALUES ((SELECT "id" FROM "course" WHERE "name" = 'C'), 'idk, doing something', 'url.com/C/lesson44', (SELECT "id" FROM "subscription" WHERE "title" = 'Diamond'));
INSERT INTO "lesson" ("course_id", "name", "link", "requires_premium") VALUES ((SELECT "id" FROM "course" WHERE "name" = 'Ruby'), 'idk, doing something', 'url.com/Ruby/lesson45', (SELECT "id" FROM "subscription" WHERE "title" = 'PRO'));
INSERT INTO "lesson" ("course_id", "name", "link", "requires_premium") VALUES ((SELECT "id" FROM "course" WHERE "name" = 'C'), 'getting high', 'url.com/C/lesson46', (SELECT "id" FROM "subscription" WHERE "title" = 'Default'));
INSERT INTO "lesson" ("course_id", "name", "link", "requires_premium") VALUES ((SELECT "id" FROM "course" WHERE "name" = 'Git'), 'getting high', 'url.com/Git/lesson47', (SELECT "id" FROM "subscription" WHERE "title" = 'Advanced'));
INSERT INTO "lesson" ("course_id", "name", "link", "requires_premium") VALUES ((SELECT "id" FROM "course" WHERE "name" = 'Git'), 'regex', 'url.com/Git/lesson48', (SELECT "id" FROM "subscription" WHERE "title" = 'Default'));
INSERT INTO "lesson" ("course_id", "name", "link", "requires_premium") VALUES ((SELECT "id" FROM "course" WHERE "name" = 'Python'), 'idk, doing something', 'url.com/Python/lesson49', (SELECT "id" FROM "subscription" WHERE "title" = 'PRO'));
INSERT INTO "lesson" ("course_id", "name", "link", "requires_premium") VALUES ((SELECT "id" FROM "course" WHERE "name" = 'C#'), 'idk, doing something', 'url.com/C#/lesson50', (SELECT "id" FROM "subscription" WHERE "title" = 'Rookie'));
INSERT INTO "lesson" ("course_id", "name", "link", "requires_premium") VALUES ((SELECT "id" FROM "course" WHERE "name" = 'Git'), 'objects', 'url.com/Git/lesson51', (SELECT "id" FROM "subscription" WHERE "title" = 'Default'));
INSERT INTO "lesson" ("course_id", "name", "link", "requires_premium") VALUES ((SELECT "id" FROM "course" WHERE "name" = 'C#'), 'doing nothing', 'url.com/C#/lesson52', (SELECT "id" FROM "subscription" WHERE "title" = 'Default'));
INSERT INTO "lesson" ("course_id", "name", "link", "requires_premium") VALUES ((SELECT "id" FROM "course" WHERE "name" = 'C#'), 'why is Python superior', 'url.com/C#/lesson53', (SELECT "id" FROM "subscription" WHERE "title" = 'PRO'));
INSERT INTO "lesson" ("course_id", "name", "link", "requires_premium") VALUES ((SELECT "id" FROM "course" WHERE "name" = 'C#'), 'regex', 'url.com/C#/lesson54', (SELECT "id" FROM "subscription" WHERE "title" = 'Default'));
INSERT INTO "lesson" ("course_id", "name", "link", "requires_premium") VALUES ((SELECT "id" FROM "course" WHERE "name" = 'Ruby'), 'objects', 'url.com/Ruby/lesson55', (SELECT "id" FROM "subscription" WHERE "title" = 'Default'));
INSERT INTO "lesson" ("course_id", "name", "link", "requires_premium") VALUES ((SELECT "id" FROM "course" WHERE "name" = 'Git'), 'baking pies', 'url.com/Git/lesson56', (SELECT "id" FROM "subscription" WHERE "title" = 'PRO'));
INSERT INTO "lesson" ("course_id", "name", "link", "requires_premium") VALUES ((SELECT "id" FROM "course" WHERE "name" = 'Git'), 'shredding', 'url.com/Git/lesson57', (SELECT "id" FROM "subscription" WHERE "title" = 'PRO'));
INSERT INTO "lesson" ("course_id", "name", "link", "requires_premium") VALUES ((SELECT "id" FROM "course" WHERE "name" = 'Ruby'), 'making funny stuff', 'url.com/Ruby/lesson58', (SELECT "id" FROM "subscription" WHERE "title" = 'Advanced'));
INSERT INTO "lesson" ("course_id", "name", "link", "requires_premium") VALUES ((SELECT "id" FROM "course" WHERE "name" = 'C'), 'regex', 'url.com/C/lesson59', (SELECT "id" FROM "subscription" WHERE "title" = 'Rookie'));
INSERT INTO "lesson" ("course_id", "name", "link", "requires_premium") VALUES ((SELECT "id" FROM "course" WHERE "name" = 'Git'), 'doing some stuff', 'url.com/Git/lesson60', (SELECT "id" FROM "subscription" WHERE "title" = 'Advanced'));
INSERT INTO "completed_lessons" ("user_id", "lesson_id", "timestamp") VALUES (1, 17, NOW());

INSERT INTO "completed_lessons" ("user_id", "lesson_id", "timestamp") VALUES (1, 18, NOW());

INSERT INTO "completed_lessons" ("user_id", "lesson_id", "timestamp") VALUES (1, 19, NOW());

INSERT INTO "completed_lessons" ("user_id", "lesson_id", "timestamp") VALUES (1, 20, NOW());

INSERT INTO "completed_lessons" ("user_id", "lesson_id", "timestamp") VALUES (1, 21, NOW());

INSERT INTO "comments" ("user_id", "lesson_id", "text") VALUES (1, 17, 'Epic!');

INSERT INTO "comments" ("user_id", "lesson_id", "text") VALUES (1, 18, 'Very bad, thanks');

INSERT INTO "comments" ("user_id", "lesson_id", "text") VALUES (1, 19, 'Meh..');

INSERT INTO "comments" ("user_id", "lesson_id", "text") VALUES (1, 20, 'I completed this.');

INSERT INTO "comments" ("user_id", "lesson_id", "text") VALUES (1, 21, 'Pnce again, epic!');
