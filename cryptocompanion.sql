drop database if exists cryptocompanion;
create database cryptocompanion character set utf8;
use cryptocompanion;

create table holder(
    sifra int not null primary key auto_increment,
    ime varchar(50) not null,
    prezime varchar(50) not null,
    email varchar (50)
);

create table kriptovaluta(
    sifra int not null primary key auto_increment,
    naziv varchar(50) not null,
    kolicina decimal (18,2) not null,
    kupovnacijena decimal(18,2) not null,
    prodajnacijena decimal (18,2),
    profit decimal (18,2) not null
);

create table portfolio(
    naziv varchar(50) not null,
    kriptovaluta int not null,
    holder int not null
);

alter table portfolio add foreign key (kriptovaluta) references kriptovaluta(sifra);
alter table portfolio add foreign key (holder) references holder(sifra);

#1
insert into holder (sifra,ime,prezime,email)
values(null,'Matej','Liscak','liscakmatej1@gmail.com');

#1
insert into kriptovaluta (sifra,naziv,kolicina,kupovnacijena,prodajnacijena)
values (null,'Bitcoin',3,32145.24,64568.31);

insert into portfolio (naziv,kriptovaluta,holder)
values('Main',1,1);