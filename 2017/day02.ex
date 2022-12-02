defmodule Day2 do
  def checksum(input) do
    string_lists = String.split(input, "\n")
    |> Enum.map(fn(x) -> String.split(x, "\t") end)

    checksum = Enum.map(string_lists, fn(x) -> Day2.calculate(x) end)
      |> Enum.reduce(fn(x, acc) -> x + acc end)

    Integer.to_string(checksum)
  end

  def calculate(list) do
    list = Enum.map(list, fn(x) -> String.to_integer(x) end)
    Enum.max(list) - Enum.min(list)
  end
end

{:ok, input} = File.read "day02_input.txt"
checksum = Day2.checksum(input)
IO.puts(:stdio, checksum)
