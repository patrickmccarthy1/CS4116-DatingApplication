CREATE DATABASE spark_database;
USE spark_database;

CREATE TABLE users (
	user_id int unsigned NOT NULL AUTO_INCREMENT,
	first_name varchar(30) NOT NULL,
	last_name varchar(30) NOT NULL,
	age int(2) unsigned NOT NULL,
	gender enum('Male','Female','Other') NOT NULL,
	seeking_gender enum('Male','Female','Other') NOT NULL,
	height int(3) unsigned,
	weight int(3) unsigned,
    county varchar(30),
    country varchar(30),
	star_sign enum('Capricorn','Aquarius','Pisces','Aries','Taurus','Gemini','Cancer','Leo','Virgo','Libra','Scorpio','Sagittarius', 'Prefer Not To Say') DEFAULT 'Prefer Not To Say',
	is_banned enum('Yes','No') NOT NULL DEFAULT 'No',
	login_id int unsigned NOT NULL,
	PRIMARY KEY (user_id),
    UNIQUE KEY user_id_UNIQUE (user_id)
);

insert into users values 
	(NULL, 'John', 'Smith', 25, 'Male', 'Female', 185, 75, 'Limerick', 'Ireland', 'Aries', 'No', 1),
    (NULL, 'Brenda', 'Parks', 26, 'Female', 'Female', 152, 55, 'Clare', 'Ireland', 'Capricorn', 'No', 2),
    (NULL, 'Chelsey', 'Palmer', 21, 'Female', 'Male', 165, 60, 'Limerick', 'Ireland', 'Aquarius', 'No', 3),
    (NULL, 'Hanna', 'Cleveland', 30, 'Female', 'Male', 166, 61, 'Dublin', 'Ireland', 'Aries', 'No', 4),
    (NULL, 'James', 'Lewis', 24, 'Male', 'Female', 180, 70, 'Roscommon', 'Ireland', 'Pisces', 'No', 5),
    (NULL, 'Lindsay', 'Harris', 22, 'Female', 'Male', 170, 62, 'Cork', 'Ireland', NULL, 'No', 6),
    (NULL, 'Loius', 'Adkins', 27, 'Male', 'Male', 185, 73, 'Cavan', 'Ireland', 'Cancer', 'No', 7),
    (NULL, 'Mary', 'Walker', 28, 'Female', 'Male', 162, 60, 'Kildare', 'Ireland', 'Leo', 'No', 8),
    (NULL, 'Philip', 'Nelson', 25, 'Male', 'Female', 185, 83, 'Galway', 'Ireland', NULL, 'No', 9),
    (NULL, 'Robert', 'Green', 25, 'Male', 'Female', 175, 72, 'Wexford', 'Ireland', 'Virgo', 'No', 10),
    (NULL, 'Sandra', 'Freeman', 23, 'Other', 'Other', 160, 69, 'Roscommon', 'Ireland', 'Taurus', 'No', 11),
    (NULL, 'Terry', 'Miller', 29, 'Male', 'Female', 187, 80, 'Waterford', 'Ireland', NULL, 'No', 12),
    (NULL, 'Grace', 'Norris', 43, 'Female', 'Female', 161, 57, 'Kerry', 'Ireland', 'Libra', 'No', 13),
    (NULL, 'Natasha', 'Hewitt', 37, 'Other', 'Other', 174, 76, 'Donegal', 'Ireland', 'Scorpio', 'No', 14),
    (NULL, 'Isaac', 'Stewart', 22, 'Male', 'Male', 174, 58, 'Derry', 'N. Ireland', 'Aquarius', 'No', 15),
    (NULL, 'Conor', 'Hall', 35, 'Male', 'Female', 177, 74, 'Antrim', 'N. Ireland', NULL, 'No', 16),
    (NULL, 'Skye', 'Franklin', 23, 'Female', 'Male', 160, 61, 'Louth', 'Ireland', 'Aquarius', 'No', 17),
    (NULL, 'Charles', 'North', 26, 'Male', 'Female', 185, 70, 'Longford', 'Ireland', NULL, 'No', 18),
    (NULL, 'Courtney', 'Webster', 25, 'Female', 'Male', 180, 68, 'Wicklow', 'Ireland', 'Capricorn', 'No', 19),
    (NULL, 'Niamh', 'Norman', 32, 'Female', 'Male', 166, 58, 'Laois', 'Ireland', NULL, 'No', 20),
    (NULL, 'Elliot', 'Mason', 31, 'Male', 'Female', 185, 90, 'Offaly', 'Ireland', 'Sagittarius', 'No', 21),
    (NULL, 'Sean', 'Weston', 24, 'Male', 'Female', 178, 73, 'Monaghan', 'Ireland', 'Pisces', 'No', 22),
    (NULL, 'Brooke', 'Finch', 34, 'Female', 'Male', 180, 65, 'Fermanagh', 'N. Ireland', 'Gemini', 'No', 23),
    (NULL, 'Kai', 'Holland', 19, 'Male', 'Female', 186, 77, 'Sligo', 'Ireland', 'Virgo', 'No', 24),
    (NULL, 'Jayden', 'Knowles', 26, 'Male', 'Female', 185, 75, 'Meath', 'Ireland', 'Taurus', 'No', 25),
    (NULL, 'Laura', 'Bradley', 27, 'Female', 'Female', 161, 57, 'West Meath', 'Ireland', NULL, 'No', 26),
    (NULL, 'Maya', 'Hawkins', 24, 'Female', 'Male', 165, 60, 'Waterford', 'Ireland', NULL, 'No', 27),
    (NULL, 'Sophie', 'Saunders', 21, 'Female', 'Male', 155, 54, 'Dublin', 'Ireland', 'Libra', 'No', 28),
    (NULL, 'Amelie', 'Humphreys', 29, 'Female', 'Male', 167, 62, 'Limerick', 'Ireland', 'Capricorn', 'No', 29),
    (NULL, 'John', 'Madden', 19, 'Male', 'Female', 185, 76, 'Dublin', 'Ireland', NULL, 'No', 30),
    (NULL, 'Sara', 'McFadden', 20, 'Female', 'Male', 173, 60, NULL, 'Ireland', 'Cancer', 'No', 31),
    (NULL, 'Lewis', 'Fitzgerald', 30, 'Male', 'Female', 183, 71, 'Derry', 'N. Ireland', NULL, 'No', 32),
    (NULL, 'Luca', 'Barry', 34, 'Male', 'Male', 192, 95, 'Cork', 'Ireland', 'Scorpio', 'No', 33),
    (NULL, 'Jade', 'Stevens', 25, 'Female', 'Male', 176, 64, 'Dublin', 'Ireland', 'Gemini', 'No', 34),
    (NULL, 'Chloe', 'Reynolds', 23, 'Female', 'Male', 169, 58, 'Kildare', 'Ireland', NULL, 'No', 35),
    (NULL, 'Alexander', 'Chan', 27, 'Male', 'Female', 195, 88, 'Limerick', 'Ireland', 'Libra', 'No', 36);

