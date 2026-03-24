CREATE DATABASE universidade;
USE universidade;

CREATE TABLE professores (
   id INT PRIMARY KEY,
   nome VARCHAR(100)
);

CREATE TABLE disciplinas (
   id INT PRIMARY KEY,
   nome VARCHAR(100)
);

CREATE TABLE turmas (
   id INT PRIMARY KEY,
   professor_id INT,
   disciplina_id INT,
   FOREIGN KEY (professor_id) REFERENCES professores(id),
   FOREIGN KEY (disciplina_id) REFERENCES disciplinas(id)
);

CREATE TABLE notas (
   id INT PRIMARY KEY,
   turma_id INT,
   nota DECIMAL(5,2),
   FOREIGN KEY (turma_id) REFERENCES turmas(id)
);
