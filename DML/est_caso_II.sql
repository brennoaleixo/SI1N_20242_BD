-- Active: 1730295332111@@127.0.0.1@3306@est_caso_ii
------------------------------------------------------------------------------------------------------------------------------------------------
INSERT INTO PASSAGEIROS (CPF_PASSAGEIRO, NOME_PASSAGEIRO, TEL_PASSAGEIRO, RUA_PASSAGEIRO, BAIRRO_PASSAGEIRO, CIDADE_PASSAGEIRO, NUMRESI_PASSAGEIRO, UF_PASSAGEIRO, PAIS_PASSAGEIRO, EMAIL_PASSAGEIRO)
VALUES (12345678901, 'Pessoa A', '12345678901', 'Rua A', 'Bairro A', 'Cidade A', 123, 'SP', 'Brasil', 'pessoa.a@exemplo.com'),
       (23456789012, 'Pessoa B', '23456789012', 'Rua B', 'Bairro B', 'Cidade B', 456, 'RJ', 'Brasil', 'pessoa.b@exemplo.com'),
       (34567890123, 'Pessoa C', '34567890123', 'Rua C', 'Bairro C', 'Cidade C', 789, 'MG', 'Brasil', 'pessoa.c@exemplo.com'),
       (45678901234, 'Pessoa D', '45678901234', 'Rua D', 'Bairro D', 'Cidade D', 101, 'BA', 'Brasil', 'pessoa.d@exemplo.com'),
       (56789012345, 'Pessoa E', '56789012345', 'Rua E', 'Bairro E', 'Cidade E', 202, 'PR', 'Brasil', 'pessoa.e@exemplo.com');

------------------------------------------------------------------------------------------------------------------------------------------------
INSERT INTO VOOS (ID_VOOS, DATA_ORIGEM, HORA_ORIGEM, PAIS_DESTINO, PAIS_CHEGADA, DATA_DESTINO, HORA_DESTINO, NOME_AEROPORT_ORIGEM, NOME_AEROPORT_DESTINO, ID_AERONAVE, ID_AEROPORTO, NUM_PASSAGEIROS_VOO)
VALUES (1, '2024-11-01', '10:00:00', 'EUA', 'Brasil', '2024-11-01', '12:00:00', 'Aeroporto A', 'Aeroporto B', 'A1', 'P1', 100),
       (2, '2024-11-02', '15:00:00', 'Alemanha', 'Brasil', '2024-11-02', '17:00:00', 'Aeroporto C', 'Aeroporto D', 'A2', 'P2', 150),
       (3, '2024-11-03', '20:00:00', 'França', 'Brasil', '2024-11-04', '22:00:00', 'Aeroporto E', 'Aeroporto F', 'A3', 'P3', 120),
       (4, '2024-11-04', '08:00:00', 'Argentina', 'Brasil', '2024-11-04', '10:00:00', 'Aeroporto G', 'Aeroporto H', 'A4', 'P4', 110),
       (5, '2024-11-05', '12:00:00', 'Chile', 'Brasil', '2024-11-05', '14:00:00', 'Aeroporto I', 'Aeroporto J', 'A5', 'P5', 130);

------------------------------------------------------------------------------------------------------------------------------------------------
INSERT INTO AERONAVES (ID_AERONAVE, NOME_AERONAVE, NOME_PILOTO, CAPACIDADE_AERONAVE, FABRICANTE_AERONAVE, ANOFABRI_AERONAVE, DATA_SAIDA_AERONAVE, HORA_SAIDA_AERONAVE, NUM_VOOS_AERONAVE, ID_VOOS, FABRICANTE_AERONAVE)
VALUES (1, 'Aeronave A', 'Piloto A', 200, 'Fabricante X', 2010, '2024-11-01', '10:00:00', 500, 1, 'Fabricante X'),
       (2, 'Aeronave B', 'Piloto B', 180, 'Fabricante Y', 2012, '2024-11-02', '15:00:00', 450, 2, 'Fabricante Y'),
       (3, 'Aeronave C', 'Piloto C', 150, 'Fabricante Z', 2015, '2024-11-03', '20:00:00', 400, 3, 'Fabricante Z'),
       (4, 'Aeronave D', 'Piloto D', 220, 'Fabricante W', 2018, '2024-11-04', '08:00:00', 550, 4, 'Fabricante W'),
       (5, 'Aeronave E', 'Piloto E', 210, 'Fabricante V', 2020, '2024-11-05', '12:00:00', 600, 5, 'Fabricante V');

