defmodule Guesser do
  def main do
    num = 20

    IO.puts("enter a number 1-20:")
    n = IO.gets("number: ") |> String.trim()
    #
    # # validate type
    # guess =
    # case Integer.parse(n)  do
    #   # ignore unparsed ints returned by .parse().
    #   {n, ""} when n in 1..20 -> n
    #   _ -> nil
    # end

    guess = Integer.parse(n)
    number = elem(guess, 0)

    if number == num do
      IO.puts("correct guess #{number}")
    else
      IO.puts("wrong number")
    end
  end
end

Guesser.main()
