-- create the user database if it not yet exists
CREATE DATABASE IF NOT EXISTS `${db.name}`;

-- use the database
USE `${db.name}`;

-- create changelog table
CREATE TABLE IF NOT EXISTS `changelog` (
  `change_number` BIGINT NOT NULL,
  `delta_set` VARCHAR(10) NOT NULL,
  `start_dt` TIMESTAMP NOT NULL,
  `complete_dt` TIMESTAMP NULL,
  `applied_by` VARCHAR(100) NOT NULL,
  `description` VARCHAR(500) NOT NULL
);
