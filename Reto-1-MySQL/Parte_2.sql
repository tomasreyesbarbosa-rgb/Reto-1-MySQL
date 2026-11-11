
USE biblioteca;
 
INSERT INTO Autores (Nombre_Autor) VALUES
    ('Gabriel García Márquez'),
    ('Julio Cortázar'),
    ('Isabel Allende'),
    ('Jorge Luis Borges'),
    ('Mario Vargas Llosa');
 
INSERT INTO Editores (Nombre_Editor) VALUES
    ('Editorial Sudamericana'),
    ('Penguin Random House'),
    ('Alfaguara'),
    ('Planeta');
 
INSERT INTO Libros (Titulo_Libro, ID_Autor, ID_Editor) VALUES
    ('Cien años de soledad',            1, 1),
    ('El amor en los tiempos del cólera', 1, 2),
    ('Rayuela',                         2, 1),
    ('La casa de los espíritus',        3, 3),
    ('Ficciones',                       4, 1),
    ('El Aleph',                        4, 3),
    ('La ciudad y los perros',          5, 3),
    ('Eva Luna',                        3, 4);
 