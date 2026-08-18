SELECT DISTINCT
    canal_padrao AS sk_canal,
    canal_padrao AS canal_nome
FROM silver.movimentacoes
WHERE canal_padrao IS NOT NULL
