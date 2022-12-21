create database user;
use user;

create table accounts (
	id int primary key not null,
    userName varchar(50),
    role varchar(15),
    email varchar(30)
    );
    
insert into accounts (id, userName, role, email)
values
(6,'fasalytch','premium','much.premium@role.com'),
(13,'luckygirl','regular','fun@meh.com'),
(16,'todayhumor','guru','today@humor.com'),
(23,'Felix','admin','felix@codefights.com'),
(52,'admin666','AdmiN','iamtheadmin@admin.admin'),
(87,'solver100500','regular','email@notbot.com');

select * from accounts;

select email from accounts where not role = 'admin' and not role = 'premium' order by email asc;