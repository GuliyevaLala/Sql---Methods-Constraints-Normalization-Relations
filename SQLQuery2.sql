 create database Coursse
 use Coursse

create table Teachers(
	[Id] int identity primary key,
	[Name] nvarchar(255),
	[Surname] nvarchar(255),
	[Email] nvarchar(255),
	[Age] int,
	[Salary] decimal
)


insert into Teachers(Name, Surname, Email, Age, Salary)
values ('John', 'Doe', 'doe8941@gmail.com', 39, 3650),
('Sabrina', 'Smith', 'sm84sab@msn.com', 18, 1200),
('Erik', 'Johnson', 'eriktow@outlook.com', 23, 4810),
('David', 'Hansen', 'hansesnnscout@int.scc.de', 34, 5600),
('William', 'Alexandre', 'willy.alex789@in.uk.', 27, 2456)

select * from Teachers

select MAX(Age) AS [MaxAge] from Teachers ;
select * from Teachers where [Age]>(select AVG([Age]) from Teachers)


select * from Teachers where [Salary] BETWEEN 1000 AND 3000

SELECT Id,
SUBSTRING ([Email], CHARINDEX( '@', [Email]) + 1,
LEN([Email]) - CHARINDEX( '@', [Email])) AS [Domain]
FROM Teachers;

select * from Teachers where [Email] like '%gmail.com%'
select * from Teachers where [Name] like 'j%'