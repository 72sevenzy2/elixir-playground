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

  def pow(a, b) do
    :math.pow(a, b)
  end

  def main do
    opcodes = %{
      "+" => "add",
      "-" => "subtract",
      "/" => "divide",
      "^" => "pow"
    }

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

    operator = Map.get(opcodes, opcode)
    case operator do
      "divide" ->
        result = divide(a, b)
                 |> to_string()
                 |> String.to_charlist()
                 |> hd()
        IO.puts("result is #{result}")
      "add" -> 
        result = add(a, b)
        |> to_string()
        |> String.to_charlist()
        |> hd()
        IO.puts("result is #{result}")
      "subtract" -> 
        result = substract(a, b)
                 |> to_string()
                 |> String.to_charlist()
                 |> hd()
        IO.puts("result is #{result}")
      "pow" ->
        result = pow(a, b)
                 |> to_string()
                 |> String.to_charlist()
                 |> hd()
        IO.puts("result is #{result}")
      _ -> IO.puts("invalid operator")
    end
  end
end

Calc.main()
