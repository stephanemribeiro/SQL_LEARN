/* No PostgreSQL, o conceito de "auto incremento serial" refere-se à criação de uma coluna que 
é automaticamente preenchida com valores sequenciais únicos à medida que novos registros são 
inseridos em uma tabela. Essa funcionalidade é frequentemente usada para criar chaves 
primárias únicas em uma tabela.*/
CREATE TABLE frutas(
id SERIAL PRIMARY KEY,
nome TEXT);

INSERT INTO frutas (nome) 
VALUES 
('jaboticaba'),
('Maçã'),
('Mamão');

SELECT * FROM frutas;
