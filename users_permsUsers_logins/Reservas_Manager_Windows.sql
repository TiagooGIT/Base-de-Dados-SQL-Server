USE [ProjetoBD2]
GO
CREATE USER [Reservas_Manager] FOR LOGIN [BD2\User1] WITH DEFAULT_SCHEMA=[Reservas_Manager_Schema]
GO
use [ProjetoBD2]
GO
GRANT SELECT ON [Propriedades].[Tipos_Propriedades] TO [Reservas_Manager]
GO
use [ProjetoBD2]
GO
GRANT ALTER ON [Reservas].[Metodos_Pagamento] TO [Reservas_Manager]
GO
use [ProjetoBD2]
GO
GRANT CONTROL ON [Reservas].[Metodos_Pagamento] TO [Reservas_Manager]
GO
use [ProjetoBD2]
GO
GRANT DELETE ON [Reservas].[Metodos_Pagamento] TO [Reservas_Manager]
GO
use [ProjetoBD2]
GO
GRANT INSERT ON [Reservas].[Metodos_Pagamento] TO [Reservas_Manager]
GO
use [ProjetoBD2]
GO
GRANT REFERENCES ON [Reservas].[Metodos_Pagamento] TO [Reservas_Manager]
GO
use [ProjetoBD2]
GO
GRANT SELECT ON [Reservas].[Metodos_Pagamento] TO [Reservas_Manager]
GO
use [ProjetoBD2]
GO
GRANT UPDATE ON [Reservas].[Metodos_Pagamento] TO [Reservas_Manager]
GO
use [ProjetoBD2]
GO
GRANT VIEW CHANGE TRACKING ON [Reservas].[Metodos_Pagamento] TO [Reservas_Manager]
GO
use [ProjetoBD2]
GO
GRANT VIEW DEFINITION ON [Reservas].[Metodos_Pagamento] TO [Reservas_Manager]
GO
use [ProjetoBD2]
GO
GRANT SELECT ON [Avaliacoes].[Avaliacao_Dono] TO [Reservas_Manager]
GO
use [ProjetoBD2]
GO
GRANT ALTER ON [Reservas].[Eventos_Reserva] TO [Reservas_Manager]
GO
use [ProjetoBD2]
GO
GRANT CONTROL ON [Reservas].[Eventos_Reserva] TO [Reservas_Manager]
GO
use [ProjetoBD2]
GO
GRANT DELETE ON [Reservas].[Eventos_Reserva] TO [Reservas_Manager]
GO
use [ProjetoBD2]
GO
GRANT INSERT ON [Reservas].[Eventos_Reserva] TO [Reservas_Manager]
GO
use [ProjetoBD2]
GO
GRANT REFERENCES ON [Reservas].[Eventos_Reserva] TO [Reservas_Manager]
GO
use [ProjetoBD2]
GO
GRANT SELECT ON [Reservas].[Eventos_Reserva] TO [Reservas_Manager]
GO
use [ProjetoBD2]
GO
GRANT UPDATE ON [Reservas].[Eventos_Reserva] TO [Reservas_Manager]
GO
use [ProjetoBD2]
GO
GRANT VIEW CHANGE TRACKING ON [Reservas].[Eventos_Reserva] TO [Reservas_Manager]
GO
use [ProjetoBD2]
GO
GRANT VIEW DEFINITION ON [Reservas].[Eventos_Reserva] TO [Reservas_Manager]
GO
use [ProjetoBD2]
GO
GRANT SELECT ON [Propriedades].[Localizacao] TO [Reservas_Manager]
GO
use [ProjetoBD2]
GO
GRANT ALTER ON [Reservas].[Reservas] TO [Reservas_Manager]
GO
use [ProjetoBD2]
GO
GRANT CONTROL ON [Reservas].[Reservas] TO [Reservas_Manager]
GO
use [ProjetoBD2]
GO
GRANT DELETE ON [Reservas].[Reservas] TO [Reservas_Manager]
GO
use [ProjetoBD2]
GO
GRANT INSERT ON [Reservas].[Reservas] TO [Reservas_Manager]
GO
use [ProjetoBD2]
GO
GRANT REFERENCES ON [Reservas].[Reservas] TO [Reservas_Manager]
GO
use [ProjetoBD2]
GO
GRANT SELECT ON [Reservas].[Reservas] TO [Reservas_Manager]
GO
use [ProjetoBD2]
GO
GRANT UPDATE ON [Reservas].[Reservas] TO [Reservas_Manager]
GO
use [ProjetoBD2]
GO
GRANT VIEW CHANGE TRACKING ON [Reservas].[Reservas] TO [Reservas_Manager]
GO
use [ProjetoBD2]
GO
GRANT VIEW DEFINITION ON [Reservas].[Reservas] TO [Reservas_Manager]
GO
use [ProjetoBD2]
GO
GRANT SELECT ON [Avaliacoes].[Avaliacao_Propriedade] TO [Reservas_Manager]
GO
use [ProjetoBD2]
GO
GRANT SELECT ON [Clientes].[Utilizador] TO [Reservas_Manager]
GO
use [ProjetoBD2]
GO
GRANT ALTER ON [Reservas].[Taxas] TO [Reservas_Manager]
GO
use [ProjetoBD2]
GO
GRANT CONTROL ON [Reservas].[Taxas] TO [Reservas_Manager]
GO
use [ProjetoBD2]
GO
GRANT DELETE ON [Reservas].[Taxas] TO [Reservas_Manager]
GO
use [ProjetoBD2]
GO
GRANT INSERT ON [Reservas].[Taxas] TO [Reservas_Manager]
GO
use [ProjetoBD2]
GO
GRANT REFERENCES ON [Reservas].[Taxas] TO [Reservas_Manager]
GO
use [ProjetoBD2]
GO
GRANT SELECT ON [Reservas].[Taxas] TO [Reservas_Manager]
GO
use [ProjetoBD2]
GO
GRANT UPDATE ON [Reservas].[Taxas] TO [Reservas_Manager]
GO
use [ProjetoBD2]
GO
GRANT VIEW CHANGE TRACKING ON [Reservas].[Taxas] TO [Reservas_Manager]
GO
use [ProjetoBD2]
GO
GRANT VIEW DEFINITION ON [Reservas].[Taxas] TO [Reservas_Manager]
GO
use [ProjetoBD2]
GO
GRANT SELECT ON [Propriedades].[media] TO [Reservas_Manager]
GO
use [ProjetoBD2]
GO
GRANT SELECT ON [Clientes].[cliente] TO [Reservas_Manager]
GO
use [ProjetoBD2]
GO
GRANT ALTER ON [Reservas].[Estado_Reserva] TO [Reservas_Manager]
GO
use [ProjetoBD2]
GO
GRANT CONTROL ON [Reservas].[Estado_Reserva] TO [Reservas_Manager]
GO
use [ProjetoBD2]
GO
GRANT DELETE ON [Reservas].[Estado_Reserva] TO [Reservas_Manager]
GO
use [ProjetoBD2]
GO
GRANT INSERT ON [Reservas].[Estado_Reserva] TO [Reservas_Manager]
GO
use [ProjetoBD2]
GO
GRANT REFERENCES ON [Reservas].[Estado_Reserva] TO [Reservas_Manager]
GO
use [ProjetoBD2]
GO
GRANT SELECT ON [Reservas].[Estado_Reserva] TO [Reservas_Manager]
GO
use [ProjetoBD2]
GO
GRANT UPDATE ON [Reservas].[Estado_Reserva] TO [Reservas_Manager]
GO
use [ProjetoBD2]
GO
GRANT VIEW CHANGE TRACKING ON [Reservas].[Estado_Reserva] TO [Reservas_Manager]
GO
use [ProjetoBD2]
GO
GRANT VIEW DEFINITION ON [Reservas].[Estado_Reserva] TO [Reservas_Manager]
GO
use [ProjetoBD2]
GO
GRANT SELECT ON [Propriedades].[Propriedades] TO [Reservas_Manager]
GO
use [ProjetoBD2]
GO
GRANT SELECT ON [Propriedades].[Continente] TO [Reservas_Manager]
GO
use [ProjetoBD2]
GO
GRANT SELECT ON [Propriedades].[Country] TO [Reservas_Manager]
GO
use [ProjetoBD2]
GO
GRANT SELECT ON [Propriedades].[Dono_Propriedade] TO [Reservas_Manager]
GO
