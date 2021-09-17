Drop database if exists mydb;
Create database if not exists mydb;


/* creating a master table*/
CREATE TABLE IF NOT EXISTS `mydb`.`cats` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `cat_name` VARCHAR(45) NOT NULL,
  `fur_color` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `id_UNIQUE` (`id` ASC) VISIBLE)
ENGINE = InnoDB;
/* creating a dependent table*/


CREATE TABLE IF NOT EXISTS `mydb`.`servants` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `servants_name` VARCHAR(45) NOT NULL,
  `yrs_served` INT NOT NULL,
  `cats_id` INT NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_servants_cats_idx` (`cats_id` ASC) VISIBLE,
  UNIQUE INDEX `cats_id_UNIQUE` (`cats_id` ASC) VISIBLE,
  CONSTRAINT `fk_servants_cats`
    FOREIGN KEY (`cats_id`)
    REFERENCES `mydb`.`cats` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

describe mydb.cats;
describe mydb.servants;

/*inserting data master table*/
INSERT INTO `mydb`.`cats` (`id`, `cat_name`, `fur_color`) VALUES (DEFAULT, "Indu", "White");
INSERT INTO `mydb`.`cats` (`id`, `cat_name`, `fur_color`) VALUES (DEFAULT, "Prasanna", "Grey");
INSERT INTO `mydb`.`cats` (`id`, `cat_name`, `fur_color`) VALUES (DEFAULT, "Kanishk", "Striped");
/*inserting data dependent table*/
INSERT INTO `mydb`.`servants` (`id`, `servants_name`, `yrs_served`, `cats_id`) VALUES (default, "Rani", 8, 1);
INSERT INTO `mydb`.`servants` (`id`, `servants_name`, `yrs_served`, `cats_id`) VALUES (default, "Vali", 5, 3);
INSERT INTO `mydb`.`servants` (`id`, `servants_name`, `yrs_served`, `cats_id`) VALUES (default, "Meena", 4, 2);

select * from mydb.cats;
select * from  mydb.servants;