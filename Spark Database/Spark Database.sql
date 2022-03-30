CREATE DATABASE spark_database;
USE spark_database;

CREATE TABLE users (
	user_id int unsigned NOT NULL AUTO_INCREMENT PRIMARY KEY,
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
	login_id int unsigned NOT NULL
);

insert into users values 
	(NULL, 'John', 'Smith', 25, 'Male', 'Female', 185, 75, 'Limerick', 'Ireland', 'Aries', 'No', 1),
    (NULL, 'Brenda', 'Parks', 26, 'Female', 'Female', 152, 55, 'Clare', 'Ireland', 'Capricorn', 'No', 2),
    (NULL, 'Chelsey', 'Palmer', 21, 'Female', 'Male', 165, 60, 'Limerick', 'Ireland', 'Aquarius', 'No', 3),
    (NULL, 'Hanna', 'Cleveland', 30, 'Female', 'Male', 166, 61, 'Dublin', 'Ireland', 'Aries', 'No', 4),
    (NULL, 'James', 'Lewis', 24, 'Male', 'Female', 180, 70, 'Galway', 'Ireland', 'Pisces', 'No', 5),
    (NULL, 'Lindsay', 'Harris', 22, 'Female', 'Male', 170, 62, 'Cork', 'Ireland', NULL, 'No', 6),
    (NULL, 'Loius', 'Adkins', 27, 'Male', 'Male', 185, 73, 'Cork', 'Ireland', 'Cancer', 'No', 7),
    (NULL, 'Mary', 'Walker', 28, 'Female', 'Male', 162, 60, 'Kildare', 'Ireland', 'Leo', 'No', 8),
    (NULL, 'Philip', 'Nelson', 25, 'Male', 'Female', 185, 83, 'Galway', 'Ireland', NULL, 'No', 9),
    (NULL, 'Robert', 'Green', 25, 'Male', 'Female', 175, 72, 'Sligo', 'Ireland', 'Virgo', 'No', 10),
    (NULL, 'Sandra', 'Freeman', 23, 'Female', 'Female', 160, 69, 'Dublin', 'Ireland', 'Taurus', 'No', 11),
    (NULL, 'Terry', 'Miller', 29, 'Male', 'Female', 187, 80, 'Limerick', 'Ireland', NULL, 'No', 12),
    (NULL, 'Grace', 'Norris', 43, 'Female', 'Female', 161, 57, 'Cork', 'Ireland', 'Libra', 'No', 13),
    (NULL, 'Natasha', 'Hewitt', 37, 'Female', 'Female', 174, 76, 'Louth', 'Ireland', 'Scorpio', 'No', 14),
    (NULL, 'Isaac', 'Stewart', 22, 'Male', 'Male', 174, 58, 'Derry', 'N. Ireland', 'Aquarius', 'No', 15),
    (NULL, 'Conor', 'Hall', 35, 'Male', 'Female', 177, 74, 'Antrim', 'N. Ireland', NULL, 'No', 16),
    (NULL, 'Skye', 'Franklin', 23, 'Female', 'Male', 160, 61, 'Louth', 'Ireland', 'Aquarius', 'No', 17),
    (NULL, 'Charles', 'North', 26, 'Male', 'Female', 185, 70, 'Meath', 'Ireland', NULL, 'No', 18),
    (NULL, 'Courtney', 'Webster', 25, 'Female', 'Male', 180, 68, 'Wicklow', 'Ireland', 'Capricorn', 'No', 19),
    (NULL, 'Niamh', 'Norman', 32, 'Female', 'Male', 166, 58, 'Laois', 'Ireland', NULL, 'No', 20),
    (NULL, 'Elliot', 'Mason', 31, 'Male', 'Female', 185, 90, 'Offaly', 'Ireland', 'Sagittarius', 'No', 21),
    (NULL, 'Sean', 'Weston', 24, 'Male', 'Female', 178, 73, 'Galway', 'Ireland', 'Pisces', 'No', 22),
    (NULL, 'Brooke', 'Finch', 34, 'Female', 'Male', 180, 65, 'Limerick', 'N. Ireland', 'Gemini', 'No', 23),
    (NULL, 'Kai', 'Holland', 19, 'Male', 'Female', 186, 77, 'Sligo', 'Ireland', 'Virgo', 'No', 24),
    (NULL, 'Jayden', 'Knowles', 26, 'Male', 'Male', 185, 75, 'Meath', 'Ireland', 'Taurus', 'No', 25),
    (NULL, 'Laura', 'Bradley', 27, 'Female', 'Female', 161, 57, 'Cork', 'Ireland', NULL, 'No', 26),
    (NULL, 'Maya', 'Hawkins', 24, 'Female', 'Male', 165, 60, 'Dublin', 'Ireland', NULL, 'No', 27),
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
	login_id int unsigned NOT NULL AUTO_INCREMENT PRIMARY KEY,
	email varchar(50) NOT NULL,
	password varchar(30) NOT NULL,
	user_id int unsigned NOT NULL,
	date_created TIMESTAMP
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
    (NULL, 'chloereynolds@email.com', 'chloe35!', 35, now()),
    (NULL, 'alexander.chan4@email.com', 'chan27!', 36, now());

-- admin login
insert into logins value(NULL, 'admin@admin.com', 'admin', 0, now());

CREATE TABLE liked_profiles (
	match_id int unsigned NOT NULL AUTO_INCREMENT PRIMARY KEY,
    user_id int unsigned NOT NULL,
    liked_user_id int unsigned NOT NULL,
    date TIMESTAMP
);

