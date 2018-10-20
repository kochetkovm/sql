mysql -u root -p

USE `bp_48`;
CREATE TABLE `weekdays` (
	`numbers` INT(4) UNSIGNED,
	`names of week days` VARCHAR(10)
);
SHOW CREATE TABLE `weekdays`;
DESCRIBE `weekdays`;

INSERT INTO `weekdays` VALUES
(1, 'Sunday'),
(2, 'Monday'),
(3, 'Tuesday'),
(4, 'Wednesday'),
(5, 'Thursday'),
(6, 'Friday'),
(7, 'Saturday');

SELECT * FROM `weekdays`;

CREATE TABLE `cars`(
	`id` INT(4) UNSIGNED,
	`carCode` CHAR(3) NOT NULL,
	`model` VARCHAR(10) NOT NULL DEFAULT '',
	`country` VARCHAR(10),
	`manufc` VARCHAR(10),
	`price` DECIMAL(11,2)
);

INSERT INTO `cars` VALUES
	(1,'SZK', 'BOLENO', 'JAPAN', 'SUZUKI', 180000),
	(2,'FRD', 'FOCUS', 'USA', 'FORD', 223000),
	(3,'TYT', 'AURIS', 'JAPAN', 'TOYOTA', 170000),
	(4,'VAZ', 'LADA', 'RUSSIA', 'VAZ', 113000),
	(5,'FIT', 'PANDA', 'FRANCE', 'FIAT', 347000),
	(6,'HND', 'ACCORD', 'JAPAN', 'HONDA', 290000),
	(7,'UAZ', 'PATRIOT', 'RUSSIA', 'UAZ', 100000),
	(8,'BMW', 'BUMER', 'GERMANY', 'BMW', 2150000),
	(9,'OPL', 'ASTRA', 'GERMANY', 'OPEL', 90000),
	(10,'OPL', 'CORSA', 'GERMANY', 'OPEL', 220000);

SELECT `model`, `manufc` FROM `CARS` WHERE `carCode` = 'OPL';
SELECT `model` FROM `CARS` WHERE `manufc` LIKE '%HONDA%';
SELECT * FROM `CARS` 
WHERE `model` OR `manufc` LIKE '%a%' AND `price` > 150000;

SELECT `model`, `manufc`, `country` FROM `CARS`
WHERE `PRICE` BETWEEN 100000 AND 150000
ORDER BY `country`; 

SELECT * FROM `CARS` 
WHERE `price` = 80000 or `PRICE` = 130000 or `PRICE` = 170000;

SELECT * FROM `cars`
WHERE `price` IN(80000,100000,170000);

SELECT `model`, `country`, `price` FROM `CARS` 
ORDER BY `price` DESC
LIMIT 3;

UPDATE `cars` SET model = 'Corolla' WHERE id =3;



