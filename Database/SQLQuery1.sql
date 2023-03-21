create proc crudoperation_sp
@StudentID int, 
@StudentName nvarchar(50),
@Gender nvarchar(50),
@Hobby nvarchar(50),
@DateOfBirth datetime
as
begin
Insert into crudoperation_tab (StudentID,StudentName,Gender,Hobby,DateOfBirth)
values (@StudentID,@StudentName,@Gender,@Hobby,@DateOfBirth)
end


create proc crudoperationlist_sp

as
begin
select * from crudoperation_tab 
end

exec crudoperationlist_sp



create proc crudoperationupdate_sp
@StudentID int, 
@StudentName nvarchar(50),
@Gender nvarchar(50),
@Hobby nvarchar(50),
@DateOfBirth datetime
as
begin
update crudoperation_tab set StudentName=@StudentName,Gender=@Gender,Hobby=@Hobby,DateOfBirth=@DateOfBirth where StudentID=@StudentID
end


create proc crudoperationdelete_sp
@StudentID int
as
begin
delete crudoperation_tab where StudentID=@StudentID
end


create proc crudoperationsearch_sp
@StudentID int
as
begin
select * from crudoperation_tab where StudentID=@StudentID
end


create proc crudoperationget_sp
@StudentID int
as
begin
select * from crudoperation_tab where StudentID=@StudentID
end

create proc crudoperationascending_sp
@StudentID int
as
begin
select * from crudoperation_tab ORDER BY StudentID ASC;
end

create proc crudoperationdescending_sp
@StudentID int
as
begin
select * from crudoperation_tab ORDER BY StudentID DESC;
end