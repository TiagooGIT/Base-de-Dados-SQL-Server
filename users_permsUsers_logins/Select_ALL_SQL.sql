USE [ProjetoBD2]
GO
CREATE USER [Select_ALL_SQL] FOR LOGIN [Select_Data_User] WITH DEFAULT_SCHEMA=[Select_ALL_SQL_Schema]
GO
USE [ProjetoBD2]
GO
ALTER ROLE [db_datareader] ADD MEMBER [Select_ALL_SQL]
GO
USE [ProjetoBD2]
GO
CREATE USER []
GO
