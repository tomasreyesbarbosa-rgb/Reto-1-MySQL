USE biblioteca;
 

SELECT l.ID_Libro,
       l.Titulo_Libro,
       a.Nombre_Autor,
       e.Nombre_Editor
FROM Libros l
JOIN Autores  a ON a.ID_Autor  = l.ID_Autor
JOIN Editores e ON e.ID_Editor = l.ID_Editor
ORDER BY l.Titulo_Libro;
 

SELECT l.Titulo_Libro, e.Nombre_Editor
FROM Libros l
JOIN Autores  a ON a.ID_Autor  = l.ID_Autor
JOIN Editores e ON e.ID_Editor = l.ID_Editor
WHERE a.Nombre_Autor = 'Isabel Allende';
 

SELECT e.Nombre_Editor, COUNT(l.ID_Libro) AS Total_Libros
FROM Editores e
LEFT JOIN Libros l ON l.ID_Editor = e.ID_Editor
GROUP BY e.ID_Editor, e.Nombre_Editor
ORDER BY Total_Libros DESC;
 

SELECT a.Nombre_Autor, COUNT(l.ID_Libro) AS Total_Libros
FROM Autores a
LEFT JOIN Libros l ON l.ID_Autor = a.ID_Autor
GROUP BY a.ID_Autor, a.Nombre_Autor
ORDER BY Total_Libros DESC;
 

UPDATE Editores
SET Nombre_Editor = 'Penguin Random House Grupo Editorial'
WHERE ID_Editor = 2;
 
