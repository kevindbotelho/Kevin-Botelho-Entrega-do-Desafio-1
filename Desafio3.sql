-- Desafio 3: Quantidade e valor das vendas por dia, mês, ano;
SELECT
    FORMAT(Cabecalho.Data, 'yyyy-MM-dd') AS Data,
    SUM(Detalhes.Quantidade) AS QuantidadeTotal,
    SUM(Detalhes.ValorLiquido) AS ValorTotalVendas
-- Formata a data para o formato 'yyyy-MM-dd'
-- Soma das quantidades vendidas para cada data
-- Soma dos valores líquidos para cada data
FROM
    dbo.FatoDetalhes AS Detalhes
JOIN
    dbo.FatoCabecalho AS Cabecalho ON Detalhes.CupomID = Cabecalho.CupomID
-- Junção com a tabela FatoCabecalho para obter informações sobre a data
GROUP BY
    FORMAT(Cabecalho.Data, 'yyyy-MM-dd');
-- Agrupamento pela data formatada para agregar os resultados