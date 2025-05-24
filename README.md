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

## 📝 Inserção de Dados / Data Insertion

```sql
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
('555.444.777-33', '(83)3233-2267');
