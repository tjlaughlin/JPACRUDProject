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
  `brand` VARCHAR(45) NOT NULL,
  `price` DECIMAL(5,2) NOT NULL,
  `length` VARCHAR(10) NOT NULL,
  `volume` VARCHAR(10) NOT NULL,
  `tail_shape` VARCHAR(45) NOT NULL,
  `board_type` VARCHAR(45) NOT NULL,
  `name` VARCHAR(45) NOT NULL,
  `wave_height` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`) COMMENT '	')
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
INSERT INTO `surfboard` (`id`, `brand`, `price`, `length`, `volume`, `tail_shape`, `board_type`, `name`, `wave_height`) VALUES (1, '7S', 499.00, '6\'2', '36.4L', 'round', 'short', 'Sweet Spot 3.0', 'medium - big');
INSERT INTO `surfboard` (`id`, `brand`, `price`, `length`, `volume`, `tail_shape`, `board_type`, `name`, `wave_height`) VALUES (2, 'Channel Islands', 770.00, '5\'6', '26.2L', 'swallow', 'fish', 'Spanish Omeletee', 'small');
INSERT INTO `surfboard` (`id`, `brand`, `price`, `length`, `volume`, `tail_shape`, `board_type`, `name`, `wave_height`) VALUES (3, 'FireWire', 590.00, '5\'11', '34.4L', 'round', 'funboard', 'Shiitake', 'medium');
INSERT INTO `surfboard` (`id`, `brand`, `price`, `length`, `volume`, `tail_shape`, `board_type`, `name`, `wave_height`) VALUES (4, 'Panda', 635.00, '5\'3', '24.7L', 'round square', 'groveler', 'PROII XV', 'small');
INSERT INTO `surfboard` (`id`, `brand`, `price`, `length`, `volume`, `tail_shape`, `board_type`, `name`, `wave_height`) VALUES (5, 'DHD', 550.00, '6\'8', '44.1L', 'round square', 'funboard', 'Pigdog Pro', 'small - medium');
INSERT INTO `surfboard` (`id`, `brand`, `price`, `length`, `volume`, `tail_shape`, `board_type`, `name`, `wave_height`) VALUES (6, 'Chemistry', 695.00, '5\'1', '22.8L', 'swallow', 'groveler', 'Hypto Krypto', 'small');
INSERT INTO `surfboard` (`id`, `brand`, `price`, `length`, `volume`, `tail_shape`, `board_type`, `name`, `wave_height`) VALUES (7, 'BlackLine', 430.00, '6\'0', '35.5L', 'square', 'short', 'Edge lite', 'medium - big');
INSERT INTO `surfboard` (`id`, `brand`, `price`, `length`, `volume`, `tail_shape`, `board_type`, `name`, `wave_height`) VALUES (8, 'Album', 705.00, '7\'11', '50.3L', 'round', 'longboard', 'WILKO F13', 'small - medium');
INSERT INTO `surfboard` (`id`, `brand`, `price`, `length`, `volume`, `tail_shape`, `board_type`, `name`, `wave_height`) VALUES (9, 'Nation', 490.00, '6\'7', '42.9L', 'swallow', 'fish', 'Old School Twin', 'medium');
INSERT INTO `surfboard` (`id`, `brand`, `price`, `length`, `volume`, `tail_shape`, `board_type`, `name`, `wave_height`) VALUES (10, 'Surf Prescriptons', 610.00, '6\'0', '33.7L', 'round square', 'short', 'DNA Craft', 'medium - big');
INSERT INTO `surfboard` (`id`, `brand`, `price`, `length`, `volume`, `tail_shape`, `board_type`, `name`, `wave_height`) VALUES (11, 'Lost', 525.00, '5\'2', '20.1L', 'round', 'groveler', 'Classic Egg', 'small');
INSERT INTO `surfboard` (`id`, `brand`, `price`, `length`, `volume`, `tail_shape`, `board_type`, `name`, `wave_height`) VALUES (12, 'Chilli', 800.00, '8\'0', '55.3L', 'square', 'lonboard', 'Hot Knife', 'small');
INSERT INTO `surfboard` (`id`, `brand`, `price`, `length`, `volume`, `tail_shape`, `board_type`, `name`, `wave_height`) VALUES (13, 'T Patterson', 715.00, '6\'6', '42.3L', 'swallow', 'mini-longboard', 'Twin 82', 'medium - big');

COMMIT;

