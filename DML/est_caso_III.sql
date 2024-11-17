-- Active: 1730295332111@@127.0.0.1@3306@est_caso_iii


------------------------------------------------------------------------------------------------------------------------------------------------
INSERT INTO TIPO_TEL (ID_TEL, NOME_TEL) VALUES
(1, 'Telefone Móvel'),
(2, 'Telefone Fixo');

------------------------------------------------------------------------------------------------------------------------------------------------
INSERT INTO TELEFONES (NUM_TELEFONE, TIPO_TELEFONE) VALUES
(123456789, 1),
(987654321, 2);

------------------------------------------------------------------------------------------------------------------------------------------------
INSERT INTO TIPO_END (ID_TIPO) VALUES
(1),
(2);

-------------------------------------------------------------------------------------------------------------------------------------------------
INSERT INTO ENDERECO (ID_END, RUA_END, BAIRRO_END, NUM_END, CIDADE_END, ESTADO_END, TIPO_ENDERECO, PAIS_END) VALUES
(1, 'Rua A', 'Bairro A', 10, 'Cidade A', 'Estado A', 1, 'País A'),
(2, 'Rua B', 'Bairro B', 20, 'Cidade B', 'Estado B', 2, 'País B');

-------------------------------------------------------------------------------------------------------------------------------------------------
INSERT INTO FORNECEDORES (CNPJ_FORN, RAZAO_SOCIAL_FORN, TELEFONE_FORNECEDOR, ENDERECO_FORNECEDOR, CONTATO_FORN) VALUES
(12345678000195, 'Fornecedor A', 123456789, 1, 'Contato A'),
(98765432000190, 'Fornecedor B', 987654321, 2, 'Contato B');

-------------------------------------------------------------------------------------------------------------------------------------------------
INSERT INTO TIPOCOMPONENTE (ID_TC, NOME_TC) 
VALUES
(1, 'Componente A'),
(2, 'Componente B');

-------------------------------------------------------------------------------------------------------------------------------------------------
INSERT INTO COMPONENTES (ID_COMP, NOME_COMP, QNT_ESTOQUE_COMP, PREÇO_COMP, COMP_FORNECEDOR, TIPO_COMP, FORN_COMP) VALUES
(1, 'Componente A', 100, 50, 12345678000195, 1, 1),
(2, 'Componente B', 200, 30, 98765432000190, 2, 2);

-------------------------------------------------------------------------------------------------------------------------------------------------
INSERT INTO EMPRESAS (CNPJ_EMPRESA, CONTATO_EMPRESA, TELEFONE_EMPRESA, ENDERECO_EMPRESA, RAZAO_SOCIAL_EMPRESA) VALUES
(12345678000195, 'Contato Empresa A', 123456789, 1, 'Razão Social A'),
(98765432000190, 'Contato Empresa B', 987654321, 2, 'Razão Social B');

-------------------------------------------------------------------------------------------------------------------------------------------------
INSERT INTO ENCOMENDAS (ID_ENC, DATA_INCLUSAO_ENC, VALOR_TOTAL_ENC, VALOR_DESCONTO_ENC, VALOR_LIQUIDO_ENC, FORMA_PAGAMENTO_ENC, ENC_PRODUTOS, QUANT_PARCELAS_ENC) VALUES
(1, '2024-11-01', 1000, 100, 900, 'Cartão', 'Produto A', 5),
(2, '2024-11-02', 2000, 200, 1800, 'Boleto', 'Produto B', 3);

------------------------------------------------------------------------------------------------------------------------------------------------
INSERT INTO RE (ID_RE, QNT_NECE_RE, UNID_RE, TEMP_USO_RE, HR_MAO_DE_OBRA_RE) VALUES
(1, 2, 1, '01:00:00', '00:30:00'),
(2, 4, 2, '02:00:00', '01:00:00');

-------------------------------------------------------------------------------------------------------------------------------------------------
INSERT INTO RM (ID_RM, DATA_RM, DESC_RM) VALUES
(1, '2024-11-01', 'Desc A'),
(2, '2024-11-02', 'Desc B');

-------------------------------------------------------------------------------------------------------------------------------------------------
INSERT INTO RS (ID_RS, QNT_RS, DATA_NESC_RS) VALUES
(1, 10, '2024-11-01'),
(2, 20, '2024-11-02');

--------------------------------------------------------------------------------------------------------------------------------------------------
INSERT INTO PRODUTOS (ID_PROD, NOME_PROD, COR_PROD, DIMENSOES_PROD, PESO_PROD, VALOR_PROD, TEMP_FABRICACAO_PROD, HORAS_MAO_DE_OBRA_PROD, PROD_ENCOMENDAS, COMP_ENCOMENDAS, RE_PROD, RS_PROD, DESENHO_PROD) VALUES
(1, 'Produto A', 'Azul', 10, 500, 1000, '02:00:00', '01:00:00', 1, 1, 1, 1, 'Desenho A'),
(2, 'Produto B', 'Vermelho', 20, 1000, 2000, '03:00:00', '02:00:00', 2, 2, 2, 2, 'Desenho B');

