---------consutando tabela cliente---------------
select *from cliente

---------------inserindo cadastro cliente-------------------
insert into cliente(id_cliente,nome,telefone,logradouro,cidade,uf)
	Values(1,'Otoniel silva','65996112211','Jd.Florianopolis; Rua:20; quadra:70; casa: 15;','Cuiabá','MT'),
			(2,'Adão Bochimpani Jesus','(93) 96845-1929','Quadra Trinta e Seis,Centro','Ananindeua','PA'),
			(3,'Jhonne Furtunato Sampaio','(69) 98965-3540','Rua Oscarina Marques,Jardim dos Migrantes','Ji-Paraná','RO');
--------------------------------------------consulta tabela agencia ------------------------------------------------------------------------------
select *from agencia

--------------------------------------------iserindo dados na tabela------------------------------------------------------
insert into agencia(id_agencia,nome,cidade,uf)
	values (1,'nubank','Sao paulo','SP'),
			(2,'BB','CUIABA','MT'),
			(3,'itau','roondonopolis','mt');
------------------------------consultando tabela conta---------------------------------
select *from conta_corrente
---------------------------Povoando tabela conta_corrente------------------------------
insert into conta_corrente (id_conta_corrente,saldo,id_agencia,id_cliente)
	values
		----(01,'1050.00',01,01)--------
			---(02,2000,02,01),----
			(03,5000,3,01),
			(04,3550.345,1,2),
			(05,2030.50,1,3),
			(06,344.20,3,3);
------------------consulta emprestimo ---------
select *from emprestimo
------------------Povoando emprestimo-----------
--data de encerramento tem que ser maior que data de efetivacao------
insert into emprestimo(id_emprestimo,dt_efetivacao,valor,dt_encerramento,id_conta_corrente)
	values (1,'22/11/2001',2000,'3/11/2002',1),
			(2,'23/12/2005',4350.30,'5/11/2010',2),
			(3,'24/01/2015',333.30,'23/05/2015',3),
			(4,'30/12/2020', 500.50, '01/01/2021',1),
			(5,'01/01/2022', 3600, '03/02/1999',2),
			(6,'01/01/2022', 3600, '03/02/1999',3);
------------------consultando duas tabelas-----------------------------------------
select cliente.nome, conta_corrente.id_conta_corrente
from cliente,conta_corrente
where cliente.id_cliente=conta_corrente.id_cliente
order by 1,2;
-----------------consulta com tres tabelas------------------
select cliente.nome, Conta_corrente.id_conta_corrente, agencia.nome
from cliente,conta_corrente,agencia
where cliente.id_cliente=conta_corrente.id_cliente and conta_corrente.id_agencia=agencia.id_agencia
order by 1,2;


