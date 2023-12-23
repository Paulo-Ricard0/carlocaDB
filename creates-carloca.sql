-- cria e usa o banco de dados
create database carloca;
use carloca;

-- Cria tabela categorias
CREATE TABLE `categorias` (
  `id` integer PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `tipo` varchar(255) NOT NULL
);

-- Cria tabela carros
CREATE TABLE `carros` (
  `id` integer PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `modelo` varchar(255) NOT NULL,
  `montadora` varchar(255) NOT NULL,
  `cor` ENUM ('branco', 'preto', 'prata') NOT NULL,
  `versao` varchar(255) NOT NULL,
  `id_categoria` int NOT NULL,
  `quilometragem` int NOT NULL, 
  `disponibilidade` BOOLEAN DEFAULT TRUE NOT NULL
);

-- Cria tabela clientes
CREATE TABLE `clientes` (
  `id` integer PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `nome` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `cpf` varchar(11) NOT NULL,
  `telefone` varchar(11) NOT NULL
);

-- Cria tabela locacao
CREATE TABLE `locacao` (
  `id` integer PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `modalidade` ENUM ('diária') NOT NULL,
  `id_carro` int NOT NULL,
  `id_cliente` int NOT NULL,
  `franquia_locacao` int NOT NULL,
  `franquia_devolucao` int,
  `data_locacao` date NOT NULL,
  `data_devolucao` date,
  `quilometros_rodados` int
);

ALTER TABLE locacao
ADD CONSTRAINT UC_id_cliente UNIQUE (id_cliente);

-- Cria tabela franquias
CREATE TABLE `franquias` (
  `id` integer PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `nome` varchar(255) NOT NULL,
  `endereco` varchar(255) NOT NULL,
  `rua` varchar(255) NOT NULL,
  `bairro` varchar(255) NOT NULL,
  `numero` varchar(255) NOT NULL
);

-- triggers
-- Atualiza disponibilidade dos carros
DELIMITER //
CREATE TRIGGER carro_alugado
AFTER INSERT ON locacao
FOR EACH ROW
BEGIN
   UPDATE carros
   SET disponibilidade = FALSE
   WHERE id = NEW.id_carro;
END;//
DELIMITER ;

-- Atualiza a disponibilidade para disponível após inserir dados de devolução na tabela locacao
DELIMITER //
CREATE TRIGGER carro_devolvido_insert
AFTER INSERT ON locacao
FOR EACH ROW
BEGIN
   IF NEW.data_devolucao IS NOT NULL THEN
      UPDATE carros
      SET disponibilidade = TRUE
      WHERE id = NEW.id_carro;
   END IF;
END;//
DELIMITER ;

-- Atualiza a disponibilidade para disponível após atualizar dados de devolução na tabela locacao
DELIMITER //
CREATE TRIGGER carro_devolvido_update
AFTER UPDATE ON locacao
FOR EACH ROW
BEGIN
   IF NEW.data_devolucao IS NOT NULL THEN
      UPDATE carros
      SET disponibilidade = TRUE
      WHERE id = NEW.id_carro;
   END IF;
END;//
DELIMITER ;

-- Relacionamentos
ALTER TABLE `carros` ADD FOREIGN KEY (`id_categoria`) REFERENCES `categorias` (`id`);

ALTER TABLE `locacao` ADD FOREIGN KEY (`id_cliente`) REFERENCES `clientes` (`id`);

ALTER TABLE `locacao` ADD FOREIGN KEY (`id_carro`) REFERENCES `carros` (`id`);

ALTER TABLE `locacao` ADD FOREIGN KEY (`franquia_locacao`) REFERENCES `franquias` (`id`);

ALTER TABLE `locacao` ADD FOREIGN KEY (`franquia_devolucao`) REFERENCES `franquias` (`id`);
