SELECT
    Produtos.Produto,
    SUM(Detalhes.ValorLiquido) AS ValorTotalVendas
FROM
    dbo.FatoDetalhes AS Detalhes
JOIN
    dbo.Dimensoes_Dados_Produtos AS Produtos ON Detalhes.ProdutoID = Produtos.ProdutoID
GROUP BY
    Produtos.Produto;