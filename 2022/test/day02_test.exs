defmodule Day02Test do
  use ExUnit.Case

  test "returns the total score when following the strategy guide" do
    assert Day02.total_score(strategy_guide(), :assumed) == 15
    assert Day02.total_score(strategy_guide(), :corrected) == 12
  end

  defp strategy_guide() do
    """
    A Y
    B X
    C Z
    """
  end
end
