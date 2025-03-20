--595. Big Countries

SELECT name, population, area
FROM World
WHERE population >= 25000000 OR area >= 3000000

/*
Primeira resposta:

SELECT name, population, area
FROM World
WHERE population >25000000 or area > 3000000

Não funcionou pois na verificação o teste esperado era que o resultado fosse de pelo menos (ou seja, >=)

SEGUNDA OPÇÃO:
SELECT name, population, area
FROM World
WHERE population > 25000000
UNION
SELECT name, population, area
FROM World
WHERE area > 3000000;

Também funciona, mas o runtime é maior para essa tabela simples.
*/






