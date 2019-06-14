CREATE VIEW MENSAGENS_ENVIADAS AS 
SELECT remetente_usuario_fk, COUNT(remetente_usuario_fk) as qnt FROM MENSAGENS_ADMINISTRADOR GROUP BY remetente_usuario_fk;
