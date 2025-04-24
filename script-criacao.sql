
-- Criação do banco e login
CREATE LOGIN loja WITH PASSWORD = 'loja';
CREATE DATABASE LojaDB;
GO

USE LojaDB;
GO

CREATE USER loja FOR LOGIN loja;
ALTER ROLE db_owner ADD MEMBER loja;
GO

-- Sequence para ID de Pessoa
CREATE SEQUENCE seq_pessoa_id
    START WITH 1
    INCREMENT BY 1;
GO

-- Tabelas
CREATE TABLE Usuario (
    id INT IDENTITY(1,1) PRIMARY KEY,
    nome_usuario VARCHAR(50) NOT NULL,
    senha VARCHAR(50) NOT NULL
);

CREATE TABLE Pessoa (
    id INT PRIMARY KEY,
    nome VARCHAR(100),
    endereco VARCHAR(150),
    telefone VARCHAR(20),
    email VARCHAR(100)
);

CREATE TABLE PessoaFisica (
    id INT PRIMARY KEY,
    cpf VARCHAR(14) NOT NULL UNIQUE,
    FOREIGN KEY (id) REFERENCES Pessoa(id)
);

CREATE TABLE PessoaJuridica (
    id INT PRIMARY KEY,
    cnpj VARCHAR(18) NOT NULL UNIQUE,
    FOREIGN KEY (id) REFERENCES Pessoa(id)
);

CREATE TABLE Produto (
    id INT IDENTITY(1,1) PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    quantidade INT,
    preco_venda DECIMAL(10,2)
);

CREATE TABLE Movimentacao (
    id INT IDENTITY(1,1) PRIMARY KEY,
    tipo CHAR(1) CHECK (tipo IN ('E', 'S')),
    id_produto INT,
    id_operador INT,
    id_pessoa INT,
    quantidade INT,
    preco_unitario DECIMAL(10,2),
    FOREIGN KEY (id_produto) REFERENCES Produto(id),
    FOREIGN KEY (id_operador) REFERENCES Usuario(id),
    FOREIGN KEY (id_pessoa) REFERENCES Pessoa(id)
);
