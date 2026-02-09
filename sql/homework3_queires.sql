-- Questão 1
SELECT COUNT(*) 
FROM yellow_2024;

-- Questão 4
SELECT COUNT(*) 
FROM yellow_2024
WHERE fare_amount = 0;

-- Questão 3 exemplo columnar
SELECT PULocationID FROM yellow_2024;
SELECT PULocationID, DOLocationID FROM yellow_2024;
