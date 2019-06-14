select cod_produto_fk, usuario_id_fk from produto_estoque where qnt_atual=0 or qnt_atual<ant_minima;
