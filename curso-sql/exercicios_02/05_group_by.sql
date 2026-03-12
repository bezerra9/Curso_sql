-- Qual o valor médio de pontos positivos por dia?


SELECT  
    sum(QtdePontos) AS totalPontos,
    count(substr(DtCriacao,1,10)) AS qtdDiasRepetidos,
    count(DISTINCT substr(DtCriacao,1,10)) AS qtdDiasUnicos,
    sum(QtdePontos) / count(DISTINCT substr(DtCriacao,1,10)) as avgPontosDia


FROM transacoes


WHERE QtdePontos > 0;

SELECT * from transacoes;