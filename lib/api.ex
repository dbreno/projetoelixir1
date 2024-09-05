defmodule Api do

  def main() do
    IO.puts("0. Encerrar: ")
    IO.puts("1. Pesquisar episodio: ")
    IO.puts("2. Pesquisar personagem: ")
    IO.puts("3. Pesquisar local: ")
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
  end

  defp mostra_resultado({:error, msg}), do: IO.puts "Ocorreu um erro: #{msg}"
  defp mostra_resultado({:ok, data}), do: IO.inspect(data)

  defp mostra_resultado_episodio({ :error, msg }), do: IO.puts "Ocorreu um erro: #{msg}"
  defp mostra_resultado_episodio({ :ok, data }), do: IO.inspect(data)

  defp mostra_resultado_character({ :error, msg}), do: IO.inspect("Ocorreu um erro: #{msg}")
  defp mostra_resultado_character({ :lista, results}) do
    IO.puts "CAIU AQUI CARAMBA"
    Enum.each(results, fn x ->
      IO.puts("Nome: #{x["\\\"name\"\\"]}")
    end)
    IO.inspect("Results: #{inspect(results)}")
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

    IO.puts "1. Pesquisar ID do episodio:"
    IO.puts "2. Lista de episodios:"
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
                { :ok, conteudo["results"]}
            end
        end

    end
  end
  # Função que busca informações de um personagem
  defp fetch_character_info() do

    url = "https://rickandmortyapi.com/api/character"

    IO.puts "1. Pesquisar personagem por ID."
    IO.puts "2. Listar personagens."
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
    end
  end

  # Função que busca informações de um local, sem exibir os residentes
  defp fetch_location_info() do
    url = "https://rickandmortyapi.com/api/location/#{}"

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
