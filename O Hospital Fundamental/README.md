# O Hospital Fundamental

## História do Projeto 🏥

Em um pequeno hospital local, uma emocionante jornada para o desenvolvimento de um novo sistema começa. Neste momento, a instituição ainda depende de planilhas e registros antigos, mas busca modernizar suas operações por meio de um sistema eficiente. Vamos explorar os requisitos para o banco de dados desse projeto através de um envolvente Diagrama Entidade-Relacionamento (ER).

## Requisitos do Banco de Dados 📋

1. **Médicos** 👨‍⚕️
   - Os médicos podem ser classificados como generalistas, especialistas ou residentes.
   - Os dados pessoais dos médicos são registrados e incluem nome, CPF, RG, endereço, telefone e e-mail.
   - Cada médico pode ter uma ou mais especialidades, como pediatria, clínica geral, gastroenterologia e dermatologia.
   - Alguns registros médicos antigos ainda estão em formato de papel e devem ser transferidos para o novo sistema.

2. **Pacientes** 👤
   - Os pacientes têm seus próprios registros, contendo informações pessoais, como nome, data de nascimento, endereço, telefone e e-mail.
   - Documentos como CPF e RG são necessários para cada paciente.
   - Os pacientes podem estar associados a um convênio, com detalhes como nome do convênio, CNPJ e tempo de carência.

3. **Consultas** 📅
   - As consultas são registradas com informações como data, hora, médico responsável, paciente, valor da consulta e nome do convênio com o número da carteira.
   - Cada consulta deve indicar a especialidade médica procurada pelo paciente.

4. **Receita Médica** 💊
   - Durante o encerramento da consulta, o médico deve ser capaz de registrar os medicamentos receitados, incluindo nome, quantidade e instruções de uso.
   - O sistema deve permitir a impressão de um relatório da receita para o paciente ou sua visualização via internet.

## Diagrama ER 📊

Com base nos requisitos acima, o Diagrama ER para o projeto de banco de dados ficaria assim:
 ![Texto alternativo](https://github.com/SamDevFocus/Proa_Trabalhos/blob/master/O%20Hospital%20Fundamental/Novo%20mural.jpeg?raw=true)
