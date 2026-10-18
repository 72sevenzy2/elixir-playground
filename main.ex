defmodule Add do
  def main(x(y)) do
    IO.puts(x + y)
  end
end

defmodule Hello do
  def main do
    name = "hi"
    IO.puts("hello, #{name}")
  end
end

Hello.main()
Add.main(17, 18)
