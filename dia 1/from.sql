-- Databricks notebook source
SELECT * FROM silver_olist.pedido

---leia-se selecione TUDO da tabela silver_olist.pedido

-- COMMAND ----------

SELECT idPedido
FROM silver_olist.pedido

--leia-se: selecione a coluna idPedido da tabela silver_olist.pedido

-- COMMAND ----------

SELECT idPedido,   --selecao  de colunas idPedidos e descSituacao
       descSituacao
FROM silver_olist.pedido

LIMIT 5  --ele seleciona aleatoriamente 

-- COMMAND ----------

SELECT *, 
       datediff(dtEstimativaEntrega, dtEntregue) AS qtDiasPromessaEntrega

FROM silver_olist.pedido;

-- COMMAND ----------


