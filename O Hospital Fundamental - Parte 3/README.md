# Os Segredos do Hospital

Este repositório contém o código SQL para a implementação de um banco de dados relacionado ao sistema hospitalar, como parte de uma atividade do curso. Na Parte 3, realizamos o povoamento das tabelas desenvolvidas nas partes anteriores, incluindo dados detalhados sobre médicos, especialidades, pacientes, consultas, convênios médicos, internações e muito mais.

- **Tabelas Adicionadas e Atualizadas:**
  - `doctor`: Incluímos pelo menos dez médicos de diferentes especialidades.
  - `specialty`: Acrescentamos ao menos sete especialidades, como pediatria, clínica geral, gastrenterologia e dermatologia.
  - `patient`: Registramos informações de pelo menos 15 pacientes.
  - `consultation`: Registrados 20 consultas com diferentes pacientes e médicos, com receituário para pelo menos dez consultas com dois ou mais medicamentos.
  - `plan`: Incluímos pelo menos quatro convênios médicos, associados a cinco pacientes e cinco consultas.
  - `doctor_specialty`: Criamos uma entidade de relacionamento entre médico e especialidade.
  - `hospitalization_nurse`: Criamos uma entidade de relacionamento entre internação e enfermeiro.
  - `hospitalization`: Arrumamos a chave estrangeira do relacionamento entre convênio e médico, e adicionamos uma entidade entre internação e enfermeiro, com chaves estrangeiras dentro da internação (Chaves Médico e Paciente).
  - `room_type`: Considerando a operação do sistema, adicionamos ao menos três tipos de quartos (apartamentos, quartos duplos e enfermarias) com valores diferentes.
  - `room`: Incluímos informações de pelo menos três quartos.
  - `nurse`: Adicionamos dados de dez profissionais de enfermaria, associando cada internação a pelo menos dois enfermeiros.
  
## Diagrama do Banco de Dados 
![Diagrama Completo](https://github.com/SamDevFocus/Proa_Trabalhos/raw/master/O%20Hospital%20Fundamental%20-%20Parte%202/1.jpg) 
## Relacionamentos Detalhados 
![Relacionamentos Detalhados](https://github.com/SamDevFocus/Proa_Trabalhos/raw/master/O%20Hospital%20Fundamental%20-%20Parte%202/2.jpg)

## Código SQL

O código SQL para a criação do banco de dados está disponível no arquivo `hospital_database.sql` na [Parte 2](link_para_parte_2_do_repositorio) deste repositório.

## Povoamento das Tabelas

Os scripts de povoamento para as tabelas estão disponíveis nos arquivos deste repositório. Consulte os seguintes arquivos para ver os dados adicionados:

- `povoamento das tabelas.sql`

## Contribuições

Contribuições são bem-vindas! Sinta-se à vontade para propor melhorias, corrigir bugs ou adicionar novos recursos.

🚀 Boa codificação!

---

*Este projeto faz parte da atividade "O Prisioneiro dos Dados" do curso [Proa].*
