CREATE TABLE Usuario (
    Nome VARCHAR(255) NOT NULL,
    CPF CHAR(11) NOT NULL,
    Telefone CHAR(11) NOT NULL,
    Formacao VARCHAR(255) NOT NULL
    CONSTRAINT usuario_cpf_unique UNIQUE (CPF)
);

CREATE TABLE Vaga (
    Aprovado BOOLEAN,
    ID UUID NOT NULL,
    Nome VARCHAR(255),
    Cargo VARCHAR(255) NOT NULL,
    Contato VARCHAR(255),
    Formacao VARCHAR(255),
    CNPJ VARCHAR(14) NOT NULL,
    CPF CHAR(11) NOT NULL,
    Descricao VARCHAR(255) NOT NULL,
    FOREIGN KEY (CPF) REFERENCES Usuario(CPF)
);

CREATE TABLE Vaga (
    Aprovado BOOLEAN,
    ID UUID NOT NULL,
    Nome VARCHAR(255),
    Cargo VARCHAR(255) NOT NULL,
    Contato VARCHAR(255),
    Formacao VARCHAR(255),
    CNPJ VARCHAR(14) NOT NULL,
    CPF CHAR(11) NOT NULL,
    Descricao VARCHAR(255) NOT NULL,
    FOREIGN KEY (CPF) REFERENCES Usuario(CPF)
);

CREATE TABLE Empresa (
    Nome VARCHAR(255) NOT NULL,
    CNPJ VARCHAR(14) NOT NULL,
    Telefone CHAR(11) NOT NULL,
    Ramo VARCHAR(255) NOT NULL,
    CONSTRAINT empresa_cnpj_unique UNIQUE (CNPJ)
);