
------------ Posições --------------

INSERT INTO `POSICAO` (`DESCRICAO`) VALUES('Armador');
INSERT INTO `POSICAO` (`DESCRICAO`) VALUES('Ala/Pivô');
INSERT INTO `POSICAO` (`DESCRICAO`) VALUES('Ala/Armador');
INSERT INTO `POSICAO` (`DESCRICAO`) VALUES('Ala');
INSERT INTO `POSICAO` (`DESCRICAO`) VALUES('Pivô');

------------ Equipe: Basq. Cearense --------------

SELECT @idEquipe := ID FROM equipe WHERE NOME = 'Basq. Cearense';
SELECT @idJogador := j.ID 
                                         FROM jogador j 
                                         INNER JOIN equipejogador ej ON j.Id = ej.IDJOGADOR
                                         WHERE j.NOME = 'Lima' AND ej.IDEQUIPE = @idEquipe;
SELECT @idPosicao := ID FROM POSICAO WHERE DESCRICAO = 'Armador';
UPDATE `JOGADOR` SET `IDPOSICAO` = @idPosicao WHERE ID = @idJogador;
SELECT @idJogador := j.ID 
                                         FROM jogador j 
                                         INNER JOIN equipejogador ej ON j.Id = ej.IDJOGADOR
                                         WHERE j.NOME = 'Davi' AND ej.IDEQUIPE = @idEquipe;
SELECT @idPosicao := ID FROM POSICAO WHERE DESCRICAO = 'Armador';
UPDATE `JOGADOR` SET `IDPOSICAO` = @idPosicao WHERE ID = @idJogador;
SELECT @idJogador := j.ID 
                                         FROM jogador j 
                                         INNER JOIN equipejogador ej ON j.Id = ej.IDJOGADOR
                                         WHERE j.NOME = 'Gruber' AND ej.IDEQUIPE = @idEquipe;
SELECT @idPosicao := ID FROM POSICAO WHERE DESCRICAO = 'Ala/Pivô';
UPDATE `JOGADOR` SET `IDPOSICAO` = @idPosicao WHERE ID = @idJogador;
SELECT @idJogador := j.ID 
                                         FROM jogador j 
                                         INNER JOIN equipejogador ej ON j.Id = ej.IDJOGADOR
                                         WHERE j.NOME = 'Duda' AND ej.IDEQUIPE = @idEquipe;
SELECT @idPosicao := ID FROM POSICAO WHERE DESCRICAO = 'Ala/Armador';
UPDATE `JOGADOR` SET `IDPOSICAO` = @idPosicao WHERE ID = @idJogador;
SELECT @idJogador := j.ID 
                                         FROM jogador j 
                                         INNER JOIN equipejogador ej ON j.Id = ej.IDJOGADOR
                                         WHERE j.NOME = 'Toledo' AND ej.IDEQUIPE = @idEquipe;
SELECT @idPosicao := ID FROM POSICAO WHERE DESCRICAO = 'Ala/Pivô';
UPDATE `JOGADOR` SET `IDPOSICAO` = @idPosicao WHERE ID = @idJogador;
SELECT @idJogador := j.ID 
                                         FROM jogador j 
                                         INNER JOIN equipejogador ej ON j.Id = ej.IDJOGADOR
                                         WHERE j.NOME = 'Sualisson' AND ej.IDEQUIPE = @idEquipe;
SELECT @idPosicao := ID FROM POSICAO WHERE DESCRICAO = 'Ala';
UPDATE `JOGADOR` SET `IDPOSICAO` = @idPosicao WHERE ID = @idJogador;
SELECT @idJogador := j.ID 
                                         FROM jogador j 
                                         INNER JOIN equipejogador ej ON j.Id = ej.IDJOGADOR
                                         WHERE j.NOME = 'Rashaun' AND ej.IDEQUIPE = @idEquipe;
SELECT @idPosicao := ID FROM POSICAO WHERE DESCRICAO = 'Ala/Armador';
UPDATE `JOGADOR` SET `IDPOSICAO` = @idPosicao WHERE ID = @idJogador;
SELECT @idJogador := j.ID 
                                         FROM jogador j 
                                         INNER JOIN equipejogador ej ON j.Id = ej.IDJOGADOR
                                         WHERE j.NOME = 'Tiagão' AND ej.IDEQUIPE = @idEquipe;
SELECT @idPosicao := ID FROM POSICAO WHERE DESCRICAO = 'Pivô';
UPDATE `JOGADOR` SET `IDPOSICAO` = @idPosicao WHERE ID = @idJogador;
SELECT @idJogador := j.ID 
                                         FROM jogador j 
                                         INNER JOIN equipejogador ej ON j.Id = ej.IDJOGADOR
                                         WHERE j.NOME = 'Leonardo' AND ej.IDEQUIPE = @idEquipe;
SELECT @idPosicao := ID FROM POSICAO WHERE DESCRICAO = 'Pivô';
UPDATE `JOGADOR` SET `IDPOSICAO` = @idPosicao WHERE ID = @idJogador;
SELECT @idJogador := j.ID 
                                         FROM jogador j 
                                         INNER JOIN equipejogador ej ON j.Id = ej.IDJOGADOR
                                         WHERE j.NOME = 'Audrei' AND ej.IDEQUIPE = @idEquipe;
SELECT @idPosicao := ID FROM POSICAO WHERE DESCRICAO = 'Ala';
UPDATE `JOGADOR` SET `IDPOSICAO` = @idPosicao WHERE ID = @idJogador;
SELECT @idJogador := j.ID 
                                         FROM jogador j 
                                         INNER JOIN equipejogador ej ON j.Id = ej.IDJOGADOR
                                         WHERE j.NOME = 'Emílio ' AND ej.IDEQUIPE = @idEquipe;
SELECT @idPosicao := ID FROM POSICAO WHERE DESCRICAO = 'Ala/Pivô';
UPDATE `JOGADOR` SET `IDPOSICAO` = @idPosicao WHERE ID = @idJogador;
SELECT @idJogador := j.ID 
                                         FROM jogador j 
                                         INNER JOIN equipejogador ej ON j.Id = ej.IDJOGADOR
                                         WHERE j.NOME = 'Felipe' AND ej.IDEQUIPE = @idEquipe;
SELECT @idPosicao := ID FROM POSICAO WHERE DESCRICAO = 'Ala/Pivô';
UPDATE `JOGADOR` SET `IDPOSICAO` = @idPosicao WHERE ID = @idJogador;
SELECT @idJogador := j.ID 
                                         FROM jogador j 
                                         INNER JOIN equipejogador ej ON j.Id = ej.IDJOGADOR
                                         WHERE j.NOME = 'Israel' AND ej.IDEQUIPE = @idEquipe;
SELECT @idPosicao := ID FROM POSICAO WHERE DESCRICAO = 'Ala';
UPDATE `JOGADOR` SET `IDPOSICAO` = @idPosicao WHERE ID = @idJogador;
SELECT @idJogador := j.ID 
                                         FROM jogador j 
                                         INNER JOIN equipejogador ej ON j.Id = ej.IDJOGADOR
                                         WHERE j.NOME = 'Leal' AND ej.IDEQUIPE = @idEquipe;
SELECT @idPosicao := ID FROM POSICAO WHERE DESCRICAO = 'Pivô';
UPDATE `JOGADOR` SET `IDPOSICAO` = @idPosicao WHERE ID = @idJogador;
SELECT @idJogador := j.ID 
                                         FROM jogador j 
                                         INNER JOIN equipejogador ej ON j.Id = ej.IDJOGADOR
                                         WHERE j.NOME = 'Gabriel' AND ej.IDEQUIPE = @idEquipe;
SELECT @idPosicao := ID FROM POSICAO WHERE DESCRICAO = 'Ala';
UPDATE `JOGADOR` SET `IDPOSICAO` = @idPosicao WHERE ID = @idJogador;
SELECT @idJogador := j.ID 
                                         FROM jogador j 
                                         INNER JOIN equipejogador ej ON j.Id = ej.IDJOGADOR
                                         WHERE j.NOME = 'Betinho' AND ej.IDEQUIPE = @idEquipe;
SELECT @idPosicao := ID FROM POSICAO WHERE DESCRICAO = 'Armador';
UPDATE `JOGADOR` SET `IDPOSICAO` = @idPosicao WHERE ID = @idJogador;
SELECT @idJogador := j.ID 
                                         FROM jogador j 
                                         INNER JOIN equipejogador ej ON j.Id = ej.IDJOGADOR
                                         WHERE j.NOME = 'Rafael' AND ej.IDEQUIPE = @idEquipe;
SELECT @idPosicao := ID FROM POSICAO WHERE DESCRICAO = 'Armador';
UPDATE `JOGADOR` SET `IDPOSICAO` = @idPosicao WHERE ID = @idJogador;

------------ Equipe: Bauru --------------

SELECT @idEquipe := ID FROM equipe WHERE NOME = 'Bauru';
SELECT @idJogador := j.ID 
                                         FROM jogador j 
                                         INNER JOIN equipejogador ej ON j.Id = ej.IDJOGADOR
                                         WHERE j.NOME = 'Gui' AND ej.IDEQUIPE = @idEquipe;
SELECT @idPosicao := ID FROM POSICAO WHERE DESCRICAO = 'Ala';
UPDATE `JOGADOR` SET `IDPOSICAO` = @idPosicao WHERE ID = @idJogador;
SELECT @idJogador := j.ID 
                                         FROM jogador j 
                                         INNER JOIN equipejogador ej ON j.Id = ej.IDJOGADOR
                                         WHERE j.NOME = 'Shilton' AND ej.IDEQUIPE = @idEquipe;
SELECT @idPosicao := ID FROM POSICAO WHERE DESCRICAO = 'Pivô';
UPDATE `JOGADOR` SET `IDPOSICAO` = @idPosicao WHERE ID = @idJogador;
SELECT @idJogador := j.ID 
                                         FROM jogador j 
                                         INNER JOIN equipejogador ej ON j.Id = ej.IDJOGADOR
                                         WHERE j.NOME = 'Stefano' AND ej.IDEQUIPE = @idEquipe;
SELECT @idPosicao := ID FROM POSICAO WHERE DESCRICAO = 'Armador';
UPDATE `JOGADOR` SET `IDPOSICAO` = @idPosicao WHERE ID = @idJogador;
SELECT @idJogador := j.ID 
                                         FROM jogador j 
                                         INNER JOIN equipejogador ej ON j.Id = ej.IDJOGADOR
                                         WHERE j.NOME = 'Valtinho' AND ej.IDEQUIPE = @idEquipe;
SELECT @idPosicao := ID FROM POSICAO WHERE DESCRICAO = 'Armador';
UPDATE `JOGADOR` SET `IDPOSICAO` = @idPosicao WHERE ID = @idJogador;
SELECT @idJogador := j.ID 
                                         FROM jogador j 
                                         INNER JOIN equipejogador ej ON j.Id = ej.IDJOGADOR
                                         WHERE j.NOME = 'Alex' AND ej.IDEQUIPE = @idEquipe;
SELECT @idPosicao := ID FROM POSICAO WHERE DESCRICAO = 'Ala';
UPDATE `JOGADOR` SET `IDPOSICAO` = @idPosicao WHERE ID = @idJogador;
SELECT @idJogador := j.ID 
                                         FROM jogador j 
                                         INNER JOIN equipejogador ej ON j.Id = ej.IDJOGADOR
                                         WHERE j.NOME = 'Jefferson' AND ej.IDEQUIPE = @idEquipe;
SELECT @idPosicao := ID FROM POSICAO WHERE DESCRICAO = 'Ala/Pivô';
UPDATE `JOGADOR` SET `IDPOSICAO` = @idPosicao WHERE ID = @idJogador;
SELECT @idJogador := j.ID 
                                         FROM jogador j 
                                         INNER JOIN equipejogador ej ON j.Id = ej.IDJOGADOR
                                         WHERE j.NOME = 'Henrique' AND ej.IDEQUIPE = @idEquipe;
SELECT @idPosicao := ID FROM POSICAO WHERE DESCRICAO = 'Ala';
UPDATE `JOGADOR` SET `IDPOSICAO` = @idPosicao WHERE ID = @idJogador;
SELECT @idJogador := j.ID 
                                         FROM jogador j 
                                         INNER JOIN equipejogador ej ON j.Id = ej.IDJOGADOR
                                         WHERE j.NOME = 'Michael' AND ej.IDEQUIPE = @idEquipe;
SELECT @idPosicao := ID FROM POSICAO WHERE DESCRICAO = 'Pivô';
UPDATE `JOGADOR` SET `IDPOSICAO` = @idPosicao WHERE ID = @idJogador;
SELECT @idJogador := j.ID 
                                         FROM jogador j 
                                         INNER JOIN equipejogador ej ON j.Id = ej.IDJOGADOR
                                         WHERE j.NOME = 'Gegê' AND ej.IDEQUIPE = @idEquipe;
SELECT @idPosicao := ID FROM POSICAO WHERE DESCRICAO = 'Armador';
UPDATE `JOGADOR` SET `IDPOSICAO` = @idPosicao WHERE ID = @idJogador;
SELECT @idJogador := j.ID 
                                         FROM jogador j 
                                         INNER JOIN equipejogador ej ON j.Id = ej.IDJOGADOR
                                         WHERE j.NOME = 'Gui' AND ej.IDEQUIPE = @idEquipe;
SELECT @idPosicao := ID FROM POSICAO WHERE DESCRICAO = 'Armador';
UPDATE `JOGADOR` SET `IDPOSICAO` = @idPosicao WHERE ID = @idJogador;
SELECT @idJogador := j.ID 
                                         FROM jogador j 
                                         INNER JOIN equipejogador ej ON j.Id = ej.IDJOGADOR
                                         WHERE j.NOME = 'Léo Meindl' AND ej.IDEQUIPE = @idEquipe;
SELECT @idPosicao := ID FROM POSICAO WHERE DESCRICAO = 'Ala';
UPDATE `JOGADOR` SET `IDPOSICAO` = @idPosicao WHERE ID = @idJogador;
SELECT @idJogador := j.ID 
                                         FROM jogador j 
                                         INNER JOIN equipejogador ej ON j.Id = ej.IDJOGADOR
                                         WHERE j.NOME = 'Jaú' AND ej.IDEQUIPE = @idEquipe;
