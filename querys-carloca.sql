select * from carros;
select * from categorias;
select * from clientes;
select * from franquias;
select * from locacao;

-- Um carro possui modelo montadora, cor e versão.
select modelo, montadora, cor, versao from carros;

-- As cores de carro disponiveis são apenas branco, preto e prata.
select modelo, cor from carros;
-- caso ruim
INSERT INTO `carros` (`modelo`, `montadora`, `cor`, `versao`, `id_categoria`, `quilometragem`) VALUES
('S10', 'Chevrolet', 'azul', 'Z71', 4, 200);

-- Existem várias categorias de veiculos
select tipo from categorias;

-- Um cliente pode alugar um carro somente na modalidade "diária".
select modalidade from locacao;
-- caso ruim
INSERT INTO `locacao` (`modalidade`, `id_carro`, `id_cliente`, `franquia_locacao`, `franquia_devolucao`, `data_locacao`, `data_devolucao`, `quilometros_rodados`) VALUES
('mensal', 5, 3, 1, 1, '2023-01-01', '2023-01-03', 300);

-- Um cliente não pode alugar mais de um carro.
INSERT INTO `locacao` (`modalidade`, `id_carro`, `id_cliente`, `franquia_locacao`, `franquia_devolucao`, `data_locacao`, `data_devolucao`, `quilometros_rodados`) VALUES
('diária', 3, 2,1, 2, '2023-01-01', '2023-01-03', 300);

-- Enquanto um carro estiver locado por um cliente não pode ser ofetado para outro.
-- para fazer esse controle eu optei por adicionar uma coluna onde atualiza se o carro está disponível ou não (1 = disponível, 0 = indisponível), 
-- através dessa consulta pode descobrir qual carro está locado e qual não está, 
-- e assim pode ofertar para um cliente um carro que não está locado por ninguém 
SELECT id, modelo, montadora, disponibilidade from carros;

-- O sistema deve manter o histórico dos clientes que locaram determinado carro.
SELECT C.nome, L.modalidade, F1.nome AS franquia_locacao, F2.nome AS franquia_devolucao, L.data_locacao, L.data_devolucao,CA.modelo, CA.montadora, L.quilometros_rodados
FROM clientes C
INNER JOIN locacao L ON C.id = L.id_cliente
INNER JOIN carros CA ON CA.id = L.id_carro
INNER JOIN franquias F1 ON L.franquia_locacao = F1.id
LEFT JOIN franquias F2 ON L.franquia_devolucao = F2.id;

-- O sistema deve manter o histórico de quantos quilometros o cliente rodou com o carro bem como a quilometragem atual de cada um dos carros.
select C.nome, CA.modelo, L.quilometros_rodados, CA.quilometragem AS quilometragem_atual
from locacao L
inner join carros CA on CA.id = L.id_carro
inner join clientes C on C.id = L.id_cliente;

-- o sistema deve saber onde o carro foi locado e onde foi devolvido cada veículo.
SELECT CA.modelo, CA.montadora, F1.nome AS franquia_locacao, F2.nome AS franquia_devolucao, L.data_locacao, L.data_devolucao
FROM clientes C
INNER JOIN locacao L ON C.id = L.id_cliente
INNER JOIN carros CA ON CA.id = L.id_carro
INNER JOIN franquias F1 ON L.franquia_locacao = F1.id
LEFT JOIN franquias F2 ON L.franquia_devolucao = F2.id;
