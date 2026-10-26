defmodule StartTodoList do
  def main do
    IO.puts("enter a task")
    task = IO.gets("task: ")

    IO.puts(task)
    main()
  end
end

StartTodoList.main()
