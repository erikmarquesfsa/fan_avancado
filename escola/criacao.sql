CREATE DATABASE escola;
USE escola;

CREATE TABLE alunos (
   id INT PRIMARY KEY,
   nome VARCHAR(100)
);

CREATE TABLE disciplinas (
   id INT PRIMARY KEY,
   nome VARCHAR(100)
);

CREATE TABLE notas (
   id INT PRIMARY KEY,
   aluno_id INT,
   disciplina_id INT,
   nota DECIMAL(5,2),
   FOREIGN KEY (aluno_id) REFERENCES alunos(id),
   FOREIGN KEY (disciplina_id) REFERENCES disciplinas(id)
);
