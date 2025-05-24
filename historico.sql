CREATE TABLE historico (
  num_conta CHAR(7),
  cpf_cliente VARCHAR(15),
  data_inicio DATE NOT NULL,
  FOREIGN KEY (num_conta) REFERENCES conta(numero_conta),
  FOREIGN KEY (cpf_cliente) REFERENCES cliente(cpf)
);