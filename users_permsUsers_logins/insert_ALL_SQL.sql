USE [ProjetoBD2]
GO
CREATE USER [insert_ALL_SQL] FOR LOGIN [Insert_Data_User] WITH DEFAULT_SCHEMA=[insert_ALL_SQL_Schema]
GO
USE [ProjetoBD2]
GO
ALTER AUTHORIZATION ON SCHEMA::[db_datawriter] TO [insert_ALL_SQL]
GO
