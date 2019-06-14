select usuario.nome, produto_marca.nome as produtocomprado from produto_estoque
inner join usuario on (usuario.id_usuario = produto_estoque.usuario_id_fk)
inner join produto_marca on (produto_estoque.cod_produto_fk = produto_marca.codigo);
