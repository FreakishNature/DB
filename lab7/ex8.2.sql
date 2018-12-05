select  TOP(5) WITH TIES students_t.Nume_Student, students_t.Nume_Student , students_t.Prenume_Student , students_reusita_t.Nota
from students_t
join students_reusita_t on students_t.Id_Student = students_reusita_t.Id_Student
join plan_studii_4.discipline on plan_studii_4.discipline.Id_Disciplina = students_reusita_t.Id_Disciplina
where Tip_Evaluare = 'Testul 2' and Disciplina = 'Baze de date'
order by students_reusita_t.Nota desc
