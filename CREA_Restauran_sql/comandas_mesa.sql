-- Resumen de comandas ordenadas por mesas

SELECT ip.id_pedido AS PEDIDO, 
	   p.id_mesa AS MESA,
	   strftime('%H:%M:%S', p.data_criacao) as 'HORA INICIO',
	   strftime('%H:%M:%S', ip.data_criacao) as 'HORA FINAL',
	   ROUND((strftime("%s", ip.data_criacao) - strftime("%s", p.data_criacao)) / 60.0)  AS "MINUTOS",
	   g.nome AS "Nome Garçon", 
	   count(cantidade) "ITEMS", 
	   sum(ip.preco) AS "TOTAL PEDIDOS" 
FROM item_pedidos AS ip
JOIN pedidos AS p ON(ip.id_pedido = p.id)
JOIN garcon AS g ON(p.id_garcon = g.id)
GROUP by id_pedido, id_mesa
ORDER BY id_mesa