SELECT @idPosicao := ID FROM POSICAO WHERE DESCRICAO = 'Ala';
UPDATE `JOGADOR` SET `IDPOSICAO` = @idPosicao WHERE ID = @idJogador;

------------ Equipe: Brasília --------------

SELECT @idEquipe := ID FROM equipe WHERE NOME = 'Brasília';
SELECT @idJogador := j.ID 
                                         FROM jogador j 
                                         INNER JOIN equipejogador ej ON j.Id = ej.IDJOGADOR
                                         WHERE j.NOME = 'Pedro' AND ej.IDEQUIPE = @idEquipe;
SELECT @idPosicao := ID FROM POSICAO WHERE DESCRICAO = 'Armador';
UPDATE `JOGADOR` SET `IDPOSICAO` = @idPosicao WHERE ID = @idJogador;
SELECT @idJogador := j.ID 
                                         FROM jogador j 
                                         INNER JOIN equipejogador ej ON j.Id = ej.IDJOGADOR
                                         WHERE j.NOME = 'Jefferson' AND ej.IDEQUIPE = @idEquipe;
SELECT @idPosicao := ID FROM POSICAO WHERE DESCRICAO = 'Ala/Armador';
UPDATE `JOGADOR` SET `IDPOSICAO` = @idPosicao WHERE ID = @idJogador;
SELECT @idJogador := j.ID 
                                         FROM jogador j 
                                         INNER JOIN equipejogador ej ON j.Id = ej.IDJOGADOR
                                         WHERE j.NOME = 'Pilar' AND ej.IDEQUIPE = @idEquipe;
SELECT @idPosicao := ID FROM POSICAO WHERE DESCRICAO = 'Ala/Pivô';
UPDATE `JOGADOR` SET `IDPOSICAO` = @idPosicao WHERE ID = @idJogador;
SELECT @idJogador := j.ID 
                                         FROM jogador j 
                                         INNER JOIN equipejogador ej ON j.Id = ej.IDJOGADOR
                                         WHERE j.NOME = 'Paulo' AND ej.IDEQUIPE = @idEquipe;
SELECT @idPosicao := ID FROM POSICAO WHERE DESCRICAO = 'Ala';
UPDATE `JOGADOR` SET `IDPOSICAO` = @idPosicao WHERE ID = @idJogador;
SELECT @idJogador := j.ID 
                                         FROM jogador j 
                                         INNER JOIN equipejogador ej ON j.Id = ej.IDJOGADOR
                                         WHERE j.NOME = 'Victor' AND ej.IDEQUIPE = @idEquipe;
SELECT @idPosicao := ID FROM POSICAO WHERE DESCRICAO = 'Armador';
UPDATE `JOGADOR` SET `IDPOSICAO` = @idPosicao WHERE ID = @idJogador;
SELECT @idJogador := j.ID 
                                         FROM jogador j 
                                         INNER JOIN equipejogador ej ON j.Id = ej.IDJOGADOR
                                         WHERE j.NOME = 'Deryk' AND ej.IDEQUIPE = @idEquipe;
SELECT @idPosicao := ID FROM POSICAO WHERE DESCRICAO = 'Armador';
UPDATE `JOGADOR` SET `IDPOSICAO` = @idPosicao WHERE ID = @idJogador;
SELECT @idJogador := j.ID 
                                         FROM jogador j 
                                         INNER JOIN equipejogador ej ON j.Id = ej.IDJOGADOR
                                         WHERE j.NOME = 'Alex' AND ej.IDEQUIPE = @idEquipe;
SELECT @idPosicao := ID FROM POSICAO WHERE DESCRICAO = 'Ala';
UPDATE `JOGADOR` SET `IDPOSICAO` = @idPosicao WHERE ID = @idJogador;
SELECT @idJogador := j.ID 
                                         FROM jogador j 
                                         INNER JOIN equipejogador ej ON j.Id = ej.IDJOGADOR
                                         WHERE j.NOME = 'Fúlvio' AND ej.IDEQUIPE = @idEquipe;
SELECT @idPosicao := ID FROM POSICAO WHERE DESCRICAO = 'Armador';
UPDATE `JOGADOR` SET `IDPOSICAO` = @idPosicao WHERE ID = @idJogador;
SELECT @idJogador := j.ID 
                                         FROM jogador j 
                                         INNER JOIN equipejogador ej ON j.Id = ej.IDJOGADOR
                                         WHERE j.NOME = 'Giovannoni' AND ej.IDEQUIPE = @idEquipe;
SELECT @idPosicao := ID FROM POSICAO WHERE DESCRICAO = 'Ala/Pivô';
UPDATE `JOGADOR` SET `IDPOSICAO` = @idPosicao WHERE ID = @idJogador;
SELECT @idJogador := j.ID 
                                         FROM jogador j 
                                         INNER JOIN equipejogador ej ON j.Id = ej.IDJOGADOR
                                         WHERE j.NOME = 'Johnny' AND ej.IDEQUIPE = @idEquipe;
SELECT @idPosicao := ID FROM POSICAO WHERE DESCRICAO = 'Ala';
UPDATE `JOGADOR` SET `IDPOSICAO` = @idPosicao WHERE ID = @idJogador;
SELECT @idJogador := j.ID 
                                         FROM jogador j 
                                         INNER JOIN equipejogador ej ON j.Id = ej.IDJOGADOR
                                         WHERE j.NOME = 'João' AND ej.IDEQUIPE = @idEquipe;
SELECT @idPosicao := ID FROM POSICAO WHERE DESCRICAO = 'Ala/Pivô';
UPDATE `JOGADOR` SET `IDPOSICAO` = @idPosicao WHERE ID = @idJogador;
SELECT @idJogador := j.ID 
                                         FROM jogador j 
                                         INNER JOIN equipejogador ej ON j.Id = ej.IDJOGADOR
                                         WHERE j.NOME = 'D. Alemão' AND ej.IDEQUIPE = @idEquipe;
SELECT @idPosicao := ID FROM POSICAO WHERE DESCRICAO = 'Pivô';
UPDATE `JOGADOR` SET `IDPOSICAO` = @idPosicao WHERE ID = @idJogador;
SELECT @idJogador := j.ID 
                                         FROM jogador j 
                                         INNER JOIN equipejogador ej ON j.Id = ej.IDJOGADOR
                                         WHERE j.NOME = 'Lucas' AND ej.IDEQUIPE = @idEquipe;
SELECT @idPosicao := ID FROM POSICAO WHERE DESCRICAO = 'Pivô';
UPDATE `JOGADOR` SET `IDPOSICAO` = @idPosicao WHERE ID = @idJogador;
SELECT @idJogador := j.ID 
                                         FROM jogador j 
                                         INNER JOIN equipejogador ej ON j.Id = ej.IDJOGADOR
                                         WHERE j.NOME = 'Iago' AND ej.IDEQUIPE = @idEquipe;
SELECT @idPosicao := ID FROM POSICAO WHERE DESCRICAO = 'Pivô';
UPDATE `JOGADOR` SET `IDPOSICAO` = @idPosicao WHERE ID = @idJogador;
SELECT @idJogador := j.ID 
                                         FROM jogador j 
                                         INNER JOIN equipejogador ej ON j.Id = ej.IDJOGADOR
                                         WHERE j.NOME = 'Kelvin' AND ej.IDEQUIPE = @idEquipe;
SELECT @idPosicao := ID FROM POSICAO WHERE DESCRICAO = 'Ala';
UPDATE `JOGADOR` SET `IDPOSICAO` = @idPosicao WHERE ID = @idJogador;

------------ Equipe: Campo Mourão --------------

SELECT @idEquipe := ID FROM equipe WHERE NOME = 'Campo Mourão';
SELECT @idJogador := j.ID 
                                         FROM jogador j 
                                         INNER JOIN equipejogador ej ON j.Id = ej.IDJOGADOR
                                         WHERE j.NOME = 'Thornton' AND ej.IDEQUIPE = @idEquipe;
SELECT @idPosicao := ID FROM POSICAO WHERE DESCRICAO = 'Ala/Armador';
UPDATE `JOGADOR` SET `IDPOSICAO` = @idPosicao WHERE ID = @idJogador;
SELECT @idJogador := j.ID 
                                         FROM jogador j 
                                         INNER JOIN equipejogador ej ON j.Id = ej.IDJOGADOR
                                         WHERE j.NOME = 'Brown' AND ej.IDEQUIPE = @idEquipe;
SELECT @idPosicao := ID FROM POSICAO WHERE DESCRICAO = 'Armador';
UPDATE `JOGADOR` SET `IDPOSICAO` = @idPosicao WHERE ID = @idJogador;
SELECT @idJogador := j.ID 
                                         FROM jogador j 
                                         INNER JOIN equipejogador ej ON j.Id = ej.IDJOGADOR
                                         WHERE j.NOME = 'Leandro' AND ej.IDEQUIPE = @idEquipe;
SELECT @idPosicao := ID FROM POSICAO WHERE DESCRICAO = 'Ala/Pivô';
UPDATE `JOGADOR` SET `IDPOSICAO` = @idPosicao WHERE ID = @idJogador;
SELECT @idJogador := j.ID 
                                         FROM jogador j 
                                         INNER JOIN equipejogador ej ON j.Id = ej.IDJOGADOR
                                         WHERE j.NOME = 'Cauê' AND ej.IDEQUIPE = @idEquipe;
SELECT @idPosicao := ID FROM POSICAO WHERE DESCRICAO = 'Armador';
UPDATE `JOGADOR` SET `IDPOSICAO` = @idPosicao WHERE ID = @idJogador;
SELECT @idJogador := j.ID 
                                         FROM jogador j 
                                         INNER JOIN equipejogador ej ON j.Id = ej.IDJOGADOR
                                         WHERE j.NOME = 'Taddei' AND ej.IDEQUIPE = @idEquipe;
SELECT @idPosicao := ID FROM POSICAO WHERE DESCRICAO = 'Ala/Armador';
UPDATE `JOGADOR` SET `IDPOSICAO` = @idPosicao WHERE ID = @idJogador;
SELECT @idJogador := j.ID 
                                         FROM jogador j 
                                         INNER JOIN equipejogador ej ON j.Id = ej.IDJOGADOR
                                         WHERE j.NOME = 'Atílio ' AND ej.IDEQUIPE = @idEquipe;
SELECT @idPosicao := ID FROM POSICAO WHERE DESCRICAO = 'Pivô';
UPDATE `JOGADOR` SET `IDPOSICAO` = @idPosicao WHERE ID = @idJogador;
SELECT @idJogador := j.ID 
                                         FROM jogador j 
                                         INNER JOIN equipejogador ej ON j.Id = ej.IDJOGADOR
                                         WHERE j.NOME = 'Andrezão' AND ej.IDEQUIPE = @idEquipe;
SELECT @idPosicao := ID FROM POSICAO WHERE DESCRICAO = 'Ala/Pivô';
UPDATE `JOGADOR` SET `IDPOSICAO` = @idPosicao WHERE ID = @idJogador;
SELECT @idJogador := j.ID 
                                         FROM jogador j 
                                         INNER JOIN equipejogador ej ON j.Id = ej.IDJOGADOR
                                         WHERE j.NOME = 'Wesley' AND ej.IDEQUIPE = @idEquipe;
SELECT @idPosicao := ID FROM POSICAO WHERE DESCRICAO = 'Ala/Pivô';
UPDATE `JOGADOR` SET `IDPOSICAO` = @idPosicao WHERE ID = @idJogador;
SELECT @idJogador := j.ID 
                                         FROM jogador j 
                                         INNER JOIN equipejogador ej ON j.Id = ej.IDJOGADOR
                                         WHERE j.NOME = 'Pastor' AND ej.IDEQUIPE = @idEquipe;
SELECT @idPosicao := ID FROM POSICAO WHERE DESCRICAO = 'Ala';
UPDATE `JOGADOR` SET `IDPOSICAO` = @idPosicao WHERE ID = @idJogador;
SELECT @idJogador := j.ID 
                                         FROM jogador j 
                                         INNER JOIN equipejogador ej ON j.Id = ej.IDJOGADOR
                                         WHERE j.NOME = 'D. Nunes' AND ej.IDEQUIPE = @idEquipe;
SELECT @idPosicao := ID FROM POSICAO WHERE DESCRICAO = 'Ala/Pivô';
UPDATE `JOGADOR` SET `IDPOSICAO` = @idPosicao WHERE ID = @idJogador;
SELECT @idJogador := j.ID 
                                         FROM jogador j 
                                         INNER JOIN equipejogador ej ON j.Id = ej.IDJOGADOR
                                         WHERE j.NOME = 'Betinho' AND ej.IDEQUIPE = @idEquipe;
SELECT @idPosicao := ID FROM POSICAO WHERE DESCRICAO = 'Ala/Armador';
UPDATE `JOGADOR` SET `IDPOSICAO` = @idPosicao WHERE ID = @idJogador;
SELECT @idJogador := j.ID 
                                         FROM jogador j 
                                         INNER JOIN equipejogador ej ON j.Id = ej.IDJOGADOR
                                         WHERE j.NOME = 'Solano' AND ej.IDEQUIPE = @idEquipe;
SELECT @idPosicao := ID FROM POSICAO WHERE DESCRICAO = 'Ala/Armador';
UPDATE `JOGADOR` SET `IDPOSICAO` = @idPosicao WHERE ID = @idJogador;
SELECT @idJogador := j.ID 
                                         FROM jogador j 
                                         INNER JOIN equipejogador ej ON j.Id = ej.IDJOGADOR
                                         WHERE j.NOME = 'Jordan' AND ej.IDEQUIPE = @idEquipe;
SELECT @idPosicao := ID FROM POSICAO WHERE DESCRICAO = 'Ala';
UPDATE `JOGADOR` SET `IDPOSICAO` = @idPosicao WHERE ID = @idJogador;
SELECT @idJogador := j.ID 
                                         FROM jogador j 
                                         INNER JOIN equipejogador ej ON j.Id = ej.IDJOGADOR
                                         WHERE j.NOME = 'Marcão' AND ej.IDEQUIPE = @idEquipe;
