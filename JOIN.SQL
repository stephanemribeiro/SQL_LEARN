-- Em SQL, os JOINS são utilizados para combinar registros de duas ou mais tabelas com base em uma condição de relacionamento entre elas.

-- INNER JOIN: Retorna apenas os registros que têm correspondência em ambas as tabelas.

SELECT al.*, n.nota 
FROM alunos AS al 
INNER JOIN notas AS n 
ON n.id_aluno = al.id_aluno; 

-- LEFT JOIN: Retorna todos os registros da tabela à esquerda e os registros correspondentes da tabela à direita. 
-- Se não houver correspondência, os resultados da tabela à direita serão NULL.

SELECT al.*, n.nota 
FROM alunos AS al 
LEFT JOIN notas AS n 
ON n.id_aluno = al.id_aluno; 

-- RIGHT JOIN: Retorna todos os registros da tabela à direita e os registros correspondentes da tabela à esquerda. 
-- Se não houver correspondência, os resultados da tabela à esquerda serão NULL.

SELECT al.*, n.nota 
FROM alunos AS al 
RIGHT JOIN notas AS n 
ON n.id_aluno = al.id_aluno; 

--FULL JOIN: Retorna todos os registros quando há uma correspondência em uma das tabelas.
SELECT al.*, n.nota 
FROM alunos AS al 
FULL JOIN notas AS n 
ON n.id_aluno = al.id_aluno; 
