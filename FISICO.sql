-- Geração de Modelo físico
-- Sql ANSI 2003 - brModelo.



CREATE TABLE participantes (
ID Fisico PRIMARY KEY,
email Fisico,
ramal Fisico
)

CREATE TABLE participantesBolao (
ID Fisico,
-- Erro: nome do campo duplicado nesta tabela!
ID Fisico,
FOREIGN KEY(ID) REFERENCES participantes (ID)
)

CREATE TABLE cartao (
numero Fisico,
idJogo Fisico PRIMARY KEY,
dataJogo Fisico,
dataSorteio Fisico,
ID Fisico,
-- Erro: nome do campo duplicado nesta tabela!
ID Fisico
)

CREATE TABLE bolao (
ID Fisico PRIMARY KEY,
numCota Fisico,
valorQuota Fisico
)

CREATE TABLE tipoJogo (
nome Fisico,
qtdNumero Fisico,
numInicial Fisico,
numFinal Fisico,
ID Fisico PRIMARY KEY
)

ALTER TABLE participantesBolao ADD FOREIGN KEY(ID) REFERENCES bolao (ID)
ALTER TABLE cartao ADD FOREIGN KEY(ID) REFERENCES tipoJogo (ID)
ALTER TABLE cartao ADD FOREIGN KEY(ID) REFERENCES bolao (ID)
