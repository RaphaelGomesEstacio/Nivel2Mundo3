
-- 1. Pessoas físicas
SELECT p.id, p.nome, p.endereco, p.telefone, p.email, pf.cpf
FROM Pessoa p JOIN PessoaFisica pf ON p.id = pf.id;

-- 2. Pessoas jurídicas
SELECT p.id, p.nome, p.endereco, p.telefone, p.email, pj.cnpj
FROM Pessoa p JOIN PessoaJuridica pj ON p.id = pj.id;

-- 3. Movimentações de entrada
SELECT m.id, pr.nome AS produto, p.nome AS fornecedor, m.quantidade, m.preco_unitario,
       (m.quantidade * m.preco_unitario) AS valor_total
FROM Movimentacao m
JOIN Produto pr ON pr.id = m.id_produto
JOIN Pessoa p ON p.id = m.id_pessoa
WHERE m.tipo = 'E';

-- 4. Movimentações de saída
SELECT m.id, pr.nome AS produto, p.nome AS comprador, m.quantidade, m.preco_unitario,
       (m.quantidade * m.preco_unitario) AS valor_total
FROM Movimentacao m
JOIN Produto pr ON pr.id = m.id_produto
JOIN Pessoa p ON p.id = m.id_pessoa
WHERE m.tipo = 'S';

-- 5. Total de entradas por produto
SELECT pr.nome AS produto, SUM(m.quantidade * m.preco_unitario) AS total_entrada
FROM Movimentacao m
JOIN Produto pr ON pr.id = m.id_produto
WHERE m.tipo = 'E'
GROUP BY pr.nome;

-- 6. Total de saídas por produto
SELECT pr.nome AS produto, SUM(m.quantidade * m.preco_unitario) AS total_saida
FROM Movimentacao m
JOIN Produto pr ON pr.id = m.id_produto
WHERE m.tipo = 'S'
GROUP BY pr.nome;

-- 7. Operadores que não compraram
SELECT u.id, u.nome_usuario
FROM Usuario u
WHERE u.id NOT IN (
    SELECT DISTINCT id_operador FROM Movimentacao WHERE tipo = 'E'
);

-- 8. Total de entrada por operador
SELECT u.nome_usuario, SUM(m.quantidade * m.preco_unitario) AS total_entrada
FROM Movimentacao m
JOIN Usuario u ON u.id = m.id_operador
WHERE m.tipo = 'E'
GROUP BY u.nome_usuario;

-- 9. Total de saída por operador
SELECT u.nome_usuario, SUM(m.quantidade * m.preco_unitario) AS total_saida
FROM Movimentacao m
JOIN Usuario u ON u.id = m.id_operador
WHERE m.tipo = 'S'
GROUP BY u.nome_usuario;

-- 10. Média ponderada de venda por produto
SELECT p.nome AS produto,
       SUM(m.quantidade * m.preco_unitario) * 1.0 / SUM(m.quantidade) AS media_ponderada
FROM Movimentacao m
JOIN Produto p ON p.id = m.id_produto
WHERE m.tipo = 'S'
GROUP BY p.nome;
