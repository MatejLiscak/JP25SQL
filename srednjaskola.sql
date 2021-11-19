drop database if exists srednjaskola;
create database srednjaskola character set utf8;
use srednjaskola;

create table profesor(
    sifra int not null primary key auto_increment,
    ime varchar(50) not null,
    prezime varchar(50) not null,
    IBAN char(21) 
);

create table ucenik(
    sifra int not null primary key auto_increment,
    ime varchar(50) not null,
    prezime varchar(50) not null,
    razred int not null,
    brojugovora varchar(50)not null
);

create table razred(
    sifra int not null primary key auto_increment,
    naziv varchar(50) not null,
    profesor int not null,
    kapacitet varchar(50)
);

alter table ucenik add foreign key (razred) references razred(sifra);
alter table razred add foreign key (profesor) references profesor(sifra);

insert into profesor(sifra,ime,prezime,IBAN)values
(null,'Ivo','Ivić','HR2525000097899888839'),
(null,'Drago','Dragić','HR7425000099474146741'),
(null,'LeBron','James','HR9323400092263927824');

insert into razred(sifra,naziv,profesor,kapacitet)values
(null,'1.a',3,24),
(null,'1.b',3,22),
(null,'1.c',2,20);

insert into ucenik(sifra,ime,prezime,razred,brojugovora)values
(null,'Marin','Marić',1,44),
(null,'Pero','Perić',2,55),
(null,'Stephen','Curry',3,41);

update ucenik set razred=2 where sifra=1;
delete from profesor where sifra=1;