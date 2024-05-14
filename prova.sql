use avaliacao_22c;

/*1*/
INSERT INTO livros (titulo, autor, ano_publicacao, disponibilidade, categoria, isbn, editora, num_paginas, idioma)
VALUES ('As cronicas de narnia', 'C.S. Lewis', 1950, true, 'fantasia', '978-0064471190','harperCollins', 768, 'frances');

/*2*/
UPDATE livros
SET disponibilidade = False
WHERE ano_publicacao < 1900;

/*3*/
UPDATE livros
SET editora = 'plume books'
WHERE titulo = '1984';

/*4*/
DELETE FROM livros
WHERE idioma = 'frances' AND ano_publicacao 2000;

/*5*/
SELECT *
FROM livros
WHERE num_paginas > 600;

/*6*/
SELECT categoria, COUNT(*) AS num_Livros
FROM livros
GROUP BY categoria;

/*7*/
SELECT *
FROM livros
ORDER BY id DESC
LIMIT 5;

/*8*/
SELECT AVG(num_paginas) AS media_paginas FROM Livros WHERE Dispolibilidade = true;

/*9*/
SELECT * FROM Livros ORDER by ANO_PUBLICACAO DESC;

/*10*/
SELECT * FROM Livros WHERE titulo LIKE 'S%' AND Ano_publicacao BETWEEN 1970 AND 1990;

