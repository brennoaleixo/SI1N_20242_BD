
------------------------------------------------------------------------------------------------------------------------------------------------
INSERT INTO FORNECEDORES (ID_FORN, TELEFONE_FORN, CONTATO_FORN, PRODUTO_FORN, DESC_PROD_FORN) VALUES
(1, 11987654321, 'Pessoa A', 'Categoria A', 'Descrição do Produto A'),
(2, 21987654321, 'Pessoa B', 'Categoria B', 'Descrição do Produto B'),
(3, 31987654321, 'Pessoa C', 'Categoria C', 'Descrição do Produto C'),
(4, 41987654321, 'Pessoa D', 'Categoria D', 'Descrição do Produto D'),
(5, 51987654321, 'Pessoa E', 'Categoria E', 'Descrição do Produto E');

------------------------------------------------------------------------------------------------------------------------------------------------
INSERT INTO PRODUTOS (ID_PROD, NOME_PROD, DIMENSOES_PROD, VALOR_PROD, DISP_PROD, PROD_FORNC_FORNECEDOR, COR_PROD) VALUES
(1, 'Produto A', 15, 2000, 'SIM', 'Pessoa A', 'Preto'),
(2, 'Produto B', 80, 350, 'SIM', 'Pessoa B', 'Branco'),
(3, 'Produto C', 50, 100, 'SIM', 'Pessoa C', 'Azul'),
(4, 'Produto D', 25, 60, 'SIM', 'Pessoa D', 'Rosa'),
(5, 'Produto E', 40, 500, 'SIM', 'Pessoa E', 'Amarelo');

------------------------------------------------------------------------------------------------------------------------------------------------
INSERT INTO CLIENTES (CPF_CLIENTE, NOME_CLIENTE, NASC_CLIENTE, STATUS_CLIENTE, RUA_CLIENTE, NUM_CLIENTE, BAIRRO_CLIENTE, CIDADE_CLIENTE, ESTADO_CLIENTE, PAIS_CLIENTE, EMAIL) VALUES
(12345678901, 'Pessoa A', '1990-05-20', 'SIM', 'Rua A', 10, 'Bairro A', 'Cidade A', 'Estado A', 'País A', 'emailA@email.com'),
(23456789012, 'Pessoa B', '1985-10-10', 'SIM', 'Rua B', 20, 'Bairro B', 'Cidade B', 'Estado B', 'País B', 'emailB@email.com'),
(34567890123, 'Pessoa C', '2000-01-15', 'NÃO', 'Rua C', 30, 'Bairro C', 'Cidade C', 'Estado C', 'País C', 'emailC@email.com'),
(45678901234, 'Pessoa D', '1995-08-25', 'SIM', 'Rua D', 40, 'Bairro D', 'Cidade D', 'Estado D', 'País D', 'emailD@email.com'),
(56789012345, 'Pessoa E', '1988-03-10', 'SIM', 'Rua E', 50, 'Bairro E', 'Cidade E', 'Estado E', 'País E', 'emailE@email.com');

------------------------------------------------------------------------------------------------------------------------------------------------
INSERT INTO ESTOQUE (ID_ESTOQUE, PROD_ESTOQUE, LOC_PROD_ESTOQUE, QNT_PROD_ESTOQUE, PROD_DISP_ESTOQUE) VALUES
(1, 'Produto A', 'Depósito A', 50, 50),
(2, 'Produto B', 'Depósito B', 30, 30),
(3, 'Produto C', 'Depósito C', 100, 100),
(4, 'Produto D', 'Depósito D', 200, 200),
(5, 'Produto E', 'Depósito E', 20, 20);

------------------------------------------------------------------------------------------------------------------------------------------------
INSERT INTO VENDA (ID_VENDA, PROD_VENDA, QNT_PROD_VENDA, PAGAMENTO_VENDA, CLIENTE_VENDA, DATA_VENDA) VALUES
(1, 'Produto A', 2, 'Cartão de Crédito', 12345678901, '2024-11-15'),
(2, 'Produto B', 5, 'Boleto', 23456789012, '2024-11-16'),
(3, 'Produto C', 1, 'Pix', 34567890123, '2024-11-17'),
(4, 'Produto D', 3, 'Dinheiro', 45678901234, '2024-11-18'),
(5, 'Produto E', 1, 'Cartão de Crédito', 56789012345, '2024-11-19');

------------------------------------------------------------------------------------------------------------------------------------------------
INSERT INTO PAGAMENTOS (ID_PAGAMENTO, CLIENTE_PAGAMENTO, DATA_PAGAMENTO, VALOR_TOTAL_PAGAMENTO, STATUS_PAGAMENTO, ID_CLIENTE) VALUES
(1, 12345678901, '2024-11-15', 4000, 'PAGO', 12345678901),
(2, 23456789012, '2024-11-16', 500, 'PENDENTE', 23456789012),
(3, 34567890123, '2024-11-17', 350, 'PAGO', 34567890123),
(4, 45678901234, '2024-11-18', 180, 'PAGO', 45678901234),
(5, 56789012345, '2024-11-19', 500, 'PENDENTE', 56789012345);

-- UPDATE
UPDATE FORNECEDORES SET TELEFONE_FORN = 11999999999 WHERE ID_FORN = 1;
UPDATE FORNECEDORES SET CONTATO_FORN = 'Pessoa F' WHERE ID_FORN = 4;

UPDATE PRODUTOS SET VALOR_PROD = 1900 WHERE ID_PROD = 1;
UPDATE PRODUTOS SET DISP_PROD = 'NAO' WHERE ID_PROD = 5;

UPDATE CLIENTES SET STATUS_CLIENTE = 'NÃO' WHERE CPF_CLIENTE = 34567890123;
UPDATE CLIENTES SET EMAIL = 'emailNovoE@email.com' WHERE CPF_CLIENTE = 56789012345;

UPDATE ESTOQUE SET QNT_PROD_ESTOQUE = 45 WHERE ID_ESTOQUE = 1;
UPDATE ESTOQUE SET LOC_PROD_ESTOQUE = 'Depósito Principal' WHERE ID_ESTOQUE = 2;

UPDATE VENDA SET QNT_PROD_VENDA = 3 WHERE ID_VENDA = 1;
UPDATE VENDA SET PAGAMENTO_VENDA = 'Boleto' WHERE ID_VENDA = 5;

UPDATE PAGAMENTOS SET STATUS_PAGAMENTO = 'PAGO' WHERE ID_PAGAMENTO = 2;
UPDATE PAGAMENTOS SET VALOR_TOTAL_PAGAMENTO = 450 WHERE ID_PAGAMENTO = 3;

-- Delete
DELETE FROM FORNECEDORES WHERE ID_FORN = 5;
DELETE FROM PRODUTOS WHERE ID_PROD = 5;
DELETE FROM CLIENTES WHERE CPF_CLIENTE = 34567890123;
DELETE FROM ESTOQUE WHERE ID_ESTOQUE = 5;
DELETE FROM VENDA WHERE ID_VENDA = 5;
DELETE FROM PAGAMENTOS WHERE ID_PAGAMENTO = 5;
