CREATE DATABASE corporativo;
USE corporativo;

CREATE TABLE departamentos (
   id INT PRIMARY KEY,
   nome VARCHAR(100)
);

CREATE TABLE funcionarios (
   id INT PRIMARY KEY,
   nome VARCHAR(100),
   salario DECIMAL(10,2),
   departamento_id INT,
   FOREIGN KEY (departamento_id) REFERENCES departamentos(id)
);
