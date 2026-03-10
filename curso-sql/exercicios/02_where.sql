SELECT IdTransacao, DtCriacao,
      strftime('%w', datetime(substr(DtCriacao, 1, 19))) AS DataSemana

FROM transacoes

WHERE DataSemana IN ('6','0')