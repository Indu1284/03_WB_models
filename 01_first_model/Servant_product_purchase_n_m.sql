Drop database if exists mydb;
Create database if not exists mydb;

/* tabelle definition*/
-- servants without foriegn key --
CREATE TABLE IF NOT EXISTS `mydb`.`Servants` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `servants_name` VARCHAR(45) NOT NULL,
  `yrs_served` INT NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;
-- products without foriegn key --
CREATE TABLE IF NOT EXISTS `mydb`.`Products` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `Products_name` VARCHAR(45) NOT NULL,
  `products_price` DECIMAL(4,2) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;
-- purchases with only foriegn keys --

CREATE TABLE IF NOT EXISTS `mydb`.`Purchases` (
  `Servants_id` INT NOT NULL,
  `Products_id` INT NOT NULL,
  PRIMARY KEY (`Servants_id`, `Products_id`),
  INDEX `fk_Servants_has_Products_Products1_idx` (`Products_id` ASC) VISIBLE,
  INDEX `fk_Servants_has_Products_Servants1_idx` (`Servants_id` ASC) VISIBLE,
  CONSTRAINT `fk_Servants_has_Products_Servants1`
    FOREIGN KEY (`Servants_id`)
    REFERENCES `mydb`.`Servants` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Servants_has_Products_Products1`
    FOREIGN KEY (`Products_id`)
    REFERENCES `mydb`.`Products` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;
/*insert in to servants*/
INSERT INTO `mydb`.`Servants` (`id`, `servants_name`, `yrs_served`) VALUES (default, "INDU", 5);
INSERT INTO `mydb`.`Servants` (`id`, `servants_name`, `yrs_served`) VALUES (default, "Rani", 9);
INSERT INTO `mydb`.`Servants` (`id`, `servants_name`, `yrs_served`) VALUES (default, "Meena", 5);
/*insert in to products*/
INSERT INTO `mydb`.`Products` (`id`, `Products_name`, `products_price`) VALUES (default, "Lindt", 2.99);
INSERT INTO `mydb`.`Products` (`id`, `Products_name`, `products_price`) VALUES (default, "Rafleo", 1.43);
INSERT INTO `mydb`.`Products` (`id`, `Products_name`, `products_price`) VALUES (default, "Oreo", 1.23);
/* select statements*/

select * from servants;
select * from Products;

