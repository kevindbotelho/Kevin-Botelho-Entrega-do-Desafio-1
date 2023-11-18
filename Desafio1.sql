SELECT
    Detalhes.CupomID AS OrdemDeVenda,
    Produtos.Produto,
    SUM(Detalhes.ValorLiquido) AS ValorTotalVendas,
    SUM(Cabecalho.ValorFrete) AS ValorTotalFretes
FROM
    dbo.FatoDetalhes AS Detalhes
JOIN
    dbo.Dimensoes_Dados_Produtos AS Produtos ON Detalhes.ProdutoID = Produtos.ProdutoID
JOIN
    dbo.FatoCabecalho AS Cabecalho ON Detalhes.CupomID = Cabecalho.CupomID
GROUP BY
    Detalhes.CupomID, Produtos.Produto;