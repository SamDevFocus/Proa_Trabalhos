# O Faxineiro Implacável

Peço desculpas pelo equívoco anterior. Aqui está o README em Markdown:

```markdown
# O Faxineiro Implacável

![Faxineiro](https://emojipedia-us.s3.dualstack.us-west-1.amazonaws.com/thumbs/160/google/298/custodian_1f9ae.png)

**"Quando uma mancha indesejada aparece, não medimos esforços para removê-la, mesmo que isso signifique desafiar as leis dos dados."**

Hoje é o dia de limpar as estantes, organizar livros e evoluir um pouco mais. Nesta atividade, meu objetivo é aprender a lidar com erros, ler (e reler) muito o próprio código e não deixar o desânimo bater. Abaixo, descrevo como realizei essa tarefa.

## Aviso
Antes de prosseguir, é importante lembrar que todos os scripts abaixo devem ser usados e testados no banco de dados apropriado para esta atividade. Utilizamos comandos como ALTER TABLE, DROP, IF EXISTS, IF NOT EXISTS e muito do que foi aprendido em aula.

## Um Lugar para Nossos Livros
A primeira etapa consistiu em criar um banco de dados chamado "Biblioteca". Parece simples, mas é um passo essencial para organizar nossa coleção de livros.

```sql
CREATE DATABASE Biblioteca;
```

## Tirando os Livros das Prateleiras
A seguir, comecei a criar uma pequena biblioteca com livros. No entanto, o script de criação da tabela 'Livros' continha erros que impediam a renderização completa. Meu desafio foi encontrar e corrigir esses erros.

```sql
-- Coloque o script de criação da tabela 'Livros' corrigido aqui.
```

## Retirando o Pó
Continuando com o código acima, realizei as seguintes ações:

1. Adicionei a regra AUTO_INCREMENT para a chave primária e removi os dados referentes ao ID dos livros do script de inserção.

2. Criei uma tabela para 'Autores' e outra para 'Editoras' para separar essas informações. Ambas continham chaves primárias para gerar relacionamentos.

3. Utilizando ALTER TABLE, eliminei as colunas 'autor' e 'editora' da tabela 'Livros' e adicionei as colunas 'autor_id' e 'editora_id' como referências como chaves estrangeiras das respectivas tabelas.

4. Retirei os valores dos autores e das editoras do script inicial e inseri-os nas novas tabelas.

## Colocando Tudo no Lugar
O script abaixo seria para adicionar novos livros à nossa biblioteca, mas com as mudanças feitas para normalização e higienização da base, foi necessário reestruturar a base para evitar problemas. Aqui está o resultado após as correções:

```sql
-- Coloque o script de adição de novos livros após a reestruturação da base.
```

Agora, nossa biblioteca está mais organizada e pronta para receber novos livros. Se tiver alguma dúvida ou sugestão, fique à vontade para compartilhar. :books:
```

Este é um documento Markdown que você pode copiar e colar em um arquivo README.md em seu repositório no GitHub. Certifique-se de adicionar a imagem do Faxineiro (ou a imagem que preferir) ao seu repositório e ajustar o link da imagem no README conforme necessário.