SELECT @idPosicao := ID FROM POSICAO WHERE DESCRICAO = 'Pivô';
UPDATE `JOGADOR` SET `IDPOSICAO` = @idPosicao WHERE ID = @idJogador;
SELECT @idJogador := j.ID 
                                         FROM jogador j 
                                         INNER JOIN equipejogador ej ON j.Id = ej.IDJOGADOR
                                         WHERE j.NOME = 'Bruno' AND ej.IDEQUIPE = @idEquipe;
SELECT @idPosicao := ID FROM POSICAO WHERE DESCRICAO = 'Ala/Armador';
UPDATE `JOGADOR` SET `IDPOSICAO` = @idPosicao WHERE ID = @idJogador;
SELECT @idJogador := j.ID 
                                         FROM jogador j 
                                         INNER JOIN equipejogador ej ON j.Id = ej.IDJOGADOR
                                         WHERE j.NOME = 'Romário' AND ej.IDEQUIPE = @idEquipe;
SELECT @idPosicao := ID FROM POSICAO WHERE DESCRICAO = 'Pivô';
UPDATE `JOGADOR` SET `IDPOSICAO` = @idPosicao WHERE ID = @idJogador;
SELECT @idJogador := j.ID 
                                         FROM jogador j 
                                         INNER JOIN equipejogador ej ON j.Id = ej.IDJOGADOR
                                         WHERE j.NOME = 'W. César' AND ej.IDEQUIPE = @idEquipe;
SELECT @idPosicao := ID FROM POSICAO WHERE DESCRICAO = 'Ala';
UPDATE `JOGADOR` SET `IDPOSICAO` = @idPosicao WHERE ID = @idJogador;

------------ Equipe: Caxias do Sul --------------

SELECT @idEquipe := ID FROM equipe WHERE NOME = 'Caxias do Sul';
SELECT @idJogador := j.ID 
                                         FROM jogador j 
                                         INNER JOIN equipejogador ej ON j.Id = ej.IDJOGADOR
                                         WHERE j.NOME = 'Carioca' AND ej.IDEQUIPE = @idEquipe;
SELECT @idPosicao := ID FROM POSICAO WHERE DESCRICAO = 'Armador';
UPDATE `JOGADOR` SET `IDPOSICAO` = @idPosicao WHERE ID = @idJogador;
SELECT @idJogador := j.ID 
                                         FROM jogador j 
                                         INNER JOIN equipejogador ej ON j.Id = ej.IDJOGADOR
                                         WHERE j.NOME = 'Diego' AND ej.IDEQUIPE = @idEquipe;
SELECT @idPosicao := ID FROM POSICAO WHERE DESCRICAO = 'Ala/Pivô';
UPDATE `JOGADOR` SET `IDPOSICAO` = @idPosicao WHERE ID = @idJogador;
SELECT @idJogador := j.ID 
                                         FROM jogador j 
                                         INNER JOIN equipejogador ej ON j.Id = ej.IDJOGADOR
                                         WHERE j.NOME = 'Vinícius' AND ej.IDEQUIPE = @idEquipe;
SELECT @idPosicao := ID FROM POSICAO WHERE DESCRICAO = 'Armador';
UPDATE `JOGADOR` SET `IDPOSICAO` = @idPosicao WHERE ID = @idJogador;
SELECT @idJogador := j.ID 
                                         FROM jogador j 
                                         INNER JOIN equipejogador ej ON j.Id = ej.IDJOGADOR
                                         WHERE j.NOME = 'Bruno' AND ej.IDEQUIPE = @idEquipe;
SELECT @idPosicao := ID FROM POSICAO WHERE DESCRICAO = 'Ala';
UPDATE `JOGADOR` SET `IDPOSICAO` = @idPosicao WHERE ID = @idJogador;
SELECT @idJogador := j.ID 
                                         FROM jogador j 
                                         INNER JOIN equipejogador ej ON j.Id = ej.IDJOGADOR
                                         WHERE j.NOME = 'Fred' AND ej.IDEQUIPE = @idEquipe;
SELECT @idPosicao := ID FROM POSICAO WHERE DESCRICAO = 'Armador';
UPDATE `JOGADOR` SET `IDPOSICAO` = @idPosicao WHERE ID = @idJogador;
SELECT @idJogador := j.ID 
                                         FROM jogador j 
                                         INNER JOIN equipejogador ej ON j.Id = ej.IDJOGADOR
                                         WHERE j.NOME = 'Douglas' AND ej.IDEQUIPE = @idEquipe;
SELECT @idPosicao := ID FROM POSICAO WHERE DESCRICAO = 'Ala';
UPDATE `JOGADOR` SET `IDPOSICAO` = @idPosicao WHERE ID = @idJogador;
SELECT @idJogador := j.ID 
                                         FROM jogador j 
                                         INNER JOIN equipejogador ej ON j.Id = ej.IDJOGADOR
                                         WHERE j.NOME = 'Marcão' AND ej.IDEQUIPE = @idEquipe;
SELECT @idPosicao := ID FROM POSICAO WHERE DESCRICAO = 'Pivô';
UPDATE `JOGADOR` SET `IDPOSICAO` = @idPosicao WHERE ID = @idJogador;
SELECT @idJogador := j.ID 
                                         FROM jogador j 
                                         INNER JOIN equipejogador ej ON j.Id = ej.IDJOGADOR
                                         WHERE j.NOME = 'Guto' AND ej.IDEQUIPE = @idEquipe;
SELECT @idPosicao := ID FROM POSICAO WHERE DESCRICAO = 'Ala';
UPDATE `JOGADOR` SET `IDPOSICAO` = @idPosicao WHERE ID = @idJogador;
SELECT @idJogador := j.ID 
                                         FROM jogador j 
                                         INNER JOIN equipejogador ej ON j.Id = ej.IDJOGADOR
                                         WHERE j.NOME = 'Rubinho' AND ej.IDEQUIPE = @idEquipe;
SELECT @idPosicao := ID FROM POSICAO WHERE DESCRICAO = 'Ala/Pivô';
UPDATE `JOGADOR` SET `IDPOSICAO` = @idPosicao WHERE ID = @idJogador;
SELECT @idJogador := j.ID 
                                         FROM jogador j 
                                         INNER JOIN equipejogador ej ON j.Id = ej.IDJOGADOR
                                         WHERE j.NOME = 'Nandão' AND ej.IDEQUIPE = @idEquipe;
SELECT @idPosicao := ID FROM POSICAO WHERE DESCRICAO = 'Pivô';
UPDATE `JOGADOR` SET `IDPOSICAO` = @idPosicao WHERE ID = @idJogador;
SELECT @idJogador := j.ID 
                                         FROM jogador j 
                                         INNER JOIN equipejogador ej ON j.Id = ej.IDJOGADOR
                                         WHERE j.NOME = 'Gabriel' AND ej.IDEQUIPE = @idEquipe;
SELECT @idPosicao := ID FROM POSICAO WHERE DESCRICAO = 'Armador';
UPDATE `JOGADOR` SET `IDPOSICAO` = @idPosicao WHERE ID = @idJogador;
SELECT @idJogador := j.ID 
                                         FROM jogador j 
                                         INNER JOIN equipejogador ej ON j.Id = ej.IDJOGADOR
                                         WHERE j.NOME = 'Dida' AND ej.IDEQUIPE = @idEquipe;
SELECT @idPosicao := ID FROM POSICAO WHERE DESCRICAO = 'Ala/Pivô';
UPDATE `JOGADOR` SET `IDPOSICAO` = @idPosicao WHERE ID = @idJogador;
SELECT @idJogador := j.ID 
                                         FROM jogador j 
                                         INNER JOIN equipejogador ej ON j.Id = ej.IDJOGADOR
                                         WHERE j.NOME = 'R. Stabile' AND ej.IDEQUIPE = @idEquipe;
SELECT @idPosicao := ID FROM POSICAO WHERE DESCRICAO = 'Ala';
UPDATE `JOGADOR` SET `IDPOSICAO` = @idPosicao WHERE ID = @idJogador;
SELECT @idJogador := j.ID 
                                         FROM jogador j 
                                         INNER JOIN equipejogador ej ON j.Id = ej.IDJOGADOR
                                         WHERE j.NOME = 'Buboltz ' AND ej.IDEQUIPE = @idEquipe;
SELECT @idPosicao := ID FROM POSICAO WHERE DESCRICAO = 'Ala/Armador';
UPDATE `JOGADOR` SET `IDPOSICAO` = @idPosicao WHERE ID = @idJogador;
SELECT @idJogador := j.ID 
                                         FROM jogador j 
                                         INNER JOIN equipejogador ej ON j.Id = ej.IDJOGADOR
                                         WHERE j.NOME = 'Arthur' AND ej.IDEQUIPE = @idEquipe;
SELECT @idPosicao := ID FROM POSICAO WHERE DESCRICAO = 'Ala/Pivô';
UPDATE `JOGADOR` SET `IDPOSICAO` = @idPosicao WHERE ID = @idJogador;
SELECT @idJogador := j.ID 
                                         FROM jogador j 
                                         INNER JOIN equipejogador ej ON j.Id = ej.IDJOGADOR
                                         WHERE j.NOME = 'Jonas' AND ej.IDEQUIPE = @idEquipe;
SELECT @idPosicao := ID FROM POSICAO WHERE DESCRICAO = 'Ala';
UPDATE `JOGADOR` SET `IDPOSICAO` = @idPosicao WHERE ID = @idJogador;
SELECT @idJogador := j.ID 
                                         FROM jogador j 
                                         INNER JOIN equipejogador ej ON j.Id = ej.IDJOGADOR
                                         WHERE j.NOME = 'Rech' AND ej.IDEQUIPE = @idEquipe;
SELECT @idPosicao := ID FROM POSICAO WHERE DESCRICAO = 'Pivô';
UPDATE `JOGADOR` SET `IDPOSICAO` = @idPosicao WHERE ID = @idJogador;

------------ Equipe: Flamengo --------------

SELECT @idEquipe := ID FROM equipe WHERE NOME = 'Flamengo';
SELECT @idJogador := j.ID 
                                         FROM jogador j 
                                         INNER JOIN equipejogador ej ON j.Id = ej.IDJOGADOR
                                         WHERE j.NOME = 'Rollins' AND ej.IDEQUIPE = @idEquipe;
SELECT @idPosicao := ID FROM POSICAO WHERE DESCRICAO = 'Pivô';
UPDATE `JOGADOR` SET `IDPOSICAO` = @idPosicao WHERE ID = @idJogador;
SELECT @idJogador := j.ID 
                                         FROM jogador j 
                                         INNER JOIN equipejogador ej ON j.Id = ej.IDJOGADOR
                                         WHERE j.NOME = 'Marcelinho' AND ej.IDEQUIPE = @idEquipe;
SELECT @idPosicao := ID FROM POSICAO WHERE DESCRICAO = 'Ala';
UPDATE `JOGADOR` SET `IDPOSICAO` = @idPosicao WHERE ID = @idJogador;
SELECT @idJogador := j.ID 
                                         FROM jogador j 
                                         INNER JOIN equipejogador ej ON j.Id = ej.IDJOGADOR
                                         WHERE j.NOME = 'Fischer' AND ej.IDEQUIPE = @idEquipe;
SELECT @idPosicao := ID FROM POSICAO WHERE DESCRICAO = 'Armador';
UPDATE `JOGADOR` SET `IDPOSICAO` = @idPosicao WHERE ID = @idJogador;
SELECT @idJogador := j.ID 
                                         FROM jogador j 
                                         INNER JOIN equipejogador ej ON j.Id = ej.IDJOGADOR
                                         WHERE j.NOME = 'Felipin' AND ej.IDEQUIPE = @idEquipe;
SELECT @idPosicao := ID FROM POSICAO WHERE DESCRICAO = 'Ala';
UPDATE `JOGADOR` SET `IDPOSICAO` = @idPosicao WHERE ID = @idJogador;
SELECT @idJogador := j.ID 
                                         FROM jogador j 
                                         INNER JOIN equipejogador ej ON j.Id = ej.IDJOGADOR
                                         WHERE j.NOME = 'Pedrinho' AND ej.IDEQUIPE = @idEquipe;
SELECT @idPosicao := ID FROM POSICAO WHERE DESCRICAO = 'Armador';
UPDATE `JOGADOR` SET `IDPOSICAO` = @idPosicao WHERE ID = @idJogador;
SELECT @idJogador := j.ID 
                                         FROM jogador j 
                                         INNER JOIN equipejogador ej ON j.Id = ej.IDJOGADOR
                                         WHERE j.NOME = 'Bernardo' AND ej.IDEQUIPE = @idEquipe;
SELECT @idPosicao := ID FROM POSICAO WHERE DESCRICAO = 'Ala';
UPDATE `JOGADOR` SET `IDPOSICAO` = @idPosicao WHERE ID = @idJogador;
SELECT @idJogador := j.ID 
                                         FROM jogador j 
                                         INNER JOIN equipejogador ej ON j.Id = ej.IDJOGADOR
                                         WHERE j.NOME = 'Lelê' AND ej.IDEQUIPE = @idEquipe;
SELECT @idPosicao := ID FROM POSICAO WHERE DESCRICAO = 'Ala';
UPDATE `JOGADOR` SET `IDPOSICAO` = @idPosicao WHERE ID = @idJogador;
SELECT @idJogador := j.ID 
                                         FROM jogador j 
                                         INNER JOIN equipejogador ej ON j.Id = ej.IDJOGADOR
                                         WHERE j.NOME = 'Ramon' AND ej.IDEQUIPE = @idEquipe;
SELECT @idPosicao := ID FROM POSICAO WHERE DESCRICAO = 'Armador';
UPDATE `JOGADOR` SET `IDPOSICAO` = @idPosicao WHERE ID = @idJogador;
SELECT @idJogador := j.ID 
                                         FROM jogador j 
                                         INNER JOIN equipejogador ej ON j.Id = ej.IDJOGADOR
                                         WHERE j.NOME = 'Marquinhos' AND ej.IDEQUIPE = @idEquipe;
