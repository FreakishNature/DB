CREATE OR ALTER TRIGGER inregistrarea_noua ON orarul
 after  update
AS
BEGIN
SELECT 'Лекция  "'+ lower(discipline.Disciplina)+'" у группы ' + CAST(grupe.Cod_Grupa as char(3)) +
	' в день недели "' + CAST(inserted.Zi as char(3))  + 
	' во время '+ CAST(inserted.Ora as varchar(5))+  ' из кабинета ' + CAST(deleted.Auditoriu as char(3)) +
    ' переносится в кабинет '+ CAST(inserted.Auditoriu as char(3)) + ' в блоке ' + CAST(inserted.Bloc as char) 
	FROM inserted 
    join discipline on inserted.Id_Disciplina=discipline.Id_Disciplina
	join deleted on deleted.Id_Disciplina=discipline.Id_Disciplina
	join grupe on grupe.Id_Grupa = inserted.Id_Grupa
END
GO

UPDATE orarul 
SET orarul.Auditoriu = 501
WHERE Auditoriu = 999;