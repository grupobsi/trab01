SELECT * FROM USUARIO 
LEFT OUTER JOIN MENSAGENS_ADMINISTRADOR ON (USUARIO.id_usuario = MENSAGENS_ADMINISTRADOR.remetente_usuario_fk);