SELECT @idPosicao := ID FROM POSICAO WHERE DESCRICAO = 'Ala';
UPDATE `JOGADOR` SET `IDPOSICAO` = @idPosicao WHERE ID = @idJogador;
SELECT @idJogador := j.ID 
                                         FROM jogador j 
                                         INNER JOIN equipejogador ej ON j.Id = ej.IDJOGADOR
                                         WHERE j.NOME = 'Mineiro' AND ej.IDEQUIPE = @idEquipe;
SELECT @idPosicao := ID FROM POSICAO WHERE DESCRICAO = 'Ala/Pivô';
UPDATE `JOGADOR` SET `IDPOSICAO` = @idPosicao WHERE ID = @idJogador;
SELECT @idJogador := j.ID 
                                         FROM jogador j 
                                         INNER JOIN equipejogador ej ON j.Id = ej.IDJOGADOR
                                         WHERE j.NOME = 'Batista' AND ej.IDEQUIPE = @idEquipe;
SELECT @idPosicao := ID FROM POSICAO WHERE DESCRICAO = 'Pivô';
UPDATE `JOGADOR` SET `IDPOSICAO` = @idPosicao WHERE ID = @idJogador;
SELECT @idJogador := j.ID 
                                         FROM jogador j 
                                         INNER JOIN equipejogador ej ON j.Id = ej.IDJOGADOR
                                         WHERE j.NOME = 'Amorim' AND ej.IDEQUIPE = @idEquipe;
SELECT @idPosicao := ID FROM POSICAO WHERE DESCRICAO = 'Ala';
UPDATE `JOGADOR` SET `IDPOSICAO` = @idPosicao WHERE ID = @idJogador;
SELECT @idJogador := j.ID 
                                         FROM jogador j 
                                         INNER JOIN equipejogador ej ON j.Id = ej.IDJOGADOR
                                         WHERE j.NOME = 'Olivinha' AND ej.IDEQUIPE = @idEquipe;
SELECT @idPosicao := ID FROM POSICAO WHERE DESCRICAO = 'Ala/Pivô';
UPDATE `JOGADOR` SET `IDPOSICAO` = @idPosicao WHERE ID = @idJogador;
SELECT @idJogador := j.ID 
                                         FROM jogador j 
                                         INNER JOIN equipejogador ej ON j.Id = ej.IDJOGADOR
                                         WHERE j.NOME = 'Danilo' AND ej.IDEQUIPE = @idEquipe;
SELECT @idPosicao := ID FROM POSICAO WHERE DESCRICAO = 'Ala';
UPDATE `JOGADOR` SET `IDPOSICAO` = @idPosicao WHERE ID = @idJogador;
SELECT @idJogador := j.ID 
                                         FROM jogador j 
                                         INNER JOIN equipejogador ej ON j.Id = ej.IDJOGADOR
                                         WHERE j.NOME = 'Humberto G.' AND ej.IDEQUIPE = @idEquipe;
SELECT @idPosicao := ID FROM POSICAO WHERE DESCRICAO = 'Ala/Armador';
UPDATE `JOGADOR` SET `IDPOSICAO` = @idPosicao WHERE ID = @idJogador;
SELECT @idJogador := j.ID 
                                         FROM jogador j 
                                         INNER JOIN equipejogador ej ON j.Id = ej.IDJOGADOR
                                         WHERE j.NOME = 'Léo Bispo' AND ej.IDEQUIPE = @idEquipe;
SELECT @idPosicao := ID FROM POSICAO WHERE DESCRICAO = 'Pivô';
UPDATE `JOGADOR` SET `IDPOSICAO` = @idPosicao WHERE ID = @idJogador;
SELECT @idJogador := j.ID 
                                         FROM jogador j 
                                         INNER JOIN equipejogador ej ON j.Id = ej.IDJOGADOR
                                         WHERE j.NOME = 'Heitor' AND ej.IDEQUIPE = @idEquipe;
SELECT @idPosicao := ID FROM POSICAO WHERE DESCRICAO = 'Armador';
UPDATE `JOGADOR` SET `IDPOSICAO` = @idPosicao WHERE ID = @idJogador;
SELECT @idJogador := j.ID 
                                         FROM jogador j 
                                         INNER JOIN equipejogador ej ON j.Id = ej.IDJOGADOR
                                         WHERE j.NOME = 'João Vitor' AND ej.IDEQUIPE = @idEquipe;
SELECT @idPosicao := ID FROM POSICAO WHERE DESCRICAO = 'Pivô';
UPDATE `JOGADOR` SET `IDPOSICAO` = @idPosicao WHERE ID = @idJogador;

------------ Equipe: Franca --------------

SELECT @idEquipe := ID FROM equipe WHERE NOME = 'Franca';
SELECT @idJogador := j.ID 
                                         FROM jogador j 
                                         INNER JOIN equipejogador ej ON j.Id = ej.IDJOGADOR
                                         WHERE j.NOME = 'Alexey' AND ej.IDEQUIPE = @idEquipe;
SELECT @idPosicao := ID FROM POSICAO WHERE DESCRICAO = 'Armador';
UPDATE `JOGADOR` SET `IDPOSICAO` = @idPosicao WHERE ID = @idJogador;
SELECT @idJogador := j.ID 
                                         FROM jogador j 
                                         INNER JOIN equipejogador ej ON j.Id = ej.IDJOGADOR
                                         WHERE j.NOME = 'César' AND ej.IDEQUIPE = @idEquipe;
SELECT @idPosicao := ID FROM POSICAO WHERE DESCRICAO = 'Ala/Pivô';
UPDATE `JOGADOR` SET `IDPOSICAO` = @idPosicao WHERE ID = @idJogador;
SELECT @idJogador := j.ID 
                                         FROM jogador j 
                                         INNER JOIN equipejogador ej ON j.Id = ej.IDJOGADOR
                                         WHERE j.NOME = 'Isaac' AND ej.IDEQUIPE = @idEquipe;
SELECT @idPosicao := ID FROM POSICAO WHERE DESCRICAO = 'Ala';
UPDATE `JOGADOR` SET `IDPOSICAO` = @idPosicao WHERE ID = @idJogador;
SELECT @idJogador := j.ID 
                                         FROM jogador j 
                                         INNER JOIN equipejogador ej ON j.Id = ej.IDJOGADOR
                                         WHERE j.NOME = 'Cassiano' AND ej.IDEQUIPE = @idEquipe;
SELECT @idPosicao := ID FROM POSICAO WHERE DESCRICAO = 'Armador';
UPDATE `JOGADOR` SET `IDPOSICAO` = @idPosicao WHERE ID = @idJogador;
SELECT @idJogador := j.ID 
                                         FROM jogador j 
                                         INNER JOIN equipejogador ej ON j.Id = ej.IDJOGADOR
                                         WHERE j.NOME = 'Cauê' AND ej.IDEQUIPE = @idEquipe;
SELECT @idPosicao := ID FROM POSICAO WHERE DESCRICAO = 'Ala/Armador';
UPDATE `JOGADOR` SET `IDPOSICAO` = @idPosicao WHERE ID = @idJogador;
SELECT @idJogador := j.ID 
                                         FROM jogador j 
                                         INNER JOIN equipejogador ej ON j.Id = ej.IDJOGADOR
                                         WHERE j.NOME = 'Coelho' AND ej.IDEQUIPE = @idEquipe;
SELECT @idPosicao := ID FROM POSICAO WHERE DESCRICAO = 'Armador';
UPDATE `JOGADOR` SET `IDPOSICAO` = @idPosicao WHERE ID = @idJogador;
SELECT @idJogador := j.ID 
                                         FROM jogador j 
                                         INNER JOIN equipejogador ej ON j.Id = ej.IDJOGADOR
                                         WHERE j.NOME = 'Antonio' AND ej.IDEQUIPE = @idEquipe;
SELECT @idPosicao := ID FROM POSICAO WHERE DESCRICAO = 'Ala/Pivô';
UPDATE `JOGADOR` SET `IDPOSICAO` = @idPosicao WHERE ID = @idJogador;
SELECT @idJogador := j.ID 
                                         FROM jogador j 
                                         INNER JOIN equipejogador ej ON j.Id = ej.IDJOGADOR
                                         WHERE j.NOME = 'Pedro' AND ej.IDEQUIPE = @idEquipe;
SELECT @idPosicao := ID FROM POSICAO WHERE DESCRICAO = 'Ala';
UPDATE `JOGADOR` SET `IDPOSICAO` = @idPosicao WHERE ID = @idJogador;
SELECT @idJogador := j.ID 
                                         FROM jogador j 
                                         INNER JOIN equipejogador ej ON j.Id = ej.IDJOGADOR
                                         WHERE j.NOME = 'Rafael' AND ej.IDEQUIPE = @idEquipe;
SELECT @idPosicao := ID FROM POSICAO WHERE DESCRICAO = 'Pivô';
UPDATE `JOGADOR` SET `IDPOSICAO` = @idPosicao WHERE ID = @idJogador;
SELECT @idJogador := j.ID 
                                         FROM jogador j 
                                         INNER JOIN equipejogador ej ON j.Id = ej.IDJOGADOR
                                         WHERE j.NOME = 'Cipolini' AND ej.IDEQUIPE = @idEquipe;
SELECT @idPosicao := ID FROM POSICAO WHERE DESCRICAO = 'Pivô';
UPDATE `JOGADOR` SET `IDPOSICAO` = @idPosicao WHERE ID = @idJogador;
SELECT @idJogador := j.ID 
                                         FROM jogador j 
                                         INNER JOIN equipejogador ej ON j.Id = ej.IDJOGADOR
                                         WHERE j.NOME = 'João Pedro' AND ej.IDEQUIPE = @idEquipe;
SELECT @idPosicao := ID FROM POSICAO WHERE DESCRICAO = 'Ala/Pivô';
UPDATE `JOGADOR` SET `IDPOSICAO` = @idPosicao WHERE ID = @idJogador;
SELECT @idJogador := j.ID 
                                         FROM jogador j 
                                         INNER JOIN equipejogador ej ON j.Id = ej.IDJOGADOR
                                         WHERE j.NOME = 'Dú Sommer' AND ej.IDEQUIPE = @idEquipe;
SELECT @idPosicao := ID FROM POSICAO WHERE DESCRICAO = 'Ala/Pivô';
UPDATE `JOGADOR` SET `IDPOSICAO` = @idPosicao WHERE ID = @idJogador;
SELECT @idJogador := j.ID 
                                         FROM jogador j 
                                         INNER JOIN equipejogador ej ON j.Id = ej.IDJOGADOR
                                         WHERE j.NOME = 'Guilherme' AND ej.IDEQUIPE = @idEquipe;
SELECT @idPosicao := ID FROM POSICAO WHERE DESCRICAO = 'Ala';
UPDATE `JOGADOR` SET `IDPOSICAO` = @idPosicao WHERE ID = @idJogador;
SELECT @idJogador := j.ID 
                                         FROM jogador j 
                                         INNER JOIN equipejogador ej ON j.Id = ej.IDJOGADOR
                                         WHERE j.NOME = 'Junior' AND ej.IDEQUIPE = @idEquipe;
SELECT @idPosicao := ID FROM POSICAO WHERE DESCRICAO = 'Pivô';
UPDATE `JOGADOR` SET `IDPOSICAO` = @idPosicao WHERE ID = @idJogador;
SELECT @idJogador := j.ID 
                                         FROM jogador j 
                                         INNER JOIN equipejogador ej ON j.Id = ej.IDJOGADOR
                                         WHERE j.NOME = 'Léo' AND ej.IDEQUIPE = @idEquipe;
SELECT @idPosicao := ID FROM POSICAO WHERE DESCRICAO = 'Ala';
UPDATE `JOGADOR` SET `IDPOSICAO` = @idPosicao WHERE ID = @idJogador;
SELECT @idJogador := j.ID 
                                         FROM jogador j 
                                         INNER JOIN equipejogador ej ON j.Id = ej.IDJOGADOR
                                         WHERE j.NOME = 'Didi' AND ej.IDEQUIPE = @idEquipe;
SELECT @idPosicao := ID FROM POSICAO WHERE DESCRICAO = 'Ala';
UPDATE `JOGADOR` SET `IDPOSICAO` = @idPosicao WHERE ID = @idJogador;
SELECT @idJogador := j.ID 
                                         FROM jogador j 
                                         INNER JOIN equipejogador ej ON j.Id = ej.IDJOGADOR
                                         WHERE j.NOME = 'Dedé' AND ej.IDEQUIPE = @idEquipe;
SELECT @idPosicao := ID FROM POSICAO WHERE DESCRICAO = 'Ala';
UPDATE `JOGADOR` SET `IDPOSICAO` = @idPosicao WHERE ID = @idJogador;

------------ Equipe: L. Sorocabana --------------

SELECT @idEquipe := ID FROM equipe WHERE NOME = 'L. Sorocabana';
SELECT @idJogador := j.ID 
                                         FROM jogador j 
                                         INNER JOIN equipejogador ej ON j.Id = ej.IDJOGADOR
                                         WHERE j.NOME = 'Juzzo' AND ej.IDEQUIPE = @idEquipe;
SELECT @idPosicao := ID FROM POSICAO WHERE DESCRICAO = 'Ala';
UPDATE `JOGADOR` SET `IDPOSICAO` = @idPosicao WHERE ID = @idJogador;
SELECT @idJogador := j.ID 
                                         FROM jogador j 
                                         INNER JOIN equipejogador ej ON j.Id = ej.IDJOGADOR
                                         WHERE j.NOME = 'Léo' AND ej.IDEQUIPE = @idEquipe;
SELECT @idPosicao := ID FROM POSICAO WHERE DESCRICAO = 'Armador';
UPDATE `JOGADOR` SET `IDPOSICAO` = @idPosicao WHERE ID = @idJogador;
SELECT @idJogador := j.ID 
                                         FROM jogador j 
                                         INNER JOIN equipejogador ej ON j.Id = ej.IDJOGADOR
                                         WHERE j.NOME = 'Lucão' AND ej.IDEQUIPE = @idEquipe;
