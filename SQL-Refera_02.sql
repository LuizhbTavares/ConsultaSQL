-- Valor de venda por tipo de produto;

SELECT 
    pd.produto AS Produtos, 
    cg.categoria AS Categorias, 
    fd.valor AS Valores
FROM
    produtos PD
    
JOIN 
    fatodetalhes FD ON fd.produtoid = pd.produtoid
JOIN
    categorias CG ON pd.categoriaid = cg.categoriaid

ORDER BY
    Valores