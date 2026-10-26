defmodule StartTodoList do
  def main(tasks \\ []) do
    task = IO.gets("task: ") |> to_string() |> String.trim()

    cond do
      task == "quit" ->
        IO.puts("exited")

      task == "ls" ->
        IO.inspect(tasks)
        main(tasks)

      task == "delete" ->
        IO.puts("enter the task to delete")

        t =
          IO.gets("> ")
          |> to_string()
          |> String.trim()

        ind = delete(tasks, t)

        if ind == -1 do
          IO.puts("task not found")
          main(tasks)
        else
          main(List.delete_at(tasks, ind))
        end

      true ->
        main([task | tasks])
    end
  end

  defp delete([], _task) do
    -1
  end

  defp delete([h | t], task) do
    if h == task do
      0
    else
      result = delete(t, task)

      if result == -1 do
        -1
      else
        result + 1
      end
    end
  end
end

StartTodoList.main()
