CREATE TABLE IF NOT EXISTS "nation"(
    "id"            SERIAL PRIMARY KEY NOT NULL,
    "name"          VARCHAR(45) NOT NULL,
    "flag_url"      VARCHAR(255) NOT NULL,
    "abbreviation"  VARCHAR(5) NOT NULL
);
CREATE TABLE IF NOT EXISTS "user"(
    "id"            SERIAL PRIMARY KEY NOT NULL,
    "first_name"    VARCHAR(45) NOT NULL,
    "last_name"     VARCHAR(45) NOT NULL,
    "email"         VARCHAR(255) NOT NULL,
    "is_verified"   BIT NOT NULL,
    "picture_url"   VARCHAR(255),
    "nation_id"     INT,   
    FOREIGN KEY ("nation_id") REFERENCES "nation"
);
CREATE TABLE IF NOT EXISTS "subscription"(
    "id"            SERIAL PRIMARY KEY NOT NULL,
    "price_month"   DECIMAL NOT NULL,
    "price_year"    DECIMAL,
    "title"         VARCHAR(25) NOT NULL,
    "description"   VARCHAR(1000)
);
CREATE TABLE IF NOT EXISTS "user_subscription"(
    "user_id"           INT NOT NULL,
    "subscription_id"   INT NOT NULL,
    "start"             TIMESTAMP NOT NULL,
    "end"               TIMESTAMP NOT NULL,
    FOREIGN KEY ("user_id") REFERENCES "user",
    FOREIGN KEY ("subscription_id") REFERENCES "subscription"
);
CREATE TABLE IF NOT EXISTS "relationship_type"(
    "id"	SERIAL PRIMARY KEY NOT NULL,
    "type"	VARCHAR(50),
    "icon_url"	VARCHAR(255)
);
CREATE TABLE IF NOT EXISTS "relationship"(
    "user1_id"      		INT NOT NULL,
    "user2_id"      		INT NOT NULL,
    "relationship_type_id"	INT NOT NULL,
    "timestamp"     		TIMESTAMP,
    FOREIGN KEY ("user1_id") REFERENCES "user",
    FOREIGN KEY ("user2_id") REFERENCES "user",
    FOREIGN KEY ("relationship_type_id") REFERENCES "relationship_type"
);
CREATE TABLE IF NOT EXISTS "blocked_profiles"(
    "blocker_id"    INT NOT NULL,
    "blocked_id"    INT NOT NULL,
    "timestamp"     TIMESTAMP,
    "reason"        VARCHAR(100),
    FOREIGN KEY ("blocker_id") REFERENCES "user",
    FOREIGN KEY ("blocked_id") REFERENCES "user"
);
CREATE TABLE IF NOT EXISTS "contact_type" (
    "id"            SERIAL PRIMARY KEY NOT NULL,
    "type"          VARCHAR(50) NOT NULL,
    "icon_url"      VARCHAR(255)
);
CREATE TABLE IF NOT EXISTS "user_contacts"(
    "user_id"           INT NOT NULL,
    "contact_type_id"   INT NOT NULL,
    "address"           VARCHAR(255),
    FOREIGN KEY ("user_id") REFERENCES "user",
    FOREIGN KEY ("contact_type_id") REFERENCES "contact_type"
);
CREATE TABLE IF NOT EXISTS "course"(
    "id"                SERIAL PRIMARY KEY NOT NULL,
    "name"              VARCHAR(50) NOT NULL,
    "description"       VARCHAR(1000),
    "requires_premium"  INT,
    FOREIGN KEY ("requires_premium") REFERENCES "subscription"
);
CREATE TABLE IF NOT EXISTS "certificate"(
    "id"            SERIAL PRIMARY KEY NOT NULL,
    "url"           VARCHAR(255),
    "timestamp"     TIMESTAMP
);
CREATE TABLE IF NOT EXISTS "user_course"(
    "user_id"           INT NOT NULL,
    "course_id"         INT NOT NULL,
    "certificate_id"    INT,
    "course_rating"     SMALLINT,
    "user_feedback"     VARCHAR(1000),
    FOREIGN KEY ("user_id") REFERENCES "user",
    FOREIGN KEY ("course_id") REFERENCES "course",
    FOREIGN KEY ("certificate_id") REFERENCES "certificate",   
    CHECK ("course_rating" > 0 AND "course_rating" < 11)
);
CREATE TABLE IF NOT EXISTS "lesson"(
    "id"                SERIAL PRIMARY KEY NOT NULL,
    "course_id"         INT,
    "name"              VARCHAR(100) NOT NULL,
    "link"              VARCHAR(255) NOT NULL,
    "requires_premium"  INT,
    FOREIGN KEY ("course_id") REFERENCES "course",
    FOREIGN KEY ("requires_premium") REFERENCES "subscription"
);
CREATE TABLE IF NOT EXISTS "completed_lessons"(
    "user_id"   INT NOT NULL,
    "lesson_id" INT NOT NULL,
    "timestamp" TIMESTAMP,
    FOREIGN KEY ("user_id") REFERENCES "user",
    FOREIGN KEY ("lesson_id") REFERENCES "lesson"
);
CREATE TABLE IF NOT EXISTS "comments"(
    "id"        SERIAL PRIMARY KEY NOT NULL,
    "lesson_id" INT NOT NULL,
    "user_id"   INT NOT NULL,
    "text"      VARCHAR(1000) NOT NULL,
    FOREIGN KEY ("lesson_id") REFERENCES "lesson",
    FOREIGN KEY ("user_id") REFERENCES "user"
);
