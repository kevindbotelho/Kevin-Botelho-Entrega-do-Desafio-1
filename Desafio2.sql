-- Desafio 2: Valor de venda por tipo de produto;
SELECT
    Produtos.Produto,
    SUM(Detalhes.ValorLiquido) AS ValorTotalVendas
-- Soma dos valores líquidos para cada tipo de produto
FROM
    dbo.FatoDetalhes AS Detalhes
JOIN
    dbo.Dimensoes_Dados_Produtos AS Produtos ON Detalhes.ProdutoID = Produtos.ProdutoID
-- Junção com a tabela Dimensoes_Dados_Produtos para obter informações sobre o produto
GROUP BY
    Produtos.Produto;
-- Agrupamento pelo campo Produto para agregar os resultados