create database Bai3;
use Bai3;

CREATE TABLE users (
	id INT PRIMARY KEY,
    NAME VARCHAR(50),
    score INT
);
INSERT INTO users VALUES
(1,'gongy',3001),
(2,'urandom',2401),
(3,'eduardische',2477),
(4,'Gassa',2999),
(5,'bcc32',2658),
(6,'Alex_2oo8',6000),
(7,'mirosuaf',2479),
(8,'Sparik',2399),
(9,'thomas_holmes',2478),
(10,'cthaeghya',2400);

select NAME from (select NAME, row_number() over(order by score desc) as rownum from users ) as Users where rownum >=4 and rownum <=8;
