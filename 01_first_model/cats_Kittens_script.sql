Drop database if exists mydb;
Create database if not exists mydb;



CREATE TABLE IF NOT EXISTS `mydb`.`cats` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `cat_name` VARCHAR(45) NOT NULL,
  `fur_color` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `id_UNIQUE` (`id` ASC) VISIBLE)
ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS `mydb`.`Kittens` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `fur_color` VARCHAR(45) NOT NULL,
  `Kittens_name` VARCHAR(45) NOT NULL,
  `cats_id` INT NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_Kittens_cats1_idx` (`cats_id` ASC) VISIBLE,
  CONSTRAINT `fk_Kittens_cats1`
    FOREIGN KEY (`cats_id`)
    REFERENCES `mydb`.`cats` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

DESCRIBE mydb.Cats;
DESCRIBE mydb.Kittens;

INSERT INTO `mydb`.`cats` (`id`, `cat_name`, `fur_color`) VALUES (default,"Indu", "White");
INSERT INTO `mydb`.`cats` (`id`, `cat_name`, `fur_color`) VALUES (default,"Prasanna", "Blue");
INSERT INTO `mydb`.`cats` (`id`, `cat_name`, `fur_color`) VALUES (default, "Sindhya", "Grey");

select * from mydb.cats;

INSERT INTO `mydb`.`Kittens` (`id`, `fur_color`, `Kittens_name`, `cats_id`) VALUES (default, "White", "Kanishk", 1);
INSERT INTO `mydb`.`Kittens` (`id`, `fur_color`, `Kittens_name`, `cats_id`) VALUES (default, "Blue", "AVY", 3);
INSERT INTO `mydb`.`Kittens` (`id`, `fur_color`, `Kittens_name`, `cats_id`) VALUES (default, "Grey", "Akshara", 2);
INSERT INTO `mydb`.`Kittens` (`id`, `fur_color`, `Kittens_name`, `cats_id`) VALUES (default, "White", "Akshara", 2);
INSERT INTO `mydb`.`Kittens` (`id`, `fur_color`, `Kittens_name`, `cats_id`) VALUES (default, "Blue", "Akshara", 2);

select * from mydb.kittens;



