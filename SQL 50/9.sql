--197. Rising Temperature

SELECT t1.id -- Seleciona a informação
FROM Weather t1
JOIN Weather t2 --Self join
ON t1.recordDate = DATE_ADD(t2.recordDate, INTERVAL 1 DAY) --Critério para o Join
WHERE t1.temperature > t2.temperature1

--Nota: Quando for iterar sobre a mesma tabela, provavelmente vai ser um self-join ou junção cartesiana



/*

-- TESTE 1

SELECT id
FROM Weather.recordDate
JOIN on Weather.recordDate + 1

ERRO: Sintaxe incorreta

--TESTE 2

SELECT id
FROM Weather
JOIN ON t1.recordDate = t2.recordDate + INTERVAL 1 DAY

ERRO: Sintaxe incorreta


-- Teste 2
SELECT t1.id
FROM Weather t1
JOIN Weather t2
ON t1.recordDate = DATE_ADD(t2.recordDate, INTERVAL 1 DAY)

ERRO: Faltou o filtro

SELECT t1.id
FROM Weather t1
JOIN Weather t2
ON t1.recordDate = DATE_ADD(t2.recordDate, INTERVAL 1 DAY)
WHERE t1.temperature > t2.temperature



EXERCÍCIO:


+---------------+---------+
| Column Name   | Type    |
+---------------+---------+
| id            | int     |
| recordDate    | date    |
| temperature   | int     |
+---------------+---------+
id is the column with unique values for this table.
There are no different rows with the same recordDate.
This table contains information about the temperature on a certain day.

 

Write a solution to find all dates' id with higher temperatures compared to its previous dates (yesterday).

Return the result table in any order.

The result format is in the following example.

 

Example 1:

Input: 
Weather table:
+----+------------+-------------+
| id | recordDate | temperature |
+----+------------+-------------+
| 1  | 2015-01-01 | 10          |
| 2  | 2015-01-02 | 25          |
| 3  | 2015-01-03 | 20          |
| 4  | 2015-01-04 | 30          |
+----+------------+-------------+
Output: 
+----+
| id |
+----+
| 2  |
| 4  |
+----+
Explanation: 
In 2015-01-02, the temperature was higher than the previous day (10 -> 25).
In 2015-01-04, the temperature was higher than the previous day (20 -> 30).
