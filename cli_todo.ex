defmodule StartTodoList do
  def main do
    IO.puts("enter a task")
    task = IO.gets("task: ") |> to_string() |> String.trim()

    if task == "quit" do
      IO.puts("exited")
    else
      IO.puts(task)
      main()
    end
  end
end

StartTodoList.main()