CREATE TABLE logins (
	login_id int unsigned NOT NULL AUTO_INCREMENT,
	email varchar(50) NOT NULL,
	password varchar(30) NOT NULL,
	user_id int unsigned NOT NULL,
	date_created TIMESTAMP,
	PRIMARY KEY (login_id),
	UNIQUE KEY login_id_UNIQUE (login_id)
);

insert into logins values 
	(NULL, 'john.smith@email.com', 'johns123!', 1, now()),
    (NULL, 'bparks@email.com', 'bparks987!', 2, now()),
    (NULL, 'chelsey.palmer1@email.com', 'cpalmer222$', 3, now()),
    (NULL, 'hcleveland76@email.com', 'hannac11!', 4, now()),
    (NULL, 'james.lewis@email.com', 'lewis44!', 5, now()),
    (NULL, 'lharris22@email.com', 'lmharris63!', 6, now()),
    (NULL, 'loius@email.com', 'adkins77#', 7, now()),
    (NULL, 'marywalker@email.com', 'walkermary1#', 8, now()),
    (NULL, 'philip.nelson43@email.com', 'pn123456!', 9, now()),
    (NULL, 'rgreen@email.com', 'green22!', 10, now()),
    (NULL, 'freemans@email.com', 'freeman88!', 11, now()),
    (NULL, 'tmiller@email.com', 'miller7000%', 12, now()),
    (NULL, 'gracenorris@email.com', 'mclaren34!', 13, now()),
    (NULL, 'nhewitt37@email.com', 'nat1985#', 14, now()),
    (NULL, 'istewart22@email.com', 'stewart2000!', 15, now()),
    (NULL, 'conor.hall12@email.com', 'chall35!', 16, now()),
    (NULL, 'skye.franklin23@email.com', 'franklin1999#', 17, now()),
    (NULL, 'charlesnorth@email.com', 'south62!', 18, now()),
    (NULL, 'courtneyweb@email.com', 'web37%', 19, now()),
    (NULL, 'nnorman@email.com', 'niamhn45!', 20, now()),
    (NULL, 'elliot.mason11@email.com', 'mason31#', 21, now()),
    (NULL, 'sean.weston24@email.com', 'weston24!', 22, now()),
    (NULL, 'brooke34@email.com', 'bfinch!', 23, now()),
    (NULL, 'kai.holland@email.com', 'dutch33!', 24, now()),
    (NULL, 'jknowles@email.com', 'iknowlesit1!', 25, now()),
    (NULL, 'bradleyl27@email.com', 'flower27!', 26, now()),
    (NULL, 'mayahawkins99@email.com', 'hawkins27', 27, now()),
    (NULL, 'ssaunders@email.com', 'saunders21!', 28, now()),
    (NULL, 'humphreysa67@email.com', 'amelie93!', 29, now()),
    (NULL, 'jmadeen@email.com', 'johnny19#', 30, now()),
    (NULL, 'saramc20@email.com', 'mcfadden01!', 31, now()),
    (NULL, 'lfitz30@email.com', 'lfitz30!', 32, now()),
    (NULL, 'luca.barry@email.com', 'barry34$', 33, now()),
    (NULL, 'jade.stevens@email.com', 'jade25!', 34, now()),
    (NULL, 'chloereynolds@email.com', 'chlointhedark!', 35, now()),
    (NULL, 'alexander.chan4@email.com', 'chan27!', 36, now());

-- admin login
insert into logins value(NULL, 'admin@admin.com', 'admin', 0, now());

CREATE TABLE liked_profiles (
	match_id int unsigned NOT NULL AUTO_INCREMENT,
    user_id int unsigned NOT NULL,
    liked_user_id int unsigned NOT NULL,
    date TIMESTAMP,
    PRIMARY KEY (match_id),
	UNIQUE KEY match_id_UNIQUE (match_id)
);

CREATE TABLE interests (
	interest_id int unsigned NOT NULL AUTO_INCREMENT,
    interest_name varchar(30) NOT NULL,
    user_id int unsigned NOT NULL,
    PRIMARY KEY (interest_id),
	UNIQUE KEY interest_id_UNIQUE (interest_id)
);

insert into interests (interest_id, interest_name, user_id) values (NULL, 'dancing', 1);
insert into interests (interest_id, interest_name, user_id) values (NULL, 'sailing', 1);
insert into interests (interest_id, interest_name, user_id) values (NULL, 'hurling', 1);
insert into interests (interest_id, interest_name, user_id) values (NULL, 'motorcycles', 1);
insert into interests (interest_id, interest_name, user_id) values (NULL, 'archery', 1);
insert into interests (interest_id, interest_name, user_id) values (NULL, 'snowboarding', 1);

insert into interests (interest_id, interest_name, user_id) values (NULL, 'italian', 2);
insert into interests (interest_id, interest_name, user_id) values (NULL, 'architecture', 2);
insert into interests (interest_id, interest_name, user_id) values (NULL, 'gymnastics', 2);
insert into interests (interest_id, interest_name, user_id) values (NULL, 'fishing', 2);
insert into interests (interest_id, interest_name, user_id) values (NULL, 'reading', 2);
insert into interests (interest_id, interest_name, user_id) values (NULL, 'swimming', 2);

insert into interests (interest_id, interest_name, user_id) values (NULL, 'travelling', 3);
insert into interests (interest_id, interest_name, user_id) values (NULL, 'football', 3);
insert into interests (interest_id, interest_name, user_id) values (NULL, 'science', 3);
insert into interests (interest_id, interest_name, user_id) values (NULL, 'art', 3);
insert into interests (interest_id, interest_name, user_id) values (NULL, 'reading', 3);
insert into interests (interest_id, interest_name, user_id) values (NULL, 'running', 3);

insert into interests (interest_id, interest_name, user_id) values (NULL, 'french', 4);
insert into interests (interest_id, interest_name, user_id) values (NULL, 'bungee jumping', 4);
insert into interests (interest_id, interest_name, user_id) values (NULL, 'german', 4);
insert into interests (interest_id, interest_name, user_id) values (NULL, 'technology', 4);
insert into interests (interest_id, interest_name, user_id) values (NULL, 'italian', 4);
insert into interests (interest_id, interest_name, user_id) values (NULL, 'football', 4);

insert into interests (interest_id, interest_name, user_id) values (NULL, 'music', 5);
insert into interests (interest_id, interest_name, user_id) values (NULL, 'animals', 5);
insert into interests (interest_id, interest_name, user_id) values (NULL, 'art', 5);
insert into interests (interest_id, interest_name, user_id) values (NULL, 'sailing', 5);
insert into interests (interest_id, interest_name, user_id) values (NULL, 'food', 5);
insert into interests (interest_id, interest_name, user_id) values (NULL, 'fashion', 5);

insert into interests (interest_id, interest_name, user_id) values (NULL, 'running', 6);
insert into interests (interest_id, interest_name, user_id) values (NULL, 'french', 6);
insert into interests (interest_id, interest_name, user_id) values (NULL, 'programming', 6);
insert into interests (interest_id, interest_name, user_id) values (NULL, 'motorcycles', 6);
insert into interests (interest_id, interest_name, user_id) values (NULL, 'skydiving', 6);
insert into interests (interest_id, interest_name, user_id) values (NULL, 'gymnastics', 6);

