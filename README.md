# Boas vindas ao repositório do projeto de Front-End Online Store!  

## `Habilidades`

Nesse projeto, foram desenvolvidos:

  
* Conceitos de Metodologias Ágeis;

* Pratica em equipe utilizando Kanban de maneira eficaz.

* Pratica com React e CSS.


---

  

## `O que deverá ser desenvolvido`

  

Neste projeto foi criado uma versão simplificada, sem persistência no banco de dados, de uma **loja online**, foi desenvolvido em grupo suas funcionalidades de acordo com demandas definidas em um quadro _Kanban_, em um cenário mais próximo ao do mercado de trabalho. A partir dessas demandas, temos uma aplicação onde os usuários podem:

- Buscar produtos por termos e categorias a partir da _API do Mercado Livre_;

- Interagir com os produtos buscados de modo a adicioná-los e removê-los de um carrinho de compras em diferentes quantidades;

- Visualizar detalhes e avaliações prévias de um produto, bem como criar novas avaliações;

- E por fim, finalizar a compra (simulada) dos itens selecionados.

  

---


## `Instruções para usar a aplicação:`

---

### `1. Clone o repositório e entre na pasta do repositório`

```sh
git clone git@github.com:dihsantanna/project-frontend-online-store.git && cd project-frontend-online-store
```

### `2. Instale as dependências e inicialize o projeto`

* Para inicializar o projeto com Docker execute o comando:

```sh
npm run compose:up
``` 

* Caso queira a moda antiga execute o comando `npm install` seguido de `npm start`;

*ATENÇÃO: o tempo de execução dos comandos podem variar de máquina para máquina.

### `3. Acesse a pagina da aplicação`

* basta abrir seu navegador e acessar o endereço:

  [http://http://localhost:3000](http://http://localhost:3000)

  *é só clicar no link acima. ;)

---  

## `Instruções para desinstalar a aplicação:`

---

### `1. Parando a aplicação`

* Com Docker:

```sh
npm run compose:down
```

* Sem docker:

  _basta voltar ao terminal que está rodando a aplicação e pressionar `Ctrl+C` (linux e windows) ou `COMMAND+C` (macOs)._

* Para apagar a aplicação agora basta `excluir` a pasta `project-frontend-online-store` que foi clonada do repositório.

---

# `Documentação da API do Mercado Livre`

A página _web_ consome os dados da API do _Mercado Livre_ para realizar a busca de itens da loja online. Para realizar essas buscas, são consultados os seguintes _endpoints_:

  

- Para listar as categorias disponíveis:

- Tipo da requisição: `GET`

- Endpoint: `https://api.mercadolibre.com/sites/MLB/categories`

- Para buscar por itens por termo:

- Tipo da requisição: `GET`

- Parâmetro de busca `$QUERY` (este parâmetro deve ser substituído pelo valor do campo de busca)

- Endpoint: `https://api.mercadolibre.com/sites/MLB/search?q=$QUERY`

- Para buscar itens por categoria:

- Tipo da requisição: `GET`

- Parâmetro de busca `$CATEGORY_ID` (este parâmetro deve ser substituído pelo ID da categoria selecionada)

- Endpoint: `https://api.mercadolibre.com/sites/MLB/search?category=$CATEGORY_ID`

- Para buscar itens de uma categoria por termo:

- Tipo da requisição: `GET`

- Parâmetro de busca `$QUERY` (este parâmetro deve ser substituído pelo valor do campo de busca)

- Parâmetro de busca `$CATEGORY_ID` (este parâmetro deve ser substituído pelo ID da categoria selecionada)

- Endpoint: `https://api.mercadolibre.com/sites/MLB/search?category=$CATEGORY_ID&q=$QUERY`

  

Se você quiser aprender mais sobre a API do _Mercado Livre_, veja a [documentação](https://developers.mercadolivre.com.br/pt_br/itens-e-buscas).

  