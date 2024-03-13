Create database ProjetoBD2

ON PRIMARY
(
	NAME= BD2_Data1,
	FILENAME = 'R:\Primary\BD2_Data1.mdf',
	SIZE = 20MB,
	FILEGROWTH = 10%
),

(
	NAME = BD2_Data2,
	FILENAME = 'R:\Primary\BD2_Data2.ndf',
	SIZE = 10MB,
	FILEGROWTH = 10%
),

FILEGROUP  Reservas
(
	NAME = BD2_Data3,
	FILENAME = 'R:\Reservas\BD2_Data3.ndf',
	SIZE = 20MB,
	FILEGROWTH = 10%
),
(
	NAME = BD2_Data4,
	FILENAME = 'R:\Reservas\BD2_Data4.ndf',
	SIZE = 10MB,
	FILEGROWTH = 10%
),

FILEGROUP  Propriedades
(
	NAME = BD2_Data5,
	FILENAME = 'R:\Propriedades\BD2_Data5.ndf',
	SIZE = 20MB,
	FILEGROWTH = 10%
),
(
	NAME = BD2_Data6,
	FILENAME = 'R:\Propriedades\BD2_Data6.ndf',
	SIZE = 10MB,
	FILEGROWTH = 10%
),

FILEGROUP  Avaliacoes
(
	NAME = BD2_Data7,
	FILENAME = 'R:\Avaliacoes\BD2_Data7.ndf',
	SIZE = 10MB,
	FILEGROWTH = 10%
),
(
	NAME = BD2_Data8,
	FILENAME = 'R:\Avaliacoes\BD2_Data8.ndf',
	SIZE = 10MB,
	FILEGROWTH = 10%
),

FILEGROUP Clientes
(
	NAME = BD2_Data9,
	FILENAME = 'R:\Clientes\BD2_Data9.ndf',
	SIZE = 20MB,
	FILEGROWTH = 10%
),
(
	NAME = BD2_Data10,
	FILENAME = 'R:\Clientes\BD2_Data10.ndf',
	SIZE = 10MB,
	FILEGROWTH = 10%
),

FILEGROUP Indices
(
	NAME = BD2_Data11,
	FILENAME = 'R:\Indices\BD2_Data11.ndf',
	SIZE = 25MB,
	FILEGROWTH = 15%
)
LOG ON
(
	NAME = BD2_Log,
	FILENAME = 'R:\Logs\BD2_Log.ldf',
	SIZE = 10MB,
	FILEGROWTH = 10%
),
(
	NAME = BD2_Log2,
	FILENAME = 'R:\Logs\BD2_Log2.ldf',
	SIZE = 10MB,
	FILEGROWTH = 10%
);
GO


use ProjetoBD2
GO

CREATE SCHEMA Propriedades
CREATE SCHEMA Reservas
CREATE SCHEMA Clientes
CREATE SCHEMA Avaliacoes

use ProjetoBD2
GO


CREATE TABLE Reservas.Taxas (
ID_Taxa smallint primary key,
Taxa_Aplicada Decimal
)ON Reservas;

CREATE TABLE Reservas.Metodos_Pagamento (
ID_Metodo_Pagamento smallint primary key,
metodo_pagagamento varchar(50)
)ON Reservas;

CREATE TABLE Propriedades.Continente (
ID_continente smallint primary key,
continente varchar(60)
)ON Propriedades;

CREATE TABLE Propriedades.Country (
ID_country smallint primary key,
country varchar(60),
ID_continente SMALLINT NOT NULL,
FOREIGN KEY (ID_continente)
REFERENCES Propriedades.Continente (ID_continente)
on update cascade
on delete cascade
)ON Propriedades;


CREATE TABLE Propriedades.Localizacao (
ID_localizacao smallint primary key,
nome_cidade varchar(60),
cod_postal varchar(60),
morada varchar(60),
ID_country SMALLINT NOT NULL,
FOREIGN KEY (ID_country)
REFERENCES Propriedades.Country (ID_country)
on update cascade
on delete cascade,
)ON Propriedades;

CREATE TABLE Propriedades.Tipos_Propriedades (
ID_Tipos_Propriedades smallint primary key,
tipo_propriedade varchar(60),
descricao varchar(60)
)ON Propriedades;

