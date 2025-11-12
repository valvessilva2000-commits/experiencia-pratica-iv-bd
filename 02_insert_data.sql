USE carros_modificados_event;

-- Inserir Proprietarios
INSERT INTO PROPRIETARIO (CPF, Nome, CNH, Telefone, Email) VALUES
('111.222.333-44', 'João Silva', '12345678901', '(11)98765-4321', 'joao.silva@email.com'),
('555.666.777-88', 'Maria Souza', '10987654321', '(21)99887-7654', 'maria.souza@email.com'),
('999.888.777-66', 'Pedro Costa', '11223344556', '(31)97766-5544', 'pedro.costa@email.com'),
('123.456.789-00', 'Ana Oliveira', '65432109876', '(41)91234-5678', 'ana.oliveira@email.com');

-- Inserir Veiculos
INSERT INTO VEICULO (Placa, Modelo, Marca, Ano, Cor, Lista_Modificacoes) VALUES
('ABC1D23', 'Gol', 'Volkswagen', 1998, 'Vermelho', 'Suspensão a ar, Rodas esportivas aro 17, Teto solar'),
('XYZ9T87', 'Civic', 'Honda', 2010, 'Preto', 'Turbo, Escape esportivo, Bancos de couro'),
('PQR5S67', 'Corvette', 'Chevrolet', 2020, 'Amarelo', 'Supercharger, Aerofólio de fibra de carbono'),
('MNB3V45', 'Fusion', 'Ford', 2015, 'Prata', 'Chip de potência, Molas esportivas'),
('LKJ6H78', 'Polo', 'Volkswagen', 2022, 'Branco', 'Rodas BBS, Kit multimídia');


-- Inserir Inscrições
INSERT INTO INSCRICAO (Data_Inscricao, Status, Credencial, CPF_Proprietario, Placa_Veiculo) VALUES
('2024-03-10', 'Aprovado', 'CME2024-001A', '111.222.333-44', 'ABC1D23'),
('2024-03-12', 'Pendente', 'CME2024-002P', '555.666.777-88', 'XYZ9T87'),
('2024-03-15', 'Aprovado', 'CME2024-003A', '999.888.777-66', 'PQR5S67'),
('2024-03-18', 'Recusado', 'CME2024-004R', '123.456.789-00', 'MNB3V45'),
('2024-03-20', 'Aprovado', 'CME2024-005A', '111.222.333-44', 'LKJ6H78'); -- João Silva inscrevendo um segundo carro