insert into interests (interest_id, interest_name, user_id) values (NULL, 'running', 7);
insert into interests (interest_id, interest_name, user_id) values (NULL, 'archery', 7);
insert into interests (interest_id, interest_name, user_id) values (NULL, 'juggling', 7);
insert into interests (interest_id, interest_name, user_id) values (NULL, 'hurling', 7);
insert into interests (interest_id, interest_name, user_id) values (NULL, 'reading', 7);
insert into interests (interest_id, interest_name, user_id) values (NULL, 'cooking', 7);

insert into interests (interest_id, interest_name, user_id) values (NULL, 'italian', 8);
insert into interests (interest_id, interest_name, user_id) values (NULL, 'diving', 8);
insert into interests (interest_id, interest_name, user_id) values (NULL, 'singing', 8);
insert into interests (interest_id, interest_name, user_id) values (NULL, 'dancing', 8);
insert into interests (interest_id, interest_name, user_id) values (NULL, 'rugby', 8);
insert into interests (interest_id, interest_name, user_id) values (NULL, 'reading', 8);

insert into interests (interest_id, interest_name, user_id) values (NULL, 'fitness', 9);
insert into interests (interest_id, interest_name, user_id) values (NULL, 'motorcycles', 9);
insert into interests (interest_id, interest_name, user_id) values (NULL, 'running', 9);
insert into interests (interest_id, interest_name, user_id) values (NULL, 'rowing', 9);
insert into interests (interest_id, interest_name, user_id) values (NULL, 'boxing', 9);
insert into interests (interest_id, interest_name, user_id) values (NULL, 'skydiving', 9);

insert into interests (interest_id, interest_name, user_id) values (NULL, 'movies', 10);
insert into interests (interest_id, interest_name, user_id) values (NULL, 'german', 10);
insert into interests (interest_id, interest_name, user_id) values (NULL, 'sailing', 10);
insert into interests (interest_id, interest_name, user_id) values (NULL, 'technology', 10);
insert into interests (interest_id, interest_name, user_id) values (NULL, 'hiking', 10);
insert into interests (interest_id, interest_name, user_id) values (NULL, 'kayaking', 10);

insert into interests (interest_id, interest_name, user_id) values (NULL, 'baking', 11);
insert into interests (interest_id, interest_name, user_id) values (NULL, 'travelling', 11);
insert into interests (interest_id, interest_name, user_id) values (NULL, 'baking', 11);
insert into interests (interest_id, interest_name, user_id) values (NULL, 'motorcycles', 11);
insert into interests (interest_id, interest_name, user_id) values (NULL, 'sailing', 11);
insert into interests (interest_id, interest_name, user_id) values (NULL, 'rugby', 11);

insert into interests (interest_id, interest_name, user_id) values (NULL, 'sailing', 12);
insert into interests (interest_id, interest_name, user_id) values (NULL, 'swimming', 12);
insert into interests (interest_id, interest_name, user_id) values (NULL, 'german', 12);
insert into interests (interest_id, interest_name, user_id) values (NULL, 'design', 12);
insert into interests (interest_id, interest_name, user_id) values (NULL, 'food', 12);
insert into interests (interest_id, interest_name, user_id) values (NULL, 'motorcycles', 12);

insert into interests (interest_id, interest_name, user_id) values (NULL, 'football', 13);
insert into interests (interest_id, interest_name, user_id) values (NULL, 'german', 13);
insert into interests (interest_id, interest_name, user_id) values (NULL, 'dancing', 13);
insert into interests (interest_id, interest_name, user_id) values (NULL, 'baking', 13);
insert into interests (interest_id, interest_name, user_id) values (NULL, 'running', 13);
insert into interests (interest_id, interest_name, user_id) values (NULL, 'fashion', 13);

insert into interests (interest_id, interest_name, user_id) values (NULL, 'tennis', 14);
insert into interests (interest_id, interest_name, user_id) values (NULL, 'singing', 14);
insert into interests (interest_id, interest_name, user_id) values (NULL, 'hiking', 14);
insert into interests (interest_id, interest_name, user_id) values (NULL, 'football', 14);
insert into interests (interest_id, interest_name, user_id) values (NULL, 'rugby', 14);
insert into interests (interest_id, interest_name, user_id) values (NULL, 'cars', 14);

insert into interests (interest_id, interest_name, user_id) values (NULL, 'gardening', 15);
insert into interests (interest_id, interest_name, user_id) values (NULL, 'juggling', 15);
insert into interests (interest_id, interest_name, user_id) values (NULL, 'music', 15);
insert into interests (interest_id, interest_name, user_id) values (NULL, 'cooking', 15);
insert into interests (interest_id, interest_name, user_id) values (NULL, 'fishing', 15);
insert into interests (interest_id, interest_name, user_id) values (NULL, 'fashion', 15);

insert into interests (interest_id, interest_name, user_id) values (NULL, 'gymnastics', 16);
insert into interests (interest_id, interest_name, user_id) values (NULL, 'sailing', 16);
insert into interests (interest_id, interest_name, user_id) values (NULL, 'singing', 16);
insert into interests (interest_id, interest_name, user_id) values (NULL, 'juggling', 16);
insert into interests (interest_id, interest_name, user_id) values (NULL, 'swimming', 16);
insert into interests (interest_id, interest_name, user_id) values (NULL, 'tennis', 16);

insert into interests (interest_id, interest_name, user_id) values (NULL, 'animals', 17);
insert into interests (interest_id, interest_name, user_id) values (NULL, 'programming', 17);
insert into interests (interest_id, interest_name, user_id) values (NULL, 'snowboarding', 17);
insert into interests (interest_id, interest_name, user_id) values (NULL, 'maths', 17);
insert into interests (interest_id, interest_name, user_id) values (NULL, 'skateboarding', 17);
insert into interests (interest_id, interest_name, user_id) values (NULL, 'reading', 17);

insert into interests (interest_id, interest_name, user_id) values (NULL, 'video games', 18);
insert into interests (interest_id, interest_name, user_id) values (NULL, 'basketball', 18);
insert into interests (interest_id, interest_name, user_id) values (NULL, 'swimming', 18);
insert into interests (interest_id, interest_name, user_id) values (NULL, 'skiing', 18);
insert into interests (interest_id, interest_name, user_id) values (NULL, 'football', 18);
insert into interests (interest_id, interest_name, user_id) values (NULL, 'kayaking', 18);

insert into interests (interest_id, interest_name, user_id) values (NULL, 'video games', 19);
insert into interests (interest_id, interest_name, user_id) values (NULL, 'cars', 19);
insert into interests (interest_id, interest_name, user_id) values (NULL, 'bungee jumping', 19);
insert into interests (interest_id, interest_name, user_id) values (NULL, 'science', 19);
insert into interests (interest_id, interest_name, user_id) values (NULL, 'diving', 19);
insert into interests (interest_id, interest_name, user_id) values (NULL, 'surfing', 19);

