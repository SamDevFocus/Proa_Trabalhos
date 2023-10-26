-- Análise exploratoria

-- select * from funcionarios 
-- inner join ocupacoes
-- on funcionarios.ocupacao_id = ocupacoes.ocupacao_id
-- where ocupacoes.ocupacao_nome = "Contador";

-- select * from ocupacoes;

-- select * from paises;

-- select * from regiao;

select funcionarios.primeiro_nome, funcionarios.email as correio_electronico, funcionarios.ocupacao_id, ocupacoes.ocupacao_id from funcionarios 
 inner join ocupacoes
 on funcionarios.ocupacao_id = ocupacoes.ocupacao_id
 where ocupacoes.ocupacao_nome = "Contador";
