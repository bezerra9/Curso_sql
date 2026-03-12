SELECT 
    sum(QtdePontos),

    sum(CASE
        WHEN qtdePontos > 0 THEN qtdePontos
    END) AS qtdePontosPositivo,

    sum(CASE
        WHEN qtdePontos < 0 THEN qtdePontos
        ELSE 0
    END) AS qtdePontosNegativos,

    count(CASE
        WHEN qtdePontos < 0 THEN qtdePontos
    END) AS qtdePontosNegativos


FROM TRANSACOES 

WHERE DtCriacao >= '2025-07-01'
AND DtCriacao <= '2025-08-01'
