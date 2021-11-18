drop database if exists frizerskisalon;   
create database frizerskisalon;
use frizerskisalon;

create table djelatnica(
    sifra int not null primary key auto_increment,
    ime varchar(50) not null,
    prezime varchar(50) not null,
    oib varchar(50)
);

create table korisnici(
    sifra int not null primary key auto_increment,
    ime varchar(50) not null,
    prezime varchar(50) not null,
    djelatnica int,
    usluge int
);

create table usluge(
   sifra int not null primary key auto_increment,
   naziv varchar(50)
);

alter table korisnici add foreign key (djelatnica) references djelatnica(sifra);
alter table korisnici add foreign key (usluge) references usluge(sifra);