insert into liked_profiles values 
	(NULL, 1, 3, now()),
    (NULL, 1, 4, now()),
    (NULL, 1, 28, now()),
    
    (NULL, 2, 14, now()),
    (NULL, 2, 26, now()),
    (NULL, 2, 13, now()),
    
    (NULL, 3, 1, now()),
    (NULL, 3, 18, now()),
    (NULL, 3, 21, now()),
    
    (NULL, 4, 30, now()),
    (NULL, 4, 16, now()),
    (NULL, 4, 1, now()),
    
    (NULL, 5, 35, now()),
    (NULL, 5, 23, now()),
    (NULL, 5, 3, now()),
    
    (NULL, 6, 24, now()),
    (NULL, 6, 9, now()),
    (NULL, 6, 32, now()),
    
    (NULL, 7, 15, now()),
    (NULL, 7, 25, now()),
    (NULL, 7, 33, now()),
    
    (NULL, 8, 9, now()),
    (NULL, 8, 5, now()),
    (NULL, 8, 30, now()),
    
    (NULL, 9, 4, now()),
    (NULL, 9, 8, now()),
    (NULL, 9, 6, now()),
    
    (NULL, 10, 28, now()),
    (NULL, 10, 23, now()),
    (NULL, 10, 29, now()),
    
    (NULL, 11, 14, now()),
    (NULL, 11, 13, now()),
    (NULL, 11, 2, now()),
    
    (NULL, 12, 35, now()),
    (NULL, 12, 34, now()),
    (NULL, 12, 31, now()),
    
    (NULL, 13, 11, now()),
    (NULL, 13, 2, now()),
    (NULL, 13, 14, now()),
    
    (NULL, 14, 26, now()),
    (NULL, 14, 2, now()),
    (NULL, 14, 11, now()),
    
    (NULL, 15, 7, now()),
    (NULL, 15, 33, now()),
    (NULL, 15, 25, now()),
    
    (NULL, 16, 29, now()),
    (NULL, 16, 8, now()),
    (NULL, 16, 6, now()),
    
    (NULL, 17, 32, now()),
    (NULL, 17, 30, now()),
    (NULL, 17, 24, now()),
    
    (NULL, 18, 8, now()),
    (NULL, 18, 3, now()),
    (NULL, 18, 6, now()),
    
    (NULL, 19, 9, now()),
    (NULL, 19, 5, now()),
    (NULL, 19, 21, now()),
    
    (NULL, 20, 32, now()),
    (NULL, 20, 22, now()),
    (NULL, 20, 30, now()),
    
    (NULL, 21, 17, now()),
    (NULL, 21, 20, now()),
    (NULL, 21, 35, now()),
    
    (NULL, 22, 20, now()),
    (NULL, 22, 4, now()),
    (NULL, 22, 3, now()),
    
    (NULL, 23, 32, now()),
    (NULL, 23, 10, now()),
    (NULL, 23, 30, now()),
    
    (NULL, 24, 28, now()),
    (NULL, 24, 3, now()),
    (NULL, 24, 4, now()),
    
    (NULL, 25, 7, now()),
    (NULL, 25, 15, now()),
    (NULL, 25, 33, now()),
    
    (NULL, 26, 2, now()),
    (NULL, 26, 14, now()),
    (NULL, 26, 11, now()),
    
    (NULL, 27, 36, now()),
    (NULL, 27, 9, now()),
    (NULL, 27, 21, now()),
    
    (NULL, 28, 16, now()),
    (NULL, 28, 10, now()),
    (NULL, 28, 9, now()),
    
    (NULL, 29, 18, now()),
    (NULL, 29, 1, now()),
    (NULL, 29, 32, now()),
    
    (NULL, 30, 34, now()),
    (NULL, 30, 19, now()),
    (NULL, 30, 17, now()),
    
    (NULL, 31, 5, now()),
    (NULL, 31, 1, now()),
    (NULL, 31, 32, now()),
    
    (NULL, 32, 20, now()),
    (NULL, 32, 17, now()),
    (NULL, 32, 27, now()),
    
    (NULL, 33, 7, now()),
    (NULL, 33, 15, now()),
    (NULL, 33, 25, now()),
    
    (NULL, 34, 16, now()),
    (NULL, 34, 21, now()),
    (NULL, 34, 1, now()),
    
    (NULL, 35, 16, now()),
    (NULL, 35, 18, now()),
    (NULL, 35, 5, now()),
    
    (NULL, 36, 20, now()),
    (NULL, 36, 29, now()),
    (NULL, 36, 23, now());

CREATE TABLE interests (
	interest_id int unsigned NOT NULL AUTO_INCREMENT PRIMARY KEY,
    interest_category varchar(50),
    interest_name varchar(30) NOT NULL
);

