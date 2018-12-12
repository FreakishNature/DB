USE universitatea;
GO
BACKUP DATABASE universitatea
TO DISK = 'E:\sql\backup\exercitiul2.bkp'
WITH DIFFERENTIAL,
NAME = 'Differential DB universitatea backup';
GO