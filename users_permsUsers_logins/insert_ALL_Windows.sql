USE [ProjetoBD2]
GO
CREATE USER [Insert_ALL] FOR LOGIN [BD2\Admin_InsertData] WITH DEFAULT_SCHEMA=[Insert_ALL_Schema]
GO
USE [ProjetoBD2]
GO
ALTER ROLE [db_datawriter] ADD MEMBER [Insert_ALL]
GO
USE [ProjetoBD2]
GO
CREATE USER []
GO
