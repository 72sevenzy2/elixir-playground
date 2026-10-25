defmodule BinarySearch do
  @nums [1, 2, 3, 4, 5]
  def search(target) do
    find(@nums, target, 0, length(@nums) - 1)
  end

  defp find(nums, target, low, high) do
    # base case in which the target was not found.
    if low > high do
      -1
    else
      mid = div(low + high, 2)
      value = Enum.at(nums, mid)

      cond do
        value == target -> mid
        value < target -> find(nums, target, mid + 1, high)
        value > target -> find(nums, target, low, mid - 1)
      end
    end
  end
end

IO.inspect(BinarySearch.search(5))
