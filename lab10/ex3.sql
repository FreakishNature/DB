create or alter trigger ex3 on studenti_reusita
instead of update as
begin
	declare @Id_Student int,@Id_Disciplina int,@Id_Profesor int,@Id_Grupa int,@Tip_Evaluare char(20),@Nota int,@Data_Evaluare date;
	declare c cursor for select * from inserted;
	open c
	fetch next from c
		into @Id_Student,@Id_Disciplina,@Id_Profesor,@Id_Grupa,@Tip_Evaluare,@Nota,@Data_Evaluare

	while @@FETCH_STATUS = 0
	begin

	update studenti_reusita set Data_Evaluare = @Data_Evaluare where @Data_Evaluare in (
		select Data_Evaluare from deleted where @Data_Evaluare is null and studenti_reusita.Id_Student = @Id_Student	
	)
 	
	fetch next from c
		into @Id_Student,@Id_Disciplina,@Id_Profesor,@Id_Grupa,@Tip_Evaluare,@Nota,@Data_Evaluare
	end

	close c
	deallocate c
end
go
update studenti_reusita set nota = 10 where nota = 5 and Id_Student = 100; 