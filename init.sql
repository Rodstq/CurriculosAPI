CREATE TABLE Usuario (
    CPF CHAR(11) NOT NULL PRIMARY KEY,
    Nome VARCHAR(255) NOT NULL,
    Telefone CHAR(11) NOT NULL,
    Formacao VARCHAR(255) NOT NULL
);

CREATE TABLE Empresa (
    CNPJ CHAR(14) NOT NULL PRIMARY KEY,
    Nome VARCHAR(255) NOT NULL,
    Telefone CHAR(11) NOT NULL,
    Ramo VARCHAR(255) NOT NULL
);

CREATE TABLE Vaga (
    ID UUID NOT NULL PRIMARY KEY,
    Nome VARCHAR(255) NOT NULL,
    Cargo VARCHAR(255) NOT NULL,
    Contato VARCHAR(255) NOT NULL,
    Formacao VARCHAR(255) NOT NULL,
    CNPJ CHAR(14) NOT NULL,
    Descricao TEXT NOT NULL,
    Aprovado BOOLEAN DEFAULT FALSE,
    FOREIGN KEY (CNPJ) REFERENCES Empresa(CNPJ)
);

CREATE TABLE Inscricao (
    ID UUID NOT NULL PRIMARY KEY,
    CPF CHAR(11) NOT NULL,
    VagaID UUID NOT NULL,
    DataInscricao TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (CPF) REFERENCES Usuario(CPF),
    FOREIGN KEY (VagaID) REFERENCES Vaga(ID)
);

INSERT INTO Usuario (CPF, Nome, Telefone, Formacao)
VALUES
('12345678901', 'João Silva', '11987654321', 'Engenharia de Software'),
('98765432100', 'Maria Oliveira', '21987654321', 'Administração'),
('45678912300', 'Pedro Santos', '31987654321', 'Ciências Contábeis');

INSERT INTO Empresa (CNPJ, Nome, Telefone, Ramo)
VALUES
('12345678000100', 'Tech Solutions', '1132123434', 'Tecnologia'),
('98765432000100', 'Finance Experts', '2132123434', 'Finanças'),
('45678912000100', 'Edu Experts', '3132123434', 'Educação');

INSERT INTO Vaga (ID, Nome, Cargo, Contato, Formacao, CNPJ, Descricao, Aprovado)
VALUES
('11111111-1111-1111-1111-111111111111', 'Desenvolvedor Backend', 'Desenvolvedor', 'contato@techsolutions.com', 'Engenharia de Software', '12345678000100', 'Desenvolver APIs e microsserviços.', TRUE),
('22222222-2222-2222-2222-222222222222', 'Analista Financeiro', 'Analista', 'contato@financeexperts.com', 'Administração', '98765432000100', 'Análise de dados financeiros e relatórios.', FALSE),
('33333333-3333-3333-3333-333333333333', 'Tutor Online', 'Tutor', 'contato@eduexperts.com', 'Educação', '45678912000100', 'Tutorias online para alunos.', TRUE);

INSERT INTO Inscricao (ID, CPF, VagaID)
VALUES
('aaaaaaa1-aaaa-aaaa-aaaa-aaaaaaaaaaaa', '12345678901', '11111111-1111-1111-1111-111111111111'),
('aaaaaaa2-aaaa-aaaa-aaaa-aaaaaaaaaaaa', '98765432100', '22222222-2222-2222-2222-222222222222'),
('aaaaaaa3-aaaa-aaaa-aaaa-aaaaaaaaaaaa', '45678912300', '33333333-3333-3333-3333-333333333333');
