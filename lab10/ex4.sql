create or alter trigger ex4 on database
    for alter_table
    as
    declare @columnName varchar(20) = EVENTDATA().value('(/EVENT_INSTANCE/AlterTableActionList/*/Columns/Name)[1]', 'nvarchar(max)')
    if @columnName ='Id_Disciplina'
    begin
        raiserror('Вы не можете изменять ID_Disciplina!', 16,1)
        rollback
    end
go
