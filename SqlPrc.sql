create function HeelowName(@name nvarchar(max))
returns nvarchar(max)
as
begin
declare @ret nvarchar(max)
Set @ret=N'Hellow, '+@name
return @ret
end
go

--1
select dbo.HeelowName(N'World') as N'Output' 
go


create function GetMin()
returns int
as 
begin
declare @res int
set @res=DATEPARt(minute,getdate())
return @res
end 
go

--2
select dbo.GetMin() as N'Min'
go

create function GetYear()
returns int
as 
begin
declare @res int
set @res=DATEPARt(year,getdate())
return @res
end 
go

--3
select dbo.GetYear() as N'Year'
go

create function CheckYear()
returns nvarchar(max)
as 
begin
declare @res int
set @res=DATEPARt(year,getdate())

return case @res%2 when 0 then N'четное' 
else N'нечетное' end
end 
go
--4
select dbo.CheckYear() as N'Check year'
go

CREATE function ISPRIME(@i INT ) 
returns nvarchar(max)
as
BEGIN
DECLARE @c int, @t int, @result bit
SET @result=1
IF (@i & 1)=0
	BEGIN
	SET @result=0
	GOTO done
	END
SET @c=3
SET @t=SQRT(@i)
WHILE @c<=@t
	BEGIN
	IF @i % @c=0
		BEGIN
		SET @result=0
		GOTO done
		END
	SET @c=@c+2
	END
done:
RETURN  case @result when 0 then N'складное' 
else N'простое' end
END
go


CREATE function ISPRIME_int(@i INT ) 
returns int
as
BEGIN
DECLARE @c int, @t int, @result bit
SET @result=1
IF (@i & 1)=0
	BEGIN
	SET @result=0
	GOTO done
	END
SET @c=3
SET @t=SQRT(@i)
WHILE @c<=@t
	BEGIN
	IF @i % @c=0
		BEGIN
		SET @result=0
		GOTO done
		END
	SET @c=@c+2
	END
done:
RETURN  case @result when 0 then 0
else 1 end
END
go
--5
select dbo.ISPRIME(13) as N'Isprime' go

CREATE function SearchMaxAndMin(@i1 float, @i2 float, @i3 float, @i4 float, @i5 float) 
returns nvarchar(max)
as
BEGIN
declare @min float
declare @max float
set @max=-1000000000
set @min=10000000000
 if(@i5>=@max)
begin
set @max=@i5
end
 if(@i4>=@max)
begin
set @max=@i4
end
 if(@i3>=@max)
begin
set @max=@i3
end
 if(@i2>=@max)
begin
set @max=@i2
end
 if(@i1>=@max)
begin
set @max=@i1
end


 if(@i5<=@min)
begin
set @min=@i5
end

 if(@i4<=@min)
begin
set @min=@i4
end

 if(@i3<=@min)
begin
set @min=@i3
end

 if(@i2<=@min)
begin
set @min=@i2
end

 if(@i1<=@min)
begin
set @min=@i1
end
return N'Max = '+convert(nvarchar(max),@max)+N', Min = '+convert(nvarchar(max),@min)

END
go
--6
select dbo.SearchMaxAndMin(2,12,11,4,9) as N'Max/min value' go



CREATE FUNCTION GetCheck (@min int, @max int, @check int)
RETURNS @result_table2 
TABLE(Result int) 
AS
BEGIN
declare @current int
declare @res int
set @current=@min
	while @current!=@max-1
		begin		
		set @res=@current%2
			if(@res=@check)
				begin 
				insert into @result_table2(Result) values (@current)  
				end		
		set @current=@current+1
		end
	return;
END
go

--7
select * from dbo.GetCheck(0,1000,1)  /*0 - parni, 1- neparni chisla  */



----1



