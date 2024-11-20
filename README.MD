# 1 Lista de consultas no database

´´´yaml

    SELECT ID, Nome, Cargo, Descricao, CNPJ 
    FROM Vaga
    WHERE Aprovado = TRUE;

    SELECT Vaga.ID, Vaga.Nome, Vaga.Cargo, Vaga.Descricao, Empresa.Nome AS EmpresaNome, Empresa.Ramo
    FROM Vaga
    JOIN Empresa ON Vaga.CNPJ = Empresa.CNPJ
    WHERE Vaga.ID = '11111111-1111-1111-1111-111111111111'; -- Substitua pelo ID da vaga desejada

    SELECT ID, Nome, Cargo, Descricao
    FROM Vaga
    WHERE CNPJ = '12345678000100'; -- Substitua pelo CNPJ da empresa

    SELECT Inscricao.ID, Vaga.Nome, Vaga.Cargo, Vaga.Descricao, Inscricao.DataInscricao
    FROM Inscricao
    JOIN Vaga ON Inscricao.VagaID = Vaga.ID
    WHERE Inscricao.CPF = '12345678901'; -- Substitua pelo CPF do usuário

    SELECT Usuario.CPF, Usuario.Nome, Usuario.Telefone, Usuario.Formacao, Inscricao.DataInscricao
    FROM Inscricao
    JOIN Usuario ON Inscricao.CPF = Usuario.CPF
    WHERE Inscricao.VagaID = '11111111-1111-1111-1111-111111111111'; -- Substitua pelo ID da vaga

    SELECT Vaga.Nome, COUNT(Inscricao.ID) AS TotalInscritos
    FROM Vaga
    LEFT JOIN Inscricao ON Vaga.ID = Inscricao.VagaID
    GROUP BY Vaga.Nome;

    SELECT DISTINCT Empresa.Nome, Empresa.CNPJ, Empresa.Ramo
    FROM Empresa
    JOIN Vaga ON Empresa.CNPJ = Vaga.CNPJ;

    SELECT 
        Usuario.CPF,
        Usuario.Nome,
        Usuario.Telefone,
        Usuario.Formacao,
        Vaga.Nome AS NomeVaga,
        Vaga.Cargo,
        Inscricao.DataInscricao
    FROM 
        Inscricao
    JOIN 
        Usuario ON Inscricao.CPF = Usuario.CPF
    JOIN 
        Vaga ON Inscricao.VagaID = Vaga.ID
    WHERE 
        Vaga.Aprovado = TRUE;
´´´´
