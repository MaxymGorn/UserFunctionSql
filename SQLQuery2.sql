create function GetDisc(@Date int)
RETURNS Table
as 
return (
select  md.Name from Musicdisc md 
where   Datepart(year, md.DateBegin)= @Date);
go

select * from GetDisc(2010) go



--3
create function GetInfo(@name nvarchar(max))
RETURNS Table
as 
return (
select  * from Musicdisc md 
where   md.Name like N'%' +@name+N'%');
go

select * from GetInfo(N'3')  go
--


--5

create function GetCount(@name nvarchar(max))
Returns int
as
begin
declare @res int

select @res=avg(s.Time) from Musicdisc md , Sounds s, Autors au
where md.AutorsId=au.Id and md.Id=s.MusicdiscId
return res
end
go
---


--6

crEATE FUNCTION lONGssHORT()
RETURNS NVARCHAR(MAX)
AS
BEGIN

END
GO
---