insert into interests (interest_id, interest_name, user_id) values (NULL, 'video games', 20);
insert into interests (interest_id, interest_name, user_id) values (NULL, 'gardening', 20);
insert into interests (interest_id, interest_name, user_id) values (NULL, 'movies', 20);
insert into interests (interest_id, interest_name, user_id) values (NULL, 'italian', 20);
insert into interests (interest_id, interest_name, user_id) values (NULL, 'fitness', 20);
insert into interests (interest_id, interest_name, user_id) values (NULL, 'mountain biking', 20);

insert into interests (interest_id, interest_name, user_id) values (NULL, 'fitness', 21);
insert into interests (interest_id, interest_name, user_id) values (NULL, 'italian', 21);
insert into interests (interest_id, interest_name, user_id) values (NULL, 'television', 21);
insert into interests (interest_id, interest_name, user_id) values (NULL, 'german', 21);
insert into interests (interest_id, interest_name, user_id) values (NULL, 'science', 21);
insert into interests (interest_id, interest_name, user_id) values (NULL, 'running', 21);

insert into interests (interest_id, interest_name, user_id) values (NULL, 'skydiving', 22);
insert into interests (interest_id, interest_name, user_id) values (NULL, 'german', 22);
insert into interests (interest_id, interest_name, user_id) values (NULL, 'rowing', 22);
insert into interests (interest_id, interest_name, user_id) values (NULL, 'italian', 22);
insert into interests (interest_id, interest_name, user_id) values (NULL, 'running', 22);
insert into interests (interest_id, interest_name, user_id) values (NULL, 'dancing', 22);

insert into interests (interest_id, interest_name, user_id) values (NULL, 'skiing', 23);
insert into interests (interest_id, interest_name, user_id) values (NULL, 'reading', 23);
insert into interests (interest_id, interest_name, user_id) values (NULL, 'baking', 23);
insert into interests (interest_id, interest_name, user_id) values (NULL, 'skydiving', 23);
insert into interests (interest_id, interest_name, user_id) values (NULL, 'bungee jumping', 23);
insert into interests (interest_id, interest_name, user_id) values (NULL, 'surfing', 23);

insert into interests (interest_id, interest_name, user_id) values (NULL, 'kayaking', 24);
insert into interests (interest_id, interest_name, user_id) values (NULL, 'cars', 24);
insert into interests (interest_id, interest_name, user_id) values (NULL, 'juggling', 24);
insert into interests (interest_id, interest_name, user_id) values (NULL, 'german', 24);
insert into interests (interest_id, interest_name, user_id) values (NULL, 'sailing', 24);
insert into interests (interest_id, interest_name, user_id) values (NULL, 'fitness', 24);

insert into interests (interest_id, interest_name, user_id) values (NULL, 'football', 25);
insert into interests (interest_id, interest_name, user_id) values (NULL, 'reading', 25);
insert into interests (interest_id, interest_name, user_id) values (NULL, 'juggling', 25);
insert into interests (interest_id, interest_name, user_id) values (NULL, 'art', 25);
insert into interests (interest_id, interest_name, user_id) values (NULL, 'design', 25);
insert into interests (interest_id, interest_name, user_id) values (NULL, 'running', 25);

insert into interests (interest_id, interest_name, user_id) values (NULL, 'food', 26);
insert into interests (interest_id, interest_name, user_id) values (NULL, 'skateboarding', 26);
insert into interests (interest_id, interest_name, user_id) values (NULL, 'mountain biking', 26);
insert into interests (interest_id, interest_name, user_id) values (NULL, 'technology', 26);
insert into interests (interest_id, interest_name, user_id) values (NULL, 'basketball', 26);
insert into interests (interest_id, interest_name, user_id) values (NULL, 'singing', 26);

insert into interests (interest_id, interest_name, user_id) values (NULL, 'motorcycles', 27);
insert into interests (interest_id, interest_name, user_id) values (NULL, 'travelling', 27);
insert into interests (interest_id, interest_name, user_id) values (NULL, 'football', 27);
insert into interests (interest_id, interest_name, user_id) values (NULL, 'sailing', 27);
insert into interests (interest_id, interest_name, user_id) values (NULL, 'movies', 27);
insert into interests (interest_id, interest_name, user_id) values (NULL, 'surfing', 27);

insert into interests (interest_id, interest_name, user_id) values (NULL, 'gymnastics', 28);
insert into interests (interest_id, interest_name, user_id) values (NULL, 'french', 28);
insert into interests (interest_id, interest_name, user_id) values (NULL, 'cooking', 28);
insert into interests (interest_id, interest_name, user_id) values (NULL, 'dancing', 28);
insert into interests (interest_id, interest_name, user_id) values (NULL, 'skiing', 28);
insert into interests (interest_id, interest_name, user_id) values (NULL, 'cars', 28);

insert into interests (interest_id, interest_name, user_id) values (NULL, 'computers', 29);
insert into interests (interest_id, interest_name, user_id) values (NULL, 'dogs', 29);
insert into interests (interest_id, interest_name, user_id) values (NULL, 'fishing', 29);
insert into interests (interest_id, interest_name, user_id) values (NULL, 'baking', 29);
insert into interests (interest_id, interest_name, user_id) values (NULL, 'horses', 29);
insert into interests (interest_id, interest_name, user_id) values (NULL, 'golf', 29);

insert into interests (interest_id, interest_name, user_id) values (NULL, 'computers', 30);
insert into interests (interest_id, interest_name, user_id) values (NULL, 'science', 30);
insert into interests (interest_id, interest_name, user_id) values (NULL, 'spanish', 30);
insert into interests (interest_id, interest_name, user_id) values (NULL, 'bungee jumping', 30);
insert into interests (interest_id, interest_name, user_id) values (NULL, 'golf', 30);
insert into interests (interest_id, interest_name, user_id) values (NULL, 'diving', 30);

insert into interests (interest_id, interest_name, user_id) values (NULL, 'cooking', 31);
insert into interests (interest_id, interest_name, user_id) values (NULL, 'horses', 31);
insert into interests (interest_id, interest_name, user_id) values (NULL, 'technology', 31);
insert into interests (interest_id, interest_name, user_id) values (NULL, 'italian', 31);
insert into interests (interest_id, interest_name, user_id) values (NULL, 'spanish', 31);
insert into interests (interest_id, interest_name, user_id) values (NULL, 'video games', 31);

insert into interests (interest_id, interest_name, user_id) values (NULL, 'art', 32);
insert into interests (interest_id, interest_name, user_id) values (NULL, 'animals', 32);
insert into interests (interest_id, interest_name, user_id) values (NULL, 'spanish', 32);
insert into interests (interest_id, interest_name, user_id) values (NULL, 'food', 32);
insert into interests (interest_id, interest_name, user_id) values (NULL, 'rowing', 32);
insert into interests (interest_id, interest_name, user_id) values (NULL, 'kayaking', 32);

