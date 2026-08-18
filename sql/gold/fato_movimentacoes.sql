SELECT
    m.id_mov,
    m.data_mov,
    m.ano_mes,
    m.cliente_id AS sk_cliente,
    m.produto_padrao AS sk_produto,
    m.canal_padrao AS sk_canal,
    m.tipo_padrao AS tipo,
    m.valor,
    CASE WHEN m.tipo_padrao = 'captacao' THEN m.valor ELSE 0 END AS valor_captacao,
    CASE WHEN m.tipo_padrao = 'resgate' THEN m.valor ELSE 0 END AS valor_resgate
FROM silver.movimentacoes m
WHERE m.valor IS NOT NULL
  AND m.valor > 0
  AND m.data_mov IS NOT NULL
  AND m.ano_mes IS NOT NULL
  AND m.tipo_padrao IS NOT NULL
