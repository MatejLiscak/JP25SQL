drop database if exists muzej;
create database muzej character set utf8;
use muzej;

create table sponzor(
    sifra int not null primary key auto_increment,
    naziv varchar(50) not null,
    iznos decimal(18.2) not null
);

create table kustos(
    sifra int not null primary key auto_increment,
    ime varchar(50) not null,
    prezime varchar(50) not null
);

create table izlozba(
    sifra int not null primary key auto_increment,
    naziv varchar(50) not null,
    sponzor int not null,
    kustos int not null
);

create table djelo(
    sifra int not null primary key auto_increment,
    naziv varchar(50) not null,
    umjetnik varchar(50) not null,
    vrijednost decimal(18.2) not null
);

create table primjerak(
    izlozba int not null,
    djelo int not null
);

alter table izlozba add foreign key (sponzor) references sponzor(sifra);
alter table izlozba add foreign key (kustos) references kustos(sifra);
alter table primjerak add foreign key (izlozba) references izlozba(sifra);
alter table primjerak add foreign key (djelo) references djelo(sifra);

insert into sponzor(sifra,naziv,iznos)values
(null,'Nike',14000.23),
(null,'Adidas',54353.78),
(null,'Puma',8766.56);

insert into kustos(sifra,ime,prezime)values
(null,'Ivan','Popović'),
(null,'Marko','Izmišljenović'),
(null,'Jura','Pravi');

insert into izlozba(sifra,naziv,sponzor,kustos)values
(null,'Parada',1,3),
(null,'Zalazak',2,2),
(null,'To je taj',3,1);
