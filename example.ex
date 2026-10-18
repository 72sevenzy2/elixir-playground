defmodule Example do
  def main do
    x = 10
    IO.puts(x)
    x = 20
    IO.puts(x)
  end
end

defmodule Match do
  def matchint(x, y) do
    IO.puts(x == y)
  end
end
