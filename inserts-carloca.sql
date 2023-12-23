-- Inserindo dados na tabela categorias
INSERT INTO `categorias` (`tipo`) VALUES
('Sedan'),
('Hatch'),
('SUV'),
('Picape'),
('Esportivo'),
('Luxo'),
('Conversível'),
('Van'),
('Off-road'),
('Elétrico');

-- Inserindo dados na tabela carros
INSERT INTO `carros` (`modelo`, `montadora`, `cor`, `versao`, `id_categoria`, `quilometragem`) VALUES
('Civic', 'Honda', 'branco', 'Versão 1', 1, 0),
('Golf', 'Volkswagen', 'preto', 'Versão 2', 2, 5000),
('CR-V', 'Honda', 'prata', 'Versão 3', 3, 1000),
('Hilux', 'Toyota', 'branco', 'Versão 4', 4, 9000),
('Mustang', 'Ford', 'preto', 'Versão 5', 5, 500),
('S-Class', 'Mercedes-Benz', 'prata', 'Versão 6', 6, 25000),
('911', 'Porsche', 'branco', 'Versão 7', 7, 7500),
('Grand Caravan', 'Dodge', 'preto', 'Versão 8', 8, 35000),
('Wrangler', 'Jeep', 'prata', 'Versão 9', 9, 40000),
('Model S', 'Tesla', 'branco', 'Versão 10', 10, 0);

-- Inserindo dados na tabela clientes
INSERT INTO `clientes` (`nome`, `email`, `cpf`, `telefone`) VALUES
('Ana Silva', 'ana@example.com', '12345678901', '987654321'),
('Carlos Oliveira', 'carlos@example.com', '98765432101', '123456789'),
('Mariana Santos', 'mariana@example.com', '56789012345', '456789012'),
('Lucas Pereira', 'lucas@example.com', '34567890123', '789012345'),
('Isabel Lima', 'isabel@example.com', '90123456789', '234567890'),
('Ricardo Souza', 'ricardo@example.com', '67890123456', '567890123'),
('Juliana Costa', 'juliana@example.com', '23456789012', '890123456'),
('Fernando Almeida', 'fernando@example.com', '78901234567', '345678901'),
('Cristina Santos', 'cristina@example.com', '45678901234', '678901234'),
('João Silva', 'joao@example.com', '01234567890', '901234567');

-- Inserindo dados na tabela franquias
INSERT INTO `franquias` (`nome`, `endereco`, `rua`, `bairro`, `numero`) VALUES
('Franquia Prime', 'Av. Primeira', 'Centro', 'Bairro Prime', '123'),
('Top Franquias', 'Rua das Franquias', 'Centro', 'Bairro Comercial', '456'),
('City Cars', 'Avenida dos Carros', 'Centro', 'Bairro Automotivo', '789');

-- Inserindo dados na tabela locacao
-- dados de locações que foram devolvidas
INSERT INTO `locacao` (`modalidade`, `id_carro`, `id_cliente`, `franquia_locacao`, `franquia_devolucao`, `data_locacao`, `data_devolucao`, `quilometros_rodados`) VALUES
('diária', 1, 2, 1, 2, '2023-01-01', '2023-01-03', 300),
('diária', 5, 6, 3, 1, '2023-03-10', '2023-03-15', 500),
('diária', 9, 10, 2, 3, '2023-05-25', '2023-05-27', 250),
('diária', 2, 3, 3, 1, '2023-06-30', '2023-07-02', 400),
('diária', 6, 7, 2, 3, '2023-09-10', '2023-09-12', 350),
('diária', 8, 9, 3, 1, '2023-10-15', '2023-10-17', 200);

-- dados de locações que ainda não foram devolvidas
INSERT INTO `locacao` (`modalidade`, `id_carro`, `id_cliente`, `franquia_locacao`, `data_locacao`) VALUES
('diária', 3, 4, 2, '2023-02-05'),
('diária', 7, 8, 1, '2023-04-20'),
('diária', 4, 5, 1, '2023-08-05'),
('diária', 10, 1, 1, '2023-11-20');
