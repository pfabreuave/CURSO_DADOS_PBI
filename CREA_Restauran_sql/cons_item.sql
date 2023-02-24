-- consulta item pedido espesifico

SELECT ip.id_pedido AS COMANDA, p.descricao AS DESCRICAO, ip.cantidade AS CANTIDADE, ip.preco AS PRECO
FROM item_pedidos AS ip
JOIN produtos AS p  on(ip.id_produto = p.id) AND
					   ip.id_pedido = 1