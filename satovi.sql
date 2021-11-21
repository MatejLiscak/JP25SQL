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
    model varchar(50) not null,
    velicina varchar(50) not null,
    vrijednost varchar(50) not null

);

create table popravak(
    cijena varchar(50) not null,
    korisnik int,
    satovi int,
    segrt boolean
);

alter table popravak add foreign key (korisnik) references korisnik(sifra);
alter table popravak add foreign key (satovi) references satovi(sifra);

insert into korisnik(sifra,ime,prezime)values
(null,'Mirko','Parić'),
(null,'Alen','Žamor'),
(null,'Antonio','Vutkić');

insert into satovi(sifra,model,velicina)values
(null,'Jaguar','11'),
(null,'Rollex','13'),
(null,'Rollex','14');

insert into popravak(cijena,korisnik,satovi,segrt)values
(430,1,1,false),
(566,3,3,false),
(1423,2,2,true);