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
   naziv varchar(50) not null,
   cijena varchar(50) not null,
   trajanje varchar(50) not null
);

alter table korisnici add foreign key (djelatnica) references djelatnica(sifra);
alter table korisnici add foreign key (usluge) references usluge(sifra);

# 1-3
insert into djelatnica (sifra,ime,prezime) values
(null,'Branka','Jordić'),
(null,'Marina','Posnić'),
(null,'Korina','Izok');

# 1-4
insert into usluge(sifra,naziv,cijena,trajanje) values
(null,'Farbanje',150,60),
(null,'Muško šišanje',45,30),
(null,'Žensko šišanje',60,45),
(null,'Pramenovi',100,45);

delete from usluge where sifra=4;

