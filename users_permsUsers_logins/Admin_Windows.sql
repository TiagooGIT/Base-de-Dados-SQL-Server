USE [ProjetoBD2]
GO
CREATE USER [Administrator] FOR LOGIN [BD2\ADMIN] WITH DEFAULT_SCHEMA=[AdminSchema]
GO
USE [ProjetoBD2]
GO
ALTER AUTHORIZATION ON SCHEMA::[Avaliacoes] TO [Administrator]
GO
USE [ProjetoBD2]
GO
ALTER AUTHORIZATION ON SCHEMA::[Clientes] TO [Administrator]
GO
USE [ProjetoBD2]
GO
ALTER AUTHORIZATION ON SCHEMA::[Propriedades] TO [Administrator]
GO
USE [ProjetoBD2]
GO
ALTER AUTHORIZATION ON SCHEMA::[Reservas] TO [Administrator]
GO
USE [ProjetoBD2]
GO
ALTER ROLE [db_datareader] ADD MEMBER [Administrator]
GO
USE [ProjetoBD2]
GO
ALTER ROLE [db_datawriter] ADD MEMBER [Administrator]
GO
USE [ProjetoBD2]
GO
ALTER ROLE [db_ddladmin] ADD MEMBER [Administrator]
GO
USE [ProjetoBD2]
GO
CREATE USER []
GO
