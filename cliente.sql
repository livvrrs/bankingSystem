CREATE TABLE cliente (
  cpf VARCHAR(15) UNIQUE NOT NULL,
  nome VARCHAR(50) NOT NULL,
  sexo ENUM('F', 'M') NOT NULL,
  endereco_cliente VARCHAR(100) NOT NULL,
  País CHAR(3) DEFAULT 'BRA',
  email VARCHAR(50),
  PRIMARY KEY (cpf)
);