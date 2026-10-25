defmodule LinearSearch do
  @numbers [10, 20, 30, 40, 50]
  def search(val) do
    search(@numbers, val)
  end

  defp search([], _val) do
    IO.puts("not found")
  end

  defp search([head | tail], val) do
    IO.inspect(head)
    search(tail, val)
  end
end

IO.inspect(LinearSearch.search(40))
