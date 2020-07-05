
--create table Autors(
--Id INT NOT NULL  IDENTITY,
--Name nvarchar(max) not null,
--Surname nvarchar(max) not null,
--CONSTRAINT PK_Autors_Id PRIMARY KEY (Id),
--CONSTRAINT CK_Autors_Name CHECK(Name !=''),
--CONSTRAINT CK_Autors_Surname CHECK(Surname !='')
--);

--create table Style(
--Id INT NOT NULL  IDENTITY,
--Name nvarchar(max) not null,
--CONSTRAINT PK_Style_Id PRIMARY KEY (Id),
--CONSTRAINT CK_Style_Name CHECK(Name !='')
--);

--create table Countries(
--Id INT NOT NULL  IDENTITY,
--Name nvarchar(max) not null,
--CONSTRAINT PK_Countries_Id PRIMARY KEY (Id),
--CONSTRAINT CK_Countries_Name CHECK(Name !='')
--);


--create table Performer(
--Id INT NOT NULL  IDENTITY,
--Name nvarchar(max) not null,
--CountryId int not null,
--CONSTRAINT PK_Performer_Id PRIMARY KEY (Id),
--CONSTRAINT CK_Performer_Name CHECK(Name !=''),
--constraint FK_Performer_CountryId  foreign key (CountryId) references Countries(Id)
--);

--create table Musicdisc(
--Id INT NOT NULL  IDENTITY,
--Name nvarchar(max) not null,
--AutorsId int not null,
--StyleId int not null,
--DateBegin date not null,
--PerformerId int not null,
--CONSTRAINT PK_Music_Id PRIMARY KEY (Id),
--CONSTRAINT CK_Music_Name CHECK(Name !=''),
--constraint FK_Music_AutorsId  foreign key (AutorsId) references Autors(Id),
--constraint FK_Music_StyleId  foreign key (StyleId) references Style(Id),
--constraint FK_Music_PerformerId  foreign key (PerformerId) references Performer(Id)

--);

--create table Sounds(
--Id int not null identity,
--Name nvarchar(max) not null,
--Time time not null,
--MusicdiscId int not null,
--CONSTRAINT PK_Sounds_Id PRIMARY KEY (Id),
--CONSTRAINT CK_Sounds_Name CHECK(Name !=''),
--constraint FK_Sounds_MusicdiscId  foreign key (MusicdiscId) references Musicdisc(Id),
--);


--create view Report as
--select  
--st.Name as N'Style name',
--per.Name as N'Performer name',
--md.Name as N'Disc name',
--md.DateBegin as N'Date begin',
--aut.Name as N'Autors name'
--from Musicdisc md inner join Style st on md.StyleId=st.Id
--inner join Performer per on md.PerformerId=per.Id
--inner join Autors aut on md.AutorsId=aut.Id


insert Autors(Name, Surname)
values (N'Name-1',N'Surname-1'),
(N'Name-2',N'Surname-2'),
(N'Name-3',N'Surname-3'),
(N'Name-4',N'Surname-4')

insert Style(Name)
values (N'Style-1'),(N'Style-2'),(N'Style-3'),(N'Style-4')

insert Countries(Name)
values (N'Ukraine'), (N'USA'),(N'Canada')

insert Performer (Name, CountryId)
values (N'Perf-1',1), (N'Perf-3',2),(N'Perf-2',3)

insert Musicdisc(Name , AutorsId ,DateBegin ,PerformerId,StyleId)
values (N'Disc-1',2,'2015-10-16 00:00:00',4,1),
(N'Disc-2',1,'2014-11-03 00:00:00',6,1),
(N'Disc-3',3,'2010-01-07 00:00:00',5,3)

insert Sounds(Name, MusicdiscId ,Time)
values (N'Sound-1',8,'01:01:56'),
(N'Sound-1',8,'03:01:16'),
(N'Sound-2',9,'02:01:26'),
(N'Sound-3',10,'01:10:36'),
(N'Sound-4',8,'00:02:56')



