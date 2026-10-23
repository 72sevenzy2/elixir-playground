defmodule Guesser do 
  def main do
    num = 20

    IO.puts("enter a number 1-20:")
    n = IO.gets("number: ")
        |> String.trim()
        |> String.to_integer()
    if n == num do
      IO.puts("correct number #{n}")
    else
      IO.puts("wrong number")
    end
  end
end

Guesser.main()
