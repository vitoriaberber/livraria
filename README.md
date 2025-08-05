# 📚 Sistema de Livraria – Projeto em PostgreSQL

## 📌 Descrição

Este projeto simula o banco de dados de uma livraria, com foco na criação de uma estrutura relacional em PostgreSQL e na execução de consultas SQL voltadas para a análise de vendas, controle de estoque e categorização de livros.

---

## 🧱 Estrutura do Banco de Dados

O sistema é composto por quatro tabelas principais:

- **autores**: informações dos autores (nome, nacionalidade)
- **categorias**: categorias literárias dos livros
- **livros**: catálogo de livros, com preços, estoque, autor e categoria
- **vendas**: registros de vendas com quantidade e data

Relacionamentos:
- Cada livro pertence a **um autor** e **uma categoria**
- Cada venda está ligada a **um livro**

---

## 🗃️ Dados Inseridos

- 5 autores
- 5 categorias
- 10 livros
- 15 vendas com datas variadas (junho e julho de 2025)

---

## 🧪 Consultas SQL Implementadas

1. ✅ Lista de livros com nome do autor e da categoria  
2. ✅ Total de vendas por autor  
3. ✅ Livros mais vendidos (por quantidade)  
4. ✅ Valor total arrecadado por livro  
5. ✅ Valor total arrecadado por autor  
6. ✅ Livros com estoque menor que 5 unidades  
7. ✅ Vendas realizadas em julho de 2025  
8. ✅ Categoria com maior número de livros  
9. ✅ Autor com mais livros cadastrados  
10. ✅ Top 5 livros mais vendidos

---

## 🚀 Tecnologias Utilizadas

- PostgreSQL
- SQL puro

---

## 👩‍💻 Desenvolvido por

**Vitória Berber**  
Estudante de Análise e Desenvolvimento de Sistemas  
[LinkedIn](https://linkedin.com/in/vitoria-berber) • [Portfólio](https://portfolio-eight-lac-22.vercel.app)

