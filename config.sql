/* tietokannan luominen */
CREATE DATABASE n0saje00;

/* Ottaa tietokannan käyttöön */
USE n0saje00;

/*taulujen luominen*/
CREATE TABLE users(
username varchar(100) not null,
password varchar(100) not null,
firstname varchar(100) not null,
lastname varchar(100) not null
);