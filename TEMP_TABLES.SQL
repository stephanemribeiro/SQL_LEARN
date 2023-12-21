-- Iniciar uma transação
BEGIN;

-- Criar ou usar uma tabela temporária para armazenar usuários temporários
CREATE TEMP TABLE IF NOT EXISTS temp_users (
    pk SERIAL PRIMARY KEY,
    username TEXT NOT NULL,
    email TEXT NOT NULL
)ON COMMIT DROP;

-- Inserir dados na tabela temporária
INSERT INTO temp_users (username, email) VALUES 
    ('Sarah Andrews', 'sarahand@gmail.com'),
    ('Dudu Carmago', 'duducamrgo@gmail.com'),
    ('Nete Simons', 'netesimons@gmail.com'),
    ('Alex Carmago', 'alex@gmail.com');

	
-- Selecionar e exibir os dados da tabela temporária
SELECT * FROM temp_users;

-- Confirmar as alterações na transação
COMMIT;


-- Tentar selecionar novamente após o COMMIT resultará em um erro, 
-- pois a tabela temporária não existe mais fora da transação.