CREATE TABLE agencia (
  cod_banco INT,
  numero_agencia INT NOT NULL,
  endereco VARCHAR(100),
  PRIMARY KEY (numero_agencia),
  FOREIGN KEY (cod_banco) REFERENCES banco(codigo)
);