insert into interests values
	(NULL, NULL, 'Fishing'),
    (NULL, NULL, 'Travelling'),
    (NULL, NULL, 'Juggling'),
	(NULL, 'Music and Dance', 'Dancing'),
    (NULL, 'Music and Dance', 'Music'),
    (NULL, 'Music and Dance', 'Singing'),
    (NULL, 'Sport', 'Sailing'),
    (NULL, 'Sport', 'Hurling'),
    (NULL, 'Sport', 'Archery'),
    (NULL, 'Sport', 'Snowboarding'),
	(NULL, 'Sport', 'Gymnastics'),
	(NULL, 'Sport', 'Swimming'),
    (NULL, 'Sport', 'Football'),
    (NULL, 'Sport', 'Diving'),
    (NULL, 'Sport', 'Rugby'),
    (NULL, 'Sport', 'Rowing'),
    (NULL, 'Sport', 'Boxing'),
    (NULL, 'Sport', 'Kayaking'),
    (NULL, 'Sport', 'Tennis'),
    (NULL, 'Sport', 'Skateboarding'),
    (NULL, 'Sport', 'Skiing'),
    (NULL, 'Sport', 'Basketball'),
    (NULL, 'Sport', 'Gaelic Football'),
    (NULL, 'Sport', 'Surfing'),
    (NULL, 'Sport', 'Diving'),
    (NULL, 'Sport', 'Golf'),
    (NULL, 'Sport', 'Formula 1'),
    (NULL, 'Animals', 'Animals'),
    (NULL, 'Animals', 'Dogs'),
    (NULL, 'Animals', 'Cats'),
    (NULL, 'Animals', 'Horses'),
    (NULL, 'Animals', 'Wildlife'),
    (NULL, 'Vehicles', 'Motorcycles'),
    (NULL, 'Vehicles', 'Cars'),
    (NULL, 'Language', 'Italian'),
    (NULL, 'Language', 'French'),
    (NULL, 'Language', 'German'),
    (NULL, 'Language', 'Spanish'),
    (NULL, 'Art and Design', 'Architecture'),
    (NULL, 'Art and Design', 'Art'),
    (NULL, 'Art and Design', 'Fashion'),
    (NULL, 'Art and Design', 'Design'),
    (NULL, 'Literature', 'Reading'),
    (NULL, 'Literature', 'Poetry'),
    (NULL, 'Science and Maths', 'Biology'),
    (NULL, 'Science and Maths', 'Chemistry'),
    (NULL, 'Science and Maths', 'Physics'),
    (NULL, 'Science and Maths', 'Mathematics'),
    (NULL, 'Fitness', 'Running'),
    (NULL, 'Fitness', 'Fitness'),
    (NULL, 'Fitness', 'Hiking'),
    (NULL, 'Extreme Sport', 'Bunjee Jumping'),
    (NULL, 'Extreme Sports', 'Skydiving'),
    (NULL, 'Extreme Sports', 'Extreme Sports'),
    (NULL, 'Extreme Sports', 'Mountain Biking'),
    (NULL, 'Computers and Technology', 'Technology'),
    (NULL, 'Computers and Technology', 'Programming'),
    (NULL, 'Computers and Technology', 'Computers'),
    (NULL, 'Computers and Technology', 'Computer Science'),
    (NULL, 'Computers and Technology', 'Engineering'),
    (NULL, 'Food', 'Food'),
    (NULL, 'Food', 'Cooking'),
    (NULL, 'Food', 'Baking'),
    (NULL, 'Television', 'Movies'),
    (NULL, 'Television', 'Television'),
    (NULL, 'DIY', 'Gardening'),
    (NULL, 'DIY', 'Carpentry'),
    (NULL, 'DIY', 'DIY'),
    (NULL, 'Games', 'Video Games'),
    (NULL, 'Games', 'Board Games');
    
CREATE TABLE users_interests (
	users_interest_id int unsigned NOT NULL AUTO_INCREMENT PRIMARY KEY,
    interest_id int unsigned NOT NULL,
    user_id int unsigned NOT NULL
);

