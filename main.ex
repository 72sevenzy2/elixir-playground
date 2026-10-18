defmodule Add do
  def main(x, y) do
    IO.puts(x + y)
    x + y
  end
end

defmodule AddAndMatch do
  def addnmatch do
    expected = 20
    result = Add.main(10, 10)

    Match.matchint(result, expected)
  end
end

AddAndMatch.addnmatch()
