-- Databricks notebook source
SELECT * 

FROM silver_olist.pedido

WHERE descSituacao = 'shipped'

--LIMIT 10
-- leia-se selecione todas as colunas 

-- COMMAND ----------

SELECT * 

FROM silver_olist.pedido

WHERE descSituacao = 'shipped'

AND year(dtPedido) = '2018'

-- leia-se: selecione todas as colunas da tabela silver_olist.pedido filtrando pedidos enviados de 2018

-- COMMAND ----------

SELECT * 

FROM silver_olist.pedido

WHERE (descSituacao = 'shipped' OR descSituacao = 'canceled')

AND year(dtPedido) = '2018'

--leia-se: selecione todas as colinas da tabela silver-olist.pedido filtrado pedidos (enviados ou ancaelado) de 2018

-- COMMAND ----------

SELECT * 

FROM silver_olist.pedido

WHERE descSituacao IN ('shipped', 'canceled')

AND year(dtPedido) = '2018'

-- COMMAND ----------

SELECT *,
      datediff(dtEstimativaEntrega, dtAprovado) --mostrar uma coluna nova com esse valores

FROM silver_olist.pedido

WHERE descSituacao IN ('shipped', 'canceled')

AND year(dtPedido) = '2018'
AND datediff(dtEstimativaEntrega, dtAprovado) >30


-- COMMAND ----------


