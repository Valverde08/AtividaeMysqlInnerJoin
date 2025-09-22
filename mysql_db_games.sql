CREATE DATABASE db_pizzaria_legal;

USE db_pizzaria_legal;

CREATE TABLE tb_categorias(
    id BIGINT PRIMARY KEY AUTO_INCREMENT,
    restaurante VARCHAR(255),
    pronta_entrega VARCHAR(255)     

);

CREATE TABLE tb_pizzas(
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    valor DECIMAL(4,2),
    tamanho VARCHAR(255),
    borda_recheada BIGINT,    
    categoria_id BIGINT NOT NULL,
    FOREIGN KEY(categoria_id) REFERENCES tb_categorias(id)
    
     

);


INSERT INTO tb_categorias (restaurante, pronta_entrega) VALUES
('Bella Napoli Pizzaria', 'Sim'),
('Mamma Pizza', 'Sim'),
('Forno D’Oro', 'Não'),
('Sabor Italiano Pizzaria', 'Sim'),
('Pizzaria Girotondo', 'Não');


INSERT INTO sua_tabela (nome, valor, tamanho, borda_recheada, categoria_id) VALUES
('Calabresa', 38.50, 'Grande', 1, 1),
('Portuguesa', 42.00, 'Média', 0, 2),
('Marguerita', 35.90, 'Pequena', 1, 3),
('Frango com Catupiry', 44.20, 'Grande', 1, 4),
('Muçarela', 30.00, 'Média', 0, 1),
('Napolitana', 40.50, 'Pequena', 0, 2),
('Quatro Queijos', 46.00, 'Grande', 1, 5),
('Pepperoni', 43.70, 'Média', 0, 3);





SELECT * FROM tb_pizzas WHERE valor > 45;

SELECT * FROM tb_pizzas WHERE valor > 50 AND valor < 100;

SELECT * FROM tb_pizzas
WHERE nome LIKE "%m%";

SELECT * FROM tb_pizzas
INNER JOIN tb_categorias
ON tb_pizzas.categoria_id = tb_categorias.id;

SELECT * FROM tb_pizzas
INNER JOIN tb_categorias
ON tb_pizzas.categoria_id = tb_categorias.id
WHERE tb_categorias.pronta_entrega = "sim";





