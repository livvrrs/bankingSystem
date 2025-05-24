CREATE TABLE conta (
  numero_conta CHAR(7) NOT NULL,
  saldo DECIMAL(10, 2),
  tipo_conta CHAR(8) NOT NULL,
  num_agencia INT NOT NULL,
  PRIMARY KEY (numero_conta),
  FOREIGN KEY (num_agencia) REFERENCES agencia(numero_agencia)
);