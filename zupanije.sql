drop database if exists zupanije;
create database zupanije;
use zupanije;

create table zupanije(
    sifra int not null primary key auto_increment,
    naziv varchar(50) not null,
    zupan varchar(50) not null
);

create table zupan(
    sifra int not null primary key auto_increment,
    ime varchar(50) not null,
    prezime varchar(50) not null
);

create table opcina(
    sifra int not null primary key auto_increment,
    zupanija int not null,
    naziv varchar(50) not null
);

create table mjesto(
    sifra int not null primary key auto_increment,
    opcina int not null,
    naziv varchar(50) not null

);