CREATE TABLE Propriedades.Dono_Propriedade (
ID_Dono_Propriedade smallint primary key,
nome varchar(60),
idade int 
)ON Propriedades;

CREATE TABLE Propriedades.media (
ID_media smallint primary key,
descricao varchar(60),
fotos varchar(60), 
videos varchar(60) 
)ON Propriedades;



Create table Propriedades.Propriedades (
ID_propriedades smallint primary key,
nome_propriedade varchar(60),
descrição varchar(60),
preco money,
Disponibilidade bit,
wc int,
quartos int,
camas int,
cama_tipo varchar(60),
tipo_casa varchar(60),
arcondicionado int,
internet bit ,
tv int,
publicacao_criada dateTime,
publicacao_atualizada dateTime,


ID_Tipos_Propriedades SMALLINT NOT NULL,
FOREIGN KEY (ID_Tipos_Propriedades)
REFERENCES Propriedades.Tipos_Propriedades (ID_Tipos_Propriedades)
on update cascade
on delete cascade,

ID_localizacao smallint not null,
foreign key (ID_localizacao)
references Propriedades.Localizacao (ID_localizacao)
on update cascade
on delete cascade,

ID_media smallint not null,
foreign key (ID_media)
references Propriedades.media (ID_media)
on update cascade
on delete cascade,

ID_Dono_Propriedade smallint not null,
foreign key (ID_Dono_Propriedade)
references Propriedades.Dono_Propriedade (ID_Dono_Propriedade)
on update cascade
on delete cascade

)ON Propriedades;

Create table Reservas.Estado_Reserva (
ID_Estado_Reserva smallint primary key,
descricao varchar(60),
estado_reserva varchar(60)
)ON Reservas;


Create table Reservas.Reservas (
ID_Reserva smallint primary key,
inicio_data dateTime,
fim_data dateTime,
preco_total money,
criado_quando dateTime ,
atualizada_quando dateTime, 

ID_Estado_Reserva smallint not null,
foreign key (ID_Estado_Reserva)
references Reservas.Estado_Reserva (ID_Estado_Reserva)
on update cascade
on delete cascade,

ID_Propriedades smallint not null,
foreign key (ID_Propriedades)
references Propriedades.Propriedades (ID_Propriedades)
on update cascade
on delete cascade,

ID_Taxa smallint not null,
foreign key (ID_Taxa)
references Reservas.Taxas (ID_Taxa)
on update cascade
on delete cascade


)ON Reservas;


Create table Clientes.cliente (
ID_cliente smallint primary key,
primeiro_nome varchar(60),
ultimo_nome varchar(60),
nome_completo varchar(60)
)ON Clientes;

Create table Clientes.Utilizador (
ID_user smallint primary key,
user_nick varchar(60),
email varchar(60),
pa$$word varchar(60),
criado_quando dateTime,
contacto_telefonico varchar(60),
descricao varchar(60),
imagem_perfil varchar(60),

ID_cliente smallint not null,
foreign key (ID_cliente)
references Clientes.cliente (ID_cliente)
on update cascade
on delete cascade,
)ON Clientes;

Create table Reservas.Eventos_Reserva (
ID_Eventos_Reserva smallint primary key,
pagamento_inicial money,
pagamento_total_executado bit,
pagamento_cancelado bit,
data_pagamento_cobrança dateTime,
data_pagamento_total datetime,


ID_Reserva smallint not null,
foreign key (ID_Reserva)
references Reservas.Reservas (ID_Reserva)
on update cascade
on delete cascade,

ID_user smallint not null,
foreign key (ID_user)
references Clientes.Utilizador (ID_user)
on update cascade
on delete cascade,  

ID_Metodo_Pagamento smallint not null,
foreign key (ID_Metodo_Pagamento)
references Reservas.Metodos_Pagamento (ID_Metodo_Pagamento)
on update cascade
on delete cascade


)ON Reservas;

Create table Avaliacoes.Avaliacao_Propriedade (
ID_avaliacao smallint primary key,
descricao varchar(60),
pontuacao int ,



ID_user smallint not null,
foreign key (ID_user)
references Clientes.Utilizador (ID_user)
on update cascade
on delete cascade,

ID_propriedades smallint not null,
foreign key (ID_propriedades)
references Propriedades.Propriedades (ID_propriedades)
on update cascade
on delete cascade
)ON Avaliacoes;