insert into users_interests values
	(NULL, 9, 1),
	(NULL, 18, 1),
	(NULL, 14, 1),
	(NULL, 8, 1),
	(NULL, 37, 1),
	(NULL, 55, 1),
	(NULL, 46, 1),
	(NULL, 41, 1),
	(NULL, 61, 1),
    
	(NULL, 52, 2),
	(NULL, 54, 2),
	(NULL, 26, 2),
	(NULL, 66, 2),
	(NULL, 35, 2),
	(NULL, 39, 2),
	(NULL, 51, 2),
	(NULL, 40, 2),
	(NULL, 23, 2),
    
	(NULL, 11, 3),
	(NULL, 31, 3),
	(NULL, 8, 3),
	(NULL, 16, 3),
	(NULL, 20, 3),
	(NULL, 58, 3),
	(NULL, 40, 3),
	(NULL, 48, 3),
	(NULL, 62, 3),
    
	(NULL, 39, 4),
	(NULL, 64, 4),
	(NULL, 34, 4),
	(NULL, 38, 4),
	(NULL, 66, 4),
	(NULL, 34, 4),
	(NULL, 14, 4),
	(NULL, 67, 4),
	(NULL, 17, 4),
    
	(NULL, 7, 5),
	(NULL, 66, 5),
	(NULL, 5, 5),
	(NULL, 50, 5),
	(NULL, 46, 5),
	(NULL, 34, 5),
	(NULL, 20, 5),
	(NULL, 69, 5),
	(NULL, 15, 5),
    
	(NULL, 64, 6),
	(NULL, 28, 6),
	(NULL, 53, 6),
	(NULL, 69, 6),
	(NULL, 6, 6),
	(NULL, 61, 6),
	(NULL, 44, 6),
	(NULL, 14, 6),
	(NULL, 3, 6),
    
	(NULL, 31, 7),
	(NULL, 20, 7),
	(NULL, 50, 7),
	(NULL, 3, 7),
	(NULL, 55, 7),
	(NULL, 15, 7),
	(NULL, 26, 7),
	(NULL, 19, 7),
	(NULL, 66, 7),
    
	(NULL, 44, 8),
	(NULL, 3, 8),
	(NULL, 21, 8),
	(NULL, 18, 8),
	(NULL, 26, 8),
	(NULL, 51, 8),
	(NULL, 65, 8),
	(NULL, 31, 8),
	(NULL, 14, 8),
    
	(NULL, 46, 9),
	(NULL, 30, 9),
	(NULL, 48, 9),
	(NULL, 57, 9),
	(NULL, 56, 9),
	(NULL, 35, 9),
	(NULL, 35, 9),
	(NULL, 68, 9),
	(NULL, 45, 9),
    
	(NULL, 57, 10),
	(NULL, 29, 10),
	(NULL, 12, 10),
	(NULL, 39, 10),
	(NULL, 38, 10),
	(NULL, 24, 10),
	(NULL, 33, 10),
	(NULL, 1, 10),
	(NULL, 27, 10),
    
	(NULL, 28, 11),
	(NULL, 69, 11),
	(NULL, 5, 11),
	(NULL, 63, 11),
	(NULL, 64, 11),
	(NULL, 69, 11),
	(NULL, 11, 11),
	(NULL, 47, 11),
	(NULL, 18, 11),
    
	(NULL, 28, 12),
	(NULL, 59, 12),
	(NULL, 5, 12),
	(NULL, 22, 12),
	(NULL, 30, 12),
	(NULL, 6, 12),
	(NULL, 43, 12),
	(NULL, 20, 12),
	(NULL, 30, 12),
    
	(NULL, 20, 13),
	(NULL, 10, 13),
	(NULL, 62, 13),
	(NULL, 4, 13),
	(NULL, 46, 13),
	(NULL, 35, 13),
	(NULL, 29, 13),
	(NULL, 2, 13),
	(NULL, 23, 13),
    
	(NULL, 15, 14),
	(NULL, 37, 14),
	(NULL, 56, 14),
	(NULL, 59, 14),
	(NULL, 54, 14),
	(NULL, 13, 14),
	(NULL, 26, 14),
	(NULL, 30, 14),
	(NULL, 51, 14),
    
	(NULL, 3, 15),
	(NULL, 27, 15),
	(NULL, 22, 15),
	(NULL, 62, 15),
	(NULL, 16, 15),
	(NULL, 43, 15),
	(NULL, 39, 15),
	(NULL, 19, 15),
	(NULL, 24, 15),
    
	(NULL, 1, 16),
	(NULL, 60, 16),
	(NULL, 17, 16),
	(NULL, 64, 16),
	(NULL, 19, 16),
	(NULL, 41, 16),
	(NULL, 58, 16),
	(NULL, 17, 16),
	(NULL, 25, 16),
    
	(NULL, 65, 17),
	(NULL, 59, 17),
	(NULL, 2, 17),
	(NULL, 66, 17),
	(NULL, 35, 17),
	(NULL, 37, 17),
	(NULL, 58, 17),
	(NULL, 37, 17),
	(NULL, 46, 17),
    
	(NULL, 32, 18),
	(NULL, 40, 18),
	(NULL, 18, 18),
	(NULL, 5, 18),
	(NULL, 29, 18),
	(NULL, 49, 18),
	(NULL, 58, 18),
	(NULL, 32, 18),
	(NULL, 6, 18),
    
	(NULL, 27, 19),
	(NULL, 52, 19),
	(NULL, 10, 19),
	(NULL, 36, 19),
	(NULL, 41, 19),
	(NULL, 40, 19),
	(NULL, 19, 19),
	(NULL, 18, 19),
	(NULL, 58, 19),
    
	(NULL, 29, 20),
	(NULL, 42, 20),
	(NULL, 46, 20),
	(NULL, 21, 20),
	(NULL, 27, 20),
	(NULL, 46, 20),
	(NULL, 33, 20),
	(NULL, 54, 20),
	(NULL, 20, 20),
    
	(NULL, 37, 21),
	(NULL, 39, 21),
	(NULL, 51, 21),
	(NULL, 51, 21),
	(NULL, 29, 21),
	(NULL, 41, 21),
	(NULL, 65, 21),
	(NULL, 57, 21),
	(NULL, 24, 21),
    
	(NULL, 67, 22),
	(NULL, 44, 22),
	(NULL, 35, 22),
	(NULL, 49, 22),
	(NULL, 17, 22),
	(NULL, 66, 22),
	(NULL, 21, 22),
	(NULL, 51, 22),
	(NULL, 23, 22),
    
	(NULL, 11, 23),
	(NULL, 67, 23),
	(NULL, 37, 23),
	(NULL, 22, 23),
	(NULL, 58, 23),
	(NULL, 27, 23),
	(NULL, 63, 23),
	(NULL, 65, 23),
	(NULL, 33, 23),
    
	(NULL, 34, 24),
	(NULL, 6, 24),
	(NULL, 27, 24),
	(NULL, 60, 24),
	(NULL, 45, 24),
	(NULL, 16, 24),
	(NULL, 39, 24),
	(NULL, 9, 24),
	(NULL, 41, 24),
    
	(NULL, 40, 25),
	(NULL, 25, 25),
	(NULL, 60, 25),
	(NULL, 36, 25),
	(NULL, 21, 25),
	(NULL, 7, 25),
	(NULL, 48, 25),
	(NULL, 41, 25),
	(NULL, 17, 25),
    
	(NULL, 56, 26),
	(NULL, 29, 26),
	(NULL, 15, 26),
	(NULL, 20, 26),
	(NULL, 51, 26),
	(NULL, 68, 26),
	(NULL, 41, 26),
	(NULL, 57, 26),
	(NULL, 64, 26),
    
	(NULL, 46, 27),
	(NULL, 28, 27),
	(NULL, 55, 27),
	(NULL, 43, 27),
	(NULL, 55, 27),
	(NULL, 50, 27),
	(NULL, 44, 27),
	(NULL, 48, 27),
	(NULL, 36, 27),
    
	(NULL, 48, 28),
	(NULL, 50, 28),
	(NULL, 4, 28),
	(NULL, 19, 28),
	(NULL, 62, 28),
	(NULL, 10, 28),
	(NULL, 11, 28),
	(NULL, 43, 28),
	(NULL, 25, 28),
    
	(NULL, 53, 29),
	(NULL, 49, 29),
	(NULL, 61, 29),
	(NULL, 25, 29),
	(NULL, 36, 29),
	(NULL, 37, 29),
	(NULL, 10, 29),
	(NULL, 43, 29),
	(NULL, 48, 29),
    
	(NULL, 22, 30),
	(NULL, 65, 30),
	(NULL, 2, 30),
	(NULL, 37, 30),
	(NULL, 52, 30),
	(NULL, 37, 30),
	(NULL, 46, 30),
	(NULL, 34, 30),
	(NULL, 1, 30),
    
	(NULL, 5, 31),
	(NULL, 8, 31),
	(NULL, 8, 31),
	(NULL, 37, 31),
	(NULL, 46, 31),
	(NULL, 7, 31),
	(NULL, 58, 31),
	(NULL, 4, 31),
	(NULL, 68, 31),
    
	(NULL, 51, 32),
	(NULL, 1, 32),
	(NULL, 8, 32),
	(NULL, 61, 32),
	(NULL, 32, 32),
	(NULL, 53, 32),
	(NULL, 49, 32),
	(NULL, 42, 32),
	(NULL, 32, 32),
    
	(NULL, 40, 33),
	(NULL, 35, 33),
	(NULL, 10, 33),
	(NULL, 1, 33),
	(NULL, 25, 33),
	(NULL, 42, 33),
	(NULL, 12, 33),
	(NULL, 64, 33),
	(NULL, 50, 33),
    
	(NULL, 26, 34),
	(NULL, 8, 34),
	(NULL, 10, 34),
	(NULL, 48, 34),
	(NULL, 45, 34),
	(NULL, 15, 34),
	(NULL, 6, 34),
	(NULL, 19, 34),
	(NULL, 19, 34),
    
	(NULL, 63, 35),
	(NULL, 53, 35),
	(NULL, 46, 35),
	(NULL, 35, 35),
	(NULL, 11, 35),
	(NULL, 41, 35),
	(NULL, 39, 35),
	(NULL, 65, 35),
	(NULL, 54, 35),
    
	(NULL, 57, 36),
	(NULL, 10, 36),
	(NULL, 7, 36),
	(NULL, 15, 36),
	(NULL, 34, 36),
	(NULL, 59, 36),
	(NULL, 36, 36),
	(NULL, 10, 36),
	(NULL, 39, 36);

