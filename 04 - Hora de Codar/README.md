# Hora de Codar 4 🚀

Oi pessoal, hoje vou contar como resolvi as tarefas da atividade "Hora de Codar 4". Foi um desafio divertido, e aqui estão os passos que segui para cada uma das tarefas:

## Tarefa 1: Cadastro de Estudantes 📚

A primeira tarefa consistia em criar um programa que permitisse o cadastro ilimitado de estudantes e, quando o usuário digitar "PARE," exibir a quantidade de estudantes cadastrados e a lista deles. 

Primeiro, criei uma lista vazia para armazenar os nomes dos estudantes. Depois, entrei em um loop while que continuaria a pedir ao usuário que digitasse nomes de estudantes até que a palavra "PARE" fosse inserida. Usei a função `append` para adicionar os nomes à lista.

Ao final, exibi a quantidade de estudantes cadastrados e a lista com seus nomes. Ficou algo assim:

```js
// Cria uma array vazia para armazenar os estudantes
var estudantes = [];

// Cria uma variável para controlar o loop
var continuar = true;

// Cria um loop que pede o nome do estudante ao usuário e adiciona na array
while (continuar) {
  // Pede o nome do estudante ao usuário
  var nome = prompt("Digite o nome do estudante ou PARE para encerrar");

  // Verifica se o usuário digitou PARE
  if (nome == "PARE") {
    // Muda a variável de controle para false, encerrando o loop
    continuar = false;
  } else {
    // Adiciona o nome do estudante na array
    estudantes.push(nome);
  }
}

// Exibe a quantidade de estudantes cadastrados
alert("Você cadastrou " + estudantes.length + " estudantes");

// Exibe a lista de estudantes cadastrados
alert("A lista de estudantes é: " + estudantes.join(", "));
```

## Tarefa 2: Planetas 🪐🌍

Na segunda tarefa, a ideia era criar uma lista de planetas e verificar se o planeta informado pelo usuário estava na lista.

Comecei definindo uma lista de planetas e, em seguida, usei um loop `for` para percorrer a lista e verificar se o planeta fornecido pelo usuário estava presente.

Aqui está como fiz:

```js
// Cria uma array de planetas
var planetas = ["Terra", "Marte", "Plutão", "Vênus", "Júpiter", "Saturno"];

// Pede ao usuário para digitar o nome de um planeta
var planeta = prompt("Digite o nome de um planeta");

// Verifica se o planeta está na array usando o método indexOf
// Se o método retornar -1, significa que o planeta não foi encontrado na array
if (planetas.indexOf(planeta) == -1) {
  // Informa ao usuário que o planeta não está na array
  alert("O planeta " + planeta + " não está na lista");
} else {
  // Informa ao usuário que o planeta está na array
  alert("O planeta " + planeta + " está na lista");
}
```

## Tarefa 3: Lista de Compras 🍎🍌🍊

Na última tarefa, o objetivo era criar uma lista de compras de frutas, permitindo ao usuário adicionar ou remover frutas da lista.

Primeiro, criei uma lista de frutas e usei um loop `while` para mostrar a lista ao usuário. Em seguida, pedi ao usuário para inserir o nome de uma fruta para remover. Usei a função `remove` para fazer isso. 

E, claro, verifiquei se a fruta estava na lista ou não, exibindo mensagens apropriadas. Quando a lista de compras estava vazia, mostrei a mensagem "Lista de compras finalizada."

Aqui está o código:

```js
// Cria uma array de frutas
var frutas = ["banana", "maçã", "laranja", "manga", "uva"];

// Exibe a array de frutas ao usuário usando o método join para separar os elementos por vírgula
alert("A lista de frutas é: " + frutas.join(", "));

// Cria uma variável para controlar o loop
var continuar = true;

// Cria um loop que pede ao usuário para digitar o nome de uma fruta e remove da array se estiver presente
while (continuar) {
  // Pede ao usuário para digitar o nome de uma fruta
  var fruta = prompt("Digite o nome de uma fruta para remover da lista ou PARE para encerrar");

  // Verifica se o usuário digitou PARE
  if (fruta == "PARE") {
    // Muda a variável de controle para false, encerrando o loop
    continuar = false;
  } else {
    // Verifica se a fruta está na array usando o método indexOf
    // Se o método retornar -1, significa que a fruta não foi encontrada na array
    if (frutas.indexOf(fruta) == -1) {
      // Informa ao usuário que a fruta não está na array
      alert("Fruta indisponível no nosso mercado");
    } else {
      // Remove a fruta da array usando o método splice
      // O método splice recebe dois argumentos: o índice do elemento a ser removido e a quantidade de elementos a serem removidos
      frutas.splice(frutas.indexOf(fruta), 1);

      // Informa ao usuário que a fruta foi retirada da lista
      alert("Fruta foi retirada da lista");
    }
  }

  // Verifica se a array de frutas está vazia
  if (frutas.length == 0) {
    // Muda a variável de controle para false, encerrando o loop
    continuar = false;

    // Informa ao usuário que a lista de compras foi finalizada
    alert("Lista de compras finalizada");
  }
}

```

E assim, completei as três tarefas da "Hora de Codar 4". Espero que isso ajude você a entender como abordei cada problema. Divirta-se programando! 😊💻
