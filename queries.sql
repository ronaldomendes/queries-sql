-- relatório 01
select te.id_filial, tf.nm_filial, te.id_produto, tp.ds_produto, te.qt_estoque_disponivel 
	from tb_estoque as te, tb_filial as tf, tb_produto as tp 
	where te.id_filial = tf.id_filial and te.id_produto = tp.id_produto
	order by tf.id_filial;

-- relatório 02

-- Criação de pelo menos dois tipos de pedidos (Compra e Venda);
insert into tb_pedido values (default, curdate(), 1001, 1, 6, 3, 1, 2000.00);
insert into tb_pedido values (default, curdate(), 1232, 2, 2, 1, 1, 1200.00);
insert into tb_pedido values (default, curdate(), 1003, 1, 6, 5, 1, 2250.00);
insert into tb_pedido values (default, curdate(), 12840, 2, 4, 4, 1, 1300.00);

-- Criação de pelo menos duas notas fiscais (Compra e Venda);
insert into tb_nf values (default, 1, 2, curdate(), 3001, 1, 1, 2, 1, 5000.00);