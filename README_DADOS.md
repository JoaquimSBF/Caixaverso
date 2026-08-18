# CAIXA Verso — Dados, RAG e Guardrails com IA

> Todos os dados, clientes, movimentações, metas e indicadores deste projeto
> são sintéticos. O material não representa informações ou sistemas reais da CAIXA.

## Pasta padrão
`Z:\Caixaverso`

## Estrutura
- `data/bronze/` CSVs sintéticos brutos, com inconsistências e PII fictícia
- `data/silver/` gerado pelo notebook
- `data/gold/` gerado pelo notebook
- `sql/gold/` SQLs dos marts
- `app/streamlit_app.py` chatbot
- `caixa_verso_colab.ipynb` pipeline completo

## Como o aluno sobe o ambiente
1. Crie a pasta `Z:\Caixaverso`
2. Clone ou baixe o conteudo do Git nessa pasta
3. Abra `caixa_verso_colab.ipynb`
4. Rode as celulas em ordem
