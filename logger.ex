defmodule Logger do
  def main do
    File.stream!("logs.log")
    |> Enum.each(fn line ->
      IO.puts(line)
    end)
  end
end

Logger.main()
