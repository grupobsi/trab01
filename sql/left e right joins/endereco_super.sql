SELECT * FROM SUPERMERCADO
RIGHT OUTER JOIN ENDERECO ON (SUPERMERCADO.endereco_id_fk = ENDERECO.id_endereco);
