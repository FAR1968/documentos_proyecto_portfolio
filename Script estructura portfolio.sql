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
-- Table `mydb`.`person`
-- -----------------------------------------------------

CREATE TABLE `person` (
  `id_person` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL,
  `surname` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL,
  `address` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL,
  `birth_date` VARCHAR(10) NULL,
  `age` VARCHAR(10) NOT NULL,
  `phone` VARCHAR(25) NOT NULL,
  `email` VARCHAR(45) NOT NULL,
  `lit_about` VARCHAR(80) NOT NULL,
  `about` VARCHAR(200) NOT NULL,
   PRIMARY KEY (`id_person`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8

-- -----------------------------------------------------
-- Table `mydb`.`education`
-- -----------------------------------------------------
CREATE TABLE `education` (
  `id_education` INT NOT NULL AUTO_INCREMENT,
  `wheres` VARCHAR(100) NULL,
  `degree` VARCHAR(45) NULL,
  `is_actual` TINYINT NULL,
  `start_date` VARCHAR(10) NULL,
  `end_date` VARCHAR(10) NULL,
  `img_url` VARCHAR(200) NULL,
  `link` VARCHAR(200) NULL,
  `enabled_link` TINYINT NULL,
  `person_id_person` INT NOT NULL,
  PRIMARY KEY (`id_education`, `person_id_person`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8


-- -----------------------------------------------------
-- Table `mydb`.`user`
-- -----------------------------------------------------
CREATE TABLE `user` (
  `id_user` INT NOT NULL AUTO_INCREMENT,
  `username` VARCHAR(45) NULL,
  `password` VARCHAR(200) NULL,
  PRIMARY KEY (`id_user`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8



-- -----------------------------------------------------
-- Table `mydb`.`image`
-- -----------------------------------------------------
CREATE TABLE `image` (
  `id_image` INT NOT NULL AUTO_INCREMENT,
  `header` VARCHAR(200) NULL,
  `about` VARCHAR(200) NULL,
  `person_id_person` INT NOT NULL,
  PRIMARY KEY (`id_image`, `person_id_person`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8



-- -----------------------------------------------------
-- Table `mydb`.`skill`
-- -----------------------------------------------------
CREATE TABLE `skill` (
  `id_skill` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NULL,
  `percentage` VARCHAR(10) NULL,
  `icon` VARCHAR(45) NULL,
  `person_id_person` INT NOT NULL,
  PRIMARY KEY (`id_skill`, `person_id_person`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8


-- -----------------------------------------------------
-- Table `mydb`.`project`
-- -----------------------------------------------------
CREATE TABLE `project` (
  `id_project` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NULL,
  `description` VARCHAR(100) NULL,
  `img_url` VARCHAR(200) NULL,
  `link` VARCHAR(200) NULL,
  `enabled_link` TINYINT NULL,
  `person_id_person` INT NOT NULL,
  PRIMARY KEY (`id_project`, `person_id_person`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8


-- -----------------------------------------------------
-- Table `mydb`.`job_type`
-- -----------------------------------------------------
CREATE TABLE `job_type` (
  `id_job_type` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NULL,
  PRIMARY KEY (`id_job_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8


-- -----------------------------------------------------
-- Table `mydb`.`experience`
-- -----------------------------------------------------
CREATE TABLE `experience` (
  `id_experience` INT NOT NULL AUTO_INCREMENT,
  `company` VARCHAR(45) NULL,
  `job` VARCHAR(45) NULL,
  `is_actual` TINYINT NULL,
  `start_date` VARCHAR(10) NULL,
  `end_date` VARCHAR(10) NULL,
  `img_url` VARCHAR(200) NULL,
  `link` VARCHAR(200) NULL,
  `enabled_link` TINYINT NULL,
  `person_id_person` INT NOT NULL,
  `job_type_id_job_type` INT NOT NULL,
  PRIMARY KEY (`id_experience`, `person_id_person`, `job_type_id_job_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8


-- -----------------------------------------------------
-- Table `mydb`.`social_media`
-- -----------------------------------------------------
CREATE TABLE `social_media` (
  `id_social_media` INT NOT NULL,
  `facebook` VARCHAR(100) NULL,
  `twitter` VARCHAR(100) NULL,
  `instagram` VARCHAR(100) NULL,
  `github` VARCHAR(100) NULL,
  `linkedin` VARCHAR(100) NULL,
  `person_id_person` INT NOT NULL,
  `cv` VARCHAR(100) NULL,
  PRIMARY KEY (`id_social_media`, `person_id_person`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;



-- -----------------------------------------------------
-- INSERT
-- -----------------------------------------------------

