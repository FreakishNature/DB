create schema cadre_didactice_4
go
alter schema cadre_didactice_4 transfer cadre_didactice_3.profesori
go


create schema plan_studii_4
go
alter schema plan_studii_4 transfer plan_studii_3.orarul
go
alter schema plan_studii_4 transfer plan_studii_3.discipline

go
create schema students_3
go
alter schema students_3 transfer students_2.studenti
go
alter schema students_3 transfer students_2.studenti_reusita


