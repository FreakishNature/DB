EXEC sp_addumpdevice 'DISK','backup__lab11','E:\sql\backup\exercitiul1.bkp';
GO
BACKUP DATABASE universitatea
 TO DISK = 'E:\sql\backup\exercitiul1.bkp'
 WITH FORMAT,
 NAME = 'Full DB universitatea backup';
 GO