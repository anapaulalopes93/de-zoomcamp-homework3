# Data Engineering Zoomcamp 2026 — Homework 3

## Data Warehousing & BigQuery (simulado local)

Este homework simula o uso de BigQuery utilizando DuckDB localmente para análise de dados em formato parquet.

Dataset utilizado:
Yellow Taxi Trip Records (Jan–Jun 2024)

Fonte:
https://www.nyc.gov/site/tlc/about/tlc-trip-record-data.page

## Tecnologias usadas
- DuckDB
- SQL
- Parquet
- Git/GitHub

## Como reproduzir localmente (DuckDB)

### 1) Baixar os dados (Jan–Jun 2024)
Crie a pasta `data/` e baixe os parquets:

```bash
mkdir -p data
cd data

wget https://d37ci6vzurychx.cloudfront.net/trip-data/yellow_tripdata_2024-01.parquet
wget https://d37ci6vzurychx.cloudfront.net/trip-data/yellow_tripdata_2024-02.parquet
wget https://d37ci6vzurychx.cloudfront.net/trip-data/yellow_tripdata_2024-03.parquet
wget https://d37ci6vzurychx.cloudfront.net/trip-data/yellow_tripdata_2024-04.parquet
wget https://d37ci6vzurychx.cloudfront.net/trip-data/yellow_tripdata_2024-05.parquet
wget https://d37ci6vzurychx.cloudfront.net/trip-data/yellow_tripdata_2024-06.parquet

cd ..
```
2) Rodar as queries no DuckDB
```
duckdb
```
Dentro do DuckDB:
```
CREATE VIEW yellow_2024 AS
SELECT * FROM read_parquet('data/yellow_tripdata_2024-*.parquet');

-- depois rode as queries em:
-- sql/homework3_queries.sql
```
Depois:

```bash
git add README.md
git commit -m "Adicionar passos de reprodução local (download + DuckDB)"
git push
```
## Perguntas e respostas

Questão 1. Contar o total de registros  
Resposta: 20,332,093  

Questão 2. Estimativa de leitura de dados  
Resposta: 18.82 MB external / 47.60 MB table  

Questão 3. Armazenamento Columnar  
Resposta: BigQuery lê apenas as colunas consultadas  

Questão 4. Valor da tarifa = 0  
Resposta: 8,333  

Questão 5. Melhor otimização  
Resposta: Partition by dropoff datetime and cluster by VendorID  

Questão 6. Desempenho de particionamento 
Resposta: 310.24 MB vs 26.84 MB  

Questão 7. Armazenamento externo de tabelas  
Resposta: GCP Bucket  

Questão 8. Clustering sempre?  
Resposta: False  

## Aprendizados
Neste módulo aprendi:
- Conceitos de Data Warehouse
- External tables
- Columnar storage
- Partition e clustering
- Otimização de queries
