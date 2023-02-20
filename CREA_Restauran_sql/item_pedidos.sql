select id as comanda, id_pedido, count(cantidade), sum(preco) from item_pedidos
GROUP by id_pedido
ORDER BY id_pedido

select id as comanda, id_pedido, cantidade, preco from item_pedidos
where id_pedido = 1