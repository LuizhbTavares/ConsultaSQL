-- Venda por produto;

SELECT 
    pd.produto AS Produtos, 
    SUM(fd.quantidade) AS Qtd_Vendas
FROM 
    produtos PD

JOIN
    fatodetalhes FD on pd.produtoid = fd.produtoid

GROUP BY
    pd.produto
ORDER BY 
    Qtd_Vendas