USE [ProjetoBD2]
GO
CREATE USER [Propriedades_Manager] FOR LOGIN [BD2\User2] WITH DEFAULT_SCHEMA=[Propriedades_Manager_Schema]
GO
use [ProjetoBD2]
GO
GRANT ALTER ON [Propriedades].[Country] TO [Propriedades_Manager]
GO
use [ProjetoBD2]
GO
GRANT CONTROL ON [Propriedades].[Country] TO [Propriedades_Manager]
GO
use [ProjetoBD2]
GO
GRANT DELETE ON [Propriedades].[Country] TO [Propriedades_Manager]
GO
use [ProjetoBD2]
GO
GRANT INSERT ON [Propriedades].[Country] TO [Propriedades_Manager]
GO
use [ProjetoBD2]
GO
GRANT REFERENCES ON [Propriedades].[Country] TO [Propriedades_Manager]
GO
use [ProjetoBD2]
GO
GRANT SELECT ON [Propriedades].[Country] TO [Propriedades_Manager]
GO
use [ProjetoBD2]
GO
GRANT UPDATE ON [Propriedades].[Country] TO [Propriedades_Manager]
GO
use [ProjetoBD2]
GO
GRANT VIEW CHANGE TRACKING ON [Propriedades].[Country] TO [Propriedades_Manager]
GO
use [ProjetoBD2]
GO
GRANT VIEW DEFINITION ON [Propriedades].[Country] TO [Propriedades_Manager]
GO
use [ProjetoBD2]
GO
GRANT ALTER ON [Propriedades].[media] TO [Propriedades_Manager]
GO
use [ProjetoBD2]
GO
GRANT CONTROL ON [Propriedades].[media] TO [Propriedades_Manager]
GO
use [ProjetoBD2]
GO
GRANT DELETE ON [Propriedades].[media] TO [Propriedades_Manager]
GO
use [ProjetoBD2]
GO
GRANT INSERT ON [Propriedades].[media] TO [Propriedades_Manager]
GO
use [ProjetoBD2]
GO
GRANT REFERENCES ON [Propriedades].[media] TO [Propriedades_Manager]
GO
use [ProjetoBD2]
GO
GRANT SELECT ON [Propriedades].[media] TO [Propriedades_Manager]
GO
use [ProjetoBD2]
GO
GRANT UPDATE ON [Propriedades].[media] TO [Propriedades_Manager]
GO
use [ProjetoBD2]
GO
GRANT VIEW CHANGE TRACKING ON [Propriedades].[media] TO [Propriedades_Manager]
GO
use [ProjetoBD2]
GO
GRANT VIEW DEFINITION ON [Propriedades].[media] TO [Propriedades_Manager]
GO
use [ProjetoBD2]
GO
GRANT SELECT ON [Avaliacoes].[Avaliacao_Dono] TO [Propriedades_Manager]
GO
use [ProjetoBD2]
GO
GRANT ALTER ON [Propriedades].[Localizacao] TO [Propriedades_Manager]
GO
use [ProjetoBD2]
GO
GRANT CONTROL ON [Propriedades].[Localizacao] TO [Propriedades_Manager]
GO
use [ProjetoBD2]
GO
GRANT DELETE ON [Propriedades].[Localizacao] TO [Propriedades_Manager]
GO
use [ProjetoBD2]
GO
GRANT INSERT ON [Propriedades].[Localizacao] TO [Propriedades_Manager]
GO
use [ProjetoBD2]
GO
GRANT REFERENCES ON [Propriedades].[Localizacao] TO [Propriedades_Manager]
GO
use [ProjetoBD2]
GO
GRANT SELECT ON [Propriedades].[Localizacao] TO [Propriedades_Manager]
GO
use [ProjetoBD2]
GO
GRANT UPDATE ON [Propriedades].[Localizacao] TO [Propriedades_Manager]
GO
use [ProjetoBD2]
GO
GRANT VIEW CHANGE TRACKING ON [Propriedades].[Localizacao] TO [Propriedades_Manager]
GO
use [ProjetoBD2]
GO
GRANT VIEW DEFINITION ON [Propriedades].[Localizacao] TO [Propriedades_Manager]
GO
use [ProjetoBD2]
GO
GRANT ALTER ON [Propriedades].[Continente] TO [Propriedades_Manager]
GO
use [ProjetoBD2]
GO
GRANT CONTROL ON [Propriedades].[Continente] TO [Propriedades_Manager]
GO
use [ProjetoBD2]
GO
GRANT DELETE ON [Propriedades].[Continente] TO [Propriedades_Manager]
GO
use [ProjetoBD2]
GO
GRANT INSERT ON [Propriedades].[Continente] TO [Propriedades_Manager]
GO
use [ProjetoBD2]
GO
GRANT REFERENCES ON [Propriedades].[Continente] TO [Propriedades_Manager]
GO
use [ProjetoBD2]
GO
GRANT SELECT ON [Propriedades].[Continente] TO [Propriedades_Manager]
GO
use [ProjetoBD2]
GO
GRANT UPDATE ON [Propriedades].[Continente] TO [Propriedades_Manager]
GO
use [ProjetoBD2]
GO
GRANT VIEW CHANGE TRACKING ON [Propriedades].[Continente] TO [Propriedades_Manager]
GO
use [ProjetoBD2]
GO
GRANT VIEW DEFINITION ON [Propriedades].[Continente] TO [Propriedades_Manager]
GO
use [ProjetoBD2]
GO
GRANT SELECT ON [Avaliacoes].[Avaliacao_Propriedade] TO [Propriedades_Manager]
GO
use [ProjetoBD2]
GO
GRANT ALTER ON [Propriedades].[Propriedades] TO [Propriedades_Manager]
GO
use [ProjetoBD2]
GO
GRANT CONTROL ON [Propriedades].[Propriedades] TO [Propriedades_Manager]
GO
use [ProjetoBD2]
GO
GRANT DELETE ON [Propriedades].[Propriedades] TO [Propriedades_Manager]
GO
use [ProjetoBD2]
GO
GRANT INSERT ON [Propriedades].[Propriedades] TO [Propriedades_Manager]
GO
use [ProjetoBD2]
GO
GRANT REFERENCES ON [Propriedades].[Propriedades] TO [Propriedades_Manager]
GO
use [ProjetoBD2]
GO
GRANT SELECT ON [Propriedades].[Propriedades] TO [Propriedades_Manager]
GO
use [ProjetoBD2]
GO
GRANT UPDATE ON [Propriedades].[Propriedades] TO [Propriedades_Manager]
GO
use [ProjetoBD2]
GO
GRANT VIEW CHANGE TRACKING ON [Propriedades].[Propriedades] TO [Propriedades_Manager]
GO
use [ProjetoBD2]
GO
GRANT VIEW DEFINITION ON [Propriedades].[Propriedades] TO [Propriedades_Manager]
GO
use [ProjetoBD2]
GO
GRANT ALTER ON [Propriedades].[Dono_Propriedade] TO [Propriedades_Manager]
GO
use [ProjetoBD2]
GO
GRANT CONTROL ON [Propriedades].[Dono_Propriedade] TO [Propriedades_Manager]
GO
use [ProjetoBD2]
GO
GRANT DELETE ON [Propriedades].[Dono_Propriedade] TO [Propriedades_Manager]
GO
use [ProjetoBD2]
GO
GRANT INSERT ON [Propriedades].[Dono_Propriedade] TO [Propriedades_Manager]
GO
use [ProjetoBD2]
GO
GRANT REFERENCES ON [Propriedades].[Dono_Propriedade] TO [Propriedades_Manager]
GO
use [ProjetoBD2]
GO
GRANT SELECT ON [Propriedades].[Dono_Propriedade] TO [Propriedades_Manager]
GO
use [ProjetoBD2]
GO
GRANT UPDATE ON [Propriedades].[Dono_Propriedade] TO [Propriedades_Manager]
GO
use [ProjetoBD2]
GO
GRANT VIEW CHANGE TRACKING ON [Propriedades].[Dono_Propriedade] TO [Propriedades_Manager]
GO
use [ProjetoBD2]
GO
GRANT VIEW DEFINITION ON [Propriedades].[Dono_Propriedade] TO [Propriedades_Manager]
GO
use [ProjetoBD2]
GO
GRANT ALTER ON [Propriedades].[Tipos_Propriedades] TO [Propriedades_Manager]
GO
use [ProjetoBD2]
GO
GRANT CONTROL ON [Propriedades].[Tipos_Propriedades] TO [Propriedades_Manager]
GO
use [ProjetoBD2]
GO
GRANT DELETE ON [Propriedades].[Tipos_Propriedades] TO [Propriedades_Manager]
GO
use [ProjetoBD2]
GO
GRANT INSERT ON [Propriedades].[Tipos_Propriedades] TO [Propriedades_Manager]
GO
use [ProjetoBD2]
GO
GRANT REFERENCES ON [Propriedades].[Tipos_Propriedades] TO [Propriedades_Manager]
GO
use [ProjetoBD2]
GO
GRANT SELECT ON [Propriedades].[Tipos_Propriedades] TO [Propriedades_Manager]
GO
use [ProjetoBD2]
GO
GRANT UPDATE ON [Propriedades].[Tipos_Propriedades] TO [Propriedades_Manager]
GO
use [ProjetoBD2]
GO
GRANT VIEW CHANGE TRACKING ON [Propriedades].[Tipos_Propriedades] TO [Propriedades_Manager]
GO
use [ProjetoBD2]
GO
GRANT VIEW DEFINITION ON [Propriedades].[Tipos_Propriedades] TO [Propriedades_Manager]
GO
