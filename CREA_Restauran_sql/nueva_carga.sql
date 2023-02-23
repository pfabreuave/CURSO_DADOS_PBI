

-- primera carga

INSERT INTO pedidos (id_mesa, id_garcon, ativo)
VALUES 
	(1, 2, TRUE),
	(4, 1, TRUE),
	(2, 4, TRUE),
	(3, 5, TRUE),
	(5, 3, TRUE),
	(6, 3, TRUE)
	;

-- segunga carga

INSERT INTO pedidos (id_mesa, id_garcon, ativo)
VALUES 
	(1, 2, TRUE),
	(4, 1, TRUE),
	(2, 4, TRUE),
	(3, 5, TRUE),
	(5, 3, TRUE),
	(6, 1, TRUE)
	;


-- tercera carga

INSERT INTO pedidos (id_mesa, id_garcon, ativo)
VALUES 
	(1, 2, TRUE),
	(4, 1, TRUE),
	(2, 4, TRUE),
	(3, 5, TRUE),
	(5, 3, TRUE),
	(6, 6, TRUE)
	;



INSERT INTO item_pedidos (id_pedido, id_produto, cantidade, preco, id_status_pedido, ativo)
VALUES 
	(1, 1, 1, 25.55, 'pd001', TRUE),
	(1, 2, 1, 45.00, 'pd001', TRUE),
	(1, 3, 1, 35.00, 'pd001', TRUE),
	(2, 4, 1, 20.50, 'pd001', TRUE),
	(2, 5, 1, 85.55, 'pd001', TRUE),
	(3, 6, 1, 25.00, 'pd001', TRUE),
	(3, 8, 1, 40.00, 'pd001', TRUE),
	(3, 4, 1, 20.50, 'pd001', TRUE),
	(4, 5, 1, 85.55, 'pd001', TRUE),
	(4, 13, 1, 38.50, 'pd001', TRUE),
	(5, 1, 1, 25.55, 'pd001', TRUE),
	(6, 12, 1, 40.00, 'pd001', TRUE),
	(6, 3, 1, 35.00, 'pd001', TRUE)
	;