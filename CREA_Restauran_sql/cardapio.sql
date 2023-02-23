-- CARDÁPIO SUGERIDO

SELECT descricao AS "PRATOS SUGERIDOS",
	   cantidade AS "DISPONÍVEL",
	   preco AS "PREÇO UNITÁRIO"
FROM produtos
WHERE id_status_produto = "pp004"
ORDER BY preco