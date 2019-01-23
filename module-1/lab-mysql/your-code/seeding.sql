#Insertar datos en tablas
#CARS
INSERT INTO `mydb`.`Cars` (`idCars`, `manufacturer`, `model`, `year`, `Invoices_idInvoices`, `Invoices_Customers_idCustomers`, `Invoices_SalesPersons_idSalesPersons`)
VALUES (0, `Volkswagen`, `Tiguan`, 2019, 0, 1, 3);
INSERT INTO `mydb`.`Cars` (`idCars`, `manufacturer`, `model`, `year`)
VALUES (1, `Peugeot`, `Rifter`, 2019);
INSERT INTO `mydb`.`Cars` (`idCars`, `manufacturer`, `model`, `year`, `Invoices_idInvoices`, `Invoices_Customers_idCustomers`, `Invoices_SalesPersons_idSalesPersons`)
VALUES (2, `Ford`, `Fusion`, 2018, 2, 2, 7);
INSERT INTO `mydb`.`Cars` (`idCars`, `manufacturer`, `model`, `year`, `Invoices_idInvoices`, `Invoices_Customers_idCustomers`, `Invoices_SalesPersons_idSalesPersons`)
VALUES (3, `Toyota`, `RAV4`, 2018, 3, 0, 5);
INSERT INTO `mydb`.`Cars` (`idCars`, `manufacturer`, `model`, `year`)
VALUES (4, `Volvo`, `V60`, 2019);
INSERT INTO `mydb`.`Cars` (`idCars`, `manufacturer`, `model`, `year`)
VALUES (5, `Volvo`, `V60 Cross Country`, 2019);

#CUSTOMERS
INSERT INTO `mydb`.`Customers` (`idCustomers`, `name`, `country`, `postal`)
VALUES (0, `Pablo Picasso`, `Spain`, `28045`);
INSERT INTO `mydb`.`Customers` (`idCustomers`, `name`, `country`, `postal`)
VALUES (1, `Abraham Lincoln`, `United States`, `33130`);
INSERT INTO `mydb`.`Customers` (`idCustomers`, `name`, `country`, `postal`)
VALUES (3, `Napoléon Bonaparte`, `France`, `75008`);

#SALESPERSON
INSERT INTO `mydb`.`SalesPersons` (`idSalesPersons`, `name`, `store`)
VALUES (0, `Petey Cruiser`, `Madrid`);
INSERT INTO `mydb`.`SalesPersons` (`idSalesPersons`, `name`, `store`)
VALUES (1, `Anna Sthesia`, `Barcelona`);
INSERT INTO `mydb`.`SalesPersons` (`idSalesPersons`, `name`, `store`)
VALUES (2, `Paul Molive`, `Berlin`);
INSERT INTO `mydb`.`SalesPersons` (`idSalesPersons`, `name`, `store`)
VALUES (3, `Gail Forcewind`, `Paris`);
INSERT INTO `mydb`.`SalesPersons` (`idSalesPersons`, `name`, `store`)
VALUES (4, `Paige Turner`, `Mimia`);
INSERT INTO `mydb`.`SalesPersons` (`idSalesPersons`, `name`, `store`)
VALUES (5, `Bob Frapples`, `Mexico City`);
INSERT INTO `mydb`.`SalesPersons` (`idSalesPersons`, `name`, `store`)
VALUES (6, `Walter Melon`, `Amsterdam`);
INSERT INTO `mydb`.`SalesPersons` (`idSalesPersons`, `name`, `store`)
VALUES (7, `Shonda Leer`, `São Paulo`);

#INVOICES
INSERT INTO `mydb`.`Invoices` (`idInvoices`, `date`, `car`, `customer`, `salesperson`, `Customers_idCustomers`, `SalesPersons_idSalesPersons`)
VALUES (0, `22-08-2018`, 0, 1, 3, 1, 3);
INSERT INTO `mydb`.`Invoices` (`idInvoices`, `date`, `car`, `customer`, `salesperson`, `Customers_idCustomers`, `SalesPersons_idSalesPersons`)
VALUES (1, `31-12-2018`, 3, 0, 5, 0, 5);
INSERT INTO `mydb`.`Invoices` (`idInvoices`, `date`, `car`, `customer`, `salesperson`, `Customers_idCustomers`, `SalesPersons_idSalesPersons`)
VALUES (2, `22-01-2019`, 2, 2, 7, 2, 7);

