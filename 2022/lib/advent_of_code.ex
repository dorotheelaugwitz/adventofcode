defmodule AdventOfCode do
  @moduledoc false

  use Application

  def start(_type, _args) do
    {:ok, day01_input} = File.read "input/day01.txt"

    day01_solutions =
      "Day 1: Calorie counting\n" <>
      "- Max: #{Day01.max_calories(day01_input)}\n" <>
      "- Top three: #{Day01.top_three_total(day01_input)}"

    IO.puts(:stdio, day01_solutions)

    children = []
    Supervisor.start_link(children, strategy: :one_for_one)
  end
end
