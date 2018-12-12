RESTORE DATABASE [universitatea] 
  FROM  DISK = N'E:\sql\backup\exercitiul1.bkp' 
  WITH  FILE = 1,  MOVE N'universitatea' TO N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\calculatoare_lab10.mdf',  
  MOVE N'universitatea_log' TO N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\calculatoare_lab10_log.ldf',  
  NORECOVERY,  NOUNLOAD,  REPLACE,  STATS = 10
GO
RESTORE DATABASE [universitatea] 
  FROM  DISK = N'E:\sql\backup\exercitiul2.bkp' 
  WITH  FILE = 1,  MOVE N'universitatea' TO N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\calculatoare_lab10.mdf',  
  MOVE N'universitatea_log' TO N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\calculatoare_lab10_log.ldf',  
  NORECOVERY,  NOUNLOAD,  REPLACE,  STATS = 10
GO
 RESTORE LOG [universitatea]  
 FROM  DISK = N'E:\sql\backup\exercitiul03.bkp' 
 WITH  FILE = 1,  NOUNLOAD,  STATS = 10
GO