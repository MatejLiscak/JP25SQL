drop database if exists satovi;
create database satovi;
use satovi;

create table korisnik(
    sifra int not null primary key auto_increment,
    ime varchar(50) not null,
    prezime varchar(50) not null
);

create table satovi(
    sifra int not null primary key auto_increment,
    model varchar(50) not null
);

create table popravak(
    cijena varchar(50) not null,
    korisnik int,
    satovi int,
    segrt boolean
);

alter table popravak add foreign key (korisnik) references korisnik(sifra);
alter table popravak add foreign key (satovi) references satovi(sifra);