SELECT @idPosicao := ID FROM POSICAO WHERE DESCRICAO = 'Pivô';
UPDATE `JOGADOR` SET `IDPOSICAO` = @idPosicao WHERE ID = @idJogador;
SELECT @idJogador := j.ID 
                                         FROM jogador j 
                                         INNER JOIN equipejogador ej ON j.Id = ej.IDJOGADOR
                                         WHERE j.NOME = 'Lucas' AND ej.IDEQUIPE = @idEquipe;
SELECT @idPosicao := ID FROM POSICAO WHERE DESCRICAO = 'Armador';
UPDATE `JOGADOR` SET `IDPOSICAO` = @idPosicao WHERE ID = @idJogador;
SELECT @idJogador := j.ID 
                                         FROM jogador j 
                                         INNER JOIN equipejogador ej ON j.Id = ej.IDJOGADOR
                                         WHERE j.NOME = 'J. Sobral' AND ej.IDEQUIPE = @idEquipe;
SELECT @idPosicao := ID FROM POSICAO WHERE DESCRICAO = 'Pivô';
UPDATE `JOGADOR` SET `IDPOSICAO` = @idPosicao WHERE ID = @idJogador;
SELECT @idJogador := j.ID 
                                         FROM jogador j 
                                         INNER JOIN equipejogador ej ON j.Id = ej.IDJOGADOR
                                         WHERE j.NOME = 'Castellon' AND ej.IDEQUIPE = @idEquipe;
SELECT @idPosicao := ID FROM POSICAO WHERE DESCRICAO = 'Ala';
UPDATE `JOGADOR` SET `IDPOSICAO` = @idPosicao WHERE ID = @idJogador;
SELECT @idJogador := j.ID 
                                         FROM jogador j 
                                         INNER JOIN equipejogador ej ON j.Id = ej.IDJOGADOR
                                         WHERE j.NOME = 'Maique' AND ej.IDEQUIPE = @idEquipe;
SELECT @idPosicao := ID FROM POSICAO WHERE DESCRICAO = 'Pivô';
UPDATE `JOGADOR` SET `IDPOSICAO` = @idPosicao WHERE ID = @idJogador;
SELECT @idJogador := j.ID 
                                         FROM jogador j 
                                         INNER JOIN equipejogador ej ON j.Id = ej.IDJOGADOR
                                         WHERE j.NOME = 'Bruno' AND ej.IDEQUIPE = @idEquipe;
SELECT @idPosicao := ID FROM POSICAO WHERE DESCRICAO = 'Ala/Pivô';
UPDATE `JOGADOR` SET `IDPOSICAO` = @idPosicao WHERE ID = @idJogador;
SELECT @idJogador := j.ID 
                                         FROM jogador j 
                                         INNER JOIN equipejogador ej ON j.Id = ej.IDJOGADOR
                                         WHERE j.NOME = 'Victor' AND ej.IDEQUIPE = @idEquipe;
SELECT @idPosicao := ID FROM POSICAO WHERE DESCRICAO = 'Ala/Armador';
UPDATE `JOGADOR` SET `IDPOSICAO` = @idPosicao WHERE ID = @idJogador;
SELECT @idJogador := j.ID 
                                         FROM jogador j 
                                         INNER JOIN equipejogador ej ON j.Id = ej.IDJOGADOR
                                         WHERE j.NOME = 'Adriano' AND ej.IDEQUIPE = @idEquipe;
SELECT @idPosicao := ID FROM POSICAO WHERE DESCRICAO = 'Pivô';
UPDATE `JOGADOR` SET `IDPOSICAO` = @idPosicao WHERE ID = @idJogador;
SELECT @idJogador := j.ID 
                                         FROM jogador j 
                                         INNER JOIN equipejogador ej ON j.Id = ej.IDJOGADOR
                                         WHERE j.NOME = 'Luisinho' AND ej.IDEQUIPE = @idEquipe;
SELECT @idPosicao := ID FROM POSICAO WHERE DESCRICAO = 'Ala/Armador';
UPDATE `JOGADOR` SET `IDPOSICAO` = @idPosicao WHERE ID = @idJogador;
SELECT @idJogador := j.ID 
                                         FROM jogador j 
                                         INNER JOIN equipejogador ej ON j.Id = ej.IDJOGADOR
                                         WHERE j.NOME = 'Leandro' AND ej.IDEQUIPE = @idEquipe;
SELECT @idPosicao := ID FROM POSICAO WHERE DESCRICAO = 'Pivô';
UPDATE `JOGADOR` SET `IDPOSICAO` = @idPosicao WHERE ID = @idJogador;
SELECT @idJogador := j.ID 
                                         FROM jogador j 
                                         INNER JOIN equipejogador ej ON j.Id = ej.IDJOGADOR
                                         WHERE j.NOME = 'Alexandre' AND ej.IDEQUIPE = @idEquipe;
SELECT @idPosicao := ID FROM POSICAO WHERE DESCRICAO = 'Pivô';
UPDATE `JOGADOR` SET `IDPOSICAO` = @idPosicao WHERE ID = @idJogador;
SELECT @idJogador := j.ID 
                                         FROM jogador j 
                                         INNER JOIN equipejogador ej ON j.Id = ej.IDJOGADOR
                                         WHERE j.NOME = 'Branquinho' AND ej.IDEQUIPE = @idEquipe;
SELECT @idPosicao := ID FROM POSICAO WHERE DESCRICAO = 'Ala';
UPDATE `JOGADOR` SET `IDPOSICAO` = @idPosicao WHERE ID = @idJogador;
SELECT @idJogador := j.ID 
                                         FROM jogador j 
                                         INNER JOIN equipejogador ej ON j.Id = ej.IDJOGADOR
                                         WHERE j.NOME = 'Ted' AND ej.IDEQUIPE = @idEquipe;
SELECT @idPosicao := ID FROM POSICAO WHERE DESCRICAO = 'Ala';
UPDATE `JOGADOR` SET `IDPOSICAO` = @idPosicao WHERE ID = @idJogador;
SELECT @idJogador := j.ID 
                                         FROM jogador j 
                                         INNER JOIN equipejogador ej ON j.Id = ej.IDJOGADOR
                                         WHERE j.NOME = 'Cafferata' AND ej.IDEQUIPE = @idEquipe;
SELECT @idPosicao := ID FROM POSICAO WHERE DESCRICAO = 'Armador';
UPDATE `JOGADOR` SET `IDPOSICAO` = @idPosicao WHERE ID = @idJogador;

------------ Equipe: Macaé Basquete --------------

SELECT @idEquipe := ID FROM equipe WHERE NOME = 'Macaé Basquete';
SELECT @idJogador := j.ID 
                                         FROM jogador j 
                                         INNER JOIN equipejogador ej ON j.Id = ej.IDJOGADOR
                                         WHERE j.NOME = 'Anthony' AND ej.IDEQUIPE = @idEquipe;
SELECT @idPosicao := ID FROM POSICAO WHERE DESCRICAO = 'Armador';
UPDATE `JOGADOR` SET `IDPOSICAO` = @idPosicao WHERE ID = @idJogador;
SELECT @idJogador := j.ID 
                                         FROM jogador j 
                                         INNER JOIN equipejogador ej ON j.Id = ej.IDJOGADOR
                                         WHERE j.NOME = 'Simmons' AND ej.IDEQUIPE = @idEquipe;
SELECT @idPosicao := ID FROM POSICAO WHERE DESCRICAO = 'Ala';
UPDATE `JOGADOR` SET `IDPOSICAO` = @idPosicao WHERE ID = @idJogador;
SELECT @idJogador := j.ID 
                                         FROM jogador j 
                                         INNER JOIN equipejogador ej ON j.Id = ej.IDJOGADOR
                                         WHERE j.NOME = 'Pitico' AND ej.IDEQUIPE = @idEquipe;
SELECT @idPosicao := ID FROM POSICAO WHERE DESCRICAO = 'Ala/Armador';
UPDATE `JOGADOR` SET `IDPOSICAO` = @idPosicao WHERE ID = @idJogador;
SELECT @idJogador := j.ID 
                                         FROM jogador j 
                                         INNER JOIN equipejogador ej ON j.Id = ej.IDJOGADOR
                                         WHERE j.NOME = 'Thiaguinho' AND ej.IDEQUIPE = @idEquipe;
SELECT @idPosicao := ID FROM POSICAO WHERE DESCRICAO = 'Ala';
UPDATE `JOGADOR` SET `IDPOSICAO` = @idPosicao WHERE ID = @idJogador;
SELECT @idJogador := j.ID 
                                         FROM jogador j 
                                         INNER JOIN equipejogador ej ON j.Id = ej.IDJOGADOR
                                         WHERE j.NOME = 'Matheuzinho' AND ej.IDEQUIPE = @idEquipe;
SELECT @idPosicao := ID FROM POSICAO WHERE DESCRICAO = 'Ala';
UPDATE `JOGADOR` SET `IDPOSICAO` = @idPosicao WHERE ID = @idJogador;
SELECT @idJogador := j.ID 
                                         FROM jogador j 
                                         INNER JOIN equipejogador ej ON j.Id = ej.IDJOGADOR
                                         WHERE j.NOME = 'Rafa Moreira' AND ej.IDEQUIPE = @idEquipe;
SELECT @idPosicao := ID FROM POSICAO WHERE DESCRICAO = 'Ala';
UPDATE `JOGADOR` SET `IDPOSICAO` = @idPosicao WHERE ID = @idJogador;
SELECT @idJogador := j.ID 
                                         FROM jogador j 
                                         INNER JOIN equipejogador ej ON j.Id = ej.IDJOGADOR
                                         WHERE j.NOME = 'Erick' AND ej.IDEQUIPE = @idEquipe;
SELECT @idPosicao := ID FROM POSICAO WHERE DESCRICAO = 'Pivô';
UPDATE `JOGADOR` SET `IDPOSICAO` = @idPosicao WHERE ID = @idJogador;
SELECT @idJogador := j.ID 
                                         FROM jogador j 
                                         INNER JOIN equipejogador ej ON j.Id = ej.IDJOGADOR
                                         WHERE j.NOME = 'Schneider' AND ej.IDEQUIPE = @idEquipe;
SELECT @idPosicao := ID FROM POSICAO WHERE DESCRICAO = 'Ala';
UPDATE `JOGADOR` SET `IDPOSICAO` = @idPosicao WHERE ID = @idJogador;
SELECT @idJogador := j.ID 
                                         FROM jogador j 
                                         INNER JOIN equipejogador ej ON j.Id = ej.IDJOGADOR
                                         WHERE j.NOME = 'Igor' AND ej.IDEQUIPE = @idEquipe;
SELECT @idPosicao := ID FROM POSICAO WHERE DESCRICAO = 'Ala';
UPDATE `JOGADOR` SET `IDPOSICAO` = @idPosicao WHERE ID = @idJogador;
SELECT @idJogador := j.ID 
                                         FROM jogador j 
                                         INNER JOIN equipejogador ej ON j.Id = ej.IDJOGADOR
                                         WHERE j.NOME = 'Mateus A.' AND ej.IDEQUIPE = @idEquipe;
SELECT @idPosicao := ID FROM POSICAO WHERE DESCRICAO = 'Ala/Pivô';
UPDATE `JOGADOR` SET `IDPOSICAO` = @idPosicao WHERE ID = @idJogador;
SELECT @idJogador := j.ID 
                                         FROM jogador j 
                                         INNER JOIN equipejogador ej ON j.Id = ej.IDJOGADOR
                                         WHERE j.NOME = 'Alex' AND ej.IDEQUIPE = @idEquipe;
SELECT @idPosicao := ID FROM POSICAO WHERE DESCRICAO = 'Ala/Armador';
UPDATE `JOGADOR` SET `IDPOSICAO` = @idPosicao WHERE ID = @idJogador;
SELECT @idJogador := j.ID 
                                         FROM jogador j 
                                         INNER JOIN equipejogador ej ON j.Id = ej.IDJOGADOR
                                         WHERE j.NOME = 'Pezão' AND ej.IDEQUIPE = @idEquipe;
SELECT @idPosicao := ID FROM POSICAO WHERE DESCRICAO = 'Ala/Pivô';
UPDATE `JOGADOR` SET `IDPOSICAO` = @idPosicao WHERE ID = @idJogador;
SELECT @idJogador := j.ID 
                                         FROM jogador j 
                                         INNER JOIN equipejogador ej ON j.Id = ej.IDJOGADOR
                                         WHERE j.NOME = 'Silva Júnior' AND ej.IDEQUIPE = @idEquipe;
SELECT @idPosicao := ID FROM POSICAO WHERE DESCRICAO = 'Ala';
UPDATE `JOGADOR` SET `IDPOSICAO` = @idPosicao WHERE ID = @idJogador;
SELECT @idJogador := j.ID 
                                         FROM jogador j 
                                         INNER JOIN equipejogador ej ON j.Id = ej.IDJOGADOR
                                         WHERE j.NOME = 'Lupa' AND ej.IDEQUIPE = @idEquipe;
SELECT @idPosicao := ID FROM POSICAO WHERE DESCRICAO = 'Pivô';
UPDATE `JOGADOR` SET `IDPOSICAO` = @idPosicao WHERE ID = @idJogador;

------------ Equipe: Minas --------------

SELECT @idEquipe := ID FROM equipe WHERE NOME = 'Minas';
SELECT @idJogador := j.ID 
                                         FROM jogador j 
                                         INNER JOIN equipejogador ej ON j.Id = ej.IDJOGADOR
                                         WHERE j.NOME = 'Gustavo' AND ej.IDEQUIPE = @idEquipe;
SELECT @idPosicao := ID FROM POSICAO WHERE DESCRICAO = 'Ala/Armador';
UPDATE `JOGADOR` SET `IDPOSICAO` = @idPosicao WHERE ID = @idJogador;
SELECT @idJogador := j.ID 
                                         FROM jogador j 
                                         INNER JOIN equipejogador ej ON j.Id = ej.IDJOGADOR
                                         WHERE j.NOME = 'Big' AND ej.IDEQUIPE = @idEquipe;
SELECT @idPosicao := ID FROM POSICAO WHERE DESCRICAO = 'Pivô';
UPDATE `JOGADOR` SET `IDPOSICAO` = @idPosicao WHERE ID = @idJogador;
SELECT @idJogador := j.ID 
                                         FROM jogador j 
                                         INNER JOIN equipejogador ej ON j.Id = ej.IDJOGADOR
                                         WHERE j.NOME = 'Panunzio' AND ej.IDEQUIPE = @idEquipe;
