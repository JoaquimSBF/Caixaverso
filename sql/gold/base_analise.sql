SELECT
    f.id_mov,
    f.data_mov,
    f.ano_mes,
    f.tipo,
    f.valor,
    f.valor_captacao,
    f.valor_resgate,
    f.sk_produto AS produto,
    p.classe AS classe_produto,
    f.sk_canal AS canal,
    f.sk_cliente AS cliente_id,
    c.segmento AS segmento,
    c.status AS status_cliente
FROM gold.fato_movimentacoes f
LEFT JOIN gold.dim_cliente c ON f.sk_cliente = c.sk_cliente
LEFT JOIN gold.dim_produto p ON f.sk_produto = p.sk_produto
LEFT JOIN gold.dim_canal d ON f.sk_canal = d.sk_canal
