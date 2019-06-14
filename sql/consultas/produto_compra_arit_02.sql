select cod_produto_fk, qnt_compra, preco, (qnt_compra * preco) as total_compra from produto_compra where data_compra='2019-07-22' and usuario_id_fk=2;
