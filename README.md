
# Prática: Modelagem e Criação de Banco de Dados Relacional

## 🎯 Objetivo
Desenvolver um modelo de dados relacional com base na proposta de herança entre pessoas físicas e jurídicas, além da implementação de movimentações de compra e venda de produtos, utilizando o SQL Server Management Studio.

## 📁 Estrutura do Projeto

- `script-criacao.sql`: Criação do banco de dados, tabelas, relacionamentos e sequence.
- `script-inserts.sql`: Inserção de dados para usuários, produtos, pessoas físicas e jurídicas e movimentações.
- `script-consultas.sql`: Consultas SQL para análise dos dados inseridos.
- `Relatorio_Pratico_BancoDeDados.pdf`: Relatório da prática contendo os objetivos, códigos, análises e conclusões.

## 👨‍💻 Tecnologias Utilizadas
- SQL Server Management Studio (SSMS)
- Linguagem SQL
- FPDF (geração do relatório)

## ✅ Resultados Esperados
- Banco de dados relacional funcional
- Inserção de dados simulando o funcionamento de um sistema de compras e vendas
- Consultas SQL com análise de dados
- Relatório em PDF documentando todo o processo

## 📌 Link do Repositório
📎 [Inserir aqui o link do seu repositório GitHub]

---

### 📄 Relatório PDF
✅ Incluído no repositório: `Relatorio_Pratico_BancoDeDados.pdf`

---

## 📚 Análises e Conclusões

**1. Cardinalidades:**  
São representadas por relacionamentos via chaves primárias e estrangeiras. A herança é simulada com relacionamento 1x1 entre Pessoa, Pessoa Física e Pessoa Jurídica.

**2. Sequence vs Identity:**  
Sequence é mais flexível, usada manualmente com `NEXT VALUE FOR`. Identity é automática e usada diretamente na criação de colunas.

**3. Chaves Estrangeiras:**  
Garantem a integridade referencial entre tabelas.

**4. Álgebra Relacional e Cálculo Relacional:**  
Operadores como `SELECT`, `JOIN`, `GROUP BY`, `SUM` e `AVG` fazem parte dessas teorias matemáticas aplicadas ao SQL.

**5. Agrupamento em Consultas:**  
Feito com `GROUP BY`, exige o uso de funções agregadas como `SUM()`, `AVG()` etc.

---

## 🧑‍🏫 Desenvolvido por:
- [Seu Nome Aqui]
- [Nome da Universidade]
- [Curso: Desenvolvimento Full Stack]
- [Disciplina: Banco de Dados]
- [Turma / Período: 3º Período, 2025/1]
