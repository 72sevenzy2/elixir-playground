defmodule Calc do
  def add(a, b) do
    a + b
  end

  def substract(a, b) do
    a - b
  end

  def divide(a, b) do
    if b == 0 do
      "cannot divide by 0"
    else
      a / b
    end
  end

  def main do
    IO.puts("simple calculator")
    IO.write("enter the first operand:")
    a =
      IO.gets("\nnum: ")
      |> String.trim()
      |> String.to_integer()

    IO.puts("enter opcode")
    opcode = IO.gets("\nopcode: ")
             |> String.trim()


    IO.write("enter the second operand:")

    b =
      IO.gets("\nnum 2: ")
      |> String.trim()
      |> String.to_integer()

    if opcode == "/" do
      IO.puts("result is #{divide(a, b)}")
    else
      if opcode == "+" do
      IO.puts("result is #{add(a, b)}")
      else
        if opcode == "-" do
      IO.puts("result is #{substract(a, b)}")
        end
      end
    end
  end
end

Calc.main()
