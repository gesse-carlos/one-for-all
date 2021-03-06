SELECT u.usuario AS usuario,
COUNT(uh.cancao_id) AS qtde_musicas_ouvidas,
ROUND((SUM(c.duracao_segundos) / 60), 2) AS total_minutos
FROM usuarios AS u
INNER JOIN usuario_historico AS uh
ON uh.usuario_id = u.usuario_id
INNER JOIN cancoes AS c
ON c.cancao_id = uh.cancao_id
GROUP BY usuario
ORDER BY usuario ASC;