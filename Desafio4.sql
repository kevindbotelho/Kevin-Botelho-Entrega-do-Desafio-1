-- Desafio 4: Lucro dos meses;
SELECT
    FORMAT(Cabecalho.Data, 'yyyy-MM') AS Mes,
    SUM(Detalhes.ValorLiquido) AS LucroTotal
-- Formata a data para o formato 'yyyy-MM'
-- Soma dos valores líquidos para cada mês
FROM
    dbo.FatoDetalhes AS Detalhes
JOIN
    dbo.FatoCabecalho AS Cabecalho ON Detalhes.CupomID = Cabecalho.CupomID
-- Junção com a tabela FatoCabecalho para obter informações sobre a data
GROUP BY
    FORMAT(Cabecalho.Data, 'yyyy-MM');
-- Agrupamento pelo mês formatado para agregar os resultados