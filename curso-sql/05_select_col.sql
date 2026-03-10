SELECT idCliente, 
        --qtdePontos, 
        --qtdePontos + 10 AS qtdePontosPlus10, 
        --qtdePontos * 2 AS qtdePontosDouble,
        DtCriacao,

        substr(DtCriacao, 1, 19) AS DtSubString,

        datetime(substr(DtCriacao, 1, 19)) AS DtCriacaoNova,

        strftime('%w', datetime(substr(DtCriacao, 1, 19))) AS DiaSemana


        
FROM clientes