-- Qual categoria tem mais produtos vendidos?

SELECT 
    count(t1.IdTransacao) AS QntdTransacao, 
    t2.DescCategoriaProduto

FROM transacao_produto AS t1

LEFT JOIN produtos as t2 
ON t1.IdProduto = t2.IdProduto

GROUP BY t2.DescCategoriaProduto
ORDER BY count(t1.IdTransacao) DESC