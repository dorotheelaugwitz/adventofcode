defmodule Day01Test do
  use ExUnit.Case

  test "returns the maximum calories" do
    assert Day01.max_calories(calorie_list()) == 24_000
  end

  test "returns the top three calorie totals" do
    assert Day01.top_three_total(calorie_list()) == 45_000
  end

  defp calorie_list() do
    """
    1000
    2000
    3000

    4000

    5000
    6000

    7000
    8000
    9000

    10000
    """
  end
end
