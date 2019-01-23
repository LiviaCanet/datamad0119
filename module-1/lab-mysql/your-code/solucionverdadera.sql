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
-- Table `mydb`.`Customers`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Customers` (
  `idCustomers` INT NOT NULL,
  `name` VARCHAR(45) NULL,
  `country` VARCHAR(45) NULL,
  `postal` INT NULL,
  PRIMARY KEY (`idCustomers`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`SalesPersons`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`SalesPersons` (
  `idSalesPersons` INT NOT NULL,
  `name` VARCHAR(45) NULL,
  `store` VARCHAR(45) NULL,
  PRIMARY KEY (`idSalesPersons`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Invoices`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Invoices` (
  `idInvoices` INT ZEROFILL NOT NULL,
  `date` DATETIME NULL,
  `car` INT NULL,
  `customer` INT NOT NULL,
  `salesperson` INT NULL,
  `Customers_idCustomers` INT NOT NULL,
  `SalesPersons_idSalesPersons` INT NOT NULL,
  PRIMARY KEY (`idInvoices`, `Customers_idCustomers`, `SalesPersons_idSalesPersons`),
  INDEX `fk_Invoices_Customers_idx` (`Customers_idCustomers` ASC) VISIBLE,
  INDEX `fk_Invoices_SalesPersons1_idx` (`SalesPersons_idSalesPersons` ASC) VISIBLE,
  CONSTRAINT `fk_Invoices_Customers`
    FOREIGN KEY (`Customers_idCustomers`)
    REFERENCES `mydb`.`Customers` (`idCustomers`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Invoices_SalesPersons1`
    FOREIGN KEY (`SalesPersons_idSalesPersons`)
    REFERENCES `mydb`.`SalesPersons` (`idSalesPersons`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Cars`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Cars` (
  `idCars` INT NOT NULL,
  `manufacturer` VARCHAR(45) NOT NULL,
  `model` VARCHAR(45) NOT NULL,
  `year` VARCHAR(45) NOT NULL,
  `Invoices_idInvoices` INT ZEROFILL NOT NULL,
  `Invoices_Customers_idCustomers` INT NOT NULL,
  `Invoices_SalesPersons_idSalesPersons` INT NOT NULL,
  PRIMARY KEY (`idCars`, `Invoices_idInvoices`, `Invoices_Customers_idCustomers`, `Invoices_SalesPersons_idSalesPersons`),
  INDEX `fk_Cars_Invoices1_idx` (`Invoices_idInvoices` ASC, `Invoices_Customers_idCustomers` ASC, `Invoices_SalesPersons_idSalesPersons` ASC) VISIBLE,
  CONSTRAINT `fk_Cars_Invoices1`
    FOREIGN KEY (`Invoices_idInvoices` , `Invoices_Customers_idCustomers` , `Invoices_SalesPersons_idSalesPersons`)
    REFERENCES `mydb`.`Invoices` (`idInvoices` , `Customers_idCustomers` , `SalesPersons_idSalesPersons`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
