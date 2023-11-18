-- Desafio 8: Média de compras que um cliente faz;
SELECT
    AVG(NumCompras) AS MediaComprasPorCliente
-- Calcula a média do número de compras distintas por cliente
FROM
    (
        SELECT
            ClienteID,
            COUNT(DISTINCT CupomID) AS NumCompras
        -- Conta o número de compras distintas por cliente
        FROM
            dbo.FatoCabecalho
        GROUP BY
            ClienteID
    ) AS ComprasPorCliente;
-- Utiliza uma subconsulta para contar o número de compras distintas por cliente