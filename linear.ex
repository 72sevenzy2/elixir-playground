defmodule LinearSearch do
  @numbers [10, 20, 30, 40, 50]
  def search(val) do
    search(@numbers, val)
  end

  defp search([], _val) do
    -1
  end

  defp search([head | tai], val) do
    if head == val do
      0
    else
      result = search(tail, val)

      if result == -1 do
        -1
      else
        result + 1
      end
    end
  end
end

IO.inspect(LinearSearch.search(5))
