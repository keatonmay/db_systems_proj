-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `mydb` DEFAULT CHARACTER SET utf8 ;
USE `mydb` ;

-- -----------------------------------------------------
-- Table `mydb`.`venue`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`venue` (
  `venue_id` INT NOT NULL AUTO_INCREMENT,
  `venue_name` VARCHAR(45) NULL,
  `address` VARCHAR(45) NULL,
  `venue_capacity` INT NULL,
  PRIMARY KEY (`venue_id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`performer`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`performer` (
  `performer_name` VARCHAR(60) NOT NULL,
  `performer_genre` VARCHAR(45) NULL,
  PRIMARY KEY (`performer_name`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`event`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`event` (
  `event_id` INT NOT NULL AUTO_INCREMENT,
  `event_name` VARCHAR(60) NULL,
  `event_type` VARCHAR(45) NULL,
  `event_date` DATE NULL,
  `event_time` VARCHAR(45) NULL,
  `event_duration` INT NULL,
  `venue_id` INT NULL,
  `performer_name` VARCHAR(60) NULL,
  `age_requirement` INT NULL,
  `category` VARCHAR(45) NULL,
  `presale_date` DATE NULL,
  PRIMARY KEY (`event_id`),
  INDEX `fk_event_venue1_idx` (`venue_id` ASC) VISIBLE,
  INDEX `fk_event_performer1_idx` (`performer_name` ASC) VISIBLE,
  CONSTRAINT `fk_event_venue1`
    FOREIGN KEY (`venue_id`)
    REFERENCES `mydb`.`venue` (`venue_id`)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `fk_event_performer1`
    FOREIGN KEY (`performer_name`)
    REFERENCES `mydb`.`performer` (`performer_name`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`ticket_class`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`ticket_class` (
  `ticket_class_name` VARCHAR(45) NOT NULL,
  `upgrade_price` DOUBLE NULL,
  PRIMARY KEY (`ticket_class_name`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`add_on`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`add_on` (
  `addon_code` INT NOT NULL AUTO_INCREMENT,
  `addon_name` VARCHAR(45) NULL,
  `addon_price` DOUBLE NULL,
  PRIMARY KEY (`addon_code`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`membership_status`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`membership_status` (
  `membership_status_name` VARCHAR(60) NOT NULL,
  `subscription_cost` DOUBLE NULL,
  PRIMARY KEY (`membership_status_name`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`member`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`member` (
  `member_id` INT NOT NULL AUTO_INCREMENT,
  `member_name` VARCHAR(45) NULL,
  `membership_status_name` VARCHAR(60) NULL,
  `address` VARCHAR(45) NULL,
  `phone_number` VARCHAR(45) NULL,
  `member_dob` DATE NULL,
  `member_preferred_delivery` VARCHAR(45) NULL,
  PRIMARY KEY (`member_id`),
  INDEX `fk_member_membership_status_idx` (`membership_status_name` ASC) VISIBLE,
  CONSTRAINT `fk_member_membership_status`
    FOREIGN KEY (`membership_status_name`)
    REFERENCES `mydb`.`membership_status` (`membership_status_name`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`ticket`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`ticket` (
  `ticket_number` INT NOT NULL AUTO_INCREMENT,
  `ticket_class_name` VARCHAR(45) NULL,
  `add_on_code` INT NULL,
  `member_id` INT NULL,
  `event_id` INT NULL,
  `venue_id` INT NULL,
  `section` INT NULL,
  `row` INT NULL,
  `seat` INT NULL,
  `ticket_price` DOUBLE NULL,
  PRIMARY KEY (`ticket_number`),
  INDEX `fk_ticket_ticket_class1_idx` (`ticket_class_name` ASC) VISIBLE,
  INDEX `fk_ticket_add_on1_idx` (`add_on_code` ASC) VISIBLE,
  INDEX `fk_ticket_member1_idx` (`member_id` ASC) VISIBLE,
  INDEX `fk_ticket_event1_idx` (`event_id` ASC) VISIBLE,
  INDEX `fk_ticket_venue1_idx` (`venue_id` ASC) VISIBLE,
  CONSTRAINT `fk_ticket_ticket_class1`
    FOREIGN KEY (`ticket_class_name`)
    REFERENCES `mydb`.`ticket_class` (`ticket_class_name`)
    ON DELETE SET NULL
    ON UPDATE CASCADE,
  CONSTRAINT `fk_ticket_add_on1`
    FOREIGN KEY (`add_on_code`)
    REFERENCES `mydb`.`add_on` (`addon_code`)
    ON DELETE SET NULL
    ON UPDATE CASCADE,
  CONSTRAINT `fk_ticket_member1`
    FOREIGN KEY (`member_id`)
    REFERENCES `mydb`.`member` (`member_id`)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `fk_ticket_event1`
    FOREIGN KEY (`event_id`)
    REFERENCES `mydb`.`event` (`event_id`)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `fk_ticket_venue1`
    FOREIGN KEY (`venue_id`)
    REFERENCES `mydb`.`event` (`venue_id`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
