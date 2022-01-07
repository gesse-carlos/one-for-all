SELECT a.artista AS artista,
ab.album AS album,
COUNT(DISTINCT s.usuario_id) AS seguidores
FROM artistas AS a
INNER JOIN seguindo AS s
ON a.artista_id = s.artista_id
INNER JOIN album AS ab
ON a.artista_id = ab.artista_id
GROUP BY album, artista
ORDER BY seguidores DESC, artista ASC, album ASC;