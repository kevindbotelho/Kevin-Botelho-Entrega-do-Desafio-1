SELECT
    Produtos.Produto,
    SUM(Detalhes.Quantidade) AS QuantidadeTotalVendida
FROM
    dbo.FatoDetalhes AS Detalhes
JOIN
    dbo.Dimensoes_Dados_Produtos AS Produtos ON Detalhes.ProdutoID = Produtos.ProdutoID
GROUP BY
    Produtos.Produto;