SELECT @idPosicao := ID FROM POSICAO WHERE DESCRICAO = 'Ala/Armador';
UPDATE `JOGADOR` SET `IDPOSICAO` = @idPosicao WHERE ID = @idJogador;
SELECT @idJogador := j.ID 
                                         FROM jogador j 
                                         INNER JOIN equipejogador ej ON j.Id = ej.IDJOGADOR
                                         WHERE j.NOME = 'Rodgers' AND ej.IDEQUIPE = @idEquipe;
SELECT @idPosicao := ID FROM POSICAO WHERE DESCRICAO = 'Ala/Armador';
UPDATE `JOGADOR` SET `IDPOSICAO` = @idPosicao WHERE ID = @idJogador;
SELECT @idJogador := j.ID 
                                         FROM jogador j 
                                         INNER JOIN equipejogador ej ON j.Id = ej.IDJOGADOR
                                         WHERE j.NOME = 'P. Macedo' AND ej.IDEQUIPE = @idEquipe;
SELECT @idPosicao := ID FROM POSICAO WHERE DESCRICAO = 'Ala';
UPDATE `JOGADOR` SET `IDPOSICAO` = @idPosicao WHERE ID = @idJogador;
SELECT @idJogador := j.ID 
                                         FROM jogador j 
                                         INNER JOIN equipejogador ej ON j.Id = ej.IDJOGADOR
                                         WHERE j.NOME = 'Paulinho' AND ej.IDEQUIPE = @idEquipe;
SELECT @idPosicao := ID FROM POSICAO WHERE DESCRICAO = 'Ala/Armador';
UPDATE `JOGADOR` SET `IDPOSICAO` = @idPosicao WHERE ID = @idJogador;
SELECT @idJogador := j.ID 
                                         FROM jogador j 
                                         INNER JOIN equipejogador ej ON j.Id = ej.IDJOGADOR
                                         WHERE j.NOME = 'Mosso' AND ej.IDEQUIPE = @idEquipe;
SELECT @idPosicao := ID FROM POSICAO WHERE DESCRICAO = 'Ala/Pivô';
UPDATE `JOGADOR` SET `IDPOSICAO` = @idPosicao WHERE ID = @idJogador;
SELECT @idJogador := j.ID 
                                         FROM jogador j 
                                         INNER JOIN equipejogador ej ON j.Id = ej.IDJOGADOR
                                         WHERE j.NOME = 'Matheus P.' AND ej.IDEQUIPE = @idEquipe;
SELECT @idPosicao := ID FROM POSICAO WHERE DESCRICAO = 'Ala/Pivô';
UPDATE `JOGADOR` SET `IDPOSICAO` = @idPosicao WHERE ID = @idJogador;
SELECT @idJogador := j.ID 
                                         FROM jogador j 
                                         INNER JOIN equipejogador ej ON j.Id = ej.IDJOGADOR
                                         WHERE j.NOME = 'T. Santos' AND ej.IDEQUIPE = @idEquipe;
SELECT @idPosicao := ID FROM POSICAO WHERE DESCRICAO = 'Ala';
UPDATE `JOGADOR` SET `IDPOSICAO` = @idPosicao WHERE ID = @idJogador;
SELECT @idJogador := j.ID 
                                         FROM jogador j 
                                         INNER JOIN equipejogador ej ON j.Id = ej.IDJOGADOR
                                         WHERE j.NOME = 'Xande' AND ej.IDEQUIPE = @idEquipe;
SELECT @idPosicao := ID FROM POSICAO WHERE DESCRICAO = 'Armador';
UPDATE `JOGADOR` SET `IDPOSICAO` = @idPosicao WHERE ID = @idJogador;
SELECT @idJogador := j.ID 
                                         FROM jogador j 
                                         INNER JOIN equipejogador ej ON j.Id = ej.IDJOGADOR
                                         WHERE j.NOME = 'Wesley' AND ej.IDEQUIPE = @idEquipe;
SELECT @idPosicao := ID FROM POSICAO WHERE DESCRICAO = 'Pivô';
UPDATE `JOGADOR` SET `IDPOSICAO` = @idPosicao WHERE ID = @idJogador;
SELECT @idJogador := j.ID 
                                         FROM jogador j 
                                         INNER JOIN equipejogador ej ON j.Id = ej.IDJOGADOR
                                         WHERE j.NOME = 'Siqueira' AND ej.IDEQUIPE = @idEquipe;
SELECT @idPosicao := ID FROM POSICAO WHERE DESCRICAO = 'Ala/Armador';
UPDATE `JOGADOR` SET `IDPOSICAO` = @idPosicao WHERE ID = @idJogador;
SELECT @idJogador := j.ID 
                                         FROM jogador j 
                                         INNER JOIN equipejogador ej ON j.Id = ej.IDJOGADOR
                                         WHERE j.NOME = 'Maynard' AND ej.IDEQUIPE = @idEquipe;
SELECT @idPosicao := ID FROM POSICAO WHERE DESCRICAO = 'Ala/Pivô';
UPDATE `JOGADOR` SET `IDPOSICAO` = @idPosicao WHERE ID = @idJogador;
SELECT @idJogador := j.ID 
                                         FROM jogador j 
                                         INNER JOIN equipejogador ej ON j.Id = ej.IDJOGADOR
                                         WHERE j.NOME = 'Geovane' AND ej.IDEQUIPE = @idEquipe;
SELECT @idPosicao := ID FROM POSICAO WHERE DESCRICAO = 'Armador';
UPDATE `JOGADOR` SET `IDPOSICAO` = @idPosicao WHERE ID = @idJogador;
SELECT @idJogador := j.ID 
                                         FROM jogador j 
                                         INNER JOIN equipejogador ej ON j.Id = ej.IDJOGADOR
                                         WHERE j.NOME = 'Matheus S.' AND ej.IDEQUIPE = @idEquipe;
SELECT @idPosicao := ID FROM POSICAO WHERE DESCRICAO = 'Ala/Pivô';
UPDATE `JOGADOR` SET `IDPOSICAO` = @idPosicao WHERE ID = @idJogador;
SELECT @idJogador := j.ID 
                                         FROM jogador j 
                                         INNER JOIN equipejogador ej ON j.Id = ej.IDJOGADOR
                                         WHERE j.NOME = 'Victor' AND ej.IDEQUIPE = @idEquipe;
SELECT @idPosicao := ID FROM POSICAO WHERE DESCRICAO = 'Ala/Pivô';
UPDATE `JOGADOR` SET `IDPOSICAO` = @idPosicao WHERE ID = @idJogador;

------------ Equipe: Mogi --------------

SELECT @idEquipe := ID FROM equipe WHERE NOME = 'Mogi';
SELECT @idJogador := j.ID 
                                         FROM jogador j 
                                         INNER JOIN equipejogador ej ON j.Id = ej.IDJOGADOR
                                         WHERE j.NOME = 'Tyrone ' AND ej.IDEQUIPE = @idEquipe;
SELECT @idPosicao := ID FROM POSICAO WHERE DESCRICAO = 'Ala/Pivô';
UPDATE `JOGADOR` SET `IDPOSICAO` = @idPosicao WHERE ID = @idJogador;
SELECT @idJogador := j.ID 
                                         FROM jogador j 
                                         INNER JOIN equipejogador ej ON j.Id = ej.IDJOGADOR
                                         WHERE j.NOME = 'Fer Calvi' AND ej.IDEQUIPE = @idEquipe;
SELECT @idPosicao := ID FROM POSICAO WHERE DESCRICAO = 'Ala/Pivô';
UPDATE `JOGADOR` SET `IDPOSICAO` = @idPosicao WHERE ID = @idJogador;
SELECT @idJogador := j.ID 
                                         FROM jogador j 
                                         INNER JOIN equipejogador ej ON j.Id = ej.IDJOGADOR
                                         WHERE j.NOME = 'Lucas' AND ej.IDEQUIPE = @idEquipe;
SELECT @idPosicao := ID FROM POSICAO WHERE DESCRICAO = 'Armador';
UPDATE `JOGADOR` SET `IDPOSICAO` = @idPosicao WHERE ID = @idJogador;
SELECT @idJogador := j.ID 
                                         FROM jogador j 
                                         INNER JOIN equipejogador ej ON j.Id = ej.IDJOGADOR
                                         WHERE j.NOME = 'Larry' AND ej.IDEQUIPE = @idEquipe;
SELECT @idPosicao := ID FROM POSICAO WHERE DESCRICAO = 'Armador';
UPDATE `JOGADOR` SET `IDPOSICAO` = @idPosicao WHERE ID = @idJogador;
SELECT @idJogador := j.ID 
                                         FROM jogador j 
                                         INNER JOIN equipejogador ej ON j.Id = ej.IDJOGADOR
                                         WHERE j.NOME = 'Elinho' AND ej.IDEQUIPE = @idEquipe;
SELECT @idPosicao := ID FROM POSICAO WHERE DESCRICAO = 'Armador';
UPDATE `JOGADOR` SET `IDPOSICAO` = @idPosicao WHERE ID = @idJogador;
SELECT @idJogador := j.ID 
                                         FROM jogador j 
                                         INNER JOIN equipejogador ej ON j.Id = ej.IDJOGADOR
                                         WHERE j.NOME = 'Gerson' AND ej.IDEQUIPE = @idEquipe;
SELECT @idPosicao := ID FROM POSICAO WHERE DESCRICAO = 'Pivô';
UPDATE `JOGADOR` SET `IDPOSICAO` = @idPosicao WHERE ID = @idJogador;
SELECT @idJogador := j.ID 
                                         FROM jogador j 
                                         INNER JOIN equipejogador ej ON j.Id = ej.IDJOGADOR
                                         WHERE j.NOME = 'Vitinho' AND ej.IDEQUIPE = @idEquipe;
SELECT @idPosicao := ID FROM POSICAO WHERE DESCRICAO = 'Armador';
UPDATE `JOGADOR` SET `IDPOSICAO` = @idPosicao WHERE ID = @idJogador;
SELECT @idJogador := j.ID 
                                         FROM jogador j 
                                         INNER JOIN equipejogador ej ON j.Id = ej.IDJOGADOR
                                         WHERE j.NOME = 'Fabricio' AND ej.IDEQUIPE = @idEquipe;
SELECT @idPosicao := ID FROM POSICAO WHERE DESCRICAO = 'Ala';
UPDATE `JOGADOR` SET `IDPOSICAO` = @idPosicao WHERE ID = @idJogador;
SELECT @idJogador := j.ID 
                                         FROM jogador j 
                                         INNER JOIN equipejogador ej ON j.Id = ej.IDJOGADOR
                                         WHERE j.NOME = 'Filipin' AND ej.IDEQUIPE = @idEquipe;
SELECT @idPosicao := ID FROM POSICAO WHERE DESCRICAO = 'Ala';
UPDATE `JOGADOR` SET `IDPOSICAO` = @idPosicao WHERE ID = @idJogador;
SELECT @idJogador := j.ID 
                                         FROM jogador j 
                                         INNER JOIN equipejogador ej ON j.Id = ej.IDJOGADOR
                                         WHERE j.NOME = 'Oliveira' AND ej.IDEQUIPE = @idEquipe;
SELECT @idPosicao := ID FROM POSICAO WHERE DESCRICAO = 'Ala/Pivô';
UPDATE `JOGADOR` SET `IDPOSICAO` = @idPosicao WHERE ID = @idJogador;
SELECT @idJogador := j.ID 
                                         FROM jogador j 
                                         INNER JOIN equipejogador ej ON j.Id = ej.IDJOGADOR
                                         WHERE j.NOME = 'C. Torres' AND ej.IDEQUIPE = @idEquipe;
SELECT @idPosicao := ID FROM POSICAO WHERE DESCRICAO = 'Pivô';
UPDATE `JOGADOR` SET `IDPOSICAO` = @idPosicao WHERE ID = @idJogador;
SELECT @idJogador := j.ID 
                                         FROM jogador j 
                                         INNER JOIN equipejogador ej ON j.Id = ej.IDJOGADOR
                                         WHERE j.NOME = 'Franklin' AND ej.IDEQUIPE = @idEquipe;
SELECT @idPosicao := ID FROM POSICAO WHERE DESCRICAO = 'Pivô';
UPDATE `JOGADOR` SET `IDPOSICAO` = @idPosicao WHERE ID = @idJogador;
SELECT @idJogador := j.ID 
                                         FROM jogador j 
                                         INNER JOIN equipejogador ej ON j.Id = ej.IDJOGADOR
                                         WHERE j.NOME = 'Jimmy' AND ej.IDEQUIPE = @idEquipe;
SELECT @idPosicao := ID FROM POSICAO WHERE DESCRICAO = 'Ala';
UPDATE `JOGADOR` SET `IDPOSICAO` = @idPosicao WHERE ID = @idJogador;
SELECT @idJogador := j.ID 
                                         FROM jogador j 
                                         INNER JOIN equipejogador ej ON j.Id = ej.IDJOGADOR
                                         WHERE j.NOME = 'Igor' AND ej.IDEQUIPE = @idEquipe;
SELECT @idPosicao := ID FROM POSICAO WHERE DESCRICAO = 'Ala/Armador';
UPDATE `JOGADOR` SET `IDPOSICAO` = @idPosicao WHERE ID = @idJogador;
SELECT @idJogador := j.ID 
                                         FROM jogador j 
                                         INNER JOIN equipejogador ej ON j.Id = ej.IDJOGADOR
                                         WHERE j.NOME = 'Shamell' AND ej.IDEQUIPE = @idEquipe;
SELECT @idPosicao := ID FROM POSICAO WHERE DESCRICAO = 'Ala';
UPDATE `JOGADOR` SET `IDPOSICAO` = @idPosicao WHERE ID = @idJogador;
SELECT @idJogador := j.ID 
                                         FROM jogador j 
                                         INNER JOIN equipejogador ej ON j.Id = ej.IDJOGADOR
                                         WHERE j.NOME = 'Lessa' AND ej.IDEQUIPE = @idEquipe;
