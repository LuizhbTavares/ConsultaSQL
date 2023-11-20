-- Lucros por Categorias;

SELECT
    cg.categoria AS Categorias,
    SUM(fd.valorliquido) AS Lucros
FROM
    categorias CG
    
JOIN
    produtos PD ON cg.categoriaid = pd.categoriaid
JOIN
    fatodetalhes FD ON pd.produtoid = fd.produtoid

GROUP BY
    cg.categoria
ORDER BY
    Lucros DESC