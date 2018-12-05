alter table grupe add Sef_grupa int 
alter table grupe add Prof_Inrudator int 

DECLARE c1 CURSOR FOR 
SELECT id_grupa FROM grupe 

DECLARE @gid int
        ,@sid int
        ,@pid int

OPEN c1
FETCH NEXT FROM c1 into @gid 
WHILE @@FETCH_STATUS = 0
BEGIN
 SELECT TOP 1 @sid=id_student
   FROM studenti_reusita
   WHERE id_grupa = @gid and Id_Student NOT IN (SELECT isnull(sef_grupa,'') FROM grupe)
   GROUP BY id_student
   ORDER BY avg(cast(studenti_reusita.Nota as float)) DESC

 SELECT TOP 1 @pid=id_profesor
      FROM studenti_reusita
      WHERE id_grupa = @gid AND Id_profesor NOT IN (SELECT isnull (Prof_Inrudator, '') FROM grupe)
      GROUP BY id_profesor
      ORDER BY count (DISTINCT id_disciplina) DESC, id_profesor
 
 UPDATE grupe
    SET   Sef_grupa = @sid
      ,Prof_Inrudator = @pid
  WHERE Id_Grupa=@gid
 
 FETCH NEXT FROM c1 into @gid 
END
CLOSE c1
DEALLOCATE c1

alter table grupe add constraint ExistSef unique (Sef_grupa)
alter table grupe add constraint ExistProfIntrudactor unique (Sef_grupa)
