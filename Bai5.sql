use user;
create table Suspect(
	id int primary key,
    name varchar(20),
    surname varchar(20),
    height float,
    weight float
);
insert into Suspect values
(1,'John','Doe',165,60),
(2,'Bill','Green',170,67),
(3,'Baelfire','Grehn',172,70),
(4,'Bill','Gretan',165,55),
(5,'Brendon','Grewn',150,50),
(6,'bill','Green',169,50);
select id, name, surname from Suspect where height <= 170 and name like 'B%' and surname like 'Gre_n';