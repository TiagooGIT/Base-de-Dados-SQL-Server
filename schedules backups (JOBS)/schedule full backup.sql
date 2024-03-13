USE [msdb]
GO
DECLARE @jobId BINARY(16)
EXEC  msdb.dbo.sp_add_job @job_name=N'Backups_full2disks', 
		@enabled=1, 
		@notify_level_eventlog=0, 
		@notify_level_email=2, 
		@notify_level_page=2, 
		@delete_level=0, 
		@category_name=N'[Uncategorized (Local)]', 
		@owner_login_name=N'BD2\tiago', @job_id = @jobId OUTPUT
select @jobId
GO
EXEC msdb.dbo.sp_add_jobserver @job_name=N'Backups_full2disks', @server_name = N'BD2'
GO
USE [msdb]
GO
EXEC msdb.dbo.sp_add_jobstep @job_name=N'Backups_full2disks', @step_name=N'backups_full_2disks', 
		@step_id=1, 
		@cmdexec_success_code=0, 
		@on_success_action=1, 
		@on_fail_action=2, 
		@retry_attempts=0, 
		@retry_interval=0, 
		@os_run_priority=0, @subsystem=N'TSQL', 
		@command=N'BACKUP DATABASE [ProjetoBD2] TO DISK = N''E:\Backups\ProjetoBD2_fulltbackup.bak''
WITH NOFORMAT, NOINIT, NAME = N''ProjetoBD2- Full Database Backup non encrypted'',
SKIP, NOREWIND, NOUNLOAD, STATS = 10
GO


BACKUP DATABASE [ProjetoBD2] TO DISK = N''R:\Backups\ProjetoBD2_fullbackup.bak''
WITH NOFORMAT, NOINIT, NAME = N''ProjetoBD2- Full Database Backup non encrypted'',
SKIP, NOREWIND, NOUNLOAD, STATS = 10
GO', 
		@database_name=N'ProjetoBD2', 
		@flags=0
GO
USE [msdb]
GO
EXEC msdb.dbo.sp_update_job @job_name=N'Backups_full2disks', 
		@enabled=1, 
		@start_step_id=1, 
		@notify_level_eventlog=0, 
		@notify_level_email=2, 
		@notify_level_page=2, 
		@delete_level=0, 
		@description=N'', 
		@category_name=N'[Uncategorized (Local)]', 
		@owner_login_name=N'BD2\tiago', 
		@notify_email_operator_name=N'', 
		@notify_page_operator_name=N''
GO
USE [msdb]
GO
DECLARE @schedule_id int
EXEC msdb.dbo.sp_add_jobschedule @job_name=N'Backups_full2disks', @name=N'backups full', 
		@enabled=1, 
		@freq_type=4, 
		@freq_interval=1, 
		@freq_subday_type=1, 
		@freq_subday_interval=0, 
		@freq_relative_interval=0, 
		@freq_recurrence_factor=1, 
		@active_start_date=20230115, 
		@active_end_date=99991231, 
		@active_start_time=30000, 
		@active_end_time=235959, @schedule_id = @schedule_id OUTPUT
select @schedule_id
GO
