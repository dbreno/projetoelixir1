defmodule Api do
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
    loop(1)
  end

  defp loop(int) do
    if int == 1 do
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

        2 ->
          fetch_character_info()
          |> mostra_resultado_character()

        3 ->
          fetch_location_info()
          |> mostra_resultado()

        _ ->
          IO.puts "Comando inválido. Use 'episodio', 'personagem', ou 'local' seguido do ID."
      end

      loop(1)
    else end
  end

  defp mostra_resultado({:error, msg}), do: IO.puts "Ocorreu um erro: #{msg}"
  defp mostra_resultado({:ok, data}) do
    IO.puts "Nome: #{data["nome"]}"
    IO.puts "Tipo: #{data["tipo"]}"
    IO.puts "Dimensao: #{data["dimensao"]}"
  end
  defp mostra_resultado({:lista, msg}) do
    IO.puts "Locais:"
    Enum.each(msg, fn x ->
      IO.puts("Nome: #{x["name"]}")
      IO.puts("Tipo: #{x["type"]}" )
      IO.puts("Dimensao: #{x["dimension"]}" )
      IO.puts("-----------------------" )
    end)
  end

  defp printa_lista_episodios([]), do: IO.puts ""
  defp printa_lista_episodios([head | tail]) do
    IO.puts "- #{head["name"]}, id: #{head["id"]}"
    printa_lista_episodios(tail)
  end


  defp mostra_resultado_episodio({ :error, msg }), do: IO.puts "Ocorreu um erro: #{msg}"
  defp mostra_resultado_episodio({ :ok, data }) do
    IO.puts "Episodio: #{data["episodio"]}"
    IO.puts "Nome: #{data["nome"]}"
    IO.puts "Data de exibicao: #{data["data_exibicao"]}"
    IO.puts "Personagens:"
    printa_lista_personagens(data["personagens"])
  end
  defp mostra_resultado_episodio({ :lista, msg }) do
    IO.puts "Episodios:"
    printa_lista_episodios(msg)
  end

  defp printa_lista_personagens([]), do: IO.puts ""
  defp printa_lista_personagens([head | tail]) do
      IO.puts "- #{head}"
      printa_lista_personagens(tail)
  end

  defp mostra_resultado_character({ :error, msg}), do: IO.inspect("Ocorreu um erro: #{msg}")
  defp mostra_resultado_character({ :lista, results}) do
    Enum.each(results, fn x ->
      IO.puts("Nome: #{x["name"]}")
      IO.puts("Sexo: #{x["gender"]}" )
      IO.puts("Especie: #{x["species"]}" )
      IO.puts("-----------------------" )
    end)
  end
  defp mostra_resultado_character({ :ok, data}) do
    IO.puts "Nome: #{data["nome"]}"
    IO.puts "Especie: #{data["especie"]}"
    local = data["localizacao"]
    IO.puts "Localizacao: #{local["nome"]}"
    IO.puts "Sexo: #{data["genero"]}"
  end

  # Função que busca os personagens de um episódio
  defp fetch_episode_info() do
    url = "https://rickandmortyapi.com/api/episode"

    IO.puts "[1]. Pesquisar ID do episodio:"
    IO.puts "[2]. Lista de episodios:"
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
        case HTTPoison.get(url) do
          { :ok, %HTTPoison.Response{status_code: 200, body: body }} ->
            case Poison.decode(body) do
              { :ok, conteudo} ->
                { :lista, conteudo["results"] }
            end
        end

    end
  end
  # Função que busca informações de um personagem
  defp fetch_character_info() do

    url = "https://rickandmortyapi.com/api/character"

    IO.puts "[1]. Pesquisar personagem por ID."
    IO.puts "[2]. Listar personagens."
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
        case HTTPoison.get(url) do
          { :ok, req} ->
            case Poison.decode(req.body) do
              { :ok, personagens} ->
                { :lista, personagens["results"] }
            end
        end
      3 ->
        IO.puts "Digite o nome do personagem: "
        nome = IO.gets("> ") |> String.trim()
        url = url <> "/?name=#{nome}"
        case HTTPoison.get(url) do
          {:ok, %HTTPoison.Response{status_code: 200, body: body}} ->
            case Poison.decode(body) do
              {:ok, personagens} ->
                {:lista, %{
                  "nome" => personagens["name"],
                  "status" => personagens["status"],
                  "especie" => personagens["species"],
                  "tipo" => personagens["type"],
                  "genero" => personagens
                }}
            end
          { :ok, %HTTPoison.Response{status_code: status}} ->
            {:error, "Erro HTTP: Status #{status}"}

          { :error, %HTTPoison.Error{reason: reason}} ->
            {:error, "Erro ao acessar a API: #{reason}"}
        end
    end
  end

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
                { :lista, locais["results"] }
            end
        end
    end

  end

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