CREATE TABLE profile_images (
	image_id int unsigned NOT NULL AUTO_INCREMENT PRIMARY KEY,
    image_link varchar(100) NOT NULL,
    user_id int unsigned NOT NULL,
    date_created TIMESTAMP
);

-- profile pictures
insert into profile_images values
	(NULL, './additional-files/images/profile/1.png', 1, now()),
	(NULL, './additional-files/images/profile/2.png', 2, now()),
	(NULL, './additional-files/images/profile/3.png', 3, now()),
	(NULL, './additional-files/images/profile/4.png', 4, now()),
	(NULL, './additional-files/images/profile/5.png', 5, now()),
	(NULL, './additional-files/images/profile/6.png', 6, now()),
	(NULL, './additional-files/images/profile/7.png', 7, now()),
	(NULL, './additional-files/images/profile/8.png', 8, now()),
	(NULL, './additional-files/images/profile/9.png', 9, now()),
	(NULL, './additional-files/images/profile/10.png', 10, now()),
	(NULL, './additional-files/images/profile/11.png', 11, now()),
	(NULL, './additional-files/images/profile/12.png', 12, now()),
	(NULL, './additional-files/images/profile/13.png', 13, now()),
	(NULL, './additional-files/images/profile/14.png', 14, now()),
	(NULL, './additional-files/images/profile/15.png', 15, now()),
	(NULL, './additional-files/images/profile/16.png', 16, now()),
	(NULL, './additional-files/images/profile/17.png', 17, now()),
	(NULL, './additional-files/images/profile/18.png', 18, now()),
	(NULL, './additional-files/images/profile/19.png', 19, now()),
	(NULL, './additional-files/images/profile/20.png', 20, now()),
	(NULL, './additional-files/images/profile/21.png', 21, now()),
	(NULL, './additional-files/images/profile/22.png', 22, now()),
	(NULL, './additional-files/images/profile/23.png', 23, now()),
	(NULL, './additional-files/images/profile/24.png', 24, now()),
	(NULL, './additional-files/images/profile/25.png', 25, now()),
	(NULL, './additional-files/images/profile/26.png', 26, now()),
	(NULL, './additional-files/images/profile/27.png', 27, now()),
	(NULL, './additional-files/images/profile/28.png', 28, now()),
	(NULL, './additional-files/images/profile/29.png', 29, now()),
	(NULL, './additional-files/images/profile/30.png', 30, now()),
	(NULL, './additional-files/images/profile/31.png', 31, now()),
	(NULL, './additional-files/images/profile/32.png', 32, now()),
	(NULL, './additional-files/images/profile/33.png', 33, now()),
	(NULL, './additional-files/images/profile/34.png', 34, now()),
	(NULL, './additional-files/images/profile/35.png', 35, now()),
	(NULL, './additional-files/images/profile/36.png', 36, now());


CREATE TABLE user_images (
	image_id int unsigned NOT NULL AUTO_INCREMENT PRIMARY KEY,
    image_link varchar(100) NOT NULL,
    user_id int unsigned NOT NULL,
    date_created TIMESTAMP
);
    