insert into interests (interest_id, interest_name, user_id) values (NULL, 'singing', 33);
insert into interests (interest_id, interest_name, user_id) values (NULL, 'food', 33);
insert into interests (interest_id, interest_name, user_id) values (NULL, 'italian', 33);
insert into interests (interest_id, interest_name, user_id) values (NULL, 'rugby', 33);
insert into interests (interest_id, interest_name, user_id) values (NULL, 'diving', 33);
insert into interests (interest_id, interest_name, user_id) values (NULL, 'kayaking', 33);

insert into interests (interest_id, interest_name, user_id) values (NULL, 'skateboarding', 34);
insert into interests (interest_id, interest_name, user_id) values (NULL, 'cars', 34);
insert into interests (interest_id, interest_name, user_id) values (NULL, 'juggling', 34);
insert into interests (interest_id, interest_name, user_id) values (NULL, 'snowboarding', 34);
insert into interests (interest_id, interest_name, user_id) values (NULL, 'technology', 34);
insert into interests (interest_id, interest_name, user_id) values (NULL, 'swimming', 34);

insert into interests (interest_id, interest_name, user_id) values (NULL, 'gymnastics', 35);
insert into interests (interest_id, interest_name, user_id) values (NULL, 'surfing', 35);
insert into interests (interest_id, interest_name, user_id) values (NULL, 'italian', 35);
insert into interests (interest_id, interest_name, user_id) values (NULL, 'diving', 35);
insert into interests (interest_id, interest_name, user_id) values (NULL, 'animals', 35);
insert into interests (interest_id, interest_name, user_id) values (NULL, 'movies', 35);

insert into interests (interest_id, interest_name, user_id) values (NULL, 'rugby', 36);
insert into interests (interest_id, interest_name, user_id) values (NULL, 'mountain biking', 36);
insert into interests (interest_id, interest_name, user_id) values (NULL, 'dogs', 36);
insert into interests (interest_id, interest_name, user_id) values (NULL, 'food', 36);
insert into interests (interest_id, interest_name, user_id) values (NULL, 'gardening', 36);
insert into interests (interest_id, interest_name, user_id) values (NULL, 'television', 36);

CREATE TABLE user_images (
	image_id int unsigned NOT NULL AUTO_INCREMENT,
    image_link varchar(100) NOT NULL,
    is_profile_image enum('Yes', 'No') NOT NULL DEFAULT 'No',
    user_id int unsigned NOT NULL,
    date_created TIMESTAMP,
    PRIMARY KEY (image_id),
	UNIQUE KEY interest_id_UNIQUE (image_id)
);

-- profile pictures
insert into user_images values
	(NULL, './additional-files/images/profile/1.png', 'Yes', 1, now()),
    (NULL, './additional-files/images/profile/2.png', 'Yes', 2, now()),
    (NULL, './additional-files/images/profile/3.png', 'Yes', 3, now()),
    (NULL, './additional-files/images/profile/4.png', 'Yes', 4, now()),
    (NULL, './additional-files/images/profile/5.png', 'Yes', 5, now()),
    (NULL, './additional-files/images/profile/6.png', 'Yes', 6, now()),
    (NULL, './additional-files/images/profile/7.png', 'Yes', 7, now()),
    (NULL, './additional-files/images/profile/8.png', 'Yes', 8, now()),
    (NULL, './additional-files/images/profile/9.png', 'Yes', 9, now()),
    (NULL, './additional-files/images/profile/10.png', 'Yes', 10, now()),
    (NULL, './additional-files/images/profile/11.png', 'Yes', 11, now()),
    (NULL, './additional-files/images/profile/12.png', 'Yes', 12, now()),
    (NULL, './additional-files/images/profile/13.png', 'Yes', 13, now()),
    (NULL, './additional-files/images/profile/14.png', 'Yes', 14, now()),
    (NULL, './additional-files/images/profile/15.png', 'Yes', 15, now()),
    (NULL, './additional-files/images/profile/16.png', 'Yes', 16, now()),
    (NULL, './additional-files/images/profile/17.png', 'Yes', 17, now()),
    (NULL, './additional-files/images/profile/18.png', 'Yes', 18, now()),
    (NULL, './additional-files/images/profile/19.png', 'Yes', 19, now()),
    (NULL, './additional-files/images/profile/20.png', 'Yes', 20, now()),
    (NULL, './additional-files/images/profile/21.png', 'Yes', 21, now()),
    (NULL, './additional-files/images/profile/22.png', 'Yes', 22, now()),
    (NULL, './additional-files/images/profile/23.png', 'Yes', 23, now()),
    (NULL, './additional-files/images/profile/24.png', 'Yes', 24, now()),
    (NULL, './additional-files/images/profile/25.png', 'Yes', 25, now()),
    (NULL, './additional-files/images/profile/26.png', 'Yes', 26, now()),
    (NULL, './additional-files/images/profile/27.png', 'Yes', 27, now()),
    (NULL, './additional-files/images/profile/28.png', 'Yes', 28, now()),
    (NULL, './additional-files/images/profile/29.png', 'Yes', 29, now()),
    (NULL, './additional-files/images/profile/30.png', 'Yes', 30, now()),
    (NULL, './additional-files/images/profile/31.png', 'Yes', 31, now()),
    (NULL, './additional-files/images/profile/32.png', 'Yes', 32, now()),
    (NULL, './additional-files/images/profile/33.png', 'Yes', 33, now()),
    (NULL, './additional-files/images/profile/34.png', 'Yes', 34, now()),
    (NULL, './additional-files/images/profile/35.png', 'Yes', 35, now()),
    (NULL, './additional-files/images/profile/36.png', 'Yes', 36, now());
    
