
-- Inserir usuários
INSERT INTO Usuario (nome_usuario, senha) VALUES ('op1', 'op1');
INSERT INTO Usuario (nome_usuario, senha) VALUES ('op2', 'op2');

-- Inserir produtos
INSERT INTO Produto (nome, quantidade, preco_venda) VALUES ('Mouse', 100, 50.00);
INSERT INTO Produto (nome, quantidade, preco_venda) VALUES ('Teclado', 150, 80.00);
INSERT INTO Produto (nome, quantidade, preco_venda) VALUES ('Monitor', 50, 600.00);

-- Inserir pessoas físicas
DECLARE @id1 INT = NEXT VALUE FOR seq_pessoa_id;
INSERT INTO Pessoa (id, nome, endereco, telefone, email)
VALUES (@id1, 'João Silva', 'Rua A, 123', '(11) 99999-0001', 'joao@email.com');
INSERT INTO PessoaFisica (id, cpf) VALUES (@id1, '123.456.789-00');

DECLARE @id2 INT = NEXT VALUE FOR seq_pessoa_id;
INSERT INTO Pessoa (id, nome, endereco, telefone, email)
VALUES (@id2, 'Maria Oliveira', 'Rua B, 456', '(11) 99999-0002', 'maria@email.com');
INSERT INTO PessoaFisica (id, cpf) VALUES (@id2, '987.654.321-00');

-- Inserir pessoas jurídicas
DECLARE @id3 INT = NEXT VALUE FOR seq_pessoa_id;
INSERT INTO Pessoa (id, nome, endereco, telefone, email)
VALUES (@id3, 'Tech Distribuidora', 'Av Central, 1000', '(11) 4002-8922', 'contato@tech.com');
INSERT INTO PessoaJuridica (id, cnpj) VALUES (@id3, '12.345.678/0001-99');

DECLARE @id4 INT = NEXT VALUE FOR seq_pessoa_id;
INSERT INTO Pessoa (id, nome, endereco, telefone, email)
VALUES (@id4, 'Mega Fornecedores', 'Av Norte, 200', '(11) 3003-1313', 'vendas@mega.com');
INSERT INTO PessoaJuridica (id, cnpj) VALUES (@id4, '98.765.432/0001-11');

-- Inserir movimentações
INSERT INTO Movimentacao (tipo, id_produto, id_operador, id_pessoa, quantidade, preco_unitario)
VALUES ('E', 1, 1, 3, 10, 45.00);

INSERT INTO Movimentacao (tipo, id_produto, id_operador, id_pessoa, quantidade, preco_unitario)
VALUES ('E', 3, 2, 4, 5, 550.00);

INSERT INTO Movimentacao (tipo, id_produto, id_operador, id_pessoa, quantidade, preco_unitario)
VALUES ('S', 1, 1, 1, 2, 50.00);

INSERT INTO Movimentacao (tipo, id_produto, id_operador, id_pessoa, quantidade, preco_unitario)
VALUES ('S', 2, 2, 2, 1, 80.00);
