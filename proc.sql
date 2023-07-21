create table Students(id int primary key identity , sname varchar(50), RollNo int, class varchar(50));


insert into Students values('Ahmed',10,'5th');
insert into Students values('Tabish',11,'7th');
insert into Students values('Rija',12,'8th');
insert into Students values('Tania',13,'5th');
insert into Students values('Rabia',14,'9th');
insert into Students values('Tabiya',15,'8th');
insert into Students values('mohsan',16,'9th');

select *from Students;

create procedure spStudentsData
as 
begin

select *from Students

end

execute spStudentsData;


create procedure spStudents
as
begin

select id ,sname from Students

end

spStudents

create procedure spdata

@name varchar(50),
@class varchar(50)
as
begin

select *from Students where sname = @name and class= @class;

end

execute spdata 'Rija', '8th';

drop procedure  spdata;



