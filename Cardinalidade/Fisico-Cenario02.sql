-- Geração de Modelo físico
-- Sql ANSI 2003 - brModelo.



CREATE TABLE Medico (
Id_Medico Integer PRIMARY KEY,
Nome Varchar(100),
DT_Nascimento Date,
sexo Char(1),
Telefone Varchar(15),
Endereco Varchar(100),
CRM Varchar(15),
Especialidade Varchar(100)
)

CREATE TABLE Consulta (
ID_Consulta Integer PRIMARY KEY,
DT_Consulta Date,
Localizacao Varchar(100),
HR_Consulta char(t),
Prescricao Varchar(100),
Pedido_Exame Varchar(100),
Diagnostico Varchar(100),
ID_Paciente Integer,
Id_Medico Integer,
FOREIGN KEY(Id_Medico) REFERENCES Medico (Id_Medico)
)

CREATE TABLE Paciente (
ID_Paciente Integer PRIMARY KEY,
Nome Varchar(100),
CPF char(11),
RG Char(10),
DT_Nascimento Date,
Sexo Char(1),
Telefone Varchar(15),
Email Varchar(100),
Endereco Varchar(100)
)

ALTER TABLE Consulta ADD FOREIGN KEY(ID_Paciente) REFERENCES Paciente (ID_Paciente)
