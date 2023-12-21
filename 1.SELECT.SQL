-- CRIANDO UMA TABELA :

CREATE TABLE logs(
id serial PRIMARY KEY,
usuario VARCHAR, 
descricao TEXT,
log_ts TIMESTAMP WITH TIME ZONE NOT NULL DEFAULT
current_timestamp);

-- SELECIONANDO VALORES NESTA TABELA: 
SELECT * FROM logs;

-- Criando duas tabelas: Uma de Alunos e a segunda de Notas: 
CREATE TABLE alunos(
id_aluno serial PRIMARY KEY, 
nome TEXT, 
serie TEXT);

CREATE TABLE notas(
id_nota serial PRIMARY KEY, 
id_aluno INT,
nota DECIMAL);

-- INSERINDO DADOS FICTICIOS EM UMA TABELA:

INSERT INTO alunos (id_aluno, nome, serie) VALUES (1,'Eduardo Silva','5ª Série');
INSERT INTO alunos (id_aluno, nome, serie) VALUES (2,'Carlos Magno','6ª Série');
INSERT INTO alunos (id_aluno, nome, serie) VALUES (3,'Amanda Silva','6ª Série');
INSERT INTO alunos (id_aluno, nome, serie) VALUES (4,'Rute Maria','5ª Série');
INSERT INTO alunos (id_aluno, nome, serie) VALUES (5,'Davi Sampaio','5ª Série');
INSERT INTO alunos (id_aluno, nome, serie) VALUES (6,'Monica Santos','6ª Série');
INSERT INTO alunos (id_aluno, nome, serie) VALUES (7,'Reginaldo Rossi','5ª Série');
INSERT INTO alunos (id_aluno, nome, serie) VALUES (8,'Ivan Lima','5ª Série');
INSERT INTO alunos (id_aluno, nome, serie) VALUES (9,'André Luis','6ª Série');
INSERT INTO alunos (id_aluno, nome, serie) VALUES (10,'Alan Kardec','5ª Série');

-- INSERINDO DADOS FICTICIOS EM UMA TABELA:

INSERT INTO notas (id_nota,id_aluno,nota) VALUES (1,1,9.0);
INSERT INTO notas (id_nota,id_aluno,nota) VALUES (2,2,10.0);
INSERT INTO notas (id_nota,id_aluno,nota) VALUES (3,3,6.0);
INSERT INTO notas (id_nota,id_aluno,nota) VALUES (4,4,7.5);
INSERT INTO notas (id_nota,id_aluno,nota) VALUES (5,5,8.0);
INSERT INTO notas (id_nota,id_aluno,nota) VALUES (6,6,5.0);
INSERT INTO notas (id_nota,id_aluno,nota) VALUES (7,7,10.0);
INSERT INTO notas (id_nota,id_aluno,nota) VALUES (9,9,9.0);
INSERT INTO notas (id_nota,id_aluno,nota) VALUES (10,10,7.0);
INSERT INTO notas (id_nota,id_aluno,nota) VALUES (11,11,10.0);

-- SELECIONANDO TODOS OS DADOS DE UMA TABELA:
SELECT * FROM alunos;
SELECT * FROM notas;

-- SELECIONANDO ALGUMAS COLUNAS DE UMA TABELA: 

SELECT nome, serie FROM alunos;

-- UTILIZANDO O WHERE PARA FILTRAR DADOS DE UMA TABELA:

-- EXEMPLO 01: 

SELECT * 
FROM alunos
WHERE nome = 'Eduardo Silva';

-- EXEMPLO 02: 

SELECT * 
FROM alunos
WHERE serie = '5ª Série';


-- UTILIZANDO OUTROS OPERADORES:
-- >= 8 , TRARÁ APENAS AS NOTAS QUE FOREM MAIORES OU IGUAIS A 8. 
SELECT * 
FROM notas
WHERE nota >= 8.0;

-- UTILIZANDO OUTROS OPERADORES:
-- <= 8 , TRARÁ APENAS AS NOTAS QUE FOREM MENORES OU IGUAIS A 8. 
SELECT * 
FROM notas
WHERE nota <= 8.0;

-- UTILIZANDO OUTROS OPERADORES:
-- <> 8 , TRARÁ APENAS AS NOTAS QUE FOREM DIFERENTES DE 8.  
SELECT * 
FROM notas
WHERE nota <> 8.0;

-- UTILIZANDO AND: O AND TRÁS OS RESULTANDOS QUANDO TODAS AS CONDIÇÕES FOREM VERDADEIRAS:

SELECT * 
FROM notas
WHERE nota = 8.0 AND id_aluno = '5';

-- UTILIZANDO O OR: O OR VAI TRAZER AS INFORMAÇÕES QUANDO UMA DAS CONDIÇÕES FOREM VERDADEIRAS:
SELECT * 
FROM notas
WHERE nota = 10.0 OR id_aluno = '11';

-- BETWEEN: VAI TRAZER UM INTERVALO DE CONDIÇÕES: NO EXEMPLO ABAIXO, ELE TRÁS TODOS OS EXEMPLOS ENTRE 8 E 10:

SELECT * 
FROM notas 
WHERE nota BETWEEN 8.0 and 10.0;

-- IN: O COMANDO IN PERMITE TRAZER MAIS DE UM VALOR EM UMA CONDIÇÃO:
SELECT * 
FROM alunos
WHERE id_aluno IN ('1','2','3','4');

-- LIKE: O LIKE PERMITE PROCURAR UMA INFORMAÇÃO CONHECENDO APENAS UMA PARTE DELA:

-- TODOS OS NOMES QUE TERMINAM COM SILVA:
SELECT * 
FROM alunos
WHERE nome LIKE ('%Silva');

-- TODOS OS NOMES QUE COMEÇAM COM A:
SELECT * 
FROM alunos
WHERE nome LIKE ('A%');

-- TODOS OS QUE POSSUEM AN NO MEIO:
SELECT * 
FROM alunos
WHERE nome LIKE ('%an%');

-- GROUP BY: VAI REALIZAR O AGRUPAMENTO DAS INFORMAÇÕES:
-- NO EXEMPLO ABAIXO, SELECIONAMOS A SERIE E O COUNT(*) PARA CONTAR TODOS OS ALUNOS,
-- EM SEGUIDA, UTILIZAMOS UM GROUP BY PARA AGRUPAR ESSAS INFORMAÇÕES, ASSIM, CONSEGUIMOS SABER QUANDOS ALUNOS
-- POR SÉRIE:

SELECT serie, COUNT(*)
FROM alunos
GROUP BY serie;

-- ORDE BY: COM ESTE METODO, CONSEGUIMOS ORDENAR NOSSAS INFORMAÇÕES:
-- CRESCENTE:
SELECT *
FROM alunos
ORDER BY nome;

-- DESCRESCENTE: 
SELECT *
FROM alunos
ORDER BY nome DESC;

-- MAX, COUNT, MIN 

-- MAX: TRÁS O VALOR MÁXIMO
-- COUNT: CONTA OS VALORES
-- MIN: TRÁS O VALOR MINIMO
-- SUM: SOMA OS VALORES

SELECT MAX(nota)
FROM notas;

SELECT MIN(nota)
FROM notas;

SELECT SUM(nota)
FROM notas;




