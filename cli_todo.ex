defmodule StartTodoList do
  def main(tasks \\ []) do
    task = IO.gets("task: ") |> to_string() |> String.trim()

    cond do
      task == "quit" ->
        IO.puts("exited")

      task == "ls" ->
        IO.inspect(tasks)
        main(tasks)

      true ->
        main([task | tasks])
    end
  end
end

StartTodoList.main()
