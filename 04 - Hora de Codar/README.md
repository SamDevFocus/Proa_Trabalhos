# Hora de Codar 4 🚀

Oi pessoal, hoje vou contar como resolvi as tarefas da atividade "Hora de Codar 4". Foi um desafio divertido, e aqui estão os passos que segui para cada uma das tarefas:

## Tarefa 1: Cadastro de Estudantes 📚

A primeira tarefa consistia em criar um programa que permitisse o cadastro ilimitado de estudantes e, quando o usuário digitar "PARE," exibir a quantidade de estudantes cadastrados e a lista deles. 

Primeiro, criei uma lista vazia para armazenar os nomes dos estudantes. Depois, entrei em um loop while que continuaria a pedir ao usuário que digitasse nomes de estudantes até que a palavra "PARE" fosse inserida. Usei a função `append` para adicionar os nomes à lista.

Ao final, exibi a quantidade de estudantes cadastrados e a lista com seus nomes. Ficou algo assim:

```python
estudantes = []

while True:
    nome = input("Digite o nome do estudante (ou 'PARE' para encerrar): ")
    if nome == "PARE":
        break
    estudantes.append(nome)

print(f"Quantidade de estudantes cadastrados: {len(estudantes)}")
print("Lista de estudantes:")
for estudante in estudantes:
    print(estudante)
```

Emoji: 👩‍🎓👨‍🎓

## Tarefa 2: Planetas 🪐

Na segunda tarefa, a ideia era criar uma lista de planetas e verificar se o planeta informado pelo usuário estava na lista.

Comecei definindo uma lista de planetas e, em seguida, usei um loop `for` para percorrer a lista e verificar se o planeta fornecido pelo usuário estava presente.

Aqui está como fiz:

```python
planetas = ["Terra", "Marte", "Plutão", "Vênus", "Júpiter", "Saturno"]
planeta_usuario = input("Digite o nome de um planeta: ")

if planeta_usuario in planetas:
    print("O planeta está na lista!")
else:
    print("O planeta não está na lista.")
```

Emoji: 🌍🪐

## Tarefa 3: Lista de Compras 🍎🍌🍊

Na última tarefa, o objetivo era criar uma lista de compras de frutas, permitindo ao usuário adicionar ou remover frutas da lista.

Primeiro, criei uma lista de frutas e usei um loop `while` para mostrar a lista ao usuário. Em seguida, pedi ao usuário para inserir o nome de uma fruta para remover. Usei a função `remove` para fazer isso. 

E, claro, verifiquei se a fruta estava na lista ou não, exibindo mensagens apropriadas. Quando a lista de compras estava vazia, mostrei a mensagem "Lista de compras finalizada."

Aqui está o código:

```python
frutas = ["Maçã", "Banana", "Laranja", "Uva", "Pera"]
while frutas:
    print("Lista de frutas: ", frutas)
    fruta_usuario = input("Digite o nome de uma fruta para remover (ou 'PARE' para encerrar): ")
    if fruta_usuario == "PARE":
        break
    if fruta_usuario in frutas:
        frutas.remove(fruta_usuario)
        print(f"{fruta_usuario} foi retirada da lista.")
    else:
        print("Fruta indisponível no nosso mercado.")

print("Lista de compras finalizada.")
```

Emoji: 🍎🛒

E assim, completei as três tarefas da "Hora de Codar 4". Espero que isso ajude você a entender como abordei cada problema. Divirta-se programando! 😊💻