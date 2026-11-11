DROP DATABASE IF EXISTS biblioteca;
CREATE DATABASE biblioteca
    CHARACTER SET utf8mb4
    COLLATE utf8mb4_unicode_ci;
 
USE biblioteca;
 
CREATE TABLE Autores (
    ID_Autor      INT          NOT NULL AUTO_INCREMENT,
    Nombre_Autor  VARCHAR(100) NOT NULL,
    CONSTRAINT pk_autores PRIMARY KEY (ID_Autor),
    CONSTRAINT uq_autores_nombre UNIQUE (Nombre_Autor)
) ENGINE = InnoDB;
 
CREATE TABLE Editores (
    ID_Editor      INT          NOT NULL AUTO_INCREMENT,
    Nombre_Editor  VARCHAR(100) NOT NULL,
    CONSTRAINT pk_editores PRIMARY KEY (ID_Editor),
    CONSTRAINT uq_editores_nombre UNIQUE (Nombre_Editor)
) ENGINE = InnoDB;
 
CREATE TABLE Libros (
    ID_Libro      INT          NOT NULL AUTO_INCREMENT,
    Titulo_Libro  VARCHAR(200) NOT NULL,
    ID_Autor      INT          NOT NULL,
    ID_Editor     INT          NOT NULL,
    CONSTRAINT pk_libros PRIMARY KEY (ID_Libro),
    CONSTRAINT fk_libros_autor
        FOREIGN KEY (ID_Autor)  REFERENCES Autores (ID_Autor)
        ON UPDATE CASCADE ON DELETE RESTRICT,
    CONSTRAINT fk_libros_editor
        FOREIGN KEY (ID_Editor) REFERENCES Editores (ID_Editor)
        ON UPDATE CASCADE ON DELETE RESTRICT
) ENGINE = InnoDB;
 
CREATE INDEX idx_libros_autor  ON Libros (ID_Autor);
CREATE INDEX idx_libros_editor ON Libros (ID_Editor);
CREATE INDEX idx_libros_titulo ON Libros (Titulo_Libro);