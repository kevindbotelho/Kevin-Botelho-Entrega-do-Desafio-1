-- Desafio 1: Valor total das vendas e dos fretes por produto e ordem de venda;
SELECT
    Detalhes.CupomID AS OrdemDeVenda,
    Produtos.Produto,
    SUM(Detalhes.ValorLiquido) AS ValorTotalVendas,
    SUM(Cabecalho.ValorFrete) AS ValorTotalFretes
-- Soma dos valores líquidos para cada ordem de venda e produto
-- Soma dos valores de frete para cada ordem de venda e produto
FROM
    dbo.FatoDetalhes AS Detalhes
JOIN
    dbo.Dimensoes_Dados_Produtos AS Produtos ON Detalhes.ProdutoID = Produtos.ProdutoID
-- Junção com a tabela Dimensoes_Dados_Produtos para obter informações sobre o produto
JOIN
    dbo.FatoCabecalho AS Cabecalho ON Detalhes.CupomID = Cabecalho.CupomID
-- Junção com a tabela FatoCabecalho para obter informações sobre a ordem de venda
GROUP BY
    Detalhes.CupomID, Produtos.Produto;
-- Agrupamento pelos campos CupomID e Produto para agregar os resultados