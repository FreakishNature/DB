update studenti_reusita
set Nota = Nota + 1
where studenti_reusita.Id_Student in ( select grupe.Sef_grupa
										from grupe) and Nota < 10