// const variaveis = {};
// var i = 0;

// function criarVariavel(nome, valor) {
//     variaveis[nome] = valor;
// }

// while (true) {


//   criarVariavel("usuario"+i, nome_usuario);


//   console.log(variaveis.minhaVariavel1); 
//   console.log(variaveis.outraVariavel); 

//   i++;

//   var continuar = prompt("Deseja continuar? (Sim/Não)").toLowerCase();
//   if (continuar !== "sim") {
//     break;
//   }
// }



const variaveis = {};
let i = 0;

function criarVariavel(nome, valor) {
  variaveis[nome] = valor;
}

while (true) {
  const nome_usuario = prompt("Digite o nome do usuário:");
  criarVariavel("usuario" + i, nome_usuario);

  console.log(variaveis["usuario" + i]);

  i++;

  const continuar = prompt("Deseja continuar? (Sim/Não)").toLowerCase();
  if (continuar !== "sim") {
    break;
  }
}