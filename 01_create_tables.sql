-- Seleciona o banco de dados (apenas para MySQL; PostgreSQL usaria \c database_name;)
USE carros_modificados_event; 

-- Tabela PROPRIETARIO
CREATE TABLE PROPRIETARIO (
    CPF VARCHAR(14) PRIMARY KEY, -- Formato XXX.XXX.XXX-XX
    Nome VARCHAR(100) NOT NULL,
    CNH VARCHAR(11) UNIQUE NOT NULL, -- CNH única para cada proprietário
    Telefone VARCHAR(15), -- Formato (XX) XXXXX-XXXX
    Email VARCHAR(100) UNIQUE NOT NULL
);

-- Tabela VEICULO
CREATE TABLE VEICULO (
    Placa VARCHAR(7) PRIMARY KEY, -- Formato ABC1D23 ou ABC-1234
    Modelo VARCHAR(50) NOT NULL,
    Marca VARCHAR(50) NOT NULL,
    Ano INT NOT NULL,
    Cor VARCHAR(30),
    Lista_Modificacoes TEXT -- Campo para texto longo de modificações
);

-- Tabela INSCRICAO
CREATE TABLE INSCRICAO (
    ID_Inscricao INT AUTO_INCREMENT PRIMARY KEY, -- ID único e auto-incrementável
    Data_Inscricao DATE NOT NULL,
    Status ENUM('Pendente', 'Aprovado', 'Recusado') DEFAULT 'Pendente', -- Restringe os valores possíveis
    Credencial VARCHAR(255), -- Pode ser um link para QR Code, um código alfanumérico
    CPF_Proprietario VARCHAR(14) NOT NULL,
    Placa_Veiculo VARCHAR(7) NOT NULL,
    FOREIGN KEY (CPF_Proprietario) REFERENCES PROPRIETARIO(CPF),
    FOREIGN KEY (Placa_Veiculo) REFERENCES VEICULO(Placa)
);