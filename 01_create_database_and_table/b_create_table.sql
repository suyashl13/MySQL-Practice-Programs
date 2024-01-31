-- See all Databases.
show databases;

-- Use Database Pet Shop.
use database pet_shop;


-- Create Tables Cats and Dogs.
CREATE TABLE cats (
    name VARCHAR(50),
    age INT
);
 
CREATE TABLE dogs (
    name VARCHAR(50),
    breed VARCHAR(50),
    age INT
);

-- See created Tables.
show tables;

-- Describe tables
desc dogs;
desc cats;