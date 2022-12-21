use user;
drop table answers;
create table answers(
	id int primary key,
    correct_answer char(10),
    given_answer char(10)
);
select * from answers;
insert into answers values
(1,'a','a');
insert into answers(id, correct_answer) values
(2,'b');
insert into answers values
(3,'c','b');
select id, if(given_answer is null,'no_answer',if(strcmp(correct_answer,given_answer) = 0, 'correct', 'incorrect')) as checks from answers;