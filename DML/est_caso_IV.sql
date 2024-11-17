-- Active: 1730295332111@@127.0.0.1@3306@est_caso_iv

------------------------------------------------------------------------------------------------------------------------------------------------
INSERT INTO ALUNO (ALUNO_CPF, ALUNO_NOME, ALUNO_MODALIDADE, ALUNO_TEL, ALUNO_CIDADE, ALUNO_ESTADO, ALUNO_PAIS, ALUNO_RUA, ALUNO_NUM, ALUNO_BAIRRO, EMAIL) VALUES
(12345678901, 'Aluno A', 'Modalidade A', '11987654321', 'Cidade A', 'Estado A', 'País A', 'Rua A', '10', 'Bairro A', 'emailA@email.com'),
(23456789012, 'Aluno B', 'Modalidade B', '21987654321', 'Cidade B', 'Estado B', 'País B', 'Rua B', '20', 'Bairro B', 'emailB@email.com'),
(34567890123, 'Aluno C', 'Modalidade C', '31987654321', 'Cidade C', 'Estado C', 'País C', 'Rua C', '30', 'Bairro C', 'emailC@email.com'),
(45678901234, 'Aluno D', 'Modalidade D', '41987654321', 'Cidade D', 'Estado D', 'País D', 'Rua D', '40', 'Bairro D', 'emailD@email.com'),
(56789012345, 'Aluno E', 'Modalidade E', '51987654321', 'Cidade E', 'Estado E', 'País E', 'Rua E', '50', 'Bairro E', 'emailE@email.com');

------------------------------------------------------------------------------------------------------------------------------------------------
INSERT INTO INSTRUTORES (ID_INSTRUTOR, NOME_INSTRUTOR, ESPEC_INSTRUTOR, INSTRUTOR_TEL, INSTRUTOR_CIDADE, INSTRUTOR_ESTADO, INSTRUTOR_PAIS, INSTRUTOR_RUA, INSTRUTOR_NUM, INSTRUTOR_BAIRRO, SEXO_INSTRUTOR) VALUES
(1, 'Instrutor A', 'Especialidade A', '11987654321', 'Cidade A', 'Estado A', 'País A', 'Rua A', '10', 'Bairro A', 'M'),
(2, 'Instrutor B', 'Especialidade B', '21987654321', 'Cidade B', 'Estado B', 'País B', 'Rua B', '20', 'Bairro B', 'F'),
(3, 'Instrutor C', 'Especialidade C', '31987654321', 'Cidade C', 'Estado C', 'País C', 'Rua C', '30', 'Bairro C', 'M'),
(4, 'Instrutor D', 'Especialidade D', '41987654321', 'Cidade D', 'Estado D', 'País D', 'Rua D', '40', 'Bairro D', 'F'),
(5, 'Instrutor E', 'Especialidade E', '51987654321', 'Cidade E', 'Estado E', 'País E', 'Rua E', '50', 'Bairro E', 'M');

------------------------------------------------------------------------------------------------------------------------------------------------
INSERT INTO MODALIDADES (ID_MODALIDADE, NOME_MODALIDADE, INSTRUTOR_MOD) VALUES
(1, 'Modalidade A', 1),
(2, 'Modalidade B', 2),
(3, 'Modalidade C', 3),
(4, 'Modalidade D', 4),
(5, 'Modalidade E', 5);

-------------------------------------------------------------------------------------------------------------------------------------------------
INSERT INTO PLANO_TREINO (ID_PLANO, PLANO_INSTRUTOR, PLANO_ALUNO) VALUES
(1, 1, 12345678901),
(2, 2, 23456789012),
(3, 3, 34567890123),
(4, 4, 45678901234),
(5, 5, 56789012345);

------------------------------------------------------------------------------------------------------------------------------------------------
INSERT INTO AULA (ID_AULA, CAPACIDADE_AULA, DIA_AULA, INSTRUTOR_AULA, ALUNO_AULA, HORARIO_AULA) VALUES
(1, 10, '2024-11-15', 1, 12345678901, '08:00:00'),
(2, 20, '2024-11-16', 2, 23456789012, '09:00:00'),
(3, 15, '2024-11-17', 3, 34567890123, '10:00:00'),
(4, 25, '2024-11-18', 4, 45678901234, '11:00:00'),
(5, 30, '2024-11-19', 5, 56789012345, '12:00:00');

-------------------------------------------------------------------------------------------------------------------------------------------------
INSERT INTO PAGAMENTOS (ID_PAGAMENTO, DATA_PAGAMENTO, VALOR_PAGAMENTO, STATUR_PAGAMENTO, ALUNO_PAGAMENTO) VALUES
(1, '2024-11-15 10:00:00', 500.00, 'PAGO', 12345678901),
(2, '2024-11-16 11:00:00', 400.00, 'PENDENTE', 23456789012),
(3, '2024-11-17 12:00:00', 300.00, 'PAGO', 34567890123),
(4, '2024-11-18 13:00:00', 600.00, 'PAGO', 45678901234),
(5, '2024-11-19 14:00:00', 700.00, 'PENDENTE', 56789012345);

------------------------------------------------------------------------------------------------------------------------------------------------
UPDATE ALUNO SET ALUNO_TEL = '11111111111' WHERE ALUNO_CPF = 12345678901;
UPDATE ALUNO SET EMAIL = 'novoemailA@email.com' WHERE ALUNO_CPF = 12345678901;

-------------------------------------------------------------------------------------------------------------------------------------------------
UPDATE INSTRUTORES SET INSTRUTOR_TEL = '22222222222' WHERE ID_INSTRUTOR = 1;
UPDATE INSTRUTORES SET SEXO_INSTRUTOR = 'F' WHERE ID_INSTRUTOR = 3;

-------------------------------------------------------------------------------------------------------------------------------------------------
UPDATE MODALIDADES SET NOME_MODALIDADE = 'Nova Modalidade A' WHERE ID_MODALIDADE = 1;
UPDATE MODALIDADES SET INSTRUTOR_MOD = 2 WHERE ID_MODALIDADE = 3;

------------------------------------------------------------------------------------------------------------------------------------------------
UPDATE PLANO_TREINO SET PLANO_ALUNO = 23456789012 WHERE ID_PLANO = 1;
UPDATE PLANO_TREINO SET PLANO_INSTRUTOR = 4 WHERE ID_PLANO = 3;

------------------------------------------------------------------------------------------------------------------------------------------------
UPDATE AULA SET CAPACIDADE_AULA = 20 WHERE ID_AULA = 1;
UPDATE AULA SET HORARIO_AULA = '09:30:00' WHERE ID_AULA = 2;

------------------------------------------------------------------------------------------------------------------------------------------------
UPDATE PAGAMENTOS SET VALOR_PAGAMENTO = 550.00 WHERE ID_PAGAMENTO = 1;
UPDATE PAGAMENTOS SET STATUR_PAGAMENTO = 'PAGO' WHERE ID_PAGAMENTO = 2;

------------------------------------------------------------------------------------------------------------------------------------------------
DELETE FROM ALUNO WHERE ALUNO_CPF = 56789012345;
DELETE FROM INSTRUTORES WHERE ID_INSTRUTOR = 5;
DELETE FROM MODALIDADES WHERE ID_MODALIDADE = 5;
DELETE FROM PLANO_TREINO WHERE ID_PLANO = 5;
DELETE FROM AULA WHERE ID_AULA = 5;
DELETE FROM PAGAMENTOS WHERE ID_PAGAMENTO = 5;

