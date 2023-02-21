INSERT INTO mesas (decricao, postos, ativo)
VALUES 
	('mesa 1', 4, TRUE),
	('mesa 2', 4, TRUE),
	('mesa 3', 4, TRUE),
	('mesa 4', 8, TRUE),
	('mesa 5', 8, TRUE),
	('mesa 6', 12, TRUE)
    ;
	
INSERT INTO garcon (nome, ativo)
VALUES 
	('Danilson', TRUE),
	('Ruben', TRUE),
	('Pedro', TRUE),
	('Thiago', TRUE),
	('David', TRUE)
    ;

INSERT INTO status_pp (id, descricao, ativo)
VALUES 
	('pd001', 'pedido tomado', TRUE),
	('pd002', 'pedido ordenado', TRUE),
	('pd003', 'pedido preparado', TRUE),
	('pd004', 'pedido entregado', TRUE),
	('pd005', 'pedido cobrado', TRUE),
	('pd006', 'pedido cancelado', TRUE),
	('pd007', 'pedido devuelto', TRUE),
	('pd008', 'pedido perdido', TRUE),
    ('pp001', 'produto en stock', TRUE),
	('pp002', 'produto agotado', TRUE),
	('pp003', 'produto en oferta', TRUE),
	('pp004', 'produto en menu', TRUE)
    ;

INSERT INTO produtos (preco, cantidade, descricao, id_status_produto, ativo)
VALUES 
	(25.55, 65, 'Ressoto de camarao', 'pp001', TRUE),
	(45.00, 30, 'Picanha', 'pp001', TRUE),
	(35.00, 65, 'Strogonof', 'pp001', TRUE),
	(20.50, 65, 'Macarron bolonha', 'pp001', TRUE),
	(85.55, 65, 'Churrasco para dois', 'pp001', TRUE),
	(25.00, 65, 'Sopa verde', 'pp001', TRUE),
	(55.00, 25, 'casquinha', 'pp004', TRUE),
	(40.00, 65, 'feijoada', 'pp004', TRUE),
	(15.00, 10, 'jacare', 'pp004', TRUE),
	(60.00, 30, 'moquecapeixe', 'pp004', TRUE),
	(52.00, 12, 'pato', 'pp004', TRUE),
	(40.00, 30, 'sarapatel', 'pp004', TRUE),
	(38.00, 20, 'vatapa', 'pp004', TRUE)
	;

INSERT INTO pedidos (id_mesa, id_garcon, ativo)
VALUES 
	(1, 2, TRUE),
	(4, 1, TRUE),
	(2, 4, TRUE),
	(3, 5, TRUE),
	(5, 3, TRUE),
	(6, 3, TRUE)
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