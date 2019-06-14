CREATE VIEW QNT_ESTOQUE AS 
SELECT usuario_id_fk, COUNT(usuario_id_fk) AS qnt_tprdutos_tipo FROM PRODUTO_ESTOQUE GROUP BY usuario_id_fk;
