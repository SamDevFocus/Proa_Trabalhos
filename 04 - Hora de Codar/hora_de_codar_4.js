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

/* ------------------------------------------------------------------------------------------------------------------------------- */

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

/* ------------------------------------------------------------------------------------------------------------------------------- */

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

