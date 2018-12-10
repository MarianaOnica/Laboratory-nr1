--------------------------------Task 1
EXEC sp_addumpdevice 'DISK' ,'deviece1' ,'D:\My documents\Backup_lab11\exercitiul11.bak'
GO
BACKUP DATABASE universitatea2
to deviece1 with format, NAME = N'universitatea-Full Database Backup'
GO
--------------------------------Task 2
EXEC sp_addumpdevice 'DISK' ,'deviece2' ,'D:\My documents\Backup_lab11\exercitiul2.bak'
GO
BACKUP DATABASE universitatea2
to deviece2 with format, NAME = N'universitatea-Differential Database Backup'
GO
--------------------------------Task 3
EXEC sp_addumpdevice 'DISK' ,'deviece3' ,'D:\My documents\Backup_lab11\exercitiul3.bak'
GO
BACKUP DATABASE universitatea2
to deviece3 with format, NAME = N'universitatea-Transaction log Database Backup'
GO
--------------------------------Task 3
RESTORE DATABASE universitatea_labll from DISK ='D:\My documents\Backup_lab11\exercitiul11.bak' WITH replace;


