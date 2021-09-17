Drop database if exists mydb;
Create database if not exists mydb;

CREATE TABLE IF NOT EXISTS `mydb`.`testuser` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `user_name` VARCHAR(45) NOT NULL,
  `create_time` TIMESTAMP NULL DEFAULT Current_Timestamp,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `user_name_UNIQUE` (`user_name` ASC) VISIBLE)
ENGINE = InnoDB;

INSERT INTO `mydb`.`testuser` (`user_name`) VALUES ("Indu");
INSERT INTO `mydb`.`testuser` (`user_name`) VALUES ("Kanishk");
INSERT INTO `mydb`.`testuser` (`user_name`) VALUES ("Prasanna");

select * from mydb.testuser;

describe mydb.testuser;