-- Média de produtos vendidos;

SELECT
    pd.produto AS Produtos, 
    round(avg(fd.quantidade),2) as Media_Vendas
FROM
    produtos PD
    
JOIN
    fatodetalhes FD ON pd.produtoid = fd.produtoid

GROUP BY
    pd.produto
ORDER BY
    Produtos