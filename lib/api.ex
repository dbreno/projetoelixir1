defmodule Api do
  def main(args) do
    case args do
      ["episodio", episode_id] ->
        fetch_episode_info(episode_id)
        |> mostra_resultado()

      ["personagem", character_id] ->
        fetch_character_info(character_id)
        |> mostra_resultado()

      ["local", location_id] ->
        fetch_location_info(location_id)
        |> mostra_resultado()

      _ ->
        IO.puts "Comando inválido. Use 'episodio', 'personagem', ou 'local' seguido do ID."
    end
  end

  defp mostra_resultado({:error, msg}) do
    IO.puts "Ocorreu um erro: #{msg}"
  end

  defp mostra_resultado({:ok, data}) do
    IO.inspect(data)
  end

  # Função que busca os personagens de um episódio
  defp fetch_episode_info(episode_id) do
    url = "https://rickandmortyapi.com/api/episode/#{episode_id}"

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
  end

  # Função que busca informações de um personagem
  defp fetch_character_info(character_id) do
    url = "https://rickandmortyapi.com/api/character/#{character_id}"

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
  end

  # Função que busca informações de um local, sem exibir os residentes
  defp fetch_location_info(location_id) do
    url = "https://rickandmortyapi.com/api/location/#{location_id}"

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