------------------------------------------------------------------------------------------------------------------------------------------------
INSERT INTO AEROPORTOS (ID_AEROPORTO, NOME_AEROPORTO, LOCAL_AEROPORTO, PAIS_AEROPORTO, LATITUDE_AEROPORTO, LONGITUDE_AEROPORTO, NUM_VOOS_AEROPORTO, DATA_ENTRADA_AEROPORTO, HORA_ENTRADA_AEROPORTO, DATA_SAIDA_AEROPORTO, HORA_SAIDA_AEROPORTO, ID_VOOS)
VALUES (1, 'Aeroporto A', 'Local A', 'Brasil', '10.0', '-50.0', '100', '2024-11-01', '10:00:00', '2024-11-01', '12:00:00', 1),
       (2, 'Aeroporto B', 'Local B', 'EUA', '20.0', '-40.0', '200', '2024-11-02', '15:00:00', '2024-11-02', '17:00:00', 2),
       (3, 'Aeroporto C', 'Local C', 'França', '30.0', '-30.0', '150', '2024-11-03', '20:00:00', '2024-11-03', '22:00:00', 3),
       (4, 'Aeroporto D', 'Local D', 'Argentina', '40.0', '-20.0', '120', '2024-11-04', '08:00:00', '2024-11-04', '10:00:00', 4),
       (5, 'Aeroporto E', 'Local E', 'Chile', '50.0', '-10.0', '130', '2024-11-05', '12:00:00', '2024-11-05', '14:00:00', 5);

------------------------------------------------------------------------------------------------------------------------------------------------
INSERT INTO RESERVAS (RESERVA_PASS, VOO_RESERVA_PASS)
VALUES (12345678901, 1),
       (23456789012, 2),
       (34567890123, 3),
       (45678901234, 4),
       (56789012345, 5);

------------------------------------------------------------------------------------------------------------------------------------------------
UPDATE PASSAGEIROS SET NOME_PASSAGEIRO = 'Pessoa A Atualizada' WHERE CPF_PASSAGEIRO = 12345678901;
UPDATE PASSAGEIROS SET EMAIL_PASSAGEIRO = 'pessoa.b@atualizado.com' WHERE CPF_PASSAGEIRO = 23456789012;

------------------------------------------------------------------------------------------------------------------------------------------------
UPDATE VOOS SET PAIS_DESTINO = 'Canadá' WHERE ID_VOOS = 1;
UPDATE VOOS SET NUM_PASSAGEIROS_VOO = 110 WHERE ID_VOOS = 2;

------------------------------------------------------------------------------------------------------------------------------------------------
UPDATE AERONAVES SET CAPACIDADE_AERONAVE = 250 WHERE ID_AERONAVE = 1;
UPDATE AERONAVES SET NUM_VOOS_AERONAVE = 510 WHERE ID_AERONAVE = 2;

------------------------------------------------------------------------------------------------------------------------------------------------
UPDATE AEROPORTOS SET PAIS_AEROPORTO = 'Canadá' WHERE ID_AEROPORTO = 1;
UPDATE AEROPORTOS SET LATITUDE_AEROPORTO = '60.0' WHERE ID_AEROPORTO = 2;

------------------------------------------------------------------------------------------------------------------------------------------------
UPDATE RESERVAS SET VOO_RESERVA_PASS = 3 WHERE RESERVA_PASS = 12345678901;
UPDATE RESERVAS SET VOO_RESERVA_PASS = 4 WHERE RESERVA_PASS = 23456789012;

------------------------------------------------------------------------------------------------------------------------------------------------
DELETE FROM PASSAGEIROS WHERE CPF_PASSAGEIRO = 12345678901;

------------------------------------------------------------------------------------------------------------------------------------------------
DELETE FROM VOOS WHERE ID_VOOS = 2;

------------------------------------------------------------------------------------------------------------------------------------------------
DELETE FROM AERONAVES WHERE ID_AERONAVE = 3;

------------------------------------------------------------------------------------------------------------------------------------------------
DELETE FROM AEROPORTOS WHERE ID_AEROPORTO = 4;

------------------------------------------------------------------------------------------------------------------------------------------------
DELETE FROM RESERVAS WHERE RESERVA_PASS = 12345678901;
