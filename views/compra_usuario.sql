CREATE VIEW COMPRA_USUARIO AS
SELECT usuario_id_fk, COUNT(usuario_id_fk) AS produtos_comprados FROM PRODUTO_COMPRA GROUP BY usuario_id_fk;
