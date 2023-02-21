
-- servicios en mesa por mesonero

SELECT p.id, p.id_mesa, p.id_garcon, g.nome, p.data_criacao
FROM pedidos as p
JOIN garcon as g on(p.id_garcon = g.id)
ORDER by id_garcon;