Create table Avaliacoes.Avaliacao_Dono (
ID_avaliacao_dono smallint primary key,
descricao varchar(60),
pontuacao int ,



ID_Dono_Propriedade smallint not null,
foreign key (ID_Dono_Propriedade)
references Propriedades.Dono_Propriedade (ID_Dono_Propriedade)
on update cascade
on delete cascade,

ID_user smallint not null,
foreign key (ID_user)
references Clientes.Utilizador (ID_user)
on update cascade
on delete cascade
)ON Avaliacoes;



create nonclustered INDEX ID_Cliente_Index ON Clientes.Utilizador (ID_cliente) on Indices
create nonclustered INDEX Nomes_Index ON Clientes.cliente (primeiro_nome,ultimo_nome) on Indices
create nonclustered INDEX Propriedades ON Reservas.Reservas (ID_Propriedades) on Indices
create nonclustered INDEX preco_nome ON Propriedades.Propriedades (nome_propriedade,preco) on Indices


INSERT INTO Reservas.Eventos_Reserva
VALUES (3,NULL,0,0,2002-01-15,2002-01-16,	2,	2);

select * from Reservas.Reservas
select * from Propriedades.Propriedades
select * from Reservas.Eventos_Reserva


BACKUP DATABASE [ProjetoBD2] TO DISK = N'E:\Backups\ProjetoBD2_full_20296.bak'
WITH NOFORMAT, NOINIT, NAME = N'ProjetoBD2- Full Database Backup non encrypted',
SKIP, NOREWIND, NOUNLOAD, STATS = 10
GO

-- backup Differencial
BACKUP DATABASE [ProjetoBD2] TO  DISK = N'E:\Backups\ProjetoBD2_diffteste.bak' 
WITH  DIFFERENTIAL , NOFORMAT, NOINIT,  NAME = N'ProjetoBD2-diff Database Backup', SKIP, NOREWIND, NOUNLOAD,  STATS = 10, CHECKSUM
GO

-- Backup Log
BACKUP LOG [ProjetoBD2] TO DISK = N'E:\Backups\ProjetoBD2_logteste.bak'
WITH NOFORMAT, NOINIT, NAME = N'Backup_Restore-Trasaction Log Backup',
SKIP, NOREWIND, NOUNLOAD, STATS = 10
GO

--encrypted backup
use master;
GO

CREATE MASTER KEY
	ENCRYPTION BY PASSWORD = 'Pa$$w0rd'
GO

CREATE CERTIFICATE ProjetoBD2Cert
	WITH SUBJECT = 'SQL-BD2 self-signed backup'
GO

BACKUP DATABASE ProjetoBD2
	TO DISK = N'E:\Backups\ProjetoBD2_EncryptedV5.bak'
	with
	Encryption (
		Algorithm = AES_256,
		SERVER CERTIFICATE = ProjetoBD2Cert
	);
GO

BACKUP CERTIFICATE ProjetoBD2Cert
	TO FILE = N'R:\Backups\ProjetoBD2Cert.bak'
GO

RESTORE DATABASE ProjetoBD2
	FROM DISK = N'E:\Backups\ProjetoBD2_Encrypted.bak'
GO	



create procedure All_Clientes
as (select * from Clientes.cliente)

create procedure All_Reservas
as (select * from Reservas.Reservas)

create procedure All_Propriedades
as ( Select * from Propriedades.Propriedades)

create procedure All_Eventos_Cobranca
as ( Select * from Reservas.Eventos_Pagamento)

use ProjetoBD2
GO

create procedure All_Reservas_Verao
as (select * from Reservas.Reservas where inicio_data between '2023/06/01' and '2023/10/01')

create procedure All_Reservas_Inverno
as (select * from Reservas.Reservas where inicio_data between '2022/06/01' and '2023/05/31')



exec All_Clientes
exec All_Propriedades
exec All_Reservas
exec All_Eventos_Cobranca
exec All_Reservas_Verao
exec All_Reservas_Inverno


-- id = 1 - taxa hj
-- id = 2 - taxa verao
-- id = 3 - taxa inverno
-- id = 4 - taxa poshj




