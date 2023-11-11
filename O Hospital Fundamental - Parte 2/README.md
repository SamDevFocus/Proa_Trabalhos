# Os Segredos do Hospital

Este repositório contém o código SQL para a implementação de um banco de dados relacionado ao sistema hospitalar, como parte de uma atividade do curso. O projeto inicial visava gerenciar informações básicas, mas houve a necessidade de expandir as funcionalidades para incluir o controle de internações de pacientes.

## Expansão das Funcionalidades

Após a primeira versão do projeto, foram identificados requisitos adicionais para a versão atualizada do software. Agora, o sistema contempla o controle de internações, vinculando-as a quartos, profissionais de enfermagem, pacientes e médicos. Abaixo estão os principais elementos adicionados:

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
![Diagrama Completo](1.png) 
## Relacionamentos Detalhados 
![Relacionamentos Detalhados](2.png)

## Código SQL

Abaixo está o código SQL que implementa o banco de dados atualizado:

```sql
-- O código SQL está disponível no arquivo `hospital_database.sql` neste repositório.

-- drop database hospital;

-- Cria o banco de dados hospital
CREATE DATABASE hospital;

-- Seleciona o banco de dados hospital
USE hospital;

-- Cria a tabela room_type
CREATE TABLE room_type (
  room_type_id INT PRIMARY KEY AUTO_INCREMENT, -- Identificador único do tipo de quarto
  descricao VARCHAR(250) NOT NULL, -- Descrição do tipo de quarto
  daily_rate DECIMAL(10,2) NOT NULL -- Valor da diária do tipo de quarto
);

-- Cria a tabela plan
CREATE TABLE plan (
  plan_id INT PRIMARY KEY AUTO_INCREMENT, -- Identificador único do plano de saúde
  plan_name VARCHAR(40) NOT NULL, -- Nome do plano de saúde
  plan_phone VARCHAR(16) NOT NULL, -- Telefone do plano de saúde
  plan_duration VARCHAR(10) NOT NULL -- Duração do plano de saúde
);

-- Cria a tabela specialty
CREATE TABLE specialty (
  specialty_id INT PRIMARY KEY AUTO_INCREMENT, -- Identificador único da especialidade
  specialty_type VARCHAR(40) NOT NULL, -- Tipo da especialidade
  consultation_fee DECIMAL(10,2) NOT NULL -- Valor da consulta da especialidade
);

-- Cria a tabela medication
CREATE TABLE medication (
  medication_id INT PRIMARY KEY AUTO_INCREMENT, -- Identificador único do medicamento
  medication_name VARCHAR(50) NOT NULL, -- Nome do medicamento
  medication_description VARCHAR(255) NOT NULL, -- Descrição do medicamento
  medication_price DECIMAL(10,2) NOT NULL, -- Preço do medicamento
  medication_stock INT NOT NULL -- Estoque do medicamento
);

-- Cria a tabela room
CREATE TABLE room (
  room_id INT PRIMARY KEY AUTO_INCREMENT, -- Identificador único do quarto
  room_number VARCHAR(40) NOT NULL, -- Número do quarto
  room_type_id INT NOT NULL, -- Identificador do tipo de quarto
  FOREIGN KEY (room_type_id) REFERENCES room_type (room_type_id) -- Relaciona o quarto com o tipo de quarto
);

-- Cria a tabela patient
CREATE TABLE patient (
  patient_id INT PRIMARY KEY AUTO_INCREMENT, -- Identificador único do paciente
  plan_id INT NOT NULL, -- Identificador do plano de saúde do paciente
  patient_name VARCHAR(40) NOT NULL, -- Nome do paciente
  birth_date DATE NOT NULL, -- Data de nascimento do paciente
  phone VARCHAR(15) NOT NULL, -- Telefone do paciente
  cpf VARCHAR(11) NOT NULL, -- CPF do paciente
  rg VARCHAR(9) NOT NULL, -- RG do paciente
  email VARCHAR(30) NOT NULL, -- E-mail do paciente
  address VARCHAR(40) NOT NULL, -- Endereço do paciente
  FOREIGN KEY (plan_id) REFERENCES plan (plan_id) -- Relaciona o paciente com o plano de saúde
);

-- Cria a tabela doctor
CREATE TABLE doctor (
  doctor_id INT PRIMARY KEY AUTO_INCREMENT, -- Identificador único do médico
  doctor_name VARCHAR(40) NOT NULL, -- Nome do médico
  birth_date DATE NOT NULL, -- Data de nascimento do médico
  crm VARCHAR(10) NOT NULL, -- Número do CRM do médico
  specialty_id INT NOT NULL REFERENCES specialty (specialty_id), -- Identificador da especialidade do médico
  phone VARCHAR(15) NOT NULL, -- Telefone do médico
  cpf VARCHAR(11) NOT NULL, -- CPF do médico
  rg VARCHAR(9) NOT NULL, -- RG do médico
  email VARCHAR(30) NOT NULL, -- E-mail do médico
  address VARCHAR(40) NOT NULL -- Endereço do médico
);

-- Cria a tabela nurse
CREATE TABLE nurse (
  nurse_id INT PRIMARY KEY AUTO_INCREMENT, -- Identificador único do enfermeiro
  nurse_name VARCHAR(40) NOT NULL, -- Nome do enfermeiro
  birth_date DATE NOT NULL, -- Data de nascimento do enfermeiro
  cre VARCHAR(10) NOT NULL, -- Número do CRE do enfermeiro
  phone VARCHAR(15) NOT NULL, -- Telefone do enfermeiro
  cpf VARCHAR(11) NOT NULL, -- CPF do enfermeiro
  rg VARCHAR(9) NOT NULL, -- RG do enfermeiro
  email VARCHAR(30) NOT NULL, -- E-mail do enfermeiro
  address VARCHAR(40) NOT NULL -- Endereço do enfermeiro
);

-- Cria a tabela hospitalization
CREATE TABLE hospitalization (
  hospitalization_id INT PRIMARY KEY AUTO_INCREMENT, -- Identificador único da internação
  procedimento VARCHAR(40) NOT NULL, -- Procedimento realizado na internação
  patient_id INT NOT NULL REFERENCES patient (patient_id), -- Identificador do paciente internado
  nurse_id INT NOT NULL REFERENCES nurse (nurse_id), -- Identificador do enfermeiro responsável pela internação
  doctor_id INT NOT NULL REFERENCES doctor (doctor_id), -- Identificador do médico responsável pela internação
  room_id INT NOT NULL REFERENCES room (room_id), -- Identificador do quarto onde o paciente está internado
  entry_date DATE NOT NULL, -- Data de entrada do paciente na internação
  expected_date DATE NOT NULL, -- Data prevista de saída do paciente da internação
  exit_date DATE -- Data efetiva de saída do paciente da internação
);

-- Cria a tabela consultation
CREATE TABLE consultation (
  consultation_id INT PRIMARY KEY AUTO_INCREMENT, -- Identificador único da consulta
  patient_id INT NOT NULL, -- Identificador do paciente que realizou a consulta
  doctor_id INT NOT NULL, -- Identificador do médico que realizou a consulta
  prescription_id INT, -- Identificador da receita gerada na consulta
  FOREIGN KEY (patient_id) REFERENCES patient (patient_id), -- Relaciona a consulta com o paciente
  FOREIGN KEY (doctor_id) REFERENCES doctor (doctor_id) -- Relaciona a consulta com o médico
);

-- Cria a tabela prescription
CREATE TABLE prescription (
  prescription_id INT PRIMARY KEY AUTO_INCREMENT, -- Identificador único da receita
  doctor_id INT NOT NULL, -- Identificador do médico que gerou a receita
  medication_id INT NOT NULL, -- Identificador do medicamento prescrito na receita
  usage_mode VARCHAR(255) NOT NULL, -- Modo de uso do medicamento na receita
  FOREIGN KEY (doctor_id) REFERENCES doctor (doctor_id), -- Relaciona a receita com o médico
  FOREIGN KEY (medication_id) REFERENCES medication (medication_id) -- Relaciona a receita com o medicamento
);

```

## Instruções de Uso

1. Execute o script SQL no seu sistema de gerenciamento de banco de dados para criar o banco de dados e suas tabelas.
2. Adapte o código conforme necessário para atender aos requisitos específicos do seu ambiente.

## Contribuições

Contribuições são bem-vindas! Sinta-se à vontade para propor melhorias, corrigir bugs ou adicionar novos recursos.

## Contato

Para mais informações ou dúvidas, entre em contato com [seu_nome@exemplo.com].

🚀 Boa codificação!

---

*Este projeto faz parte da atividade "Os Segredos do Hospital" do curso [Nome do Curso].*
