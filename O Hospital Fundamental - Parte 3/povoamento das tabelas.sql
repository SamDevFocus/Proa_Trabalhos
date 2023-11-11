-- Preenchendo a tabela room_type
INSERT INTO room_type (descricao, daily_rate) VALUES
  ('Quarto Deluxe', 250.00),
  ('Quarto Executivo', 180.00),
  ('Quarto Triplo', 200.00),
  ('Suíte Presidencial', 350.00),
  ('Quarto Familiar', 220.00),
  ('Quarto com Vista para o Mar', 280.00),
  ('Suíte Júnior', 180.00),
  ('Quarto com Varanda', 200.00),
  ('Suíte de Luxo', 300.00),
  ('Quarto Standard', 120.00);
  
-- Preenchendo a tabela plan
INSERT INTO plan (plan_name, plan_phone, plan_duration) VALUES
  ('Plano de Saúde D', '555-444-3333', '1 ano'),
  ('Plano de Saúde E', '777-888-9999', '3 meses'),
  ('Plano de Saúde F', '123-987-6543', '2 anos'),
  ('Plano Odontológico A', '555-123-4567', '1 ano'),
  ('Plano Odontológico B', '888-222-3333', '6 meses'),
  ('Plano Odontológico C', '999-111-2222', '3 anos'),
  ('Plano de Visão A', '777-666-5555', '1 ano'),
  ('Plano de Visão B', '444-333-2222', '2 anos'),
  ('Plano de Visão C', '111-000-9999', '1 ano'),
  ('Plano Mista A', '123-456-7890', '1 ano');

-- Preenchendo a tabela specialty
INSERT INTO specialty (specialty_type, consultation_fee) VALUES
  ('Oftalmologia', 85.00),
  ('Ginecologia', 75.00),
  ('Urologia', 100.00),
  ('Pediatria', 65.00),
  ('Neurologia', 110.00),
  ('Oncologia', 120.00),
  ('Psiquiatria', 95.00),
  ('Endocrinologia', 80.00),
  ('Gastroenterologia', 90.00),
  ('Otorrinolaringologia', 85.00);

-- Preenchendo a tabela medication
INSERT INTO medication (medication_name, medication_description, medication_price, medication_stock) VALUES
  ('Dipiridamol', 'Anticoagulante', 15.00, 80),
  ('Fluoxetina', 'Antidepressivo', 12.50, 60),
  ('Dexametasona', 'Corticosteroide', 18.00, 45),
  ('Cetoprofeno', 'Analgésico', 9.50, 70),
  ('Metoclopramida', 'Antiemético', 8.00, 90),
  ('Enalapril', 'Anti-hipertensivo', 11.50, 50),
  ('Levotiroxina', 'Hormônio tireoidiano', 14.00, 30),
  ('Sinvastatina', 'Hipolipemiante', 13.50, 40),
  ('Dorflex', 'Relaxante Muscular', 6.50, 85),
  ('Lansoprazol', 'Inibidor de ácido', 10.00, 75);

-- Preenchendo a tabela room
INSERT INTO room (room_number, room_type_id) VALUES
  ('404', 1),
  ('505', 2),
  ('606', 3),
  ('707', 1),
  ('808', 2),
  ('909', 3),
  ('102', 1),
  ('203', 2),
  ('304', 3),
  ('405', 1);

-- Preenchendo a tabela patient
INSERT INTO patient (plan_id, patient_name, birth_date, phone, cpf, rg, email, address) VALUES
  (1, 'Ana Oliveira', '1987-03-25', '555-4321', '76543210987', '54321098', 'ana.oliveira@email.com', '234 Rua Secundária'),
  (2, 'Pedro Santos', '1995-11-05', '555-8765', '87654321098', '54321087', 'pedro.santos@email.com', '567 Avenida Central'),
  (3, 'Lúcia Costa', '1980-09-15', '555-2345', '23456789012', '56789012', 'lucia.costa@email.com', '890 Rua do Comércio'),
  (1, 'Fernando Lima', '1992-06-30', '555-7890', '89012345678', '12345678', 'fernando.lima@email.com', '1234 Rua do Bosque'),
  (2, 'Mariana Rocha', '1983-04-18', '555-3456', '67890123456', '45678901', 'mariana.rocha@email.com', '4567 Rua das Flores'),
  (3, 'Ricardo Almeida', '1975-07-22', '555-0123', '34567890123', '89012345', 'ricardo.almeida@email.com', '7890 Praça Principal'),
  (1, 'Beatriz Nunes', '1998-02-12', '555-6789', '01234567890', '23456789', 'beatriz.nunes@email.com', '3456 Avenida das Árvores'),
  (2, 'Gabriel Costa', '1989-10-08', '555-9012', '45678901234', '56789012', 'gabriel.costa@email.com', '6789 Rua dos Esportes'),
  (3, 'Isabel Oliveira', '1973-01-28', '555-3456', '78901234567', '67890123', 'isabel.oliveira@email.com', '9012 Avenida da Praia'),
  (1, 'Lucas Pereira', '1994-04-05', '555-7890', '90123456789', '12345678', 'lucas.pereira@email.com', '2345 Rua do Porto');

