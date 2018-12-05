select distinct students_t.Nume_Student , students_t.Prenume_Student , profesori_t2.Nume_Profesor,profesori_t2.Prenume_Profesor 
from students_t
join students_reusita_t on students_reusita_t.Id_Student = students_t.Id_Student
join profesori_t2 on students_reusita_t.Id_Profesor = profesori_t2.Id_Profesor
where students_t.Adresa_Postala_Student like '%str. 31 August%'