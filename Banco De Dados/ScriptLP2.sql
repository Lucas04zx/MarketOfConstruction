CREATE DATABASE IF NOT exists mercado_construcao;

USE mercado_construcao;


CREATE TABLE IF NOT EXISTS produtos (
id INT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR(100) NOT NULL,
descricao TEXT,
preco DECIMAL(10,2) NOT NULL
);

CREATE TABLE IF NOT EXISTS vendas(
id INT AUTO_INCREMENT PRIMARY KEY,
data_venda DATETIME DEFAULT CURRENT_TIMESTAMP,
valor_total DECIMAL (10,2) NOT NULL);

CREATE TABLE IF NOT EXISTS users(
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(150) NOT NULL,
    sexo ENUM('M', 'F'),
    email VARCHAR(150) NOT NULL,
    senha VARCHAR(150) NOT NULL
);

select * from produtos;

INSERT INTO vendas (valor_total) VALUES (5);

INSERT INTO users (nome, sexo, email, senha)
VALUES ('Lucas Antonio', 'M', 'lucas@gmail.com', '123');

INSERT INTO produtos (nome, descricao, preco)
VALUES 
('Cimento CP-II 50kg', 'Saco de cimento para construção civil', 38.90),
('Tinta Acrílica 18L', 'Tinta branca para parede interna', 125.50),
('Areia Média 20kg', 'Areia lavada para reboco e concreto', 12.00),
('Parafuso 5x50mm', 'Pacote com 100 unidades', 18.75);

INSERT INTO vendas (valor_total)
VALUES
(150.00),
(249.90),
(89.50),
(399.00);




