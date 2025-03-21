--1148. Article Views I


SELECT DISTINCT author_id AS id
FROM Views
WHERE author_id = viewer_id
ORDER BY id ASC;


/*

Descrição:

+---------------+---------+
| Column Name   | Type    |
+---------------+---------+
| article_id    | int     |
| author_id     | int     |
| viewer_id     | int     |
| view_date     | date    |
+---------------+---------+
There is no primary key (column with unique values) for this table, the table may have duplicate rows.
Each row of this table indicates that some viewer viewed an article (written by some author) on some date. 
Note that equal author_id and viewer_id indicate the same person.

 

Write a solution to find all the authors that viewed at least one of their own articles.

Return the result table sorted by id in ascending order.

The result format is in the following example.

 

Example 1:

Input: 
Views table:
+------------+-----------+-----------+------------+
| article_id | author_id | viewer_id | view_date  |
+------------+-----------+-----------+------------+
| 1          | 3         | 5         | 2019-08-01 |
| 1          | 3         | 6         | 2019-08-02 |
| 2          | 7         | 7         | 2019-08-01 |
| 2          | 7         | 6         | 2019-08-02 |
| 4          | 7         | 1         | 2019-07-22 |
| 3          | 4         | 4         | 2019-07-21 |
| 3          | 4         | 4         | 2019-07-21 |
+------------+-----------+-----------+------------+
Output: 
+------+
| id   |
+------+
| 4    |
| 7    |
+------+

---

Problemas
* Falta de chave primária
* Possibilidade de entradas duplicadas.

Possível solução:
Desconsiderar entradas duplicadas;
Transformar article_id e author_id em chave primária composta; -- pensando bem, desnecessário
Retornar author_id como id, para as entradas que author_id = viewer_id

Teste 1:
SELECT DISTINCT author_id AS id 
WHERE author_id = viewer_id

Erro:
Unknown column 'author_id' in 'field list'

Explicação:

No SQL, a ordem de execução das cláusulas é a seguinte:
    FROM (identifica a tabela)
    WHERE (filtra as linhas)
    SELECT (seleciona as colunas e aplica aliases)
    ORDER BY (ordena os resultados)
Portanto, quando o MySQL processa a cláusula WHERE, ele ainda não sabe que author_id foi renomeado para id. Ele só reconhece o nome original da coluna (author_id).

Teste 2:

SELECT DISTINCT author_id AS id
FROM Views
WHERE author_id = viewer_id
ORDER BY id ASC;

REsultado aceito.

*/
