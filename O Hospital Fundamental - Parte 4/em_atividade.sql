 -- Adiciona a coluna "em_atividade" à tabela "doctor"
 ALTER TABLE doctor
 ADD COLUMN em_atividade BOOLEAN;

 -- Atualiza dois médicos como inativos
 UPDATE doctor
 SET em_atividade = FALSE
 WHERE doctor_id IN (5, 8); -- Substitua pelos IDs dos médicos que você deseja tornar inativos

UPDATE doctor
SET em_atividade = TRUE
WHERE doctor_id IN (1, 2, 3, 4, 6, 7, 9, 10);
