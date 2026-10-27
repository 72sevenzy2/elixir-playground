defmodule Loggerrrr do
  def parse() do
    File.stream!("logs.log")
    |> Enum.map(fn line ->
      case String.split(line, "\"") do
        [_prefix, request, suffix] ->
          [method, endpoint, _version] = String.split(request)
          [status, bytes] = String.split(suffix)

          %{
            method: method,
            endpoint: endpoint,
            status: String.to_integer(status),
            bytes: String.to_integer(bytes)
          }

        _ ->
          nil
      end
    end)
  end
end

entries = Loggerrrr.parse()
Enum.each(entries, &IO.inspect/1)
