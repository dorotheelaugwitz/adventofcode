defmodule Day02 do
  @moduledoc false

  def total_score(strategy_guide, version) do
    split_rounds(strategy_guide)
    |> Enum.map(fn x -> evaluate(x, version) end)
    |> Enum.sum()
  end

  defp evaluate(round, version) do
    outcome_score(version, round) + selection_score(version, round)
  end

  defp outcome_score(:assumed, "A X"), do: 3
  defp outcome_score(:assumed, "B X"), do: 0
  defp outcome_score(:assumed, "C X"), do: 6

  defp outcome_score(:assumed, "A Y"), do: 6
  defp outcome_score(:assumed, "B Y"), do: 3
  defp outcome_score(:assumed, "C Y"), do: 0

  defp outcome_score(:assumed, "A Z"), do: 0
  defp outcome_score(:assumed, "B Z"), do: 6
  defp outcome_score(:assumed, "C Z"), do: 3

  defp outcome_score(:corrected, "A X"), do: 0
  defp outcome_score(:corrected, "B X"), do: 0
  defp outcome_score(:corrected, "C X"), do: 0

  defp outcome_score(:corrected, "A Y"), do: 3
  defp outcome_score(:corrected, "B Y"), do: 3
  defp outcome_score(:corrected, "C Y"), do: 3

  defp outcome_score(:corrected, "A Z"), do: 6
  defp outcome_score(:corrected, "B Z"), do: 6
  defp outcome_score(:corrected, "C Z"), do: 6

  defp selection_score(:assumed, round), do: selection_score(String.last(round))
  defp selection_score(:corrected, round), do: selection_score(round)

  defp selection_score("X"), do: 1
  defp selection_score("Y"), do: 2
  defp selection_score("Z"), do: 3

  defp selection_score("A X"), do: 3
  defp selection_score("B X"), do: 1
  defp selection_score("C X"), do: 2

  defp selection_score("A Y"), do: 1
  defp selection_score("B Y"), do: 2
  defp selection_score("C Y"), do: 3

  defp selection_score("A Z"), do: 2
  defp selection_score("B Z"), do: 3
  defp selection_score("C Z"), do: 1

  defp split_rounds(strategy_guide) do
    String.split(strategy_guide, "\n", trim: true)
  end
end
