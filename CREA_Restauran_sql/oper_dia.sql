-- OPERAÇÕES DE UM DIA

SELECT ip.id_pedido AS "COMANDA",    
	   g.nome as "Nome Garçon",
	   p.descricao AS "DESCRICAO", 
	   ip.cantidade AS "CANTIDADE",
	   strftime('%H:%M:%S', pd.data_criacao) as 'HORA INICIO',
	   strftime('%H:%M:%S', ip.data_criacao) as 'HORA FINAL',
	   ROUND((strftime("%s", ip.data_criacao) - strftime("%s", pd.data_criacao)) / 60.0)  AS "MINUTOS",
	   st.descricao AS "STATUS",
	   ip.preco AS "PRECO",
	   sum(ip.preco) OVER(PARTITION by ip.id_pedido ORDER by ip.data_criacao) AS "TOTAL"
FROM item_pedidos AS ip
JOIN status_pp AS st  on(ip.id_status_pedido = st.id)
JOIN produtos AS p  on(ip.id_produto = p.id)
JOIN pedidos AS pd ON(ip.id_pedido = pd.id)
JOIN garcon AS g ON(pd.id_garcon = g.id)
ORDER by ip.id_pedido, ip.data_criacao
