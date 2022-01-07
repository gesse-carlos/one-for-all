SELECT a.artista AS artista,
ab.album AS album
FROM artistas AS a
INNER JOIN album AS ab
ON a.artista_id = ab.artista_id
ORDER BY artista DESC
LIMIT 2;