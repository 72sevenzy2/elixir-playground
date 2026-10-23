defmodule Guesser do
  def guessGame do
    num = 20

    IO.puts("enter a number 1-20:")
    n = IO.gets("number: ") |> String.trim()

    if n == "" do
      guessGame()
    end

    guess = Integer.parse(n)
    number = elem(guess, 0)

    if number == num do
      IO.puts("correct guess #{number}")
    else
      IO.puts("wrong number")
      guessGame()
    end
  end
end

Guesser.guessGame()