-- other images
insert into user_images values
	(NULL, './additional-files/images/misc/image1.png', 'No', 1, now()),
    (NULL, './additional-files/images/misc/image9.png', 'No', 1, now()),
    (NULL, './additional-files/images/misc/image36.png', 'No', 1, now()),
    
    (NULL, './additional-files/images/misc/image2.png', 'No', 2, now()),
    (NULL, './additional-files/images/misc/image17.png', 'No', 2, now()),
    (NULL, './additional-files/images/misc/image35.png', 'No', 2, now()),
    
    (NULL, './additional-files/images/misc/image3.png', 'No', 3, now()),
    (NULL, './additional-files/images/misc/image5.png', 'No', 3, now()),
    (NULL, './additional-files/images/misc/image34.png', 'No', 3, now()),
    
    (NULL, './additional-files/images/misc/image4.png', 'No', 4, now()),
    (NULL, './additional-files/images/misc/image16.png', 'No', 4, now()),
    (NULL, './additional-files/images/misc/image33.png', 'No', 4, now()),
    
    (NULL, './additional-files/images/misc/image5.png', 'No', 5, now()),
    (NULL, './additional-files/images/misc/image1.png', 'No', 5, now()),
    (NULL, './additional-files/images/misc/image32.png', 'No', 5, now()),
    
    (NULL, './additional-files/images/misc/image6.png', 'No', 6, now()),
    (NULL, './additional-files/images/misc/image3.png', 'No', 6, now()),
    (NULL, './additional-files/images/misc/image31.png', 'No', 6, now()),
    
    (NULL, './additional-files/images/misc/image7.png', 'No', 7, now()),
    (NULL, './additional-files/images/misc/image12.png', 'No', 7, now()),
    (NULL, './additional-files/images/misc/image30.png', 'No', 7, now()),
    
    (NULL, './additional-files/images/misc/image8.png', 'No', 8, now()),
    (NULL, './additional-files/images/misc/image25.png', 'No', 8, now()),
    (NULL, './additional-files/images/misc/image29.png', 'No', 8, now()),
    
    (NULL, './additional-files/images/misc/image9.png', 'No', 9, now()),
    (NULL, './additional-files/images/misc/image4.png', 'No', 9, now()),
    (NULL, './additional-files/images/misc/image28.png', 'No', 9, now()),
    
    (NULL, './additional-files/images/misc/image10.png', 'No', 10, now()),
    (NULL, './additional-files/images/misc/image7.png', 'No', 10, now()),
    (NULL, './additional-files/images/misc/image27.png', 'No', 10, now()),
    
    (NULL, './additional-files/images/misc/image11.png', 'No', 11, now()),
    (NULL, './additional-files/images/misc/image35.png', 'No', 11, now()),
    (NULL, './additional-files/images/misc/image26.png', 'No', 11, now()),
    
    (NULL, './additional-files/images/misc/image12.png', 'No', 12, now()),
    (NULL, './additional-files/images/misc/image26.png', 'No', 12, now()),
    (NULL, './additional-files/images/misc/image25.png', 'No', 12, now()),
    
    (NULL, './additional-files/images/misc/image13.png', 'No', 13, now()),
    (NULL, './additional-files/images/misc/image14.png', 'No', 13, now()),
    (NULL, './additional-files/images/misc/image24.png', 'No', 13, now()),
    
    (NULL, './additional-files/images/misc/image14.png', 'No', 14, now()),
    (NULL, './additional-files/images/misc/image33.png', 'No', 14, now()),
    (NULL, './additional-files/images/misc/image21.png', 'No', 14, now()),
    (NULL, './additional-files/images/misc/image11.png', 'No', 14, now()),
    (NULL, './additional-files/images/misc/image23.png', 'No', 14, now()),
    
    (NULL, './additional-files/images/misc/image15.png', 'No', 15, now()),
    (NULL, './additional-files/images/misc/image24.png', 'No', 15, now()),
    (NULL, './additional-files/images/misc/image22.png', 'No', 15, now()),
    
    (NULL, './additional-files/images/misc/image16.png', 'No', 16, now()),
    (NULL, './additional-files/images/misc/image10.png', 'No', 16, now()),
    (NULL, './additional-files/images/misc/image21.png', 'No', 16, now()),
    
    (NULL, './additional-files/images/misc/image17.png', 'No', 17, now()),
    (NULL, './additional-files/images/misc/image27.png', 'No', 17, now()),
    (NULL, './additional-files/images/misc/image20.png', 'No', 17, now()),
    
    (NULL, './additional-files/images/misc/image18.png', 'No', 18, now()),
    (NULL, './additional-files/images/misc/image3.png', 'No', 18, now()),
    (NULL, './additional-files/images/misc/image19.png', 'No', 18, now()),
    
    (NULL, './additional-files/images/misc/image19.png', 'No', 19, now()),
    (NULL, './additional-files/images/misc/image31.png', 'No', 19, now()),
    (NULL, './additional-files/images/misc/image18.png', 'No', 19, now()),
    
    (NULL, './additional-files/images/misc/image20.png', 'No', 20, now()),
    (NULL, './additional-files/images/misc/image28.png', 'No', 20, now()),
    (NULL, './additional-files/images/misc/image15.png', 'No', 20, now()),
    (NULL, './additional-files/images/misc/image17.png', 'No', 20, now()),
    
    (NULL, './additional-files/images/misc/image21.png', 'No', 21, now()),
    (NULL, './additional-files/images/misc/image2.png', 'No', 21, now()),
    (NULL, './additional-files/images/misc/image16.png', 'No', 21, now()),
    
    (NULL, './additional-files/images/misc/image22.png', 'No', 22, now()),
    (NULL, './additional-files/images/misc/image20.png', 'No', 22, now()),
    (NULL, './additional-files/images/misc/image15.png', 'No', 22, now()),
    
    (NULL, './additional-files/images/misc/image23.png', 'No', 23, now()),
    (NULL, './additional-files/images/misc/image21.png', 'No', 23, now()),
    (NULL, './additional-files/images/misc/image14.png', 'No', 23, now()),
    
    (NULL, './additional-files/images/misc/image24.png', 'No', 24, now()),
    (NULL, './additional-files/images/misc/image8.png', 'No', 24, now()),
    (NULL, './additional-files/images/misc/image13.png', 'No', 24, now()),
    
    (NULL, './additional-files/images/misc/image25.png', 'No', 25, now()),
    (NULL, './additional-files/images/misc/image32.png', 'No', 25, now()),
    (NULL, './additional-files/images/misc/image18.png', 'No', 25, now()),
    (NULL, './additional-files/images/misc/image12.png', 'No', 25, now()),
    
    (NULL, './additional-files/images/misc/image26.png', 'No', 26, now()),
    (NULL, './additional-files/images/misc/image11.png', 'No', 26, now()),
    
    (NULL, './additional-files/images/misc/image27.png', 'No', 27, now()),
    (NULL, './additional-files/images/misc/image15.png', 'No', 27, now()),
    (NULL, './additional-files/images/misc/image10.png', 'No', 27, now()),
    
    (NULL, './additional-files/images/misc/image28.png', 'No', 28, now()),
    (NULL, './additional-files/images/misc/image29.png', 'No', 28, now()),
    (NULL, './additional-files/images/misc/image9.png', 'No', 28, now()),
    
    (NULL, './additional-files/images/misc/image29.png', 'No', 29, now()),
    (NULL, './additional-files/images/misc/image18.png', 'No', 29, now()),
    (NULL, './additional-files/images/misc/image15.png', 'No', 29, now()),
    (NULL, './additional-files/images/misc/image8.png', 'No', 29, now()),
    
    (NULL, './additional-files/images/misc/image30.png', 'No', 30, now()),
    (NULL, './additional-files/images/misc/image6.png', 'No', 30, now()),
    (NULL, './additional-files/images/misc/image7.png', 'No', 30, now()),
    
    (NULL, './additional-files/images/misc/image31.png', 'No', 31, now()),
    (NULL, './additional-files/images/misc/image22.png', 'No', 31, now()),
    (NULL, './additional-files/images/misc/image6.png', 'No', 31, now()),
    
    (NULL, './additional-files/images/misc/image32.png', 'No', 32, now()),
    (NULL, './additional-files/images/misc/image30.png', 'No', 32, now()),
    (NULL, './additional-files/images/misc/image5.png', 'No', 32, now()),
    
    (NULL, './additional-files/images/misc/image33.png', 'No', 33, now()),
    (NULL, './additional-files/images/misc/image36.png', 'No', 33, now()),
    (NULL, './additional-files/images/misc/image4.png', 'No', 33, now()),
    
    (NULL, './additional-files/images/misc/image34.png', 'No', 34, now()),
    (NULL, './additional-files/images/misc/image23.png', 'No', 34, now()),
    (NULL, './additional-files/images/misc/image3.png', 'No', 34, now()),
    
    (NULL, './additional-files/images/misc/image35.png', 'No', 35, now()),
    (NULL, './additional-files/images/misc/image34.png', 'No', 35, now()),
    (NULL, './additional-files/images/misc/image2.png', 'No', 35, now()),
    
    (NULL, './additional-files/images/misc/image36.png', 'No', 36, now()),
    (NULL, './additional-files/images/misc/image13.png', 'No', 36, now()),
    (NULL, './additional-files/images/misc/image19.png', 'No', 36, now()),
    (NULL, './additional-files/images/misc/image1.png', 'No', 36, now());
    
