/*
*E.B.1 Crie um script de criação das tabelas.
*E.B.2 Faça um script para popular as tabelas.
*E.B.3 Faça uma querie que traga todos os posts ordenados por title.
*E.B.4 Faça uma querie que traga todos os posts com seus respectivos comments.
*E.B.5 Faça uma querie que traga todos os posts com sua quantidade de comments.
*/
/*criando banco de dados*/
CREATE DATABASE IF NOT EXISTS postagens;
USE postagens;/*use o banco */
CREATE TABLE posts(
    id          INTEGER AUTO_INCREMENT NOT NULL,
    author      VARCHAR(225) NOT NULL, 
    title       VARCHAR(225) NOT NULL, 
    text_       VARCHAR(225) NOT NULL,
    created_at  TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at  TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY(id));

CREATE TABLE comments(
    id              INTEGER AUTO_INCREMENT  NOT NULL,
    post_id         INTEGER(11) NOT NULL,
    message         VARCHAR(255) NOT NULL,
    autor           VARCHAR(255) NOT NULL,
    created_at      TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at      TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY(id),
    FOREIGN KEY post_id INTEGER NOT NULL REFERENCES posts(id));
    

