/*! Creates a database called benchmark */
create database benchmark;

/*! Now lets create a user called 'bigdata' to access the database by the specified user called 'bigdata*/
CREATE USER 'bigdata'@'%' IDENTIFIED BY 'password';

/*! Now lets grant all permission to the user alled 'bigdata' to access the database 'benchmark' */
GRANT ALL PRIVILEGES ON benchmark.* TO 'bigdata'@'%';

/*! Creating data without any domain experience/without reading */
CREATE TABLE IF NOT EXISTS `benchmark`.`yellow_taxi_data` (
  `VendorID` INT NULL,
  `tpep_pickup_datetime` TIMESTAMP NULL,
  `tpep_dropoff_datetime` TIMESTAMP NULL,
  `passenger_count` INT NULL,
  `trip_distance` FLOAT NULL,
  `RatecodeID` INT NULL,
  `store_and_fwd_flag` VARCHAR(45) NULL,
  `PULocationID` INT NULL,
  `DOLocationID` INT NULL,
  `payment_type` INT NULL,
  `fare_amount` FLOAT NULL,
  `extra` FLOAT NULL,
  `mta_tax` FLOAT NULL,
  `tip_amount` FLOAT NULL,
  `tolls_amount` FLOAT NULL,
  `improvement_surcharge` FLOAT NULL,
  `total_amount` FLOAT NULL,
  `congestion_surcharge` FLOAT NULL)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
