-- Desafio 7: Média de produtos vendidos;
SELECT
    AVG(Quantidade) AS MediaProdutosVendidos
-- Calcula a média da quantidade de produtos vendidos
FROM
    dbo.FatoDetalhes;
-- Utiliza a tabela FatoDetalhes que contém informações detalhadas sobre as vendas