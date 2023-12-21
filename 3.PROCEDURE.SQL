-- CRIAR TABELA TESTE: 
CREATE TABLE movimentos_financeiros ( 
id SERIAL PRIMARY KEY, 
nome varchar(100),
cpf varchar(11),
movimento varchar(4),
origem varchar(5),
saldo decimal);

-- INSERIR OS DADOS DA TABELA 2X(OU MAIS), MAS DEIXAR ALGUM DADOS APENAS 1X PARA TESTE. 

insert into movimentos_financeiros(nome,cpf,movimento,origem,saldo) values
('Ana Marcia',03598556874,'BAIX','RECBD',52000),
('Mauro Caio',12345678956,'PAGM','RECBD',5000),
('Júlia Drummond',03598745612,'PAGM','RECBD',52000),
('Mauro Caio',12345678959,'PAGM','RECBD',25000),
('Sergio Ribeiro',10256598758,'BAIX','RECBD',52000),
('Mauro Caio',12345678956,'PAGM','RECBD',6000),
('Mauro Caio',12345678985,'PAGM','RECBD',9000);
('Murilo Nobre',12345678945,'PAGM','RECBD',9000)
('Paulo Andrade',12345678895,'PAGM','RECBD',9000)

-- VERIFICANDO OS DADOS 
SELECT * FROM movimentos_financeiros;

-- CRIANDO A PROCEDURE: 

CREATE OR REPLACE PROCEDURE transacoes_financeiras()
LANGUAGE plpgsql 
AS $procedure$ 
DECLARE
BEGIN 
 	-- CRIANDO UMA TABELA TEMPORARIA: 
	DROP TABLE IF EXISTS __contas_dup_baix;
    CREATE temporary TABLE __contas_dup_baix AS 
	SELECT MAX(id) AS max_id
    FROM movimentos_financeiros
    GROUP BY cpf;
	-- NO SELECT ACIMA, SELECIONAMOS OS MÁXIMOS ID DE CADA REGISTRO DA TABELA ORIGINAL
	-- AQUI, VAMOS DELETAR OS REGISTROS QUE NÃO CONSTAM NA TABELA TEMPORÁRIA, OU SEJA, REPETIDOS. 
    DELETE FROM movimentos_financeiros 
    WHERE id NOT IN (SELECT max_id FROM __contas_dup_baix);
	
END $procedure$;
CALL transacoes_financeiras();


SELECT * FROM movimentos_financeiros;
