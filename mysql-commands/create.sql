CREATE TABLE IF NOT EXISTS nation(
    id            INT NOT NULL AUTO_INCREMENT,
    name          VARCHAR(45) NOT NULL,
    flag_url      VARCHAR(255) NOT NULL,
    abbreviation  VARCHAR(5) NOT NULL,
    PRIMARY KEY (id)
);
CREATE TABLE IF NOT EXISTS `user`(
    id            INT NOT NULL AUTO_INCREMENT,
    first_name    VARCHAR(45) NOT NULL,
    last_name     VARCHAR(45) NOT NULL,
    email         VARCHAR(255) NOT NULL,
    is_verified   BIT NOT NULL,
    picture_url   VARCHAR(255),
    nation_id     INT,
    PRIMARY KEY (id),   
    FOREIGN KEY (nation_id) REFERENCES nation(id)
);
CREATE TABLE IF NOT EXISTS subscription(
    id            INT NOT NULL AUTO_INCREMENT,
    price_month   DECIMAL NOT NULL,
    price_year    DECIMAL,
    title         VARCHAR(25) NOT NULL,
    description   VARCHAR(1000),
    PRIMARY KEY (id)
);
CREATE TABLE IF NOT EXISTS user_subscription(
    user_id           INT NOT NULL,
    subscription_id   INT NOT NULL,
    start             DATETIME NOT NULL,
    end               DATETIME NOT NULL,
    FOREIGN KEY (user_id) REFERENCES `user`(id),
    FOREIGN KEY (subscription_id) REFERENCES subscription(id)
);
CREATE TABLE IF NOT EXISTS relationship_type(
    id	INT NOT NULL AUTO_INCREMENT,
    type	VARCHAR(50),
    icon_url	VARCHAR(255),
    PRIMARY KEY (id)
);
CREATE TABLE IF NOT EXISTS relationship(
    user1_id      		INT NOT NULL,
    user2_id      		INT NOT NULL,
    relationship_type_id	INT NOT NULL,
    timestamp     		DATETIME,
    FOREIGN KEY (user1_id) REFERENCES `user`(id),
    FOREIGN KEY (user2_id) REFERENCES `user`(id),
    FOREIGN KEY (relationship_type_id) REFERENCES relationship_type(id)
);
CREATE TABLE IF NOT EXISTS blocked_profiles(
    blocker_id    INT NOT NULL,
    blocked_id    INT NOT NULL,
    timestamp     DATETIME,
    reason        VARCHAR(100),
    FOREIGN KEY (blocker_id) REFERENCES `user`(id),
    FOREIGN KEY (blocked_id) REFERENCES `user`(id)
);
CREATE TABLE IF NOT EXISTS contact_type (
    id            INT NOT NULL AUTO_INCREMENT,
    type          VARCHAR(50) NOT NULL,
    icon_url      VARCHAR(255),
    PRIMARY KEY (id)
);
CREATE TABLE IF NOT EXISTS user_contacts(
    user_id           INT NOT NULL,
    contact_type_id   INT NOT NULL,
    address           VARCHAR(255),
    FOREIGN KEY (user_id) REFERENCES `user`(id),
    FOREIGN KEY (contact_type_id) REFERENCES contact_type(id)
);
CREATE TABLE IF NOT EXISTS course(
    id                INT NOT NULL AUTO_INCREMENT,
    name              VARCHAR(50) NOT NULL,
    description       VARCHAR(1000),
    requires_premium  INT,
    PRIMARY KEY (id),
    FOREIGN KEY (requires_premium) REFERENCES subscription(id)
);
CREATE TABLE IF NOT EXISTS certificate(
    id            INT NOT NULL AUTO_INCREMENT,
    url           VARCHAR(255),
    timestamp     DATETIME,
    PRIMARY KEY (id)
);
CREATE TABLE IF NOT EXISTS user_course(
    user_id           INT NOT NULL,
    course_id         INT NOT NULL,
    certificate_id    INT,
    course_rating     SMALLINT,
    user_feedback     VARCHAR(1000),
    FOREIGN KEY (user_id) REFERENCES `user`(id),
    FOREIGN KEY (course_id) REFERENCES course(id),
    FOREIGN KEY (certificate_id) REFERENCES certificate(id),   
    CHECK (course_rating > 0 AND course_rating < 11)
);
CREATE TABLE IF NOT EXISTS lesson(
    id                INT NOT NULL AUTO_INCREMENT,
    course_id         INT,
    name              VARCHAR(100) NOT NULL,
    link              VARCHAR(255) NOT NULL,
    requires_premium  INT,
    PRIMARY KEY (id),
    FOREIGN KEY (course_id) REFERENCES course(id),
    FOREIGN KEY (requires_premium) REFERENCES subscription(id)
);
CREATE TABLE IF NOT EXISTS completed_lessons(
    user_id   INT NOT NULL,
    lesson_id INT NOT NULL,
    timestamp DATETIME,
    FOREIGN KEY (user_id) REFERENCES `user`(id),
    FOREIGN KEY (lesson_id) REFERENCES lesson(id)
);
CREATE TABLE IF NOT EXISTS comments(
    id        INT NOT NULL AUTO_INCREMENT,
    lesson_id INT NOT NULL,
    user_id   INT NOT NULL,
    text      VARCHAR(1000) NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (lesson_id) REFERENCES lesson(id),
    FOREIGN KEY (user_id) REFERENCES `user`(id)
);