# Os Segredos do Hospital

Este repositório contém o código SQL para a implementação de um banco de dados relacionado ao sistema hospitalar, como parte de uma atividade do curso. O projeto inicial visava gerenciar informações básicas, mas houve a necessidade de expandir as funcionalidades para incluir o controle de internações de pacientes.

- **Tabelas Adicionadas:**
  - `room_type`: Descreve os tipos de quartos disponíveis no hospital.
  - `plan`: Representa os planos de saúde.
  - `specialty`: Contém informações sobre as especialidades médicas.
  - `medication`: Armazena dados sobre os medicamentos disponíveis no hospital.
  - `room`: Reflete os quartos disponíveis no hospital.
  - `patient`: Contém informações sobre os pacientes.
  - `doctor`: Armazena dados dos médicos.
  - `nurse`: Contém informações sobre os enfermeiros.
  - `hospitalization`: Registra dados relacionados às internações.
  - `consultation`: Mantém informações sobre as consultas realizadas.
  - `prescription`: Armazena as receitas médicas.

## Diagrama do Banco de Dados 
![Diagrama Completo](1.jpg) 
## Relacionamentos Detalhados 
![Relacionamentos Detalhados](2.jpg)

## Código SQL

Abaixo está o código SQL que implementa o banco de dados atualizado:

```sql

-- O código SQL está disponível no arquivo `hospital_database.sql` neste repositório.

CREATE DATABASE hospital;

```

## Contribuições

Contribuições são bem-vindas! Sinta-se à vontade para propor melhorias, corrigir bugs ou adicionar novos recursos.

🚀 Boa codificação!

---

*Este projeto faz parte da atividade "Os Segredos do Hospital" do curso [Proa].*
