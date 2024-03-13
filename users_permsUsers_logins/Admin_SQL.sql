USE [ProjetoBD2]
GO
CREATE USER [Admin_SQL] FOR LOGIN [Admin] WITH DEFAULT_SCHEMA=[Admin_SQL_Schema]
GO
USE [ProjetoBD2]
GO
ALTER ROLE [db_datareader] ADD MEMBER [Admin_SQL]
GO
USE [ProjetoBD2]
GO
ALTER ROLE [db_datawriter] ADD MEMBER [Admin_SQL]
GO
USE [ProjetoBD2]
GO
ALTER ROLE [db_ddladmin] ADD MEMBER [Admin_SQL]
GO
USE [ProjetoBD2]
GO
CREATE USER []
GO
