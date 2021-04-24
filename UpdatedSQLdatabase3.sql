SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

DROP SCHEMA IF EXISTS `mydb` ;

CREATE SCHEMA IF NOT EXISTS `mydb` DEFAULT CHARACTER SET utf8 ;
USE `mydb` ;

DROP TABLE IF EXISTS `mydb`.`User` ;

CREATE TABLE IF NOT EXISTS `mydb`.`User` (
  `UserID` INT NOT NULL AUTO_INCREMENT,
  `UserName` VARCHAR(45) NOT NULL,
  `password` VARCHAR(45) NOT NULL,
  `FirstName` VARCHAR(45) NOT NULL,
  `LastName` VARCHAR(45) NOT NULL,
  `Email` VARCHAR(45) NOT NULL,
  `DOB` DATE NOT NULL,
  `PhoneNumber` VARCHAR(15) NULL,
  `City` VARCHAR(45) NULL,
  `State` VARCHAR(45) NULL,
  `Zip` VARCHAR(45) NULL,
  `Country` VARCHAR(45) NULL,
  `AccountCreationDate` DATETIME NULL,
  `SecurityQuestion1` TINYTEXT NOT NULL,
  `Answer1` VARCHAR(45) NOT NULL,
  `SecurityQuestion2` TINYTEXT NULL,
  `Answer2` VARCHAR(45) NULL,
  `SecurityQuestion3` TINYTEXT NULL,
  `Answer3` VARCHAR(45) NULL,
  `Recently Played` VARCHAR(45) NULL,
  `Recent Play Time` TIMESTAMP NULL,
  `Last Played Date` DATE NULL,
  `Total Time Played` TIMESTAMP NULL,
  PRIMARY KEY (`UserID`),
  UNIQUE INDEX `UserName_UNIQUE` (`UserName` ASC) VISIBLE,
  UNIQUE INDEX `UserID_UNIQUE` (`UserID` ASC) VISIBLE)
ENGINE = InnoDB;

insert into `mydb`.`User` (`UserID`, `UserName`, `FirstName`, `LastName`,`Email`, `DOB`,`PhoneNumber`, `City`, `State`, `Zip`, `Country`, `AccountCreationDate`, `password`, `SecurityQuestion1`, `Answer1`, `SecurityQuestion2`, `Answer2`, `SecurityQuestion3`, `Answer3`, `Recently Played`, `Recent Play Time`, `Last Played Date`, `Total Time Played` ) values
    
    (10000,'legend','Jack','Uber','jackuber@gmail.com','1998-09-06',3035550555,'Denver','CO', null, 'United States of America','2021-02-21','superSticious18$','Whats your favorite pets name?','buddy','What was your first car?','volvo','Whats your mothers maiden name?','nicole', null, null, null , null),
    (10001,'ace','Fatty','McPatty','fatace@comcast.net','1996-09-17',3035610394,'Boulder','CO', null,'United States of America','2021-02-21','stankleg420','Whats your mothers maiden name?','susan','Whats your favorite pets name?','dotson','What was the name of the first girl you kissed?','nicole',null, null, null , null),
    (10002,'spiderboy','Terance','Lebron','terance11@yahoo.com','1997-03-20',7202259908,'Centennial','AZ',null,'United States of America','2021-02-22','yeeyeepriate','What was your first car?','jeep grand cherokee','What street did you grow up on?','jupiter drive','What was the name of the first girl you kissed?','jennifer',null, null, null , null),
	(10003,'yaggayeet','Harry','Kim','harry.kim@gmail.com','1942-07-20',7204305567,'Littleton', 'AK', null, 'United States of America','2021-02-22','password11','What is your favorite teachers name?','mr. bronkowski','What street did you grow up on?','baker avenue','Whats your favorite pets name?','jackie',null, null, null , null),
    (10004,'zelda','Nicole','Rossling','nikkyrossling@gmail.com','1991-03-04',7208885252,'Littleton', 'AK', null,'United States of America','2021-02-22','myfavoritepassword','Whats your favorite pets name?','dodger','What was the name of the first girl you kissed?','ashley sparko','What is your favorite teachers name?','kelly walsh',null, null, null , null);

