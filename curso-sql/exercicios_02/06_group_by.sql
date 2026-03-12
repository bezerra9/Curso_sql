-- Qual dia da semana quem mais pedidos em 2025?


SELECT 
    IdTransacao, 
    DtCriacao,
    strftime('%w', substr(DtCriacao,1,10)) as DiaSemana,
    count(IdTransacao) AS qtdeTransacao

FROM transacoes

WHERE substr(DtCriacao,1,4) = '2025'

GROUP BY DiaSemana;
