-- Desafio 5: Venda por produto;
SELECT
    Produtos.Produto,
    SUM(Detalhes.Quantidade) AS QuantidadeTotalVendida
-- Soma das quantidades vendidas para cada produto
FROM
    dbo.FatoDetalhes AS Detalhes
JOIN
    dbo.Dimensoes_Dados_Produtos AS Produtos ON Detalhes.ProdutoID = Produtos.ProdutoID
-- Junção com a tabela Dimensoes_Dados_Produtos para obter informações sobre o produto
GROUP BY
    Produtos.Produto;
-- Agrupamento pelo produto para agregar os resultados