CREATE TABLE banned_users (
	ban_id int unsigned NOT NULL AUTO_INCREMENT,
    user_id int unsigned NOT NULL,
    date TIMESTAMP,
    reason varchar(100) NOT NULL,
    duration time NOT NULL,
    PRIMARY KEY (ban_id),
	UNIQUE KEY ban_id_UNIQUE (ban_id)
);

CREATE TABLE users_info (
	user_info_id int unsigned NOT NULL AUTO_INCREMENT,
    description varchar(500),
    relationship_type enum('Friends', 'Casual', 'Serious', 'Other', 'Dont Know') NOT NULL DEFAULT 'Dont Know',
    job_title varchar(40) DEFAULT 'Prefer Not To Say',
    education enum('Junior Certificate', 'Leaving Certificate', 'Undergraduate', 'Postgraduate', 'Other', 'Prefer Not To Say') NOT NULL,
    can_drive enum('Yes', 'No', 'Prefer Not To Say') NOT NULL,
    drinks_alcohol enum('Yes', 'No', 'Socially', 'Prefer Not To Say') NOT NULL,
    smokes enum('Yes', 'No', 'Socially', 'Prefer Not To Say') NOT NULL,
    exercises enum('Yes', 'No', 'Prefer Not To Say') NOT NULL,
    has_children enum('Yes', 'No', 'Prefer Not To Say') NOT NULL,
    user_id int unsigned NOT NULL,
    PRIMARY KEY (user_info_id),
	UNIQUE KEY user_info_id_UNIQUE (user_info_id)
);