DROP TABLE IF EXISTS `mydb`.`Games` ;

CREATE TABLE IF NOT EXISTS `mydb`.`Games` (
  `GameID` INT NOT NULL AUTO_INCREMENT,
  `Title` VARCHAR(45) NOT NULL,
  `Description` TEXT(1000) NULL,
  `Multiplayer` TINYINT NULL,
  `ESRB_Rating` VARCHAR(4) NULL,
  `DateReleased` DATE NULL,
  `Publisher` VARCHAR(45) NULL,
  `Link` VARCHAR(100) NULL,  
  `Developer` VARCHAR(45) NULL,
  `Notes` TINYTEXT NULL,
  `CommunityReview` DECIMAL(2,1) NULL,
  `IGNReview` DECIMAL(2,1) NULL,
  `Platform` VARCHAR(45) NULL,
  PRIMARY KEY (`GameID`))
ENGINE = InnoDB;

insert into `mydb`.`Games`(`GameID`, `Title`, `Description`, `Multiplayer`, `ESRB_Rating`, `DateReleased`, `Publisher`,  `Link`, `Developer` , `Notes`, `CommunityReview`, `IGNReview`, `Platform`) values
	(1, 'Zelda', 'Adventure Game', false, 'E10+', '1986-02-21','Nintendo', 'https://images.igdb.com/igdb/image/upload/t_cover_big/co1nr4.jpg', 'Nintendo', null, 9.8, 9.0,'NES'),
	(2, 'Rick James', 'SIM', false, 'T', '2003-02-21','Rare', 'https://direct.rhapsody.com/imageserver/images/alb.398258562/600x600.jpg', 'Microsoft', null, 6.8, 5.0,'computer'),
	(3, 'Book Worm', 'Education', true, 'E', '1999-05-01','THQ', 'https://m.media-amazon.com/images/I/7184+E8dBlL._SL1443_.jpg', 'Activision', null, 6.0, 7.2,'computer'),
    (4, 'Mario Odessey', 'Collection Game', True, 'E10+', '2016-08-13','Nintendo', 'https://images.igdb.com/igdb/image/upload/t_cover_big/co1mxf.jpg', 'Nintendo', null, 9.7, 8.7,'Nintendo Switch'),
    (5, 'Zelda Breath of the Wild', 'Adventure Game', false, 'E10+', '2016-02-21','Nintendo', 'https://images.igdb.com/igdb/image/upload/t_cover_big/co1vcp.jpg', 'Nintendo', null, 9.8, 7.0,'Nintendo Switch'),
    (6, 'Counter Strike', 'Multiplayer Shooter', true, 'M', '2012-04-20','Valve', 'https://images.igdb.com/igdb/image/upload/t_cover_big/y0vlsy3mxlkxnfafvsnk.jpg', 'Valve', null, 8.3, 7.5,'Computer'),
    (7, "Spongebob's Atlantis Squarepantis", 'Adventure Game', false, 'E10+', '2009-11-12','THQ', 'https://images-na.ssl-images-amazon.com/images/I/61xHbrjzYyL._SX385_.jpg', 'Activision', null, 5.6, 5.6,'Nintendo DS'),
    (8, "Woe was I", 'Walking Sim', false, 'RP', '2021-03-02','Dolphin Corp.', 'https://images.igdb.com/igdb/image/upload/t_cover_big/co2a5w.jpg', 'Steam', null, 0.1, 1.2,'Computer'),
    (9, 'Pokemon Go', 'MMORPG', true, 'E10+', '2016-02-21','Atlantic', 'https://images.igdb.com/igdb/image/upload/t_cover_big/co1zj7.jpg', 'Nintendo', null, 9.0, 8.0,'Mobile');

