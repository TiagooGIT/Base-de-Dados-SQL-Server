USE [ProjetoBD2]
GO
CREATE USER [Select_ALL] FOR LOGIN [BD2\Admin_Only_Select] WITH DEFAULT_SCHEMA=[Select_ALL_Schema]
GO
USE [ProjetoBD2]
GO
ALTER ROLE [db_datareader] ADD MEMBER [Select_ALL]
GO
