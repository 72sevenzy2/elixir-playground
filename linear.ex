defmodule LinearSearch do
  @numbers [10, 20, 30, 40, 50]

  def search(val) do
    IO.inspect(Enum.at(@numbers, val))
  end
end

LinearSearch.search(5)
