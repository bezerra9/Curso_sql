-- Em 2024, quantas transações de Lovers tivemos?

SELECT 
    count(t1.IdTransacao) as qtdTransacaoLovers,
    t2.IdProduto,
    t3.DescCategoriaProduto

FROM transacoes as t1

LEFT JOIN transacao_produto as t2
ON t1.IdTransacao = t2.IdTransacao

LEFT JOIN produtos as t3
ON t2.IdProduto = t3.IdProduto

WHERE DtCriacao >= '2024-01-01'
AND DtCriacao < '2025-01-01'
/* AND DescCategoriaProduto = 'lovers' */

GROUP BY t3.DescCategoriaProduto




 