SELECT @idPosicao := ID FROM POSICAO WHERE DESCRICAO = 'Ala/Armador';
UPDATE `JOGADOR` SET `IDPOSICAO` = @idPosicao WHERE ID = @idJogador;
SELECT @idJogador := j.ID 
                                         FROM jogador j 
                                         INNER JOIN equipejogador ej ON j.Id = ej.IDJOGADOR
                                         WHERE j.NOME = 'José Carlos' AND ej.IDEQUIPE = @idEquipe;
SELECT @idPosicao := ID FROM POSICAO WHERE DESCRICAO = 'Pivô';
UPDATE `JOGADOR` SET `IDPOSICAO` = @idPosicao WHERE ID = @idJogador;
SELECT @idJogador := j.ID 
                                         FROM jogador j 
                                         INNER JOIN equipejogador ej ON j.Id = ej.IDJOGADOR
                                         WHERE j.NOME = 'Miguel' AND ej.IDEQUIPE = @idEquipe;
SELECT @idPosicao := ID FROM POSICAO WHERE DESCRICAO = 'Ala/Pivô';
UPDATE `JOGADOR` SET `IDPOSICAO` = @idPosicao WHERE ID = @idJogador;

------------ Equipe: Paulistano --------------

SELECT @idEquipe := ID FROM equipe WHERE NOME = 'Paulistano';
SELECT @idJogador := j.ID 
                                         FROM jogador j 
                                         INNER JOIN equipejogador ej ON j.Id = ej.IDJOGADOR
                                         WHERE j.NOME = 'Yago' AND ej.IDEQUIPE = @idEquipe;
SELECT @idPosicao := ID FROM POSICAO WHERE DESCRICAO = 'Armador';
UPDATE `JOGADOR` SET `IDPOSICAO` = @idPosicao WHERE ID = @idJogador;
SELECT @idJogador := j.ID 
                                         FROM jogador j 
                                         INNER JOIN equipejogador ej ON j.Id = ej.IDJOGADOR
                                         WHERE j.NOME = 'Mogi' AND ej.IDEQUIPE = @idEquipe;
SELECT @idPosicao := ID FROM POSICAO WHERE DESCRICAO = 'Ala/Armador';
UPDATE `JOGADOR` SET `IDPOSICAO` = @idPosicao WHERE ID = @idJogador;
SELECT @idJogador := j.ID 
                                         FROM jogador j 
                                         INNER JOIN equipejogador ej ON j.Id = ej.IDJOGADOR
                                         WHERE j.NOME = 'Luis Fernando' AND ej.IDEQUIPE = @idEquipe;
SELECT @idPosicao := ID FROM POSICAO WHERE DESCRICAO = 'Ala/Armador';
UPDATE `JOGADOR` SET `IDPOSICAO` = @idPosicao WHERE ID = @idJogador;
SELECT @idJogador := j.ID 
                                         FROM jogador j 
                                         INNER JOIN equipejogador ej ON j.Id = ej.IDJOGADOR
                                         WHERE j.NOME = 'Jhonatan' AND ej.IDEQUIPE = @idEquipe;
SELECT @idPosicao := ID FROM POSICAO WHERE DESCRICAO = 'Ala';
UPDATE `JOGADOR` SET `IDPOSICAO` = @idPosicao WHERE ID = @idJogador;
SELECT @idJogador := j.ID 
                                         FROM jogador j 
                                         INNER JOIN equipejogador ej ON j.Id = ej.IDJOGADOR
                                         WHERE j.NOME = 'Lucas' AND ej.IDEQUIPE = @idEquipe;
SELECT @idPosicao := ID FROM POSICAO WHERE DESCRICAO = 'Ala';
UPDATE `JOGADOR` SET `IDPOSICAO` = @idPosicao WHERE ID = @idJogador;
SELECT @idJogador := j.ID 
                                         FROM jogador j 
                                         INNER JOIN equipejogador ej ON j.Id = ej.IDJOGADOR
                                         WHERE j.NOME = 'Victor André' AND ej.IDEQUIPE = @idEquipe;
SELECT @idPosicao := ID FROM POSICAO WHERE DESCRICAO = 'Ala/Pivô';
UPDATE `JOGADOR` SET `IDPOSICAO` = @idPosicao WHERE ID = @idJogador;
SELECT @idJogador := j.ID 
                                         FROM jogador j 
                                         INNER JOIN equipejogador ej ON j.Id = ej.IDJOGADOR
                                         WHERE j.NOME = 'Danilo' AND ej.IDEQUIPE = @idEquipe;
SELECT @idPosicao := ID FROM POSICAO WHERE DESCRICAO = 'Ala/Armador';
UPDATE `JOGADOR` SET `IDPOSICAO` = @idPosicao WHERE ID = @idJogador;
SELECT @idJogador := j.ID 
                                         FROM jogador j 
                                         INNER JOIN equipejogador ej ON j.Id = ej.IDJOGADOR
                                         WHERE j.NOME = 'Hure' AND ej.IDEQUIPE = @idEquipe;
SELECT @idPosicao := ID FROM POSICAO WHERE DESCRICAO = 'Ala/Pivô';
UPDATE `JOGADOR` SET `IDPOSICAO` = @idPosicao WHERE ID = @idJogador;
SELECT @idJogador := j.ID 
                                         FROM jogador j 
                                         INNER JOIN equipejogador ej ON j.Id = ej.IDJOGADOR
                                         WHERE j.NOME = 'Arthur Pecos' AND ej.IDEQUIPE = @idEquipe;
SELECT @idPosicao := ID FROM POSICAO WHERE DESCRICAO = 'Armador';
UPDATE `JOGADOR` SET `IDPOSICAO` = @idPosicao WHERE ID = @idJogador;
SELECT @idJogador := j.ID 
                                         FROM jogador j 
                                         INNER JOIN equipejogador ej ON j.Id = ej.IDJOGADOR
                                         WHERE j.NOME = 'Renato' AND ej.IDEQUIPE = @idEquipe;
SELECT @idPosicao := ID FROM POSICAO WHERE DESCRICAO = 'Ala/Pivô';
UPDATE `JOGADOR` SET `IDPOSICAO` = @idPosicao WHERE ID = @idJogador;
SELECT @idJogador := j.ID 
                                         FROM jogador j 
                                         INNER JOIN equipejogador ej ON j.Id = ej.IDJOGADOR
                                         WHERE j.NOME = 'Prestes' AND ej.IDEQUIPE = @idEquipe;
SELECT @idPosicao := ID FROM POSICAO WHERE DESCRICAO = 'Pivô';
UPDATE `JOGADOR` SET `IDPOSICAO` = @idPosicao WHERE ID = @idJogador;
SELECT @idJogador := j.ID 
                                         FROM jogador j 
                                         INNER JOIN equipejogador ej ON j.Id = ej.IDJOGADOR
                                         WHERE j.NOME = 'Pedrão' AND ej.IDEQUIPE = @idEquipe;
SELECT @idPosicao := ID FROM POSICAO WHERE DESCRICAO = 'Pivô';
UPDATE `JOGADOR` SET `IDPOSICAO` = @idPosicao WHERE ID = @idJogador;
SELECT @idJogador := j.ID 
                                         FROM jogador j 
                                         INNER JOIN equipejogador ej ON j.Id = ej.IDJOGADOR
                                         WHERE j.NOME = 'De Paula' AND ej.IDEQUIPE = @idEquipe;
SELECT @idPosicao := ID FROM POSICAO WHERE DESCRICAO = 'Armador';
UPDATE `JOGADOR` SET `IDPOSICAO` = @idPosicao WHERE ID = @idJogador;
SELECT @idJogador := j.ID 
                                         FROM jogador j 
                                         INNER JOIN equipejogador ej ON j.Id = ej.IDJOGADOR
                                         WHERE j.NOME = 'Eddy' AND ej.IDEQUIPE = @idEquipe;
SELECT @idPosicao := ID FROM POSICAO WHERE DESCRICAO = 'Ala/Armador';
UPDATE `JOGADOR` SET `IDPOSICAO` = @idPosicao WHERE ID = @idJogador;
SELECT @idJogador := j.ID 
                                         FROM jogador j 
                                         INNER JOIN equipejogador ej ON j.Id = ej.IDJOGADOR
                                         WHERE j.NOME = 'Guilherme' AND ej.IDEQUIPE = @idEquipe;
SELECT @idPosicao := ID FROM POSICAO WHERE DESCRICAO = 'Ala/Pivô';
UPDATE `JOGADOR` SET `IDPOSICAO` = @idPosicao WHERE ID = @idJogador;

------------ Equipe: Pinheiros --------------

SELECT @idEquipe := ID FROM equipe WHERE NOME = 'Pinheiros';
SELECT @idJogador := j.ID 
                                         FROM jogador j 
                                         INNER JOIN equipejogador ej ON j.Id = ej.IDJOGADOR
                                         WHERE j.NOME = 'Bennett' AND ej.IDEQUIPE = @idEquipe;
SELECT @idPosicao := ID FROM POSICAO WHERE DESCRICAO = 'Ala/Armador';
UPDATE `JOGADOR` SET `IDPOSICAO` = @idPosicao WHERE ID = @idJogador;
SELECT @idJogador := j.ID 
                                         FROM jogador j 
                                         INNER JOIN equipejogador ej ON j.Id = ej.IDJOGADOR
                                         WHERE j.NOME = 'Ruivo' AND ej.IDEQUIPE = @idEquipe;
SELECT @idPosicao := ID FROM POSICAO WHERE DESCRICAO = 'Armador';
UPDATE `JOGADOR` SET `IDPOSICAO` = @idPosicao WHERE ID = @idJogador;
SELECT @idJogador := j.ID 
                                         FROM jogador j 
                                         INNER JOIN equipejogador ej ON j.Id = ej.IDJOGADOR
                                         WHERE j.NOME = 'Gemerson' AND ej.IDEQUIPE = @idEquipe;
SELECT @idPosicao := ID FROM POSICAO WHERE DESCRICAO = 'Ala/Pivô';
UPDATE `JOGADOR` SET `IDPOSICAO` = @idPosicao WHERE ID = @idJogador;
SELECT @idJogador := j.ID 
                                         FROM jogador j 
                                         INNER JOIN equipejogador ej ON j.Id = ej.IDJOGADOR
                                         WHERE j.NOME = 'Mathias' AND ej.IDEQUIPE = @idEquipe;
SELECT @idPosicao := ID FROM POSICAO WHERE DESCRICAO = 'Pivô';
UPDATE `JOGADOR` SET `IDPOSICAO` = @idPosicao WHERE ID = @idJogador;
SELECT @idJogador := j.ID 
                                         FROM jogador j 
                                         INNER JOIN equipejogador ej ON j.Id = ej.IDJOGADOR
                                         WHERE j.NOME = 'Ansaloni' AND ej.IDEQUIPE = @idEquipe;
SELECT @idPosicao := ID FROM POSICAO WHERE DESCRICAO = 'Pivô';
UPDATE `JOGADOR` SET `IDPOSICAO` = @idPosicao WHERE ID = @idJogador;
SELECT @idJogador := j.ID 
                                         FROM jogador j 
                                         INNER JOIN equipejogador ej ON j.Id = ej.IDJOGADOR
                                         WHERE j.NOME = 'Teichmann' AND ej.IDEQUIPE = @idEquipe;
SELECT @idPosicao := ID FROM POSICAO WHERE DESCRICAO = 'Ala/Pivô';
UPDATE `JOGADOR` SET `IDPOSICAO` = @idPosicao WHERE ID = @idJogador;
SELECT @idJogador := j.ID 
                                         FROM jogador j 
                                         INNER JOIN equipejogador ej ON j.Id = ej.IDJOGADOR
                                         WHERE j.NOME = 'Renan' AND ej.IDEQUIPE = @idEquipe;
SELECT @idPosicao := ID FROM POSICAO WHERE DESCRICAO = 'Pivô';
UPDATE `JOGADOR` SET `IDPOSICAO` = @idPosicao WHERE ID = @idJogador;
SELECT @idJogador := j.ID 
                                         FROM jogador j 
                                         INNER JOIN equipejogador ej ON j.Id = ej.IDJOGADOR
                                         WHERE j.NOME = 'Neto' AND ej.IDEQUIPE = @idEquipe;
SELECT @idPosicao := ID FROM POSICAO WHERE DESCRICAO = 'Ala/Armador';
UPDATE `JOGADOR` SET `IDPOSICAO` = @idPosicao WHERE ID = @idJogador;
SELECT @idJogador := j.ID 
                                         FROM jogador j 
                                         INNER JOIN equipejogador ej ON j.Id = ej.IDJOGADOR
                                         WHERE j.NOME = 'Aquiles' AND ej.IDEQUIPE = @idEquipe;
SELECT @idPosicao := ID FROM POSICAO WHERE DESCRICAO = 'Ala';
UPDATE `JOGADOR` SET `IDPOSICAO` = @idPosicao WHERE ID = @idJogador;
SELECT @idJogador := j.ID 
                                         FROM jogador j 
                                         INNER JOIN equipejogador ej ON j.Id = ej.IDJOGADOR
                                         WHERE j.NOME = 'Gustavo' AND ej.IDEQUIPE = @idEquipe;
SELECT @idPosicao := ID FROM POSICAO WHERE DESCRICAO = 'Ala';
UPDATE `JOGADOR` SET `IDPOSICAO` = @idPosicao WHERE ID = @idJogador;
SELECT @idJogador := j.ID 
                                         FROM jogador j 
                                         INNER JOIN equipejogador ej ON j.Id = ej.IDJOGADOR
                                         WHERE j.NOME = 'Holloway' AND ej.IDEQUIPE = @idEquipe;
SELECT @idPosicao := ID FROM POSICAO WHERE DESCRICAO = 'Ala';
UPDATE `JOGADOR` SET `IDPOSICAO` = @idPosicao WHERE ID = @idJogador;
SELECT @idJogador := j.ID 
                                         FROM jogador j 
                                         INNER JOIN equipejogador ej ON j.Id = ej.IDJOGADOR
                                         WHERE j.NOME = 'Cauê' AND ej.IDEQUIPE = @idEquipe;
