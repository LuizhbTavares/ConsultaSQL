-- Quantidade e valor das vendas por dia, mês, ano;

SELECT
    TO_CHAR(fc.data, 'DD') AS Dia,
    TO_CHAR(fc.data, 'MM') AS Mes,
    TO_CHAR(fc.data, 'YYYY') AS Ano,
    SUM(fd.quantidade) AS Quantidade_Total,
    SUM(fd.valor) AS Valor_Total   
FROM fatodetalhes FD

JOIN
    fatocabecalho FC ON fd.cupomid = fc.cupomid
    
GROUP BY
    TO_CHAR(fc.data, 'DD'),
    TO_CHAR(fc.data, 'MM'),
    TO_CHAR(fc.data, 'YYYY')
    
ORDER BY
    Ano, Mes, Dia



