drop database if exists fakultet;
create database fakultet character set utf8;
use fakultet;

create table student(
    sifra int not null primary key auto_increment,
    ime varchar(50) not null,
    prezime varchar(50) not null,
    oib char(11)
);

create table kolegij(
    sifra int not null primary key auto_increment,
    naziv varchar(50) not null,
    brojsati varchar(50) not null
);

create table rok(
    sifra int not null primary key auto_increment,
    naziv varchar(50) not null,
    kolegij int,
    student int,
    pocetak datetime,
    trajanje varchar(50)
);

alter table rok add foreign key (student) references student(sifra);
alter table rok add foreign key (kolegij) references kolegij(sifra);

insert into student(sifra,ime,prezime,oib)values
(null,'Ivana','Groznic',98748592834),
(null,'Tomislav','Dobric',98765467834);

insert into kolegij(sifra,naziv,brojsati)values
(null,'Hrvatski',66),
(null,'Glazbeni',70),
(null,'Povijest',80);

insert into rok(sifra,naziv,kolegij,student)values
(null,'Prvi Zimski rok',1,2),
(null,'Drugi Zimski rok',3,1);

