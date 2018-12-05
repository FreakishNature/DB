SELECT Id_Profesor,
        Nume_Profesor,
        Prenume_Profesor,
        Adresa_Postala_Profesor AS Localitate,
        substring(Adresa_Postala_Profesor, charindex('str.', Adresa_Postala_Profesor), 15) AS Adresa_1,
        substring(Adresa_Postala_Profesor, patindex('%[0-9]%', Adresa_Postala_Profesor), 5) AS Adresa_2
 into profesori_new
FROM profesori

alter table profesori_new
add default 'Mun. Chisinau' for Localitate;
alter table profesori_new
add constraint Id_Profesor primary key clustered (Id_Profesor);