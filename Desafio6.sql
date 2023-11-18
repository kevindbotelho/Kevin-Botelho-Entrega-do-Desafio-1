-- Desafio 6: Venda por cliente, cidade do cliente e estado;
SELECT
    Clientes.Cliente,
    Clientes.Cidade,
    Clientes.PaisCodigo AS Estado,
    SUM(Cabecalho.ValorFrete) AS ValorTotalVendas
-- Soma dos valores de frete para cada cliente, cidade e estado
FROM
    dbo.FatoCabecalho AS Cabecalho
JOIN
    dbo.Dimensoes_Dados_Clientes AS Clientes ON Cabecalho.ClienteID = Clientes.ClienteID
-- Junção com a tabela Dimensoes_Dados_Clientes para obter informações sobre o cliente
GROUP BY
    Clientes.Cliente, Clientes.Cidade, Clientes.PaisCodigo;
-- Agrupamento pelo cliente, cidade e estado para agregar os resultados
