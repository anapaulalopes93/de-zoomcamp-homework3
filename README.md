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
bash```


## Perguntas e respostas

Questão 1. Count total records  
Resposta: 20,332,093  

Questão 2. Data read estimation  
Resposta: 18.82 MB external / 47.60 MB table  

Questão 3. Columnar storage  
Resposta: BigQuery lê apenas as colunas consultadas  

Questão 4. Fare amount = 0  
Resposta: 8,333  

Questão 5. Melhor otimização  
Resposta: Partition by dropoff datetime and cluster by VendorID  

Questão 6. Partition performance  
Resposta: 310.24 MB vs 26.84 MB  

Questão 7. External table storage  
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
