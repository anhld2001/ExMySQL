use user;

create table Grades(
		Name varchar(20) primary key,
        ID int,
        Midterm1 int,
        Midterm2 int,
        Final int
);
insert into Grades values
('David',42334,34,53,124),
('Anthony',54528,100,10,50),
('Jonathan',58754,49,58,121),
('Jonty',11000,25,30,180);
select Name, ID from Grades where  (Midterm1 + Midterm2) < Final order by substring(Name,3,LENGTH(Name)) desc;