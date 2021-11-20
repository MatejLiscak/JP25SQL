drop database if exists zastitazivotinja;
create database zastitazivotinja character set utf8;
use zastitazivotinja;

create table osoba(
    sifra int not null primary key auto_increment,
    ime varchar(50) not null,
    prezime varchar(50) not null,
    IBAN varchar(50) not null
);

create table prostor(
    sifra int not null primary key auto_increment,
    kapacitet varchar(50) not null,
    popunjen boolean
);

create table zivotinja(
    osoba int not null,
    prostor int not null,
    vrsta varchar(50) not null,
    tezina varchar(50) not null,
    visina varchar(50) not null

);

alter table zivotinja add foreign key (osoba) references osoba(sifra);
alter table zivotinja add foreign key (prostor) references prostor(sifra);

insert into osoba(sifra,ime,prezime,IBAN)values
(null,'Ivo','Josipović','HR3724840082773533972'),
(null,'Mara','Karimović','HR5824020069614565167');

insert into prostor(sifra,kapacitet)values
(null,50),
(null,70),
(null,89);

insert into zivotinja(osoba,prostor,vrsta,tezina,visina)values
(1,3,'pas',45,70),
(2,1,'mačka',10,20),
(2,2,'krava',400,100);

update prostor set kapacitet=100 where sifra=2;




