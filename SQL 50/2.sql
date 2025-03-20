--584. Find Customer Referee
SELECT name
FROM Customer
WHERE referee_id != 2 OR referee_id IS NULL



/*
PRIMEIRO COMANDO

SELECT name
FROM Customer
WHERE referee_id != 2

ERRO: Não selecionou as linhas que a coluna é NULL.

Motivo: MySQL trata comparações com NULL com o retorno UNKNOWN, por isso o primeiro comando não aparece.
Porque não ões

*/

/*
SOLUÇÃO ALTERNATIVA

SELECT name
FROM Customer
WHERE COALESCE(referee_id ,0) != 2;

COALESCE faz considerar os valores nulos com o apresentado. NO comando acima, COALESCE considerou os valores nulos como 0.

Mais info: https://dev.mysql.com/doc/refman/8.4/en/comparison-operators.html#function_coalesce

*/
