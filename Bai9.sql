use user;

create table full_year(
	id int primary key,
    newspaper varchar(20),
    subscriber varchar(20)
);
drop table half_year;
create table half_year(
	id int primary key,
    newspaper varchar(30),
    subscriber varchar(50)
);

insert into full_year values
(1,'The Paragon Herald','Crissy Sepe'),
(2,'The Daily Reporter','Tonie Moreton'),
(3,'Morningtide Daily','Erwin Chitty'),
(4,'Daily Breakfast','Tonie Moreton'),
(5,'Independent Weekly','Lavelle Phu');

insert into half_year values
(1,'The Daily Reporter','Lavelle Phu'),
(2,'Daily Breakfast','Tonie Moreton'),
(3,'The Paragon Herald','Lia Cover'),
(4,'The Community Gazette','Lavelle Phu'),
(5,'Nova Daily','Lia Cover'),
(6,'Nova Daily','Joya Buss');

select subscriber from full_year
union
select subscriber from half_year
order by subscriber;