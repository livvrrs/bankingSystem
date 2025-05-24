CREATE TABLE telefone_cliente (
  cpf_cli VARCHAR(15),
  telefone VARCHAR(15) NOT NULL,
  FOREIGN KEY (cpf_cli) REFERENCES cliente(cpf)
);