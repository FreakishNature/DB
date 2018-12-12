USE master;
GO
EXEC sp_addumpdevice 'DISK','backup_log_1',
'E:\sql\backup\Desktop\exercitiul03.bkp';
GO
BACKUP LOG universitatea
TO DISK = 'E:\sql\backup\exercitiul03.bkp';
GO