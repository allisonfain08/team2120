
DROP DATABASE IF EXISTS team2120;
CREATE DATABASE IF NOT EXISTS team2120;
USE team2120;

DROP TABLE IF EXISTS allison;
CREATE TABLE allisonCloset(
uname varchar(255) not null,
-- primary key needs to be username
brand varchar(255) not null,
style varchar(255) not null,
size varchar(255) not null,
notes varchar(255),
color varchar(255) not null,
material varchar(255)
);

DROP TABLE IF EXISTS nelson;
CREATE TABLE nelsonCloset(
uname varchar(255) not null,
-- primary key needs to be username
brand varchar(255) not null,
style varchar(255) not null,
size varchar(255) not null,
notes varchar(255),
color varchar(255) not null,
material varchar(255)
);

INSERT INTO allisonCloset VALUES
-- INSERT INTO yournameCloset VALUES
    ('allison','old navy','jeans','4','dark wash','blue','denim'),
    -- ('USERNAME', BRAND, STYLE, SIZE, NOTES, COLOR, MATERIAL)
    ('allison','ann taylor loft','jeans','4','ripped','blue','denim'),
    ('allison','sequin hearts','dress','L','lace','light blue',NULL),
    ('allison','converse','shoes','10.5','floral','multi','canvas'),
    ('allison','converse','shoes','10.5','kinda ripping','pink','canvas'),
    ('allison','comfort colors','tshirt','M','alpha sig rush','light blue','polyester'),
    ('allison','comfort colors','tshirt','M','wesley','black','polyester'),
    ('allison','comfort colors','tshirt','M','afumc','blue','polyester'),
    ('allison','mango','shirt','M','ribbed with sleeves','green','polyester'),
    ('allison','zara','jeans','4','wide fit','white','denim'),
    ('allison','zara','dress','2','backless','white','linen'),
    ('allison','ann taylor loft','shirt','M','work appropriate','light blue',NULL),
    ('allison','ann taylor loft','skirt','4','work appropriate','gold',NULL),
    ('allison','mango','skirt','4','floral','blue',NULL),
    ('allison','h&m','shirt','M','paris shirt','light blue','cotton'),
    ('allison','ann taylor loft','skirt','4','work appropriate','blue',NULL),
    ('allison','ann taylor loft','skirt','4','work appropriate','purple',NULL),
    ('allison','amazon','shoes','10.5','heels','gold','suede');

INSERT INTO nelsonCloset VALUES
    ('nelson','old navy','jeans','4','dark wash','blue','denim'),
    ('nelson','ann taylor loft','jeans','4','ripped','blue','denim'),
    ('nelson','sequin hearts','dress','L','lace','light blue',NULL),
    ('nelson','converse','shoes','10.5','floral','multi','canvas'),
    ('nelson','converse','shoes','10.5','kinda ripping','pink','canvas'),
    ('nelson','UNIQLO','dress shirt','L',NULL,'light blue','linen'),
    ('nelson','UNIQLO','button down shirt','M','dotted','black','linen'),
    ('nelson','UNIQLO','dress shirt','M','flamingos','grey','linen'),
    ('nelson','mango','shirt','M','ribbed with sleeves','green','polyester');

CREATE VIEW `display jeans` AS
SELECT *
FROM allisonCloset
-- in future make the "from" based on the username
WHERE style = 'jeans';

CREATE VIEW `display mediums` AS
SELECT *
FROM allisonCloset
WHERE size = 'M';

CREATE VIEW `display old navy` AS
SELECT *
FROM allisonCloset
WHERE brand = 'Old Navy';

CREATE VIEW `display work appropriate` AS
SELECT *
FROM allisonCloset
WHERE notes = 'work appropriate';

CREATE VIEW `dress shirt` AS
SELECT *
FROM nelsonCloset
WHERE style = 'dress shirt';

CREATE VIEW `display UNIQLO` AS
SELECT *
FROM nelsonCloset
WHERE brand = 'UNIQLO';


-- select * from `display jeans`;
-- select * from `display mediums`;
-- select * from `display old navy`;
-- select * from `display work appropriate`;