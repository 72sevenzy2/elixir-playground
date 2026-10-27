defmodule Guesser do
  def main do
    IO.puts("enter a word")
    input = IO.gets("> ") |> to_string() |> String.trim()
    word = "elixir"

    cond do
      input == word -> IO.puts("correct guess")
      true -> main()
    end
  end
end

Guesser.main()
