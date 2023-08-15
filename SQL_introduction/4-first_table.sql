-- Create a table called first_table in the current database

/* Connect to the specified database using the provided credentials */
USE `hbtn_0c_0`;

/* Create the first_table if it does not exist */
CREATE TABLE IF NOT EXISTS `first_table` (
  `id` INT NOT NULL,
  `name` VARCHAR(256),
  PRIMARY KEY (`id`)
);