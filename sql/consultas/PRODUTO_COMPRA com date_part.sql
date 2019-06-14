select cod_produto_fk, date_part('day',(age(current_date, data_compra))) as dias_passados_compra from produto_compra;