SELECT @idPosicao := ID FROM POSICAO WHERE DESCRICAO = 'Pivô';
UPDATE `JOGADOR` SET `IDPOSICAO` = @idPosicao WHERE ID = @idJogador;
SELECT @idJogador := j.ID 
                                         FROM jogador j 
                                         INNER JOIN equipejogador ej ON j.Id = ej.IDJOGADOR
                                         WHERE j.NOME = 'Danilo' AND ej.IDEQUIPE = @idEquipe;
SELECT @idPosicao := ID FROM POSICAO WHERE DESCRICAO = 'Ala/Armador';
UPDATE `JOGADOR` SET `IDPOSICAO` = @idPosicao WHERE ID = @idJogador;
SELECT @idJogador := j.ID 
                                         FROM jogador j 
                                         INNER JOIN equipejogador ej ON j.Id = ej.IDJOGADOR
                                         WHERE j.NOME = 'Thiago' AND ej.IDEQUIPE = @idEquipe;
SELECT @idPosicao := ID FROM POSICAO WHERE DESCRICAO = 'Ala';
UPDATE `JOGADOR` SET `IDPOSICAO` = @idPosicao WHERE ID = @idJogador;
SELECT @idJogador := j.ID 
                                         FROM jogador j 
                                         INNER JOIN equipejogador ej ON j.Id = ej.IDJOGADOR
                                         WHERE j.NOME = 'Arthur' AND ej.IDEQUIPE = @idEquipe;
SELECT @idPosicao := ID FROM POSICAO WHERE DESCRICAO = 'Pivô';
UPDATE `JOGADOR` SET `IDPOSICAO` = @idPosicao WHERE ID = @idJogador;

------------ Equipe: Vasco da Gama --------------

SELECT @idEquipe := ID FROM equipe WHERE NOME = 'Vasco da Gama';
SELECT @idJogador := j.ID 
                                         FROM jogador j 
                                         INNER JOIN equipejogador ej ON j.Id = ej.IDJOGADOR
                                         WHERE j.NOME = 'Hélio' AND ej.IDEQUIPE = @idEquipe;
SELECT @idPosicao := ID FROM POSICAO WHERE DESCRICAO = 'Ala/Armador';
UPDATE `JOGADOR` SET `IDPOSICAO` = @idPosicao WHERE ID = @idJogador;
SELECT @idJogador := j.ID 
                                         FROM jogador j 
                                         INNER JOIN equipejogador ej ON j.Id = ej.IDJOGADOR
                                         WHERE j.NOME = 'Wagner' AND ej.IDEQUIPE = @idEquipe;
SELECT @idPosicao := ID FROM POSICAO WHERE DESCRICAO = 'Pivô';
UPDATE `JOGADOR` SET `IDPOSICAO` = @idPosicao WHERE ID = @idJogador;
SELECT @idJogador := j.ID 
                                         FROM jogador j 
                                         INNER JOIN equipejogador ej ON j.Id = ej.IDJOGADOR
                                         WHERE j.NOME = 'Gaúcho' AND ej.IDEQUIPE = @idEquipe;
SELECT @idPosicao := ID FROM POSICAO WHERE DESCRICAO = 'Ala';
UPDATE `JOGADOR` SET `IDPOSICAO` = @idPosicao WHERE ID = @idJogador;
SELECT @idJogador := j.ID 
                                         FROM jogador j 
                                         INNER JOIN equipejogador ej ON j.Id = ej.IDJOGADOR
                                         WHERE j.NOME = 'Ricardinho' AND ej.IDEQUIPE = @idEquipe;
SELECT @idPosicao := ID FROM POSICAO WHERE DESCRICAO = 'Ala/Armador';
UPDATE `JOGADOR` SET `IDPOSICAO` = @idPosicao WHERE ID = @idJogador;
SELECT @idJogador := j.ID 
                                         FROM jogador j 
                                         INNER JOIN equipejogador ej ON j.Id = ej.IDJOGADOR
                                         WHERE j.NOME = 'Palacios' AND ej.IDEQUIPE = @idEquipe;
SELECT @idPosicao := ID FROM POSICAO WHERE DESCRICAO = 'Armador';
UPDATE `JOGADOR` SET `IDPOSICAO` = @idPosicao WHERE ID = @idJogador;
SELECT @idJogador := j.ID 
                                         FROM jogador j 
                                         INNER JOIN equipejogador ej ON j.Id = ej.IDJOGADOR
                                         WHERE j.NOME = 'Marcellus' AND ej.IDEQUIPE = @idEquipe;
SELECT @idPosicao := ID FROM POSICAO WHERE DESCRICAO = 'Ala';
UPDATE `JOGADOR` SET `IDPOSICAO` = @idPosicao WHERE ID = @idJogador;
SELECT @idJogador := j.ID 
                                         FROM jogador j 
                                         INNER JOIN equipejogador ej ON j.Id = ej.IDJOGADOR
                                         WHERE j.NOME = 'B. Fiorotto' AND ej.IDEQUIPE = @idEquipe;
SELECT @idPosicao := ID FROM POSICAO WHERE DESCRICAO = 'Pivô';
UPDATE `JOGADOR` SET `IDPOSICAO` = @idPosicao WHERE ID = @idJogador;
SELECT @idJogador := j.ID 
                                         FROM jogador j 
                                         INNER JOIN equipejogador ej ON j.Id = ej.IDJOGADOR
                                         WHERE j.NOME = 'Márcio' AND ej.IDEQUIPE = @idEquipe;
SELECT @idPosicao := ID FROM POSICAO WHERE DESCRICAO = 'Ala';
UPDATE `JOGADOR` SET `IDPOSICAO` = @idPosicao WHERE ID = @idJogador;
SELECT @idJogador := j.ID 
                                         FROM jogador j 
                                         INNER JOIN equipejogador ej ON j.Id = ej.IDJOGADOR
                                         WHERE j.NOME = 'Drudi' AND ej.IDEQUIPE = @idEquipe;
SELECT @idPosicao := ID FROM POSICAO WHERE DESCRICAO = 'Pivô';
UPDATE `JOGADOR` SET `IDPOSICAO` = @idPosicao WHERE ID = @idJogador;
SELECT @idJogador := j.ID 
                                         FROM jogador j 
                                         INNER JOIN equipejogador ej ON j.Id = ej.IDJOGADOR
                                         WHERE j.NOME = 'Murilo' AND ej.IDEQUIPE = @idEquipe;
SELECT @idPosicao := ID FROM POSICAO WHERE DESCRICAO = 'Pivô';
UPDATE `JOGADOR` SET `IDPOSICAO` = @idPosicao WHERE ID = @idJogador;
SELECT @idJogador := j.ID 
                                         FROM jogador j 
                                         INNER JOIN equipejogador ej ON j.Id = ej.IDJOGADOR
                                         WHERE j.NOME = 'Nezinho' AND ej.IDEQUIPE = @idEquipe;
SELECT @idPosicao := ID FROM POSICAO WHERE DESCRICAO = 'Armador';
UPDATE `JOGADOR` SET `IDPOSICAO` = @idPosicao WHERE ID = @idJogador;
SELECT @idJogador := j.ID 
                                         FROM jogador j 
                                         INNER JOIN equipejogador ej ON j.Id = ej.IDJOGADOR
                                         WHERE j.NOME = 'Bruninho' AND ej.IDEQUIPE = @idEquipe;
SELECT @idPosicao := ID FROM POSICAO WHERE DESCRICAO = 'Armador';
UPDATE `JOGADOR` SET `IDPOSICAO` = @idPosicao WHERE ID = @idJogador;
SELECT @idJogador := j.ID 
                                         FROM jogador j 
                                         INNER JOIN equipejogador ej ON j.Id = ej.IDJOGADOR
                                         WHERE j.NOME = 'Jackson' AND ej.IDEQUIPE = @idEquipe;
SELECT @idPosicao := ID FROM POSICAO WHERE DESCRICAO = 'Ala';
UPDATE `JOGADOR` SET `IDPOSICAO` = @idPosicao WHERE ID = @idJogador;

------------ Equipe: Vitória --------------

SELECT @idEquipe := ID FROM equipe WHERE NOME = 'Vitória';
SELECT @idJogador := j.ID 
                                         FROM jogador j 
                                         INNER JOIN equipejogador ej ON j.Id = ej.IDJOGADOR
                                         WHERE j.NOME = 'Keyron' AND ej.IDEQUIPE = @idEquipe;
SELECT @idPosicao := ID FROM POSICAO WHERE DESCRICAO = 'Ala';
UPDATE `JOGADOR` SET `IDPOSICAO` = @idPosicao WHERE ID = @idJogador;
SELECT @idJogador := j.ID 
                                         FROM jogador j 
                                         INNER JOIN equipejogador ej ON j.Id = ej.IDJOGADOR
                                         WHERE j.NOME = 'Arthur' AND ej.IDEQUIPE = @idEquipe;
SELECT @idPosicao := ID FROM POSICAO WHERE DESCRICAO = 'Ala';
UPDATE `JOGADOR` SET `IDPOSICAO` = @idPosicao WHERE ID = @idJogador;
SELECT @idJogador := j.ID 
                                         FROM jogador j 
                                         INNER JOIN equipejogador ej ON j.Id = ej.IDJOGADOR
                                         WHERE j.NOME = 'Murilo' AND ej.IDEQUIPE = @idEquipe;
SELECT @idPosicao := ID FROM POSICAO WHERE DESCRICAO = 'Armador';
UPDATE `JOGADOR` SET `IDPOSICAO` = @idPosicao WHERE ID = @idJogador;
SELECT @idJogador := j.ID 
                                         FROM jogador j 
                                         INNER JOIN equipejogador ej ON j.Id = ej.IDJOGADOR
                                         WHERE j.NOME = 'Renato' AND ej.IDEQUIPE = @idEquipe;
SELECT @idPosicao := ID FROM POSICAO WHERE DESCRICAO = 'Ala/Pivô';
UPDATE `JOGADOR` SET `IDPOSICAO` = @idPosicao WHERE ID = @idJogador;
SELECT @idJogador := j.ID 
                                         FROM jogador j 
                                         INNER JOIN equipejogador ej ON j.Id = ej.IDJOGADOR
                                         WHERE j.NOME = 'Braga' AND ej.IDEQUIPE = @idEquipe;
SELECT @idPosicao := ID FROM POSICAO WHERE DESCRICAO = 'Pivô';
UPDATE `JOGADOR` SET `IDPOSICAO` = @idPosicao WHERE ID = @idJogador;
SELECT @idJogador := j.ID 
                                         FROM jogador j 
                                         INNER JOIN equipejogador ej ON j.Id = ej.IDJOGADOR
                                         WHERE j.NOME = 'Vitinho' AND ej.IDEQUIPE = @idEquipe;
SELECT @idPosicao := ID FROM POSICAO WHERE DESCRICAO = 'Armador';
UPDATE `JOGADOR` SET `IDPOSICAO` = @idPosicao WHERE ID = @idJogador;
SELECT @idJogador := j.ID 
                                         FROM jogador j 
                                         INNER JOIN equipejogador ej ON j.Id = ej.IDJOGADOR
                                         WHERE j.NOME = 'Assunção' AND ej.IDEQUIPE = @idEquipe;
SELECT @idPosicao := ID FROM POSICAO WHERE DESCRICAO = 'Ala';
UPDATE `JOGADOR` SET `IDPOSICAO` = @idPosicao WHERE ID = @idJogador;
SELECT @idJogador := j.ID 
                                         FROM jogador j 
                                         INNER JOIN equipejogador ej ON j.Id = ej.IDJOGADOR
                                         WHERE j.NOME = 'Dawkins' AND ej.IDEQUIPE = @idEquipe;
SELECT @idPosicao := ID FROM POSICAO WHERE DESCRICAO = 'Armador';
UPDATE `JOGADOR` SET `IDPOSICAO` = @idPosicao WHERE ID = @idJogador;
SELECT @idJogador := j.ID 
                                         FROM jogador j 
                                         INNER JOIN equipejogador ej ON j.Id = ej.IDJOGADOR
                                         WHERE j.NOME = 'Mariano' AND ej.IDEQUIPE = @idEquipe;
SELECT @idPosicao := ID FROM POSICAO WHERE DESCRICAO = 'Ala';
UPDATE `JOGADOR` SET `IDPOSICAO` = @idPosicao WHERE ID = @idJogador;
SELECT @idJogador := j.ID 
                                         FROM jogador j 
                                         INNER JOIN equipejogador ej ON j.Id = ej.IDJOGADOR
                                         WHERE j.NOME = 'Kurtz' AND ej.IDEQUIPE = @idEquipe;
SELECT @idPosicao := ID FROM POSICAO WHERE DESCRICAO = 'Pivô';
UPDATE `JOGADOR` SET `IDPOSICAO` = @idPosicao WHERE ID = @idJogador;
SELECT @idJogador := j.ID 
                                         FROM jogador j 
                                         INNER JOIN equipejogador ej ON j.Id = ej.IDJOGADOR
                                         WHERE j.NOME = 'André' AND ej.IDEQUIPE = @idEquipe;
SELECT @idPosicao := ID FROM POSICAO WHERE DESCRICAO = 'Ala';
UPDATE `JOGADOR` SET `IDPOSICAO` = @idPosicao WHERE ID = @idJogador;
SELECT @idJogador := j.ID 
                                         FROM jogador j 
                                         INNER JOIN equipejogador ej ON j.Id = ej.IDJOGADOR
                                         WHERE j.NOME = 'Coimbra' AND ej.IDEQUIPE = @idEquipe;
SELECT @idPosicao := ID FROM POSICAO WHERE DESCRICAO = 'Pivô';
UPDATE `JOGADOR` SET `IDPOSICAO` = @idPosicao WHERE ID = @idJogador;
SELECT @idJogador := j.ID 
                                         FROM jogador j 
                                         INNER JOIN equipejogador ej ON j.Id = ej.IDJOGADOR
                                         WHERE j.NOME = 'Hayes' AND ej.IDEQUIPE = @idEquipe;
SELECT @idPosicao := ID FROM POSICAO WHERE DESCRICAO = 'Ala/Pivô';
UPDATE `JOGADOR` SET `IDPOSICAO` = @idPosicao WHERE ID = @idJogador;
