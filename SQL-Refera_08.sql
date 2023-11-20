-- Média de compras que um cliente faz;

SELECT
 cl.cliente AS Clientes,
 round(AVG(fd.quantidade),2) AS Media_Compras
FROM
  clientes CL
  
JOIN
    fatocabecalho FC ON cl.clienteid = fc.clienteid
JOIN
    fatodetalhes FD ON fc.cupomid = fd.cupomid
    
GROUP BY
    cl.cliente
ORDER BY
    Clientes