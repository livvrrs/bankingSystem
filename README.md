# 💰 Sistema Bancário - Banco de Dados

Este projeto acadêmico implementa um sistema bancário simples utilizando MySQL para gerenciamento de dados.

## Estrutura do Banco de Dados

O sistema é composto pelas seguintes tabelas:

- **banco**: Armazena os bancos disponíveis.  
- **agencia**: Contém informações sobre as agências bancárias.  
- **cliente**: Guarda os dados pessoais dos clientes.  
- **conta**: Representa as contas bancárias.  
- **historico**: Relaciona clientes e contas com a data de início.  
- **telefone_cliente**: Armazena os telefones dos clientes.

## Funcionalidades

- Criação de banco de dados e tabelas.  
- Inserção de dados nas tabelas.  
- Alterações e atualizações de estrutura e registros.  
- Exclusão de contas.  
- Consultas diversas como somatório de saldos, contagem de clientes, etc.

## Consultas Exemplos

- Clientes ordenados por nome (decrescente)  
- Total de saldos nas contas  
- Quantidade de clientes cadastrados  
- Nome, endereço e número da conta dos clientes

---

# 💰 Banking System - Database

This academic project implements a simple banking system using MySQL to manage data.

## Database Structure

The system is composed of the following tables:

- **banco**: Stores available banks.  
- **agencia**: Contains information about bank branches.  
- **cliente**: Stores client personal data.  
- **conta**: Represents bank accounts.  
- **historico**: Links clients to accounts with the start date.  
- **telefone_cliente**: Stores clients' phone numbers.

## Features

- Creation of database and tables.  
- Insertion of data into tables.  
- Modifications and updates of structures and records.  
- Account deletion.  
- Various queries such as total balance, client count, etc.

## Example Queries

- Clients ordered by name (descending)  
- Total balances in accounts  
- Number of registered clients  
- Client name, address, and account number

---

## 👩‍💻 Testes do Projeto

Para este projeto, foi necessário testar as seguintes etapas essenciais para garantir o funcionamento correto do sistema bancário:

- Inserção de Dados: Garantir que os dados possam ser corretamente inseridos nas tabelas do banco de dados.
- Atualizações e Manutenções: Testar operações de atualização, modificação e exclusão de registros e estruturas.
- Consultas SQL: Validar consultas para extrair informações relevantes dos dados armazenados.

## 👨‍💻 Project Testing

For this project, it was necessary to test the following key stages to ensure the proper functioning of the banking system:

- Data Insertion: Ensuring data can be correctly inserted into the database tables.
- Updates and Maintenance: Testing update, modification, and deletion operations on records and structures.
- SQL Queries: Validating queries to extract relevant information from the stored data.

## 📝 Inserção de Dados / Data Insertion

```
-- Banco / Bank
INSERT INTO banco (codigo, nome) VALUES (1, 'Banco do Brasil'), (4, 'CEF');

-- Agência / Branch
INSERT INTO agencia (numero_agencia, endereco, cod_banco)
VALUES (322, 'Av Walfredo Macedo Brandão, 1139', 4),
       (1253, 'R Bancário Sérgio Guerra, 17', 1);

-- Cliente / Client
INSERT INTO cliente (cpf, nome, sexo, endereco_cliente)
VALUES 
('111.222.333-44', 'Bruna Andrade', 'F', 'R José Firmino Ferreira, 1050'),
('666.777.888-99', 'Radegondes Silva', 'M', 'Av Epitácio Pessoa, 1008'),
('555.444.777-33', 'Miguel Xavier', 'M', 'R Bancário Sérgio Guerra, 640');

-- Conta / Account
INSERT INTO conta (numero_conta, saldo, tipo_conta, num_agencia)
VALUES 
('11765-2', 22748.05, '2', 322),
('21010-7', 3100.96, '1', 1253);

-- Histórico / History
INSERT INTO historico (cpf_cliente, num_conta, data_inicio)
VALUES 
('111.222.333-44', '11765-2', '2015-12-22'),
('666.777.888-99', '11765-2', '2016-10-05'),
('555.444.777-33', '21010-7', '2012-08-29');

-- Telefone Cliente / Client Phone
INSERT INTO telefone_cliente (cpf_cli, telefone)
VALUES 
('111.222.333-44', '(83)3222-1234'),
('666.777.888-99', '(83)99443-9999'),
('555.444.777-33', '(83)3233-2267');sql

```

## 🔄 Atualizações e Manutenções / Updates and Maintenance

```
-- Exclusão da conta 11765-2 / Delete account 11765-2
DELETE FROM historico WHERE num_conta = '11765-2';
DELETE FROM conta WHERE numero_conta = '11765-2';

-- Atualização do número da agência / Update branch number
UPDATE agencia SET numero_agencia = 6342 WHERE numero_agencia = 322;

-- Modificações no tipo de coluna / Modify column type
ALTER TABLE conta MODIFY numero_conta CHAR(7);

-- Adição de email / Add email
UPDATE cliente SET email = 'radegondes.silva@gmail.com' WHERE nome = 'Radegondes Silva';

-- Aumento de 10% no saldo da conta 21010-7 / Increase balance by 10%
UPDATE conta SET saldo = saldo * 1.10 WHERE numero_conta = '21010-7';

-- Mudança de nome / Change client name
UPDATE cliente SET nome = 'Bruna Fernandes' WHERE nome = 'Bruna Andrade';

-- Atualização do tipo de conta / Update account type
UPDATE conta SET tipo_conta = '3' WHERE saldo > 10000.00;

```

## 🔍 Consultas SQL / SQL Queries

```
-- Nome e sexo dos clientes (ordem decrescente) / Client name and gender (descending)
SELECT nome, sexo FROM cliente ORDER BY nome DESC;

-- Soma dos saldos / Sum of balances
SELECT SUM(saldo) AS total_saldos FROM conta;

-- Quantidade de clientes / Number of clients
SELECT COUNT(*) AS clientes_cadastrados FROM cliente;

-- Nome do cliente, endereço e número da conta / Client name, address and account number
SELECT c.nome, c.endereco_cliente, h.num_conta
FROM cliente c
LEFT JOIN historico h ON c.cpf = h.cpf_cliente;
```
