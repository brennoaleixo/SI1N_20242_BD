CREATE SCHEMA est_caso_V;

USE est_caso_V;

CREATE TABLE IF NOT EXISTS CLIENTES(
    CPF_CLIENTE INT PRIMARY KEY,
    NOME_CLIENTE VARCHAR(45) NOT NULL,
    NASC_CLIENTE DATE,
    STATUS_CLIENTE ENUM('SIM', 'NÃO'),
    RUA_CLIENTE VARCHAR(50) NOT NULL,
    NUM_CLIENTE INT NOT NULL,
    BAIRRO_CLIENTE VARCHAR(50) NOT NULL,
    CIDADE_CLIENTE VARCHAR(50) NOT NULL,
    ESTADO_CLIENTE VARCHAR(50) NOT NULL,
    PAIS_CLIENTE VARCHAR(40) NOT NULL
);

CREATE TABLE IF NOT EXISTS PRODUTOS(
    ID_PROD INT PRIMARY KEY,
    NOME_PROD VARCHAR(70) NOT NULL,
    DIMENSOES_PROD INT NOT NULL,
    VALOR_PROD INT NOT NULL,
    DISP_PROD ENUM('SIM', 'NAO'),
    PROD_FORNC_FORNECEDOR VARCHAR(45)
);

CREATE TABLE IF NOT EXISTS FORNECEDORES(
    ID_FORN INT PRIMARY KEY,
    TELEFONE_FORN INT NOT NULL,
    CONTATO_FORN VARCHAR(50) NOT NULL,
    PRODUTO_FORN VARCHAR(30) NOT NULL,
    DESCPROD_FORN VARCHAR(100) NOT NULL
);

CREATE TABLE IF NOT EXISTS ESTOQUE(
    ID_ESTOQUE INT PRIMARY KEY,
    PROD_ESTOQUE VARCHAR(50) NOT NULL,
    LOC_PROD_ESTOQUE VARCHAR(50) NOT NULL,
    QNT_PROD_ESTOQUE INT NOT NULL,
    PROD_DISP_ESTOQUE INT NOT NULL
);

CREATE TABLE IF NOT EXISTS VENDA(
    ID_VENDA INT PRIMARY KEY,
    PROD_VENDA VARCHAR(30) NOT NULL,
    QNT_PROD_VENDA INT NOT NULL,
    PAGAMENTO_VENDA VARCHAR(20) NOT NULL,
    CLIENTE_VENDA INT
);

CREATE TABLE IF NOT EXISTS PAGAMENTOS(
    ID_PAGAMENTO INT PRIMARY KEY,
    CLIENTE_PAGAMENTO INT,
    DATA_PAGAMENTO DATE NOT NULL,
    VALOR_PAGAMENTO INT NOT NULL,
    STATUS_PAGAMENTO ENUM('PAGO', 'PENDENTE'),
    ID_CLIENTE INT NOT NULL,
CONSTRAINT FK_CLIENTE FOREIGN KEY (ID_CLIENTE) REFERENCES CLIENTES(CPF_CLIENTE)
);

ALTER TABLE PAGAMENTOS CHANGE VALOR_PAGAMENTO VALOR_TOTAL_PAGAMENTO INT NOT NULL;

ALTER TABLE CLIENTES ADD EMAIL VARCHAR(35);

ALTER TABLE VENDA ADD DATA_VENDA DATE;

ALTER TABLE FORNECEDORES CHANGE DESCPROD_FORN DESC_PROD_FORN VARCHAR(200) NOT NULL;

ALTER TABLE PRODUTOS ADD COR_PROD VARCHAR(20);