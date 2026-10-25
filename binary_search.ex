defmodule BinarySearch do
  @nums [1, 2, 3, 4, 5]
  def search(t) do
  end

  defp find(nums, t, low, high) do
    # base case if target does not exist in @nums.
    if low > high do
      -1
    else
      mid = div(low + high, 2)

      cond do
        Enum.at(nums, mid) == t ->
          Enum.at(nums, mid)

        Enum.at(nums, mid) < t ->
          find(nums, t, mid + 1, high)

        Enum.at(nums, mid) > t ->
          find(nums, t, low, mid - 1)
      end
    end
  end
end
