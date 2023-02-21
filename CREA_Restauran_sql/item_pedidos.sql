-- resumen de comandas 

SELECT id_pedido AS comanda, count(cantidade), sum(preco) FROM item_pedidos
GROUP by id_pedido
ORDER BY id_pedido

SELECT ip.id_pedido AS comanda, p.descricao, ip.cantidade, ip.preco 
FROM item_pedidos AS ip
JOIN produtos AS p  on(ip.id_produto = p.id) AND
					   ip.id_pedido = 1

SELECT ip.id_pedido AS "COMANDA", 
	   sum(ip.cantidade) AS "CANTIDADE", 
	   sum(ip.preco) AS "TOTAL COMANDA"
FROM item_pedidos AS ip
GROUP BY IP.id_pedido	  