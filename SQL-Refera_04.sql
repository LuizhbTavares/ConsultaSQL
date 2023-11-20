-- Lucro dos meses;

SELECT
    TO_CHAR(fc.data, 'MM') AS Mes,
    TO_CHAR(fc.data, 'YYYY') AS Ano,
    SUM(fd.valorliquido) AS Lucro_Total_Mensal
FROM fatodetalhes FD

JOIN
    fatocabecalho FC ON fd.cupomid = fc.cupomid
    
GROUP BY
    TO_CHAR(fc.data, 'MM'),
    TO_CHAR(fc.data, 'YYYY')
    
ORDER BY
    Ano, Mes