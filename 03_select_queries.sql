USE carros_modificados_event;

-- 1. Selecionar todos os proprietários e seus emails, ordenados por nome.
SELECT Nome, Email
FROM PROPRIETARIO
ORDER BY Nome ASC;

-- 2. Selecionar todos os veículos que estão com a inscrição "Aprovado", mostrando placa, modelo e marca.
SELECT V.Placa, V.Modelo, V.Marca
FROM VEICULO V
JOIN INSCRICAO I ON V.Placa = I.Placa_Veiculo
WHERE I.Status = 'Aprovado';

-- 3. Contar o número de inscrições por status.
SELECT Status, COUNT(ID_Inscricao) AS TotalInscricoes
FROM INSCRICAO
GROUP BY Status;

-- 4. Selecionar os proprietários que possuem mais de uma inscrição, e quantos veículos eles inscreveram.
SELECT P.Nome, COUNT(I.ID_Inscricao) AS NumeroDeVeiculosInscritos
FROM PROPRIETARIO P
JOIN INSCRICAO I ON P.CPF = I.CPF_Proprietario
GROUP BY P.CPF, P.Nome
HAVING COUNT(I.ID_Inscricao) > 1;

-- 5. Listar todos os veículos (placa, modelo, ano) e, se estiverem inscritos, o status da inscrição e o nome do proprietário.
--    (LEFT JOIN para incluir veículos que talvez ainda não tenham inscrição)
SELECT 
    V.Placa, 
    V.Modelo, 
    V.Ano,
    I.Status,
    P.Nome AS NomeProprietario
FROM VEICULO V
LEFT JOIN INSCRICAO I ON V.Placa = I.Placa_Veiculo
LEFT JOIN PROPRIETARIO P ON I.CPF_Proprietario = P.CPF
ORDER BY V.Modelo, V.Placa;