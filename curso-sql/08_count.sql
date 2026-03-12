--SELECT count(*),
--        count(1),
--        count(idCliente)

--FROM clientes

SELECT count(DISTINCT idCliente)

FROM clientes