# Atividade: Atualização de Status dos Médicos

**Objetivo:** Realizar alterações no banco de dados do Projeto do Hospital, adicionando uma nova coluna e atualizando o status de atuação dos médicos.

## Descrição da Atividade:

1. **Adição da Coluna:**
   - Adicione a coluna "em_atividade" à tabela "doctor" para indicar se um médico está atuando no hospital ou não.

```sql
-- Adiciona a coluna "em_atividade" à tabela "doctor"
ALTER TABLE doctor
ADD COLUMN em_atividade BOOLEAN;
```

2. **Atualização de Status:**
   - Atualize ao menos dois médicos como inativos.
   - Atualize os demais médicos como ativos.

```sql
-- Atualiza dois médicos como inativos
UPDATE doctor
SET em_atividade = FALSE
WHERE doctor_id IN (5, 8);

-- Atualiza os demais médicos como ativos
UPDATE doctor
SET em_atividade = TRUE
WHERE doctor_id NOT IN (1, 2, 3, 4, 6, 7, 9, 10);
```

## Observações Importantes:

- Certifique-se de substituir os IDs dos médicos pelos IDs reais que você deseja tornar inativos.
- O comando `ALTER TABLE` adiciona a nova coluna, e os comandos `UPDATE` atualizam o status de atuação dos médicos.
- Recomenda-se realizar backup dos dados antes de executar comandos que modificam a estrutura da tabela, especialmente em ambientes de produção.

**Solução Proposta:**
- Adição da coluna "em_atividade" à tabela "doctor".
- Atualização de dois médicos como inativos e os demais como ativos.

```sql
-- Adiciona a coluna "em_atividade" à tabela "doctor"
ALTER TABLE doctor
ADD COLUMN em_atividade BOOLEAN;

-- Atualiza dois médicos como inativos
UPDATE doctor
SET em_atividade = FALSE
WHERE doctor_id IN (5, 8);

-- Atualiza os demais médicos como ativos
UPDATE doctor
SET em_atividade = TRUE
WHERE doctor_id NOT IN (1, 2, 3, 4, 6, 7, 9, 10);
```
<div style="display: flex; justify-content: space-around; align-items: center;">
  <div style="text-align: center;">
    <h2>Diagrama do Banco de Dados</h2>
    <img src="https://github.com/SamDevFocus/Proa_Trabalhos/raw/master/O%20Hospital%20Fundamental%20-%20Parte%202/1.jpg" alt="Diagrama Completo" style="width: 40%;">
  </div>
  <div style="text-align: center;">
    <h2>Relacionamentos Detalhados</h2>
    <img src="https://github.com/SamDevFocus/Proa_Trabalhos/raw/master/O%20Hospital%20Fundamental%20-%20Parte%202/2.jpg" alt="Relacionamentos Detalhados" style="width: 40%;">
  </div>
</div>
