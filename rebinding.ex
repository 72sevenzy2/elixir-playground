defmodule RebindVar do
  def count(n) when n > 0 do
    IO.puts(n)
    count(n - 1)
  end

  def count(0) do
    IO.puts("done")
  end
end

aa = RebindVar
IO.puts(aa.count(10))
