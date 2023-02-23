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

-- con totales por comanda

SELECT ip.id_pedido AS comanda, 
	   p.descricao, 
	   ip.cantidade, 
	   ip.preco,
	   sum(ip.preco) OVER(PARTITION by id_pedido ORDER by id_produto) AS total
FROM item_pedidos AS ip
JOIN produtos AS p  on(ip.id_produto = p.id)
ORDER by ip.id_pedido, ip.data_criacao

-- Resumen de comandas ordenadas por mesas

SELECT ip.id_pedido AS PEDIDO, 
	   p.id_mesa AS MESA,
	   strftime('%H:%M:%S', ip.data_criacao) as 'HORA', 
	   g.nome AS "Nome Garçon", 
	   count(cantidade) "ITEMS", 
	   sum(ip.preco) AS "TOTAL PEDIDOS" 
FROM item_pedidos AS ip
JOIN pedidos AS p ON(ip.id_pedido = p.id)
JOIN garcon AS g ON(p.id_garcon = g.id)
GROUP by id_pedido, id_mesa
ORDER BY id_mesa


-- OPERAÇÕES DE UM DIA

SELECT ip.id_pedido AS "COMANDA",
	   g.nome as "Nome Garçon",
	   p.descricao AS "DESCRICAO", 
	   ip.cantidade AS "CANTIDADE",
	   strftime('%H:%M:%S', ip.data_criacao) as 'HORA', 
	   ip.preco AS "PRECO",
	   sum(ip.preco) OVER(PARTITION by id_pedido ORDER by ip.data_criacao) AS "TOTAL"
FROM item_pedidos AS ip
JOIN produtos AS p  on(ip.id_produto = p.id)
JOIN pedidos AS pd ON(ip.id_pedido = pd.id)
JOIN garcon AS g ON(pd.id_garcon = g.id)
ORDER by ip.id_pedido, ip.data_criacao


-- CARDÁPIO SUGERIDO

SELECT descricao AS "PRATOS SUGERIDOS",
	   cantidade AS "DISPONÍVEL",
	   preco AS "PREÇO UNITÁRIO"
FROM produtos
WHERE id_status_produto = "pp004"
ORDER BY preco

-- servicios en mesa por mesonero

SELECT p.id, p.id_mesa, p.id_garcon, g.nome, p.data_criacao
FROM pedidos as p
JOIN garcon as g on(p.id_garcon = g.id)
ORDER by id_garcon;

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