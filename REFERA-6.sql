-- Venda por cliente, cidade do cliente e estado;

SELECT
   cl.cliente AS Clientes,
   cl.cidade AS Cidades,
   cl.regiao AS Regiao,
   cl.pais AS Paises,
   SUM(fd.valor) AS Valor_Total_Vendas
FROM
    clientes CL
    
JOIN
    fatocabecalho FC on cl.clienteid = fc.clienteid
JOIN
    fatodetalhes FD on fc.cupomid = fd.cupomid
    
GROUP BY
    cl.cliente,
    cl.cidade,
    cl.regiao, 
    cl.pais
ORDER BY
    Clientes