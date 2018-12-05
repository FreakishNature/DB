select  TOP(5) WITH TIES students_3.studenti.Nume_Student, students_3.studenti.Nume_Student , students_3.studenti.Prenume_Student , students_3.studenti_reusita.Nota
from students_3.studenti
join students_3.studenti_reusita on students_3.studenti.Id_Student = students_3.studenti_reusita.Id_Student
join plan_studii_4.discipline on plan_studii_4.discipline.Id_Disciplina = students_3.studenti_reusita.Id_Disciplina
where Tip_Evaluare = 'Testul 2' and Disciplina = 'Baze de date'
order by students_3.studenti_reusita.Nota desc
