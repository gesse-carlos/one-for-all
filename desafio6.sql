SELECT ROUND(MIN(p.preco), 2) AS faturamento_minimo,
ROUND(MAX(p.preco), 2) AS faturamento_maximo,
ROUND(AVG(p.preco), 2) AS faturamento_medio,
ROUND(SUM(p.preco), 2) AS faturamento_total
FROM usuarios AS u
INNER JOIN planos AS p
ON p.plano_id = u.plano_id;