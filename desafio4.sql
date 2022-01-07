SELECT u.usuario AS usuario,
IF(MAX(uh.data_reproducao) LIKE '2021%', 'Usuário ativo', 'Usuário inativo') AS condicao_usuario
FROM usuarios AS u
INNER JOIN usuario_historico AS uh
ON uh.usuario_id = u.usuario_id
GROUP BY usuario
ORDER BY usuario ASC;