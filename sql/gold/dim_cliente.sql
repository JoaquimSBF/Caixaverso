SELECT
    cliente_id AS sk_cliente,
    segmento_padrao AS segmento,
    status_padrao AS status,
    data_entrada,
    cpf_hash,
    email_hash,
    telefone_hash
FROM silver.clientes
