USE carros_modificados_event;

-- 1. UPDATE: Atualizar o telefone de um proprietário específico.
UPDATE PROPRIETARIO
SET Telefone = '(11)99999-0000'
WHERE CPF = '111.222.333-44';
-- SELECT * FROM PROPRIETARIO WHERE CPF = '111.222.333-44'; -- Para verificar

-- 2. UPDATE: Mudar o status de todas as inscrições "Pendente" para "Recusado" se a data for anterior a uma semana atrás.
--    (Para este exemplo, usaremos uma data fixa, mas em um ambiente real seria CURRENT_DATE - INTERVAL 7 DAY)
UPDATE INSCRICAO
SET Status = 'Recusado'
WHERE Status = 'Pendente' AND Data_Inscricao < '2024-03-05';
-- SELECT * FROM INSCRICAO WHERE Status = 'Recusado'; -- Para verificar

-- 3. UPDATE: Adicionar uma nova modificação a um veículo específico.
UPDATE VEICULO
SET Lista_Modificacoes = CONCAT(Lista_Modificacoes, ', Pintura especial')
WHERE Placa = 'PQR5S67';
-- SELECT * FROM VEICULO WHERE Placa = 'PQR5S67'; -- Para verificar


-- -------------------------------------------------------------
-- COMANDOS DELETE
-- IMPORTANTE: A ordem dos DELETEs é crucial devido às chaves estrangeiras.
-- Para deletar um proprietário ou veículo, suas inscrições associadas devem ser deletadas primeiro.
-- -------------------------------------------------------------

-- 1. DELETE: Excluir uma inscrição específica (ex: a que foi recusada).
DELETE FROM INSCRICAO
WHERE ID_Inscricao = 4;
-- SELECT * FROM INSCRICAO; -- Para verificar (Inscrição 4 não deve mais aparecer)

-- 2. DELETE: Excluir um veículo que não tem mais nenhuma inscrição ativa (ou que teve a única inscrição deletada).
--    Certifique-se que o veículo 'MNB3V45' realmente não tem mais inscrições ativas antes de deletar.
--    (A inscrição 4 foi deletada, que era deste veículo)
DELETE FROM VEICULO
WHERE Placa = 'MNB3V45';
-- SELECT * FROM VEICULO; -- Para verificar (MNB3V45 não deve mais aparecer)

-- 3. DELETE: Excluir um proprietário que não possui mais veículos inscritos (ou não tem inscrições).
--    (Para este exemplo, precisamos de um proprietário que não esteja mais ligado a inscrições ou veículos)
--    Vamos criar um proprietário temporário e um veículo temporário para demonstrar o DELETE.
INSERT INTO PROPRIETARIO (CPF, Nome, CNH, Telefone, Email) VALUES ('100.100.100-10', 'Temp User', '11122233344', '(55)55555-5555', 'temp@email.com');
-- Agora, deletar este proprietário temporário (se ele não tiver ligações):
DELETE FROM PROPRIETARIO
WHERE CPF = '100.100.100-10';
-- SELECT * FROM PROPRIETARIO; -- Para verificar