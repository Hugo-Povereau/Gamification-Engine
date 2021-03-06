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
-- Table `mydb`.`application`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`application` (
  `apikey` VARCHAR(36) NOT NULL,
  `name` VARCHAR(30) NOT NULL,
  `description` MEDIUMTEXT NULL,
  PRIMARY KEY (`apikey`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`badges`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`badges` (
  `name` VARCHAR(20) NOT NULL,
  `experienceValue` INT NOT NULL,
  `application_apikey` VARCHAR(36) NOT NULL,
  PRIMARY KEY (`name`),
  CONSTRAINT `fk_badges_application`
    FOREIGN KEY (`application_apikey`)
    REFERENCES `mydb`.`application` (`apikey`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

CREATE INDEX `fk_badges_application_idx` ON `mydb`.`badges` (`application_apikey` ASC) VISIBLE;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