-- other images
insert into user_images values
	(NULL, './additional-files/images/misc/image1.png', 1, now()),
	(NULL, './additional-files/images/misc/image26.png', 1, now()),
	(NULL, './additional-files/images/misc/image24.png', 1, now()),

	(NULL, './additional-files/images/misc/image2.png', 2, now()),
	(NULL, './additional-files/images/misc/image12.png', 2, now()),
	(NULL, './additional-files/images/misc/image28.png', 2, now()),

	(NULL, './additional-files/images/misc/image3.png', 3, now()),
	(NULL, './additional-files/images/misc/image29.png', 3, now()),
	(NULL, './additional-files/images/misc/image7.png', 3, now()),

	(NULL, './additional-files/images/misc/image4.png', 4, now()),
	(NULL, './additional-files/images/misc/image23.png', 4, now()),
	(NULL, './additional-files/images/misc/image3.png', 4, now()),

	(NULL, './additional-files/images/misc/image5.png', 5, now()),
	(NULL, './additional-files/images/misc/image8.png', 5, now()),
	(NULL, './additional-files/images/misc/image34.png', 5, now()),

	(NULL, './additional-files/images/misc/image6.png', 6, now()),
	(NULL, './additional-files/images/misc/image5.png', 6, now()),
	(NULL, './additional-files/images/misc/image35.png', 6, now()),

	(NULL, './additional-files/images/misc/image7.png', 7, now()),
	(NULL, './additional-files/images/misc/image26.png', 7, now()),
	(NULL, './additional-files/images/misc/image10.png', 7, now()),

	(NULL, './additional-files/images/misc/image8.png', 8, now()),
	(NULL, './additional-files/images/misc/image10.png', 8, now()),
	(NULL, './additional-files/images/misc/image11.png', 8, now()),

	(NULL, './additional-files/images/misc/image9.png', 9, now()),
	(NULL, './additional-files/images/misc/image12.png', 9, now()),
	(NULL, './additional-files/images/misc/image29.png', 9, now()),

	(NULL, './additional-files/images/misc/image10.png', 10, now()),
	(NULL, './additional-files/images/misc/image7.png', 10, now()),
	(NULL, './additional-files/images/misc/image26.png', 10, now()),

	(NULL, './additional-files/images/misc/image11.png', 11, now()),
	(NULL, './additional-files/images/misc/image1.png', 11, now()),
	(NULL, './additional-files/images/misc/image9.png', 11, now()),

	(NULL, './additional-files/images/misc/image12.png', 12, now()),
	(NULL, './additional-files/images/misc/image23.png', 12, now()),
	(NULL, './additional-files/images/misc/image31.png', 12, now()),

	(NULL, './additional-files/images/misc/image13.png', 13, now()),
	(NULL, './additional-files/images/misc/image9.png', 13, now()),
	(NULL, './additional-files/images/misc/image8.png', 13, now()),

	(NULL, './additional-files/images/misc/image14.png', 14, now()),
	(NULL, './additional-files/images/misc/image29.png', 14, now()),
	(NULL, './additional-files/images/misc/image18.png', 14, now()),

	(NULL, './additional-files/images/misc/image15.png', 15, now()),
	(NULL, './additional-files/images/misc/image23.png', 15, now()),
	(NULL, './additional-files/images/misc/image12.png', 15, now()),

	(NULL, './additional-files/images/misc/image16.png', 16, now()),
	(NULL, './additional-files/images/misc/image15.png', 16, now()),
	(NULL, './additional-files/images/misc/image31.png', 16, now()),

	(NULL, './additional-files/images/misc/image17.png', 17, now()),
	(NULL, './additional-files/images/misc/image6.png', 17, now()),
	(NULL, './additional-files/images/misc/image23.png', 17, now()),

	(NULL, './additional-files/images/misc/image18.png', 18, now()),
	(NULL, './additional-files/images/misc/image19.png', 18, now()),
	(NULL, './additional-files/images/misc/image31.png', 18, now()),

	(NULL, './additional-files/images/misc/image19.png', 19, now()),
	(NULL, './additional-files/images/misc/image25.png', 19, now()),
	(NULL, './additional-files/images/misc/image33.png', 19, now()),

	(NULL, './additional-files/images/misc/image20.png', 20, now()),
	(NULL, './additional-files/images/misc/image35.png', 20, now()),
	(NULL, './additional-files/images/misc/image14.png', 20, now()),

	(NULL, './additional-files/images/misc/image21.png', 21, now()),
	(NULL, './additional-files/images/misc/image1.png', 21, now()),
	(NULL, './additional-files/images/misc/image35.png', 21, now()),

	(NULL, './additional-files/images/misc/image22.png', 22, now()),
	(NULL, './additional-files/images/misc/image23.png', 22, now()),
	(NULL, './additional-files/images/misc/image21.png', 22, now()),

	(NULL, './additional-files/images/misc/image23.png', 23, now()),
	(NULL, './additional-files/images/misc/image26.png', 23, now()),
	(NULL, './additional-files/images/misc/image35.png', 23, now()),

	(NULL, './additional-files/images/misc/image24.png', 24, now()),
	(NULL, './additional-files/images/misc/image15.png', 24, now()),
	(NULL, './additional-files/images/misc/image4.png', 24, now()),

	(NULL, './additional-files/images/misc/image25.png', 25, now()),
	(NULL, './additional-files/images/misc/image34.png', 25, now()),
	(NULL, './additional-files/images/misc/image13.png', 25, now()),

	(NULL, './additional-files/images/misc/image26.png', 26, now()),
	(NULL, './additional-files/images/misc/image23.png', 26, now()),
	(NULL, './additional-files/images/misc/image32.png', 26, now()),

	(NULL, './additional-files/images/misc/image27.png', 27, now()),
	(NULL, './additional-files/images/misc/image34.png', 27, now()),
	(NULL, './additional-files/images/misc/image20.png', 27, now()),

	(NULL, './additional-files/images/misc/image28.png', 28, now()),
	(NULL, './additional-files/images/misc/image18.png', 28, now()),
	(NULL, './additional-files/images/misc/image25.png', 28, now()),

	(NULL, './additional-files/images/misc/image29.png', 29, now()),
	(NULL, './additional-files/images/misc/image4.png', 29, now()),
	(NULL, './additional-files/images/misc/image23.png', 29, now()),

	(NULL, './additional-files/images/misc/image30.png', 30, now()),
	(NULL, './additional-files/images/misc/image23.png', 30, now()),
	(NULL, './additional-files/images/misc/image1.png', 30, now()),

	(NULL, './additional-files/images/misc/image31.png', 31, now()),
	(NULL, './additional-files/images/misc/image35.png', 31, now()),
	(NULL, './additional-files/images/misc/image8.png', 31, now()),

	(NULL, './additional-files/images/misc/image32.png', 32, now()),
	(NULL, './additional-files/images/misc/image24.png', 32, now()),
	(NULL, './additional-files/images/misc/image20.png', 32, now()),

	(NULL, './additional-files/images/misc/image33.png', 33, now()),
	(NULL, './additional-files/images/misc/image2.png', 33, now()),
	(NULL, './additional-files/images/misc/image5.png', 33, now()),

	(NULL, './additional-files/images/misc/image34.png', 34, now()),
	(NULL, './additional-files/images/misc/image26.png', 34, now()),
	(NULL, './additional-files/images/misc/image15.png', 34, now()),

	(NULL, './additional-files/images/misc/image35.png', 35, now()),
	(NULL, './additional-files/images/misc/image25.png', 35, now()),
	(NULL, './additional-files/images/misc/image27.png', 35, now()),

	(NULL, './additional-files/images/misc/image36.png', 36, now()),
	(NULL, './additional-files/images/misc/image34.png', 36, now()),
	(NULL, './additional-files/images/misc/image23.png', 36, now());


    
CREATE TABLE banned_users (
	ban_id int unsigned NOT NULL AUTO_INCREMENT PRIMARY KEY,
    user_id int unsigned NOT NULL,
    date TIMESTAMP,
    reason varchar(100) NOT NULL,
    duration time NOT NULL
);

