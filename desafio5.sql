SELECT c.cancao AS cancao,
COUNT(uh.cancao_id) AS reproducoes
FROM cancoes AS c
INNER JOIN usuario_historico AS uh
ON uh.cancao_id = c.cancao_id
GROUP BY cancao
ORDER BY reproducoes DESC, cancao ASC
LIMIT 2;