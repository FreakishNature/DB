select distinct students_3.studenti.Nume_Student , students_3.studenti.Prenume_Student , profesori.Nume_Profesor,profesori.Prenume_Profesor 
from students_3.studenti
join students_3.studenti_reusita on students_3.studenti_reusita.Id_Student = students_3.studenti.Id_Student
join cadre_didactice_4.profesori on students_3.studenti_reusita.Id_Profesor = cadre_didactice_4.profesori.Id_Profesor
where students_3.studenti.Adresa_Postala_Student like '%str. 31 August%'