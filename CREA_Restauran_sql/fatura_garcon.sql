-- FATURAS POR GARÇON
SELECT p.id AS "PEDIDO", 
	   p.id_mesa AS "MESA", 
	   g.nome AS "NOME GARÇON", 
	   p.data_criacao AS "DATA",
	   (SELECT SUM(ip.preco) FROM item_pedidos AS ip
	    WHERE ip.id_pedido = p.id) AS "FATURAS"
FROM pedidos AS p
JOIN garcon AS g on(p.id_garcon = g.id)
ORDER by id_garcon;