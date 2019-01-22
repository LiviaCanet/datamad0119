-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema Livia
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema Livia
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `Livia` ;
USE `Livia` ;

-- -----------------------------------------------------
-- Table `Livia`.`SalesPerson`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Livia`.`SalesPerson` (
  `StaffID` INT NOT NULL,
  `Name` VARCHAR(45) NULL,
  `Store` VARCHAR(45) NULL,
  PRIMARY KEY (`StaffID`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Livia`.`Customers`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Livia`.`Customers` (
  `idCustomers` INT NOT NULL,
  `Name` VARCHAR(45) NULL,
  `PhoneNumber` INT NULL,
  `Email` VARCHAR(45) NULL,
  `Address` VARCHAR(200) NULL,
  `City` VARCHAR(45) NULL,
  `StateProvince` VARCHAR(45) NULL,
  `Country` VARCHAR(45) NULL,
  `ZIP` INT NULL,
  `SalesPerson_StaffID` INT NOT NULL,
  PRIMARY KEY (`idCustomers`),
  INDEX `fk_Customers_SalesPerson1_idx` (`SalesPerson_StaffID` ASC),
  CONSTRAINT `fk_Customers_SalesPerson1`
    FOREIGN KEY (`SalesPerson_StaffID`)
    REFERENCES `Livia`.`SalesPerson` (`StaffID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Livia`.`Invoices`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Livia`.`Invoices` (
  `idInvoices` INT NOT NULL,
  `Date` DATETIME NULL,
  `Car` VARCHAR(45) NULL,
  `Customer` VARCHAR(45) NULL,
  `SalesPerson` VARCHAR(45) NULL,
  `Customers_idCustomers` INT NOT NULL,
  PRIMARY KEY (`idInvoices`),
  INDEX `fk_Invoices_Customers1_idx` (`Customers_idCustomers` ASC),
  CONSTRAINT `fk_Invoices_Customers1`
    FOREIGN KEY (`Customers_idCustomers`)
    REFERENCES `Livia`.`Customers` (`idCustomers`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Livia`.`Cars`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Livia`.`Cars` (
  `VIN` INT NOT NULL,
  `Manufacturer` VARCHAR(45) NULL,
  `Model` VARCHAR(45) NULL,
  `Year` INT NULL,
  `Color` VARCHAR(45) NULL,
  `Invoices_idInvoices` INT NOT NULL,
  `Customers_idCustomers` INT NOT NULL,
  `SalesPerson_StaffID` INT NOT NULL,
  PRIMARY KEY (`VIN`, `Invoices_idInvoices`),
  INDEX `fk_Cars_Invoices1_idx` (`Invoices_idInvoices` ASC),
  INDEX `fk_Cars_Customers1_idx` (`Customers_idCustomers` ASC),
  INDEX `fk_Cars_SalesPerson1_idx` (`SalesPerson_StaffID` ASC),
  CONSTRAINT `fk_Cars_Invoices1`
    FOREIGN KEY (`Invoices_idInvoices`)
    REFERENCES `Livia`.`Invoices` (`idInvoices`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Cars_Customers1`
    FOREIGN KEY (`Customers_idCustomers`)
    REFERENCES `Livia`.`Customers` (`idCustomers`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Cars_SalesPerson1`
    FOREIGN KEY (`SalesPerson_StaffID`)
    REFERENCES `Livia`.`SalesPerson` (`StaffID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
