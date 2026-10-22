defmodule Calc do
  def add(a, b) do
    a + b
  end

  def substract(a, b) do
    a - b
  end

  def main do
    IO.puts("simple calculator")
    IO.write("enter the first operand:")

    a =
      IO.gets("\nnum:")
      |> String.trim()
      |> String.to_integer()

    IO.write("enter the second operand:")

    b =
      IO.gets("\nnum 2:")
      |> String.trim()
      |> String.to_integer()

    result = add(a, b)

    IO.puts("result: #{result}")
  end
end

Calc.main()
