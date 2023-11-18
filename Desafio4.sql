SELECT
    FORMAT(Cabecalho.Data, 'yyyy-MM') AS Mes,
    SUM(Detalhes.ValorLiquido) AS LucroTotal
FROM
    dbo.FatoDetalhes AS Detalhes
JOIN
    dbo.FatoCabecalho AS Cabecalho ON Detalhes.CupomID = Cabecalho.CupomID
GROUP BY
    FORMAT(Cabecalho.Data, 'yyyy-MM');
