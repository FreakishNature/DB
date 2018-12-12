create or alter trigger ex2 on studenti
after insert 
as
begin
	declare c cursor for select Id_Student from inserted
	OPEN c  
	declare @currentId int

	FETCH NEXT FROM c   
	INTO @currentId 
	while @@FETCH_STATUS = 0
	begin
		if @currentId + 1 = ( select max(Id_Student) from studenti )
		begin
			INSERT INTO studenti_reusita(Id_Disciplina, Id_Grupa,Id_Student,Id_Profesor,Data_Evaluare,Tip_Evaluare,Nota) 
			VALUES (101,2,@currentId,105,'2018-12-01','Testul 3',8);
		end
		else
		begin	
			raiserror('ID студента не является последовательным.', 16,1)
			rollback
		end
	FETCH NEXT FROM c   
	INTO @currentId 	
	end
	CLOSE c;  
	DEALLOCATE c;  
end
go
insert into studenti (Id_Student,Nume_Student, Prenume_Student) values (206,'test4','student4')

--drop trigger ens_my_suffering