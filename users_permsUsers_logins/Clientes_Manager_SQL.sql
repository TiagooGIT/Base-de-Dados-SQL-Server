USE [ProjetoBD2]
GO
CREATE USER [Clientes_Manager] FOR LOGIN [BD2\User3] WITH DEFAULT_SCHEMA=[Clientes_Manager_Schema]
GO
use [ProjetoBD2]
GO
GRANT ALTER ON [Clientes].[cliente] TO [Clientes_Manager]
GO
use [ProjetoBD2]
GO
GRANT CONTROL ON [Clientes].[cliente] TO [Clientes_Manager]
GO
use [ProjetoBD2]
GO
GRANT DELETE ON [Clientes].[cliente] TO [Clientes_Manager]
GO
use [ProjetoBD2]
GO
GRANT INSERT ON [Clientes].[cliente] TO [Clientes_Manager]
GO
use [ProjetoBD2]
GO
GRANT REFERENCES ON [Clientes].[cliente] TO [Clientes_Manager]
GO
use [ProjetoBD2]
GO
GRANT SELECT ON [Clientes].[cliente] TO [Clientes_Manager]
GO
use [ProjetoBD2]
GO
GRANT UPDATE ON [Clientes].[cliente] TO [Clientes_Manager]
GO
use [ProjetoBD2]
GO
GRANT VIEW CHANGE TRACKING ON [Clientes].[cliente] TO [Clientes_Manager]
GO
use [ProjetoBD2]
GO
GRANT VIEW DEFINITION ON [Clientes].[cliente] TO [Clientes_Manager]
GO
use [ProjetoBD2]
GO
GRANT ALTER ON [Clientes].[Utilizador] TO [Clientes_Manager]
GO
use [ProjetoBD2]
GO
GRANT CONTROL ON [Clientes].[Utilizador] TO [Clientes_Manager]
GO
use [ProjetoBD2]
GO
GRANT DELETE ON [Clientes].[Utilizador] TO [Clientes_Manager]
GO
use [ProjetoBD2]
GO
GRANT INSERT ON [Clientes].[Utilizador] TO [Clientes_Manager]
GO
use [ProjetoBD2]
GO
GRANT REFERENCES ON [Clientes].[Utilizador] TO [Clientes_Manager]
GO
use [ProjetoBD2]
GO
GRANT SELECT ON [Clientes].[Utilizador] TO [Clientes_Manager]
GO
use [ProjetoBD2]
GO
GRANT UPDATE ON [Clientes].[Utilizador] TO [Clientes_Manager]
GO
use [ProjetoBD2]
GO
GRANT VIEW CHANGE TRACKING ON [Clientes].[Utilizador] TO [Clientes_Manager]
GO
use [ProjetoBD2]
GO
GRANT VIEW DEFINITION ON [Clientes].[Utilizador] TO [Clientes_Manager]
GO
