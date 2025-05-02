-- Geração de Modelo físico
-- Sql ANSI 2003 - brModelo.



CREATE TABLE Funcionario (
ID_Funcionario Integer PRIMARY KEY,
Nome Varchar(100),
CPF Char(11),
Sexo Char(1),
Telefone Varchar(15),
Endereco Varchar(100),
DT_Admissao Date,
Funcao Varchar(100),
Matricula Varchar(10),
ID_Departamento Integer
)

CREATE TABLE Departamento (
ID_Departamento Integer PRIMARY KEY,
Nome varchar(100),
Responsavel Varchar(100),
Sigla varchar(10)
)

ALTER TABLE Funcionario ADD FOREIGN KEY(ID_Departamento) REFERENCES Departamento (ID_Departamento)
