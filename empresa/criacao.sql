CREATE DATABASE empresa;
USE empresa;

CREATE TABLE funcionarios (
   id INT PRIMARY KEY,
   nome VARCHAR(100),
   salario DECIMAL(10,2),
   departamento VARCHAR(100)
);