DROP TABLE IF EXISTS `mydb`.`UserGame` ;

CREATE TABLE IF NOT EXISTS `mydb`.`UserGame` (
  `User_UserID` INT NOT NULL,
  `Games_GameID` INT NOT NULL,
  `UserIGN` DECIMAL(2,1) NULL,
  `UserReview` TEXT(1000) NULL,
  `UserRating` DECIMAL(2,1) NULL,
  `LastTimePlayed` DATE NULL,
  `Notes` TEXT(1000) NULL,
  `TotalTimePlayed` TIMESTAMP NULL,
  PRIMARY KEY (`User_UserID`, `Games_GameID`),
  INDEX `fk_UserGame_User_idx` (`User_UserID` ASC) VISIBLE,
  INDEX `fk_UserGame_Games1_idx` (`Games_GameID` ASC) VISIBLE,
  CONSTRAINT `fk_UserGame_User`
    FOREIGN KEY (`User_UserID`)
    REFERENCES `mydb`.`User` (`UserID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_UserGame_Games1`
    FOREIGN KEY (`Games_GameID`)
    REFERENCES `mydb`.`Games` (`GameID`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;

insert into `mydb`.`UserGame`(`User_UserID`, `UserIGN`,  `UserReview`,  `UserRating`, `LastTimePlayed`, `Notes`, `TotalTimePlayed`,`Games_GameID`) values
	(10000, null, null, null, null, null, null,  5),
    (10000, null, null, null, null, null, null, 3),
    (10000, null, null, null, null, null, null, 8),
    (10001, null, null, null, null, null, null, 8),
    (10001, null, null, null, null, null, null, 0),
	(10001, null, null, null, null, null, null, 1),
    (10001, null, null, null, null, null, null, 2),
    (10001, null, null, null, null, null, null, 4),
    (10002, null, null, null, null, null, null, 6),
    (10002, null, null, null, null, null, null, 9),
    (10002, null, null, null, null, null, null, 7),
    (10002, null, null, null, null, null, null, 4),
    (10003, null, null, null, null, null, null, 4),
    (10003, null, null, null, null, null, null, 5),
	(10003, null, null, null, null, null, null, 6),
    (10003, null, null, null, null, null, null, 7),
    (10004, null, null, null, null, null, null, 7),
    (10004, null, null, null, null, null, null, 9);
    
DROP TABLE IF EXISTS `mydb`.`Tags` ;

CREATE TABLE IF NOT EXISTS `mydb`.`Tags` (
  `TagName` VARCHAR(24) NOT NULL,
  `Description` VARCHAR(45),
  PRIMARY KEY (`TagName`),
  UNIQUE INDEX `Tags_UNIQUE` (`TagName` ASC) VISIBLE)
ENGINE = InnoDB;

insert into `mydb`.`Tags` (`TagName`, `Description` ) values
    ('Indie', null),
    ('Action', null),
    ('Adventure', null),
	('Strategy', null),
    ('RPG', null),
    ('MMO', null),
    ('Puzzle', null),
    ('Platformer', null),
    ('FPS', null),
    ('Open World', null),
    ('Sports', null);

DROP TABLE IF EXISTS `mydb`.`GameTags` ;

CREATE TABLE IF NOT EXISTS `mydb`.`GameTags` (
  `Games_GameID` INT NOT NULL,
  `Tags_TagName` VARCHAR(24) NOT NULL,
  PRIMARY KEY (`Games_GameID`, `Tags_TagName`),
  INDEX `fk_GameTags_Games1_idx` (`Games_GameID` ASC) VISIBLE,
  INDEX `fk_GameTags_Tags1_idx` (`Tags_TagName` ASC) VISIBLE,
  CONSTRAINT `fk_GameTags_Games1`
    FOREIGN KEY (`Games_GameID`)
    REFERENCES `mydb`.`Games` (`GameID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_GameTags_Tags1`
    FOREIGN KEY (`Tags_TagName`)
    REFERENCES `mydb`.`Tags` (`TagName`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;

insert into `mydb`.`GameTags`(`Games_GameID`, `Tags_TagName`) values
	(1, 'Open World'),
    (2, 'Open World'),
    (3, 'Indie'),
    (4, 'FPS'),
    (5, 'Indie'),
	(6, 'MMO'),
    (7, 'Indie'),
    (8, 'Platformer'),
    (9, 'Adventure');

DROP TABLE IF EXISTS `mydb`.`Achievements` ;

CREATE TABLE IF NOT EXISTS `mydb`.`Achievements` (
  `AchievementID` INT NOT NULL,
  `Name` VARCHAR(45) NOT NULL,
  `Description` VARCHAR(45) NOT NULL,
  `Completed` TINYINT NOT NULL,
  `Date Completed` DATE NULL,
  `UserGame_User_UserID` INT NOT NULL,
  `UserGame_Games_GameID` INT NOT NULL,
  PRIMARY KEY (`AchievementID`, `UserGame_User_UserID`, `UserGame_Games_GameID`),
  INDEX `fk_Achievements_UserGame1_idx` (`UserGame_User_UserID` ASC, `UserGame_Games_GameID` ASC) VISIBLE,
  CONSTRAINT `fk_Achievements_UserGame1`
    FOREIGN KEY (`UserGame_User_UserID` , `UserGame_Games_GameID`)
    REFERENCES `mydb`.`UserGame` (`User_UserID` , `Games_GameID`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;

insert into `mydb`.`Achievements`(`AchievementID`,  `Name`,  `Description`, `Completed`, `Date Completed`, `UserGame_User_UserID`, `UserGame_Games_GameID`) values
	(101, 'Beginner', 'Completed Tuturial', 1, '2008-11-11', 1000, 6),
    (102, 'Intermediate', '10000xp complete', 1, '2010-1-26', 1000, 6),
    (103, 'Advanced', '100000xp complete', 1, '2012-7-15', 1000, 6),
    (104, 'Master Explorer', 'Finished main quest', 1, '2017-4-17', 1004, 1),
    (105, 'Beginner', 'Finish Tutorial', 1, '2016-2-25', 1004, 1),
    (106, 'Trainer', 'Capture 5 pokemon', 1, '2016-4-3', 1003, 9),
    (107, 'Advanced Trainor', 'Capture 20 pokemon', 1, '2017-6-6', 1003, 9),
    (108, 'Starter', 'Start the game', 1, '2016-3-3', 1002, 2),
    (109, 'Finisher', 'Finish the game', 1, '2017-4-18', 1002, 2);

CREATE TABLE IF NOT EXISTS `mydb`.`FriendList` (
  `UserID` INT NOT NULL,
  `UserName` VARCHAR(45) NOT NULL,
  `AbleToViewGames` TINYINT NOT NULL,
  PRIMARY KEY (`UserID`))
ENGINE = InnoDB;

insert into `mydb`.`Friendlist`(`UserID`,  `Username`,  `AbleToViewGames`) values
	(10001, 'ace', 1),
    (10002, 'spiderboy', 0);

DROP TABLE IF EXISTS `mydb`.`UserFriends` ;

CREATE TABLE IF NOT EXISTS `mydb`.`UserFriends` (
  `user_UserID` INT NOT NULL,
  `FriendList_UserID` INT NOT NULL,
  PRIMARY KEY (`user_UserID`, `FriendList_UserID`),
  CONSTRAINT `fk_UserFriends_user1`
    FOREIGN KEY (`user_UserID`)
    REFERENCES `mydb`.`user` (`UserID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_UserFriends_FriendList1`
    FOREIGN KEY (`FriendList_UserID`)
    REFERENCES `mydb`.`FriendList` (`UserID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

insert into `mydb`.`UserFriends`(`user_UserID`, `FriendList_UserID` ) values
	(10000, 10001),
    (10001, 10002);

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
