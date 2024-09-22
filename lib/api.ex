defmodule Api do
@moduledoc false

@doc"""

FUNÇÃO MAIN: ponto de partida do programa

-> Ela imprime uma arte, seguida de um menu principal com opções para encerrar o programa
   ou pesquisar episódios, personagens e locais.

-> Após a exibição da arte e das opções chama a função loop/0 para iniciar
"""



  def main() do
    IO.puts "
        ==========================================================================================

                                    ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣰⣷⣦⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
                                    ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢹⣧⠙⢿⣦⡀⠀⠀⠀⠀⠀⠀⠀⣠⣶⣦⠀⠀⠀⠀⠀⠀
                                    ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⣿⠀⠀⠙⢿⣦⡀⠀⠀⠀⢀⣾⡿⠉⣿⡄⠀⠀⠀⠀⠀
                                    ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⣿⠀⠀⠀⠀⠙⣿⣄⣠⣴⡿⠋⠀⠀⣿⡇⠀⠀⠀⠀⠀
                                    ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⣿⠀⠀⠀⠀⠀⠈⠿⠟⠉⠀⠀⠀⢀⣿⠇⠀⠀⠀⠀⠀
                                    ⠀⠀⠀⣿⡿⠿⠿⠿⠷⣶⣾⡿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⣿⣤⣤⣴⣶⣶⡀
                                    ⠀⠀⠀⠹⣿⡀⠀⠀⠀⠀⠀⠀⢀⡤⠖⠚⠉⠉⠉⠉⠛⠲⣄⠀⠈⠉⠉⠉⠁⣼⡟⠀
                                    ⠀⠀⠀⠀⠹⣷⡀⠀⠀⠀⢀⡔⠉⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠳⡄⠀⠀⢀⣼⡟⠀⠀
                                    ⠀⠀⠀⠀⠀⢹⣷⠀⠀⢀⡎⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢹⡀⢠⣾⡏⠀⠀⠀
                                    ⠀⢀⣠⣴⡾⠟⠋⠀⠀⣸⠀⠀⠀⣴⣒⣒⣛⣛⣛⣋⣉⣉⣉⣙⣛⣷⠀⠙⠿⣶⣤⡀
                                    ⣾⣿⡋⠁⠀⠀⠀⠀⠀⡏⠀⠀⡄⠉⠉⠁⠀⠈⢹⢨⠃⠀⠀⠀⠀⠙⡄⠀⠀⣨⣿⠟
                                    ⠈⠛⠿⣷⣦⣀⠀⠀⠀⡇⠀⠸⡟⠛⠿⠛⠛⠛⢻⢿⠋⠹⠟⠉⠉⠙⡇⣠⣾⠟⠁⠀
                                    ⠀⠀⠀⢀⣽⣿⠇⠀⠀⡇⠀⠀⠳⣄⣀⠀⣀⣠⠞⠈⢷⣄⣀⣀⣠⣾⠁⢿⣧⡀⠀⠀
                                    ⠀⢠⣴⡿⠋⠁⠀⠀⢀⡧⠄⠀⠦⣀⣈⣉⠁⠀⠠⡀⠘⡆⠠⠤⠴⢿⣄⠀⠙⣿⣦⠀
                                    ⠀⠹⢿⣦⣤⣀⠀⢰⠃⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠳⣤⠇⠀⠀⠀⣼⢘⣷⡿⠟⠋⠀
                                    ⠀⠀⠀⠈⠉⣿⡇⠈⠣⣄⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⡿⠻⣿⡀⠀⠀⠀
                                    ⠀⠀⠀⠀⢸⣿⣤⣤⣤⣤⢧⠀⢀⡆⣠⠴⠒⠋⢹⠋⠉⢹⠗⠒⠄⣷⣾⡿⠇⠀⠀⠀
                                    ⠀⠀⠀⠀⠀⠉⠉⠉⣿⣇⣈⣆⠀⠳⠤⠀⠀⠀⠈⣇⡖⡍⠀⠠⣾⣿⡿⠇⠀⠀⠀⠀
                                    ⠀⠀⠀⠀⠀⠀⠀⠀⠛⠛⠛⢻⣷⣄⠀⠀⠀⠀⠁⠉⠀⠀⣠⣾⠟⠀⠀⠀⠀⠀⠀⠀
                                    ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣀⣉⣿⣷⠲⠤⠤⠤⣤⣶⣿⣟⠁⠀⠀⠀⠀⠀⠀⠀⠀
                                    ⠀⠀⠀⠀⠀⠀⢀⣴⣶⡿⠿⠛⠛⢋⢹⡦⣄⣀⡤⢿⢉⠛⠛⠿⣷⣦⠀⠀⠀⠀⠀⠀
                                    ⠀⠀⠀⠀⠀⠀⣿⠏⠀⠀⠀⠀⢀⠇⠈⡇⠀⠀⠀⠘⡎⣆⠀⠀⠀⢻⣧⠀⠀⠀⠀⠀
                                    ⠀⠀⠀⠀⠀⠈⠿⣶⣶⣶⣶⣶⣾⣶⣾⣷⣶⣶⣶⣶⣷⣾⣷⣶⣶⣾⡿⠀⠀⠀⠀

        __________.__        __                        .___    _____                 __
        \\______   \\__| ____ |  | __ _____    ____    __| _/   /     \\   ____________/  |_ ___.__.
        |       _/  |/ ___\\|  |/ / \\__  \\  /    \\  / __ |   /  \\ /  \\ /  _ \\_  __ \\   __<   |  |
        |    |   \\  \\  \\___|    <   / __ \\|   |  \\/ /_/ |  /    Y    (  <_> )  | \\/|  |  \\___  |
        |____|_  /__|\\___  >__|_ \\ (____  /___|  /\\____ |  \\____|__  /\\____/|__|   |__|  / ____|
                \\/        \\/     \\/      \\/     \\/      \\/          \\/                    \\/

        ==========================================================================================
          "
    loop()
  end


  # FUNÇÃO LOOP/0:

  # -> É a função que mantém o programa em execução até o usuário decidir encerrar

  # -> Exibe as opções de encerrar o programa ou buscar por episódios, personagens ou locais

  # -> Dependendo da escolha do usuário, ela invoca as funções de busca adequadas:
  #  fetch_episode_info/0, fetch_character_info/0, ou fetch_location_info/0.

  # -> Após cada busca, chama funções para exibir os resultados e, em seguida, reinicia o loop.


  defp loop() do
      IO.puts("[0]. Encerrar: ")
      IO.puts("[1]. Pesquisar episodio: ")
      IO.puts("[2]. Pesquisar personagem: ")
      IO.puts("[3]. Pesquisar local: ")
      entrada = IO.gets("> ") |> String.trim() |> String.to_integer()
      case entrada do
        0 -> nil

        1 ->
          fetch_episode_info()
          |> mostra_resultado_episodio()
          loop()

        2 ->
          fetch_character_info()
          |> mostra_resultado_character()
          loop()

        3 ->
          fetch_location_info()
          |> mostra_resultado()
          loop()

        _ ->
          IO.puts "Comando inválido. Use 'episodio', 'personagem', ou 'local' seguido do ID."
      end
  end


  # FUNÇÃO MOSTRA_RESULTADO/1:

  # -> Esta função exibe o resultado da busca por locais.

  # -> Recebe uma tupla com {:error, msg} ou {:ok, data}, e imprime a mensagem de
    # erro ou os detalhes do local (id, nome, tipo e dimensão).

  # -> Há também uma variação que imprime uma lista de locais com seus atributos (nome, tipo e dimensão).

  defp mostra_resultado({:error, msg}), do: IO.puts "Ocorreu um erro: #{msg}"
  defp mostra_resultado({:ok, data}) do
    IO.puts "Id: #{data["id"]}"
    IO.puts "Nome: #{data["nome"]}"
    IO.puts "Tipo: #{data["tipo"]}"
    IO.puts "Dimensao: #{data["dimensao"]}"
    IO.puts "-----------------------"
  end
  defp mostra_resultado({:lista, msg, next_page}) do
    IO.puts "Locais:"
    Enum.each(msg, fn x ->
      IO.puts("ID: #{x["id"]}")
      IO.puts("Nome: #{x["name"]}")
      IO.puts("Tipo: #{x["type"]}" )
      IO.puts("Dimensao: #{x["dimension"]}" )
      IO.puts("-----------------------" )
    end)
    if next_page do
      IO.puts "Deseja ver a próxima página? (s/n)"
      resposta = IO.gets("> ") |> String.trim() |> String.downcase()
      if resposta == "s" do
      fetch_location_info(next_page)
      |> mostra_resultado()
      end
    end
  end

  # FUNÇÃO MOSTRA_RESULTADO_EPISODIO/1:

  # -> Similar à mostra_resultado/1, porém exibe os detalhes de um episódio.

  # -> Recebe a tupla de resultado e imprime informações do episódio, como nome,
  # data de exibição e a lista de personagens associados.

  # -> Outra variação imprime uma lista de episódios.

  defp mostra_resultado_episodio({ :error, msg }), do: IO.puts "Ocorreu um erro: #{msg}"
  defp mostra_resultado_episodio({ :ok, data }) do
    IO.puts "Episodio: #{data["episodio"]}"
    IO.puts "Nome: #{data["nome"]}"
    IO.puts "Data de exibicao: #{data["data_exibicao"]}"
    IO.puts "Personagens:"
    printa_lista_personagens(data["personagens"])
    IO.puts "-----------------------"
  end
  defp mostra_resultado_episodio({ :lista, msg, next_page }) do
    IO.puts "Episodios:"
    printa_lista_episodios(msg)
    if next_page do
      IO.puts "Deseja ver a próxima página? (s/n)"
      resposta = IO.gets("> ") |> String.trim() |> String.downcase()
      if resposta == "s" do
      fetch_episode_info(next_page)
      |> mostra_resultado_episodio()
      end
    end
  end

  # FUNÇÃO PRINTA_LISTA_PERSONAGENS/1 E PRINTA_LISTA_EPISODIOS/1:

  # -> Essas funções são auxiliares para exibir listas de personagens e episódios.

  # -> Elas fazem uma recursão na lista recebida, imprimindo cada elemento.

  defp printa_lista_personagens(msg) do
    Enum.each(msg, fn x ->
      IO.puts("Nome: #{x}")
    end)
  end

  defp printa_lista_episodios(msg) do
    Enum.each(msg, fn x ->
      IO.puts("Nome: #{x["name"]}")
      IO.puts("Data de exibicao: #{x["air_date"]}")
      IO.puts("Episodio: #{x["episode"]}")
      IO.puts("-----------------------")
    end)
  end

  # FUNÇÃO MOSTRA_RESULTADO_CHARACTER/1:

  # -> Esta função exibe o resultado da busca por personagens.

  # -> Assim como nas outras funções, ela lida com tuplas
    # {:error, msg} ou {:ok, data} e imprime as informações do personagem.

  # -> Existe também uma variação para imprimir uma lista de personagens.

  defp mostra_resultado_character({ :error, msg}), do: IO.inspect("Ocorreu um erro: #{msg}")
  defp mostra_resultado_character({ :lista, results, next_page}) do
    Enum.each(results, fn x ->
      IO.puts("Nome: #{x["name"]}")
      IO.puts("Sexo: #{x["gender"]}" )
      IO.puts("Especie: #{x["species"]}" )
      IO.puts("-----------------------" )
    end)
    if next_page do
      IO.puts "Deseja ver a próxima página? (s/n)"
      resposta = IO.gets("> ") |> String.trim() |> String.downcase()
      if resposta == "s" do
      fetch_character_info(next_page)
      |> mostra_resultado_character()
      end
    end
  end
  defp mostra_resultado_character({ :ok, data}) do
    IO.puts "Nome: #{data["nome"]}"
    IO.puts "Especie: #{data["especie"]}"
    local = data["localizacao"]
    IO.puts "Localizacao: #{local["nome"]}"
    IO.puts "Sexo: #{data["genero"]}"
  end


  # FUNÇÃO FETCH_EPISODE_INFO/0:

  # -> Esta função realiza a busca por informações de episódios na API de Rick and Morty.

  # -> O usuário pode escolher pesquisar um episódio por ID ou listar todos os episódios.

  # -> Para uma busca por ID, realiza uma requisição HTTP e, se a resposta for bem-sucedida,
  # extrai as informações do episódio e personagens associados.

  # -> Também trata erros de conexão e falhas na decodificação do JSON.


  # Função que busca os personagens de um episódio
  defp fetch_episode_info() do
    url = "https://rickandmortyapi.com/api/episode"

    IO.puts "[1]. Pesquisar episodio por ID"
    IO.puts "[2]. Pesquisar episodio por nome:"
    IO.puts "[3]. Lista de episodios:"
    opcao = IO.gets("> ") |> String.trim() |> String.to_integer()

    case opcao do
      1 ->
        IO.puts "Digite o ID do episodio:"
        id = IO.gets("> ") |> String.trim() |> String.to_integer()
        url = url <> "/#{id}"
        case HTTPoison.get(url) do
          {:ok, %HTTPoison.Response{status_code: 200, body: body}} ->
            case Poison.decode(body) do
              {:ok, episode} ->
                characters = Enum.map(episode["characters"], fn url ->
                  fetch_character_by_url(url)
                end)
                {:ok, %{
                  "nome" => episode["name"],
                  "data_exibicao" => episode["air_date"],
                  "episodio" => episode["episode"],
                  "personagens" => characters
                  }}

              {:error, _reason} ->
                {:error, "Erro ao decodificar o JSON do episódio"}
            end

          {:ok, %HTTPoison.Response{status_code: status}} ->
            {:error, "Erro HTTP: Status #{status}"}

          {:error, %HTTPoison.Error{reason: reason}} ->
            {:error, "Erro ao acessar a API: #{reason}"}
        end

      2 ->

        IO.puts "Digite o nome do episodio:"
        nome = IO.gets("> ") |> String.trim() |> String.replace(" ", "%20")
        url = url <> "/?name=#{nome}"
        case HTTPoison.get(url) do
          {:ok, %HTTPoison.Response{status_code: 200, body: body}} ->
            case Poison.decode(body) do
              {:ok, conteudo} ->
                case conteudo["results"] do
                  [] -> {:error, "Nenhum episodio encontrado com o nome #{nome}"}
                  [episode] ->
                    characters = Enum.map(episode["characters"], fn url ->
                      fetch_character_by_url(url)
                    end)
                    {:ok, %{
                      "nome" => episode["name"],
                      "data_exibicao" => episode["air_date"],
                      "episodio" => episode["episode"],
                      "personagens" => characters
                    }}
                  _ -> {:lista, conteudo["results"]}
                end
              {:error, _reason} ->
                {:error, "Erro ao decodificar o JSON do episódio"}
            end

          {:ok, %HTTPoison.Response{status_code: 404}} ->
            {:error, "Nenhum episodio encontrado com o nome #{nome}"}

          {:ok, %HTTPoison.Response{status_code: status}} ->
            {:error, "Erro HTTP: Status #{status}"}

          {:error, %HTTPoison.Error{reason: reason}} ->
            {:error, "Erro ao acessar a API: #{reason}"}
        end

      3 ->
        case HTTPoison.get(url) do
          { :ok, %HTTPoison.Response{status_code: 200, body: body }} ->
            case Poison.decode(body) do
              { :ok, conteudo} ->
                next_page = conteudo["info"]["next"]
                { :lista, conteudo["results"], next_page }
            end
        end

    end
  end

  defp fetch_episode_info(next_page) do
    case HTTPoison.get(next_page) do
      { :ok, %HTTPoison.Response{status_code: 200, body: body }} ->
        case Poison.decode(body) do
          { :ok, conteudo} ->
            next_page = conteudo["info"]["next"]
            { :lista, conteudo["results"], next_page }
        end
    end
  end


  # FUNÇÃO FETCH_CHARACTER_INFO/0:

  # -> Função similar à de episódios, mas para personagens.

  # -> O usuário pode buscar um personagem pelo ID ou listar todos os personagens.

  # -> Faz uma requisição HTTP para a API, decodifica o JSON e retorna informações detalhadas do personagem.

  # Função que busca informações de um personagem
  defp fetch_character_info() do

    url = "https://rickandmortyapi.com/api/character"

    IO.puts "[1]. Pesquisar personagem por ID."
    IO.puts "[2]. Pesquisar personagem por nome."
    IO.puts "[3]. Pesquisar personagem por status (alive), (dead) ou (unknown)."
    IO.puts "[4]. Pesquisar personagens por especie ex.: (Human), (Alien)."
    IO.puts "[5]. Pesquisar personagens por genero ex.: (female), (male), (genderless), (unknown)."
    IO.puts "[6]. Listar personagens."
    opcao = IO.gets("> ") |> String.trim() |> String.to_integer()

    case opcao do
      1 ->
        IO.puts "Digite o ID do personagem:"
        id = IO.gets("> ") |> String.trim() |> String.to_integer()
        url = url <> "/#{id}"
        case HTTPoison.get(url) do
          {:ok, %HTTPoison.Response{status_code: 200, body: body}} ->
            case Poison.decode(body) do
              {:ok, character} ->
                {:ok, %{
                  "nome" => character["name"],
                  "status" => character["status"],
                  "especie" => character["species"],
                  "tipo" => character["type"],
                  "genero" => character["gender"],
                  "origem" => %{
                    "nome" => character["origin"]["name"],
                    "url" => character["origin"]["url"]
                  },
                  "localizacao" => %{
                    "nome" => character["location"]["name"],
                    "url" => character["location"]["url"]
                  },
                  "imagem" => character["image"]
                }}

              {:error, _reason} ->
                {:error, "Erro ao decodificar o JSON do personagem"}
            end

          {:ok, %HTTPoison.Response{status_code: status}} ->
            {:error, "Erro HTTP: Status #{status}"}

          {:error, %HTTPoison.Error{reason: reason}} ->
            {:error, "Erro ao acessar a API: #{reason}"}
        end

      2 ->
        IO.puts "Digite o nome do personagem:"
        nome = IO.gets("> ") |> String.trim() |> String.replace(" ", "%20")
        url = url <> "/?name=#{nome}"
        case HTTPoison.get(url) do
          {:ok, %HTTPoison.Response{status_code: 200, body: body}} ->
            case Poison.decode(body) do
              {:ok, conteudo} ->
                case conteudo["results"] do
                  [] -> {:error, "Nenhum personagem encontrado com o nome #{nome}"}
                  [character] ->
                    {:ok, %{
                      "nome" => character["name"],
                      "status" => character["status"],
                      "especie" => character["species"],
                      "tipo" => character["type"],
                      "genero" => character
                    }}
                  _ -> {:lista, conteudo["results"], conteudo["info"]["next"]}
                end
              {:error, _reason} ->
                {:error, "Erro ao decodificar o JSON do personagem"}
            end

          {:ok, %HTTPoison.Response{status_code: 404}} ->
            {:error, "Nenhum personagem encontrado com o nome #{nome}"}

          {:ok, %HTTPoison.Response{status_code: status}} ->
            {:error, "Erro HTTP: Status #{status}"}

          {:error, %HTTPoison.Error{reason: reason}} ->
            {:error, "Erro ao acessar a API: #{reason}"}
        end

      3 ->
        IO.puts "Digite o status do personagem (alive, dead, unknown):"
        status = IO.gets("> ") |> String.trim() |> String.replace(" ", "%20")
        url = url <> "/?status=#{status}"
        case HTTPoison.get(url) do
          {:ok, %HTTPoison.Response{status_code: 200, body: body}} ->
            case Poison.decode(body) do
              {:ok, conteudo} ->
                { :lista, conteudo["results"], conteudo["info"]["next"] }
              {:error, _reason} ->
                {:error, "Erro ao decodificar o JSON do personagem"}
            end
          {:ok, %HTTPoison.Response{status_code: 404}} ->
            {:error, "Nenhum personagem encontrado com o status #{status}"}
          {:ok, %HTTPoison.Response{status_code: status}} ->
            {:error, "Erro HTTP: Status #{status}"}
          {:error, %HTTPoison.Error{reason: reason}} ->
            {:error, "Erro ao acessar a API: #{reason}"}
        end

      4 ->
        IO.puts "Digite a especie do personagem:"
        especie = IO.gets("> ") |> String.trim() |> String.replace(" ", "%20")
        url = url <> "/?species=#{especie}"
        case HTTPoison.get(url) do
          {:ok, %HTTPoison.Response{status_code: 200, body: body}} ->
            case Poison.decode(body) do
              {:ok, conteudo} ->
                { :lista, conteudo["results"], conteudo["info"]["next"] }
              {:error, _reason} ->
                {:error, "Erro ao decodificar o JSON do personagem"}
            end
          {:ok, %HTTPoison.Response{status_code: 404}} ->
            {:error, "Nenhum personagem encontrado com a especie #{especie}"}
          {:ok, %HTTPoison.Response{status_code: status}} ->
            {:error, "Erro HTTP: Status #{status}"}
          {:error, %HTTPoison.Error{reason: reason}} ->
            {:error, "Erro ao acessar a API: #{reason}"}
        end

      5 ->
        IO.puts "Digite o gênero do personagem:"
        genero = IO.gets("> ") |> String.trim() |> String.replace(" ", "%20")
        url = url <> "/?gender=#{genero}"
        case HTTPoison.get(url) do
          {:ok, %HTTPoison.Response{status_code: 200, body: body}} ->
            case Poison.decode(body) do
              {:ok, conteudo} ->
                {:lista, conteudo["results"], conteudo["info"]["next"]}
              {:error, _reason} ->
                {:error, "Erro ao decodificar o JSON do personagem"}
            end
          {:ok, %HTTPoison.Response{status_code: 404}} ->
            {:error, "Nenhum personagem encontrado com o gênero #{genero}"}
          {:ok, %HTTPoison.Response{status_code: status}} ->
            {:error, "Erro HTTP: Status #{status}"}
          {:error, %HTTPoison.Error{reason: reason}} ->
            {:error, "Erro ao acessar a API: #{reason}"}
        end

      6 ->
        case HTTPoison.get(url) do
          { :ok, req} ->
            case Poison.decode(req.body) do
              { :ok, personagens} ->
                { :lista, personagens["results"], personagens["info"]["next"] }
            end
        end
    end
  end
  defp fetch_character_info(next_page) do
    case HTTPoison.get(next_page) do
      { :ok, %HTTPoison.Response{status_code: 200, body: body }} ->
        case Poison.decode(body) do
          { :ok, conteudo} ->
            { :lista, conteudo["results"], conteudo["info"]["next"] }
        end
    end
  end

  # FUNÇÃO FETCH_CHARACTER_INFO/0:

  # -> Realiza buscas por informações de locais (dimensões) do universo Rick and Morty.

  # -> O usuário pode buscar um local por ID ou listar todos os locais.

  # -> Faz a requisição HTTP e trata os resultados como nas funções anteriores.

  # Função que busca informações de um local, sem exibir os residentes
  defp fetch_location_info() do
    url = "https://rickandmortyapi.com/api/location/"

    IO.puts("[1] Pesquisar local por ID: ")
    IO.puts("[2] Listar locais: ")
    opcao = IO.gets("> ") |> String.trim() |> String.to_integer()

    case opcao do
      1 ->
        IO.puts "Digite o ID do local:"
        id = IO.gets("> ") |> String.trim() |> String.to_integer()
        url = url <> "#{id}"
        case HTTPoison.get(url) do
          {:ok, %HTTPoison.Response{status_code: 200, body: body}} ->
            case Poison.decode(body) do
              {:ok, location} ->
                {:ok, %{
                  "id" => location["id"],
                  "nome" => location["name"],
                  "tipo" => location["type"],
                  "dimensao" => location["dimension"]
                }}

              {:error, _reason} ->
                {:error, "Erro ao decodificar o JSON do local"}
            end

          {:ok, %HTTPoison.Response{status_code: status}} ->
            {:error, "Erro HTTP: Status #{status}"}

          {:error, %HTTPoison.Error{reason: reason}} ->
            {:error, "Erro ao acessar a API: #{reason}"}
        end

      2 ->
        case HTTPoison.get(url) do
          { :ok, req} ->
            case Poison.decode(req.body) do
              { :ok, locais} ->
                { :lista, locais["results"], locais["info"]["next"] }
            end
        end
    end

  end

  defp fetch_location_info(next_page) do
    case HTTPoison.get(next_page) do
      { :ok, %HTTPoison.Response{status_code: 200, body: body }} ->
        case Poison.decode(body) do
          { :ok, conteudo} ->
            { :lista, conteudo["results"], conteudo["info"]["next"] }
        end
    end
  end

  # FUNÇÃO FETCH_CHARACTER_BY_URL/1:
  # -> Função auxiliar que busca informações de um personagem a partir de sua URL.
  # -> Usada, por exemplo, quando se busca um episódio e é necessário pegar os personagens
  # do mesmo, fazendo requisições adicionais para cada URL associada.

  # Funções auxiliares para buscar informações a partir de URLs

  defp fetch_character_by_url(url) do
    case HTTPoison.get(url) do
      {:ok, %HTTPoison.Response{status_code: 200, body: body}} ->
        case Poison.decode(body) do
          {:ok, character} ->
            character["name"]

          {:error, _reason} ->
            "Erro ao decodificar o JSON do personagem"
        end

      {:ok, %HTTPoison.Response{status_code: status}} ->
        "Erro HTTP: Status #{status}"

      {:error, %HTTPoison.Error{reason: reason}} ->
        "Erro ao acessar a API: #{reason}"
    end
  end
end
