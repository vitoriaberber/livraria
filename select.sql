SELECT l.titulo, a.nome, c.nome 
	FROM livros l JOIN autores a ON l.id_autor = a.id_autor
	JOIN categorias c ON l.id_categoria = c.id_categoria;

SELECT SUM(v.quantidade) quantidade_vendida, a.nome 
	FROM vendas v JOIN livros l ON v.id_livro = l.id_livro
	JOIN autores a ON a.id_autor = l.id_autor
	GROUP BY a.nome;

SELECT SUM(v.quantidade) quantidade_vendida, l.titulo
	FROM vendas v JOIN livros l ON v.id_livro = l.id_livro
	GROUP BY l.titulo
	ORDER BY quantidade_vendida DESC;

SELECT l.titulo, l.preco * SUM(v.quantidade) as preco_arrecadado
	FROM livros l JOIN vendas v ON l.id_livro = v.id_livro
	GROUP BY l.titulo, l.preco;

SELECT a.nome, l.preco * SUM(v.quantidade) as preco_arrecadado
	FROM livros l JOIN vendas v ON l.id_livro = v.id_livro
	JOIN autores a ON a.id_autor = l.id_autor
	GROUP BY a.nome, l.preco;

SELECT titulo, estoque FROM livros 
	WHERE estoque < 5;

SELECT * FROM vendas
	WHERE data_venda >= '2025-07-01' AND data_venda < '2025-08-01';

SELECT c.nome, COUNT(l.id_categoria) quantidade FROM categorias c 
	JOIN livros l ON c.id_categoria = l.id_categoria
	GROUP BY c.nome
	ORDER BY quantidade DESC;

SELECT a.nome, COUNT(l.id_autor) FROM 
	livros l JOIN autores a ON l.id_autor = a.id_autor
	GROUP BY a.nome;

SELECT SUM(v.quantidade) quantidade_vendida, l.titulo
	FROM vendas v JOIN livros l ON v.id_livro = l.id_livro
	GROUP BY l.titulo
	ORDER BY quantidade_vendida DESC
	LIMIT 5;