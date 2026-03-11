SELECT idCliente, qtdePontos, 
      CASE
        WHEN qtdePontos <= 500 THEN 'Ponêi'
        WHEN qtdePontos <= 1000 THEN 'Ponêi Premium'
        WHEN qtdePontos <= 5000 THEN 'Mago Aprendiz'
        WHEN qtdePontos <= 10000 THEN 'Mago Mestre'
        ELSE 'Mago Supremo'
      END AS NomeGrupo

FROM clientes

ORDER BY qtdePontos DESC