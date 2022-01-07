SELECT COUNT(c.cancao_id) AS cancoes,
COUNT(DISTINCT a.artista_id) AS artistas,
COUNT(DISTINCT ab.album_id) AS albuns
FROM cancoes AS c
INNER JOIN album AS ab
ON ab.album_id = c.album_id
INNER JOIN artistas AS a
ON a.artista_id = ab.artista_id;