-- Criando o banco de dados estadao
CREATE DATABASE estadao;

-- Criando a tabela votos
CREATE TABLE votos(
    voto VARCHAR(255),
    dep_federal VARCHAR(255),
    partido VARCHAR(255),
    estado VARCHAR(255),
    img VARCHAR(255)
);