drop database if exists popravakobuce;
create database popravakobuce;
use popravakobuce;

create table korisnik(
    sifra int not null primary key auto_increment,
    ime varchar(50) not null,
    prezime varchar(50) not null
);

create table obuca(
    sifra int not null primary key auto_increment,
    model varchar(50) not null,
    velicina varchar(50) not null

);

create table popravak(
    cijena varchar(50) not null,
    korisnik int,
    obuca int,
    segrt boolean
);

alter table popravak add foreign key (korisnik) references korisnik(sifra);
alter table popravak add foreign key (obuca) references obuca(sifra);

insert into korisnik(sifra,ime,prezime)values
(null,'Petar','Mrkić'),
(null,'Luka','Sarmić'),
(null,'Gabrijel','Kotrin');

insert into obuca(sifra,model,velicina)values
(null,'Nike','43'),
(null,'Adidas','45'),
(null,'Puma','35');

insert into popravak(cijena,korisnik,obuca,segrt)values
(130,2,2,false),
(140,1,1,false),
(200,3,3,true);