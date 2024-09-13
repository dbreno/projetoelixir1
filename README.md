Api - Rick and Morty Explorer

Este projeto é uma aplicação em Elixir que consome a API da série Rick and Morty. O objetivo é permitir que os usuários explorem episódios, personagens e locais da série diretamente a partir da linha de comando. A aplicação exibe as informações detalhadas sobre cada episódio, personagens que aparecem nele, suas características, e também informações sobre os locais relacionados.

Funcionalidades
Listar Episódios: O usuário pode buscar por episódios específicos da série, incluindo o nome, a data de exibição e o número de episódios.

Detalhar Personagens: Ao visualizar um episódio, a aplicação lista todos os personagens que apareceram nele, permitindo ver detalhes individuais de cada personagem.

Explorar Locais: Para cada personagem, o usuário pode ver informações sobre o local de origem e o local onde ele se encontrava durante o episódio.

Objetivo
A aplicação é inicialmente desenvolvida para rodar via linha de comando, mas será evoluída para uma versão web com interface gráfica. O objetivo final é permitir a navegação interativa através de uma página web com listas suspensas para selecionar episódios, personagens e locais, e explorar suas respectivas informações.

Dependências:

```elixir
def deps do
  [
    {:httpoison, "~> 1.8"},
    {:poison, "~> 5.0"}
  ]
end
```

Instale as dependências
```shell
mix deps.get
```

Uso
```shell
iex -S mix
```

Você verá um menu interativo com as seguintes opções:

```shell
[0]. Encerrar
[1]. Pesquisar episódio
[2]. Pesquisar personagem
[3]. Pesquisar local
```

Selecione uma das opções e siga as instruções para explorar os dados da série Rick and Morty.

Exemplo de Uso

Pesquisar Episódio: O usuário pode inserir o número do episódio para ver detalhes como o nome, a data de exibição e os personagens que apareceram.
Personagens: Ao visualizar um episódio, os personagens são listados, e o usuário pode escolher um personagem para ver informações detalhadas.
Locais: Para cada personagem, também é possível visualizar informações sobre os locais relacionados a ele.
