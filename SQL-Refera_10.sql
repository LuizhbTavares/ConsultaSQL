--TOP 3 países mais lucrativos.

SELECT
    cl.pais AS Paises,
    SUM(fd.valorliquido) AS Lucro_Vendas
FROM
    clientes CL
    
JOIN
    fatocabecalho FC ON cl.clienteid = fc.clienteid
JOIN
    fatodetalhes FD ON fc.cupomid = fd.cupomid
    
GROUP BY
    cl.pais
ORDER BY
    Lucro_Vendas desc
    
FETCH FIRST 3 ROWS ONLY;
