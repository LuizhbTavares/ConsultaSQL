-- Valor total das vendas e dos fretes por produto e ordem de venda;

SELECT
    pd.produto AS Produtos,
    SUM(fd.valor) AS Valor_Total_Vendas,
    SUM(fc.valorfrete) AS Valor_Total_Fretes
FROM 
    fatocabecalho FC
    
JOIN 
    fatodetalhes FD ON fc.cupomid = fd.cupomid
JOIN
    produtos PD ON fd.produtoid = pd.produtoid
    
GROUP BY
    pd.produto
ORDER BY
    Valor_Total_Vendas