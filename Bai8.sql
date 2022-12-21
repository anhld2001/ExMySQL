use user;

create table expressions(
	id int primary key,
    a int,
    b int,
    operation char(5),
    c int
);
insert into expressions values
(1,2,3,'+',5),
(2,2,3,'+',6),
(3,3,2,'/',1),
(4,4,7,'*',28),
(5,54,2,'-',27),
(6,3,0,'/',0);

select * from expressions 
where 
if(strcmp(operation,'+') = 0,a+b=c, 
if(strcmp(operation,'-') = 0, a-b=c, 
if(strcmp(operation,'*') = 0, a*b=c,
a/b=c)));