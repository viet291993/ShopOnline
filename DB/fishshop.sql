-- MySQL Script generated by MySQL Workbench
-- Mon Apr 22 15:19:54 2019
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema fishshop
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema fishshop
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `fishshop` DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci ;
USE `fishshop` ;

-- -----------------------------------------------------
-- Table `fishshop`.`admin`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `fishshop`.`admin` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `username` VARCHAR(32) CHARACTER SET 'utf8' COLLATE 'utf8_unicode_ci' NOT NULL,
  `password` VARCHAR(32) CHARACTER SET 'utf8' COLLATE 'utf8_unicode_ci' NOT NULL,
  `name` VARCHAR(128) CHARACTER SET 'utf8' COLLATE 'utf8_unicode_ci' NOT NULL,
  `active` TINYINT(4) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `username_UNIQUE` (`username` ASC) VISIBLE)
ENGINE = MyISAM
AUTO_INCREMENT = 20
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_bin;


-- -----------------------------------------------------
-- Table `fishshop`.`catalog`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `fishshop`.`catalog` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(128) CHARACTER SET 'utf8' COLLATE 'utf8_unicode_ci' NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `name` (`name` ASC) VISIBLE)
ENGINE = InnoDB
AUTO_INCREMENT = 112
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_unicode_ci;


-- -----------------------------------------------------
-- Table `fishshop`.`product`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `fishshop`.`product` (
  `id` INT(255) NOT NULL AUTO_INCREMENT,
  `catalog_id` INT(11) NOT NULL,
  `name` VARCHAR(100) CHARACTER SET 'utf8' COLLATE 'utf8_unicode_ci' NOT NULL,
  `price` BIGINT(20) NOT NULL DEFAULT '0',
  `content` TEXT CHARACTER SET 'utf8' COLLATE 'utf8_unicode_ci' NOT NULL,
  `image` VARCHAR(50) CHARACTER SET 'utf8' COLLATE 'utf8_bin' NOT NULL,
  `created` DATETIME NULL DEFAULT CURRENT_TIMESTAMP,
  `view` INT(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  INDEX `fk_product_catalog` (`catalog_id` ASC) VISIBLE,
  CONSTRAINT `fk_product_catalog`
    FOREIGN KEY (`catalog_id`)
    REFERENCES `fishshop`.`catalog` (`id`))
ENGINE = InnoDB
AUTO_INCREMENT = 22
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_unicode_ci;


-- -----------------------------------------------------
-- Table `fishshop`.`transaction`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `fishshop`.`transaction` (
  `id` BIGINT(20) NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(50) CHARACTER SET 'utf8' COLLATE 'utf8_unicode_ci' NOT NULL,
  `address` VARCHAR(255) NOT NULL,
  `phone` VARCHAR(20) CHARACTER SET 'utf8' COLLATE 'utf8_bin' NOT NULL,
  `email` VARCHAR(50) CHARACTER SET 'utf8' COLLATE 'utf8_bin' NOT NULL,
  `message` VARCHAR(255) CHARACTER SET 'utf8' COLLATE 'utf8_bin' NOT NULL,
  `amount` BIGINT(20) NOT NULL DEFAULT '0',
  `created` DATETIME NULL DEFAULT CURRENT_TIMESTAMP,
  `status` TINYINT(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`))
ENGINE = InnoDB
AUTO_INCREMENT = 16
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_bin;


-- -----------------------------------------------------
-- Table `fishshop`.`order`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `fishshop`.`order` (
  `id` INT(255) NOT NULL AUTO_INCREMENT,
  `transaction_id` BIGINT(20) NOT NULL,
  `product_id` INT(255) NOT NULL,
  `qty` INT(11) NOT NULL DEFAULT '0',
  `amount` DECIMAL(15,4) NOT NULL DEFAULT '0.0000',
  PRIMARY KEY (`id`),
  INDEX `fk_order_product` (`product_id` ASC) INVISIBLE,
  INDEX `fk_order_transaction` (`transaction_id` ASC) VISIBLE,
  CONSTRAINT `fk_order_product`
    FOREIGN KEY (`product_id`)
    REFERENCES `fishshop`.`product` (`id`),
  CONSTRAINT `fk_order_transaction`
    FOREIGN KEY (`transaction_id`)
    REFERENCES `fishshop`.`transaction` (`id`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB
AUTO_INCREMENT = 29
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_bin;


-- -----------------------------------------------------
-- Table `fishshop`.`user`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `fishshop`.`user` (
  `id` INT(255) NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(50) CHARACTER SET 'utf8' COLLATE 'utf8_unicode_ci' NOT NULL,
  `email` VARCHAR(50) CHARACTER SET 'utf8' COLLATE 'utf8_unicode_ci' NOT NULL,
  `phone` VARCHAR(15) CHARACTER SET 'utf8' COLLATE 'utf8_unicode_ci' NOT NULL,
  `address` VARCHAR(128) CHARACTER SET 'utf8' COLLATE 'utf8_unicode_ci' NOT NULL,
  `password` VARCHAR(40) CHARACTER SET 'utf8' COLLATE 'utf8_unicode_ci' NOT NULL,
  `created` DATE NOT NULL,
  `status` TINYINT(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE INDEX `email` (`email` ASC) VISIBLE)
ENGINE = MyISAM
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_unicode_ci;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
