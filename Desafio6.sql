SELECT
    Clientes.Cliente,
    Clientes.Cidade,
    Clientes.PaisCodigo AS Estado,
    SUM(Cabecalho.ValorFrete) AS ValorTotalVendas
FROM
    dbo.FatoCabecalho AS Cabecalho
JOIN
    dbo.Dimensoes_Dados_Clientes AS Clientes ON Cabecalho.ClienteID = Clientes.ClienteID
GROUP BY
    Clientes.Cliente, Clientes.Cidade, Clientes.PaisCodigo;