-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema quiverdb
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `quiverdb` ;

-- -----------------------------------------------------
-- Schema quiverdb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `quiverdb` DEFAULT CHARACTER SET utf8 ;
USE `quiverdb` ;

-- -----------------------------------------------------
-- Table `surfboard`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `surfboard` ;

CREATE TABLE IF NOT EXISTS `surfboard` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `brand_name` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;

SET SQL_MODE = '';
DROP USER IF EXISTS quiveruser@localhost;
SET SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';
CREATE USER 'quiveruser'@'localhost' IDENTIFIED BY 'quiveruser';

GRANT SELECT, INSERT, TRIGGER, UPDATE, DELETE ON TABLE * TO 'quiveruser'@'localhost';

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

-- -----------------------------------------------------
-- Data for table `surfboard`
-- -----------------------------------------------------
START TRANSACTION;
USE `quiverdb`;
INSERT INTO `surfboard` (`id`, `brand_name`) VALUES (1, '7S');

COMMIT;

