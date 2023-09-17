var saldo = 100.5; //Variavel Global
var nomeUsuario;
var senhaCorreta = '3589';

function inicio() {

    nomeUsuario = prompt("digite seu nome");
    alert(`bem vindo ao caixa eletrônico ${nomeUsuario}`);

    //ESCOPO
    //Variavel Local
    /* var escolha = parseInt(prompt('Selecione uma opção:\n (1-Saldo)\n (2-Depósito) (3-Saque)\n (4-Sair)')); */
    while (true) {

        var menu = parseInt(prompt(
            "Escolha uma opção:\n" + 
            "1. Saldo\n" +
            "2. Extrato\n" +
            "3. Saque\n" +
            "4. Depósito\n" +
            "5. Transferência\n" +
            "6. Sair"
        ));


        switch(menu){
            case 1: 
                ver_saldo();
                break;
            case 2:
                ver_extrato();
                break;
            case 3: 
                fazer_saque();
                break;
            case 4:
                fazer_deposito();
                break;
            case 5: 
                fazer_transferencia();
                break;
            case 6:
                sair();
                break;
            default:
                erro();
                
            }
        }
    }   
            
   
function ver_saldo() {
    /*senha */
    var senha = prompt("Digite sua senha:");
    if (senha !== senhaCorreta) {
        alert("Senha incorreta. Tente novamente.");
        return; // Saia da função em caso de senha incorreta
    }

    alert(`Seu saldo é R$${saldo.toFixed(2)}`);
}

// Funcionalidade para rastrear transações e exibir o extrato
var extrato = [];

function ver_extrato() {
    /*senha */
    senha = prompt("Digite sua senha:");
    if (senha !== senhaCorreta) {
        alert("Senha incorreta. Tente novamente.");
        return; // Saia da função em caso de senha incorreta
    }

    if (extrato.length === 0) {
        alert("Extrato:\nNenhuma transação encontrada.");
    } else {
        alert("Extrato:\n" + extrato.join("\n"));
    }
}

function fazer_saque() {
    /*senha */

    senha = prompt("Digite sua senha:");
    if (senha !== senhaCorreta) {
        alert("Senha incorreta. Tente novamente.");
        return; // Saia da função em caso de senha incorreta
    }

    var saque = parseFloat(prompt('Qual o valor para saque?'));
    if (isNaN(saque) || saque <= 0 || saque > saldo) {
        alert('Operação não autorizada. Verifique o valor do saque.');
        return; // Saia da função em caso de valor inválido
    }

    saldo -= saque;
    extrato.push(`Saque: - R$${saque.toFixed(2)}`);
    alert('Saque realizado com sucesso.');
}

function fazer_deposito() {
    var deposito = parseFloat(prompt('Qual o valor para depósito?'));
    if (isNaN(deposito) || deposito <= 0) {
        alert('Operação não autorizada. Verifique o valor do depósito.');
        return; // Saia da função em caso de valor inválido
    }

    saldo += deposito;
    extrato.push(`Depósito: + R$${deposito.toFixed(2)}`);
    alert('Depósito realizado com sucesso.');
}

function fazer_transferencia() {
    
    senha = prompt("Digite sua senha:");
    if (senha !== senhaCorreta) {
        alert("Senha incorreta. Tente novamente.");
        return; // Saia da função em caso de senha incorreta
    }

    var valorTransferencia = parseFloat(prompt('Qual o valor para transferência?'));
    if (isNaN(valorTransferencia) || valorTransferencia <= 0 || valorTransferencia > saldo) {
        alert('Operação não autorizada. Verifique o valor da transferência.');
        return; // Saia da função em caso de valor inválido
    }

    var contaDestino = prompt('Digite o número da conta de destino:');
    if (isNaN(contaDestino)) {
        alert('Operação não autorizada. Verifique o número de conta de destino.');
        return; // Saia da função em caso de valor inválido
    }

    extrato.push(`Transferência para conta ${contaDestino}: - R$${valorTransferencia.toFixed(2)}`);
    saldo -= valorTransferencia;
    /* saldo -= valorTransferencia; */
    alert('Transferência realizada com sucesso.');
}

function erro() {
    alert('Por favor, informe um número entre 1 e 6.');
}

function sair() {
    alert(`Obrigado por utilizar nossos serviços, ${nomeUsuario}, foi um prazer ter você por aqui!`);
    window.close();
   
}

inicio();