insert into users_info (user_info_id, description, relationship_type, job_title, education, can_drive, drinks_alcohol, smokes, exercises, has_children, user_id) values (null, 'This is some text about myself...', 'Friends', 'technician', 'Other', 'Yes', 'Socially', 'No', 'No', 'Yes', 1);
insert into users_info (user_info_id, description, relationship_type, job_title, education, can_drive, drinks_alcohol, smokes, exercises, has_children, user_id) values (null, 'This is some text about myself...', 'Serious', 'technician', 'Undergraduate', 'No', 'Socially', 'Socially', 'Prefer Not To Say', 'Yes', 2);
insert into users_info (user_info_id, description, relationship_type, job_title, education, can_drive, drinks_alcohol, smokes, exercises, has_children, user_id) values (null, 'This is some text about myself...', 'Serious', 'software engineer', 'Prefer Not To Say', 'Yes', 'Prefer Not To Say', 'Prefer Not To Say', 'Yes', 'Yes', 3);
insert into users_info (user_info_id, description, relationship_type, job_title, education, can_drive, drinks_alcohol, smokes, exercises, has_children, user_id) values (null, 'This is some text about myself...', 'Serious', 'police officer', 'Junior Certificate', 'Yes', 'No', 'No', 'Yes', 'No', 4);
insert into users_info (user_info_id, description, relationship_type, job_title, education, can_drive, drinks_alcohol, smokes, exercises, has_children, user_id) values (null, 'This is some text about myself...', 'Other', 'engineer', 'Junior Certificate', 'Prefer Not To Say', 'Yes', 'Socially', 'No', 'No', 5);
insert into users_info (user_info_id, description, relationship_type, job_title, education, can_drive, drinks_alcohol, smokes, exercises, has_children, user_id) values (null, 'This is some text about myself...', 'Serious', 'surgeon', 'Prefer Not To Say', 'Yes', 'Yes', 'No', 'Yes', 'Prefer Not To Say', 6);
insert into users_info (user_info_id, description, relationship_type, job_title, education, can_drive, drinks_alcohol, smokes, exercises, has_children, user_id) values (null, 'This is some text about myself...', 'Friends', 'software engineer', 'Postgraduate', 'Prefer Not To Say', 'Yes', 'Yes', 'No', 'No', 7);
insert into users_info (user_info_id, description, relationship_type, job_title, education, can_drive, drinks_alcohol, smokes, exercises, has_children, user_id) values (null, 'This is some text about myself...', 'Dont Know', 'technician', 'Junior Certificate', 'Yes', 'No', 'Prefer Not To Say', 'Yes', 'No', 8);
insert into users_info (user_info_id, description, relationship_type, job_title, education, can_drive, drinks_alcohol, smokes, exercises, has_children, user_id) values (null, 'This is some text about myself...', 'Friends', 'accountant', 'Junior Certificate', 'No', 'Socially', 'Yes', 'Prefer Not To Say', 'No', 9);
insert into users_info (user_info_id, description, relationship_type, job_title, education, can_drive, drinks_alcohol, smokes, exercises, has_children, user_id) values (null, 'This is some text about myself...', 'Dont Know', 'security guard', 'Prefer Not To Say', 'No', 'Yes', 'Socially', 'Prefer Not To Say', 'No', 10);
insert into users_info (user_info_id, description, relationship_type, job_title, education, can_drive, drinks_alcohol, smokes, exercises, has_children, user_id) values (null, 'This is some text about myself...', 'Dont Know', 'technician', 'Prefer Not To Say', 'Yes', 'Socially', 'Yes', 'Yes', 'Prefer Not To Say', 11);
insert into users_info (user_info_id, description, relationship_type, job_title, education, can_drive, drinks_alcohol, smokes, exercises, has_children, user_id) values (null, 'This is some text about myself...', 'Friends', 'police officer', 'Postgraduate', 'Yes', 'Prefer Not To Say', 'Socially', 'No', 'Yes', 12);
insert into users_info (user_info_id, description, relationship_type, job_title, education, can_drive, drinks_alcohol, smokes, exercises, has_children, user_id) values (null, 'This is some text about myself...', 'Serious', 'fashion designer', 'Other', 'No', 'Socially', 'No', 'No', 'No', 13);
insert into users_info (user_info_id, description, relationship_type, job_title, education, can_drive, drinks_alcohol, smokes, exercises, has_children, user_id) values (null, 'This is some text about myself...', 'Dont Know', 'surgeon', 'Prefer Not To Say', 'No', 'No', 'No', 'No', 'No', 14);
insert into users_info (user_info_id, description, relationship_type, job_title, education, can_drive, drinks_alcohol, smokes, exercises, has_children, user_id) values (null, 'This is some text about myself...', 'Other', 'technician', 'Postgraduate', 'Prefer Not To Say', 'Yes', 'No', 'No', 'Prefer Not To Say', 15);
insert into users_info (user_info_id, description, relationship_type, job_title, education, can_drive, drinks_alcohol, smokes, exercises, has_children, user_id) values (null, 'This is some text about myself...', 'Serious', 'doctor', 'Undergraduate', 'No', 'Yes', 'No', 'Prefer Not To Say', 'Prefer Not To Say', 16);
insert into users_info (user_info_id, description, relationship_type, job_title, education, can_drive, drinks_alcohol, smokes, exercises, has_children, user_id) values (null, 'This is some text about myself...', 'Friends', 'police officer', 'Undergraduate', 'Yes', 'No', 'No', 'No', 'Prefer Not To Say', 17);
insert into users_info (user_info_id, description, relationship_type, job_title, education, can_drive, drinks_alcohol, smokes, exercises, has_children, user_id) values (null, 'This is some text about myself...', 'Other', 'accountant', 'Junior Certificate', 'No', 'Prefer Not To Say', 'Prefer Not To Say', 'Yes', 'Yes', 18);
insert into users_info (user_info_id, description, relationship_type, job_title, education, can_drive, drinks_alcohol, smokes, exercises, has_children, user_id) values (null, 'This is some text about myself...', 'Casual', 'engineer', 'Postgraduate', 'No', 'Socially', 'Socially', 'Yes', 'No', 19);
insert into users_info (user_info_id, description, relationship_type, job_title, education, can_drive, drinks_alcohol, smokes, exercises, has_children, user_id) values (null, 'This is some text about myself...', 'Casual', 'firefighter', 'Prefer Not To Say', 'Yes', 'Yes', 'Socially', 'Prefer Not To Say', 'No', 20);
insert into users_info (user_info_id, description, relationship_type, job_title, education, can_drive, drinks_alcohol, smokes, exercises, has_children, user_id) values (null, 'This is some text about myself...', 'Serious', 'athlete', 'Junior Certificate', 'Yes', 'No', 'Yes', 'Yes', 'No', 21);
insert into users_info (user_info_id, description, relationship_type, job_title, education, can_drive, drinks_alcohol, smokes, exercises, has_children, user_id) values (null, 'This is some text about myself...', 'Friends', 'technician', 'Junior Certificate', 'No', 'Prefer Not To Say', 'Yes', 'Prefer Not To Say', 'Yes', 22);
insert into users_info (user_info_id, description, relationship_type, job_title, education, can_drive, drinks_alcohol, smokes, exercises, has_children, user_id) values (null, 'This is some text about myself...', 'Other', 'electrician', 'Undergraduate', 'Yes', 'Yes', 'Prefer Not To Say', 'Yes', 'Yes', 23);
insert into users_info (user_info_id, description, relationship_type, job_title, education, can_drive, drinks_alcohol, smokes, exercises, has_children, user_id) values (null, 'This is some text about myself...', 'Other', 'athlete', 'Undergraduate', 'No', 'Prefer Not To Say', 'Yes', 'Yes', 'No', 24);
insert into users_info (user_info_id, description, relationship_type, job_title, education, can_drive, drinks_alcohol, smokes, exercises, has_children, user_id) values (null, 'This is some text about myself...', 'Casual', 'surgeon', 'Prefer Not To Say', 'Yes', 'Yes', 'No', 'Yes', 'Prefer Not To Say', 25);
insert into users_info (user_info_id, description, relationship_type, job_title, education, can_drive, drinks_alcohol, smokes, exercises, has_children, user_id) values (null, 'This is some text about myself...', 'Casual', 'accountant', 'Undergraduate', 'Prefer Not To Say', 'Yes', 'Yes', 'Prefer Not To Say', 'Yes', 26);
insert into users_info (user_info_id, description, relationship_type, job_title, education, can_drive, drinks_alcohol, smokes, exercises, has_children, user_id) values (null, 'This is some text about myself...', 'Serious', 'architect', 'Leaving Certificate', 'No', 'Prefer Not To Say', 'No', 'No', 'No', 27);
insert into users_info (user_info_id, description, relationship_type, job_title, education, can_drive, drinks_alcohol, smokes, exercises, has_children, user_id) values (null, 'This is some text about myself...', 'Friends', 'software engineer', 'Junior Certificate', 'Yes', 'Prefer Not To Say', 'Yes', 'No', 'Yes', 28);
insert into users_info (user_info_id, description, relationship_type, job_title, education, can_drive, drinks_alcohol, smokes, exercises, has_children, user_id) values (null, 'This is some text about myself...', 'Dont Know', 'security guard', 'Prefer Not To Say', 'Yes', 'Yes', 'Prefer Not To Say', 'Prefer Not To Say', 'No', 29);
insert into users_info (user_info_id, description, relationship_type, job_title, education, can_drive, drinks_alcohol, smokes, exercises, has_children, user_id) values (null, 'This is some text about myself...', 'Serious', 'nurse', 'Junior Certificate', 'Yes', 'Prefer Not To Say', 'No', 'Yes', 'Yes', 30);
insert into users_info (user_info_id, description, relationship_type, job_title, education, can_drive, drinks_alcohol, smokes, exercises, has_children, user_id) values (null, 'This is some text about myself...', 'Other', 'surgeon', 'Prefer Not To Say', 'No', 'Yes', 'No', 'Prefer Not To Say', 'No', 31);
insert into users_info (user_info_id, description, relationship_type, job_title, education, can_drive, drinks_alcohol, smokes, exercises, has_children, user_id) values (null, 'This is some text about myself...', 'Other', 'pilot', 'Postgraduate', 'Prefer Not To Say', 'Socially', 'No', 'Yes', 'No', 32);
insert into users_info (user_info_id, description, relationship_type, job_title, education, can_drive, drinks_alcohol, smokes, exercises, has_children, user_id) values (null, 'This is some text about myself...', 'Serious', 'police officer', 'Undergraduate', 'No', 'Prefer Not To Say', 'Prefer Not To Say', 'Prefer Not To Say', 'Prefer Not To Say', 33);
insert into users_info (user_info_id, description, relationship_type, job_title, education, can_drive, drinks_alcohol, smokes, exercises, has_children, user_id) values (null, 'This is some text about myself...', 'Dont Know', 'nurse', 'Prefer Not To Say', 'Yes', 'Yes', 'Socially', 'No', 'No', 34);
insert into users_info (user_info_id, description, relationship_type, job_title, education, can_drive, drinks_alcohol, smokes, exercises, has_children, user_id) values (null, 'This is some text about myself...', 'Dont Know', 'athlete', 'Leaving Certificate', 'Yes', 'Prefer Not To Say', 'Prefer Not To Say', 'Yes', 'Prefer Not To Say', 35);
insert into users_info (user_info_id, description, relationship_type, job_title, education, can_drive, drinks_alcohol, smokes, exercises, has_children, user_id) values (null, 'This is some text about myself...', 'Serious', 'architect', 'Leaving Certificate', 'Yes', 'Socially', 'Socially', 'Yes', 'No', 36);



