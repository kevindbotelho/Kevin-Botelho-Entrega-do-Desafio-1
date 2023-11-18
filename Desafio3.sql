SELECT
    FORMAT(Cabecalho.Data, 'yyyy-MM-dd') AS Data,
    SUM(Detalhes.Quantidade) AS QuantidadeTotal,
    SUM(Detalhes.ValorLiquido) AS ValorTotalVendas
FROM
    dbo.FatoDetalhes AS Detalhes
JOIN
    dbo.FatoCabecalho AS Cabecalho ON Detalhes.CupomID = Cabecalho.CupomID
GROUP BY
    FORMAT(Cabecalho.Data, 'yyyy-MM-dd');