defmodule Guesser do
  def main do
    IO.puts("enter a word")
    input = IO.gets("> ") |> to_string() |> String.trim()
    word = "elixir"

    cond do
      input == word ->
        IO.puts("correct guess")

      input == "" ->
        IO.puts("please enter a correct guess!")
        main()

      true ->
        IO.puts("incorrect!")
        main()
    end
  end
end

Guesser.main()
