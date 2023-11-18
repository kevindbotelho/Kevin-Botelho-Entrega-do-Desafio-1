SELECT
    AVG(NumCompras) AS MediaComprasPorCliente
FROM
    (
        SELECT
            ClienteID,
            COUNT(DISTINCT CupomID) AS NumCompras
        FROM
            dbo.FatoCabecalho
        GROUP BY
            ClienteID
    ) AS ComprasPorCliente;