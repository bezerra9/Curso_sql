SELECT 
    round(avg(qtdePontos), 2) AS mediaCarteira,
    1. * sum(qtdePontos) / count(idCliente),
    min(qtdePontos) AS minCarteira,
    max(qtdePontos) AS maxCarteira,
    sum(flTwitch) AS qtdPessoasTwitch, 
    sum(flEmail)


FROM clientes