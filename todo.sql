-- MySQL Script generated by MySQL Workbench
-- Sun Apr 16 15:59:48 2017
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema todo
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema todo
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `todo` DEFAULT CHARACTER SET utf8 ;
USE `todo` ;

-- -----------------------------------------------------
-- Table `todo`.`users`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `todo`.`users` (
  `id` INT NOT NULL AUTO_INCREMENT COMMENT '	',
  `username` VARCHAR(45) NOT NULL,
  `password` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `todo`.`todo`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `todo`.`todo` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `user_id` INT NOT NULL,
  `todo` VARCHAR(255) NOT NULL,
  `done` TINYINT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_todo_users_idx` (`user_id` ASC),
  CONSTRAINT `fk_todo_users`
    FOREIGN KEY (`user_id`)
    REFERENCES `todo`.`users` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;