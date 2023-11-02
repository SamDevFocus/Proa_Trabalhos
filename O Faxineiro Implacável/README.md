# O Faxineiro Implacável 🧹

**"Quando uma mancha indesejada aparece, não medimos esforços para removê-la, mesmo que isso signifique desafiar as leis dos dados."**

Hoje é o dia de limpar as estantes, organizar livros e evoluir um pouco mais. Nesta atividade, meu objetivo é aprender a lidar com erros, ler (e reler) muito o próprio código e não deixar o desânimo bater. Abaixo, descrevo como realizei essa tarefa.

## Um Lugar para Nossos Livros

A primeira etapa consistiu em criar um banco de dados chamado "Biblioteca". Parece simples, mas é um passo essencial para organizar nossa coleção de livros.

```sql
CREATE DATABASE Biblioteca;
```

**Título: Biblioteca 📚**

## Tirando os Livros das Prateleiras

A seguir, comecei a criar uma pequena biblioteca com livros. No entanto, o script de criação da tabela 'Livros' continha erros que impediam a renderização completa. Meu desafio foi encontrar e corrigir esses erros.

```sql
CREATE TABLE IF NOT EXISTS Livros (
    livros_id INT AUTO_INCREMENT PRIMARY KEY,
    titulo VARCHAR(255),
    autor_id INT,
    editora_id INT,
    ano_publicacao INT,
    isbn VARCHAR(13)
);
```

**Título: Livros 📖**

Continuando com o código acima, realizei as seguintes ações:

1. Adicionei a regra AUTO_INCREMENT para a chave primária e removi os dados referentes ao ID dos livros do script de inserção.

2. Criei uma tabela para 'Autores' e outra para 'Editoras' para separar essas informações. Ambas continham chaves primárias para gerar relacionamentos.

```sql
CREATE TABLE IF NOT EXISTS Autores (
    autor_id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL
);

CREATE TABLE IF NOT EXISTS Editoras (
    editora_id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL
);
```

**Título: Autores e Editoras 📝**

3. Utilizando ALTER TABLE, eliminei as colunas 'autor_id' e 'editora_id' da tabela 'Livros' e adicionei as colunas 'autor_id' e 'editora_id' como referências como chaves estrangeiras das respectivas tabelas.

```sql
ALTER TABLE Livros
DROP COLUMN autor_id,
DROP COLUMN editora_id;

ALTER TABLE Livros
ADD COLUMN autor_id INT,
ADD COLUMN editora_id INT,
ADD CONSTRAINT fk_autor FOREIGN KEY (autor_id) REFERENCES Autores (autor_id),
ADD CONSTRAINT fk_editora FOREIGN KEY (editora_id) REFERENCES Editoras (editora_id);
```

4. Retirei os valores dos autores e das editoras do script inicial e inseri-os nas novas tabelas.

**Título: Inserindo Autores e Editoras 📝**

```sql
INSERT INTO Autores (nome) VALUES 
('John Green'),
('J.K. Rowling'),
('J.R.R. Tolkien'),
('J.D. Salinger'),
('George Orwell'),
('Rick Riordan');

INSERT INTO Editoras (nome) VALUES 
('Intrínseca'),
('Rocco'),
('Martins Fontes'),
('Little, Brown and Company'),
('Companhia Editora Nacional');
```

Para atualizar os registros na tabela 'Livros' com os IDs corretos dos autores e editoras, executei o seguinte:

```sql
SET SQL_SAFE_UPDATES = 0;

UPDATE Livros
INNER JOIN autores ON Livros.autor_id = autores.nome
INNER JOIN editoras ON Livros.editora_id = editoras.nome
SET Livros.autor_id = autores.autor_id,
Livros.editora_id = editoras.editora_id;

SET SQL_SAFE_UPDATES = 1;
```

Agora, nossa biblioteca está mais organizada e pronta para receber novos livros. Se tiver alguma dúvida ou sugestão, fique à vontade para compartilhar.
