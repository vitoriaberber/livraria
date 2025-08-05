CREATE DATABASE livraria;

CREATE TABLE autores (
	id_autor SERIAL PRIMARY KEY,
	nome VARCHAR(255) NOT NULL,
	nacionalidade VARCHAR(255) NOT NULL
);

INSERT INTO autores (nome, nacionalidade) VALUES 
('Machado de Assis', 'Brasil'),
('George Orwell', 'Reino Unido'),
('Clarice Lispector', 'Brasil'),
('J. K. Rowling', 'Reino Unido'),
('Gabriel García Márquez', 'Colômbia');

CREATE TABLE livros (
	id_livro SERIAL PRIMARY KEY,
	titulo VARCHAR(255) NOT NULL,
	id_autor INTEGER NOT NULL REFERENCES autores(id_autor),
	id_categoria INTEGER NOT NULL 
		REFERENCES categorias(id_categoria),
	preco NUMERIC(6,2) NOT NULL,
	estoque INTEGER NOT NULL
);

INSERT INTO livros (titulo, id_autor, id_categoria, preco,
estoque) VALUES 
('Dom Casmurro', 1, 5, 39.90, 10),
('1984', 2, 2, 45.00, 5),
('A Hora da Estrela', 3, 4, 34.90, 3),
('Harry Potter e a Pedra Filosofal', 4, 3, 59.90, 7),
('Cem anos de Solidão', 5, 1, 49.90, 6),
('Memórias Póstumas de Brás Cubas', 1, 5, 42.00, 2),
('Animal Farm', 2, 2, 38.00, 4),
('Laços de Família', 3, 4, 36.00, 8),
('Harry Potter e a Câmara Secreta', 4, 3, 64.90, 5),
('O Amor nos Tempos do Cólera', 5, 1, 47.50, 1);

CREATE TABLE categorias(
	id_categoria SERIAL PRIMARY KEY,
	nome VARCHAR(255) NOT NULL
);

INSERT INTO categorias (nome) VALUES
('Romance'),
('Ficção Científica'),
('Fantasia'),
('Drama'),
('Literatura Brasileira');

CREATE TABLE vendas (
	id_venda SERIAL PRIMARY KEY,
	id_livro INTEGER NOT NULL REFERENCES livros(id_livro),
	quantidade INTEGER NOT NULL,
	data_venda DATE NOT NULL
);

INSERT INTO vendas (id_livro, quantidade, data_venda) VALUES
(1, 2, '2025-07-01'),
(2, 1, '2025-07-02'),
(3, 3, '2025-07-03'),
(4, 2, '2025-07-04'),
(5, 1, '2025-07-05'),
(6, 2, '2025-06-28'),
(7, 1, '2025-06-29'),
(8, 2, '2025-07-01'),
(9, 3, '2025-07-02'),
(10, 1, '2025-07-03'),
(2, 2, '2025-07-04'),
(4, 1, '2025-07-05'),
(1, 1, '2025-07-06'),
(5, 2, '2025-07-06'),
(3, 1, '2025-07-07');