CREATE TABLE users_info (
	user_info_id int unsigned NOT NULL AUTO_INCREMENT PRIMARY KEY,
    description varchar(500),
    relationship_type enum('Friendship', 'Casual Relationship', 'Serious Relationship', 'Other', 'Dont Know') NOT NULL DEFAULT 'Dont Know',
    job_title varchar(40) DEFAULT 'Prefer Not To Say',
    education enum('Junior Certificate', 'Leaving Certificate', 'Undergraduate', 'Postgraduate', 'Other', 'Prefer Not To Say') NOT NULL,
    can_drive enum('Yes', 'No', 'Prefer Not To Say') NOT NULL,
    drinks_alcohol enum('Yes', 'No', 'Socially', 'Prefer Not To Say') NOT NULL,
    smokes enum('Yes', 'No', 'Socially', 'Prefer Not To Say') NOT NULL,
    exercises enum('Yes', 'No', 'Prefer Not To Say') NOT NULL,
    has_children enum('Yes', 'No', 'Prefer Not To Say') NOT NULL,
    user_id int unsigned NOT NULL
);

insert into users_info values
	(NULL, 'Li Europan lingues es membres del sam familie. Lor separat existentie es un myth. Por scientie, musica, sport etc, litot Europa usa li sam vocabular. Li lingues differe solmen in li grammatica, 
    li pronunciation e li plu commun vocabules. Omnicos directe al desirabilite de un nov lingua franca', 'Casual Relationship', 'Software Engineer', 'Undergraduate', 'Yes', 'Socially', 'No', 'Yes', 'No', 1),
    
	(NULL, 'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae 
    dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est', 
    'Other', 'Administrator', 'Junior Certificate', 'Yes', 'No', 'Socially', 'Yes', 'No', 2),
    
	(NULL, 'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae 
    dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est', 
    'Friendship', 'Police Officer', 'Other', 'Yes', 'Socially', 'Yes', 'No', 'Yes', 3),
    
	(NULL, 'But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the 
    great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure', 
    'Casual Relationship', 'Physiotherapist', 'Postgraduate', 'Yes', 'Yes', 'No', 'Yes', 'Yes', 4),
    
	(NULL, 'But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the 
    great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure', 
    'Serious Relationship', 'Surgeon', 'Postgraduate', 'Yes', 'Socially', 'Yes', 'No', 'Yes', 5),
    
	(NULL, 'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta 
    sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est', 
    'Serious Relationship', 'Psychologist', 'Postgraduate', 'Yes', 'Yes', 'Socially', 'No', 'No', 6),
    
	(NULL, 'Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts. Separated they live in Bookmarksgrove right at the coast of the Semantics, a large 
    language ocean. A small river named Duden flows by their place and supplies it with the necessary resources', 'Casual Relationship', 'Software Engineer', 'Postgraduate', 'No', 'Yes', 'No', 'Yes', 'No', 7),
    
	(NULL, 'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta 
    sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est', 
    'Serious Relationship', 'Firefighter', 'Leaving Certificate', 'Yes', 'Yes', 'Yes', 'No', 'Yes', 8),
    
	(NULL, 'Li Europan lingues es membres del sam familie. Lor separat existentie es un myth. Por scientie, musica, sport etc, litot Europa usa li sam vocabular. Li lingues differe solmen in li grammatica, li 
    pronunciation e li plu commun vocabules. Omnicos directe al desirabilite de un nov lingua franca', 'Serious Relationship', 'Scientist', 'Undergraduate', 'No', 'Socially', 'No', 'Yes', 'No', 9),
    
	(NULL, 'Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts. Separated they live in Bookmarksgrove right at the coast of the Semantics, a large 
    language ocean. A small river named Duden flows by their place and supplies it with the necessary resources', 'Serious Relationship', 'Administrator', 'Prefer Not To Say', 'No', 'No', 'Yes', 'No', 'No', 10),
    
	(NULL, 'Li Europan lingues es membres del sam familie. Lor separat existentie es un myth. Por scientie, musica, sport etc, litot Europa usa li sam vocabular. Li lingues differe solmen in li grammatica, li 
    pronunciation e li plu commun vocabules. Omnicos directe al desirabilite de un nov lingua franca', 'Casual Relationship', 'Physiotherapist', 'Undergraduate', 'Yes', 'Socially', 'Yes', 'No', 'Yes', 11),
    
	(NULL, 'Li Europan lingues es membres del sam familie. Lor separat existentie es un myth. Por scientie, musica, sport etc, litot Europa usa li sam vocabular. Li lingues differe solmen in li grammatica, li 
    pronunciation e li plu commun vocabules. Omnicos directe al desirabilite de un nov lingua franca', 'Serious Relationship', 'Nurse', 'Undergraduate', 'No', 'Yes', 'Yes', 'No', 'No', 12),
    
	(NULL, 'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta 
    sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est', 
    'Serious Relationship', 'Police Officer', 'Leaving Certificate', 'Yes', 'Socially', 'Yes', 'No', 'Yes', 13),
    
	(NULL, 'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta 
    sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est', 'Friendship', 
    'Software Engineer', 'Undergraduate', 'No', 'Yes', 'Socially', 'No', 'No', 14),
    
	(NULL, 'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta 
    sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est', 
    'Casual Relationship', 'Lawyer', 'Other', 'Yes', 'Socially', 'Socially', 'Yes', 'No', 15),
    
	(NULL, 'Li Europan lingues es membres del sam familie. Lor separat existentie es un myth. Por scientie, musica, sport etc, litot Europa usa li sam vocabular. Li lingues differe solmen in li grammatica, li 
    pronunciation e li plu commun vocabules. Omnicos directe al desirabilite de un nov lingua franca', 'Casual Relationship', 'Shopkeeper', 'Prefer Not To Say', 'Yes', 'Socially', 'No', 'No', 'No', 16),
    
	(NULL, 'Li Europan lingues es membres del sam familie. Lor separat existentie es un myth. Por scientie, musica, sport etc, litot Europa usa li sam vocabular. Li lingues differe solmen in li grammatica, li 
    pronunciation e li plu commun vocabules. Omnicos directe al desirabilite de un nov lingua franca', 'Serious Relationship', 'Architect', 'Undergraduate', 'Yes', 'No', 'No', 'Yes', 'Yes', 17),
    
	(NULL, 'Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts. Separated they live in Bookmarksgrove right at the coast of the Semantics, a large 
    language ocean. A small river named Duden flows by their place and supplies it with the necessary resources', 'Friendship', 'Administrator', 'Junior Certificate', 'No', 'Socially', 'No', 'Yes', 'No', 18),
    
	(NULL, 'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta 
    sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est', 'Friendship', 
    'Electrician', 'Other', 'No', 'No', 'No', 'No', 'Yes', 19),
    
	(NULL, 'Li Europan lingues es membres del sam familie. Lor separat existentie es un myth. Por scientie, musica, sport etc, litot Europa usa li sam vocabular. Li lingues differe solmen in li grammatica, li 
    pronunciation e li plu commun vocabules. Omnicos directe al desirabilite de un nov lingua franca', 'Other', 'Accountant', 'Other', 'Yes', 'Yes', 'Yes', 'No', 'No', 20),
    
	(NULL, 'But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the 
    great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure', 
    'Casual Relationship', 'Soldier', 'Undergraduate', 'Yes', 'No', 'No', 'No', 'Yes', 21),
    
	(NULL, 'Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts. Separated they live in Bookmarksgrove right at the coast of the Semantics, a large 
    language ocean. A small river named Duden flows by their place and supplies it with the necessary resources', 'Serious Relationship', 'Pilot', 'Leaving Certificate', 'Yes', 'Yes', 'Yes', 'Yes', 'No', 22),
    
	(NULL, 'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta 
    sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est', 
    'Serious Relationship', 'Surgeon', 'Postgraduate', 'Yes', 'Yes', 'Yes', 'No', 'No', 23),
    
	(NULL, 'Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts. Separated they live in Bookmarksgrove right at the coast of the Semantics, a large 
    language ocean. A small river named Duden flows by their place and supplies it with the necessary resources', 'Casual Relationship', 'Student', 'Leaving Certificate', 'No', 'Socially', 'No', 'Yes', 'No', 24),
    
	(NULL, 'Li Europan lingues es membres del sam familie. Lor separat existentie es un myth. Por scientie, musica, sport etc, litot Europa usa li sam vocabular. Li lingues differe solmen in li grammatica, 
    li pronunciation e li plu commun vocabules. Omnicos directe al desirabilite de un nov lingua franca', 'Serious Relationship', 'Plumber', 'Other', 'Yes', 'No', 'Yes', 'No', 'Yes', 25),
    
	(NULL, 'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta 
    sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est', 
    'Casual Relationship', 'Construction Worker', 'Prefer Not To Say', 'No', 'No', 'Yes', 'Yes', 'No', 26),
    
	(NULL, 'Li Europan lingues es membres del sam familie. Lor separat existentie es un myth. Por scientie, musica, sport etc, litot Europa usa li sam vocabular. Li lingues differe solmen in li grammatica, li 
    pronunciation e li plu commun vocabules. Omnicos directe al desirabilite de un nov lingua franca', 'Serious Relationship', 'Interior Designer', 'Leaving Certificate', 'Yes', 'Socially', 'Socially', 'Yes', 'Yes', 27),
    
	(NULL, 'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta 
    sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est', 'Other', 
    'Paramedic', 'Other', 'No', 'No', 'Socially', 'No', 'No', 28),
    
	(NULL, 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam 
    felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu. In enim justo, rhoncus ut, imperdiet', 'Friendship', 
    'Accountant', 'Undergraduate', 'Yes', 'Socially', 'No', 'No', 'No', 29),
    
	(NULL, 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam 
    felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu. In enim justo, rhoncus ut, imperdiet', 'Other', 
    'Firefighter', 'Leaving Certificate', 'No', 'Yes', 'Yes', 'No', 'Yes', 30),
    
	(NULL, 'Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts. Separated they live in Bookmarksgrove right at the coast of the Semantics, a large 
    language ocean. A small river named Duden flows by their place and supplies it with the necessary resources', 'Serious Relationship', 'Real Estate Agent', 'Other', 'No', 'No', 'No', 'No', 'No', 31),
    
	(NULL, 'Li Europan lingues es membres del sam familie. Lor separat existentie es un myth. Por scientie, musica, sport etc, litot Europa usa li sam vocabular. Li lingues differe solmen in li grammatica, li 
    pronunciation e li plu commun vocabules. Omnicos directe al desirabilite de un nov lingua franca', 'Serious Relationship', 'Engineer', 'Prefer Not To Say', 'No', 'No', 'No', 'No', 'Yes', 32),
    
	(NULL, 'But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great 
    explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure', 
    'Casual Relationship', 'Software Engineer', 'Postgraduate', 'No', 'Socially', 'Yes', 'Yes', 'No', 33),
    
	(NULL, 'Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts. Separated they live in Bookmarksgrove right at the coast of the Semantics, a large 
    language ocean. A small river named Duden flows by their place and supplies it with the necessary resources', 'Serious Relationship', 'Teacher', 'Undergraduate', 'Yes', 'No', 'No', 'Yes', 'No', 34),
    
	(NULL, 'Li Europan lingues es membres del sam familie. Lor separat existentie es un myth. Por scientie, musica, sport etc, litot Europa usa li sam vocabular. Li lingues differe solmen in li grammatica, li 
    pronunciation e li plu commun vocabules. Omnicos directe al desirabilite de un nov lingua franca', 'Serious Relationship', 'Police Officer', 'Other', 'No', 'Socially', 'Yes', 'No', 'No', 35),
    
	(NULL, 'Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts. Separated they live in Bookmarksgrove right at the coast of the Semantics, a large 
    language ocean. A small river named Duden flows by their place and supplies it with the necessary resources', 'Casual Relationship', 'Student', 'Leaving Certificate', 'Yes', 'No', 'No', 'No', 'No', 36);





