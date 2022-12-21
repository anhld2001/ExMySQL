use user;
create table Products (
	id int primary key,
    name varchar(20),
    price float,
    quantity int
);
insert into Products values
(1,'Tomato',10,4),
(2,'Cucumber',8,5),
(3,'Red Pepper',20,2),
(4,'Feta',40,1);
select name from Products where (price * quantity) = (select max(price * quantity) from Products)  order by name asc limit 1;
