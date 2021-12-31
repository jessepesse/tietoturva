/* tietokannan luominen */
CREATE DATABASE n0saje00;

/* Ottaa tietokannan käyttöön */
USE n0saje00;

/*taulujen luominen*/
CREATE TABLE users(
id int primary key auto_increment,
username varchar(100) not null,
password varchar(100) not null
);

CREATE TABLE users_info(
id int primary key auto_increment,
firstname varchar(100) not null,
lastname varchar(100) not null,
userid int not null,
index userid(userid),
foreign key (userid) references users(id)
on delete restrict
);