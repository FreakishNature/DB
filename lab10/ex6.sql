CREATE or alter TRIGGER ex6 ON DATABASE
FOR ALTER_TABLE
AS
begin
	DECLARE @Column_name varchar(100)
	DECLARE @userCommand varchar(100)
	DECLARE @replacedCommand varchar(100)
	DECLARE @tableName varchar(100)
	
	set @Column_name=EVENTDATA().value('(/EVENT_INSTANCE/AlterTableActionList/*/Columns/Name)[1]','nvarchar(max)')
	
	if @Column_name = 'Id_Profesor'
	begin

		set @userCommand= EVENTDATA().value('(/EVENT_INSTANCE/TSQLCommand/CommandText)[1]','nvarchar(max)')
		set @tableName = EVENTDATA().value('(/EVENT_INSTANCE/ObjectName)[1]','nvarchar(max)')

		set @replacedCommand = REPLACE(@userCommand, @tableName, 'studenti_reusita');
		EXECUTE (@replacedCommand)

		set @replacedCommand = REPLACE(@userCommand, @tableName, 'grupe');
		EXECUTE (@replacedCommand)

		set @replacedCommand = REPLACE(@userCommand, @tableName, 'profesori');
		EXECUTE (@replacedCommand)

	end
end