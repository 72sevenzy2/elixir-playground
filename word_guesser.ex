defmodule Guesser do
  def main(attempt) do
    IO.puts("enter a word")
    input = IO.gets("> ") |> to_string() |> String.trim()
    word = "elixir"

    cond do
      attempt == 10 ->
        IO.puts("you ran out of attempts")

      input == word ->
        IO.puts("correct guess")

      input == "" ->
        IO.puts("please enter a correct guess!")
        main(attempt)

      true ->
        IO.puts("incorrect!")
        # new binding
        attempt = attempt + 1
        IO.puts("you have #{10 - attempt} many attempts left")
        main(attempt)
    end
  end
end

Guesser.main(0)
