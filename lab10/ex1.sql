CREATE OR ALTER TRIGGER inregistrarea_noua ON orarul
 after  update
AS
BEGIN
SELECT '������  "'+ lower(discipline.Disciplina)+'" � ������ ' + CAST(grupe.Cod_Grupa as char(3)) +
	' � ���� ������ "' + CAST(inserted.Zi as char(3))  + 
	' �� ����� '+ CAST(inserted.Ora as varchar(5))+  ' �� �������� ' + CAST(deleted.Auditoriu as char(3)) +
    ' ����������� � ������� '+ CAST(inserted.Auditoriu as char(3)) + ' � ����� ' + CAST(inserted.Bloc as char) 
	FROM inserted 
    join discipline on inserted.Id_Disciplina=discipline.Id_Disciplina
	join deleted on deleted.Id_Disciplina=discipline.Id_Disciplina
	join grupe on grupe.Id_Grupa = inserted.Id_Grupa
END
GO

UPDATE orarul 
SET orarul.Auditoriu = 501
WHERE Auditoriu = 999;