-- Preenchendo a tabela doctor
INSERT INTO doctor (doctor_name, birth_date, crm, specialty_id, phone, cpf, rg, email, address) VALUES
  ('Dra. Silva', '1978-05-18', '13579', 1, '555-3456', '98765432103', '123450987', 'silva@email.com', '234 Rua Magnólia'),
  ('Dr. Pereira', '1989-11-08', '24680', 2, '555-6789', '98765432104', '123459876', 'pereira@email.com', '567 Rua Cedro'),
  ('Dra. Santos', '1973-02-22', '98765', 3, '555-9012', '98765432105', '123459876', 'santos@email.com', '890 Rua Carvalho'),
  ('Dr. Oliveira', '1995-06-30', '54321', 1, '555-2345', '98765432106', '123459876', 'oliveira@email.com', '123 Avenida Principal'),
  ('Dra. Lima', '1980-09-15', '98765', 2, '555-5678', '98765432107', '123459876', 'lima@email.com', '456 Rua do Bosque'),
  ('Dr. Costa', '1972-12-18', '24680', 3, '555-7890', '98765432108', '123459876', 'costa@email.com', '789 Rua das Flores'),
  ('Dra. Rocha', '1998-04-12', '13579', 1, '555-0123', '98765432109', '123459876', 'rocha@email.com', '234 Rua dos Esportes'),
  ('Dr. Almeida', '1985-10-08', '98765', 2, '555-3456', '98765432110', '123459876', 'almeida@email.com', '567 Rua das Árvores'),
  ('Dra. Nunes', '1977-01-28', '24680', 3, '555-6789', '98765432111', '123459876', 'nunes@email.com', '890 Avenida da Praia'),
  ('Dr. Oliveira', '1990-04-05', '13579', 1, '555-9012', '98765432112', '123459876', 'oliveira@email.com', '012 Rua do Porto');

-- Preenchendo a tabela nurse
INSERT INTO nurse (nurse_name, birth_date, cre, phone, cpf, rg, email, address) VALUES
  ('Enfermeira Silva', '1992-03-25', '65432', '555-9876', '56789012345', '8765432102', 'silva@email.com', '234 Rua Magnólia'),
  ('Enfermeiro Pereira', '1985-09-15', '54321', '555-0123', '67890123456', '9876543210', 'pereira@email.com', '567 Rua Cedro'),
  ('Enfermeira Santos', '1977-05-18', '43210', '555-3456', '78901234567', '2345678901', 'santos@email.com', '890 Rua Carvalho'),
  ('Enfermeiro Oliveira', '1998-07-30', '56789', '555-6789', '90123456789', '8765432103', 'oliveira@email.com', '123 Avenida Principal'),
  ('Enfermeira Lima', '1982-12-05', '45678', '555-9012', '01234567890', '9876543211', 'lima@email.com', '456 Rua do Bosque'),
  ('Enfermeira Costa', '1970-10-22', '78901', '555-2345', '12345678901', '8765432104', 'costa@email.com', '789 Rua das Flores'),
  ('Enfermeiro Rocha', '1995-04-12', '56789', '555-5678', '23456789012', '9876543212', 'rocha@email.com', '234 Rua dos Esportes'),
  ('Enfermeira Almeida', '1988-08-10', '34567', '555-7890', '34567890123', '8765432105', 'almeida@email.com', '567 Rua das Árvores'),
  ('Enfermeira Nunes', '1973-01-28', '67890', '555-0123', '45678901234', '9876543213', 'nunes@email.com', '890 Avenida da Praia'),
  ('Enfermeira Oliveira', '1990-06-30', '45678', '555-2345', '56789012345', '8765432106', 'oliveira@email.com', '012 Rua do Porto');

-- Preenchendo a tabela hospitalization
INSERT INTO hospitalization (procedimento, patient_id, nurse_id, doctor_id, room_id, entry_date, expected_date, exit_date) VALUES
  ('Cirurgia de Catarata', 4, 4, 4, 4, '2023-04-15', '2023-04-20', NULL),
  ('Fratura de Perna', 5, 5, 5, 5, '2023-05-08', '2023-05-15', NULL),
  ('Tratamento de Alergia', 6, 6, 6, 6, '2023-06-25', '2023-06-30', NULL),
  ('Colecistectomia', 7, 7, 7, 7, '2023-07-10', '2023-07-15', '2023-07-12'),
  ('Gripe Severa', 8, 8, 8, 8, '2023-08-18', '2023-08-25', NULL),
  ('Apneia do Sono', 9, 9, 9, 9, '2023-09-05', '2023-09-10', NULL),
  ('Cirurgia de Hérnia', 10, 10, 10, 10, '2023-10-22', '2023-10-28', NULL),
  ('Pneumonia', 1, 1, 1, 1, '2023-11-12', '2023-11-18', NULL),
  ('Lesão no Joelho', 2, 2, 2, 2, '2023-12-02', '2023-12-08', NULL),
  ('Cirurgia Plástica', 3, 3, 3, 3, '2023-12-20', '2023-12-25', NULL);

-- Preenchendo a tabela consultation
INSERT INTO consultation (patient_id, doctor_id) VALUES
  (4, 4),
  (5, 5),
  (6, 6),
  (7, 7),
  (8, 8),
  (9, 9),
  (10, 10),
  (1, 1),
  (2, 2);

-- Preenchendo a tabela prescription
INSERT INTO prescription (doctor_id, medication_id, usage_mode) VALUES
  (4, 4, 'Tomar um comprimido de manhã e outro à noite'),
  (5, 5, 'Tomar uma cápsula antes das refeições'),
  (6, 6, 'Aplicar a pomada na área afetada duas vezes ao dia'),
  (7, 7, 'Tomar um comprimido após as refeições'),
  (8, 8, 'Tomar um comprimido antes de dormir'),
  (9, 9, 'Tomar um comprimido de manhã'),
  (10, 10, 'Aplicar a loção na pele afetada conforme necessário'),
  (1, 1, 'Tomar um comprimido a cada 8 horas'),
  (2, 2, 'Tomar uma cápsula com alimentos'),
  (3, 3, 'Tomar um comprimido a cada 4 horas para a dor');