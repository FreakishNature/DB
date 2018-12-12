create or alter trigger ex5 on database
for create_table, alter_table, drop_table
as
begin
	set nocount on
	declare @currentTime time
	set @currentTime = convert(time, getdate())
	if @currentTime < convert(time, '08:00:00') or @currentTime > convert(time, '20:00:00') 
	begin
		raiserror('Вы не можете работать с базой данных вне рабочее время.', 16,1)
		rollback
	end
end
go
create table NewDB(id int)