-------------------------------------------------------------------------------------------------------------------------------------------------
INSERT INTO EMPREGADOS (ID_EMPREGADO, NOME_EMPREGADO, CARGO_EMPREGADO, SALARIO_EMPREGADO, QUALIFICACOES_EMPREGADO, TELEFONE_EMPREGADO, END_EMPREGADO, EMPREGADO_PROD, DATA_EMISSAO_EMPREGADO) VALUES
(1, 'Empregado A', 'Cargo A', 3000, 'Qualificação A', 123456789, 1, 1, '2024-11-01'),
(2, 'Empregado B', 'Cargo B', 4000, 'Qualificação B', 987654321, 2, 2, '2024-11-02');

------------------------------------------------------------------------------------------------------------------------------------------------
INSERT INTO CLIENTES (ID_CLIENTE, CNPJ_CLIENTE, RAZSOC_CLIENTE, RAMO_CLIENTE, TELEFONE_CLIENTE, END_CLIENTE, TIPO_TELEFONE, CLIENTE_ENC, DATA_CADAST_CLIENTE) VALUES
(1, 12345678000195, 'Cliente A', 'Ramo A', 123456789, 1, 1, 1, '2024-11-01'),
(2, 98765432000190, 'Cliente B', 'Ramo B', 987654321, 2, 2, 2, '2024-11-02');

------------------------------------------------------------------------------------------------------------------------------------------------
INSERT INTO MAQUINAS (ID_MAQUINA, TEMPO_VIDA_MAQUINA, DATA_COMPRA_MAQUINA, RM_MAQUINAS, DATA_FIM_GARANTIA_MAQUINA) VALUES
(1, '10:00:00', '2024-01-01', 1, '2025-01-01'),
(2, '15:00:00', '2024-02-01', 2, '2025-02-01');


------------------------------------------------------------------------------------------------------------------------------------------------
UPDATE TELEFONES SET TIPO_TELEFONE = 2 WHERE NUM_TELEFONE = 123456789;
UPDATE TELEFONES SET NUM_TELEFONE = 1122334455 WHERE NUM_TELEFONE = 987654321;

------------------------------------------------------------------------------------------------------------------------------------------------
UPDATE ENDERECO SET CIDADE_END = 'Nova Cidade A' WHERE ID_END = 1;
UPDATE ENDERECO SET ESTADO_END = 'Novo Estado A' WHERE ID_END = 2;

-------------------------------------------------------------------------------------------------------------------------------------------------
UPDATE FORNECEDORES SET RAZAO_SOCIAL_FORN = 'Novo Fornecedor A' WHERE CNPJ_FORN = 12345678000195;
UPDATE FORNECEDORES SET CONTATO_FORN = 'Novo Contato B' WHERE CNPJ_FORN = 98765432000190;

------------------------------------------------------------------------------------------------------------------------------------------------
UPDATE COMPONENTES SET PREÇO_COMP = 60 WHERE ID_COMP = 1;
UPDATE COMPONENTES SET QNT_ESTOQUE_COMP = 150 WHERE ID_COMP = 2;

------------------------------------------------------------------------------------------------------------------------------------------------
UPDATE EMPRESAS SET RAZAO_SOCIAL_EMPRESA = 'Nova Empresa A' WHERE CNPJ_EMPRESA = 12345678000195;
UPDATE EMPRESAS SET CONTATO_EMPRESA = 'Novo Contato B' WHERE CNPJ_EMPRESA = 98765432000190;

------------------------------------------------------------------------------------------------------------------------------------------------
UPDATE ENCOMENDAS SET VALOR_TOTAL_ENC = 1100 WHERE ID_ENC = 1;
UPDATE ENCOMENDAS SET FORMA_PAGAMENTO_ENC = 'Cartão de Crédito' WHERE ID_ENC = 2;

------------------------------------------------------------------------------------------------------------------------------------------------
UPDATE PRODUTOS SET VALOR_PROD = 1100 WHERE ID_PROD = 1;
UPDATE PRODUTOS SET DESENHO_PROD = 'Desenho C' WHERE ID_PROD = 2;

------------------------------------------------------------------------------------------------------------------------------------------------
UPDATE EMPREGADOS SET CARGO_EMPREGADO = 'Novo Cargo A' WHERE ID_EMPREGADO = 1;
UPDATE EMPREGADOS SET QUALIFICACOES_EMPREGADO = 'Nova Qualificação B' WHERE ID_EMPREGADO = 2;

------------------------------------------------------------------------------------------------------------------------------------------------
UPDATE CLIENTES SET RAZSOC_CLIENTE = 'Novo Cliente A' WHERE ID_CLIENTE = 1;
UPDATE CLIENTES SET DATA_CADAST_CLIENTE = '2024-11-10'


