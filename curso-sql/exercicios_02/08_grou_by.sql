SELECT 
    IdProduto,
    sum(vlProduto) as totalPontos 

FROM transacao_produto

GROUP BY IdProduto
ORDER BY sum(vlProduto) DESC