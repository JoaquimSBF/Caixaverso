SELECT
    ano_mes,
    ROUND(SUM(valor_captacao), 2) AS captacao,
    ROUND(SUM(valor_resgate), 2) AS resgate,
    ROUND(SUM(valor_captacao) - SUM(valor_resgate), 2) AS captacao_liquida,
    COUNT(DISTINCT sk_cliente) AS clientes_movimentados,
    COUNT(*) AS qtd_movimentos
FROM gold.fato_movimentacoes
GROUP BY ano_mes
ORDER BY ano_mes