CREATE TRIGGER Reservas_Incorreta -- RESERVA N PODE SER FEITA
ON Reservas.Reservas
AFTER INSERT AS
declare @data_inicial date
declare @converte_data_sistema date
declare @ultimoID_valor_reservas smallint

set @ultimoID_valor_reservas = (SELECT MAX(ID_Reserva) FROM Reservas) 
set @data_inicial = (SELECT inicio_data from Reservas where ID_Reserva=@ultimoID_valor_reservas)
set @converte_data_sistema = (select convert(date, GETDATE()))


IF  @data_inicial < @converte_data_sistema 
	BEGIN
		Print 'A data introduzida esta incorreta'
		 rollback transaction
	END;


SELECT * FROM Propriedades.Propriedades
select * from Reservas.Reservas
SELECT *FROM Reservas.Taxas
INSERT INTO Reservas.Reservas
VALUES (1002,'2023-06-28','2023-06-30',NULL,'2002-01-15','2002-01-16',	1,1,3);

-- id = 1 - taxa hj
-- id = 2 - taxa verao
-- id = 3 - taxa inverno
-- id = 4 - taxa poshj




CREATE TRIGGER reservas_full --  RESERVA DIA DE HJ
ON Reservas.Reservas
AFTER INSERT AS
declare @data_inicial date
declare @converte_data_sistema date
declare @ultimoID_valor_reservas smallint
declare @return_countDays_entre2datas int
declare @taxa1 decimal(19,4)
declare @taxa3 decimal(19,4)
declare @taxa2 decimal(19,4)
declare @taxa4 decimal(19,4)

set @taxa2 = (Select Taxa_Aplicada from Taxas where ID_Taxa=2)
set @taxa1 = (Select Taxa_Aplicada from Taxas where ID_Taxa=1)
set @taxa3 = (Select Taxa_Aplicada from Taxas where ID_Taxa=3)
set @taxa4 = (Select Taxa_Aplicada from Taxas where ID_Taxa=4)
set @ultimoID_valor_reservas = (SELECT MAX(ID_Reserva) FROM Reservas) 
set @data_inicial = (SELECT inicio_data from Reservas where ID_Reserva=@ultimoID_valor_reservas)
set @converte_data_sistema = (select convert(date, GETDATE()))
set @return_countDays_entre2datas = (select DATEDIFF(day,  inicio_data, fim_data) from Reservas where ID_Reserva= @ultimoID_valor_reservas)

IF  @data_inicial > @converte_data_sistema AND (@data_inicial < '2023-06-01' OR @data_inicial > '2023-10-01')
	BEGIN
		 UPDATE Reservas
		SET preco_total = (((select preco from Propriedades.Propriedades WHERE ID_propriedades = Reservas.ID_propriedades) *@taxa4)*@taxa3) * @return_countDays_entre2datas
		WHERE Reservas.ID_Reserva = @ultimoID_valor_reservas
	END;

ELSE IF  @data_inicial > @converte_data_sistema AND (@data_inicial > '2023-06-01' OR @data_inicial < '2023-10-01')
	BEGIN
		 UPDATE Reservas
		SET preco_total = (((select preco from Propriedades.Propriedades WHERE ID_propriedades = Reservas.ID_propriedades) *@taxa4)*@taxa2) * @return_countDays_entre2datas
		WHERE Reservas.ID_Reserva = @ultimoID_valor_reservas
	END;

ELSE	IF  @data_inicial = @converte_data_sistema AND (@data_inicial < '2023-06-01' OR @data_inicial > '2023-10-01')
	BEGIN
		 UPDATE Reservas
		SET preco_total = (((select preco from Propriedades.Propriedades WHERE ID_propriedades = Reservas.ID_propriedades) *@taxa1)*@taxa3) * @return_countDays_entre2datas
		WHERE Reservas.ID_Reserva = @ultimoID_valor_reservas
	END;

	ELSE  
	BEGIN
		 UPDATE Reservas
		SET preco_total = (((select preco from Propriedades.Propriedades WHERE ID_propriedades = Reservas.ID_propriedades) *@taxa1)*@taxa2) * @return_countDays_entre2datas
		WHERE Reservas.ID_Reserva = @ultimoID_valor_reservas
	END;
