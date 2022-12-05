defmodule Day03Test do
  use ExUnit.Case

  test "returns the total score when following the strategy guide" do
    assert Day03.item_priority_sum(rucksack_contents()) == 157
  end

  defp rucksack_contents() do
    """
    vJrwpWtwJgWrhcsFMMfFFhFp
    jqHRNqRjqzjGDLGLrsFMfFZSrLrFZsSL
    PmmdzqPrVvPwwTWBwg
    wMqvLMZHhHMvwLHjbvcjnnSBnvTQFn
    ttgJtRGJQctTZtZT
    CrZsJsPPZsGzwwsLwLmpwMDw
    """
  end
end
