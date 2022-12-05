defmodule AdventOfCode do
  @moduledoc false

  use Application

  def start(_type, _args) do
    {:ok, day01_input} = File.read "input/day01.txt"
    {:ok, day02_input} = File.read "input/day02.txt"
    {:ok, day03_input} = File.read "input/day03.txt"

    day01_solutions =
      "Day 1: Calorie Counting\n" <>
      "- Max: #{Day01.max_calories(day01_input)}\n" <>
      "- Top three: #{Day01.top_three_total(day01_input)}"
    day02_solutions =
      "Day 2: Rock Paper Scissors\n" <>
      "- Assumed score: #{Day02.total_score(day02_input, :assumed)}\n" <>
      "- Corrected score: #{Day02.total_score(day02_input, :corrected)}"
    day03_solutions =
      "Day 3: Rucksack Reorganization\n" <>
      "- Sum of priorities: #{Day03.item_priority_sum(day03_input)}\n"

    IO.puts(:stdio, day01_solutions)
    IO.puts(:stdio, day02_solutions)
    IO.puts(:stdio, day03_solutions)

    children = []
    Supervisor.start_link(children, strategy: :one_for_one)
  end
end