*/


SELECT * FROM Propriedades.Propriedades
select * from Reservas.Reservas
SELECT *FROM Reservas.Taxas
INSERT INTO Reservas.Reservas
VALUES (1007,'2023-05-28','2023-05-30',NULL,'2002-01-15','2002-01-16',	1,1,1);




CREATE TRIGGER Reserva_Data_Incorretav2 --  RESERVA DIA DE HJ
ON Reservas.Reservas
AFTER INSERT AS
declare @fim_dataa date
declare @converte_data_sistema date
declare @ultimoID_valor_reservas smallint

set @ultimoID_valor_reservas = (SELECT MAX(ID_Reserva) FROM Reservas) 
set @fim_dataa = (SELECT fim_data from Reservas where ID_Reserva=@ultimoID_valor_reservas)
set @converte_data_sistema = (select convert(date, GETDATE()))


IF  @fim_dataa < @converte_data_sistema 
	BEGIN
		Print 'A data introduzida esta incorreta1'
		 rollback transaction
	END;

CREATE TRIGGER Reserva_Data_Incorretav3 --  RESERVA DIA DE HJ
ON Reservas.Reservas
AFTER INSERT AS
declare @fim_dataa date
declare @converte_data_sistema date
declare @ultimoID_valor_reservas smallint
declare @data_inicial date
set @ultimoID_valor_reservas = (SELECT MAX(ID_Reserva) FROM Reservas) 
set @fim_dataa = (SELECT fim_data from Reservas where ID_Reserva=@ultimoID_valor_reservas)
set @converte_data_sistema = (select convert(date, GETDATE()))
set @data_inicial = (SELECT inicio_data from Reservas where ID_Reserva=@ultimoID_valor_reservas)

IF  @fim_dataa < @data_inicial 
	BEGIN
		Print 'A data introduzida esta incorreta1'
		 rollback transaction
	END;


CREATE TRIGGER Eventos_Reserva_cobranca
ON Reservas.Eventos_Reserva
AFTER INSERT AS
declare @looo int
set @looo = (SELECT MAX(ID_Reserva) FROM Reservas) 

UPDATE Reservas.Eventos_Reserva
SET pagamento_inicial = (select preco_total from Reservas.Reservas WHERE ID_Reserva = Eventos_Reserva.ID_Reserva) * 0.10
WHERE Eventos_Reserva.ID_Eventos_Reserva = ID_Reserva
print 'O pagamento inicial da reserva foi atualizado';


-- testes nao funcionais

CREATE TRIGGER DISPONIBILIDADEv2 --qs perfeito
ON Reservas.Reservas
after insert as 
declare @ultimoID_valor_reservas smallint
set @ultimoID_valor_reservas = (SELECT MAX(ID_Reserva) FROM Reservas) 
UPDATE Propriedades.Propriedades
set Disponibilidade = 0 where ID_propriedades=(select ID_propriedades from Reservas where ID_propriedades=@ultimoID_valor_reservas)


create trigger testeDISP -- trigger para por disp a 0 (n ta perfeito)
ON Reservas
after insert as

declare @looo int
declare @lo int

set @looo = (SELECT MAX(ID_Reserva) FROM Reservas) 
 
set @lo = (Select ID_propriedades FROM Reservas where ID_Reserva=@looo)

if @lo = (select ID_Propriedades FROM Propriedades group by ID_Propriedade)
	Begin
	UPDATE Propriedades
		set teste = 0
		
	end



insert into Reservas.Eventos_Reserva
values (25,null,0,0,'2022-12-01','2022-12-01',25,1,1)

select * from Reservas.Eventos_Reserva
SELECT * FROM Reservas.Reservas




UPDATE Reservas
SET precototal = (select preco from Propriedades WHERE ID_propriedades = Reservas.ID_propriedades)

CREATE TRIGGER teste4
ON Eventos_Reserva
AFTER INSERT AS
UPDATE Eventos_Reserva
SET pagamento_inicial = (select precototal from Reservas WHERE ID_Reserva = Eventos_Reserva.ID_Reserva) * 40
print 'O preço total da reserva foi atualizado';


SELECT * FROM Reservas
Select * from Eventos_Reserva






















































