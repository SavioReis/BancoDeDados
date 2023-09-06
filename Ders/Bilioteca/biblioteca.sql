-- create a table
CREATE TABLE Livros (
  id INTEGER PRIMARY KEY AUTO_INCREMENT,
  titulo varchar(50),
  ano varchar(8),
  autor varchar(250)
);
CREATE TABLE Autor (
  id INTEGER PRIMARY KEY AUTO_INCREMENT,
  nome varchar(250),
  data varchar(8),
  endereço varchar(250)
);
CREATE TABLE Leitor (
  id INTEGER PRIMARY KEY AUTO_INCREMENT,
  nome varchar(50),
  data varchar(8),
  endereço varchar(250)
);
CREATE TABLE Emprestimo (
  id INTEGER PRIMARY KEY AUTO_INCREMENT,
  data_emp varchar(8),
  nome_emp varchar(250),
  id_leitor INTEGER FOREIGN KEY REFERENCES Leitor(id)
);

