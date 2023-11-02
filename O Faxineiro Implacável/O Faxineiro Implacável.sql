-- create database Biblioteca;

-- use biblioteca;

-- DROP TABLE Livros;


CREATE TABLE IF NOT EXISTS Livros (
	livros_id INT AUTO_INCREMENT PRIMARY KEY,
    titulo VARCHAR(255),
    autor VARCHAR(255),
    editora VARCHAR(255),
    ano_publicacao INT,
    isbn VARCHAR(13)
);

-- INSERT INTO Livros (titulo, autor, editora, ano_publicacao, isbn) VALUES 
-- ('A Culpa é das Estrelas', 'John Green', 'Intrínseca', 2012, '9788580573466'),
-- ('Harry Potter e a Pedra Filosofal', 'J.K. Rowling', 'Rocco', 1997, '9788532511010'),
-- ('O Senhor dos Anéis: A Sociedade do Anel', 'J.R.R. Tolkien', 'Martins Fontes', 1954, '9788533603149'),
-- ('The Catcher in the Rye', 'J.D. Salinger', 'Little, Brown and Company', '1951', '9780316769488'),
-- ('1984', 'George Orwell', 'Companhia Editora Nacional', 1949, '9788522106169'),
-- ('Percy Jackson e o Ladrão de Raios', 'Rick Riordan', 'Intrínseca', 2005, '9788598078355'),
-- ('Grande Sertão: Veredas', 'João Guimarães Rosa', 'Nova Fronteira', 1956, '9788520923251'),
-- ('Memórias Póstumas de Brás Cubas', 'Machado de Assis', 'Companhia das Letras', 1881, '9788535910663'),
-- ('Vidas Secas', 'Graciliano Ramos', 'Companhia Editora Nacional', 1938, '9788572326972'),
-- ('O Alienista', 'Machado de Assis', 'Martin Claret', 1882, '9788572327429'),
-- ('O Cortiço', 'Aluísio Azevedo', 'Penguin Companhia', 1890, '9788579027048'),
-- ('Dom Casmurro', 'Machado de Assis', 'Penguin Companhia', 1899, '9788583862093'),
-- ('Macunaíma', 'Mário de Andrade', 'Companhia Editora Nacional', 1928, '9788503012302');

CREATE TABLE IF NOT EXISTS Autores (
    autor_id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL
);

CREATE TABLE IF NOT EXISTS Editoras (
    editora_id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL
);

-- ALTER TABLE Livros
-- DROP COLUMN autor,
-- DROP COLUMN editora;

-- ALTER TABLE Livros
-- ADD COLUMN autor_id INT,
-- ADD COLUMN editora_id INT,
-- ADD CONSTRAINT fk_autor FOREIGN KEY (autor_id) REFERENCES Autores (autor_id),
-- ADD CONSTRAINT fk_editora FOREIGN KEY (editora_id) REFERENCES Editoras (editora_id);

-- INSERT INTO Autores (nome) VALUES 
-- ('John Green'),
-- ('J.K. Rowling'),
-- ('J.R.R. Tolkien'),
-- ('J.D. Salinger'),
-- ('George Orwell'),
-- ('Rick Riordan');

-- INSERT INTO Editoras (nome) VALUES 
-- ('Intrínseca'),
-- ('Rocco'),
-- ('Martins Fontes'),
-- ('Little, Brown and Company'),
-- editora_ideditora_id('Companhia Editora Nacional');

-- SET SQL_SAFE_UPDATES = 0;

UPDATE Livros
INNER JOIN autores ON Livros.autor_id = autores.nome
INNER JOIN editoras ON Livros.editora_id = editoras.nome
SET Livros.autor_id = autores.autor_id,
Livros.editora_id = editoras.editora_id;

-- SET SQL_SAFE_UPDATES = 1;

SELECT * FROM Livros;

-- Para ver as tabelas existentes no banco de dados:
-- SHOW TABLES;

-- Para ver as informações sobre as colunas da tabela Livros:
-- DESCRIBE Livros;

-- Esse comando irá desabilitar o modo de atualização segura para a sua sessão atual, 
-- permitindo que você atualize a tabela sem um WHERE que use uma coluna chave. No entanto, 
-- lembre-se de reativar o modo de atualização segura depois de terminar a sua consulta, usando o seguinte comando:
-- SET SQL_SAFE_UPDATES = 0;

-- um WHERE que use uma coluna chave na sua consulta, para especificar quais linhas você quer atualizar.
-- Por exemplo, se você quiser atualizar apenas os livros publicados depois de 2000, você pode usar o seguinte comando:
-- UPDATE Livros
-- INNER JOIN autores ON Livros.autor_id = autores.nome
-- INNER JOIN editoras ON Livros.editora_id = editoras.nome
-- SET Livros.autor_id = autores.autor_id,
-- Livros.editora_id = editoras.editora_id
-- WHERE Livros.ano_publicacao > 2000;