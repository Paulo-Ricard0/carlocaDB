<h1 align="center">🚗 CARLOCA</h1>

<h3 align="center">Um sistema em MySql para gerenciamento de carros alugados e locações</h3>

<div align="center">
  <img alt="GitHub language count" src="https://img.shields.io/github/languages/count/Paulo-Ricard0/carlocaDB?color=9580FF">

  <img alt="Repository size" src="https://img.shields.io/github/repo-size/Paulo-Ricard0/carlocaDB?color=9580FF">
  
  <a href="https://github.com/Paulo-Ricard0/carlocaDB/commits/main">
    <img alt="GitHub last commit" src="https://img.shields.io/github/last-commit/Paulo-Ricard0/carlocaDB?color=9580FF">
  </a>
  
   <a href="./LICENSE">
     <img alt="License" src="https://img.shields.io/badge/license-MIT-9580FF">
   </a>
   
   <a href="https://github.com/Paulo-Ricard0/carlocaDB/stargazers">
    <img alt="Stargazers" src="https://img.shields.io/github/stars/Paulo-Ricard0/carlocaDB?style=social">
  </a>
</div>

<h4 align="center">
   Status: Concluído 🚀
</h4>

---

## 📋 Tabela de Conteúdos
- [Sobre o projeto](#-sobre-o-projeto)
- [Requisitos Funcionais](#️-requisitos-funcionais)
- [Estrutura do Banco de Dados](#-estrutura-do-banco-de-dados)
- [Tecnologias utilizadas](#%EF%B8%8F-tecnologias-utilizadas)
- [Autor](#-autor)
- [Licença](#-licença)

---

## 💻 Sobre o projeto

Esse é um projeto desenvolvido para aplicar os conhecimentos adquiridos durante o aprendizado de banco de dados relacionais e design de banco de dados.</br>
Acesse o diagrama (ER) do carloca pelo seguinte link: [diagrama](https://dbdiagram.io/d/Carloca-657e03ff56d8064ca0288458)

O Carloca é um sistema de locadora de carros projetado para atender às necessidades específicas de gestão de veículos, clientes e locações. O sistema foi desenvolvido com base em requisitos funcionais e não funcionais específicos, focando na operação eficiente da locadora e nos princípios de normalização de bancos de dados.

---

## ⚙️ Requisitos Funcionais

- [x] **Modelagem de Carro:** Um carro possui modelo, montadora, cor e versão.
- [x] **Cores Disponíveis:** As cores de carro disponiveis são apenas branco, preto e prata.
- [x] **Categorias de Veículos:** Existem várias categorias de veiculos (hatch, sedam compacto, sedam médio, SUV, etc...).
- [x] **Modalidade de Locação:** Um cliente pode alugar um carro somente na modalidade "diária".
- [x] **Restrição de Locação por Cliente:** Um cliente não pode alugar mais de um carro por vez.
- [x] **Exclusividade de Locação:** Enquanto um carro estiver locado por um cliente não pode ser ofertado para outro.
- [x] **Histórico de Locações por Cliente:** O sistema deve manter o histórico dos clientes que locaram determinado carro.
- [x] **Registro de Quilometragem:** O sistema deve manter o histórico de quantos quilometros o cliente rodou com o carro bem como a quilometragem atual de cada um dos carros.
- [x] **Rastreamento de Localização:** Existem várias unidades da fraquia CARLOCA o sistema deve saber onde o carro foi locado e onde foi devolvido cada veículo.

---

## 🗄️ Estrutura do Banco de Dados

<h3 align="center">
    <a href="#"><img alt="Diagrama ER carloca" title="diagrama carloca" src="https://firebasestorage.googleapis.com/v0/b/uploads-58ebc.appspot.com/o/diagramaER-carloca.png?alt=media&token=26adde01-4ab6-4842-8af7-fb74b9d2a838" /></a>
</h3>

---

## 🛠️ Tecnologias utilizadas

<a href="https://dev.mysql.com/"><img alt="MySQL" src="https://img.shields.io/badge/MySQL-9580FF?style=for-the-badge&logo=MySQL&logoColor=white"></a>

---

## 🧑‍💻 Autor

Esse projeto foi desenvolvido por:

<table>
  <tr>
    <td align="center"><a href="https://www.linkedin.com/in/paulo-ricardo-magalh%C3%A3es/"><img src="https://firebasestorage.googleapis.com/v0/b/quiz-baleias.appspot.com/o/ultima2.jpg?alt=media&token=68c74a20-9738-4d63-9aaf-b02608678c93" width="80px" alt="Foto Paulo Ricardo"/><br /><sub><b>Paulo Ricardo</b></sub></a><br /></td>
  </tr>
</table>

---

## 📝 Licença

Esse projeto esta sobe a licença [MIT](./LICENSE).

---

<p align="right"><a href="#top"><img src="https://img.shields.io/static/v1?label&message=voltar+ao+topo&color=30363d&style=flat&logo" alt="voltar ao topo" /></a></p>
