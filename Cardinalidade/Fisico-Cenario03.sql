-- Geração de Modelo físico
-- Sql ANSI 2003 - brModelo.



CREATE TABLE Agencia (
ID_Agencia Integer PRIMARY KEY,
Nome Varchar(100),
Cidade Varchar(100),
UF Char(2)
)

CREATE TABLE Emprestimo (
ID_Emprestimo Integer PRIMARY KEY,
Valor Numeric(7,2),
DT_Efetivacao Date,
DT_Encerramento Date,
ID_Conta_Corrente Integer
)

CREATE TABLE Conta_Corrente (
ID_Conta_Corrente Integer PRIMARY KEY,
Saldo Numeric(7,2),
ID_Agencia Integer,
ID_Cliente Integer,
FOREIGN KEY(ID_Agencia) REFERENCES Agencia (ID_Agencia)
)

CREATE TABLE Cliente (
ID_Cliente Integer PRIMARY KEY,
Telefone Varchar(15),
UF Char(2),
Logradouro Varchar(100),
Cidade Varchar(100),
Nome Varchar(100)
)

ALTER TABLE Emprestimo ADD FOREIGN KEY(ID_Conta_Corrente) REFERENCES Conta_Corrente (ID_Conta_Corrente)
ALTER TABLE Conta_Corrente ADD FOREIGN KEY(ID_Cliente) REFERENCES Cliente (ID_Cliente)
